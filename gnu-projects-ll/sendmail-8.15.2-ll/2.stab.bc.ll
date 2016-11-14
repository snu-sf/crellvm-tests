; ModuleID = '2.stab.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.envelope = type { %struct.header*, i64, i64, i8*, %struct.address, i8*, i8**, %struct.address*, %struct.address*, i64, i8*, i64, i32, i16, i16, i16, i16, i16, i16, i32 (%struct.mailer_con_info*, %struct.header*, %struct.envelope*, i32)*, i32 (%struct.mailer_con_info*, %struct.envelope*, i8*)*, %struct.envelope*, %struct.envelope*, i8*, %struct.sm_file*, i8*, i32, i32, i32, i32, i32, i32, %struct.sm_file*, %struct.sm_file*, i8*, i8*, i8*, i8, i8*, i8*, i8*, i8*, i64, i32, i64, i64, %struct.MACROS_T, %struct.mailer_con_info*, i8*, %struct.sm_timers, i64, i32, %struct.SM_RPOOL_T*, i32 }
%struct.header = type { i8*, i8*, %struct.header*, i8, i64, [8 x i32] }
%struct.sm_timers = type { %struct._timer }
%struct._timer = type { i64, i64, i64, i64 }
%struct.hostsig_t = type { i8*, i64 }
%struct._namecanon = type { i16, i16, i16, i16, i8*, i64 }

@tTdvect = external global [100 x i8], align 16
@IntSig = external global i32, align 4
@.str = private unnamed_addr constant [13 x i8] c"STAB: %s %d \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"(hfunc=%d) \00", align 1
@SymTab = internal global [2003 x %struct.symtab*] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [11 x i8] c"not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"type %d val %lx %lx %lx %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"stab: unknown symbol type %d\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"size of stab entry: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"stab.c\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"stabapply: trying %d/%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"$%s%s\0A\00", align 1
@dumpstab.prevt = internal global [18 x i32] zeroinitializer, align 16
@dumpstab.prev = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"stab: total=%d (%d)\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"stab: type[%2d]=%2d (%d)\00", align 1

; Function Attrs: nounwind uwtable
define %struct.symtab* @stab(i8* %name, i32 %type, i32 %op) #0 {
entry:
  %retval = alloca %struct.symtab*, align 8
  %name.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %s = alloca %struct.symtab*, align 8
  %ps = alloca %struct.symtab**, align 8
  %hfunc = alloca i32, align 4
  %p = alloca i8*, align 8
  %len = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp43 = alloca i32, align 4
  %lp = alloca i64*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !5
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  %0 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.symtab*** %ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %hfunc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 36), align 1, !tbaa !7
  %conv = zext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 5
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %8 = load i32, i32* %type.addr, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i32, i32* %type.addr, align 4, !tbaa !5
  store i32 %9, i32* %hfunc, align 4, !tbaa !5
  %10 = load i8*, i8** %name.addr, align 8, !tbaa !1
  store i8* %10, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i8*, i8** %p, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !7
  %conv2 = sext i8 %12 to i32
  %cmp3 = icmp ne i32 %conv2, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %hfunc, align 4, !tbaa !5
  %shl = shl i32 %13, 1
  %14 = load i8*, i8** %p, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !7
  %conv5 = sext i8 %15 to i32
  %and = and i32 %conv5, -128
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %land.lhs.true.8, label %cond.false

land.lhs.true.8:                                  ; preds = %for.body
  %16 = load i8*, i8** %p, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !7
  %conv9 = sext i8 %17 to i32
  %idxprom = sext i32 %conv9 to i64
  %call = call i16** @__ctype_b_loc() #5
  %18 = load i16*, i16** %call, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 %idxprom
  %19 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %conv10 = zext i16 %19 to i32
  %and11 = and i32 %conv10, 256
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.8
  %20 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i8*, i8** %p, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !7
  %conv13 = sext i8 %22 to i32
  %idxprom14 = sext i32 %conv13 to i64
  %call15 = call i32** @__ctype_tolower_loc() #5
  %23 = load i32*, i32** %call15, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i32, i32* %23, i64 %idxprom14
  %24 = load i32, i32* %arrayidx16, align 4, !tbaa !5
  store i32 %24, i32* %__res, align 4, !tbaa !5
  %25 = load i32, i32* %__res, align 4, !tbaa !5
  store i32 %25, i32* %tmp, !tbaa !5
  %26 = bitcast i32* %__res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = load i32, i32* %tmp, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.8, %for.body
  %28 = load i8*, i8** %p, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !7
  %conv17 = sext i8 %29 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %conv17, %cond.false ]
  %and18 = and i32 %cond, 255
  %xor = xor i32 %shl, %and18
  %rem = srem i32 %xor, 2003
  store i32 %rem, i32* %hfunc, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %30 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 36), align 1, !tbaa !7
  %conv19 = zext i8 %31 to i32
  %cmp20 = icmp sge i32 %conv19, 9
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.25

