; ModuleID = '9.macro.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metamac = type { i8, i8 }
%struct.MACROS_T = type { %struct.SM_RPOOL_T*, [8 x i32], [256 x i8*] }
%struct.SM_RPOOL_T = type { i8*, void (i8*)**, i64, i64, i8*, i64, %struct.sm_poollink*, %struct.sm_resource*, i64, %struct.sm_rlist* }
%struct.sm_poollink = type { %struct.sm_poollink* }
%struct.sm_resource = type { void (i8*)*, i8* }
%struct.sm_rlist = type { [511 x %struct.sm_resource], %struct.sm_rlist* }
%struct.envelope = type { %struct.header*, i64, i64, i8*, %struct.address, i8*, i8**, %struct.address*, %struct.address*, i64, i8*, i64, i32, i16, i16, i16, i16, i16, i16, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)*, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)*, %struct.envelope*, %struct.envelope*, i8*, %struct.sm_file*, i8*, i32, i32, i32, i32, i32, i32, %struct.sm_file*, %struct.sm_file*, i8*, i8*, i8*, i8, i8*, i8*, i8*, i8*, i64, i32, i64, i64, %struct.MACROS_T, %struct.mailer_con_info*, i8*, %struct.sm_timers, i64, i32, %struct.SM_RPOOL_T*, i32 }
%struct.header = type { i8*, i8*, %struct.header*, i8, i64, [8 x i32] }
%struct.address = type { i8*, i8*, i8*, i8*, %struct.mailer*, i64, i32, i32, i8*, i8*, %struct.address*, %struct.address*, i8*, %struct.address*, %struct.address*, i8*, i8*, i8*, i8*, i64, i8*, i16, i8*, i32, i32, i8* }
%struct.mailer = type { i8*, i8*, i8*, i8*, i8*, [8 x i32], i16, i16, i8**, i16, i16, i16, i16, i8*, i64, i32, i32, i8*, i8*, i32, i32, i8*, i64, i32, i16 }
%struct.sm_file = type { i8*, i8*, i32, i32, i64, i16, %struct.smbuf, i32, i8*, i32, i32 (%struct.sm_file*)*, i64 (%struct.sm_file*, i8*, i64)*, i64 (%struct.sm_file*, i64, i32)*, i64 (%struct.sm_file*, i8*, i64)*, i32 (%struct.sm_file*, i8*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32 (%struct.sm_file*, i32, i8*)*, i32, i32, i8*, %struct.sm_file*, %struct.sm_file*, %struct.smbuf, i8*, i32, [3 x i8], [1 x i8], i32, i64, i32 }
%struct.smbuf = type { i8*, i32 }
%struct.mailer_con_info = type { i64, i16, i16, i16, i16, i32, i64, %struct.sm_file*, %struct.sm_file*, i32, i8*, %struct.mailer*, i8*, i8*, i8*, i64, %struct.sm_file*, i8*, i64, i32, i8*, %struct.SM_RPOOL_T*, i32, %struct.address*, %struct.MACROS_T }
%struct.sm_timers = type { %struct._timer }
%struct._timer = type { i64, i64, i64, i64 }
%struct.symtab = type { i8*, i16, %struct.symtab*, %union.anon }
%union.anon = type { %struct.mailer_con_info }

@NextMacroId = global i32 160, align 4
@MetaMacros = global [18 x %struct.metamac] [%struct.metamac { i8 42, i8 -112 }, %struct.metamac { i8 43, i8 -111 }, %struct.metamac { i8 45, i8 -110 }, %struct.metamac { i8 61, i8 -109 }, %struct.metamac { i8 126, i8 -108 }, %struct.metamac { i8 35, i8 -106 }, %struct.metamac { i8 64, i8 -105 }, %struct.metamac { i8 58, i8 -104 }, %struct.metamac { i8 62, i8 -103 }, %struct.metamac { i8 63, i8 -102 }, %struct.metamac { i8 124, i8 -101 }, %struct.metamac { i8 46, i8 -100 }, %struct.metamac { i8 91, i8 -99 }, %struct.metamac { i8 93, i8 -98 }, %struct.metamac { i8 40, i8 -123 }, %struct.metamac { i8 41, i8 -122 }, %struct.metamac { i8 38, i8 -126 }, %struct.metamac zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"macro.c\00", align 1
@SmHeapGroup = external global i32, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"MAILER-DAEMON\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"opMode\00", align 1
@MacroName = internal global [256 x i8*] zeroinitializer, align 16
@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"%sdefine(%s as \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"macset(%s as \00", align 1
@GlobalMacros = external global %struct.MACROS_T, align 8
@macname.mbuf = internal global [2 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"***OUT OF RANGE MACRO***\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"***UNDEFINED MACRO***\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"macid(\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c") => \00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Name required for macro/class\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Invalid macro/class character %c\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Unbalanced { on %s\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"Macro/class name ({%s}) too long (%d chars max)\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"Macro/class {%s}: too many long names\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"Unable to assign macro/class ID (mid = 0x%x)\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"expand(\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"expand(%d) ==> \00", align 1
@MaxMacroRecursion = external global i32, align 4
@.str.23 = private unnamed_addr constant [36 x i8] c"expand: recursion too deep (%d max)\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"expand ==> \00", align 1

; Function Attrs: nounwind uwtable
define void @initmacros(%struct.envelope* %e) #0 {
entry:
  %e.addr = alloca %struct.envelope*, align 8
  %m = alloca %struct.metamac*, align 8
  %c = alloca i32, align 4
  %buf = alloca [5 x i8], align 1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast %struct.metamac** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast [5 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 5, i8* %2) #1
  store %struct.metamac* getelementptr inbounds ([18 x %struct.metamac], [18 x %struct.metamac]* @MetaMacros, i32 0, i32 0), %struct.metamac** %m, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.metamac*, %struct.metamac** %m, align 8, !tbaa !1
  %metaname = getelementptr inbounds %struct.metamac, %struct.metamac* %3, i32 0, i32 0
  %4 = load i8, i8* %metaname, align 1, !tbaa !5
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.metamac*, %struct.metamac** %m, align 8, !tbaa !1
  %metaval = getelementptr inbounds %struct.metamac, %struct.metamac* %5, i32 0, i32 1
  %6 = load i8, i8* %metaval, align 1, !tbaa !7
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 0
  store i8 %6, i8* %arrayidx, align 1, !tbaa !8
  %arrayidx2 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 1
  store i8 0, i8* %arrayidx2, align 1, !tbaa !8
  %7 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %7, i32 0, i32 46
  %8 = load %struct.metamac*, %struct.metamac** %m, align 8, !tbaa !1
  %metaname3 = getelementptr inbounds %struct.metamac, %struct.metamac* %8, i32 0, i32 0
  %9 = load i8, i8* %metaname3, align 1, !tbaa !5
  %conv4 = sext i8 %9 to i32
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i32 0
  %10 = load i32, i32* @SmHeapGroup, align 4, !tbaa !9
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro, i32 1, i32 %conv4, i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 142, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.metamac*, %struct.metamac** %m, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.metamac, %struct.metamac* %11, i32 1
  store %struct.metamac* %incdec.ptr, %struct.metamac** %m, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx5 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 0
  store i8 -107, i8* %arrayidx5, align 1, !tbaa !8
  %arrayidx6 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 2
  store i8 0, i8* %arrayidx6, align 1, !tbaa !8
  store i32 48, i32* %c, align 4, !tbaa !9
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.15, %for.end
  %12 = load i32, i32* %c, align 4, !tbaa !9
  %cmp8 = icmp sle i32 %12, 57
  br i1 %cmp8, label %for.body.10, label %for.end.16

for.body.10:                                      ; preds = %for.cond.7
  %13 = load i32, i32* %c, align 4, !tbaa !9
  %conv11 = trunc i32 %13 to i8
  %arrayidx12 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i64 1
  store i8 %conv11, i8* %arrayidx12, align 1, !tbaa !8
  %14 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro13 = getelementptr inbounds %struct.envelope, %struct.envelope* %14, i32 0, i32 46
  %15 = load i32, i32* %c, align 4, !tbaa !9
  %arraydecay14 = getelementptr inbounds [5 x i8], [5 x i8]* %buf, i32 0, i32 0
  %16 = load i32, i32* @SmHeapGroup, align 4, !tbaa !9
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro13, i32 1, i32 %15, i8* %arraydecay14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 149, i32 %16)
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.10
  %17 = load i32, i32* %c, align 4, !tbaa !9
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %c, align 4, !tbaa !9
  br label %for.cond.7

for.end.16:                                       ; preds = %for.cond.7
  %18 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro17 = getelementptr inbounds %struct.envelope, %struct.envelope* %18, i32 0, i32 46
  %19 = load i32, i32* @SmHeapGroup, align 4, !tbaa !9
  call void @macdefine_tagged(%struct.MACROS_T* %e_macro17, i32 2, i32 110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 153, i32 %19)
  %call = call %struct.symtab* @stab(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 9, i32 1)
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %call, i32 0, i32 3
  %sv_macro = bitcast %union.anon* %s_value to i32*
  store i32 130, i32* %sv_macro, align 4, !tbaa !9
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** getelementptr inbounds ([256 x i8*], [256 x i8*]* @MacroName, i32 0, i64 130), align 8, !tbaa !1
  %20 = bitcast [5 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 5, i8* %20) #1
  %21 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.metamac** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @macdefine_tagged(%struct.MACROS_T* %mac, i32 %vclass, i32 %id, i8* %value, i8* %file, i32 %line, i32 %grp) #0 {
entry:
  %mac.addr = alloca %struct.MACROS_T*, align 8
  %vclass.addr = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %grp.addr = alloca i32, align 4
  %newvalue = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %freeit = alloca i8*, align 8
  store %struct.MACROS_T* %mac, %struct.MACROS_T** %mac.addr, align 8, !tbaa !1
  store i32 %vclass, i32* %vclass.addr, align 4, !tbaa !8
  store i32 %id, i32* %id.addr, align 4, !tbaa !9
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  store i8* %file, i8** %file.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !9
  store i32 %grp, i32* %grp.addr, align 4, !tbaa !9
  %0 = bitcast i8** %newvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %id.addr, align 4, !tbaa !9
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %id.addr, align 4, !tbaa !9
  %cmp1 = icmp sgt i32 %2, 255
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 35), align 1, !tbaa !8
  %conv = zext i8 %3 to i32
  %cmp2 = icmp sge i32 %conv, 9
  br i1 %cmp2, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !9
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.8, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %id.addr, align 4, !tbaa !9
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.MACROS_T*, %struct.MACROS_T** %mac.addr, align 8, !tbaa !1
  %mac_table = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [256 x i8*], [256 x i8*]* %mac_table, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %7, null
  %cond = select i1 %cmp5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)
  %8 = load i32, i32* %id.addr, align 4, !tbaa !9
  %call = call i8* @macname(i32 %8)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* %cond, i8* %call)
  %call7 = call %struct.sm_file* @sm_debug_file()
  %9 = load i8*, i8** %value.addr, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call7, i8* %9)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %10 = load %struct.MACROS_T*, %struct.MACROS_T** %mac.addr, align 8, !tbaa !1
  %mac_rpool = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %10, i32 0, i32 0
  %11 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %mac_rpool, align 8, !tbaa !11
  %cmp9 = icmp eq %struct.SM_RPOOL_T* %11, null
  br i1 %cmp9, label %if.then.11, label %if.else.68

