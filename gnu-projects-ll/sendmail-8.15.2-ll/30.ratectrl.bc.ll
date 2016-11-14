; ModuleID = '30.ratectrl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHash = type { %struct.in_addr, i32, i64, i64, [6 x %struct.CTime] }
%struct.in_addr = type { i32 }
%struct.CTime = type { i64, i32 }
%union.bigsockaddr = type { %struct.sockaddr_in, [96 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
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
%struct.sockaddr = type { i16, [14 x i8] }

@connection_rate_check.clientconn = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"{client_rate}\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ratectrl.c\00", align 1
@SmHeapGroup = external global i32, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"{total_rate}\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"{client_connections}\00", align 1
@ChtGran = internal global i32 -1, align 4
@ConnectionRateWindowSize = external global i32, align 4
@CHashAryOK = internal global i32 0, align 4
@CHashAry = internal global [1024 x %struct.CHash] zeroinitializer, align 16
@CollTime = internal global i32 60, align 4
@srv_Times_OK = internal global i32 0, align 4
@srv_Times = internal global [6 x %struct.CTime] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @connection_rate_check(%union.bigsockaddr* %hostaddr, %struct.envelope* %e) #0 {
entry:
  %hostaddr.addr = alloca %union.bigsockaddr*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %now = alloca i64, align 8
  %totalrate = alloca i32, align 4
  %clientrate = alloca i32, align 4
  %s = alloca [16 x i8], align 16
  store %union.bigsockaddr* %hostaddr, %union.bigsockaddr** %hostaddr.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %totalrate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %clientrate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %call = call i64 @time(i64* null) #1
  store i64 %call, i64* %now, align 8, !tbaa !5
  %3 = load i64, i64* %now, align 8, !tbaa !5
  %4 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.envelope* %4, null
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @total_rate(i64 %3, i32 %conv)
  store i32 %call1, i32* %totalrate, align 4, !tbaa !7
  %5 = load i64, i64* %now, align 8, !tbaa !5
  %6 = load %union.bigsockaddr*, %union.bigsockaddr** %hostaddr.addr, align 8, !tbaa !1
  %7 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.envelope* %7, null
  %conv3 = zext i1 %cmp2 to i32
  %call4 = call i32 @client_rate(i64 %5, %union.bigsockaddr* %6, i32 %conv3)
  store i32 %call4, i32* %clientrate, align 4, !tbaa !7
  %8 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.envelope* %8, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %union.bigsockaddr*, %union.bigsockaddr** %hostaddr.addr, align 8, !tbaa !1
  %call7 = call i32 @count_open_connections(%union.bigsockaddr* %9)
  store i32 %call7, i32* @connection_rate_check.clientconn, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %cmp8 = icmp ne %struct.envelope* %10, null
  br i1 %cmp8, label %if.then.10, label %if.end.24

if.then.10:                                       ; preds = %if.end
  %11 = bitcast [16 x i8]* %s to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %s, i32 0, i32 0
  %12 = load i32, i32* %clientrate, align 4, !tbaa !7
  %call11 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %12)
  %13 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %13, i32 0, i32 46
  %call12 = call i32 @macid_parse(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8** null)
  %arraydecay13 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i32 0, i32 0
  %14 = load i32, i32* @SmHeapGroup, align 4, !tbaa !7
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 1, i32 %call12, i8* %arraydecay13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 128, i32 %14)
  %arraydecay14 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i32 0, i32 0
  %15 = load i32, i32* %totalrate, align 4, !tbaa !7
  %call15 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay14, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %15)
  %16 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro16 = getelementptr inbounds %struct.envelope, %struct.envelope* %16, i32 0, i32 46
  %call17 = call i32 @macid_parse(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8** null)
  %arraydecay18 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i32 0, i32 0
  %17 = load i32, i32* @SmHeapGroup, align 4, !tbaa !7
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro16, i32 1, i32 %call17, i8* %arraydecay18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 130, i32 %17)
  %arraydecay19 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i32 0, i32 0
  %18 = load i32, i32* @connection_rate_check.clientconn, align 4, !tbaa !7
  %call20 = call i32 (i8*, i64, i8*, ...) @sm_snprintf(i8* %arraydecay19, i64 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %18)
  %19 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro21 = getelementptr inbounds %struct.envelope, %struct.envelope* %19, i32 0, i32 46
  %call22 = call i32 @macid_parse(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8** null)
  %arraydecay23 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i32 0, i32 0
  %20 = load i32, i32* @SmHeapGroup, align 4, !tbaa !7
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro21, i32 1, i32 %call22, i8* %arraydecay23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 133, i32 %20)
  %21 = bitcast [16 x i8]* %s to i8*
  call void @llvm.lifetime.end(i64 16, i8* %21) #1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.10, %if.end
  %22 = bitcast i32* %clientrate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %totalrate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i64* %now to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind uwtable
