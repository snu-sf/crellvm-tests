; ModuleID = '7.headers.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdrinfo = type { i8*, i64, i8* }
%union.bigsockaddr = type { %struct.sockaddr_in, [96 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.priority = type { i8*, i32 }
%struct.symtab = type { i8*, i16, %struct.symtab*, %union.anon }
%union.anon = type { %struct.mailer_con_info }
%struct.mailer_con_info = type { i64, i16, i16, i16, i16, i32, i64, %struct.sm_file*, %struct.sm_file*, i32, i8*, %struct.mailer*, i8*, i8*, i8*, i64, %struct.sm_file*, i8*, i64, i32, i8*, %struct.SM_RPOOL_T*, i32, %struct.address*, %struct.MACROS_T }
%struct.mailer = type { i8*, i8*, i8*, i8*, i8*, [8 x i32], i16, i16, i8**, i16, i16, i16, i16, i8*, i64, i32, i32, i8*, i8*, i32, i32, i8*, i64, i32, i16 }
%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%struct.SM_RPOOL_T = type { i8*, void (i8*)**, i64, i64, i8*, i64, %struct.sm_poollink*, %struct.sm_resource*, i64, %struct.sm_rlist* }
%struct.sm_poollink = type { %struct.sm_poollink* }
%struct.sm_resource = type { void (i8*)*, i8* }
%struct.sm_rlist = type { [511 x %struct.sm_resource], %struct.sm_rlist* }
%struct.address = type { i8*, i8*, i8*, i8*, %struct.mailer*, i64, i32, i32, i8*, i8*, %struct.address*, %struct.address*, i8*, %struct.address*, %struct.address*, i8*, i8*, i8*, i8*, i64, i8*, i16, i8*, i32, i32, i8* }
%struct.MACROS_T = type { %struct.SM_RPOOL_T*, [8 x i32], [256 x i8*] }
%struct.header = type { i8*, i8*, %struct.header*, i8, i64, [8 x i32] }
%struct.envelope = type { %struct.header*, i64, i64, i8*, %struct.address, i8*, i8**, %struct.address*, %struct.address*, i64, i8*, i64, i32, i16, i16, i16, i16, i16, i16, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)*, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)*, %struct.envelope*, %struct.envelope*, i8*, %struct.sm_file*, i8*, i32, i32, i32, i32, i32, i32, %struct.sm_file*, %struct.sm_file*, i8*, i8*, i8*, i8, i8*, i8*, i8*, i8*, i64, i32, i64, i64, %struct.MACROS_T, %struct.mailer_con_info*, i8*, %struct.sm_timers, i64, i32, %struct.SM_RPOOL_T*, i32 }
%struct.sm_timers = type { %struct._timer }
%struct._timer = type { i64, i64, i64, i64 }
%struct.sockaddr = type { i16, [14 x i8] }

@HdrInfo = external global [0 x %struct.hdrinfo], align 8
@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"chompheader: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"chompheader: quoted: \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"headers.c\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"SM_ASSERT(last != NULL) failed\00", align 1
@SmHeapGroup = external global i32, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"full-name\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"----- collected header -----\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"<NULL>\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c") \00", align 1
@GrabTo = external global i32, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"resent-message-id\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"{msg_id}\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"----------------------------\0A\00", align 1
@OpMode = external global i8, align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"precedence\00", align 1
@WkClassFact = external global i64, align 8
@WkRecipFact = external global i64, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"content-type\00", align 1
@SuprErrs = external global i32, align 4
@MimeTokenTab = external global [256 x i8], align 16
@.str.17 = private unnamed_addr constant [10 x i8] c"multipart\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"report\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"report-type\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"delivery-status\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"urgent\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"non-urgent\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"posted-date\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"8BITMIME\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"MIME-Version\00", align 1
@HasEightBits = external global i32, align 4
@.str.32 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c";/\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"eatheader: setsender(*%s == %s)\0A\00", align 1
@.str.35 = private unnamed_addr constant [58 x i8] c"eatheader: e_id=%s, EF_LOGSENDER=%d, LogLevel=%d, log=%d\0A\00", align 1
@LogLevel = external global i32, align 4
@.str.36 = private unnamed_addr constant [11 x i8] c"[RESPONSE]\00", align 1
@RealHostName = external global i8*, align 8
@.str.37 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"%.80s\00", align 1
@RealHostAddr = external global %union.bigsockaddr, align 4
@.str.39 = private unnamed_addr constant [10 x i8] c" (%.100s)\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"from=%.200s, size=%ld, class=%d, nrcpts=%d\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"<NONE>\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c", msgid=%.100s\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c", bodytype=%.20s\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c", proto=%.20s\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"{daemon_name}\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c", daemon=%.20s\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"%.850s, relay=%s\00", align 1
@crackaddr.buf = internal global [257 x i8] zeroinitializer, align 16
@.str.48 = private unnamed_addr constant [15 x i8] c"crackaddr(%s)\0A\00", align 1
@ColonOkInAddr = external global i32, align 4
@MustQuoteChars = external global i8*, align 8
@.str.49 = private unnamed_addr constant [45 x i8] c"Dropped invalid comments from header address\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"crackaddr=>`\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"--- putheader, mailer = %s ---\0A\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"  %s:\00", align 1
@MaxMimeFieldLength = external global i32, align 4
@.str.54 = private unnamed_addr constant [24 x i8] c"{checkMIMEFieldHeaders}\00", align 1
@.str.55 = private unnamed_addr constant [76 x i8] c"Truncated MIME %s header due to field size (length = %ld) (possible attack)\00", align 1
@.str.56 = private unnamed_addr constant [80 x i8] c"  truncated MIME %s header due to field size  (length = %ld) (possible attack)\0A\00", align 1
@MaxMimeHeaderLength = external global i32, align 4
@.str.57 = private unnamed_addr constant [23 x i8] c"{checkMIMETextHeaders}\00", align 1
@.str.58 = private unnamed_addr constant [63 x i8] c"Truncated long MIME %s header (length = %ld) (possible attack)\00", align 1
@.str.59 = private unnamed_addr constant [66 x i8] c"  truncated long MIME %s header (length = %ld) (possible attack)\0A\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"{checkMIMEHeaders}\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"Fixed MIME %s header (possible attack)\00", align 1
@.str.62 = private unnamed_addr constant [42 x i8] c"  fixed MIME %s header (possible attack)\0A\00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c" (skipped (content-transfer-encoding))\0A\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c" (skipped)\0A\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c" (skipped (resent))\0A\00", align 1
@RrtImpliesDsn = external global i32, align 4
@.str.66 = private unnamed_addr constant [22 x i8] c" (skipped (receipt))\0A\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c" (skipped -- null value)\0A\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c" (skipped -- bcc)\0A\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c":\00", align 1
@MimeMode = external global i32, align 4
@.str.70 = private unnamed_addr constant [18 x i8] c"MIME-Version: 1.0\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"Content-Type: text/plain; charset=%s\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"Content-Transfer-Encoding\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"Content-Transfer-Encoding: 8bit\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"commaize(%s:%s)\0A\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"%.200s:\00", align 1
@.str.76 = private unnamed_addr constant [42 x i8] c"SM_ASSERT(sizeof(obuf) > opos * 2) failed\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.78 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.79 = private unnamed_addr constant [39 x i8] c"SM_ASSERT(obp < &obuf[MAXLINE]) failed\00", align 1
@ExtTokenTab = external global [256 x i8], align 16
@.str.80 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"SM_ASSERT(p <= q) failed\00", align 1
@.str.84 = private unnamed_addr constant [41 x i8] c"553 5.3.0 header syntax error, line \22%s\22\00", align 1
@.str.85 = private unnamed_addr constant [57 x i8] c"Warning: redefined ruleset for header=%s, old=%s, new=%s\00", align 1
@NormalHeader = internal global %struct.hdrinfo zeroinitializer, align 8
@.str.86 = private unnamed_addr constant [23 x i8] c"no header flags match\0A\00", align 1
@.str.87 = private unnamed_addr constant [37 x i8] c"header match, flags=%lx, ruleset=%s\0A\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@UseErrorsTo = external global i32, align 4
@SingleLineFromHeader = external global i32, align 4
@.str.89 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.90 = private unnamed_addr constant [68 x i8] c"Warning: truncated header '%s' before check with '%s' len=%d max=%d\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"{currHeader}\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"{hdr_name}\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"{hdrlen}\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"{addr_type}\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"h s\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"h r\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"resent-from\00", align 1
@.str.99 = private unnamed_addr constant [64 x i8] c"comparing header from (%s) against default (%s or %s), drop=%d\0A\00", align 1
@.str.100 = private unnamed_addr constant [28 x i8] c"SM_ASSERT(l + 2 > l) failed\00", align 1
@NumPriorities = external global i32, align 4
@Priorities = external global [25 x %struct.priority], align 16
@.str.101 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.102 = private unnamed_addr constant [45 x i8] c"Fixed MIME %s header field (possible attack)\00", align 1
@.str.103 = private unnamed_addr constant [48 x i8] c"  fixed MIME %s header field (possible attack)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @setupheaders() #0 {
entry:
  %hi = alloca %struct.hdrinfo*, align 8
  %s = alloca %struct.symtab*, align 8
  %0 = bitcast %struct.hdrinfo** %hi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.hdrinfo* getelementptr inbounds ([0 x %struct.hdrinfo], [0 x %struct.hdrinfo]* @HdrInfo, i32 0, i32 0), %struct.hdrinfo** %hi, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_field = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %2, i32 0, i32 0
  %3 = load i8*, i8** %hi_field, align 8, !tbaa !5
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_field1 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %4, i32 0, i32 0
  %5 = load i8*, i8** %hi_field1, align 8, !tbaa !5
  %call = call %struct.symtab* @stab(i8* %5, i32 12, i32 1)
  store %struct.symtab* %call, %struct.symtab** %s, align 8, !tbaa !1
  %6 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %6, i32 0, i32 1
  %7 = load i64, i64* %hi_flags, align 8, !tbaa !8
  %8 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %8, i32 0, i32 3
  %sv_header = bitcast %union.anon* %s_value to %struct.hdrinfo*
  %hi_flags2 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %sv_header, i32 0, i32 1
  store i64 %7, i64* %hi_flags2, align 8, !tbaa !8
  %9 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value3 = getelementptr inbounds %struct.symtab, %struct.symtab* %9, i32 0, i32 3
  %sv_header4 = bitcast %union.anon* %s_value3 to %struct.hdrinfo*
  %hi_ruleset = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %sv_header4, i32 0, i32 2
  store i8* null, i8** %hi_ruleset, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %10, i32 1
  store %struct.hdrinfo* %incdec.ptr, %struct.hdrinfo** %hi, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.hdrinfo** %hi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.symtab* @stab(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @chompheader(i8* %line, i32 %pflag, %struct.header** %hdrp, %struct.envelope* %e) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %pflag.addr = alloca i32, align 4
  %hdrp.addr = alloca %struct.header**, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %rval = alloca i64, align 8
  %xbuf = alloca [2048 x i8], align 16
  %xbp = alloca i8*, align 8
  %xbufs = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %pflag, i32* %pflag.addr, align 4, !tbaa !10
  store %struct.header** %hdrp, %struct.header*** %hdrp.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i64* %rval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 31), align 1, !tbaa !12
  %conv = zext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call = call %struct.sm_file* @sm_debug_file()
  %3 = load i8*, i8** %line.addr, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call, i8* %3)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i32, i32* %pflag.addr, align 4, !tbaa !10
  %and = and i32 4, %4
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %5 = bitcast [2048 x i8]* %xbuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %5) #1
  %6 = bitcast i8** %xbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* null, i8** %xbp, align 8, !tbaa !1
  %7 = bitcast i32* %xbufs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 2048, i32* %xbufs, align 4, !tbaa !10
  %8 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %xbuf, i32 0, i32 0
  %call5 = call i8* @quote_internal_chars(i8* %8, i8* %arraydecay, i32* %xbufs)
  store i8* %call5, i8** %xbp, align 8, !tbaa !1
  %9 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 31), align 1, !tbaa !12
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp sge i32 %conv6, 7
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.13

land.lhs.true.9:                                  ; preds = %if.then.4
  %10 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true.9
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  %call12 = call %struct.sm_file* @sm_debug_file()
  %11 = load i8*, i8** %xbp, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call12, i8* %11)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %land.lhs.true.9, %if.then.4
  %12 = load i8*, i8** %xbp, align 8, !tbaa !1
  %13 = load i32, i32* %pflag.addr, align 4, !tbaa !10
  %14 = load %struct.header**, %struct.header*** %hdrp.addr, align 8, !tbaa !1
  %15 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call14 = call i64 @dochompheader(i8* %12, i32 %13, %struct.header** %14, %struct.envelope* %15)
  store i64 %call14, i64* %rval, align 8, !tbaa !13
  %16 = load i8*, i8** %xbp, align 8, !tbaa !1
  %arraydecay15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %xbuf, i32 0, i32 0
  %cmp16 = icmp ne i8* %16, %arraydecay15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.13
  %17 = load i8*, i8** %xbp, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 522)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.13
  %18 = bitcast i32* %xbufs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i8** %xbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast [2048 x i8]* %xbuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %20) #1
  br label %if.end.21

if.else:                                          ; preds = %if.end
  %21 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %22 = load i32, i32* %pflag.addr, align 4, !tbaa !10
  %23 = load %struct.header**, %struct.header*** %hdrp.addr, align 8, !tbaa !1
  %24 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call20 = call i64 @dochompheader(i8* %21, i32 %22, %struct.header** %23, %struct.envelope* %24)
  store i64 %call20, i64* %rval, align 8, !tbaa !13
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.end.19
  %25 = load i64, i64* %rval, align 8, !tbaa !13
  %26 = bitcast i64* %rval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret i64 %25
}

declare void @sm_dprintf(i8*, ...) #2

declare void @xputs(%struct.sm_file*, i8*) #2

declare %struct.sm_file* @sm_debug_file() #2

declare i8* @quote_internal_chars(i8*, i8*, i32*) #2

; Function Attrs: nounwind uwtable
define internal i64 @dochompheader(i8* %line, i32 %pflag, %struct.header** %hdrp, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i64, align 8
  %line.addr = alloca i8*, align 8
  %pflag.addr = alloca i32, align 4
  %hdrp.addr = alloca %struct.header**, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %mid = alloca i8, align 1
  %p = alloca i8*, align 8
  %h = alloca %struct.header*, align 8
  %hp = alloca %struct.header**, align 8
  %fname = alloca i8*, align 8
  %fvalue = alloca i8*, align 8
  %cond = alloca i32, align 4
  %dropfrom = alloca i32, align 4
  %headeronly = alloca i32, align 4
  %s = alloca %struct.symtab*, align 8
  %hi = alloca %struct.hdrinfo*, align 8
  %nullheader = alloca i32, align 4
  %mopts = alloca [8 x i32], align 16
  %c = alloca i32, align 4
  %q = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %hbuf = alloca [50 x i8], align 16
  %endp = alloca i8*, align 8
  %strc = alloca i32, align 4
  %rscheckflags = alloca i32, align 4
  %rs = alloca i8*, align 8
  %l = alloca i32, align 4
  %k = alloca i32, align 4
  %qval = alloca [256 x i8], align 16
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1_len463 = alloca i64, align 8
  %__s2_len465 = alloca i64, align 8
  %tmp466 = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %pflag, i32* %pflag.addr, align 4, !tbaa !10
  store %struct.header** %hdrp, %struct.header*** %hdrp.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %mid) #1
  store i8 0, i8* %mid, align 1, !tbaa !12
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.header*** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %fvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %cond to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %cond, align 4, !tbaa !10
  %6 = bitcast i32* %dropfrom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %headeronly to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.hdrinfo** %hi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %nullheader to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %nullheader, align 4, !tbaa !10
  %11 = bitcast [8 x i32]* %mopts to i8*
  call void @llvm.lifetime.start(i64 32, i8* %11) #1
  %12 = load %struct.header**, %struct.header*** %hdrp.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.header** %12, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %headeronly, align 4, !tbaa !10
  %13 = load i32, i32* %headeronly, align 4, !tbaa !10
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 0
  store %struct.header** %e_header, %struct.header*** %hdrp.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %mopts, i32 0, i32 0
  %15 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 32, i32 1, i1 false)
  %16 = load i8*, i8** %line.addr, align 8, !tbaa !1
  store i8* %16, i8** %p, align 8, !tbaa !1
  %17 = load i32, i32* %pflag.addr, align 4, !tbaa !10
  %and = and i32 4, %17
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.end.82, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %18 = load i8*, i8** %p, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !12
  %conv3 = sext i8 %19 to i32
  %cmp4 = icmp eq i32 %conv3, 63
  br i1 %cmp4, label %if.then.6, label %if.end.82

if.then.6:                                        ; preds = %land.lhs.true
  %20 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %call = call i8* @strchr(i8* %incdec.ptr, i32 63) #1
  store i8* %call, i8** %q, align 8, !tbaa !1
  %23 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %23, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.then.6
  %24 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 0, i8* %24, align 1, !tbaa !12
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !12
  %conv11 = sext i8 %26 to i32
  %and12 = and i32 %conv11, 255
  store i32 %and12, i32* %c, align 4, !tbaa !10
  %27 = load i32, i32* %c, align 4, !tbaa !10
  %cmp13 = icmp eq i32 %27, 129
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.10
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr16, i8** %p, align 8, !tbaa !1
  %29 = load i8, i8* %incdec.ptr16, align 1, !tbaa !12
  %conv17 = sext i8 %29 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.15
  %30 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 63, i8* %30, align 1, !tbaa !12
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.15
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr22, i8** %p, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !12
  store i8 %32, i8* %mid, align 1, !tbaa !12
  %33 = load i8*, i8** %p, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !12
  %conv23 = sext i8 %34 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.21
  %35 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 63, i8* %35, align 1, !tbaa !12
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.21
  br label %if.end.79

if.else:                                          ; preds = %if.end.10
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !12
  %conv28 = sext i8 %37 to i32
  %cmp29 = icmp eq i32 %conv28, 36
  br i1 %cmp29, label %if.then.31, label %if.else.58

if.then.31:                                       ; preds = %if.else
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr32, i8** %p, align 8, !tbaa !1
  %39 = load i8, i8* %incdec.ptr32, align 1, !tbaa !12
  %conv33 = sext i8 %39 to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.31
  %40 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 63, i8* %40, align 1, !tbaa !12
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %if.then.31
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %call38 = call i32 @macid_parse(i8* %41, i8** null)
  %conv39 = trunc i32 %call38 to i8
  store i8 %conv39, i8* %mid, align 1, !tbaa !12
  %42 = load i8, i8* %mid, align 1, !tbaa !12
  %conv40 = zext i8 %42 to i32
  %and41 = and i32 %conv40, 128
  %cmp42 = icmp ne i32 %and41, 0
  br i1 %cmp42, label %if.then.44, label %if.else.50

if.then.44:                                       ; preds = %if.end.37
  %43 = load i8, i8* %mid, align 1, !tbaa !12
  %conv45 = zext i8 %43 to i32
  %call46 = call i8* @macname(i32 %conv45)
  %call47 = call i64 @strlen(i8* %call46) #8
  %add = add i64 %call47, 2
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %add
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %46 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp48 = icmp ule i8* %45, %46
  br i1 %cmp48, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.44
  call void @sm_abort_at(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.83, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %47, %if.then.44
  %48 = phi i1 [ true, %if.then.44 ], [ false, %47 ]
  %lor.ext = zext i1 %48 to i32
  br label %if.end.52

if.else.50:                                       ; preds = %if.end.37
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr51 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr51, i8** %p, align 8, !tbaa !1
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.50, %lor.end
  %50 = load i8*, i8** %p, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !12
  %conv53 = sext i8 %51 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.52
  %52 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 63, i8* %52, align 1, !tbaa !12
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.52
  br label %if.end.78

if.else.58:                                       ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %if.end.67, %if.else.58
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %54 = load i8, i8* %53, align 1, !tbaa !12
  %conv59 = sext i8 %54 to i32
  %cmp60 = icmp ne i32 %conv59, 0
  br i1 %cmp60, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %55 = load i8*, i8** %p, align 8, !tbaa !1
  %56 = load i8, i8* %55, align 1, !tbaa !12
  %conv62 = sext i8 %56 to i32
  %and63 = and i32 %conv62, -128
  %cmp64 = icmp eq i32 %and63, 0
  br i1 %cmp64, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %while.body
  %57 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 63, i8* %57, align 1, !tbaa !12
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %while.body
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %59 = load i8, i8* %58, align 1, !tbaa !12
  %conv68 = sext i8 %59 to i32
  %and69 = and i32 %conv68, 255
  %conv70 = trunc i32 %and69 to i8
  %conv71 = zext i8 %conv70 to i64
  %rem = urem i64 %conv71, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %60 = load i8*, i8** %p, align 8, !tbaa !1
  %61 = load i8, i8* %60, align 1, !tbaa !12
  %conv72 = sext i8 %61 to i32
  %and73 = and i32 %conv72, 255
  %conv74 = trunc i32 %and73 to i8
  %conv75 = zext i8 %conv74 to i64
  %div = udiv i64 %conv75, 32
  %and76 = and i64 %div, 7
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %mopts, i32 0, i64 %and76
  %62 = load i32, i32* %arrayidx, align 4, !tbaa !10
  %or = or i32 %62, %shl
  store i32 %or, i32* %arrayidx, align 4, !tbaa !10
  store i32 1, i32* %cond, align 4, !tbaa !10
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr77 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr77, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.78

if.end.78:                                        ; preds = %while.end, %if.end.57
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.27
  %64 = load i8*, i8** %q, align 8, !tbaa !1
  %add.ptr80 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %add.ptr80, i8** %p, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.66, %if.then.56, %if.then.36, %if.then.26, %if.then.20, %if.then.9, %if.end.79
  %65 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.606 [
    i32 0, label %cleanup.cont
    i32 2, label %hse
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.82

if.end.82:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.end
  %67 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %67, i8** %fname, align 8, !tbaa !1
  br label %while.cond.83

while.cond.83:                                    ; preds = %while.body.98, %if.end.82
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !12
  %conv84 = sext i8 %69 to i32
  %and85 = and i32 %conv84, -128
  %cmp86 = icmp eq i32 %and85, 0
  br i1 %cmp86, label %land.lhs.true.88, label %land.end

land.lhs.true.88:                                 ; preds = %while.cond.83
  %70 = load i8*, i8** %p, align 8, !tbaa !1
  %71 = load i8, i8* %70, align 1, !tbaa !12
  %conv89 = sext i8 %71 to i32
  %idxprom = sext i32 %conv89 to i64
  %call90 = call i16** @__ctype_b_loc() #10
  %72 = load i16*, i16** %call90, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i16, i16* %72, i64 %idxprom
  %73 = load i16, i16* %arrayidx91, align 2, !tbaa !14
  %conv92 = zext i16 %73 to i32
  %and93 = and i32 %conv92, 32768
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.88
  %74 = load i8*, i8** %p, align 8, !tbaa !1
  %75 = load i8, i8* %74, align 1, !tbaa !12
  %conv95 = sext i8 %75 to i32
  %cmp96 = icmp ne i32 %conv95, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.88, %while.cond.83
  %76 = phi i1 [ false, %land.lhs.true.88 ], [ false, %while.cond.83 ], [ %cmp96, %land.rhs ]
  br i1 %76, label %while.body.98, label %while.end.100

while.body.98:                                    ; preds = %land.end
  %77 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr99 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr99, i8** %p, align 8, !tbaa !1
  br label %while.cond.83

while.end.100:                                    ; preds = %land.end
  %78 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %78, i8** %fvalue, align 8, !tbaa !1
  br label %while.cond.101

while.cond.101:                                   ; preds = %while.body.115, %while.end.100
  %79 = load i8*, i8** %p, align 8, !tbaa !1
  %80 = load i8, i8* %79, align 1, !tbaa !12
  %conv102 = sext i8 %80 to i32
  %and103 = and i32 %conv102, -128
  %cmp104 = icmp eq i32 %and103, 0
  br i1 %cmp104, label %land.rhs.106, label %land.end.114

land.rhs.106:                                     ; preds = %while.cond.101
  %81 = load i8*, i8** %p, align 8, !tbaa !1
  %82 = load i8, i8* %81, align 1, !tbaa !12
  %conv107 = sext i8 %82 to i32
  %idxprom108 = sext i32 %conv107 to i64
  %call109 = call i16** @__ctype_b_loc() #10
  %83 = load i16*, i16** %call109, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i16, i16* %83, i64 %idxprom108
  %84 = load i16, i16* %arrayidx110, align 2, !tbaa !14
  %conv111 = zext i16 %84 to i32
  %and112 = and i32 %conv111, 8192
  %tobool113 = icmp ne i32 %and112, 0
  br label %land.end.114

land.end.114:                                     ; preds = %land.rhs.106, %while.cond.101
  %85 = phi i1 [ false, %while.cond.101 ], [ %tobool113, %land.rhs.106 ]
  br i1 %85, label %while.body.115, label %while.end.117

while.body.115:                                   ; preds = %land.end.114
  %86 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr116 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr116, i8** %p, align 8, !tbaa !1
  br label %while.cond.101

while.end.117:                                    ; preds = %land.end.114
  %87 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr118 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr118, i8** %p, align 8, !tbaa !1
  %88 = load i8, i8* %87, align 1, !tbaa !12
  %conv119 = sext i8 %88 to i32
  %cmp120 = icmp ne i32 %conv119, 58
  br i1 %cmp120, label %if.then.124, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.117
  %89 = load i8*, i8** %fname, align 8, !tbaa !1
  %90 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %cmp122 = icmp eq i8* %89, %90
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %lor.lhs.false, %while.end.117
  br label %hse

hse:                                              ; preds = %if.then.124, %cleanup
  %91 = load i8*, i8** %line.addr, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.84, i32 0, i32 0), i8* %91)
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.606

if.end.125:                                       ; preds = %lor.lhs.false
  %92 = load i8*, i8** %fvalue, align 8, !tbaa !1
  store i8 0, i8* %92, align 1, !tbaa !12
  %93 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %93, i8** %fvalue, align 8, !tbaa !1
  br label %while.cond.126

while.cond.126:                                   ; preds = %while.body.140, %if.end.125
  %94 = load i8*, i8** %p, align 8, !tbaa !1
  %95 = load i8, i8* %94, align 1, !tbaa !12
  %conv127 = sext i8 %95 to i32
  %and128 = and i32 %conv127, -128
  %cmp129 = icmp eq i32 %and128, 0
  br i1 %cmp129, label %land.rhs.131, label %land.end.139

land.rhs.131:                                     ; preds = %while.cond.126
  %96 = load i8*, i8** %p, align 8, !tbaa !1
  %97 = load i8, i8* %96, align 1, !tbaa !12
  %conv132 = sext i8 %97 to i32
  %idxprom133 = sext i32 %conv132 to i64
  %call134 = call i16** @__ctype_b_loc() #10
  %98 = load i16*, i16** %call134, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i16, i16* %98, i64 %idxprom133
  %99 = load i16, i16* %arrayidx135, align 2, !tbaa !14
  %conv136 = zext i16 %99 to i32
  %and137 = and i32 %conv136, 8192
  %tobool138 = icmp ne i32 %and137, 0
  br label %land.end.139

land.end.139:                                     ; preds = %land.rhs.131, %while.cond.126
  %100 = phi i1 [ false, %while.cond.126 ], [ %tobool138, %land.rhs.131 ]
  br i1 %100, label %while.body.140, label %while.end.142

while.body.140:                                   ; preds = %land.end.139
  %101 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr141 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr141, i8** %p, align 8, !tbaa !1
  br label %while.cond.126

while.end.142:                                    ; preds = %land.end.139
  %102 = load i8*, i8** %p, align 8, !tbaa !1
  %103 = load i8, i8* %102, align 1, !tbaa !12
  %conv143 = sext i8 %103 to i32
  %cmp144 = icmp eq i32 %conv143, 0
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %while.end.142
  store i32 1, i32* %nullheader, align 4, !tbaa !10
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %while.end.142
  %104 = load i8*, i8** %fname, align 8, !tbaa !1
  %call148 = call i64 @strlen(i8* %104) #8
  %cmp149 = icmp ugt i64 %call148, 100
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.147
  store i64 1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.606

if.end.152:                                       ; preds = %if.end.147
  %105 = load i32, i32* %pflag.addr, align 4, !tbaa !10
  %and153 = and i32 1, %105
  %cmp154 = icmp ne i32 %and153, 0
  br i1 %cmp154, label %if.then.156, label %if.end.218

if.then.156:                                      ; preds = %if.end.152
  %106 = bitcast [50 x i8]* %hbuf to i8*
  call void @llvm.lifetime.start(i64 50, i8* %106) #1
  %107 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %arraydecay157 = getelementptr inbounds [50 x i8], [50 x i8]* %hbuf, i32 0, i32 0
  %108 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %107, i8* %arraydecay157, i64 50, %struct.envelope* %108)
  %arraydecay158 = getelementptr inbounds [50 x i8], [50 x i8]* %hbuf, i32 0, i32 0
  store i8* %arraydecay158, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then.156
  %109 = load i8*, i8** %p, align 8, !tbaa !1
  %110 = load i8, i8* %109, align 1, !tbaa !12
  %conv159 = sext i8 %110 to i32
  %and160 = and i32 %conv159, -128
  %cmp161 = icmp eq i32 %and160, 0
  br i1 %cmp161, label %land.rhs.163, label %land.end.171

land.rhs.163:                                     ; preds = %for.cond
  %111 = load i8*, i8** %p, align 8, !tbaa !1
  %112 = load i8, i8* %111, align 1, !tbaa !12
  %conv164 = sext i8 %112 to i32
  %idxprom165 = sext i32 %conv164 to i64
  %call166 = call i16** @__ctype_b_loc() #10
  %113 = load i16*, i16** %call166, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i16, i16* %113, i64 %idxprom165
  %114 = load i16, i16* %arrayidx167, align 2, !tbaa !14
  %conv168 = zext i16 %114 to i32
  %and169 = and i32 %conv168, 8192
  %tobool170 = icmp ne i32 %and169, 0
  br label %land.end.171

land.end.171:                                     ; preds = %land.rhs.163, %for.cond
  %115 = phi i1 [ false, %for.cond ], [ %tobool170, %land.rhs.163 ]
  br i1 %115, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.171
  %116 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr172 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr172, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %land.end.171
  %117 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr173 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr173, i8** %p, align 8, !tbaa !1
  %118 = load i8, i8* %117, align 1, !tbaa !12
  %conv174 = sext i8 %118 to i32
  %and175 = and i32 %conv174, 255
  %cmp176 = icmp eq i32 %and175, 153
  br i1 %cmp176, label %if.then.178, label %if.end.214

if.then.178:                                      ; preds = %for.end
  %119 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %119) #1
  %120 = bitcast i32* %strc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %120) #1
  %121 = load i8*, i8** %p, align 8, !tbaa !1
  %122 = load i8, i8* %121, align 1, !tbaa !12
  %conv179 = sext i8 %122 to i32
  %cmp180 = icmp eq i32 %conv179, 43
  %conv181 = zext i1 %cmp180 to i32
  store i32 %conv181, i32* %strc, align 4, !tbaa !10
  %123 = load i32, i32* %strc, align 4, !tbaa !10
  %tobool182 = icmp ne i32 %123, 0
  br i1 %tobool182, label %if.then.183, label %if.end.185

if.then.183:                                      ; preds = %if.then.178
  %124 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr184 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %incdec.ptr184, i8** %p, align 8, !tbaa !1
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.183, %if.then.178
  %125 = load i8*, i8** %p, align 8, !tbaa !1
  %call186 = call i32 @strtorwset(i8* %125, i8** %endp, i32 1)
  %cmp187 = icmp sgt i32 %call186, 0
  br i1 %cmp187, label %if.then.189, label %if.end.211

if.then.189:                                      ; preds = %if.end.185
  %126 = load i8*, i8** %endp, align 8, !tbaa !1
  store i8 0, i8* %126, align 1, !tbaa !12
  %127 = load i8*, i8** %fname, align 8, !tbaa !1
  %call190 = call %struct.symtab* @stab(i8* %127, i32 12, i32 1)
  store %struct.symtab* %call190, %struct.symtab** %s, align 8, !tbaa !1
  %128 = load i32, i32* @LogLevel, align 4, !tbaa !10
  %cmp191 = icmp sgt i32 %128, 9
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.200

land.lhs.true.193:                                ; preds = %if.then.189
  %129 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %129, i32 0, i32 3
  %sv_header = bitcast %union.anon* %s_value to %struct.hdrinfo*
  %hi_ruleset = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %sv_header, i32 0, i32 2
  %130 = load i8*, i8** %hi_ruleset, align 8, !tbaa !9
  %cmp194 = icmp ne i8* %130, null
  br i1 %cmp194, label %if.then.196, label %if.end.200

if.then.196:                                      ; preds = %land.lhs.true.193
  %131 = load i8*, i8** %fname, align 8, !tbaa !1
  %132 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value197 = getelementptr inbounds %struct.symtab, %struct.symtab* %132, i32 0, i32 3
  %sv_header198 = bitcast %union.anon* %s_value197 to %struct.hdrinfo*
  %hi_ruleset199 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %sv_header198, i32 0, i32 2
  %133 = load i8*, i8** %hi_ruleset199, align 8, !tbaa !9
  %134 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.85, i32 0, i32 0), i8* %131, i8* %133, i8* %134)
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.196, %land.lhs.true.193, %if.then.189
  %135 = load i8*, i8** %p, align 8, !tbaa !1
  %call201 = call i8* @newstr(i8* %135)
  %136 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value202 = getelementptr inbounds %struct.symtab, %struct.symtab* %136, i32 0, i32 3
  %sv_header203 = bitcast %union.anon* %s_value202 to %struct.hdrinfo*
  %hi_ruleset204 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %sv_header203, i32 0, i32 2
  store i8* %call201, i8** %hi_ruleset204, align 8, !tbaa !9
  %137 = load i32, i32* %strc, align 4, !tbaa !10
  %tobool205 = icmp ne i32 %137, 0
  br i1 %tobool205, label %if.end.210, label %if.then.206

if.then.206:                                      ; preds = %if.end.200
  %138 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value207 = getelementptr inbounds %struct.symtab, %struct.symtab* %138, i32 0, i32 3
  %sv_header208 = bitcast %union.anon* %s_value207 to %struct.hdrinfo*
  %hi_flags = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %sv_header208, i32 0, i32 1
  %139 = load i64, i64* %hi_flags, align 8, !tbaa !8
  %or209 = or i64 %139, 65536
  store i64 %or209, i64* %hi_flags, align 8, !tbaa !8
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.206, %if.end.200
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end.185
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  %140 = bitcast i32* %strc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  br label %cleanup.215

if.end.214:                                       ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.215

cleanup.215:                                      ; preds = %if.end.214, %if.end.211
  %142 = bitcast [50 x i8]* %hbuf to i8*
  call void @llvm.lifetime.end(i64 50, i8* %142) #1
  %cleanup.dest.216 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.216, label %cleanup.606 [
    i32 0, label %cleanup.cont.217
  ]

cleanup.cont.217:                                 ; preds = %cleanup.215
  br label %if.end.218

if.end.218:                                       ; preds = %cleanup.cont.217, %if.end.152
  %143 = load i8*, i8** %fname, align 8, !tbaa !1
  %call219 = call %struct.symtab* @stab(i8* %143, i32 12, i32 0)
  store %struct.symtab* %call219, %struct.symtab** %s, align 8, !tbaa !1
  %144 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp220 = icmp ne %struct.symtab* %144, null
  br i1 %cmp220, label %if.then.222, label %if.else.225

if.then.222:                                      ; preds = %if.end.218
  %145 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value223 = getelementptr inbounds %struct.symtab, %struct.symtab* %145, i32 0, i32 3
  %sv_header224 = bitcast %union.anon* %s_value223 to %struct.hdrinfo*
  store %struct.hdrinfo* %sv_header224, %struct.hdrinfo** %hi, align 8, !tbaa !1
  br label %if.end.226

if.else.225:                                      ; preds = %if.end.218
  store %struct.hdrinfo* @NormalHeader, %struct.hdrinfo** %hi, align 8, !tbaa !1
  br label %if.end.226

if.end.226:                                       ; preds = %if.else.225, %if.then.222
  %146 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 31), align 1, !tbaa !12
  %conv227 = zext i8 %146 to i32
  %cmp228 = icmp sge i32 %conv227, 9
  br i1 %cmp228, label %land.lhs.true.230, label %if.end.244

land.lhs.true.230:                                ; preds = %if.end.226
  %147 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool231 = icmp ne i32 %147, 0
  br i1 %tobool231, label %if.end.244, label %if.then.232

if.then.232:                                      ; preds = %land.lhs.true.230
  %148 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp233 = icmp eq %struct.symtab* %148, null
  br i1 %cmp233, label %if.then.235, label %if.else.236

if.then.235:                                      ; preds = %if.then.232
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.86, i32 0, i32 0))
  br label %if.end.243

if.else.236:                                      ; preds = %if.then.232
  %149 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags237 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %149, i32 0, i32 1
  %150 = load i64, i64* %hi_flags237, align 8, !tbaa !8
  %151 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_ruleset238 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %151, i32 0, i32 2
  %152 = load i8*, i8** %hi_ruleset238, align 8, !tbaa !9
  %cmp239 = icmp eq i8* %152, null
  br i1 %cmp239, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.236
  br label %cond.end

cond.false:                                       ; preds = %if.else.236
  %153 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_ruleset241 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %153, i32 0, i32 2
  %154 = load i8*, i8** %hi_ruleset241, align 8, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond242 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), %cond.true ], [ %154, %cond.false ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.87, i32 0, i32 0), i64 %150, i8* %cond242)
  br label %if.end.243

if.end.243:                                       ; preds = %cond.end, %if.then.235
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %land.lhs.true.230, %if.end.226
  %155 = load i32, i32* %pflag.addr, align 4, !tbaa !10
  %and245 = and i32 1, %155
  %cmp246 = icmp ne i32 %and245, 0
  br i1 %cmp246, label %if.end.257, label %land.lhs.true.248

land.lhs.true.248:                                ; preds = %if.end.244
  %156 = load i32, i32* %headeronly, align 4, !tbaa !10
  %tobool249 = icmp ne i32 %156, 0
  br i1 %tobool249, label %if.end.257, label %land.lhs.true.250

land.lhs.true.250:                                ; preds = %land.lhs.true.248
  %157 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags251 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %157, i32 0, i32 1
  %158 = load i64, i64* %hi_flags251, align 8, !tbaa !8
  %and252 = and i64 %158, 8
  %cmp253 = icmp ne i64 %and252, 0
  br i1 %cmp253, label %if.then.255, label %if.end.257

if.then.255:                                      ; preds = %land.lhs.true.250
  %159 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %159, i32 0, i32 11
  %160 = load i64, i64* %e_flags, align 8, !tbaa !16
  %or256 = or i64 %160, 256
  store i64 %or256, i64* %e_flags, align 8, !tbaa !16
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.255, %land.lhs.true.250, %land.lhs.true.248, %if.end.244
  %161 = load i32, i32* @UseErrorsTo, align 4, !tbaa !10
  %tobool258 = icmp ne i32 %161, 0
  br i1 %tobool258, label %land.lhs.true.259, label %if.end.272

land.lhs.true.259:                                ; preds = %if.end.257
  %162 = load i32, i32* %pflag.addr, align 4, !tbaa !10
  %and260 = and i32 1, %162
  %cmp261 = icmp ne i32 %and260, 0
  br i1 %cmp261, label %if.end.272, label %land.lhs.true.263

land.lhs.true.263:                                ; preds = %land.lhs.true.259
  %163 = load i32, i32* %headeronly, align 4, !tbaa !10
  %tobool264 = icmp ne i32 %163, 0
  br i1 %tobool264, label %if.end.272, label %land.lhs.true.265

land.lhs.true.265:                                ; preds = %land.lhs.true.263
  %164 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags266 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %164, i32 0, i32 1
  %165 = load i64, i64* %hi_flags266, align 8, !tbaa !8
  %and267 = and i64 %165, 2048
  %cmp268 = icmp ne i64 %and267, 0
  br i1 %cmp268, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %land.lhs.true.265
  %166 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %167 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_errorqueue = getelementptr inbounds %struct.envelope, %struct.envelope* %167, i32 0, i32 8
  %168 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call271 = call i32 @sendtolist(i8* %166, %struct.address* null, %struct.address** %e_errorqueue, i32 0, %struct.envelope* %168)
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %land.lhs.true.265, %land.lhs.true.263, %land.lhs.true.259, %if.end.257
  %169 = load i32, i32* %headeronly, align 4, !tbaa !10
  %tobool273 = icmp ne i32 %169, 0
  br i1 %tobool273, label %if.end.281, label %land.lhs.true.274

land.lhs.true.274:                                ; preds = %if.end.272
  %170 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags275 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %170, i32 0, i32 1
  %171 = load i64, i64* %hi_flags275, align 8, !tbaa !8
  %and276 = and i64 %171, 1
  %cmp277 = icmp ne i64 %and276, 0
  br i1 %cmp277, label %if.then.279, label %if.end.281

if.then.279:                                      ; preds = %land.lhs.true.274
  %172 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags280 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %172, i32 0, i32 1
  %173 = load i64, i64* %hi_flags280, align 8, !tbaa !8
  store i64 %173, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.606

if.end.281:                                       ; preds = %land.lhs.true.274, %if.end.272
  %174 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags282 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %174, i32 0, i32 1
  %175 = load i64, i64* %hi_flags282, align 8, !tbaa !8
  %and283 = and i64 %175, 256
  %cmp284 = icmp ne i64 %and283, 0
  br i1 %cmp284, label %land.lhs.true.286, label %if.end.295

land.lhs.true.286:                                ; preds = %if.end.281
  %176 = load i32, i32* @SingleLineFromHeader, align 4, !tbaa !10
  %tobool287 = icmp ne i32 %176, 0
  br i1 %tobool287, label %if.then.288, label %if.end.295

if.then.288:                                      ; preds = %land.lhs.true.286
  br label %while.cond.289

while.cond.289:                                   ; preds = %while.body.293, %if.then.288
  %177 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %call290 = call i8* @strchr(i8* %177, i32 10) #1
  store i8* %call290, i8** %p, align 8, !tbaa !1
  %cmp291 = icmp ne i8* %call290, null
  br i1 %cmp291, label %while.body.293, label %while.end.294

while.body.293:                                   ; preds = %while.cond.289
  %178 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 32, i8* %178, align 1, !tbaa !12
  br label %while.cond.289

while.end.294:                                    ; preds = %while.cond.289
  br label %if.end.295

if.end.295:                                       ; preds = %while.end.294, %land.lhs.true.286, %if.end.281
  %179 = load i32, i32* %pflag.addr, align 4, !tbaa !10
  %and296 = and i32 2, %179
  %cmp297 = icmp ne i32 %and296, 0
  br i1 %cmp297, label %if.then.299, label %if.end.420

if.then.299:                                      ; preds = %if.end.295
  %180 = bitcast i32* %rscheckflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %180) #1
  %181 = bitcast i8** %rs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #1
  store i32 4, i32* %rscheckflags, align 4, !tbaa !10
  %182 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags300 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %182, i32 0, i32 1
  %183 = load i64, i64* %hi_flags300, align 8, !tbaa !8
  %and301 = and i64 258, %183
  %cmp302 = icmp ne i64 %and301, 0
  br i1 %cmp302, label %if.end.306, label %if.then.304

if.then.304:                                      ; preds = %if.then.299
  %184 = load i32, i32* %rscheckflags, align 4, !tbaa !10
  %or305 = or i32 %184, 2
  store i32 %or305, i32* %rscheckflags, align 4, !tbaa !10
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.304, %if.then.299
  %185 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_ruleset307 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %185, i32 0, i32 2
  %186 = load i8*, i8** %hi_ruleset307, align 8, !tbaa !9
  store i8* %186, i8** %rs, align 8, !tbaa !1
  %187 = load i8*, i8** %rs, align 8, !tbaa !1
  %cmp308 = icmp eq i8* %187, null
  br i1 %cmp308, label %if.then.310, label %if.else.328

if.then.310:                                      ; preds = %if.end.306
  %call311 = call %struct.symtab* @stab(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i32 12, i32 0)
  store %struct.symtab* %call311, %struct.symtab** %s, align 8, !tbaa !1
  %188 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp312 = icmp ne %struct.symtab* %188, null
  br i1 %cmp312, label %if.then.314, label %if.end.327

if.then.314:                                      ; preds = %if.then.310
  %189 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value315 = getelementptr inbounds %struct.symtab, %struct.symtab* %189, i32 0, i32 3
  %sv_header316 = bitcast %union.anon* %s_value315 to %struct.hdrinfo*
  %hi_ruleset317 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %sv_header316, i32 0, i32 2
  %190 = load i8*, i8** %hi_ruleset317, align 8, !tbaa !9
  store i8* %190, i8** %rs, align 8, !tbaa !1
  %191 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value318 = getelementptr inbounds %struct.symtab, %struct.symtab* %191, i32 0, i32 3
  %sv_header319 = bitcast %union.anon* %s_value318 to %struct.hdrinfo*
  %hi_flags320 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %sv_header319, i32 0, i32 1
  %192 = load i64, i64* %hi_flags320, align 8, !tbaa !8
  %and321 = and i64 65536, %192
  %cmp322 = icmp ne i64 %and321, 0
  br i1 %cmp322, label %if.then.324, label %if.end.326

if.then.324:                                      ; preds = %if.then.314
  %193 = load i32, i32* %rscheckflags, align 4, !tbaa !10
  %or325 = or i32 %193, 1
  store i32 %or325, i32* %rscheckflags, align 4, !tbaa !10
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.324, %if.then.314
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.310
  br label %if.end.336

if.else.328:                                      ; preds = %if.end.306
  %194 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags329 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %194, i32 0, i32 1
  %195 = load i64, i64* %hi_flags329, align 8, !tbaa !8
  %and330 = and i64 65536, %195
  %cmp331 = icmp ne i64 %and330, 0
  br i1 %cmp331, label %if.then.333, label %if.end.335

if.then.333:                                      ; preds = %if.else.328
  %196 = load i32, i32* %rscheckflags, align 4, !tbaa !10
  %or334 = or i32 %196, 1
  store i32 %or334, i32* %rscheckflags, align 4, !tbaa !10
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.333, %if.else.328
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %if.end.327
  %197 = load i8*, i8** %rs, align 8, !tbaa !1
  %cmp337 = icmp ne i8* %197, null
  br i1 %cmp337, label %if.then.339, label %if.end.419

if.then.339:                                      ; preds = %if.end.336
  %198 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %198) #1
  %199 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %199) #1
  %200 = bitcast [256 x i8]* %qval to i8*
  call void @llvm.lifetime.start(i64 256, i8* %200) #1
  store i32 0, i32* %l, align 4, !tbaa !10
  %201 = load i32, i32* %l, align 4, !tbaa !10
  %inc = add nsw i32 %201, 1
  store i32 %inc, i32* %l, align 4, !tbaa !10
  %idxprom340 = sext i32 %201 to i64
  %arrayidx341 = getelementptr inbounds [256 x i8], [256 x i8]* %qval, i32 0, i64 %idxprom340
  store i8 34, i8* %arrayidx341, align 1, !tbaa !12
  store i32 0, i32* %k, align 4, !tbaa !10
  br label %for.cond.342

for.cond.342:                                     ; preds = %for.inc, %if.then.339
  %202 = load i32, i32* %k, align 4, !tbaa !10
  %idxprom343 = sext i32 %202 to i64
  %203 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %arrayidx344 = getelementptr inbounds i8, i8* %203, i64 %idxprom343
  %204 = load i8, i8* %arrayidx344, align 1, !tbaa !12
  %conv345 = sext i8 %204 to i32
  %cmp346 = icmp ne i32 %conv345, 0
  br i1 %cmp346, label %land.rhs.348, label %land.end.351

land.rhs.348:                                     ; preds = %for.cond.342
  %205 = load i32, i32* %l, align 4, !tbaa !10
  %cmp349 = icmp slt i32 %205, 253
  br label %land.end.351

land.end.351:                                     ; preds = %land.rhs.348, %for.cond.342
  %206 = phi i1 [ false, %for.cond.342 ], [ %cmp349, %land.rhs.348 ]
  br i1 %206, label %for.body.352, label %for.end.369

for.body.352:                                     ; preds = %land.end.351
  %207 = load i32, i32* %k, align 4, !tbaa !10
  %idxprom353 = sext i32 %207 to i64
  %208 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %arrayidx354 = getelementptr inbounds i8, i8* %208, i64 %idxprom353
  %209 = load i8, i8* %arrayidx354, align 1, !tbaa !12
  %conv355 = sext i8 %209 to i32
  switch i32 %conv355, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
    i32 34, label %sw.bb.359
  ]

sw.bb:                                            ; preds = %for.body.352, %for.body.352, %for.body.352, %for.body.352, %for.body.352
  %210 = load i32, i32* %l, align 4, !tbaa !10
  %inc356 = add nsw i32 %210, 1
  store i32 %inc356, i32* %l, align 4, !tbaa !10
  %idxprom357 = sext i32 %210 to i64
  %arrayidx358 = getelementptr inbounds [256 x i8], [256 x i8]* %qval, i32 0, i64 %idxprom357
  store i8 32, i8* %arrayidx358, align 1, !tbaa !12
  br label %sw.epilog

sw.bb.359:                                        ; preds = %for.body.352
  %211 = load i32, i32* %l, align 4, !tbaa !10
  %inc360 = add nsw i32 %211, 1
  store i32 %inc360, i32* %l, align 4, !tbaa !10
  %idxprom361 = sext i32 %211 to i64
  %arrayidx362 = getelementptr inbounds [256 x i8], [256 x i8]* %qval, i32 0, i64 %idxprom361
  store i8 92, i8* %arrayidx362, align 1, !tbaa !12
  br label %sw.default

sw.default:                                       ; preds = %for.body.352, %sw.bb.359
  %212 = load i32, i32* %k, align 4, !tbaa !10
  %idxprom363 = sext i32 %212 to i64
  %213 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %arrayidx364 = getelementptr inbounds i8, i8* %213, i64 %idxprom363
  %214 = load i8, i8* %arrayidx364, align 1, !tbaa !12
  %215 = load i32, i32* %l, align 4, !tbaa !10
  %inc365 = add nsw i32 %215, 1
  store i32 %inc365, i32* %l, align 4, !tbaa !10
  %idxprom366 = sext i32 %215 to i64
  %arrayidx367 = getelementptr inbounds [256 x i8], [256 x i8]* %qval, i32 0, i64 %idxprom366
  store i8 %214, i8* %arrayidx367, align 1, !tbaa !12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %216 = load i32, i32* %k, align 4, !tbaa !10
  %inc368 = add nsw i32 %216, 1
  store i32 %inc368, i32* %k, align 4, !tbaa !10
  br label %for.cond.342

for.end.369:                                      ; preds = %land.end.351
  %217 = load i32, i32* %l, align 4, !tbaa !10
  %inc370 = add nsw i32 %217, 1
  store i32 %inc370, i32* %l, align 4, !tbaa !10
  %idxprom371 = sext i32 %217 to i64
  %arrayidx372 = getelementptr inbounds [256 x i8], [256 x i8]* %qval, i32 0, i64 %idxprom371
  store i8 34, i8* %arrayidx372, align 1, !tbaa !12
  %218 = load i32, i32* %l, align 4, !tbaa !10
  %idxprom373 = sext i32 %218 to i64
  %arrayidx374 = getelementptr inbounds [256 x i8], [256 x i8]* %qval, i32 0, i64 %idxprom373
  store i8 0, i8* %arrayidx374, align 1, !tbaa !12
  %219 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %220 = load i32, i32* %k, align 4, !tbaa !10
  %idx.ext = sext i32 %220 to i64
  %add.ptr375 = getelementptr inbounds i8, i8* %219, i64 %idx.ext
  %call376 = call i64 @strlen(i8* %add.ptr375) #8
  %221 = load i32, i32* %k, align 4, !tbaa !10
  %conv377 = sext i32 %221 to i64
  %add378 = add i64 %conv377, %call376
  %conv379 = trunc i64 %add378 to i32
  store i32 %conv379, i32* %k, align 4, !tbaa !10
  %222 = load i32, i32* %k, align 4, !tbaa !10
  %cmp380 = icmp sge i32 %222, 256
  br i1 %cmp380, label %if.then.382, label %if.end.387

if.then.382:                                      ; preds = %for.end.369
  %223 = load i32, i32* @LogLevel, align 4, !tbaa !10
  %cmp383 = icmp sgt i32 %223, 9
  br i1 %cmp383, label %if.then.385, label %if.end.386

if.then.385:                                      ; preds = %if.then.382
  %224 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %224, i32 0, i32 25
  %225 = load i8*, i8** %e_id, align 8, !tbaa !22
  %226 = load i8*, i8** %fname, align 8, !tbaa !1
  %227 = load i8*, i8** %rs, align 8, !tbaa !1
  %228 = load i32, i32* %k, align 4, !tbaa !10
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 4, i8* %225, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.90, i32 0, i32 0), i8* %226, i8* %227, i32 %228, i32 255)
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.385, %if.then.382
  br label %if.end.387

if.end.387:                                       ; preds = %if.end.386, %for.end.369
  %229 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %229, i32 0, i32 46
  %call388 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), i8** null)
  %arraydecay389 = getelementptr inbounds [256 x i8], [256 x i8]* %qval, i32 0, i32 0
  %230 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 1, i32 %call388, i8* %arraydecay389, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 347, i32 %230)
  %231 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro390 = getelementptr inbounds %struct.envelope, %struct.envelope* %231, i32 0, i32 46
  %call391 = call i32 @macid_parse(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), i8** null)
  %232 = load i8*, i8** %fname, align 8, !tbaa !1
  %233 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro390, i32 1, i32 %call391, i8* %232, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 349, i32 %233)
  %arraydecay392 = getelementptr inbounds [256 x i8], [256 x i8]* %qval, i32 0, i32 0
  %234 = load i32, i32* %k, align 4, !tbaa !10
  %call393 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay392, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %234)
  %235 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro394 = getelementptr inbounds %struct.envelope, %struct.envelope* %235, i32 0, i32 46
  %call395 = call i32 @macid_parse(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), i8** null)
  %arraydecay396 = getelementptr inbounds [256 x i8], [256 x i8]* %qval, i32 0, i32 0
  %236 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro394, i32 1, i32 %call395, i8* %arraydecay396, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 352, i32 %236)
  %237 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags397 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %237, i32 0, i32 1
  %238 = load i64, i64* %hi_flags397, align 8, !tbaa !8
  %and398 = and i64 %238, 256
  %cmp399 = icmp ne i64 %and398, 0
  br i1 %cmp399, label %if.then.401, label %if.else.404

if.then.401:                                      ; preds = %if.end.387
  %239 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro402 = getelementptr inbounds %struct.envelope, %struct.envelope* %239, i32 0, i32 46
  %call403 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i8** null)
  %240 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro402, i32 2, i32 %call403, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 355, i32 %240)
  br label %if.end.416

if.else.404:                                      ; preds = %if.end.387
  %241 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags405 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %241, i32 0, i32 1
  %242 = load i64, i64* %hi_flags405, align 8, !tbaa !8
  %and406 = and i64 %242, 2
  %cmp407 = icmp ne i64 %and406, 0
  br i1 %cmp407, label %if.then.409, label %if.else.412

if.then.409:                                      ; preds = %if.else.404
  %243 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro410 = getelementptr inbounds %struct.envelope, %struct.envelope* %243, i32 0, i32 46
  %call411 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i8** null)
  %244 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro410, i32 2, i32 %call411, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 358, i32 %244)
  br label %if.end.415

if.else.412:                                      ; preds = %if.else.404
  %245 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro413 = getelementptr inbounds %struct.envelope, %struct.envelope* %245, i32 0, i32 46
  %call414 = call i32 @macid_parse(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i8** null)
  %246 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro413, i32 2, i32 %call414, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 361, i32 %246)
  br label %if.end.415

if.end.415:                                       ; preds = %if.else.412, %if.then.409
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %if.then.401
  %247 = load i8*, i8** %rs, align 8, !tbaa !1
  %248 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %249 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %250 = load i32, i32* %rscheckflags, align 4, !tbaa !10
  %251 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id417 = getelementptr inbounds %struct.envelope, %struct.envelope* %251, i32 0, i32 25
  %252 = load i8*, i8** %e_id417, align 8, !tbaa !22
  %call418 = call i32 @rscheck(i8* %247, i8* %248, i8* null, %struct.envelope* %249, i32 %250, i32 3, i8* null, i8* %252, %struct.address* null, i8** null)
  %253 = bitcast [256 x i8]* %qval to i8*
  call void @llvm.lifetime.end(i64 256, i8* %253) #1
  %254 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  %255 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.416, %if.end.336
  %256 = bitcast i8** %rs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %256) #1
  %257 = bitcast i32* %rscheckflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419, %if.end.295
  store i32 0, i32* %dropfrom, align 4, !tbaa !10
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  %258 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags421 = getelementptr inbounds %struct.envelope, %struct.envelope* %258, i32 0, i32 11
  %259 = load i64, i64* %e_flags421, align 8, !tbaa !16
  %and422 = and i64 %259, 256
  %cmp423 = icmp ne i64 %and422, 0
  br i1 %cmp423, label %if.end.427, label %if.then.425

if.then.425:                                      ; preds = %if.end.420
  %260 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr426 = getelementptr inbounds i8, i8* %260, i64 7
  store i8* %add.ptr426, i8** %p, align 8, !tbaa !1
  br label %if.end.427

if.end.427:                                       ; preds = %if.then.425, %if.end.420
  %261 = load i32, i32* %pflag.addr, align 4, !tbaa !10
  %and428 = and i32 1, %261
  %cmp429 = icmp ne i32 %and428, 0
  br i1 %cmp429, label %if.end.484, label %land.lhs.true.431

land.lhs.true.431:                                ; preds = %if.end.427
  %262 = load i32, i32* %headeronly, align 4, !tbaa !10
  %tobool432 = icmp ne i32 %262, 0
  br i1 %tobool432, label %if.end.484, label %land.lhs.true.433

land.lhs.true.433:                                ; preds = %land.lhs.true.431
  %263 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags434 = getelementptr inbounds %struct.envelope, %struct.envelope* %263, i32 0, i32 11
  %264 = load i64, i64* %e_flags434, align 8, !tbaa !16
  %and435 = and i64 %264, 2048
  %cmp436 = icmp ne i64 %and435, 0
  br i1 %cmp436, label %if.end.484, label %land.lhs.true.438

land.lhs.true.438:                                ; preds = %land.lhs.true.433
  %265 = load i8*, i8** %fname, align 8, !tbaa !1
  %266 = load i8*, i8** %p, align 8, !tbaa !1
  %call439 = call i32 @sm_strcasecmp(i8* %265, i8* %266)
  %cmp440 = icmp eq i32 %call439, 0
  br i1 %cmp440, label %if.then.442, label %if.end.484

if.then.442:                                      ; preds = %land.lhs.true.438
  %267 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from = getelementptr inbounds %struct.envelope, %struct.envelope* %267, i32 0, i32 4
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %e_from, i32 0, i32 0
  %268 = load i8*, i8** %q_paddr, align 8, !tbaa !23
  %cmp443 = icmp ne i8* %268, null
  br i1 %cmp443, label %land.lhs.true.445, label %if.end.472

land.lhs.true.445:                                ; preds = %if.then.442
  %269 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from446 = getelementptr inbounds %struct.envelope, %struct.envelope* %269, i32 0, i32 4
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %e_from446, i32 0, i32 4
  %270 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !24
  %cmp447 = icmp ne %struct.mailer* %270, null
  br i1 %cmp447, label %land.lhs.true.449, label %if.end.472

land.lhs.true.449:                                ; preds = %land.lhs.true.445
  %271 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from450 = getelementptr inbounds %struct.envelope, %struct.envelope* %271, i32 0, i32 4
  %q_mailer451 = getelementptr inbounds %struct.address, %struct.address* %e_from450, i32 0, i32 4
  %272 = load %struct.mailer*, %struct.mailer** %q_mailer451, align 8, !tbaa !24
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %272, i32 0, i32 5
  %arrayidx452 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 3
  %273 = load i32, i32* %arrayidx452, align 4, !tbaa !10
  %and453 = and i32 %273, 4096
  %tobool454 = icmp ne i32 %and453, 0
  br i1 %tobool454, label %land.lhs.true.455, label %if.end.472

land.lhs.true.455:                                ; preds = %land.lhs.true.449
  %274 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %274) #1
  %275 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %275) #1
  %276 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %277 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from456 = getelementptr inbounds %struct.envelope, %struct.envelope* %277, i32 0, i32 4
  %q_paddr457 = getelementptr inbounds %struct.address, %struct.address* %e_from456, i32 0, i32 0
  %278 = load i8*, i8** %q_paddr457, align 8, !tbaa !23
  %call458 = call i32 @strcmp(i8* %276, i8* %278) #1
  store i32 %call458, i32* %tmp, !tbaa !10
  %279 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  %280 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #1
  %281 = load i32, i32* %tmp, !tbaa !10
  %cmp459 = icmp eq i32 %281, 0
  br i1 %cmp459, label %if.then.471, label %lor.lhs.false.461

lor.lhs.false.461:                                ; preds = %land.lhs.true.455
  %282 = bitcast i64* %__s1_len463 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %282) #1
  %283 = bitcast i64* %__s2_len465 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %283) #1
  %284 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %285 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from467 = getelementptr inbounds %struct.envelope, %struct.envelope* %285, i32 0, i32 4
  %q_user = getelementptr inbounds %struct.address, %struct.address* %e_from467, i32 0, i32 1
  %286 = load i8*, i8** %q_user, align 8, !tbaa !25
  %call468 = call i32 @strcmp(i8* %284, i8* %286) #1
  store i32 %call468, i32* %tmp466, !tbaa !10
  %287 = bitcast i64* %__s2_len465 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #1
  %288 = bitcast i64* %__s1_len463 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %288) #1
  %289 = load i32, i32* %tmp466, !tbaa !10
  %cmp469 = icmp eq i32 %289, 0
  br i1 %cmp469, label %if.then.471, label %if.end.472

if.then.471:                                      ; preds = %lor.lhs.false.461, %land.lhs.true.455
  store i32 1, i32* %dropfrom, align 4, !tbaa !10
  br label %if.end.472

if.end.472:                                       ; preds = %if.then.471, %lor.lhs.false.461, %land.lhs.true.449, %land.lhs.true.445, %if.then.442
  %290 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 31), align 1, !tbaa !12
  %conv473 = zext i8 %290 to i32
  %cmp474 = icmp sge i32 %conv473, 2
  br i1 %cmp474, label %land.lhs.true.476, label %if.end.483

land.lhs.true.476:                                ; preds = %if.end.472
  %291 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool477 = icmp ne i32 %291, 0
  br i1 %tobool477, label %if.end.483, label %if.then.478

if.then.478:                                      ; preds = %land.lhs.true.476
  %292 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %293 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from479 = getelementptr inbounds %struct.envelope, %struct.envelope* %293, i32 0, i32 4
  %q_paddr480 = getelementptr inbounds %struct.address, %struct.address* %e_from479, i32 0, i32 0
  %294 = load i8*, i8** %q_paddr480, align 8, !tbaa !23
  %295 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from481 = getelementptr inbounds %struct.envelope, %struct.envelope* %295, i32 0, i32 4
  %q_user482 = getelementptr inbounds %struct.address, %struct.address* %e_from481, i32 0, i32 1
  %296 = load i8*, i8** %q_user482, align 8, !tbaa !25
  %297 = load i32, i32* %dropfrom, align 4, !tbaa !10
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.99, i32 0, i32 0), i8* %292, i8* %294, i8* %296, i32 %297)
  br label %if.end.483

if.end.483:                                       ; preds = %if.then.478, %land.lhs.true.476, %if.end.472
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %land.lhs.true.438, %land.lhs.true.433, %land.lhs.true.431, %if.end.427
  %298 = load %struct.header**, %struct.header*** %hdrp.addr, align 8, !tbaa !1
  store %struct.header** %298, %struct.header*** %hp, align 8, !tbaa !1
  br label %for.cond.485

for.cond.485:                                     ; preds = %for.inc.527, %if.end.484
  %299 = load %struct.header**, %struct.header*** %hp, align 8, !tbaa !1
  %300 = load %struct.header*, %struct.header** %299, align 8, !tbaa !1
  store %struct.header* %300, %struct.header** %h, align 8, !tbaa !1
  %cmp486 = icmp ne %struct.header* %300, null
  br i1 %cmp486, label %for.body.488, label %for.end.528

for.body.488:                                     ; preds = %for.cond.485
  %301 = load i8*, i8** %fname, align 8, !tbaa !1
  %302 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field = getelementptr inbounds %struct.header, %struct.header* %302, i32 0, i32 0
  %303 = load i8*, i8** %h_field, align 8, !tbaa !26
  %call489 = call i32 @sm_strcasecmp(i8* %301, i8* %303)
  %cmp490 = icmp eq i32 %call489, 0
  br i1 %cmp490, label %land.lhs.true.492, label %if.end.526

land.lhs.true.492:                                ; preds = %for.body.488
  %304 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags = getelementptr inbounds %struct.header, %struct.header* %304, i32 0, i32 4
  %305 = load i64, i64* %h_flags, align 8, !tbaa !28
  %and493 = and i64 %305, 262144
  %cmp494 = icmp ne i64 %and493, 0
  br i1 %cmp494, label %if.end.526, label %land.lhs.true.496

land.lhs.true.496:                                ; preds = %land.lhs.true.492
  %306 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags497 = getelementptr inbounds %struct.header, %struct.header* %306, i32 0, i32 4
  %307 = load i64, i64* %h_flags497, align 8, !tbaa !28
  %and498 = and i64 %307, 64
  %cmp499 = icmp ne i64 %and498, 0
  br i1 %cmp499, label %if.end.526, label %if.then.501

if.then.501:                                      ; preds = %land.lhs.true.496
  %308 = load i32, i32* %nullheader, align 4, !tbaa !10
  %tobool502 = icmp ne i32 %308, 0
  br i1 %tobool502, label %if.then.503, label %if.end.504

if.then.503:                                      ; preds = %if.then.501
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.606

if.end.504:                                       ; preds = %if.then.501
  %309 = load i32, i32* %dropfrom, align 4, !tbaa !10
  %tobool505 = icmp ne i32 %309, 0
  br i1 %tobool505, label %if.then.506, label %if.end.520

if.then.506:                                      ; preds = %if.end.504
  %310 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags507 = getelementptr inbounds %struct.header, %struct.header* %310, i32 0, i32 4
  %311 = load i64, i64* %h_flags507, align 8, !tbaa !28
  %or508 = or i64 %311, 262144
  store i64 %or508, i64* %h_flags507, align 8, !tbaa !28
  %312 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from509 = getelementptr inbounds %struct.envelope, %struct.envelope* %312, i32 0, i32 4
  %q_mailer510 = getelementptr inbounds %struct.address, %struct.address* %e_from509, i32 0, i32 4
  %313 = load %struct.mailer*, %struct.mailer** %q_mailer510, align 8, !tbaa !24
  %m_flags511 = getelementptr inbounds %struct.mailer, %struct.mailer* %313, i32 0, i32 5
  %arrayidx512 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags511, i32 0, i64 1
  %314 = load i32, i32* %arrayidx512, align 4, !tbaa !10
  %and513 = and i32 %314, 2
  %tobool514 = icmp ne i32 %and513, 0
  br i1 %tobool514, label %if.then.515, label %if.end.518

if.then.515:                                      ; preds = %if.then.506
  %315 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags516 = getelementptr inbounds %struct.header, %struct.header* %315, i32 0, i32 4
  %316 = load i64, i64* %h_flags516, align 8, !tbaa !28
  %and517 = and i64 %316, -17
  store i64 %and517, i64* %h_flags516, align 8, !tbaa !28
  br label %if.end.518

if.end.518:                                       ; preds = %if.then.515, %if.then.506
  %317 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags519 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %317, i32 0, i32 1
  %318 = load i64, i64* %hi_flags519, align 8, !tbaa !8
  store i64 %318, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.606

if.end.520:                                       ; preds = %if.end.504
  %319 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value = getelementptr inbounds %struct.header, %struct.header* %319, i32 0, i32 1
  store i8* null, i8** %h_value, align 8, !tbaa !29
  %320 = load i32, i32* %cond, align 4, !tbaa !10
  %tobool521 = icmp ne i32 %320, 0
  br i1 %tobool521, label %if.end.525, label %if.then.522

if.then.522:                                      ; preds = %if.end.520
  %arraydecay523 = getelementptr inbounds [8 x i32], [8 x i32]* %mopts, i32 0, i32 0
  %321 = bitcast i32* %arraydecay523 to i8*
  %322 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_mflags = getelementptr inbounds %struct.header, %struct.header* %322, i32 0, i32 5
  %arraydecay524 = getelementptr inbounds [8 x i32], [8 x i32]* %h_mflags, i32 0, i32 0
  %323 = bitcast i32* %arraydecay524 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %321, i8* %323, i64 32, i32 1, i1 false)
  br label %if.end.525

if.end.525:                                       ; preds = %if.then.522, %if.end.520
  %324 = load i8, i8* %mid, align 1, !tbaa !12
  %325 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_macro = getelementptr inbounds %struct.header, %struct.header* %325, i32 0, i32 3
  store i8 %324, i8* %h_macro, align 1, !tbaa !30
  br label %if.end.526

if.end.526:                                       ; preds = %if.end.525, %land.lhs.true.496, %land.lhs.true.492, %for.body.488
  br label %for.inc.527

for.inc.527:                                      ; preds = %if.end.526
  %326 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_link = getelementptr inbounds %struct.header, %struct.header* %326, i32 0, i32 2
  store %struct.header** %h_link, %struct.header*** %hp, align 8, !tbaa !1
  br label %for.cond.485

for.end.528:                                      ; preds = %for.cond.485
  %327 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %327, i32 0, i32 52
  %328 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !31
  %329 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  %call529 = call i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T* %328, i64 72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 437, i32 %329)
  %330 = bitcast i8* %call529 to %struct.header*
  store %struct.header* %330, %struct.header** %h, align 8, !tbaa !1
  %331 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool530 = getelementptr inbounds %struct.envelope, %struct.envelope* %331, i32 0, i32 52
  %332 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool530, align 8, !tbaa !31
  %333 = load i8*, i8** %fname, align 8, !tbaa !1
  %call531 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %332, i8* %333)
  %334 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field532 = getelementptr inbounds %struct.header, %struct.header* %334, i32 0, i32 0
  store i8* %call531, i8** %h_field532, align 8, !tbaa !26
  %335 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool533 = getelementptr inbounds %struct.envelope, %struct.envelope* %335, i32 0, i32 52
  %336 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool533, align 8, !tbaa !31
  %337 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %call534 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %336, i8* %337)
  %338 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value535 = getelementptr inbounds %struct.header, %struct.header* %338, i32 0, i32 1
  store i8* %call534, i8** %h_value535, align 8, !tbaa !29
  %339 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_link536 = getelementptr inbounds %struct.header, %struct.header* %339, i32 0, i32 2
  store %struct.header* null, %struct.header** %h_link536, align 8, !tbaa !32
  %340 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_mflags537 = getelementptr inbounds %struct.header, %struct.header* %340, i32 0, i32 5
  %arraydecay538 = getelementptr inbounds [8 x i32], [8 x i32]* %h_mflags537, i32 0, i32 0
  %341 = bitcast i32* %arraydecay538 to i8*
  %arraydecay539 = getelementptr inbounds [8 x i32], [8 x i32]* %mopts, i32 0, i32 0
  %342 = bitcast i32* %arraydecay539 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %341, i8* %342, i64 32, i32 1, i1 false)
  %343 = load i8, i8* %mid, align 1, !tbaa !12
  %344 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_macro540 = getelementptr inbounds %struct.header, %struct.header* %344, i32 0, i32 3
  store i8 %343, i8* %h_macro540, align 1, !tbaa !30
  %345 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %346 = load %struct.header**, %struct.header*** %hp, align 8, !tbaa !1
  store %struct.header* %345, %struct.header** %346, align 8, !tbaa !1
  %347 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags541 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %347, i32 0, i32 1
  %348 = load i64, i64* %hi_flags541, align 8, !tbaa !8
  %349 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags542 = getelementptr inbounds %struct.header, %struct.header* %349, i32 0, i32 4
  store i64 %348, i64* %h_flags542, align 8, !tbaa !28
  %350 = load i32, i32* %pflag.addr, align 4, !tbaa !10
  %and543 = and i32 4, %350
  %cmp544 = icmp ne i32 %and543, 0
  br i1 %cmp544, label %if.then.550, label %lor.lhs.false.546

lor.lhs.false.546:                                ; preds = %for.end.528
  %351 = load i32, i32* %pflag.addr, align 4, !tbaa !10
  %and547 = and i32 8, %351
  %cmp548 = icmp ne i32 %and547, 0
  br i1 %cmp548, label %if.then.550, label %if.end.553

if.then.550:                                      ; preds = %lor.lhs.false.546, %for.end.528
  %352 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags551 = getelementptr inbounds %struct.header, %struct.header* %352, i32 0, i32 4
  %353 = load i64, i64* %h_flags551, align 8, !tbaa !28
  %or552 = or i64 %353, 262144
  store i64 %or552, i64* %h_flags551, align 8, !tbaa !28
  br label %if.end.553

if.end.553:                                       ; preds = %if.then.550, %lor.lhs.false.546
  %354 = load i32, i32* %headeronly, align 4, !tbaa !10
  %tobool554 = icmp ne i32 %354, 0
  br i1 %tobool554, label %if.then.555, label %if.end.558

if.then.555:                                      ; preds = %if.end.553
  %355 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags556 = getelementptr inbounds %struct.header, %struct.header* %355, i32 0, i32 4
  %356 = load i64, i64* %h_flags556, align 8, !tbaa !28
  %and557 = and i64 %356, -2
  store i64 %and557, i64* %h_flags556, align 8, !tbaa !28
  br label %if.end.558

if.end.558:                                       ; preds = %if.then.555, %if.end.553
  %357 = load i32, i32* %pflag.addr, align 4, !tbaa !10
  %and559 = and i32 1, %357
  %cmp560 = icmp ne i32 %and559, 0
  br i1 %cmp560, label %if.then.562, label %if.end.565

if.then.562:                                      ; preds = %if.end.558
  %358 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags563 = getelementptr inbounds %struct.header, %struct.header* %358, i32 0, i32 4
  %359 = load i64, i64* %h_flags563, align 8, !tbaa !28
  %or564 = or i64 %359, 4
  store i64 %or564, i64* %h_flags563, align 8, !tbaa !28
  br label %if.end.565

if.end.565:                                       ; preds = %if.then.562, %if.end.558
  %360 = load i32, i32* %cond, align 4, !tbaa !10
  %tobool566 = icmp ne i32 %360, 0
  br i1 %tobool566, label %if.then.571, label %lor.lhs.false.567

lor.lhs.false.567:                                ; preds = %if.end.565
  %361 = load i8, i8* %mid, align 1, !tbaa !12
  %conv568 = zext i8 %361 to i32
  %cmp569 = icmp ne i32 %conv568, 0
  br i1 %cmp569, label %if.then.571, label %if.end.574

if.then.571:                                      ; preds = %lor.lhs.false.567, %if.end.565
  %362 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags572 = getelementptr inbounds %struct.header, %struct.header* %362, i32 0, i32 4
  %363 = load i64, i64* %h_flags572, align 8, !tbaa !28
  %or573 = or i64 %363, 16
  store i64 %or573, i64* %h_flags572, align 8, !tbaa !28
  br label %if.end.574

if.end.574:                                       ; preds = %if.then.571, %lor.lhs.false.567
  %364 = load i32, i32* %pflag.addr, align 4, !tbaa !10
  %and575 = and i32 1, %364
  %cmp576 = icmp ne i32 %and575, 0
  br i1 %cmp576, label %if.end.604, label %land.lhs.true.578

land.lhs.true.578:                                ; preds = %if.end.574
  %365 = load i32, i32* %headeronly, align 4, !tbaa !10
  %tobool579 = icmp ne i32 %365, 0
  br i1 %tobool579, label %if.end.604, label %land.lhs.true.580

land.lhs.true.580:                                ; preds = %land.lhs.true.578
  %366 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags581 = getelementptr inbounds %struct.header, %struct.header* %366, i32 0, i32 4
  %367 = load i64, i64* %h_flags581, align 8, !tbaa !28
  %and582 = and i64 %367, 258
  %cmp583 = icmp ne i64 %and582, 0
  br i1 %cmp583, label %land.lhs.true.585, label %if.end.604

land.lhs.true.585:                                ; preds = %land.lhs.true.580
  %368 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %call586 = call i8* @strchr(i8* %368, i32 44) #1
  %cmp587 = icmp ne i8* %call586, null
  br i1 %cmp587, label %if.then.601, label %lor.lhs.false.589

lor.lhs.false.589:                                ; preds = %land.lhs.true.585
  %369 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %call590 = call i8* @strchr(i8* %369, i32 40) #1
  %cmp591 = icmp ne i8* %call590, null
  br i1 %cmp591, label %if.then.601, label %lor.lhs.false.593

lor.lhs.false.593:                                ; preds = %lor.lhs.false.589
  %370 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %call594 = call i8* @strchr(i8* %370, i32 60) #1
  %cmp595 = icmp ne i8* %call594, null
  br i1 %cmp595, label %if.then.601, label %lor.lhs.false.597

lor.lhs.false.597:                                ; preds = %lor.lhs.false.593
  %371 = load i8*, i8** %fvalue, align 8, !tbaa !1
  %call598 = call i8* @strchr(i8* %371, i32 59) #1
  %cmp599 = icmp ne i8* %call598, null
  br i1 %cmp599, label %if.then.601, label %if.end.604

if.then.601:                                      ; preds = %lor.lhs.false.597, %lor.lhs.false.593, %lor.lhs.false.589, %land.lhs.true.585
  %372 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags602 = getelementptr inbounds %struct.envelope, %struct.envelope* %372, i32 0, i32 11
  %373 = load i64, i64* %e_flags602, align 8, !tbaa !16
  %and603 = and i64 %373, -2
  store i64 %and603, i64* %e_flags602, align 8, !tbaa !16
  br label %if.end.604

if.end.604:                                       ; preds = %if.then.601, %lor.lhs.false.597, %land.lhs.true.580, %land.lhs.true.578, %if.end.574
  %374 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags605 = getelementptr inbounds %struct.header, %struct.header* %374, i32 0, i32 4
  %375 = load i64, i64* %h_flags605, align 8, !tbaa !28
  store i64 %375, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.606

cleanup.606:                                      ; preds = %if.end.604, %if.end.518, %if.then.503, %if.then.279, %cleanup.215, %if.then.151, %hse, %cleanup
  %376 = bitcast [8 x i32]* %mopts to i8*
  call void @llvm.lifetime.end(i64 32, i8* %376) #1
  %377 = bitcast i32* %nullheader to i8*
  call void @llvm.lifetime.end(i64 4, i8* %377) #1
  %378 = bitcast %struct.hdrinfo** %hi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %378) #1
  %379 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %379) #1
  %380 = bitcast i32* %headeronly to i8*
  call void @llvm.lifetime.end(i64 4, i8* %380) #1
  %381 = bitcast i32* %dropfrom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %381) #1
  %382 = bitcast i32* %cond to i8*
  call void @llvm.lifetime.end(i64 4, i8* %382) #1
  %383 = bitcast i8** %fvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %383) #1
  %384 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %384) #1
  %385 = bitcast %struct.header*** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %385) #1
  %386 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %386) #1
  %387 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %387) #1
  call void @llvm.lifetime.end(i64 1, i8* %mid) #1
  %388 = load i64, i64* %retval
  ret i64 %388
}

declare void @sm_free_tagged(i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @addheader(i8* %field, i8* %value, i32 %flags, %struct.envelope* %e, i32 %space) #0 {
entry:
  %field.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %space.addr = alloca i32, align 4
  %h = alloca %struct.header*, align 8
  %hp = alloca %struct.header**, align 8
  %hdrlist = alloca %struct.header**, align 8
  store i8* %field, i8** %field.addr, align 8, !tbaa !1
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !10
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i32 %space, i32* %space.addr, align 4, !tbaa !10
  %0 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.header*** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.header*** %hdrlist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header = getelementptr inbounds %struct.envelope, %struct.envelope* %3, i32 0, i32 0
  store %struct.header** %e_header, %struct.header*** %hdrlist, align 8, !tbaa !1
  %4 = load %struct.header**, %struct.header*** %hdrlist, align 8, !tbaa !1
  store %struct.header** %4, %struct.header*** %hp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.header**, %struct.header*** %hp, align 8, !tbaa !1
  %6 = load %struct.header*, %struct.header** %5, align 8, !tbaa !1
  store %struct.header* %6, %struct.header** %h, align 8, !tbaa !1
  %cmp = icmp ne %struct.header* %6, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %field.addr, align 8, !tbaa !1
  %8 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field = getelementptr inbounds %struct.header, %struct.header* %8, i32 0, i32 0
  %9 = load i8*, i8** %h_field, align 8, !tbaa !26
  %call = call i32 @sm_strcasecmp(i8* %7, i8* %9)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_link = getelementptr inbounds %struct.header, %struct.header* %10, i32 0, i32 2
  store %struct.header** %h_link, %struct.header*** %hp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load i8*, i8** %field.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %13 = load i32, i32* %flags.addr, align 4, !tbaa !10
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 52
  %15 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !31
  %16 = load i32, i32* %space.addr, align 4, !tbaa !10
  %call2 = call %struct.header* @allocheader(i8* %11, i8* %12, i32 %13, %struct.SM_RPOOL_T* %15, i32 %16)
  store %struct.header* %call2, %struct.header** %h, align 8, !tbaa !1
  %17 = load %struct.header**, %struct.header*** %hp, align 8, !tbaa !1
  %18 = load %struct.header*, %struct.header** %17, align 8, !tbaa !1
  %19 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_link3 = getelementptr inbounds %struct.header, %struct.header* %19, i32 0, i32 2
  store %struct.header* %18, %struct.header** %h_link3, align 8, !tbaa !32
  %20 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %21 = load %struct.header**, %struct.header*** %hp, align 8, !tbaa !1
  store %struct.header* %20, %struct.header** %21, align 8, !tbaa !1
  %22 = bitcast %struct.header*** %hdrlist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.header*** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret void
}

declare i32 @sm_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.header* @allocheader(i8* %field, i8* %value, i32 %flags, %struct.SM_RPOOL_T* %rp, i32 %space) #0 {
entry:
  %field.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %rp.addr = alloca %struct.SM_RPOOL_T*, align 8
  %space.addr = alloca i32, align 4
  %h = alloca %struct.header*, align 8
  %s = alloca %struct.symtab*, align 8
  %l = alloca i64, align 8
  %n = alloca i8*, align 8
  store i8* %field, i8** %field.addr, align 8, !tbaa !1
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !10
  store %struct.SM_RPOOL_T* %rp, %struct.SM_RPOOL_T** %rp.addr, align 8, !tbaa !1
  store i32 %space, i32* %space.addr, align 4, !tbaa !10
  %0 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %field.addr, align 8, !tbaa !1
  %call = call %struct.symtab* @stab(i8* %2, i32 12, i32 0)
  store %struct.symtab* %call, %struct.symtab** %s, align 8, !tbaa !1
  %3 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rp.addr, align 8, !tbaa !1
  %4 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  %call1 = call i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T* %3, i64 72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 566, i32 %4)
  %5 = bitcast i8* %call1 to %struct.header*
  store %struct.header* %5, %struct.header** %h, align 8, !tbaa !1
  %6 = load i8*, i8** %field.addr, align 8, !tbaa !1
  %7 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field = getelementptr inbounds %struct.header, %struct.header* %7, i32 0, i32 0
  store i8* %6, i8** %h_field, align 8, !tbaa !26
  %8 = load i32, i32* %space.addr, align 4, !tbaa !10
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %call2 = call i64 @strlen(i8* %11) #8
  store i64 %call2, i64* %l, align 8, !tbaa !13
  %12 = load i64, i64* %l, align 8, !tbaa !13
  %add = add i64 %12, 2
  %13 = load i64, i64* %l, align 8, !tbaa !13
  %cmp = icmp ugt i64 %add, %13
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  call void @sm_abort_at(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 574, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.100, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %14, %if.then
  %15 = phi i1 [ true, %if.then ], [ false, %14 ]
  %lor.ext = zext i1 %15 to i32
  %16 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rp.addr, align 8, !tbaa !1
  %17 = load i64, i64* %l, align 8, !tbaa !13
  %add3 = add i64 %17, 2
  %18 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  %call4 = call i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T* %16, i64 %add3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 575, i32 %18)
  store i8* %call4, i8** %n, align 8, !tbaa !1
  %19 = load i8*, i8** %n, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 0
  store i8 32, i8* %arrayidx, align 1, !tbaa !12
  %20 = load i8*, i8** %n, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %arrayidx5, align 1, !tbaa !12
  %21 = load i8*, i8** %n, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %23 = load i64, i64* %l, align 8, !tbaa !13
  %add6 = add i64 %23, 1
  %call7 = call i64 @sm_strlcpy(i8* %add.ptr, i8* %22, i64 %add6)
  %24 = load i8*, i8** %n, align 8, !tbaa !1
  %25 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value = getelementptr inbounds %struct.header, %struct.header* %25, i32 0, i32 1
  store i8* %24, i8** %h_value, align 8, !tbaa !29
  %26 = bitcast i8** %n to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i64* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %28 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rp.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %call8 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %28, i8* %29)
  %30 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value9 = getelementptr inbounds %struct.header, %struct.header* %30, i32 0, i32 1
  store i8* %call8, i8** %h_value9, align 8, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.end
  %31 = load i32, i32* %flags.addr, align 4, !tbaa !10
  %conv = sext i32 %31 to i64
  %32 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags = getelementptr inbounds %struct.header, %struct.header* %32, i32 0, i32 4
  store i64 %conv, i64* %h_flags, align 8, !tbaa !28
  %33 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp10 = icmp ne %struct.symtab* %33, null
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %34 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %34, i32 0, i32 3
  %sv_header = bitcast %union.anon* %s_value to %struct.hdrinfo*
  %hi_flags = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %sv_header, i32 0, i32 1
  %35 = load i64, i64* %hi_flags, align 8, !tbaa !8
  %36 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags13 = getelementptr inbounds %struct.header, %struct.header* %36, i32 0, i32 4
  %37 = load i64, i64* %h_flags13, align 8, !tbaa !28
  %or = or i64 %37, %35
  store i64 %or, i64* %h_flags13, align 8, !tbaa !28
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  %38 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_mflags = getelementptr inbounds %struct.header, %struct.header* %38, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %h_mflags, i32 0, i32 0
  %39 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 32, i32 1, i1 false)
  %40 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_macro = getelementptr inbounds %struct.header, %struct.header* %40, i32 0, i32 3
  store i8 0, i8* %h_macro, align 1, !tbaa !30
  %41 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %42 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  ret %struct.header* %41
}

; Function Attrs: nounwind uwtable
define void @insheader(i32 %idx, i8* %field, i8* %value, i32 %flags, %struct.envelope* %e, i32 %space) #0 {
entry:
  %idx.addr = alloca i32, align 4
  %field.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %space.addr = alloca i32, align 4
  %h = alloca %struct.header*, align 8
  %srch = alloca %struct.header*, align 8
  %last = alloca %struct.header*, align 8
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !10
  store i8* %field, i8** %field.addr, align 8, !tbaa !1
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !10
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i32 %space, i32* %space.addr, align 4, !tbaa !10
  %0 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.header** %srch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.header** %last to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.header* null, %struct.header** %last, align 8, !tbaa !1
  %3 = load i8*, i8** %field.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %5 = load i32, i32* %flags.addr, align 4, !tbaa !10
  %6 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %6, i32 0, i32 52
  %7 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !31
  %8 = load i32, i32* %space.addr, align 4, !tbaa !10
  %call = call %struct.header* @allocheader(i8* %3, i8* %4, i32 %5, %struct.SM_RPOOL_T* %7, i32 %8)
  store %struct.header* %call, %struct.header** %h, align 8, !tbaa !1
  %9 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header = getelementptr inbounds %struct.envelope, %struct.envelope* %9, i32 0, i32 0
  %10 = load %struct.header*, %struct.header** %e_header, align 8, !tbaa !33
  store %struct.header* %10, %struct.header** %srch, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load %struct.header*, %struct.header** %srch, align 8, !tbaa !1
  %cmp = icmp ne %struct.header* %11, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %12 = load i32, i32* %idx.addr, align 4, !tbaa !10
  %cmp1 = icmp sgt i32 %12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %13 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load %struct.header*, %struct.header** %srch, align 8, !tbaa !1
  store %struct.header* %14, %struct.header** %last, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct.header*, %struct.header** %srch, align 8, !tbaa !1
  %h_link = getelementptr inbounds %struct.header, %struct.header* %15, i32 0, i32 2
  %16 = load %struct.header*, %struct.header** %h_link, align 8, !tbaa !32
  store %struct.header* %16, %struct.header** %srch, align 8, !tbaa !1
  %17 = load i32, i32* %idx.addr, align 4, !tbaa !10
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %idx.addr, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header2 = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 0
  %19 = load %struct.header*, %struct.header** %e_header2, align 8, !tbaa !33
  %cmp3 = icmp eq %struct.header* %19, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %20 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %21 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header4 = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 0
  store %struct.header* %20, %struct.header** %e_header4, align 8, !tbaa !33
  %22 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_link5 = getelementptr inbounds %struct.header, %struct.header* %22, i32 0, i32 2
  store %struct.header* null, %struct.header** %h_link5, align 8, !tbaa !32
  br label %if.end.15

if.else:                                          ; preds = %for.end
  %23 = load %struct.header*, %struct.header** %srch, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.header* %23, null
  br i1 %cmp6, label %if.then.7, label %if.else.11

if.then.7:                                        ; preds = %if.else
  %24 = load %struct.header*, %struct.header** %last, align 8, !tbaa !1
  %cmp8 = icmp ne %struct.header* %24, null
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.7
  call void @sm_abort_at(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 692, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %25, %if.then.7
  %26 = phi i1 [ true, %if.then.7 ], [ false, %25 ]
  %lor.ext = zext i1 %26 to i32
  %27 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %28 = load %struct.header*, %struct.header** %last, align 8, !tbaa !1
  %h_link9 = getelementptr inbounds %struct.header, %struct.header* %28, i32 0, i32 2
  store %struct.header* %27, %struct.header** %h_link9, align 8, !tbaa !32
  %29 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_link10 = getelementptr inbounds %struct.header, %struct.header* %29, i32 0, i32 2
  store %struct.header* null, %struct.header** %h_link10, align 8, !tbaa !32
  br label %if.end

if.else.11:                                       ; preds = %if.else
  %30 = load %struct.header*, %struct.header** %srch, align 8, !tbaa !1
  %h_link12 = getelementptr inbounds %struct.header, %struct.header* %30, i32 0, i32 2
  %31 = load %struct.header*, %struct.header** %h_link12, align 8, !tbaa !32
  %32 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_link13 = getelementptr inbounds %struct.header, %struct.header* %32, i32 0, i32 2
  store %struct.header* %31, %struct.header** %h_link13, align 8, !tbaa !32
  %33 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %34 = load %struct.header*, %struct.header** %srch, align 8, !tbaa !1
  %h_link14 = getelementptr inbounds %struct.header, %struct.header* %34, i32 0, i32 2
  store %struct.header* %33, %struct.header** %h_link14, align 8, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %if.else.11, %lor.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %35 = bitcast %struct.header** %last to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.header** %srch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  ret void
}

; Function Attrs: noreturn
declare void @sm_abort_at(i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @hvalue(i8* %field, %struct.header* %header) #0 {
entry:
  %retval = alloca i8*, align 8
  %field.addr = alloca i8*, align 8
  %header.addr = alloca %struct.header*, align 8
  %h = alloca %struct.header*, align 8
  %s = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %field, i8** %field.addr, align 8, !tbaa !1
  store %struct.header* %header, %struct.header** %header.addr, align 8, !tbaa !1
  %0 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.header*, %struct.header** %header.addr, align 8, !tbaa !1
  store %struct.header* %1, %struct.header** %h, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %cmp = icmp ne %struct.header* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags = getelementptr inbounds %struct.header, %struct.header* %3, i32 0, i32 4
  %4 = load i64, i64* %h_flags, align 8, !tbaa !28
  %and = and i64 %4, 4
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end.12, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field = getelementptr inbounds %struct.header, %struct.header* %5, i32 0, i32 0
  %6 = load i8*, i8** %h_field, align 8, !tbaa !26
  %7 = load i8*, i8** %field.addr, align 8, !tbaa !1
  %call = call i32 @sm_strcasecmp(i8* %6, i8* %7)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end.12

if.then:                                          ; preds = %land.lhs.true
  %8 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value = getelementptr inbounds %struct.header, %struct.header* %9, i32 0, i32 1
  %10 = load i8*, i8** %h_value, align 8, !tbaa !29
  store i8* %10, i8** %s, align 8, !tbaa !1
  %11 = load i8*, i8** %s, align 8, !tbaa !1
  %cmp3 = icmp eq i8* %11, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %12 = load i8*, i8** %s, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !12
  %conv = sext i8 %13 to i32
  %and5 = and i32 %conv, -128
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load i8*, i8** %s, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !12
  %conv8 = sext i8 %15 to i32
  %idxprom = sext i32 %conv8 to i64
  %call9 = call i16** @__ctype_b_loc() #10
  %16 = load i16*, i16** %call9, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %16, i64 %idxprom
  %17 = load i16, i16* %arrayidx, align 2, !tbaa !14
  %conv10 = zext i16 %17 to i32
  %and11 = and i32 %conv10, 8192
  %tobool = icmp ne i32 %and11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load i8*, i8** %s, align 8, !tbaa !1
  store i8* %20, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.4
  %21 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  br label %cleanup.13

if.end.12:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %22 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_link = getelementptr inbounds %struct.header, %struct.header* %22, i32 0, i32 2
  %23 = load %struct.header*, %struct.header** %h_link, align 8, !tbaa !32
  store %struct.header* %23, %struct.header** %h, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.13

cleanup.13:                                       ; preds = %for.end, %cleanup
  %24 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i8*, i8** %retval
  ret i8* %25
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define i32 @isheader(i8* %h) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %h, i8** %h.addr, align 8, !tbaa !1
  %0 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %h.addr, align 8, !tbaa !1
  store i8* %1, i8** %s, align 8, !tbaa !1
  %2 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %s, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx2, align 1, !tbaa !12
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 45
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i8*, i8** %s, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !12
  %conv6 = sext i8 %7 to i32
  %cmp7 = icmp sgt i32 %conv6, 32
  br i1 %cmp7, label %land.lhs.true.9, label %land.end

land.lhs.true.9:                                  ; preds = %while.cond
  %8 = load i8*, i8** %s, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !12
  %conv10 = sext i8 %9 to i32
  %cmp11 = icmp ne i32 %conv10, 58
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.9
  %10 = load i8*, i8** %s, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !12
  %conv13 = sext i8 %11 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.9, %while.cond
  %12 = phi i1 [ false, %land.lhs.true.9 ], [ false, %while.cond ], [ %cmp14, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %s, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i8*, i8** %h.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %s, align 8, !tbaa !1
  %cmp16 = icmp eq i8* %14, %15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %while.end
  br label %while.cond.20

while.cond.20:                                    ; preds = %while.body.30, %if.end.19
  %16 = load i8*, i8** %s, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !12
  %conv21 = sext i8 %17 to i32
  %and = and i32 %conv21, -128
  %cmp22 = icmp eq i32 %and, 0
  br i1 %cmp22, label %land.rhs.24, label %land.end.29

land.rhs.24:                                      ; preds = %while.cond.20
  %18 = load i8*, i8** %s, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !12
  %conv25 = sext i8 %19 to i32
  %idxprom = sext i32 %conv25 to i64
  %call = call i16** @__ctype_b_loc() #10
  %20 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %20, i64 %idxprom
  %21 = load i16, i16* %arrayidx26, align 2, !tbaa !14
  %conv27 = zext i16 %21 to i32
  %and28 = and i32 %conv27, 8192
  %tobool = icmp ne i32 %and28, 0
  br label %land.end.29

land.end.29:                                      ; preds = %land.rhs.24, %while.cond.20
  %22 = phi i1 [ false, %while.cond.20 ], [ %tobool, %land.rhs.24 ]
  br i1 %22, label %while.body.30, label %while.end.32

while.body.30:                                    ; preds = %land.end.29
  %23 = load i8*, i8** %s, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr31, i8** %s, align 8, !tbaa !1
  br label %while.cond.20

while.end.32:                                     ; preds = %land.end.29
  %24 = load i8*, i8** %s, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !12
  %conv33 = sext i8 %25 to i32
  %cmp34 = icmp eq i32 %conv33, 58
  %conv35 = zext i1 %cmp34 to i32
  store i32 %conv35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.32, %if.then.18, %if.then
  %26 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define void @eatheader(%struct.envelope* %e, i32 %full, i32 %log) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %full.addr = alloca i32, align 4
  %log.addr = alloca i32, align 4
  %h = alloca %struct.header*, align 8
  %p = alloca i8*, align 8
  %hopcnt = alloca i32, align 4
  %buf = alloca [2048 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %oldsupr = alloca i32, align 4
  %pvp = alloca i8**, align 8
  %pvpbuf = alloca [2048 x i8], align 16
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp288 = alloca i32, align 4
  %__s1_len308 = alloca i64, align 8
  %__s2_len310 = alloca i64, align 8
  %tmp311 = alloca i32, align 4
  %__s1317 = alloca i8*, align 8
  %__result319 = alloca i32, align 4
  %tmp357 = alloca i32, align 4
  %__s1_len386 = alloca i64, align 8
  %__s2_len388 = alloca i64, align 8
  %tmp389 = alloca i32, align 4
  %__s1395 = alloca i8*, align 8
  %__result397 = alloca i32, align 4
  %tmp435 = alloca i32, align 4
  %__a0 = alloca i8, align 1
  %__a1 = alloca i8, align 1
  %__a2 = alloca i8, align 1
  %tmp539 = alloca i8*, align 8
  %hi = alloca %struct.hdrinfo*, align 8
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i32 %full, i32* %full.addr, align 4, !tbaa !10
  store i32 %log, i32* %log.addr, align 4, !tbaa !10
  %0 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %hopcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %hopcnt, align 4, !tbaa !10
  %3 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %3) #1
  %4 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %4, i32 0, i32 46
  %5 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sender = getelementptr inbounds %struct.envelope, %struct.envelope* %5, i32 0, i32 5
  %6 = load i8*, i8** %e_sender, align 8, !tbaa !34
  %7 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 2, i32 102, i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 826, i32 %7)
  %8 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro1 = getelementptr inbounds %struct.envelope, %struct.envelope* %8, i32 0, i32 46
  %9 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sender2 = getelementptr inbounds %struct.envelope, %struct.envelope* %9, i32 0, i32 5
  %10 = load i8*, i8** %e_sender2, align 8, !tbaa !34
  %11 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro1, i32 2, i32 103, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 827, i32 %11)
  %12 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_origrcpt = getelementptr inbounds %struct.envelope, %struct.envelope* %12, i32 0, i32 39
  %13 = load i8*, i8** %e_origrcpt, align 8, !tbaa !35
  %cmp = icmp ne i8* %13, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_origrcpt3 = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 39
  %15 = load i8*, i8** %e_origrcpt3, align 8, !tbaa !35
  %16 = load i8, i8* %15, align 1, !tbaa !12
  %conv = sext i8 %16 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro6 = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 46
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_origrcpt7 = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 39
  %19 = load i8*, i8** %e_origrcpt7, align 8, !tbaa !35
  %20 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro6, i32 2, i32 117, i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 829, i32 %20)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %21 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro8 = getelementptr inbounds %struct.envelope, %struct.envelope* %21, i32 0, i32 46
  %22 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro8, i32 2, i32 117, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 831, i32 %22)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header = getelementptr inbounds %struct.envelope, %struct.envelope* %23, i32 0, i32 0
  %24 = load %struct.header*, %struct.header** %e_header, align 8, !tbaa !33
  %call = call i8* @hvalue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), %struct.header* %24)
  store i8* %call, i8** %p, align 8, !tbaa !1
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp9 = icmp ne i8* %25, null
  br i1 %cmp9, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.end
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %call12 = call i32 @rfc822_string(i8* %26)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.then.11
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %28 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %28, i32 0, i32 52
  %29 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !31
  %call14 = call i8* @addquotes(i8* %27, %struct.SM_RPOOL_T* %29)
  store i8* %call14, i8** %p, align 8, !tbaa !1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.11
  %30 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro16 = getelementptr inbounds %struct.envelope, %struct.envelope* %30, i32 0, i32 46
  %31 = load i8*, i8** %p, align 8, !tbaa !1
  %32 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro16, i32 2, i32 120, i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 847, i32 %32)
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %if.end
  %33 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 32), align 1, !tbaa !12
  %conv18 = zext i8 %33 to i32
  %cmp19 = icmp sge i32 %conv18, 1
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.24

land.lhs.true.21:                                 ; preds = %if.end.17
  %34 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool22 = icmp ne i32 %34, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.21
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.21, %if.end.17
  %35 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgid = getelementptr inbounds %struct.envelope, %struct.envelope* %35, i32 0, i32 10
  store i8* null, i8** %e_msgid, align 8, !tbaa !36
  %36 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header25 = getelementptr inbounds %struct.envelope, %struct.envelope* %36, i32 0, i32 0
  %37 = load %struct.header*, %struct.header** %e_header25, align 8, !tbaa !33
  store %struct.header* %37, %struct.header** %h, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %38 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %cmp26 = icmp ne %struct.header* %38, null
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 32), align 1, !tbaa !12
  %conv28 = zext i8 %39 to i32
  %cmp29 = icmp sge i32 %conv28, 1
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.34

land.lhs.true.31:                                 ; preds = %for.body
  %40 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool32 = icmp ne i32 %40, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true.31
  %41 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field = getelementptr inbounds %struct.header, %struct.header* %41, i32 0, i32 0
  %42 = load i8*, i8** %h_field, align 8, !tbaa !26
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* %42)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %land.lhs.true.31, %for.body
  %43 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value = getelementptr inbounds %struct.header, %struct.header* %43, i32 0, i32 1
  %44 = load i8*, i8** %h_value, align 8, !tbaa !29
  %cmp35 = icmp eq i8* %44, null
  br i1 %cmp35, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %if.end.34
  %45 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 32), align 1, !tbaa !12
  %conv38 = zext i8 %45 to i32
  %cmp39 = icmp sge i32 %conv38, 1
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.44

land.lhs.true.41:                                 ; preds = %if.then.37
  %46 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool42 = icmp ne i32 %46, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.41
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %land.lhs.true.41, %if.then.37
  br label %for.inc

if.end.45:                                        ; preds = %if.end.34
  %47 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags = getelementptr inbounds %struct.header, %struct.header* %47, i32 0, i32 4
  %48 = load i64, i64* %h_flags, align 8, !tbaa !28
  %and = and i64 %48, 4
  %cmp46 = icmp ne i64 %and, 0
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.93

land.lhs.true.48:                                 ; preds = %if.end.45
  %49 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags49 = getelementptr inbounds %struct.header, %struct.header* %49, i32 0, i32 4
  %50 = load i64, i64* %h_flags49, align 8, !tbaa !28
  %and50 = and i64 %50, 131072
  %cmp51 = icmp ne i64 %and50, 0
  br i1 %cmp51, label %if.end.93, label %if.then.53

if.then.53:                                       ; preds = %land.lhs.true.48
  %51 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 32), align 1, !tbaa !12
  %conv54 = zext i8 %51 to i32
  %cmp55 = icmp sge i32 %conv54, 1
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.62

land.lhs.true.57:                                 ; preds = %if.then.53
  %52 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool58 = icmp ne i32 %52, 0
  br i1 %tobool58, label %if.end.62, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true.57
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  %call60 = call %struct.sm_file* @sm_debug_file()
  %53 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value61 = getelementptr inbounds %struct.header, %struct.header* %53, i32 0, i32 1
  %54 = load i8*, i8** %h_value61, align 8, !tbaa !29
  call void @xputs(%struct.sm_file* %call60, i8* %54)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %land.lhs.true.57, %if.then.53
  %55 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value63 = getelementptr inbounds %struct.header, %struct.header* %55, i32 0, i32 1
  %56 = load i8*, i8** %h_value63, align 8, !tbaa !29
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %57 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %56, i8* %arraydecay, i64 2048, %struct.envelope* %57)
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 0
  %58 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %conv64 = sext i8 %58 to i32
  %cmp65 = icmp ne i32 %conv64, 0
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.92

land.lhs.true.67:                                 ; preds = %if.end.62
  %arrayidx68 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 0
  %59 = load i8, i8* %arrayidx68, align 1, !tbaa !12
  %conv69 = sext i8 %59 to i32
  %cmp70 = icmp ne i32 %conv69, 32
  br i1 %cmp70, label %if.then.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.67
  %arrayidx72 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i64 1
  %60 = load i8, i8* %arrayidx72, align 1, !tbaa !12
  %conv73 = sext i8 %60 to i32
  %cmp74 = icmp ne i32 %conv73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.92

if.then.76:                                       ; preds = %lor.lhs.false, %land.lhs.true.67
  %61 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags77 = getelementptr inbounds %struct.header, %struct.header* %61, i32 0, i32 4
  %62 = load i64, i64* %h_flags77, align 8, !tbaa !28
  %and78 = and i64 %62, 256
  %cmp79 = icmp ne i64 %and78, 0
  br i1 %cmp79, label %if.then.81, label %if.end.85

if.then.81:                                       ; preds = %if.then.76
  %arraydecay82 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %63 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call83 = call i8* @crackaddr(i8* %arraydecay82, %struct.envelope* %63)
  %arraydecay84 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %64 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %call83, i8* %arraydecay84, i64 2048, %struct.envelope* %64)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.81, %if.then.76
  %65 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_rpool86 = getelementptr inbounds %struct.envelope, %struct.envelope* %65, i32 0, i32 52
  %66 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool86, align 8, !tbaa !31
  %arraydecay87 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %call88 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %66, i8* %arraydecay87)
  %67 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value89 = getelementptr inbounds %struct.header, %struct.header* %67, i32 0, i32 1
  store i8* %call88, i8** %h_value89, align 8, !tbaa !29
  %68 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags90 = getelementptr inbounds %struct.header, %struct.header* %68, i32 0, i32 4
  %69 = load i64, i64* %h_flags90, align 8, !tbaa !28
  %and91 = and i64 %69, -5
  store i64 %and91, i64* %h_flags90, align 8, !tbaa !28
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.85, %lor.lhs.false, %if.end.62
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true.48, %if.end.45
  %70 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 32), align 1, !tbaa !12
  %conv94 = zext i8 %70 to i32
  %cmp95 = icmp sge i32 %conv94, 1
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.102

land.lhs.true.97:                                 ; preds = %if.end.93
  %71 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool98 = icmp ne i32 %71, 0
  br i1 %tobool98, label %if.end.102, label %if.then.99

if.then.99:                                       ; preds = %land.lhs.true.97
  %call100 = call %struct.sm_file* @sm_debug_file()
  %72 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value101 = getelementptr inbounds %struct.header, %struct.header* %72, i32 0, i32 1
  %73 = load i8*, i8** %h_value101, align 8, !tbaa !29
  call void @xputs(%struct.sm_file* %call100, i8* %73)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %land.lhs.true.97, %if.end.93
  %74 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags103 = getelementptr inbounds %struct.header, %struct.header* %74, i32 0, i32 4
  %75 = load i64, i64* %h_flags103, align 8, !tbaa !28
  %and104 = and i64 %75, 128
  %cmp105 = icmp ne i64 %and104, 0
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.102
  %76 = load i32, i32* %hopcnt, align 4, !tbaa !10
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %hopcnt, align 4, !tbaa !10
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.end.102
  %77 = load i32, i32* @GrabTo, align 4, !tbaa !10
  %tobool109 = icmp ne i32 %77, 0
  br i1 %tobool109, label %land.lhs.true.110, label %if.end.133

land.lhs.true.110:                                ; preds = %if.end.108
  %78 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags111 = getelementptr inbounds %struct.header, %struct.header* %78, i32 0, i32 4
  %79 = load i64, i64* %h_flags111, align 8, !tbaa !28
  %and112 = and i64 %79, 2
  %cmp113 = icmp ne i64 %and112, 0
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.133

land.lhs.true.115:                                ; preds = %land.lhs.true.110
  %80 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags116 = getelementptr inbounds %struct.header, %struct.header* %80, i32 0, i32 4
  %81 = load i64, i64* %h_flags116, align 8, !tbaa !28
  %and117 = and i64 %81, 4
  %cmp118 = icmp ne i64 %and117, 0
  br i1 %cmp118, label %if.end.133, label %land.lhs.true.120

land.lhs.true.120:                                ; preds = %land.lhs.true.115
  %82 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %82, i32 0, i32 11
  %83 = load i64, i64* %e_flags, align 8, !tbaa !16
  %and121 = and i64 %83, 256
  %cmp122 = icmp ne i64 %and121, 0
  br i1 %cmp122, label %lor.lhs.false.124, label %if.then.129

lor.lhs.false.124:                                ; preds = %land.lhs.true.120
  %84 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags125 = getelementptr inbounds %struct.header, %struct.header* %84, i32 0, i32 4
  %85 = load i64, i64* %h_flags125, align 8, !tbaa !28
  %and126 = and i64 %85, 8
  %cmp127 = icmp ne i64 %and126, 0
  br i1 %cmp127, label %if.then.129, label %if.end.133

if.then.129:                                      ; preds = %lor.lhs.false.124, %land.lhs.true.120
  %86 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value130 = getelementptr inbounds %struct.header, %struct.header* %86, i32 0, i32 1
  %87 = load i8*, i8** %h_value130, align 8, !tbaa !29
  %call131 = call i8* @denlstring(i8* %87, i32 1, i32 0)
  %88 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_sendqueue = getelementptr inbounds %struct.envelope, %struct.envelope* %88, i32 0, i32 7
  %89 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call132 = call i32 @sendtolist(i8* %call131, %struct.address* null, %struct.address** %e_sendqueue, i32 0, %struct.envelope* %89)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.129, %lor.lhs.false.124, %land.lhs.true.115, %land.lhs.true.110, %if.end.108
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8** %p, align 8, !tbaa !1
  %90 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags134 = getelementptr inbounds %struct.envelope, %struct.envelope* %90, i32 0, i32 11
  %91 = load i64, i64* %e_flags134, align 8, !tbaa !16
  %and135 = and i64 %91, 256
  %cmp136 = icmp ne i64 %and135, 0
  br i1 %cmp136, label %if.end.139, label %if.then.138

if.then.138:                                      ; preds = %if.end.133
  %92 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %92, i64 7
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.138, %if.end.133
  %93 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field140 = getelementptr inbounds %struct.header, %struct.header* %93, i32 0, i32 0
  %94 = load i8*, i8** %h_field140, align 8, !tbaa !26
  %95 = load i8*, i8** %p, align 8, !tbaa !1
  %call141 = call i32 @sm_strcasecmp(i8* %94, i8* %95)
  %cmp142 = icmp eq i32 %call141, 0
  br i1 %cmp142, label %if.then.144, label %if.end.163

if.then.144:                                      ; preds = %if.end.139
  %96 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value145 = getelementptr inbounds %struct.header, %struct.header* %96, i32 0, i32 1
  %97 = load i8*, i8** %h_value145, align 8, !tbaa !29
  %98 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgid146 = getelementptr inbounds %struct.envelope, %struct.envelope* %98, i32 0, i32 10
  store i8* %97, i8** %e_msgid146, align 8, !tbaa !36
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.144
  %99 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgid147 = getelementptr inbounds %struct.envelope, %struct.envelope* %99, i32 0, i32 10
  %100 = load i8*, i8** %e_msgid147, align 8, !tbaa !36
  %101 = load i8, i8* %100, align 1, !tbaa !12
  %conv148 = sext i8 %101 to i32
  %and149 = and i32 %conv148, -128
  %cmp150 = icmp eq i32 %and149, 0
  br i1 %cmp150, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %102 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgid152 = getelementptr inbounds %struct.envelope, %struct.envelope* %102, i32 0, i32 10
  %103 = load i8*, i8** %e_msgid152, align 8, !tbaa !36
  %104 = load i8, i8* %103, align 1, !tbaa !12
  %conv153 = sext i8 %104 to i32
  %idxprom = sext i32 %conv153 to i64
  %call154 = call i16** @__ctype_b_loc() #10
  %105 = load i16*, i16** %call154, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds i16, i16* %105, i64 %idxprom
  %106 = load i16, i16* %arrayidx155, align 2, !tbaa !14
  %conv156 = zext i16 %106 to i32
  %and157 = and i32 %conv156, 8192
  %tobool158 = icmp ne i32 %and157, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %107 = phi i1 [ false, %while.cond ], [ %tobool158, %land.rhs ]
  br i1 %107, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %108 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgid159 = getelementptr inbounds %struct.envelope, %struct.envelope* %108, i32 0, i32 10
  %109 = load i8*, i8** %e_msgid159, align 8, !tbaa !36
  %incdec.ptr = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr, i8** %e_msgid159, align 8, !tbaa !36
  br label %while.cond

while.end:                                        ; preds = %land.end
  %110 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro160 = getelementptr inbounds %struct.envelope, %struct.envelope* %110, i32 0, i32 46
  %call161 = call i32 @macid_parse(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8** null)
  %111 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgid162 = getelementptr inbounds %struct.envelope, %struct.envelope* %111, i32 0, i32 10
  %112 = load i8*, i8** %e_msgid162, align 8, !tbaa !36
  %113 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro160, i32 2, i32 %call161, i8* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 930, i32 %113)
  br label %if.end.163

if.end.163:                                       ; preds = %while.end, %if.end.139
  br label %for.inc

for.inc:                                          ; preds = %if.end.163, %if.end.44
  %114 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_link = getelementptr inbounds %struct.header, %struct.header* %114, i32 0, i32 2
  %115 = load %struct.header*, %struct.header** %h_link, align 8, !tbaa !32
  store %struct.header* %115, %struct.header** %h, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %116 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 32), align 1, !tbaa !12
  %conv164 = zext i8 %116 to i32
  %cmp165 = icmp sge i32 %conv164, 1
  br i1 %cmp165, label %land.lhs.true.167, label %if.end.170

land.lhs.true.167:                                ; preds = %for.end
  %117 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool168 = icmp ne i32 %117, 0
  br i1 %tobool168, label %if.end.170, label %if.then.169

if.then.169:                                      ; preds = %land.lhs.true.167
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.169, %land.lhs.true.167, %for.end
  %118 = load i8, i8* @OpMode, align 1, !tbaa !12
  %conv171 = sext i8 %118 to i32
  %cmp172 = icmp eq i32 %conv171, 118
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.end.170
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.175:                                       ; preds = %if.end.170
  %119 = load i32, i32* %hopcnt, align 4, !tbaa !10
  %120 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_hopcount = getelementptr inbounds %struct.envelope, %struct.envelope* %120, i32 0, i32 14
  %121 = load i16, i16* %e_hopcount, align 2, !tbaa !37
  %conv176 = sext i16 %121 to i32
  %cmp177 = icmp sgt i32 %119, %conv176
  br i1 %cmp177, label %if.then.179, label %if.end.188

if.then.179:                                      ; preds = %if.end.175
  %122 = load i32, i32* %hopcnt, align 4, !tbaa !10
  %conv180 = trunc i32 %122 to i16
  %123 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_hopcount181 = getelementptr inbounds %struct.envelope, %struct.envelope* %123, i32 0, i32 14
  store i16 %conv180, i16* %e_hopcount181, align 2, !tbaa !37
  %arraydecay182 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %124 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_hopcount183 = getelementptr inbounds %struct.envelope, %struct.envelope* %124, i32 0, i32 14
  %125 = load i16, i16* %e_hopcount183, align 2, !tbaa !37
  %conv184 = sext i16 %125 to i32
  %call185 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay182, i64 2048, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %conv184)
  %126 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro186 = getelementptr inbounds %struct.envelope, %struct.envelope* %126, i32 0, i32 46
  %arraydecay187 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i32 0, i32 0
  %127 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro186, i32 1, i32 99, i8* %arraydecay187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 945, i32 %127)
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.179, %if.end.175
  %128 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header189 = getelementptr inbounds %struct.envelope, %struct.envelope* %128, i32 0, i32 0
  %129 = load %struct.header*, %struct.header** %e_header189, align 8, !tbaa !33
  %call190 = call i8* @hvalue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %struct.header* %129)
  store i8* %call190, i8** %p, align 8, !tbaa !1
  %130 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp191 = icmp ne i8* %130, null
  br i1 %cmp191, label %if.then.193, label %if.end.196

if.then.193:                                      ; preds = %if.end.188
  %131 = load i8*, i8** %p, align 8, !tbaa !1
  %call194 = call i32 @priencode(i8* %131)
  %conv195 = trunc i32 %call194 to i16
  %132 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_class = getelementptr inbounds %struct.envelope, %struct.envelope* %132, i32 0, i32 13
  store i16 %conv195, i16* %e_class, align 2, !tbaa !38
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.193, %if.end.188
  %133 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_class197 = getelementptr inbounds %struct.envelope, %struct.envelope* %133, i32 0, i32 13
  %134 = load i16, i16* %e_class197, align 2, !tbaa !38
  %conv198 = sext i16 %134 to i32
  %cmp199 = icmp slt i32 %conv198, 0
  br i1 %cmp199, label %if.then.201, label %if.else.202

if.then.201:                                      ; preds = %if.end.196
  %135 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass = getelementptr inbounds %struct.envelope, %struct.envelope* %135, i32 0, i32 18
  store i16 2, i16* %e_timeoutclass, align 2, !tbaa !39
  br label %if.end.210

if.else.202:                                      ; preds = %if.end.196
  %136 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_class203 = getelementptr inbounds %struct.envelope, %struct.envelope* %136, i32 0, i32 13
  %137 = load i16, i16* %e_class203, align 2, !tbaa !38
  %conv204 = sext i16 %137 to i32
  %cmp205 = icmp sgt i32 %conv204, 0
  br i1 %cmp205, label %if.then.207, label %if.end.209

if.then.207:                                      ; preds = %if.else.202
  %138 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass208 = getelementptr inbounds %struct.envelope, %struct.envelope* %138, i32 0, i32 18
  store i16 1, i16* %e_timeoutclass208, align 2, !tbaa !39
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.207, %if.else.202
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.then.201
  %139 = load i32, i32* %full.addr, align 4, !tbaa !10
  %tobool211 = icmp ne i32 %139, 0
  br i1 %tobool211, label %if.then.212, label %if.end.217

if.then.212:                                      ; preds = %if.end.210
  %140 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize = getelementptr inbounds %struct.envelope, %struct.envelope* %140, i32 0, i32 9
  %141 = load i64, i64* %e_msgsize, align 8, !tbaa !40
  %142 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_class213 = getelementptr inbounds %struct.envelope, %struct.envelope* %142, i32 0, i32 13
  %143 = load i16, i16* %e_class213, align 2, !tbaa !38
  %conv214 = sext i16 %143 to i64
  %144 = load i64, i64* @WkClassFact, align 8, !tbaa !13
  %mul = mul nsw i64 %conv214, %144
  %sub = sub nsw i64 %141, %mul
  %145 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_nrcpts = getelementptr inbounds %struct.envelope, %struct.envelope* %145, i32 0, i32 12
  %146 = load i32, i32* %e_nrcpts, align 4, !tbaa !41
  %conv215 = sext i32 %146 to i64
  %147 = load i64, i64* @WkRecipFact, align 8, !tbaa !13
  %mul216 = mul nsw i64 %conv215, %147
  %add = add nsw i64 %sub, %mul216
  %148 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgpriority = getelementptr inbounds %struct.envelope, %struct.envelope* %148, i32 0, i32 1
  store i64 %add, i64* %e_msgpriority, align 8, !tbaa !42
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.212, %if.end.210
  %149 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header218 = getelementptr inbounds %struct.envelope, %struct.envelope* %149, i32 0, i32 0
  %150 = load %struct.header*, %struct.header** %e_header218, align 8, !tbaa !33
  %call219 = call i8* @hvalue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), %struct.header* %150)
  store i8* %call219, i8** %p, align 8, !tbaa !1
  %151 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp220 = icmp ne i8* %151, null
  br i1 %cmp220, label %if.then.222, label %if.end.456

if.then.222:                                      ; preds = %if.end.217
  %152 = bitcast i32* %oldsupr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #1
  %153 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #1
  %154 = bitcast [2048 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %154) #1
  %155 = load i32, i32* @SuprErrs, align 4, !tbaa !10
  store i32 %155, i32* %oldsupr, align 4, !tbaa !10
  store i32 1, i32* @SuprErrs, align 4, !tbaa !10
  %156 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay223 = getelementptr inbounds [2048 x i8], [2048 x i8]* %pvpbuf, i32 0, i32 0
  %call224 = call i8** @prescan(i8* %156, i32 0, i8* %arraydecay223, i32 2048, i8** null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @MimeTokenTab, i32 0, i32 0), i32 0)
  store i8** %call224, i8*** %pvp, align 8, !tbaa !1
  %157 = load i32, i32* %oldsupr, align 4, !tbaa !10
  store i32 %157, i32* @SuprErrs, align 4, !tbaa !10
  %158 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %cmp225 = icmp ne i8** %158, null
  br i1 %cmp225, label %land.lhs.true.227, label %if.end.455

land.lhs.true.227:                                ; preds = %if.then.222
  %159 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i8*, i8** %159, i64 0
  %160 = load i8*, i8** %arrayidx228, align 8, !tbaa !1
  %cmp229 = icmp ne i8* %160, null
  br i1 %cmp229, label %land.lhs.true.231, label %if.end.455

land.lhs.true.231:                                ; preds = %land.lhs.true.227
  %161 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds i8*, i8** %161, i64 1
  %162 = load i8*, i8** %arrayidx232, align 8, !tbaa !1
  %cmp233 = icmp ne i8* %162, null
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.455

land.lhs.true.235:                                ; preds = %land.lhs.true.231
  %163 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %arrayidx236 = getelementptr inbounds i8*, i8** %163, i64 2
  %164 = load i8*, i8** %arrayidx236, align 8, !tbaa !1
  %cmp237 = icmp ne i8* %164, null
  br i1 %cmp237, label %land.lhs.true.239, label %if.end.455

land.lhs.true.239:                                ; preds = %land.lhs.true.235
  %165 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr240 = getelementptr inbounds i8*, i8** %165, i32 1
  store i8** %incdec.ptr240, i8*** %pvp, align 8, !tbaa !1
  %166 = load i8*, i8** %165, align 8, !tbaa !1
  %call241 = call i32 @sm_strcasecmp(i8* %166, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0))
  %cmp242 = icmp eq i32 %call241, 0
  br i1 %cmp242, label %land.lhs.true.244, label %if.end.455

land.lhs.true.244:                                ; preds = %land.lhs.true.239
  %167 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %167) #1
  %168 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %168) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.18 to i64)), i64 1), label %land.lhs.true.245, label %cond.false

land.lhs.true.245:                                ; preds = %land.lhs.true.244
  store i64 1, i64* %__s2_len, align 8, !tbaa !13
  %169 = load i64, i64* %__s2_len, align 8, !tbaa !13
  %cmp246 = icmp ult i64 %169, 4
  br i1 %cmp246, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.245
  %170 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  %171 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr249 = getelementptr inbounds i8*, i8** %171, i32 1
  store i8** %incdec.ptr249, i8*** %pvp, align 8, !tbaa !1
  %172 = load i8*, i8** %171, align 8, !tbaa !1
  store i8* %172, i8** %__s1, align 8, !tbaa !1
  %173 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #1
  %174 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds i8, i8* %174, i64 0
  %175 = load i8, i8* %arrayidx251, align 1, !tbaa !12
  %conv252 = zext i8 %175 to i32
  %176 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), align 1, !tbaa !12
  %conv253 = zext i8 %176 to i32
  %sub254 = sub nsw i32 %conv252, %conv253
  store i32 %sub254, i32* %__result, align 4, !tbaa !10
  %177 = load i64, i64* %__s2_len, align 8, !tbaa !13
  %cmp255 = icmp ugt i64 %177, 0
  br i1 %cmp255, label %land.lhs.true.257, label %if.end.287

land.lhs.true.257:                                ; preds = %cond.true
  %178 = load i32, i32* %__result, align 4, !tbaa !10
  %cmp258 = icmp eq i32 %178, 0
  br i1 %cmp258, label %if.then.260, label %if.end.287

if.then.260:                                      ; preds = %land.lhs.true.257
  %179 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds i8, i8* %179, i64 1
  %180 = load i8, i8* %arrayidx261, align 1, !tbaa !12
  %conv262 = zext i8 %180 to i32
  %181 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i64 1), align 1, !tbaa !12
  %conv263 = zext i8 %181 to i32
  %sub264 = sub nsw i32 %conv262, %conv263
  store i32 %sub264, i32* %__result, align 4, !tbaa !10
  %182 = load i64, i64* %__s2_len, align 8, !tbaa !13
  %cmp265 = icmp ugt i64 %182, 1
  br i1 %cmp265, label %land.lhs.true.267, label %if.end.286

land.lhs.true.267:                                ; preds = %if.then.260
  %183 = load i32, i32* %__result, align 4, !tbaa !10
  %cmp268 = icmp eq i32 %183, 0
  br i1 %cmp268, label %if.then.270, label %if.end.286

if.then.270:                                      ; preds = %land.lhs.true.267
  %184 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx271 = getelementptr inbounds i8, i8* %184, i64 2
  %185 = load i8, i8* %arrayidx271, align 1, !tbaa !12
  %conv272 = zext i8 %185 to i32
  %186 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i64 2), align 1, !tbaa !12
  %conv273 = zext i8 %186 to i32
  %sub274 = sub nsw i32 %conv272, %conv273
  store i32 %sub274, i32* %__result, align 4, !tbaa !10
  %187 = load i64, i64* %__s2_len, align 8, !tbaa !13
  %cmp275 = icmp ugt i64 %187, 2
  br i1 %cmp275, label %land.lhs.true.277, label %if.end.285

land.lhs.true.277:                                ; preds = %if.then.270
  %188 = load i32, i32* %__result, align 4, !tbaa !10
  %cmp278 = icmp eq i32 %188, 0
  br i1 %cmp278, label %if.then.280, label %if.end.285

if.then.280:                                      ; preds = %land.lhs.true.277
  %189 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds i8, i8* %189, i64 3
  %190 = load i8, i8* %arrayidx281, align 1, !tbaa !12
  %conv282 = zext i8 %190 to i32
  %191 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i64 3), align 1, !tbaa !12
  %conv283 = zext i8 %191 to i32
  %sub284 = sub nsw i32 %conv282, %conv283
  store i32 %sub284, i32* %__result, align 4, !tbaa !10
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.280, %land.lhs.true.277, %if.then.270
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285, %land.lhs.true.267, %if.then.260
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286, %land.lhs.true.257, %cond.true
  %192 = load i32, i32* %__result, align 4, !tbaa !10
  store i32 %192, i32* %tmp288, !tbaa !10
  %193 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = load i32, i32* %tmp288, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.245, %land.lhs.true.244
  %196 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr289 = getelementptr inbounds i8*, i8** %196, i32 1
  store i8** %incdec.ptr289, i8*** %pvp, align 8, !tbaa !1
  %197 = load i8*, i8** %196, align 8, !tbaa !1
  %call290 = call i32 @strcmp(i8* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.287
  %cond = phi i32 [ %195, %if.end.287 ], [ %call290, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !10
  %198 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = load i32, i32* %tmp, !tbaa !10
  %cmp291 = icmp eq i32 %200, 0
  br i1 %cmp291, label %land.lhs.true.293, label %if.end.455

land.lhs.true.293:                                ; preds = %cond.end
  %201 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr294 = getelementptr inbounds i8*, i8** %201, i32 1
  store i8** %incdec.ptr294, i8*** %pvp, align 8, !tbaa !1
  %202 = load i8*, i8** %201, align 8, !tbaa !1
  %call295 = call i32 @sm_strcasecmp(i8* %202, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0))
  %cmp296 = icmp eq i32 %call295, 0
  br i1 %cmp296, label %if.then.298, label %if.end.455

if.then.298:                                      ; preds = %land.lhs.true.293
  br label %while.cond.299

while.cond.299:                                   ; preds = %if.then.442, %if.then.380, %if.then.298
  %203 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %204 = load i8*, i8** %203, align 8, !tbaa !1
  %cmp300 = icmp ne i8* %204, null
  br i1 %cmp300, label %while.body.302, label %while.end.454

while.body.302:                                   ; preds = %while.cond.299
  br label %while.cond.303

while.cond.303:                                   ; preds = %while.body.365, %while.body.302
  %205 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %206 = load i8*, i8** %205, align 8, !tbaa !1
  %cmp304 = icmp ne i8* %206, null
  br i1 %cmp304, label %land.rhs.306, label %land.end.364

land.rhs.306:                                     ; preds = %while.cond.303
  %207 = bitcast i64* %__s1_len308 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %207) #1
  %208 = bitcast i64* %__s2_len310 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %208) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.20 to i64)), i64 1), label %land.lhs.true.312, label %cond.false.358

land.lhs.true.312:                                ; preds = %land.rhs.306
  store i64 1, i64* %__s2_len310, align 8, !tbaa !13
  %209 = load i64, i64* %__s2_len310, align 8, !tbaa !13
  %cmp313 = icmp ult i64 %209, 4
  br i1 %cmp313, label %cond.true.315, label %cond.false.358

cond.true.315:                                    ; preds = %land.lhs.true.312
  %210 = bitcast i8** %__s1317 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %210) #1
  %211 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %212 = load i8*, i8** %211, align 8, !tbaa !1
  store i8* %212, i8** %__s1317, align 8, !tbaa !1
  %213 = bitcast i32* %__result319 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %213) #1
  %214 = load i8*, i8** %__s1317, align 8, !tbaa !1
  %arrayidx320 = getelementptr inbounds i8, i8* %214, i64 0
  %215 = load i8, i8* %arrayidx320, align 1, !tbaa !12
  %conv321 = zext i8 %215 to i32
  %216 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), align 1, !tbaa !12
  %conv322 = zext i8 %216 to i32
  %sub323 = sub nsw i32 %conv321, %conv322
  store i32 %sub323, i32* %__result319, align 4, !tbaa !10
  %217 = load i64, i64* %__s2_len310, align 8, !tbaa !13
  %cmp324 = icmp ugt i64 %217, 0
  br i1 %cmp324, label %land.lhs.true.326, label %if.end.356

land.lhs.true.326:                                ; preds = %cond.true.315
  %218 = load i32, i32* %__result319, align 4, !tbaa !10
  %cmp327 = icmp eq i32 %218, 0
  br i1 %cmp327, label %if.then.329, label %if.end.356

if.then.329:                                      ; preds = %land.lhs.true.326
  %219 = load i8*, i8** %__s1317, align 8, !tbaa !1
  %arrayidx330 = getelementptr inbounds i8, i8* %219, i64 1
  %220 = load i8, i8* %arrayidx330, align 1, !tbaa !12
  %conv331 = zext i8 %220 to i32
  %221 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i64 1), align 1, !tbaa !12
  %conv332 = zext i8 %221 to i32
  %sub333 = sub nsw i32 %conv331, %conv332
  store i32 %sub333, i32* %__result319, align 4, !tbaa !10
  %222 = load i64, i64* %__s2_len310, align 8, !tbaa !13
  %cmp334 = icmp ugt i64 %222, 1
  br i1 %cmp334, label %land.lhs.true.336, label %if.end.355

land.lhs.true.336:                                ; preds = %if.then.329
  %223 = load i32, i32* %__result319, align 4, !tbaa !10
  %cmp337 = icmp eq i32 %223, 0
  br i1 %cmp337, label %if.then.339, label %if.end.355

if.then.339:                                      ; preds = %land.lhs.true.336
  %224 = load i8*, i8** %__s1317, align 8, !tbaa !1
  %arrayidx340 = getelementptr inbounds i8, i8* %224, i64 2
  %225 = load i8, i8* %arrayidx340, align 1, !tbaa !12
  %conv341 = zext i8 %225 to i32
  %226 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i64 2), align 1, !tbaa !12
  %conv342 = zext i8 %226 to i32
  %sub343 = sub nsw i32 %conv341, %conv342
  store i32 %sub343, i32* %__result319, align 4, !tbaa !10
  %227 = load i64, i64* %__s2_len310, align 8, !tbaa !13
  %cmp344 = icmp ugt i64 %227, 2
  br i1 %cmp344, label %land.lhs.true.346, label %if.end.354

land.lhs.true.346:                                ; preds = %if.then.339
  %228 = load i32, i32* %__result319, align 4, !tbaa !10
  %cmp347 = icmp eq i32 %228, 0
  br i1 %cmp347, label %if.then.349, label %if.end.354

if.then.349:                                      ; preds = %land.lhs.true.346
  %229 = load i8*, i8** %__s1317, align 8, !tbaa !1
  %arrayidx350 = getelementptr inbounds i8, i8* %229, i64 3
  %230 = load i8, i8* %arrayidx350, align 1, !tbaa !12
  %conv351 = zext i8 %230 to i32
  %231 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i64 3), align 1, !tbaa !12
  %conv352 = zext i8 %231 to i32
  %sub353 = sub nsw i32 %conv351, %conv352
  store i32 %sub353, i32* %__result319, align 4, !tbaa !10
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.349, %land.lhs.true.346, %if.then.339
  br label %if.end.355

if.end.355:                                       ; preds = %if.end.354, %land.lhs.true.336, %if.then.329
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %land.lhs.true.326, %cond.true.315
  %232 = load i32, i32* %__result319, align 4, !tbaa !10
  store i32 %232, i32* %tmp357, !tbaa !10
  %233 = bitcast i32* %__result319 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #1
  %234 = bitcast i8** %__s1317 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  %235 = load i32, i32* %tmp357, !tbaa !10
  br label %cond.end.360

cond.false.358:                                   ; preds = %land.lhs.true.312, %land.rhs.306
  %236 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %237 = load i8*, i8** %236, align 8, !tbaa !1
  %call359 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #1
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.false.358, %if.end.356
  %cond361 = phi i32 [ %235, %if.end.356 ], [ %call359, %cond.false.358 ]
  store i32 %cond361, i32* %tmp311, !tbaa !10
  %238 = bitcast i64* %__s2_len310 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #1
  %239 = bitcast i64* %__s1_len308 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #1
  %240 = load i32, i32* %tmp311, !tbaa !10
  %cmp362 = icmp ne i32 %240, 0
  br label %land.end.364

land.end.364:                                     ; preds = %cond.end.360, %while.cond.303
  %241 = phi i1 [ false, %while.cond.303 ], [ %cmp362, %cond.end.360 ]
  br i1 %241, label %while.body.365, label %while.end.367

while.body.365:                                   ; preds = %land.end.364
  %242 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr366 = getelementptr inbounds i8*, i8** %242, i32 1
  store i8** %incdec.ptr366, i8*** %pvp, align 8, !tbaa !1
  br label %while.cond.303

while.end.367:                                    ; preds = %land.end.364
  %243 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr368 = getelementptr inbounds i8*, i8** %243, i32 1
  store i8** %incdec.ptr368, i8*** %pvp, align 8, !tbaa !1
  %244 = load i8*, i8** %243, align 8, !tbaa !1
  %cmp369 = icmp eq i8* %244, null
  br i1 %cmp369, label %if.then.374, label %lor.lhs.false.371

lor.lhs.false.371:                                ; preds = %while.end.367
  %245 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %246 = load i8*, i8** %245, align 8, !tbaa !1
  %cmp372 = icmp eq i8* %246, null
  br i1 %cmp372, label %if.then.374, label %if.end.375

if.then.374:                                      ; preds = %lor.lhs.false.371, %while.end.367
  br label %while.end.454

if.end.375:                                       ; preds = %lor.lhs.false.371
  %247 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr376 = getelementptr inbounds i8*, i8** %247, i32 1
  store i8** %incdec.ptr376, i8*** %pvp, align 8, !tbaa !1
  %248 = load i8*, i8** %247, align 8, !tbaa !1
  %call377 = call i32 @sm_strcasecmp(i8* %248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0))
  %cmp378 = icmp ne i32 %call377, 0
  br i1 %cmp378, label %if.then.380, label %if.end.381

if.then.380:                                      ; preds = %if.end.375
  br label %while.cond.299

if.end.381:                                       ; preds = %if.end.375
  %249 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %250 = load i8*, i8** %249, align 8, !tbaa !1
  %cmp382 = icmp eq i8* %250, null
  br i1 %cmp382, label %if.then.442, label %lor.lhs.false.384

lor.lhs.false.384:                                ; preds = %if.end.381
  %251 = bitcast i64* %__s1_len386 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %251) #1
  %252 = bitcast i64* %__s2_len388 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %252) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str.22 to i64)), i64 1), label %land.lhs.true.390, label %cond.false.436

land.lhs.true.390:                                ; preds = %lor.lhs.false.384
  store i64 1, i64* %__s2_len388, align 8, !tbaa !13
  %253 = load i64, i64* %__s2_len388, align 8, !tbaa !13
  %cmp391 = icmp ult i64 %253, 4
  br i1 %cmp391, label %cond.true.393, label %cond.false.436

cond.true.393:                                    ; preds = %land.lhs.true.390
  %254 = bitcast i8** %__s1395 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %254) #1
  %255 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %256 = load i8*, i8** %255, align 8, !tbaa !1
  store i8* %256, i8** %__s1395, align 8, !tbaa !1
  %257 = bitcast i32* %__result397 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %257) #1
  %258 = load i8*, i8** %__s1395, align 8, !tbaa !1
  %arrayidx398 = getelementptr inbounds i8, i8* %258, i64 0
  %259 = load i8, i8* %arrayidx398, align 1, !tbaa !12
  %conv399 = zext i8 %259 to i32
  %260 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), align 1, !tbaa !12
  %conv400 = zext i8 %260 to i32
  %sub401 = sub nsw i32 %conv399, %conv400
  store i32 %sub401, i32* %__result397, align 4, !tbaa !10
  %261 = load i64, i64* %__s2_len388, align 8, !tbaa !13
  %cmp402 = icmp ugt i64 %261, 0
  br i1 %cmp402, label %land.lhs.true.404, label %if.end.434

land.lhs.true.404:                                ; preds = %cond.true.393
  %262 = load i32, i32* %__result397, align 4, !tbaa !10
  %cmp405 = icmp eq i32 %262, 0
  br i1 %cmp405, label %if.then.407, label %if.end.434

if.then.407:                                      ; preds = %land.lhs.true.404
  %263 = load i8*, i8** %__s1395, align 8, !tbaa !1
  %arrayidx408 = getelementptr inbounds i8, i8* %263, i64 1
  %264 = load i8, i8* %arrayidx408, align 1, !tbaa !12
  %conv409 = zext i8 %264 to i32
  %265 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i64 1), align 1, !tbaa !12
  %conv410 = zext i8 %265 to i32
  %sub411 = sub nsw i32 %conv409, %conv410
  store i32 %sub411, i32* %__result397, align 4, !tbaa !10
  %266 = load i64, i64* %__s2_len388, align 8, !tbaa !13
  %cmp412 = icmp ugt i64 %266, 1
  br i1 %cmp412, label %land.lhs.true.414, label %if.end.433

land.lhs.true.414:                                ; preds = %if.then.407
  %267 = load i32, i32* %__result397, align 4, !tbaa !10
  %cmp415 = icmp eq i32 %267, 0
  br i1 %cmp415, label %if.then.417, label %if.end.433

if.then.417:                                      ; preds = %land.lhs.true.414
  %268 = load i8*, i8** %__s1395, align 8, !tbaa !1
  %arrayidx418 = getelementptr inbounds i8, i8* %268, i64 2
  %269 = load i8, i8* %arrayidx418, align 1, !tbaa !12
  %conv419 = zext i8 %269 to i32
  %270 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i64 2), align 1, !tbaa !12
  %conv420 = zext i8 %270 to i32
  %sub421 = sub nsw i32 %conv419, %conv420
  store i32 %sub421, i32* %__result397, align 4, !tbaa !10
  %271 = load i64, i64* %__s2_len388, align 8, !tbaa !13
  %cmp422 = icmp ugt i64 %271, 2
  br i1 %cmp422, label %land.lhs.true.424, label %if.end.432

land.lhs.true.424:                                ; preds = %if.then.417
  %272 = load i32, i32* %__result397, align 4, !tbaa !10
  %cmp425 = icmp eq i32 %272, 0
  br i1 %cmp425, label %if.then.427, label %if.end.432

if.then.427:                                      ; preds = %land.lhs.true.424
  %273 = load i8*, i8** %__s1395, align 8, !tbaa !1
  %arrayidx428 = getelementptr inbounds i8, i8* %273, i64 3
  %274 = load i8, i8* %arrayidx428, align 1, !tbaa !12
  %conv429 = zext i8 %274 to i32
  %275 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i64 3), align 1, !tbaa !12
  %conv430 = zext i8 %275 to i32
  %sub431 = sub nsw i32 %conv429, %conv430
  store i32 %sub431, i32* %__result397, align 4, !tbaa !10
  br label %if.end.432

if.end.432:                                       ; preds = %if.then.427, %land.lhs.true.424, %if.then.417
  br label %if.end.433

if.end.433:                                       ; preds = %if.end.432, %land.lhs.true.414, %if.then.407
  br label %if.end.434

if.end.434:                                       ; preds = %if.end.433, %land.lhs.true.404, %cond.true.393
  %276 = load i32, i32* %__result397, align 4, !tbaa !10
  store i32 %276, i32* %tmp435, !tbaa !10
  %277 = bitcast i32* %__result397 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #1
  %278 = bitcast i8** %__s1395 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #1
  %279 = load i32, i32* %tmp435, !tbaa !10
  br label %cond.end.438

cond.false.436:                                   ; preds = %land.lhs.true.390, %lor.lhs.false.384
  %280 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %281 = load i8*, i8** %280, align 8, !tbaa !1
  %call437 = call i32 @strcmp(i8* %281, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)) #1
  br label %cond.end.438

cond.end.438:                                     ; preds = %cond.false.436, %if.end.434
  %cond439 = phi i32 [ %279, %if.end.434 ], [ %call437, %cond.false.436 ]
  store i32 %cond439, i32* %tmp389, !tbaa !10
  %282 = bitcast i64* %__s2_len388 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #1
  %283 = bitcast i64* %__s1_len386 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #1
  %284 = load i32, i32* %tmp389, !tbaa !10
  %cmp440 = icmp ne i32 %284, 0
  br i1 %cmp440, label %if.then.442, label %if.end.443

if.then.442:                                      ; preds = %cond.end.438, %if.end.381
  br label %while.cond.299

if.end.443:                                       ; preds = %cond.end.438
  %285 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %incdec.ptr444 = getelementptr inbounds i8*, i8** %285, i32 1
  store i8** %incdec.ptr444, i8*** %pvp, align 8, !tbaa !1
  %286 = load i8*, i8** %incdec.ptr444, align 8, !tbaa !1
  %cmp445 = icmp ne i8* %286, null
  br i1 %cmp445, label %land.lhs.true.447, label %if.end.453

land.lhs.true.447:                                ; preds = %if.end.443
  %287 = load i8**, i8*** %pvp, align 8, !tbaa !1
  %288 = load i8*, i8** %287, align 8, !tbaa !1
  %call448 = call i32 @sm_strcasecmp(i8* %288, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0))
  %cmp449 = icmp eq i32 %call448, 0
  br i1 %cmp449, label %if.then.451, label %if.end.453

if.then.451:                                      ; preds = %land.lhs.true.447
  %289 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass452 = getelementptr inbounds %struct.envelope, %struct.envelope* %289, i32 0, i32 18
  store i16 3, i16* %e_timeoutclass452, align 2, !tbaa !39
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.451, %land.lhs.true.447, %if.end.443
  br label %while.end.454

while.end.454:                                    ; preds = %if.end.453, %if.then.374, %while.cond.299
  br label %if.end.455

if.end.455:                                       ; preds = %while.end.454, %land.lhs.true.293, %cond.end, %land.lhs.true.239, %land.lhs.true.235, %land.lhs.true.231, %land.lhs.true.227, %if.then.222
  %290 = bitcast [2048 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %290) #1
  %291 = bitcast i8*** %pvp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #1
  %292 = bitcast i32* %oldsupr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  br label %if.end.456

if.end.456:                                       ; preds = %if.end.455, %if.end.217
  %293 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header457 = getelementptr inbounds %struct.envelope, %struct.envelope* %293, i32 0, i32 0
  %294 = load %struct.header*, %struct.header** %e_header457, align 8, !tbaa !33
  %call458 = call i8* @hvalue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), %struct.header* %294)
  store i8* %call458, i8** %p, align 8, !tbaa !1
  %295 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp459 = icmp ne i8* %295, null
  br i1 %cmp459, label %if.then.461, label %if.else.490

if.then.461:                                      ; preds = %if.end.456
  %296 = load i8*, i8** %p, align 8, !tbaa !1
  %call462 = call i32 @sm_strcasecmp(i8* %296, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0))
  %cmp463 = icmp eq i32 %call462, 0
  br i1 %cmp463, label %if.then.465, label %if.else.467

if.then.465:                                      ; preds = %if.then.461
  %297 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass466 = getelementptr inbounds %struct.envelope, %struct.envelope* %297, i32 0, i32 18
  store i16 1, i16* %e_timeoutclass466, align 2, !tbaa !39
  br label %if.end.489

if.else.467:                                      ; preds = %if.then.461
  %298 = load i8*, i8** %p, align 8, !tbaa !1
  %call468 = call i32 @sm_strcasecmp(i8* %298, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %cmp469 = icmp eq i32 %call468, 0
  br i1 %cmp469, label %if.then.471, label %if.else.473

if.then.471:                                      ; preds = %if.else.467
  %299 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass472 = getelementptr inbounds %struct.envelope, %struct.envelope* %299, i32 0, i32 18
  store i16 0, i16* %e_timeoutclass472, align 2, !tbaa !39
  br label %if.end.488

if.else.473:                                      ; preds = %if.else.467
  %300 = load i8*, i8** %p, align 8, !tbaa !1
  %call474 = call i32 @sm_strcasecmp(i8* %300, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0))
  %cmp475 = icmp eq i32 %call474, 0
  br i1 %cmp475, label %if.then.477, label %if.else.479

if.then.477:                                      ; preds = %if.else.473
  %301 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass478 = getelementptr inbounds %struct.envelope, %struct.envelope* %301, i32 0, i32 18
  store i16 2, i16* %e_timeoutclass478, align 2, !tbaa !39
  br label %if.end.487

if.else.479:                                      ; preds = %if.else.473
  %302 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags480 = getelementptr inbounds %struct.envelope, %struct.envelope* %302, i32 0, i32 11
  %303 = load i64, i64* %e_flags480, align 8, !tbaa !16
  %and481 = and i64 %303, 128
  %cmp482 = icmp ne i64 %and481, 0
  br i1 %cmp482, label %if.then.484, label %if.end.486

if.then.484:                                      ; preds = %if.else.479
  %304 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass485 = getelementptr inbounds %struct.envelope, %struct.envelope* %304, i32 0, i32 18
  store i16 3, i16* %e_timeoutclass485, align 2, !tbaa !39
  br label %if.end.486

if.end.486:                                       ; preds = %if.then.484, %if.else.479
  br label %if.end.487

if.end.487:                                       ; preds = %if.end.486, %if.then.477
  br label %if.end.488

if.end.488:                                       ; preds = %if.end.487, %if.then.471
  br label %if.end.489

if.end.489:                                       ; preds = %if.end.488, %if.then.465
  br label %if.end.498

if.else.490:                                      ; preds = %if.end.456
  %305 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags491 = getelementptr inbounds %struct.envelope, %struct.envelope* %305, i32 0, i32 11
  %306 = load i64, i64* %e_flags491, align 8, !tbaa !16
  %and492 = and i64 %306, 128
  %cmp493 = icmp ne i64 %and492, 0
  br i1 %cmp493, label %if.then.495, label %if.end.497

if.then.495:                                      ; preds = %if.else.490
  %307 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_timeoutclass496 = getelementptr inbounds %struct.envelope, %struct.envelope* %307, i32 0, i32 18
  store i16 3, i16* %e_timeoutclass496, align 2, !tbaa !39
  br label %if.end.497

if.end.497:                                       ; preds = %if.then.495, %if.else.490
  br label %if.end.498

if.end.498:                                       ; preds = %if.end.497, %if.end.489
  %308 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header499 = getelementptr inbounds %struct.envelope, %struct.envelope* %308, i32 0, i32 0
  %309 = load %struct.header*, %struct.header** %e_header499, align 8, !tbaa !33
  %call500 = call i8* @hvalue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), %struct.header* %309)
  store i8* %call500, i8** %p, align 8, !tbaa !1
  %310 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp501 = icmp eq i8* %310, null
  br i1 %cmp501, label %if.then.503, label %if.end.506

if.then.503:                                      ; preds = %if.end.498
  %311 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header504 = getelementptr inbounds %struct.envelope, %struct.envelope* %311, i32 0, i32 0
  %312 = load %struct.header*, %struct.header** %e_header504, align 8, !tbaa !33
  %call505 = call i8* @hvalue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), %struct.header* %312)
  store i8* %call505, i8** %p, align 8, !tbaa !1
  br label %if.end.506

if.end.506:                                       ; preds = %if.then.503, %if.end.498
  %313 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp507 = icmp ne i8* %313, null
  br i1 %cmp507, label %if.then.509, label %if.end.511

if.then.509:                                      ; preds = %if.end.506
  %314 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro510 = getelementptr inbounds %struct.envelope, %struct.envelope* %314, i32 0, i32 46
  %315 = load i8*, i8** %p, align 8, !tbaa !1
  %316 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro510, i32 2, i32 97, i8* %315, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 1039, i32 %316)
  br label %if.end.511

if.end.511:                                       ; preds = %if.then.509, %if.end.506
  %317 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_bodytype = getelementptr inbounds %struct.envelope, %struct.envelope* %317, i32 0, i32 23
  %318 = load i8*, i8** %e_bodytype, align 8, !tbaa !43
  %cmp512 = icmp ne i8* %318, null
  br i1 %cmp512, label %land.lhs.true.514, label %lor.lhs.false.519

land.lhs.true.514:                                ; preds = %if.end.511
  %319 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_bodytype515 = getelementptr inbounds %struct.envelope, %struct.envelope* %319, i32 0, i32 23
  %320 = load i8*, i8** %e_bodytype515, align 8, !tbaa !43
  %call516 = call i32 @sm_strcasecmp(i8* %320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0))
  %cmp517 = icmp eq i32 %call516, 0
  br i1 %cmp517, label %if.then.524, label %lor.lhs.false.519

lor.lhs.false.519:                                ; preds = %land.lhs.true.514, %if.end.511
  %321 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header520 = getelementptr inbounds %struct.envelope, %struct.envelope* %321, i32 0, i32 0
  %322 = load %struct.header*, %struct.header** %e_header520, align 8, !tbaa !33
  %call521 = call i8* @hvalue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), %struct.header* %322)
  %cmp522 = icmp ne i8* %call521, null
  br i1 %cmp522, label %if.then.524, label %if.else.530

if.then.524:                                      ; preds = %lor.lhs.false.519, %land.lhs.true.514
  %323 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags525 = getelementptr inbounds %struct.envelope, %struct.envelope* %323, i32 0, i32 11
  %324 = load i64, i64* %e_flags525, align 8, !tbaa !16
  %or = or i64 %324, 4194304
  store i64 %or, i64* %e_flags525, align 8, !tbaa !16
  %325 = load i32, i32* @HasEightBits, align 4, !tbaa !10
  %tobool526 = icmp ne i32 %325, 0
  br i1 %tobool526, label %if.then.527, label %if.end.529

if.then.527:                                      ; preds = %if.then.524
  %326 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_bodytype528 = getelementptr inbounds %struct.envelope, %struct.envelope* %326, i32 0, i32 23
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8** %e_bodytype528, align 8, !tbaa !43
  br label %if.end.529

if.end.529:                                       ; preds = %if.then.527, %if.then.524
  br label %if.end.594

if.else.530:                                      ; preds = %lor.lhs.false.519
  %327 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header531 = getelementptr inbounds %struct.envelope, %struct.envelope* %327, i32 0, i32 0
  %328 = load %struct.header*, %struct.header** %e_header531, align 8, !tbaa !33
  %call532 = call i8* @hvalue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), %struct.header* %328)
  store i8* %call532, i8** %p, align 8, !tbaa !1
  %cmp533 = icmp ne i8* %call532, null
  br i1 %cmp533, label %if.then.535, label %if.end.593

if.then.535:                                      ; preds = %if.else.530
  call void @llvm.lifetime.start(i64 1, i8* %__a0) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.start(i64 1, i8* %__a2) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.33 to i64)), i64 1), label %cond.true.540, label %cond.false.579

cond.true.540:                                    ; preds = %if.then.535
  %329 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), align 1, !tbaa !12
  store i8 %329, i8* %__a0, align 1, !tbaa !12
  %330 = load i8, i8* %__a0, align 1, !tbaa !12
  %conv541 = sext i8 %330 to i32
  %cmp542 = icmp eq i32 %conv541, 0
  br i1 %cmp542, label %cond.true.544, label %cond.false.545

cond.true.544:                                    ; preds = %cond.true.540
  %331 = load i8*, i8** %p, align 8, !tbaa !1
  br label %cond.end.577

cond.false.545:                                   ; preds = %cond.true.540
  %332 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i64 1), align 1, !tbaa !12
  store i8 %332, i8* %__a1, align 1, !tbaa !12
  %333 = load i8, i8* %__a1, align 1, !tbaa !12
  %conv546 = sext i8 %333 to i32
  %cmp547 = icmp eq i32 %conv546, 0
  br i1 %cmp547, label %cond.true.549, label %cond.false.552

cond.true.549:                                    ; preds = %cond.false.545
  %334 = load i8*, i8** %p, align 8, !tbaa !1
  %335 = load i8, i8* %__a0, align 1, !tbaa !12
  %conv550 = sext i8 %335 to i32
  %call551 = call i8* @strchr(i8* %334, i32 %conv550) #1
  br label %cond.end.575

cond.false.552:                                   ; preds = %cond.false.545
  %336 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i64 2), align 1, !tbaa !12
  store i8 %336, i8* %__a2, align 1, !tbaa !12
  %337 = load i8, i8* %__a2, align 1, !tbaa !12
  %conv553 = sext i8 %337 to i32
  %cmp554 = icmp eq i32 %conv553, 0
  br i1 %cmp554, label %cond.true.556, label %cond.false.560

cond.true.556:                                    ; preds = %cond.false.552
  %338 = load i8*, i8** %p, align 8, !tbaa !1
  %339 = load i8, i8* %__a0, align 1, !tbaa !12
  %conv557 = sext i8 %339 to i32
  %340 = load i8, i8* %__a1, align 1, !tbaa !12
  %conv558 = sext i8 %340 to i32
  %call559 = call i8* @__strpbrk_c2(i8* %338, i32 %conv557, i32 %conv558)
  br label %cond.end.573

cond.false.560:                                   ; preds = %cond.false.552
  %341 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i64 3), align 1, !tbaa !12
  %conv561 = sext i8 %341 to i32
  %cmp562 = icmp eq i32 %conv561, 0
  br i1 %cmp562, label %cond.true.564, label %cond.false.569

cond.true.564:                                    ; preds = %cond.false.560
  %342 = load i8*, i8** %p, align 8, !tbaa !1
  %343 = load i8, i8* %__a0, align 1, !tbaa !12
  %conv565 = sext i8 %343 to i32
  %344 = load i8, i8* %__a1, align 1, !tbaa !12
  %conv566 = sext i8 %344 to i32
  %345 = load i8, i8* %__a2, align 1, !tbaa !12
  %conv567 = sext i8 %345 to i32
  %call568 = call i8* @__strpbrk_c3(i8* %342, i32 %conv565, i32 %conv566, i32 %conv567)
  br label %cond.end.571

cond.false.569:                                   ; preds = %cond.false.560
  %346 = load i8*, i8** %p, align 8, !tbaa !1
  %call570 = call i8* @strpbrk(i8* %346, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0)) #1
  br label %cond.end.571

cond.end.571:                                     ; preds = %cond.false.569, %cond.true.564
  %cond572 = phi i8* [ %call568, %cond.true.564 ], [ %call570, %cond.false.569 ]
  br label %cond.end.573

cond.end.573:                                     ; preds = %cond.end.571, %cond.true.556
  %cond574 = phi i8* [ %call559, %cond.true.556 ], [ %cond572, %cond.end.571 ]
  br label %cond.end.575

cond.end.575:                                     ; preds = %cond.end.573, %cond.true.549
  %cond576 = phi i8* [ %call551, %cond.true.549 ], [ %cond574, %cond.end.573 ]
  br label %cond.end.577

cond.end.577:                                     ; preds = %cond.end.575, %cond.true.544
  %cond578 = phi i8* [ null, %cond.true.544 ], [ %cond576, %cond.end.575 ]
  br label %cond.end.581

cond.false.579:                                   ; preds = %if.then.535
  %347 = load i8*, i8** %p, align 8, !tbaa !1
  %call580 = call i8* @strpbrk(i8* %347, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0)) #1
  br label %cond.end.581

cond.end.581:                                     ; preds = %cond.false.579, %cond.end.577
  %cond582 = phi i8* [ %cond578, %cond.end.577 ], [ %call580, %cond.false.579 ]
  store i8* %cond582, i8** %tmp539, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %__a2) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a1) #1
  call void @llvm.lifetime.end(i64 1, i8* %__a0) #1
  %348 = load i8*, i8** %tmp539, !tbaa !1
  store i8* %348, i8** %p, align 8, !tbaa !1
  %349 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp583 = icmp eq i8* %349, null
  br i1 %cmp583, label %if.then.589, label %lor.lhs.false.585

lor.lhs.false.585:                                ; preds = %cond.end.581
  %350 = load i8*, i8** %p, align 8, !tbaa !1
  %351 = load i8, i8* %350, align 1, !tbaa !12
  %conv586 = sext i8 %351 to i32
  %cmp587 = icmp eq i32 %conv586, 59
  br i1 %cmp587, label %if.then.589, label %if.end.592

if.then.589:                                      ; preds = %lor.lhs.false.585, %cond.end.581
  %352 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags590 = getelementptr inbounds %struct.envelope, %struct.envelope* %352, i32 0, i32 11
  %353 = load i64, i64* %e_flags590, align 8, !tbaa !16
  %or591 = or i64 %353, 8388608
  store i64 %or591, i64* %e_flags590, align 8, !tbaa !16
  br label %if.end.592

if.end.592:                                       ; preds = %if.then.589, %lor.lhs.false.585
  br label %if.end.593

if.end.593:                                       ; preds = %if.end.592, %if.else.530
  br label %if.end.594

if.end.594:                                       ; preds = %if.end.593, %if.end.529
  %354 = load i8, i8* @OpMode, align 1, !tbaa !12
  %conv595 = sext i8 %354 to i32
  %cmp596 = icmp eq i32 %conv595, 97
  br i1 %cmp596, label %if.then.598, label %if.end.641

if.then.598:                                      ; preds = %if.end.594
  %355 = bitcast %struct.hdrinfo** %hi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %355) #1
  store %struct.hdrinfo* getelementptr inbounds ([0 x %struct.hdrinfo], [0 x %struct.hdrinfo]* @HdrInfo, i32 0, i32 0), %struct.hdrinfo** %hi, align 8, !tbaa !1
  br label %for.cond.600

for.cond.600:                                     ; preds = %for.inc.625, %if.then.598
  %356 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_field = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %356, i32 0, i32 0
  %357 = load i8*, i8** %hi_field, align 8, !tbaa !5
  %cmp601 = icmp ne i8* %357, null
  br i1 %cmp601, label %for.body.603, label %for.end.627

for.body.603:                                     ; preds = %for.cond.600
  %358 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %358, i32 0, i32 1
  %359 = load i64, i64* %hi_flags, align 8, !tbaa !8
  %and604 = and i64 %359, 256
  %cmp605 = icmp ne i64 %and604, 0
  br i1 %cmp605, label %land.lhs.true.607, label %if.end.624

land.lhs.true.607:                                ; preds = %for.body.603
  %360 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_flags608 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %360, i32 0, i32 1
  %361 = load i64, i64* %hi_flags608, align 8, !tbaa !8
  %and609 = and i64 %361, 8
  %cmp610 = icmp ne i64 %and609, 0
  br i1 %cmp610, label %lor.lhs.false.612, label %land.lhs.true.617

lor.lhs.false.612:                                ; preds = %land.lhs.true.607
  %362 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags613 = getelementptr inbounds %struct.envelope, %struct.envelope* %362, i32 0, i32 11
  %363 = load i64, i64* %e_flags613, align 8, !tbaa !16
  %and614 = and i64 %363, 256
  %cmp615 = icmp ne i64 %and614, 0
  br i1 %cmp615, label %land.lhs.true.617, label %if.end.624

land.lhs.true.617:                                ; preds = %lor.lhs.false.612, %land.lhs.true.607
  %364 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_field618 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %364, i32 0, i32 0
  %365 = load i8*, i8** %hi_field618, align 8, !tbaa !5
  %366 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header619 = getelementptr inbounds %struct.envelope, %struct.envelope* %366, i32 0, i32 0
  %367 = load %struct.header*, %struct.header** %e_header619, align 8, !tbaa !33
  %call620 = call i8* @hvalue(i8* %365, %struct.header* %367)
  store i8* %call620, i8** %p, align 8, !tbaa !1
  %cmp621 = icmp ne i8* %call620, null
  br i1 %cmp621, label %if.then.623, label %if.end.624

if.then.623:                                      ; preds = %land.lhs.true.617
  br label %for.end.627

if.end.624:                                       ; preds = %land.lhs.true.617, %lor.lhs.false.612, %for.body.603
  br label %for.inc.625

for.inc.625:                                      ; preds = %if.end.624
  %368 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %incdec.ptr626 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %368, i32 1
  store %struct.hdrinfo* %incdec.ptr626, %struct.hdrinfo** %hi, align 8, !tbaa !1
  br label %for.cond.600

for.end.627:                                      ; preds = %if.then.623, %for.cond.600
  %369 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_field628 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %369, i32 0, i32 0
  %370 = load i8*, i8** %hi_field628, align 8, !tbaa !5
  %cmp629 = icmp ne i8* %370, null
  br i1 %cmp629, label %if.then.631, label %if.end.640

if.then.631:                                      ; preds = %for.end.627
  %371 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 32), align 1, !tbaa !12
  %conv632 = zext i8 %371 to i32
  %cmp633 = icmp sge i32 %conv632, 2
  br i1 %cmp633, label %land.lhs.true.635, label %if.end.639

land.lhs.true.635:                                ; preds = %if.then.631
  %372 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool636 = icmp ne i32 %372, 0
  br i1 %tobool636, label %if.end.639, label %if.then.637

if.then.637:                                      ; preds = %land.lhs.true.635
  %373 = load %struct.hdrinfo*, %struct.hdrinfo** %hi, align 8, !tbaa !1
  %hi_field638 = getelementptr inbounds %struct.hdrinfo, %struct.hdrinfo* %373, i32 0, i32 0
  %374 = load i8*, i8** %hi_field638, align 8, !tbaa !5
  %375 = load i8*, i8** %p, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0), i8* %374, i8* %375)
  br label %if.end.639

if.end.639:                                       ; preds = %if.then.637, %land.lhs.true.635, %if.then.631
  %376 = load i8*, i8** %p, align 8, !tbaa !1
  %377 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @setsender(i8* %376, %struct.envelope* %377, i8** null, i32 0, i32 1)
  br label %if.end.640

if.end.640:                                       ; preds = %if.end.639, %for.end.627
  %378 = bitcast %struct.hdrinfo** %hi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %378) #1
  br label %if.end.641

if.end.641:                                       ; preds = %if.end.640, %if.end.594
  %379 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 92), align 1, !tbaa !12
  %conv642 = zext i8 %379 to i32
  %cmp643 = icmp sge i32 %conv642, 2
  br i1 %cmp643, label %land.lhs.true.645, label %if.end.652

land.lhs.true.645:                                ; preds = %if.end.641
  %380 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool646 = icmp ne i32 %380, 0
  br i1 %tobool646, label %if.end.652, label %if.then.647

if.then.647:                                      ; preds = %land.lhs.true.645
  %381 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %381, i32 0, i32 25
  %382 = load i8*, i8** %e_id, align 8, !tbaa !22
  %383 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags648 = getelementptr inbounds %struct.envelope, %struct.envelope* %383, i32 0, i32 11
  %384 = load i64, i64* %e_flags648, align 8, !tbaa !16
  %and649 = and i64 %384, 32768
  %cmp650 = icmp ne i64 %and649, 0
  %conv651 = zext i1 %cmp650 to i32
  %385 = load i32, i32* @LogLevel, align 4, !tbaa !10
  %386 = load i32, i32* %log.addr, align 4, !tbaa !10
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.35, i32 0, i32 0), i8* %382, i32 %conv651, i32 %385, i32 %386)
  br label %if.end.652

if.end.652:                                       ; preds = %if.then.647, %land.lhs.true.645, %if.end.641
  %387 = load i32, i32* %log.addr, align 4, !tbaa !10
  %tobool653 = icmp ne i32 %387, 0
  br i1 %tobool653, label %land.lhs.true.654, label %if.end.666

land.lhs.true.654:                                ; preds = %if.end.652
  %388 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags655 = getelementptr inbounds %struct.envelope, %struct.envelope* %388, i32 0, i32 11
  %389 = load i64, i64* %e_flags655, align 8, !tbaa !16
  %and656 = and i64 %389, 32768
  %cmp657 = icmp ne i64 %and656, 0
  br i1 %cmp657, label %land.lhs.true.659, label %if.end.666

land.lhs.true.659:                                ; preds = %land.lhs.true.654
  %390 = load i32, i32* @LogLevel, align 4, !tbaa !10
  %cmp660 = icmp sgt i32 %390, 4
  br i1 %cmp660, label %if.then.662, label %if.end.666

if.then.662:                                      ; preds = %land.lhs.true.659
  %391 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %392 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgid663 = getelementptr inbounds %struct.envelope, %struct.envelope* %392, i32 0, i32 10
  %393 = load i8*, i8** %e_msgid663, align 8, !tbaa !36
  call void @logsender(%struct.envelope* %391, i8* %393)
  %394 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags664 = getelementptr inbounds %struct.envelope, %struct.envelope* %394, i32 0, i32 11
  %395 = load i64, i64* %e_flags664, align 8, !tbaa !16
  %and665 = and i64 %395, -32769
  store i64 %and665, i64* %e_flags664, align 8, !tbaa !16
  br label %if.end.666

if.end.666:                                       ; preds = %if.then.662, %land.lhs.true.659, %land.lhs.true.654, %if.end.652
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.666, %if.then.174
  %396 = bitcast [2048 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %396) #1
  %397 = bitcast i32* %hopcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %397) #1
  %398 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %398) #1
  %399 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %399) #1
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

declare void @macdefine_tagged(%struct.MACROS_T*, i32, i32, i8*, i8*, i32, i32) #2

declare i32 @rfc822_string(i8*) #2

declare i8* @addquotes(i8*, %struct.SM_RPOOL_T*) #2

declare void @expand(i8*, i8*, i64, %struct.envelope*) #2

; Function Attrs: nounwind uwtable
define i8* @crackaddr(i8* %addr, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i8*, align 8
  %addr.addr = alloca i8*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %p = alloca i8*, align 8
  %c = alloca i8, align 1
  %cmtlev = alloca i32, align 4
  %realcmtlev = alloca i32, align 4
  %anglelev = alloca i32, align 4
  %copylev = alloca i32, align 4
  %bracklev = alloca i32, align 4
  %addangle = alloca i32, align 4
  %qmode = alloca i32, align 4
  %realqmode = alloca i32, align 4
  %putgmac = alloca i32, align 4
  %quoteit = alloca i32, align 4
  %gotangle = alloca i32, align 4
  %gotcolon = alloca i32, align 4
  %bp = alloca i8*, align 8
  %buflim = alloca i8*, align 8
  %bufhead = alloca i8*, align 8
  %addrhead = alloca i8*, align 8
  %bufend = alloca i8*, align 8
  %q = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %q456 = alloca i8*, align 8
  store i8* %addr, i8** %addr.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %1 = bitcast i32* %cmtlev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %realcmtlev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %anglelev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %copylev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %bracklev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %addangle to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %qmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %realqmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %putgmac to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %putgmac, align 4, !tbaa !10
  %10 = bitcast i32* %quoteit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %quoteit, align 4, !tbaa !10
  %11 = bitcast i32* %gotangle to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %gotangle, align 4, !tbaa !10
  %12 = bitcast i32* %gotcolon to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %gotcolon, align 4, !tbaa !10
  %13 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i8** %buflim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i8** %bufhead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i8** %addrhead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i8** %bufend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 33), align 1, !tbaa !12
  %conv = zext i8 %18 to i32
  %cmp = icmp sge i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %19 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %20 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i8* getelementptr inbounds ([257 x i8], [257 x i8]* @crackaddr.buf, i32 0, i64 256), i8** %bufend, align 8, !tbaa !1
  store i8* getelementptr inbounds ([257 x i8], [257 x i8]* @crackaddr.buf, i32 0, i64 256), i8** %buflim, align 8, !tbaa !1
  store i8* getelementptr inbounds ([257 x i8], [257 x i8]* @crackaddr.buf, i32 0, i32 0), i8** %bufhead, align 8, !tbaa !1
  store i8* getelementptr inbounds ([257 x i8], [257 x i8]* @crackaddr.buf, i32 0, i32 0), i8** %bp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end
  %21 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !12
  %conv2 = sext i8 %22 to i32
  %cmp3 = icmp ne i32 %conv2, 0
  br i1 %cmp3, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %while.cond
  %23 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !12
  %conv6 = sext i8 %24 to i32
  %and = and i32 %conv6, -128
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %25 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !12
  %conv9 = sext i8 %26 to i32
  %idxprom = sext i32 %conv9 to i64
  %call = call i16** @__ctype_b_loc() #10
  %27 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %27, i64 %idxprom
  %28 = load i16, i16* %arrayidx, align 2, !tbaa !14
  %conv10 = zext i16 %28 to i32
  %and11 = and i32 %conv10, 8192
  %tobool12 = icmp ne i32 %and11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.5, %while.cond
  %29 = phi i1 [ false, %land.lhs.true.5 ], [ false, %while.cond ], [ %tobool12, %land.rhs ]
  br i1 %29, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body

do.body:                                          ; preds = %while.body
  %30 = load i8*, i8** %bp, align 8, !tbaa !1
  %31 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp13 = icmp ult i8* %30, %31
  br i1 %cmp13, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %do.body
  %32 = load i8*, i8** %buflim, align 8, !tbaa !1
  %33 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp16 = icmp ule i8* %32, %33
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %land.lhs.true.15
  %34 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %35 = load i8, i8* %34, align 1, !tbaa !12
  %36 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  store i8 %35, i8* %36, align 1, !tbaa !12
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true.15, %do.body
  br label %returng

if.end.19:                                        ; preds = %if.then.18
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  br label %do.end

do.end:                                           ; preds = %do.cond
  %37 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr20, i8** %addr.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %38 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8* %38, i8** %bufhead, align 8, !tbaa !1
  %39 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  store i8* %39, i8** %addrhead, align 8, !tbaa !1
  store i8* %39, i8** %p, align 8, !tbaa !1
  store i32 0, i32* %realcmtlev, align 4, !tbaa !10
  store i32 0, i32* %cmtlev, align 4, !tbaa !10
  store i32 0, i32* %anglelev, align 4, !tbaa !10
  store i32 0, i32* %copylev, align 4, !tbaa !10
  store i32 0, i32* %bracklev, align 4, !tbaa !10
  store i32 0, i32* %addangle, align 4, !tbaa !10
  store i32 0, i32* %realqmode, align 4, !tbaa !10
  store i32 0, i32* %qmode, align 4, !tbaa !10
  br label %while.cond.21

while.cond.21:                                    ; preds = %if.end.717, %if.end.665, %if.end.646, %cleanup.610, %cleanup, %if.end.172, %if.end.103, %while.end
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr22, i8** %p, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !12
  store i8 %41, i8* %c, align 1, !tbaa !12
  %conv23 = sext i8 %41 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %while.body.26, label %while.end.718

while.body.26:                                    ; preds = %while.cond.21
  %42 = load i32, i32* %copylev, align 4, !tbaa !10
  %cmp27 = icmp sgt i32 %42, 0
  br i1 %cmp27, label %if.then.29, label %if.end.42

if.then.29:                                       ; preds = %while.body.26
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  %43 = load i8*, i8** %bp, align 8, !tbaa !1
  %44 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp31 = icmp ult i8* %43, %44
  br i1 %cmp31, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %do.body.30
  %45 = load i8*, i8** %buflim, align 8, !tbaa !1
  %46 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp34 = icmp ule i8* %45, %46
  br i1 %cmp34, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %land.lhs.true.33
  %47 = load i8, i8* %c, align 1, !tbaa !12
  %48 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr37, i8** %bp, align 8, !tbaa !1
  store i8 %47, i8* %48, align 1, !tbaa !12
  br label %if.end.39

if.else.38:                                       ; preds = %land.lhs.true.33, %do.body.30
  br label %returng

if.end.39:                                        ; preds = %if.then.36
  br label %do.cond.40

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %while.body.26
  %49 = load i8, i8* %c, align 1, !tbaa !12
  %conv43 = sext i8 %49 to i32
  %cmp44 = icmp eq i32 %conv43, 92
  br i1 %cmp44, label %if.then.46, label %if.end.76

if.then.46:                                       ; preds = %if.end.42
  %50 = load i32, i32* %cmtlev, align 4, !tbaa !10
  %cmp47 = icmp sle i32 %50, 0
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.52

land.lhs.true.49:                                 ; preds = %if.then.46
  %51 = load i32, i32* %qmode, align 4, !tbaa !10
  %tobool50 = icmp ne i32 %51, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true.49
  store i32 1, i32* %quoteit, align 4, !tbaa !10
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.49, %if.then.46
  %52 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr53, i8** %p, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !12
  store i8 %53, i8* %c, align 1, !tbaa !12
  %conv54 = sext i8 %53 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.52
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr58 = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %incdec.ptr58, i8** %p, align 8, !tbaa !1
  br label %putg

if.end.59:                                        ; preds = %if.end.52
  %55 = load i32, i32* %copylev, align 4, !tbaa !10
  %cmp60 = icmp sgt i32 %55, 0
  br i1 %cmp60, label %if.then.62, label %if.end.75

if.then.62:                                       ; preds = %if.end.59
  br label %do.body.63

do.body.63:                                       ; preds = %if.then.62
  %56 = load i8*, i8** %bp, align 8, !tbaa !1
  %57 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp64 = icmp ult i8* %56, %57
  br i1 %cmp64, label %land.lhs.true.66, label %if.else.71

land.lhs.true.66:                                 ; preds = %do.body.63
  %58 = load i8*, i8** %buflim, align 8, !tbaa !1
  %59 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp67 = icmp ule i8* %58, %59
  br i1 %cmp67, label %if.then.69, label %if.else.71

if.then.69:                                       ; preds = %land.lhs.true.66
  %60 = load i8, i8* %c, align 1, !tbaa !12
  %61 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr70, i8** %bp, align 8, !tbaa !1
  store i8 %60, i8* %61, align 1, !tbaa !12
  br label %if.end.72

if.else.71:                                       ; preds = %land.lhs.true.66, %do.body.63
  br label %returng

if.end.72:                                        ; preds = %if.then.69
  br label %do.cond.73

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74

do.end.74:                                        ; preds = %do.cond.73
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.74, %if.end.59
  br label %putg

if.end.76:                                        ; preds = %if.end.42
  %62 = load i8, i8* %c, align 1, !tbaa !12
  %conv77 = sext i8 %62 to i32
  %cmp78 = icmp eq i32 %conv77, 34
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.104

land.lhs.true.80:                                 ; preds = %if.end.76
  %63 = load i32, i32* %cmtlev, align 4, !tbaa !10
  %cmp81 = icmp sle i32 %63, 0
  br i1 %cmp81, label %if.then.83, label %if.end.104

if.then.83:                                       ; preds = %land.lhs.true.80
  %64 = load i32, i32* %qmode, align 4, !tbaa !10
  %tobool84 = icmp ne i32 %64, 0
  %lnot = xor i1 %tobool84, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %qmode, align 4, !tbaa !10
  %65 = load i32, i32* %copylev, align 4, !tbaa !10
  %cmp85 = icmp sgt i32 %65, 0
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.103

land.lhs.true.87:                                 ; preds = %if.then.83
  %66 = load i8*, i8** %bp, align 8, !tbaa !1
  %67 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp88 = icmp ult i8* %66, %67
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.103

land.lhs.true.90:                                 ; preds = %land.lhs.true.87
  %68 = load i8*, i8** %buflim, align 8, !tbaa !1
  %69 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp91 = icmp ule i8* %68, %69
  br i1 %cmp91, label %if.then.93, label %if.end.103

if.then.93:                                       ; preds = %land.lhs.true.90
  %70 = load i32, i32* %realqmode, align 4, !tbaa !10
  %tobool94 = icmp ne i32 %70, 0
  br i1 %tobool94, label %if.then.95, label %if.else.97

if.then.95:                                       ; preds = %if.then.93
  %71 = load i8*, i8** %buflim, align 8, !tbaa !1
  %incdec.ptr96 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %incdec.ptr96, i8** %buflim, align 8, !tbaa !1
  br label %if.end.99

if.else.97:                                       ; preds = %if.then.93
  %72 = load i8*, i8** %buflim, align 8, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr98, i8** %buflim, align 8, !tbaa !1
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.then.95
  %73 = load i32, i32* %realqmode, align 4, !tbaa !10
  %tobool100 = icmp ne i32 %73, 0
  %lnot101 = xor i1 %tobool100, true
  %lnot.ext102 = zext i1 %lnot101 to i32
  store i32 %lnot.ext102, i32* %realqmode, align 4, !tbaa !10
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.99, %land.lhs.true.90, %land.lhs.true.87, %if.then.83
  br label %while.cond.21

if.end.104:                                       ; preds = %land.lhs.true.80, %if.end.76
  %74 = load i32, i32* %qmode, align 4, !tbaa !10
  %tobool105 = icmp ne i32 %74, 0
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.104
  br label %putg

if.end.107:                                       ; preds = %if.end.104
  %75 = load i8, i8* %c, align 1, !tbaa !12
  %conv108 = sext i8 %75 to i32
  %cmp109 = icmp eq i32 %conv108, 40
  br i1 %cmp109, label %if.then.111, label %if.end.154

if.then.111:                                      ; preds = %if.end.107
  %76 = load i32, i32* %cmtlev, align 4, !tbaa !10
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %cmtlev, align 4, !tbaa !10
  %77 = load i8*, i8** %bp, align 8, !tbaa !1
  %78 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp112 = icmp ult i8* %77, %78
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.153

land.lhs.true.114:                                ; preds = %if.then.111
  %79 = load i8*, i8** %buflim, align 8, !tbaa !1
  %80 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp115 = icmp ule i8* %79, %80
  br i1 %cmp115, label %if.then.117, label %if.end.153

if.then.117:                                      ; preds = %land.lhs.true.114
  %81 = load i8*, i8** %buflim, align 8, !tbaa !1
  %incdec.ptr118 = getelementptr inbounds i8, i8* %81, i32 -1
  store i8* %incdec.ptr118, i8** %buflim, align 8, !tbaa !1
  %82 = load i32, i32* %realcmtlev, align 4, !tbaa !10
  %inc119 = add nsw i32 %82, 1
  store i32 %inc119, i32* %realcmtlev, align 4, !tbaa !10
  %83 = load i32, i32* %copylev, align 4, !tbaa !10
  %inc120 = add nsw i32 %83, 1
  store i32 %inc120, i32* %copylev, align 4, !tbaa !10
  %cmp121 = icmp sle i32 %83, 0
  br i1 %cmp121, label %if.then.123, label %if.end.152

if.then.123:                                      ; preds = %if.then.117
  %84 = load i8*, i8** %bp, align 8, !tbaa !1
  %85 = load i8*, i8** %bufhead, align 8, !tbaa !1
  %cmp124 = icmp ne i8* %84, %85
  br i1 %cmp124, label %if.then.126, label %if.end.139

if.then.126:                                      ; preds = %if.then.123
  br label %do.body.127

do.body.127:                                      ; preds = %if.then.126
  %86 = load i8*, i8** %bp, align 8, !tbaa !1
  %87 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp128 = icmp ult i8* %86, %87
  br i1 %cmp128, label %land.lhs.true.130, label %if.else.135

land.lhs.true.130:                                ; preds = %do.body.127
  %88 = load i8*, i8** %buflim, align 8, !tbaa !1
  %89 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp131 = icmp ule i8* %88, %89
  br i1 %cmp131, label %if.then.133, label %if.else.135

if.then.133:                                      ; preds = %land.lhs.true.130
  %90 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr134 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr134, i8** %bp, align 8, !tbaa !1
  store i8 32, i8* %90, align 1, !tbaa !12
  br label %if.end.136

if.else.135:                                      ; preds = %land.lhs.true.130, %do.body.127
  br label %returng

if.end.136:                                       ; preds = %if.then.133
  br label %do.cond.137

do.cond.137:                                      ; preds = %if.end.136
  br label %do.end.138

do.end.138:                                       ; preds = %do.cond.137
  br label %if.end.139

if.end.139:                                       ; preds = %do.end.138, %if.then.123
  br label %do.body.140

do.body.140:                                      ; preds = %if.end.139
  %91 = load i8*, i8** %bp, align 8, !tbaa !1
  %92 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp141 = icmp ult i8* %91, %92
  br i1 %cmp141, label %land.lhs.true.143, label %if.else.148

land.lhs.true.143:                                ; preds = %do.body.140
  %93 = load i8*, i8** %buflim, align 8, !tbaa !1
  %94 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp144 = icmp ule i8* %93, %94
  br i1 %cmp144, label %if.then.146, label %if.else.148

if.then.146:                                      ; preds = %land.lhs.true.143
  %95 = load i8, i8* %c, align 1, !tbaa !12
  %96 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr147 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr147, i8** %bp, align 8, !tbaa !1
  store i8 %95, i8* %96, align 1, !tbaa !12
  br label %if.end.149

if.else.148:                                      ; preds = %land.lhs.true.143, %do.body.140
  br label %returng

if.end.149:                                       ; preds = %if.then.146
  br label %do.cond.150

do.cond.150:                                      ; preds = %if.end.149
  br label %do.end.151

do.end.151:                                       ; preds = %do.cond.150
  br label %if.end.152

if.end.152:                                       ; preds = %do.end.151, %if.then.117
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %land.lhs.true.114, %if.then.111
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.107
  %97 = load i32, i32* %cmtlev, align 4, !tbaa !10
  %cmp155 = icmp sgt i32 %97, 0
  br i1 %cmp155, label %if.then.157, label %if.else.173

if.then.157:                                      ; preds = %if.end.154
  %98 = load i8, i8* %c, align 1, !tbaa !12
  %conv158 = sext i8 %98 to i32
  %cmp159 = icmp eq i32 %conv158, 41
  br i1 %cmp159, label %if.then.161, label %if.end.172

if.then.161:                                      ; preds = %if.then.157
  %99 = load i32, i32* %cmtlev, align 4, !tbaa !10
  %dec = add nsw i32 %99, -1
  store i32 %dec, i32* %cmtlev, align 4, !tbaa !10
  %100 = load i32, i32* %copylev, align 4, !tbaa !10
  %dec162 = add nsw i32 %100, -1
  store i32 %dec162, i32* %copylev, align 4, !tbaa !10
  %101 = load i8*, i8** %bp, align 8, !tbaa !1
  %102 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp163 = icmp ult i8* %101, %102
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.171

land.lhs.true.165:                                ; preds = %if.then.161
  %103 = load i8*, i8** %buflim, align 8, !tbaa !1
  %104 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp166 = icmp ule i8* %103, %104
  br i1 %cmp166, label %if.then.168, label %if.end.171

if.then.168:                                      ; preds = %land.lhs.true.165
  %105 = load i32, i32* %realcmtlev, align 4, !tbaa !10
  %dec169 = add nsw i32 %105, -1
  store i32 %dec169, i32* %realcmtlev, align 4, !tbaa !10
  %106 = load i8*, i8** %buflim, align 8, !tbaa !1
  %incdec.ptr170 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr170, i8** %buflim, align 8, !tbaa !1
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.168, %land.lhs.true.165, %if.then.161
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.then.157
  br label %while.cond.21

if.else.173:                                      ; preds = %if.end.154
  %107 = load i8, i8* %c, align 1, !tbaa !12
  %conv174 = sext i8 %107 to i32
  %cmp175 = icmp eq i32 %conv174, 41
  br i1 %cmp175, label %if.then.177, label %if.end.192

if.then.177:                                      ; preds = %if.else.173
  %108 = load i32, i32* %copylev, align 4, !tbaa !10
  %cmp178 = icmp sgt i32 %108, 0
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.191

land.lhs.true.180:                                ; preds = %if.then.177
  %109 = load i8*, i8** %bp, align 8, !tbaa !1
  %110 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp181 = icmp ult i8* %109, %110
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.191

land.lhs.true.183:                                ; preds = %land.lhs.true.180
  %111 = load i8*, i8** %buflim, align 8, !tbaa !1
  %112 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp184 = icmp ule i8* %111, %112
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.191

land.lhs.true.186:                                ; preds = %land.lhs.true.183
  %113 = load i8*, i8** %bp, align 8, !tbaa !1
  %114 = load i8*, i8** %bufhead, align 8, !tbaa !1
  %cmp187 = icmp ugt i8* %113, %114
  br i1 %cmp187, label %if.then.189, label %if.end.191

if.then.189:                                      ; preds = %land.lhs.true.186
  %115 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr190 = getelementptr inbounds i8, i8* %115, i32 -1
  store i8* %incdec.ptr190, i8** %bp, align 8, !tbaa !1
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.189, %land.lhs.true.186, %land.lhs.true.183, %land.lhs.true.180, %if.then.177
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.else.173
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192
  %116 = load i8, i8* %c, align 1, !tbaa !12
  %conv194 = sext i8 %116 to i32
  %cmp195 = icmp eq i32 %conv194, 91
  br i1 %cmp195, label %if.then.197, label %if.else.199

if.then.197:                                      ; preds = %if.end.193
  %117 = load i32, i32* %bracklev, align 4, !tbaa !10
  %inc198 = add nsw i32 %117, 1
  store i32 %inc198, i32* %bracklev, align 4, !tbaa !10
  br label %if.end.206

if.else.199:                                      ; preds = %if.end.193
  %118 = load i8, i8* %c, align 1, !tbaa !12
  %conv200 = sext i8 %118 to i32
  %cmp201 = icmp eq i32 %conv200, 93
  br i1 %cmp201, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %if.else.199
  %119 = load i32, i32* %bracklev, align 4, !tbaa !10
  %dec204 = add nsw i32 %119, -1
  store i32 %dec204, i32* %bracklev, align 4, !tbaa !10
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %if.else.199
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.197
  %120 = load i8, i8* %c, align 1, !tbaa !12
  %conv207 = sext i8 %120 to i32
  %cmp208 = icmp eq i32 %conv207, 58
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.417

land.lhs.true.210:                                ; preds = %if.end.206
  %121 = load i32, i32* %anglelev, align 4, !tbaa !10
  %cmp211 = icmp sle i32 %121, 0
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.417

land.lhs.true.213:                                ; preds = %land.lhs.true.210
  %122 = load i32, i32* %bracklev, align 4, !tbaa !10
  %cmp214 = icmp sle i32 %122, 0
  br i1 %cmp214, label %land.lhs.true.216, label %if.end.417

land.lhs.true.216:                                ; preds = %land.lhs.true.213
  %123 = load i32, i32* %gotcolon, align 4, !tbaa !10
  %tobool217 = icmp ne i32 %123, 0
  br i1 %tobool217, label %if.end.417, label %land.lhs.true.218

land.lhs.true.218:                                ; preds = %land.lhs.true.216
  %124 = load i32, i32* @ColonOkInAddr, align 4, !tbaa !10
  %tobool219 = icmp ne i32 %124, 0
  br i1 %tobool219, label %if.end.417, label %if.then.220

if.then.220:                                      ; preds = %land.lhs.true.218
  %125 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %125) #1
  %126 = load i8*, i8** %p, align 8, !tbaa !1
  %127 = load i8, i8* %126, align 1, !tbaa !12
  %conv221 = sext i8 %127 to i32
  %cmp222 = icmp eq i32 %conv221, 58
  br i1 %cmp222, label %if.then.227, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.220
  %128 = load i8*, i8** %p, align 8, !tbaa !1
  %129 = load i8, i8* %128, align 1, !tbaa !12
  %conv224 = sext i8 %129 to i32
  %cmp225 = icmp eq i32 %conv224, 46
  br i1 %cmp225, label %if.then.227, label %if.end.263

if.then.227:                                      ; preds = %lor.lhs.false, %if.then.220
  %130 = load i32, i32* %cmtlev, align 4, !tbaa !10
  %cmp228 = icmp sle i32 %130, 0
  br i1 %cmp228, label %land.lhs.true.230, label %if.end.233

land.lhs.true.230:                                ; preds = %if.then.227
  %131 = load i32, i32* %qmode, align 4, !tbaa !10
  %tobool231 = icmp ne i32 %131, 0
  br i1 %tobool231, label %if.end.233, label %if.then.232

if.then.232:                                      ; preds = %land.lhs.true.230
  store i32 1, i32* %quoteit, align 4, !tbaa !10
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.232, %land.lhs.true.230, %if.then.227
  %132 = load i32, i32* %copylev, align 4, !tbaa !10
  %cmp234 = icmp sgt i32 %132, 0
  br i1 %cmp234, label %if.then.236, label %if.end.261

if.then.236:                                      ; preds = %if.end.233
  br label %do.body.237

do.body.237:                                      ; preds = %if.then.236
  %133 = load i8*, i8** %bp, align 8, !tbaa !1
  %134 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp238 = icmp ult i8* %133, %134
  br i1 %cmp238, label %land.lhs.true.240, label %if.else.245

land.lhs.true.240:                                ; preds = %do.body.237
  %135 = load i8*, i8** %buflim, align 8, !tbaa !1
  %136 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp241 = icmp ule i8* %135, %136
  br i1 %cmp241, label %if.then.243, label %if.else.245

if.then.243:                                      ; preds = %land.lhs.true.240
  %137 = load i8, i8* %c, align 1, !tbaa !12
  %138 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr244 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr244, i8** %bp, align 8, !tbaa !1
  store i8 %137, i8* %138, align 1, !tbaa !12
  br label %if.end.246

if.else.245:                                      ; preds = %land.lhs.true.240, %do.body.237
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.246:                                       ; preds = %if.then.243
  br label %do.cond.247

do.cond.247:                                      ; preds = %if.end.246
  br label %do.end.248

do.end.248:                                       ; preds = %do.cond.247
  br label %do.body.249

do.body.249:                                      ; preds = %do.end.248
  %139 = load i8*, i8** %bp, align 8, !tbaa !1
  %140 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp250 = icmp ult i8* %139, %140
  br i1 %cmp250, label %land.lhs.true.252, label %if.else.257

land.lhs.true.252:                                ; preds = %do.body.249
  %141 = load i8*, i8** %buflim, align 8, !tbaa !1
  %142 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp253 = icmp ule i8* %141, %142
  br i1 %cmp253, label %if.then.255, label %if.else.257

if.then.255:                                      ; preds = %land.lhs.true.252
  %143 = load i8*, i8** %p, align 8, !tbaa !1
  %144 = load i8, i8* %143, align 1, !tbaa !12
  %145 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr256 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr256, i8** %bp, align 8, !tbaa !1
  store i8 %144, i8* %145, align 1, !tbaa !12
  br label %if.end.258

if.else.257:                                      ; preds = %land.lhs.true.252, %do.body.249
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.258:                                       ; preds = %if.then.255
  br label %do.cond.259

do.cond.259:                                      ; preds = %if.end.258
  br label %do.end.260

do.end.260:                                       ; preds = %do.cond.259
  br label %if.end.261

if.end.261:                                       ; preds = %do.end.260, %if.end.233
  %146 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr262 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %incdec.ptr262, i8** %p, align 8, !tbaa !1
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup

if.end.263:                                       ; preds = %lor.lhs.false
  store i32 1, i32* %gotcolon, align 4, !tbaa !10
  %147 = load i8*, i8** %bufhead, align 8, !tbaa !1
  store i8* %147, i8** %bp, align 8, !tbaa !1
  %148 = load i32, i32* %quoteit, align 4, !tbaa !10
  %tobool264 = icmp ne i32 %148, 0
  br i1 %tobool264, label %if.then.265, label %if.end.300

if.then.265:                                      ; preds = %if.end.263
  br label %do.body.266

do.body.266:                                      ; preds = %if.then.265
  %149 = load i8*, i8** %bp, align 8, !tbaa !1
  %150 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp267 = icmp ult i8* %149, %150
  br i1 %cmp267, label %land.lhs.true.269, label %if.else.274

land.lhs.true.269:                                ; preds = %do.body.266
  %151 = load i8*, i8** %buflim, align 8, !tbaa !1
  %152 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp270 = icmp ule i8* %151, %152
  br i1 %cmp270, label %if.then.272, label %if.else.274

if.then.272:                                      ; preds = %land.lhs.true.269
  %153 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr273 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %incdec.ptr273, i8** %bp, align 8, !tbaa !1
  store i8 34, i8* %153, align 1, !tbaa !12
  br label %if.end.275

if.else.274:                                      ; preds = %land.lhs.true.269, %do.body.266
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.275:                                       ; preds = %if.then.272
  br label %do.cond.276

do.cond.276:                                      ; preds = %if.end.275
  br label %do.end.277

do.end.277:                                       ; preds = %do.cond.276
  %154 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr278 = getelementptr inbounds i8, i8* %154, i32 -1
  store i8* %incdec.ptr278, i8** %p, align 8, !tbaa !1
  br label %while.cond.279

while.cond.279:                                   ; preds = %while.body.297, %do.end.277
  %155 = load i8*, i8** %p, align 8, !tbaa !1
  %156 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %cmp280 = icmp ugt i8* %155, %156
  br i1 %cmp280, label %land.lhs.true.282, label %land.end.296

land.lhs.true.282:                                ; preds = %while.cond.279
  %157 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr283 = getelementptr inbounds i8, i8* %157, i32 -1
  store i8* %incdec.ptr283, i8** %p, align 8, !tbaa !1
  %158 = load i8, i8* %incdec.ptr283, align 1, !tbaa !12
  %conv284 = sext i8 %158 to i32
  %and285 = and i32 %conv284, -128
  %cmp286 = icmp eq i32 %and285, 0
  br i1 %cmp286, label %land.rhs.288, label %land.end.296

land.rhs.288:                                     ; preds = %land.lhs.true.282
  %159 = load i8*, i8** %p, align 8, !tbaa !1
  %160 = load i8, i8* %159, align 1, !tbaa !12
  %conv289 = sext i8 %160 to i32
  %idxprom290 = sext i32 %conv289 to i64
  %call291 = call i16** @__ctype_b_loc() #10
  %161 = load i16*, i16** %call291, align 8, !tbaa !1
  %arrayidx292 = getelementptr inbounds i16, i16* %161, i64 %idxprom290
  %162 = load i16, i16* %arrayidx292, align 2, !tbaa !14
  %conv293 = zext i16 %162 to i32
  %and294 = and i32 %conv293, 8192
  %tobool295 = icmp ne i32 %and294, 0
  br label %land.end.296

land.end.296:                                     ; preds = %land.rhs.288, %land.lhs.true.282, %while.cond.279
  %163 = phi i1 [ false, %land.lhs.true.282 ], [ false, %while.cond.279 ], [ %tobool295, %land.rhs.288 ]
  br i1 %163, label %while.body.297, label %while.end.298

while.body.297:                                   ; preds = %land.end.296
  br label %while.cond.279

while.end.298:                                    ; preds = %land.end.296
  %164 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr299 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %incdec.ptr299, i8** %p, align 8, !tbaa !1
  br label %if.end.300

if.end.300:                                       ; preds = %while.end.298, %if.end.263
  %165 = load i8*, i8** %addrhead, align 8, !tbaa !1
  store i8* %165, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %do.end.334, %if.end.300
  %166 = load i8*, i8** %q, align 8, !tbaa !1
  %167 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp301 = icmp ult i8* %166, %167
  br i1 %cmp301, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %168 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr303 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %incdec.ptr303, i8** %q, align 8, !tbaa !1
  %169 = load i8, i8* %168, align 1, !tbaa !12
  store i8 %169, i8* %c, align 1, !tbaa !12
  %170 = load i32, i32* %quoteit, align 4, !tbaa !10
  %tobool304 = icmp ne i32 %170, 0
  br i1 %tobool304, label %land.lhs.true.305, label %if.end.322

land.lhs.true.305:                                ; preds = %for.body
  %171 = load i8, i8* %c, align 1, !tbaa !12
  %conv306 = sext i8 %171 to i32
  %cmp307 = icmp eq i32 %conv306, 34
  br i1 %cmp307, label %if.then.309, label %if.end.322

if.then.309:                                      ; preds = %land.lhs.true.305
  br label %do.body.310

do.body.310:                                      ; preds = %if.then.309
  %172 = load i8*, i8** %bp, align 8, !tbaa !1
  %173 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp311 = icmp ult i8* %172, %173
  br i1 %cmp311, label %land.lhs.true.313, label %if.else.318

land.lhs.true.313:                                ; preds = %do.body.310
  %174 = load i8*, i8** %buflim, align 8, !tbaa !1
  %175 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp314 = icmp ule i8* %174, %175
  br i1 %cmp314, label %if.then.316, label %if.else.318

if.then.316:                                      ; preds = %land.lhs.true.313
  %176 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr317 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %incdec.ptr317, i8** %bp, align 8, !tbaa !1
  store i8 92, i8* %176, align 1, !tbaa !12
  br label %if.end.319

if.else.318:                                      ; preds = %land.lhs.true.313, %do.body.310
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.319:                                       ; preds = %if.then.316
  br label %do.cond.320

do.cond.320:                                      ; preds = %if.end.319
  br label %do.end.321

do.end.321:                                       ; preds = %do.cond.320
  br label %if.end.322

if.end.322:                                       ; preds = %do.end.321, %land.lhs.true.305, %for.body
  br label %do.body.323

do.body.323:                                      ; preds = %if.end.322
  %177 = load i8*, i8** %bp, align 8, !tbaa !1
  %178 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp324 = icmp ult i8* %177, %178
  br i1 %cmp324, label %land.lhs.true.326, label %if.else.331

land.lhs.true.326:                                ; preds = %do.body.323
  %179 = load i8*, i8** %buflim, align 8, !tbaa !1
  %180 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp327 = icmp ule i8* %179, %180
  br i1 %cmp327, label %if.then.329, label %if.else.331

if.then.329:                                      ; preds = %land.lhs.true.326
  %181 = load i8, i8* %c, align 1, !tbaa !12
  %182 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr330 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %incdec.ptr330, i8** %bp, align 8, !tbaa !1
  store i8 %181, i8* %182, align 1, !tbaa !12
  br label %if.end.332

if.else.331:                                      ; preds = %land.lhs.true.326, %do.body.323
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.332:                                       ; preds = %if.then.329
  br label %do.cond.333

do.cond.333:                                      ; preds = %if.end.332
  br label %do.end.334

do.end.334:                                       ; preds = %do.cond.333
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %183 = load i32, i32* %quoteit, align 4, !tbaa !10
  %tobool335 = icmp ne i32 %183, 0
  br i1 %tobool335, label %if.then.336, label %if.end.387

if.then.336:                                      ; preds = %for.end
  %184 = load i8*, i8** %bp, align 8, !tbaa !1
  %185 = load i8*, i8** %bufhead, align 8, !tbaa !1
  %arrayidx337 = getelementptr inbounds i8, i8* %185, i64 1
  %cmp338 = icmp eq i8* %184, %arrayidx337
  br i1 %cmp338, label %if.then.340, label %if.else.342

if.then.340:                                      ; preds = %if.then.336
  %186 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr341 = getelementptr inbounds i8, i8* %186, i32 -1
  store i8* %incdec.ptr341, i8** %bp, align 8, !tbaa !1
  br label %if.end.355

if.else.342:                                      ; preds = %if.then.336
  br label %do.body.343

do.body.343:                                      ; preds = %if.else.342
  %187 = load i8*, i8** %bp, align 8, !tbaa !1
  %188 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp344 = icmp ult i8* %187, %188
  br i1 %cmp344, label %land.lhs.true.346, label %if.else.351

land.lhs.true.346:                                ; preds = %do.body.343
  %189 = load i8*, i8** %buflim, align 8, !tbaa !1
  %190 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp347 = icmp ule i8* %189, %190
  br i1 %cmp347, label %if.then.349, label %if.else.351

if.then.349:                                      ; preds = %land.lhs.true.346
  %191 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr350 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %incdec.ptr350, i8** %bp, align 8, !tbaa !1
  store i8 34, i8* %191, align 1, !tbaa !12
  br label %if.end.352

if.else.351:                                      ; preds = %land.lhs.true.346, %do.body.343
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.352:                                       ; preds = %if.then.349
  br label %do.cond.353

do.cond.353:                                      ; preds = %if.end.352
  br label %do.end.354

do.end.354:                                       ; preds = %do.cond.353
  br label %if.end.355

if.end.355:                                       ; preds = %do.end.354, %if.then.340
  br label %while.cond.356

while.cond.356:                                   ; preds = %do.end.373, %if.end.355
  %192 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr357 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %incdec.ptr357, i8** %p, align 8, !tbaa !1
  %193 = load i8, i8* %192, align 1, !tbaa !12
  store i8 %193, i8* %c, align 1, !tbaa !12
  %conv358 = sext i8 %193 to i32
  %cmp359 = icmp ne i32 %conv358, 58
  br i1 %cmp359, label %while.body.361, label %while.end.374

while.body.361:                                   ; preds = %while.cond.356
  br label %do.body.362

do.body.362:                                      ; preds = %while.body.361
  %194 = load i8*, i8** %bp, align 8, !tbaa !1
  %195 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp363 = icmp ult i8* %194, %195
  br i1 %cmp363, label %land.lhs.true.365, label %if.else.370

land.lhs.true.365:                                ; preds = %do.body.362
  %196 = load i8*, i8** %buflim, align 8, !tbaa !1
  %197 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp366 = icmp ule i8* %196, %197
  br i1 %cmp366, label %if.then.368, label %if.else.370

if.then.368:                                      ; preds = %land.lhs.true.365
  %198 = load i8, i8* %c, align 1, !tbaa !12
  %199 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr369 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %incdec.ptr369, i8** %bp, align 8, !tbaa !1
  store i8 %198, i8* %199, align 1, !tbaa !12
  br label %if.end.371

if.else.370:                                      ; preds = %land.lhs.true.365, %do.body.362
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.371:                                       ; preds = %if.then.368
  br label %do.cond.372

do.cond.372:                                      ; preds = %if.end.371
  br label %do.end.373

do.end.373:                                       ; preds = %do.cond.372
  br label %while.cond.356

while.end.374:                                    ; preds = %while.cond.356
  br label %do.body.375

do.body.375:                                      ; preds = %while.end.374
  %200 = load i8*, i8** %bp, align 8, !tbaa !1
  %201 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp376 = icmp ult i8* %200, %201
  br i1 %cmp376, label %land.lhs.true.378, label %if.else.383

land.lhs.true.378:                                ; preds = %do.body.375
  %202 = load i8*, i8** %buflim, align 8, !tbaa !1
  %203 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp379 = icmp ule i8* %202, %203
  br i1 %cmp379, label %if.then.381, label %if.else.383

if.then.381:                                      ; preds = %land.lhs.true.378
  %204 = load i8, i8* %c, align 1, !tbaa !12
  %205 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr382 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr382, i8** %bp, align 8, !tbaa !1
  store i8 %204, i8* %205, align 1, !tbaa !12
  br label %if.end.384

if.else.383:                                      ; preds = %land.lhs.true.378, %do.body.375
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.384:                                       ; preds = %if.then.381
  br label %do.cond.385

do.cond.385:                                      ; preds = %if.end.384
  br label %do.end.386

do.end.386:                                       ; preds = %do.cond.385
  br label %if.end.387

if.end.387:                                       ; preds = %do.end.386, %for.end
  br label %while.cond.388

while.cond.388:                                   ; preds = %do.end.414, %if.end.387
  %206 = load i8*, i8** %p, align 8, !tbaa !1
  %207 = load i8, i8* %206, align 1, !tbaa !12
  %conv389 = sext i8 %207 to i32
  %and390 = and i32 %conv389, -128
  %cmp391 = icmp eq i32 %and390, 0
  br i1 %cmp391, label %land.rhs.393, label %land.end.401

land.rhs.393:                                     ; preds = %while.cond.388
  %208 = load i8*, i8** %p, align 8, !tbaa !1
  %209 = load i8, i8* %208, align 1, !tbaa !12
  %conv394 = sext i8 %209 to i32
  %idxprom395 = sext i32 %conv394 to i64
  %call396 = call i16** @__ctype_b_loc() #10
  %210 = load i16*, i16** %call396, align 8, !tbaa !1
  %arrayidx397 = getelementptr inbounds i16, i16* %210, i64 %idxprom395
  %211 = load i16, i16* %arrayidx397, align 2, !tbaa !14
  %conv398 = zext i16 %211 to i32
  %and399 = and i32 %conv398, 8192
  %tobool400 = icmp ne i32 %and399, 0
  br label %land.end.401

land.end.401:                                     ; preds = %land.rhs.393, %while.cond.388
  %212 = phi i1 [ false, %while.cond.388 ], [ %tobool400, %land.rhs.393 ]
  br i1 %212, label %while.body.402, label %while.end.416

while.body.402:                                   ; preds = %land.end.401
  br label %do.body.403

do.body.403:                                      ; preds = %while.body.402
  %213 = load i8*, i8** %bp, align 8, !tbaa !1
  %214 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp404 = icmp ult i8* %213, %214
  br i1 %cmp404, label %land.lhs.true.406, label %if.else.411

land.lhs.true.406:                                ; preds = %do.body.403
  %215 = load i8*, i8** %buflim, align 8, !tbaa !1
  %216 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp407 = icmp ule i8* %215, %216
  br i1 %cmp407, label %if.then.409, label %if.else.411

if.then.409:                                      ; preds = %land.lhs.true.406
  %217 = load i8*, i8** %p, align 8, !tbaa !1
  %218 = load i8, i8* %217, align 1, !tbaa !12
  %219 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr410 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %incdec.ptr410, i8** %bp, align 8, !tbaa !1
  store i8 %218, i8* %219, align 1, !tbaa !12
  br label %if.end.412

if.else.411:                                      ; preds = %land.lhs.true.406, %do.body.403
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.412:                                       ; preds = %if.then.409
  br label %do.cond.413

do.cond.413:                                      ; preds = %if.end.412
  br label %do.end.414

do.end.414:                                       ; preds = %do.cond.413
  %220 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr415 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %incdec.ptr415, i8** %p, align 8, !tbaa !1
  br label %while.cond.388

while.end.416:                                    ; preds = %land.end.401
  store i32 0, i32* %copylev, align 4, !tbaa !10
  store i32 0, i32* %quoteit, align 4, !tbaa !10
  store i32 0, i32* %putgmac, align 4, !tbaa !10
  %221 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8* %221, i8** %bufhead, align 8, !tbaa !1
  %222 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %222, i8** %addrhead, align 8, !tbaa !1
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.411, %if.else.383, %if.else.370, %if.else.351, %if.else.331, %if.else.318, %if.else.274, %if.end.261, %if.else.257, %if.else.245, %while.end.416
  %223 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.756 [
    i32 7, label %while.cond.21
    i32 11, label %putg
    i32 6, label %returng
  ]

if.end.417:                                       ; preds = %land.lhs.true.218, %land.lhs.true.216, %land.lhs.true.213, %land.lhs.true.210, %if.end.206
  %224 = load i8, i8* %c, align 1, !tbaa !12
  %conv418 = sext i8 %224 to i32
  %cmp419 = icmp eq i32 %conv418, 59
  br i1 %cmp419, label %land.lhs.true.421, label %if.end.439

land.lhs.true.421:                                ; preds = %if.end.417
  %225 = load i32, i32* %copylev, align 4, !tbaa !10
  %cmp422 = icmp sle i32 %225, 0
  br i1 %cmp422, label %land.lhs.true.424, label %if.end.439

land.lhs.true.424:                                ; preds = %land.lhs.true.421
  %226 = load i32, i32* @ColonOkInAddr, align 4, !tbaa !10
  %tobool425 = icmp ne i32 %226, 0
  br i1 %tobool425, label %if.end.439, label %if.then.426

if.then.426:                                      ; preds = %land.lhs.true.424
  br label %do.body.427

do.body.427:                                      ; preds = %if.then.426
  %227 = load i8*, i8** %bp, align 8, !tbaa !1
  %228 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp428 = icmp ult i8* %227, %228
  br i1 %cmp428, label %land.lhs.true.430, label %if.else.435

land.lhs.true.430:                                ; preds = %do.body.427
  %229 = load i8*, i8** %buflim, align 8, !tbaa !1
  %230 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp431 = icmp ule i8* %229, %230
  br i1 %cmp431, label %if.then.433, label %if.else.435

if.then.433:                                      ; preds = %land.lhs.true.430
  %231 = load i8, i8* %c, align 1, !tbaa !12
  %232 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr434 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %incdec.ptr434, i8** %bp, align 8, !tbaa !1
  store i8 %231, i8* %232, align 1, !tbaa !12
  br label %if.end.436

if.else.435:                                      ; preds = %land.lhs.true.430, %do.body.427
  br label %returng

if.end.436:                                       ; preds = %if.then.433
  br label %do.cond.437

do.cond.437:                                      ; preds = %if.end.436
  br label %do.end.438

do.end.438:                                       ; preds = %do.cond.437
  br label %if.end.439

if.end.439:                                       ; preds = %do.end.438, %land.lhs.true.424, %land.lhs.true.421, %if.end.417
  %233 = load i8*, i8** @MustQuoteChars, align 8, !tbaa !1
  %234 = load i8, i8* %c, align 1, !tbaa !12
  %conv440 = sext i8 %234 to i32
  %call441 = call i8* @strchr(i8* %233, i32 %conv440) #1
  %cmp442 = icmp ne i8* %call441, null
  br i1 %cmp442, label %if.then.444, label %if.end.451

if.then.444:                                      ; preds = %if.end.439
  %235 = load i32, i32* %cmtlev, align 4, !tbaa !10
  %cmp445 = icmp sle i32 %235, 0
  br i1 %cmp445, label %land.lhs.true.447, label %if.end.450

land.lhs.true.447:                                ; preds = %if.then.444
  %236 = load i32, i32* %qmode, align 4, !tbaa !10
  %tobool448 = icmp ne i32 %236, 0
  br i1 %tobool448, label %if.end.450, label %if.then.449

if.then.449:                                      ; preds = %land.lhs.true.447
  store i32 1, i32* %quoteit, align 4, !tbaa !10
  br label %if.end.450

if.end.450:                                       ; preds = %if.then.449, %land.lhs.true.447, %if.then.444
  br label %if.end.451

if.end.451:                                       ; preds = %if.end.450, %if.end.439
  %237 = load i8, i8* %c, align 1, !tbaa !12
  %conv452 = sext i8 %237 to i32
  %cmp453 = icmp eq i32 %conv452, 60
  br i1 %cmp453, label %if.then.455, label %if.end.612

if.then.455:                                      ; preds = %if.end.451
  %238 = bitcast i8** %q456 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %238) #1
  %239 = load i32, i32* %gotangle, align 4, !tbaa !10
  %tobool457 = icmp ne i32 %239, 0
  br i1 %tobool457, label %if.then.458, label %if.end.459

if.then.458:                                      ; preds = %if.then.455
  store i32 1, i32* %quoteit, align 4, !tbaa !10
  br label %if.end.459

if.end.459:                                       ; preds = %if.then.458, %if.then.455
  store i32 1, i32* %gotangle, align 4, !tbaa !10
  store i32 1, i32* %anglelev, align 4, !tbaa !10
  %240 = load i8*, i8** %bp, align 8, !tbaa !1
  %241 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp460 = icmp ult i8* %240, %241
  br i1 %cmp460, label %land.lhs.true.462, label %if.end.470

land.lhs.true.462:                                ; preds = %if.end.459
  %242 = load i8*, i8** %buflim, align 8, !tbaa !1
  %243 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp463 = icmp ule i8* %242, %243
  br i1 %cmp463, label %if.then.465, label %if.end.470

if.then.465:                                      ; preds = %land.lhs.true.462
  %244 = load i32, i32* %addangle, align 4, !tbaa !10
  %tobool466 = icmp ne i32 %244, 0
  br i1 %tobool466, label %if.end.469, label %if.then.467

if.then.467:                                      ; preds = %if.then.465
  %245 = load i8*, i8** %buflim, align 8, !tbaa !1
  %incdec.ptr468 = getelementptr inbounds i8, i8* %245, i32 -1
  store i8* %incdec.ptr468, i8** %buflim, align 8, !tbaa !1
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.467, %if.then.465
  store i32 1, i32* %addangle, align 4, !tbaa !10
  br label %if.end.470

if.end.470:                                       ; preds = %if.end.469, %land.lhs.true.462, %if.end.459
  %246 = load i8*, i8** %bufhead, align 8, !tbaa !1
  store i8* %246, i8** %bp, align 8, !tbaa !1
  %247 = load i32, i32* %quoteit, align 4, !tbaa !10
  %tobool471 = icmp ne i32 %247, 0
  br i1 %tobool471, label %if.then.472, label %if.end.507

if.then.472:                                      ; preds = %if.end.470
  br label %do.body.473

do.body.473:                                      ; preds = %if.then.472
  %248 = load i8*, i8** %bp, align 8, !tbaa !1
  %249 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp474 = icmp ult i8* %248, %249
  br i1 %cmp474, label %land.lhs.true.476, label %if.else.481

land.lhs.true.476:                                ; preds = %do.body.473
  %250 = load i8*, i8** %buflim, align 8, !tbaa !1
  %251 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp477 = icmp ule i8* %250, %251
  br i1 %cmp477, label %if.then.479, label %if.else.481

if.then.479:                                      ; preds = %land.lhs.true.476
  %252 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr480 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %incdec.ptr480, i8** %bp, align 8, !tbaa !1
  store i8 34, i8* %252, align 1, !tbaa !12
  br label %if.end.482

if.else.481:                                      ; preds = %land.lhs.true.476, %do.body.473
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.482:                                       ; preds = %if.then.479
  br label %do.cond.483

do.cond.483:                                      ; preds = %if.end.482
  br label %do.end.484

do.end.484:                                       ; preds = %do.cond.483
  %253 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr485 = getelementptr inbounds i8, i8* %253, i32 -1
  store i8* %incdec.ptr485, i8** %p, align 8, !tbaa !1
  br label %while.cond.486

while.cond.486:                                   ; preds = %while.body.504, %do.end.484
  %254 = load i8*, i8** %p, align 8, !tbaa !1
  %255 = load i8*, i8** %addr.addr, align 8, !tbaa !1
  %cmp487 = icmp ugt i8* %254, %255
  br i1 %cmp487, label %land.lhs.true.489, label %land.end.503

land.lhs.true.489:                                ; preds = %while.cond.486
  %256 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr490 = getelementptr inbounds i8, i8* %256, i32 -1
  store i8* %incdec.ptr490, i8** %p, align 8, !tbaa !1
  %257 = load i8, i8* %incdec.ptr490, align 1, !tbaa !12
  %conv491 = sext i8 %257 to i32
  %and492 = and i32 %conv491, -128
  %cmp493 = icmp eq i32 %and492, 0
  br i1 %cmp493, label %land.rhs.495, label %land.end.503

land.rhs.495:                                     ; preds = %land.lhs.true.489
  %258 = load i8*, i8** %p, align 8, !tbaa !1
  %259 = load i8, i8* %258, align 1, !tbaa !12
  %conv496 = sext i8 %259 to i32
  %idxprom497 = sext i32 %conv496 to i64
  %call498 = call i16** @__ctype_b_loc() #10
  %260 = load i16*, i16** %call498, align 8, !tbaa !1
  %arrayidx499 = getelementptr inbounds i16, i16* %260, i64 %idxprom497
  %261 = load i16, i16* %arrayidx499, align 2, !tbaa !14
  %conv500 = zext i16 %261 to i32
  %and501 = and i32 %conv500, 8192
  %tobool502 = icmp ne i32 %and501, 0
  br label %land.end.503

land.end.503:                                     ; preds = %land.rhs.495, %land.lhs.true.489, %while.cond.486
  %262 = phi i1 [ false, %land.lhs.true.489 ], [ false, %while.cond.486 ], [ %tobool502, %land.rhs.495 ]
  br i1 %262, label %while.body.504, label %while.end.505

while.body.504:                                   ; preds = %land.end.503
  br label %while.cond.486

while.end.505:                                    ; preds = %land.end.503
  %263 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr506 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %incdec.ptr506, i8** %p, align 8, !tbaa !1
  br label %if.end.507

if.end.507:                                       ; preds = %while.end.505, %if.end.470
  %264 = load i8*, i8** %addrhead, align 8, !tbaa !1
  store i8* %264, i8** %q456, align 8, !tbaa !1
  br label %for.cond.508

for.cond.508:                                     ; preds = %if.end.556, %if.end.507
  %265 = load i8*, i8** %q456, align 8, !tbaa !1
  %266 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp509 = icmp ult i8* %265, %266
  br i1 %cmp509, label %for.body.511, label %for.end.557

for.body.511:                                     ; preds = %for.cond.508
  %267 = load i8*, i8** %q456, align 8, !tbaa !1
  %incdec.ptr512 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %incdec.ptr512, i8** %q456, align 8, !tbaa !1
  %268 = load i8, i8* %267, align 1, !tbaa !12
  store i8 %268, i8* %c, align 1, !tbaa !12
  %269 = load i32, i32* %quoteit, align 4, !tbaa !10
  %tobool513 = icmp ne i32 %269, 0
  br i1 %tobool513, label %land.lhs.true.514, label %if.else.543

land.lhs.true.514:                                ; preds = %for.body.511
  %270 = load i8, i8* %c, align 1, !tbaa !12
  %conv515 = sext i8 %270 to i32
  %cmp516 = icmp eq i32 %conv515, 34
  br i1 %cmp516, label %if.then.518, label %if.else.543

if.then.518:                                      ; preds = %land.lhs.true.514
  br label %do.body.519

do.body.519:                                      ; preds = %if.then.518
  %271 = load i8*, i8** %bp, align 8, !tbaa !1
  %272 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp520 = icmp ult i8* %271, %272
  br i1 %cmp520, label %land.lhs.true.522, label %if.else.527

land.lhs.true.522:                                ; preds = %do.body.519
  %273 = load i8*, i8** %buflim, align 8, !tbaa !1
  %274 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp523 = icmp ule i8* %273, %274
  br i1 %cmp523, label %if.then.525, label %if.else.527

if.then.525:                                      ; preds = %land.lhs.true.522
  %275 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr526 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %incdec.ptr526, i8** %bp, align 8, !tbaa !1
  store i8 92, i8* %275, align 1, !tbaa !12
  br label %if.end.528

if.else.527:                                      ; preds = %land.lhs.true.522, %do.body.519
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.528:                                       ; preds = %if.then.525
  br label %do.cond.529

do.cond.529:                                      ; preds = %if.end.528
  br label %do.end.530

do.end.530:                                       ; preds = %do.cond.529
  br label %do.body.531

do.body.531:                                      ; preds = %do.end.530
  %276 = load i8*, i8** %bp, align 8, !tbaa !1
  %277 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp532 = icmp ult i8* %276, %277
  br i1 %cmp532, label %land.lhs.true.534, label %if.else.539

land.lhs.true.534:                                ; preds = %do.body.531
  %278 = load i8*, i8** %buflim, align 8, !tbaa !1
  %279 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp535 = icmp ule i8* %278, %279
  br i1 %cmp535, label %if.then.537, label %if.else.539

if.then.537:                                      ; preds = %land.lhs.true.534
  %280 = load i8, i8* %c, align 1, !tbaa !12
  %281 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr538 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %incdec.ptr538, i8** %bp, align 8, !tbaa !1
  store i8 %280, i8* %281, align 1, !tbaa !12
  br label %if.end.540

if.else.539:                                      ; preds = %land.lhs.true.534, %do.body.531
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.540:                                       ; preds = %if.then.537
  br label %do.cond.541

do.cond.541:                                      ; preds = %if.end.540
  br label %do.end.542

do.end.542:                                       ; preds = %do.cond.541
  br label %if.end.556

if.else.543:                                      ; preds = %land.lhs.true.514, %for.body.511
  br label %do.body.544

do.body.544:                                      ; preds = %if.else.543
  %282 = load i8*, i8** %bp, align 8, !tbaa !1
  %283 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp545 = icmp ult i8* %282, %283
  br i1 %cmp545, label %land.lhs.true.547, label %if.else.552

land.lhs.true.547:                                ; preds = %do.body.544
  %284 = load i8*, i8** %buflim, align 8, !tbaa !1
  %285 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp548 = icmp ule i8* %284, %285
  br i1 %cmp548, label %if.then.550, label %if.else.552

if.then.550:                                      ; preds = %land.lhs.true.547
  %286 = load i8, i8* %c, align 1, !tbaa !12
  %287 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr551 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %incdec.ptr551, i8** %bp, align 8, !tbaa !1
  store i8 %286, i8* %287, align 1, !tbaa !12
  br label %if.end.553

if.else.552:                                      ; preds = %land.lhs.true.547, %do.body.544
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.553:                                       ; preds = %if.then.550
  br label %do.cond.554

do.cond.554:                                      ; preds = %if.end.553
  br label %do.end.555

do.end.555:                                       ; preds = %do.cond.554
  br label %if.end.556

if.end.556:                                       ; preds = %do.end.555, %do.end.542
  br label %for.cond.508

for.end.557:                                      ; preds = %for.cond.508
  %288 = load i32, i32* %quoteit, align 4, !tbaa !10
  %tobool558 = icmp ne i32 %288, 0
  br i1 %tobool558, label %if.then.559, label %if.end.609

if.then.559:                                      ; preds = %for.end.557
  %289 = load i8*, i8** %bp, align 8, !tbaa !1
  %cmp560 = icmp eq i8* %289, getelementptr inbounds ([257 x i8], [257 x i8]* @crackaddr.buf, i32 0, i64 1)
  br i1 %cmp560, label %if.then.562, label %if.else.564

if.then.562:                                      ; preds = %if.then.559
  %290 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr563 = getelementptr inbounds i8, i8* %290, i32 -1
  store i8* %incdec.ptr563, i8** %bp, align 8, !tbaa !1
  br label %if.end.577

if.else.564:                                      ; preds = %if.then.559
  br label %do.body.565

do.body.565:                                      ; preds = %if.else.564
  %291 = load i8*, i8** %bp, align 8, !tbaa !1
  %292 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp566 = icmp ult i8* %291, %292
  br i1 %cmp566, label %land.lhs.true.568, label %if.else.573

land.lhs.true.568:                                ; preds = %do.body.565
  %293 = load i8*, i8** %buflim, align 8, !tbaa !1
  %294 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp569 = icmp ule i8* %293, %294
  br i1 %cmp569, label %if.then.571, label %if.else.573

if.then.571:                                      ; preds = %land.lhs.true.568
  %295 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr572 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %incdec.ptr572, i8** %bp, align 8, !tbaa !1
  store i8 34, i8* %295, align 1, !tbaa !12
  br label %if.end.574

if.else.573:                                      ; preds = %land.lhs.true.568, %do.body.565
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.574:                                       ; preds = %if.then.571
  br label %do.cond.575

do.cond.575:                                      ; preds = %if.end.574
  br label %do.end.576

do.end.576:                                       ; preds = %do.cond.575
  br label %if.end.577

if.end.577:                                       ; preds = %do.end.576, %if.then.562
  br label %while.cond.578

while.cond.578:                                   ; preds = %do.end.595, %if.end.577
  %296 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr579 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %incdec.ptr579, i8** %p, align 8, !tbaa !1
  %297 = load i8, i8* %296, align 1, !tbaa !12
  store i8 %297, i8* %c, align 1, !tbaa !12
  %conv580 = sext i8 %297 to i32
  %cmp581 = icmp ne i32 %conv580, 60
  br i1 %cmp581, label %while.body.583, label %while.end.596

while.body.583:                                   ; preds = %while.cond.578
  br label %do.body.584

do.body.584:                                      ; preds = %while.body.583
  %298 = load i8*, i8** %bp, align 8, !tbaa !1
  %299 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp585 = icmp ult i8* %298, %299
  br i1 %cmp585, label %land.lhs.true.587, label %if.else.592

land.lhs.true.587:                                ; preds = %do.body.584
  %300 = load i8*, i8** %buflim, align 8, !tbaa !1
  %301 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp588 = icmp ule i8* %300, %301
  br i1 %cmp588, label %if.then.590, label %if.else.592

if.then.590:                                      ; preds = %land.lhs.true.587
  %302 = load i8, i8* %c, align 1, !tbaa !12
  %303 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr591 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %incdec.ptr591, i8** %bp, align 8, !tbaa !1
  store i8 %302, i8* %303, align 1, !tbaa !12
  br label %if.end.593

if.else.592:                                      ; preds = %land.lhs.true.587, %do.body.584
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.593:                                       ; preds = %if.then.590
  br label %do.cond.594

do.cond.594:                                      ; preds = %if.end.593
  br label %do.end.595

do.end.595:                                       ; preds = %do.cond.594
  br label %while.cond.578

while.end.596:                                    ; preds = %while.cond.578
  br label %do.body.597

do.body.597:                                      ; preds = %while.end.596
  %304 = load i8*, i8** %bp, align 8, !tbaa !1
  %305 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp598 = icmp ult i8* %304, %305
  br i1 %cmp598, label %land.lhs.true.600, label %if.else.605

land.lhs.true.600:                                ; preds = %do.body.597
  %306 = load i8*, i8** %buflim, align 8, !tbaa !1
  %307 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp601 = icmp ule i8* %306, %307
  br i1 %cmp601, label %if.then.603, label %if.else.605

if.then.603:                                      ; preds = %land.lhs.true.600
  %308 = load i8, i8* %c, align 1, !tbaa !12
  %309 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr604 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %incdec.ptr604, i8** %bp, align 8, !tbaa !1
  store i8 %308, i8* %309, align 1, !tbaa !12
  br label %if.end.606

if.else.605:                                      ; preds = %land.lhs.true.600, %do.body.597
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.606:                                       ; preds = %if.then.603
  br label %do.cond.607

do.cond.607:                                      ; preds = %if.end.606
  br label %do.end.608

do.end.608:                                       ; preds = %do.cond.607
  br label %if.end.609

if.end.609:                                       ; preds = %do.end.608, %for.end.557
  store i32 0, i32* %copylev, align 4, !tbaa !10
  store i32 0, i32* %quoteit, align 4, !tbaa !10
  store i32 0, i32* %putgmac, align 4, !tbaa !10
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.610

cleanup.610:                                      ; preds = %if.else.605, %if.else.592, %if.else.573, %if.else.552, %if.else.539, %if.else.527, %if.else.481, %if.end.609
  %310 = bitcast i8** %q456 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %cleanup.dest.611 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.611, label %cleanup.756 [
    i32 7, label %while.cond.21
    i32 6, label %returng
  ]

if.end.612:                                       ; preds = %if.end.451
  %311 = load i8, i8* %c, align 1, !tbaa !12
  %conv613 = sext i8 %311 to i32
  %cmp614 = icmp eq i32 %conv613, 62
  br i1 %cmp614, label %if.then.616, label %if.end.666

if.then.616:                                      ; preds = %if.end.612
  %312 = load i32, i32* %anglelev, align 4, !tbaa !10
  %cmp617 = icmp sgt i32 %312, 0
  br i1 %cmp617, label %if.then.619, label %if.else.632

if.then.619:                                      ; preds = %if.then.616
  %313 = load i32, i32* %anglelev, align 4, !tbaa !10
  %dec620 = add nsw i32 %313, -1
  store i32 %dec620, i32* %anglelev, align 4, !tbaa !10
  %314 = load i8*, i8** %bp, align 8, !tbaa !1
  %315 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp621 = icmp ult i8* %314, %315
  br i1 %cmp621, label %land.lhs.true.623, label %if.end.631

land.lhs.true.623:                                ; preds = %if.then.619
  %316 = load i8*, i8** %buflim, align 8, !tbaa !1
  %317 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp624 = icmp ule i8* %316, %317
  br i1 %cmp624, label %if.then.626, label %if.end.631

if.then.626:                                      ; preds = %land.lhs.true.623
  %318 = load i32, i32* %addangle, align 4, !tbaa !10
  %tobool627 = icmp ne i32 %318, 0
  br i1 %tobool627, label %if.then.628, label %if.end.630

if.then.628:                                      ; preds = %if.then.626
  %319 = load i8*, i8** %buflim, align 8, !tbaa !1
  %incdec.ptr629 = getelementptr inbounds i8, i8* %319, i32 1
  store i8* %incdec.ptr629, i8** %buflim, align 8, !tbaa !1
  br label %if.end.630

if.end.630:                                       ; preds = %if.then.628, %if.then.626
  store i32 0, i32* %addangle, align 4, !tbaa !10
  br label %if.end.631

if.end.631:                                       ; preds = %if.end.630, %land.lhs.true.623, %if.then.619
  br label %if.end.648

if.else.632:                                      ; preds = %if.then.616
  %320 = load i8*, i8** %bp, align 8, !tbaa !1
  %321 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp633 = icmp ult i8* %320, %321
  br i1 %cmp633, label %land.lhs.true.635, label %if.end.647

land.lhs.true.635:                                ; preds = %if.else.632
  %322 = load i8*, i8** %buflim, align 8, !tbaa !1
  %323 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp636 = icmp ule i8* %322, %323
  br i1 %cmp636, label %if.then.638, label %if.end.647

if.then.638:                                      ; preds = %land.lhs.true.635
  %324 = load i32, i32* %copylev, align 4, !tbaa !10
  %cmp639 = icmp sgt i32 %324, 0
  br i1 %cmp639, label %land.lhs.true.641, label %if.end.646

land.lhs.true.641:                                ; preds = %if.then.638
  %325 = load i8*, i8** %bp, align 8, !tbaa !1
  %326 = load i8*, i8** %bufhead, align 8, !tbaa !1
  %cmp642 = icmp ugt i8* %325, %326
  br i1 %cmp642, label %if.then.644, label %if.end.646

if.then.644:                                      ; preds = %land.lhs.true.641
  %327 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr645 = getelementptr inbounds i8, i8* %327, i32 -1
  store i8* %incdec.ptr645, i8** %bp, align 8, !tbaa !1
  br label %if.end.646

if.end.646:                                       ; preds = %if.then.644, %land.lhs.true.641, %if.then.638
  store i32 1, i32* %quoteit, align 4, !tbaa !10
  br label %while.cond.21

if.end.647:                                       ; preds = %land.lhs.true.635, %if.else.632
  br label %if.end.648

if.end.648:                                       ; preds = %if.end.647, %if.end.631
  %328 = load i32, i32* %copylev, align 4, !tbaa !10
  %inc649 = add nsw i32 %328, 1
  store i32 %inc649, i32* %copylev, align 4, !tbaa !10
  %cmp650 = icmp sle i32 %328, 0
  br i1 %cmp650, label %if.then.652, label %if.end.665

if.then.652:                                      ; preds = %if.end.648
  br label %do.body.653

do.body.653:                                      ; preds = %if.then.652
  %329 = load i8*, i8** %bp, align 8, !tbaa !1
  %330 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp654 = icmp ult i8* %329, %330
  br i1 %cmp654, label %land.lhs.true.656, label %if.else.661

land.lhs.true.656:                                ; preds = %do.body.653
  %331 = load i8*, i8** %buflim, align 8, !tbaa !1
  %332 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp657 = icmp ule i8* %331, %332
  br i1 %cmp657, label %if.then.659, label %if.else.661

if.then.659:                                      ; preds = %land.lhs.true.656
  %333 = load i8, i8* %c, align 1, !tbaa !12
  %334 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr660 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %incdec.ptr660, i8** %bp, align 8, !tbaa !1
  store i8 %333, i8* %334, align 1, !tbaa !12
  br label %if.end.662

if.else.661:                                      ; preds = %land.lhs.true.656, %do.body.653
  br label %returng

if.end.662:                                       ; preds = %if.then.659
  br label %do.cond.663

do.cond.663:                                      ; preds = %if.end.662
  br label %do.end.664

do.end.664:                                       ; preds = %do.cond.663
  br label %if.end.665

if.end.665:                                       ; preds = %do.end.664, %if.end.648
  br label %while.cond.21

if.end.666:                                       ; preds = %if.end.612
  br label %putg

putg:                                             ; preds = %if.end.666, %cleanup, %if.then.106, %if.end.75, %if.then.57
  %335 = load i32, i32* %copylev, align 4, !tbaa !10
  %cmp667 = icmp sle i32 %335, 0
  br i1 %cmp667, label %land.lhs.true.669, label %if.end.717

land.lhs.true.669:                                ; preds = %putg
  %336 = load i32, i32* %putgmac, align 4, !tbaa !10
  %tobool670 = icmp ne i32 %336, 0
  br i1 %tobool670, label %if.end.717, label %if.then.671

if.then.671:                                      ; preds = %land.lhs.true.669
  %337 = load i8*, i8** %bp, align 8, !tbaa !1
  %cmp672 = icmp ugt i8* %337, getelementptr inbounds ([257 x i8], [257 x i8]* @crackaddr.buf, i32 0, i32 0)
  br i1 %cmp672, label %land.lhs.true.674, label %if.end.692

land.lhs.true.674:                                ; preds = %if.then.671
  %338 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx675 = getelementptr inbounds i8, i8* %338, i64 -1
  %339 = load i8, i8* %arrayidx675, align 1, !tbaa !12
  %conv676 = sext i8 %339 to i32
  %cmp677 = icmp eq i32 %conv676, 41
  br i1 %cmp677, label %if.then.679, label %if.end.692

if.then.679:                                      ; preds = %land.lhs.true.674
  br label %do.body.680

do.body.680:                                      ; preds = %if.then.679
  %340 = load i8*, i8** %bp, align 8, !tbaa !1
  %341 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp681 = icmp ult i8* %340, %341
  br i1 %cmp681, label %land.lhs.true.683, label %if.else.688

land.lhs.true.683:                                ; preds = %do.body.680
  %342 = load i8*, i8** %buflim, align 8, !tbaa !1
  %343 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp684 = icmp ule i8* %342, %343
  br i1 %cmp684, label %if.then.686, label %if.else.688

if.then.686:                                      ; preds = %land.lhs.true.683
  %344 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr687 = getelementptr inbounds i8, i8* %344, i32 1
  store i8* %incdec.ptr687, i8** %bp, align 8, !tbaa !1
  store i8 32, i8* %344, align 1, !tbaa !12
  br label %if.end.689

if.else.688:                                      ; preds = %land.lhs.true.683, %do.body.680
  br label %returng

if.end.689:                                       ; preds = %if.then.686
  br label %do.cond.690

do.cond.690:                                      ; preds = %if.end.689
  br label %do.end.691

do.end.691:                                       ; preds = %do.cond.690
  br label %if.end.692

if.end.692:                                       ; preds = %do.end.691, %land.lhs.true.674, %if.then.671
  br label %do.body.693

do.body.693:                                      ; preds = %if.end.692
  %345 = load i8*, i8** %bp, align 8, !tbaa !1
  %346 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp694 = icmp ult i8* %345, %346
  br i1 %cmp694, label %land.lhs.true.696, label %if.else.701

land.lhs.true.696:                                ; preds = %do.body.693
  %347 = load i8*, i8** %buflim, align 8, !tbaa !1
  %348 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp697 = icmp ule i8* %347, %348
  br i1 %cmp697, label %if.then.699, label %if.else.701

if.then.699:                                      ; preds = %land.lhs.true.696
  %349 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr700 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %incdec.ptr700, i8** %bp, align 8, !tbaa !1
  store i8 -127, i8* %349, align 1, !tbaa !12
  br label %if.end.702

if.else.701:                                      ; preds = %land.lhs.true.696, %do.body.693
  br label %returng

if.end.702:                                       ; preds = %if.then.699
  br label %do.cond.703

do.cond.703:                                      ; preds = %if.end.702
  br label %do.end.704

do.end.704:                                       ; preds = %do.cond.703
  br label %do.body.705

do.body.705:                                      ; preds = %do.end.704
  %350 = load i8*, i8** %bp, align 8, !tbaa !1
  %351 = load i8*, i8** %buflim, align 8, !tbaa !1
  %cmp706 = icmp ult i8* %350, %351
  br i1 %cmp706, label %land.lhs.true.708, label %if.else.713

land.lhs.true.708:                                ; preds = %do.body.705
  %352 = load i8*, i8** %buflim, align 8, !tbaa !1
  %353 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp709 = icmp ule i8* %352, %353
  br i1 %cmp709, label %if.then.711, label %if.else.713

if.then.711:                                      ; preds = %land.lhs.true.708
  %354 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr712 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %incdec.ptr712, i8** %bp, align 8, !tbaa !1
  store i8 103, i8* %354, align 1, !tbaa !12
  br label %if.end.714

if.else.713:                                      ; preds = %land.lhs.true.708, %do.body.705
  br label %returng

if.end.714:                                       ; preds = %if.then.711
  br label %do.cond.715

do.cond.715:                                      ; preds = %if.end.714
  br label %do.end.716

do.end.716:                                       ; preds = %do.cond.715
  store i32 1, i32* %putgmac, align 4, !tbaa !10
  br label %if.end.717

if.end.717:                                       ; preds = %do.end.716, %land.lhs.true.669, %putg
  br label %while.cond.21

while.end.718:                                    ; preds = %while.cond.21
  %355 = load i32, i32* %realqmode, align 4, !tbaa !10
  %tobool719 = icmp ne i32 %355, 0
  br i1 %tobool719, label %land.lhs.true.720, label %if.end.725

land.lhs.true.720:                                ; preds = %while.end.718
  %356 = load i8*, i8** %bp, align 8, !tbaa !1
  %357 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp721 = icmp ult i8* %356, %357
  br i1 %cmp721, label %if.then.723, label %if.end.725

if.then.723:                                      ; preds = %land.lhs.true.720
  %358 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr724 = getelementptr inbounds i8, i8* %358, i32 1
  store i8* %incdec.ptr724, i8** %bp, align 8, !tbaa !1
  store i8 34, i8* %358, align 1, !tbaa !12
  br label %if.end.725

if.end.725:                                       ; preds = %if.then.723, %land.lhs.true.720, %while.end.718
  br label %while.cond.726

while.cond.726:                                   ; preds = %while.body.734, %if.end.725
  %359 = load i32, i32* %realcmtlev, align 4, !tbaa !10
  %dec727 = add nsw i32 %359, -1
  store i32 %dec727, i32* %realcmtlev, align 4, !tbaa !10
  %cmp728 = icmp sgt i32 %359, 0
  br i1 %cmp728, label %land.rhs.730, label %land.end.733

land.rhs.730:                                     ; preds = %while.cond.726
  %360 = load i8*, i8** %bp, align 8, !tbaa !1
  %361 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp731 = icmp ult i8* %360, %361
  br label %land.end.733

land.end.733:                                     ; preds = %land.rhs.730, %while.cond.726
  %362 = phi i1 [ false, %while.cond.726 ], [ %cmp731, %land.rhs.730 ]
  br i1 %362, label %while.body.734, label %while.end.736

while.body.734:                                   ; preds = %land.end.733
  %363 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr735 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %incdec.ptr735, i8** %bp, align 8, !tbaa !1
  store i8 41, i8* %363, align 1, !tbaa !12
  br label %while.cond.726

while.end.736:                                    ; preds = %land.end.733
  %364 = load i32, i32* %addangle, align 4, !tbaa !10
  %tobool737 = icmp ne i32 %364, 0
  br i1 %tobool737, label %land.lhs.true.738, label %if.end.743

land.lhs.true.738:                                ; preds = %while.end.736
  %365 = load i8*, i8** %bp, align 8, !tbaa !1
  %366 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp739 = icmp ult i8* %365, %366
  br i1 %cmp739, label %if.then.741, label %if.end.743

if.then.741:                                      ; preds = %land.lhs.true.738
  %367 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr742 = getelementptr inbounds i8, i8* %367, i32 1
  store i8* %incdec.ptr742, i8** %bp, align 8, !tbaa !1
  store i8 62, i8* %367, align 1, !tbaa !12
  br label %if.end.743

if.end.743:                                       ; preds = %if.then.741, %land.lhs.true.738, %while.end.736
  %368 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8 0, i8* %368, align 1, !tbaa !12
  %369 = load i8*, i8** %bp, align 8, !tbaa !1
  %370 = load i8*, i8** %bufend, align 8, !tbaa !1
  %cmp744 = icmp ult i8* %369, %370
  br i1 %cmp744, label %if.then.746, label %if.end.747

if.then.746:                                      ; preds = %if.end.743
  br label %success

if.end.747:                                       ; preds = %if.end.743
  br label %returng

returng:                                          ; preds = %if.end.747, %cleanup.610, %cleanup, %if.else.713, %if.else.701, %if.else.688, %if.else.661, %if.else.435, %if.else.148, %if.else.135, %if.else.71, %if.else.38, %if.else
  store i8 60, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @crackaddr.buf, i32 0, i64 0), align 1, !tbaa !12
  store i8 -127, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @crackaddr.buf, i32 0, i64 1), align 1, !tbaa !12
  store i8 103, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @crackaddr.buf, i32 0, i64 2), align 1, !tbaa !12
  store i8 62, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @crackaddr.buf, i32 0, i64 3), align 1, !tbaa !12
  store i8 0, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @crackaddr.buf, i32 0, i64 4), align 1, !tbaa !12
  %371 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %371, i32 0, i32 25
  %372 = load i8*, i8** %e_id, align 8, !tbaa !22
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 1, i8* %372, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.49, i32 0, i32 0))
  br label %success

success:                                          ; preds = %returng, %if.then.746
  %373 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 33), align 1, !tbaa !12
  %conv748 = zext i8 %373 to i32
  %cmp749 = icmp sge i32 %conv748, 1
  br i1 %cmp749, label %land.lhs.true.751, label %if.end.755

land.lhs.true.751:                                ; preds = %success
  %374 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool752 = icmp ne i32 %374, 0
  br i1 %tobool752, label %if.end.755, label %if.then.753

if.then.753:                                      ; preds = %land.lhs.true.751
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0))
  %call754 = call %struct.sm_file* @sm_debug_file()
  call void @xputs(%struct.sm_file* %call754, i8* getelementptr inbounds ([257 x i8], [257 x i8]* @crackaddr.buf, i32 0, i32 0))
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end.755

if.end.755:                                       ; preds = %if.then.753, %land.lhs.true.751, %success
  store i8* getelementptr inbounds ([257 x i8], [257 x i8]* @crackaddr.buf, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.756

cleanup.756:                                      ; preds = %if.end.755, %cleanup.610, %cleanup
  %375 = bitcast i8** %bufend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %375) #1
  %376 = bitcast i8** %addrhead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %376) #1
  %377 = bitcast i8** %bufhead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %377) #1
  %378 = bitcast i8** %buflim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %378) #1
  %379 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %379) #1
  %380 = bitcast i32* %gotcolon to i8*
  call void @llvm.lifetime.end(i64 4, i8* %380) #1
  %381 = bitcast i32* %gotangle to i8*
  call void @llvm.lifetime.end(i64 4, i8* %381) #1
  %382 = bitcast i32* %quoteit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %382) #1
  %383 = bitcast i32* %putgmac to i8*
  call void @llvm.lifetime.end(i64 4, i8* %383) #1
  %384 = bitcast i32* %realqmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %384) #1
  %385 = bitcast i32* %qmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %385) #1
  %386 = bitcast i32* %addangle to i8*
  call void @llvm.lifetime.end(i64 4, i8* %386) #1
  %387 = bitcast i32* %bracklev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %387) #1
  %388 = bitcast i32* %copylev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %388) #1
  %389 = bitcast i32* %anglelev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %389) #1
  %390 = bitcast i32* %realcmtlev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %390) #1
  %391 = bitcast i32* %cmtlev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %391) #1
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  %392 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %392) #1
  %393 = load i8*, i8** %retval
  ret i8* %393
}

declare i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T*, i8*) #2

declare i32 @sendtolist(i8*, %struct.address*, %struct.address**, i32, %struct.envelope*) #2

declare i8* @denlstring(i8*, i32, i32) #2

declare i32 @macid_parse(i8*, i8**) #2

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @priencode(i8* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !10
  %2 = load i32, i32* @NumPriorities, align 4, !tbaa !10
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %4 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [25 x %struct.priority], [25 x %struct.priority]* @Priorities, i32 0, i64 %idxprom
  %pri_name = getelementptr inbounds %struct.priority, %struct.priority* %arrayidx, i32 0, i32 0
  %5 = load i8*, i8** %pri_name, align 8, !tbaa !44
  %call = call i32 @sm_strcasecmp(i8* %3, i8* %5)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [25 x %struct.priority], [25 x %struct.priority]* @Priorities, i32 0, i64 %idxprom2
  %pri_val = getelementptr inbounds %struct.priority, %struct.priority* %arrayidx3, i32 0, i32 1
  %7 = load i32, i32* %pri_val, align 4, !tbaa !46
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !10
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i8** @prescan(i8*, i32, i8*, i32, i8**, i8*, i32) #2

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #5

; Function Attrs: inlinehint nounwind uwtable
define available_externally i8* @__strpbrk_c2(i8* %__s, i32 %__accept1, i32 %__accept2) #6 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !10
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !12
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !12
  %conv2 = sext i8 %3 to i32
  %4 = load i32, i32* %__accept1.addr, align 4, !tbaa !10
  %cmp3 = icmp ne i32 %conv2, %4
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !12
  %conv5 = sext i8 %6 to i32
  %7 = load i32, i32* %__accept2.addr, align 4, !tbaa !10
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
  %11 = load i8, i8* %10, align 1, !tbaa !12
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
define available_externally i8* @__strpbrk_c3(i8* %__s, i32 %__accept1, i32 %__accept2, i32 %__accept3) #6 {
entry:
  %__s.addr = alloca i8*, align 8
  %__accept1.addr = alloca i32, align 4
  %__accept2.addr = alloca i32, align 4
  %__accept3.addr = alloca i32, align 4
  store i8* %__s, i8** %__s.addr, align 8, !tbaa !1
  store i32 %__accept1, i32* %__accept1.addr, align 4, !tbaa !10
  store i32 %__accept2, i32* %__accept2.addr, align 4, !tbaa !10
  store i32 %__accept3, i32* %__accept3.addr, align 4, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %1 = load i8, i8* %0, align 1, !tbaa !12
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %3 = load i8, i8* %2, align 1, !tbaa !12
  %conv2 = sext i8 %3 to i32
  %4 = load i32, i32* %__accept1.addr, align 4, !tbaa !10
  %cmp3 = icmp ne i32 %conv2, %4
  br i1 %cmp3, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %5 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !12
  %conv6 = sext i8 %6 to i32
  %7 = load i32, i32* %__accept2.addr, align 4, !tbaa !10
  %cmp7 = icmp ne i32 %conv6, %7
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %8 = load i8*, i8** %__s.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !12
  %conv9 = sext i8 %9 to i32
  %10 = load i32, i32* %__accept3.addr, align 4, !tbaa !10
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
  %14 = load i8, i8* %13, align 1, !tbaa !12
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
declare i8* @strpbrk(i8*, i8*) #5

declare void @setsender(i8*, %struct.envelope*, i8**, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @logsender(%struct.envelope* %e, i8* %msgid) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %msgid.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  %sbp = alloca i8*, align 8
  %p = alloca i8*, align 8
  %hbuf = alloca [257 x i8], align 16
  %sbuf = alloca [2049 x i8], align 16
  %mbuf = alloca [257 x i8], align 16
  %l = alloca i64, align 8
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i8* %msgid, i8** %msgid.addr, align 8, !tbaa !1
  %0 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %sbp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast [257 x i8]* %hbuf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %3) #1
  %4 = bitcast [2049 x i8]* %sbuf to i8*
  call void @llvm.lifetime.start(i64 2049, i8* %4) #1
  %5 = bitcast [257 x i8]* %mbuf to i8*
  call void @llvm.lifetime.start(i64 257, i8* %5) #1
  %6 = load i8*, i8** %msgid.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %6, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %7 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %msgid.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %8) #8
  store i64 %call, i64* %l, align 8, !tbaa !13
  %9 = load i64, i64* %l, align 8, !tbaa !13
  %cmp1 = icmp ugt i64 %9, 256
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i64 256, i64* %l, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %10 = bitcast [257 x i8]* %mbuf to i8*
  %11 = load i8*, i8** %msgid.addr, align 8, !tbaa !1
  %12 = load i64, i64* %l, align 8, !tbaa !13
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %10, i8* %11, i64 %12, i32 1, i1 false)
  %13 = load i64, i64* %l, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds [257 x i8], [257 x i8]* %mbuf, i32 0, i64 %13
  store i8 0, i8* %arrayidx, align 1, !tbaa !12
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %mbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %call3 = call i8* @strchr(i8* %14, i32 10) #1
  store i8* %call3, i8** %p, align 8, !tbaa !1
  %cmp4 = icmp ne i8* %call3, null
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 32, i8* %15, align 1, !tbaa !12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = bitcast i64* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  br label %if.end.5

if.end.5:                                         ; preds = %while.end, %entry
  %17 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %17, i32 0, i32 11
  %18 = load i64, i64* %e_flags, align 8, !tbaa !16
  %and = and i64 %18, 128
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8** %name, align 8, !tbaa !1
  br label %if.end.37

if.else:                                          ; preds = %if.end.5
  %19 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call8 = call i8* @macvalue(i32 95, %struct.envelope* %19)
  store i8* %call8, i8** %name, align 8, !tbaa !1
  %cmp9 = icmp ne i8* %call8, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  br label %if.end.36

if.else.11:                                       ; preds = %if.else
  %20 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %20, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.11
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8** %name, align 8, !tbaa !1
  br label %if.end.35

if.else.14:                                       ; preds = %if.else.11
  %21 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx15, align 1, !tbaa !12
  %conv = sext i8 %22 to i32
  %cmp16 = icmp eq i32 %conv, 91
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.14
  %23 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  store i8* %23, i8** %name, align 8, !tbaa !1
  br label %if.end.34

if.else.19:                                       ; preds = %if.else.14
  %arraydecay20 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  store i8* %arraydecay20, i8** %name, align 8, !tbaa !1
  %arraydecay21 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  %24 = load i8*, i8** @RealHostName, align 8, !tbaa !1
  %call22 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay21, i64 257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* %24)
  %25 = load i16, i16* getelementptr inbounds (%struct.sockaddr, %struct.sockaddr* bitcast (%union.bigsockaddr* @RealHostAddr to %struct.sockaddr*), i32 0, i32 0), align 2, !tbaa !47
  %conv23 = zext i16 %25 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %if.else.19
  %arraydecay27 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  %call28 = call i64 @strlen(i8* %arraydecay27) #8
  %arrayidx29 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i64 %call28
  store i8* %arrayidx29, i8** %p, align 8, !tbaa !1
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %27 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay30 = getelementptr inbounds [257 x i8], [257 x i8]* %hbuf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 257, %sub.ptr.sub
  %call31 = call i8* @anynet_ntoa(%union.bigsockaddr* @RealHostAddr)
  %call32 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %26, i64 %sub, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* %call31)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.26, %if.else.19
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.18
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.13
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.10
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.7
  %arraydecay38 = getelementptr inbounds [2049 x i8], [2049 x i8]* %sbuf, i32 0, i32 0
  store i8* %arraydecay38, i8** %sbp, align 8, !tbaa !1
  %28 = load i8*, i8** %sbp, align 8, !tbaa !1
  %29 = load i8*, i8** %sbp, align 8, !tbaa !1
  %arraydecay39 = getelementptr inbounds [2049 x i8], [2049 x i8]* %sbuf, i32 0, i32 0
  %sub.ptr.lhs.cast40 = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast41 = ptrtoint i8* %arraydecay39 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  %sub43 = sub i64 2049, %sub.ptr.sub42
  %30 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from = getelementptr inbounds %struct.envelope, %struct.envelope* %30, i32 0, i32 4
  %q_paddr = getelementptr inbounds %struct.address, %struct.address* %e_from, i32 0, i32 0
  %31 = load i8*, i8** %q_paddr, align 8, !tbaa !23
  %cmp44 = icmp eq i8* %31, null
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.37
  br label %cond.end

cond.false:                                       ; preds = %if.end.37
  %32 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from46 = getelementptr inbounds %struct.envelope, %struct.envelope* %32, i32 0, i32 4
  %q_paddr47 = getelementptr inbounds %struct.address, %struct.address* %e_from46, i32 0, i32 0
  %33 = load i8*, i8** %q_paddr47, align 8, !tbaa !23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), %cond.true ], [ %33, %cond.false ]
  %34 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize = getelementptr inbounds %struct.envelope, %struct.envelope* %34, i32 0, i32 9
  %35 = load i64, i64* %e_msgsize, align 8, !tbaa !40
  %cmp48 = icmp slt i64 %35, 0
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.end
  br label %cond.end.53

cond.false.51:                                    ; preds = %cond.end
  %36 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize52 = getelementptr inbounds %struct.envelope, %struct.envelope* %36, i32 0, i32 9
  %37 = load i64, i64* %e_msgsize52, align 8, !tbaa !40
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.51, %cond.true.50
  %cond54 = phi i64 [ 9223372036854775807, %cond.true.50 ], [ %37, %cond.false.51 ]
  %38 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_class = getelementptr inbounds %struct.envelope, %struct.envelope* %38, i32 0, i32 13
  %39 = load i16, i16* %e_class, align 2, !tbaa !38
  %conv55 = sext i16 %39 to i32
  %40 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_nrcpts = getelementptr inbounds %struct.envelope, %struct.envelope* %40, i32 0, i32 12
  %41 = load i32, i32* %e_nrcpts, align 4, !tbaa !41
  %call56 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %28, i64 %sub43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.40, i32 0, i32 0), i8* %cond, i64 %cond54, i32 %conv55, i32 %41)
  %42 = load i8*, i8** %sbp, align 8, !tbaa !1
  %call57 = call i64 @strlen(i8* %42) #8
  %43 = load i8*, i8** %sbp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 %call57
  store i8* %add.ptr, i8** %sbp, align 8, !tbaa !1
  %44 = load i8*, i8** %msgid.addr, align 8, !tbaa !1
  %cmp58 = icmp ne i8* %44, null
  br i1 %cmp58, label %if.then.60, label %if.end.70

if.then.60:                                       ; preds = %cond.end.53
  %45 = load i8*, i8** %sbp, align 8, !tbaa !1
  %46 = load i8*, i8** %sbp, align 8, !tbaa !1
  %arraydecay61 = getelementptr inbounds [2049 x i8], [2049 x i8]* %sbuf, i32 0, i32 0
  %sub.ptr.lhs.cast62 = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast63 = ptrtoint i8* %arraydecay61 to i64
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63
  %sub65 = sub i64 2049, %sub.ptr.sub64
  %arraydecay66 = getelementptr inbounds [257 x i8], [257 x i8]* %mbuf, i32 0, i32 0
  %call67 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %45, i64 %sub65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i8* %arraydecay66)
  %47 = load i8*, i8** %sbp, align 8, !tbaa !1
  %call68 = call i64 @strlen(i8* %47) #8
  %48 = load i8*, i8** %sbp, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds i8, i8* %48, i64 %call68
  store i8* %add.ptr69, i8** %sbp, align 8, !tbaa !1
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.60, %cond.end.53
  %49 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_bodytype = getelementptr inbounds %struct.envelope, %struct.envelope* %49, i32 0, i32 23
  %50 = load i8*, i8** %e_bodytype, align 8, !tbaa !43
  %cmp71 = icmp ne i8* %50, null
  br i1 %cmp71, label %if.then.73, label %if.end.83

if.then.73:                                       ; preds = %if.end.70
  %51 = load i8*, i8** %sbp, align 8, !tbaa !1
  %52 = load i8*, i8** %sbp, align 8, !tbaa !1
  %arraydecay74 = getelementptr inbounds [2049 x i8], [2049 x i8]* %sbuf, i32 0, i32 0
  %sub.ptr.lhs.cast75 = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast76 = ptrtoint i8* %arraydecay74 to i64
  %sub.ptr.sub77 = sub i64 %sub.ptr.lhs.cast75, %sub.ptr.rhs.cast76
  %sub78 = sub i64 2049, %sub.ptr.sub77
  %53 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_bodytype79 = getelementptr inbounds %struct.envelope, %struct.envelope* %53, i32 0, i32 23
  %54 = load i8*, i8** %e_bodytype79, align 8, !tbaa !43
  %call80 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %51, i64 %sub78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i8* %54)
  %55 = load i8*, i8** %sbp, align 8, !tbaa !1
  %call81 = call i64 @strlen(i8* %55) #8
  %56 = load i8*, i8** %sbp, align 8, !tbaa !1
  %add.ptr82 = getelementptr inbounds i8, i8* %56, i64 %call81
  store i8* %add.ptr82, i8** %sbp, align 8, !tbaa !1
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.73, %if.end.70
  %57 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call84 = call i8* @macvalue(i32 114, %struct.envelope* %57)
  store i8* %call84, i8** %p, align 8, !tbaa !1
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp85 = icmp ne i8* %58, null
  br i1 %cmp85, label %if.then.87, label %if.end.96

if.then.87:                                       ; preds = %if.end.83
  %59 = load i8*, i8** %sbp, align 8, !tbaa !1
  %60 = load i8*, i8** %sbp, align 8, !tbaa !1
  %arraydecay88 = getelementptr inbounds [2049 x i8], [2049 x i8]* %sbuf, i32 0, i32 0
  %sub.ptr.lhs.cast89 = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast90 = ptrtoint i8* %arraydecay88 to i64
  %sub.ptr.sub91 = sub i64 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %sub92 = sub i64 2049, %sub.ptr.sub91
  %61 = load i8*, i8** %p, align 8, !tbaa !1
  %call93 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %59, i64 %sub92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i8* %61)
  %62 = load i8*, i8** %sbp, align 8, !tbaa !1
  %call94 = call i64 @strlen(i8* %62) #8
  %63 = load i8*, i8** %sbp, align 8, !tbaa !1
  %add.ptr95 = getelementptr inbounds i8, i8* %63, i64 %call94
  store i8* %add.ptr95, i8** %sbp, align 8, !tbaa !1
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.87, %if.end.83
  %call97 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i8** null)
  %64 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call98 = call i8* @macvalue(i32 %call97, %struct.envelope* %64)
  store i8* %call98, i8** %p, align 8, !tbaa !1
  %65 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp99 = icmp ne i8* %65, null
  br i1 %cmp99, label %if.then.101, label %if.end.110

if.then.101:                                      ; preds = %if.end.96
  %66 = load i8*, i8** %sbp, align 8, !tbaa !1
  %67 = load i8*, i8** %sbp, align 8, !tbaa !1
  %arraydecay102 = getelementptr inbounds [2049 x i8], [2049 x i8]* %sbuf, i32 0, i32 0
  %sub.ptr.lhs.cast103 = ptrtoint i8* %67 to i64
  %sub.ptr.rhs.cast104 = ptrtoint i8* %arraydecay102 to i64
  %sub.ptr.sub105 = sub i64 %sub.ptr.lhs.cast103, %sub.ptr.rhs.cast104
  %sub106 = sub i64 2049, %sub.ptr.sub105
  %68 = load i8*, i8** %p, align 8, !tbaa !1
  %call107 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %66, i64 %sub106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i8* %68)
  %69 = load i8*, i8** %sbp, align 8, !tbaa !1
  %call108 = call i64 @strlen(i8* %69) #8
  %70 = load i8*, i8** %sbp, align 8, !tbaa !1
  %add.ptr109 = getelementptr inbounds i8, i8* %70, i64 %call108
  store i8* %add.ptr109, i8** %sbp, align 8, !tbaa !1
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.101, %if.end.96
  %71 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %71, i32 0, i32 25
  %72 = load i8*, i8** %e_id, align 8, !tbaa !22
  %arraydecay111 = getelementptr inbounds [2049 x i8], [2049 x i8]* %sbuf, i32 0, i32 0
  %73 = load i8*, i8** %name, align 8, !tbaa !1
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay111, i8* %73)
  %74 = bitcast [257 x i8]* %mbuf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %74) #1
  %75 = bitcast [2049 x i8]* %sbuf to i8*
  call void @llvm.lifetime.end(i64 2049, i8* %75) #1
  %76 = bitcast [257 x i8]* %hbuf to i8*
  call void @llvm.lifetime.end(i64 257, i8* %76) #1
  %77 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i8** %sbp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i8** %name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i8* @macvalue(i32, %struct.envelope*) #2

declare i8* @anynet_ntoa(%union.bigsockaddr*) #2

declare void @sm_syslog(i32, i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @putheader(%struct.mailer_con_info* %mci, %struct.header* %hdr, %struct.envelope* %e, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %hdr.addr = alloca %struct.header*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %flags.addr = alloca i32, align 4
  %h = alloca %struct.header*, align 8
  %buf = alloca [8192 x i8], align 16
  %obuf = alloca [2048 x i8], align 16
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %len = alloca i64, align 8
  %len52 = alloca i64, align 8
  %len80 = alloca i64, align 8
  %oldstyle = alloca i32, align 4
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.header* %hdr, %struct.header** %hdr.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !10
  %0 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [8192 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 8192, i8* %1) #1
  %2 = bitcast [2048 x i8]* %obuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %2) #1
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv = zext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %5, i32 0, i32 11
  %6 = load %struct.mailer*, %struct.mailer** %mci_mailer, align 8, !tbaa !49
  %m_name = getelementptr inbounds %struct.mailer, %struct.mailer* %6, i32 0, i32 0
  %7 = load i8*, i8** %m_name, align 8, !tbaa !51
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i32 0, i32 0), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %8, i32 0, i32 0
  %9 = load i64, i64* %mci_flags, align 8, !tbaa !53
  %and = and i64 %9, 16384
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %10 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags5 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %10, i32 0, i32 0
  %11 = load i64, i64* %mci_flags5, align 8, !tbaa !53
  %or = or i64 %11, 512
  store i64 %or, i64* %mci_flags5, align 8, !tbaa !53
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %12 = load %struct.header*, %struct.header** %hdr.addr, align 8, !tbaa !1
  store %struct.header* %12, %struct.header** %h, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %13 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.header* %13, null
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value = getelementptr inbounds %struct.header, %struct.header* %15, i32 0, i32 1
  %16 = load i8*, i8** %h_value, align 8, !tbaa !29
  store i8* %16, i8** %p, align 8, !tbaa !1
  %17 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv9 = zext i8 %18 to i32
  %cmp10 = icmp sge i32 %conv9, 11
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.15

land.lhs.true.12:                                 ; preds = %for.body
  %19 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.12
  %20 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field = getelementptr inbounds %struct.header, %struct.header* %20, i32 0, i32 0
  %21 = load i8*, i8** %h_field, align 8, !tbaa !26
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8* %21)
  %call = call %struct.sm_file* @sm_debug_file()
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call, i8* %22)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true.12, %for.body
  %23 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value16 = getelementptr inbounds %struct.header, %struct.header* %23, i32 0, i32 1
  %24 = load i8*, i8** %h_value16, align 8, !tbaa !29
  %cmp17 = icmp eq i8* %24, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.313

if.end.20:                                        ; preds = %if.end.15
  %25 = load i32, i32* @MaxMimeFieldLength, align 4, !tbaa !10
  %cmp21 = icmp sgt i32 %25, 0
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.43

land.lhs.true.23:                                 ; preds = %if.end.20
  %26 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field24 = getelementptr inbounds %struct.header, %struct.header* %26, i32 0, i32 0
  %27 = load i8*, i8** %h_field24, align 8, !tbaa !26
  %call25 = call i32 @macid_parse(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0), i8** null)
  %call26 = call i32 @wordinclass(i8* %27, i32 %call25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.43

if.then.28:                                       ; preds = %land.lhs.true.23
  %28 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %30 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call29 = call i64 @fix_mime_header(%struct.header* %29, %struct.envelope* %30)
  store i64 %call29, i64* %len, align 8, !tbaa !13
  %31 = load i64, i64* %len, align 8, !tbaa !13
  %cmp30 = icmp ugt i64 %31, 0
  br i1 %cmp30, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %if.then.28
  %32 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %32, i32 0, i32 25
  %33 = load i8*, i8** %e_id, align 8, !tbaa !22
  %34 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field33 = getelementptr inbounds %struct.header, %struct.header* %34, i32 0, i32 0
  %35 = load i8*, i8** %h_field33, align 8, !tbaa !26
  %36 = load i64, i64* %len, align 8, !tbaa !13
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 1, i8* %33, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.55, i32 0, i32 0), i8* %35, i64 %36)
  %37 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv34 = zext i8 %37 to i32
  %cmp35 = icmp sge i32 %conv34, 11
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.41

land.lhs.true.37:                                 ; preds = %if.then.32
  %38 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool38 = icmp ne i32 %38, 0
  br i1 %tobool38, label %if.end.41, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.37
  %39 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field40 = getelementptr inbounds %struct.header, %struct.header* %39, i32 0, i32 0
  %40 = load i8*, i8** %h_field40, align 8, !tbaa !26
  %41 = load i64, i64* %len, align 8, !tbaa !13
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.56, i32 0, i32 0), i8* %40, i64 %41)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %land.lhs.true.37, %if.then.32
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.28
  %42 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true.23, %if.end.20
  %43 = load i32, i32* @MaxMimeHeaderLength, align 4, !tbaa !10
  %cmp44 = icmp sgt i32 %43, 0
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.71

land.lhs.true.46:                                 ; preds = %if.end.43
  %44 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field47 = getelementptr inbounds %struct.header, %struct.header* %44, i32 0, i32 0
  %45 = load i8*, i8** %h_field47, align 8, !tbaa !26
  %call48 = call i32 @macid_parse(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0), i8** null)
  %call49 = call i32 @wordinclass(i8* %45, i32 %call48)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.71

if.then.51:                                       ; preds = %land.lhs.true.46
  %46 = bitcast i64* %len52 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value53 = getelementptr inbounds %struct.header, %struct.header* %47, i32 0, i32 1
  %48 = load i8*, i8** %h_value53, align 8, !tbaa !29
  %call54 = call i64 @strlen(i8* %48) #8
  store i64 %call54, i64* %len52, align 8, !tbaa !13
  %49 = load i64, i64* %len52, align 8, !tbaa !13
  %50 = load i32, i32* @MaxMimeHeaderLength, align 4, !tbaa !10
  %conv55 = sext i32 %50 to i64
  %cmp56 = icmp ugt i64 %49, %conv55
  br i1 %cmp56, label %if.then.58, label %if.end.70

if.then.58:                                       ; preds = %if.then.51
  %51 = load i32, i32* @MaxMimeHeaderLength, align 4, !tbaa !10
  %sub = sub nsw i32 %51, 1
  %idxprom = sext i32 %sub to i64
  %52 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value59 = getelementptr inbounds %struct.header, %struct.header* %52, i32 0, i32 1
  %53 = load i8*, i8** %h_value59, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds i8, i8* %53, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !12
  %54 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id60 = getelementptr inbounds %struct.envelope, %struct.envelope* %54, i32 0, i32 25
  %55 = load i8*, i8** %e_id60, align 8, !tbaa !22
  %56 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field61 = getelementptr inbounds %struct.header, %struct.header* %56, i32 0, i32 0
  %57 = load i8*, i8** %h_field61, align 8, !tbaa !26
  %58 = load i64, i64* %len52, align 8, !tbaa !13
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 1, i8* %55, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.58, i32 0, i32 0), i8* %57, i64 %58)
  %59 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv62 = zext i8 %59 to i32
  %cmp63 = icmp sge i32 %conv62, 11
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.69

land.lhs.true.65:                                 ; preds = %if.then.58
  %60 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool66 = icmp ne i32 %60, 0
  br i1 %tobool66, label %if.end.69, label %if.then.67

if.then.67:                                       ; preds = %land.lhs.true.65
  %61 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field68 = getelementptr inbounds %struct.header, %struct.header* %61, i32 0, i32 0
  %62 = load i8*, i8** %h_field68, align 8, !tbaa !26
  %63 = load i64, i64* %len52, align 8, !tbaa !13
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.59, i32 0, i32 0), i8* %62, i64 %63)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %land.lhs.true.65, %if.then.58
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.51
  %64 = bitcast i64* %len52 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %land.lhs.true.46, %if.end.43
  %65 = load i32, i32* @MaxMimeHeaderLength, align 4, !tbaa !10
  %cmp72 = icmp sgt i32 %65, 0
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.114

land.lhs.true.74:                                 ; preds = %if.end.71
  %66 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field75 = getelementptr inbounds %struct.header, %struct.header* %66, i32 0, i32 0
  %67 = load i8*, i8** %h_field75, align 8, !tbaa !26
  %call76 = call i32 @macid_parse(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.60, i32 0, i32 0), i8** null)
  %call77 = call i32 @wordinclass(i8* %67, i32 %call76)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.114

if.then.79:                                       ; preds = %land.lhs.true.74
  %68 = bitcast i64* %len80 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  %69 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value81 = getelementptr inbounds %struct.header, %struct.header* %69, i32 0, i32 1
  %70 = load i8*, i8** %h_value81, align 8, !tbaa !29
  %call82 = call i64 @strlen(i8* %70) #8
  store i64 %call82, i64* %len80, align 8, !tbaa !13
  %71 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_value83 = getelementptr inbounds %struct.header, %struct.header* %71, i32 0, i32 1
  %72 = load i8*, i8** %h_value83, align 8, !tbaa !29
  %73 = load i32, i32* @MaxMimeHeaderLength, align 4, !tbaa !10
  %conv84 = sext i32 %73 to i64
  %call85 = call i32 @shorten_rfc822_string(i8* %72, i64 %conv84)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.113

if.then.87:                                       ; preds = %if.then.79
  %74 = load i64, i64* %len80, align 8, !tbaa !13
  %75 = load i32, i32* @MaxMimeHeaderLength, align 4, !tbaa !10
  %conv88 = sext i32 %75 to i64
  %cmp89 = icmp ult i64 %74, %conv88
  br i1 %cmp89, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %if.then.87
  %76 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id92 = getelementptr inbounds %struct.envelope, %struct.envelope* %76, i32 0, i32 25
  %77 = load i8*, i8** %e_id92, align 8, !tbaa !22
  %78 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field93 = getelementptr inbounds %struct.header, %struct.header* %78, i32 0, i32 0
  %79 = load i8*, i8** %h_field93, align 8, !tbaa !26
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 1, i8* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.61, i32 0, i32 0), i8* %79)
  %80 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv94 = zext i8 %80 to i32
  %cmp95 = icmp sge i32 %conv94, 11
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.101

land.lhs.true.97:                                 ; preds = %if.then.91
  %81 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool98 = icmp ne i32 %81, 0
  br i1 %tobool98, label %if.end.101, label %if.then.99

if.then.99:                                       ; preds = %land.lhs.true.97
  %82 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field100 = getelementptr inbounds %struct.header, %struct.header* %82, i32 0, i32 0
  %83 = load i8*, i8** %h_field100, align 8, !tbaa !26
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.62, i32 0, i32 0), i8* %83)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %land.lhs.true.97, %if.then.91
  br label %if.end.112

if.else:                                          ; preds = %if.then.87
  %84 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id102 = getelementptr inbounds %struct.envelope, %struct.envelope* %84, i32 0, i32 25
  %85 = load i8*, i8** %e_id102, align 8, !tbaa !22
  %86 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field103 = getelementptr inbounds %struct.header, %struct.header* %86, i32 0, i32 0
  %87 = load i8*, i8** %h_field103, align 8, !tbaa !26
  %88 = load i64, i64* %len80, align 8, !tbaa !13
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 1, i8* %85, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.58, i32 0, i32 0), i8* %87, i64 %88)
  %89 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv104 = zext i8 %89 to i32
  %cmp105 = icmp sge i32 %conv104, 11
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.111

land.lhs.true.107:                                ; preds = %if.else
  %90 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool108 = icmp ne i32 %90, 0
  br i1 %tobool108, label %if.end.111, label %if.then.109

if.then.109:                                      ; preds = %land.lhs.true.107
  %91 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field110 = getelementptr inbounds %struct.header, %struct.header* %91, i32 0, i32 0
  %92 = load i8*, i8** %h_field110, align 8, !tbaa !26
  %93 = load i64, i64* %len80, align 8, !tbaa !13
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.59, i32 0, i32 0), i8* %92, i64 %93)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %land.lhs.true.107, %if.else
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.101
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.79
  %94 = bitcast i64* %len80 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %land.lhs.true.74, %if.end.71
  %95 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags = getelementptr inbounds %struct.header, %struct.header* %95, i32 0, i32 4
  %96 = load i64, i64* %h_flags, align 8, !tbaa !28
  %and115 = and i64 %96, 4096
  %cmp116 = icmp ne i64 %and115, 0
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.135

land.lhs.true.118:                                ; preds = %if.end.114
  %97 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags119 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %97, i32 0, i32 0
  %98 = load i64, i64* %mci_flags119, align 8, !tbaa !53
  %and120 = and i64 %98, 25600
  %cmp121 = icmp ne i64 %and120, 0
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.135

land.lhs.true.123:                                ; preds = %land.lhs.true.118
  %99 = load i32, i32* %flags.addr, align 4, !tbaa !10
  %and124 = and i32 %99, 4
  %cmp125 = icmp ne i32 %and124, 0
  br i1 %cmp125, label %if.end.135, label %if.then.127

if.then.127:                                      ; preds = %land.lhs.true.123
  %100 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv128 = zext i8 %100 to i32
  %cmp129 = icmp sge i32 %conv128, 11
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.134

land.lhs.true.131:                                ; preds = %if.then.127
  %101 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool132 = icmp ne i32 %101, 0
  br i1 %tobool132, label %if.end.134, label %if.then.133

if.then.133:                                      ; preds = %land.lhs.true.131
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %land.lhs.true.131, %if.then.127
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.313

if.end.135:                                       ; preds = %land.lhs.true.123, %land.lhs.true.118, %if.end.114
  %102 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags136 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %102, i32 0, i32 0
  %103 = load i64, i64* %mci_flags136, align 8, !tbaa !53
  %and137 = and i64 %103, 16384
  %cmp138 = icmp ne i64 %and137, 0
  br i1 %cmp138, label %if.then.140, label %if.end.152

if.then.140:                                      ; preds = %if.end.135
  %104 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv141 = zext i8 %104 to i32
  %cmp142 = icmp sge i32 %conv141, 11
  br i1 %cmp142, label %land.lhs.true.144, label %if.end.147

land.lhs.true.144:                                ; preds = %if.then.140
  %105 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool145 = icmp ne i32 %105, 0
  br i1 %tobool145, label %if.end.147, label %if.then.146

if.then.146:                                      ; preds = %land.lhs.true.144
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %land.lhs.true.144, %if.then.140
  %106 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %107 = load i8*, i8** %p, align 8, !tbaa !1
  %108 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call148 = call i32 @put_vanilla_header(%struct.header* %106, i8* %107, %struct.mailer_con_info* %108)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.end.151, label %if.then.150

if.then.150:                                      ; preds = %if.end.147
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.313

if.end.151:                                       ; preds = %if.end.147
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.313

if.end.152:                                       ; preds = %if.end.135
  %109 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags153 = getelementptr inbounds %struct.header, %struct.header* %109, i32 0, i32 4
  %110 = load i64, i64* %h_flags153, align 8, !tbaa !28
  %and154 = and i64 %110, 48
  %cmp155 = icmp ne i64 %and154, 0
  br i1 %cmp155, label %land.lhs.true.157, label %if.end.184

land.lhs.true.157:                                ; preds = %if.end.152
  %111 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_mflags = getelementptr inbounds %struct.header, %struct.header* %111, i32 0, i32 5
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %h_mflags, i32 0, i32 0
  %112 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer158 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %112, i32 0, i32 11
  %113 = load %struct.mailer*, %struct.mailer** %mci_mailer158, align 8, !tbaa !49
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %113, i32 0, i32 5
  %arraydecay159 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i32 0
  %call160 = call i32 @bitintersect(i32* %arraydecay, i32* %arraydecay159)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.end.184, label %land.lhs.true.162

land.lhs.true.162:                                ; preds = %land.lhs.true.157
  %114 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_macro = getelementptr inbounds %struct.header, %struct.header* %114, i32 0, i32 3
  %115 = load i8, i8* %h_macro, align 1, !tbaa !30
  %conv163 = zext i8 %115 to i32
  %cmp164 = icmp eq i32 %conv163, 0
  br i1 %cmp164, label %if.then.176, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.162
  %116 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_macro166 = getelementptr inbounds %struct.header, %struct.header* %116, i32 0, i32 3
  %117 = load i8, i8* %h_macro166, align 1, !tbaa !30
  %conv167 = zext i8 %117 to i32
  %and168 = and i32 %conv167, 255
  %118 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call169 = call i8* @macvalue(i32 %and168, %struct.envelope* %118)
  store i8* %call169, i8** %q, align 8, !tbaa !1
  %cmp170 = icmp eq i8* %call169, null
  br i1 %cmp170, label %if.then.176, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %lor.lhs.false
  %119 = load i8*, i8** %q, align 8, !tbaa !1
  %120 = load i8, i8* %119, align 1, !tbaa !12
  %conv173 = sext i8 %120 to i32
  %cmp174 = icmp eq i32 %conv173, 0
  br i1 %cmp174, label %if.then.176, label %if.end.184

if.then.176:                                      ; preds = %lor.lhs.false.172, %lor.lhs.false, %land.lhs.true.162
  %121 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv177 = zext i8 %121 to i32
  %cmp178 = icmp sge i32 %conv177, 11
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.183

land.lhs.true.180:                                ; preds = %if.then.176
  %122 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool181 = icmp ne i32 %122, 0
  br i1 %tobool181, label %if.end.183, label %if.then.182

if.then.182:                                      ; preds = %land.lhs.true.180
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %land.lhs.true.180, %if.then.176
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.313

if.end.184:                                       ; preds = %lor.lhs.false.172, %land.lhs.true.157, %if.end.152
  %123 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags185 = getelementptr inbounds %struct.header, %struct.header* %123, i32 0, i32 4
  %124 = load i64, i64* %h_flags185, align 8, !tbaa !28
  %and186 = and i64 %124, 8
  %cmp187 = icmp ne i64 %and186, 0
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.201

land.lhs.true.189:                                ; preds = %if.end.184
  %125 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %125, i32 0, i32 11
  %126 = load i64, i64* %e_flags, align 8, !tbaa !16
  %and190 = and i64 %126, 256
  %cmp191 = icmp ne i64 %and190, 0
  br i1 %cmp191, label %if.end.201, label %if.then.193

if.then.193:                                      ; preds = %land.lhs.true.189
  %127 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv194 = zext i8 %127 to i32
  %cmp195 = icmp sge i32 %conv194, 11
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.200

land.lhs.true.197:                                ; preds = %if.then.193
  %128 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool198 = icmp ne i32 %128, 0
  br i1 %tobool198, label %if.end.200, label %if.then.199

if.then.199:                                      ; preds = %land.lhs.true.197
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.199, %land.lhs.true.197, %if.then.193
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.313

if.end.201:                                       ; preds = %land.lhs.true.189, %if.end.184
  %129 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags202 = getelementptr inbounds %struct.header, %struct.header* %129, i32 0, i32 4
  %130 = load i64, i64* %h_flags202, align 8, !tbaa !28
  %and203 = and i64 %130, 1024
  %cmp204 = icmp ne i64 %and203, 0
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.221

land.lhs.true.206:                                ; preds = %if.end.201
  %131 = load i32, i32* @RrtImpliesDsn, align 4, !tbaa !10
  %tobool207 = icmp ne i32 %131, 0
  br i1 %tobool207, label %if.then.213, label %lor.lhs.false.208

lor.lhs.false.208:                                ; preds = %land.lhs.true.206
  %132 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags209 = getelementptr inbounds %struct.envelope, %struct.envelope* %132, i32 0, i32 11
  %133 = load i64, i64* %e_flags209, align 8, !tbaa !16
  %and210 = and i64 %133, 65536
  %cmp211 = icmp ne i64 %and210, 0
  br i1 %cmp211, label %if.then.213, label %if.end.221

if.then.213:                                      ; preds = %lor.lhs.false.208, %land.lhs.true.206
  %134 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv214 = zext i8 %134 to i32
  %cmp215 = icmp sge i32 %conv214, 11
  br i1 %cmp215, label %land.lhs.true.217, label %if.end.220

land.lhs.true.217:                                ; preds = %if.then.213
  %135 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool218 = icmp ne i32 %135, 0
  br i1 %tobool218, label %if.end.220, label %if.then.219

if.then.219:                                      ; preds = %land.lhs.true.217
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.219, %land.lhs.true.217, %if.then.213
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.313

if.end.221:                                       ; preds = %lor.lhs.false.208, %if.end.201
  %136 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags222 = getelementptr inbounds %struct.header, %struct.header* %136, i32 0, i32 4
  %137 = load i64, i64* %h_flags222, align 8, !tbaa !28
  %and223 = and i64 %137, 4
  %cmp224 = icmp ne i64 %and223, 0
  br i1 %cmp224, label %if.then.231, label %lor.lhs.false.226

lor.lhs.false.226:                                ; preds = %if.end.221
  %138 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags227 = getelementptr inbounds %struct.header, %struct.header* %138, i32 0, i32 4
  %139 = load i64, i64* %h_flags227, align 8, !tbaa !28
  %and228 = and i64 %139, 131072
  %cmp229 = icmp ne i64 %and228, 0
  br i1 %cmp229, label %if.then.231, label %if.end.246

if.then.231:                                      ; preds = %lor.lhs.false.226, %if.end.221
  %140 = load i8*, i8** %p, align 8, !tbaa !1
  %arraydecay232 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %141 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @expand(i8* %140, i8* %arraydecay232, i64 8192, %struct.envelope* %141)
  %arraydecay233 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay233, i8** %p, align 8, !tbaa !1
  %142 = load i8*, i8** %p, align 8, !tbaa !1
  %143 = load i8, i8* %142, align 1, !tbaa !12
  %conv234 = sext i8 %143 to i32
  %cmp235 = icmp eq i32 %conv234, 0
  br i1 %cmp235, label %if.then.237, label %if.end.245

if.then.237:                                      ; preds = %if.then.231
  %144 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv238 = zext i8 %144 to i32
  %cmp239 = icmp sge i32 %conv238, 11
  br i1 %cmp239, label %land.lhs.true.241, label %if.end.244

land.lhs.true.241:                                ; preds = %if.then.237
  %145 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool242 = icmp ne i32 %145, 0
  br i1 %tobool242, label %if.end.244, label %if.then.243

if.then.243:                                      ; preds = %land.lhs.true.241
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i32 0, i32 0))
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.243, %land.lhs.true.241, %if.then.237
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.313

if.end.245:                                       ; preds = %if.then.231
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %lor.lhs.false.226
  %146 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags247 = getelementptr inbounds %struct.header, %struct.header* %146, i32 0, i32 4
  %147 = load i64, i64* %h_flags247, align 8, !tbaa !28
  %and248 = and i64 %147, 16384
  %cmp249 = icmp ne i64 %and248, 0
  br i1 %cmp249, label %if.then.251, label %if.end.274

if.then.251:                                      ; preds = %if.end.246
  %148 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags252 = getelementptr inbounds %struct.envelope, %struct.envelope* %148, i32 0, i32 11
  %149 = load i64, i64* %e_flags252, align 8, !tbaa !16
  %and253 = and i64 %149, 64
  %cmp254 = icmp ne i64 %and253, 0
  br i1 %cmp254, label %if.then.256, label %if.else.264

if.then.256:                                      ; preds = %if.then.251
  %150 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv257 = zext i8 %150 to i32
  %cmp258 = icmp sge i32 %conv257, 11
  br i1 %cmp258, label %land.lhs.true.260, label %if.end.263

land.lhs.true.260:                                ; preds = %if.then.256
  %151 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool261 = icmp ne i32 %151, 0
  br i1 %tobool261, label %if.end.263, label %if.then.262

if.then.262:                                      ; preds = %land.lhs.true.260
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.262, %land.lhs.true.260, %if.then.256
  br label %if.end.273

if.else.264:                                      ; preds = %if.then.251
  %arraydecay265 = getelementptr inbounds [2048 x i8], [2048 x i8]* %obuf, i32 0, i32 0
  %152 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_field266 = getelementptr inbounds %struct.header, %struct.header* %152, i32 0, i32 0
  %153 = load i8*, i8** %h_field266, align 8, !tbaa !26
  %call267 = call i64 (i8*, i64, i32, ...) @sm_strlcpyn(i8* %arraydecay265, i64 2048, i32 2, i8* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0))
  %arraydecay268 = getelementptr inbounds [2048 x i8], [2048 x i8]* %obuf, i32 0, i32 0
  %154 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call269 = call i32 @putline(i8* %arraydecay268, %struct.mailer_con_info* %154)
  %tobool270 = icmp ne i32 %call269, 0
  br i1 %tobool270, label %if.end.272, label %if.then.271

if.then.271:                                      ; preds = %if.else.264
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.313

if.end.272:                                       ; preds = %if.else.264
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %if.end.263
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.313

if.end.274:                                       ; preds = %if.end.246
  %155 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv275 = zext i8 %155 to i32
  %cmp276 = icmp sge i32 %conv275, 11
  br i1 %cmp276, label %land.lhs.true.278, label %if.end.281

land.lhs.true.278:                                ; preds = %if.end.274
  %156 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool279 = icmp ne i32 %156, 0
  br i1 %tobool279, label %if.end.281, label %if.then.280

if.then.280:                                      ; preds = %land.lhs.true.278
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.280, %land.lhs.true.278, %if.end.274
  %157 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags282 = getelementptr inbounds %struct.header, %struct.header* %157, i32 0, i32 4
  %158 = load i64, i64* %h_flags282, align 8, !tbaa !28
  %and283 = and i64 %158, 258
  %cmp284 = icmp ne i64 %and283, 0
  br i1 %cmp284, label %if.then.286, label %if.else.307

if.then.286:                                      ; preds = %if.end.281
  %159 = bitcast i32* %oldstyle to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  %160 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags287 = getelementptr inbounds %struct.envelope, %struct.envelope* %160, i32 0, i32 11
  %161 = load i64, i64* %e_flags287, align 8, !tbaa !16
  %and288 = and i64 %161, 1
  %cmp289 = icmp ne i64 %and288, 0
  %conv290 = zext i1 %cmp289 to i32
  store i32 %conv290, i32* %oldstyle, align 4, !tbaa !10
  %162 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_flags291 = getelementptr inbounds %struct.header, %struct.header* %162, i32 0, i32 4
  %163 = load i64, i64* %h_flags291, align 8, !tbaa !28
  %and292 = and i64 %163, 256
  %cmp293 = icmp ne i64 %and292, 0
  br i1 %cmp293, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %if.then.286
  store i32 0, i32* %oldstyle, align 4, !tbaa !10
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.295, %if.then.286
  %164 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %165 = load i8*, i8** %p, align 8, !tbaa !1
  %166 = load i32, i32* %oldstyle, align 4, !tbaa !10
  %167 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %168 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call297 = call i32 @commaize(%struct.header* %164, i8* %165, i32 %166, %struct.mailer_con_info* %167, %struct.envelope* %168, i32 20)
  %tobool298 = icmp ne i32 %call297, 0
  br i1 %tobool298, label %if.end.306, label %land.lhs.true.299

land.lhs.true.299:                                ; preds = %if.end.296
  %169 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer300 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %169, i32 0, i32 11
  %170 = load %struct.mailer*, %struct.mailer** %mci_mailer300, align 8, !tbaa !49
  %m_flags301 = getelementptr inbounds %struct.mailer, %struct.mailer* %170, i32 0, i32 5
  %arrayidx302 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags301, i32 0, i64 0
  %171 = load i32, i32* %arrayidx302, align 4, !tbaa !10
  %and303 = and i32 %171, 2
  %tobool304 = icmp ne i32 %and303, 0
  br i1 %tobool304, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %land.lhs.true.299
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.306:                                       ; preds = %land.lhs.true.299, %if.end.296
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.305, %if.end.306
  %172 = bitcast i32* %oldstyle to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.313 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.312

if.else.307:                                      ; preds = %if.end.281
  %173 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %174 = load i8*, i8** %p, align 8, !tbaa !1
  %175 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call308 = call i32 @put_vanilla_header(%struct.header* %173, i8* %174, %struct.mailer_con_info* %175)
  %tobool309 = icmp ne i32 %call308, 0
  br i1 %tobool309, label %if.end.311, label %if.then.310

if.then.310:                                      ; preds = %if.else.307
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.313

if.end.311:                                       ; preds = %if.else.307
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.313

cleanup.313:                                      ; preds = %if.then.310, %if.then.271, %if.then.150, %if.end.312, %cleanup, %if.end.273, %if.end.244, %if.end.220, %if.end.200, %if.end.183, %if.end.151, %if.end.134, %if.then.19
  %176 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %cleanup.dest.315 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.315, label %cleanup.374 [
    i32 0, label %cleanup.cont.316
    i32 4, label %for.inc
    i32 5, label %writeerr
  ]

cleanup.cont.316:                                 ; preds = %cleanup.313
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.316, %cleanup.313
  %178 = load %struct.header*, %struct.header** %h, align 8, !tbaa !1
  %h_link = getelementptr inbounds %struct.header, %struct.header* %178, i32 0, i32 2
  %179 = load %struct.header*, %struct.header** %h_link, align 8, !tbaa !32
  store %struct.header* %179, %struct.header** %h, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %180 = load i32, i32* @MimeMode, align 4, !tbaa !10
  %and317 = and i32 %180, 4
  %cmp318 = icmp ne i32 %and317, 0
  br i1 %cmp318, label %land.lhs.true.320, label %if.end.373

land.lhs.true.320:                                ; preds = %for.end
  %181 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags321 = getelementptr inbounds %struct.envelope, %struct.envelope* %181, i32 0, i32 11
  %182 = load i64, i64* %e_flags321, align 8, !tbaa !16
  %and322 = and i64 %182, 131072
  %cmp323 = icmp ne i64 %and322, 0
  br i1 %cmp323, label %land.lhs.true.325, label %if.end.373

land.lhs.true.325:                                ; preds = %land.lhs.true.320
  %183 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags326 = getelementptr inbounds %struct.envelope, %struct.envelope* %183, i32 0, i32 11
  %184 = load i64, i64* %e_flags326, align 8, !tbaa !16
  %and327 = and i64 %184, 8388608
  %cmp328 = icmp ne i64 %and327, 0
  br i1 %cmp328, label %if.end.373, label %land.lhs.true.330

land.lhs.true.330:                                ; preds = %land.lhs.true.325
  %185 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer331 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %185, i32 0, i32 11
  %186 = load %struct.mailer*, %struct.mailer** %mci_mailer331, align 8, !tbaa !49
  %m_flags332 = getelementptr inbounds %struct.mailer, %struct.mailer* %186, i32 0, i32 5
  %arrayidx333 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags332, i32 0, i64 1
  %187 = load i32, i32* %arrayidx333, align 4, !tbaa !10
  %and334 = and i32 %187, 16777216
  %tobool335 = icmp ne i32 %and334, 0
  br i1 %tobool335, label %if.end.373, label %land.lhs.true.336

land.lhs.true.336:                                ; preds = %land.lhs.true.330
  %188 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags337 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %188, i32 0, i32 0
  %189 = load i64, i64* %mci_flags337, align 8, !tbaa !53
  %and338 = and i64 %189, 25600
  %cmp339 = icmp ne i64 %and338, 0
  br i1 %cmp339, label %if.end.373, label %land.lhs.true.341

land.lhs.true.341:                                ; preds = %land.lhs.true.336
  %190 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header = getelementptr inbounds %struct.envelope, %struct.envelope* %190, i32 0, i32 0
  %191 = load %struct.header*, %struct.header** %e_header, align 8, !tbaa !33
  %call342 = call i8* @hvalue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), %struct.header* %191)
  %cmp343 = icmp eq i8* %call342, null
  br i1 %cmp343, label %if.then.345, label %if.end.373

if.then.345:                                      ; preds = %land.lhs.true.341
  %192 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call346 = call i32 @putline(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i32 0, i32 0), %struct.mailer_con_info* %192)
  %tobool347 = icmp ne i32 %call346, 0
  br i1 %tobool347, label %if.end.349, label %if.then.348

if.then.348:                                      ; preds = %if.then.345
  br label %writeerr

if.end.349:                                       ; preds = %if.then.345
  %193 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header350 = getelementptr inbounds %struct.envelope, %struct.envelope* %193, i32 0, i32 0
  %194 = load %struct.header*, %struct.header** %e_header350, align 8, !tbaa !33
  %call351 = call i8* @hvalue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), %struct.header* %194)
  %cmp352 = icmp eq i8* %call351, null
  br i1 %cmp352, label %if.then.354, label %if.end.363

if.then.354:                                      ; preds = %if.end.349
  %arraydecay355 = getelementptr inbounds [2048 x i8], [2048 x i8]* %obuf, i32 0, i32 0
  %195 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call356 = call i8* @defcharset(%struct.envelope* %195)
  %call357 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay355, i64 2048, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.71, i32 0, i32 0), i8* %call356)
  %arraydecay358 = getelementptr inbounds [2048 x i8], [2048 x i8]* %obuf, i32 0, i32 0
  %196 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call359 = call i32 @putline(i8* %arraydecay358, %struct.mailer_con_info* %196)
  %tobool360 = icmp ne i32 %call359, 0
  br i1 %tobool360, label %if.end.362, label %if.then.361

if.then.361:                                      ; preds = %if.then.354
  br label %writeerr

if.end.362:                                       ; preds = %if.then.354
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %if.end.349
  %197 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_header364 = getelementptr inbounds %struct.envelope, %struct.envelope* %197, i32 0, i32 0
  %198 = load %struct.header*, %struct.header** %e_header364, align 8, !tbaa !33
  %call365 = call i8* @hvalue(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.72, i32 0, i32 0), %struct.header* %198)
  %cmp366 = icmp eq i8* %call365, null
  br i1 %cmp366, label %land.lhs.true.368, label %if.end.372

land.lhs.true.368:                                ; preds = %if.end.363
  %199 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %call369 = call i32 @putline(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i32 0, i32 0), %struct.mailer_con_info* %199)
  %tobool370 = icmp ne i32 %call369, 0
  br i1 %tobool370, label %if.end.372, label %if.then.371

if.then.371:                                      ; preds = %land.lhs.true.368
  br label %writeerr

if.end.372:                                       ; preds = %land.lhs.true.368, %if.end.363
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372, %land.lhs.true.341, %land.lhs.true.336, %land.lhs.true.330, %land.lhs.true.325, %land.lhs.true.320, %for.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

writeerr:                                         ; preds = %cleanup.313, %if.then.371, %if.then.361, %if.then.348
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.374

cleanup.374:                                      ; preds = %writeerr, %if.end.373, %cleanup.313
  %200 = bitcast [2048 x i8]* %obuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %200) #1
  %201 = bitcast [8192 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 8192, i8* %201) #1
  %202 = bitcast %struct.header** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = load i32, i32* %retval
  ret i32 %203
}

declare i32 @wordinclass(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i64 @fix_mime_header(%struct.header* %h, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i64, align 8
  %h.addr = alloca %struct.header*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %begin = alloca i8*, align 8
  %end = alloca i8*, align 8
  %len = alloca i64, align 8
  %retlen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %save = alloca i8, align 1
  %bp = alloca i8*, align 8
  %ep = alloca i8*, align 8
  store %struct.header* %h, %struct.header** %h.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i8** %begin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.header*, %struct.header** %h.addr, align 8, !tbaa !1
  %h_value = getelementptr inbounds %struct.header, %struct.header* %1, i32 0, i32 1
  %2 = load i8*, i8** %h_value, align 8, !tbaa !29
  store i8* %2, i8** %begin, align 8, !tbaa !1
  %3 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64 0, i64* %len, align 8, !tbaa !13
  %5 = bitcast i64* %retlen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64 0, i64* %retlen, align 8, !tbaa !13
  %6 = load i8*, i8** %begin, align 8, !tbaa !1
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i8*, i8** %begin, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !12
  %conv = sext i8 %8 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %9 = load i8*, i8** %begin, align 8, !tbaa !1
  %call = call i8* @find_character(i8* %9, i32 59)
  store i8* %call, i8** %end, align 8, !tbaa !1
  %cmp3 = icmp ne i8* %call, null
  br i1 %cmp3, label %while.body, label %while.end.41

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %save) #1
  %10 = load i8*, i8** %end, align 8, !tbaa !1
  %11 = load i8, i8* %10, align 1, !tbaa !12
  store i8 %11, i8* %save, align 1, !tbaa !12
  %12 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i8*, i8** %end, align 8, !tbaa !1
  store i8 0, i8* %13, align 1, !tbaa !12
  %14 = load i8*, i8** %begin, align 8, !tbaa !1
  %call5 = call i64 @strlen(i8* %14) #8
  store i64 %call5, i64* %len, align 8, !tbaa !13
  %15 = load i8*, i8** %begin, align 8, !tbaa !1
  %16 = load i32, i32* @MaxMimeFieldLength, align 4, !tbaa !10
  %conv6 = sext i32 %16 to i64
  %call7 = call i32 @shorten_rfc822_string(i8* %15, i64 %conv6)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then.8, label %if.end.21

if.then.8:                                        ; preds = %while.body
  %17 = load i64, i64* %len, align 8, !tbaa !13
  %18 = load i32, i32* @MaxMimeFieldLength, align 4, !tbaa !10
  %conv9 = sext i32 %18 to i64
  %cmp10 = icmp ult i64 %17, %conv9
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.8
  %19 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_id = getelementptr inbounds %struct.envelope, %struct.envelope* %19, i32 0, i32 25
  %20 = load i8*, i8** %e_id, align 8, !tbaa !22
  %21 = load %struct.header*, %struct.header** %h.addr, align 8, !tbaa !1
  %h_field = getelementptr inbounds %struct.header, %struct.header* %21, i32 0, i32 0
  %22 = load i8*, i8** %h_field, align 8, !tbaa !26
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 1, i8* %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.102, i32 0, i32 0), i8* %22)
  %23 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 34), align 1, !tbaa !12
  %conv13 = zext i8 %23 to i32
  %cmp14 = icmp sge i32 %conv13, 11
  br i1 %cmp14, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.then.12
  %24 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  %25 = load %struct.header*, %struct.header** %h.addr, align 8, !tbaa !1
  %h_field18 = getelementptr inbounds %struct.header, %struct.header* %25, i32 0, i32 0
  %26 = load i8*, i8** %h_field18, align 8, !tbaa !26
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.103, i32 0, i32 0), i8* %26)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %land.lhs.true, %if.then.12
  br label %if.end.20

if.else:                                          ; preds = %if.then.8
  %27 = load i64, i64* %len, align 8, !tbaa !13
  store i64 %27, i64* %retlen, align 8, !tbaa !13
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %while.body
  %28 = load i8*, i8** %begin, align 8, !tbaa !1
  %29 = load i8*, i8** %begin, align 8, !tbaa !1
  %call22 = call i64 @strlen(i8* %29) #8
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %call22
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  %30 = load i8*, i8** %bp, align 8, !tbaa !1
  %31 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp23 = icmp ne i8* %30, %31
  br i1 %cmp23, label %if.then.25, label %if.else.32

if.then.25:                                       ; preds = %if.end.21
  %32 = bitcast i8** %ep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i8*, i8** %end, align 8, !tbaa !1
  store i8* %33, i8** %ep, align 8, !tbaa !1
  %34 = load i8, i8* %save, align 1, !tbaa !12
  %35 = load i8*, i8** %end, align 8, !tbaa !1
  store i8 %34, i8* %35, align 1, !tbaa !12
  %36 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8* %36, i8** %end, align 8, !tbaa !1
  br label %while.cond.26

while.cond.26:                                    ; preds = %while.body.30, %if.then.25
  %37 = load i8*, i8** %ep, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !12
  %conv27 = sext i8 %38 to i32
  %cmp28 = icmp ne i32 %conv27, 0
  br i1 %cmp28, label %while.body.30, label %while.end

while.body.30:                                    ; preds = %while.cond.26
  %39 = load i8*, i8** %ep, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %ep, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !12
  %41 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr31, i8** %bp, align 8, !tbaa !1
  store i8 %40, i8* %41, align 1, !tbaa !12
  br label %while.cond.26

while.end:                                        ; preds = %while.cond.26
  %42 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8 0, i8* %42, align 1, !tbaa !12
  %43 = bitcast i8** %ep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.21
  %44 = load i8, i8* %save, align 1, !tbaa !12
  %45 = load i8*, i8** %end, align 8, !tbaa !1
  store i8 %44, i8* %45, align 1, !tbaa !12
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %while.end
  %46 = load i8*, i8** %end, align 8, !tbaa !1
  %47 = load i8, i8* %46, align 1, !tbaa !12
  %conv34 = sext i8 %47 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.33
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.end.33
  %48 = load i8*, i8** %end, align 8, !tbaa !1
  %add.ptr39 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %add.ptr39, i8** %begin, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.37
  %49 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  call void @llvm.lifetime.end(i64 1, i8* %save) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end.41
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.41:                                     ; preds = %cleanup, %while.cond
  %50 = load i64, i64* %retlen, align 8, !tbaa !13
  store i64 %50, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42

cleanup.42:                                       ; preds = %while.end.41, %if.then
  %51 = bitcast i64* %retlen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i8** %begin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = load i64, i64* %retval
  ret i64 %55

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @shorten_rfc822_string(i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @put_vanilla_header(%struct.header* %h, i8* %v, %struct.mailer_con_info* %mci) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct.header*, align 8
  %v.addr = alloca i8*, align 8
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %nlp = alloca i8*, align 8
  %obp = alloca i8*, align 8
  %putflags = alloca i32, align 4
  %obuf = alloca [2304 x i8], align 16
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.header* %h, %struct.header** %h.addr, align 8, !tbaa !1
  store i8* %v, i8** %v.addr, align 8, !tbaa !1
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %0 = bitcast i8** %nlp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %obp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %putflags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast [2304 x i8]* %obuf to i8*
  call void @llvm.lifetime.start(i64 2304, i8* %3) #1
  store i32 20, i32* %putflags, align 4, !tbaa !10
  %4 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %4, i32 0, i32 11
  %5 = load %struct.mailer*, %struct.mailer** %mci_mailer, align 8, !tbaa !49
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %5, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 1
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !10
  %and = and i32 %6, 4194304
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %putflags, align 4, !tbaa !10
  %or = or i32 %7, 2
  store i32 %or, i32* %putflags, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [2304 x i8], [2304 x i8]* %obuf, i32 0, i32 0
  %8 = load %struct.header*, %struct.header** %h.addr, align 8, !tbaa !1
  %h_field = getelementptr inbounds %struct.header, %struct.header* %8, i32 0, i32 0
  %9 = load i8*, i8** %h_field, align 8, !tbaa !26
  %call = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 2304, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* %9)
  %arraydecay1 = getelementptr inbounds [2304 x i8], [2304 x i8]* %obuf, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [2304 x i8], [2304 x i8]* %obuf, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay1, i64 %call3
  store i8* %add.ptr, i8** %obp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %10 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %call4 = call i8* @strchr(i8* %10, i32 10) #1
  store i8* %call4, i8** %nlp, align 8, !tbaa !1
  %cmp = icmp ne i8* %call4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i8*, i8** %nlp, align 8, !tbaa !1
  %13 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %l, align 4, !tbaa !10
  %14 = load i8*, i8** %obp, align 8, !tbaa !1
  %arraydecay5 = getelementptr inbounds [2304 x i8], [2304 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast6 = ptrtoint i8* %14 to i64
  %sub.ptr.rhs.cast7 = ptrtoint i8* %arraydecay5 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %sub = sub i64 2304, %sub.ptr.sub8
  %sub9 = sub i64 %sub, 1
  %15 = load i32, i32* %l, align 4, !tbaa !10
  %conv10 = sext i32 %15 to i64
  %cmp11 = icmp ult i64 %sub9, %conv10
  br i1 %cmp11, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %while.body
  %16 = load i8*, i8** %obp, align 8, !tbaa !1
  %arraydecay14 = getelementptr inbounds [2304 x i8], [2304 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast15 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast16 = ptrtoint i8* %arraydecay14 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %sub18 = sub i64 2304, %sub.ptr.sub17
  %sub19 = sub i64 %sub18, 1
  %conv20 = trunc i64 %sub19 to i32
  store i32 %conv20, i32* %l, align 4, !tbaa !10
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.13, %while.body
  %17 = load i8*, i8** %obp, align 8, !tbaa !1
  %18 = load i8*, i8** %obp, align 8, !tbaa !1
  %arraydecay22 = getelementptr inbounds [2304 x i8], [2304 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast23 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast24 = ptrtoint i8* %arraydecay22 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %sub26 = sub i64 2304, %sub.ptr.sub25
  %19 = load i32, i32* %l, align 4, !tbaa !10
  %20 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %call27 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %17, i64 %sub26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i32 %19, i8* %20)
  %arraydecay28 = getelementptr inbounds [2304 x i8], [2304 x i8]* %obuf, i32 0, i32 0
  %arraydecay29 = getelementptr inbounds [2304 x i8], [2304 x i8]* %obuf, i32 0, i32 0
  %call30 = call i64 @strlen(i8* %arraydecay29) #8
  %21 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %22 = load i32, i32* %putflags, align 4, !tbaa !10
  %call31 = call i32 @putxline(i8* %arraydecay28, i64 %call30, %struct.mailer_con_info* %21, i32 %22)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.end.21
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.21
  %23 = load i32, i32* %l, align 4, !tbaa !10
  %add = add nsw i32 %23, 1
  %24 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %add to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr35, i8** %v.addr, align 8, !tbaa !1
  %arraydecay36 = getelementptr inbounds [2304 x i8], [2304 x i8]* %obuf, i32 0, i32 0
  store i8* %arraydecay36, i8** %obp, align 8, !tbaa !1
  %25 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !12
  %conv37 = sext i8 %26 to i32
  %cmp38 = icmp ne i32 %conv37, 32
  br i1 %cmp38, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.end.34
  %27 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !12
  %conv40 = sext i8 %28 to i32
  %cmp41 = icmp ne i32 %conv40, 9
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true
  %29 = load i8*, i8** %obp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %obp, align 8, !tbaa !1
  store i8 32, i8* %29, align 1, !tbaa !12
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %land.lhs.true, %if.end.34
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.33, %if.end.44
  %30 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.62 [
    i32 0, label %cleanup.cont
    i32 4, label %writeerr
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load i8*, i8** %obp, align 8, !tbaa !1
  %32 = load i8*, i8** %obp, align 8, !tbaa !1
  %arraydecay45 = getelementptr inbounds [2304 x i8], [2304 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast46 = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast47 = ptrtoint i8* %arraydecay45 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %sub49 = sub i64 2304, %sub.ptr.sub48
  %33 = load i8*, i8** %obp, align 8, !tbaa !1
  %arraydecay50 = getelementptr inbounds [2304 x i8], [2304 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast51 = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast52 = ptrtoint i8* %arraydecay50 to i64
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52
  %sub54 = sub i64 2304, %sub.ptr.sub53
  %sub55 = sub i64 %sub54, 1
  %conv56 = trunc i64 %sub55 to i32
  %34 = load i8*, i8** %v.addr, align 8, !tbaa !1
  %call57 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %31, i64 %sub49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i32 %conv56, i8* %34)
  %arraydecay58 = getelementptr inbounds [2304 x i8], [2304 x i8]* %obuf, i32 0, i32 0
  %arraydecay59 = getelementptr inbounds [2304 x i8], [2304 x i8]* %obuf, i32 0, i32 0
  %call60 = call i64 @strlen(i8* %arraydecay59) #8
  %35 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %36 = load i32, i32* %putflags, align 4, !tbaa !10
  %call61 = call i32 @putxline(i8* %arraydecay58, i64 %call60, %struct.mailer_con_info* %35, i32 %36)
  store i32 %call61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

writeerr:                                         ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.62

cleanup.62:                                       ; preds = %writeerr, %while.end, %cleanup
  %37 = bitcast [2304 x i8]* %obuf to i8*
  call void @llvm.lifetime.end(i64 2304, i8* %37) #1
  %38 = bitcast i32* %putflags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i8** %obp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i8** %nlp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare i32 @bitintersect(i32*, i32*) #2

declare i64 @sm_strlcpyn(i8*, i64, i32, ...) #2

declare i32 @putline(i8*, %struct.mailer_con_info*) #2

; Function Attrs: nounwind uwtable
define i32 @commaize(%struct.header* %h, i8* %p, i32 %oldstyle, %struct.mailer_con_info* %mci, %struct.envelope* %e, i32 %putflags) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct.header*, align 8
  %p.addr = alloca i8*, align 8
  %oldstyle.addr = alloca i32, align 4
  %mci.addr = alloca %struct.mailer_con_info*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %putflags.addr = alloca i32, align 4
  %obp = alloca i8*, align 8
  %opos = alloca i32, align 4
  %omax = alloca i32, align 4
  %spaces = alloca i32, align 4
  %firstone = alloca i32, align 4
  %res = alloca i8**, align 8
  %obuf = alloca [2051 x i8], align 16
  %name = alloca i8*, align 8
  %c = alloca i32, align 4
  %savechar = alloca i8, align 1
  %flags = alloca i32, align 4
  %status = alloca i32, align 4
  %oldp = alloca i8*, align 8
  %pvpbuf = alloca [1256 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.header* %h, %struct.header** %h.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %oldstyle, i32* %oldstyle.addr, align 4, !tbaa !10
  store %struct.mailer_con_info* %mci, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i32 %putflags, i32* %putflags.addr, align 4, !tbaa !10
  %0 = bitcast i8** %obp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %opos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %omax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %spaces to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %firstone to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1, i32* %firstone, align 4, !tbaa !10
  %5 = bitcast i8*** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast [2051 x i8]* %obuf to i8*
  call void @llvm.lifetime.start(i64 2051, i8* %6) #1
  %7 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 14), align 1, !tbaa !12
  %conv = zext i8 %7 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load volatile i32, i32* @IntSig, align 4, !tbaa !10
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.header*, %struct.header** %h.addr, align 8, !tbaa !1
  %h_field = getelementptr inbounds %struct.header, %struct.header* %9, i32 0, i32 0
  %10 = load i8*, i8** %h_field, align 8, !tbaa !26
  %11 = load i8*, i8** %p.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), i8* %10, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %12, i32 0, i32 11
  %13 = load %struct.mailer*, %struct.mailer** %mci_mailer, align 8, !tbaa !49
  %m_flags = getelementptr inbounds %struct.mailer, %struct.mailer* %13, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags, i32 0, i64 1
  %14 = load i32, i32* %arrayidx, align 4, !tbaa !10
  %and = and i32 %14, 4194304
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %15 = load i32, i32* %putflags.addr, align 4, !tbaa !10
  %or = or i32 %15, 2
  store i32 %or, i32* %putflags.addr, align 4, !tbaa !10
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %arraydecay = getelementptr inbounds [2051 x i8], [2051 x i8]* %obuf, i32 0, i32 0
  store i8* %arraydecay, i8** %obp, align 8, !tbaa !1
  %16 = load i8*, i8** %obp, align 8, !tbaa !1
  %17 = load i8*, i8** %obp, align 8, !tbaa !1
  %arraydecay5 = getelementptr inbounds [2051 x i8], [2051 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub i64 2051, %sub.ptr.sub
  %18 = load %struct.header*, %struct.header** %h.addr, align 8, !tbaa !1
  %h_field6 = getelementptr inbounds %struct.header, %struct.header* %18, i32 0, i32 0
  %19 = load i8*, i8** %h_field6, align 8, !tbaa !26
  %call = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %16, i64 %sub, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i8* %19)
  %20 = load %struct.header*, %struct.header** %h.addr, align 8, !tbaa !1
  %h_field7 = getelementptr inbounds %struct.header, %struct.header* %20, i32 0, i32 0
  %21 = load i8*, i8** %h_field7, align 8, !tbaa !26
  %call8 = call i64 @strlen(i8* %21) #8
  %add = add i64 %call8, 1
  %conv9 = trunc i64 %add to i32
  store i32 %conv9, i32* %opos, align 4, !tbaa !10
  %22 = load i32, i32* %opos, align 4, !tbaa !10
  %cmp10 = icmp sgt i32 %22, 201
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.4
  store i32 201, i32* %opos, align 4, !tbaa !10
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.4
  %23 = load i32, i32* %opos, align 4, !tbaa !10
  %24 = load i8*, i8** %obp, align 8, !tbaa !1
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr, i8** %obp, align 8, !tbaa !1
  store i32 0, i32* %spaces, align 4, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.13
  %25 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !12
  %conv14 = sext i8 %26 to i32
  %cmp15 = icmp ne i32 %conv14, 0
  br i1 %cmp15, label %land.lhs.true.17, label %land.end

land.lhs.true.17:                                 ; preds = %while.cond
  %27 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !12
  %conv18 = sext i8 %28 to i32
  %and19 = and i32 %conv18, -128
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.17
  %29 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !12
  %conv22 = sext i8 %30 to i32
  %idxprom = sext i32 %conv22 to i64
  %call23 = call i16** @__ctype_b_loc() #10
  %31 = load i16*, i16** %call23, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i16, i16* %31, i64 %idxprom
  %32 = load i16, i16* %arrayidx24, align 2, !tbaa !14
  %conv25 = zext i16 %32 to i32
  %and26 = and i32 %conv25, 8192
  %tobool27 = icmp ne i32 %and26, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.17, %while.cond
  %33 = phi i1 [ false, %land.lhs.true.17 ], [ false, %while.cond ], [ %tobool27, %land.rhs ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %34 = load i32, i32* %spaces, align 4, !tbaa !10
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %spaces, align 4, !tbaa !10
  %35 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %36 = load i32, i32* %spaces, align 4, !tbaa !10
  %cmp28 = icmp sgt i32 %36, 0
  br i1 %cmp28, label %if.then.30, label %if.end.54

if.then.30:                                       ; preds = %while.end
  %37 = load i32, i32* %opos, align 4, !tbaa !10
  %mul = mul nsw i32 %37, 2
  %conv31 = sext i32 %mul to i64
  %cmp32 = icmp ugt i64 2051, %conv31
  br i1 %cmp32, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.30
  call void @sm_abort_at(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 2077, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.76, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %38, %if.then.30
  %39 = phi i1 [ true, %if.then.30 ], [ false, %38 ]
  %lor.ext = zext i1 %39 to i32
  %40 = load i32, i32* %spaces, align 4, !tbaa !10
  %conv34 = sext i32 %40 to i64
  %cmp35 = icmp ugt i64 %conv34, 1025
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %lor.end
  store i32 1025, i32* %spaces, align 4, !tbaa !10
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %lor.end
  %41 = load i8*, i8** %obp, align 8, !tbaa !1
  %42 = load i8*, i8** %obp, align 8, !tbaa !1
  %arraydecay39 = getelementptr inbounds [2051 x i8], [2051 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast40 = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast41 = ptrtoint i8* %arraydecay39 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  %sub43 = sub i64 2051, %sub.ptr.sub42
  %43 = load i32, i32* %spaces, align 4, !tbaa !10
  %call44 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %41, i64 %sub43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i32 %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.78, i32 0, i32 0))
  %44 = load i32, i32* %spaces, align 4, !tbaa !10
  %45 = load i32, i32* %opos, align 4, !tbaa !10
  %add45 = add nsw i32 %45, %44
  store i32 %add45, i32* %opos, align 4, !tbaa !10
  %46 = load i32, i32* %spaces, align 4, !tbaa !10
  %47 = load i8*, i8** %obp, align 8, !tbaa !1
  %idx.ext46 = sext i32 %46 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %47, i64 %idx.ext46
  store i8* %add.ptr47, i8** %obp, align 8, !tbaa !1
  %48 = load i8*, i8** %obp, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds [2051 x i8], [2051 x i8]* %obuf, i32 0, i64 2048
  %cmp49 = icmp ult i8* %48, %arrayidx48
  br i1 %cmp49, label %lor.end.52, label %lor.rhs.51

lor.rhs.51:                                       ; preds = %if.end.38
  call void @sm_abort_at(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 2091, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.79, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  br label %lor.end.52

lor.end.52:                                       ; preds = %49, %if.end.38
  %50 = phi i1 [ true, %if.end.38 ], [ false, %49 ]
  %lor.ext53 = zext i1 %50 to i32
  br label %if.end.54

if.end.54:                                        ; preds = %lor.end.52, %while.end
  %51 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer55 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %51, i32 0, i32 11
  %52 = load %struct.mailer*, %struct.mailer** %mci_mailer55, align 8, !tbaa !49
  %m_linelimit = getelementptr inbounds %struct.mailer, %struct.mailer* %52, i32 0, i32 15
  %53 = load i32, i32* %m_linelimit, align 4, !tbaa !54
  %sub56 = sub nsw i32 %53, 2
  store i32 %sub56, i32* %omax, align 4, !tbaa !10
  %54 = load i32, i32* %omax, align 4, !tbaa !10
  %cmp57 = icmp slt i32 %54, 0
  br i1 %cmp57, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.54
  %55 = load i32, i32* %omax, align 4, !tbaa !10
  %cmp59 = icmp sgt i32 %55, 78
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %lor.lhs.false, %if.end.54
  store i32 78, i32* %omax, align 4, !tbaa !10
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %lor.lhs.false
  br label %while.cond.63

while.cond.63:                                    ; preds = %cleanup.cont.301, %cleanup.295, %if.end.62
  %56 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !12
  %conv64 = sext i8 %57 to i32
  %cmp65 = icmp ne i32 %conv64, 0
  br i1 %cmp65, label %while.body.67, label %while.end.302

while.body.67:                                    ; preds = %while.cond.63
  %58 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  %59 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  call void @llvm.lifetime.start(i64 1, i8* %savechar) #1
  %60 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  br label %while.cond.68

while.cond.68:                                    ; preds = %while.body.87, %while.body.67
  %62 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %63 = load i8, i8* %62, align 1, !tbaa !12
  %conv69 = sext i8 %63 to i32
  %and70 = and i32 %conv69, -128
  %cmp71 = icmp eq i32 %and70, 0
  br i1 %cmp71, label %land.lhs.true.73, label %lor.rhs.81

land.lhs.true.73:                                 ; preds = %while.cond.68
  %64 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %65 = load i8, i8* %64, align 1, !tbaa !12
  %conv74 = sext i8 %65 to i32
  %idxprom75 = sext i32 %conv74 to i64
  %call76 = call i16** @__ctype_b_loc() #10
  %66 = load i16*, i16** %call76, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i16, i16* %66, i64 %idxprom75
  %67 = load i16, i16* %arrayidx77, align 2, !tbaa !14
  %conv78 = zext i16 %67 to i32
  %and79 = and i32 %conv78, 8192
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %lor.end.85, label %lor.rhs.81

lor.rhs.81:                                       ; preds = %land.lhs.true.73, %while.cond.68
  %68 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !12
  %conv82 = sext i8 %69 to i32
  %cmp83 = icmp eq i32 %conv82, 44
  br label %lor.end.85

lor.end.85:                                       ; preds = %lor.rhs.81, %land.lhs.true.73
  %70 = phi i1 [ true, %land.lhs.true.73 ], [ %cmp83, %lor.rhs.81 ]
  br i1 %70, label %while.body.87, label %while.end.89

while.body.87:                                    ; preds = %lor.end.85
  %71 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr88 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr88, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond.68

while.end.89:                                     ; preds = %lor.end.85
  %72 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8* %72, i8** %name, align 8, !tbaa !1
  store i8** null, i8*** %res, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %while.end.89
  %73 = bitcast i8** %oldp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  %74 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.start(i64 1256, i8* %74) #1
  %75 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %76 = load i32, i32* %oldstyle.addr, align 4, !tbaa !10
  %tobool90 = icmp ne i32 %76, 0
  %cond = select i1 %tobool90, i32 32, i32 44
  %arraydecay91 = getelementptr inbounds [1256 x i8], [1256 x i8]* %pvpbuf, i32 0, i32 0
  %call92 = call i8** @prescan(i8* %75, i32 %cond, i8* %arraydecay91, i32 1256, i8** %oldp, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @ExtTokenTab, i32 0, i32 0), i32 0)
  store i8** %call92, i8*** %res, align 8, !tbaa !1
  %77 = load i8*, i8** %oldp, align 8, !tbaa !1
  store i8* %77, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond.93

while.cond.93:                                    ; preds = %while.body.111, %for.cond
  %78 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %79 = load i8, i8* %78, align 1, !tbaa !12
  %conv94 = sext i8 %79 to i32
  %cmp95 = icmp ne i32 %conv94, 0
  br i1 %cmp95, label %land.lhs.true.97, label %land.end.110

land.lhs.true.97:                                 ; preds = %while.cond.93
  %80 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %81 = load i8, i8* %80, align 1, !tbaa !12
  %conv98 = sext i8 %81 to i32
  %and99 = and i32 %conv98, -128
  %cmp100 = icmp eq i32 %and99, 0
  br i1 %cmp100, label %land.rhs.102, label %land.end.110

land.rhs.102:                                     ; preds = %land.lhs.true.97
  %82 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %83 = load i8, i8* %82, align 1, !tbaa !12
  %conv103 = sext i8 %83 to i32
  %idxprom104 = sext i32 %conv103 to i64
  %call105 = call i16** @__ctype_b_loc() #10
  %84 = load i16*, i16** %call105, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i16, i16* %84, i64 %idxprom104
  %85 = load i16, i16* %arrayidx106, align 2, !tbaa !14
  %conv107 = zext i16 %85 to i32
  %and108 = and i32 %conv107, 8192
  %tobool109 = icmp ne i32 %and108, 0
  br label %land.end.110

land.end.110:                                     ; preds = %land.rhs.102, %land.lhs.true.97, %while.cond.93
  %86 = phi i1 [ false, %land.lhs.true.97 ], [ false, %while.cond.93 ], [ %tobool109, %land.rhs.102 ]
  br i1 %86, label %while.body.111, label %while.end.113

while.body.111:                                   ; preds = %land.end.110
  %87 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr112 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr112, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond.93

while.end.113:                                    ; preds = %land.end.110
  %88 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %89 = load i8, i8* %88, align 1, !tbaa !12
  %conv114 = sext i8 %89 to i32
  %cmp115 = icmp ne i32 %conv114, 64
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %while.end.113
  %90 = load i8*, i8** %oldp, align 8, !tbaa !1
  store i8* %90, i8** %p.addr, align 8, !tbaa !1
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.118:                                       ; preds = %while.end.113
  %91 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr119 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr119, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond.120

while.cond.120:                                   ; preds = %while.body.138, %if.end.118
  %92 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %93 = load i8, i8* %92, align 1, !tbaa !12
  %conv121 = sext i8 %93 to i32
  %cmp122 = icmp ne i32 %conv121, 0
  br i1 %cmp122, label %land.lhs.true.124, label %land.end.137

land.lhs.true.124:                                ; preds = %while.cond.120
  %94 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %95 = load i8, i8* %94, align 1, !tbaa !12
  %conv125 = sext i8 %95 to i32
  %and126 = and i32 %conv125, -128
  %cmp127 = icmp eq i32 %and126, 0
  br i1 %cmp127, label %land.rhs.129, label %land.end.137

land.rhs.129:                                     ; preds = %land.lhs.true.124
  %96 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %97 = load i8, i8* %96, align 1, !tbaa !12
  %conv130 = sext i8 %97 to i32
  %idxprom131 = sext i32 %conv130 to i64
  %call132 = call i16** @__ctype_b_loc() #10
  %98 = load i16*, i16** %call132, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i16, i16* %98, i64 %idxprom131
  %99 = load i16, i16* %arrayidx133, align 2, !tbaa !14
  %conv134 = zext i16 %99 to i32
  %and135 = and i32 %conv134, 8192
  %tobool136 = icmp ne i32 %and135, 0
  br label %land.end.137

land.end.137:                                     ; preds = %land.rhs.129, %land.lhs.true.124, %while.cond.120
  %100 = phi i1 [ false, %land.lhs.true.124 ], [ false, %while.cond.120 ], [ %tobool136, %land.rhs.129 ]
  br i1 %100, label %while.body.138, label %while.end.140

while.body.138:                                   ; preds = %land.end.137
  %101 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr139 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr139, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond.120

while.end.140:                                    ; preds = %land.end.137
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.140, %if.then.117
  %102 = bitcast [1256 x i8]* %pvpbuf to i8*
  call void @llvm.lifetime.end(i64 1256, i8* %102) #1
  %103 = bitcast i8** %oldp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup
  br label %while.cond.142

while.cond.142:                                   ; preds = %while.body.169, %for.end
  %104 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %105 = load i8*, i8** %name, align 8, !tbaa !1
  %cmp143 = icmp uge i8* %104, %105
  br i1 %cmp143, label %land.rhs.145, label %land.end.168

land.rhs.145:                                     ; preds = %while.cond.142
  %106 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %107 = load i8, i8* %106, align 1, !tbaa !12
  %conv146 = sext i8 %107 to i32
  %and147 = and i32 %conv146, -128
  %cmp148 = icmp eq i32 %and147, 0
  br i1 %cmp148, label %land.lhs.true.150, label %lor.lhs.false.158

land.lhs.true.150:                                ; preds = %land.rhs.145
  %108 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %109 = load i8, i8* %108, align 1, !tbaa !12
  %conv151 = sext i8 %109 to i32
  %idxprom152 = sext i32 %conv151 to i64
  %call153 = call i16** @__ctype_b_loc() #10
  %110 = load i16*, i16** %call153, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds i16, i16* %110, i64 %idxprom152
  %111 = load i16, i16* %arrayidx154, align 2, !tbaa !14
  %conv155 = zext i16 %111 to i32
  %and156 = and i32 %conv155, 8192
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %lor.end.166, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %land.lhs.true.150, %land.rhs.145
  %112 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %113 = load i8, i8* %112, align 1, !tbaa !12
  %conv159 = sext i8 %113 to i32
  %cmp160 = icmp eq i32 %conv159, 44
  br i1 %cmp160, label %lor.end.166, label %lor.rhs.162

lor.rhs.162:                                      ; preds = %lor.lhs.false.158
  %114 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %115 = load i8, i8* %114, align 1, !tbaa !12
  %conv163 = sext i8 %115 to i32
  %cmp164 = icmp eq i32 %conv163, 0
  br label %lor.end.166

lor.end.166:                                      ; preds = %lor.rhs.162, %lor.lhs.false.158, %land.lhs.true.150
  %116 = phi i1 [ true, %lor.lhs.false.158 ], [ true, %land.lhs.true.150 ], [ %cmp164, %lor.rhs.162 ]
  br label %land.end.168

land.end.168:                                     ; preds = %lor.end.166, %while.cond.142
  %117 = phi i1 [ false, %while.cond.142 ], [ %116, %lor.end.166 ]
  br i1 %117, label %while.body.169, label %while.end.171

while.body.169:                                   ; preds = %land.end.168
  %118 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr170 = getelementptr inbounds i8, i8* %118, i32 -1
  store i8* %incdec.ptr170, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond.142

while.end.171:                                    ; preds = %land.end.168
  %119 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr172 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr172, i8** %p.addr, align 8, !tbaa !1
  %120 = load i8*, i8** %name, align 8, !tbaa !1
  %cmp173 = icmp eq i8* %incdec.ptr172, %120
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %while.end.171
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.176:                                       ; preds = %while.end.171
  %121 = load i8**, i8*** %res, align 8, !tbaa !1
  %cmp177 = icmp eq i8** %121, null
  br i1 %cmp177, label %land.lhs.true.179, label %if.end.205

land.lhs.true.179:                                ; preds = %if.end.176
  %122 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %123 = load i8*, i8** %name, align 8, !tbaa !1
  %cmp180 = icmp ugt i8* %122, %123
  br i1 %cmp180, label %land.lhs.true.182, label %if.end.205

land.lhs.true.182:                                ; preds = %land.lhs.true.179
  %124 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %125 = load i8, i8* %124, align 1, !tbaa !12
  %conv183 = sext i8 %125 to i32
  %and184 = and i32 %conv183, -128
  %cmp185 = icmp eq i32 %and184, 0
  br i1 %cmp185, label %land.lhs.true.187, label %lor.lhs.false.195

land.lhs.true.187:                                ; preds = %land.lhs.true.182
  %126 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %127 = load i8, i8* %126, align 1, !tbaa !12
  %conv188 = sext i8 %127 to i32
  %idxprom189 = sext i32 %conv188 to i64
  %call190 = call i16** @__ctype_b_loc() #10
  %128 = load i16*, i16** %call190, align 8, !tbaa !1
  %arrayidx191 = getelementptr inbounds i16, i16* %128, i64 %idxprom189
  %129 = load i16, i16* %arrayidx191, align 2, !tbaa !14
  %conv192 = zext i16 %129 to i32
  %and193 = and i32 %conv192, 8192
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %if.end.205, label %lor.lhs.false.195

lor.lhs.false.195:                                ; preds = %land.lhs.true.187, %land.lhs.true.182
  %130 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %131 = load i8, i8* %130, align 1, !tbaa !12
  %conv196 = sext i8 %131 to i32
  %cmp197 = icmp eq i32 %conv196, 44
  br i1 %cmp197, label %if.end.205, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %lor.lhs.false.195
  %132 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %133 = load i8, i8* %132, align 1, !tbaa !12
  %conv200 = sext i8 %133 to i32
  %cmp201 = icmp eq i32 %conv200, 0
  br i1 %cmp201, label %if.end.205, label %if.then.203

if.then.203:                                      ; preds = %lor.lhs.false.199
  %134 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr204 = getelementptr inbounds i8, i8* %134, i32 -1
  store i8* %incdec.ptr204, i8** %p.addr, align 8, !tbaa !1
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %lor.lhs.false.199, %lor.lhs.false.195, %land.lhs.true.187, %land.lhs.true.179, %if.end.176
  %135 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %136 = load i8, i8* %135, align 1, !tbaa !12
  store i8 %136, i8* %savechar, align 1, !tbaa !12
  %137 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8 0, i8* %137, align 1, !tbaa !12
  store i32 10, i32* %flags, align 4, !tbaa !10
  %138 = load %struct.header*, %struct.header** %h.addr, align 8, !tbaa !1
  %h_flags = getelementptr inbounds %struct.header, %struct.header* %138, i32 0, i32 4
  %139 = load i64, i64* %h_flags, align 8, !tbaa !28
  %and206 = and i64 %139, 256
  %cmp207 = icmp ne i64 %and206, 0
  br i1 %cmp207, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %if.end.205
  %140 = load i32, i32* %flags, align 4, !tbaa !10
  %or210 = or i32 %140, 1
  store i32 %or210, i32* %flags, align 4, !tbaa !10
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.209, %if.end.205
  store i32 0, i32* %status, align 4, !tbaa !10
  %141 = load i8*, i8** %name, align 8, !tbaa !1
  %142 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer212 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %142, i32 0, i32 11
  %143 = load %struct.mailer*, %struct.mailer** %mci_mailer212, align 8, !tbaa !49
  %144 = load i32, i32* %flags, align 4, !tbaa !10
  %145 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call213 = call i8* @remotename(i8* %141, %struct.mailer* %143, i32 %144, i32* %status, %struct.envelope* %145)
  store i8* %call213, i8** %name, align 8, !tbaa !1
  %146 = load i32, i32* %status, align 4, !tbaa !10
  %cmp214 = icmp ne i32 %146, 0
  br i1 %cmp214, label %land.lhs.true.216, label %if.end.227

land.lhs.true.216:                                ; preds = %if.end.211
  %147 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_mailer217 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %147, i32 0, i32 11
  %148 = load %struct.mailer*, %struct.mailer** %mci_mailer217, align 8, !tbaa !49
  %m_flags218 = getelementptr inbounds %struct.mailer, %struct.mailer* %148, i32 0, i32 5
  %arrayidx219 = getelementptr inbounds [8 x i32], [8 x i32]* %m_flags218, i32 0, i64 0
  %149 = load i32, i32* %arrayidx219, align 4, !tbaa !10
  %and220 = and i32 %149, 2
  %tobool221 = icmp ne i32 %and220, 0
  br i1 %tobool221, label %if.then.222, label %if.end.227

if.then.222:                                      ; preds = %land.lhs.true.216
  %150 = load i32, i32* %status, align 4, !tbaa !10
  %cmp223 = icmp eq i32 %150, 75
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %if.then.222
  %151 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %mci_flags = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %151, i32 0, i32 0
  %152 = load i64, i64* %mci_flags, align 8, !tbaa !53
  store i64 %152, i64* %mci_flags, align 8, !tbaa !53
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.225, %if.then.222
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.227:                                       ; preds = %land.lhs.true.216, %if.end.211
  %153 = load i8*, i8** %name, align 8, !tbaa !1
  %154 = load i8, i8* %153, align 1, !tbaa !12
  %conv228 = sext i8 %154 to i32
  %cmp229 = icmp eq i32 %conv228, 0
  br i1 %cmp229, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %if.end.227
  %155 = load i8, i8* %savechar, align 1, !tbaa !12
  %156 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8 %155, i8* %156, align 1, !tbaa !12
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.232:                                       ; preds = %if.end.227
  %157 = load i8*, i8** %name, align 8, !tbaa !1
  %call233 = call i8* @denlstring(i8* %157, i32 0, i32 1)
  store i8* %call233, i8** %name, align 8, !tbaa !1
  %158 = load i8*, i8** %name, align 8, !tbaa !1
  %call234 = call i64 @strlen(i8* %158) #8
  %159 = load i32, i32* %opos, align 4, !tbaa !10
  %conv235 = sext i32 %159 to i64
  %add236 = add i64 %conv235, %call234
  %conv237 = trunc i64 %add236 to i32
  store i32 %conv237, i32* %opos, align 4, !tbaa !10
  %160 = load i32, i32* %firstone, align 4, !tbaa !10
  %tobool238 = icmp ne i32 %160, 0
  br i1 %tobool238, label %if.end.241, label %if.then.239

if.then.239:                                      ; preds = %if.end.232
  %161 = load i32, i32* %opos, align 4, !tbaa !10
  %add240 = add nsw i32 %161, 2
  store i32 %add240, i32* %opos, align 4, !tbaa !10
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.239, %if.end.232
  %162 = load i32, i32* %opos, align 4, !tbaa !10
  %163 = load i32, i32* %omax, align 4, !tbaa !10
  %cmp242 = icmp sgt i32 %162, %163
  br i1 %cmp242, label %land.lhs.true.244, label %if.else

land.lhs.true.244:                                ; preds = %if.end.241
  %164 = load i32, i32* %firstone, align 4, !tbaa !10
  %tobool245 = icmp ne i32 %164, 0
  br i1 %tobool245, label %if.else, label %if.then.246

if.then.246:                                      ; preds = %land.lhs.true.244
  %165 = load i8*, i8** %obp, align 8, !tbaa !1
  %166 = load i8*, i8** %obp, align 8, !tbaa !1
  %arraydecay247 = getelementptr inbounds [2051 x i8], [2051 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast248 = ptrtoint i8* %166 to i64
  %sub.ptr.rhs.cast249 = ptrtoint i8* %arraydecay247 to i64
  %sub.ptr.sub250 = sub i64 %sub.ptr.lhs.cast248, %sub.ptr.rhs.cast249
  %sub251 = sub i64 2051, %sub.ptr.sub250
  %call252 = call i64 @sm_strlcpy(i8* %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i32 0, i32 0), i64 %sub251)
  %arraydecay253 = getelementptr inbounds [2051 x i8], [2051 x i8]* %obuf, i32 0, i32 0
  %arraydecay254 = getelementptr inbounds [2051 x i8], [2051 x i8]* %obuf, i32 0, i32 0
  %call255 = call i64 @strlen(i8* %arraydecay254) #8
  %167 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %168 = load i32, i32* %putflags.addr, align 4, !tbaa !10
  %call256 = call i32 @putxline(i8* %arraydecay253, i64 %call255, %struct.mailer_con_info* %167, i32 %168)
  %tobool257 = icmp ne i32 %call256, 0
  br i1 %tobool257, label %if.end.259, label %if.then.258

if.then.258:                                      ; preds = %if.then.246
  store i32 16, i32* %cleanup.dest.slot
  br label %cleanup.295

if.end.259:                                       ; preds = %if.then.246
  %arraydecay260 = getelementptr inbounds [2051 x i8], [2051 x i8]* %obuf, i32 0, i32 0
  store i8* %arraydecay260, i8** %obp, align 8, !tbaa !1
  %169 = load i8*, i8** %obp, align 8, !tbaa !1
  %call261 = call i64 @sm_strlcpy(i8* %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i64 2051)
  %170 = load i8*, i8** %obp, align 8, !tbaa !1
  %call262 = call i64 @strlen(i8* %170) #8
  %conv263 = trunc i64 %call262 to i32
  store i32 %conv263, i32* %opos, align 4, !tbaa !10
  %171 = load i32, i32* %opos, align 4, !tbaa !10
  %172 = load i8*, i8** %obp, align 8, !tbaa !1
  %idx.ext264 = sext i32 %171 to i64
  %add.ptr265 = getelementptr inbounds i8, i8* %172, i64 %idx.ext264
  store i8* %add.ptr265, i8** %obp, align 8, !tbaa !1
  %173 = load i8*, i8** %name, align 8, !tbaa !1
  %call266 = call i64 @strlen(i8* %173) #8
  %174 = load i32, i32* %opos, align 4, !tbaa !10
  %conv267 = sext i32 %174 to i64
  %add268 = add i64 %conv267, %call266
  %conv269 = trunc i64 %add268 to i32
  store i32 %conv269, i32* %opos, align 4, !tbaa !10
  br label %if.end.280

if.else:                                          ; preds = %land.lhs.true.244, %if.end.241
  %175 = load i32, i32* %firstone, align 4, !tbaa !10
  %tobool270 = icmp ne i32 %175, 0
  br i1 %tobool270, label %if.end.279, label %if.then.271

if.then.271:                                      ; preds = %if.else
  %176 = load i8*, i8** %obp, align 8, !tbaa !1
  %177 = load i8*, i8** %obp, align 8, !tbaa !1
  %arraydecay272 = getelementptr inbounds [2051 x i8], [2051 x i8]* %obuf, i32 0, i32 0
  %sub.ptr.lhs.cast273 = ptrtoint i8* %177 to i64
  %sub.ptr.rhs.cast274 = ptrtoint i8* %arraydecay272 to i64
  %sub.ptr.sub275 = sub i64 %sub.ptr.lhs.cast273, %sub.ptr.rhs.cast274
  %sub276 = sub i64 2051, %sub.ptr.sub275
  %call277 = call i64 @sm_strlcpy(i8* %176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0), i64 %sub276)
  %178 = load i8*, i8** %obp, align 8, !tbaa !1
  %add.ptr278 = getelementptr inbounds i8, i8* %178, i64 2
  store i8* %add.ptr278, i8** %obp, align 8, !tbaa !1
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.271, %if.else
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.end.259
  br label %while.cond.281

while.cond.281:                                   ; preds = %while.body.291, %if.end.280
  %179 = load i8*, i8** %name, align 8, !tbaa !1
  %incdec.ptr282 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %incdec.ptr282, i8** %name, align 8, !tbaa !1
  %180 = load i8, i8* %179, align 1, !tbaa !12
  %conv283 = sext i8 %180 to i32
  store i32 %conv283, i32* %c, align 4, !tbaa !10
  %cmp284 = icmp ne i32 %conv283, 0
  br i1 %cmp284, label %land.rhs.286, label %land.end.290

land.rhs.286:                                     ; preds = %while.cond.281
  %181 = load i8*, i8** %obp, align 8, !tbaa !1
  %arrayidx287 = getelementptr inbounds [2051 x i8], [2051 x i8]* %obuf, i32 0, i64 2048
  %cmp288 = icmp ult i8* %181, %arrayidx287
  br label %land.end.290

land.end.290:                                     ; preds = %land.rhs.286, %while.cond.281
  %182 = phi i1 [ false, %while.cond.281 ], [ %cmp288, %land.rhs.286 ]
  br i1 %182, label %while.body.291, label %while.end.294

while.body.291:                                   ; preds = %land.end.290
  %183 = load i32, i32* %c, align 4, !tbaa !10
  %conv292 = trunc i32 %183 to i8
  %184 = load i8*, i8** %obp, align 8, !tbaa !1
  %incdec.ptr293 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr293, i8** %obp, align 8, !tbaa !1
  store i8 %conv292, i8* %184, align 1, !tbaa !12
  br label %while.cond.281

while.end.294:                                    ; preds = %land.end.290
  store i32 0, i32* %firstone, align 4, !tbaa !10
  %185 = load i8, i8* %savechar, align 1, !tbaa !12
  %186 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8 %185, i8* %186, align 1, !tbaa !12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.295

cleanup.295:                                      ; preds = %if.then.258, %if.end.226, %while.end.294, %if.then.231, %if.then.175
  %187 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  call void @llvm.lifetime.end(i64 1, i8* %savechar) #1
  %189 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i8** %name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %cleanup.dest.300 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.300, label %cleanup.314 [
    i32 0, label %cleanup.cont.301
    i32 4, label %while.cond.63
    i32 16, label %writeerr
  ]

cleanup.cont.301:                                 ; preds = %cleanup.295
  br label %while.cond.63

while.end.302:                                    ; preds = %while.cond.63
  %191 = load i8*, i8** %obp, align 8, !tbaa !1
  %arrayidx303 = getelementptr inbounds [2051 x i8], [2051 x i8]* %obuf, i32 0, i64 2051
  %cmp304 = icmp ult i8* %191, %arrayidx303
  br i1 %cmp304, label %if.then.306, label %if.else.307

if.then.306:                                      ; preds = %while.end.302
  %192 = load i8*, i8** %obp, align 8, !tbaa !1
  store i8 0, i8* %192, align 1, !tbaa !12
  br label %if.end.309

if.else.307:                                      ; preds = %while.end.302
  %arrayidx308 = getelementptr inbounds [2051 x i8], [2051 x i8]* %obuf, i32 0, i64 2050
  store i8 0, i8* %arrayidx308, align 1, !tbaa !12
  br label %if.end.309

if.end.309:                                       ; preds = %if.else.307, %if.then.306
  %arraydecay310 = getelementptr inbounds [2051 x i8], [2051 x i8]* %obuf, i32 0, i32 0
  %arraydecay311 = getelementptr inbounds [2051 x i8], [2051 x i8]* %obuf, i32 0, i32 0
  %call312 = call i64 @strlen(i8* %arraydecay311) #8
  %193 = load %struct.mailer_con_info*, %struct.mailer_con_info** %mci.addr, align 8, !tbaa !1
  %194 = load i32, i32* %putflags.addr, align 4, !tbaa !10
  %call313 = call i32 @putxline(i8* %arraydecay310, i64 %call312, %struct.mailer_con_info* %193, i32 %194)
  store i32 %call313, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.314

writeerr:                                         ; preds = %cleanup.295
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.314

cleanup.314:                                      ; preds = %writeerr, %if.end.309, %cleanup.295
  %195 = bitcast [2051 x i8]* %obuf to i8*
  call void @llvm.lifetime.end(i64 2051, i8* %195) #1
  %196 = bitcast i8*** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i32* %firstone to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %spaces to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %omax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %opos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i8** %obp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = load i32, i32* %retval
  ret i32 %202

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i8* @defcharset(%struct.envelope*) #2

declare i8* @remotename(i8*, %struct.mailer*, i32, i32*, %struct.envelope*) #2

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

declare i32 @putxline(i8*, i64, %struct.mailer_con_info*, i32) #2

; Function Attrs: nounwind uwtable
define %struct.header* @copyheader(%struct.header* %header, %struct.SM_RPOOL_T* %rpool) #0 {
entry:
  %header.addr = alloca %struct.header*, align 8
  %rpool.addr = alloca %struct.SM_RPOOL_T*, align 8
  %newhdr = alloca %struct.header*, align 8
  %ret = alloca %struct.header*, align 8
  %tail = alloca %struct.header**, align 8
  store %struct.header* %header, %struct.header** %header.addr, align 8, !tbaa !1
  store %struct.SM_RPOOL_T* %rpool, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %0 = bitcast %struct.header** %newhdr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.header** %ret to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.header*** %tail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.header** %ret, %struct.header*** %tail, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.header*, %struct.header** %header.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.header* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %rpool.addr, align 8, !tbaa !1
  %5 = load i32, i32* @SmHeapGroup, align 4, !tbaa !10
  %call = call i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T* %4, i64 72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 2266, i32 %5)
  %6 = bitcast i8* %call to %struct.header*
  store %struct.header* %6, %struct.header** %newhdr, align 8, !tbaa !1
  %7 = load %struct.header*, %struct.header** %newhdr, align 8, !tbaa !1
  %8 = load %struct.header*, %struct.header** %header.addr, align 8, !tbaa !1
  %9 = bitcast %struct.header* %7 to i8*
  %10 = bitcast %struct.header* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 72, i32 8, i1 false), !tbaa.struct !55
  %11 = load %struct.header*, %struct.header** %newhdr, align 8, !tbaa !1
  %12 = load %struct.header**, %struct.header*** %tail, align 8, !tbaa !1
  store %struct.header* %11, %struct.header** %12, align 8, !tbaa !1
  %13 = load %struct.header*, %struct.header** %newhdr, align 8, !tbaa !1
  %h_link = getelementptr inbounds %struct.header, %struct.header* %13, i32 0, i32 2
  store %struct.header** %h_link, %struct.header*** %tail, align 8, !tbaa !1
  %14 = load %struct.header*, %struct.header** %header.addr, align 8, !tbaa !1
  %h_link1 = getelementptr inbounds %struct.header, %struct.header* %14, i32 0, i32 2
  %15 = load %struct.header*, %struct.header** %h_link1, align 8, !tbaa !32
  store %struct.header* %15, %struct.header** %header.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct.header**, %struct.header*** %tail, align 8, !tbaa !1
  store %struct.header* null, %struct.header** %16, align 8, !tbaa !1
  %17 = load %struct.header*, %struct.header** %ret, align 8, !tbaa !1
  %18 = bitcast %struct.header*** %tail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.header** %ret to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast %struct.header** %newhdr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret %struct.header* %17
}

declare i8* @sm_rpool_malloc_tagged_x(%struct.SM_RPOOL_T*, i64, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i8* @macname(i32) #2

declare void @syserr(i8*, ...) #2

declare i32 @strtorwset(i8*, i8**, i32) #2

declare i8* @newstr(i8*) #2

declare i32 @rscheck(i8*, i8*, i8*, %struct.envelope*, i32, i32, i8*, i8*, %struct.address*, i8**) #2

declare i8* @find_character(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"hdrinfo", !2, i64 0, !7, i64 8, !2, i64 16}
!7 = !{!"long", !3, i64 0}
!8 = !{!6, !7, i64 8}
!9 = !{!6, !2, i64 16}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !3, i64 0}
!12 = !{!3, !3, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !3, i64 0}
!16 = !{!17, !7, i64 272}
!17 = !{!"envelope", !2, i64 0, !7, i64 8, !7, i64 16, !2, i64 24, !18, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !7, i64 256, !2, i64 264, !7, i64 272, !11, i64 280, !15, i64 284, !15, i64 286, !15, i64 288, !15, i64 290, !15, i64 292, !15, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !11, i64 368, !11, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !7, i64 456, !11, i64 464, !7, i64 472, !7, i64 480, !19, i64 488, !2, i64 2576, !2, i64 2584, !20, i64 2592, !7, i64 2624, !11, i64 2632, !2, i64 2640, !11, i64 2648}
!18 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !11, i64 48, !11, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !7, i64 144, !2, i64 152, !15, i64 160, !2, i64 168, !11, i64 176, !11, i64 180, !2, i64 184}
!19 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!20 = !{!"sm_timers", !21, i64 0}
!21 = !{!"_timer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!22 = !{!17, !2, i64 344}
!23 = !{!17, !2, i64 32}
!24 = !{!17, !2, i64 64}
!25 = !{!17, !2, i64 40}
!26 = !{!27, !2, i64 0}
!27 = !{!"header", !2, i64 0, !2, i64 8, !2, i64 16, !3, i64 24, !7, i64 32, !3, i64 40}
!28 = !{!27, !7, i64 32}
!29 = !{!27, !2, i64 8}
!30 = !{!27, !3, i64 24}
!31 = !{!17, !2, i64 2640}
!32 = !{!27, !2, i64 16}
!33 = !{!17, !2, i64 0}
!34 = !{!17, !2, i64 224}
!35 = !{!17, !2, i64 432}
!36 = !{!17, !2, i64 264}
!37 = !{!17, !15, i64 286}
!38 = !{!17, !15, i64 284}
!39 = !{!17, !15, i64 294}
!40 = !{!17, !7, i64 256}
!41 = !{!17, !11, i64 280}
!42 = !{!17, !7, i64 8}
!43 = !{!17, !2, i64 328}
!44 = !{!45, !2, i64 0}
!45 = !{!"priority", !2, i64 0, !11, i64 8}
!46 = !{!45, !11, i64 8}
!47 = !{!48, !15, i64 0}
!48 = !{!"sockaddr", !15, i64 0, !3, i64 2}
!49 = !{!50, !2, i64 64}
!50 = !{!"mailer_con_info", !7, i64 0, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !11, i64 16, !7, i64 24, !2, i64 32, !2, i64 40, !11, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !7, i64 96, !2, i64 104, !2, i64 112, !7, i64 120, !11, i64 128, !2, i64 136, !2, i64 144, !11, i64 152, !2, i64 160, !19, i64 168}
!51 = !{!52, !2, i64 0}
!52 = !{!"mailer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !3, i64 40, !15, i64 72, !15, i64 74, !2, i64 80, !15, i64 88, !15, i64 90, !15, i64 92, !15, i64 94, !2, i64 96, !7, i64 104, !11, i64 112, !11, i64 116, !2, i64 120, !2, i64 128, !11, i64 136, !11, i64 140, !2, i64 144, !7, i64 152, !11, i64 160, !15, i64 164}
!53 = !{!50, !7, i64 0}
!54 = !{!52, !11, i64 112}
!55 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 1, !12, i64 32, i64 8, !13, i64 40, i64 32, !12}
