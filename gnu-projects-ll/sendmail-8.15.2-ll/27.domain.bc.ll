; ModuleID = '27.domain.bc'
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
%struct.HEADER = type { [12 x i8] }
%union.querybuf = type { [8192 x i8] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.__res_state = type { i32, i32, i64, i32, [3 x %struct.sockaddr_in], i16, [7 x i8*], [256 x i8], i64, i32, [10 x %struct.anon], i32 (%struct.sockaddr_in**, i8**, i32*, i8*, i32, i32*)*, i32 (%struct.sockaddr_in*, i8*, i32, i8*, i32, i32*)*, i32, i32, i32, %union.anon }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.anon = type { %struct.in_addr, i32 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i16, [3 x i16], [3 x i32], i16, i16, [3 x %struct.sockaddr_in6*], [2 x i32] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
%struct._map = type { %struct._mapclass*, %struct._mapclass*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8*, i8*, i8*, i8*, i64, i64, i32, i32, i32, i16, [12 x %struct._map*], [5 x i16] }
%struct._mapclass = type { i8*, i8*, i16, i32 (%struct._map*, i8*)*, {}*, void (%struct._map*, i8*, i8*)*, i32 (%struct._map*, i32)*, void (%struct._map*)* }

@NumFallbackMXHosts = global i32 0, align 4
@getfallbackmxrr.renew = internal global i64 0, align 8
@fbhosts = internal global [101 x i8*] zeroinitializer, align 16
@.str = private unnamed_addr constant [9 x i8] c"domain.c\00", align 1
@FallbackMX = external global i8*, align 8
@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"getmxrr(%s, droplocalhost=%d)\0A\00", align 1
@UseNameServer = external global i32, align 4
@HasWildcardMX = external global i32, align 4
@ConfigLevel = external global i32, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"getmxrr: res_search(%s) failed (errno=%d, h_errno=%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"getmxrr: res_search (%s) failed with impossible h_errno (%d)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"SM_ASSERT(buflen > 0) failed\00", align 1
@MXHostBuf = internal global [12800 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [36 x i8] c"unexpected answer type %d, size %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"found localhost (%s) in MX list, pref=%d\0A\00", align 1
@TryNullMXList = external global i32, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"MX list for %s points back to %s\00", align 1
@MyHostName = external global i8*, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"Host name %s too long\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"bestmx_map_lookup: MX host %.64s includes map delimiter character 0x%02X\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"dns_getcanonname(%s, trymx=%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"dns_getcanonname: trying %s.%s (%s)\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"MX\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"\09NO: errno=%d, h_errno=%d\0A\00", align 1
@WorkAroundBrokenAAAA = external global i32, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"\09YES\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"SM_ASSERT(ret >= 0) failed\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"qdcount failure (%d)\0A\00", align 1
@DontExpandCnames = external global i32, align 4
@.str.20 = private unnamed_addr constant [31 x i8] c"DNS failure: CNAME loop for %s\00", align 1
@CurEnv = external global %struct.envelope*, align 8
@.str.21 = private unnamed_addr constant [45 x i8] c"Deferred: DNS failure: CNAME loop for %.100s\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"%.*s%s%.*s\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"dns_getcanonname: %s\0A\00", align 1
@mxrand.seed = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"mxrand(%s)\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c" = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @getfallbackmxrr(i8* %host) #0 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %rcode = alloca i32, align 4
  %ttl = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %host, i8** %host.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ttl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* @NumFallbackMXHosts, align 4, !tbaa !5
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, i64* @getfallbackmxrr.renew, align 8, !tbaa !7
  %call = call i64 @curtime()
  %cmp1 = icmp sgt i64 %4, %call
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* @NumFallbackMXHosts, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = sext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, 91
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %8 = load i8*, i8** %host.addr, align 8, !tbaa !1
  store i8* %8, i8** getelementptr inbounds ([101 x i8*], [101 x i8*]* @fbhosts, i32 0, i64 0), align 8, !tbaa !1
  store i32 1, i32* @NumFallbackMXHosts, align 4, !tbaa !5
  br label %if.end.23

if.else:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %10 = load i32, i32* @NumFallbackMXHosts, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [101 x i8*], [101 x i8*]* @fbhosts, i32 0, i64 %idxprom
  %12 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 111)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call8 = call i32 @getmxrr(i8* %14, i8** getelementptr inbounds ([101 x i8*], [101 x i8*]* @fbhosts, i32 0, i32 0), i16* null, i32 0, i32* %rcode, i32 0, i32* %ttl)
  store i32 %call8, i32* @NumFallbackMXHosts, align 4, !tbaa !5
  %call9 = call i64 @curtime()
  %15 = load i32, i32* %ttl, align 4, !tbaa !5
  %conv10 = sext i32 %15 to i64
  %add = add nsw i64 %call9, %conv10
  store i64 %add, i64* @getfallbackmxrr.renew, align 8, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.20, %for.end
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %17 = load i32, i32* @NumFallbackMXHosts, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %16, %17
  br i1 %cmp12, label %for.body.14, label %for.end.22

for.body.14:                                      ; preds = %for.cond.11
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [101 x i8*], [101 x i8*]* @fbhosts, i32 0, i64 %idxprom15
  %19 = load i8*, i8** %arrayidx16, align 8, !tbaa !1
  %call17 = call i8* @newstr(i8* %19)
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds [101 x i8*], [101 x i8*]* @fbhosts, i32 0, i64 %idxprom18
  store i8* %call17, i8** %arrayidx19, align 8, !tbaa !1
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.14
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %inc21 = add nsw i32 %21, 1
  store i32 %inc21, i32* %i, align 4, !tbaa !5
  br label %for.cond.11

for.end.22:                                       ; preds = %for.cond.11
  br label %if.end.23

if.end.23:                                        ; preds = %for.end.22, %if.then.4
  %22 = load i32, i32* @NumFallbackMXHosts, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then
  %23 = bitcast i32* %ttl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i64 @curtime() #2

declare void @sm_free_tagged(i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @getmxrr(i8* %host, i8** %mxhosts, i16* %mxprefs, i32 %droplocalhost, i32* %rcode, i32 %tryfallback, i32* %pttl) #0 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca i8*, align 8
  %mxhosts.addr = alloca i8**, align 8
  %mxprefs.addr = alloca i16*, align 8
  %droplocalhost.addr = alloca i32, align 4
  %rcode.addr = alloca i32*, align 8
  %tryfallback.addr = alloca i32, align 4
  %pttl.addr = alloca i32*, align 8
  %eom = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %nmx = alloca i32, align 4
  %bp = alloca i8*, align 8
  %hp = alloca %struct.HEADER*, align 8
  %answer = alloca %union.querybuf, align 4
  %ancount = alloca i32, align 4
  %qdcount = alloca i32, align 4
  %buflen = alloca i32, align 4
  %seenlocal = alloca i32, align 4
  %pref = alloca i16, align 2
  %type = alloca i16, align 2
  %localpref = alloca i16, align 2
  %fallbackMX = alloca i8*, align 8
  %trycanon = alloca i32, align 4
  %prefs = alloca i16*, align 8
  %resfunc = alloca i32 (i8*, i32, i32, i8*, i32)*, align 8
  %prefer = alloca [100 x i16], align 16
  %weight = alloca [100 x i32], align 16
  %ttl = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__v = alloca i16, align 2
  %__x = alloca i16, align 2
  %tmp = alloca i16, align 2
  %__v83 = alloca i16, align 2
  %__x85 = alloca i16, align 2
  %tmp91 = alloca i16, align 2
  %t_cp = alloca i8*, align 8
  %t_cp120 = alloca i8*, align 8
  %t_cp140 = alloca i8*, align 8
  %t_cp172 = alloca i8*, align 8
  %temp = alloca i32, align 4
  %temp1 = alloca i8*, align 8
  %h = alloca %struct.hostent*, align 8
  %p = alloca i8*, align 8
  store i8* %host, i8** %host.addr, align 8, !tbaa !1
  store i8** %mxhosts, i8*** %mxhosts.addr, align 8, !tbaa !1
  store i16* %mxprefs, i16** %mxprefs.addr, align 8, !tbaa !1
  store i32 %droplocalhost, i32* %droplocalhost.addr, align 4, !tbaa !5
  store i32* %rcode, i32** %rcode.addr, align 8, !tbaa !1
  store i32 %tryfallback, i32* %tryfallback.addr, align 4, !tbaa !5
  store i32* %pttl, i32** %pttl.addr, align 8, !tbaa !1
  %0 = bitcast i8** %eom to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %nmx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %nmx, align 4, !tbaa !5
  %6 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.HEADER** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %union.querybuf* %answer to i8*
  call void @llvm.lifetime.start(i64 8192, i8* %8) #1
  %9 = bitcast i32* %ancount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %qdcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %buflen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %seenlocal to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %seenlocal, align 4, !tbaa !5
  %13 = bitcast i16* %pref to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  %14 = bitcast i16* %type to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #1
  %15 = bitcast i16* %localpref to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #1
  store i16 256, i16* %localpref, align 2, !tbaa !10
  %16 = bitcast i8** %fallbackMX to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i8*, i8** @FallbackMX, align 8, !tbaa !1
  store i8* %17, i8** %fallbackMX, align 8, !tbaa !1
  %18 = bitcast i32* %trycanon to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %trycanon, align 4, !tbaa !5
  %19 = bitcast i16** %prefs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i32 (i8*, i32, i32, i8*, i32)** %resfunc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast [100 x i16]* %prefer to i8*
  call void @llvm.lifetime.start(i64 200, i8* %21) #1
  %22 = bitcast [100 x i32]* %weight to i8*
  call void @llvm.lifetime.start(i64 400, i8* %22) #1
  %23 = bitcast i32* %ttl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 0, i32* %ttl, align 4, !tbaa !5
  %24 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !9
  %conv = zext i8 %24 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %25 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %26 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %27 = load i32, i32* %droplocalhost.addr, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i8* %26, i32 %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %28 = load i32*, i32** %rcode.addr, align 8, !tbaa !1
  store i32 0, i32* %28, align 4, !tbaa !5
  %29 = load i32*, i32** %pttl.addr, align 8, !tbaa !1
  %cmp2 = icmp ne i32* %29, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %30 = load i32*, i32** %pttl.addr, align 8, !tbaa !1
  store i32 3600, i32* %30, align 4, !tbaa !5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %31 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !9
  %conv6 = sext i8 %32 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.455

if.end.10:                                        ; preds = %if.end.5
  %33 = load i8*, i8** %fallbackMX, align 8, !tbaa !1
  %cmp11 = icmp ne i8* %33, null
  br i1 %cmp11, label %land.lhs.true.13, label %lor.lhs.false

land.lhs.true.13:                                 ; preds = %if.end.10
  %34 = load i32, i32* %droplocalhost.addr, align 4, !tbaa !5
  %tobool14 = icmp ne i32 %34, 0
  br i1 %tobool14, label %land.lhs.true.15, label %lor.lhs.false

land.lhs.true.15:                                 ; preds = %land.lhs.true.13
  %35 = load i8*, i8** %fallbackMX, align 8, !tbaa !1
  %call = call i32 @wordinclass(i8* %35, i32 119)
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.15, %land.lhs.true.13, %if.end.10
  %36 = load i32, i32* %tryfallback.addr, align 4, !tbaa !5
  %tobool17 = icmp ne i32 %36, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false, %land.lhs.true.15
  store i8* null, i8** %fallbackMX, align 8, !tbaa !1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %lor.lhs.false
  %37 = load i16*, i16** %mxprefs.addr, align 8, !tbaa !1
  %cmp20 = icmp ne i16* %37, null
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.19
  %38 = load i16*, i16** %mxprefs.addr, align 8, !tbaa !1
  store i16* %38, i16** %prefs, align 8, !tbaa !1
  br label %if.end.23

if.else:                                          ; preds = %if.end.19
  %arraydecay = getelementptr inbounds [100 x i16], [100 x i16]* %prefer, i32 0, i32 0
  store i16* %arraydecay, i16** %prefs, align 8, !tbaa !1
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  %39 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv24 = sext i8 %40 to i32
  %cmp25 = icmp eq i32 %conv24, 91
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  br label %punt

if.end.28:                                        ; preds = %if.end.23
  %41 = load i32, i32* @UseNameServer, align 4, !tbaa !5
  %tobool29 = icmp ne i32 %41, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.28
  br label %punt

if.end.31:                                        ; preds = %if.end.28
  %42 = load i32, i32* @HasWildcardMX, align 4, !tbaa !5
  %tobool32 = icmp ne i32 %42, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.37

land.lhs.true.33:                                 ; preds = %if.end.31
  %43 = load i32, i32* @ConfigLevel, align 4, !tbaa !5
  %cmp34 = icmp sge i32 %43, 6
  br i1 %cmp34, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.33
  store i32 (i8*, i32, i32, i8*, i32)* @__res_query, i32 (i8*, i32, i32, i8*, i32)** %resfunc, align 8, !tbaa !1
  br label %if.end.38

if.else.37:                                       ; preds = %land.lhs.true.33, %if.end.31
  store i32 (i8*, i32, i32, i8*, i32)* @__res_search, i32 (i8*, i32, i32, i8*, i32)** %resfunc, align 8, !tbaa !1
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  %call39 = call i32* @__errno_location() #8
  store i32 0, i32* %call39, align 4, !tbaa !5
  %44 = load i32 (i8*, i32, i32, i8*, i32)*, i32 (i8*, i32, i32, i8*, i32)** %resfunc, align 8, !tbaa !1
  %45 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %46 = bitcast %union.querybuf* %answer to i8*
  %call40 = call i32 %44(i8* %45, i32 1, i32 15, i8* %46, i32 8192)
  store i32 %call40, i32* %n, align 4, !tbaa !5
  %47 = load i32, i32* %n, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %47, 0
  br i1 %cmp41, label %if.then.43, label %if.end.63

if.then.43:                                       ; preds = %if.end.38
  %48 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !9
  %conv44 = zext i8 %48 to i32
  %cmp45 = icmp sge i32 %conv44, 1
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.52

land.lhs.true.47:                                 ; preds = %if.then.43
  %49 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool48 = icmp ne i32 %49, 0
  br i1 %tobool48, label %if.end.52, label %if.then.49

if.then.49:                                       ; preds = %land.lhs.true.47
  %50 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call50 = call i32* @__errno_location() #8
  %51 = load i32, i32* %call50, align 4, !tbaa !5
  %call51 = call i32* @__h_errno_location() #8
  %52 = load i32, i32* %call51, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0), i8* %50, i32 %51, i32 %52)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %land.lhs.true.47, %if.then.43
  %call53 = call i32* @__h_errno_location() #8
  %53 = load i32, i32* %call53, align 4, !tbaa !5
  switch i32 %53, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.54
    i32 1, label %sw.bb.55
    i32 2, label %sw.bb.56
    i32 -1, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %if.end.52
  store i32 1, i32* %trycanon, align 4, !tbaa !5
  br label %sw.bb.54

sw.bb.54:                                         ; preds = %if.end.52, %sw.bb
  br label %punt

sw.bb.55:                                         ; preds = %if.end.52
  store i32 1, i32* %trycanon, align 4, !tbaa !5
  %54 = load i32*, i32** %rcode.addr, align 8, !tbaa !1
  store i32 68, i32* %54, align 4, !tbaa !5
  br label %punt

sw.bb.56:                                         ; preds = %if.end.52, %if.end.52
  %55 = load i8*, i8** %fallbackMX, align 8, !tbaa !1
  %cmp57 = icmp ne i8* %55, null
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %sw.bb.56
  %56 = load i32, i32* %nmx, align 4, !tbaa !5
  %57 = load i16*, i16** %prefs, align 8, !tbaa !1
  %58 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %call60 = call i32 @fallbackmxrr(i32 %56, i16* %57, i8** %58)
  store i32 %call60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.455

if.end.61:                                        ; preds = %sw.bb.56
  %59 = load i32*, i32** %rcode.addr, align 8, !tbaa !1
  store i32 75, i32* %59, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.52
  %60 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call62 = call i32* @__h_errno_location() #8
  %61 = load i32, i32* %call62, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i32 0, i32 0), i8* %60, i32 %61)
  %62 = load i32*, i32** %rcode.addr, align 8, !tbaa !1
  store i32 71, i32* %62, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.61
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.455

