; ModuleID = '22.map.bc'
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
%struct._map = type { %struct._mapclass*, %struct._mapclass*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8*, i8*, i8*, i8*, i64, i64, i32, i32, i32, i16, [12 x %struct._map*], [5 x i16] }
%struct._mapclass = type { i8*, i8*, i16, {}*, i8* (%struct._map*, i8*, i8**, i32*)*, void (%struct._map*, i8*, i8*)*, i32 (%struct._map*, i32)*, void (%struct._map*)* }
%struct.symtab = type { i8*, i16, %struct.symtab*, %union.anon }
%union.anon = type { %struct.mailer_con_info }
%struct.dns_map = type { i32 }
%struct.resource_record = type { i8*, i32, i32, i32, i32, %union.anon.0, %struct.resource_record* }
%union.anon.0 = type { i8* }
%struct.DNS_REPLY_T = type { %struct.HEADER, %struct.DNS_QUERY_T, %struct.resource_record* }
%struct.HEADER = type { [12 x i8] }
%struct.DNS_QUERY_T = type { i8*, i32, i32 }
%struct.MX_RECORD_T = type { i32, [1 x i8] }
%struct.SRV_RECORDT_T = type { i32, i32, i32, [1 x i8] }
%struct.in_addr = type { i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.SM_MBDB_T = type { i32, i32, [256 x i8], [256 x i8], [4096 x i8], [4096 x i8] }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }

@SpaceSub = external global i8, align 1
@.str = private unnamed_addr constant [25 x i8] c"Illegal option %c map %s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"No file name for %s map %s\00", align 1
@map_rewrite.buflen = internal global i64 0, align 8
@map_rewrite.buf = internal global i8* null, align 8
@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"map_rewrite(%.*s), av =\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" (nullv)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"map.c\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"map_rewrite => %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"entering initmaps\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"exiting initmaps\00", align 1
@HoldErrs = external global i32, align 4
@QuickAbort = external global i32, align 4
@Errors = external global i32, align 4
@OnlyOneError = external global i32, align 4
@OpMode = external global i8, align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"openmap()\09%s:%s %s: valid\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@CurrentPid = external global i32, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"openmap()\09%s:%s %s: invalid%s%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"hosts\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"getcanonname(%s), trying %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"dns\00", align 1
@CurEnv = external global %struct.envelope*, align 8
@.str.19 = private unnamed_addr constant [25 x i8] c"getcanonname(%s), found\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"getcanonname(%s), failed, status=%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"dns_map_open(%s, %d)\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"dns map %s: wrong type %s\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"dns map %s: missing -R type\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"dns_map_lookup(%s, %s)\0A\00", align 1
@SmHeapGroup = external global i32, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"T_NS\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"T_CNAME\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"T_AFSDB\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"T_SRV\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"T_PTR\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"T_TXT\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"T_MX\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"T_A\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"\09skipping type %s (%d) value %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"<UNKNOWN>\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"<NO VALUE>\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"\09found type %s (%d) value %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"\09no match found\0A\00", align 1
@LogLevel = external global i32, align 4
@.str.40 = private unnamed_addr constant [17 x i8] c"dns %.100s => %s\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"Illegal option %c map syslog\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"LOG_\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"EMERG\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"ALERT\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"CRIT\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"NOTICE\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"syslog_map_parseargs: Unknown priority %s\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"syslog_map_lookup(%s (priority %d): %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"text_map_open(%s, %s, %d)\0A\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"text map \22%s\22: file name required\00", align 1
@.str.56 = private unnamed_addr constant [49 x i8] c"text map \22%s\22: file name must be fully qualified\00", align 1
@DontBlameSendmail = external global [8 x i32], align 16
@RunAsUid = external global i32, align 4
@RunAsGid = external global i32, align 4
@RunAsUserName = external global i8*, align 8
@.str.57 = private unnamed_addr constant [22 x i8] c"\09unsafe map file: %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"text map \22%s\22: unsafe map file %s\00", align 1
@.str.59 = private unnamed_addr constant [59 x i8] c"text map \22%s\22, file %s: -k should specify a number, not %s\00", align 1
@.str.60 = private unnamed_addr constant [59 x i8] c"text map \22%s\22, file %s: -v should specify a number, not %s\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"text_map_open(%s, %s): delimiter = \00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"(white space)\0A\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"text_map_lookup(%s, %s)\0A\00", align 1
@FileMode = external global i32, align 4
@.str.65 = private unnamed_addr constant [21 x i8] c"stab_lookup(%s, %s)\0A\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"stab_map_open(%s, %s, %d)\0A\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"impl_map_lookup(%s, %s)\0A\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"impl_map_store(%s, %s, %s)\0A\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"impl_map_open(%s, %s, %d)\0A\00", align 1
@.str.70 = private unnamed_addr constant [51 x i8] c"Cannot rebuild aliases: no database format defined\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"impl_map_close(%s, %s, %lx)\0A\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"user_map_open(%s, %d)\0A\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"passwd\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"gecos\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"User map %s: unknown column name %s\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"user_map_lookup(%s, %s)\0A\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.84 = private unnamed_addr constant [28 x i8] c"user_map %s: bogus field %d\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"prog_map_lookup(%s, %s) %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"prog_open:\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.89 = private unnamed_addr constant [43 x i8] c"prog_map_lookup(%s) failed (%s) -- closing\00", align 1
@.str.90 = private unnamed_addr constant [35 x i8] c"prog_map_lookup(%s): read error %s\00", align 1
@.str.91 = private unnamed_addr constant [35 x i8] c"prog_map_lookup(%s): empty answer\0A\00", align 1
@.str.92 = private unnamed_addr constant [35 x i8] c"prog_map_lookup(%s): wait error %s\00", align 1
@.str.93 = private unnamed_addr constant [45 x i8] c"prog_map_lookup(%s): child died on signal %d\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"seq_map_parse(%s, %s)\0A\00", align 1
@.str.95 = private unnamed_addr constant [39 x i8] c"Sequence map %s: unknown member map %s\00", align 1
@.str.96 = private unnamed_addr constant [47 x i8] c"Sequence map %s: too many member maps (%d max)\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"switch_map_open(%s, %s, %d)\0A\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"\09switch_map_find => %d\0A\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"\09\09%s\0A\00", align 1
@.str.100 = private unnamed_addr constant [37 x i8] c"Switch map %s: unknown member map %s\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"\09map_stack[%d] = %s:%s\0A\00", align 1
@.str.102 = private unnamed_addr constant [24 x i8] c"seq_map_lookup(%s, %s)\0A\00", align 1
@.str.103 = private unnamed_addr constant [27 x i8] c"seq_map_store(%s, %s, %s)\0A\00", align 1
@.str.104 = private unnamed_addr constant [43 x i8] c"seq_map_store(%s, %s, %s): no writable map\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"null-map\00", align 1
@NullMapClass = global { i8*, i8*, i16, i32 (%struct._map*, i8*)*, i8* (%struct._map*, i8*, i8**, i32*)*, void (%struct._map*, i8*, i8*)*, i32 (%struct._map*, i32)*, void (%struct._map*)* } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0), i8* null, i16 0, i32 (%struct._map*, i8*)* null, i8* (%struct._map*, i8*, i8**, i32*)* @null_map_lookup, void (%struct._map*, i8*, i8*)* @null_map_store, i32 (%struct._map*, i32)* @null_map_open, void (%struct._map*)* @null_map_close }, align 8
@.str.106 = private unnamed_addr constant [10 x i8] c"bogus-map\00", align 1
@BogusMapClass = global { i8*, i8*, i16, i32 (%struct._map*, i8*)*, i8* (%struct._map*, i8*, i8**, i32*)*, void (%struct._map*, i8*, i8*)*, i32 (%struct._map*, i32)*, void (%struct._map*)* } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), i8* null, i16 0, i32 (%struct._map*, i8*)* null, i8* (%struct._map*, i8*, i8**, i32*)* @bogus_map_lookup, void (%struct._map*, i8*, i8*)* @null_map_store, i32 (%struct._map*, i32)* @null_map_open, void (%struct._map*)* @null_map_close }, align 8
@.str.107 = private unnamed_addr constant [26 x i8] c"macro_map_lookup(%s, %s)\0A\00", align 1
@arith_map_lookup.result = internal global [16 x i8] zeroinitializer, align 16
@.str.108 = private unnamed_addr constant [28 x i8] c"arith_map_lookup: key '%s'\0A\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"arith_map_lookup: arg '%s'\0A\00", align 1
@.str.110 = private unnamed_addr constant [31 x i8] c"arith_map: unknown operator %c\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.114 = private unnamed_addr constant [27 x i8] c"arpa_map_lookup: key '%s'\0A\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@.str.116 = private unnamed_addr constant [36 x i8] c"arpa_map_lookup: r=%d, result='%s'\0A\00", align 1
@.str.117 = private unnamed_addr constant [21 x i8] c"map_init(%s:%s, %s)\0A\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"\09not rebuildable\0A\00", align 1
@.str.119 = private unnamed_addr constant [28 x i8] c"closemaps: closing %s (%s)\0A\00", align 1
@.str.120 = private unnamed_addr constant [23 x i8] c"text_getcanonname(%s)\0A\00", align 1
@SmFtStdio_def = external global %struct.sm_file, align 8
@HostsFile = external global i8*, align 8
@.str.121 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @map_parseargs(%struct._map* %map, i8* %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct._map*, align 8
  %ap.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %h = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %ap, i8** %ap.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ap.addr, align 8, !tbaa !1
  store i8* %1, i8** %p, align 8, !tbaa !1
  %2 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %2, i32 0, i32 3
  %3 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %or = or i64 %3, 768
  store i64 %or, i64* %map_mflags, align 8, !tbaa !5
  %4 = load i8, i8* @SpaceSub, align 1, !tbaa !10
  %5 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_spacesub = getelementptr inbounds %struct._map, %struct._map* %5, i32 0, i32 12
  store i8 %4, i8* %map_spacesub, align 1, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %if.end.137, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %6 = load i8*, i8** %p, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !10
  %conv = sext i8 %7 to i32
  %and = and i32 %conv, -128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !10
  %conv2 = sext i8 %9 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #8
  %10 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2, !tbaa !12
  %conv3 = zext i16 %11 to i32
  %and4 = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and4, 0
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
  %15 = load i8, i8* %14, align 1, !tbaa !10
  %conv5 = sext i8 %15 to i32
  %cmp6 = icmp ne i32 %conv5, 45
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8, !tbaa !1
  %17 = load i8, i8* %incdec.ptr8, align 1, !tbaa !10
  %conv9 = sext i8 %17 to i32
  switch i32 %conv9, label %sw.default.107 [
    i32 78, label %sw.bb
    i32 79, label %sw.bb.14
    i32 111, label %sw.bb.17
    i32 102, label %sw.bb.20
    i32 109, label %sw.bb.23
    i32 65, label %sw.bb.26
    i32 113, label %sw.bb.29
    i32 97, label %sw.bb.32
    i32 100, label %sw.bb.34
    i32 84, label %sw.bb.46
    i32 107, label %sw.bb.48
    i32 118, label %sw.bb.66
    i32 122, label %sw.bb.84
    i32 116, label %sw.bb.98
    i32 83, label %sw.bb.101
    i32 68, label %sw.bb.104
  ]

sw.bb:                                            ; preds = %if.end
  %18 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags10 = getelementptr inbounds %struct._map, %struct._map* %18, i32 0, i32 3
  %19 = load i64, i64* %map_mflags10, align 8, !tbaa !5
  %or11 = or i64 %19, 2
  store i64 %or11, i64* %map_mflags10, align 8, !tbaa !5
  %20 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags12 = getelementptr inbounds %struct._map, %struct._map* %20, i32 0, i32 3
  %21 = load i64, i64* %map_mflags12, align 8, !tbaa !5
  %and13 = and i64 %21, -257
  store i64 %and13, i64* %map_mflags12, align 8, !tbaa !5
  br label %sw.epilog.109

sw.bb.14:                                         ; preds = %if.end
  %22 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags15 = getelementptr inbounds %struct._map, %struct._map* %22, i32 0, i32 3
  %23 = load i64, i64* %map_mflags15, align 8, !tbaa !5
  %and16 = and i64 %23, -513
  store i64 %and16, i64* %map_mflags15, align 8, !tbaa !5
  br label %sw.epilog.109

sw.bb.17:                                         ; preds = %if.end
  %24 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags18 = getelementptr inbounds %struct._map, %struct._map* %24, i32 0, i32 3
  %25 = load i64, i64* %map_mflags18, align 8, !tbaa !5
  %or19 = or i64 %25, 4
  store i64 %or19, i64* %map_mflags18, align 8, !tbaa !5
  br label %sw.epilog.109

sw.bb.20:                                         ; preds = %if.end
  %26 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags21 = getelementptr inbounds %struct._map, %struct._map* %26, i32 0, i32 3
  %27 = load i64, i64* %map_mflags21, align 8, !tbaa !5
  %or22 = or i64 %27, 8
  store i64 %or22, i64* %map_mflags21, align 8, !tbaa !5
  br label %sw.epilog.109

sw.bb.23:                                         ; preds = %if.end
  %28 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags24 = getelementptr inbounds %struct._map, %struct._map* %28, i32 0, i32 3
  %29 = load i64, i64* %map_mflags24, align 8, !tbaa !5
  %or25 = or i64 %29, 16
  store i64 %or25, i64* %map_mflags24, align 8, !tbaa !5
  br label %sw.epilog.109

sw.bb.26:                                         ; preds = %if.end
  %30 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags27 = getelementptr inbounds %struct._map, %struct._map* %30, i32 0, i32 3
  %31 = load i64, i64* %map_mflags27, align 8, !tbaa !5
  %or28 = or i64 %31, 32768
  store i64 %or28, i64* %map_mflags27, align 8, !tbaa !5
  br label %sw.epilog.109

sw.bb.29:                                         ; preds = %if.end
  %32 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags30 = getelementptr inbounds %struct._map, %struct._map* %32, i32 0, i32 3
  %33 = load i64, i64* %map_mflags30, align 8, !tbaa !5
  %or31 = or i64 %33, 65536
  store i64 %or31, i64* %map_mflags30, align 8, !tbaa !5
  br label %sw.epilog.109

sw.bb.32:                                         ; preds = %if.end
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr33, i8** %p, align 8, !tbaa !1
  %35 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app = getelementptr inbounds %struct._map, %struct._map* %35, i32 0, i32 13
  store i8* %incdec.ptr33, i8** %map_app, align 8, !tbaa !13
  br label %sw.epilog.109

sw.bb.34:                                         ; preds = %if.end
  %36 = bitcast i8** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr35 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr35, i8** %p, align 8, !tbaa !1
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %call36 = call i8* @strchr(i8* %38, i32 32) #1
  store i8* %call36, i8** %h, align 8, !tbaa !1
  %39 = load i8*, i8** %h, align 8, !tbaa !1
  %cmp37 = icmp ne i8* %39, null
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %sw.bb.34
  %40 = load i8*, i8** %h, align 8, !tbaa !1
  store i8 0, i8* %40, align 1, !tbaa !10
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %sw.bb.34
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %call41 = call i64 @convtime(i8* %41, i32 115)
  %42 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_timeout = getelementptr inbounds %struct._map, %struct._map* %42, i32 0, i32 18
  store i64 %call41, i64* %map_timeout, align 8, !tbaa !14
  %43 = load i8*, i8** %h, align 8, !tbaa !1
  %cmp42 = icmp ne i8* %43, null
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.40
  %44 = load i8*, i8** %h, align 8, !tbaa !1
  store i8 32, i8* %44, align 1, !tbaa !10
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.40
  %45 = bitcast i8** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  br label %sw.epilog.109

sw.bb.46:                                         ; preds = %if.end
  %46 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr47, i8** %p, align 8, !tbaa !1
  %47 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_tapp = getelementptr inbounds %struct._map, %struct._map* %47, i32 0, i32 14
  store i8* %incdec.ptr47, i8** %map_tapp, align 8, !tbaa !15
  br label %sw.epilog.109

sw.bb.48:                                         ; preds = %if.end
  br label %while.cond.49

while.cond.49:                                    ; preds = %while.body.64, %sw.bb.48
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr50 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr50, i8** %p, align 8, !tbaa !1
  %49 = load i8, i8* %incdec.ptr50, align 1, !tbaa !10
  %conv51 = sext i8 %49 to i32
  %and52 = and i32 %conv51, -128
  %cmp53 = icmp eq i32 %and52, 0
  br i1 %cmp53, label %land.rhs.55, label %land.end.63

land.rhs.55:                                      ; preds = %while.cond.49
  %50 = load i8*, i8** %p, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !10
  %conv56 = sext i8 %51 to i32
  %idxprom57 = sext i32 %conv56 to i64
  %call58 = call i16** @__ctype_b_loc() #8
  %52 = load i16*, i16** %call58, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i16, i16* %52, i64 %idxprom57
  %53 = load i16, i16* %arrayidx59, align 2, !tbaa !12
  %conv60 = zext i16 %53 to i32
  %and61 = and i32 %conv60, 8192
  %tobool62 = icmp ne i32 %and61, 0
  br label %land.end.63

land.end.63:                                      ; preds = %land.rhs.55, %while.cond.49
  %54 = phi i1 [ false, %while.cond.49 ], [ %tobool62, %land.rhs.55 ]
  br i1 %54, label %while.body.64, label %while.end.65

while.body.64:                                    ; preds = %land.end.63
  br label %while.cond.49

while.end.65:                                     ; preds = %land.end.63
  %55 = load i8*, i8** %p, align 8, !tbaa !1
  %56 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_keycolnm = getelementptr inbounds %struct._map, %struct._map* %56, i32 0, i32 7
  store i8* %55, i8** %map_keycolnm, align 8, !tbaa !16
  br label %sw.epilog.109

sw.bb.66:                                         ; preds = %if.end
  br label %while.cond.67

while.cond.67:                                    ; preds = %while.body.82, %sw.bb.66
  %57 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr68 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr68, i8** %p, align 8, !tbaa !1
  %58 = load i8, i8* %incdec.ptr68, align 1, !tbaa !10
  %conv69 = sext i8 %58 to i32
  %and70 = and i32 %conv69, -128
  %cmp71 = icmp eq i32 %and70, 0
  br i1 %cmp71, label %land.rhs.73, label %land.end.81

land.rhs.73:                                      ; preds = %while.cond.67
  %59 = load i8*, i8** %p, align 8, !tbaa !1
  %60 = load i8, i8* %59, align 1, !tbaa !10
  %conv74 = sext i8 %60 to i32
  %idxprom75 = sext i32 %conv74 to i64
  %call76 = call i16** @__ctype_b_loc() #8
  %61 = load i16*, i16** %call76, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i16, i16* %61, i64 %idxprom75
  %62 = load i16, i16* %arrayidx77, align 2, !tbaa !12
  %conv78 = zext i16 %62 to i32
  %and79 = and i32 %conv78, 8192
  %tobool80 = icmp ne i32 %and79, 0
  br label %land.end.81

land.end.81:                                      ; preds = %land.rhs.73, %while.cond.67
  %63 = phi i1 [ false, %while.cond.67 ], [ %tobool80, %land.rhs.73 ]
  br i1 %63, label %while.body.82, label %while.end.83

while.body.82:                                    ; preds = %land.end.81
  br label %while.cond.67

while.end.83:                                     ; preds = %land.end.81
  %64 = load i8*, i8** %p, align 8, !tbaa !1
  %65 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm = getelementptr inbounds %struct._map, %struct._map* %65, i32 0, i32 8
  store i8* %64, i8** %map_valcolnm, align 8, !tbaa !17
  br label %sw.epilog.109

sw.bb.84:                                         ; preds = %if.end
  %66 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr85 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr85, i8** %p, align 8, !tbaa !1
  %67 = load i8, i8* %incdec.ptr85, align 1, !tbaa !10
  %conv86 = sext i8 %67 to i32
  %cmp87 = icmp ne i32 %conv86, 92
  br i1 %cmp87, label %if.then.89, label %if.else

if.then.89:                                       ; preds = %sw.bb.84
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !10
  %70 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim = getelementptr inbounds %struct._map, %struct._map* %70, i32 0, i32 11
  store i8 %69, i8* %map_coldelim, align 1, !tbaa !18
  br label %if.end.97

if.else:                                          ; preds = %sw.bb.84
  %71 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr90 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr90, i8** %p, align 8, !tbaa !1
  %72 = load i8, i8* %incdec.ptr90, align 1, !tbaa !10
  %conv91 = sext i8 %72 to i32
  switch i32 %conv91, label %sw.default [
    i32 110, label %sw.bb.92
    i32 116, label %sw.bb.94
  ]

sw.bb.92:                                         ; preds = %if.else
  %73 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim93 = getelementptr inbounds %struct._map, %struct._map* %73, i32 0, i32 11
  store i8 10, i8* %map_coldelim93, align 1, !tbaa !18
  br label %sw.epilog

sw.bb.94:                                         ; preds = %if.else
  %74 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim95 = getelementptr inbounds %struct._map, %struct._map* %74, i32 0, i32 11
  store i8 9, i8* %map_coldelim95, align 1, !tbaa !18
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %75 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim96 = getelementptr inbounds %struct._map, %struct._map* %75, i32 0, i32 11
  store i8 92, i8* %map_coldelim96, align 1, !tbaa !18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.94, %sw.bb.92
  br label %if.end.97

if.end.97:                                        ; preds = %sw.epilog, %if.then.89
  br label %sw.epilog.109

sw.bb.98:                                         ; preds = %if.end
  %76 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags99 = getelementptr inbounds %struct._map, %struct._map* %76, i32 0, i32 3
  %77 = load i64, i64* %map_mflags99, align 8, !tbaa !5
  %or100 = or i64 %77, 131072
  store i64 %or100, i64* %map_mflags99, align 8, !tbaa !5
  br label %sw.epilog.109

sw.bb.101:                                        ; preds = %if.end
  %78 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr102 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr102, i8** %p, align 8, !tbaa !1
  %79 = load i8, i8* %incdec.ptr102, align 1, !tbaa !10
  %80 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_spacesub103 = getelementptr inbounds %struct._map, %struct._map* %80, i32 0, i32 12
  store i8 %79, i8* %map_spacesub103, align 1, !tbaa !11
  br label %sw.epilog.109

sw.bb.104:                                        ; preds = %if.end
  %81 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags105 = getelementptr inbounds %struct._map, %struct._map* %81, i32 0, i32 3
  %82 = load i64, i64* %map_mflags105, align 8, !tbaa !5
  %or106 = or i64 %82, 524288
  store i64 %or106, i64* %map_mflags105, align 8, !tbaa !5
  br label %sw.epilog.109

sw.default.107:                                   ; preds = %if.end
  %83 = load i8*, i8** %p, align 8, !tbaa !1
  %84 = load i8, i8* %83, align 1, !tbaa !10
  %conv108 = sext i8 %84 to i32
  %85 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %85, i32 0, i32 2
  %86 = load i8*, i8** %map_mname, align 8, !tbaa !19
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 %conv108, i8* %86)
  br label %sw.epilog.109

sw.epilog.109:                                    ; preds = %sw.default.107, %sw.bb.104, %sw.bb.101, %sw.bb.98, %if.end.97, %while.end.83, %while.end.65, %sw.bb.46, %if.end.45, %sw.bb.32, %sw.bb.29, %sw.bb.26, %sw.bb.23, %sw.bb.20, %sw.bb.17, %sw.bb.14, %sw.bb
  br label %while.cond.110

while.cond.110:                                   ; preds = %while.body.129, %sw.epilog.109
  %87 = load i8*, i8** %p, align 8, !tbaa !1
  %88 = load i8, i8* %87, align 1, !tbaa !10
  %conv111 = sext i8 %88 to i32
  %cmp112 = icmp ne i32 %conv111, 0
  br i1 %cmp112, label %land.rhs.114, label %land.end.128

land.rhs.114:                                     ; preds = %while.cond.110
  %89 = load i8*, i8** %p, align 8, !tbaa !1
  %90 = load i8, i8* %89, align 1, !tbaa !10
  %conv115 = sext i8 %90 to i32
  %and116 = and i32 %conv115, -128
  %cmp117 = icmp eq i32 %and116, 0
  br i1 %cmp117, label %land.rhs.119, label %land.end.127

land.rhs.119:                                     ; preds = %land.rhs.114
  %91 = load i8*, i8** %p, align 8, !tbaa !1
  %92 = load i8, i8* %91, align 1, !tbaa !10
  %conv120 = sext i8 %92 to i32
  %idxprom121 = sext i32 %conv120 to i64
  %call122 = call i16** @__ctype_b_loc() #8
  %93 = load i16*, i16** %call122, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds i16, i16* %93, i64 %idxprom121
  %94 = load i16, i16* %arrayidx123, align 2, !tbaa !12
  %conv124 = zext i16 %94 to i32
  %and125 = and i32 %conv124, 8192
  %tobool126 = icmp ne i32 %and125, 0
  br label %land.end.127

land.end.127:                                     ; preds = %land.rhs.119, %land.rhs.114
  %95 = phi i1 [ false, %land.rhs.114 ], [ %tobool126, %land.rhs.119 ]
  %lnot = xor i1 %95, true
  br label %land.end.128

land.end.128:                                     ; preds = %land.end.127, %while.cond.110
  %96 = phi i1 [ false, %while.cond.110 ], [ %lnot, %land.end.127 ]
  br i1 %96, label %while.body.129, label %while.end.131

while.body.129:                                   ; preds = %land.end.128
  %97 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr130 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr130, i8** %p, align 8, !tbaa !1
  br label %while.cond.110

while.end.131:                                    ; preds = %land.end.128
  %98 = load i8*, i8** %p, align 8, !tbaa !1
  %99 = load i8, i8* %98, align 1, !tbaa !10
  %conv132 = sext i8 %99 to i32
  %cmp133 = icmp ne i32 %conv132, 0
  br i1 %cmp133, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %while.end.131
  %100 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr136 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr136, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %100, align 1, !tbaa !10
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %while.end.131
  br label %for.cond

for.end:                                          ; preds = %if.then
  %101 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app138 = getelementptr inbounds %struct._map, %struct._map* %101, i32 0, i32 13
  %102 = load i8*, i8** %map_app138, align 8, !tbaa !13
  %cmp139 = icmp ne i8* %102, null
  br i1 %cmp139, label %if.then.141, label %if.end.145

if.then.141:                                      ; preds = %for.end
  %103 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app142 = getelementptr inbounds %struct._map, %struct._map* %103, i32 0, i32 13
  %104 = load i8*, i8** %map_app142, align 8, !tbaa !13
  %call143 = call i8* @newstr(i8* %104)
  %105 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app144 = getelementptr inbounds %struct._map, %struct._map* %105, i32 0, i32 13
  store i8* %call143, i8** %map_app144, align 8, !tbaa !13
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.141, %for.end
  %106 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_tapp146 = getelementptr inbounds %struct._map, %struct._map* %106, i32 0, i32 14
  %107 = load i8*, i8** %map_tapp146, align 8, !tbaa !15
  %cmp147 = icmp ne i8* %107, null
  br i1 %cmp147, label %if.then.149, label %if.end.153

if.then.149:                                      ; preds = %if.end.145
  %108 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_tapp150 = getelementptr inbounds %struct._map, %struct._map* %108, i32 0, i32 14
  %109 = load i8*, i8** %map_tapp150, align 8, !tbaa !15
  %call151 = call i8* @newstr(i8* %109)
  %110 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_tapp152 = getelementptr inbounds %struct._map, %struct._map* %110, i32 0, i32 14
  store i8* %call151, i8** %map_tapp152, align 8, !tbaa !15
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.149, %if.end.145
  %111 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_keycolnm154 = getelementptr inbounds %struct._map, %struct._map* %111, i32 0, i32 7
  %112 = load i8*, i8** %map_keycolnm154, align 8, !tbaa !16
  %cmp155 = icmp ne i8* %112, null
  br i1 %cmp155, label %if.then.157, label %if.end.161

if.then.157:                                      ; preds = %if.end.153
  %113 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_keycolnm158 = getelementptr inbounds %struct._map, %struct._map* %113, i32 0, i32 7
  %114 = load i8*, i8** %map_keycolnm158, align 8, !tbaa !16
  %call159 = call i8* @newstr(i8* %114)
  %115 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_keycolnm160 = getelementptr inbounds %struct._map, %struct._map* %115, i32 0, i32 7
  store i8* %call159, i8** %map_keycolnm160, align 8, !tbaa !16
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.157, %if.end.153
  %116 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm162 = getelementptr inbounds %struct._map, %struct._map* %116, i32 0, i32 8
  %117 = load i8*, i8** %map_valcolnm162, align 8, !tbaa !17
  %cmp163 = icmp ne i8* %117, null
  br i1 %cmp163, label %if.then.165, label %if.end.169

if.then.165:                                      ; preds = %if.end.161
  %118 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm166 = getelementptr inbounds %struct._map, %struct._map* %118, i32 0, i32 8
  %119 = load i8*, i8** %map_valcolnm166, align 8, !tbaa !17
  %call167 = call i8* @newstr(i8* %119)
  %120 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm168 = getelementptr inbounds %struct._map, %struct._map* %120, i32 0, i32 8
  store i8* %call167, i8** %map_valcolnm168, align 8, !tbaa !17
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.165, %if.end.161
  %121 = load i8*, i8** %p, align 8, !tbaa !1
  %122 = load i8, i8* %121, align 1, !tbaa !10
  %conv170 = sext i8 %122 to i32
  %cmp171 = icmp ne i32 %conv170, 0
  br i1 %cmp171, label %if.then.173, label %if.end.206

if.then.173:                                      ; preds = %if.end.169
  %123 = load i8*, i8** %p, align 8, !tbaa !1
  %124 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file = getelementptr inbounds %struct._map, %struct._map* %124, i32 0, i32 4
  store i8* %123, i8** %map_file, align 8, !tbaa !20
  br label %while.cond.174

while.cond.174:                                   ; preds = %while.body.194, %if.then.173
  %125 = load i8*, i8** %p, align 8, !tbaa !1
  %126 = load i8, i8* %125, align 1, !tbaa !10
  %conv175 = sext i8 %126 to i32
  %cmp176 = icmp ne i32 %conv175, 0
  br i1 %cmp176, label %land.rhs.178, label %land.end.193

land.rhs.178:                                     ; preds = %while.cond.174
  %127 = load i8*, i8** %p, align 8, !tbaa !1
  %128 = load i8, i8* %127, align 1, !tbaa !10
  %conv179 = sext i8 %128 to i32
  %and180 = and i32 %conv179, -128
  %cmp181 = icmp eq i32 %and180, 0
  br i1 %cmp181, label %land.rhs.183, label %land.end.191

land.rhs.183:                                     ; preds = %land.rhs.178
  %129 = load i8*, i8** %p, align 8, !tbaa !1
  %130 = load i8, i8* %129, align 1, !tbaa !10
  %conv184 = sext i8 %130 to i32
  %idxprom185 = sext i32 %conv184 to i64
  %call186 = call i16** @__ctype_b_loc() #8
  %131 = load i16*, i16** %call186, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds i16, i16* %131, i64 %idxprom185
  %132 = load i16, i16* %arrayidx187, align 2, !tbaa !12
  %conv188 = zext i16 %132 to i32
  %and189 = and i32 %conv188, 8192
  %tobool190 = icmp ne i32 %and189, 0
  br label %land.end.191

land.end.191:                                     ; preds = %land.rhs.183, %land.rhs.178
  %133 = phi i1 [ false, %land.rhs.178 ], [ %tobool190, %land.rhs.183 ]
  %lnot192 = xor i1 %133, true
  br label %land.end.193

land.end.193:                                     ; preds = %land.end.191, %while.cond.174
  %134 = phi i1 [ false, %while.cond.174 ], [ %lnot192, %land.end.191 ]
  br i1 %134, label %while.body.194, label %while.end.196

while.body.194:                                   ; preds = %land.end.193
  %135 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr195 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr195, i8** %p, align 8, !tbaa !1
  br label %while.cond.174

while.end.196:                                    ; preds = %land.end.193
  %136 = load i8*, i8** %p, align 8, !tbaa !1
  %137 = load i8, i8* %136, align 1, !tbaa !10
  %conv197 = sext i8 %137 to i32
  %cmp198 = icmp ne i32 %conv197, 0
  br i1 %cmp198, label %if.then.200, label %if.end.202

if.then.200:                                      ; preds = %while.end.196
  %138 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr201 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr201, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %138, align 1, !tbaa !10
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.200, %while.end.196
  %139 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file203 = getelementptr inbounds %struct._map, %struct._map* %139, i32 0, i32 4
  %140 = load i8*, i8** %map_file203, align 8, !tbaa !20
  %call204 = call i8* @newstr(i8* %140)
  %141 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file205 = getelementptr inbounds %struct._map, %struct._map* %141, i32 0, i32 4
  store i8* %call204, i8** %map_file205, align 8, !tbaa !20
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.202, %if.end.169
  br label %while.cond.207

while.cond.207:                                   ; preds = %while.body.224, %if.end.206
  %142 = load i8*, i8** %p, align 8, !tbaa !1
  %143 = load i8, i8* %142, align 1, !tbaa !10
  %conv208 = sext i8 %143 to i32
  %cmp209 = icmp ne i32 %conv208, 0
  br i1 %cmp209, label %land.lhs.true, label %land.end.223

land.lhs.true:                                    ; preds = %while.cond.207
  %144 = load i8*, i8** %p, align 8, !tbaa !1
  %145 = load i8, i8* %144, align 1, !tbaa !10
  %conv211 = sext i8 %145 to i32
  %and212 = and i32 %conv211, -128
  %cmp213 = icmp eq i32 %and212, 0
  br i1 %cmp213, label %land.rhs.215, label %land.end.223

land.rhs.215:                                     ; preds = %land.lhs.true
  %146 = load i8*, i8** %p, align 8, !tbaa !1
  %147 = load i8, i8* %146, align 1, !tbaa !10
  %conv216 = sext i8 %147 to i32
  %idxprom217 = sext i32 %conv216 to i64
  %call218 = call i16** @__ctype_b_loc() #8
  %148 = load i16*, i16** %call218, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i16, i16* %148, i64 %idxprom217
  %149 = load i16, i16* %arrayidx219, align 2, !tbaa !12
  %conv220 = zext i16 %149 to i32
  %and221 = and i32 %conv220, 8192
  %tobool222 = icmp ne i32 %and221, 0
  br label %land.end.223

land.end.223:                                     ; preds = %land.rhs.215, %land.lhs.true, %while.cond.207
  %150 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.207 ], [ %tobool222, %land.rhs.215 ]
  br i1 %150, label %while.body.224, label %while.end.226

while.body.224:                                   ; preds = %land.end.223
  %151 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr225 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %incdec.ptr225, i8** %p, align 8, !tbaa !1
  br label %while.cond.207

while.end.226:                                    ; preds = %land.end.223
  %152 = load i8*, i8** %p, align 8, !tbaa !1
  %153 = load i8, i8* %152, align 1, !tbaa !10
  %conv227 = sext i8 %153 to i32
  %cmp228 = icmp ne i32 %conv227, 0
  br i1 %cmp228, label %if.then.230, label %if.end.232

if.then.230:                                      ; preds = %while.end.226
  %154 = load i8*, i8** %p, align 8, !tbaa !1
  %call231 = call i8* @newstr(i8* %154)
  %155 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_rebuild = getelementptr inbounds %struct._map, %struct._map* %155, i32 0, i32 16
  store i8* %call231, i8** %map_rebuild, align 8, !tbaa !21
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.230, %while.end.226
  %156 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file233 = getelementptr inbounds %struct._map, %struct._map* %156, i32 0, i32 4
  %157 = load i8*, i8** %map_file233, align 8, !tbaa !20
  %cmp234 = icmp eq i8* %157, null
  br i1 %cmp234, label %land.lhs.true.236, label %if.end.244

land.lhs.true.236:                                ; preds = %if.end.232
  %158 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_class = getelementptr inbounds %struct._map, %struct._map* %158, i32 0, i32 0
  %159 = load %struct._mapclass*, %struct._mapclass** %map_class, align 8, !tbaa !22
  %map_cflags = getelementptr inbounds %struct._mapclass, %struct._mapclass* %159, i32 0, i32 2
  %160 = load i16, i16* %map_cflags, align 2, !tbaa !23
  %conv237 = sext i16 %160 to i32
  %and238 = and i32 %conv237, 8
  %cmp239 = icmp ne i32 %and238, 0
  br i1 %cmp239, label %if.end.244, label %if.then.241

if.then.241:                                      ; preds = %land.lhs.true.236
  %161 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_class242 = getelementptr inbounds %struct._map, %struct._map* %161, i32 0, i32 0
  %162 = load %struct._mapclass*, %struct._mapclass** %map_class242, align 8, !tbaa !22
  %map_cname = getelementptr inbounds %struct._mapclass, %struct._mapclass* %162, i32 0, i32 0
  %163 = load i8*, i8** %map_cname, align 8, !tbaa !25
  %164 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname243 = getelementptr inbounds %struct._map, %struct._map* %164, i32 0, i32 2
  %165 = load i8*, i8** %map_mname243, align 8, !tbaa !19
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i8* %163, i8* %165)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.244:                                       ; preds = %land.lhs.true.236, %if.end.232
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.244, %if.then.241
  %166 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = load i32, i32* %retval
  ret i32 %167
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

declare i64 @convtime(i8*, i32) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @syserr(i8*, ...) #4