define internal i32 @total_rate(i64 %now, i32 %update) #0 {
entry:
  %now.addr = alloca i64, align 8
  %update.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cnt = alloca i32, align 4
  %ct = alloca %struct.CTime*, align 8
  %ticks = alloca i32, align 4
  store i64 %now, i64* %now.addr, align 8, !tbaa !5
  store i32 %update, i32* %update.addr, align 4, !tbaa !7
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %cnt, align 4, !tbaa !7
  %2 = bitcast %struct.CTime** %ct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %ticks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* @ChtGran, align 4, !tbaa !7
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @ConnectionRateWindowSize, align 4, !tbaa !7
  %div = sdiv i32 %5, 6
  store i32 %div, i32* @ChtGran, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* @ChtGran, align 4, !tbaa !7
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 10, i32* @ChtGran, align 4, !tbaa !7
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %7 = load i64, i64* %now.addr, align 8, !tbaa !5
  %8 = load i32, i32* @ChtGran, align 4, !tbaa !7
  %conv = sext i32 %8 to i64
  %div4 = sdiv i64 %7, %conv
  %conv5 = trunc i64 %div4 to i32
  store i32 %conv5, i32* %ticks, align 4, !tbaa !7
  %9 = load i32, i32* @srv_Times_OK, align 4, !tbaa !7
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x %struct.CTime]* @srv_Times to i8*), i8 0, i64 96, i32 16, i1 false)
  store i32 1, i32* @srv_Times_OK, align 4, !tbaa !7
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.3
  %10 = load i32, i32* %update.addr, align 4, !tbaa !7
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.end.7
  %11 = load i32, i32* %ticks, align 4, !tbaa !7
  %rem = urem i32 %11, 6
  %idxprom = zext i32 %rem to i64
  %arrayidx = getelementptr inbounds [6 x %struct.CTime], [6 x %struct.CTime]* @srv_Times, i32 0, i64 %idxprom
  store %struct.CTime* %arrayidx, %struct.CTime** %ct, align 8, !tbaa !1
  %12 = load %struct.CTime*, %struct.CTime** %ct, align 8, !tbaa !1
  %ct_Ticks = getelementptr inbounds %struct.CTime, %struct.CTime* %12, i32 0, i32 0
  %13 = load i64, i64* %ct_Ticks, align 8, !tbaa !9
  %14 = load i32, i32* %ticks, align 4, !tbaa !7
  %conv10 = zext i32 %14 to i64
  %cmp11 = icmp ne i64 %13, %conv10
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.then.9
  %15 = load i32, i32* %ticks, align 4, !tbaa !7
  %conv14 = zext i32 %15 to i64
  %16 = load %struct.CTime*, %struct.CTime** %ct, align 8, !tbaa !1
  %ct_Ticks15 = getelementptr inbounds %struct.CTime, %struct.CTime* %16, i32 0, i32 0
  store i64 %conv14, i64* %ct_Ticks15, align 8, !tbaa !9
  %17 = load %struct.CTime*, %struct.CTime** %ct, align 8, !tbaa !1
  %ct_Count = getelementptr inbounds %struct.CTime, %struct.CTime* %17, i32 0, i32 1
  store i32 0, i32* %ct_Count, align 4, !tbaa !11
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.9
  %18 = load %struct.CTime*, %struct.CTime** %ct, align 8, !tbaa !1
  %ct_Count17 = getelementptr inbounds %struct.CTime, %struct.CTime* %18, i32 0, i32 1
  %19 = load i32, i32* %ct_Count17, align 4, !tbaa !11
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %ct_Count17, align 4, !tbaa !11
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.16, %if.end.7
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %20 = load i32, i32* %i, align 4, !tbaa !7
  %cmp19 = icmp slt i32 %20, 6
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds [6 x %struct.CTime], [6 x %struct.CTime]* @srv_Times, i32 0, i64 %idxprom21
  store %struct.CTime* %arrayidx22, %struct.CTime** %ct, align 8, !tbaa !1
  %22 = load %struct.CTime*, %struct.CTime** %ct, align 8, !tbaa !1
  %ct_Ticks23 = getelementptr inbounds %struct.CTime, %struct.CTime* %22, i32 0, i32 0
  %23 = load i64, i64* %ct_Ticks23, align 8, !tbaa !9
  %24 = load i32, i32* %ticks, align 4, !tbaa !7
  %conv24 = zext i32 %24 to i64
  %cmp25 = icmp ule i64 %23, %conv24
  br i1 %cmp25, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %for.body
  %25 = load %struct.CTime*, %struct.CTime** %ct, align 8, !tbaa !1
  %ct_Ticks27 = getelementptr inbounds %struct.CTime, %struct.CTime* %25, i32 0, i32 0
  %26 = load i64, i64* %ct_Ticks27, align 8, !tbaa !9
  %27 = load i32, i32* %ticks, align 4, !tbaa !7
  %sub = sub i32 %27, 6
  %conv28 = zext i32 %sub to i64
  %cmp29 = icmp uge i64 %26, %conv28
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %land.lhs.true
  %28 = load %struct.CTime*, %struct.CTime** %ct, align 8, !tbaa !1
  %ct_Count32 = getelementptr inbounds %struct.CTime, %struct.CTime* %28, i32 0, i32 1
  %29 = load i32, i32* %ct_Count32, align 4, !tbaa !11
  %30 = load i32, i32* %cnt, align 4, !tbaa !7
  %add = add nsw i32 %30, %29
  store i32 %add, i32* %cnt, align 4, !tbaa !7
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %31 = load i32, i32* %i, align 4, !tbaa !7
  %inc34 = add nsw i32 %31, 1
  store i32 %inc34, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* %cnt, align 4, !tbaa !7
  %33 = bitcast i32* %ticks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.CTime** %ct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @client_rate(i64 %now, %union.bigsockaddr* %saddr, i32 %update) #0 {