if.then.11:                                       ; preds = %if.end.8
  %12 = bitcast i8** %freeit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i8* null, i8** %freeit, align 8, !tbaa !1
  %13 = load i32, i32* %id.addr, align 4, !tbaa !9
  %idxprom12 = sext i32 %13 to i64
  %14 = load %struct.MACROS_T*, %struct.MACROS_T** %mac.addr, align 8, !tbaa !1
  %mac_table13 = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %14, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [256 x i8*], [256 x i8*]* %mac_table13, i32 0, i64 %idxprom12
  %15 = load i8*, i8** %arrayidx14, align 8, !tbaa !1
  %cmp15 = icmp ne i8* %15, null
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.29

land.lhs.true.17:                                 ; preds = %if.then.11
  %16 = load i32, i32* %id.addr, align 4, !tbaa !9
  %conv18 = trunc i32 %16 to i8
  %conv19 = zext i8 %conv18 to i64
  %div = udiv i64 %conv19, 32
  %and = and i64 %div, 7
  %17 = load %struct.MACROS_T*, %struct.MACROS_T** %mac.addr, align 8, !tbaa !1
  %mac_allocated = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %17, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [8 x i32], [8 x i32]* %mac_allocated, i32 0, i64 %and
  %18 = load i32, i32* %arrayidx20, align 4, !tbaa !9
  %19 = load i32, i32* %id.addr, align 4, !tbaa !9
  %conv21 = trunc i32 %19 to i8
  %conv22 = zext i8 %conv21 to i64
  %rem = urem i64 %conv22, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and23 = and i32 %18, %shl
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %land.lhs.true.17
  %20 = load i32, i32* %id.addr, align 4, !tbaa !9
  %idxprom26 = sext i32 %20 to i64
  %21 = load %struct.MACROS_T*, %struct.MACROS_T** %mac.addr, align 8, !tbaa !1
  %mac_table27 = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %21, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [256 x i8*], [256 x i8*]* %mac_table27, i32 0, i64 %idxprom26
  %22 = load i8*, i8** %arrayidx28, align 8, !tbaa !1
  store i8* %22, i8** %freeit, align 8, !tbaa !1
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %land.lhs.true.17, %if.then.11
  %23 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %cmp30 = icmp eq i8* %23, null
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %if.end.29
  %24 = load i32, i32* %vclass.addr, align 4, !tbaa !8
  %cmp33 = icmp eq i32 %24, 0
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %lor.lhs.false.32, %if.end.29
  %25 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %27 = load i32, i32* %line.addr, align 4, !tbaa !9
  call void @sm_heap_checkptr_tagged(i8* %25, i8* %26, i32 %27)
  %28 = load i8*, i8** %value.addr, align 8, !tbaa !1
  store i8* %28, i8** %newvalue, align 8, !tbaa !1
  %29 = load i32, i32* %id.addr, align 4, !tbaa !9
  %conv36 = trunc i32 %29 to i8
  %conv37 = zext i8 %conv36 to i64
  %rem38 = urem i64 %conv37, 32
  %sh_prom39 = trunc i64 %rem38 to i32
  %shl40 = shl i32 1, %sh_prom39
  %neg = xor i32 %shl40, -1
  %30 = load i32, i32* %id.addr, align 4, !tbaa !9
  %conv41 = trunc i32 %30 to i8
  %conv42 = zext i8 %conv41 to i64
  %div43 = udiv i64 %conv42, 32
  %and44 = and i64 %div43, 7
  %31 = load %struct.MACROS_T*, %struct.MACROS_T** %mac.addr, align 8, !tbaa !1
  %mac_allocated45 = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %31, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* %mac_allocated45, i32 0, i64 %and44
  %32 = load i32, i32* %arrayidx46, align 4, !tbaa !9
  %and47 = and i32 %32, %neg
  store i32 %and47, i32* %arrayidx46, align 4, !tbaa !9
  br label %if.end.60