declare i8* @newstr(i8*) #4

; Function Attrs: nounwind uwtable
define i8* @map_rewrite(%struct._map* %map, i8* %s, i64 %slen, i8** %av) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %s.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %av.addr = alloca i8**, align 8
  %bp = alloca i8*, align 8
  %c = alloca i8, align 1
  %avp = alloca i8**, align 8
  %ap = alloca i8*, align 8
  %l = alloca i64, align 8
  %len = alloca i64, align 8
  %sp = alloca i8*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  store i64 %slen, i64* %slen.addr, align 8, !tbaa !26
  store i8** %av, i8*** %av.addr, align 8, !tbaa !1
  %0 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %1 = bitcast i8*** %avp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %ap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 39), align 1, !tbaa !10
  %conv = zext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %entry
  %6 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load i64, i64* %slen.addr, align 8, !tbaa !26
  %conv2 = trunc i64 %7 to i32
  %8 = load i8*, i8** %s.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32 %conv2, i8* %8)
  %9 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %cmp3 = icmp eq i8** %9, null
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  store i8** %10, i8*** %avp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i8**, i8*** %avp, align 8, !tbaa !1
  %12 = load i8*, i8** %11, align 8, !tbaa !1
  %cmp6 = icmp ne i8* %12, null
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8**, i8*** %avp, align 8, !tbaa !1
  %14 = load i8*, i8** %13, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %incdec.ptr, i8*** %avp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %land.lhs.true, %entry
  %16 = load i64, i64* %slen.addr, align 8, !tbaa !26
  store i64 %16, i64* %len, align 8, !tbaa !26
  store i64 %16, i64* %l, align 8, !tbaa !26
  %17 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %cmp9 = icmp ne i8** %17, null
  br i1 %cmp9, label %if.then.11, label %if.end.57

if.then.11:                                       ; preds = %if.end.8
  %18 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i8*, i8** %s.addr, align 8, !tbaa !1
  store i8* %19, i8** %sp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.55, %if.then.54, %if.then.37, %if.then.21, %if.then.11
  %20 = load i64, i64* %l, align 8, !tbaa !26
  %dec = add i64 %20, -1
  store i64 %dec, i64* %l, align 8, !tbaa !26
  %cmp12 = icmp ugt i64 %20, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %21 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr14, i8** %sp, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !10
  store i8 %22, i8* %c, align 1, !tbaa !10
  %conv15 = sext i8 %22 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %cmp16, %land.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %24 = load i8, i8* %c, align 1, !tbaa !10
  %conv18 = sext i8 %24 to i32
  %cmp19 = icmp ne i32 %conv18, 37
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %while.body
  br label %while.cond

if.end.22:                                        ; preds = %while.body
  %25 = load i64, i64* %l, align 8, !tbaa !26
  %dec23 = add i64 %25, -1
  store i64 %dec23, i64* %l, align 8, !tbaa !26
  %cmp24 = icmp ule i64 %25, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.22
  br label %while.end

if.end.27:                                        ; preds = %if.end.22
  %26 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr28, i8** %sp, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !10
  store i8 %27, i8* %c, align 1, !tbaa !10
  %28 = load i8, i8* %c, align 1, !tbaa !10
  %conv29 = sext i8 %28 to i32
  %and = and i32 %conv29, -128
  %cmp30 = icmp eq i32 %and, 0
  br i1 %cmp30, label %land.lhs.true.32, label %if.then.37

land.lhs.true.32:                                 ; preds = %if.end.27
  %29 = load i8, i8* %c, align 1, !tbaa !10
  %conv33 = sext i8 %29 to i32
  %idxprom = sext i32 %conv33 to i64
  %call = call i16** @__ctype_b_loc() #8
  %30 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %30, i64 %idxprom
  %31 = load i16, i16* %arrayidx, align 2, !tbaa !12
  %conv34 = zext i16 %31 to i32
  %and35 = and i32 %conv34, 2048
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.32, %if.end.27
  br label %while.cond

if.end.38:                                        ; preds = %land.lhs.true.32
  %32 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  store i8** %32, i8*** %avp, align 8, !tbaa !1
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.49, %if.end.38
  %33 = load i8, i8* %c, align 1, !tbaa !10
  %dec40 = add i8 %33, -1
  store i8 %dec40, i8* %c, align 1, !tbaa !10
  %conv41 = sext i8 %dec40 to i32
  %cmp42 = icmp sge i32 %conv41, 48
  br i1 %cmp42, label %land.rhs.44, label %land.end.47

land.rhs.44:                                      ; preds = %for.cond.39
  %34 = load i8**, i8*** %avp, align 8, !tbaa !1
  %35 = load i8*, i8** %34, align 8, !tbaa !1
  %cmp45 = icmp ne i8* %35, null
  br label %land.end.47

land.end.47:                                      ; preds = %land.rhs.44, %for.cond.39
  %36 = phi i1 [ false, %for.cond.39 ], [ %cmp45, %land.rhs.44 ]
  br i1 %36, label %for.body.48, label %for.end.51

for.body.48:                                      ; preds = %land.end.47
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.48
  %37 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr50 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %incdec.ptr50, i8*** %avp, align 8, !tbaa !1
  br label %for.cond.39

for.end.51:                                       ; preds = %land.end.47
  %38 = load i8**, i8*** %avp, align 8, !tbaa !1
  %39 = load i8*, i8** %38, align 8, !tbaa !1
  %cmp52 = icmp eq i8* %39, null
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %for.end.51
  br label %while.cond

if.end.55:                                        ; preds = %for.end.51
  %40 = load i8**, i8*** %avp, align 8, !tbaa !1
  %41 = load i8*, i8** %40, align 8, !tbaa !1
  %call56 = call i64 @strlen(i8* %41) #9
  %42 = load i64, i64* %len, align 8, !tbaa !26
  %add = add i64 %42, %call56
  store i64 %add, i64* %len, align 8, !tbaa !26
  br label %while.cond

while.end:                                        ; preds = %if.then.26, %land.end
  %43 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  br label %if.end.57

if.end.57:                                        ; preds = %while.end, %if.end.8
  %44 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app = getelementptr inbounds %struct._map, %struct._map* %44, i32 0, i32 13
  %45 = load i8*, i8** %map_app, align 8, !tbaa !13
  %cmp58 = icmp ne i8* %45, null
  br i1 %cmp58, label %if.then.60, label %if.end.64

if.then.60:                                       ; preds = %if.end.57
  %46 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app61 = getelementptr inbounds %struct._map, %struct._map* %46, i32 0, i32 13
  %47 = load i8*, i8** %map_app61, align 8, !tbaa !13
  %call62 = call i64 @strlen(i8* %47) #9
  %48 = load i64, i64* %len, align 8, !tbaa !26
  %add63 = add i64 %48, %call62
  store i64 %add63, i64* %len, align 8, !tbaa !26
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.60, %if.end.57
  %49 = load i64, i64* @map_rewrite.buflen, align 8, !tbaa !26
  %50 = load i64, i64* %len, align 8, !tbaa !26
  %inc = add i64 %50, 1
  store i64 %inc, i64* %len, align 8, !tbaa !26
  %cmp65 = icmp ult i64 %49, %inc
  br i1 %cmp65, label %if.then.67, label %if.end.73

if.then.67:                                       ; preds = %if.end.64
  %51 = load i64, i64* %len, align 8, !tbaa !26
  store i64 %51, i64* @map_rewrite.buflen, align 8, !tbaa !26
  %52 = load i8*, i8** @map_rewrite.buf, align 8, !tbaa !1
  %cmp68 = icmp ne i8* %52, null
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.67
  %53 = load i8*, i8** @map_rewrite.buf, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 388)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.then.67
  %54 = load i64, i64* @map_rewrite.buflen, align 8, !tbaa !26
  %call72 = call i8* @sm_malloc_tagged_x(i64 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 389, i32 0)
  store i8* %call72, i8** @map_rewrite.buf, align 8, !tbaa !1
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.71, %if.end.64
  %55 = load i8*, i8** @map_rewrite.buf, align 8, !tbaa !1
  store i8* %55, i8** %bp, align 8, !tbaa !1
  %56 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %cmp74 = icmp eq i8** %56, null
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.end.73
  %57 = load i8*, i8** %bp, align 8, !tbaa !1
  %58 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %59 = load i64, i64* %slen.addr, align 8, !tbaa !26
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %57, i8* %58, i64 %59, i32 1, i1 false)
  %60 = load i64, i64* %slen.addr, align 8, !tbaa !26
  %61 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  %62 = load i64, i64* %slen.addr, align 8, !tbaa !26
  %63 = load i64, i64* %len, align 8, !tbaa !26
  %sub = sub i64 %63, %62
  store i64 %sub, i64* %len, align 8, !tbaa !26
  br label %if.end.166

if.else.77:                                       ; preds = %if.end.73
  br label %while.cond.78

while.cond.78:                                    ; preds = %for.end.164, %if.then.149, %if.end.97, %if.else.77
  %64 = load i64, i64* %slen.addr, align 8, !tbaa !26
  %dec79 = add i64 %64, -1
  store i64 %dec79, i64* %slen.addr, align 8, !tbaa !26
  %cmp80 = icmp ugt i64 %64, 0
  br i1 %cmp80, label %land.rhs.82, label %land.end.87

land.rhs.82:                                      ; preds = %while.cond.78
  %65 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr83 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr83, i8** %s.addr, align 8, !tbaa !1
  %66 = load i8, i8* %65, align 1, !tbaa !10
  store i8 %66, i8* %c, align 1, !tbaa !10
  %conv84 = sext i8 %66 to i32
  %cmp85 = icmp ne i32 %conv84, 0
  br label %land.end.87

land.end.87:                                      ; preds = %land.rhs.82, %while.cond.78
  %67 = phi i1 [ false, %while.cond.78 ], [ %cmp85, %land.rhs.82 ]
  br i1 %67, label %while.body.88, label %while.end.165

while.body.88:                                    ; preds = %land.end.87
  %68 = load i8, i8* %c, align 1, !tbaa !10
  %conv89 = sext i8 %68 to i32
  %cmp90 = icmp ne i32 %conv89, 37
  br i1 %cmp90, label %if.then.92, label %if.end.99

if.then.92:                                       ; preds = %while.body.88
  br label %pushc

pushc:                                            ; preds = %if.end.131, %if.then.112, %if.then.92
  %69 = load i64, i64* %len, align 8, !tbaa !26
  %dec93 = add i64 %69, -1
  store i64 %dec93, i64* %len, align 8, !tbaa !26
  %cmp94 = icmp ule i64 %69, 1
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %pushc
  br label %while.end.165

if.end.97:                                        ; preds = %pushc
  %70 = load i8, i8* %c, align 1, !tbaa !10
  %71 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr98, i8** %bp, align 8, !tbaa !1
  store i8 %70, i8* %71, align 1, !tbaa !10
  br label %while.cond.78

if.end.99:                                        ; preds = %while.body.88
  %72 = load i64, i64* %slen.addr, align 8, !tbaa !26
  %dec100 = add i64 %72, -1
  store i64 %dec100, i64* %slen.addr, align 8, !tbaa !26
  %cmp101 = icmp ule i64 %72, 0
  br i1 %cmp101, label %if.then.107, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.99
  %73 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr103 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr103, i8** %s.addr, align 8, !tbaa !1
  %74 = load i8, i8* %73, align 1, !tbaa !10
  store i8 %74, i8* %c, align 1, !tbaa !10
  %conv104 = sext i8 %74 to i32
  %cmp105 = icmp eq i32 %conv104, 0
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %lor.lhs.false, %if.end.99
  store i8 37, i8* %c, align 1, !tbaa !10
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %lor.lhs.false
  %75 = load i8, i8* %c, align 1, !tbaa !10
  %conv109 = sext i8 %75 to i32
  %cmp110 = icmp eq i32 %conv109, 37
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.108
  br label %pushc

if.end.113:                                       ; preds = %if.end.108
  %76 = load i8, i8* %c, align 1, !tbaa !10
  %conv114 = sext i8 %76 to i32
  %and115 = and i32 %conv114, -128
  %cmp116 = icmp eq i32 %and115, 0
  br i1 %cmp116, label %land.lhs.true.118, label %if.then.126

land.lhs.true.118:                                ; preds = %if.end.113
  %77 = load i8, i8* %c, align 1, !tbaa !10
  %conv119 = sext i8 %77 to i32
  %idxprom120 = sext i32 %conv119 to i64
  %call121 = call i16** @__ctype_b_loc() #8
  %78 = load i16*, i16** %call121, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i16, i16* %78, i64 %idxprom120
  %79 = load i16, i16* %arrayidx122, align 2, !tbaa !12
  %conv123 = zext i16 %79 to i32
  %and124 = and i32 %conv123, 2048
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %if.end.133, label %if.then.126

if.then.126:                                      ; preds = %land.lhs.true.118, %if.end.113
  %80 = load i64, i64* %len, align 8, !tbaa !26
  %dec127 = add i64 %80, -1
  store i64 %dec127, i64* %len, align 8, !tbaa !26
  %cmp128 = icmp ule i64 %80, 1
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.then.126
  br label %while.end.165

if.end.131:                                       ; preds = %if.then.126
  %81 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr132 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr132, i8** %bp, align 8, !tbaa !1
  store i8 37, i8* %81, align 1, !tbaa !10
  br label %pushc

if.end.133:                                       ; preds = %land.lhs.true.118
  %82 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  store i8** %82, i8*** %avp, align 8, !tbaa !1
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.144, %if.end.133
  %83 = load i8, i8* %c, align 1, !tbaa !10
  %dec135 = add i8 %83, -1
  store i8 %dec135, i8* %c, align 1, !tbaa !10
  %conv136 = sext i8 %dec135 to i32
  %cmp137 = icmp sge i32 %conv136, 48
  br i1 %cmp137, label %land.rhs.139, label %land.end.142

land.rhs.139:                                     ; preds = %for.cond.134
  %84 = load i8**, i8*** %avp, align 8, !tbaa !1
  %85 = load i8*, i8** %84, align 8, !tbaa !1
  %cmp140 = icmp ne i8* %85, null
  br label %land.end.142

land.end.142:                                     ; preds = %land.rhs.139, %for.cond.134
  %86 = phi i1 [ false, %for.cond.134 ], [ %cmp140, %land.rhs.139 ]
  br i1 %86, label %for.body.143, label %for.end.146

for.body.143:                                     ; preds = %land.end.142
  br label %for.inc.144

for.inc.144:                                      ; preds = %for.body.143
  %87 = load i8**, i8*** %avp, align 8, !tbaa !1
  %incdec.ptr145 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %incdec.ptr145, i8*** %avp, align 8, !tbaa !1
  br label %for.cond.134

for.end.146:                                      ; preds = %land.end.142
  %88 = load i8**, i8*** %avp, align 8, !tbaa !1
  %89 = load i8*, i8** %88, align 8, !tbaa !1
  %cmp147 = icmp eq i8* %89, null
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %for.end.146
  br label %while.cond.78

if.end.150:                                       ; preds = %for.end.146
  %90 = load i8**, i8*** %avp, align 8, !tbaa !1
  %91 = load i8*, i8** %90, align 8, !tbaa !1
  store i8* %91, i8** %ap, align 8, !tbaa !1
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.162, %if.end.150
  %92 = load i8*, i8** %ap, align 8, !tbaa !1
  %incdec.ptr152 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr152, i8** %ap, align 8, !tbaa !1
  %93 = load i8, i8* %92, align 1, !tbaa !10
  store i8 %93, i8* %c, align 1, !tbaa !10
  %conv153 = sext i8 %93 to i32
  %cmp154 = icmp ne i32 %conv153, 0
  br i1 %cmp154, label %land.rhs.156, label %land.end.159

land.rhs.156:                                     ; preds = %for.cond.151
  %94 = load i64, i64* %len, align 8, !tbaa !26
  %cmp157 = icmp ugt i64 %94, 0
  br label %land.end.159

land.end.159:                                     ; preds = %land.rhs.156, %for.cond.151
  %95 = phi i1 [ false, %for.cond.151 ], [ %cmp157, %land.rhs.156 ]
  br i1 %95, label %for.body.160, label %for.end.164

for.body.160:                                     ; preds = %land.end.159
  %96 = load i8, i8* %c, align 1, !tbaa !10
  %97 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr161 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr161, i8** %bp, align 8, !tbaa !1
  store i8 %96, i8* %97, align 1, !tbaa !10
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.160
  %98 = load i64, i64* %len, align 8, !tbaa !26
  %dec163 = add i64 %98, -1
  store i64 %dec163, i64* %len, align 8, !tbaa !26
  br label %for.cond.151

for.end.164:                                      ; preds = %land.end.159
  br label %while.cond.78

while.end.165:                                    ; preds = %if.then.130, %if.then.96, %land.end.87
  br label %if.end.166

if.end.166:                                       ; preds = %while.end.165, %if.then.76
  %99 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app167 = getelementptr inbounds %struct._map, %struct._map* %99, i32 0, i32 13
  %100 = load i8*, i8** %map_app167, align 8, !tbaa !13
  %cmp168 = icmp ne i8* %100, null
  br i1 %cmp168, label %land.lhs.true.170, label %if.else.176

land.lhs.true.170:                                ; preds = %if.end.166
  %101 = load i64, i64* %len, align 8, !tbaa !26
  %cmp171 = icmp ugt i64 %101, 0
  br i1 %cmp171, label %if.then.173, label %if.else.176

if.then.173:                                      ; preds = %land.lhs.true.170
  %102 = load i8*, i8** %bp, align 8, !tbaa !1
  %103 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app174 = getelementptr inbounds %struct._map, %struct._map* %103, i32 0, i32 13
  %104 = load i8*, i8** %map_app174, align 8, !tbaa !13
  %105 = load i64, i64* %len, align 8, !tbaa !26
  %call175 = call i64 @sm_strlcpy(i8* %102, i8* %104, i64 %105)
  br label %if.end.177

if.else.176:                                      ; preds = %land.lhs.true.170, %if.end.166
  %106 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8 0, i8* %106, align 1, !tbaa !10
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.176, %if.then.173
  %107 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 39), align 1, !tbaa !10
  %conv178 = zext i8 %107 to i32
  %cmp179 = icmp sge i32 %conv178, 1
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.184

land.lhs.true.181:                                ; preds = %if.end.177
  %108 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool182 = icmp ne i32 %108, 0
  br i1 %tobool182, label %if.end.184, label %if.then.183

if.then.183:                                      ; preds = %land.lhs.true.181
  %109 = load i8*, i8** @map_rewrite.buf, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* %109)
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.183, %land.lhs.true.181, %if.end.177
  %110 = load i8*, i8** @map_rewrite.buf, align 8, !tbaa !1
  %111 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i64* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast i8** %ap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i8*** %avp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %115 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  ret i8* %110
}

declare void @sm_dprintf(i8*, ...) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare void @sm_free_tagged(i8*, i8*, i32) #4

declare i8* @sm_malloc_tagged_x(i64, i8*, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i64 @sm_strlcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define void @initmaps() #0 {
entry:
  call void @checkfd012(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0))
  call void @stabapply(void (%struct.symtab*, i32)* @map_init, i32 0)
  call void @checkfd012(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0))
  ret void
}

declare void @checkfd012(i8*) #4

declare void @stabapply(void (%struct.symtab*, i32)*, i32) #4

; Function Attrs: nounwind uwtable
define internal void @map_init(%struct.symtab* %s, i32 %unused) #0 {
entry:
  %s.addr = alloca %struct.symtab*, align 8
  %unused.addr = alloca i32, align 4
  %map = alloca %struct._map*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.symtab* %s, %struct.symtab** %s.addr, align 8, !tbaa !1
  store i32 %unused, i32* %unused.addr, align 4, !tbaa !27
  %0 = bitcast %struct._map** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.symtab*, %struct.symtab** %s.addr, align 8, !tbaa !1
  %s_symtype = getelementptr inbounds %struct.symtab, %struct.symtab* %1, i32 0, i32 1
  %2 = load i16, i16* %s_symtype, align 2, !tbaa !28
  %conv = sext i16 %2 to i32
  %cmp = icmp ne i32 %conv, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.symtab*, %struct.symtab** %s.addr, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %3, i32 0, i32 3
  %sv_map = bitcast %union.anon* %s_value to %struct._map*
  store %struct._map* %sv_map, %struct._map** %map, align 8, !tbaa !1
  %4 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %4, i32 0, i32 3
  %5 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %and = and i64 %5, 1
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %6 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp sge i32 %conv6, 2
  br i1 %cmp7, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.5
  %7 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end.28, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %8 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_class = getelementptr inbounds %struct._map, %struct._map* %8, i32 0, i32 0
  %9 = load %struct._mapclass*, %struct._mapclass** %map_class, align 8, !tbaa !22
  %map_cname = getelementptr inbounds %struct._mapclass, %struct._mapclass* %9, i32 0, i32 0
  %10 = load i8*, i8** %map_cname, align 8, !tbaa !25
  %cmp10 = icmp eq i8* %10, null
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  %11 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_class12 = getelementptr inbounds %struct._map, %struct._map* %11, i32 0, i32 0
  %12 = load %struct._mapclass*, %struct._mapclass** %map_class12, align 8, !tbaa !22
  %map_cname13 = getelementptr inbounds %struct._mapclass, %struct._mapclass* %12, i32 0, i32 0
  %13 = load i8*, i8** %map_cname13, align 8, !tbaa !25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %cond.true ], [ %13, %cond.false ]
  %14 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %14, i32 0, i32 2
  %15 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %cmp14 = icmp eq i8* %15, null
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end
  br label %cond.end.19

cond.false.17:                                    ; preds = %cond.end
  %16 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mname18 = getelementptr inbounds %struct._map, %struct._map* %16, i32 0, i32 2
  %17 = load i8*, i8** %map_mname18, align 8, !tbaa !19
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.16
  %cond20 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %cond.true.16 ], [ %17, %cond.false.17 ]
  %18 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_file = getelementptr inbounds %struct._map, %struct._map* %18, i32 0, i32 4
  %19 = load i8*, i8** %map_file, align 8, !tbaa !20
  %cmp21 = icmp eq i8* %19, null
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.end.19
  br label %cond.end.26

cond.false.24:                                    ; preds = %cond.end.19
  %20 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_file25 = getelementptr inbounds %struct._map, %struct._map* %20, i32 0, i32 4
  %21 = load i8*, i8** %map_file25, align 8, !tbaa !20
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.24, %cond.true.23
  %cond27 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %cond.true.23 ], [ %21, %cond.false.24 ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.117, i32 0, i32 0), i8* %cond, i8* %cond20, i8* %cond27)
  br label %if.end.28

if.end.28:                                        ; preds = %cond.end.26, %land.lhs.true, %if.end.5
  %22 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags29 = getelementptr inbounds %struct._map, %struct._map* %22, i32 0, i32 3
  %23 = load i64, i64* %map_mflags29, align 8, !tbaa !5
  %and30 = and i64 %23, 128
  %cmp31 = icmp ne i64 %and30, 0
  br i1 %cmp31, label %lor.lhs.false, label %if.then.38

lor.lhs.false:                                    ; preds = %if.end.28
  %24 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_class33 = getelementptr inbounds %struct._map, %struct._map* %24, i32 0, i32 0
  %25 = load %struct._mapclass*, %struct._mapclass** %map_class33, align 8, !tbaa !22
  %map_cflags = getelementptr inbounds %struct._mapclass, %struct._mapclass* %25, i32 0, i32 2
  %26 = load i16, i16* %map_cflags, align 2, !tbaa !23
  %conv34 = sext i16 %26 to i32
  %and35 = and i32 %conv34, 4
  %cmp36 = icmp ne i32 %and35, 0
  br i1 %cmp36, label %if.end.46, label %if.then.38

if.then.38:                                       ; preds = %lor.lhs.false, %if.end.28
  %27 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv39 = zext i8 %27 to i32
  %cmp40 = icmp sge i32 %conv39, 3
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.45

land.lhs.true.42:                                 ; preds = %if.then.38
  %28 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %land.lhs.true.42
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.118, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %land.lhs.true.42, %if.then.38
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %lor.lhs.false
  %29 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags47 = getelementptr inbounds %struct._map, %struct._map* %29, i32 0, i32 3
  %30 = load i64, i64* %map_mflags47, align 8, !tbaa !5
  %and48 = and i64 %30, 32
  %cmp49 = icmp ne i64 %and48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %if.end.46
  %31 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags52 = getelementptr inbounds %struct._map, %struct._map* %31, i32 0, i32 3
  %32 = load i64, i64* %map_mflags52, align 8, !tbaa !5
  %or = or i64 %32, 16777216
  store i64 %or, i64* %map_mflags52, align 8, !tbaa !5
  %33 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_class53 = getelementptr inbounds %struct._map, %struct._map* %33, i32 0, i32 0
  %34 = load %struct._mapclass*, %struct._mapclass** %map_class53, align 8, !tbaa !22
  %map_close = getelementptr inbounds %struct._mapclass, %struct._mapclass* %34, i32 0, i32 7
  %35 = load void (%struct._map*)*, void (%struct._map*)** %map_close, align 8, !tbaa !30
  %36 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  call void %35(%struct._map* %36)
  %37 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags54 = getelementptr inbounds %struct._map, %struct._map* %37, i32 0, i32 3
  %38 = load i64, i64* %map_mflags54, align 8, !tbaa !5
  %and55 = and i64 %38, -16777313
  store i64 %and55, i64* %map_mflags54, align 8, !tbaa !5
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %if.end.46
  %39 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %call = call i32 @rebuildaliases(%struct._map* %39, i32 0)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %if.end.45, %if.then.4, %if.then
  %40 = bitcast %struct._map** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @openmap(%struct._map* %map) #0 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct._map*, align 8
  %restore = alloca i32, align 4
  %savehold = alloca i32, align 4
  %savequick = alloca i32, align 4
  %saveerrors = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  %0 = bitcast i32* %restore to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %restore, align 4, !tbaa !27
  %1 = bitcast i32* %savehold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* @HoldErrs, align 4, !tbaa !27
  store i32 %2, i32* %savehold, align 4, !tbaa !27
  %3 = bitcast i32* %savequick to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* @QuickAbort, align 4, !tbaa !27
  store i32 %4, i32* %savequick, align 4, !tbaa !27
  %5 = bitcast i32* %saveerrors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* @Errors, align 4, !tbaa !27
  store i32 %6, i32* %saveerrors, align 4, !tbaa !27
  %7 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %7, i32 0, i32 3
  %8 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %and = and i64 %8, 1
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags1 = getelementptr inbounds %struct._map, %struct._map* %9, i32 0, i32 3
  %10 = load i64, i64* %map_mflags1, align 8, !tbaa !5
  %and2 = and i64 %10, 32
  %cmp3 = icmp ne i64 %and2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %11 = load i32, i32* @OnlyOneError, align 4, !tbaa !27
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %12 = load i32, i32* @QuickAbort, align 4, !tbaa !27
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.5
  %13 = load i8, i8* @OpMode, align 1, !tbaa !10
  %conv = sext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv, 115
  br i1 %cmp7, label %if.then.13, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true
  %14 = load i8, i8* @OpMode, align 1, !tbaa !10
  %conv10 = sext i8 %14 to i32
  %cmp11 = icmp eq i32 %conv10, 100
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false.9, %land.lhs.true
  store i32 1, i32* %restore, align 4, !tbaa !27
  store i32 1, i32* @HoldErrs, align 4, !tbaa !27
  store i32 0, i32* @QuickAbort, align 4, !tbaa !27
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %lor.lhs.false.9, %lor.lhs.false
  %call = call i32* @__errno_location() #8
  store i32 0, i32* %call, align 4, !tbaa !27
  %15 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_class = getelementptr inbounds %struct._map, %struct._map* %15, i32 0, i32 0
  %16 = load %struct._mapclass*, %struct._mapclass** %map_class, align 8, !tbaa !22
  %map_open = getelementptr inbounds %struct._mapclass, %struct._mapclass* %16, i32 0, i32 6
  %17 = load i32 (%struct._map*, i32)*, i32 (%struct._map*, i32)** %map_open, align 8, !tbaa !31
  %18 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %call15 = call i32 %17(%struct._map* %18, i32 0)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.14
  %19 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv18 = zext i8 %19 to i32
  %cmp19 = icmp sge i32 %conv18, 4
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.43

land.lhs.true.21:                                 ; preds = %if.then.17
  %20 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool22 = icmp ne i32 %20, 0
  br i1 %tobool22, label %if.end.43, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.21
  %21 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_class24 = getelementptr inbounds %struct._map, %struct._map* %21, i32 0, i32 0
  %22 = load %struct._mapclass*, %struct._mapclass** %map_class24, align 8, !tbaa !22
  %map_cname = getelementptr inbounds %struct._mapclass, %struct._mapclass* %22, i32 0, i32 0
  %23 = load i8*, i8** %map_cname, align 8, !tbaa !25
  %cmp25 = icmp eq i8* %23, null
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.23
  br label %cond.end

cond.false:                                       ; preds = %if.then.23
  %24 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_class27 = getelementptr inbounds %struct._map, %struct._map* %24, i32 0, i32 0
  %25 = load %struct._mapclass*, %struct._mapclass** %map_class27, align 8, !tbaa !22
  %map_cname28 = getelementptr inbounds %struct._mapclass, %struct._mapclass* %25, i32 0, i32 0
  %26 = load i8*, i8** %map_cname28, align 8, !tbaa !25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %cond.true ], [ %26, %cond.false ]
  %27 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %27, i32 0, i32 2
  %28 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %cmp29 = icmp eq i8* %28, null
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.end
  br label %cond.end.34

cond.false.32:                                    ; preds = %cond.end
  %29 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname33 = getelementptr inbounds %struct._map, %struct._map* %29, i32 0, i32 2
  %30 = load i8*, i8** %map_mname33, align 8, !tbaa !19
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.32, %cond.true.31
  %cond35 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %cond.true.31 ], [ %30, %cond.false.32 ]
  %31 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file = getelementptr inbounds %struct._map, %struct._map* %31, i32 0, i32 4
  %32 = load i8*, i8** %map_file, align 8, !tbaa !20
  %cmp36 = icmp eq i8* %32, null
  br i1 %cmp36, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %cond.end.34
  br label %cond.end.41

cond.false.39:                                    ; preds = %cond.end.34
  %33 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file40 = getelementptr inbounds %struct._map, %struct._map* %33, i32 0, i32 4
  %34 = load i8*, i8** %map_file40, align 8, !tbaa !20
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.38
  %cond42 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %cond.true.38 ], [ %34, %cond.false.39 ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i8* %cond, i8* %cond35, i8* %cond42)
  br label %if.end.43

if.end.43:                                        ; preds = %cond.end.41, %land.lhs.true.21, %if.then.17
  %35 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags44 = getelementptr inbounds %struct._map, %struct._map* %35, i32 0, i32 3
  %36 = load i64, i64* %map_mflags44, align 8, !tbaa !5
  %or = or i64 %36, 32
  store i64 %or, i64* %map_mflags44, align 8, !tbaa !5
  %37 = load i32, i32* @CurrentPid, align 4, !tbaa !27
  %38 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_pid = getelementptr inbounds %struct._map, %struct._map* %38, i32 0, i32 20
  store i32 %37, i32* %map_pid, align 4, !tbaa !32
  br label %if.end.105

if.else:                                          ; preds = %if.end.14
  %39 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv45 = zext i8 %39 to i32
  %cmp46 = icmp sge i32 %conv45, 4
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.90

land.lhs.true.48:                                 ; preds = %if.else
  %40 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool49 = icmp ne i32 %40, 0
  br i1 %tobool49, label %if.end.90, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.48
  %41 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_class51 = getelementptr inbounds %struct._map, %struct._map* %41, i32 0, i32 0
  %42 = load %struct._mapclass*, %struct._mapclass** %map_class51, align 8, !tbaa !22
  %map_cname52 = getelementptr inbounds %struct._mapclass, %struct._mapclass* %42, i32 0, i32 0
  %43 = load i8*, i8** %map_cname52, align 8, !tbaa !25
  %cmp53 = icmp eq i8* %43, null
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %if.then.50
  br label %cond.end.59

cond.false.56:                                    ; preds = %if.then.50
  %44 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_class57 = getelementptr inbounds %struct._map, %struct._map* %44, i32 0, i32 0
  %45 = load %struct._mapclass*, %struct._mapclass** %map_class57, align 8, !tbaa !22
  %map_cname58 = getelementptr inbounds %struct._mapclass, %struct._mapclass* %45, i32 0, i32 0
  %46 = load i8*, i8** %map_cname58, align 8, !tbaa !25
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.56, %cond.true.55
  %cond60 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %cond.true.55 ], [ %46, %cond.false.56 ]
  %47 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname61 = getelementptr inbounds %struct._map, %struct._map* %47, i32 0, i32 2
  %48 = load i8*, i8** %map_mname61, align 8, !tbaa !19
  %cmp62 = icmp eq i8* %48, null
  br i1 %cmp62, label %cond.true.64, label %cond.false.65

cond.true.64:                                     ; preds = %cond.end.59
  br label %cond.end.67

cond.false.65:                                    ; preds = %cond.end.59
  %49 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname66 = getelementptr inbounds %struct._map, %struct._map* %49, i32 0, i32 2
  %50 = load i8*, i8** %map_mname66, align 8, !tbaa !19
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.65, %cond.true.64
  %cond68 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %cond.true.64 ], [ %50, %cond.false.65 ]
  %51 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file69 = getelementptr inbounds %struct._map, %struct._map* %51, i32 0, i32 4
  %52 = load i8*, i8** %map_file69, align 8, !tbaa !20
  %cmp70 = icmp eq i8* %52, null
  br i1 %cmp70, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %cond.end.67
  br label %cond.end.75

cond.false.73:                                    ; preds = %cond.end.67
  %53 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file74 = getelementptr inbounds %struct._map, %struct._map* %53, i32 0, i32 4
  %54 = load i8*, i8** %map_file74, align 8, !tbaa !20
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.false.73, %cond.true.72
  %cond76 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %cond.true.72 ], [ %54, %cond.false.73 ]
  %call77 = call i32* @__errno_location() #8
  %55 = load i32, i32* %call77, align 4, !tbaa !27
  %cmp78 = icmp eq i32 %55, 0
  %cond80 = select i1 %cmp78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0)
  %call81 = call i32* @__errno_location() #8
  %56 = load i32, i32* %call81, align 4, !tbaa !27
  %cmp82 = icmp eq i32 %56, 0
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %cond.end.75
  br label %cond.end.88

cond.false.85:                                    ; preds = %cond.end.75
  %call86 = call i32* @__errno_location() #8
  %57 = load i32, i32* %call86, align 4, !tbaa !27
  %call87 = call i8* @sm_errstring(i32 %57)
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.85, %cond.true.84
  %cond89 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), %cond.true.84 ], [ %call87, %cond.false.85 ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0), i8* %cond60, i8* %cond68, i8* %cond76, i8* %cond80, i8* %cond89)
  br label %if.end.90

if.end.90:                                        ; preds = %cond.end.88, %land.lhs.true.48, %if.else
  %58 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags91 = getelementptr inbounds %struct._map, %struct._map* %58, i32 0, i32 3
  %59 = load i64, i64* %map_mflags91, align 8, !tbaa !5
  %and92 = and i64 %59, 4
  %cmp93 = icmp ne i64 %and92, 0
  br i1 %cmp93, label %if.else.101, label %if.then.95

if.then.95:                                       ; preds = %if.end.90
  %60 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_class96 = getelementptr inbounds %struct._map, %struct._map* %60, i32 0, i32 0
  %61 = load %struct._mapclass*, %struct._mapclass** %map_class96, align 8, !tbaa !22
  %62 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_orgclass = getelementptr inbounds %struct._map, %struct._map* %62, i32 0, i32 1
  store %struct._mapclass* %61, %struct._mapclass** %map_orgclass, align 8, !tbaa !33
  %63 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_class97 = getelementptr inbounds %struct._map, %struct._map* %63, i32 0, i32 0
  store %struct._mapclass* bitcast ({ i8*, i8*, i16, i32 (%struct._map*, i8*)*, i8* (%struct._map*, i8*, i8**, i32*)*, void (%struct._map*, i8*, i8*)*, i32 (%struct._map*, i32)*, void (%struct._map*)* }* @BogusMapClass to %struct._mapclass*), %struct._mapclass** %map_class97, align 8, !tbaa !22
  %64 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags98 = getelementptr inbounds %struct._map, %struct._map* %64, i32 0, i32 3
  %65 = load i64, i64* %map_mflags98, align 8, !tbaa !5
  %or99 = or i64 %65, 8388640
  store i64 %or99, i64* %map_mflags98, align 8, !tbaa !5
  %66 = load i32, i32* @CurrentPid, align 4, !tbaa !27
  %67 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_pid100 = getelementptr inbounds %struct._map, %struct._map* %67, i32 0, i32 20
  store i32 %66, i32* %map_pid100, align 4, !tbaa !32
  br label %if.end.104