land.lhs.true.22:                                 ; preds = %for.end
  %32 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool23 = icmp ne i32 %32, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.22
  %33 = load i32, i32* %hfunc, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %33)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %land.lhs.true.22, %for.end
  %34 = load i32, i32* %hfunc, align 4, !tbaa !5
  %idxprom26 = sext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds [2003 x %struct.symtab*], [2003 x %struct.symtab*]* @SymTab, i32 0, i64 %idxprom26
  store %struct.symtab** %arrayidx27, %struct.symtab*** %ps, align 8, !tbaa !1
  %35 = load i32, i32* %type.addr, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %35, 9
  br i1 %cmp28, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.25
  %36 = load i32, i32* %type.addr, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %36, 10
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false
  %37 = load i32, i32* %type.addr, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %37, 8
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %lor.lhs.false.32, %lor.lhs.false, %if.end.25
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.35
  %38 = load %struct.symtab**, %struct.symtab*** %ps, align 8, !tbaa !1
  %39 = load %struct.symtab*, %struct.symtab** %38, align 8, !tbaa !1
  store %struct.symtab* %39, %struct.symtab** %s, align 8, !tbaa !1
  %cmp36 = icmp ne %struct.symtab* %39, null
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %40 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_symtype = getelementptr inbounds %struct.symtab, %struct.symtab* %40, i32 0, i32 1
  %41 = load i16, i16* %s_symtype, align 2, !tbaa !10
  %conv38 = sext i16 %41 to i32
  %42 = load i32, i32* %type.addr, align 4, !tbaa !5
  %cmp39 = icmp ne i32 %conv38, %42
  br i1 %cmp39, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %43 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %46 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_name = getelementptr inbounds %struct.symtab, %struct.symtab* %46, i32 0, i32 0
  %47 = load i8*, i8** %s_name, align 8, !tbaa !12
  %call44 = call i32 @strcmp(i8* %45, i8* %47) #1
  store i32 %call44, i32* %tmp43, !tbaa !5
  %48 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = load i32, i32* %tmp43, !tbaa !5
  %tobool45 = icmp ne i32 %50, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %51 = phi i1 [ true, %land.rhs ], [ %tobool45, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %52 = phi i1 [ false, %while.cond ], [ %51, %lor.end ]
  br i1 %52, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %53 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_next = getelementptr inbounds %struct.symtab, %struct.symtab* %53, i32 0, i32 2
  store %struct.symtab** %s_next, %struct.symtab*** %ps, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.63

if.else:                                          ; preds = %lor.lhs.false.32
  br label %while.cond.46

while.cond.46:                                    ; preds = %while.body.60, %if.else
  %54 = load %struct.symtab**, %struct.symtab*** %ps, align 8, !tbaa !1
  %55 = load %struct.symtab*, %struct.symtab** %54, align 8, !tbaa !1
  store %struct.symtab* %55, %struct.symtab** %s, align 8, !tbaa !1
  %cmp47 = icmp ne %struct.symtab* %55, null
  br i1 %cmp47, label %land.rhs.49, label %land.end.59

land.rhs.49:                                      ; preds = %while.cond.46
  %56 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_symtype50 = getelementptr inbounds %struct.symtab, %struct.symtab* %56, i32 0, i32 1
  %57 = load i16, i16* %s_symtype50, align 2, !tbaa !10
  %conv51 = sext i16 %57 to i32
  %58 = load i32, i32* %type.addr, align 4, !tbaa !5
  %cmp52 = icmp ne i32 %conv51, %58
  br i1 %cmp52, label %lor.end.58, label %lor.rhs.54

lor.rhs.54:                                       ; preds = %land.rhs.49
  %59 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %60 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_name55 = getelementptr inbounds %struct.symtab, %struct.symtab* %60, i32 0, i32 0
  %61 = load i8*, i8** %s_name55, align 8, !tbaa !12
  %call56 = call i32 @sm_strcasecmp(i8* %59, i8* %61)
  %tobool57 = icmp ne i32 %call56, 0
  br label %lor.end.58

lor.end.58:                                       ; preds = %lor.rhs.54, %land.rhs.49
  %62 = phi i1 [ true, %land.rhs.49 ], [ %tobool57, %lor.rhs.54 ]
  br label %land.end.59

land.end.59:                                      ; preds = %lor.end.58, %while.cond.46
  %63 = phi i1 [ false, %while.cond.46 ], [ %62, %lor.end.58 ]
  br i1 %63, label %while.body.60, label %while.end.62

while.body.60:                                    ; preds = %land.end.59
  %64 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_next61 = getelementptr inbounds %struct.symtab, %struct.symtab* %64, i32 0, i32 2
  store %struct.symtab** %s_next61, %struct.symtab*** %ps, align 8, !tbaa !1
  br label %while.cond.46

while.end.62:                                     ; preds = %land.end.59
  br label %if.end.63

if.end.63:                                        ; preds = %while.end.62, %while.end
  %65 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp64 = icmp ne %struct.symtab* %65, null
  br i1 %cmp64, label %if.then.69, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.end.63
  %66 = load i32, i32* %op.addr, align 4, !tbaa !5
  %cmp67 = icmp eq i32 %66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.89

if.then.69:                                       ; preds = %lor.lhs.false.66, %if.end.63
  %67 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 36), align 1, !tbaa !7
  %conv70 = zext i8 %67 to i32
  %cmp71 = icmp sge i32 %conv70, 5
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.88

land.lhs.true.73:                                 ; preds = %if.then.69
  %68 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool74 = icmp ne i32 %68, 0
  br i1 %tobool74, label %if.end.88, label %if.then.75

if.then.75:                                       ; preds = %land.lhs.true.73
  %69 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp76 = icmp eq %struct.symtab* %69, null
  br i1 %cmp76, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %if.then.75
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.87

if.else.79:                                       ; preds = %if.then.75
  %70 = bitcast i64** %lp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  %71 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %71, i32 0, i32 3
  %sv_class = bitcast %union.anon* %s_value to [8 x i32]*
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %sv_class, i32 0, i32 0
  %72 = bitcast i32* %arraydecay to i64*
  store i64* %72, i64** %lp, align 8, !tbaa !1
  %73 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_symtype81 = getelementptr inbounds %struct.symtab, %struct.symtab* %73, i32 0, i32 1
  %74 = load i16, i16* %s_symtype81, align 2, !tbaa !10
  %conv82 = sext i16 %74 to i32
  %75 = load i64*, i64** %lp, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i64, i64* %75, i64 0
  %76 = load i64, i64* %arrayidx83, align 8, !tbaa !13
  %77 = load i64*, i64** %lp, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i64, i64* %77, i64 1
  %78 = load i64, i64* %arrayidx84, align 8, !tbaa !13
  %79 = load i64*, i64** %lp, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i64, i64* %79, i64 2
  %80 = load i64, i64* %arrayidx85, align 8, !tbaa !13
  %81 = load i64*, i64** %lp, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i64, i64* %81, i64 3
  %82 = load i64, i64* %arrayidx86, align 8, !tbaa !13
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i32 %conv82, i64 %76, i64 %78, i64 %80, i64 %82)
  %83 = bitcast i64** %lp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.79, %if.then.78
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %land.lhs.true.73, %if.then.69
  %84 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  store %struct.symtab* %84, %struct.symtab** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.89:                                        ; preds = %lor.lhs.false.66
  %85 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 36), align 1, !tbaa !7
  %conv90 = zext i8 %85 to i32
  %cmp91 = icmp sge i32 %conv90, 5
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.96

land.lhs.true.93:                                 ; preds = %if.end.89
  %86 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool94 = icmp ne i32 %86, 0
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %land.lhs.true.93
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %land.lhs.true.93, %if.end.89
  %87 = load i32, i32* %type.addr, align 4, !tbaa !5
  switch i32 %87, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.97
    i32 4, label %sw.bb.98
    i32 5, label %sw.bb.99
    i32 6, label %sw.bb.100
    i32 7, label %sw.bb.101
    i32 8, label %sw.bb.102
    i32 9, label %sw.bb.103
    i32 10, label %sw.bb.104
    i32 12, label %sw.bb.105
    i32 11, label %sw.bb.106
    i32 14, label %sw.bb.107
    i32 15, label %sw.bb.108
  ]