if.end.63:                                        ; preds = %if.end.38
  %63 = load i32, i32* %n, align 4, !tbaa !5
  %conv64 = sext i32 %63 to i64
  %cmp65 = icmp ugt i64 %conv64, 8192
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.63
  store i32 8192, i32* %n, align 4, !tbaa !5
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.63
  %64 = bitcast %union.querybuf* %answer to %struct.HEADER*
  store %struct.HEADER* %64, %struct.HEADER** %hp, align 8, !tbaa !1
  %65 = bitcast %union.querybuf* %answer to i8*
  %add.ptr = getelementptr inbounds i8, i8* %65, i64 12
  store i8* %add.ptr, i8** %cp, align 8, !tbaa !1
  %66 = bitcast %union.querybuf* %answer to i8*
  %67 = load i32, i32* %n, align 4, !tbaa !5
  %idx.ext = sext i32 %67 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %66, i64 %idx.ext
  store i8* %add.ptr69, i8** %eom, align 8, !tbaa !1
  %68 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %68) #1
  %69 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %69) #1
  %70 = load %struct.HEADER*, %struct.HEADER** %hp, align 8, !tbaa !1
  %71 = bitcast %struct.HEADER* %70 to i96*
  %bf.load = load i96, i96* %71, align 4
  %bf.lshr = lshr i96 %bf.load, 32
  %bf.clear = and i96 %bf.lshr, 65535
  %bf.cast = trunc i96 %bf.clear to i32
  %conv70 = trunc i32 %bf.cast to i16
  store i16 %conv70, i16* %__x, align 2, !tbaa !10
  %72 = load i16, i16* %__x, align 2, !tbaa !10
  %73 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %72) #8, !srcloc !12
  store i16 %73, i16* %__v, align 2, !tbaa !10
  %74 = load i16, i16* %__v, align 2, !tbaa !10
  store i16 %74, i16* %tmp, !tbaa !10
  %75 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %75) #1
  %76 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %76) #1
  %77 = load i16, i16* %tmp, !tbaa !10
  %conv71 = zext i16 %77 to i32
  store i32 %conv71, i32* %qdcount, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.68
  %78 = load i32, i32* %qdcount, align 4, !tbaa !5
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %qdcount, align 4, !tbaa !5
  %tobool72 = icmp ne i32 %78, 0
  br i1 %tobool72, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %79 = load i8*, i8** %cp, align 8, !tbaa !1
  %80 = load i8*, i8** %eom, align 8, !tbaa !1
  %call73 = call i32 @__dn_skipname(i8* %79, i8* %80) #1
  store i32 %call73, i32* %n, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %for.body
  br label %punt

if.end.77:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %81 = load i32, i32* %n, align 4, !tbaa !5
  %add = add nsw i32 %81, 4
  %82 = load i8*, i8** %cp, align 8, !tbaa !1
  %idx.ext78 = sext i32 %add to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %82, i64 %idx.ext78
  store i8* %add.ptr79, i8** %cp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 12799, i32* %buflen, align 4, !tbaa !5
  %83 = load i32, i32* %buflen, align 4, !tbaa !5
  %cmp80 = icmp sgt i32 %83, 0
  br i1 %cmp80, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.end
  call void @sm_abort_at(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 322, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %84, %for.end
  %85 = phi i1 [ true, %for.end ], [ false, %84 ]
  %lor.ext = zext i1 %85 to i32
  store i8* getelementptr inbounds ([12800 x i8], [12800 x i8]* @MXHostBuf, i32 0, i32 0), i8** %bp, align 8, !tbaa !1
  %86 = bitcast i16* %__v83 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %86) #1
  %87 = bitcast i16* %__x85 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %87) #1
  %88 = load %struct.HEADER*, %struct.HEADER** %hp, align 8, !tbaa !1
  %89 = bitcast %struct.HEADER* %88 to i96*
  %bf.load86 = load i96, i96* %89, align 4
  %bf.lshr87 = lshr i96 %bf.load86, 48
  %bf.clear88 = and i96 %bf.lshr87, 65535
  %bf.cast89 = trunc i96 %bf.clear88 to i32
  %conv90 = trunc i32 %bf.cast89 to i16
  store i16 %conv90, i16* %__x85, align 2, !tbaa !10
  %90 = load i16, i16* %__x85, align 2, !tbaa !10
  %91 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %90) #8, !srcloc !13
  store i16 %91, i16* %__v83, align 2, !tbaa !10
  %92 = load i16, i16* %__v83, align 2, !tbaa !10
  store i16 %92, i16* %tmp91, !tbaa !10
  %93 = bitcast i16* %__x85 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %93) #1
  %94 = bitcast i16* %__v83 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %94) #1
  %95 = load i16, i16* %tmp91, !tbaa !10
  %conv92 = zext i16 %95 to i32
  store i32 %conv92, i32* %ancount, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.240, %if.end.214, %if.end.166, %lor.end
  %96 = load i32, i32* %ancount, align 4, !tbaa !5
  %dec93 = add nsw i32 %96, -1
  store i32 %dec93, i32* %ancount, align 4, !tbaa !5
  %cmp94 = icmp sge i32 %dec93, 0
  br i1 %cmp94, label %land.lhs.true.96, label %land.end

land.lhs.true.96:                                 ; preds = %while.cond
  %97 = load i8*, i8** %cp, align 8, !tbaa !1
  %98 = load i8*, i8** %eom, align 8, !tbaa !1
  %cmp97 = icmp ult i8* %97, %98
  br i1 %cmp97, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.96
  %99 = load i32, i32* %nmx, align 4, !tbaa !5
  %cmp99 = icmp slt i32 %99, 99
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.96, %while.cond
  %100 = phi i1 [ false, %land.lhs.true.96 ], [ false, %while.cond ], [ %cmp99, %land.rhs ]
  br i1 %100, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %101 = bitcast %union.querybuf* %answer to i8*
  %102 = load i8*, i8** %eom, align 8, !tbaa !1
  %103 = load i8*, i8** %cp, align 8, !tbaa !1
  %104 = load i8*, i8** %bp, align 8, !tbaa !1
  %105 = load i32, i32* %buflen, align 4, !tbaa !5
  %call101 = call i32 @__dn_expand(i8* %101, i8* %102, i8* %103, i8* %104, i32 %105) #1
  store i32 %call101, i32* %n, align 4, !tbaa !5
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %while.body
  br label %while.end

if.end.105:                                       ; preds = %while.body
  %106 = load i32, i32* %n, align 4, !tbaa !5
  %107 = load i8*, i8** %cp, align 8, !tbaa !1
  %idx.ext106 = sext i32 %106 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %107, i64 %idx.ext106
  store i8* %add.ptr107, i8** %cp, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end.105
  %108 = bitcast i8** %t_cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  %109 = load i8*, i8** %cp, align 8, !tbaa !1
  store i8* %109, i8** %t_cp, align 8, !tbaa !1
  %110 = load i8*, i8** %t_cp, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i8, i8* %110, i64 0
  %111 = load i8, i8* %arrayidx109, align 1, !tbaa !9
  %conv110 = zext i8 %111 to i16
  %conv111 = zext i16 %conv110 to i32
  %shl = shl i32 %conv111, 8
  %112 = load i8*, i8** %t_cp, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %112, i64 1
  %113 = load i8, i8* %arrayidx112, align 1, !tbaa !9
  %conv113 = zext i8 %113 to i16
  %conv114 = zext i16 %conv113 to i32
  %or = or i32 %shl, %conv114
  %conv115 = trunc i32 %or to i16
  store i16 %conv115, i16* %type, align 2, !tbaa !10
  %114 = load i8*, i8** %cp, align 8, !tbaa !1
  %add.ptr116 = getelementptr inbounds i8, i8* %114, i64 2
  store i8* %add.ptr116, i8** %cp, align 8, !tbaa !1
  %115 = bitcast i8** %t_cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %116 = load i8*, i8** %cp, align 8, !tbaa !1
  %add.ptr117 = getelementptr inbounds i8, i8* %116, i64 2
  store i8* %add.ptr117, i8** %cp, align 8, !tbaa !1
  br label %do.body.118

do.body.118:                                      ; preds = %do.end
  %117 = bitcast i8** %t_cp120 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  %118 = load i8*, i8** %cp, align 8, !tbaa !1
  store i8* %118, i8** %t_cp120, align 8, !tbaa !1
  %119 = load i8*, i8** %t_cp120, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i8, i8* %119, i64 0
  %120 = load i8, i8* %arrayidx121, align 1, !tbaa !9
  %conv122 = zext i8 %120 to i32
  %shl123 = shl i32 %conv122, 24
  %121 = load i8*, i8** %t_cp120, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i8, i8* %121, i64 1
  %122 = load i8, i8* %arrayidx124, align 1, !tbaa !9
  %conv125 = zext i8 %122 to i32
  %shl126 = shl i32 %conv125, 16
  %or127 = or i32 %shl123, %shl126
  %123 = load i8*, i8** %t_cp120, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i8, i8* %123, i64 2
  %124 = load i8, i8* %arrayidx128, align 1, !tbaa !9
  %conv129 = zext i8 %124 to i32
  %shl130 = shl i32 %conv129, 8
  %or131 = or i32 %or127, %shl130
  %125 = load i8*, i8** %t_cp120, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i8, i8* %125, i64 3
  %126 = load i8, i8* %arrayidx132, align 1, !tbaa !9
  %conv133 = zext i8 %126 to i32
  %or134 = or i32 %or131, %conv133
  store i32 %or134, i32* %ttl, align 4, !tbaa !5
  %127 = load i8*, i8** %cp, align 8, !tbaa !1
  %add.ptr135 = getelementptr inbounds i8, i8* %127, i64 4
  store i8* %add.ptr135, i8** %cp, align 8, !tbaa !1
  %128 = bitcast i8** %t_cp120 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  br label %do.cond.136

do.cond.136:                                      ; preds = %do.body.118
  br label %do.end.137

do.end.137:                                       ; preds = %do.cond.136
  br label %do.body.138

do.body.138:                                      ; preds = %do.end.137
  %129 = bitcast i8** %t_cp140 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  %130 = load i8*, i8** %cp, align 8, !tbaa !1
  store i8* %130, i8** %t_cp140, align 8, !tbaa !1
  %131 = load i8*, i8** %t_cp140, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds i8, i8* %131, i64 0
  %132 = load i8, i8* %arrayidx141, align 1, !tbaa !9
  %conv142 = zext i8 %132 to i16
  %conv143 = zext i16 %conv142 to i32
  %shl144 = shl i32 %conv143, 8
  %133 = load i8*, i8** %t_cp140, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds i8, i8* %133, i64 1
  %134 = load i8, i8* %arrayidx145, align 1, !tbaa !9
  %conv146 = zext i8 %134 to i16
  %conv147 = zext i16 %conv146 to i32
  %or148 = or i32 %shl144, %conv147
  store i32 %or148, i32* %n, align 4, !tbaa !5
  %135 = load i8*, i8** %cp, align 8, !tbaa !1
  %add.ptr149 = getelementptr inbounds i8, i8* %135, i64 2
  store i8* %add.ptr149, i8** %cp, align 8, !tbaa !1
  %136 = bitcast i8** %t_cp140 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  br label %do.cond.150

do.cond.150:                                      ; preds = %do.body.138
  br label %do.end.151

do.end.151:                                       ; preds = %do.cond.150
  %137 = load i16, i16* %type, align 2, !tbaa !10
  %conv152 = zext i16 %137 to i32
  %cmp153 = icmp ne i32 %conv152, 15
  br i1 %cmp153, label %if.then.155, label %if.end.169

if.then.155:                                      ; preds = %do.end.151
  %138 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !9
  %conv156 = zext i8 %138 to i32
  %cmp157 = icmp sge i32 %conv156, 8
  br i1 %cmp157, label %land.lhs.true.159, label %lor.lhs.false.161

land.lhs.true.159:                                ; preds = %if.then.155
  %139 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool160 = icmp ne i32 %139, 0
  br i1 %tobool160, label %lor.lhs.false.161, label %if.then.164

lor.lhs.false.161:                                ; preds = %land.lhs.true.159, %if.then.155
  %call162 = call %struct.__res_state* @__res_state() #8
  %options = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call162, i32 0, i32 2
  %140 = load i64, i64* %options, align 8, !tbaa !14
  %and = and i64 %140, 2
  %tobool163 = icmp ne i64 %and, 0
  br i1 %tobool163, label %if.then.164, label %if.end.166

if.then.164:                                      ; preds = %lor.lhs.false.161, %land.lhs.true.159
  %141 = load i16, i16* %type, align 2, !tbaa !10
  %conv165 = zext i16 %141 to i32
  %142 = load i32, i32* %n, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i32 %conv165, i32 %142)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.164, %lor.lhs.false.161
  %143 = load i32, i32* %n, align 4, !tbaa !5
  %144 = load i8*, i8** %cp, align 8, !tbaa !1
  %idx.ext167 = sext i32 %143 to i64
  %add.ptr168 = getelementptr inbounds i8, i8* %144, i64 %idx.ext167
  store i8* %add.ptr168, i8** %cp, align 8, !tbaa !1
  br label %while.cond

if.end.169:                                       ; preds = %do.end.151
  br label %do.body.170

do.body.170:                                      ; preds = %if.end.169
  %145 = bitcast i8** %t_cp172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %145) #1
  %146 = load i8*, i8** %cp, align 8, !tbaa !1
  store i8* %146, i8** %t_cp172, align 8, !tbaa !1
  %147 = load i8*, i8** %t_cp172, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i8, i8* %147, i64 0
  %148 = load i8, i8* %arrayidx173, align 1, !tbaa !9
  %conv174 = zext i8 %148 to i16
  %conv175 = zext i16 %conv174 to i32
  %shl176 = shl i32 %conv175, 8
  %149 = load i8*, i8** %t_cp172, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i8, i8* %149, i64 1
  %150 = load i8, i8* %arrayidx177, align 1, !tbaa !9
  %conv178 = zext i8 %150 to i16
  %conv179 = zext i16 %conv178 to i32
  %or180 = or i32 %shl176, %conv179
  %conv181 = trunc i32 %or180 to i16
  store i16 %conv181, i16* %pref, align 2, !tbaa !10
  %151 = load i8*, i8** %cp, align 8, !tbaa !1
  %add.ptr182 = getelementptr inbounds i8, i8* %151, i64 2
  store i8* %add.ptr182, i8** %cp, align 8, !tbaa !1
  %152 = bitcast i8** %t_cp172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  br label %do.cond.183

do.cond.183:                                      ; preds = %do.body.170
  br label %do.end.184

do.end.184:                                       ; preds = %do.cond.183
  %153 = bitcast %union.querybuf* %answer to i8*
  %154 = load i8*, i8** %eom, align 8, !tbaa !1
  %155 = load i8*, i8** %cp, align 8, !tbaa !1
  %156 = load i8*, i8** %bp, align 8, !tbaa !1
  %157 = load i32, i32* %buflen, align 4, !tbaa !5
  %call185 = call i32 @__dn_expand(i8* %153, i8* %154, i8* %155, i8* %156, i32 %157) #1
  store i32 %call185, i32* %n, align 4, !tbaa !5
  %cmp186 = icmp slt i32 %call185, 0
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %do.end.184
  br label %while.end