if.else.101:                                      ; preds = %if.end.90
  %68 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags102 = getelementptr inbounds %struct._map, %struct._map* %68, i32 0, i32 3
  %69 = load i64, i64* %map_mflags102, align 8, !tbaa !5
  %and103 = and i64 %69, -2
  store i64 %and103, i64* %map_mflags102, align 8, !tbaa !5
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.95
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.43
  %70 = load i32, i32* %restore, align 4, !tbaa !27
  %tobool106 = icmp ne i32 %70, 0
  br i1 %tobool106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.105
  %71 = load i32, i32* %saveerrors, align 4, !tbaa !27
  store i32 %71, i32* @Errors, align 4, !tbaa !27
  %72 = load i32, i32* %savehold, align 4, !tbaa !27
  store i32 %72, i32* @HoldErrs, align 4, !tbaa !27
  %73 = load i32, i32* %savequick, align 4, !tbaa !27
  store i32 %73, i32* @QuickAbort, align 4, !tbaa !27
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.end.105
  %74 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags109 = getelementptr inbounds %struct._map, %struct._map* %74, i32 0, i32 3
  %75 = load i64, i64* %map_mflags109, align 8, !tbaa !5
  %and110 = and i64 %75, 32
  %cmp111 = icmp ne i64 %and110, 0
  %conv112 = zext i1 %cmp111 to i32
  store i32 %conv112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.108, %if.then.4, %if.then
  %76 = bitcast i32* %saveerrors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %savequick to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %savehold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %restore to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i8* @sm_errstring(i32) #4

; Function Attrs: nounwind uwtable
define void @closemaps(i32 %bogus) #0 {
entry:
  %bogus.addr = alloca i32, align 4
  store i32 %bogus, i32* %bogus.addr, align 4, !tbaa !27
  %0 = load i32, i32* %bogus.addr, align 4, !tbaa !27
  call void @stabapply(void (%struct.symtab*, i32)* @map_close, i32 %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @map_close(%struct.symtab* %s, i32 %bogus) #0 {
entry:
  %s.addr = alloca %struct.symtab*, align 8
  %bogus.addr = alloca i32, align 4
  %map = alloca %struct._map*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.symtab* %s, %struct.symtab** %s.addr, align 8, !tbaa !1
  store i32 %bogus, i32* %bogus.addr, align 4, !tbaa !27
  %0 = bitcast %struct._map** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.symtab*, %struct.symtab** %s.addr, align 8, !tbaa !1
  %s_symtype = getelementptr inbounds %struct.symtab, %struct.symtab* %1, i32 0, i32 1
  %2 = load i16, i16* %s_symtype, align 2, !tbaa !28
  %conv = sext i16 %2 to i32
  %cmp = icmp ne i32 %conv, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.symtab*, %struct.symtab** %s.addr, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %3, i32 0, i32 3
  %sv_map = bitcast %union.anon* %s_value to %struct._map*
  store %struct._map* %sv_map, %struct._map** %map, align 8, !tbaa !1
  %4 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %4, i32 0, i32 3
  %5 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %and = and i64 %5, 1
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %lor.lhs.false, label %if.then.25

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags4 = getelementptr inbounds %struct._map, %struct._map* %6, i32 0, i32 3
  %7 = load i64, i64* %map_mflags4, align 8, !tbaa !5
  %and5 = and i64 %7, 32
  %cmp6 = icmp ne i64 %and5, 0
  br i1 %cmp6, label %lor.lhs.false.8, label %if.then.25

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %8 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags9 = getelementptr inbounds %struct._map, %struct._map* %8, i32 0, i32 3
  %9 = load i64, i64* %map_mflags9, align 8, !tbaa !5
  %and10 = and i64 %9, 16777216
  %cmp11 = icmp ne i64 %and10, 0
  br i1 %cmp11, label %if.then.25, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.8
  %10 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_pid = getelementptr inbounds %struct._map, %struct._map* %10, i32 0, i32 20
  %11 = load i32, i32* %map_pid, align 4, !tbaa !32
  %12 = load i32, i32* @CurrentPid, align 4, !tbaa !27
  %cmp14 = icmp ne i32 %11, %12
  br i1 %cmp14, label %if.then.25, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.13
  %13 = load i32, i32* %bogus.addr, align 4, !tbaa !27
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %lor.lhs.false.16
  %14 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_class = getelementptr inbounds %struct._map, %struct._map* %14, i32 0, i32 0
  %15 = load %struct._mapclass*, %struct._mapclass** %map_class, align 8, !tbaa !22
  %cmp17 = icmp ne %struct._mapclass* %15, bitcast ({ i8*, i8*, i16, i32 (%struct._map*, i8*)*, i8* (%struct._map*, i8*, i8**, i32*)*, void (%struct._map*, i8*, i8*)*, i32 (%struct._map*, i32)*, void (%struct._map*)* }* @BogusMapClass to %struct._mapclass*)
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.26

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %16 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_class20 = getelementptr inbounds %struct._map, %struct._map* %16, i32 0, i32 0
  %17 = load %struct._mapclass*, %struct._mapclass** %map_class20, align 8, !tbaa !22
  %map_cflags = getelementptr inbounds %struct._mapclass, %struct._mapclass* %17, i32 0, i32 2
  %18 = load i16, i16* %map_cflags, align 2, !tbaa !23
  %conv21 = sext i16 %18 to i32
  %and22 = and i32 %conv21, 16
  %cmp23 = icmp ne i32 %and22, 0
  br i1 %cmp23, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.19, %lor.lhs.false.13, %lor.lhs.false.8, %lor.lhs.false, %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %land.lhs.true.19, %land.lhs.true, %lor.lhs.false.16
  %19 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_class27 = getelementptr inbounds %struct._map, %struct._map* %19, i32 0, i32 0
  %20 = load %struct._mapclass*, %struct._mapclass** %map_class27, align 8, !tbaa !22
  %cmp28 = icmp eq %struct._mapclass* %20, bitcast ({ i8*, i8*, i16, i32 (%struct._map*, i8*)*, i8* (%struct._map*, i8*, i8**, i32*)*, void (%struct._map*, i8*, i8*)*, i32 (%struct._map*, i32)*, void (%struct._map*)* }* @BogusMapClass to %struct._mapclass*)
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.40

land.lhs.true.30:                                 ; preds = %if.end.26
  %21 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_orgclass = getelementptr inbounds %struct._map, %struct._map* %21, i32 0, i32 1
  %22 = load %struct._mapclass*, %struct._mapclass** %map_orgclass, align 8, !tbaa !33
  %cmp31 = icmp ne %struct._mapclass* %22, null
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.40

land.lhs.true.33:                                 ; preds = %land.lhs.true.30
  %23 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_orgclass34 = getelementptr inbounds %struct._map, %struct._map* %23, i32 0, i32 1
  %24 = load %struct._mapclass*, %struct._mapclass** %map_orgclass34, align 8, !tbaa !33
  %cmp35 = icmp ne %struct._mapclass* %24, bitcast ({ i8*, i8*, i16, i32 (%struct._map*, i8*)*, i8* (%struct._map*, i8*, i8**, i32*)*, void (%struct._map*, i8*, i8*)*, i32 (%struct._map*, i32)*, void (%struct._map*)* }* @BogusMapClass to %struct._mapclass*)
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %land.lhs.true.33
  %25 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_orgclass38 = getelementptr inbounds %struct._map, %struct._map* %25, i32 0, i32 1
  %26 = load %struct._mapclass*, %struct._mapclass** %map_orgclass38, align 8, !tbaa !33
  %27 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_class39 = getelementptr inbounds %struct._map, %struct._map* %27, i32 0, i32 0
  store %struct._mapclass* %26, %struct._mapclass** %map_class39, align 8, !tbaa !22
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %land.lhs.true.33, %land.lhs.true.30, %if.end.26
  %28 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv41 = zext i8 %28 to i32
  %cmp42 = icmp sge i32 %conv41, 5
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.57

land.lhs.true.44:                                 ; preds = %if.end.40
  %29 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool45 = icmp ne i32 %29, 0
  br i1 %tobool45, label %if.end.57, label %if.then.46

if.then.46:                                       ; preds = %land.lhs.true.44
  %30 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %30, i32 0, i32 2
  %31 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %cmp47 = icmp eq i8* %31, null
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.46
  br label %cond.end

cond.false:                                       ; preds = %if.then.46
  %32 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mname49 = getelementptr inbounds %struct._map, %struct._map* %32, i32 0, i32 2
  %33 = load i8*, i8** %map_mname49, align 8, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %cond.true ], [ %33, %cond.false ]
  %34 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_file = getelementptr inbounds %struct._map, %struct._map* %34, i32 0, i32 4
  %35 = load i8*, i8** %map_file, align 8, !tbaa !20
  %cmp50 = icmp eq i8* %35, null
  br i1 %cmp50, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %cond.end
  br label %cond.end.55

cond.false.53:                                    ; preds = %cond.end
  %36 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_file54 = getelementptr inbounds %struct._map, %struct._map* %36, i32 0, i32 4
  %37 = load i8*, i8** %map_file54, align 8, !tbaa !20
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.53, %cond.true.52
  %cond56 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %cond.true.52 ], [ %37, %cond.false.53 ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.119, i32 0, i32 0), i8* %cond, i8* %cond56)
  br label %if.end.57

if.end.57:                                        ; preds = %cond.end.55, %land.lhs.true.44, %if.end.40
  %38 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags58 = getelementptr inbounds %struct._map, %struct._map* %38, i32 0, i32 3
  %39 = load i64, i64* %map_mflags58, align 8, !tbaa !5
  %and59 = and i64 %39, 8388608
  %cmp60 = icmp ne i64 %and59, 0
  br i1 %cmp60, label %if.end.65, label %if.then.62

if.then.62:                                       ; preds = %if.end.57
  %40 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags63 = getelementptr inbounds %struct._map, %struct._map* %40, i32 0, i32 3
  %41 = load i64, i64* %map_mflags63, align 8, !tbaa !5
  %or = or i64 %41, 16777216
  store i64 %or, i64* %map_mflags63, align 8, !tbaa !5
  %42 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_class64 = getelementptr inbounds %struct._map, %struct._map* %42, i32 0, i32 0
  %43 = load %struct._mapclass*, %struct._mapclass** %map_class64, align 8, !tbaa !22
  %map_close = getelementptr inbounds %struct._mapclass, %struct._mapclass* %43, i32 0, i32 7
  %44 = load void (%struct._map*)*, void (%struct._map*)** %map_close, align 8, !tbaa !30
  %45 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  call void %44(%struct._map* %45)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.57
  %46 = load %struct._map*, %struct._map** %map, align 8, !tbaa !1
  %map_mflags66 = getelementptr inbounds %struct._map, %struct._map* %46, i32 0, i32 3
  %47 = load i64, i64* %map_mflags66, align 8, !tbaa !5
  %and67 = and i64 %47, -25165921
  store i64 %and67, i64* %map_mflags66, align 8, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.65, %if.then.25, %if.then
  %48 = bitcast %struct._map** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
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
define i32 @getcanonname(i8* %host, i32 %hbsize, i32 %trymx, i32* %pttl) #0 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca i8*, align 8
  %hbsize.addr = alloca i32, align 4
  %trymx.addr = alloca i32, align 4
  %pttl.addr = alloca i32*, align 8
  %nmaps = alloca i32, align 4
  %mapno = alloca i32, align 4
  %found = alloca i32, align 4
  %got_tempfail = alloca i32, align 4
  %status = alloca i32, align 4
  %maptype = alloca [12 x i8*], align 16
  %mapreturn = alloca [5 x i16], align 2
  %i = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s2 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  %__s1_len59 = alloca i64, align 8
  %__s2_len61 = alloca i64, align 8
  %tmp62 = alloca i32, align 4
  %__s268 = alloca i8*, align 8
  %__result72 = alloca i32, align 4
  %tmp110 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %d = alloca i8*, align 8
  store i8* %host, i8** %host.addr, align 8, !tbaa !1
  store i32 %hbsize, i32* %hbsize.addr, align 4, !tbaa !27
  store i32 %trymx, i32* %trymx.addr, align 4, !tbaa !27
  store i32* %pttl, i32** %pttl.addr, align 8, !tbaa !1
  %0 = bitcast i32* %nmaps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %mapno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %found, align 4, !tbaa !27
  %3 = bitcast i32* %got_tempfail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %got_tempfail, align 4, !tbaa !27
  %4 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 69, i32* %status, align 4, !tbaa !27
  %5 = bitcast [12 x i8*]* %maptype to i8*
  call void @llvm.lifetime.start(i64 96, i8* %5) #1
  %6 = bitcast [5 x i16]* %mapreturn to i8*
  call void @llvm.lifetime.start(i64 10, i8* %6) #1
  %arraydecay = getelementptr inbounds [12 x i8*], [12 x i8*]* %maptype, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [5 x i16], [5 x i16]* %mapreturn, i32 0, i32 0
  %call = call i32 @switch_map_find(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8** %arraydecay, i16* %arraydecay1)
  store i32 %call, i32* %nmaps, align 4, !tbaa !27
  %7 = load i32*, i32** %pttl.addr, align 8, !tbaa !1
  %cmp = icmp ne i32* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32*, i32** %pttl.addr, align 8, !tbaa !1
  store i32 3600, i32* %8, align 4, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %mapno, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %mapno, align 4, !tbaa !27
  %10 = load i32, i32* %nmaps, align 4, !tbaa !27
  %cmp2 = icmp slt i32 %9, %10
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %12 to i32
  %cmp3 = icmp sge i32 %conv, 20
  br i1 %cmp3, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %for.body
  %13 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  %14 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %15 = load i32, i32* %mapno, align 4, !tbaa !27
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [12 x i8*], [12 x i8*]* %maptype, i32 0, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i32 0, i32 0), i8* %14, i8* %16)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %land.lhs.true, %for.body
  %17 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.17 to i64)), i64 1), label %land.lhs.true.7, label %cond.false

land.lhs.true.7:                                  ; preds = %if.end.6
  store i64 5, i64* %__s1_len, align 8, !tbaa !26
  %19 = load i64, i64* %__s1_len, align 8, !tbaa !26
  %cmp8 = icmp ult i64 %19, 4
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.7
  %20 = bitcast i8** %__s2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i32, i32* %mapno, align 4, !tbaa !27
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds [12 x i8*], [12 x i8*]* %maptype, i32 0, i64 %idxprom11
  %22 = load i8*, i8** %arrayidx12, align 8, !tbaa !1
  store i8* %22, i8** %__s2, align 8, !tbaa !1
  %23 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), align 1, !tbaa !10
  %conv14 = zext i8 %24 to i32
  %25 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx15, align 1, !tbaa !10
  %conv16 = zext i8 %26 to i32
  %sub = sub nsw i32 %conv14, %conv16
  store i32 %sub, i32* %__result, align 4, !tbaa !27
  %27 = load i64, i64* %__s1_len, align 8, !tbaa !26
  %cmp17 = icmp ugt i64 %27, 0
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.49

land.lhs.true.19:                                 ; preds = %cond.true
  %28 = load i32, i32* %__result, align 4, !tbaa !27
  %cmp20 = icmp eq i32 %28, 0
  br i1 %cmp20, label %if.then.22, label %if.end.49

if.then.22:                                       ; preds = %land.lhs.true.19
  %29 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i64 1), align 1, !tbaa !10
  %conv23 = zext i8 %29 to i32
  %30 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx24, align 1, !tbaa !10
  %conv25 = zext i8 %31 to i32
  %sub26 = sub nsw i32 %conv23, %conv25
  store i32 %sub26, i32* %__result, align 4, !tbaa !27
  %32 = load i64, i64* %__s1_len, align 8, !tbaa !26
  %cmp27 = icmp ugt i64 %32, 1
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.48

land.lhs.true.29:                                 ; preds = %if.then.22
  %33 = load i32, i32* %__result, align 4, !tbaa !27
  %cmp30 = icmp eq i32 %33, 0
  br i1 %cmp30, label %if.then.32, label %if.end.48

if.then.32:                                       ; preds = %land.lhs.true.29
  %34 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i64 2), align 1, !tbaa !10
  %conv33 = zext i8 %34 to i32
  %35 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %35, i64 2
  %36 = load i8, i8* %arrayidx34, align 1, !tbaa !10
  %conv35 = zext i8 %36 to i32
  %sub36 = sub nsw i32 %conv33, %conv35
  store i32 %sub36, i32* %__result, align 4, !tbaa !27
  %37 = load i64, i64* %__s1_len, align 8, !tbaa !26
  %cmp37 = icmp ugt i64 %37, 2
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.47

land.lhs.true.39:                                 ; preds = %if.then.32
  %38 = load i32, i32* %__result, align 4, !tbaa !27
  %cmp40 = icmp eq i32 %38, 0
  br i1 %cmp40, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %land.lhs.true.39
  %39 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i64 3), align 1, !tbaa !10
  %conv43 = zext i8 %39 to i32
  %40 = load i8*, i8** %__s2, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %40, i64 3
  %41 = load i8, i8* %arrayidx44, align 1, !tbaa !10
  %conv45 = zext i8 %41 to i32
  %sub46 = sub nsw i32 %conv43, %conv45
  store i32 %sub46, i32* %__result, align 4, !tbaa !27
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.42, %land.lhs.true.39, %if.then.32
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %land.lhs.true.29, %if.then.22
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true.19, %cond.true
  %42 = load i32, i32* %__result, align 4, !tbaa !27
  store i32 %42, i32* %tmp50, !tbaa !27
  %43 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i8** %__s2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %tmp50, !tbaa !27
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.7, %if.end.6
  %46 = load i32, i32* %mapno, align 4, !tbaa !27
  %idxprom51 = sext i32 %46 to i64
  %arrayidx52 = getelementptr inbounds [12 x i8*], [12 x i8*]* %maptype, i32 0, i64 %idxprom51
  %47 = load i8*, i8** %arrayidx52, align 8, !tbaa !1
  %call53 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* %47) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.49
  %cond = phi i32 [ %45, %if.end.49 ], [ %call53, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !27
  %48 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %tmp, !tbaa !27
  %cmp54 = icmp eq i32 %50, 0
  br i1 %cmp54, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %cond.end
  %51 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %52 = load i32, i32* %hbsize.addr, align 4, !tbaa !27
  %call57 = call i32 @text_getcanonname(i8* %51, i32 %52, i32* %status)
  store i32 %call57, i32* %found, align 4, !tbaa !27
  br label %if.end.123

if.else:                                          ; preds = %cond.end
  %53 = bitcast i64* %__s1_len59 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = bitcast i64* %__s2_len61 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.18 to i64)), i64 1), label %land.lhs.true.63, label %cond.false.111

land.lhs.true.63:                                 ; preds = %if.else
  store i64 3, i64* %__s1_len59, align 8, !tbaa !26
  %55 = load i64, i64* %__s1_len59, align 8, !tbaa !26
  %cmp64 = icmp ult i64 %55, 4
  br i1 %cmp64, label %cond.true.66, label %cond.false.111

cond.true.66:                                     ; preds = %land.lhs.true.63
  %56 = bitcast i8** %__s268 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = load i32, i32* %mapno, align 4, !tbaa !27
  %idxprom69 = sext i32 %57 to i64
  %arrayidx70 = getelementptr inbounds [12 x i8*], [12 x i8*]* %maptype, i32 0, i64 %idxprom69
  %58 = load i8*, i8** %arrayidx70, align 8, !tbaa !1
  store i8* %58, i8** %__s268, align 8, !tbaa !1
  %59 = bitcast i32* %__result72 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), align 1, !tbaa !10
  %conv73 = zext i8 %60 to i32
  %61 = load i8*, i8** %__s268, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i8, i8* %61, i64 0
  %62 = load i8, i8* %arrayidx74, align 1, !tbaa !10
  %conv75 = zext i8 %62 to i32
  %sub76 = sub nsw i32 %conv73, %conv75
  store i32 %sub76, i32* %__result72, align 4, !tbaa !27
  %63 = load i64, i64* %__s1_len59, align 8, !tbaa !26
  %cmp77 = icmp ugt i64 %63, 0
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.109

land.lhs.true.79:                                 ; preds = %cond.true.66
  %64 = load i32, i32* %__result72, align 4, !tbaa !27
  %cmp80 = icmp eq i32 %64, 0
  br i1 %cmp80, label %if.then.82, label %if.end.109

if.then.82:                                       ; preds = %land.lhs.true.79
  %65 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i64 1), align 1, !tbaa !10
  %conv83 = zext i8 %65 to i32
  %66 = load i8*, i8** %__s268, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %66, i64 1
  %67 = load i8, i8* %arrayidx84, align 1, !tbaa !10
  %conv85 = zext i8 %67 to i32
  %sub86 = sub nsw i32 %conv83, %conv85
  store i32 %sub86, i32* %__result72, align 4, !tbaa !27
  %68 = load i64, i64* %__s1_len59, align 8, !tbaa !26
  %cmp87 = icmp ugt i64 %68, 1
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.108

land.lhs.true.89:                                 ; preds = %if.then.82
  %69 = load i32, i32* %__result72, align 4, !tbaa !27
  %cmp90 = icmp eq i32 %69, 0
  br i1 %cmp90, label %if.then.92, label %if.end.108

if.then.92:                                       ; preds = %land.lhs.true.89
  %70 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i64 2), align 1, !tbaa !10
  %conv93 = zext i8 %70 to i32
  %71 = load i8*, i8** %__s268, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i8, i8* %71, i64 2
  %72 = load i8, i8* %arrayidx94, align 1, !tbaa !10
  %conv95 = zext i8 %72 to i32
  %sub96 = sub nsw i32 %conv93, %conv95
  store i32 %sub96, i32* %__result72, align 4, !tbaa !27
  %73 = load i64, i64* %__s1_len59, align 8, !tbaa !26
  %cmp97 = icmp ugt i64 %73, 2
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.107

land.lhs.true.99:                                 ; preds = %if.then.92
  %74 = load i32, i32* %__result72, align 4, !tbaa !27
  %cmp100 = icmp eq i32 %74, 0
  br i1 %cmp100, label %if.then.102, label %if.end.107

if.then.102:                                      ; preds = %land.lhs.true.99
  %75 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i64 3), align 1, !tbaa !10
  %conv103 = zext i8 %75 to i32
  %76 = load i8*, i8** %__s268, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i8, i8* %76, i64 3
  %77 = load i8, i8* %arrayidx104, align 1, !tbaa !10
  %conv105 = zext i8 %77 to i32
  %sub106 = sub nsw i32 %conv103, %conv105
  store i32 %sub106, i32* %__result72, align 4, !tbaa !27
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.102, %land.lhs.true.99, %if.then.92
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %land.lhs.true.89, %if.then.82
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %land.lhs.true.79, %cond.true.66
  %78 = load i32, i32* %__result72, align 4, !tbaa !27
  store i32 %78, i32* %tmp110, !tbaa !27
  %79 = bitcast i32* %__result72 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i8** %__s268 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = load i32, i32* %tmp110, !tbaa !27
  br label %cond.end.115

cond.false.111:                                   ; preds = %land.lhs.true.63, %if.else
  %82 = load i32, i32* %mapno, align 4, !tbaa !27
  %idxprom112 = sext i32 %82 to i64
  %arrayidx113 = getelementptr inbounds [12 x i8*], [12 x i8*]* %maptype, i32 0, i64 %idxprom112
  %83 = load i8*, i8** %arrayidx113, align 8, !tbaa !1
  %call114 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* %83) #1
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.111, %if.end.109
  %cond116 = phi i32 [ %81, %if.end.109 ], [ %call114, %cond.false.111 ]
  store i32 %cond116, i32* %tmp62, !tbaa !27
  %84 = bitcast i64* %__s2_len61 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i64* %__s1_len59 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %tmp62, !tbaa !27
  %cmp117 = icmp eq i32 %86, 0
  br i1 %cmp117, label %if.then.119, label %if.else.121

if.then.119:                                      ; preds = %cond.end.115
  %87 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %88 = load i32, i32* %hbsize.addr, align 4, !tbaa !27
  %89 = load i32, i32* %trymx.addr, align 4, !tbaa !27
  %90 = load i32*, i32** %pttl.addr, align 8, !tbaa !1
  %call120 = call i32 @dns_getcanonname(i8* %87, i32 %88, i32 %89, i32* %status, i32* %90)
  store i32 %call120, i32* %found, align 4, !tbaa !27
  br label %if.end.122

if.else.121:                                      ; preds = %cond.end.115
  store i32 0, i32* %found, align 4, !tbaa !27
  store i32 69, i32* %status, align 4, !tbaa !27
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.then.119
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.56
  %91 = load i32, i32* %found, align 4, !tbaa !27
  %tobool124 = icmp ne i32 %91, 0
  br i1 %tobool124, label %land.lhs.true.125, label %if.end.133

land.lhs.true.125:                                ; preds = %if.end.123
  %92 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %call126 = call i8* @macvalue(i32 109, %struct.envelope* %92)
  %cmp127 = icmp ne i8* %call126, null
  br i1 %cmp127, label %if.then.132, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.125
  %93 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call129 = call i8* @strchr(i8* %93, i32 46) #1
  %cmp130 = icmp ne i8* %call129, null
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %lor.lhs.false, %land.lhs.true.125
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.133:                                       ; preds = %lor.lhs.false, %if.end.123
  %94 = load i32, i32* %status, align 4, !tbaa !27
  %cmp134 = icmp eq i32 %94, 75
  br i1 %cmp134, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %if.end.133
  store i32 2, i32* %i, align 4, !tbaa !27
  store i32 1, i32* %got_tempfail, align 4, !tbaa !27
  br label %if.end.143

if.else.137:                                      ; preds = %if.end.133
  %95 = load i32, i32* %status, align 4, !tbaa !27
  %cmp138 = icmp eq i32 %95, 68
  br i1 %cmp138, label %if.then.140, label %if.else.141

if.then.140:                                      ; preds = %if.else.137
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %if.end.142

if.else.141:                                      ; preds = %if.else.137
  store i32 1, i32* %i, align 4, !tbaa !27
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.141, %if.then.140
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.then.136
  %96 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom144 = sext i32 %96 to i64
  %arrayidx145 = getelementptr inbounds [5 x i16], [5 x i16]* %mapreturn, i32 0, i64 %idxprom144
  %97 = load i16, i16* %arrayidx145, align 2, !tbaa !12
  %conv146 = sext i16 %97 to i32
  %98 = load i32, i32* %mapno, align 4, !tbaa !27
  %shl = shl i32 1, %98
  %and = and i32 %conv146, %shl
  %cmp147 = icmp ne i32 %and, 0
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.143
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.150:                                       ; preds = %if.end.143
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.150, %if.then.149, %if.then.132
  %99 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %100 = load i32, i32* %mapno, align 4, !tbaa !27
  %inc = add nsw i32 %100, 1
  store i32 %inc, i32* %mapno, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %101 = load i32, i32* %found, align 4, !tbaa !27
  %tobool151 = icmp ne i32 %101, 0
  br i1 %tobool151, label %if.then.152, label %if.end.198

if.then.152:                                      ; preds = %for.end
  %102 = bitcast i8** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  %103 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv154 = zext i8 %103 to i32
  %cmp155 = icmp sge i32 %conv154, 20
  br i1 %cmp155, label %land.lhs.true.157, label %if.end.160

land.lhs.true.157:                                ; preds = %if.then.152
  %104 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool158 = icmp ne i32 %104, 0
  br i1 %tobool158, label %if.end.160, label %if.then.159

if.then.159:                                      ; preds = %land.lhs.true.157
  %105 = load i8*, i8** %host.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* %105)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %land.lhs.true.157, %if.then.152
  %106 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call161 = call i8* @strchr(i8* %106, i32 46) #1
  store i8* %call161, i8** %d, align 8, !tbaa !1
  %cmp162 = icmp eq i8* %call161, null
  br i1 %cmp162, label %if.then.169, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %if.end.160
  %107 = load i8*, i8** %d, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i8, i8* %107, i64 1
  %108 = load i8, i8* %arrayidx165, align 1, !tbaa !10
  %conv166 = sext i8 %108 to i32
  %cmp167 = icmp eq i32 %conv166, 0
  br i1 %cmp167, label %if.then.169, label %if.end.196

if.then.169:                                      ; preds = %lor.lhs.false.164, %if.end.160
  %109 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %call170 = call i8* @macvalue(i32 109, %struct.envelope* %109)
  store i8* %call170, i8** %d, align 8, !tbaa !1
  %110 = load i8*, i8** %d, align 8, !tbaa !1
  %cmp171 = icmp ne i8* %110, null
  br i1 %cmp171, label %land.lhs.true.173, label %if.else.194

land.lhs.true.173:                                ; preds = %if.then.169
  %111 = load i32, i32* %hbsize.addr, align 4, !tbaa !27
  %112 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call174 = call i64 @strlen(i8* %112) #9
  %113 = load i8*, i8** %d, align 8, !tbaa !1
  %call175 = call i64 @strlen(i8* %113) #9
  %add = add i64 %call174, %call175
  %add176 = add i64 %add, 1
  %conv177 = trunc i64 %add176 to i32
  %cmp178 = icmp sgt i32 %111, %conv177
  br i1 %cmp178, label %if.then.180, label %if.else.194

if.then.180:                                      ; preds = %land.lhs.true.173
  %114 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call181 = call i64 @strlen(i8* %114) #9
  %sub182 = sub i64 %call181, 1
  %115 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds i8, i8* %115, i64 %sub182
  %116 = load i8, i8* %arrayidx183, align 1, !tbaa !10
  %conv184 = sext i8 %116 to i32
  %cmp185 = icmp ne i32 %conv184, 46
  br i1 %cmp185, label %if.then.187, label %if.else.190

if.then.187:                                      ; preds = %if.then.180
  %117 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %118 = load i8*, i8** %d, align 8, !tbaa !1
  %119 = load i32, i32* %hbsize.addr, align 4, !tbaa !27
  %conv188 = sext i32 %119 to i64
  %call189 = call i64 @sm_strlcat2(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* %118, i64 %conv188)
  br label %if.end.193

if.else.190:                                      ; preds = %if.then.180
  %120 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %121 = load i8*, i8** %d, align 8, !tbaa !1
  %122 = load i32, i32* %hbsize.addr, align 4, !tbaa !27
  %conv191 = sext i32 %122 to i64
  %call192 = call i64 @sm_strlcat(i8* %120, i8* %121, i64 %conv191)
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.190, %if.then.187
  br label %if.end.195

if.else.194:                                      ; preds = %land.lhs.true.173, %if.then.169
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.197

if.end.195:                                       ; preds = %if.end.193
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %lor.lhs.false.164
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.197

cleanup.197:                                      ; preds = %if.end.196, %if.else.194
  %123 = bitcast i8** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  br label %cleanup.212

if.end.198:                                       ; preds = %for.end
  %124 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv199 = zext i8 %124 to i32
  %cmp200 = icmp sge i32 %conv199, 20
  br i1 %cmp200, label %land.lhs.true.202, label %if.end.205

land.lhs.true.202:                                ; preds = %if.end.198
  %125 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool203 = icmp ne i32 %125, 0
  br i1 %tobool203, label %if.end.205, label %if.then.204

if.then.204:                                      ; preds = %land.lhs.true.202
  %126 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %127 = load i32, i32* %status, align 4, !tbaa !27
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i32 0, i32 0), i8* %126, i32 %127)
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.204, %land.lhs.true.202, %if.end.198
  %128 = load i32, i32* %got_tempfail, align 4, !tbaa !27
  %tobool206 = icmp ne i32 %128, 0
  br i1 %tobool206, label %if.then.207, label %if.else.209

if.then.207:                                      ; preds = %if.end.205
  %call208 = call i32* @__h_errno_location() #8
  store i32 2, i32* %call208, align 4, !tbaa !27
  br label %if.end.211

if.else.209:                                      ; preds = %if.end.205
  %call210 = call i32* @__h_errno_location() #8
  store i32 1, i32* %call210, align 4, !tbaa !27
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.209, %if.then.207
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.212

cleanup.212:                                      ; preds = %if.end.211, %cleanup.197
  %129 = bitcast [5 x i16]* %mapreturn to i8*
  call void @llvm.lifetime.end(i64 10, i8* %129) #1
  %130 = bitcast [12 x i8*]* %maptype to i8*
  call void @llvm.lifetime.end(i64 96, i8* %130) #1
  %131 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %got_tempfail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %mapno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %nmaps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = load i32, i32* %retval
  ret i32 %136

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @switch_map_find(i8*, i8**, i16*) #4

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @text_getcanonname(i8* %name, i32 %hbsize, i32* %statp) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %hbsize.addr = alloca i32, align 4
  %statp.addr = alloca i32*, align 8
  %found = alloca i32, align 4
  %dot = alloca i8*, align 8
  %f = alloca %struct.sm_file*, align 8
  %linebuf = alloca [2048 x i8], align 16
  %cbuf = alloca [257 x i8], align 16
  %nbuf = alloca [257 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %p = alloca i8*, align 8
  %__a0 = alloca i8, align 1
  %__a1 = alloca i8, align 1
  %__a2 = alloca i8, align 1
  %tmp = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i32 %hbsize, i32* %hbsize.addr, align 4, !tbaa !27
  store i32* %statp, i32** %statp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %dot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.sm_file** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast [2048 x i8]* %linebuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %3) #1
  %4 = bitcast [257 x i8]* %cbuf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %4) #1
  %5 = bitcast [257 x i8]* %nbuf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %5) #1
  %6 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %6 to i32
  %cmp = icmp sge i32 %conv, 20
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.120, i32 0, i32 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %nbuf, i32 0, i32 0
  %9 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call = call i64 @sm_strlcpy(i8* %arraydecay, i8* %9, i64 257)
  %cmp2 = icmp uge i64 %call, 257
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %10 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 69, i32* %10, align 4, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [257 x i8], [257 x i8]* %nbuf, i32 0, i32 0
  %call7 = call i8* @shorten_hostname(i8* %arraydecay6)
  store i8* %call7, i8** %dot, align 8, !tbaa !1
  %11 = load i8*, i8** @HostsFile, align 8, !tbaa !1
  %call8 = call %struct.sm_file* @sm_io_open(%struct.sm_file* @SmFtStdio_def, i32 -2, i8* %11, i32 2, i8* null)
  store %struct.sm_file* %call8, %struct.sm_file** %f, align 8, !tbaa !1
  %12 = load %struct.sm_file*, %struct.sm_file** %f, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.sm_file* %12, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.5
  %13 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 69, i32* %13, align 4, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.5
  store i32 0, i32* %found, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %if.end.75, %if.end.12
  %14 = load i32, i32* %found, align 4, !tbaa !27
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %15 = load %struct.sm_file*, %struct.sm_file** %f, align 8, !tbaa !1
  %arraydecay14 = getelementptr inbounds [2048 x i8], [2048 x i8]* %linebuf, i32 0, i32 0
  %call15 = call i32 @sm_io_fgets(%struct.sm_file* %15, i32 -2, i8* %arraydecay14, i32 2048)
  %cmp16 = icmp sge i32 %call15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp16, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a0) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a2) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.121 to i64)), i64 1), label %cond.true, label %cond.false.58

cond.true:                                        ; preds = %while.body
  %18 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), align 1, !tbaa !10
  store i8 %18, i8* %__a0, align 1, !tbaa !10
  %19 = load i8, i8* %__a0, align 1, !tbaa !10
  %conv18 = sext i8 %19 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %cond.true.21, label %cond.false

cond.true.21:                                     ; preds = %cond.true
  %arraydecay22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %linebuf, i32 0, i32 0
  br label %cond.end.56

cond.false:                                       ; preds = %cond.true
  %20 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i64 1), align 1, !tbaa !10
  store i8 %20, i8* %__a1, align 1, !tbaa !10
  %21 = load i8, i8* %__a1, align 1, !tbaa !10
  %conv23 = sext i8 %21 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %cond.true.26, label %cond.false.30

cond.true.26:                                     ; preds = %cond.false
  %arraydecay27 = getelementptr inbounds [2048 x i8], [2048 x i8]* %linebuf, i32 0, i32 0
  %22 = load i8, i8* %__a0, align 1, !tbaa !10
  %conv28 = sext i8 %22 to i32
  %call29 = call i8* @strchr(i8* %arraydecay27, i32 %conv28) #1
  br label %cond.end.54

cond.false.30:                                    ; preds = %cond.false
  %23 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i64 2), align 1, !tbaa !10
  store i8 %23, i8* %__a2, align 1, !tbaa !10
  %24 = load i8, i8* %__a2, align 1, !tbaa !10
  %conv31 = sext i8 %24 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %cond.true.34, label %cond.false.39

cond.true.34:                                     ; preds = %cond.false.30
  %arraydecay35 = getelementptr inbounds [2048 x i8], [2048 x i8]* %linebuf, i32 0, i32 0
  %25 = load i8, i8* %__a0, align 1, !tbaa !10
  %conv36 = sext i8 %25 to i32
  %26 = load i8, i8* %__a1, align 1, !tbaa !10
  %conv37 = sext i8 %26 to i32
  %call38 = call i8* @__strpbrk_c2(i8* %arraydecay35, i32 %conv36, i32 %conv37)
  br label %cond.end.52

cond.false.39:                                    ; preds = %cond.false.30
  %27 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i64 3), align 1, !tbaa !10
  %conv40 = sext i8 %27 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br i1 %cmp41, label %cond.true.43, label %cond.false.49

cond.true.43:                                     ; preds = %cond.false.39
  %arraydecay44 = getelementptr inbounds [2048 x i8], [2048 x i8]* %linebuf, i32 0, i32 0
  %28 = load i8, i8* %__a0, align 1, !tbaa !10
  %conv45 = sext i8 %28 to i32
  %29 = load i8, i8* %__a1, align 1, !tbaa !10
  %conv46 = sext i8 %29 to i32
  %30 = load i8, i8* %__a2, align 1, !tbaa !10
  %conv47 = sext i8 %30 to i32
  %call48 = call i8* @__strpbrk_c3(i8* %arraydecay44, i32 %conv45, i32 %conv46, i32 %conv47)
  br label %cond.end