if.else:                                          ; preds = %lor.lhs.false.32
  %33 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %35 = load i32, i32* %line.addr, align 4, !tbaa !9
  %call48 = call i8* @sm_strdup_tagged_x(i8* %33, i8* %34, i32 %35, i32 0)
  store i8* %call48, i8** %newvalue, align 8, !tbaa !1
  %36 = load i32, i32* %id.addr, align 4, !tbaa !9
  %conv49 = trunc i32 %36 to i8
  %conv50 = zext i8 %conv49 to i64
  %rem51 = urem i64 %conv50, 32
  %sh_prom52 = trunc i64 %rem51 to i32
  %shl53 = shl i32 1, %sh_prom52
  %37 = load i32, i32* %id.addr, align 4, !tbaa !9
  %conv54 = trunc i32 %37 to i8
  %conv55 = zext i8 %conv54 to i64
  %div56 = udiv i64 %conv55, 32
  %and57 = and i64 %div56, 7
  %38 = load %struct.MACROS_T*, %struct.MACROS_T** %mac.addr, align 8, !tbaa !1
  %mac_allocated58 = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %38, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %mac_allocated58, i32 0, i64 %and57
  %39 = load i32, i32* %arrayidx59, align 4, !tbaa !9
  %or = or i32 %39, %shl53
  store i32 %or, i32* %arrayidx59, align 4, !tbaa !9
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.then.35
  %40 = load i8*, i8** %newvalue, align 8, !tbaa !1
  %41 = load i32, i32* %id.addr, align 4, !tbaa !9
  %idxprom61 = sext i32 %41 to i64
  %42 = load %struct.MACROS_T*, %struct.MACROS_T** %mac.addr, align 8, !tbaa !1
  %mac_table62 = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %42, i32 0, i32 2
  %arrayidx63 = getelementptr inbounds [256 x i8*], [256 x i8*]* %mac_table62, i32 0, i64 %idxprom61
  store i8* %40, i8** %arrayidx63, align 8, !tbaa !1
  %43 = load i8*, i8** %freeit, align 8, !tbaa !1
  %cmp64 = icmp ne i8* %43, null
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.60
  %44 = load i8*, i8** %freeit, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 449)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.60
  %45 = bitcast i8** %freeit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  br label %if.end.86

if.else.68:                                       ; preds = %if.end.8
  %46 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %cmp69 = icmp eq i8* %46, null
  br i1 %cmp69, label %if.then.74, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %if.else.68
  %47 = load i32, i32* %vclass.addr, align 4, !tbaa !8
  %cmp72 = icmp eq i32 %47, 2
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %lor.lhs.false.71, %if.else.68
  %48 = load i8*, i8** %value.addr, align 8, !tbaa !1
  store i8* %48, i8** %newvalue, align 8, !tbaa !1
  br label %if.end.78

if.else.75:                                       ; preds = %lor.lhs.false.71
  %49 = load %struct.MACROS_T*, %struct.MACROS_T** %mac.addr, align 8, !tbaa !1
  %mac_rpool76 = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %49, i32 0, i32 0
  %50 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %mac_rpool76, align 8, !tbaa !11
  %51 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %call77 = call i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T* %50, i8* %51)
  store i8* %call77, i8** %newvalue, align 8, !tbaa !1
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  %52 = load i8*, i8** %newvalue, align 8, !tbaa !1
  %53 = load i32, i32* %id.addr, align 4, !tbaa !9
  %idxprom79 = sext i32 %53 to i64
  %54 = load %struct.MACROS_T*, %struct.MACROS_T** %mac.addr, align 8, !tbaa !1
  %mac_table80 = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %54, i32 0, i32 2
  %arrayidx81 = getelementptr inbounds [256 x i8*], [256 x i8*]* %mac_table80, i32 0, i64 %idxprom79
  store i8* %52, i8** %arrayidx81, align 8, !tbaa !1
  %55 = load i32, i32* %vclass.addr, align 4, !tbaa !8
  %cmp82 = icmp eq i32 %55, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.78
  %56 = load i8*, i8** %value.addr, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 459)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.78
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.67
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.86, %if.then
  %57 = bitcast i8** %newvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
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

declare %struct.symtab* @stab(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @expand(i8* %s, i8* %buf, i64 %bufsize, %struct.envelope* %e) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %e.addr = alloca %struct.envelope*, align 8
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i64 %bufsize, i64* %bufsize.addr, align 8, !tbaa !13
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %2 = load i64, i64* %bufsize.addr, align 8, !tbaa !13
  %3 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @doexpand(i8* %0, i8* %1, i64 %2, i32 0, %struct.envelope* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @doexpand(i8* %s, i8* %buf, i64 %bufsize, i32 %explevel, %struct.envelope* %e) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %explevel.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %xp = alloca i8*, align 8
  %q = alloca i8*, align 8
  %skipping = alloca i32, align 4
  %recurse = alloca i32, align 4
  %i = alloca i64, align 8
  %skiplev = alloca i32, align 4
  %iflev = alloca i32, align 4
  %quotenext = alloca i32, align 4
  %xbuf = alloca [4096 x i8], align 16
  %c = alloca i32, align 4
  %mv = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %hiderecurse = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i64 %bufsize, i64* %bufsize.addr, align 8, !tbaa !13
  store i32 %explevel, i32* %explevel.addr, align 4, !tbaa !9
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast i8** %xp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %skipping to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %recurse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %skiplev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %iflev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %quotenext to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast [4096 x i8]* %xbuf to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %8) #1
  %9 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 35), align 1, !tbaa !8
  %conv = zext i8 %9 to i32
  %cmp = icmp sge i32 %conv, 24
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load volatile i32, i32* @IntSig, align 4, !tbaa !9
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0))
  %call = call %struct.sm_file* @sm_debug_file()
  %11 = load i8*, i8** %s.addr, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call, i8* %11)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %recurse, align 4, !tbaa !9
  store i32 0, i32* %skipping, align 4, !tbaa !9
  store i32 0, i32* %skiplev, align 4, !tbaa !9
  store i32 0, i32* %iflev, align 4, !tbaa !9
  store i32 0, i32* %quotenext, align 4, !tbaa !9
  %12 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %cmp2 = icmp eq i8* %12, null
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8** %s.addr, align 8, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %xbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %xp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %13 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !8
  %conv6 = sext i8 %14 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i8* null, i8** %q, align 8, !tbaa !1
  %16 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !8
  %conv9 = sext i8 %17 to i32
  %and = and i32 %conv9, 255
  store i32 %and, i32* %c, align 4, !tbaa !9
  %18 = load i32, i32* %quotenext, align 4, !tbaa !9
  %tobool10 = icmp ne i32 %18, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  store i32 0, i32* %quotenext, align 4, !tbaa !9
  br label %simpleinterpolate