sw.bb:                                            ; preds = %if.end.96
  store i32 32, i32* %len, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.97:                                         ; preds = %if.end.96
  store i32 8, i32* %len, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.98:                                         ; preds = %if.end.96
  store i32 8, i32* %len, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.99:                                         ; preds = %if.end.96
  store i32 64, i32* %len, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.100:                                        ; preds = %if.end.96
  store i32 256, i32* %len, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.101:                                        ; preds = %if.end.96
  store i32 16, i32* %len, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.end.96
  store i32 24, i32* %len, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.103:                                        ; preds = %if.end.96
  store i32 4, i32* %len, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.104:                                        ; preds = %if.end.96
  store i32 4, i32* %len, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.105:                                        ; preds = %if.end.96
  store i32 24, i32* %len, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.106:                                        ; preds = %if.end.96
  store i32 96, i32* %len, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.107:                                        ; preds = %if.end.96
  store i32 8, i32* %len, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.108:                                        ; preds = %if.end.96
  store i32 8, i32* %len, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.96
  %88 = load i32, i32* %type.addr, align 4, !tbaa !5
  %cmp109 = icmp sge i32 %88, 17
  br i1 %cmp109, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %sw.default
  store i32 2256, i32* %len, align 4, !tbaa !5
  br label %if.end.113

if.else.112:                                      ; preds = %sw.default
  %89 = load i32, i32* %type.addr, align 4, !tbaa !5
  call void (i8*, ...) @syserr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i32 %89)
  store i32 2256, i32* %len, align 4, !tbaa !5
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.112, %if.then.111
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.113, %sw.bb.108, %sw.bb.107, %sw.bb.106, %sw.bb.105, %sw.bb.104, %sw.bb.103, %sw.bb.102, %sw.bb.101, %sw.bb.100, %sw.bb.99, %sw.bb.98, %sw.bb.97, %sw.bb
  %90 = load i32, i32* %len, align 4, !tbaa !5
  %conv114 = sext i32 %90 to i64
  %add = add i64 %conv114, 24
  %conv115 = trunc i64 %add to i32
  store i32 %conv115, i32* %len, align 4, !tbaa !5
  %91 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 36), align 1, !tbaa !7
  %conv116 = zext i8 %91 to i32
  %cmp117 = icmp sge i32 %conv116, 15
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.122

land.lhs.true.119:                                ; preds = %sw.epilog
  %92 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool120 = icmp ne i32 %92, 0
  br i1 %tobool120, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %land.lhs.true.119
  %93 = load i32, i32* %len, align 4, !tbaa !5
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i32 %93)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %land.lhs.true.119, %sw.epilog
  %94 = load i32, i32* %len, align 4, !tbaa !5
  %conv123 = sext i32 %94 to i64
  %call124 = call i8* @sm_malloc_tagged_x(i64 %conv123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 202, i32 0)
  %95 = bitcast i8* %call124 to %struct.symtab*
  store %struct.symtab* %95, %struct.symtab** %s, align 8, !tbaa !1
  %96 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %97 = bitcast %struct.symtab* %96 to i8*
  %98 = load i32, i32* %len, align 4, !tbaa !5
  %conv125 = sext i32 %98 to i64
  call void @llvm.memset.p0i8.i64(i8* %97, i8 0, i64 %conv125, i32 1, i1 false)
  %99 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call126 = call i8* @sm_pstrdup_x(i8* %99)
  %100 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_name127 = getelementptr inbounds %struct.symtab, %struct.symtab* %100, i32 0, i32 0
  store i8* %call126, i8** %s_name127, align 8, !tbaa !12
  %101 = load i32, i32* %type.addr, align 4, !tbaa !5
  %conv128 = trunc i32 %101 to i16
  %102 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_symtype129 = getelementptr inbounds %struct.symtab, %struct.symtab* %102, i32 0, i32 1
  store i16 %conv128, i16* %s_symtype129, align 2, !tbaa !10
  %103 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %104 = load %struct.symtab**, %struct.symtab*** %ps, align 8, !tbaa !1
  store %struct.symtab* %103, %struct.symtab** %104, align 8, !tbaa !1
  %105 = load i32, i32* %type.addr, align 4, !tbaa !5
  %cmp130 = icmp eq i32 %105, 10
  br i1 %cmp130, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %if.end.122
  %106 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value133 = getelementptr inbounds %struct.symtab, %struct.symtab* %106, i32 0, i32 3
  %sv_ruleset = bitcast %union.anon* %s_value133 to i32*
  store i32 -1, i32* %sv_ruleset, align 4, !tbaa !5
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.132, %if.end.122
  %107 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  store %struct.symtab* %107, %struct.symtab** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.134, %if.end.88
  %108 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast i32* %hfunc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast %struct.symtab*** %ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = load %struct.symtab*, %struct.symtab** %retval
  ret %struct.symtab* %113
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @sm_dprintf(i8*, ...) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare i32 @sm_strcasecmp(i8*, i8*) #2

declare void @syserr(i8*, ...) #2