cond.false.49:                                    ; preds = %cond.false.39
  %arraydecay50 = getelementptr inbounds [2048 x i8], [2048 x i8]* %linebuf, i32 0, i32 0
  %call51 = call i8* @strpbrk(i8* %arraydecay50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.49, %cond.true.43
  %cond = phi i8* [ %call48, %cond.true.43 ], [ %call51, %cond.false.49 ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end, %cond.true.34
  %cond53 = phi i8* [ %call38, %cond.true.34 ], [ %cond, %cond.end ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end.52, %cond.true.26
  %cond55 = phi i8* [ %call29, %cond.true.26 ], [ %cond53, %cond.end.52 ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end.54, %cond.true.21
  %cond57 = phi i8* [ null, %cond.true.21 ], [ %cond55, %cond.end.54 ]
  br label %cond.end.61

cond.false.58:                                    ; preds = %while.body
  %arraydecay59 = getelementptr inbounds [2048 x i8], [2048 x i8]* %linebuf, i32 0, i32 0
  %call60 = call i8* @strpbrk(i8* %arraydecay59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0)) #1
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.58, %cond.end.56
  %cond62 = phi i8* [ %cond57, %cond.end.56 ], [ %call60, %cond.false.58 ]
  store i8* %cond62, i8** %tmp, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %__a2) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a0) #1
  %31 = load i8*, i8** %tmp, !tbaa !1
  store i8* %31, i8** %p, align 8, !tbaa !1
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp63 = icmp ne i8* %32, null
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %cond.end.61
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %33, align 1, !tbaa !10
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %cond.end.61
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %linebuf, i32 0, i64 0
  %34 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %conv67 = sext i8 %34 to i32
  %cmp68 = icmp ne i32 %conv67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %if.end.66
  %arraydecay71 = getelementptr inbounds [257 x i8], [257 x i8]* %nbuf, i32 0, i32 0
  %35 = load i8*, i8** %dot, align 8, !tbaa !1
  %arraydecay72 = getelementptr inbounds [2048 x i8], [2048 x i8]* %linebuf, i32 0, i32 0
  %arraydecay73 = getelementptr inbounds [257 x i8], [257 x i8]* %cbuf, i32 0, i32 0
  %call74 = call i32 @extract_canonname(i8* %arraydecay71, i8* %35, i8* %arraydecay72, i8* %arraydecay73, i32 257)
  store i32 %call74, i32* %found, align 4, !tbaa !27
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.70, %if.end.66
  %36 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %37 = load %struct.sm_file*, %struct.sm_file** %f, align 8, !tbaa !1
  %call76 = call i32 @sm_io_close(%struct.sm_file* %37, i32 -2)
  %38 = load i32, i32* %found, align 4, !tbaa !27
  %tobool77 = icmp ne i32 %38, 0
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %while.end
  %39 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 68, i32* %39, align 4, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %while.end
  %40 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %arraydecay80 = getelementptr inbounds [257 x i8], [257 x i8]* %cbuf, i32 0, i32 0
  %41 = load i32, i32* %hbsize.addr, align 4, !tbaa !27
  %conv81 = sext i32 %41 to i64
  %call82 = call i64 @sm_strlcpy(i8* %40, i8* %arraydecay80, i64 %conv81)
  %42 = load i32, i32* %hbsize.addr, align 4, !tbaa !27
  %conv83 = sext i32 %42 to i64
  %cmp84 = icmp uge i64 %call82, %conv83
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.79
  %43 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 69, i32* %43, align 4, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.87:                                        ; preds = %if.end.79
  %44 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 0, i32* %44, align 4, !tbaa !27
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.87, %if.then.86, %if.then.78, %if.then.11, %if.then.4
  %45 = bitcast [257 x i8]* %nbuf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %45) #1
  %46 = bitcast [257 x i8]* %cbuf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %46) #1
  %47 = bitcast [2048 x i8]* %linebuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %47) #1
  %48 = bitcast %struct.sm_file** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i8** %dot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32* %found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare i32 @dns_getcanonname(i8*, i32, i32, i32*, i32*) #4

declare i8* @macvalue(i32, %struct.envelope*) #4

declare i64 @sm_strlcat2(i8*, i8*, i8*, i64) #4

declare i64 @sm_strlcat(i8*, i8*, i64) #4

; Function Attrs: nounwind readnone
declare i32* @__h_errno_location() #2

; Function Attrs: nounwind uwtable
define i32 @dns_map_open(%struct._map* %map, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct._map*, align 8
  %mode.addr = alloca i32, align 4
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !27
  %0 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %2, i32 0, i32 2
  %3 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %4 = load i32, i32* %mode.addr, align 4, !tbaa !27
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i32, i32* %mode.addr, align 4, !tbaa !27
  %and = and i32 %5, 3
  store i32 %and, i32* %mode.addr, align 4, !tbaa !27
  %6 = load i32, i32* %mode.addr, align 4, !tbaa !27
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %call = call i32* @__errno_location() #8
  store i32 38, i32* %call, align 4, !tbaa !27
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @dns_map_parseargs(%struct._map* %map, i8* %args) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %args.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %map_p = alloca %struct.dns_map*, align 8
  %h = alloca i8*, align 8
  %h105 = alloca i8*, align 8
  %h140 = alloca i8*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %args, i8** %args.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %args.addr, align 8, !tbaa !1
  store i8* %1, i8** %p, align 8, !tbaa !1
  %2 = bitcast %struct.dns_map** %map_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %call = call i8* @xalloc_tagged(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 1036)
  %3 = bitcast i8* %call to %struct.dns_map*
  store %struct.dns_map* %3, %struct.dns_map** %map_p, align 8, !tbaa !1
  %4 = load %struct.dns_map*, %struct.dns_map** %map_p, align 8, !tbaa !1
  %dns_m_type = getelementptr inbounds %struct.dns_map, %struct.dns_map* %4, i32 0, i32 0
  store i32 -1, i32* %dns_m_type, align 4, !tbaa !34
  %5 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %5, i32 0, i32 3
  %6 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %or = or i64 %6, 768
  store i64 %or, i64* %map_mflags, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.196, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %7 = load i8*, i8** %p, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !10
  %conv = sext i8 %8 to i32
  %and = and i32 %conv, -128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !10
  %conv2 = sext i8 %10 to i32
  %idxprom = sext i32 %conv2 to i64
  %call3 = call i16** @__ctype_b_loc() #8
  %11 = load i16*, i16** %call3, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %11, i64 %idxprom
  %12 = load i16, i16* %arrayidx, align 2, !tbaa !12
  %conv4 = zext i16 %12 to i32
  %and5 = and i32 %conv4, 8192
  %tobool = icmp ne i32 %and5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !10
  %conv6 = sext i8 %16 to i32
  %cmp7 = icmp ne i32 %conv6, 45
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %for.end

if.end:                                           ; preds = %while.end
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr9, i8** %p, align 8, !tbaa !1
  %18 = load i8, i8* %incdec.ptr9, align 1, !tbaa !10
  %conv10 = sext i8 %18 to i32
  switch i32 %conv10, label %sw.epilog.168 [
    i32 78, label %sw.bb
    i32 79, label %sw.bb.15
    i32 111, label %sw.bb.18
    i32 102, label %sw.bb.21
    i32 109, label %sw.bb.24
    i32 65, label %sw.bb.27
    i32 113, label %sw.bb.30
    i32 116, label %sw.bb.33
    i32 97, label %sw.bb.36
    i32 84, label %sw.bb.38
    i32 100, label %sw.bb.40
    i32 114, label %sw.bb.52
    i32 122, label %sw.bb.71
    i32 90, label %sw.bb.85
    i32 82, label %sw.bb.104
    i32 66, label %sw.bb.139
  ]

sw.bb:                                            ; preds = %if.end
  %19 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags11 = getelementptr inbounds %struct._map, %struct._map* %19, i32 0, i32 3
  %20 = load i64, i64* %map_mflags11, align 8, !tbaa !5
  %or12 = or i64 %20, 2
  store i64 %or12, i64* %map_mflags11, align 8, !tbaa !5
  %21 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags13 = getelementptr inbounds %struct._map, %struct._map* %21, i32 0, i32 3
  %22 = load i64, i64* %map_mflags13, align 8, !tbaa !5
  %and14 = and i64 %22, -257
  store i64 %and14, i64* %map_mflags13, align 8, !tbaa !5
  br label %sw.epilog.168

sw.bb.15:                                         ; preds = %if.end
  %23 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags16 = getelementptr inbounds %struct._map, %struct._map* %23, i32 0, i32 3
  %24 = load i64, i64* %map_mflags16, align 8, !tbaa !5
  %and17 = and i64 %24, -513
  store i64 %and17, i64* %map_mflags16, align 8, !tbaa !5
  br label %sw.epilog.168

sw.bb.18:                                         ; preds = %if.end
  %25 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags19 = getelementptr inbounds %struct._map, %struct._map* %25, i32 0, i32 3
  %26 = load i64, i64* %map_mflags19, align 8, !tbaa !5
  %or20 = or i64 %26, 4
  store i64 %or20, i64* %map_mflags19, align 8, !tbaa !5
  br label %sw.epilog.168

sw.bb.21:                                         ; preds = %if.end
  %27 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags22 = getelementptr inbounds %struct._map, %struct._map* %27, i32 0, i32 3
  %28 = load i64, i64* %map_mflags22, align 8, !tbaa !5
  %or23 = or i64 %28, 8
  store i64 %or23, i64* %map_mflags22, align 8, !tbaa !5
  br label %sw.epilog.168

sw.bb.24:                                         ; preds = %if.end
  %29 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags25 = getelementptr inbounds %struct._map, %struct._map* %29, i32 0, i32 3
  %30 = load i64, i64* %map_mflags25, align 8, !tbaa !5
  %or26 = or i64 %30, 16
  store i64 %or26, i64* %map_mflags25, align 8, !tbaa !5
  br label %sw.epilog.168

sw.bb.27:                                         ; preds = %if.end
  %31 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags28 = getelementptr inbounds %struct._map, %struct._map* %31, i32 0, i32 3
  %32 = load i64, i64* %map_mflags28, align 8, !tbaa !5
  %or29 = or i64 %32, 32768
  store i64 %or29, i64* %map_mflags28, align 8, !tbaa !5
  br label %sw.epilog.168

sw.bb.30:                                         ; preds = %if.end
  %33 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags31 = getelementptr inbounds %struct._map, %struct._map* %33, i32 0, i32 3
  %34 = load i64, i64* %map_mflags31, align 8, !tbaa !5
  %or32 = or i64 %34, 65536
  store i64 %or32, i64* %map_mflags31, align 8, !tbaa !5
  br label %sw.epilog.168

sw.bb.33:                                         ; preds = %if.end
  %35 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags34 = getelementptr inbounds %struct._map, %struct._map* %35, i32 0, i32 3
  %36 = load i64, i64* %map_mflags34, align 8, !tbaa !5
  %or35 = or i64 %36, 131072
  store i64 %or35, i64* %map_mflags34, align 8, !tbaa !5
  br label %sw.epilog.168

sw.bb.36:                                         ; preds = %if.end
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr37, i8** %p, align 8, !tbaa !1
  %38 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app = getelementptr inbounds %struct._map, %struct._map* %38, i32 0, i32 13
  store i8* %incdec.ptr37, i8** %map_app, align 8, !tbaa !13
  br label %sw.epilog.168

sw.bb.38:                                         ; preds = %if.end
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr39, i8** %p, align 8, !tbaa !1
  %40 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_tapp = getelementptr inbounds %struct._map, %struct._map* %40, i32 0, i32 14
  store i8* %incdec.ptr39, i8** %map_tapp, align 8, !tbaa !15
  br label %sw.epilog.168

sw.bb.40:                                         ; preds = %if.end
  %41 = bitcast i8** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr41 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr41, i8** %p, align 8, !tbaa !1
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %call42 = call i8* @strchr(i8* %43, i32 32) #1
  store i8* %call42, i8** %h, align 8, !tbaa !1
  %44 = load i8*, i8** %h, align 8, !tbaa !1
  %cmp43 = icmp ne i8* %44, null
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %sw.bb.40
  %45 = load i8*, i8** %h, align 8, !tbaa !1
  store i8 0, i8* %45, align 1, !tbaa !10
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %sw.bb.40
  %46 = load i8*, i8** %p, align 8, !tbaa !1
  %call47 = call i64 @convtime(i8* %46, i32 115)
  %47 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_timeout = getelementptr inbounds %struct._map, %struct._map* %47, i32 0, i32 18
  store i64 %call47, i64* %map_timeout, align 8, !tbaa !14
  %48 = load i8*, i8** %h, align 8, !tbaa !1
  %cmp48 = icmp ne i8* %48, null
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.46
  %49 = load i8*, i8** %h, align 8, !tbaa !1
  store i8 32, i8* %49, align 1, !tbaa !10
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.46
  %50 = bitcast i8** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  br label %sw.epilog.168

sw.bb.52:                                         ; preds = %if.end
  br label %while.cond.53

while.cond.53:                                    ; preds = %while.body.68, %sw.bb.52
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr54 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr54, i8** %p, align 8, !tbaa !1
  %52 = load i8, i8* %incdec.ptr54, align 1, !tbaa !10
  %conv55 = sext i8 %52 to i32
  %and56 = and i32 %conv55, -128
  %cmp57 = icmp eq i32 %and56, 0
  br i1 %cmp57, label %land.rhs.59, label %land.end.67

land.rhs.59:                                      ; preds = %while.cond.53
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %54 = load i8, i8* %53, align 1, !tbaa !10
  %conv60 = sext i8 %54 to i32
  %idxprom61 = sext i32 %conv60 to i64
  %call62 = call i16** @__ctype_b_loc() #8
  %55 = load i16*, i16** %call62, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i16, i16* %55, i64 %idxprom61
  %56 = load i16, i16* %arrayidx63, align 2, !tbaa !12
  %conv64 = zext i16 %56 to i32
  %and65 = and i32 %conv64, 8192
  %tobool66 = icmp ne i32 %and65, 0
  br label %land.end.67

land.end.67:                                      ; preds = %land.rhs.59, %while.cond.53
  %57 = phi i1 [ false, %while.cond.53 ], [ %tobool66, %land.rhs.59 ]
  br i1 %57, label %while.body.68, label %while.end.69

while.body.68:                                    ; preds = %land.end.67
  br label %while.cond.53

while.end.69:                                     ; preds = %land.end.67
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %call70 = call i32 @atoi(i8* %58) #9
  %59 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_retry = getelementptr inbounds %struct._map, %struct._map* %59, i32 0, i32 19
  store i32 %call70, i32* %map_retry, align 4, !tbaa !36
  br label %sw.epilog.168

sw.bb.71:                                         ; preds = %if.end
  %60 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr72 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr72, i8** %p, align 8, !tbaa !1
  %61 = load i8, i8* %incdec.ptr72, align 1, !tbaa !10
  %conv73 = sext i8 %61 to i32
  %cmp74 = icmp ne i32 %conv73, 92
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %sw.bb.71
  %62 = load i8*, i8** %p, align 8, !tbaa !1
  %63 = load i8, i8* %62, align 1, !tbaa !10
  %64 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim = getelementptr inbounds %struct._map, %struct._map* %64, i32 0, i32 11
  store i8 %63, i8* %map_coldelim, align 1, !tbaa !18
  br label %if.end.84

if.else:                                          ; preds = %sw.bb.71
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr77 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr77, i8** %p, align 8, !tbaa !1
  %66 = load i8, i8* %incdec.ptr77, align 1, !tbaa !10
  %conv78 = sext i8 %66 to i32
  switch i32 %conv78, label %sw.default [
    i32 110, label %sw.bb.79
    i32 116, label %sw.bb.81
  ]

sw.bb.79:                                         ; preds = %if.else
  %67 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim80 = getelementptr inbounds %struct._map, %struct._map* %67, i32 0, i32 11
  store i8 10, i8* %map_coldelim80, align 1, !tbaa !18
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.else
  %68 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim82 = getelementptr inbounds %struct._map, %struct._map* %68, i32 0, i32 11
  store i8 9, i8* %map_coldelim82, align 1, !tbaa !18
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %69 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim83 = getelementptr inbounds %struct._map, %struct._map* %69, i32 0, i32 11
  store i8 92, i8* %map_coldelim83, align 1, !tbaa !18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.81, %sw.bb.79
  br label %if.end.84

if.end.84:                                        ; preds = %sw.epilog, %if.then.76
  br label %sw.epilog.168

sw.bb.85:                                         ; preds = %if.end
  br label %while.cond.86

while.cond.86:                                    ; preds = %while.body.101, %sw.bb.85
  %70 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr87 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr87, i8** %p, align 8, !tbaa !1
  %71 = load i8, i8* %incdec.ptr87, align 1, !tbaa !10
  %conv88 = sext i8 %71 to i32
  %and89 = and i32 %conv88, -128
  %cmp90 = icmp eq i32 %and89, 0
  br i1 %cmp90, label %land.rhs.92, label %land.end.100

land.rhs.92:                                      ; preds = %while.cond.86
  %72 = load i8*, i8** %p, align 8, !tbaa !1
  %73 = load i8, i8* %72, align 1, !tbaa !10
  %conv93 = sext i8 %73 to i32
  %idxprom94 = sext i32 %conv93 to i64
  %call95 = call i16** @__ctype_b_loc() #8
  %74 = load i16*, i16** %call95, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i16, i16* %74, i64 %idxprom94
  %75 = load i16, i16* %arrayidx96, align 2, !tbaa !12
  %conv97 = zext i16 %75 to i32
  %and98 = and i32 %conv97, 8192
  %tobool99 = icmp ne i32 %and98, 0
  br label %land.end.100

land.end.100:                                     ; preds = %land.rhs.92, %while.cond.86
  %76 = phi i1 [ false, %while.cond.86 ], [ %tobool99, %land.rhs.92 ]
  br i1 %76, label %while.body.101, label %while.end.102

while.body.101:                                   ; preds = %land.end.100
  br label %while.cond.86

while.end.102:                                    ; preds = %land.end.100
  %77 = load i8*, i8** %p, align 8, !tbaa !1
  %call103 = call i32 @atoi(i8* %77) #9
  %78 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd = getelementptr inbounds %struct._map, %struct._map* %78, i32 0, i32 21
  store i32 %call103, i32* %map_lockfd, align 4, !tbaa !37
  br label %sw.epilog.168

sw.bb.104:                                        ; preds = %if.end
  %79 = bitcast i8** %h105 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  br label %while.cond.106

while.cond.106:                                   ; preds = %while.body.121, %sw.bb.104
  %80 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr107 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr107, i8** %p, align 8, !tbaa !1
  %81 = load i8, i8* %incdec.ptr107, align 1, !tbaa !10
  %conv108 = sext i8 %81 to i32
  %and109 = and i32 %conv108, -128
  %cmp110 = icmp eq i32 %and109, 0
  br i1 %cmp110, label %land.rhs.112, label %land.end.120

land.rhs.112:                                     ; preds = %while.cond.106
  %82 = load i8*, i8** %p, align 8, !tbaa !1
  %83 = load i8, i8* %82, align 1, !tbaa !10
  %conv113 = sext i8 %83 to i32
  %idxprom114 = sext i32 %conv113 to i64
  %call115 = call i16** @__ctype_b_loc() #8
  %84 = load i16*, i16** %call115, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i16, i16* %84, i64 %idxprom114
  %85 = load i16, i16* %arrayidx116, align 2, !tbaa !12
  %conv117 = zext i16 %85 to i32
  %and118 = and i32 %conv117, 8192
  %tobool119 = icmp ne i32 %and118, 0
  br label %land.end.120

land.end.120:                                     ; preds = %land.rhs.112, %while.cond.106
  %86 = phi i1 [ false, %while.cond.106 ], [ %tobool119, %land.rhs.112 ]
  br i1 %86, label %while.body.121, label %while.end.122

while.body.121:                                   ; preds = %land.end.120
  br label %while.cond.106

while.end.122:                                    ; preds = %land.end.120
  %87 = load i8*, i8** %p, align 8, !tbaa !1
  %call123 = call i8* @strchr(i8* %87, i32 32) #1
  store i8* %call123, i8** %h105, align 8, !tbaa !1
  %88 = load i8*, i8** %h105, align 8, !tbaa !1
  %cmp124 = icmp ne i8* %88, null
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %while.end.122
  %89 = load i8*, i8** %h105, align 8, !tbaa !1
  store i8 0, i8* %89, align 1, !tbaa !10
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %while.end.122
  %90 = load i8*, i8** %p, align 8, !tbaa !1
  %call128 = call i32 @dns_string_to_type(i8* %90)
  %91 = load %struct.dns_map*, %struct.dns_map** %map_p, align 8, !tbaa !1
  %dns_m_type129 = getelementptr inbounds %struct.dns_map, %struct.dns_map* %91, i32 0, i32 0
  store i32 %call128, i32* %dns_m_type129, align 4, !tbaa !34
  %92 = load i8*, i8** %h105, align 8, !tbaa !1
  %cmp130 = icmp ne i8* %92, null
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.127
  %93 = load i8*, i8** %h105, align 8, !tbaa !1
  store i8 32, i8* %93, align 1, !tbaa !10
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %if.end.127
  %94 = load %struct.dns_map*, %struct.dns_map** %map_p, align 8, !tbaa !1
  %dns_m_type134 = getelementptr inbounds %struct.dns_map, %struct.dns_map* %94, i32 0, i32 0
  %95 = load i32, i32* %dns_m_type134, align 4, !tbaa !34
  %cmp135 = icmp slt i32 %95, 0
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.133
  %96 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %96, i32 0, i32 2
  %97 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %98 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0), i8* %97, i8* %98)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.end.133
  %99 = bitcast i8** %h105 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  br label %sw.epilog.168

sw.bb.139:                                        ; preds = %if.end
  %100 = bitcast i8** %h140 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #1
  br label %while.cond.141

while.cond.141:                                   ; preds = %while.body.156, %sw.bb.139
  %101 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr142 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr142, i8** %p, align 8, !tbaa !1
  %102 = load i8, i8* %incdec.ptr142, align 1, !tbaa !10
  %conv143 = sext i8 %102 to i32
  %and144 = and i32 %conv143, -128
  %cmp145 = icmp eq i32 %and144, 0
  br i1 %cmp145, label %land.rhs.147, label %land.end.155

land.rhs.147:                                     ; preds = %while.cond.141
  %103 = load i8*, i8** %p, align 8, !tbaa !1
  %104 = load i8, i8* %103, align 1, !tbaa !10
  %conv148 = sext i8 %104 to i32
  %idxprom149 = sext i32 %conv148 to i64
  %call150 = call i16** @__ctype_b_loc() #8
  %105 = load i16*, i16** %call150, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i16, i16* %105, i64 %idxprom149
  %106 = load i16, i16* %arrayidx151, align 2, !tbaa !12
  %conv152 = zext i16 %106 to i32
  %and153 = and i32 %conv152, 8192
  %tobool154 = icmp ne i32 %and153, 0
  br label %land.end.155

land.end.155:                                     ; preds = %land.rhs.147, %while.cond.141
  %107 = phi i1 [ false, %while.cond.141 ], [ %tobool154, %land.rhs.147 ]
  br i1 %107, label %while.body.156, label %while.end.157

while.body.156:                                   ; preds = %land.end.155
  br label %while.cond.141

while.end.157:                                    ; preds = %land.end.155
  %108 = load i8*, i8** %p, align 8, !tbaa !1
  %call158 = call i8* @strchr(i8* %108, i32 32) #1
  store i8* %call158, i8** %h140, align 8, !tbaa !1
  %109 = load i8*, i8** %h140, align 8, !tbaa !1
  %cmp159 = icmp ne i8* %109, null
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %while.end.157
  %110 = load i8*, i8** %h140, align 8, !tbaa !1
  store i8 0, i8* %110, align 1, !tbaa !10
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %while.end.157
  %111 = load i8*, i8** %p, align 8, !tbaa !1
  %call163 = call i8* @newstr(i8* %111)
  %112 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file = getelementptr inbounds %struct._map, %struct._map* %112, i32 0, i32 4
  store i8* %call163, i8** %map_file, align 8, !tbaa !20
  %113 = load i8*, i8** %h140, align 8, !tbaa !1
  %cmp164 = icmp ne i8* %113, null
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end.162
  %114 = load i8*, i8** %h140, align 8, !tbaa !1
  store i8 32, i8* %114, align 1, !tbaa !10
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %if.end.162
  %115 = bitcast i8** %h140 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  br label %sw.epilog.168

sw.epilog.168:                                    ; preds = %if.end, %if.end.167, %if.end.138, %while.end.102, %if.end.84, %while.end.69, %if.end.51, %sw.bb.38, %sw.bb.36, %sw.bb.33, %sw.bb.30, %sw.bb.27, %sw.bb.24, %sw.bb.21, %sw.bb.18, %sw.bb.15, %sw.bb
  br label %while.cond.169

while.cond.169:                                   ; preds = %while.body.188, %sw.epilog.168
  %116 = load i8*, i8** %p, align 8, !tbaa !1
  %117 = load i8, i8* %116, align 1, !tbaa !10
  %conv170 = sext i8 %117 to i32
  %cmp171 = icmp ne i32 %conv170, 0
  br i1 %cmp171, label %land.rhs.173, label %land.end.187

land.rhs.173:                                     ; preds = %while.cond.169
  %118 = load i8*, i8** %p, align 8, !tbaa !1
  %119 = load i8, i8* %118, align 1, !tbaa !10
  %conv174 = sext i8 %119 to i32
  %and175 = and i32 %conv174, -128
  %cmp176 = icmp eq i32 %and175, 0
  br i1 %cmp176, label %land.rhs.178, label %land.end.186

land.rhs.178:                                     ; preds = %land.rhs.173
  %120 = load i8*, i8** %p, align 8, !tbaa !1
  %121 = load i8, i8* %120, align 1, !tbaa !10
  %conv179 = sext i8 %121 to i32
  %idxprom180 = sext i32 %conv179 to i64
  %call181 = call i16** @__ctype_b_loc() #8
  %122 = load i16*, i16** %call181, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i16, i16* %122, i64 %idxprom180
  %123 = load i16, i16* %arrayidx182, align 2, !tbaa !12
  %conv183 = zext i16 %123 to i32
  %and184 = and i32 %conv183, 8192
  %tobool185 = icmp ne i32 %and184, 0
  br label %land.end.186

land.end.186:                                     ; preds = %land.rhs.178, %land.rhs.173
  %124 = phi i1 [ false, %land.rhs.173 ], [ %tobool185, %land.rhs.178 ]
  %lnot = xor i1 %124, true
  br label %land.end.187

land.end.187:                                     ; preds = %land.end.186, %while.cond.169
  %125 = phi i1 [ false, %while.cond.169 ], [ %lnot, %land.end.186 ]
  br i1 %125, label %while.body.188, label %while.end.190

while.body.188:                                   ; preds = %land.end.187
  %126 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr189 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr189, i8** %p, align 8, !tbaa !1
  br label %while.cond.169

while.end.190:                                    ; preds = %land.end.187
  %127 = load i8*, i8** %p, align 8, !tbaa !1
  %128 = load i8, i8* %127, align 1, !tbaa !10
  %conv191 = sext i8 %128 to i32
  %cmp192 = icmp ne i32 %conv191, 0
  br i1 %cmp192, label %if.then.194, label %if.end.196

if.then.194:                                      ; preds = %while.end.190
  %129 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr195 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr195, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %129, align 1, !tbaa !10
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.194, %while.end.190
  br label %for.cond

for.end:                                          ; preds = %if.then
  %130 = load %struct.dns_map*, %struct.dns_map** %map_p, align 8, !tbaa !1
  %dns_m_type197 = getelementptr inbounds %struct.dns_map, %struct.dns_map* %130, i32 0, i32 0
  %131 = load i32, i32* %dns_m_type197, align 4, !tbaa !34
  %cmp198 = icmp slt i32 %131, 0
  br i1 %cmp198, label %if.then.200, label %if.end.202

if.then.200:                                      ; preds = %for.end
  %132 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname201 = getelementptr inbounds %struct._map, %struct._map* %132, i32 0, i32 2
  %133 = load i8*, i8** %map_mname201, align 8, !tbaa !19
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0), i8* %133)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.200, %for.end
  %134 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app203 = getelementptr inbounds %struct._map, %struct._map* %134, i32 0, i32 13
  %135 = load i8*, i8** %map_app203, align 8, !tbaa !13
  %cmp204 = icmp ne i8* %135, null
  br i1 %cmp204, label %if.then.206, label %if.end.210

if.then.206:                                      ; preds = %if.end.202
  %136 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app207 = getelementptr inbounds %struct._map, %struct._map* %136, i32 0, i32 13
  %137 = load i8*, i8** %map_app207, align 8, !tbaa !13
  %call208 = call i8* @newstr(i8* %137)
  %138 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_app209 = getelementptr inbounds %struct._map, %struct._map* %138, i32 0, i32 13
  store i8* %call208, i8** %map_app209, align 8, !tbaa !13
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.206, %if.end.202
  %139 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_tapp211 = getelementptr inbounds %struct._map, %struct._map* %139, i32 0, i32 14
  %140 = load i8*, i8** %map_tapp211, align 8, !tbaa !15
  %cmp212 = icmp ne i8* %140, null
  br i1 %cmp212, label %if.then.214, label %if.end.218

if.then.214:                                      ; preds = %if.end.210
  %141 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_tapp215 = getelementptr inbounds %struct._map, %struct._map* %141, i32 0, i32 14
  %142 = load i8*, i8** %map_tapp215, align 8, !tbaa !15
  %call216 = call i8* @newstr(i8* %142)
  %143 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_tapp217 = getelementptr inbounds %struct._map, %struct._map* %143, i32 0, i32 14
  store i8* %call216, i8** %map_tapp217, align 8, !tbaa !15
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.214, %if.end.210
  %144 = load %struct.dns_map*, %struct.dns_map** %map_p, align 8, !tbaa !1
  %145 = bitcast %struct.dns_map* %144 to i8*
  %146 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_db1 = getelementptr inbounds %struct._map, %struct._map* %146, i32 0, i32 5
  store i8* %145, i8** %map_db1, align 8, !tbaa !38
  %147 = bitcast %struct.dns_map** %map_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  ret i32 1
}

declare i8* @xalloc_tagged(i32, i8*, i32) #4

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

declare i32 @dns_string_to_type(i8*) #4

; Function Attrs: nounwind uwtable
define i8* @dns_map_lookup(%struct._map* %map, i8* %name, i8** %av, i32* %statp) #0 {
entry:
  %retval = alloca i8*, align 8
  %map.addr = alloca %struct._map*, align 8
  %name.addr = alloca i8*, align 8
  %av.addr = alloca i8**, align 8
  %statp.addr = alloca i32*, align 8
  %resnum = alloca i32, align 4
  %vp = alloca i8*, align 8
  %result = alloca i8*, align 8
  %vsize = alloca i64, align 8
  %map_p = alloca %struct.dns_map*, align 8
  %rr = alloca %struct.resource_record*, align 8
  %r = alloca %struct.DNS_REPLY_T*, align 8
  %len = alloca i64, align 8
  %appdomain = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %type = alloca i8*, align 8
  %value = alloca i8*, align 8
  %sz = alloca i32, align 4
  %new = alloca i8*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8** %av, i8*** %av.addr, align 8, !tbaa !1
  store i32* %statp, i32** %statp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %resnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %resnum, align 4, !tbaa !27
  %1 = bitcast i8** %vp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* null, i8** %vp, align 8, !tbaa !1
  %2 = bitcast i8** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %result, align 8, !tbaa !1
  %3 = bitcast i64* %vsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.dns_map** %map_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.resource_record** %rr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.resource_record* null, %struct.resource_record** %rr, align 8, !tbaa !1
  %6 = bitcast %struct.DNS_REPLY_T** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.DNS_REPLY_T* null, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %7 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %7 to i32
  %cmp = icmp sge i32 %conv, 20
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %9, i32 0, i32 2
  %10 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %11 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i8* %10, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_db1 = getelementptr inbounds %struct._map, %struct._map* %12, i32 0, i32 5
  %13 = load i8*, i8** %map_db1, align 8, !tbaa !38
  %14 = bitcast i8* %13 to %struct.dns_map*
  store %struct.dns_map* %14, %struct.dns_map** %map_p, align 8, !tbaa !1
  %15 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file = getelementptr inbounds %struct._map, %struct._map* %15, i32 0, i32 4
  %16 = load i8*, i8** %map_file, align 8, !tbaa !20
  %cmp2 = icmp ne i8* %16, null
  br i1 %cmp2, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %if.end
  %17 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file5 = getelementptr inbounds %struct._map, %struct._map* %17, i32 0, i32 4
  %18 = load i8*, i8** %map_file5, align 8, !tbaa !20
  %19 = load i8, i8* %18, align 1, !tbaa !10
  %conv6 = sext i8 %19 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true.4
  %20 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i8** %appdomain to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file10 = getelementptr inbounds %struct._map, %struct._map* %22, i32 0, i32 4
  %23 = load i8*, i8** %map_file10, align 8, !tbaa !20
  %call = call i64 @strlen(i8* %23) #9
  %24 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call11 = call i64 @strlen(i8* %24) #9
  %add = add i64 %call, %call11
  %add12 = add i64 %add, 2
  store i64 %add12, i64* %len, align 8, !tbaa !26
  %25 = load i64, i64* %len, align 8, !tbaa !26
  %26 = load i32, i32* @SmHeapGroup, align 4, !tbaa !27
  %call13 = call i8* @sm_malloc_tagged(i64 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 1240, i32 %26)
  store i8* %call13, i8** %appdomain, align 8, !tbaa !1
  %27 = load i8*, i8** %appdomain, align 8, !tbaa !1
  %cmp14 = icmp eq i8* %27, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.9
  %28 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 69, i32* %28, align 4, !tbaa !27
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.then.9
  %29 = load i8*, i8** %appdomain, align 8, !tbaa !1
  %30 = load i64, i64* %len, align 8, !tbaa !26
  %31 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %32 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file18 = getelementptr inbounds %struct._map, %struct._map* %32, i32 0, i32 4
  %33 = load i8*, i8** %map_file18, align 8, !tbaa !20
  %call19 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %29, i64 %30, i32 3, i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* %33)
  %34 = load i8*, i8** %appdomain, align 8, !tbaa !1
  %35 = load %struct.dns_map*, %struct.dns_map** %map_p, align 8, !tbaa !1
  %dns_m_type = getelementptr inbounds %struct.dns_map, %struct.dns_map* %35, i32 0, i32 0
  %36 = load i32, i32* %dns_m_type, align 4, !tbaa !34
  %37 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_timeout = getelementptr inbounds %struct._map, %struct._map* %37, i32 0, i32 18
  %38 = load i64, i64* %map_timeout, align 8, !tbaa !14
  %39 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_retry = getelementptr inbounds %struct._map, %struct._map* %39, i32 0, i32 19
  %40 = load i32, i32* %map_retry, align 4, !tbaa !36
  %call20 = call %struct.DNS_REPLY_T* @dns_lookup_int(i8* %34, i32 1, i32 %36, i64 %38, i32 %40)
  store %struct.DNS_REPLY_T* %call20, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %41 = load i8*, i8** %appdomain, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 1249)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16
  %42 = bitcast i8** %appdomain to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.193 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true.4, %if.end
  %44 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %45 = load %struct.dns_map*, %struct.dns_map** %map_p, align 8, !tbaa !1
  %dns_m_type22 = getelementptr inbounds %struct.dns_map, %struct.dns_map* %45, i32 0, i32 0
  %46 = load i32, i32* %dns_m_type22, align 4, !tbaa !34
  %47 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_timeout23 = getelementptr inbounds %struct._map, %struct._map* %47, i32 0, i32 18
  %48 = load i64, i64* %map_timeout23, align 8, !tbaa !14
  %49 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_retry24 = getelementptr inbounds %struct._map, %struct._map* %49, i32 0, i32 19
  %50 = load i32, i32* %map_retry24, align 4, !tbaa !36
  %call25 = call %struct.DNS_REPLY_T* @dns_lookup_int(i8* %44, i32 1, i32 %46, i64 %48, i32 %50)
  store %struct.DNS_REPLY_T* %call25, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %cleanup.cont
  %51 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %cmp27 = icmp eq %struct.DNS_REPLY_T* %51, null
  br i1 %cmp27, label %if.then.29, label %if.end.39

if.then.29:                                       ; preds = %if.end.26
  store i8* null, i8** %result, align 8, !tbaa !1
  %call30 = call i32* @__h_errno_location() #8
  %52 = load i32, i32* %call30, align 4, !tbaa !27
  %cmp31 = icmp eq i32 %52, 2
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.29
  %call33 = call i32* @__errno_location() #8
  %53 = load i32, i32* %call33, align 4, !tbaa !27
  %call34 = call i32 @transienterror(i32 %53)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %lor.lhs.false, %if.then.29
  %54 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 75, i32* %54, align 4, !tbaa !27
  br label %if.end.38

if.else.37:                                       ; preds = %lor.lhs.false
  %55 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 68, i32* %55, align 4, !tbaa !27
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  br label %cleanup.184