if.end.189:                                       ; preds = %do.end.184
  %158 = load i32, i32* %n, align 4, !tbaa !5
  %159 = load i8*, i8** %cp, align 8, !tbaa !1
  %idx.ext190 = sext i32 %158 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %159, i64 %idx.ext190
  store i8* %add.ptr191, i8** %cp, align 8, !tbaa !1
  %160 = load i8*, i8** %bp, align 8, !tbaa !1
  %call192 = call i64 @strlen(i8* %160) #10
  %conv193 = trunc i64 %call192 to i32
  store i32 %conv193, i32* %n, align 4, !tbaa !5
  %161 = load i8*, i8** %bp, align 8, !tbaa !1
  %call194 = call i32 @wordinclass(i8* %161, i32 119)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.then.196, label %if.else.217

if.then.196:                                      ; preds = %if.end.189
  %162 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !9
  %conv197 = zext i8 %162 to i32
  %cmp198 = icmp sge i32 %conv197, 3
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.204

land.lhs.true.200:                                ; preds = %if.then.196
  %163 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool201 = icmp ne i32 %163, 0
  br i1 %tobool201, label %if.end.204, label %if.then.202

if.then.202:                                      ; preds = %land.lhs.true.200
  %164 = load i8*, i8** %bp, align 8, !tbaa !1
  %165 = load i16, i16* %pref, align 2, !tbaa !10
  %conv203 = zext i16 %165 to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i8* %164, i32 %conv203)
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.202, %land.lhs.true.200, %if.then.196
  %166 = load i32, i32* %droplocalhost.addr, align 4, !tbaa !5
  %tobool205 = icmp ne i32 %166, 0
  br i1 %tobool205, label %if.then.206, label %if.end.215

if.then.206:                                      ; preds = %if.end.204
  %167 = load i32, i32* %seenlocal, align 4, !tbaa !5
  %tobool207 = icmp ne i32 %167, 0
  br i1 %tobool207, label %lor.lhs.false.208, label %if.then.213

lor.lhs.false.208:                                ; preds = %if.then.206
  %168 = load i16, i16* %pref, align 2, !tbaa !10
  %conv209 = zext i16 %168 to i32
  %169 = load i16, i16* %localpref, align 2, !tbaa !10
  %conv210 = zext i16 %169 to i32
  %cmp211 = icmp slt i32 %conv209, %conv210
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %lor.lhs.false.208, %if.then.206
  %170 = load i16, i16* %pref, align 2, !tbaa !10
  store i16 %170, i16* %localpref, align 2, !tbaa !10
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.213, %lor.lhs.false.208
  store i32 1, i32* %seenlocal, align 4, !tbaa !5
  br label %while.cond

if.end.215:                                       ; preds = %if.end.204
  %171 = load i32, i32* %nmx, align 4, !tbaa !5
  %idxprom = sext i32 %171 to i64
  %arrayidx216 = getelementptr inbounds [100 x i32], [100 x i32]* %weight, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx216, align 4, !tbaa !5
  br label %if.end.221

if.else.217:                                      ; preds = %if.end.189
  %172 = load i8*, i8** %bp, align 8, !tbaa !1
  %call218 = call i32 @mxrand(i8* %172)
  %173 = load i32, i32* %nmx, align 4, !tbaa !5
  %idxprom219 = sext i32 %173 to i64
  %arrayidx220 = getelementptr inbounds [100 x i32], [100 x i32]* %weight, i32 0, i64 %idxprom219
  store i32 %call218, i32* %arrayidx220, align 4, !tbaa !5
  br label %if.end.221

if.end.221:                                       ; preds = %if.else.217, %if.end.215
  %174 = load i16, i16* %pref, align 2, !tbaa !10
  %175 = load i32, i32* %nmx, align 4, !tbaa !5
  %idxprom222 = sext i32 %175 to i64
  %176 = load i16*, i16** %prefs, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i16, i16* %176, i64 %idxprom222
  store i16 %174, i16* %arrayidx223, align 2, !tbaa !10
  %177 = load i8*, i8** %bp, align 8, !tbaa !1
  %178 = load i32, i32* %nmx, align 4, !tbaa !5
  %inc = add nsw i32 %178, 1
  store i32 %inc, i32* %nmx, align 4, !tbaa !5
  %idxprom224 = sext i32 %178 to i64
  %179 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %arrayidx225 = getelementptr inbounds i8*, i8** %179, i64 %idxprom224
  store i8* %177, i8** %arrayidx225, align 8, !tbaa !1
  %180 = load i32, i32* %n, align 4, !tbaa !5
  %181 = load i8*, i8** %bp, align 8, !tbaa !1
  %idx.ext226 = sext i32 %180 to i64
  %add.ptr227 = getelementptr inbounds i8, i8* %181, i64 %idx.ext226
  store i8* %add.ptr227, i8** %bp, align 8, !tbaa !1
  %182 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i8, i8* %182, i64 -1
  %183 = load i8, i8* %arrayidx228, align 1, !tbaa !9
  %conv229 = sext i8 %183 to i32
  %cmp230 = icmp ne i32 %conv229, 46
  br i1 %cmp230, label %if.then.232, label %if.end.234

if.then.232:                                      ; preds = %if.end.221
  %184 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8, !tbaa !1
  store i8 46, i8* %184, align 1, !tbaa !9
  %185 = load i32, i32* %n, align 4, !tbaa !5
  %inc233 = add nsw i32 %185, 1
  store i32 %inc233, i32* %n, align 4, !tbaa !5
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.232, %if.end.221
  %186 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr235 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %incdec.ptr235, i8** %bp, align 8, !tbaa !1
  store i8 0, i8* %186, align 1, !tbaa !9
  %187 = load i32, i32* %buflen, align 4, !tbaa !5
  %188 = load i32, i32* %n, align 4, !tbaa !5
  %add236 = add nsw i32 %188, 1
  %cmp237 = icmp slt i32 %187, %add236
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %if.end.234
  br label %while.end

if.end.240:                                       ; preds = %if.end.234
  %189 = load i32, i32* %n, align 4, !tbaa !5
  %add241 = add nsw i32 %189, 1
  %190 = load i32, i32* %buflen, align 4, !tbaa !5
  %sub = sub nsw i32 %190, %add241
  store i32 %sub, i32* %buflen, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %if.then.239, %if.then.188, %if.then.104, %land.end
  %191 = load i32, i32* %ttl, align 4, !tbaa !5
  %cmp242 = icmp sgt i32 %191, 0
  br i1 %cmp242, label %land.lhs.true.244, label %if.end.248

land.lhs.true.244:                                ; preds = %while.end
  %192 = load i32*, i32** %pttl.addr, align 8, !tbaa !1
  %cmp245 = icmp ne i32* %192, null
  br i1 %cmp245, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %land.lhs.true.244
  %193 = load i32, i32* %ttl, align 4, !tbaa !5
  %194 = load i32*, i32** %pttl.addr, align 8, !tbaa !1
  store i32 %193, i32* %194, align 4, !tbaa !5
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.247, %land.lhs.true.244, %while.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.249

for.cond.249:                                     ; preds = %for.inc.325, %if.end.248
  %195 = load i32, i32* %i, align 4, !tbaa !5
  %196 = load i32, i32* %nmx, align 4, !tbaa !5
  %cmp250 = icmp slt i32 %195, %196
  br i1 %cmp250, label %for.body.252, label %for.end.327

for.body.252:                                     ; preds = %for.cond.249
  %197 = load i32, i32* %i, align 4, !tbaa !5
  %add253 = add nsw i32 %197, 1
  store i32 %add253, i32* %j, align 4, !tbaa !5
  br label %for.cond.254

for.cond.254:                                     ; preds = %for.inc.312, %for.body.252
  %198 = load i32, i32* %j, align 4, !tbaa !5
  %199 = load i32, i32* %nmx, align 4, !tbaa !5
  %cmp255 = icmp slt i32 %198, %199
  br i1 %cmp255, label %for.body.257, label %for.end.314

for.body.257:                                     ; preds = %for.cond.254
  %200 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom258 = sext i32 %200 to i64
  %201 = load i16*, i16** %prefs, align 8, !tbaa !1
  %arrayidx259 = getelementptr inbounds i16, i16* %201, i64 %idxprom258
  %202 = load i16, i16* %arrayidx259, align 2, !tbaa !10
  %conv260 = zext i16 %202 to i32
  %203 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom261 = sext i32 %203 to i64
  %204 = load i16*, i16** %prefs, align 8, !tbaa !1
  %arrayidx262 = getelementptr inbounds i16, i16* %204, i64 %idxprom261
  %205 = load i16, i16* %arrayidx262, align 2, !tbaa !10
  %conv263 = zext i16 %205 to i32
  %cmp264 = icmp sgt i32 %conv260, %conv263
  br i1 %cmp264, label %if.then.282, label %lor.lhs.false.266

lor.lhs.false.266:                                ; preds = %for.body.257
  %206 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom267 = sext i32 %206 to i64
  %207 = load i16*, i16** %prefs, align 8, !tbaa !1
  %arrayidx268 = getelementptr inbounds i16, i16* %207, i64 %idxprom267
  %208 = load i16, i16* %arrayidx268, align 2, !tbaa !10
  %conv269 = zext i16 %208 to i32
  %209 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom270 = sext i32 %209 to i64
  %210 = load i16*, i16** %prefs, align 8, !tbaa !1
  %arrayidx271 = getelementptr inbounds i16, i16* %210, i64 %idxprom270
  %211 = load i16, i16* %arrayidx271, align 2, !tbaa !10
  %conv272 = zext i16 %211 to i32
  %cmp273 = icmp eq i32 %conv269, %conv272
  br i1 %cmp273, label %land.lhs.true.275, label %if.end.311

land.lhs.true.275:                                ; preds = %lor.lhs.false.266
  %212 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom276 = sext i32 %212 to i64
  %arrayidx277 = getelementptr inbounds [100 x i32], [100 x i32]* %weight, i32 0, i64 %idxprom276
  %213 = load i32, i32* %arrayidx277, align 4, !tbaa !5
  %214 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom278 = sext i32 %214 to i64
  %arrayidx279 = getelementptr inbounds [100 x i32], [100 x i32]* %weight, i32 0, i64 %idxprom278
  %215 = load i32, i32* %arrayidx279, align 4, !tbaa !5
  %cmp280 = icmp sgt i32 %213, %215
  br i1 %cmp280, label %if.then.282, label %if.end.311

if.then.282:                                      ; preds = %land.lhs.true.275, %for.body.257
  %216 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %216) #1
  %217 = bitcast i8** %temp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %217) #1
  %218 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom285 = sext i32 %218 to i64
  %219 = load i16*, i16** %prefs, align 8, !tbaa !1
  %arrayidx286 = getelementptr inbounds i16, i16* %219, i64 %idxprom285
  %220 = load i16, i16* %arrayidx286, align 2, !tbaa !10
  %conv287 = zext i16 %220 to i32
  store i32 %conv287, i32* %temp, align 4, !tbaa !5
  %221 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom288 = sext i32 %221 to i64
  %222 = load i16*, i16** %prefs, align 8, !tbaa !1
  %arrayidx289 = getelementptr inbounds i16, i16* %222, i64 %idxprom288
  %223 = load i16, i16* %arrayidx289, align 2, !tbaa !10
  %224 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom290 = sext i32 %224 to i64
  %225 = load i16*, i16** %prefs, align 8, !tbaa !1
  %arrayidx291 = getelementptr inbounds i16, i16* %225, i64 %idxprom290
  store i16 %223, i16* %arrayidx291, align 2, !tbaa !10
  %226 = load i32, i32* %temp, align 4, !tbaa !5
  %conv292 = trunc i32 %226 to i16
  %227 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom293 = sext i32 %227 to i64
  %228 = load i16*, i16** %prefs, align 8, !tbaa !1
  %arrayidx294 = getelementptr inbounds i16, i16* %228, i64 %idxprom293
  store i16 %conv292, i16* %arrayidx294, align 2, !tbaa !10
  %229 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom295 = sext i32 %229 to i64
  %230 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %arrayidx296 = getelementptr inbounds i8*, i8** %230, i64 %idxprom295
  %231 = load i8*, i8** %arrayidx296, align 8, !tbaa !1
  store i8* %231, i8** %temp1, align 8, !tbaa !1
  %232 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom297 = sext i32 %232 to i64
  %233 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %arrayidx298 = getelementptr inbounds i8*, i8** %233, i64 %idxprom297
  %234 = load i8*, i8** %arrayidx298, align 8, !tbaa !1
  %235 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom299 = sext i32 %235 to i64
  %236 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %arrayidx300 = getelementptr inbounds i8*, i8** %236, i64 %idxprom299
  store i8* %234, i8** %arrayidx300, align 8, !tbaa !1
  %237 = load i8*, i8** %temp1, align 8, !tbaa !1
  %238 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom301 = sext i32 %238 to i64
  %239 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %arrayidx302 = getelementptr inbounds i8*, i8** %239, i64 %idxprom301
  store i8* %237, i8** %arrayidx302, align 8, !tbaa !1
  %240 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom303 = sext i32 %240 to i64
  %arrayidx304 = getelementptr inbounds [100 x i32], [100 x i32]* %weight, i32 0, i64 %idxprom303
  %241 = load i32, i32* %arrayidx304, align 4, !tbaa !5
  store i32 %241, i32* %temp, align 4, !tbaa !5
  %242 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom305 = sext i32 %242 to i64
  %arrayidx306 = getelementptr inbounds [100 x i32], [100 x i32]* %weight, i32 0, i64 %idxprom305
  %243 = load i32, i32* %arrayidx306, align 4, !tbaa !5
  %244 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom307 = sext i32 %244 to i64
  %arrayidx308 = getelementptr inbounds [100 x i32], [100 x i32]* %weight, i32 0, i64 %idxprom307
  store i32 %243, i32* %arrayidx308, align 4, !tbaa !5
  %245 = load i32, i32* %temp, align 4, !tbaa !5
  %246 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom309 = sext i32 %246 to i64
  %arrayidx310 = getelementptr inbounds [100 x i32], [100 x i32]* %weight, i32 0, i64 %idxprom309
  store i32 %245, i32* %arrayidx310, align 4, !tbaa !5
  %247 = bitcast i8** %temp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %248 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.282, %land.lhs.true.275, %lor.lhs.false.266
  br label %for.inc.312

for.inc.312:                                      ; preds = %if.end.311
  %249 = load i32, i32* %j, align 4, !tbaa !5
  %inc313 = add nsw i32 %249, 1
  store i32 %inc313, i32* %j, align 4, !tbaa !5
  br label %for.cond.254

for.end.314:                                      ; preds = %for.cond.254
  %250 = load i32, i32* %seenlocal, align 4, !tbaa !5
  %tobool315 = icmp ne i32 %250, 0
  br i1 %tobool315, label %land.lhs.true.316, label %if.end.324

land.lhs.true.316:                                ; preds = %for.end.314
  %251 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom317 = sext i32 %251 to i64
  %252 = load i16*, i16** %prefs, align 8, !tbaa !1
  %arrayidx318 = getelementptr inbounds i16, i16* %252, i64 %idxprom317
  %253 = load i16, i16* %arrayidx318, align 2, !tbaa !10
  %conv319 = zext i16 %253 to i32
  %254 = load i16, i16* %localpref, align 2, !tbaa !10
  %conv320 = zext i16 %254 to i32
  %cmp321 = icmp sge i32 %conv319, %conv320
  br i1 %cmp321, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %land.lhs.true.316
  %255 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %255, i32* %nmx, align 4, !tbaa !5
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.323, %land.lhs.true.316, %for.end.314
  br label %for.inc.325

for.inc.325:                                      ; preds = %if.end.324
  %256 = load i32, i32* %i, align 4, !tbaa !5
  %inc326 = add nsw i32 %256, 1
  store i32 %inc326, i32* %i, align 4, !tbaa !5
  br label %for.cond.249

for.end.327:                                      ; preds = %for.cond.249
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.328

for.cond.328:                                     ; preds = %if.end.363, %for.end.327
  %257 = load i32, i32* %i, align 4, !tbaa !5
  %258 = load i32, i32* %nmx, align 4, !tbaa !5
  %sub329 = sub nsw i32 %258, 1
  %cmp330 = icmp slt i32 %257, %sub329
  br i1 %cmp330, label %for.body.332, label %for.end.364