entry:
  %retval = alloca i32, align 4
  %now.addr = alloca i64, align 8
  %saddr.addr = alloca %union.bigsockaddr*, align 8
  %update.addr = alloca i32, align 4
  %hv = alloca i32, align 4
  %i = alloca i32, align 4
  %cnt = alloca i32, align 4
  %coll = alloca i32, align 4
  %chBest = alloca %struct.CHash*, align 8
  %ticks = alloca i32, align 4
  %p = alloca i8*, align 8
  %addrlen = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ch = alloca %struct.CHash*, align 8
  %ct = alloca %struct.CTime*, align 8
  %ct109 = alloca %struct.CTime*, align 8
  store i64 %now, i64* %now.addr, align 8, !tbaa !5
  store %union.bigsockaddr* %saddr, %union.bigsockaddr** %saddr.addr, align 8, !tbaa !1
  store i32 %update, i32* %update.addr, align 4, !tbaa !7
  %0 = bitcast i32* %hv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %coll to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.CHash** %chBest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.CHash* null, %struct.CHash** %chBest, align 8, !tbaa !1
  %5 = bitcast i32* %ticks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %cnt, align 4, !tbaa !7
  store i32 -1413230065, i32* %hv, align 4, !tbaa !7
  %6 = load i32, i32* @ChtGran, align 4, !tbaa !7
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* @ConnectionRateWindowSize, align 4, !tbaa !7
  %div = sdiv i32 %7, 6
  store i32 %div, i32* @ChtGran, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* @ChtGran, align 4, !tbaa !7
  %cmp1 = icmp sle i32 %8, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 10, i32* @ChtGran, align 4, !tbaa !7
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %9 = load i64, i64* %now.addr, align 8, !tbaa !5
  %10 = load i32, i32* @ChtGran, align 4, !tbaa !7
  %conv = sext i32 %10 to i64
  %div4 = sdiv i64 %9, %conv
  %conv5 = trunc i64 %div4 to i32
  store i32 %conv5, i32* %ticks, align 4, !tbaa !7
  %11 = load i32, i32* @CHashAryOK, align 4, !tbaa !7
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  call void @llvm.memset.p0i8.i64(i8* bitcast ([1024 x %struct.CHash]* @CHashAry to i8*), i8 0, i64 122880, i32 16, i1 false)
  store i32 1, i32* @CHashAryOK, align 4, !tbaa !7
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end.3
  %12 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %addrlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %union.bigsockaddr*, %union.bigsockaddr** %saddr.addr, align 8, !tbaa !1
  %sa = bitcast %union.bigsockaddr* %16 to %struct.sockaddr*
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa, i32 0, i32 0
  %17 = load i16, i16* %sa_family, align 2, !tbaa !12
  %conv8 = zext i16 %17 to i32
  switch i32 %conv8, label %sw.default [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.7
  %18 = load %union.bigsockaddr*, %union.bigsockaddr** %saddr.addr, align 8, !tbaa !1
  %sin = bitcast %union.bigsockaddr* %18 to %struct.sockaddr_in*
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin, i32 0, i32 2
  %19 = bitcast %struct.in_addr* %sin_addr to i8*
  store i8* %19, i8** %p, align 8, !tbaa !1
  store i32 4, i32* %addrlen, align 4, !tbaa !7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %20 = load i32, i32* %i, align 4, !tbaa !7
  %21 = load i32, i32* %addrlen, align 4, !tbaa !7
  %cmp9 = icmp slt i32 %20, %21
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !15
  %conv11 = sext i8 %23 to i32
  store i32 %conv11, i32* %d, align 4, !tbaa !7
  %24 = load i32, i32* %d, align 4, !tbaa !7
  store i32 %24, i32* %c, align 4, !tbaa !7
  %25 = load i32, i32* %c, align 4, !tbaa !7
  %shl = shl i32 %25, 6
  %26 = load i32, i32* %c, align 4, !tbaa !7
  %xor = xor i32 %26, %shl
  store i32 %xor, i32* %c, align 4, !tbaa !7
  %27 = load i32, i32* %c, align 4, !tbaa !7
  %shl12 = shl i32 %27, 11
  %28 = load i32, i32* %c, align 4, !tbaa !7
  %shr = ashr i32 %28, 1
  %xor13 = xor i32 %shl12, %shr
  %29 = load i32, i32* %hv, align 4, !tbaa !7
  %add = add i32 %29, %xor13
  store i32 %add, i32* %hv, align 4, !tbaa !7
  %30 = load i32, i32* %d, align 4, !tbaa !7
  %shl14 = shl i32 %30, 14
  %31 = load i32, i32* %d, align 4, !tbaa !7
  %shl15 = shl i32 %31, 7
  %add16 = add nsw i32 %shl14, %shl15
  %32 = load i32, i32* %d, align 4, !tbaa !7
  %shl17 = shl i32 %32, 4
  %add18 = add nsw i32 %add16, %shl17
  %33 = load i32, i32* %d, align 4, !tbaa !7
  %add19 = add nsw i32 %add18, %33
  %34 = load i32, i32* %hv, align 4, !tbaa !7
  %xor20 = xor i32 %34, %add19
  store i32 %xor20, i32* %hv, align 4, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.default
  %37 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %addrlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.130 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 1, i32* %coll, align 4, !tbaa !7
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.63, %cleanup.cont
  %41 = load i32, i32* %i, align 4, !tbaa !7
  %cmp25 = icmp slt i32 %41, 10
  br i1 %cmp25, label %for.body.27, label %for.end.65

for.body.27:                                      ; preds = %for.cond.24
  %42 = bitcast %struct.CHash** %ch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = load i32, i32* %hv, align 4, !tbaa !7
  %44 = load i32, i32* %i, align 4, !tbaa !7
  %add28 = add i32 %43, %44
  %and = and i32 %add28, 1023
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [1024 x %struct.CHash], [1024 x %struct.CHash]* @CHashAry, i32 0, i64 %idxprom
  store %struct.CHash* %arrayidx, %struct.CHash** %ch, align 8, !tbaa !1
  %45 = load %union.bigsockaddr*, %union.bigsockaddr** %saddr.addr, align 8, !tbaa !1
  %sa29 = bitcast %union.bigsockaddr* %45 to %struct.sockaddr*
  %sa_family30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa29, i32 0, i32 0
  %46 = load i16, i16* %sa_family30, align 2, !tbaa !12
  %conv31 = zext i16 %46 to i32
  %cmp32 = icmp eq i32 %conv31, 2
  br i1 %cmp32, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %for.body.27
  %47 = load %struct.CHash*, %struct.CHash** %ch, align 8, !tbaa !1
  %ch_Family = getelementptr inbounds %struct.CHash, %struct.CHash* %47, i32 0, i32 1
  %48 = load i32, i32* %ch_Family, align 4, !tbaa !16
  %cmp34 = icmp eq i32 %48, 2
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.47

land.lhs.true.36:                                 ; preds = %land.lhs.true
  %49 = load %union.bigsockaddr*, %union.bigsockaddr** %saddr.addr, align 8, !tbaa !1
  %sin37 = bitcast %union.bigsockaddr* %49 to %struct.sockaddr_in*
  %sin_addr38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin37, i32 0, i32 2
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr38, i32 0, i32 0
  %50 = load i32, i32* %s_addr, align 4, !tbaa !19
  %51 = load %struct.CHash*, %struct.CHash** %ch, align 8, !tbaa !1
  %ch_Addr = getelementptr inbounds %struct.CHash, %struct.CHash* %51, i32 0, i32 0
  %s_addr39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %ch_Addr, i32 0, i32 0
  %52 = load i32, i32* %s_addr39, align 4, !tbaa !21
  %cmp40 = icmp eq i32 %50, %52
  br i1 %cmp40, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.36
  %53 = load %struct.CHash*, %struct.CHash** %ch, align 8, !tbaa !1
  %ch_Addr42 = getelementptr inbounds %struct.CHash, %struct.CHash* %53, i32 0, i32 0
  %s_addr43 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %ch_Addr42, i32 0, i32 0
  %54 = load i32, i32* %s_addr43, align 4, !tbaa !21
  %cmp44 = icmp eq i32 %54, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false, %land.lhs.true.36
  %55 = load %struct.CHash*, %struct.CHash** %ch, align 8, !tbaa !1
  store %struct.CHash* %55, %struct.CHash** %chBest, align 8, !tbaa !1
  store i32 0, i32* %coll, align 4, !tbaa !7
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end.47:                                        ; preds = %lor.lhs.false, %land.lhs.true, %for.body.27
  %56 = load %struct.CHash*, %struct.CHash** %chBest, align 8, !tbaa !1
  %cmp48 = icmp eq %struct.CHash* %56, null
  br i1 %cmp48, label %if.then.58, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %if.end.47
  %57 = load %struct.CHash*, %struct.CHash** %ch, align 8, !tbaa !1
  %ch_LTime = getelementptr inbounds %struct.CHash, %struct.CHash* %57, i32 0, i32 2
  %58 = load i64, i64* %ch_LTime, align 8, !tbaa !22
  %cmp51 = icmp eq i64 %58, 0
  br i1 %cmp51, label %if.then.58, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.50
  %59 = load %struct.CHash*, %struct.CHash** %ch, align 8, !tbaa !1
  %ch_LTime54 = getelementptr inbounds %struct.CHash, %struct.CHash* %59, i32 0, i32 2
  %60 = load i64, i64* %ch_LTime54, align 8, !tbaa !22
  %61 = load %struct.CHash*, %struct.CHash** %chBest, align 8, !tbaa !1
  %ch_LTime55 = getelementptr inbounds %struct.CHash, %struct.CHash* %61, i32 0, i32 2
  %62 = load i64, i64* %ch_LTime55, align 8, !tbaa !22
  %cmp56 = icmp slt i64 %60, %62
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %lor.lhs.false.53, %lor.lhs.false.50, %if.end.47
  %63 = load %struct.CHash*, %struct.CHash** %ch, align 8, !tbaa !1
  store %struct.CHash* %63, %struct.CHash** %chBest, align 8, !tbaa !1
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %lor.lhs.false.53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %if.end.59, %if.then.46
  %64 = bitcast %struct.CHash** %ch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %cleanup.dest.61 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.61, label %unreachable [
    i32 0, label %cleanup.cont.62
    i32 6, label %for.end.65
  ]

cleanup.cont.62:                                  ; preds = %cleanup.60
  br label %for.inc.63

for.inc.63:                                       ; preds = %cleanup.cont.62
  %65 = load i32, i32* %i, align 4, !tbaa !7
  %inc64 = add nsw i32 %65, 1
  store i32 %inc64, i32* %i, align 4, !tbaa !7
  br label %for.cond.24

for.end.65:                                       ; preds = %cleanup.60, %for.cond.24
  %66 = load i32, i32* %update.addr, align 4, !tbaa !7
  %tobool66 = icmp ne i32 %66, 0
  br i1 %tobool66, label %if.then.67, label %if.end.104

if.then.67:                                       ; preds = %for.end.65
  %67 = load i32, i32* %coll, align 4, !tbaa !7
  %tobool68 = icmp ne i32 %67, 0
  br i1 %tobool68, label %land.lhs.true.69, label %if.end.76

land.lhs.true.69:                                 ; preds = %if.then.67
  %68 = load i64, i64* %now.addr, align 8, !tbaa !5
  %69 = load %struct.CHash*, %struct.CHash** %chBest, align 8, !tbaa !1
  %ch_LTime70 = getelementptr inbounds %struct.CHash, %struct.CHash* %69, i32 0, i32 2
  %70 = load i64, i64* %ch_LTime70, align 8, !tbaa !22
  %sub = sub nsw i64 %68, %70
  %71 = load i32, i32* @CollTime, align 4, !tbaa !7
  %conv71 = sext i32 %71 to i64
  %cmp72 = icmp slt i64 %sub, %conv71
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %land.lhs.true.69
  %72 = load %struct.CHash*, %struct.CHash** %chBest, align 8, !tbaa !1
  %ch_colls = getelementptr inbounds %struct.CHash, %struct.CHash* %72, i32 0, i32 3
  %73 = load i64, i64* %ch_colls, align 8, !tbaa !23
  %inc75 = add i64 %73, 1
  store i64 %inc75, i64* %ch_colls, align 8, !tbaa !23
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %land.lhs.true.69, %if.then.67
  %74 = load i32, i32* %coll, align 4, !tbaa !7
  %tobool77 = icmp ne i32 %74, 0
  br i1 %tobool77, label %if.then.78, label %if.end.90

if.then.78:                                       ; preds = %if.end.76
  %75 = load %union.bigsockaddr*, %union.bigsockaddr** %saddr.addr, align 8, !tbaa !1
  %sa79 = bitcast %union.bigsockaddr* %75 to %struct.sockaddr*
  %sa_family80 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa79, i32 0, i32 0
  %76 = load i16, i16* %sa_family80, align 2, !tbaa !12
  %conv81 = zext i16 %76 to i32
  %cmp82 = icmp eq i32 %conv81, 2
  br i1 %cmp82, label %if.then.84, label %if.end.89

if.then.84:                                       ; preds = %if.then.78
  %77 = load %struct.CHash*, %struct.CHash** %chBest, align 8, !tbaa !1
  %ch_Family85 = getelementptr inbounds %struct.CHash, %struct.CHash* %77, i32 0, i32 1
  store i32 2, i32* %ch_Family85, align 4, !tbaa !16
  %78 = load %struct.CHash*, %struct.CHash** %chBest, align 8, !tbaa !1
  %ch_Addr86 = getelementptr inbounds %struct.CHash, %struct.CHash* %78, i32 0, i32 0
  %79 = load %union.bigsockaddr*, %union.bigsockaddr** %saddr.addr, align 8, !tbaa !1
  %sin87 = bitcast %union.bigsockaddr* %79 to %struct.sockaddr_in*
  %sin_addr88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sin87, i32 0, i32 2
  %80 = bitcast %struct.in_addr* %ch_Addr86 to i8*
  %81 = bitcast %struct.in_addr* %sin_addr88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 4, i32 4, i1 false), !tbaa.struct !24
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.84, %if.then.78
  %82 = load %struct.CHash*, %struct.CHash** %chBest, align 8, !tbaa !1
  %ch_Times = getelementptr inbounds %struct.CHash, %struct.CHash* %82, i32 0, i32 4
  %83 = bitcast [6 x %struct.CTime]* %ch_Times to i8*
  call void @llvm.memset.p0i8.i64(i8* %83, i8 0, i64 96, i32 8, i1 false)
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.76
  %84 = load i64, i64* %now.addr, align 8, !tbaa !5
  %85 = load %struct.CHash*, %struct.CHash** %chBest, align 8, !tbaa !1
  %ch_LTime91 = getelementptr inbounds %struct.CHash, %struct.CHash* %85, i32 0, i32 2
  store i64 %84, i64* %ch_LTime91, align 8, !tbaa !22
  %86 = bitcast %struct.CTime** %ct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  %87 = load i32, i32* %ticks, align 4, !tbaa !7
  %rem = urem i32 %87, 6
  %idxprom92 = zext i32 %rem to i64
  %88 = load %struct.CHash*, %struct.CHash** %chBest, align 8, !tbaa !1
  %ch_Times93 = getelementptr inbounds %struct.CHash, %struct.CHash* %88, i32 0, i32 4
  %arrayidx94 = getelementptr inbounds [6 x %struct.CTime], [6 x %struct.CTime]* %ch_Times93, i32 0, i64 %idxprom92
  store %struct.CTime* %arrayidx94, %struct.CTime** %ct, align 8, !tbaa !1
  %89 = load %struct.CTime*, %struct.CTime** %ct, align 8, !tbaa !1
  %ct_Ticks = getelementptr inbounds %struct.CTime, %struct.CTime* %89, i32 0, i32 0
  %90 = load i64, i64* %ct_Ticks, align 8, !tbaa !9
  %91 = load i32, i32* %ticks, align 4, !tbaa !7
  %conv95 = zext i32 %91 to i64
  %cmp96 = icmp ne i64 %90, %conv95
  br i1 %cmp96, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %if.end.90
  %92 = load i32, i32* %ticks, align 4, !tbaa !7
  %conv99 = zext i32 %92 to i64
  %93 = load %struct.CTime*, %struct.CTime** %ct, align 8, !tbaa !1
  %ct_Ticks100 = getelementptr inbounds %struct.CTime, %struct.CTime* %93, i32 0, i32 0
  store i64 %conv99, i64* %ct_Ticks100, align 8, !tbaa !9
  %94 = load %struct.CTime*, %struct.CTime** %ct, align 8, !tbaa !1
  %ct_Count = getelementptr inbounds %struct.CTime, %struct.CTime* %94, i32 0, i32 1
  store i32 0, i32* %ct_Count, align 4, !tbaa !11
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %if.end.90
  %95 = load %struct.CTime*, %struct.CTime** %ct, align 8, !tbaa !1
  %ct_Count102 = getelementptr inbounds %struct.CTime, %struct.CTime* %95, i32 0, i32 1
  %96 = load i32, i32* %ct_Count102, align 4, !tbaa !11
  %inc103 = add nsw i32 %96, 1
  store i32 %inc103, i32* %ct_Count102, align 4, !tbaa !11
  %97 = bitcast %struct.CTime** %ct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.101, %for.end.65
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.127, %if.end.104
  %98 = load i32, i32* %i, align 4, !tbaa !7
  %cmp106 = icmp slt i32 %98, 6
  br i1 %cmp106, label %for.body.108, label %for.end.129