if.end.39:                                        ; preds = %if.end.26
  %56 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 0, i32* %56, align 4, !tbaa !27
  %57 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %dns_r_head = getelementptr inbounds %struct.DNS_REPLY_T, %struct.DNS_REPLY_T* %57, i32 0, i32 2
  %58 = load %struct.resource_record*, %struct.resource_record** %dns_r_head, align 8, !tbaa !39
  store %struct.resource_record* %58, %struct.resource_record** %rr, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.39
  %59 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %cmp40 = icmp ne %struct.resource_record* %59, null
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = bitcast i8** %type to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  store i8* null, i8** %type, align 8, !tbaa !1
  %61 = bitcast i8** %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  store i8* null, i8** %value, align 8, !tbaa !1
  %62 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_type = getelementptr inbounds %struct.resource_record, %struct.resource_record* %62, i32 0, i32 1
  %63 = load i32, i32* %rr_type, align 4, !tbaa !43
  switch i32 %63, label %sw.epilog [
    i32 2, label %sw.bb
    i32 5, label %sw.bb.42
    i32 18, label %sw.bb.45
    i32 33, label %sw.bb.47
    i32 12, label %sw.bb.50
    i32 16, label %sw.bb.53
    i32 15, label %sw.bb.56
    i32 1, label %sw.bb.61
  ]

sw.bb:                                            ; preds = %for.body
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8** %type, align 8, !tbaa !1
  %64 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_u = getelementptr inbounds %struct.resource_record, %struct.resource_record* %64, i32 0, i32 5
  %rr_txt = bitcast %union.anon.0* %rr_u to i8**
  %65 = load i8*, i8** %rr_txt, align 8, !tbaa !1
  store i8* %65, i8** %value, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.42:                                         ; preds = %for.body
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8** %type, align 8, !tbaa !1
  %66 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_u43 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %66, i32 0, i32 5
  %rr_txt44 = bitcast %union.anon.0* %rr_u43 to i8**
  %67 = load i8*, i8** %rr_txt44, align 8, !tbaa !1
  store i8* %67, i8** %value, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.45:                                         ; preds = %for.body
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8** %type, align 8, !tbaa !1
  %68 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_u46 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %68, i32 0, i32 5
  %rr_mx = bitcast %union.anon.0* %rr_u46 to %struct.MX_RECORD_T**
  %69 = load %struct.MX_RECORD_T*, %struct.MX_RECORD_T** %rr_mx, align 8, !tbaa !1
  %mx_r_domain = getelementptr inbounds %struct.MX_RECORD_T, %struct.MX_RECORD_T* %69, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %mx_r_domain, i32 0, i32 0
  store i8* %arraydecay, i8** %value, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.47:                                         ; preds = %for.body
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8** %type, align 8, !tbaa !1
  %70 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_u48 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %70, i32 0, i32 5
  %rr_srv = bitcast %union.anon.0* %rr_u48 to %struct.SRV_RECORDT_T**
  %71 = load %struct.SRV_RECORDT_T*, %struct.SRV_RECORDT_T** %rr_srv, align 8, !tbaa !1
  %srv_r_target = getelementptr inbounds %struct.SRV_RECORDT_T, %struct.SRV_RECORDT_T* %71, i32 0, i32 3
  %arraydecay49 = getelementptr inbounds [1 x i8], [1 x i8]* %srv_r_target, i32 0, i32 0
  store i8* %arraydecay49, i8** %value, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.50:                                         ; preds = %for.body
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8** %type, align 8, !tbaa !1
  %72 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_u51 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %72, i32 0, i32 5
  %rr_txt52 = bitcast %union.anon.0* %rr_u51 to i8**
  %73 = load i8*, i8** %rr_txt52, align 8, !tbaa !1
  store i8* %73, i8** %value, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.53:                                         ; preds = %for.body
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8** %type, align 8, !tbaa !1
  %74 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_u54 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %74, i32 0, i32 5
  %rr_txt55 = bitcast %union.anon.0* %rr_u54 to i8**
  %75 = load i8*, i8** %rr_txt55, align 8, !tbaa !1
  store i8* %75, i8** %value, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.56:                                         ; preds = %for.body
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8** %type, align 8, !tbaa !1
  %76 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_u57 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %76, i32 0, i32 5
  %rr_mx58 = bitcast %union.anon.0* %rr_u57 to %struct.MX_RECORD_T**
  %77 = load %struct.MX_RECORD_T*, %struct.MX_RECORD_T** %rr_mx58, align 8, !tbaa !1
  %mx_r_domain59 = getelementptr inbounds %struct.MX_RECORD_T, %struct.MX_RECORD_T* %77, i32 0, i32 1
  %arraydecay60 = getelementptr inbounds [1 x i8], [1 x i8]* %mx_r_domain59, i32 0, i32 0
  store i8* %arraydecay60, i8** %value, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.61:                                         ; preds = %for.body
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8** %type, align 8, !tbaa !1
  %78 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_u62 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %78, i32 0, i32 5
  %rr_a = bitcast %union.anon.0* %rr_u62 to %struct.in_addr**
  %79 = load %struct.in_addr*, %struct.in_addr** %rr_a, align 8, !tbaa !1
  %coerce.dive = getelementptr %struct.in_addr, %struct.in_addr* %79, i32 0, i32 0
  %80 = load i32, i32* %coerce.dive, align 4
  %call63 = call i8* @inet_ntoa(i32 %80) #1
  store i8* %call63, i8** %value, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.61, %sw.bb.56, %sw.bb.53, %sw.bb.50, %sw.bb.47, %sw.bb.45, %sw.bb.42, %sw.bb
  %81 = load i8*, i8** %value, align 8, !tbaa !1
  %call64 = call i32 @strreplnonprt(i8* %81, i32 88)
  %82 = load %struct.dns_map*, %struct.dns_map** %map_p, align 8, !tbaa !1
  %dns_m_type65 = getelementptr inbounds %struct.dns_map, %struct.dns_map* %82, i32 0, i32 0
  %83 = load i32, i32* %dns_m_type65, align 4, !tbaa !34
  %84 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_type66 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %84, i32 0, i32 1
  %85 = load i32, i32* %rr_type66, align 4, !tbaa !43
  %cmp67 = icmp ne i32 %83, %85
  br i1 %cmp67, label %if.then.69, label %if.end.86

if.then.69:                                       ; preds = %sw.epilog
  %86 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv70 = zext i8 %86 to i32
  %cmp71 = icmp sge i32 %conv70, 40
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.85

land.lhs.true.73:                                 ; preds = %if.then.69
  %87 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool74 = icmp ne i32 %87, 0
  br i1 %tobool74, label %if.end.85, label %if.then.75

if.then.75:                                       ; preds = %land.lhs.true.73
  %88 = load i8*, i8** %type, align 8, !tbaa !1
  %cmp76 = icmp ne i8* %88, null
  br i1 %cmp76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.75
  %89 = load i8*, i8** %type, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.then.75
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %89, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %cond.false ]
  %90 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_type78 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %90, i32 0, i32 1
  %91 = load i32, i32* %rr_type78, align 4, !tbaa !43
  %92 = load i8*, i8** %value, align 8, !tbaa !1
  %cmp79 = icmp ne i8* %92, null
  br i1 %cmp79, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %cond.end
  %93 = load i8*, i8** %value, align 8, !tbaa !1
  br label %cond.end.83

cond.false.82:                                    ; preds = %cond.end
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.82, %cond.true.81
  %cond84 = phi i8* [ %93, %cond.true.81 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), %cond.false.82 ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0), i8* %cond, i32 %91, i8* %cond84)
  br label %if.end.85

if.end.85:                                        ; preds = %cond.end.83, %land.lhs.true.73, %if.then.69
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.152

if.end.86:                                        ; preds = %sw.epilog
  %94 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv87 = zext i8 %94 to i32
  %cmp88 = icmp sge i32 %conv87, 40
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.106

land.lhs.true.90:                                 ; preds = %if.end.86
  %95 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool91 = icmp ne i32 %95, 0
  br i1 %tobool91, label %if.end.106, label %if.then.92

if.then.92:                                       ; preds = %land.lhs.true.90
  %96 = load i8*, i8** %type, align 8, !tbaa !1
  %cmp93 = icmp ne i8* %96, null
  br i1 %cmp93, label %cond.true.95, label %cond.false.96

cond.true.95:                                     ; preds = %if.then.92
  %97 = load i8*, i8** %type, align 8, !tbaa !1
  br label %cond.end.97

cond.false.96:                                    ; preds = %if.then.92
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.true.95
  %cond98 = phi i8* [ %97, %cond.true.95 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %cond.false.96 ]
  %98 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_type99 = getelementptr inbounds %struct.resource_record, %struct.resource_record* %98, i32 0, i32 1
  %99 = load i32, i32* %rr_type99, align 4, !tbaa !43
  %100 = load i8*, i8** %value, align 8, !tbaa !1
  %cmp100 = icmp ne i8* %100, null
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %cond.end.97
  %101 = load i8*, i8** %value, align 8, !tbaa !1
  br label %cond.end.104

cond.false.103:                                   ; preds = %cond.end.97
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.103, %cond.true.102
  %cond105 = phi i8* [ %101, %cond.true.102 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), %cond.false.103 ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0), i8* %cond98, i32 %99, i8* %cond105)
  br label %if.end.106

if.end.106:                                       ; preds = %cond.end.104, %land.lhs.true.90, %if.end.86
  %102 = load i8*, i8** %value, align 8, !tbaa !1
  %cmp107 = icmp ne i8* %102, null
  br i1 %cmp107, label %land.lhs.true.109, label %if.else.121

land.lhs.true.109:                                ; preds = %if.end.106
  %103 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim = getelementptr inbounds %struct._map, %struct._map* %103, i32 0, i32 11
  %104 = load i8, i8* %map_coldelim, align 1, !tbaa !18
  %conv110 = sext i8 %104 to i32
  %cmp111 = icmp eq i32 %conv110, 0
  br i1 %cmp111, label %if.then.119, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %land.lhs.true.109
  %105 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd = getelementptr inbounds %struct._map, %struct._map* %105, i32 0, i32 21
  %106 = load i32, i32* %map_lockfd, align 4, !tbaa !37
  %cmp114 = icmp eq i32 %106, 1
  br i1 %cmp114, label %if.then.119, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %lor.lhs.false.113
  %107 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %107, i32 0, i32 3
  %108 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %and = and i64 %108, 16
  %cmp117 = icmp ne i64 %and, 0
  br i1 %cmp117, label %if.then.119, label %if.else.121

if.then.119:                                      ; preds = %lor.lhs.false.116, %lor.lhs.false.113, %land.lhs.true.109
  %109 = load i8*, i8** %value, align 8, !tbaa !1
  %call120 = call i8* @newstr(i8* %109)
  store i8* %call120, i8** %vp, align 8, !tbaa !1
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.152

if.else.121:                                      ; preds = %lor.lhs.false.116, %if.end.106
  %110 = load i8*, i8** %vp, align 8, !tbaa !1
  %cmp122 = icmp eq i8* %110, null
  br i1 %cmp122, label %if.then.124, label %if.else.126

if.then.124:                                      ; preds = %if.else.121
  %111 = load i8*, i8** %value, align 8, !tbaa !1
  %call125 = call i8* @newstr(i8* %111)
  store i8* %call125, i8** %vp, align 8, !tbaa !1
  br label %if.end.150

if.else.126:                                      ; preds = %if.else.121
  %112 = bitcast i32* %sz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #1
  %113 = bitcast i8** %new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #1
  %114 = load i8*, i8** %vp, align 8, !tbaa !1
  %call127 = call i64 @strlen(i8* %114) #9
  %115 = load i8*, i8** %value, align 8, !tbaa !1
  %call128 = call i64 @strlen(i8* %115) #9
  %add129 = add i64 %call127, %call128
  %add130 = add i64 %add129, 2
  %conv131 = trunc i64 %add130 to i32
  store i32 %conv131, i32* %sz, align 4, !tbaa !27
  %116 = load i32, i32* %sz, align 4, !tbaa !27
  %call132 = call i8* @xalloc_tagged(i32 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 1364)
  store i8* %call132, i8** %new, align 8, !tbaa !1
  %117 = load i8*, i8** %new, align 8, !tbaa !1
  %118 = load i32, i32* %sz, align 4, !tbaa !27
  %conv133 = sext i32 %118 to i64
  %119 = load i8*, i8** %vp, align 8, !tbaa !1
  %120 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim134 = getelementptr inbounds %struct._map, %struct._map* %120, i32 0, i32 11
  %121 = load i8, i8* %map_coldelim134, align 1, !tbaa !18
  %conv135 = sext i8 %121 to i32
  %122 = load i8*, i8** %value, align 8, !tbaa !1
  %call136 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %117, i64 %conv133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %119, i32 %conv135, i8* %122)
  %123 = load i8*, i8** %vp, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 1367)
  %124 = load i8*, i8** %new, align 8, !tbaa !1
  store i8* %124, i8** %vp, align 8, !tbaa !1
  %125 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd137 = getelementptr inbounds %struct._map, %struct._map* %125, i32 0, i32 21
  %126 = load i32, i32* %map_lockfd137, align 4, !tbaa !37
  %cmp138 = icmp sgt i32 %126, 0
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.145

land.lhs.true.140:                                ; preds = %if.else.126
  %127 = load i32, i32* %resnum, align 4, !tbaa !27
  %inc = add nsw i32 %127, 1
  store i32 %inc, i32* %resnum, align 4, !tbaa !27
  %128 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd141 = getelementptr inbounds %struct._map, %struct._map* %128, i32 0, i32 21
  %129 = load i32, i32* %map_lockfd141, align 4, !tbaa !37
  %cmp142 = icmp sge i32 %inc, %129
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %land.lhs.true.140
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.146

if.end.145:                                       ; preds = %land.lhs.true.140, %if.else.126
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.146

cleanup.146:                                      ; preds = %if.end.145, %if.then.144
  %130 = bitcast i8** %new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast i32* %sz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %cleanup.dest.148 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.148, label %cleanup.152 [
    i32 0, label %cleanup.cont.149
  ]

cleanup.cont.149:                                 ; preds = %cleanup.146
  br label %if.end.150

if.end.150:                                       ; preds = %cleanup.cont.149, %if.then.124
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.152

cleanup.152:                                      ; preds = %if.end.151, %cleanup.146, %if.then.119, %if.end.85
  %132 = bitcast i8** %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i8** %type to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %cleanup.dest.154 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.154, label %unreachable [
    i32 0, label %cleanup.cont.155
    i32 5, label %for.inc
    i32 3, label %for.end
  ]

cleanup.cont.155:                                 ; preds = %cleanup.152
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.155, %cleanup.152
  %134 = load %struct.resource_record*, %struct.resource_record** %rr, align 8, !tbaa !1
  %rr_next = getelementptr inbounds %struct.resource_record, %struct.resource_record* %134, i32 0, i32 6
  %135 = load %struct.resource_record*, %struct.resource_record** %rr_next, align 8, !tbaa !45
  store %struct.resource_record* %135, %struct.resource_record** %rr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %cleanup.152, %for.cond
  %136 = load i8*, i8** %vp, align 8, !tbaa !1
  %cmp156 = icmp eq i8* %136, null
  br i1 %cmp156, label %if.then.158, label %if.end.166

if.then.158:                                      ; preds = %for.end
  store i8* null, i8** %result, align 8, !tbaa !1
  %137 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 68, i32* %137, align 4, !tbaa !27
  %138 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv159 = zext i8 %138 to i32
  %cmp160 = icmp sge i32 %conv159, 40
  br i1 %cmp160, label %land.lhs.true.162, label %if.end.165

land.lhs.true.162:                                ; preds = %if.then.158
  %139 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool163 = icmp ne i32 %139, 0
  br i1 %tobool163, label %if.end.165, label %if.then.164

if.then.164:                                      ; preds = %land.lhs.true.162
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.164, %land.lhs.true.162, %if.then.158
  br label %cleanup.184

if.end.166:                                       ; preds = %for.end
  %140 = load i8*, i8** %vp, align 8, !tbaa !1
  %141 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim167 = getelementptr inbounds %struct._map, %struct._map* %141, i32 0, i32 11
  %142 = load i8, i8* %map_coldelim167, align 1, !tbaa !18
  %conv168 = sext i8 %142 to i32
  call void @truncate_at_delim(i8* %140, i64 628, i32 %conv168)
  %143 = load i8*, i8** %vp, align 8, !tbaa !1
  %call169 = call i64 @strlen(i8* %143) #9
  store i64 %call169, i64* %vsize, align 8, !tbaa !26
  %144 = load i32, i32* @LogLevel, align 4, !tbaa !27
  %cmp170 = icmp sgt i32 %144, 9
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.166
  %145 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %145, i32 0, i32 25
  %146 = load i8*, i8** %e_id, align 8, !tbaa !46
  %147 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %148 = load i8*, i8** %vp, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %146, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i8* %147, i8* %148)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %if.end.166
  %149 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags174 = getelementptr inbounds %struct._map, %struct._map* %149, i32 0, i32 3
  %150 = load i64, i64* %map_mflags174, align 8, !tbaa !5
  %and175 = and i64 %150, 16
  %cmp176 = icmp ne i64 %and175, 0
  br i1 %cmp176, label %if.then.178, label %if.else.181

if.then.178:                                      ; preds = %if.end.173
  %151 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %152 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %153 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call179 = call i64 @strlen(i8* %153) #9
  %call180 = call i8* @map_rewrite(%struct._map* %151, i8* %152, i64 %call179, i8** null)
  store i8* %call180, i8** %result, align 8, !tbaa !1
  br label %if.end.183

if.else.181:                                      ; preds = %if.end.173
  %154 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %155 = load i8*, i8** %vp, align 8, !tbaa !1
  %156 = load i64, i64* %vsize, align 8, !tbaa !26
  %157 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %call182 = call i8* @map_rewrite(%struct._map* %154, i8* %155, i64 %156, i8** %157)
  store i8* %call182, i8** %result, align 8, !tbaa !1
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.181, %if.then.178
  br label %cleanup.184

cleanup.184:                                      ; preds = %if.end.183, %if.end.165, %if.end.38
  %158 = load i8*, i8** %vp, align 8, !tbaa !1
  %cmp185 = icmp ne i8* %158, null
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %cleanup.184
  %159 = load i8*, i8** %vp, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 1398)
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.187, %cleanup.184
  %160 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  %cmp189 = icmp ne %struct.DNS_REPLY_T* %160, null
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %if.end.188
  %161 = load %struct.DNS_REPLY_T*, %struct.DNS_REPLY_T** %r, align 8, !tbaa !1
  call void @dns_free_data(%struct.DNS_REPLY_T* %161)
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.191, %if.end.188
  %162 = load i8*, i8** %result, align 8, !tbaa !1
  store i8* %162, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.193

cleanup.193:                                      ; preds = %if.end.192, %cleanup
  %163 = bitcast %struct.DNS_REPLY_T** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast %struct.resource_record** %rr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast %struct.dns_map** %map_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast i64* %vsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = bitcast i8** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast i8** %vp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i32* %resnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = load i8*, i8** %retval
  ret i8* %170

unreachable:                                      ; preds = %cleanup.152
  unreachable
}

declare i8* @sm_malloc_tagged(i64, i8*, i32, i32) #4

declare i64 @sm_strlcpyn(i8*, i64, i32, ...) #4

declare %struct.DNS_REPLY_T* @dns_lookup_int(i8*, i32, i32, i64, i32) #4

declare i32 @transienterror(i32) #4

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #3

declare i32 @strreplnonprt(i8*, i32) #4

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #4

declare void @truncate_at_delim(i8*, i64, i32) #4

declare void @sm_syslog(i32, i8*, i8*, ...) #4

declare void @dns_free_data(%struct.DNS_REPLY_T*) #4

; Function Attrs: nounwind uwtable
define i32 @syslog_map_parseargs(%struct._map* %map, i8* %args) #0 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct._map*, align 8
  %args.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %priority = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %args, i8** %args.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %args.addr, align 8, !tbaa !1
  store i8* %1, i8** %p, align 8, !tbaa !1
  %2 = bitcast i8** %priority to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %priority, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.93, %entry
  %3 = load i8*, i8** %p, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !10
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end.94

while.body:                                       ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.9, %while.body
  %5 = load i8*, i8** %p, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !10
  %conv3 = sext i8 %6 to i32
  %and = and i32 %conv3, -128
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.2
  %7 = load i8*, i8** %p, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !10
  %conv6 = sext i8 %8 to i32
  %idxprom = sext i32 %conv6 to i64
  %call = call i16** @__ctype_b_loc() #8
  %9 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2, !tbaa !12
  %conv7 = zext i16 %10 to i32
  %and8 = and i32 %conv7, 8192
  %tobool = icmp ne i32 %and8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.2
  %11 = phi i1 [ false, %while.cond.2 ], [ %tobool, %land.rhs ]
  br i1 %11, label %while.body.9, label %while.end

while.body.9:                                     ; preds = %land.end
  %12 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %while.cond.2

while.end:                                        ; preds = %land.end
  %13 = load i8*, i8** %p, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !10
  %conv10 = sext i8 %14 to i32
  %cmp11 = icmp ne i32 %conv10, 45
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %while.end.94

if.end:                                           ; preds = %while.end
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr13, i8** %p, align 8, !tbaa !1
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !10
  %conv14 = sext i8 %17 to i32
  %cmp15 = icmp eq i32 %conv14, 68
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end
  %18 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %18, i32 0, i32 3
  %19 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %or = or i64 %19, 524288
  store i64 %or, i64* %map_mflags, align 8, !tbaa !5
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr18, i8** %p, align 8, !tbaa !1
  br label %if.end.93

if.else:                                          ; preds = %if.end
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !10
  %conv19 = sext i8 %22 to i32
  %cmp20 = icmp eq i32 %conv19, 83
  br i1 %cmp20, label %if.then.22, label %if.else.30

if.then.22:                                       ; preds = %if.else
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr23 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr23, i8** %p, align 8, !tbaa !1
  %24 = load i8, i8* %incdec.ptr23, align 1, !tbaa !10
  %25 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_spacesub = getelementptr inbounds %struct._map, %struct._map* %25, i32 0, i32 12
  store i8 %24, i8* %map_spacesub, align 1, !tbaa !11
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %27 = load i8, i8* %26, align 1, !tbaa !10
  %conv24 = sext i8 %27 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.22
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr28, i8** %p, align 8, !tbaa !1
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.22
  br label %if.end.92

if.else.30:                                       ; preds = %if.else
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !10
  %conv31 = sext i8 %30 to i32
  %cmp32 = icmp eq i32 %conv31, 76
  br i1 %cmp32, label %if.then.34, label %if.else.88

if.then.34:                                       ; preds = %if.else.30
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.53, %if.then.34
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr36, i8** %p, align 8, !tbaa !1
  %32 = load i8, i8* %incdec.ptr36, align 1, !tbaa !10
  %conv37 = sext i8 %32 to i32
  %cmp38 = icmp ne i32 %conv37, 0
  br i1 %cmp38, label %land.lhs.true, label %land.end.52

land.lhs.true:                                    ; preds = %while.cond.35
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !10
  %conv40 = sext i8 %34 to i32
  %and41 = and i32 %conv40, -128
  %cmp42 = icmp eq i32 %and41, 0
  br i1 %cmp42, label %land.rhs.44, label %land.end.52

land.rhs.44:                                      ; preds = %land.lhs.true
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !10
  %conv45 = sext i8 %36 to i32
  %idxprom46 = sext i32 %conv45 to i64
  %call47 = call i16** @__ctype_b_loc() #8
  %37 = load i16*, i16** %call47, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i16, i16* %37, i64 %idxprom46
  %38 = load i16, i16* %arrayidx48, align 2, !tbaa !12
  %conv49 = zext i16 %38 to i32
  %and50 = and i32 %conv49, 8192
  %tobool51 = icmp ne i32 %and50, 0
  br label %land.end.52

land.end.52:                                      ; preds = %land.rhs.44, %land.lhs.true, %while.cond.35
  %39 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.35 ], [ %tobool51, %land.rhs.44 ]
  br i1 %39, label %while.body.53, label %while.end.54

while.body.53:                                    ; preds = %land.end.52
  br label %while.cond.35

while.end.54:                                     ; preds = %land.end.52
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !10
  %conv55 = sext i8 %41 to i32
  %cmp56 = icmp eq i32 %conv55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %while.end.54
  br label %while.end.94

if.end.59:                                        ; preds = %while.end.54
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %42, i8** %priority, align 8, !tbaa !1
  br label %while.cond.60

while.cond.60:                                    ; preds = %while.body.79, %if.end.59
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %44 = load i8, i8* %43, align 1, !tbaa !10
  %conv61 = sext i8 %44 to i32
  %cmp62 = icmp ne i32 %conv61, 0
  br i1 %cmp62, label %land.rhs.64, label %land.end.78

land.rhs.64:                                      ; preds = %while.cond.60
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !10
  %conv65 = sext i8 %46 to i32
  %and66 = and i32 %conv65, -128
  %cmp67 = icmp eq i32 %and66, 0
  br i1 %cmp67, label %land.rhs.69, label %land.end.77

land.rhs.69:                                      ; preds = %land.rhs.64
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %48 = load i8, i8* %47, align 1, !tbaa !10
  %conv70 = sext i8 %48 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %call72 = call i16** @__ctype_b_loc() #8
  %49 = load i16*, i16** %call72, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i16, i16* %49, i64 %idxprom71
  %50 = load i16, i16* %arrayidx73, align 2, !tbaa !12
  %conv74 = zext i16 %50 to i32
  %and75 = and i32 %conv74, 8192
  %tobool76 = icmp ne i32 %and75, 0
  br label %land.end.77

land.end.77:                                      ; preds = %land.rhs.69, %land.rhs.64
  %51 = phi i1 [ false, %land.rhs.64 ], [ %tobool76, %land.rhs.69 ]
  %lnot = xor i1 %51, true
  br label %land.end.78

land.end.78:                                      ; preds = %land.end.77, %while.cond.60
  %52 = phi i1 [ false, %while.cond.60 ], [ %lnot, %land.end.77 ]
  br i1 %52, label %while.body.79, label %while.end.81

while.body.79:                                    ; preds = %land.end.78
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr80 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr80, i8** %p, align 8, !tbaa !1
  br label %while.cond.60

while.end.81:                                     ; preds = %land.end.78
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !10
  %conv82 = sext i8 %55 to i32
  %cmp83 = icmp ne i32 %conv82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %while.end.81
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr86 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr86, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %56, align 1, !tbaa !10
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %while.end.81
  br label %if.end.91

if.else.88:                                       ; preds = %if.else.30
  %57 = load i8*, i8** %p, align 8, !tbaa !1
  %58 = load i8, i8* %57, align 1, !tbaa !10
  %conv89 = sext i8 %58 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i32 0, i32 0), i32 %conv89)
  %59 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr90 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr90, i8** %p, align 8, !tbaa !1
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.end.87
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.29
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.17
  br label %while.cond

while.end.94:                                     ; preds = %if.then.58, %if.then, %while.cond
  %60 = load i8*, i8** %priority, align 8, !tbaa !1
  %cmp95 = icmp eq i8* %60, null
  br i1 %cmp95, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %while.end.94
  %61 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd = getelementptr inbounds %struct._map, %struct._map* %61, i32 0, i32 21
  store i32 6, i32* %map_lockfd, align 4, !tbaa !37
  br label %if.end.160

if.else.98:                                       ; preds = %while.end.94
  %62 = load i8*, i8** %priority, align 8, !tbaa !1
  %call99 = call i32 @sm_strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8* %62, i64 4)
  %cmp100 = icmp eq i32 %call99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.else.98
  %63 = load i8*, i8** %priority, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %63, i64 4
  store i8* %add.ptr, i8** %priority, align 8, !tbaa !1
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.else.98
  %64 = load i8*, i8** %priority, align 8, !tbaa !1
  %call104 = call i32 @sm_strcasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* %64)
  %cmp105 = icmp eq i32 %call104, 0
  br i1 %cmp105, label %if.then.107, label %if.else.109

if.then.107:                                      ; preds = %if.end.103
  %65 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd108 = getelementptr inbounds %struct._map, %struct._map* %65, i32 0, i32 21
  store i32 0, i32* %map_lockfd108, align 4, !tbaa !37
  br label %if.end.159

if.else.109:                                      ; preds = %if.end.103
  %66 = load i8*, i8** %priority, align 8, !tbaa !1
  %call110 = call i32 @sm_strcasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8* %66)
  %cmp111 = icmp eq i32 %call110, 0
  br i1 %cmp111, label %if.then.113, label %if.else.115

if.then.113:                                      ; preds = %if.else.109
  %67 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd114 = getelementptr inbounds %struct._map, %struct._map* %67, i32 0, i32 21
  store i32 1, i32* %map_lockfd114, align 4, !tbaa !37
  br label %if.end.158

if.else.115:                                      ; preds = %if.else.109
  %68 = load i8*, i8** %priority, align 8, !tbaa !1
  %call116 = call i32 @sm_strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* %68)
  %cmp117 = icmp eq i32 %call116, 0
  br i1 %cmp117, label %if.then.119, label %if.else.121

if.then.119:                                      ; preds = %if.else.115
  %69 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd120 = getelementptr inbounds %struct._map, %struct._map* %69, i32 0, i32 21
  store i32 2, i32* %map_lockfd120, align 4, !tbaa !37
  br label %if.end.157

if.else.121:                                      ; preds = %if.else.115
  %70 = load i8*, i8** %priority, align 8, !tbaa !1
  %call122 = call i32 @sm_strcasecmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i8* %70)
  %cmp123 = icmp eq i32 %call122, 0
  br i1 %cmp123, label %if.then.125, label %if.else.127

if.then.125:                                      ; preds = %if.else.121
  %71 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd126 = getelementptr inbounds %struct._map, %struct._map* %71, i32 0, i32 21
  store i32 3, i32* %map_lockfd126, align 4, !tbaa !37
  br label %if.end.156

if.else.127:                                      ; preds = %if.else.121
  %72 = load i8*, i8** %priority, align 8, !tbaa !1
  %call128 = call i32 @sm_strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* %72)
  %cmp129 = icmp eq i32 %call128, 0
  br i1 %cmp129, label %if.then.131, label %if.else.133

if.then.131:                                      ; preds = %if.else.127
  %73 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd132 = getelementptr inbounds %struct._map, %struct._map* %73, i32 0, i32 21
  store i32 4, i32* %map_lockfd132, align 4, !tbaa !37
  br label %if.end.155

if.else.133:                                      ; preds = %if.else.127
  %74 = load i8*, i8** %priority, align 8, !tbaa !1
  %call134 = call i32 @sm_strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* %74)
  %cmp135 = icmp eq i32 %call134, 0
  br i1 %cmp135, label %if.then.137, label %if.else.139

if.then.137:                                      ; preds = %if.else.133
  %75 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd138 = getelementptr inbounds %struct._map, %struct._map* %75, i32 0, i32 21
  store i32 5, i32* %map_lockfd138, align 4, !tbaa !37
  br label %if.end.154

if.else.139:                                      ; preds = %if.else.133
  %76 = load i8*, i8** %priority, align 8, !tbaa !1
  %call140 = call i32 @sm_strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i8* %76)
  %cmp141 = icmp eq i32 %call140, 0
  br i1 %cmp141, label %if.then.143, label %if.else.145

if.then.143:                                      ; preds = %if.else.139
  %77 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd144 = getelementptr inbounds %struct._map, %struct._map* %77, i32 0, i32 21
  store i32 6, i32* %map_lockfd144, align 4, !tbaa !37
  br label %if.end.153

if.else.145:                                      ; preds = %if.else.139
  %78 = load i8*, i8** %priority, align 8, !tbaa !1
  %call146 = call i32 @sm_strcasecmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* %78)
  %cmp147 = icmp eq i32 %call146, 0
  br i1 %cmp147, label %if.then.149, label %if.else.151

if.then.149:                                      ; preds = %if.else.145
  %79 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd150 = getelementptr inbounds %struct._map, %struct._map* %79, i32 0, i32 21
  store i32 7, i32* %map_lockfd150, align 4, !tbaa !37
  br label %if.end.152

if.else.151:                                      ; preds = %if.else.145
  %80 = load i8*, i8** %priority, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i32 0, i32 0), i8* %80)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.152:                                       ; preds = %if.then.149
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.143
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.137
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.131
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.125
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.then.119
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.then.113
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.then.107
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.then.97
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.160, %if.else.151
  %81 = bitcast i8** %priority to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare i32 @sm_strncasecmp(i8*, i8*, i64) #4

declare i32 @sm_strcasecmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define i8* @syslog_map_lookup(%struct._map* %map, i8* %string, i8** %args, i32* %statp) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %string.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  %statp.addr = alloca i32*, align 8
  %ptr = alloca i8*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %string, i8** %string.addr, align 8, !tbaa !1
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  store i32* %statp, i32** %statp.addr, align 8, !tbaa !1
  %0 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %3) #9
  %4 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %call1 = call i8* @map_rewrite(%struct._map* %1, i8* %2, i64 %call, i8** %4)
  store i8* %call1, i8** %ptr, align 8, !tbaa !1
  %5 = load i8*, i8** %ptr, align 8, !tbaa !1
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %6 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %6 to i32
  %cmp2 = icmp sge i32 %conv, 20
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %8 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %8, i32 0, i32 2
  %9 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %10 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd = getelementptr inbounds %struct._map, %struct._map* %10, i32 0, i32 21
  %11 = load i32, i32* %map_lockfd, align 4, !tbaa !37
  %12 = load i8*, i8** %ptr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.52, i32 0, i32 0), i8* %9, i32 %11, i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then
  %13 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd5 = getelementptr inbounds %struct._map, %struct._map* %13, i32 0, i32 21
  %14 = load i32, i32* %map_lockfd5, align 4, !tbaa !37
  %15 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %15, i32 0, i32 25
  %16 = load i8*, i8** %e_id, align 8, !tbaa !46
  %17 = load i8*, i8** %ptr, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 %14, i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i8* %17)
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %18 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 0, i32* %18, align 4, !tbaa !27
  %19 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i32 @text_map_open(%struct._map* %map, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct._map*, align 8
  %mode.addr = alloca i32, align 4
  %sff = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %save_errno = alloca i32, align 4
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !27
  %0 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %2 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %4, i32 0, i32 2
  %5 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %6 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file = getelementptr inbounds %struct._map, %struct._map* %6, i32 0, i32 4
  %7 = load i8*, i8** %map_file, align 8, !tbaa !20
  %8 = load i32, i32* %mode.addr, align 4, !tbaa !27
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i32 0, i32 0), i8* %5, i8* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i32, i32* %mode.addr, align 4, !tbaa !27
  %and = and i32 %9, 3
  store i32 %and, i32* %mode.addr, align 4, !tbaa !27
  %10 = load i32, i32* %mode.addr, align 4, !tbaa !27
  %cmp2 = icmp ne i32 %10, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %call = call i32* @__errno_location() #8
  store i32 1, i32* %call, align 4, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %11 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file6 = getelementptr inbounds %struct._map, %struct._map* %11, i32 0, i32 4
  %12 = load i8*, i8** %map_file6, align 8, !tbaa !20
  %13 = load i8, i8* %12, align 1, !tbaa !10
  %conv7 = sext i8 %13 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.5
  %14 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname11 = getelementptr inbounds %struct._map, %struct._map* %14, i32 0, i32 2
  %15 = load i8*, i8** %map_mname11, align 8, !tbaa !19
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.55, i32 0, i32 0), i8* %15)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.5
  %16 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file13 = getelementptr inbounds %struct._map, %struct._map* %16, i32 0, i32 4
  %17 = load i8*, i8** %map_file13, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %conv14 = sext i8 %18 to i32
  %cmp15 = icmp ne i32 %conv14, 47
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.12
  %19 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname18 = getelementptr inbounds %struct._map, %struct._map* %19, i32 0, i32 2
  %20 = load i8*, i8** %map_mname18, align 8, !tbaa !19
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.56, i32 0, i32 0), i8* %20)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.12
  store i64 132, i64* %sff, align 8, !tbaa !26
  %21 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !27
  %and20 = and i32 %21, 8192
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.19
  %22 = load i64, i64* %sff, align 8, !tbaa !26
  %or = or i64 %22, 1024
  store i64 %or, i64* %sff, align 8, !tbaa !26
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.19
  %23 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !27
  %and24 = and i32 %23, 256
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %if.end.23
  %24 = load i64, i64* %sff, align 8, !tbaa !26
  %or27 = or i64 %24, 256
  store i64 %or27, i64* %sff, align 8, !tbaa !26
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.23
  %25 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file29 = getelementptr inbounds %struct._map, %struct._map* %25, i32 0, i32 4
  %26 = load i8*, i8** %map_file29, align 8, !tbaa !20
  %27 = load i32, i32* @RunAsUid, align 4, !tbaa !27
  %28 = load i32, i32* @RunAsGid, align 4, !tbaa !27
  %29 = load i8*, i8** @RunAsUserName, align 8, !tbaa !1
  %30 = load i64, i64* %sff, align 8, !tbaa !26
  %call30 = call i32 @safefile(i8* %26, i32 %27, i32 %28, i8* %29, i64 %30, i32 256, %struct.stat* null)
  store i32 %call30, i32* %i, align 4, !tbaa !27
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.50

if.then.33:                                       ; preds = %if.end.28
  %31 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %call34 = call i32* @__errno_location() #8
  %32 = load i32, i32* %call34, align 4, !tbaa !27
  store i32 %32, i32* %save_errno, align 4, !tbaa !27
  %33 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv35 = zext i8 %33 to i32
  %cmp36 = icmp sge i32 %conv35, 2
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.41