declare i8* @sm_malloc_tagged_x(i64, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i8* @sm_pstrdup_x(i8*) #2

; Function Attrs: nounwind uwtable
define void @stabapply(void (%struct.symtab*, i32)* %func, i32 %arg) #0 {
entry:
  %func.addr = alloca void (%struct.symtab*, i32)*, align 8
  %arg.addr = alloca i32, align 4
  %shead = alloca %struct.symtab**, align 8
  %s = alloca %struct.symtab*, align 8
  store void (%struct.symtab*, i32)* %func, void (%struct.symtab*, i32)** %func.addr, align 8, !tbaa !1
  store i32 %arg, i32* %arg.addr, align 4, !tbaa !5
  %0 = bitcast %struct.symtab*** %shead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.symtab** getelementptr inbounds ([2003 x %struct.symtab*], [2003 x %struct.symtab*]* @SymTab, i32 0, i32 0), %struct.symtab*** %shead, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %2 = load %struct.symtab**, %struct.symtab*** %shead, align 8, !tbaa !1
  %cmp = icmp ult %struct.symtab** %2, getelementptr inbounds ([2003 x %struct.symtab*], [2003 x %struct.symtab*]* @SymTab, i64 1, i64 0)
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  %3 = load %struct.symtab**, %struct.symtab*** %shead, align 8, !tbaa !1
  %4 = load %struct.symtab*, %struct.symtab** %3, align 8, !tbaa !1
  store %struct.symtab* %4, %struct.symtab** %s, align 8, !tbaa !1
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.symtab* %5, null
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @tTdvect, i32 0, i64 36), align 1, !tbaa !7
  %conv = zext i8 %6 to i32
  %cmp4 = icmp sge i32 %conv, 90
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.3
  %7 = load volatile i32, i32* @IntSig, align 4, !tbaa !5
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_symtype = getelementptr inbounds %struct.symtab, %struct.symtab* %8, i32 0, i32 1
  %9 = load i16, i16* %s_symtype, align 2, !tbaa !10
  %conv6 = sext i16 %9 to i32
  %10 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_name = getelementptr inbounds %struct.symtab, %struct.symtab* %10, i32 0, i32 0
  %11 = load i8*, i8** %s_name, align 8, !tbaa !12
  call void (i8*, ...) @sm_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i32 %conv6, i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.3
  %12 = load void (%struct.symtab*, i32)*, void (%struct.symtab*, i32)** %func.addr, align 8, !tbaa !1
  %13 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %14 = load i32, i32* %arg.addr, align 4, !tbaa !5
  call void %12(%struct.symtab* %13, i32 %14)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_next = getelementptr inbounds %struct.symtab, %struct.symtab* %15, i32 0, i32 2
  %16 = load %struct.symtab*, %struct.symtab** %s_next, align 8, !tbaa !15
  store %struct.symtab* %16, %struct.symtab** %s, align 8, !tbaa !1
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %17 = load %struct.symtab**, %struct.symtab*** %shead, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.symtab*, %struct.symtab** %17, i32 1
  store %struct.symtab** %incdec.ptr, %struct.symtab*** %shead, align 8, !tbaa !1
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  %18 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.symtab*** %shead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @queueup_macros(i32 %class, %struct.sm_file* %qfp, %struct.envelope* %e) #0 {
entry:
  %class.addr = alloca i32, align 4
  %qfp.addr = alloca %struct.sm_file*, align 8
  %e.addr = alloca %struct.envelope*, align 8
  %shead = alloca %struct.symtab**, align 8
  %s = alloca %struct.symtab*, align 8
  %cleanup.dest.slot = alloca i32
  %m = alloca i32, align 4
  %p = alloca i8*, align 8
  store i32 %class, i32* %class.addr, align 4, !tbaa !5
  store %struct.sm_file* %qfp, %struct.sm_file** %qfp.addr, align 8, !tbaa !1
  store %struct.envelope* %e, %struct.envelope** %e.addr, align 8, !tbaa !1
  %0 = bitcast %struct.symtab*** %shead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.envelope* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %class.addr, align 4, !tbaa !5
  %and = and i32 %3, 255
  store i32 %and, i32* %class.addr, align 4, !tbaa !5
  store %struct.symtab** getelementptr inbounds ([2003 x %struct.symtab*], [2003 x %struct.symtab*]* @SymTab, i32 0, i32 0), %struct.symtab*** %shead, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %if.end
  %4 = load %struct.symtab**, %struct.symtab*** %shead, align 8, !tbaa !1
  %cmp1 = icmp ult %struct.symtab** %4, getelementptr inbounds ([2003 x %struct.symtab*], [2003 x %struct.symtab*]* @SymTab, i64 1, i64 0)
  br i1 %cmp1, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %5 = load %struct.symtab**, %struct.symtab*** %shead, align 8, !tbaa !1
  %6 = load %struct.symtab*, %struct.symtab** %5, align 8, !tbaa !1
  store %struct.symtab* %6, %struct.symtab** %s, align 8, !tbaa !1
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.symtab* %7, null
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_symtype = getelementptr inbounds %struct.symtab, %struct.symtab* %10, i32 0, i32 1
  %11 = load i16, i16* %s_symtype, align 2, !tbaa !10
  %conv = sext i16 %11 to i32
  %cmp5 = icmp eq i32 %conv, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %for.body.4
  %12 = load i32, i32* %class.addr, align 4, !tbaa !5
  %and7 = and i32 %12, 255
  %conv8 = trunc i32 %and7 to i8
  %conv9 = zext i8 %conv8 to i64
  %div = udiv i64 %conv9, 32
  %and10 = and i64 %div, 7
  %13 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %13, i32 0, i32 3
  %sv_class = bitcast %union.anon* %s_value to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %sv_class, i32 0, i64 %and10
  %14 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %15 = load i32, i32* %class.addr, align 4, !tbaa !5
  %and11 = and i32 %15, 255
  %conv12 = trunc i32 %and11 to i8
  %conv13 = zext i8 %conv12 to i64
  %rem = urem i64 %conv13, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and14 = and i32 %14, %shl
  %tobool = icmp ne i32 %and14, 0
  br i1 %tobool, label %land.lhs.true.15, label %if.end.26

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %16 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_name = getelementptr inbounds %struct.symtab, %struct.symtab* %16, i32 0, i32 0
  %17 = load i8*, i8** %s_name, align 8, !tbaa !12
  %call = call i32 @macid_parse(i8* %17, i8** null)
  store i32 %call, i32* %m, align 4, !tbaa !5
  %cmp16 = icmp ne i32 %call, 0
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.26

land.lhs.true.18:                                 ; preds = %land.lhs.true.15
  %18 = load i32, i32* %m, align 4, !tbaa !5
  %19 = load %struct.envelope*, %struct.envelope** %e.addr, align 8, !tbaa !1
  %call19 = call i8* @macvalue(i32 %18, %struct.envelope* %19)
  store i8* %call19, i8** %p, align 8, !tbaa !1
  %cmp20 = icmp ne i8* %call19, null
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %land.lhs.true.18
  %20 = load %struct.sm_file*, %struct.sm_file** %qfp.addr, align 8, !tbaa !1
  %21 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_name23 = getelementptr inbounds %struct.symtab, %struct.symtab* %21, i32 0, i32 0
  %22 = load i8*, i8** %s_name23, align 8, !tbaa !12
  %23 = load i8*, i8** %p, align 8, !tbaa !1
  %call24 = call i8* @denlstring(i8* %23, i32 1, i32 0)
  %call25 = call i32 (%struct.sm_file*, i32, i8*, ...) @sm_io_fprintf(%struct.sm_file* %20, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* %22, i8* %call24)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %land.lhs.true.18, %land.lhs.true.15, %land.lhs.true, %for.body.4
  %24 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %26 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_next = getelementptr inbounds %struct.symtab, %struct.symtab* %26, i32 0, i32 2
  %27 = load %struct.symtab*, %struct.symtab** %s_next, align 8, !tbaa !15
  store %struct.symtab* %27, %struct.symtab** %s, align 8, !tbaa !1
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end
  %28 = load %struct.symtab**, %struct.symtab*** %shead, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.symtab*, %struct.symtab** %28, i32 1
  store %struct.symtab** %incdec.ptr, %struct.symtab*** %shead, align 8, !tbaa !1
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.28, %if.then
  %29 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.symtab*** %shead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
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

