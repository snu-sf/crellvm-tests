; ModuleID = '20.milter.bc'
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
%struct.milteropt = type { i8*, i8 }
%struct.milter = type { i8*, [8 x i32], i32, i32, i32, i8*, i32, i8, i8, i32, [4 x i64] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.symtab = type { i8*, i16, %struct.symtab*, %union.anon }
%union.anon = type { %struct.mailer_con_info }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%union.bigsockaddr = type { %struct.sockaddr_in, [96 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.servent = type { i8*, i8**, i32, i8* }
%struct.sm_event = type { i64, void (i32)*, i32, i32, %struct.sm_event* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.milters = type { i32 }
%struct.iovec = type { i8*, i64 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }

@milter_setup.idx = internal global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"name required for mail filter\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"milter.c\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"X%s: `=' expected\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"X%s: unknown filter equate %c=\00", align 1
@CurEnv = external global %struct.envelope*, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"X%s: duplicate filter definition\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Too many filters defined, %d max\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c";,\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"InputFilter %s not defined\00", align 1
@ExitStat = external global i32, align 4
@MilterLogLevel = external global i32, align 4
@LogLevel = external global i32, align 4
@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"milter_set_option(%s = %s)\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"milter_set_option: invalid Milter option, must specify suboption\00", align 1
@MilterOptTab = internal global [9 x %struct.milteropt] [%struct.milteropt { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.117, i32 0, i32 0), i8 0 }, %struct.milteropt { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i32 0, i32 0), i8 1 }, %struct.milteropt { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.119, i32 0, i32 0), i8 2 }, %struct.milteropt { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.120, i32 0, i32 0), i8 3 }, %struct.milteropt { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i32 0, i32 0), i8 4 }, %struct.milteropt { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i8 5 }, %struct.milteropt { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i32 0, i32 0), i8 6 }, %struct.milteropt { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.124, i32 0, i32 0), i8 7 }, %struct.milteropt { i8* null, i8 -1 }], align 16
@.str.10 = private unnamed_addr constant [44 x i8] c"milter_set_option: invalid Milter option %s\00", align 1
@StickyMilterOpt = internal global [8 x i32] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [12 x i8] c" (ignored)\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MilterMacros = internal global [7 x [26 x [51 x i8*]]] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [13 x i8] c"milter_init\0A\00", align 1
@InputFilters = external global [25 x %struct.milter*], align 16
@.str.14 = private unnamed_addr constant [25 x i8] c"Milter: no active filter\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"filter failure\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"{quarantine}\00", align 1
@SmHeapGroup = external global i32, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"milter_init(%s): failed to %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"negotiate\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Milter (%s): init failed to %s\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Milter (%s): init success to %s\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"milter_connect(%s)\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Milter: connect to filters\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Milter: connect, ending\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"421 \00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"milter_helo(%s)\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"helo\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"milter_envfrom:\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"Milter: reject, no sender\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Milter: sender: %s\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"mail\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"Milter: reject, sender\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"milter_envrcpt:\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"Milter: reject, no rcpt\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"Milter: rcpts: %s\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"rcpt\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"milter_data_cmd\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"milter_data\0A\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"milter_data: eoh\0A\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"SM_ASSERT(idx >= 0 && idx <= MAXFILTERS) failed\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"eoh\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"eom\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"milter_data(%s): EOM ACK/NAK timeout\0A\00", align 1
@.str.47 = private unnamed_addr constant [37 x i8] c"milter_data(%s): EOM ACK/NAK timeout\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"milter_data(%s): state %c\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"554 5.7.1 Command rejected\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"milter=%s, reject=%s\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"milter=%s, reject\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"milter=%s, discard\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"milter=%s, tempfail\00", align 1
@.str.54 = private unnamed_addr constant [66 x i8] c"milter_data(%s): lied about quarantining, honoring request anyway\00", align 1
@.str.55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"milter=%s, quarantine=%s\00", align 1
@.str.57 = private unnamed_addr constant [68 x i8] c"milter_data(%s): lied about adding headers, honoring request anyway\00", align 1
@.str.58 = private unnamed_addr constant [70 x i8] c"milter_data(%s): lied about changing headers, honoring request anyway\00", align 1
@.str.59 = private unnamed_addr constant [68 x i8] c"milter_data(%s) lied about changing sender, honoring request anyway\00", align 1
@.str.60 = private unnamed_addr constant [70 x i8] c"milter_data(%s) lied about adding recipients, honoring request anyway\00", align 1
@.str.61 = private unnamed_addr constant [86 x i8] c"milter_data(%s) lied about adding recipients with parameters, honoring request anyway\00", align 1
@.str.62 = private unnamed_addr constant [73 x i8] c"milter_data(%s): lied about removing recipients, honoring request anyway\00", align 1
@.str.63 = private unnamed_addr constant [86 x i8] c"milter_data(%s): lied about replacing body, rejecting request and tempfailing message\00", align 1
@.str.64 = private unnamed_addr constant [44 x i8] c"milter_data(%s): returned bogus response %c\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"milter_data: %s/%cf%s: read error\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"Milter: reject, data\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"milter_unknown(%s)\0A\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"milter_quit(%s)\0A\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"milter_abort\0A\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"X%s: empty or missing socket information\0A\00", align 1
@.str.72 = private unnamed_addr constant [41 x i8] c"X%s: empty or missing socket information\00", align 1
@.str.73 = private unnamed_addr constant [49 x i8] c"Milter (%s): empty or missing socket information\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"X%s: unknown socket type %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"X%s: unknown socket type %s\00", align 1
@.str.79 = private unnamed_addr constant [36 x i8] c"Milter (%s): unknown socket type %s\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"X%s: local socket name %s too long\0A\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"X%s: local socket name %s too long\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"Milter (%s): local socket name %s too long\00", align 1
@RunAsUid = external global i32, align 4
@RunAsGid = external global i32, align 4
@RunAsUserName = external global i8*, align 8
@OpMode = external global i8, align 1
@SmIoF = external global [0 x %struct.sm_file], align 8
@.str.83 = private unnamed_addr constant [44 x i8] c"WARNING: X%s: local socket name %s missing\0A\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"X%s: local socket name %s unsafe\0A\00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c"X%s: local socket name %s unsafe\00", align 1
@.str.86 = private unnamed_addr constant [41 x i8] c"Milter (%s): local socket name %s unsafe\00", align 1
@.str.87 = private unnamed_addr constant [42 x i8] c"X%s: bad address %s (expected port@host)\0A\00", align 1
@.str.88 = private unnamed_addr constant [41 x i8] c"X%s: bad address %s (expected port@host)\00", align 1
@.str.89 = private unnamed_addr constant [49 x i8] c"Milter (%s): bad address %s (expected port@host)\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"X%s: unknown port name %s\0A\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"X%s: unknown port name %s\00", align 1
@.str.93 = private unnamed_addr constant [34 x i8] c"Milter (%s): unknown port name %s\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"X%s: Invalid numeric domain spec \22%s\22\0A\00", align 1
@.str.95 = private unnamed_addr constant [38 x i8] c"X%s: Invalid numeric domain spec \22%s\22\00", align 1
@.str.96 = private unnamed_addr constant [46 x i8] c"Milter (%s): Invalid numeric domain spec \22%s\22\00", align 1
@.str.97 = private unnamed_addr constant [27 x i8] c"X%s: Unknown host name %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"X%s: Unknown host name %s\00", align 1
@.str.99 = private unnamed_addr constant [34 x i8] c"Milter (%s): Unknown host name %s\00", align 1
@.str.100 = private unnamed_addr constant [35 x i8] c"X%s: Unknown protocol for %s (%d)\0A\00", align 1
@.str.101 = private unnamed_addr constant [34 x i8] c"X%s: Unknown protocol for %s (%d)\00", align 1
@.str.102 = private unnamed_addr constant [42 x i8] c"Milter (%s): Unknown protocol for %s (%d)\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"X%s: unknown socket protocol\0A\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"X%s: unknown socket protocol\00", align 1
@.str.105 = private unnamed_addr constant [37 x i8] c"Milter (%s): unknown socket protocol\00", align 1
@.str.106 = private unnamed_addr constant [48 x i8] c"Milter (%s): Trying to open filter in state %c\0A\00", align 1
@.str.107 = private unnamed_addr constant [40 x i8] c"Milter (%s): error creating socket: %s\0A\00", align 1
@.str.108 = private unnamed_addr constant [39 x i8] c"Milter (%s): error creating socket: %s\00", align 1
@MilterConnectTimeout = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16
@CurHostName = external global i8*, align 8
@.str.109 = private unnamed_addr constant [38 x i8] c"milter_open (%s): open %s failed: %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [32 x i8] c"Milter (%s): open %s failed: %s\00", align 1
@.str.111 = private unnamed_addr constant [37 x i8] c"X%s: error connecting to filter: %s\0A\00", align 1
@.str.112 = private unnamed_addr constant [44 x i8] c"Milter (%s): error connecting to filter: %s\00", align 1
@.str.113 = private unnamed_addr constant [22 x i8] c"X%s, T=: `:' expected\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"X%s: %c unknown\0A\00", align 1
@.str.115 = private unnamed_addr constant [31 x i8] c"X%s: unknown filter timeout %c\00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"X%s: %c=%ld\0A\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"macros.connect\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"macros.helo\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"macros.envfrom\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"macros.envrcpt\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"macros.data\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"macros.eom\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"macros.eoh\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"loglevel\00", align 1
@.str.125 = private unnamed_addr constant [57 x i8] c"milter_set_option: too many macros in Milter.%s (max %d)\00", align 1
@.str.126 = private unnamed_addr constant [41 x i8] c"Milter (%s): negotiate, impossible state\00", align 1
@.str.127 = private unnamed_addr constant [69 x i8] c"milter_negotiate(%s): send: version %lu, fflags 0x%lx, pflags 0x%lx\0A\00", align 1
@.str.128 = private unnamed_addr constant [49 x i8] c"milter_negotiate(%s): returned %c instead of %c\0A\00", align 1
@.str.129 = private unnamed_addr constant [50 x i8] c"Milter (%s): negotiate: returned %c instead of %c\00", align 1
@.str.130 = private unnamed_addr constant [49 x i8] c"milter_negotiate(%s): did not return valid info\0A\00", align 1
@.str.131 = private unnamed_addr constant [50 x i8] c"Milter (%s): negotiate: did not return valid info\00", align 1
@.str.132 = private unnamed_addr constant [50 x i8] c"milter_negotiate(%s): did not return enough info\0A\00", align 1
@.str.133 = private unnamed_addr constant [51 x i8] c"Milter (%s): negotiate: did not return enough info\00", align 1
@.str.134 = private unnamed_addr constant [59 x i8] c"milter_negotiate(%s): version %d != MTA milter version %d\0A\00", align 1
@.str.135 = private unnamed_addr constant [60 x i8] c"Milter (%s): negotiate: version %d != MTA milter version %d\00", align 1
@.str.136 = private unnamed_addr constant [75 x i8] c"milter_negotiate(%s): filter abilities 0x%x != MTA milter abilities 0x%lx\0A\00", align 1
@.str.137 = private unnamed_addr constant [76 x i8] c"Milter (%s): negotiate: filter abilities 0x%x != MTA milter abilities 0x%lx\00", align 1
@.str.138 = private unnamed_addr constant [77 x i8] c"milter_negotiate(%s): protocol abilities 0x%x != MTA milter abilities 0x%lx\0A\00", align 1
@.str.139 = private unnamed_addr constant [78 x i8] c"Milter (%s): negotiate: protocol abilities 0x%x != MTA milter abilities 0x%lx\00", align 1
@.str.140 = private unnamed_addr constant [70 x i8] c"milter_negotiate(%s): received: version %u, fflags 0x%x, pflags 0x%x\0A\00", align 1
@.str.141 = private unnamed_addr constant [28 x i8] c"SM_ASSERT(m != NULL) failed\00", align 1
@.str.142 = private unnamed_addr constant [30 x i8] c"SM_ASSERT(buf != NULL) failed\00", align 1
@.str.143 = private unnamed_addr constant [58 x i8] c"SM_ASSERT(m->mf_idx > 0 && m->mf_idx < MAXFILTERS) failed\00", align 1
@.str.144 = private unnamed_addr constant [36 x i8] c"milter_getsymlist(%s, %s, \22%s\22)=%d\0A\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.146 = private unnamed_addr constant [28 x i8] c"Milter (%s): to error state\00", align 1
@.str.147 = private unnamed_addr constant [32 x i8] c"milter_command: cmd %c len %ld\0A\00", align 1
@.str.148 = private unnamed_addr constant [35 x i8] c"Milter (%s): time command (%c), %d\00", align 1
@.str.149 = private unnamed_addr constant [25 x i8] c"milter_abort_filter(%s)\0A\00", align 1
@.str.150 = private unnamed_addr constant [26 x i8] c"Milter (%s): abort filter\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"abort_filter\00", align 1
@.str.152 = private unnamed_addr constant [27 x i8] c"Milter (%s): headers, send\00", align 1
@.str.153 = private unnamed_addr constant [23 x i8] c"milter_headers: %s:%s\0A\00", align 1
@.str.154 = private unnamed_addr constant [24 x i8] c"Milter (%s): header, %s\00", align 1
@.str.155 = private unnamed_addr constant [32 x i8] c"SM_ASSERT(len_n < len_f) failed\00", align 1
@.str.156 = private unnamed_addr constant [49 x i8] c"SM_ASSERT(len_t >= len_n + 1 + len_v + 1) failed\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.158 = private unnamed_addr constant [27 x i8] c"Milter (%s): headers, sent\00", align 1
@.str.159 = private unnamed_addr constant [35 x i8] c"milter_send_macros(%s, %c): %s=%s\0A\00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c"send_macros\00", align 1
@.str.161 = private unnamed_addr constant [41 x i8] c"milter_send_command(%s): cmd %c len %ld\0A\00", align 1
@.str.162 = private unnamed_addr constant [21 x i8] c"554 Command rejected\00", align 1
@.str.163 = private unnamed_addr constant [21 x i8] c"550 Command rejected\00", align 1
@.str.164 = private unnamed_addr constant [27 x i8] c"550 5.7.1 Command rejected\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.167 = private unnamed_addr constant [46 x i8] c"milter_send_command(%s): skip=%lx, pflags=%x\0A\00", align 1
@.str.168 = private unnamed_addr constant [38 x i8] c"milter_send_command(%s): returned %c\0A\00", align 1
@.str.169 = private unnamed_addr constant [32 x i8] c"milter=%s, action=%s, reject=%s\00", align 1
@.str.170 = private unnamed_addr constant [29 x i8] c"milter=%s, action=%s, reject\00", align 1
@.str.171 = private unnamed_addr constant [30 x i8] c"milter=%s, action=%s, discard\00", align 1
@.str.172 = private unnamed_addr constant [31 x i8] c"milter=%s, action=%s, tempfail\00", align 1
@.str.173 = private unnamed_addr constant [31 x i8] c"milter=%s, action=%s, accepted\00", align 1
@.str.174 = private unnamed_addr constant [31 x i8] c"milter=%s, action=%s, continue\00", align 1
@.str.175 = private unnamed_addr constant [27 x i8] c"milter=%s, action=%s, skip\00", align 1
@.str.176 = private unnamed_addr constant [62 x i8] c"milter_send_command(%s): action=%s returned bogus response %c\00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"milter_body\0A\00", align 1
@.str.178 = private unnamed_addr constant [36 x i8] c"milter_body: %s/%cf%s: rewind error\00", align 1
@.str.179 = private unnamed_addr constant [24 x i8] c"Milter (%s): body, send\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"body chunk\00", align 1
@.str.181 = private unnamed_addr constant [34 x i8] c"milter_body: %s/%cf%s: read error\00", align 1
@.str.182 = private unnamed_addr constant [16 x i8] c"last body chunk\00", align 1
@.str.183 = private unnamed_addr constant [24 x i8] c"Milter (%s): body, sent\00", align 1
@MilterMaxDataSize = internal global i64 65535, align 8
@.str.184 = private unnamed_addr constant [51 x i8] c"milter_write(%s): length %ld out of range, cmd=%c\0A\00", align 1
@.str.185 = private unnamed_addr constant [26 x i8] c"milter_write(%s): buf=%s\0A\00", align 1
@.str.186 = private unnamed_addr constant [50 x i8] c"milter_write(%s): length %ld out of range, cmd=%c\00", align 1
@.str.187 = private unnamed_addr constant [32 x i8] c"milter_write(%s): socket closed\00", align 1
@.str.188 = private unnamed_addr constant [35 x i8] c"milter_write(%s): cmd %c, len %ld\0A\00", align 1
@.str.189 = private unnamed_addr constant [31 x i8] c"milter_write(%s): Sending %*s\0A\00", align 1
@.str.190 = private unnamed_addr constant [55 x i8] c"milter_%s(%s): socket %d is larger than FD_SETSIZE %d\0A\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.192 = private unnamed_addr constant [56 x i8] c"Milter (%s): socket(%s) %d is larger than FD_SETSIZE %d\00", align 1
@.str.193 = private unnamed_addr constant [34 x i8] c"milter_%s(%s): timeout, where=%s\0A\00", align 1
@.str.194 = private unnamed_addr constant [42 x i8] c"Milter (%s): timeout %s data %s, where=%s\00", align 1
@.str.195 = private unnamed_addr constant [7 x i8] c"during\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.197 = private unnamed_addr constant [27 x i8] c"milter_%s(%s): select: %s\0A\00", align 1
@.str.198 = private unnamed_addr constant [28 x i8] c"Milter (%s): select(%s): %s\00", align 1
@.str.199 = private unnamed_addr constant [33 x i8] c"milter_%s(%s): socket not ready\0A\00", align 1
@.str.200 = private unnamed_addr constant [34 x i8] c"Milter (%s): socket(%s) not ready\00", align 1
@.str.201 = private unnamed_addr constant [60 x i8] c"milter_write(%s): write(%c) returned %ld, expected %ld: %s\0A\00", align 1
@.str.202 = private unnamed_addr constant [54 x i8] c"Milter (%s): write(%c) returned %ld, expected %ld: %s\00", align 1
@.str.203 = private unnamed_addr constant [41 x i8] c"milter_read(%s): socket closed, where=%s\00", align 1
@.str.204 = private unnamed_addr constant [53 x i8] c"milter_read(%s): timeout before data read, where=%s\0A\00", align 1
@.str.205 = private unnamed_addr constant [52 x i8] c"Milter read(%s): timeout before data read, where=%s\00", align 1
@.str.206 = private unnamed_addr constant [38 x i8] c"milter_read(%s): expecting %ld bytes\0A\00", align 1
@.str.207 = private unnamed_addr constant [55 x i8] c"milter_read(%s): read size %ld out of range, where=%s\0A\00", align 1
@.str.208 = private unnamed_addr constant [54 x i8] c"milter_read(%s): read size %ld out of range, where=%s\00", align 1
@.str.209 = private unnamed_addr constant [32 x i8] c"milter_read(%s): Returning %*s\0A\00", align 1
@.str.210 = private unnamed_addr constant [49 x i8] c"milter_sys_read (%s): timeout %s data read in %s\00", align 1
@.str.211 = private unnamed_addr constant [40 x i8] c"Milter (%s): timeout %s data read in %s\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.213 = private unnamed_addr constant [44 x i8] c"milter_sys_read(%s): read returned %ld: %s\0A\00", align 1
@.str.214 = private unnamed_addr constant [35 x i8] c"Milter (%s): read returned %ld: %s\00", align 1
@.str.215 = private unnamed_addr constant [59 x i8] c"milter_sys_read(%s): cmd read returned %ld, expecting %ld\0A\00", align 1
@.str.216 = private unnamed_addr constant [58 x i8] c"milter_sys_read(%s): cmd read returned %ld, expecting %ld\00", align 1
@.str.217 = private unnamed_addr constant [19 x i8] c"milter_addheader: \00", align 1
@.str.218 = private unnamed_addr constant [15 x i8] c"NULL response\0A\00", align 1
@.str.219 = private unnamed_addr constant [50 x i8] c"didn't follow protocol (total len %d != rlen %d)\0A\00", align 1
@.str.220 = private unnamed_addr constant [35 x i8] c"didn't follow protocol (part len)\0A\00", align 1
@.str.221 = private unnamed_addr constant [18 x i8] c"empty field name\0A\00", align 1
@.str.222 = private unnamed_addr constant [41 x i8] c"Replace default header %s value with %s\0A\00", align 1
@.str.223 = private unnamed_addr constant [47 x i8] c"Milter change: default header %s value with %s\00", align 1
@.str.224 = private unnamed_addr constant [12 x i8] c"Add %s: %s\0A\00", align 1
@.str.225 = private unnamed_addr constant [27 x i8] c"Milter add: header: %s: %s\00", align 1
@.str.226 = private unnamed_addr constant [30 x i8] c"SM_ASSERT(str != NULL) failed\00", align 1
@.str.227 = private unnamed_addr constant [28 x i8] c"SM_ASSERT(l + 2 > l) failed\00", align 1
@.str.228 = private unnamed_addr constant [19 x i8] c"milter_insheader: \00", align 1
@.str.229 = private unnamed_addr constant [36 x i8] c"didn't follow protocol (total len)\0A\00", align 1
@.str.230 = private unnamed_addr constant [20 x i8] c"Insert (%d) %s: %s\0A\00", align 1
@.str.231 = private unnamed_addr constant [35 x i8] c"Milter insert (%d): header: %s: %s\00", align 1
@.str.232 = private unnamed_addr constant [22 x i8] c"milter_changeheader: \00", align 1
@.str.233 = private unnamed_addr constant [18 x i8] c"Delete (noop) %s\0A\00", align 1
@.str.234 = private unnamed_addr constant [33 x i8] c"Milter delete (noop): header: %s\00", align 1
@.str.235 = private unnamed_addr constant [36 x i8] c"Milter change (add): header: %s: %s\00", align 1
@.str.236 = private unnamed_addr constant [16 x i8] c"Delete%s %s:%s\0A\00", align 1
@.str.237 = private unnamed_addr constant [18 x i8] c" (default header)\00", align 1
@.str.238 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.239 = private unnamed_addr constant [28 x i8] c"Change%s %s: from %s to %s\0A\00", align 1
@.str.240 = private unnamed_addr constant [30 x i8] c"Milter delete: header%s %s:%s\00", align 1
@.str.241 = private unnamed_addr constant [42 x i8] c"Milter change: header%s %s: from %s to %s\00", align 1
@.str.242 = private unnamed_addr constant [17 x i8] c"milter_chgfrom: \00", align 1
@.str.243 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.244 = private unnamed_addr constant [19 x i8] c"Milter chgfrom: %s\00", align 1
@.str.245 = private unnamed_addr constant [32 x i8] c"didn't follow protocol argc=%d\0A\00", align 1
@Errors = external global i32, align 4
@.str.246 = private unnamed_addr constant [5 x i8] c"MAIL\00", align 1
@.str.247 = private unnamed_addr constant [35 x i8] c"SM_ASSERT(response != NULL) failed\00", align 1
@.str.248 = private unnamed_addr constant [32 x i8] c"SM_ASSERT(pargc != NULL) failed\00", align 1
@.str.249 = private unnamed_addr constant [15 x i8] c"argv[%d]=\22%s\22\0A\00", align 1
@.str.250 = private unnamed_addr constant [17 x i8] c"milter_addrcpt: \00", align 1
@.str.251 = private unnamed_addr constant [21 x i8] c"Milter add: rcpt: %s\00", align 1
@.str.252 = private unnamed_addr constant [21 x i8] c"milter_addrcpt_par: \00", align 1
@.str.253 = private unnamed_addr constant [5 x i8] c"RCPT\00", align 1
@.str.254 = private unnamed_addr constant [25 x i8] c"olderrors=%d, Errors=%d\0A\00", align 1
@.str.255 = private unnamed_addr constant [31 x i8] c"a=%p, olderrors=%d, Errors=%d\0A\00", align 1
@.str.256 = private unnamed_addr constant [17 x i8] c"milter_delrcpt: \00", align 1
@.str.257 = private unnamed_addr constant [23 x i8] c"Milter delete: rcpt %s\00", align 1
@SuperSafe = external global i32, align 4
@SmFtStdio_def = external global %struct.sm_file, align 8
@.str.258 = private unnamed_addr constant [36 x i8] c"milter_reopen_df: sm_io_open %s: %s\00", align 1
@.str.259 = private unnamed_addr constant [38 x i8] c"milter_reopen_df: NULL e_dfp (%s: %s)\00", align 1
@milter_replbody.prevchar = internal global i8 0, align 1
@.str.260 = private unnamed_addr constant [17 x i8] c"milter_replbody\0A\00", align 1
@.str.261 = private unnamed_addr constant [21 x i8] c"SendmailBufferedFile\00", align 1
@.str.262 = private unnamed_addr constant [39 x i8] c"milter_replbody: sm_io truncate %s: %s\00", align 1
@.str.263 = private unnamed_addr constant [35 x i8] c"milter_replbody: sm_io_seek %s: %s\00", align 1
@.str.264 = private unnamed_addr constant [40 x i8] c"milter_replbody: sm_io ftruncate %s: %s\00", align 1
@.str.265 = private unnamed_addr constant [30 x i8] c"Milter message: body replaced\00", align 1
@.str.266 = private unnamed_addr constant [47 x i8] c"milter_reset_df: error writing/flushing %s: %s\00", align 1
@.str.267 = private unnamed_addr constant [39 x i8] c"milter_reset_df: error sync'ing %s: %s\00", align 1
@.str.268 = private unnamed_addr constant [38 x i8] c"milter_reset_df: error closing %s: %s\00", align 1
@.str.269 = private unnamed_addr constant [40 x i8] c"milter_reset_df: error reopening %s: %s\00", align 1
@.str.270 = private unnamed_addr constant [24 x i8] c"milter_quit_filter(%s)\0A\00", align 1
@.str.271 = private unnamed_addr constant [25 x i8] c"Milter (%s): quit filter\00", align 1
@.str.272 = private unnamed_addr constant [12 x i8] c"quit_filter\00", align 1

; Function Attrs: nounwind uwtable
define void @milter_setup(i8* %line) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %fcode = alloca i8, align 1
  %p = alloca i8*, align 8
  %m = alloca %struct.milter*, align 8
  %s = alloca %struct.symtab*, align 8
  %cleanup.dest.slot = alloca i32
  %delimptr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %fcode) #1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %line.addr, align 8, !tbaa !1
  store i8* %3, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8*, i8** %p, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !5
  %conv = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end.12

land.lhs.true:                                    ; preds = %for.cond
  %6 = load i8*, i8** %p, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !5
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv2, 44
  br i1 %cmp3, label %land.rhs, label %land.end.12

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !5
  %conv5 = sext i8 %9 to i32
  %and = and i32 %conv5, -128
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %land.rhs.8, label %land.end

land.rhs.8:                                       ; preds = %land.rhs
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !5
  %conv9 = sext i8 %11 to i32
  %idxprom = sext i32 %conv9 to i64
  %call = call i16** @__ctype_b_loc() #11
  %12 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 %idxprom
  %13 = load i16, i16* %arrayidx, align 2, !tbaa !6
  %conv10 = zext i16 %13 to i32
  %and11 = and i32 %conv10, 8192
  %tobool = icmp ne i32 %and11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.8, %land.rhs
  %14 = phi i1 [ false, %land.rhs ], [ %tobool, %land.rhs.8 ]
  %lnot = xor i1 %14, true
  br label %land.end.12

land.end.12:                                      ; preds = %land.end, %land.lhs.true, %for.cond
  %15 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %lnot, %land.end ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end.12
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !5
  %conv13 = sext i8 %18 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr16, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %19, align 1, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %20 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx17, align 1, !tbaa !5
  %conv18 = sext i8 %21 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.155

if.end.22:                                        ; preds = %if.end
  %call23 = call i8* @xalloc_tagged(i32 112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 1243)
  %22 = bitcast i8* %call23 to %struct.milter*
  store %struct.milter* %22, %struct.milter** %m, align 8, !tbaa !1
  %23 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %24 = bitcast %struct.milter* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 112, i32 1, i1 false)
  %25 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %call24 = call i8* @newstr(i8* %25)
  %26 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %26, i32 0, i32 0
  store i8* %call24, i8** %mf_name, align 8, !tbaa !8
  %27 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %27, i32 0, i32 7
  store i8 82, i8* %mf_state, align 1, !tbaa !11
  %28 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_sock = getelementptr inbounds %struct.milter, %struct.milter* %28, i32 0, i32 6
  store i32 -1, i32* %mf_sock, align 4, !tbaa !12
  %29 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_timeout = getelementptr inbounds %struct.milter, %struct.milter* %29, i32 0, i32 10
  %arrayidx25 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout, i32 0, i64 3
  store i64 300, i64* %arrayidx25, align 8, !tbaa !13
  %30 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_timeout26 = getelementptr inbounds %struct.milter, %struct.milter* %30, i32 0, i32 10
  %arrayidx27 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout26, i32 0, i64 0
  store i64 10, i64* %arrayidx27, align 8, !tbaa !13
  %31 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_timeout28 = getelementptr inbounds %struct.milter, %struct.milter* %31, i32 0, i32 10
  %arrayidx29 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout28, i32 0, i64 1
  store i64 10, i64* %arrayidx29, align 8, !tbaa !13
  %32 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_timeout30 = getelementptr inbounds %struct.milter, %struct.milter* %32, i32 0, i32 10
  %arrayidx31 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout30, i32 0, i64 2
  store i64 300, i64* %arrayidx31, align 8, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end.22
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !5
  %conv32 = sext i8 %34 to i32
  %cmp33 = icmp ne i32 %conv32, 0
  br i1 %cmp33, label %while.body, label %while.end.143

while.body:                                       ; preds = %while.cond
  %35 = bitcast i8** %delimptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.57, %while.body
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !5
  %conv36 = sext i8 %37 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %land.rhs.39, label %land.end.56

land.rhs.39:                                      ; preds = %while.cond.35
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !5
  %conv40 = sext i8 %39 to i32
  %cmp41 = icmp eq i32 %conv40, 44
  br i1 %cmp41, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.39
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !5
  %conv43 = sext i8 %41 to i32
  %and44 = and i32 %conv43, -128
  %cmp45 = icmp eq i32 %and44, 0
  br i1 %cmp45, label %land.rhs.47, label %land.end.55

land.rhs.47:                                      ; preds = %lor.rhs
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !5
  %conv48 = sext i8 %43 to i32
  %idxprom49 = sext i32 %conv48 to i64
  %call50 = call i16** @__ctype_b_loc() #11
  %44 = load i16*, i16** %call50, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i16, i16* %44, i64 %idxprom49
  %45 = load i16, i16* %arrayidx51, align 2, !tbaa !6
  %conv52 = zext i16 %45 to i32
  %and53 = and i32 %conv52, 8192
  %tobool54 = icmp ne i32 %and53, 0
  br label %land.end.55

land.end.55:                                      ; preds = %land.rhs.47, %lor.rhs
  %46 = phi i1 [ false, %lor.rhs ], [ %tobool54, %land.rhs.47 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.55, %land.rhs.39
  %47 = phi i1 [ true, %land.rhs.39 ], [ %46, %land.end.55 ]
  br label %land.end.56

land.end.56:                                      ; preds = %lor.end, %while.cond.35
  %48 = phi i1 [ false, %while.cond.35 ], [ %47, %lor.end ]
  br i1 %48, label %while.body.57, label %while.end

while.body.57:                                    ; preds = %land.end.56
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr58 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr58, i8** %p, align 8, !tbaa !1
  br label %while.cond.35

while.end:                                        ; preds = %land.end.56
  %50 = load i8*, i8** %p, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !5
  store i8 %51, i8* %fcode, align 1, !tbaa !5
  br label %while.cond.59

while.cond.59:                                    ; preds = %while.body.72, %while.end
  %52 = load i8*, i8** %p, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !5
  %conv60 = sext i8 %53 to i32
  %cmp61 = icmp ne i32 %conv60, 0
  br i1 %cmp61, label %land.lhs.true.63, label %land.end.71

land.lhs.true.63:                                 ; preds = %while.cond.59
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !5
  %conv64 = sext i8 %55 to i32
  %cmp65 = icmp ne i32 %conv64, 61
  br i1 %cmp65, label %land.rhs.67, label %land.end.71

land.rhs.67:                                      ; preds = %land.lhs.true.63
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !5
  %conv68 = sext i8 %57 to i32
  %cmp69 = icmp ne i32 %conv68, 44
  br label %land.end.71

land.end.71:                                      ; preds = %land.rhs.67, %land.lhs.true.63, %while.cond.59
  %58 = phi i1 [ false, %land.lhs.true.63 ], [ false, %while.cond.59 ], [ %cmp69, %land.rhs.67 ]
  br i1 %58, label %while.body.72, label %while.end.74

while.body.72:                                    ; preds = %land.end.71
  %59 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr73 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr73, i8** %p, align 8, !tbaa !1
  br label %while.cond.59

while.end.74:                                     ; preds = %land.end.71
  %60 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr75 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr75, i8** %p, align 8, !tbaa !1
  %61 = load i8, i8* %60, align 1, !tbaa !5
  %conv76 = sext i8 %61 to i32
  %cmp77 = icmp ne i32 %conv76, 61
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %while.end.74
  %62 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name80 = getelementptr inbounds %struct.milter, %struct.milter* %62, i32 0, i32 0
  %63 = load i8*, i8** %mf_name80, align 8, !tbaa !8
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* %63)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %while.end.74
  br label %while.cond.82

while.cond.82:                                    ; preds = %while.body.96, %if.end.81
  %64 = load i8*, i8** %p, align 8, !tbaa !1
  %65 = load i8, i8* %64, align 1, !tbaa !5
  %conv83 = sext i8 %65 to i32
  %and84 = and i32 %conv83, -128
  %cmp85 = icmp eq i32 %and84, 0
  br i1 %cmp85, label %land.rhs.87, label %land.end.95

land.rhs.87:                                      ; preds = %while.cond.82
  %66 = load i8*, i8** %p, align 8, !tbaa !1
  %67 = load i8, i8* %66, align 1, !tbaa !5
  %conv88 = sext i8 %67 to i32
  %idxprom89 = sext i32 %conv88 to i64
  %call90 = call i16** @__ctype_b_loc() #11
  %68 = load i16*, i16** %call90, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i16, i16* %68, i64 %idxprom89
  %69 = load i16, i16* %arrayidx91, align 2, !tbaa !6
  %conv92 = zext i16 %69 to i32
  %and93 = and i32 %conv92, 8192
  %tobool94 = icmp ne i32 %and93, 0
  br label %land.end.95

land.end.95:                                      ; preds = %land.rhs.87, %while.cond.82
  %70 = phi i1 [ false, %while.cond.82 ], [ %tobool94, %land.rhs.87 ]
  br i1 %70, label %while.body.96, label %while.end.98

while.body.96:                                    ; preds = %land.end.95
  %71 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr97 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr97, i8** %p, align 8, !tbaa !1
  br label %while.cond.82

while.end.98:                                     ; preds = %land.end.95
  %72 = load i8*, i8** %p, align 8, !tbaa !1
  %call99 = call i8* @munchstring(i8* %72, i8** %delimptr, i32 44)
  store i8* %call99, i8** %p, align 8, !tbaa !1
  %73 = load i8, i8* %fcode, align 1, !tbaa !5
  %conv100 = sext i8 %73 to i32
  switch i32 %conv100, label %sw.default [
    i32 83, label %sw.bb
    i32 70, label %sw.bb.107
    i32 84, label %sw.bb.140
  ]

sw.bb:                                            ; preds = %while.end.98
  %74 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp101 = icmp eq i8* %74, null
  br i1 %cmp101, label %if.then.103, label %if.else

if.then.103:                                      ; preds = %sw.bb
  %75 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_conn = getelementptr inbounds %struct.milter, %struct.milter* %75, i32 0, i32 5
  store i8* null, i8** %mf_conn, align 8, !tbaa !15
  br label %if.end.106

if.else:                                          ; preds = %sw.bb
  %76 = load i8*, i8** %p, align 8, !tbaa !1
  %call104 = call i8* @newstr(i8* %76)
  %77 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_conn105 = getelementptr inbounds %struct.milter, %struct.milter* %77, i32 0, i32 5
  store i8* %call104, i8** %mf_conn105, align 8, !tbaa !15
  br label %if.end.106

if.end.106:                                       ; preds = %if.else, %if.then.103
  br label %sw.epilog

sw.bb.107:                                        ; preds = %while.end.98
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.137, %sw.bb.107
  %78 = load i8*, i8** %p, align 8, !tbaa !1
  %79 = load i8, i8* %78, align 1, !tbaa !5
  %conv109 = sext i8 %79 to i32
  %cmp110 = icmp ne i32 %conv109, 0
  br i1 %cmp110, label %for.body.112, label %for.end.139

for.body.112:                                     ; preds = %for.cond.108
  %80 = load i8*, i8** %p, align 8, !tbaa !1
  %81 = load i8, i8* %80, align 1, !tbaa !5
  %conv113 = sext i8 %81 to i32
  %and114 = and i32 %conv113, -128
  %cmp115 = icmp eq i32 %and114, 0
  br i1 %cmp115, label %land.lhs.true.117, label %if.then.125

land.lhs.true.117:                                ; preds = %for.body.112
  %82 = load i8*, i8** %p, align 8, !tbaa !1
  %83 = load i8, i8* %82, align 1, !tbaa !5
  %conv118 = sext i8 %83 to i32
  %idxprom119 = sext i32 %conv118 to i64
  %call120 = call i16** @__ctype_b_loc() #11
  %84 = load i16*, i16** %call120, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i16, i16* %84, i64 %idxprom119
  %85 = load i16, i16* %arrayidx121, align 2, !tbaa !6
  %conv122 = zext i16 %85 to i32
  %and123 = and i32 %conv122, 8192
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.end.136, label %if.then.125

if.then.125:                                      ; preds = %land.lhs.true.117, %for.body.112
  %86 = load i8*, i8** %p, align 8, !tbaa !1
  %87 = load i8, i8* %86, align 1, !tbaa !5
  %conv126 = sext i8 %87 to i32
  %and127 = and i32 %conv126, 255
  %conv128 = trunc i32 %and127 to i8
  %conv129 = zext i8 %conv128 to i64
  %rem = urem i64 %conv129, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %88 = load i8*, i8** %p, align 8, !tbaa !1
  %89 = load i8, i8* %88, align 1, !tbaa !5
  %conv130 = sext i8 %89 to i32
  %and131 = and i32 %conv130, 255
  %conv132 = trunc i32 %and131 to i8
  %conv133 = zext i8 %conv132 to i64
  %div = udiv i64 %conv133, 32
  %and134 = and i64 %div, 7
  %90 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags = getelementptr inbounds %struct.milter, %struct.milter* %90, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags, i32 0, i64 %and134
  %91 = load i32, i32* %arrayidx135, align 4, !tbaa !16
  %or = or i32 %91, %shl
  store i32 %or, i32* %arrayidx135, align 4, !tbaa !16
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.125, %land.lhs.true.117
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136
  %92 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr138 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr138, i8** %p, align 8, !tbaa !1
  br label %for.cond.108

for.end.139:                                      ; preds = %for.cond.108
  br label %sw.epilog

sw.bb.140:                                        ; preds = %while.end.98
  %93 = load i8*, i8** %p, align 8, !tbaa !1
  %94 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  call void @milter_parse_timeouts(i8* %93, %struct.milter* %94)
  br label %sw.epilog

sw.default:                                       ; preds = %while.end.98
  %95 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name141 = getelementptr inbounds %struct.milter, %struct.milter* %95, i32 0, i32 0
  %96 = load i8*, i8** %mf_name141, align 8, !tbaa !8
  %97 = load i8, i8* %fcode, align 1, !tbaa !5
  %conv142 = sext i8 %97 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* %96, i32 %conv142)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.140, %for.end.139, %if.end.106
  %98 = load i8*, i8** %delimptr, align 8, !tbaa !1
  store i8* %98, i8** %p, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.79
  %99 = bitcast i8** %delimptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.155 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.143:                                    ; preds = %while.cond
  %100 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %101 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %call144 = call i32 @milter_open(%struct.milter* %100, i32 1, %struct.envelope* %101)
  %102 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name145 = getelementptr inbounds %struct.milter, %struct.milter* %102, i32 0, i32 0
  %103 = load i8*, i8** %mf_name145, align 8, !tbaa !8
  %call146 = call %struct.symtab* @stab(i8* %103, i32 14, i32 1)
  store %struct.symtab* %call146, %struct.symtab** %s, align 8, !tbaa !1
  %104 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %104, i32 0, i32 3
  %sv_milter = bitcast %union.anon* %s_value to %struct.milter**
  %105 = load %struct.milter*, %struct.milter** %sv_milter, align 8, !tbaa !1
  %cmp147 = icmp ne %struct.milter* %105, null
  br i1 %cmp147, label %if.then.149, label %if.else.151

if.then.149:                                      ; preds = %while.end.143
  %106 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name150 = getelementptr inbounds %struct.milter, %struct.milter* %106, i32 0, i32 0
  %107 = load i8*, i8** %mf_name150, align 8, !tbaa !8
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0), i8* %107)
  br label %if.end.154

if.else.151:                                      ; preds = %while.end.143
  %108 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %109 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value152 = getelementptr inbounds %struct.symtab, %struct.symtab* %109, i32 0, i32 3
  %sv_milter153 = bitcast %union.anon* %s_value152 to %struct.milter**
  store %struct.milter* %108, %struct.milter** %sv_milter153, align 8, !tbaa !1
  %110 = load i32, i32* @milter_setup.idx, align 4, !tbaa !16
  %inc = add nsw i32 %110, 1
  store i32 %inc, i32* @milter_setup.idx, align 4, !tbaa !16
  %111 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_idx = getelementptr inbounds %struct.milter, %struct.milter* %111, i32 0, i32 9
  store i32 %inc, i32* %mf_idx, align 4, !tbaa !17
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.151, %if.then.149
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.155

cleanup.155:                                      ; preds = %if.end.154, %cleanup, %if.then.21
  %112 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  call void @llvm.lifetime.end(i64 1, i8* %fcode) #1
  %cleanup.dest.159 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.159, label %unreachable [
    i32 0, label %cleanup.cont.160
    i32 1, label %cleanup.cont.160
  ]

cleanup.cont.160:                                 ; preds = %cleanup.155, %cleanup.155
  ret void

unreachable:                                      ; preds = %cleanup.155
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

declare void @syserr(i8*, ...) #3

declare i8* @xalloc_tagged(i32, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i8* @newstr(i8*) #3

declare i8* @munchstring(i8*, i8**, i32) #3

; Function Attrs: nounwind uwtable
define internal void @milter_parse_timeouts(i8* %spec, %struct.milter* %m) #0 {
entry:
  %spec.addr = alloca i8*, align 8
  %m.addr = alloca %struct.milter*, align 8
  %fcode = alloca i8, align 1
  %tcode = alloca i32, align 4
  %p = alloca i8*, align 8
  %delimptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %spec, i8** %spec.addr, align 8, !tbaa !1
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %fcode) #1
  %0 = bitcast i32* %tcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %spec.addr, align 8, !tbaa !1
  store i8* %2, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %3 = load i8*, i8** %p, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !5
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end.85

while.body:                                       ; preds = %while.cond
  %5 = bitcast i8** %delimptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.17, %while.body
  %6 = load i8*, i8** %p, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !5
  %conv3 = sext i8 %7 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %land.rhs, label %land.end.16

land.rhs:                                         ; preds = %while.cond.2
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !5
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 59
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !5
  %conv9 = sext i8 %11 to i32
  %and = and i32 %conv9, -128
  %cmp10 = icmp eq i32 %and, 0
  br i1 %cmp10, label %land.rhs.12, label %land.end

land.rhs.12:                                      ; preds = %lor.rhs
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !5
  %conv13 = sext i8 %13 to i32
  %idxprom = sext i32 %conv13 to i64
  %call = call i16** @__ctype_b_loc() #11
  %14 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %15 = load i16, i16* %arrayidx, align 2, !tbaa !6
  %conv14 = zext i16 %15 to i32
  %and15 = and i32 %conv14, 8192
  %tobool = icmp ne i32 %and15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.12, %lor.rhs
  %16 = phi i1 [ false, %lor.rhs ], [ %tobool, %land.rhs.12 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %17 = phi i1 [ true, %land.rhs ], [ %16, %land.end ]
  br label %land.end.16

land.end.16:                                      ; preds = %lor.end, %while.cond.2
  %18 = phi i1 [ false, %while.cond.2 ], [ %17, %lor.end ]
  br i1 %18, label %while.body.17, label %while.end

while.body.17:                                    ; preds = %land.end.16
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %while.cond.2

while.end:                                        ; preds = %land.end.16
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !5
  store i8 %21, i8* %fcode, align 1, !tbaa !5
  br label %while.cond.18

while.cond.18:                                    ; preds = %while.body.27, %while.end
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !5
  %conv19 = sext i8 %23 to i32
  %cmp20 = icmp ne i32 %conv19, 0
  br i1 %cmp20, label %land.rhs.22, label %land.end.26

land.rhs.22:                                      ; preds = %while.cond.18
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !5
  %conv23 = sext i8 %25 to i32
  %cmp24 = icmp ne i32 %conv23, 58
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.22, %while.cond.18
  %26 = phi i1 [ false, %while.cond.18 ], [ %cmp24, %land.rhs.22 ]
  br i1 %26, label %while.body.27, label %while.end.29

while.body.27:                                    ; preds = %land.end.26
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr28, i8** %p, align 8, !tbaa !1
  br label %while.cond.18

while.end.29:                                     ; preds = %land.end.26
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr30 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr30, i8** %p, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !5
  %conv31 = sext i8 %29 to i32
  %cmp32 = icmp ne i32 %conv31, 58
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %while.end.29
  %30 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %30, i32 0, i32 0
  %31 = load i8*, i8** %mf_name, align 8, !tbaa !8
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.113, i32 0, i32 0), i8* %31)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.end.29
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.48, %if.end
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !5
  %conv35 = sext i8 %33 to i32
  %and36 = and i32 %conv35, -128
  %cmp37 = icmp eq i32 %and36, 0
  br i1 %cmp37, label %land.rhs.39, label %land.end.47

land.rhs.39:                                      ; preds = %while.cond.34
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !5
  %conv40 = sext i8 %35 to i32
  %idxprom41 = sext i32 %conv40 to i64
  %call42 = call i16** @__ctype_b_loc() #11
  %36 = load i16*, i16** %call42, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i16, i16* %36, i64 %idxprom41
  %37 = load i16, i16* %arrayidx43, align 2, !tbaa !6
  %conv44 = zext i16 %37 to i32
  %and45 = and i32 %conv44, 8192
  %tobool46 = icmp ne i32 %and45, 0
  br label %land.end.47

land.end.47:                                      ; preds = %land.rhs.39, %while.cond.34
  %38 = phi i1 [ false, %while.cond.34 ], [ %tobool46, %land.rhs.39 ]
  br i1 %38, label %while.body.48, label %while.end.50

while.body.48:                                    ; preds = %land.end.47
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr49 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr49, i8** %p, align 8, !tbaa !1
  br label %while.cond.34

while.end.50:                                     ; preds = %land.end.47
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %call51 = call i8* @munchstring(i8* %40, i8** %delimptr, i32 59)
  store i8* %call51, i8** %p, align 8, !tbaa !1
  store i32 -1, i32* %tcode, align 4, !tbaa !16
  %41 = load i8, i8* %fcode, align 1, !tbaa !5
  %conv52 = sext i8 %41 to i32
  switch i32 %conv52, label %sw.default [
    i32 67, label %sw.bb
    i32 83, label %sw.bb.53
    i32 82, label %sw.bb.54
    i32 69, label %sw.bb.55
  ]

sw.bb:                                            ; preds = %while.end.50
  store i32 3, i32* %tcode, align 4, !tbaa !16
  br label %sw.epilog

sw.bb.53:                                         ; preds = %while.end.50
  store i32 0, i32* %tcode, align 4, !tbaa !16
  br label %sw.epilog

sw.bb.54:                                         ; preds = %while.end.50
  store i32 1, i32* %tcode, align 4, !tbaa !16
  br label %sw.epilog

sw.bb.55:                                         ; preds = %while.end.50
  store i32 2, i32* %tcode, align 4, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %while.end.50
  %42 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv56 = zext i8 %42 to i32
  %cmp57 = icmp sge i32 %conv56, 5
  br i1 %cmp57, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %sw.default
  %43 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool59 = icmp ne i32 %43, 0
  br i1 %tobool59, label %if.end.63, label %if.then.60

if.then.60:                                       ; preds = %land.lhs.true
  %44 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name61 = getelementptr inbounds %struct.milter, %struct.milter* %44, i32 0, i32 0
  %45 = load i8*, i8** %mf_name61, align 8, !tbaa !8
  %46 = load i8, i8* %fcode, align 1, !tbaa !5
  %conv62 = sext i8 %46 to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.114, i32 0, i32 0), i8* %45, i32 %conv62)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %land.lhs.true, %sw.default
  %47 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name64 = getelementptr inbounds %struct.milter, %struct.milter* %47, i32 0, i32 0
  %48 = load i8*, i8** %mf_name64, align 8, !tbaa !8
  %49 = load i8, i8* %fcode, align 1, !tbaa !5
  %conv65 = sext i8 %49 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.115, i32 0, i32 0), i8* %48, i32 %conv65)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.63, %sw.bb.55, %sw.bb.54, %sw.bb.53, %sw.bb
  %50 = load i32, i32* %tcode, align 4, !tbaa !16
  %cmp66 = icmp sge i32 %50, 0
  br i1 %cmp66, label %if.then.68, label %if.end.84

if.then.68:                                       ; preds = %sw.epilog
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %call69 = call i64 @convtime(i8* %51, i32 115)
  %52 = load i32, i32* %tcode, align 4, !tbaa !16
  %idxprom70 = sext i32 %52 to i64
  %53 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_timeout = getelementptr inbounds %struct.milter, %struct.milter* %53, i32 0, i32 10
  %arrayidx71 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout, i32 0, i64 %idxprom70
  store i64 %call69, i64* %arrayidx71, align 8, !tbaa !13
  %54 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv72 = zext i8 %54 to i32
  %cmp73 = icmp sge i32 %conv72, 5
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.83

land.lhs.true.75:                                 ; preds = %if.then.68
  %55 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool76 = icmp ne i32 %55, 0
  br i1 %tobool76, label %if.end.83, label %if.then.77

if.then.77:                                       ; preds = %land.lhs.true.75
  %56 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name78 = getelementptr inbounds %struct.milter, %struct.milter* %56, i32 0, i32 0
  %57 = load i8*, i8** %mf_name78, align 8, !tbaa !8
  %58 = load i8, i8* %fcode, align 1, !tbaa !5
  %conv79 = sext i8 %58 to i32
  %59 = load i32, i32* %tcode, align 4, !tbaa !16
  %idxprom80 = sext i32 %59 to i64
  %60 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_timeout81 = getelementptr inbounds %struct.milter, %struct.milter* %60, i32 0, i32 10
  %arrayidx82 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout81, i32 0, i64 %idxprom80
  %61 = load i64, i64* %arrayidx82, align 8, !tbaa !13
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.116, i32 0, i32 0), i8* %57, i32 %conv79, i64 %61)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.77, %land.lhs.true.75, %if.then.68
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %sw.epilog
  %62 = load i8*, i8** %delimptr, align 8, !tbaa !1
  store i8* %62, i8** %p, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.84, %if.then
  %63 = bitcast i8** %delimptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.86 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.85:                                     ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.86

cleanup.86:                                       ; preds = %while.end.85, %cleanup
  %64 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32* %tcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  call void @llvm.lifetime.end(i64 1, i8* %fcode) #1
  %cleanup.dest.89 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.89, label %unreachable [
    i32 0, label %cleanup.cont.90
    i32 1, label %cleanup.cont.90
  ]

cleanup.cont.90:                                  ; preds = %cleanup.86, %cleanup.86
  ret void

unreachable:                                      ; preds = %cleanup.86
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @milter_open(%struct.milter* %m, i32 %parseonly, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.milter*, align 8
  %parseonly.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %sock = alloca i32, align 4
  %addrlen = alloca i32, align 4
  %addrno = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %p = alloca i8*, align 8
  %colon = alloca i8*, align 8
  %at = alloca i8*, align 8
  %hp = alloca %struct.hostent*, align 8
  %addr = alloca %union.bigsockaddr, align 4
  %cleanup.dest.slot = alloca i32
  %sff = alloca i64, align 8
  %port = alloca i16, align 2
  %__v = alloca i16, align 2
  %__x = alloca i16, align 2
  %tmp = alloca i16, align 2
  %sp = alloca %struct.servent*, align 8
  %end = alloca i8*, align 8
  %found = alloca i32, align 4
  %hid = alloca i64, align 8
  %ev = alloca %struct.sm_event*, align 8
  %i = alloca i32, align 4
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store i32 %parseonly, i32* %parseonly.addr, align 4, !tbaa !16
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %sock to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %sock, align 4, !tbaa !16
  %1 = bitcast i32* %addrlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %addrlen, align 4, !tbaa !16
  %2 = bitcast i32* %addrno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %addrno, align 4, !tbaa !16
  %3 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %colon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %at to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %struct.hostent* null, %struct.hostent** %hp, align 8, !tbaa !1
  %8 = bitcast %union.bigsockaddr* %addr to i8*
  call void @llvm.lifetime.start(i64 112, i8* %8) #1
  %9 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_conn = getelementptr inbounds %struct.milter, %struct.milter* %9, i32 0, i32 5
  %10 = load i8*, i8** %mf_conn, align 8, !tbaa !15
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_conn1 = getelementptr inbounds %struct.milter, %struct.milter* %11, i32 0, i32 5
  %12 = load i8*, i8** %mf_conn1, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %13 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end.17

if.then:                                          ; preds = %lor.lhs.false, %entry
  %14 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv4 = zext i8 %14 to i32
  %cmp5 = icmp sge i32 %conv4, 5
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %15 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true
  %16 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %16, i32 0, i32 0
  %17 = load i8*, i8** %mf_name, align 8, !tbaa !8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.71, i32 0, i32 0), i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true, %if.then
  %18 = load i32, i32* %parseonly.addr, align 4, !tbaa !16
  %tobool8 = icmp ne i32 %18, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %19 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name10 = getelementptr inbounds %struct.milter, %struct.milter* %19, i32 0, i32 0
  %20 = load i8*, i8** %mf_name10, align 8, !tbaa !8
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.72, i32 0, i32 0), i8* %20)
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp11 = icmp sgt i32 %21, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.else
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %22, i32 0, i32 25
  %23 = load i8*, i8** %e_id, align 8, !tbaa !18
  %24 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name14 = getelementptr inbounds %struct.milter, %struct.milter* %24, i32 0, i32 0
  %25 = load i8*, i8** %mf_name14, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.73, i32 0, i32 0), i8* %25)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.9
  %26 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %27 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %26, %struct.envelope* %27)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.557

if.end.17:                                        ; preds = %lor.lhs.false
  %28 = bitcast %union.bigsockaddr* %addr to i8*
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 112, i32 4, i1 false)
  %29 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_conn18 = getelementptr inbounds %struct.milter, %struct.milter* %29, i32 0, i32 5
  %30 = load i8*, i8** %mf_conn18, align 8, !tbaa !15
  store i8* %30, i8** %p, align 8, !tbaa !1
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %call = call i8* @strchr(i8* %31, i32 58) #1
  store i8* %call, i8** %colon, align 8, !tbaa !1
  %32 = load i8*, i8** %colon, align 8, !tbaa !1
  %cmp19 = icmp ne i8* %32, null
  br i1 %cmp19, label %if.then.21, label %if.else.68

if.then.21:                                       ; preds = %if.end.17
  %33 = load i8*, i8** %colon, align 8, !tbaa !1
  store i8 0, i8* %33, align 1, !tbaa !5
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !5
  %conv22 = sext i8 %35 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.then.21
  %sa = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa, i32 0, i32 0
  store i16 1, i16* %sa_family, align 2, !tbaa !24
  br label %if.end.67

if.else.26:                                       ; preds = %if.then.21
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %call27 = call i32 @sm_strcasecmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0))
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.else.26
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %call31 = call i32 @sm_strcasecmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0))
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %lor.lhs.false.30, %if.else.26
  %sa35 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa35, i32 0, i32 0
  store i16 1, i16* %sa_family36, align 2, !tbaa !24
  br label %if.end.66

if.else.37:                                       ; preds = %lor.lhs.false.30
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %call38 = call i32 @sm_strcasecmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0))
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.else.44

if.then.41:                                       ; preds = %if.else.37
  %sa42 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa42, i32 0, i32 0
  store i16 2, i16* %sa_family43, align 2, !tbaa !24
  br label %if.end.65

if.else.44:                                       ; preds = %if.else.37
  %call45 = call i32* @__errno_location() #11
  store i32 93, i32* %call45, align 4, !tbaa !16
  %39 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv46 = zext i8 %39 to i32
  %cmp47 = icmp sge i32 %conv46, 5
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.53

land.lhs.true.49:                                 ; preds = %if.else.44
  %40 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool50 = icmp ne i32 %40, 0
  br i1 %tobool50, label %if.end.53, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.49
  %41 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name52 = getelementptr inbounds %struct.milter, %struct.milter* %41, i32 0, i32 0
  %42 = load i8*, i8** %mf_name52, align 8, !tbaa !8
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i32 0, i32 0), i8* %42, i8* %43)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %land.lhs.true.49, %if.else.44
  %44 = load i32, i32* %parseonly.addr, align 4, !tbaa !16
  %tobool54 = icmp ne i32 %44, 0
  br i1 %tobool54, label %if.then.55, label %if.else.57

if.then.55:                                       ; preds = %if.end.53
  %45 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name56 = getelementptr inbounds %struct.milter, %struct.milter* %45, i32 0, i32 0
  %46 = load i8*, i8** %mf_name56, align 8, !tbaa !8
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.78, i32 0, i32 0), i8* %46, i8* %47)
  br label %if.end.64

if.else.57:                                       ; preds = %if.end.53
  %48 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp58 = icmp sgt i32 %48, 0
  br i1 %cmp58, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.else.57
  %49 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id61 = getelementptr inbounds %struct.envelope, %struct.envelope* %49, i32 0, i32 25
  %50 = load i8*, i8** %e_id61, align 8, !tbaa !18
  %51 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name62 = getelementptr inbounds %struct.milter, %struct.milter* %51, i32 0, i32 0
  %52 = load i8*, i8** %mf_name62, align 8, !tbaa !8
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.79, i32 0, i32 0), i8* %52, i8* %53)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %if.else.57
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.55
  %54 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %55 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %54, %struct.envelope* %55)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.557

if.end.65:                                        ; preds = %if.then.41
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.34
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.25
  %56 = load i8*, i8** %colon, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr, i8** %colon, align 8, !tbaa !1
  store i8 58, i8* %56, align 1, !tbaa !5
  br label %if.end.71

if.else.68:                                       ; preds = %if.end.17
  %sa69 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family70 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa69, i32 0, i32 0
  store i16 1, i16* %sa_family70, align 2, !tbaa !24
  %57 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %57, i8** %colon, align 8, !tbaa !1
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.end.67
  %sa72 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family73 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa72, i32 0, i32 0
  %58 = load i16, i16* %sa_family73, align 2, !tbaa !24
  %conv74 = zext i16 %58 to i32
  %cmp75 = icmp eq i32 %conv74, 1
  br i1 %cmp75, label %if.then.77, label %if.else.164

if.then.77:                                       ; preds = %if.end.71
  %59 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  store i64 271106, i64* %sff, align 8, !tbaa !13
  %60 = load i8*, i8** %colon, align 8, !tbaa !1
  store i8* %60, i8** %at, align 8, !tbaa !1
  %61 = load i8*, i8** %colon, align 8, !tbaa !1
  %call78 = call i64 @strlen(i8* %61) #12
  %cmp79 = icmp uge i64 %call78, 108
  br i1 %cmp79, label %if.then.81, label %if.end.102

if.then.81:                                       ; preds = %if.then.77
  %62 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv82 = zext i8 %62 to i32
  %cmp83 = icmp sge i32 %conv82, 5
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.89

land.lhs.true.85:                                 ; preds = %if.then.81
  %63 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool86 = icmp ne i32 %63, 0
  br i1 %tobool86, label %if.end.89, label %if.then.87

if.then.87:                                       ; preds = %land.lhs.true.85
  %64 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name88 = getelementptr inbounds %struct.milter, %struct.milter* %64, i32 0, i32 0
  %65 = load i8*, i8** %mf_name88, align 8, !tbaa !8
  %66 = load i8*, i8** %colon, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.80, i32 0, i32 0), i8* %65, i8* %66)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %land.lhs.true.85, %if.then.81
  %call90 = call i32* @__errno_location() #11
  store i32 22, i32* %call90, align 4, !tbaa !16
  %67 = load i32, i32* %parseonly.addr, align 4, !tbaa !16
  %tobool91 = icmp ne i32 %67, 0
  br i1 %tobool91, label %if.then.92, label %if.else.94

if.then.92:                                       ; preds = %if.end.89
  %68 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name93 = getelementptr inbounds %struct.milter, %struct.milter* %68, i32 0, i32 0
  %69 = load i8*, i8** %mf_name93, align 8, !tbaa !8
  %70 = load i8*, i8** %colon, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i32 0, i32 0), i8* %69, i8* %70)
  br label %if.end.101

if.else.94:                                       ; preds = %if.end.89
  %71 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp95 = icmp sgt i32 %71, 0
  br i1 %cmp95, label %if.then.97, label %if.end.100

if.then.97:                                       ; preds = %if.else.94
  %72 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id98 = getelementptr inbounds %struct.envelope, %struct.envelope* %72, i32 0, i32 25
  %73 = load i8*, i8** %e_id98, align 8, !tbaa !18
  %74 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name99 = getelementptr inbounds %struct.milter, %struct.milter* %74, i32 0, i32 0
  %75 = load i8*, i8** %mf_name99, align 8, !tbaa !8
  %76 = load i8*, i8** %colon, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i32 0, i32 0), i8* %75, i8* %76)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.97, %if.else.94
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.92
  %77 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %78 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %77, %struct.envelope* %78)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.102:                                       ; preds = %if.then.77
  %79 = load i8*, i8** %colon, align 8, !tbaa !1
  %80 = load i32, i32* @RunAsUid, align 4, !tbaa !16
  %81 = load i32, i32* @RunAsGid, align 4, !tbaa !16
  %82 = load i8*, i8** @RunAsUserName, align 8, !tbaa !1
  %83 = load i64, i64* %sff, align 8, !tbaa !13
  %call103 = call i32 @safefile(i8* %79, i32 %80, i32 %81, i8* %82, i64 %83, i32 384, %struct.stat* null)
  %call104 = call i32* @__errno_location() #11
  store i32 %call103, i32* %call104, align 4, !tbaa !16
  %84 = load i32, i32* %parseonly.addr, align 4, !tbaa !16
  %tobool105 = icmp ne i32 %84, 0
  br i1 %tobool105, label %land.lhs.true.106, label %if.else.122

land.lhs.true.106:                                ; preds = %if.end.102
  %call107 = call i32* @__errno_location() #11
  %85 = load i32, i32* %call107, align 4, !tbaa !16
  %cmp108 = icmp eq i32 %85, 2
  br i1 %cmp108, label %if.then.110, label %if.else.122

if.then.110:                                      ; preds = %land.lhs.true.106
  %86 = load i8, i8* @OpMode, align 1, !tbaa !5
  %conv111 = sext i8 %86 to i32
  %cmp112 = icmp eq i32 %conv111, 100
  br i1 %cmp112, label %if.then.118, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %if.then.110
  %87 = load i8, i8* @OpMode, align 1, !tbaa !5
  %conv115 = sext i8 %87 to i32
  %cmp116 = icmp eq i32 %conv115, 68
  br i1 %cmp116, label %if.then.118, label %if.end.121

if.then.118:                                      ; preds = %lor.lhs.false.114, %if.then.110
  %88 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name119 = getelementptr inbounds %struct.milter, %struct.milter* %88, i32 0, i32 0
  %89 = load i8*, i8** %mf_name119, align 8, !tbaa !8
  %90 = load i8*, i8** %colon, align 8, !tbaa !1
  %call120 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* getelementptr inbounds ([0 x %struct.sm_file], [0 x %struct.sm_file]* @SmIoF, i32 0, i64 2), i32 -2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.83, i32 0, i32 0), i8* %89, i8* %90)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.118, %lor.lhs.false.114
  br label %if.end.162

if.else.122:                                      ; preds = %land.lhs.true.106, %if.end.102
  %call123 = call i32* @__errno_location() #11
  %91 = load i32, i32* %call123, align 4, !tbaa !16
  %cmp124 = icmp ne i32 %91, 0
  br i1 %cmp124, label %if.then.126, label %if.end.161

if.then.126:                                      ; preds = %if.else.122
  %call127 = call i32* @__errno_location() #11
  %92 = load i32, i32* %call127, align 4, !tbaa !16
  store i32 %92, i32* %save_errno, align 4, !tbaa !16
  %93 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv128 = zext i8 %93 to i32
  %cmp129 = icmp sge i32 %conv128, 5
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.135

land.lhs.true.131:                                ; preds = %if.then.126
  %94 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool132 = icmp ne i32 %94, 0
  br i1 %tobool132, label %if.end.135, label %if.then.133

if.then.133:                                      ; preds = %land.lhs.true.131
  %95 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name134 = getelementptr inbounds %struct.milter, %struct.milter* %95, i32 0, i32 0
  %96 = load i8*, i8** %mf_name134, align 8, !tbaa !8
  %97 = load i8*, i8** %colon, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0), i8* %96, i8* %97)
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %land.lhs.true.131, %if.then.126
  %98 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call136 = call i32* @__errno_location() #11
  store i32 %98, i32* %call136, align 4, !tbaa !16
  %99 = load i32, i32* %parseonly.addr, align 4, !tbaa !16
  %tobool137 = icmp ne i32 %99, 0
  br i1 %tobool137, label %if.then.138, label %if.else.153

if.then.138:                                      ; preds = %if.end.135
  %100 = load i8, i8* @OpMode, align 1, !tbaa !5
  %conv139 = sext i8 %100 to i32
  %cmp140 = icmp eq i32 %conv139, 100
  br i1 %cmp140, label %if.then.150, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %if.then.138
  %101 = load i8, i8* @OpMode, align 1, !tbaa !5
  %conv143 = sext i8 %101 to i32
  %cmp144 = icmp eq i32 %conv143, 68
  br i1 %cmp144, label %if.then.150, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %lor.lhs.false.142
  %102 = load i8, i8* @OpMode, align 1, !tbaa !5
  %conv147 = sext i8 %102 to i32
  %cmp148 = icmp eq i32 %conv147, 115
  br i1 %cmp148, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %lor.lhs.false.146, %lor.lhs.false.142, %if.then.138
  %103 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name151 = getelementptr inbounds %struct.milter, %struct.milter* %103, i32 0, i32 0
  %104 = load i8*, i8** %mf_name151, align 8, !tbaa !8
  %105 = load i8*, i8** %colon, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.85, i32 0, i32 0), i8* %104, i8* %105)
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %lor.lhs.false.146
  br label %if.end.160

if.else.153:                                      ; preds = %if.end.135
  %106 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp154 = icmp sgt i32 %106, 0
  br i1 %cmp154, label %if.then.156, label %if.end.159

if.then.156:                                      ; preds = %if.else.153
  %107 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id157 = getelementptr inbounds %struct.envelope, %struct.envelope* %107, i32 0, i32 25
  %108 = load i8*, i8** %e_id157, align 8, !tbaa !18
  %109 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name158 = getelementptr inbounds %struct.milter, %struct.milter* %109, i32 0, i32 0
  %110 = load i8*, i8** %mf_name158, align 8, !tbaa !8
  %111 = load i8*, i8** %colon, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %108, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.86, i32 0, i32 0), i8* %110, i8* %111)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.156, %if.else.153
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.152
  %112 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %113 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %112, %struct.envelope* %113)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.161:                                       ; preds = %if.else.122
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.end.121
  %sunix = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_un*
  %sun_path = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %sunix, i32 0, i32 1
  %arraydecay = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path, i32 0, i32 0
  %114 = load i8*, i8** %colon, align 8, !tbaa !1
  %call163 = call i64 @sm_strlcpy(i8* %arraydecay, i8* %114, i64 108)
  store i32 110, i32* %addrlen, align 4, !tbaa !16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.162, %if.end.160, %if.end.101
  %115 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.557 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.404

if.else.164:                                      ; preds = %if.end.71
  %sa165 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family166 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa165, i32 0, i32 0
  %116 = load i16, i16* %sa_family166, align 2, !tbaa !24
  %conv167 = zext i16 %116 to i32
  %cmp168 = icmp eq i32 %conv167, 2
  br i1 %cmp168, label %if.then.170, label %if.else.383

if.then.170:                                      ; preds = %if.else.164
  %117 = bitcast i16* %port to i8*
  call void @llvm.lifetime.start(i64 2, i8* %117) #1
  %118 = load i8*, i8** %colon, align 8, !tbaa !1
  %call171 = call i8* @strchr(i8* %118, i32 64) #1
  store i8* %call171, i8** %at, align 8, !tbaa !1
  %119 = load i8*, i8** %at, align 8, !tbaa !1
  %cmp172 = icmp eq i8* %119, null
  br i1 %cmp172, label %if.then.174, label %if.end.194

if.then.174:                                      ; preds = %if.then.170
  %120 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv175 = zext i8 %120 to i32
  %cmp176 = icmp sge i32 %conv175, 5
  br i1 %cmp176, label %land.lhs.true.178, label %if.end.182

land.lhs.true.178:                                ; preds = %if.then.174
  %121 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool179 = icmp ne i32 %121, 0
  br i1 %tobool179, label %if.end.182, label %if.then.180

if.then.180:                                      ; preds = %land.lhs.true.178
  %122 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name181 = getelementptr inbounds %struct.milter, %struct.milter* %122, i32 0, i32 0
  %123 = load i8*, i8** %mf_name181, align 8, !tbaa !8
  %124 = load i8*, i8** %colon, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.87, i32 0, i32 0), i8* %123, i8* %124)
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.180, %land.lhs.true.178, %if.then.174
  %125 = load i32, i32* %parseonly.addr, align 4, !tbaa !16
  %tobool183 = icmp ne i32 %125, 0
  br i1 %tobool183, label %if.then.184, label %if.else.186

if.then.184:                                      ; preds = %if.end.182
  %126 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name185 = getelementptr inbounds %struct.milter, %struct.milter* %126, i32 0, i32 0
  %127 = load i8*, i8** %mf_name185, align 8, !tbaa !8
  %128 = load i8*, i8** %colon, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.88, i32 0, i32 0), i8* %127, i8* %128)
  br label %if.end.193

if.else.186:                                      ; preds = %if.end.182
  %129 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp187 = icmp sgt i32 %129, 0
  br i1 %cmp187, label %if.then.189, label %if.end.192

if.then.189:                                      ; preds = %if.else.186
  %130 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id190 = getelementptr inbounds %struct.envelope, %struct.envelope* %130, i32 0, i32 25
  %131 = load i8*, i8** %e_id190, align 8, !tbaa !18
  %132 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name191 = getelementptr inbounds %struct.milter, %struct.milter* %132, i32 0, i32 0
  %133 = load i8*, i8** %mf_name191, align 8, !tbaa !8
  %134 = load i8*, i8** %colon, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %131, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.89, i32 0, i32 0), i8* %133, i8* %134)
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.189, %if.else.186
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.then.184
  %135 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %136 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %135, %struct.envelope* %136)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.380

if.end.194:                                       ; preds = %if.then.170
  %137 = load i8*, i8** %at, align 8, !tbaa !1
  store i8 0, i8* %137, align 1, !tbaa !5
  %138 = load i8*, i8** %colon, align 8, !tbaa !1
  %139 = load i8, i8* %138, align 1, !tbaa !5
  %conv195 = sext i8 %139 to i32
  %and = and i32 %conv195, -128
  %cmp196 = icmp eq i32 %and, 0
  br i1 %cmp196, label %land.lhs.true.198, label %if.else.208

land.lhs.true.198:                                ; preds = %if.end.194
  %140 = load i8*, i8** %colon, align 8, !tbaa !1
  %141 = load i8, i8* %140, align 1, !tbaa !5
  %conv199 = sext i8 %141 to i32
  %idxprom = sext i32 %conv199 to i64
  %call200 = call i16** @__ctype_b_loc() #11
  %142 = load i16*, i16** %call200, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds i16, i16* %142, i64 %idxprom
  %143 = load i16, i16* %arrayidx201, align 2, !tbaa !6
  %conv202 = zext i16 %143 to i32
  %and203 = and i32 %conv202, 2048
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %if.then.205, label %if.else.208

if.then.205:                                      ; preds = %land.lhs.true.198
  %144 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %144) #1
  %145 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %145) #1
  %146 = load i8*, i8** %colon, align 8, !tbaa !1
  %call206 = call i32 @atoi(i8* %146) #12
  %conv207 = trunc i32 %call206 to i16
  store i16 %conv207, i16* %__x, align 2, !tbaa !6
  %147 = load i16, i16* %__x, align 2, !tbaa !6
  %148 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %147) #11, !srcloc !26
  store i16 %148, i16* %__v, align 2, !tbaa !6
  %149 = load i16, i16* %__v, align 2, !tbaa !6
  store i16 %149, i16* %tmp, !tbaa !6
  %150 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %150) #1
  %151 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %151) #1
  %152 = load i16, i16* %tmp, !tbaa !6
  store i16 %152, i16* %port, align 2, !tbaa !6
  br label %if.end.240

if.else.208:                                      ; preds = %land.lhs.true.198, %if.end.194
  %153 = bitcast %struct.servent** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #1
  %154 = load i8*, i8** %colon, align 8, !tbaa !1
  %call210 = call %struct.servent* @getservbyname(i8* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0))
  store %struct.servent* %call210, %struct.servent** %sp, align 8, !tbaa !1
  %155 = load %struct.servent*, %struct.servent** %sp, align 8, !tbaa !1
  %cmp211 = icmp eq %struct.servent* %155, null
  br i1 %cmp211, label %if.then.213, label %if.end.235

if.then.213:                                      ; preds = %if.else.208
  %call214 = call i32* @__errno_location() #11
  %156 = load i32, i32* %call214, align 4, !tbaa !16
  store i32 %156, i32* %save_errno, align 4, !tbaa !16
  %157 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv215 = zext i8 %157 to i32
  %cmp216 = icmp sge i32 %conv215, 5
  br i1 %cmp216, label %land.lhs.true.218, label %if.end.222

land.lhs.true.218:                                ; preds = %if.then.213
  %158 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool219 = icmp ne i32 %158, 0
  br i1 %tobool219, label %if.end.222, label %if.then.220

if.then.220:                                      ; preds = %land.lhs.true.218
  %159 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name221 = getelementptr inbounds %struct.milter, %struct.milter* %159, i32 0, i32 0
  %160 = load i8*, i8** %mf_name221, align 8, !tbaa !8
  %161 = load i8*, i8** %colon, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.91, i32 0, i32 0), i8* %160, i8* %161)
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.220, %land.lhs.true.218, %if.then.213
  %162 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call223 = call i32* @__errno_location() #11
  store i32 %162, i32* %call223, align 4, !tbaa !16
  %163 = load i32, i32* %parseonly.addr, align 4, !tbaa !16
  %tobool224 = icmp ne i32 %163, 0
  br i1 %tobool224, label %if.then.225, label %if.else.227

if.then.225:                                      ; preds = %if.end.222
  %164 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name226 = getelementptr inbounds %struct.milter, %struct.milter* %164, i32 0, i32 0
  %165 = load i8*, i8** %mf_name226, align 8, !tbaa !8
  %166 = load i8*, i8** %colon, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.92, i32 0, i32 0), i8* %165, i8* %166)
  br label %if.end.234

if.else.227:                                      ; preds = %if.end.222
  %167 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp228 = icmp sgt i32 %167, 0
  br i1 %cmp228, label %if.then.230, label %if.end.233

if.then.230:                                      ; preds = %if.else.227
  %168 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id231 = getelementptr inbounds %struct.envelope, %struct.envelope* %168, i32 0, i32 25
  %169 = load i8*, i8** %e_id231, align 8, !tbaa !18
  %170 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name232 = getelementptr inbounds %struct.milter, %struct.milter* %170, i32 0, i32 0
  %171 = load i8*, i8** %mf_name232, align 8, !tbaa !8
  %172 = load i8*, i8** %colon, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %169, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.93, i32 0, i32 0), i8* %171, i8* %172)
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.230, %if.else.227
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.then.225
  %173 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %174 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %173, %struct.envelope* %174)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.237

if.end.235:                                       ; preds = %if.else.208
  %175 = load %struct.servent*, %struct.servent** %sp, align 8, !tbaa !1
  %s_port = getelementptr inbounds %struct.servent, %struct.servent* %175, i32 0, i32 2
  %176 = load i32, i32* %s_port, align 4, !tbaa !27
  %conv236 = trunc i32 %176 to i16
  store i16 %conv236, i16* %port, align 2, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.237

cleanup.237:                                      ; preds = %if.end.235, %if.end.234
  %177 = bitcast %struct.servent** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %cleanup.dest.238 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.238, label %cleanup.380 [
    i32 0, label %cleanup.cont.239
  ]

cleanup.cont.239:                                 ; preds = %cleanup.237
  br label %if.end.240

if.end.240:                                       ; preds = %cleanup.cont.239, %if.then.205
  %178 = load i8*, i8** %at, align 8, !tbaa !1
  %incdec.ptr241 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr241, i8** %at, align 8, !tbaa !1
  store i8 64, i8* %178, align 1, !tbaa !5
  %179 = load i8*, i8** %at, align 8, !tbaa !1
  %180 = load i8, i8* %179, align 1, !tbaa !5
  %conv242 = sext i8 %180 to i32
  %cmp243 = icmp eq i32 %conv242, 91
  br i1 %cmp243, label %if.then.245, label %if.else.318

if.then.245:                                      ; preds = %if.end.240
  %181 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #1
  %182 = load i8*, i8** %at, align 8, !tbaa !1
  %call247 = call i8* @strchr(i8* %182, i32 93) #1
  store i8* %call247, i8** %end, align 8, !tbaa !1
  %183 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp248 = icmp ne i8* %183, null
  br i1 %cmp248, label %if.then.250, label %if.else.294

if.then.250:                                      ; preds = %if.then.245
  %184 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #1
  store i32 0, i32* %found, align 4, !tbaa !16
  %185 = bitcast i64* %hid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %185) #1
  store i64 4294967295, i64* %hid, align 8, !tbaa !13
  %186 = load i8*, i8** %end, align 8, !tbaa !1
  store i8 0, i8* %186, align 1, !tbaa !5
  %sa253 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family254 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa253, i32 0, i32 0
  %187 = load i16, i16* %sa_family254, align 2, !tbaa !24
  %conv255 = zext i16 %187 to i32
  %cmp256 = icmp eq i32 %conv255, 2
  br i1 %cmp256, label %land.lhs.true.258, label %if.end.267

land.lhs.true.258:                                ; preds = %if.then.250
  %188 = load i8*, i8** %at, align 8, !tbaa !1
  %arrayidx259 = getelementptr inbounds i8, i8* %188, i64 1
  %call260 = call i32 @inet_addr(i8* %arrayidx259) #1
  %conv261 = zext i32 %call260 to i64
  store i64 %conv261, i64* %hid, align 8, !tbaa !13
  %cmp262 = icmp ne i64 %conv261, 4294967295
  br i1 %cmp262, label %if.then.264, label %if.end.267

if.then.264:                                      ; preds = %land.lhs.true.258
  %189 = load i64, i64* %hid, align 8, !tbaa !13
  %conv265 = trunc i64 %189 to i32
  %sin = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_in*
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 2
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  store i32 %conv265, i32* %s_addr, align 4, !tbaa !29
  %190 = load i16, i16* %port, align 2, !tbaa !6
  %sin266 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_in*
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin266, i32 0, i32 1
  store i16 %190, i16* %sin_port, align 2, !tbaa !32
  store i32 1, i32* %found, align 4, !tbaa !16
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.264, %land.lhs.true.258, %if.then.250
  %191 = load i8*, i8** %end, align 8, !tbaa !1
  store i8 93, i8* %191, align 1, !tbaa !5
  %192 = load i32, i32* %found, align 4, !tbaa !16
  %tobool268 = icmp ne i32 %192, 0
  br i1 %tobool268, label %if.end.289, label %if.then.269

if.then.269:                                      ; preds = %if.end.267
  %193 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv270 = zext i8 %193 to i32
  %cmp271 = icmp sge i32 %conv270, 5
  br i1 %cmp271, label %land.lhs.true.273, label %if.end.277

land.lhs.true.273:                                ; preds = %if.then.269
  %194 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool274 = icmp ne i32 %194, 0
  br i1 %tobool274, label %if.end.277, label %if.then.275

if.then.275:                                      ; preds = %land.lhs.true.273
  %195 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name276 = getelementptr inbounds %struct.milter, %struct.milter* %195, i32 0, i32 0
  %196 = load i8*, i8** %mf_name276, align 8, !tbaa !8
  %197 = load i8*, i8** %at, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i32 0, i32 0), i8* %196, i8* %197)
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.275, %land.lhs.true.273, %if.then.269
  %198 = load i32, i32* %parseonly.addr, align 4, !tbaa !16
  %tobool278 = icmp ne i32 %198, 0
  br i1 %tobool278, label %if.then.279, label %if.else.281

if.then.279:                                      ; preds = %if.end.277
  %199 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name280 = getelementptr inbounds %struct.milter, %struct.milter* %199, i32 0, i32 0
  %200 = load i8*, i8** %mf_name280, align 8, !tbaa !8
  %201 = load i8*, i8** %at, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.95, i32 0, i32 0), i8* %200, i8* %201)
  br label %if.end.288

if.else.281:                                      ; preds = %if.end.277
  %202 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp282 = icmp sgt i32 %202, 0
  br i1 %cmp282, label %if.then.284, label %if.end.287

if.then.284:                                      ; preds = %if.else.281
  %203 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id285 = getelementptr inbounds %struct.envelope, %struct.envelope* %203, i32 0, i32 25
  %204 = load i8*, i8** %e_id285, align 8, !tbaa !18
  %205 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name286 = getelementptr inbounds %struct.milter, %struct.milter* %205, i32 0, i32 0
  %206 = load i8*, i8** %mf_name286, align 8, !tbaa !8
  %207 = load i8*, i8** %at, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %204, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.96, i32 0, i32 0), i8* %206, i8* %207)
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.284, %if.else.281
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.then.279
  %208 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %209 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %208, %struct.envelope* %209)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.290

if.end.289:                                       ; preds = %if.end.267
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.290

cleanup.290:                                      ; preds = %if.end.289, %if.end.288
  %210 = bitcast i64* %hid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast i32* %found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %cleanup.dest.292 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.292, label %cleanup.315 [
    i32 0, label %cleanup.cont.293
  ]

cleanup.cont.293:                                 ; preds = %cleanup.290
  br label %if.end.314

if.else.294:                                      ; preds = %if.then.245
  %212 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv295 = zext i8 %212 to i32
  %cmp296 = icmp sge i32 %conv295, 5
  br i1 %cmp296, label %land.lhs.true.298, label %if.end.302

land.lhs.true.298:                                ; preds = %if.else.294
  %213 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool299 = icmp ne i32 %213, 0
  br i1 %tobool299, label %if.end.302, label %if.then.300

if.then.300:                                      ; preds = %land.lhs.true.298
  %214 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name301 = getelementptr inbounds %struct.milter, %struct.milter* %214, i32 0, i32 0
  %215 = load i8*, i8** %mf_name301, align 8, !tbaa !8
  %216 = load i8*, i8** %at, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i32 0, i32 0), i8* %215, i8* %216)
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.300, %land.lhs.true.298, %if.else.294
  %217 = load i32, i32* %parseonly.addr, align 4, !tbaa !16
  %tobool303 = icmp ne i32 %217, 0
  br i1 %tobool303, label %if.then.304, label %if.else.306

if.then.304:                                      ; preds = %if.end.302
  %218 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name305 = getelementptr inbounds %struct.milter, %struct.milter* %218, i32 0, i32 0
  %219 = load i8*, i8** %mf_name305, align 8, !tbaa !8
  %220 = load i8*, i8** %at, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.95, i32 0, i32 0), i8* %219, i8* %220)
  br label %if.end.313

if.else.306:                                      ; preds = %if.end.302
  %221 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp307 = icmp sgt i32 %221, 0
  br i1 %cmp307, label %if.then.309, label %if.end.312

if.then.309:                                      ; preds = %if.else.306
  %222 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id310 = getelementptr inbounds %struct.envelope, %struct.envelope* %222, i32 0, i32 25
  %223 = load i8*, i8** %e_id310, align 8, !tbaa !18
  %224 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name311 = getelementptr inbounds %struct.milter, %struct.milter* %224, i32 0, i32 0
  %225 = load i8*, i8** %mf_name311, align 8, !tbaa !8
  %226 = load i8*, i8** %at, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %223, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.96, i32 0, i32 0), i8* %225, i8* %226)
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.309, %if.else.306
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.312, %if.then.304
  %227 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %228 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %227, %struct.envelope* %228)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.315

if.end.314:                                       ; preds = %cleanup.cont.293
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.315

cleanup.315:                                      ; preds = %if.end.314, %if.end.313, %cleanup.290
  %229 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #1
  %cleanup.dest.316 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.316, label %cleanup.380 [
    i32 0, label %cleanup.cont.317
  ]

cleanup.cont.317:                                 ; preds = %cleanup.315
  br label %if.end.379

if.else.318:                                      ; preds = %if.end.240
  %230 = load i8*, i8** %at, align 8, !tbaa !1
  %sa319 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family320 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa319, i32 0, i32 0
  %231 = load i16, i16* %sa_family320, align 2, !tbaa !24
  %conv321 = zext i16 %231 to i32
  %call322 = call %struct.hostent* @sm_gethostbyname(i8* %230, i32 %conv321)
  store %struct.hostent* %call322, %struct.hostent** %hp, align 8, !tbaa !1
  %232 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %cmp323 = icmp eq %struct.hostent* %232, null
  br i1 %cmp323, label %if.then.325, label %if.end.347

if.then.325:                                      ; preds = %if.else.318
  %call326 = call i32* @__errno_location() #11
  %233 = load i32, i32* %call326, align 4, !tbaa !16
  store i32 %233, i32* %save_errno, align 4, !tbaa !16
  %234 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv327 = zext i8 %234 to i32
  %cmp328 = icmp sge i32 %conv327, 5
  br i1 %cmp328, label %land.lhs.true.330, label %if.end.334

land.lhs.true.330:                                ; preds = %if.then.325
  %235 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool331 = icmp ne i32 %235, 0
  br i1 %tobool331, label %if.end.334, label %if.then.332

if.then.332:                                      ; preds = %land.lhs.true.330
  %236 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name333 = getelementptr inbounds %struct.milter, %struct.milter* %236, i32 0, i32 0
  %237 = load i8*, i8** %mf_name333, align 8, !tbaa !8
  %238 = load i8*, i8** %at, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.97, i32 0, i32 0), i8* %237, i8* %238)
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.332, %land.lhs.true.330, %if.then.325
  %239 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call335 = call i32* @__errno_location() #11
  store i32 %239, i32* %call335, align 4, !tbaa !16
  %240 = load i32, i32* %parseonly.addr, align 4, !tbaa !16
  %tobool336 = icmp ne i32 %240, 0
  br i1 %tobool336, label %if.then.337, label %if.else.339

if.then.337:                                      ; preds = %if.end.334
  %241 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name338 = getelementptr inbounds %struct.milter, %struct.milter* %241, i32 0, i32 0
  %242 = load i8*, i8** %mf_name338, align 8, !tbaa !8
  %243 = load i8*, i8** %at, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.98, i32 0, i32 0), i8* %242, i8* %243)
  br label %if.end.346

if.else.339:                                      ; preds = %if.end.334
  %244 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp340 = icmp sgt i32 %244, 0
  br i1 %cmp340, label %if.then.342, label %if.end.345

if.then.342:                                      ; preds = %if.else.339
  %245 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id343 = getelementptr inbounds %struct.envelope, %struct.envelope* %245, i32 0, i32 25
  %246 = load i8*, i8** %e_id343, align 8, !tbaa !18
  %247 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name344 = getelementptr inbounds %struct.milter, %struct.milter* %247, i32 0, i32 0
  %248 = load i8*, i8** %mf_name344, align 8, !tbaa !8
  %249 = load i8*, i8** %at, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %246, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.99, i32 0, i32 0), i8* %248, i8* %249)
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.342, %if.else.339
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.345, %if.then.337
  %250 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %251 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %250, %struct.envelope* %251)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.380

if.end.347:                                       ; preds = %if.else.318
  %252 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addrtype = getelementptr inbounds %struct.hostent, %struct.hostent* %252, i32 0, i32 2
  %253 = load i32, i32* %h_addrtype, align 4, !tbaa !33
  %conv348 = trunc i32 %253 to i16
  %sa349 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family350 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa349, i32 0, i32 0
  store i16 %conv348, i16* %sa_family350, align 2, !tbaa !24
  %254 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addrtype351 = getelementptr inbounds %struct.hostent, %struct.hostent* %254, i32 0, i32 2
  %255 = load i32, i32* %h_addrtype351, align 4, !tbaa !33
  switch i32 %255, label %sw.default [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.347
  %sin352 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_in*
  %sin_addr353 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin352, i32 0, i32 2
  %256 = bitcast %struct.in_addr* %sin_addr353 to i8*
  %257 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addr_list = getelementptr inbounds %struct.hostent, %struct.hostent* %257, i32 0, i32 4
  %258 = load i8**, i8*** %h_addr_list, align 8, !tbaa !35
  %arrayidx354 = getelementptr inbounds i8*, i8** %258, i64 0
  %259 = load i8*, i8** %arrayidx354, align 8, !tbaa !1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %256, i8* %259, i64 4, i32 1, i1 false)
  %260 = load i16, i16* %port, align 2, !tbaa !6
  %sin355 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_in*
  %sin_port356 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin355, i32 0, i32 1
  store i16 %260, i16* %sin_port356, align 2, !tbaa !32
  store i32 16, i32* %addrlen, align 4, !tbaa !16
  store i32 1, i32* %addrno, align 4, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.347
  %261 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv357 = zext i8 %261 to i32
  %cmp358 = icmp sge i32 %conv357, 5
  br i1 %cmp358, label %land.lhs.true.360, label %if.end.365

land.lhs.true.360:                                ; preds = %sw.default
  %262 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool361 = icmp ne i32 %262, 0
  br i1 %tobool361, label %if.end.365, label %if.then.362

if.then.362:                                      ; preds = %land.lhs.true.360
  %263 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name363 = getelementptr inbounds %struct.milter, %struct.milter* %263, i32 0, i32 0
  %264 = load i8*, i8** %mf_name363, align 8, !tbaa !8
  %265 = load i8*, i8** %at, align 8, !tbaa !1
  %266 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addrtype364 = getelementptr inbounds %struct.hostent, %struct.hostent* %266, i32 0, i32 2
  %267 = load i32, i32* %h_addrtype364, align 4, !tbaa !33
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.100, i32 0, i32 0), i8* %264, i8* %265, i32 %267)
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.362, %land.lhs.true.360, %sw.default
  %268 = load i32, i32* %parseonly.addr, align 4, !tbaa !16
  %tobool366 = icmp ne i32 %268, 0
  br i1 %tobool366, label %if.then.367, label %if.else.370

if.then.367:                                      ; preds = %if.end.365
  %269 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name368 = getelementptr inbounds %struct.milter, %struct.milter* %269, i32 0, i32 0
  %270 = load i8*, i8** %mf_name368, align 8, !tbaa !8
  %271 = load i8*, i8** %at, align 8, !tbaa !1
  %272 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addrtype369 = getelementptr inbounds %struct.hostent, %struct.hostent* %272, i32 0, i32 2
  %273 = load i32, i32* %h_addrtype369, align 4, !tbaa !33
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.101, i32 0, i32 0), i8* %270, i8* %271, i32 %273)
  br label %if.end.378

if.else.370:                                      ; preds = %if.end.365
  %274 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp371 = icmp sgt i32 %274, 0
  br i1 %cmp371, label %if.then.373, label %if.end.377

if.then.373:                                      ; preds = %if.else.370
  %275 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id374 = getelementptr inbounds %struct.envelope, %struct.envelope* %275, i32 0, i32 25
  %276 = load i8*, i8** %e_id374, align 8, !tbaa !18
  %277 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name375 = getelementptr inbounds %struct.milter, %struct.milter* %277, i32 0, i32 0
  %278 = load i8*, i8** %mf_name375, align 8, !tbaa !8
  %279 = load i8*, i8** %at, align 8, !tbaa !1
  %280 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addrtype376 = getelementptr inbounds %struct.hostent, %struct.hostent* %280, i32 0, i32 2
  %281 = load i32, i32* %h_addrtype376, align 4, !tbaa !33
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %276, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.102, i32 0, i32 0), i8* %278, i8* %279, i32 %281)
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.373, %if.else.370
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.377, %if.then.367
  %282 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %283 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %282, %struct.envelope* %283)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.380

sw.epilog:                                        ; preds = %sw.bb
  br label %if.end.379

if.end.379:                                       ; preds = %sw.epilog, %cleanup.cont.317
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.380

cleanup.380:                                      ; preds = %if.end.379, %if.end.378, %if.end.346, %cleanup.315, %cleanup.237, %if.end.193
  %284 = bitcast i16* %port to i8*
  call void @llvm.lifetime.end(i64 2, i8* %284) #1
  %cleanup.dest.381 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.381, label %cleanup.557 [
    i32 0, label %cleanup.cont.382
  ]

cleanup.cont.382:                                 ; preds = %cleanup.380
  br label %if.end.403

if.else.383:                                      ; preds = %if.else.164
  %285 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv384 = zext i8 %285 to i32
  %cmp385 = icmp sge i32 %conv384, 5
  br i1 %cmp385, label %land.lhs.true.387, label %if.end.391

land.lhs.true.387:                                ; preds = %if.else.383
  %286 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool388 = icmp ne i32 %286, 0
  br i1 %tobool388, label %if.end.391, label %if.then.389

if.then.389:                                      ; preds = %land.lhs.true.387
  %287 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name390 = getelementptr inbounds %struct.milter, %struct.milter* %287, i32 0, i32 0
  %288 = load i8*, i8** %mf_name390, align 8, !tbaa !8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.103, i32 0, i32 0), i8* %288)
  br label %if.end.391

if.end.391:                                       ; preds = %if.then.389, %land.lhs.true.387, %if.else.383
  %289 = load i32, i32* %parseonly.addr, align 4, !tbaa !16
  %tobool392 = icmp ne i32 %289, 0
  br i1 %tobool392, label %if.then.393, label %if.else.395

if.then.393:                                      ; preds = %if.end.391
  %290 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name394 = getelementptr inbounds %struct.milter, %struct.milter* %290, i32 0, i32 0
  %291 = load i8*, i8** %mf_name394, align 8, !tbaa !8
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.104, i32 0, i32 0), i8* %291)
  br label %if.end.402

if.else.395:                                      ; preds = %if.end.391
  %292 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp396 = icmp sgt i32 %292, 0
  br i1 %cmp396, label %if.then.398, label %if.end.401

if.then.398:                                      ; preds = %if.else.395
  %293 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id399 = getelementptr inbounds %struct.envelope, %struct.envelope* %293, i32 0, i32 25
  %294 = load i8*, i8** %e_id399, align 8, !tbaa !18
  %295 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name400 = getelementptr inbounds %struct.milter, %struct.milter* %295, i32 0, i32 0
  %296 = load i8*, i8** %mf_name400, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %294, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.105, i32 0, i32 0), i8* %296)
  br label %if.end.401

if.end.401:                                       ; preds = %if.then.398, %if.else.395
  br label %if.end.402

if.end.402:                                       ; preds = %if.end.401, %if.then.393
  %297 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %298 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %297, %struct.envelope* %298)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.557

if.end.403:                                       ; preds = %cleanup.cont.382
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.403, %cleanup.cont
  %299 = load i32, i32* %parseonly.addr, align 4, !tbaa !16
  %tobool405 = icmp ne i32 %299, 0
  br i1 %tobool405, label %if.then.406, label %if.end.407

if.then.406:                                      ; preds = %if.end.404
  %300 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %300, i32 0, i32 7
  store i8 82, i8* %mf_state, align 1, !tbaa !11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.557

if.end.407:                                       ; preds = %if.end.404
  %301 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state408 = getelementptr inbounds %struct.milter, %struct.milter* %301, i32 0, i32 7
  %302 = load i8, i8* %mf_state408, align 1, !tbaa !11
  %conv409 = sext i8 %302 to i32
  %cmp410 = icmp ne i32 %conv409, 82
  br i1 %cmp410, label %land.lhs.true.412, label %if.end.428

land.lhs.true.412:                                ; preds = %if.end.407
  %303 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state413 = getelementptr inbounds %struct.milter, %struct.milter* %303, i32 0, i32 7
  %304 = load i8, i8* %mf_state413, align 1, !tbaa !11
  %conv414 = sext i8 %304 to i32
  %cmp415 = icmp ne i32 %conv414, 67
  br i1 %cmp415, label %if.then.417, label %if.end.428

if.then.417:                                      ; preds = %land.lhs.true.412
  %305 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv418 = zext i8 %305 to i32
  %cmp419 = icmp sge i32 %conv418, 1
  br i1 %cmp419, label %land.lhs.true.421, label %if.end.427

land.lhs.true.421:                                ; preds = %if.then.417
  %306 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool422 = icmp ne i32 %306, 0
  br i1 %tobool422, label %if.end.427, label %if.then.423

if.then.423:                                      ; preds = %land.lhs.true.421
  %307 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name424 = getelementptr inbounds %struct.milter, %struct.milter* %307, i32 0, i32 0
  %308 = load i8*, i8** %mf_name424, align 8, !tbaa !8
  %309 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state425 = getelementptr inbounds %struct.milter, %struct.milter* %309, i32 0, i32 7
  %310 = load i8, i8* %mf_state425, align 1, !tbaa !11
  %conv426 = sext i8 %310 to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.106, i32 0, i32 0), i8* %308, i32 %conv426)
  br label %if.end.427

if.end.427:                                       ; preds = %if.then.423, %land.lhs.true.421, %if.then.417
  %311 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %312 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %311, %struct.envelope* %312)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.557

if.end.428:                                       ; preds = %land.lhs.true.412, %if.end.407
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog.538, %if.end.428
  %sa429 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family430 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa429, i32 0, i32 0
  %313 = load i16, i16* %sa_family430, align 2, !tbaa !24
  %conv431 = zext i16 %313 to i32
  %call432 = call i32 @socket(i32 %conv431, i32 1, i32 0) #1
  store i32 %call432, i32* %sock, align 4, !tbaa !16
  %314 = load i32, i32* %sock, align 4, !tbaa !16
  %cmp433 = icmp slt i32 %314, 0
  br i1 %cmp433, label %if.then.435, label %if.end.453

if.then.435:                                      ; preds = %for.cond
  %call436 = call i32* @__errno_location() #11
  %315 = load i32, i32* %call436, align 4, !tbaa !16
  store i32 %315, i32* %save_errno, align 4, !tbaa !16
  %316 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv437 = zext i8 %316 to i32
  %cmp438 = icmp sge i32 %conv437, 5
  br i1 %cmp438, label %land.lhs.true.440, label %if.end.445

land.lhs.true.440:                                ; preds = %if.then.435
  %317 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool441 = icmp ne i32 %317, 0
  br i1 %tobool441, label %if.end.445, label %if.then.442

if.then.442:                                      ; preds = %land.lhs.true.440
  %318 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name443 = getelementptr inbounds %struct.milter, %struct.milter* %318, i32 0, i32 0
  %319 = load i8*, i8** %mf_name443, align 8, !tbaa !8
  %320 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call444 = call i8* @sm_errstring(i32 %320)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.107, i32 0, i32 0), i8* %319, i8* %call444)
  br label %if.end.445

if.end.445:                                       ; preds = %if.then.442, %land.lhs.true.440, %if.then.435
  %321 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp446 = icmp sgt i32 %321, 0
  br i1 %cmp446, label %if.then.448, label %if.end.452

if.then.448:                                      ; preds = %if.end.445
  %322 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id449 = getelementptr inbounds %struct.envelope, %struct.envelope* %322, i32 0, i32 25
  %323 = load i8*, i8** %e_id449, align 8, !tbaa !18
  %324 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name450 = getelementptr inbounds %struct.milter, %struct.milter* %324, i32 0, i32 0
  %325 = load i8*, i8** %mf_name450, align 8, !tbaa !8
  %326 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call451 = call i8* @sm_errstring(i32 %326)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %323, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.108, i32 0, i32 0), i8* %325, i8* %call451)
  br label %if.end.452

if.end.452:                                       ; preds = %if.then.448, %if.end.445
  %327 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %328 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %327, %struct.envelope* %328)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.557

if.end.453:                                       ; preds = %for.cond
  %call454 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @MilterConnectTimeout, i32 0, i32 0), i32 1) #13
  %cmp455 = icmp eq i32 %call454, 0
  br i1 %cmp455, label %if.then.457, label %if.end.484

if.then.457:                                      ; preds = %if.end.453
  %329 = bitcast %struct.sm_event** %ev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %329) #1
  store %struct.sm_event* null, %struct.sm_event** %ev, align 8, !tbaa !1
  %330 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %330) #1
  %331 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_timeout = getelementptr inbounds %struct.milter, %struct.milter* %331, i32 0, i32 10
  %arrayidx460 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout, i32 0, i64 3
  %332 = load i64, i64* %arrayidx460, align 8, !tbaa !13
  %cmp461 = icmp sgt i64 %332, 0
  br i1 %cmp461, label %if.then.463, label %if.end.468

if.then.463:                                      ; preds = %if.then.457
  %333 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_timeout464 = getelementptr inbounds %struct.milter, %struct.milter* %333, i32 0, i32 10
  %arrayidx465 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout464, i32 0, i64 3
  %334 = load i64, i64* %arrayidx465, align 8, !tbaa !13
  %mul = mul nsw i64 %334, 1000
  %conv466 = trunc i64 %mul to i32
  %call467 = call %struct.sm_event* @sm_seteventm(i32 %conv466, void (i32)* @milter_connect_timeout, i32 0)
  store %struct.sm_event* %call467, %struct.sm_event** %ev, align 8, !tbaa !1
  br label %if.end.468

if.end.468:                                       ; preds = %if.then.463, %if.then.457
  %335 = load i32, i32* %sock, align 4, !tbaa !16
  %336 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %337 = load i32, i32* %addrlen, align 4, !tbaa !16
  %call469 = call i32 @connect(i32 %335, %struct.sockaddr* %336, i32 %337)
  store i32 %call469, i32* %i, align 4, !tbaa !16
  %call470 = call i32* @__errno_location() #11
  %338 = load i32, i32* %call470, align 4, !tbaa !16
  store i32 %338, i32* %save_errno, align 4, !tbaa !16
  %339 = load %struct.sm_event*, %struct.sm_event** %ev, align 8, !tbaa !1
  %cmp471 = icmp ne %struct.sm_event* %339, null
  br i1 %cmp471, label %if.then.473, label %if.end.474

if.then.473:                                      ; preds = %if.end.468
  %340 = load %struct.sm_event*, %struct.sm_event** %ev, align 8, !tbaa !1
  call void @sm_clrevent(%struct.sm_event* %340)
  br label %if.end.474

if.end.474:                                       ; preds = %if.then.473, %if.end.468
  %341 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call475 = call i32* @__errno_location() #11
  store i32 %341, i32* %call475, align 4, !tbaa !16
  %342 = load i32, i32* %i, align 4, !tbaa !16
  %cmp476 = icmp sge i32 %342, 0
  br i1 %cmp476, label %if.then.478, label %if.end.479

if.then.478:                                      ; preds = %if.end.474
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.480

if.end.479:                                       ; preds = %if.end.474
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.480

cleanup.480:                                      ; preds = %if.end.479, %if.then.478
  %343 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %343) #1
  %344 = bitcast %struct.sm_event** %ev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %344) #1
  %cleanup.dest.482 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.482, label %unreachable [
    i32 0, label %cleanup.cont.483
    i32 3, label %for.end
  ]

cleanup.cont.483:                                 ; preds = %cleanup.480
  br label %if.end.484

if.end.484:                                       ; preds = %cleanup.cont.483, %if.end.453
  %call485 = call i32* @__errno_location() #11
  %345 = load i32, i32* %call485, align 4, !tbaa !16
  store i32 %345, i32* %save_errno, align 4, !tbaa !16
  %346 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  store i8* %346, i8** %p, align 8, !tbaa !1
  %347 = load i8*, i8** %at, align 8, !tbaa !1
  store i8* %347, i8** @CurHostName, align 8, !tbaa !1
  %348 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv486 = zext i8 %348 to i32
  %cmp487 = icmp sge i32 %conv486, 5
  br i1 %cmp487, label %land.lhs.true.489, label %if.end.494

land.lhs.true.489:                                ; preds = %if.end.484
  %349 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool490 = icmp ne i32 %349, 0
  br i1 %tobool490, label %if.end.494, label %if.then.491

if.then.491:                                      ; preds = %land.lhs.true.489
  %350 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name492 = getelementptr inbounds %struct.milter, %struct.milter* %350, i32 0, i32 0
  %351 = load i8*, i8** %mf_name492, align 8, !tbaa !8
  %352 = load i8*, i8** %at, align 8, !tbaa !1
  %353 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call493 = call i8* @sm_errstring(i32 %353)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.109, i32 0, i32 0), i8* %351, i8* %352, i8* %call493)
  br label %if.end.494

if.end.494:                                       ; preds = %if.then.491, %land.lhs.true.489, %if.end.484
  %354 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp495 = icmp sgt i32 %354, 13
  br i1 %cmp495, label %if.then.497, label %if.end.501

if.then.497:                                      ; preds = %if.end.494
  %355 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id498 = getelementptr inbounds %struct.envelope, %struct.envelope* %355, i32 0, i32 25
  %356 = load i8*, i8** %e_id498, align 8, !tbaa !18
  %357 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name499 = getelementptr inbounds %struct.milter, %struct.milter* %357, i32 0, i32 0
  %358 = load i8*, i8** %mf_name499, align 8, !tbaa !8
  %359 = load i8*, i8** %at, align 8, !tbaa !1
  %360 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call500 = call i8* @sm_errstring(i32 %360)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %356, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.110, i32 0, i32 0), i8* %358, i8* %359, i8* %call500)
  br label %if.end.501

if.end.501:                                       ; preds = %if.then.497, %if.end.494
  %361 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %361, i8** @CurHostName, align 8, !tbaa !1
  %362 = load i32, i32* %sock, align 4, !tbaa !16
  %call502 = call i32 @close(i32 %362)
  %363 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %cmp503 = icmp ne %struct.hostent* %363, null
  br i1 %cmp503, label %land.lhs.true.505, label %if.end.539

land.lhs.true.505:                                ; preds = %if.end.501
  %364 = load i32, i32* %addrno, align 4, !tbaa !16
  %idxprom506 = sext i32 %364 to i64
  %365 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addr_list507 = getelementptr inbounds %struct.hostent, %struct.hostent* %365, i32 0, i32 4
  %366 = load i8**, i8*** %h_addr_list507, align 8, !tbaa !35
  %arrayidx508 = getelementptr inbounds i8*, i8** %366, i64 %idxprom506
  %367 = load i8*, i8** %arrayidx508, align 8, !tbaa !1
  %cmp509 = icmp ne i8* %367, null
  br i1 %cmp509, label %if.then.511, label %if.end.539

if.then.511:                                      ; preds = %land.lhs.true.505
  %sa512 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family513 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa512, i32 0, i32 0
  %368 = load i16, i16* %sa_family513, align 2, !tbaa !24
  %conv514 = zext i16 %368 to i32
  switch i32 %conv514, label %sw.default.521 [
    i32 2, label %sw.bb.515
  ]

sw.bb.515:                                        ; preds = %if.then.511
  %sin516 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_in*
  %sin_addr517 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin516, i32 0, i32 2
  %369 = bitcast %struct.in_addr* %sin_addr517 to i8*
  %370 = load i32, i32* %addrno, align 4, !tbaa !16
  %inc = add nsw i32 %370, 1
  store i32 %inc, i32* %addrno, align 4, !tbaa !16
  %idxprom518 = sext i32 %370 to i64
  %371 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addr_list519 = getelementptr inbounds %struct.hostent, %struct.hostent* %371, i32 0, i32 4
  %372 = load i8**, i8*** %h_addr_list519, align 8, !tbaa !35
  %arrayidx520 = getelementptr inbounds i8*, i8** %372, i64 %idxprom518
  %373 = load i8*, i8** %arrayidx520, align 8, !tbaa !1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %369, i8* %373, i64 4, i32 1, i1 false)
  br label %sw.epilog.538

sw.default.521:                                   ; preds = %if.then.511
  %374 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv522 = zext i8 %374 to i32
  %cmp523 = icmp sge i32 %conv522, 5
  br i1 %cmp523, label %land.lhs.true.525, label %if.end.530

land.lhs.true.525:                                ; preds = %sw.default.521
  %375 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool526 = icmp ne i32 %375, 0
  br i1 %tobool526, label %if.end.530, label %if.then.527

if.then.527:                                      ; preds = %land.lhs.true.525
  %376 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name528 = getelementptr inbounds %struct.milter, %struct.milter* %376, i32 0, i32 0
  %377 = load i8*, i8** %mf_name528, align 8, !tbaa !8
  %378 = load i8*, i8** %at, align 8, !tbaa !1
  %379 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addrtype529 = getelementptr inbounds %struct.hostent, %struct.hostent* %379, i32 0, i32 2
  %380 = load i32, i32* %h_addrtype529, align 4, !tbaa !33
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.100, i32 0, i32 0), i8* %377, i8* %378, i32 %380)
  br label %if.end.530

if.end.530:                                       ; preds = %if.then.527, %land.lhs.true.525, %sw.default.521
  %381 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp531 = icmp sgt i32 %381, 0
  br i1 %cmp531, label %if.then.533, label %if.end.537

if.then.533:                                      ; preds = %if.end.530
  %382 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id534 = getelementptr inbounds %struct.envelope, %struct.envelope* %382, i32 0, i32 25
  %383 = load i8*, i8** %e_id534, align 8, !tbaa !18
  %384 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name535 = getelementptr inbounds %struct.milter, %struct.milter* %384, i32 0, i32 0
  %385 = load i8*, i8** %mf_name535, align 8, !tbaa !8
  %386 = load i8*, i8** %at, align 8, !tbaa !1
  %387 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addrtype536 = getelementptr inbounds %struct.hostent, %struct.hostent* %387, i32 0, i32 2
  %388 = load i32, i32* %h_addrtype536, align 4, !tbaa !33
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %383, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.102, i32 0, i32 0), i8* %385, i8* %386, i32 %388)
  br label %if.end.537

if.end.537:                                       ; preds = %if.then.533, %if.end.530
  %389 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %390 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %389, %struct.envelope* %390)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.557

sw.epilog.538:                                    ; preds = %sw.bb.515
  br label %for.cond

if.end.539:                                       ; preds = %land.lhs.true.505, %if.end.501
  %391 = load i8*, i8** @CurHostName, align 8, !tbaa !1
  store i8* %391, i8** %p, align 8, !tbaa !1
  %392 = load i8*, i8** %at, align 8, !tbaa !1
  store i8* %392, i8** @CurHostName, align 8, !tbaa !1
  %393 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv540 = zext i8 %393 to i32
  %cmp541 = icmp sge i32 %conv540, 5
  br i1 %cmp541, label %land.lhs.true.543, label %if.end.548

land.lhs.true.543:                                ; preds = %if.end.539
  %394 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool544 = icmp ne i32 %394, 0
  br i1 %tobool544, label %if.end.548, label %if.then.545

if.then.545:                                      ; preds = %land.lhs.true.543
  %395 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name546 = getelementptr inbounds %struct.milter, %struct.milter* %395, i32 0, i32 0
  %396 = load i8*, i8** %mf_name546, align 8, !tbaa !8
  %397 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call547 = call i8* @sm_errstring(i32 %397)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.111, i32 0, i32 0), i8* %396, i8* %call547)
  br label %if.end.548

if.end.548:                                       ; preds = %if.then.545, %land.lhs.true.543, %if.end.539
  %398 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp549 = icmp sgt i32 %398, 0
  br i1 %cmp549, label %if.then.551, label %if.end.555

if.then.551:                                      ; preds = %if.end.548
  %399 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id552 = getelementptr inbounds %struct.envelope, %struct.envelope* %399, i32 0, i32 25
  %400 = load i8*, i8** %e_id552, align 8, !tbaa !18
  %401 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name553 = getelementptr inbounds %struct.milter, %struct.milter* %401, i32 0, i32 0
  %402 = load i8*, i8** %mf_name553, align 8, !tbaa !8
  %403 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call554 = call i8* @sm_errstring(i32 %403)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %400, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.112, i32 0, i32 0), i8* %402, i8* %call554)
  br label %if.end.555

if.end.555:                                       ; preds = %if.then.551, %if.end.548
  %404 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %404, i8** @CurHostName, align 8, !tbaa !1
  %405 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %406 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %405, %struct.envelope* %406)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.557

for.end:                                          ; preds = %cleanup.480
  %407 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state556 = getelementptr inbounds %struct.milter, %struct.milter* %407, i32 0, i32 7
  store i8 79, i8* %mf_state556, align 1, !tbaa !11
  %408 = load i32, i32* %sock, align 4, !tbaa !16
  store i32 %408, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.557

cleanup.557:                                      ; preds = %for.end, %if.end.555, %if.end.537, %if.end.452, %if.end.427, %if.then.406, %if.end.402, %cleanup.380, %cleanup, %if.end.64, %if.end.16
  %409 = bitcast %union.bigsockaddr* %addr to i8*
  call void @llvm.lifetime.end(i64 112, i8* %409) #1
  %410 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %410) #1
  %411 = bitcast i8** %at to i8*
  call void @llvm.lifetime.end(i64 8, i8* %411) #1
  %412 = bitcast i8** %colon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %412) #1
  %413 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %413) #1
  %414 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %414) #1
  %415 = bitcast i32* %addrno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %415) #1
  %416 = bitcast i32* %addrlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %416) #1
  %417 = bitcast i32* %sock to i8*
  call void @llvm.lifetime.end(i64 4, i8* %417) #1
  %418 = load i32, i32* %retval
  ret i32 %418

unreachable:                                      ; preds = %cleanup.480
  unreachable
}

declare %struct.symtab* @stab(i8*, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @milter_config(i8* %spec, %struct.milter** %list, i32 %max) #0 {
entry:
  %spec.addr = alloca i8*, align 8
  %list.addr = alloca %struct.milter**, align 8
  %max.addr = alloca i32, align 4
  %numitems = alloca i32, align 4
  %p = alloca i8*, align 8
  %s = alloca %struct.symtab*, align 8
  %cleanup.dest.slot = alloca i32
  %__a0 = alloca i8, align 1
  %__a1 = alloca i8, align 1
  %__a2 = alloca i8, align 1
  %tmp = alloca i8*, align 8
  store i8* %spec, i8** %spec.addr, align 8, !tbaa !1
  store %struct.milter** %list, %struct.milter*** %list.addr, align 8, !tbaa !1
  store i32 %max, i32* %max.addr, align 4, !tbaa !16
  %0 = bitcast i32* %numitems to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %numitems, align 4, !tbaa !16
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %max.addr, align 4, !tbaa !16
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %max.addr, align 4, !tbaa !16
  %3 = load i8*, i8** %spec.addr, align 8, !tbaa !1
  store i8* %3, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %entry
  %4 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %6 = load i8*, i8** %p, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !5
  %conv = sext i8 %7 to i32
  %and = and i32 %conv, -128
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !5
  %conv3 = sext i8 %9 to i32
  %idxprom = sext i32 %conv3 to i64
  %call = call i16** @__ctype_b_loc() #11
  %10 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2, !tbaa !6
  %conv4 = zext i16 %11 to i32
  %and5 = and i32 %conv4, 8192
  %tobool = icmp ne i32 %and5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !5
  %conv6 = sext i8 %15 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.end
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %16, i8** %spec.addr, align 8, !tbaa !1
  %17 = load i32, i32* %numitems, align 4, !tbaa !16
  %18 = load i32, i32* %max.addr, align 4, !tbaa !16
  %cmp9 = icmp sge i32 %17, %18
  br i1 %cmp9, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.end
  %19 = load i32, i32* %max.addr, align 4, !tbaa !16
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i32 0, i32 0), i32 %19)
  %20 = load i32, i32* %max.addr, align 4, !tbaa !16
  %cmp12 = icmp sgt i32 %20, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.then.11
  %21 = load %struct.milter**, %struct.milter*** %list.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.milter*, %struct.milter** %21, i64 0
  store %struct.milter* null, %struct.milter** %arrayidx15, align 8, !tbaa !1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.then.11
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end
  call void @llvm.lifetime.start(i64 1, i8* %__a0) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a2) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.6 to i64)), i64 1), label %cond.true, label %cond.false.53

cond.true:                                        ; preds = %if.end.17
  %22 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), align 1, !tbaa !5
  store i8 %22, i8* %__a0, align 1, !tbaa !5
  %23 = load i8, i8* %__a0, align 1, !tbaa !5
  %conv18 = sext i8 %23 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %cond.true.21, label %cond.false

cond.true.21:                                     ; preds = %cond.true
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  br label %cond.end.51

cond.false:                                       ; preds = %cond.true
  %25 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i64 1), align 1, !tbaa !5
  store i8 %25, i8* %__a1, align 1, !tbaa !5
  %26 = load i8, i8* %__a1, align 1, !tbaa !5
  %conv22 = sext i8 %26 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %cond.true.25, label %cond.false.28

cond.true.25:                                     ; preds = %cond.false
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %28 = load i8, i8* %__a0, align 1, !tbaa !5
  %conv26 = sext i8 %28 to i32
  %call27 = call i8* @strchr(i8* %27, i32 %conv26) #1
  br label %cond.end.49

cond.false.28:                                    ; preds = %cond.false
  %29 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i64 2), align 1, !tbaa !5
  store i8 %29, i8* %__a2, align 1, !tbaa !5
  %30 = load i8, i8* %__a2, align 1, !tbaa !5
  %conv29 = sext i8 %30 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %cond.true.32, label %cond.false.36

cond.true.32:                                     ; preds = %cond.false.28
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %32 = load i8, i8* %__a0, align 1, !tbaa !5
  %conv33 = sext i8 %32 to i32
  %33 = load i8, i8* %__a1, align 1, !tbaa !5
  %conv34 = sext i8 %33 to i32
  %call35 = call i8* @__strpbrk_c2(i8* %31, i32 %conv33, i32 %conv34)
  br label %cond.end.47

cond.false.36:                                    ; preds = %cond.false.28
  %34 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i64 3), align 1, !tbaa !5
  %conv37 = sext i8 %34 to i32
  %cmp38 = icmp eq i32 %conv37, 0
  br i1 %cmp38, label %cond.true.40, label %cond.false.45

cond.true.40:                                     ; preds = %cond.false.36
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %36 = load i8, i8* %__a0, align 1, !tbaa !5
  %conv41 = sext i8 %36 to i32
  %37 = load i8, i8* %__a1, align 1, !tbaa !5
  %conv42 = sext i8 %37 to i32
  %38 = load i8, i8* %__a2, align 1, !tbaa !5
  %conv43 = sext i8 %38 to i32
  %call44 = call i8* @__strpbrk_c3(i8* %35, i32 %conv41, i32 %conv42, i32 %conv43)
  br label %cond.end

cond.false.45:                                    ; preds = %cond.false.36
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %call46 = call i8* @strpbrk(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.45, %cond.true.40
  %cond = phi i8* [ %call44, %cond.true.40 ], [ %call46, %cond.false.45 ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end, %cond.true.32
  %cond48 = phi i8* [ %call35, %cond.true.32 ], [ %cond, %cond.end ]
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.end.47, %cond.true.25
  %cond50 = phi i8* [ %call27, %cond.true.25 ], [ %cond48, %cond.end.47 ]
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.end.49, %cond.true.21
  %cond52 = phi i8* [ null, %cond.true.21 ], [ %cond50, %cond.end.49 ]
  br label %cond.end.55

cond.false.53:                                    ; preds = %if.end.17
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %call54 = call i8* @strpbrk(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)) #1
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.53, %cond.end.51
  %cond56 = phi i8* [ %cond52, %cond.end.51 ], [ %call54, %cond.false.53 ]
  store i8* %cond56, i8** %tmp, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %__a2) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a0) #1
  %41 = load i8*, i8** %tmp, !tbaa !1
  store i8* %41, i8** %p, align 8, !tbaa !1
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp57 = icmp ne i8* %42, null
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %cond.end.55
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr60, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %43, align 1, !tbaa !5
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %cond.end.55
  %44 = load i8*, i8** %spec.addr, align 8, !tbaa !1
  %call62 = call %struct.symtab* @stab(i8* %44, i32 14, i32 0)
  store %struct.symtab* %call62, %struct.symtab** %s, align 8, !tbaa !1
  %45 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp63 = icmp eq %struct.symtab* %45, null
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.61
  %46 = load i8*, i8** %spec.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* %46)
  store i32 78, i32* @ExitStat, align 4, !tbaa !16
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %if.end.61
  %47 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %47, i32 0, i32 3
  %sv_milter = bitcast %union.anon* %s_value to %struct.milter**
  %48 = load %struct.milter*, %struct.milter** %sv_milter, align 8, !tbaa !1
  %49 = load i32, i32* %numitems, align 4, !tbaa !16
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %numitems, align 4, !tbaa !16
  %idxprom67 = sext i32 %49 to i64
  %50 = load %struct.milter**, %struct.milter*** %list.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds %struct.milter*, %struct.milter** %50, i64 %idxprom67
  store %struct.milter* %48, %struct.milter** %arrayidx68, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.66, %if.then.65, %if.end.16, %if.then
  %51 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.75 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %52 = load i32, i32* %numitems, align 4, !tbaa !16
  %idxprom69 = sext i32 %52 to i64
  %53 = load %struct.milter**, %struct.milter*** %list.addr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds %struct.milter*, %struct.milter** %53, i64 %idxprom69
  store %struct.milter* null, %struct.milter** %arrayidx70, align 8, !tbaa !1
  %54 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp71 = icmp eq i32 %54, -1
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %for.end
  %55 = load i32, i32* @LogLevel, align 4, !tbaa !16
  store i32 %55, i32* @MilterLogLevel, align 4, !tbaa !16
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.75

cleanup.75:                                       ; preds = %if.end.74, %cleanup
  %56 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %numitems to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %cleanup.dest.77 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.77, label %unreachable [
    i32 0, label %cleanup.cont.78
    i32 1, label %cleanup.cont.78
  ]

cleanup.cont.78:                                  ; preds = %cleanup.75, %cleanup.75
  ret void

unreachable:                                      ; preds = %cleanup.75
  unreachable
}

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #4

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strpbrk_c2(i8* %__s, i32 %__accept1, i32 %__accept2) #5 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !16
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !16
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !5
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !5
  %conv2 = sext i8 %3 to i32
  %4 = load i32, i32* %__accept1.addr, align 4, !tbaa !16
  %cmp3 = icmp ne i32 %conv2, %4
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !5
  %conv5 = sext i8 %6 to i32
  %7 = load i32, i32* %__accept2.addr, align 4, !tbaa !16
  %cmp6 = icmp ne i32 %conv5, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %__s.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !5
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %12 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %13 = ptrtoint i8* %12 to i64
  %14 = inttoptr i64 %13 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %14, %cond.false ]
  ret i8* %cond
}

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strpbrk_c3(i8* %__s, i32 %__accept1, i32 %__accept2, i32 %__accept3) #5 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  %__accept3.addr = alloca i32, align 4
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !16
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !16
  store i32 %__accept3, i32* %__accept3.addr, align 4, !tbaa !16
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !5
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !5
  %conv2 = sext i8 %3 to i32
  %4 = load i32, i32* %__accept1.addr, align 4, !tbaa !16
  %cmp3 = icmp ne i32 %conv2, %4
  br i1 %cmp3, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %5 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !5
  %conv6 = sext i8 %6 to i32
  %7 = load i32, i32* %__accept2.addr, align 4, !tbaa !16
  %cmp7 = icmp ne i32 %conv6, %7
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %8 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !5
  %conv9 = sext i8 %9 to i32
  %10 = load i32, i32* %__accept3.addr, align 4, !tbaa !16
  %cmp10 = icmp ne i32 %conv9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.5, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true.5 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %__s.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !5
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %15 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %16 = ptrtoint i8* %15 to i64
  %17 = inttoptr i64 %16 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %17, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind
declare i8* @strpbrk(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @milter_set_option(i8* %name, i8* %val, i32 %sticky) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %val.addr = alloca i8*, align 8
  %sticky.addr = alloca i32, align 4
  %nummac = alloca i32, align 4
  %r = alloca i32, align 4
  %mo = alloca %struct.milteropt*, align 8
  %macros = alloca i8**, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8* %val, i8** %val.addr, align 8, !tbaa !1
  store i32 %sticky, i32* %sticky.addr, align 4, !tbaa !16
  %0 = bitcast i32* %nummac to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.milteropt** %mo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8*** %macros to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8** null, i8*** %macros, align 8, !tbaa !1
  store i32 0, i32* %nummac, align 4, !tbaa !16
  %4 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !5
  %conv = zext i8 %4 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %5 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %6 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv2 = zext i8 %6 to i32
  %cmp3 = icmp sge i32 %conv2, 5
  br i1 %cmp3, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %lor.lhs.false
  %7 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.5, %land.lhs.true
  %8 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* %8, i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.5, %lor.lhs.false
  %10 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %10, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i32 0, i32 0))
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  store %struct.milteropt* getelementptr inbounds ([9 x %struct.milteropt], [9 x %struct.milteropt]* @MilterOptTab, i32 0, i32 0), %struct.milteropt** %mo, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %11 = load %struct.milteropt*, %struct.milteropt** %mo, align 8, !tbaa !1
  %mo_name = getelementptr inbounds %struct.milteropt, %struct.milteropt* %11, i32 0, i32 0
  %12 = load i8*, i8** %mo_name, align 8, !tbaa !36
  %cmp11 = icmp ne i8* %12, null
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.milteropt*, %struct.milteropt** %mo, align 8, !tbaa !1
  %mo_name13 = getelementptr inbounds %struct.milteropt, %struct.milteropt* %13, i32 0, i32 0
  %14 = load i8*, i8** %mo_name13, align 8, !tbaa !36
  %15 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call = call i32 @sm_strcasecmp(i8* %14, i8* %15)
  %cmp14 = icmp eq i32 %call, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body
  br label %for.end

if.end.17:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %16 = load %struct.milteropt*, %struct.milteropt** %mo, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.milteropt, %struct.milteropt* %16, i32 1
  store %struct.milteropt* %incdec.ptr, %struct.milteropt** %mo, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.16, %for.cond
  %17 = load %struct.milteropt*, %struct.milteropt** %mo, align 8, !tbaa !1
  %mo_name18 = getelementptr inbounds %struct.milteropt, %struct.milteropt* %17, i32 0, i32 0
  %18 = load i8*, i8** %mo_name18, align 8, !tbaa !36
  %cmp19 = icmp eq i8* %18, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.end
  %19 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i8* %19)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %for.end
  %20 = load i32, i32* %sticky.addr, align 4, !tbaa !16
  %tobool23 = icmp ne i32 %20, 0
  br i1 %tobool23, label %if.end.44, label %land.lhs.true.24

land.lhs.true.24:                                 ; preds = %if.end.22
  %21 = load %struct.milteropt*, %struct.milteropt** %mo, align 8, !tbaa !1
  %mo_code = getelementptr inbounds %struct.milteropt, %struct.milteropt* %21, i32 0, i32 1
  %22 = load i8, i8* %mo_code, align 1, !tbaa !38
  %conv25 = zext i8 %22 to i64
  %div = udiv i64 %conv25, 32
  %and = and i64 %div, 7
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @StickyMilterOpt, i32 0, i64 %and
  %23 = load i32, i32* %arrayidx, align 4, !tbaa !16
  %24 = load %struct.milteropt*, %struct.milteropt** %mo, align 8, !tbaa !1
  %mo_code26 = getelementptr inbounds %struct.milteropt, %struct.milteropt* %24, i32 0, i32 1
  %25 = load i8, i8* %mo_code26, align 1, !tbaa !38
  %conv27 = zext i8 %25 to i64
  %rem = urem i64 %conv27, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and28 = and i32 %23, %shl
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.44

if.then.30:                                       ; preds = %land.lhs.true.24
  %26 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !5
  %conv31 = zext i8 %26 to i32
  %cmp32 = icmp sge i32 %conv31, 2
  br i1 %cmp32, label %land.lhs.true.34, label %lor.lhs.false.36

land.lhs.true.34:                                 ; preds = %if.then.30
  %27 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool35 = icmp ne i32 %27, 0
  br i1 %tobool35, label %lor.lhs.false.36, label %if.then.42

lor.lhs.false.36:                                 ; preds = %land.lhs.true.34, %if.then.30
  %28 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv37 = zext i8 %28 to i32
  %cmp38 = icmp sge i32 %conv37, 5
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.43

land.lhs.true.40:                                 ; preds = %lor.lhs.false.36
  %29 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool41 = icmp ne i32 %29, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %land.lhs.true.40, %land.lhs.true.34
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %land.lhs.true.40, %lor.lhs.false.36
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %land.lhs.true.24, %if.end.22
  %30 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !5
  %conv45 = zext i8 %30 to i32
  %cmp46 = icmp sge i32 %conv45, 2
  br i1 %cmp46, label %land.lhs.true.48, label %lor.lhs.false.50

land.lhs.true.48:                                 ; preds = %if.end.44
  %31 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool49 = icmp ne i32 %31, 0
  br i1 %tobool49, label %lor.lhs.false.50, label %if.then.56

lor.lhs.false.50:                                 ; preds = %land.lhs.true.48, %if.end.44
  %32 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv51 = zext i8 %32 to i32
  %cmp52 = icmp sge i32 %conv51, 5
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.57

land.lhs.true.54:                                 ; preds = %lor.lhs.false.50
  %33 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool55 = icmp ne i32 %33, 0
  br i1 %tobool55, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true.54, %land.lhs.true.48
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %land.lhs.true.54, %lor.lhs.false.50
  %34 = load %struct.milteropt*, %struct.milteropt** %mo, align 8, !tbaa !1
  %mo_code58 = getelementptr inbounds %struct.milteropt, %struct.milteropt* %34, i32 0, i32 1
  %35 = load i8, i8* %mo_code58, align 1, !tbaa !38
  %conv59 = zext i8 %35 to i32
  switch i32 %conv59, label %sw.default [
    i32 7, label %sw.bb
    i32 0, label %sw.bb.61
    i32 1, label %sw.bb.61
    i32 2, label %sw.bb.61
    i32 3, label %sw.bb.61
    i32 6, label %sw.bb.61
    i32 5, label %sw.bb.61
    i32 4, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %if.end.57
  %36 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call60 = call i32 @atoi(i8* %36) #12
  store i32 %call60, i32* @MilterLogLevel, align 4, !tbaa !16
  br label %sw.epilog

sw.bb.61:                                         ; preds = %if.end.57, %if.end.57, %if.end.57, %if.end.57, %if.end.57, %if.end.57, %if.end.57
  %37 = load %struct.milteropt*, %struct.milteropt** %mo, align 8, !tbaa !1
  %mo_code62 = getelementptr inbounds %struct.milteropt, %struct.milteropt* %37, i32 0, i32 1
  %38 = load i8, i8* %mo_code62, align 1, !tbaa !38
  %idxprom = zext i8 %38 to i64
  %arrayidx63 = getelementptr inbounds [7 x [26 x [51 x i8*]]], [7 x [26 x [51 x i8*]]]* @MilterMacros, i32 0, i64 %idxprom
  %arrayidx64 = getelementptr inbounds [26 x [51 x i8*]], [26 x [51 x i8*]]* %arrayidx63, i32 0, i64 0
  %arraydecay = getelementptr inbounds [51 x i8*], [51 x i8*]* %arrayidx64, i32 0, i32 0
  store i8** %arraydecay, i8*** %macros, align 8, !tbaa !1
  %39 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %40 = load i8**, i8*** %macros, align 8, !tbaa !1
  %41 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %42 = load i32, i32* %nummac, align 4, !tbaa !16
  %call65 = call i32 @milter_set_macros(i8* %39, i8** %40, i8* %41, i32 %42)
  store i32 %call65, i32* %r, align 4, !tbaa !16
  %43 = load i32, i32* %r, align 4, !tbaa !16
  %cmp66 = icmp sge i32 %43, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %sw.bb.61
  %44 = load i32, i32* %r, align 4, !tbaa !16
  store i32 %44, i32* %nummac, align 4, !tbaa !16
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %sw.bb.61
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.57
  %45 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i8* %45)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.69, %sw.bb
  %46 = load i32, i32* %sticky.addr, align 4, !tbaa !16
  %tobool70 = icmp ne i32 %46, 0
  br i1 %tobool70, label %if.then.71, label %if.end.82

if.then.71:                                       ; preds = %sw.epilog
  %47 = load %struct.milteropt*, %struct.milteropt** %mo, align 8, !tbaa !1
  %mo_code72 = getelementptr inbounds %struct.milteropt, %struct.milteropt* %47, i32 0, i32 1
  %48 = load i8, i8* %mo_code72, align 1, !tbaa !38
  %conv73 = zext i8 %48 to i64
  %rem74 = urem i64 %conv73, 32
  %sh_prom75 = trunc i64 %rem74 to i32
  %shl76 = shl i32 1, %sh_prom75
  %49 = load %struct.milteropt*, %struct.milteropt** %mo, align 8, !tbaa !1
  %mo_code77 = getelementptr inbounds %struct.milteropt, %struct.milteropt* %49, i32 0, i32 1
  %50 = load i8, i8* %mo_code77, align 1, !tbaa !38
  %conv78 = zext i8 %50 to i64
  %div79 = udiv i64 %conv78, 32
  %and80 = and i64 %div79, 7
  %arrayidx81 = getelementptr inbounds [8 x i32], [8 x i32]* @StickyMilterOpt, i32 0, i64 %and80
  %51 = load i32, i32* %arrayidx81, align 4, !tbaa !16
  %or = or i32 %51, %shl76
  store i32 %or, i32* %arrayidx81, align 4, !tbaa !16
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.71, %sw.epilog
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.82, %if.end.43, %if.then.21, %if.then.9
  %52 = bitcast i8*** %macros to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast %struct.milteropt** %mo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %nummac to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
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

declare void @sm_dprintf(i8*, ...) #3

declare i32 @sm_strcasecmp(i8*, i8*) #3

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

; Function Attrs: nounwind uwtable
define internal i32 @milter_set_macros(i8* %name, i8** %macros, i8* %val, i32 %nummac) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %macros.addr = alloca i8**, align 8
  %val.addr = alloca i8*, align 8
  %nummac.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %macro = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8** %macros, i8*** %macros.addr, align 8, !tbaa !1
  store i8* %val, i8** %val.addr, align 8, !tbaa !1
  store i32 %nummac, i32* %nummac.addr, align 4, !tbaa !16
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %val.addr, align 8, !tbaa !1
  %call = call i8* @newstr(i8* %1)
  store i8* %call, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %2 = load i8*, i8** %p, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !5
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end.60

while.body:                                       ; preds = %while.cond
  %4 = bitcast i8** %macro to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.18, %while.body
  %5 = load i8*, i8** %p, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !5
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %land.rhs, label %land.end.17

land.rhs:                                         ; preds = %while.cond.2
  %7 = load i8*, i8** %p, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !5
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv6, 44
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !5
  %conv9 = sext i8 %10 to i32
  %and = and i32 %conv9, -128
  %cmp10 = icmp eq i32 %and, 0
  br i1 %cmp10, label %land.rhs.12, label %land.end

land.rhs.12:                                      ; preds = %lor.rhs
  %11 = load i8*, i8** %p, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !5
  %conv13 = sext i8 %12 to i32
  %idxprom = sext i32 %conv13 to i64
  %call14 = call i16** @__ctype_b_loc() #11
  %13 = load i16*, i16** %call14, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %13, i64 %idxprom
  %14 = load i16, i16* %arrayidx, align 2, !tbaa !6
  %conv15 = zext i16 %14 to i32
  %and16 = and i32 %conv15, 8192
  %tobool = icmp ne i32 %and16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.12, %lor.rhs
  %15 = phi i1 [ false, %lor.rhs ], [ %tobool, %land.rhs.12 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %16 = phi i1 [ true, %land.rhs ], [ %15, %land.end ]
  br label %land.end.17

land.end.17:                                      ; preds = %lor.end, %while.cond.2
  %17 = phi i1 [ false, %while.cond.2 ], [ %16, %lor.end ]
  br i1 %17, label %while.body.18, label %while.end

while.body.18:                                    ; preds = %land.end.17
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %while.cond.2

while.end:                                        ; preds = %land.end.17
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !5
  %conv19 = sext i8 %20 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.end
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %21, i8** %macro, align 8, !tbaa !1
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.body.43, %if.end
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !5
  %conv23 = sext i8 %23 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %land.lhs.true, label %land.end.42

land.lhs.true:                                    ; preds = %while.cond.22
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !5
  %conv26 = sext i8 %25 to i32
  %cmp27 = icmp ne i32 %conv26, 44
  br i1 %cmp27, label %land.lhs.true.29, label %land.end.42

land.lhs.true.29:                                 ; preds = %land.lhs.true
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !5
  %conv30 = sext i8 %27 to i32
  %and31 = and i32 %conv30, -128
  %cmp32 = icmp eq i32 %and31, 0
  br i1 %cmp32, label %land.rhs.34, label %land.end.42

land.rhs.34:                                      ; preds = %land.lhs.true.29
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !5
  %conv35 = sext i8 %29 to i32
  %idxprom36 = sext i32 %conv35 to i64
  %call37 = call i16** @__ctype_b_loc() #11
  %30 = load i16*, i16** %call37, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i16, i16* %30, i64 %idxprom36
  %31 = load i16, i16* %arrayidx38, align 2, !tbaa !6
  %conv39 = zext i16 %31 to i32
  %and40 = and i32 %conv39, 8192
  %tobool41 = icmp ne i32 %and40, 0
  %lnot = xor i1 %tobool41, true
  br label %land.end.42

land.end.42:                                      ; preds = %land.rhs.34, %land.lhs.true.29, %land.lhs.true, %while.cond.22
  %32 = phi i1 [ false, %land.lhs.true.29 ], [ false, %land.lhs.true ], [ false, %while.cond.22 ], [ %lnot, %land.rhs.34 ]
  br i1 %32, label %while.body.43, label %while.end.45

while.body.43:                                    ; preds = %land.end.42
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr44, i8** %p, align 8, !tbaa !1
  br label %while.cond.22

while.end.45:                                     ; preds = %land.end.42
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !5
  %conv46 = sext i8 %35 to i32
  %cmp47 = icmp ne i32 %conv46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %while.end.45
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr50 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr50, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %36, align 1, !tbaa !5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %while.end.45
  %37 = load i32, i32* %nummac.addr, align 4, !tbaa !16
  %cmp52 = icmp sge i32 %37, 50
  br i1 %cmp52, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.end.51
  %38 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.125, i32 0, i32 0), i8* %38, i32 50)
  %39 = load i32, i32* %nummac.addr, align 4, !tbaa !16
  %idxprom55 = sext i32 %39 to i64
  %40 = load i8**, i8*** %macros.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8*, i8** %40, i64 %idxprom55
  store i8* null, i8** %arrayidx56, align 8, !tbaa !1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.51
  %41 = load i8*, i8** %macro, align 8, !tbaa !1
  %42 = load i32, i32* %nummac.addr, align 4, !tbaa !16
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %nummac.addr, align 4, !tbaa !16
  %idxprom58 = sext i32 %42 to i64
  %43 = load i8**, i8*** %macros.addr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8*, i8** %43, i64 %idxprom58
  store i8* %41, i8** %arrayidx59, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.then.54, %if.then
  %44 = bitcast i8** %macro to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.63 [
    i32 0, label %cleanup.cont
    i32 3, label %while.end.60
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.60:                                     ; preds = %cleanup, %while.cond
  %45 = load i32, i32* %nummac.addr, align 4, !tbaa !16
  %idxprom61 = sext i32 %45 to i64
  %46 = load i8**, i8*** %macros.addr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8*, i8** %46, i64 %idxprom61
  store i8* null, i8** %arrayidx62, align 8, !tbaa !1
  %47 = load i32, i32* %nummac.addr, align 4, !tbaa !16
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

cleanup.63:                                       ; preds = %while.end.60, %cleanup
  %48 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @milter_init(%struct.envelope* %e, i8* %state, %struct.milters* %milters) #0 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %state.addr = alloca i8*, align 8
  %milters.addr = alloca %struct.milters*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %m = alloca %struct.milter*, align 8
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %state, i8** %state.addr, align 8, !tbaa !1
  store %struct.milters* %milters, %struct.milters** %milters.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load %struct.milters*, %struct.milters** %milters.addr, align 8, !tbaa !1
  %4 = bitcast %struct.milters* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 4, i32 4, i1 false)
  %5 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 99, i8* %5, align 1, !tbaa !5
  %6 = load %struct.milter*, %struct.milter** getelementptr inbounds ([25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 0), align 8, !tbaa !1
  %cmp2 = icmp eq %struct.milter* %6, null
  br i1 %cmp2, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp5 = icmp sgt i32 %7, 10
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  %8 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %8, i32 0, i32 25
  %9 = load i8*, i8** %e_id, align 8, !tbaa !18
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.141

if.end.9:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %10 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom
  %11 = load %struct.milter*, %struct.milter** %arrayidx, align 8, !tbaa !1
  %cmp10 = icmp ne %struct.milter* %11, null
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom12
  %14 = load %struct.milter*, %struct.milter** %arrayidx13, align 8, !tbaa !1
  store %struct.milter* %14, %struct.milter** %m, align 8, !tbaa !1
  %15 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %16 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call = call i32 @milter_open(%struct.milter* %15, i32 0, %struct.envelope* %16)
  %17 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_sock = getelementptr inbounds %struct.milter, %struct.milter* %17, i32 0, i32 6
  store i32 %call, i32* %mf_sock, align 4, !tbaa !12
  %18 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %18, i32 0, i32 7
  %19 = load i8, i8* %mf_state, align 1, !tbaa !11
  %conv14 = sext i8 %19 to i32
  %cmp15 = icmp eq i32 %conv14, 69
  br i1 %cmp15, label %if.then.17, label %if.end.52

if.then.17:                                       ; preds = %for.body
  %20 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv18 = zext i8 %20 to i32
  %cmp19 = icmp sge i32 %conv18, 101
  br i1 %cmp19, label %land.lhs.true.21, label %if.else

land.lhs.true.21:                                 ; preds = %if.then.17
  %21 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool22 = icmp ne i32 %21, 0
  br i1 %tobool22, label %if.else, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.21
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg = getelementptr inbounds %struct.envelope, %struct.envelope* %22, i32 0, i32 36
  %23 = load i8*, i8** %e_quarmsg, align 8, !tbaa !39
  %cmp24 = icmp eq i8* %23, null
  br i1 %cmp24, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %if.then.23
  %24 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 52
  %25 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !40
  %call27 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %26 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg28 = getelementptr inbounds %struct.envelope, %struct.envelope* %26, i32 0, i32 36
  store i8* %call27, i8** %e_quarmsg28, align 8, !tbaa !39
  %27 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %27, i32 0, i32 46
  %call29 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg30 = getelementptr inbounds %struct.envelope, %struct.envelope* %28, i32 0, i32 36
  %29 = load i8*, i8** %e_quarmsg30, align 8, !tbaa !39
  %30 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 %call29, i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 3829, i32 %30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.26, %if.then.23
  br label %if.end.51

if.else:                                          ; preds = %land.lhs.true.21, %if.then.17
  %31 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags = getelementptr inbounds %struct.milter, %struct.milter* %31, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags, i32 0, i64 2
  %32 = load i32, i32* %arrayidx32, align 4, !tbaa !16
  %and = and i32 %32, 1048576
  %tobool33 = icmp ne i32 %and, 0
  br i1 %tobool33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else
  %33 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %33, align 1, !tbaa !5
  br label %if.end.50

if.else.35:                                       ; preds = %if.else
  %34 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags36 = getelementptr inbounds %struct.milter, %struct.milter* %34, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags36, i32 0, i64 1
  %35 = load i32, i32* %arrayidx37, align 4, !tbaa !16
  %and38 = and i32 %35, 1048576
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.else.35
  %36 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %36, align 1, !tbaa !5
  br label %if.end.49

if.else.41:                                       ; preds = %if.else.35
  %37 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags42 = getelementptr inbounds %struct.milter, %struct.milter* %37, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags42, i32 0, i64 2
  %38 = load i32, i32* %arrayidx43, align 4, !tbaa !16
  %and44 = and i32 %38, 262144
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.else.41
  %39 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %39, align 1, !tbaa !5
  br label %if.end.48

if.else.47:                                       ; preds = %if.else.41
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.then.46
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.40
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.34
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.31
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %for.body
  %40 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_sock53 = getelementptr inbounds %struct.milter, %struct.milter* %40, i32 0, i32 6
  %41 = load i32, i32* %mf_sock53, align 4, !tbaa !12
  %cmp54 = icmp slt i32 %41, 0
  br i1 %cmp54, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.52
  %42 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %43 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %44 = load %struct.milters*, %struct.milters** %milters.addr, align 8, !tbaa !1
  %call56 = call i32 @milter_negotiate(%struct.milter* %42, %struct.envelope* %43, %struct.milters* %44)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then.64, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false
  %45 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state60 = getelementptr inbounds %struct.milter, %struct.milter* %45, i32 0, i32 7
  %46 = load i8, i8* %mf_state60, align 1, !tbaa !11
  %conv61 = sext i8 %46 to i32
  %cmp62 = icmp eq i32 %conv61, 69
  br i1 %cmp62, label %if.then.64, label %if.end.125

if.then.64:                                       ; preds = %lor.lhs.false.59, %lor.lhs.false, %if.end.52
  %47 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv65 = zext i8 %47 to i32
  %cmp66 = icmp sge i32 %conv65, 5
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.74

land.lhs.true.68:                                 ; preds = %if.then.64
  %48 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool69 = icmp ne i32 %48, 0
  br i1 %tobool69, label %if.end.74, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.68
  %49 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %49, i32 0, i32 0
  %50 = load i8*, i8** %mf_name, align 8, !tbaa !8
  %51 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_sock71 = getelementptr inbounds %struct.milter, %struct.milter* %51, i32 0, i32 6
  %52 = load i32, i32* %mf_sock71, align 4, !tbaa !12
  %cmp72 = icmp slt i32 %52, 0
  %cond = select i1 %cmp72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i8* %50, i8* %cond)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.70, %land.lhs.true.68, %if.then.64
  %53 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp75 = icmp sgt i32 %53, 0
  br i1 %cmp75, label %if.then.77, label %if.end.84

if.then.77:                                       ; preds = %if.end.74
  %54 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id78 = getelementptr inbounds %struct.envelope, %struct.envelope* %54, i32 0, i32 25
  %55 = load i8*, i8** %e_id78, align 8, !tbaa !18
  %56 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name79 = getelementptr inbounds %struct.milter, %struct.milter* %56, i32 0, i32 0
  %57 = load i8*, i8** %mf_name79, align 8, !tbaa !8
  %58 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_sock80 = getelementptr inbounds %struct.milter, %struct.milter* %58, i32 0, i32 6
  %59 = load i32, i32* %mf_sock80, align 4, !tbaa !12
  %cmp81 = icmp slt i32 %59, 0
  %cond83 = select i1 %cmp81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* %57, i8* %cond83)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.77, %if.end.74
  %60 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %61 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %60, %struct.envelope* %61)
  %62 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv85 = zext i8 %62 to i32
  %cmp86 = icmp sge i32 %conv85, 101
  br i1 %cmp86, label %land.lhs.true.88, label %if.else.102

land.lhs.true.88:                                 ; preds = %if.end.84
  %63 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool89 = icmp ne i32 %63, 0
  br i1 %tobool89, label %if.else.102, label %if.then.90

if.then.90:                                       ; preds = %land.lhs.true.88
  %64 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg91 = getelementptr inbounds %struct.envelope, %struct.envelope* %64, i32 0, i32 36
  %65 = load i8*, i8** %e_quarmsg91, align 8, !tbaa !39
  %cmp92 = icmp eq i8* %65, null
  br i1 %cmp92, label %if.then.94, label %if.end.101

if.then.94:                                       ; preds = %if.then.90
  %66 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool95 = getelementptr inbounds %struct.envelope, %struct.envelope* %66, i32 0, i32 52
  %67 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool95, align 8, !tbaa !40
  %call96 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %68 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg97 = getelementptr inbounds %struct.envelope, %struct.envelope* %68, i32 0, i32 36
  store i8* %call96, i8** %e_quarmsg97, align 8, !tbaa !39
  %69 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro98 = getelementptr inbounds %struct.envelope, %struct.envelope* %69, i32 0, i32 46
  %call99 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %70 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg100 = getelementptr inbounds %struct.envelope, %struct.envelope* %70, i32 0, i32 36
  %71 = load i8*, i8** %e_quarmsg100, align 8, !tbaa !39
  %72 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro98, i32 2, i32 %call99, i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 3851, i32 %72)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.94, %if.then.90
  br label %if.end.124

if.else.102:                                      ; preds = %land.lhs.true.88, %if.end.84
  %73 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags103 = getelementptr inbounds %struct.milter, %struct.milter* %73, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags103, i32 0, i64 2
  %74 = load i32, i32* %arrayidx104, align 4, !tbaa !16
  %and105 = and i32 %74, 1048576
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %if.else.102
  %75 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %75, align 1, !tbaa !5
  br label %if.end.123

if.else.108:                                      ; preds = %if.else.102
  %76 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags109 = getelementptr inbounds %struct.milter, %struct.milter* %76, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags109, i32 0, i64 1
  %77 = load i32, i32* %arrayidx110, align 4, !tbaa !16
  %and111 = and i32 %77, 1048576
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %if.else.108
  %78 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %78, align 1, !tbaa !5
  br label %if.end.122

if.else.114:                                      ; preds = %if.else.108
  %79 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags115 = getelementptr inbounds %struct.milter, %struct.milter* %79, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags115, i32 0, i64 2
  %80 = load i32, i32* %arrayidx116, align 4, !tbaa !16
  %and117 = and i32 %80, 262144
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %if.else.114
  %81 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %81, align 1, !tbaa !5
  br label %if.end.121

if.else.120:                                      ; preds = %if.else.114
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.121:                                       ; preds = %if.then.119
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.113
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.107
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.101
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.125:                                       ; preds = %lor.lhs.false.59
  %82 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp126 = icmp sgt i32 %82, 9
  br i1 %cmp126, label %if.then.128, label %if.end.135

if.then.128:                                      ; preds = %if.end.125
  %83 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id129 = getelementptr inbounds %struct.envelope, %struct.envelope* %83, i32 0, i32 25
  %84 = load i8*, i8** %e_id129, align 8, !tbaa !18
  %85 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name130 = getelementptr inbounds %struct.milter, %struct.milter* %85, i32 0, i32 0
  %86 = load i8*, i8** %mf_name130, align 8, !tbaa !8
  %87 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_sock131 = getelementptr inbounds %struct.milter, %struct.milter* %87, i32 0, i32 6
  %88 = load i32, i32* %mf_sock131, align 4, !tbaa !12
  %cmp132 = icmp slt i32 %88, 0
  %cond134 = select i1 %cmp132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i32 0, i32 0), i8* %86, i8* %cond134)
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.128, %if.end.125
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.135, %if.end.124, %if.else.120, %if.end.51, %if.else.47
  %89 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %90 = load i32, i32* %i, align 4, !tbaa !16
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %91 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %92 = load i8, i8* %91, align 1, !tbaa !5
  %conv136 = sext i8 %92 to i32
  %cmp137 = icmp ne i32 %conv136, 99
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %for.end
  %93 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_quit(%struct.envelope* %93)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.139, %for.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.141

cleanup.141:                                      ; preds = %if.end.140, %if.end.8
  %94 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = load i32, i32* %retval
  ret i32 %95

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @sm_syslog(i32, i8*, i8*, ...) #3

declare i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T*, i8*) #3

declare void @macdefine_tagged(%struct.MACROS_T*, i32, i32, i8*, i8*, i32, i32) #3

declare i32 @macid_parse(i8*, i8**) #3

; Function Attrs: nounwind uwtable
define internal i32 @milter_negotiate(%struct.milter* %m, %struct.envelope* %e, %struct.milters* %milters) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.milter*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %milters.addr = alloca %struct.milters*, align 8
  %rcmd = alloca i8, align 1
  %fvers = alloca i32, align 4
  %fflags = alloca i32, align 4
  %pflags = alloca i32, align 4
  %mta_prot_vers = alloca i32, align 4
  %mta_prot_flags = alloca i32, align 4
  %mta_actions = alloca i32, align 4
  %rlen = alloca i64, align 8
  %response = alloca i8*, align 8
  %data = alloca [12 x i8], align 1
  %cleanup.dest.slot = alloca i32
  %__v = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__v8 = alloca i32, align 4
  %__x10 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %__v13 = alloca i32, align 4
  %__x15 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %__v32 = alloca i32, align 4
  %__x34 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %__v38 = alloca i32, align 4
  %__x40 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %__v44 = alloca i32, align 4
  %__x46 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  %__v134 = alloca i32, align 4
  %__x136 = alloca i32, align 4
  %tmp137 = alloca i32, align 4
  %__v139 = alloca i32, align 4
  %__x141 = alloca i32, align 4
  %tmp142 = alloca i32, align 4
  %__v144 = alloca i32, align 4
  %__x146 = alloca i32, align 4
  %tmp147 = alloca i32, align 4
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store %struct.milters* %milters, %struct.milters** %milters.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %rcmd) #1
  %0 = bitcast i32* %fvers to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %fflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %pflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %mta_prot_vers to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %mta_prot_flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %mta_actions to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i64* %rlen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %response to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast [12 x i8]* %data to i8*
  call void @llvm.lifetime.start(i64 12, i8* %8) #1
  %9 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock = getelementptr inbounds %struct.milter, %struct.milter* %9, i32 0, i32 6
  %10 = load i32, i32* %mf_sock, align 4, !tbaa !12
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %11, i32 0, i32 7
  %12 = load i8, i8* %mf_state, align 1, !tbaa !11
  %conv = sext i8 %12 to i32
  %cmp1 = icmp ne i32 %conv, 79
  br i1 %cmp1, label %if.then, label %if.end.6

if.then:                                          ; preds = %lor.lhs.false, %entry
  %13 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp3 = icmp sgt i32 %13, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 25
  %15 = load i8*, i8** %e_id, align 8, !tbaa !18
  %16 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %16, i32 0, i32 0
  %17 = load i8*, i8** %mf_name, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.126, i32 0, i32 0), i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %18 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %19 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %18, %struct.envelope* %19)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %lor.lhs.false
  store i32 6, i32* %mta_prot_vers, align 4, !tbaa !16
  store i32 2097151, i32* %mta_prot_flags, align 4, !tbaa !16
  store i32 511, i32* %mta_actions, align 4, !tbaa !16
  %20 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32, i32* %mta_prot_vers, align 4, !tbaa !16
  store i32 %22, i32* %__x, align 4, !tbaa !16
  %23 = load i32, i32* %__x, align 4, !tbaa !16
  %24 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %23) #11, !srcloc !41
  store i32 %24, i32* %__v, align 4, !tbaa !16
  %25 = load i32, i32* %__v, align 4, !tbaa !16
  store i32 %25, i32* %tmp, !tbaa !16
  %26 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load i32, i32* %tmp, !tbaa !16
  store i32 %28, i32* %fvers, align 4, !tbaa !16
  %29 = bitcast i32* %__v8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %__x10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %mta_prot_flags, align 4, !tbaa !16
  store i32 %31, i32* %__x10, align 4, !tbaa !16
  %32 = load i32, i32* %__x10, align 4, !tbaa !16
  %33 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %32) #11, !srcloc !42
  store i32 %33, i32* %__v8, align 4, !tbaa !16
  %34 = load i32, i32* %__v8, align 4, !tbaa !16
  store i32 %34, i32* %tmp11, !tbaa !16
  %35 = bitcast i32* %__x10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %__v8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load i32, i32* %tmp11, !tbaa !16
  store i32 %37, i32* %pflags, align 4, !tbaa !16
  %38 = bitcast i32* %__v13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = bitcast i32* %__x15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i32, i32* %mta_actions, align 4, !tbaa !16
  store i32 %40, i32* %__x15, align 4, !tbaa !16
  %41 = load i32, i32* %__x15, align 4, !tbaa !16
  %42 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %41) #11, !srcloc !43
  store i32 %42, i32* %__v13, align 4, !tbaa !16
  %43 = load i32, i32* %__v13, align 4, !tbaa !16
  store i32 %43, i32* %tmp16, !tbaa !16
  %44 = bitcast i32* %__x15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %__v13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = load i32, i32* %tmp16, !tbaa !16
  store i32 %46, i32* %fflags, align 4, !tbaa !16
  %47 = bitcast [12 x i8]* %data to i8*
  %48 = bitcast i32* %fvers to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 4, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %data, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 4
  %49 = bitcast i32* %fflags to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %49, i64 4, i32 1, i1 false)
  %arraydecay17 = getelementptr inbounds [12 x i8], [12 x i8]* %data, i32 0, i32 0
  %add.ptr18 = getelementptr inbounds i8, i8* %arraydecay17, i64 8
  %50 = bitcast i32* %pflags to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr18, i8* %50, i64 4, i32 1, i1 false)
  %51 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %arraydecay19 = getelementptr inbounds [12 x i8], [12 x i8]* %data, i32 0, i32 0
  %52 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_timeout = getelementptr inbounds %struct.milter, %struct.milter* %52, i32 0, i32 10
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout, i32 0, i64 0
  %53 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %54 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call = call i8* @milter_write(%struct.milter* %51, i32 79, i8* %arraydecay19, i64 12, i64 %53, %struct.envelope* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0))
  %55 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state20 = getelementptr inbounds %struct.milter, %struct.milter* %55, i32 0, i32 7
  %56 = load i8, i8* %mf_state20, align 1, !tbaa !11
  %conv21 = sext i8 %56 to i32
  %cmp22 = icmp eq i32 %conv21, 69
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.6
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.6
  %57 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv26 = zext i8 %57 to i32
  %cmp27 = icmp sge i32 %conv26, 5
  br i1 %cmp27, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end.25
  %58 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %58, 0
  br i1 %tobool, label %if.end.49, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true
  %59 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name30 = getelementptr inbounds %struct.milter, %struct.milter* %59, i32 0, i32 0
  %60 = load i8*, i8** %mf_name30, align 8, !tbaa !8
  %61 = bitcast i32* %__v32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = bitcast i32* %__x34 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = load i32, i32* %fvers, align 4, !tbaa !16
  store i32 %63, i32* %__x34, align 4, !tbaa !16
  %64 = load i32, i32* %__x34, align 4, !tbaa !16
  %65 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %64) #11, !srcloc !44
  store i32 %65, i32* %__v32, align 4, !tbaa !16
  %66 = load i32, i32* %__v32, align 4, !tbaa !16
  store i32 %66, i32* %tmp35, !tbaa !16
  %67 = bitcast i32* %__x34 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %__v32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = load i32, i32* %tmp35, !tbaa !16
  %conv36 = zext i32 %69 to i64
  %70 = bitcast i32* %__v38 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = bitcast i32* %__x40 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = load i32, i32* %fflags, align 4, !tbaa !16
  store i32 %72, i32* %__x40, align 4, !tbaa !16
  %73 = load i32, i32* %__x40, align 4, !tbaa !16
  %74 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %73) #11, !srcloc !45
  store i32 %74, i32* %__v38, align 4, !tbaa !16
  %75 = load i32, i32* %__v38, align 4, !tbaa !16
  store i32 %75, i32* %tmp41, !tbaa !16
  %76 = bitcast i32* %__x40 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %__v38 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = load i32, i32* %tmp41, !tbaa !16
  %conv42 = zext i32 %78 to i64
  %79 = bitcast i32* %__v44 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %80 = bitcast i32* %__x46 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = load i32, i32* %pflags, align 4, !tbaa !16
  store i32 %81, i32* %__x46, align 4, !tbaa !16
  %82 = load i32, i32* %__x46, align 4, !tbaa !16
  %83 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %82) #11, !srcloc !46
  store i32 %83, i32* %__v44, align 4, !tbaa !16
  %84 = load i32, i32* %__v44, align 4, !tbaa !16
  store i32 %84, i32* %tmp47, !tbaa !16
  %85 = bitcast i32* %__x46 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %__v44 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = load i32, i32* %tmp47, !tbaa !16
  %conv48 = zext i32 %87 to i64
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.127, i32 0, i32 0), i8* %60, i64 %conv36, i64 %conv42, i64 %conv48)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.29, %land.lhs.true, %if.end.25
  %88 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %89 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_timeout50 = getelementptr inbounds %struct.milter, %struct.milter* %89, i32 0, i32 10
  %arrayidx51 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout50, i32 0, i64 1
  %90 = load i64, i64* %arrayidx51, align 8, !tbaa !13
  %91 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call52 = call i8* @milter_read(%struct.milter* %88, i8* %rcmd, i64* %rlen, i64 %90, %struct.envelope* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0))
  store i8* %call52, i8** %response, align 8, !tbaa !1
  %92 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state53 = getelementptr inbounds %struct.milter, %struct.milter* %92, i32 0, i32 7
  %93 = load i8, i8* %mf_state53, align 1, !tbaa !11
  %conv54 = sext i8 %93 to i32
  %cmp55 = icmp eq i32 %conv54, 69
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.49
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.49
  %94 = load i8, i8* %rcmd, align 1, !tbaa !5
  %conv59 = sext i8 %94 to i32
  %cmp60 = icmp ne i32 %conv59, 79
  br i1 %cmp60, label %if.then.62, label %if.end.83

if.then.62:                                       ; preds = %if.end.58
  %95 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv63 = zext i8 %95 to i32
  %cmp64 = icmp sge i32 %conv63, 5
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.71

land.lhs.true.66:                                 ; preds = %if.then.62
  %96 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool67 = icmp ne i32 %96, 0
  br i1 %tobool67, label %if.end.71, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.66
  %97 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name69 = getelementptr inbounds %struct.milter, %struct.milter* %97, i32 0, i32 0
  %98 = load i8*, i8** %mf_name69, align 8, !tbaa !8
  %99 = load i8, i8* %rcmd, align 1, !tbaa !5
  %conv70 = sext i8 %99 to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.128, i32 0, i32 0), i8* %98, i32 %conv70, i32 79)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %land.lhs.true.66, %if.then.62
  %100 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp72 = icmp sgt i32 %100, 0
  br i1 %cmp72, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %if.end.71
  %101 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id75 = getelementptr inbounds %struct.envelope, %struct.envelope* %101, i32 0, i32 25
  %102 = load i8*, i8** %e_id75, align 8, !tbaa !18
  %103 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name76 = getelementptr inbounds %struct.milter, %struct.milter* %103, i32 0, i32 0
  %104 = load i8*, i8** %mf_name76, align 8, !tbaa !8
  %105 = load i8, i8* %rcmd, align 1, !tbaa !5
  %conv77 = sext i8 %105 to i32
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %102, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.129, i32 0, i32 0), i8* %104, i32 %conv77, i32 79)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %if.end.71
  %106 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp79 = icmp ne i8* %106, null
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.78
  %107 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2445)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %if.end.78
  %108 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %109 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %108, %struct.envelope* %109)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %if.end.58
  %110 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp84 = icmp eq i8* %110, null
  br i1 %cmp84, label %if.then.89, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %if.end.83
  %111 = load i64, i64* %rlen, align 8, !tbaa !13
  %cmp87 = icmp slt i64 %111, 4
  br i1 %cmp87, label %if.then.89, label %if.end.108

if.then.89:                                       ; preds = %lor.lhs.false.86, %if.end.83
  %112 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv90 = zext i8 %112 to i32
  %cmp91 = icmp sge i32 %conv90, 5
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.97

land.lhs.true.93:                                 ; preds = %if.then.89
  %113 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool94 = icmp ne i32 %113, 0
  br i1 %tobool94, label %if.end.97, label %if.then.95

if.then.95:                                       ; preds = %land.lhs.true.93
  %114 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name96 = getelementptr inbounds %struct.milter, %struct.milter* %114, i32 0, i32 0
  %115 = load i8*, i8** %mf_name96, align 8, !tbaa !8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.130, i32 0, i32 0), i8* %115)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %land.lhs.true.93, %if.then.89
  %116 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp98 = icmp sgt i32 %116, 0
  br i1 %cmp98, label %if.then.100, label %if.end.103

if.then.100:                                      ; preds = %if.end.97
  %117 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id101 = getelementptr inbounds %struct.envelope, %struct.envelope* %117, i32 0, i32 25
  %118 = load i8*, i8** %e_id101, align 8, !tbaa !18
  %119 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name102 = getelementptr inbounds %struct.milter, %struct.milter* %119, i32 0, i32 0
  %120 = load i8*, i8** %mf_name102, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %118, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.131, i32 0, i32 0), i8* %120)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.100, %if.end.97
  %121 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp104 = icmp ne i8* %121, null
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.103
  %122 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2461)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.end.103
  %123 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %124 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %123, %struct.envelope* %124)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.108:                                       ; preds = %lor.lhs.false.86
  %125 = bitcast i32* %fvers to i8*
  %126 = load i8*, i8** %response, align 8, !tbaa !1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %126, i64 4, i32 1, i1 false)
  %127 = load i64, i64* %rlen, align 8, !tbaa !13
  %cmp109 = icmp slt i64 %127, 12
  br i1 %cmp109, label %if.then.111, label %if.end.130

if.then.111:                                      ; preds = %if.end.108
  %128 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv112 = zext i8 %128 to i32
  %cmp113 = icmp sge i32 %conv112, 5
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.119

land.lhs.true.115:                                ; preds = %if.then.111
  %129 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool116 = icmp ne i32 %129, 0
  br i1 %tobool116, label %if.end.119, label %if.then.117

if.then.117:                                      ; preds = %land.lhs.true.115
  %130 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name118 = getelementptr inbounds %struct.milter, %struct.milter* %130, i32 0, i32 0
  %131 = load i8*, i8** %mf_name118, align 8, !tbaa !8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.132, i32 0, i32 0), i8* %131)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %land.lhs.true.115, %if.then.111
  %132 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp120 = icmp sgt i32 %132, 0
  br i1 %cmp120, label %if.then.122, label %if.end.125

if.then.122:                                      ; preds = %if.end.119
  %133 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id123 = getelementptr inbounds %struct.envelope, %struct.envelope* %133, i32 0, i32 25
  %134 = load i8*, i8** %e_id123, align 8, !tbaa !18
  %135 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name124 = getelementptr inbounds %struct.milter, %struct.milter* %135, i32 0, i32 0
  %136 = load i8*, i8** %mf_name124, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %134, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.133, i32 0, i32 0), i8* %136)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.122, %if.end.119
  %137 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp126 = icmp ne i8* %137, null
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.125
  %138 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2480)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.end.125
  %139 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %140 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %139, %struct.envelope* %140)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.130:                                       ; preds = %if.end.108
  %141 = bitcast i32* %fflags to i8*
  %142 = load i8*, i8** %response, align 8, !tbaa !1
  %add.ptr131 = getelementptr inbounds i8, i8* %142, i64 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %add.ptr131, i64 4, i32 1, i1 false)
  %143 = bitcast i32* %pflags to i8*
  %144 = load i8*, i8** %response, align 8, !tbaa !1
  %add.ptr132 = getelementptr inbounds i8, i8* %144, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %143, i8* %add.ptr132, i64 4, i32 1, i1 false)
  %145 = bitcast i32* %__v134 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  %146 = bitcast i32* %__x136 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #1
  %147 = load i32, i32* %fvers, align 4, !tbaa !16
  store i32 %147, i32* %__x136, align 4, !tbaa !16
  %148 = load i32, i32* %__x136, align 4, !tbaa !16
  %149 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %148) #11, !srcloc !47
  store i32 %149, i32* %__v134, align 4, !tbaa !16
  %150 = load i32, i32* %__v134, align 4, !tbaa !16
  store i32 %150, i32* %tmp137, !tbaa !16
  %151 = bitcast i32* %__x136 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %__v134 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = load i32, i32* %tmp137, !tbaa !16
  %154 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fvers = getelementptr inbounds %struct.milter, %struct.milter* %154, i32 0, i32 2
  store i32 %153, i32* %mf_fvers, align 4, !tbaa !48
  %155 = bitcast i32* %__v139 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %155) #1
  %156 = bitcast i32* %__x141 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %156) #1
  %157 = load i32, i32* %fflags, align 4, !tbaa !16
  store i32 %157, i32* %__x141, align 4, !tbaa !16
  %158 = load i32, i32* %__x141, align 4, !tbaa !16
  %159 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %158) #11, !srcloc !49
  store i32 %159, i32* %__v139, align 4, !tbaa !16
  %160 = load i32, i32* %__v139, align 4, !tbaa !16
  store i32 %160, i32* %tmp142, !tbaa !16
  %161 = bitcast i32* %__x141 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %__v139 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = load i32, i32* %tmp142, !tbaa !16
  %164 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fflags = getelementptr inbounds %struct.milter, %struct.milter* %164, i32 0, i32 3
  store i32 %163, i32* %mf_fflags, align 4, !tbaa !50
  %165 = bitcast i32* %__v144 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %165) #1
  %166 = bitcast i32* %__x146 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %166) #1
  %167 = load i32, i32* %pflags, align 4, !tbaa !16
  store i32 %167, i32* %__x146, align 4, !tbaa !16
  %168 = load i32, i32* %__x146, align 4, !tbaa !16
  %169 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %168) #11, !srcloc !51
  store i32 %169, i32* %__v144, align 4, !tbaa !16
  %170 = load i32, i32* %__v144, align 4, !tbaa !16
  store i32 %170, i32* %tmp147, !tbaa !16
  %171 = bitcast i32* %__x146 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %__v144 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = load i32, i32* %tmp147, !tbaa !16
  %174 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags = getelementptr inbounds %struct.milter, %struct.milter* %174, i32 0, i32 4
  store i32 %173, i32* %mf_pflags, align 4, !tbaa !52
  %175 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fvers148 = getelementptr inbounds %struct.milter, %struct.milter* %175, i32 0, i32 2
  %176 = load i32, i32* %mf_fvers148, align 4, !tbaa !48
  %cmp149 = icmp eq i32 %176, 1
  br i1 %cmp149, label %if.then.155, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %if.end.130
  %177 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fvers152 = getelementptr inbounds %struct.milter, %struct.milter* %177, i32 0, i32 2
  %178 = load i32, i32* %mf_fvers152, align 4, !tbaa !48
  %cmp153 = icmp sgt i32 %178, 16777217
  br i1 %cmp153, label %if.then.155, label %if.end.172

if.then.155:                                      ; preds = %lor.lhs.false.151, %if.end.130
  %179 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv156 = zext i8 %179 to i32
  %cmp157 = icmp sge i32 %conv156, 5
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.164

land.lhs.true.159:                                ; preds = %if.then.155
  %180 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool160 = icmp ne i32 %180, 0
  br i1 %tobool160, label %if.end.164, label %if.then.161

if.then.161:                                      ; preds = %land.lhs.true.159
  %181 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name162 = getelementptr inbounds %struct.milter, %struct.milter* %181, i32 0, i32 0
  %182 = load i8*, i8** %mf_name162, align 8, !tbaa !8
  %183 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fvers163 = getelementptr inbounds %struct.milter, %struct.milter* %183, i32 0, i32 2
  %184 = load i32, i32* %mf_fvers163, align 4, !tbaa !48
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.134, i32 0, i32 0), i8* %182, i32 %184, i32 16777217)
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.161, %land.lhs.true.159, %if.then.155
  %185 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp165 = icmp sgt i32 %185, 0
  br i1 %cmp165, label %if.then.167, label %if.end.171

if.then.167:                                      ; preds = %if.end.164
  %186 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id168 = getelementptr inbounds %struct.envelope, %struct.envelope* %186, i32 0, i32 25
  %187 = load i8*, i8** %e_id168, align 8, !tbaa !18
  %188 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name169 = getelementptr inbounds %struct.milter, %struct.milter* %188, i32 0, i32 0
  %189 = load i8*, i8** %mf_name169, align 8, !tbaa !8
  %190 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fvers170 = getelementptr inbounds %struct.milter, %struct.milter* %190, i32 0, i32 2
  %191 = load i32, i32* %mf_fvers170, align 4, !tbaa !48
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %187, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.135, i32 0, i32 0), i8* %189, i32 %191, i32 16777217)
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.167, %if.end.164
  %192 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %193 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %192, %struct.envelope* %193)
  br label %error

if.end.172:                                       ; preds = %lor.lhs.false.151
  %194 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fflags173 = getelementptr inbounds %struct.milter, %struct.milter* %194, i32 0, i32 3
  %195 = load i32, i32* %mf_fflags173, align 4, !tbaa !50
  %196 = load i32, i32* %mta_actions, align 4, !tbaa !16
  %and = and i32 %195, %196
  %197 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fflags174 = getelementptr inbounds %struct.milter, %struct.milter* %197, i32 0, i32 3
  %198 = load i32, i32* %mf_fflags174, align 4, !tbaa !50
  %cmp175 = icmp ne i32 %and, %198
  br i1 %cmp175, label %if.then.177, label %if.end.196

if.then.177:                                      ; preds = %if.end.172
  %199 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv178 = zext i8 %199 to i32
  %cmp179 = icmp sge i32 %conv178, 5
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.187

land.lhs.true.181:                                ; preds = %if.then.177
  %200 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool182 = icmp ne i32 %200, 0
  br i1 %tobool182, label %if.end.187, label %if.then.183

if.then.183:                                      ; preds = %land.lhs.true.181
  %201 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name184 = getelementptr inbounds %struct.milter, %struct.milter* %201, i32 0, i32 0
  %202 = load i8*, i8** %mf_name184, align 8, !tbaa !8
  %203 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fflags185 = getelementptr inbounds %struct.milter, %struct.milter* %203, i32 0, i32 3
  %204 = load i32, i32* %mf_fflags185, align 4, !tbaa !50
  %205 = load i32, i32* %mta_actions, align 4, !tbaa !16
  %conv186 = sext i32 %205 to i64
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.136, i32 0, i32 0), i8* %202, i32 %204, i64 %conv186)
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.183, %land.lhs.true.181, %if.then.177
  %206 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp188 = icmp sgt i32 %206, 0
  br i1 %cmp188, label %if.then.190, label %if.end.195

if.then.190:                                      ; preds = %if.end.187
  %207 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id191 = getelementptr inbounds %struct.envelope, %struct.envelope* %207, i32 0, i32 25
  %208 = load i8*, i8** %e_id191, align 8, !tbaa !18
  %209 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name192 = getelementptr inbounds %struct.milter, %struct.milter* %209, i32 0, i32 0
  %210 = load i8*, i8** %mf_name192, align 8, !tbaa !8
  %211 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fflags193 = getelementptr inbounds %struct.milter, %struct.milter* %211, i32 0, i32 3
  %212 = load i32, i32* %mf_fflags193, align 4, !tbaa !50
  %213 = load i32, i32* %mta_actions, align 4, !tbaa !16
  %conv194 = sext i32 %213 to i64
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %208, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.137, i32 0, i32 0), i8* %210, i32 %212, i64 %conv194)
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.190, %if.end.187
  %214 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %215 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %214, %struct.envelope* %215)
  br label %error

if.end.196:                                       ; preds = %if.end.172
  %216 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags197 = getelementptr inbounds %struct.milter, %struct.milter* %216, i32 0, i32 4
  %217 = load i32, i32* %mf_pflags197, align 4, !tbaa !52
  %218 = load i32, i32* %mta_prot_flags, align 4, !tbaa !16
  %and198 = and i32 %217, %218
  %219 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags199 = getelementptr inbounds %struct.milter, %struct.milter* %219, i32 0, i32 4
  %220 = load i32, i32* %mf_pflags199, align 4, !tbaa !52
  %cmp200 = icmp ne i32 %and198, %220
  br i1 %cmp200, label %if.then.202, label %if.end.221

if.then.202:                                      ; preds = %if.end.196
  %221 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv203 = zext i8 %221 to i32
  %cmp204 = icmp sge i32 %conv203, 5
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.212

land.lhs.true.206:                                ; preds = %if.then.202
  %222 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool207 = icmp ne i32 %222, 0
  br i1 %tobool207, label %if.end.212, label %if.then.208

if.then.208:                                      ; preds = %land.lhs.true.206
  %223 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name209 = getelementptr inbounds %struct.milter, %struct.milter* %223, i32 0, i32 0
  %224 = load i8*, i8** %mf_name209, align 8, !tbaa !8
  %225 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags210 = getelementptr inbounds %struct.milter, %struct.milter* %225, i32 0, i32 4
  %226 = load i32, i32* %mf_pflags210, align 4, !tbaa !52
  %227 = load i32, i32* %mta_prot_flags, align 4, !tbaa !16
  %conv211 = sext i32 %227 to i64
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.138, i32 0, i32 0), i8* %224, i32 %226, i64 %conv211)
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.208, %land.lhs.true.206, %if.then.202
  %228 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp213 = icmp sgt i32 %228, 0
  br i1 %cmp213, label %if.then.215, label %if.end.220

if.then.215:                                      ; preds = %if.end.212
  %229 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id216 = getelementptr inbounds %struct.envelope, %struct.envelope* %229, i32 0, i32 25
  %230 = load i8*, i8** %e_id216, align 8, !tbaa !18
  %231 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name217 = getelementptr inbounds %struct.milter, %struct.milter* %231, i32 0, i32 0
  %232 = load i8*, i8** %mf_name217, align 8, !tbaa !8
  %233 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags218 = getelementptr inbounds %struct.milter, %struct.milter* %233, i32 0, i32 4
  %234 = load i32, i32* %mf_pflags218, align 4, !tbaa !52
  %235 = load i32, i32* %mta_prot_flags, align 4, !tbaa !16
  %conv219 = sext i32 %235 to i64
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %230, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.139, i32 0, i32 0), i8* %232, i32 %234, i64 %conv219)
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.215, %if.end.212
  %236 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %237 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %236, %struct.envelope* %237)
  br label %error

if.end.221:                                       ; preds = %if.end.196
  %238 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fvers222 = getelementptr inbounds %struct.milter, %struct.milter* %238, i32 0, i32 2
  %239 = load i32, i32* %mf_fvers222, align 4, !tbaa !48
  %cmp223 = icmp sle i32 %239, 2
  br i1 %cmp223, label %if.then.225, label %if.end.229

if.then.225:                                      ; preds = %if.end.221
  %240 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags226 = getelementptr inbounds %struct.milter, %struct.milter* %240, i32 0, i32 4
  %241 = load i32, i32* %mf_pflags226, align 4, !tbaa !52
  %conv227 = sext i32 %241 to i64
  %or = or i64 %conv227, 256
  %conv228 = trunc i64 %or to i32
  store i32 %conv228, i32* %mf_pflags226, align 4, !tbaa !52
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.225, %if.end.221
  %242 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fvers230 = getelementptr inbounds %struct.milter, %struct.milter* %242, i32 0, i32 2
  %243 = load i32, i32* %mf_fvers230, align 4, !tbaa !48
  %cmp231 = icmp sle i32 %243, 3
  br i1 %cmp231, label %if.then.233, label %if.end.238

if.then.233:                                      ; preds = %if.end.229
  %244 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags234 = getelementptr inbounds %struct.milter, %struct.milter* %244, i32 0, i32 4
  %245 = load i32, i32* %mf_pflags234, align 4, !tbaa !52
  %conv235 = sext i32 %245 to i64
  %or236 = or i64 %conv235, 512
  %conv237 = trunc i64 %or236 to i32
  store i32 %conv237, i32* %mf_pflags234, align 4, !tbaa !52
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.233, %if.end.229
  %246 = load i64, i64* %rlen, align 8, !tbaa !13
  %cmp239 = icmp sgt i64 %246, 12
  br i1 %cmp239, label %if.then.241, label %if.end.244

if.then.241:                                      ; preds = %if.end.238
  %247 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %248 = load i8*, i8** %response, align 8, !tbaa !1
  %249 = load i64, i64* %rlen, align 8, !tbaa !13
  %conv242 = trunc i64 %249 to i32
  %call243 = call i32 @milter_getsymlist(%struct.milter* %247, i8* %248, i32 %conv242, i32 12)
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.241, %if.end.238
  %250 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fflags245 = getelementptr inbounds %struct.milter, %struct.milter* %250, i32 0, i32 3
  %251 = load i32, i32* %mf_fflags245, align 4, !tbaa !50
  %conv246 = sext i32 %251 to i64
  %and247 = and i64 %conv246, 8
  %cmp248 = icmp ne i64 %and247, 0
  br i1 %cmp248, label %if.then.250, label %if.end.252

if.then.250:                                      ; preds = %if.end.244
  %252 = load %struct.milters*, %struct.milters** %milters.addr, align 8, !tbaa !1
  %mis_flags = getelementptr inbounds %struct.milters, %struct.milters* %252, i32 0, i32 0
  %253 = load i32, i32* %mis_flags, align 4, !tbaa !53
  %or251 = or i32 %253, 1
  store i32 %or251, i32* %mis_flags, align 4, !tbaa !53
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.250, %if.end.244
  %254 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags253 = getelementptr inbounds %struct.milter, %struct.milter* %254, i32 0, i32 4
  %255 = load i32, i32* %mf_pflags253, align 4, !tbaa !52
  %conv254 = sext i32 %255 to i64
  %and255 = and i64 %conv254, 8
  %cmp256 = icmp ne i64 %and255, 0
  br i1 %cmp256, label %if.end.267, label %land.lhs.true.258

land.lhs.true.258:                                ; preds = %if.end.252
  %256 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags259 = getelementptr inbounds %struct.milter, %struct.milter* %256, i32 0, i32 4
  %257 = load i32, i32* %mf_pflags259, align 4, !tbaa !52
  %conv260 = sext i32 %257 to i64
  %and261 = and i64 %conv260, 32768
  %cmp262 = icmp ne i64 %and261, 0
  br i1 %cmp262, label %if.end.267, label %if.then.264

if.then.264:                                      ; preds = %land.lhs.true.258
  %258 = load %struct.milters*, %struct.milters** %milters.addr, align 8, !tbaa !1
  %mis_flags265 = getelementptr inbounds %struct.milters, %struct.milters* %258, i32 0, i32 0
  %259 = load i32, i32* %mis_flags265, align 4, !tbaa !53
  %or266 = or i32 %259, 2
  store i32 %or266, i32* %mis_flags265, align 4, !tbaa !53
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.264, %land.lhs.true.258, %if.end.252
  %260 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv268 = zext i8 %260 to i32
  %cmp269 = icmp sge i32 %conv268, 5
  br i1 %cmp269, label %land.lhs.true.271, label %if.end.278

land.lhs.true.271:                                ; preds = %if.end.267
  %261 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool272 = icmp ne i32 %261, 0
  br i1 %tobool272, label %if.end.278, label %if.then.273

if.then.273:                                      ; preds = %land.lhs.true.271
  %262 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name274 = getelementptr inbounds %struct.milter, %struct.milter* %262, i32 0, i32 0
  %263 = load i8*, i8** %mf_name274, align 8, !tbaa !8
  %264 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fvers275 = getelementptr inbounds %struct.milter, %struct.milter* %264, i32 0, i32 2
  %265 = load i32, i32* %mf_fvers275, align 4, !tbaa !48
  %266 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_fflags276 = getelementptr inbounds %struct.milter, %struct.milter* %266, i32 0, i32 3
  %267 = load i32, i32* %mf_fflags276, align 4, !tbaa !50
  %268 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags277 = getelementptr inbounds %struct.milter, %struct.milter* %268, i32 0, i32 4
  %269 = load i32, i32* %mf_pflags277, align 4, !tbaa !52
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.140, i32 0, i32 0), i8* %263, i32 %265, i32 %267, i32 %269)
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.273, %land.lhs.true.271, %if.end.267
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

error:                                            ; preds = %if.end.220, %if.end.195, %if.end.171
  %270 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp279 = icmp ne i8* %270, null
  br i1 %cmp279, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %error
  %271 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %271, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2600)
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.281, %error
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.282, %if.end.278, %if.end.129, %if.end.107, %if.end.82, %if.then.57, %if.then.24, %if.end
  %272 = bitcast [12 x i8]* %data to i8*
  call void @llvm.lifetime.end(i64 12, i8* %272) #1
  %273 = bitcast i8** %response to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #1
  %274 = bitcast i64* %rlen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #1
  %275 = bitcast i32* %mta_actions to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast i32* %mta_prot_flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast i32* %mta_prot_vers to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #1
  %278 = bitcast i32* %pflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  %279 = bitcast i32* %fflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #1
  %280 = bitcast i32* %fvers to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #1
  call void @llvm.lifetime.end(i64 1, i8* %rcmd) #1
  %281 = load i32, i32* %retval
  ret i32 %281
}

; Function Attrs: nounwind uwtable
define internal void @milter_error(%struct.milter* %m, %struct.envelope* %e) #0 {
entry:
  %m.addr = alloca %struct.milter*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock = getelementptr inbounds %struct.milter, %struct.milter* %0, i32 0, i32 6
  %1 = load i32, i32* %mf_sock, align 4, !tbaa !12
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock1 = getelementptr inbounds %struct.milter, %struct.milter* %2, i32 0, i32 6
  %3 = load i32, i32* %mf_sock1, align 4, !tbaa !12
  %call = call i32 @close(i32 %3)
  %4 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock2 = getelementptr inbounds %struct.milter, %struct.milter* %4, i32 0, i32 6
  store i32 -1, i32* %mf_sock2, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %5, i32 0, i32 7
  store i8 69, i8* %mf_state, align 1, !tbaa !11
  %6 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp3 = icmp sgt i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %7, i32 0, i32 25
  %8 = load i8*, i8** %e_id, align 8, !tbaa !18
  %9 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %9, i32 0, i32 0
  %10 = load i8*, i8** %mf_name, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.146, i32 0, i32 0), i8* %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @milter_quit(%struct.envelope* %e) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %i = alloca i32, align 4
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %3, i32 0, i32 25
  %4 = load i8*, i8** %e_id, align 8, !tbaa !18
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i32 0, i32 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom
  %6 = load %struct.milter*, %struct.milter** %arrayidx, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.milter* %6, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom4
  %8 = load %struct.milter*, %struct.milter** %arrayidx5, align 8, !tbaa !1
  %9 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_quit_filter(%struct.milter* %8, %struct.envelope* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !16
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @milter_connect(i8* %hostname, %union.bigsockaddr* byval align 8 %addr, %struct.envelope* %e, i8* %state) #0 {
entry:
  %hostname.addr = alloca i8*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %state.addr = alloca i8*, align 8
  %family = alloca i8, align 1
  %port = alloca i16, align 2
  %buf = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %response = alloca i8*, align 8
  %sockinfo = alloca i8*, align 8
  %s = alloca i64, align 8
  %__v = alloca i16, align 2
  %__x = alloca i16, align 2
  %tmp = alloca i16, align 2
  store i8* %hostname, i8** %hostname.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %state, i8** %state.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %family) #1
  %0 = bitcast i16* %port to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %response to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %sockinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* null, i8** %sockinfo, align 8, !tbaa !1
  %5 = bitcast i64* %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %6 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %hostname.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp2 = icmp sgt i32 %9, 9
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %10 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %10, i32 0, i32 25
  %11 = load i8*, i8** %e_id, align 8, !tbaa !18
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %sa = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa, i32 0, i32 0
  %12 = load i16, i16* %sa_family, align 2, !tbaa !24
  %conv6 = zext i16 %12 to i32
  switch i32 %conv6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end.5
  store i8 76, i8* %family, align 1, !tbaa !5
  %13 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  %14 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #1
  store i16 0, i16* %__x, align 2, !tbaa !6
  %15 = load i16, i16* %__x, align 2, !tbaa !6
  %16 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %15) #11, !srcloc !55
  store i16 %16, i16* %__v, align 2, !tbaa !6
  %17 = load i16, i16* %__v, align 2, !tbaa !6
  store i16 %17, i16* %tmp, !tbaa !6
  %18 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %18) #1
  %19 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %19) #1
  %20 = load i16, i16* %tmp, !tbaa !6
  store i16 %20, i16* %port, align 2, !tbaa !6
  %sunix = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_un*
  %sun_path = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %sunix, i32 0, i32 1
  %arraydecay = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path, i32 0, i32 0
  store i8* %arraydecay, i8** %sockinfo, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end.5
  store i8 52, i8* %family, align 1, !tbaa !5
  %sin = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_in*
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 1
  %21 = load i16, i16* %sin_port, align 2, !tbaa !32
  store i16 %21, i16* %port, align 2, !tbaa !6
  %sin8 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_in*
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin8, i32 0, i32 2
  %coerce.dive = getelementptr %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  %22 = load i32, i32* %coerce.dive, align 4
  %call = call i8* @inet_ntoa(i32 %22) #1
  store i8* %call, i8** %sockinfo, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.5
  store i8 85, i8* %family, align 1, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb
  %23 = load i8*, i8** %hostname.addr, align 8, !tbaa !1
  %call9 = call i64 @strlen(i8* %23) #12
  %add = add i64 %call9, 1
  %add10 = add i64 %add, 1
  store i64 %add10, i64* %s, align 8, !tbaa !13
  %24 = load i8, i8* %family, align 1, !tbaa !5
  %conv11 = sext i8 %24 to i32
  %cmp12 = icmp ne i32 %conv11, 85
  br i1 %cmp12, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %sw.epilog
  %25 = load i8*, i8** %sockinfo, align 8, !tbaa !1
  %call15 = call i64 @strlen(i8* %25) #12
  %add16 = add i64 2, %call15
  %add17 = add i64 %add16, 1
  %26 = load i64, i64* %s, align 8, !tbaa !13
  %add18 = add i64 %26, %add17
  store i64 %add18, i64* %s, align 8, !tbaa !13
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %sw.epilog
  %27 = load i64, i64* %s, align 8, !tbaa !13
  %conv20 = trunc i64 %27 to i32
  %call21 = call i8* @xalloc_tagged(i32 %conv20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 3950)
  store i8* %call21, i8** %buf, align 8, !tbaa !1
  %28 = load i8*, i8** %buf, align 8, !tbaa !1
  store i8* %28, i8** %bp, align 8, !tbaa !1
  %29 = load i8*, i8** %bp, align 8, !tbaa !1
  %30 = load i8*, i8** %hostname.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %hostname.addr, align 8, !tbaa !1
  %call22 = call i64 @strlen(i8* %31) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 %call22, i32 1, i1 false)
  %32 = load i8*, i8** %hostname.addr, align 8, !tbaa !1
  %call23 = call i64 @strlen(i8* %32) #12
  %33 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %call23
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  %34 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  store i8 0, i8* %34, align 1, !tbaa !5
  %35 = load i8*, i8** %bp, align 8, !tbaa !1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %family, i64 1, i32 1, i1 false)
  %36 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %add.ptr24, i8** %bp, align 8, !tbaa !1
  %37 = load i8, i8* %family, align 1, !tbaa !5
  %conv25 = sext i8 %37 to i32
  %cmp26 = icmp ne i32 %conv25, 85
  br i1 %cmp26, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %if.end.19
  %38 = load i8*, i8** %bp, align 8, !tbaa !1
  %39 = bitcast i16* %port to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 2, i32 1, i1 false)
  %40 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %add.ptr29, i8** %bp, align 8, !tbaa !1
  %41 = load i8*, i8** %bp, align 8, !tbaa !1
  %42 = load i8*, i8** %sockinfo, align 8, !tbaa !1
  %43 = load i8*, i8** %sockinfo, align 8, !tbaa !1
  %call30 = call i64 @strlen(i8* %43) #12
  %add31 = add i64 %call30, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 %add31, i32 1, i1 false)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %if.end.19
  %44 = load i8*, i8** %buf, align 8, !tbaa !1
  %45 = load i64, i64* %s, align 8, !tbaa !13
  %46 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %47 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %call33 = call i8* @milter_command(i32 67, i8* %44, i64 %45, i32 0, %struct.envelope* %46, i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 0)
  store i8* %call33, i8** %response, align 8, !tbaa !1
  %48 = load i8*, i8** %buf, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 3970)
  %49 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %50 = load i8, i8* %49, align 1, !tbaa !5
  %conv34 = sext i8 %50 to i32
  %cmp35 = icmp ne i32 %conv34, 99
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.end.32
  %51 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp38 = icmp sgt i32 %51, 9
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.then.37
  %52 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id41 = getelementptr inbounds %struct.envelope, %struct.envelope* %52, i32 0, i32 25
  %53 = load i8*, i8** %e_id41, align 8, !tbaa !18
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.then.37
  %54 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_quit(%struct.envelope* %54)
  br label %if.end.43

if.else:                                          ; preds = %if.end.32
  %55 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_per_connection_check(%struct.envelope* %55)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.end.42
  %56 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !5
  %conv44 = sext i8 %57 to i32
  %cmp45 = icmp eq i32 %conv44, 121
  br i1 %cmp45, label %if.then.47, label %if.end.67

if.then.47:                                       ; preds = %if.end.43
  %58 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp48 = icmp ne i8* %58, null
  br i1 %cmp48, label %land.lhs.true.50, label %if.else.61

land.lhs.true.50:                                 ; preds = %if.then.47
  %59 = load i8*, i8** %response, align 8, !tbaa !1
  %60 = load i8, i8* %59, align 1, !tbaa !5
  %conv51 = sext i8 %60 to i32
  %cmp52 = icmp eq i32 %conv51, 52
  br i1 %cmp52, label %if.then.54, label %if.else.61

if.then.54:                                       ; preds = %land.lhs.true.50
  %61 = load i8*, i8** %response, align 8, !tbaa !1
  %call55 = call i32 @strncmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i64 4) #12
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.then.54
  %62 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %62, align 1, !tbaa !5
  br label %if.end.60

if.else.59:                                       ; preds = %if.then.54
  %63 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %63, align 1, !tbaa !5
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.62

if.else.61:                                       ; preds = %land.lhs.true.50, %if.then.47
  %64 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %64, align 1, !tbaa !5
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.end.60
  %65 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp63 = icmp ne i8* %65, null
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.62
  %66 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4007)
  store i8* null, i8** %response, align 8, !tbaa !1
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.62
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.43
  %67 = load i8*, i8** %response, align 8, !tbaa !1
  %68 = bitcast i64* %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i8** %sockinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i8** %response to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i16* %port to i8*
  call void @llvm.lifetime.end(i64 2, i8* %73) #1
  call void @llvm.lifetime.end(i64 1, i8* %family) #1
  ret i8* %67
}

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i8* @milter_command(i32 %cmd, i8* %data, i64 %sz, i32 %stage, %struct.envelope* %e, i8* %state, i8* %where, i32 %cmd_error) #0 {
entry:
  %cmd.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %sz.addr = alloca i64, align 8
  %stage.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %state.addr = alloca i8*, align 8
  %where.addr = alloca i8*, align 8
  %cmd_error.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %command = alloca i8, align 1
  %response = alloca i8*, align 8
  %tn = alloca i64, align 8
  %m = alloca %struct.milter*, align 8
  %cleanup.dest.slot = alloca i32
  %idx = alloca i32, align 4
  %macros = alloca i8**, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp224 = alloca i32, align 4
  store i32 %cmd, i32* %cmd.addr, align 4, !tbaa !16
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %sz, i64* %sz.addr, align 8, !tbaa !13
  store i32 %stage, i32* %stage.addr, align 4, !tbaa !16
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %state, i8** %state.addr, align 8, !tbaa !1
  store i8* %where, i8** %where.addr, align 8, !tbaa !1
  store i32 %cmd_error, i32* %cmd_error.addr, align 4, !tbaa !16
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %command) #1
  %1 = load i32, i32* %cmd.addr, align 4, !tbaa !16
  %conv = trunc i32 %1 to i8
  store i8 %conv, i8* %command, align 1, !tbaa !5
  %2 = bitcast i8** %response to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %response, align 8, !tbaa !1
  %3 = bitcast i64* %tn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 0, i64* %tn, align 8, !tbaa !13
  %4 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv1 = zext i8 %4 to i32
  %cmp = icmp sge i32 %conv1, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8, i8* %command, align 1, !tbaa !5
  %conv3 = sext i8 %6 to i32
  %7 = load i64, i64* %sz.addr, align 8, !tbaa !13
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.147, i32 0, i32 0), i32 %conv3, i64 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 99, i8* %8, align 1, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom
  %10 = load %struct.milter*, %struct.milter** %arrayidx, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.milter* %10, null
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom6
  %13 = load %struct.milter*, %struct.milter** %arrayidx7, align 8, !tbaa !1
  store %struct.milter* %13, %struct.milter** %m, align 8, !tbaa !1
  %14 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %14, i32 0, i32 7
  %15 = load i8, i8* %mf_state, align 1, !tbaa !11
  %conv8 = sext i8 %15 to i32
  %cmp9 = icmp eq i32 %conv8, 69
  br i1 %cmp9, label %if.then.11, label %if.end.64

if.then.11:                                       ; preds = %for.body
  %16 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv12 = zext i8 %16 to i32
  %cmp13 = icmp sge i32 %conv12, 100
  br i1 %cmp13, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %if.then.11
  %17 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %if.else, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.15
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 36
  %19 = load i8*, i8** %e_quarmsg, align 8, !tbaa !39
  %cmp18 = icmp eq i8* %19, null
  br i1 %cmp18, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.then.17
  %20 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %20, i32 0, i32 52
  %21 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !40
  %call = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg21 = getelementptr inbounds %struct.envelope, %struct.envelope* %22, i32 0, i32 36
  store i8* %call, i8** %e_quarmsg21, align 8, !tbaa !39
  %23 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %23, i32 0, i32 46
  %call22 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %24 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg23 = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 36
  %25 = load i8*, i8** %e_quarmsg23, align 8, !tbaa !39
  %26 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 %call22, i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2225, i32 %26)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.then.17
  br label %if.end.63

if.else:                                          ; preds = %land.lhs.true.15, %if.then.11
  %27 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv25 = zext i8 %27 to i32
  %cmp26 = icmp sge i32 %conv25, 101
  br i1 %cmp26, label %land.lhs.true.28, label %if.else.42

land.lhs.true.28:                                 ; preds = %if.else
  %28 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool29 = icmp ne i32 %28, 0
  br i1 %tobool29, label %if.else.42, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.28
  %29 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg31 = getelementptr inbounds %struct.envelope, %struct.envelope* %29, i32 0, i32 36
  %30 = load i8*, i8** %e_quarmsg31, align 8, !tbaa !39
  %cmp32 = icmp eq i8* %30, null
  br i1 %cmp32, label %if.then.34, label %if.end.41

if.then.34:                                       ; preds = %if.then.30
  %31 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool35 = getelementptr inbounds %struct.envelope, %struct.envelope* %31, i32 0, i32 52
  %32 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool35, align 8, !tbaa !40
  %call36 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %33 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg37 = getelementptr inbounds %struct.envelope, %struct.envelope* %33, i32 0, i32 36
  store i8* %call36, i8** %e_quarmsg37, align 8, !tbaa !39
  %34 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro38 = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 46
  %call39 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %35 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg40 = getelementptr inbounds %struct.envelope, %struct.envelope* %35, i32 0, i32 36
  %36 = load i8*, i8** %e_quarmsg40, align 8, !tbaa !39
  %37 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro38, i32 2, i32 %call39, i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2225, i32 %37)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.34, %if.then.30
  br label %if.end.62

if.else.42:                                       ; preds = %land.lhs.true.28, %if.else
  %38 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags = getelementptr inbounds %struct.milter, %struct.milter* %38, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags, i32 0, i64 2
  %39 = load i32, i32* %arrayidx43, align 4, !tbaa !16
  %and = and i32 %39, 1048576
  %tobool44 = icmp ne i32 %and, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.else.42
  %40 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %40, align 1, !tbaa !5
  br label %if.end.61

if.else.46:                                       ; preds = %if.else.42
  %41 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags47 = getelementptr inbounds %struct.milter, %struct.milter* %41, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags47, i32 0, i64 1
  %42 = load i32, i32* %arrayidx48, align 4, !tbaa !16
  %and49 = and i32 %42, 1048576
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.else.46
  %43 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %43, align 1, !tbaa !5
  br label %if.end.60

if.else.52:                                       ; preds = %if.else.46
  %44 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags53 = getelementptr inbounds %struct.milter, %struct.milter* %44, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags53, i32 0, i64 2
  %45 = load i32, i32* %arrayidx54, align 4, !tbaa !16
  %and55 = and i32 %45, 262144
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.else.52
  %46 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %46, align 1, !tbaa !5
  br label %if.end.59

if.else.58:                                       ; preds = %if.else.52
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.250

if.end.59:                                        ; preds = %if.then.57
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.51
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.45
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.41
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.24
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.250

if.end.64:                                        ; preds = %for.body
  %47 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_sock = getelementptr inbounds %struct.milter, %struct.milter* %47, i32 0, i32 6
  %48 = load i32, i32* %mf_sock, align 4, !tbaa !12
  %cmp65 = icmp slt i32 %48, 0
  br i1 %cmp65, label %if.then.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.64
  %49 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state67 = getelementptr inbounds %struct.milter, %struct.milter* %49, i32 0, i32 7
  %50 = load i8, i8* %mf_state67, align 1, !tbaa !11
  %conv68 = sext i8 %50 to i32
  %cmp69 = icmp ne i32 %conv68, 79
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.77

land.lhs.true.71:                                 ; preds = %lor.lhs.false
  %51 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state72 = getelementptr inbounds %struct.milter, %struct.milter* %51, i32 0, i32 7
  %52 = load i8, i8* %mf_state72, align 1, !tbaa !11
  %conv73 = sext i8 %52 to i32
  %cmp74 = icmp ne i32 %conv73, 77
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.71, %if.end.64
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.250

if.end.77:                                        ; preds = %land.lhs.true.71, %lor.lhs.false
  %53 = load i32, i32* %stage.addr, align 4, !tbaa !16
  %cmp78 = icmp sge i32 %53, 0
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.175

land.lhs.true.80:                                 ; preds = %if.end.77
  %54 = load i32, i32* %stage.addr, align 4, !tbaa !16
  %cmp81 = icmp sle i32 %54, 6
  br i1 %cmp81, label %if.then.83, label %if.end.175

if.then.83:                                       ; preds = %land.lhs.true.80
  %55 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = bitcast i8*** %macros to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_lflags = getelementptr inbounds %struct.milter, %struct.milter* %57, i32 0, i32 8
  %58 = load i8, i8* %mf_lflags, align 1, !tbaa !56
  %conv84 = sext i8 %58 to i32
  %59 = load i32, i32* %stage.addr, align 4, !tbaa !16
  %shl = shl i32 1, %59
  %and85 = and i32 %conv84, %shl
  %cmp86 = icmp ne i32 %and85, 0
  br i1 %cmp86, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %if.then.83
  %60 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_idx = getelementptr inbounds %struct.milter, %struct.milter* %60, i32 0, i32 9
  %61 = load i32, i32* %mf_idx, align 4, !tbaa !17
  store i32 %61, i32* %idx, align 4, !tbaa !16
  br label %if.end.90

if.else.89:                                       ; preds = %if.then.83
  store i32 0, i32* %idx, align 4, !tbaa !16
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.89, %if.then.88
  %62 = load i32, i32* %idx, align 4, !tbaa !16
  %cmp91 = icmp sge i32 %62, 0
  br i1 %cmp91, label %land.lhs.true.93, label %lor.rhs

land.lhs.true.93:                                 ; preds = %if.end.90
  %63 = load i32, i32* %idx, align 4, !tbaa !16
  %cmp94 = icmp sle i32 %63, 25
  br i1 %cmp94, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.93, %if.end.90
  call void @sm_abort_at(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2243, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.43, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %64, %land.lhs.true.93
  %65 = phi i1 [ true, %land.lhs.true.93 ], [ false, %64 ]
  %lor.ext = zext i1 %65 to i32
  %66 = load i32, i32* %idx, align 4, !tbaa !16
  %idxprom96 = sext i32 %66 to i64
  %67 = load i32, i32* %stage.addr, align 4, !tbaa !16
  %idxprom97 = sext i32 %67 to i64
  %arrayidx98 = getelementptr inbounds [7 x [26 x [51 x i8*]]], [7 x [26 x [51 x i8*]]]* @MilterMacros, i32 0, i64 %idxprom97
  %arrayidx99 = getelementptr inbounds [26 x [51 x i8*]], [26 x [51 x i8*]]* %arrayidx98, i32 0, i64 %idxprom96
  %arraydecay = getelementptr inbounds [51 x i8*], [51 x i8*]* %arrayidx99, i32 0, i32 0
  store i8** %arraydecay, i8*** %macros, align 8, !tbaa !1
  %68 = load i8**, i8*** %macros, align 8, !tbaa !1
  %cmp100 = icmp ne i8** %68, null
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.173

land.lhs.true.102:                                ; preds = %lor.end
  %69 = load i8**, i8*** %macros, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i8*, i8** %69, i64 0
  %70 = load i8*, i8** %arrayidx103, align 8, !tbaa !1
  %cmp104 = icmp ne i8* %70, null
  br i1 %cmp104, label %if.then.106, label %if.end.173

if.then.106:                                      ; preds = %land.lhs.true.102
  %71 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %72 = load i8**, i8*** %macros, align 8, !tbaa !1
  %73 = load i8, i8* %command, align 1, !tbaa !5
  %conv107 = sext i8 %73 to i32
  %74 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_send_macros(%struct.milter* %71, i8** %72, i32 %conv107, %struct.envelope* %74)
  %75 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state108 = getelementptr inbounds %struct.milter, %struct.milter* %75, i32 0, i32 7
  %76 = load i8, i8* %mf_state108, align 1, !tbaa !11
  %conv109 = sext i8 %76 to i32
  %cmp110 = icmp eq i32 %conv109, 69
  br i1 %cmp110, label %if.then.112, label %if.end.172

if.then.112:                                      ; preds = %if.then.106
  %77 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv113 = zext i8 %77 to i32
  %cmp114 = icmp sge i32 %conv113, 100
  br i1 %cmp114, label %land.lhs.true.116, label %if.else.130

land.lhs.true.116:                                ; preds = %if.then.112
  %78 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool117 = icmp ne i32 %78, 0
  br i1 %tobool117, label %if.else.130, label %if.then.118

if.then.118:                                      ; preds = %land.lhs.true.116
  %79 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg119 = getelementptr inbounds %struct.envelope, %struct.envelope* %79, i32 0, i32 36
  %80 = load i8*, i8** %e_quarmsg119, align 8, !tbaa !39
  %cmp120 = icmp eq i8* %80, null
  br i1 %cmp120, label %if.then.122, label %if.end.129

if.then.122:                                      ; preds = %if.then.118
  %81 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool123 = getelementptr inbounds %struct.envelope, %struct.envelope* %81, i32 0, i32 52
  %82 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool123, align 8, !tbaa !40
  %call124 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %83 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg125 = getelementptr inbounds %struct.envelope, %struct.envelope* %83, i32 0, i32 36
  store i8* %call124, i8** %e_quarmsg125, align 8, !tbaa !39
  %84 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro126 = getelementptr inbounds %struct.envelope, %struct.envelope* %84, i32 0, i32 46
  %call127 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %85 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg128 = getelementptr inbounds %struct.envelope, %struct.envelope* %85, i32 0, i32 36
  %86 = load i8*, i8** %e_quarmsg128, align 8, !tbaa !39
  %87 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro126, i32 2, i32 %call127, i8* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2252, i32 %87)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.122, %if.then.118
  br label %if.end.171

if.else.130:                                      ; preds = %land.lhs.true.116, %if.then.112
  %88 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv131 = zext i8 %88 to i32
  %cmp132 = icmp sge i32 %conv131, 101
  br i1 %cmp132, label %land.lhs.true.134, label %if.else.148

land.lhs.true.134:                                ; preds = %if.else.130
  %89 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool135 = icmp ne i32 %89, 0
  br i1 %tobool135, label %if.else.148, label %if.then.136

if.then.136:                                      ; preds = %land.lhs.true.134
  %90 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg137 = getelementptr inbounds %struct.envelope, %struct.envelope* %90, i32 0, i32 36
  %91 = load i8*, i8** %e_quarmsg137, align 8, !tbaa !39
  %cmp138 = icmp eq i8* %91, null
  br i1 %cmp138, label %if.then.140, label %if.end.147

if.then.140:                                      ; preds = %if.then.136
  %92 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool141 = getelementptr inbounds %struct.envelope, %struct.envelope* %92, i32 0, i32 52
  %93 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool141, align 8, !tbaa !40
  %call142 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %94 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg143 = getelementptr inbounds %struct.envelope, %struct.envelope* %94, i32 0, i32 36
  store i8* %call142, i8** %e_quarmsg143, align 8, !tbaa !39
  %95 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro144 = getelementptr inbounds %struct.envelope, %struct.envelope* %95, i32 0, i32 46
  %call145 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %96 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg146 = getelementptr inbounds %struct.envelope, %struct.envelope* %96, i32 0, i32 36
  %97 = load i8*, i8** %e_quarmsg146, align 8, !tbaa !39
  %98 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro144, i32 2, i32 %call145, i8* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2252, i32 %98)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.140, %if.then.136
  br label %if.end.170

if.else.148:                                      ; preds = %land.lhs.true.134, %if.else.130
  %99 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags149 = getelementptr inbounds %struct.milter, %struct.milter* %99, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags149, i32 0, i64 2
  %100 = load i32, i32* %arrayidx150, align 4, !tbaa !16
  %and151 = and i32 %100, 1048576
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %if.else.148
  %101 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %101, align 1, !tbaa !5
  br label %if.end.169

if.else.154:                                      ; preds = %if.else.148
  %102 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags155 = getelementptr inbounds %struct.milter, %struct.milter* %102, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags155, i32 0, i64 1
  %103 = load i32, i32* %arrayidx156, align 4, !tbaa !16
  %and157 = and i32 %103, 1048576
  %tobool158 = icmp ne i32 %and157, 0
  br i1 %tobool158, label %if.then.159, label %if.else.160

if.then.159:                                      ; preds = %if.else.154
  %104 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %104, align 1, !tbaa !5
  br label %if.end.168

if.else.160:                                      ; preds = %if.else.154
  %105 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags161 = getelementptr inbounds %struct.milter, %struct.milter* %105, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags161, i32 0, i64 2
  %106 = load i32, i32* %arrayidx162, align 4, !tbaa !16
  %and163 = and i32 %106, 262144
  %tobool164 = icmp ne i32 %and163, 0
  br i1 %tobool164, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %if.else.160
  %107 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %107, align 1, !tbaa !5
  br label %if.end.167

if.else.166:                                      ; preds = %if.else.160
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.167:                                       ; preds = %if.then.165
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.159
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.153
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.147
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.end.129
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.172:                                       ; preds = %if.then.106
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %land.lhs.true.102, %lor.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.173, %if.end.171, %if.else.166
  %108 = bitcast i8*** %macros to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.250 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.175

if.end.175:                                       ; preds = %cleanup.cont, %land.lhs.true.80, %if.end.77
  %110 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp176 = icmp sgt i32 %110, 21
  br i1 %cmp176, label %if.then.178, label %if.end.180

if.then.178:                                      ; preds = %if.end.175
  %call179 = call i64 @curtime()
  store i64 %call179, i64* %tn, align 8, !tbaa !13
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.178, %if.end.175
  %111 = load i32, i32* %cmd_error.addr, align 4, !tbaa !16
  %tobool181 = icmp ne i32 %111, 0
  br i1 %tobool181, label %land.lhs.true.182, label %if.end.234

land.lhs.true.182:                                ; preds = %if.end.180
  %112 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  %113 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.38 to i64)), i64 1), label %land.lhs.true.183, label %cond.false

land.lhs.true.183:                                ; preds = %land.lhs.true.182
  store i64 4, i64* %__s2_len, align 8, !tbaa !13
  %114 = load i64, i64* %__s2_len, align 8, !tbaa !13
  %cmp184 = icmp ult i64 %114, 4
  br i1 %cmp184, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.183
  %115 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #1
  %116 = load i8*, i8** %where.addr, align 8, !tbaa !1
  store i8* %116, i8** %__s1, align 8, !tbaa !1
  %117 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #1
  %118 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i8, i8* %118, i64 0
  %119 = load i8, i8* %arrayidx188, align 1, !tbaa !5
  %conv189 = zext i8 %119 to i32
  %120 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), align 1, !tbaa !5
  %conv190 = zext i8 %120 to i32
  %sub = sub nsw i32 %conv189, %conv190
  store i32 %sub, i32* %__result, align 4, !tbaa !16
  %121 = load i64, i64* %__s2_len, align 8, !tbaa !13
  %cmp191 = icmp ugt i64 %121, 0
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.223

land.lhs.true.193:                                ; preds = %cond.true
  %122 = load i32, i32* %__result, align 4, !tbaa !16
  %cmp194 = icmp eq i32 %122, 0
  br i1 %cmp194, label %if.then.196, label %if.end.223

if.then.196:                                      ; preds = %land.lhs.true.193
  %123 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i8, i8* %123, i64 1
  %124 = load i8, i8* %arrayidx197, align 1, !tbaa !5
  %conv198 = zext i8 %124 to i32
  %125 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i64 1), align 1, !tbaa !5
  %conv199 = zext i8 %125 to i32
  %sub200 = sub nsw i32 %conv198, %conv199
  store i32 %sub200, i32* %__result, align 4, !tbaa !16
  %126 = load i64, i64* %__s2_len, align 8, !tbaa !13
  %cmp201 = icmp ugt i64 %126, 1
  br i1 %cmp201, label %land.lhs.true.203, label %if.end.222

land.lhs.true.203:                                ; preds = %if.then.196
  %127 = load i32, i32* %__result, align 4, !tbaa !16
  %cmp204 = icmp eq i32 %127, 0
  br i1 %cmp204, label %if.then.206, label %if.end.222

if.then.206:                                      ; preds = %land.lhs.true.203
  %128 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds i8, i8* %128, i64 2
  %129 = load i8, i8* %arrayidx207, align 1, !tbaa !5
  %conv208 = zext i8 %129 to i32
  %130 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i64 2), align 1, !tbaa !5
  %conv209 = zext i8 %130 to i32
  %sub210 = sub nsw i32 %conv208, %conv209
  store i32 %sub210, i32* %__result, align 4, !tbaa !16
  %131 = load i64, i64* %__s2_len, align 8, !tbaa !13
  %cmp211 = icmp ugt i64 %131, 2
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.221

land.lhs.true.213:                                ; preds = %if.then.206
  %132 = load i32, i32* %__result, align 4, !tbaa !16
  %cmp214 = icmp eq i32 %132, 0
  br i1 %cmp214, label %if.then.216, label %if.end.221

if.then.216:                                      ; preds = %land.lhs.true.213
  %133 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx217 = getelementptr inbounds i8, i8* %133, i64 3
  %134 = load i8, i8* %arrayidx217, align 1, !tbaa !5
  %conv218 = zext i8 %134 to i32
  %135 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i64 3), align 1, !tbaa !5
  %conv219 = zext i8 %135 to i32
  %sub220 = sub nsw i32 %conv218, %conv219
  store i32 %sub220, i32* %__result, align 4, !tbaa !16
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.216, %land.lhs.true.213, %if.then.206
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %land.lhs.true.203, %if.then.196
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %land.lhs.true.193, %cond.true
  %136 = load i32, i32* %__result, align 4, !tbaa !16
  store i32 %136, i32* %tmp224, !tbaa !16
  %137 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = load i32, i32* %tmp224, !tbaa !16
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.183, %land.lhs.true.182
  %140 = load i8*, i8** %where.addr, align 8, !tbaa !1
  %call225 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.223
  %cond = phi i32 [ %139, %if.end.223 ], [ %call225, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !16
  %141 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = load i32, i32* %tmp, !tbaa !16
  %cmp226 = icmp ne i32 %143, 0
  br i1 %cmp226, label %if.then.233, label %lor.lhs.false.228

lor.lhs.false.228:                                ; preds = %cond.end
  %144 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_pflags = getelementptr inbounds %struct.milter, %struct.milter* %144, i32 0, i32 4
  %145 = load i32, i32* %mf_pflags, align 4, !tbaa !52
  %conv229 = sext i32 %145 to i64
  %and230 = and i64 %conv229, 2048
  %cmp231 = icmp eq i64 %and230, 0
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %lor.lhs.false.228, %cond.end
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.250

if.end.234:                                       ; preds = %lor.lhs.false.228, %if.end.180
  %146 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %147 = load i8, i8* %command, align 1, !tbaa !5
  %conv235 = sext i8 %147 to i32
  %148 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %149 = load i64, i64* %sz.addr, align 8, !tbaa !13
  %150 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %151 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %152 = load i8*, i8** %where.addr, align 8, !tbaa !1
  %call236 = call i8* @milter_send_command(%struct.milter* %146, i32 %conv235, i8* %148, i64 %149, %struct.envelope* %150, i8* %151, i8* %152)
  store i8* %call236, i8** %response, align 8, !tbaa !1
  %153 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp237 = icmp sgt i32 %153, 21
  br i1 %cmp237, label %if.then.239, label %if.end.244

if.then.239:                                      ; preds = %if.end.234
  %154 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %154, i32 0, i32 25
  %155 = load i8*, i8** %e_id, align 8, !tbaa !18
  %156 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %156, i32 0, i32 0
  %157 = load i8*, i8** %mf_name, align 8, !tbaa !8
  %158 = load i8, i8* %command, align 1, !tbaa !5
  %conv240 = sext i8 %158 to i32
  %159 = load i64, i64* %tn, align 8, !tbaa !13
  %call241 = call i64 @curtime()
  %sub242 = sub nsw i64 %159, %call241
  %conv243 = trunc i64 %sub242 to i32
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %155, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.148, i32 0, i32 0), i8* %157, i32 %conv240, i32 %conv243)
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.239, %if.end.234
  %160 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %161 = load i8, i8* %160, align 1, !tbaa !5
  %conv245 = sext i8 %161 to i32
  %cmp246 = icmp ne i32 %conv245, 99
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.end.244
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.250

if.end.249:                                       ; preds = %if.end.244
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.250

cleanup.250:                                      ; preds = %if.end.249, %if.then.248, %if.then.233, %cleanup, %if.then.76, %if.end.63, %if.else.58
  %162 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %cleanup.dest.251 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.251, label %unreachable [
    i32 0, label %cleanup.cont.252
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

cleanup.cont.252:                                 ; preds = %cleanup.250
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.252, %cleanup.250
  %163 = load i32, i32* %i, align 4, !tbaa !16
  %inc = add nsw i32 %163, 1
  store i32 %inc, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %cleanup.250, %for.cond
  %164 = load i8*, i8** %response, align 8, !tbaa !1
  store i32 1, i32* %cleanup.dest.slot
  %165 = bitcast i64* %tn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast i8** %response to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  call void @llvm.lifetime.end(i64 1, i8* %command) #1
  %167 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  ret i8* %164

unreachable:                                      ; preds = %cleanup.250
  unreachable
}

declare void @sm_free_tagged(i8*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @milter_per_connection_check(%struct.envelope* %e) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %i = alloca i32, align 4
  %m = alloca %struct.milter*, align 8
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom
  %2 = load %struct.milter*, %struct.milter** %arrayidx, align 8, !tbaa !1
  %cmp = icmp ne %struct.milter* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom1
  %5 = load %struct.milter*, %struct.milter** %arrayidx2, align 8, !tbaa !1
  store %struct.milter* %5, %struct.milter** %m, align 8, !tbaa !1
  %6 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %6, i32 0, i32 7
  %7 = load i8, i8* %mf_state, align 1, !tbaa !11
  %conv = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 81
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %9 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_quit_filter(%struct.milter* %8, %struct.envelope* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !16
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #7

; Function Attrs: nounwind uwtable
define i8* @milter_helo(i8* %helo, %struct.envelope* %e, i8* %state) #0 {
entry:
  %helo.addr = alloca i8*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %state.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %response = alloca i8*, align 8
  %m = alloca %struct.milter*, align 8
  store i8* %helo, i8** %helo.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %state, i8** %state.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %response to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %2 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %helo.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom
  %6 = load %struct.milter*, %struct.milter** %arrayidx, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.milter* %6, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom4
  %9 = load %struct.milter*, %struct.milter** %arrayidx5, align 8, !tbaa !1
  store %struct.milter* %9, %struct.milter** %m, align 8, !tbaa !1
  %10 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %10, i32 0, i32 7
  %11 = load i8, i8* %mf_state, align 1, !tbaa !11
  %conv6 = sext i8 %11 to i32
  switch i32 %conv6, label %sw.epilog [
    i32 77, label %sw.bb
    i32 68, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %for.body
  %12 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %13 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_abort_filter(%struct.milter* %12, %struct.envelope* %13)
  br label %sw.bb.7

sw.bb.7:                                          ; preds = %for.body, %sw.bb
  %14 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state8 = getelementptr inbounds %struct.milter, %struct.milter* %14, i32 0, i32 7
  store i8 79, i8* %mf_state8, align 1, !tbaa !11
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.7
  %15 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %16 = load i32, i32* %i, align 4, !tbaa !16
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %helo.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %helo.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %18) #12
  %add = add i64 %call, 1
  %19 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %call9 = call i8* @milter_command(i32 72, i8* %17, i64 %add, i32 1, %struct.envelope* %19, i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 0)
  store i8* %call9, i8** %response, align 8, !tbaa !1
  %21 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_per_connection_check(%struct.envelope* %21)
  %22 = load i8*, i8** %response, align 8, !tbaa !1
  %23 = bitcast i8** %response to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define internal void @milter_abort_filter(%struct.milter* %m, %struct.envelope* %e) #0 {
entry:
  %m.addr = alloca %struct.milter*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %2, i32 0, i32 0
  %3 = load i8*, i8** %mf_name, align 8, !tbaa !8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.149, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp2 = icmp sgt i32 %4, 10
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %5 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %5, i32 0, i32 25
  %6 = load i8*, i8** %e_id, align 8, !tbaa !18
  %7 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name5 = getelementptr inbounds %struct.milter, %struct.milter* %7, i32 0, i32 0
  %8 = load i8*, i8** %mf_name5, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.150, i32 0, i32 0), i8* %8)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %9 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock = getelementptr inbounds %struct.milter, %struct.milter* %9, i32 0, i32 6
  %10 = load i32, i32* %mf_sock, align 4, !tbaa !12
  %cmp7 = icmp slt i32 %10, 0
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %11 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %11, i32 0, i32 7
  %12 = load i8, i8* %mf_state, align 1, !tbaa !11
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp ne i32 %conv9, 77
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.6
  br label %if.end.20

if.end.13:                                        ; preds = %lor.lhs.false
  %13 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %14 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_timeout = getelementptr inbounds %struct.milter, %struct.milter* %14, i32 0, i32 10
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout, i32 0, i64 0
  %15 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %16 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call = call i8* @milter_write(%struct.milter* %13, i32 65, i8* null, i64 0, i64 %15, %struct.envelope* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.151, i32 0, i32 0))
  %17 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state14 = getelementptr inbounds %struct.milter, %struct.milter* %17, i32 0, i32 7
  %18 = load i8, i8* %mf_state14, align 1, !tbaa !11
  %conv15 = sext i8 %18 to i32
  %cmp16 = icmp ne i32 %conv15, 69
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.13
  %19 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state19 = getelementptr inbounds %struct.milter, %struct.milter* %19, i32 0, i32 7
  store i8 68, i8* %mf_state19, align 1, !tbaa !11
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.12, %if.then.18, %if.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @milter_envfrom(i8** %args, %struct.envelope* %e, i8* %state) #0 {
entry:
  %retval = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %state.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %buf = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %response = alloca i8*, align 8
  %s = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %m = alloca %struct.milter*, align 8
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %state, i8** %state.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %response to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0))
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp2 = icmp ne i8* %9, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom4 = sext i32 %10 to i64
  %11 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8*, i8** %11, i64 %idxprom4
  %12 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !16
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %entry
  %14 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx6, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %15, null
  br i1 %cmp7, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end
  %16 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %16, align 1, !tbaa !5
  %17 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp10 = icmp sgt i32 %17, 10
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 25
  %19 = load i8*, i8** %e_id, align 8, !tbaa !18
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.9
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.26, %if.end.14
  %20 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom16
  %21 = load %struct.milter*, %struct.milter** %arrayidx17, align 8, !tbaa !1
  %cmp18 = icmp ne %struct.milter* %21, null
  br i1 %cmp18, label %for.body.20, label %for.end.28

for.body.20:                                      ; preds = %for.cond.15
  %22 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom21
  %24 = load %struct.milter*, %struct.milter** %arrayidx22, align 8, !tbaa !1
  store %struct.milter* %24, %struct.milter** %m, align 8, !tbaa !1
  %25 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %25, i32 0, i32 7
  %26 = load i8, i8* %mf_state, align 1, !tbaa !11
  %conv23 = sext i8 %26 to i32
  switch i32 %conv23, label %sw.epilog [
    i32 77, label %sw.bb
    i32 68, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %for.body.20
  %27 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_abort_filter(%struct.milter* %27, %struct.envelope* %28)
  br label %sw.bb.24

sw.bb.24:                                         ; preds = %for.body.20, %sw.bb
  %29 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state25 = getelementptr inbounds %struct.milter, %struct.milter* %29, i32 0, i32 7
  store i8 79, i8* %mf_state25, align 1, !tbaa !11
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.20, %sw.bb.24
  %30 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  br label %for.inc.26

for.inc.26:                                       ; preds = %sw.epilog
  %31 = load i32, i32* %i, align 4, !tbaa !16
  %inc27 = add nsw i32 %31, 1
  store i32 %inc27, i32* %i, align 4, !tbaa !16
  br label %for.cond.15

for.end.28:                                       ; preds = %for.cond.15
  store i64 0, i64* %s, align 8, !tbaa !13
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.38, %for.end.28
  %32 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom30 = sext i32 %32 to i64
  %33 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8*, i8** %33, i64 %idxprom30
  %34 = load i8*, i8** %arrayidx31, align 8, !tbaa !1
  %cmp32 = icmp ne i8* %34, null
  br i1 %cmp32, label %for.body.34, label %for.end.40

for.body.34:                                      ; preds = %for.cond.29
  %35 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom35 = sext i32 %35 to i64
  %36 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8*, i8** %36, i64 %idxprom35
  %37 = load i8*, i8** %arrayidx36, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %37) #12
  %add = add i64 %call, 1
  %38 = load i64, i64* %s, align 8, !tbaa !13
  %add37 = add i64 %38, %add
  store i64 %add37, i64* %s, align 8, !tbaa !13
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.34
  %39 = load i32, i32* %i, align 4, !tbaa !16
  %inc39 = add nsw i32 %39, 1
  store i32 %inc39, i32* %i, align 4, !tbaa !16
  br label %for.cond.29

for.end.40:                                       ; preds = %for.cond.29
  %40 = load i64, i64* %s, align 8, !tbaa !13
  %cmp41 = icmp slt i64 %40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.end.40
  %41 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %41, align 1, !tbaa !5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %for.end.40
  %42 = load i64, i64* %s, align 8, !tbaa !13
  %conv45 = trunc i64 %42 to i32
  %call46 = call i8* @xalloc_tagged(i32 %conv45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4135)
  store i8* %call46, i8** %buf, align 8, !tbaa !1
  %43 = load i8*, i8** %buf, align 8, !tbaa !1
  store i8* %43, i8** %bp, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.58, %if.end.44
  %44 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom48 = sext i32 %44 to i64
  %45 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8*, i8** %45, i64 %idxprom48
  %46 = load i8*, i8** %arrayidx49, align 8, !tbaa !1
  %cmp50 = icmp ne i8* %46, null
  br i1 %cmp50, label %for.body.52, label %for.end.60

for.body.52:                                      ; preds = %for.cond.47
  %47 = load i8*, i8** %bp, align 8, !tbaa !1
  %48 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom53 = sext i32 %48 to i64
  %49 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8*, i8** %49, i64 %idxprom53
  %50 = load i8*, i8** %arrayidx54, align 8, !tbaa !1
  %51 = load i64, i64* %s, align 8, !tbaa !13
  %52 = load i8*, i8** %bp, align 8, !tbaa !1
  %53 = load i8*, i8** %buf, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %53 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %51, %sub.ptr.sub
  %call55 = call i64 @sm_strlcpy(i8* %47, i8* %50, i64 %sub)
  %54 = load i8*, i8** %bp, align 8, !tbaa !1
  %call56 = call i64 @strlen(i8* %54) #12
  %add57 = add i64 %call56, 1
  %55 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 %add57
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.52
  %56 = load i32, i32* %i, align 4, !tbaa !16
  %inc59 = add nsw i32 %56, 1
  store i32 %inc59, i32* %i, align 4, !tbaa !16
  br label %for.cond.47

for.end.60:                                       ; preds = %for.cond.47
  %57 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp61 = icmp sgt i32 %57, 14
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %for.end.60
  %58 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id64 = getelementptr inbounds %struct.envelope, %struct.envelope* %58, i32 0, i32 25
  %59 = load i8*, i8** %e_id64, align 8, !tbaa !18
  %60 = load i8*, i8** %buf, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* %60)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %for.end.60
  %61 = load i8*, i8** %buf, align 8, !tbaa !1
  %62 = load i64, i64* %s, align 8, !tbaa !13
  %63 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %64 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %call66 = call i8* @milter_command(i32 77, i8* %61, i64 %62, i32 2, %struct.envelope* %63, i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 0)
  store i8* %call66, i8** %response, align 8, !tbaa !1
  %65 = load i8*, i8** %buf, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4149)
  %66 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %67 = load i8, i8* %66, align 1, !tbaa !5
  %conv67 = sext i8 %67 to i32
  %cmp68 = icmp eq i32 %conv67, 121
  br i1 %cmp68, label %if.then.81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.65
  %68 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !5
  %conv70 = sext i8 %69 to i32
  %cmp71 = icmp eq i32 %conv70, 114
  br i1 %cmp71, label %if.then.81, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false
  %70 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %71 = load i8, i8* %70, align 1, !tbaa !5
  %conv74 = sext i8 %71 to i32
  %cmp75 = icmp eq i32 %conv74, 100
  br i1 %cmp75, label %if.then.81, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false.73
  %72 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %73 = load i8, i8* %72, align 1, !tbaa !5
  %conv78 = sext i8 %73 to i32
  %cmp79 = icmp eq i32 %conv78, 116
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %lor.lhs.false.77, %lor.lhs.false.73, %lor.lhs.false, %if.end.65
  %74 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_abort(%struct.envelope* %74)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %lor.lhs.false.77
  %75 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp83 = icmp sgt i32 %75, 10
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.91

land.lhs.true.85:                                 ; preds = %if.end.82
  %76 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %77 = load i8, i8* %76, align 1, !tbaa !5
  %conv86 = sext i8 %77 to i32
  %cmp87 = icmp eq i32 %conv86, 114
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %land.lhs.true.85
  %78 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id90 = getelementptr inbounds %struct.envelope, %struct.envelope* %78, i32 0, i32 25
  %79 = load i8*, i8** %e_id90, align 8, !tbaa !18
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %land.lhs.true.85, %if.end.82
  %80 = load i8*, i8** %response, align 8, !tbaa !1
  store i8* %80, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.91, %if.then.43, %if.end.13
  %81 = bitcast i64* %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i8** %response to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = load i8*, i8** %retval
  ret i8* %86
}

declare i64 @sm_strlcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @milter_abort(%struct.envelope* %e) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %i = alloca i32, align 4
  %m = alloca %struct.milter*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom
  %4 = load %struct.milter*, %struct.milter** %arrayidx, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.milter* %4, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom4
  %7 = load %struct.milter*, %struct.milter** %arrayidx5, align 8, !tbaa !1
  store %struct.milter* %7, %struct.milter** %m, align 8, !tbaa !1
  %8 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_sock = getelementptr inbounds %struct.milter, %struct.milter* %8, i32 0, i32 6
  %9 = load i32, i32* %mf_sock, align 4, !tbaa !12
  %cmp6 = icmp slt i32 %9, 0
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %10, i32 0, i32 7
  %11 = load i8, i8* %mf_state, align 1, !tbaa !11
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp ne i32 %conv8, 77
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false
  %12 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %13 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_abort_filter(%struct.milter* %12, %struct.envelope* %13)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11
  %14 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %15 = load i32, i32* %i, align 4, !tbaa !16
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i8* @milter_envrcpt(i8** %args, %struct.envelope* %e, i8* %state, i32 %rcpt_error) #0 {
entry:
  %retval = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %state.addr = alloca i8*, align 8
  %rcpt_error.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buf = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %response = alloca i8*, align 8
  %s = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %state, i8** %state.addr, align 8, !tbaa !1
  store i32 %rcpt_error, i32* %rcpt_error.addr, align 4, !tbaa !16
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %response to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0))
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp2 = icmp ne i8* %9, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom4 = sext i32 %10 to i64
  %11 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8*, i8** %11, i64 %idxprom4
  %12 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !16
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %entry
  %14 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx6, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %15, null
  br i1 %cmp7, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end
  %16 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %16, align 1, !tbaa !5
  %17 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp10 = icmp sgt i32 %17, 10
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 25
  %19 = load i8*, i8** %e_id, align 8, !tbaa !18
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.9
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  store i64 0, i64* %s, align 8, !tbaa !13
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.24, %if.end.14
  %20 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom16 = sext i32 %20 to i64
  %21 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8*, i8** %21, i64 %idxprom16
  %22 = load i8*, i8** %arrayidx17, align 8, !tbaa !1
  %cmp18 = icmp ne i8* %22, null
  br i1 %cmp18, label %for.body.20, label %for.end.26

for.body.20:                                      ; preds = %for.cond.15
  %23 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom21 = sext i32 %23 to i64
  %24 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8*, i8** %24, i64 %idxprom21
  %25 = load i8*, i8** %arrayidx22, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %25) #12
  %add = add i64 %call, 1
  %26 = load i64, i64* %s, align 8, !tbaa !13
  %add23 = add i64 %26, %add
  store i64 %add23, i64* %s, align 8, !tbaa !13
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.20
  %27 = load i32, i32* %i, align 4, !tbaa !16
  %inc25 = add nsw i32 %27, 1
  store i32 %inc25, i32* %i, align 4, !tbaa !16
  br label %for.cond.15

for.end.26:                                       ; preds = %for.cond.15
  %28 = load i64, i64* %s, align 8, !tbaa !13
  %cmp27 = icmp slt i64 %28, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.end.26
  %29 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %29, align 1, !tbaa !5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %for.end.26
  %30 = load i64, i64* %s, align 8, !tbaa !13
  %conv31 = trunc i64 %30 to i32
  %call32 = call i8* @xalloc_tagged(i32 %conv31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4216)
  store i8* %call32, i8** %buf, align 8, !tbaa !1
  %31 = load i8*, i8** %buf, align 8, !tbaa !1
  store i8* %31, i8** %bp, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.44, %if.end.30
  %32 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom34 = sext i32 %32 to i64
  %33 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8*, i8** %33, i64 %idxprom34
  %34 = load i8*, i8** %arrayidx35, align 8, !tbaa !1
  %cmp36 = icmp ne i8* %34, null
  br i1 %cmp36, label %for.body.38, label %for.end.46

for.body.38:                                      ; preds = %for.cond.33
  %35 = load i8*, i8** %bp, align 8, !tbaa !1
  %36 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom39 = sext i32 %36 to i64
  %37 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i8*, i8** %37, i64 %idxprom39
  %38 = load i8*, i8** %arrayidx40, align 8, !tbaa !1
  %39 = load i64, i64* %s, align 8, !tbaa !13
  %40 = load i8*, i8** %bp, align 8, !tbaa !1
  %41 = load i8*, i8** %buf, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %39, %sub.ptr.sub
  %call41 = call i64 @sm_strlcpy(i8* %35, i8* %38, i64 %sub)
  %42 = load i8*, i8** %bp, align 8, !tbaa !1
  %call42 = call i64 @strlen(i8* %42) #12
  %add43 = add i64 %call42, 1
  %43 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 %add43
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.38
  %44 = load i32, i32* %i, align 4, !tbaa !16
  %inc45 = add nsw i32 %44, 1
  store i32 %inc45, i32* %i, align 4, !tbaa !16
  br label %for.cond.33

for.end.46:                                       ; preds = %for.cond.33
  %45 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp47 = icmp sgt i32 %45, 14
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %for.end.46
  %46 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id50 = getelementptr inbounds %struct.envelope, %struct.envelope* %46, i32 0, i32 25
  %47 = load i8*, i8** %e_id50, align 8, !tbaa !18
  %48 = load i8*, i8** %buf, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0), i8* %48)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %for.end.46
  %49 = load i8*, i8** %buf, align 8, !tbaa !1
  %50 = load i64, i64* %s, align 8, !tbaa !13
  %51 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %52 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %53 = load i32, i32* %rcpt_error.addr, align 4, !tbaa !16
  %call52 = call i8* @milter_command(i32 82, i8* %49, i64 %50, i32 3, %struct.envelope* %51, i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 %53)
  store i8* %call52, i8** %response, align 8, !tbaa !1
  %54 = load i8*, i8** %buf, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4230)
  %55 = load i8*, i8** %response, align 8, !tbaa !1
  store i8* %55, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.51, %if.then.29, %if.end.13
  %56 = bitcast i64* %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i8** %response to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = load i8*, i8** %retval
  ret i8* %61
}

; Function Attrs: nounwind uwtable
define i8* @milter_data_cmd(%struct.envelope* %e, i8* %state) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %state.addr = alloca i8*, align 8
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %state, i8** %state.addr, align 8, !tbaa !1
  %0 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %call = call i8* @milter_command(i32 84, i8* null, i64 0, i32 4, %struct.envelope* %2, i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @milter_data(%struct.envelope* %e, i8* %state) #0 {
entry:
  %retval = alloca i8*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %state.addr = alloca i8*, align 8
  %replbody = alloca i32, align 4
  %replfailed = alloca i32, align 4
  %rewind = alloca i32, align 4
  %dfopen = alloca i32, align 4
  %newfilter = alloca i32, align 4
  %rcmd = alloca i8, align 1
  %i = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %response = alloca i8*, align 8
  %eomsent = alloca i64, align 8
  %rlen = alloca i64, align 8
  %idx = alloca i32, align 4
  %macros = alloca i8**, align 8
  %m = alloca %struct.milter*, align 8
  %cleanup.dest.slot = alloca i32
  %ptr = alloca i8*, align 8
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %state, i8** %state.addr, align 8, !tbaa !1
  %0 = bitcast i32* %replbody to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %replbody, align 4, !tbaa !16
  %1 = bitcast i32* %replfailed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %replfailed, align 4, !tbaa !16
  %2 = bitcast i32* %rewind to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %rewind, align 4, !tbaa !16
  %3 = bitcast i32* %dfopen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %dfopen, align 4, !tbaa !16
  %4 = bitcast i32* %newfilter to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  call void @llvm.lifetime.start(i64 1, i8* %rcmd) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i8** %response to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i8* null, i8** %response, align 8, !tbaa !1
  %8 = bitcast i64* %eomsent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %rlen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %10 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 99, i8* %12, align 1, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom
  %14 = load %struct.milter*, %struct.milter** %arrayidx, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.milter* %14, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i8*** %macros to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom4 = sext i32 %18 to i64
  %arrayidx5 = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom4
  %19 = load %struct.milter*, %struct.milter** %arrayidx5, align 8, !tbaa !1
  store %struct.milter* %19, %struct.milter** %m, align 8, !tbaa !1
  %20 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !5
  %conv6 = sext i8 %21 to i32
  %cmp7 = icmp ne i32 %conv6, 99
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.14

land.lhs.true.9:                                  ; preds = %for.body
  %22 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !5
  %conv10 = sext i8 %23 to i32
  %cmp11 = icmp ne i32 %conv10, 97
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.9
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %land.lhs.true.9, %for.body
  %24 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 99, i8* %24, align 1, !tbaa !5
  store i32 1, i32* %newfilter, align 4, !tbaa !16
  %25 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %25, i32 0, i32 7
  %26 = load i8, i8* %mf_state, align 1, !tbaa !11
  %conv15 = sext i8 %26 to i32
  %cmp16 = icmp eq i32 %conv15, 69
  br i1 %cmp16, label %if.then.18, label %if.end.71

if.then.18:                                       ; preds = %if.end.14
  %27 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv19 = zext i8 %27 to i32
  %cmp20 = icmp sge i32 %conv19, 100
  br i1 %cmp20, label %land.lhs.true.22, label %if.else

land.lhs.true.22:                                 ; preds = %if.then.18
  %28 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool23 = icmp ne i32 %28, 0
  br i1 %tobool23, label %if.else, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.22
  %29 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg = getelementptr inbounds %struct.envelope, %struct.envelope* %29, i32 0, i32 36
  %30 = load i8*, i8** %e_quarmsg, align 8, !tbaa !39
  %cmp25 = icmp eq i8* %30, null
  br i1 %cmp25, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.then.24
  %31 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %31, i32 0, i32 52
  %32 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !40
  %call = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %33 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg28 = getelementptr inbounds %struct.envelope, %struct.envelope* %33, i32 0, i32 36
  store i8* %call, i8** %e_quarmsg28, align 8, !tbaa !39
  %34 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 46
  %call29 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %35 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg30 = getelementptr inbounds %struct.envelope, %struct.envelope* %35, i32 0, i32 36
  %36 = load i8*, i8** %e_quarmsg30, align 8, !tbaa !39
  %37 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 %call29, i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4347, i32 %37)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.then.24
  br label %if.end.70

if.else:                                          ; preds = %land.lhs.true.22, %if.then.18
  %38 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv32 = zext i8 %38 to i32
  %cmp33 = icmp sge i32 %conv32, 101
  br i1 %cmp33, label %land.lhs.true.35, label %if.else.49

land.lhs.true.35:                                 ; preds = %if.else
  %39 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool36 = icmp ne i32 %39, 0
  br i1 %tobool36, label %if.else.49, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.35
  %40 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg38 = getelementptr inbounds %struct.envelope, %struct.envelope* %40, i32 0, i32 36
  %41 = load i8*, i8** %e_quarmsg38, align 8, !tbaa !39
  %cmp39 = icmp eq i8* %41, null
  br i1 %cmp39, label %if.then.41, label %if.end.48

if.then.41:                                       ; preds = %if.then.37
  %42 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool42 = getelementptr inbounds %struct.envelope, %struct.envelope* %42, i32 0, i32 52
  %43 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool42, align 8, !tbaa !40
  %call43 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %44 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg44 = getelementptr inbounds %struct.envelope, %struct.envelope* %44, i32 0, i32 36
  store i8* %call43, i8** %e_quarmsg44, align 8, !tbaa !39
  %45 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro45 = getelementptr inbounds %struct.envelope, %struct.envelope* %45, i32 0, i32 46
  %call46 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %46 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg47 = getelementptr inbounds %struct.envelope, %struct.envelope* %46, i32 0, i32 36
  %47 = load i8*, i8** %e_quarmsg47, align 8, !tbaa !39
  %48 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro45, i32 2, i32 %call46, i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4347, i32 %48)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.41, %if.then.37
  br label %if.end.69

if.else.49:                                       ; preds = %land.lhs.true.35, %if.else
  %49 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags = getelementptr inbounds %struct.milter, %struct.milter* %49, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags, i32 0, i64 2
  %50 = load i32, i32* %arrayidx50, align 4, !tbaa !16
  %and = and i32 %50, 1048576
  %tobool51 = icmp ne i32 %and, 0
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.else.49
  %51 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %51, align 1, !tbaa !5
  br label %if.end.68

if.else.53:                                       ; preds = %if.else.49
  %52 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags54 = getelementptr inbounds %struct.milter, %struct.milter* %52, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags54, i32 0, i64 1
  %53 = load i32, i32* %arrayidx55, align 4, !tbaa !16
  %and56 = and i32 %53, 1048576
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else.53
  %54 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %54, align 1, !tbaa !5
  br label %if.end.67

if.else.59:                                       ; preds = %if.else.53
  %55 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags60 = getelementptr inbounds %struct.milter, %struct.milter* %55, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags60, i32 0, i64 2
  %56 = load i32, i32* %arrayidx61, align 4, !tbaa !16
  %and62 = and i32 %56, 262144
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.else.59
  %57 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %57, align 1, !tbaa !5
  br label %if.end.66

if.else.65:                                       ; preds = %if.else.59
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %if.then.64
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.58
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.52
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.48
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.31
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %if.end.14
  %58 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_sock = getelementptr inbounds %struct.milter, %struct.milter* %58, i32 0, i32 6
  %59 = load i32, i32* %mf_sock, align 4, !tbaa !12
  %cmp72 = icmp slt i32 %59, 0
  br i1 %cmp72, label %if.then.83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.71
  %60 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state74 = getelementptr inbounds %struct.milter, %struct.milter* %60, i32 0, i32 7
  %61 = load i8, i8* %mf_state74, align 1, !tbaa !11
  %conv75 = sext i8 %61 to i32
  %cmp76 = icmp ne i32 %conv75, 79
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.84

land.lhs.true.78:                                 ; preds = %lor.lhs.false
  %62 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state79 = getelementptr inbounds %struct.milter, %struct.milter* %62, i32 0, i32 7
  %63 = load i8, i8* %mf_state79, align 1, !tbaa !11
  %conv80 = sext i8 %63 to i32
  %cmp81 = icmp ne i32 %conv80, 77
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %land.lhs.true.78, %if.end.71
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.84:                                        ; preds = %land.lhs.true.78, %lor.lhs.false
  %64 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state85 = getelementptr inbounds %struct.milter, %struct.milter* %64, i32 0, i32 7
  store i8 77, i8* %mf_state85, align 1, !tbaa !11
  %65 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_pflags = getelementptr inbounds %struct.milter, %struct.milter* %65, i32 0, i32 4
  %66 = load i32, i32* %mf_pflags, align 4, !tbaa !52
  %conv86 = sext i32 %66 to i64
  %and87 = and i64 %conv86, 32
  %cmp88 = icmp ne i64 %and87, 0
  br i1 %cmp88, label %if.end.150, label %if.then.90

if.then.90:                                       ; preds = %if.end.84
  %67 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %68 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %69 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %call91 = call i8* @milter_headers(%struct.milter* %67, %struct.envelope* %68, i8* %69)
  store i8* %call91, i8** %response, align 8, !tbaa !1
  %70 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state92 = getelementptr inbounds %struct.milter, %struct.milter* %70, i32 0, i32 7
  %71 = load i8, i8* %mf_state92, align 1, !tbaa !11
  %conv93 = sext i8 %71 to i32
  %cmp94 = icmp eq i32 %conv93, 69
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.121

land.lhs.true.96:                                 ; preds = %if.then.90
  %72 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %73 = load i8, i8* %72, align 1, !tbaa !5
  %conv97 = sext i8 %73 to i32
  %cmp98 = icmp eq i32 %conv97, 99
  br i1 %cmp98, label %if.then.100, label %if.end.121

if.then.100:                                      ; preds = %land.lhs.true.96
  %74 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags101 = getelementptr inbounds %struct.milter, %struct.milter* %74, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags101, i32 0, i64 2
  %75 = load i32, i32* %arrayidx102, align 4, !tbaa !16
  %and103 = and i32 %75, 1048576
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %if.then.100
  %76 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %76, align 1, !tbaa !5
  br label %if.end.120

if.else.106:                                      ; preds = %if.then.100
  %77 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags107 = getelementptr inbounds %struct.milter, %struct.milter* %77, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags107, i32 0, i64 1
  %78 = load i32, i32* %arrayidx108, align 4, !tbaa !16
  %and109 = and i32 %78, 1048576
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %if.else.106
  %79 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %79, align 1, !tbaa !5
  br label %if.end.119

if.else.112:                                      ; preds = %if.else.106
  %80 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags113 = getelementptr inbounds %struct.milter, %struct.milter* %80, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags113, i32 0, i64 2
  %81 = load i32, i32* %arrayidx114, align 4, !tbaa !16
  %and115 = and i32 %81, 262144
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.else.112
  %82 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %82, align 1, !tbaa !5
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.else.112
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.111
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.105
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %land.lhs.true.96, %if.then.90
  %83 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %84 = load i8, i8* %83, align 1, !tbaa !5
  %conv122 = sext i8 %84 to i32
  %cmp123 = icmp eq i32 %conv122, 97
  br i1 %cmp123, label %if.then.135, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %if.end.121
  %85 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state126 = getelementptr inbounds %struct.milter, %struct.milter* %85, i32 0, i32 7
  %86 = load i8, i8* %mf_state126, align 1, !tbaa !11
  %conv127 = sext i8 %86 to i32
  %cmp128 = icmp eq i32 %conv127, 68
  br i1 %cmp128, label %if.then.135, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %lor.lhs.false.125
  %87 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state131 = getelementptr inbounds %struct.milter, %struct.milter* %87, i32 0, i32 7
  %88 = load i8, i8* %mf_state131, align 1, !tbaa !11
  %conv132 = sext i8 %88 to i32
  %cmp133 = icmp eq i32 %conv132, 69
  br i1 %cmp133, label %if.then.135, label %if.end.143

if.then.135:                                      ; preds = %lor.lhs.false.130, %lor.lhs.false.125, %if.end.121
  %89 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state136 = getelementptr inbounds %struct.milter, %struct.milter* %89, i32 0, i32 7
  %90 = load i8, i8* %mf_state136, align 1, !tbaa !11
  %conv137 = sext i8 %90 to i32
  %cmp138 = icmp ne i32 %conv137, 69
  br i1 %cmp138, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %if.then.135
  %91 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state141 = getelementptr inbounds %struct.milter, %struct.milter* %91, i32 0, i32 7
  store i8 68, i8* %mf_state141, align 1, !tbaa !11
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.140, %if.then.135
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.143:                                       ; preds = %lor.lhs.false.130
  %92 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %93 = load i8, i8* %92, align 1, !tbaa !5
  %conv144 = sext i8 %93 to i32
  %cmp145 = icmp ne i32 %conv144, 99
  br i1 %cmp145, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %if.end.143
  %94 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state148 = getelementptr inbounds %struct.milter, %struct.milter* %94, i32 0, i32 7
  store i8 68, i8* %mf_state148, align 1, !tbaa !11
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.149:                                       ; preds = %if.end.143
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.84
  %95 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_pflags151 = getelementptr inbounds %struct.milter, %struct.milter* %95, i32 0, i32 4
  %96 = load i32, i32* %mf_pflags151, align 4, !tbaa !52
  %conv152 = sext i32 %96 to i64
  %and153 = and i64 %conv152, 64
  %cmp154 = icmp ne i64 %and153, 0
  br i1 %cmp154, label %if.end.299, label %if.then.156

if.then.156:                                      ; preds = %if.end.150
  %97 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv157 = zext i8 %97 to i32
  %cmp158 = icmp sge i32 %conv157, 10
  br i1 %cmp158, label %land.lhs.true.160, label %if.end.163

land.lhs.true.160:                                ; preds = %if.then.156
  %98 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool161 = icmp ne i32 %98, 0
  br i1 %tobool161, label %if.end.163, label %if.then.162

if.then.162:                                      ; preds = %land.lhs.true.160
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.162, %land.lhs.true.160, %if.then.156
  %99 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_lflags = getelementptr inbounds %struct.milter, %struct.milter* %99, i32 0, i32 8
  %100 = load i8, i8* %mf_lflags, align 1, !tbaa !56
  %conv164 = sext i8 %100 to i32
  %and165 = and i32 %conv164, 64
  %cmp166 = icmp ne i32 %and165, 0
  br i1 %cmp166, label %if.then.168, label %if.else.169

if.then.168:                                      ; preds = %if.end.163
  %101 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_idx = getelementptr inbounds %struct.milter, %struct.milter* %101, i32 0, i32 9
  %102 = load i32, i32* %mf_idx, align 4, !tbaa !17
  store i32 %102, i32* %idx, align 4, !tbaa !16
  br label %if.end.170

if.else.169:                                      ; preds = %if.end.163
  store i32 0, i32* %idx, align 4, !tbaa !16
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.169, %if.then.168
  %103 = load i32, i32* %idx, align 4, !tbaa !16
  %cmp171 = icmp sge i32 %103, 0
  br i1 %cmp171, label %land.lhs.true.173, label %lor.rhs

land.lhs.true.173:                                ; preds = %if.end.170
  %104 = load i32, i32* %idx, align 4, !tbaa !16
  %cmp174 = icmp sle i32 %104, 25
  br i1 %cmp174, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.173, %if.end.170
  call void @sm_abort_at(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4375, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.43, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %105, %land.lhs.true.173
  %106 = phi i1 [ true, %land.lhs.true.173 ], [ false, %105 ]
  %lor.ext = zext i1 %106 to i32
  %107 = load i32, i32* %idx, align 4, !tbaa !16
  %idxprom176 = sext i32 %107 to i64
  %arrayidx177 = getelementptr inbounds [26 x [51 x i8*]], [26 x [51 x i8*]]* getelementptr inbounds ([7 x [26 x [51 x i8*]]], [7 x [26 x [51 x i8*]]]* @MilterMacros, i32 0, i64 6), i32 0, i64 %idxprom176
  %arraydecay = getelementptr inbounds [51 x i8*], [51 x i8*]* %arrayidx177, i32 0, i32 0
  store i8** %arraydecay, i8*** %macros, align 8, !tbaa !1
  %108 = load i8**, i8*** %macros, align 8, !tbaa !1
  %cmp178 = icmp ne i8** %108, null
  br i1 %cmp178, label %if.then.180, label %if.end.239

if.then.180:                                      ; preds = %lor.end
  %109 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %110 = load i8**, i8*** %macros, align 8, !tbaa !1
  %111 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_send_macros(%struct.milter* %109, i8** %110, i32 78, %struct.envelope* %111)
  %112 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state181 = getelementptr inbounds %struct.milter, %struct.milter* %112, i32 0, i32 7
  %113 = load i8, i8* %mf_state181, align 1, !tbaa !11
  %conv182 = sext i8 %113 to i32
  %cmp183 = icmp eq i32 %conv182, 69
  br i1 %cmp183, label %land.lhs.true.185, label %if.end.210

land.lhs.true.185:                                ; preds = %if.then.180
  %114 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %115 = load i8, i8* %114, align 1, !tbaa !5
  %conv186 = sext i8 %115 to i32
  %cmp187 = icmp eq i32 %conv186, 99
  br i1 %cmp187, label %if.then.189, label %if.end.210

if.then.189:                                      ; preds = %land.lhs.true.185
  %116 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags190 = getelementptr inbounds %struct.milter, %struct.milter* %116, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags190, i32 0, i64 2
  %117 = load i32, i32* %arrayidx191, align 4, !tbaa !16
  %and192 = and i32 %117, 1048576
  %tobool193 = icmp ne i32 %and192, 0
  br i1 %tobool193, label %if.then.194, label %if.else.195

if.then.194:                                      ; preds = %if.then.189
  %118 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %118, align 1, !tbaa !5
  br label %if.end.209

if.else.195:                                      ; preds = %if.then.189
  %119 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags196 = getelementptr inbounds %struct.milter, %struct.milter* %119, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags196, i32 0, i64 1
  %120 = load i32, i32* %arrayidx197, align 4, !tbaa !16
  %and198 = and i32 %120, 1048576
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %if.then.200, label %if.else.201

if.then.200:                                      ; preds = %if.else.195
  %121 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %121, align 1, !tbaa !5
  br label %if.end.208

if.else.201:                                      ; preds = %if.else.195
  %122 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags202 = getelementptr inbounds %struct.milter, %struct.milter* %122, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags202, i32 0, i64 2
  %123 = load i32, i32* %arrayidx203, align 4, !tbaa !16
  %and204 = and i32 %123, 262144
  %tobool205 = icmp ne i32 %and204, 0
  br i1 %tobool205, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.else.201
  %124 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %124, align 1, !tbaa !5
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.206, %if.else.201
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.then.200
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.194
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %land.lhs.true.185, %if.then.180
  %125 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %126 = load i8, i8* %125, align 1, !tbaa !5
  %conv211 = sext i8 %126 to i32
  %cmp212 = icmp eq i32 %conv211, 97
  br i1 %cmp212, label %if.then.224, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %if.end.210
  %127 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state215 = getelementptr inbounds %struct.milter, %struct.milter* %127, i32 0, i32 7
  %128 = load i8, i8* %mf_state215, align 1, !tbaa !11
  %conv216 = sext i8 %128 to i32
  %cmp217 = icmp eq i32 %conv216, 68
  br i1 %cmp217, label %if.then.224, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %lor.lhs.false.214
  %129 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state220 = getelementptr inbounds %struct.milter, %struct.milter* %129, i32 0, i32 7
  %130 = load i8, i8* %mf_state220, align 1, !tbaa !11
  %conv221 = sext i8 %130 to i32
  %cmp222 = icmp eq i32 %conv221, 69
  br i1 %cmp222, label %if.then.224, label %if.end.232

if.then.224:                                      ; preds = %lor.lhs.false.219, %lor.lhs.false.214, %if.end.210
  %131 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state225 = getelementptr inbounds %struct.milter, %struct.milter* %131, i32 0, i32 7
  %132 = load i8, i8* %mf_state225, align 1, !tbaa !11
  %conv226 = sext i8 %132 to i32
  %cmp227 = icmp ne i32 %conv226, 69
  br i1 %cmp227, label %if.then.229, label %if.end.231

if.then.229:                                      ; preds = %if.then.224
  %133 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state230 = getelementptr inbounds %struct.milter, %struct.milter* %133, i32 0, i32 7
  store i8 68, i8* %mf_state230, align 1, !tbaa !11
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.229, %if.then.224
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.232:                                       ; preds = %lor.lhs.false.219
  %134 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %135 = load i8, i8* %134, align 1, !tbaa !5
  %conv233 = sext i8 %135 to i32
  %cmp234 = icmp ne i32 %conv233, 99
  br i1 %cmp234, label %if.then.236, label %if.end.238

if.then.236:                                      ; preds = %if.end.232
  %136 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state237 = getelementptr inbounds %struct.milter, %struct.milter* %136, i32 0, i32 7
  store i8 68, i8* %mf_state237, align 1, !tbaa !11
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.238:                                       ; preds = %if.end.232
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %lor.end
  %137 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %138 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %139 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %call240 = call i8* @milter_send_command(%struct.milter* %137, i32 78, i8* null, i64 0, %struct.envelope* %138, i8* %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0))
  store i8* %call240, i8** %response, align 8, !tbaa !1
  %140 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state241 = getelementptr inbounds %struct.milter, %struct.milter* %140, i32 0, i32 7
  %141 = load i8, i8* %mf_state241, align 1, !tbaa !11
  %conv242 = sext i8 %141 to i32
  %cmp243 = icmp eq i32 %conv242, 69
  br i1 %cmp243, label %land.lhs.true.245, label %if.end.270

land.lhs.true.245:                                ; preds = %if.end.239
  %142 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %143 = load i8, i8* %142, align 1, !tbaa !5
  %conv246 = sext i8 %143 to i32
  %cmp247 = icmp eq i32 %conv246, 99
  br i1 %cmp247, label %if.then.249, label %if.end.270

if.then.249:                                      ; preds = %land.lhs.true.245
  %144 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags250 = getelementptr inbounds %struct.milter, %struct.milter* %144, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags250, i32 0, i64 2
  %145 = load i32, i32* %arrayidx251, align 4, !tbaa !16
  %and252 = and i32 %145, 1048576
  %tobool253 = icmp ne i32 %and252, 0
  br i1 %tobool253, label %if.then.254, label %if.else.255

if.then.254:                                      ; preds = %if.then.249
  %146 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %146, align 1, !tbaa !5
  br label %if.end.269

if.else.255:                                      ; preds = %if.then.249
  %147 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags256 = getelementptr inbounds %struct.milter, %struct.milter* %147, i32 0, i32 1
  %arrayidx257 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags256, i32 0, i64 1
  %148 = load i32, i32* %arrayidx257, align 4, !tbaa !16
  %and258 = and i32 %148, 1048576
  %tobool259 = icmp ne i32 %and258, 0
  br i1 %tobool259, label %if.then.260, label %if.else.261

if.then.260:                                      ; preds = %if.else.255
  %149 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %149, align 1, !tbaa !5
  br label %if.end.268

if.else.261:                                      ; preds = %if.else.255
  %150 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags262 = getelementptr inbounds %struct.milter, %struct.milter* %150, i32 0, i32 1
  %arrayidx263 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags262, i32 0, i64 2
  %151 = load i32, i32* %arrayidx263, align 4, !tbaa !16
  %and264 = and i32 %151, 262144
  %tobool265 = icmp ne i32 %and264, 0
  br i1 %tobool265, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %if.else.261
  %152 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %152, align 1, !tbaa !5
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.266, %if.else.261
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.then.260
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.then.254
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %land.lhs.true.245, %if.end.239
  %153 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %154 = load i8, i8* %153, align 1, !tbaa !5
  %conv271 = sext i8 %154 to i32
  %cmp272 = icmp eq i32 %conv271, 97
  br i1 %cmp272, label %if.then.284, label %lor.lhs.false.274

lor.lhs.false.274:                                ; preds = %if.end.270
  %155 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state275 = getelementptr inbounds %struct.milter, %struct.milter* %155, i32 0, i32 7
  %156 = load i8, i8* %mf_state275, align 1, !tbaa !11
  %conv276 = sext i8 %156 to i32
  %cmp277 = icmp eq i32 %conv276, 68
  br i1 %cmp277, label %if.then.284, label %lor.lhs.false.279

lor.lhs.false.279:                                ; preds = %lor.lhs.false.274
  %157 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state280 = getelementptr inbounds %struct.milter, %struct.milter* %157, i32 0, i32 7
  %158 = load i8, i8* %mf_state280, align 1, !tbaa !11
  %conv281 = sext i8 %158 to i32
  %cmp282 = icmp eq i32 %conv281, 69
  br i1 %cmp282, label %if.then.284, label %if.end.292

if.then.284:                                      ; preds = %lor.lhs.false.279, %lor.lhs.false.274, %if.end.270
  %159 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state285 = getelementptr inbounds %struct.milter, %struct.milter* %159, i32 0, i32 7
  %160 = load i8, i8* %mf_state285, align 1, !tbaa !11
  %conv286 = sext i8 %160 to i32
  %cmp287 = icmp ne i32 %conv286, 69
  br i1 %cmp287, label %if.then.289, label %if.end.291

if.then.289:                                      ; preds = %if.then.284
  %161 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state290 = getelementptr inbounds %struct.milter, %struct.milter* %161, i32 0, i32 7
  store i8 68, i8* %mf_state290, align 1, !tbaa !11
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.289, %if.then.284
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.292:                                       ; preds = %lor.lhs.false.279
  %162 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %163 = load i8, i8* %162, align 1, !tbaa !5
  %conv293 = sext i8 %163 to i32
  %cmp294 = icmp ne i32 %conv293, 99
  br i1 %cmp294, label %if.then.296, label %if.end.298

if.then.296:                                      ; preds = %if.end.292
  %164 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state297 = getelementptr inbounds %struct.milter, %struct.milter* %164, i32 0, i32 7
  store i8 68, i8* %mf_state297, align 1, !tbaa !11
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.298:                                       ; preds = %if.end.292
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %if.end.150
  %165 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_pflags300 = getelementptr inbounds %struct.milter, %struct.milter* %165, i32 0, i32 4
  %166 = load i32, i32* %mf_pflags300, align 4, !tbaa !52
  %conv301 = sext i32 %166 to i64
  %and302 = and i64 %conv301, 16
  %cmp303 = icmp ne i64 %and302, 0
  br i1 %cmp303, label %if.end.368, label %land.lhs.true.305

land.lhs.true.305:                                ; preds = %if.end.299
  %167 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp = getelementptr inbounds %struct.envelope, %struct.envelope* %167, i32 0, i32 24
  %168 = load %struct.sm_file*, %struct.sm_file** %e_dfp, align 8, !tbaa !57
  %cmp306 = icmp ne %struct.sm_file* %168, null
  br i1 %cmp306, label %if.then.308, label %if.end.368

if.then.308:                                      ; preds = %land.lhs.true.305
  store i32 1, i32* %rewind, align 4, !tbaa !16
  %169 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %170 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %171 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %call309 = call i8* @milter_body(%struct.milter* %169, %struct.envelope* %170, i8* %171)
  store i8* %call309, i8** %response, align 8, !tbaa !1
  %172 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state310 = getelementptr inbounds %struct.milter, %struct.milter* %172, i32 0, i32 7
  %173 = load i8, i8* %mf_state310, align 1, !tbaa !11
  %conv311 = sext i8 %173 to i32
  %cmp312 = icmp eq i32 %conv311, 69
  br i1 %cmp312, label %land.lhs.true.314, label %if.end.339

land.lhs.true.314:                                ; preds = %if.then.308
  %174 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %175 = load i8, i8* %174, align 1, !tbaa !5
  %conv315 = sext i8 %175 to i32
  %cmp316 = icmp eq i32 %conv315, 99
  br i1 %cmp316, label %if.then.318, label %if.end.339

if.then.318:                                      ; preds = %land.lhs.true.314
  %176 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags319 = getelementptr inbounds %struct.milter, %struct.milter* %176, i32 0, i32 1
  %arrayidx320 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags319, i32 0, i64 2
  %177 = load i32, i32* %arrayidx320, align 4, !tbaa !16
  %and321 = and i32 %177, 1048576
  %tobool322 = icmp ne i32 %and321, 0
  br i1 %tobool322, label %if.then.323, label %if.else.324

if.then.323:                                      ; preds = %if.then.318
  %178 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %178, align 1, !tbaa !5
  br label %if.end.338

if.else.324:                                      ; preds = %if.then.318
  %179 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags325 = getelementptr inbounds %struct.milter, %struct.milter* %179, i32 0, i32 1
  %arrayidx326 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags325, i32 0, i64 1
  %180 = load i32, i32* %arrayidx326, align 4, !tbaa !16
  %and327 = and i32 %180, 1048576
  %tobool328 = icmp ne i32 %and327, 0
  br i1 %tobool328, label %if.then.329, label %if.else.330

if.then.329:                                      ; preds = %if.else.324
  %181 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %181, align 1, !tbaa !5
  br label %if.end.337

if.else.330:                                      ; preds = %if.else.324
  %182 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags331 = getelementptr inbounds %struct.milter, %struct.milter* %182, i32 0, i32 1
  %arrayidx332 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags331, i32 0, i64 2
  %183 = load i32, i32* %arrayidx332, align 4, !tbaa !16
  %and333 = and i32 %183, 262144
  %tobool334 = icmp ne i32 %and333, 0
  br i1 %tobool334, label %if.then.335, label %if.end.336

if.then.335:                                      ; preds = %if.else.330
  %184 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %184, align 1, !tbaa !5
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.335, %if.else.330
  br label %if.end.337

if.end.337:                                       ; preds = %if.end.336, %if.then.329
  br label %if.end.338

if.end.338:                                       ; preds = %if.end.337, %if.then.323
  br label %if.end.339

if.end.339:                                       ; preds = %if.end.338, %land.lhs.true.314, %if.then.308
  %185 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %186 = load i8, i8* %185, align 1, !tbaa !5
  %conv340 = sext i8 %186 to i32
  %cmp341 = icmp eq i32 %conv340, 97
  br i1 %cmp341, label %if.then.353, label %lor.lhs.false.343

lor.lhs.false.343:                                ; preds = %if.end.339
  %187 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state344 = getelementptr inbounds %struct.milter, %struct.milter* %187, i32 0, i32 7
  %188 = load i8, i8* %mf_state344, align 1, !tbaa !11
  %conv345 = sext i8 %188 to i32
  %cmp346 = icmp eq i32 %conv345, 68
  br i1 %cmp346, label %if.then.353, label %lor.lhs.false.348

lor.lhs.false.348:                                ; preds = %lor.lhs.false.343
  %189 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state349 = getelementptr inbounds %struct.milter, %struct.milter* %189, i32 0, i32 7
  %190 = load i8, i8* %mf_state349, align 1, !tbaa !11
  %conv350 = sext i8 %190 to i32
  %cmp351 = icmp eq i32 %conv350, 69
  br i1 %cmp351, label %if.then.353, label %if.end.361

if.then.353:                                      ; preds = %lor.lhs.false.348, %lor.lhs.false.343, %if.end.339
  %191 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state354 = getelementptr inbounds %struct.milter, %struct.milter* %191, i32 0, i32 7
  %192 = load i8, i8* %mf_state354, align 1, !tbaa !11
  %conv355 = sext i8 %192 to i32
  %cmp356 = icmp ne i32 %conv355, 69
  br i1 %cmp356, label %if.then.358, label %if.end.360

if.then.358:                                      ; preds = %if.then.353
  %193 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state359 = getelementptr inbounds %struct.milter, %struct.milter* %193, i32 0, i32 7
  store i8 68, i8* %mf_state359, align 1, !tbaa !11
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.358, %if.then.353
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.361:                                       ; preds = %lor.lhs.false.348
  %194 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %195 = load i8, i8* %194, align 1, !tbaa !5
  %conv362 = sext i8 %195 to i32
  %cmp363 = icmp ne i32 %conv362, 99
  br i1 %cmp363, label %if.then.365, label %if.end.367

if.then.365:                                      ; preds = %if.end.361
  %196 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state366 = getelementptr inbounds %struct.milter, %struct.milter* %196, i32 0, i32 7
  store i8 68, i8* %mf_state366, align 1, !tbaa !11
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.367:                                       ; preds = %if.end.361
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %land.lhs.true.305, %if.end.299
  %197 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_lflags369 = getelementptr inbounds %struct.milter, %struct.milter* %197, i32 0, i32 8
  %198 = load i8, i8* %mf_lflags369, align 1, !tbaa !56
  %conv370 = sext i8 %198 to i32
  %and371 = and i32 %conv370, 64
  %cmp372 = icmp ne i32 %and371, 0
  br i1 %cmp372, label %if.then.374, label %if.else.376

if.then.374:                                      ; preds = %if.end.368
  %199 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_idx375 = getelementptr inbounds %struct.milter, %struct.milter* %199, i32 0, i32 9
  %200 = load i32, i32* %mf_idx375, align 4, !tbaa !17
  store i32 %200, i32* %idx, align 4, !tbaa !16
  br label %if.end.377

if.else.376:                                      ; preds = %if.end.368
  store i32 0, i32* %idx, align 4, !tbaa !16
  br label %if.end.377

if.end.377:                                       ; preds = %if.else.376, %if.then.374
  %201 = load i32, i32* %idx, align 4, !tbaa !16
  %cmp378 = icmp sge i32 %201, 0
  br i1 %cmp378, label %land.lhs.true.380, label %lor.rhs.383

land.lhs.true.380:                                ; preds = %if.end.377
  %202 = load i32, i32* %idx, align 4, !tbaa !16
  %cmp381 = icmp sle i32 %202, 25
  br i1 %cmp381, label %lor.end.384, label %lor.rhs.383

lor.rhs.383:                                      ; preds = %land.lhs.true.380, %if.end.377
  call void @sm_abort_at(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4403, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.43, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %lor.end.384

lor.end.384:                                      ; preds = %203, %land.lhs.true.380
  %204 = phi i1 [ true, %land.lhs.true.380 ], [ false, %203 ]
  %lor.ext385 = zext i1 %204 to i32
  %205 = load i32, i32* %idx, align 4, !tbaa !16
  %idxprom386 = sext i32 %205 to i64
  %arrayidx387 = getelementptr inbounds [26 x [51 x i8*]], [26 x [51 x i8*]]* getelementptr inbounds ([7 x [26 x [51 x i8*]]], [7 x [26 x [51 x i8*]]]* @MilterMacros, i32 0, i64 5), i32 0, i64 %idxprom386
  %arraydecay388 = getelementptr inbounds [51 x i8*], [51 x i8*]* %arrayidx387, i32 0, i32 0
  store i8** %arraydecay388, i8*** %macros, align 8, !tbaa !1
  %206 = load i8**, i8*** %macros, align 8, !tbaa !1
  %cmp389 = icmp ne i8** %206, null
  br i1 %cmp389, label %if.then.391, label %if.end.450

if.then.391:                                      ; preds = %lor.end.384
  %207 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %208 = load i8**, i8*** %macros, align 8, !tbaa !1
  %209 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_send_macros(%struct.milter* %207, i8** %208, i32 69, %struct.envelope* %209)
  %210 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state392 = getelementptr inbounds %struct.milter, %struct.milter* %210, i32 0, i32 7
  %211 = load i8, i8* %mf_state392, align 1, !tbaa !11
  %conv393 = sext i8 %211 to i32
  %cmp394 = icmp eq i32 %conv393, 69
  br i1 %cmp394, label %land.lhs.true.396, label %if.end.421

land.lhs.true.396:                                ; preds = %if.then.391
  %212 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %213 = load i8, i8* %212, align 1, !tbaa !5
  %conv397 = sext i8 %213 to i32
  %cmp398 = icmp eq i32 %conv397, 99
  br i1 %cmp398, label %if.then.400, label %if.end.421

if.then.400:                                      ; preds = %land.lhs.true.396
  %214 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags401 = getelementptr inbounds %struct.milter, %struct.milter* %214, i32 0, i32 1
  %arrayidx402 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags401, i32 0, i64 2
  %215 = load i32, i32* %arrayidx402, align 4, !tbaa !16
  %and403 = and i32 %215, 1048576
  %tobool404 = icmp ne i32 %and403, 0
  br i1 %tobool404, label %if.then.405, label %if.else.406

if.then.405:                                      ; preds = %if.then.400
  %216 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %216, align 1, !tbaa !5
  br label %if.end.420

if.else.406:                                      ; preds = %if.then.400
  %217 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags407 = getelementptr inbounds %struct.milter, %struct.milter* %217, i32 0, i32 1
  %arrayidx408 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags407, i32 0, i64 1
  %218 = load i32, i32* %arrayidx408, align 4, !tbaa !16
  %and409 = and i32 %218, 1048576
  %tobool410 = icmp ne i32 %and409, 0
  br i1 %tobool410, label %if.then.411, label %if.else.412

if.then.411:                                      ; preds = %if.else.406
  %219 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %219, align 1, !tbaa !5
  br label %if.end.419

if.else.412:                                      ; preds = %if.else.406
  %220 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags413 = getelementptr inbounds %struct.milter, %struct.milter* %220, i32 0, i32 1
  %arrayidx414 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags413, i32 0, i64 2
  %221 = load i32, i32* %arrayidx414, align 4, !tbaa !16
  %and415 = and i32 %221, 262144
  %tobool416 = icmp ne i32 %and415, 0
  br i1 %tobool416, label %if.then.417, label %if.end.418

if.then.417:                                      ; preds = %if.else.412
  %222 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %222, align 1, !tbaa !5
  br label %if.end.418

if.end.418:                                       ; preds = %if.then.417, %if.else.412
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.418, %if.then.411
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419, %if.then.405
  br label %if.end.421

if.end.421:                                       ; preds = %if.end.420, %land.lhs.true.396, %if.then.391
  %223 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %224 = load i8, i8* %223, align 1, !tbaa !5
  %conv422 = sext i8 %224 to i32
  %cmp423 = icmp eq i32 %conv422, 97
  br i1 %cmp423, label %if.then.435, label %lor.lhs.false.425

lor.lhs.false.425:                                ; preds = %if.end.421
  %225 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state426 = getelementptr inbounds %struct.milter, %struct.milter* %225, i32 0, i32 7
  %226 = load i8, i8* %mf_state426, align 1, !tbaa !11
  %conv427 = sext i8 %226 to i32
  %cmp428 = icmp eq i32 %conv427, 68
  br i1 %cmp428, label %if.then.435, label %lor.lhs.false.430

lor.lhs.false.430:                                ; preds = %lor.lhs.false.425
  %227 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state431 = getelementptr inbounds %struct.milter, %struct.milter* %227, i32 0, i32 7
  %228 = load i8, i8* %mf_state431, align 1, !tbaa !11
  %conv432 = sext i8 %228 to i32
  %cmp433 = icmp eq i32 %conv432, 69
  br i1 %cmp433, label %if.then.435, label %if.end.443

if.then.435:                                      ; preds = %lor.lhs.false.430, %lor.lhs.false.425, %if.end.421
  %229 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state436 = getelementptr inbounds %struct.milter, %struct.milter* %229, i32 0, i32 7
  %230 = load i8, i8* %mf_state436, align 1, !tbaa !11
  %conv437 = sext i8 %230 to i32
  %cmp438 = icmp ne i32 %conv437, 69
  br i1 %cmp438, label %if.then.440, label %if.end.442

if.then.440:                                      ; preds = %if.then.435
  %231 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state441 = getelementptr inbounds %struct.milter, %struct.milter* %231, i32 0, i32 7
  store i8 68, i8* %mf_state441, align 1, !tbaa !11
  br label %if.end.442

if.end.442:                                       ; preds = %if.then.440, %if.then.435
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.443:                                       ; preds = %lor.lhs.false.430
  %232 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %233 = load i8, i8* %232, align 1, !tbaa !5
  %conv444 = sext i8 %233 to i32
  %cmp445 = icmp ne i32 %conv444, 99
  br i1 %cmp445, label %if.then.447, label %if.end.449

if.then.447:                                      ; preds = %if.end.443
  %234 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state448 = getelementptr inbounds %struct.milter, %struct.milter* %234, i32 0, i32 7
  store i8 68, i8* %mf_state448, align 1, !tbaa !11
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.449:                                       ; preds = %if.end.443
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.449, %lor.end.384
  %235 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %236 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_timeout = getelementptr inbounds %struct.milter, %struct.milter* %236, i32 0, i32 10
  %arrayidx451 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout, i32 0, i64 0
  %237 = load i64, i64* %arrayidx451, align 8, !tbaa !13
  %238 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call452 = call i8* @milter_write(%struct.milter* %235, i32 69, i8* null, i64 0, i64 %237, %struct.envelope* %238, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0))
  %call453 = call i64 @curtime()
  store i64 %call453, i64* %eomsent, align 8, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %if.end.847, %if.end.450
  %239 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %240 = load i8, i8* %239, align 1, !tbaa !5
  %conv454 = sext i8 %240 to i32
  %cmp455 = icmp eq i32 %conv454, 99
  br i1 %cmp455, label %while.body, label %while.end.848

while.body:                                       ; preds = %while.cond
  %241 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_timeout457 = getelementptr inbounds %struct.milter, %struct.milter* %241, i32 0, i32 10
  %arrayidx458 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout457, i32 0, i64 2
  %242 = load i64, i64* %arrayidx458, align 8, !tbaa !13
  %cmp459 = icmp sgt i64 %242, 0
  br i1 %cmp459, label %land.lhs.true.461, label %if.end.539

land.lhs.true.461:                                ; preds = %while.body
  %call462 = call i64 @curtime()
  %243 = load i64, i64* %eomsent, align 8, !tbaa !13
  %sub = sub nsw i64 %call462, %243
  %244 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_timeout463 = getelementptr inbounds %struct.milter, %struct.milter* %244, i32 0, i32 10
  %arrayidx464 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout463, i32 0, i64 2
  %245 = load i64, i64* %arrayidx464, align 8, !tbaa !13
  %cmp465 = icmp sge i64 %sub, %245
  br i1 %cmp465, label %if.then.467, label %if.end.539

if.then.467:                                      ; preds = %land.lhs.true.461
  %246 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv468 = zext i8 %246 to i32
  %cmp469 = icmp sge i32 %conv468, 5
  br i1 %cmp469, label %land.lhs.true.471, label %if.end.474

land.lhs.true.471:                                ; preds = %if.then.467
  %247 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool472 = icmp ne i32 %247, 0
  br i1 %tobool472, label %if.end.474, label %if.then.473

if.then.473:                                      ; preds = %land.lhs.true.471
  %248 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %248, i32 0, i32 0
  %249 = load i8*, i8** %mf_name, align 8, !tbaa !8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.46, i32 0, i32 0), i8* %249)
  br label %if.end.474

if.end.474:                                       ; preds = %if.then.473, %land.lhs.true.471, %if.then.467
  %250 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp475 = icmp sgt i32 %250, 0
  br i1 %cmp475, label %if.then.477, label %if.end.479

if.then.477:                                      ; preds = %if.end.474
  %251 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %251, i32 0, i32 25
  %252 = load i8*, i8** %e_id, align 8, !tbaa !18
  %253 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name478 = getelementptr inbounds %struct.milter, %struct.milter* %253, i32 0, i32 0
  %254 = load i8*, i8** %mf_name478, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %252, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.47, i32 0, i32 0), i8* %254)
  br label %if.end.479

if.end.479:                                       ; preds = %if.then.477, %if.end.474
  %255 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %256 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %255, %struct.envelope* %256)
  %257 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv480 = zext i8 %257 to i32
  %cmp481 = icmp sge i32 %conv480, 100
  br i1 %cmp481, label %land.lhs.true.483, label %if.else.497

land.lhs.true.483:                                ; preds = %if.end.479
  %258 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool484 = icmp ne i32 %258, 0
  br i1 %tobool484, label %if.else.497, label %if.then.485

if.then.485:                                      ; preds = %land.lhs.true.483
  %259 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg486 = getelementptr inbounds %struct.envelope, %struct.envelope* %259, i32 0, i32 36
  %260 = load i8*, i8** %e_quarmsg486, align 8, !tbaa !39
  %cmp487 = icmp eq i8* %260, null
  br i1 %cmp487, label %if.then.489, label %if.end.496

if.then.489:                                      ; preds = %if.then.485
  %261 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool490 = getelementptr inbounds %struct.envelope, %struct.envelope* %261, i32 0, i32 52
  %262 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool490, align 8, !tbaa !40
  %call491 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %262, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %263 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg492 = getelementptr inbounds %struct.envelope, %struct.envelope* %263, i32 0, i32 36
  store i8* %call491, i8** %e_quarmsg492, align 8, !tbaa !39
  %264 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro493 = getelementptr inbounds %struct.envelope, %struct.envelope* %264, i32 0, i32 46
  %call494 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %265 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg495 = getelementptr inbounds %struct.envelope, %struct.envelope* %265, i32 0, i32 36
  %266 = load i8*, i8** %e_quarmsg495, align 8, !tbaa !39
  %267 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro493, i32 2, i32 %call494, i8* %266, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4433, i32 %267)
  br label %if.end.496

if.end.496:                                       ; preds = %if.then.489, %if.then.485
  br label %if.end.538

if.else.497:                                      ; preds = %land.lhs.true.483, %if.end.479
  %268 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv498 = zext i8 %268 to i32
  %cmp499 = icmp sge i32 %conv498, 101
  br i1 %cmp499, label %land.lhs.true.501, label %if.else.515

land.lhs.true.501:                                ; preds = %if.else.497
  %269 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool502 = icmp ne i32 %269, 0
  br i1 %tobool502, label %if.else.515, label %if.then.503

if.then.503:                                      ; preds = %land.lhs.true.501
  %270 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg504 = getelementptr inbounds %struct.envelope, %struct.envelope* %270, i32 0, i32 36
  %271 = load i8*, i8** %e_quarmsg504, align 8, !tbaa !39
  %cmp505 = icmp eq i8* %271, null
  br i1 %cmp505, label %if.then.507, label %if.end.514

if.then.507:                                      ; preds = %if.then.503
  %272 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool508 = getelementptr inbounds %struct.envelope, %struct.envelope* %272, i32 0, i32 52
  %273 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool508, align 8, !tbaa !40
  %call509 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %273, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %274 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg510 = getelementptr inbounds %struct.envelope, %struct.envelope* %274, i32 0, i32 36
  store i8* %call509, i8** %e_quarmsg510, align 8, !tbaa !39
  %275 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro511 = getelementptr inbounds %struct.envelope, %struct.envelope* %275, i32 0, i32 46
  %call512 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %276 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg513 = getelementptr inbounds %struct.envelope, %struct.envelope* %276, i32 0, i32 36
  %277 = load i8*, i8** %e_quarmsg513, align 8, !tbaa !39
  %278 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro511, i32 2, i32 %call512, i8* %277, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4433, i32 %278)
  br label %if.end.514

if.end.514:                                       ; preds = %if.then.507, %if.then.503
  br label %if.end.537

if.else.515:                                      ; preds = %land.lhs.true.501, %if.else.497
  %279 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags516 = getelementptr inbounds %struct.milter, %struct.milter* %279, i32 0, i32 1
  %arrayidx517 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags516, i32 0, i64 2
  %280 = load i32, i32* %arrayidx517, align 4, !tbaa !16
  %and518 = and i32 %280, 1048576
  %tobool519 = icmp ne i32 %and518, 0
  br i1 %tobool519, label %if.then.520, label %if.else.521

if.then.520:                                      ; preds = %if.else.515
  %281 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %281, align 1, !tbaa !5
  br label %if.end.536

if.else.521:                                      ; preds = %if.else.515
  %282 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags522 = getelementptr inbounds %struct.milter, %struct.milter* %282, i32 0, i32 1
  %arrayidx523 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags522, i32 0, i64 1
  %283 = load i32, i32* %arrayidx523, align 4, !tbaa !16
  %and524 = and i32 %283, 1048576
  %tobool525 = icmp ne i32 %and524, 0
  br i1 %tobool525, label %if.then.526, label %if.else.527

if.then.526:                                      ; preds = %if.else.521
  %284 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %284, align 1, !tbaa !5
  br label %if.end.535

if.else.527:                                      ; preds = %if.else.521
  %285 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags528 = getelementptr inbounds %struct.milter, %struct.milter* %285, i32 0, i32 1
  %arrayidx529 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags528, i32 0, i64 2
  %286 = load i32, i32* %arrayidx529, align 4, !tbaa !16
  %and530 = and i32 %286, 262144
  %tobool531 = icmp ne i32 %and530, 0
  br i1 %tobool531, label %if.then.532, label %if.else.533

if.then.532:                                      ; preds = %if.else.527
  %287 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %287, align 1, !tbaa !5
  br label %if.end.534

if.else.533:                                      ; preds = %if.else.527
  br label %while.end.848

if.end.534:                                       ; preds = %if.then.532
  br label %if.end.535

if.end.535:                                       ; preds = %if.end.534, %if.then.526
  br label %if.end.536

if.end.536:                                       ; preds = %if.end.535, %if.then.520
  br label %if.end.537

if.end.537:                                       ; preds = %if.end.536, %if.end.514
  br label %if.end.538

if.end.538:                                       ; preds = %if.end.537, %if.end.496
  br label %while.end.848

if.end.539:                                       ; preds = %land.lhs.true.461, %while.body
  %288 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %289 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_timeout540 = getelementptr inbounds %struct.milter, %struct.milter* %289, i32 0, i32 10
  %arrayidx541 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout540, i32 0, i64 1
  %290 = load i64, i64* %arrayidx541, align 8, !tbaa !13
  %291 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call542 = call i8* @milter_read(%struct.milter* %288, i8* %rcmd, i64* %rlen, i64 %290, %struct.envelope* %291, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0))
  store i8* %call542, i8** %response, align 8, !tbaa !1
  %292 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state543 = getelementptr inbounds %struct.milter, %struct.milter* %292, i32 0, i32 7
  %293 = load i8, i8* %mf_state543, align 1, !tbaa !11
  %conv544 = sext i8 %293 to i32
  %cmp545 = icmp eq i32 %conv544, 69
  br i1 %cmp545, label %if.then.547, label %if.end.548

if.then.547:                                      ; preds = %if.end.539
  br label %while.end.848

if.end.548:                                       ; preds = %if.end.539
  %294 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv549 = zext i8 %294 to i32
  %cmp550 = icmp sge i32 %conv549, 10
  br i1 %cmp550, label %land.lhs.true.552, label %if.end.557

land.lhs.true.552:                                ; preds = %if.end.548
  %295 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool553 = icmp ne i32 %295, 0
  br i1 %tobool553, label %if.end.557, label %if.then.554

if.then.554:                                      ; preds = %land.lhs.true.552
  %296 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name555 = getelementptr inbounds %struct.milter, %struct.milter* %296, i32 0, i32 0
  %297 = load i8*, i8** %mf_name555, align 8, !tbaa !8
  %298 = load i8, i8* %rcmd, align 1, !tbaa !5
  %conv556 = sext i8 %298 to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i32 0, i32 0), i8* %297, i32 %conv556)
  br label %if.end.557

if.end.557:                                       ; preds = %if.then.554, %land.lhs.true.552, %if.end.548
  %299 = load i8, i8* %rcmd, align 1, !tbaa !5
  %conv558 = sext i8 %299 to i32
  switch i32 %conv558, label %sw.default [
    i32 121, label %sw.bb
    i32 114, label %sw.bb.639
    i32 100, label %sw.bb.647
    i32 116, label %sw.bb.655
    i32 99, label %sw.bb.663
    i32 97, label %sw.bb.663
    i32 112, label %sw.epilog
    i32 113, label %sw.bb.669
    i32 104, label %sw.bb.699
    i32 105, label %sw.bb.713
    i32 109, label %sw.bb.727
    i32 101, label %sw.bb.741
    i32 43, label %sw.bb.755
    i32 50, label %sw.bb.769
    i32 45, label %sw.bb.783
    i32 98, label %sw.bb.797
  ]

sw.bb:                                            ; preds = %if.end.557
  %300 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp559 = icmp eq i8* %300, null
  br i1 %cmp559, label %if.then.608, label %lor.lhs.false.561

lor.lhs.false.561:                                ; preds = %sw.bb
  %301 = load i8*, i8** %response, align 8, !tbaa !1
  %call562 = call i64 @strlen(i8* %301) #12
  %add = add i64 %call562, 1
  %302 = load i64, i64* %rlen, align 8, !tbaa !13
  %cmp563 = icmp ne i64 %add, %302
  br i1 %cmp563, label %if.then.608, label %lor.lhs.false.565

lor.lhs.false.565:                                ; preds = %lor.lhs.false.561
  %303 = load i64, i64* %rlen, align 8, !tbaa !13
  %cmp566 = icmp slt i64 %303, 3
  br i1 %cmp566, label %if.then.608, label %lor.lhs.false.568

lor.lhs.false.568:                                ; preds = %lor.lhs.false.565
  %304 = load i8*, i8** %response, align 8, !tbaa !1
  %arrayidx569 = getelementptr inbounds i8, i8* %304, i64 0
  %305 = load i8, i8* %arrayidx569, align 1, !tbaa !5
  %conv570 = sext i8 %305 to i32
  %cmp571 = icmp ne i32 %conv570, 52
  br i1 %cmp571, label %land.lhs.true.573, label %lor.lhs.false.578

land.lhs.true.573:                                ; preds = %lor.lhs.false.568
  %306 = load i8*, i8** %response, align 8, !tbaa !1
  %arrayidx574 = getelementptr inbounds i8, i8* %306, i64 0
  %307 = load i8, i8* %arrayidx574, align 1, !tbaa !5
  %conv575 = sext i8 %307 to i32
  %cmp576 = icmp ne i32 %conv575, 53
  br i1 %cmp576, label %if.then.608, label %lor.lhs.false.578

lor.lhs.false.578:                                ; preds = %land.lhs.true.573, %lor.lhs.false.568
  %308 = load i8*, i8** %response, align 8, !tbaa !1
  %arrayidx579 = getelementptr inbounds i8, i8* %308, i64 1
  %309 = load i8, i8* %arrayidx579, align 1, !tbaa !5
  %conv580 = sext i8 %309 to i32
  %and581 = and i32 %conv580, -128
  %cmp582 = icmp eq i32 %and581, 0
  br i1 %cmp582, label %lor.lhs.false.584, label %if.then.608

lor.lhs.false.584:                                ; preds = %lor.lhs.false.578
  %310 = load i8*, i8** %response, align 8, !tbaa !1
  %arrayidx585 = getelementptr inbounds i8, i8* %310, i64 1
  %311 = load i8, i8* %arrayidx585, align 1, !tbaa !5
  %conv586 = sext i8 %311 to i32
  %idxprom587 = sext i32 %conv586 to i64
  %call588 = call i16** @__ctype_b_loc() #11
  %312 = load i16*, i16** %call588, align 8, !tbaa !1
  %arrayidx589 = getelementptr inbounds i16, i16* %312, i64 %idxprom587
  %313 = load i16, i16* %arrayidx589, align 2, !tbaa !6
  %conv590 = zext i16 %313 to i32
  %and591 = and i32 %conv590, 2048
  %tobool592 = icmp ne i32 %and591, 0
  br i1 %tobool592, label %lor.lhs.false.593, label %if.then.608

lor.lhs.false.593:                                ; preds = %lor.lhs.false.584
  %314 = load i8*, i8** %response, align 8, !tbaa !1
  %arrayidx594 = getelementptr inbounds i8, i8* %314, i64 2
  %315 = load i8, i8* %arrayidx594, align 1, !tbaa !5
  %conv595 = sext i8 %315 to i32
  %and596 = and i32 %conv595, -128
  %cmp597 = icmp eq i32 %and596, 0
  br i1 %cmp597, label %lor.lhs.false.599, label %if.then.608

lor.lhs.false.599:                                ; preds = %lor.lhs.false.593
  %316 = load i8*, i8** %response, align 8, !tbaa !1
  %arrayidx600 = getelementptr inbounds i8, i8* %316, i64 2
  %317 = load i8, i8* %arrayidx600, align 1, !tbaa !5
  %conv601 = sext i8 %317 to i32
  %idxprom602 = sext i32 %conv601 to i64
  %call603 = call i16** @__ctype_b_loc() #11
  %318 = load i16*, i16** %call603, align 8, !tbaa !1
  %arrayidx604 = getelementptr inbounds i16, i16* %318, i64 %idxprom602
  %319 = load i16, i16* %arrayidx604, align 2, !tbaa !6
  %conv605 = zext i16 %319 to i32
  %and606 = and i32 %conv605, 2048
  %tobool607 = icmp ne i32 %and606, 0
  br i1 %tobool607, label %if.else.614, label %if.then.608

if.then.608:                                      ; preds = %lor.lhs.false.599, %lor.lhs.false.593, %lor.lhs.false.584, %lor.lhs.false.578, %land.lhs.true.573, %lor.lhs.false.565, %lor.lhs.false.561, %sw.bb
  %320 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp609 = icmp ne i8* %320, null
  br i1 %cmp609, label %if.then.611, label %if.end.612

if.then.611:                                      ; preds = %if.then.608
  %321 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %321, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4450)
  br label %if.end.612

if.end.612:                                       ; preds = %if.then.611, %if.then.608
  %call613 = call i8* @newstr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0))
  store i8* %call613, i8** %response, align 8, !tbaa !1
  br label %if.end.631

if.else.614:                                      ; preds = %lor.lhs.false.599
  %322 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %322) #1
  %323 = load i8*, i8** %response, align 8, !tbaa !1
  store i8* %323, i8** %ptr, align 8, !tbaa !1
  br label %while.cond.615

while.cond.615:                                   ; preds = %if.end.629, %if.else.614
  %324 = load i8*, i8** %ptr, align 8, !tbaa !1
  %325 = load i8, i8* %324, align 1, !tbaa !5
  %conv616 = sext i8 %325 to i32
  %cmp617 = icmp ne i32 %conv616, 0
  br i1 %cmp617, label %while.body.619, label %while.end

while.body.619:                                   ; preds = %while.cond.615
  %326 = load i8*, i8** %ptr, align 8, !tbaa !1
  %327 = load i8, i8* %326, align 1, !tbaa !5
  %conv620 = sext i8 %327 to i32
  %cmp621 = icmp eq i32 %conv620, 37
  br i1 %cmp621, label %land.lhs.true.623, label %if.end.629

land.lhs.true.623:                                ; preds = %while.body.619
  %328 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !1
  %329 = load i8, i8* %incdec.ptr, align 1, !tbaa !5
  %conv624 = sext i8 %329 to i32
  %cmp625 = icmp ne i32 %conv624, 37
  br i1 %cmp625, label %if.then.627, label %if.end.629

if.then.627:                                      ; preds = %land.lhs.true.623
  %330 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %330, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4450)
  %call628 = call i8* @newstr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0))
  store i8* %call628, i8** %response, align 8, !tbaa !1
  br label %while.end

if.end.629:                                       ; preds = %land.lhs.true.623, %while.body.619
  %331 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr630 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %incdec.ptr630, i8** %ptr, align 8, !tbaa !1
  br label %while.cond.615

while.end:                                        ; preds = %if.then.627, %while.cond.615
  %332 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %332) #1
  br label %if.end.631

if.end.631:                                       ; preds = %while.end, %if.end.612
  %333 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp632 = icmp sgt i32 %333, 12
  br i1 %cmp632, label %if.then.634, label %if.end.637

if.then.634:                                      ; preds = %if.end.631
  %334 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id635 = getelementptr inbounds %struct.envelope, %struct.envelope* %334, i32 0, i32 25
  %335 = load i8*, i8** %e_id635, align 8, !tbaa !18
  %336 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name636 = getelementptr inbounds %struct.milter, %struct.milter* %336, i32 0, i32 0
  %337 = load i8*, i8** %mf_name636, align 8, !tbaa !8
  %338 = load i8*, i8** %response, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %335, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0), i8* %337, i8* %338)
  br label %if.end.637

if.end.637:                                       ; preds = %if.then.634, %if.end.631
  %339 = load i8, i8* %rcmd, align 1, !tbaa !5
  %340 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 %339, i8* %340, align 1, !tbaa !5
  %341 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state638 = getelementptr inbounds %struct.milter, %struct.milter* %341, i32 0, i32 7
  store i8 68, i8* %mf_state638, align 1, !tbaa !11
  br label %sw.epilog

sw.bb.639:                                        ; preds = %if.end.557
  %342 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp640 = icmp sgt i32 %342, 12
  br i1 %cmp640, label %if.then.642, label %if.end.645

if.then.642:                                      ; preds = %sw.bb.639
  %343 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id643 = getelementptr inbounds %struct.envelope, %struct.envelope* %343, i32 0, i32 25
  %344 = load i8*, i8** %e_id643, align 8, !tbaa !18
  %345 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name644 = getelementptr inbounds %struct.milter, %struct.milter* %345, i32 0, i32 0
  %346 = load i8*, i8** %mf_name644, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %344, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0), i8* %346)
  br label %if.end.645

if.end.645:                                       ; preds = %if.then.642, %sw.bb.639
  %347 = load i8, i8* %rcmd, align 1, !tbaa !5
  %348 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 %347, i8* %348, align 1, !tbaa !5
  %349 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state646 = getelementptr inbounds %struct.milter, %struct.milter* %349, i32 0, i32 7
  store i8 68, i8* %mf_state646, align 1, !tbaa !11
  br label %sw.epilog

sw.bb.647:                                        ; preds = %if.end.557
  %350 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp648 = icmp sgt i32 %350, 12
  br i1 %cmp648, label %if.then.650, label %if.end.653

if.then.650:                                      ; preds = %sw.bb.647
  %351 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id651 = getelementptr inbounds %struct.envelope, %struct.envelope* %351, i32 0, i32 25
  %352 = load i8*, i8** %e_id651, align 8, !tbaa !18
  %353 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name652 = getelementptr inbounds %struct.milter, %struct.milter* %353, i32 0, i32 0
  %354 = load i8*, i8** %mf_name652, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), i8* %354)
  br label %if.end.653

if.end.653:                                       ; preds = %if.then.650, %sw.bb.647
  %355 = load i8, i8* %rcmd, align 1, !tbaa !5
  %356 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 %355, i8* %356, align 1, !tbaa !5
  %357 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state654 = getelementptr inbounds %struct.milter, %struct.milter* %357, i32 0, i32 7
  store i8 68, i8* %mf_state654, align 1, !tbaa !11
  br label %sw.epilog

sw.bb.655:                                        ; preds = %if.end.557
  %358 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp656 = icmp sgt i32 %358, 12
  br i1 %cmp656, label %if.then.658, label %if.end.661

if.then.658:                                      ; preds = %sw.bb.655
  %359 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id659 = getelementptr inbounds %struct.envelope, %struct.envelope* %359, i32 0, i32 25
  %360 = load i8*, i8** %e_id659, align 8, !tbaa !18
  %361 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name660 = getelementptr inbounds %struct.milter, %struct.milter* %361, i32 0, i32 0
  %362 = load i8*, i8** %mf_name660, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %360, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0), i8* %362)
  br label %if.end.661

if.end.661:                                       ; preds = %if.then.658, %sw.bb.655
  %363 = load i8, i8* %rcmd, align 1, !tbaa !5
  %364 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 %363, i8* %364, align 1, !tbaa !5
  %365 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state662 = getelementptr inbounds %struct.milter, %struct.milter* %365, i32 0, i32 7
  store i8 68, i8* %mf_state662, align 1, !tbaa !11
  br label %sw.epilog

sw.bb.663:                                        ; preds = %if.end.557, %if.end.557
  %366 = load i32, i32* %replfailed, align 4, !tbaa !16
  %tobool664 = icmp ne i32 %366, 0
  br i1 %tobool664, label %if.then.665, label %if.else.666

if.then.665:                                      ; preds = %sw.bb.663
  %367 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %367, align 1, !tbaa !5
  br label %if.end.667

if.else.666:                                      ; preds = %sw.bb.663
  %368 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 97, i8* %368, align 1, !tbaa !5
  br label %if.end.667

if.end.667:                                       ; preds = %if.else.666, %if.then.665
  %369 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state668 = getelementptr inbounds %struct.milter, %struct.milter* %369, i32 0, i32 7
  store i8 68, i8* %mf_state668, align 1, !tbaa !11
  br label %sw.epilog

sw.bb.669:                                        ; preds = %if.end.557
  %370 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_fflags = getelementptr inbounds %struct.milter, %struct.milter* %370, i32 0, i32 3
  %371 = load i32, i32* %mf_fflags, align 4, !tbaa !50
  %conv670 = sext i32 %371 to i64
  %and671 = and i64 %conv670, 32
  %cmp672 = icmp ne i64 %and671, 0
  br i1 %cmp672, label %if.end.681, label %if.then.674

if.then.674:                                      ; preds = %sw.bb.669
  %372 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp675 = icmp sgt i32 %372, 9
  br i1 %cmp675, label %if.then.677, label %if.end.680

if.then.677:                                      ; preds = %if.then.674
  %373 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id678 = getelementptr inbounds %struct.envelope, %struct.envelope* %373, i32 0, i32 25
  %374 = load i8*, i8** %e_id678, align 8, !tbaa !18
  %375 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name679 = getelementptr inbounds %struct.milter, %struct.milter* %375, i32 0, i32 0
  %376 = load i8*, i8** %mf_name679, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* %374, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.54, i32 0, i32 0), i8* %376)
  br label %if.end.680

if.end.680:                                       ; preds = %if.then.677, %if.then.674
  br label %if.end.681

if.end.681:                                       ; preds = %if.end.680, %sw.bb.669
  %377 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp682 = icmp eq i8* %377, null
  br i1 %cmp682, label %if.then.684, label %if.end.686

if.then.684:                                      ; preds = %if.end.681
  %call685 = call i8* @newstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0))
  store i8* %call685, i8** %response, align 8, !tbaa !1
  br label %if.end.686

if.end.686:                                       ; preds = %if.then.684, %if.end.681
  %378 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp687 = icmp sgt i32 %378, 3
  br i1 %cmp687, label %if.then.689, label %if.end.692

if.then.689:                                      ; preds = %if.end.686
  %379 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id690 = getelementptr inbounds %struct.envelope, %struct.envelope* %379, i32 0, i32 25
  %380 = load i8*, i8** %e_id690, align 8, !tbaa !18
  %381 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name691 = getelementptr inbounds %struct.milter, %struct.milter* %381, i32 0, i32 0
  %382 = load i8*, i8** %mf_name691, align 8, !tbaa !8
  %383 = load i8*, i8** %response, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %380, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.56, i32 0, i32 0), i8* %382, i8* %383)
  br label %if.end.692

if.end.692:                                       ; preds = %if.then.689, %if.end.686
  %384 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool693 = getelementptr inbounds %struct.envelope, %struct.envelope* %384, i32 0, i32 52
  %385 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool693, align 8, !tbaa !40
  %386 = load i8*, i8** %response, align 8, !tbaa !1
  %call694 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %385, i8* %386)
  %387 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg695 = getelementptr inbounds %struct.envelope, %struct.envelope* %387, i32 0, i32 36
  store i8* %call694, i8** %e_quarmsg695, align 8, !tbaa !39
  %388 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro696 = getelementptr inbounds %struct.envelope, %struct.envelope* %388, i32 0, i32 46
  %call697 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %389 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg698 = getelementptr inbounds %struct.envelope, %struct.envelope* %389, i32 0, i32 36
  %390 = load i8*, i8** %e_quarmsg698, align 8, !tbaa !39
  %391 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro696, i32 2, i32 %call697, i8* %390, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4512, i32 %391)
  br label %sw.epilog

sw.bb.699:                                        ; preds = %if.end.557
  %392 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_fflags700 = getelementptr inbounds %struct.milter, %struct.milter* %392, i32 0, i32 3
  %393 = load i32, i32* %mf_fflags700, align 4, !tbaa !50
  %conv701 = sext i32 %393 to i64
  %and702 = and i64 %conv701, 1
  %cmp703 = icmp ne i64 %and702, 0
  br i1 %cmp703, label %if.end.712, label %if.then.705

if.then.705:                                      ; preds = %sw.bb.699
  %394 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp706 = icmp sgt i32 %394, 9
  br i1 %cmp706, label %if.then.708, label %if.end.711

if.then.708:                                      ; preds = %if.then.705
  %395 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id709 = getelementptr inbounds %struct.envelope, %struct.envelope* %395, i32 0, i32 25
  %396 = load i8*, i8** %e_id709, align 8, !tbaa !18
  %397 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name710 = getelementptr inbounds %struct.milter, %struct.milter* %397, i32 0, i32 0
  %398 = load i8*, i8** %mf_name710, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* %396, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.57, i32 0, i32 0), i8* %398)
  br label %if.end.711

if.end.711:                                       ; preds = %if.then.708, %if.then.705
  br label %if.end.712

if.end.712:                                       ; preds = %if.end.711, %sw.bb.699
  %399 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %400 = load i8*, i8** %response, align 8, !tbaa !1
  %401 = load i64, i64* %rlen, align 8, !tbaa !13
  %402 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_addheader(%struct.milter* %399, i8* %400, i64 %401, %struct.envelope* %402)
  br label %sw.epilog

sw.bb.713:                                        ; preds = %if.end.557
  %403 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_fflags714 = getelementptr inbounds %struct.milter, %struct.milter* %403, i32 0, i32 3
  %404 = load i32, i32* %mf_fflags714, align 4, !tbaa !50
  %conv715 = sext i32 %404 to i64
  %and716 = and i64 %conv715, 1
  %cmp717 = icmp ne i64 %and716, 0
  br i1 %cmp717, label %if.end.726, label %if.then.719

if.then.719:                                      ; preds = %sw.bb.713
  %405 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp720 = icmp sgt i32 %405, 9
  br i1 %cmp720, label %if.then.722, label %if.end.725

if.then.722:                                      ; preds = %if.then.719
  %406 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id723 = getelementptr inbounds %struct.envelope, %struct.envelope* %406, i32 0, i32 25
  %407 = load i8*, i8** %e_id723, align 8, !tbaa !18
  %408 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name724 = getelementptr inbounds %struct.milter, %struct.milter* %408, i32 0, i32 0
  %409 = load i8*, i8** %mf_name724, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* %407, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.57, i32 0, i32 0), i8* %409)
  br label %if.end.725

if.end.725:                                       ; preds = %if.then.722, %if.then.719
  br label %if.end.726

if.end.726:                                       ; preds = %if.end.725, %sw.bb.713
  %410 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %411 = load i8*, i8** %response, align 8, !tbaa !1
  %412 = load i64, i64* %rlen, align 8, !tbaa !13
  %413 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_insheader(%struct.milter* %410, i8* %411, i64 %412, %struct.envelope* %413)
  br label %sw.epilog

sw.bb.727:                                        ; preds = %if.end.557
  %414 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_fflags728 = getelementptr inbounds %struct.milter, %struct.milter* %414, i32 0, i32 3
  %415 = load i32, i32* %mf_fflags728, align 4, !tbaa !50
  %conv729 = sext i32 %415 to i64
  %and730 = and i64 %conv729, 16
  %cmp731 = icmp ne i64 %and730, 0
  br i1 %cmp731, label %if.end.740, label %if.then.733

if.then.733:                                      ; preds = %sw.bb.727
  %416 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp734 = icmp sgt i32 %416, 9
  br i1 %cmp734, label %if.then.736, label %if.end.739

if.then.736:                                      ; preds = %if.then.733
  %417 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id737 = getelementptr inbounds %struct.envelope, %struct.envelope* %417, i32 0, i32 25
  %418 = load i8*, i8** %e_id737, align 8, !tbaa !18
  %419 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name738 = getelementptr inbounds %struct.milter, %struct.milter* %419, i32 0, i32 0
  %420 = load i8*, i8** %mf_name738, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* %418, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.58, i32 0, i32 0), i8* %420)
  br label %if.end.739

if.end.739:                                       ; preds = %if.then.736, %if.then.733
  br label %if.end.740

if.end.740:                                       ; preds = %if.end.739, %sw.bb.727
  %421 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %422 = load i8*, i8** %response, align 8, !tbaa !1
  %423 = load i64, i64* %rlen, align 8, !tbaa !13
  %424 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_changeheader(%struct.milter* %421, i8* %422, i64 %423, %struct.envelope* %424)
  br label %sw.epilog

sw.bb.741:                                        ; preds = %if.end.557
  %425 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_fflags742 = getelementptr inbounds %struct.milter, %struct.milter* %425, i32 0, i32 3
  %426 = load i32, i32* %mf_fflags742, align 4, !tbaa !50
  %conv743 = sext i32 %426 to i64
  %and744 = and i64 %conv743, 64
  %cmp745 = icmp ne i64 %and744, 0
  br i1 %cmp745, label %if.end.754, label %if.then.747

if.then.747:                                      ; preds = %sw.bb.741
  %427 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp748 = icmp sgt i32 %427, 9
  br i1 %cmp748, label %if.then.750, label %if.end.753

if.then.750:                                      ; preds = %if.then.747
  %428 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id751 = getelementptr inbounds %struct.envelope, %struct.envelope* %428, i32 0, i32 25
  %429 = load i8*, i8** %e_id751, align 8, !tbaa !18
  %430 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name752 = getelementptr inbounds %struct.milter, %struct.milter* %430, i32 0, i32 0
  %431 = load i8*, i8** %mf_name752, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* %429, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.59, i32 0, i32 0), i8* %431)
  br label %if.end.753

if.end.753:                                       ; preds = %if.then.750, %if.then.747
  br label %if.end.754

if.end.754:                                       ; preds = %if.end.753, %sw.bb.741
  %432 = load i8*, i8** %response, align 8, !tbaa !1
  %433 = load i64, i64* %rlen, align 8, !tbaa !13
  %434 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_chgfrom(i8* %432, i64 %433, %struct.envelope* %434)
  br label %sw.epilog

sw.bb.755:                                        ; preds = %if.end.557
  %435 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_fflags756 = getelementptr inbounds %struct.milter, %struct.milter* %435, i32 0, i32 3
  %436 = load i32, i32* %mf_fflags756, align 4, !tbaa !50
  %conv757 = sext i32 %436 to i64
  %and758 = and i64 %conv757, 4
  %cmp759 = icmp ne i64 %and758, 0
  br i1 %cmp759, label %if.end.768, label %if.then.761

if.then.761:                                      ; preds = %sw.bb.755
  %437 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp762 = icmp sgt i32 %437, 9
  br i1 %cmp762, label %if.then.764, label %if.end.767

if.then.764:                                      ; preds = %if.then.761
  %438 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id765 = getelementptr inbounds %struct.envelope, %struct.envelope* %438, i32 0, i32 25
  %439 = load i8*, i8** %e_id765, align 8, !tbaa !18
  %440 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name766 = getelementptr inbounds %struct.milter, %struct.milter* %440, i32 0, i32 0
  %441 = load i8*, i8** %mf_name766, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* %439, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.60, i32 0, i32 0), i8* %441)
  br label %if.end.767

if.end.767:                                       ; preds = %if.then.764, %if.then.761
  br label %if.end.768

if.end.768:                                       ; preds = %if.end.767, %sw.bb.755
  %442 = load i8*, i8** %response, align 8, !tbaa !1
  %443 = load i64, i64* %rlen, align 8, !tbaa !13
  %444 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_addrcpt(i8* %442, i64 %443, %struct.envelope* %444)
  br label %sw.epilog

sw.bb.769:                                        ; preds = %if.end.557
  %445 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_fflags770 = getelementptr inbounds %struct.milter, %struct.milter* %445, i32 0, i32 3
  %446 = load i32, i32* %mf_fflags770, align 4, !tbaa !50
  %conv771 = sext i32 %446 to i64
  %and772 = and i64 %conv771, 128
  %cmp773 = icmp ne i64 %and772, 0
  br i1 %cmp773, label %if.end.782, label %if.then.775

if.then.775:                                      ; preds = %sw.bb.769
  %447 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp776 = icmp sgt i32 %447, 9
  br i1 %cmp776, label %if.then.778, label %if.end.781

if.then.778:                                      ; preds = %if.then.775
  %448 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id779 = getelementptr inbounds %struct.envelope, %struct.envelope* %448, i32 0, i32 25
  %449 = load i8*, i8** %e_id779, align 8, !tbaa !18
  %450 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name780 = getelementptr inbounds %struct.milter, %struct.milter* %450, i32 0, i32 0
  %451 = load i8*, i8** %mf_name780, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* %449, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.61, i32 0, i32 0), i8* %451)
  br label %if.end.781

if.end.781:                                       ; preds = %if.then.778, %if.then.775
  br label %if.end.782

if.end.782:                                       ; preds = %if.end.781, %sw.bb.769
  %452 = load i8*, i8** %response, align 8, !tbaa !1
  %453 = load i64, i64* %rlen, align 8, !tbaa !13
  %454 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_addrcpt_par(i8* %452, i64 %453, %struct.envelope* %454)
  br label %sw.epilog

sw.bb.783:                                        ; preds = %if.end.557
  %455 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_fflags784 = getelementptr inbounds %struct.milter, %struct.milter* %455, i32 0, i32 3
  %456 = load i32, i32* %mf_fflags784, align 4, !tbaa !50
  %conv785 = sext i32 %456 to i64
  %and786 = and i64 %conv785, 8
  %cmp787 = icmp ne i64 %and786, 0
  br i1 %cmp787, label %if.end.796, label %if.then.789

if.then.789:                                      ; preds = %sw.bb.783
  %457 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp790 = icmp sgt i32 %457, 9
  br i1 %cmp790, label %if.then.792, label %if.end.795

if.then.792:                                      ; preds = %if.then.789
  %458 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id793 = getelementptr inbounds %struct.envelope, %struct.envelope* %458, i32 0, i32 25
  %459 = load i8*, i8** %e_id793, align 8, !tbaa !18
  %460 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name794 = getelementptr inbounds %struct.milter, %struct.milter* %460, i32 0, i32 0
  %461 = load i8*, i8** %mf_name794, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* %459, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.62, i32 0, i32 0), i8* %461)
  br label %if.end.795

if.end.795:                                       ; preds = %if.then.792, %if.then.789
  br label %if.end.796

if.end.796:                                       ; preds = %if.end.795, %sw.bb.783
  %462 = load i8*, i8** %response, align 8, !tbaa !1
  %463 = load i64, i64* %rlen, align 8, !tbaa !13
  %464 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_delrcpt(i8* %462, i64 %463, %struct.envelope* %464)
  br label %sw.epilog

sw.bb.797:                                        ; preds = %if.end.557
  %465 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_fflags798 = getelementptr inbounds %struct.milter, %struct.milter* %465, i32 0, i32 3
  %466 = load i32, i32* %mf_fflags798, align 4, !tbaa !50
  %conv799 = sext i32 %466 to i64
  %and800 = and i64 %conv799, 2
  %cmp801 = icmp ne i64 %and800, 0
  br i1 %cmp801, label %if.end.810, label %if.then.803

if.then.803:                                      ; preds = %sw.bb.797
  %467 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp804 = icmp sgt i32 %467, 0
  br i1 %cmp804, label %if.then.806, label %if.end.809

if.then.806:                                      ; preds = %if.then.803
  %468 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id807 = getelementptr inbounds %struct.envelope, %struct.envelope* %468, i32 0, i32 25
  %469 = load i8*, i8** %e_id807, align 8, !tbaa !18
  %470 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name808 = getelementptr inbounds %struct.milter, %struct.milter* %470, i32 0, i32 0
  %471 = load i8*, i8** %mf_name808, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %469, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.63, i32 0, i32 0), i8* %471)
  br label %if.end.809

if.end.809:                                       ; preds = %if.then.806, %if.then.803
  store i32 1, i32* %replfailed, align 4, !tbaa !16
  br label %sw.epilog

if.end.810:                                       ; preds = %sw.bb.797
  %472 = load i32, i32* %replfailed, align 4, !tbaa !16
  %tobool811 = icmp ne i32 %472, 0
  br i1 %tobool811, label %if.then.812, label %if.end.813

if.then.812:                                      ; preds = %if.end.810
  br label %sw.epilog

if.end.813:                                       ; preds = %if.end.810
  %473 = load i32, i32* %dfopen, align 4, !tbaa !16
  %tobool814 = icmp ne i32 %473, 0
  br i1 %tobool814, label %if.end.821, label %if.then.815

if.then.815:                                      ; preds = %if.end.813
  %474 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call816 = call i32 @milter_reopen_df(%struct.envelope* %474)
  %cmp817 = icmp slt i32 %call816, 0
  br i1 %cmp817, label %if.then.819, label %if.end.820

if.then.819:                                      ; preds = %if.then.815
  store i32 1, i32* %replfailed, align 4, !tbaa !16
  br label %sw.epilog

if.end.820:                                       ; preds = %if.then.815
  store i32 1, i32* %dfopen, align 4, !tbaa !16
  store i32 1, i32* %rewind, align 4, !tbaa !16
  br label %if.end.821

if.end.821:                                       ; preds = %if.end.820, %if.end.813
  %475 = load i8*, i8** %response, align 8, !tbaa !1
  %476 = load i64, i64* %rlen, align 8, !tbaa !13
  %477 = load i32, i32* %newfilter, align 4, !tbaa !16
  %478 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call822 = call i32 @milter_replbody(i8* %475, i64 %476, i32 %477, %struct.envelope* %478)
  %cmp823 = icmp slt i32 %call822, 0
  br i1 %cmp823, label %if.then.825, label %if.end.826

if.then.825:                                      ; preds = %if.end.821
  store i32 1, i32* %replfailed, align 4, !tbaa !16
  br label %if.end.826

if.end.826:                                       ; preds = %if.then.825, %if.end.821
  store i32 0, i32* %newfilter, align 4, !tbaa !16
  store i32 1, i32* %replbody, align 4, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.557
  %479 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp827 = icmp sgt i32 %479, 0
  br i1 %cmp827, label %if.then.829, label %if.end.833

if.then.829:                                      ; preds = %sw.default
  %480 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id830 = getelementptr inbounds %struct.envelope, %struct.envelope* %480, i32 0, i32 25
  %481 = load i8*, i8** %e_id830, align 8, !tbaa !18
  %482 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_name831 = getelementptr inbounds %struct.milter, %struct.milter* %482, i32 0, i32 0
  %483 = load i8*, i8** %mf_name831, align 8, !tbaa !8
  %484 = load i8, i8* %rcmd, align 1, !tbaa !5
  %conv832 = sext i8 %484 to i32
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %481, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.64, i32 0, i32 0), i8* %483, i32 %conv832)
  br label %if.end.833

if.end.833:                                       ; preds = %if.then.829, %sw.default
  %485 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %486 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %485, %struct.envelope* %486)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.833, %if.end.826, %if.then.819, %if.then.812, %if.end.809, %if.end.796, %if.end.782, %if.end.768, %if.end.754, %if.end.740, %if.end.557, %if.end.726, %if.end.712, %if.end.692, %if.end.667, %if.end.661, %if.end.653, %if.end.645, %if.end.637
  %487 = load i8, i8* %rcmd, align 1, !tbaa !5
  %conv834 = sext i8 %487 to i32
  %cmp835 = icmp ne i32 %conv834, 121
  br i1 %cmp835, label %land.lhs.true.837, label %if.end.841

land.lhs.true.837:                                ; preds = %sw.epilog
  %488 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp838 = icmp ne i8* %488, null
  br i1 %cmp838, label %if.then.840, label %if.end.841

if.then.840:                                      ; preds = %land.lhs.true.837
  %489 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %489, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4636)
  store i8* null, i8** %response, align 8, !tbaa !1
  br label %if.end.841

if.end.841:                                       ; preds = %if.then.840, %land.lhs.true.837, %sw.epilog
  %490 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state842 = getelementptr inbounds %struct.milter, %struct.milter* %490, i32 0, i32 7
  %491 = load i8, i8* %mf_state842, align 1, !tbaa !11
  %conv843 = sext i8 %491 to i32
  %cmp844 = icmp eq i32 %conv843, 69
  br i1 %cmp844, label %if.then.846, label %if.end.847

if.then.846:                                      ; preds = %if.end.841
  br label %while.end.848

if.end.847:                                       ; preds = %if.end.841
  br label %while.cond

while.end.848:                                    ; preds = %if.then.846, %if.then.547, %if.end.538, %if.else.533, %while.cond
  %492 = load i32, i32* %replbody, align 4, !tbaa !16
  %tobool849 = icmp ne i32 %492, 0
  br i1 %tobool849, label %land.lhs.true.850, label %if.end.855

land.lhs.true.850:                                ; preds = %while.end.848
  %493 = load i32, i32* %replfailed, align 4, !tbaa !16
  %tobool851 = icmp ne i32 %493, 0
  br i1 %tobool851, label %if.end.855, label %if.then.852

if.then.852:                                      ; preds = %land.lhs.true.850
  %494 = load i32, i32* %replbody, align 4, !tbaa !16
  %tobool853 = icmp ne i32 %494, 0
  %lnot = xor i1 %tobool853, true
  %lnot.ext = zext i1 %lnot to i32
  %495 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call854 = call i32 @milter_replbody(i8* null, i64 0, i32 %lnot.ext, %struct.envelope* %495)
  store i32 0, i32* %replbody, align 4, !tbaa !16
  br label %if.end.855

if.end.855:                                       ; preds = %if.then.852, %land.lhs.true.850, %while.end.848
  %496 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_state856 = getelementptr inbounds %struct.milter, %struct.milter* %496, i32 0, i32 7
  %497 = load i8, i8* %mf_state856, align 1, !tbaa !11
  %conv857 = sext i8 %497 to i32
  %cmp858 = icmp eq i32 %conv857, 69
  br i1 %cmp858, label %if.then.860, label %if.end.920

if.then.860:                                      ; preds = %if.end.855
  %498 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv861 = zext i8 %498 to i32
  %cmp862 = icmp sge i32 %conv861, 100
  br i1 %cmp862, label %land.lhs.true.864, label %if.else.878

land.lhs.true.864:                                ; preds = %if.then.860
  %499 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool865 = icmp ne i32 %499, 0
  br i1 %tobool865, label %if.else.878, label %if.then.866

if.then.866:                                      ; preds = %land.lhs.true.864
  %500 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg867 = getelementptr inbounds %struct.envelope, %struct.envelope* %500, i32 0, i32 36
  %501 = load i8*, i8** %e_quarmsg867, align 8, !tbaa !39
  %cmp868 = icmp eq i8* %501, null
  br i1 %cmp868, label %if.then.870, label %if.end.877

if.then.870:                                      ; preds = %if.then.866
  %502 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool871 = getelementptr inbounds %struct.envelope, %struct.envelope* %502, i32 0, i32 52
  %503 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool871, align 8, !tbaa !40
  %call872 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %503, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %504 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg873 = getelementptr inbounds %struct.envelope, %struct.envelope* %504, i32 0, i32 36
  store i8* %call872, i8** %e_quarmsg873, align 8, !tbaa !39
  %505 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro874 = getelementptr inbounds %struct.envelope, %struct.envelope* %505, i32 0, i32 46
  %call875 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %506 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg876 = getelementptr inbounds %struct.envelope, %struct.envelope* %506, i32 0, i32 36
  %507 = load i8*, i8** %e_quarmsg876, align 8, !tbaa !39
  %508 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro874, i32 2, i32 %call875, i8* %507, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4653, i32 %508)
  br label %if.end.877

if.end.877:                                       ; preds = %if.then.870, %if.then.866
  br label %if.end.919

if.else.878:                                      ; preds = %land.lhs.true.864, %if.then.860
  %509 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv879 = zext i8 %509 to i32
  %cmp880 = icmp sge i32 %conv879, 101
  br i1 %cmp880, label %land.lhs.true.882, label %if.else.896

land.lhs.true.882:                                ; preds = %if.else.878
  %510 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool883 = icmp ne i32 %510, 0
  br i1 %tobool883, label %if.else.896, label %if.then.884

if.then.884:                                      ; preds = %land.lhs.true.882
  %511 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg885 = getelementptr inbounds %struct.envelope, %struct.envelope* %511, i32 0, i32 36
  %512 = load i8*, i8** %e_quarmsg885, align 8, !tbaa !39
  %cmp886 = icmp eq i8* %512, null
  br i1 %cmp886, label %if.then.888, label %if.end.895

if.then.888:                                      ; preds = %if.then.884
  %513 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool889 = getelementptr inbounds %struct.envelope, %struct.envelope* %513, i32 0, i32 52
  %514 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool889, align 8, !tbaa !40
  %call890 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %514, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %515 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg891 = getelementptr inbounds %struct.envelope, %struct.envelope* %515, i32 0, i32 36
  store i8* %call890, i8** %e_quarmsg891, align 8, !tbaa !39
  %516 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro892 = getelementptr inbounds %struct.envelope, %struct.envelope* %516, i32 0, i32 46
  %call893 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %517 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg894 = getelementptr inbounds %struct.envelope, %struct.envelope* %517, i32 0, i32 36
  %518 = load i8*, i8** %e_quarmsg894, align 8, !tbaa !39
  %519 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro892, i32 2, i32 %call893, i8* %518, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4653, i32 %519)
  br label %if.end.895

if.end.895:                                       ; preds = %if.then.888, %if.then.884
  br label %if.end.918

if.else.896:                                      ; preds = %land.lhs.true.882, %if.else.878
  %520 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags897 = getelementptr inbounds %struct.milter, %struct.milter* %520, i32 0, i32 1
  %arrayidx898 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags897, i32 0, i64 2
  %521 = load i32, i32* %arrayidx898, align 4, !tbaa !16
  %and899 = and i32 %521, 1048576
  %tobool900 = icmp ne i32 %and899, 0
  br i1 %tobool900, label %if.then.901, label %if.else.902

if.then.901:                                      ; preds = %if.else.896
  %522 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %522, align 1, !tbaa !5
  br label %if.end.917

if.else.902:                                      ; preds = %if.else.896
  %523 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags903 = getelementptr inbounds %struct.milter, %struct.milter* %523, i32 0, i32 1
  %arrayidx904 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags903, i32 0, i64 1
  %524 = load i32, i32* %arrayidx904, align 4, !tbaa !16
  %and905 = and i32 %524, 1048576
  %tobool906 = icmp ne i32 %and905, 0
  br i1 %tobool906, label %if.then.907, label %if.else.908

if.then.907:                                      ; preds = %if.else.902
  %525 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %525, align 1, !tbaa !5
  br label %if.end.916

if.else.908:                                      ; preds = %if.else.902
  %526 = load %struct.milter*, %struct.milter** %m, align 8, !tbaa !1
  %mf_flags909 = getelementptr inbounds %struct.milter, %struct.milter* %526, i32 0, i32 1
  %arrayidx910 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags909, i32 0, i64 2
  %527 = load i32, i32* %arrayidx910, align 4, !tbaa !16
  %and911 = and i32 %527, 262144
  %tobool912 = icmp ne i32 %and911, 0
  br i1 %tobool912, label %if.then.913, label %if.else.914

if.then.913:                                      ; preds = %if.else.908
  %528 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %528, align 1, !tbaa !5
  br label %if.end.915

if.else.914:                                      ; preds = %if.else.908
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.915:                                       ; preds = %if.then.913
  br label %if.end.916

if.end.916:                                       ; preds = %if.end.915, %if.then.907
  br label %if.end.917

if.end.917:                                       ; preds = %if.end.916, %if.then.901
  br label %if.end.918

if.end.918:                                       ; preds = %if.end.917, %if.end.895
  br label %if.end.919

if.end.919:                                       ; preds = %if.end.918, %if.end.877
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.920:                                       ; preds = %if.end.855
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.919, %if.then.447, %if.then.365, %if.then.296, %if.then.236, %if.then.147, %if.end.920, %if.else.914, %if.end.442, %if.end.360, %if.end.291, %if.end.231, %if.end.142, %if.then.83, %if.end.70, %if.else.65, %if.then.13
  %529 = bitcast %struct.milter** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %529) #1
  %530 = bitcast i8*** %macros to i8*
  call void @llvm.lifetime.end(i64 8, i8* %530) #1
  %531 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %531) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1006 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
    i32 4, label %for.inc
    i32 5, label %finishup
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %532 = load i32, i32* %i, align 4, !tbaa !16
  %inc = add nsw i32 %532, 1
  store i32 %inc, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  br label %finishup

finishup:                                         ; preds = %for.end, %cleanup
  %533 = load i32, i32* %replfailed, align 4, !tbaa !16
  %tobool923 = icmp ne i32 %533, 0
  br i1 %tobool923, label %if.then.924, label %if.end.945

if.then.924:                                      ; preds = %finishup
  %534 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %535 = load i8, i8* %534, align 1, !tbaa !5
  %conv925 = sext i8 %535 to i32
  %cmp926 = icmp eq i32 %conv925, 99
  br i1 %cmp926, label %if.then.932, label %lor.lhs.false.928

lor.lhs.false.928:                                ; preds = %if.then.924
  %536 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %537 = load i8, i8* %536, align 1, !tbaa !5
  %conv929 = sext i8 %537 to i32
  %cmp930 = icmp eq i32 %conv929, 97
  br i1 %cmp930, label %if.then.932, label %if.end.937

if.then.932:                                      ; preds = %lor.lhs.false.928, %if.then.924
  %538 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %538, align 1, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %if.then.932
  %539 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp933 = icmp ne i8* %539, null
  br i1 %cmp933, label %if.then.935, label %if.end.936

if.then.935:                                      ; preds = %do.body
  %540 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %540, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4666)
  store i8* null, i8** %response, align 8, !tbaa !1
  br label %if.end.936

if.end.936:                                       ; preds = %if.then.935, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.936
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.937

if.end.937:                                       ; preds = %do.end, %lor.lhs.false.928
  %541 = load i32, i32* %dfopen, align 4, !tbaa !16
  %tobool938 = icmp ne i32 %541, 0
  br i1 %tobool938, label %if.then.939, label %if.end.944

if.then.939:                                      ; preds = %if.end.937
  %542 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp940 = getelementptr inbounds %struct.envelope, %struct.envelope* %542, i32 0, i32 24
  %543 = load %struct.sm_file*, %struct.sm_file** %e_dfp940, align 8, !tbaa !57
  %call941 = call i32 @sm_io_close(%struct.sm_file* %543, i32 -2)
  %544 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp942 = getelementptr inbounds %struct.envelope, %struct.envelope* %544, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp942, align 8, !tbaa !57
  %545 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %545, i32 0, i32 11
  %546 = load i64, i64* %e_flags, align 8, !tbaa !58
  %and943 = and i64 %546, -2097153
  store i64 %and943, i64* %e_flags, align 8, !tbaa !58
  store i32 0, i32* %dfopen, align 4, !tbaa !16
  br label %if.end.944

if.end.944:                                       ; preds = %if.then.939, %if.end.937
  store i32 0, i32* %rewind, align 4, !tbaa !16
  br label %if.end.945

if.end.945:                                       ; preds = %if.end.944, %finishup
  %547 = load i32, i32* %dfopen, align 4, !tbaa !16
  %tobool946 = icmp ne i32 %547, 0
  br i1 %tobool946, label %land.lhs.true.947, label %lor.lhs.false.951

land.lhs.true.947:                                ; preds = %if.end.945
  %548 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call948 = call i32 @milter_reset_df(%struct.envelope* %548)
  %cmp949 = icmp slt i32 %call948, 0
  br i1 %cmp949, label %if.then.958, label %lor.lhs.false.951

lor.lhs.false.951:                                ; preds = %land.lhs.true.947, %if.end.945
  %549 = load i32, i32* %rewind, align 4, !tbaa !16
  %tobool952 = icmp ne i32 %549, 0
  br i1 %tobool952, label %land.lhs.true.953, label %if.end.979

land.lhs.true.953:                                ; preds = %lor.lhs.false.951
  %550 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp954 = getelementptr inbounds %struct.envelope, %struct.envelope* %550, i32 0, i32 24
  %551 = load %struct.sm_file*, %struct.sm_file** %e_dfp954, align 8, !tbaa !57
  %call955 = call i32 @bfrewind(%struct.sm_file* %551)
  %cmp956 = icmp slt i32 %call955, 0
  br i1 %cmp956, label %if.then.958, label %if.end.979

if.then.958:                                      ; preds = %land.lhs.true.953, %land.lhs.true.947
  %call959 = call i32* @__errno_location() #11
  %552 = load i32, i32* %call959, align 4, !tbaa !16
  store i32 %552, i32* %save_errno, align 4, !tbaa !16
  store i32 74, i32* @ExitStat, align 4, !tbaa !16
  %553 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %554 = load i8, i8* %553, align 1, !tbaa !5
  %conv960 = sext i8 %554 to i32
  %cmp961 = icmp eq i32 %conv960, 99
  br i1 %cmp961, label %if.then.967, label %lor.lhs.false.963

lor.lhs.false.963:                                ; preds = %if.then.958
  %555 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %556 = load i8, i8* %555, align 1, !tbaa !5
  %conv964 = sext i8 %556 to i32
  %cmp965 = icmp eq i32 %conv964, 97
  br i1 %cmp965, label %if.then.967, label %if.end.975

if.then.967:                                      ; preds = %lor.lhs.false.963, %if.then.958
  %557 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %557, align 1, !tbaa !5
  br label %do.body.968

do.body.968:                                      ; preds = %if.then.967
  %558 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp969 = icmp ne i8* %558, null
  br i1 %cmp969, label %if.then.971, label %if.end.972

if.then.971:                                      ; preds = %do.body.968
  %559 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %559, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 4694)
  store i8* null, i8** %response, align 8, !tbaa !1
  br label %if.end.972

if.end.972:                                       ; preds = %if.then.971, %do.body.968
  br label %do.cond.973

do.cond.973:                                      ; preds = %if.end.972
  br label %do.end.974

do.end.974:                                       ; preds = %do.cond.973
  br label %if.end.975

if.end.975:                                       ; preds = %do.end.974, %lor.lhs.false.963
  %560 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call976 = call i32* @__errno_location() #11
  store i32 %560, i32* %call976, align 4, !tbaa !16
  %561 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_qgrp = getelementptr inbounds %struct.envelope, %struct.envelope* %561, i32 0, i32 26
  %562 = load i32, i32* %e_qgrp, align 4, !tbaa !59
  %563 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_qdir = getelementptr inbounds %struct.envelope, %struct.envelope* %563, i32 0, i32 27
  %564 = load i32, i32* %e_qdir, align 4, !tbaa !60
  %call977 = call i8* @qid_printqueue(i32 %562, i32 %564)
  %565 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id978 = getelementptr inbounds %struct.envelope, %struct.envelope* %565, i32 0, i32 25
  %566 = load i8*, i8** %e_id978, align 8, !tbaa !18
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.65, i32 0, i32 0), i8* %call977, i32 100, i8* %566)
  br label %if.end.979

if.end.979:                                       ; preds = %if.end.975, %land.lhs.true.953, %lor.lhs.false.951
  %567 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %568 = load i8, i8* %567, align 1, !tbaa !5
  %conv980 = sext i8 %568 to i32
  %cmp981 = icmp eq i32 %conv980, 121
  br i1 %cmp981, label %if.then.995, label %lor.lhs.false.983

lor.lhs.false.983:                                ; preds = %if.end.979
  %569 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %570 = load i8, i8* %569, align 1, !tbaa !5
  %conv984 = sext i8 %570 to i32
  %cmp985 = icmp eq i32 %conv984, 114
  br i1 %cmp985, label %if.then.995, label %lor.lhs.false.987

lor.lhs.false.987:                                ; preds = %lor.lhs.false.983
  %571 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %572 = load i8, i8* %571, align 1, !tbaa !5
  %conv988 = sext i8 %572 to i32
  %cmp989 = icmp eq i32 %conv988, 100
  br i1 %cmp989, label %if.then.995, label %lor.lhs.false.991

lor.lhs.false.991:                                ; preds = %lor.lhs.false.987
  %573 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %574 = load i8, i8* %573, align 1, !tbaa !5
  %conv992 = sext i8 %574 to i32
  %cmp993 = icmp eq i32 %conv992, 116
  br i1 %cmp993, label %if.then.995, label %if.end.996

if.then.995:                                      ; preds = %lor.lhs.false.991, %lor.lhs.false.987, %lor.lhs.false.983, %if.end.979
  %575 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_abort(%struct.envelope* %575)
  br label %if.end.996

if.end.996:                                       ; preds = %if.then.995, %lor.lhs.false.991
  %576 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp997 = icmp sgt i32 %576, 10
  br i1 %cmp997, label %land.lhs.true.999, label %if.end.1005

land.lhs.true.999:                                ; preds = %if.end.996
  %577 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %578 = load i8, i8* %577, align 1, !tbaa !5
  %conv1000 = sext i8 %578 to i32
  %cmp1001 = icmp eq i32 %conv1000, 114
  br i1 %cmp1001, label %if.then.1003, label %if.end.1005

if.then.1003:                                     ; preds = %land.lhs.true.999
  %579 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id1004 = getelementptr inbounds %struct.envelope, %struct.envelope* %579, i32 0, i32 25
  %580 = load i8*, i8** %e_id1004, align 8, !tbaa !18
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %580, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.1005

if.end.1005:                                      ; preds = %if.then.1003, %land.lhs.true.999, %if.end.996
  %581 = load i8*, i8** %response, align 8, !tbaa !1
  store i8* %581, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1006

cleanup.1006:                                     ; preds = %if.end.1005, %cleanup
  %582 = bitcast i64* %rlen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %582) #1
  %583 = bitcast i64* %eomsent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %583) #1
  %584 = bitcast i8** %response to i8*
  call void @llvm.lifetime.end(i64 8, i8* %584) #1
  %585 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %585) #1
  %586 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %586) #1
  call void @llvm.lifetime.end(i64 1, i8* %rcmd) #1
  %587 = bitcast i32* %newfilter to i8*
  call void @llvm.lifetime.end(i64 4, i8* %587) #1
  %588 = bitcast i32* %dfopen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %588) #1
  %589 = bitcast i32* %rewind to i8*
  call void @llvm.lifetime.end(i64 4, i8* %589) #1
  %590 = bitcast i32* %replfailed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %590) #1
  %591 = bitcast i32* %replbody to i8*
  call void @llvm.lifetime.end(i64 4, i8* %591) #1
  %592 = load i8*, i8** %retval
  ret i8* %592
}

; Function Attrs: nounwind uwtable
define internal i8* @milter_headers(%struct.milter* %m, %struct.envelope* %e, i8* %state) #0 {
entry:
  %m.addr = alloca %struct.milter*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %state.addr = alloca i8*, align 8
  %response = alloca i8*, align 8
  %h = alloca %struct.header*, align 8
  %len_n = alloca i32, align 4
  %len_v = alloca i32, align 4
  %len_t = alloca i32, align 4
  %len_f = alloca i32, align 4
  %buf = alloca i8*, align 8
  %hv = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %state, i8** %state.addr, align 8, !tbaa !1
  %0 = bitcast i8** %response to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %response, align 8, !tbaa !1
  %1 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp = icmp sgt i32 %2, 17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %3, i32 0, i32 25
  %4 = load i8*, i8** %e_id, align 8, !tbaa !18
  %5 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %5, i32 0, i32 0
  %6 = load i8*, i8** %mf_name, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.152, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header = getelementptr inbounds %struct.envelope, %struct.envelope* %7, i32 0, i32 0
  %8 = load %struct.header*, %struct.header** %e_header, align 8, !tbaa !61
  store %struct.header* %8, %struct.header** %h, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.header* %9, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = bitcast i32* %len_n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %len_v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %len_t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %len_f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i8** %hv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value = getelementptr inbounds %struct.header, %struct.header* %16, i32 0, i32 1
  %17 = load i8*, i8** %h_value, align 8, !tbaa !62
  %cmp2 = icmp eq i8* %17, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  %18 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags = getelementptr inbounds %struct.header, %struct.header* %18, i32 0, i32 4
  %19 = load i64, i64* %h_flags, align 8, !tbaa !64
  %and = and i64 %19, -262145
  store i64 %and, i64* %h_flags, align 8, !tbaa !64
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %for.body
  %20 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags5 = getelementptr inbounds %struct.header, %struct.header* %20, i32 0, i32 4
  %21 = load i64, i64* %h_flags5, align 8, !tbaa !64
  %and6 = and i64 %21, 262144
  %cmp7 = icmp ne i64 %and6, 0
  br i1 %cmp7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.4
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.4
  %22 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %22 to i32
  %cmp10 = icmp sge i32 %conv, 10
  br i1 %cmp10, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.9
  %23 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true
  %24 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field = getelementptr inbounds %struct.header, %struct.header* %24, i32 0, i32 0
  %25 = load i8*, i8** %h_field, align 8, !tbaa !65
  %26 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value13 = getelementptr inbounds %struct.header, %struct.header* %26, i32 0, i32 1
  %27 = load i8*, i8** %h_value13, align 8, !tbaa !62
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.153, i32 0, i32 0), i8* %25, i8* %27)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %land.lhs.true, %if.end.9
  %28 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp15 = icmp sgt i32 %28, 21
  br i1 %cmp15, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.end.14
  %29 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id18 = getelementptr inbounds %struct.envelope, %struct.envelope* %29, i32 0, i32 25
  %30 = load i8*, i8** %e_id18, align 8, !tbaa !18
  %31 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name19 = getelementptr inbounds %struct.milter, %struct.milter* %31, i32 0, i32 0
  %32 = load i8*, i8** %mf_name19, align 8, !tbaa !8
  %33 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field20 = getelementptr inbounds %struct.header, %struct.header* %33, i32 0, i32 0
  %34 = load i8*, i8** %h_field20, align 8, !tbaa !65
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.154, i32 0, i32 0), i8* %32, i8* %34)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.end.14
  %35 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags = getelementptr inbounds %struct.milter, %struct.milter* %35, i32 0, i32 4
  %36 = load i32, i32* %mf_pflags, align 4, !tbaa !52
  %conv22 = sext i32 %36 to i64
  %and23 = and i64 %conv22, 1048576
  %cmp24 = icmp ne i64 %and23, 0
  br i1 %cmp24, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.21
  %37 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value26 = getelementptr inbounds %struct.header, %struct.header* %37, i32 0, i32 1
  %38 = load i8*, i8** %h_value26, align 8, !tbaa !62
  %39 = load i8, i8* %38, align 1, !tbaa !5
  %conv27 = sext i8 %39 to i32
  %cmp28 = icmp ne i32 %conv27, 32
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %lor.lhs.false, %if.end.21
  %40 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value31 = getelementptr inbounds %struct.header, %struct.header* %40, i32 0, i32 1
  %41 = load i8*, i8** %h_value31, align 8, !tbaa !62
  store i8* %41, i8** %hv, align 8, !tbaa !1
  br label %if.end.33

if.else:                                          ; preds = %lor.lhs.false
  %42 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value32 = getelementptr inbounds %struct.header, %struct.header* %42, i32 0, i32 1
  %43 = load i8*, i8** %h_value32, align 8, !tbaa !62
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %add.ptr, i8** %hv, align 8, !tbaa !1
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.30
  %44 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field34 = getelementptr inbounds %struct.header, %struct.header* %44, i32 0, i32 0
  %45 = load i8*, i8** %h_field34, align 8, !tbaa !65
  %call = call i64 @strlen(i8* %45) #12
  %add = add i64 %call, 1
  %conv35 = trunc i64 %add to i32
  store i32 %conv35, i32* %len_f, align 4, !tbaa !16
  %46 = load i32, i32* %len_f, align 4, !tbaa !16
  %conv36 = sext i32 %46 to i64
  %47 = load i8*, i8** %hv, align 8, !tbaa !1
  %call37 = call i64 @strlen(i8* %47) #12
  %add38 = add i64 %conv36, %call37
  %add39 = add i64 %add38, 1
  %conv40 = trunc i64 %add39 to i32
  store i32 %conv40, i32* %len_t, align 4, !tbaa !16
  %48 = load i32, i32* %len_t, align 4, !tbaa !16
  %cmp41 = icmp slt i32 %48, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.33
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end.33
  %49 = load i32, i32* %len_t, align 4, !tbaa !16
  %call45 = call i8* @xalloc_tagged(i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2723)
  store i8* %call45, i8** %buf, align 8, !tbaa !1
  %50 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field46 = getelementptr inbounds %struct.header, %struct.header* %50, i32 0, i32 0
  %51 = load i8*, i8** %h_field46, align 8, !tbaa !65
  %52 = load i8*, i8** %buf, align 8, !tbaa !1
  %53 = load i32, i32* %len_f, align 4, !tbaa !16
  %call47 = call i32 @dequote_internal_chars(i8* %51, i8* %52, i32 %53)
  store i32 %call47, i32* %len_n, align 4, !tbaa !16
  %54 = load i32, i32* %len_n, align 4, !tbaa !16
  %55 = load i32, i32* %len_f, align 4, !tbaa !16
  %cmp48 = icmp slt i32 %54, %55
  br i1 %cmp48, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.44
  call void @sm_abort_at(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2731, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.155, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %56, %if.end.44
  %57 = phi i1 [ true, %if.end.44 ], [ false, %56 ]
  %lor.ext = zext i1 %57 to i32
  %58 = load i8*, i8** %hv, align 8, !tbaa !1
  %59 = load i8*, i8** %buf, align 8, !tbaa !1
  %60 = load i32, i32* %len_n, align 4, !tbaa !16
  %idx.ext = sext i32 %60 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %59, i64 %idx.ext
  %add.ptr51 = getelementptr inbounds i8, i8* %add.ptr50, i64 1
  %61 = load i32, i32* %len_t, align 4, !tbaa !16
  %62 = load i32, i32* %len_n, align 4, !tbaa !16
  %sub = sub nsw i32 %61, %62
  %sub52 = sub nsw i32 %sub, 1
  %call53 = call i32 @dequote_internal_chars(i8* %58, i8* %add.ptr51, i32 %sub52)
  store i32 %call53, i32* %len_v, align 4, !tbaa !16
  %63 = load i32, i32* %len_t, align 4, !tbaa !16
  %64 = load i32, i32* %len_n, align 4, !tbaa !16
  %add54 = add nsw i32 %64, 1
  %65 = load i32, i32* %len_v, align 4, !tbaa !16
  %add55 = add nsw i32 %add54, %65
  %add56 = add nsw i32 %add55, 1
  %cmp57 = icmp sge i32 %63, %add56
  br i1 %cmp57, label %lor.end.60, label %lor.rhs.59

lor.rhs.59:                                       ; preds = %lor.end
  call void @sm_abort_at(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2734, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.156, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %lor.end.60

lor.end.60:                                       ; preds = %66, %lor.end
  %67 = phi i1 [ true, %lor.end ], [ false, %66 ]
  %lor.ext61 = zext i1 %67 to i32
  %68 = load i32, i32* %len_n, align 4, !tbaa !16
  %add62 = add nsw i32 %68, 1
  %69 = load i32, i32* %len_v, align 4, !tbaa !16
  %add63 = add nsw i32 %add62, %69
  %add64 = add nsw i32 %add63, 1
  store i32 %add64, i32* %len_t, align 4, !tbaa !16
  %70 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %71 = load i8*, i8** %buf, align 8, !tbaa !1
  %72 = load i32, i32* %len_t, align 4, !tbaa !16
  %conv65 = sext i32 %72 to i64
  %73 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %74 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %call66 = call i8* @milter_send_command(%struct.milter* %70, i32 76, i8* %71, i64 %conv65, %struct.envelope* %73, i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i32 0, i32 0))
  store i8* %call66, i8** %response, align 8, !tbaa !1
  %75 = load i8*, i8** %buf, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2740)
  %76 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %76, i32 0, i32 7
  %77 = load i8, i8* %mf_state, align 1, !tbaa !11
  %conv67 = sext i8 %77 to i32
  %cmp68 = icmp eq i32 %conv67, 69
  br i1 %cmp68, label %if.then.79, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.end.60
  %78 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state71 = getelementptr inbounds %struct.milter, %struct.milter* %78, i32 0, i32 7
  %79 = load i8, i8* %mf_state71, align 1, !tbaa !11
  %conv72 = sext i8 %79 to i32
  %cmp73 = icmp eq i32 %conv72, 68
  br i1 %cmp73, label %if.then.79, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.70
  %80 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %81 = load i8, i8* %80, align 1, !tbaa !5
  %conv76 = sext i8 %81 to i32
  %cmp77 = icmp ne i32 %conv76, 99
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %lor.lhs.false.75, %lor.lhs.false.70, %lor.end.60
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %lor.lhs.false.75
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.80, %if.then.79, %if.then.43, %if.then.8, %if.then.3
  %82 = bitcast i8** %hv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i32* %len_f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %len_t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %len_v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %len_n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %88 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_link = getelementptr inbounds %struct.header, %struct.header* %88, i32 0, i32 2
  %89 = load %struct.header*, %struct.header** %h_link, align 8, !tbaa !66
  store %struct.header* %89, %struct.header** %h, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %90 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp86 = icmp sgt i32 %90, 17
  br i1 %cmp86, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %for.end
  %91 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id89 = getelementptr inbounds %struct.envelope, %struct.envelope* %91, i32 0, i32 25
  %92 = load i8*, i8** %e_id89, align 8, !tbaa !18
  %93 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name90 = getelementptr inbounds %struct.milter, %struct.milter* %93, i32 0, i32 0
  %94 = load i8*, i8** %mf_name90, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.158, i32 0, i32 0), i8* %94)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %for.end
  %95 = load i8*, i8** %response, align 8, !tbaa !1
  store i32 1, i32* %cleanup.dest.slot
  %96 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i8** %response to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  ret i8* %95

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noreturn
declare void @sm_abort_at(i8*, i32, i8*) #8

; Function Attrs: nounwind uwtable
define internal void @milter_send_macros(%struct.milter* %m, i8** %macros, i32 %cmd, %struct.envelope* %e) #0 {
entry:
  %m.addr = alloca %struct.milter*, align 8
  %macros.addr = alloca i8**, align 8
  %cmd.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %i = alloca i32, align 4
  %mid = alloca i32, align 4
  %command = alloca i8, align 1
  %v = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %exp = alloca [2048 x i8], align 16
  %s = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store i8** %macros, i8*** %macros.addr, align 8, !tbaa !1
  store i32 %cmd, i32* %cmd.addr, align 4, !tbaa !16
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  call void @llvm.lifetime.start(i64 1, i8* %command) #1
  %2 = load i32, i32* %cmd.addr, align 4, !tbaa !16
  %conv = trunc i32 %2 to i8
  store i8 %conv, i8* %command, align 1, !tbaa !5
  %3 = bitcast i8** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast [2048 x i8]* %exp to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %6) #1
  %7 = bitcast i64* %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8**, i8*** %macros.addr, align 8, !tbaa !1
  %cmp = icmp eq i8** %8, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i8**, i8*** %macros.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %10, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i64 1, i64* %s, align 8, !tbaa !13
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom = sext i32 %11 to i64
  %12 = load i8**, i8*** %macros.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %13 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %cmp5 = icmp ne i8* %13, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom7 = sext i32 %14 to i64
  %15 = load i8**, i8*** %macros.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8*, i8** %15, i64 %idxprom7
  %16 = load i8*, i8** %arrayidx8, align 8, !tbaa !1
  %call = call i32 @macid_parse(i8* %16, i8** null)
  store i32 %call, i32* %mid, align 4, !tbaa !16
  %17 = load i32, i32* %mid, align 4, !tbaa !16
  %cmp9 = icmp eq i32 %17, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  br label %for.inc

if.end.12:                                        ; preds = %for.body
  %18 = load i32, i32* %mid, align 4, !tbaa !16
  %19 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call13 = call i8* @macvalue(i32 %18, %struct.envelope* %19)
  store i8* %call13, i8** %v, align 8, !tbaa !1
  %20 = load i8*, i8** %v, align 8, !tbaa !1
  %cmp14 = icmp eq i8* %20, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  br label %for.inc

if.end.17:                                        ; preds = %if.end.12
  %21 = load i8*, i8** %v, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %exp, i32 0, i32 0
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %21, i8* %arraydecay, i64 2048, %struct.envelope* %22)
  %23 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom18 = sext i32 %23 to i64
  %24 = load i8**, i8*** %macros.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8*, i8** %24, i64 %idxprom18
  %25 = load i8*, i8** %arrayidx19, align 8, !tbaa !1
  %call20 = call i64 @strlen(i8* %25) #12
  %add = add i64 %call20, 1
  %arraydecay21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exp, i32 0, i32 0
  %call22 = call i64 @strlen(i8* %arraydecay21) #12
  %add23 = add i64 %add, %call22
  %add24 = add i64 %add23, 1
  %26 = load i64, i64* %s, align 8, !tbaa !13
  %add25 = add i64 %26, %add24
  store i64 %add25, i64* %s, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %if.end.17, %if.then.16, %if.then.11
  %27 = load i32, i32* %i, align 4, !tbaa !16
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i64, i64* %s, align 8, !tbaa !13
  %cmp26 = icmp slt i64 %28, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %for.end
  %29 = load i64, i64* %s, align 8, !tbaa !13
  %conv30 = trunc i64 %29 to i32
  %call31 = call i8* @xalloc_tagged(i32 %conv30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 1916)
  store i8* %call31, i8** %buf, align 8, !tbaa !1
  %30 = load i8*, i8** %buf, align 8, !tbaa !1
  store i8* %30, i8** %bp, align 8, !tbaa !1
  %31 = load i8, i8* %command, align 1, !tbaa !5
  %32 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  store i8 %31, i8* %32, align 1, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.74, %if.end.29
  %33 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom33 = sext i32 %33 to i64
  %34 = load i8**, i8*** %macros.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8*, i8** %34, i64 %idxprom33
  %35 = load i8*, i8** %arrayidx34, align 8, !tbaa !1
  %cmp35 = icmp ne i8* %35, null
  br i1 %cmp35, label %for.body.37, label %for.end.76

for.body.37:                                      ; preds = %for.cond.32
  %36 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom38 = sext i32 %36 to i64
  %37 = load i8**, i8*** %macros.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8*, i8** %37, i64 %idxprom38
  %38 = load i8*, i8** %arrayidx39, align 8, !tbaa !1
  %call40 = call i32 @macid_parse(i8* %38, i8** null)
  store i32 %call40, i32* %mid, align 4, !tbaa !16
  %39 = load i32, i32* %mid, align 4, !tbaa !16
  %cmp41 = icmp eq i32 %39, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.body.37
  br label %for.inc.74

if.end.44:                                        ; preds = %for.body.37
  %40 = load i32, i32* %mid, align 4, !tbaa !16
  %41 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call45 = call i8* @macvalue(i32 %40, %struct.envelope* %41)
  store i8* %call45, i8** %v, align 8, !tbaa !1
  %42 = load i8*, i8** %v, align 8, !tbaa !1
  %cmp46 = icmp eq i8* %42, null
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.44
  br label %for.inc.74

if.end.49:                                        ; preds = %if.end.44
  %43 = load i8*, i8** %v, align 8, !tbaa !1
  %arraydecay50 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exp, i32 0, i32 0
  %44 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %43, i8* %arraydecay50, i64 2048, %struct.envelope* %44)
  %45 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv51 = zext i8 %45 to i32
  %cmp52 = icmp sge i32 %conv51, 10
  br i1 %cmp52, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %if.end.49
  %46 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.end.59, label %if.then.54

if.then.54:                                       ; preds = %land.lhs.true
  %47 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %47, i32 0, i32 0
  %48 = load i8*, i8** %mf_name, align 8, !tbaa !8
  %49 = load i8, i8* %command, align 1, !tbaa !5
  %conv55 = sext i8 %49 to i32
  %50 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom56 = sext i32 %50 to i64
  %51 = load i8**, i8*** %macros.addr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8*, i8** %51, i64 %idxprom56
  %52 = load i8*, i8** %arrayidx57, align 8, !tbaa !1
  %arraydecay58 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exp, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.159, i32 0, i32 0), i8* %48, i32 %conv55, i8* %52, i8* %arraydecay58)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.54, %land.lhs.true, %if.end.49
  %53 = load i8*, i8** %bp, align 8, !tbaa !1
  %54 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom60 = sext i32 %54 to i64
  %55 = load i8**, i8*** %macros.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8*, i8** %55, i64 %idxprom60
  %56 = load i8*, i8** %arrayidx61, align 8, !tbaa !1
  %57 = load i64, i64* %s, align 8, !tbaa !13
  %58 = load i8*, i8** %bp, align 8, !tbaa !1
  %59 = load i8*, i8** %buf, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %58 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %59 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %57, %sub.ptr.sub
  %call62 = call i64 @sm_strlcpy(i8* %53, i8* %56, i64 %sub)
  %60 = load i8*, i8** %bp, align 8, !tbaa !1
  %call63 = call i64 @strlen(i8* %60) #12
  %add64 = add i64 %call63, 1
  %61 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %add64
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  %62 = load i8*, i8** %bp, align 8, !tbaa !1
  %arraydecay65 = getelementptr inbounds [2048 x i8], [2048 x i8]* %exp, i32 0, i32 0
  %63 = load i64, i64* %s, align 8, !tbaa !13
  %64 = load i8*, i8** %bp, align 8, !tbaa !1
  %65 = load i8*, i8** %buf, align 8, !tbaa !1
  %sub.ptr.lhs.cast66 = ptrtoint i8* %64 to i64
  %sub.ptr.rhs.cast67 = ptrtoint i8* %65 to i64
  %sub.ptr.sub68 = sub i64 %sub.ptr.lhs.cast66, %sub.ptr.rhs.cast67
  %sub69 = sub nsw i64 %63, %sub.ptr.sub68
  %call70 = call i64 @sm_strlcpy(i8* %62, i8* %arraydecay65, i64 %sub69)
  %66 = load i8*, i8** %bp, align 8, !tbaa !1
  %call71 = call i64 @strlen(i8* %66) #12
  %add72 = add i64 %call71, 1
  %67 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr73 = getelementptr inbounds i8, i8* %67, i64 %add72
  store i8* %add.ptr73, i8** %bp, align 8, !tbaa !1
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.59, %if.then.48, %if.then.43
  %68 = load i32, i32* %i, align 4, !tbaa !16
  %inc75 = add nsw i32 %68, 1
  store i32 %inc75, i32* %i, align 4, !tbaa !16
  br label %for.cond.32

for.end.76:                                       ; preds = %for.cond.32
  %69 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %70 = load i8*, i8** %buf, align 8, !tbaa !1
  %71 = load i64, i64* %s, align 8, !tbaa !13
  %72 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_timeout = getelementptr inbounds %struct.milter, %struct.milter* %72, i32 0, i32 10
  %arrayidx77 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout, i32 0, i64 0
  %73 = load i64, i64* %arrayidx77, align 8, !tbaa !13
  %74 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call78 = call i8* @milter_write(%struct.milter* %69, i32 68, i8* %70, i64 %71, i64 %73, %struct.envelope* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.160, i32 0, i32 0))
  %75 = load i8*, i8** %buf, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 1940)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.76, %if.then.28, %if.then
  %76 = bitcast i64* %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast [2048 x i8]* %exp to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %77) #1
  %78 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i8** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  call void @llvm.lifetime.end(i64 1, i8* %command) #1
  %81 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
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

; Function Attrs: nounwind uwtable
define internal i8* @milter_send_command(%struct.milter* %m, i32 %cmd, i8* %data, i64 %sz, %struct.envelope* %e, i8* %state, i8* %where) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.milter*, align 8
  %cmd.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %sz.addr = alloca i64, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %state.addr = alloca i8*, align 8
  %where.addr = alloca i8*, align 8
  %rcmd = alloca i8, align 1
  %rlen = alloca i64, align 8
  %skipflag = alloca i64, align 8
  %norespflag = alloca i64, align 8
  %command = alloca i8, align 1
  %action = alloca i8*, align 8
  %defresponse = alloca i8*, align 8
  %response = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %ptr = alloca i8*, align 8
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store i32 %cmd, i32* %cmd.addr, align 4, !tbaa !16
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %sz, i64* %sz.addr, align 8, !tbaa !13
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %state, i8** %state.addr, align 8, !tbaa !1
  store i8* %where, i8** %where.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %rcmd) #1
  %0 = bitcast i64* %rlen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %skipflag to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %norespflag to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i64 0, i64* %norespflag, align 8, !tbaa !13
  call void @llvm.lifetime.start(i64 1, i8* %command) #1
  %3 = load i32, i32* %cmd.addr, align 4, !tbaa !16
  %conv = trunc i32 %3 to i8
  store i8 %conv, i8* %command, align 1, !tbaa !5
  %4 = bitcast i8** %action to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %defresponse to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %response to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv1 = zext i8 %7 to i32
  %cmp = icmp sge i32 %conv1, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %9, i32 0, i32 0
  %10 = load i8*, i8** %mf_name, align 8, !tbaa !8
  %11 = load i8, i8* %command, align 1, !tbaa !5
  %conv3 = sext i8 %11 to i32
  %12 = load i64, i64* %sz.addr, align 8, !tbaa !13
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.161, i32 0, i32 0), i8* %10, i32 %conv3, i64 %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load i8, i8* %command, align 1, !tbaa !5
  %conv4 = sext i8 %13 to i32
  switch i32 %conv4, label %sw.default [
    i32 67, label %sw.bb
    i32 72, label %sw.bb.5
    i32 77, label %sw.bb.6
    i32 82, label %sw.bb.7
    i32 76, label %sw.bb.8
    i32 66, label %sw.bb.9
    i32 78, label %sw.bb.10
    i32 85, label %sw.bb.11
    i32 84, label %sw.bb.12
    i32 69, label %sw.bb.13
    i32 79, label %sw.bb.13
    i32 68, label %sw.bb.13
    i32 65, label %sw.bb.13
    i32 81, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.end
  store i64 1, i64* %skipflag, align 8, !tbaa !13
  store i64 4096, i64* %norespflag, align 8, !tbaa !13
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.162, i32 0, i32 0), i8** %defresponse, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end
  store i64 2, i64* %skipflag, align 8, !tbaa !13
  store i64 8192, i64* %norespflag, align 8, !tbaa !13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.163, i32 0, i32 0), i8** %defresponse, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  store i64 4, i64* %skipflag, align 8, !tbaa !13
  store i64 16384, i64* %norespflag, align 8, !tbaa !13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.164, i32 0, i32 0), i8** %defresponse, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.end
  store i64 8, i64* %skipflag, align 8, !tbaa !13
  store i64 32768, i64* %norespflag, align 8, !tbaa !13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.164, i32 0, i32 0), i8** %defresponse, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  store i64 32, i64* %skipflag, align 8, !tbaa !13
  store i64 128, i64* %norespflag, align 8, !tbaa !13
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.164, i32 0, i32 0), i8** %defresponse, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  store i64 16, i64* %skipflag, align 8, !tbaa !13
  store i64 524288, i64* %norespflag, align 8, !tbaa !13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.165, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i32 0, i32 0), i8** %defresponse, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  store i64 64, i64* %skipflag, align 8, !tbaa !13
  store i64 262144, i64* %norespflag, align 8, !tbaa !13
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.164, i32 0, i32 0), i8** %defresponse, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  store i64 256, i64* %skipflag, align 8, !tbaa !13
  store i64 131072, i64* %norespflag, align 8, !tbaa !13
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.164, i32 0, i32 0), i8** %defresponse, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  store i64 512, i64* %skipflag, align 8, !tbaa !13
  store i64 65536, i64* %norespflag, align 8, !tbaa !13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.164, i32 0, i32 0), i8** %defresponse, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb.13
  store i64 0, i64* %skipflag, align 8, !tbaa !13
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.166, i32 0, i32 0), i8** %action, align 8, !tbaa !1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.164, i32 0, i32 0), i8** %defresponse, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb
  %14 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv14 = zext i8 %14 to i32
  %cmp15 = icmp sge i32 %conv14, 10
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %sw.epilog
  %15 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool18 = icmp ne i32 %15, 0
  br i1 %tobool18, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true.17
  %16 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name20 = getelementptr inbounds %struct.milter, %struct.milter* %16, i32 0, i32 0
  %17 = load i8*, i8** %mf_name20, align 8, !tbaa !8
  %18 = load i64, i64* %skipflag, align 8, !tbaa !13
  %19 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags = getelementptr inbounds %struct.milter, %struct.milter* %19, i32 0, i32 4
  %20 = load i32, i32* %mf_pflags, align 4, !tbaa !52
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.167, i32 0, i32 0), i8* %17, i64 %18, i32 %20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %land.lhs.true.17, %sw.epilog
  %21 = load i64, i64* %skipflag, align 8, !tbaa !13
  %cmp22 = icmp ne i64 %21, 0
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.30

land.lhs.true.24:                                 ; preds = %if.end.21
  %22 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags25 = getelementptr inbounds %struct.milter, %struct.milter* %22, i32 0, i32 4
  %23 = load i32, i32* %mf_pflags25, align 4, !tbaa !52
  %conv26 = sext i32 %23 to i64
  %24 = load i64, i64* %skipflag, align 8, !tbaa !13
  %and = and i64 %conv26, %24
  %cmp27 = icmp ne i64 %and, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true.24
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %land.lhs.true.24, %if.end.21
  %25 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %26 = load i8, i8* %command, align 1, !tbaa !5
  %conv31 = sext i8 %26 to i32
  %27 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %28 = load i64, i64* %sz.addr, align 8, !tbaa !13
  %29 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_timeout = getelementptr inbounds %struct.milter, %struct.milter* %29, i32 0, i32 10
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout, i32 0, i64 0
  %30 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %31 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %where.addr, align 8, !tbaa !1
  %call = call i8* @milter_write(%struct.milter* %25, i32 %conv31, i8* %27, i64 %28, i64 %30, %struct.envelope* %31, i8* %32)
  %33 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %33, i32 0, i32 7
  %34 = load i8, i8* %mf_state, align 1, !tbaa !11
  %conv32 = sext i8 %34 to i32
  %cmp33 = icmp eq i32 %conv32, 69
  br i1 %cmp33, label %if.then.35, label %if.end.90

if.then.35:                                       ; preds = %if.end.30
  %35 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv36 = zext i8 %35 to i32
  %cmp37 = icmp sge i32 %conv36, 100
  br i1 %cmp37, label %land.lhs.true.39, label %if.else

land.lhs.true.39:                                 ; preds = %if.then.35
  %36 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool40 = icmp ne i32 %36, 0
  br i1 %tobool40, label %if.else, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true.39
  %37 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg = getelementptr inbounds %struct.envelope, %struct.envelope* %37, i32 0, i32 36
  %38 = load i8*, i8** %e_quarmsg, align 8, !tbaa !39
  %cmp42 = icmp eq i8* %38, null
  br i1 %cmp42, label %if.then.44, label %if.end.49

if.then.44:                                       ; preds = %if.then.41
  %39 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %39, i32 0, i32 52
  %40 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !40
  %call45 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %41 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg46 = getelementptr inbounds %struct.envelope, %struct.envelope* %41, i32 0, i32 36
  store i8* %call45, i8** %e_quarmsg46, align 8, !tbaa !39
  %42 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %42, i32 0, i32 46
  %call47 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %43 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg48 = getelementptr inbounds %struct.envelope, %struct.envelope* %43, i32 0, i32 36
  %44 = load i8*, i8** %e_quarmsg48, align 8, !tbaa !39
  %45 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 %call47, i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2075, i32 %45)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.44, %if.then.41
  br label %if.end.89

if.else:                                          ; preds = %land.lhs.true.39, %if.then.35
  %46 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv50 = zext i8 %46 to i32
  %cmp51 = icmp sge i32 %conv50, 101
  br i1 %cmp51, label %land.lhs.true.53, label %if.else.67

land.lhs.true.53:                                 ; preds = %if.else
  %47 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool54 = icmp ne i32 %47, 0
  br i1 %tobool54, label %if.else.67, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.53
  %48 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg56 = getelementptr inbounds %struct.envelope, %struct.envelope* %48, i32 0, i32 36
  %49 = load i8*, i8** %e_quarmsg56, align 8, !tbaa !39
  %cmp57 = icmp eq i8* %49, null
  br i1 %cmp57, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %if.then.55
  %50 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool60 = getelementptr inbounds %struct.envelope, %struct.envelope* %50, i32 0, i32 52
  %51 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool60, align 8, !tbaa !40
  %call61 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %52 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg62 = getelementptr inbounds %struct.envelope, %struct.envelope* %52, i32 0, i32 36
  store i8* %call61, i8** %e_quarmsg62, align 8, !tbaa !39
  %53 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro63 = getelementptr inbounds %struct.envelope, %struct.envelope* %53, i32 0, i32 46
  %call64 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %54 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg65 = getelementptr inbounds %struct.envelope, %struct.envelope* %54, i32 0, i32 36
  %55 = load i8*, i8** %e_quarmsg65, align 8, !tbaa !39
  %56 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro63, i32 2, i32 %call64, i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2075, i32 %56)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.59, %if.then.55
  br label %if.end.88

if.else.67:                                       ; preds = %land.lhs.true.53, %if.else
  %57 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_flags = getelementptr inbounds %struct.milter, %struct.milter* %57, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags, i32 0, i64 2
  %58 = load i32, i32* %arrayidx68, align 4, !tbaa !16
  %and69 = and i32 %58, 1048576
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.else.67
  %59 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %59, align 1, !tbaa !5
  br label %if.end.87

if.else.72:                                       ; preds = %if.else.67
  %60 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_flags73 = getelementptr inbounds %struct.milter, %struct.milter* %60, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags73, i32 0, i64 1
  %61 = load i32, i32* %arrayidx74, align 4, !tbaa !16
  %and75 = and i32 %61, 1048576
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.else.72
  %62 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %62, align 1, !tbaa !5
  br label %if.end.86

if.else.78:                                       ; preds = %if.else.72
  %63 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_flags79 = getelementptr inbounds %struct.milter, %struct.milter* %63, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags79, i32 0, i64 2
  %64 = load i32, i32* %arrayidx80, align 4, !tbaa !16
  %and81 = and i32 %64, 262144
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %if.else.78
  %65 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %65, align 1, !tbaa !5
  br label %if.end.85

if.else.84:                                       ; preds = %if.else.78
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.85:                                        ; preds = %if.then.83
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.77
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.71
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.66
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.49
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %if.end.30
  %66 = load i64, i64* %norespflag, align 8, !tbaa !13
  %cmp91 = icmp ne i64 %66, 0
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.100

land.lhs.true.93:                                 ; preds = %if.end.90
  %67 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags94 = getelementptr inbounds %struct.milter, %struct.milter* %67, i32 0, i32 4
  %68 = load i32, i32* %mf_pflags94, align 4, !tbaa !52
  %conv95 = sext i32 %68 to i64
  %69 = load i64, i64* %norespflag, align 8, !tbaa !13
  %and96 = and i64 %conv95, %69
  %cmp97 = icmp ne i64 %and96, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %land.lhs.true.93
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.100:                                       ; preds = %land.lhs.true.93, %if.end.90
  %70 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %71 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_timeout101 = getelementptr inbounds %struct.milter, %struct.milter* %71, i32 0, i32 10
  %arrayidx102 = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout101, i32 0, i64 1
  %72 = load i64, i64* %arrayidx102, align 8, !tbaa !13
  %73 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %74 = load i8*, i8** %where.addr, align 8, !tbaa !1
  %call103 = call i8* @milter_read(%struct.milter* %70, i8* %rcmd, i64* %rlen, i64 %72, %struct.envelope* %73, i8* %74)
  store i8* %call103, i8** %response, align 8, !tbaa !1
  %75 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state104 = getelementptr inbounds %struct.milter, %struct.milter* %75, i32 0, i32 7
  %76 = load i8, i8* %mf_state104, align 1, !tbaa !11
  %conv105 = sext i8 %76 to i32
  %cmp106 = icmp eq i32 %conv105, 69
  br i1 %cmp106, label %if.then.108, label %if.end.168

if.then.108:                                      ; preds = %if.end.100
  %77 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv109 = zext i8 %77 to i32
  %cmp110 = icmp sge i32 %conv109, 100
  br i1 %cmp110, label %land.lhs.true.112, label %if.else.126

land.lhs.true.112:                                ; preds = %if.then.108
  %78 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool113 = icmp ne i32 %78, 0
  br i1 %tobool113, label %if.else.126, label %if.then.114

if.then.114:                                      ; preds = %land.lhs.true.112
  %79 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg115 = getelementptr inbounds %struct.envelope, %struct.envelope* %79, i32 0, i32 36
  %80 = load i8*, i8** %e_quarmsg115, align 8, !tbaa !39
  %cmp116 = icmp eq i8* %80, null
  br i1 %cmp116, label %if.then.118, label %if.end.125

if.then.118:                                      ; preds = %if.then.114
  %81 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool119 = getelementptr inbounds %struct.envelope, %struct.envelope* %81, i32 0, i32 52
  %82 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool119, align 8, !tbaa !40
  %call120 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %83 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg121 = getelementptr inbounds %struct.envelope, %struct.envelope* %83, i32 0, i32 36
  store i8* %call120, i8** %e_quarmsg121, align 8, !tbaa !39
  %84 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro122 = getelementptr inbounds %struct.envelope, %struct.envelope* %84, i32 0, i32 46
  %call123 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %85 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg124 = getelementptr inbounds %struct.envelope, %struct.envelope* %85, i32 0, i32 36
  %86 = load i8*, i8** %e_quarmsg124, align 8, !tbaa !39
  %87 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro122, i32 2, i32 %call123, i8* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2088, i32 %87)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.118, %if.then.114
  br label %if.end.167

if.else.126:                                      ; preds = %land.lhs.true.112, %if.then.108
  %88 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 71), align 1, !tbaa !5
  %conv127 = zext i8 %88 to i32
  %cmp128 = icmp sge i32 %conv127, 101
  br i1 %cmp128, label %land.lhs.true.130, label %if.else.144

land.lhs.true.130:                                ; preds = %if.else.126
  %89 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool131 = icmp ne i32 %89, 0
  br i1 %tobool131, label %if.else.144, label %if.then.132

if.then.132:                                      ; preds = %land.lhs.true.130
  %90 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg133 = getelementptr inbounds %struct.envelope, %struct.envelope* %90, i32 0, i32 36
  %91 = load i8*, i8** %e_quarmsg133, align 8, !tbaa !39
  %cmp134 = icmp eq i8* %91, null
  br i1 %cmp134, label %if.then.136, label %if.end.143

if.then.136:                                      ; preds = %if.then.132
  %92 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool137 = getelementptr inbounds %struct.envelope, %struct.envelope* %92, i32 0, i32 52
  %93 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool137, align 8, !tbaa !40
  %call138 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  %94 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg139 = getelementptr inbounds %struct.envelope, %struct.envelope* %94, i32 0, i32 36
  store i8* %call138, i8** %e_quarmsg139, align 8, !tbaa !39
  %95 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro140 = getelementptr inbounds %struct.envelope, %struct.envelope* %95, i32 0, i32 46
  %call141 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8** null)
  %96 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_quarmsg142 = getelementptr inbounds %struct.envelope, %struct.envelope* %96, i32 0, i32 36
  %97 = load i8*, i8** %e_quarmsg142, align 8, !tbaa !39
  %98 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro140, i32 2, i32 %call141, i8* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2088, i32 %98)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.136, %if.then.132
  br label %if.end.166

if.else.144:                                      ; preds = %land.lhs.true.130, %if.else.126
  %99 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_flags145 = getelementptr inbounds %struct.milter, %struct.milter* %99, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags145, i32 0, i64 2
  %100 = load i32, i32* %arrayidx146, align 4, !tbaa !16
  %and147 = and i32 %100, 1048576
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %if.else.144
  %101 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %101, align 1, !tbaa !5
  br label %if.end.165

if.else.150:                                      ; preds = %if.else.144
  %102 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_flags151 = getelementptr inbounds %struct.milter, %struct.milter* %102, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags151, i32 0, i64 1
  %103 = load i32, i32* %arrayidx152, align 4, !tbaa !16
  %and153 = and i32 %103, 1048576
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %if.else.150
  %104 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 52, i8* %104, align 1, !tbaa !5
  br label %if.end.164

if.else.156:                                      ; preds = %if.else.150
  %105 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_flags157 = getelementptr inbounds %struct.milter, %struct.milter* %105, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [8 x i32], [8 x i32]* %mf_flags157, i32 0, i64 2
  %106 = load i32, i32* %arrayidx158, align 4, !tbaa !16
  %and159 = and i32 %106, 262144
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %if.then.161, label %if.else.162

if.then.161:                                      ; preds = %if.else.156
  %107 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 114, i8* %107, align 1, !tbaa !5
  br label %if.end.163

if.else.162:                                      ; preds = %if.else.156
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.163:                                       ; preds = %if.then.161
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.then.155
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.then.149
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.143
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.125
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.168:                                       ; preds = %if.end.100
  %108 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv169 = zext i8 %108 to i32
  %cmp170 = icmp sge i32 %conv169, 10
  br i1 %cmp170, label %land.lhs.true.172, label %if.end.177

land.lhs.true.172:                                ; preds = %if.end.168
  %109 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool173 = icmp ne i32 %109, 0
  br i1 %tobool173, label %if.end.177, label %if.then.174

if.then.174:                                      ; preds = %land.lhs.true.172
  %110 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name175 = getelementptr inbounds %struct.milter, %struct.milter* %110, i32 0, i32 0
  %111 = load i8*, i8** %mf_name175, align 8, !tbaa !8
  %112 = load i8, i8* %rcmd, align 1, !tbaa !5
  %conv176 = sext i8 %112 to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.168, i32 0, i32 0), i8* %111, i32 %conv176)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.174, %land.lhs.true.172, %if.end.168
  %113 = load i8, i8* %rcmd, align 1, !tbaa !5
  %conv178 = sext i8 %113 to i32
  switch i32 %conv178, label %sw.default.315 [
    i32 121, label %sw.bb.179
    i32 114, label %sw.bb.254
    i32 100, label %sw.bb.261
    i32 116, label %sw.bb.268
    i32 97, label %sw.bb.275
    i32 99, label %sw.bb.294
    i32 115, label %sw.bb.307
  ]

sw.bb.179:                                        ; preds = %if.end.177
  %114 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp180 = icmp eq i8* %114, null
  br i1 %cmp180, label %if.then.227, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.179
  %115 = load i8*, i8** %response, align 8, !tbaa !1
  %call182 = call i64 @strlen(i8* %115) #12
  %add = add i64 %call182, 1
  %116 = load i64, i64* %rlen, align 8, !tbaa !13
  %cmp183 = icmp ne i64 %add, %116
  br i1 %cmp183, label %if.then.227, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %lor.lhs.false
  %117 = load i64, i64* %rlen, align 8, !tbaa !13
  %cmp186 = icmp slt i64 %117, 3
  br i1 %cmp186, label %if.then.227, label %lor.lhs.false.188

lor.lhs.false.188:                                ; preds = %lor.lhs.false.185
  %118 = load i8*, i8** %response, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i8, i8* %118, i64 0
  %119 = load i8, i8* %arrayidx189, align 1, !tbaa !5
  %conv190 = sext i8 %119 to i32
  %cmp191 = icmp ne i32 %conv190, 52
  br i1 %cmp191, label %land.lhs.true.193, label %lor.lhs.false.198

land.lhs.true.193:                                ; preds = %lor.lhs.false.188
  %120 = load i8*, i8** %response, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds i8, i8* %120, i64 0
  %121 = load i8, i8* %arrayidx194, align 1, !tbaa !5
  %conv195 = sext i8 %121 to i32
  %cmp196 = icmp ne i32 %conv195, 53
  br i1 %cmp196, label %if.then.227, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %land.lhs.true.193, %lor.lhs.false.188
  %122 = load i8*, i8** %response, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i8, i8* %122, i64 1
  %123 = load i8, i8* %arrayidx199, align 1, !tbaa !5
  %conv200 = sext i8 %123 to i32
  %and201 = and i32 %conv200, -128
  %cmp202 = icmp eq i32 %and201, 0
  br i1 %cmp202, label %lor.lhs.false.204, label %if.then.227

lor.lhs.false.204:                                ; preds = %lor.lhs.false.198
  %124 = load i8*, i8** %response, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i8, i8* %124, i64 1
  %125 = load i8, i8* %arrayidx205, align 1, !tbaa !5
  %conv206 = sext i8 %125 to i32
  %idxprom = sext i32 %conv206 to i64
  %call207 = call i16** @__ctype_b_loc() #11
  %126 = load i16*, i16** %call207, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i16, i16* %126, i64 %idxprom
  %127 = load i16, i16* %arrayidx208, align 2, !tbaa !6
  %conv209 = zext i16 %127 to i32
  %and210 = and i32 %conv209, 2048
  %tobool211 = icmp ne i32 %and210, 0
  br i1 %tobool211, label %lor.lhs.false.212, label %if.then.227

lor.lhs.false.212:                                ; preds = %lor.lhs.false.204
  %128 = load i8*, i8** %response, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i8, i8* %128, i64 2
  %129 = load i8, i8* %arrayidx213, align 1, !tbaa !5
  %conv214 = sext i8 %129 to i32
  %and215 = and i32 %conv214, -128
  %cmp216 = icmp eq i32 %and215, 0
  br i1 %cmp216, label %lor.lhs.false.218, label %if.then.227

lor.lhs.false.218:                                ; preds = %lor.lhs.false.212
  %130 = load i8*, i8** %response, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i8, i8* %130, i64 2
  %131 = load i8, i8* %arrayidx219, align 1, !tbaa !5
  %conv220 = sext i8 %131 to i32
  %idxprom221 = sext i32 %conv220 to i64
  %call222 = call i16** @__ctype_b_loc() #11
  %132 = load i16*, i16** %call222, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i16, i16* %132, i64 %idxprom221
  %133 = load i16, i16* %arrayidx223, align 2, !tbaa !6
  %conv224 = zext i16 %133 to i32
  %and225 = and i32 %conv224, 2048
  %tobool226 = icmp ne i32 %and225, 0
  br i1 %tobool226, label %if.else.233, label %if.then.227

if.then.227:                                      ; preds = %lor.lhs.false.218, %lor.lhs.false.212, %lor.lhs.false.204, %lor.lhs.false.198, %land.lhs.true.193, %lor.lhs.false.185, %lor.lhs.false, %sw.bb.179
  %134 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp228 = icmp ne i8* %134, null
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.then.227
  %135 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2099)
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.230, %if.then.227
  %136 = load i8*, i8** %defresponse, align 8, !tbaa !1
  %call232 = call i8* @newstr(i8* %136)
  store i8* %call232, i8** %response, align 8, !tbaa !1
  br label %if.end.248

if.else.233:                                      ; preds = %lor.lhs.false.218
  %137 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %137) #1
  %138 = load i8*, i8** %response, align 8, !tbaa !1
  store i8* %138, i8** %ptr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.246, %if.else.233
  %139 = load i8*, i8** %ptr, align 8, !tbaa !1
  %140 = load i8, i8* %139, align 1, !tbaa !5
  %conv234 = sext i8 %140 to i32
  %cmp235 = icmp ne i32 %conv234, 0
  br i1 %cmp235, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %141 = load i8*, i8** %ptr, align 8, !tbaa !1
  %142 = load i8, i8* %141, align 1, !tbaa !5
  %conv237 = sext i8 %142 to i32
  %cmp238 = icmp eq i32 %conv237, 37
  br i1 %cmp238, label %land.lhs.true.240, label %if.end.246

land.lhs.true.240:                                ; preds = %while.body
  %143 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !1
  %144 = load i8, i8* %incdec.ptr, align 1, !tbaa !5
  %conv241 = sext i8 %144 to i32
  %cmp242 = icmp ne i32 %conv241, 37
  br i1 %cmp242, label %if.then.244, label %if.end.246

if.then.244:                                      ; preds = %land.lhs.true.240
  %145 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2099)
  %146 = load i8*, i8** %defresponse, align 8, !tbaa !1
  %call245 = call i8* @newstr(i8* %146)
  store i8* %call245, i8** %response, align 8, !tbaa !1
  br label %while.end

if.end.246:                                       ; preds = %land.lhs.true.240, %while.body
  %147 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr247 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr247, i8** %ptr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %if.then.244, %while.cond
  %148 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  br label %if.end.248

if.end.248:                                       ; preds = %while.end, %if.end.231
  %149 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp249 = icmp sgt i32 %149, 10
  br i1 %cmp249, label %if.then.251, label %if.end.253

if.then.251:                                      ; preds = %if.end.248
  %150 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %150, i32 0, i32 25
  %151 = load i8*, i8** %e_id, align 8, !tbaa !18
  %152 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name252 = getelementptr inbounds %struct.milter, %struct.milter* %152, i32 0, i32 0
  %153 = load i8*, i8** %mf_name252, align 8, !tbaa !8
  %154 = load i8*, i8** %action, align 8, !tbaa !1
  %155 = load i8*, i8** %response, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %151, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.169, i32 0, i32 0), i8* %153, i8* %154, i8* %155)
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.251, %if.end.248
  %156 = load i8, i8* %rcmd, align 1, !tbaa !5
  %157 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 %156, i8* %157, align 1, !tbaa !5
  br label %sw.epilog.323

sw.bb.254:                                        ; preds = %if.end.177
  %158 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp255 = icmp sgt i32 %158, 10
  br i1 %cmp255, label %if.then.257, label %if.end.260

if.then.257:                                      ; preds = %sw.bb.254
  %159 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id258 = getelementptr inbounds %struct.envelope, %struct.envelope* %159, i32 0, i32 25
  %160 = load i8*, i8** %e_id258, align 8, !tbaa !18
  %161 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name259 = getelementptr inbounds %struct.milter, %struct.milter* %161, i32 0, i32 0
  %162 = load i8*, i8** %mf_name259, align 8, !tbaa !8
  %163 = load i8*, i8** %action, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.170, i32 0, i32 0), i8* %162, i8* %163)
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.257, %sw.bb.254
  %164 = load i8, i8* %rcmd, align 1, !tbaa !5
  %165 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 %164, i8* %165, align 1, !tbaa !5
  br label %sw.epilog.323

sw.bb.261:                                        ; preds = %if.end.177
  %166 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp262 = icmp sgt i32 %166, 10
  br i1 %cmp262, label %if.then.264, label %if.end.267

if.then.264:                                      ; preds = %sw.bb.261
  %167 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id265 = getelementptr inbounds %struct.envelope, %struct.envelope* %167, i32 0, i32 25
  %168 = load i8*, i8** %e_id265, align 8, !tbaa !18
  %169 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name266 = getelementptr inbounds %struct.milter, %struct.milter* %169, i32 0, i32 0
  %170 = load i8*, i8** %mf_name266, align 8, !tbaa !8
  %171 = load i8*, i8** %action, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %168, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.171, i32 0, i32 0), i8* %170, i8* %171)
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.264, %sw.bb.261
  %172 = load i8, i8* %rcmd, align 1, !tbaa !5
  %173 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 %172, i8* %173, align 1, !tbaa !5
  br label %sw.epilog.323

sw.bb.268:                                        ; preds = %if.end.177
  %174 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp269 = icmp sgt i32 %174, 10
  br i1 %cmp269, label %if.then.271, label %if.end.274

if.then.271:                                      ; preds = %sw.bb.268
  %175 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id272 = getelementptr inbounds %struct.envelope, %struct.envelope* %175, i32 0, i32 25
  %176 = load i8*, i8** %e_id272, align 8, !tbaa !18
  %177 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name273 = getelementptr inbounds %struct.milter, %struct.milter* %177, i32 0, i32 0
  %178 = load i8*, i8** %mf_name273, align 8, !tbaa !8
  %179 = load i8*, i8** %action, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.172, i32 0, i32 0), i8* %178, i8* %179)
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.271, %sw.bb.268
  %180 = load i8, i8* %rcmd, align 1, !tbaa !5
  %181 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 %180, i8* %181, align 1, !tbaa !5
  br label %sw.epilog.323

sw.bb.275:                                        ; preds = %if.end.177
  %182 = load i8, i8* %command, align 1, !tbaa !5
  %conv276 = sext i8 %182 to i32
  %cmp277 = icmp eq i32 %conv276, 72
  br i1 %cmp277, label %if.then.283, label %lor.lhs.false.279

lor.lhs.false.279:                                ; preds = %sw.bb.275
  %183 = load i8, i8* %command, align 1, !tbaa !5
  %conv280 = sext i8 %183 to i32
  %cmp281 = icmp eq i32 %conv280, 67
  br i1 %cmp281, label %if.then.283, label %if.else.285

if.then.283:                                      ; preds = %lor.lhs.false.279, %sw.bb.275
  %184 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state284 = getelementptr inbounds %struct.milter, %struct.milter* %184, i32 0, i32 7
  store i8 81, i8* %mf_state284, align 1, !tbaa !11
  br label %if.end.287

if.else.285:                                      ; preds = %lor.lhs.false.279
  %185 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state286 = getelementptr inbounds %struct.milter, %struct.milter* %185, i32 0, i32 7
  store i8 68, i8* %mf_state286, align 1, !tbaa !11
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.285, %if.then.283
  %186 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp288 = icmp sgt i32 %186, 10
  br i1 %cmp288, label %if.then.290, label %if.end.293

if.then.290:                                      ; preds = %if.end.287
  %187 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id291 = getelementptr inbounds %struct.envelope, %struct.envelope* %187, i32 0, i32 25
  %188 = load i8*, i8** %e_id291, align 8, !tbaa !18
  %189 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name292 = getelementptr inbounds %struct.milter, %struct.milter* %189, i32 0, i32 0
  %190 = load i8*, i8** %mf_name292, align 8, !tbaa !8
  %191 = load i8*, i8** %action, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %188, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.173, i32 0, i32 0), i8* %190, i8* %191)
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.290, %if.end.287
  br label %sw.epilog.323

sw.bb.294:                                        ; preds = %if.end.177
  %192 = load i8, i8* %command, align 1, !tbaa !5
  %conv295 = sext i8 %192 to i32
  %cmp296 = icmp eq i32 %conv295, 77
  br i1 %cmp296, label %if.then.298, label %if.end.300

if.then.298:                                      ; preds = %sw.bb.294
  %193 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state299 = getelementptr inbounds %struct.milter, %struct.milter* %193, i32 0, i32 7
  store i8 77, i8* %mf_state299, align 1, !tbaa !11
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.298, %sw.bb.294
  %194 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp301 = icmp sgt i32 %194, 12
  br i1 %cmp301, label %if.then.303, label %if.end.306

if.then.303:                                      ; preds = %if.end.300
  %195 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id304 = getelementptr inbounds %struct.envelope, %struct.envelope* %195, i32 0, i32 25
  %196 = load i8*, i8** %e_id304, align 8, !tbaa !18
  %197 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name305 = getelementptr inbounds %struct.milter, %struct.milter* %197, i32 0, i32 0
  %198 = load i8*, i8** %mf_name305, align 8, !tbaa !8
  %199 = load i8*, i8** %action, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %196, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.174, i32 0, i32 0), i8* %198, i8* %199)
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.303, %if.end.300
  br label %sw.epilog.323

sw.bb.307:                                        ; preds = %if.end.177
  %200 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp308 = icmp sgt i32 %200, 12
  br i1 %cmp308, label %if.then.310, label %if.end.313

if.then.310:                                      ; preds = %sw.bb.307
  %201 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id311 = getelementptr inbounds %struct.envelope, %struct.envelope* %201, i32 0, i32 25
  %202 = load i8*, i8** %e_id311, align 8, !tbaa !18
  %203 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name312 = getelementptr inbounds %struct.milter, %struct.milter* %203, i32 0, i32 0
  %204 = load i8*, i8** %mf_name312, align 8, !tbaa !8
  %205 = load i8*, i8** %action, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %202, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.175, i32 0, i32 0), i8* %204, i8* %205)
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.310, %sw.bb.307
  %206 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state314 = getelementptr inbounds %struct.milter, %struct.milter* %206, i32 0, i32 7
  store i8 83, i8* %mf_state314, align 1, !tbaa !11
  br label %sw.epilog.323

sw.default.315:                                   ; preds = %if.end.177
  %207 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp316 = icmp sgt i32 %207, 0
  br i1 %cmp316, label %if.then.318, label %if.end.322

if.then.318:                                      ; preds = %sw.default.315
  %208 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id319 = getelementptr inbounds %struct.envelope, %struct.envelope* %208, i32 0, i32 25
  %209 = load i8*, i8** %e_id319, align 8, !tbaa !18
  %210 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name320 = getelementptr inbounds %struct.milter, %struct.milter* %210, i32 0, i32 0
  %211 = load i8*, i8** %mf_name320, align 8, !tbaa !8
  %212 = load i8*, i8** %action, align 8, !tbaa !1
  %213 = load i8, i8* %rcmd, align 1, !tbaa !5
  %conv321 = sext i8 %213 to i32
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %209, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.176, i32 0, i32 0), i8* %211, i8* %212, i32 %conv321)
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.318, %sw.default.315
  %214 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %215 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %214, %struct.envelope* %215)
  br label %sw.epilog.323

sw.epilog.323:                                    ; preds = %if.end.322, %if.end.313, %if.end.306, %if.end.293, %if.end.274, %if.end.267, %if.end.260, %if.end.253
  %216 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %217 = load i8, i8* %216, align 1, !tbaa !5
  %conv324 = sext i8 %217 to i32
  %cmp325 = icmp ne i32 %conv324, 121
  br i1 %cmp325, label %land.lhs.true.327, label %if.end.331

land.lhs.true.327:                                ; preds = %sw.epilog.323
  %218 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp328 = icmp ne i8* %218, null
  br i1 %cmp328, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %land.lhs.true.327
  %219 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %219, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2174)
  store i8* null, i8** %response, align 8, !tbaa !1
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.330, %land.lhs.true.327, %sw.epilog.323
  %220 = load i8*, i8** %response, align 8, !tbaa !1
  store i8* %220, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.331, %if.end.167, %if.else.162, %if.then.99, %if.end.89, %if.else.84, %if.then.29
  %221 = bitcast i8** %response to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = bitcast i8** %defresponse to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = bitcast i8** %action to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  call void @llvm.lifetime.end(i64 1, i8* %command) #1
  %224 = bitcast i64* %norespflag to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = bitcast i64* %skipflag to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast i64* %rlen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  call void @llvm.lifetime.end(i64 1, i8* %rcmd) #1
  %227 = load i8*, i8** %retval
  ret i8* %227
}

; Function Attrs: nounwind uwtable
define internal i8* @milter_body(%struct.milter* %m, %struct.envelope* %e, i8* %state) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.milter*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %state.addr = alloca i8*, align 8
  %bufchar = alloca i8, align 1
  %prevchar = alloca i8, align 1
  %c = alloca i32, align 4
  %response = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %buf = alloca [65535 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %state, i8** %state.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %bufchar) #1
  store i8 0, i8* %bufchar, align 1, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %prevchar) #1
  store i8 0, i8* %prevchar, align 1, !tbaa !5
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %response to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* null, i8** %response, align 8, !tbaa !1
  %2 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast [65535 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 65535, i8* %3) #1
  %4 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %4 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.177, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp = getelementptr inbounds %struct.envelope, %struct.envelope* %6, i32 0, i32 24
  %7 = load %struct.sm_file*, %struct.sm_file** %e_dfp, align 8, !tbaa !57
  %call = call i32 @bfrewind(%struct.sm_file* %7)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  store i32 74, i32* @ExitStat, align 4, !tbaa !16
  %8 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %8, align 1, !tbaa !5
  %9 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_qgrp = getelementptr inbounds %struct.envelope, %struct.envelope* %9, i32 0, i32 26
  %10 = load i32, i32* %e_qgrp, align 4, !tbaa !59
  %11 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_qdir = getelementptr inbounds %struct.envelope, %struct.envelope* %11, i32 0, i32 27
  %12 = load i32, i32* %e_qdir, align 4, !tbaa !60
  %call5 = call i8* @qid_printqueue(i32 %10, i32 %12)
  %13 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %13, i32 0, i32 25
  %14 = load i8*, i8** %e_id, align 8, !tbaa !18
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.178, i32 0, i32 0), i8* %call5, i32 100, i8* %14)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %15 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp7 = icmp sgt i32 %15, 17
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %16 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id10 = getelementptr inbounds %struct.envelope, %struct.envelope* %16, i32 0, i32 25
  %17 = load i8*, i8** %e_id10, align 8, !tbaa !18
  %18 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %18, i32 0, i32 0
  %19 = load i8*, i8** %mf_name, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.179, i32 0, i32 0), i8* %19)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.6
  %arraydecay = getelementptr inbounds [65535 x i8], [65535 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %bp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.65, %if.end.11
  %20 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp12 = getelementptr inbounds %struct.envelope, %struct.envelope* %20, i32 0, i32 24
  %21 = load %struct.sm_file*, %struct.sm_file** %e_dfp12, align 8, !tbaa !57
  %call13 = call i32 @sm_io_getc(%struct.sm_file* %21, i32 -2)
  store i32 %call13, i32* %c, align 4, !tbaa !16
  %cmp14 = icmp ne i32 %call13, -1
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i32, i32* %c, align 4, !tbaa !16
  %cmp16 = icmp eq i32 %22, 10
  br i1 %cmp16, label %if.then.18, label %if.end.29

if.then.18:                                       ; preds = %while.body
  %23 = load i8, i8* %prevchar, align 1, !tbaa !5
  %conv19 = sext i8 %23 to i32
  %cmp20 = icmp ne i32 %conv19, 13
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.then.18
  %24 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 2
  %arrayidx = getelementptr inbounds [65535 x i8], [65535 x i8]* %buf, i32 0, i64 65535
  %cmp23 = icmp ugt i8* %add.ptr, %arrayidx
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then.22
  %25 = load i32, i32* %c, align 4, !tbaa !16
  %conv26 = trunc i32 %25 to i8
  store i8 %conv26, i8* %bufchar, align 1, !tbaa !5
  store i32 13, i32* %c, align 4, !tbaa !16
  br label %if.end.27

if.else:                                          ; preds = %if.then.22
  %26 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  store i8 13, i8* %26, align 1, !tbaa !5
  store i8 13, i8* %prevchar, align 1, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %while.body
  %27 = load i32, i32* %c, align 4, !tbaa !16
  %conv30 = trunc i32 %27 to i8
  %28 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr31, i8** %bp, align 8, !tbaa !1
  store i8 %conv30, i8* %28, align 1, !tbaa !5
  %29 = load i32, i32* %c, align 4, !tbaa !16
  %conv32 = trunc i32 %29 to i8
  store i8 %conv32, i8* %prevchar, align 1, !tbaa !5
  %30 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds [65535 x i8], [65535 x i8]* %buf, i32 0, i64 65535
  %cmp34 = icmp uge i8* %30, %arrayidx33
  br i1 %cmp34, label %if.then.36, label %if.end.47

if.then.36:                                       ; preds = %if.end.29
  %31 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %arraydecay37 = getelementptr inbounds [65535 x i8], [65535 x i8]* %buf, i32 0, i32 0
  %32 = load i8*, i8** %bp, align 8, !tbaa !1
  %arraydecay38 = getelementptr inbounds [65535 x i8], [65535 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay38 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %33 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %call39 = call i8* @milter_send_command(%struct.milter* %31, i32 66, i8* %arraydecay37, i64 %sub.ptr.sub, %struct.envelope* %33, i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.180, i32 0, i32 0))
  store i8* %call39, i8** %response, align 8, !tbaa !1
  %arraydecay40 = getelementptr inbounds [65535 x i8], [65535 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay40, i8** %bp, align 8, !tbaa !1
  %35 = load i8, i8* %bufchar, align 1, !tbaa !5
  %conv41 = sext i8 %35 to i32
  %cmp42 = icmp ne i32 %conv41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.36
  %36 = load i8, i8* %bufchar, align 1, !tbaa !5
  %37 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr45, i8** %bp, align 8, !tbaa !1
  store i8 %36, i8* %37, align 1, !tbaa !5
  store i8 0, i8* %bufchar, align 1, !tbaa !5
  %38 = load i8, i8* %bufchar, align 1, !tbaa !5
  store i8 %38, i8* %prevchar, align 1, !tbaa !5
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.36
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.29
  %39 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %39, i32 0, i32 7
  %40 = load i8, i8* %mf_state, align 1, !tbaa !11
  %conv48 = sext i8 %40 to i32
  %cmp49 = icmp eq i32 %conv48, 69
  br i1 %cmp49, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.47
  %41 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state51 = getelementptr inbounds %struct.milter, %struct.milter* %41, i32 0, i32 7
  %42 = load i8, i8* %mf_state51, align 1, !tbaa !11
  %conv52 = sext i8 %42 to i32
  %cmp53 = icmp eq i32 %conv52, 68
  br i1 %cmp53, label %if.then.64, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false
  %43 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state56 = getelementptr inbounds %struct.milter, %struct.milter* %43, i32 0, i32 7
  %44 = load i8, i8* %mf_state56, align 1, !tbaa !11
  %conv57 = sext i8 %44 to i32
  %cmp58 = icmp eq i32 %conv57, 83
  br i1 %cmp58, label %if.then.64, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.55
  %45 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !5
  %conv61 = sext i8 %46 to i32
  %cmp62 = icmp ne i32 %conv61, 99
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %lor.lhs.false.60, %lor.lhs.false.55, %lor.lhs.false, %if.end.47
  br label %while.end

if.end.65:                                        ; preds = %lor.lhs.false.60
  br label %while.cond

while.end:                                        ; preds = %if.then.64, %while.cond
  %47 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp66 = getelementptr inbounds %struct.envelope, %struct.envelope* %47, i32 0, i32 24
  %48 = load %struct.sm_file*, %struct.sm_file** %e_dfp66, align 8, !tbaa !57
  %f_flags = getelementptr inbounds %struct.sm_file, %struct.sm_file* %48, i32 0, i32 4
  %49 = load i64, i64* %f_flags, align 8, !tbaa !67
  %and = and i64 %49, 256
  %cmp67 = icmp ne i64 %and, 0
  br i1 %cmp67, label %if.then.69, label %if.end.92

if.then.69:                                       ; preds = %while.end
  store i32 74, i32* @ExitStat, align 4, !tbaa !16
  %50 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !5
  %conv70 = sext i8 %51 to i32
  %cmp71 = icmp eq i32 %conv70, 99
  br i1 %cmp71, label %if.then.82, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %if.then.69
  %52 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !5
  %conv74 = sext i8 %53 to i32
  %cmp75 = icmp eq i32 %conv74, 97
  br i1 %cmp75, label %if.then.82, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false.73
  %54 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state78 = getelementptr inbounds %struct.milter, %struct.milter* %54, i32 0, i32 7
  %55 = load i8, i8* %mf_state78, align 1, !tbaa !11
  %conv79 = sext i8 %55 to i32
  %cmp80 = icmp eq i32 %conv79, 83
  br i1 %cmp80, label %if.then.82, label %if.end.87

if.then.82:                                       ; preds = %lor.lhs.false.77, %lor.lhs.false.73, %if.then.69
  %56 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 116, i8* %56, align 1, !tbaa !5
  %57 = load i8*, i8** %response, align 8, !tbaa !1
  %cmp83 = icmp ne i8* %57, null
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.82
  %58 = load i8*, i8** %response, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2855)
  store i8* null, i8** %response, align 8, !tbaa !1
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.then.82
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %lor.lhs.false.77
  %59 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_qgrp88 = getelementptr inbounds %struct.envelope, %struct.envelope* %59, i32 0, i32 26
  %60 = load i32, i32* %e_qgrp88, align 4, !tbaa !59
  %61 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_qdir89 = getelementptr inbounds %struct.envelope, %struct.envelope* %61, i32 0, i32 27
  %62 = load i32, i32* %e_qdir89, align 4, !tbaa !60
  %call90 = call i8* @qid_printqueue(i32 %60, i32 %62)
  %63 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id91 = getelementptr inbounds %struct.envelope, %struct.envelope* %63, i32 0, i32 25
  %64 = load i8*, i8** %e_id91, align 8, !tbaa !18
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.181, i32 0, i32 0), i8* %call90, i32 100, i8* %64)
  %65 = load i8*, i8** %response, align 8, !tbaa !1
  store i8* %65, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %while.end
  %66 = load i8*, i8** %bp, align 8, !tbaa !1
  %arraydecay93 = getelementptr inbounds [65535 x i8], [65535 x i8]* %buf, i32 0, i32 0
  %cmp94 = icmp ugt i8* %66, %arraydecay93
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.123

land.lhs.true.96:                                 ; preds = %if.end.92
  %67 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state97 = getelementptr inbounds %struct.milter, %struct.milter* %67, i32 0, i32 7
  %68 = load i8, i8* %mf_state97, align 1, !tbaa !11
  %conv98 = sext i8 %68 to i32
  %cmp99 = icmp ne i32 %conv98, 69
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.123

land.lhs.true.101:                                ; preds = %land.lhs.true.96
  %69 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state102 = getelementptr inbounds %struct.milter, %struct.milter* %69, i32 0, i32 7
  %70 = load i8, i8* %mf_state102, align 1, !tbaa !11
  %conv103 = sext i8 %70 to i32
  %cmp104 = icmp ne i32 %conv103, 68
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.123

land.lhs.true.106:                                ; preds = %land.lhs.true.101
  %71 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state107 = getelementptr inbounds %struct.milter, %struct.milter* %71, i32 0, i32 7
  %72 = load i8, i8* %mf_state107, align 1, !tbaa !11
  %conv108 = sext i8 %72 to i32
  %cmp109 = icmp ne i32 %conv108, 83
  br i1 %cmp109, label %land.lhs.true.111, label %if.end.123

land.lhs.true.111:                                ; preds = %land.lhs.true.106
  %73 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %74 = load i8, i8* %73, align 1, !tbaa !5
  %conv112 = sext i8 %74 to i32
  %cmp113 = icmp eq i32 %conv112, 99
  br i1 %cmp113, label %if.then.115, label %if.end.123

if.then.115:                                      ; preds = %land.lhs.true.111
  %75 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %arraydecay116 = getelementptr inbounds [65535 x i8], [65535 x i8]* %buf, i32 0, i32 0
  %76 = load i8*, i8** %bp, align 8, !tbaa !1
  %arraydecay117 = getelementptr inbounds [65535 x i8], [65535 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast118 = ptrtoint i8* %76 to i64
  %sub.ptr.rhs.cast119 = ptrtoint i8* %arraydecay117 to i64
  %sub.ptr.sub120 = sub i64 %sub.ptr.lhs.cast118, %sub.ptr.rhs.cast119
  %77 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %78 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %call121 = call i8* @milter_send_command(%struct.milter* %75, i32 66, i8* %arraydecay116, i64 %sub.ptr.sub120, %struct.envelope* %77, i8* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.182, i32 0, i32 0))
  store i8* %call121, i8** %response, align 8, !tbaa !1
  %arraydecay122 = getelementptr inbounds [65535 x i8], [65535 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay122, i8** %bp, align 8, !tbaa !1
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.115, %land.lhs.true.111, %land.lhs.true.106, %land.lhs.true.101, %land.lhs.true.96, %if.end.92
  %79 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp124 = icmp sgt i32 %79, 17
  br i1 %cmp124, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %if.end.123
  %80 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id127 = getelementptr inbounds %struct.envelope, %struct.envelope* %80, i32 0, i32 25
  %81 = load i8*, i8** %e_id127, align 8, !tbaa !18
  %82 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name128 = getelementptr inbounds %struct.milter, %struct.milter* %82, i32 0, i32 0
  %83 = load i8*, i8** %mf_name128, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.183, i32 0, i32 0), i8* %83)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %if.end.123
  %84 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state130 = getelementptr inbounds %struct.milter, %struct.milter* %84, i32 0, i32 7
  %85 = load i8, i8* %mf_state130, align 1, !tbaa !11
  %conv131 = sext i8 %85 to i32
  %cmp132 = icmp eq i32 %conv131, 83
  br i1 %cmp132, label %if.then.134, label %if.end.136

if.then.134:                                      ; preds = %if.end.129
  %86 = load i8*, i8** %state.addr, align 8, !tbaa !1
  store i8 99, i8* %86, align 1, !tbaa !5
  %87 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state135 = getelementptr inbounds %struct.milter, %struct.milter* %87, i32 0, i32 7
  store i8 82, i8* %mf_state135, align 1, !tbaa !11
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.134, %if.end.129
  %88 = load i8*, i8** %response, align 8, !tbaa !1
  store i8* %88, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.136, %if.end.87, %if.then.4
  %89 = bitcast [65535 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 65535, i8* %89) #1
  %90 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast i8** %response to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  call void @llvm.lifetime.end(i64 1, i8* %prevchar) #1
  call void @llvm.lifetime.end(i64 1, i8* %bufchar) #1
  %93 = load i8*, i8** %retval
  ret i8* %93
}

; Function Attrs: nounwind uwtable
define internal i8* @milter_write(%struct.milter* %m, i32 %cmd, i8* %buf, i64 %len, i64 %to, %struct.envelope* %e, i8* %where) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.milter*, align 8
  %cmd.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %where.addr = alloca i8*, align 8
  %sl = alloca i64, align 8
  %i = alloca i64, align 8
  %num_vectors = alloca i32, align 4
  %nl = alloca i32, align 4
  %command = alloca i8, align 1
  %data = alloca [5 x i8], align 1
  %started = alloca i32, align 4
  %vector = alloca [2 x %struct.iovec], align 16
  %cleanup.dest.slot = alloca i32
  %__v = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ret = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %fds = alloca %struct.fd_set, align 8
  %tv = alloca %struct.timeval, align 8
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %save_errno178 = alloca i32, align 4
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store i32 %cmd, i32* %cmd.addr, align 4, !tbaa !16
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i64 %len, i64* %len.addr, align 8, !tbaa !13
  store i64 %to, i64* %to.addr, align 8, !tbaa !13
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %where, i8** %where.addr, align 8, !tbaa !1
  %0 = bitcast i64* %sl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %num_vectors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %nl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  call void @llvm.lifetime.start(i64 1, i8* %command) #1
  %4 = load i32, i32* %cmd.addr, align 4, !tbaa !16
  %conv = trunc i32 %4 to i8
  store i8 %conv, i8* %command, align 1, !tbaa !5
  %5 = bitcast [5 x i8]* %data to i8*
  call void @llvm.lifetime.start(i64 5, i8* %5) #1
  %6 = bitcast i32* %started to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %started, align 4, !tbaa !16
  %7 = bitcast [2 x %struct.iovec]* %vector to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = load i64, i64* %len.addr, align 8, !tbaa !13
  %cmp = icmp slt i64 %8, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load i64, i64* %len.addr, align 8, !tbaa !13
  %10 = load i64, i64* @MilterMaxDataSize, align 8, !tbaa !13
  %cmp2 = icmp ugt i64 %9, %10
  br i1 %cmp2, label %if.then, label %if.end.16

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv4 = zext i8 %11 to i32
  %cmp5 = icmp sge i32 %conv4, 5
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %12 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true
  %13 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %13, i32 0, i32 0
  %14 = load i8*, i8** %mf_name, align 8, !tbaa !8
  %15 = load i64, i64* %len.addr, align 8, !tbaa !13
  %16 = load i8, i8* %command, align 1, !tbaa !5
  %conv8 = sext i8 %16 to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.184, i32 0, i32 0), i8* %14, i64 %15, i32 %conv8)
  %17 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name9 = getelementptr inbounds %struct.milter, %struct.milter* %17, i32 0, i32 0
  %18 = load i8*, i8** %mf_name9, align 8, !tbaa !8
  %19 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %call = call i8* @str2prt(i8* %19)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.185, i32 0, i32 0), i8* %18, i8* %call)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true, %if.then
  %20 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp10 = icmp sgt i32 %20, 0
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end
  %21 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 25
  %22 = load i8*, i8** %e_id, align 8, !tbaa !18
  %23 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name13 = getelementptr inbounds %struct.milter, %struct.milter* %23, i32 0, i32 0
  %24 = load i8*, i8** %mf_name13, align 8, !tbaa !8
  %25 = load i64, i64* %len.addr, align 8, !tbaa !13
  %26 = load i8, i8* %command, align 1, !tbaa !5
  %conv14 = sext i8 %26 to i32
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.186, i32 0, i32 0), i8* %24, i64 %25, i32 %conv14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end
  %27 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %27, %struct.envelope* %28)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

if.end.16:                                        ; preds = %lor.lhs.false
  %29 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock = getelementptr inbounds %struct.milter, %struct.milter* %29, i32 0, i32 6
  %30 = load i32, i32* %mf_sock, align 4, !tbaa !12
  %cmp17 = icmp slt i32 %30, 0
  br i1 %cmp17, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %if.end.16
  %31 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp20 = icmp sgt i32 %31, 0
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.then.19
  %32 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id23 = getelementptr inbounds %struct.envelope, %struct.envelope* %32, i32 0, i32 25
  %33 = load i8*, i8** %e_id23, align 8, !tbaa !18
  %34 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name24 = getelementptr inbounds %struct.milter, %struct.milter* %34, i32 0, i32 0
  %35 = load i8*, i8** %mf_name24, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.187, i32 0, i32 0), i8* %35)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.then.19
  %36 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %37 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %36, %struct.envelope* %37)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

if.end.26:                                        ; preds = %if.end.16
  %38 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv27 = zext i8 %38 to i32
  %cmp28 = icmp sge i32 %conv27, 20
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.35

land.lhs.true.30:                                 ; preds = %if.end.26
  %39 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool31 = icmp ne i32 %39, 0
  br i1 %tobool31, label %if.end.35, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.30
  %40 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name33 = getelementptr inbounds %struct.milter, %struct.milter* %40, i32 0, i32 0
  %41 = load i8*, i8** %mf_name33, align 8, !tbaa !8
  %42 = load i8, i8* %command, align 1, !tbaa !5
  %conv34 = sext i8 %42 to i32
  %43 = load i64, i64* %len.addr, align 8, !tbaa !13
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.188, i32 0, i32 0), i8* %41, i32 %conv34, i64 %43)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %land.lhs.true.30, %if.end.26
  %44 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load i64, i64* %len.addr, align 8, !tbaa !13
  %add = add nsw i64 %46, 1
  %conv36 = trunc i64 %add to i32
  store i32 %conv36, i32* %__x, align 4, !tbaa !16
  %47 = load i32, i32* %__x, align 4, !tbaa !16
  %48 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %47) #11, !srcloc !70
  store i32 %48, i32* %__v, align 4, !tbaa !16
  %49 = load i32, i32* %__v, align 4, !tbaa !16
  store i32 %49, i32* %tmp, !tbaa !16
  %50 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = load i32, i32* %tmp, !tbaa !16
  store i32 %52, i32* %nl, align 4, !tbaa !16
  %53 = bitcast [5 x i8]* %data to i8*
  %54 = bitcast i32* %nl to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 4, i32 1, i1 false)
  %55 = load i8, i8* %command, align 1, !tbaa !5
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %data, i32 0, i64 4
  store i8 %55, i8* %arrayidx, align 1, !tbaa !5
  store i64 5, i64* %sl, align 8, !tbaa !13
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %data, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %vector, i32 0, i64 0
  %iov_base = getelementptr inbounds %struct.iovec, %struct.iovec* %arrayidx37, i32 0, i32 0
  store i8* %arraydecay, i8** %iov_base, align 8, !tbaa !71
  %56 = load i64, i64* %sl, align 8, !tbaa !13
  %arrayidx38 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %vector, i32 0, i64 0
  %iov_len = getelementptr inbounds %struct.iovec, %struct.iovec* %arrayidx38, i32 0, i32 1
  store i64 %56, i64* %iov_len, align 8, !tbaa !73
  %57 = load i64, i64* %len.addr, align 8, !tbaa !13
  %cmp39 = icmp sle i64 %57, 0
  br i1 %cmp39, label %if.then.44, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.35
  %58 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %cmp42 = icmp eq i8* %58, null
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %lor.lhs.false.41, %if.end.35
  store i32 1, i32* %num_vectors, align 4, !tbaa !16
  br label %if.end.59

if.else:                                          ; preds = %lor.lhs.false.41
  store i32 2, i32* %num_vectors, align 4, !tbaa !16
  %59 = load i64, i64* %len.addr, align 8, !tbaa !13
  %60 = load i64, i64* %sl, align 8, !tbaa !13
  %add45 = add nsw i64 %60, %59
  store i64 %add45, i64* %sl, align 8, !tbaa !13
  %61 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %vector, i32 0, i64 1
  %iov_base47 = getelementptr inbounds %struct.iovec, %struct.iovec* %arrayidx46, i32 0, i32 0
  store i8* %61, i8** %iov_base47, align 8, !tbaa !71
  %62 = load i64, i64* %len.addr, align 8, !tbaa !13
  %arrayidx48 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %vector, i32 0, i64 1
  %iov_len49 = getelementptr inbounds %struct.iovec, %struct.iovec* %arrayidx48, i32 0, i32 1
  store i64 %62, i64* %iov_len49, align 8, !tbaa !73
  %63 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv50 = zext i8 %63 to i32
  %cmp51 = icmp sge i32 %conv50, 50
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.58

land.lhs.true.53:                                 ; preds = %if.else
  %64 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool54 = icmp ne i32 %64, 0
  br i1 %tobool54, label %if.end.58, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.53
  %65 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name56 = getelementptr inbounds %struct.milter, %struct.milter* %65, i32 0, i32 0
  %66 = load i8*, i8** %mf_name56, align 8, !tbaa !8
  %67 = load i64, i64* %len.addr, align 8, !tbaa !13
  %conv57 = trunc i64 %67 to i32
  %68 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.189, i32 0, i32 0), i8* %66, i32 %conv57, i8* %68)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %land.lhs.true.53, %if.else
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.44
  %69 = load i64, i64* %to.addr, align 8, !tbaa !13
  %cmp60 = icmp sgt i64 %69, 0
  br i1 %cmp60, label %if.then.62, label %if.end.170

if.then.62:                                       ; preds = %if.end.59
  %70 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = bitcast %struct.fd_set* %fds to i8*
  call void @llvm.lifetime.start(i64 128, i8* %72) #1
  %73 = bitcast %struct.timeval* %tv to i8*
  call void @llvm.lifetime.start(i64 16, i8* %73) #1
  %74 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock67 = getelementptr inbounds %struct.milter, %struct.milter* %74, i32 0, i32 6
  %75 = load i32, i32* %mf_sock67, align 4, !tbaa !12
  %cmp68 = icmp slt i32 %75, 1024
  br i1 %cmp68, label %if.end.87, label %if.then.70

if.then.70:                                       ; preds = %if.then.62
  %76 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv71 = zext i8 %76 to i32
  %cmp72 = icmp sge i32 %conv71, 5
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.79

land.lhs.true.74:                                 ; preds = %if.then.70
  %77 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool75 = icmp ne i32 %77, 0
  br i1 %tobool75, label %if.end.79, label %if.then.76

if.then.76:                                       ; preds = %land.lhs.true.74
  %78 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name77 = getelementptr inbounds %struct.milter, %struct.milter* %78, i32 0, i32 0
  %79 = load i8*, i8** %mf_name77, align 8, !tbaa !8
  %80 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock78 = getelementptr inbounds %struct.milter, %struct.milter* %80, i32 0, i32 6
  %81 = load i32, i32* %mf_sock78, align 4, !tbaa !12
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0), i8* %79, i32 %81, i32 1024)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.76, %land.lhs.true.74, %if.then.70
  %82 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp80 = icmp sgt i32 %82, 0
  br i1 %cmp80, label %if.then.82, label %if.end.86

if.then.82:                                       ; preds = %if.end.79
  %83 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id83 = getelementptr inbounds %struct.envelope, %struct.envelope* %83, i32 0, i32 25
  %84 = load i8*, i8** %e_id83, align 8, !tbaa !18
  %85 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name84 = getelementptr inbounds %struct.milter, %struct.milter* %85, i32 0, i32 0
  %86 = load i8*, i8** %mf_name84, align 8, !tbaa !8
  %87 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock85 = getelementptr inbounds %struct.milter, %struct.milter* %87, i32 0, i32 6
  %88 = load i32, i32* %mf_sock85, align 4, !tbaa !12
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %84, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.192, i32 0, i32 0), i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0), i32 %88, i32 1024)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.82, %if.end.79
  %89 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %90 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %89, %struct.envelope* %90)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.87:                                        ; preds = %if.then.62
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.87
  br label %do.body.88

do.body.88:                                       ; preds = %do.body
  %91 = bitcast i32* %__d0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  %92 = bitcast i32* %__d1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #1
  %__fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %fds, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits, i32 0, i64 0
  %93 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx91) #1, !srcloc !74
  %asmresult = extractvalue { i64, i64* } %93, 0
  %asmresult92 = extractvalue { i64, i64* } %93, 1
  %94 = trunc i64 %asmresult to i32
  store i32 %94, i32* %__d0, align 4, !tbaa !16
  %95 = ptrtoint i64* %asmresult92 to i64
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %__d1, align 4, !tbaa !16
  %97 = bitcast i32* %__d1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %__d0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body.88
  br label %do.end

do.end:                                           ; preds = %do.cond
  %99 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock93 = getelementptr inbounds %struct.milter, %struct.milter* %99, i32 0, i32 6
  %100 = load i32, i32* %mf_sock93, align 4, !tbaa !12
  %rem = srem i32 %100, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %101 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock94 = getelementptr inbounds %struct.milter, %struct.milter* %101, i32 0, i32 6
  %102 = load i32, i32* %mf_sock94, align 4, !tbaa !12
  %div = sdiv i32 %102, 64
  %idxprom = sext i32 %div to i64
  %__fds_bits95 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %fds, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits95, i32 0, i64 %idxprom
  %103 = load i64, i64* %arrayidx96, align 8, !tbaa !13
  %or = or i64 %103, %shl
  store i64 %or, i64* %arrayidx96, align 8, !tbaa !13
  %104 = load i64, i64* %to.addr, align 8, !tbaa !13
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  store i64 %104, i64* %tv_sec, align 8, !tbaa !75
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  store i64 0, i64* %tv_usec, align 8, !tbaa !77
  %105 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock97 = getelementptr inbounds %struct.milter, %struct.milter* %105, i32 0, i32 6
  %106 = load i32, i32* %mf_sock97, align 4, !tbaa !12
  %add98 = add nsw i32 %106, 1
  %call99 = call i32 @select(i32 %add98, %struct.fd_set* null, %struct.fd_set* %fds, %struct.fd_set* null, %struct.timeval* %tv)
  store i32 %call99, i32* %ret, align 4, !tbaa !16
  br label %do.cond.100

do.cond.100:                                      ; preds = %do.end
  %107 = load i32, i32* %ret, align 4, !tbaa !16
  %cmp101 = icmp slt i32 %107, 0
  br i1 %cmp101, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.100
  %call103 = call i32* @__errno_location() #11
  %108 = load i32, i32* %call103, align 4, !tbaa !16
  %cmp104 = icmp eq i32 %108, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.100
  %109 = phi i1 [ false, %do.cond.100 ], [ %cmp104, %land.rhs ]
  br i1 %109, label %do.body, label %do.end.106

do.end.106:                                       ; preds = %land.end
  %110 = load i32, i32* %ret, align 4, !tbaa !16
  switch i32 %110, label %sw.default [
    i32 0, label %sw.bb
    i32 -1, label %sw.bb.122
  ]

sw.bb:                                            ; preds = %do.end.106
  %111 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv107 = zext i8 %111 to i32
  %cmp108 = icmp sge i32 %conv107, 5
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.114

land.lhs.true.110:                                ; preds = %sw.bb
  %112 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool111 = icmp ne i32 %112, 0
  br i1 %tobool111, label %if.end.114, label %if.then.112

if.then.112:                                      ; preds = %land.lhs.true.110
  %113 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name113 = getelementptr inbounds %struct.milter, %struct.milter* %113, i32 0, i32 0
  %114 = load i8*, i8** %mf_name113, align 8, !tbaa !8
  %115 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0), i8* %114, i8* %115)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %land.lhs.true.110, %sw.bb
  %116 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp115 = icmp sgt i32 %116, 0
  br i1 %cmp115, label %if.then.117, label %if.end.121

if.then.117:                                      ; preds = %if.end.114
  %117 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id118 = getelementptr inbounds %struct.envelope, %struct.envelope* %117, i32 0, i32 25
  %118 = load i8*, i8** %e_id118, align 8, !tbaa !18
  %119 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name119 = getelementptr inbounds %struct.milter, %struct.milter* %119, i32 0, i32 0
  %120 = load i8*, i8** %mf_name119, align 8, !tbaa !8
  %121 = load i32, i32* %started, align 4, !tbaa !16
  %tobool120 = icmp ne i32 %121, 0
  %cond = select i1 %tobool120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i32 0, i32 0)
  %122 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.194, i32 0, i32 0), i8* %120, i8* %cond, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0), i8* %122)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.117, %if.end.114
  %123 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %124 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %123, %struct.envelope* %124)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.122:                                        ; preds = %do.end.106
  %call123 = call i32* @__errno_location() #11
  %125 = load i32, i32* %call123, align 4, !tbaa !16
  store i32 %125, i32* %save_errno, align 4, !tbaa !16
  %126 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv124 = zext i8 %126 to i32
  %cmp125 = icmp sge i32 %conv124, 5
  br i1 %cmp125, label %land.lhs.true.127, label %if.end.132

land.lhs.true.127:                                ; preds = %sw.bb.122
  %127 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool128 = icmp ne i32 %127, 0
  br i1 %tobool128, label %if.end.132, label %if.then.129

if.then.129:                                      ; preds = %land.lhs.true.127
  %128 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name130 = getelementptr inbounds %struct.milter, %struct.milter* %128, i32 0, i32 0
  %129 = load i8*, i8** %mf_name130, align 8, !tbaa !8
  %130 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call131 = call i8* @sm_errstring(i32 %130)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0), i8* %129, i8* %call131)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %land.lhs.true.127, %sw.bb.122
  %131 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp133 = icmp sgt i32 %131, 0
  br i1 %cmp133, label %if.then.135, label %if.end.139

if.then.135:                                      ; preds = %if.end.132
  %132 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id136 = getelementptr inbounds %struct.envelope, %struct.envelope* %132, i32 0, i32 25
  %133 = load i8*, i8** %e_id136, align 8, !tbaa !18
  %134 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name137 = getelementptr inbounds %struct.milter, %struct.milter* %134, i32 0, i32 0
  %135 = load i8*, i8** %mf_name137, align 8, !tbaa !8
  %136 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call138 = call i8* @sm_errstring(i32 %136)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.198, i32 0, i32 0), i8* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0), i8* %call138)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.135, %if.end.132
  %137 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %138 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %137, %struct.envelope* %138)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %do.end.106
  %139 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock140 = getelementptr inbounds %struct.milter, %struct.milter* %139, i32 0, i32 6
  %140 = load i32, i32* %mf_sock140, align 4, !tbaa !12
  %div141 = sdiv i32 %140, 64
  %idxprom142 = sext i32 %div141 to i64
  %__fds_bits143 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %fds, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits143, i32 0, i64 %idxprom142
  %141 = load i64, i64* %arrayidx144, align 8, !tbaa !13
  %142 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock145 = getelementptr inbounds %struct.milter, %struct.milter* %142, i32 0, i32 6
  %143 = load i32, i32* %mf_sock145, align 4, !tbaa !12
  %rem146 = srem i32 %143, 64
  %sh_prom147 = zext i32 %rem146 to i64
  %shl148 = shl i64 1, %sh_prom147
  %and = and i64 %141, %shl148
  %cmp149 = icmp ne i64 %and, 0
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %sw.default
  br label %sw.epilog

if.end.152:                                       ; preds = %sw.default
  %144 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv153 = zext i8 %144 to i32
  %cmp154 = icmp sge i32 %conv153, 5
  br i1 %cmp154, label %land.lhs.true.156, label %if.end.160

land.lhs.true.156:                                ; preds = %if.end.152
  %145 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool157 = icmp ne i32 %145, 0
  br i1 %tobool157, label %if.end.160, label %if.then.158

if.then.158:                                      ; preds = %land.lhs.true.156
  %146 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name159 = getelementptr inbounds %struct.milter, %struct.milter* %146, i32 0, i32 0
  %147 = load i8*, i8** %mf_name159, align 8, !tbaa !8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0), i8* %147)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.158, %land.lhs.true.156, %if.end.152
  %148 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp161 = icmp sgt i32 %148, 0
  br i1 %cmp161, label %if.then.163, label %if.end.166

if.then.163:                                      ; preds = %if.end.160
  %149 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id164 = getelementptr inbounds %struct.envelope, %struct.envelope* %149, i32 0, i32 25
  %150 = load i8*, i8** %e_id164, align 8, !tbaa !18
  %151 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name165 = getelementptr inbounds %struct.milter, %struct.milter* %151, i32 0, i32 0
  %152 = load i8*, i8** %mf_name165, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %150, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.200, i32 0, i32 0), i8* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i32 0, i32 0))
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.163, %if.end.160
  %153 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %154 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %153, %struct.envelope* %154)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.then.151
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.166, %if.end.139, %if.end.121, %if.end.86
  %155 = bitcast %struct.timeval* %tv to i8*
  call void @llvm.lifetime.end(i64 16, i8* %155) #1
  %156 = bitcast %struct.fd_set* %fds to i8*
  call void @llvm.lifetime.end(i64 128, i8* %156) #1
  %157 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.200 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.170

if.end.170:                                       ; preds = %cleanup.cont, %if.end.59
  %159 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock171 = getelementptr inbounds %struct.milter, %struct.milter* %159, i32 0, i32 6
  %160 = load i32, i32* %mf_sock171, align 4, !tbaa !12
  %arraydecay172 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %vector, i32 0, i32 0
  %161 = load i32, i32* %num_vectors, align 4, !tbaa !16
  %call173 = call i64 @writev(i32 %160, %struct.iovec* %arraydecay172, i32 %161)
  store i64 %call173, i64* %i, align 8, !tbaa !13
  %162 = load i64, i64* %i, align 8, !tbaa !13
  %163 = load i64, i64* %sl, align 8, !tbaa !13
  %cmp174 = icmp ne i64 %162, %163
  br i1 %cmp174, label %if.then.176, label %if.end.199

if.then.176:                                      ; preds = %if.end.170
  %164 = bitcast i32* %save_errno178 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %164) #1
  %call179 = call i32* @__errno_location() #11
  %165 = load i32, i32* %call179, align 4, !tbaa !16
  store i32 %165, i32* %save_errno178, align 4, !tbaa !16
  %166 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv180 = zext i8 %166 to i32
  %cmp181 = icmp sge i32 %conv180, 5
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.189

land.lhs.true.183:                                ; preds = %if.then.176
  %167 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool184 = icmp ne i32 %167, 0
  br i1 %tobool184, label %if.end.189, label %if.then.185

if.then.185:                                      ; preds = %land.lhs.true.183
  %168 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name186 = getelementptr inbounds %struct.milter, %struct.milter* %168, i32 0, i32 0
  %169 = load i8*, i8** %mf_name186, align 8, !tbaa !8
  %170 = load i8, i8* %command, align 1, !tbaa !5
  %conv187 = sext i8 %170 to i32
  %171 = load i64, i64* %i, align 8, !tbaa !13
  %172 = load i64, i64* %sl, align 8, !tbaa !13
  %173 = load i32, i32* %save_errno178, align 4, !tbaa !16
  %call188 = call i8* @sm_errstring(i32 %173)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.201, i32 0, i32 0), i8* %169, i32 %conv187, i64 %171, i64 %172, i8* %call188)
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.185, %land.lhs.true.183, %if.then.176
  %174 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp190 = icmp sgt i32 %174, 0
  br i1 %cmp190, label %if.then.192, label %if.end.197

if.then.192:                                      ; preds = %if.end.189
  %175 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id193 = getelementptr inbounds %struct.envelope, %struct.envelope* %175, i32 0, i32 25
  %176 = load i8*, i8** %e_id193, align 8, !tbaa !18
  %177 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name194 = getelementptr inbounds %struct.milter, %struct.milter* %177, i32 0, i32 0
  %178 = load i8*, i8** %mf_name194, align 8, !tbaa !8
  %179 = load i8, i8* %command, align 1, !tbaa !5
  %conv195 = sext i8 %179 to i32
  %180 = load i64, i64* %i, align 8, !tbaa !13
  %181 = load i64, i64* %sl, align 8, !tbaa !13
  %182 = load i32, i32* %save_errno178, align 4, !tbaa !16
  %call196 = call i8* @sm_errstring(i32 %182)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %176, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.202, i32 0, i32 0), i8* %178, i32 %conv195, i64 %180, i64 %181, i8* %call196)
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.192, %if.end.189
  %183 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %184 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %183, %struct.envelope* %184)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  %185 = bitcast i32* %save_errno178 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  br label %cleanup.200

if.end.199:                                       ; preds = %if.end.170
  %186 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %186, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.200

cleanup.200:                                      ; preds = %if.end.199, %if.end.197, %cleanup, %if.end.25, %if.end.15
  %187 = bitcast [2 x %struct.iovec]* %vector to i8*
  call void @llvm.lifetime.end(i64 32, i8* %187) #1
  %188 = bitcast i32* %started to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast [5 x i8]* %data to i8*
  call void @llvm.lifetime.end(i64 5, i8* %189) #1
  call void @llvm.lifetime.end(i64 1, i8* %command) #1
  %190 = bitcast i32* %nl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %num_vectors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast i64* %sl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = load i8*, i8** %retval
  ret i8* %194
}

declare i64 @curtime() #3

; Function Attrs: nounwind uwtable
define internal i8* @milter_read(%struct.milter* %m, i8* %cmd, i64* %rlen, i64 %to, %struct.envelope* %e, i8* %where) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.milter*, align 8
  %cmd.addr = alloca i8*, align 8
  %rlen.addr = alloca i64*, align 8
  %to.addr = alloca i64, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %where.addr = alloca i8*, align 8
  %readstart = alloca i64, align 8
  %expl = alloca i64, align 8
  %i = alloca i32, align 4
  %buf = alloca i8*, align 8
  %data = alloca [5 x i8], align 1
  %cleanup.dest.slot = alloca i32
  %now = alloca i64, align 8
  %__v = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store i8* %cmd, i8** %cmd.addr, align 8, !tbaa !1
  store i64* %rlen, i64** %rlen.addr, align 8, !tbaa !1
  store i64 %to, i64* %to.addr, align 8, !tbaa !13
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %where, i8** %where.addr, align 8, !tbaa !1
  %0 = bitcast i64* %readstart to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %readstart, align 8, !tbaa !13
  %1 = bitcast i64* %expl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [5 x i8]* %data to i8*
  call void @llvm.lifetime.start(i64 5, i8* %4) #1
  %5 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock = getelementptr inbounds %struct.milter, %struct.milter* %5, i32 0, i32 6
  %6 = load i32, i32* %mf_sock, align 4, !tbaa !12
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %7 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp1 = icmp sgt i32 %7, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %8, i32 0, i32 25
  %9 = load i8*, i8** %e_id, align 8, !tbaa !18
  %10 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %10, i32 0, i32 0
  %11 = load i8*, i8** %mf_name, align 8, !tbaa !8
  %12 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.203, i32 0, i32 0), i8* %11, i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %13 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %13, %struct.envelope* %14)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

if.end.3:                                         ; preds = %entry
  %15 = load i64*, i64** %rlen.addr, align 8, !tbaa !1
  store i64 0, i64* %15, align 8, !tbaa !13
  %16 = load i8*, i8** %cmd.addr, align 8, !tbaa !1
  store i8 0, i8* %16, align 1, !tbaa !5
  %17 = load i64, i64* %to.addr, align 8, !tbaa !13
  %cmp4 = icmp sgt i64 %17, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %call = call i64 @curtime()
  store i64 %call, i64* %readstart, align 8, !tbaa !13
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %18 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %data, i32 0, i32 0
  %19 = load i64, i64* %to.addr, align 8, !tbaa !13
  %20 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %where.addr, align 8, !tbaa !1
  %call7 = call i8* @milter_sysread(%struct.milter* %18, i8* %arraydecay, i64 5, i64 %19, %struct.envelope* %20, i8* %21)
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

if.end.10:                                        ; preds = %if.end.6
  %22 = load i64, i64* %to.addr, align 8, !tbaa !13
  %cmp11 = icmp sgt i64 %22, 0
  br i1 %cmp11, label %if.then.12, label %if.end.30

if.then.12:                                       ; preds = %if.end.10
  %23 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %call13 = call i64 @curtime()
  store i64 %call13, i64* %now, align 8, !tbaa !13
  %24 = load i64, i64* %now, align 8, !tbaa !13
  %25 = load i64, i64* %readstart, align 8, !tbaa !13
  %sub = sub nsw i64 %24, %25
  %26 = load i64, i64* %to.addr, align 8, !tbaa !13
  %cmp14 = icmp sge i64 %sub, %26
  br i1 %cmp14, label %if.then.15, label %if.end.27

if.then.15:                                       ; preds = %if.then.12
  %27 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %27 to i32
  %cmp16 = icmp sge i32 %conv, 5
  br i1 %cmp16, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.then.15
  %28 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true
  %29 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name19 = getelementptr inbounds %struct.milter, %struct.milter* %29, i32 0, i32 0
  %30 = load i8*, i8** %mf_name19, align 8, !tbaa !8
  %31 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.204, i32 0, i32 0), i8* %30, i8* %31)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true, %if.then.15
  %32 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp21 = icmp sgt i32 %32, 0
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.20
  %33 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id24 = getelementptr inbounds %struct.envelope, %struct.envelope* %33, i32 0, i32 25
  %34 = load i8*, i8** %e_id24, align 8, !tbaa !18
  %35 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name25 = getelementptr inbounds %struct.milter, %struct.milter* %35, i32 0, i32 0
  %36 = load i8*, i8** %mf_name25, align 8, !tbaa !8
  %37 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %34, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.205, i32 0, i32 0), i8* %36, i8* %37)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.20
  %38 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %39 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %38, %struct.envelope* %39)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.12
  %40 = load i64, i64* %now, align 8, !tbaa !13
  %41 = load i64, i64* %readstart, align 8, !tbaa !13
  %sub28 = sub nsw i64 %40, %41
  %42 = load i64, i64* %to.addr, align 8, !tbaa !13
  %sub29 = sub nsw i64 %42, %sub28
  store i64 %sub29, i64* %to.addr, align 8, !tbaa !13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.end.26
  %43 = bitcast i64* %now to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.80 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.30

if.end.30:                                        ; preds = %cleanup.cont, %if.end.10
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %data, i32 0, i64 4
  %44 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %45 = load i8*, i8** %cmd.addr, align 8, !tbaa !1
  store i8 %44, i8* %45, align 1, !tbaa !5
  %arrayidx31 = getelementptr inbounds [5 x i8], [5 x i8]* %data, i32 0, i64 4
  store i8 0, i8* %arrayidx31, align 1, !tbaa !5
  %46 = bitcast i32* %i to i8*
  %47 = bitcast [5 x i8]* %data to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 4, i32 1, i1 false)
  %48 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = load i32, i32* %i, align 4, !tbaa !16
  store i32 %50, i32* %__x, align 4, !tbaa !16
  %51 = load i32, i32* %__x, align 4, !tbaa !16
  %52 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %51) #11, !srcloc !78
  store i32 %52, i32* %__v, align 4, !tbaa !16
  %53 = load i32, i32* %__v, align 4, !tbaa !16
  store i32 %53, i32* %tmp, !tbaa !16
  %54 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = load i32, i32* %tmp, !tbaa !16
  %sub32 = sub i32 %56, 1
  %conv33 = zext i32 %sub32 to i64
  store i64 %conv33, i64* %expl, align 8, !tbaa !13
  %57 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv34 = zext i8 %57 to i32
  %cmp35 = icmp sge i32 %conv34, 25
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.41

land.lhs.true.37:                                 ; preds = %if.end.30
  %58 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool38 = icmp ne i32 %58, 0
  br i1 %tobool38, label %if.end.41, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.37
  %59 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name40 = getelementptr inbounds %struct.milter, %struct.milter* %59, i32 0, i32 0
  %60 = load i8*, i8** %mf_name40, align 8, !tbaa !8
  %61 = load i64, i64* %expl, align 8, !tbaa !13
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.206, i32 0, i32 0), i8* %60, i64 %61)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %land.lhs.true.37, %if.end.30
  %62 = load i64, i64* %expl, align 8, !tbaa !13
  %cmp42 = icmp slt i64 %62, 0
  br i1 %cmp42, label %if.then.44, label %if.end.59

if.then.44:                                       ; preds = %if.end.41
  %63 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv45 = zext i8 %63 to i32
  %cmp46 = icmp sge i32 %conv45, 5
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.52

land.lhs.true.48:                                 ; preds = %if.then.44
  %64 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool49 = icmp ne i32 %64, 0
  br i1 %tobool49, label %if.end.52, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.48
  %65 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name51 = getelementptr inbounds %struct.milter, %struct.milter* %65, i32 0, i32 0
  %66 = load i8*, i8** %mf_name51, align 8, !tbaa !8
  %67 = load i64, i64* %expl, align 8, !tbaa !13
  %68 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.207, i32 0, i32 0), i8* %66, i64 %67, i8* %68)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %land.lhs.true.48, %if.then.44
  %69 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp53 = icmp sgt i32 %69, 0
  br i1 %cmp53, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %if.end.52
  %70 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id56 = getelementptr inbounds %struct.envelope, %struct.envelope* %70, i32 0, i32 25
  %71 = load i8*, i8** %e_id56, align 8, !tbaa !18
  %72 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name57 = getelementptr inbounds %struct.milter, %struct.milter* %72, i32 0, i32 0
  %73 = load i8*, i8** %mf_name57, align 8, !tbaa !8
  %74 = load i64, i64* %expl, align 8, !tbaa !13
  %75 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %71, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.208, i32 0, i32 0), i8* %73, i64 %74, i8* %75)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %if.end.52
  %76 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %77 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %76, %struct.envelope* %77)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

if.end.59:                                        ; preds = %if.end.41
  %78 = load i64, i64* %expl, align 8, !tbaa !13
  %cmp60 = icmp eq i64 %78, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

if.end.63:                                        ; preds = %if.end.59
  %79 = load i64, i64* %expl, align 8, !tbaa !13
  %conv64 = trunc i64 %79 to i32
  %call65 = call i8* @xalloc_tagged(i32 %conv64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 480)
  store i8* %call65, i8** %buf, align 8, !tbaa !1
  %80 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %81 = load i8*, i8** %buf, align 8, !tbaa !1
  %82 = load i64, i64* %expl, align 8, !tbaa !13
  %83 = load i64, i64* %to.addr, align 8, !tbaa !13
  %84 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %85 = load i8*, i8** %where.addr, align 8, !tbaa !1
  %call66 = call i8* @milter_sysread(%struct.milter* %80, i8* %81, i64 %82, i64 %83, %struct.envelope* %84, i8* %85)
  %cmp67 = icmp eq i8* %call66, null
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.63
  %86 = load i8*, i8** %buf, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 484)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

if.end.70:                                        ; preds = %if.end.63
  %87 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv71 = zext i8 %87 to i32
  %cmp72 = icmp sge i32 %conv71, 50
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.79

land.lhs.true.74:                                 ; preds = %if.end.70
  %88 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool75 = icmp ne i32 %88, 0
  br i1 %tobool75, label %if.end.79, label %if.then.76

if.then.76:                                       ; preds = %land.lhs.true.74
  %89 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name77 = getelementptr inbounds %struct.milter, %struct.milter* %89, i32 0, i32 0
  %90 = load i8*, i8** %mf_name77, align 8, !tbaa !8
  %91 = load i64, i64* %expl, align 8, !tbaa !13
  %conv78 = trunc i64 %91 to i32
  %92 = load i8*, i8** %buf, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.209, i32 0, i32 0), i8* %90, i32 %conv78, i8* %92)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.76, %land.lhs.true.74, %if.end.70
  %93 = load i64, i64* %expl, align 8, !tbaa !13
  %94 = load i64*, i64** %rlen.addr, align 8, !tbaa !1
  store i64 %93, i64* %94, align 8, !tbaa !13
  %95 = load i8*, i8** %buf, align 8, !tbaa !1
  store i8* %95, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.80

cleanup.80:                                       ; preds = %if.end.79, %if.then.69, %if.then.62, %if.end.58, %cleanup, %if.then.9, %if.end
  %96 = bitcast [5 x i8]* %data to i8*
  call void @llvm.lifetime.end(i64 5, i8* %96) #1
  %97 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i64* %expl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i64* %readstart to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = load i8*, i8** %retval
  ret i8* %101
}

; Function Attrs: nounwind uwtable
define internal void @milter_addheader(%struct.milter* %m, i8* %response, i64 %rlen, %struct.envelope* %e) #0 {
entry:
  %m.addr = alloca %struct.milter*, align 8
  %response.addr = alloca i8*, align 8
  %rlen.addr = alloca i64, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %mh_v_len = alloca i32, align 4
  %val = alloca i8*, align 8
  %mh_value = alloca i8*, align 8
  %h = alloca %struct.header*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store i8* %response, i8** %response.addr, align 8, !tbaa !1
  store i64 %rlen, i64* %rlen.addr, align 8, !tbaa !13
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %mh_v_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %mh_value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %4 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.217, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %6, null
  br i1 %cmp2, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %7 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv5 = zext i8 %7 to i32
  %cmp6 = icmp sge i32 %conv5, 10
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.11

land.lhs.true.8:                                  ; preds = %if.then.4
  %8 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.218, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true.8, %if.then.4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %9 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp13 = icmp slt i64 %9, 2
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %10 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %10) #12
  %add = add i64 %call, 1
  %11 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp15 = icmp uge i64 %add, %11
  br i1 %cmp15, label %if.then.17, label %if.end.28

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.12
  %12 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv18 = zext i8 %12 to i32
  %cmp19 = icmp sge i32 %conv18, 10
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.27

land.lhs.true.21:                                 ; preds = %if.then.17
  %13 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool22 = icmp ne i32 %13, 0
  br i1 %tobool22, label %if.end.27, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.21
  %14 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call24 = call i64 @strlen(i8* %14) #12
  %conv25 = trunc i64 %call24 to i32
  %15 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %sub = sub nsw i64 %15, 1
  %conv26 = trunc i64 %sub to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.219, i32 0, i32 0), i32 %conv25, i32 %conv26)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %land.lhs.true.21, %if.then.17
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %lor.lhs.false
  %16 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call29 = call i64 @strlen(i8* %17) #12
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %call29
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  store i8* %add.ptr30, i8** %val, align 8, !tbaa !1
  %18 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call31 = call i64 @strlen(i8* %18) #12
  %19 = load i8*, i8** %val, align 8, !tbaa !1
  %call32 = call i64 @strlen(i8* %19) #12
  %add33 = add i64 %call31, %call32
  %add34 = add i64 %add33, 2
  %20 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp35 = icmp ne i64 %add34, %20
  br i1 %cmp35, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %if.end.28
  %21 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv38 = zext i8 %21 to i32
  %cmp39 = icmp sge i32 %conv38, 10
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.44

land.lhs.true.41:                                 ; preds = %if.then.37
  %22 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool42 = icmp ne i32 %22, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.41
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.220, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %land.lhs.true.41, %if.then.37
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.28
  %23 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !5
  %conv46 = sext i8 %24 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.57

if.then.49:                                       ; preds = %if.end.45
  %25 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv50 = zext i8 %25 to i32
  %cmp51 = icmp sge i32 %conv50, 10
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.56

land.lhs.true.53:                                 ; preds = %if.then.49
  %26 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool54 = icmp ne i32 %26, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.53
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.221, i32 0, i32 0))
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %land.lhs.true.53, %if.then.49
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.45
  %27 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header = getelementptr inbounds %struct.envelope, %struct.envelope* %27, i32 0, i32 0
  %28 = load %struct.header*, %struct.header** %e_header, align 8, !tbaa !61
  store %struct.header* %28, %struct.header** %h, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.57
  %29 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %cmp58 = icmp ne %struct.header* %29, null
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field = getelementptr inbounds %struct.header, %struct.header* %30, i32 0, i32 0
  %31 = load i8*, i8** %h_field, align 8, !tbaa !65
  %32 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call60 = call i32 @sm_strcasecmp(i8* %31, i8* %32)
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.72

land.lhs.true.63:                                 ; preds = %for.body
  %33 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags = getelementptr inbounds %struct.header, %struct.header* %33, i32 0, i32 4
  %34 = load i64, i64* %h_flags, align 8, !tbaa !64
  %and = and i64 %34, 262144
  %cmp64 = icmp ne i64 %and, 0
  br i1 %cmp64, label %if.end.72, label %land.lhs.true.66

land.lhs.true.66:                                 ; preds = %land.lhs.true.63
  %35 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags67 = getelementptr inbounds %struct.header, %struct.header* %35, i32 0, i32 4
  %36 = load i64, i64* %h_flags67, align 8, !tbaa !64
  %and68 = and i64 %36, 128
  %cmp69 = icmp ne i64 %and68, 0
  br i1 %cmp69, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %land.lhs.true.66
  br label %for.end

if.end.72:                                        ; preds = %land.lhs.true.66, %land.lhs.true.63, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %37 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_link = getelementptr inbounds %struct.header, %struct.header* %37, i32 0, i32 2
  %38 = load %struct.header*, %struct.header** %h_link, align 8, !tbaa !66
  store %struct.header* %38, %struct.header** %h, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.71, %for.cond
  store i32 0, i32* %mh_v_len, align 4, !tbaa !16
  %39 = load i8*, i8** %val, align 8, !tbaa !1
  %call73 = call i8* @quote_internal_chars(i8* %39, i8* null, i32* %mh_v_len)
  store i8* %call73, i8** %mh_value, align 8, !tbaa !1
  %40 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call74 = call i64 @strlen(i8* %40) #12
  %add75 = add i64 %call74, 2
  %41 = load i8*, i8** %val, align 8, !tbaa !1
  %call76 = call i64 @strlen(i8* %41) #12
  %add77 = add i64 %add75, %call76
  %42 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize = getelementptr inbounds %struct.envelope, %struct.envelope* %42, i32 0, i32 9
  %43 = load i64, i64* %e_msgsize, align 8, !tbaa !79
  %add78 = add i64 %43, %add77
  store i64 %add78, i64* %e_msgsize, align 8, !tbaa !79
  %44 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %cmp79 = icmp ne %struct.header* %44, null
  br i1 %cmp79, label %if.then.81, label %if.else.108

if.then.81:                                       ; preds = %for.end
  %45 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv82 = zext i8 %45 to i32
  %cmp83 = icmp sge i32 %conv82, 10
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.89

land.lhs.true.85:                                 ; preds = %if.then.81
  %46 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool86 = icmp ne i32 %46, 0
  br i1 %tobool86, label %if.end.89, label %if.then.87

if.then.87:                                       ; preds = %land.lhs.true.85
  %47 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field88 = getelementptr inbounds %struct.header, %struct.header* %47, i32 0, i32 0
  %48 = load i8*, i8** %h_field88, align 8, !tbaa !65
  %49 = load i8*, i8** %mh_value, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.222, i32 0, i32 0), i8* %48, i8* %49)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %land.lhs.true.85, %if.then.81
  %50 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp90 = icmp sgt i32 %50, 8
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.end.89
  %51 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %51, i32 0, i32 25
  %52 = load i8*, i8** %e_id, align 8, !tbaa !18
  %53 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field93 = getelementptr inbounds %struct.header, %struct.header* %53, i32 0, i32 0
  %54 = load i8*, i8** %h_field93, align 8, !tbaa !65
  %55 = load i8*, i8** %mh_value, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.223, i32 0, i32 0), i8* %54, i8* %55)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.end.89
  %56 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags = getelementptr inbounds %struct.milter, %struct.milter* %56, i32 0, i32 4
  %57 = load i32, i32* %mf_pflags, align 4, !tbaa !52
  %conv95 = sext i32 %57 to i64
  %and96 = and i64 %conv95, 1048576
  %cmp97 = icmp ne i64 %and96, 0
  br i1 %cmp97, label %if.then.99, label %if.else

if.then.99:                                       ; preds = %if.end.94
  %58 = load i8*, i8** %mh_value, align 8, !tbaa !1
  %59 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value = getelementptr inbounds %struct.header, %struct.header* %59, i32 0, i32 1
  store i8* %58, i8** %h_value, align 8, !tbaa !62
  br label %if.end.106

if.else:                                          ; preds = %if.end.94
  %60 = load i8*, i8** %mh_value, align 8, !tbaa !1
  %61 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %61, i32 0, i32 52
  %62 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !40
  %call100 = call i8* @addleadingspace(i8* %60, %struct.SM_RPOOL_T* %62)
  %63 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value101 = getelementptr inbounds %struct.header, %struct.header* %63, i32 0, i32 1
  store i8* %call100, i8** %h_value101, align 8, !tbaa !62
  br label %do.body

do.body:                                          ; preds = %if.else
  %64 = load i8*, i8** %mh_value, align 8, !tbaa !1
  %cmp102 = icmp ne i8* %64, null
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %do.body
  %65 = load i8*, i8** %mh_value, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 3013)
  store i8* null, i8** %mh_value, align 8, !tbaa !1
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.105
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.106

if.end.106:                                       ; preds = %do.end, %if.then.99
  %66 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags107 = getelementptr inbounds %struct.header, %struct.header* %66, i32 0, i32 4
  %67 = load i64, i64* %h_flags107, align 8, !tbaa !64
  %or = or i64 %67, 262144
  store i64 %or, i64* %h_flags107, align 8, !tbaa !64
  br label %if.end.134

if.else.108:                                      ; preds = %for.end
  %68 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv109 = zext i8 %68 to i32
  %cmp110 = icmp sge i32 %conv109, 10
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.115

land.lhs.true.112:                                ; preds = %if.else.108
  %69 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool113 = icmp ne i32 %69, 0
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %land.lhs.true.112
  %70 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %71 = load i8*, i8** %mh_value, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.224, i32 0, i32 0), i8* %70, i8* %71)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %land.lhs.true.112, %if.else.108
  %72 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp116 = icmp sgt i32 %72, 8
  br i1 %cmp116, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %if.end.115
  %73 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id119 = getelementptr inbounds %struct.envelope, %struct.envelope* %73, i32 0, i32 25
  %74 = load i8*, i8** %e_id119, align 8, !tbaa !18
  %75 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %76 = load i8*, i8** %mh_value, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.225, i32 0, i32 0), i8* %75, i8* %76)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %if.end.115
  %77 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call121 = call i8* @newstr(i8* %77)
  %78 = load i8*, i8** %mh_value, align 8, !tbaa !1
  %79 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %80 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags122 = getelementptr inbounds %struct.milter, %struct.milter* %80, i32 0, i32 4
  %81 = load i32, i32* %mf_pflags122, align 4, !tbaa !52
  %conv123 = sext i32 %81 to i64
  %and124 = and i64 %conv123, 1048576
  %cmp125 = icmp ne i64 %and124, 0
  %lnot = xor i1 %cmp125, true
  %lnot.ext = zext i1 %lnot to i32
  call void @addheader(i8* %call121, i8* %78, i32 262144, %struct.envelope* %79, i32 %lnot.ext)
  br label %do.body.127

do.body.127:                                      ; preds = %if.end.120
  %82 = load i8*, i8** %mh_value, align 8, !tbaa !1
  %cmp128 = icmp ne i8* %82, null
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %do.body.127
  %83 = load i8*, i8** %mh_value, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 3027)
  store i8* null, i8** %mh_value, align 8, !tbaa !1
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %do.body.127
  br label %do.cond.132

do.cond.132:                                      ; preds = %if.end.131
  br label %do.end.133

do.end.133:                                       ; preds = %do.cond.132
  br label %if.end.134

if.end.134:                                       ; preds = %do.end.133, %if.end.106
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.134, %if.end.56, %if.end.44, %if.end.27, %if.end.11
  %84 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i8** %mh_value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast i8** %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i32* %mh_v_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
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

; Function Attrs: nounwind uwtable
define internal void @milter_insheader(%struct.milter* %m, i8* %response, i64 %rlen, %struct.envelope* %e) #0 {
entry:
  %m.addr = alloca %struct.milter*, align 8
  %response.addr = alloca i8*, align 8
  %rlen.addr = alloca i64, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %idx = alloca i32, align 4
  %i = alloca i32, align 4
  %mh_v_len = alloca i32, align 4
  %field = alloca i8*, align 8
  %val = alloca i8*, align 8
  %mh_value = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %__v = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store i8* %response, i8** %response.addr, align 8, !tbaa !1
  store i64 %rlen, i64* %rlen.addr, align 8, !tbaa !13
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %mh_v_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %field to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %mh_value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %6 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.228, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %8, null
  br i1 %cmp2, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %9 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv5 = zext i8 %9 to i32
  %cmp6 = icmp sge i32 %conv5, 10
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.11

land.lhs.true.8:                                  ; preds = %if.then.4
  %10 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.218, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true.8, %if.then.4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %11 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp13 = icmp slt i64 %11, 2
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %12 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %12) #12
  %add = add i64 %call, 1
  %13 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp15 = icmp uge i64 %add, %13
  br i1 %cmp15, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.12
  %14 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv18 = zext i8 %14 to i32
  %cmp19 = icmp sge i32 %conv18, 10
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.24

land.lhs.true.21:                                 ; preds = %if.then.17
  %15 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool22 = icmp ne i32 %15, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.21
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.229, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.21, %if.then.17
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %lor.lhs.false
  %16 = bitcast i32* %i to i8*
  %17 = load i8*, i8** %response.addr, align 8, !tbaa !1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 4, i32 1, i1 false)
  %18 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load i32, i32* %i, align 4, !tbaa !16
  store i32 %20, i32* %__x, align 4, !tbaa !16
  %21 = load i32, i32* %__x, align 4, !tbaa !16
  %22 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %21) #11, !srcloc !80
  store i32 %22, i32* %__v, align 4, !tbaa !16
  %23 = load i32, i32* %__v, align 4, !tbaa !16
  store i32 %23, i32* %tmp, !tbaa !16
  %24 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = load i32, i32* %tmp, !tbaa !16
  store i32 %26, i32* %idx, align 4, !tbaa !16
  %27 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 4
  store i8* %add.ptr, i8** %field, align 8, !tbaa !1
  %28 = load i8*, i8** %field, align 8, !tbaa !1
  %29 = load i8*, i8** %field, align 8, !tbaa !1
  %call26 = call i64 @strlen(i8* %29) #12
  %add.ptr27 = getelementptr inbounds i8, i8* %28, i64 %call26
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr27, i64 1
  store i8* %add.ptr28, i8** %val, align 8, !tbaa !1
  %30 = load i8*, i8** %field, align 8, !tbaa !1
  %call29 = call i64 @strlen(i8* %30) #12
  %add30 = add i64 4, %call29
  %add31 = add i64 %add30, 1
  %31 = load i8*, i8** %val, align 8, !tbaa !1
  %call32 = call i64 @strlen(i8* %31) #12
  %add33 = add i64 %add31, %call32
  %add34 = add i64 %add33, 1
  %32 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp35 = icmp ne i64 %add34, %32
  br i1 %cmp35, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %if.end.25
  %33 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv38 = zext i8 %33 to i32
  %cmp39 = icmp sge i32 %conv38, 10
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.44

land.lhs.true.41:                                 ; preds = %if.then.37
  %34 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool42 = icmp ne i32 %34, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.41
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.220, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %land.lhs.true.41, %if.then.37
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.25
  %35 = load i8*, i8** %field, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !5
  %conv46 = sext i8 %36 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.57

if.then.49:                                       ; preds = %if.end.45
  %37 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv50 = zext i8 %37 to i32
  %cmp51 = icmp sge i32 %conv50, 10
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.56

land.lhs.true.53:                                 ; preds = %if.then.49
  %38 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool54 = icmp ne i32 %38, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.53
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.221, i32 0, i32 0))
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %land.lhs.true.53, %if.then.49
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.45
  %39 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call58 = call i64 @strlen(i8* %39) #12
  %add59 = add i64 %call58, 2
  %40 = load i8*, i8** %val, align 8, !tbaa !1
  %call60 = call i64 @strlen(i8* %40) #12
  %add61 = add i64 %add59, %call60
  %41 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize = getelementptr inbounds %struct.envelope, %struct.envelope* %41, i32 0, i32 9
  %42 = load i64, i64* %e_msgsize, align 8, !tbaa !79
  %add62 = add i64 %42, %add61
  store i64 %add62, i64* %e_msgsize, align 8, !tbaa !79
  %43 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv63 = zext i8 %43 to i32
  %cmp64 = icmp sge i32 %conv63, 10
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.69

land.lhs.true.66:                                 ; preds = %if.end.57
  %44 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool67 = icmp ne i32 %44, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %land.lhs.true.66
  %45 = load i32, i32* %idx, align 4, !tbaa !16
  %46 = load i8*, i8** %field, align 8, !tbaa !1
  %47 = load i8*, i8** %val, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.230, i32 0, i32 0), i32 %45, i8* %46, i8* %47)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %land.lhs.true.66, %if.end.57
  %48 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp70 = icmp sgt i32 %48, 8
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.69
  %49 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %49, i32 0, i32 25
  %50 = load i8*, i8** %e_id, align 8, !tbaa !18
  %51 = load i32, i32* %idx, align 4, !tbaa !16
  %52 = load i8*, i8** %field, align 8, !tbaa !1
  %53 = load i8*, i8** %val, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.231, i32 0, i32 0), i32 %51, i8* %52, i8* %53)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.69
  store i32 0, i32* %mh_v_len, align 4, !tbaa !16
  %54 = load i8*, i8** %val, align 8, !tbaa !1
  %call74 = call i8* @quote_internal_chars(i8* %54, i8* null, i32* %mh_v_len)
  store i8* %call74, i8** %mh_value, align 8, !tbaa !1
  %55 = load i32, i32* %idx, align 4, !tbaa !16
  %56 = load i8*, i8** %field, align 8, !tbaa !1
  %call75 = call i8* @newstr(i8* %56)
  %57 = load i8*, i8** %mh_value, align 8, !tbaa !1
  %58 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %59 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags = getelementptr inbounds %struct.milter, %struct.milter* %59, i32 0, i32 4
  %60 = load i32, i32* %mf_pflags, align 4, !tbaa !52
  %conv76 = sext i32 %60 to i64
  %and = and i64 %conv76, 1048576
  %cmp77 = icmp ne i64 %and, 0
  %lnot = xor i1 %cmp77, true
  %lnot.ext = zext i1 %lnot to i32
  call void @insheader(i32 %55, i8* %call75, i8* %57, i32 262144, %struct.envelope* %58, i32 %lnot.ext)
  br label %do.body

do.body:                                          ; preds = %if.end.73
  %61 = load i8*, i8** %mh_value, align 8, !tbaa !1
  %cmp79 = icmp ne i8* %61, null
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %do.body
  %62 = load i8*, i8** %mh_value, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 3113)
  store i8* null, i8** %mh_value, align 8, !tbaa !1
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.82
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.56, %if.end.44, %if.end.24, %if.end.11
  %63 = bitcast i8** %mh_value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i8** %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i8** %field to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32* %mh_v_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
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

; Function Attrs: nounwind uwtable
define internal void @milter_changeheader(%struct.milter* %m, i8* %response, i64 %rlen, %struct.envelope* %e) #0 {
entry:
  %m.addr = alloca %struct.milter*, align 8
  %response.addr = alloca i8*, align 8
  %rlen.addr = alloca i64, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %mh_v_len = alloca i32, align 4
  %field = alloca i8*, align 8
  %val = alloca i8*, align 8
  %mh_value = alloca i8*, align 8
  %h = alloca %struct.header*, align 8
  %sysheader = alloca %struct.header*, align 8
  %cleanup.dest.slot = alloca i32
  %__v = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  %l = alloca i64, align 8
  %l216 = alloca i64, align 8
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store i8* %response, i8** %response.addr, align 8, !tbaa !1
  store i64 %rlen, i64* %rlen.addr, align 8, !tbaa !13
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %mh_v_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %field to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %mh_value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.header** %sysheader to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %8 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.232, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %10, null
  br i1 %cmp2, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %11 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv5 = zext i8 %11 to i32
  %cmp6 = icmp sge i32 %conv5, 10
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.11

land.lhs.true.8:                                  ; preds = %if.then.4
  %12 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.218, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true.8, %if.then.4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %13 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp13 = icmp slt i64 %13, 2
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %14 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %14) #12
  %add = add i64 %call, 1
  %15 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp15 = icmp uge i64 %add, %15
  br i1 %cmp15, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.12
  %16 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv18 = zext i8 %16 to i32
  %cmp19 = icmp sge i32 %conv18, 10
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.24

land.lhs.true.21:                                 ; preds = %if.then.17
  %17 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool22 = icmp ne i32 %17, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.21
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.229, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.21, %if.then.17
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %lor.lhs.false
  %18 = bitcast i32* %i to i8*
  %19 = load i8*, i8** %response.addr, align 8, !tbaa !1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 4, i32 1, i1 false)
  %20 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32, i32* %i, align 4, !tbaa !16
  store i32 %22, i32* %__x, align 4, !tbaa !16
  %23 = load i32, i32* %__x, align 4, !tbaa !16
  %24 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %23) #11, !srcloc !81
  store i32 %24, i32* %__v, align 4, !tbaa !16
  %25 = load i32, i32* %__v, align 4, !tbaa !16
  store i32 %25, i32* %tmp, !tbaa !16
  %26 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load i32, i32* %tmp, !tbaa !16
  store i32 %28, i32* %index, align 4, !tbaa !16
  %29 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 4
  store i8* %add.ptr, i8** %field, align 8, !tbaa !1
  %30 = load i8*, i8** %field, align 8, !tbaa !1
  %31 = load i8*, i8** %field, align 8, !tbaa !1
  %call26 = call i64 @strlen(i8* %31) #12
  %add.ptr27 = getelementptr inbounds i8, i8* %30, i64 %call26
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr27, i64 1
  store i8* %add.ptr28, i8** %val, align 8, !tbaa !1
  %32 = load i8*, i8** %field, align 8, !tbaa !1
  %call29 = call i64 @strlen(i8* %32) #12
  %add30 = add i64 4, %call29
  %add31 = add i64 %add30, 1
  %33 = load i8*, i8** %val, align 8, !tbaa !1
  %call32 = call i64 @strlen(i8* %33) #12
  %add33 = add i64 %add31, %call32
  %add34 = add i64 %add33, 1
  %34 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp35 = icmp ne i64 %add34, %34
  br i1 %cmp35, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %if.end.25
  %35 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv38 = zext i8 %35 to i32
  %cmp39 = icmp sge i32 %conv38, 10
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.44

land.lhs.true.41:                                 ; preds = %if.then.37
  %36 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool42 = icmp ne i32 %36, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.41
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.220, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %land.lhs.true.41, %if.then.37
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.25
  %37 = load i8*, i8** %field, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !5
  %conv46 = sext i8 %38 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.57

if.then.49:                                       ; preds = %if.end.45
  %39 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv50 = zext i8 %39 to i32
  %cmp51 = icmp sge i32 %conv50, 10
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.56

land.lhs.true.53:                                 ; preds = %if.then.49
  %40 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool54 = icmp ne i32 %40, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.53
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.221, i32 0, i32 0))
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %land.lhs.true.53, %if.then.49
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.45
  store i32 0, i32* %mh_v_len, align 4, !tbaa !16
  %41 = load i8*, i8** %val, align 8, !tbaa !1
  %call58 = call i8* @quote_internal_chars(i8* %41, i8* null, i32* %mh_v_len)
  store i8* %call58, i8** %mh_value, align 8, !tbaa !1
  store %struct.header* null, %struct.header** %sysheader, align 8, !tbaa !1
  %42 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header = getelementptr inbounds %struct.envelope, %struct.envelope* %42, i32 0, i32 0
  %43 = load %struct.header*, %struct.header** %e_header, align 8, !tbaa !61
  store %struct.header* %43, %struct.header** %h, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.57
  %44 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %cmp59 = icmp ne %struct.header* %44, null
  br i1 %cmp59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field = getelementptr inbounds %struct.header, %struct.header* %45, i32 0, i32 0
  %46 = load i8*, i8** %h_field, align 8, !tbaa !65
  %47 = load i8*, i8** %field, align 8, !tbaa !1
  %call61 = call i32 @sm_strcasecmp(i8* %46, i8* %47)
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.83

if.then.64:                                       ; preds = %for.body
  %48 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags = getelementptr inbounds %struct.header, %struct.header* %48, i32 0, i32 4
  %49 = load i64, i64* %h_flags, align 8, !tbaa !64
  %and = and i64 %49, 262144
  %cmp65 = icmp ne i64 %and, 0
  br i1 %cmp65, label %land.lhs.true.67, label %if.else

land.lhs.true.67:                                 ; preds = %if.then.64
  %50 = load i32, i32* %index, align 4, !tbaa !16
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %index, align 4, !tbaa !16
  %cmp68 = icmp sle i32 %dec, 0
  br i1 %cmp68, label %if.then.70, label %if.else

if.then.70:                                       ; preds = %land.lhs.true.67
  store %struct.header* null, %struct.header** %sysheader, align 8, !tbaa !1
  br label %for.end

if.else:                                          ; preds = %land.lhs.true.67, %if.then.64
  %51 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags71 = getelementptr inbounds %struct.header, %struct.header* %51, i32 0, i32 4
  %52 = load i64, i64* %h_flags71, align 8, !tbaa !64
  %and72 = and i64 %52, 262144
  %cmp73 = icmp ne i64 %and72, 0
  br i1 %cmp73, label %if.end.81, label %land.lhs.true.75

land.lhs.true.75:                                 ; preds = %if.else
  %53 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags76 = getelementptr inbounds %struct.header, %struct.header* %53, i32 0, i32 4
  %54 = load i64, i64* %h_flags76, align 8, !tbaa !64
  %and77 = and i64 %54, 128
  %cmp78 = icmp ne i64 %and77, 0
  br i1 %cmp78, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %land.lhs.true.75
  %55 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  store %struct.header* %55, %struct.header** %sysheader, align 8, !tbaa !1
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %land.lhs.true.75, %if.else
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.83
  %56 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_link = getelementptr inbounds %struct.header, %struct.header* %56, i32 0, i32 2
  %57 = load %struct.header*, %struct.header** %h_link, align 8, !tbaa !66
  store %struct.header* %57, %struct.header** %h, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.70, %for.cond
  %58 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %cmp84 = icmp eq %struct.header* %58, null
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %for.end
  %59 = load %struct.header*, %struct.header** %sysheader, align 8, !tbaa !1
  store %struct.header* %59, %struct.header** %h, align 8, !tbaa !1
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %for.end
  %60 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %cmp88 = icmp eq %struct.header* %60, null
  br i1 %cmp88, label %if.then.90, label %if.end.125

if.then.90:                                       ; preds = %if.end.87
  %61 = load i8*, i8** %val, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !5
  %conv91 = sext i8 %62 to i32
  %cmp92 = icmp eq i32 %conv91, 0
  br i1 %cmp92, label %if.then.94, label %if.else.106

if.then.94:                                       ; preds = %if.then.90
  %63 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv95 = zext i8 %63 to i32
  %cmp96 = icmp sge i32 %conv95, 10
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.101

land.lhs.true.98:                                 ; preds = %if.then.94
  %64 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool99 = icmp ne i32 %64, 0
  br i1 %tobool99, label %if.end.101, label %if.then.100

if.then.100:                                      ; preds = %land.lhs.true.98
  %65 = load i8*, i8** %field, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.233, i32 0, i32 0), i8* %65)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %land.lhs.true.98, %if.then.94
  %66 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp102 = icmp sgt i32 %66, 8
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.101
  %67 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %67, i32 0, i32 25
  %68 = load i8*, i8** %e_id, align 8, !tbaa !18
  %69 = load i8*, i8** %field, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.234, i32 0, i32 0), i8* %69)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.end.101
  br label %if.end.124

if.else.106:                                      ; preds = %if.then.90
  %70 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv107 = zext i8 %70 to i32
  %cmp108 = icmp sge i32 %conv107, 10
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.113

land.lhs.true.110:                                ; preds = %if.else.106
  %71 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool111 = icmp ne i32 %71, 0
  br i1 %tobool111, label %if.end.113, label %if.then.112

if.then.112:                                      ; preds = %land.lhs.true.110
  %72 = load i8*, i8** %field, align 8, !tbaa !1
  %73 = load i8*, i8** %mh_value, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.224, i32 0, i32 0), i8* %72, i8* %73)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %land.lhs.true.110, %if.else.106
  %74 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp114 = icmp sgt i32 %74, 8
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.end.113
  %75 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id117 = getelementptr inbounds %struct.envelope, %struct.envelope* %75, i32 0, i32 25
  %76 = load i8*, i8** %e_id117, align 8, !tbaa !18
  %77 = load i8*, i8** %field, align 8, !tbaa !1
  %78 = load i8*, i8** %mh_value, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.235, i32 0, i32 0), i8* %77, i8* %78)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %if.end.113
  %79 = load i8*, i8** %field, align 8, !tbaa !1
  %call119 = call i8* @newstr(i8* %79)
  %80 = load i8*, i8** %mh_value, align 8, !tbaa !1
  %81 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %82 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags = getelementptr inbounds %struct.milter, %struct.milter* %82, i32 0, i32 4
  %83 = load i32, i32* %mf_pflags, align 4, !tbaa !52
  %conv120 = sext i32 %83 to i64
  %and121 = and i64 %conv120, 1048576
  %cmp122 = icmp ne i64 %and121, 0
  %lnot = xor i1 %cmp122, true
  %lnot.ext = zext i1 %lnot to i32
  call void @addheader(i8* %call119, i8* %80, i32 262144, %struct.envelope* %81, i32 %lnot.ext)
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.118, %if.end.105
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.125:                                       ; preds = %if.end.87
  %84 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv126 = zext i8 %84 to i32
  %cmp127 = icmp sge i32 %conv126, 10
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.155

land.lhs.true.129:                                ; preds = %if.end.125
  %85 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool130 = icmp ne i32 %85, 0
  br i1 %tobool130, label %if.end.155, label %if.then.131

if.then.131:                                      ; preds = %land.lhs.true.129
  %86 = load i8*, i8** %val, align 8, !tbaa !1
  %87 = load i8, i8* %86, align 1, !tbaa !5
  %conv132 = sext i8 %87 to i32
  %cmp133 = icmp eq i32 %conv132, 0
  br i1 %cmp133, label %if.then.135, label %if.else.142

if.then.135:                                      ; preds = %if.then.131
  %88 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %89 = load %struct.header*, %struct.header** %sysheader, align 8, !tbaa !1
  %cmp136 = icmp eq %struct.header* %88, %89
  %cond = select i1 %cmp136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0)
  %90 = load i8*, i8** %field, align 8, !tbaa !1
  %91 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value = getelementptr inbounds %struct.header, %struct.header* %91, i32 0, i32 1
  %92 = load i8*, i8** %h_value, align 8, !tbaa !62
  %cmp138 = icmp eq i8* %92, null
  br i1 %cmp138, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.135
  br label %cond.end

cond.false:                                       ; preds = %if.then.135
  %93 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value140 = getelementptr inbounds %struct.header, %struct.header* %93, i32 0, i32 1
  %94 = load i8*, i8** %h_value140, align 8, !tbaa !62
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond141 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.238, i32 0, i32 0), %cond.true ], [ %94, %cond.false ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.236, i32 0, i32 0), i8* %cond, i8* %90, i8* %cond141)
  br label %if.end.154

if.else.142:                                      ; preds = %if.then.131
  %95 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %96 = load %struct.header*, %struct.header** %sysheader, align 8, !tbaa !1
  %cmp143 = icmp eq %struct.header* %95, %96
  %cond145 = select i1 %cmp143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0)
  %97 = load i8*, i8** %field, align 8, !tbaa !1
  %98 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value146 = getelementptr inbounds %struct.header, %struct.header* %98, i32 0, i32 1
  %99 = load i8*, i8** %h_value146, align 8, !tbaa !62
  %cmp147 = icmp eq i8* %99, null
  br i1 %cmp147, label %cond.true.149, label %cond.false.150

cond.true.149:                                    ; preds = %if.else.142
  br label %cond.end.152

cond.false.150:                                   ; preds = %if.else.142
  %100 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value151 = getelementptr inbounds %struct.header, %struct.header* %100, i32 0, i32 1
  %101 = load i8*, i8** %h_value151, align 8, !tbaa !62
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.150, %cond.true.149
  %cond153 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.238, i32 0, i32 0), %cond.true.149 ], [ %101, %cond.false.150 ]
  %102 = load i8*, i8** %mh_value, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.239, i32 0, i32 0), i8* %cond145, i8* %97, i8* %cond153, i8* %102)
  br label %if.end.154

if.end.154:                                       ; preds = %cond.end.152, %cond.end
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %land.lhs.true.129, %if.end.125
  %103 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp156 = icmp sgt i32 %103, 8
  br i1 %cmp156, label %if.then.158, label %if.end.189

if.then.158:                                      ; preds = %if.end.155
  %104 = load i8*, i8** %val, align 8, !tbaa !1
  %105 = load i8, i8* %104, align 1, !tbaa !5
  %conv159 = sext i8 %105 to i32
  %cmp160 = icmp eq i32 %conv159, 0
  br i1 %cmp160, label %if.then.162, label %if.else.175

if.then.162:                                      ; preds = %if.then.158
  %106 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id163 = getelementptr inbounds %struct.envelope, %struct.envelope* %106, i32 0, i32 25
  %107 = load i8*, i8** %e_id163, align 8, !tbaa !18
  %108 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %109 = load %struct.header*, %struct.header** %sysheader, align 8, !tbaa !1
  %cmp164 = icmp eq %struct.header* %108, %109
  %cond166 = select i1 %cmp164, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0)
  %110 = load i8*, i8** %field, align 8, !tbaa !1
  %111 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value167 = getelementptr inbounds %struct.header, %struct.header* %111, i32 0, i32 1
  %112 = load i8*, i8** %h_value167, align 8, !tbaa !62
  %cmp168 = icmp eq i8* %112, null
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %if.then.162
  br label %cond.end.173

cond.false.171:                                   ; preds = %if.then.162
  %113 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value172 = getelementptr inbounds %struct.header, %struct.header* %113, i32 0, i32 1
  %114 = load i8*, i8** %h_value172, align 8, !tbaa !62
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.171, %cond.true.170
  %cond174 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.238, i32 0, i32 0), %cond.true.170 ], [ %114, %cond.false.171 ]
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.240, i32 0, i32 0), i8* %cond166, i8* %110, i8* %cond174)
  br label %if.end.188

if.else.175:                                      ; preds = %if.then.158
  %115 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id176 = getelementptr inbounds %struct.envelope, %struct.envelope* %115, i32 0, i32 25
  %116 = load i8*, i8** %e_id176, align 8, !tbaa !18
  %117 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %118 = load %struct.header*, %struct.header** %sysheader, align 8, !tbaa !1
  %cmp177 = icmp eq %struct.header* %117, %118
  %cond179 = select i1 %cmp177, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.55, i32 0, i32 0)
  %119 = load i8*, i8** %field, align 8, !tbaa !1
  %120 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value180 = getelementptr inbounds %struct.header, %struct.header* %120, i32 0, i32 1
  %121 = load i8*, i8** %h_value180, align 8, !tbaa !62
  %cmp181 = icmp eq i8* %121, null
  br i1 %cmp181, label %cond.true.183, label %cond.false.184

cond.true.183:                                    ; preds = %if.else.175
  br label %cond.end.186

cond.false.184:                                   ; preds = %if.else.175
  %122 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value185 = getelementptr inbounds %struct.header, %struct.header* %122, i32 0, i32 1
  %123 = load i8*, i8** %h_value185, align 8, !tbaa !62
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.184, %cond.true.183
  %cond187 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.238, i32 0, i32 0), %cond.true.183 ], [ %123, %cond.false.184 ]
  %124 = load i8*, i8** %mh_value, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %116, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.241, i32 0, i32 0), i8* %cond179, i8* %119, i8* %cond187, i8* %124)
  br label %if.end.188

if.end.188:                                       ; preds = %cond.end.186, %cond.end.173
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.end.155
  %125 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %126 = load %struct.header*, %struct.header** %sysheader, align 8, !tbaa !1
  %cmp190 = icmp ne %struct.header* %125, %126
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.207

land.lhs.true.192:                                ; preds = %if.end.189
  %127 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value193 = getelementptr inbounds %struct.header, %struct.header* %127, i32 0, i32 1
  %128 = load i8*, i8** %h_value193, align 8, !tbaa !62
  %cmp194 = icmp ne i8* %128, null
  br i1 %cmp194, label %if.then.196, label %if.end.207

if.then.196:                                      ; preds = %land.lhs.true.192
  %129 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  %130 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value198 = getelementptr inbounds %struct.header, %struct.header* %130, i32 0, i32 1
  %131 = load i8*, i8** %h_value198, align 8, !tbaa !62
  %call199 = call i64 @strlen(i8* %131) #12
  store i64 %call199, i64* %l, align 8, !tbaa !13
  %132 = load i64, i64* %l, align 8, !tbaa !13
  %133 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize = getelementptr inbounds %struct.envelope, %struct.envelope* %133, i32 0, i32 9
  %134 = load i64, i64* %e_msgsize, align 8, !tbaa !79
  %cmp200 = icmp ugt i64 %132, %134
  br i1 %cmp200, label %if.then.202, label %if.else.204

if.then.202:                                      ; preds = %if.then.196
  %135 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize203 = getelementptr inbounds %struct.envelope, %struct.envelope* %135, i32 0, i32 9
  store i64 0, i64* %e_msgsize203, align 8, !tbaa !79
  br label %if.end.206

if.else.204:                                      ; preds = %if.then.196
  %136 = load i64, i64* %l, align 8, !tbaa !13
  %137 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize205 = getelementptr inbounds %struct.envelope, %struct.envelope* %137, i32 0, i32 9
  %138 = load i64, i64* %e_msgsize205, align 8, !tbaa !79
  %sub = sub i64 %138, %136
  store i64 %sub, i64* %e_msgsize205, align 8, !tbaa !79
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.204, %if.then.202
  %139 = bitcast i64* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %land.lhs.true.192, %if.end.189
  %140 = load i8*, i8** %val, align 8, !tbaa !1
  %141 = load i8, i8* %140, align 1, !tbaa !5
  %conv208 = sext i8 %141 to i32
  %cmp209 = icmp eq i32 %conv208, 0
  br i1 %cmp209, label %if.then.211, label %if.else.235

if.then.211:                                      ; preds = %if.end.207
  %142 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %143 = load %struct.header*, %struct.header** %sysheader, align 8, !tbaa !1
  %cmp212 = icmp ne %struct.header* %142, %143
  br i1 %cmp212, label %if.then.214, label %if.end.229

if.then.214:                                      ; preds = %if.then.211
  %144 = bitcast i64* %l216 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %144) #1
  %145 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field217 = getelementptr inbounds %struct.header, %struct.header* %145, i32 0, i32 0
  %146 = load i8*, i8** %h_field217, align 8, !tbaa !65
  %call218 = call i64 @strlen(i8* %146) #12
  %add219 = add i64 %call218, 2
  store i64 %add219, i64* %l216, align 8, !tbaa !13
  %147 = load i64, i64* %l216, align 8, !tbaa !13
  %148 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize220 = getelementptr inbounds %struct.envelope, %struct.envelope* %148, i32 0, i32 9
  %149 = load i64, i64* %e_msgsize220, align 8, !tbaa !79
  %cmp221 = icmp ugt i64 %147, %149
  br i1 %cmp221, label %if.then.223, label %if.else.225

if.then.223:                                      ; preds = %if.then.214
  %150 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize224 = getelementptr inbounds %struct.envelope, %struct.envelope* %150, i32 0, i32 9
  store i64 0, i64* %e_msgsize224, align 8, !tbaa !79
  br label %if.end.228

if.else.225:                                      ; preds = %if.then.214
  %151 = load i64, i64* %l216, align 8, !tbaa !13
  %152 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize226 = getelementptr inbounds %struct.envelope, %struct.envelope* %152, i32 0, i32 9
  %153 = load i64, i64* %e_msgsize226, align 8, !tbaa !79
  %sub227 = sub i64 %153, %151
  store i64 %sub227, i64* %e_msgsize226, align 8, !tbaa !79
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.225, %if.then.223
  %154 = bitcast i64* %l216 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.211
  %155 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value230 = getelementptr inbounds %struct.header, %struct.header* %155, i32 0, i32 1
  store i8* null, i8** %h_value230, align 8, !tbaa !62
  br label %do.body

do.body:                                          ; preds = %if.end.229
  %156 = load i8*, i8** %mh_value, align 8, !tbaa !1
  %cmp231 = icmp ne i8* %156, null
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %do.body
  %157 = load i8*, i8** %mh_value, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 3305)
  store i8* null, i8** %mh_value, align 8, !tbaa !1
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.233, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.234
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.259

if.else.235:                                      ; preds = %if.end.207
  %158 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_pflags236 = getelementptr inbounds %struct.milter, %struct.milter* %158, i32 0, i32 4
  %159 = load i32, i32* %mf_pflags236, align 4, !tbaa !52
  %conv237 = sext i32 %159 to i64
  %and238 = and i64 %conv237, 1048576
  %cmp239 = icmp ne i64 %and238, 0
  br i1 %cmp239, label %if.then.241, label %if.else.243

if.then.241:                                      ; preds = %if.else.235
  %160 = load i8*, i8** %mh_value, align 8, !tbaa !1
  %161 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value242 = getelementptr inbounds %struct.header, %struct.header* %161, i32 0, i32 1
  store i8* %160, i8** %h_value242, align 8, !tbaa !62
  br label %if.end.253

if.else.243:                                      ; preds = %if.else.235
  %162 = load i8*, i8** %mh_value, align 8, !tbaa !1
  %163 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %163, i32 0, i32 52
  %164 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !40
  %call244 = call i8* @addleadingspace(i8* %162, %struct.SM_RPOOL_T* %164)
  %165 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value245 = getelementptr inbounds %struct.header, %struct.header* %165, i32 0, i32 1
  store i8* %call244, i8** %h_value245, align 8, !tbaa !62
  br label %do.body.246

do.body.246:                                      ; preds = %if.else.243
  %166 = load i8*, i8** %mh_value, align 8, !tbaa !1
  %cmp247 = icmp ne i8* %166, null
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %do.body.246
  %167 = load i8*, i8** %mh_value, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 3314)
  store i8* null, i8** %mh_value, align 8, !tbaa !1
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.249, %do.body.246
  br label %do.cond.251

do.cond.251:                                      ; preds = %if.end.250
  br label %do.end.252

do.end.252:                                       ; preds = %do.cond.251
  br label %if.end.253

if.end.253:                                       ; preds = %do.end.252, %if.then.241
  %168 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags254 = getelementptr inbounds %struct.header, %struct.header* %168, i32 0, i32 4
  %169 = load i64, i64* %h_flags254, align 8, !tbaa !64
  %or = or i64 %169, 262144
  store i64 %or, i64* %h_flags254, align 8, !tbaa !64
  %170 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value255 = getelementptr inbounds %struct.header, %struct.header* %170, i32 0, i32 1
  %171 = load i8*, i8** %h_value255, align 8, !tbaa !62
  %call256 = call i64 @strlen(i8* %171) #12
  %172 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize257 = getelementptr inbounds %struct.envelope, %struct.envelope* %172, i32 0, i32 9
  %173 = load i64, i64* %e_msgsize257, align 8, !tbaa !79
  %add258 = add i64 %173, %call256
  store i64 %add258, i64* %e_msgsize257, align 8, !tbaa !79
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.253, %do.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.259, %if.end.124, %if.end.56, %if.end.44, %if.end.24, %if.end.11
  %174 = bitcast %struct.header** %sysheader to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = bitcast i8** %mh_value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i8** %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast i8** %field to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast i32* %mh_v_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
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

; Function Attrs: nounwind uwtable
define internal void @milter_chgfrom(i8* %response, i64 %rlen, %struct.envelope* %e) #0 {
entry:
  %response.addr = alloca i8*, align 8
  %rlen.addr = alloca i64, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %olderrors = alloca i32, align 4
  %argc = alloca i32, align 4
  %argv = alloca i8**, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %response, i8** %response.addr, align 8, !tbaa !1
  store i64 %rlen, i64* %rlen.addr, align 8, !tbaa !13
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %olderrors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %argc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8*** %argv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.242, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %6 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv5 = zext i8 %6 to i32
  %cmp6 = icmp sge i32 %conv5, 10
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.11

land.lhs.true.8:                                  ; preds = %if.then.4
  %7 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool9 = icmp ne i32 %7, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.218, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true.8, %if.then.4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %8 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !5
  %conv13 = sext i8 %9 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %10 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %10) #12
  %add = add i64 %call, 1
  %11 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp16 = icmp ugt i64 %add, %11
  br i1 %cmp16, label %if.then.18, label %if.end.29

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.12
  %12 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv19 = zext i8 %12 to i32
  %cmp20 = icmp sge i32 %conv19, 10
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.28

land.lhs.true.22:                                 ; preds = %if.then.18
  %13 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool23 = icmp ne i32 %13, 0
  br i1 %tobool23, label %if.end.28, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.22
  %14 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call25 = call i64 @strlen(i8* %14) #12
  %conv26 = trunc i64 %call25 to i32
  %15 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %sub = sub nsw i64 %15, 1
  %conv27 = trunc i64 %sub to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.219, i32 0, i32 0), i32 %conv26, i32 %conv27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %land.lhs.true.22, %if.then.18
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %lor.lhs.false
  %16 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv30 = zext i8 %16 to i32
  %cmp31 = icmp sge i32 %conv30, 10
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.36

land.lhs.true.33:                                 ; preds = %if.end.29
  %17 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool34 = icmp ne i32 %17, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %land.lhs.true.33
  %18 = load i8*, i8** %response.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.243, i32 0, i32 0), i8* %18)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true.33, %if.end.29
  %19 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp37 = icmp sgt i32 %19, 8
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %20 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %20, i32 0, i32 25
  %21 = load i8*, i8** %e_id, align 8, !tbaa !18
  %22 = load i8*, i8** %response.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.244, i32 0, i32 0), i8* %22)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.36
  %23 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %24 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %call41 = call i8** @milter_split_response(i8* %23, i64 %24, i32* %argc)
  store i8** %call41, i8*** %argv, align 8, !tbaa !1
  %25 = load i32, i32* %argc, align 4, !tbaa !16
  %cmp42 = icmp slt i32 %25, 1
  br i1 %cmp42, label %if.then.47, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.end.40
  %26 = load i32, i32* %argc, align 4, !tbaa !16
  %cmp45 = icmp sgt i32 %26, 2
  br i1 %cmp45, label %if.then.47, label %if.end.55

if.then.47:                                       ; preds = %lor.lhs.false.44, %if.end.40
  %27 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv48 = zext i8 %27 to i32
  %cmp49 = icmp sge i32 %conv48, 10
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.54

land.lhs.true.51:                                 ; preds = %if.then.47
  %28 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool52 = icmp ne i32 %28, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %land.lhs.true.51
  %29 = load i32, i32* %argc, align 4, !tbaa !16
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.245, i32 0, i32 0), i32 %29)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %land.lhs.true.51, %if.then.47
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %lor.lhs.false.44
  %30 = load i32, i32* @Errors, align 4, !tbaa !16
  store i32 %30, i32* %olderrors, align 4, !tbaa !16
  %31 = load i8**, i8*** %argv, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %31, i64 0
  %32 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %33 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @setsender(i8* %32, %struct.envelope* %33, i8** null, i32 0, i32 0)
  %34 = load i32, i32* %argc, align 4, !tbaa !16
  %cmp56 = icmp eq i32 %34, 2
  br i1 %cmp56, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %if.end.55
  %35 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @reset_mail_esmtp_args(%struct.envelope* %35)
  %36 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %37 = load i8**, i8*** %argv, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8*, i8** %37, i64 0
  %38 = load i8*, i8** %arrayidx59, align 8, !tbaa !1
  %39 = load i8**, i8*** %argv, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8*, i8** %39, i64 1
  %40 = load i8*, i8** %arrayidx60, align 8, !tbaa !1
  call void @parse_esmtp_args(%struct.envelope* %36, %struct.address* null, i8* %38, i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.246, i32 0, i32 0), i8** null, void (%struct.address*, i8*, i8*, %struct.envelope*)* @mail_esmtp_args)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.end.55
  %41 = load i32, i32* %olderrors, align 4, !tbaa !16
  store i32 %41, i32* @Errors, align 4, !tbaa !16
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.61, %if.end.54, %if.end.28, %if.end.11
  %42 = bitcast i8*** %argv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %argc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %olderrors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @milter_addrcpt(i8* %response, i64 %rlen, %struct.envelope* %e) #0 {
entry:
  %response.addr = alloca i8*, align 8
  %rlen.addr = alloca i64, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %olderrors = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %response, i8** %response.addr, align 8, !tbaa !1
  store i64 %rlen, i64* %rlen.addr, align 8, !tbaa !13
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %olderrors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.250, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %4 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp sge i32 %conv5, 10
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.11

land.lhs.true.8:                                  ; preds = %if.then.4
  %5 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool9 = icmp ne i32 %5, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.218, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true.8, %if.then.4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %6 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !5
  %conv13 = sext i8 %7 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %8 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %8) #12
  %add = add i64 %call, 1
  %9 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp16 = icmp ne i64 %add, %9
  br i1 %cmp16, label %if.then.18, label %if.end.29

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.12
  %10 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv19 = zext i8 %10 to i32
  %cmp20 = icmp sge i32 %conv19, 10
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.28

land.lhs.true.22:                                 ; preds = %if.then.18
  %11 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool23 = icmp ne i32 %11, 0
  br i1 %tobool23, label %if.end.28, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.22
  %12 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call25 = call i64 @strlen(i8* %12) #12
  %conv26 = trunc i64 %call25 to i32
  %13 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %sub = sub nsw i64 %13, 1
  %conv27 = trunc i64 %sub to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.219, i32 0, i32 0), i32 %conv26, i32 %conv27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %land.lhs.true.22, %if.then.18
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %lor.lhs.false
  %14 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv30 = zext i8 %14 to i32
  %cmp31 = icmp sge i32 %conv30, 10
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.36

land.lhs.true.33:                                 ; preds = %if.end.29
  %15 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool34 = icmp ne i32 %15, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %land.lhs.true.33
  %16 = load i8*, i8** %response.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.243, i32 0, i32 0), i8* %16)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true.33, %if.end.29
  %17 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp37 = icmp sgt i32 %17, 8
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 25
  %19 = load i8*, i8** %e_id, align 8, !tbaa !18
  %20 = load i8*, i8** %response.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.251, i32 0, i32 0), i8* %20)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.36
  %21 = load i32, i32* @Errors, align 4, !tbaa !16
  store i32 %21, i32* %olderrors, align 4, !tbaa !16
  %22 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %23 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue = getelementptr inbounds %struct.envelope, %struct.envelope* %23, i32 0, i32 7
  %24 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call41 = call i32 @sendtolist(i8* %22, %struct.address* null, %struct.address** %e_sendqueue, i32 0, %struct.envelope* %24)
  %25 = load i32, i32* %olderrors, align 4, !tbaa !16
  store i32 %25, i32* @Errors, align 4, !tbaa !16
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.end.28, %if.end.11
  %26 = bitcast i32* %olderrors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @milter_addrcpt_par(i8* %response, i64 %rlen, %struct.envelope* %e) #0 {
entry:
  %response.addr = alloca i8*, align 8
  %rlen.addr = alloca i64, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %olderrors = alloca i32, align 4
  %argc = alloca i32, align 4
  %delimptr = alloca i8*, align 8
  %argv = alloca i8**, align 8
  %a = alloca %struct.address*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %response, i8** %response.addr, align 8, !tbaa !1
  store i64 %rlen, i64* %rlen.addr, align 8, !tbaa !13
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %olderrors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %argc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %delimptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8*** %argv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.address** %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.252, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %7, null
  br i1 %cmp2, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %8 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv5 = zext i8 %8 to i32
  %cmp6 = icmp sge i32 %conv5, 10
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.11

land.lhs.true.8:                                  ; preds = %if.then.4
  %9 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.218, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true.8, %if.then.4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %10 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv13 = zext i8 %10 to i32
  %cmp14 = icmp sge i32 %conv13, 10
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.19

land.lhs.true.16:                                 ; preds = %if.end.12
  %11 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool17 = icmp ne i32 %11, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.16
  %12 = load i8*, i8** %response.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.243, i32 0, i32 0), i8* %12)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true.16, %if.end.12
  %13 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp20 = icmp sgt i32 %13, 8
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 25
  %15 = load i8*, i8** %e_id, align 8, !tbaa !18
  %16 = load i8*, i8** %response.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.251, i32 0, i32 0), i8* %16)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.19
  %17 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %18 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %call = call i8** @milter_split_response(i8* %17, i64 %18, i32* %argc)
  store i8** %call, i8*** %argv, align 8, !tbaa !1
  %19 = load i32, i32* %argc, align 4, !tbaa !16
  %cmp24 = icmp slt i32 %19, 1
  br i1 %cmp24, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %20 = load i32, i32* %argc, align 4, !tbaa !16
  %cmp26 = icmp sgt i32 %20, 2
  br i1 %cmp26, label %if.then.28, label %if.end.36

if.then.28:                                       ; preds = %lor.lhs.false, %if.end.23
  %21 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv29 = zext i8 %21 to i32
  %cmp30 = icmp sge i32 %conv29, 10
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.35

land.lhs.true.32:                                 ; preds = %if.then.28
  %22 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool33 = icmp ne i32 %22, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.32
  %23 = load i32, i32* %argc, align 4, !tbaa !16
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.245, i32 0, i32 0), i32 %23)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %land.lhs.true.32, %if.then.28
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %lor.lhs.false
  %24 = load i32, i32* @Errors, align 4, !tbaa !16
  store i32 %24, i32* %olderrors, align 4, !tbaa !16
  %25 = load i8**, i8*** %argv, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %25, i64 0
  %26 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %27 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call37 = call %struct.address* @parseaddr(i8* %26, %struct.address* null, i32 48, i32 32, i8** %delimptr, %struct.envelope* %27, i32 1)
  store %struct.address* %call37, %struct.address** %a, align 8, !tbaa !1
  %28 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %cmp38 = icmp ne %struct.address* %28, null
  br i1 %cmp38, label %land.lhs.true.40, label %if.else.51

land.lhs.true.40:                                 ; preds = %if.end.36
  %29 = load i32, i32* %olderrors, align 4, !tbaa !16
  %30 = load i32, i32* @Errors, align 4, !tbaa !16
  %cmp41 = icmp eq i32 %29, %30
  br i1 %cmp41, label %if.then.43, label %if.else.51

if.then.43:                                       ; preds = %land.lhs.true.40
  %31 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %32 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %33 = load i8**, i8*** %argv, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8*, i8** %33, i64 0
  %34 = load i8*, i8** %arrayidx44, align 8, !tbaa !1
  %35 = load i8**, i8*** %argv, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8*, i8** %35, i64 1
  %36 = load i8*, i8** %arrayidx45, align 8, !tbaa !1
  call void @parse_esmtp_args(%struct.envelope* %31, %struct.address* %32, i8* %34, i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.253, i32 0, i32 0), i8** null, void (%struct.address*, i8*, i8*, %struct.envelope*)* @rcpt_esmtp_args)
  %37 = load i32, i32* %olderrors, align 4, !tbaa !16
  %38 = load i32, i32* @Errors, align 4, !tbaa !16
  %cmp46 = icmp eq i32 %37, %38
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.then.43
  %39 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %40 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue = getelementptr inbounds %struct.envelope, %struct.envelope* %40, i32 0, i32 7
  %41 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call49 = call %struct.address* @recipient(%struct.address* %39, %struct.address** %e_sendqueue, i32 0, %struct.envelope* %41)
  store %struct.address* %call49, %struct.address** %a, align 8, !tbaa !1
  br label %if.end.50

if.else:                                          ; preds = %if.then.43
  %42 = load i32, i32* %olderrors, align 4, !tbaa !16
  %43 = load i32, i32* @Errors, align 4, !tbaa !16
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.254, i32 0, i32 0), i32 %42, i32 %43)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.48
  br label %if.end.52

if.else.51:                                       ; preds = %land.lhs.true.40, %if.end.36
  %44 = load %struct.address*, %struct.address** %a, align 8, !tbaa !1
  %45 = load i32, i32* %olderrors, align 4, !tbaa !16
  %46 = load i32, i32* @Errors, align 4, !tbaa !16
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.255, i32 0, i32 0), %struct.address* %44, i32 %45, i32 %46)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.end.50
  %47 = load i32, i32* %olderrors, align 4, !tbaa !16
  store i32 %47, i32* @Errors, align 4, !tbaa !16
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %if.end.35, %if.end.11
  %48 = bitcast %struct.address** %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i8*** %argv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i8** %delimptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %argc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %olderrors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @milter_delrcpt(i8* %response, i64 %rlen, %struct.envelope* %e) #0 {
entry:
  %response.addr = alloca i8*, align 8
  %rlen.addr = alloca i64, align 8
  %e.addr = alloca %struct.envelope*, align 8
  store i8* %response, i8** %response.addr, align 8, !tbaa !1
  store i64 %rlen, i64* %rlen.addr, align 8, !tbaa !13
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.256, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %2, null
  br i1 %cmp2, label %if.then.4, label %if.end.12

if.then.4:                                        ; preds = %if.end
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv5 = zext i8 %3 to i32
  %cmp6 = icmp sge i32 %conv5, 10
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.11

land.lhs.true.8:                                  ; preds = %if.then.4
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool9 = icmp ne i32 %4, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.218, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %land.lhs.true.8, %if.then.4
  br label %return

if.end.12:                                        ; preds = %if.end
  %5 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !5
  %conv13 = sext i8 %6 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %7 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %7) #12
  %add = add i64 %call, 1
  %8 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp16 = icmp ne i64 %add, %8
  br i1 %cmp16, label %if.then.18, label %if.end.29

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.12
  %9 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv19 = zext i8 %9 to i32
  %cmp20 = icmp sge i32 %conv19, 10
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.28

land.lhs.true.22:                                 ; preds = %if.then.18
  %10 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool23 = icmp ne i32 %10, 0
  br i1 %tobool23, label %if.end.28, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.22
  %11 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call25 = call i64 @strlen(i8* %11) #12
  %conv26 = trunc i64 %call25 to i32
  %12 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %sub = sub nsw i64 %12, 1
  %conv27 = trunc i64 %sub to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.219, i32 0, i32 0), i32 %conv26, i32 %conv27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %land.lhs.true.22, %if.then.18
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false
  %13 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv30 = zext i8 %13 to i32
  %cmp31 = icmp sge i32 %conv30, 10
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.36

land.lhs.true.33:                                 ; preds = %if.end.29
  %14 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool34 = icmp ne i32 %14, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %land.lhs.true.33
  %15 = load i8*, i8** %response.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.243, i32 0, i32 0), i8* %15)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true.33, %if.end.29
  %16 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp37 = icmp sgt i32 %16, 8
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 25
  %18 = load i8*, i8** %e_id, align 8, !tbaa !18
  %19 = load i8*, i8** %response.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.257, i32 0, i32 0), i8* %19)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.36
  %20 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %21 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 7
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call41 = call i32 @removefromlist(i8* %20, %struct.address** %e_sendqueue, %struct.envelope* %22)
  br label %return

return:                                           ; preds = %if.end.40, %if.end.28, %if.end.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @milter_reopen_df(%struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %dfname = alloca [4096 x i8], align 16
  %save_errno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %save_errno49 = alloca i32, align 4
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast [4096 x i8]* %dfname to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %0) #1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %1 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call = call i8* @queuename(%struct.envelope* %1, i32 100)
  %call1 = call i64 @sm_strlcpy(i8* %arraydecay, i8* %call, i64 4096)
  %2 = load i32, i32* @SuperSafe, align 4, !tbaa !16
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %3, i32 0, i32 11
  %4 = load i64, i64* %e_flags, align 8, !tbaa !58
  %and = and i64 %4, 2097152
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp = getelementptr inbounds %struct.envelope, %struct.envelope* %5, i32 0, i32 24
  %6 = load %struct.sm_file*, %struct.sm_file** %e_dfp, align 8, !tbaa !57
  %cmp3 = icmp ne %struct.sm_file* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %7 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp5 = getelementptr inbounds %struct.envelope, %struct.envelope* %7, i32 0, i32 24
  %8 = load %struct.sm_file*, %struct.sm_file** %e_dfp5, align 8, !tbaa !57
  %call6 = call i32 @sm_io_close(%struct.sm_file* %8, i32 -2)
  %9 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags7 = getelementptr inbounds %struct.envelope, %struct.envelope* %9, i32 0, i32 11
  %10 = load i64, i64* %e_flags7, align 8, !tbaa !58
  %and8 = and i64 %10, -2097153
  store i64 %and8, i64* %e_flags7, align 8, !tbaa !58
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then
  %arraydecay9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %call10 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdio_def, i32 -2, i8* %arraydecay9, i32 1, i8* null)
  %11 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp11 = getelementptr inbounds %struct.envelope, %struct.envelope* %11, i32 0, i32 24
  store %struct.sm_file* %call10, %struct.sm_file** %e_dfp11, align 8, !tbaa !57
  %cmp12 = icmp eq %struct.sm_file* %call10, null
  br i1 %cmp12, label %if.then.13, label %if.end.43

if.then.13:                                       ; preds = %if.end
  %12 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %call14 = call i32* @__errno_location() #11
  %13 = load i32, i32* %call14, align 4, !tbaa !16
  store i32 %13, i32* %save_errno, align 4, !tbaa !16
  %14 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %14 to i32
  %cmp15 = icmp sge i32 %conv, 5
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %if.then.13
  %15 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end.21, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.17
  %arraydecay19 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %16 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call20 = call i8* @sm_errstring(i32 %16)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.258, i32 0, i32 0), i8* %arraydecay19, i8* %call20)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %land.lhs.true.17, %if.then.13
  %17 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp22 = icmp sgt i32 %17, 0
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.21
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 25
  %19 = load i8*, i8** %e_id, align 8, !tbaa !18
  %arraydecay25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %20 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call26 = call i8* @sm_errstring(i32 %20)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.258, i32 0, i32 0), i8* %arraydecay25, i8* %call26)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end.21
  %21 = load i32, i32* @SuperSafe, align 4, !tbaa !16
  %cmp28 = icmp eq i32 %21, 2
  br i1 %cmp28, label %if.then.30, label %if.end.41

if.then.30:                                       ; preds = %if.end.27
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp31 = getelementptr inbounds %struct.envelope, %struct.envelope* %22, i32 0, i32 24
  %23 = load %struct.sm_file*, %struct.sm_file** %e_dfp31, align 8, !tbaa !57
  %cmp32 = icmp ne %struct.sm_file* %23, null
  br i1 %cmp32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.then.30
  %24 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp35 = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 24
  %25 = load %struct.sm_file*, %struct.sm_file** %e_dfp35, align 8, !tbaa !57
  %call36 = call i32 @sm_io_close(%struct.sm_file* %25, i32 -2)
  %26 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp37 = getelementptr inbounds %struct.envelope, %struct.envelope* %26, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp37, align 8, !tbaa !57
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %if.then.30
  %27 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags39 = getelementptr inbounds %struct.envelope, %struct.envelope* %27, i32 0, i32 11
  %28 = load i64, i64* %e_flags39, align 8, !tbaa !58
  %and40 = and i64 %28, -2097153
  store i64 %and40, i64* %e_flags39, align 8, !tbaa !58
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.38, %if.end.27
  %29 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call42 = call i32* @__errno_location() #11
  store i32 %29, i32* %call42, align 4, !tbaa !16
  %30 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end
  br label %if.end.83

if.else:                                          ; preds = %entry
  %31 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp44 = getelementptr inbounds %struct.envelope, %struct.envelope* %31, i32 0, i32 24
  %32 = load %struct.sm_file*, %struct.sm_file** %e_dfp44, align 8, !tbaa !57
  %cmp45 = icmp eq %struct.sm_file* %32, null
  br i1 %cmp45, label %if.then.47, label %if.end.82

if.then.47:                                       ; preds = %if.else
  %call48 = call i32* @__errno_location() #11
  store i32 2, i32* %call48, align 4, !tbaa !16
  %33 = bitcast i32* %save_errno49 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %call50 = call i32* @__errno_location() #11
  %34 = load i32, i32* %call50, align 4, !tbaa !16
  store i32 %34, i32* %save_errno49, align 4, !tbaa !16
  %35 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv51 = zext i8 %35 to i32
  %cmp52 = icmp sge i32 %conv51, 5
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.59

land.lhs.true.54:                                 ; preds = %if.then.47
  %36 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool55 = icmp ne i32 %36, 0
  br i1 %tobool55, label %if.end.59, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true.54
  %arraydecay57 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %37 = load i32, i32* %save_errno49, align 4, !tbaa !16
  %call58 = call i8* @sm_errstring(i32 %37)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.259, i32 0, i32 0), i8* %arraydecay57, i8* %call58)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %land.lhs.true.54, %if.then.47
  %38 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp60 = icmp sgt i32 %38, 0
  br i1 %cmp60, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %if.end.59
  %39 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id63 = getelementptr inbounds %struct.envelope, %struct.envelope* %39, i32 0, i32 25
  %40 = load i8*, i8** %e_id63, align 8, !tbaa !18
  %arraydecay64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %41 = load i32, i32* %save_errno49, align 4, !tbaa !16
  %call65 = call i8* @sm_errstring(i32 %41)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.259, i32 0, i32 0), i8* %arraydecay64, i8* %call65)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.62, %if.end.59
  %42 = load i32, i32* @SuperSafe, align 4, !tbaa !16
  %cmp67 = icmp eq i32 %42, 2
  br i1 %cmp67, label %if.then.69, label %if.end.80

if.then.69:                                       ; preds = %if.end.66
  %43 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp70 = getelementptr inbounds %struct.envelope, %struct.envelope* %43, i32 0, i32 24
  %44 = load %struct.sm_file*, %struct.sm_file** %e_dfp70, align 8, !tbaa !57
  %cmp71 = icmp ne %struct.sm_file* %44, null
  br i1 %cmp71, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %if.then.69
  %45 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp74 = getelementptr inbounds %struct.envelope, %struct.envelope* %45, i32 0, i32 24
  %46 = load %struct.sm_file*, %struct.sm_file** %e_dfp74, align 8, !tbaa !57
  %call75 = call i32 @sm_io_close(%struct.sm_file* %46, i32 -2)
  %47 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp76 = getelementptr inbounds %struct.envelope, %struct.envelope* %47, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp76, align 8, !tbaa !57
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %if.then.69
  %48 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags78 = getelementptr inbounds %struct.envelope, %struct.envelope* %48, i32 0, i32 11
  %49 = load i64, i64* %e_flags78, align 8, !tbaa !58
  %and79 = and i64 %49, -2097153
  store i64 %and79, i64* %e_flags78, align 8, !tbaa !58
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.77, %if.end.66
  %50 = load i32, i32* %save_errno49, align 4, !tbaa !16
  %call81 = call i32* @__errno_location() #11
  store i32 %50, i32* %call81, align 4, !tbaa !16
  %51 = bitcast i32* %save_errno49 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.82:                                        ; preds = %if.else
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.43
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.83, %if.end.80, %if.end.41
  %52 = bitcast [4096 x i8]* %dfname to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @milter_replbody(i8* %response, i64 %rlen, i32 %newfilter, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %response.addr = alloca i8*, align 8
  %rlen.addr = alloca i64, align 8
  %newfilter.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %i = alloca i32, align 4
  %prevsize = alloca i64, align 8
  %dfname = alloca [4096 x i8], align 16
  %save_errno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %err = alloca i32, align 4
  %save_errno68 = alloca i32, align 4
  %save_errno108 = alloca i32, align 4
  store i8* %response, i8** %response.addr, align 8, !tbaa !1
  store i64 %rlen, i64* %rlen.addr, align 8, !tbaa !13
  store i32 %newfilter, i32* %newfilter.addr, align 4, !tbaa !16
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.260, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i32, i32* %newfilter.addr, align 4, !tbaa !16
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end.154

if.then.3:                                        ; preds = %if.end
  %4 = bitcast i64* %prevsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [4096 x i8]* %dfname to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %5) #1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %6 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call = call i8* @queuename(%struct.envelope* %6, i32 100)
  %call4 = call i64 @sm_strlcpy(i8* %arraydecay, i8* %call, i64 4096)
  store i8 0, i8* @milter_replbody.prevchar, align 1, !tbaa !5
  %7 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp = getelementptr inbounds %struct.envelope, %struct.envelope* %7, i32 0, i32 24
  %8 = load %struct.sm_file*, %struct.sm_file** %e_dfp, align 8, !tbaa !57
  %call5 = call i32 @sm_io_getinfo(%struct.sm_file* %8, i32 8, i8* null)
  %conv6 = sext i32 %call5 to i64
  store i64 %conv6, i64* %prevsize, align 8, !tbaa !13
  %9 = load i64, i64* %prevsize, align 8, !tbaa !13
  %cmp7 = icmp slt i64 %9, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.3
  store i64 0, i64* %prevsize, align 8, !tbaa !13
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.3
  %10 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp11 = getelementptr inbounds %struct.envelope, %struct.envelope* %10, i32 0, i32 24
  %11 = load %struct.sm_file*, %struct.sm_file** %e_dfp11, align 8, !tbaa !57
  %call12 = call i32 @sm_io_getinfo(%struct.sm_file* %11, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.261, i32 0, i32 0))
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.10
  %12 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp15 = getelementptr inbounds %struct.envelope, %struct.envelope* %12, i32 0, i32 24
  %13 = load %struct.sm_file*, %struct.sm_file** %e_dfp15, align 8, !tbaa !57
  %call16 = call i32 @sm_io_setinfo(%struct.sm_file* %13, i32 1002, i8* null)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.49

if.then.19:                                       ; preds = %if.then.14
  %14 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %call20 = call i32* @__errno_location() #11
  %15 = load i32, i32* %call20, align 4, !tbaa !16
  store i32 %15, i32* %save_errno, align 4, !tbaa !16
  %16 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv21 = zext i8 %16 to i32
  %cmp22 = icmp sge i32 %conv21, 5
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.29

land.lhs.true.24:                                 ; preds = %if.then.19
  %17 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool25 = icmp ne i32 %17, 0
  br i1 %tobool25, label %if.end.29, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.24
  %arraydecay27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %18 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call28 = call i8* @sm_errstring(i32 %18)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.262, i32 0, i32 0), i8* %arraydecay27, i8* %call28)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %land.lhs.true.24, %if.then.19
  %19 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp30 = icmp sgt i32 %19, 0
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.29
  %20 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %20, i32 0, i32 25
  %21 = load i8*, i8** %e_id, align 8, !tbaa !18
  %arraydecay33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %22 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call34 = call i8* @sm_errstring(i32 %22)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.262, i32 0, i32 0), i8* %arraydecay33, i8* %call34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.29
  %23 = load i32, i32* @SuperSafe, align 4, !tbaa !16
  %cmp36 = icmp eq i32 %23, 2
  br i1 %cmp36, label %if.then.38, label %if.end.47

if.then.38:                                       ; preds = %if.end.35
  %24 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp39 = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 24
  %25 = load %struct.sm_file*, %struct.sm_file** %e_dfp39, align 8, !tbaa !57
  %cmp40 = icmp ne %struct.sm_file* %25, null
  br i1 %cmp40, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.then.38
  %26 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp43 = getelementptr inbounds %struct.envelope, %struct.envelope* %26, i32 0, i32 24
  %27 = load %struct.sm_file*, %struct.sm_file** %e_dfp43, align 8, !tbaa !57
  %call44 = call i32 @sm_io_close(%struct.sm_file* %27, i32 -2)
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp45 = getelementptr inbounds %struct.envelope, %struct.envelope* %28, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp45, align 8, !tbaa !57
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.then.38
  %29 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %29, i32 0, i32 11
  %30 = load i64, i64* %e_flags, align 8, !tbaa !58
  %and = and i64 %30, -2097153
  store i64 %and, i64* %e_flags, align 8, !tbaa !58
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.35
  %31 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call48 = call i32* @__errno_location() #11
  store i32 %31, i32* %call48, align 4, !tbaa !16
  %32 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end.49:                                        ; preds = %if.then.14
  br label %if.end.142

if.else:                                          ; preds = %if.end.10
  %33 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp50 = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 24
  %35 = load %struct.sm_file*, %struct.sm_file** %e_dfp50, align 8, !tbaa !57
  %f_flags = getelementptr inbounds %struct.sm_file, %struct.sm_file* %35, i32 0, i32 4
  %36 = load i64, i64* %f_flags, align 8, !tbaa !67
  %and51 = and i64 %36, 256
  %cmp52 = icmp ne i64 %and51, 0
  %conv53 = zext i1 %cmp52 to i32
  store i32 %conv53, i32* %err, align 4, !tbaa !16
  %37 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp54 = getelementptr inbounds %struct.envelope, %struct.envelope* %37, i32 0, i32 24
  %38 = load %struct.sm_file*, %struct.sm_file** %e_dfp54, align 8, !tbaa !57
  %call55 = call i32 @sm_io_flush(%struct.sm_file* %38, i32 -2)
  %39 = load i32, i32* %err, align 4, !tbaa !16
  %cmp56 = icmp eq i32 %39, 0
  br i1 %cmp56, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %if.else
  %40 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp59 = getelementptr inbounds %struct.envelope, %struct.envelope* %40, i32 0, i32 24
  %41 = load %struct.sm_file*, %struct.sm_file** %e_dfp59, align 8, !tbaa !57
  %f_flags60 = getelementptr inbounds %struct.sm_file, %struct.sm_file* %41, i32 0, i32 4
  %42 = load i64, i64* %f_flags60, align 8, !tbaa !67
  %and61 = and i64 %42, -385
  store i64 %and61, i64* %f_flags60, align 8, !tbaa !67
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %if.else
  %43 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp63 = getelementptr inbounds %struct.envelope, %struct.envelope* %43, i32 0, i32 24
  %44 = load %struct.sm_file*, %struct.sm_file** %e_dfp63, align 8, !tbaa !57
  %call64 = call i32 @sm_io_seek(%struct.sm_file* %44, i32 -2, i64 0, i32 0)
  store i32 %call64, i32* %err, align 4, !tbaa !16
  %45 = load i32, i32* %err, align 4, !tbaa !16
  %cmp65 = icmp slt i32 %45, 0
  br i1 %cmp65, label %if.then.67, label %if.end.101

if.then.67:                                       ; preds = %if.end.62
  %46 = bitcast i32* %save_errno68 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %call69 = call i32* @__errno_location() #11
  %47 = load i32, i32* %call69, align 4, !tbaa !16
  store i32 %47, i32* %save_errno68, align 4, !tbaa !16
  %48 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv70 = zext i8 %48 to i32
  %cmp71 = icmp sge i32 %conv70, 5
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.78

land.lhs.true.73:                                 ; preds = %if.then.67
  %49 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool74 = icmp ne i32 %49, 0
  br i1 %tobool74, label %if.end.78, label %if.then.75

if.then.75:                                       ; preds = %land.lhs.true.73
  %arraydecay76 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %50 = load i32, i32* %save_errno68, align 4, !tbaa !16
  %call77 = call i8* @sm_errstring(i32 %50)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.263, i32 0, i32 0), i8* %arraydecay76, i8* %call77)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %land.lhs.true.73, %if.then.67
  %51 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp79 = icmp sgt i32 %51, 0
  br i1 %cmp79, label %if.then.81, label %if.end.85

if.then.81:                                       ; preds = %if.end.78
  %52 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id82 = getelementptr inbounds %struct.envelope, %struct.envelope* %52, i32 0, i32 25
  %53 = load i8*, i8** %e_id82, align 8, !tbaa !18
  %arraydecay83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %54 = load i32, i32* %save_errno68, align 4, !tbaa !16
  %call84 = call i8* @sm_errstring(i32 %54)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.263, i32 0, i32 0), i8* %arraydecay83, i8* %call84)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %if.end.78
  %55 = load i32, i32* @SuperSafe, align 4, !tbaa !16
  %cmp86 = icmp eq i32 %55, 2
  br i1 %cmp86, label %if.then.88, label %if.end.99

if.then.88:                                       ; preds = %if.end.85
  %56 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp89 = getelementptr inbounds %struct.envelope, %struct.envelope* %56, i32 0, i32 24
  %57 = load %struct.sm_file*, %struct.sm_file** %e_dfp89, align 8, !tbaa !57
  %cmp90 = icmp ne %struct.sm_file* %57, null
  br i1 %cmp90, label %if.then.92, label %if.end.96

if.then.92:                                       ; preds = %if.then.88
  %58 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp93 = getelementptr inbounds %struct.envelope, %struct.envelope* %58, i32 0, i32 24
  %59 = load %struct.sm_file*, %struct.sm_file** %e_dfp93, align 8, !tbaa !57
  %call94 = call i32 @sm_io_close(%struct.sm_file* %59, i32 -2)
  %60 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp95 = getelementptr inbounds %struct.envelope, %struct.envelope* %60, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp95, align 8, !tbaa !57
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.92, %if.then.88
  %61 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags97 = getelementptr inbounds %struct.envelope, %struct.envelope* %61, i32 0, i32 11
  %62 = load i64, i64* %e_flags97, align 8, !tbaa !58
  %and98 = and i64 %62, -2097153
  store i64 %and98, i64* %e_flags97, align 8, !tbaa !58
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.96, %if.end.85
  %63 = load i32, i32* %save_errno68, align 4, !tbaa !16
  %call100 = call i32* @__errno_location() #11
  store i32 %63, i32* %call100, align 4, !tbaa !16
  %64 = bitcast i32* %save_errno68 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.101:                                       ; preds = %if.end.62
  %65 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp102 = getelementptr inbounds %struct.envelope, %struct.envelope* %65, i32 0, i32 24
  %66 = load %struct.sm_file*, %struct.sm_file** %e_dfp102, align 8, !tbaa !57
  %call103 = call i32 @sm_io_getinfo(%struct.sm_file* %66, i32 3, i8* null)
  %call104 = call i32 @ftruncate(i32 %call103, i64 0) #1
  store i32 %call104, i32* %err, align 4, !tbaa !16
  %67 = load i32, i32* %err, align 4, !tbaa !16
  %cmp105 = icmp slt i32 %67, 0
  br i1 %cmp105, label %if.then.107, label %if.end.141

if.then.107:                                      ; preds = %if.end.101
  %68 = bitcast i32* %save_errno108 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %call109 = call i32* @__errno_location() #11
  %69 = load i32, i32* %call109, align 4, !tbaa !16
  store i32 %69, i32* %save_errno108, align 4, !tbaa !16
  %70 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv110 = zext i8 %70 to i32
  %cmp111 = icmp sge i32 %conv110, 5
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.118

land.lhs.true.113:                                ; preds = %if.then.107
  %71 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool114 = icmp ne i32 %71, 0
  br i1 %tobool114, label %if.end.118, label %if.then.115

if.then.115:                                      ; preds = %land.lhs.true.113
  %arraydecay116 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %72 = load i32, i32* %save_errno108, align 4, !tbaa !16
  %call117 = call i8* @sm_errstring(i32 %72)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.264, i32 0, i32 0), i8* %arraydecay116, i8* %call117)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.115, %land.lhs.true.113, %if.then.107
  %73 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp119 = icmp sgt i32 %73, 0
  br i1 %cmp119, label %if.then.121, label %if.end.125

if.then.121:                                      ; preds = %if.end.118
  %74 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id122 = getelementptr inbounds %struct.envelope, %struct.envelope* %74, i32 0, i32 25
  %75 = load i8*, i8** %e_id122, align 8, !tbaa !18
  %arraydecay123 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %76 = load i32, i32* %save_errno108, align 4, !tbaa !16
  %call124 = call i8* @sm_errstring(i32 %76)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.264, i32 0, i32 0), i8* %arraydecay123, i8* %call124)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.121, %if.end.118
  %77 = load i32, i32* @SuperSafe, align 4, !tbaa !16
  %cmp126 = icmp eq i32 %77, 2
  br i1 %cmp126, label %if.then.128, label %if.end.139

if.then.128:                                      ; preds = %if.end.125
  %78 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp129 = getelementptr inbounds %struct.envelope, %struct.envelope* %78, i32 0, i32 24
  %79 = load %struct.sm_file*, %struct.sm_file** %e_dfp129, align 8, !tbaa !57
  %cmp130 = icmp ne %struct.sm_file* %79, null
  br i1 %cmp130, label %if.then.132, label %if.end.136

if.then.132:                                      ; preds = %if.then.128
  %80 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp133 = getelementptr inbounds %struct.envelope, %struct.envelope* %80, i32 0, i32 24
  %81 = load %struct.sm_file*, %struct.sm_file** %e_dfp133, align 8, !tbaa !57
  %call134 = call i32 @sm_io_close(%struct.sm_file* %81, i32 -2)
  %82 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp135 = getelementptr inbounds %struct.envelope, %struct.envelope* %82, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp135, align 8, !tbaa !57
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.132, %if.then.128
  %83 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags137 = getelementptr inbounds %struct.envelope, %struct.envelope* %83, i32 0, i32 11
  %84 = load i64, i64* %e_flags137, align 8, !tbaa !58
  %and138 = and i64 %84, -2097153
  store i64 %and138, i64* %e_flags137, align 8, !tbaa !58
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.136, %if.end.125
  %85 = load i32, i32* %save_errno108, align 4, !tbaa !16
  %call140 = call i32* @__errno_location() #11
  store i32 %85, i32* %call140, align 4, !tbaa !16
  %86 = bitcast i32* %save_errno108 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.141:                                       ; preds = %if.end.101
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.141, %if.end.139, %if.end.99
  %87 = bitcast i32* %err to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.150 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.142

if.end.142:                                       ; preds = %cleanup.cont, %if.end.49
  %88 = load i64, i64* %prevsize, align 8, !tbaa !13
  %89 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize = getelementptr inbounds %struct.envelope, %struct.envelope* %89, i32 0, i32 9
  %90 = load i64, i64* %e_msgsize, align 8, !tbaa !79
  %cmp143 = icmp sgt i64 %88, %90
  br i1 %cmp143, label %if.then.145, label %if.else.147

if.then.145:                                      ; preds = %if.end.142
  %91 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize146 = getelementptr inbounds %struct.envelope, %struct.envelope* %91, i32 0, i32 9
  store i64 0, i64* %e_msgsize146, align 8, !tbaa !79
  br label %if.end.149

if.else.147:                                      ; preds = %if.end.142
  %92 = load i64, i64* %prevsize, align 8, !tbaa !13
  %93 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize148 = getelementptr inbounds %struct.envelope, %struct.envelope* %93, i32 0, i32 9
  %94 = load i64, i64* %e_msgsize148, align 8, !tbaa !79
  %sub = sub nsw i64 %94, %92
  store i64 %sub, i64* %e_msgsize148, align 8, !tbaa !79
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.147, %if.then.145
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.150

cleanup.150:                                      ; preds = %if.end.149, %cleanup, %if.end.47
  %95 = bitcast [4096 x i8]* %dfname to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %95) #1
  %96 = bitcast i64* %prevsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %cleanup.dest.152 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.152, label %cleanup.226 [
    i32 0, label %cleanup.cont.153
  ]

cleanup.cont.153:                                 ; preds = %cleanup.150
  br label %if.end.154

if.end.154:                                       ; preds = %cleanup.cont.153, %if.end
  %97 = load i32, i32* %newfilter.addr, align 4, !tbaa !16
  %tobool155 = icmp ne i32 %97, 0
  br i1 %tobool155, label %land.lhs.true.156, label %if.end.161

land.lhs.true.156:                                ; preds = %if.end.154
  %98 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp157 = icmp sgt i32 %98, 8
  br i1 %cmp157, label %if.then.159, label %if.end.161

if.then.159:                                      ; preds = %land.lhs.true.156
  %99 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id160 = getelementptr inbounds %struct.envelope, %struct.envelope* %99, i32 0, i32 25
  %100 = load i8*, i8** %e_id160, align 8, !tbaa !18
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.265, i32 0, i32 0))
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.159, %land.lhs.true.156, %if.end.154
  %101 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %cmp162 = icmp eq i8* %101, null
  br i1 %cmp162, label %if.then.164, label %if.end.174

if.then.164:                                      ; preds = %if.end.161
  %102 = load i8, i8* @milter_replbody.prevchar, align 1, !tbaa !5
  %conv165 = sext i8 %102 to i32
  %cmp166 = icmp eq i32 %conv165, 13
  br i1 %cmp166, label %if.then.168, label %if.end.173

if.then.168:                                      ; preds = %if.then.164
  %103 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp169 = getelementptr inbounds %struct.envelope, %struct.envelope* %103, i32 0, i32 24
  %104 = load %struct.sm_file*, %struct.sm_file** %e_dfp169, align 8, !tbaa !57
  %105 = load i8, i8* @milter_replbody.prevchar, align 1, !tbaa !5
  %conv170 = sext i8 %105 to i32
  %call171 = call i32 @sm_io_putc(%struct.sm_file* %104, i32 -2, i32 %conv170)
  %106 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize172 = getelementptr inbounds %struct.envelope, %struct.envelope* %106, i32 0, i32 9
  %107 = load i64, i64* %e_msgsize172, align 8, !tbaa !79
  %inc = add nsw i64 %107, 1
  store i64 %inc, i64* %e_msgsize172, align 8, !tbaa !79
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.168, %if.then.164
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

if.end.174:                                       ; preds = %if.end.161
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.174
  %108 = load i32, i32* %i, align 4, !tbaa !16
  %conv175 = sext i32 %108 to i64
  %109 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp176 = icmp slt i64 %conv175, %109
  br i1 %cmp176, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %110 = load i32, i32* %i, align 4, !tbaa !16
  %cmp178 = icmp eq i32 %110, 0
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.195

land.lhs.true.180:                                ; preds = %for.body
  %111 = load i8, i8* @milter_replbody.prevchar, align 1, !tbaa !5
  %conv181 = sext i8 %111 to i32
  %cmp182 = icmp eq i32 %conv181, 13
  br i1 %cmp182, label %if.then.184, label %if.end.195

if.then.184:                                      ; preds = %land.lhs.true.180
  %112 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom = sext i32 %112 to i64
  %113 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %113, i64 %idxprom
  %114 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv185 = sext i8 %114 to i32
  %cmp186 = icmp ne i32 %conv185, 10
  br i1 %cmp186, label %if.then.188, label %if.end.194

if.then.188:                                      ; preds = %if.then.184
  %115 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp189 = getelementptr inbounds %struct.envelope, %struct.envelope* %115, i32 0, i32 24
  %116 = load %struct.sm_file*, %struct.sm_file** %e_dfp189, align 8, !tbaa !57
  %117 = load i8, i8* @milter_replbody.prevchar, align 1, !tbaa !5
  %conv190 = sext i8 %117 to i32
  %call191 = call i32 @sm_io_putc(%struct.sm_file* %116, i32 -2, i32 %conv190)
  %118 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize192 = getelementptr inbounds %struct.envelope, %struct.envelope* %118, i32 0, i32 9
  %119 = load i64, i64* %e_msgsize192, align 8, !tbaa !79
  %inc193 = add nsw i64 %119, 1
  store i64 %inc193, i64* %e_msgsize192, align 8, !tbaa !79
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.188, %if.then.184
  store i8 0, i8* @milter_replbody.prevchar, align 1, !tbaa !5
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %land.lhs.true.180, %for.body
  %120 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom196 = sext i32 %120 to i64
  %121 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i8, i8* %121, i64 %idxprom196
  %122 = load i8, i8* %arrayidx197, align 1, !tbaa !5
  %conv198 = sext i8 %122 to i32
  %cmp199 = icmp eq i32 %conv198, 13
  br i1 %cmp199, label %if.then.201, label %if.end.217

if.then.201:                                      ; preds = %if.end.195
  %123 = load i32, i32* %i, align 4, !tbaa !16
  %add = add nsw i32 %123, 1
  %conv202 = sext i32 %add to i64
  %124 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp203 = icmp slt i64 %conv202, %124
  br i1 %cmp203, label %if.then.205, label %if.else.215

if.then.205:                                      ; preds = %if.then.201
  %125 = load i32, i32* %i, align 4, !tbaa !16
  %add206 = add nsw i32 %125, 1
  %idxprom207 = sext i32 %add206 to i64
  %126 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i8, i8* %126, i64 %idxprom207
  %127 = load i8, i8* %arrayidx208, align 1, !tbaa !5
  %conv209 = sext i8 %127 to i32
  %cmp210 = icmp eq i32 %conv209, 10
  br i1 %cmp210, label %if.then.212, label %if.end.214

if.then.212:                                      ; preds = %if.then.205
  %128 = load i32, i32* %i, align 4, !tbaa !16
  %inc213 = add nsw i32 %128, 1
  store i32 %inc213, i32* %i, align 4, !tbaa !16
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.212, %if.then.205
  br label %if.end.216

if.else.215:                                      ; preds = %if.then.201
  store i8 13, i8* @milter_replbody.prevchar, align 1, !tbaa !5
  br label %for.inc

if.end.216:                                       ; preds = %if.end.214
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.end.195
  %129 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp218 = getelementptr inbounds %struct.envelope, %struct.envelope* %129, i32 0, i32 24
  %130 = load %struct.sm_file*, %struct.sm_file** %e_dfp218, align 8, !tbaa !57
  %131 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom219 = sext i32 %131 to i64
  %132 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds i8, i8* %132, i64 %idxprom219
  %133 = load i8, i8* %arrayidx220, align 1, !tbaa !5
  %conv221 = sext i8 %133 to i32
  %call222 = call i32 @sm_io_putc(%struct.sm_file* %130, i32 -2, i32 %conv221)
  %134 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize223 = getelementptr inbounds %struct.envelope, %struct.envelope* %134, i32 0, i32 9
  %135 = load i64, i64* %e_msgsize223, align 8, !tbaa !79
  %inc224 = add nsw i64 %135, 1
  store i64 %inc224, i64* %e_msgsize223, align 8, !tbaa !79
  br label %for.inc

for.inc:                                          ; preds = %if.end.217, %if.else.215
  %136 = load i32, i32* %i, align 4, !tbaa !16
  %inc225 = add nsw i32 %136, 1
  store i32 %inc225, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

cleanup.226:                                      ; preds = %for.end, %if.end.173, %cleanup.150
  %137 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = load i32, i32* %retval
  ret i32 %138
}

declare i32 @sm_io_close(%struct.sm_file*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @milter_reset_df(%struct.envelope* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %afd = alloca i32, align 4
  %dfname = alloca [4096 x i8], align 16
  %save_errno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %save_errno44 = alloca i32, align 4
  %save_errno83 = alloca i32, align 4
  %save_errno123 = alloca i32, align 4
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %afd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [4096 x i8]* %dfname to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %1) #1
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %2 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call = call i8* @queuename(%struct.envelope* %2, i32 100)
  %call1 = call i64 @sm_strlcpy(i8* %arraydecay, i8* %call, i64 4096)
  %3 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp = getelementptr inbounds %struct.envelope, %struct.envelope* %3, i32 0, i32 24
  %4 = load %struct.sm_file*, %struct.sm_file** %e_dfp, align 8, !tbaa !57
  %call2 = call i32 @sm_io_flush(%struct.sm_file* %4, i32 -2)
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp3 = getelementptr inbounds %struct.envelope, %struct.envelope* %5, i32 0, i32 24
  %6 = load %struct.sm_file*, %struct.sm_file** %e_dfp3, align 8, !tbaa !57
  %f_flags = getelementptr inbounds %struct.sm_file, %struct.sm_file* %6, i32 0, i32 4
  %7 = load i64, i64* %f_flags, align 8, !tbaa !67
  %and = and i64 %7, 256
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %call5 = call i32* @__errno_location() #11
  %9 = load i32, i32* %call5, align 4, !tbaa !16
  store i32 %9, i32* %save_errno, align 4, !tbaa !16
  %10 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %10 to i32
  %cmp6 = icmp sge i32 %conv, 5
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %11 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %arraydecay9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %12 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call10 = call i8* @sm_errstring(i32 %12)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.266, i32 0, i32 0), i8* %arraydecay9, i8* %call10)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true, %if.then
  %13 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp11 = icmp sgt i32 %13, 0
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 25
  %15 = load i8*, i8** %e_id, align 8, !tbaa !18
  %arraydecay14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %16 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call15 = call i8* @sm_errstring(i32 %16)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.266, i32 0, i32 0), i8* %arraydecay14, i8* %call15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end
  %17 = load i32, i32* @SuperSafe, align 4, !tbaa !16
  %cmp17 = icmp eq i32 %17, 2
  br i1 %cmp17, label %if.then.19, label %if.end.29

if.then.19:                                       ; preds = %if.end.16
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp20 = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 24
  %19 = load %struct.sm_file*, %struct.sm_file** %e_dfp20, align 8, !tbaa !57
  %cmp21 = icmp ne %struct.sm_file* %19, null
  br i1 %cmp21, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.then.19
  %20 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp24 = getelementptr inbounds %struct.envelope, %struct.envelope* %20, i32 0, i32 24
  %21 = load %struct.sm_file*, %struct.sm_file** %e_dfp24, align 8, !tbaa !57
  %call25 = call i32 @sm_io_close(%struct.sm_file* %21, i32 -2)
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp26 = getelementptr inbounds %struct.envelope, %struct.envelope* %22, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp26, align 8, !tbaa !57
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.then.19
  %23 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %23, i32 0, i32 11
  %24 = load i64, i64* %e_flags, align 8, !tbaa !58
  %and28 = and i64 %24, -2097153
  store i64 %and28, i64* %e_flags, align 8, !tbaa !58
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.27, %if.end.16
  %25 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call30 = call i32* @__errno_location() #11
  store i32 %25, i32* %call30, align 4, !tbaa !16
  %26 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %27 = load i32, i32* @SuperSafe, align 4, !tbaa !16
  %cmp31 = icmp ne i32 %27, 2
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.else
  br label %if.end.161

if.else.34:                                       ; preds = %if.else
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp35 = getelementptr inbounds %struct.envelope, %struct.envelope* %28, i32 0, i32 24
  %29 = load %struct.sm_file*, %struct.sm_file** %e_dfp35, align 8, !tbaa !57
  %call36 = call i32 @sm_io_getinfo(%struct.sm_file* %29, i32 3, i8* null)
  store i32 %call36, i32* %afd, align 4, !tbaa !16
  %cmp37 = icmp sge i32 %call36, 0
  br i1 %cmp37, label %land.lhs.true.39, label %if.else.77

land.lhs.true.39:                                 ; preds = %if.else.34
  %30 = load i32, i32* %afd, align 4, !tbaa !16
  %call40 = call i32 @fsync(i32 %30)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.else.77

if.then.43:                                       ; preds = %land.lhs.true.39
  %31 = bitcast i32* %save_errno44 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %call45 = call i32* @__errno_location() #11
  %32 = load i32, i32* %call45, align 4, !tbaa !16
  store i32 %32, i32* %save_errno44, align 4, !tbaa !16
  %33 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv46 = zext i8 %33 to i32
  %cmp47 = icmp sge i32 %conv46, 5
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.54

land.lhs.true.49:                                 ; preds = %if.then.43
  %34 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool50 = icmp ne i32 %34, 0
  br i1 %tobool50, label %if.end.54, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.49
  %arraydecay52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %35 = load i32, i32* %save_errno44, align 4, !tbaa !16
  %call53 = call i8* @sm_errstring(i32 %35)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.267, i32 0, i32 0), i8* %arraydecay52, i8* %call53)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %land.lhs.true.49, %if.then.43
  %36 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp55 = icmp sgt i32 %36, 0
  br i1 %cmp55, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %if.end.54
  %37 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id58 = getelementptr inbounds %struct.envelope, %struct.envelope* %37, i32 0, i32 25
  %38 = load i8*, i8** %e_id58, align 8, !tbaa !18
  %arraydecay59 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %39 = load i32, i32* %save_errno44, align 4, !tbaa !16
  %call60 = call i8* @sm_errstring(i32 %39)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.267, i32 0, i32 0), i8* %arraydecay59, i8* %call60)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %if.end.54
  %40 = load i32, i32* @SuperSafe, align 4, !tbaa !16
  %cmp62 = icmp eq i32 %40, 2
  br i1 %cmp62, label %if.then.64, label %if.end.75

if.then.64:                                       ; preds = %if.end.61
  %41 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp65 = getelementptr inbounds %struct.envelope, %struct.envelope* %41, i32 0, i32 24
  %42 = load %struct.sm_file*, %struct.sm_file** %e_dfp65, align 8, !tbaa !57
  %cmp66 = icmp ne %struct.sm_file* %42, null
  br i1 %cmp66, label %if.then.68, label %if.end.72

if.then.68:                                       ; preds = %if.then.64
  %43 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp69 = getelementptr inbounds %struct.envelope, %struct.envelope* %43, i32 0, i32 24
  %44 = load %struct.sm_file*, %struct.sm_file** %e_dfp69, align 8, !tbaa !57
  %call70 = call i32 @sm_io_close(%struct.sm_file* %44, i32 -2)
  %45 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp71 = getelementptr inbounds %struct.envelope, %struct.envelope* %45, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp71, align 8, !tbaa !57
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.68, %if.then.64
  %46 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags73 = getelementptr inbounds %struct.envelope, %struct.envelope* %46, i32 0, i32 11
  %47 = load i64, i64* %e_flags73, align 8, !tbaa !58
  %and74 = and i64 %47, -2097153
  store i64 %and74, i64* %e_flags73, align 8, !tbaa !58
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.72, %if.end.61
  %48 = load i32, i32* %save_errno44, align 4, !tbaa !16
  %call76 = call i32* @__errno_location() #11
  store i32 %48, i32* %call76, align 4, !tbaa !16
  %49 = bitcast i32* %save_errno44 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.77:                                       ; preds = %land.lhs.true.39, %if.else.34
  %50 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp78 = getelementptr inbounds %struct.envelope, %struct.envelope* %50, i32 0, i32 24
  %51 = load %struct.sm_file*, %struct.sm_file** %e_dfp78, align 8, !tbaa !57
  %call79 = call i32 @sm_io_close(%struct.sm_file* %51, i32 -2)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.then.82, label %if.else.116

if.then.82:                                       ; preds = %if.else.77
  %52 = bitcast i32* %save_errno83 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %call84 = call i32* @__errno_location() #11
  %53 = load i32, i32* %call84, align 4, !tbaa !16
  store i32 %53, i32* %save_errno83, align 4, !tbaa !16
  %54 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv85 = zext i8 %54 to i32
  %cmp86 = icmp sge i32 %conv85, 5
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.93

land.lhs.true.88:                                 ; preds = %if.then.82
  %55 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool89 = icmp ne i32 %55, 0
  br i1 %tobool89, label %if.end.93, label %if.then.90

if.then.90:                                       ; preds = %land.lhs.true.88
  %arraydecay91 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %56 = load i32, i32* %save_errno83, align 4, !tbaa !16
  %call92 = call i8* @sm_errstring(i32 %56)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.268, i32 0, i32 0), i8* %arraydecay91, i8* %call92)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.90, %land.lhs.true.88, %if.then.82
  %57 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp94 = icmp sgt i32 %57, 0
  br i1 %cmp94, label %if.then.96, label %if.end.100

if.then.96:                                       ; preds = %if.end.93
  %58 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id97 = getelementptr inbounds %struct.envelope, %struct.envelope* %58, i32 0, i32 25
  %59 = load i8*, i8** %e_id97, align 8, !tbaa !18
  %arraydecay98 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %60 = load i32, i32* %save_errno83, align 4, !tbaa !16
  %call99 = call i8* @sm_errstring(i32 %60)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.268, i32 0, i32 0), i8* %arraydecay98, i8* %call99)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.96, %if.end.93
  %61 = load i32, i32* @SuperSafe, align 4, !tbaa !16
  %cmp101 = icmp eq i32 %61, 2
  br i1 %cmp101, label %if.then.103, label %if.end.114

if.then.103:                                      ; preds = %if.end.100
  %62 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp104 = getelementptr inbounds %struct.envelope, %struct.envelope* %62, i32 0, i32 24
  %63 = load %struct.sm_file*, %struct.sm_file** %e_dfp104, align 8, !tbaa !57
  %cmp105 = icmp ne %struct.sm_file* %63, null
  br i1 %cmp105, label %if.then.107, label %if.end.111

if.then.107:                                      ; preds = %if.then.103
  %64 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp108 = getelementptr inbounds %struct.envelope, %struct.envelope* %64, i32 0, i32 24
  %65 = load %struct.sm_file*, %struct.sm_file** %e_dfp108, align 8, !tbaa !57
  %call109 = call i32 @sm_io_close(%struct.sm_file* %65, i32 -2)
  %66 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp110 = getelementptr inbounds %struct.envelope, %struct.envelope* %66, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp110, align 8, !tbaa !57
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.107, %if.then.103
  %67 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags112 = getelementptr inbounds %struct.envelope, %struct.envelope* %67, i32 0, i32 11
  %68 = load i64, i64* %e_flags112, align 8, !tbaa !58
  %and113 = and i64 %68, -2097153
  store i64 %and113, i64* %e_flags112, align 8, !tbaa !58
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.111, %if.end.100
  %69 = load i32, i32* %save_errno83, align 4, !tbaa !16
  %call115 = call i32* @__errno_location() #11
  store i32 %69, i32* %call115, align 4, !tbaa !16
  %70 = bitcast i32* %save_errno83 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.116:                                      ; preds = %if.else.77
  %arraydecay117 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %call118 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdio_def, i32 -2, i8* %arraydecay117, i32 2, i8* null)
  %71 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp119 = getelementptr inbounds %struct.envelope, %struct.envelope* %71, i32 0, i32 24
  store %struct.sm_file* %call118, %struct.sm_file** %e_dfp119, align 8, !tbaa !57
  %cmp120 = icmp eq %struct.sm_file* %call118, null
  br i1 %cmp120, label %if.then.122, label %if.else.156

if.then.122:                                      ; preds = %if.else.116
  %72 = bitcast i32* %save_errno123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %call124 = call i32* @__errno_location() #11
  %73 = load i32, i32* %call124, align 4, !tbaa !16
  store i32 %73, i32* %save_errno123, align 4, !tbaa !16
  %74 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv125 = zext i8 %74 to i32
  %cmp126 = icmp sge i32 %conv125, 5
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.133

land.lhs.true.128:                                ; preds = %if.then.122
  %75 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool129 = icmp ne i32 %75, 0
  br i1 %tobool129, label %if.end.133, label %if.then.130

if.then.130:                                      ; preds = %land.lhs.true.128
  %arraydecay131 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %76 = load i32, i32* %save_errno123, align 4, !tbaa !16
  %call132 = call i8* @sm_errstring(i32 %76)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.269, i32 0, i32 0), i8* %arraydecay131, i8* %call132)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.130, %land.lhs.true.128, %if.then.122
  %77 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp134 = icmp sgt i32 %77, 0
  br i1 %cmp134, label %if.then.136, label %if.end.140

if.then.136:                                      ; preds = %if.end.133
  %78 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id137 = getelementptr inbounds %struct.envelope, %struct.envelope* %78, i32 0, i32 25
  %79 = load i8*, i8** %e_id137, align 8, !tbaa !18
  %arraydecay138 = getelementptr inbounds [4096 x i8], [4096 x i8]* %dfname, i32 0, i32 0
  %80 = load i32, i32* %save_errno123, align 4, !tbaa !16
  %call139 = call i8* @sm_errstring(i32 %80)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.269, i32 0, i32 0), i8* %arraydecay138, i8* %call139)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.136, %if.end.133
  %81 = load i32, i32* @SuperSafe, align 4, !tbaa !16
  %cmp141 = icmp eq i32 %81, 2
  br i1 %cmp141, label %if.then.143, label %if.end.154

if.then.143:                                      ; preds = %if.end.140
  %82 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp144 = getelementptr inbounds %struct.envelope, %struct.envelope* %82, i32 0, i32 24
  %83 = load %struct.sm_file*, %struct.sm_file** %e_dfp144, align 8, !tbaa !57
  %cmp145 = icmp ne %struct.sm_file* %83, null
  br i1 %cmp145, label %if.then.147, label %if.end.151

if.then.147:                                      ; preds = %if.then.143
  %84 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp148 = getelementptr inbounds %struct.envelope, %struct.envelope* %84, i32 0, i32 24
  %85 = load %struct.sm_file*, %struct.sm_file** %e_dfp148, align 8, !tbaa !57
  %call149 = call i32 @sm_io_close(%struct.sm_file* %85, i32 -2)
  %86 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_dfp150 = getelementptr inbounds %struct.envelope, %struct.envelope* %86, i32 0, i32 24
  store %struct.sm_file* null, %struct.sm_file** %e_dfp150, align 8, !tbaa !57
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.147, %if.then.143
  %87 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags152 = getelementptr inbounds %struct.envelope, %struct.envelope* %87, i32 0, i32 11
  %88 = load i64, i64* %e_flags152, align 8, !tbaa !58
  %and153 = and i64 %88, -2097153
  store i64 %and153, i64* %e_flags152, align 8, !tbaa !58
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.151, %if.end.140
  %89 = load i32, i32* %save_errno123, align 4, !tbaa !16
  %call155 = call i32* @__errno_location() #11
  store i32 %89, i32* %call155, align 4, !tbaa !16
  %90 = bitcast i32* %save_errno123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.156:                                      ; preds = %if.else.116
  %91 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags157 = getelementptr inbounds %struct.envelope, %struct.envelope* %91, i32 0, i32 11
  %92 = load i64, i64* %e_flags157, align 8, !tbaa !58
  %or = or i64 %92, 2097152
  store i64 %or, i64* %e_flags157, align 8, !tbaa !58
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.156
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.33
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.162, %if.end.154, %if.end.114, %if.end.75, %if.end.29
  %93 = bitcast [4096 x i8]* %dfname to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %93) #1
  %94 = bitcast i32* %afd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = load i32, i32* %retval
  ret i32 %95
}

declare i32 @bfrewind(%struct.sm_file*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i8* @qid_printqueue(i32, i32) #3

; Function Attrs: nounwind uwtable
define i8* @milter_unknown(i8* %smtpcmd, %struct.envelope* %e, i8* %state) #0 {
entry:
  %smtpcmd.addr = alloca i8*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %state.addr = alloca i8*, align 8
  store i8* %smtpcmd, i8** %smtpcmd.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %state, i8** %state.addr, align 8, !tbaa !1
  %0 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** %smtpcmd.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i8*, i8** %smtpcmd.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %smtpcmd.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %4) #12
  %add = add i64 %call, 1
  %5 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %state.addr, align 8, !tbaa !1
  %call2 = call i8* @milter_command(i32 85, i8* %3, i64 %add, i32 -1, %struct.envelope* %5, i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 0)
  ret i8* %call2
}

; Function Attrs: nounwind uwtable
define internal void @milter_quit_filter(%struct.milter* %m, %struct.envelope* %e) #0 {
entry:
  %m.addr = alloca %struct.milter*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %2, i32 0, i32 0
  %3 = load i8*, i8** %mf_name, align 8, !tbaa !8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.270, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp2 = icmp sgt i32 %4, 18
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %5 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %5, i32 0, i32 25
  %6 = load i8*, i8** %e_id, align 8, !tbaa !18
  %7 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name5 = getelementptr inbounds %struct.milter, %struct.milter* %7, i32 0, i32 0
  %8 = load i8*, i8** %mf_name5, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.271, i32 0, i32 0), i8* %8)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %9 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state = getelementptr inbounds %struct.milter, %struct.milter* %9, i32 0, i32 7
  %10 = load i8, i8* %mf_state, align 1, !tbaa !11
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 69
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  br label %if.end.41

if.end.11:                                        ; preds = %if.end.6
  %11 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock = getelementptr inbounds %struct.milter, %struct.milter* %11, i32 0, i32 6
  %12 = load i32, i32* %mf_sock, align 4, !tbaa !12
  %cmp12 = icmp slt i32 %12, 0
  br i1 %cmp12, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %13 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state14 = getelementptr inbounds %struct.milter, %struct.milter* %13, i32 0, i32 7
  %14 = load i8, i8* %mf_state14, align 1, !tbaa !11
  %conv15 = sext i8 %14 to i32
  %cmp16 = icmp eq i32 %conv15, 67
  br i1 %cmp16, label %if.then.23, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %15 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state19 = getelementptr inbounds %struct.milter, %struct.milter* %15, i32 0, i32 7
  %16 = load i8, i8* %mf_state19, align 1, !tbaa !11
  %conv20 = sext i8 %16 to i32
  %cmp21 = icmp eq i32 %conv20, 82
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %if.end.11
  %17 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock24 = getelementptr inbounds %struct.milter, %struct.milter* %17, i32 0, i32 6
  store i32 -1, i32* %mf_sock24, align 4, !tbaa !12
  %18 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state25 = getelementptr inbounds %struct.milter, %struct.milter* %18, i32 0, i32 7
  store i8 67, i8* %mf_state25, align 1, !tbaa !11
  br label %if.end.41

if.end.26:                                        ; preds = %lor.lhs.false.18
  %19 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %20 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_timeout = getelementptr inbounds %struct.milter, %struct.milter* %20, i32 0, i32 10
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %mf_timeout, i32 0, i64 0
  %21 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call = call i8* @milter_write(%struct.milter* %19, i32 81, i8* null, i64 0, i64 %21, %struct.envelope* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.272, i32 0, i32 0))
  %23 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock27 = getelementptr inbounds %struct.milter, %struct.milter* %23, i32 0, i32 6
  %24 = load i32, i32* %mf_sock27, align 4, !tbaa !12
  %cmp28 = icmp sge i32 %24, 0
  br i1 %cmp28, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end.26
  %25 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock31 = getelementptr inbounds %struct.milter, %struct.milter* %25, i32 0, i32 6
  %26 = load i32, i32* %mf_sock31, align 4, !tbaa !12
  %call32 = call i32 @close(i32 %26)
  %27 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock33 = getelementptr inbounds %struct.milter, %struct.milter* %27, i32 0, i32 6
  store i32 -1, i32* %mf_sock33, align 4, !tbaa !12
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.end.26
  %28 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state35 = getelementptr inbounds %struct.milter, %struct.milter* %28, i32 0, i32 7
  %29 = load i8, i8* %mf_state35, align 1, !tbaa !11
  %conv36 = sext i8 %29 to i32
  %cmp37 = icmp ne i32 %conv36, 69
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.34
  %30 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_state40 = getelementptr inbounds %struct.milter, %struct.milter* %30, i32 0, i32 7
  store i8 67, i8* %mf_state40, align 1, !tbaa !11
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.10, %if.then.23, %if.then.39, %if.end.34
  ret void
}

declare i32 @safefile(i8*, i32, i32, i8*, i64, i32, %struct.stat*) #3

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #3

declare %struct.servent* @getservbyname(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #4

declare %struct.hostent* @sm_gethostbyname(i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #4

declare i8* @sm_errstring(i32) #3

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(%struct.__jmp_buf_tag*, i32) #9

declare %struct.sm_event* @sm_seteventm(i32, void (i32)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @milter_connect_timeout(i32 %ignore) #0 {
entry:
  %ignore.addr = alloca i32, align 4
  store i32 %ignore, i32* %ignore.addr, align 4, !tbaa !16
  %call = call i32* @__errno_location() #11
  store i32 110, i32* %call, align 4, !tbaa !16
  call void @siglongjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @MilterConnectTimeout, i32 0, i32 0), i32 1) #15
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @connect(i32, %struct.sockaddr*, i32) #3

declare void @sm_clrevent(%struct.sm_event*) #3

declare i32 @close(i32) #3

; Function Attrs: noreturn nounwind
declare void @siglongjmp(%struct.__jmp_buf_tag*, i32) #10

declare i64 @convtime(i8*, i32) #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @milter_getsymlist(%struct.milter* %m, i8* %buf, i32 %rlen, i32 %offset) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.milter*, align 8
  %buf.addr = alloca i8*, align 8
  %rlen.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %nummac = alloca i32, align 4
  %v = alloca i32, align 4
  %len = alloca i64, align 8
  %macros = alloca i8**, align 8
  %__v = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %rlen, i32* %rlen.addr, align 4, !tbaa !16
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !16
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %nummac to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.milter* %4, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  call void @sm_abort_at(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2304, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.141, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %5, %entry
  %6 = phi i1 [ true, %entry ], [ false, %5 ]
  %lor.ext = zext i1 %6 to i32
  %7 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %7, null
  br i1 %cmp1, label %lor.end.3, label %lor.rhs.2

lor.rhs.2:                                        ; preds = %lor.end
  call void @sm_abort_at(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2305, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.142, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %lor.end.3

lor.end.3:                                        ; preds = %8, %lor.end
  %9 = phi i1 [ true, %lor.end ], [ false, %8 ]
  %lor.ext4 = zext i1 %9 to i32
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %lor.end.3
  %10 = load i32, i32* %offset.addr, align 4, !tbaa !16
  %add = add nsw i32 %10, 4
  %11 = load i32, i32* %rlen.addr, align 4, !tbaa !16
  %cmp5 = icmp slt i32 %add, %11
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8*** %macros to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32 0, i32* %nummac, align 4, !tbaa !16
  %14 = bitcast i32* %v to i8*
  %15 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %16 = load i32, i32* %offset.addr, align 4, !tbaa !16
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %add.ptr, i64 4, i32 1, i1 false)
  %17 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %v, align 4, !tbaa !16
  store i32 %19, i32* %__x, align 4, !tbaa !16
  %20 = load i32, i32* %__x, align 4, !tbaa !16
  %21 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %20) #11, !srcloc !82
  store i32 %21, i32* %__v, align 4, !tbaa !16
  %22 = load i32, i32* %__v, align 4, !tbaa !16
  store i32 %22, i32* %tmp, !tbaa !16
  %23 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = load i32, i32* %tmp, !tbaa !16
  store i32 %25, i32* %i, align 4, !tbaa !16
  %26 = load i32, i32* %i, align 4, !tbaa !16
  %cmp6 = icmp slt i32 %26, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %27 = load i32, i32* %i, align 4, !tbaa !16
  %cmp7 = icmp sgt i32 %27, 6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %28 = load i32, i32* %offset.addr, align 4, !tbaa !16
  %add8 = add nsw i32 %28, 4
  store i32 %add8, i32* %offset.addr, align 4, !tbaa !16
  store i8** null, i8*** %macros, align 8, !tbaa !1
  %29 = load i32, i32* %i, align 4, !tbaa !16
  switch i32 %29, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 6, label %sw.bb
    i32 5, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %30 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_idx = getelementptr inbounds %struct.milter, %struct.milter* %30, i32 0, i32 9
  %31 = load i32, i32* %mf_idx, align 4, !tbaa !17
  %cmp9 = icmp sgt i32 %31, 0
  br i1 %cmp9, label %land.lhs.true, label %lor.rhs.12

land.lhs.true:                                    ; preds = %sw.bb
  %32 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_idx10 = getelementptr inbounds %struct.milter, %struct.milter* %32, i32 0, i32 9
  %33 = load i32, i32* %mf_idx10, align 4, !tbaa !17
  %cmp11 = icmp slt i32 %33, 25
  br i1 %cmp11, label %lor.end.13, label %lor.rhs.12

lor.rhs.12:                                       ; preds = %land.lhs.true, %sw.bb
  call void @sm_abort_at(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2331, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.143, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %lor.end.13

lor.end.13:                                       ; preds = %34, %land.lhs.true
  %35 = phi i1 [ true, %land.lhs.true ], [ false, %34 ]
  %lor.ext14 = zext i1 %35 to i32
  %36 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_idx15 = getelementptr inbounds %struct.milter, %struct.milter* %36, i32 0, i32 9
  %37 = load i32, i32* %mf_idx15, align 4, !tbaa !17
  %idxprom = sext i32 %37 to i64
  %38 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom16 = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds [7 x [26 x [51 x i8*]]], [7 x [26 x [51 x i8*]]]* @MilterMacros, i32 0, i64 %idxprom16
  %arrayidx17 = getelementptr inbounds [26 x [51 x i8*]], [26 x [51 x i8*]]* %arrayidx, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [51 x i8*], [51 x i8*]* %arrayidx17, i32 0, i32 0
  store i8** %arraydecay, i8*** %macros, align 8, !tbaa !1
  %39 = load i32, i32* %i, align 4, !tbaa !16
  %shl = shl i32 1, %39
  %40 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_lflags = getelementptr inbounds %struct.milter, %struct.milter* %40, i32 0, i32 8
  %41 = load i8, i8* %mf_lflags, align 1, !tbaa !56
  %conv = sext i8 %41 to i32
  %or = or i32 %conv, %shl
  %conv18 = trunc i32 %or to i8
  store i8 %conv18, i8* %mf_lflags, align 1, !tbaa !56
  %42 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %43 = load i32, i32* %offset.addr, align 4, !tbaa !16
  %idx.ext19 = sext i32 %43 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %42, i64 %idx.ext19
  %call = call i64 @strlen(i8* %add.ptr20) #12
  store i64 %call, i64* %len, align 8, !tbaa !13
  %44 = load i64, i64* %len, align 8, !tbaa !13
  %cmp21 = icmp uge i64 %44, 0
  br i1 %cmp21, label %if.then.23, label %if.end.48

if.then.23:                                       ; preds = %lor.end.13
  %45 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %45, i32 0, i32 0
  %46 = load i8*, i8** %mf_name, align 8, !tbaa !8
  %47 = load i8**, i8*** %macros, align 8, !tbaa !1
  %48 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %49 = load i32, i32* %offset.addr, align 4, !tbaa !16
  %idx.ext24 = sext i32 %49 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %48, i64 %idx.ext24
  %50 = load i32, i32* %nummac, align 4, !tbaa !16
  %call26 = call i32 @milter_set_macros(i8* %46, i8** %47, i8* %add.ptr25, i32 %50)
  store i32 %call26, i32* %r, align 4, !tbaa !16
  %51 = load i32, i32* %r, align 4, !tbaa !16
  %cmp27 = icmp sge i32 %51, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.23
  %52 = load i32, i32* %r, align 4, !tbaa !16
  store i32 %52, i32* %nummac, align 4, !tbaa !16
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.23
  %53 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv31 = zext i8 %53 to i32
  %cmp32 = icmp sge i32 %conv31, 5
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.47

land.lhs.true.34:                                 ; preds = %if.end.30
  %54 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %if.end.47, label %if.then.35

if.then.35:                                       ; preds = %land.lhs.true.34
  %55 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name36 = getelementptr inbounds %struct.milter, %struct.milter* %55, i32 0, i32 0
  %56 = load i8*, i8** %mf_name36, align 8, !tbaa !8
  %57 = load i32, i32* %i, align 4, !tbaa !16
  %conv37 = sext i32 %57 to i64
  %cmp38 = icmp ult i64 %conv37, 9
  br i1 %cmp38, label %land.lhs.true.40, label %cond.false

land.lhs.true.40:                                 ; preds = %if.then.35
  %58 = load i32, i32* %i, align 4, !tbaa !16
  %cmp41 = icmp sge i32 %58, 0
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.40
  %59 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom43 = sext i32 %59 to i64
  %arrayidx44 = getelementptr inbounds [9 x %struct.milteropt], [9 x %struct.milteropt]* @MilterOptTab, i32 0, i64 %idxprom43
  %mo_name = getelementptr inbounds %struct.milteropt, %struct.milteropt* %arrayidx44, i32 0, i32 0
  %60 = load i8*, i8** %mo_name, align 8, !tbaa !36
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.40, %if.then.35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %60, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i32 0, i32 0), %cond.false ]
  %61 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %62 = load i32, i32* %offset.addr, align 4, !tbaa !16
  %idx.ext45 = sext i32 %62 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %61, i64 %idx.ext45
  %63 = load i32, i32* %r, align 4, !tbaa !16
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.144, i32 0, i32 0), i8* %56, i8* %cond, i8* %add.ptr46, i32 %63)
  br label %if.end.47

if.end.47:                                        ; preds = %cond.end, %land.lhs.true.34, %if.end.30
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %lor.end.13
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.48
  %64 = load i64, i64* %len, align 8, !tbaa !13
  %add49 = add i64 %64, 1
  %65 = load i32, i32* %offset.addr, align 4, !tbaa !16
  %conv50 = sext i32 %65 to i64
  %add51 = add i64 %conv50, %add49
  %conv52 = trunc i64 %add51 to i32
  store i32 %conv52, i32* %offset.addr, align 4, !tbaa !16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  %66 = bitcast i8*** %macros to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.54 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.54

cleanup.54:                                       ; preds = %while.end, %cleanup
  %68 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %nummac to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare i32 @dequote_internal_chars(i8*, i8*, i32) #3

declare i8* @macvalue(i32, %struct.envelope*) #3

declare void @expand(i8*, i8*, i64, %struct.envelope*) #3

declare i32 @sm_io_getc(%struct.sm_file*, i32) #3

declare i8* @str2prt(i8*) #3

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #3

declare i64 @writev(i32, %struct.iovec*, i32) #3

; Function Attrs: nounwind uwtable
define internal i8* @milter_sysread(%struct.milter* %m, i8* %buf, i64 %sz, i64 %to, %struct.envelope* %e, i8* %where) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.milter*, align 8
  %buf.addr = alloca i8*, align 8
  %sz.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %where.addr = alloca i8*, align 8
  %readstart = alloca i64, align 8
  %len = alloca i64, align 8
  %curl = alloca i64, align 8
  %started = alloca i32, align 4
  %now = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %ret = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %fds = alloca %struct.fd_set, align 8
  %tv = alloca %struct.timeval, align 8
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %save_errno130 = alloca i32, align 4
  store %struct.milter* %m, %struct.milter** %m.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i64 %sz, i64* %sz.addr, align 8, !tbaa !13
  store i64 %to, i64* %to.addr, align 8, !tbaa !13
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %where, i8** %where.addr, align 8, !tbaa !1
  %0 = bitcast i64* %readstart to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %readstart, align 8, !tbaa !13
  %1 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %curl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %started to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %started, align 4, !tbaa !16
  store i64 0, i64* %curl, align 8, !tbaa !13
  %4 = load i64, i64* %to.addr, align 8, !tbaa !13
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @curtime()
  store i64 %call, i64* %readstart, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.156, %if.end
  %5 = load i64, i64* %to.addr, align 8, !tbaa !13
  %cmp1 = icmp sgt i64 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.123

if.then.2:                                        ; preds = %for.cond
  %6 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %call3 = call i64 @curtime()
  store i64 %call3, i64* %now, align 8, !tbaa !13
  %7 = load i64, i64* %now, align 8, !tbaa !13
  %8 = load i64, i64* %readstart, align 8, !tbaa !13
  %sub = sub nsw i64 %7, %8
  %9 = load i64, i64* %to.addr, align 8, !tbaa !13
  %cmp4 = icmp sge i64 %sub, %9
  br i1 %cmp4, label %if.then.5, label %if.end.18

if.then.5:                                        ; preds = %if.then.2
  %10 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %10 to i32
  %cmp6 = icmp sge i32 %conv, 5
  br i1 %cmp6, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.then.5
  %11 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %12 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name = getelementptr inbounds %struct.milter, %struct.milter* %12, i32 0, i32 0
  %13 = load i8*, i8** %mf_name, align 8, !tbaa !8
  %14 = load i32, i32* %started, align 4, !tbaa !16
  %tobool9 = icmp ne i32 %14, 0
  %cond = select i1 %tobool9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i32 0, i32 0)
  %15 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.210, i32 0, i32 0), i8* %13, i8* %cond, i8* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %land.lhs.true, %if.then.5
  %16 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp11 = icmp sgt i32 %16, 0
  br i1 %cmp11, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.10
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 25
  %18 = load i8*, i8** %e_id, align 8, !tbaa !18
  %19 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name14 = getelementptr inbounds %struct.milter, %struct.milter* %19, i32 0, i32 0
  %20 = load i8*, i8** %mf_name14, align 8, !tbaa !8
  %21 = load i32, i32* %started, align 4, !tbaa !16
  %tobool15 = icmp ne i32 %21, 0
  %cond16 = select i1 %tobool15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i32 0, i32 0)
  %22 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.211, i32 0, i32 0), i8* %20, i8* %cond16, i8* %22)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.10
  %23 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %24 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %23, %struct.envelope* %24)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.120

if.end.18:                                        ; preds = %if.then.2
  %25 = load i64, i64* %now, align 8, !tbaa !13
  %26 = load i64, i64* %readstart, align 8, !tbaa !13
  %sub19 = sub nsw i64 %25, %26
  %27 = load i64, i64* %to.addr, align 8, !tbaa !13
  %sub20 = sub nsw i64 %27, %sub19
  store i64 %sub20, i64* %to.addr, align 8, !tbaa !13
  %28 = load i64, i64* %now, align 8, !tbaa !13
  store i64 %28, i64* %readstart, align 8, !tbaa !13
  %29 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast %struct.fd_set* %fds to i8*
  call void @llvm.lifetime.start(i64 128, i8* %31) #1
  %32 = bitcast %struct.timeval* %tv to i8*
  call void @llvm.lifetime.start(i64 16, i8* %32) #1
  %33 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock = getelementptr inbounds %struct.milter, %struct.milter* %33, i32 0, i32 6
  %34 = load i32, i32* %mf_sock, align 4, !tbaa !12
  %cmp21 = icmp slt i32 %34, 1024
  br i1 %cmp21, label %if.end.40, label %if.then.23

if.then.23:                                       ; preds = %if.end.18
  %35 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv24 = zext i8 %35 to i32
  %cmp25 = icmp sge i32 %conv24, 5
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.32

land.lhs.true.27:                                 ; preds = %if.then.23
  %36 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool28 = icmp ne i32 %36, 0
  br i1 %tobool28, label %if.end.32, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.27
  %37 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name30 = getelementptr inbounds %struct.milter, %struct.milter* %37, i32 0, i32 0
  %38 = load i8*, i8** %mf_name30, align 8, !tbaa !8
  %39 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock31 = getelementptr inbounds %struct.milter, %struct.milter* %39, i32 0, i32 6
  %40 = load i32, i32* %mf_sock31, align 4, !tbaa !12
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.212, i32 0, i32 0), i8* %38, i32 %40, i32 1024)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %land.lhs.true.27, %if.then.23
  %41 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp33 = icmp sgt i32 %41, 0
  br i1 %cmp33, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.end.32
  %42 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id36 = getelementptr inbounds %struct.envelope, %struct.envelope* %42, i32 0, i32 25
  %43 = load i8*, i8** %e_id36, align 8, !tbaa !18
  %44 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name37 = getelementptr inbounds %struct.milter, %struct.milter* %44, i32 0, i32 0
  %45 = load i8*, i8** %mf_name37, align 8, !tbaa !8
  %46 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock38 = getelementptr inbounds %struct.milter, %struct.milter* %46, i32 0, i32 6
  %47 = load i32, i32* %mf_sock38, align 4, !tbaa !12
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %43, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.192, i32 0, i32 0), i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.212, i32 0, i32 0), i32 %47, i32 1024)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %if.end.32
  %48 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %49 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %48, %struct.envelope* %49)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.18
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.40
  br label %do.body.41

do.body.41:                                       ; preds = %do.body
  %50 = bitcast i32* %__d0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = bitcast i32* %__d1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %__fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %fds, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits, i32 0, i64 0
  %52 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #1, !srcloc !83
  %asmresult = extractvalue { i64, i64* } %52, 0
  %asmresult42 = extractvalue { i64, i64* } %52, 1
  %53 = trunc i64 %asmresult to i32
  store i32 %53, i32* %__d0, align 4, !tbaa !16
  %54 = ptrtoint i64* %asmresult42 to i64
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %__d1, align 4, !tbaa !16
  %56 = bitcast i32* %__d1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %__d0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body.41
  br label %do.end

do.end:                                           ; preds = %do.cond
  %58 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock43 = getelementptr inbounds %struct.milter, %struct.milter* %58, i32 0, i32 6
  %59 = load i32, i32* %mf_sock43, align 4, !tbaa !12
  %rem = srem i32 %59, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %60 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock44 = getelementptr inbounds %struct.milter, %struct.milter* %60, i32 0, i32 6
  %61 = load i32, i32* %mf_sock44, align 4, !tbaa !12
  %div = sdiv i32 %61, 64
  %idxprom = sext i32 %div to i64
  %__fds_bits45 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %fds, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits45, i32 0, i64 %idxprom
  %62 = load i64, i64* %arrayidx46, align 8, !tbaa !13
  %or = or i64 %62, %shl
  store i64 %or, i64* %arrayidx46, align 8, !tbaa !13
  %63 = load i64, i64* %to.addr, align 8, !tbaa !13
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  store i64 %63, i64* %tv_sec, align 8, !tbaa !75
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  store i64 0, i64* %tv_usec, align 8, !tbaa !77
  %64 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock47 = getelementptr inbounds %struct.milter, %struct.milter* %64, i32 0, i32 6
  %65 = load i32, i32* %mf_sock47, align 4, !tbaa !12
  %add = add nsw i32 %65, 1
  %call48 = call i32 @select(i32 %add, %struct.fd_set* %fds, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %tv)
  store i32 %call48, i32* %ret, align 4, !tbaa !16
  br label %do.cond.49

do.cond.49:                                       ; preds = %do.end
  %66 = load i32, i32* %ret, align 4, !tbaa !16
  %cmp50 = icmp slt i32 %66, 0
  br i1 %cmp50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.49
  %call52 = call i32* @__errno_location() #11
  %67 = load i32, i32* %call52, align 4, !tbaa !16
  %cmp53 = icmp eq i32 %67, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.49
  %68 = phi i1 [ false, %do.cond.49 ], [ %cmp53, %land.rhs ]
  br i1 %68, label %do.body, label %do.end.55

do.end.55:                                        ; preds = %land.end
  %69 = load i32, i32* %ret, align 4, !tbaa !16
  switch i32 %69, label %sw.default [
    i32 0, label %sw.bb
    i32 -1, label %sw.bb.72
  ]

sw.bb:                                            ; preds = %do.end.55
  %70 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv56 = zext i8 %70 to i32
  %cmp57 = icmp sge i32 %conv56, 5
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.63

land.lhs.true.59:                                 ; preds = %sw.bb
  %71 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool60 = icmp ne i32 %71, 0
  br i1 %tobool60, label %if.end.63, label %if.then.61

if.then.61:                                       ; preds = %land.lhs.true.59
  %72 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name62 = getelementptr inbounds %struct.milter, %struct.milter* %72, i32 0, i32 0
  %73 = load i8*, i8** %mf_name62, align 8, !tbaa !8
  %74 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.212, i32 0, i32 0), i8* %73, i8* %74)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %land.lhs.true.59, %sw.bb
  %75 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp64 = icmp sgt i32 %75, 0
  br i1 %cmp64, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %if.end.63
  %76 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id67 = getelementptr inbounds %struct.envelope, %struct.envelope* %76, i32 0, i32 25
  %77 = load i8*, i8** %e_id67, align 8, !tbaa !18
  %78 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name68 = getelementptr inbounds %struct.milter, %struct.milter* %78, i32 0, i32 0
  %79 = load i8*, i8** %mf_name68, align 8, !tbaa !8
  %80 = load i32, i32* %started, align 4, !tbaa !16
  %tobool69 = icmp ne i32 %80, 0
  %cond70 = select i1 %tobool69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.196, i32 0, i32 0)
  %81 = load i8*, i8** %where.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.194, i32 0, i32 0), i8* %79, i8* %cond70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.212, i32 0, i32 0), i8* %81)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %if.end.63
  %82 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %83 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %82, %struct.envelope* %83)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.72:                                         ; preds = %do.end.55
  %call73 = call i32* @__errno_location() #11
  %84 = load i32, i32* %call73, align 4, !tbaa !16
  store i32 %84, i32* %save_errno, align 4, !tbaa !16
  %85 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv74 = zext i8 %85 to i32
  %cmp75 = icmp sge i32 %conv74, 5
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.82

land.lhs.true.77:                                 ; preds = %sw.bb.72
  %86 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool78 = icmp ne i32 %86, 0
  br i1 %tobool78, label %if.end.82, label %if.then.79

if.then.79:                                       ; preds = %land.lhs.true.77
  %87 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name80 = getelementptr inbounds %struct.milter, %struct.milter* %87, i32 0, i32 0
  %88 = load i8*, i8** %mf_name80, align 8, !tbaa !8
  %89 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call81 = call i8* @sm_errstring(i32 %89)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.212, i32 0, i32 0), i8* %88, i8* %call81)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %land.lhs.true.77, %sw.bb.72
  %90 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp83 = icmp sgt i32 %90, 0
  br i1 %cmp83, label %if.then.85, label %if.end.89

if.then.85:                                       ; preds = %if.end.82
  %91 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id86 = getelementptr inbounds %struct.envelope, %struct.envelope* %91, i32 0, i32 25
  %92 = load i8*, i8** %e_id86, align 8, !tbaa !18
  %93 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name87 = getelementptr inbounds %struct.milter, %struct.milter* %93, i32 0, i32 0
  %94 = load i8*, i8** %mf_name87, align 8, !tbaa !8
  %95 = load i32, i32* %save_errno, align 4, !tbaa !16
  %call88 = call i8* @sm_errstring(i32 %95)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.198, i32 0, i32 0), i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.212, i32 0, i32 0), i8* %call88)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.85, %if.end.82
  %96 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %97 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %96, %struct.envelope* %97)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %do.end.55
  %98 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock90 = getelementptr inbounds %struct.milter, %struct.milter* %98, i32 0, i32 6
  %99 = load i32, i32* %mf_sock90, align 4, !tbaa !12
  %div91 = sdiv i32 %99, 64
  %idxprom92 = sext i32 %div91 to i64
  %__fds_bits93 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %fds, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits93, i32 0, i64 %idxprom92
  %100 = load i64, i64* %arrayidx94, align 8, !tbaa !13
  %101 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock95 = getelementptr inbounds %struct.milter, %struct.milter* %101, i32 0, i32 6
  %102 = load i32, i32* %mf_sock95, align 4, !tbaa !12
  %rem96 = srem i32 %102, 64
  %sh_prom97 = zext i32 %rem96 to i64
  %shl98 = shl i64 1, %sh_prom97
  %and = and i64 %100, %shl98
  %cmp99 = icmp ne i64 %and, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %sw.default
  br label %sw.epilog

if.end.102:                                       ; preds = %sw.default
  %103 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv103 = zext i8 %103 to i32
  %cmp104 = icmp sge i32 %conv103, 5
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.110

land.lhs.true.106:                                ; preds = %if.end.102
  %104 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool107 = icmp ne i32 %104, 0
  br i1 %tobool107, label %if.end.110, label %if.then.108

if.then.108:                                      ; preds = %land.lhs.true.106
  %105 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name109 = getelementptr inbounds %struct.milter, %struct.milter* %105, i32 0, i32 0
  %106 = load i8*, i8** %mf_name109, align 8, !tbaa !8
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.212, i32 0, i32 0), i8* %106)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %land.lhs.true.106, %if.end.102
  %107 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp111 = icmp sgt i32 %107, 0
  br i1 %cmp111, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %if.end.110
  %108 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id114 = getelementptr inbounds %struct.envelope, %struct.envelope* %108, i32 0, i32 25
  %109 = load i8*, i8** %e_id114, align 8, !tbaa !18
  %110 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name115 = getelementptr inbounds %struct.milter, %struct.milter* %110, i32 0, i32 0
  %111 = load i8*, i8** %mf_name115, align 8, !tbaa !8
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.200, i32 0, i32 0), i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.212, i32 0, i32 0))
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %if.end.110
  %112 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %113 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %112, %struct.envelope* %113)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.then.101
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.116, %if.end.89, %if.end.71, %if.end.39
  %114 = bitcast %struct.timeval* %tv to i8*
  call void @llvm.lifetime.end(i64 16, i8* %114) #1
  %115 = bitcast %struct.fd_set* %fds to i8*
  call void @llvm.lifetime.end(i64 128, i8* %115) #1
  %116 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.120 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.120

cleanup.120:                                      ; preds = %cleanup.cont, %cleanup, %if.end.17
  %118 = bitcast i64* %now to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %cleanup.dest.121 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.121, label %cleanup.175 [
    i32 0, label %cleanup.cont.122
  ]

cleanup.cont.122:                                 ; preds = %cleanup.120
  br label %if.end.123

if.end.123:                                       ; preds = %cleanup.cont.122, %for.cond
  %119 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_sock124 = getelementptr inbounds %struct.milter, %struct.milter* %119, i32 0, i32 6
  %120 = load i32, i32* %mf_sock124, align 4, !tbaa !12
  %121 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %122 = load i64, i64* %curl, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %121, i64 %122
  %123 = load i64, i64* %sz.addr, align 8, !tbaa !13
  %124 = load i64, i64* %curl, align 8, !tbaa !13
  %sub125 = sub nsw i64 %123, %124
  %call126 = call i64 @read(i32 %120, i8* %add.ptr, i64 %sub125)
  store i64 %call126, i64* %len, align 8, !tbaa !13
  %125 = load i64, i64* %len, align 8, !tbaa !13
  %cmp127 = icmp slt i64 %125, 0
  br i1 %cmp127, label %if.then.129, label %if.end.149

if.then.129:                                      ; preds = %if.end.123
  %126 = bitcast i32* %save_errno130 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %126) #1
  %call131 = call i32* @__errno_location() #11
  %127 = load i32, i32* %call131, align 4, !tbaa !16
  store i32 %127, i32* %save_errno130, align 4, !tbaa !16
  %128 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv132 = zext i8 %128 to i32
  %cmp133 = icmp sge i32 %conv132, 5
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.140

land.lhs.true.135:                                ; preds = %if.then.129
  %129 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool136 = icmp ne i32 %129, 0
  br i1 %tobool136, label %if.end.140, label %if.then.137

if.then.137:                                      ; preds = %land.lhs.true.135
  %130 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name138 = getelementptr inbounds %struct.milter, %struct.milter* %130, i32 0, i32 0
  %131 = load i8*, i8** %mf_name138, align 8, !tbaa !8
  %132 = load i64, i64* %len, align 8, !tbaa !13
  %133 = load i32, i32* %save_errno130, align 4, !tbaa !16
  %call139 = call i8* @sm_errstring(i32 %133)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.213, i32 0, i32 0), i8* %131, i64 %132, i8* %call139)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.137, %land.lhs.true.135, %if.then.129
  %134 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp141 = icmp sgt i32 %134, 0
  br i1 %cmp141, label %if.then.143, label %if.end.147

if.then.143:                                      ; preds = %if.end.140
  %135 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id144 = getelementptr inbounds %struct.envelope, %struct.envelope* %135, i32 0, i32 25
  %136 = load i8*, i8** %e_id144, align 8, !tbaa !18
  %137 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name145 = getelementptr inbounds %struct.milter, %struct.milter* %137, i32 0, i32 0
  %138 = load i8*, i8** %mf_name145, align 8, !tbaa !8
  %139 = load i64, i64* %len, align 8, !tbaa !13
  %140 = load i32, i32* %save_errno130, align 4, !tbaa !16
  %call146 = call i8* @sm_errstring(i32 %140)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %136, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.214, i32 0, i32 0), i8* %138, i64 %139, i8* %call146)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.143, %if.end.140
  %141 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %142 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %141, %struct.envelope* %142)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  %143 = bitcast i32* %save_errno130 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  br label %cleanup.175

if.end.149:                                       ; preds = %if.end.123
  store i32 1, i32* %started, align 4, !tbaa !16
  %144 = load i64, i64* %len, align 8, !tbaa !13
  %145 = load i64, i64* %curl, align 8, !tbaa !13
  %add150 = add nsw i64 %145, %144
  store i64 %add150, i64* %curl, align 8, !tbaa !13
  %146 = load i64, i64* %len, align 8, !tbaa !13
  %cmp151 = icmp eq i64 %146, 0
  br i1 %cmp151, label %if.then.155, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.149
  %147 = load i64, i64* %curl, align 8, !tbaa !13
  %148 = load i64, i64* %sz.addr, align 8, !tbaa !13
  %cmp153 = icmp sge i64 %147, %148
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %lor.lhs.false, %if.end.149
  br label %for.end

if.end.156:                                       ; preds = %lor.lhs.false
  br label %for.cond

for.end:                                          ; preds = %if.then.155
  %149 = load i64, i64* %curl, align 8, !tbaa !13
  %150 = load i64, i64* %sz.addr, align 8, !tbaa !13
  %cmp157 = icmp ne i64 %149, %150
  br i1 %cmp157, label %if.then.159, label %if.end.174

if.then.159:                                      ; preds = %for.end
  %151 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv160 = zext i8 %151 to i32
  %cmp161 = icmp sge i32 %conv160, 5
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.167

land.lhs.true.163:                                ; preds = %if.then.159
  %152 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool164 = icmp ne i32 %152, 0
  br i1 %tobool164, label %if.end.167, label %if.then.165

if.then.165:                                      ; preds = %land.lhs.true.163
  %153 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name166 = getelementptr inbounds %struct.milter, %struct.milter* %153, i32 0, i32 0
  %154 = load i8*, i8** %mf_name166, align 8, !tbaa !8
  %155 = load i64, i64* %curl, align 8, !tbaa !13
  %156 = load i64, i64* %sz.addr, align 8, !tbaa !13
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.215, i32 0, i32 0), i8* %154, i64 %155, i64 %156)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.165, %land.lhs.true.163, %if.then.159
  %157 = load i32, i32* @MilterLogLevel, align 4, !tbaa !16
  %cmp168 = icmp sgt i32 %157, 0
  br i1 %cmp168, label %if.then.170, label %if.end.173

if.then.170:                                      ; preds = %if.end.167
  %158 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id171 = getelementptr inbounds %struct.envelope, %struct.envelope* %158, i32 0, i32 25
  %159 = load i8*, i8** %e_id171, align 8, !tbaa !18
  %160 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %mf_name172 = getelementptr inbounds %struct.milter, %struct.milter* %160, i32 0, i32 0
  %161 = load i8*, i8** %mf_name172, align 8, !tbaa !8
  %162 = load i64, i64* %curl, align 8, !tbaa !13
  %163 = load i64, i64* %sz.addr, align 8, !tbaa !13
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* %159, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.216, i32 0, i32 0), i8* %161, i64 %162, i64 %163)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.170, %if.end.167
  %164 = load %struct.milter*, %struct.milter** %m.addr, align 8, !tbaa !1
  %165 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @milter_error(%struct.milter* %164, %struct.envelope* %165)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

if.end.174:                                       ; preds = %for.end
  %166 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %166, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

cleanup.175:                                      ; preds = %if.end.174, %if.end.173, %if.end.147, %cleanup.120
  %167 = bitcast i32* %started to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i64* %curl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i64* %readstart to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = load i8*, i8** %retval
  ret i8* %171
}

declare i64 @read(i32, i8*, i64) #3

declare i8* @quote_internal_chars(i8*, i8*, i32*) #3

; Function Attrs: nounwind uwtable
define internal i8* @addleadingspace(i8* %str, %struct.SM_RPOOL_T* %rp) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %rp.addr = alloca %struct.SM_RPOOL_T*, align 8
  %l = alloca i64, align 8
  %new = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store %struct.SM_RPOOL_T* %rp, %struct.SM_RPOOL_T** %rp.addr, align 8, !tbaa !1
  %0 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  call void @sm_abort_at(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2914, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.226, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %3, %entry
  %4 = phi i1 [ true, %entry ], [ false, %3 ]
  %lor.ext = zext i1 %4 to i32
  %5 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %5) #12
  store i64 %call, i64* %l, align 8, !tbaa !13
  %6 = load i64, i64* %l, align 8, !tbaa !13
  %add = add i64 %6, 2
  %7 = load i64, i64* %l, align 8, !tbaa !13
  %cmp1 = icmp ugt i64 %add, %7
  br i1 %cmp1, label %lor.end.3, label %lor.rhs.2

lor.rhs.2:                                        ; preds = %lor.end
  call void @sm_abort_at(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2916, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.227, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %lor.end.3

lor.end.3:                                        ; preds = %8, %lor.end
  %9 = phi i1 [ true, %lor.end ], [ false, %8 ]
  %lor.ext4 = zext i1 %9 to i32
  %10 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rp.addr, align 8, !tbaa !1
  %11 = load i64, i64* %l, align 8, !tbaa !13
  %add5 = add i64 %11, 2
  %12 = load i32, i32* @SmHeapGroup, align 4, !tbaa !16
  %call6 = call i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T* %10, i64 %add5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 2917, i32 %12)
  store i8* %call6, i8** %new, align 8, !tbaa !1
  %13 = load i8*, i8** %new, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  store i8 32, i8* %arrayidx, align 1, !tbaa !5
  %14 = load i8*, i8** %new, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 0, i8* %arrayidx7, align 1, !tbaa !5
  %15 = load i8*, i8** %new, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %17 = load i64, i64* %l, align 8, !tbaa !13
  %add8 = add i64 %17, 1
  %call9 = call i64 @sm_strlcpy(i8* %add.ptr, i8* %16, i64 %add8)
  %18 = load i8*, i8** %new, align 8, !tbaa !1
  %19 = bitcast i8** %new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast i64* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i8* %18
}

declare void @addheader(i8*, i8*, i32, %struct.envelope*, i32) #3

declare i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T*, i64, i8*, i32, i32) #3

declare void @insheader(i32, i8*, i8*, i32, %struct.envelope*, i32) #3

; Function Attrs: nounwind uwtable
define internal i8** @milter_split_response(i8* %response, i64 %rlen, i32* %pargc) #0 {
entry:
  %retval = alloca i8**, align 8
  %response.addr = alloca i8*, align 8
  %rlen.addr = alloca i64, align 8
  %pargc.addr = alloca i32*, align 8
  %s = alloca i8**, align 8
  %i = alloca i64, align 8
  %elem = alloca i32, align 4
  %nelem = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %response, i8** %response.addr, align 8, !tbaa !1
  store i64 %rlen, i64* %rlen.addr, align 8, !tbaa !13
  store i32* %pargc, i32** %pargc.addr, align 8, !tbaa !1
  %0 = bitcast i8*** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %elem to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %nelem to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  call void @sm_abort_at(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 3345, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.247, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %5, %entry
  %6 = phi i1 [ true, %entry ], [ false, %5 ]
  %lor.ext = zext i1 %6 to i32
  %7 = load i32*, i32** %pargc.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i32* %7, null
  br i1 %cmp1, label %lor.end.3, label %lor.rhs.2

lor.rhs.2:                                        ; preds = %lor.end
  call void @sm_abort_at(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 3346, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.248, i32 0, i32 0)) #14
  unreachable
                                                  ; No predecessors!
  br label %lor.end.3

lor.end.3:                                        ; preds = %8, %lor.end
  %9 = phi i1 [ true, %lor.end ], [ false, %8 ]
  %lor.ext4 = zext i1 %9 to i32
  %10 = load i32*, i32** %pargc.addr, align 8, !tbaa !1
  store i32 0, i32* %10, align 4, !tbaa !16
  %11 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp5 = icmp slt i64 %11, 2
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end.3
  %12 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %12) #12
  %13 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp6 = icmp uge i64 %call, %13
  br i1 %cmp6, label %if.then, label %if.end.13

if.then:                                          ; preds = %lor.lhs.false, %lor.end.3
  %14 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv = zext i8 %14 to i32
  %cmp7 = icmp sge i32 %conv, 10
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %15 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %16 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %call10 = call i64 @strlen(i8* %16) #12
  %conv11 = trunc i64 %call10 to i32
  %17 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %sub = sub nsw i64 %17, 1
  %conv12 = trunc i64 %sub to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.219, i32 0, i32 0), i32 %conv11, i32 %conv12)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %if.then
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %nelem, align 4, !tbaa !16
  store i64 0, i64* %i, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %18 = load i64, i64* %i, align 8, !tbaa !13
  %19 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp14 = icmp ult i64 %18, %19
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i64, i64* %i, align 8, !tbaa !13
  %21 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %20
  %22 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv16 = sext i8 %22 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body
  %23 = load i32, i32* %nelem, align 4, !tbaa !16
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %nelem, align 4, !tbaa !16
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %24 = load i64, i64* %i, align 8, !tbaa !13
  %inc21 = add i64 %24, 1
  store i64 %inc21, i64* %i, align 8, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %nelem, align 4, !tbaa !16
  %cmp22 = icmp eq i32 %25, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.end
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %for.end
  %26 = load i32, i32* %nelem, align 4, !tbaa !16
  %add = add nsw i32 %26, 1
  %conv26 = sext i32 %add to i64
  %mul = mul i64 %conv26, 8
  %call27 = call noalias i8* @malloc(i64 %mul) #1
  %27 = bitcast i8* %call27 to i8**
  store i8** %27, i8*** %s, align 8, !tbaa !1
  %28 = load i8**, i8*** %s, align 8, !tbaa !1
  %cmp28 = icmp eq i8** %28, null
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.25
  store i8** null, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.25
  %29 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %30 = load i8**, i8*** %s, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8*, i8** %30, i64 0
  store i8* %29, i8** %arrayidx32, align 8, !tbaa !1
  store i64 0, i64* %i, align 8, !tbaa !13
  store i32 0, i32* %elem, align 4, !tbaa !16
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.56, %if.end.31
  %31 = load i64, i64* %i, align 8, !tbaa !13
  %32 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp34 = icmp ult i64 %31, %32
  br i1 %cmp34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.33
  %33 = load i32, i32* %elem, align 4, !tbaa !16
  %34 = load i32, i32* %nelem, align 4, !tbaa !16
  %cmp36 = icmp slt i32 %33, %34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.33
  %35 = phi i1 [ false, %for.cond.33 ], [ %cmp36, %land.rhs ]
  br i1 %35, label %for.body.38, label %for.end.58

for.body.38:                                      ; preds = %land.end
  %36 = load i64, i64* %i, align 8, !tbaa !13
  %37 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %37, i64 %36
  %38 = load i8, i8* %arrayidx39, align 1, !tbaa !5
  %conv40 = sext i8 %38 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %for.body.38
  %39 = load i32, i32* %elem, align 4, !tbaa !16
  %inc44 = add nsw i32 %39, 1
  store i32 %inc44, i32* %elem, align 4, !tbaa !16
  %40 = load i64, i64* %i, align 8, !tbaa !13
  %add45 = add i64 %40, 1
  %41 = load i64, i64* %rlen.addr, align 8, !tbaa !13
  %cmp46 = icmp uge i64 %add45, %41
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.then.43
  %42 = load i32, i32* %elem, align 4, !tbaa !16
  %idxprom = sext i32 %42 to i64
  %43 = load i8**, i8*** %s, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8*, i8** %43, i64 %idxprom
  store i8* null, i8** %arrayidx49, align 8, !tbaa !1
  br label %if.end.54

if.else:                                          ; preds = %if.then.43
  %44 = load i64, i64* %i, align 8, !tbaa !13
  %add50 = add i64 %44, 1
  %45 = load i8*, i8** %response.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %45, i64 %add50
  %46 = load i32, i32* %elem, align 4, !tbaa !16
  %idxprom52 = sext i32 %46 to i64
  %47 = load i8**, i8*** %s, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i8*, i8** %47, i64 %idxprom52
  store i8* %arrayidx51, i8** %arrayidx53, align 8, !tbaa !1
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.48
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %for.body.38
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %48 = load i64, i64* %i, align 8, !tbaa !13
  %inc57 = add i64 %48, 1
  store i64 %inc57, i64* %i, align 8, !tbaa !13
  br label %for.cond.33

for.end.58:                                       ; preds = %land.end
  %49 = load i32, i32* %nelem, align 4, !tbaa !16
  %50 = load i32*, i32** %pargc.addr, align 8, !tbaa !1
  store i32 %49, i32* %50, align 4, !tbaa !16
  %51 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 64), align 1, !tbaa !5
  %conv59 = zext i8 %51 to i32
  %cmp60 = icmp sge i32 %conv59, 10
  br i1 %cmp60, label %land.lhs.true.62, label %if.end.74

land.lhs.true.62:                                 ; preds = %for.end.58
  %52 = load volatile i32, i32* @IntSig, align 4, !tbaa !16
  %tobool63 = icmp ne i32 %52, 0
  br i1 %tobool63, label %if.end.74, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.62
  store i32 0, i32* %elem, align 4, !tbaa !16
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.71, %if.then.64
  %53 = load i32, i32* %elem, align 4, !tbaa !16
  %54 = load i32, i32* %nelem, align 4, !tbaa !16
  %cmp66 = icmp slt i32 %53, %54
  br i1 %cmp66, label %for.body.68, label %for.end.73

for.body.68:                                      ; preds = %for.cond.65
  %55 = load i32, i32* %elem, align 4, !tbaa !16
  %56 = load i32, i32* %elem, align 4, !tbaa !16
  %idxprom69 = sext i32 %56 to i64
  %57 = load i8**, i8*** %s, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i8*, i8** %57, i64 %idxprom69
  %58 = load i8*, i8** %arrayidx70, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.249, i32 0, i32 0), i32 %55, i8* %58)
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.68
  %59 = load i32, i32* %elem, align 4, !tbaa !16
  %inc72 = add nsw i32 %59, 1
  store i32 %inc72, i32* %elem, align 4, !tbaa !16
  br label %for.cond.65

for.end.73:                                       ; preds = %for.cond.65
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.73, %land.lhs.true.62, %for.end.58
  %60 = load i32, i32* %elem, align 4, !tbaa !16
  %idxprom75 = sext i32 %60 to i64
  %61 = load i8**, i8*** %s, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8*, i8** %61, i64 %idxprom75
  store i8* null, i8** %arrayidx76, align 8, !tbaa !1
  %62 = load i8**, i8*** %s, align 8, !tbaa !1
  store i8** %62, i8*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.74, %if.then.30, %if.then.24, %if.end
  %63 = bitcast i32* %nelem to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %elem to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i8*** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = load i8**, i8*** %retval
  ret i8** %67
}

declare void @setsender(i8*, %struct.envelope*, i8**, i32, i32) #3

declare void @reset_mail_esmtp_args(%struct.envelope*) #3

declare void @parse_esmtp_args(%struct.envelope*, %struct.address*, i8*, i8*, i8*, i8**, void (%struct.address*, i8*, i8*, %struct.envelope*)*) #3

declare void @mail_esmtp_args(%struct.address*, i8*, i8*, %struct.envelope*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

declare i32 @sendtolist(i8*, %struct.address*, %struct.address**, i32, %struct.envelope*) #3

declare %struct.address* @parseaddr(i8*, %struct.address*, i32, i32, i8**, %struct.envelope*, i32) #3

declare void @rcpt_esmtp_args(%struct.address*, i8*, i8*, %struct.envelope*) #3

declare %struct.address* @recipient(%struct.address*, %struct.address**, i32, %struct.envelope*) #3

declare i32 @removefromlist(i8*, %struct.address**, %struct.envelope*) #3

declare i8* @queuename(%struct.envelope*, i32) #3

declare %struct.sm_file* @sm_io_open(%struct.sm_file*, i32, i8*, i32, i8*) #3

declare i32 @sm_io_getinfo(%struct.sm_file*, i32, i8*) #3

declare i32 @sm_io_setinfo(%struct.sm_file*, i32, i8*) #3

declare i32 @sm_io_flush(%struct.sm_file*, i32) #3

declare i32 @sm_io_seek(%struct.sm_file*, i32, i64, i32) #3

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) #4

declare i32 @sm_io_putc(%struct.sm_file*, i32, i32) #3

declare i32 @fsync(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind returns_twice }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"short", !3, i64 0}
!8 = !{!9, !2, i64 0}
!9 = !{!"milter", !2, i64 0, !3, i64 8, !10, i64 40, !10, i64 44, !10, i64 48, !2, i64 56, !10, i64 64, !3, i64 68, !3, i64 69, !10, i64 72, !3, i64 80}
!10 = !{!"int", !3, i64 0}
!11 = !{!9, !3, i64 68}
!12 = !{!9, !10, i64 64}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!9, !2, i64 56}
!16 = !{!10, !10, i64 0}
!17 = !{!9, !10, i64 72}
!18 = !{!19, !2, i64 344}
!19 = !{!"envelope", !2, i64 0, !14, i64 8, !14, i64 16, !2, i64 24, !20, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !14, i64 256, !2, i64 264, !14, i64 272, !10, i64 280, !7, i64 284, !7, i64 286, !7, i64 288, !7, i64 290, !7, i64 292, !7, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !10, i64 368, !10, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !14, i64 456, !10, i64 464, !14, i64 472, !14, i64 480, !21, i64 488, !2, i64 2576, !2, i64 2584, !22, i64 2592, !14, i64 2624, !10, i64 2632, !2, i64 2640, !10, i64 2648}
!20 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !14, i64 40, !10, i64 48, !10, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !14, i64 144, !2, i64 152, !7, i64 160, !2, i64 168, !10, i64 176, !10, i64 180, !2, i64 184}
!21 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!22 = !{!"sm_timers", !23, i64 0}
!23 = !{!"_timer", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!24 = !{!25, !7, i64 0}
!25 = !{!"sockaddr", !7, i64 0, !3, i64 2}
!26 = !{i32 225459}
!27 = !{!28, !10, i64 16}
!28 = !{!"servent", !2, i64 0, !2, i64 8, !10, i64 16, !2, i64 24}
!29 = !{!30, !10, i64 4}
!30 = !{!"sockaddr_in", !7, i64 0, !7, i64 2, !31, i64 4, !3, i64 8}
!31 = !{!"in_addr", !10, i64 0}
!32 = !{!30, !7, i64 2}
!33 = !{!34, !10, i64 16}
!34 = !{!"hostent", !2, i64 0, !2, i64 8, !10, i64 16, !10, i64 20, !2, i64 24}
!35 = !{!34, !2, i64 24}
!36 = !{!37, !2, i64 0}
!37 = !{!"milteropt", !2, i64 0, !3, i64 8}
!38 = !{!37, !3, i64 8}
!39 = !{!19, !2, i64 408}
!40 = !{!19, !2, i64 2640}
!41 = !{i32 262711}
!42 = !{i32 263013}
!43 = !{i32 263312}
!44 = !{i32 264052}
!45 = !{i32 264355}
!46 = !{i32 264658}
!47 = !{i32 266508}
!48 = !{!9, !10, i64 40}
!49 = !{i32 266808}
!50 = !{!9, !10, i64 44}
!51 = !{i32 267108}
!52 = !{!9, !10, i64 48}
!53 = !{!54, !10, i64 0}
!54 = !{!"milters", !10, i64 0}
!55 = !{i32 296191}
!56 = !{!9, !3, i64 69}
!57 = !{!19, !2, i64 336}
!58 = !{!19, !14, i64 272}
!59 = !{!19, !10, i64 352}
!60 = !{!19, !10, i64 356}
!61 = !{!19, !2, i64 0}
!62 = !{!63, !2, i64 8}
!63 = !{!"header", !2, i64 0, !2, i64 8, !2, i64 16, !3, i64 24, !14, i64 32, !3, i64 40}
!64 = !{!63, !14, i64 32}
!65 = !{!63, !2, i64 0}
!66 = !{!63, !2, i64 16}
!67 = !{!68, !14, i64 24}
!68 = !{!"sm_file", !2, i64 0, !2, i64 8, !10, i64 16, !10, i64 20, !14, i64 24, !7, i64 32, !69, i64 40, !10, i64 56, !2, i64 64, !10, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !10, i64 136, !10, i64 140, !2, i64 144, !2, i64 152, !2, i64 160, !69, i64 168, !2, i64 184, !10, i64 192, !3, i64 196, !3, i64 199, !10, i64 200, !14, i64 208, !10, i64 216}
!69 = !{!"smbuf", !2, i64 0, !10, i64 8}
!70 = !{i32 217631}
!71 = !{!72, !2, i64 0}
!72 = !{!"iovec", !2, i64 0, !14, i64 8}
!73 = !{!72, !14, i64 8}
!74 = !{i32 218661}
!75 = !{!76, !14, i64 0}
!76 = !{!"timeval", !14, i64 0, !14, i64 8}
!77 = !{!76, !14, i64 8}
!78 = !{i32 215296}
!79 = !{!19, !14, i64 256}
!80 = !{i32 277632}
!81 = !{i32 279555}
!82 = !{i32 260918}
!83 = !{i32 211290}