for.body.332:                                     ; preds = %for.cond.328
  %259 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom333 = sext i32 %259 to i64
  %260 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %arrayidx334 = getelementptr inbounds i8*, i8** %260, i64 %idxprom333
  %261 = load i8*, i8** %arrayidx334, align 8, !tbaa !1
  %262 = load i32, i32* %i, align 4, !tbaa !5
  %add335 = add nsw i32 %262, 1
  %idxprom336 = sext i32 %add335 to i64
  %263 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %arrayidx337 = getelementptr inbounds i8*, i8** %263, i64 %idxprom336
  %264 = load i8*, i8** %arrayidx337, align 8, !tbaa !1
  %call338 = call i32 @sm_strcasecmp(i8* %261, i8* %264)
  %cmp339 = icmp ne i32 %call338, 0
  br i1 %cmp339, label %if.then.341, label %if.else.343

if.then.341:                                      ; preds = %for.body.332
  %265 = load i32, i32* %i, align 4, !tbaa !5
  %inc342 = add nsw i32 %265, 1
  store i32 %inc342, i32* %i, align 4, !tbaa !5
  br label %if.end.363

if.else.343:                                      ; preds = %for.body.332
  %266 = load i32, i32* %i, align 4, !tbaa !5
  %add344 = add nsw i32 %266, 1
  store i32 %add344, i32* %j, align 4, !tbaa !5
  br label %for.cond.345

for.cond.345:                                     ; preds = %for.inc.359, %if.else.343
  %267 = load i32, i32* %j, align 4, !tbaa !5
  %268 = load i32, i32* %nmx, align 4, !tbaa !5
  %cmp346 = icmp slt i32 %267, %268
  br i1 %cmp346, label %for.body.348, label %for.end.361

for.body.348:                                     ; preds = %for.cond.345
  %269 = load i32, i32* %j, align 4, !tbaa !5
  %add349 = add nsw i32 %269, 1
  %idxprom350 = sext i32 %add349 to i64
  %270 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %arrayidx351 = getelementptr inbounds i8*, i8** %270, i64 %idxprom350
  %271 = load i8*, i8** %arrayidx351, align 8, !tbaa !1
  %272 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom352 = sext i32 %272 to i64
  %273 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %arrayidx353 = getelementptr inbounds i8*, i8** %273, i64 %idxprom352
  store i8* %271, i8** %arrayidx353, align 8, !tbaa !1
  %274 = load i32, i32* %j, align 4, !tbaa !5
  %add354 = add nsw i32 %274, 1
  %idxprom355 = sext i32 %add354 to i64
  %275 = load i16*, i16** %prefs, align 8, !tbaa !1
  %arrayidx356 = getelementptr inbounds i16, i16* %275, i64 %idxprom355
  %276 = load i16, i16* %arrayidx356, align 2, !tbaa !10
  %277 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom357 = sext i32 %277 to i64
  %278 = load i16*, i16** %prefs, align 8, !tbaa !1
  %arrayidx358 = getelementptr inbounds i16, i16* %278, i64 %idxprom357
  store i16 %276, i16* %arrayidx358, align 2, !tbaa !10
  br label %for.inc.359

for.inc.359:                                      ; preds = %for.body.348
  %279 = load i32, i32* %j, align 4, !tbaa !5
  %inc360 = add nsw i32 %279, 1
  store i32 %inc360, i32* %j, align 4, !tbaa !5
  br label %for.cond.345

for.end.361:                                      ; preds = %for.cond.345
  %280 = load i32, i32* %nmx, align 4, !tbaa !5
  %dec362 = add nsw i32 %280, -1
  store i32 %dec362, i32* %nmx, align 4, !tbaa !5
  br label %if.end.363

if.end.363:                                       ; preds = %for.end.361, %if.then.341
  br label %for.cond.328

for.end.364:                                      ; preds = %for.cond.328
  %281 = load i32, i32* %nmx, align 4, !tbaa !5
  %cmp365 = icmp eq i32 %281, 0
  br i1 %cmp365, label %if.then.367, label %if.end.447

if.then.367:                                      ; preds = %for.end.364
  br label %punt

punt:                                             ; preds = %if.then.367, %if.then.76, %sw.bb.55, %sw.bb.54, %if.then.30, %if.then.27
  %282 = load i32, i32* %seenlocal, align 4, !tbaa !5
  %tobool368 = icmp ne i32 %282, 0
  br i1 %tobool368, label %if.then.369, label %if.end.400

if.then.369:                                      ; preds = %punt
  %283 = bitcast %struct.hostent** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %283) #1
  store %struct.hostent* null, %struct.hostent** %h, align 8, !tbaa !1
  %284 = load i32, i32* @TryNullMXList, align 4, !tbaa !5
  %tobool371 = icmp ne i32 %284, 0
  br i1 %tobool371, label %if.then.372, label %if.end.395

if.then.372:                                      ; preds = %if.then.369
  %call373 = call i32* @__h_errno_location() #8
  store i32 0, i32* %call373, align 4, !tbaa !5
  %call374 = call i32* @__errno_location() #8
  store i32 0, i32* %call374, align 4, !tbaa !5
  %285 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call375 = call %struct.hostent* @sm_gethostbyname(i8* %285, i32 2)
  store %struct.hostent* %call375, %struct.hostent** %h, align 8, !tbaa !1
  %286 = load %struct.hostent*, %struct.hostent** %h, align 8, !tbaa !1
  %cmp376 = icmp eq %struct.hostent* %286, null
  br i1 %cmp376, label %if.then.378, label %if.end.394

if.then.378:                                      ; preds = %if.then.372
  %call379 = call i32* @__errno_location() #8
  %287 = load i32, i32* %call379, align 4, !tbaa !5
  %cmp380 = icmp eq i32 %287, 110
  br i1 %cmp380, label %if.then.392, label %lor.lhs.false.382

lor.lhs.false.382:                                ; preds = %if.then.378
  %call383 = call i32* @__h_errno_location() #8
  %288 = load i32, i32* %call383, align 4, !tbaa !5
  %cmp384 = icmp eq i32 %288, 2
  br i1 %cmp384, label %if.then.392, label %lor.lhs.false.386

lor.lhs.false.386:                                ; preds = %lor.lhs.false.382
  %call387 = call i32* @__errno_location() #8
  %289 = load i32, i32* %call387, align 4, !tbaa !5
  %cmp388 = icmp eq i32 %289, 111
  br i1 %cmp388, label %land.lhs.true.390, label %if.end.393

land.lhs.true.390:                                ; preds = %lor.lhs.false.386
  %290 = load i32, i32* @UseNameServer, align 4, !tbaa !5
  %tobool391 = icmp ne i32 %290, 0
  br i1 %tobool391, label %if.then.392, label %if.end.393

if.then.392:                                      ; preds = %land.lhs.true.390, %lor.lhs.false.382, %if.then.378
  %291 = load i32*, i32** %rcode.addr, align 8, !tbaa !1
  store i32 75, i32* %291, align 4, !tbaa !5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.393:                                       ; preds = %land.lhs.true.390, %lor.lhs.false.386
  br label %if.end.394

if.end.394:                                       ; preds = %if.end.393, %if.then.372
  br label %if.end.395

if.end.395:                                       ; preds = %if.end.394, %if.then.369
  %292 = load %struct.hostent*, %struct.hostent** %h, align 8, !tbaa !1
  %cmp396 = icmp eq %struct.hostent* %292, null
  br i1 %cmp396, label %if.then.398, label %if.end.399

if.then.398:                                      ; preds = %if.end.395
  %293 = load i32*, i32** %rcode.addr, align 8, !tbaa !1
  store i32 78, i32* %293, align 4, !tbaa !5
  %294 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %295 = load i8*, i8** @MyHostName, align 8, !tbaa !1
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0), i8* %294, i8* %295)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.399:                                       ; preds = %if.end.395
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.399, %if.then.398, %if.then.392
  %296 = bitcast %struct.hostent** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.455 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.400

if.end.400:                                       ; preds = %cleanup.cont, %punt
  %297 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call401 = call i64 @strlen(i8* %297) #10
  %cmp402 = icmp uge i64 %call401, 12800
  br i1 %cmp402, label %if.then.404, label %if.end.406

if.then.404:                                      ; preds = %if.end.400
  %298 = load i32*, i32** %rcode.addr, align 8, !tbaa !1
  store i32 78, i32* %298, align 4, !tbaa !5
  %299 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call405 = call i8* @shortenstring(i8* %299, i64 203)
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* %call405)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.455

if.end.406:                                       ; preds = %if.end.400
  %300 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call407 = call i64 @sm_strlcpy(i8* getelementptr inbounds ([12800 x i8], [12800 x i8]* @MXHostBuf, i32 0, i32 0), i8* %300, i64 12800)
  %301 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %arrayidx408 = getelementptr inbounds i8*, i8** %301, i64 0
  store i8* getelementptr inbounds ([12800 x i8], [12800 x i8]* @MXHostBuf, i32 0, i32 0), i8** %arrayidx408, align 8, !tbaa !1
  %302 = load i16*, i16** %prefs, align 8, !tbaa !1
  %arrayidx409 = getelementptr inbounds i16, i16* %302, i64 0
  store i16 0, i16* %arrayidx409, align 2, !tbaa !10
  %303 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arrayidx410 = getelementptr inbounds i8, i8* %303, i64 0
  %304 = load i8, i8* %arrayidx410, align 1, !tbaa !9
  %conv411 = sext i8 %304 to i32
  %cmp412 = icmp eq i32 %conv411, 91
  br i1 %cmp412, label %if.then.414, label %if.end.430

if.then.414:                                      ; preds = %if.end.406
  %305 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %305) #1
  %call416 = call i8* @strchr(i8* getelementptr inbounds ([12800 x i8], [12800 x i8]* @MXHostBuf, i32 0, i32 0), i32 93) #1
  store i8* %call416, i8** %p, align 8, !tbaa !1
  %306 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp417 = icmp ne i8* %306, null
  br i1 %cmp417, label %if.then.419, label %if.end.429

if.then.419:                                      ; preds = %if.then.414
  %307 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 0, i8* %307, align 1, !tbaa !9
  %call420 = call i32 @inet_addr(i8* getelementptr inbounds ([12800 x i8], [12800 x i8]* @MXHostBuf, i32 0, i64 1)) #1
  %cmp421 = icmp ne i32 %call420, -1
  br i1 %cmp421, label %if.then.423, label %if.else.425

if.then.423:                                      ; preds = %if.then.419
  %308 = load i32, i32* %nmx, align 4, !tbaa !5
  %inc424 = add nsw i32 %308, 1
  store i32 %inc424, i32* %nmx, align 4, !tbaa !5
  %309 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 93, i8* %309, align 1, !tbaa !9
  br label %if.end.428

if.else.425:                                      ; preds = %if.then.419
  store i32 1, i32* %trycanon, align 4, !tbaa !5
  %310 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %arrayidx426 = getelementptr inbounds i8*, i8** %310, i64 0
  %311 = load i8*, i8** %arrayidx426, align 8, !tbaa !1
  %incdec.ptr427 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %incdec.ptr427, i8** %arrayidx426, align 8, !tbaa !1
  br label %if.end.428

if.end.428:                                       ; preds = %if.else.425, %if.then.423
  br label %if.end.429

if.end.429:                                       ; preds = %if.end.428, %if.then.414
  %312 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %312) #1
  br label %if.end.430

if.end.430:                                       ; preds = %if.end.429, %if.end.406
  %313 = load i32, i32* %trycanon, align 4, !tbaa !5
  %tobool431 = icmp ne i32 %313, 0
  br i1 %tobool431, label %land.lhs.true.432, label %if.end.446

land.lhs.true.432:                                ; preds = %if.end.430
  %314 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %arrayidx433 = getelementptr inbounds i8*, i8** %314, i64 0
  %315 = load i8*, i8** %arrayidx433, align 8, !tbaa !1
  %316 = load i32*, i32** %pttl.addr, align 8, !tbaa !1
  %call434 = call i32 @getcanonname(i8* %315, i32 12798, i32 0, i32* %316)
  %tobool435 = icmp ne i32 %call434, 0
  br i1 %tobool435, label %if.then.436, label %if.end.446

if.then.436:                                      ; preds = %land.lhs.true.432
  %call437 = call i64 @strlen(i8* getelementptr inbounds ([12800 x i8], [12800 x i8]* @MXHostBuf, i32 0, i32 0)) #10
  %arrayidx438 = getelementptr inbounds [12800 x i8], [12800 x i8]* @MXHostBuf, i32 0, i64 %call437
  store i8* %arrayidx438, i8** %bp, align 8, !tbaa !1
  %317 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx439 = getelementptr inbounds i8, i8* %317, i64 -1
  %318 = load i8, i8* %arrayidx439, align 1, !tbaa !9
  %conv440 = sext i8 %318 to i32
  %cmp441 = icmp ne i32 %conv440, 46
  br i1 %cmp441, label %if.then.443, label %if.end.445

if.then.443:                                      ; preds = %if.then.436
  %319 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr444 = getelementptr inbounds i8, i8* %319, i32 1
  store i8* %incdec.ptr444, i8** %bp, align 8, !tbaa !1
  store i8 46, i8* %319, align 1, !tbaa !9
  %320 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8 0, i8* %320, align 1, !tbaa !9
  br label %if.end.445

if.end.445:                                       ; preds = %if.then.443, %if.then.436
  store i32 1, i32* %nmx, align 4, !tbaa !5
  br label %if.end.446

if.end.446:                                       ; preds = %if.end.445, %land.lhs.true.432, %if.end.430
  br label %if.end.447

if.end.447:                                       ; preds = %if.end.446, %for.end.364
  %321 = load i8*, i8** %fallbackMX, align 8, !tbaa !1
  %cmp448 = icmp ne i8* %321, null
  br i1 %cmp448, label %land.lhs.true.450, label %if.end.454

land.lhs.true.450:                                ; preds = %if.end.447
  %322 = load i32, i32* %seenlocal, align 4, !tbaa !5
  %tobool451 = icmp ne i32 %322, 0
  br i1 %tobool451, label %if.end.454, label %if.then.452

if.then.452:                                      ; preds = %land.lhs.true.450
  %323 = load i32, i32* %nmx, align 4, !tbaa !5
  %324 = load i16*, i16** %prefs, align 8, !tbaa !1
  %325 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %call453 = call i32 @fallbackmxrr(i32 %323, i16* %324, i8** %325)
  store i32 %call453, i32* %nmx, align 4, !tbaa !5
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.452, %land.lhs.true.450, %if.end.447
  %326 = load i32, i32* %nmx, align 4, !tbaa !5
  store i32 %326, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.455

cleanup.455:                                      ; preds = %if.end.454, %if.then.404, %cleanup, %sw.epilog, %if.then.59, %if.then.9
  %327 = bitcast i32* %ttl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #1
  %328 = bitcast [100 x i32]* %weight to i8*
  call void @llvm.lifetime.end(i64 400, i8* %328) #1
  %329 = bitcast [100 x i16]* %prefer to i8*
  call void @llvm.lifetime.end(i64 200, i8* %329) #1
  %330 = bitcast i32 (i8*, i32, i32, i8*, i32)** %resfunc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %330) #1
  %331 = bitcast i16** %prefs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %331) #1
  %332 = bitcast i32* %trycanon to i8*
  call void @llvm.lifetime.end(i64 4, i8* %332) #1
  %333 = bitcast i8** %fallbackMX to i8*
  call void @llvm.lifetime.end(i64 8, i8* %333) #1
  %334 = bitcast i16* %localpref to i8*
  call void @llvm.lifetime.end(i64 2, i8* %334) #1
  %335 = bitcast i16* %type to i8*
  call void @llvm.lifetime.end(i64 2, i8* %335) #1
  %336 = bitcast i16* %pref to i8*
  call void @llvm.lifetime.end(i64 2, i8* %336) #1
  %337 = bitcast i32* %seenlocal to i8*
  call void @llvm.lifetime.end(i64 4, i8* %337) #1
  %338 = bitcast i32* %buflen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %338) #1
  %339 = bitcast i32* %qdcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %339) #1
  %340 = bitcast i32* %ancount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %340) #1
  %341 = bitcast %union.querybuf* %answer to i8*
  call void @llvm.lifetime.end(i64 8192, i8* %341) #1
  %342 = bitcast %struct.HEADER** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %342) #1
  %343 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %343) #1
  %344 = bitcast i32* %nmx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %344) #1
  %345 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %345) #1
  %346 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %346) #1
  %347 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %347) #1
  %348 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #1
  %349 = bitcast i8** %eom to i8*
  call void @llvm.lifetime.end(i64 8, i8* %349) #1
  %350 = load i32, i32* %retval
  ret i32 %350
}