declare i32 @macid_parse(i8*, i8**) #2

declare i8* @macvalue(i32, %struct.envelope*) #2

declare i32 @sm_io_fprintf(%struct.sm_file*, i32, i8*, ...) #2

declare i8* @denlstring(i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @copy_class(i32 %src, i32 %dst) #0 {
entry:
  %src.addr = alloca i32, align 4
  %dst.addr = alloca i32, align 4
  %shead = alloca %struct.symtab**, align 8
  %s = alloca %struct.symtab*, align 8
  store i32 %src, i32* %src.addr, align 4, !tbaa !5
  store i32 %dst, i32* %dst.addr, align 4, !tbaa !5
  %0 = bitcast %struct.symtab*** %shead to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %src.addr, align 4, !tbaa !5
  %and = and i32 %2, 255
  store i32 %and, i32* %src.addr, align 4, !tbaa !5
  %3 = load i32, i32* %dst.addr, align 4, !tbaa !5
  %and1 = and i32 %3, 255
  store i32 %and1, i32* %dst.addr, align 4, !tbaa !5
  store %struct.symtab** getelementptr inbounds ([2003 x %struct.symtab*], [2003 x %struct.symtab*]* @SymTab, i32 0, i32 0), %struct.symtab*** %shead, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %entry
  %4 = load %struct.symtab**, %struct.symtab*** %shead, align 8, !tbaa !1
  %cmp = icmp ult %struct.symtab** %4, getelementptr inbounds ([2003 x %struct.symtab*], [2003 x %struct.symtab*]* @SymTab, i64 1, i64 0)
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %5 = load %struct.symtab**, %struct.symtab*** %shead, align 8, !tbaa !1
  %6 = load %struct.symtab*, %struct.symtab** %5, align 8, !tbaa !1
  store %struct.symtab* %6, %struct.symtab** %s, align 8, !tbaa !1
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.symtab* %7, null
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_symtype = getelementptr inbounds %struct.symtab, %struct.symtab* %8, i32 0, i32 1
  %9 = load i16, i16* %s_symtype, align 2, !tbaa !10
  %conv = sext i16 %9 to i32
  %cmp5 = icmp eq i32 %conv, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.4
  %10 = load i32, i32* %src.addr, align 4, !tbaa !5
  %conv7 = trunc i32 %10 to i8
  %conv8 = zext i8 %conv7 to i64
  %div = udiv i64 %conv8, 32
  %and9 = and i64 %div, 7
  %11 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %11, i32 0, i32 3
  %sv_class = bitcast %union.anon* %s_value to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %sv_class, i32 0, i64 %and9
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %13 = load i32, i32* %src.addr, align 4, !tbaa !5
  %conv10 = trunc i32 %13 to i8
  %conv11 = zext i8 %conv10 to i64
  %rem = urem i64 %conv11, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and12 = and i32 %12, %shl
  %tobool = icmp ne i32 %and12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, i32* %dst.addr, align 4, !tbaa !5
  %conv13 = trunc i32 %14 to i8
  %conv14 = zext i8 %conv13 to i64
  %rem15 = urem i64 %conv14, 32
  %sh_prom16 = trunc i64 %rem15 to i32
  %shl17 = shl i32 1, %sh_prom16
  %15 = load i32, i32* %dst.addr, align 4, !tbaa !5
  %conv18 = trunc i32 %15 to i8
  %conv19 = zext i8 %conv18 to i64
  %div20 = udiv i64 %conv19, 32
  %and21 = and i64 %div20, 7
  %16 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value22 = getelementptr inbounds %struct.symtab, %struct.symtab* %16, i32 0, i32 3
  %sv_class23 = bitcast %union.anon* %s_value22 to [8 x i32]*
  %arrayidx24 = getelementptr inbounds [8 x i32], [8 x i32]* %sv_class23, i32 0, i64 %and21
  %17 = load i32, i32* %arrayidx24, align 4, !tbaa !5
  %or = or i32 %17, %shl17
  store i32 %or, i32* %arrayidx24, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_next = getelementptr inbounds %struct.symtab, %struct.symtab* %18, i32 0, i32 2
  %19 = load %struct.symtab*, %struct.symtab** %s_next, align 8, !tbaa !15
  store %struct.symtab* %19, %struct.symtab** %s, align 8, !tbaa !1
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %20 = load %struct.symtab**, %struct.symtab*** %shead, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.symtab*, %struct.symtab** %20, i32 1
  store %struct.symtab** %incdec.ptr, %struct.symtab*** %shead, align 8, !tbaa !1
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %21 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.symtab*** %shead to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @rmexpstab() #0 {
entry:
  %i = alloca i32, align 4
  %s = alloca %struct.symtab*, align 8
  %p = alloca %struct.symtab*, align 8
  %f = alloca %struct.symtab*, align 8
  %now = alloca i64, align 8
  %o = alloca i8*, align 8
  %o20 = alloca i8*, align 8
  %o38 = alloca i8*, align 8
  %o50 = alloca i8*, align 8
  %o63 = alloca i8*, align 8
  %o91 = alloca i8*, align 8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.symtab** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.symtab** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %call = call i64 @curtime()
  store i64 %call, i64* %now, align 8, !tbaa !13
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 2003
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store %struct.symtab* null, %struct.symtab** %p, align 8, !tbaa !1
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [2003 x %struct.symtab*], [2003 x %struct.symtab*]* @SymTab, i32 0, i64 %idxprom
  %7 = load %struct.symtab*, %struct.symtab** %arrayidx, align 8, !tbaa !1
  store %struct.symtab* %7, %struct.symtab** %s, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.106, %next, %for.body
  %8 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.symtab* %8, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_symtype = getelementptr inbounds %struct.symtab, %struct.symtab* %9, i32 0, i32 1
  %10 = load i16, i16* %s_symtype, align 2, !tbaa !10
  %conv = sext i16 %10 to i32
  switch i32 %conv, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %while.body
  %11 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value = getelementptr inbounds %struct.symtab, %struct.symtab* %11, i32 0, i32 3
  %sv_hostsig = bitcast %union.anon* %s_value to %struct.hostsig_t*
  %hs_exp = getelementptr inbounds %struct.hostsig_t, %struct.hostsig_t* %sv_hostsig, i32 0, i32 1
  %12 = load i64, i64* %hs_exp, align 8, !tbaa !16
  %13 = load i64, i64* %now, align 8, !tbaa !13
  %cmp2 = icmp sge i64 %12, %13
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %next

if.end:                                           ; preds = %sw.bb
  br label %do.body

do.body:                                          ; preds = %if.end
  %14 = bitcast i8** %o to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value4 = getelementptr inbounds %struct.symtab, %struct.symtab* %15, i32 0, i32 3
  %sv_hostsig5 = bitcast %union.anon* %s_value4 to %struct.hostsig_t*
  %hs_sig = getelementptr inbounds %struct.hostsig_t, %struct.hostsig_t* %sv_hostsig5, i32 0, i32 0
  %16 = load i8*, i8** %hs_sig, align 8, !tbaa !18
  store i8* %16, i8** %o, align 8, !tbaa !1
  %17 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value6 = getelementptr inbounds %struct.symtab, %struct.symtab* %17, i32 0, i32 3
  %sv_hostsig7 = bitcast %union.anon* %s_value6 to %struct.hostsig_t*
  %hs_sig8 = getelementptr inbounds %struct.hostsig_t, %struct.hostsig_t* %sv_hostsig7, i32 0, i32 0
  store i8* null, i8** %hs_sig8, align 8, !tbaa !18
  %18 = load i8*, i8** %o, align 8, !tbaa !1
  %cmp9 = icmp ne i8* %18, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.body
  %19 = load i8*, i8** %o, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 375)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %do.body
  %20 = bitcast i8** %o to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.bb.13:                                         ; preds = %while.body
  %21 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value14 = getelementptr inbounds %struct.symtab, %struct.symtab* %21, i32 0, i32 3
  %sv_namecanon = bitcast %union.anon* %s_value14 to %struct._namecanon*
  %nc_exp = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon, i32 0, i32 5
  %22 = load i64, i64* %nc_exp, align 8, !tbaa !19
  %23 = load i64, i64* %now, align 8, !tbaa !13
  %cmp15 = icmp sge i64 %22, %23
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.bb.13
  br label %next