land.lhs.true.38:                                 ; preds = %if.then.33
  %34 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool39 = icmp ne i32 %34, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.38
  %35 = load i32, i32* %i, align 4, !tbaa !27
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i32 0, i32 0), i32 %35)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %land.lhs.true.38, %if.then.33
  %36 = load i32, i32* %save_errno, align 4, !tbaa !27
  %call42 = call i32* @__errno_location() #8
  store i32 %36, i32* %call42, align 4, !tbaa !27
  %37 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %37, i32 0, i32 3
  %38 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %and43 = and i64 %38, 4
  %cmp44 = icmp ne i64 %and43, 0
  br i1 %cmp44, label %if.end.49, label %if.then.46

if.then.46:                                       ; preds = %if.end.41
  %39 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname47 = getelementptr inbounds %struct._map, %struct._map* %39, i32 0, i32 2
  %40 = load i8*, i8** %map_mname47, align 8, !tbaa !19
  %41 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file48 = getelementptr inbounds %struct._map, %struct._map* %41, i32 0, i32 4
  %42 = load i8*, i8** %map_file48, align 8, !tbaa !20
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.58, i32 0, i32 0), i8* %40, i8* %42)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %43 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  br label %cleanup

if.end.50:                                        ; preds = %if.end.28
  %44 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_keycolnm = getelementptr inbounds %struct._map, %struct._map* %44, i32 0, i32 7
  %45 = load i8*, i8** %map_keycolnm, align 8, !tbaa !16
  %cmp51 = icmp eq i8* %45, null
  br i1 %cmp51, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.end.50
  %46 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_keycolno = getelementptr inbounds %struct._map, %struct._map* %46, i32 0, i32 9
  store i8 0, i8* %map_keycolno, align 1, !tbaa !52
  br label %if.end.76

if.else:                                          ; preds = %if.end.50
  %47 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_keycolnm54 = getelementptr inbounds %struct._map, %struct._map* %47, i32 0, i32 7
  %48 = load i8*, i8** %map_keycolnm54, align 8, !tbaa !16
  %49 = load i8, i8* %48, align 1, !tbaa !10
  %conv55 = sext i8 %49 to i32
  %and56 = and i32 %conv55, -128
  %cmp57 = icmp eq i32 %and56, 0
  br i1 %cmp57, label %land.lhs.true.59, label %if.then.67

land.lhs.true.59:                                 ; preds = %if.else
  %50 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_keycolnm60 = getelementptr inbounds %struct._map, %struct._map* %50, i32 0, i32 7
  %51 = load i8*, i8** %map_keycolnm60, align 8, !tbaa !16
  %52 = load i8, i8* %51, align 1, !tbaa !10
  %conv61 = sext i8 %52 to i32
  %idxprom = sext i32 %conv61 to i64
  %call62 = call i16** @__ctype_b_loc() #8
  %53 = load i16*, i16** %call62, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i16, i16* %53, i64 %idxprom
  %54 = load i16, i16* %arrayidx63, align 2, !tbaa !12
  %conv64 = zext i16 %54 to i32
  %and65 = and i32 %conv64, 2048
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.end.71, label %if.then.67

if.then.67:                                       ; preds = %land.lhs.true.59, %if.else
  %55 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname68 = getelementptr inbounds %struct._map, %struct._map* %55, i32 0, i32 2
  %56 = load i8*, i8** %map_mname68, align 8, !tbaa !19
  %57 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file69 = getelementptr inbounds %struct._map, %struct._map* %57, i32 0, i32 4
  %58 = load i8*, i8** %map_file69, align 8, !tbaa !20
  %59 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_keycolnm70 = getelementptr inbounds %struct._map, %struct._map* %59, i32 0, i32 7
  %60 = load i8*, i8** %map_keycolnm70, align 8, !tbaa !16
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.59, i32 0, i32 0), i8* %56, i8* %58, i8* %60)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %land.lhs.true.59
  %61 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_keycolnm72 = getelementptr inbounds %struct._map, %struct._map* %61, i32 0, i32 7
  %62 = load i8*, i8** %map_keycolnm72, align 8, !tbaa !16
  %call73 = call i32 @atoi(i8* %62) #9
  %conv74 = trunc i32 %call73 to i8
  %63 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_keycolno75 = getelementptr inbounds %struct._map, %struct._map* %63, i32 0, i32 9
  store i8 %conv74, i8* %map_keycolno75, align 1, !tbaa !52
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.71, %if.then.53
  %64 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm = getelementptr inbounds %struct._map, %struct._map* %64, i32 0, i32 8
  %65 = load i8*, i8** %map_valcolnm, align 8, !tbaa !17
  %cmp77 = icmp eq i8* %65, null
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.end.76
  %66 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolno = getelementptr inbounds %struct._map, %struct._map* %66, i32 0, i32 10
  store i8 0, i8* %map_valcolno, align 1, !tbaa !53
  br label %if.end.104

if.else.80:                                       ; preds = %if.end.76
  %67 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm81 = getelementptr inbounds %struct._map, %struct._map* %67, i32 0, i32 8
  %68 = load i8*, i8** %map_valcolnm81, align 8, !tbaa !17
  %69 = load i8, i8* %68, align 1, !tbaa !10
  %conv82 = sext i8 %69 to i32
  %and83 = and i32 %conv82, -128
  %cmp84 = icmp eq i32 %and83, 0
  br i1 %cmp84, label %land.lhs.true.86, label %if.then.95

land.lhs.true.86:                                 ; preds = %if.else.80
  %70 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm87 = getelementptr inbounds %struct._map, %struct._map* %70, i32 0, i32 8
  %71 = load i8*, i8** %map_valcolnm87, align 8, !tbaa !17
  %72 = load i8, i8* %71, align 1, !tbaa !10
  %conv88 = sext i8 %72 to i32
  %idxprom89 = sext i32 %conv88 to i64
  %call90 = call i16** @__ctype_b_loc() #8
  %73 = load i16*, i16** %call90, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i16, i16* %73, i64 %idxprom89
  %74 = load i16, i16* %arrayidx91, align 2, !tbaa !12
  %conv92 = zext i16 %74 to i32
  %and93 = and i32 %conv92, 2048
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %if.end.99, label %if.then.95

if.then.95:                                       ; preds = %land.lhs.true.86, %if.else.80
  %75 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname96 = getelementptr inbounds %struct._map, %struct._map* %75, i32 0, i32 2
  %76 = load i8*, i8** %map_mname96, align 8, !tbaa !19
  %77 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file97 = getelementptr inbounds %struct._map, %struct._map* %77, i32 0, i32 4
  %78 = load i8*, i8** %map_file97, align 8, !tbaa !20
  %79 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm98 = getelementptr inbounds %struct._map, %struct._map* %79, i32 0, i32 8
  %80 = load i8*, i8** %map_valcolnm98, align 8, !tbaa !17
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.60, i32 0, i32 0), i8* %76, i8* %78, i8* %80)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.99:                                        ; preds = %land.lhs.true.86
  %81 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm100 = getelementptr inbounds %struct._map, %struct._map* %81, i32 0, i32 8
  %82 = load i8*, i8** %map_valcolnm100, align 8, !tbaa !17
  %call101 = call i32 @atoi(i8* %82) #9
  %conv102 = trunc i32 %call101 to i8
  %83 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolno103 = getelementptr inbounds %struct._map, %struct._map* %83, i32 0, i32 10
  store i8 %conv102, i8* %map_valcolno103, align 1, !tbaa !53
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.99, %if.then.79
  %84 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv105 = zext i8 %84 to i32
  %cmp106 = icmp sge i32 %conv105, 2
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.121

land.lhs.true.108:                                ; preds = %if.end.104
  %85 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool109 = icmp ne i32 %85, 0
  br i1 %tobool109, label %if.end.121, label %if.then.110

if.then.110:                                      ; preds = %land.lhs.true.108
  %86 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname111 = getelementptr inbounds %struct._map, %struct._map* %86, i32 0, i32 2
  %87 = load i8*, i8** %map_mname111, align 8, !tbaa !19
  %88 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file112 = getelementptr inbounds %struct._map, %struct._map* %88, i32 0, i32 4
  %89 = load i8*, i8** %map_file112, align 8, !tbaa !20
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i32 0, i32 0), i8* %87, i8* %89)
  %90 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim = getelementptr inbounds %struct._map, %struct._map* %90, i32 0, i32 11
  %91 = load i8, i8* %map_coldelim, align 1, !tbaa !18
  %conv113 = sext i8 %91 to i32
  %cmp114 = icmp eq i32 %conv113, 0
  br i1 %cmp114, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %if.then.110
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.120

if.else.117:                                      ; preds = %if.then.110
  %92 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim118 = getelementptr inbounds %struct._map, %struct._map* %92, i32 0, i32 11
  %93 = load i8, i8* %map_coldelim118, align 1, !tbaa !18
  %conv119 = sext i8 %93 to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0), i32 %conv119)
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.117, %if.then.116
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %land.lhs.true.108, %if.end.104
  %94 = load i64, i64* %sff, align 8, !tbaa !26
  %conv122 = trunc i64 %94 to i32
  %95 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd = getelementptr inbounds %struct._map, %struct._map* %95, i32 0, i32 21
  store i32 %conv122, i32* %map_lockfd, align 4, !tbaa !37
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.121, %if.then.95, %if.then.67, %if.end.49, %if.then.17, %if.then.10, %if.then.4
  %96 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = load i32, i32* %retval
  ret i32 %98
}

declare i32 @safefile(i8*, i32, i32, i8*, i64, i32, %struct.stat*) #4

; Function Attrs: nounwind uwtable
define i8* @text_map_lookup(%struct._map* %map, i8* %name, i8** %av, i32* %statp) #0 {
entry:
  %retval = alloca i8*, align 8
  %map.addr = alloca %struct._map*, align 8
  %name.addr = alloca i8*, align 8
  %av.addr = alloca i8**, align 8
  %statp.addr = alloca i32*, align 8
  %vp = alloca i8*, align 8
  %vsize = alloca i32, align 4
  %buflen = alloca i32, align 4
  %f = alloca %struct.sm_file*, align 8
  %delim = alloca i8, align 1
  %key_idx = alloca i32, align 4
  %found_it = alloca i32, align 4
  %sff = alloca i64, align 8
  %search_key = alloca [257 x i8], align 16
  %linebuf = alloca [2048 x i8], align 16
  %buf = alloca [257 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %p = alloca i8*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8** %av, i8*** %av.addr, align 8, !tbaa !1
  store i32* %statp, i32** %statp.addr, align 8, !tbaa !1
  %0 = bitcast i8** %vp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %vsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %buflen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.sm_file** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  call void @llvm.lifetime.start(i64 1, i8* %delim) #1
  %4 = bitcast i32* %key_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %found_it to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_lockfd = getelementptr inbounds %struct._map, %struct._map* %7, i32 0, i32 21
  %8 = load i32, i32* %map_lockfd, align 4, !tbaa !37
  %conv = sext i32 %8 to i64
  store i64 %conv, i64* %sff, align 8, !tbaa !26
  %9 = bitcast [257 x i8]* %search_key to i8*
  call void @llvm.lifetime.start(i64 257, i8* %9) #1
  %10 = bitcast [2048 x i8]* %linebuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %10) #1
  %11 = bitcast [257 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %11) #1
  store i32 0, i32* %found_it, align 4, !tbaa !27
  %12 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv1 = zext i8 %12 to i32
  %cmp = icmp sge i32 %conv1, 20
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %14, i32 0, i32 2
  %15 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %16 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.64, i32 0, i32 0), i8* %15, i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %17 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %17) #9
  %conv3 = trunc i64 %call to i32
  store i32 %conv3, i32* %buflen, align 4, !tbaa !27
  %18 = load i32, i32* %buflen, align 4, !tbaa !27
  %conv4 = sext i32 %18 to i64
  %cmp5 = icmp ugt i64 %conv4, 256
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 256, i32* %buflen, align 4, !tbaa !27
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %19 = bitcast [257 x i8]* %search_key to i8*
  %20 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %21 = load i32, i32* %buflen, align 4, !tbaa !27
  %conv9 = sext i32 %21 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %19, i8* %20, i64 %conv9, i32 1, i1 false)
  %22 = load i32, i32* %buflen, align 4, !tbaa !27
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [257 x i8], [257 x i8]* %search_key, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !10
  %23 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %23, i32 0, i32 3
  %24 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %and = and i64 %24, 8
  %cmp10 = icmp ne i64 %and, 0
  br i1 %cmp10, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.8
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %search_key, i32 0, i32 0
  call void @makelower(i8* %arraydecay)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.8
  %25 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file = getelementptr inbounds %struct._map, %struct._map* %25, i32 0, i32 4
  %26 = load i8*, i8** %map_file, align 8, !tbaa !20
  %27 = load i32, i32* @FileMode, align 4, !tbaa !27
  %28 = load i64, i64* %sff, align 8, !tbaa !26
  %call14 = call %struct.sm_file* @safefopen(i8* %26, i32 0, i32 %27, i64 %28)
  store %struct.sm_file* %call14, %struct.sm_file** %f, align 8, !tbaa !1
  %29 = load %struct.sm_file*, %struct.sm_file** %f, align 8, !tbaa !1
  %cmp15 = icmp eq %struct.sm_file* %29, null
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.13
  %30 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags18 = getelementptr inbounds %struct._map, %struct._map* %30, i32 0, i32 3
  %31 = load i64, i64* %map_mflags18, align 8, !tbaa !5
  %and19 = and i64 %31, -34
  store i64 %and19, i64* %map_mflags18, align 8, !tbaa !5
  %32 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 69, i32* %32, align 4, !tbaa !27
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end.20:                                        ; preds = %if.end.13
  %33 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_keycolno = getelementptr inbounds %struct._map, %struct._map* %33, i32 0, i32 9
  %34 = load i8, i8* %map_keycolno, align 1, !tbaa !52
  %conv21 = zext i8 %34 to i32
  store i32 %conv21, i32* %key_idx, align 4, !tbaa !27
  %35 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim = getelementptr inbounds %struct._map, %struct._map* %35, i32 0, i32 11
  %36 = load i8, i8* %map_coldelim, align 1, !tbaa !18
  store i8 %36, i8* %delim, align 1, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end.20
  %37 = load %struct.sm_file*, %struct.sm_file** %f, align 8, !tbaa !1
  %arraydecay22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %linebuf, i32 0, i32 0
  %call23 = call i32 @sm_io_fgets(%struct.sm_file* %37, i32 -2, i8* %arraydecay22, i32 2048)
  %cmp24 = icmp sge i32 %call23, 0
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %arrayidx26 = getelementptr inbounds [2048 x i8], [2048 x i8]* %linebuf, i32 0, i64 0
  %39 = load i8, i8* %arrayidx26, align 1, !tbaa !10
  %conv27 = sext i8 %39 to i32
  %cmp28 = icmp eq i32 %conv27, 35
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %while.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %while.body
  %arraydecay32 = getelementptr inbounds [2048 x i8], [2048 x i8]* %linebuf, i32 0, i32 0
  %call33 = call i8* @strchr(i8* %arraydecay32, i32 10) #1
  store i8* %call33, i8** %p, align 8, !tbaa !1
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp34 = icmp ne i8* %40, null
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.31
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %41, align 1, !tbaa !10
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.31
  %arraydecay38 = getelementptr inbounds [2048 x i8], [2048 x i8]* %linebuf, i32 0, i32 0
  %42 = load i32, i32* %key_idx, align 4, !tbaa !27
  %43 = load i8, i8* %delim, align 1, !tbaa !10
  %conv39 = sext i8 %43 to i32
  %arraydecay40 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %call41 = call i8* @get_column(i8* %arraydecay38, i32 %42, i32 %conv39, i8* %arraydecay40, i32 257)
  store i8* %call41, i8** %p, align 8, !tbaa !1
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp42 = icmp ne i8* %44, null
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.50

land.lhs.true.44:                                 ; preds = %if.end.37
  %arraydecay45 = getelementptr inbounds [257 x i8], [257 x i8]* %search_key, i32 0, i32 0
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %call46 = call i32 @sm_strcasecmp(i8* %arraydecay45, i8* %45)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.44
  store i32 1, i32* %found_it, align 4, !tbaa !27
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %land.lhs.true.44, %if.end.37
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.50, %if.then.49, %if.then.30
  %46 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %47 = load %struct.sm_file*, %struct.sm_file** %f, align 8, !tbaa !1
  %call51 = call i32 @sm_io_close(%struct.sm_file* %47, i32 -2)
  %48 = load i32, i32* %found_it, align 4, !tbaa !27
  %tobool52 = icmp ne i32 %48, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %while.end
  %49 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 68, i32* %49, align 4, !tbaa !27
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end.54:                                        ; preds = %while.end
  %arraydecay55 = getelementptr inbounds [2048 x i8], [2048 x i8]* %linebuf, i32 0, i32 0
  %50 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolno = getelementptr inbounds %struct._map, %struct._map* %50, i32 0, i32 10
  %51 = load i8, i8* %map_valcolno, align 1, !tbaa !53
  %conv56 = zext i8 %51 to i32
  %52 = load i8, i8* %delim, align 1, !tbaa !10
  %conv57 = sext i8 %52 to i32
  %arraydecay58 = getelementptr inbounds [257 x i8], [257 x i8]* %buf, i32 0, i32 0
  %call59 = call i8* @get_column(i8* %arraydecay55, i32 %conv56, i32 %conv57, i8* %arraydecay58, i32 257)
  store i8* %call59, i8** %vp, align 8, !tbaa !1
  %53 = load i8*, i8** %vp, align 8, !tbaa !1
  %cmp60 = icmp eq i8* %53, null
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.54
  %54 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 68, i32* %54, align 4, !tbaa !27
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end.63:                                        ; preds = %if.end.54
  %55 = load i8*, i8** %vp, align 8, !tbaa !1
  %call64 = call i64 @strlen(i8* %55) #9
  %conv65 = trunc i64 %call64 to i32
  store i32 %conv65, i32* %vsize, align 4, !tbaa !27
  %56 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 0, i32* %56, align 4, !tbaa !27
  %57 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags66 = getelementptr inbounds %struct._map, %struct._map* %57, i32 0, i32 3
  %58 = load i64, i64* %map_mflags66, align 8, !tbaa !5
  %and67 = and i64 %58, 16
  %cmp68 = icmp ne i64 %and67, 0
  br i1 %cmp68, label %if.then.70, label %if.else

if.then.70:                                       ; preds = %if.end.63
  %59 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %60 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %61 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call71 = call i64 @strlen(i8* %61) #9
  %call72 = call i8* @map_rewrite(%struct._map* %59, i8* %60, i64 %call71, i8** null)
  store i8* %call72, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.else:                                          ; preds = %if.end.63
  %62 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %63 = load i8*, i8** %vp, align 8, !tbaa !1
  %64 = load i32, i32* %vsize, align 4, !tbaa !27
  %conv73 = sext i32 %64 to i64
  %65 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %call74 = call i8* @map_rewrite(%struct._map* %62, i8* %63, i64 %conv73, i8** %65)
  store i8* %call74, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

cleanup.75:                                       ; preds = %if.else, %if.then.70, %if.then.62, %if.then.53, %if.then.17
  %66 = bitcast [257 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %66) #1
  %67 = bitcast [2048 x i8]* %linebuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %67) #1
  %68 = bitcast [257 x i8]* %search_key to i8*
  call void @llvm.lifetime.end(i64 257, i8* %68) #1
  %69 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i32* %found_it to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %key_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  call void @llvm.lifetime.end(i64 1, i8* %delim) #1
  %72 = bitcast %struct.sm_file** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i32* %buflen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %vsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i8** %vp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i8*, i8** %retval
  ret i8* %76

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @makelower(i8*) #4

declare %struct.sm_file* @safefopen(i8*, i32, i32, i64) #4

declare i32 @sm_io_fgets(%struct.sm_file*, i32, i8*, i32) #4

declare i8* @get_column(i8*, i32, i32, i8*, i32) #4

declare i32 @sm_io_close(%struct.sm_file*, i32) #4

; Function Attrs: nounwind uwtable
define i8* @stab_map_lookup(%struct._map* %map, i8* %name, i8** %av, i32* %pstat) #0 {
entry:
  %retval = alloca i8*, align 8
  %map.addr = alloca %struct._map*, align 8
  %name.addr = alloca i8*, align 8
  %av.addr = alloca i8**, align 8
  %pstat.addr = alloca i32*, align 8
  %s = alloca %struct.symtab*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8** %av, i8*** %av.addr, align 8, !tbaa !1
  store i32* %pstat, i32** %pstat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 20
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %3, i32 0, i32 2
  %4 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %5 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0), i8* %4, i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call = call %struct.symtab* @stab(i8* %6, i32 4, i32 0)
  store %struct.symtab* %call, %struct.symtab** %s, align 8, !tbaa !1
  %7 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.symtab* %7, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %8 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %8, i32 0, i32 3
  %9 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %and = and i64 %9, 16
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %10 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call9 = call i64 @strlen(i8* %12) #9
  %call10 = call i8* @map_rewrite(%struct._map* %10, i8* %11, i64 %call9, i8** null)
  store i8* %call10, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.5
  %13 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %14 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %14, i32 0, i32 3
  %sv_alias = bitcast %union.anon* %s_value to i8**
  %15 = load i8*, i8** %sv_alias, align 8, !tbaa !1
  %16 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value11 = getelementptr inbounds %struct.symtab, %struct.symtab* %16, i32 0, i32 3
  %sv_alias12 = bitcast %union.anon* %s_value11 to i8**
  %17 = load i8*, i8** %sv_alias12, align 8, !tbaa !1
  %call13 = call i64 @strlen(i8* %17) #9
  %18 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %call14 = call i8* @map_rewrite(%struct._map* %13, i8* %15, i64 %call13, i8** %18)
  store i8* %call14, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.8, %if.then.4
  %19 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i8*, i8** %retval
  ret i8* %20
}

declare %struct.symtab* @stab(i8*, i32, i32) #4

; Function Attrs: nounwind uwtable
define void @stab_map_store(%struct._map* %map, i8* %lhs, i8* %rhs) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %lhs.addr = alloca i8*, align 8
  %rhs.addr = alloca i8*, align 8
  %s = alloca %struct.symtab*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %lhs, i8** %lhs.addr, align 8, !tbaa !1
  store i8* %rhs, i8** %rhs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %lhs.addr, align 8, !tbaa !1
  %call = call %struct.symtab* @stab(i8* %1, i32 4, i32 1)
  store %struct.symtab* %call, %struct.symtab** %s, align 8, !tbaa !1
  %2 = load i8*, i8** %rhs.addr, align 8, !tbaa !1
  %call1 = call i8* @newstr(i8* %2)
  %3 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %3, i32 0, i32 3
  %sv_alias = bitcast %union.anon* %s_value to i8**
  store i8* %call1, i8** %sv_alias, align 8, !tbaa !1
  %4 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @stab_map_open(%struct._map* %map, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct._map*, align 8
  %mode.addr = alloca i32, align 4
  %af = alloca %struct.sm_file*, align 8
  %sff = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !27
  %0 = bitcast %struct.sm_file** %af to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start(i64 144, i8* %2) #1
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %5, i32 0, i32 2
  %6 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %7 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file = getelementptr inbounds %struct._map, %struct._map* %7, i32 0, i32 4
  %8 = load i8*, i8** %map_file, align 8, !tbaa !20
  %9 = load i32, i32* %mode.addr, align 4, !tbaa !27
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i32 0, i32 0), i8* %6, i8* %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load i32, i32* %mode.addr, align 4, !tbaa !27
  %and = and i32 %10, 3
  store i32 %and, i32* %mode.addr, align 4, !tbaa !27
  %11 = load i32, i32* %mode.addr, align 4, !tbaa !27
  %cmp2 = icmp ne i32 %11, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %call = call i32* @__errno_location() #8
  store i32 1, i32* %call, align 4, !tbaa !27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  store i64 132, i64* %sff, align 8, !tbaa !26
  %12 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !27
  %and6 = and i32 %12, 8192
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  %13 = load i64, i64* %sff, align 8, !tbaa !26
  %or = or i64 %13, 1024
  store i64 %or, i64* %sff, align 8, !tbaa !26
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %14 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !27
  %and10 = and i32 %14, 256
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  %15 = load i64, i64* %sff, align 8, !tbaa !26
  %or13 = or i64 %15, 256
  store i64 %or13, i64* %sff, align 8, !tbaa !26
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  %16 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file15 = getelementptr inbounds %struct._map, %struct._map* %16, i32 0, i32 4
  %17 = load i8*, i8** %map_file15, align 8, !tbaa !20
  %18 = load i64, i64* %sff, align 8, !tbaa !26
  %call16 = call %struct.sm_file* @safefopen(i8* %17, i32 0, i32 292, i64 %18)
  store %struct.sm_file* %call16, %struct.sm_file** %af, align 8, !tbaa !1
  %19 = load %struct.sm_file*, %struct.sm_file** %af, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.sm_file* %19, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.14
  %20 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %21 = load %struct.sm_file*, %struct.sm_file** %af, align 8, !tbaa !1
  call void @readaliases(%struct._map* %20, %struct.sm_file* %21, i32 0, i32 0)
  %22 = load %struct.sm_file*, %struct.sm_file** %af, align 8, !tbaa !1
  %call21 = call i32 @sm_io_getinfo(%struct.sm_file* %22, i32 3, i8* null)
  %call22 = call i32 @fstat(i32 %call21, %struct.stat* %st) #1
  %cmp23 = icmp sge i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.20
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %23 = load i64, i64* %tv_sec, align 8, !tbaa !54
  %24 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mtime = getelementptr inbounds %struct._map, %struct._map* %24, i32 0, i32 17
  store i64 %23, i64* %map_mtime, align 8, !tbaa !57
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.20
  %25 = load %struct.sm_file*, %struct.sm_file** %af, align 8, !tbaa !1
  %call27 = call i32 @sm_io_close(%struct.sm_file* %25, i32 -2)
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.19, %if.then.4
  %26 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.end(i64 144, i8* %26) #1
  %27 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.sm_file** %af to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare void @readaliases(%struct._map*, %struct.sm_file*, i32, i32) #4

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @fstat(i32 %__fd, %struct.stat* nonnull %__statbuf) #7 {
entry:
  %__fd.addr = alloca i32, align 4
  %__statbuf.addr = alloca %struct.stat*, align 8
  store i32 %__fd, i32* %__fd.addr, align 4, !tbaa !27
  store %struct.stat* %__statbuf, %struct.stat** %__statbuf.addr, align 8, !tbaa !1
  %0 = load i32, i32* %__fd.addr, align 4, !tbaa !27
  %1 = load %struct.stat*, %struct.stat** %__statbuf.addr, align 8, !tbaa !1
  %call = call i32 @__fxstat(i32 1, i32 %0, %struct.stat* %1) #1
  ret i32 %call
}

declare i32 @sm_io_getinfo(%struct.sm_file*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define i8* @impl_map_lookup(%struct._map* %map, i8* %name, i8** %av, i32* %pstat) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %name.addr = alloca i8*, align 8
  %av.addr = alloca i8**, align 8
  %pstat.addr = alloca i32*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8** %av, i8*** %av.addr, align 8, !tbaa !1
  store i32* %pstat, i32** %pstat.addr, align 8, !tbaa !1
  %0 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 20
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %2, i32 0, i32 2
  %3 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %4 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i32 0, i32 0), i8* %3, i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %7 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %8 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  %call = call i8* @stab_map_lookup(%struct._map* %5, i8* %6, i8** %7, i32* %8)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @impl_map_store(%struct._map* %map, i8* %lhs, i8* %rhs) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %lhs.addr = alloca i8*, align 8
  %rhs.addr = alloca i8*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %lhs, i8** %lhs.addr, align 8, !tbaa !1
  store i8* %rhs, i8** %rhs.addr, align 8, !tbaa !1
  %0 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 12
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %2, i32 0, i32 2
  %3 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %4 = load i8*, i8** %lhs.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %rhs.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.68, i32 0, i32 0), i8* %3, i8* %4, i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %lhs.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %rhs.addr, align 8, !tbaa !1
  call void @stab_map_store(%struct._map* %6, i8* %7, i8* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @impl_map_open(%struct._map* %map, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct._map*, align 8
  %mode.addr = alloca i32, align 4
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !27
  %0 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %2, i32 0, i32 2
  %3 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %4 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file = getelementptr inbounds %struct._map, %struct._map* %4, i32 0, i32 4
  %5 = load i8*, i8** %map_file, align 8, !tbaa !20
  %6 = load i32, i32* %mode.addr, align 4, !tbaa !27
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), i8* %3, i8* %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* %mode.addr, align 4, !tbaa !27
  %and = and i32 %7, 3
  store i32 %and, i32* %mode.addr, align 4, !tbaa !27
  %8 = load i32, i32* %mode.addr, align 4, !tbaa !27
  %cmp2 = icmp ne i32 %8, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void (i8*, ...) @usrerr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %9 = load i32, i32* %mode.addr, align 4, !tbaa !27
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %10 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %11 = load i32, i32* %mode.addr, align 4, !tbaa !27
  %call = call i32 @stab_map_open(%struct._map* %10, i32 %11)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.8
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @usrerr(i8*, ...) #4

; Function Attrs: nounwind uwtable
define void @impl_map_close(%struct._map* %map) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  %0 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 9
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %2, i32 0, i32 2
  %3 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %4 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file = getelementptr inbounds %struct._map, %struct._map* %4, i32 0, i32 4
  %5 = load i8*, i8** %map_file, align 8, !tbaa !20
  %6 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %6, i32 0, i32 3
  %7 = load i64, i64* %map_mflags, align 8, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i32 0, i32 0), i8* %3, i8* %5, i64 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @user_map_open(%struct._map* %map, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct._map*, align 8
  %mode.addr = alloca i32, align 4
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !27
  %0 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %2, i32 0, i32 2
  %3 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %4 = load i32, i32* %mode.addr, align 4, !tbaa !27
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i32 0, i32 0), i8* %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i32, i32* %mode.addr, align 4, !tbaa !27
  %and = and i32 %5, 3
  store i32 %and, i32* %mode.addr, align 4, !tbaa !27
  %6 = load i32, i32* %mode.addr, align 4, !tbaa !27
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %call = call i32* @__errno_location() #8
  store i32 38, i32* %call, align 4, !tbaa !27
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm = getelementptr inbounds %struct._map, %struct._map* %7, i32 0, i32 8
  %8 = load i8*, i8** %map_valcolnm, align 8, !tbaa !17
  %cmp6 = icmp eq i8* %8, null
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  br label %if.end.66

if.else:                                          ; preds = %if.end.5
  %9 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm9 = getelementptr inbounds %struct._map, %struct._map* %9, i32 0, i32 8
  %10 = load i8*, i8** %map_valcolnm9, align 8, !tbaa !17
  %call10 = call i32 @sm_strcasecmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0))
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else
  %11 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolno = getelementptr inbounds %struct._map, %struct._map* %11, i32 0, i32 10
  store i8 1, i8* %map_valcolno, align 1, !tbaa !53
  br label %if.end.65

if.else.14:                                       ; preds = %if.else
  %12 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm15 = getelementptr inbounds %struct._map, %struct._map* %12, i32 0, i32 8
  %13 = load i8*, i8** %map_valcolnm15, align 8, !tbaa !17
  %call16 = call i32 @sm_strcasecmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0))
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else.14
  %14 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolno20 = getelementptr inbounds %struct._map, %struct._map* %14, i32 0, i32 10
  store i8 2, i8* %map_valcolno20, align 1, !tbaa !53
  br label %if.end.64

if.else.21:                                       ; preds = %if.else.14
  %15 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm22 = getelementptr inbounds %struct._map, %struct._map* %15, i32 0, i32 8
  %16 = load i8*, i8** %map_valcolnm22, align 8, !tbaa !17
  %call23 = call i32 @sm_strcasecmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0))
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else.21
  %17 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolno27 = getelementptr inbounds %struct._map, %struct._map* %17, i32 0, i32 10
  store i8 3, i8* %map_valcolno27, align 1, !tbaa !53
  br label %if.end.63

if.else.28:                                       ; preds = %if.else.21
  %18 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm29 = getelementptr inbounds %struct._map, %struct._map* %18, i32 0, i32 8
  %19 = load i8*, i8** %map_valcolnm29, align 8, !tbaa !17
  %call30 = call i32 @sm_strcasecmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0))
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.else.28
  %20 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolno34 = getelementptr inbounds %struct._map, %struct._map* %20, i32 0, i32 10
  store i8 4, i8* %map_valcolno34, align 1, !tbaa !53
  br label %if.end.62

if.else.35:                                       ; preds = %if.else.28
  %21 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm36 = getelementptr inbounds %struct._map, %struct._map* %21, i32 0, i32 8
  %22 = load i8*, i8** %map_valcolnm36, align 8, !tbaa !17
  %call37 = call i32 @sm_strcasecmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0))
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %if.else.35
  %23 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolno41 = getelementptr inbounds %struct._map, %struct._map* %23, i32 0, i32 10
  store i8 5, i8* %map_valcolno41, align 1, !tbaa !53
  br label %if.end.61

if.else.42:                                       ; preds = %if.else.35
  %24 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm43 = getelementptr inbounds %struct._map, %struct._map* %24, i32 0, i32 8
  %25 = load i8*, i8** %map_valcolnm43, align 8, !tbaa !17
  %call44 = call i32 @sm_strcasecmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0))
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.else.42
  %26 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolno48 = getelementptr inbounds %struct._map, %struct._map* %26, i32 0, i32 10
  store i8 6, i8* %map_valcolno48, align 1, !tbaa !53
  br label %if.end.60

if.else.49:                                       ; preds = %if.else.42
  %27 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm50 = getelementptr inbounds %struct._map, %struct._map* %27, i32 0, i32 8
  %28 = load i8*, i8** %map_valcolnm50, align 8, !tbaa !17
  %call51 = call i32 @sm_strcasecmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0))
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %if.else.49
  %29 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolno55 = getelementptr inbounds %struct._map, %struct._map* %29, i32 0, i32 10
  store i8 7, i8* %map_valcolno55, align 1, !tbaa !53
  br label %if.end.59

if.else.56:                                       ; preds = %if.else.49
  %30 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname57 = getelementptr inbounds %struct._map, %struct._map* %30, i32 0, i32 2
  %31 = load i8*, i8** %map_mname57, align 8, !tbaa !19
  %32 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolnm58 = getelementptr inbounds %struct._map, %struct._map* %32, i32 0, i32 8
  %33 = load i8*, i8** %map_valcolnm58, align 8, !tbaa !17
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.80, i32 0, i32 0), i8* %31, i8* %33)
  store i32 0, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.then.54
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.47
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.40
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.33
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.26
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.19
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.13
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.else.56, %if.then.4
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i8* @user_map_lookup(%struct._map* %map, i8* %key, i8** %av, i32* %statp) #0 {
entry:
  %retval = alloca i8*, align 8
  %map.addr = alloca %struct._map*, align 8
  %key.addr = alloca i8*, align 8
  %av.addr = alloca i8**, align 8
  %statp.addr = alloca i32*, align 8
  %fuzzy = alloca i32, align 4
  %user = alloca %struct.SM_MBDB_T, align 4
  %cleanup.dest.slot = alloca i32
  %rwval = alloca i8*, align 8
  %buf = alloca [30 x i8], align 16
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8** %av, i8*** %av.addr, align 8, !tbaa !1
  store i32* %statp, i32** %statp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %fuzzy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.start(i64 8712, i8* %1) #1
  %2 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %2 to i32
  %cmp = icmp sge i32 %conv, 20
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %4, i32 0, i32 2
  %5 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %6 = load i8*, i8** %key.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.81, i32 0, i32 0), i8* %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i32 @finduser(i8* %7, i32* %fuzzy, %struct.SM_MBDB_T* %user)
  %8 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 %call, i32* %8, align 4, !tbaa !27
  %9 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  %10 = load i32, i32* %9, align 4, !tbaa !27
  %cmp2 = icmp ne i32 %10, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.end.5:                                         ; preds = %if.end
  %11 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %11, i32 0, i32 3
  %12 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %and = and i64 %12, 16
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %13 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call9 = call i64 @strlen(i8* %15) #9
  %call10 = call i8* @map_rewrite(%struct._map* %13, i8* %14, i64 %call9, i8** null)
  store i8* %call10, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.33