declare i8* @newstr(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @sm_dprintf(i8*, ...) #2

declare i32 @wordinclass(i8*, i32) #2

; Function Attrs: nounwind
declare i32 @__res_query(i8*, i32, i32, i8*, i32) #3

; Function Attrs: nounwind
declare i32 @__res_search(i8*, i32, i32, i8*, i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind readnone
declare i32* @__h_errno_location() #4

; Function Attrs: nounwind uwtable
define internal i32 @fallbackmxrr(i32 %nmx, i16* %prefs, i8** %mxhosts) #0 {
entry:
  %nmx.addr = alloca i32, align 4
  %prefs.addr = alloca i16*, align 8
  %mxhosts.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 %nmx, i32* %nmx.addr, align 4, !tbaa !5
  store i16* %prefs, i16** %prefs.addr, align 8, !tbaa !1
  store i8** %mxhosts, i8*** %mxhosts.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* @NumFallbackMXHosts, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %nmx.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %3, 100
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %nmx.addr, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %nmx.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %7 = load i16*, i16** %prefs.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2, !tbaa !10
  %conv = zext i16 %8 to i32
  %add = add nsw i32 %conv, 1
  %conv3 = trunc i32 %add to i16
  %9 = load i32, i32* %nmx.addr, align 4, !tbaa !5
  %idxprom4 = sext i32 %9 to i64
  %10 = load i16*, i16** %prefs.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %10, i64 %idxprom4
  store i16 %conv3, i16* %arrayidx5, align 2, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %nmx.addr, align 4, !tbaa !5
  %idxprom6 = sext i32 %11 to i64
  %12 = load i16*, i16** %prefs.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %12, i64 %idxprom6
  store i16 0, i16* %arrayidx7, align 2, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [101 x i8*], [101 x i8*]* @fbhosts, i32 0, i64 %idxprom8
  %14 = load i8*, i8** %arrayidx9, align 8, !tbaa !1
  %15 = load i32, i32* %nmx.addr, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %nmx.addr, align 4, !tbaa !5
  %idxprom10 = sext i32 %15 to i64
  %16 = load i8**, i8*** %mxhosts.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8*, i8** %16, i64 %idxprom10
  store i8* %14, i8** %arrayidx11, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load i32, i32* %nmx.addr, align 4, !tbaa !5
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret i32 %18
}

declare void @syserr(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @__dn_skipname(i8*, i8*) #3

; Function Attrs: noreturn
declare void @sm_abort_at(i8*, i32, i8*) #5

; Function Attrs: nounwind
declare i32 @__dn_expand(i8*, i8*, i8*, i8*, i32) #3

; Function Attrs: nounwind readnone
declare %struct.__res_state* @__res_state() #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind uwtable
define internal i32 @mxrand(i8* %host) #0 {
entry:
  %host.addr = alloca i8*, align 8
  %hfunc = alloca i32, align 4
  %c = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %host, i8** %host.addr, align 8, !tbaa !1
  %0 = bitcast i32* %hfunc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* @mxrand.seed, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %call = call i64 @curtime()
  %conv = trunc i64 %call to i32
  %and = and i32 %conv, 65535
  store i32 %and, i32* @mxrand.seed, align 4, !tbaa !5
  %2 = load i32, i32* @mxrand.seed, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %3 = load i32, i32* @mxrand.seed, align 4, !tbaa !5
  %inc = add i32 %3, 1
  store i32 %inc, i32* @mxrand.seed, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %4 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 17), align 1, !tbaa !9
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp sge i32 %conv5, 9
  br i1 %cmp6, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end.4
  %5 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** %host.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* %6)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %if.end.4
  %7 = load i32, i32* @mxrand.seed, align 4, !tbaa !5
  store i32 %7, i32* %hfunc, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.end.9
  %8 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %9 = load i8, i8* %8, align 1, !tbaa !9
  %conv10 = sext i8 %9 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %host.addr, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !9
  %conv13 = sext i8 %12 to i32
  store i32 %conv13, i32* %c, align 4, !tbaa !5
  %13 = load i32, i32* %c, align 4, !tbaa !5
  %and14 = and i32 %13, -128
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.24

land.lhs.true.17:                                 ; preds = %while.body
  %14 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %call18 = call i16** @__ctype_b_loc() #8
  %15 = load i16*, i16** %call18, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2, !tbaa !10
  %conv19 = zext i16 %16 to i32
  %and20 = and i32 %conv19, 256
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %land.lhs.true.17
  %17 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %c, align 4, !tbaa !5
  %call23 = call i32 @tolower(i32 %18) #1
  store i32 %call23, i32* %__res, align 4, !tbaa !5
  %19 = load i32, i32* %__res, align 4, !tbaa !5
  store i32 %19, i32* %tmp, !tbaa !5
  %20 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = load i32, i32* %tmp, !tbaa !5
  store i32 %21, i32* %c, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %land.lhs.true.17, %while.body
  %22 = load i32, i32* %hfunc, align 4, !tbaa !5
  %shl = shl i32 %22, 1
  %23 = load i32, i32* %c, align 4, !tbaa !5
  %xor = xor i32 %shl, %23
  %rem = srem i32 %xor, 2003
  store i32 %rem, i32* %hfunc, align 4, !tbaa !5
  %24 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i32, i32* %hfunc, align 4, !tbaa !5
  %and25 = and i32 %25, 255
  store i32 %and25, i32* %hfunc, align 4, !tbaa !5
  %26 = load i32, i32* %hfunc, align 4, !tbaa !5
  %inc26 = add nsw i32 %26, 1
  store i32 %inc26, i32* %hfunc, align 4, !tbaa !5
  %27 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 17), align 1, !tbaa !9
  %conv27 = zext i8 %27 to i32
  %cmp28 = icmp sge i32 %conv27, 9
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.33

land.lhs.true.30:                                 ; preds = %while.end
  %28 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool31 = icmp ne i32 %28, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.30
  %29 = load i32, i32* %hfunc, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 %29)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %land.lhs.true.30, %while.end
  %30 = load i32, i32* %hfunc, align 4, !tbaa !5
  %31 = bitcast i32* %hfunc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  ret i32 %30
}

declare i32 @sm_strcasecmp(i8*, i8*) #2

declare %struct.hostent* @sm_gethostbyname(i8*, i32) #2

declare i8* @shortenstring(i8*, i64) #2

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #3

declare i32 @getcanonname(i8*, i32, i32, i32*) #2

; Function Attrs: nounwind uwtable
define i8* @bestmx_map_lookup(%struct._map* %map, i8* %name, i8** %av, i32* %statp) #0 {
entry:
  %retval = alloca i8*, align 8
  %map.addr = alloca %struct._map*, align 8
  %name.addr = alloca i8*, align 8
  %av.addr = alloca i8**, align 8
  %statp.addr = alloca i32*, align 8
  %nmx = alloca i32, align 4
  %saveopts = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i64, align 8
  %result = alloca i8*, align 8
  %mxhosts = alloca [101 x i8*], align 16
  %p = alloca i8*, align 8
  %buf = alloca [628 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %slen = alloca i64, align 8
  store %struct._map* %map, %struct._map** %map.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i8** %av, i8*** %av.addr, align 8, !tbaa !1
  store i32* %statp, i32** %statp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %nmx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %saveopts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %call = call %struct.__res_state* @__res_state() #8
  %options = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call, i32 0, i32 2
  %2 = load i64, i64* %options, align 8, !tbaa !14
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* %saveopts, align 4, !tbaa !5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64 0, i64* %len, align 8, !tbaa !7
  %5 = bitcast i8** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast [101 x i8*]* %mxhosts to i8*
  call void @llvm.lifetime.start(i64 808, i8* %6) #1
  %7 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast [628 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 628, i8* %8) #1
  %call1 = call %struct.__res_state* @__res_state() #8
  %options2 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call1, i32 0, i32 2
  %9 = load i64, i64* %options2, align 8, !tbaa !14
  %and = and i64 %9, -641
  store i64 %and, i64* %options2, align 8, !tbaa !14
  %10 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [101 x i8*], [101 x i8*]* %mxhosts, i32 0, i32 0
  %11 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  %call3 = call i32 @getmxrr(i8* %10, i8** %arraydecay, i16* null, i32 0, i32* %11, i32 0, i32* null)
  store i32 %call3, i32* %nmx, align 4, !tbaa !5
  %12 = load i32, i32* %saveopts, align 4, !tbaa !5
  %conv4 = sext i32 %12 to i64
  %call5 = call %struct.__res_state* @__res_state() #8
  %options6 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call5, i32 0, i32 2
  store i64 %conv4, i64* %options6, align 8, !tbaa !14
  %13 = load i32, i32* %nmx, align 4, !tbaa !5
  %cmp = icmp sle i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end:                                           ; preds = %entry
  %14 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_mflags = getelementptr inbounds %struct._map, %struct._map* %14, i32 0, i32 3
  %15 = load i64, i64* %map_mflags, align 8, !tbaa !16
  %and8 = and i64 %15, 16
  %cmp9 = icmp ne i64 %and8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end
  %16 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call12 = call i64 @strlen(i8* %18) #10
  %call13 = call i8* @map_rewrite(%struct._map* %16, i8* %17, i64 %call12, i8** null)
  store i8* %call13, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end.14:                                        ; preds = %if.end
  %19 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim = getelementptr inbounds %struct._map, %struct._map* %19, i32 0, i32 11
  %20 = load i8, i8* %map_coldelim, align 1, !tbaa !18
  %conv15 = sext i8 %20 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %21 = load i32, i32* %nmx, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %21, 1
  br i1 %cmp18, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.14
  %22 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [101 x i8*], [101 x i8*]* %mxhosts, i32 0, i64 0
  %23 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds [101 x i8*], [101 x i8*]* %mxhosts, i32 0, i64 0
  %24 = load i8*, i8** %arrayidx21, align 8, !tbaa !1
  %call22 = call i64 @strlen(i8* %24) #10
  %25 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %call23 = call i8* @map_rewrite(%struct._map* %22, i8* %23, i64 %call22, i8** %25)
  store i8* %call23, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end.24:                                        ; preds = %lor.lhs.false
  %arraydecay25 = getelementptr inbounds [628 x i8], [628 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay25, i8** %p, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %27 = load i32, i32* %nmx, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %26, %27
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = bitcast i64* %slen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds [101 x i8*], [101 x i8*]* %mxhosts, i32 0, i64 %idxprom
  %30 = load i8*, i8** %arrayidx28, align 8, !tbaa !1
  %31 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim29 = getelementptr inbounds %struct._map, %struct._map* %31, i32 0, i32 11
  %32 = load i8, i8* %map_coldelim29, align 1, !tbaa !18
  %conv30 = sext i8 %32 to i32
  %call31 = call i8* @strchr(i8* %30, i32 %conv30) #1
  %cmp32 = icmp ne i8* %call31, null
  br i1 %cmp32, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %for.body
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %33 to i64
  %arrayidx36 = getelementptr inbounds [101 x i8*], [101 x i8*]* %mxhosts, i32 0, i64 %idxprom35
  %34 = load i8*, i8** %arrayidx36, align 8, !tbaa !1
  %35 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim37 = getelementptr inbounds %struct._map, %struct._map* %35, i32 0, i32 11
  %36 = load i8, i8* %map_coldelim37, align 1, !tbaa !18
  %conv38 = sext i8 %36 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i32 0, i32 0), i8* %34, i32 %conv38)
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %for.body
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %37 to i64
  %arrayidx41 = getelementptr inbounds [101 x i8*], [101 x i8*]* %mxhosts, i32 0, i64 %idxprom40
  %38 = load i8*, i8** %arrayidx41, align 8, !tbaa !1
  %call42 = call i64 @strlen(i8* %38) #10
  store i64 %call42, i64* %slen, align 8, !tbaa !7
  %39 = load i64, i64* %len, align 8, !tbaa !7
  %40 = load i64, i64* %slen, align 8, !tbaa !7
  %add = add i64 %39, %40
  %add43 = add i64 %add, 2
  %cmp44 = icmp ugt i64 %add43, 628
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.39
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.end.39
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %cmp48 = icmp sgt i32 %41, 0
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.47
  %42 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %map_coldelim51 = getelementptr inbounds %struct._map, %struct._map* %42, i32 0, i32 11
  %43 = load i8, i8* %map_coldelim51, align 1, !tbaa !18
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 %43, i8* %44, align 1, !tbaa !9
  %45 = load i64, i64* %len, align 8, !tbaa !7
  %inc = add nsw i64 %45, 1
  store i64 %inc, i64* %len, align 8, !tbaa !7
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.47
  %46 = load i8*, i8** %p, align 8, !tbaa !1
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %47 to i64
  %arrayidx54 = getelementptr inbounds [101 x i8*], [101 x i8*]* %mxhosts, i32 0, i64 %idxprom53
  %48 = load i8*, i8** %arrayidx54, align 8, !tbaa !1
  %49 = load i64, i64* %len, align 8, !tbaa !7
  %sub = sub i64 628, %49
  %call55 = call i64 @sm_strlcpy(i8* %46, i8* %48, i64 %sub)
  %50 = load i64, i64* %slen, align 8, !tbaa !7
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %52 = load i64, i64* %slen, align 8, !tbaa !7
  %53 = load i64, i64* %len, align 8, !tbaa !7
  %add56 = add i64 %53, %52
  store i64 %add56, i64* %len, align 8, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %if.then.46, %if.then.34
  %54 = bitcast i64* %slen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.60 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %inc57 = add nsw i32 %55, 1
  store i32 %inc57, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  %56 = load %struct._map*, %struct._map** %map.addr, align 8, !tbaa !1
  %arraydecay58 = getelementptr inbounds [628 x i8], [628 x i8]* %buf, i32 0, i32 0
  %57 = load i64, i64* %len, align 8, !tbaa !7
  %58 = load i8**, i8*** %av.addr, align 8, !tbaa !1
  %call59 = call i8* @map_rewrite(%struct._map* %56, i8* %arraydecay58, i64 %57, i8** %58)
  store i8* %call59, i8** %result, align 8, !tbaa !1
  %59 = load i8*, i8** %result, align 8, !tbaa !1
  store i8* %59, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %for.end, %cleanup, %if.then.20, %if.then.11, %if.then
  %60 = bitcast [628 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 628, i8* %60) #1
  %61 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast [101 x i8*]* %mxhosts to i8*
  call void @llvm.lifetime.end(i64 808, i8* %62) #1
  %63 = bitcast i8** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %saveopts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %nmx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = load i8*, i8** %retval
  ret i8* %68
}

declare i8* @map_rewrite(%struct._map*, i8*, i64, i8**) #2