if.end.18:                                        ; preds = %sw.bb.13
  br label %do.body.19

do.body.19:                                       ; preds = %if.end.18
  %24 = bitcast i8** %o20 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value21 = getelementptr inbounds %struct.symtab, %struct.symtab* %25, i32 0, i32 3
  %sv_namecanon22 = bitcast %union.anon* %s_value21 to %struct._namecanon*
  %nc_cname = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon22, i32 0, i32 4
  %26 = load i8*, i8** %nc_cname, align 8, !tbaa !21
  store i8* %26, i8** %o20, align 8, !tbaa !1
  %27 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value23 = getelementptr inbounds %struct.symtab, %struct.symtab* %27, i32 0, i32 3
  %sv_namecanon24 = bitcast %union.anon* %s_value23 to %struct._namecanon*
  %nc_cname25 = getelementptr inbounds %struct._namecanon, %struct._namecanon* %sv_namecanon24, i32 0, i32 4
  store i8* null, i8** %nc_cname25, align 8, !tbaa !21
  %28 = load i8*, i8** %o20, align 8, !tbaa !1
  %cmp26 = icmp ne i8* %28, null
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.body.19
  %29 = load i8*, i8** %o20, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 381)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %do.body.19
  %30 = bitcast i8** %o20 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  br label %do.cond.30

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %31 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_symtype32 = getelementptr inbounds %struct.symtab, %struct.symtab* %31, i32 0, i32 1
  %32 = load i16, i16* %s_symtype32, align 2, !tbaa !10
  %conv33 = sext i16 %32 to i32
  %cmp34 = icmp sge i32 %conv33, 17
  br i1 %cmp34, label %if.then.36, label %if.end.89

if.then.36:                                       ; preds = %sw.default
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %33 = bitcast i8** %o38 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value39 = getelementptr inbounds %struct.symtab, %struct.symtab* %34, i32 0, i32 3
  %sv_mci = bitcast %union.anon* %s_value39 to %struct.mailer_con_info*
  %mci_status = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %sv_mci, i32 0, i32 13
  %35 = load i8*, i8** %mci_status, align 8, !tbaa !22
  store i8* %35, i8** %o38, align 8, !tbaa !1
  %36 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value40 = getelementptr inbounds %struct.symtab, %struct.symtab* %36, i32 0, i32 3
  %sv_mci41 = bitcast %union.anon* %s_value40 to %struct.mailer_con_info*
  %mci_status42 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %sv_mci41, i32 0, i32 13
  store i8* null, i8** %mci_status42, align 8, !tbaa !22
  %37 = load i8*, i8** %o38, align 8, !tbaa !1
  %cmp43 = icmp ne i8* %37, null
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %do.body.37
  %38 = load i8*, i8** %o38, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 388)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %do.body.37
  %39 = bitcast i8** %o38 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  br label %do.cond.47

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48

do.end.48:                                        ; preds = %do.cond.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %40 = bitcast i8** %o50 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value51 = getelementptr inbounds %struct.symtab, %struct.symtab* %41, i32 0, i32 3
  %sv_mci52 = bitcast %union.anon* %s_value51 to %struct.mailer_con_info*
  %mci_rstatus = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %sv_mci52, i32 0, i32 14
  %42 = load i8*, i8** %mci_rstatus, align 8, !tbaa !25
  store i8* %42, i8** %o50, align 8, !tbaa !1
  %43 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value53 = getelementptr inbounds %struct.symtab, %struct.symtab* %43, i32 0, i32 3
  %sv_mci54 = bitcast %union.anon* %s_value53 to %struct.mailer_con_info*
  %mci_rstatus55 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %sv_mci54, i32 0, i32 14
  store i8* null, i8** %mci_rstatus55, align 8, !tbaa !25
  %44 = load i8*, i8** %o50, align 8, !tbaa !1
  %cmp56 = icmp ne i8* %44, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %do.body.49
  %45 = load i8*, i8** %o50, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 389)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %do.body.49
  %46 = bitcast i8** %o50 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  br label %do.cond.60

do.cond.60:                                       ; preds = %if.end.59
  br label %do.end.61

do.end.61:                                        ; preds = %do.cond.60
  br label %do.body.62

