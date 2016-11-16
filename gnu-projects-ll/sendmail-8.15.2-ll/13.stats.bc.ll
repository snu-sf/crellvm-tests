; ModuleID = '13.stats.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statistics = type { i32, i32, i64, i16, i64, i64, i64, [25 x i64], [25 x i64], [25 x i64], [25 x i64], [25 x i64], [25 x i64], [25 x i64] }
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

@Stat = internal global %struct.statistics zeroinitializer, align 8
@GotStats = internal global i32 0, align 4
@poststats.entered = internal global i32 0, align 4
@DontBlameSendmail = external global [8 x i32], align 16
@LogLevel = external global i32, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"poststats: %s: %s\00", align 1

; Function Attrs: nounwind uwtable
define void @markstats(%struct.envelope* %e, %struct.address* %to, i32 %type) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %to.addr = alloca %struct.address*, align 8
  %type.addr = alloca i32, align 4
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  store %struct.address* %to, %struct.address** %to.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !5
  %0 = load i32, i32* %type.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.default [
    i32 113, label %sw.bb
    i32 114, label %sw.bb.3
    i32 99, label %sw.bb.25
    i32 110, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from = getelementptr inbounds %struct.envelope, %struct.envelope* %1, i32 0, i32 4
  %q_mailer = getelementptr inbounds %struct.address, %struct.address* %e_from, i32 0, i32 4
  %2 = load %struct.mailer*, %struct.mailer** %q_mailer, align 8, !tbaa !7
  %cmp = icmp ne %struct.mailer* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %3 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from1 = getelementptr inbounds %struct.envelope, %struct.envelope* %3, i32 0, i32 4
  %q_mailer2 = getelementptr inbounds %struct.address, %struct.address* %e_from1, i32 0, i32 4
  %4 = load %struct.mailer*, %struct.mailer** %q_mailer2, align 8, !tbaa !7
  %m_mno = getelementptr inbounds %struct.mailer, %struct.mailer* %4, i32 0, i32 6
  %5 = load i16, i16* %m_mno, align 2, !tbaa !15
  %idxprom = sext i16 %5 to i64
  %arrayidx = getelementptr inbounds [25 x i64], [25 x i64]* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 13), i32 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8, !tbaa !17
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %arrayidx, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from4 = getelementptr inbounds %struct.envelope, %struct.envelope* %7, i32 0, i32 4
  %q_mailer5 = getelementptr inbounds %struct.address, %struct.address* %e_from4, i32 0, i32 4
  %8 = load %struct.mailer*, %struct.mailer** %q_mailer5, align 8, !tbaa !7
  %cmp6 = icmp ne %struct.mailer* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.23

if.then.7:                                        ; preds = %sw.bb.3
  %9 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_flags = getelementptr inbounds %struct.envelope, %struct.envelope* %9, i32 0, i32 11
  %10 = load i64, i64* %e_flags, align 8, !tbaa !18
  %and = and i64 %10, 16777216
  %cmp8 = icmp ne i64 %and, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  %11 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from10 = getelementptr inbounds %struct.envelope, %struct.envelope* %11, i32 0, i32 4
  %q_mailer11 = getelementptr inbounds %struct.address, %struct.address* %e_from10, i32 0, i32 4
  %12 = load %struct.mailer*, %struct.mailer** %q_mailer11, align 8, !tbaa !7
  %m_mno12 = getelementptr inbounds %struct.mailer, %struct.mailer* %12, i32 0, i32 6
  %13 = load i16, i16* %m_mno12, align 2, !tbaa !15
  %idxprom13 = sext i16 %13 to i64
  %arrayidx14 = getelementptr inbounds [25 x i64], [25 x i64]* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 12), i32 0, i64 %idxprom13
  %14 = load i64, i64* %arrayidx14, align 8, !tbaa !17
  %inc15 = add nsw i64 %14, 1
  store i64 %inc15, i64* %arrayidx14, align 8, !tbaa !17
  br label %if.end.22