; Function Attrs: nounwind uwtable
define i32 @dns_getcanonname(i8* %host, i32 %hbsize, i32 %trymx, i32* %statp, i32* %pttl) #0 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca i8*, align 8
  %hbsize.addr = alloca i32, align 4
  %trymx.addr = alloca i32, align 4
  %statp.addr = alloca i32*, align 8
  %pttl.addr = alloca i32*, align 8
  %eom = alloca i8*, align 8
  %ap = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %n = alloca i32, align 4
  %hp = alloca %struct.HEADER*, align 8
  %answer = alloca %union.querybuf, align 4
  %ancount = alloca i32, align 4
  %qdcount = alloca i32, align 4
  %ret = alloca i32, align 4
  %domain = alloca i8**, align 8
  %type = alloca i32, align 4
  %ttl = alloca i32, align 4
  %dp = alloca i8**, align 8
  %mxmatch = alloca i8*, align 8
  %amatch = alloca i32, align 4
  %gotmx = alloca i32, align 4
  %qtype = alloca i32, align 4
  %initial = alloca i32, align 4
  %loopcnt = alloca i32, align 4
  %nbuf = alloca [8192 x i8], align 16
  %searchlist = alloca [8 x i8*], align 16
  %cleanup.dest.slot = alloca i32
  %save_errno = alloca i32, align 4
  %__v = alloca i16, align 2
  %__x = alloca i16, align 2
  %tmp = alloca i16, align 2
  %__v182 = alloca i16, align 2
  %__x184 = alloca i16, align 2
  %tmp190 = alloca i16, align 2
  %__v199 = alloca i16, align 2
  %__x201 = alloca i16, align 2
  %tmp207 = alloca i16, align 2
  %t_cp = alloca i8*, align 8
  %t_cp236 = alloca i8*, align 8
  %t_cp256 = alloca i8*, align 8
  %ebuf = alloca [2048 x i8], align 16
  store i8* %host, i8** %host.addr, align 8, !tbaa !1
  store i32 %hbsize, i32* %hbsize.addr, align 4, !tbaa !5
  store i32 %trymx, i32* %trymx.addr, align 4, !tbaa !5
  store i32* %statp, i32** %statp.addr, align 8, !tbaa !1
  store i32* %pttl, i32** %pttl.addr, align 8, !tbaa !1
  %0 = bitcast i8** %eom to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %ap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.HEADER** %hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %union.querybuf* %answer to i8*
  call void @llvm.lifetime.start(i64 8192, i8* %5) #1
  %6 = bitcast i32* %ancount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %qdcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i8*** %domain to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %ttl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %ttl, align 4, !tbaa !5
  %12 = bitcast i8*** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %mxmatch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32* %amatch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %gotmx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %gotmx, align 4, !tbaa !5
  %16 = bitcast i32* %qtype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %initial to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %loopcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast [8192 x i8]* %nbuf to i8*
  call void @llvm.lifetime.start(i64 8192, i8* %19) #1
  %20 = bitcast [8 x i8*]* %searchlist to i8*
  call void @llvm.lifetime.start(i64 64, i8* %20) #1
  %21 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !9
  %conv = zext i8 %21 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %22 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %23 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %24 = load i32, i32* %trymx.addr, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i8* %23, i32 %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call = call %struct.__res_state* @__res_state() #8
  %options = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call, i32 0, i32 2
  %25 = load i64, i64* %options, align 8, !tbaa !14
  %and = and i64 %25, 1
  %cmp2 = icmp eq i64 %and, 0
  br i1 %cmp2, label %land.lhs.true.4, label %if.end.9

land.lhs.true.4:                                  ; preds = %if.end
  %call5 = call i32 @__res_init() #1
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true.4
  %26 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 69, i32* %26, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.364

if.end.9:                                         ; preds = %land.lhs.true.4, %if.end
  %27 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 0, i32* %27, align 4, !tbaa !5
  store i32 0, i32* %loopcnt, align 4, !tbaa !5
  br label %cnameloop

cnameloop:                                        ; preds = %if.end.307, %if.end.9
  %28 = load i8*, i8** %host.addr, align 8, !tbaa !1
  store i8* %28, i8** %cp, align 8, !tbaa !1
  store i32 0, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cnameloop
  %29 = load i8*, i8** %cp, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !9
  %conv10 = sext i8 %30 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i8*, i8** %cp, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !9
  %conv13 = sext i8 %32 to i32
  %cmp14 = icmp eq i32 %conv13, 46
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body
  %33 = load i32, i32* %n, align 4, !tbaa !5
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %n, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %34 = load i8*, i8** %cp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [8 x i8*], [8 x i8*]* %searchlist, i32 0, i32 0
  store i8** %arraydecay, i8*** %dp, align 8, !tbaa !1
  %35 = load i32, i32* %n, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %35, 0
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %for.end
  %36 = load i8**, i8*** %dp, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %incdec.ptr21, i8*** %dp, align 8, !tbaa !1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8** %36, align 8, !tbaa !1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %for.end
  %37 = load i32, i32* %n, align 4, !tbaa !5
  %cmp23 = icmp sge i32 %37, 0
  br i1 %cmp23, label %land.lhs.true.25, label %if.else

land.lhs.true.25:                                 ; preds = %if.end.22
  %38 = load i8*, i8** %cp, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %incdec.ptr26, i8** %cp, align 8, !tbaa !1
  %39 = load i8, i8* %incdec.ptr26, align 1, !tbaa !9
  %conv27 = sext i8 %39 to i32
  %cmp28 = icmp ne i32 %conv27, 46
  br i1 %cmp28, label %land.lhs.true.30, label %if.else

land.lhs.true.30:                                 ; preds = %land.lhs.true.25
  %call31 = call %struct.__res_state* @__res_state() #8
  %options32 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call31, i32 0, i32 2
  %40 = load i64, i64* %options32, align 8, !tbaa !14
  %and33 = and i64 %40, 512
  %cmp34 = icmp ne i64 %and33, 0
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %land.lhs.true.30
  %call37 = call %struct.__res_state* @__res_state() #8
  %dnsrch = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call37, i32 0, i32 6
  %arraydecay38 = getelementptr inbounds [7 x i8*], [7 x i8*]* %dnsrch, i32 0, i32 0
  store i8** %arraydecay38, i8*** %domain, align 8, !tbaa !1
  store i32 0, i32* %ret, align 4, !tbaa !5
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.47, %if.then.36
  %41 = load i8**, i8*** %domain, align 8, !tbaa !1
  %42 = load i8*, i8** %41, align 8, !tbaa !1
  %cmp40 = icmp ne i8* %42, null
  br i1 %cmp40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.39
  %43 = load i32, i32* %ret, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %43, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.39
  %44 = phi i1 [ false, %for.cond.39 ], [ %cmp42, %land.rhs ]
  br i1 %44, label %for.body.44, label %for.end.49

for.body.44:                                      ; preds = %land.end
  %45 = load i8**, i8*** %domain, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %incdec.ptr45, i8*** %domain, align 8, !tbaa !1
  %46 = load i8*, i8** %45, align 8, !tbaa !1
  %47 = load i8**, i8*** %dp, align 8, !tbaa !1
  %incdec.ptr46 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %incdec.ptr46, i8*** %dp, align 8, !tbaa !1
  store i8* %46, i8** %47, align 8, !tbaa !1
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.44
  %48 = load i32, i32* %ret, align 4, !tbaa !5
  %inc48 = add nsw i32 %48, 1
  store i32 %inc48, i32* %ret, align 4, !tbaa !5
  br label %for.cond.39

for.end.49:                                       ; preds = %land.end
  br label %if.end.69

if.else:                                          ; preds = %land.lhs.true.30, %land.lhs.true.25, %if.end.22
  %49 = load i32, i32* %n, align 4, !tbaa !5
  %cmp50 = icmp eq i32 %49, 0
  br i1 %cmp50, label %land.lhs.true.52, label %if.else.62

land.lhs.true.52:                                 ; preds = %if.else
  %call53 = call %struct.__res_state* @__res_state() #8
  %options54 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call53, i32 0, i32 2
  %50 = load i64, i64* %options54, align 8, !tbaa !14
  %and55 = and i64 %50, 128
  %cmp56 = icmp ne i64 %and55, 0
  br i1 %cmp56, label %if.then.58, label %if.else.62

if.then.58:                                       ; preds = %land.lhs.true.52
  %call59 = call %struct.__res_state* @__res_state() #8
  %defdname = getelementptr inbounds %struct.__res_state, %struct.__res_state* %call59, i32 0, i32 7
  %arraydecay60 = getelementptr inbounds [256 x i8], [256 x i8]* %defdname, i32 0, i32 0
  %51 = load i8**, i8*** %dp, align 8, !tbaa !1
  %incdec.ptr61 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %incdec.ptr61, i8*** %dp, align 8, !tbaa !1
  store i8* %arraydecay60, i8** %51, align 8, !tbaa !1
  br label %if.end.68

if.else.62:                                       ; preds = %land.lhs.true.52, %if.else
  %52 = load i8*, i8** %cp, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !9
  %conv63 = sext i8 %53 to i32
  %cmp64 = icmp eq i32 %conv63, 46
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.else.62
  %54 = load i8*, i8** %cp, align 8, !tbaa !1
  store i8 0, i8* %54, align 1, !tbaa !9
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.else.62
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.58
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %for.end.49
  %55 = load i8**, i8*** %dp, align 8, !tbaa !1
  store i8* null, i8** %55, align 8, !tbaa !1
  store i8* null, i8** %mxmatch, align 8, !tbaa !1
  store i32 1, i32* %initial, align 4, !tbaa !5
  %56 = load i32, i32* %initial, align 4, !tbaa !5
  store i32 %56, i32* %qtype, align 4, !tbaa !5
  %arraydecay70 = getelementptr inbounds [8 x i8*], [8 x i8*]* %searchlist, i32 0, i32 0
  store i8** %arraydecay70, i8*** %dp, align 8, !tbaa !1
  br label %for.cond.71

for.cond.71:                                      ; preds = %if.end.331, %cleanup, %if.end.69
  %57 = load i8**, i8*** %dp, align 8, !tbaa !1
  %58 = load i8*, i8** %57, align 8, !tbaa !1
  %cmp72 = icmp ne i8* %58, null
  br i1 %cmp72, label %for.body.74, label %for.end.332

for.body.74:                                      ; preds = %for.cond.71
  %59 = load i32, i32* %qtype, align 4, !tbaa !5
  %60 = load i32, i32* %initial, align 4, !tbaa !5
  %cmp75 = icmp eq i32 %59, %60
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.body.74
  store i32 0, i32* %gotmx, align 4, !tbaa !5
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %for.body.74
  %61 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !9
  %conv79 = zext i8 %61 to i32
  %cmp80 = icmp sge i32 %conv79, 5
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.90

land.lhs.true.82:                                 ; preds = %if.end.78
  %62 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool83 = icmp ne i32 %62, 0
  br i1 %tobool83, label %if.end.90, label %if.then.84

if.then.84:                                       ; preds = %land.lhs.true.82
  %63 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %64 = load i8**, i8*** %dp, align 8, !tbaa !1
  %65 = load i8*, i8** %64, align 8, !tbaa !1
  %66 = load i32, i32* %qtype, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %66, 1
  br i1 %cmp85, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.84
  br label %cond.end

cond.false:                                       ; preds = %if.then.84
  %67 = load i32, i32* %qtype, align 4, !tbaa !5
  %cmp87 = icmp eq i32 %67, 15
  %cond = select i1 %cmp87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond89 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), %cond.true ], [ %cond, %cond.false ]
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i8* %63, i8* %65, i8* %cond89)
  br label %if.end.90

if.end.90:                                        ; preds = %cond.end, %land.lhs.true.82, %if.end.78
  %call91 = call i32* @__errno_location() #8
  store i32 0, i32* %call91, align 4, !tbaa !5
  %68 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %69 = load i8**, i8*** %dp, align 8, !tbaa !1
  %70 = load i8*, i8** %69, align 8, !tbaa !1
  %71 = load i32, i32* %qtype, align 4, !tbaa !5
  %qb2 = bitcast %union.querybuf* %answer to [8192 x i8]*
  %arraydecay92 = getelementptr inbounds [8192 x i8], [8192 x i8]* %qb2, i32 0, i32 0
  %call93 = call i32 @__res_querydomain(i8* %68, i8* %70, i32 1, i32 %71, i8* %arraydecay92, i32 8192) #1
  store i32 %call93, i32* %ret, align 4, !tbaa !5
  %72 = load i32, i32* %ret, align 4, !tbaa !5
  %cmp94 = icmp sle i32 %72, 0
  br i1 %cmp94, label %if.then.96, label %if.else.149

if.then.96:                                       ; preds = %if.end.90
  %73 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %call97 = call i32* @__errno_location() #8
  %74 = load i32, i32* %call97, align 4, !tbaa !5
  store i32 %74, i32* %save_errno, align 4, !tbaa !5
  %75 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !9
  %conv98 = zext i8 %75 to i32
  %cmp99 = icmp sge i32 %conv98, 7
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.105

land.lhs.true.101:                                ; preds = %if.then.96
  %76 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool102 = icmp ne i32 %76, 0
  br i1 %tobool102, label %if.end.105, label %if.then.103

if.then.103:                                      ; preds = %land.lhs.true.101
  %77 = load i32, i32* %save_errno, align 4, !tbaa !5
  %call104 = call i32* @__h_errno_location() #8
  %78 = load i32, i32* %call104, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 %77, i32 %78)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %land.lhs.true.101, %if.then.96
  %79 = load i32, i32* %save_errno, align 4, !tbaa !5
  %cmp106 = icmp eq i32 %79, 111
  br i1 %cmp106, label %if.then.111, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.105
  %call108 = call i32* @__h_errno_location() #8
  %80 = load i32, i32* %call108, align 4, !tbaa !5
  %cmp109 = icmp eq i32 %80, 2
  br i1 %cmp109, label %if.then.111, label %if.end.130

if.then.111:                                      ; preds = %lor.lhs.false, %if.end.105
  %call112 = call i32* @__h_errno_location() #8
  store i32 2, i32* %call112, align 4, !tbaa !5
  %81 = load i8**, i8*** %dp, align 8, !tbaa !1
  %82 = load i8*, i8** %81, align 8, !tbaa !1
  %83 = load i8, i8* %82, align 1, !tbaa !9
  %conv113 = sext i8 %83 to i32
  %cmp114 = icmp eq i32 %conv113, 0
  br i1 %cmp114, label %if.then.116, label %if.end.121

if.then.116:                                      ; preds = %if.then.111
  %84 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  %85 = load i32, i32* %84, align 4, !tbaa !5
  %cmp117 = icmp eq i32 %85, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.then.116
  %86 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 75, i32* %86, align 4, !tbaa !5
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.then.116
  br label %nexttype

if.end.121:                                       ; preds = %if.then.111
  %87 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 75, i32* %87, align 4, !tbaa !5
  %88 = load i32, i32* @WorkAroundBrokenAAAA, align 4, !tbaa !5
  %tobool122 = icmp ne i32 %88, 0
  br i1 %tobool122, label %if.then.123, label %if.else.128

if.then.123:                                      ; preds = %if.end.121
  %89 = load i32, i32* %save_errno, align 4, !tbaa !5
  %cmp124 = icmp ne i32 %89, 110
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.then.123
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.127:                                       ; preds = %if.then.123
  br label %if.end.129

if.else.128:                                      ; preds = %if.end.121
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.129:                                       ; preds = %if.end.127
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %lor.lhs.false
  br label %nexttype

nexttype:                                         ; preds = %if.end.130, %if.end.120
  %call131 = call i32* @__h_errno_location() #8
  %90 = load i32, i32* %call131, align 4, !tbaa !5
  %cmp132 = icmp ne i32 %90, 1
  br i1 %cmp132, label %if.then.134, label %if.end.147

if.then.134:                                      ; preds = %nexttype
  %91 = load i32, i32* %qtype, align 4, !tbaa !5
  %cmp135 = icmp eq i32 %91, 1
  br i1 %cmp135, label %land.lhs.true.137, label %if.end.146

land.lhs.true.137:                                ; preds = %if.then.134
  %92 = load i32, i32* %gotmx, align 4, !tbaa !5
  %tobool138 = icmp ne i32 %92, 0
  br i1 %tobool138, label %if.end.146, label %land.lhs.true.139