do.body.62:                                       ; preds = %do.end.61
  %47 = bitcast i8** %o63 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value64 = getelementptr inbounds %struct.symtab, %struct.symtab* %48, i32 0, i32 3
  %sv_mci65 = bitcast %union.anon* %s_value64 to %struct.mailer_con_info*
  %mci_heloname = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %sv_mci65, i32 0, i32 17
  %49 = load i8*, i8** %mci_heloname, align 8, !tbaa !26
  store i8* %49, i8** %o63, align 8, !tbaa !1
  %50 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value66 = getelementptr inbounds %struct.symtab, %struct.symtab* %50, i32 0, i32 3
  %sv_mci67 = bitcast %union.anon* %s_value66 to %struct.mailer_con_info*
  %mci_heloname68 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %sv_mci67, i32 0, i32 17
  store i8* null, i8** %mci_heloname68, align 8, !tbaa !26
  %51 = load i8*, i8** %o63, align 8, !tbaa !1
  %cmp69 = icmp ne i8* %51, null
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %do.body.62
  %52 = load i8*, i8** %o63, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 390)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %do.body.62
  %53 = bitcast i8** %o63 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  br label %do.cond.73

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74

do.end.74:                                        ; preds = %do.cond.73
  %54 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value75 = getelementptr inbounds %struct.symtab, %struct.symtab* %54, i32 0, i32 3
  %sv_mci76 = bitcast %union.anon* %s_value75 to %struct.mailer_con_info*
  %mci_rpool = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %sv_mci76, i32 0, i32 21
  %55 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %mci_rpool, align 8, !tbaa !27
  %cmp77 = icmp ne %struct.SM_RPOOL_T* %55, null
  br i1 %cmp77, label %if.then.79, label %if.end.88

if.then.79:                                       ; preds = %do.end.74
  %56 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value80 = getelementptr inbounds %struct.symtab, %struct.symtab* %56, i32 0, i32 3
  %sv_mci81 = bitcast %union.anon* %s_value80 to %struct.mailer_con_info*
  %mci_rpool82 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %sv_mci81, i32 0, i32 21
  %57 = load %struct.SM_RPOOL_T*, %struct.SM_RPOOL_T** %mci_rpool82, align 8, !tbaa !27
  call void @sm_rpool_free(%struct.SM_RPOOL_T* %57)
  %58 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value83 = getelementptr inbounds %struct.symtab, %struct.symtab* %58, i32 0, i32 3
  %sv_mci84 = bitcast %union.anon* %s_value83 to %struct.mailer_con_info*
  %mci_macro = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %sv_mci84, i32 0, i32 24
  %mac_rpool = getelementptr inbounds %struct.MACROS_T, %struct.MACROS_T* %mci_macro, i32 0, i32 0
  store %struct.SM_RPOOL_T* null, %struct.SM_RPOOL_T** %mac_rpool, align 8, !tbaa !28
  %59 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_value85 = getelementptr inbounds %struct.symtab, %struct.symtab* %59, i32 0, i32 3
  %sv_mci86 = bitcast %union.anon* %s_value85 to %struct.mailer_con_info*
  %mci_rpool87 = getelementptr inbounds %struct.mailer_con_info, %struct.mailer_con_info* %sv_mci86, i32 0, i32 21
  store %struct.SM_RPOOL_T* null, %struct.SM_RPOOL_T** %mci_rpool87, align 8, !tbaa !27
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.79, %do.end.74
  br label %sw.epilog

if.end.89:                                        ; preds = %sw.default
  br label %next

next:                                             ; preds = %if.end.89, %if.then.17, %if.then
  %60 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  store %struct.symtab* %60, %struct.symtab** %p, align 8, !tbaa !1
  %61 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_next = getelementptr inbounds %struct.symtab, %struct.symtab* %61, i32 0, i32 2
  %62 = load %struct.symtab*, %struct.symtab** %s_next, align 8, !tbaa !15
  store %struct.symtab* %62, %struct.symtab** %s, align 8, !tbaa !1
  br label %while.cond

sw.epilog:                                        ; preds = %if.end.88, %do.end.31, %do.end
  br label %do.body.90

do.body.90:                                       ; preds = %sw.epilog
  %63 = bitcast i8** %o91 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_name = getelementptr inbounds %struct.symtab, %struct.symtab* %64, i32 0, i32 0
  %65 = load i8*, i8** %s_name, align 8, !tbaa !12
  store i8* %65, i8** %o91, align 8, !tbaa !1
  %66 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_name92 = getelementptr inbounds %struct.symtab, %struct.symtab* %66, i32 0, i32 0
  store i8* null, i8** %s_name92, align 8, !tbaa !12
  %67 = load i8*, i8** %o91, align 8, !tbaa !1
  %cmp93 = icmp ne i8* %67, null
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %do.body.90
  %68 = load i8*, i8** %o91, align 8, !tbaa !1
  call void @sm_free_tagged(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 415)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %do.body.90
  %69 = bitcast i8** %o91 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  br label %do.cond.97

do.cond.97:                                       ; preds = %if.end.96
  br label %do.end.98

do.end.98:                                        ; preds = %do.cond.97
  %70 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  store %struct.symtab* %70, %struct.symtab** %f, align 8, !tbaa !1
  %71 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_next99 = getelementptr inbounds %struct.symtab, %struct.symtab* %71, i32 0, i32 2
  %72 = load %struct.symtab*, %struct.symtab** %s_next99, align 8, !tbaa !15
  store %struct.symtab* %72, %struct.symtab** %s, align 8, !tbaa !1
  %73 = load %struct.symtab*, %struct.symtab** %f, align 8, !tbaa !1
  %74 = bitcast %struct.symtab* %73 to i8*
  call void @sm_free_tagged(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 418)
  %75 = load %struct.symtab*, %struct.symtab** %p, align 8, !tbaa !1
  %cmp100 = icmp eq %struct.symtab* %75, null
  br i1 %cmp100, label %if.then.102, label %if.else

if.then.102:                                      ; preds = %do.end.98
  %76 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom103 = sext i32 %77 to i64
  %arrayidx104 = getelementptr inbounds [2003 x %struct.symtab*], [2003 x %struct.symtab*]* @SymTab, i32 0, i64 %idxprom103
  store %struct.symtab* %76, %struct.symtab** %arrayidx104, align 8, !tbaa !1
  br label %if.end.106

if.else:                                          ; preds = %do.end.98
  %78 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %79 = load %struct.symtab*, %struct.symtab** %p, align 8, !tbaa !1
  %s_next105 = getelementptr inbounds %struct.symtab, %struct.symtab* %79, i32 0, i32 2
  store %struct.symtab* %78, %struct.symtab** %s_next105, align 8, !tbaa !15
  br label %if.end.106