if.else:                                          ; preds = %if.then.7
  %15 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from16 = getelementptr inbounds %struct.envelope, %struct.envelope* %15, i32 0, i32 4
  %q_mailer17 = getelementptr inbounds %struct.address, %struct.address* %e_from16, i32 0, i32 4
  %16 = load %struct.mailer*, %struct.mailer** %q_mailer17, align 8, !tbaa !7
  %m_mno18 = getelementptr inbounds %struct.mailer, %struct.mailer* %16, i32 0, i32 6
  %17 = load i16, i16* %m_mno18, align 2, !tbaa !15
  %idxprom19 = sext i16 %17 to i64
  %arrayidx20 = getelementptr inbounds [25 x i64], [25 x i64]* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 11), i32 0, i64 %idxprom19
  %18 = load i64, i64* %arrayidx20, align 8, !tbaa !17
  %inc21 = add nsw i64 %18, 1
  store i64 %inc21, i64* %arrayidx20, align 8, !tbaa !17
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.9
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %sw.bb.3
  %19 = load i64, i64* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 6), align 8, !tbaa !19
  %inc24 = add nsw i64 %19, 1
  store i64 %inc24, i64* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 6), align 8, !tbaa !19
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %20 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %cmp26 = icmp eq %struct.address* %20, null
  br i1 %cmp26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %sw.bb.25
  %21 = load i64, i64* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 4), align 8, !tbaa !21
  %inc28 = add nsw i64 %21, 1
  store i64 %inc28, i64* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 4), align 8, !tbaa !21
  br label %if.end.31

if.else.29:                                       ; preds = %sw.bb.25
  %22 = load i64, i64* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 5), align 8, !tbaa !22
  %inc30 = add nsw i64 %22, 1
  store i64 %inc30, i64* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 5), align 8, !tbaa !22
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.27
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %23 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %cmp33 = icmp eq %struct.address* %23, null
  br i1 %cmp33, label %if.then.34, label %if.else.52

if.then.34:                                       ; preds = %sw.bb.32
  %24 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from35 = getelementptr inbounds %struct.envelope, %struct.envelope* %24, i32 0, i32 4
  %q_mailer36 = getelementptr inbounds %struct.address, %struct.address* %e_from35, i32 0, i32 4
  %25 = load %struct.mailer*, %struct.mailer** %q_mailer36, align 8, !tbaa !7
  %cmp37 = icmp ne %struct.mailer* %25, null
  br i1 %cmp37, label %if.then.38, label %if.end.51

if.then.38:                                       ; preds = %if.then.34
  %26 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from39 = getelementptr inbounds %struct.envelope, %struct.envelope* %26, i32 0, i32 4
  %q_mailer40 = getelementptr inbounds %struct.address, %struct.address* %e_from39, i32 0, i32 4
  %27 = load %struct.mailer*, %struct.mailer** %q_mailer40, align 8, !tbaa !7
  %m_mno41 = getelementptr inbounds %struct.mailer, %struct.mailer* %27, i32 0, i32 6
  %28 = load i16, i16* %m_mno41, align 2, !tbaa !15
  %idxprom42 = sext i16 %28 to i64
  %arrayidx43 = getelementptr inbounds [25 x i64], [25 x i64]* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 7), i32 0, i64 %idxprom42
  %29 = load i64, i64* %arrayidx43, align 8, !tbaa !17
  %inc44 = add nsw i64 %29, 1
  store i64 %inc44, i64* %arrayidx43, align 8, !tbaa !17
  %30 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize = getelementptr inbounds %struct.envelope, %struct.envelope* %30, i32 0, i32 9
  %31 = load i64, i64* %e_msgsize, align 8, !tbaa !23
  %add = add nsw i64 %31, 999
  %div = sdiv i64 %add, 1000
  %32 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_from45 = getelementptr inbounds %struct.envelope, %struct.envelope* %32, i32 0, i32 4
  %q_mailer46 = getelementptr inbounds %struct.address, %struct.address* %e_from45, i32 0, i32 4
  %33 = load %struct.mailer*, %struct.mailer** %q_mailer46, align 8, !tbaa !7
  %m_mno47 = getelementptr inbounds %struct.mailer, %struct.mailer* %33, i32 0, i32 6
  %34 = load i16, i16* %m_mno47, align 2, !tbaa !15
  %idxprom48 = sext i16 %34 to i64
  %arrayidx49 = getelementptr inbounds [25 x i64], [25 x i64]* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 8), i32 0, i64 %idxprom48
  %35 = load i64, i64* %arrayidx49, align 8, !tbaa !17
  %add50 = add nsw i64 %35, %div
  store i64 %add50, i64* %arrayidx49, align 8, !tbaa !17
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.38, %if.then.34
  br label %if.end.66