for.body.108:                                     ; preds = %for.cond.105
  %99 = bitcast %struct.CTime** %ct109 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  %100 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom110 = sext i32 %100 to i64
  %101 = load %struct.CHash*, %struct.CHash** %chBest, align 8, !tbaa !1
  %ch_Times111 = getelementptr inbounds %struct.CHash, %struct.CHash* %101, i32 0, i32 4
  %arrayidx112 = getelementptr inbounds [6 x %struct.CTime], [6 x %struct.CTime]* %ch_Times111, i32 0, i64 %idxprom110
  store %struct.CTime* %arrayidx112, %struct.CTime** %ct109, align 8, !tbaa !1
  %102 = load %struct.CTime*, %struct.CTime** %ct109, align 8, !tbaa !1
  %ct_Ticks113 = getelementptr inbounds %struct.CTime, %struct.CTime* %102, i32 0, i32 0
  %103 = load i64, i64* %ct_Ticks113, align 8, !tbaa !9
  %104 = load i32, i32* %ticks, align 4, !tbaa !7
  %conv114 = zext i32 %104 to i64
  %cmp115 = icmp ule i64 %103, %conv114
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.126

land.lhs.true.117:                                ; preds = %for.body.108
  %105 = load %struct.CTime*, %struct.CTime** %ct109, align 8, !tbaa !1
  %ct_Ticks118 = getelementptr inbounds %struct.CTime, %struct.CTime* %105, i32 0, i32 0
  %106 = load i64, i64* %ct_Ticks118, align 8, !tbaa !9
  %107 = load i32, i32* %ticks, align 4, !tbaa !7
  %sub119 = sub i32 %107, 6
  %conv120 = zext i32 %sub119 to i64
  %cmp121 = icmp uge i64 %106, %conv120
  br i1 %cmp121, label %if.then.123, label %if.end.126

