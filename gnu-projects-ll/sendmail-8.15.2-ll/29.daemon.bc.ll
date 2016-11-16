; ModuleID = '29.daemon.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon = type { i32, %union.bigsockaddr, i16, i32, i32, i32, i64, i32, i32, [8 x i32], i8*, i8*, i32, i32, i32, i32, i32, i8*, [25 x %struct.milter*] }
%union.bigsockaddr = type { %struct.sockaddr_in, [96 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.milter = type { i8*, [8 x i32], i32, i32, i32, i8*, i32, i8, i8, i32, [4 x i64] }
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
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.anon.2 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [3 x i64], [3 x i32] }
%struct.dflags = type { i8*, i32 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.servent = type { i8*, i8**, i32, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.sm_exc = type { i8*, i64, %struct.sm_exc_type*, %union.sm_val* }
%struct.sm_exc_type = type { i8*, i8*, i8*, void (%struct.sm_exc*, %struct.sm_file*)*, i8* }
%union.sm_val = type { i64 }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.__res_state = type { i32, i32, i64, i32, [3 x %struct.sockaddr_in], i16, [7 x i8*], [256 x i8], i64, i32, [10 x %struct.anon], i32 (%struct.sockaddr_in**, i8**, i32*, i8*, i32, i32*)*, i32 (%struct.sockaddr_in*, i8*, i32, i8*, i32, i32*)*, i32, i32, i32, %union.anon }
%struct.anon = type { %struct.in_addr, i32 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i16, [3 x i16], [3 x i32], i16, i16, [3 x %struct.sockaddr_in6*], [2 x i32] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
%struct.sm_event = type { i64, void (i32)*, i32, i32, %struct.sm_event* }
%struct._map = type { %struct._mapclass*, %struct._mapclass*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8*, i8*, i8*, i8*, i64, i64, i32, i32, i32, i16, [12 x %struct._map*], [5 x i16] }
%struct._mapclass = type { i8*, i8*, i16, i32 (%struct._map*, i8*)*, {}*, void (%struct._map*, i8*, i8*)*, i32 (%struct._map*, i32)*, void (%struct._map*)* }
%struct.symtab = type { i8*, i16, %struct.symtab*, %union.anon.3 }
%union.anon.3 = type { %struct.mailer_con_info }
%struct._namecanon = type { i16, i16, i16, i16, i8*, i64 }

@NDaemons = internal global i32 0, align 4
@Daemons = common global [10 x %struct.daemon] zeroinitializer, align 16
@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str = private unnamed_addr constant [33 x i8] c"getrequests: daemon %s: port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"daemon could not open control socket %s: %s\00", align 1
@ControlSocketName = external global i8*, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"\81j\00", align 1
@CurrentPid = external global i32, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Sendmail daemon\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"getrequests: daemon %s: socket %d\0A\00", align 1
@ShutdownRequest = external global i8*, align 8
@RestartRequest = external global i8*, align 8
@RestartWorkGroup = external global i32, align 4
@LogLevel = external global i32, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"accepting connections again for daemon %s\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"daemon lost $j\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"daemon process doesn't have $j in $=w; see syslog\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"daemon $j lost dot\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"daemon process $j lost dot; see syslog\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"accepting connections\00", align 1
@ControlSocket = external global i32, align 4
@RealHostAddr = external global %union.bigsockaddr, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"getrequests: accept\00", align 1
@BlankEnvelope = external global %struct.envelope, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"{daemon_family}\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"unspec\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"daemon.c\00", align 1
@SmHeapGroup = external global i32, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"{daemon_name}\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"{daemon_flags}\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"getrequests: forking (fd = %d)\0A\00", align 1
@FallbackMX = external global i8*, align 8
@.str.21 = private unnamed_addr constant [20 x i8] c"daemon: cannot fork\00", align 1
@PendingSignal = external global i32, align 4
@.str.22 = private unnamed_addr constant [14 x i8] c"{daemon_addr}\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"{daemon_port}\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"console socket child\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"daemon child\00", align 1
@QueueIntvl = external global i64, align 8
@RefuseLA = external global i32, align 4
@QueueLA = external global i32, align 4
@DelayLA = external global i32, align 4
@MaxChildren = external global i32, align 4
@.str.27 = private unnamed_addr constant [16 x i8] c"startup with %s\00", align 1
@RealHostName = external global i8*, align 8
@.str.28 = private unnamed_addr constant [17 x i8] c"{client_resolve}\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@SmFtStdiofd_def = external global %struct.sm_file, align 8
@.str.32 = private unnamed_addr constant [39 x i8] c"cannot open SMTP server channel, fd=%d\00", align 1
@InChannel = external global %struct.sm_file*, align 8
@OutChannel = external global %struct.sm_file*, align 8
@DisConnected = external global i32, align 4
@.str.33 = private unnamed_addr constant [21 x i8] c"getreq: got name %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"{if_name}\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"{if_addr}\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"{if_family}\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"getreq: got addr %s and family %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"getreq: getsockname failed\0A\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"control socket server child\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"SMTP server child for %s\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"getreq: returning\0A\00", align 1
@InputFilters = external global [25 x %struct.milter*], align 16
@.str.42 = private unnamed_addr constant [31 x i8] c"getmodifiers too long, ignored\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"Daemon%d\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"Daemon %s flags: \00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"Daemon0\00", align 1
@ClientSettings = internal global [41 x %struct.daemon] zeroinitializer, align 16
@.str.47 = private unnamed_addr constant [9 x i8] c"Client%d\00", align 1
@OpMode = external global i8, align 1
@InetMode = external global i8, align 1
@CurHostAddr = common global %union.bigsockaddr zeroinitializer, align 4
@.str.48 = private unnamed_addr constant [19 x i8] c"initial connection\00", align 1
@SmtpPhase = external global i8*, align 8
@CurHostName = external global i8*, align 8
@.str.49 = private unnamed_addr constant [6 x i8] c"5.1.2\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"553 Invalid numeric domain spec \22%s\22\00", align 1
@MsgBuf = external global [0 x i8], align 1
@UseNameServer = external global i32, align 4
@.str.51 = private unnamed_addr constant [6 x i8] c"4.4.3\00", align 1
@.str.52 = private unnamed_addr constant [47 x i8] c"makeconnection: long sa_data: family %d len %d\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"smtp\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"makeconnection: service \22smtp\22 unknown\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"Can't connect to address family %d\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"makeconnection (%s [%s].%d (%d))\0A\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"makeconnection: cannot create socket\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"4.4.5\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"makeconnection: setsockopt(SO_SNDBUF)\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"makeconnection: setsockopt(SO_RCVBUF)\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"makeconnection: fd=%d\0A\00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c"makeconnection: cannot bind socket [%s]\00", align 1
@CtxConnectTimeout = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16
@TimeOuts = external global %struct.anon.2, align 8
@ConnectOnlyTo = external global %union.bigsockaddr, align 4
@.str.64 = private unnamed_addr constant [23 x i8] c"Connecting to [%s]...\0A\00", align 1
@DialDelay = external global i64, align 8
@.str.65 = private unnamed_addr constant [38 x i8] c"Connect failed (%s); trying again...\0A\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"makeconnection (%s [%s]) failed: %s\00", align 1
@.str.67 = private unnamed_addr constant [45 x i8] c"Connect failed (%s); trying new address....\0A\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"Connect failed (%s)\0A\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"4.4.1\00", align 1
@.str.70 = private unnamed_addr constant [39 x i8] c"cannot open SMTP client channel, fd=%d\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"{client_flags}\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"{if_addr_out}\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"{if_family_out}\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"{if_name_out}\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"SMTP outgoing connect on %.40s\00", align 1
@HeloName = external global i8*, align 8
@RunAsUid = external global i32, align 4
@RunAsGid = external global i32, align 4
@RunAsUserName = external global i8*, align 8
@.str.76 = private unnamed_addr constant [43 x i8] c"makeconnection_ds: unsafe domain socket %s\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"4.3.5\00", align 1
@.str.78 = private unnamed_addr constant [50 x i8] c"makeconnection_ds: domain socket name %s too long\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"5.3.5\00", align 1
@.str.80 = private unnamed_addr constant [53 x i8] c"makeconnection_ds: could not create domain socket %s\00", align 1
@.str.81 = private unnamed_addr constant [31 x i8] c"Could not connect to socket %s\00", align 1
@CurEnv = external global %struct.envelope*, align 8
@.str.82 = private unnamed_addr constant [27 x i8] c"stopping daemon, reason=%s\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"implicit call\00", align 1
@FileName = external global i8*, align 8
@.str.84 = private unnamed_addr constant [42 x i8] c"Could not remove daemon %s socket: %s: %s\00", align 1
@SaveArgv = external global i8**, align 8
@.str.85 = private unnamed_addr constant [34 x i8] c"could not restart: need full path\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"restarting %s due to %s\00", align 1
@DaemonPid = external global i32, align 4
@UseMSP = external global i32, align 4
@RealUid = external global i32, align 4
@.str.87 = private unnamed_addr constant [30 x i8] c"could not drop privileges: %s\00", align 1
@DtableSize = external global i32, align 4
@ExternalEnviron = external global i8**, align 8
@.str.88 = private unnamed_addr constant [22 x i8] c"could not exec %s: %s\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.90 = private unnamed_addr constant [58 x i8] c"My unqualified host name (%s) unknown; sleeping for retry\00", align 1
@.str.91 = private unnamed_addr constant [62 x i8] c"unable to qualify my own domain name (%s) -- using short name\00", align 1
@.str.92 = private unnamed_addr constant [71 x i8] c"WARNING: unable to qualify my own domain name (%s) -- using short name\00", align 1
@getauthinfo.port4 = internal global i16 0, align 2
@getauthinfo.hbuf = internal global [367 x i8] zeroinitializer, align 16
@RealUserName = external global i8*, align 8
@.str.93 = private unnamed_addr constant [11 x i8] c"@localhost\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"getauthinfo: %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"%d,%d\0D\0A\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@CtxAuthTimeout = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16
@.str.97 = private unnamed_addr constant [21 x i8] c"getauthinfo: sent %s\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"getauthinfo:  got %s\0A\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"userid\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"IDENT:\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"getauthinfo: NULL\0A\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c" [%.100s]\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c" (may be forged)\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"FORGED\00", align 1
@.str.107 = private unnamed_addr constant [33 x i8] c"host_map_lookup(%s) => CACHE %s\0A\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"851 %s: Name server timeout\00", align 1
@.str.110 = private unnamed_addr constant [66 x i8] c"host_map_lookup(%s): bogus NULL cache entry, errno=%d, h_errno=%d\00", align 1
@.str.111 = private unnamed_addr constant [33 x i8] c"host_map_lookup(%s) => DEFERRED\0A\00", align 1
@.str.112 = private unnamed_addr constant [24 x i8] c"host_map_lookup(%s) => \00", align 1
@HasWildcardMX = external global i32, align 4
@.str.113 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"FOUND %s\0A\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"FAIL (%d)\0A\00", align 1
@anynet_ntoa.buf = internal global [100 x i8] zeroinitializer, align 16
@.str.116 = private unnamed_addr constant [9 x i8] c"NULLADDR\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"[UNIX: %.64s]\00", align 1
@.str.119 = private unnamed_addr constant [18 x i8] c"[UNIX: localhost]\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"Family %d: \00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"%02x:\00", align 1
@hostnamebyanyaddr.buf = internal global [203 x i8] zeroinitializer, align 16
@.str.122 = private unnamed_addr constant [9 x i8] c"[%.200s]\00", align 1
@NextDiskSpaceCheck = internal global i64 0, align 8
@.str.123 = private unnamed_addr constant [38 x i8] c"rejecting new messages: min free: %ld\00", align 1
@MinBlocksFree = external global i64, align 8
@.str.124 = private unnamed_addr constant [31 x i8] c"accepting new messages (again)\00", align 1
@.str.125 = private unnamed_addr constant [22 x i8] c"opendaemonsocket(%s)\0A\00", align 1
@.str.126 = private unnamed_addr constant [53 x i8] c"opendaemonsocket: daemon %s: unsafe domain socket %s\00", align 1
@.str.127 = private unnamed_addr constant [61 x i8] c"opendaemonsocket: daemon %s: can't create server SMTP socket\00", align 1
@.str.128 = private unnamed_addr constant [54 x i8] c"opendaemonsocket: daemon %s: optional socket disabled\00", align 1
@.str.129 = private unnamed_addr constant [40 x i8] c"daemon %s: problem creating SMTP socket\00", align 1
@.str.130 = private unnamed_addr constant [63 x i8] c"opendaemonsocket: daemon %s: server SMTP socket (%d) too large\00", align 1
@.str.131 = private unnamed_addr constant [51 x i8] c"opendaemonsocket: daemon %s: setsockopt(SO_RCVBUF)\00", align 1
@.str.132 = private unnamed_addr constant [51 x i8] c"opendaemonsocket: daemon %s: setsockopt(SO_SNDBUF)\00", align 1
@.str.133 = private unnamed_addr constant [65 x i8] c"opendaemonsocket: daemon %s: failed to %s close-on-exec flag: %s\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.136 = private unnamed_addr constant [41 x i8] c"opendaemonsocket: daemon %s: cannot bind\00", align 1
@.str.137 = private unnamed_addr constant [43 x i8] c"opendaemonsocket: daemon %s: cannot listen\00", align 1
@.str.138 = private unnamed_addr constant [65 x i8] c"!opendaemonsocket: daemon %s: server SMTP socket wedged: exiting\00", align 1
@.str.139 = private unnamed_addr constant [33 x i8] c"554 5.3.5 service \22smtp\22 unknown\00", align 1
@.str.140 = private unnamed_addr constant [35 x i8] c"554 5.3.5 Unknown delivery mode %c\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.142 = private unnamed_addr constant [53 x i8] c"554 5.3.5 Unknown address family %s in Family=option\00", align 1
@.str.143 = private unnamed_addr constant [45 x i8] c"554 5.3.5 PortOptions parameter \22%s\22 unknown\00", align 1
@.str.144 = private unnamed_addr constant [58 x i8] c"setsockaddroptions: domain socket name too long: %s > %ld\00", align 1
@.str.145 = private unnamed_addr constant [28 x i8] c"554 5.3.0 host \22%s\22 unknown\00", align 1
@.str.146 = private unnamed_addr constant [52 x i8] c"554 5.3.5 address= option unsupported for family %d\00", align 1
@.str.147 = private unnamed_addr constant [31 x i8] c"554 5.3.5 service \22%s\22 unknown\00", align 1
@.str.148 = private unnamed_addr constant [49 x i8] c"554 5.3.5 Port= option unsupported for family %d\00", align 1
@DaemonFlags = internal global [17 x %struct.dflags] [%struct.dflags { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.152, i32 0, i32 0), i32 97 }, %struct.dflags { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.153, i32 0, i32 0), i32 98 }, %struct.dflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i32 0, i32 0), i32 99 }, %struct.dflags { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i32 0, i32 0), i32 104 }, %struct.dflags { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.156, i32 0, i32 0), i32 102 }, %struct.dflags { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i32 0, i32 0), i32 114 }, %struct.dflags { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i32 0, i32 0), i32 115 }, %struct.dflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.159, i32 0, i32 0), i32 117 }, %struct.dflags { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.160, i32 0, i32 0), i32 65 }, %struct.dflags { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i32 0, i32 0), i32 67 }, %struct.dflags { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.162, i32 0, i32 0), i32 69 }, %struct.dflags { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.163, i32 0, i32 0), i32 83 }, %struct.dflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.164, i32 0, i32 0), i32 1 }, %struct.dflags { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.165, i32 0, i32 0), i32 79 }, %struct.dflags { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.166, i32 0, i32 0), i32 2 }, %struct.dflags { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i32 0, i32 0), i32 3 }, %struct.dflags zeroinitializer], align 16
@.str.149 = private unnamed_addr constant [4 x i8] c"<%s\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.151 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"AUTHREQ\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"BINDIF\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"CANONREQ\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"IFNHELO\00", align 1
@.str.156 = private unnamed_addr constant [7 x i8] c"FQMAIL\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"FQRCPT\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"SMTPS\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"UNQUALOK\00", align 1
@.str.160 = private unnamed_addr constant [7 x i8] c"NOAUTH\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"NOCANON\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"NOETRN\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"NOTLS\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"ETRNONLY\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"OPTIONAL\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"DISABLE\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"ISSET\00", align 1
@.str.168 = private unnamed_addr constant [23 x i8] c"addr_family(%s): INET\0A\00", align 1
@.str.169 = private unnamed_addr constant [24 x i8] c"addr_family(%s): LOCAL\0A\00", align 1
@.str.170 = private unnamed_addr constant [25 x i8] c"addr_family(%s): UNSPEC\0A\00", align 1

; Function Attrs: nounwind uwtable
define [8 x i32]* @getrequests(%struct.envelope* %e) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %t = alloca i32, align 4
  %idx = alloca i32, align 4
  %curdaemon = alloca i32, align 4
  %i = alloca i32, align 4
  %olddaemon = alloca i32, align 4
  %j_has_dot = alloca i32, align 4
  %status = alloca [2048 x i8], align 16
  %sa = alloca %union.bigsockaddr, align 8
  %len = alloca i32, align 4
  %__v = alloca i16, align 2
  %__x = alloca i16, align 2
  %tmp = alloca i16, align 2
  %jbuf = alloca [64 x i8], align 16
  %pid = alloca i32, align 4
  %lotherend = alloca i32, align 4
  %timedout = alloca i32, align 4
  %control = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %pipefd = alloca [2 x i32], align 4
  %now = alloca i64, align 8
  %jbuf178 = alloca [64 x i8], align 16
  %setproc = alloca i32, align 4
  %highest = alloca i32, align 4
  %readfds = alloca %struct.fd_set, align 8
  %timeout = alloca %struct.timeval, align 8
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %sa_un = alloca %struct.sockaddr_un, align 2
  %p = alloca i8*, align 8
  %inchannel = alloca %struct.sm_file*, align 8
  %outchannel = alloca %struct.sm_file*, align 8
  %__v560 = alloca i16, align 2
  %__x562 = alloca i16, align 2
  %tmp566 = alloca i16, align 2
  %c = alloca i8, align 1
  %addr = alloca i8*, align 8
  %family = alloca [5 x i8], align 1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %curdaemon to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -1, i32* %curdaemon, align 4, !tbaa !5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %olddaemon to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %olddaemon, align 4, !tbaa !5
  %5 = bitcast i32* %j_has_dot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast [2048 x i8]* %status to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %6) #1
  %7 = bitcast %union.bigsockaddr* %sa to i8*
  call void @llvm.lifetime.start(i64 112, i8* %7) #1
  %8 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 112, i32* %len, align 4, !tbaa !5
  call void @init_qid_alg()
  store i32 0, i32* %idx, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %idx, align 4, !tbaa !5
  %10 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom
  %d_addr = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx, i32 0, i32 1
  %call = call zeroext i16 @setupdaemon(%union.bigsockaddr* %d_addr)
  %12 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom1 = sext i32 %12 to i64
  %arrayidx2 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom1
  %d_port = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx2, i32 0, i32 2
  store i16 %call, i16* %d_port, align 2, !tbaa !7
  %13 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom3
  %d_firsttime = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx4, i32 0, i32 7
  store i32 1, i32* %d_firsttime, align 4, !tbaa !11
  %14 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom5
  %d_refuse_connections_until = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx6, i32 0, i32 6
  store i64 0, i64* %d_refuse_connections_until, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %idx, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %idx, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 15), align 1, !tbaa !13
  %conv = zext i8 %16 to i32
  %cmp7 = icmp sge i32 %conv, 1
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %17 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %idx, align 4, !tbaa !5
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.19, %if.then
  %18 = load i32, i32* %idx, align 4, !tbaa !5
  %19 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %18, %19
  br i1 %cmp10, label %for.body.12, label %for.end.21

for.body.12:                                      ; preds = %for.cond.9
  %20 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom13
  %d_name = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx14, i32 0, i32 11
  %21 = load i8*, i8** %d_name, align 8, !tbaa !14
  %22 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %22) #1
  %23 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %23) #1
  %24 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom15
  %d_port17 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx16, i32 0, i32 2
  %25 = load i16, i16* %d_port17, align 2, !tbaa !7
  store i16 %25, i16* %__x, align 2, !tbaa !15
  %26 = load i16, i16* %__x, align 2, !tbaa !15
  %27 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %26) #9, !srcloc !16
  store i16 %27, i16* %__v, align 2, !tbaa !15
  %28 = load i16, i16* %__v, align 2, !tbaa !15
  store i16 %28, i16* %tmp, !tbaa !15
  %29 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %29) #1
  %30 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %30) #1
  %31 = load i16, i16* %tmp, !tbaa !15
  %conv18 = zext i16 %31 to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8* %21, i32 %conv18)
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.12
  %32 = load i32, i32* %idx, align 4, !tbaa !5
  %inc20 = add nsw i32 %32, 1
  store i32 %inc20, i32* %idx, align 4, !tbaa !5
  br label %for.cond.9

for.end.21:                                       ; preds = %for.cond.9
  br label %if.end

if.end:                                           ; preds = %for.end.21, %land.lhs.true, %for.end
  store i32 0, i32* %idx, align 4, !tbaa !5
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.31, %if.end
  %33 = load i32, i32* %idx, align 4, !tbaa !5
  %34 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %33, %34
  br i1 %cmp23, label %for.body.25, label %for.end.33

for.body.25:                                      ; preds = %for.cond.22
  %35 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom26 = sext i32 %35 to i64
  %arrayidx27 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom26
  %call28 = call i32 @opendaemonsocket(%struct.daemon* %arrayidx27, i32 1)
  %36 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom29 = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom29
  %d_socksize = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx30, i32 0, i32 8
  store i32 %call28, i32* %d_socksize, align 4, !tbaa !17
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.25
  %37 = load i32, i32* %idx, align 4, !tbaa !5
  %inc32 = add nsw i32 %37, 1
  store i32 %inc32, i32* %idx, align 4, !tbaa !5
  br label %for.cond.22

for.end.33:                                       ; preds = %for.cond.22
  %call34 = call i32 @opencontrolsocket()
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %for.end.33
  %38 = load i8*, i8** @ControlSocketName, align 8, !tbaa !1
  %call38 = call i32* @__errno_location() #9
  %39 = load i32, i32* %call38, align 4, !tbaa !5
  %call39 = call i8* @sm_errstring(i32 %39)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* %38, i8* %call39)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %for.end.33
  %call41 = call void (i32)* @sm_signal(i32 17, void (i32)* @reapchild)
  %40 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @log_sendmail_pid(%struct.envelope* %40)
  %41 = bitcast [64 x i8]* %jbuf to i8*
  call void @llvm.lifetime.start(i64 64, i8* %41) #1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %jbuf, i32 0, i32 0
  %42 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay, i64 64, %struct.envelope* %42)
  %arraydecay43 = getelementptr inbounds [64 x i8], [64 x i8]* %jbuf, i32 0, i32 0
  %call44 = call i8* @strchr(i8* %arraydecay43, i32 46) #1
  %cmp45 = icmp ne i8* %call44, null
  %conv46 = zext i1 %cmp45 to i32
  store i32 %conv46, i32* %j_has_dot, align 4, !tbaa !5
  %43 = bitcast [64 x i8]* %jbuf to i8*
  call void @llvm.lifetime.end(i64 64, i8* %43) #1
  %44 = load i32, i32* @CurrentPid, align 4, !tbaa !5
  call void @proc_list_add(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 1, i32 0, i32 -1, %union.bigsockaddr* null)
  %45 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 15), align 1, !tbaa !13
  %conv47 = zext i8 %45 to i32
  %cmp48 = icmp sge i32 %conv47, 1
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.65

land.lhs.true.50:                                 ; preds = %if.end.40
  %46 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool51 = icmp ne i32 %46, 0
  br i1 %tobool51, label %if.end.65, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true.50
  store i32 0, i32* %idx, align 4, !tbaa !5
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.62, %if.then.52
  %47 = load i32, i32* %idx, align 4, !tbaa !5
  %48 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %47, %48
  br i1 %cmp54, label %for.body.56, label %for.end.64

for.body.56:                                      ; preds = %for.cond.53
  %49 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom57 = sext i32 %49 to i64
  %arrayidx58 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom57
  %d_name59 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx58, i32 0, i32 11
  %50 = load i8*, i8** %d_name59, align 8, !tbaa !14
  %51 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom60 = sext i32 %51 to i64
  %arrayidx61 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom60
  %d_socket = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx61, i32 0, i32 0
  %52 = load i32, i32* %d_socket, align 4, !tbaa !18
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i8* %50, i32 %52)
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.56
  %53 = load i32, i32* %idx, align 4, !tbaa !5
  %inc63 = add nsw i32 %53, 1
  store i32 %inc63, i32* %idx, align 4, !tbaa !5
  br label %for.cond.53

for.end.64:                                       ; preds = %for.cond.53
  br label %if.end.65

if.end.65:                                        ; preds = %for.end.64, %land.lhs.true.50, %if.end.40
  br label %for.cond.66

for.cond.66:                                      ; preds = %cleanup.cont.791, %cleanup.783, %if.end.65
  %54 = bitcast i32* %pid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = bitcast i32* %lotherend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = bitcast i32* %timedout to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  store i32 0, i32* %timedout, align 4, !tbaa !5
  %57 = bitcast i32* %control to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  store i32 0, i32* %control, align 4, !tbaa !5
  %58 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = bitcast [2 x i32]* %pipefd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  %60 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  %call74 = call i32 @sm_blocksignal(i32 14)
  br label %do.body

do.body:                                          ; preds = %for.cond.66
  %61 = load volatile i8*, i8** @ShutdownRequest, align 8, !tbaa !1
  %cmp75 = icmp ne i8* %61, null
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %do.body
  call void @shutdown_daemon()
  br label %if.end.86

if.else:                                          ; preds = %do.body
  %62 = load volatile i8*, i8** @RestartRequest, align 8, !tbaa !1
  %cmp78 = icmp ne i8* %62, null
  br i1 %cmp78, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.else
  call void @restart_daemon()
  br label %if.end.85

if.else.81:                                       ; preds = %if.else
  %63 = load volatile i32, i32* @RestartWorkGroup, align 4, !tbaa !5
  %tobool82 = icmp ne i32 %63, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.else.81
  call void @restart_marked_work_groups()
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.else.81
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.80
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.77
  br label %do.cond

do.cond:                                          ; preds = %if.end.86
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %idx, align 4, !tbaa !5
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.158, %do.end
  %64 = load i32, i32* %idx, align 4, !tbaa !5
  %65 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %64, %65
  br i1 %cmp88, label %for.body.90, label %for.end.160

for.body.90:                                      ; preds = %for.cond.87
  %call91 = call i64 @curtime()
  store i64 %call91, i64* %now, align 8, !tbaa !19
  %66 = load i64, i64* %now, align 8, !tbaa !19
  %67 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom92 = sext i32 %67 to i64
  %arrayidx93 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom92
  %d_refuse_connections_until94 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx93, i32 0, i32 6
  %68 = load i64, i64* %d_refuse_connections_until94, align 8, !tbaa !12
  %cmp95 = icmp slt i64 %66, %68
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %for.body.90
  br label %for.inc.158

if.end.98:                                        ; preds = %for.body.90
  %69 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom99 = sext i32 %69 to i64
  %arrayidx100 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom99
  %d_flags = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx100, i32 0, i32 9
  %arrayidx101 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags, i32 0, i64 0
  %70 = load i32, i32* %arrayidx101, align 4, !tbaa !5
  %and = and i32 %70, 4
  %tobool102 = icmp ne i32 %and, 0
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.98
  br label %for.inc.158

if.end.104:                                       ; preds = %if.end.98
  %71 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %72 = load i32, i32* %idx, align 4, !tbaa !5
  %73 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %74 = load i32, i32* %idx, align 4, !tbaa !5
  %cmp105 = icmp eq i32 %73, %74
  %conv106 = zext i1 %cmp105 to i32
  %call107 = call i32 @refuseconnections(%struct.envelope* %71, i32 %72, i32 %conv106)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then.109, label %if.else.127

if.then.109:                                      ; preds = %if.end.104
  %75 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom110 = sext i32 %75 to i64
  %arrayidx111 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom110
  %d_socket112 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx111, i32 0, i32 0
  %76 = load i32, i32* %d_socket112, align 4, !tbaa !18
  %cmp113 = icmp sge i32 %76, 0
  br i1 %cmp113, label %if.then.115, label %if.end.123

if.then.115:                                      ; preds = %if.then.109
  %77 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom116 = sext i32 %77 to i64
  %arrayidx117 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom116
  %d_socket118 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx117, i32 0, i32 0
  %78 = load i32, i32* %d_socket118, align 4, !tbaa !18
  %call119 = call i32 @close(i32 %78)
  %79 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom120 = sext i32 %79 to i64
  %arrayidx121 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom120
  %d_socket122 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx121, i32 0, i32 0
  store i32 -1, i32* %d_socket122, align 4, !tbaa !18
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.115, %if.then.109
  %80 = load i64, i64* %now, align 8, !tbaa !19
  %add = add nsw i64 %80, 15
  %81 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom124 = sext i32 %81 to i64
  %arrayidx125 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom124
  %d_refuse_connections_until126 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx125, i32 0, i32 6
  store i64 %add, i64* %d_refuse_connections_until126, align 8, !tbaa !12
  br label %if.end.157

if.else.127:                                      ; preds = %if.end.104
  %82 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom128 = sext i32 %82 to i64
  %arrayidx129 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom128
  %d_socket130 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx129, i32 0, i32 0
  %83 = load i32, i32* %d_socket130, align 4, !tbaa !18
  %cmp131 = icmp slt i32 %83, 0
  br i1 %cmp131, label %if.then.137, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.127
  %84 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom133 = sext i32 %84 to i64
  %arrayidx134 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom133
  %d_firsttime135 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx134, i32 0, i32 7
  %85 = load i32, i32* %d_firsttime135, align 4, !tbaa !11
  %tobool136 = icmp ne i32 %85, 0
  br i1 %tobool136, label %if.then.137, label %if.end.156

if.then.137:                                      ; preds = %lor.lhs.false, %if.else.127
  %86 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom138 = sext i32 %86 to i64
  %arrayidx139 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom138
  %d_firsttime140 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx139, i32 0, i32 7
  %87 = load i32, i32* %d_firsttime140, align 4, !tbaa !11
  %tobool141 = icmp ne i32 %87, 0
  br i1 %tobool141, label %if.end.149, label %land.lhs.true.142

land.lhs.true.142:                                ; preds = %if.then.137
  %88 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp143 = icmp sgt i32 %88, 8
  br i1 %cmp143, label %if.then.145, label %if.end.149

if.then.145:                                      ; preds = %land.lhs.true.142
  %89 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom146 = sext i32 %89 to i64
  %arrayidx147 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom146
  %d_name148 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx147, i32 0, i32 11
  %90 = load i8*, i8** %d_name148, align 8, !tbaa !14
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i8* %90)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.145, %land.lhs.true.142, %if.then.137
  %91 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom150 = sext i32 %91 to i64
  %arrayidx151 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom150
  %call152 = call i32 @opendaemonsocket(%struct.daemon* %arrayidx151, i32 0)
  %92 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom153 = sext i32 %92 to i64
  %arrayidx154 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom153
  %d_firsttime155 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx154, i32 0, i32 7
  store i32 0, i32* %d_firsttime155, align 4, !tbaa !11
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.149, %lor.lhs.false
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.end.123
  br label %for.inc.158

for.inc.158:                                      ; preds = %if.end.157, %if.then.103, %if.then.97
  %93 = load i32, i32* %idx, align 4, !tbaa !5
  %inc159 = add nsw i32 %93, 1
  store i32 %inc159, i32* %idx, align 4, !tbaa !5
  br label %for.cond.87

for.end.160:                                      ; preds = %for.cond.87
  br label %do.body.161

do.body.161:                                      ; preds = %for.end.160
  %94 = load volatile i8*, i8** @ShutdownRequest, align 8, !tbaa !1
  %cmp162 = icmp ne i8* %94, null
  br i1 %cmp162, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %do.body.161
  call void @shutdown_daemon()
  br label %if.end.174

if.else.165:                                      ; preds = %do.body.161
  %95 = load volatile i8*, i8** @RestartRequest, align 8, !tbaa !1
  %cmp166 = icmp ne i8* %95, null
  br i1 %cmp166, label %if.then.168, label %if.else.169

if.then.168:                                      ; preds = %if.else.165
  call void @restart_daemon()
  br label %if.end.173

if.else.169:                                      ; preds = %if.else.165
  %96 = load volatile i32, i32* @RestartWorkGroup, align 4, !tbaa !5
  %tobool170 = icmp ne i32 %96, 0
  br i1 %tobool170, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.else.169
  call void @restart_marked_work_groups()
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.171, %if.else.169
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.168
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.then.164
  br label %do.cond.175

do.cond.175:                                      ; preds = %if.end.174
  br label %do.end.176

do.end.176:                                       ; preds = %do.cond.175
  %97 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @getrequests_checkdiskspace(%struct.envelope* %97)
  %98 = bitcast [64 x i8]* %jbuf178 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %98) #1
  %arraydecay179 = getelementptr inbounds [64 x i8], [64 x i8]* %jbuf178, i32 0, i32 0
  %99 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay179, i64 64, %struct.envelope* %99)
  %arraydecay180 = getelementptr inbounds [64 x i8], [64 x i8]* %jbuf178, i32 0, i32 0
  %call181 = call i32 @wordinclass(i8* %arraydecay180, i32 119)
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.else.184, label %if.then.183

if.then.183:                                      ; preds = %do.end.176
  call void @dumpstate(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i32 0, i32 0))
  call void @abort() #10
  unreachable

if.else.184:                                      ; preds = %do.end.176
  %100 = load i32, i32* %j_has_dot, align 4, !tbaa !5
  %tobool185 = icmp ne i32 %100, 0
  br i1 %tobool185, label %land.lhs.true.186, label %if.end.192

land.lhs.true.186:                                ; preds = %if.else.184
  %arraydecay187 = getelementptr inbounds [64 x i8], [64 x i8]* %jbuf178, i32 0, i32 0
  %call188 = call i8* @strchr(i8* %arraydecay187, i32 46) #1
  %cmp189 = icmp eq i8* %call188, null
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %land.lhs.true.186
  call void @dumpstate(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0))
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0))
  call void @abort() #10
  unreachable

if.end.192:                                       ; preds = %land.lhs.true.186, %if.else.184
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192
  %101 = bitcast [64 x i8]* %jbuf178 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %101) #1
  %call194 = call i32 @sm_releasesignal(i32 14)
  br label %for.cond.195

for.cond.195:                                     ; preds = %cleanup.cont, %if.end.193
  %102 = bitcast i32* %setproc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #1
  store i32 0, i32* %setproc, align 4, !tbaa !5
  %103 = bitcast i32* %highest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  store i32 -1, i32* %highest, align 4, !tbaa !5
  %104 = bitcast %struct.fd_set* %readfds to i8*
  call void @llvm.lifetime.start(i64 128, i8* %104) #1
  %105 = bitcast %struct.timeval* %timeout to i8*
  call void @llvm.lifetime.start(i64 16, i8* %105) #1
  br label %do.body.200

do.body.200:                                      ; preds = %for.cond.195
  %106 = load volatile i8*, i8** @ShutdownRequest, align 8, !tbaa !1
  %cmp201 = icmp ne i8* %106, null
  br i1 %cmp201, label %if.then.203, label %if.else.204

if.then.203:                                      ; preds = %do.body.200
  call void @shutdown_daemon()
  br label %if.end.213

if.else.204:                                      ; preds = %do.body.200
  %107 = load volatile i8*, i8** @RestartRequest, align 8, !tbaa !1
  %cmp205 = icmp ne i8* %107, null
  br i1 %cmp205, label %if.then.207, label %if.else.208

if.then.207:                                      ; preds = %if.else.204
  call void @restart_daemon()
  br label %if.end.212

if.else.208:                                      ; preds = %if.else.204
  %108 = load volatile i32, i32* @RestartWorkGroup, align 4, !tbaa !5
  %tobool209 = icmp ne i32 %108, 0
  br i1 %tobool209, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %if.else.208
  call void @restart_marked_work_groups()
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.210, %if.else.208
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.then.207
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.then.203
  br label %do.cond.214

do.cond.214:                                      ; preds = %if.end.213
  br label %do.end.215

do.end.215:                                       ; preds = %do.cond.214
  br label %do.body.216

do.body.216:                                      ; preds = %do.end.215
  %109 = bitcast i32* %__d0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #1
  %110 = bitcast i32* %__d1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %110) #1
  %__fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits, i32 0, i64 0
  %111 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx219) #1, !srcloc !20
  %asmresult = extractvalue { i64, i64* } %111, 0
  %asmresult220 = extractvalue { i64, i64* } %111, 1
  %112 = trunc i64 %asmresult to i32
  store i32 %112, i32* %__d0, align 4, !tbaa !5
  %113 = ptrtoint i64* %asmresult220 to i64
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %__d1, align 4, !tbaa !5
  %115 = bitcast i32* %__d1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %__d0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  br label %do.cond.221

do.cond.221:                                      ; preds = %do.body.216
  br label %do.end.222

do.end.222:                                       ; preds = %do.cond.221
  store i32 0, i32* %idx, align 4, !tbaa !5
  br label %for.cond.223

for.cond.223:                                     ; preds = %for.inc.263, %do.end.222
  %117 = load i32, i32* %idx, align 4, !tbaa !5
  %118 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp224 = icmp slt i32 %117, %118
  br i1 %cmp224, label %for.body.226, label %for.end.265

for.body.226:                                     ; preds = %for.cond.223
  %119 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom227 = sext i32 %119 to i64
  %arrayidx228 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom227
  %d_socket229 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx228, i32 0, i32 0
  %120 = load i32, i32* %d_socket229, align 4, !tbaa !18
  %cmp230 = icmp sge i32 %120, 0
  br i1 %cmp230, label %if.then.232, label %if.end.262

if.then.232:                                      ; preds = %for.body.226
  %121 = load i32, i32* %setproc, align 4, !tbaa !5
  %tobool233 = icmp ne i32 %121, 0
  br i1 %tobool233, label %if.end.242, label %land.lhs.true.234

land.lhs.true.234:                                ; preds = %if.then.232
  %122 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom235 = sext i32 %122 to i64
  %arrayidx236 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom235
  %d_flags237 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx236, i32 0, i32 9
  %arrayidx238 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags237, i32 0, i64 0
  %123 = load i32, i32* %arrayidx238, align 4, !tbaa !5
  %and239 = and i32 %123, 2
  %tobool240 = icmp ne i32 %and239, 0
  br i1 %tobool240, label %if.end.242, label %if.then.241

if.then.241:                                      ; preds = %land.lhs.true.234
  %124 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0))
  store i32 1, i32* %setproc, align 4, !tbaa !5
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.241, %land.lhs.true.234, %if.then.232
  %125 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom243 = sext i32 %125 to i64
  %arrayidx244 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom243
  %d_socket245 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx244, i32 0, i32 0
  %126 = load i32, i32* %d_socket245, align 4, !tbaa !18
  %127 = load i32, i32* %highest, align 4, !tbaa !5
  %cmp246 = icmp sgt i32 %126, %127
  br i1 %cmp246, label %if.then.248, label %if.end.252

if.then.248:                                      ; preds = %if.end.242
  %128 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom249 = sext i32 %128 to i64
  %arrayidx250 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom249
  %d_socket251 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx250, i32 0, i32 0
  %129 = load i32, i32* %d_socket251, align 4, !tbaa !18
  store i32 %129, i32* %highest, align 4, !tbaa !5
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.248, %if.end.242
  %130 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom253 = sext i32 %130 to i64
  %arrayidx254 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom253
  %d_socket255 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx254, i32 0, i32 0
  %131 = load i32, i32* %d_socket255, align 4, !tbaa !18
  %rem = srem i32 %131, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %132 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom256 = sext i32 %132 to i64
  %arrayidx257 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom256
  %d_socket258 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx257, i32 0, i32 0
  %133 = load i32, i32* %d_socket258, align 4, !tbaa !18
  %div = sdiv i32 %133, 64
  %idxprom259 = sext i32 %div to i64
  %__fds_bits260 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits260, i32 0, i64 %idxprom259
  %134 = load i64, i64* %arrayidx261, align 8, !tbaa !19
  %or = or i64 %134, %shl
  store i64 %or, i64* %arrayidx261, align 8, !tbaa !19
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.252, %for.body.226
  br label %for.inc.263

for.inc.263:                                      ; preds = %if.end.262
  %135 = load i32, i32* %idx, align 4, !tbaa !5
  %inc264 = add nsw i32 %135, 1
  store i32 %inc264, i32* %idx, align 4, !tbaa !5
  br label %for.cond.223

for.end.265:                                      ; preds = %for.cond.223
  %136 = load i32, i32* @ControlSocket, align 4, !tbaa !5
  %cmp266 = icmp sge i32 %136, 0
  br i1 %cmp266, label %if.then.268, label %if.end.281

if.then.268:                                      ; preds = %for.end.265
  %137 = load i32, i32* @ControlSocket, align 4, !tbaa !5
  %138 = load i32, i32* %highest, align 4, !tbaa !5
  %cmp269 = icmp sgt i32 %137, %138
  br i1 %cmp269, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %if.then.268
  %139 = load i32, i32* @ControlSocket, align 4, !tbaa !5
  store i32 %139, i32* %highest, align 4, !tbaa !5
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.271, %if.then.268
  %140 = load i32, i32* @ControlSocket, align 4, !tbaa !5
  %rem273 = srem i32 %140, 64
  %sh_prom274 = zext i32 %rem273 to i64
  %shl275 = shl i64 1, %sh_prom274
  %141 = load i32, i32* @ControlSocket, align 4, !tbaa !5
  %div276 = sdiv i32 %141, 64
  %idxprom277 = sext i32 %div276 to i64
  %__fds_bits278 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i32 0, i32 0
  %arrayidx279 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits278, i32 0, i64 %idxprom277
  %142 = load i64, i64* %arrayidx279, align 8, !tbaa !19
  %or280 = or i64 %142, %shl275
  store i64 %or280, i64* %arrayidx279, align 8, !tbaa !19
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.272, %for.end.265
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  store i64 5, i64* %tv_sec, align 8, !tbaa !21
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 1
  store i64 0, i64* %tv_usec, align 8, !tbaa !23
  %143 = load i32, i32* %highest, align 4, !tbaa !5
  %add282 = add nsw i32 %143, 1
  %call283 = call i32 @select(i32 %add282, %struct.fd_set* %readfds, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %timeout)
  store i32 %call283, i32* %t, align 4, !tbaa !5
  br label %do.body.284

do.body.284:                                      ; preds = %if.end.281
  %144 = load volatile i8*, i8** @ShutdownRequest, align 8, !tbaa !1
  %cmp285 = icmp ne i8* %144, null
  br i1 %cmp285, label %if.then.287, label %if.else.288

if.then.287:                                      ; preds = %do.body.284
  call void @shutdown_daemon()
  br label %if.end.297

if.else.288:                                      ; preds = %do.body.284
  %145 = load volatile i8*, i8** @RestartRequest, align 8, !tbaa !1
  %cmp289 = icmp ne i8* %145, null
  br i1 %cmp289, label %if.then.291, label %if.else.292

if.then.291:                                      ; preds = %if.else.288
  call void @restart_daemon()
  br label %if.end.296

if.else.292:                                      ; preds = %if.else.288
  %146 = load volatile i32, i32* @RestartWorkGroup, align 4, !tbaa !5
  %tobool293 = icmp ne i32 %146, 0
  br i1 %tobool293, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %if.else.292
  call void @restart_marked_work_groups()
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.294, %if.else.292
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %if.then.291
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.then.287
  br label %do.cond.298

do.cond.298:                                      ; preds = %if.end.297
  br label %do.end.299

do.end.299:                                       ; preds = %do.cond.298
  store i32 -1, i32* %curdaemon, align 4, !tbaa !5
  %call300 = call i32 @doqueuerun()
  %tobool301 = icmp ne i32 %call300, 0
  br i1 %tobool301, label %if.then.302, label %if.end.304

if.then.302:                                      ; preds = %do.end.299
  %call303 = call i32 @runqueue(i32 1, i32 0, i32 0, i32 0)
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.302, %do.end.299
  %147 = load i32, i32* %t, align 4, !tbaa !5
  %cmp305 = icmp sle i32 %147, 0
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %if.end.304
  store i32 1, i32* %timedout, align 4, !tbaa !5
  store i32 23, i32* %cleanup.dest.slot
  br label %cleanup

if.end.308:                                       ; preds = %if.end.304
  store i32 0, i32* %control, align 4, !tbaa !5
  %call309 = call i32* @__errno_location() #9
  store i32 0, i32* %call309, align 4, !tbaa !5
  %148 = load i32, i32* %olddaemon, align 4, !tbaa !5
  %add310 = add nsw i32 %148, 1
  store i32 %add310, i32* %idx, align 4, !tbaa !5
  %149 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp311 = icmp sge i32 %add310, %149
  br i1 %cmp311, label %if.then.313, label %if.end.314

if.then.313:                                      ; preds = %if.end.308
  store i32 0, i32* %idx, align 4, !tbaa !5
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.313, %if.end.308
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.315

for.cond.315:                                     ; preds = %for.inc.373, %if.end.314
  %150 = load i32, i32* %i, align 4, !tbaa !5
  %151 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp316 = icmp slt i32 %150, %151
  br i1 %cmp316, label %for.body.318, label %for.end.375

for.body.318:                                     ; preds = %for.cond.315
  %152 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom319 = sext i32 %152 to i64
  %arrayidx320 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom319
  %d_socket321 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx320, i32 0, i32 0
  %153 = load i32, i32* %d_socket321, align 4, !tbaa !18
  %cmp322 = icmp sge i32 %153, 0
  br i1 %cmp322, label %land.lhs.true.324, label %if.end.367

land.lhs.true.324:                                ; preds = %for.body.318
  %154 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom325 = sext i32 %154 to i64
  %arrayidx326 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom325
  %d_socket327 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx326, i32 0, i32 0
  %155 = load i32, i32* %d_socket327, align 4, !tbaa !18
  %div328 = sdiv i32 %155, 64
  %idxprom329 = sext i32 %div328 to i64
  %__fds_bits330 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i32 0, i32 0
  %arrayidx331 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits330, i32 0, i64 %idxprom329
  %156 = load i64, i64* %arrayidx331, align 8, !tbaa !19
  %157 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom332 = sext i32 %157 to i64
  %arrayidx333 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom332
  %d_socket334 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx333, i32 0, i32 0
  %158 = load i32, i32* %d_socket334, align 4, !tbaa !18
  %rem335 = srem i32 %158, 64
  %sh_prom336 = zext i32 %rem335 to i64
  %shl337 = shl i64 1, %sh_prom336
  %and338 = and i64 %156, %shl337
  %cmp339 = icmp ne i64 %and338, 0
  br i1 %cmp339, label %if.then.341, label %if.end.367

if.then.341:                                      ; preds = %land.lhs.true.324
  %159 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom342 = sext i32 %159 to i64
  %arrayidx343 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom342
  %d_socksize344 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx343, i32 0, i32 8
  %160 = load i32, i32* %d_socksize344, align 4, !tbaa !17
  store i32 %160, i32* %lotherend, align 4, !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* bitcast (%union.bigsockaddr* @RealHostAddr to i8*), i8 0, i64 112, i32 4, i1 false)
  %161 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom345 = sext i32 %161 to i64
  %arrayidx346 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom345
  %d_socket347 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx346, i32 0, i32 0
  %162 = load i32, i32* %d_socket347, align 4, !tbaa !18
  %call348 = call i32 @accept(i32 %162, %struct.sockaddr* bitcast (%union.bigsockaddr* @RealHostAddr to %struct.sockaddr*), i32* %lotherend)
  store i32 %call348, i32* %t, align 4, !tbaa !5
  %163 = load i32, i32* %t, align 4, !tbaa !5
  %cmp349 = icmp sge i32 %163, 0
  br i1 %cmp349, label %land.lhs.true.351, label %if.end.366

land.lhs.true.351:                                ; preds = %if.then.341
  %164 = load i32, i32* %lotherend, align 4, !tbaa !5
  %cmp352 = icmp eq i32 %164, 0
  br i1 %cmp352, label %if.then.363, label %lor.lhs.false.354

lor.lhs.false.354:                                ; preds = %land.lhs.true.351
  %165 = load i16, i16* getelementptr inbounds (%struct.sockaddr, %struct.sockaddr* bitcast (%union.bigsockaddr* @RealHostAddr to %struct.sockaddr*), i32 0, i32 0), align 2, !tbaa !24
  %conv355 = zext i16 %165 to i32
  %166 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom356 = sext i32 %166 to i64
  %arrayidx357 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom356
  %d_addr358 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx357, i32 0, i32 1
  %sa359 = bitcast %union.bigsockaddr* %d_addr358 to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa359, i32 0, i32 0
  %167 = load i16, i16* %sa_family, align 2, !tbaa !24
  %conv360 = zext i16 %167 to i32
  %cmp361 = icmp ne i32 %conv355, %conv360
  br i1 %cmp361, label %if.then.363, label %if.end.366

if.then.363:                                      ; preds = %lor.lhs.false.354, %land.lhs.true.351
  %168 = load i32, i32* %t, align 4, !tbaa !5
  %call364 = call i32 @close(i32 %168)
  store i32 -1, i32* %t, align 4, !tbaa !5
  %call365 = call i32* @__errno_location() #9
  store i32 22, i32* %call365, align 4, !tbaa !5
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.363, %lor.lhs.false.354, %if.then.341
  %169 = load i32, i32* %idx, align 4, !tbaa !5
  store i32 %169, i32* %curdaemon, align 4, !tbaa !5
  store i32 %169, i32* %olddaemon, align 4, !tbaa !5
  br label %for.end.375

if.end.367:                                       ; preds = %land.lhs.true.324, %for.body.318
  %170 = load i32, i32* %idx, align 4, !tbaa !5
  %inc368 = add nsw i32 %170, 1
  store i32 %inc368, i32* %idx, align 4, !tbaa !5
  %171 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp369 = icmp sge i32 %inc368, %171
  br i1 %cmp369, label %if.then.371, label %if.end.372

if.then.371:                                      ; preds = %if.end.367
  store i32 0, i32* %idx, align 4, !tbaa !5
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.371, %if.end.367
  br label %for.inc.373

for.inc.373:                                      ; preds = %if.end.372
  %172 = load i32, i32* %i, align 4, !tbaa !5
  %inc374 = add nsw i32 %172, 1
  store i32 %inc374, i32* %i, align 4, !tbaa !5
  br label %for.cond.315

for.end.375:                                      ; preds = %if.end.366, %for.cond.315
  %173 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %cmp376 = icmp eq i32 %173, -1
  br i1 %cmp376, label %land.lhs.true.378, label %if.end.412

land.lhs.true.378:                                ; preds = %for.end.375
  %174 = load i32, i32* @ControlSocket, align 4, !tbaa !5
  %cmp379 = icmp sge i32 %174, 0
  br i1 %cmp379, label %land.lhs.true.381, label %if.end.412

land.lhs.true.381:                                ; preds = %land.lhs.true.378
  %175 = load i32, i32* @ControlSocket, align 4, !tbaa !5
  %div382 = sdiv i32 %175, 64
  %idxprom383 = sext i32 %div382 to i64
  %__fds_bits384 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %readfds, i32 0, i32 0
  %arrayidx385 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits384, i32 0, i64 %idxprom383
  %176 = load i64, i64* %arrayidx385, align 8, !tbaa !19
  %177 = load i32, i32* @ControlSocket, align 4, !tbaa !5
  %rem386 = srem i32 %177, 64
  %sh_prom387 = zext i32 %rem386 to i64
  %shl388 = shl i64 1, %sh_prom387
  %and389 = and i64 %176, %shl388
  %cmp390 = icmp ne i64 %and389, 0
  br i1 %cmp390, label %if.then.392, label %if.end.412

if.then.392:                                      ; preds = %land.lhs.true.381
  %178 = bitcast %struct.sockaddr_un* %sa_un to i8*
  call void @llvm.lifetime.start(i64 110, i8* %178) #1
  store i32 110, i32* %lotherend, align 4, !tbaa !5
  %179 = bitcast %struct.sockaddr_un* %sa_un to i8*
  call void @llvm.memset.p0i8.i64(i8* %179, i8 0, i64 110, i32 2, i1 false)
  %180 = load i32, i32* @ControlSocket, align 4, !tbaa !5
  %181 = bitcast %struct.sockaddr_un* %sa_un to %struct.sockaddr*
  %call394 = call i32 @accept(i32 %180, %struct.sockaddr* %181, i32* %lotherend)
  store i32 %call394, i32* %t, align 4, !tbaa !5
  %182 = load i32, i32* %t, align 4, !tbaa !5
  %cmp395 = icmp sge i32 %182, 0
  br i1 %cmp395, label %land.lhs.true.397, label %if.end.407

land.lhs.true.397:                                ; preds = %if.then.392
  %183 = load i32, i32* %lotherend, align 4, !tbaa !5
  %cmp398 = icmp eq i32 %183, 0
  br i1 %cmp398, label %if.then.404, label %lor.lhs.false.400

lor.lhs.false.400:                                ; preds = %land.lhs.true.397
  %sun_family = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %sa_un, i32 0, i32 0
  %184 = load i16, i16* %sun_family, align 2, !tbaa !26
  %conv401 = zext i16 %184 to i32
  %cmp402 = icmp ne i32 %conv401, 1
  br i1 %cmp402, label %if.then.404, label %if.end.407

if.then.404:                                      ; preds = %lor.lhs.false.400, %land.lhs.true.397
  %185 = load i32, i32* %t, align 4, !tbaa !5
  %call405 = call i32 @close(i32 %185)
  store i32 -1, i32* %t, align 4, !tbaa !5
  %call406 = call i32* @__errno_location() #9
  store i32 22, i32* %call406, align 4, !tbaa !5
  br label %if.end.407

if.end.407:                                       ; preds = %if.then.404, %lor.lhs.false.400, %if.then.392
  %186 = load i32, i32* %t, align 4, !tbaa !5
  %cmp408 = icmp sge i32 %186, 0
  br i1 %cmp408, label %if.then.410, label %if.end.411

if.then.410:                                      ; preds = %if.end.407
  store i32 1, i32* %control, align 4, !tbaa !5
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.410, %if.end.407
  %187 = bitcast %struct.sockaddr_un* %sa_un to i8*
  call void @llvm.lifetime.end(i64 110, i8* %187) #1
  br label %if.end.412

if.end.412:                                       ; preds = %if.end.411, %land.lhs.true.381, %land.lhs.true.378, %for.end.375
  %188 = load i32, i32* %t, align 4, !tbaa !5
  %cmp413 = icmp sge i32 %188, 0
  br i1 %cmp413, label %if.then.419, label %lor.lhs.false.415

lor.lhs.false.415:                                ; preds = %if.end.412
  %call416 = call i32* @__errno_location() #9
  %189 = load i32, i32* %call416, align 4, !tbaa !5
  %cmp417 = icmp ne i32 %189, 4
  br i1 %cmp417, label %if.then.419, label %if.end.420

if.then.419:                                      ; preds = %lor.lhs.false.415, %if.end.412
  store i32 23, i32* %cleanup.dest.slot
  br label %cleanup

if.end.420:                                       ; preds = %lor.lhs.false.415
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.420, %if.then.419, %if.then.307
  %190 = bitcast %struct.timeval* %timeout to i8*
  call void @llvm.lifetime.end(i64 16, i8* %190) #1
  %191 = bitcast %struct.fd_set* %readfds to i8*
  call void @llvm.lifetime.end(i64 128, i8* %191) #1
  %192 = bitcast i32* %highest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %setproc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 23, label %for.end.424
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond.195

for.end.424:                                      ; preds = %cleanup
  %194 = load i32, i32* %timedout, align 4, !tbaa !5
  %tobool425 = icmp ne i32 %194, 0
  br i1 %tobool425, label %if.then.426, label %if.end.427

if.then.426:                                      ; preds = %for.end.424
  store i32 0, i32* %timedout, align 4, !tbaa !5
  store i32 15, i32* %cleanup.dest.slot
  br label %cleanup.783

if.end.427:                                       ; preds = %for.end.424
  %call428 = call i32* @__errno_location() #9
  %195 = load i32, i32* %call428, align 4, !tbaa !5
  store i32 %195, i32* %save_errno, align 4, !tbaa !5
  %call429 = call i32 @sm_blocksignal(i32 14)
  %196 = load i32, i32* %t, align 4, !tbaa !5
  %cmp430 = icmp slt i32 %196, 0
  br i1 %cmp430, label %if.then.432, label %if.end.458

if.then.432:                                      ; preds = %if.end.427
  %197 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call433 = call i32* @__errno_location() #9
  store i32 %197, i32* %call433, align 4, !tbaa !5
  %198 = load i32, i32* %save_errno, align 4, !tbaa !5
  %cmp434 = icmp eq i32 %198, 4
  br i1 %cmp434, label %if.then.445, label %lor.lhs.false.436

lor.lhs.false.436:                                ; preds = %if.then.432
  %199 = load i32, i32* %save_errno, align 4, !tbaa !5
  %cmp437 = icmp eq i32 %199, 11
  br i1 %cmp437, label %if.then.445, label %lor.lhs.false.439

lor.lhs.false.439:                                ; preds = %lor.lhs.false.436
  %200 = load i32, i32* %save_errno, align 4, !tbaa !5
  %cmp440 = icmp eq i32 %200, 103
  br i1 %cmp440, label %if.then.445, label %lor.lhs.false.442

lor.lhs.false.442:                                ; preds = %lor.lhs.false.439
  %201 = load i32, i32* %save_errno, align 4, !tbaa !5
  %cmp443 = icmp eq i32 %201, 11
  br i1 %cmp443, label %if.then.445, label %if.end.446

if.then.445:                                      ; preds = %lor.lhs.false.442, %lor.lhs.false.439, %lor.lhs.false.436, %if.then.432
  store i32 15, i32* %cleanup.dest.slot
  br label %cleanup.783

if.end.446:                                       ; preds = %lor.lhs.false.442
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0))
  %202 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %cmp447 = icmp sge i32 %202, 0
  br i1 %cmp447, label %if.then.449, label %if.end.457

if.then.449:                                      ; preds = %if.end.446
  %203 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom450 = sext i32 %203 to i64
  %arrayidx451 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom450
  %d_socket452 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx451, i32 0, i32 0
  %204 = load i32, i32* %d_socket452, align 4, !tbaa !18
  %call453 = call i32 @close(i32 %204)
  %205 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom454 = sext i32 %205 to i64
  %arrayidx455 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom454
  %d_socket456 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx455, i32 0, i32 0
  store i32 -1, i32* %d_socket456, align 4, !tbaa !18
  br label %if.end.457

if.end.457:                                       ; preds = %if.then.449, %if.end.446
  store i32 15, i32* %cleanup.dest.slot
  br label %cleanup.783

if.end.458:                                       ; preds = %if.end.427
  %206 = load i32, i32* %control, align 4, !tbaa !5
  %tobool459 = icmp ne i32 %206, 0
  br i1 %tobool459, label %if.end.488, label %if.then.460

if.then.460:                                      ; preds = %if.end.458
  %207 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom461 = sext i32 %207 to i64
  %arrayidx462 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom461
  %d_addr463 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx462, i32 0, i32 1
  %sa464 = bitcast %union.bigsockaddr* %d_addr463 to %struct.sockaddr*
  %sa_family465 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa464, i32 0, i32 0
  %208 = load i16, i16* %sa_family465, align 2, !tbaa !24
  %conv466 = zext i16 %208 to i32
  switch i32 %conv466, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.468
    i32 2, label %sw.bb.470
  ]

sw.bb:                                            ; preds = %if.then.460
  %call467 = call i32 @macid_parse(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8** null)
  %209 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call467, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 518, i32 %209)
  br label %sw.epilog

sw.bb.468:                                        ; preds = %if.then.460
  %call469 = call i32 @macid_parse(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8** null)
  %210 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call469, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 523, i32 %210)
  br label %sw.epilog

sw.bb.470:                                        ; preds = %if.then.460
  %call471 = call i32 @macid_parse(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8** null)
  %211 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call471, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 529, i32 %211)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.460, %sw.bb.470, %sw.bb.468, %sw.bb
  %call472 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8** null)
  %212 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom473 = sext i32 %212 to i64
  %arrayidx474 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom473
  %d_name475 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx474, i32 0, i32 11
  %213 = load i8*, i8** %d_name475, align 8, !tbaa !14
  %214 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call472, i8* %213, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 559, i32 %214)
  %215 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom476 = sext i32 %215 to i64
  %arrayidx477 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom476
  %d_mflags = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx477, i32 0, i32 10
  %216 = load i8*, i8** %d_mflags, align 8, !tbaa !28
  %cmp478 = icmp ne i8* %216, null
  br i1 %cmp478, label %if.then.480, label %if.else.485

if.then.480:                                      ; preds = %sw.epilog
  %call481 = call i32 @macid_parse(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8** null)
  %217 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom482 = sext i32 %217 to i64
  %arrayidx483 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom482
  %d_mflags484 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx483, i32 0, i32 10
  %218 = load i8*, i8** %d_mflags484, align 8, !tbaa !28
  %219 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call481, i8* %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 563, i32 %219)
  br label %if.end.487

if.else.485:                                      ; preds = %sw.epilog
  %call486 = call i32 @macid_parse(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8** null)
  %220 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call486, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 566, i32 %220)
  br label %if.end.487

if.end.487:                                       ; preds = %if.else.485, %if.then.480
  br label %if.end.488

if.end.488:                                       ; preds = %if.end.487, %if.end.458
  %call489 = call i32 @connection_rate_check(%union.bigsockaddr* @RealHostAddr, %struct.envelope* null)
  %221 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 15), align 1, !tbaa !13
  %conv490 = zext i8 %221 to i32
  %cmp491 = icmp sge i32 %conv490, 2
  br i1 %cmp491, label %land.lhs.true.493, label %if.end.496

land.lhs.true.493:                                ; preds = %if.end.488
  %222 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool494 = icmp ne i32 %222, 0
  br i1 %tobool494, label %if.end.496, label %if.then.495

if.then.495:                                      ; preds = %land.lhs.true.493
  %223 = load i32, i32* %t, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0), i32 %223)
  br label %if.end.496

if.end.496:                                       ; preds = %if.then.495, %land.lhs.true.493, %if.end.488
  %call497 = call i64 @random() #1
  %224 = load i8*, i8** @FallbackMX, align 8, !tbaa !1
  %cmp498 = icmp ne i8* %224, null
  br i1 %cmp498, label %if.then.500, label %if.end.502

if.then.500:                                      ; preds = %if.end.496
  %225 = load i8*, i8** @FallbackMX, align 8, !tbaa !1
  %call501 = call i32 @getfallbackmxrr(i8* %225)
  br label %if.end.502

if.end.502:                                       ; preds = %if.then.500, %if.end.496
  %226 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 93), align 1, !tbaa !13
  %conv503 = zext i8 %226 to i32
  %cmp504 = icmp sge i32 %conv503, 100
  br i1 %cmp504, label %land.lhs.true.506, label %if.else.511

land.lhs.true.506:                                ; preds = %if.end.502
  %227 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool507 = icmp ne i32 %227, 0
  br i1 %tobool507, label %if.else.511, label %if.then.508

if.then.508:                                      ; preds = %land.lhs.true.506
  store i32 0, i32* %pid, align 4, !tbaa !5
  %arrayidx509 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 1
  store i32 -1, i32* %arrayidx509, align 4, !tbaa !5
  %arrayidx510 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 0
  store i32 -1, i32* %arrayidx510, align 4, !tbaa !5
  br label %if.end.538

if.else.511:                                      ; preds = %land.lhs.true.506, %if.end.502
  %arraydecay512 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i32 0
  %call513 = call i32 @pipe(i32* %arraydecay512) #1
  %cmp514 = icmp slt i32 %call513, 0
  br i1 %cmp514, label %if.then.516, label %if.end.519

if.then.516:                                      ; preds = %if.else.511
  %arrayidx517 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 1
  store i32 -1, i32* %arrayidx517, align 4, !tbaa !5
  %arrayidx518 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 0
  store i32 -1, i32* %arrayidx518, align 4, !tbaa !5
  br label %if.end.519

if.end.519:                                       ; preds = %if.then.516, %if.else.511
  %call520 = call i32 @sm_blocksignal(i32 17)
  %call521 = call i32 @fork() #1
  store i32 %call521, i32* %pid, align 4, !tbaa !5
  %228 = load i32, i32* %pid, align 4, !tbaa !5
  %cmp522 = icmp slt i32 %228, 0
  br i1 %cmp522, label %if.then.524, label %if.end.537

if.then.524:                                      ; preds = %if.end.519
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0))
  %arrayidx525 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 0
  %229 = load i32, i32* %arrayidx525, align 4, !tbaa !5
  %cmp526 = icmp ne i32 %229, -1
  br i1 %cmp526, label %if.then.528, label %if.end.533

if.then.528:                                      ; preds = %if.then.524
  %arrayidx529 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 0
  %230 = load i32, i32* %arrayidx529, align 4, !tbaa !5
  %call530 = call i32 @close(i32 %230)
  %arrayidx531 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 1
  %231 = load i32, i32* %arrayidx531, align 4, !tbaa !5
  %call532 = call i32 @close(i32 %231)
  br label %if.end.533

if.end.533:                                       ; preds = %if.then.528, %if.then.524
  %call534 = call i32 @sm_releasesignal(i32 17)
  %call535 = call i32 @sleep(i32 10)
  %232 = load i32, i32* %t, align 4, !tbaa !5
  %call536 = call i32 @close(i32 %232)
  store i32 15, i32* %cleanup.dest.slot
  br label %cleanup.783

if.end.537:                                       ; preds = %if.end.519
  br label %if.end.538

if.end.538:                                       ; preds = %if.end.537, %if.then.508
  %233 = load i32, i32* %pid, align 4, !tbaa !5
  %cmp539 = icmp eq i32 %233, 0
  br i1 %cmp539, label %if.then.541, label %if.end.753

if.then.541:                                      ; preds = %if.end.538
  %234 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %234) #1
  %235 = bitcast %struct.sm_file** %inchannel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %235) #1
  %236 = bitcast %struct.sm_file** %outchannel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %236) #1
  store %struct.sm_file* null, %struct.sm_file** %outchannel, align 8, !tbaa !1
  store volatile i8* null, i8** @RestartRequest, align 8, !tbaa !1
  store volatile i32 0, i32* @RestartWorkGroup, align 4, !tbaa !5
  store volatile i8* null, i8** @ShutdownRequest, align 8, !tbaa !1
  store volatile i32 0, i32* @PendingSignal, align 4, !tbaa !5
  %call545 = call i32 @getpid() #1
  store i32 %call545, i32* @CurrentPid, align 4, !tbaa !5
  call void @close_sendmail_pid()
  %call546 = call i32 @sm_releasesignal(i32 14)
  %call547 = call i32 @sm_releasesignal(i32 17)
  %call548 = call void (i32)* @sm_signal(i32 17, void (i32)* null)
  %call549 = call void (i32)* @sm_signal(i32 1, void (i32)* null)
  %call550 = call void (i32)* @sm_signal(i32 15, void (i32)* @intsig)
  call void @sm_exc_newthread(void (%struct.sm_exc*)* @fatal_error)
  %237 = load i32, i32* %control, align 4, !tbaa !5
  %tobool551 = icmp ne i32 %237, 0
  br i1 %tobool551, label %if.end.571, label %if.then.552

if.then.552:                                      ; preds = %if.then.541
  %call553 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i8** null)
  %238 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom554 = sext i32 %238 to i64
  %arrayidx555 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom554
  %d_addr556 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx555, i32 0, i32 1
  %call557 = call i8* @anynet_ntoa(%union.bigsockaddr* %d_addr556)
  %239 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 1, i32 %call553, i8* %call557, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 689, i32 %239)
  %arraydecay558 = getelementptr inbounds [2048 x i8], [2048 x i8]* %status, i32 0, i32 0
  %240 = bitcast i16* %__v560 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %240) #1
  %241 = bitcast i16* %__x562 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %241) #1
  %242 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom563 = sext i32 %242 to i64
  %arrayidx564 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom563
  %d_port565 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx564, i32 0, i32 2
  %243 = load i16, i16* %d_port565, align 2, !tbaa !7
  store i16 %243, i16* %__x562, align 2, !tbaa !15
  %244 = load i16, i16* %__x562, align 2, !tbaa !15
  %245 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %244) #9, !srcloc !29
  store i16 %245, i16* %__v560, align 2, !tbaa !15
  %246 = load i16, i16* %__v560, align 2, !tbaa !15
  store i16 %246, i16* %tmp566, !tbaa !15
  %247 = bitcast i16* %__x562 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %247) #1
  %248 = bitcast i16* %__v560 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %248) #1
  %249 = load i16, i16* %tmp566, !tbaa !15
  %conv567 = zext i16 %249 to i32
  %call568 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay558, i64 2048, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 %conv567)
  %call569 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8** null)
  %arraydecay570 = getelementptr inbounds [2048 x i8], [2048 x i8]* %status, i32 0, i32 0
  %250 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 1, i32 %call569, i8* %arraydecay570, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 693, i32 %250)
  br label %if.end.571

if.end.571:                                       ; preds = %if.then.552, %if.then.541
  store i32 0, i32* %idx, align 4, !tbaa !5
  br label %for.cond.572

for.cond.572:                                     ; preds = %for.inc.590, %if.end.571
  %251 = load i32, i32* %idx, align 4, !tbaa !5
  %252 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp573 = icmp slt i32 %251, %252
  br i1 %cmp573, label %for.body.575, label %for.end.592

for.body.575:                                     ; preds = %for.cond.572
  %253 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom576 = sext i32 %253 to i64
  %arrayidx577 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom576
  %d_socket578 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx577, i32 0, i32 0
  %254 = load i32, i32* %d_socket578, align 4, !tbaa !18
  %cmp579 = icmp sge i32 %254, 0
  br i1 %cmp579, label %if.then.581, label %if.end.586

if.then.581:                                      ; preds = %for.body.575
  %255 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom582 = sext i32 %255 to i64
  %arrayidx583 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom582
  %d_socket584 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx583, i32 0, i32 0
  %256 = load i32, i32* %d_socket584, align 4, !tbaa !18
  %call585 = call i32 @close(i32 %256)
  br label %if.end.586

if.end.586:                                       ; preds = %if.then.581, %for.body.575
  %257 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom587 = sext i32 %257 to i64
  %arrayidx588 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom587
  %d_socket589 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx588, i32 0, i32 0
  store i32 -1, i32* %d_socket589, align 4, !tbaa !18
  br label %for.inc.590

for.inc.590:                                      ; preds = %if.end.586
  %258 = load i32, i32* %idx, align 4, !tbaa !5
  %inc591 = add nsw i32 %258, 1
  store i32 %inc591, i32* %idx, align 4, !tbaa !5
  br label %for.cond.572

for.end.592:                                      ; preds = %for.cond.572
  call void @clrcontrol()
  %259 = load i32, i32* %control, align 4, !tbaa !5
  %tobool593 = icmp ne i32 %259, 0
  br i1 %tobool593, label %if.then.594, label %if.else.595

if.then.594:                                      ; preds = %for.end.592
  %260 = load i32, i32* @CurrentPid, align 4, !tbaa !5
  call void @proc_list_add(i32 %260, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i32 5, i32 0, i32 -1, %union.bigsockaddr* null)
  br label %if.end.643

if.else.595:                                      ; preds = %for.end.592
  call void @proc_list_clear()
  %call596 = call void (i32)* @sm_signal(i32 17, void (i32)* @reapchild)
  %261 = load i32, i32* @CurrentPid, align 4, !tbaa !5
  call void @proc_list_add(i32 %261, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i32 2, i32 0, i32 -1, %union.bigsockaddr* null)
  store i64 0, i64* @QueueIntvl, align 8, !tbaa !19
  %262 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom597 = sext i32 %262 to i64
  %arrayidx598 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom597
  %d_dm = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx598, i32 0, i32 12
  %263 = load i32, i32* %d_dm, align 4, !tbaa !30
  %cmp599 = icmp ne i32 %263, -1
  br i1 %cmp599, label %if.then.601, label %if.end.605

if.then.601:                                      ; preds = %if.else.595
  %264 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom602 = sext i32 %264 to i64
  %arrayidx603 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom602
  %d_dm604 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx603, i32 0, i32 12
  %265 = load i32, i32* %d_dm604, align 4, !tbaa !30
  %266 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @set_delivery_mode(i32 %265, %struct.envelope* %266)
  br label %if.end.605

if.end.605:                                       ; preds = %if.then.601, %if.else.595
  %267 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom606 = sext i32 %267 to i64
  %arrayidx607 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom606
  %d_refuseLA = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx607, i32 0, i32 13
  %268 = load i32, i32* %d_refuseLA, align 4, !tbaa !31
  %cmp608 = icmp ne i32 %268, -1
  br i1 %cmp608, label %if.then.610, label %if.end.614

if.then.610:                                      ; preds = %if.end.605
  %269 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom611 = sext i32 %269 to i64
  %arrayidx612 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom611
  %d_refuseLA613 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx612, i32 0, i32 13
  %270 = load i32, i32* %d_refuseLA613, align 4, !tbaa !31
  store i32 %270, i32* @RefuseLA, align 4, !tbaa !5
  br label %if.end.614

if.end.614:                                       ; preds = %if.then.610, %if.end.605
  %271 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom615 = sext i32 %271 to i64
  %arrayidx616 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom615
  %d_queueLA = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx616, i32 0, i32 14
  %272 = load i32, i32* %d_queueLA, align 4, !tbaa !32
  %cmp617 = icmp ne i32 %272, -1
  br i1 %cmp617, label %if.then.619, label %if.end.623

if.then.619:                                      ; preds = %if.end.614
  %273 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom620 = sext i32 %273 to i64
  %arrayidx621 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom620
  %d_queueLA622 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx621, i32 0, i32 14
  %274 = load i32, i32* %d_queueLA622, align 4, !tbaa !32
  store i32 %274, i32* @QueueLA, align 4, !tbaa !5
  br label %if.end.623

if.end.623:                                       ; preds = %if.then.619, %if.end.614
  %275 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom624 = sext i32 %275 to i64
  %arrayidx625 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom624
  %d_delayLA = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx625, i32 0, i32 15
  %276 = load i32, i32* %d_delayLA, align 4, !tbaa !33
  %cmp626 = icmp ne i32 %276, -1
  br i1 %cmp626, label %if.then.628, label %if.end.632

if.then.628:                                      ; preds = %if.end.623
  %277 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom629 = sext i32 %277 to i64
  %arrayidx630 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom629
  %d_delayLA631 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx630, i32 0, i32 15
  %278 = load i32, i32* %d_delayLA631, align 4, !tbaa !33
  store i32 %278, i32* @DelayLA, align 4, !tbaa !5
  br label %if.end.632

if.end.632:                                       ; preds = %if.then.628, %if.end.623
  %279 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom633 = sext i32 %279 to i64
  %arrayidx634 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom633
  %d_maxchildren = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx634, i32 0, i32 16
  %280 = load i32, i32* %d_maxchildren, align 4, !tbaa !34
  %cmp635 = icmp ne i32 %280, -1
  br i1 %cmp635, label %if.then.637, label %if.end.641

if.then.637:                                      ; preds = %if.end.632
  %281 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom638 = sext i32 %281 to i64
  %arrayidx639 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom638
  %d_maxchildren640 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx639, i32 0, i32 16
  %282 = load i32, i32* %d_maxchildren640, align 4, !tbaa !34
  store i32 %282, i32* @MaxChildren, align 4, !tbaa !5
  br label %if.end.641

if.end.641:                                       ; preds = %if.then.637, %if.end.632
  %283 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call642 = call i8* @anynet_ntoa(%union.bigsockaddr* @RealHostAddr)
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %283, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8* %call642)
  br label %if.end.643

if.end.643:                                       ; preds = %if.end.641, %if.then.594
  %arrayidx644 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 0
  %284 = load i32, i32* %arrayidx644, align 4, !tbaa !5
  %cmp645 = icmp ne i32 %284, -1
  br i1 %cmp645, label %if.then.647, label %if.end.660

if.then.647:                                      ; preds = %if.end.643
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %arrayidx649 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 1
  %285 = load i32, i32* %arrayidx649, align 4, !tbaa !5
  %call650 = call i32 @close(i32 %285)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.647
  %arrayidx651 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 0
  %286 = load i32, i32* %arrayidx651, align 4, !tbaa !5
  %call652 = call i64 @read(i32 %286, i8* %c, i64 1)
  %cmp653 = icmp slt i64 %call652, 0
  br i1 %cmp653, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call655 = call i32* @__errno_location() #9
  %287 = load i32, i32* %call655, align 4, !tbaa !5
  %cmp656 = icmp eq i32 %287, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %288 = phi i1 [ false, %while.cond ], [ %cmp656, %land.rhs ]
  br i1 %288, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %arrayidx658 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 0
  %289 = load i32, i32* %arrayidx658, align 4, !tbaa !5
  %call659 = call i32 @close(i32 %289)
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  br label %if.end.660

if.end.660:                                       ; preds = %while.end, %if.end.643
  %290 = load i32, i32* %control, align 4, !tbaa !5
  %tobool661 = icmp ne i32 %290, 0
  br i1 %tobool661, label %if.then.662, label %if.end.663

if.then.662:                                      ; preds = %if.end.660
  %291 = load i32, i32* %t, align 4, !tbaa !5
  %292 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @control_command(i32 %291, %struct.envelope* %292)
  call void @exit(i32 70) #10
  unreachable

if.end.663:                                       ; preds = %if.end.660
  %call664 = call i8* @hostnamebyanyaddr(%union.bigsockaddr* @RealHostAddr)
  store i8* %call664, i8** %p, align 8, !tbaa !1
  %293 = load i8*, i8** %p, align 8, !tbaa !1
  %call665 = call i64 @strlen(i8* %293) #11
  %cmp666 = icmp ugt i64 %call665, 256
  br i1 %cmp666, label %if.then.668, label %if.end.670

if.then.668:                                      ; preds = %if.end.663
  %294 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx669 = getelementptr inbounds i8, i8* %294, i64 256
  store i8 0, i8* %arrayidx669, align 1, !tbaa !13
  br label %if.end.670

if.end.670:                                       ; preds = %if.then.668, %if.end.663
  %295 = load i8*, i8** %p, align 8, !tbaa !1
  %call671 = call i8* @newstr(i8* %295)
  store i8* %call671, i8** @RealHostName, align 8, !tbaa !1
  %296 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %arrayidx672 = getelementptr inbounds i8, i8* %296, i64 0
  %297 = load i8, i8* %arrayidx672, align 1, !tbaa !13
  %conv673 = sext i8 %297 to i32
  %cmp674 = icmp eq i32 %conv673, 91
  br i1 %cmp674, label %if.then.676, label %if.else.681

if.then.676:                                      ; preds = %if.end.670
  %call677 = call i32 @macid_parse(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8** null)
  %call678 = call i32* @__h_errno_location() #9
  %298 = load i32, i32* %call678, align 4, !tbaa !5
  %cmp679 = icmp eq i32 %298, 2
  %cond = select i1 %cmp679, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)
  %299 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call677, i8* %cond, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 796, i32 %299)
  br label %if.end.683

if.else.681:                                      ; preds = %if.end.670
  %call682 = call i32 @macid_parse(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8** null)
  %300 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call682, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 801, i32 %300)
  br label %if.end.683

if.end.683:                                       ; preds = %if.else.681, %if.then.676
  %301 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %302 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %301, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0), i8* %302)
  %303 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @markstats(%struct.envelope* %303, %struct.address* null, i32 99)
  %304 = bitcast i32* %t to i8*
  %call684 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdiofd_def, i32 -2, i8* %304, i32 2, i8* null)
  store %struct.sm_file* %call684, %struct.sm_file** %inchannel, align 8, !tbaa !1
  %cmp685 = icmp eq %struct.sm_file* %call684, null
  br i1 %cmp685, label %if.then.695, label %lor.lhs.false.687

lor.lhs.false.687:                                ; preds = %if.end.683
  %305 = load i32, i32* %t, align 4, !tbaa !5
  %call688 = call i32 @dup(i32 %305) #1
  store i32 %call688, i32* %t, align 4, !tbaa !5
  %cmp689 = icmp slt i32 %call688, 0
  br i1 %cmp689, label %if.then.695, label %lor.lhs.false.691

lor.lhs.false.691:                                ; preds = %lor.lhs.false.687
  %306 = bitcast i32* %t to i8*
  %call692 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdiofd_def, i32 -2, i8* %306, i32 3, i8* null)
  store %struct.sm_file* %call692, %struct.sm_file** %outchannel, align 8, !tbaa !1
  %cmp693 = icmp eq %struct.sm_file* %call692, null
  br i1 %cmp693, label %if.then.695, label %if.end.696

if.then.695:                                      ; preds = %lor.lhs.false.691, %lor.lhs.false.687, %if.end.683
  %307 = load i32, i32* %t, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0), i32 %307)
  call void @finis(i32 0, i32 1, i32 0)
  br label %if.end.696

if.end.696:                                       ; preds = %if.then.695, %lor.lhs.false.691
  %308 = load %struct.sm_file*, %struct.sm_file** %inchannel, align 8, !tbaa !1
  %309 = load %struct.sm_file*, %struct.sm_file** %outchannel, align 8, !tbaa !1
  call void @sm_io_automode(%struct.sm_file* %308, %struct.sm_file* %309)
  %310 = load %struct.sm_file*, %struct.sm_file** %inchannel, align 8, !tbaa !1
  store %struct.sm_file* %310, %struct.sm_file** @InChannel, align 8, !tbaa !1
  %311 = load %struct.sm_file*, %struct.sm_file** %outchannel, align 8, !tbaa !1
  store %struct.sm_file* %311, %struct.sm_file** @OutChannel, align 8, !tbaa !1
  store i32 0, i32* @DisConnected, align 4, !tbaa !5
  %312 = load %struct.sm_file*, %struct.sm_file** @InChannel, align 8, !tbaa !1
  %call697 = call i32 @sm_io_getinfo(%struct.sm_file* %312, i32 3, i8* null)
  %sa698 = bitcast %union.bigsockaddr* %sa to %struct.sockaddr*
  %call699 = call i32 @getsockname(i32 %call697, %struct.sockaddr* %sa698, i32* %len) #1
  %cmp700 = icmp eq i32 %call699, 0
  br i1 %cmp700, label %if.then.702, label %if.else.738

if.then.702:                                      ; preds = %if.end.696
  %call703 = call i8* @hostnamebyanyaddr(%union.bigsockaddr* %sa)
  store i8* %call703, i8** %p, align 8, !tbaa !1
  %313 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 15), align 1, !tbaa !13
  %conv704 = zext i8 %313 to i32
  %cmp705 = icmp sge i32 %conv704, 9
  br i1 %cmp705, label %land.lhs.true.707, label %if.end.710

land.lhs.true.707:                                ; preds = %if.then.702
  %314 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool708 = icmp ne i32 %314, 0
  br i1 %tobool708, label %if.end.710, label %if.then.709

if.then.709:                                      ; preds = %land.lhs.true.707
  %315 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i8* %315)
  br label %if.end.710

if.end.710:                                       ; preds = %if.then.709, %land.lhs.true.707, %if.then.702
  %call711 = call i32 @macid_parse(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8** null)
  %316 = load i8*, i8** %p, align 8, !tbaa !1
  %317 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 1, i32 %call711, i8* %316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 855, i32 %317)
  %call712 = call i32 @isloopback(%union.bigsockaddr* byval align 8 %sa)
  %tobool713 = icmp ne i32 %call712, 0
  br i1 %tobool713, label %if.else.734, label %if.then.714

if.then.714:                                      ; preds = %if.end.710
  %318 = bitcast i8** %addr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %318) #1
  %319 = bitcast [5 x i8]* %family to i8*
  call void @llvm.lifetime.start(i64 5, i8* %319) #1
  %call717 = call i8* @anynet_ntoa(%union.bigsockaddr* %sa)
  store i8* %call717, i8** %addr, align 8, !tbaa !1
  %arraydecay718 = getelementptr inbounds [5 x i8], [5 x i8]* %family, i32 0, i32 0
  %sa719 = bitcast %union.bigsockaddr* %sa to %struct.sockaddr*
  %sa_family720 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa719, i32 0, i32 0
  %320 = load i16, i16* %sa_family720, align 2, !tbaa !24
  %conv721 = zext i16 %320 to i32
  %call722 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay718, i64 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 %conv721)
  %call723 = call i32 @macid_parse(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8** null)
  %321 = load i8*, i8** %addr, align 8, !tbaa !1
  %322 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 1, i32 %call723, i8* %321, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 873, i32 %322)
  %call724 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8** null)
  %arraydecay725 = getelementptr inbounds [5 x i8], [5 x i8]* %family, i32 0, i32 0
  %323 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 1, i32 %call724, i8* %arraydecay725, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 876, i32 %323)
  %324 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 15), align 1, !tbaa !13
  %conv726 = zext i8 %324 to i32
  %cmp727 = icmp sge i32 %conv726, 7
  br i1 %cmp727, label %land.lhs.true.729, label %if.end.733

land.lhs.true.729:                                ; preds = %if.then.714
  %325 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool730 = icmp ne i32 %325, 0
  br i1 %tobool730, label %if.end.733, label %if.then.731

if.then.731:                                      ; preds = %land.lhs.true.729
  %326 = load i8*, i8** %addr, align 8, !tbaa !1
  %arraydecay732 = getelementptr inbounds [5 x i8], [5 x i8]* %family, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.37, i32 0, i32 0), i8* %326, i8* %arraydecay732)
  br label %if.end.733

if.end.733:                                       ; preds = %if.then.731, %land.lhs.true.729, %if.then.714
  %327 = bitcast [5 x i8]* %family to i8*
  call void @llvm.lifetime.end(i64 5, i8* %327) #1
  %328 = bitcast i8** %addr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %328) #1
  br label %if.end.737

if.else.734:                                      ; preds = %if.end.710
  %call735 = call i32 @macid_parse(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8** null)
  %329 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call735, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 885, i32 %329)
  %call736 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8** null)
  %330 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call736, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 888, i32 %330)
  br label %if.end.737

if.end.737:                                       ; preds = %if.else.734, %if.end.733
  br label %if.end.749

if.else.738:                                      ; preds = %if.end.696
  %331 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 15), align 1, !tbaa !13
  %conv739 = zext i8 %331 to i32
  %cmp740 = icmp sge i32 %conv739, 7
  br i1 %cmp740, label %land.lhs.true.742, label %if.end.745

land.lhs.true.742:                                ; preds = %if.else.738
  %332 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool743 = icmp ne i32 %332, 0
  br i1 %tobool743, label %if.end.745, label %if.then.744

if.then.744:                                      ; preds = %land.lhs.true.742
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.745

if.end.745:                                       ; preds = %if.then.744, %land.lhs.true.742, %if.else.738
  %call746 = call i32 @macid_parse(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8** null)
  %333 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call746, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 896, i32 %333)
  %call747 = call i32 @macid_parse(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8** null)
  %334 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call747, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 898, i32 %334)
  %call748 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8** null)
  %335 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call748, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 900, i32 %335)
  br label %if.end.749

if.end.749:                                       ; preds = %if.end.745, %if.end.737
  store i32 14, i32* %cleanup.dest.slot
  %336 = bitcast %struct.sm_file** %outchannel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %336) #1
  %337 = bitcast %struct.sm_file** %inchannel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %337) #1
  %338 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %338) #1
  br label %cleanup.783

if.end.753:                                       ; preds = %if.end.538
  %339 = load i32, i32* %control, align 4, !tbaa !5
  %tobool754 = icmp ne i32 %339, 0
  br i1 %tobool754, label %if.then.755, label %if.else.759

if.then.755:                                      ; preds = %if.end.753
  %arraydecay756 = getelementptr inbounds [2048 x i8], [2048 x i8]* %status, i32 0, i32 0
  %call757 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay756, i64 2048, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i32 0, i32 0))
  %340 = load i32, i32* %pid, align 4, !tbaa !5
  %arraydecay758 = getelementptr inbounds [2048 x i8], [2048 x i8]* %status, i32 0, i32 0
  call void @proc_list_add(i32 %340, i8* %arraydecay758, i32 4, i32 0, i32 -1, %union.bigsockaddr* null)
  br label %if.end.764

if.else.759:                                      ; preds = %if.end.753
  %arraydecay760 = getelementptr inbounds [2048 x i8], [2048 x i8]* %status, i32 0, i32 0
  %call761 = call i8* @anynet_ntoa(%union.bigsockaddr* @RealHostAddr)
  %call762 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay760, i64 2048, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8* %call761)
  %341 = load i32, i32* %pid, align 4, !tbaa !5
  %arraydecay763 = getelementptr inbounds [2048 x i8], [2048 x i8]* %status, i32 0, i32 0
  call void @proc_list_add(i32 %341, i8* %arraydecay763, i32 1, i32 0, i32 -1, %union.bigsockaddr* @RealHostAddr)
  br label %if.end.764

if.end.764:                                       ; preds = %if.else.759, %if.then.755
  %call765 = call i32 @sm_releasesignal(i32 17)
  %arrayidx766 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 0
  %342 = load i32, i32* %arrayidx766, align 4, !tbaa !5
  %cmp767 = icmp ne i32 %342, -1
  br i1 %cmp767, label %if.then.769, label %if.end.773

if.then.769:                                      ; preds = %if.end.764
  %arrayidx770 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 0
  %343 = load i32, i32* %arrayidx770, align 4, !tbaa !5
  %call771 = call i32 @close(i32 %343)
  %arrayidx772 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 0
  store i32 -1, i32* %arrayidx772, align 4, !tbaa !5
  br label %if.end.773

if.end.773:                                       ; preds = %if.then.769, %if.end.764
  %344 = load i32, i32* %t, align 4, !tbaa !5
  %call774 = call i32 @close(i32 %344)
  %arrayidx775 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 1
  %345 = load i32, i32* %arrayidx775, align 4, !tbaa !5
  %cmp776 = icmp ne i32 %345, -1
  br i1 %cmp776, label %if.then.778, label %if.end.782

if.then.778:                                      ; preds = %if.end.773
  %arrayidx779 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 1
  %346 = load i32, i32* %arrayidx779, align 4, !tbaa !5
  %call780 = call i32 @close(i32 %346)
  %arrayidx781 = getelementptr inbounds [2 x i32], [2 x i32]* %pipefd, i32 0, i64 1
  store i32 -1, i32* %arrayidx781, align 4, !tbaa !5
  br label %if.end.782

if.end.782:                                       ; preds = %if.then.778, %if.end.773
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.783

cleanup.783:                                      ; preds = %if.end.782, %if.end.749, %if.end.533, %if.end.457, %if.then.445, %if.then.426
  %347 = bitcast i64* %now to i8*
  call void @llvm.lifetime.end(i64 8, i8* %347) #1
  %348 = bitcast [2 x i32]* %pipefd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #1
  %349 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %349) #1
  %350 = bitcast i32* %control to i8*
  call void @llvm.lifetime.end(i64 4, i8* %350) #1
  %351 = bitcast i32* %timedout to i8*
  call void @llvm.lifetime.end(i64 4, i8* %351) #1
  %352 = bitcast i32* %lotherend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %352) #1
  %353 = bitcast i32* %pid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353) #1
  %cleanup.dest.790 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.790, label %unreachable [
    i32 0, label %cleanup.cont.791
    i32 15, label %for.cond.66
    i32 14, label %for.end.792
  ]

cleanup.cont.791:                                 ; preds = %cleanup.783
  br label %for.cond.66

for.end.792:                                      ; preds = %cleanup.783
  %354 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 15), align 1, !tbaa !13
  %conv793 = zext i8 %354 to i32
  %cmp794 = icmp sge i32 %conv793, 2
  br i1 %cmp794, label %land.lhs.true.796, label %if.end.799

land.lhs.true.796:                                ; preds = %for.end.792
  %355 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool797 = icmp ne i32 %355, 0
  br i1 %tobool797, label %if.end.799, label %if.then.798

if.then.798:                                      ; preds = %land.lhs.true.796
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.799

if.end.799:                                       ; preds = %if.then.798, %land.lhs.true.796, %for.end.792
  %356 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom800 = sext i32 %356 to i64
  %arrayidx801 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom800
  %d_inputfilterlist = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx801, i32 0, i32 17
  %357 = load i8*, i8** %d_inputfilterlist, align 8, !tbaa !35
  %cmp802 = icmp ne i8* %357, null
  br i1 %cmp802, label %if.then.804, label %if.end.833

if.then.804:                                      ; preds = %if.end.799
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.805

for.cond.805:                                     ; preds = %for.inc.824, %if.then.804
  %358 = load i32, i32* %i, align 4, !tbaa !5
  %cmp806 = icmp slt i32 %358, 25
  br i1 %cmp806, label %land.rhs.808, label %land.end.815

land.rhs.808:                                     ; preds = %for.cond.805
  %359 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom809 = sext i32 %359 to i64
  %360 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom810 = sext i32 %360 to i64
  %arrayidx811 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom810
  %d_inputfilters = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx811, i32 0, i32 18
  %arrayidx812 = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* %d_inputfilters, i32 0, i64 %idxprom809
  %361 = load %struct.milter*, %struct.milter** %arrayidx812, align 8, !tbaa !1
  %cmp813 = icmp ne %struct.milter* %361, null
  br label %land.end.815

land.end.815:                                     ; preds = %land.rhs.808, %for.cond.805
  %362 = phi i1 [ false, %for.cond.805 ], [ %cmp813, %land.rhs.808 ]
  br i1 %362, label %for.body.816, label %for.end.826

for.body.816:                                     ; preds = %land.end.815
  %363 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom817 = sext i32 %363 to i64
  %364 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom818 = sext i32 %364 to i64
  %arrayidx819 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom818
  %d_inputfilters820 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx819, i32 0, i32 18
  %arrayidx821 = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* %d_inputfilters820, i32 0, i64 %idxprom817
  %365 = load %struct.milter*, %struct.milter** %arrayidx821, align 8, !tbaa !1
  %366 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom822 = sext i32 %366 to i64
  %arrayidx823 = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom822
  store %struct.milter* %365, %struct.milter** %arrayidx823, align 8, !tbaa !1
  br label %for.inc.824

for.inc.824:                                      ; preds = %for.body.816
  %367 = load i32, i32* %i, align 4, !tbaa !5
  %inc825 = add nsw i32 %367, 1
  store i32 %inc825, i32* %i, align 4, !tbaa !5
  br label %for.cond.805

for.end.826:                                      ; preds = %land.end.815
  %368 = load i32, i32* %i, align 4, !tbaa !5
  %cmp827 = icmp slt i32 %368, 25
  br i1 %cmp827, label %if.then.829, label %if.end.832

if.then.829:                                      ; preds = %for.end.826
  %369 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom830 = sext i32 %369 to i64
  %arrayidx831 = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* @InputFilters, i32 0, i64 %idxprom830
  store %struct.milter* null, %struct.milter** %arrayidx831, align 8, !tbaa !1
  br label %if.end.832

if.end.832:                                       ; preds = %if.then.829, %for.end.826
  br label %if.end.833

if.end.833:                                       ; preds = %if.end.832, %if.end.799
  %370 = load i32, i32* %curdaemon, align 4, !tbaa !5
  %idxprom834 = sext i32 %370 to i64
  %arrayidx835 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom834
  %d_flags836 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx835, i32 0, i32 9
  store i32 1, i32* %cleanup.dest.slot
  %371 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %371) #1
  %372 = bitcast %union.bigsockaddr* %sa to i8*
  call void @llvm.lifetime.end(i64 112, i8* %372) #1
  %373 = bitcast [2048 x i8]* %status to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %373) #1
  %374 = bitcast i32* %j_has_dot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %374) #1
  %375 = bitcast i32* %olddaemon to i8*
  call void @llvm.lifetime.end(i64 4, i8* %375) #1
  %376 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %376) #1
  %377 = bitcast i32* %curdaemon to i8*
  call void @llvm.lifetime.end(i64 4, i8* %377) #1
  %378 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %378) #1
  %379 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %379) #1
  ret [8 x i32]* %d_flags836

unreachable:                                      ; preds = %cleanup.783, %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @init_qid_alg() #2

; Function Attrs: nounwind uwtable
define internal zeroext i16 @setupdaemon(%union.bigsockaddr* %daemonaddr) #0 {
entry:
  %daemonaddr.addr = alloca %union.bigsockaddr*, align 8
  %port = alloca i16, align 2
  %sp = alloca %struct.servent*, align 8
  %__v = alloca i16, align 2
  %__x = alloca i16, align 2
  %tmp = alloca i16, align 2
  store %union.bigsockaddr* %daemonaddr, %union.bigsockaddr** %daemonaddr.addr, align 8, !tbaa !1
  %0 = bitcast i16* %port to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = load %union.bigsockaddr*, %union.bigsockaddr** %daemonaddr.addr, align 8, !tbaa !1
  %sa = bitcast %union.bigsockaddr* %1 to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa, i32 0, i32 0
  %2 = load i16, i16* %sa_family, align 2, !tbaa !24
  %conv = zext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %union.bigsockaddr*, %union.bigsockaddr** %daemonaddr.addr, align 8, !tbaa !1
  %4 = bitcast %union.bigsockaddr* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 112, i32 4, i1 false)
  %5 = load %union.bigsockaddr*, %union.bigsockaddr** %daemonaddr.addr, align 8, !tbaa !1
  %sa2 = bitcast %union.bigsockaddr* %5 to %struct.sockaddr*
  %sa_family3 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa2, i32 0, i32 0
  store i16 2, i16* %sa_family3, align 2, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %union.bigsockaddr*, %union.bigsockaddr** %daemonaddr.addr, align 8, !tbaa !1
  %sa4 = bitcast %union.bigsockaddr* %6 to %struct.sockaddr*
  %sa_family5 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa4, i32 0, i32 0
  %7 = load i16, i16* %sa_family5, align 2, !tbaa !24
  %conv6 = zext i16 %7 to i32
  switch i32 %conv6, label %sw.default [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %8 = load %union.bigsockaddr*, %union.bigsockaddr** %daemonaddr.addr, align 8, !tbaa !1
  %sin = bitcast %union.bigsockaddr* %8 to %struct.sockaddr_in*
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 2
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  %9 = load i32, i32* %s_addr, align 4, !tbaa !36
  %cmp7 = icmp eq i32 %9, 0
  br i1 %cmp7, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %sw.bb
  %10 = load %union.bigsockaddr*, %union.bigsockaddr** %daemonaddr.addr, align 8, !tbaa !1
  %sin10 = bitcast %union.bigsockaddr* %10 to %struct.sockaddr_in*
  %sin_addr11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin10, i32 0, i32 2
  %s_addr12 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr11, i32 0, i32 0
  store i32 0, i32* %s_addr12, align 4, !tbaa !36
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %sw.bb
  %11 = load %union.bigsockaddr*, %union.bigsockaddr** %daemonaddr.addr, align 8, !tbaa !1
  %sin14 = bitcast %union.bigsockaddr* %11 to %struct.sockaddr_in*
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin14, i32 0, i32 1
  %12 = load i16, i16* %sin_port, align 2, !tbaa !39
  store i16 %12, i16* %port, align 2, !tbaa !15
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i16 0, i16* %port, align 2, !tbaa !15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.13
  %13 = load i16, i16* %port, align 2, !tbaa !15
  %conv15 = zext i16 %13 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %sw.epilog
  %14 = bitcast %struct.servent** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %call = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0))
  store %struct.servent* %call, %struct.servent** %sp, align 8, !tbaa !1
  %15 = load %struct.servent*, %struct.servent** %sp, align 8, !tbaa !1
  %cmp19 = icmp eq %struct.servent* %15, null
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.18
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.139, i32 0, i32 0))
  %16 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %16) #1
  %17 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #1
  store i16 25, i16* %__x, align 2, !tbaa !15
  %18 = load i16, i16* %__x, align 2, !tbaa !15
  %19 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %18) #9, !srcloc !40
  store i16 %19, i16* %__v, align 2, !tbaa !15
  %20 = load i16, i16* %__v, align 2, !tbaa !15
  store i16 %20, i16* %tmp, !tbaa !15
  %21 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %21) #1
  %22 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %22) #1
  %23 = load i16, i16* %tmp, !tbaa !15
  store i16 %23, i16* %port, align 2, !tbaa !15
  br label %if.end.23

if.else:                                          ; preds = %if.then.18
  %24 = load %struct.servent*, %struct.servent** %sp, align 8, !tbaa !1
  %s_port = getelementptr inbounds %struct.servent, %struct.servent* %24, i32 0, i32 2
  %25 = load i32, i32* %s_port, align 4, !tbaa !41
  %conv22 = trunc i32 %25 to i16
  store i16 %conv22, i16* %port, align 2, !tbaa !15
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.21
  %26 = bitcast %struct.servent** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %sw.epilog
  %27 = load %union.bigsockaddr*, %union.bigsockaddr** %daemonaddr.addr, align 8, !tbaa !1
  %sa25 = bitcast %union.bigsockaddr* %27 to %struct.sockaddr*
  %sa_family26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa25, i32 0, i32 0
  %28 = load i16, i16* %sa_family26, align 2, !tbaa !24
  %conv27 = zext i16 %28 to i32
  switch i32 %conv27, label %sw.default.31 [
    i32 2, label %sw.bb.28
  ]

sw.bb.28:                                         ; preds = %if.end.24
  %29 = load i16, i16* %port, align 2, !tbaa !15
  %30 = load %union.bigsockaddr*, %union.bigsockaddr** %daemonaddr.addr, align 8, !tbaa !1
  %sin29 = bitcast %union.bigsockaddr* %30 to %struct.sockaddr_in*
  %sin_port30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin29, i32 0, i32 1
  store i16 %29, i16* %sin_port30, align 2, !tbaa !39
  br label %sw.epilog.32

sw.default.31:                                    ; preds = %if.end.24
  br label %sw.epilog.32

sw.epilog.32:                                     ; preds = %sw.default.31, %sw.bb.28
  %31 = load i16, i16* %port, align 2, !tbaa !15
  %32 = bitcast i16* %port to i8*
  call void @llvm.lifetime.end(i64 2, i8* %32) #1
  ret i16 %31
}

declare void @sm_dprintf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @opendaemonsocket(%struct.daemon* %d, i32 %firsttime) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.daemon*, align 8
  %firsttime.addr = alloca i32, align 4
  %on = alloca i32, align 4
  %fdflags = alloca i32, align 4
  %socksize = alloca i32, align 4
  %ntries = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %rval = alloca i32, align 4
  %sff = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.daemon* %d, %struct.daemon** %d.addr, align 8, !tbaa !1
  store i32 %firsttime, i32* %firsttime.addr, align 4, !tbaa !5
  %0 = bitcast i32* %on to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %on, align 4, !tbaa !5
  %1 = bitcast i32* %fdflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %socksize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %socksize, align 4, !tbaa !5
  %3 = bitcast i32* %ntries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %ntries, align 4, !tbaa !5
  %4 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 15), align 1, !tbaa !13
  %conv = zext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_name = getelementptr inbounds %struct.daemon, %struct.daemon* %7, i32 0, i32 11
  %8 = load i8*, i8** %d_name, align 8, !tbaa !14
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.125, i32 0, i32 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %9 = load i32, i32* %ntries, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %9, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.body
  %call = call i32 @sleep(i32 5)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %do.body
  %10 = load i32, i32* %firsttime.addr, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %11 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket = getelementptr inbounds %struct.daemon, %struct.daemon* %11, i32 0, i32 0
  %12 = load i32, i32* %d_socket, align 4, !tbaa !18
  %cmp7 = icmp slt i32 %12, 0
  br i1 %cmp7, label %if.then.9, label %if.end.145

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.5
  %13 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr = getelementptr inbounds %struct.daemon, %struct.daemon* %13, i32 0, i32 1
  %sa = bitcast %union.bigsockaddr* %d_addr to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa, i32 0, i32 0
  %14 = load i16, i16* %sa_family, align 2, !tbaa !24
  %conv10 = zext i16 %14 to i32
  %cmp11 = icmp eq i32 %conv10, 1
  br i1 %cmp11, label %if.then.13, label %if.end.32

if.then.13:                                       ; preds = %if.then.9
  %15 = bitcast i32* %rval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64 271174, i64* %sff, align 8, !tbaa !19
  %17 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr14 = getelementptr inbounds %struct.daemon, %struct.daemon* %17, i32 0, i32 1
  %sunix = bitcast %union.bigsockaddr* %d_addr14 to %struct.sockaddr_un*
  %sun_path = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %sunix, i32 0, i32 1
  %arraydecay = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path, i32 0, i32 0
  %18 = load i32, i32* @RunAsUid, align 4, !tbaa !5
  %19 = load i32, i32* @RunAsGid, align 4, !tbaa !5
  %20 = load i8*, i8** @RunAsUserName, align 8, !tbaa !1
  %21 = load i64, i64* %sff, align 8, !tbaa !19
  %call15 = call i32 @safefile(i8* %arraydecay, i32 %18, i32 %19, i8* %20, i64 %21, i32 384, %struct.stat* null)
  store i32 %call15, i32* %rval, align 4, !tbaa !5
  %22 = load i32, i32* %rval, align 4, !tbaa !5
  %cmp16 = icmp ne i32 %22, 0
  br i1 %cmp16, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %if.then.13
  %call19 = call i32* @__errno_location() #9
  %23 = load i32, i32* %call19, align 4, !tbaa !5
  store i32 %23, i32* %save_errno, align 4, !tbaa !5
  %24 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_name20 = getelementptr inbounds %struct.daemon, %struct.daemon* %24, i32 0, i32 11
  %25 = load i8*, i8** %d_name20, align 8, !tbaa !14
  %26 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr21 = getelementptr inbounds %struct.daemon, %struct.daemon* %26, i32 0, i32 1
  %sunix22 = bitcast %union.bigsockaddr* %d_addr21 to %struct.sockaddr_un*
  %sun_path23 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %sunix22, i32 0, i32 1
  %arraydecay24 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path23, i32 0, i32 0
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.126, i32 0, i32 0), i8* %25, i8* %arraydecay24)
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.then.13
  %27 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr26 = getelementptr inbounds %struct.daemon, %struct.daemon* %27, i32 0, i32 1
  %sunix27 = bitcast %union.bigsockaddr* %d_addr26 to %struct.sockaddr_un*
  %sun_path28 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %sunix27, i32 0, i32 1
  %arraydecay29 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path28, i32 0, i32 0
  %call30 = call i32 @unlink(i8* %arraydecay29) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.18, %if.end.25
  %28 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i32* %rval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.163 [
    i32 0, label %cleanup.cont
    i32 4, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.32

if.end.32:                                        ; preds = %cleanup.cont, %if.then.9
  %30 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr33 = getelementptr inbounds %struct.daemon, %struct.daemon* %30, i32 0, i32 1
  %sa34 = bitcast %union.bigsockaddr* %d_addr33 to %struct.sockaddr*
  %sa_family35 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa34, i32 0, i32 0
  %31 = load i16, i16* %sa_family35, align 2, !tbaa !24
  %conv36 = zext i16 %31 to i32
  %call37 = call i32 @socket(i32 %conv36, i32 1, i32 0) #1
  %32 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket38 = getelementptr inbounds %struct.daemon, %struct.daemon* %32, i32 0, i32 0
  store i32 %call37, i32* %d_socket38, align 4, !tbaa !18
  %33 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket39 = getelementptr inbounds %struct.daemon, %struct.daemon* %33, i32 0, i32 0
  %34 = load i32, i32* %d_socket39, align 4, !tbaa !18
  %cmp40 = icmp slt i32 %34, 0
  br i1 %cmp40, label %if.then.42, label %if.end.64

if.then.42:                                       ; preds = %if.end.32
  %call43 = call i32* @__errno_location() #9
  %35 = load i32, i32* %call43, align 4, !tbaa !5
  store i32 %35, i32* %save_errno, align 4, !tbaa !5
  %36 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_name44 = getelementptr inbounds %struct.daemon, %struct.daemon* %36, i32 0, i32 11
  %37 = load i8*, i8** %d_name44, align 8, !tbaa !14
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.127, i32 0, i32 0), i8* %37)
  br label %fail

fail:                                             ; preds = %if.then.139, %if.then.68, %if.then.42, %cleanup
  %38 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_flags = getelementptr inbounds %struct.daemon, %struct.daemon* %38, i32 0, i32 9
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags, i32 0, i64 2
  %39 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %and = and i32 %39, 32768
  %tobool45 = icmp ne i32 %and, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.57

land.lhs.true.46:                                 ; preds = %fail
  %40 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call47 = call i32 @transienterror(i32 %40)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %lor.lhs.false.49, label %if.then.52

lor.lhs.false.49:                                 ; preds = %land.lhs.true.46
  %41 = load i32, i32* %ntries, align 4, !tbaa !5
  %cmp50 = icmp sge i32 %41, 9
  br i1 %cmp50, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %lor.lhs.false.49, %land.lhs.true.46
  %42 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_name53 = getelementptr inbounds %struct.daemon, %struct.daemon* %42, i32 0, i32 11
  %43 = load i8*, i8** %d_name53, align 8, !tbaa !14
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.128, i32 0, i32 0), i8* %43)
  %44 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_flags54 = getelementptr inbounds %struct.daemon, %struct.daemon* %44, i32 0, i32 9
  %arrayidx55 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags54, i32 0, i64 0
  %45 = load i32, i32* %arrayidx55, align 4, !tbaa !5
  %or = or i32 %45, 4
  store i32 %or, i32* %arrayidx55, align 4, !tbaa !5
  %46 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket56 = getelementptr inbounds %struct.daemon, %struct.daemon* %46, i32 0, i32 0
  store i32 -1, i32* %d_socket56, align 4, !tbaa !18
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

if.end.57:                                        ; preds = %lor.lhs.false.49, %fail
  br label %severe

severe:                                           ; preds = %if.then.152, %if.then.119, %if.end.57
  %47 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp58 = icmp sgt i32 %47, 0
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %severe
  %48 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_name61 = getelementptr inbounds %struct.daemon, %struct.daemon* %48, i32 0, i32 11
  %49 = load i8*, i8** %d_name61, align 8, !tbaa !14
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.129, i32 0, i32 0), i8* %49)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %severe
  %50 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket63 = getelementptr inbounds %struct.daemon, %struct.daemon* %50, i32 0, i32 0
  store i32 -1, i32* %d_socket63, align 4, !tbaa !18
  br label %do.cond

if.end.64:                                        ; preds = %if.end.32
  %51 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket65 = getelementptr inbounds %struct.daemon, %struct.daemon* %51, i32 0, i32 0
  %52 = load i32, i32* %d_socket65, align 4, !tbaa !18
  %cmp66 = icmp slt i32 %52, 1024
  br i1 %cmp66, label %if.end.71, label %if.then.68

if.then.68:                                       ; preds = %if.end.64
  store i32 22, i32* %save_errno, align 4, !tbaa !5
  %53 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_name69 = getelementptr inbounds %struct.daemon, %struct.daemon* %53, i32 0, i32 11
  %54 = load i8*, i8** %d_name69, align 8, !tbaa !14
  %55 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket70 = getelementptr inbounds %struct.daemon, %struct.daemon* %55, i32 0, i32 0
  %56 = load i32, i32* %d_socket70, align 4, !tbaa !18
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.130, i32 0, i32 0), i8* %54, i32 %56)
  br label %fail

if.end.71:                                        ; preds = %if.end.64
  %57 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 15), align 1, !tbaa !13
  %conv72 = zext i8 %57 to i32
  %cmp73 = icmp sge i32 %conv72, 101
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.80

land.lhs.true.75:                                 ; preds = %if.end.71
  %58 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool76 = icmp ne i32 %58, 0
  br i1 %tobool76, label %if.end.80, label %if.then.77

if.then.77:                                       ; preds = %land.lhs.true.75
  %59 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket78 = getelementptr inbounds %struct.daemon, %struct.daemon* %59, i32 0, i32 0
  %60 = load i32, i32* %d_socket78, align 4, !tbaa !18
  %61 = bitcast i32* %on to i8*
  %call79 = call i32 @setsockopt(i32 %60, i32 1, i32 1, i8* %61, i32 4) #1
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %land.lhs.true.75, %if.end.71
  %62 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket81 = getelementptr inbounds %struct.daemon, %struct.daemon* %62, i32 0, i32 0
  %63 = load i32, i32* %d_socket81, align 4, !tbaa !18
  %64 = bitcast i32* %on to i8*
  %call82 = call i32 @setsockopt(i32 %63, i32 1, i32 2, i8* %64, i32 4) #1
  %65 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket83 = getelementptr inbounds %struct.daemon, %struct.daemon* %65, i32 0, i32 0
  %66 = load i32, i32* %d_socket83, align 4, !tbaa !18
  %67 = bitcast i32* %on to i8*
  %call84 = call i32 @setsockopt(i32 %66, i32 1, i32 9, i8* %67, i32 4) #1
  %68 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_tcprcvbufsize = getelementptr inbounds %struct.daemon, %struct.daemon* %68, i32 0, i32 4
  %69 = load i32, i32* %d_tcprcvbufsize, align 4, !tbaa !43
  %cmp85 = icmp sgt i32 %69, 0
  br i1 %cmp85, label %if.then.87, label %if.end.96

if.then.87:                                       ; preds = %if.end.80
  %70 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket88 = getelementptr inbounds %struct.daemon, %struct.daemon* %70, i32 0, i32 0
  %71 = load i32, i32* %d_socket88, align 4, !tbaa !18
  %72 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_tcprcvbufsize89 = getelementptr inbounds %struct.daemon, %struct.daemon* %72, i32 0, i32 4
  %73 = bitcast i32* %d_tcprcvbufsize89 to i8*
  %call90 = call i32 @setsockopt(i32 %71, i32 1, i32 8, i8* %73, i32 4) #1
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.then.87
  %74 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_name94 = getelementptr inbounds %struct.daemon, %struct.daemon* %74, i32 0, i32 11
  %75 = load i8*, i8** %d_name94, align 8, !tbaa !14
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.131, i32 0, i32 0), i8* %75)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.then.87
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.80
  %76 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_tcpsndbufsize = getelementptr inbounds %struct.daemon, %struct.daemon* %76, i32 0, i32 5
  %77 = load i32, i32* %d_tcpsndbufsize, align 4, !tbaa !44
  %cmp97 = icmp sgt i32 %77, 0
  br i1 %cmp97, label %if.then.99, label %if.end.108

if.then.99:                                       ; preds = %if.end.96
  %78 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket100 = getelementptr inbounds %struct.daemon, %struct.daemon* %78, i32 0, i32 0
  %79 = load i32, i32* %d_socket100, align 4, !tbaa !18
  %80 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_tcpsndbufsize101 = getelementptr inbounds %struct.daemon, %struct.daemon* %80, i32 0, i32 5
  %81 = bitcast i32* %d_tcpsndbufsize101 to i8*
  %call102 = call i32 @setsockopt(i32 %79, i32 1, i32 7, i8* %81, i32 4) #1
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.then.99
  %82 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_name106 = getelementptr inbounds %struct.daemon, %struct.daemon* %82, i32 0, i32 11
  %83 = load i8*, i8** %d_name106, align 8, !tbaa !14
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.132, i32 0, i32 0), i8* %83)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.then.99
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.96
  %84 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket109 = getelementptr inbounds %struct.daemon, %struct.daemon* %84, i32 0, i32 0
  %85 = load i32, i32* %d_socket109, align 4, !tbaa !18
  %call110 = call i32 (i32, i32, ...) @fcntl(i32 %85, i32 1, i32 0)
  store i32 %call110, i32* %fdflags, align 4, !tbaa !5
  %cmp111 = icmp eq i32 %call110, -1
  br i1 %cmp111, label %if.then.119, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %if.end.108
  %86 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket114 = getelementptr inbounds %struct.daemon, %struct.daemon* %86, i32 0, i32 0
  %87 = load i32, i32* %d_socket114, align 4, !tbaa !18
  %88 = load i32, i32* %fdflags, align 4, !tbaa !5
  %or115 = or i32 %88, 1
  %call116 = call i32 (i32, i32, ...) @fcntl(i32 %87, i32 2, i32 %or115)
  %cmp117 = icmp eq i32 %call116, -1
  br i1 %cmp117, label %if.then.119, label %if.end.127

if.then.119:                                      ; preds = %lor.lhs.false.113, %if.end.108
  %call120 = call i32* @__errno_location() #9
  %89 = load i32, i32* %call120, align 4, !tbaa !5
  store i32 %89, i32* %save_errno, align 4, !tbaa !5
  %90 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_name121 = getelementptr inbounds %struct.daemon, %struct.daemon* %90, i32 0, i32 11
  %91 = load i8*, i8** %d_name121, align 8, !tbaa !14
  %92 = load i32, i32* %fdflags, align 4, !tbaa !5
  %cmp122 = icmp eq i32 %92, -1
  %cond = select i1 %cmp122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0)
  %93 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call124 = call i8* @sm_errstring(i32 %93)
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.133, i32 0, i32 0), i8* %91, i8* %cond, i8* %call124)
  %94 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket125 = getelementptr inbounds %struct.daemon, %struct.daemon* %94, i32 0, i32 0
  %95 = load i32, i32* %d_socket125, align 4, !tbaa !18
  %call126 = call i32 @close(i32 %95)
  br label %severe

if.end.127:                                       ; preds = %lor.lhs.false.113
  %96 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr128 = getelementptr inbounds %struct.daemon, %struct.daemon* %96, i32 0, i32 1
  %sa129 = bitcast %union.bigsockaddr* %d_addr128 to %struct.sockaddr*
  %sa_family130 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa129, i32 0, i32 0
  %97 = load i16, i16* %sa_family130, align 2, !tbaa !24
  %conv131 = zext i16 %97 to i32
  switch i32 %conv131, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.132
  ]

sw.bb:                                            ; preds = %if.end.127
  store i32 110, i32* %socksize, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.132:                                        ; preds = %if.end.127
  store i32 16, i32* %socksize, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.127
  store i32 112, i32* %socksize, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.132, %sw.bb
  %98 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket133 = getelementptr inbounds %struct.daemon, %struct.daemon* %98, i32 0, i32 0
  %99 = load i32, i32* %d_socket133, align 4, !tbaa !18
  %100 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr134 = getelementptr inbounds %struct.daemon, %struct.daemon* %100, i32 0, i32 1
  %sa135 = bitcast %union.bigsockaddr* %d_addr134 to %struct.sockaddr*
  %101 = load i32, i32* %socksize, align 4, !tbaa !5
  %call136 = call i32 @bind(i32 %99, %struct.sockaddr* %sa135, i32 %101) #1
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.then.139, label %if.end.144

if.then.139:                                      ; preds = %sw.epilog
  %call140 = call i32* @__errno_location() #9
  %102 = load i32, i32* %call140, align 4, !tbaa !5
  store i32 %102, i32* %save_errno, align 4, !tbaa !5
  %103 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_name141 = getelementptr inbounds %struct.daemon, %struct.daemon* %103, i32 0, i32 11
  %104 = load i8*, i8** %d_name141, align 8, !tbaa !14
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.136, i32 0, i32 0), i8* %104)
  %105 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket142 = getelementptr inbounds %struct.daemon, %struct.daemon* %105, i32 0, i32 0
  %106 = load i32, i32* %d_socket142, align 4, !tbaa !18
  %call143 = call i32 @close(i32 %106)
  br label %fail

if.end.144:                                       ; preds = %sw.epilog
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %lor.lhs.false
  %107 = load i32, i32* %firsttime.addr, align 4, !tbaa !5
  %tobool146 = icmp ne i32 %107, 0
  br i1 %tobool146, label %if.end.157, label %land.lhs.true.147

land.lhs.true.147:                                ; preds = %if.end.145
  %108 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket148 = getelementptr inbounds %struct.daemon, %struct.daemon* %108, i32 0, i32 0
  %109 = load i32, i32* %d_socket148, align 4, !tbaa !18
  %110 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_listenqueue = getelementptr inbounds %struct.daemon, %struct.daemon* %110, i32 0, i32 3
  %111 = load i32, i32* %d_listenqueue, align 4, !tbaa !45
  %call149 = call i32 @listen(i32 %109, i32 %111) #1
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %if.then.152, label %if.end.157

if.then.152:                                      ; preds = %land.lhs.true.147
  %call153 = call i32* @__errno_location() #9
  %112 = load i32, i32* %call153, align 4, !tbaa !5
  store i32 %112, i32* %save_errno, align 4, !tbaa !5
  %113 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_name154 = getelementptr inbounds %struct.daemon, %struct.daemon* %113, i32 0, i32 11
  %114 = load i8*, i8** %d_name154, align 8, !tbaa !14
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.137, i32 0, i32 0), i8* %114)
  %115 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_socket155 = getelementptr inbounds %struct.daemon, %struct.daemon* %115, i32 0, i32 0
  %116 = load i32, i32* %d_socket155, align 4, !tbaa !18
  %call156 = call i32 @close(i32 %116)
  br label %severe

if.end.157:                                       ; preds = %land.lhs.true.147, %if.end.145
  %117 = load i32, i32* %socksize, align 4, !tbaa !5
  store i32 %117, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

do.cond:                                          ; preds = %if.end.62
  %118 = load i32, i32* %ntries, align 4, !tbaa !5
  %inc = add nsw i32 %118, 1
  store i32 %inc, i32* %ntries, align 4, !tbaa !5
  %cmp158 = icmp slt i32 %118, 10
  br i1 %cmp158, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %119 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call160 = call i32 @transienterror(i32 %119)
  %tobool161 = icmp ne i32 %call160, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %120 = phi i1 [ false, %do.cond ], [ %tobool161, %land.rhs ]
  br i1 %120, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %121 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_name162 = getelementptr inbounds %struct.daemon, %struct.daemon* %121, i32 0, i32 11
  %122 = load i8*, i8** %d_name162, align 8, !tbaa !14
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.138, i32 0, i32 0), i8* %122)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.163

cleanup.163:                                      ; preds = %do.end, %if.end.157, %if.then.52, %cleanup
  %123 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %ntries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %socksize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %fdflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %on to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = load i32, i32* %retval
  ret i32 %128
}

declare i32 @opencontrolsocket() #2

declare void @sm_syslog(i32, i8*, i8*, ...) #2

declare i8* @sm_errstring(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare void (i32)* @sm_signal(i32, void (i32)*) #2

declare void @reapchild(i32) #2

declare void @log_sendmail_pid(%struct.envelope*) #2

declare void @expand(i8*, i8*, i64, %struct.envelope*) #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #4

declare void @proc_list_add(i32, i8*, i32, i32, i32, %union.bigsockaddr*) #2

declare i32 @sm_blocksignal(i32) #2

; Function Attrs: nounwind uwtable
define void @shutdown_daemon() #0 {
entry:
  %i = alloca i32, align 4
  %reason = alloca i8*, align 8
  %rval = alloca i32, align 4
  %sff = alloca i64, align 8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %reason to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  call void @sm_allsignals(i32 1)
  %2 = load volatile i8*, i8** @ShutdownRequest, align 8, !tbaa !1
  store i8* %2, i8** %reason, align 8, !tbaa !1
  store volatile i8* null, i8** @ShutdownRequest, align 8, !tbaa !1
  store volatile i32 0, i32* @PendingSignal, align 4, !tbaa !5
  %3 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp = icmp sgt i32 %3, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %4, i32 0, i32 25
  %5 = load i8*, i8** %e_id, align 8, !tbaa !46
  %6 = load i8*, i8** %reason, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %6, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load i8*, i8** %reason, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), %cond.true ], [ %7, %cond.false ]
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i32 0, i32 0), i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  store i8* null, i8** @FileName, align 8, !tbaa !1
  call void @closecontrolsocket(i32 1)
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %9 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom
  %d_socket = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx, i32 0, i32 0
  %11 = load i32, i32* %d_socket, align 4, !tbaa !18
  %cmp3 = icmp sge i32 %11, 0
  br i1 %cmp3, label %if.then.4, label %if.end.44

if.then.4:                                        ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom5
  %d_socket7 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx6, i32 0, i32 0
  %13 = load i32, i32* %d_socket7, align 4, !tbaa !18
  %call = call i32 @close(i32 %13)
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom8
  %d_socket10 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx9, i32 0, i32 0
  store i32 -1, i32* %d_socket10, align 4, !tbaa !18
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom11
  %d_addr = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx12, i32 0, i32 1
  %sa = bitcast %union.bigsockaddr* %d_addr to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa, i32 0, i32 0
  %16 = load i16, i16* %sa_family, align 2, !tbaa !24
  %conv = zext i16 %16 to i32
  %cmp13 = icmp eq i32 %conv, 1
  br i1 %cmp13, label %if.then.15, label %if.end.43

if.then.15:                                       ; preds = %if.then.4
  %17 = bitcast i32* %rval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i64 271171, i64* %sff, align 8, !tbaa !19
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom16
  %d_addr18 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx17, i32 0, i32 1
  %sunix = bitcast %union.bigsockaddr* %d_addr18 to %struct.sockaddr_un*
  %sun_path = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %sunix, i32 0, i32 1
  %arraydecay = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path, i32 0, i32 0
  %20 = load i32, i32* @RunAsUid, align 4, !tbaa !5
  %21 = load i32, i32* @RunAsGid, align 4, !tbaa !5
  %22 = load i8*, i8** @RunAsUserName, align 8, !tbaa !1
  %23 = load i64, i64* %sff, align 8, !tbaa !19
  %call19 = call i32 @safefile(i8* %arraydecay, i32 %20, i32 %21, i8* %22, i64 %23, i32 384, %struct.stat* null)
  store i32 %call19, i32* %rval, align 4, !tbaa !5
  %24 = load i32, i32* %rval, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %24, 0
  br i1 %cmp20, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.then.15
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom22
  %d_addr24 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx23, i32 0, i32 1
  %sunix25 = bitcast %union.bigsockaddr* %d_addr24 to %struct.sockaddr_un*
  %sun_path26 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %sunix25, i32 0, i32 1
  %arraydecay27 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path26, i32 0, i32 0
  %call28 = call i32 @unlink(i8* %arraydecay27) #1
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.42

if.then.31:                                       ; preds = %land.lhs.true
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom32
  %d_name = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx33, i32 0, i32 11
  %27 = load i8*, i8** %d_name, align 8, !tbaa !14
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %28 to i64
  %arrayidx35 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom34
  %d_addr36 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx35, i32 0, i32 1
  %sunix37 = bitcast %union.bigsockaddr* %d_addr36 to %struct.sockaddr_un*
  %sun_path38 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %sunix37, i32 0, i32 1
  %arraydecay39 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path38, i32 0, i32 0
  %call40 = call i32* @__errno_location() #9
  %29 = load i32, i32* %call40, align 4, !tbaa !5
  %call41 = call i8* @sm_errstring(i32 %29)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.84, i32 0, i32 0), i8* %27, i8* %arraydecay39, i8* %call41)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.31, %land.lhs.true, %if.then.15
  %30 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %rval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.4
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @finis(i32 0, i32 1, i32 0)
  %33 = bitcast i8** %reason to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @restart_daemon() #0 {
entry:
  %drop = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %reason = alloca i8*, align 8
  %ignore = alloca void (i32)*, align 8
  %oalrm = alloca void (i32)*, align 8
  %ousr1 = alloca void (i32)*, align 8
  %0 = bitcast i32* %drop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %reason to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast void (i32)** %ignore to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast void (i32)** %oalrm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast void (i32)** %ousr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  call void @sm_clear_events()
  call void @sm_allsignals(i32 1)
  %6 = load volatile i8*, i8** @RestartRequest, align 8, !tbaa !1
  store i8* %6, i8** %reason, align 8, !tbaa !1
  store volatile i8* null, i8** @RestartRequest, align 8, !tbaa !1
  store volatile i32 0, i32* @PendingSignal, align 4, !tbaa !5
  %7 = load i8**, i8*** @SaveArgv, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx1, align 1, !tbaa !13
  %conv = sext i8 %9 to i32
  %cmp = icmp ne i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %10 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %10, 3
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.85, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  call void @finis(i32 0, i32 1, i32 72)
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %11 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %11, 3
  br i1 %cmp7, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.6
  %12 = load i8**, i8*** @SaveArgv, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8*, i8** %12, i64 0
  %13 = load i8*, i8** %arrayidx10, align 8, !tbaa !1
  %14 = load i8*, i8** %reason, align 8, !tbaa !1
  %cmp11 = icmp eq i8* %14, null
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  %15 = load i8*, i8** %reason, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), %cond.true ], [ %15, %cond.false ]
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.86, i32 0, i32 0), i8* %13, i8* %cond)
  br label %if.end.13

if.end.13:                                        ; preds = %cond.end, %if.end.6
  call void @closecontrolsocket(i32 1)
  %16 = load i32, i32* @DaemonPid, align 4, !tbaa !5
  %call = call i32 @getpid() #1
  %cmp14 = icmp eq i32 %16, %call
  %conv15 = zext i1 %cmp14 to i32
  call void @cleanup_shm(i32 %conv15)
  call void @close_sendmail_pid()
  %17 = load i32, i32* @UseMSP, align 4, !tbaa !5
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end.13
  %18 = load i32, i32* @RunAsUid, align 4, !tbaa !5
  %cmp16 = icmp ne i32 %18, 0
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %19 = load i32, i32* @RealUid, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %19, 0
  br i1 %cmp18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %20 = load i32, i32* @RealUid, align 4, !tbaa !5
  %21 = load i32, i32* @RunAsUid, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %20, %21
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %22 = phi i1 [ true, %land.rhs ], [ %cmp20, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %if.end.13
  %23 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.13 ], [ %22, %lor.end ]
  %lnot = xor i1 %23, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %drop, align 4, !tbaa !5
  %24 = load i32, i32* %drop, align 4, !tbaa !5
  %call22 = call i32 @drop_privileges(i32 %24)
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %land.end
  %25 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.then.25
  %call29 = call i32* @__errno_location() #9
  %26 = load i32, i32* %call29, align 4, !tbaa !5
  %call30 = call i8* @sm_errstring(i32 %26)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.87, i32 0, i32 0), i8* %call30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.then.25
  call void @finis(i32 0, i32 1, i32 71)
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %land.end
  %27 = load i32, i32* @DtableSize, align 4, !tbaa !5
  call void @sm_close_on_exec(i32 3, i32 %27)
  br label %do.body

do.body:                                          ; preds = %if.end.32
  %call33 = call void (i32)* @sm_signal(i32 14, void (i32)* @sm_signal_noop)
  store void (i32)* %call33, void (i32)** %oalrm, align 8, !tbaa !1
  %28 = load void (i32)*, void (i32)** %oalrm, align 8, !tbaa !1
  %cmp34 = icmp eq void (i32)* %28, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp34, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %29 = load void (i32)*, void (i32)** %oalrm, align 8, !tbaa !1
  %cmp36 = icmp eq void (i32)* %29, null
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %lor.lhs.false, %do.body
  %30 = load void (i32)*, void (i32)** %oalrm, align 8, !tbaa !1
  %call39 = call void (i32)* @sm_signal(i32 14, void (i32)* %30)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %lor.lhs.false
  br label %do.cond

do.cond:                                          ; preds = %if.end.40
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.41

do.body.41:                                       ; preds = %do.end
  %call42 = call void (i32)* @sm_signal(i32 17, void (i32)* @sm_signal_noop)
  store void (i32)* %call42, void (i32)** %ignore, align 8, !tbaa !1
  %31 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %cmp43 = icmp eq void (i32)* %31, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp43, label %if.then.48, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %do.body.41
  %32 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %cmp46 = icmp eq void (i32)* %32, null
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %lor.lhs.false.45, %do.body.41
  %33 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %call49 = call void (i32)* @sm_signal(i32 17, void (i32)* %33)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %lor.lhs.false.45
  br label %do.cond.51

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52

do.end.52:                                        ; preds = %do.cond.51
  br label %do.body.53

do.body.53:                                       ; preds = %do.end.52
  %call54 = call void (i32)* @sm_signal(i32 1, void (i32)* @sm_signal_noop)
  store void (i32)* %call54, void (i32)** %ignore, align 8, !tbaa !1
  %34 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %cmp55 = icmp eq void (i32)* %34, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp55, label %if.then.60, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %do.body.53
  %35 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %cmp58 = icmp eq void (i32)* %35, null
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %lor.lhs.false.57, %do.body.53
  %36 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %call61 = call void (i32)* @sm_signal(i32 1, void (i32)* %36)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %lor.lhs.false.57
  br label %do.cond.63

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64

do.end.64:                                        ; preds = %do.cond.63
  br label %do.body.65

do.body.65:                                       ; preds = %do.end.64
  %call66 = call void (i32)* @sm_signal(i32 2, void (i32)* @sm_signal_noop)
  store void (i32)* %call66, void (i32)** %ignore, align 8, !tbaa !1
  %37 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %cmp67 = icmp eq void (i32)* %37, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp67, label %if.then.72, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %do.body.65
  %38 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %cmp70 = icmp eq void (i32)* %38, null
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %lor.lhs.false.69, %do.body.65
  %39 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %call73 = call void (i32)* @sm_signal(i32 2, void (i32)* %39)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %lor.lhs.false.69
  br label %do.cond.75

do.cond.75:                                       ; preds = %if.end.74
  br label %do.end.76

do.end.76:                                        ; preds = %do.cond.75
  br label %do.body.77

do.body.77:                                       ; preds = %do.end.76
  %call78 = call void (i32)* @sm_signal(i32 13, void (i32)* @sm_signal_noop)
  store void (i32)* %call78, void (i32)** %ignore, align 8, !tbaa !1
  %40 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %cmp79 = icmp eq void (i32)* %40, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp79, label %if.then.84, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %do.body.77
  %41 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %cmp82 = icmp eq void (i32)* %41, null
  br i1 %cmp82, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %lor.lhs.false.81, %do.body.77
  %42 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %call85 = call void (i32)* @sm_signal(i32 13, void (i32)* %42)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %lor.lhs.false.81
  br label %do.cond.87

do.cond.87:                                       ; preds = %if.end.86
  br label %do.end.88

do.end.88:                                        ; preds = %do.cond.87
  br label %do.body.89

do.body.89:                                       ; preds = %do.end.88
  %call90 = call void (i32)* @sm_signal(i32 15, void (i32)* @sm_signal_noop)
  store void (i32)* %call90, void (i32)** %ignore, align 8, !tbaa !1
  %43 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %cmp91 = icmp eq void (i32)* %43, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp91, label %if.then.96, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %do.body.89
  %44 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %cmp94 = icmp eq void (i32)* %44, null
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %lor.lhs.false.93, %do.body.89
  %45 = load void (i32)*, void (i32)** %ignore, align 8, !tbaa !1
  %call97 = call void (i32)* @sm_signal(i32 15, void (i32)* %45)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %lor.lhs.false.93
  br label %do.cond.99

do.cond.99:                                       ; preds = %if.end.98
  br label %do.end.100

do.end.100:                                       ; preds = %do.cond.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.end.100
  %call102 = call void (i32)* @sm_signal(i32 10, void (i32)* @sm_signal_noop)
  store void (i32)* %call102, void (i32)** %ousr1, align 8, !tbaa !1
  %46 = load void (i32)*, void (i32)** %ousr1, align 8, !tbaa !1
  %cmp103 = icmp eq void (i32)* %46, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp103, label %if.then.108, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %do.body.101
  %47 = load void (i32)*, void (i32)** %ousr1, align 8, !tbaa !1
  %cmp106 = icmp eq void (i32)* %47, null
  br i1 %cmp106, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %lor.lhs.false.105, %do.body.101
  %48 = load void (i32)*, void (i32)** %ousr1, align 8, !tbaa !1
  %call109 = call void (i32)* @sm_signal(i32 10, void (i32)* %48)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %lor.lhs.false.105
  br label %do.cond.111

do.cond.111:                                      ; preds = %if.end.110
  br label %do.end.112

do.end.112:                                       ; preds = %do.cond.111
  call void @sm_allsignals(i32 0)
  %49 = load i8**, i8*** @SaveArgv, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i8*, i8** %49, i64 0
  %50 = load i8*, i8** %arrayidx113, align 8, !tbaa !1
  %51 = load i8**, i8*** @SaveArgv, align 8, !tbaa !1
  %52 = load i8**, i8*** @ExternalEnviron, align 8, !tbaa !1
  %call114 = call i32 @execve(i8* %50, i8** %51, i8** %52) #1
  %call115 = call i32* @__errno_location() #9
  %53 = load i32, i32* %call115, align 4, !tbaa !5
  store i32 %53, i32* %save_errno, align 4, !tbaa !5
  call void @sm_allsignals(i32 1)
  %54 = load void (i32)*, void (i32)** %oalrm, align 8, !tbaa !1
  %call116 = call void (i32)* @sm_signal(i32 14, void (i32)* %54)
  %55 = load void (i32)*, void (i32)** %ousr1, align 8, !tbaa !1
  %call117 = call void (i32)* @sm_signal(i32 10, void (i32)* %55)
  %56 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call118 = call i32* @__errno_location() #9
  store i32 %56, i32* %call118, align 4, !tbaa !5
  %57 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp119 = icmp sgt i32 %57, 0
  br i1 %cmp119, label %if.then.121, label %if.end.125

if.then.121:                                      ; preds = %do.end.112
  %58 = load i8**, i8*** @SaveArgv, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i8*, i8** %58, i64 0
  %59 = load i8*, i8** %arrayidx122, align 8, !tbaa !1
  %call123 = call i32* @__errno_location() #9
  %60 = load i32, i32* %call123, align 4, !tbaa !5
  %call124 = call i8* @sm_errstring(i32 %60)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.88, i32 0, i32 0), i8* %59, i8* %call124)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.121, %do.end.112
  call void @finis(i32 0, i32 1, i32 72)
  %61 = bitcast void (i32)** %ousr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast void (i32)** %oalrm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast void (i32)** %ignore to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i8** %reason to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %drop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  ret void
}

declare void @restart_marked_work_groups() #2

declare i64 @curtime() #2

declare i32 @refuseconnections(%struct.envelope*, i32, i32) #2

declare i32 @close(i32) #2

; Function Attrs: nounwind uwtable
define internal void @getrequests_checkdiskspace(%struct.envelope* %e) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %logged = alloca i32, align 4
  %idx = alloca i32, align 4
  %now = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i32* %logged to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %logged, align 4, !tbaa !5
  %1 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %call = call i64 @curtime()
  store i64 %call, i64* %now, align 8, !tbaa !19
  %3 = load i64, i64* %now, align 8, !tbaa !19
  %4 = load i64, i64* @NextDiskSpaceCheck, align 8, !tbaa !19
  %cmp = icmp slt i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @enoughdiskspace(i64 0, %struct.envelope* null)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %idx, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %5 = load i32, i32* %idx, align 4, !tbaa !5
  %6 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom
  %d_flags = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx, i32 0, i32 9
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags, i32 0, i64 0
  %8 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %and = and i32 %8, 2
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  br label %for.inc

if.end.7:                                         ; preds = %for.body
  %9 = load i32, i32* %logged, align 4, !tbaa !5
  %tobool8 = icmp ne i32 %9, 0
  br i1 %tobool8, label %if.end.13, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %10 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %10, 8
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.9
  %11 = load i64, i64* @MinBlocksFree, align 8, !tbaa !19
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.123, i32 0, i32 0), i64 %11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.9
  %12 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %13 = load i64, i64* @MinBlocksFree, align 8, !tbaa !19
  call void (i32, %struct.envelope*, i8*, ...) @sm_setproctitle(i32 1, %struct.envelope* %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.123, i32 0, i32 0), i64 %13)
  store i32 1, i32* %logged, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.7
  %14 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom14
  %d_flags16 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx15, i32 0, i32 9
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags16, i32 0, i64 0
  %15 = load i32, i32* %arrayidx17, align 4, !tbaa !5
  %or = or i32 %15, 2
  store i32 %or, i32* %arrayidx17, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.13, %if.then.6
  %16 = load i32, i32* %idx, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %idx, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.43

if.else:                                          ; preds = %if.end
  store i32 0, i32* %idx, align 4, !tbaa !5
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.40, %if.else
  %17 = load i32, i32* %idx, align 4, !tbaa !5
  %18 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %17, %18
  br i1 %cmp19, label %for.body.20, label %for.end.42

for.body.20:                                      ; preds = %for.cond.18
  %19 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom21
  %d_flags23 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx22, i32 0, i32 9
  %arrayidx24 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags23, i32 0, i64 0
  %20 = load i32, i32* %arrayidx24, align 4, !tbaa !5
  %and25 = and i32 %20, 2
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %for.body.20
  br label %for.inc.40

if.end.28:                                        ; preds = %for.body.20
  %21 = load i32, i32* %logged, align 4, !tbaa !5
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.end.34, label %if.then.30

if.then.30:                                       ; preds = %if.end.28
  %22 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %22, 8
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.30
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.124, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.then.30
  store i32 1, i32* %logged, align 4, !tbaa !5
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.28
  %23 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom35 = sext i32 %23 to i64
  %arrayidx36 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom35
  %d_flags37 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx36, i32 0, i32 9
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags37, i32 0, i64 0
  %24 = load i32, i32* %arrayidx38, align 4, !tbaa !5
  %and39 = and i32 %24, -3
  store i32 %and39, i32* %arrayidx38, align 4, !tbaa !5
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.34, %if.then.27
  %25 = load i32, i32* %idx, align 4, !tbaa !5
  %inc41 = add nsw i32 %25, 1
  store i32 %inc41, i32* %idx, align 4, !tbaa !5
  br label %for.cond.18

for.end.42:                                       ; preds = %for.cond.18
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.42, %for.end
  %26 = load i64, i64* %now, align 8, !tbaa !19
  %add = add nsw i64 %26, 60
  store i64 %add, i64* @NextDiskSpaceCheck, align 8, !tbaa !19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then
  %27 = bitcast i64* %now to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %logged to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
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

declare i32 @wordinclass(i8*, i32) #2

declare void @dumpstate(i8*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #5

declare i32 @sm_releasesignal(i32) #2

declare void @sm_setproctitle(i32, %struct.envelope*, i8*, ...) #2

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #2

declare i32 @doqueuerun() #2

declare i32 @runqueue(i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare void @syserr(i8*, ...) #2

declare void @macdefine_tagged(%struct.MACROS_T*, i32, i32, i8*, i8*, i32, i32) #2

declare i32 @macid_parse(i8*, i8**) #2

declare i32 @connection_rate_check(%union.bigsockaddr*, %struct.envelope*) #2

; Function Attrs: nounwind
declare i64 @random() #4

declare i32 @getfallbackmxrr(i8*) #2

; Function Attrs: nounwind
declare i32 @pipe(i32*) #4

; Function Attrs: nounwind
declare i32 @fork() #4

declare i32 @sleep(i32) #2

; Function Attrs: nounwind
declare i32 @getpid() #4

declare void @close_sendmail_pid() #2

declare void @intsig(i32) #2

declare void @sm_exc_newthread(void (%struct.sm_exc*)*) #2

declare void @fatal_error(%struct.sm_exc*) #2

; Function Attrs: nounwind uwtable
define i8* @anynet_ntoa(%union.bigsockaddr* %sap) #0 {
entry:
  %retval = alloca i8*, align 8
  %sap.addr = alloca %union.bigsockaddr*, align 8
  %bp = alloca i8*, align 8
  %ap = alloca i8*, align 8
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %union.bigsockaddr* %sap, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %0 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %ap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %cmp = icmp eq %union.bigsockaddr* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %sa = bitcast %union.bigsockaddr* %4 to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa, i32 0, i32 0
  %5 = load i16, i16* %sa_family, align 2, !tbaa !24
  %conv = zext i16 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %6 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %sa5 = bitcast %union.bigsockaddr* %6 to %struct.sockaddr*
  %sa_family6 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa5, i32 0, i32 0
  %7 = load i16, i16* %sa_family6, align 2, !tbaa !24
  %conv7 = zext i16 %7 to i32
  switch i32 %conv7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %if.end.4
  %8 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %sunix = bitcast %union.bigsockaddr* %8 to %struct.sockaddr_un*
  %sun_path = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %sunix, i32 0, i32 1
  %arrayidx = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path, i32 0, i64 0
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %sw.bb
  %10 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %sunix12 = bitcast %union.bigsockaddr* %10 to %struct.sockaddr_un*
  %sun_path13 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %sunix12, i32 0, i32 1
  %arraydecay = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path13, i32 0, i32 0
  %call = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @anynet_ntoa.buf, i32 0, i32 0), i64 100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8* %arraydecay)
  br label %if.end.15

if.else:                                          ; preds = %sw.bb
  %call14 = call i64 @sm_strlcpy(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @anynet_ntoa.buf, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.119, i32 0, i32 0), i64 100)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.11
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @anynet_ntoa.buf, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.16:                                         ; preds = %if.end.4
  %11 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %sin = bitcast %union.bigsockaddr* %11 to %struct.sockaddr_in*
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 2
  %coerce.dive = getelementptr %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  %12 = load i32, i32* %coerce.dive, align 4
  %call17 = call i8* @inet_ntoa(i32 %12) #1
  store i8* %call17, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.end.4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %13 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %sa18 = bitcast %union.bigsockaddr* %13 to %struct.sockaddr*
  %sa_family19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa18, i32 0, i32 0
  %14 = load i16, i16* %sa_family19, align 2, !tbaa !24
  %conv20 = zext i16 %14 to i32
  %call21 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @anynet_ntoa.buf, i32 0, i32 0), i64 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i32 %conv20)
  %call22 = call i64 @strlen(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @anynet_ntoa.buf, i32 0, i32 0)) #11
  %arrayidx23 = getelementptr inbounds [100 x i8], [100 x i8]* @anynet_ntoa.buf, i32 0, i64 %call22
  store i8* %arrayidx23, i8** %bp, align 8, !tbaa !1
  %15 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %sa24 = bitcast %union.bigsockaddr* %15 to %struct.sockaddr*
  %sa_data = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa24, i32 0, i32 1
  %arraydecay25 = getelementptr inbounds [14 x i8], [14 x i8]* %sa_data, i32 0, i32 0
  store i8* %arraydecay25, i8** %ap, align 8, !tbaa !1
  store i32 14, i32* %l, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %sw.epilog
  %16 = load i32, i32* %l, align 4, !tbaa !5
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %l, align 4, !tbaa !5
  %cmp26 = icmp sge i32 %dec, 0
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %bp, align 8, !tbaa !1
  %18 = load i8*, i8** %bp, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([100 x i8]* @anynet_ntoa.buf to i64)
  %sub = sub i64 100, %sub.ptr.sub
  %19 = load i8*, i8** %ap, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %ap, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !13
  %conv28 = sext i8 %20 to i32
  %and = and i32 %conv28, 255
  %call29 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %17, i64 %sub, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i32 0, i32 0), i32 %and)
  %21 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 3
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr30 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %incdec.ptr30, i8** %bp, align 8, !tbaa !1
  store i8 0, i8* %incdec.ptr30, align 1, !tbaa !13
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @anynet_ntoa.buf, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.bb.16, %if.end.15, %if.then.3, %if.then
  %23 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i8** %ap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i8*, i8** %retval
  ret i8* %26
}

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #2

declare void @clrcontrol() #2

declare void @proc_list_clear() #2

declare void @set_delivery_mode(i32, %struct.envelope*) #2

declare i64 @read(i32, i8*, i64) #2

declare void @control_command(i32, %struct.envelope*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define i8* @hostnamebyanyaddr(%union.bigsockaddr* %sap) #0 {
entry:
  %retval = alloca i8*, align 8
  %sap.addr = alloca %union.bigsockaddr*, align 8
  %hp = alloca %struct.hostent*, align 8
  %saveretry = alloca i32, align 4
  %name = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %union.bigsockaddr* %sap, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %0 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %saveretry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %call = call %struct.__res_state* @__res_state() #9
  %retry = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call, i32 0, i32 1
  %2 = load i32, i32* %retry, align 4, !tbaa !52
  store i32 %2, i32* %saveretry, align 4, !tbaa !5
  %call1 = call %struct.__res_state* @__res_state() #9
  %retry2 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call1, i32 0, i32 1
  %3 = load i32, i32* %retry2, align 4, !tbaa !52
  %call3 = call %struct.__res_state* @__res_state() #9
  %retrans = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call3, i32 0, i32 0
  %4 = load i32, i32* %retrans, align 4, !tbaa !54
  %mul = mul nsw i32 %3, %4
  %cmp = icmp sgt i32 %mul, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call %struct.__res_state* @__res_state() #9
  %retrans5 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call4, i32 0, i32 0
  %5 = load i32, i32* %retrans5, align 4, !tbaa !54
  %div = sdiv i32 20, %5
  %call6 = call %struct.__res_state* @__res_state() #9
  %retry7 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call6, i32 0, i32 1
  store i32 %div, i32* %retry7, align 4, !tbaa !52
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call8 = call %struct.__res_state* @__res_state() #9
  %retry9 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call8, i32 0, i32 1
  %6 = load i32, i32* %retry9, align 4, !tbaa !52
  %cmp10 = icmp eq i32 %6, 0
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end
  %call12 = call %struct.__res_state* @__res_state() #9
  %retry13 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call12, i32 0, i32 1
  store i32 1, i32* %retry13, align 4, !tbaa !52
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end
  %7 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %sa = bitcast %union.bigsockaddr* %7 to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa, i32 0, i32 0
  %8 = load i16, i16* %sa_family, align 2, !tbaa !24
  %conv = zext i16 %8 to i32
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %if.end.14
  %9 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %sin = bitcast %union.bigsockaddr* %9 to %struct.sockaddr_in*
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 2
  %10 = bitcast %struct.in_addr* %sin_addr to i8*
  %call15 = call %struct.hostent* @sm_gethostbyaddr(i8* %10, i32 4, i32 2)
  store %struct.hostent* %call15, %struct.hostent** %hp, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end.14
  store %struct.hostent* null, %struct.hostent** %hp, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.14
  %11 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %sa17 = bitcast %union.bigsockaddr* %11 to %struct.sockaddr*
  %sa_data = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa17, i32 0, i32 1
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %sa_data, i32 0, i32 0
  %12 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %sa18 = bitcast %union.bigsockaddr* %12 to %struct.sockaddr*
  %sa_family19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa18, i32 0, i32 0
  %13 = load i16, i16* %sa_family19, align 2, !tbaa !24
  %conv20 = zext i16 %13 to i32
  %call21 = call %struct.hostent* @sm_gethostbyaddr(i8* %arraydecay, i32 14, i32 %conv20)
  store %struct.hostent* %call21, %struct.hostent** %hp, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.16, %sw.bb
  %14 = load i32, i32* %saveretry, align 4, !tbaa !5
  %call22 = call %struct.__res_state* @__res_state() #9
  %retry23 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call22, i32 0, i32 1
  store i32 %14, i32* %retry23, align 4, !tbaa !52
  %15 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %cmp24 = icmp ne %struct.hostent* %15, null
  br i1 %cmp24, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %sw.epilog
  %16 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_name = getelementptr inbounds %struct.hostent, %struct.hostent* %16, i32 0, i32 0
  %17 = load i8*, i8** %h_name, align 8, !tbaa !55
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv26 = sext i8 %18 to i32
  %cmp27 = icmp ne i32 %conv26, 91
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.37

land.lhs.true.29:                                 ; preds = %land.lhs.true
  %19 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_name30 = getelementptr inbounds %struct.hostent, %struct.hostent* %19, i32 0, i32 0
  %20 = load i8*, i8** %h_name30, align 8, !tbaa !55
  %call31 = call i32 @inet_addr(i8* %20) #1
  %cmp32 = icmp eq i32 %call31, -1
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %land.lhs.true.29
  %21 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_name35 = getelementptr inbounds %struct.hostent, %struct.hostent* %22, i32 0, i32 0
  %23 = load i8*, i8** %h_name35, align 8, !tbaa !55
  %call36 = call i8* @denlstring(i8* %23, i32 1, i32 1)
  store i8* %call36, i8** %name, align 8, !tbaa !1
  %24 = load i8*, i8** %name, align 8, !tbaa !1
  store i8* %24, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  %25 = bitcast i8** %name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  br label %cleanup

if.end.37:                                        ; preds = %land.lhs.true.29, %land.lhs.true, %sw.epilog
  %26 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %sa38 = bitcast %union.bigsockaddr* %26 to %struct.sockaddr*
  %sa_family39 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa38, i32 0, i32 0
  %27 = load i16, i16* %sa_family39, align 2, !tbaa !24
  %conv40 = zext i16 %27 to i32
  %cmp41 = icmp eq i32 %conv40, 1
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.49

land.lhs.true.43:                                 ; preds = %if.end.37
  %28 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %sunix = bitcast %union.bigsockaddr* %28 to %struct.sockaddr_un*
  %sun_path = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %sunix, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path, i32 0, i64 0
  %29 = load i8, i8* %arrayidx44, align 1, !tbaa !13
  %conv45 = sext i8 %29 to i32
  %cmp46 = icmp eq i32 %conv45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %land.lhs.true.43
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %land.lhs.true.43, %if.end.37
  %30 = load %union.bigsockaddr*, %union.bigsockaddr** %sap.addr, align 8, !tbaa !1
  %call50 = call i8* @anynet_ntoa(%union.bigsockaddr* %30)
  %call51 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @hostnamebyanyaddr.buf, i32 0, i32 0), i64 203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.122, i32 0, i32 0), i8* %call50)
  store i8* getelementptr inbounds ([203 x i8], [203 x i8]* @hostnamebyanyaddr.buf, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.49, %if.then.48, %if.then.34
  %31 = bitcast i32* %saveretry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i8*, i8** %retval
  ret i8* %33
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare i8* @newstr(i8*) #2

; Function Attrs: nounwind readnone
declare i32* @__h_errno_location() #3

declare void @markstats(%struct.envelope*, %struct.address*, i32) #2

declare %struct.sm_file* @sm_io_open(%struct.sm_file*, i32, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare i32 @dup(i32) #4

declare void @finis(i32, i32, i32) #2

declare void @sm_io_automode(%struct.sm_file*, %struct.sm_file*) #2

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #4

declare i32 @sm_io_getinfo(%struct.sm_file*, i32, i8*) #2

declare i32 @isloopback(%union.bigsockaddr* byval align 8) #2

; Function Attrs: nounwind uwtable
define void @clrdaemon() #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom
  %d_socket = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %d_socket, align 4, !tbaa !18
  %cmp1 = icmp sge i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom2
  %d_socket4 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx3, i32 0, i32 0
  %6 = load i32, i32* %d_socket4, align 4, !tbaa !18
  %call = call i32 @close(i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom5
  %d_socket7 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx6, i32 0, i32 0
  store i32 -1, i32* %d_socket7, align 4, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @getmodifiers(i8* %v, i32* %modifiers) #0 {
entry:
  %retval = alloca i8*, align 8
  %v.addr = alloca i8*, align 8
  %modifiers.addr = alloca i32*, align 8
  %l = alloca i32, align 4
  %h = alloca i8*, align 8
  %f = alloca i8*, align 8
  %flags = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %v, i8** %v.addr, align 8, !tbaa !1
  store i32* %modifiers, i32** %modifiers.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %flags to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %4) #11
  %mul = mul i64 3, %call
  %add = add i64 %mul, 3
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %l, align 4, !tbaa !5
  %5 = load i32, i32* %l, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %l, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %6, 256
  br i1 %cmp2, label %if.then, label %if.end.7

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %7, 2
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %l, align 4, !tbaa !5
  %call8 = call i8* @xalloc_tagged(i32 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 1386)
  store i8* %call8, i8** %flags, align 8, !tbaa !1
  %9 = load i8*, i8** %flags, align 8, !tbaa !1
  store i8* %9, i8** %f, align 8, !tbaa !1
  %10 = load i32*, i32** %modifiers.addr, align 8, !tbaa !1
  %11 = bitcast i32* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 32, i32 1, i1 false)
  %12 = load i8*, i8** %v.addr, align 8, !tbaa !1
  store i8* %12, i8** %h, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %13 = load i8*, i8** %h, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !13
  %conv9 = sext i8 %14 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %h, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !13
  %conv12 = sext i8 %16 to i32
  %and = and i32 %conv12, -128
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %for.body
  %17 = load i8*, i8** %h, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !13
  %conv15 = sext i8 %18 to i32
  %idxprom = sext i32 %conv15 to i64
  %call16 = call i16** @__ctype_b_loc() #9
  %19 = load i16*, i16** %call16, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %19, i64 %idxprom
  %20 = load i16, i16* %arrayidx, align 2, !tbaa !15
  %conv17 = zext i16 %20 to i32
  %and18 = and i32 %conv17, 8192
  %tobool = icmp ne i32 %and18, 0
  br i1 %tobool, label %if.end.47, label %land.lhs.true.19

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %21 = load i8*, i8** %h, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !13
  %conv20 = sext i8 %22 to i32
  %idxprom21 = sext i32 %conv20 to i64
  %call22 = call i16** @__ctype_b_loc() #9
  %23 = load i16*, i16** %call22, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %23, i64 %idxprom21
  %24 = load i16, i16* %arrayidx23, align 2, !tbaa !15
  %conv24 = zext i16 %24 to i32
  %and25 = and i32 %conv24, 16384
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.47

if.then.27:                                       ; preds = %land.lhs.true.19
  %25 = load i8*, i8** %h, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !13
  %conv28 = zext i8 %26 to i64
  %rem = urem i64 %conv28, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %27 = load i8*, i8** %h, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !13
  %conv29 = zext i8 %28 to i64
  %div = udiv i64 %conv29, 32
  %and30 = and i64 %div, 7
  %29 = load i32*, i32** %modifiers.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i32, i32* %29, i64 %and30
  %30 = load i32, i32* %arrayidx31, align 4, !tbaa !5
  %or = or i32 %30, %shl
  store i32 %or, i32* %arrayidx31, align 4, !tbaa !5
  %31 = load i8*, i8** %flags, align 8, !tbaa !1
  %32 = load i8*, i8** %f, align 8, !tbaa !1
  %cmp32 = icmp ne i8* %31, %32
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.27
  %33 = load i8*, i8** %flags, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %flags, align 8, !tbaa !1
  store i8 32, i8* %33, align 1, !tbaa !13
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.27
  %34 = load i8*, i8** %h, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !13
  %36 = load i8*, i8** %flags, align 8, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr36, i8** %flags, align 8, !tbaa !1
  store i8 %35, i8* %36, align 1, !tbaa !13
  %37 = load i8*, i8** %h, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !13
  %conv37 = sext i8 %38 to i32
  %idxprom38 = sext i32 %conv37 to i64
  %call39 = call i16** @__ctype_b_loc() #9
  %39 = load i16*, i16** %call39, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i16, i16* %39, i64 %idxprom38
  %40 = load i16, i16* %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %40 to i32
  %and42 = and i32 %conv41, 256
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.35
  %41 = load i8*, i8** %h, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !13
  %43 = load i8*, i8** %flags, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr45, i8** %flags, align 8, !tbaa !1
  store i8 %42, i8* %43, align 1, !tbaa !13
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.35
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true.19, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %44 = load i8*, i8** %h, align 8, !tbaa !1
  %incdec.ptr48 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr48, i8** %h, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i8*, i8** %flags, align 8, !tbaa !1
  %incdec.ptr49 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr49, i8** %flags, align 8, !tbaa !1
  store i8 0, i8* %45, align 1, !tbaa !13
  %46 = load i8*, i8** %f, align 8, !tbaa !1
  store i8* %46, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end
  %47 = bitcast i8** %flags to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i8** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i8** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = load i8*, i8** %retval
  ret i8* %51
}

declare i8* @xalloc_tagged(i32, i8*, i32) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind uwtable
define i32 @chkdaemonmodifiers(i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %flag, i32* %flag.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %flag.addr, align 4, !tbaa !5
  %conv = trunc i32 %3 to i8
  %conv1 = zext i8 %conv to i64
  %div = udiv i64 %conv1, 32
  %and = and i64 %div, 7
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom
  %d_flags = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx, i32 0, i32 9
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags, i32 0, i64 %and
  %5 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  %6 = load i32, i32* %flag.addr, align 4, !tbaa !5
  %conv3 = trunc i32 %6 to i8
  %conv4 = zext i8 %conv3 to i64
  %rem = urem i64 %conv4, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and5 = and i32 %5, %shl
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @setdaemonoptions(i8* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %num = alloca [30 x i8], align 16
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  %0 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom
  %d_socket = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx, i32 0, i32 0
  store i32 -1, i32* %d_socket, align 4, !tbaa !18
  %2 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom1
  %d_listenqueue = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx2, i32 0, i32 3
  store i32 10, i32* %d_listenqueue, align 4, !tbaa !45
  %3 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom3
  %d_flags = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx4, i32 0, i32 9
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags, i32 0, i32 0
  %4 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 32, i32 1, i1 false)
  %5 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %6 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom5
  call void @setsockaddroptions(i8* %5, %struct.daemon* %arrayidx6)
  %7 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom7
  %d_inputfilterlist = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx8, i32 0, i32 17
  %8 = load i8*, i8** %d_inputfilterlist, align 8, !tbaa !35
  %cmp9 = icmp ne i8* %8, null
  br i1 %cmp9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end
  %9 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom11
  %d_inputfilterlist13 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx12, i32 0, i32 17
  %10 = load i8*, i8** %d_inputfilterlist13, align 8, !tbaa !35
  %call = call i8* @newstr(i8* %10)
  %11 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom14
  %d_inputfilterlist16 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx15, i32 0, i32 17
  store i8* %call, i8** %d_inputfilterlist16, align 8, !tbaa !35
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.10, %if.end
  %12 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom18
  %d_name = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx19, i32 0, i32 11
  %13 = load i8*, i8** %d_name, align 8, !tbaa !14
  %cmp20 = icmp ne i8* %13, null
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.17
  %14 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom22 = sext i32 %14 to i64
  %arrayidx23 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom22
  %d_name24 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx23, i32 0, i32 11
  %15 = load i8*, i8** %d_name24, align 8, !tbaa !14
  %call25 = call i8* @newstr(i8* %15)
  %16 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom26
  %d_name28 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx27, i32 0, i32 11
  store i8* %call25, i8** %d_name28, align 8, !tbaa !14
  br label %if.end.36

if.else:                                          ; preds = %if.end.17
  %17 = bitcast [30 x i8]* %num to i8*
  call void @llvm.lifetime.start(i64 30, i8* %17) #1
  %arraydecay29 = getelementptr inbounds [30 x i8], [30 x i8]* %num, i32 0, i32 0
  %18 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %call30 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay29, i64 30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %18)
  %arraydecay31 = getelementptr inbounds [30 x i8], [30 x i8]* %num, i32 0, i32 0
  %call32 = call i8* @newstr(i8* %arraydecay31)
  %19 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom33 = sext i32 %19 to i64
  %arrayidx34 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom33
  %d_name35 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx34, i32 0, i32 11
  store i8* %call32, i8** %d_name35, align 8, !tbaa !14
  %20 = bitcast [30 x i8]* %num to i8*
  call void @llvm.lifetime.end(i64 30, i8* %20) #1
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.21
  %21 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 37), align 1, !tbaa !13
  %conv = zext i8 %21 to i32
  %cmp37 = icmp sge i32 %conv, 1
  br i1 %cmp37, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.end.36
  %22 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end.45, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true
  %23 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom40 = sext i32 %23 to i64
  %arrayidx41 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom40
  %d_name42 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx41, i32 0, i32 11
  %24 = load i8*, i8** %d_name42, align 8, !tbaa !14
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), i8* %24)
  %25 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom43 = sext i32 %25 to i64
  %arrayidx44 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom43
  call void @printdaemonflags(%struct.daemon* %arrayidx44)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.39, %land.lhs.true, %if.end.36
  %26 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* @NDaemons, align 4, !tbaa !5
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal void @setsockaddroptions(i8* %p, %struct.daemon* %d) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %d.addr = alloca %struct.daemon*, align 8
  %port = alloca i8*, align 8
  %addr = alloca i8*, align 8
  %f = alloca i8*, align 8
  %v = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %hp = alloca %struct.hostent*, align 8
  %__v = alloca i16, align 2
  %__x = alloca i16, align 2
  %tmp = alloca i16, align 2
  %sp = alloca %struct.servent*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store %struct.daemon* %d, %struct.daemon** %d.addr, align 8, !tbaa !1
  %0 = bitcast i8** %port to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %port, align 8, !tbaa !1
  %1 = bitcast i8** %addr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* null, i8** %addr, align 8, !tbaa !1
  %2 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr = getelementptr inbounds %struct.daemon, %struct.daemon* %2, i32 0, i32 1
  %sa = bitcast %union.bigsockaddr* %d_addr to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa, i32 0, i32 0
  %3 = load i16, i16* %sa_family, align 2, !tbaa !24
  %conv = zext i16 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr2 = getelementptr inbounds %struct.daemon, %struct.daemon* %4, i32 0, i32 1
  %sa3 = bitcast %union.bigsockaddr* %d_addr2 to %struct.sockaddr*
  %sa_family4 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa3, i32 0, i32 0
  store i16 2, i16* %sa_family4, align 2, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_dm = getelementptr inbounds %struct.daemon, %struct.daemon* %5, i32 0, i32 12
  store i32 -1, i32* %d_dm, align 4, !tbaa !30
  %6 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_refuseLA = getelementptr inbounds %struct.daemon, %struct.daemon* %6, i32 0, i32 13
  store i32 -1, i32* %d_refuseLA, align 4, !tbaa !31
  %7 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_queueLA = getelementptr inbounds %struct.daemon, %struct.daemon* %7, i32 0, i32 14
  store i32 -1, i32* %d_queueLA, align 4, !tbaa !32
  %8 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_delayLA = getelementptr inbounds %struct.daemon, %struct.daemon* %8, i32 0, i32 15
  store i32 -1, i32* %d_delayLA, align 4, !tbaa !33
  %9 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_maxchildren = getelementptr inbounds %struct.daemon, %struct.daemon* %9, i32 0, i32 16
  store i32 -1, i32* %d_maxchildren, align 4, !tbaa !34
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end
  %10 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %cmp5 = icmp ne i8* %10, null
  br i1 %cmp5, label %while.body, label %while.end.121

while.body:                                       ; preds = %while.cond
  %11 = bitcast i8** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i8** %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.14, %while.body
  %13 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !13
  %conv8 = sext i8 %14 to i32
  %and = and i32 %conv8, -128
  %cmp9 = icmp eq i32 %and, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.7
  %15 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !13
  %conv11 = sext i8 %16 to i32
  %idxprom = sext i32 %conv11 to i64
  %call = call i16** @__ctype_b_loc() #9
  %17 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %17, i64 %idxprom
  %18 = load i16, i16* %arrayidx, align 2, !tbaa !15
  %conv12 = zext i16 %18 to i32
  %and13 = and i32 %conv12, 8192
  %tobool = icmp ne i32 %and13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.7
  %19 = phi i1 [ false, %while.cond.7 ], [ %tobool, %land.rhs ]
  br i1 %19, label %while.body.14, label %while.end

while.body.14:                                    ; preds = %land.end
  %20 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond.7

while.end:                                        ; preds = %land.end
  %21 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !13
  %conv15 = sext i8 %22 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.end
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %while.end
  %23 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8* %23, i8** %f, align 8, !tbaa !1
  %24 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %call20 = call i8* @strchr(i8* %24, i32 44) #1
  store i8* %call20, i8** %p.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %cmp21 = icmp ne i8* %25, null
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.19
  %26 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr24, i8** %p.addr, align 8, !tbaa !1
  store i8 0, i8* %26, align 1, !tbaa !13
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.19
  %27 = load i8*, i8** %f, align 8, !tbaa !1
  %call26 = call i8* @strchr(i8* %27, i32 61) #1
  store i8* %call26, i8** %v, align 8, !tbaa !1
  %28 = load i8*, i8** %v, align 8, !tbaa !1
  %cmp27 = icmp eq i8* %28, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.25
  br label %while.cond.31

while.cond.31:                                    ; preds = %while.body.46, %if.end.30
  %29 = load i8*, i8** %v, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr32, i8** %v, align 8, !tbaa !1
  %30 = load i8, i8* %incdec.ptr32, align 1, !tbaa !13
  %conv33 = sext i8 %30 to i32
  %and34 = and i32 %conv33, -128
  %cmp35 = icmp eq i32 %and34, 0
  br i1 %cmp35, label %land.rhs.37, label %land.end.45

land.rhs.37:                                      ; preds = %while.cond.31
  %31 = load i8*, i8** %v, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !13
  %conv38 = sext i8 %32 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %call40 = call i16** @__ctype_b_loc() #9
  %33 = load i16*, i16** %call40, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i16, i16* %33, i64 %idxprom39
  %34 = load i16, i16* %arrayidx41, align 2, !tbaa !15
  %conv42 = zext i16 %34 to i32
  %and43 = and i32 %conv42, 8192
  %tobool44 = icmp ne i32 %and43, 0
  br label %land.end.45

land.end.45:                                      ; preds = %land.rhs.37, %while.cond.31
  %35 = phi i1 [ false, %while.cond.31 ], [ %tobool44, %land.rhs.37 ]
  br i1 %35, label %while.body.46, label %while.end.47

while.body.46:                                    ; preds = %land.end.45
  br label %while.cond.31

while.end.47:                                     ; preds = %land.end.45
  %36 = load i8*, i8** %f, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !13
  %conv48 = sext i8 %37 to i32
  switch i32 %conv48, label %sw.default.118 [
    i32 65, label %sw.bb
    i32 97, label %sw.bb
    i32 99, label %sw.bb.49
    i32 68, label %sw.bb.52
    i32 100, label %sw.bb.58
    i32 70, label %sw.bb.61
    i32 102, label %sw.bb.61
    i32 73, label %sw.bb.101
    i32 105, label %sw.bb.101
    i32 76, label %sw.bb.102
    i32 108, label %sw.bb.102
    i32 77, label %sw.bb.104
    i32 109, label %sw.bb.104
    i32 78, label %sw.bb.106
    i32 110, label %sw.bb.106
    i32 80, label %sw.bb.107
    i32 112, label %sw.bb.107
    i32 113, label %sw.bb.108
    i32 82, label %sw.bb.111
    i32 114, label %sw.bb.113
    i32 83, label %sw.bb.116
    i32 115, label %sw.bb.116
  ]

sw.bb:                                            ; preds = %while.end.47, %while.end.47
  %38 = load i8*, i8** %v, align 8, !tbaa !1
  store i8* %38, i8** %addr, align 8, !tbaa !1
  br label %sw.epilog.119

sw.bb.49:                                         ; preds = %while.end.47
  %39 = load i8*, i8** %v, align 8, !tbaa !1
  %call50 = call i32 @atoi(i8* %39) #11
  %40 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_maxchildren51 = getelementptr inbounds %struct.daemon, %struct.daemon* %40, i32 0, i32 16
  store i32 %call50, i32* %d_maxchildren51, align 4, !tbaa !34
  br label %sw.epilog.119

sw.bb.52:                                         ; preds = %while.end.47
  %41 = load i8*, i8** %v, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !13
  %conv53 = sext i8 %42 to i32
  switch i32 %conv53, label %sw.default [
    i32 113, label %sw.bb.54
    i32 100, label %sw.bb.54
    i32 105, label %sw.bb.54
    i32 98, label %sw.bb.54
  ]

sw.bb.54:                                         ; preds = %sw.bb.52, %sw.bb.52, %sw.bb.52, %sw.bb.52
  %43 = load i8*, i8** %v, align 8, !tbaa !1
  %44 = load i8, i8* %43, align 1, !tbaa !13
  %conv55 = sext i8 %44 to i32
  %45 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_dm56 = getelementptr inbounds %struct.daemon, %struct.daemon* %45, i32 0, i32 12
  store i32 %conv55, i32* %d_dm56, align 4, !tbaa !30
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.52
  %46 = load i8*, i8** %v, align 8, !tbaa !1
  %47 = load i8, i8* %46, align 1, !tbaa !13
  %conv57 = sext i8 %47 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.140, i32 0, i32 0), i32 %conv57)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.54
  br label %sw.epilog.119

sw.bb.58:                                         ; preds = %while.end.47
  %48 = load i8*, i8** %v, align 8, !tbaa !1
  %call59 = call i32 @atoi(i8* %48) #11
  %49 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_delayLA60 = getelementptr inbounds %struct.daemon, %struct.daemon* %49, i32 0, i32 15
  store i32 %call59, i32* %d_delayLA60, align 4, !tbaa !33
  br label %sw.epilog.119

sw.bb.61:                                         ; preds = %while.end.47, %while.end.47
  %50 = load i8*, i8** %v, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !13
  %conv62 = sext i8 %51 to i32
  %and63 = and i32 %conv62, -128
  %cmp64 = icmp eq i32 %and63, 0
  br i1 %cmp64, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb.61
  %52 = load i8*, i8** %v, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !13
  %conv66 = sext i8 %53 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %call68 = call i16** @__ctype_b_loc() #9
  %54 = load i16*, i16** %call68, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i16, i16* %54, i64 %idxprom67
  %55 = load i16, i16* %arrayidx69, align 2, !tbaa !15
  %conv70 = zext i16 %55 to i32
  %and71 = and i32 %conv70, 2048
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then.73, label %if.else

if.then.73:                                       ; preds = %land.lhs.true
  %56 = load i8*, i8** %v, align 8, !tbaa !1
  %call74 = call i32 @atoi(i8* %56) #11
  %conv75 = trunc i32 %call74 to i16
  %57 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr76 = getelementptr inbounds %struct.daemon, %struct.daemon* %57, i32 0, i32 1
  %sa77 = bitcast %union.bigsockaddr* %d_addr76 to %struct.sockaddr*
  %sa_family78 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa77, i32 0, i32 0
  store i16 %conv75, i16* %sa_family78, align 2, !tbaa !24
  br label %if.end.100

if.else:                                          ; preds = %land.lhs.true, %sw.bb.61
  %58 = load i8*, i8** %v, align 8, !tbaa !1
  %call79 = call i32 @sm_strcasecmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i32 0, i32 0))
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.then.85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %59 = load i8*, i8** %v, align 8, !tbaa !1
  %call82 = call i32 @sm_strcasecmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %if.then.85, label %if.else.89

if.then.85:                                       ; preds = %lor.lhs.false, %if.else
  %60 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr86 = getelementptr inbounds %struct.daemon, %struct.daemon* %60, i32 0, i32 1
  %sa87 = bitcast %union.bigsockaddr* %d_addr86 to %struct.sockaddr*
  %sa_family88 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa87, i32 0, i32 0
  store i16 1, i16* %sa_family88, align 2, !tbaa !24
  br label %if.end.99

if.else.89:                                       ; preds = %lor.lhs.false
  %61 = load i8*, i8** %v, align 8, !tbaa !1
  %call90 = call i32 @sm_strcasecmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0))
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then.93, label %if.else.97

if.then.93:                                       ; preds = %if.else.89
  %62 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr94 = getelementptr inbounds %struct.daemon, %struct.daemon* %62, i32 0, i32 1
  %sa95 = bitcast %union.bigsockaddr* %d_addr94 to %struct.sockaddr*
  %sa_family96 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa95, i32 0, i32 0
  store i16 2, i16* %sa_family96, align 2, !tbaa !24
  br label %if.end.98

if.else.97:                                       ; preds = %if.else.89
  %63 = load i8*, i8** %v, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.142, i32 0, i32 0), i8* %63)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.97, %if.then.93
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.85
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.73
  br label %sw.epilog.119

sw.bb.101:                                        ; preds = %while.end.47, %while.end.47
  %64 = load i8*, i8** %v, align 8, !tbaa !1
  %65 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_inputfilterlist = getelementptr inbounds %struct.daemon, %struct.daemon* %65, i32 0, i32 17
  store i8* %64, i8** %d_inputfilterlist, align 8, !tbaa !35
  br label %sw.epilog.119

sw.bb.102:                                        ; preds = %while.end.47, %while.end.47
  %66 = load i8*, i8** %v, align 8, !tbaa !1
  %call103 = call i32 @atoi(i8* %66) #11
  %67 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_listenqueue = getelementptr inbounds %struct.daemon, %struct.daemon* %67, i32 0, i32 3
  store i32 %call103, i32* %d_listenqueue, align 4, !tbaa !45
  br label %sw.epilog.119

sw.bb.104:                                        ; preds = %while.end.47, %while.end.47
  %68 = load i8*, i8** %v, align 8, !tbaa !1
  %69 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_flags = getelementptr inbounds %struct.daemon, %struct.daemon* %69, i32 0, i32 9
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags, i32 0, i32 0
  %call105 = call i8* @getmodifiers(i8* %68, i32* %arraydecay)
  %70 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_mflags = getelementptr inbounds %struct.daemon, %struct.daemon* %70, i32 0, i32 10
  store i8* %call105, i8** %d_mflags, align 8, !tbaa !28
  br label %sw.epilog.119

sw.bb.106:                                        ; preds = %while.end.47, %while.end.47
  %71 = load i8*, i8** %v, align 8, !tbaa !1
  %72 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_name = getelementptr inbounds %struct.daemon, %struct.daemon* %72, i32 0, i32 11
  store i8* %71, i8** %d_name, align 8, !tbaa !14
  br label %sw.epilog.119

sw.bb.107:                                        ; preds = %while.end.47, %while.end.47
  %73 = load i8*, i8** %v, align 8, !tbaa !1
  store i8* %73, i8** %port, align 8, !tbaa !1
  br label %sw.epilog.119

sw.bb.108:                                        ; preds = %while.end.47
  %74 = load i8*, i8** %v, align 8, !tbaa !1
  %call109 = call i32 @atoi(i8* %74) #11
  %75 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_queueLA110 = getelementptr inbounds %struct.daemon, %struct.daemon* %75, i32 0, i32 14
  store i32 %call109, i32* %d_queueLA110, align 4, !tbaa !32
  br label %sw.epilog.119

sw.bb.111:                                        ; preds = %while.end.47
  %76 = load i8*, i8** %v, align 8, !tbaa !1
  %call112 = call i32 @atoi(i8* %76) #11
  %77 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_tcprcvbufsize = getelementptr inbounds %struct.daemon, %struct.daemon* %77, i32 0, i32 4
  store i32 %call112, i32* %d_tcprcvbufsize, align 4, !tbaa !43
  br label %sw.epilog.119

sw.bb.113:                                        ; preds = %while.end.47
  %78 = load i8*, i8** %v, align 8, !tbaa !1
  %call114 = call i32 @atoi(i8* %78) #11
  %79 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_refuseLA115 = getelementptr inbounds %struct.daemon, %struct.daemon* %79, i32 0, i32 13
  store i32 %call114, i32* %d_refuseLA115, align 4, !tbaa !31
  br label %sw.epilog.119

sw.bb.116:                                        ; preds = %while.end.47, %while.end.47
  %80 = load i8*, i8** %v, align 8, !tbaa !1
  %call117 = call i32 @atoi(i8* %80) #11
  %81 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_tcpsndbufsize = getelementptr inbounds %struct.daemon, %struct.daemon* %81, i32 0, i32 5
  store i32 %call117, i32* %d_tcpsndbufsize, align 4, !tbaa !44
  br label %sw.epilog.119

sw.default.118:                                   ; preds = %while.end.47
  %82 = load i8*, i8** %f, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.143, i32 0, i32 0), i8* %82)
  br label %sw.epilog.119

sw.epilog.119:                                    ; preds = %sw.default.118, %sw.bb.116, %sw.bb.113, %sw.bb.111, %sw.bb.108, %sw.bb.107, %sw.bb.106, %sw.bb.104, %sw.bb.102, %sw.bb.101, %if.end.100, %sw.bb.58, %sw.epilog, %sw.bb.49, %sw.bb
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.119, %if.then.29, %if.then.18
  %83 = bitcast i8** %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i8** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end.121
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.121:                                    ; preds = %cleanup, %while.cond
  %85 = load i8*, i8** %addr, align 8, !tbaa !1
  %cmp122 = icmp ne i8* %85, null
  br i1 %cmp122, label %if.then.124, label %if.end.194

if.then.124:                                      ; preds = %while.end.121
  %86 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr125 = getelementptr inbounds %struct.daemon, %struct.daemon* %86, i32 0, i32 1
  %sa126 = bitcast %union.bigsockaddr* %d_addr125 to %struct.sockaddr*
  %sa_family127 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa126, i32 0, i32 0
  %87 = load i16, i16* %sa_family127, align 2, !tbaa !24
  %conv128 = zext i16 %87 to i32
  switch i32 %conv128, label %sw.default.188 [
    i32 1, label %sw.bb.129
    i32 2, label %sw.bb.141
  ]

sw.bb.129:                                        ; preds = %if.then.124
  %88 = load i8*, i8** %addr, align 8, !tbaa !1
  %call130 = call i64 @strlen(i8* %88) #11
  %cmp131 = icmp uge i64 %call130, 108
  br i1 %cmp131, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %sw.bb.129
  %call134 = call i32* @__errno_location() #9
  store i32 36, i32* %call134, align 4, !tbaa !5
  %89 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.144, i32 0, i32 0), i8* %89, i64 108)
  br label %sw.epilog.193

if.end.135:                                       ; preds = %sw.bb.129
  %90 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr136 = getelementptr inbounds %struct.daemon, %struct.daemon* %90, i32 0, i32 1
  %sunix = bitcast %union.bigsockaddr* %d_addr136 to %struct.sockaddr_un*
  %sun_path = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %sunix, i32 0, i32 1
  %91 = bitcast [108 x i8]* %sun_path to i8*
  call void @llvm.memset.p0i8.i64(i8* %91, i8 0, i64 108, i32 2, i1 false)
  %92 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr137 = getelementptr inbounds %struct.daemon, %struct.daemon* %92, i32 0, i32 1
  %sunix138 = bitcast %union.bigsockaddr* %d_addr137 to %struct.sockaddr_un*
  %sun_path139 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %sunix138, i32 0, i32 1
  %93 = bitcast [108 x i8]* %sun_path139 to i8*
  %94 = load i8*, i8** %addr, align 8, !tbaa !1
  %call140 = call i64 @sm_strlcpy(i8* %93, i8* %94, i64 108)
  br label %sw.epilog.193

sw.bb.141:                                        ; preds = %if.then.124
  %95 = load i8*, i8** %addr, align 8, !tbaa !1
  %96 = load i8, i8* %95, align 1, !tbaa !13
  %conv142 = sext i8 %96 to i32
  %and143 = and i32 %conv142, -128
  %cmp144 = icmp eq i32 %and143, 0
  br i1 %cmp144, label %lor.lhs.false.146, label %if.then.159

lor.lhs.false.146:                                ; preds = %sw.bb.141
  %97 = load i8*, i8** %addr, align 8, !tbaa !1
  %98 = load i8, i8* %97, align 1, !tbaa !13
  %conv147 = sext i8 %98 to i32
  %idxprom148 = sext i32 %conv147 to i64
  %call149 = call i16** @__ctype_b_loc() #9
  %99 = load i16*, i16** %call149, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i16, i16* %99, i64 %idxprom148
  %100 = load i16, i16* %arrayidx150, align 2, !tbaa !15
  %conv151 = zext i16 %100 to i32
  %and152 = and i32 %conv151, 2048
  %tobool153 = icmp ne i32 %and152, 0
  br i1 %tobool153, label %lor.lhs.false.154, label %if.then.159

lor.lhs.false.154:                                ; preds = %lor.lhs.false.146
  %101 = load i8*, i8** %addr, align 8, !tbaa !1
  %call155 = call i32 @inet_addr(i8* %101) #1
  %102 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr156 = getelementptr inbounds %struct.daemon, %struct.daemon* %102, i32 0, i32 1
  %sin = bitcast %union.bigsockaddr* %d_addr156 to %struct.sockaddr_in*
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 2
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  store i32 %call155, i32* %s_addr, align 4, !tbaa !36
  %cmp157 = icmp eq i32 %call155, -1
  br i1 %cmp157, label %if.then.159, label %if.end.187

if.then.159:                                      ; preds = %lor.lhs.false.154, %lor.lhs.false.146, %sw.bb.141
  %103 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %103) #1
  %104 = load i8*, i8** %addr, align 8, !tbaa !1
  %call160 = call %struct.hostent* @sm_gethostbyname(i8* %104, i32 2)
  store %struct.hostent* %call160, %struct.hostent** %hp, align 8, !tbaa !1
  %105 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %cmp161 = icmp eq %struct.hostent* %105, null
  br i1 %cmp161, label %if.then.163, label %if.else.164

if.then.163:                                      ; preds = %if.then.159
  %106 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.145, i32 0, i32 0), i8* %106)
  br label %if.end.186

if.else.164:                                      ; preds = %if.then.159
  br label %while.cond.165

while.cond.165:                                   ; preds = %while.body.172, %if.else.164
  %107 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addr_list = getelementptr inbounds %struct.hostent, %struct.hostent* %107, i32 0, i32 4
  %108 = load i8**, i8*** %h_addr_list, align 8, !tbaa !57
  %109 = load i8*, i8** %108, align 8, !tbaa !1
  %cmp166 = icmp ne i8* %109, null
  br i1 %cmp166, label %land.rhs.168, label %land.end.171

land.rhs.168:                                     ; preds = %while.cond.165
  %110 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addrtype = getelementptr inbounds %struct.hostent, %struct.hostent* %110, i32 0, i32 2
  %111 = load i32, i32* %h_addrtype, align 4, !tbaa !58
  %cmp169 = icmp ne i32 %111, 2
  br label %land.end.171

land.end.171:                                     ; preds = %land.rhs.168, %while.cond.165
  %112 = phi i1 [ false, %while.cond.165 ], [ %cmp169, %land.rhs.168 ]
  br i1 %112, label %while.body.172, label %while.end.175

while.body.172:                                   ; preds = %land.end.171
  %113 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addr_list173 = getelementptr inbounds %struct.hostent, %struct.hostent* %113, i32 0, i32 4
  %114 = load i8**, i8*** %h_addr_list173, align 8, !tbaa !57
  %incdec.ptr174 = getelementptr inbounds i8*, i8** %114, i32 1
  store i8** %incdec.ptr174, i8*** %h_addr_list173, align 8, !tbaa !57
  br label %while.cond.165

while.end.175:                                    ; preds = %land.end.171
  %115 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addr_list176 = getelementptr inbounds %struct.hostent, %struct.hostent* %115, i32 0, i32 4
  %116 = load i8**, i8*** %h_addr_list176, align 8, !tbaa !57
  %117 = load i8*, i8** %116, align 8, !tbaa !1
  %cmp177 = icmp eq i8* %117, null
  br i1 %cmp177, label %if.then.179, label %if.else.180

if.then.179:                                      ; preds = %while.end.175
  %118 = load i8*, i8** %addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.145, i32 0, i32 0), i8* %118)
  br label %if.end.185

if.else.180:                                      ; preds = %while.end.175
  %119 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr181 = getelementptr inbounds %struct.daemon, %struct.daemon* %119, i32 0, i32 1
  %sin182 = bitcast %union.bigsockaddr* %d_addr181 to %struct.sockaddr_in*
  %sin_addr183 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin182, i32 0, i32 2
  %120 = bitcast %struct.in_addr* %sin_addr183 to i8*
  %121 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addr_list184 = getelementptr inbounds %struct.hostent, %struct.hostent* %121, i32 0, i32 4
  %122 = load i8**, i8*** %h_addr_list184, align 8, !tbaa !57
  %123 = load i8*, i8** %122, align 8, !tbaa !1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %120, i8* %123, i64 4, i32 1, i1 false)
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.180, %if.then.179
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.163
  %124 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %lor.lhs.false.154
  br label %sw.epilog.193

sw.default.188:                                   ; preds = %if.then.124
  %125 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr189 = getelementptr inbounds %struct.daemon, %struct.daemon* %125, i32 0, i32 1
  %sa190 = bitcast %union.bigsockaddr* %d_addr189 to %struct.sockaddr*
  %sa_family191 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa190, i32 0, i32 0
  %126 = load i16, i16* %sa_family191, align 2, !tbaa !24
  %conv192 = zext i16 %126 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.146, i32 0, i32 0), i32 %conv192)
  br label %sw.epilog.193

sw.epilog.193:                                    ; preds = %sw.default.188, %if.end.187, %if.end.135, %if.then.133
  br label %if.end.194

if.end.194:                                       ; preds = %sw.epilog.193, %while.end.121
  %127 = load i8*, i8** %port, align 8, !tbaa !1
  %cmp195 = icmp ne i8* %127, null
  br i1 %cmp195, label %if.then.197, label %if.end.239

if.then.197:                                      ; preds = %if.end.194
  %128 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr198 = getelementptr inbounds %struct.daemon, %struct.daemon* %128, i32 0, i32 1
  %sa199 = bitcast %union.bigsockaddr* %d_addr198 to %struct.sockaddr*
  %sa_family200 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa199, i32 0, i32 0
  %129 = load i16, i16* %sa_family200, align 2, !tbaa !24
  %conv201 = zext i16 %129 to i32
  switch i32 %conv201, label %sw.default.233 [
    i32 2, label %sw.bb.202
  ]

sw.bb.202:                                        ; preds = %if.then.197
  %130 = load i8*, i8** %port, align 8, !tbaa !1
  %131 = load i8, i8* %130, align 1, !tbaa !13
  %conv203 = sext i8 %131 to i32
  %and204 = and i32 %conv203, -128
  %cmp205 = icmp eq i32 %and204, 0
  br i1 %cmp205, label %land.lhs.true.207, label %if.else.220

land.lhs.true.207:                                ; preds = %sw.bb.202
  %132 = load i8*, i8** %port, align 8, !tbaa !1
  %133 = load i8, i8* %132, align 1, !tbaa !13
  %conv208 = sext i8 %133 to i32
  %idxprom209 = sext i32 %conv208 to i64
  %call210 = call i16** @__ctype_b_loc() #9
  %134 = load i16*, i16** %call210, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds i16, i16* %134, i64 %idxprom209
  %135 = load i16, i16* %arrayidx211, align 2, !tbaa !15
  %conv212 = zext i16 %135 to i32
  %and213 = and i32 %conv212, 2048
  %tobool214 = icmp ne i32 %and213, 0
  br i1 %tobool214, label %if.then.215, label %if.else.220

if.then.215:                                      ; preds = %land.lhs.true.207
  %136 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %136) #1
  %137 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %137) #1
  %138 = load i8*, i8** %port, align 8, !tbaa !1
  %call216 = call i32 @atoi(i8* %138) #11
  %conv217 = trunc i32 %call216 to i16
  store i16 %conv217, i16* %__x, align 2, !tbaa !15
  %139 = load i16, i16* %__x, align 2, !tbaa !15
  %140 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %139) #9, !srcloc !59
  store i16 %140, i16* %__v, align 2, !tbaa !15
  %141 = load i16, i16* %__v, align 2, !tbaa !15
  store i16 %141, i16* %tmp, !tbaa !15
  %142 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %142) #1
  %143 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %143) #1
  %144 = load i16, i16* %tmp, !tbaa !15
  %145 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr218 = getelementptr inbounds %struct.daemon, %struct.daemon* %145, i32 0, i32 1
  %sin219 = bitcast %union.bigsockaddr* %d_addr218 to %struct.sockaddr_in*
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin219, i32 0, i32 1
  store i16 %144, i16* %sin_port, align 2, !tbaa !39
  br label %if.end.232

if.else.220:                                      ; preds = %land.lhs.true.207, %sw.bb.202
  %146 = bitcast %struct.servent** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %146) #1
  %147 = load i8*, i8** %port, align 8, !tbaa !1
  %call222 = call %struct.servent* @getservbyname(i8* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0))
  store %struct.servent* %call222, %struct.servent** %sp, align 8, !tbaa !1
  %148 = load %struct.servent*, %struct.servent** %sp, align 8, !tbaa !1
  %cmp223 = icmp eq %struct.servent* %148, null
  br i1 %cmp223, label %if.then.225, label %if.else.226

if.then.225:                                      ; preds = %if.else.220
  %149 = load i8*, i8** %port, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.147, i32 0, i32 0), i8* %149)
  br label %if.end.231

if.else.226:                                      ; preds = %if.else.220
  %150 = load %struct.servent*, %struct.servent** %sp, align 8, !tbaa !1
  %s_port = getelementptr inbounds %struct.servent, %struct.servent* %150, i32 0, i32 2
  %151 = load i32, i32* %s_port, align 4, !tbaa !41
  %conv227 = trunc i32 %151 to i16
  %152 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr228 = getelementptr inbounds %struct.daemon, %struct.daemon* %152, i32 0, i32 1
  %sin229 = bitcast %union.bigsockaddr* %d_addr228 to %struct.sockaddr_in*
  %sin_port230 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin229, i32 0, i32 1
  store i16 %conv227, i16* %sin_port230, align 2, !tbaa !39
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.226, %if.then.225
  %153 = bitcast %struct.servent** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.then.215
  br label %sw.epilog.238

sw.default.233:                                   ; preds = %if.then.197
  %154 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_addr234 = getelementptr inbounds %struct.daemon, %struct.daemon* %154, i32 0, i32 1
  %sa235 = bitcast %union.bigsockaddr* %d_addr234 to %struct.sockaddr*
  %sa_family236 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa235, i32 0, i32 0
  %155 = load i16, i16* %sa_family236, align 2, !tbaa !24
  %conv237 = zext i16 %155 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.148, i32 0, i32 0), i32 %conv237)
  br label %sw.epilog.238

sw.epilog.238:                                    ; preds = %sw.default.233, %if.end.232
  br label %if.end.239

if.end.239:                                       ; preds = %sw.epilog.238, %if.end.194
  %156 = bitcast i8** %addr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i8** %port to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @printdaemonflags(%struct.daemon* %d) #0 {
entry:
  %d.addr = alloca %struct.daemon*, align 8
  %df = alloca %struct.dflags*, align 8
  %first = alloca i32, align 4
  store %struct.daemon* %d, %struct.daemon** %d.addr, align 8, !tbaa !1
  %0 = bitcast %struct.dflags** %df to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 1, i32* %first, align 4, !tbaa !5
  store %struct.dflags* getelementptr inbounds ([17 x %struct.dflags], [17 x %struct.dflags]* @DaemonFlags, i32 0, i32 0), %struct.dflags** %df, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.dflags*, %struct.dflags** %df, align 8, !tbaa !1
  %d_name = getelementptr inbounds %struct.dflags, %struct.dflags* %2, i32 0, i32 0
  %3 = load i8*, i8** %d_name, align 8, !tbaa !60
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.dflags*, %struct.dflags** %df, align 8, !tbaa !1
  %d_flag = getelementptr inbounds %struct.dflags, %struct.dflags* %4, i32 0, i32 1
  %5 = load i32, i32* %d_flag, align 4, !tbaa !62
  %conv = trunc i32 %5 to i8
  %conv1 = zext i8 %conv to i64
  %div = udiv i64 %conv1, 32
  %and = and i64 %div, 7
  %6 = load %struct.daemon*, %struct.daemon** %d.addr, align 8, !tbaa !1
  %d_flags = getelementptr inbounds %struct.daemon, %struct.daemon* %6, i32 0, i32 9
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags, i32 0, i64 %and
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %8 = load %struct.dflags*, %struct.dflags** %df, align 8, !tbaa !1
  %d_flag2 = getelementptr inbounds %struct.dflags, %struct.dflags* %8, i32 0, i32 1
  %9 = load i32, i32* %d_flag2, align 4, !tbaa !62
  %conv3 = trunc i32 %9 to i8
  %conv4 = zext i8 %conv3 to i64
  %rem = urem i64 %conv4, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and5 = and i32 %7, %shl
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %10 = load i32, i32* %first, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %11 = load %struct.dflags*, %struct.dflags** %df, align 8, !tbaa !1
  %d_name8 = getelementptr inbounds %struct.dflags, %struct.dflags* %11, i32 0, i32 0
  %12 = load i8*, i8** %d_name8, align 8, !tbaa !60
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i32 0, i32 0), i8* %12)
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %13 = load %struct.dflags*, %struct.dflags** %df, align 8, !tbaa !1
  %d_name9 = getelementptr inbounds %struct.dflags, %struct.dflags* %13, i32 0, i32 0
  %14 = load i8*, i8** %d_name9, align 8, !tbaa !60
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.150, i32 0, i32 0), i8* %14)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  store i32 0, i32* %first, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.10, %if.then
  %15 = load %struct.dflags*, %struct.dflags** %df, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.dflags, %struct.dflags* %15, i32 1
  store %struct.dflags* %incdec.ptr, %struct.dflags** %df, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %first, align 4, !tbaa !5
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %for.end
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.151, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.end
  %17 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast %struct.dflags** %df to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @initdaemon() #0 {
entry:
  %0 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom
  %d_socket = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx, i32 0, i32 0
  store i32 -1, i32* %d_socket, align 4, !tbaa !18
  %2 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom1
  %d_listenqueue = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx2, i32 0, i32 3
  store i32 10, i32* %d_listenqueue, align 4, !tbaa !45
  %3 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom3
  %d_name = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx4, i32 0, i32 11
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i8** %d_name, align 8, !tbaa !14
  store i32 1, i32* @NDaemons, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @setclientoptions(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %family = alloca i32, align 4
  %d = alloca %struct.daemon, align 8
  %num = alloca [30 x i8], align 16
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %family to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.daemon* %d to i8*
  call void @llvm.lifetime.start(i64 432, i8* %1) #1
  %2 = bitcast %struct.daemon* %d to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 432, i32 8, i1 false)
  %3 = load i8*, i8** %p.addr, align 8, !tbaa !1
  call void @setsockaddroptions(i8* %3, %struct.daemon* %d)
  %d_addr = getelementptr inbounds %struct.daemon, %struct.daemon* %d, i32 0, i32 1
  %sa = bitcast %union.bigsockaddr* %d_addr to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa, i32 0, i32 0
  %4 = load i16, i16* %sa_family, align 2, !tbaa !24
  %conv = zext i16 %4 to i32
  store i32 %conv, i32* %family, align 4, !tbaa !5
  %5 = load i32, i32* %family, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [41 x %struct.daemon], [41 x %struct.daemon]* @ClientSettings, i32 0, i64 %idxprom
  %6 = bitcast %struct.daemon* %arrayidx to i8*
  %7 = bitcast %struct.daemon* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 432, i32 8, i1 false), !tbaa.struct !63
  %8 = load i32, i32* %family, align 4, !tbaa !5
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [41 x %struct.daemon], [41 x %struct.daemon]* @ClientSettings, i32 0, i64 %idxprom1
  %d_flags = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx2, i32 0, i32 9
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags, i32 0, i64 0
  %9 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %or = or i32 %9, 8
  store i32 %or, i32* %arrayidx3, align 4, !tbaa !5
  %d_name = getelementptr inbounds %struct.daemon, %struct.daemon* %d, i32 0, i32 11
  %10 = load i8*, i8** %d_name, align 8, !tbaa !14
  %cmp = icmp ne i8* %10, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %d_name5 = getelementptr inbounds %struct.daemon, %struct.daemon* %d, i32 0, i32 11
  %11 = load i8*, i8** %d_name5, align 8, !tbaa !14
  %call = call i8* @newstr(i8* %11)
  %12 = load i32, i32* %family, align 4, !tbaa !5
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [41 x %struct.daemon], [41 x %struct.daemon]* @ClientSettings, i32 0, i64 %idxprom6
  %d_name8 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx7, i32 0, i32 11
  store i8* %call, i8** %d_name8, align 8, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = bitcast [30 x i8]* %num to i8*
  call void @llvm.lifetime.start(i64 30, i8* %13) #1
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %num, i32 0, i32 0
  %14 = load i32, i32* %family, align 4, !tbaa !5
  %call9 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 %14)
  %arraydecay10 = getelementptr inbounds [30 x i8], [30 x i8]* %num, i32 0, i32 0
  %call11 = call i8* @newstr(i8* %arraydecay10)
  %15 = load i32, i32* %family, align 4, !tbaa !5
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [41 x %struct.daemon], [41 x %struct.daemon]* @ClientSettings, i32 0, i64 %idxprom12
  %d_name14 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx13, i32 0, i32 11
  store i8* %call11, i8** %d_name14, align 8, !tbaa !14
  %16 = bitcast [30 x i8]* %num to i8*
  call void @llvm.lifetime.end(i64 30, i8* %16) #1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = bitcast %struct.daemon* %d to i8*
  call void @llvm.lifetime.end(i64 432, i8* %17) #1
  %18 = bitcast i32* %family to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @chkclientmodifiers(i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %flagisset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %flag, i32* %flag.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %flagisset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %flagisset, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [41 x %struct.daemon], [41 x %struct.daemon]* @ClientSettings, i32 0, i64 %idxprom
  %d_flags = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx, i32 0, i32 9
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags, i32 0, i64 0
  %4 = load i32, i32* %arrayidx1, align 4, !tbaa !5
  %and = and i32 %4, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %flag.addr, align 4, !tbaa !5
  %conv = trunc i32 %5 to i8
  %conv2 = zext i8 %conv to i64
  %div = udiv i64 %conv2, 32
  %and3 = and i64 %div, 7
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [41 x %struct.daemon], [41 x %struct.daemon]* @ClientSettings, i32 0, i64 %idxprom4
  %d_flags6 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx5, i32 0, i32 9
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags6, i32 0, i64 %and3
  %7 = load i32, i32* %arrayidx7, align 4, !tbaa !5
  %8 = load i32, i32* %flag.addr, align 4, !tbaa !5
  %conv8 = trunc i32 %8 to i8
  %conv9 = zext i8 %conv8 to i64
  %rem = urem i64 %conv9, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and10 = and i32 %7, %shl
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.end, label %if.then.12

if.then.12:                                       ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 1, i32* %flagisset, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %flagisset, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.12
  %11 = bitcast i32* %flagisset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define void @setup_daemon_milters() #0 {
entry:
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %0 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8, i8* @OpMode, align 1, !tbaa !13
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 115
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %idx, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %idx, align 4, !tbaa !5
  %3 = load i32, i32* @NDaemons, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom
  %d_inputfilterlist = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx, i32 0, i32 17
  %5 = load i8*, i8** %d_inputfilterlist, align 8, !tbaa !35
  %cmp4 = icmp ne i8* %5, null
  br i1 %cmp4, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %for.body
  %6 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom7
  %d_inputfilterlist9 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx8, i32 0, i32 17
  %7 = load i8*, i8** %d_inputfilterlist9, align 8, !tbaa !35
  %8 = load i32, i32* %idx, align 4, !tbaa !5
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [10 x %struct.daemon], [10 x %struct.daemon]* @Daemons, i32 0, i64 %idxprom10
  %d_inputfilters = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx11, i32 0, i32 18
  %arraydecay = getelementptr inbounds [25 x %struct.milter*], [25 x %struct.milter*]* %d_inputfilters, i32 0, i32 0
  call void @milter_config(i8* %7, %struct.milter** %arraydecay, i32 25)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %9 = load i32, i32* %idx, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %idx, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %10 = bitcast i32* %idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
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

declare void @milter_config(i8*, %struct.milter**, i32) #2

; Function Attrs: nounwind uwtable
define i32 @makeconnection(i8* %host, i32 %port, %struct.mailer_con_info* %mci, %struct.envelope* %e, i64 %enough) #0 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca i8*, align 8
  %port.addr = alloca i32, align 4
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %enough.addr = alloca i64, align 8
  %addrno = alloca i32, align 4
  %s = alloca i32, align 4
  %hp = alloca %struct.hostent*, align 8
  %addr = alloca %union.bigsockaddr, align 4
  %clt_addr = alloca %union.bigsockaddr, align 4
  %save_errno = alloca i32, align 4
  %addrlen = alloca i32, align 4
  %firstconnect = alloca i32, align 4
  %ev = alloca %struct.sm_event*, align 8
  %family = alloca i32, align 4
  %len = alloca i32, align 4
  %socksize = alloca i32, align 4
  %clt_bind = alloca i32, align 4
  %d_flags = alloca [8 x i32], align 16
  %p = alloca i8*, align 8
  %__v = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp = alloca i32, align 4
  %hid = alloca i64, align 8
  %oldopts = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %oldopts160 = alloca i32, align 4
  %sp = alloca %struct.servent*, align 8
  %__v236 = alloca i16, align 2
  %__x238 = alloca i16, align 2
  %tmp239 = alloca i16, align 2
  %__v266 = alloca i16, align 2
  %__x268 = alloca i16, align 2
  %tmp270 = alloca i16, align 2
  %rport = alloca i32, align 4
  %on = alloca i32, align 4
  %on348 = alloca i32, align 4
  %i = alloca i32, align 4
  %name = alloca i8*, align 8
  %family579 = alloca [5 x i8], align 1
  store i8* %host, i8** %host.addr, align 8, !tbaa !1
  store volatile i32 %port, i32* %port.addr, align 4, !tbaa !5
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i64 %enough, i64* %enough.addr, align 8, !tbaa !19
  %0 = bitcast i32* %addrno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store volatile i32 0, i32* %addrno, align 4, !tbaa !5
  %1 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store volatile %struct.hostent* null, %struct.hostent** %hp, align 8, !tbaa !1
  %3 = bitcast %union.bigsockaddr* %addr to i8*
  call void @llvm.lifetime.start(i64 112, i8* %3) #1
  %4 = bitcast %union.bigsockaddr* %clt_addr to i8*
  call void @llvm.lifetime.start(i64 112, i8* %4) #1
  %5 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %save_errno, align 4, !tbaa !5
  %6 = bitcast i32* %addrlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %firstconnect to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store volatile i32 1, i32* %firstconnect, align 4, !tbaa !5
  %8 = bitcast %struct.sm_event** %ev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store volatile %struct.sm_event* null, %struct.sm_event** %ev, align 8, !tbaa !1
  %9 = bitcast i32* %family to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i8, i8* @InetMode, align 1, !tbaa !13
  %conv = sext i8 %10 to i32
  store volatile i32 %conv, i32* %family, align 4, !tbaa !5
  %11 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %socksize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store volatile i32 0, i32* %socksize, align 4, !tbaa !5
  %13 = bitcast i32* %clt_bind to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast [8 x i32]* %d_flags to i8*
  call void @llvm.lifetime.start(i64 32, i8* %14) #1
  %15 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags, i32 0, i32 0
  %16 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 32, i32 1, i1 false)
  %call = call i32 @macid_parse(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i8** null)
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call1 = call i8* @macvalue(i32 %call, %struct.envelope* %17)
  store i8* %call1, i8** %p, align 8, !tbaa !1
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !13
  %conv3 = sext i8 %19 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !13
  %conv6 = sext i8 %21 to i32
  %and = and i32 %conv6, -128
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %land.lhs.true, label %if.then.13

land.lhs.true:                                    ; preds = %for.body
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !13
  %conv9 = sext i8 %23 to i32
  %idxprom = sext i32 %conv9 to i64
  %call10 = call i16** @__ctype_b_loc() #9
  %24 = load i16*, i16** %call10, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %24, i64 %idxprom
  %25 = load i16, i16* %arrayidx, align 2, !tbaa !15
  %conv11 = zext i16 %25 to i32
  %and12 = and i32 %conv11, 8192
  %tobool = icmp ne i32 %and12, 0
  br i1 %tobool, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true, %for.body
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !13
  %conv14 = sext i8 %27 to i32
  %and15 = and i32 %conv14, 255
  %conv16 = trunc i32 %and15 to i8
  %conv17 = zext i8 %conv16 to i64
  %rem = urem i64 %conv17, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !13
  %conv18 = sext i8 %29 to i32
  %and19 = and i32 %conv18, 255
  %conv20 = trunc i32 %and19 to i8
  %conv21 = zext i8 %conv20 to i64
  %div = udiv i64 %conv21, 32
  %and22 = and i64 %div, 7
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags, i32 0, i64 %and22
  %30 = load i32, i32* %arrayidx23, align 4, !tbaa !5
  %or = or i32 %30, %shl
  store i32 %or, i32* %arrayidx23, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.13, %land.lhs.true
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.24

if.end.24:                                        ; preds = %for.end, %entry
  store volatile i32 0, i32* %clt_bind, align 4, !tbaa !5
  %arrayidx25 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags, i32 0, i64 3
  %32 = load i32, i32* %arrayidx25, align 4, !tbaa !5
  %and26 = and i32 %32, 4
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.63

land.lhs.true.28:                                 ; preds = %if.end.24
  %call29 = call i32 @macid_parse(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8** null)
  %33 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call30 = call i8* @macvalue(i32 %call29, %struct.envelope* %33)
  store i8* %call30, i8** %p, align 8, !tbaa !1
  %cmp31 = icmp ne i8* %call30, null
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.63

land.lhs.true.33:                                 ; preds = %land.lhs.true.28
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !13
  %conv34 = sext i8 %35 to i32
  %cmp35 = icmp ne i32 %conv34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.63

if.then.37:                                       ; preds = %land.lhs.true.33
  %36 = bitcast %union.bigsockaddr* %clt_addr to i8*
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 112, i32 4, i1 false)
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %call38 = call i32 @addr_family(i8* %37)
  %conv39 = trunc i32 %call38 to i16
  %sa = bitcast %union.bigsockaddr* %clt_addr to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa, i32 0, i32 0
  store i16 %conv39, i16* %sa_family, align 2, !tbaa !24
  %sa40 = bitcast %union.bigsockaddr* %clt_addr to %struct.sockaddr*
  %sa_family41 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa40, i32 0, i32 0
  %38 = load i16, i16* %sa_family41, align 2, !tbaa !24
  %conv42 = zext i16 %38 to i32
  switch i32 %conv42, label %sw.epilog [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.37
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %call43 = call i32 @inet_addr(i8* %39) #1
  %sin = bitcast %union.bigsockaddr* %clt_addr to %struct.sockaddr_in*
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 2
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  store i32 %call43, i32* %s_addr, align 4, !tbaa !36
  %sin44 = bitcast %union.bigsockaddr* %clt_addr to %struct.sockaddr_in*
  %sin_addr45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin44, i32 0, i32 2
  %s_addr46 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr45, i32 0, i32 0
  %40 = load i32, i32* %s_addr46, align 4, !tbaa !36
  %cmp47 = icmp ne i32 %40, -1
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.56

land.lhs.true.49:                                 ; preds = %sw.bb
  %sin50 = bitcast %union.bigsockaddr* %clt_addr to %struct.sockaddr_in*
  %sin_addr51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin50, i32 0, i32 2
  %s_addr52 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr51, i32 0, i32 0
  %41 = load i32, i32* %s_addr52, align 4, !tbaa !36
  %42 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 2130706433, i32* %__x, align 4, !tbaa !5
  %44 = load i32, i32* %__x, align 4, !tbaa !5
  %45 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %44) #9, !srcloc !64
  store i32 %45, i32* %__v, align 4, !tbaa !5
  %46 = load i32, i32* %__v, align 4, !tbaa !5
  store i32 %46, i32* %tmp, !tbaa !5
  %47 = bitcast i32* %__x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %__v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = load i32, i32* %tmp, !tbaa !5
  %cmp53 = icmp ne i32 %41, %49
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %land.lhs.true.49
  store volatile i32 1, i32* %clt_bind, align 4, !tbaa !5
  store volatile i32 16, i32* %socksize, align 4, !tbaa !5
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %land.lhs.true.49, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.37, %if.end.56
  %50 = load volatile i32, i32* %clt_bind, align 4, !tbaa !5
  %tobool57 = icmp ne i32 %50, 0
  br i1 %tobool57, label %if.then.58, label %if.end.62

if.then.58:                                       ; preds = %sw.epilog
  %sa59 = bitcast %union.bigsockaddr* %clt_addr to %struct.sockaddr*
  %sa_family60 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa59, i32 0, i32 0
  %51 = load i16, i16* %sa_family60, align 2, !tbaa !24
  %conv61 = zext i16 %51 to i32
  store volatile i32 %conv61, i32* %family, align 4, !tbaa !5
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %sw.epilog
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %land.lhs.true.33, %land.lhs.true.28, %if.end.24
  %52 = load volatile i32, i32* %clt_bind, align 4, !tbaa !5
  %tobool64 = icmp ne i32 %52, 0
  br i1 %tobool64, label %if.end.89, label %if.then.65

if.then.65:                                       ; preds = %if.end.63
  %53 = load volatile i32, i32* %family, align 4, !tbaa !5
  %idxprom66 = sext i32 %53 to i64
  %arrayidx67 = getelementptr inbounds [41 x %struct.daemon], [41 x %struct.daemon]* @ClientSettings, i32 0, i64 %idxprom66
  %d_addr = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx67, i32 0, i32 1
  %54 = bitcast %union.bigsockaddr* %clt_addr to i8*
  %55 = bitcast %union.bigsockaddr* %d_addr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 112, i32 4, i1 false), !tbaa.struct !65
  %sa68 = bitcast %union.bigsockaddr* %clt_addr to %struct.sockaddr*
  %sa_family69 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa68, i32 0, i32 0
  %56 = load i16, i16* %sa_family69, align 2, !tbaa !24
  %conv70 = zext i16 %56 to i32
  switch i32 %conv70, label %sw.default [
    i32 2, label %sw.bb.71
  ]

sw.bb.71:                                         ; preds = %if.then.65
  %sin72 = bitcast %union.bigsockaddr* %clt_addr to %struct.sockaddr_in*
  %sin_addr73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin72, i32 0, i32 2
  %s_addr74 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr73, i32 0, i32 0
  %57 = load i32, i32* %s_addr74, align 4, !tbaa !36
  %cmp75 = icmp eq i32 %57, 0
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %sw.bb.71
  %sin78 = bitcast %union.bigsockaddr* %clt_addr to %struct.sockaddr_in*
  %sin_addr79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin78, i32 0, i32 2
  %s_addr80 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr79, i32 0, i32 0
  store i32 0, i32* %s_addr80, align 4, !tbaa !36
  br label %if.end.81

if.else:                                          ; preds = %sw.bb.71
  store volatile i32 1, i32* %clt_bind, align 4, !tbaa !5
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.77
  %sin82 = bitcast %union.bigsockaddr* %clt_addr to %struct.sockaddr_in*
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin82, i32 0, i32 1
  %58 = load i16, i16* %sin_port, align 2, !tbaa !39
  %conv83 = zext i16 %58 to i32
  %cmp84 = icmp ne i32 %conv83, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.81
  store volatile i32 1, i32* %clt_bind, align 4, !tbaa !5
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.81
  store volatile i32 16, i32* %socksize, align 4, !tbaa !5
  br label %sw.epilog.88

sw.default:                                       ; preds = %if.then.65
  br label %sw.epilog.88

sw.epilog.88:                                     ; preds = %sw.default, %if.end.87
  br label %if.end.89

if.end.89:                                        ; preds = %sw.epilog.88, %if.end.63
  %call90 = call i32* @__h_errno_location() #9
  store i32 0, i32* %call90, align 4, !tbaa !5
  %call91 = call i32* @__errno_location() #9
  store i32 0, i32* %call91, align 4, !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* bitcast (%union.bigsockaddr* @CurHostAddr to i8*), i8 0, i64 112, i32 4, i1 false)
  %59 = bitcast %union.bigsockaddr* %addr to i8*
  call void @llvm.memset.p0i8.i64(i8* %59, i8 0, i64 112, i32 4, i1 false)
  %60 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_phase = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %60, i32 0, i32 10
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0), i8** %mci_phase, align 8, !tbaa !66
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0), i8** @SmtpPhase, align 8, !tbaa !1
  %61 = load i8*, i8** %host.addr, align 8, !tbaa !1
  store i8* %61, i8** @CurHostName, align 8, !tbaa !1
  %62 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i8, i8* %62, i64 0
  %63 = load i8, i8* %arrayidx92, align 1, !tbaa !13
  %conv93 = sext i8 %63 to i32
  %cmp94 = icmp eq i32 %conv93, 91
  br i1 %cmp94, label %if.then.96, label %if.else.148

if.then.96:                                       ; preds = %if.end.89
  %64 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call97 = call i8* @strchr(i8* %64, i32 93) #1
  store i8* %call97, i8** %p, align 8, !tbaa !1
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp98 = icmp ne i8* %65, null
  br i1 %cmp98, label %if.then.100, label %if.end.142

if.then.100:                                      ; preds = %if.then.96
  %66 = bitcast i64* %hid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  store i64 4294967295, i64* %hid, align 8, !tbaa !19
  %67 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %67, align 1, !tbaa !13
  %68 = load volatile i32, i32* %family, align 4, !tbaa !5
  %cmp102 = icmp eq i32 %68, 2
  br i1 %cmp102, label %land.lhs.true.104, label %if.else.116

land.lhs.true.104:                                ; preds = %if.then.100
  %69 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i8, i8* %69, i64 1
  %call106 = call i32 @inet_addr(i8* %arrayidx105) #1
  %conv107 = zext i32 %call106 to i64
  store i64 %conv107, i64* %hid, align 8, !tbaa !19
  %cmp108 = icmp ne i64 %conv107, 4294967295
  br i1 %cmp108, label %if.then.110, label %if.else.116

if.then.110:                                      ; preds = %land.lhs.true.104
  %sin111 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_in*
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin111, i32 0, i32 0
  store i16 2, i16* %sin_family, align 2, !tbaa !68
  %70 = load i64, i64* %hid, align 8, !tbaa !19
  %conv112 = trunc i64 %70 to i32
  %sin113 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_in*
  %sin_addr114 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin113, i32 0, i32 2
  %s_addr115 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr114, i32 0, i32 0
  store i32 %conv112, i32* %s_addr115, align 4, !tbaa !36
  br label %if.end.141

if.else.116:                                      ; preds = %land.lhs.true.104, %if.then.100
  %71 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i8, i8* %71, i64 1
  %72 = load volatile i32, i32* %family, align 4, !tbaa !5
  %call118 = call %struct.hostent* @sm_gethostbyname(i8* %arrayidx117, i32 %72)
  store volatile %struct.hostent* %call118, %struct.hostent** %hp, align 8, !tbaa !1
  %73 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %cmp119 = icmp eq %struct.hostent* %73, null
  br i1 %cmp119, label %land.lhs.true.121, label %if.end.140

land.lhs.true.121:                                ; preds = %if.else.116
  %74 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i8, i8* %74, i64 -1
  %75 = load i8, i8* %arrayidx122, align 1, !tbaa !13
  %conv123 = sext i8 %75 to i32
  %cmp124 = icmp eq i32 %conv123, 46
  br i1 %cmp124, label %if.then.126, label %if.end.140

if.then.126:                                      ; preds = %land.lhs.true.121
  %76 = bitcast i32* %oldopts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %call128 = call %struct.__res_state* @__res_state() #9
  %options = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call128, i32 0, i32 2
  %77 = load i64, i64* %options, align 8, !tbaa !69
  %conv129 = trunc i64 %77 to i32
  store i32 %conv129, i32* %oldopts, align 4, !tbaa !5
  %call130 = call %struct.__res_state* @__res_state() #9
  %options131 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call130, i32 0, i32 2
  %78 = load i64, i64* %options131, align 8, !tbaa !69
  %and132 = and i64 %78, -641
  store i64 %and132, i64* %options131, align 8, !tbaa !69
  %79 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i8, i8* %79, i64 -1
  store i8 0, i8* %arrayidx133, align 1, !tbaa !13
  %80 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i8, i8* %80, i64 1
  %81 = load volatile i32, i32* %family, align 4, !tbaa !5
  %call135 = call %struct.hostent* @sm_gethostbyname(i8* %arrayidx134, i32 %81)
  store volatile %struct.hostent* %call135, %struct.hostent** %hp, align 8, !tbaa !1
  %82 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i8, i8* %82, i64 -1
  store i8 46, i8* %arrayidx136, align 1, !tbaa !13
  %83 = load i32, i32* %oldopts, align 4, !tbaa !5
  %conv137 = sext i32 %83 to i64
  %call138 = call %struct.__res_state* @__res_state() #9
  %options139 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call138, i32 0, i32 2
  store i64 %conv137, i64* %options139, align 8, !tbaa !69
  %84 = bitcast i32* %oldopts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.126, %land.lhs.true.121, %if.else.116
  %85 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 93, i8* %85, align 1, !tbaa !13
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.141:                                       ; preds = %if.then.110
  %86 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 93, i8* %86, align 1, !tbaa !13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.140, %if.end.141
  %87 = bitcast i64* %hid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.635 [
    i32 0, label %cleanup.cont
    i32 7, label %gothostent
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.142

if.end.142:                                       ; preds = %cleanup.cont, %if.then.96
  %88 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp143 = icmp eq i8* %88, null
  br i1 %cmp143, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %if.end.142
  %89 = load i8*, i8** %host.addr, align 8, !tbaa !1
  call void (i8*, i8*, ...) @usrerrenh(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i32 0, i32 0), i8* %89)
  %90 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %90, i32 68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @MsgBuf, i32 0, i32 0))
  %call146 = call i32* @__errno_location() #9
  store i32 22, i32* %call146, align 4, !tbaa !5
  store i32 68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.635

if.end.147:                                       ; preds = %if.end.142
  br label %if.end.222

if.else.148:                                      ; preds = %if.end.89
  %91 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call149 = call i64 @strlen(i8* %91) #11
  %sub = sub i64 %call149, 1
  %92 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i8, i8* %92, i64 %sub
  store i8* %arrayidx150, i8** %p, align 8, !tbaa !1
  %93 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %94 = load volatile i32, i32* %family, align 4, !tbaa !5
  %call151 = call %struct.hostent* @sm_gethostbyname(i8* %93, i32 %94)
  store volatile %struct.hostent* %call151, %struct.hostent** %hp, align 8, !tbaa !1
  %95 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %cmp152 = icmp eq %struct.hostent* %95, null
  br i1 %cmp152, label %land.lhs.true.154, label %if.end.171

land.lhs.true.154:                                ; preds = %if.else.148
  %96 = load i8*, i8** %p, align 8, !tbaa !1
  %97 = load i8, i8* %96, align 1, !tbaa !13
  %conv155 = sext i8 %97 to i32
  %cmp156 = icmp eq i32 %conv155, 46
  br i1 %cmp156, label %if.then.158, label %if.end.171

if.then.158:                                      ; preds = %land.lhs.true.154
  %98 = bitcast i32* %oldopts160 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  %call161 = call %struct.__res_state* @__res_state() #9
  %options162 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call161, i32 0, i32 2
  %99 = load i64, i64* %options162, align 8, !tbaa !69
  %conv163 = trunc i64 %99 to i32
  store i32 %conv163, i32* %oldopts160, align 4, !tbaa !5
  %call164 = call %struct.__res_state* @__res_state() #9
  %options165 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call164, i32 0, i32 2
  %100 = load i64, i64* %options165, align 8, !tbaa !69
  %and166 = and i64 %100, -641
  store i64 %and166, i64* %options165, align 8, !tbaa !69
  %101 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %101, align 1, !tbaa !13
  %102 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %103 = load volatile i32, i32* %family, align 4, !tbaa !5
  %call167 = call %struct.hostent* @sm_gethostbyname(i8* %102, i32 %103)
  store volatile %struct.hostent* %call167, %struct.hostent** %hp, align 8, !tbaa !1
  %104 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 46, i8* %104, align 1, !tbaa !13
  %105 = load i32, i32* %oldopts160, align 4, !tbaa !5
  %conv168 = sext i32 %105 to i64
  %call169 = call %struct.__res_state* @__res_state() #9
  %options170 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call169, i32 0, i32 2
  store i64 %conv168, i64* %options170, align 8, !tbaa !69
  %106 = bitcast i32* %oldopts160 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.158, %land.lhs.true.154, %if.else.148
  br label %gothostent

gothostent:                                       ; preds = %if.end.171, %cleanup
  %107 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %cmp172 = icmp eq %struct.hostent* %107, null
  br i1 %cmp172, label %if.then.177, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %gothostent
  %108 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addr_list = getelementptr inbounds %struct.hostent, %struct.hostent* %108, i32 0, i32 4
  %109 = load i8**, i8*** %h_addr_list, align 8, !tbaa !57
  %arrayidx174 = getelementptr inbounds i8*, i8** %109, i64 0
  %110 = load i8*, i8** %arrayidx174, align 8, !tbaa !1
  %cmp175 = icmp eq i8* %110, null
  br i1 %cmp175, label %if.then.177, label %if.end.197

if.then.177:                                      ; preds = %lor.lhs.false, %gothostent
  %call178 = call i32* @__errno_location() #9
  %111 = load i32, i32* %call178, align 4, !tbaa !5
  %cmp179 = icmp eq i32 %111, 110
  br i1 %cmp179, label %if.then.191, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %if.then.177
  %call182 = call i32* @__h_errno_location() #9
  %112 = load i32, i32* %call182, align 4, !tbaa !5
  %cmp183 = icmp eq i32 %112, 2
  br i1 %cmp183, label %if.then.191, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %lor.lhs.false.181
  %call186 = call i32* @__errno_location() #9
  %113 = load i32, i32* %call186, align 4, !tbaa !5
  %cmp187 = icmp eq i32 %113, 111
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.194

land.lhs.true.189:                                ; preds = %lor.lhs.false.185
  %114 = load i32, i32* @UseNameServer, align 4, !tbaa !5
  %tobool190 = icmp ne i32 %114, 0
  br i1 %tobool190, label %if.then.191, label %if.end.194

if.then.191:                                      ; preds = %land.lhs.true.189, %lor.lhs.false.181, %if.then.177
  %call192 = call i32* @__errno_location() #9
  %115 = load i32, i32* %call192, align 4, !tbaa !5
  store i32 %115, i32* %save_errno, align 4, !tbaa !5
  %116 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %116, i32 75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8* null)
  %117 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call193 = call i32* @__errno_location() #9
  store i32 %117, i32* %call193, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.635

if.end.194:                                       ; preds = %land.lhs.true.189, %lor.lhs.false.185
  %call195 = call i32* @__errno_location() #9
  %118 = load i32, i32* %call195, align 4, !tbaa !5
  store i32 %118, i32* %save_errno, align 4, !tbaa !5
  %119 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %119, i32 68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* null)
  %120 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call196 = call i32* @__errno_location() #9
  store i32 %120, i32* %call196, align 4, !tbaa !5
  store i32 68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.635

if.end.197:                                       ; preds = %lor.lhs.false
  %121 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addrtype = getelementptr inbounds %struct.hostent, %struct.hostent* %121, i32 0, i32 2
  %122 = load i32, i32* %h_addrtype, align 4, !tbaa !58
  %conv198 = trunc i32 %122 to i16
  %sa199 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family200 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa199, i32 0, i32 0
  store i16 %conv198, i16* %sa_family200, align 2, !tbaa !24
  %123 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addrtype201 = getelementptr inbounds %struct.hostent, %struct.hostent* %123, i32 0, i32 2
  %124 = load i32, i32* %h_addrtype201, align 4, !tbaa !58
  switch i32 %124, label %sw.default.207 [
    i32 2, label %sw.bb.202
  ]

sw.bb.202:                                        ; preds = %if.end.197
  %sin203 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_in*
  %sin_addr204 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin203, i32 0, i32 2
  %125 = bitcast %struct.in_addr* %sin_addr204 to i8*
  %126 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addr_list205 = getelementptr inbounds %struct.hostent, %struct.hostent* %126, i32 0, i32 4
  %127 = load i8**, i8*** %h_addr_list205, align 8, !tbaa !57
  %arrayidx206 = getelementptr inbounds i8*, i8** %127, i64 0
  %128 = load i8*, i8** %arrayidx206, align 8, !tbaa !1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %125, i8* %128, i64 4, i32 1, i1 false)
  br label %sw.epilog.221

sw.default.207:                                   ; preds = %if.end.197
  %129 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_length = getelementptr inbounds %struct.hostent, %struct.hostent* %129, i32 0, i32 3
  %130 = load i32, i32* %h_length, align 4, !tbaa !70
  %conv208 = sext i32 %130 to i64
  %cmp209 = icmp ugt i64 %conv208, 14
  br i1 %cmp209, label %if.then.211, label %if.end.215

if.then.211:                                      ; preds = %sw.default.207
  %131 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addrtype212 = getelementptr inbounds %struct.hostent, %struct.hostent* %131, i32 0, i32 2
  %132 = load i32, i32* %h_addrtype212, align 4, !tbaa !58
  %133 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_length213 = getelementptr inbounds %struct.hostent, %struct.hostent* %133, i32 0, i32 3
  %134 = load i32, i32* %h_length213, align 4, !tbaa !70
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.52, i32 0, i32 0), i32 %132, i32 %134)
  %135 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %135, i32 68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* null)
  %call214 = call i32* @__errno_location() #9
  store i32 22, i32* %call214, align 4, !tbaa !5
  store i32 68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.635

if.end.215:                                       ; preds = %sw.default.207
  %sa216 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_data = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa216, i32 0, i32 1
  %136 = bitcast [14 x i8]* %sa_data to i8*
  %137 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addr_list217 = getelementptr inbounds %struct.hostent, %struct.hostent* %137, i32 0, i32 4
  %138 = load i8**, i8*** %h_addr_list217, align 8, !tbaa !57
  %arrayidx218 = getelementptr inbounds i8*, i8** %138, i64 0
  %139 = load i8*, i8** %arrayidx218, align 8, !tbaa !1
  %140 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_length219 = getelementptr inbounds %struct.hostent, %struct.hostent* %140, i32 0, i32 3
  %141 = load i32, i32* %h_length219, align 4, !tbaa !70
  %conv220 = sext i32 %141 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %136, i8* %139, i64 %conv220, i32 1, i1 false)
  br label %sw.epilog.221

sw.epilog.221:                                    ; preds = %if.end.215, %sw.bb.202
  store volatile i32 1, i32* %addrno, align 4, !tbaa !5
  br label %if.end.222

if.end.222:                                       ; preds = %sw.epilog.221, %if.end.147
  %142 = load volatile i32, i32* %port.addr, align 4, !tbaa !5
  %cmp223 = icmp eq i32 %142, 0
  br i1 %cmp223, label %if.then.225, label %if.end.243

if.then.225:                                      ; preds = %if.end.222
  %143 = bitcast %struct.servent** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #1
  %call227 = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0))
  store %struct.servent* %call227, %struct.servent** %sp, align 8, !tbaa !1
  %144 = load %struct.servent*, %struct.servent** %sp, align 8, !tbaa !1
  %cmp228 = icmp eq %struct.servent* %144, null
  br i1 %cmp228, label %if.then.230, label %if.else.241

if.then.230:                                      ; preds = %if.then.225
  %145 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp231 = icmp sgt i32 %145, 2
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %if.then.230
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.233, %if.then.230
  %146 = bitcast i16* %__v236 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %146) #1
  %147 = bitcast i16* %__x238 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %147) #1
  store i16 25, i16* %__x238, align 2, !tbaa !15
  %148 = load i16, i16* %__x238, align 2, !tbaa !15
  %149 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %148) #9, !srcloc !71
  store i16 %149, i16* %__v236, align 2, !tbaa !15
  %150 = load i16, i16* %__v236, align 2, !tbaa !15
  store i16 %150, i16* %tmp239, !tbaa !15
  %151 = bitcast i16* %__x238 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %151) #1
  %152 = bitcast i16* %__v236 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %152) #1
  %153 = load i16, i16* %tmp239, !tbaa !15
  %conv240 = zext i16 %153 to i32
  store volatile i32 %conv240, i32* %port.addr, align 4, !tbaa !5
  br label %if.end.242

if.else.241:                                      ; preds = %if.then.225
  %154 = load %struct.servent*, %struct.servent** %sp, align 8, !tbaa !1
  %s_port = getelementptr inbounds %struct.servent, %struct.servent* %154, i32 0, i32 2
  %155 = load i32, i32* %s_port, align 4, !tbaa !41
  store volatile i32 %155, i32* %port.addr, align 4, !tbaa !5
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.241, %if.end.234
  %156 = bitcast %struct.servent** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.end.222
  %sa244 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family245 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa244, i32 0, i32 0
  %157 = load i16, i16* %sa_family245, align 2, !tbaa !24
  %conv246 = zext i16 %157 to i32
  switch i32 %conv246, label %sw.default.251 [
    i32 2, label %sw.bb.247
  ]

sw.bb.247:                                        ; preds = %if.end.243
  %158 = load volatile i32, i32* %port.addr, align 4, !tbaa !5
  %conv248 = trunc i32 %158 to i16
  %sin249 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_in*
  %sin_port250 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin249, i32 0, i32 1
  store i16 %conv248, i16* %sin_port250, align 2, !tbaa !39
  store volatile i32 16, i32* %addrlen, align 4, !tbaa !5
  br label %sw.epilog.256

sw.default.251:                                   ; preds = %if.end.243
  %sa252 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family253 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa252, i32 0, i32 0
  %159 = load i16, i16* %sa_family253, align 2, !tbaa !24
  %conv254 = zext i16 %159 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.56, i32 0, i32 0), i32 %conv254)
  %160 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %160, i32 68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* null)
  %call255 = call i32* @__errno_location() #9
  store i32 22, i32* %call255, align 4, !tbaa !5
  store i32 68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.635

sw.epilog.256:                                    ; preds = %sw.bb.247
  br label %for.cond.257

for.cond.257:                                     ; preds = %sw.epilog.503, %if.end.451, %sw.epilog.256
  %161 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 16), align 1, !tbaa !13
  %conv258 = zext i8 %161 to i32
  %cmp259 = icmp sge i32 %conv258, 1
  br i1 %cmp259, label %land.lhs.true.261, label %if.end.275

land.lhs.true.261:                                ; preds = %for.cond.257
  %162 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool262 = icmp ne i32 %162, 0
  br i1 %tobool262, label %if.end.275, label %if.then.263

if.then.263:                                      ; preds = %land.lhs.true.261
  %163 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call264 = call i8* @anynet_ntoa(%union.bigsockaddr* %addr)
  %164 = bitcast i16* %__v266 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %164) #1
  %165 = bitcast i16* %__x268 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %165) #1
  %166 = load volatile i32, i32* %port.addr, align 4, !tbaa !5
  %conv269 = trunc i32 %166 to i16
  store i16 %conv269, i16* %__x268, align 2, !tbaa !15
  %167 = load i16, i16* %__x268, align 2, !tbaa !15
  %168 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %167) #9, !srcloc !72
  store i16 %168, i16* %__v266, align 2, !tbaa !15
  %169 = load i16, i16* %__v266, align 2, !tbaa !15
  store i16 %169, i16* %tmp270, !tbaa !15
  %170 = bitcast i16* %__x268 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %170) #1
  %171 = bitcast i16* %__v266 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %171) #1
  %172 = load i16, i16* %tmp270, !tbaa !15
  %conv271 = zext i16 %172 to i32
  %sa272 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family273 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa272, i32 0, i32 0
  %173 = load i16, i16* %sa_family273, align 2, !tbaa !24
  %conv274 = zext i16 %173 to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i32 0, i32 0), i8* %163, i8* %call264, i32 %conv271, i32 %conv274)
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.263, %land.lhs.true.261, %for.cond.257
  %174 = bitcast %union.bigsockaddr* %addr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%union.bigsockaddr* @CurHostAddr to i8*), i8* %174, i64 112, i32 4, i1 false), !tbaa.struct !65
  %175 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %175, i32 0, i32 11
  %176 = load %struct.mailer*, %struct.mailer** %mci_mailer, align 8, !tbaa !73
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %176, i32 0, i32 5
  %arrayidx276 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 2
  %177 = load i32, i32* %arrayidx276, align 4, !tbaa !5
  %and277 = and i32 %177, 262144
  %tobool278 = icmp ne i32 %and277, 0
  br i1 %tobool278, label %if.then.279, label %if.else.282

if.then.279:                                      ; preds = %if.end.275
  %178 = bitcast i32* %rport to i8*
  call void @llvm.lifetime.start(i64 4, i8* %178) #1
  store i32 1023, i32* %rport, align 4, !tbaa !5
  %call281 = call i32 @rresvport(i32* %rport)
  store volatile i32 %call281, i32* %s, align 4, !tbaa !5
  %179 = bitcast i32* %rport to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  br label %if.end.287

if.else.282:                                      ; preds = %if.end.275
  %sa283 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family284 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa283, i32 0, i32 0
  %180 = load i16, i16* %sa_family284, align 2, !tbaa !24
  %conv285 = zext i16 %180 to i32
  %call286 = call i32 @socket(i32 %conv285, i32 1, i32 0) #1
  store volatile i32 %call286, i32* %s, align 4, !tbaa !5
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.282, %if.then.279
  %181 = load volatile i32, i32* %s, align 4, !tbaa !5
  %cmp288 = icmp slt i32 %181, 0
  br i1 %cmp288, label %if.then.290, label %if.end.293

if.then.290:                                      ; preds = %if.end.287
  %call291 = call i32* @__errno_location() #9
  %182 = load i32, i32* %call291, align 4, !tbaa !5
  store i32 %182, i32* %save_errno, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.58, i32 0, i32 0))
  %183 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %183, i32 75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* null)
  %184 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call292 = call i32* @__errno_location() #9
  store i32 %184, i32* %call292, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.635

if.end.293:                                       ; preds = %if.end.287
  %185 = load volatile i32, i32* %family, align 4, !tbaa !5
  %idxprom294 = sext i32 %185 to i64
  %arrayidx295 = getelementptr inbounds [41 x %struct.daemon], [41 x %struct.daemon]* @ClientSettings, i32 0, i64 %idxprom294
  %d_tcpsndbufsize = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx295, i32 0, i32 5
  %186 = load i32, i32* %d_tcpsndbufsize, align 4, !tbaa !44
  %cmp296 = icmp sgt i32 %186, 0
  br i1 %cmp296, label %if.then.298, label %if.end.307

if.then.298:                                      ; preds = %if.end.293
  %187 = load volatile i32, i32* %s, align 4, !tbaa !5
  %188 = load volatile i32, i32* %family, align 4, !tbaa !5
  %idxprom299 = sext i32 %188 to i64
  %arrayidx300 = getelementptr inbounds [41 x %struct.daemon], [41 x %struct.daemon]* @ClientSettings, i32 0, i64 %idxprom299
  %d_tcpsndbufsize301 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx300, i32 0, i32 5
  %189 = bitcast i32* %d_tcpsndbufsize301 to i8*
  %call302 = call i32 @setsockopt(i32 %187, i32 1, i32 7, i8* %189, i32 4) #1
  %cmp303 = icmp slt i32 %call302, 0
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %if.then.298
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.305, %if.then.298
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %if.end.293
  %190 = load volatile i32, i32* %family, align 4, !tbaa !5
  %idxprom308 = sext i32 %190 to i64
  %arrayidx309 = getelementptr inbounds [41 x %struct.daemon], [41 x %struct.daemon]* @ClientSettings, i32 0, i64 %idxprom308
  %d_tcprcvbufsize = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx309, i32 0, i32 4
  %191 = load i32, i32* %d_tcprcvbufsize, align 4, !tbaa !43
  %cmp310 = icmp sgt i32 %191, 0
  br i1 %cmp310, label %if.then.312, label %if.end.321

if.then.312:                                      ; preds = %if.end.307
  %192 = load volatile i32, i32* %s, align 4, !tbaa !5
  %193 = load volatile i32, i32* %family, align 4, !tbaa !5
  %idxprom313 = sext i32 %193 to i64
  %arrayidx314 = getelementptr inbounds [41 x %struct.daemon], [41 x %struct.daemon]* @ClientSettings, i32 0, i64 %idxprom313
  %d_tcprcvbufsize315 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx314, i32 0, i32 4
  %194 = bitcast i32* %d_tcprcvbufsize315 to i8*
  %call316 = call i32 @setsockopt(i32 %192, i32 1, i32 8, i8* %194, i32 4) #1
  %cmp317 = icmp slt i32 %call316, 0
  br i1 %cmp317, label %if.then.319, label %if.end.320

if.then.319:                                      ; preds = %if.then.312
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end.320

if.end.320:                                       ; preds = %if.then.319, %if.then.312
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %if.end.307
  %195 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 16), align 1, !tbaa !13
  %conv322 = zext i8 %195 to i32
  %cmp323 = icmp sge i32 %conv322, 1
  br i1 %cmp323, label %land.lhs.true.325, label %if.end.328

land.lhs.true.325:                                ; preds = %if.end.321
  %196 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool326 = icmp ne i32 %196, 0
  br i1 %tobool326, label %if.end.328, label %if.then.327

if.then.327:                                      ; preds = %land.lhs.true.325
  %197 = load volatile i32, i32* %s, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i32 0, i32 0), i32 %197)
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.327, %land.lhs.true.325, %if.end.321
  %198 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 16), align 1, !tbaa !13
  %conv329 = zext i8 %198 to i32
  %cmp330 = icmp sge i32 %conv329, 101
  br i1 %cmp330, label %land.lhs.true.332, label %if.end.337

land.lhs.true.332:                                ; preds = %if.end.328
  %199 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool333 = icmp ne i32 %199, 0
  br i1 %tobool333, label %if.end.337, label %if.then.334

if.then.334:                                      ; preds = %land.lhs.true.332
  %200 = bitcast i32* %on to i8*
  call void @llvm.lifetime.start(i64 4, i8* %200) #1
  store i32 1, i32* %on, align 4, !tbaa !5
  %201 = load volatile i32, i32* %s, align 4, !tbaa !5
  %202 = bitcast i32* %on to i8*
  %call336 = call i32 @setsockopt(i32 %201, i32 1, i32 1, i8* %202, i32 4) #1
  %203 = bitcast i32* %on to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.334, %land.lhs.true.332, %if.end.328
  %204 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp = getelementptr inbounds %struct.envelope, %struct.envelope* %204, i32 0, i32 32
  %205 = load %struct.sm_file*, %struct.sm_file** %e_xfp, align 8, !tbaa !74
  %cmp338 = icmp ne %struct.sm_file* %205, null
  br i1 %cmp338, label %if.then.340, label %if.end.343

if.then.340:                                      ; preds = %if.end.337
  %206 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_xfp341 = getelementptr inbounds %struct.envelope, %struct.envelope* %206, i32 0, i32 32
  %207 = load %struct.sm_file*, %struct.sm_file** %e_xfp341, align 8, !tbaa !74
  %call342 = call i32 @sm_io_flush(%struct.sm_file* %207, i32 -2)
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.340, %if.end.337
  %call344 = call i32* @__errno_location() #9
  store i32 0, i32* %call344, align 4, !tbaa !5
  %208 = load volatile i32, i32* %clt_bind, align 4, !tbaa !5
  %tobool345 = icmp ne i32 %208, 0
  br i1 %tobool345, label %if.then.346, label %if.end.376

if.then.346:                                      ; preds = %if.end.343
  %209 = bitcast i32* %on348 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %209) #1
  store i32 1, i32* %on348, align 4, !tbaa !5
  %sa349 = bitcast %union.bigsockaddr* %clt_addr to %struct.sockaddr*
  %sa_family350 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa349, i32 0, i32 0
  %210 = load i16, i16* %sa_family350, align 2, !tbaa !24
  %conv351 = zext i16 %210 to i32
  switch i32 %conv351, label %sw.epilog.361 [
    i32 2, label %sw.bb.352
  ]

sw.bb.352:                                        ; preds = %if.then.346
  %sin353 = bitcast %union.bigsockaddr* %clt_addr to %struct.sockaddr_in*
  %sin_port354 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin353, i32 0, i32 1
  %211 = load i16, i16* %sin_port354, align 2, !tbaa !39
  %conv355 = zext i16 %211 to i32
  %cmp356 = icmp ne i32 %conv355, 0
  br i1 %cmp356, label %if.then.358, label %if.end.360

if.then.358:                                      ; preds = %sw.bb.352
  %212 = load volatile i32, i32* %s, align 4, !tbaa !5
  %213 = bitcast i32* %on348 to i8*
  %call359 = call i32 @setsockopt(i32 %212, i32 1, i32 2, i8* %213, i32 4) #1
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.358, %sw.bb.352
  br label %sw.epilog.361

sw.epilog.361:                                    ; preds = %if.then.346, %if.end.360
  %214 = load volatile i32, i32* %s, align 4, !tbaa !5
  %sa362 = bitcast %union.bigsockaddr* %clt_addr to %struct.sockaddr*
  %215 = load volatile i32, i32* %socksize, align 4, !tbaa !5
  %call363 = call i32 @bind(i32 %214, %struct.sockaddr* %sa362, i32 %215) #1
  %cmp364 = icmp slt i32 %call363, 0
  br i1 %cmp364, label %if.then.366, label %if.end.372

if.then.366:                                      ; preds = %sw.epilog.361
  %call367 = call i32* @__errno_location() #9
  %216 = load i32, i32* %call367, align 4, !tbaa !5
  store i32 %216, i32* %save_errno, align 4, !tbaa !5
  %217 = load volatile i32, i32* %s, align 4, !tbaa !5
  %call368 = call i32 @close(i32 %217)
  %218 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call369 = call i32* @__errno_location() #9
  store i32 %218, i32* %call369, align 4, !tbaa !5
  %call370 = call i8* @anynet_ntoa(%union.bigsockaddr* %clt_addr)
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.63, i32 0, i32 0), i8* %call370)
  %219 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call371 = call i32* @__errno_location() #9
  store i32 %219, i32* %call371, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.373

if.end.372:                                       ; preds = %sw.epilog.361
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.373

cleanup.373:                                      ; preds = %if.end.372, %if.then.366
  %220 = bitcast i32* %on348 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %cleanup.dest.374 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.374, label %cleanup.635 [
    i32 0, label %cleanup.cont.375
  ]

cleanup.cont.375:                                 ; preds = %cleanup.373
  br label %if.end.376

if.end.376:                                       ; preds = %cleanup.cont.375, %if.end.343
  %call377 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @CtxConnectTimeout, i32 0, i32 0), i32 1) #12
  %cmp378 = icmp eq i32 %call377, 0
  br i1 %cmp378, label %if.then.380, label %if.else.429

if.then.380:                                      ; preds = %if.end.376
  %221 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %221) #1
  %222 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_ntries = getelementptr inbounds %struct.envelope, %struct.envelope* %222, i32 0, i32 43
  %223 = load i32, i32* %e_ntries, align 4, !tbaa !75
  %cmp382 = icmp sle i32 %223, 0
  br i1 %cmp382, label %land.lhs.true.384, label %if.else.390

land.lhs.true.384:                                ; preds = %if.then.380
  %224 = load i64, i64* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @TimeOuts, i32 0, i32 7), align 8, !tbaa !76
  %cmp385 = icmp ne i64 %224, 0
  br i1 %cmp385, label %if.then.387, label %if.else.390

if.then.387:                                      ; preds = %land.lhs.true.384
  %225 = load i64, i64* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @TimeOuts, i32 0, i32 7), align 8, !tbaa !76
  %mul = mul nsw i64 %225, 1000
  %conv388 = trunc i64 %mul to i32
  %call389 = call %struct.sm_event* @sm_seteventm(i32 %conv388, void (i32)* @connecttimeout, i32 0)
  store volatile %struct.sm_event* %call389, %struct.sm_event** %ev, align 8, !tbaa !1
  br label %if.end.399

if.else.390:                                      ; preds = %land.lhs.true.384, %if.then.380
  %226 = load i64, i64* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @TimeOuts, i32 0, i32 8), align 8, !tbaa !78
  %cmp391 = icmp ne i64 %226, 0
  br i1 %cmp391, label %if.then.393, label %if.else.397

if.then.393:                                      ; preds = %if.else.390
  %227 = load i64, i64* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @TimeOuts, i32 0, i32 8), align 8, !tbaa !78
  %mul394 = mul nsw i64 %227, 1000
  %conv395 = trunc i64 %mul394 to i32
  %call396 = call %struct.sm_event* @sm_seteventm(i32 %conv395, void (i32)* @connecttimeout, i32 0)
  store volatile %struct.sm_event* %call396, %struct.sm_event** %ev, align 8, !tbaa !1
  br label %if.end.398

if.else.397:                                      ; preds = %if.else.390
  store volatile %struct.sm_event* null, %struct.sm_event** %ev, align 8, !tbaa !1
  br label %if.end.398

if.end.398:                                       ; preds = %if.else.397, %if.then.393
  br label %if.end.399

if.end.399:                                       ; preds = %if.end.398, %if.then.387
  %228 = load i16, i16* getelementptr inbounds (%struct.sockaddr, %struct.sockaddr* bitcast (%union.bigsockaddr* @ConnectOnlyTo to %struct.sockaddr*), i32 0, i32 0), align 2, !tbaa !24
  %conv400 = zext i16 %228 to i32
  switch i32 %conv400, label %sw.epilog.407 [
    i32 2, label %sw.bb.401
  ]

sw.bb.401:                                        ; preds = %if.end.399
  %229 = load i32, i32* getelementptr inbounds (%union.bigsockaddr, %union.bigsockaddr* @ConnectOnlyTo, i32 0, i32 0, i32 2, i32 0), align 4, !tbaa !36
  %sin402 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_in*
  %sin_addr403 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin402, i32 0, i32 2
  %s_addr404 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr403, i32 0, i32 0
  store i32 %229, i32* %s_addr404, align 4, !tbaa !36
  %230 = load i16, i16* getelementptr inbounds (%struct.sockaddr, %struct.sockaddr* bitcast (%union.bigsockaddr* @ConnectOnlyTo to %struct.sockaddr*), i32 0, i32 0), align 2, !tbaa !24
  %sa405 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family406 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa405, i32 0, i32 0
  store i16 %230, i16* %sa_family406, align 2, !tbaa !24
  br label %sw.epilog.407

sw.epilog.407:                                    ; preds = %if.end.399, %sw.bb.401
  %231 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 16), align 1, !tbaa !13
  %conv408 = zext i8 %231 to i32
  %cmp409 = icmp sge i32 %conv408, 1
  br i1 %cmp409, label %land.lhs.true.411, label %if.end.415

land.lhs.true.411:                                ; preds = %sw.epilog.407
  %232 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool412 = icmp ne i32 %232, 0
  br i1 %tobool412, label %if.end.415, label %if.then.413

if.then.413:                                      ; preds = %land.lhs.true.411
  %call414 = call i8* @anynet_ntoa(%union.bigsockaddr* %addr)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i32 0, i32 0), i8* %call414)
  br label %if.end.415

if.end.415:                                       ; preds = %if.then.413, %land.lhs.true.411, %sw.epilog.407
  %233 = load volatile i32, i32* %s, align 4, !tbaa !5
  %234 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %235 = load volatile i32, i32* %addrlen, align 4, !tbaa !5
  %call416 = call i32 @connect(i32 %233, %struct.sockaddr* %234, i32 %235)
  store i32 %call416, i32* %i, align 4, !tbaa !5
  %call417 = call i32* @__errno_location() #9
  %236 = load i32, i32* %call417, align 4, !tbaa !5
  store i32 %236, i32* %save_errno, align 4, !tbaa !5
  %237 = load volatile %struct.sm_event*, %struct.sm_event** %ev, align 8, !tbaa !1
  %cmp418 = icmp ne %struct.sm_event* %237, null
  br i1 %cmp418, label %if.then.420, label %if.end.421

if.then.420:                                      ; preds = %if.end.415
  %238 = load volatile %struct.sm_event*, %struct.sm_event** %ev, align 8, !tbaa !1
  call void @sm_clrevent(%struct.sm_event* %238)
  br label %if.end.421

if.end.421:                                       ; preds = %if.then.420, %if.end.415
  %239 = load i32, i32* %i, align 4, !tbaa !5
  %cmp422 = icmp sge i32 %239, 0
  br i1 %cmp422, label %if.then.424, label %if.end.425

if.then.424:                                      ; preds = %if.end.421
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.425:                                       ; preds = %if.end.421
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.426

cleanup.426:                                      ; preds = %if.end.425, %if.then.424
  %240 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %cleanup.dest.427 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.427, label %unreachable [
    i32 0, label %cleanup.cont.428
    i32 10, label %for.end.516
  ]

cleanup.cont.428:                                 ; preds = %cleanup.426
  br label %if.end.431

if.else.429:                                      ; preds = %if.end.376
  %call430 = call i32* @__errno_location() #9
  %241 = load i32, i32* %call430, align 4, !tbaa !5
  store i32 %241, i32* %save_errno, align 4, !tbaa !5
  br label %if.end.431

if.end.431:                                       ; preds = %if.else.429, %cleanup.cont.428
  %242 = load volatile i32, i32* %s, align 4, !tbaa !5
  %call432 = call i32 @close(i32 %242)
  %243 = load i64, i64* @DialDelay, align 8, !tbaa !19
  %cmp433 = icmp sgt i64 %243, 0
  br i1 %cmp433, label %land.lhs.true.435, label %if.end.454

land.lhs.true.435:                                ; preds = %if.end.431
  %244 = load volatile i32, i32* %firstconnect, align 4, !tbaa !5
  %tobool436 = icmp ne i32 %244, 0
  br i1 %tobool436, label %land.lhs.true.437, label %if.end.454

land.lhs.true.437:                                ; preds = %land.lhs.true.435
  %245 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer438 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %245, i32 0, i32 11
  %246 = load %struct.mailer*, %struct.mailer** %mci_mailer438, align 8, !tbaa !73
  %m_flags439 = getelementptr inbounds %struct.mailer, %struct.mailer* %246, i32 0, i32 5
  %arrayidx440 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags439, i32 0, i64 2
  %247 = load i32, i32* %arrayidx440, align 4, !tbaa !5
  %and441 = and i32 %247, 67108864
  %tobool442 = icmp ne i32 %and441, 0
  br i1 %tobool442, label %if.then.443, label %if.end.454

if.then.443:                                      ; preds = %land.lhs.true.437
  %248 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 16), align 1, !tbaa !13
  %conv444 = zext i8 %248 to i32
  %cmp445 = icmp sge i32 %conv444, 1
  br i1 %cmp445, label %land.lhs.true.447, label %if.end.451

land.lhs.true.447:                                ; preds = %if.then.443
  %249 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool448 = icmp ne i32 %249, 0
  br i1 %tobool448, label %if.end.451, label %if.then.449

if.then.449:                                      ; preds = %land.lhs.true.447
  %250 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call450 = call i8* @sm_errstring(i32 %250)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.65, i32 0, i32 0), i8* %call450)
  br label %if.end.451

if.end.451:                                       ; preds = %if.then.449, %land.lhs.true.447, %if.then.443
  store volatile i32 0, i32* %firstconnect, align 4, !tbaa !5
  %251 = load i64, i64* @DialDelay, align 8, !tbaa !19
  %conv452 = trunc i64 %251 to i32
  %call453 = call i32 @sleep(i32 %conv452)
  br label %for.cond.257

if.end.454:                                       ; preds = %land.lhs.true.437, %land.lhs.true.435, %if.end.431
  %252 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp455 = icmp sgt i32 %252, 13
  br i1 %cmp455, label %if.then.457, label %if.end.460

if.then.457:                                      ; preds = %if.end.454
  %253 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %253, i32 0, i32 25
  %254 = load i8*, i8** %e_id, align 8, !tbaa !46
  %255 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call458 = call i8* @anynet_ntoa(%union.bigsockaddr* %addr)
  %256 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call459 = call i8* @sm_errstring(i32 %256)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %254, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.66, i32 0, i32 0), i8* %255, i8* %call458, i8* %call459)
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.457, %if.end.454
  %257 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %cmp461 = icmp ne %struct.hostent* %257, null
  br i1 %cmp461, label %land.lhs.true.463, label %if.end.504

land.lhs.true.463:                                ; preds = %if.end.460
  %258 = load volatile i32, i32* %addrno, align 4, !tbaa !5
  %idxprom464 = sext i32 %258 to i64
  %259 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addr_list465 = getelementptr inbounds %struct.hostent, %struct.hostent* %259, i32 0, i32 4
  %260 = load i8**, i8*** %h_addr_list465, align 8, !tbaa !57
  %arrayidx466 = getelementptr inbounds i8*, i8** %260, i64 %idxprom464
  %261 = load i8*, i8** %arrayidx466, align 8, !tbaa !1
  %cmp467 = icmp ne i8* %261, null
  br i1 %cmp467, label %land.lhs.true.469, label %if.end.504

land.lhs.true.469:                                ; preds = %land.lhs.true.463
  %262 = load i64, i64* %enough.addr, align 8, !tbaa !19
  %cmp470 = icmp eq i64 %262, 0
  br i1 %cmp470, label %if.then.476, label %lor.lhs.false.472

lor.lhs.false.472:                                ; preds = %land.lhs.true.469
  %call473 = call i64 @curtime()
  %263 = load i64, i64* %enough.addr, align 8, !tbaa !19
  %cmp474 = icmp slt i64 %call473, %263
  br i1 %cmp474, label %if.then.476, label %if.end.504

if.then.476:                                      ; preds = %lor.lhs.false.472, %land.lhs.true.469
  %264 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 16), align 1, !tbaa !13
  %conv477 = zext i8 %264 to i32
  %cmp478 = icmp sge i32 %conv477, 1
  br i1 %cmp478, label %land.lhs.true.480, label %if.end.484

land.lhs.true.480:                                ; preds = %if.then.476
  %265 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool481 = icmp ne i32 %265, 0
  br i1 %tobool481, label %if.end.484, label %if.then.482

if.then.482:                                      ; preds = %land.lhs.true.480
  %266 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call483 = call i8* @sm_errstring(i32 %266)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.67, i32 0, i32 0), i8* %call483)
  br label %if.end.484

if.end.484:                                       ; preds = %if.then.482, %land.lhs.true.480, %if.then.476
  %sa485 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family486 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa485, i32 0, i32 0
  %267 = load i16, i16* %sa_family486, align 2, !tbaa !24
  %conv487 = zext i16 %267 to i32
  switch i32 %conv487, label %sw.default.494 [
    i32 2, label %sw.bb.488
  ]

sw.bb.488:                                        ; preds = %if.end.484
  %sin489 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr_in*
  %sin_addr490 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin489, i32 0, i32 2
  %268 = bitcast %struct.in_addr* %sin_addr490 to i8*
  %269 = load volatile i32, i32* %addrno, align 4, !tbaa !5
  %inc = add nsw i32 %269, 1
  store volatile i32 %inc, i32* %addrno, align 4, !tbaa !5
  %idxprom491 = sext i32 %269 to i64
  %270 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addr_list492 = getelementptr inbounds %struct.hostent, %struct.hostent* %270, i32 0, i32 4
  %271 = load i8**, i8*** %h_addr_list492, align 8, !tbaa !57
  %arrayidx493 = getelementptr inbounds i8*, i8** %271, i64 %idxprom491
  %272 = load i8*, i8** %arrayidx493, align 8, !tbaa !1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %268, i8* %272, i64 4, i32 1, i1 false)
  br label %sw.epilog.503

sw.default.494:                                   ; preds = %if.end.484
  %sa495 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_data496 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa495, i32 0, i32 1
  %273 = bitcast [14 x i8]* %sa_data496 to i8*
  %274 = load volatile i32, i32* %addrno, align 4, !tbaa !5
  %inc497 = add nsw i32 %274, 1
  store volatile i32 %inc497, i32* %addrno, align 4, !tbaa !5
  %idxprom498 = sext i32 %274 to i64
  %275 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addr_list499 = getelementptr inbounds %struct.hostent, %struct.hostent* %275, i32 0, i32 4
  %276 = load i8**, i8*** %h_addr_list499, align 8, !tbaa !57
  %arrayidx500 = getelementptr inbounds i8*, i8** %276, i64 %idxprom498
  %277 = load i8*, i8** %arrayidx500, align 8, !tbaa !1
  %278 = load volatile %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_length501 = getelementptr inbounds %struct.hostent, %struct.hostent* %278, i32 0, i32 3
  %279 = load i32, i32* %h_length501, align 4, !tbaa !70
  %conv502 = sext i32 %279 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %273, i8* %277, i64 %conv502, i32 1, i1 false)
  br label %sw.epilog.503

sw.epilog.503:                                    ; preds = %sw.default.494, %sw.bb.488
  br label %for.cond.257

if.end.504:                                       ; preds = %lor.lhs.false.472, %land.lhs.true.463, %if.end.460
  %280 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call505 = call i32* @__errno_location() #9
  store i32 %280, i32* %call505, align 4, !tbaa !5
  %call506 = call i32* @__errno_location() #9
  %281 = load i32, i32* %call506, align 4, !tbaa !5
  store i32 %281, i32* %save_errno, align 4, !tbaa !5
  %282 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 16), align 1, !tbaa !13
  %conv507 = zext i8 %282 to i32
  %cmp508 = icmp sge i32 %conv507, 1
  br i1 %cmp508, label %land.lhs.true.510, label %if.end.514

land.lhs.true.510:                                ; preds = %if.end.504
  %283 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool511 = icmp ne i32 %283, 0
  br i1 %tobool511, label %if.end.514, label %if.then.512

if.then.512:                                      ; preds = %land.lhs.true.510
  %284 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call513 = call i8* @sm_errstring(i32 %284)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i32 0, i32 0), i8* %call513)
  br label %if.end.514

if.end.514:                                       ; preds = %if.then.512, %land.lhs.true.510, %if.end.504
  %285 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %285, i32 75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8* null)
  %286 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call515 = call i32* @__errno_location() #9
  store i32 %286, i32* %call515, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.635

for.end.516:                                      ; preds = %cleanup.426
  %287 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %287, i32 0, i32 8
  store %struct.sm_file* null, %struct.sm_file** %mci_out, align 8, !tbaa !79
  %288 = bitcast i32* %s to i8*
  %call517 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdiofd_def, i32 -2, i8* %288, i32 3, i8* null)
  %289 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out518 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %289, i32 0, i32 8
  store %struct.sm_file* %call517, %struct.sm_file** %mci_out518, align 8, !tbaa !79
  %cmp519 = icmp eq %struct.sm_file* %call517, null
  br i1 %cmp519, label %if.then.529, label %lor.lhs.false.521

lor.lhs.false.521:                                ; preds = %for.end.516
  %290 = load volatile i32, i32* %s, align 4, !tbaa !5
  %call522 = call i32 @dup(i32 %290) #1
  store volatile i32 %call522, i32* %s, align 4, !tbaa !5
  %cmp523 = icmp slt i32 %call522, 0
  br i1 %cmp523, label %if.then.529, label %lor.lhs.false.525

lor.lhs.false.525:                                ; preds = %lor.lhs.false.521
  %291 = bitcast i32* %s to i8*
  %call526 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdiofd_def, i32 -2, i8* %291, i32 2, i8* null)
  %292 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_in = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %292, i32 0, i32 7
  store %struct.sm_file* %call526, %struct.sm_file** %mci_in, align 8, !tbaa !80
  %cmp527 = icmp eq %struct.sm_file* %call526, null
  br i1 %cmp527, label %if.then.529, label %if.end.540

if.then.529:                                      ; preds = %lor.lhs.false.525, %lor.lhs.false.521, %for.end.516
  %call530 = call i32* @__errno_location() #9
  %293 = load i32, i32* %call530, align 4, !tbaa !5
  store i32 %293, i32* %save_errno, align 4, !tbaa !5
  %294 = load volatile i32, i32* %s, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.70, i32 0, i32 0), i32 %294)
  %295 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %295, i32 75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* null)
  %296 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out531 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %296, i32 0, i32 8
  %297 = load %struct.sm_file*, %struct.sm_file** %mci_out531, align 8, !tbaa !79
  %cmp532 = icmp ne %struct.sm_file* %297, null
  br i1 %cmp532, label %if.then.534, label %if.end.537

if.then.534:                                      ; preds = %if.then.529
  %298 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out535 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %298, i32 0, i32 8
  %299 = load %struct.sm_file*, %struct.sm_file** %mci_out535, align 8, !tbaa !79
  %call536 = call i32 @sm_io_close(%struct.sm_file* %299, i32 -2)
  br label %if.end.537

if.end.537:                                       ; preds = %if.then.534, %if.then.529
  %300 = load volatile i32, i32* %s, align 4, !tbaa !5
  %call538 = call i32 @close(i32 %300)
  %301 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call539 = call i32* @__errno_location() #9
  store i32 %301, i32* %call539, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.635

if.end.540:                                       ; preds = %lor.lhs.false.525
  %302 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out541 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %302, i32 0, i32 8
  %303 = load %struct.sm_file*, %struct.sm_file** %mci_out541, align 8, !tbaa !79
  %304 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_in542 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %304, i32 0, i32 7
  %305 = load %struct.sm_file*, %struct.sm_file** %mci_in542, align 8, !tbaa !80
  call void @sm_io_automode(%struct.sm_file* %303, %struct.sm_file* %305)
  %sa543 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family544 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa543, i32 0, i32 0
  %306 = load i16, i16* %sa_family544, align 2, !tbaa !24
  %idxprom545 = zext i16 %306 to i64
  %arrayidx546 = getelementptr inbounds [41 x %struct.daemon], [41 x %struct.daemon]* @ClientSettings, i32 0, i64 %idxprom545
  %d_mflags = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx546, i32 0, i32 10
  %307 = load i8*, i8** %d_mflags, align 8, !tbaa !28
  %cmp547 = icmp ne i8* %307, null
  br i1 %cmp547, label %if.then.549, label %if.else.556

if.then.549:                                      ; preds = %if.end.540
  %308 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_macro = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %308, i32 0, i32 24
  %call550 = call i32 @macid_parse(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0), i8** null)
  %sa551 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family552 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa551, i32 0, i32 0
  %309 = load i16, i16* %sa_family552, align 2, !tbaa !24
  %idxprom553 = zext i16 %309 to i64
  %arrayidx554 = getelementptr inbounds [41 x %struct.daemon], [41 x %struct.daemon]* @ClientSettings, i32 0, i64 %idxprom553
  %d_mflags555 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx554, i32 0, i32 10
  %310 = load i8*, i8** %d_mflags555, align 8, !tbaa !28
  %311 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %mci_macro, i32 2, i32 %call550, i8* %310, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 2828, i32 %311)
  br label %if.end.559

if.else.556:                                      ; preds = %if.end.540
  %312 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_macro557 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %312, i32 0, i32 24
  %call558 = call i32 @macid_parse(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0), i8** null)
  %313 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* %mci_macro557, i32 2, i32 %call558, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 2832, i32 %313)
  br label %if.end.559

if.end.559:                                       ; preds = %if.else.556, %if.then.549
  %sa560 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family561 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa560, i32 0, i32 0
  %314 = load i16, i16* %sa_family561, align 2, !tbaa !24
  %idxprom562 = zext i16 %314 to i64
  %arrayidx563 = getelementptr inbounds [41 x %struct.daemon], [41 x %struct.daemon]* @ClientSettings, i32 0, i64 %idxprom562
  %d_flags564 = getelementptr inbounds %struct.daemon, %struct.daemon* %arrayidx563, i32 0, i32 9
  %arrayidx565 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags564, i32 0, i64 3
  %315 = load i32, i32* %arrayidx565, align 4, !tbaa !5
  %and566 = and i32 %315, 256
  %tobool567 = icmp ne i32 %and566, 0
  br i1 %tobool567, label %if.then.568, label %if.end.571

if.then.568:                                      ; preds = %if.end.559
  %arrayidx569 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags, i32 0, i64 3
  %316 = load i32, i32* %arrayidx569, align 4, !tbaa !5
  %or570 = or i32 %316, 256
  store i32 %or570, i32* %arrayidx569, align 4, !tbaa !5
  br label %if.end.571

if.end.571:                                       ; preds = %if.then.568, %if.end.559
  store i32 112, i32* %len, align 4, !tbaa !5
  %317 = load volatile i32, i32* %s, align 4, !tbaa !5
  %sa572 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %call573 = call i32 @getsockname(i32 %317, %struct.sockaddr* %sa572, i32* %len) #1
  %cmp574 = icmp eq i32 %call573, 0
  br i1 %cmp574, label %if.then.576, label %if.else.612

if.then.576:                                      ; preds = %if.end.571
  %318 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %318) #1
  %319 = bitcast [5 x i8]* %family579 to i8*
  call void @llvm.lifetime.start(i64 5, i8* %319) #1
  %call580 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i32 0, i32 0), i8** null)
  %call581 = call i8* @anynet_ntoa(%union.bigsockaddr* %addr)
  %320 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 1, i32 %call580, i8* %call581, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 2849, i32 %320)
  %arraydecay582 = getelementptr inbounds [5 x i8], [5 x i8]* %family579, i32 0, i32 0
  %sa583 = bitcast %union.bigsockaddr* %addr to %struct.sockaddr*
  %sa_family584 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa583, i32 0, i32 0
  %321 = load i16, i16* %sa_family584, align 2, !tbaa !24
  %conv585 = zext i16 %321 to i32
  %call586 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay582, i64 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i32 %conv585)
  %call587 = call i32 @macid_parse(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i8** null)
  %arraydecay588 = getelementptr inbounds [5 x i8], [5 x i8]* %family579, i32 0, i32 0
  %322 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 1, i32 %call587, i8* %arraydecay588, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 2853, i32 %322)
  %call589 = call i8* @hostnamebyanyaddr(%union.bigsockaddr* %addr)
  store i8* %call589, i8** %name, align 8, !tbaa !1
  %call590 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0), i8** null)
  %323 = load i8*, i8** %name, align 8, !tbaa !1
  %324 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 1, i32 %call590, i8* %323, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 2857, i32 %324)
  %325 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp591 = icmp sgt i32 %325, 11
  br i1 %cmp591, label %if.then.593, label %if.end.595

if.then.593:                                      ; preds = %if.then.576
  %326 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id594 = getelementptr inbounds %struct.envelope, %struct.envelope* %326, i32 0, i32 25
  %327 = load i8*, i8** %e_id594, align 8, !tbaa !46
  %328 = load i8*, i8** %name, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %327, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.75, i32 0, i32 0), i8* %328)
  br label %if.end.595

if.end.595:                                       ; preds = %if.then.593, %if.then.576
  %arrayidx596 = getelementptr inbounds [8 x i32], [8 x i32]* %d_flags, i32 0, i64 3
  %329 = load i32, i32* %arrayidx596, align 4, !tbaa !5
  %and597 = and i32 %329, 256
  %tobool598 = icmp ne i32 %and597, 0
  br i1 %tobool598, label %if.then.599, label %if.end.611

if.then.599:                                      ; preds = %if.end.595
  %330 = load i8*, i8** %name, align 8, !tbaa !1
  %arrayidx600 = getelementptr inbounds i8, i8* %330, i64 0
  %331 = load i8, i8* %arrayidx600, align 1, !tbaa !13
  %conv601 = sext i8 %331 to i32
  %cmp602 = icmp ne i32 %conv601, 91
  br i1 %cmp602, label %land.lhs.true.604, label %if.end.610

land.lhs.true.604:                                ; preds = %if.then.599
  %332 = load i8*, i8** %name, align 8, !tbaa !1
  %call605 = call i8* @strchr(i8* %332, i32 46) #1
  %cmp606 = icmp ne i8* %call605, null
  br i1 %cmp606, label %if.then.608, label %if.end.610

if.then.608:                                      ; preds = %land.lhs.true.604
  %333 = load i8*, i8** %name, align 8, !tbaa !1
  %call609 = call i8* @newstr(i8* %333)
  %334 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_heloname = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %334, i32 0, i32 17
  store i8* %call609, i8** %mci_heloname, align 8, !tbaa !81
  br label %if.end.610

if.end.610:                                       ; preds = %if.then.608, %land.lhs.true.604, %if.then.599
  br label %if.end.611

if.end.611:                                       ; preds = %if.end.610, %if.end.595
  %335 = bitcast [5 x i8]* %family579 to i8*
  call void @llvm.lifetime.end(i64 5, i8* %335) #1
  %336 = bitcast i8** %name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %336) #1
  br label %if.end.616

if.else.612:                                      ; preds = %if.end.571
  %call613 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0), i8** null)
  %337 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call613, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 2873, i32 %337)
  %call614 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i32 0, i32 0), i8** null)
  %338 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call614, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 2875, i32 %338)
  %call615 = call i32 @macid_parse(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i8** null)
  %339 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call615, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 2877, i32 %339)
  br label %if.end.616

if.end.616:                                       ; preds = %if.else.612, %if.end.611
  %340 = load i8*, i8** @HeloName, align 8, !tbaa !1
  %cmp617 = icmp ne i8* %340, null
  br i1 %cmp617, label %land.lhs.true.619, label %if.end.634

land.lhs.true.619:                                ; preds = %if.end.616
  %341 = load i8*, i8** @HeloName, align 8, !tbaa !1
  %arrayidx620 = getelementptr inbounds i8, i8* %341, i64 0
  %342 = load i8, i8* %arrayidx620, align 1, !tbaa !13
  %conv621 = sext i8 %342 to i32
  %cmp622 = icmp ne i32 %conv621, 0
  br i1 %cmp622, label %if.then.624, label %if.end.634

if.then.624:                                      ; preds = %land.lhs.true.619
  br label %do.body

do.body:                                          ; preds = %if.then.624
  %343 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_heloname625 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %343, i32 0, i32 17
  %344 = load i8*, i8** %mci_heloname625, align 8, !tbaa !81
  %cmp626 = icmp ne i8* %344, null
  br i1 %cmp626, label %if.then.628, label %if.end.631

if.then.628:                                      ; preds = %do.body
  %345 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_heloname629 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %345, i32 0, i32 17
  %346 = load i8*, i8** %mci_heloname629, align 8, !tbaa !81
  call void @sm_free_tagged(i8* %346, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 2883)
  %347 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_heloname630 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %347, i32 0, i32 17
  store i8* null, i8** %mci_heloname630, align 8, !tbaa !81
  br label %if.end.631

if.end.631:                                       ; preds = %if.then.628, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.631
  br label %do.end

do.end:                                           ; preds = %do.cond
  %348 = load i8*, i8** @HeloName, align 8, !tbaa !1
  %call632 = call i8* @newstr(i8* %348)
  %349 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_heloname633 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %349, i32 0, i32 17
  store i8* %call632, i8** %mci_heloname633, align 8, !tbaa !81
  br label %if.end.634

if.end.634:                                       ; preds = %do.end, %land.lhs.true.619, %if.end.616
  %350 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %350, i32 0, i8* null, i8* null)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.635

cleanup.635:                                      ; preds = %if.end.634, %if.end.537, %if.end.514, %cleanup.373, %if.then.290, %sw.default.251, %if.then.211, %if.end.194, %if.then.191, %if.then.145, %cleanup
  %351 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %351) #1
  %352 = bitcast [8 x i32]* %d_flags to i8*
  call void @llvm.lifetime.end(i64 32, i8* %352) #1
  %353 = bitcast i32* %clt_bind to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353) #1
  %354 = bitcast i32* %socksize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %354) #1
  %355 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %355) #1
  %356 = bitcast i32* %family to i8*
  call void @llvm.lifetime.end(i64 4, i8* %356) #1
  %357 = bitcast %struct.sm_event** %ev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %357) #1
  %358 = bitcast i32* %firstconnect to i8*
  call void @llvm.lifetime.end(i64 4, i8* %358) #1
  %359 = bitcast i32* %addrlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %359) #1
  %360 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %360) #1
  %361 = bitcast %union.bigsockaddr* %clt_addr to i8*
  call void @llvm.lifetime.end(i64 112, i8* %361) #1
  %362 = bitcast %union.bigsockaddr* %addr to i8*
  call void @llvm.lifetime.end(i64 112, i8* %362) #1
  %363 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %363) #1
  %364 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %364) #1
  %365 = bitcast i32* %addrno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %365) #1
  %366 = load i32, i32* %retval
  ret i32 %366

unreachable:                                      ; preds = %cleanup.426
  unreachable
}

declare i8* @macvalue(i32, %struct.envelope*) #2

; Function Attrs: nounwind uwtable
define internal i32 @addr_family(i8* %addr) #0 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i8* %addr, i8** %addr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %call = call i32 @inet_addr(i8* %0) #1
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 16), align 1, !tbaa !13
  %conv = zext i8 %1 to i32
  %cmp1 = icmp sge i32 %conv, 9
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %3 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.168, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  store i32 2, i32* %retval
  br label %return

if.end.4:                                         ; preds = %entry
  %4 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !13
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 47
  br i1 %cmp6, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %if.end.4
  %6 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 16), align 1, !tbaa !13
  %conv9 = zext i8 %6 to i32
  %cmp10 = icmp sge i32 %conv9, 9
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.15

land.lhs.true.12:                                 ; preds = %if.then.8
  %7 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool13 = icmp ne i32 %7, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.12
  %8 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.169, i32 0, i32 0), i8* %8)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true.12, %if.then.8
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.4
  %9 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 16), align 1, !tbaa !13
  %conv17 = zext i8 %9 to i32
  %cmp18 = icmp sge i32 %conv17, 9
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.23

land.lhs.true.20:                                 ; preds = %if.end.16
  %10 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool21 = icmp ne i32 %10, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true.20
  %11 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.170, i32 0, i32 0), i8* %11)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %land.lhs.true.20, %if.end.16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.end.15, %if.end
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #4

declare %struct.hostent* @sm_gethostbyname(i8*, i32) #2

; Function Attrs: nounwind readnone
declare %struct.__res_state* @__res_state() #3

declare void @usrerrenh(i8*, i8*, ...) #2

declare void @mci_setstat(%struct.mailer_con_info*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct.servent* @getservbyname(i8*, i8*) #2

declare i32 @rresvport(i32*) #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #4

declare i32 @sm_io_flush(%struct.sm_file*, i32) #2

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #4

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(%struct.__jmp_buf_tag*, i32) #7

declare %struct.sm_event* @sm_seteventm(i32, void (i32)*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @connecttimeout(i32 %ignore) #0 {
entry:
  %ignore.addr = alloca i32, align 4
  store i32 %ignore, i32* %ignore.addr, align 4, !tbaa !5
  %call = call i32* @__errno_location() #9
  store i32 110, i32* %call, align 4, !tbaa !5
  call void @siglongjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @CtxConnectTimeout, i32 0, i32 0), i32 1) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @connect(i32, %struct.sockaddr*, i32) #2

declare void @sm_clrevent(%struct.sm_event*) #2

declare i32 @sm_io_close(%struct.sm_file*, i32) #2

declare void @sm_free_tagged(i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @makeconnection_ds(i8* %mux_path, %struct.mailer_con_info* %mci) #0 {
entry:
  %retval = alloca i32, align 4
  %mux_path.addr = alloca i8*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %sock = alloca i32, align 4
  %rval = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %sff = alloca i64, align 8
  %unix_addr = alloca %struct.sockaddr_un, align 2
  %cleanup.dest.slot = alloca i32
  store i8* %mux_path, i8** %mux_path.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %0 = bitcast i32* %sock to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 271110, i64* %sff, align 8, !tbaa !19
  %4 = bitcast %struct.sockaddr_un* %unix_addr to i8*
  call void @llvm.lifetime.start(i64 110, i8* %4) #1
  %5 = load i8*, i8** %mux_path.addr, align 8, !tbaa !1
  %6 = load i32, i32* @RunAsUid, align 4, !tbaa !5
  %7 = load i32, i32* @RunAsGid, align 4, !tbaa !5
  %8 = load i8*, i8** @RunAsUserName, align 8, !tbaa !1
  %9 = load i64, i64* %sff, align 8, !tbaa !19
  %call = call i32 @safefile(i8* %5, i32 %6, i32 %7, i8* %8, i64 %9, i32 384, %struct.stat* null)
  store i32 %call, i32* %rval, align 4, !tbaa !5
  %10 = load i32, i32* %rval, align 4, !tbaa !5
  %cmp = icmp ne i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i8*, i8** %mux_path.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.76, i32 0, i32 0), i8* %11)
  %12 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %12, i32 75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* null)
  %13 = load i32, i32* %rval, align 4, !tbaa !5
  %call1 = call i32* @__errno_location() #9
  store i32 %13, i32* %call1, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = bitcast %struct.sockaddr_un* %unix_addr to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 110, i32 2, i1 false)
  %sun_family = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %unix_addr, i32 0, i32 0
  store i16 1, i16* %sun_family, align 2, !tbaa !26
  %15 = load i8*, i8** %mux_path.addr, align 8, !tbaa !1
  %call2 = call i64 @strlen(i8* %15) #11
  %cmp3 = icmp uge i64 %call2, 108
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %16 = load i8*, i8** %mux_path.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.78, i32 0, i32 0), i8* %16)
  %17 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %17, i32 75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i8* null)
  %call5 = call i32* @__errno_location() #9
  store i32 36, i32* %call5, align 4, !tbaa !5
  store i32 69, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %sun_path = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %unix_addr, i32 0, i32 1
  %arraydecay = getelementptr inbounds [108 x i8], [108 x i8]* %sun_path, i32 0, i32 0
  %18 = load i8*, i8** %mux_path.addr, align 8, !tbaa !1
  %call7 = call i64 @sm_strlcpy(i8* %arraydecay, i8* %18, i64 108)
  %call8 = call i32 @socket(i32 1, i32 1, i32 0) #1
  store i32 %call8, i32* %sock, align 4, !tbaa !5
  %19 = load i32, i32* %sock, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %19, -1
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end.6
  %call11 = call i32* @__errno_location() #9
  %20 = load i32, i32* %call11, align 4, !tbaa !5
  store i32 %20, i32* %save_errno, align 4, !tbaa !5
  %21 = load i8*, i8** %mux_path.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.80, i32 0, i32 0), i8* %21)
  %22 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %22, i32 75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* null)
  %23 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call12 = call i32* @__errno_location() #9
  store i32 %23, i32* %call12, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end.6
  %24 = load i32, i32* %sock, align 4, !tbaa !5
  %25 = bitcast %struct.sockaddr_un* %unix_addr to %struct.sockaddr*
  %call14 = call i32 @connect(i32 %24, %struct.sockaddr* %25, i32 110)
  %cmp15 = icmp eq i32 %call14, -1
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.13
  %call17 = call i32* @__errno_location() #9
  %26 = load i32, i32* %call17, align 4, !tbaa !5
  store i32 %26, i32* %save_errno, align 4, !tbaa !5
  %27 = load i8*, i8** %mux_path.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.81, i32 0, i32 0), i8* %27)
  %28 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %28, i32 75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8* null)
  %29 = load i32, i32* %sock, align 4, !tbaa !5
  %call18 = call i32 @close(i32 %29)
  %30 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call19 = call i32* @__errno_location() #9
  store i32 %30, i32* %call19, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.13
  %31 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %31, i32 0, i32 8
  store %struct.sm_file* null, %struct.sm_file** %mci_out, align 8, !tbaa !79
  %32 = bitcast i32* %sock to i8*
  %call21 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdiofd_def, i32 -2, i8* %32, i32 3, i8* null)
  %33 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out22 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %33, i32 0, i32 8
  store %struct.sm_file* %call21, %struct.sm_file** %mci_out22, align 8, !tbaa !79
  %cmp23 = icmp eq %struct.sm_file* %call21, null
  br i1 %cmp23, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %34 = load i32, i32* %sock, align 4, !tbaa !5
  %call24 = call i32 @dup(i32 %34) #1
  store i32 %call24, i32* %sock, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then.29, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false
  %35 = bitcast i32* %sock to i8*
  %call27 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdiofd_def, i32 -2, i8* %35, i32 2, i8* null)
  %36 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_in = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %36, i32 0, i32 7
  store %struct.sm_file* %call27, %struct.sm_file** %mci_in, align 8, !tbaa !80
  %cmp28 = icmp eq %struct.sm_file* %call27, null
  br i1 %cmp28, label %if.then.29, label %if.end.39

if.then.29:                                       ; preds = %lor.lhs.false.26, %lor.lhs.false, %if.end.20
  %call30 = call i32* @__errno_location() #9
  %37 = load i32, i32* %call30, align 4, !tbaa !5
  store i32 %37, i32* %save_errno, align 4, !tbaa !5
  %38 = load i32, i32* %sock, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.70, i32 0, i32 0), i32 %38)
  %39 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %39, i32 75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* null)
  %40 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out31 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %40, i32 0, i32 8
  %41 = load %struct.sm_file*, %struct.sm_file** %mci_out31, align 8, !tbaa !79
  %cmp32 = icmp ne %struct.sm_file* %41, null
  br i1 %cmp32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.then.29
  %42 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out34 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %42, i32 0, i32 8
  %43 = load %struct.sm_file*, %struct.sm_file** %mci_out34, align 8, !tbaa !79
  %call35 = call i32 @sm_io_close(%struct.sm_file* %43, i32 -2)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.then.29
  %44 = load i32, i32* %sock, align 4, !tbaa !5
  %call37 = call i32 @close(i32 %44)
  %45 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call38 = call i32* @__errno_location() #9
  store i32 %45, i32* %call38, align 4, !tbaa !5
  store i32 75, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %lor.lhs.false.26
  %46 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_out40 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %46, i32 0, i32 8
  %47 = load %struct.sm_file*, %struct.sm_file** %mci_out40, align 8, !tbaa !79
  %48 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_in41 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %48, i32 0, i32 7
  %49 = load %struct.sm_file*, %struct.sm_file** %mci_in41, align 8, !tbaa !80
  call void @sm_io_automode(%struct.sm_file* %47, %struct.sm_file* %49)
  %50 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  call void @mci_setstat(%struct.mailer_con_info* %50, i32 0, i8* null, i8* null)
  %call42 = call i32* @__errno_location() #9
  store i32 0, i32* %call42, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.end.36, %if.then.16, %if.then.10, %if.then.4, %if.then
  %51 = bitcast %struct.sockaddr_un* %unix_addr to i8*
  call void @llvm.lifetime.end(i64 110, i8* %51) #1
  %52 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %rval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %sock to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare i32 @safefile(i8*, i32, i32, i8*, i64, i32, %struct.stat*) #2

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

declare void @sm_allsignals(i32) #2

declare void @closecontrolsocket(i32) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #4

declare void @sm_clear_events() #2

declare void @cleanup_shm(i32) #2

declare i32 @drop_privileges(i32) #2

declare void @sm_close_on_exec(i32, i32) #2

declare void @sm_signal_noop(i32) #2

; Function Attrs: nounwind
declare i32 @execve(i8*, i8**, i8**) #4

; Function Attrs: nounwind uwtable
define %struct.hostent* @myhostname(i8* %hostbuf, i32 %size) #0 {
entry:
  %retval = alloca %struct.hostent*, align 8
  %hostbuf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %hp = alloca %struct.hostent*, align 8
  %cleanup.dest.slot = alloca i32
  %ha = alloca i8**, align 8
  store i8* %hostbuf, i8** %hostbuf.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = sext i32 %2 to i64
  %call = call i32 @gethostname(i8* %1, i64 %conv) #1
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  %6 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv5 = sext i32 %6 to i64
  %call6 = call i64 @sm_strlcpy(i8* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), i64 %conv5)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  %8 = load i8, i8* @InetMode, align 1, !tbaa !13
  %conv7 = sext i8 %8 to i32
  %call8 = call %struct.hostent* @sm_gethostbyname(i8* %7, i32 %conv7)
  store %struct.hostent* %call8, %struct.hostent** %hp, align 8, !tbaa !1
  %9 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.hostent* %9, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store %struct.hostent* null, %struct.hostent** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %10 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_name = getelementptr inbounds %struct.hostent, %struct.hostent* %10, i32 0, i32 0
  %11 = load i8*, i8** %h_name, align 8, !tbaa !55
  %call13 = call i8* @strchr(i8* %11, i32 46) #1
  %cmp14 = icmp ne i8* %call13, null
  br i1 %cmp14, label %if.then.20, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.end.12
  %12 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  %call17 = call i8* @strchr(i8* %12, i32 46) #1
  %cmp18 = icmp eq i8* %call17, null
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %lor.lhs.false.16, %if.end.12
  %13 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  %14 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_name21 = getelementptr inbounds %struct.hostent, %struct.hostent* %14, i32 0, i32 0
  %15 = load i8*, i8** %h_name21, align 8, !tbaa !55
  %16 = load i32, i32* %size.addr, align 4, !tbaa !5
  call void @cleanstrcpy(i8* %13, i8* %15, i32 %16)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %lor.lhs.false.16
  %17 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  %call23 = call i8* @strchr(i8* %17, i32 46) #1
  %cmp24 = icmp eq i8* %call23, null
  br i1 %cmp24, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %if.end.22
  %18 = bitcast i8*** %ha to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_aliases = getelementptr inbounds %struct.hostent, %struct.hostent* %19, i32 0, i32 1
  %20 = load i8**, i8*** %h_aliases, align 8, !tbaa !82
  store i8** %20, i8*** %ha, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.26
  %21 = load i8**, i8*** %ha, align 8, !tbaa !1
  %cmp27 = icmp ne i8** %21, null
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %22 = load i8**, i8*** %ha, align 8, !tbaa !1
  %23 = load i8*, i8** %22, align 8, !tbaa !1
  %cmp29 = icmp ne i8* %23, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %24 = phi i1 [ false, %for.cond ], [ %cmp29, %land.rhs ]
  br i1 %24, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %25 = load i8**, i8*** %ha, align 8, !tbaa !1
  %26 = load i8*, i8** %25, align 8, !tbaa !1
  %call31 = call i8* @strchr(i8* %26, i32 46) #1
  %cmp32 = icmp ne i8* %call31, null
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %for.body
  %27 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  %28 = load i8**, i8*** %ha, align 8, !tbaa !1
  %29 = load i8*, i8** %28, align 8, !tbaa !1
  %30 = load i32, i32* %size.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %30, 1
  call void @cleanstrcpy(i8* %27, i8* %29, i32 %sub)
  %31 = load i32, i32* %size.addr, align 4, !tbaa !5
  %sub35 = sub nsw i32 %31, 1
  %idxprom = sext i32 %sub35 to i64
  %32 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %32, i64 %idxprom
  store i8 0, i8* %arrayidx36, align 1, !tbaa !13
  br label %for.end

if.end.37:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %33 = load i8**, i8*** %ha, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %incdec.ptr, i8*** %ha, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.34, %land.end
  %34 = bitcast i8*** %ha to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  br label %if.end.38

if.end.38:                                        ; preds = %for.end, %if.end.22
  %35 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  %call39 = call i8* @strchr(i8* %35, i32 46) #1
  %cmp40 = icmp eq i8* %call39, null
  br i1 %cmp40, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end.38
  %36 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  %37 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call42 = call i32 @getcanonname(i8* %36, i32 %37, i32 1, i32* null)
  %tobool = icmp ne i32 %call42, 0
  br i1 %tobool, label %if.end.49, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true
  %38 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.90, i32 0, i32 0), i8* %38)
  %39 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.90, i32 0, i32 0), i8* %39)
  %call44 = call i32 @sleep(i32 60)
  %40 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  %41 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call45 = call i32 @getcanonname(i8* %40, i32 %41, i32 1, i32* null)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.then.43
  %42 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.91, i32 0, i32 0), i8* %42)
  %43 = load i8*, i8** %hostbuf.addr, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.92, i32 0, i32 0), i8* %43)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.then.43
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true, %if.end.38
  %44 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  store %struct.hostent* %44, %struct.hostent** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.49, %if.then.11
  %45 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load %struct.hostent*, %struct.hostent** %retval
  ret %struct.hostent* %46
}

; Function Attrs: nounwind
declare i32 @gethostname(i8*, i64) #4

declare void @cleanstrcpy(i8*, i8*, i32) #2

declare i32 @getcanonname(i8*, i32, i32, i32*) #2

declare void @message(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @getauthinfo(i32 %fd, i32* %may_be_forged) #0 {
entry:
  %retval = alloca i8*, align 8
  %fd.addr = alloca i32, align 4
  %may_be_forged.addr = alloca i32*, align 8
  %port = alloca i16, align 2
  %falen = alloca i32, align 4
  %p = alloca i8*, align 8
  %la = alloca %union.bigsockaddr, align 4
  %lalen = alloca i32, align 4
  %sp = alloca %struct.servent*, align 8
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i64, align 8
  %ev = alloca %struct.sm_event*, align 8
  %nleft = alloca i32, align 4
  %hp = alloca %struct.hostent*, align 8
  %ostype = alloca i8*, align 8
  %ha = alloca i8**, align 8
  %ibuf = alloca [257 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %family = alloca i32, align 4
  %__v = alloca i16, align 2
  %__x = alloca i16, align 2
  %tmp = alloca i16, align 2
  %__v80 = alloca i16, align 2
  %__x82 = alloca i16, align 2
  %tmp83 = alloca i16, align 2
  %__v99 = alloca i16, align 2
  %__x101 = alloca i16, align 2
  %tmp102 = alloca i16, align 2
  %s158 = alloca i8*, align 8
  %charset = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !5
  store i32* %may_be_forged, i32** %may_be_forged.addr, align 8, !tbaa !1
  %0 = bitcast i16* %port to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  store i16 0, i16* %port, align 2, !tbaa !15
  %1 = bitcast i32* %falen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store volatile i8* null, i8** %p, align 8, !tbaa !1
  %3 = bitcast %union.bigsockaddr* %la to i8*
  call void @llvm.lifetime.start(i64 112, i8* %3) #1
  %4 = bitcast i32* %lalen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.servent** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  %8 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.sm_event** %ev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %nleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i8** %ostype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i8* null, i8** %ostype, align 8, !tbaa !1
  %13 = bitcast i8*** %ha to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast [257 x i8]* %ibuf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %14) #1
  %15 = load i32*, i32** %may_be_forged.addr, align 8, !tbaa !1
  store i32 1, i32* %15, align 4, !tbaa !5
  store i32 112, i32* %falen, align 4, !tbaa !5
  %16 = load i32, i32* %fd.addr, align 4, !tbaa !5
  %call = call i32 @isatty(i32 %16) #1
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %fd.addr, align 4, !tbaa !5
  %call1 = call i32 @getpeername(i32 %17, %struct.sockaddr* bitcast (%union.bigsockaddr* @RealHostAddr to %struct.sockaddr*), i32* %falen) #1
  store i32 %call1, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %18 = load i32, i32* %falen, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %18, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %19 = load i16, i16* getelementptr inbounds (%struct.sockaddr, %struct.sockaddr* bitcast (%union.bigsockaddr* @RealHostAddr to %struct.sockaddr*), i32 0, i32 0), align 2, !tbaa !24
  %conv = zext i16 %19 to i32
  %cmp5 = icmp eq i32 %conv, 0
  br i1 %cmp5, label %if.then, label %if.end.23

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %20, 0
  br i1 %cmp7, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.then
  %call10 = call i32* @__errno_location() #9
  %21 = load i32, i32* %call10, align 4, !tbaa !5
  %cmp11 = icmp ne i32 %21, 88
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.9
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.386

if.end:                                           ; preds = %if.then.9
  %call14 = call i32* @__errno_location() #9
  store i32 0, i32* %call14, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %22 = load i32*, i32** %may_be_forged.addr, align 8, !tbaa !1
  store i32 0, i32* %22, align 4, !tbaa !5
  %23 = load i8*, i8** @RealUserName, align 8, !tbaa !1
  %call16 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* getelementptr inbounds ([367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i32 0), i64 367, i32 2, i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0))
  %24 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 9), align 1, !tbaa !13
  %conv17 = zext i8 %24 to i32
  %cmp18 = icmp sge i32 %conv17, 1
  br i1 %cmp18, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.15
  %25 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool20 = icmp ne i32 %25, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true, %if.end.15
  store i8* getelementptr inbounds ([367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.386

if.end.23:                                        ; preds = %lor.lhs.false.4
  %26 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %cmp24 = icmp eq i8* %26, null
  br i1 %cmp24, label %if.then.26, label %if.end.34

if.then.26:                                       ; preds = %if.end.23
  %call27 = call i8* @hostnamebyanyaddr(%union.bigsockaddr* @RealHostAddr)
  %call28 = call i8* @newstr(i8* %call27)
  store i8* %call28, i8** @RealHostName, align 8, !tbaa !1
  %27 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %call29 = call i64 @strlen(i8* %27) #11
  %cmp30 = icmp ugt i64 %call29, 256
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.26
  %28 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 256
  store i8 0, i8* %arrayidx, align 1, !tbaa !13
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.then.26
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.23
  %call35 = call i8* @anynet_ntoa(%union.bigsockaddr* @RealHostAddr)
  %arrayidx36 = getelementptr inbounds i8, i8* %call35, i64 0
  %29 = load i8, i8* %arrayidx36, align 1, !tbaa !13
  %conv37 = sext i8 %29 to i32
  %cmp38 = icmp eq i32 %conv37, 91
  br i1 %cmp38, label %if.then.45, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.end.34
  %30 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx41, align 1, !tbaa !13
  %conv42 = sext i8 %31 to i32
  %cmp43 = icmp eq i32 %conv42, 91
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %lor.lhs.false.40, %if.end.34
  %32 = load i32*, i32** %may_be_forged.addr, align 8, !tbaa !1
  store i32 0, i32* %32, align 4, !tbaa !5
  br label %if.end.59

if.else:                                          ; preds = %lor.lhs.false.40
  %33 = bitcast i32* %family to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i16, i16* getelementptr inbounds (%struct.sockaddr, %struct.sockaddr* bitcast (%union.bigsockaddr* @RealHostAddr to %struct.sockaddr*), i32 0, i32 0), align 2, !tbaa !24
  %conv46 = zext i16 %34 to i32
  store i32 %conv46, i32* %family, align 4, !tbaa !5
  %35 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %36 = load i32, i32* %family, align 4, !tbaa !5
  %call47 = call %struct.hostent* @sm_gethostbyname(i8* %35, i32 %36)
  store %struct.hostent* %call47, %struct.hostent** %hp, align 8, !tbaa !1
  %37 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %cmp48 = icmp ne %struct.hostent* %37, null
  br i1 %cmp48, label %if.then.50, label %if.end.58

if.then.50:                                       ; preds = %if.else
  %38 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_addr_list = getelementptr inbounds %struct.hostent, %struct.hostent* %38, i32 0, i32 4
  %39 = load i8**, i8*** %h_addr_list, align 8, !tbaa !57
  store i8** %39, i8*** %ha, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.50
  %40 = load i8**, i8*** %ha, align 8, !tbaa !1
  %41 = load i8*, i8** %40, align 8, !tbaa !1
  %cmp51 = icmp ne i8* %41, null
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %43 = load i8**, i8*** %ha, align 8, !tbaa !1
  %44 = load i8*, i8** %43, align 8, !tbaa !1
  %call53 = call i32 @addrcmp(%struct.hostent* %42, i8* %44, %union.bigsockaddr* @RealHostAddr)
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %for.body
  %45 = load i32*, i32** %may_be_forged.addr, align 8, !tbaa !1
  store i32 0, i32* %45, align 4, !tbaa !5
  br label %for.end

if.end.57:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.57
  %46 = load i8**, i8*** %ha, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %incdec.ptr, i8*** %ha, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.56, %for.cond
  br label %if.end.58

if.end.58:                                        ; preds = %for.end, %if.else
  %47 = bitcast i32* %family to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.45
  %48 = load i64, i64* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @TimeOuts, i32 0, i32 14), align 8, !tbaa !83
  %cmp60 = icmp eq i64 %48, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.59
  br label %noident

if.end.63:                                        ; preds = %if.end.59
  store i32 112, i32* %lalen, align 4, !tbaa !5
  %49 = load i16, i16* getelementptr inbounds (%struct.sockaddr, %struct.sockaddr* bitcast (%union.bigsockaddr* @RealHostAddr to %struct.sockaddr*), i32 0, i32 0), align 2, !tbaa !24
  %conv64 = zext i16 %49 to i32
  switch i32 %conv64, label %sw.default [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.63
  %50 = load i32, i32* %fd.addr, align 4, !tbaa !5
  %sa = bitcast %union.bigsockaddr* %la to %struct.sockaddr*
  %call65 = call i32 @getsockname(i32 %50, %struct.sockaddr* %sa, i32* %lalen) #1
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then.76, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %sw.bb
  %51 = load i32, i32* %lalen, align 4, !tbaa !5
  %cmp69 = icmp sle i32 %51, 0
  br i1 %cmp69, label %if.then.76, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.68
  %sa72 = bitcast %union.bigsockaddr* %la to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa72, i32 0, i32 0
  %52 = load i16, i16* %sa_family, align 2, !tbaa !24
  %conv73 = zext i16 %52 to i32
  %cmp74 = icmp ne i32 %conv73, 2
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %lor.lhs.false.71, %lor.lhs.false.68, %sw.bb
  br label %noident

if.end.77:                                        ; preds = %lor.lhs.false.71
  %53 = load i16, i16* getelementptr inbounds (%union.bigsockaddr, %union.bigsockaddr* @RealHostAddr, i32 0, i32 0, i32 1), align 2, !tbaa !39
  store i16 %53, i16* %port, align 2, !tbaa !15
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %ibuf, i32 0, i32 0
  %54 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %54) #1
  %55 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %55) #1
  %56 = load i16, i16* getelementptr inbounds (%union.bigsockaddr, %union.bigsockaddr* @RealHostAddr, i32 0, i32 0, i32 1), align 2, !tbaa !39
  store i16 %56, i16* %__x, align 2, !tbaa !15
  %57 = load i16, i16* %__x, align 2, !tbaa !15
  %58 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %57) #9, !srcloc !84
  store i16 %58, i16* %__v, align 2, !tbaa !15
  %59 = load i16, i16* %__v, align 2, !tbaa !15
  store i16 %59, i16* %tmp, !tbaa !15
  %60 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %60) #1
  %61 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %61) #1
  %62 = load i16, i16* %tmp, !tbaa !15
  %conv78 = zext i16 %62 to i32
  %63 = bitcast i16* %__v80 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %63) #1
  %64 = bitcast i16* %__x82 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %64) #1
  %sin = bitcast %union.bigsockaddr* %la to %struct.sockaddr_in*
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 1
  %65 = load i16, i16* %sin_port, align 2, !tbaa !39
  store i16 %65, i16* %__x82, align 2, !tbaa !15
  %66 = load i16, i16* %__x82, align 2, !tbaa !15
  %67 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %66) #9, !srcloc !85
  store i16 %67, i16* %__v80, align 2, !tbaa !15
  %68 = load i16, i16* %__v80, align 2, !tbaa !15
  store i16 %68, i16* %tmp83, !tbaa !15
  %69 = bitcast i16* %__x82 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %69) #1
  %70 = bitcast i16* %__v80 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %70) #1
  %71 = load i16, i16* %tmp83, !tbaa !15
  %conv84 = zext i16 %71 to i32
  %call85 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 257, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i32 %conv78, i32 %conv84)
  %sin86 = bitcast %union.bigsockaddr* %la to %struct.sockaddr_in*
  %sin_port87 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin86, i32 0, i32 1
  store i16 0, i16* %sin_port87, align 2, !tbaa !39
  %72 = load i16, i16* @getauthinfo.port4, align 2, !tbaa !15
  %conv88 = zext i16 %72 to i32
  %cmp89 = icmp eq i32 %conv88, 0
  br i1 %cmp89, label %if.then.91, label %if.end.104

if.then.91:                                       ; preds = %if.end.77
  %call92 = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0))
  store %struct.servent* %call92, %struct.servent** %sp, align 8, !tbaa !1
  %73 = load %struct.servent*, %struct.servent** %sp, align 8, !tbaa !1
  %cmp93 = icmp ne %struct.servent* %73, null
  br i1 %cmp93, label %if.then.95, label %if.else.97

if.then.95:                                       ; preds = %if.then.91
  %74 = load %struct.servent*, %struct.servent** %sp, align 8, !tbaa !1
  %s_port = getelementptr inbounds %struct.servent, %struct.servent* %74, i32 0, i32 2
  %75 = load i32, i32* %s_port, align 4, !tbaa !41
  %conv96 = trunc i32 %75 to i16
  store i16 %conv96, i16* @getauthinfo.port4, align 2, !tbaa !15
  br label %if.end.103

if.else.97:                                       ; preds = %if.then.91
  %76 = bitcast i16* %__v99 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %76) #1
  %77 = bitcast i16* %__x101 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %77) #1
  store i16 113, i16* %__x101, align 2, !tbaa !15
  %78 = load i16, i16* %__x101, align 2, !tbaa !15
  %79 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %78) #9, !srcloc !86
  store i16 %79, i16* %__v99, align 2, !tbaa !15
  %80 = load i16, i16* %__v99, align 2, !tbaa !15
  store i16 %80, i16* %tmp102, !tbaa !15
  %81 = bitcast i16* %__x101 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %81) #1
  %82 = bitcast i16* %__v99 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %82) #1
  %83 = load i16, i16* %tmp102, !tbaa !15
  store i16 %83, i16* @getauthinfo.port4, align 2, !tbaa !15
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.97, %if.then.95
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.77
  %84 = load i16, i16* @getauthinfo.port4, align 2, !tbaa !15
  store i16 %84, i16* getelementptr inbounds (%union.bigsockaddr, %union.bigsockaddr* @RealHostAddr, i32 0, i32 0, i32 1), align 2, !tbaa !39
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.63
  br label %noident

sw.epilog:                                        ; preds = %if.end.104
  store volatile i32 -1, i32* %s, align 4, !tbaa !5
  %call105 = call i32 @__sigsetjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @CtxAuthTimeout, i32 0, i32 0), i32 1) #12
  %cmp106 = icmp ne i32 %call105, 0
  br i1 %cmp106, label %if.then.108, label %if.end.114

if.then.108:                                      ; preds = %sw.epilog
  %85 = load volatile i32, i32* %s, align 4, !tbaa !5
  %cmp109 = icmp sge i32 %85, 0
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.then.108
  %86 = load volatile i32, i32* %s, align 4, !tbaa !5
  %call112 = call i32 @close(i32 %86)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.then.108
  br label %noident

if.end.114:                                       ; preds = %sw.epilog
  %87 = load i64, i64* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @TimeOuts, i32 0, i32 14), align 8, !tbaa !83
  %mul = mul nsw i64 %87, 1000
  %conv115 = trunc i64 %mul to i32
  %call116 = call %struct.sm_event* @sm_seteventm(i32 %conv115, void (i32)* @authtimeout, i32 0)
  store %struct.sm_event* %call116, %struct.sm_event** %ev, align 8, !tbaa !1
  %sa117 = bitcast %union.bigsockaddr* %la to %struct.sockaddr*
  %sa_family118 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa117, i32 0, i32 0
  %88 = load i16, i16* %sa_family118, align 2, !tbaa !24
  %conv119 = zext i16 %88 to i32
  %call120 = call i32 @socket(i32 %conv119, i32 1, i32 0) #1
  store volatile i32 %call120, i32* %s, align 4, !tbaa !5
  %89 = load volatile i32, i32* %s, align 4, !tbaa !5
  %cmp121 = icmp slt i32 %89, 0
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.end.114
  %90 = load %struct.sm_event*, %struct.sm_event** %ev, align 8, !tbaa !1
  call void @sm_clrevent(%struct.sm_event* %90)
  br label %noident

if.end.124:                                       ; preds = %if.end.114
  %91 = load volatile i32, i32* %s, align 4, !tbaa !5
  %sa125 = bitcast %union.bigsockaddr* %la to %struct.sockaddr*
  %92 = load i32, i32* %lalen, align 4, !tbaa !5
  %call126 = call i32 @bind(i32 %91, %struct.sockaddr* %sa125, i32 %92) #1
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.then.133, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %if.end.124
  %93 = load volatile i32, i32* %s, align 4, !tbaa !5
  %94 = load i32, i32* %lalen, align 4, !tbaa !5
  %call130 = call i32 @connect(i32 %93, %struct.sockaddr* bitcast (%union.bigsockaddr* @RealHostAddr to %struct.sockaddr*), i32 %94)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %lor.lhs.false.129, %if.end.124
  br label %closeident

if.end.134:                                       ; preds = %lor.lhs.false.129
  %95 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 9), align 1, !tbaa !13
  %conv135 = zext i8 %95 to i32
  %cmp136 = icmp sge i32 %conv135, 10
  br i1 %cmp136, label %land.lhs.true.138, label %if.end.142

land.lhs.true.138:                                ; preds = %if.end.134
  %96 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool139 = icmp ne i32 %96, 0
  br i1 %tobool139, label %if.end.142, label %if.then.140

if.then.140:                                      ; preds = %land.lhs.true.138
  %arraydecay141 = getelementptr inbounds [257 x i8], [257 x i8]* %ibuf, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i32 0, i32 0), i8* %arraydecay141)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.140, %land.lhs.true.138, %if.end.134
  %97 = load volatile i32, i32* %s, align 4, !tbaa !5
  %arraydecay143 = getelementptr inbounds [257 x i8], [257 x i8]* %ibuf, i32 0, i32 0
  %arraydecay144 = getelementptr inbounds [257 x i8], [257 x i8]* %ibuf, i32 0, i32 0
  %call145 = call i64 @strlen(i8* %arraydecay144) #11
  %call146 = call i64 @write(i32 %97, i8* %arraydecay143, i64 %call145)
  %cmp147 = icmp slt i64 %call146, 0
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.142
  br label %closeident

if.end.150:                                       ; preds = %if.end.142
  %arrayidx151 = getelementptr inbounds [257 x i8], [257 x i8]* %ibuf, i32 0, i64 0
  store volatile i8* %arrayidx151, i8** %p, align 8, !tbaa !1
  store i32 256, i32* %nleft, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end.150
  %98 = load volatile i32, i32* %s, align 4, !tbaa !5
  %99 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %100 = load i32, i32* %nleft, align 4, !tbaa !5
  %conv152 = sext i32 %100 to i64
  %call153 = call i64 @read(i32 %98, i8* %99, i64 %conv152)
  %conv154 = trunc i64 %call153 to i32
  store i32 %conv154, i32* %i, align 4, !tbaa !5
  %cmp155 = icmp sgt i32 %conv154, 0
  br i1 %cmp155, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %101 = bitcast i8** %s158 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #1
  %102 = load i32, i32* %i, align 4, !tbaa !5
  %103 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %idx.ext = sext i32 %102 to i64
  %add.ptr = getelementptr inbounds i8, i8* %103, i64 %idx.ext
  store volatile i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %105 = load i32, i32* %nleft, align 4, !tbaa !5
  %sub = sub nsw i32 %105, %104
  store i32 %sub, i32* %nleft, align 4, !tbaa !5
  %106 = load volatile i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %106, align 1, !tbaa !13
  %arraydecay159 = getelementptr inbounds [257 x i8], [257 x i8]* %ibuf, i32 0, i32 0
  %call160 = call i8* @strchr(i8* %arraydecay159, i32 10) #1
  store i8* %call160, i8** %s158, align 8, !tbaa !1
  %cmp161 = icmp ne i8* %call160, null
  br i1 %cmp161, label %if.then.163, label %if.end.170

if.then.163:                                      ; preds = %while.body
  %107 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %108 = load i8*, i8** %s158, align 8, !tbaa !1
  %add.ptr164 = getelementptr inbounds i8, i8* %108, i64 1
  %cmp165 = icmp ugt i8* %107, %add.ptr164
  br i1 %cmp165, label %if.then.167, label %if.end.169

if.then.167:                                      ; preds = %if.then.163
  %109 = load i8*, i8** %s158, align 8, !tbaa !1
  %add.ptr168 = getelementptr inbounds i8, i8* %109, i64 1
  store volatile i8* %add.ptr168, i8** %p, align 8, !tbaa !1
  %110 = load volatile i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %110, align 1, !tbaa !13
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.167, %if.then.163
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup

if.end.170:                                       ; preds = %while.body
  %111 = load i32, i32* %nleft, align 4, !tbaa !5
  %cmp171 = icmp sle i32 %111, 0
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.end.170
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup

if.end.174:                                       ; preds = %if.end.170
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.174, %if.then.173, %if.end.169
  %112 = bitcast i8** %s158 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 9, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %113 = load volatile i32, i32* %s, align 4, !tbaa !5
  %call175 = call i32 @close(i32 %113)
  %114 = load %struct.sm_event*, %struct.sm_event** %ev, align 8, !tbaa !1
  call void @sm_clrevent(%struct.sm_event* %114)
  %115 = load i32, i32* %i, align 4, !tbaa !5
  %cmp176 = icmp slt i32 %115, 0
  br i1 %cmp176, label %if.then.182, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %while.end
  %116 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds [257 x i8], [257 x i8]* %ibuf, i32 0, i64 0
  %cmp180 = icmp eq i8* %116, %arrayidx179
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %lor.lhs.false.178, %while.end
  br label %noident

if.end.183:                                       ; preds = %lor.lhs.false.178
  %117 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds [257 x i8], [257 x i8]* %ibuf, i32 0, i64 2
  %cmp185 = icmp uge i8* %117, %arrayidx184
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.199

land.lhs.true.187:                                ; preds = %if.end.183
  %118 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr188 = getelementptr inbounds i8, i8* %118, i32 -1
  store volatile i8* %incdec.ptr188, i8** %p, align 8, !tbaa !1
  %119 = load i8, i8* %incdec.ptr188, align 1, !tbaa !13
  %conv189 = sext i8 %119 to i32
  %cmp190 = icmp eq i32 %conv189, 10
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.199

land.lhs.true.192:                                ; preds = %land.lhs.true.187
  %120 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr193 = getelementptr inbounds i8, i8* %120, i32 -1
  store volatile i8* %incdec.ptr193, i8** %p, align 8, !tbaa !1
  %121 = load i8, i8* %incdec.ptr193, align 1, !tbaa !13
  %conv194 = sext i8 %121 to i32
  %cmp195 = icmp eq i32 %conv194, 13
  br i1 %cmp195, label %if.then.197, label %if.end.199

if.then.197:                                      ; preds = %land.lhs.true.192
  %122 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr198 = getelementptr inbounds i8, i8* %122, i32 -1
  store volatile i8* %incdec.ptr198, i8** %p, align 8, !tbaa !1
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.197, %land.lhs.true.192, %land.lhs.true.187, %if.end.183
  %123 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr200 = getelementptr inbounds i8, i8* %123, i32 1
  store volatile i8* %incdec.ptr200, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %incdec.ptr200, align 1, !tbaa !13
  %124 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 9), align 1, !tbaa !13
  %conv201 = zext i8 %124 to i32
  %cmp202 = icmp sge i32 %conv201, 3
  br i1 %cmp202, label %land.lhs.true.204, label %if.end.208

land.lhs.true.204:                                ; preds = %if.end.199
  %125 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool205 = icmp ne i32 %125, 0
  br i1 %tobool205, label %if.end.208, label %if.then.206

if.then.206:                                      ; preds = %land.lhs.true.204
  %arraydecay207 = getelementptr inbounds [257 x i8], [257 x i8]* %ibuf, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.98, i32 0, i32 0), i8* %arraydecay207)
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.206, %land.lhs.true.204, %if.end.199
  %arraydecay209 = getelementptr inbounds [257 x i8], [257 x i8]* %ibuf, i32 0, i32 0
  %call210 = call i8* @strchr(i8* %arraydecay209, i32 58) #1
  store volatile i8* %call210, i8** %p, align 8, !tbaa !1
  %126 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %cmp211 = icmp eq i8* %126, null
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.end.208
  br label %noident

if.end.214:                                       ; preds = %if.end.208
  br label %while.cond.215

while.cond.215:                                   ; preds = %while.body.226, %if.end.214
  %127 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr216 = getelementptr inbounds i8, i8* %127, i32 1
  store volatile i8* %incdec.ptr216, i8** %p, align 8, !tbaa !1
  %128 = load i8, i8* %incdec.ptr216, align 1, !tbaa !13
  %conv217 = sext i8 %128 to i32
  %and = and i32 %conv217, -128
  %cmp218 = icmp eq i32 %and, 0
  br i1 %cmp218, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.215
  %129 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %130 = load i8, i8* %129, align 1, !tbaa !13
  %conv220 = sext i8 %130 to i32
  %idxprom = sext i32 %conv220 to i64
  %call221 = call i16** @__ctype_b_loc() #9
  %131 = load i16*, i16** %call221, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds i16, i16* %131, i64 %idxprom
  %132 = load i16, i16* %arrayidx222, align 2, !tbaa !15
  %conv223 = zext i16 %132 to i32
  %and224 = and i32 %conv223, 8192
  %tobool225 = icmp ne i32 %and224, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.215
  %133 = phi i1 [ false, %while.cond.215 ], [ %tobool225, %land.rhs ]
  br i1 %133, label %while.body.226, label %while.end.227

while.body.226:                                   ; preds = %land.end
  br label %while.cond.215

while.end.227:                                    ; preds = %land.end
  %134 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %call228 = call i32 @sm_strncasecmp(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i64 6)
  %cmp229 = icmp ne i32 %call228, 0
  br i1 %cmp229, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %while.end.227
  br label %noident

if.end.232:                                       ; preds = %while.end.227
  %135 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %add.ptr233 = getelementptr inbounds i8, i8* %135, i64 6
  store volatile i8* %add.ptr233, i8** %p, align 8, !tbaa !1
  br label %while.cond.234

while.cond.234:                                   ; preds = %while.body.248, %if.end.232
  %136 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %137 = load i8, i8* %136, align 1, !tbaa !13
  %conv235 = sext i8 %137 to i32
  %and236 = and i32 %conv235, -128
  %cmp237 = icmp eq i32 %and236, 0
  br i1 %cmp237, label %land.rhs.239, label %land.end.247

land.rhs.239:                                     ; preds = %while.cond.234
  %138 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %139 = load i8, i8* %138, align 1, !tbaa !13
  %conv240 = sext i8 %139 to i32
  %idxprom241 = sext i32 %conv240 to i64
  %call242 = call i16** @__ctype_b_loc() #9
  %140 = load i16*, i16** %call242, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds i16, i16* %140, i64 %idxprom241
  %141 = load i16, i16* %arrayidx243, align 2, !tbaa !15
  %conv244 = zext i16 %141 to i32
  %and245 = and i32 %conv244, 8192
  %tobool246 = icmp ne i32 %and245, 0
  br label %land.end.247

land.end.247:                                     ; preds = %land.rhs.239, %while.cond.234
  %142 = phi i1 [ false, %while.cond.234 ], [ %tobool246, %land.rhs.239 ]
  br i1 %142, label %while.body.248, label %while.end.250

while.body.248:                                   ; preds = %land.end.247
  %143 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr249 = getelementptr inbounds i8, i8* %143, i32 1
  store volatile i8* %incdec.ptr249, i8** %p, align 8, !tbaa !1
  br label %while.cond.234

while.end.250:                                    ; preds = %land.end.247
  %144 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr251 = getelementptr inbounds i8, i8* %144, i32 1
  store volatile i8* %incdec.ptr251, i8** %p, align 8, !tbaa !1
  %145 = load i8, i8* %144, align 1, !tbaa !13
  %conv252 = sext i8 %145 to i32
  %cmp253 = icmp ne i32 %conv252, 58
  br i1 %cmp253, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %while.end.250
  br label %noident

if.end.256:                                       ; preds = %while.end.250
  br label %while.cond.257

while.cond.257:                                   ; preds = %while.body.271, %if.end.256
  %146 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %147 = load i8, i8* %146, align 1, !tbaa !13
  %conv258 = sext i8 %147 to i32
  %and259 = and i32 %conv258, -128
  %cmp260 = icmp eq i32 %and259, 0
  br i1 %cmp260, label %land.rhs.262, label %land.end.270

land.rhs.262:                                     ; preds = %while.cond.257
  %148 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %149 = load i8, i8* %148, align 1, !tbaa !13
  %conv263 = sext i8 %149 to i32
  %idxprom264 = sext i32 %conv263 to i64
  %call265 = call i16** @__ctype_b_loc() #9
  %150 = load i16*, i16** %call265, align 8, !tbaa !1
  %arrayidx266 = getelementptr inbounds i16, i16* %150, i64 %idxprom264
  %151 = load i16, i16* %arrayidx266, align 2, !tbaa !15
  %conv267 = zext i16 %151 to i32
  %and268 = and i32 %conv267, 8192
  %tobool269 = icmp ne i32 %and268, 0
  br label %land.end.270

land.end.270:                                     ; preds = %land.rhs.262, %while.cond.257
  %152 = phi i1 [ false, %while.cond.257 ], [ %tobool269, %land.rhs.262 ]
  br i1 %152, label %while.body.271, label %while.end.273

while.body.271:                                   ; preds = %land.end.270
  %153 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr272 = getelementptr inbounds i8, i8* %153, i32 1
  store volatile i8* %incdec.ptr272, i8** %p, align 8, !tbaa !1
  br label %while.cond.257

while.end.273:                                    ; preds = %land.end.270
  %154 = load volatile i8*, i8** %p, align 8, !tbaa !1
  store i8* %154, i8** %ostype, align 8, !tbaa !1
  %155 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %call274 = call i8* @strchr(i8* %155, i32 58) #1
  store volatile i8* %call274, i8** %p, align 8, !tbaa !1
  %156 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %cmp275 = icmp eq i8* %156, null
  br i1 %cmp275, label %if.then.277, label %if.else.278

if.then.277:                                      ; preds = %while.end.273
  br label %noident

if.else.278:                                      ; preds = %while.end.273
  %157 = bitcast i8** %charset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #1
  %158 = load volatile i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %158, align 1, !tbaa !13
  %159 = load i8*, i8** %ostype, align 8, !tbaa !1
  %call280 = call i8* @strchr(i8* %159, i32 44) #1
  store i8* %call280, i8** %charset, align 8, !tbaa !1
  %160 = load i8*, i8** %charset, align 8, !tbaa !1
  %cmp281 = icmp ne i8* %160, null
  br i1 %cmp281, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %if.else.278
  %161 = load i8*, i8** %charset, align 8, !tbaa !1
  store i8 0, i8* %161, align 1, !tbaa !13
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.283, %if.else.278
  %162 = bitcast i8** %charset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284
  br label %while.cond.286

while.cond.286:                                   ; preds = %while.body.301, %if.end.285
  %163 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr287 = getelementptr inbounds i8, i8* %163, i32 1
  store volatile i8* %incdec.ptr287, i8** %p, align 8, !tbaa !1
  %164 = load i8, i8* %incdec.ptr287, align 1, !tbaa !13
  %conv288 = sext i8 %164 to i32
  %and289 = and i32 %conv288, -128
  %cmp290 = icmp eq i32 %and289, 0
  br i1 %cmp290, label %land.rhs.292, label %land.end.300

land.rhs.292:                                     ; preds = %while.cond.286
  %165 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %166 = load i8, i8* %165, align 1, !tbaa !13
  %conv293 = sext i8 %166 to i32
  %idxprom294 = sext i32 %conv293 to i64
  %call295 = call i16** @__ctype_b_loc() #9
  %167 = load i16*, i16** %call295, align 8, !tbaa !1
  %arrayidx296 = getelementptr inbounds i16, i16* %167, i64 %idxprom294
  %168 = load i16, i16* %arrayidx296, align 2, !tbaa !15
  %conv297 = zext i16 %168 to i32
  %and298 = and i32 %conv297, 8192
  %tobool299 = icmp ne i32 %and298, 0
  br label %land.end.300

land.end.300:                                     ; preds = %land.rhs.292, %while.cond.286
  %169 = phi i1 [ false, %while.cond.286 ], [ %tobool299, %land.rhs.292 ]
  br i1 %169, label %while.body.301, label %while.end.302

while.body.301:                                   ; preds = %land.end.300
  br label %while.cond.286

while.end.302:                                    ; preds = %land.end.300
  %170 = load i8*, i8** %ostype, align 8, !tbaa !1
  %call303 = call i32 @sm_strncasecmp(i8* %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i32 0, i32 0), i64 5)
  %cmp304 = icmp eq i32 %call303, 0
  br i1 %cmp304, label %land.lhs.true.306, label %if.else.318

land.lhs.true.306:                                ; preds = %while.end.302
  %171 = load i8*, i8** %ostype, align 8, !tbaa !1
  %arrayidx307 = getelementptr inbounds i8, i8* %171, i64 5
  %172 = load i8, i8* %arrayidx307, align 1, !tbaa !13
  %conv308 = sext i8 %172 to i32
  %cmp309 = icmp eq i32 %conv308, 32
  br i1 %cmp309, label %if.then.316, label %lor.lhs.false.311

lor.lhs.false.311:                                ; preds = %land.lhs.true.306
  %173 = load i8*, i8** %ostype, align 8, !tbaa !1
  %arrayidx312 = getelementptr inbounds i8, i8* %173, i64 5
  %174 = load i8, i8* %arrayidx312, align 1, !tbaa !13
  %conv313 = sext i8 %174 to i32
  %cmp314 = icmp eq i32 %conv313, 0
  br i1 %cmp314, label %if.then.316, label %if.else.318

if.then.316:                                      ; preds = %lor.lhs.false.311, %land.lhs.true.306
  %call317 = call i64 @sm_strlcpy(i8* getelementptr inbounds ([367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i64 367)
  %175 = load volatile i8*, i8** %p, align 8, !tbaa !1
  call void @cleanstrcpy(i8* getelementptr inbounds ([367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i64 6), i8* %175, i32 100)
  br label %if.end.319

if.else.318:                                      ; preds = %lor.lhs.false.311, %while.end.302
  %176 = load volatile i8*, i8** %p, align 8, !tbaa !1
  call void @cleanstrcpy(i8* getelementptr inbounds ([367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i32 0), i8* %176, i32 100)
  br label %if.end.319

if.end.319:                                       ; preds = %if.else.318, %if.then.316
  %call320 = call i64 @strlen(i8* getelementptr inbounds ([367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i32 0)) #11
  store i64 %call320, i64* %len, align 8, !tbaa !19
  %177 = load i64, i64* %len, align 8, !tbaa !19
  %arrayidx321 = getelementptr inbounds [367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i64 %177
  %178 = load i64, i64* %len, align 8, !tbaa !19
  %sub322 = sub i64 367, %178
  %179 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %cmp323 = icmp eq i8* %179, null
  br i1 %cmp323, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.319
  br label %cond.end

cond.false:                                       ; preds = %if.end.319
  %180 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), %cond.true ], [ %180, %cond.false ]
  %call325 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arrayidx321, i64 %sub322, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i32 0, i32 0), i8* %cond)
  br label %postident

closeident:                                       ; preds = %if.then.149, %if.then.133
  %181 = load volatile i32, i32* %s, align 4, !tbaa !5
  %call326 = call i32 @close(i32 %181)
  %182 = load %struct.sm_event*, %struct.sm_event** %ev, align 8, !tbaa !1
  call void @sm_clrevent(%struct.sm_event* %182)
  br label %noident

noident:                                          ; preds = %closeident, %if.then.277, %if.then.255, %if.then.231, %if.then.213, %if.then.182, %if.then.123, %if.end.113, %sw.default, %if.then.76, %if.then.62
  %183 = load i16, i16* getelementptr inbounds (%struct.sockaddr, %struct.sockaddr* bitcast (%union.bigsockaddr* @RealHostAddr to %struct.sockaddr*), i32 0, i32 0), align 2, !tbaa !24
  %conv327 = zext i16 %183 to i32
  switch i32 %conv327, label %sw.epilog.334 [
    i32 2, label %sw.bb.328
  ]

sw.bb.328:                                        ; preds = %noident
  %184 = load i16, i16* %port, align 2, !tbaa !15
  %conv329 = zext i16 %184 to i32
  %cmp330 = icmp sgt i32 %conv329, 0
  br i1 %cmp330, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %sw.bb.328
  %185 = load i16, i16* %port, align 2, !tbaa !15
  store i16 %185, i16* getelementptr inbounds (%union.bigsockaddr, %union.bigsockaddr* @RealHostAddr, i32 0, i32 0, i32 1), align 2, !tbaa !39
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.332, %sw.bb.328
  br label %sw.epilog.334

sw.epilog.334:                                    ; preds = %noident, %if.end.333
  %186 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %cmp335 = icmp eq i8* %186, null
  br i1 %cmp335, label %if.then.337, label %if.end.345

if.then.337:                                      ; preds = %sw.epilog.334
  %187 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 9), align 1, !tbaa !13
  %conv338 = zext i8 %187 to i32
  %cmp339 = icmp sge i32 %conv338, 1
  br i1 %cmp339, label %land.lhs.true.341, label %if.end.344

land.lhs.true.341:                                ; preds = %if.then.337
  %188 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool342 = icmp ne i32 %188, 0
  br i1 %tobool342, label %if.end.344, label %if.then.343

if.then.343:                                      ; preds = %land.lhs.true.341
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.103, i32 0, i32 0))
  br label %if.end.344

if.end.344:                                       ; preds = %if.then.343, %land.lhs.true.341, %if.then.337
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.386

if.end.345:                                       ; preds = %sw.epilog.334
  %189 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %call346 = call i64 @sm_strlcpy(i8* getelementptr inbounds ([367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i32 0), i8* %189, i64 367)
  br label %postident

postident:                                        ; preds = %if.end.345, %cond.end
  %190 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %cmp347 = icmp ne i8* %190, null
  br i1 %cmp347, label %land.lhs.true.349, label %if.end.360

land.lhs.true.349:                                ; preds = %postident
  %191 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %arrayidx350 = getelementptr inbounds i8, i8* %191, i64 0
  %192 = load i8, i8* %arrayidx350, align 1, !tbaa !13
  %conv351 = sext i8 %192 to i32
  %cmp352 = icmp ne i32 %conv351, 91
  br i1 %cmp352, label %if.then.354, label %if.end.360

if.then.354:                                      ; preds = %land.lhs.true.349
  %call355 = call i64 @strlen(i8* getelementptr inbounds ([367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i32 0)) #11
  %arrayidx356 = getelementptr inbounds [367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i64 %call355
  store volatile i8* %arrayidx356, i8** %p, align 8, !tbaa !1
  %193 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %194 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %194 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([367 x i8]* @getauthinfo.hbuf to i64)
  %sub357 = sub i64 367, %sub.ptr.sub
  %call358 = call i8* @anynet_ntoa(%union.bigsockaddr* @RealHostAddr)
  %call359 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %193, i64 %sub357, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i8* %call358)
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.354, %land.lhs.true.349, %postident
  %195 = load i32*, i32** %may_be_forged.addr, align 8, !tbaa !1
  %196 = load i32, i32* %195, align 4, !tbaa !5
  %tobool361 = icmp ne i32 %196, 0
  br i1 %tobool361, label %if.then.362, label %if.end.370

if.then.362:                                      ; preds = %if.end.360
  %call363 = call i64 @strlen(i8* getelementptr inbounds ([367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i32 0)) #11
  %arrayidx364 = getelementptr inbounds [367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i64 %call363
  store volatile i8* %arrayidx364, i8** %p, align 8, !tbaa !1
  %197 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %198 = load volatile i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast365 = ptrtoint i8* %198 to i64
  %sub.ptr.sub366 = sub i64 %sub.ptr.lhs.cast365, ptrtoint ([367 x i8]* @getauthinfo.hbuf to i64)
  %sub367 = sub i64 367, %sub.ptr.sub366
  %call368 = call i64 @sm_strlcpy(i8* %197, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.105, i32 0, i32 0), i64 %sub367)
  %call369 = call i32 @macid_parse(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8** null)
  %199 = load i32, i32* @SmHeapGroup, align 4, !tbaa !5
  call void @macdefine_tagged(%struct.MACROS_T* getelementptr inbounds (%struct.envelope, %struct.envelope* @BlankEnvelope, i32 0, i32 46), i32 2, i32 %call369, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 3864, i32 %199)
  br label %if.end.370

if.end.370:                                       ; preds = %if.then.362, %if.end.360
  %200 = load i16, i16* getelementptr inbounds (%struct.sockaddr, %struct.sockaddr* bitcast (%union.bigsockaddr* @RealHostAddr to %struct.sockaddr*), i32 0, i32 0), align 2, !tbaa !24
  %conv371 = zext i16 %200 to i32
  switch i32 %conv371, label %sw.epilog.378 [
    i32 2, label %sw.bb.372
  ]

sw.bb.372:                                        ; preds = %if.end.370
  %201 = load i16, i16* %port, align 2, !tbaa !15
  %conv373 = zext i16 %201 to i32
  %cmp374 = icmp sgt i32 %conv373, 0
  br i1 %cmp374, label %if.then.376, label %if.end.377

if.then.376:                                      ; preds = %sw.bb.372
  %202 = load i16, i16* %port, align 2, !tbaa !15
  store i16 %202, i16* getelementptr inbounds (%union.bigsockaddr, %union.bigsockaddr* @RealHostAddr, i32 0, i32 0, i32 1), align 2, !tbaa !39
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.376, %sw.bb.372
  br label %sw.epilog.378

sw.epilog.378:                                    ; preds = %if.end.370, %if.end.377
  %203 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 9), align 1, !tbaa !13
  %conv379 = zext i8 %203 to i32
  %cmp380 = icmp sge i32 %conv379, 1
  br i1 %cmp380, label %land.lhs.true.382, label %if.end.385

land.lhs.true.382:                                ; preds = %sw.epilog.378
  %204 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool383 = icmp ne i32 %204, 0
  br i1 %tobool383, label %if.end.385, label %if.then.384

if.then.384:                                      ; preds = %land.lhs.true.382
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i32 0))
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.384, %land.lhs.true.382, %sw.epilog.378
  store i8* getelementptr inbounds ([367 x i8], [367 x i8]* @getauthinfo.hbuf, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.386

cleanup.386:                                      ; preds = %if.end.385, %if.end.344, %if.end.22, %if.then.13
  %205 = bitcast [257 x i8]* %ibuf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %205) #1
  %206 = bitcast i8*** %ha to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast i8** %ostype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i32* %nleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast %struct.sm_event** %ev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast %struct.servent** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast i32* %lalen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast %union.bigsockaddr* %la to i8*
  call void @llvm.lifetime.end(i64 112, i8* %216) #1
  %217 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast i32* %falen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast i16* %port to i8*
  call void @llvm.lifetime.end(i64 2, i8* %219) #1
  %220 = load i8*, i8** %retval
  ret i8* %220

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i32 @isatty(i32) #4

; Function Attrs: nounwind
declare i32 @getpeername(i32, %struct.sockaddr*, i32*) #4

declare i64 @sm_strlcpyn(i8*, i64, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @addrcmp(%struct.hostent* %hp, i8* %ha, %union.bigsockaddr* %sa) #0 {
entry:
  %retval = alloca i32, align 4
  %hp.addr = alloca %struct.hostent*, align 8
  %ha.addr = alloca i8*, align 8
  %sa.addr = alloca %union.bigsockaddr*, align 8
  store %struct.hostent* %hp, %struct.hostent** %hp.addr, align 8, !tbaa !1
  store i8* %ha, i8** %ha.addr, align 8, !tbaa !1
  store %union.bigsockaddr* %sa, %union.bigsockaddr** %sa.addr, align 8, !tbaa !1
  %0 = load %union.bigsockaddr*, %union.bigsockaddr** %sa.addr, align 8, !tbaa !1
  %sa1 = bitcast %union.bigsockaddr* %0 to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa1, i32 0, i32 0
  %1 = load i16, i16* %sa_family, align 2, !tbaa !24
  %conv = zext i16 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.hostent*, %struct.hostent** %hp.addr, align 8, !tbaa !1
  %h_addrtype = getelementptr inbounds %struct.hostent, %struct.hostent* %2, i32 0, i32 2
  %3 = load i32, i32* %h_addrtype, align 4, !tbaa !58
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %4 = load i8*, i8** %ha.addr, align 8, !tbaa !1
  %5 = load %union.bigsockaddr*, %union.bigsockaddr** %sa.addr, align 8, !tbaa !1
  %sin = bitcast %union.bigsockaddr* %5 to %struct.sockaddr_in*
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 2
  %6 = bitcast %struct.in_addr* %sin_addr to i8*
  %call = call i32 @memcmp(i8* %4, i8* %6, i64 4) #11
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @authtimeout(i32 %ignore) #0 {
entry:
  %ignore.addr = alloca i32, align 4
  store i32 %ignore, i32* %ignore.addr, align 4, !tbaa !5
  %call = call i32* @__errno_location() #9
  store i32 110, i32* %call, align 4, !tbaa !5
  call void @siglongjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @CtxAuthTimeout, i32 0, i32 0), i32 1) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i64 @write(i32, i8*, i64) #2

declare i32 @sm_strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define i8* @host_map_lookup(%struct._map* %map, i8* %name, i8** %av, i32* %statp) #0 {
entry:
  %retval = alloca i8*, align 8
  %map.addr = alloca %struct._map*, align 8
  %name.addr = alloca i8*, align 8
  %av.addr = alloca i8**, align 8
  %statp.addr = alloca i32*, align 8
  %hp = alloca %struct.hostent*, align 8
  %in_addr = alloca %struct.in_addr, align 4
  %cp = alloca i8*, align 8
  %ans = alloca i8*, align 8
  %s = alloca %struct.symtab*, align 8
  %now = alloca i64, align 8
  %retrans = alloca i64, align 8
  %retry = alloca i32, align 4
  %hbuf = alloca [257 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %ttl = alloca i32, align 4
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8** %av, i8*** %av.addr, align 8, !tbaa !1
  store i32* %statp, i32** %statp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.in_addr* %in_addr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %ans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* null, i8** %ans, align 8, !tbaa !1
  %4 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %retrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64 0, i64* %retrans, align 8, !tbaa !19
  %7 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %retry, align 4, !tbaa !5
  %8 = bitcast [257 x i8]* %hbuf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %8) #1
  %call = call i64 @curtime()
  store i64 %call, i64* %now, align 8, !tbaa !19
  %9 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call1 = call %struct.symtab* @stab(i8* %9, i32 8, i32 1)
  store %struct.symtab* %call1, %struct.symtab** %s, align 8, !tbaa !1
  %10 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %10, i32 0, i32 3
  %sv_namecanon = bitcast %union.anon.3* %s_value to %struct._namecanon*
  %nc_flags = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon, i32 0, i32 3
  %11 = load i16, i16* %nc_flags, align 2, !tbaa !87
  %conv = sext i16 %11 to i32
  %and = and i32 %conv, 1
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.69

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value3 = getelementptr inbounds %struct.symtab, %struct.symtab* %12, i32 0, i32 3
  %sv_namecanon4 = bitcast %union.anon.3* %s_value3 to %struct._namecanon*
  %nc_exp = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon4, i32 0, i32 5
  %13 = load i64, i64* %nc_exp, align 8, !tbaa !89
  %14 = load i64, i64* %now, align 8, !tbaa !19
  %cmp5 = icmp sge i64 %13, %14
  br i1 %cmp5, label %if.then, label %if.end.69

if.then:                                          ; preds = %land.lhs.true
  %15 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 9), align 1, !tbaa !13
  %conv7 = zext i8 %15 to i32
  %cmp8 = icmp sge i32 %conv7, 1
  br i1 %cmp8, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %if.then
  %16 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true.10
  %17 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %18 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value12 = getelementptr inbounds %struct.symtab, %struct.symtab* %18, i32 0, i32 3
  %sv_namecanon13 = bitcast %union.anon.3* %s_value12 to %struct._namecanon*
  %nc_cname = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon13, i32 0, i32 4
  %19 = load i8*, i8** %nc_cname, align 8, !tbaa !90
  %cmp14 = icmp eq i8* %19, null
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  %20 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value16 = getelementptr inbounds %struct.symtab, %struct.symtab* %20, i32 0, i32 3
  %sv_namecanon17 = bitcast %union.anon.3* %s_value16 to %struct._namecanon*
  %nc_cname18 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon17, i32 0, i32 4
  %21 = load i8*, i8** %nc_cname18, align 8, !tbaa !90
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), %cond.true ], [ %21, %cond.false ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.107, i32 0, i32 0), i8* %17, i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true.10, %if.then
  %22 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value19 = getelementptr inbounds %struct.symtab, %struct.symtab* %22, i32 0, i32 3
  %sv_namecanon20 = bitcast %union.anon.3* %s_value19 to %struct._namecanon*
  %nc_errno = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon20, i32 0, i32 0
  %23 = load i16, i16* %nc_errno, align 2, !tbaa !91
  %conv21 = sext i16 %23 to i32
  %call22 = call i32* @__errno_location() #9
  store i32 %conv21, i32* %call22, align 4, !tbaa !5
  %24 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value23 = getelementptr inbounds %struct.symtab, %struct.symtab* %24, i32 0, i32 3
  %sv_namecanon24 = bitcast %union.anon.3* %s_value23 to %struct._namecanon*
  %nc_herrno = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon24, i32 0, i32 1
  %25 = load i16, i16* %nc_herrno, align 2, !tbaa !92
  %conv25 = sext i16 %25 to i32
  %call26 = call i32* @__h_errno_location() #9
  store i32 %conv25, i32* %call26, align 4, !tbaa !5
  %26 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value27 = getelementptr inbounds %struct.symtab, %struct.symtab* %26, i32 0, i32 3
  %sv_namecanon28 = bitcast %union.anon.3* %s_value27 to %struct._namecanon*
  %nc_stat = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon28, i32 0, i32 2
  %27 = load i16, i16* %nc_stat, align 2, !tbaa !93
  %conv29 = sext i16 %27 to i32
  %28 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 %conv29, i32* %28, align 4, !tbaa !5
  %29 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %30, 75
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end
  %31 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_status = getelementptr inbounds %struct.envelope, %struct.envelope* %31, i32 0, i32 41
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8** %e_status, align 8, !tbaa !94
  %32 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call33 = call i8* @shortenstring(i8* %32, i64 33)
  call void (i8*, ...) @message(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0), i8* %call33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end
  %33 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %cmp35 = icmp ne i32 %34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.end.34
  %35 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value39 = getelementptr inbounds %struct.symtab, %struct.symtab* %35, i32 0, i32 3
  %sv_namecanon40 = bitcast %union.anon.3* %s_value39 to %struct._namecanon*
  %nc_cname41 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon40, i32 0, i32 4
  %36 = load i8*, i8** %nc_cname41, align 8, !tbaa !90
  %cmp42 = icmp eq i8* %36, null
  br i1 %cmp42, label %if.then.44, label %if.end.53

if.then.44:                                       ; preds = %if.end.38
  %37 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %38 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value45 = getelementptr inbounds %struct.symtab, %struct.symtab* %38, i32 0, i32 3
  %sv_namecanon46 = bitcast %union.anon.3* %s_value45 to %struct._namecanon*
  %nc_errno47 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon46, i32 0, i32 0
  %39 = load i16, i16* %nc_errno47, align 2, !tbaa !91
  %conv48 = sext i16 %39 to i32
  %40 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value49 = getelementptr inbounds %struct.symtab, %struct.symtab* %40, i32 0, i32 3
  %sv_namecanon50 = bitcast %union.anon.3* %s_value49 to %struct._namecanon*
  %nc_herrno51 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon50, i32 0, i32 1
  %41 = load i16, i16* %nc_herrno51, align 2, !tbaa !92
  %conv52 = sext i16 %41 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.110, i32 0, i32 0), i8* %37, i32 %conv48, i32 %conv52)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.end.38
  %42 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %42, i32 0, i32 3
  %43 = load i64, i64* %map_mflags, align 8, !tbaa !95
  %and54 = and i64 %43, 16
  %cmp55 = icmp ne i64 %and54, 0
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.end.53
  %44 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %45 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %46 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call58 = call i64 @strlen(i8* %46) #11
  %call59 = call i8* @map_rewrite(%struct._map* %44, i8* %45, i64 %call58, i8** null)
  store i8* %call59, i8** %cp, align 8, !tbaa !1
  br label %if.end.68

if.else:                                          ; preds = %if.end.53
  %47 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %48 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value60 = getelementptr inbounds %struct.symtab, %struct.symtab* %48, i32 0, i32 3
  %sv_namecanon61 = bitcast %union.anon.3* %s_value60 to %struct._namecanon*
  %nc_cname62 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon61, i32 0, i32 4
  %49 = load i8*, i8** %nc_cname62, align 8, !tbaa !90
  %50 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value63 = getelementptr inbounds %struct.symtab, %struct.symtab* %50, i32 0, i32 3
  %sv_namecanon64 = bitcast %union.anon.3* %s_value63 to %struct._namecanon*
  %nc_cname65 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon64, i32 0, i32 4
  %51 = load i8*, i8** %nc_cname65, align 8, !tbaa !90
  %call66 = call i64 @strlen(i8* %51) #11
  %52 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %call67 = call i8* @map_rewrite(%struct._map* %47, i8* %49, i64 %call66, i8** %52)
  store i8* %call67, i8** %cp, align 8, !tbaa !1
  br label %if.end.68

if.end.68:                                        ; preds = %if.else, %if.then.57
  %53 = load i8*, i8** %cp, align 8, !tbaa !1
  store i8* %53, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %land.lhs.true, %entry
  %54 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_sendmode = getelementptr inbounds %struct.envelope, %struct.envelope* %54, i32 0, i32 16
  %55 = load i16, i16* %e_sendmode, align 2, !tbaa !97
  %conv70 = sext i16 %55 to i32
  %cmp71 = icmp eq i32 %conv70, 100
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.86

land.lhs.true.73:                                 ; preds = %if.end.69
  %56 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags74 = getelementptr inbounds %struct._map, %struct._map* %56, i32 0, i32 3
  %57 = load i64, i64* %map_mflags74, align 8, !tbaa !95
  %and75 = and i64 %57, 524288
  %cmp76 = icmp ne i64 %and75, 0
  br i1 %cmp76, label %if.then.78, label %if.end.86

if.then.78:                                       ; preds = %land.lhs.true.73
  %58 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 9), align 1, !tbaa !13
  %conv79 = zext i8 %58 to i32
  %cmp80 = icmp sge i32 %conv79, 1
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.85

land.lhs.true.82:                                 ; preds = %if.then.78
  %59 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool83 = icmp ne i32 %59, 0
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %land.lhs.true.82
  %60 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.111, i32 0, i32 0), i8* %60)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %land.lhs.true.82, %if.then.78
  %61 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 75, i32* %61, align 4, !tbaa !5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.86:                                        ; preds = %land.lhs.true.73, %if.end.69
  %62 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 9), align 1, !tbaa !13
  %conv87 = zext i8 %62 to i32
  %cmp88 = icmp sge i32 %conv87, 1
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.93

land.lhs.true.90:                                 ; preds = %if.end.86
  %63 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool91 = icmp ne i32 %63, 0
  br i1 %tobool91, label %if.end.93, label %if.then.92

if.then.92:                                       ; preds = %land.lhs.true.90
  %64 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.112, i32 0, i32 0), i8* %64)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %land.lhs.true.90, %if.end.86
  %65 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_timeout = getelementptr inbounds %struct._map, %struct._map* %65, i32 0, i32 18
  %66 = load i64, i64* %map_timeout, align 8, !tbaa !98
  %cmp94 = icmp sgt i64 %66, 0
  br i1 %cmp94, label %if.then.96, label %if.end.104

if.then.96:                                       ; preds = %if.end.93
  %call97 = call %struct.__res_state* @__res_state() #9
  %retrans98 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call97, i32 0, i32 0
  %67 = load i32, i32* %retrans98, align 4, !tbaa !54
  %conv99 = sext i32 %67 to i64
  store i64 %conv99, i64* %retrans, align 8, !tbaa !19
  %68 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_timeout100 = getelementptr inbounds %struct._map, %struct._map* %68, i32 0, i32 18
  %69 = load i64, i64* %map_timeout100, align 8, !tbaa !98
  %conv101 = trunc i64 %69 to i32
  %call102 = call %struct.__res_state* @__res_state() #9
  %retrans103 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call102, i32 0, i32 0
  store i32 %conv101, i32* %retrans103, align 4, !tbaa !54
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.96, %if.end.93
  %70 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_retry = getelementptr inbounds %struct._map, %struct._map* %70, i32 0, i32 19
  %71 = load i32, i32* %map_retry, align 4, !tbaa !99
  %cmp105 = icmp sgt i32 %71, 0
  br i1 %cmp105, label %if.then.107, label %if.end.113

if.then.107:                                      ; preds = %if.end.104
  %call108 = call %struct.__res_state* @__res_state() #9
  %retry109 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call108, i32 0, i32 1
  %72 = load i32, i32* %retry109, align 4, !tbaa !52
  store i32 %72, i32* %retry, align 4, !tbaa !5
  %73 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_retry110 = getelementptr inbounds %struct._map, %struct._map* %73, i32 0, i32 19
  %74 = load i32, i32* %map_retry110, align 4, !tbaa !99
  %call111 = call %struct.__res_state* @__res_state() #9
  %retry112 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call111, i32 0, i32 1
  store i32 %74, i32* %retry112, align 4, !tbaa !52
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.107, %if.end.104
  %75 = load i64, i64* %now, align 8, !tbaa !19
  %add = add nsw i64 %75, 3600
  %76 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value114 = getelementptr inbounds %struct.symtab, %struct.symtab* %76, i32 0, i32 3
  %sv_namecanon115 = bitcast %union.anon.3* %s_value114 to %struct._namecanon*
  %nc_exp116 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon115, i32 0, i32 5
  store i64 %add, i64* %nc_exp116, align 8, !tbaa !89
  %77 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !13
  %conv117 = sext i8 %78 to i32
  %cmp118 = icmp ne i32 %conv117, 91
  br i1 %cmp118, label %if.then.120, label %if.else.144

if.then.120:                                      ; preds = %if.end.113
  %79 = bitcast i32* %ttl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  %80 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call121 = call i64 @sm_strlcpy(i8* %arraydecay, i8* %80, i64 257)
  %arraydecay122 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  %81 = load i32, i32* @HasWildcardMX, align 4, !tbaa !5
  %tobool123 = icmp ne i32 %81, 0
  %lnot = xor i1 %tobool123, true
  %lnot.ext = zext i1 %lnot to i32
  %call124 = call i32 @getcanonname(i8* %arraydecay122, i32 256, i32 %lnot.ext, i32* %ttl)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.143

if.then.126:                                      ; preds = %if.then.120
  %arraydecay127 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  store i8* %arraydecay127, i8** %ans, align 8, !tbaa !1
  %82 = load i32, i32* %ttl, align 4, !tbaa !5
  %cmp128 = icmp sgt i32 %82, 0
  br i1 %cmp128, label %if.then.130, label %if.end.142

if.then.130:                                      ; preds = %if.then.126
  %83 = load i64, i64* %now, align 8, !tbaa !19
  %84 = load i32, i32* %ttl, align 4, !tbaa !5
  %cmp131 = icmp slt i32 %84, 3600
  br i1 %cmp131, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %if.then.130
  %85 = load i32, i32* %ttl, align 4, !tbaa !5
  br label %cond.end.135

cond.false.134:                                   ; preds = %if.then.130
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.133
  %cond136 = phi i32 [ %85, %cond.true.133 ], [ 3600, %cond.false.134 ]
  %conv137 = sext i32 %cond136 to i64
  %add138 = add nsw i64 %83, %conv137
  %86 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value139 = getelementptr inbounds %struct.symtab, %struct.symtab* %86, i32 0, i32 3
  %sv_namecanon140 = bitcast %union.anon.3* %s_value139 to %struct._namecanon*
  %nc_exp141 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon140, i32 0, i32 5
  store i64 %add138, i64* %nc_exp141, align 8, !tbaa !89
  br label %if.end.142

if.end.142:                                       ; preds = %cond.end.135, %if.then.126
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.then.120
  %87 = bitcast i32* %ttl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  br label %if.end.168

if.else.144:                                      ; preds = %if.end.113
  %88 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call145 = call i8* @strchr(i8* %88, i32 93) #1
  store i8* %call145, i8** %cp, align 8, !tbaa !1
  %cmp146 = icmp eq i8* %call145, null
  br i1 %cmp146, label %if.then.148, label %if.end.156

if.then.148:                                      ; preds = %if.else.144
  %89 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 9), align 1, !tbaa !13
  %conv149 = zext i8 %89 to i32
  %cmp150 = icmp sge i32 %conv149, 1
  br i1 %cmp150, label %land.lhs.true.152, label %if.end.155

land.lhs.true.152:                                ; preds = %if.then.148
  %90 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool153 = icmp ne i32 %90, 0
  br i1 %tobool153, label %if.end.155, label %if.then.154

if.then.154:                                      ; preds = %land.lhs.true.152
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0))
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %land.lhs.true.152, %if.then.148
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.156:                                       ; preds = %if.else.144
  %91 = load i8*, i8** %cp, align 8, !tbaa !1
  store i8 0, i8* %91, align 1, !tbaa !13
  store %struct.hostent* null, %struct.hostent** %hp, align 8, !tbaa !1
  %92 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %92, i64 1
  %call157 = call i32 @inet_addr(i8* %arrayidx) #1
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %in_addr, i32 0, i32 0
  store i32 %call157, i32* %s_addr, align 4, !tbaa !100
  %cmp158 = icmp ne i32 %call157, -1
  br i1 %cmp158, label %if.then.160, label %if.end.162

if.then.160:                                      ; preds = %if.end.156
  %93 = bitcast %struct.in_addr* %in_addr to i8*
  %call161 = call %struct.hostent* @sm_gethostbyaddr(i8* %93, i32 4, i32 2)
  store %struct.hostent* %call161, %struct.hostent** %hp, align 8, !tbaa !1
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.160, %if.end.156
  %94 = load i8*, i8** %cp, align 8, !tbaa !1
  store i8 93, i8* %94, align 1, !tbaa !13
  %95 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %cmp163 = icmp ne %struct.hostent* %95, null
  br i1 %cmp163, label %if.then.165, label %if.end.167

if.then.165:                                      ; preds = %if.end.162
  %96 = load %struct.hostent*, %struct.hostent** %hp, align 8, !tbaa !1
  %h_name = getelementptr inbounds %struct.hostent, %struct.hostent* %96, i32 0, i32 0
  %97 = load i8*, i8** %h_name, align 8, !tbaa !55
  %call166 = call i8* @denlstring(i8* %97, i32 1, i32 1)
  store i8* %call166, i8** %ans, align 8, !tbaa !1
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.165, %if.end.162
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.143
  %98 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_timeout169 = getelementptr inbounds %struct._map, %struct._map* %98, i32 0, i32 18
  %99 = load i64, i64* %map_timeout169, align 8, !tbaa !98
  %cmp170 = icmp sgt i64 %99, 0
  br i1 %cmp170, label %if.then.172, label %if.end.176

if.then.172:                                      ; preds = %if.end.168
  %100 = load i64, i64* %retrans, align 8, !tbaa !19
  %conv173 = trunc i64 %100 to i32
  %call174 = call %struct.__res_state* @__res_state() #9
  %retrans175 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call174, i32 0, i32 0
  store i32 %conv173, i32* %retrans175, align 4, !tbaa !54
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.172, %if.end.168
  %101 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_retry177 = getelementptr inbounds %struct._map, %struct._map* %101, i32 0, i32 19
  %102 = load i32, i32* %map_retry177, align 4, !tbaa !99
  %cmp178 = icmp sgt i32 %102, 0
  br i1 %cmp178, label %if.then.180, label %if.end.183

if.then.180:                                      ; preds = %if.end.176
  %103 = load i32, i32* %retry, align 4, !tbaa !5
  %call181 = call %struct.__res_state* @__res_state() #9
  %retry182 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call181, i32 0, i32 1
  store i32 %103, i32* %retry182, align 4, !tbaa !52
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.180, %if.end.176
  %104 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value184 = getelementptr inbounds %struct.symtab, %struct.symtab* %104, i32 0, i32 3
  %sv_namecanon185 = bitcast %union.anon.3* %s_value184 to %struct._namecanon*
  %nc_flags186 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon185, i32 0, i32 3
  %105 = load i16, i16* %nc_flags186, align 2, !tbaa !87
  %conv187 = sext i16 %105 to i32
  %or = or i32 %conv187, 1
  %conv188 = trunc i32 %or to i16
  store i16 %conv188, i16* %nc_flags186, align 2, !tbaa !87
  %106 = load i8*, i8** %ans, align 8, !tbaa !1
  %cmp189 = icmp ne i8* %106, null
  br i1 %cmp189, label %if.then.191, label %if.end.227

if.then.191:                                      ; preds = %if.end.183
  %107 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 0, i32* %107, align 4, !tbaa !5
  %108 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value192 = getelementptr inbounds %struct.symtab, %struct.symtab* %108, i32 0, i32 3
  %sv_namecanon193 = bitcast %union.anon.3* %s_value192 to %struct._namecanon*
  %nc_stat194 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon193, i32 0, i32 2
  store i16 0, i16* %nc_stat194, align 2, !tbaa !93
  %109 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value195 = getelementptr inbounds %struct.symtab, %struct.symtab* %109, i32 0, i32 3
  %sv_namecanon196 = bitcast %union.anon.3* %s_value195 to %struct._namecanon*
  %nc_cname197 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon196, i32 0, i32 4
  %110 = load i8*, i8** %nc_cname197, align 8, !tbaa !90
  %cmp198 = icmp ne i8* %110, null
  br i1 %cmp198, label %if.then.200, label %if.end.204

if.then.200:                                      ; preds = %if.then.191
  %111 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value201 = getelementptr inbounds %struct.symtab, %struct.symtab* %111, i32 0, i32 3
  %sv_namecanon202 = bitcast %union.anon.3* %s_value201 to %struct._namecanon*
  %nc_cname203 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon202, i32 0, i32 4
  %112 = load i8*, i8** %nc_cname203, align 8, !tbaa !90
  call void @sm_free_tagged(i8* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 4091)
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.200, %if.then.191
  %113 = load i8*, i8** %ans, align 8, !tbaa !1
  %call205 = call i8* @sm_strdup_x(i8* %113)
  %114 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value206 = getelementptr inbounds %struct.symtab, %struct.symtab* %114, i32 0, i32 3
  %sv_namecanon207 = bitcast %union.anon.3* %s_value206 to %struct._namecanon*
  %nc_cname208 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon207, i32 0, i32 4
  store i8* %call205, i8** %nc_cname208, align 8, !tbaa !90
  %115 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags209 = getelementptr inbounds %struct._map, %struct._map* %115, i32 0, i32 3
  %116 = load i64, i64* %map_mflags209, align 8, !tbaa !95
  %and210 = and i64 %116, 16
  %cmp211 = icmp ne i64 %and210, 0
  br i1 %cmp211, label %if.then.213, label %if.else.216

if.then.213:                                      ; preds = %if.end.204
  %117 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %118 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %119 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call214 = call i64 @strlen(i8* %119) #11
  %call215 = call i8* @map_rewrite(%struct._map* %117, i8* %118, i64 %call214, i8** null)
  store i8* %call215, i8** %cp, align 8, !tbaa !1
  br label %if.end.219

if.else.216:                                      ; preds = %if.end.204
  %120 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %121 = load i8*, i8** %ans, align 8, !tbaa !1
  %122 = load i8*, i8** %ans, align 8, !tbaa !1
  %call217 = call i64 @strlen(i8* %122) #11
  %123 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %call218 = call i8* @map_rewrite(%struct._map* %120, i8* %121, i64 %call217, i8** %123)
  store i8* %call218, i8** %cp, align 8, !tbaa !1
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.216, %if.then.213
  %124 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 9), align 1, !tbaa !13
  %conv220 = zext i8 %124 to i32
  %cmp221 = icmp sge i32 %conv220, 1
  br i1 %cmp221, label %land.lhs.true.223, label %if.end.226

land.lhs.true.223:                                ; preds = %if.end.219
  %125 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool224 = icmp ne i32 %125, 0
  br i1 %tobool224, label %if.end.226, label %if.then.225

if.then.225:                                      ; preds = %land.lhs.true.223
  %126 = load i8*, i8** %ans, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0), i8* %126)
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.225, %land.lhs.true.223, %if.end.219
  %127 = load i8*, i8** %cp, align 8, !tbaa !1
  store i8* %127, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.227:                                       ; preds = %if.end.183
  %call228 = call i32* @__errno_location() #9
  %128 = load i32, i32* %call228, align 4, !tbaa !5
  %conv229 = trunc i32 %128 to i16
  %129 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value230 = getelementptr inbounds %struct.symtab, %struct.symtab* %129, i32 0, i32 3
  %sv_namecanon231 = bitcast %union.anon.3* %s_value230 to %struct._namecanon*
  %nc_errno232 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon231, i32 0, i32 0
  store i16 %conv229, i16* %nc_errno232, align 2, !tbaa !91
  %call233 = call i32* @__h_errno_location() #9
  %130 = load i32, i32* %call233, align 4, !tbaa !5
  %conv234 = trunc i32 %130 to i16
  %131 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value235 = getelementptr inbounds %struct.symtab, %struct.symtab* %131, i32 0, i32 3
  %sv_namecanon236 = bitcast %union.anon.3* %s_value235 to %struct._namecanon*
  %nc_herrno237 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon236, i32 0, i32 1
  store i16 %conv234, i16* %nc_herrno237, align 2, !tbaa !92
  %132 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 9), align 1, !tbaa !13
  %conv238 = zext i8 %132 to i32
  %cmp239 = icmp sge i32 %conv238, 1
  br i1 %cmp239, label %land.lhs.true.241, label %if.end.245

land.lhs.true.241:                                ; preds = %if.end.227
  %133 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool242 = icmp ne i32 %133, 0
  br i1 %tobool242, label %if.end.245, label %if.then.243

if.then.243:                                      ; preds = %land.lhs.true.241
  %call244 = call i32* @__h_errno_location() #9
  %134 = load i32, i32* %call244, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i32 0, i32 0), i32 %134)
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.243, %land.lhs.true.241, %if.end.227
  %call246 = call i32* @__h_errno_location() #9
  %135 = load i32, i32* %call246, align 4, !tbaa !5
  switch i32 %135, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.252
    i32 4, label %sw.bb.252
    i32 3, label %sw.bb.253
  ]

sw.bb:                                            ; preds = %if.end.245
  %136 = load i32, i32* @UseNameServer, align 4, !tbaa !5
  %tobool247 = icmp ne i32 %136, 0
  br i1 %tobool247, label %if.then.248, label %if.end.251

if.then.248:                                      ; preds = %sw.bb
  %137 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_status249 = getelementptr inbounds %struct.envelope, %struct.envelope* %137, i32 0, i32 41
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i8** %e_status249, align 8, !tbaa !94
  %138 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call250 = call i8* @shortenstring(i8* %138, i64 33)
  call void (i8*, ...) @message(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0), i8* %call250)
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.248, %sw.bb
  %139 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 75, i32* %139, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.252:                                        ; preds = %if.end.245, %if.end.245
  %140 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 68, i32* %140, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.253:                                        ; preds = %if.end.245
  %141 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 70, i32* %141, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.245
  %142 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 69, i32* %142, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.253, %sw.bb.252, %if.end.251
  %143 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  %144 = load i32, i32* %143, align 4, !tbaa !5
  %conv254 = trunc i32 %144 to i16
  %145 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value255 = getelementptr inbounds %struct.symtab, %struct.symtab* %145, i32 0, i32 3
  %sv_namecanon256 = bitcast %union.anon.3* %s_value255 to %struct._namecanon*
  %nc_stat257 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon256, i32 0, i32 2
  store i16 %conv254, i16* %nc_stat257, align 2, !tbaa !93
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.226, %if.end.155, %if.end.85, %if.end.68, %if.then.44, %if.then.37
  %146 = bitcast [257 x i8]* %hbuf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %146) #1
  %147 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i64* %retrans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i64* %now to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast i8** %ans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast %struct.in_addr* %in_addr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast %struct.hostent** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = load i8*, i8** %retval
  ret i8* %155
}

declare %struct.symtab* @stab(i8*, i32, i32) #2

declare i8* @shortenstring(i8*, i64) #2

declare i8* @map_rewrite(%struct._map*, i8*, i64, i8**) #2

declare %struct.hostent* @sm_gethostbyaddr(i8*, i32, i32) #2

declare i8* @denlstring(i8*, i32, i32) #2

declare i8* @sm_strdup_x(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @host_map_init(%struct._map* %map, i8* %args) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %args.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %h = alloca i8*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %args, i8** %args.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %args.addr, align 8, !tbaa !1
  store i8* %1, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end.96, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %2 = load i8*, i8** %p, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !13
  %conv = sext i8 %3 to i32
  %and = and i32 %conv, -128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %p, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !13
  %conv2 = sext i8 %5 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #9
  %6 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !15
  %conv3 = zext i16 %7 to i32
  %and4 = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !13
  %conv5 = sext i8 %11 to i32
  %cmp6 = icmp ne i32 %conv5, 45
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8, !tbaa !1
  %13 = load i8, i8* %incdec.ptr8, align 1, !tbaa !13
  %conv9 = sext i8 %13 to i32
  switch i32 %conv9, label %sw.epilog [
    i32 97, label %sw.bb
    i32 84, label %sw.bb.11
    i32 109, label %sw.bb.13
    i32 116, label %sw.bb.14
    i32 83, label %sw.bb.17
    i32 68, label %sw.bb.19
    i32 100, label %sw.bb.22
    i32 114, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %if.end
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr10, i8** %p, align 8, !tbaa !1
  %15 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app = getelementptr inbounds %struct._map, %struct._map* %15, i32 0, i32 13
  store i8* %incdec.ptr10, i8** %map_app, align 8, !tbaa !101
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr12, i8** %p, align 8, !tbaa !1
  %17 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_tapp = getelementptr inbounds %struct._map, %struct._map* %17, i32 0, i32 14
  store i8* %incdec.ptr12, i8** %map_tapp, align 8, !tbaa !102
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end
  %18 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %18, i32 0, i32 3
  %19 = load i64, i64* %map_mflags, align 8, !tbaa !95
  %or = or i64 %19, 16
  store i64 %or, i64* %map_mflags, align 8, !tbaa !95
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %20 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags15 = getelementptr inbounds %struct._map, %struct._map* %20, i32 0, i32 3
  %21 = load i64, i64* %map_mflags15, align 8, !tbaa !95
  %or16 = or i64 %21, 131072
  store i64 %or16, i64* %map_mflags15, align 8, !tbaa !95
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr18, i8** %p, align 8, !tbaa !1
  %23 = load i8, i8* %incdec.ptr18, align 1, !tbaa !13
  %24 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_spacesub = getelementptr inbounds %struct._map, %struct._map* %24, i32 0, i32 12
  store i8 %23, i8* %map_spacesub, align 1, !tbaa !103
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.end
  %25 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags20 = getelementptr inbounds %struct._map, %struct._map* %25, i32 0, i32 3
  %26 = load i64, i64* %map_mflags20, align 8, !tbaa !95
  %or21 = or i64 %26, 524288
  store i64 %or21, i64* %map_mflags20, align 8, !tbaa !95
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end
  %27 = bitcast i8** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  br label %while.cond.23

while.cond.23:                                    ; preds = %while.body.38, %sw.bb.22
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr24, i8** %p, align 8, !tbaa !1
  %29 = load i8, i8* %incdec.ptr24, align 1, !tbaa !13
  %conv25 = sext i8 %29 to i32
  %and26 = and i32 %conv25, -128
  %cmp27 = icmp eq i32 %and26, 0
  br i1 %cmp27, label %land.rhs.29, label %land.end.37

land.rhs.29:                                      ; preds = %while.cond.23
  %30 = load i8*, i8** %p, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !13
  %conv30 = sext i8 %31 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %call32 = call i16** @__ctype_b_loc() #9
  %32 = load i16*, i16** %call32, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i16, i16* %32, i64 %idxprom31
  %33 = load i16, i16* %arrayidx33, align 2, !tbaa !15
  %conv34 = zext i16 %33 to i32
  %and35 = and i32 %conv34, 8192
  %tobool36 = icmp ne i32 %and35, 0
  br label %land.end.37

land.end.37:                                      ; preds = %land.rhs.29, %while.cond.23
  %34 = phi i1 [ false, %while.cond.23 ], [ %tobool36, %land.rhs.29 ]
  br i1 %34, label %while.body.38, label %while.end.39

while.body.38:                                    ; preds = %land.end.37
  br label %while.cond.23

while.end.39:                                     ; preds = %land.end.37
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %call40 = call i8* @strchr(i8* %35, i32 32) #1
  store i8* %call40, i8** %h, align 8, !tbaa !1
  %36 = load i8*, i8** %h, align 8, !tbaa !1
  %cmp41 = icmp ne i8* %36, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %while.end.39
  %37 = load i8*, i8** %h, align 8, !tbaa !1
  store i8 0, i8* %37, align 1, !tbaa !13
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %while.end.39
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %call45 = call i64 @convtime(i8* %38, i32 115)
  %39 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_timeout = getelementptr inbounds %struct._map, %struct._map* %39, i32 0, i32 18
  store i64 %call45, i64* %map_timeout, align 8, !tbaa !98
  %40 = load i8*, i8** %h, align 8, !tbaa !1
  %cmp46 = icmp ne i8* %40, null
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.44
  %41 = load i8*, i8** %h, align 8, !tbaa !1
  store i8 32, i8* %41, align 1, !tbaa !13
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.44
  %42 = bitcast i8** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end
  br label %while.cond.51

while.cond.51:                                    ; preds = %while.body.66, %sw.bb.50
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr52 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr52, i8** %p, align 8, !tbaa !1
  %44 = load i8, i8* %incdec.ptr52, align 1, !tbaa !13
  %conv53 = sext i8 %44 to i32
  %and54 = and i32 %conv53, -128
  %cmp55 = icmp eq i32 %and54, 0
  br i1 %cmp55, label %land.rhs.57, label %land.end.65

land.rhs.57:                                      ; preds = %while.cond.51
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !13
  %conv58 = sext i8 %46 to i32
  %idxprom59 = sext i32 %conv58 to i64
  %call60 = call i16** @__ctype_b_loc() #9
  %47 = load i16*, i16** %call60, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i16, i16* %47, i64 %idxprom59
  %48 = load i16, i16* %arrayidx61, align 2, !tbaa !15
  %conv62 = zext i16 %48 to i32
  %and63 = and i32 %conv62, 8192
  %tobool64 = icmp ne i32 %and63, 0
  br label %land.end.65

land.end.65:                                      ; preds = %land.rhs.57, %while.cond.51
  %49 = phi i1 [ false, %while.cond.51 ], [ %tobool64, %land.rhs.57 ]
  br i1 %49, label %while.body.66, label %while.end.67

while.body.66:                                    ; preds = %land.end.65
  br label %while.cond.51

while.end.67:                                     ; preds = %land.end.65
  %50 = load i8*, i8** %p, align 8, !tbaa !1
  %call68 = call i32 @atoi(i8* %50) #11
  %51 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_retry = getelementptr inbounds %struct._map, %struct._map* %51, i32 0, i32 19
  store i32 %call68, i32* %map_retry, align 4, !tbaa !99
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %while.end.67, %if.end.49, %sw.bb.19, %sw.bb.17, %sw.bb.14, %sw.bb.13, %sw.bb.11, %sw.bb
  br label %while.cond.69

while.cond.69:                                    ; preds = %while.body.88, %sw.epilog
  %52 = load i8*, i8** %p, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !13
  %conv70 = sext i8 %53 to i32
  %cmp71 = icmp ne i32 %conv70, 0
  br i1 %cmp71, label %land.rhs.73, label %land.end.87

land.rhs.73:                                      ; preds = %while.cond.69
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !13
  %conv74 = sext i8 %55 to i32
  %and75 = and i32 %conv74, -128
  %cmp76 = icmp eq i32 %and75, 0
  br i1 %cmp76, label %land.rhs.78, label %land.end.86

land.rhs.78:                                      ; preds = %land.rhs.73
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !13
  %conv79 = sext i8 %57 to i32
  %idxprom80 = sext i32 %conv79 to i64
  %call81 = call i16** @__ctype_b_loc() #9
  %58 = load i16*, i16** %call81, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i16, i16* %58, i64 %idxprom80
  %59 = load i16, i16* %arrayidx82, align 2, !tbaa !15
  %conv83 = zext i16 %59 to i32
  %and84 = and i32 %conv83, 8192
  %tobool85 = icmp ne i32 %and84, 0
  br label %land.end.86

land.end.86:                                      ; preds = %land.rhs.78, %land.rhs.73
  %60 = phi i1 [ false, %land.rhs.73 ], [ %tobool85, %land.rhs.78 ]
  %lnot = xor i1 %60, true
  br label %land.end.87

land.end.87:                                      ; preds = %land.end.86, %while.cond.69
  %61 = phi i1 [ false, %while.cond.69 ], [ %lnot, %land.end.86 ]
  br i1 %61, label %while.body.88, label %while.end.90

while.body.88:                                    ; preds = %land.end.87
  %62 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr89 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr89, i8** %p, align 8, !tbaa !1
  br label %while.cond.69

while.end.90:                                     ; preds = %land.end.87
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %64 = load i8, i8* %63, align 1, !tbaa !13
  %conv91 = sext i8 %64 to i32
  %cmp92 = icmp ne i32 %conv91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %while.end.90
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr95 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr95, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %65, align 1, !tbaa !13
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %while.end.90
  br label %for.cond

for.end:                                          ; preds = %if.then
  %66 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app97 = getelementptr inbounds %struct._map, %struct._map* %66, i32 0, i32 13
  %67 = load i8*, i8** %map_app97, align 8, !tbaa !101
  %cmp98 = icmp ne i8* %67, null
  br i1 %cmp98, label %if.then.100, label %if.end.104

if.then.100:                                      ; preds = %for.end
  %68 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app101 = getelementptr inbounds %struct._map, %struct._map* %68, i32 0, i32 13
  %69 = load i8*, i8** %map_app101, align 8, !tbaa !101
  %call102 = call i8* @newstr(i8* %69)
  %70 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app103 = getelementptr inbounds %struct._map, %struct._map* %70, i32 0, i32 13
  store i8* %call102, i8** %map_app103, align 8, !tbaa !101
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.100, %for.end
  %71 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_tapp105 = getelementptr inbounds %struct._map, %struct._map* %71, i32 0, i32 14
  %72 = load i8*, i8** %map_tapp105, align 8, !tbaa !102
  %cmp106 = icmp ne i8* %72, null
  br i1 %cmp106, label %if.then.108, label %if.end.112

if.then.108:                                      ; preds = %if.end.104
  %73 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_tapp109 = getelementptr inbounds %struct._map, %struct._map* %73, i32 0, i32 14
  %74 = load i8*, i8** %map_tapp109, align 8, !tbaa !102
  %call110 = call i8* @newstr(i8* %74)
  %75 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_tapp111 = getelementptr inbounds %struct._map, %struct._map* %75, i32 0, i32 14
  store i8* %call110, i8** %map_tapp111, align 8, !tbaa !102
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.108, %if.end.104
  %76 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  ret i32 1
}

declare i64 @convtime(i8*, i32) #2

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

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #4

declare i32 @enoughdiskspace(i64, %struct.envelope*) #2

declare i32 @transienterror(i32) #2

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #4

declare i32 @sm_strcasecmp(i8*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @siglongjmp(%struct.__jmp_buf_tag*, i32) #5

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind returns_twice "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind returns_twice }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !9, i64 116}
!8 = !{!"daemon", !6, i64 0, !3, i64 4, !9, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !10, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 184, !2, i64 192, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !6, i64 216, !2, i64 224, !3, i64 232}
!9 = !{!"short", !3, i64 0}
!10 = !{!"long", !3, i64 0}
!11 = !{!8, !6, i64 144}
!12 = !{!8, !10, i64 136}
!13 = !{!3, !3, i64 0}
!14 = !{!8, !2, i64 192}
!15 = !{!9, !9, i64 0}
!16 = !{i32 209378}
!17 = !{!8, !6, i64 148}
!18 = !{!8, !6, i64 0}
!19 = !{!10, !10, i64 0}
!20 = !{i32 212778}
!21 = !{!22, !10, i64 0}
!22 = !{!"timeval", !10, i64 0, !10, i64 8}
!23 = !{!22, !10, i64 8}
!24 = !{!25, !9, i64 0}
!25 = !{!"sockaddr", !9, i64 0, !3, i64 2}
!26 = !{!27, !9, i64 0}
!27 = !{!"sockaddr_un", !9, i64 0, !3, i64 2}
!28 = !{!8, !2, i64 184}
!29 = !{i32 219289}
!30 = !{!8, !6, i64 200}
!31 = !{!8, !6, i64 204}
!32 = !{!8, !6, i64 208}
!33 = !{!8, !6, i64 212}
!34 = !{!8, !6, i64 216}
!35 = !{!8, !2, i64 224}
!36 = !{!37, !6, i64 4}
!37 = !{!"sockaddr_in", !9, i64 0, !9, i64 2, !38, i64 4, !3, i64 8}
!38 = !{!"in_addr", !6, i64 0}
!39 = !{!37, !9, i64 2}
!40 = !{i32 231749}
!41 = !{!42, !6, i64 16}
!42 = !{!"servent", !2, i64 0, !2, i64 8, !6, i64 16, !2, i64 24}
!43 = !{!8, !6, i64 124}
!44 = !{!8, !6, i64 128}
!45 = !{!8, !6, i64 120}
!46 = !{!47, !2, i64 344}
!47 = !{!"envelope", !2, i64 0, !10, i64 8, !10, i64 16, !2, i64 24, !48, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !10, i64 256, !2, i64 264, !10, i64 272, !6, i64 280, !9, i64 284, !9, i64 286, !9, i64 288, !9, i64 290, !9, i64 292, !9, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !10, i64 456, !6, i64 464, !10, i64 472, !10, i64 480, !49, i64 488, !2, i64 2576, !2, i64 2584, !50, i64 2592, !10, i64 2624, !6, i64 2632, !2, i64 2640, !6, i64 2648}
!48 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !10, i64 144, !2, i64 152, !9, i64 160, !2, i64 168, !6, i64 176, !6, i64 180, !2, i64 184}
!49 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!50 = !{!"sm_timers", !51, i64 0}
!51 = !{!"_timer", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!52 = !{!53, !6, i64 4}
!53 = !{!"__res_state", !6, i64 0, !6, i64 4, !10, i64 8, !6, i64 16, !3, i64 20, !9, i64 68, !3, i64 72, !3, i64 128, !10, i64 384, !6, i64 392, !6, i64 392, !6, i64 393, !6, i64 393, !3, i64 396, !2, i64 480, !2, i64 488, !6, i64 496, !6, i64 500, !6, i64 504, !3, i64 512}
!54 = !{!53, !6, i64 0}
!55 = !{!56, !2, i64 0}
!56 = !{!"hostent", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !2, i64 24}
!57 = !{!56, !2, i64 24}
!58 = !{!56, !6, i64 16}
!59 = !{i32 237969}
!60 = !{!61, !2, i64 0}
!61 = !{!"dflags", !2, i64 0, !6, i64 8}
!62 = !{!61, !6, i64 8}
!63 = !{i64 0, i64 4, !5, i64 4, i64 2, !15, i64 6, i64 14, !13, i64 4, i64 2, !15, i64 6, i64 108, !13, i64 4, i64 2, !15, i64 6, i64 2, !15, i64 8, i64 4, !5, i64 12, i64 8, !13, i64 116, i64 2, !15, i64 120, i64 4, !5, i64 124, i64 4, !5, i64 128, i64 4, !5, i64 136, i64 8, !19, i64 144, i64 4, !5, i64 148, i64 4, !5, i64 152, i64 32, !13, i64 184, i64 8, !1, i64 192, i64 8, !1, i64 200, i64 4, !5, i64 204, i64 4, !5, i64 208, i64 4, !5, i64 212, i64 4, !5, i64 216, i64 4, !5, i64 224, i64 8, !1, i64 232, i64 200, !13}
!64 = !{i32 244566}
!65 = !{i64 0, i64 2, !15, i64 2, i64 14, !13, i64 0, i64 2, !15, i64 2, i64 108, !13, i64 0, i64 2, !15, i64 2, i64 2, !15, i64 4, i64 4, !5, i64 8, i64 8, !13}
!66 = !{!67, !2, i64 56}
!67 = !{!"mailer_con_info", !10, i64 0, !9, i64 8, !9, i64 10, !9, i64 12, !9, i64 14, !6, i64 16, !10, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !10, i64 96, !2, i64 104, !2, i64 112, !10, i64 120, !6, i64 128, !2, i64 136, !2, i64 144, !6, i64 152, !2, i64 160, !49, i64 168}
!68 = !{!37, !9, i64 0}
!69 = !{!53, !10, i64 8}
!70 = !{!56, !6, i64 20}
!71 = !{i32 248732}
!72 = !{i32 249537}
!73 = !{!67, !2, i64 64}
!74 = !{!47, !2, i64 376}
!75 = !{!47, !6, i64 464}
!76 = !{!77, !10, i64 56}
!77 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !3, i64 144, !3, i64 208, !3, i64 272, !3, i64 296}
!78 = !{!77, !10, i64 64}
!79 = !{!67, !2, i64 40}
!80 = !{!67, !2, i64 32}
!81 = !{!67, !2, i64 112}
!82 = !{!56, !2, i64 8}
!83 = !{!77, !10, i64 112}
!84 = !{i32 267969}
!85 = !{i32 268253}
!86 = !{i32 268694}
!87 = !{!88, !9, i64 6}
!88 = !{!"_namecanon", !9, i64 0, !9, i64 2, !9, i64 4, !9, i64 6, !2, i64 8, !10, i64 16}
!89 = !{!88, !10, i64 16}
!90 = !{!88, !2, i64 8}
!91 = !{!88, !9, i64 0}
!92 = !{!88, !9, i64 2}
!93 = !{!88, !9, i64 4}
!94 = !{!47, !2, i64 448}
!95 = !{!96, !10, i64 24}
!96 = !{!"_map", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72, !3, i64 73, !3, i64 74, !3, i64 75, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !10, i64 112, !10, i64 120, !6, i64 128, !6, i64 132, !6, i64 136, !9, i64 140, !3, i64 144, !3, i64 240}
!97 = !{!47, !9, i64 290}
!98 = !{!96, !10, i64 120}
!99 = !{!96, !6, i64 128}
!100 = !{!38, !6, i64 0}
!101 = !{!96, !2, i64 80}
!102 = !{!96, !2, i64 88}
!103 = !{!96, !3, i64 75}