if.else.52:                                       ; preds = %sw.bb.32
  %36 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_mailer53 = getelementptr inbounds %struct.address, %struct.address* %36, i32 0, i32 4
  %37 = load %struct.mailer*, %struct.mailer** %q_mailer53, align 8, !tbaa !24
  %m_mno54 = getelementptr inbounds %struct.mailer, %struct.mailer* %37, i32 0, i32 6
  %38 = load i16, i16* %m_mno54, align 2, !tbaa !15
  %idxprom55 = sext i16 %38 to i64
  %arrayidx56 = getelementptr inbounds [25 x i64], [25 x i64]* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 9), i32 0, i64 %idxprom55
  %39 = load i64, i64* %arrayidx56, align 8, !tbaa !17
  %inc57 = add nsw i64 %39, 1
  store i64 %inc57, i64* %arrayidx56, align 8, !tbaa !17
  %40 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_msgsize58 = getelementptr inbounds %struct.envelope, %struct.envelope* %40, i32 0, i32 9
  %41 = load i64, i64* %e_msgsize58, align 8, !tbaa !23
  %add59 = add nsw i64 %41, 999
  %div60 = sdiv i64 %add59, 1000
  %42 = load %struct.address*, %struct.address** %to.addr, align 8, !tbaa !1
  %q_mailer61 = getelementptr inbounds %struct.address, %struct.address* %42, i32 0, i32 4
  %43 = load %struct.mailer*, %struct.mailer** %q_mailer61, align 8, !tbaa !24
  %m_mno62 = getelementptr inbounds %struct.mailer, %struct.mailer* %43, i32 0, i32 6
  %44 = load i16, i16* %m_mno62, align 2, !tbaa !15
  %idxprom63 = sext i16 %44 to i64
  %arrayidx64 = getelementptr inbounds [25 x i64], [25 x i64]* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 10), i32 0, i64 %idxprom63
  %45 = load i64, i64* %arrayidx64, align 8, !tbaa !17
  %add65 = add nsw i64 %45, %div60
  store i64 %add65, i64* %arrayidx64, align 8, !tbaa !17
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.52, %if.end.51
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %return

sw.epilog:                                        ; preds = %if.end.66, %if.end.31, %if.end.23, %if.end
  store i32 1, i32* @GotStats, align 4, !tbaa !5
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define void @clearstats() #0 {
entry:
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.statistics* @Stat to i8*), i8 0, i64 1448, i32 8, i1 false)
  store i32 0, i32* @GotStats, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @poststats(i8* %sfile) #0 {