land.lhs.true.139:                                ; preds = %land.lhs.true.137
  %93 = load i32, i32* %trymx.addr, align 4, !tbaa !5
  %tobool140 = icmp ne i32 %93, 0
  br i1 %tobool140, label %if.then.145, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %land.lhs.true.139
  %94 = load i8**, i8*** %dp, align 8, !tbaa !1
  %95 = load i8*, i8** %94, align 8, !tbaa !1
  %96 = load i8, i8* %95, align 1, !tbaa !9
  %conv142 = sext i8 %96 to i32
  %cmp143 = icmp eq i32 %conv142, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %lor.lhs.false.141, %land.lhs.true.139
  store i32 15, i32* %qtype, align 4, !tbaa !5
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.146:                                       ; preds = %lor.lhs.false.141, %land.lhs.true.137, %if.then.134
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %nexttype
  %97 = load i8**, i8*** %dp, align 8, !tbaa !1
  %incdec.ptr148 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %incdec.ptr148, i8*** %dp, align 8, !tbaa !1
  %98 = load i32, i32* %initial, align 4, !tbaa !5
  store i32 %98, i32* %qtype, align 4, !tbaa !5
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.147, %if.then.145, %if.else.128, %if.then.126
  %99 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.364 [
    i32 10, label %for.cond.71
  ]

if.else.149:                                      ; preds = %if.end.90
  %100 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !9
  %conv150 = zext i8 %100 to i32
  %cmp151 = icmp sge i32 %conv150, 7
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.156

land.lhs.true.153:                                ; preds = %if.else.149
  %101 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool154 = icmp ne i32 %101, 0
  br i1 %tobool154, label %if.end.156, label %if.then.155

if.then.155:                                      ; preds = %land.lhs.true.153
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %land.lhs.true.153, %if.else.149
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156
  %102 = load i32, i32* %ret, align 4, !tbaa !5
  %conv158 = sext i32 %102 to i64
  %cmp159 = icmp ugt i64 %conv158, 8192
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.157
  store i32 8192, i32* %ret, align 4, !tbaa !5
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %if.end.157
  %103 = load i32, i32* %ret, align 4, !tbaa !5
  %cmp163 = icmp sge i32 %103, 0
  br i1 %cmp163, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.162
  call void @sm_abort_at(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 957, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0)) #9
  unreachable
                                                  ; No predecessors!
  br label %lor.end

lor.end:                                          ; preds = %104, %if.end.162
  %105 = phi i1 [ true, %if.end.162 ], [ false, %104 ]
  %lor.ext = zext i1 %105 to i32
  %106 = bitcast %union.querybuf* %answer to %struct.HEADER*
  store %struct.HEADER* %106, %struct.HEADER** %hp, align 8, !tbaa !1
  %107 = bitcast %union.querybuf* %answer to i8*
  %add.ptr = getelementptr inbounds i8, i8* %107, i64 12
  store i8* %add.ptr, i8** %ap, align 8, !tbaa !1
  %108 = bitcast %union.querybuf* %answer to i8*
  %109 = load i32, i32* %ret, align 4, !tbaa !5
  %idx.ext = sext i32 %109 to i64
  %add.ptr165 = getelementptr inbounds i8, i8* %108, i64 %idx.ext
  store i8* %add.ptr165, i8** %eom, align 8, !tbaa !1
  %110 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.start(i64 2, i8* %110) #1
  %111 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.start(i64 2, i8* %111) #1
  %112 = load %struct.HEADER*, %struct.HEADER** %hp, align 8, !tbaa !1
  %113 = bitcast %struct.HEADER* %112 to i96*
  %bf.load = load i96, i96* %113, align 4
  %bf.lshr = lshr i96 %bf.load, 32
  %bf.clear = and i96 %bf.lshr, 65535
  %bf.cast = trunc i96 %bf.clear to i32
  %conv166 = trunc i32 %bf.cast to i16
  store i16 %conv166, i16* %__x, align 2, !tbaa !10
  %114 = load i16, i16* %__x, align 2, !tbaa !10
  %115 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %114) #8, !srcloc !19
  store i16 %115, i16* %__v, align 2, !tbaa !10
  %116 = load i16, i16* %__v, align 2, !tbaa !10
  store i16 %116, i16* %tmp, !tbaa !10
  %117 = bitcast i16* %__x to i8*
  call void @llvm.lifetime.end(i64 2, i8* %117) #1
  %118 = bitcast i16* %__v to i8*
  call void @llvm.lifetime.end(i64 2, i8* %118) #1
  %119 = load i16, i16* %tmp, !tbaa !10
  %conv167 = zext i16 %119 to i32
  store i32 %conv167, i32* %qdcount, align 4, !tbaa !5
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.194, %lor.end
  %120 = load i32, i32* %qdcount, align 4, !tbaa !5
  %dec = add nsw i32 %120, -1
  store i32 %dec, i32* %qdcount, align 4, !tbaa !5
  %tobool169 = icmp ne i32 %120, 0
  br i1 %tobool169, label %for.body.170, label %for.end.197

for.body.170:                                     ; preds = %for.cond.168
  %121 = load i8*, i8** %ap, align 8, !tbaa !1
  %122 = load i8*, i8** %eom, align 8, !tbaa !1
  %call171 = call i32 @__dn_skipname(i8* %121, i8* %122) #1
  store i32 %call171, i32* %ret, align 4, !tbaa !5
  %cmp172 = icmp slt i32 %call171, 0
  br i1 %cmp172, label %if.then.174, label %if.end.193

if.then.174:                                      ; preds = %for.body.170
  %123 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !9
  %conv175 = zext i8 %123 to i32
  %cmp176 = icmp sge i32 %conv175, 20
  br i1 %cmp176, label %land.lhs.true.178, label %if.end.192

land.lhs.true.178:                                ; preds = %if.then.174
  %124 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool179 = icmp ne i32 %124, 0
  br i1 %tobool179, label %if.end.192, label %if.then.180

if.then.180:                                      ; preds = %land.lhs.true.178
  %125 = bitcast i16* %__v182 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %125) #1
  %126 = bitcast i16* %__x184 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %126) #1
  %127 = load %struct.HEADER*, %struct.HEADER** %hp, align 8, !tbaa !1
  %128 = bitcast %struct.HEADER* %127 to i96*
  %bf.load185 = load i96, i96* %128, align 4
  %bf.lshr186 = lshr i96 %bf.load185, 32
  %bf.clear187 = and i96 %bf.lshr186, 65535
  %bf.cast188 = trunc i96 %bf.clear187 to i32
  %conv189 = trunc i32 %bf.cast188 to i16
  store i16 %conv189, i16* %__x184, align 2, !tbaa !10
  %129 = load i16, i16* %__x184, align 2, !tbaa !10
  %130 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %129) #8, !srcloc !20
  store i16 %130, i16* %__v182, align 2, !tbaa !10
  %131 = load i16, i16* %__v182, align 2, !tbaa !10
  store i16 %131, i16* %tmp190, !tbaa !10
  %132 = bitcast i16* %__x184 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %132) #1
  %133 = bitcast i16* %__v182 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %133) #1
  %134 = load i16, i16* %tmp190, !tbaa !10
  %conv191 = zext i16 %134 to i32
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0), i32 %conv191)
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.180, %land.lhs.true.178, %if.then.174
  %135 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 70, i32* %135, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.364

if.end.193:                                       ; preds = %for.body.170
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.193
  %136 = load i32, i32* %ret, align 4, !tbaa !5
  %add = add nsw i32 %136, 4
  %137 = load i8*, i8** %ap, align 8, !tbaa !1
  %idx.ext195 = sext i32 %add to i64
  %add.ptr196 = getelementptr inbounds i8, i8* %137, i64 %idx.ext195
  store i8* %add.ptr196, i8** %ap, align 8, !tbaa !1
  br label %for.cond.168

for.end.197:                                      ; preds = %for.cond.168
  store i32 0, i32* %amatch, align 4, !tbaa !5
  %138 = bitcast i16* %__v199 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %138) #1
  %139 = bitcast i16* %__x201 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %139) #1
  %140 = load %struct.HEADER*, %struct.HEADER** %hp, align 8, !tbaa !1
  %141 = bitcast %struct.HEADER* %140 to i96*
  %bf.load202 = load i96, i96* %141, align 4
  %bf.lshr203 = lshr i96 %bf.load202, 48
  %bf.clear204 = and i96 %bf.lshr203, 65535
  %bf.cast205 = trunc i96 %bf.clear204 to i32
  %conv206 = trunc i32 %bf.cast205 to i16
  store i16 %conv206, i16* %__x201, align 2, !tbaa !10
  %142 = load i16, i16* %__x201, align 2, !tbaa !10
  %143 = call i16 asm "rorw $$8, ${0:w}", "=r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i16 %142) #8, !srcloc !21
  store i16 %143, i16* %__v199, align 2, !tbaa !10
  %144 = load i16, i16* %__v199, align 2, !tbaa !10
  store i16 %144, i16* %tmp207, !tbaa !10
  %145 = bitcast i16* %__x201 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %145) #1
  %146 = bitcast i16* %__v199 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %146) #1
  %147 = load i16, i16* %tmp207, !tbaa !10
  %conv208 = zext i16 %147 to i32
  store i32 %conv208, i32* %ancount, align 4, !tbaa !5
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.311, %for.end.197
  %148 = load i32, i32* %ancount, align 4, !tbaa !5
  %dec210 = add nsw i32 %148, -1
  store i32 %dec210, i32* %ancount, align 4, !tbaa !5
  %cmp211 = icmp sge i32 %dec210, 0
  br i1 %cmp211, label %land.rhs.213, label %land.end.216

land.rhs.213:                                     ; preds = %for.cond.209
  %149 = load i8*, i8** %ap, align 8, !tbaa !1
  %150 = load i8*, i8** %eom, align 8, !tbaa !1
  %cmp214 = icmp ult i8* %149, %150
  br label %land.end.216

land.end.216:                                     ; preds = %land.rhs.213, %for.cond.209
  %151 = phi i1 [ false, %for.cond.209 ], [ %cmp214, %land.rhs.213 ]
  br i1 %151, label %for.body.217, label %for.end.314

for.body.217:                                     ; preds = %land.end.216
  %152 = bitcast %union.querybuf* %answer to i8*
  %153 = load i8*, i8** %eom, align 8, !tbaa !1
  %154 = load i8*, i8** %ap, align 8, !tbaa !1
  %arraydecay218 = getelementptr inbounds [8192 x i8], [8192 x i8]* %nbuf, i32 0, i32 0
  %call219 = call i32 @__dn_expand(i8* %152, i8* %153, i8* %154, i8* %arraydecay218, i32 8192) #1
  store i32 %call219, i32* %n, align 4, !tbaa !5
  %155 = load i32, i32* %n, align 4, !tbaa !5
  %cmp220 = icmp slt i32 %155, 0
  br i1 %cmp220, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %for.body.217
  br label %for.end.314

if.end.223:                                       ; preds = %for.body.217
  %156 = load i32, i32* %n, align 4, !tbaa !5
  %157 = load i8*, i8** %ap, align 8, !tbaa !1
  %idx.ext224 = sext i32 %156 to i64
  %add.ptr225 = getelementptr inbounds i8, i8* %157, i64 %idx.ext224
  store i8* %add.ptr225, i8** %ap, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end.223
  %158 = bitcast i8** %t_cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %158) #1
  %159 = load i8*, i8** %ap, align 8, !tbaa !1
  store i8* %159, i8** %t_cp, align 8, !tbaa !1
  %160 = load i8*, i8** %t_cp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %160, i64 0
  %161 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv227 = zext i8 %161 to i16
  %conv228 = zext i16 %conv227 to i32
  %shl = shl i32 %conv228, 8
  %162 = load i8*, i8** %t_cp, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i8, i8* %162, i64 1
  %163 = load i8, i8* %arrayidx229, align 1, !tbaa !9
  %conv230 = zext i8 %163 to i16
  %conv231 = zext i16 %conv230 to i32
  %or = or i32 %shl, %conv231
  store i32 %or, i32* %type, align 4, !tbaa !5
  %164 = load i8*, i8** %ap, align 8, !tbaa !1
  %add.ptr232 = getelementptr inbounds i8, i8* %164, i64 2
  store i8* %add.ptr232, i8** %ap, align 8, !tbaa !1
  %165 = bitcast i8** %t_cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %166 = load i8*, i8** %ap, align 8, !tbaa !1
  %add.ptr233 = getelementptr inbounds i8, i8* %166, i64 2
  store i8* %add.ptr233, i8** %ap, align 8, !tbaa !1
  br label %do.body.234

do.body.234:                                      ; preds = %do.end
  %167 = bitcast i8** %t_cp236 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %167) #1
  %168 = load i8*, i8** %ap, align 8, !tbaa !1
  store i8* %168, i8** %t_cp236, align 8, !tbaa !1
  %169 = load i8*, i8** %t_cp236, align 8, !tbaa !1
  %arrayidx237 = getelementptr inbounds i8, i8* %169, i64 0
  %170 = load i8, i8* %arrayidx237, align 1, !tbaa !9
  %conv238 = zext i8 %170 to i32
  %shl239 = shl i32 %conv238, 24
  %171 = load i8*, i8** %t_cp236, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds i8, i8* %171, i64 1
  %172 = load i8, i8* %arrayidx240, align 1, !tbaa !9
  %conv241 = zext i8 %172 to i32
  %shl242 = shl i32 %conv241, 16
  %or243 = or i32 %shl239, %shl242
  %173 = load i8*, i8** %t_cp236, align 8, !tbaa !1
  %arrayidx244 = getelementptr inbounds i8, i8* %173, i64 2
  %174 = load i8, i8* %arrayidx244, align 1, !tbaa !9
  %conv245 = zext i8 %174 to i32
  %shl246 = shl i32 %conv245, 8
  %or247 = or i32 %or243, %shl246
  %175 = load i8*, i8** %t_cp236, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds i8, i8* %175, i64 3
  %176 = load i8, i8* %arrayidx248, align 1, !tbaa !9
  %conv249 = zext i8 %176 to i32
  %or250 = or i32 %or247, %conv249
  store i32 %or250, i32* %ttl, align 4, !tbaa !5
  %177 = load i8*, i8** %ap, align 8, !tbaa !1
  %add.ptr251 = getelementptr inbounds i8, i8* %177, i64 4
  store i8* %add.ptr251, i8** %ap, align 8, !tbaa !1
  %178 = bitcast i8** %t_cp236 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  br label %do.cond.252

do.cond.252:                                      ; preds = %do.body.234
  br label %do.end.253

do.end.253:                                       ; preds = %do.cond.252
  br label %do.body.254

do.body.254:                                      ; preds = %do.end.253
  %179 = bitcast i8** %t_cp256 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %179) #1
  %180 = load i8*, i8** %ap, align 8, !tbaa !1
  store i8* %180, i8** %t_cp256, align 8, !tbaa !1
  %181 = load i8*, i8** %t_cp256, align 8, !tbaa !1
  %arrayidx257 = getelementptr inbounds i8, i8* %181, i64 0
  %182 = load i8, i8* %arrayidx257, align 1, !tbaa !9
  %conv258 = zext i8 %182 to i16
  %conv259 = zext i16 %conv258 to i32
  %shl260 = shl i32 %conv259, 8
  %183 = load i8*, i8** %t_cp256, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds i8, i8* %183, i64 1
  %184 = load i8, i8* %arrayidx261, align 1, !tbaa !9
  %conv262 = zext i8 %184 to i16
  %conv263 = zext i16 %conv262 to i32
  %or264 = or i32 %shl260, %conv263
  store i32 %or264, i32* %n, align 4, !tbaa !5
  %185 = load i8*, i8** %ap, align 8, !tbaa !1
  %add.ptr265 = getelementptr inbounds i8, i8* %185, i64 2
  store i8* %add.ptr265, i8** %ap, align 8, !tbaa !1
  %186 = bitcast i8** %t_cp256 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  br label %do.cond.266

do.cond.266:                                      ; preds = %do.body.254
  br label %do.end.267