if.end.12:                                        ; preds = %for.body
  %19 = load i32, i32* %c, align 4, !tbaa !9
  switch i32 %19, label %sw.epilog [
    i32 154, label %sw.bb
    i32 155, label %sw.bb.25
    i32 156, label %sw.bb.35
    i32 129, label %sw.bb.48
    i32 255, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %if.end.12
  %20 = load i32, i32* %iflev, align 4, !tbaa !9
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %iflev, align 4, !tbaa !9
  %21 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8, !tbaa !1
  %22 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv13 = sext i8 %22 to i32
  %and14 = and i32 %conv13, 255
  store i32 %and14, i32* %c, align 4, !tbaa !9
  %23 = load i32, i32* %skipping, align 4, !tbaa !9
  %tobool15 = icmp ne i32 %23, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %sw.bb
  %24 = load i32, i32* %skiplev, align 4, !tbaa !9
  %inc17 = add nsw i32 %24, 1
  store i32 %inc17, i32* %skiplev, align 4, !tbaa !9
  br label %if.end.24

if.else:                                          ; preds = %sw.bb
  %25 = bitcast i8** %mv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load i32, i32* %c, align 4, !tbaa !9
  %27 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call18 = call i8* @macvalue(i32 %26, %struct.envelope* %27)
  store i8* %call18, i8** %mv, align 8, !tbaa !1
  %28 = load i8*, i8** %mv, align 8, !tbaa !1
  %cmp19 = icmp eq i8* %28, null
  br i1 %cmp19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else
  %29 = load i8*, i8** %mv, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !8
  %conv21 = sext i8 %30 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else
  %31 = phi i1 [ true, %if.else ], [ %cmp22, %lor.rhs ]
  %lor.ext = zext i1 %31 to i32
  store i32 %lor.ext, i32* %skipping, align 4, !tbaa !9
  %32 = bitcast i8** %mv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  br label %if.end.24

if.end.24:                                        ; preds = %lor.end, %if.then.16
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.25:                                         ; preds = %if.end.12
  %33 = load i32, i32* %iflev, align 4, !tbaa !9
  %cmp26 = icmp eq i32 %33, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.bb.25
  br label %sw.epilog

if.end.29:                                        ; preds = %sw.bb.25
  %34 = load i32, i32* %skiplev, align 4, !tbaa !9
  %cmp30 = icmp eq i32 %34, 0
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.29
  %35 = load i32, i32* %skipping, align 4, !tbaa !9
  %tobool33 = icmp ne i32 %35, 0
  %lnot = xor i1 %tobool33, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %skipping, align 4, !tbaa !9
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.29
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.35:                                         ; preds = %if.end.12
  %36 = load i32, i32* %iflev, align 4, !tbaa !9
  %cmp36 = icmp eq i32 %36, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %sw.bb.35
  br label %sw.epilog

if.end.39:                                        ; preds = %sw.bb.35
  %37 = load i32, i32* %iflev, align 4, !tbaa !9
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %iflev, align 4, !tbaa !9
  %38 = load i32, i32* %skiplev, align 4, !tbaa !9
  %cmp40 = icmp eq i32 %38, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  store i32 0, i32* %skipping, align 4, !tbaa !9
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.39
  %39 = load i32, i32* %skipping, align 4, !tbaa !9
  %tobool44 = icmp ne i32 %39, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.43
  %40 = load i32, i32* %skiplev, align 4, !tbaa !9
  %dec46 = add nsw i32 %40, -1
  store i32 %dec46, i32* %skiplev, align 4, !tbaa !9
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.43
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.48:                                         ; preds = %if.end.12
  %41 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr49 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr49, i8** %s.addr, align 8, !tbaa !1
  %42 = load i8, i8* %incdec.ptr49, align 1, !tbaa !8
  %conv50 = sext i8 %42 to i32
  %and51 = and i32 %conv50, 255
  store i32 %and51, i32* %c, align 4, !tbaa !9
  %43 = load i32, i32* %c, align 4, !tbaa !9
  %cmp52 = icmp ne i32 %43, 0
  br i1 %cmp52, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %sw.bb.48
  %44 = load i32, i32* %c, align 4, !tbaa !9
  %45 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call55 = call i8* @macvalue(i32 %44, %struct.envelope* %45)
  store i8* %call55, i8** %q, align 8, !tbaa !1
  br label %if.end.58

if.else.56:                                       ; preds = %sw.bb.48
  %46 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr57 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %incdec.ptr57, i8** %s.addr, align 8, !tbaa !1
  store i8* null, i8** %q, align 8, !tbaa !1
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.54
  %47 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp59 = icmp eq i8* %47, null
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.58
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %if.end.58
  br label %sw.epilog

sw.bb.63:                                         ; preds = %if.end.12
  store i32 1, i32* %quotenext, align 4, !tbaa !9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.12, %sw.bb.63, %if.end.62, %if.then.38, %if.then.28
  br label %simpleinterpolate

simpleinterpolate:                                ; preds = %sw.epilog, %if.then.11
  %48 = load i32, i32* %skipping, align 4, !tbaa !9
  %tobool64 = icmp ne i32 %48, 0
  br i1 %tobool64, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %simpleinterpolate
  %49 = load i8*, i8** %xp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %xbuf, i32 0, i64 4095
  %cmp65 = icmp uge i8* %49, %arrayidx
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %lor.lhs.false, %simpleinterpolate
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %lor.lhs.false
  %50 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp69 = icmp eq i8* %50, null
  br i1 %cmp69, label %if.then.71, label %if.else.74

if.then.71:                                       ; preds = %if.end.68
  %51 = load i32, i32* %c, align 4, !tbaa !9
  %conv72 = trunc i32 %51 to i8
  %52 = load i8*, i8** %xp, align 8, !tbaa !1
  %incdec.ptr73 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr73, i8** %xp, align 8, !tbaa !1
  store i8 %conv72, i8* %52, align 1, !tbaa !8
  br label %if.end.94

if.else.74:                                       ; preds = %if.end.68
  %53 = bitcast i32* %hiderecurse to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  store i32 0, i32* %hiderecurse, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %if.end.88, %if.else.74
  %54 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr75 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr75, i8** %q, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !8
  %conv76 = sext i8 %55 to i32
  store i32 %conv76, i32* %c, align 4, !tbaa !9
  %cmp77 = icmp ne i32 %conv76, 0
  br i1 %cmp77, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %56 = load i8*, i8** %xp, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds [4096 x i8], [4096 x i8]* %xbuf, i32 0, i64 4095
  %cmp80 = icmp ult i8* %56, %arrayidx79
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %57 = phi i1 [ false, %while.cond ], [ %cmp80, %land.rhs ]
  br i1 %57, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %58 = load i32, i32* %hiderecurse, align 4, !tbaa !9
  %tobool82 = icmp ne i32 %58, 0
  br i1 %tobool82, label %if.end.88, label %land.lhs.true.83

land.lhs.true.83:                                 ; preds = %while.body
  %59 = load i32, i32* %c, align 4, !tbaa !9
  %and84 = and i32 %59, 224
  %cmp85 = icmp eq i32 %and84, 128
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %land.lhs.true.83
  store i32 1, i32* %recurse, align 4, !tbaa !9
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %land.lhs.true.83, %while.body
  %60 = load i32, i32* %c, align 4, !tbaa !9
  %conv89 = trunc i32 %60 to i8
  %61 = load i8*, i8** %xp, align 8, !tbaa !1
  %incdec.ptr90 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr90, i8** %xp, align 8, !tbaa !1
  store i8 %conv89, i8* %61, align 1, !tbaa !8
  %62 = load i32, i32* %c, align 4, !tbaa !9
  %and91 = and i32 %62, 255
  %cmp92 = icmp eq i32 %and91, 255
  %conv93 = zext i1 %cmp92 to i32
  store i32 %conv93, i32* %hiderecurse, align 4, !tbaa !9
  br label %while.cond

while.end:                                        ; preds = %land.end
  %63 = bitcast i32* %hiderecurse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  br label %if.end.94

if.end.94:                                        ; preds = %while.end, %if.then.71
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.94, %if.then.67, %if.then.61, %if.end.47, %if.end.34, %if.end.24
  %64 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %65 = load i8*, i8** %s.addr, align 8, !tbaa !1
  %incdec.ptr95 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr95, i8** %s.addr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load i8*, i8** %xp, align 8, !tbaa !1
  store i8 0, i8* %66, align 1, !tbaa !8
  %67 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 35), align 1, !tbaa !8
  %conv96 = zext i8 %67 to i32
  %cmp97 = icmp sge i32 %conv96, 28
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.104