if.then.123:                                      ; preds = %land.lhs.true.117
  %108 = load %struct.CTime*, %struct.CTime** %ct109, align 8, !tbaa !1
  %ct_Count124 = getelementptr inbounds %struct.CTime, %struct.CTime* %108, i32 0, i32 1
  %109 = load i32, i32* %ct_Count124, align 4, !tbaa !11
  %110 = load i32, i32* %cnt, align 4, !tbaa !7
  %add125 = add nsw i32 %110, %109
  store i32 %add125, i32* %cnt, align 4, !tbaa !7
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.123, %land.lhs.true.117, %for.body.108
  %111 = bitcast %struct.CTime** %ct109 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  br label %for.inc.127

for.inc.127:                                      ; preds = %if.end.126
  %112 = load i32, i32* %i, align 4, !tbaa !7
  %inc128 = add nsw i32 %112, 1
  store i32 %inc128, i32* %i, align 4, !tbaa !7
  br label %for.cond.105

for.end.129:                                      ; preds = %for.cond.105
  %113 = load i32, i32* %cnt, align 4, !tbaa !7
  store i32 %113, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.130

cleanup.130:                                      ; preds = %for.end.129, %cleanup
  %114 = bitcast i32* %ticks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast %struct.CHash** %chBest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast i32* %coll to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %hv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = load i32, i32* %retval
  ret i32 %120