do.end.267:                                       ; preds = %do.cond.266
  %187 = load i32, i32* %type, align 4, !tbaa !5
  switch i32 %187, label %sw.default [
    i32 15, label %sw.bb
    i32 1, label %sw.bb.281
    i32 5, label %sw.bb.282
  ]

sw.bb:                                            ; preds = %do.end.267
  store i32 1, i32* %gotmx, align 4, !tbaa !5
  %188 = load i8**, i8*** %dp, align 8, !tbaa !1
  %189 = load i8*, i8** %188, align 8, !tbaa !1
  %190 = load i8, i8* %189, align 1, !tbaa !9
  %conv268 = sext i8 %190 to i32
  %cmp269 = icmp ne i32 %conv268, 0
  br i1 %cmp269, label %land.lhs.true.271, label %if.end.280

land.lhs.true.271:                                ; preds = %sw.bb
  %191 = load i32, i32* @HasWildcardMX, align 4, !tbaa !5
  %tobool272 = icmp ne i32 %191, 0
  br i1 %tobool272, label %if.then.273, label %if.end.280

if.then.273:                                      ; preds = %land.lhs.true.271
  %192 = load i32, i32* %trymx.addr, align 4, !tbaa !5
  %tobool274 = icmp ne i32 %192, 0
  br i1 %tobool274, label %land.lhs.true.275, label %if.end.279

land.lhs.true.275:                                ; preds = %if.then.273
  %193 = load i8*, i8** %mxmatch, align 8, !tbaa !1
  %cmp276 = icmp eq i8* %193, null
  br i1 %cmp276, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %land.lhs.true.275
  %194 = load i8**, i8*** %dp, align 8, !tbaa !1
  %195 = load i8*, i8** %194, align 8, !tbaa !1
  store i8* %195, i8** %mxmatch, align 8, !tbaa !1
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.278, %land.lhs.true.275, %if.then.273
  br label %for.inc.311

if.end.280:                                       ; preds = %land.lhs.true.271, %sw.bb
  br label %sw.bb.281

sw.bb.281:                                        ; preds = %do.end.267, %if.end.280
  store i32 1, i32* %amatch, align 4, !tbaa !5
  br label %for.inc.311

sw.bb.282:                                        ; preds = %do.end.267
  %196 = load i32, i32* @DontExpandCnames, align 4, !tbaa !5
  %tobool283 = icmp ne i32 %196, 0
  br i1 %tobool283, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %sw.bb.282
  store i32 1, i32* %amatch, align 4, !tbaa !5
  br label %sw.epilog

if.end.285:                                       ; preds = %sw.bb.282
  %197 = load i32, i32* %loopcnt, align 4, !tbaa !5
  %inc286 = add nsw i32 %197, 1
  store i32 %inc286, i32* %loopcnt, align 4, !tbaa !5
  %cmp287 = icmp sgt i32 %197, 10
  br i1 %cmp287, label %if.then.289, label %if.end.301

if.then.289:                                      ; preds = %if.end.285
  %198 = load i8*, i8** %host.addr, align 8, !tbaa !1
  call void (i8*, ...) @message(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i8* %198)
  %199 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message = getelementptr inbounds %struct.envelope, %struct.envelope* %199, i32 0, i32 34
  %200 = load i8*, i8** %e_message, align 8, !tbaa !22
  %cmp290 = icmp eq i8* %200, null
  br i1 %cmp290, label %if.then.292, label %if.end.299

if.then.292:                                      ; preds = %if.then.289
  %201 = bitcast [2048 x i8]* %ebuf to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %201) #1
  %arraydecay294 = getelementptr inbounds [2048 x i8], [2048 x i8]* %ebuf, i32 0, i32 0
  %202 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %call295 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay294, i64 2048, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i32 0, i32 0), i8* %202)
  %203 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_rpool = getelementptr inbounds %struct.envelope, %struct.envelope* %203, i32 0, i32 52
  %204 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %e_rpool, align 8, !tbaa !28
  %arraydecay296 = getelementptr inbounds [2048 x i8], [2048 x i8]* %ebuf, i32 0, i32 0
  %call297 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %204, i8* %arraydecay296)
  %205 = load %struct.envelope*, %struct.envelope** @CurEnv, align 8, !tbaa !1
  %e_message298 = getelementptr inbounds %struct.envelope, %struct.envelope* %205, i32 0, i32 34
  store i8* %call297, i8** %e_message298, align 8, !tbaa !22
  %206 = bitcast [2048 x i8]* %ebuf to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %206) #1
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.292, %if.then.289
  %call300 = call i32* @__h_errno_location() #8
  store i32 3, i32* %call300, align 4, !tbaa !5
  %207 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 78, i32* %207, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.364

if.end.301:                                       ; preds = %if.end.285
  %208 = bitcast %union.querybuf* %answer to i8*
  %209 = load i8*, i8** %eom, align 8, !tbaa !1
  %210 = load i8*, i8** %ap, align 8, !tbaa !1
  %arraydecay302 = getelementptr inbounds [8192 x i8], [8192 x i8]* %nbuf, i32 0, i32 0
  %call303 = call i32 @__dn_expand(i8* %208, i8* %209, i8* %210, i8* %arraydecay302, i32 8192) #1
  store i32 %call303, i32* %ret, align 4, !tbaa !5
  %cmp304 = icmp slt i32 %call303, 0
  br i1 %cmp304, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %if.end.301
  br label %sw.epilog

if.end.307:                                       ; preds = %if.end.301
  %211 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arraydecay308 = getelementptr inbounds [8192 x i8], [8192 x i8]* %nbuf, i32 0, i32 0
  %212 = load i32, i32* %hbsize.addr, align 4, !tbaa !5
  %conv309 = sext i32 %212 to i64
  %call310 = call i64 @sm_strlcpy(i8* %211, i8* %arraydecay308, i64 %conv309)
  br label %cnameloop

sw.default:                                       ; preds = %do.end.267
  br label %for.inc.311

sw.epilog:                                        ; preds = %if.then.306, %if.then.284
  br label %for.inc.311

for.inc.311:                                      ; preds = %sw.epilog, %sw.default, %sw.bb.281, %if.end.279
  %213 = load i32, i32* %n, align 4, !tbaa !5
  %214 = load i8*, i8** %ap, align 8, !tbaa !1
  %idx.ext312 = sext i32 %213 to i64
  %add.ptr313 = getelementptr inbounds i8, i8* %214, i64 %idx.ext312
  store i8* %add.ptr313, i8** %ap, align 8, !tbaa !1
  br label %for.cond.209

for.end.314:                                      ; preds = %if.then.222, %land.end.216
  %215 = load i32, i32* %amatch, align 4, !tbaa !5
  %tobool315 = icmp ne i32 %215, 0
  br i1 %tobool315, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %for.end.314
  %216 = load i8**, i8*** %dp, align 8, !tbaa !1
  %217 = load i8*, i8** %216, align 8, !tbaa !1
  store i8* %217, i8** %mxmatch, align 8, !tbaa !1
  br label %for.end.332

if.end.317:                                       ; preds = %for.end.314
  %218 = load i32, i32* %qtype, align 4, !tbaa !5
  %cmp318 = icmp eq i32 %218, 1
  br i1 %cmp318, label %land.lhs.true.320, label %if.else.329

land.lhs.true.320:                                ; preds = %if.end.317
  %219 = load i32, i32* %gotmx, align 4, !tbaa !5
  %tobool321 = icmp ne i32 %219, 0
  br i1 %tobool321, label %if.else.329, label %land.lhs.true.322

land.lhs.true.322:                                ; preds = %land.lhs.true.320
  %220 = load i32, i32* %trymx.addr, align 4, !tbaa !5
  %tobool323 = icmp ne i32 %220, 0
  br i1 %tobool323, label %if.then.328, label %lor.lhs.false.324

lor.lhs.false.324:                                ; preds = %land.lhs.true.322
  %221 = load i8**, i8*** %dp, align 8, !tbaa !1
  %222 = load i8*, i8** %221, align 8, !tbaa !1
  %223 = load i8, i8* %222, align 1, !tbaa !9
  %conv325 = sext i8 %223 to i32
  %cmp326 = icmp eq i32 %conv325, 0
  br i1 %cmp326, label %if.then.328, label %if.else.329

if.then.328:                                      ; preds = %lor.lhs.false.324, %land.lhs.true.322
  store i32 15, i32* %qtype, align 4, !tbaa !5
  br label %if.end.331

if.else.329:                                      ; preds = %lor.lhs.false.324, %land.lhs.true.320, %if.end.317
  %224 = load i32, i32* %initial, align 4, !tbaa !5
  store i32 %224, i32* %qtype, align 4, !tbaa !5
  %225 = load i8**, i8*** %dp, align 8, !tbaa !1
  %incdec.ptr330 = getelementptr inbounds i8*, i8** %225, i32 1
  store i8** %incdec.ptr330, i8*** %dp, align 8, !tbaa !1
  br label %if.end.331

if.end.331:                                       ; preds = %if.else.329, %if.then.328
  br label %for.cond.71

for.end.332:                                      ; preds = %if.then.316, %for.cond.71
  %226 = load i8*, i8** %mxmatch, align 8, !tbaa !1
  %cmp333 = icmp eq i8* %226, null
  br i1 %cmp333, label %if.then.335, label %if.end.340

if.then.335:                                      ; preds = %for.end.332
  %227 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  %228 = load i32, i32* %227, align 4, !tbaa !5
  %cmp336 = icmp eq i32 %228, 0
  br i1 %cmp336, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %if.then.335
  %229 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 68, i32* %229, align 4, !tbaa !5
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.338, %if.then.335
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.364

if.end.340:                                       ; preds = %for.end.332
  %arraydecay341 = getelementptr inbounds [8192 x i8], [8192 x i8]* %nbuf, i32 0, i32 0
  %230 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %231 = load i8*, i8** %mxmatch, align 8, !tbaa !1
  %232 = load i8, i8* %231, align 1, !tbaa !9
  %conv342 = sext i8 %232 to i32
  %cmp343 = icmp eq i32 %conv342, 0
  %cond345 = select i1 %cmp343, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)
  %233 = load i8*, i8** %mxmatch, align 8, !tbaa !1
  %call346 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay341, i64 8192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 1025, i8* %230, i8* %cond345, i32 1025, i8* %233)
  %234 = load i8*, i8** %host.addr, align 8, !tbaa !1
  %arraydecay347 = getelementptr inbounds [8192 x i8], [8192 x i8]* %nbuf, i32 0, i32 0
  %235 = load i32, i32* %hbsize.addr, align 4, !tbaa !5
  %conv348 = sext i32 %235 to i64
  %call349 = call i64 @sm_strlcpy(i8* %234, i8* %arraydecay347, i64 %conv348)
  %236 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 8), align 1, !tbaa !9
  %conv350 = zext i8 %236 to i32
  %cmp351 = icmp sge i32 %conv350, 5
  br i1 %cmp351, label %land.lhs.true.353, label %if.end.356

land.lhs.true.353:                                ; preds = %if.end.340
  %237 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool354 = icmp ne i32 %237, 0
  br i1 %tobool354, label %if.end.356, label %if.then.355

if.then.355:                                      ; preds = %land.lhs.true.353
  %238 = load i8*, i8** %host.addr, align 8, !tbaa !1
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8* %238)
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.355, %land.lhs.true.353, %if.end.340
  %239 = load i32*, i32** %statp.addr, align 8, !tbaa !1
  store i32 0, i32* %239, align 4, !tbaa !5
  %240 = load i32, i32* %ttl, align 4, !tbaa !5
  %cmp357 = icmp sgt i32 %240, 0
  br i1 %cmp357, label %land.lhs.true.359, label %if.end.363

land.lhs.true.359:                                ; preds = %if.end.356
  %241 = load i32*, i32** %pttl.addr, align 8, !tbaa !1
  %cmp360 = icmp ne i32* %241, null
  br i1 %cmp360, label %if.then.362, label %if.end.363

if.then.362:                                      ; preds = %land.lhs.true.359
  %242 = load i32, i32* %ttl, align 4, !tbaa !5
  %243 = load i32*, i32** %pttl.addr, align 8, !tbaa !1
  store i32 %242, i32* %243, align 4, !tbaa !5
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.362, %land.lhs.true.359, %if.end.356
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.364

cleanup.364:                                      ; preds = %if.end.363, %if.end.339, %if.end.299, %if.end.192, %cleanup, %if.then.8
  %244 = bitcast [8 x i8*]* %searchlist to i8*
  call void @llvm.lifetime.end(i64 64, i8* %244) #1
  %245 = bitcast [8192 x i8]* %nbuf to i8*
  call void @llvm.lifetime.end(i64 8192, i8* %245) #1
  %246 = bitcast i32* %loopcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast i32* %initial to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = bitcast i32* %qtype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  %249 = bitcast i32* %gotmx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  %250 = bitcast i32* %amatch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #1
  %251 = bitcast i8** %mxmatch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #1
  %252 = bitcast i8*** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %252) #1
  %253 = bitcast i32* %ttl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #1
  %254 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  %255 = bitcast i8*** %domain to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #1
  %256 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  %257 = bitcast i32* %qdcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  %258 = bitcast i32* %ancount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #1
  %259 = bitcast %union.querybuf* %answer to i8*
  call void @llvm.lifetime.end(i64 8192, i8* %259) #1
  %260 = bitcast %struct.HEADER** %hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  %261 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  %263 = bitcast i8** %ap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #1
  %264 = bitcast i8** %eom to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #1
  %265 = load i32, i32* %retval
  ret i32 %265
}

; Function Attrs: nounwind
declare i32 @__res_init() #3

; Function Attrs: nounwind
declare i32 @__res_querydomain(i8*, i8*, i32, i32, i8*, i32) #3

declare void @message(i8*, ...) #2

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #2

declare i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T*, i8*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @tolower(i32 %__c) #7 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, i32* %__c.addr, align 4, !tbaa !5
  %0 = load i32, i32* %__c.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, -128
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %__c.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %1, 256
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i32, i32* %__c.addr, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %call = call i32** @__ctype_tolower_loc() #8
  %3 = load i32*, i32** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %__c.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn }
attributes #10 = { nounwind readonly }

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
!9 = !{!3, !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
!12 = !{i32 209160}
!13 = !{i32 209713}
!14 = !{!15, !8, i64 8}
!15 = !{!"__res_state", !6, i64 0, !6, i64 4, !8, i64 8, !6, i64 16, !3, i64 20, !11, i64 68, !3, i64 72, !3, i64 128, !8, i64 384, !6, i64 392, !6, i64 392, !6, i64 393, !6, i64 393, !3, i64 396, !2, i64 480, !2, i64 488, !6, i64 496, !6, i64 500, !6, i64 504, !3, i64 512}
!16 = !{!17, !8, i64 24}
!17 = !{!"_map", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72, !3, i64 73, !3, i64 74, !3, i64 75, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !8, i64 112, !8, i64 120, !6, i64 128, !6, i64 132, !6, i64 136, !11, i64 140, !3, i64 144, !3, i64 240}
!18 = !{!17, !3, i64 74}
!19 = !{i32 219471}
!20 = !{i32 219958}
!21 = !{i32 220324}
!22 = !{!23, !2, i64 392}
!23 = !{!"envelope", !2, i64 0, !8, i64 8, !8, i64 16, !2, i64 24, !24, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !8, i64 256, !2, i64 264, !8, i64 272, !6, i64 280, !11, i64 284, !11, i64 286, !11, i64 288, !11, i64 290, !11, i64 292, !11, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !8, i64 456, !6, i64 464, !8, i64 472, !8, i64 480, !25, i64 488, !2, i64 2576, !2, i64 2584, !26, i64 2592, !8, i64 2624, !6, i64 2632, !2, i64 2640, !6, i64 2648}
!24 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !8, i64 144, !2, i64 152, !11, i64 160, !2, i64 168, !6, i64 176, !6, i64 180, !2, i64 184}
!25 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!26 = !{!"sm_timers", !27, i64 0}
!27 = !{!"_timer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!28 = !{!23, !2, i64 2640}