land.lhs.true.99:                                 ; preds = %for.end
  %68 = load volatile i32, i32* @IntSig, align 4, !tbaa !9
  %tobool100 = icmp ne i32 %68, 0
  br i1 %tobool100, label %if.end.104, label %if.then.101

if.then.101:                                      ; preds = %land.lhs.true.99
  %69 = load i32, i32* %explevel.addr, align 4, !tbaa !9
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i32 %69)
  %call102 = call %struct.sm_file* @sm_debug_file()
  %arraydecay103 = getelementptr inbounds [4096 x i8], [4096 x i8]* %xbuf, i32 0, i32 0
  call void @xputs(%struct.sm_file* %call102, i8* %arraydecay103)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.101, %land.lhs.true.99, %for.end
  %70 = load i32, i32* %recurse, align 4, !tbaa !9
  %tobool105 = icmp ne i32 %70, 0
  br i1 %tobool105, label %if.then.106, label %if.end.112

if.then.106:                                      ; preds = %if.end.104
  %71 = load i32, i32* %explevel.addr, align 4, !tbaa !9
  %72 = load i32, i32* @MaxMacroRecursion, align 4, !tbaa !9
  %cmp107 = icmp slt i32 %71, %72
  br i1 %cmp107, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %if.then.106
  %arraydecay110 = getelementptr inbounds [4096 x i8], [4096 x i8]* %xbuf, i32 0, i32 0
  %73 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %74 = load i64, i64* %bufsize.addr, align 8, !tbaa !13
  %75 = load i32, i32* %explevel.addr, align 4, !tbaa !9
  %add = add nsw i32 %75, 1
  %76 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  call void @doexpand(i8* %arraydecay110, i8* %73, i64 %74, i32 %add, %struct.envelope* %76)
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end.111:                                       ; preds = %if.then.106
  %77 = load i32, i32* @MaxMacroRecursion, align 4, !tbaa !9
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0), i32 %77)
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.104
  %78 = load i32, i32* %explevel.addr, align 4, !tbaa !9
  %cmp113 = icmp eq i32 %78, 0
  br i1 %cmp113, label %if.then.115, label %if.else.118

if.then.115:                                      ; preds = %if.end.112
  %79 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arraydecay116 = getelementptr inbounds [4096 x i8], [4096 x i8]* %xbuf, i32 0, i32 0
  %80 = load i64, i64* %bufsize.addr, align 8, !tbaa !13
  %call117 = call i64 @sm_strlcpy(i8* %79, i8* %arraydecay116, i64 %80)
  br label %if.end.125

if.else.118:                                      ; preds = %if.end.112
  %81 = load i8*, i8** %xp, align 8, !tbaa !1
  %arraydecay119 = getelementptr inbounds [4096 x i8], [4096 x i8]* %xbuf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %81 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay119 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %i, align 8, !tbaa !13
  %82 = load i64, i64* %i, align 8, !tbaa !13
  %83 = load i64, i64* %bufsize.addr, align 8, !tbaa !13
  %cmp120 = icmp uge i64 %82, %83
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.else.118
  %84 = load i64, i64* %bufsize.addr, align 8, !tbaa !13
  %sub = sub i64 %84, 1
  store i64 %sub, i64* %i, align 8, !tbaa !13
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %if.else.118
  %85 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %86 = bitcast [4096 x i8]* %xbuf to i8*
  %87 = load i64, i64* %i, align 8, !tbaa !13
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %85, i8* %86, i64 %87, i32 1, i1 false)
  %88 = load i64, i64* %i, align 8, !tbaa !13
  %89 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i8, i8* %89, i64 %88
  store i8 0, i8* %arrayidx124, align 1, !tbaa !8
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.123, %if.then.115
  %90 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 35), align 1, !tbaa !8
  %conv126 = zext i8 %90 to i32
  %cmp127 = icmp sge i32 %conv126, 24
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.133

land.lhs.true.129:                                ; preds = %if.end.125
  %91 = load volatile i32, i32* @IntSig, align 4, !tbaa !9
  %tobool130 = icmp ne i32 %91, 0
  br i1 %tobool130, label %if.end.133, label %if.then.131

if.then.131:                                      ; preds = %land.lhs.true.129
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0))
  %call132 = call %struct.sm_file* @sm_debug_file()
  %92 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call132, i8* %92)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %land.lhs.true.129, %if.end.125
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.134

cleanup.134:                                      ; preds = %if.end.133, %if.then.109
  %93 = bitcast [4096 x i8]* %xbuf to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %93) #1
  %94 = bitcast i32* %quotenext to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %iflev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %skiplev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i32* %recurse to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %skipping to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i8** %xp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %cleanup.dest.143 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.143, label %unreachable [
    i32 0, label %cleanup.cont.144
    i32 1, label %cleanup.cont.144
  ]

cleanup.cont.144:                                 ; preds = %cleanup.134, %cleanup.134
  ret void

unreachable:                                      ; preds = %cleanup.134, %cleanup
  unreachable
}

declare void @sm_dprintf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @macname(i32 %n) #0 {
entry:
  %retval = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %n, i32* %n.addr, align 4, !tbaa !9
  %0 = load i32, i32* %n.addr, align 4, !tbaa !9
  %conv = trunc i32 %0 to i8
  %conv1 = zext i8 %conv to i32
  store i32 %conv1, i32* %n.addr, align 4, !tbaa !9
  %1 = load i32, i32* %n.addr, align 4, !tbaa !9
  %cmp = icmp sgt i32 %1, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4, !tbaa !9
  %cmp3 = icmp sle i32 %2, 32
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %n.addr, align 4, !tbaa !9
  %cmp5 = icmp sgt i32 %3, 127
  br i1 %cmp5, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i32, i32* %n.addr, align 4, !tbaa !9
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [256 x i8*], [256 x i8*]* @MacroName, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %6, i8** %p, align 8, !tbaa !1
  %7 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp8 = icmp ne i8* %7, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %8, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.7
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.10
  %9 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  %10 = load i32, i32* %n.addr, align 4, !tbaa !9
  %conv13 = trunc i32 %10 to i8
  store i8 %conv13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @macname.mbuf, i32 0, i64 0), align 1, !tbaa !8
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @macname.mbuf, i32 0, i64 1), align 1, !tbaa !8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @macname.mbuf, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.end.12, %cleanup, %if.then
  %11 = load i8*, i8** %retval
  ret i8* %11
}

declare void @xputs(%struct.sm_file*, i8*) #2

declare %struct.sm_file* @sm_debug_file() #2

declare void @sm_heap_checkptr_tagged(i8*, i8*, i32) #2

declare i8* @sm_strdup_tagged_x(i8*, i8*, i32, i32) #2

declare void @sm_free_tagged(i8*, i8*, i32) #2

declare i8* @sm_rpool_strdup_x(%struct.SM_RPOOL_T*, i8*) #2