unreachable:                                      ; preds = %cleanup.60
  unreachable
}

declare i32 @count_open_connections(%union.bigsockaddr*) #3

declare i32 @sm_snprintf(i8*, i64, i8*, ...) #3

declare void @macdefine_tagged(%struct.MACROS_T*, i32, i32, i8*, i8*, i32, i32) #3

declare i32 @macid_parse(i8*, i8**) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !6, i64 0}
!10 = !{!"CTime", !6, i64 0, !8, i64 8}
!11 = !{!10, !8, i64 8}
!12 = !{!13, !14, i64 0}
!13 = !{!"sockaddr", !14, i64 0, !3, i64 2}
!14 = !{!"short", !3, i64 0}
!15 = !{!3, !3, i64 0}
!16 = !{!17, !8, i64 4}
!17 = !{!"CHash", !18, i64 0, !8, i64 4, !6, i64 8, !6, i64 16, !3, i64 24}
!18 = !{!"in_addr", !8, i64 0}
!19 = !{!20, !8, i64 4}
!20 = !{!"sockaddr_in", !14, i64 0, !14, i64 2, !18, i64 4, !3, i64 8}
!21 = !{!17, !8, i64 0}
!22 = !{!17, !6, i64 8}
!23 = !{!17, !6, i64 16}
!24 = !{i64 0, i64 4, !7}