if.else:                                          ; preds = %if.end.5
  %16 = bitcast i8** %rwval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i8* null, i8** %rwval, align 8, !tbaa !1
  %17 = bitcast [30 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 30, i8* %17) #1
  %18 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolno = getelementptr inbounds %struct._map, %struct._map* %18, i32 0, i32 10
  %19 = load i8, i8* %map_valcolno, align 1, !tbaa !53
  %conv11 = zext i8 %19 to i32
  switch i32 %conv11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb.12
    i32 3, label %sw.bb.13
    i32 4, label %sw.bb.17
    i32 5, label %sw.bb.21
    i32 6, label %sw.bb.23
    i32 7, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.else, %if.else
  %mbdb_name = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 2
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %mbdb_name, i32 0, i32 0
  store i8* %arraydecay, i8** %rwval, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0), i8** %rwval, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.else
  %arraydecay14 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %mbdb_uid = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 0
  %20 = load i32, i32* %mbdb_uid, align 4, !tbaa !58
  %call15 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay14, i64 30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0), i32 %20)
  %arraydecay16 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay16, i8** %rwval, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.else
  %arraydecay18 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  %mbdb_gid = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 1
  %21 = load i32, i32* %mbdb_gid, align 4, !tbaa !60
  %call19 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay18, i64 30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0), i32 %21)
  %arraydecay20 = getelementptr inbounds [30 x i8], [30 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay20, i8** %rwval, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.else
  %mbdb_fullname = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 3
  %arraydecay22 = getelementptr inbounds [256 x i8], [256 x i8]* %mbdb_fullname, i32 0, i32 0
  store i8* %arraydecay22, i8** %rwval, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.else
  %mbdb_homedir = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 4
  %arraydecay24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_homedir, i32 0, i32 0
  store i8* %arraydecay24, i8** %rwval, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.else
  %mbdb_shell = getelementptr inbounds %struct.SM_MBDB_T, %struct.SM_MBDB_T* %user, i32 0, i32 5
  %arraydecay26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mbdb_shell, i32 0, i32 0
  store i8* %arraydecay26, i8** %rwval, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %22 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname27 = getelementptr inbounds %struct._map, %struct._map* %22, i32 0, i32 2
  %23 = load i8*, i8** %map_mname27, align 8, !tbaa !19
  %24 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_valcolno28 = getelementptr inbounds %struct._map, %struct._map* %24, i32 0, i32 10
  %25 = load i8, i8* %map_valcolno28, align 1, !tbaa !53
  %conv29 = zext i8 %25 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.84, i32 0, i32 0), i8* %23, i32 %conv29)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.17, %sw.bb.13, %sw.bb.12, %sw.bb
  %26 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %27 = load i8*, i8** %rwval, align 8, !tbaa !1
  %28 = load i8*, i8** %rwval, align 8, !tbaa !1
  %call30 = call i64 @strlen(i8* %28) #9
  %29 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %call31 = call i8* @map_rewrite(%struct._map* %26, i8* %27, i64 %call30, i8** %29)
  store i8* %call31, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %30 = bitcast [30 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 30, i8* %30) #1
  %31 = bitcast i8** %rwval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  br label %cleanup.33

cleanup.33:                                       ; preds = %cleanup, %if.then.8, %if.then.4
  %32 = bitcast %struct.SM_MBDB_T* %user to i8*
  call void @llvm.lifetime.end(i64 8712, i8* %32) #1
  %33 = bitcast i32* %fuzzy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = load i8*, i8** %retval
  ret i8* %34
}

declare i32 @finduser(i8*, i32*, %struct.SM_MBDB_T*) #4

; Function Attrs: nounwind uwtable
define i8* @prog_map_lookup(%struct._map* %map, i8* %name, i8** %av, i32* %statp) #0 {
entry:
  %retval = alloca i8*, align 8
  %map.addr = alloca %struct._map*, align 8
  %name.addr = alloca i8*, align 8
  %av.addr = alloca i8**, align 8
  %statp.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %fd = alloca i32, align 4
  %status = alloca i32, align 4
  %pid = alloca i32, align 4
  %p = alloca i8*, align 8
  %rval = alloca i8*, align 8
  %argv = alloca [257 x i8*], align 16
  %buf = alloca [2048 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %.compoundliteral = alloca %union.anon.1, align 4
  %.compoundliteral135 = alloca %union.anon.2, align 4
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8** %av, i8*** %av.addr, align 8, !tbaa !1
  store i32* %statp, i32** %statp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %pid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %rval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [257 x i8*]* %argv to i8*
  call void @llvm.lifetime.start(i64 2056, i8* %7) #1
  %8 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %8) #1
  %9 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %9 to i32
  %cmp = icmp sge i32 %conv, 20
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %11, i32 0, i32 2
  %12 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %13 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %14 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file = getelementptr inbounds %struct._map, %struct._map* %14, i32 0, i32 4
  %15 = load i8*, i8** %map_file, align 8, !tbaa !20
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i32 0, i32 0), i8* %12, i8* %13, i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %i, align 4, !tbaa !27
  %16 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file2 = getelementptr inbounds %struct._map, %struct._map* %16, i32 0, i32 4
  %17 = load i8*, i8** %map_file2, align 8, !tbaa !20
  %18 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [257 x i8*], [257 x i8*]* %argv, i32 0, i64 %idxprom
  store i8* %17, i8** %arrayidx, align 8, !tbaa !1
  %19 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_rebuild = getelementptr inbounds %struct._map, %struct._map* %19, i32 0, i32 16
  %20 = load i8*, i8** %map_rebuild, align 8, !tbaa !21
  %cmp3 = icmp ne i8* %20, null
  br i1 %cmp3, label %if.then.5, label %if.end.19

if.then.5:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %21 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_rebuild6 = getelementptr inbounds %struct._map, %struct._map* %21, i32 0, i32 16
  %22 = load i8*, i8** %map_rebuild6, align 8, !tbaa !21
  %call = call i64 @sm_strlcpy(i8* %arraydecay, i8* %22, i64 2048)
  %arraydecay7 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call8 = call i8* @strtok(i8* %arraydecay7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0)) #1
  store i8* %call8, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp9 = icmp ne i8* %23, null
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4, !tbaa !27
  %cmp11 = icmp sge i32 %24, 255
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body
  br label %for.end

if.end.14:                                        ; preds = %for.body
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %26 = load i32, i32* %i, align 4, !tbaa !27
  %inc15 = add nsw i32 %26, 1
  store i32 %inc15, i32* %i, align 4, !tbaa !27
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds [257 x i8*], [257 x i8*]* %argv, i32 0, i64 %idxprom16
  store i8* %25, i8** %arrayidx17, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %call18 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0)) #1
  store i8* %call18, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.13, %for.cond
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %if.end
  %27 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %28 = load i32, i32* %i, align 4, !tbaa !27
  %inc20 = add nsw i32 %28, 1
  store i32 %inc20, i32* %i, align 4, !tbaa !27
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds [257 x i8*], [257 x i8*]* %argv, i32 0, i64 %idxprom21
  store i8* %27, i8** %arrayidx22, align 8, !tbaa !1
  %29 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom23 = sext i32 %29 to i64
  %arrayidx24 = getelementptr inbounds [257 x i8*], [257 x i8*]* %argv, i32 0, i64 %idxprom23
  store i8* null, i8** %arrayidx24, align 8, !tbaa !1
  %30 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv25 = zext i8 %30 to i32
  %cmp26 = icmp sge i32 %conv25, 21
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.42

land.lhs.true.28:                                 ; preds = %if.end.19
  %31 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool29 = icmp ne i32 %31, 0
  br i1 %tobool29, label %if.end.42, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.28
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0))
  store i32 0, i32* %i, align 4, !tbaa !27
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.39, %if.then.30
  %32 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom32 = sext i32 %32 to i64
  %arrayidx33 = getelementptr inbounds [257 x i8*], [257 x i8*]* %argv, i32 0, i64 %idxprom32
  %33 = load i8*, i8** %arrayidx33, align 8, !tbaa !1
  %cmp34 = icmp ne i8* %33, null
  br i1 %cmp34, label %for.body.36, label %for.end.41

for.body.36:                                      ; preds = %for.cond.31
  %34 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom37 = sext i32 %34 to i64
  %arrayidx38 = getelementptr inbounds [257 x i8*], [257 x i8*]* %argv, i32 0, i64 %idxprom37
  %35 = load i8*, i8** %arrayidx38, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i8* %35)
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.36
  %36 = load i32, i32* %i, align 4, !tbaa !27
  %inc40 = add nsw i32 %36, 1
  store i32 %inc40, i32* %i, align 4, !tbaa !27
  br label %for.cond.31

for.end.41:                                       ; preds = %for.cond.31
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %for.end.41, %land.lhs.true.28, %if.end.19
  %call43 = call i32 @sm_blocksignal(i32 17)
  %arraydecay44 = getelementptr inbounds [257 x i8*], [257 x i8*]* %argv, i32 0, i32 0
  %37 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %call45 = call i32 @prog_open(i8** %arraydecay44, i32* %fd, %struct.envelope* %37)
  store i32 %call45, i32* %pid, align 4, !tbaa !27
  %38 = load i32, i32* %pid, align 4, !tbaa !27
  %cmp46 = icmp slt i32 %38, 0
  br i1 %cmp46, label %if.then.48, label %if.end.68

if.then.48:                                       ; preds = %if.end.42
  %39 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %39, i32 0, i32 3
  %40 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %and = and i64 %40, 4
  %cmp49 = icmp ne i64 %and, 0
  br i1 %cmp49, label %if.else, label %if.then.51

if.then.51:                                       ; preds = %if.then.48
  %41 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname52 = getelementptr inbounds %struct._map, %struct._map* %41, i32 0, i32 2
  %42 = load i8*, i8** %map_mname52, align 8, !tbaa !19
  %call53 = call i32* @__errno_location() #8
  %43 = load i32, i32* %call53, align 4, !tbaa !27
  %call54 = call i8* @sm_errstring(i32 %43)
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.89, i32 0, i32 0), i8* %42, i8* %call54)
  br label %if.end.65

if.else:                                          ; preds = %if.then.48
  %44 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv55 = zext i8 %44 to i32
  %cmp56 = icmp sge i32 %conv55, 9
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.64

land.lhs.true.58:                                 ; preds = %if.else
  %45 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool59 = icmp ne i32 %45, 0
  br i1 %tobool59, label %if.end.64, label %if.then.60

if.then.60:                                       ; preds = %land.lhs.true.58
  %46 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname61 = getelementptr inbounds %struct._map, %struct._map* %46, i32 0, i32 2
  %47 = load i8*, i8** %map_mname61, align 8, !tbaa !19
  %call62 = call i32* @__errno_location() #8
  %48 = load i32, i32* %call62, align 4, !tbaa !27
  %call63 = call i8* @sm_errstring(i32 %48)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.89, i32 0, i32 0), i8* %47, i8* %call63)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.60, %land.lhs.true.58, %if.else
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.51
  %49 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags66 = getelementptr inbounds %struct._map, %struct._map* %49, i32 0, i32 3
  %50 = load i64, i64* %map_mflags66, align 8, !tbaa !5
  %and67 = and i64 %50, -34
  store i64 %and67, i64* %map_mflags66, align 8, !tbaa !5
  %51 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 72, i32* %51, align 4, !tbaa !27
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %if.end.42
  %52 = load i32, i32* %fd, align 4, !tbaa !27
  %arraydecay69 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call70 = call i64 @read(i32 %52, i8* %arraydecay69, i64 2047)
  %conv71 = trunc i64 %call70 to i32
  store i32 %conv71, i32* %i, align 4, !tbaa !27
  %53 = load i32, i32* %i, align 4, !tbaa !27
  %cmp72 = icmp slt i32 %53, 0
  br i1 %cmp72, label %if.then.74, label %if.else.78

if.then.74:                                       ; preds = %if.end.68
  %54 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname75 = getelementptr inbounds %struct._map, %struct._map* %54, i32 0, i32 2
  %55 = load i8*, i8** %map_mname75, align 8, !tbaa !19
  %call76 = call i32* @__errno_location() #8
  %56 = load i32, i32* %call76, align 4, !tbaa !27
  %call77 = call i8* @sm_errstring(i32 %56)
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.90, i32 0, i32 0), i8* %55, i8* %call77)
  store i8* null, i8** %rval, align 8, !tbaa !1
  br label %if.end.118

if.else.78:                                       ; preds = %if.end.68
  %57 = load i32, i32* %i, align 4, !tbaa !27
  %cmp79 = icmp eq i32 %57, 0
  br i1 %cmp79, label %if.then.81, label %if.else.90

if.then.81:                                       ; preds = %if.else.78
  %58 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv82 = zext i8 %58 to i32
  %cmp83 = icmp sge i32 %conv82, 20
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.89

land.lhs.true.85:                                 ; preds = %if.then.81
  %59 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool86 = icmp ne i32 %59, 0
  br i1 %tobool86, label %if.end.89, label %if.then.87

if.then.87:                                       ; preds = %land.lhs.true.85
  %60 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname88 = getelementptr inbounds %struct._map, %struct._map* %60, i32 0, i32 2
  %61 = load i8*, i8** %map_mname88, align 8, !tbaa !19
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.91, i32 0, i32 0), i8* %61)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %land.lhs.true.85, %if.then.81
  store i8* null, i8** %rval, align 8, !tbaa !1
  br label %if.end.117

if.else.90:                                       ; preds = %if.else.78
  %62 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom91 = sext i32 %62 to i64
  %arrayidx92 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 %idxprom91
  store i8 0, i8* %arrayidx92, align 1, !tbaa !10
  %arraydecay93 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call94 = call i8* @strchr(i8* %arraydecay93, i32 10) #1
  store i8* %call94, i8** %p, align 8, !tbaa !1
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp95 = icmp ne i8* %63, null
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.else.90
  %64 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %64, align 1, !tbaa !10
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.else.90
  %65 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags99 = getelementptr inbounds %struct._map, %struct._map* %65, i32 0, i32 3
  %66 = load i64, i64* %map_mflags99, align 8, !tbaa !5
  %and100 = and i64 %66, 16
  %cmp101 = icmp ne i64 %and100, 0
  br i1 %cmp101, label %if.then.103, label %if.else.106

if.then.103:                                      ; preds = %if.end.98
  %67 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %68 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %69 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call104 = call i64 @strlen(i8* %69) #9
  %call105 = call i8* @map_rewrite(%struct._map* %67, i8* %68, i64 %call104, i8** null)
  store i8* %call105, i8** %rval, align 8, !tbaa !1
  br label %if.end.111

if.else.106:                                      ; preds = %if.end.98
  %70 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %arraydecay107 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %arraydecay108 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call109 = call i64 @strlen(i8* %arraydecay108) #9
  %71 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %call110 = call i8* @map_rewrite(%struct._map* %70, i8* %arraydecay107, i64 %call109, i8** %71)
  store i8* %call110, i8** %rval, align 8, !tbaa !1
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.106, %if.then.103
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.111
  %72 = load i32, i32* %fd, align 4, !tbaa !27
  %arraydecay112 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call113 = call i64 @read(i32 %72, i8* %arraydecay112, i64 2048)
  %conv114 = trunc i64 %call113 to i32
  store i32 %conv114, i32* %i, align 4, !tbaa !27
  %cmp115 = icmp sgt i32 %conv114, 0
  br i1 %cmp115, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.117

if.end.117:                                       ; preds = %while.end, %if.end.89
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.74
  %73 = load i32, i32* %fd, align 4, !tbaa !27
  %call119 = call i32 @close(i32 %73)
  %74 = load i32, i32* %pid, align 4, !tbaa !27
  %call120 = call i32 @waitfor(i32 %74)
  store i32 %call120, i32* %status, align 4, !tbaa !27
  %call121 = call i32* @__errno_location() #8
  %75 = load i32, i32* %call121, align 4, !tbaa !27
  store i32 %75, i32* %save_errno, align 4, !tbaa !27
  %call122 = call i32 @sm_releasesignal(i32 17)
  %76 = load i32, i32* %save_errno, align 4, !tbaa !27
  %call123 = call i32* @__errno_location() #8
  store i32 %76, i32* %call123, align 4, !tbaa !27
  %77 = load i32, i32* %status, align 4, !tbaa !27
  %cmp124 = icmp eq i32 %77, -1
  br i1 %cmp124, label %if.then.126, label %if.else.130

if.then.126:                                      ; preds = %if.end.118
  %78 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname127 = getelementptr inbounds %struct._map, %struct._map* %78, i32 0, i32 2
  %79 = load i8*, i8** %map_mname127, align 8, !tbaa !19
  %call128 = call i32* @__errno_location() #8
  %80 = load i32, i32* %call128, align 4, !tbaa !27
  %call129 = call i8* @sm_errstring(i32 %80)
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.92, i32 0, i32 0), i8* %79, i8* %call129)
  %81 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 70, i32* %81, align 4, !tbaa !27
  store i8* null, i8** %rval, align 8, !tbaa !1
  br label %if.end.146

if.else.130:                                      ; preds = %if.end.118
  %__in = bitcast %union.anon.1* %.compoundliteral to i32*
  %82 = load i32, i32* %status, align 4, !tbaa !27
  store i32 %82, i32* %__in, align 4, !tbaa !27
  %__i = bitcast %union.anon.1* %.compoundliteral to i32*
  %83 = load i32, i32* %__i, align 4, !tbaa !27
  %and131 = and i32 %83, 127
  %cmp132 = icmp eq i32 %and131, 0
  br i1 %cmp132, label %if.then.134, label %if.else.143

if.then.134:                                      ; preds = %if.else.130
  %__in136 = bitcast %union.anon.2* %.compoundliteral135 to i32*
  %84 = load i32, i32* %status, align 4, !tbaa !27
  store i32 %84, i32* %__in136, align 4, !tbaa !27
  %__i137 = bitcast %union.anon.2* %.compoundliteral135 to i32*
  %85 = load i32, i32* %__i137, align 4, !tbaa !27
  %and138 = and i32 %85, 65280
  %shr = ashr i32 %and138, 8
  %86 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 %shr, i32* %86, align 4, !tbaa !27
  %cmp139 = icmp ne i32 %shr, 0
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.then.134
  store i8* null, i8** %rval, align 8, !tbaa !1
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %if.then.134
  br label %if.end.145

if.else.143:                                      ; preds = %if.else.130
  %87 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname144 = getelementptr inbounds %struct._map, %struct._map* %87, i32 0, i32 2
  %88 = load i8*, i8** %map_mname144, align 8, !tbaa !19
  %89 = load i32, i32* %status, align 4, !tbaa !27
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.93, i32 0, i32 0), i8* %88, i32 %89)
  %90 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 69, i32* %90, align 4, !tbaa !27
  store i8* null, i8** %rval, align 8, !tbaa !1
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.143, %if.end.142
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.126
  %91 = load i8*, i8** %rval, align 8, !tbaa !1
  store i8* %91, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.146, %if.end.65
  %92 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %92) #1
  %93 = bitcast [257 x i8*]* %argv to i8*
  call void @llvm.lifetime.end(i64 2056, i8* %93) #1
  %94 = bitcast i8** %rval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i32* %pid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = load i8*, i8** %retval
  ret i8* %101
}

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

declare i32 @sm_blocksignal(i32) #4

declare i32 @prog_open(i8**, i32*, %struct.envelope*) #4

declare i64 @read(i32, i8*, i64) #4

declare i32 @close(i32) #4

declare i32 @waitfor(i32) #4

declare i32 @sm_releasesignal(i32) #4

; Function Attrs: nounwind uwtable
define i32 @seq_map_parse(%struct._map* %map, i8* %ap) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %ap.addr = alloca i8*, align 8
  %maxmap = alloca i32, align 4
  %p = alloca i8*, align 8
  %s = alloca %struct.symtab*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %ap, i8** %ap.addr, align 8, !tbaa !1
  %0 = bitcast i32* %maxmap to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %3, i32 0, i32 2
  %4 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %5 = load i8*, i8** %ap.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.94, i32 0, i32 0), i8* %4, i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %maxmap, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end
  %6 = load i8*, i8** %ap.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !10
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv2, 0
  br i1 %cmp3, label %while.body, label %while.end.86

while.body:                                       ; preds = %while.cond
  %8 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  br label %while.cond.5

while.cond.5:                                     ; preds = %while.body.13, %while.body
  %10 = load i8*, i8** %ap.addr, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !10
  %conv6 = sext i8 %11 to i32
  %and = and i32 %conv6, -128
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.5
  %12 = load i8*, i8** %ap.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !10
  %conv9 = sext i8 %13 to i32
  %idxprom = sext i32 %conv9 to i64
  %call = call i16** @__ctype_b_loc() #8
  %14 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %15 = load i16, i16* %arrayidx, align 2, !tbaa !12
  %conv10 = zext i16 %15 to i32
  %and11 = and i32 %conv10, 8192
  %tobool12 = icmp ne i32 %and11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.5
  %16 = phi i1 [ false, %while.cond.5 ], [ %tobool12, %land.rhs ]
  br i1 %16, label %while.body.13, label %while.end

while.body.13:                                    ; preds = %land.end
  %17 = load i8*, i8** %ap.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %ap.addr, align 8, !tbaa !1
  br label %while.cond.5

while.end:                                        ; preds = %land.end
  %18 = load i8*, i8** %ap.addr, align 8, !tbaa !1
  store i8* %18, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %19 = load i8*, i8** %p, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !10
  %conv14 = sext i8 %20 to i32
  %and15 = and i32 %conv14, -128
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %land.lhs.true.18, label %lor.lhs.false

land.lhs.true.18:                                 ; preds = %for.cond
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !10
  %conv19 = sext i8 %22 to i32
  %idxprom20 = sext i32 %conv19 to i64
  %call21 = call i16** @__ctype_b_loc() #8
  %23 = load i16*, i16** %call21, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i16, i16* %23, i64 %idxprom20
  %24 = load i16, i16* %arrayidx22, align 2, !tbaa !12
  %conv23 = zext i16 %24 to i32
  %and24 = and i32 %conv23, 8
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.18, %for.cond
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !10
  %conv26 = sext i8 %26 to i32
  %cmp27 = icmp eq i32 %conv26, 95
  br i1 %cmp27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !10
  %conv29 = sext i8 %28 to i32
  %cmp30 = icmp eq i32 %conv29, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.lhs.true.18
  %29 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true.18 ], [ %cmp30, %lor.rhs ]
  br i1 %29, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr32, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !10
  %conv33 = sext i8 %32 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %for.end
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr37, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %33, align 1, !tbaa !10
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %for.end
  br label %while.cond.39

while.cond.39:                                    ; preds = %while.body.58, %if.end.38
  %34 = load i8*, i8** %p, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !10
  %conv40 = sext i8 %35 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %land.rhs.43, label %land.end.57

land.rhs.43:                                      ; preds = %while.cond.39
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !10
  %conv44 = sext i8 %37 to i32
  %and45 = and i32 %conv44, -128
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %lor.rhs.48, label %lor.end.56

lor.rhs.48:                                       ; preds = %land.rhs.43
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !10
  %conv49 = sext i8 %39 to i32
  %idxprom50 = sext i32 %conv49 to i64
  %call51 = call i16** @__ctype_b_loc() #8
  %40 = load i16*, i16** %call51, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i16, i16* %40, i64 %idxprom50
  %41 = load i16, i16* %arrayidx52, align 2, !tbaa !12
  %conv53 = zext i16 %41 to i32
  %and54 = and i32 %conv53, 8
  %tobool55 = icmp ne i32 %and54, 0
  %lnot = xor i1 %tobool55, true
  br label %lor.end.56

lor.end.56:                                       ; preds = %lor.rhs.48, %land.rhs.43
  %42 = phi i1 [ true, %land.rhs.43 ], [ %lnot, %lor.rhs.48 ]
  br label %land.end.57

land.end.57:                                      ; preds = %lor.end.56, %while.cond.39
  %43 = phi i1 [ false, %while.cond.39 ], [ %42, %lor.end.56 ]
  br i1 %43, label %while.body.58, label %while.end.60

while.body.58:                                    ; preds = %land.end.57
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr59 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr59, i8** %p, align 8, !tbaa !1
  br label %while.cond.39

while.end.60:                                     ; preds = %land.end.57
  %45 = load i8*, i8** %ap.addr, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !10
  %conv61 = sext i8 %46 to i32
  %cmp62 = icmp eq i32 %conv61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %while.end.60
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %47, i8** %ap.addr, align 8, !tbaa !1
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %while.end.60
  %48 = load i8*, i8** %ap.addr, align 8, !tbaa !1
  %call66 = call %struct.symtab* @stab(i8* %48, i32 6, i32 0)
  store %struct.symtab* %call66, %struct.symtab** %s, align 8, !tbaa !1
  %49 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp67 = icmp eq %struct.symtab* %49, null
  br i1 %cmp67, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %if.end.65
  %50 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname70 = getelementptr inbounds %struct._map, %struct._map* %50, i32 0, i32 2
  %51 = load i8*, i8** %map_mname70, align 8, !tbaa !19
  %52 = load i8*, i8** %ap.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.95, i32 0, i32 0), i8* %51, i8* %52)
  br label %if.end.84

if.else:                                          ; preds = %if.end.65
  %53 = load i32, i32* %maxmap, align 4, !tbaa !27
  %cmp71 = icmp sge i32 %53, 12
  br i1 %cmp71, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %if.else
  %54 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname74 = getelementptr inbounds %struct._map, %struct._map* %54, i32 0, i32 2
  %55 = load i8*, i8** %map_mname74, align 8, !tbaa !19
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.96, i32 0, i32 0), i8* %55, i32 12)
  %56 = load i32, i32* %maxmap, align 4, !tbaa !27
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %maxmap, align 4, !tbaa !27
  br label %if.end.83

if.else.75:                                       ; preds = %if.else
  %57 = load i32, i32* %maxmap, align 4, !tbaa !27
  %cmp76 = icmp slt i32 %57, 12
  br i1 %cmp76, label %if.then.78, label %if.end.82

if.then.78:                                       ; preds = %if.else.75
  %58 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %58, i32 0, i32 3
  %sv_map = bitcast %union.anon* %s_value to %struct._map*
  %59 = load i32, i32* %maxmap, align 4, !tbaa !27
  %inc79 = add nsw i32 %59, 1
  store i32 %inc79, i32* %maxmap, align 4, !tbaa !27
  %idxprom80 = sext i32 %59 to i64
  %60 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_stack = getelementptr inbounds %struct._map, %struct._map* %60, i32 0, i32 23
  %arrayidx81 = getelementptr inbounds [12 x %struct._map*], [12 x %struct._map*]* %map_stack, i32 0, i64 %idxprom80
  store %struct._map* %sv_map, %struct._map** %arrayidx81, align 8, !tbaa !1
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.78, %if.else.75
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.73
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.69
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %61, i8** %ap.addr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.84, %if.then.64
  %62 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.86:                                     ; preds = %while.cond
  store i32 1, i32* %cleanup.dest.slot
  %64 = bitcast i32* %maxmap to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  ret i32 1

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @switch_map_open(%struct._map* %map, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct._map*, align 8
  %mode.addr = alloca i32, align 4
  %mapno = alloca i32, align 4
  %nmaps = alloca i32, align 4
  %maptype = alloca [12 x i8*], align 16
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.symtab*, align 8
  %nbuf = alloca [257 x i8], align 16
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !27
  %0 = bitcast i32* %mapno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %nmaps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast [12 x i8*]* %maptype to i8*
  call void @llvm.lifetime.start(i64 96, i8* %2) #1
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %5, i32 0, i32 2
  %6 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %7 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file = getelementptr inbounds %struct._map, %struct._map* %7, i32 0, i32 4
  %8 = load i8*, i8** %map_file, align 8, !tbaa !20
  %9 = load i32, i32* %mode.addr, align 4, !tbaa !27
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.97, i32 0, i32 0), i8* %6, i8* %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load i32, i32* %mode.addr, align 4, !tbaa !27
  %and = and i32 %10, 3
  store i32 %and, i32* %mode.addr, align 4, !tbaa !27
  %11 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_file2 = getelementptr inbounds %struct._map, %struct._map* %11, i32 0, i32 4
  %12 = load i8*, i8** %map_file2, align 8, !tbaa !20
  %arraydecay = getelementptr inbounds [12 x i8*], [12 x i8*]* %maptype, i32 0, i32 0
  %13 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_return = getelementptr inbounds %struct._map, %struct._map* %13, i32 0, i32 24
  %arraydecay3 = getelementptr inbounds [5 x i16], [5 x i16]* %map_return, i32 0, i32 0
  %call = call i32 @switch_map_find(i8* %12, i8** %arraydecay, i16* %arraydecay3)
  store i32 %call, i32* %nmaps, align 4, !tbaa !27
  %14 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv4 = zext i8 %14 to i32
  %cmp5 = icmp sge i32 %conv4, 19
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.12

land.lhs.true.7:                                  ; preds = %if.end
  %15 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool8 = icmp ne i32 %15, 0
  br i1 %tobool8, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true.7
  %16 = load i32, i32* %nmaps, align 4, !tbaa !27
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.98, i32 0, i32 0), i32 %16)
  store i32 0, i32* %mapno, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %17 = load i32, i32* %mapno, align 4, !tbaa !27
  %18 = load i32, i32* %nmaps, align 4, !tbaa !27
  %cmp10 = icmp slt i32 %17, %18
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %mapno, align 4, !tbaa !27
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [12 x i8*], [12 x i8*]* %maptype, i32 0, i64 %idxprom
  %20 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i8* %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %mapno, align 4, !tbaa !27
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %mapno, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %land.lhs.true.7, %if.end
  %22 = load i32, i32* %nmaps, align 4, !tbaa !27
  %cmp13 = icmp sle i32 %22, 0
  br i1 %cmp13, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %23 = load i32, i32* %nmaps, align 4, !tbaa !27
  %cmp15 = icmp sgt i32 %23, 12
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

if.end.18:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %mapno, align 4, !tbaa !27
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.55, %if.end.18
  %24 = load i32, i32* %mapno, align 4, !tbaa !27
  %25 = load i32, i32* %nmaps, align 4, !tbaa !27
  %cmp20 = icmp slt i32 %24, %25
  br i1 %cmp20, label %for.body.22, label %for.end.57

for.body.22:                                      ; preds = %for.cond.19
  %26 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = bitcast [257 x i8]* %nbuf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %27) #1
  %28 = load i32, i32* %mapno, align 4, !tbaa !27
  %idxprom23 = sext i32 %28 to i64
  %arrayidx24 = getelementptr inbounds [12 x i8*], [12 x i8*]* %maptype, i32 0, i64 %idxprom23
  %29 = load i8*, i8** %arrayidx24, align 8, !tbaa !1
  %cmp25 = icmp eq i8* %29, null
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body.22
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %for.body.22
  %arraydecay29 = getelementptr inbounds [257 x i8], [257 x i8]* %nbuf, i32 0, i32 0
  %30 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname30 = getelementptr inbounds %struct._map, %struct._map* %30, i32 0, i32 2
  %31 = load i8*, i8** %map_mname30, align 8, !tbaa !19
  %32 = load i32, i32* %mapno, align 4, !tbaa !27
  %idxprom31 = sext i32 %32 to i64
  %arrayidx32 = getelementptr inbounds [12 x i8*], [12 x i8*]* %maptype, i32 0, i64 %idxprom31
  %33 = load i8*, i8** %arrayidx32, align 8, !tbaa !1
  %call33 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay29, i64 257, i32 3, i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* %33)
  %arraydecay34 = getelementptr inbounds [257 x i8], [257 x i8]* %nbuf, i32 0, i32 0
  %call35 = call %struct.symtab* @stab(i8* %arraydecay34, i32 6, i32 0)
  store %struct.symtab* %call35, %struct.symtab** %s, align 8, !tbaa !1
  %34 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp36 = icmp eq %struct.symtab* %34, null
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.28
  %35 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname39 = getelementptr inbounds %struct._map, %struct._map* %35, i32 0, i32 2
  %36 = load i8*, i8** %map_mname39, align 8, !tbaa !19
  %arraydecay40 = getelementptr inbounds [257 x i8], [257 x i8]* %nbuf, i32 0, i32 0
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.100, i32 0, i32 0), i8* %36, i8* %arraydecay40)
  br label %if.end.53

if.else:                                          ; preds = %if.end.28
  %37 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %37, i32 0, i32 3
  %sv_map = bitcast %union.anon* %s_value to %struct._map*
  %38 = load i32, i32* %mapno, align 4, !tbaa !27
  %idxprom41 = sext i32 %38 to i64
  %39 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_stack = getelementptr inbounds %struct._map, %struct._map* %39, i32 0, i32 23
  %arrayidx42 = getelementptr inbounds [12 x %struct._map*], [12 x %struct._map*]* %map_stack, i32 0, i64 %idxprom41
  store %struct._map* %sv_map, %struct._map** %arrayidx42, align 8, !tbaa !1
  %40 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv43 = zext i8 %40 to i32
  %cmp44 = icmp sge i32 %conv43, 4
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.52

land.lhs.true.46:                                 ; preds = %if.else
  %41 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool47 = icmp ne i32 %41, 0
  br i1 %tobool47, label %if.end.52, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true.46
  %42 = load i32, i32* %mapno, align 4, !tbaa !27
  %43 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value49 = getelementptr inbounds %struct.symtab, %struct.symtab* %43, i32 0, i32 3
  %sv_map50 = bitcast %union.anon* %s_value49 to %struct._map*
  %map_class = getelementptr inbounds %struct._map, %struct._map* %sv_map50, i32 0, i32 0
  %44 = load %struct._mapclass*, %struct._mapclass** %map_class, align 8, !tbaa !22
  %map_cname = getelementptr inbounds %struct._mapclass, %struct._mapclass* %44, i32 0, i32 0
  %45 = load i8*, i8** %map_cname, align 8, !tbaa !25
  %arraydecay51 = getelementptr inbounds [257 x i8], [257 x i8]* %nbuf, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.101, i32 0, i32 0), i32 %42, i8* %45, i8* %arraydecay51)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %land.lhs.true.46, %if.else
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.27
  %46 = bitcast [257 x i8]* %nbuf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %46) #1
  %47 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc.55
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.55

for.inc.55:                                       ; preds = %cleanup.cont, %cleanup
  %48 = load i32, i32* %mapno, align 4, !tbaa !27
  %inc56 = add nsw i32 %48, 1
  store i32 %inc56, i32* %mapno, align 4, !tbaa !27
  br label %for.cond.19

for.end.57:                                       ; preds = %for.cond.19
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.58

cleanup.58:                                       ; preds = %for.end.57, %if.then.17
  %49 = bitcast [12 x i8*]* %maptype to i8*
  call void @llvm.lifetime.end(i64 96, i8* %49) #1
  %50 = bitcast i32* %nmaps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %mapno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = load i32, i32* %retval
  ret i32 %52

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i8* @seq_map_lookup(%struct._map* %map, i8* %key, i8** %args, i32* %pstat) #0 {
entry:
  %retval = alloca i8*, align 8
  %map.addr = alloca %struct._map*, align 8
  %key.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  %pstat.addr = alloca i32*, align 8
  %mapno = alloca i32, align 4
  %mapbit = alloca i32, align 4
  %tempfail = alloca i32, align 4
  %mm = alloca %struct._map*, align 8
  %rv = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  store i32* %pstat, i32** %pstat.addr, align 8, !tbaa !1
  %0 = bitcast i32* %mapno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %mapbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 1, i32* %mapbit, align 4, !tbaa !27
  %2 = bitcast i32* %tempfail to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %tempfail, align 4, !tbaa !27
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 20
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %5, i32 0, i32 2
  %6 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %7 = load i8*, i8** %key.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.102, i32 0, i32 0), i8* %6, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %mapno, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %mapno, align 4, !tbaa !27
  %cmp2 = icmp slt i32 %8, 12
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = bitcast %struct._map** %mm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i32, i32* %mapno, align 4, !tbaa !27
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_stack = getelementptr inbounds %struct._map, %struct._map* %11, i32 0, i32 23
  %arrayidx = getelementptr inbounds [12 x %struct._map*], [12 x %struct._map*]* %map_stack, i32 0, i64 %idxprom
  %12 = load %struct._map*, %struct._map** %arrayidx, align 8, !tbaa !1
  store %struct._map* %12, %struct._map** %mm, align 8, !tbaa !1
  %13 = bitcast i8** %rv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct._map*, %struct._map** %mm, align 8, !tbaa !1
  %cmp4 = icmp eq %struct._map* %14, null
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %for.body
  %15 = load %struct._map*, %struct._map** %mm, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %15, i32 0, i32 3
  %16 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %and = and i64 %16, 32
  %cmp8 = icmp ne i64 %and, 0
  br i1 %cmp8, label %if.end.20, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %if.end.7
  %17 = load %struct._map*, %struct._map** %mm, align 8, !tbaa !1
  %call = call i32 @openmap(%struct._map* %17)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.end.20, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true.10
  %18 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_return = getelementptr inbounds %struct._map, %struct._map* %18, i32 0, i32 24
  %arrayidx13 = getelementptr inbounds [5 x i16], [5 x i16]* %map_return, i32 0, i64 1
  %19 = load i16, i16* %arrayidx13, align 2, !tbaa !12
  %conv14 = sext i16 %19 to i32
  %20 = load i32, i32* %mapbit, align 4, !tbaa !27
  %and15 = and i32 %conv14, %20
  %cmp16 = icmp ne i32 %and15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.12
  %21 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 69, i32* %21, align 4, !tbaa !27
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.12
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %land.lhs.true.10, %if.end.7
  %22 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 0, i32* %22, align 4, !tbaa !27
  %23 = load %struct._map*, %struct._map** %mm, align 8, !tbaa !1
  %map_class = getelementptr inbounds %struct._map, %struct._map* %23, i32 0, i32 0
  %24 = load %struct._mapclass*, %struct._mapclass** %map_class, align 8, !tbaa !22
  %map_lookup = getelementptr inbounds %struct._mapclass, %struct._mapclass* %24, i32 0, i32 4
  %25 = load i8* (%struct._map*, i8*, i8**, i32*)*, i8* (%struct._map*, i8*, i8**, i32*)** %map_lookup, align 8, !tbaa !61
  %26 = load %struct._map*, %struct._map** %mm, align 8, !tbaa !1
  %27 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %28 = load i8**, i8*** %args.addr, align 8, !tbaa !1
  %29 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  %call21 = call i8* %25(%struct._map* %26, i8* %27, i8** %28, i32* %29)
  store i8* %call21, i8** %rv, align 8, !tbaa !1
  %30 = load i8*, i8** %rv, align 8, !tbaa !1
  %cmp22 = icmp ne i8* %30, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  %31 = load i8*, i8** %rv, align 8, !tbaa !1
  store i8* %31, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.20
  %32 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  %33 = load i32, i32* %32, align 4, !tbaa !27
  %cmp26 = icmp eq i32 %33, 75
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.end.25
  %34 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_return29 = getelementptr inbounds %struct._map, %struct._map* %34, i32 0, i32 24
  %arrayidx30 = getelementptr inbounds [5 x i16], [5 x i16]* %map_return29, i32 0, i64 2
  %35 = load i16, i16* %arrayidx30, align 2, !tbaa !12
  %conv31 = sext i16 %35 to i32
  %36 = load i32, i32* %mapbit, align 4, !tbaa !27
  %and32 = and i32 %conv31, %36
  %cmp33 = icmp ne i32 %and32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.28
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.then.28
  store i32 1, i32* %tempfail, align 4, !tbaa !27
  br label %if.end.45