; Function Attrs: nounwind uwtable
define void @macset(%struct.MACROS_T* %mac, i32 %i, i8* %value) #0 {
entry:
  %mac.addr = alloca %struct.MACROS_T*, align 8
  %i.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  store %struct.MACROS_T* %mac, %struct.MACROS_T** %mac.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !9
  store i8* %value, i8** %value.addr, align 8, !tbaa !1
  %0 = load i32, i32* %i.addr, align 4, !tbaa !9
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4, !tbaa !9
  %cmp1 = icmp sgt i32 %1, 255
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 35), align 1, !tbaa !8
  %conv = zext i8 %2 to i32
  %cmp2 = icmp sge i32 %conv, 9
  br i1 %cmp2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %3 = load volatile i32, i32* @IntSig, align 4, !tbaa !9
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %4 = load i32, i32* %i.addr, align 4, !tbaa !9
  %call = call i8* @macname(i32 %4)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* %call)
  %call5 = call %struct.sm_file* @sm_debug_file()
  %5 = load i8*, i8** %value.addr, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call5, i8* %5)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %6 = load i8*, i8** %value.addr, align 8, !tbaa !1
  %7 = load i32, i32* %i.addr, align 4, !tbaa !9
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.MACROS_T*, %struct.MACROS_T** %mac.addr, align 8, !tbaa !1
  %mac_table = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [256 x i8*], [256 x i8*]* %mac_table, i32 0, i64 %idxprom
  store i8* %6, i8** %arrayidx, align 8, !tbaa !1
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @macvalue(i32 %n, %struct.envelope* %e) #0 {
entry:
  %retval = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %e.addr = alloca %struct.envelope*, align 8
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %p7 = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !9
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = load i32, i32* %n.addr, align 4, !tbaa !9
  %and = and i32 %0, 255
  store i32 %and, i32* %n.addr, align 4, !tbaa !9
  %1 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.envelope* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_mci = getelementptr inbounds %struct.envelope, %struct.envelope* %2, i32 0, i32 47
  %3 = load %struct.mailer_con_info*, %struct.mailer_con_info** %e_mci, align 8, !tbaa !15
  %cmp1 = icmp ne %struct.mailer_con_info* %3, null
  br i1 %cmp1, label %if.then, label %if.end.5

if.then:                                          ; preds = %land.lhs.true
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i32, i32* %n.addr, align 4, !tbaa !9
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_mci2 = getelementptr inbounds %struct.envelope, %struct.envelope* %6, i32 0, i32 47
  %7 = load %struct.mailer_con_info*, %struct.mailer_con_info** %e_mci2, align 8, !tbaa !15
  %mci_macro = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %7, i32 0, i32 24
  %mac_table = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %mci_macro, i32 0, i32 2
  %arrayidx = getelementptr inbounds [256 x i8*], [256 x i8*]* %mac_table, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %8, i8** %p, align 8, !tbaa !1
  %9 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp3 = icmp ne i8* %9, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  store i8* %10, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.4
  %11 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.5

if.end.5:                                         ; preds = %cleanup.cont, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.20, %if.end.5
  %12 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.envelope* %12, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = bitcast i8** %p7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %n.addr, align 4, !tbaa !9
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_macro = getelementptr inbounds %struct.envelope, %struct.envelope* %15, i32 0, i32 46
  %mac_table9 = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %e_macro, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [256 x i8*], [256 x i8*]* %mac_table9, i32 0, i64 %idxprom8
  %16 = load i8*, i8** %arrayidx10, align 8, !tbaa !1
  store i8* %16, i8** %p7, align 8, !tbaa !1
  %17 = load i8*, i8** %p7, align 8, !tbaa !1
  %cmp11 = icmp ne i8* %17, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.body
  %18 = load i8*, i8** %p7, align 8, !tbaa !1
  store i8* %18, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18

if.end.13:                                        ; preds = %while.body
  %19 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %20 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent = getelementptr inbounds %struct.envelope, %struct.envelope* %20, i32 0, i32 21
  %21 = load %struct.envelope*, %struct.envelope** %e_parent, align 8, !tbaa !21
  %cmp14 = icmp eq %struct.envelope* %19, %21
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.18

if.end.16:                                        ; preds = %if.end.13
  %22 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %e_parent17 = getelementptr inbounds %struct.envelope, %struct.envelope* %22, i32 0, i32 21
  %23 = load %struct.envelope*, %struct.envelope** %e_parent17, align 8, !tbaa !21
  store %struct.envelope* %23, %struct.envelope** %e.addr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.18

cleanup.18:                                       ; preds = %if.end.16, %if.then.15, %if.then.12
  %24 = bitcast i8** %p7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %cleanup.dest.19 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.19, label %unreachable [
    i32 0, label %cleanup.cont.20
    i32 1, label %return
    i32 3, label %while.end
  ]

cleanup.cont.20:                                  ; preds = %cleanup.18
  br label %while.cond

while.end:                                        ; preds = %cleanup.18, %while.cond
  %25 = load i32, i32* %n.addr, align 4, !tbaa !9
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [256 x i8*], [256 x i8*]* getelementptr inbounds (%struct.MACROS_T, %struct.MACROS_T* @GlobalMacros, i32 0, i32 2), i32 0, i64 %idxprom21
  %26 = load i8*, i8** %arrayidx22, align 8, !tbaa !1
  store i8* %26, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %cleanup.18, %cleanup
  %27 = load i8*, i8** %retval
  ret i8* %27

unreachable:                                      ; preds = %cleanup.18, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @macid_parse(i8* %p, i8** %ep) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %ep.addr = alloca i8**, align 8
  %mid = alloca i32, align 4
  %bp = alloca i8*, align 8
  %mbuf = alloca [26 x i8], align 16
  %cleanup.dest.slot = alloca i32
  %buf = alloca [2 x i8], align 1
  %s = alloca %struct.symtab*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i8** %ep, i8*** %ep.addr, align 8, !tbaa !1
  %0 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast [26 x i8]* %mbuf to i8*
  call void @llvm.lifetime.start(i64 26, i8* %2) #1
  %3 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 35), align 1, !tbaa !8
  %conv = zext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 14
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load volatile i32, i32* @IntSig, align 4, !tbaa !9
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0))
  %call = call %struct.sm_file* @sm_debug_file()
  %5 = load i8*, i8** %p.addr, align 8, !tbaa !1
  call void @xputs(%struct.sm_file* %call, i8* %5)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !8
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 123
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.25

land.lhs.true.8:                                  ; preds = %lor.lhs.false
  %10 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx9, align 1, !tbaa !8
  %conv10 = sext i8 %11 to i32
  %cmp11 = icmp eq i32 %conv10, 125
  br i1 %cmp11, label %if.then.13, label %if.end.25

if.then.13:                                       ; preds = %land.lhs.true.8, %if.end
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  %12 = load i8**, i8*** %ep.addr, align 8, !tbaa !1
  %cmp14 = icmp ne i8** %12, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  %13 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %14 = load i8**, i8*** %ep.addr, align 8, !tbaa !1
  store i8* %13, i8** %14, align 8, !tbaa !1
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.13
  %15 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 35), align 1, !tbaa !8
  %conv18 = zext i8 %15 to i32
  %cmp19 = icmp sge i32 %conv18, 14
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.24

land.lhs.true.21:                                 ; preds = %if.end.17
  %16 = load volatile i32, i32* @IntSig, align 4, !tbaa !9
  %tobool22 = icmp ne i32 %16, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.21
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.21, %if.end.17
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %land.lhs.true.8, %lor.lhs.false
  %17 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !8
  %conv26 = sext i8 %18 to i32
  %cmp27 = icmp ne i32 %conv26, 123
  br i1 %cmp27, label %if.then.29, label %if.end.45