entry:
  %sfile.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  %sff = alloca i64, align 8
  %stats = alloca %struct.statistics, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  store i8* %sfile, i8** %sfile.addr, align 8, !tbaa !1
  %0 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 8320, i64* %sff, align 8, !tbaa !17
  %2 = bitcast %struct.statistics* %stats to i8*
  call void @llvm.lifetime.start(i64 1448, i8* %2) #1
  %3 = load i8*, i8** %sfile.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %sfile.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !25
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* @GotStats, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %lor.lhs.false.4, label %if.then

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.3
  %7 = load i32, i32* @poststats.entered, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.3, %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.4
  store i32 1, i32* @poststats.entered, align 4, !tbaa !5
  %call = call i64 @time(i64* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 2)) #1
  store i16 1448, i16* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 3), align 2, !tbaa !26
  store i32 111070, i32* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 0), align 4, !tbaa !27
  store i32 4, i32* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 1), align 4, !tbaa !28
  %8 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %and = and i32 %8, 1048576
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %9 = load i64, i64* %sff, align 8, !tbaa !17
  %or = or i64 %9, 2
  store i64 %or, i64* %sff, align 8, !tbaa !17
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %10 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @DontBlameSendmail, i32 0, i64 0), align 4, !tbaa !5
  %and9 = and i32 %10, 524288
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  %11 = load i64, i64* %sff, align 8, !tbaa !17
  %or12 = or i64 %11, 512
  store i64 %or12, i64* %sff, align 8, !tbaa !17
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.8
  %12 = load i8*, i8** %sfile.addr, align 8, !tbaa !1
  %13 = load i64, i64* %sff, align 8, !tbaa !17
  %call14 = call i32 @safeopen(i8* %12, i32 2, i32 384, i64 %13)
  store i32 %call14, i32* %fd, align 4, !tbaa !5
  %14 = load i32, i32* %fd, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %if.end.13
  %15 = load i32, i32* @LogLevel, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %15, 12
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.then.17
  %16 = load i8*, i8** %sfile.addr, align 8, !tbaa !1
  %call21 = call i32* @__errno_location() #5
  %17 = load i32, i32* %call21, align 4, !tbaa !5
  %call22 = call i8* @sm_errstring(i32 %17)
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* %16, i8* %call22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.then.17
  %call24 = call i32* @__errno_location() #5
  store i32 0, i32* %call24, align 4, !tbaa !5
  store i32 0, i32* @poststats.entered, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.13
  %18 = load i32, i32* %fd, align 4, !tbaa !5
  %19 = bitcast %struct.statistics* %stats to i8*
  %call26 = call i64 @read(i32 %18, i8* %19, i64 1448)
  %cmp27 = icmp eq i64 %call26, 1448
  br i1 %cmp27, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.25
  %stat_size = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 3
  %20 = load i16, i16* %stat_size, align 2, !tbaa !26
  %conv29 = sext i16 %20 to i64
  %cmp30 = icmp eq i64 %conv29, 1448
  br i1 %cmp30, label %land.lhs.true.32, label %if.else

land.lhs.true.32:                                 ; preds = %land.lhs.true
  %stat_magic = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 0
  %21 = load i32, i32* %stat_magic, align 4, !tbaa !27
  %22 = load i32, i32* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 0), align 4, !tbaa !27
  %cmp33 = icmp eq i32 %21, %22
  br i1 %cmp33, label %land.lhs.true.35, label %if.else