if.else:                                          ; preds = %if.end.25
  %37 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_return37 = getelementptr inbounds %struct._map, %struct._map* %37, i32 0, i32 24
  %arrayidx38 = getelementptr inbounds [5 x i16], [5 x i16]* %map_return37, i32 0, i64 0
  %38 = load i16, i16* %arrayidx38, align 2, !tbaa !12
  %conv39 = sext i16 %38 to i32
  %39 = load i32, i32* %mapbit, align 4, !tbaa !27
  %and40 = and i32 %conv39, %39
  %cmp41 = icmp ne i32 %and40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.else
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.36
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then.43, %if.then.35, %if.then.24, %if.end.19, %if.then.18, %if.then.6
  %40 = bitcast i8** %rv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct._map** %mm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.55 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %42 = load i32, i32* %mapbit, align 4, !tbaa !27
  %shl = shl i32 %42, 1
  store i32 %shl, i32* %mapbit, align 4, !tbaa !27
  %43 = load i32, i32* %mapno, align 4, !tbaa !27
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %mapno, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %44 = load i32, i32* %tempfail, align 4, !tbaa !27
  %tobool47 = icmp ne i32 %44, 0
  br i1 %tobool47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %for.end
  %45 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 75, i32* %45, align 4, !tbaa !27
  br label %if.end.54

if.else.49:                                       ; preds = %for.end
  %46 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  %47 = load i32, i32* %46, align 4, !tbaa !27
  %cmp50 = icmp eq i32 %47, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.else.49
  %48 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 68, i32* %48, align 4, !tbaa !27
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.else.49
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.48
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.55

cleanup.55:                                       ; preds = %if.end.54, %cleanup
  %49 = bitcast i32* %tempfail to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %mapbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %mapno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = load i8*, i8** %retval
  ret i8* %52
}

; Function Attrs: nounwind uwtable
define void @seq_map_store(%struct._map* %map, i8* %key, i8* %val) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %key.addr = alloca i8*, align 8
  %val.addr = alloca i8*, align 8
  %mapno = alloca i32, align 4
  %mm = alloca %struct._map*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %val, i8** %val.addr, align 8, !tbaa !1
  %0 = bitcast i32* %mapno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 12
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %3, i32 0, i32 2
  %4 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %5 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.103, i32 0, i32 0), i8* %4, i8* %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %mapno, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %mapno, align 4, !tbaa !27
  %cmp2 = icmp slt i32 %7, 12
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = bitcast %struct._map** %mm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %mapno, align 4, !tbaa !27
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_stack = getelementptr inbounds %struct._map, %struct._map* %10, i32 0, i32 23
  %arrayidx = getelementptr inbounds [12 x %struct._map*], [12 x %struct._map*]* %map_stack, i32 0, i64 %idxprom
  %11 = load %struct._map*, %struct._map** %arrayidx, align 8, !tbaa !1
  store %struct._map* %11, %struct._map** %mm, align 8, !tbaa !1
  %12 = load %struct._map*, %struct._map** %mm, align 8, !tbaa !1
  %cmp4 = icmp eq %struct._map* %12, null
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load %struct._map*, %struct._map** %mm, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %13, i32 0, i32 3
  %14 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %and = and i64 %14, 64
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %lor.lhs.false, %for.body
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  %15 = load %struct._map*, %struct._map** %mm, align 8, !tbaa !1
  %map_class = getelementptr inbounds %struct._map, %struct._map* %15, i32 0, i32 0
  %16 = load %struct._mapclass*, %struct._mapclass** %map_class, align 8, !tbaa !22
  %map_store = getelementptr inbounds %struct._mapclass, %struct._mapclass* %16, i32 0, i32 5
  %17 = load void (%struct._map*, i8*, i8*)*, void (%struct._map*, i8*, i8*)** %map_store, align 8, !tbaa !62
  %18 = load %struct._map*, %struct._map** %mm, align 8, !tbaa !1
  %19 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void %17(%struct._map* %18, i8* %19, i8* %20)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.8
  %21 = bitcast %struct._map** %mm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.11 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %22 = load i32, i32* %mapno, align 4, !tbaa !27
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %mapno, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname10 = getelementptr inbounds %struct._map, %struct._map* %23, i32 0, i32 2
  %24 = load i8*, i8** %map_mname10, align 8, !tbaa !19
  %25 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %val.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.104, i32 0, i32 0), i8* %24, i8* %25, i8* %26)
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.11

cleanup.11:                                       ; preds = %for.end, %cleanup
  %27 = bitcast i32* %mapno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %cleanup.dest.12 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.12, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.11, %cleanup.11
  ret void

unreachable:                                      ; preds = %cleanup.11
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @null_map_open(%struct._map* %map, i32 %mode) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %mode.addr = alloca i32, align 4
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !27
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @null_map_close(%struct._map* %map) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @null_map_lookup(%struct._map* %map, i8* %key, i8** %args, i32* %pstat) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %key.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  %pstat.addr = alloca i32*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  store i32* %pstat, i32** %pstat.addr, align 8, !tbaa !1
  %0 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 68, i32* %0, align 4, !tbaa !27
  ret i8* null
}

; Function Attrs: nounwind uwtable
define void @null_map_store(%struct._map* %map, i8* %key, i8* %val) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %key.addr = alloca i8*, align 8
  %val.addr = alloca i8*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %val, i8** %val.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @bogus_map_lookup(%struct._map* %map, i8* %key, i8** %args, i32* %pstat) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %key.addr = alloca i8*, align 8
  %args.addr = alloca i8**, align 8
  %pstat.addr = alloca i32*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8** %args, i8*** %args.addr, align 8, !tbaa !1
  store i32* %pstat, i32** %pstat.addr, align 8, !tbaa !1
  %0 = load i32*, i32** %pstat.addr, align 8, !tbaa !1
  store i32 75, i32* %0, align 4, !tbaa !27
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @macro_map_lookup(%struct._map* %map, i8* %name, i8** %av, i32* %statp) #0 {
entry:
  %retval = alloca i8*, align 8
  %map.addr = alloca %struct._map*, align 8
  %name.addr = alloca i8*, align 8
  %av.addr = alloca i8**, align 8
  %statp.addr = alloca i32*, align 8
  %mid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8** %av, i8*** %av.addr, align 8, !tbaa !1
  store i32* %statp, i32** %statp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 20
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mname = getelementptr inbounds %struct._map, %struct._map* %3, i32 0, i32 2
  %4 = load i8*, i8** %map_mname, align 8, !tbaa !19
  %5 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %6 = load i8*, i8** %name.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), %cond.true ], [ %6, %cond.false ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.107, i32 0, i32 0), i8* %4, i8* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %entry
  %7 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %7, null
  br i1 %cmp4, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !10
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %10 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call = call i32 @macid_parse(i8* %10, i8** null)
  store i32 %call, i32* %mid, align 4, !tbaa !27
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false, %if.end
  %11 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 78, i32* %11, align 4, !tbaa !27
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %lor.lhs.false.9
  %12 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 1
  %13 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp14 = icmp eq i8* %13, null
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.13
  %14 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 46
  %15 = load i32, i32* %mid, align 4, !tbaa !27
  %16 = load i32, i32* @SmHeapGroup, align 4, !tbaa !27
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 %15, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 6777, i32 %16)
  br label %if.end.19

if.else:                                          ; preds = %if.end.13
  %17 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_macro17 = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 46
  %18 = load i32, i32* %mid, align 4, !tbaa !27
  %19 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i8*, i8** %19, i64 1
  %20 = load i8*, i8** %arrayidx18, align 8, !tbaa !1
  %21 = load i32, i32* @SmHeapGroup, align 4, !tbaa !27
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro17, i32 1, i32 %18, i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 6779, i32 %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.16
  %22 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 0, i32* %22, align 4, !tbaa !27
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.12
  %23 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = load i8*, i8** %retval
  ret i8* %24
}

declare i32 @macid_parse(i8*, i8**) #4

declare void @macdefine_tagged(%struct.MACROS_T*, i32, i32, i8*, i8*, i32, i32) #4

; Function Attrs: nounwind uwtable
define i8* @arith_map_lookup(%struct._map* %map, i8* %name, i8** %av, i32* %statp) #0 {
entry:
  %retval = alloca i8*, align 8
  %map.addr = alloca %struct._map*, align 8
  %name.addr = alloca i8*, align 8
  %av.addr = alloca i8**, align 8
  %statp.addr = alloca i32*, align 8
  %r = alloca i64, align 8
  %v = alloca [2 x i64], align 16
  %res = alloca i32, align 4
  %boolres = alloca i32, align 4
  %cpp = alloca i8**, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8** %av, i8*** %av.addr, align 8, !tbaa !1
  store i32* %statp, i32** %statp.addr, align 8, !tbaa !1
  %0 = bitcast i64* %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [2 x i64]* %v to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %res, align 4, !tbaa !27
  %3 = bitcast i32* %boolres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8*** %cpp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.108, i32 0, i32 0), i8* %7)
  %8 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  store i8** %8, i8*** %cpp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i8**, i8*** %cpp, align 8, !tbaa !1
  %cmp2 = icmp ne i8** %9, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %10 = load i8**, i8*** %cpp, align 8, !tbaa !1
  %11 = load i8*, i8** %10, align 8, !tbaa !1
  %cmp4 = icmp ne i8* %11, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load i8**, i8*** %cpp, align 8, !tbaa !1
  %14 = load i8*, i8** %13, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i32 0, i32 0), i8* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i8**, i8*** %cpp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %incdec.ptr, i8*** %cpp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %entry
  store i64 0, i64* %r, align 8, !tbaa !26
  store i32 0, i32* %boolres, align 4, !tbaa !27
  %16 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  store i8** %16, i8*** %cpp, align 8, !tbaa !1
  %17 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 0, i32* %17, align 4, !tbaa !27
  %18 = load i8**, i8*** %cpp, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %incdec.ptr6, i8*** %cpp, align 8, !tbaa !1
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.18, %if.end
  %19 = load i8**, i8*** %cpp, align 8, !tbaa !1
  %cmp8 = icmp ne i8** %19, null
  br i1 %cmp8, label %land.lhs.true.10, label %land.end.16

land.lhs.true.10:                                 ; preds = %for.cond.7
  %20 = load i8**, i8*** %cpp, align 8, !tbaa !1
  %21 = load i8*, i8** %20, align 8, !tbaa !1
  %cmp11 = icmp ne i8* %21, null
  br i1 %cmp11, label %land.rhs.13, label %land.end.16

land.rhs.13:                                      ; preds = %land.lhs.true.10
  %22 = load i64, i64* %r, align 8, !tbaa !26
  %cmp14 = icmp slt i64 %22, 2
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.13, %land.lhs.true.10, %for.cond.7
  %23 = phi i1 [ false, %land.lhs.true.10 ], [ false, %for.cond.7 ], [ %cmp14, %land.rhs.13 ]
  br i1 %23, label %for.body.17, label %for.end.20

for.body.17:                                      ; preds = %land.end.16
  %24 = load i8**, i8*** %cpp, align 8, !tbaa !1
  %25 = load i8*, i8** %24, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %25, i8** null, i32 0) #1
  %26 = load i64, i64* %r, align 8, !tbaa !26
  %inc = add nsw i64 %26, 1
  store i64 %inc, i64* %r, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 %26
  store i64 %call, i64* %arrayidx, align 8, !tbaa !26
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.17
  %27 = load i8**, i8*** %cpp, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %incdec.ptr19, i8*** %cpp, align 8, !tbaa !1
  br label %for.cond.7

for.end.20:                                       ; preds = %land.end.16
  %28 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %cmp21 = icmp ne i8* %28, null
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.104

land.lhs.true.23:                                 ; preds = %for.end.20
  %29 = load i64, i64* %r, align 8, !tbaa !26
  %cmp24 = icmp eq i64 %29, 2
  br i1 %cmp24, label %if.then.26, label %if.end.104

if.then.26:                                       ; preds = %land.lhs.true.23
  %30 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !10
  %conv27 = sext i8 %31 to i32
  switch i32 %conv27, label %sw.default [
    i32 124, label %sw.bb
    i32 38, label %sw.bb.30
    i32 37, label %sw.bb.33
    i32 43, label %sw.bb.41
    i32 45, label %sw.bb.44
    i32 42, label %sw.bb.47
    i32 47, label %sw.bb.50
    i32 108, label %sw.bb.58
    i32 61, label %sw.bb.63
    i32 114, label %sw.bb.68
  ]

sw.bb:                                            ; preds = %if.then.26
  %arrayidx28 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 0
  %32 = load i64, i64* %arrayidx28, align 8, !tbaa !26
  %arrayidx29 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 1
  %33 = load i64, i64* %arrayidx29, align 8, !tbaa !26
  %or = or i64 %32, %33
  store i64 %or, i64* %r, align 8, !tbaa !26
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.then.26
  %arrayidx31 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 0
  %34 = load i64, i64* %arrayidx31, align 8, !tbaa !26
  %arrayidx32 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 1
  %35 = load i64, i64* %arrayidx32, align 8, !tbaa !26
  %and = and i64 %34, %35
  store i64 %and, i64* %r, align 8, !tbaa !26
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.then.26
  %arrayidx34 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 1
  %36 = load i64, i64* %arrayidx34, align 8, !tbaa !26
  %cmp35 = icmp eq i64 %36, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %sw.bb.33
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %sw.bb.33
  %arrayidx39 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 0
  %37 = load i64, i64* %arrayidx39, align 8, !tbaa !26
  %arrayidx40 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 1
  %38 = load i64, i64* %arrayidx40, align 8, !tbaa !26
  %rem = srem i64 %37, %38
  store i64 %rem, i64* %r, align 8, !tbaa !26
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.then.26
  %arrayidx42 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 0
  %39 = load i64, i64* %arrayidx42, align 8, !tbaa !26
  %arrayidx43 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 1
  %40 = load i64, i64* %arrayidx43, align 8, !tbaa !26
  %add = add nsw i64 %39, %40
  store i64 %add, i64* %r, align 8, !tbaa !26
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.then.26
  %arrayidx45 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 0
  %41 = load i64, i64* %arrayidx45, align 8, !tbaa !26
  %arrayidx46 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 1
  %42 = load i64, i64* %arrayidx46, align 8, !tbaa !26
  %sub = sub nsw i64 %41, %42
  store i64 %sub, i64* %r, align 8, !tbaa !26
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.then.26
  %arrayidx48 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 0
  %43 = load i64, i64* %arrayidx48, align 8, !tbaa !26
  %arrayidx49 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 1
  %44 = load i64, i64* %arrayidx49, align 8, !tbaa !26
  %mul = mul nsw i64 %43, %44
  store i64 %mul, i64* %r, align 8, !tbaa !26
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.then.26
  %arrayidx51 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 1
  %45 = load i64, i64* %arrayidx51, align 8, !tbaa !26
  %cmp52 = icmp eq i64 %45, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %sw.bb.50
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %sw.bb.50
  %arrayidx56 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 0
  %46 = load i64, i64* %arrayidx56, align 8, !tbaa !26
  %arrayidx57 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 1
  %47 = load i64, i64* %arrayidx57, align 8, !tbaa !26
  %div = sdiv i64 %46, %47
  store i64 %div, i64* %r, align 8, !tbaa !26
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.then.26
  %arrayidx59 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 0
  %48 = load i64, i64* %arrayidx59, align 8, !tbaa !26
  %arrayidx60 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 1
  %49 = load i64, i64* %arrayidx60, align 8, !tbaa !26
  %cmp61 = icmp slt i64 %48, %49
  %conv62 = zext i1 %cmp61 to i32
  store i32 %conv62, i32* %res, align 4, !tbaa !27
  store i32 1, i32* %boolres, align 4, !tbaa !27
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.then.26
  %arrayidx64 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 0
  %50 = load i64, i64* %arrayidx64, align 8, !tbaa !26
  %arrayidx65 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 1
  %51 = load i64, i64* %arrayidx65, align 8, !tbaa !26
  %cmp66 = icmp eq i64 %50, %51
  %conv67 = zext i1 %cmp66 to i32
  store i32 %conv67, i32* %res, align 4, !tbaa !27
  store i32 1, i32* %boolres, align 4, !tbaa !27
  br label %sw.epilog

sw.bb.68:                                         ; preds = %if.then.26
  %arrayidx69 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 1
  %52 = load i64, i64* %arrayidx69, align 8, !tbaa !26
  %arrayidx70 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 0
  %53 = load i64, i64* %arrayidx70, align 8, !tbaa !26
  %sub71 = sub nsw i64 %52, %53
  %add72 = add nsw i64 %sub71, 1
  store i64 %add72, i64* %r, align 8, !tbaa !26
  %54 = load i64, i64* %r, align 8, !tbaa !26
  %cmp73 = icmp sle i64 %54, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %sw.bb.68
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %sw.bb.68
  %call77 = call i64 @random() #1
  %55 = load i64, i64* %r, align 8, !tbaa !26
  %rem78 = srem i64 %call77, %55
  %arrayidx79 = getelementptr inbounds [2 x i64], [2 x i64]* %v, i32 0, i64 0
  %56 = load i64, i64* %arrayidx79, align 8, !tbaa !26
  %add80 = add nsw i64 %rem78, %56
  store i64 %add80, i64* %r, align 8, !tbaa !26
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.26
  %57 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 78, i32* %57, align 4, !tbaa !27
  %58 = load i32, i32* @LogLevel, align 4, !tbaa !27
  %cmp81 = icmp sgt i32 %58, 10
  br i1 %cmp81, label %if.then.83, label %if.end.96

if.then.83:                                       ; preds = %sw.default
  %59 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %60 = load i8, i8* %59, align 1, !tbaa !10
  %conv84 = sext i8 %60 to i32
  %and85 = and i32 %conv84, -128
  %cmp86 = icmp eq i32 %and85, 0
  br i1 %cmp86, label %land.lhs.true.88, label %cond.false

land.lhs.true.88:                                 ; preds = %if.then.83
  %61 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !10
  %conv89 = sext i8 %62 to i32
  %idxprom = sext i32 %conv89 to i64
  %call90 = call i16** @__ctype_b_loc() #8
  %63 = load i16*, i16** %call90, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i16, i16* %63, i64 %idxprom
  %64 = load i16, i16* %arrayidx91, align 2, !tbaa !12
  %conv92 = zext i16 %64 to i32
  %and93 = and i32 %conv92, 16384
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.88
  %65 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %66 = load i8, i8* %65, align 1, !tbaa !10
  %conv95 = sext i8 %66 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.88, %if.then.83
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv95, %cond.true ], [ 63, %cond.false ]
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.110, i32 0, i32 0), i32 %cond)
  br label %if.end.96

if.end.96:                                        ; preds = %cond.end, %sw.default
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.76, %sw.bb.63, %sw.bb.58, %if.end.55, %sw.bb.47, %sw.bb.44, %sw.bb.41, %if.end.38, %sw.bb.30, %sw.bb
  %67 = load i32, i32* %boolres, align 4, !tbaa !27
  %tobool97 = icmp ne i32 %67, 0
  br i1 %tobool97, label %if.then.98, label %if.else

if.then.98:                                       ; preds = %sw.epilog
  %68 = load i32, i32* %res, align 4, !tbaa !27
  %tobool99 = icmp ne i32 %68, 0
  %cond100 = select i1 %tobool99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i32 0, i32 0)
  %call101 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @arith_map_lookup.result, i32 0, i32 0), i64 16, i8* %cond100)
  br label %if.end.103

if.else:                                          ; preds = %sw.epilog
  %69 = load i64, i64* %r, align 8, !tbaa !26
  %call102 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @arith_map_lookup.result, i32 0, i32 0), i64 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0), i64 %69)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else, %if.then.98
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @arith_map_lookup.result, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.104:                                       ; preds = %land.lhs.true.23, %for.end.20
  %70 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 78, i32* %70, align 4, !tbaa !27
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.104, %if.end.103, %if.end.96, %if.then.75, %if.then.54, %if.then.37
  %71 = bitcast i8*** %cpp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i32* %boolres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast [2 x i64]* %v to i8*
  call void @llvm.lifetime.end(i64 16, i8* %74) #1
  %75 = bitcast i64* %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i8*, i8** %retval
  ret i8* %76
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

; Function Attrs: nounwind
declare i64 @random() #3

; Function Attrs: nounwind uwtable
define i8* @arpa_map_lookup(%struct._map* %map, i8* %name, i8** %av, i32* %statp) #0 {
entry:
  %map.addr = alloca %struct._map*, align 8
  %name.addr = alloca i8*, align 8
  %av.addr = alloca i8**, align 8
  %statp.addr = alloca i32*, align 8
  %r = alloca i32, align 4
  %rval = alloca i8*, align 8
  %result = alloca [128 x i8], align 16
  %in_addr = alloca %struct.in_addr, align 4
  %src = alloca i8*, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8** %av, i8*** %av.addr, align 8, !tbaa !1
  store i32* %statp, i32** %statp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %rval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [128 x i8]* %result to i8*
  call void @llvm.lifetime.start(i64 128, i8* %2) #1
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv = zext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load i8*, i8** %name.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.114, i32 0, i32 0), i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 65, i32* %6, align 4, !tbaa !27
  store i32 1, i32* %r, align 4, !tbaa !27
  %7 = bitcast [128 x i8]* %result to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 128, i32 16, i1 false)
  store i8* null, i8** %rval, align 8, !tbaa !1
  %8 = bitcast %struct.in_addr* %in_addr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %10 = bitcast %struct.in_addr* %in_addr to i8*
  %call = call i32 @inet_pton(i32 2, i8* %9, i8* %10) #1
  store i32 %call, i32* %r, align 4, !tbaa !27
  %11 = load i32, i32* %r, align 4, !tbaa !27
  %cmp2 = icmp eq i32 %11, 1
  br i1 %cmp2, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.end
  %12 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.in_addr* %in_addr to i8*
  store i8* %13, i8** %src, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %result, i32 0, i32 0
  %14 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 3
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %conv5 = zext i8 %15 to i32
  %16 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx6, align 1, !tbaa !10
  %conv7 = zext i8 %17 to i32
  %18 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx8, align 1, !tbaa !10
  %conv9 = zext i8 %19 to i32
  %20 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx10, align 1, !tbaa !10
  %conv11 = zext i8 %21 to i32
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0), i32 %conv5, i32 %conv7, i32 %conv9, i32 %conv11) #1
  %22 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 0, i32* %22, align 4, !tbaa !27
  %23 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.4, %if.end
  %24 = bitcast %struct.in_addr* %in_addr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = load i32, i32* %r, align 4, !tbaa !27
  %cmp14 = icmp slt i32 %25, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  %26 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 69, i32* %26, align 4, !tbaa !27
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.13
  %27 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 38), align 1, !tbaa !10
  %conv18 = zext i8 %27 to i32
  %cmp19 = icmp sge i32 %conv18, 2
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.25

land.lhs.true.21:                                 ; preds = %if.end.17
  %28 = load volatile i32, i32* @IntSig, align 4, !tbaa !27
  %tobool22 = icmp ne i32 %28, 0
  br i1 %tobool22, label %if.end.25, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.21
  %29 = load i32, i32* %r, align 4, !tbaa !27
  %arraydecay24 = getelementptr inbounds [128 x i8], [128 x i8]* %result, i32 0, i32 0
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.116, i32 0, i32 0), i32 %29, i8* %arraydecay24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %land.lhs.true.21, %if.end.17
  %30 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  %31 = load i32, i32* %30, align 4, !tbaa !27
  %cmp26 = icmp eq i32 %31, 0
  br i1 %cmp26, label %if.then.28, label %if.end.39

if.then.28:                                       ; preds = %if.end.25
  %32 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %32, i32 0, i32 3
  %33 = load i64, i64* %map_mflags, align 8, !tbaa !5
  %and = and i64 %33, 16
  %cmp29 = icmp ne i64 %and, 0
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.then.28
  %34 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %36 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call32 = call i64 @strlen(i8* %36) #9
  %call33 = call i8* @map_rewrite(%struct._map* %34, i8* %35, i64 %call32, i8** null)
  store i8* %call33, i8** %rval, align 8, !tbaa !1
  br label %if.end.38

if.else:                                          ; preds = %if.then.28
  %37 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %arraydecay34 = getelementptr inbounds [128 x i8], [128 x i8]* %result, i32 0, i32 0
  %arraydecay35 = getelementptr inbounds [128 x i8], [128 x i8]* %result, i32 0, i32 0
  %call36 = call i64 @strlen(i8* %arraydecay35) #9
  %38 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %call37 = call i8* @map_rewrite(%struct._map* %37, i8* %arraydecay34, i64 %call36, i8** %38)
  store i8* %call37, i8** %rval, align 8, !tbaa !1
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.31
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.25
  %39 = load i8*, i8** %rval, align 8, !tbaa !1
  %40 = bitcast [128 x i8]* %result to i8*
  call void @llvm.lifetime.end(i64 128, i8* %40) #1
  %41 = bitcast i8** %rval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  ret i8* %39
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i32 @inet_pton(i32, i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare i32 @rebuildaliases(%struct._map*, i32) #4

declare i8* @shorten_hostname(i8*) #4

declare %struct.sm_file* @sm_io_open(%struct.sm_file*, i32, i8*, i32, i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strpbrk_c2(i8* %__s, i32 %__accept1, i32 %__accept2) #7 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !27
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !10
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !10
  %conv2 = sext i8 %3 to i32
  %4 = load i32, i32* %__accept1.addr, align 4, !tbaa !27
  %cmp3 = icmp ne i32 %conv2, %4
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !10
  %conv5 = sext i8 %6 to i32
  %7 = load i32, i32* %__accept2.addr, align 4, !tbaa !27
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
  %11 = load i8, i8* %10, align 1, !tbaa !10
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
define available_externally i8* @__strpbrk_c3(i8* %__s, i32 %__accept1, i32 %__accept2, i32 %__accept3) #7 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  %__accept3.addr = alloca i32, align 4
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !27
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !27
  store i32 %__accept3, i32* %__accept3.addr, align 4, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !10
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !10
  %conv2 = sext i8 %3 to i32
  %4 = load i32, i32* %__accept1.addr, align 4, !tbaa !27
  %cmp3 = icmp ne i32 %conv2, %4
  br i1 %cmp3, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %5 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !10
  %conv6 = sext i8 %6 to i32
  %7 = load i32, i32* %__accept2.addr, align 4, !tbaa !27
  %cmp7 = icmp ne i32 %conv6, %7
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %8 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !10
  %conv9 = sext i8 %9 to i32
  %10 = load i32, i32* %__accept3.addr, align 4, !tbaa !27
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
  %14 = load i8, i8* %13, align 1, !tbaa !10
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
declare i8* @strpbrk(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @extract_canonname(i8* %name, i8* %dot, i8* %line, i8* %cbuf, i32 %cbuflen) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %dot.addr = alloca i8*, align 8
  %line.addr = alloca i8*, align 8
  %cbuf.addr = alloca i8*, align 8
  %cbuflen.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %found = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %nbuf = alloca [257 x i8], align 16
  %domain = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8* %dot, i8** %dot.addr, align 8, !tbaa !1
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i8* %cbuf, i8** %cbuf.addr, align 8, !tbaa !1
  store i32 %cbuflen, i32* %cbuflen.addr, align 4, !tbaa !27
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %found, align 4, !tbaa !27
  %3 = load i8*, i8** %cbuf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !10
  %4 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx1, align 1, !tbaa !10
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = bitcast [257 x i8]* %nbuf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %6) #1
  %7 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %8 = load i32, i32* %i, align 4, !tbaa !27
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %nbuf, i32 0, i32 0
  %call = call i8* @get_column(i8* %7, i32 %8, i32 0, i8* %arraydecay, i32 257)
  store i8* %call, i8** %p, align 8, !tbaa !1
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp3 = icmp eq i8* %9, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %for.cond
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !10
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %cbuf.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx12, align 1, !tbaa !10
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %14 = load i8*, i8** %cbuf.addr, align 8, !tbaa !1
  %call16 = call i8* @strchr(i8* %14, i32 46) #1
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %lor.lhs.false
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %call19 = call i8* @strchr(i8* %15, i32 46) #1
  %cmp20 = icmp ne i8* %call19, null
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %land.lhs.true, %if.end.11
  %16 = load i8*, i8** %cbuf.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %p, align 8, !tbaa !1
  %18 = load i32, i32* %cbuflen.addr, align 4, !tbaa !27
  %conv23 = sext i32 %18 to i64
  %call24 = call i64 @sm_strlcpy(i8* %16, i8* %17, i64 %conv23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %land.lhs.true, %lor.lhs.false
  %19 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %p, align 8, !tbaa !1
  %call26 = call i32 @sm_strcasecmp(i8* %19, i8* %20)
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end.25
  store i32 1, i32* %found, align 4, !tbaa !27
  br label %if.end.39

if.else:                                          ; preds = %if.end.25
  %21 = load i8*, i8** %dot.addr, align 8, !tbaa !1
  %cmp30 = icmp ne i8* %21, null
  br i1 %cmp30, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %if.else
  %22 = load i8*, i8** %dot.addr, align 8, !tbaa !1
  store i8 46, i8* %22, align 1, !tbaa !10
  %23 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %p, align 8, !tbaa !1
  %call33 = call i32 @sm_strcasecmp(i8* %23, i8* %24)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.32
  store i32 1, i32* %found, align 4, !tbaa !27
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.then.32
  %25 = load i8*, i8** %dot.addr, align 8, !tbaa !1
  store i8 0, i8* %25, align 1, !tbaa !10
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.10, %if.then.5
  %26 = bitcast [257 x i8]* %nbuf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %26) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %27 = load i32, i32* %i, align 4, !tbaa !27
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !27
  br label %for.cond

for.end:                                          ; preds = %cleanup
  %28 = load i32, i32* %found, align 4, !tbaa !27
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %land.lhs.true.40, label %if.end.63

land.lhs.true.40:                                 ; preds = %for.end
  %29 = load i8*, i8** %cbuf.addr, align 8, !tbaa !1
  %call41 = call i8* @strchr(i8* %29, i32 46) #1
  %cmp42 = icmp eq i8* %call41, null
  br i1 %cmp42, label %if.then.44, label %if.end.63

if.then.44:                                       ; preds = %land.lhs.true.40
  %30 = bitcast i8** %domain to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %call45 = call i8* @macvalue(i32 109, %struct.envelope* %31)
  store i8* %call45, i8** %domain, align 8, !tbaa !1
  %32 = load i8*, i8** %domain, align 8, !tbaa !1
  %cmp46 = icmp ne i8* %32, null
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.62

land.lhs.true.48:                                 ; preds = %if.then.44
  %33 = load i8*, i8** %domain, align 8, !tbaa !1
  %call49 = call i64 @strlen(i8* %33) #9
  %34 = load i8*, i8** %cbuf.addr, align 8, !tbaa !1
  %call50 = call i64 @strlen(i8* %34) #9
  %conv51 = trunc i64 %call50 to i32
  store i32 %conv51, i32* %i, align 4, !tbaa !27
  %conv52 = sext i32 %conv51 to i64
  %add = add i64 %call49, %conv52
  %add53 = add i64 %add, 1
  %35 = load i32, i32* %cbuflen.addr, align 4, !tbaa !27
  %conv54 = sext i32 %35 to i64
  %cmp55 = icmp ult i64 %add53, %conv54
  br i1 %cmp55, label %if.then.57, label %if.end.62

if.then.57:                                       ; preds = %land.lhs.true.48
  %36 = load i32, i32* %i, align 4, !tbaa !27
  %idxprom = sext i32 %36 to i64
  %37 = load i8*, i8** %cbuf.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %37, i64 %idxprom
  store i8* %arrayidx58, i8** %p, align 8, !tbaa !1
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 46, i8* %38, align 1, !tbaa !10
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %40 = load i8*, i8** %domain, align 8, !tbaa !1
  %41 = load i32, i32* %cbuflen.addr, align 4, !tbaa !27
  %42 = load i32, i32* %i, align 4, !tbaa !27
  %sub = sub nsw i32 %41, %42
  %sub59 = sub nsw i32 %sub, 1
  %conv60 = sext i32 %sub59 to i64
  %call61 = call i64 @sm_strlcpy(i8* %39, i8* %40, i64 %conv60)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.57, %land.lhs.true.48, %if.then.44
  %43 = bitcast i8** %domain to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %land.lhs.true.40, %for.end
  %44 = load i32, i32* %found, align 4, !tbaa !27
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %if.end.63, %if.then
  %45 = bitcast i32* %found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = load i32, i32* %retval
  ret i32 %48

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 24}
!6 = !{!"_map", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72, !3, i64 73, !3, i64 74, !3, i64 75, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !7, i64 112, !7, i64 120, !8, i64 128, !8, i64 132, !8, i64 136, !9, i64 140, !3, i64 144, !3, i64 240}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!3, !3, i64 0}
!11 = !{!6, !3, i64 75}
!12 = !{!9, !9, i64 0}
!13 = !{!6, !2, i64 80}
!14 = !{!6, !7, i64 120}
!15 = !{!6, !2, i64 88}
!16 = !{!6, !2, i64 56}
!17 = !{!6, !2, i64 64}
!18 = !{!6, !3, i64 74}
!19 = !{!6, !2, i64 16}
!20 = !{!6, !2, i64 32}
!21 = !{!6, !2, i64 104}
!22 = !{!6, !2, i64 0}
!23 = !{!24, !9, i64 16}
!24 = !{!"_mapclass", !2, i64 0, !2, i64 8, !9, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!25 = !{!24, !2, i64 0}
!26 = !{!7, !7, i64 0}
!27 = !{!8, !8, i64 0}
!28 = !{!29, !9, i64 8}
!29 = !{!"symtab", !2, i64 0, !9, i64 8, !2, i64 16, !3, i64 24}
!30 = !{!24, !2, i64 56}
!31 = !{!24, !2, i64 48}
!32 = !{!6, !8, i64 132}
!33 = !{!6, !2, i64 8}
!34 = !{!35, !8, i64 0}
!35 = !{!"dns_map", !8, i64 0}
!36 = !{!6, !8, i64 128}
!37 = !{!6, !8, i64 136}
!38 = !{!6, !2, i64 40}
!39 = !{!40, !2, i64 32}
!40 = !{!"", !41, i64 0, !42, i64 16, !2, i64 32}
!41 = !{!"", !8, i64 0, !8, i64 2, !8, i64 2, !8, i64 2, !8, i64 2, !8, i64 2, !8, i64 3, !8, i64 3, !8, i64 3, !8, i64 3, !8, i64 3, !8, i64 4, !8, i64 6, !8, i64 8, !8, i64 10}
!42 = !{!"", !2, i64 0, !8, i64 8, !8, i64 12}
!43 = !{!44, !8, i64 8}
!44 = !{!"resource_record", !2, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !3, i64 24, !2, i64 32}
!45 = !{!44, !2, i64 32}
!46 = !{!47, !2, i64 344}
!47 = !{!"envelope", !2, i64 0, !7, i64 8, !7, i64 16, !2, i64 24, !48, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !7, i64 256, !2, i64 264, !7, i64 272, !8, i64 280, !9, i64 284, !9, i64 286, !9, i64 288, !9, i64 290, !9, i64 292, !9, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !7, i64 456, !8, i64 464, !7, i64 472, !7, i64 480, !49, i64 488, !2, i64 2576, !2, i64 2584, !50, i64 2592, !7, i64 2624, !8, i64 2632, !2, i64 2640, !8, i64 2648}
!48 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !8, i64 48, !8, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !9, i64 160, !2, i64 168, !8, i64 176, !8, i64 180, !2, i64 184}
!49 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!50 = !{!"sm_timers", !51, i64 0}
!51 = !{!"_timer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!52 = !{!6, !3, i64 72}
!53 = !{!6, !3, i64 73}
!54 = !{!55, !7, i64 88}
!55 = !{!"stat", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !56, i64 72, !56, i64 88, !56, i64 104, !3, i64 120}
!56 = !{!"timespec", !7, i64 0, !7, i64 8}
!57 = !{!6, !7, i64 112}
!58 = !{!59, !8, i64 0}
!59 = !{!"", !8, i64 0, !8, i64 4, !3, i64 8, !3, i64 264, !3, i64 520, !3, i64 4616}
!60 = !{!59, !8, i64 4}
!61 = !{!24, !2, i64 32}
!62 = !{!24, !2, i64 40}