if.then.29:                                       ; preds = %if.end.25
  %19 = load i8**, i8*** %ep.addr, align 8, !tbaa !1
  %cmp30 = icmp ne i8** %19, null
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.29
  %20 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8**, i8*** %ep.addr, align 8, !tbaa !1
  store i8* %add.ptr, i8** %21, align 8, !tbaa !1
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.then.29
  %22 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 35), align 1, !tbaa !8
  %conv34 = zext i8 %22 to i32
  %cmp35 = icmp sge i32 %conv34, 14
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.43

land.lhs.true.37:                                 ; preds = %if.end.33
  %23 = load volatile i32, i32* @IntSig, align 4, !tbaa !9
  %tobool38 = icmp ne i32 %23, 0
  br i1 %tobool38, label %if.end.43, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.37
  %24 = bitcast [2 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 2, i8* %24) #1
  %25 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !8
  %arrayidx40 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 0
  store i8 %26, i8* %arrayidx40, align 1, !tbaa !8
  %arrayidx41 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i64 1
  store i8 0, i8* %arrayidx41, align 1, !tbaa !8
  %call42 = call %struct.sm_file* @sm_debug_file()
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i32 0, i32 0
  call void @xputs(%struct.sm_file* %call42, i8* %arraydecay)
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  %27 = bitcast [2 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 2, i8* %27) #1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %land.lhs.true.37, %if.end.33
  %28 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !8
  %conv44 = sext i8 %29 to i32
  %and = and i32 %conv44, 255
  store i32 %and, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.25
  %arraydecay46 = getelementptr inbounds [26 x i8], [26 x i8]* %mbuf, i32 0, i32 0
  store i8* %arraydecay46, i8** %bp, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.75, %if.end.45
  %30 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !1
  %31 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv47 = sext i8 %31 to i32
  %cmp48 = icmp ne i32 %conv47, 0
  br i1 %cmp48, label %land.lhs.true.50, label %land.end

land.lhs.true.50:                                 ; preds = %while.cond
  %32 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !8
  %conv51 = sext i8 %33 to i32
  %cmp52 = icmp ne i32 %conv51, 125
  br i1 %cmp52, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.50
  %34 = load i8*, i8** %bp, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds [26 x i8], [26 x i8]* %mbuf, i32 0, i64 25
  %cmp55 = icmp ult i8* %34, %arrayidx54
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.50, %while.cond
  %35 = phi i1 [ false, %land.lhs.true.50 ], [ false, %while.cond ], [ %cmp55, %land.rhs ]
  br i1 %35, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %36 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !8
  %conv57 = sext i8 %37 to i32
  %and58 = and i32 %conv57, -128
  %cmp59 = icmp eq i32 %and58, 0
  br i1 %cmp59, label %land.lhs.true.61, label %if.else

land.lhs.true.61:                                 ; preds = %while.body
  %38 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !8
  %conv62 = sext i8 %39 to i32
  %idxprom = sext i32 %conv62 to i64
  %call63 = call i16** @__ctype_b_loc() #4
  %40 = load i16*, i16** %call63, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i16, i16* %40, i64 %idxprom
  %41 = load i16, i16* %arrayidx64, align 2, !tbaa !22
  %conv65 = zext i16 %41 to i32
  %and66 = and i32 %conv65, 8
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then.72, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %land.lhs.true.61
  %42 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !8
  %conv69 = sext i8 %43 to i32
  %cmp70 = icmp eq i32 %conv69, 95
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %lor.lhs.false.68, %land.lhs.true.61
  %44 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %45 = load i8, i8* %44, align 1, !tbaa !8
  %46 = load i8*, i8** %bp, align 8, !tbaa !1
  %incdec.ptr73 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr73, i8** %bp, align 8, !tbaa !1
  store i8 %45, i8* %46, align 1, !tbaa !8
  br label %if.end.75

if.else:                                          ; preds = %lor.lhs.false.68, %while.body
  %47 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %48 = load i8, i8* %47, align 1, !tbaa !8
  %conv74 = sext i8 %48 to i32
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), i32 %conv74)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else, %if.then.72
  br label %while.cond

while.end:                                        ; preds = %land.end
  %49 = load i8*, i8** %bp, align 8, !tbaa !1
  store i8 0, i8* %49, align 1, !tbaa !8
  store i32 -1, i32* %mid, align 4, !tbaa !9
  %50 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !8
  %conv76 = sext i8 %51 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %while.end
  %arraydecay80 = getelementptr inbounds [26 x i8], [26 x i8]* %mbuf, i32 0, i32 0
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay80)
  br label %if.end.127

if.else.81:                                       ; preds = %while.end
  %52 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !8
  %conv82 = sext i8 %53 to i32
  %cmp83 = icmp ne i32 %conv82, 125
  br i1 %cmp83, label %if.then.85, label %if.else.87

if.then.85:                                       ; preds = %if.else.81
  %arraydecay86 = getelementptr inbounds [26 x i8], [26 x i8]* %mbuf, i32 0, i32 0
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay86, i32 25)
  br label %if.end.126

if.else.87:                                       ; preds = %if.else.81
  %arrayidx88 = getelementptr inbounds [26 x i8], [26 x i8]* %mbuf, i32 0, i64 1
  %54 = load i8, i8* %arrayidx88, align 1, !tbaa !8
  %conv89 = sext i8 %54 to i32
  %cmp90 = icmp eq i32 %conv89, 0
  br i1 %cmp90, label %land.lhs.true.92, label %if.else.102

land.lhs.true.92:                                 ; preds = %if.else.87
  %arrayidx93 = getelementptr inbounds [26 x i8], [26 x i8]* %mbuf, i32 0, i64 0
  %55 = load i8, i8* %arrayidx93, align 1, !tbaa !8
  %conv94 = sext i8 %55 to i32
  %cmp95 = icmp sge i32 %conv94, 32
  br i1 %cmp95, label %if.then.97, label %if.else.102

if.then.97:                                       ; preds = %land.lhs.true.92
  %arrayidx98 = getelementptr inbounds [26 x i8], [26 x i8]* %mbuf, i32 0, i64 0
  %56 = load i8, i8* %arrayidx98, align 1, !tbaa !8
  %conv99 = sext i8 %56 to i32
  %and100 = and i32 %conv99, 255
  store i32 %and100, i32* %mid, align 4, !tbaa !9
  %57 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr101 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr101, i8** %p.addr, align 8, !tbaa !1
  br label %if.end.125

if.else.102:                                      ; preds = %land.lhs.true.92, %if.else.87
  %58 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  %arraydecay103 = getelementptr inbounds [26 x i8], [26 x i8]* %mbuf, i32 0, i32 0
  %call104 = call %struct.symtab* @stab(i8* %arraydecay103, i32 9, i32 1)
  store %struct.symtab* %call104, %struct.symtab** %s, align 8, !tbaa !1
  %59 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %59, i32 0, i32 3
  %sv_macro = bitcast %union.anon* %s_value to i32*
  %60 = load i32, i32* %sv_macro, align 4, !tbaa !9
  %cmp105 = icmp ne i32 %60, 0
  br i1 %cmp105, label %if.then.107, label %if.else.110

if.then.107:                                      ; preds = %if.else.102
  %61 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value108 = getelementptr inbounds %struct.symtab, %struct.symtab* %61, i32 0, i32 3
  %sv_macro109 = bitcast %union.anon* %s_value108 to i32*
  %62 = load i32, i32* %sv_macro109, align 4, !tbaa !9
  store i32 %62, i32* %mid, align 4, !tbaa !9
  br label %if.end.123