land.lhs.true.35:                                 ; preds = %land.lhs.true.32
  %stat_version = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 1
  %23 = load i32, i32* %stat_version, align 4, !tbaa !28
  %24 = load i32, i32* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 1), align 4, !tbaa !28
  %cmp36 = icmp eq i32 %23, %24
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %land.lhs.true.35
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.38
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %26, 25
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds [25 x i64], [25 x i64]* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 7), i32 0, i64 %idxprom
  %28 = load i64, i64* %arrayidx, align 8, !tbaa !17
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %29 to i64
  %stat_nf = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 7
  %arrayidx42 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nf, i32 0, i64 %idxprom41
  %30 = load i64, i64* %arrayidx42, align 8, !tbaa !17
  %add = add nsw i64 %30, %28
  store i64 %add, i64* %arrayidx42, align 8, !tbaa !17
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %31 to i64
  %arrayidx44 = getelementptr inbounds [25 x i64], [25 x i64]* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 8), i32 0, i64 %idxprom43
  %32 = load i64, i64* %arrayidx44, align 8, !tbaa !17
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %33 to i64
  %stat_bf = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 8
  %arrayidx46 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_bf, i32 0, i64 %idxprom45
  %34 = load i64, i64* %arrayidx46, align 8, !tbaa !17
  %add47 = add nsw i64 %34, %32
  store i64 %add47, i64* %arrayidx46, align 8, !tbaa !17
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %35 to i64
  %arrayidx49 = getelementptr inbounds [25 x i64], [25 x i64]* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 9), i32 0, i64 %idxprom48
  %36 = load i64, i64* %arrayidx49, align 8, !tbaa !17
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %37 to i64
  %stat_nt = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 9
  %arrayidx51 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nt, i32 0, i64 %idxprom50
  %38 = load i64, i64* %arrayidx51, align 8, !tbaa !17
  %add52 = add nsw i64 %38, %36
  store i64 %add52, i64* %arrayidx51, align 8, !tbaa !17
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %39 to i64
  %arrayidx54 = getelementptr inbounds [25 x i64], [25 x i64]* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 10), i32 0, i64 %idxprom53
  %40 = load i64, i64* %arrayidx54, align 8, !tbaa !17
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %41 to i64
  %stat_bt = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 10
  %arrayidx56 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_bt, i32 0, i64 %idxprom55
  %42 = load i64, i64* %arrayidx56, align 8, !tbaa !17
  %add57 = add nsw i64 %42, %40
  store i64 %add57, i64* %arrayidx56, align 8, !tbaa !17
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %43 to i64
  %arrayidx59 = getelementptr inbounds [25 x i64], [25 x i64]* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 11), i32 0, i64 %idxprom58
  %44 = load i64, i64* %arrayidx59, align 8, !tbaa !17
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom60 = sext i32 %45 to i64
  %stat_nr = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 11
  %arrayidx61 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nr, i32 0, i64 %idxprom60
  %46 = load i64, i64* %arrayidx61, align 8, !tbaa !17
  %add62 = add nsw i64 %46, %44
  store i64 %add62, i64* %arrayidx61, align 8, !tbaa !17
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %47 to i64
  %arrayidx64 = getelementptr inbounds [25 x i64], [25 x i64]* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 12), i32 0, i64 %idxprom63
  %48 = load i64, i64* %arrayidx64, align 8, !tbaa !17
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %49 to i64
  %stat_nd = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 12
  %arrayidx66 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nd, i32 0, i64 %idxprom65
  %50 = load i64, i64* %arrayidx66, align 8, !tbaa !17
  %add67 = add nsw i64 %50, %48
  store i64 %add67, i64* %arrayidx66, align 8, !tbaa !17
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %51 to i64
  %arrayidx69 = getelementptr inbounds [25 x i64], [25 x i64]* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 13), i32 0, i64 %idxprom68
  %52 = load i64, i64* %arrayidx69, align 8, !tbaa !17
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom70 = sext i32 %53 to i64
  %stat_nq = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 13
  %arrayidx71 = getelementptr inbounds [25 x i64], [25 x i64]* %stat_nq, i32 0, i64 %idxprom70
  %54 = load i64, i64* %arrayidx71, align 8, !tbaa !17
  %add72 = add nsw i64 %54, %52
  store i64 %add72, i64* %arrayidx71, align 8, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load i64, i64* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 6), align 8, !tbaa !19
  %stat_cr = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 6
  %57 = load i64, i64* %stat_cr, align 8, !tbaa !19
  %add73 = add nsw i64 %57, %56
  store i64 %add73, i64* %stat_cr, align 8, !tbaa !19
  %58 = load i64, i64* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 5), align 8, !tbaa !22
  %stat_ct = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 5
  %59 = load i64, i64* %stat_ct, align 8, !tbaa !22
  %add74 = add nsw i64 %59, %58
  store i64 %add74, i64* %stat_ct, align 8, !tbaa !22
  %60 = load i64, i64* getelementptr inbounds (%struct.statistics, %struct.statistics* @Stat, i32 0, i32 4), align 8, !tbaa !21
  %stat_cf = getelementptr inbounds %struct.statistics, %struct.statistics* %stats, i32 0, i32 4
  %61 = load i64, i64* %stat_cf, align 8, !tbaa !21
  %add75 = add nsw i64 %61, %60
  store i64 %add75, i64* %stat_cf, align 8, !tbaa !21
  %62 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  br label %if.end.76