if.end.106:                                       ; preds = %if.else, %if.then.102
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %80 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %81 = bitcast i64* %now to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast %struct.symtab** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast %struct.symtab** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  ret void
}

declare i64 @curtime() #2

declare void @sm_free_tagged(i8*, i8*, i32) #2

declare void @sm_rpool_free(%struct.SM_RPOOL_T*) #2

; Function Attrs: nounwind uwtable
define void @dumpstab() #0 {
entry:
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %total = alloca i32, align 4
  %types = alloca [18 x i32], align 16
  %s = alloca %struct.symtab*, align 8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %total to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast [18 x i32]* %types to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #1
  %4 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32 0, i32* %total, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [18 x i32], [18 x i32]* %types, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.13, %for.end
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %8, 2003
  br i1 %cmp2, label %for.body.3, label %for.end.15

for.body.3:                                       ; preds = %for.cond.1
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [2003 x %struct.symtab*], [2003 x %struct.symtab*]* @SymTab, i32 0, i64 %idxprom4
  %10 = load %struct.symtab*, %struct.symtab** %arrayidx5, align 8, !tbaa !1
  store %struct.symtab* %10, %struct.symtab** %s, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body.3
  %11 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %cmp6 = icmp ne %struct.symtab* %11, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %total, align 4, !tbaa !5
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, i32* %total, align 4, !tbaa !5
  %13 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_symtype = getelementptr inbounds %struct.symtab, %struct.symtab* %13, i32 0, i32 1
  %14 = load i16, i16* %s_symtype, align 2, !tbaa !10
  %conv = sext i16 %14 to i32
  store i32 %conv, i32* %t, align 4, !tbaa !5
  %15 = load i32, i32* %t, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %15, 17
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 17, i32* %t, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %16 = load i32, i32* %t, align 4, !tbaa !5
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [18 x i32], [18 x i32]* %types, i32 0, i64 %idxprom10
  %17 = load i32, i32* %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, i32* %arrayidx11, align 4, !tbaa !5
  %18 = load %struct.symtab*, %struct.symtab** %s, align 8, !tbaa !1
  %s_next = getelementptr inbounds %struct.symtab, %struct.symtab* %18, i32 0, i32 2
  %19 = load %struct.symtab*, %struct.symtab** %s_next, align 8, !tbaa !15
  store %struct.symtab* %19, %struct.symtab** %s, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.13

for.inc.13:                                       ; preds = %while.end
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc14 = add nsw i32 %20, 1
  store i32 %inc14, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.end.15:                                       ; preds = %for.cond.1
  %21 = load i32, i32* %total, align 4, !tbaa !5
  %22 = load i32, i32* %total, align 4, !tbaa !5
  %23 = load i32, i32* @dumpstab.prev, align 4, !tbaa !5
  %sub = sub nsw i32 %22, %23
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 %21, i32 %sub)
  %24 = load i32, i32* %total, align 4, !tbaa !5
  store i32 %24, i32* @dumpstab.prev, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.37, %for.end.15
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %25, 18
  br i1 %cmp17, label %for.body.19, label %for.end.39

for.body.19:                                      ; preds = %for.cond.16
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds [18 x i32], [18 x i32]* %types, i32 0, i64 %idxprom20
  %27 = load i32, i32* %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp ne i32 %27, 0
  br i1 %cmp22, label %if.then.24, label %if.end.32

if.then.24:                                       ; preds = %for.body.19
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds [18 x i32], [18 x i32]* %types, i32 0, i64 %idxprom25
  %30 = load i32, i32* %arrayidx26, align 4, !tbaa !5
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %31 to i64
  %arrayidx28 = getelementptr inbounds [18 x i32], [18 x i32]* %types, i32 0, i64 %idxprom27
  %32 = load i32, i32* %arrayidx28, align 4, !tbaa !5
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %33 to i64
  %arrayidx30 = getelementptr inbounds [18 x i32], [18 x i32]* @dumpstab.prevt, i32 0, i64 %idxprom29
  %34 = load i32, i32* %arrayidx30, align 4, !tbaa !5
  %sub31 = sub nsw i32 %32, %34
  call void (i32, i8*, i8*, ...) @sm_syslog(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i32 %28, i32 %30, i32 %sub31)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.24, %for.body.19
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %35 to i64
  %arrayidx34 = getelementptr inbounds [18 x i32], [18 x i32]* %types, i32 0, i64 %idxprom33
  %36 = load i32, i32* %arrayidx34, align 4, !tbaa !5
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %37 to i64
  %arrayidx36 = getelementptr inbounds [18 x i32], [18 x i32]* @dumpstab.prevt, i32 0, i64 %idxprom35
  store i32 %36, i32* %arrayidx36, align 4, !tbaa !5
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.32
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %inc38 = add nsw i32 %38, 1
  store i32 %inc38, i32* %i, align 4, !tbaa !5
  br label %for.cond.16

for.end.39:                                       ; preds = %for.cond.16
  %39 = bitcast %struct.symtab** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast [18 x i32]* %types to i8*
  call void @llvm.lifetime.end(i64 72, i8* %40) #1
  %41 = bitcast i32* %total to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  ret void
}

declare void @sm_syslog(i32, i8*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!11, !9, i64 8}
!11 = !{!"symtab", !2, i64 0, !9, i64 8, !2, i64 16, !3, i64 24}
!12 = !{!11, !2, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!11, !2, i64 16}
!16 = !{!17, !14, i64 8}
!17 = !{!"hostsig_t", !2, i64 0, !14, i64 8}
!18 = !{!17, !2, i64 0}
!19 = !{!20, !14, i64 16}
!20 = !{!"_namecanon", !9, i64 0, !9, i64 2, !9, i64 4, !9, i64 6, !2, i64 8, !14, i64 16}
!21 = !{!20, !2, i64 8}
!22 = !{!23, !2, i64 80}
!23 = !{!"mailer_con_info", !14, i64 0, !9, i64 8, !9, i64 10, !9, i64 12, !9, i64 14, !6, i64 16, !14, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !14, i64 96, !2, i64 104, !2, i64 112, !14, i64 120, !6, i64 128, !2, i64 136, !2, i64 144, !6, i64 152, !2, i64 160, !24, i64 168}
!24 = !{!"", !2, i64 0, !3, i64 8, !3, i64 40}
!25 = !{!23, !2, i64 88}
!26 = !{!23, !2, i64 112}
!27 = !{!23, !2, i64 144}
!28 = !{!23, !2, i64 168}