if.else.110:                                      ; preds = %if.else.102
  %63 = load i32, i32* @NextMacroId, align 4, !tbaa !9
  %cmp111 = icmp sgt i32 %63, 255
  br i1 %cmp111, label %if.then.113, label %if.else.117

if.then.113:                                      ; preds = %if.else.110
  %arraydecay114 = getelementptr inbounds [26 x i8], [26 x i8]* %mbuf, i32 0, i32 0
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0), i8* %arraydecay114)
  %64 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value115 = getelementptr inbounds %struct.symtab, %struct.symtab* %64, i32 0, i32 3
  %sv_macro116 = bitcast %union.anon* %s_value115 to i32*
  store i32 -1, i32* %sv_macro116, align 4, !tbaa !9
  br label %if.end.122

if.else.117:                                      ; preds = %if.else.110
  %65 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_name = getelementptr inbounds %struct.symtab, %struct.symtab* %65, i32 0, i32 0
  %66 = load i8*, i8** %s_name, align 8, !tbaa !23
  %67 = load i32, i32* @NextMacroId, align 4, !tbaa !9
  %idxprom118 = sext i32 %67 to i64
  %arrayidx119 = getelementptr inbounds [256 x i8*], [256 x i8*]* @MacroName, i32 0, i64 %idxprom118
  store i8* %66, i8** %arrayidx119, align 8, !tbaa !1
  %68 = load i32, i32* @NextMacroId, align 4, !tbaa !9
  store i32 %68, i32* %mid, align 4, !tbaa !9
  %69 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value120 = getelementptr inbounds %struct.symtab, %struct.symtab* %69, i32 0, i32 3
  %sv_macro121 = bitcast %union.anon* %s_value120 to i32*
  store i32 %68, i32* %sv_macro121, align 4, !tbaa !9
  %70 = load i32, i32* @NextMacroId, align 4, !tbaa !9
  %add = add nsw i32 %70, 1
  store i32 %add, i32* @NextMacroId, align 4, !tbaa !9
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.117, %if.then.113
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.107
  %71 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr124 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr124, i8** %p.addr, align 8, !tbaa !1
  %72 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.123, %if.then.97
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.85
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.79
  %73 = load i8**, i8*** %ep.addr, align 8, !tbaa !1
  %cmp128 = icmp ne i8** %73, null
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.127
  %74 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %75 = load i8**, i8*** %ep.addr, align 8, !tbaa !1
  store i8* %74, i8** %75, align 8, !tbaa !1
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.end.127
  %76 = load i32, i32* %mid, align 4, !tbaa !9
  %cmp132 = icmp slt i32 %76, 0
  br i1 %cmp132, label %if.then.137, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %if.end.131
  %77 = load i32, i32* %mid, align 4, !tbaa !9
  %cmp135 = icmp sgt i32 %77, 255
  br i1 %cmp135, label %if.then.137, label %if.end.145

if.then.137:                                      ; preds = %lor.lhs.false.134, %if.end.131
  %78 = load i32, i32* %mid, align 4, !tbaa !9
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i32 0, i32 0), i32 %78)
  %79 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 35), align 1, !tbaa !8
  %conv138 = zext i8 %79 to i32
  %cmp139 = icmp sge i32 %conv138, 14
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.144

land.lhs.true.141:                                ; preds = %if.then.137
  %80 = load volatile i32, i32* @IntSig, align 4, !tbaa !9
  %tobool142 = icmp ne i32 %80, 0
  br i1 %tobool142, label %if.end.144, label %if.then.143

if.then.143:                                      ; preds = %land.lhs.true.141
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %land.lhs.true.141, %if.then.137
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.145:                                       ; preds = %lor.lhs.false.134
  %81 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 35), align 1, !tbaa !8
  %conv146 = zext i8 %81 to i32
  %cmp147 = icmp sge i32 %conv146, 14
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.152

land.lhs.true.149:                                ; preds = %if.end.145
  %82 = load volatile i32, i32* @IntSig, align 4, !tbaa !9
  %tobool150 = icmp ne i32 %82, 0
  br i1 %tobool150, label %if.end.152, label %if.then.151

if.then.151:                                      ; preds = %land.lhs.true.149
  %83 = load i32, i32* %mid, align 4, !tbaa !9
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %83)
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %land.lhs.true.149, %if.end.145
  %84 = load i32, i32* %mid, align 4, !tbaa !9
  store i32 %84, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.152, %if.end.144, %if.end.43, %if.end.24
  %85 = bitcast [26 x i8]* %mbuf to i8*
  call void @llvm.lifetime.end(i64 26, i8* %85) #1
  %86 = bitcast i8** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i32* %mid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = load i32, i32* %retval
  ret i32 %88
}

declare void @syserr(i8*, ...) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind uwtable
define i32 @wordinclass(i8* %str, i32 %cl) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %cl.addr = alloca i32, align 4
  %s = alloca %struct.symtab*, align 8
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %cl, i32* %cl.addr, align 4, !tbaa !9
  %0 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call %struct.symtab* @stab(i8* %1, i32 1, i32 0)
  store %struct.symtab* %call, %struct.symtab** %s, align 8, !tbaa !1
  %2 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp = icmp ne %struct.symtab* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %cl.addr, align 4, !tbaa !9
  %and = and i32 %3, 255
  %conv = trunc i32 %and to i8
  %conv1 = zext i8 %conv to i64
  %div = udiv i64 %conv1, 32
  %and2 = and i64 %div, 7
  %4 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %4, i32 0, i32 3
  %sv_class = bitcast %union.anon* %s_value to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %sv_class, i32 0, i64 %and2
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !9
  %6 = load i32, i32* %cl.addr, align 4, !tbaa !9
  %and3 = and i32 %6, 255
  %conv4 = trunc i32 %and3 to i8
  %conv5 = zext i8 %conv4 to i64
  %rem = urem i64 %conv5, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and6 = and i32 %5, %shl
  %tobool = icmp ne i32 %and6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  %8 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i32 %land.ext
}

declare i64 @sm_strlcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !3, i64 0}
!6 = !{!"metamac", !3, i64 0, !3, i64 1}
!7 = !{!6, !3, i64 1}
!8 = !{!3, !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !3, i64 0}
!11 = !{!12, !2, i64 0}
!12 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!16, !2, i64 2576}
!16 = !{!"envelope", !2, i64 0, !14, i64 8, !14, i64 16, !2, i64 24, !17, i64 32, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !14, i64 256, !2, i64 264, !14, i64 272, !10, i64 280, !18, i64 284, !18, i64 286, !18, i64 288, !18, i64 290, !18, i64 292, !18, i64 294, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !10, i64 368, !10, i64 372, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !3, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !14, i64 456, !10, i64 464, !14, i64 472, !14, i64 480, !12, i64 488, !2, i64 2576, !2, i64 2584, !19, i64 2592, !14, i64 2624, !10, i64 2632, !2, i64 2640, !10, i64 2648}
!17 = !{!"address", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !14, i64 40, !10, i64 48, !10, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !14, i64 144, !2, i64 152, !18, i64 160, !2, i64 168, !10, i64 176, !10, i64 180, !2, i64 184}
!18 = !{!"short", !3, i64 0}
!19 = !{!"sm_timers", !20, i64 0}
!20 = !{!"_timer", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!21 = !{!16, !2, i64 312}
!22 = !{!18, !18, i64 0}
!23 = !{!24, !2, i64 0}
!24 = !{!"symtab", !2, i64 0, !18, i64 8, !2, i64 16, !3, i64 24}