if.else:                                          ; preds = %land.lhs.true.35, %land.lhs.true.32, %land.lhs.true, %if.end.25
  %63 = bitcast %struct.statistics* %stats to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %63, i8* bitcast (%struct.statistics* @Stat to i8*), i64 1448, i32 1, i1 false)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %for.end
  %64 = load i32, i32* %fd, align 4, !tbaa !5
  %call77 = call i64 @lseek(i32 %64, i64 0, i32 0) #1
  %65 = load i32, i32* %fd, align 4, !tbaa !5
  %66 = bitcast %struct.statistics* %stats to i8*
  %call78 = call i64 @write(i32 %65, i8* %66, i64 1448)
  %67 = load i32, i32* %fd, align 4, !tbaa !5
  %call79 = call i32 @close(i32 %67)
  call void @clearstats()
  store i32 0, i32* @poststats.entered, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.76, %if.end.23, %if.then
  %68 = bitcast %struct.statistics* %stats to i8*
  call void @llvm.lifetime.end(i64 1448, i8* %68) #1
  %69 = bitcast i64* %sff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
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

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

declare i32 @safeopen(i8*, i32, i32, i64) #3

declare void @sm_syslog(i32, i8*, i8*, ...) #3

declare i8* @sm_errstring(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i64 @read(i32, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #2

declare i64 @write(i32, i8*, i64) #3

declare i32 @close(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 64}
!8 = !{!"envelope", !2, i64 0, !9, i64 8, !9, i64 16, !2, i64 24, !10, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !9, i64 256, !2, i64 264, !9, i64 272, !6, i64 280, !11, i64 284, !11, i64 286, !11, i64 288, !11, i64 290, !11, i64 292, !11, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !9, i64 456, !6, i64 464, !9, i64 472, !9, i64 480, !12, i64 488, !2, i64 2576, !2, i64 2584, !13, i64 2592, !9, i64 2624, !6, i64 2632, !2, i64 2640, !6, i64 2648}
!9 = !{!"long", !3, i64 0}
!10 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !9, i64 144, !2, i64 152, !11, i64 160, !2, i64 168, !6, i64 176, !6, i64 180, !2, i64 184}
!11 = !{!"short", !3, i64 0}
!12 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!13 = !{!"sm_timers", !14, i64 0}
!14 = !{!"_timer", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!15 = !{!16, !11, i64 72}
!16 = !{!"mailer", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !3, i64 40, !11, i64 72, !11, i64 74, !2, i64 80, !11, i64 88, !11, i64 90, !11, i64 92, !11, i64 94, !2, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !2, i64 120, !2, i64 128, !6, i64 136, !6, i64 140, !2, i64 144, !9, i64 152, !6, i64 160, !11, i64 164}
!17 = !{!9, !9, i64 0}
!18 = !{!8, !9, i64 272}
!19 = !{!20, !9, i64 40}
!20 = !{!"statistics", !6, i64 0, !6, i64 4, !9, i64 8, !11, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !3, i64 48, !3, i64 248, !3, i64 448, !3, i64 648, !3, i64 848, !3, i64 1048, !3, i64 1248}
!21 = !{!20, !9, i64 24}
!22 = !{!20, !9, i64 32}
!23 = !{!8, !9, i64 256}
!24 = !{!10, !2, i64 32}
!25 = !{!3, !3, i64 0}
!26 = !{!20, !11, i64 16}
!27 = !{!20, !6, i64 0}
!28 = !{!20, !6, i64 4}
