; ModuleID = 'hv.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.sv = type { i8*, i32, i32 }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.interpreter = type { i8 }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.xpv = type { i8*, i64, i64 }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%struct._PerlIO = type opaque
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.xpvlv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i64, i64, %struct.sv*, i8 }
%struct.xpviv = type { i8*, i64, i64, i64 }
%struct.xpvnv = type { i8*, i64, i64, i64, double }
%struct.xpvmg = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv* }

@PL_hv_fetch_ent_mh = external global %struct.he*, align 8
@.str = private unnamed_addr constant [8 x i8] c"%ld/%ld\00", align 1
@PL_nomemok = external global i8, align 1
@PL_nice_chunk_size = external global i32, align 4
@PL_nice_chunk = external global i8*, align 8
@PL_sub_generation = external global i32, align 4
@PL_sv_placeholder = external global %struct.sv, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"Attempt to delete readonly key '%_' from a restricted hash\00", align 1
@PL_stashcache = external global %struct.hv*, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"Bad hash\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_Sv = external global %struct.sv*, align 8
@PL_he_root = external global %struct.he*, align 8
@PL_Xpv = external global %struct.xpv*, align 8
@PL_tainted = external global i8, align 1
@PL_tainting = external global i8, align 1
@PL_rehash_seed = external global i64, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"access disallowed key '%_' in\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Attempt to %s a restricted hash\00", align 1
@PL_strtab = external global %struct.hv*, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"delete readonly key '%_' from\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"delete disallowed key '%_' from\00", align 1
@PL_he_arenaroot = external global %struct.xpv*, align 8
@PL_curcop = external global %struct.cop*, align 8
@.str.7 = private unnamed_addr constant [50 x i8] c"Attempt to free non-existent shared string '%s'%s\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" (utf8)\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @Perl_free_tied_hv_pool() #0 {
entry:
  %ohe = alloca %struct.he*, align 8
  %he = alloca %struct.he*, align 8
  %0 = load %struct.he*, %struct.he** @PL_hv_fetch_ent_mh, align 8
  store %struct.he* %0, %struct.he** %he, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.he*, %struct.he** %he, align 8
  %tobool = icmp ne %struct.he* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.he*, %struct.he** %he, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %2, i32 0, i32 1
  %3 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %4 = bitcast %struct.hek* %3 to i8*
  call void @Perl_safesysfree(i8* %4)
  %5 = load %struct.he*, %struct.he** %he, align 8
  store %struct.he* %5, %struct.he** %ohe, align 8
  %6 = load %struct.he*, %struct.he** %he, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %6, i32 0, i32 0
  %7 = load %struct.he*, %struct.he** %hent_next, align 8
  store %struct.he* %7, %struct.he** %he, align 8
  %8 = load %struct.he*, %struct.he** %ohe, align 8
  call void @S_del_he(%struct.he* %8)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.he* null, %struct.he** @PL_hv_fetch_ent_mh, align 8
  ret void
}

declare void @Perl_safesysfree(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @S_del_he(%struct.he* %p) #0 {
entry:
  %p.addr = alloca %struct.he*, align 8
  store %struct.he* %p, %struct.he** %p.addr, align 8
  %0 = load %struct.he*, %struct.he** @PL_he_root, align 8
  %1 = load %struct.he*, %struct.he** %p.addr, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %1, i32 0, i32 0
  store %struct.he* %0, %struct.he** %hent_next, align 8
  %2 = load %struct.he*, %struct.he** %p.addr, align 8
  store %struct.he* %2, %struct.he** @PL_he_root, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.sv** @Perl_hv_store(%struct.hv* %hv, i8* %key, i32 %klen_i32, %struct.sv* %val, i32 %hash) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %key.addr = alloca i8*, align 8
  %klen_i32.addr = alloca i32, align 4
  %val.addr = alloca %struct.sv*, align 8
  %hash.addr = alloca i32, align 4
  %hek = alloca %struct.he*, align 8
  %klen = alloca i64, align 8
  %flags = alloca i32, align 4
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %klen_i32, i32* %klen_i32.addr, align 4
  store %struct.sv* %val, %struct.sv** %val.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load i32, i32* %klen_i32.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %klen_i32.addr, align 4
  %sub = sub nsw i32 0, %1
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %klen, align 8
  store i32 1, i32* %flags, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %klen_i32.addr, align 4
  %conv1 = sext i32 %2 to i64
  store i64 %conv1, i64* %klen, align 8
  store i32 0, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %4 = load i8*, i8** %key.addr, align 8
  %5 = load i64, i64* %klen, align 8
  %6 = load i32, i32* %flags, align 4
  %7 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %8 = load i32, i32* %hash.addr, align 4
  %call = call %struct.he* @S_hv_fetch_common(%struct.hv* %3, %struct.sv* null, i8* %4, i64 %5, i32 %6, i32 9, %struct.sv* %7, i32 %8)
  store %struct.he* %call, %struct.he** %hek, align 8
  %9 = load %struct.he*, %struct.he** %hek, align 8
  %tobool = icmp ne %struct.he* %9, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct.he*, %struct.he** %hek, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %10, i32 0, i32 2
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv** [ %hent_val, %cond.true ], [ null, %cond.false ]
  ret %struct.sv** %cond
}

; Function Attrs: nounwind uwtable
define internal %struct.he* @S_hv_fetch_common(%struct.hv* %hv, %struct.sv* %keysv, i8* %key, i64 %klen, i32 %flags, i32 %action, %struct.sv* %val, i32 %hash) #0 {
entry:
  %retval = alloca %struct.he*, align 8
  %hv.addr = alloca %struct.hv*, align 8
  %keysv.addr = alloca %struct.sv*, align 8
  %key.addr = alloca i8*, align 8
  %klen.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %val.addr = alloca %struct.sv*, align 8
  %hash.addr = alloca i32, align 4
  %xhv = alloca %struct.xpvhv*, align 8
  %n_links = alloca i32, align 4
  %entry1 = alloca %struct.he*, align 8
  %oentry = alloca %struct.he**, align 8
  %sv = alloca %struct.sv*, align 8
  %is_utf8 = alloca i8, align 1
  %masked_flags = alloca i32, align 4
  %k = alloca i8*, align 8
  %svret = alloca %struct.sv*, align 8
  %needs_copy = alloca i8, align 1
  %needs_store = alloca i8, align 1
  %save_taint = alloca i8, align 1
  %keysave = alloca i8*, align 8
  %s_PeRlHaSh_tmp = alloca i8*, align 8
  %s_PeRlHaSh = alloca i8*, align 8
  %i_PeRlHaSh = alloca i32, align 4
  %hash_PeRlHaSh = alloca i32, align 4
  %tmp = alloca i32, align 4
  %s_PeRlHaSh_tmp291 = alloca i8*, align 8
  %s_PeRlHaSh293 = alloca i8*, align 8
  %i_PeRlHaSh295 = alloca i32, align 4
  %hash_PeRlHaSh298 = alloca i32, align 4
  %tmp315 = alloca i32, align 4
  %new_hek = alloca %struct.hek*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store %struct.sv* %keysv, %struct.sv** %keysv.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %klen, i64* %klen.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  store %struct.sv* %val, %struct.sv** %val.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %tobool = icmp ne %struct.hv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.he* null, %struct.he** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %tobool2 = icmp ne %struct.sv* %1, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %2 = load i32, i32* %flags.addr, align 4
  %and = and i32 %2, 256
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %3 = load i8*, i8** %key.addr, align 8
  call void @Perl_safesysfree(i8* %3)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %4 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and7 = and i32 %5, 262144
  %cmp = icmp eq i32 %and7, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %6 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 1
  %9 = load i64, i64* %xpv_cur, align 8
  store i64 %9, i64* %klen.addr, align 8
  %10 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_any8 = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any8, align 8
  %12 = bitcast i8* %11 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %12, i32 0, i32 0
  %13 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %14 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %14, i64* %klen.addr, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %key.addr, align 8
  store i32 0, i32* %flags.addr, align 4
  %15 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags9, align 4
  %and10 = and i32 %16, 536870912
  %cmp11 = icmp ne i32 %and10, 0
  %conv = zext i1 %cmp11 to i32
  %conv12 = trunc i32 %conv to i8
  store i8 %conv12, i8* %is_utf8, align 1
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %flags.addr, align 4
  %and13 = and i32 %17, 1
  %tobool14 = icmp ne i32 %and13, 0
  %cond15 = select i1 %tobool14, i32 1, i32 0
  %conv16 = trunc i32 %cond15 to i8
  store i8 %conv16, i8* %is_utf8, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %cond.end
  %18 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any18 = getelementptr inbounds %struct.hv, %struct.hv* %18, i32 0, i32 0
  %19 = load %struct.xpvhv*, %struct.xpvhv** %sv_any18, align 8
  store %struct.xpvhv* %19, %struct.xpvhv** %xhv, align 8
  %20 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags19 = getelementptr inbounds %struct.hv, %struct.hv* %20, i32 0, i32 2
  %21 = load i32, i32* %sv_flags19, align 4
  %and20 = and i32 %21, 57344
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.204

if.then.22:                                       ; preds = %if.end.17
  %22 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags23 = getelementptr inbounds %struct.hv, %struct.hv* %22, i32 0, i32 2
  %23 = load i32, i32* %sv_flags23, align 4
  %and24 = and i32 %23, 32768
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %land.lhs.true, label %if.else.64

land.lhs.true:                                    ; preds = %if.then.22
  %24 = load i32, i32* %action.addr, align 4
  %and26 = and i32 %24, 3
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.else.64, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true
  %25 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %26 = bitcast %struct.hv* %25 to %struct.sv*
  %call29 = call %struct.magic* @Perl_mg_find(%struct.sv* %26, i32 80)
  %tobool30 = icmp ne %struct.magic* %call29, null
  br i1 %tobool30, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.28
  %27 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %28 = bitcast %struct.hv* %27 to %struct.sv*
  %sv_flags31 = getelementptr inbounds %struct.sv, %struct.sv* %28, i32 0, i32 2
  %29 = load i32, i32* %sv_flags31, align 4
  %and32 = and i32 %29, 8192
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.63

if.then.34:                                       ; preds = %lor.lhs.false, %if.then.28
  %call35 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call35, %struct.sv** %sv, align 8
  %30 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %tobool36 = icmp ne %struct.sv* %30, null
  br i1 %tobool36, label %if.else.43, label %if.then.37

if.then.37:                                       ; preds = %if.then.34
  %31 = load i8*, i8** %key.addr, align 8
  %32 = load i64, i64* %klen.addr, align 8
  %call38 = call %struct.sv* @Perl_newSVpvn(i8* %31, i64 %32)
  store %struct.sv* %call38, %struct.sv** %keysv.addr, align 8
  %33 = load i8, i8* %is_utf8, align 1
  %tobool39 = icmp ne i8 %33, 0
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.then.37
  %34 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_flags41 = getelementptr inbounds %struct.sv, %struct.sv* %34, i32 0, i32 2
  %35 = load i32, i32* %sv_flags41, align 4
  %or = or i32 %35, 536870912
  store i32 %or, i32* %sv_flags41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.then.37
  br label %if.end.45

if.else.43:                                       ; preds = %if.then.34
  %36 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %call44 = call %struct.sv* @Perl_newSVsv(%struct.sv* %36)
  store %struct.sv* %call44, %struct.sv** %keysv.addr, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.end.42
  %37 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %38 = bitcast %struct.hv* %37 to %struct.sv*
  %39 = load %struct.sv*, %struct.sv** %sv, align 8
  %40 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %41 = bitcast %struct.sv* %40 to i8*
  %call46 = call i32 @Perl_mg_copy(%struct.sv* %38, %struct.sv* %39, i8* %41, i32 -2)
  %42 = load %struct.he*, %struct.he** @PL_hv_fetch_ent_mh, align 8
  store %struct.he* %42, %struct.he** %entry1, align 8
  %43 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool47 = icmp ne %struct.he* %43, null
  br i1 %tobool47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.end.45
  %44 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %44, i32 0, i32 0
  %45 = load %struct.he*, %struct.he** %hent_next, align 8
  store %struct.he* %45, %struct.he** @PL_hv_fetch_ent_mh, align 8
  br label %if.end.52

if.else.49:                                       ; preds = %if.end.45
  %call50 = call %struct.he* @S_new_he()
  store %struct.he* %call50, %struct.he** %entry1, align 8
  %call51 = call i8* @Perl_safesysmalloc(i64 add (i64 ptrtoint (i8* getelementptr inbounds (%struct.hek, %struct.hek* null, i32 0, i32 2, i64 0) to i64), i64 8))
  store i8* %call51, i8** %k, align 8
  %46 = load i8*, i8** %k, align 8
  %47 = bitcast i8* %46 to %struct.hek*
  %48 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %48, i32 0, i32 1
  store %struct.hek* %47, %struct.hek** %hent_hek, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  %49 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next53 = getelementptr inbounds %struct.he, %struct.he* %49, i32 0, i32 0
  store %struct.he* null, %struct.he** %hent_next53, align 8
  %50 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek54 = getelementptr inbounds %struct.he, %struct.he* %50, i32 0, i32 1
  %51 = load %struct.hek*, %struct.hek** %hent_hek54, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %51, i32 0, i32 1
  store i32 -2, i32* %hek_len, align 4
  %52 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %53 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek55 = getelementptr inbounds %struct.he, %struct.he* %53, i32 0, i32 1
  %54 = load %struct.hek*, %struct.hek** %hent_hek55, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %54, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  %55 = bitcast i8* %arraydecay to %struct.sv**
  store %struct.sv* %52, %struct.sv** %55, align 8
  %56 = load %struct.sv*, %struct.sv** %sv, align 8
  %57 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %57, i32 0, i32 2
  store %struct.sv* %56, %struct.sv** %hent_val, align 8
  %58 = load %struct.sv*, %struct.sv** %sv, align 8
  %call56 = call signext i8 @Perl_sv_upgrade(%struct.sv* %58, i32 9)
  %59 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any57 = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 0, i32 0
  %60 = load i8*, i8** %sv_any57, align 8
  %61 = bitcast i8* %60 to %struct.xpvlv*
  %xlv_type = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %61, i32 0, i32 10
  store i8 84, i8* %xlv_type, align 1
  %62 = load %struct.he*, %struct.he** %entry1, align 8
  %63 = bitcast %struct.he* %62 to %struct.sv*
  %64 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_any58 = getelementptr inbounds %struct.sv, %struct.sv* %64, i32 0, i32 0
  %65 = load i8*, i8** %sv_any58, align 8
  %66 = bitcast i8* %65 to %struct.xpvlv*
  %xlv_targ = getelementptr inbounds %struct.xpvlv, %struct.xpvlv* %66, i32 0, i32 9
  store %struct.sv* %63, %struct.sv** %xlv_targ, align 8
  %67 = load i32, i32* %flags.addr, align 4
  %and59 = and i32 %67, 256
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.52
  %68 = load i8*, i8** %key.addr, align 8
  call void @Perl_safesysfree(i8* %68)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.end.52
  %69 = load %struct.he*, %struct.he** %entry1, align 8
  store %struct.he* %69, %struct.he** %retval
  br label %return

if.end.63:                                        ; preds = %lor.lhs.false
  br label %if.end.203

if.else.64:                                       ; preds = %land.lhs.true, %if.then.22
  %70 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags65 = getelementptr inbounds %struct.hv, %struct.hv* %70, i32 0, i32 2
  %71 = load i32, i32* %sv_flags65, align 4
  %and66 = and i32 %71, 32768
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true.68, label %if.else.154

land.lhs.true.68:                                 ; preds = %if.else.64
  %72 = load i32, i32* %action.addr, align 4
  %and69 = and i32 %72, 2
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then.71, label %if.else.154

if.then.71:                                       ; preds = %land.lhs.true.68
  %73 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %74 = bitcast %struct.hv* %73 to %struct.sv*
  %call72 = call %struct.magic* @Perl_mg_find(%struct.sv* %74, i32 80)
  %tobool73 = icmp ne %struct.magic* %call72, null
  br i1 %tobool73, label %if.then.78, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %if.then.71
  %75 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %76 = bitcast %struct.hv* %75 to %struct.sv*
  %sv_flags75 = getelementptr inbounds %struct.sv, %struct.sv* %76, i32 0, i32 2
  %77 = load i32, i32* %sv_flags75, align 4
  %and76 = and i32 %77, 8192
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.153

if.then.78:                                       ; preds = %lor.lhs.false.74, %if.then.71
  %call79 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call79, %struct.sv** %svret, align 8
  %call80 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call80, %struct.sv** %sv, align 8
  %78 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %tobool81 = icmp ne %struct.sv* %78, null
  br i1 %tobool81, label %if.then.85, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %if.then.78
  %79 = load i8, i8* %is_utf8, align 1
  %conv83 = sext i8 %79 to i32
  %tobool84 = icmp ne i32 %conv83, 0
  br i1 %tobool84, label %if.then.85, label %if.else.96

if.then.85:                                       ; preds = %lor.lhs.false.82, %if.then.78
  %80 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %tobool86 = icmp ne %struct.sv* %80, null
  br i1 %tobool86, label %if.else.91, label %if.then.87

if.then.87:                                       ; preds = %if.then.85
  %81 = load i8*, i8** %key.addr, align 8
  %82 = load i64, i64* %klen.addr, align 8
  %call88 = call %struct.sv* @Perl_newSVpvn(i8* %81, i64 %82)
  store %struct.sv* %call88, %struct.sv** %keysv.addr, align 8
  %83 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_flags89 = getelementptr inbounds %struct.sv, %struct.sv* %83, i32 0, i32 2
  %84 = load i32, i32* %sv_flags89, align 4
  %or90 = or i32 %84, 536870912
  store i32 %or90, i32* %sv_flags89, align 4
  br label %if.end.93

if.else.91:                                       ; preds = %if.then.85
  %85 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %call92 = call %struct.sv* @Perl_newSVsv(%struct.sv* %85)
  store %struct.sv* %call92, %struct.sv** %keysv.addr, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.91, %if.then.87
  %86 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %87 = bitcast %struct.hv* %86 to %struct.sv*
  %88 = load %struct.sv*, %struct.sv** %sv, align 8
  %89 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %call94 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %89)
  %90 = bitcast %struct.sv* %call94 to i8*
  %call95 = call i32 @Perl_mg_copy(%struct.sv* %87, %struct.sv* %88, i8* %90, i32 -2)
  br label %if.end.99

if.else.96:                                       ; preds = %lor.lhs.false.82
  %91 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %92 = bitcast %struct.hv* %91 to %struct.sv*
  %93 = load %struct.sv*, %struct.sv** %sv, align 8
  %94 = load i8*, i8** %key.addr, align 8
  %95 = load i64, i64* %klen.addr, align 8
  %conv97 = trunc i64 %95 to i32
  %call98 = call i32 @Perl_mg_copy(%struct.sv* %92, %struct.sv* %93, i8* %94, i32 %conv97)
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.end.93
  %96 = load i32, i32* %flags.addr, align 4
  %and100 = and i32 %96, 256
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.99
  %97 = load i8*, i8** %key.addr, align 8
  call void @Perl_safesysfree(i8* %97)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.99
  %98 = load %struct.sv*, %struct.sv** %svret, align 8
  %99 = load %struct.sv*, %struct.sv** %sv, align 8
  %call104 = call %struct.magic* @Perl_mg_find(%struct.sv* %99, i32 112)
  %call105 = call i32 @Perl_magic_existspack(%struct.sv* %98, %struct.magic* %call104)
  %100 = load %struct.sv*, %struct.sv** %svret, align 8
  %tobool106 = icmp ne %struct.sv* %100, null
  br i1 %tobool106, label %cond.false.108, label %cond.true.107

cond.true.107:                                    ; preds = %if.end.103
  br i1 false, label %cond.true.149, label %cond.false.150

cond.false.108:                                   ; preds = %if.end.103
  %101 = load %struct.sv*, %struct.sv** %svret, align 8
  %sv_flags109 = getelementptr inbounds %struct.sv, %struct.sv* %101, i32 0, i32 2
  %102 = load i32, i32* %sv_flags109, align 4
  %and110 = and i32 %102, 262144
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %cond.true.112, label %cond.false.129

cond.true.112:                                    ; preds = %cond.false.108
  %103 = load %struct.sv*, %struct.sv** %svret, align 8
  %sv_any113 = getelementptr inbounds %struct.sv, %struct.sv* %103, i32 0, i32 0
  %104 = load i8*, i8** %sv_any113, align 8
  %105 = bitcast i8* %104 to %struct.xpv*
  store %struct.xpv* %105, %struct.xpv** @PL_Xpv, align 8
  %tobool114 = icmp ne %struct.xpv* %105, null
  br i1 %tobool114, label %land.lhs.true.115, label %cond.false.128

land.lhs.true.115:                                ; preds = %cond.true.112
  %106 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur116 = getelementptr inbounds %struct.xpv, %struct.xpv* %106, i32 0, i32 1
  %107 = load i64, i64* %xpv_cur116, align 8
  %cmp117 = icmp ugt i64 %107, 1
  br i1 %cmp117, label %cond.true.127, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %land.lhs.true.115
  %108 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_cur120 = getelementptr inbounds %struct.xpv, %struct.xpv* %108, i32 0, i32 1
  %109 = load i64, i64* %xpv_cur120, align 8
  %tobool121 = icmp ne i64 %109, 0
  br i1 %tobool121, label %land.lhs.true.122, label %cond.false.128

land.lhs.true.122:                                ; preds = %lor.lhs.false.119
  %110 = load %struct.xpv*, %struct.xpv** @PL_Xpv, align 8
  %xpv_pv123 = getelementptr inbounds %struct.xpv, %struct.xpv* %110, i32 0, i32 0
  %111 = load i8*, i8** %xpv_pv123, align 8
  %112 = load i8, i8* %111, align 1
  %conv124 = sext i8 %112 to i32
  %cmp125 = icmp ne i32 %conv124, 48
  br i1 %cmp125, label %cond.true.127, label %cond.false.128

cond.true.127:                                    ; preds = %land.lhs.true.122, %land.lhs.true.115
  br i1 true, label %cond.true.149, label %cond.false.150

cond.false.128:                                   ; preds = %land.lhs.true.122, %lor.lhs.false.119, %cond.true.112
  br i1 false, label %cond.true.149, label %cond.false.150

cond.false.129:                                   ; preds = %cond.false.108
  %113 = load %struct.sv*, %struct.sv** %svret, align 8
  %sv_flags130 = getelementptr inbounds %struct.sv, %struct.sv* %113, i32 0, i32 2
  %114 = load i32, i32* %sv_flags130, align 4
  %and131 = and i32 %114, 65536
  %tobool132 = icmp ne i32 %and131, 0
  br i1 %tobool132, label %cond.true.133, label %cond.false.137

cond.true.133:                                    ; preds = %cond.false.129
  %115 = load %struct.sv*, %struct.sv** %svret, align 8
  %sv_any134 = getelementptr inbounds %struct.sv, %struct.sv* %115, i32 0, i32 0
  %116 = load i8*, i8** %sv_any134, align 8
  %117 = bitcast i8* %116 to %struct.xpviv*
  %xiv_iv = getelementptr inbounds %struct.xpviv, %struct.xpviv* %117, i32 0, i32 3
  %118 = load i64, i64* %xiv_iv, align 8
  %cmp135 = icmp ne i64 %118, 0
  br i1 %cmp135, label %cond.true.149, label %cond.false.150

cond.false.137:                                   ; preds = %cond.false.129
  %119 = load %struct.sv*, %struct.sv** %svret, align 8
  %sv_flags138 = getelementptr inbounds %struct.sv, %struct.sv* %119, i32 0, i32 2
  %120 = load i32, i32* %sv_flags138, align 4
  %and139 = and i32 %120, 131072
  %tobool140 = icmp ne i32 %and139, 0
  br i1 %tobool140, label %cond.true.141, label %cond.false.145

cond.true.141:                                    ; preds = %cond.false.137
  %121 = load %struct.sv*, %struct.sv** %svret, align 8
  %sv_any142 = getelementptr inbounds %struct.sv, %struct.sv* %121, i32 0, i32 0
  %122 = load i8*, i8** %sv_any142, align 8
  %123 = bitcast i8* %122 to %struct.xpvnv*
  %xnv_nv = getelementptr inbounds %struct.xpvnv, %struct.xpvnv* %123, i32 0, i32 4
  %124 = load double, double* %xnv_nv, align 8
  %cmp143 = fcmp une double %124, 0.000000e+00
  br i1 %cmp143, label %cond.true.149, label %cond.false.150

cond.false.145:                                   ; preds = %cond.false.137
  %125 = load %struct.sv*, %struct.sv** %svret, align 8
  %call146 = call signext i8 @Perl_sv_2bool(%struct.sv* %125)
  %conv147 = sext i8 %call146 to i32
  %tobool148 = icmp ne i32 %conv147, 0
  br i1 %tobool148, label %cond.true.149, label %cond.false.150

cond.true.149:                                    ; preds = %cond.false.145, %cond.true.141, %cond.true.133, %cond.false.128, %cond.true.127, %cond.true.107
  %126 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %127 = bitcast %struct.hv* %126 to %struct.he*
  br label %cond.end.151

cond.false.150:                                   ; preds = %cond.false.145, %cond.true.141, %cond.true.133, %cond.false.128, %cond.true.127, %cond.true.107
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.150, %cond.true.149
  %cond152 = phi %struct.he* [ %127, %cond.true.149 ], [ null, %cond.false.150 ]
  store %struct.he* %cond152, %struct.he** %retval
  br label %return

if.end.153:                                       ; preds = %lor.lhs.false.74
  br label %if.end.202

if.else.154:                                      ; preds = %land.lhs.true.68, %if.else.64
  %128 = load i32, i32* %action.addr, align 4
  %and155 = and i32 %128, 1
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %if.then.157, label %if.end.201

if.then.157:                                      ; preds = %if.else.154
  %129 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  call void @S_hv_magic_check(%struct.hv* %129, i8* %needs_copy, i8* %needs_store)
  %130 = load i8, i8* %needs_copy, align 1
  %tobool158 = icmp ne i8 %130, 0
  br i1 %tobool158, label %if.then.159, label %if.end.200

if.then.159:                                      ; preds = %if.then.157
  %131 = load i8, i8* @PL_tainted, align 1
  store i8 %131, i8* %save_taint, align 1
  %132 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %tobool160 = icmp ne %struct.sv* %132, null
  br i1 %tobool160, label %if.then.164, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %if.then.159
  %133 = load i8, i8* %is_utf8, align 1
  %conv162 = sext i8 %133 to i32
  %tobool163 = icmp ne i32 %conv162, 0
  br i1 %tobool163, label %if.then.164, label %if.else.184

if.then.164:                                      ; preds = %lor.lhs.false.161, %if.then.159
  %134 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %tobool165 = icmp ne %struct.sv* %134, null
  br i1 %tobool165, label %if.end.170, label %if.then.166

if.then.166:                                      ; preds = %if.then.164
  %135 = load i8*, i8** %key.addr, align 8
  %136 = load i64, i64* %klen.addr, align 8
  %call167 = call %struct.sv* @Perl_newSVpvn(i8* %135, i64 %136)
  store %struct.sv* %call167, %struct.sv** %keysv.addr, align 8
  %137 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_flags168 = getelementptr inbounds %struct.sv, %struct.sv* %137, i32 0, i32 2
  %138 = load i32, i32* %sv_flags168, align 4
  %or169 = or i32 %138, 536870912
  store i32 %or169, i32* %sv_flags168, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.166, %if.then.164
  %139 = load i8, i8* @PL_tainting, align 1
  %tobool171 = icmp ne i8 %139, 0
  br i1 %tobool171, label %if.then.172, label %if.end.180

if.then.172:                                      ; preds = %if.end.170
  %140 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_flags173 = getelementptr inbounds %struct.sv, %struct.sv* %140, i32 0, i32 2
  %141 = load i32, i32* %sv_flags173, align 4
  %and174 = and i32 %141, 57344
  %tobool175 = icmp ne i32 %and174, 0
  br i1 %tobool175, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.172
  %142 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %call176 = call signext i8 @Perl_sv_tainted(%struct.sv* %142)
  %conv177 = sext i8 %call176 to i32
  %tobool178 = icmp ne i32 %conv177, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.172
  %143 = phi i1 [ false, %if.then.172 ], [ %tobool178, %land.rhs ]
  %land.ext = zext i1 %143 to i32
  %conv179 = trunc i32 %land.ext to i8
  store i8 %conv179, i8* @PL_tainted, align 1
  br label %if.end.180

if.end.180:                                       ; preds = %land.end, %if.end.170
  %144 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %call181 = call %struct.sv* @Perl_newSVsv(%struct.sv* %144)
  %call182 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call181)
  store %struct.sv* %call182, %struct.sv** %keysv.addr, align 8
  %145 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %146 = bitcast %struct.hv* %145 to %struct.sv*
  %147 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %148 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %149 = bitcast %struct.sv* %148 to i8*
  %call183 = call i32 @Perl_mg_copy(%struct.sv* %146, %struct.sv* %147, i8* %149, i32 -2)
  br label %if.end.187

if.else.184:                                      ; preds = %lor.lhs.false.161
  %150 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %151 = bitcast %struct.hv* %150 to %struct.sv*
  %152 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %153 = load i8*, i8** %key.addr, align 8
  %154 = load i64, i64* %klen.addr, align 8
  %conv185 = trunc i64 %154 to i32
  %call186 = call i32 @Perl_mg_copy(%struct.sv* %151, %struct.sv* %152, i8* %153, i32 %conv185)
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.184, %if.end.180
  %155 = load i8, i8* %save_taint, align 1
  %tobool188 = icmp ne i8 %155, 0
  br i1 %tobool188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.187
  store i8 1, i8* @PL_tainted, align 1
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %if.end.187
  %156 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %156, i32 0, i32 0
  %157 = load i8*, i8** %xhv_array, align 8
  %tobool191 = icmp ne i8* %157, null
  br i1 %tobool191, label %if.end.199, label %land.lhs.true.192

land.lhs.true.192:                                ; preds = %if.end.190
  %158 = load i8, i8* %needs_store, align 1
  %tobool193 = icmp ne i8 %158, 0
  br i1 %tobool193, label %if.end.199, label %if.then.194

if.then.194:                                      ; preds = %land.lhs.true.192
  %159 = load i32, i32* %flags.addr, align 4
  %and195 = and i32 %159, 256
  %tobool196 = icmp ne i32 %and195, 0
  br i1 %tobool196, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %if.then.194
  %160 = load i8*, i8** %key.addr, align 8
  call void @Perl_safesysfree(i8* %160)
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.197, %if.then.194
  store %struct.he* null, %struct.he** %retval
  br label %return

if.end.199:                                       ; preds = %land.lhs.true.192, %if.end.190
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.then.157
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.else.154
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.end.153
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.end.63
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.end.17
  %161 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array205 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %161, i32 0, i32 0
  %162 = load i8*, i8** %xhv_array205, align 8
  %tobool206 = icmp ne i8* %162, null
  br i1 %tobool206, label %if.end.250, label %if.then.207

if.then.207:                                      ; preds = %if.end.204
  %163 = load i32, i32* %action.addr, align 4
  %and208 = and i32 %163, 5
  %tobool209 = icmp ne i32 %and208, 0
  br i1 %tobool209, label %if.then.210, label %if.else.244

if.then.210:                                      ; preds = %if.then.207
  %164 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %164, i32 0, i32 2
  %165 = load i64, i64* %xhv_max, align 8
  %add = add i64 %165, 1
  %cmp211 = icmp ult i64 %add, 64
  br i1 %cmp211, label %cond.true.213, label %cond.false.216

cond.true.213:                                    ; preds = %if.then.210
  %166 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max214 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %166, i32 0, i32 2
  %167 = load i64, i64* %xhv_max214, align 8
  %add215 = add i64 %167, 1
  %mul = mul i64 %add215, 8
  br label %cond.end.221

cond.false.216:                                   ; preds = %if.then.210
  %168 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max217 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %168, i32 0, i32 2
  %169 = load i64, i64* %xhv_max217, align 8
  %add218 = add i64 %169, 1
  %mul219 = mul i64 %add218, 8
  %mul220 = mul i64 %mul219, 2
  %sub = sub i64 %mul220, 16
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.216, %cond.true.213
  %cond222 = phi i64 [ %mul, %cond.true.213 ], [ %sub, %cond.false.216 ]
  %mul223 = mul i64 %cond222, 1
  %call224 = call i8* @Perl_safesysmalloc(i64 %mul223)
  %170 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array225 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %170, i32 0, i32 0
  store i8* %call224, i8** %xhv_array225, align 8
  %171 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array226 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %171, i32 0, i32 0
  %172 = load i8*, i8** %xhv_array226, align 8
  %173 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max227 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %173, i32 0, i32 2
  %174 = load i64, i64* %xhv_max227, align 8
  %add228 = add i64 %174, 1
  %cmp229 = icmp ult i64 %add228, 64
  br i1 %cmp229, label %cond.true.231, label %cond.false.235

cond.true.231:                                    ; preds = %cond.end.221
  %175 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max232 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %175, i32 0, i32 2
  %176 = load i64, i64* %xhv_max232, align 8
  %add233 = add i64 %176, 1
  %mul234 = mul i64 %add233, 8
  br label %cond.end.241

cond.false.235:                                   ; preds = %cond.end.221
  %177 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max236 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %177, i32 0, i32 2
  %178 = load i64, i64* %xhv_max236, align 8
  %add237 = add i64 %178, 1
  %mul238 = mul i64 %add237, 8
  %mul239 = mul i64 %mul238, 2
  %sub240 = sub i64 %mul239, 16
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.235, %cond.true.231
  %cond242 = phi i64 [ %mul234, %cond.true.231 ], [ %sub240, %cond.false.235 ]
  %mul243 = mul i64 %cond242, 1
  call void @llvm.memset.p0i8.i64(i8* %172, i8 0, i64 %mul243, i32 1, i1 false)
  br label %if.end.249

if.else.244:                                      ; preds = %if.then.207
  %179 = load i32, i32* %flags.addr, align 4
  %and245 = and i32 %179, 256
  %tobool246 = icmp ne i32 %and245, 0
  br i1 %tobool246, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %if.else.244
  %180 = load i8*, i8** %key.addr, align 8
  call void @Perl_safesysfree(i8* %180)
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.247, %if.else.244
  store %struct.he* null, %struct.he** %retval
  br label %return

if.end.249:                                       ; preds = %cond.end.241
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.end.204
  %181 = load i8, i8* %is_utf8, align 1
  %tobool251 = icmp ne i8 %181, 0
  br i1 %tobool251, label %if.then.252, label %if.end.269

if.then.252:                                      ; preds = %if.end.250
  %182 = load i8*, i8** %key.addr, align 8
  store i8* %182, i8** %keysave, align 8
  %183 = load i8*, i8** %key.addr, align 8
  %call253 = call i8* @Perl_bytes_from_utf8(i8* %183, i64* %klen.addr, i8* %is_utf8)
  store i8* %call253, i8** %key.addr, align 8
  %184 = load i8, i8* %is_utf8, align 1
  %tobool254 = icmp ne i8 %184, 0
  br i1 %tobool254, label %if.then.255, label %if.else.257

if.then.255:                                      ; preds = %if.then.252
  %185 = load i32, i32* %flags.addr, align 4
  %or256 = or i32 %185, 1
  store i32 %or256, i32* %flags.addr, align 4
  br label %if.end.259

if.else.257:                                      ; preds = %if.then.252
  %186 = load i32, i32* %flags.addr, align 4
  %and258 = and i32 %186, -2
  store i32 %and258, i32* %flags.addr, align 4
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.257, %if.then.255
  %187 = load i8*, i8** %key.addr, align 8
  %188 = load i8*, i8** %keysave, align 8
  %cmp260 = icmp ne i8* %187, %188
  br i1 %cmp260, label %if.then.262, label %if.end.268

if.then.262:                                      ; preds = %if.end.259
  %189 = load i32, i32* %flags.addr, align 4
  %and263 = and i32 %189, 256
  %tobool264 = icmp ne i32 %and263, 0
  br i1 %tobool264, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %if.then.262
  %190 = load i8*, i8** %keysave, align 8
  call void @Perl_safesysfree(i8* %190)
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.265, %if.then.262
  %191 = load i32, i32* %flags.addr, align 4
  %or267 = or i32 %191, 258
  store i32 %or267, i32* %flags.addr, align 4
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.266, %if.end.259
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.end.250
  %192 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags270 = getelementptr inbounds %struct.hv, %struct.hv* %192, i32 0, i32 2
  %193 = load i32, i32* %sv_flags270, align 4
  %and271 = and i32 %193, 268435456
  %tobool272 = icmp ne i32 %and271, 0
  br i1 %tobool272, label %if.then.273, label %if.else.287

if.then.273:                                      ; preds = %if.end.269
  %194 = load i8*, i8** %key.addr, align 8
  store i8* %194, i8** %s_PeRlHaSh_tmp, align 8
  %195 = load i8*, i8** %s_PeRlHaSh_tmp, align 8
  store i8* %195, i8** %s_PeRlHaSh, align 8
  %196 = load i64, i64* %klen.addr, align 8
  %conv274 = trunc i64 %196 to i32
  store i32 %conv274, i32* %i_PeRlHaSh, align 4
  %197 = load i64, i64* @PL_rehash_seed, align 8
  %conv275 = trunc i64 %197 to i32
  store i32 %conv275, i32* %hash_PeRlHaSh, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.273
  %198 = load i32, i32* %i_PeRlHaSh, align 4
  %dec = add nsw i32 %198, -1
  store i32 %dec, i32* %i_PeRlHaSh, align 4
  %tobool276 = icmp ne i32 %198, 0
  br i1 %tobool276, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %199 = load i8*, i8** %s_PeRlHaSh, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %incdec.ptr, i8** %s_PeRlHaSh, align 8
  %200 = load i8, i8* %199, align 1
  %conv277 = zext i8 %200 to i32
  %201 = load i32, i32* %hash_PeRlHaSh, align 4
  %add278 = add i32 %201, %conv277
  store i32 %add278, i32* %hash_PeRlHaSh, align 4
  %202 = load i32, i32* %hash_PeRlHaSh, align 4
  %shl = shl i32 %202, 10
  %203 = load i32, i32* %hash_PeRlHaSh, align 4
  %add279 = add i32 %203, %shl
  store i32 %add279, i32* %hash_PeRlHaSh, align 4
  %204 = load i32, i32* %hash_PeRlHaSh, align 4
  %shr = lshr i32 %204, 6
  %205 = load i32, i32* %hash_PeRlHaSh, align 4
  %xor = xor i32 %205, %shr
  store i32 %xor, i32* %hash_PeRlHaSh, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %206 = load i32, i32* %hash_PeRlHaSh, align 4
  %shl280 = shl i32 %206, 3
  %207 = load i32, i32* %hash_PeRlHaSh, align 4
  %add281 = add i32 %207, %shl280
  store i32 %add281, i32* %hash_PeRlHaSh, align 4
  %208 = load i32, i32* %hash_PeRlHaSh, align 4
  %shr282 = lshr i32 %208, 11
  %209 = load i32, i32* %hash_PeRlHaSh, align 4
  %xor283 = xor i32 %209, %shr282
  store i32 %xor283, i32* %hash_PeRlHaSh, align 4
  %210 = load i32, i32* %hash_PeRlHaSh, align 4
  %211 = load i32, i32* %hash_PeRlHaSh, align 4
  %shl284 = shl i32 %211, 15
  %add285 = add i32 %210, %shl284
  store i32 %add285, i32* %hash.addr, align 4
  store i32 %add285, i32* %tmp
  %212 = load i32, i32* %tmp
  %213 = load i32, i32* %flags.addr, align 4
  %or286 = or i32 %213, 4
  store i32 %or286, i32* %flags.addr, align 4
  br label %if.end.319

if.else.287:                                      ; preds = %if.end.269
  %214 = load i32, i32* %hash.addr, align 4
  %tobool288 = icmp ne i32 %214, 0
  br i1 %tobool288, label %if.end.318, label %if.then.289

if.then.289:                                      ; preds = %if.else.287
  %215 = load i8*, i8** %key.addr, align 8
  store i8* %215, i8** %s_PeRlHaSh_tmp291, align 8
  %216 = load i8*, i8** %s_PeRlHaSh_tmp291, align 8
  store i8* %216, i8** %s_PeRlHaSh293, align 8
  %217 = load i64, i64* %klen.addr, align 8
  %conv296 = trunc i64 %217 to i32
  store i32 %conv296, i32* %i_PeRlHaSh295, align 4
  store i32 0, i32* %hash_PeRlHaSh298, align 4
  br label %while.cond.299

while.cond.299:                                   ; preds = %while.body.302, %if.then.289
  %218 = load i32, i32* %i_PeRlHaSh295, align 4
  %dec300 = add nsw i32 %218, -1
  store i32 %dec300, i32* %i_PeRlHaSh295, align 4
  %tobool301 = icmp ne i32 %218, 0
  br i1 %tobool301, label %while.body.302, label %while.end.310

while.body.302:                                   ; preds = %while.cond.299
  %219 = load i8*, i8** %s_PeRlHaSh293, align 8
  %incdec.ptr303 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %incdec.ptr303, i8** %s_PeRlHaSh293, align 8
  %220 = load i8, i8* %219, align 1
  %conv304 = zext i8 %220 to i32
  %221 = load i32, i32* %hash_PeRlHaSh298, align 4
  %add305 = add i32 %221, %conv304
  store i32 %add305, i32* %hash_PeRlHaSh298, align 4
  %222 = load i32, i32* %hash_PeRlHaSh298, align 4
  %shl306 = shl i32 %222, 10
  %223 = load i32, i32* %hash_PeRlHaSh298, align 4
  %add307 = add i32 %223, %shl306
  store i32 %add307, i32* %hash_PeRlHaSh298, align 4
  %224 = load i32, i32* %hash_PeRlHaSh298, align 4
  %shr308 = lshr i32 %224, 6
  %225 = load i32, i32* %hash_PeRlHaSh298, align 4
  %xor309 = xor i32 %225, %shr308
  store i32 %xor309, i32* %hash_PeRlHaSh298, align 4
  br label %while.cond.299

while.end.310:                                    ; preds = %while.cond.299
  %226 = load i32, i32* %hash_PeRlHaSh298, align 4
  %shl311 = shl i32 %226, 3
  %227 = load i32, i32* %hash_PeRlHaSh298, align 4
  %add312 = add i32 %227, %shl311
  store i32 %add312, i32* %hash_PeRlHaSh298, align 4
  %228 = load i32, i32* %hash_PeRlHaSh298, align 4
  %shr313 = lshr i32 %228, 11
  %229 = load i32, i32* %hash_PeRlHaSh298, align 4
  %xor314 = xor i32 %229, %shr313
  store i32 %xor314, i32* %hash_PeRlHaSh298, align 4
  %230 = load i32, i32* %hash_PeRlHaSh298, align 4
  %231 = load i32, i32* %hash_PeRlHaSh298, align 4
  %shl316 = shl i32 %231, 15
  %add317 = add i32 %230, %shl316
  store i32 %add317, i32* %hash.addr, align 4
  store i32 %add317, i32* %tmp315
  %232 = load i32, i32* %tmp315
  br label %if.end.318

if.end.318:                                       ; preds = %while.end.310, %if.else.287
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %while.end
  %233 = load i32, i32* %flags.addr, align 4
  %and320 = and i32 %233, 255
  store i32 %and320, i32* %masked_flags, align 4
  store i32 0, i32* %n_links, align 4
  %234 = load i32, i32* %hash.addr, align 4
  %235 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max321 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %235, i32 0, i32 2
  %236 = load i64, i64* %xhv_max321, align 8
  %conv322 = trunc i64 %236 to i32
  %and323 = and i32 %234, %conv322
  %idxprom = zext i32 %and323 to i64
  %237 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array324 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %237, i32 0, i32 0
  %238 = load i8*, i8** %xhv_array324, align 8
  %239 = bitcast i8* %238 to %struct.he**
  %arrayidx = getelementptr inbounds %struct.he*, %struct.he** %239, i64 %idxprom
  %240 = load %struct.he*, %struct.he** %arrayidx, align 8
  store %struct.he* %240, %struct.he** %entry1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.319
  %241 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool325 = icmp ne %struct.he* %241, null
  br i1 %tobool325, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %242 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek326 = getelementptr inbounds %struct.he, %struct.he* %242, i32 0, i32 1
  %243 = load %struct.hek*, %struct.hek** %hent_hek326, align 8
  %tobool327 = icmp ne %struct.hek* %243, null
  br i1 %tobool327, label %if.end.329, label %if.then.328

if.then.328:                                      ; preds = %for.body
  br label %for.inc

if.end.329:                                       ; preds = %for.body
  %244 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek330 = getelementptr inbounds %struct.he, %struct.he* %244, i32 0, i32 1
  %245 = load %struct.hek*, %struct.hek** %hent_hek330, align 8
  %hek_hash = getelementptr inbounds %struct.hek, %struct.hek* %245, i32 0, i32 0
  %246 = load i32, i32* %hek_hash, align 4
  %247 = load i32, i32* %hash.addr, align 4
  %cmp331 = icmp ne i32 %246, %247
  br i1 %cmp331, label %if.then.333, label %if.end.334

if.then.333:                                      ; preds = %if.end.329
  br label %for.inc

if.end.334:                                       ; preds = %if.end.329
  %248 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek335 = getelementptr inbounds %struct.he, %struct.he* %248, i32 0, i32 1
  %249 = load %struct.hek*, %struct.hek** %hent_hek335, align 8
  %hek_len336 = getelementptr inbounds %struct.hek, %struct.hek* %249, i32 0, i32 1
  %250 = load i32, i32* %hek_len336, align 4
  %251 = load i64, i64* %klen.addr, align 8
  %conv337 = trunc i64 %251 to i32
  %cmp338 = icmp ne i32 %250, %conv337
  br i1 %cmp338, label %if.then.340, label %if.end.341

if.then.340:                                      ; preds = %if.end.334
  br label %for.inc

if.end.341:                                       ; preds = %if.end.334
  %252 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek342 = getelementptr inbounds %struct.he, %struct.he* %252, i32 0, i32 1
  %253 = load %struct.hek*, %struct.hek** %hent_hek342, align 8
  %hek_key343 = getelementptr inbounds %struct.hek, %struct.hek* %253, i32 0, i32 2
  %arraydecay344 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key343, i32 0, i32 0
  %254 = load i8*, i8** %key.addr, align 8
  %cmp345 = icmp ne i8* %arraydecay344, %254
  br i1 %cmp345, label %land.lhs.true.347, label %if.end.354

land.lhs.true.347:                                ; preds = %if.end.341
  %255 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek348 = getelementptr inbounds %struct.he, %struct.he* %255, i32 0, i32 1
  %256 = load %struct.hek*, %struct.hek** %hent_hek348, align 8
  %hek_key349 = getelementptr inbounds %struct.hek, %struct.hek* %256, i32 0, i32 2
  %arraydecay350 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key349, i32 0, i32 0
  %257 = load i8*, i8** %key.addr, align 8
  %258 = load i64, i64* %klen.addr, align 8
  %call351 = call i32 @memcmp(i8* %arraydecay350, i8* %257, i64 %258)
  %tobool352 = icmp ne i32 %call351, 0
  br i1 %tobool352, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %land.lhs.true.347
  br label %for.inc

if.end.354:                                       ; preds = %land.lhs.true.347, %if.end.341
  %259 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek355 = getelementptr inbounds %struct.he, %struct.he* %259, i32 0, i32 1
  %260 = load %struct.hek*, %struct.hek** %hent_hek355, align 8
  %hek_key356 = getelementptr inbounds %struct.hek, %struct.hek* %260, i32 0, i32 2
  %arraydecay357 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key356, i32 0, i32 0
  %261 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek358 = getelementptr inbounds %struct.he, %struct.he* %261, i32 0, i32 1
  %262 = load %struct.hek*, %struct.hek** %hent_hek358, align 8
  %hek_len359 = getelementptr inbounds %struct.hek, %struct.hek* %262, i32 0, i32 1
  %263 = load i32, i32* %hek_len359, align 4
  %idx.ext = sext i32 %263 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay357, i64 %idx.ext
  %add.ptr360 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %264 = load i8, i8* %add.ptr360, align 1
  %conv361 = zext i8 %264 to i32
  %265 = load i32, i32* %masked_flags, align 4
  %xor362 = xor i32 %conv361, %265
  %and363 = and i32 %xor362, 1
  %tobool364 = icmp ne i32 %and363, 0
  br i1 %tobool364, label %if.then.365, label %if.end.366

if.then.365:                                      ; preds = %if.end.354
  br label %for.inc

if.end.366:                                       ; preds = %if.end.354
  %266 = load i32, i32* %action.addr, align 4
  %and367 = and i32 %266, 5
  %tobool368 = icmp ne i32 %and367, 0
  br i1 %tobool368, label %if.then.369, label %if.else.441

if.then.369:                                      ; preds = %if.end.366
  %267 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek370 = getelementptr inbounds %struct.he, %struct.he* %267, i32 0, i32 1
  %268 = load %struct.hek*, %struct.hek** %hent_hek370, align 8
  %hek_key371 = getelementptr inbounds %struct.hek, %struct.hek* %268, i32 0, i32 2
  %arraydecay372 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key371, i32 0, i32 0
  %269 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek373 = getelementptr inbounds %struct.he, %struct.he* %269, i32 0, i32 1
  %270 = load %struct.hek*, %struct.hek** %hent_hek373, align 8
  %hek_len374 = getelementptr inbounds %struct.hek, %struct.hek* %270, i32 0, i32 1
  %271 = load i32, i32* %hek_len374, align 4
  %idx.ext375 = sext i32 %271 to i64
  %add.ptr376 = getelementptr inbounds i8, i8* %arraydecay372, i64 %idx.ext375
  %add.ptr377 = getelementptr inbounds i8, i8* %add.ptr376, i64 1
  %272 = load i8, i8* %add.ptr377, align 1
  %conv378 = zext i8 %272 to i32
  %273 = load i32, i32* %masked_flags, align 4
  %cmp379 = icmp ne i32 %conv378, %273
  br i1 %cmp379, label %if.then.381, label %if.end.408

if.then.381:                                      ; preds = %if.then.369
  %274 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags382 = getelementptr inbounds %struct.hv, %struct.hv* %274, i32 0, i32 2
  %275 = load i32, i32* %sv_flags382, align 4
  %and383 = and i32 %275, 536870912
  %tobool384 = icmp ne i32 %and383, 0
  br i1 %tobool384, label %if.then.385, label %if.else.391

if.then.385:                                      ; preds = %if.then.381
  %276 = load i8*, i8** %key.addr, align 8
  %277 = load i64, i64* %klen.addr, align 8
  %conv387 = trunc i64 %277 to i32
  %278 = load i32, i32* %hash.addr, align 4
  %279 = load i32, i32* %masked_flags, align 4
  %call388 = call %struct.hek* @S_share_hek_flags(i8* %276, i32 %conv387, i32 %278, i32 %279)
  store %struct.hek* %call388, %struct.hek** %new_hek, align 8
  %280 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek389 = getelementptr inbounds %struct.he, %struct.he* %280, i32 0, i32 1
  %281 = load %struct.hek*, %struct.hek** %hent_hek389, align 8
  call void @Perl_unshare_hek(%struct.hek* %281)
  %282 = load %struct.hek*, %struct.hek** %new_hek, align 8
  %283 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek390 = getelementptr inbounds %struct.he, %struct.he* %283, i32 0, i32 1
  store %struct.hek* %282, %struct.hek** %hent_hek390, align 8
  br label %if.end.401

if.else.391:                                      ; preds = %if.then.381
  %284 = load i32, i32* %masked_flags, align 4
  %conv392 = trunc i32 %284 to i8
  %285 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek393 = getelementptr inbounds %struct.he, %struct.he* %285, i32 0, i32 1
  %286 = load %struct.hek*, %struct.hek** %hent_hek393, align 8
  %hek_key394 = getelementptr inbounds %struct.hek, %struct.hek* %286, i32 0, i32 2
  %arraydecay395 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key394, i32 0, i32 0
  %287 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek396 = getelementptr inbounds %struct.he, %struct.he* %287, i32 0, i32 1
  %288 = load %struct.hek*, %struct.hek** %hent_hek396, align 8
  %hek_len397 = getelementptr inbounds %struct.hek, %struct.hek* %288, i32 0, i32 1
  %289 = load i32, i32* %hek_len397, align 4
  %idx.ext398 = sext i32 %289 to i64
  %add.ptr399 = getelementptr inbounds i8, i8* %arraydecay395, i64 %idx.ext398
  %add.ptr400 = getelementptr inbounds i8, i8* %add.ptr399, i64 1
  store i8 %conv392, i8* %add.ptr400, align 1
  br label %if.end.401

if.end.401:                                       ; preds = %if.else.391, %if.then.385
  %290 = load i32, i32* %masked_flags, align 4
  %and402 = and i32 %290, 251
  %tobool403 = icmp ne i32 %and402, 0
  br i1 %tobool403, label %if.then.404, label %if.end.407

if.then.404:                                      ; preds = %if.end.401
  %291 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags405 = getelementptr inbounds %struct.hv, %struct.hv* %291, i32 0, i32 2
  %292 = load i32, i32* %sv_flags405, align 4
  %or406 = or i32 %292, -2147483648
  store i32 %or406, i32* %sv_flags405, align 4
  br label %if.end.407

if.end.407:                                       ; preds = %if.then.404, %if.end.401
  br label %if.end.408

if.end.408:                                       ; preds = %if.end.407, %if.then.369
  %293 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val409 = getelementptr inbounds %struct.he, %struct.he* %293, i32 0, i32 2
  %294 = load %struct.sv*, %struct.sv** %hent_val409, align 8
  %cmp410 = icmp eq %struct.sv* %294, @PL_sv_placeholder
  br i1 %cmp410, label %if.then.412, label %if.else.433

if.then.412:                                      ; preds = %if.end.408
  %295 = load i32, i32* %action.addr, align 4
  %and413 = and i32 %295, 4
  %tobool414 = icmp ne i32 %and413, 0
  br i1 %tobool414, label %if.then.415, label %if.else.424

if.then.415:                                      ; preds = %if.then.412
  %296 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags416 = getelementptr inbounds %struct.hv, %struct.hv* %296, i32 0, i32 2
  %297 = load i32, i32* %sv_flags416, align 4
  %and417 = and i32 %297, 57344
  %tobool418 = icmp ne i32 %and417, 0
  br i1 %tobool418, label %if.then.419, label %if.end.420

if.then.419:                                      ; preds = %if.then.415
  br label %for.end

if.end.420:                                       ; preds = %if.then.415
  %call421 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call421, %struct.sv** %val.addr, align 8
  %298 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xnv_nv422 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %298, i32 0, i32 4
  %299 = load double, double* %xnv_nv422, align 8
  %dec423 = fadd double %299, -1.000000e+00
  store double %dec423, double* %xnv_nv422, align 8
  br label %if.end.431

if.else.424:                                      ; preds = %if.then.412
  %300 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %cmp425 = icmp ne %struct.sv* %300, @PL_sv_placeholder
  br i1 %cmp425, label %if.then.427, label %if.end.430

if.then.427:                                      ; preds = %if.else.424
  %301 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xnv_nv428 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %301, i32 0, i32 4
  %302 = load double, double* %xnv_nv428, align 8
  %dec429 = fadd double %302, -1.000000e+00
  store double %dec429, double* %xnv_nv428, align 8
  br label %if.end.430

if.end.430:                                       ; preds = %if.then.427, %if.else.424
  br label %if.end.431

if.end.431:                                       ; preds = %if.end.430, %if.end.420
  %303 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %304 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val432 = getelementptr inbounds %struct.he, %struct.he* %304, i32 0, i32 2
  store %struct.sv* %303, %struct.sv** %hent_val432, align 8
  br label %if.end.440

if.else.433:                                      ; preds = %if.end.408
  %305 = load i32, i32* %action.addr, align 4
  %and434 = and i32 %305, 1
  %tobool435 = icmp ne i32 %and434, 0
  br i1 %tobool435, label %if.then.436, label %if.end.439

if.then.436:                                      ; preds = %if.else.433
  %306 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val437 = getelementptr inbounds %struct.he, %struct.he* %306, i32 0, i32 2
  %307 = load %struct.sv*, %struct.sv** %hent_val437, align 8
  call void @Perl_sv_free(%struct.sv* %307)
  %308 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %309 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val438 = getelementptr inbounds %struct.he, %struct.he* %309, i32 0, i32 2
  store %struct.sv* %308, %struct.sv** %hent_val438, align 8
  br label %if.end.439

if.end.439:                                       ; preds = %if.then.436, %if.else.433
  br label %if.end.440

if.end.440:                                       ; preds = %if.end.439, %if.end.431
  br label %if.end.447

if.else.441:                                      ; preds = %if.end.366
  %310 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val442 = getelementptr inbounds %struct.he, %struct.he* %310, i32 0, i32 2
  %311 = load %struct.sv*, %struct.sv** %hent_val442, align 8
  %cmp443 = icmp eq %struct.sv* %311, @PL_sv_placeholder
  br i1 %cmp443, label %if.then.445, label %if.end.446

if.then.445:                                      ; preds = %if.else.441
  br label %for.end

if.end.446:                                       ; preds = %if.else.441
  br label %if.end.447

if.end.447:                                       ; preds = %if.end.446, %if.end.440
  %312 = load i32, i32* %flags.addr, align 4
  %and448 = and i32 %312, 256
  %tobool449 = icmp ne i32 %and448, 0
  br i1 %tobool449, label %if.then.450, label %if.end.451

if.then.450:                                      ; preds = %if.end.447
  %313 = load i8*, i8** %key.addr, align 8
  call void @Perl_safesysfree(i8* %313)
  br label %if.end.451

if.end.451:                                       ; preds = %if.then.450, %if.end.447
  %314 = load %struct.he*, %struct.he** %entry1, align 8
  store %struct.he* %314, %struct.he** %retval
  br label %return

for.inc:                                          ; preds = %if.then.365, %if.then.353, %if.then.340, %if.then.333, %if.then.328
  %315 = load i32, i32* %n_links, align 4
  %inc = add i32 %315, 1
  store i32 %inc, i32* %n_links, align 4
  %316 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next452 = getelementptr inbounds %struct.he, %struct.he* %316, i32 0, i32 0
  %317 = load %struct.he*, %struct.he** %hent_next452, align 8
  store %struct.he* %317, %struct.he** %entry1, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.445, %if.then.419, %for.cond
  %318 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool453 = icmp ne %struct.he* %318, null
  br i1 %tobool453, label %if.end.463, label %land.lhs.true.454

land.lhs.true.454:                                ; preds = %for.end
  %319 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags455 = getelementptr inbounds %struct.hv, %struct.hv* %319, i32 0, i32 2
  %320 = load i32, i32* %sv_flags455, align 4
  %and456 = and i32 %320, 8388608
  %tobool457 = icmp ne i32 %and456, 0
  br i1 %tobool457, label %land.lhs.true.458, label %if.end.463

land.lhs.true.458:                                ; preds = %land.lhs.true.454
  %321 = load i32, i32* %action.addr, align 4
  %and459 = and i32 %321, 2
  %tobool460 = icmp ne i32 %and459, 0
  br i1 %tobool460, label %if.end.463, label %if.then.461

if.then.461:                                      ; preds = %land.lhs.true.458
  %322 = load i32, i32* %flags.addr, align 4
  %323 = load i8*, i8** %key.addr, align 8
  %324 = load i64, i64* %klen.addr, align 8
  %conv462 = trunc i64 %324 to i32
  call void @S_hv_notallowed(i32 %322, i8* %323, i32 %conv462, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.463

if.end.463:                                       ; preds = %if.then.461, %land.lhs.true.458, %land.lhs.true.454, %for.end
  %325 = load i32, i32* %action.addr, align 4
  %and464 = and i32 %325, 5
  %tobool465 = icmp ne i32 %and464, 0
  br i1 %tobool465, label %if.end.471, label %if.then.466

if.then.466:                                      ; preds = %if.end.463
  %326 = load i32, i32* %flags.addr, align 4
  %and467 = and i32 %326, 256
  %tobool468 = icmp ne i32 %and467, 0
  br i1 %tobool468, label %if.then.469, label %if.end.470

if.then.469:                                      ; preds = %if.then.466
  %327 = load i8*, i8** %key.addr, align 8
  call void @Perl_safesysfree(i8* %327)
  br label %if.end.470

if.end.470:                                       ; preds = %if.then.469, %if.then.466
  store %struct.he* null, %struct.he** %retval
  br label %return

if.end.471:                                       ; preds = %if.end.463
  %328 = load i32, i32* %action.addr, align 4
  %and472 = and i32 %328, 4
  %tobool473 = icmp ne i32 %and472, 0
  br i1 %tobool473, label %if.then.474, label %if.end.482

if.then.474:                                      ; preds = %if.end.471
  %call475 = call %struct.sv* @Perl_newSV(i64 0)
  store %struct.sv* %call475, %struct.sv** %val.addr, align 8
  %329 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags476 = getelementptr inbounds %struct.hv, %struct.hv* %329, i32 0, i32 2
  %330 = load i32, i32* %sv_flags476, align 4
  %and477 = and i32 %330, 57344
  %tobool478 = icmp ne i32 %and477, 0
  br i1 %tobool478, label %if.then.479, label %if.end.481

if.then.479:                                      ; preds = %if.then.474
  %331 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %332 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %333 = load i8*, i8** %key.addr, align 8
  %334 = load i64, i64* %klen.addr, align 8
  %335 = load i32, i32* %flags.addr, align 4
  %336 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %337 = load i32, i32* %hash.addr, align 4
  %call480 = call %struct.he* @S_hv_fetch_common(%struct.hv* %331, %struct.sv* %332, i8* %333, i64 %334, i32 %335, i32 1, %struct.sv* %336, i32 %337)
  store %struct.he* %call480, %struct.he** %retval
  br label %return

if.end.481:                                       ; preds = %if.then.474
  br label %if.end.482

if.end.482:                                       ; preds = %if.end.481, %if.end.471
  %338 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array483 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %338, i32 0, i32 0
  %339 = load i8*, i8** %xhv_array483, align 8
  %tobool484 = icmp ne i8* %339, null
  br i1 %tobool484, label %if.end.523, label %if.then.485

if.then.485:                                      ; preds = %if.end.482
  %340 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max486 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %340, i32 0, i32 2
  %341 = load i64, i64* %xhv_max486, align 8
  %add487 = add i64 %341, 1
  %cmp488 = icmp ult i64 %add487, 64
  br i1 %cmp488, label %cond.true.490, label %cond.false.494

cond.true.490:                                    ; preds = %if.then.485
  %342 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max491 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %342, i32 0, i32 2
  %343 = load i64, i64* %xhv_max491, align 8
  %add492 = add i64 %343, 1
  %mul493 = mul i64 %add492, 8
  br label %cond.end.500

cond.false.494:                                   ; preds = %if.then.485
  %344 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max495 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %344, i32 0, i32 2
  %345 = load i64, i64* %xhv_max495, align 8
  %add496 = add i64 %345, 1
  %mul497 = mul i64 %add496, 8
  %mul498 = mul i64 %mul497, 2
  %sub499 = sub i64 %mul498, 16
  br label %cond.end.500

cond.end.500:                                     ; preds = %cond.false.494, %cond.true.490
  %cond501 = phi i64 [ %mul493, %cond.true.490 ], [ %sub499, %cond.false.494 ]
  %mul502 = mul i64 %cond501, 1
  %call503 = call i8* @Perl_safesysmalloc(i64 %mul502)
  %346 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array504 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %346, i32 0, i32 0
  store i8* %call503, i8** %xhv_array504, align 8
  %347 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array505 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %347, i32 0, i32 0
  %348 = load i8*, i8** %xhv_array505, align 8
  %349 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max506 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %349, i32 0, i32 2
  %350 = load i64, i64* %xhv_max506, align 8
  %add507 = add i64 %350, 1
  %cmp508 = icmp ult i64 %add507, 64
  br i1 %cmp508, label %cond.true.510, label %cond.false.514

cond.true.510:                                    ; preds = %cond.end.500
  %351 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max511 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %351, i32 0, i32 2
  %352 = load i64, i64* %xhv_max511, align 8
  %add512 = add i64 %352, 1
  %mul513 = mul i64 %add512, 8
  br label %cond.end.520

cond.false.514:                                   ; preds = %cond.end.500
  %353 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max515 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %353, i32 0, i32 2
  %354 = load i64, i64* %xhv_max515, align 8
  %add516 = add i64 %354, 1
  %mul517 = mul i64 %add516, 8
  %mul518 = mul i64 %mul517, 2
  %sub519 = sub i64 %mul518, 16
  br label %cond.end.520

cond.end.520:                                     ; preds = %cond.false.514, %cond.true.510
  %cond521 = phi i64 [ %mul513, %cond.true.510 ], [ %sub519, %cond.false.514 ]
  %mul522 = mul i64 %cond521, 1
  call void @llvm.memset.p0i8.i64(i8* %348, i8 0, i64 %mul522, i32 1, i1 false)
  br label %if.end.523

if.end.523:                                       ; preds = %cond.end.520, %if.end.482
  %355 = load i32, i32* %hash.addr, align 4
  %356 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max524 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %356, i32 0, i32 2
  %357 = load i64, i64* %xhv_max524, align 8
  %conv525 = trunc i64 %357 to i32
  %and526 = and i32 %355, %conv525
  %idxprom527 = zext i32 %and526 to i64
  %358 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array528 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %358, i32 0, i32 0
  %359 = load i8*, i8** %xhv_array528, align 8
  %360 = bitcast i8* %359 to %struct.he**
  %arrayidx529 = getelementptr inbounds %struct.he*, %struct.he** %360, i64 %idxprom527
  store %struct.he** %arrayidx529, %struct.he*** %oentry, align 8
  %call530 = call %struct.he* @S_new_he()
  store %struct.he* %call530, %struct.he** %entry1, align 8
  %361 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags531 = getelementptr inbounds %struct.hv, %struct.hv* %361, i32 0, i32 2
  %362 = load i32, i32* %sv_flags531, align 4
  %and532 = and i32 %362, 536870912
  %tobool533 = icmp ne i32 %and532, 0
  br i1 %tobool533, label %if.then.534, label %if.else.538

if.then.534:                                      ; preds = %if.end.523
  %363 = load i8*, i8** %key.addr, align 8
  %364 = load i64, i64* %klen.addr, align 8
  %conv535 = trunc i64 %364 to i32
  %365 = load i32, i32* %hash.addr, align 4
  %366 = load i32, i32* %flags.addr, align 4
  %call536 = call %struct.hek* @S_share_hek_flags(i8* %363, i32 %conv535, i32 %365, i32 %366)
  %367 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek537 = getelementptr inbounds %struct.he, %struct.he* %367, i32 0, i32 1
  store %struct.hek* %call536, %struct.hek** %hent_hek537, align 8
  br label %if.end.542

if.else.538:                                      ; preds = %if.end.523
  %368 = load i8*, i8** %key.addr, align 8
  %369 = load i64, i64* %klen.addr, align 8
  %conv539 = trunc i64 %369 to i32
  %370 = load i32, i32* %hash.addr, align 4
  %371 = load i32, i32* %flags.addr, align 4
  %call540 = call %struct.hek* @S_save_hek_flags(i8* %368, i32 %conv539, i32 %370, i32 %371)
  %372 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek541 = getelementptr inbounds %struct.he, %struct.he* %372, i32 0, i32 1
  store %struct.hek* %call540, %struct.hek** %hent_hek541, align 8
  br label %if.end.542

if.end.542:                                       ; preds = %if.else.538, %if.then.534
  %373 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %374 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val543 = getelementptr inbounds %struct.he, %struct.he* %374, i32 0, i32 2
  store %struct.sv* %373, %struct.sv** %hent_val543, align 8
  %375 = load %struct.he**, %struct.he*** %oentry, align 8
  %376 = load %struct.he*, %struct.he** %375, align 8
  %377 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next544 = getelementptr inbounds %struct.he, %struct.he* %377, i32 0, i32 0
  store %struct.he* %376, %struct.he** %hent_next544, align 8
  %378 = load %struct.he*, %struct.he** %entry1, align 8
  %379 = load %struct.he**, %struct.he*** %oentry, align 8
  store %struct.he* %378, %struct.he** %379, align 8
  %380 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %cmp545 = icmp eq %struct.sv* %380, @PL_sv_placeholder
  br i1 %cmp545, label %if.then.547, label %if.end.550

if.then.547:                                      ; preds = %if.end.542
  %381 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xnv_nv548 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %381, i32 0, i32 4
  %382 = load double, double* %xnv_nv548, align 8
  %inc549 = fadd double %382, 1.000000e+00
  store double %inc549, double* %xnv_nv548, align 8
  br label %if.end.550

if.end.550:                                       ; preds = %if.then.547, %if.end.542
  %383 = load i32, i32* %masked_flags, align 4
  %and551 = and i32 %383, 251
  %tobool552 = icmp ne i32 %and551, 0
  br i1 %tobool552, label %if.then.553, label %if.end.556

if.then.553:                                      ; preds = %if.end.550
  %384 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags554 = getelementptr inbounds %struct.hv, %struct.hv* %384, i32 0, i32 2
  %385 = load i32, i32* %sv_flags554, align 4
  %or555 = or i32 %385, -2147483648
  store i32 %or555, i32* %sv_flags554, align 4
  br label %if.end.556

if.end.556:                                       ; preds = %if.then.553, %if.end.550
  %386 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_keys = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %386, i32 0, i32 3
  %387 = load i64, i64* %xhv_keys, align 8
  %inc557 = add nsw i64 %387, 1
  store i64 %inc557, i64* %xhv_keys, align 8
  %388 = load i32, i32* %n_links, align 4
  %tobool558 = icmp ne i32 %388, 0
  br i1 %tobool558, label %if.else.561, label %if.then.559

if.then.559:                                      ; preds = %if.end.556
  %389 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_fill = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %389, i32 0, i32 1
  %390 = load i64, i64* %xhv_fill, align 8
  %inc560 = add i64 %390, 1
  store i64 %inc560, i64* %xhv_fill, align 8
  br label %if.end.575

if.else.561:                                      ; preds = %if.end.556
  %391 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_keys562 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %391, i32 0, i32 3
  %392 = load i64, i64* %xhv_keys562, align 8
  %393 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max563 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %393, i32 0, i32 2
  %394 = load i64, i64* %xhv_max563, align 8
  %cmp564 = icmp sgt i64 %392, %394
  br i1 %cmp564, label %if.then.573, label %lor.lhs.false.566

lor.lhs.false.566:                                ; preds = %if.else.561
  %395 = load i32, i32* %n_links, align 4
  %cmp567 = icmp ugt i32 %395, 14
  br i1 %cmp567, label %land.lhs.true.569, label %if.end.574

land.lhs.true.569:                                ; preds = %lor.lhs.false.566
  %396 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags570 = getelementptr inbounds %struct.hv, %struct.hv* %396, i32 0, i32 2
  %397 = load i32, i32* %sv_flags570, align 4
  %and571 = and i32 %397, 268435456
  %tobool572 = icmp ne i32 %and571, 0
  br i1 %tobool572, label %if.end.574, label %if.then.573

if.then.573:                                      ; preds = %land.lhs.true.569, %if.else.561
  %398 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  call void @S_hsplit(%struct.hv* %398)
  br label %if.end.574

if.end.574:                                       ; preds = %if.then.573, %land.lhs.true.569, %lor.lhs.false.566
  br label %if.end.575

if.end.575:                                       ; preds = %if.end.574, %if.then.559
  %399 = load %struct.he*, %struct.he** %entry1, align 8
  store %struct.he* %399, %struct.he** %retval
  br label %return

return:                                           ; preds = %if.end.575, %if.then.479, %if.end.470, %if.end.451, %if.end.248, %if.end.198, %cond.end.151, %if.end.62, %if.then
  %400 = load %struct.he*, %struct.he** %retval
  ret %struct.he* %400
}

; Function Attrs: nounwind uwtable
define %struct.sv** @Perl_hv_store_flags(%struct.hv* %hv, i8* %key, i32 %klen, %struct.sv* %val, i32 %hash, i32 %flags) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %key.addr = alloca i8*, align 8
  %klen.addr = alloca i32, align 4
  %val.addr = alloca %struct.sv*, align 8
  %hash.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %hek = alloca %struct.he*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %klen, i32* %klen.addr, align 4
  store %struct.sv* %val, %struct.sv** %val.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i32, i32* %klen.addr, align 4
  %conv = sext i32 %2 to i64
  %3 = load i32, i32* %flags.addr, align 4
  %4 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %5 = load i32, i32* %hash.addr, align 4
  %call = call %struct.he* @S_hv_fetch_common(%struct.hv* %0, %struct.sv* null, i8* %1, i64 %conv, i32 %3, i32 9, %struct.sv* %4, i32 %5)
  store %struct.he* %call, %struct.he** %hek, align 8
  %6 = load %struct.he*, %struct.he** %hek, align 8
  %tobool = icmp ne %struct.he* %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.he*, %struct.he** %hek, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %7, i32 0, i32 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv** [ %hent_val, %cond.true ], [ null, %cond.false ]
  ret %struct.sv** %cond
}

; Function Attrs: nounwind uwtable
define %struct.he* @Perl_hv_store_ent(%struct.hv* %hv, %struct.sv* %keysv, %struct.sv* %val, i32 %hash) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %keysv.addr = alloca %struct.sv*, align 8
  %val.addr = alloca %struct.sv*, align 8
  %hash.addr = alloca i32, align 4
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store %struct.sv* %keysv, %struct.sv** %keysv.addr, align 8
  store %struct.sv* %val, %struct.sv** %val.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %1 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %2 = load %struct.sv*, %struct.sv** %val.addr, align 8
  %3 = load i32, i32* %hash.addr, align 4
  %call = call %struct.he* @S_hv_fetch_common(%struct.hv* %0, %struct.sv* %1, i8* null, i64 0, i32 0, i32 1, %struct.sv* %2, i32 %3)
  ret %struct.he* %call
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_hv_exists(%struct.hv* %hv, i8* %key, i32 %klen_i32) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %key.addr = alloca i8*, align 8
  %klen_i32.addr = alloca i32, align 4
  %klen = alloca i64, align 8
  %flags = alloca i32, align 4
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %klen_i32, i32* %klen_i32.addr, align 4
  %0 = load i32, i32* %klen_i32.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %klen_i32.addr, align 4
  %sub = sub nsw i32 0, %1
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %klen, align 8
  store i32 1, i32* %flags, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %klen_i32.addr, align 4
  %conv1 = sext i32 %2 to i64
  store i64 %conv1, i64* %klen, align 8
  store i32 0, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %4 = load i8*, i8** %key.addr, align 8
  %5 = load i64, i64* %klen, align 8
  %6 = load i32, i32* %flags, align 4
  %call = call %struct.he* @S_hv_fetch_common(%struct.hv* %3, %struct.sv* null, i8* %4, i64 %5, i32 %6, i32 2, %struct.sv* null, i32 0)
  %tobool = icmp ne %struct.he* %call, null
  %cond = select i1 %tobool, i32 1, i32 0
  %conv2 = trunc i32 %cond to i8
  ret i8 %conv2
}

; Function Attrs: nounwind uwtable
define %struct.sv** @Perl_hv_fetch(%struct.hv* %hv, i8* %key, i32 %klen_i32, i32 %lval) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %key.addr = alloca i8*, align 8
  %klen_i32.addr = alloca i32, align 4
  %lval.addr = alloca i32, align 4
  %hek = alloca %struct.he*, align 8
  %klen = alloca i64, align 8
  %flags = alloca i32, align 4
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %klen_i32, i32* %klen_i32.addr, align 4
  store i32 %lval, i32* %lval.addr, align 4
  %0 = load i32, i32* %klen_i32.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %klen_i32.addr, align 4
  %sub = sub nsw i32 0, %1
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %klen, align 8
  store i32 1, i32* %flags, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %klen_i32.addr, align 4
  %conv1 = sext i32 %2 to i64
  store i64 %conv1, i64* %klen, align 8
  store i32 0, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %4 = load i8*, i8** %key.addr, align 8
  %5 = load i64, i64* %klen, align 8
  %6 = load i32, i32* %flags, align 4
  %7 = load i32, i32* %lval.addr, align 4
  %tobool = icmp ne i32 %7, 0
  %cond = select i1 %tobool, i32 4, i32 0
  %or = or i32 8, %cond
  %call = call %struct.he* @S_hv_fetch_common(%struct.hv* %3, %struct.sv* null, i8* %4, i64 %5, i32 %6, i32 %or, %struct.sv* null, i32 0)
  store %struct.he* %call, %struct.he** %hek, align 8
  %8 = load %struct.he*, %struct.he** %hek, align 8
  %tobool2 = icmp ne %struct.he* %8, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct.he*, %struct.he** %hek, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %9, i32 0, i32 2
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond3 = phi %struct.sv** [ %hent_val, %cond.true ], [ null, %cond.false ]
  ret %struct.sv** %cond3
}

; Function Attrs: nounwind uwtable
define signext i8 @Perl_hv_exists_ent(%struct.hv* %hv, %struct.sv* %keysv, i32 %hash) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %keysv.addr = alloca %struct.sv*, align 8
  %hash.addr = alloca i32, align 4
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store %struct.sv* %keysv, %struct.sv** %keysv.addr, align 8
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %1 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %2 = load i32, i32* %hash.addr, align 4
  %call = call %struct.he* @S_hv_fetch_common(%struct.hv* %0, %struct.sv* %1, i8* null, i64 0, i32 0, i32 2, %struct.sv* null, i32 %2)
  %tobool = icmp ne %struct.he* %call, null
  %cond = select i1 %tobool, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  ret i8 %conv
}

; Function Attrs: nounwind uwtable
define %struct.he* @Perl_hv_fetch_ent(%struct.hv* %hv, %struct.sv* %keysv, i32 %lval, i32 %hash) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %keysv.addr = alloca %struct.sv*, align 8
  %lval.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store %struct.sv* %keysv, %struct.sv** %keysv.addr, align 8
  store i32 %lval, i32* %lval.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %1 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %2 = load i32, i32* %lval.addr, align 4
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 4, i32 0
  %3 = load i32, i32* %hash.addr, align 4
  %call = call %struct.he* @S_hv_fetch_common(%struct.hv* %0, %struct.sv* %1, i8* null, i64 0, i32 0, i32 %cond, %struct.sv* null, i32 %3)
  ret %struct.he* %call
}

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_hv_scalar(%struct.hv* %hv) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %hv.addr = alloca %struct.hv*, align 8
  %mg = alloca %struct.magic*, align 8
  %sv = alloca %struct.sv*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.hv, %struct.hv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %3 = bitcast %struct.hv* %2 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %3, i32 80)
  store %struct.magic* %call, %struct.magic** %mg, align 8
  %tobool1 = icmp ne %struct.magic* %call, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %5 = load %struct.magic*, %struct.magic** %mg, align 8
  %call2 = call %struct.sv* @Perl_magic_scalarpack(%struct.hv* %4, %struct.magic* %5)
  store %struct.sv* %call2, %struct.sv** %sv, align 8
  %6 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %6, %struct.sv** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call3, %struct.sv** %sv, align 8
  %7 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %7, i32 0, i32 0
  %8 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  %xhv_fill = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %8, i32 0, i32 1
  %9 = load i64, i64* %xhv_fill, align 8
  %tobool4 = icmp ne i64 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %10 = load %struct.sv*, %struct.sv** %sv, align 8
  %11 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any6 = getelementptr inbounds %struct.hv, %struct.hv* %11, i32 0, i32 0
  %12 = load %struct.xpvhv*, %struct.xpvhv** %sv_any6, align 8
  %xhv_fill7 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %12, i32 0, i32 1
  %13 = load i64, i64* %xhv_fill7, align 8
  %14 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any8 = getelementptr inbounds %struct.hv, %struct.hv* %14, i32 0, i32 0
  %15 = load %struct.xpvhv*, %struct.xpvhv** %sv_any8, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %15, i32 0, i32 2
  %16 = load i64, i64* %xhv_max, align 8
  %add = add nsw i64 %16, 1
  call void (%struct.sv*, i8*, ...) @Perl_sv_setpvf(%struct.sv* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 %13, i64 %add)
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %17 = load %struct.sv*, %struct.sv** %sv, align 8
  call void @Perl_sv_setiv(%struct.sv* %17, i64 0)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.5
  %18 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %18, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %19 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %19
}

declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #1

declare %struct.sv* @Perl_magic_scalarpack(%struct.hv*, %struct.magic*) #1

declare %struct.sv* @Perl_sv_newmortal() #1

declare void @Perl_sv_setpvf(%struct.sv*, i8*, ...) #1

declare void @Perl_sv_setiv(%struct.sv*, i64) #1

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_hv_delete(%struct.hv* %hv, i8* %key, i32 %klen_i32, i32 %flags) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %key.addr = alloca i8*, align 8
  %klen_i32.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %klen = alloca i64, align 8
  %k_flags = alloca i32, align 4
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i32 %klen_i32, i32* %klen_i32.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %k_flags, align 4
  %0 = load i32, i32* %klen_i32.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %klen_i32.addr, align 4
  %sub = sub nsw i32 0, %1
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %klen, align 8
  %2 = load i32, i32* %k_flags, align 4
  %or = or i32 %2, 1
  store i32 %or, i32* %k_flags, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %klen_i32.addr, align 4
  %conv1 = sext i32 %3 to i64
  store i64 %conv1, i64* %klen, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %5 = load i8*, i8** %key.addr, align 8
  %6 = load i64, i64* %klen, align 8
  %7 = load i32, i32* %k_flags, align 4
  %8 = load i32, i32* %flags.addr, align 4
  %call = call %struct.sv* @S_hv_delete_common(%struct.hv* %4, %struct.sv* null, i8* %5, i64 %6, i32 %7, i32 %8, i32 0)
  ret %struct.sv* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.sv* @S_hv_delete_common(%struct.hv* %hv, %struct.sv* %keysv, i8* %key, i64 %klen, i32 %k_flags, i32 %d_flags, i32 %hash) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %hv.addr = alloca %struct.hv*, align 8
  %keysv.addr = alloca %struct.sv*, align 8
  %key.addr = alloca i8*, align 8
  %klen.addr = alloca i64, align 8
  %k_flags.addr = alloca i32, align 4
  %d_flags.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %xhv = alloca %struct.xpvhv*, align 8
  %i = alloca i32, align 4
  %entry1 = alloca %struct.he*, align 8
  %oentry = alloca %struct.he**, align 8
  %sv = alloca %struct.sv*, align 8
  %is_utf8 = alloca i8, align 1
  %masked_flags = alloca i32, align 4
  %needs_copy = alloca i8, align 1
  %needs_store = alloca i8, align 1
  %keysave = alloca i8*, align 8
  %s_PeRlHaSh_tmp = alloca i8*, align 8
  %s_PeRlHaSh = alloca i8*, align 8
  %i_PeRlHaSh = alloca i32, align 4
  %hash_PeRlHaSh = alloca i32, align 4
  %tmp = alloca i32, align 4
  %s_PeRlHaSh_tmp93 = alloca i8*, align 8
  %s_PeRlHaSh95 = alloca i8*, align 8
  %i_PeRlHaSh97 = alloca i32, align 4
  %hash_PeRlHaSh100 = alloca i32, align 4
  %tmp117 = alloca i32, align 4
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store %struct.sv* %keysv, %struct.sv** %keysv.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i64 %klen, i64* %klen.addr, align 8
  store i32 %k_flags, i32* %k_flags.addr, align 4
  store i32 %d_flags, i32* %d_flags.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %tobool = icmp ne %struct.hv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %tobool2 = icmp ne %struct.sv* %1, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %2 = load i32, i32* %k_flags.addr, align 4
  %and = and i32 %2, 256
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %3 = load i8*, i8** %key.addr, align 8
  call void @Perl_safesysfree(i8* %3)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %4 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and7 = and i32 %5, 262144
  %cmp = icmp eq i32 %and7, 262144
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %6 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any, align 8
  %8 = bitcast i8* %7 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %8, i32 0, i32 1
  %9 = load i64, i64* %xpv_cur, align 8
  store i64 %9, i64* %klen.addr, align 8
  %10 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_any8 = getelementptr inbounds %struct.sv, %struct.sv* %10, i32 0, i32 0
  %11 = load i8*, i8** %sv_any8, align 8
  %12 = bitcast i8* %11 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %12, i32 0, i32 0
  %13 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %14 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %14, i64* %klen.addr, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %key.addr, align 8
  store i32 0, i32* %k_flags.addr, align 4
  %15 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %sv_flags9 = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags9, align 4
  %and10 = and i32 %16, 536870912
  %cmp11 = icmp ne i32 %and10, 0
  %conv = zext i1 %cmp11 to i32
  %conv12 = trunc i32 %conv to i8
  store i8 %conv12, i8* %is_utf8, align 1
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %k_flags.addr, align 4
  %and13 = and i32 %17, 1
  %tobool14 = icmp ne i32 %and13, 0
  %cond15 = select i1 %tobool14, i32 1, i32 0
  %conv16 = trunc i32 %cond15 to i8
  store i8 %conv16, i8* %is_utf8, align 1
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %cond.end
  %18 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags18 = getelementptr inbounds %struct.hv, %struct.hv* %18, i32 0, i32 2
  %19 = load i32, i32* %sv_flags18, align 4
  %and19 = and i32 %19, 32768
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.49

if.then.21:                                       ; preds = %if.end.17
  %20 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  call void @S_hv_magic_check(%struct.hv* %20, i8* %needs_copy, i8* %needs_store)
  %21 = load i8, i8* %needs_copy, align 1
  %tobool22 = icmp ne i8 %21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.48

if.then.23:                                       ; preds = %if.then.21
  %22 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %23 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %24 = load i8*, i8** %key.addr, align 8
  %25 = load i64, i64* %klen.addr, align 8
  %26 = load i32, i32* %k_flags.addr, align 4
  %and24 = and i32 %26, -257
  %27 = load i32, i32* %hash.addr, align 4
  %call25 = call %struct.he* @S_hv_fetch_common(%struct.hv* %22, %struct.sv* %23, i8* %24, i64 %25, i32 %and24, i32 4, %struct.sv* null, i32 %27)
  store %struct.he* %call25, %struct.he** %entry1, align 8
  %28 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool26 = icmp ne %struct.he* %28, null
  br i1 %tobool26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %if.then.23
  %29 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %29, i32 0, i32 2
  %30 = load %struct.sv*, %struct.sv** %hent_val, align 8
  br label %cond.end.29

cond.false.28:                                    ; preds = %if.then.23
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.28, %cond.true.27
  %cond30 = phi %struct.sv* [ %30, %cond.true.27 ], [ null, %cond.false.28 ]
  store %struct.sv* %cond30, %struct.sv** %sv, align 8
  %31 = load %struct.sv*, %struct.sv** %sv, align 8
  %tobool31 = icmp ne %struct.sv* %31, null
  br i1 %tobool31, label %if.then.32, label %if.end.47

if.then.32:                                       ; preds = %cond.end.29
  %32 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags33 = getelementptr inbounds %struct.sv, %struct.sv* %32, i32 0, i32 2
  %33 = load i32, i32* %sv_flags33, align 4
  %and34 = and i32 %33, 57344
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.32
  %34 = load %struct.sv*, %struct.sv** %sv, align 8
  %call37 = call i32 @Perl_mg_clear(%struct.sv* %34)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.32
  %35 = load i8, i8* %needs_store, align 1
  %tobool39 = icmp ne i8 %35, 0
  br i1 %tobool39, label %if.end.46, label %if.then.40

if.then.40:                                       ; preds = %if.end.38
  %36 = load %struct.sv*, %struct.sv** %sv, align 8
  %call41 = call %struct.magic* @Perl_mg_find(%struct.sv* %36, i32 112)
  %tobool42 = icmp ne %struct.magic* %call41, null
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.then.40
  %37 = load %struct.sv*, %struct.sv** %sv, align 8
  %call44 = call i32 @Perl_sv_unmagic(%struct.sv* %37, i32 112)
  %38 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %38, %struct.sv** %retval
  br label %return

if.end.45:                                        ; preds = %if.then.40
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.end.46:                                        ; preds = %if.end.38
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %cond.end.29
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.21
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.17
  %39 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any50 = getelementptr inbounds %struct.hv, %struct.hv* %39, i32 0, i32 0
  %40 = load %struct.xpvhv*, %struct.xpvhv** %sv_any50, align 8
  store %struct.xpvhv* %40, %struct.xpvhv** %xhv, align 8
  %41 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %41, i32 0, i32 0
  %42 = load i8*, i8** %xhv_array, align 8
  %tobool51 = icmp ne i8* %42, null
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.end.49
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.end.53:                                        ; preds = %if.end.49
  %43 = load i8, i8* %is_utf8, align 1
  %tobool54 = icmp ne i8 %43, 0
  br i1 %tobool54, label %if.then.55, label %if.end.73

if.then.55:                                       ; preds = %if.end.53
  %44 = load i8*, i8** %key.addr, align 8
  store i8* %44, i8** %keysave, align 8
  %45 = load i8*, i8** %key.addr, align 8
  %call56 = call i8* @Perl_bytes_from_utf8(i8* %45, i64* %klen.addr, i8* %is_utf8)
  store i8* %call56, i8** %key.addr, align 8
  %46 = load i8, i8* %is_utf8, align 1
  %tobool57 = icmp ne i8 %46, 0
  br i1 %tobool57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.then.55
  %47 = load i32, i32* %k_flags.addr, align 4
  %or = or i32 %47, 1
  store i32 %or, i32* %k_flags.addr, align 4
  br label %if.end.61

if.else.59:                                       ; preds = %if.then.55
  %48 = load i32, i32* %k_flags.addr, align 4
  %and60 = and i32 %48, -2
  store i32 %and60, i32* %k_flags.addr, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.58
  %49 = load i8*, i8** %key.addr, align 8
  %50 = load i8*, i8** %keysave, align 8
  %cmp62 = icmp ne i8* %49, %50
  br i1 %cmp62, label %if.then.64, label %if.end.70

if.then.64:                                       ; preds = %if.end.61
  %51 = load i32, i32* %k_flags.addr, align 4
  %and65 = and i32 %51, 256
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.64
  %52 = load i8*, i8** %keysave, align 8
  call void @Perl_safesysfree(i8* %52)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.then.64
  %53 = load i32, i32* %k_flags.addr, align 4
  %or69 = or i32 %53, 258
  store i32 %or69, i32* %k_flags.addr, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.68, %if.end.61
  %54 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %55 = bitcast %struct.hv* %54 to %struct.sv*
  %sv_flags71 = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 2
  %56 = load i32, i32* %sv_flags71, align 4
  %or72 = or i32 %56, -2147483648
  store i32 %or72, i32* %sv_flags71, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.70, %if.end.53
  %57 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags74 = getelementptr inbounds %struct.hv, %struct.hv* %57, i32 0, i32 2
  %58 = load i32, i32* %sv_flags74, align 4
  %and75 = and i32 %58, 268435456
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.else.89

if.then.77:                                       ; preds = %if.end.73
  %59 = load i8*, i8** %key.addr, align 8
  store i8* %59, i8** %s_PeRlHaSh_tmp, align 8
  %60 = load i8*, i8** %s_PeRlHaSh_tmp, align 8
  store i8* %60, i8** %s_PeRlHaSh, align 8
  %61 = load i64, i64* %klen.addr, align 8
  %conv78 = trunc i64 %61 to i32
  store i32 %conv78, i32* %i_PeRlHaSh, align 4
  %62 = load i64, i64* @PL_rehash_seed, align 8
  %conv79 = trunc i64 %62 to i32
  store i32 %conv79, i32* %hash_PeRlHaSh, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.77
  %63 = load i32, i32* %i_PeRlHaSh, align 4
  %dec = add nsw i32 %63, -1
  store i32 %dec, i32* %i_PeRlHaSh, align 4
  %tobool80 = icmp ne i32 %63, 0
  br i1 %tobool80, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %64 = load i8*, i8** %s_PeRlHaSh, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr, i8** %s_PeRlHaSh, align 8
  %65 = load i8, i8* %64, align 1
  %conv81 = zext i8 %65 to i32
  %66 = load i32, i32* %hash_PeRlHaSh, align 4
  %add = add i32 %66, %conv81
  store i32 %add, i32* %hash_PeRlHaSh, align 4
  %67 = load i32, i32* %hash_PeRlHaSh, align 4
  %shl = shl i32 %67, 10
  %68 = load i32, i32* %hash_PeRlHaSh, align 4
  %add82 = add i32 %68, %shl
  store i32 %add82, i32* %hash_PeRlHaSh, align 4
  %69 = load i32, i32* %hash_PeRlHaSh, align 4
  %shr = lshr i32 %69, 6
  %70 = load i32, i32* %hash_PeRlHaSh, align 4
  %xor = xor i32 %70, %shr
  store i32 %xor, i32* %hash_PeRlHaSh, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %71 = load i32, i32* %hash_PeRlHaSh, align 4
  %shl83 = shl i32 %71, 3
  %72 = load i32, i32* %hash_PeRlHaSh, align 4
  %add84 = add i32 %72, %shl83
  store i32 %add84, i32* %hash_PeRlHaSh, align 4
  %73 = load i32, i32* %hash_PeRlHaSh, align 4
  %shr85 = lshr i32 %73, 11
  %74 = load i32, i32* %hash_PeRlHaSh, align 4
  %xor86 = xor i32 %74, %shr85
  store i32 %xor86, i32* %hash_PeRlHaSh, align 4
  %75 = load i32, i32* %hash_PeRlHaSh, align 4
  %76 = load i32, i32* %hash_PeRlHaSh, align 4
  %shl87 = shl i32 %76, 15
  %add88 = add i32 %75, %shl87
  store i32 %add88, i32* %hash.addr, align 4
  store i32 %add88, i32* %tmp
  %77 = load i32, i32* %tmp
  br label %if.end.121

if.else.89:                                       ; preds = %if.end.73
  %78 = load i32, i32* %hash.addr, align 4
  %tobool90 = icmp ne i32 %78, 0
  br i1 %tobool90, label %if.end.120, label %if.then.91

if.then.91:                                       ; preds = %if.else.89
  %79 = load i8*, i8** %key.addr, align 8
  store i8* %79, i8** %s_PeRlHaSh_tmp93, align 8
  %80 = load i8*, i8** %s_PeRlHaSh_tmp93, align 8
  store i8* %80, i8** %s_PeRlHaSh95, align 8
  %81 = load i64, i64* %klen.addr, align 8
  %conv98 = trunc i64 %81 to i32
  store i32 %conv98, i32* %i_PeRlHaSh97, align 4
  store i32 0, i32* %hash_PeRlHaSh100, align 4
  br label %while.cond.101

while.cond.101:                                   ; preds = %while.body.104, %if.then.91
  %82 = load i32, i32* %i_PeRlHaSh97, align 4
  %dec102 = add nsw i32 %82, -1
  store i32 %dec102, i32* %i_PeRlHaSh97, align 4
  %tobool103 = icmp ne i32 %82, 0
  br i1 %tobool103, label %while.body.104, label %while.end.112

while.body.104:                                   ; preds = %while.cond.101
  %83 = load i8*, i8** %s_PeRlHaSh95, align 8
  %incdec.ptr105 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr105, i8** %s_PeRlHaSh95, align 8
  %84 = load i8, i8* %83, align 1
  %conv106 = zext i8 %84 to i32
  %85 = load i32, i32* %hash_PeRlHaSh100, align 4
  %add107 = add i32 %85, %conv106
  store i32 %add107, i32* %hash_PeRlHaSh100, align 4
  %86 = load i32, i32* %hash_PeRlHaSh100, align 4
  %shl108 = shl i32 %86, 10
  %87 = load i32, i32* %hash_PeRlHaSh100, align 4
  %add109 = add i32 %87, %shl108
  store i32 %add109, i32* %hash_PeRlHaSh100, align 4
  %88 = load i32, i32* %hash_PeRlHaSh100, align 4
  %shr110 = lshr i32 %88, 6
  %89 = load i32, i32* %hash_PeRlHaSh100, align 4
  %xor111 = xor i32 %89, %shr110
  store i32 %xor111, i32* %hash_PeRlHaSh100, align 4
  br label %while.cond.101

while.end.112:                                    ; preds = %while.cond.101
  %90 = load i32, i32* %hash_PeRlHaSh100, align 4
  %shl113 = shl i32 %90, 3
  %91 = load i32, i32* %hash_PeRlHaSh100, align 4
  %add114 = add i32 %91, %shl113
  store i32 %add114, i32* %hash_PeRlHaSh100, align 4
  %92 = load i32, i32* %hash_PeRlHaSh100, align 4
  %shr115 = lshr i32 %92, 11
  %93 = load i32, i32* %hash_PeRlHaSh100, align 4
  %xor116 = xor i32 %93, %shr115
  store i32 %xor116, i32* %hash_PeRlHaSh100, align 4
  %94 = load i32, i32* %hash_PeRlHaSh100, align 4
  %95 = load i32, i32* %hash_PeRlHaSh100, align 4
  %shl118 = shl i32 %95, 15
  %add119 = add i32 %94, %shl118
  store i32 %add119, i32* %hash.addr, align 4
  store i32 %add119, i32* %tmp117
  %96 = load i32, i32* %tmp117
  br label %if.end.120

if.end.120:                                       ; preds = %while.end.112, %if.else.89
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %while.end
  %97 = load i32, i32* %k_flags.addr, align 4
  %and122 = and i32 %97, 255
  store i32 %and122, i32* %masked_flags, align 4
  %98 = load i32, i32* %hash.addr, align 4
  %99 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %99, i32 0, i32 2
  %100 = load i64, i64* %xhv_max, align 8
  %conv123 = trunc i64 %100 to i32
  %and124 = and i32 %98, %conv123
  %idxprom = zext i32 %and124 to i64
  %101 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array125 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %101, i32 0, i32 0
  %102 = load i8*, i8** %xhv_array125, align 8
  %103 = bitcast i8* %102 to %struct.he**
  %arrayidx = getelementptr inbounds %struct.he*, %struct.he** %103, i64 %idxprom
  store %struct.he** %arrayidx, %struct.he*** %oentry, align 8
  %104 = load %struct.he**, %struct.he*** %oentry, align 8
  %105 = load %struct.he*, %struct.he** %104, align 8
  store %struct.he* %105, %struct.he** %entry1, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.121
  %106 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool126 = icmp ne %struct.he* %106, null
  br i1 %tobool126, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %107 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %107, i32 0, i32 1
  %108 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_hash = getelementptr inbounds %struct.hek, %struct.hek* %108, i32 0, i32 0
  %109 = load i32, i32* %hek_hash, align 4
  %110 = load i32, i32* %hash.addr, align 4
  %cmp127 = icmp ne i32 %109, %110
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %for.body
  br label %for.inc

if.end.130:                                       ; preds = %for.body
  %111 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek131 = getelementptr inbounds %struct.he, %struct.he* %111, i32 0, i32 1
  %112 = load %struct.hek*, %struct.hek** %hent_hek131, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %112, i32 0, i32 1
  %113 = load i32, i32* %hek_len, align 4
  %114 = load i64, i64* %klen.addr, align 8
  %conv132 = trunc i64 %114 to i32
  %cmp133 = icmp ne i32 %113, %conv132
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.130
  br label %for.inc

if.end.136:                                       ; preds = %if.end.130
  %115 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek137 = getelementptr inbounds %struct.he, %struct.he* %115, i32 0, i32 1
  %116 = load %struct.hek*, %struct.hek** %hent_hek137, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %116, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  %117 = load i8*, i8** %key.addr, align 8
  %cmp138 = icmp ne i8* %arraydecay, %117
  br i1 %cmp138, label %land.lhs.true, label %if.end.146

land.lhs.true:                                    ; preds = %if.end.136
  %118 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek140 = getelementptr inbounds %struct.he, %struct.he* %118, i32 0, i32 1
  %119 = load %struct.hek*, %struct.hek** %hent_hek140, align 8
  %hek_key141 = getelementptr inbounds %struct.hek, %struct.hek* %119, i32 0, i32 2
  %arraydecay142 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key141, i32 0, i32 0
  %120 = load i8*, i8** %key.addr, align 8
  %121 = load i64, i64* %klen.addr, align 8
  %call143 = call i32 @memcmp(i8* %arraydecay142, i8* %120, i64 %121)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %land.lhs.true
  br label %for.inc

if.end.146:                                       ; preds = %land.lhs.true, %if.end.136
  %122 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek147 = getelementptr inbounds %struct.he, %struct.he* %122, i32 0, i32 1
  %123 = load %struct.hek*, %struct.hek** %hent_hek147, align 8
  %hek_key148 = getelementptr inbounds %struct.hek, %struct.hek* %123, i32 0, i32 2
  %arraydecay149 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key148, i32 0, i32 0
  %124 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek150 = getelementptr inbounds %struct.he, %struct.he* %124, i32 0, i32 1
  %125 = load %struct.hek*, %struct.hek** %hent_hek150, align 8
  %hek_len151 = getelementptr inbounds %struct.hek, %struct.hek* %125, i32 0, i32 1
  %126 = load i32, i32* %hek_len151, align 4
  %idx.ext = sext i32 %126 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay149, i64 %idx.ext
  %add.ptr152 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %127 = load i8, i8* %add.ptr152, align 1
  %conv153 = zext i8 %127 to i32
  %128 = load i32, i32* %masked_flags, align 4
  %xor154 = xor i32 %conv153, %128
  %and155 = and i32 %xor154, 1
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end.146
  br label %for.inc

if.end.158:                                       ; preds = %if.end.146
  %129 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val159 = getelementptr inbounds %struct.he, %struct.he* %129, i32 0, i32 2
  %130 = load %struct.sv*, %struct.sv** %hent_val159, align 8
  %cmp160 = icmp eq %struct.sv* %130, @PL_sv_placeholder
  br i1 %cmp160, label %if.then.162, label %if.else.167

if.then.162:                                      ; preds = %if.end.158
  %131 = load i32, i32* %k_flags.addr, align 4
  %and163 = and i32 %131, 256
  %tobool164 = icmp ne i32 %and163, 0
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.then.162
  %132 = load i8*, i8** %key.addr, align 8
  call void @Perl_safesysfree(i8* %132)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.then.162
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.else.167:                                      ; preds = %if.end.158
  %133 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags168 = getelementptr inbounds %struct.hv, %struct.hv* %133, i32 0, i32 2
  %134 = load i32, i32* %sv_flags168, align 4
  %and169 = and i32 %134, 8388608
  %tobool170 = icmp ne i32 %and169, 0
  br i1 %tobool170, label %land.lhs.true.171, label %if.end.181

land.lhs.true.171:                                ; preds = %if.else.167
  %135 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val172 = getelementptr inbounds %struct.he, %struct.he* %135, i32 0, i32 2
  %136 = load %struct.sv*, %struct.sv** %hent_val172, align 8
  %tobool173 = icmp ne %struct.sv* %136, null
  br i1 %tobool173, label %land.lhs.true.174, label %if.end.181

land.lhs.true.174:                                ; preds = %land.lhs.true.171
  %137 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val175 = getelementptr inbounds %struct.he, %struct.he* %137, i32 0, i32 2
  %138 = load %struct.sv*, %struct.sv** %hent_val175, align 8
  %sv_flags176 = getelementptr inbounds %struct.sv, %struct.sv* %138, i32 0, i32 2
  %139 = load i32, i32* %sv_flags176, align 4
  %and177 = and i32 %139, 8388608
  %tobool178 = icmp ne i32 %and177, 0
  br i1 %tobool178, label %if.then.179, label %if.end.181

if.then.179:                                      ; preds = %land.lhs.true.174
  %140 = load i32, i32* %k_flags.addr, align 4
  %141 = load i8*, i8** %key.addr, align 8
  %142 = load i64, i64* %klen.addr, align 8
  %conv180 = trunc i64 %142 to i32
  call void @S_hv_notallowed(i32 %140, i8* %141, i32 %conv180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.179, %land.lhs.true.174, %land.lhs.true.171, %if.else.167
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181
  %143 = load i32, i32* %k_flags.addr, align 4
  %and183 = and i32 %143, 256
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.end.182
  %144 = load i8*, i8** %key.addr, align 8
  call void @Perl_safesysfree(i8* %144)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %if.end.182
  %145 = load i32, i32* %d_flags.addr, align 4
  %and187 = and i32 %145, 2
  %tobool188 = icmp ne i32 %and187, 0
  br i1 %tobool188, label %if.then.189, label %if.else.190

if.then.189:                                      ; preds = %if.end.186
  store %struct.sv* null, %struct.sv** %sv, align 8
  br label %if.end.194

if.else.190:                                      ; preds = %if.end.186
  %146 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val191 = getelementptr inbounds %struct.he, %struct.he* %146, i32 0, i32 2
  %147 = load %struct.sv*, %struct.sv** %hent_val191, align 8
  %call192 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %147)
  store %struct.sv* %call192, %struct.sv** %sv, align 8
  %148 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val193 = getelementptr inbounds %struct.he, %struct.he* %148, i32 0, i32 2
  store %struct.sv* @PL_sv_placeholder, %struct.sv** %hent_val193, align 8
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.190, %if.then.189
  %149 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags195 = getelementptr inbounds %struct.hv, %struct.hv* %149, i32 0, i32 2
  %150 = load i32, i32* %sv_flags195, align 4
  %and196 = and i32 %150, 8388608
  %tobool197 = icmp ne i32 %and196, 0
  br i1 %tobool197, label %if.then.198, label %if.else.201

if.then.198:                                      ; preds = %if.end.194
  %151 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val199 = getelementptr inbounds %struct.he, %struct.he* %151, i32 0, i32 2
  %152 = load %struct.sv*, %struct.sv** %hent_val199, align 8
  call void @Perl_sv_free(%struct.sv* %152)
  %153 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val200 = getelementptr inbounds %struct.he, %struct.he* %153, i32 0, i32 2
  store %struct.sv* @PL_sv_placeholder, %struct.sv** %hent_val200, align 8
  %154 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xnv_nv = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %154, i32 0, i32 4
  %155 = load double, double* %xnv_nv, align 8
  %inc = fadd double %155, 1.000000e+00
  store double %inc, double* %xnv_nv, align 8
  br label %if.end.223

if.else.201:                                      ; preds = %if.end.194
  %156 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %156, i32 0, i32 0
  %157 = load %struct.he*, %struct.he** %hent_next, align 8
  %158 = load %struct.he**, %struct.he*** %oentry, align 8
  store %struct.he* %157, %struct.he** %158, align 8
  %159 = load i32, i32* %i, align 4
  %tobool202 = icmp ne i32 %159, 0
  br i1 %tobool202, label %land.lhs.true.203, label %if.end.207

land.lhs.true.203:                                ; preds = %if.else.201
  %160 = load %struct.he**, %struct.he*** %oentry, align 8
  %161 = load %struct.he*, %struct.he** %160, align 8
  %tobool204 = icmp ne %struct.he* %161, null
  br i1 %tobool204, label %if.end.207, label %if.then.205

if.then.205:                                      ; preds = %land.lhs.true.203
  %162 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_fill = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %162, i32 0, i32 1
  %163 = load i64, i64* %xhv_fill, align 8
  %dec206 = add i64 %163, -1
  store i64 %dec206, i64* %xhv_fill, align 8
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.205, %land.lhs.true.203, %if.else.201
  %164 = load %struct.he*, %struct.he** %entry1, align 8
  %165 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_eiter = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %165, i32 0, i32 8
  %166 = load %struct.he*, %struct.he** %xhv_eiter, align 8
  %cmp208 = icmp eq %struct.he* %164, %166
  br i1 %cmp208, label %if.then.210, label %if.else.213

if.then.210:                                      ; preds = %if.end.207
  %167 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags211 = getelementptr inbounds %struct.hv, %struct.hv* %167, i32 0, i32 2
  %168 = load i32, i32* %sv_flags211, align 4
  %or212 = or i32 %168, 1073741824
  store i32 %or212, i32* %sv_flags211, align 4
  br label %if.end.214

if.else.213:                                      ; preds = %if.end.207
  %169 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %170 = load %struct.he*, %struct.he** %entry1, align 8
  call void @Perl_hv_free_ent(%struct.hv* %169, %struct.he* %170)
  br label %if.end.214

if.end.214:                                       ; preds = %if.else.213, %if.then.210
  %171 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_keys = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %171, i32 0, i32 3
  %172 = load i64, i64* %xhv_keys, align 8
  %dec215 = add nsw i64 %172, -1
  store i64 %dec215, i64* %xhv_keys, align 8
  %173 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_keys216 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %173, i32 0, i32 3
  %174 = load i64, i64* %xhv_keys216, align 8
  %cmp217 = icmp eq i64 %174, 0
  br i1 %cmp217, label %if.then.219, label %if.end.222

if.then.219:                                      ; preds = %if.end.214
  %175 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags220 = getelementptr inbounds %struct.hv, %struct.hv* %175, i32 0, i32 2
  %176 = load i32, i32* %sv_flags220, align 4
  %and221 = and i32 %176, 2147483647
  store i32 %and221, i32* %sv_flags220, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.219, %if.end.214
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.then.198
  %177 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %177, %struct.sv** %retval
  br label %return

for.inc:                                          ; preds = %if.then.157, %if.then.145, %if.then.135, %if.then.129
  store i32 0, i32* %i, align 4
  %178 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next224 = getelementptr inbounds %struct.he, %struct.he* %178, i32 0, i32 0
  store %struct.he** %hent_next224, %struct.he*** %oentry, align 8
  %179 = load %struct.he**, %struct.he*** %oentry, align 8
  %180 = load %struct.he*, %struct.he** %179, align 8
  store %struct.he* %180, %struct.he** %entry1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %181 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags225 = getelementptr inbounds %struct.hv, %struct.hv* %181, i32 0, i32 2
  %182 = load i32, i32* %sv_flags225, align 4
  %and226 = and i32 %182, 8388608
  %tobool227 = icmp ne i32 %and226, 0
  br i1 %tobool227, label %if.then.228, label %if.end.230

if.then.228:                                      ; preds = %for.end
  %183 = load i32, i32* %k_flags.addr, align 4
  %184 = load i8*, i8** %key.addr, align 8
  %185 = load i64, i64* %klen.addr, align 8
  %conv229 = trunc i64 %185 to i32
  call void @S_hv_notallowed(i32 %183, i8* %184, i32 %conv229, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.228, %for.end
  %186 = load i32, i32* %k_flags.addr, align 4
  %and231 = and i32 %186, 256
  %tobool232 = icmp ne i32 %and231, 0
  br i1 %tobool232, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %if.end.230
  %187 = load i8*, i8** %key.addr, align 8
  call void @Perl_safesysfree(i8* %187)
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.233, %if.end.230
  store %struct.sv* null, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end.234, %if.end.223, %if.end.166, %if.then.52, %if.end.45, %if.then.43, %if.then
  %188 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %188
}

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_hv_delete_ent(%struct.hv* %hv, %struct.sv* %keysv, i32 %flags, i32 %hash) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %keysv.addr = alloca %struct.sv*, align 8
  %flags.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store %struct.sv* %keysv, %struct.sv** %keysv.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %1 = load %struct.sv*, %struct.sv** %keysv.addr, align 8
  %2 = load i32, i32* %flags.addr, align 4
  %3 = load i32, i32* %hash.addr, align 4
  %call = call %struct.sv* @S_hv_delete_common(%struct.hv* %0, %struct.sv* %1, i8* null, i64 0, i32 0, i32 %2, i32 %3)
  ret %struct.sv* %call
}

; Function Attrs: nounwind uwtable
define void @Perl_hv_ksplit(%struct.hv* %hv, i64 %newmax) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %newmax.addr = alloca i64, align 8
  %xhv = alloca %struct.xpvhv*, align 8
  %oldsize = alloca i32, align 4
  %newsize = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i8*, align 8
  %aep = alloca %struct.he**, align 8
  %entry1 = alloca %struct.he*, align 8
  %oentry = alloca %struct.he**, align 8
  %new_chunk = alloca i8*, align 8
  %new_chunk_size = alloca i32, align 4
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store i64 %newmax, i64* %newmax.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %0, i32 0, i32 0
  %1 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  store %struct.xpvhv* %1, %struct.xpvhv** %xhv, align 8
  %2 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %2, i32 0, i32 2
  %3 = load i64, i64* %xhv_max, align 8
  %conv = trunc i64 %3 to i32
  %add = add nsw i32 %conv, 1
  store i32 %add, i32* %oldsize, align 4
  %4 = load i64, i64* %newmax.addr, align 8
  %conv2 = trunc i64 %4 to i32
  store i32 %conv2, i32* %newsize, align 4
  %5 = load i32, i32* %newsize, align 4
  %conv3 = sext i32 %5 to i64
  %6 = load i64, i64* %newmax.addr, align 8
  %cmp = icmp ne i64 %conv3, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i64, i64* %newmax.addr, align 8
  %8 = load i32, i32* %oldsize, align 4
  %conv5 = sext i32 %8 to i64
  %cmp6 = icmp sle i64 %7, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %for.end.142

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load i32, i32* %newsize, align 4
  %10 = load i32, i32* %newsize, align 4
  %neg = xor i32 %10, -1
  %add8 = add nsw i32 1, %neg
  %and = and i32 %9, %add8
  %11 = load i32, i32* %newsize, align 4
  %cmp9 = icmp ne i32 %and, %11
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %newsize, align 4
  %13 = load i32, i32* %newsize, align 4
  %neg11 = xor i32 %13, -1
  %add12 = add nsw i32 1, %neg11
  %and13 = and i32 %12, %add12
  %neg14 = xor i32 %and13, -1
  %14 = load i32, i32* %newsize, align 4
  %and15 = and i32 %14, %neg14
  store i32 %and15, i32* %newsize, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %newsize, align 4
  %conv16 = sext i32 %15 to i64
  %16 = load i64, i64* %newmax.addr, align 8
  %cmp17 = icmp slt i64 %conv16, %16
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.end
  %17 = load i32, i32* %newsize, align 4
  %mul = mul nsw i32 %17, 2
  store i32 %mul, i32* %newsize, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %while.end
  %18 = load i32, i32* %newsize, align 4
  %conv21 = sext i32 %18 to i64
  %19 = load i64, i64* %newmax.addr, align 8
  %cmp22 = icmp slt i64 %conv21, %19
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  br label %for.end.142

if.end.25:                                        ; preds = %if.end.20
  %20 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %20, i32 0, i32 0
  %21 = load i8*, i8** %xhv_array, align 8
  store i8* %21, i8** %a, align 8
  %22 = load i8*, i8** %a, align 8
  %tobool = icmp ne i8* %22, null
  br i1 %tobool, label %if.then.26, label %if.else.76

if.then.26:                                       ; preds = %if.end.25
  store i8 1, i8* @PL_nomemok, align 1
  %23 = load i32, i32* %newsize, align 4
  %cmp27 = icmp slt i32 %23, 64
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.26
  %24 = load i32, i32* %newsize, align 4
  %conv29 = sext i32 %24 to i64
  %mul30 = mul i64 %conv29, 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.26
  %25 = load i32, i32* %newsize, align 4
  %conv31 = sext i32 %25 to i64
  %mul32 = mul i64 %conv31, 8
  %mul33 = mul i64 %mul32, 2
  %sub = sub i64 %mul33, 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul30, %cond.true ], [ %sub, %cond.false ]
  %mul34 = mul i64 %cond, 1
  %call = call i8* @Perl_safesysmalloc(i64 %mul34)
  store i8* %call, i8** %a, align 8
  %26 = load i8*, i8** %a, align 8
  %tobool35 = icmp ne i8* %26, null
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %cond.end
  store i8 0, i8* @PL_nomemok, align 1
  br label %for.end.142

if.end.37:                                        ; preds = %cond.end
  %27 = load i8*, i8** %a, align 8
  %28 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array38 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %28, i32 0, i32 0
  %29 = load i8*, i8** %xhv_array38, align 8
  %30 = load i32, i32* %oldsize, align 4
  %conv39 = sext i32 %30 to i64
  %mul40 = mul i64 %conv39, 8
  %mul41 = mul i64 %mul40, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %29, i64 %mul41, i32 1, i1 false)
  %31 = load i32, i32* %oldsize, align 4
  %cmp42 = icmp sge i32 %31, 64
  br i1 %cmp42, label %if.then.44, label %if.else.67

if.then.44:                                       ; preds = %if.end.37
  %32 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array45 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %32, i32 0, i32 0
  %33 = load i8*, i8** %xhv_array45, align 8
  store i8* %33, i8** %new_chunk, align 8
  %34 = load i32, i32* %oldsize, align 4
  %cmp46 = icmp slt i32 %34, 64
  br i1 %cmp46, label %cond.true.48, label %cond.false.51

cond.true.48:                                     ; preds = %if.then.44
  %35 = load i32, i32* %oldsize, align 4
  %conv49 = sext i32 %35 to i64
  %mul50 = mul i64 %conv49, 8
  br label %cond.end.56

cond.false.51:                                    ; preds = %if.then.44
  %36 = load i32, i32* %oldsize, align 4
  %conv52 = sext i32 %36 to i64
  %mul53 = mul i64 %conv52, 8
  %mul54 = mul i64 %mul53, 2
  %sub55 = sub i64 %mul54, 16
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.51, %cond.true.48
  %cond57 = phi i64 [ %mul50, %cond.true.48 ], [ %sub55, %cond.false.51 ]
  %conv58 = trunc i64 %cond57 to i32
  store i32 %conv58, i32* %new_chunk_size, align 4
  %37 = load i32, i32* %new_chunk_size, align 4
  %38 = load i32, i32* @PL_nice_chunk_size, align 4
  %cmp59 = icmp ugt i32 %37, %38
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %cond.end.56
  %39 = load i8*, i8** @PL_nice_chunk, align 8
  %tobool62 = icmp ne i8* %39, null
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.61
  %40 = load i8*, i8** @PL_nice_chunk, align 8
  call void @Perl_safesysfree(i8* %40)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.then.61
  %41 = load i8*, i8** %new_chunk, align 8
  store i8* %41, i8** @PL_nice_chunk, align 8
  %42 = load i32, i32* %new_chunk_size, align 4
  store i32 %42, i32* @PL_nice_chunk_size, align 4
  br label %if.end.66

if.else:                                          ; preds = %cond.end.56
  %43 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array65 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %43, i32 0, i32 0
  %44 = load i8*, i8** %xhv_array65, align 8
  call void @Perl_safesysfree(i8* %44)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %if.end.64
  br label %if.end.69

if.else.67:                                       ; preds = %if.end.37
  %45 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array68 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %45, i32 0, i32 0
  %46 = load i8*, i8** %xhv_array68, align 8
  call void @Perl_safesysfree(i8* %46)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.end.66
  store i8 0, i8* @PL_nomemok, align 1
  %47 = load i32, i32* %oldsize, align 4
  %conv70 = sext i32 %47 to i64
  %mul71 = mul i64 %conv70, 8
  %48 = load i8*, i8** %a, align 8
  %arrayidx = getelementptr inbounds i8, i8* %48, i64 %mul71
  %49 = load i32, i32* %newsize, align 4
  %50 = load i32, i32* %oldsize, align 4
  %sub72 = sub nsw i32 %49, %50
  %conv73 = sext i32 %sub72 to i64
  %mul74 = mul i64 %conv73, 8
  %mul75 = mul i64 %mul74, 1
  call void @llvm.memset.p0i8.i64(i8* %arrayidx, i8 0, i64 %mul75, i32 1, i1 false)
  br label %if.end.104

if.else.76:                                       ; preds = %if.end.25
  %51 = load i32, i32* %newsize, align 4
  %cmp77 = icmp slt i32 %51, 64
  br i1 %cmp77, label %cond.true.79, label %cond.false.82

cond.true.79:                                     ; preds = %if.else.76
  %52 = load i32, i32* %newsize, align 4
  %conv80 = sext i32 %52 to i64
  %mul81 = mul i64 %conv80, 8
  br label %cond.end.87

cond.false.82:                                    ; preds = %if.else.76
  %53 = load i32, i32* %newsize, align 4
  %conv83 = sext i32 %53 to i64
  %mul84 = mul i64 %conv83, 8
  %mul85 = mul i64 %mul84, 2
  %sub86 = sub i64 %mul85, 16
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.82, %cond.true.79
  %cond88 = phi i64 [ %mul81, %cond.true.79 ], [ %sub86, %cond.false.82 ]
  %mul89 = mul i64 %cond88, 1
  %call90 = call i8* @Perl_safesysmalloc(i64 %mul89)
  store i8* %call90, i8** %a, align 8
  %54 = load i8*, i8** %a, align 8
  %55 = load i32, i32* %newsize, align 4
  %cmp91 = icmp slt i32 %55, 64
  br i1 %cmp91, label %cond.true.93, label %cond.false.96

cond.true.93:                                     ; preds = %cond.end.87
  %56 = load i32, i32* %newsize, align 4
  %conv94 = sext i32 %56 to i64
  %mul95 = mul i64 %conv94, 8
  br label %cond.end.101

cond.false.96:                                    ; preds = %cond.end.87
  %57 = load i32, i32* %newsize, align 4
  %conv97 = sext i32 %57 to i64
  %mul98 = mul i64 %conv97, 8
  %mul99 = mul i64 %mul98, 2
  %sub100 = sub i64 %mul99, 16
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.96, %cond.true.93
  %cond102 = phi i64 [ %mul95, %cond.true.93 ], [ %sub100, %cond.false.96 ]
  %mul103 = mul i64 %cond102, 1
  call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 %mul103, i32 1, i1 false)
  br label %if.end.104

if.end.104:                                       ; preds = %cond.end.101, %if.end.69
  %58 = load i32, i32* %newsize, align 4
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %newsize, align 4
  %conv105 = sext i32 %dec to i64
  %59 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max106 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %59, i32 0, i32 2
  store i64 %conv105, i64* %xhv_max106, align 8
  %60 = load i8*, i8** %a, align 8
  %61 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array107 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %61, i32 0, i32 0
  store i8* %60, i8** %xhv_array107, align 8
  %62 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_fill = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %62, i32 0, i32 1
  %63 = load i64, i64* %xhv_fill, align 8
  %tobool108 = icmp ne i64 %63, 0
  br i1 %tobool108, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %if.end.104
  br label %for.end.142

if.end.110:                                       ; preds = %if.end.104
  %64 = load i8*, i8** %a, align 8
  %65 = bitcast i8* %64 to %struct.he**
  store %struct.he** %65, %struct.he*** %aep, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.140, %if.end.110
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %oldsize, align 4
  %cmp111 = icmp slt i32 %66, %67
  br i1 %cmp111, label %for.body, label %for.end.142

for.body:                                         ; preds = %for.cond
  %68 = load %struct.he**, %struct.he*** %aep, align 8
  %69 = load %struct.he*, %struct.he** %68, align 8
  %tobool113 = icmp ne %struct.he* %69, null
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %for.body
  br label %for.inc.140

if.end.115:                                       ; preds = %for.body
  %70 = load %struct.he**, %struct.he*** %aep, align 8
  store %struct.he** %70, %struct.he*** %oentry, align 8
  %71 = load %struct.he**, %struct.he*** %aep, align 8
  %72 = load %struct.he*, %struct.he** %71, align 8
  store %struct.he* %72, %struct.he** %entry1, align 8
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc, %if.end.115
  %73 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool117 = icmp ne %struct.he* %73, null
  br i1 %tobool117, label %for.body.118, label %for.end

for.body.118:                                     ; preds = %for.cond.116
  %74 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %74, i32 0, i32 1
  %75 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_hash = getelementptr inbounds %struct.hek, %struct.hek* %75, i32 0, i32 0
  %76 = load i32, i32* %hek_hash, align 4
  %77 = load i32, i32* %newsize, align 4
  %and119 = and i32 %76, %77
  store i32 %and119, i32* %j, align 4
  %78 = load i32, i32* %i, align 4
  %cmp120 = icmp ne i32 %and119, %78
  br i1 %cmp120, label %if.then.122, label %if.else.132

if.then.122:                                      ; preds = %for.body.118
  %79 = load i32, i32* %i, align 4
  %80 = load i32, i32* %j, align 4
  %sub123 = sub nsw i32 %80, %79
  store i32 %sub123, i32* %j, align 4
  %81 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %81, i32 0, i32 0
  %82 = load %struct.he*, %struct.he** %hent_next, align 8
  %83 = load %struct.he**, %struct.he*** %oentry, align 8
  store %struct.he* %82, %struct.he** %83, align 8
  %84 = load i32, i32* %j, align 4
  %idxprom = sext i32 %84 to i64
  %85 = load %struct.he**, %struct.he*** %aep, align 8
  %arrayidx124 = getelementptr inbounds %struct.he*, %struct.he** %85, i64 %idxprom
  %86 = load %struct.he*, %struct.he** %arrayidx124, align 8
  %87 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next125 = getelementptr inbounds %struct.he, %struct.he* %87, i32 0, i32 0
  store %struct.he* %86, %struct.he** %hent_next125, align 8
  %tobool126 = icmp ne %struct.he* %86, null
  br i1 %tobool126, label %if.end.129, label %if.then.127

if.then.127:                                      ; preds = %if.then.122
  %88 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_fill128 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %88, i32 0, i32 1
  %89 = load i64, i64* %xhv_fill128, align 8
  %inc = add i64 %89, 1
  store i64 %inc, i64* %xhv_fill128, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %if.then.122
  %90 = load %struct.he*, %struct.he** %entry1, align 8
  %91 = load i32, i32* %j, align 4
  %idxprom130 = sext i32 %91 to i64
  %92 = load %struct.he**, %struct.he*** %aep, align 8
  %arrayidx131 = getelementptr inbounds %struct.he*, %struct.he** %92, i64 %idxprom130
  store %struct.he* %90, %struct.he** %arrayidx131, align 8
  br label %for.inc

if.else.132:                                      ; preds = %for.body.118
  %93 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next133 = getelementptr inbounds %struct.he, %struct.he* %93, i32 0, i32 0
  store %struct.he** %hent_next133, %struct.he*** %oentry, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.132
  br label %for.inc

for.inc:                                          ; preds = %if.end.134, %if.end.129
  %94 = load %struct.he**, %struct.he*** %oentry, align 8
  %95 = load %struct.he*, %struct.he** %94, align 8
  store %struct.he* %95, %struct.he** %entry1, align 8
  br label %for.cond.116

for.end:                                          ; preds = %for.cond.116
  %96 = load %struct.he**, %struct.he*** %aep, align 8
  %97 = load %struct.he*, %struct.he** %96, align 8
  %tobool135 = icmp ne %struct.he* %97, null
  br i1 %tobool135, label %if.end.139, label %if.then.136

if.then.136:                                      ; preds = %for.end
  %98 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_fill137 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %98, i32 0, i32 1
  %99 = load i64, i64* %xhv_fill137, align 8
  %dec138 = add i64 %99, -1
  store i64 %dec138, i64* %xhv_fill137, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.136, %for.end
  br label %for.inc.140

for.inc.140:                                      ; preds = %if.end.139, %if.then.114
  %100 = load i32, i32* %i, align 4
  %inc141 = add nsw i32 %100, 1
  store i32 %inc141, i32* %i, align 4
  %101 = load %struct.he**, %struct.he*** %aep, align 8
  %incdec.ptr = getelementptr inbounds %struct.he*, %struct.he** %101, i32 1
  store %struct.he** %incdec.ptr, %struct.he*** %aep, align 8
  br label %for.cond

for.end.142:                                      ; preds = %if.then, %if.then.24, %if.then.36, %if.then.109, %for.cond
  ret void
}

declare i8* @Perl_safesysmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct.hv* @Perl_newHV() #0 {
entry:
  %hv = alloca %struct.hv*, align 8
  %xhv = alloca %struct.xpvhv*, align 8
  %call = call %struct.sv* @Perl_newSV(i64 0)
  %0 = bitcast %struct.sv* %call to %struct.hv*
  store %struct.hv* %0, %struct.hv** %hv, align 8
  %1 = load %struct.hv*, %struct.hv** %hv, align 8
  %2 = bitcast %struct.hv* %1 to %struct.sv*
  %call1 = call signext i8 @Perl_sv_upgrade(%struct.sv* %2, i32 11)
  %3 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %3, i32 0, i32 0
  %4 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  store %struct.xpvhv* %4, %struct.xpvhv** %xhv, align 8
  %5 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_flags = getelementptr inbounds %struct.hv, %struct.hv* %5, i32 0, i32 2
  %6 = load i32, i32* %sv_flags, align 4
  %and = and i32 %6, -67371009
  store i32 %and, i32* %sv_flags, align 4
  %7 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_flags2 = getelementptr inbounds %struct.hv, %struct.hv* %7, i32 0, i32 2
  %8 = load i32, i32* %sv_flags2, align 4
  %and3 = and i32 %8, -33685505
  store i32 %and3, i32* %sv_flags2, align 4
  %9 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_flags4 = getelementptr inbounds %struct.hv, %struct.hv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags4, align 4
  %or = or i32 %10, 536870912
  store i32 %or, i32* %sv_flags4, align 4
  %11 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %11, i32 0, i32 2
  store i64 7, i64* %xhv_max, align 8
  %12 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_fill = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %12, i32 0, i32 1
  store i64 0, i64* %xhv_fill, align 8
  %13 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_pmroot = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %13, i32 0, i32 9
  store %struct.pmop* null, %struct.pmop** %xhv_pmroot, align 8
  %14 = load %struct.hv*, %struct.hv** %hv, align 8
  %call5 = call i32 @Perl_hv_iterinit(%struct.hv* %14)
  %15 = load %struct.hv*, %struct.hv** %hv, align 8
  ret %struct.hv* %15
}

declare %struct.sv* @Perl_newSV(i64) #1

declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @Perl_hv_iterinit(%struct.hv* %hv) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %xhv = alloca %struct.xpvhv*, align 8
  %entry1 = alloca %struct.he*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %tobool = icmp ne %struct.hv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %1, i32 0, i32 0
  %2 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  store %struct.xpvhv* %2, %struct.xpvhv** %xhv, align 8
  %3 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_eiter = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %3, i32 0, i32 8
  %4 = load %struct.he*, %struct.he** %xhv_eiter, align 8
  store %struct.he* %4, %struct.he** %entry1, align 8
  %5 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool2 = icmp ne %struct.he* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.hv, %struct.hv* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_flags, align 4
  %and = and i32 %7, 1073741824
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %land.lhs.true
  %8 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags5 = getelementptr inbounds %struct.hv, %struct.hv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags5, align 4
  %and6 = and i32 %9, -1073741825
  store i32 %and6, i32* %sv_flags5, align 4
  %10 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %11 = load %struct.he*, %struct.he** %entry1, align 8
  call void @Perl_hv_free_ent(%struct.hv* %10, %struct.he* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %12 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_riter = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %12, i32 0, i32 7
  store i32 -1, i32* %xhv_riter, align 4
  %13 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_eiter8 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %13, i32 0, i32 8
  store %struct.he* null, %struct.he** %xhv_eiter8, align 8
  %14 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_keys = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %14, i32 0, i32 3
  %15 = load i64, i64* %xhv_keys, align 8
  %conv = trunc i64 %15 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define %struct.hv* @Perl_newHVhv(%struct.hv* %ohv) #0 {
entry:
  %retval = alloca %struct.hv*, align 8
  %ohv.addr = alloca %struct.hv*, align 8
  %hv = alloca %struct.hv*, align 8
  %hv_max = alloca i64, align 8
  %hv_fill = alloca i64, align 8
  %i = alloca i64, align 8
  %shared = alloca i8, align 1
  %ents = alloca %struct.he**, align 8
  %oents = alloca %struct.he**, align 8
  %a = alloca i8*, align 8
  %prev = alloca %struct.he*, align 8
  %ent = alloca %struct.he*, align 8
  %oent = alloca %struct.he*, align 8
  %hash = alloca i32, align 4
  %key = alloca i8*, align 8
  %len = alloca i64, align 8
  %flags = alloca i32, align 4
  %entry69 = alloca %struct.he*, align 8
  %riter = alloca i32, align 4
  %eiter = alloca %struct.he*, align 8
  store %struct.hv* %ohv, %struct.hv** %ohv.addr, align 8
  %call = call %struct.hv* @Perl_newHV()
  store %struct.hv* %call, %struct.hv** %hv, align 8
  %0 = load %struct.hv*, %struct.hv** %ohv.addr, align 8
  %tobool = icmp ne %struct.hv* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.hv*, %struct.hv** %ohv.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %1, i32 0, i32 0
  %2 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  %xhv_fill = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %2, i32 0, i32 1
  %3 = load i64, i64* %xhv_fill, align 8
  store i64 %3, i64* %hv_fill, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.hv*, %struct.hv** %hv, align 8
  store %struct.hv* %4, %struct.hv** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.hv*, %struct.hv** %ohv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.hv, %struct.hv* %5, i32 0, i32 0
  %6 = load %struct.xpvhv*, %struct.xpvhv** %sv_any1, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %6, i32 0, i32 2
  %7 = load i64, i64* %xhv_max, align 8
  store i64 %7, i64* %hv_max, align 8
  %8 = load %struct.hv*, %struct.hv** %ohv.addr, align 8
  %9 = bitcast %struct.hv* %8 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %9, i32 0, i32 2
  %10 = load i32, i32* %sv_flags, align 4
  %and = and i32 %10, 57344
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.else.68, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.hv*, %struct.hv** %ohv.addr, align 8
  %sv_flags4 = getelementptr inbounds %struct.hv, %struct.hv* %11, i32 0, i32 2
  %12 = load i32, i32* %sv_flags4, align 4
  %and5 = and i32 %12, 536870912
  %tobool6 = icmp ne i32 %and5, 0
  %lnot = xor i1 %tobool6, true
  %lnot7 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot7 to i32
  %conv = trunc i32 %lnot.ext to i8
  store i8 %conv, i8* %shared, align 1
  %13 = load %struct.hv*, %struct.hv** %ohv.addr, align 8
  %sv_any8 = getelementptr inbounds %struct.hv, %struct.hv* %13, i32 0, i32 0
  %14 = load %struct.xpvhv*, %struct.xpvhv** %sv_any8, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %14, i32 0, i32 0
  %15 = bitcast i8** %xhv_array to %struct.he***
  %16 = load %struct.he**, %struct.he*** %15, align 8
  store %struct.he** %16, %struct.he*** %oents, align 8
  %17 = load i64, i64* %hv_max, align 8
  %add = add i64 %17, 1
  %cmp9 = icmp ult i64 %add, 64
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  %18 = load i64, i64* %hv_max, align 8
  %add11 = add i64 %18, 1
  %mul = mul i64 %add11, 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %19 = load i64, i64* %hv_max, align 8
  %add12 = add i64 %19, 1
  %mul13 = mul i64 %add12, 8
  %mul14 = mul i64 %mul13, 2
  %sub = sub i64 %mul14, 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul, %cond.true ], [ %sub, %cond.false ]
  %mul15 = mul i64 %cond, 1
  %call16 = call i8* @Perl_safesysmalloc(i64 %mul15)
  store i8* %call16, i8** %a, align 8
  %20 = load i8*, i8** %a, align 8
  %21 = bitcast i8* %20 to %struct.he**
  store %struct.he** %21, %struct.he*** %ents, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %cond.end
  %22 = load i64, i64* %i, align 8
  %23 = load i64, i64* %hv_max, align 8
  %cmp17 = icmp ule i64 %22, %23
  br i1 %cmp17, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  store %struct.he* null, %struct.he** %prev, align 8
  store %struct.he* null, %struct.he** %ent, align 8
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.he**, %struct.he*** %oents, align 8
  %arrayidx = getelementptr inbounds %struct.he*, %struct.he** %25, i64 %24
  %26 = load %struct.he*, %struct.he** %arrayidx, align 8
  store %struct.he* %26, %struct.he** %oent, align 8
  %27 = load %struct.he*, %struct.he** %oent, align 8
  %tobool19 = icmp ne %struct.he* %27, null
  br i1 %tobool19, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %for.body
  %28 = load i64, i64* %i, align 8
  %29 = load %struct.he**, %struct.he*** %ents, align 8
  %arrayidx21 = getelementptr inbounds %struct.he*, %struct.he** %29, i64 %28
  store %struct.he* null, %struct.he** %arrayidx21, align 8
  br label %for.inc.57

if.end.22:                                        ; preds = %for.body
  %30 = load i64, i64* %i, align 8
  %31 = load %struct.he**, %struct.he*** %oents, align 8
  %arrayidx23 = getelementptr inbounds %struct.he*, %struct.he** %31, i64 %30
  %32 = load %struct.he*, %struct.he** %arrayidx23, align 8
  store %struct.he* %32, %struct.he** %oent, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.end.22
  %33 = load %struct.he*, %struct.he** %oent, align 8
  %tobool25 = icmp ne %struct.he* %33, null
  br i1 %tobool25, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.24
  %34 = load %struct.he*, %struct.he** %oent, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %34, i32 0, i32 1
  %35 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_hash = getelementptr inbounds %struct.hek, %struct.hek* %35, i32 0, i32 0
  %36 = load i32, i32* %hek_hash, align 4
  store i32 %36, i32* %hash, align 4
  %37 = load %struct.he*, %struct.he** %oent, align 8
  %hent_hek27 = getelementptr inbounds %struct.he, %struct.he* %37, i32 0, i32 1
  %38 = load %struct.hek*, %struct.hek** %hent_hek27, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %38, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  store i8* %arraydecay, i8** %key, align 8
  %39 = load %struct.he*, %struct.he** %oent, align 8
  %hent_hek28 = getelementptr inbounds %struct.he, %struct.he* %39, i32 0, i32 1
  %40 = load %struct.hek*, %struct.hek** %hent_hek28, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %40, i32 0, i32 1
  %41 = load i32, i32* %hek_len, align 4
  %conv29 = sext i32 %41 to i64
  store i64 %conv29, i64* %len, align 8
  %42 = load %struct.he*, %struct.he** %oent, align 8
  %hent_hek30 = getelementptr inbounds %struct.he, %struct.he* %42, i32 0, i32 1
  %43 = load %struct.hek*, %struct.hek** %hent_hek30, align 8
  %hek_key31 = getelementptr inbounds %struct.hek, %struct.hek* %43, i32 0, i32 2
  %arraydecay32 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key31, i32 0, i32 0
  %44 = load %struct.he*, %struct.he** %oent, align 8
  %hent_hek33 = getelementptr inbounds %struct.he, %struct.he* %44, i32 0, i32 1
  %45 = load %struct.hek*, %struct.hek** %hent_hek33, align 8
  %hek_len34 = getelementptr inbounds %struct.hek, %struct.hek* %45, i32 0, i32 1
  %46 = load i32, i32* %hek_len34, align 4
  %idx.ext = sext i32 %46 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay32, i64 %idx.ext
  %add.ptr35 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %47 = load i8, i8* %add.ptr35, align 1
  %conv36 = zext i8 %47 to i32
  store i32 %conv36, i32* %flags, align 4
  %call37 = call %struct.he* @S_new_he()
  store %struct.he* %call37, %struct.he** %ent, align 8
  %48 = load %struct.he*, %struct.he** %oent, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %48, i32 0, i32 2
  %49 = load %struct.sv*, %struct.sv** %hent_val, align 8
  %call38 = call %struct.sv* @Perl_newSVsv(%struct.sv* %49)
  %50 = load %struct.he*, %struct.he** %ent, align 8
  %hent_val39 = getelementptr inbounds %struct.he, %struct.he* %50, i32 0, i32 2
  store %struct.sv* %call38, %struct.sv** %hent_val39, align 8
  %51 = load i8, i8* %shared, align 1
  %conv40 = sext i8 %51 to i32
  %tobool41 = icmp ne i32 %conv40, 0
  br i1 %tobool41, label %cond.true.42, label %cond.false.45

cond.true.42:                                     ; preds = %for.body.26
  %52 = load i8*, i8** %key, align 8
  %53 = load i64, i64* %len, align 8
  %conv43 = trunc i64 %53 to i32
  %54 = load i32, i32* %hash, align 4
  %55 = load i32, i32* %flags, align 4
  %call44 = call %struct.hek* @S_share_hek_flags(i8* %52, i32 %conv43, i32 %54, i32 %55)
  br label %cond.end.48

cond.false.45:                                    ; preds = %for.body.26
  %56 = load i8*, i8** %key, align 8
  %57 = load i64, i64* %len, align 8
  %conv46 = trunc i64 %57 to i32
  %58 = load i32, i32* %hash, align 4
  %59 = load i32, i32* %flags, align 4
  %call47 = call %struct.hek* @S_save_hek_flags(i8* %56, i32 %conv46, i32 %58, i32 %59)
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.45, %cond.true.42
  %cond49 = phi %struct.hek* [ %call44, %cond.true.42 ], [ %call47, %cond.false.45 ]
  %60 = load %struct.he*, %struct.he** %ent, align 8
  %hent_hek50 = getelementptr inbounds %struct.he, %struct.he* %60, i32 0, i32 1
  store %struct.hek* %cond49, %struct.hek** %hent_hek50, align 8
  %61 = load %struct.he*, %struct.he** %prev, align 8
  %tobool51 = icmp ne %struct.he* %61, null
  br i1 %tobool51, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %cond.end.48
  %62 = load %struct.he*, %struct.he** %ent, align 8
  %63 = load %struct.he*, %struct.he** %prev, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %63, i32 0, i32 0
  store %struct.he* %62, %struct.he** %hent_next, align 8
  br label %if.end.54

if.else:                                          ; preds = %cond.end.48
  %64 = load %struct.he*, %struct.he** %ent, align 8
  %65 = load i64, i64* %i, align 8
  %66 = load %struct.he**, %struct.he*** %ents, align 8
  %arrayidx53 = getelementptr inbounds %struct.he*, %struct.he** %66, i64 %65
  store %struct.he* %64, %struct.he** %arrayidx53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.52
  %67 = load %struct.he*, %struct.he** %ent, align 8
  store %struct.he* %67, %struct.he** %prev, align 8
  %68 = load %struct.he*, %struct.he** %ent, align 8
  %hent_next55 = getelementptr inbounds %struct.he, %struct.he* %68, i32 0, i32 0
  store %struct.he* null, %struct.he** %hent_next55, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %69 = load %struct.he*, %struct.he** %oent, align 8
  %hent_next56 = getelementptr inbounds %struct.he, %struct.he* %69, i32 0, i32 0
  %70 = load %struct.he*, %struct.he** %hent_next56, align 8
  store %struct.he* %70, %struct.he** %oent, align 8
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end, %if.then.20
  %71 = load i64, i64* %i, align 8
  %inc = add i64 %71, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  %72 = load i64, i64* %hv_max, align 8
  %73 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_any59 = getelementptr inbounds %struct.hv, %struct.hv* %73, i32 0, i32 0
  %74 = load %struct.xpvhv*, %struct.xpvhv** %sv_any59, align 8
  %xhv_max60 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %74, i32 0, i32 2
  store i64 %72, i64* %xhv_max60, align 8
  %75 = load i64, i64* %hv_fill, align 8
  %76 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_any61 = getelementptr inbounds %struct.hv, %struct.hv* %76, i32 0, i32 0
  %77 = load %struct.xpvhv*, %struct.xpvhv** %sv_any61, align 8
  %xhv_fill62 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %77, i32 0, i32 1
  store i64 %75, i64* %xhv_fill62, align 8
  %78 = load %struct.hv*, %struct.hv** %ohv.addr, align 8
  %sv_any63 = getelementptr inbounds %struct.hv, %struct.hv* %78, i32 0, i32 0
  %79 = load %struct.xpvhv*, %struct.xpvhv** %sv_any63, align 8
  %xhv_keys = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %79, i32 0, i32 3
  %80 = load i64, i64* %xhv_keys, align 8
  %81 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_any64 = getelementptr inbounds %struct.hv, %struct.hv* %81, i32 0, i32 0
  %82 = load %struct.xpvhv*, %struct.xpvhv** %sv_any64, align 8
  %xhv_keys65 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %82, i32 0, i32 3
  store i64 %80, i64* %xhv_keys65, align 8
  %83 = load %struct.he**, %struct.he*** %ents, align 8
  %84 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_any66 = getelementptr inbounds %struct.hv, %struct.hv* %84, i32 0, i32 0
  %85 = load %struct.xpvhv*, %struct.xpvhv** %sv_any66, align 8
  %xhv_array67 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %85, i32 0, i32 0
  %86 = bitcast i8** %xhv_array67 to %struct.he***
  store %struct.he** %83, %struct.he*** %86, align 8
  br label %if.end.108

if.else.68:                                       ; preds = %if.end
  %87 = load %struct.hv*, %struct.hv** %ohv.addr, align 8
  %sv_any70 = getelementptr inbounds %struct.hv, %struct.hv* %87, i32 0, i32 0
  %88 = load %struct.xpvhv*, %struct.xpvhv** %sv_any70, align 8
  %xhv_riter = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %88, i32 0, i32 7
  %89 = load i32, i32* %xhv_riter, align 4
  store i32 %89, i32* %riter, align 4
  %90 = load %struct.hv*, %struct.hv** %ohv.addr, align 8
  %sv_any71 = getelementptr inbounds %struct.hv, %struct.hv* %90, i32 0, i32 0
  %91 = load %struct.xpvhv*, %struct.xpvhv** %sv_any71, align 8
  %xhv_eiter = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %91, i32 0, i32 8
  %92 = load %struct.he*, %struct.he** %xhv_eiter, align 8
  store %struct.he* %92, %struct.he** %eiter, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.68
  %93 = load i64, i64* %hv_max, align 8
  %tobool72 = icmp ne i64 %93, 0
  br i1 %tobool72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %94 = load i64, i64* %hv_max, align 8
  %add73 = add i64 %94, 1
  %95 = load i64, i64* %hv_fill, align 8
  %mul74 = mul i64 %95, 2
  %cmp75 = icmp uge i64 %add73, %mul74
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %96 = phi i1 [ false, %while.cond ], [ %cmp75, %land.rhs ]
  br i1 %96, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %97 = load i64, i64* %hv_max, align 8
  %div = udiv i64 %97, 2
  store i64 %div, i64* %hv_max, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %98 = load i64, i64* %hv_max, align 8
  %99 = load %struct.hv*, %struct.hv** %hv, align 8
  %sv_any77 = getelementptr inbounds %struct.hv, %struct.hv* %99, i32 0, i32 0
  %100 = load %struct.xpvhv*, %struct.xpvhv** %sv_any77, align 8
  %xhv_max78 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %100, i32 0, i32 2
  store i64 %98, i64* %xhv_max78, align 8
  %101 = load %struct.hv*, %struct.hv** %ohv.addr, align 8
  %call79 = call i32 @Perl_hv_iterinit(%struct.hv* %101)
  br label %while.cond.80

while.cond.80:                                    ; preds = %while.body.83, %while.end
  %102 = load %struct.hv*, %struct.hv** %ohv.addr, align 8
  %call81 = call %struct.he* @Perl_hv_iternext_flags(%struct.hv* %102, i32 0)
  store %struct.he* %call81, %struct.he** %entry69, align 8
  %tobool82 = icmp ne %struct.he* %call81, null
  br i1 %tobool82, label %while.body.83, label %while.end.103

while.body.83:                                    ; preds = %while.cond.80
  %103 = load %struct.hv*, %struct.hv** %hv, align 8
  %104 = load %struct.he*, %struct.he** %entry69, align 8
  %hent_hek84 = getelementptr inbounds %struct.he, %struct.he* %104, i32 0, i32 1
  %105 = load %struct.hek*, %struct.hek** %hent_hek84, align 8
  %hek_key85 = getelementptr inbounds %struct.hek, %struct.hek* %105, i32 0, i32 2
  %arraydecay86 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key85, i32 0, i32 0
  %106 = load %struct.he*, %struct.he** %entry69, align 8
  %hent_hek87 = getelementptr inbounds %struct.he, %struct.he* %106, i32 0, i32 1
  %107 = load %struct.hek*, %struct.hek** %hent_hek87, align 8
  %hek_len88 = getelementptr inbounds %struct.hek, %struct.hek* %107, i32 0, i32 1
  %108 = load i32, i32* %hek_len88, align 4
  %109 = load %struct.he*, %struct.he** %entry69, align 8
  %hent_val89 = getelementptr inbounds %struct.he, %struct.he* %109, i32 0, i32 2
  %110 = load %struct.sv*, %struct.sv** %hent_val89, align 8
  %call90 = call %struct.sv* @Perl_newSVsv(%struct.sv* %110)
  %111 = load %struct.he*, %struct.he** %entry69, align 8
  %hent_hek91 = getelementptr inbounds %struct.he, %struct.he* %111, i32 0, i32 1
  %112 = load %struct.hek*, %struct.hek** %hent_hek91, align 8
  %hek_hash92 = getelementptr inbounds %struct.hek, %struct.hek* %112, i32 0, i32 0
  %113 = load i32, i32* %hek_hash92, align 4
  %114 = load %struct.he*, %struct.he** %entry69, align 8
  %hent_hek93 = getelementptr inbounds %struct.he, %struct.he* %114, i32 0, i32 1
  %115 = load %struct.hek*, %struct.hek** %hent_hek93, align 8
  %hek_key94 = getelementptr inbounds %struct.hek, %struct.hek* %115, i32 0, i32 2
  %arraydecay95 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key94, i32 0, i32 0
  %116 = load %struct.he*, %struct.he** %entry69, align 8
  %hent_hek96 = getelementptr inbounds %struct.he, %struct.he* %116, i32 0, i32 1
  %117 = load %struct.hek*, %struct.hek** %hent_hek96, align 8
  %hek_len97 = getelementptr inbounds %struct.hek, %struct.hek* %117, i32 0, i32 1
  %118 = load i32, i32* %hek_len97, align 4
  %idx.ext98 = sext i32 %118 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %arraydecay95, i64 %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr99, i64 1
  %119 = load i8, i8* %add.ptr100, align 1
  %conv101 = zext i8 %119 to i32
  %call102 = call %struct.sv** @Perl_hv_store_flags(%struct.hv* %103, i8* %arraydecay86, i32 %108, %struct.sv* %call90, i32 %113, i32 %conv101)
  br label %while.cond.80

while.end.103:                                    ; preds = %while.cond.80
  %120 = load i32, i32* %riter, align 4
  %121 = load %struct.hv*, %struct.hv** %ohv.addr, align 8
  %sv_any104 = getelementptr inbounds %struct.hv, %struct.hv* %121, i32 0, i32 0
  %122 = load %struct.xpvhv*, %struct.xpvhv** %sv_any104, align 8
  %xhv_riter105 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %122, i32 0, i32 7
  store i32 %120, i32* %xhv_riter105, align 4
  %123 = load %struct.he*, %struct.he** %eiter, align 8
  %124 = load %struct.hv*, %struct.hv** %ohv.addr, align 8
  %sv_any106 = getelementptr inbounds %struct.hv, %struct.hv* %124, i32 0, i32 0
  %125 = load %struct.xpvhv*, %struct.xpvhv** %sv_any106, align 8
  %xhv_eiter107 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %125, i32 0, i32 8
  store %struct.he* %123, %struct.he** %xhv_eiter107, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %while.end.103, %for.end.58
  %126 = load %struct.hv*, %struct.hv** %hv, align 8
  store %struct.hv* %126, %struct.hv** %retval
  br label %return

return:                                           ; preds = %if.end.108, %if.then
  %127 = load %struct.hv*, %struct.hv** %retval
  ret %struct.hv* %127
}

; Function Attrs: nounwind uwtable
define internal %struct.he* @S_new_he() #0 {
entry:
  %he = alloca %struct.he*, align 8
  %0 = load %struct.he*, %struct.he** @PL_he_root, align 8
  %tobool = icmp ne %struct.he* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @S_more_he()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.he*, %struct.he** @PL_he_root, align 8
  store %struct.he* %1, %struct.he** %he, align 8
  %2 = load %struct.he*, %struct.he** %he, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %2, i32 0, i32 0
  %3 = load %struct.he*, %struct.he** %hent_next, align 8
  store %struct.he* %3, %struct.he** @PL_he_root, align 8
  %4 = load %struct.he*, %struct.he** %he, align 8
  ret %struct.he* %4
}

declare %struct.sv* @Perl_newSVsv(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal %struct.hek* @S_share_hek_flags(i8* %str, i32 %len, i32 %hash, i32 %flags) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %xhv = alloca %struct.xpvhv*, align 8
  %entry1 = alloca %struct.he*, align 8
  %oentry = alloca %struct.he**, align 8
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %flags_masked = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 1, i32* %i, align 4
  store i32 0, i32* %found, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 255
  store i32 %and, i32* %flags_masked, align 4
  %1 = load %struct.hv*, %struct.hv** @PL_strtab, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %1, i32 0, i32 0
  %2 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  store %struct.xpvhv* %2, %struct.xpvhv** %xhv, align 8
  %3 = load i32, i32* %hash.addr, align 4
  %4 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %4, i32 0, i32 2
  %5 = load i64, i64* %xhv_max, align 8
  %conv = trunc i64 %5 to i32
  %and2 = and i32 %3, %conv
  %idxprom = zext i32 %and2 to i64
  %6 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %6, i32 0, i32 0
  %7 = load i8*, i8** %xhv_array, align 8
  %8 = bitcast i8* %7 to %struct.he**
  %arrayidx = getelementptr inbounds %struct.he*, %struct.he** %8, i64 %idxprom
  store %struct.he** %arrayidx, %struct.he*** %oentry, align 8
  %9 = load %struct.he**, %struct.he*** %oentry, align 8
  %10 = load %struct.he*, %struct.he** %9, align 8
  store %struct.he* %10, %struct.he** %entry1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool = icmp ne %struct.he* %11, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %12, i32 0, i32 1
  %13 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_hash = getelementptr inbounds %struct.hek, %struct.hek* %13, i32 0, i32 0
  %14 = load i32, i32* %hek_hash, align 4
  %15 = load i32, i32* %hash.addr, align 4
  %cmp = icmp ne i32 %14, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %16 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek4 = getelementptr inbounds %struct.he, %struct.he* %16, i32 0, i32 1
  %17 = load %struct.hek*, %struct.hek** %hent_hek4, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %17, i32 0, i32 1
  %18 = load i32, i32* %hek_len, align 4
  %19 = load i32, i32* %len.addr, align 4
  %cmp5 = icmp ne i32 %18, %19
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  br label %for.inc

if.end.8:                                         ; preds = %if.end
  %20 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek9 = getelementptr inbounds %struct.he, %struct.he* %20, i32 0, i32 1
  %21 = load %struct.hek*, %struct.hek** %hent_hek9, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %21, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  %22 = load i8*, i8** %str.addr, align 8
  %cmp10 = icmp ne i8* %arraydecay, %22
  br i1 %cmp10, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.8
  %23 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek12 = getelementptr inbounds %struct.he, %struct.he* %23, i32 0, i32 1
  %24 = load %struct.hek*, %struct.hek** %hent_hek12, align 8
  %hek_key13 = getelementptr inbounds %struct.hek, %struct.hek* %24, i32 0, i32 2
  %arraydecay14 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key13, i32 0, i32 0
  %25 = load i8*, i8** %str.addr, align 8
  %26 = load i32, i32* %len.addr, align 4
  %conv15 = sext i32 %26 to i64
  %call = call i32 @memcmp(i8* %arraydecay14, i8* %25, i64 %conv15)
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.18:                                        ; preds = %land.lhs.true, %if.end.8
  %27 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek19 = getelementptr inbounds %struct.he, %struct.he* %27, i32 0, i32 1
  %28 = load %struct.hek*, %struct.hek** %hent_hek19, align 8
  %hek_key20 = getelementptr inbounds %struct.hek, %struct.hek* %28, i32 0, i32 2
  %arraydecay21 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key20, i32 0, i32 0
  %29 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek22 = getelementptr inbounds %struct.he, %struct.he* %29, i32 0, i32 1
  %30 = load %struct.hek*, %struct.hek** %hent_hek22, align 8
  %hek_len23 = getelementptr inbounds %struct.hek, %struct.hek* %30, i32 0, i32 1
  %31 = load i32, i32* %hek_len23, align 4
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay21, i64 %idx.ext
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %32 = load i8, i8* %add.ptr24, align 1
  %conv25 = zext i8 %32 to i32
  %33 = load i32, i32* %flags_masked, align 4
  %cmp26 = icmp ne i32 %conv25, %33
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.18
  br label %for.inc

if.end.29:                                        ; preds = %if.end.18
  store i32 1, i32* %found, align 4
  br label %for.end

for.inc:                                          ; preds = %if.then.28, %if.then.17, %if.then.7, %if.then
  store i32 0, i32* %i, align 4
  %34 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %34, i32 0, i32 0
  %35 = load %struct.he*, %struct.he** %hent_next, align 8
  store %struct.he* %35, %struct.he** %entry1, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.29, %for.cond
  %36 = load i32, i32* %found, align 4
  %tobool30 = icmp ne i32 %36, 0
  br i1 %tobool30, label %if.end.46, label %if.then.31

if.then.31:                                       ; preds = %for.end
  %call32 = call %struct.he* @S_new_he()
  store %struct.he* %call32, %struct.he** %entry1, align 8
  %37 = load i8*, i8** %str.addr, align 8
  %38 = load i32, i32* %len.addr, align 4
  %39 = load i32, i32* %hash.addr, align 4
  %40 = load i32, i32* %flags_masked, align 4
  %call33 = call %struct.hek* @S_save_hek_flags(i8* %37, i32 %38, i32 %39, i32 %40)
  %41 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek34 = getelementptr inbounds %struct.he, %struct.he* %41, i32 0, i32 1
  store %struct.hek* %call33, %struct.hek** %hent_hek34, align 8
  %42 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %42, i32 0, i32 2
  store %struct.sv* null, %struct.sv** %hent_val, align 8
  %43 = load %struct.he**, %struct.he*** %oentry, align 8
  %44 = load %struct.he*, %struct.he** %43, align 8
  %45 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next35 = getelementptr inbounds %struct.he, %struct.he* %45, i32 0, i32 0
  store %struct.he* %44, %struct.he** %hent_next35, align 8
  %46 = load %struct.he*, %struct.he** %entry1, align 8
  %47 = load %struct.he**, %struct.he*** %oentry, align 8
  store %struct.he* %46, %struct.he** %47, align 8
  %48 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_keys = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %48, i32 0, i32 3
  %49 = load i64, i64* %xhv_keys, align 8
  %inc = add nsw i64 %49, 1
  store i64 %inc, i64* %xhv_keys, align 8
  %50 = load i32, i32* %i, align 4
  %tobool36 = icmp ne i32 %50, 0
  br i1 %tobool36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.31
  %51 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_fill = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %51, i32 0, i32 1
  %52 = load i64, i64* %xhv_fill, align 8
  %inc38 = add i64 %52, 1
  store i64 %inc38, i64* %xhv_fill, align 8
  br label %if.end.45

if.else:                                          ; preds = %if.then.31
  %53 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_keys39 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %53, i32 0, i32 3
  %54 = load i64, i64* %xhv_keys39, align 8
  %55 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max40 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %55, i32 0, i32 2
  %56 = load i64, i64* %xhv_max40, align 8
  %cmp41 = icmp sgt i64 %54, %56
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.else
  %57 = load %struct.hv*, %struct.hv** @PL_strtab, align 8
  call void @S_hsplit(%struct.hv* %57)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.37
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %for.end
  %58 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val47 = getelementptr inbounds %struct.he, %struct.he* %58, i32 0, i32 2
  %59 = load %struct.sv*, %struct.sv** %hent_val47, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv, %struct.sv* %59, i32 1
  store %struct.sv* %incdec.ptr, %struct.sv** %hent_val47, align 8
  %60 = load i32, i32* %flags.addr, align 4
  %and48 = and i32 %60, 256
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.46
  %61 = load i8*, i8** %str.addr, align 8
  call void @Perl_safesysfree(i8* %61)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.46
  %62 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek52 = getelementptr inbounds %struct.he, %struct.he* %62, i32 0, i32 1
  %63 = load %struct.hek*, %struct.hek** %hent_hek52, align 8
  ret %struct.hek* %63
}

; Function Attrs: nounwind uwtable
define internal %struct.hek* @S_save_hek_flags(i8* %str, i32 %len, i32 %hash, i32 %flags) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %flags_masked = alloca i32, align 4
  %k = alloca i8*, align 8
  %hek = alloca %struct.hek*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 255
  store i32 %and, i32* %flags_masked, align 4
  %1 = load i32, i32* %len.addr, align 4
  %conv = sext i32 %1 to i64
  %add = add i64 ptrtoint (i8* getelementptr inbounds (%struct.hek, %struct.hek* null, i32 0, i32 2, i64 0) to i64), %conv
  %add1 = add i64 %add, 2
  %mul = mul i64 %add1, 1
  %call = call i8* @Perl_safesysmalloc(i64 %mul)
  store i8* %call, i8** %k, align 8
  %2 = load i8*, i8** %k, align 8
  %3 = bitcast i8* %2 to %struct.hek*
  store %struct.hek* %3, %struct.hek** %hek, align 8
  %4 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  %5 = load i8*, i8** %str.addr, align 8
  %6 = load i32, i32* %len.addr, align 4
  %conv2 = sext i32 %6 to i64
  %mul3 = mul i64 %conv2, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay, i8* %5, i64 %mul3, i32 1, i1 false)
  %7 = load i32, i32* %len.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_key4 = getelementptr inbounds %struct.hek, %struct.hek* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key4, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %9 = load i32, i32* %len.addr, align 4
  %10 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %10, i32 0, i32 1
  store i32 %9, i32* %hek_len, align 4
  %11 = load i32, i32* %hash.addr, align 4
  %12 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_hash = getelementptr inbounds %struct.hek, %struct.hek* %12, i32 0, i32 0
  store i32 %11, i32* %hek_hash, align 4
  %13 = load i32, i32* %flags_masked, align 4
  %conv5 = trunc i32 %13 to i8
  %14 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_key6 = getelementptr inbounds %struct.hek, %struct.hek* %14, i32 0, i32 2
  %arraydecay7 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key6, i32 0, i32 0
  %15 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_len8 = getelementptr inbounds %struct.hek, %struct.hek* %15, i32 0, i32 1
  %16 = load i32, i32* %hek_len8, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay7, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  store i8 %conv5, i8* %add.ptr9, align 1
  %17 = load i32, i32* %flags.addr, align 4
  %and10 = and i32 %17, 256
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i8*, i8** %str.addr, align 8
  call void @Perl_safesysfree(i8* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.hek*, %struct.hek** %hek, align 8
  ret %struct.hek* %19
}

; Function Attrs: nounwind uwtable
define %struct.he* @Perl_hv_iternext_flags(%struct.hv* %hv, i32 %flags) #0 {
entry:
  %retval = alloca %struct.he*, align 8
  %hv.addr = alloca %struct.hv*, align 8
  %flags.addr = alloca i32, align 4
  %xhv = alloca %struct.xpvhv*, align 8
  %entry1 = alloca %struct.he*, align 8
  %oldentry = alloca %struct.he*, align 8
  %mg = alloca %struct.magic*, align 8
  %key = alloca %struct.sv*, align 8
  %k = alloca i8*, align 8
  %hek = alloca %struct.hek*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %tobool = icmp ne %struct.hv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %1, i32 0, i32 0
  %2 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  store %struct.xpvhv* %2, %struct.xpvhv** %xhv, align 8
  %3 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_eiter = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %3, i32 0, i32 8
  %4 = load %struct.he*, %struct.he** %xhv_eiter, align 8
  store %struct.he* %4, %struct.he** %entry1, align 8
  store %struct.he* %4, %struct.he** %oldentry, align 8
  %5 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %6 = bitcast %struct.hv* %5 to %struct.sv*
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_flags, align 4
  %and = and i32 %7, 32768
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %9 = bitcast %struct.hv* %8 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %9, i32 80)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.magic* [ %call, %cond.true ], [ null, %cond.false ]
  store %struct.magic* %cond, %struct.magic** %mg, align 8
  %tobool3 = icmp ne %struct.magic* %cond, null
  br i1 %tobool3, label %if.then.4, label %if.end.69

if.then.4:                                        ; preds = %cond.end
  %call5 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call5, %struct.sv** %key, align 8
  %10 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool6 = icmp ne %struct.he* %10, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.4
  %11 = load %struct.sv*, %struct.sv** %key, align 8
  %12 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %12, i32 0, i32 1
  %13 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %13, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  %tobool8 = icmp ne i8* %arraydecay, null
  br i1 %tobool8, label %cond.true.9, label %cond.false.25

cond.true.9:                                      ; preds = %if.then.7
  %14 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek10 = getelementptr inbounds %struct.he, %struct.he* %14, i32 0, i32 1
  %15 = load %struct.hek*, %struct.hek** %hent_hek10, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %15, i32 0, i32 1
  %16 = load i32, i32* %hek_len, align 4
  %cmp = icmp eq i32 %16, -2
  br i1 %cmp, label %cond.true.11, label %cond.false.15

cond.true.11:                                     ; preds = %cond.true.9
  %17 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek12 = getelementptr inbounds %struct.he, %struct.he* %17, i32 0, i32 1
  %18 = load %struct.hek*, %struct.hek** %hent_hek12, align 8
  %hek_key13 = getelementptr inbounds %struct.hek, %struct.hek* %18, i32 0, i32 2
  %arraydecay14 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key13, i32 0, i32 0
  %19 = bitcast i8* %arraydecay14 to %struct.sv**
  %20 = load %struct.sv*, %struct.sv** %19, align 8
  br label %cond.end.23

cond.false.15:                                    ; preds = %cond.true.9
  %21 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek16 = getelementptr inbounds %struct.he, %struct.he* %21, i32 0, i32 1
  %22 = load %struct.hek*, %struct.hek** %hent_hek16, align 8
  %hek_key17 = getelementptr inbounds %struct.hek, %struct.hek* %22, i32 0, i32 2
  %arraydecay18 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key17, i32 0, i32 0
  %23 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek19 = getelementptr inbounds %struct.he, %struct.he* %23, i32 0, i32 1
  %24 = load %struct.hek*, %struct.hek** %hent_hek19, align 8
  %hek_len20 = getelementptr inbounds %struct.hek, %struct.hek* %24, i32 0, i32 1
  %25 = load i32, i32* %hek_len20, align 4
  %conv = sext i32 %25 to i64
  %call21 = call %struct.sv* @Perl_newSVpvn(i8* %arraydecay18, i64 %conv)
  %call22 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call21)
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.15, %cond.true.11
  %cond24 = phi %struct.sv* [ %20, %cond.true.11 ], [ %call22, %cond.false.15 ]
  br label %cond.end.26

cond.false.25:                                    ; preds = %if.then.7
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.end.23
  %cond27 = phi %struct.sv* [ %cond24, %cond.end.23 ], [ @PL_sv_undef, %cond.false.25 ]
  call void @Perl_sv_setsv_flags(%struct.sv* %11, %struct.sv* %cond27, i32 2)
  %26 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek28 = getelementptr inbounds %struct.he, %struct.he* %26, i32 0, i32 1
  %27 = load %struct.hek*, %struct.hek** %hent_hek28, align 8
  %hek_key29 = getelementptr inbounds %struct.hek, %struct.hek* %27, i32 0, i32 2
  %arraydecay30 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key29, i32 0, i32 0
  %tobool31 = icmp ne i8* %arraydecay30, null
  br i1 %tobool31, label %land.lhs.true, label %cond.false.40

land.lhs.true:                                    ; preds = %cond.end.26
  %28 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek32 = getelementptr inbounds %struct.he, %struct.he* %28, i32 0, i32 1
  %29 = load %struct.hek*, %struct.hek** %hent_hek32, align 8
  %hek_len33 = getelementptr inbounds %struct.hek, %struct.hek* %29, i32 0, i32 1
  %30 = load i32, i32* %hek_len33, align 4
  %cmp34 = icmp eq i32 %30, -2
  br i1 %cmp34, label %cond.true.36, label %cond.false.40

cond.true.36:                                     ; preds = %land.lhs.true
  %31 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek37 = getelementptr inbounds %struct.he, %struct.he* %31, i32 0, i32 1
  %32 = load %struct.hek*, %struct.hek** %hent_hek37, align 8
  %hek_key38 = getelementptr inbounds %struct.hek, %struct.hek* %32, i32 0, i32 2
  %arraydecay39 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key38, i32 0, i32 0
  %33 = bitcast i8* %arraydecay39 to %struct.sv**
  %34 = load %struct.sv*, %struct.sv** %33, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %land.lhs.true, %cond.end.26
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.36
  %cond42 = phi %struct.sv* [ %34, %cond.true.36 ], [ null, %cond.false.40 ]
  call void @Perl_sv_free(%struct.sv* %cond42)
  br label %if.end.49

if.else:                                          ; preds = %if.then.4
  %call43 = call %struct.he* @S_new_he()
  store %struct.he* %call43, %struct.he** %entry1, align 8
  %35 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_eiter44 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %35, i32 0, i32 8
  store %struct.he* %call43, %struct.he** %xhv_eiter44, align 8
  %36 = load %struct.he*, %struct.he** %entry1, align 8
  %37 = bitcast %struct.he* %36 to i8*
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 24, i32 1, i1 false)
  %call45 = call i8* @Perl_safesysmalloc(i64 add (i64 ptrtoint (i8* getelementptr inbounds (%struct.hek, %struct.hek* null, i32 0, i32 2, i64 0) to i64), i64 8))
  store i8* %call45, i8** %k, align 8
  %38 = load i8*, i8** %k, align 8
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 add (i64 ptrtoint (i8* getelementptr inbounds (%struct.hek, %struct.hek* null, i32 0, i32 2, i64 0) to i64), i64 8), i32 1, i1 false)
  %39 = load i8*, i8** %k, align 8
  %40 = bitcast i8* %39 to %struct.hek*
  store %struct.hek* %40, %struct.hek** %hek, align 8
  %41 = load %struct.hek*, %struct.hek** %hek, align 8
  %42 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek46 = getelementptr inbounds %struct.he, %struct.he* %42, i32 0, i32 1
  store %struct.hek* %41, %struct.hek** %hent_hek46, align 8
  %43 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek47 = getelementptr inbounds %struct.he, %struct.he* %43, i32 0, i32 1
  %44 = load %struct.hek*, %struct.hek** %hent_hek47, align 8
  %hek_len48 = getelementptr inbounds %struct.hek, %struct.hek* %44, i32 0, i32 1
  store i32 -2, i32* %hek_len48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %cond.end.41
  %45 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %46 = bitcast %struct.hv* %45 to %struct.sv*
  %47 = load %struct.magic*, %struct.magic** %mg, align 8
  %48 = load %struct.sv*, %struct.sv** %key, align 8
  %call50 = call i32 @Perl_magic_nextpack(%struct.sv* %46, %struct.magic* %47, %struct.sv* %48)
  %49 = load %struct.sv*, %struct.sv** %key, align 8
  %sv_flags51 = getelementptr inbounds %struct.sv, %struct.sv* %49, i32 0, i32 2
  %50 = load i32, i32* %sv_flags51, align 4
  %and52 = and i32 %50, 118423552
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.62

if.then.54:                                       ; preds = %if.end.49
  %51 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek55 = getelementptr inbounds %struct.he, %struct.he* %51, i32 0, i32 1
  %52 = load %struct.hek*, %struct.hek** %hent_hek55, align 8
  %hek_len56 = getelementptr inbounds %struct.hek, %struct.hek* %52, i32 0, i32 1
  store i32 -2, i32* %hek_len56, align 4
  %53 = load %struct.sv*, %struct.sv** %key, align 8
  store %struct.sv* %53, %struct.sv** @PL_Sv, align 8
  %54 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %tobool57 = icmp ne %struct.sv* %54, null
  br i1 %tobool57, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.54
  %55 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %sv_refcnt = getelementptr inbounds %struct.sv, %struct.sv* %55, i32 0, i32 1
  %56 = load i32, i32* %sv_refcnt, align 4
  %inc = add i32 %56, 1
  store i32 %inc, i32* %sv_refcnt, align 4
  %tobool58 = icmp ne i32 %inc, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.54
  %57 = phi i1 [ false, %if.then.54 ], [ %tobool58, %land.rhs ]
  %land.ext = zext i1 %57 to i32
  %58 = load %struct.sv*, %struct.sv** @PL_Sv, align 8
  %59 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek59 = getelementptr inbounds %struct.he, %struct.he* %59, i32 0, i32 1
  %60 = load %struct.hek*, %struct.hek** %hent_hek59, align 8
  %hek_key60 = getelementptr inbounds %struct.hek, %struct.hek* %60, i32 0, i32 2
  %arraydecay61 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key60, i32 0, i32 0
  %61 = bitcast i8* %arraydecay61 to %struct.sv**
  store %struct.sv* %58, %struct.sv** %61, align 8
  %62 = load %struct.he*, %struct.he** %entry1, align 8
  store %struct.he* %62, %struct.he** %retval
  br label %return

if.end.62:                                        ; preds = %if.end.49
  %63 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %63, i32 0, i32 2
  %64 = load %struct.sv*, %struct.sv** %hent_val, align 8
  %tobool63 = icmp ne %struct.sv* %64, null
  br i1 %tobool63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.62
  %65 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val65 = getelementptr inbounds %struct.he, %struct.he* %65, i32 0, i32 2
  %66 = load %struct.sv*, %struct.sv** %hent_val65, align 8
  call void @Perl_sv_free(%struct.sv* %66)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.end.62
  %67 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek67 = getelementptr inbounds %struct.he, %struct.he* %67, i32 0, i32 1
  %68 = load %struct.hek*, %struct.hek** %hent_hek67, align 8
  %69 = bitcast %struct.hek* %68 to i8*
  call void @Perl_safesysfree(i8* %69)
  %70 = load %struct.he*, %struct.he** %entry1, align 8
  call void @S_del_he(%struct.he* %70)
  %71 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_eiter68 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %71, i32 0, i32 8
  store %struct.he* null, %struct.he** %xhv_eiter68, align 8
  store %struct.he* null, %struct.he** %retval
  br label %return

if.end.69:                                        ; preds = %cond.end
  %72 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %72, i32 0, i32 0
  %73 = load i8*, i8** %xhv_array, align 8
  %tobool70 = icmp ne i8* %73, null
  br i1 %tobool70, label %if.end.105, label %if.then.71

if.then.71:                                       ; preds = %if.end.69
  %74 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %74, i32 0, i32 2
  %75 = load i64, i64* %xhv_max, align 8
  %add = add i64 %75, 1
  %cmp72 = icmp ult i64 %add, 64
  br i1 %cmp72, label %cond.true.74, label %cond.false.77

cond.true.74:                                     ; preds = %if.then.71
  %76 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max75 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %76, i32 0, i32 2
  %77 = load i64, i64* %xhv_max75, align 8
  %add76 = add i64 %77, 1
  %mul = mul i64 %add76, 8
  br label %cond.end.82

cond.false.77:                                    ; preds = %if.then.71
  %78 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max78 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %78, i32 0, i32 2
  %79 = load i64, i64* %xhv_max78, align 8
  %add79 = add i64 %79, 1
  %mul80 = mul i64 %add79, 8
  %mul81 = mul i64 %mul80, 2
  %sub = sub i64 %mul81, 16
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.77, %cond.true.74
  %cond83 = phi i64 [ %mul, %cond.true.74 ], [ %sub, %cond.false.77 ]
  %mul84 = mul i64 %cond83, 1
  %call85 = call i8* @Perl_safesysmalloc(i64 %mul84)
  %80 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array86 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %80, i32 0, i32 0
  store i8* %call85, i8** %xhv_array86, align 8
  %81 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array87 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %81, i32 0, i32 0
  %82 = load i8*, i8** %xhv_array87, align 8
  %83 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max88 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %83, i32 0, i32 2
  %84 = load i64, i64* %xhv_max88, align 8
  %add89 = add i64 %84, 1
  %cmp90 = icmp ult i64 %add89, 64
  br i1 %cmp90, label %cond.true.92, label %cond.false.96

cond.true.92:                                     ; preds = %cond.end.82
  %85 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max93 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %85, i32 0, i32 2
  %86 = load i64, i64* %xhv_max93, align 8
  %add94 = add i64 %86, 1
  %mul95 = mul i64 %add94, 8
  br label %cond.end.102

cond.false.96:                                    ; preds = %cond.end.82
  %87 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max97 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %87, i32 0, i32 2
  %88 = load i64, i64* %xhv_max97, align 8
  %add98 = add i64 %88, 1
  %mul99 = mul i64 %add98, 8
  %mul100 = mul i64 %mul99, 2
  %sub101 = sub i64 %mul100, 16
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.96, %cond.true.92
  %cond103 = phi i64 [ %mul95, %cond.true.92 ], [ %sub101, %cond.false.96 ]
  %mul104 = mul i64 %cond103, 1
  call void @llvm.memset.p0i8.i64(i8* %82, i8 0, i64 %mul104, i32 1, i1 false)
  br label %if.end.105

if.end.105:                                       ; preds = %cond.end.102, %if.end.69
  %89 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool106 = icmp ne %struct.he* %89, null
  br i1 %tobool106, label %if.then.107, label %if.end.120

if.then.107:                                      ; preds = %if.end.105
  %90 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %90, i32 0, i32 0
  %91 = load %struct.he*, %struct.he** %hent_next, align 8
  store %struct.he* %91, %struct.he** %entry1, align 8
  %92 = load i32, i32* %flags.addr, align 4
  %and108 = and i32 %92, 1
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.end.119, label %if.then.110

if.then.110:                                      ; preds = %if.then.107
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.110
  %93 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool111 = icmp ne %struct.he* %93, null
  br i1 %tobool111, label %land.rhs.112, label %land.end.116

land.rhs.112:                                     ; preds = %while.cond
  %94 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val113 = getelementptr inbounds %struct.he, %struct.he* %94, i32 0, i32 2
  %95 = load %struct.sv*, %struct.sv** %hent_val113, align 8
  %cmp114 = icmp eq %struct.sv* %95, @PL_sv_placeholder
  br label %land.end.116

land.end.116:                                     ; preds = %land.rhs.112, %while.cond
  %96 = phi i1 [ false, %while.cond ], [ %cmp114, %land.rhs.112 ]
  br i1 %96, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.116
  %97 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next118 = getelementptr inbounds %struct.he, %struct.he* %97, i32 0, i32 0
  %98 = load %struct.he*, %struct.he** %hent_next118, align 8
  store %struct.he* %98, %struct.he** %entry1, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.116
  br label %if.end.119

if.end.119:                                       ; preds = %while.end, %if.then.107
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.105
  br label %while.cond.121

while.cond.121:                                   ; preds = %if.end.149, %if.end.120
  %99 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool122 = icmp ne %struct.he* %99, null
  %lnot = xor i1 %tobool122, true
  br i1 %lnot, label %while.body.123, label %while.end.150

while.body.123:                                   ; preds = %while.cond.121
  %100 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_riter = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %100, i32 0, i32 7
  %101 = load i32, i32* %xhv_riter, align 4
  %inc124 = add nsw i32 %101, 1
  store i32 %inc124, i32* %xhv_riter, align 4
  %102 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_riter125 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %102, i32 0, i32 7
  %103 = load i32, i32* %xhv_riter125, align 4
  %104 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max126 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %104, i32 0, i32 2
  %105 = load i64, i64* %xhv_max126, align 8
  %conv127 = trunc i64 %105 to i32
  %cmp128 = icmp sgt i32 %103, %conv127
  br i1 %cmp128, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %while.body.123
  %106 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_riter131 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %106, i32 0, i32 7
  store i32 -1, i32* %xhv_riter131, align 4
  br label %while.end.150

if.end.132:                                       ; preds = %while.body.123
  %107 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_riter133 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %107, i32 0, i32 7
  %108 = load i32, i32* %xhv_riter133, align 4
  %idxprom = sext i32 %108 to i64
  %109 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array134 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %109, i32 0, i32 0
  %110 = load i8*, i8** %xhv_array134, align 8
  %111 = bitcast i8* %110 to %struct.he**
  %arrayidx = getelementptr inbounds %struct.he*, %struct.he** %111, i64 %idxprom
  %112 = load %struct.he*, %struct.he** %arrayidx, align 8
  store %struct.he* %112, %struct.he** %entry1, align 8
  %113 = load i32, i32* %flags.addr, align 4
  %and135 = and i32 %113, 1
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %if.end.149, label %if.then.137

if.then.137:                                      ; preds = %if.end.132
  br label %while.cond.138

while.cond.138:                                   ; preds = %while.body.146, %if.then.137
  %114 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool139 = icmp ne %struct.he* %114, null
  br i1 %tobool139, label %land.rhs.140, label %land.end.144

land.rhs.140:                                     ; preds = %while.cond.138
  %115 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val141 = getelementptr inbounds %struct.he, %struct.he* %115, i32 0, i32 2
  %116 = load %struct.sv*, %struct.sv** %hent_val141, align 8
  %cmp142 = icmp eq %struct.sv* %116, @PL_sv_placeholder
  br label %land.end.144

land.end.144:                                     ; preds = %land.rhs.140, %while.cond.138
  %117 = phi i1 [ false, %while.cond.138 ], [ %cmp142, %land.rhs.140 ]
  br i1 %117, label %while.body.146, label %while.end.148

while.body.146:                                   ; preds = %land.end.144
  %118 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next147 = getelementptr inbounds %struct.he, %struct.he* %118, i32 0, i32 0
  %119 = load %struct.he*, %struct.he** %hent_next147, align 8
  store %struct.he* %119, %struct.he** %entry1, align 8
  br label %while.cond.138

while.end.148:                                    ; preds = %land.end.144
  br label %if.end.149

if.end.149:                                       ; preds = %while.end.148, %if.end.132
  br label %while.cond.121

while.end.150:                                    ; preds = %if.then.130, %while.cond.121
  %120 = load %struct.he*, %struct.he** %oldentry, align 8
  %tobool151 = icmp ne %struct.he* %120, null
  br i1 %tobool151, label %land.lhs.true.152, label %if.end.159

land.lhs.true.152:                                ; preds = %while.end.150
  %121 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags153 = getelementptr inbounds %struct.hv, %struct.hv* %121, i32 0, i32 2
  %122 = load i32, i32* %sv_flags153, align 4
  %and154 = and i32 %122, 1073741824
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.159

if.then.156:                                      ; preds = %land.lhs.true.152
  %123 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags157 = getelementptr inbounds %struct.hv, %struct.hv* %123, i32 0, i32 2
  %124 = load i32, i32* %sv_flags157, align 4
  %and158 = and i32 %124, -1073741825
  store i32 %and158, i32* %sv_flags157, align 4
  %125 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %126 = load %struct.he*, %struct.he** %oldentry, align 8
  call void @Perl_hv_free_ent(%struct.hv* %125, %struct.he* %126)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.156, %land.lhs.true.152, %while.end.150
  %127 = load %struct.he*, %struct.he** %entry1, align 8
  %128 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_eiter160 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %128, i32 0, i32 8
  store %struct.he* %127, %struct.he** %xhv_eiter160, align 8
  %129 = load %struct.he*, %struct.he** %entry1, align 8
  store %struct.he* %129, %struct.he** %retval
  br label %return

return:                                           ; preds = %if.end.159, %if.end.66, %land.end
  %130 = load %struct.he*, %struct.he** %retval
  ret %struct.he* %130
}

; Function Attrs: nounwind uwtable
define void @Perl_hv_free_ent(%struct.hv* %hv, %struct.he* %entry1) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %entry.addr = alloca %struct.he*, align 8
  %val = alloca %struct.sv*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store %struct.he* %entry1, %struct.he** %entry.addr, align 8
  %0 = load %struct.he*, %struct.he** %entry.addr, align 8
  %tobool = icmp ne %struct.he* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %1, i32 0, i32 2
  %2 = load %struct.sv*, %struct.sv** %hent_val, align 8
  store %struct.sv* %2, %struct.sv** %val, align 8
  %3 = load %struct.sv*, %struct.sv** %val, align 8
  %tobool2 = icmp ne %struct.sv* %3, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.sv*, %struct.sv** %val, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %4, i32 0, i32 2
  %5 = load i32, i32* %sv_flags, align 4
  %and = and i32 %5, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true.3, label %if.end.12

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load %struct.sv*, %struct.sv** %val, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 0
  %7 = load i8*, i8** %sv_any, align 8
  %8 = bitcast i8* %7 to %struct.xpvgv*
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %8, i32 0, i32 7
  %9 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_cvgen = getelementptr inbounds %struct.gp, %struct.gp* %9, i32 0, i32 8
  %10 = load i32, i32* %gp_cvgen, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.3
  br i1 false, label %land.lhs.true.8, label %if.end.12

cond.false:                                       ; preds = %land.lhs.true.3
  %11 = load %struct.sv*, %struct.sv** %val, align 8
  %sv_any5 = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any5, align 8
  %13 = bitcast i8* %12 to %struct.xpvgv*
  %xgv_gp6 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %13, i32 0, i32 7
  %14 = load %struct.gp*, %struct.gp** %xgv_gp6, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %14, i32 0, i32 7
  %15 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %tobool7 = icmp ne %struct.cv* %15, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.12

land.lhs.true.8:                                  ; preds = %cond.false, %cond.true
  %16 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any9 = getelementptr inbounds %struct.hv, %struct.hv* %16, i32 0, i32 0
  %17 = load %struct.xpvhv*, %struct.xpvhv** %sv_any9, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %17, i32 0, i32 10
  %18 = load i8*, i8** %xhv_name, align 8
  %tobool10 = icmp ne i8* %18, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true.8
  %19 = load i32, i32* @PL_sub_generation, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* @PL_sub_generation, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %land.lhs.true.8, %cond.false, %cond.true, %land.lhs.true, %if.end
  %20 = load %struct.sv*, %struct.sv** %val, align 8
  call void @Perl_sv_free(%struct.sv* %20)
  %21 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %21, i32 0, i32 1
  %22 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %22, i32 0, i32 1
  %23 = load i32, i32* %hek_len, align 4
  %cmp13 = icmp eq i32 %23, -2
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.12
  %24 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek15 = getelementptr inbounds %struct.he, %struct.he* %24, i32 0, i32 1
  %25 = load %struct.hek*, %struct.hek** %hent_hek15, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %25, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  %26 = bitcast i8* %arraydecay to %struct.sv**
  %27 = load %struct.sv*, %struct.sv** %26, align 8
  call void @Perl_sv_free(%struct.sv* %27)
  %28 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek16 = getelementptr inbounds %struct.he, %struct.he* %28, i32 0, i32 1
  %29 = load %struct.hek*, %struct.hek** %hent_hek16, align 8
  %30 = bitcast %struct.hek* %29 to i8*
  call void @Perl_safesysfree(i8* %30)
  br label %if.end.25

if.else:                                          ; preds = %if.end.12
  %31 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags17 = getelementptr inbounds %struct.hv, %struct.hv* %31, i32 0, i32 2
  %32 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %32, 536870912
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else
  %33 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek21 = getelementptr inbounds %struct.he, %struct.he* %33, i32 0, i32 1
  %34 = load %struct.hek*, %struct.hek** %hent_hek21, align 8
  call void @Perl_unshare_hek(%struct.hek* %34)
  br label %if.end.24

if.else.22:                                       ; preds = %if.else
  %35 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek23 = getelementptr inbounds %struct.he, %struct.he* %35, i32 0, i32 1
  %36 = load %struct.hek*, %struct.hek** %hent_hek23, align 8
  %37 = bitcast %struct.hek* %36 to i8*
  call void @Perl_safesysfree(i8* %37)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.20
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.14
  %38 = load %struct.he*, %struct.he** %entry.addr, align 8
  call void @S_del_he(%struct.he* %38)
  br label %return

return:                                           ; preds = %if.end.25, %if.then
  ret void
}

declare void @Perl_sv_free(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @Perl_unshare_hek(%struct.hek* %hek) #0 {
entry:
  %hek.addr = alloca %struct.hek*, align 8
  store %struct.hek* %hek, %struct.hek** %hek.addr, align 8
  %0 = load %struct.hek*, %struct.hek** %hek.addr, align 8
  call void @S_unshare_hek_or_pvn(%struct.hek* %0, i8* null, i32 0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_hv_delayfree_ent(%struct.hv* %hv, %struct.he* %entry1) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %entry.addr = alloca %struct.he*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store %struct.he* %entry1, %struct.he** %entry.addr, align 8
  %0 = load %struct.he*, %struct.he** %entry.addr, align 8
  %tobool = icmp ne %struct.he* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %1, i32 0, i32 2
  %2 = load %struct.sv*, %struct.sv** %hent_val, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %2, i32 0, i32 2
  %3 = load i32, i32* %sv_flags, align 4
  %and = and i32 %3, 255
  %cmp = icmp eq i32 %and, 13
  br i1 %cmp, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_val2 = getelementptr inbounds %struct.he, %struct.he* %4, i32 0, i32 2
  %5 = load %struct.sv*, %struct.sv** %hent_val2, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %5, i32 0, i32 0
  %6 = load i8*, i8** %sv_any, align 8
  %7 = bitcast i8* %6 to %struct.xpvgv*
  %xgv_gp = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %7, i32 0, i32 7
  %8 = load %struct.gp*, %struct.gp** %xgv_gp, align 8
  %gp_cvgen = getelementptr inbounds %struct.gp, %struct.gp* %8, i32 0, i32 8
  %9 = load i32, i32* %gp_cvgen, align 4
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br i1 false, label %land.lhs.true.8, label %if.end.12

cond.false:                                       ; preds = %land.lhs.true
  %10 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_val4 = getelementptr inbounds %struct.he, %struct.he* %10, i32 0, i32 2
  %11 = load %struct.sv*, %struct.sv** %hent_val4, align 8
  %sv_any5 = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any5, align 8
  %13 = bitcast i8* %12 to %struct.xpvgv*
  %xgv_gp6 = getelementptr inbounds %struct.xpvgv, %struct.xpvgv* %13, i32 0, i32 7
  %14 = load %struct.gp*, %struct.gp** %xgv_gp6, align 8
  %gp_cv = getelementptr inbounds %struct.gp, %struct.gp* %14, i32 0, i32 7
  %15 = load %struct.cv*, %struct.cv** %gp_cv, align 8
  %tobool7 = icmp ne %struct.cv* %15, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.12

land.lhs.true.8:                                  ; preds = %cond.false, %cond.true
  %16 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any9 = getelementptr inbounds %struct.hv, %struct.hv* %16, i32 0, i32 0
  %17 = load %struct.xpvhv*, %struct.xpvhv** %sv_any9, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %17, i32 0, i32 10
  %18 = load i8*, i8** %xhv_name, align 8
  %tobool10 = icmp ne i8* %18, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true.8
  %19 = load i32, i32* @PL_sub_generation, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* @PL_sub_generation, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %land.lhs.true.8, %cond.false, %cond.true, %if.end
  %20 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_val13 = getelementptr inbounds %struct.he, %struct.he* %20, i32 0, i32 2
  %21 = load %struct.sv*, %struct.sv** %hent_val13, align 8
  %call = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %21)
  %22 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %22, i32 0, i32 1
  %23 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %23, i32 0, i32 1
  %24 = load i32, i32* %hek_len, align 4
  %cmp14 = icmp eq i32 %24, -2
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.12
  %25 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek16 = getelementptr inbounds %struct.he, %struct.he* %25, i32 0, i32 1
  %26 = load %struct.hek*, %struct.hek** %hent_hek16, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %26, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  %27 = bitcast i8* %arraydecay to %struct.sv**
  %28 = load %struct.sv*, %struct.sv** %27, align 8
  %call17 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %28)
  %29 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek18 = getelementptr inbounds %struct.he, %struct.he* %29, i32 0, i32 1
  %30 = load %struct.hek*, %struct.hek** %hent_hek18, align 8
  %31 = bitcast %struct.hek* %30 to i8*
  call void @Perl_safesysfree(i8* %31)
  br label %if.end.27

if.else:                                          ; preds = %if.end.12
  %32 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags19 = getelementptr inbounds %struct.hv, %struct.hv* %32, i32 0, i32 2
  %33 = load i32, i32* %sv_flags19, align 4
  %and20 = and i32 %33, 536870912
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.else
  %34 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek23 = getelementptr inbounds %struct.he, %struct.he* %34, i32 0, i32 1
  %35 = load %struct.hek*, %struct.hek** %hent_hek23, align 8
  call void @Perl_unshare_hek(%struct.hek* %35)
  br label %if.end.26

if.else.24:                                       ; preds = %if.else
  %36 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek25 = getelementptr inbounds %struct.he, %struct.he* %36, i32 0, i32 1
  %37 = load %struct.hek*, %struct.hek** %hent_hek25, align 8
  %38 = bitcast %struct.hek* %37 to i8*
  call void @Perl_safesysfree(i8* %38)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.15
  %39 = load %struct.he*, %struct.he** %entry.addr, align 8
  call void @S_del_he(%struct.he* %39)
  br label %return

return:                                           ; preds = %if.end.27, %if.then
  ret void
}

declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @Perl_hv_clear(%struct.hv* %hv) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %xhv = alloca %struct.xpvhv*, align 8
  %i = alloca i32, align 4
  %entry3 = alloca %struct.he*, align 8
  %keysv = alloca %struct.sv*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %tobool = icmp ne %struct.hv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %1, i32 0, i32 0
  %2 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  store %struct.xpvhv* %2, %struct.xpvhv** %xhv, align 8
  %3 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.hv, %struct.hv* %3, i32 0, i32 2
  %4 = load i32, i32* %sv_flags, align 4
  %and = and i32 %4, 8388608
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %5, i32 0, i32 0
  %6 = load i8*, i8** %xhv_array, align 8
  %cmp = icmp ne i8* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.28

if.then.2:                                        ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.then.2
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %8, i32 0, i32 2
  %9 = load i64, i64* %xhv_max, align 8
  %conv = trunc i64 %9 to i32
  %cmp4 = icmp sle i32 %7, %conv
  br i1 %cmp4, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array6 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %11, i32 0, i32 0
  %12 = load i8*, i8** %xhv_array6, align 8
  %13 = bitcast i8* %12 to %struct.he**
  %arrayidx = getelementptr inbounds %struct.he*, %struct.he** %13, i64 %idxprom
  %14 = load %struct.he*, %struct.he** %arrayidx, align 8
  store %struct.he* %14, %struct.he** %entry3, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %15 = load %struct.he*, %struct.he** %entry3, align 8
  %tobool8 = icmp ne %struct.he* %15, null
  br i1 %tobool8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %16 = load %struct.he*, %struct.he** %entry3, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %16, i32 0, i32 2
  %17 = load %struct.sv*, %struct.sv** %hent_val, align 8
  %cmp10 = icmp ne %struct.sv* %17, @PL_sv_placeholder
  br i1 %cmp10, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %for.body.9
  %18 = load %struct.he*, %struct.he** %entry3, align 8
  %hent_val13 = getelementptr inbounds %struct.he, %struct.he* %18, i32 0, i32 2
  %19 = load %struct.sv*, %struct.sv** %hent_val13, align 8
  %tobool14 = icmp ne %struct.sv* %19, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.21

land.lhs.true.15:                                 ; preds = %if.then.12
  %20 = load %struct.he*, %struct.he** %entry3, align 8
  %hent_val16 = getelementptr inbounds %struct.he, %struct.he* %20, i32 0, i32 2
  %21 = load %struct.sv*, %struct.sv** %hent_val16, align 8
  %sv_flags17 = getelementptr inbounds %struct.sv, %struct.sv* %21, i32 0, i32 2
  %22 = load i32, i32* %sv_flags17, align 4
  %and18 = and i32 %22, 8388608
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.15
  %23 = load %struct.he*, %struct.he** %entry3, align 8
  %call = call %struct.sv* @Perl_hv_iterkeysv(%struct.he* %23)
  store %struct.sv* %call, %struct.sv** %keysv, align 8
  %24 = load %struct.sv*, %struct.sv** %keysv, align 8
  call void (i8*, ...) @Perl_croak(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0), %struct.sv* %24)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true.15, %if.then.12
  %25 = load %struct.he*, %struct.he** %entry3, align 8
  %hent_val22 = getelementptr inbounds %struct.he, %struct.he* %25, i32 0, i32 2
  %26 = load %struct.sv*, %struct.sv** %hent_val22, align 8
  call void @Perl_sv_free(%struct.sv* %26)
  %27 = load %struct.he*, %struct.he** %entry3, align 8
  %hent_val23 = getelementptr inbounds %struct.he, %struct.he* %27, i32 0, i32 2
  store %struct.sv* @PL_sv_placeholder, %struct.sv** %hent_val23, align 8
  %28 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xnv_nv = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %28, i32 0, i32 4
  %29 = load double, double* %xnv_nv, align 8
  %inc = fadd double %29, 1.000000e+00
  store double %inc, double* %xnv_nv, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.21, %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %30 = load %struct.he*, %struct.he** %entry3, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %30, i32 0, i32 0
  %31 = load %struct.he*, %struct.he** %hent_next, align 8
  store %struct.he* %31, %struct.he** %entry3, align 8
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %32, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  br label %reset

if.end.28:                                        ; preds = %land.lhs.true, %if.end
  %33 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  call void @S_hfreeentries(%struct.hv* %33)
  %34 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xnv_nv29 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %34, i32 0, i32 4
  store double 0.000000e+00, double* %xnv_nv29, align 8
  %35 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array30 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %35, i32 0, i32 0
  %36 = load i8*, i8** %xhv_array30, align 8
  %tobool31 = icmp ne i8* %36, null
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.28
  %37 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array33 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %37, i32 0, i32 0
  %38 = load i8*, i8** %xhv_array33, align 8
  %39 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max34 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %39, i32 0, i32 2
  %40 = load i64, i64* %xhv_max34, align 8
  %add = add i64 %40, 1
  %mul = mul i64 %add, 8
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 %mul, i32 1, i1 false)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.28
  %41 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags36 = getelementptr inbounds %struct.hv, %struct.hv* %41, i32 0, i32 2
  %42 = load i32, i32* %sv_flags36, align 4
  %and37 = and i32 %42, 32768
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.35
  %43 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %44 = bitcast %struct.hv* %43 to %struct.sv*
  %call40 = call i32 @Perl_mg_clear(%struct.sv* %44)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.35
  %45 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags42 = getelementptr inbounds %struct.hv, %struct.hv* %45, i32 0, i32 2
  %46 = load i32, i32* %sv_flags42, align 4
  %and43 = and i32 %46, 2147483647
  store i32 %and43, i32* %sv_flags42, align 4
  %47 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags44 = getelementptr inbounds %struct.hv, %struct.hv* %47, i32 0, i32 2
  %48 = load i32, i32* %sv_flags44, align 4
  %and45 = and i32 %48, -268435457
  store i32 %and45, i32* %sv_flags44, align 4
  br label %reset

reset:                                            ; preds = %if.end.41, %for.end.27
  %49 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any46 = getelementptr inbounds %struct.hv, %struct.hv* %49, i32 0, i32 0
  %50 = load %struct.xpvhv*, %struct.xpvhv** %sv_any46, align 8
  %xhv_eiter = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %50, i32 0, i32 8
  store %struct.he* null, %struct.he** %xhv_eiter, align 8
  br label %return

return:                                           ; preds = %reset, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_hv_iterkeysv(%struct.he* %entry1) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %entry.addr = alloca %struct.he*, align 8
  %hek = alloca %struct.hek*, align 8
  %flags = alloca i32, align 4
  %sv = alloca %struct.sv*, align 8
  %utf8_len = alloca i64, align 8
  %as_utf8 = alloca i8*, align 8
  store %struct.he* %entry1, %struct.he** %entry.addr, align 8
  %0 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %0, i32 0, i32 1
  %1 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %1, i32 0, i32 1
  %2 = load i32, i32* %hek_len, align 4
  %cmp = icmp ne i32 %2, -2
  br i1 %cmp, label %if.then, label %if.end.49

if.then:                                          ; preds = %entry
  %3 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek2 = getelementptr inbounds %struct.he, %struct.he* %3, i32 0, i32 1
  %4 = load %struct.hek*, %struct.hek** %hent_hek2, align 8
  store %struct.hek* %4, %struct.hek** %hek, align 8
  %5 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  %6 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_len3 = getelementptr inbounds %struct.hek, %struct.hek* %6, i32 0, i32 1
  %7 = load i32, i32* %hek_len3, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %8 = load i8, i8* %add.ptr4, align 1
  %conv = zext i8 %8 to i32
  store i32 %conv, i32* %flags, align 4
  %9 = load i32, i32* %flags, align 4
  %and = and i32 %9, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %10 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_len6 = getelementptr inbounds %struct.hek, %struct.hek* %10, i32 0, i32 1
  %11 = load i32, i32* %hek_len6, align 4
  %conv7 = sext i32 %11 to i64
  store i64 %conv7, i64* %utf8_len, align 8
  %12 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_key8 = getelementptr inbounds %struct.hek, %struct.hek* %12, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key8, i32 0, i32 0
  %call = call i8* @Perl_bytes_to_utf8(i8* %arraydecay9, i64* %utf8_len)
  store i8* %call, i8** %as_utf8, align 8
  %13 = load i8*, i8** %as_utf8, align 8
  %14 = load i64, i64* %utf8_len, align 8
  %call10 = call %struct.sv* @Perl_newSVpvn(i8* %13, i64 %14)
  store %struct.sv* %call10, %struct.sv** %sv, align 8
  %15 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %15, i32 0, i32 2
  %16 = load i32, i32* %sv_flags, align 4
  %or = or i32 %16, 536870912
  store i32 %or, i32* %sv_flags, align 4
  %17 = load i8*, i8** %as_utf8, align 8
  call void @Perl_safesysfree(i8* %17)
  br label %if.end.47

if.else:                                          ; preds = %if.then
  %18 = load i32, i32* %flags, align 4
  %and11 = and i32 %18, 4
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.else.31

if.then.13:                                       ; preds = %if.else
  %19 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_key14 = getelementptr inbounds %struct.hek, %struct.hek* %19, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key14, i32 0, i32 0
  %20 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_len16 = getelementptr inbounds %struct.hek, %struct.hek* %20, i32 0, i32 1
  %21 = load i32, i32* %hek_len16, align 4
  %conv17 = sext i32 %21 to i64
  %call18 = call %struct.sv* @Perl_newSVpvn(i8* %arraydecay15, i64 %conv17)
  store %struct.sv* %call18, %struct.sv** %sv, align 8
  %22 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_key19 = getelementptr inbounds %struct.hek, %struct.hek* %22, i32 0, i32 2
  %arraydecay20 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key19, i32 0, i32 0
  %23 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_len21 = getelementptr inbounds %struct.hek, %struct.hek* %23, i32 0, i32 1
  %24 = load i32, i32* %hek_len21, align 4
  %idx.ext22 = sext i32 %24 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %arraydecay20, i64 %idx.ext22
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr23, i64 1
  %25 = load i8, i8* %add.ptr24, align 1
  %conv25 = zext i8 %25 to i32
  %and26 = and i32 %conv25, 1
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.then.13
  %26 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags29 = getelementptr inbounds %struct.sv, %struct.sv* %26, i32 0, i32 2
  %27 = load i32, i32* %sv_flags29, align 4
  %or30 = or i32 %27, 536870912
  store i32 %or30, i32* %sv_flags29, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.then.13
  br label %if.end.46

if.else.31:                                       ; preds = %if.else
  %28 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_key32 = getelementptr inbounds %struct.hek, %struct.hek* %28, i32 0, i32 2
  %arraydecay33 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key32, i32 0, i32 0
  %29 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_key34 = getelementptr inbounds %struct.hek, %struct.hek* %29, i32 0, i32 2
  %arraydecay35 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key34, i32 0, i32 0
  %30 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_len36 = getelementptr inbounds %struct.hek, %struct.hek* %30, i32 0, i32 1
  %31 = load i32, i32* %hek_len36, align 4
  %idx.ext37 = sext i32 %31 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %arraydecay35, i64 %idx.ext37
  %add.ptr39 = getelementptr inbounds i8, i8* %add.ptr38, i64 1
  %32 = load i8, i8* %add.ptr39, align 1
  %conv40 = zext i8 %32 to i32
  %and41 = and i32 %conv40, 1
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.31
  %33 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_len43 = getelementptr inbounds %struct.hek, %struct.hek* %33, i32 0, i32 1
  %34 = load i32, i32* %hek_len43, align 4
  %sub = sub nsw i32 0, %34
  br label %cond.end

cond.false:                                       ; preds = %if.else.31
  %35 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_len44 = getelementptr inbounds %struct.hek, %struct.hek* %35, i32 0, i32 1
  %36 = load i32, i32* %hek_len44, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %36, %cond.false ]
  %37 = load %struct.hek*, %struct.hek** %hek, align 8
  %hek_hash = getelementptr inbounds %struct.hek, %struct.hek* %37, i32 0, i32 0
  %38 = load i32, i32* %hek_hash, align 4
  %call45 = call %struct.sv* @Perl_newSVpvn_share(i8* %arraydecay33, i32 %cond, i32 %38)
  store %struct.sv* %call45, %struct.sv** %sv, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end, %if.end
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.5
  %39 = load %struct.sv*, %struct.sv** %sv, align 8
  %call48 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %39)
  store %struct.sv* %call48, %struct.sv** %retval
  br label %return

if.end.49:                                        ; preds = %entry
  %40 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek50 = getelementptr inbounds %struct.he, %struct.he* %40, i32 0, i32 1
  %41 = load %struct.hek*, %struct.hek** %hent_hek50, align 8
  %hek_key51 = getelementptr inbounds %struct.hek, %struct.hek* %41, i32 0, i32 2
  %arraydecay52 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key51, i32 0, i32 0
  %42 = bitcast i8* %arraydecay52 to %struct.sv**
  %43 = load %struct.sv*, %struct.sv** %42, align 8
  %call53 = call %struct.sv* @Perl_sv_mortalcopy(%struct.sv* %43)
  store %struct.sv* %call53, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.end.47
  %44 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %44
}

declare void @Perl_croak(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @S_hfreeentries(%struct.hv* %hv) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %array = alloca %struct.he**, align 8
  %entry1 = alloca %struct.he*, align 8
  %oentry = alloca %struct.he*, align 8
  %riter = alloca i32, align 4
  %max = alloca i32, align 4
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store %struct.he* null, %struct.he** %oentry, align 8
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %tobool = icmp ne %struct.hv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %1, i32 0, i32 0
  %2 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %2, i32 0, i32 0
  %3 = bitcast i8** %xhv_array to %struct.he***
  %4 = load %struct.he**, %struct.he*** %3, align 8
  %tobool2 = icmp ne %struct.he** %4, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %riter, align 4
  %5 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any5 = getelementptr inbounds %struct.hv, %struct.hv* %5, i32 0, i32 0
  %6 = load %struct.xpvhv*, %struct.xpvhv** %sv_any5, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %6, i32 0, i32 2
  %7 = load i64, i64* %xhv_max, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %max, align 4
  %8 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any6 = getelementptr inbounds %struct.hv, %struct.hv* %8, i32 0, i32 0
  %9 = load %struct.xpvhv*, %struct.xpvhv** %sv_any6, align 8
  %xhv_array7 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %9, i32 0, i32 0
  %10 = bitcast i8** %xhv_array7 to %struct.he***
  %11 = load %struct.he**, %struct.he*** %10, align 8
  store %struct.he** %11, %struct.he*** %array, align 8
  %12 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any8 = getelementptr inbounds %struct.hv, %struct.hv* %12, i32 0, i32 0
  %13 = load %struct.xpvhv*, %struct.xpvhv** %sv_any8, align 8
  %xhv_array9 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %13, i32 0, i32 0
  %14 = bitcast i8** %xhv_array9 to %struct.he***
  store %struct.he** null, %struct.he*** %14, align 8
  %15 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any10 = getelementptr inbounds %struct.hv, %struct.hv* %15, i32 0, i32 0
  %16 = load %struct.xpvhv*, %struct.xpvhv** %sv_any10, align 8
  %xhv_fill = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %16, i32 0, i32 1
  store i64 0, i64* %xhv_fill, align 8
  %17 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any11 = getelementptr inbounds %struct.hv, %struct.hv* %17, i32 0, i32 0
  %18 = load %struct.xpvhv*, %struct.xpvhv** %sv_any11, align 8
  %xhv_keys = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %18, i32 0, i32 3
  store i64 0, i64* %xhv_keys, align 8
  %19 = load %struct.he**, %struct.he*** %array, align 8
  %arrayidx = getelementptr inbounds %struct.he*, %struct.he** %19, i64 0
  %20 = load %struct.he*, %struct.he** %arrayidx, align 8
  store %struct.he* %20, %struct.he** %entry1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.21, %if.end.4
  %21 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool12 = icmp ne %struct.he* %21, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.cond
  %22 = load %struct.he*, %struct.he** %entry1, align 8
  store %struct.he* %22, %struct.he** %oentry, align 8
  %23 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %23, i32 0, i32 0
  %24 = load %struct.he*, %struct.he** %hent_next, align 8
  store %struct.he* %24, %struct.he** %entry1, align 8
  %25 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %26 = load %struct.he*, %struct.he** %oentry, align 8
  call void @Perl_hv_free_ent(%struct.hv* %25, %struct.he* %26)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %for.cond
  %27 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool15 = icmp ne %struct.he* %27, null
  br i1 %tobool15, label %if.end.21, label %if.then.16

if.then.16:                                       ; preds = %if.end.14
  %28 = load i32, i32* %riter, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %riter, align 4
  %29 = load i32, i32* %max, align 4
  %cmp = icmp sgt i32 %inc, %29
  br i1 %cmp, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.16
  br label %for.end

if.end.19:                                        ; preds = %if.then.16
  %30 = load i32, i32* %riter, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.he**, %struct.he*** %array, align 8
  %arrayidx20 = getelementptr inbounds %struct.he*, %struct.he** %31, i64 %idxprom
  %32 = load %struct.he*, %struct.he** %arrayidx20, align 8
  store %struct.he* %32, %struct.he** %entry1, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.19, %if.end.14
  br label %for.cond

for.end:                                          ; preds = %if.then.18
  %33 = load %struct.he**, %struct.he*** %array, align 8
  %34 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any22 = getelementptr inbounds %struct.hv, %struct.hv* %34, i32 0, i32 0
  %35 = load %struct.xpvhv*, %struct.xpvhv** %sv_any22, align 8
  %xhv_array23 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %35, i32 0, i32 0
  %36 = bitcast i8** %xhv_array23 to %struct.he***
  store %struct.he** %33, %struct.he*** %36, align 8
  %37 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %call = call i32 @Perl_hv_iterinit(%struct.hv* %37)
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  ret void
}

declare i32 @Perl_mg_clear(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define void @Perl_hv_clear_placeholders(%struct.hv* %hv) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %items = alloca i32, align 4
  %i = alloca i32, align 4
  %first = alloca i32, align 4
  %oentry = alloca %struct.he**, align 8
  %entry5 = alloca %struct.he*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %0, i32 0, i32 0
  %1 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  %xnv_nv = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %1, i32 0, i32 4
  %2 = load double, double* %xnv_nv, align 8
  %conv = fptosi double %2 to i32
  store i32 %conv, i32* %items, align 4
  %3 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.hv, %struct.hv* %3, i32 0, i32 0
  %4 = load %struct.xpvhv*, %struct.xpvhv** %sv_any1, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %4, i32 0, i32 2
  %5 = load i64, i64* %xhv_max, align 8
  %conv2 = trunc i64 %5 to i32
  store i32 %conv2, i32* %i, align 4
  %6 = load i32, i32* %items, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  store i32 1, i32* %first, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any4 = getelementptr inbounds %struct.hv, %struct.hv* %8, i32 0, i32 0
  %9 = load %struct.xpvhv*, %struct.xpvhv** %sv_any4, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %9, i32 0, i32 0
  %10 = bitcast i8** %xhv_array to %struct.he***
  %11 = load %struct.he**, %struct.he*** %10, align 8
  %arrayidx = getelementptr inbounds %struct.he*, %struct.he** %11, i64 %idxprom
  store %struct.he** %arrayidx, %struct.he*** %oentry, align 8
  %12 = load %struct.he**, %struct.he*** %oentry, align 8
  %13 = load %struct.he*, %struct.he** %12, align 8
  store %struct.he* %13, %struct.he** %entry5, align 8
  %14 = load %struct.he*, %struct.he** %entry5, align 8
  %tobool = icmp ne %struct.he* %14, null
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %do.body
  br label %do.cond

if.end.7:                                         ; preds = %do.body
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %15 = load %struct.he*, %struct.he** %entry5, align 8
  %tobool8 = icmp ne %struct.he* %15, null
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.he*, %struct.he** %entry5, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %16, i32 0, i32 2
  %17 = load %struct.sv*, %struct.sv** %hent_val, align 8
  %cmp9 = icmp eq %struct.sv* %17, @PL_sv_placeholder
  br i1 %cmp9, label %if.then.11, label %if.else.43

if.then.11:                                       ; preds = %for.body
  %18 = load %struct.he*, %struct.he** %entry5, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %18, i32 0, i32 0
  %19 = load %struct.he*, %struct.he** %hent_next, align 8
  %20 = load %struct.he**, %struct.he*** %oentry, align 8
  store %struct.he* %19, %struct.he** %20, align 8
  %21 = load i32, i32* %first, align 4
  %tobool12 = icmp ne i32 %21, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.then.11
  %22 = load %struct.he**, %struct.he*** %oentry, align 8
  %23 = load %struct.he*, %struct.he** %22, align 8
  %tobool13 = icmp ne %struct.he* %23, null
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true
  %24 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any15 = getelementptr inbounds %struct.hv, %struct.hv* %24, i32 0, i32 0
  %25 = load %struct.xpvhv*, %struct.xpvhv** %sv_any15, align 8
  %xhv_fill = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %25, i32 0, i32 1
  %26 = load i64, i64* %xhv_fill, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %xhv_fill, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %land.lhs.true, %if.then.11
  %27 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any17 = getelementptr inbounds %struct.hv, %struct.hv* %27, i32 0, i32 0
  %28 = load %struct.xpvhv*, %struct.xpvhv** %sv_any17, align 8
  %xhv_eiter = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %28, i32 0, i32 8
  %29 = load %struct.he*, %struct.he** %xhv_eiter, align 8
  %tobool18 = icmp ne %struct.he* %29, null
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.16
  %30 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.hv, %struct.hv* %30, i32 0, i32 2
  %31 = load i32, i32* %sv_flags, align 4
  %or = or i32 %31, 1073741824
  store i32 %or, i32* %sv_flags, align 4
  br label %if.end.20

if.else:                                          ; preds = %if.end.16
  %32 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %33 = load %struct.he*, %struct.he** %entry5, align 8
  call void @Perl_hv_free_ent(%struct.hv* %32, %struct.he* %33)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  %34 = load i32, i32* %items, align 4
  %dec21 = add nsw i32 %34, -1
  store i32 %dec21, i32* %items, align 4
  %cmp22 = icmp eq i32 %dec21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.42

if.then.24:                                       ; preds = %if.end.20
  %35 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any25 = getelementptr inbounds %struct.hv, %struct.hv* %35, i32 0, i32 0
  %36 = load %struct.xpvhv*, %struct.xpvhv** %sv_any25, align 8
  %xnv_nv26 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %36, i32 0, i32 4
  %37 = load double, double* %xnv_nv26, align 8
  %conv27 = fptosi double %37 to i64
  %38 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any28 = getelementptr inbounds %struct.hv, %struct.hv* %38, i32 0, i32 0
  %39 = load %struct.xpvhv*, %struct.xpvhv** %sv_any28, align 8
  %xhv_keys = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %39, i32 0, i32 3
  %40 = load i64, i64* %xhv_keys, align 8
  %sub = sub nsw i64 %40, %conv27
  store i64 %sub, i64* %xhv_keys, align 8
  %41 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any29 = getelementptr inbounds %struct.hv, %struct.hv* %41, i32 0, i32 0
  %42 = load %struct.xpvhv*, %struct.xpvhv** %sv_any29, align 8
  %xhv_keys30 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %42, i32 0, i32 3
  %43 = load i64, i64* %xhv_keys30, align 8
  %44 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any31 = getelementptr inbounds %struct.hv, %struct.hv* %44, i32 0, i32 0
  %45 = load %struct.xpvhv*, %struct.xpvhv** %sv_any31, align 8
  %xnv_nv32 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %45, i32 0, i32 4
  %46 = load double, double* %xnv_nv32, align 8
  %conv33 = fptosi double %46 to i64
  %sub34 = sub nsw i64 %43, %conv33
  %cmp35 = icmp eq i64 %sub34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.then.24
  %47 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags38 = getelementptr inbounds %struct.hv, %struct.hv* %47, i32 0, i32 2
  %48 = load i32, i32* %sv_flags38, align 4
  %and = and i32 %48, 2147483647
  store i32 %and, i32* %sv_flags38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.then.24
  %49 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any40 = getelementptr inbounds %struct.hv, %struct.hv* %49, i32 0, i32 0
  %50 = load %struct.xpvhv*, %struct.xpvhv** %sv_any40, align 8
  %xnv_nv41 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %50, i32 0, i32 4
  store double 0.000000e+00, double* %xnv_nv41, align 8
  br label %do.end

if.end.42:                                        ; preds = %if.end.20
  br label %if.end.45

if.else.43:                                       ; preds = %for.body
  %51 = load %struct.he*, %struct.he** %entry5, align 8
  %hent_next44 = getelementptr inbounds %struct.he, %struct.he* %51, i32 0, i32 0
  store %struct.he** %hent_next44, %struct.he*** %oentry, align 8
  store i32 0, i32* %first, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.end.42
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %52 = load %struct.he**, %struct.he*** %oentry, align 8
  %53 = load %struct.he*, %struct.he** %52, align 8
  store %struct.he* %53, %struct.he** %entry5, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end, %if.then.6
  %54 = load i32, i32* %i, align 4
  %dec46 = add nsw i32 %54, -1
  store i32 %dec46, i32* %i, align 4
  %cmp47 = icmp sge i32 %dec46, 0
  br i1 %cmp47, label %do.body, label %do.end

do.end:                                           ; preds = %if.then, %if.end.39, %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Perl_hv_undef(%struct.hv* %hv) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %xhv = alloca %struct.xpvhv*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %tobool = icmp ne %struct.hv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.21

if.end:                                           ; preds = %entry
  %1 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %1, i32 0, i32 0
  %2 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  store %struct.xpvhv* %2, %struct.xpvhv** %xhv, align 8
  %3 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  call void @S_hfreeentries(%struct.hv* %3)
  %4 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %4, i32 0, i32 0
  %5 = load i8*, i8** %xhv_array, align 8
  call void @Perl_safesysfree(i8* %5)
  %6 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any1 = getelementptr inbounds %struct.hv, %struct.hv* %6, i32 0, i32 0
  %7 = load %struct.xpvhv*, %struct.xpvhv** %sv_any1, align 8
  %xhv_name = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %7, i32 0, i32 10
  %8 = load i8*, i8** %xhv_name, align 8
  %tobool2 = icmp ne i8* %8, null
  br i1 %tobool2, label %if.then.3, label %if.end.16

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.hv*, %struct.hv** @PL_stashcache, align 8
  %tobool4 = icmp ne %struct.hv* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.then.3
  %10 = load %struct.hv*, %struct.hv** @PL_stashcache, align 8
  %11 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any6 = getelementptr inbounds %struct.hv, %struct.hv* %11, i32 0, i32 0
  %12 = load %struct.xpvhv*, %struct.xpvhv** %sv_any6, align 8
  %xhv_name7 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %12, i32 0, i32 10
  %13 = load i8*, i8** %xhv_name7, align 8
  %14 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any8 = getelementptr inbounds %struct.hv, %struct.hv* %14, i32 0, i32 0
  %15 = load %struct.xpvhv*, %struct.xpvhv** %sv_any8, align 8
  %xhv_name9 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %15, i32 0, i32 10
  %16 = load i8*, i8** %xhv_name9, align 8
  %call = call i64 @strlen(i8* %16)
  %conv = trunc i64 %call to i32
  %call10 = call %struct.sv* @Perl_hv_delete(%struct.hv* %10, i8* %13, i32 %conv, i32 2)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.5, %if.then.3
  %17 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any12 = getelementptr inbounds %struct.hv, %struct.hv* %17, i32 0, i32 0
  %18 = load %struct.xpvhv*, %struct.xpvhv** %sv_any12, align 8
  %xhv_name13 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %18, i32 0, i32 10
  %19 = load i8*, i8** %xhv_name13, align 8
  call void @Perl_safesysfree(i8* %19)
  %20 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any14 = getelementptr inbounds %struct.hv, %struct.hv* %20, i32 0, i32 0
  %21 = load %struct.xpvhv*, %struct.xpvhv** %sv_any14, align 8
  %xhv_name15 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %21, i32 0, i32 10
  store i8* null, i8** %xhv_name15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.11, %if.end
  %22 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %22, i32 0, i32 2
  store i64 7, i64* %xhv_max, align 8
  %23 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array17 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %23, i32 0, i32 0
  store i8* null, i8** %xhv_array17, align 8
  %24 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xnv_nv = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %24, i32 0, i32 4
  store double 0.000000e+00, double* %xnv_nv, align 8
  %25 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.hv, %struct.hv* %25, i32 0, i32 2
  %26 = load i32, i32* %sv_flags, align 4
  %and = and i32 %26, 32768
  %tobool18 = icmp ne i32 %and, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.16
  %27 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %28 = bitcast %struct.hv* %27 to %struct.sv*
  %call20 = call i32 @Perl_mg_clear(%struct.sv* %28)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then, %if.then.19, %if.end.16
  ret void
}

declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.he* @Perl_hv_iternext(%struct.hv* %hv) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %call = call %struct.he* @Perl_hv_iternext_flags(%struct.hv* %0, i32 0)
  ret %struct.he* %call
}

declare void @Perl_sv_setsv_flags(%struct.sv*, %struct.sv*, i32) #1

declare %struct.sv* @Perl_newSVpvn(i8*, i64) #1

declare i32 @Perl_magic_nextpack(%struct.sv*, %struct.magic*, %struct.sv*) #1

; Function Attrs: nounwind uwtable
define i8* @Perl_hv_iterkey(%struct.he* %entry1, i32* %retlen) #0 {
entry:
  %retval = alloca i8*, align 8
  %entry.addr = alloca %struct.he*, align 8
  %retlen.addr = alloca i32*, align 8
  %len = alloca i64, align 8
  %p = alloca i8*, align 8
  store %struct.he* %entry1, %struct.he** %entry.addr, align 8
  store i32* %retlen, i32** %retlen.addr, align 8
  %0 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %0, i32 0, i32 1
  %1 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %1, i32 0, i32 1
  %2 = load i32, i32* %hek_len, align 4
  %cmp = icmp eq i32 %2, -2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek2 = getelementptr inbounds %struct.he, %struct.he* %3, i32 0, i32 1
  %4 = load %struct.hek*, %struct.hek** %hent_hek2, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  %5 = bitcast i8* %arraydecay to %struct.sv**
  %6 = load %struct.sv*, %struct.sv** %5, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %6, i32 0, i32 2
  %7 = load i32, i32* %sv_flags, align 4
  %and = and i32 %7, 262144
  %cmp3 = icmp eq i32 %and, 262144
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %8 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek4 = getelementptr inbounds %struct.he, %struct.he* %8, i32 0, i32 1
  %9 = load %struct.hek*, %struct.hek** %hent_hek4, align 8
  %hek_key5 = getelementptr inbounds %struct.hek, %struct.hek* %9, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key5, i32 0, i32 0
  %10 = bitcast i8* %arraydecay6 to %struct.sv**
  %11 = load %struct.sv*, %struct.sv** %10, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %11, i32 0, i32 0
  %12 = load i8*, i8** %sv_any, align 8
  %13 = bitcast i8* %12 to %struct.xpv*
  %xpv_cur = getelementptr inbounds %struct.xpv, %struct.xpv* %13, i32 0, i32 1
  %14 = load i64, i64* %xpv_cur, align 8
  store i64 %14, i64* %len, align 8
  %15 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek7 = getelementptr inbounds %struct.he, %struct.he* %15, i32 0, i32 1
  %16 = load %struct.hek*, %struct.hek** %hent_hek7, align 8
  %hek_key8 = getelementptr inbounds %struct.hek, %struct.hek* %16, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key8, i32 0, i32 0
  %17 = bitcast i8* %arraydecay9 to %struct.sv**
  %18 = load %struct.sv*, %struct.sv** %17, align 8
  %sv_any10 = getelementptr inbounds %struct.sv, %struct.sv* %18, i32 0, i32 0
  %19 = load i8*, i8** %sv_any10, align 8
  %20 = bitcast i8* %19 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %20, i32 0, i32 0
  %21 = load i8*, i8** %xpv_pv, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %22 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek11 = getelementptr inbounds %struct.he, %struct.he* %22, i32 0, i32 1
  %23 = load %struct.hek*, %struct.hek** %hent_hek11, align 8
  %hek_key12 = getelementptr inbounds %struct.hek, %struct.hek* %23, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key12, i32 0, i32 0
  %24 = bitcast i8* %arraydecay13 to %struct.sv**
  %25 = load %struct.sv*, %struct.sv** %24, align 8
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %25, i64* %len, i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %21, %cond.true ], [ %call, %cond.false ]
  store i8* %cond, i8** %p, align 8
  %26 = load i64, i64* %len, align 8
  %conv = trunc i64 %26 to i32
  %27 = load i32*, i32** %retlen.addr, align 8
  store i32 %conv, i32* %27, align 4
  %28 = load i8*, i8** %p, align 8
  store i8* %28, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %29 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek14 = getelementptr inbounds %struct.he, %struct.he* %29, i32 0, i32 1
  %30 = load %struct.hek*, %struct.hek** %hent_hek14, align 8
  %hek_len15 = getelementptr inbounds %struct.hek, %struct.hek* %30, i32 0, i32 1
  %31 = load i32, i32* %hek_len15, align 4
  %32 = load i32*, i32** %retlen.addr, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek16 = getelementptr inbounds %struct.he, %struct.he* %33, i32 0, i32 1
  %34 = load %struct.hek*, %struct.hek** %hent_hek16, align 8
  %hek_key17 = getelementptr inbounds %struct.hek, %struct.hek* %34, i32 0, i32 2
  %arraydecay18 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key17, i32 0, i32 0
  store i8* %arraydecay18, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %cond.end
  %35 = load i8*, i8** %retval
  ret i8* %35
}

declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #1

declare i8* @Perl_bytes_to_utf8(i8*, i64*) #1

declare %struct.sv* @Perl_newSVpvn_share(i8*, i32, i32) #1

declare %struct.sv* @Perl_sv_mortalcopy(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_hv_iterval(%struct.hv* %hv, %struct.he* %entry1) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %hv.addr = alloca %struct.hv*, align 8
  %entry.addr = alloca %struct.he*, align 8
  %sv = alloca %struct.sv*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store %struct.he* %entry1, %struct.he** %entry.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.hv, %struct.hv* %0, i32 0, i32 2
  %1 = load i32, i32* %sv_flags, align 4
  %and = and i32 %1, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %2 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %3 = bitcast %struct.hv* %2 to %struct.sv*
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %3, i32 80)
  %tobool2 = icmp ne %struct.magic* %call, null
  br i1 %tobool2, label %if.then.3, label %if.end.14

if.then.3:                                        ; preds = %if.then
  %call4 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call4, %struct.sv** %sv, align 8
  %4 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %4, i32 0, i32 1
  %5 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %5, i32 0, i32 1
  %6 = load i32, i32* %hek_len, align 4
  %cmp = icmp eq i32 %6, -2
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  %7 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %8 = bitcast %struct.hv* %7 to %struct.sv*
  %9 = load %struct.sv*, %struct.sv** %sv, align 8
  %10 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek6 = getelementptr inbounds %struct.he, %struct.he* %10, i32 0, i32 1
  %11 = load %struct.hek*, %struct.hek** %hent_hek6, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  %12 = bitcast i8* %arraydecay to %struct.sv**
  %13 = load %struct.sv*, %struct.sv** %12, align 8
  %14 = bitcast %struct.sv* %13 to i8*
  %call7 = call i32 @Perl_mg_copy(%struct.sv* %8, %struct.sv* %9, i8* %14, i32 -2)
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %15 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %16 = bitcast %struct.hv* %15 to %struct.sv*
  %17 = load %struct.sv*, %struct.sv** %sv, align 8
  %18 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek8 = getelementptr inbounds %struct.he, %struct.he* %18, i32 0, i32 1
  %19 = load %struct.hek*, %struct.hek** %hent_hek8, align 8
  %hek_key9 = getelementptr inbounds %struct.hek, %struct.hek* %19, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key9, i32 0, i32 0
  %20 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_hek11 = getelementptr inbounds %struct.he, %struct.he* %20, i32 0, i32 1
  %21 = load %struct.hek*, %struct.hek** %hent_hek11, align 8
  %hek_len12 = getelementptr inbounds %struct.hek, %struct.hek* %21, i32 0, i32 1
  %22 = load i32, i32* %hek_len12, align 4
  %call13 = call i32 @Perl_mg_copy(%struct.sv* %16, %struct.sv* %17, i8* %arraydecay10, i32 %22)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %23 = load %struct.sv*, %struct.sv** %sv, align 8
  store %struct.sv* %23, %struct.sv** %retval
  br label %return

if.end.14:                                        ; preds = %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %24 = load %struct.he*, %struct.he** %entry.addr, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %24, i32 0, i32 2
  %25 = load %struct.sv*, %struct.sv** %hent_val, align 8
  store %struct.sv* %25, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.end
  %26 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %26
}

declare i32 @Perl_mg_copy(%struct.sv*, %struct.sv*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.sv* @Perl_hv_iternextsv(%struct.hv* %hv, i8** %key, i32* %retlen) #0 {
entry:
  %retval = alloca %struct.sv*, align 8
  %hv.addr = alloca %struct.hv*, align 8
  %key.addr = alloca i8**, align 8
  %retlen.addr = alloca i32*, align 8
  %he = alloca %struct.he*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store i8** %key, i8*** %key.addr, align 8
  store i32* %retlen, i32** %retlen.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %call = call %struct.he* @Perl_hv_iternext_flags(%struct.hv* %0, i32 0)
  store %struct.he* %call, %struct.he** %he, align 8
  %cmp = icmp eq %struct.he* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.sv* null, %struct.sv** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.he*, %struct.he** %he, align 8
  %2 = load i32*, i32** %retlen.addr, align 8
  %call1 = call i8* @Perl_hv_iterkey(%struct.he* %1, i32* %2)
  %3 = load i8**, i8*** %key.addr, align 8
  store i8* %call1, i8** %3, align 8
  %4 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %5 = load %struct.he*, %struct.he** %he, align 8
  %call2 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %4, %struct.he* %5)
  store %struct.sv* %call2, %struct.sv** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.sv*, %struct.sv** %retval
  ret %struct.sv* %6
}

; Function Attrs: nounwind uwtable
define void @Perl_hv_magic(%struct.hv* %hv, %struct.gv* %gv, i32 %how) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %gv.addr = alloca %struct.gv*, align 8
  %how.addr = alloca i32, align 4
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store %struct.gv* %gv, %struct.gv** %gv.addr, align 8
  store i32 %how, i32* %how.addr, align 4
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %1 = bitcast %struct.hv* %0 to %struct.sv*
  %2 = load %struct.gv*, %struct.gv** %gv.addr, align 8
  %3 = bitcast %struct.gv* %2 to %struct.sv*
  %4 = load i32, i32* %how.addr, align 4
  call void @Perl_sv_magic(%struct.sv* %1, %struct.sv* %3, i32 %4, i8* null, i32 0)
  ret void
}

declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @Perl_unsharepvn(i8* %str, i32 %len, i32 %hash) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i32, i32* %len.addr, align 4
  %2 = load i32, i32* %hash.addr, align 4
  call void @S_unshare_hek_or_pvn(%struct.hek* null, i8* %0, i32 %1, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @S_unshare_hek_or_pvn(%struct.hek* %hek, i8* %str, i32 %len, i32 %hash) #0 {
entry:
  %hek.addr = alloca %struct.hek*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %xhv = alloca %struct.xpvhv*, align 8
  %entry1 = alloca %struct.he*, align 8
  %oentry = alloca %struct.he**, align 8
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %is_utf8 = alloca i8, align 1
  %k_flags = alloca i32, align 4
  %save = alloca i8*, align 8
  %tmplen = alloca i64, align 8
  %flags_masked = alloca i32, align 4
  store %struct.hek* %hek, %struct.hek** %hek.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  store i32 1, i32* %i, align 4
  store i32 0, i32* %found, align 4
  store i8 0, i8* %is_utf8, align 1
  store i32 0, i32* %k_flags, align 4
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %save, align 8
  %1 = load %struct.hek*, %struct.hek** %hek.addr, align 8
  %tobool = icmp ne %struct.hek* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.hek*, %struct.hek** %hek.addr, align 8
  %hek_hash = getelementptr inbounds %struct.hek, %struct.hek* %2, i32 0, i32 0
  %3 = load i32, i32* %hek_hash, align 4
  store i32 %3, i32* %hash.addr, align 4
  br label %if.end.11

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.else
  %5 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 0, %5
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %tmplen, align 8
  store i8 1, i8* %is_utf8, align 1
  %6 = load i8*, i8** %str.addr, align 8
  %call = call i8* @Perl_bytes_from_utf8(i8* %6, i64* %tmplen, i8* %is_utf8)
  store i8* %call, i8** %str.addr, align 8
  %7 = load i64, i64* %tmplen, align 8
  %conv3 = trunc i64 %7 to i32
  store i32 %conv3, i32* %len.addr, align 4
  %8 = load i8, i8* %is_utf8, align 1
  %tobool4 = icmp ne i8 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.2
  store i32 1, i32* %k_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.2
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i8*, i8** %save, align 8
  %cmp6 = icmp ne i8* %9, %10
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %11 = load i32, i32* %k_flags, align 4
  %or = or i32 %11, 258
  store i32 %or, i32* %k_flags, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then
  %12 = load %struct.hv*, %struct.hv** @PL_strtab, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %12, i32 0, i32 0
  %13 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  store %struct.xpvhv* %13, %struct.xpvhv** %xhv, align 8
  %14 = load i32, i32* %hash.addr, align 4
  %15 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %15, i32 0, i32 2
  %16 = load i64, i64* %xhv_max, align 8
  %conv12 = trunc i64 %16 to i32
  %and = and i32 %14, %conv12
  %idxprom = zext i32 %and to i64
  %17 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %17, i32 0, i32 0
  %18 = load i8*, i8** %xhv_array, align 8
  %19 = bitcast i8* %18 to %struct.he**
  %arrayidx = getelementptr inbounds %struct.he*, %struct.he** %19, i64 %idxprom
  store %struct.he** %arrayidx, %struct.he*** %oentry, align 8
  %20 = load %struct.hek*, %struct.hek** %hek.addr, align 8
  %tobool13 = icmp ne %struct.hek* %20, null
  br i1 %tobool13, label %if.then.14, label %if.else.20

if.then.14:                                       ; preds = %if.end.11
  %21 = load %struct.he**, %struct.he*** %oentry, align 8
  %22 = load %struct.he*, %struct.he** %21, align 8
  store %struct.he* %22, %struct.he** %entry1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %23 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool15 = icmp ne %struct.he* %23, null
  br i1 %tobool15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %24, i32 0, i32 1
  %25 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %26 = load %struct.hek*, %struct.hek** %hek.addr, align 8
  %cmp16 = icmp ne %struct.hek* %25, %26
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  br label %for.inc

if.end.19:                                        ; preds = %for.body
  store i32 1, i32* %found, align 4
  br label %for.end

for.inc:                                          ; preds = %if.then.18
  store i32 0, i32* %i, align 4
  %27 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %27, i32 0, i32 0
  store %struct.he** %hent_next, %struct.he*** %oentry, align 8
  %28 = load %struct.he**, %struct.he*** %oentry, align 8
  %29 = load %struct.he*, %struct.he** %28, align 8
  store %struct.he* %29, %struct.he** %entry1, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.19, %for.cond
  br label %if.end.61

if.else.20:                                       ; preds = %if.end.11
  %30 = load i32, i32* %k_flags, align 4
  %and21 = and i32 %30, 255
  store i32 %and21, i32* %flags_masked, align 4
  %31 = load %struct.he**, %struct.he*** %oentry, align 8
  %32 = load %struct.he*, %struct.he** %31, align 8
  store %struct.he* %32, %struct.he** %entry1, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.58, %if.else.20
  %33 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool23 = icmp ne %struct.he* %33, null
  br i1 %tobool23, label %for.body.24, label %for.end.60

for.body.24:                                      ; preds = %for.cond.22
  %34 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek25 = getelementptr inbounds %struct.he, %struct.he* %34, i32 0, i32 1
  %35 = load %struct.hek*, %struct.hek** %hent_hek25, align 8
  %hek_hash26 = getelementptr inbounds %struct.hek, %struct.hek* %35, i32 0, i32 0
  %36 = load i32, i32* %hek_hash26, align 4
  %37 = load i32, i32* %hash.addr, align 4
  %cmp27 = icmp ne i32 %36, %37
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.body.24
  br label %for.inc.58

if.end.30:                                        ; preds = %for.body.24
  %38 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek31 = getelementptr inbounds %struct.he, %struct.he* %38, i32 0, i32 1
  %39 = load %struct.hek*, %struct.hek** %hent_hek31, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %39, i32 0, i32 1
  %40 = load i32, i32* %hek_len, align 4
  %41 = load i32, i32* %len.addr, align 4
  %cmp32 = icmp ne i32 %40, %41
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.30
  br label %for.inc.58

if.end.35:                                        ; preds = %if.end.30
  %42 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek36 = getelementptr inbounds %struct.he, %struct.he* %42, i32 0, i32 1
  %43 = load %struct.hek*, %struct.hek** %hent_hek36, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %43, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  %44 = load i8*, i8** %str.addr, align 8
  %cmp37 = icmp ne i8* %arraydecay, %44
  br i1 %cmp37, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %if.end.35
  %45 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek39 = getelementptr inbounds %struct.he, %struct.he* %45, i32 0, i32 1
  %46 = load %struct.hek*, %struct.hek** %hent_hek39, align 8
  %hek_key40 = getelementptr inbounds %struct.hek, %struct.hek* %46, i32 0, i32 2
  %arraydecay41 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key40, i32 0, i32 0
  %47 = load i8*, i8** %str.addr, align 8
  %48 = load i32, i32* %len.addr, align 4
  %conv42 = sext i32 %48 to i64
  %call43 = call i32 @memcmp(i8* %arraydecay41, i8* %47, i64 %conv42)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true
  br label %for.inc.58

if.end.46:                                        ; preds = %land.lhs.true, %if.end.35
  %49 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek47 = getelementptr inbounds %struct.he, %struct.he* %49, i32 0, i32 1
  %50 = load %struct.hek*, %struct.hek** %hent_hek47, align 8
  %hek_key48 = getelementptr inbounds %struct.hek, %struct.hek* %50, i32 0, i32 2
  %arraydecay49 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key48, i32 0, i32 0
  %51 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek50 = getelementptr inbounds %struct.he, %struct.he* %51, i32 0, i32 1
  %52 = load %struct.hek*, %struct.hek** %hent_hek50, align 8
  %hek_len51 = getelementptr inbounds %struct.hek, %struct.hek* %52, i32 0, i32 1
  %53 = load i32, i32* %hek_len51, align 4
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay49, i64 %idx.ext
  %add.ptr52 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %54 = load i8, i8* %add.ptr52, align 1
  %conv53 = zext i8 %54 to i32
  %55 = load i32, i32* %flags_masked, align 4
  %cmp54 = icmp ne i32 %conv53, %55
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.46
  br label %for.inc.58

if.end.57:                                        ; preds = %if.end.46
  store i32 1, i32* %found, align 4
  br label %for.end.60

for.inc.58:                                       ; preds = %if.then.56, %if.then.45, %if.then.34, %if.then.29
  store i32 0, i32* %i, align 4
  %56 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next59 = getelementptr inbounds %struct.he, %struct.he* %56, i32 0, i32 0
  store %struct.he** %hent_next59, %struct.he*** %oentry, align 8
  %57 = load %struct.he**, %struct.he*** %oentry, align 8
  %58 = load %struct.he*, %struct.he** %57, align 8
  store %struct.he* %58, %struct.he** %entry1, align 8
  br label %for.cond.22

for.end.60:                                       ; preds = %if.end.57, %for.cond.22
  br label %if.end.61

if.end.61:                                        ; preds = %for.end.60, %for.end
  %59 = load i32, i32* %found, align 4
  %tobool62 = icmp ne i32 %59, 0
  br i1 %tobool62, label %if.then.63, label %if.end.76

if.then.63:                                       ; preds = %if.end.61
  %60 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_val = getelementptr inbounds %struct.he, %struct.he* %60, i32 0, i32 2
  %61 = load %struct.sv*, %struct.sv** %hent_val, align 8
  %incdec.ptr = getelementptr inbounds %struct.sv, %struct.sv* %61, i32 -1
  store %struct.sv* %incdec.ptr, %struct.sv** %hent_val, align 8
  %cmp64 = icmp eq %struct.sv* %incdec.ptr, null
  br i1 %cmp64, label %if.then.66, label %if.end.75

if.then.66:                                       ; preds = %if.then.63
  %62 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next67 = getelementptr inbounds %struct.he, %struct.he* %62, i32 0, i32 0
  %63 = load %struct.he*, %struct.he** %hent_next67, align 8
  %64 = load %struct.he**, %struct.he*** %oentry, align 8
  store %struct.he* %63, %struct.he** %64, align 8
  %65 = load i32, i32* %i, align 4
  %tobool68 = icmp ne i32 %65, 0
  br i1 %tobool68, label %land.lhs.true.69, label %if.end.72

land.lhs.true.69:                                 ; preds = %if.then.66
  %66 = load %struct.he**, %struct.he*** %oentry, align 8
  %67 = load %struct.he*, %struct.he** %66, align 8
  %tobool70 = icmp ne %struct.he* %67, null
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %land.lhs.true.69
  %68 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_fill = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %68, i32 0, i32 1
  %69 = load i64, i64* %xhv_fill, align 8
  %dec = add i64 %69, -1
  store i64 %dec, i64* %xhv_fill, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %land.lhs.true.69, %if.then.66
  %70 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek73 = getelementptr inbounds %struct.he, %struct.he* %70, i32 0, i32 1
  %71 = load %struct.hek*, %struct.hek** %hent_hek73, align 8
  %72 = bitcast %struct.hek* %71 to i8*
  call void @Perl_safesysfree(i8* %72)
  %73 = load %struct.he*, %struct.he** %entry1, align 8
  call void @S_del_he(%struct.he* %73)
  %74 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_keys = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %74, i32 0, i32 3
  %75 = load i64, i64* %xhv_keys, align 8
  %dec74 = add nsw i64 %75, -1
  store i64 %dec74, i64* %xhv_keys, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.72, %if.then.63
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.61
  %76 = load i32, i32* %found, align 4
  %tobool77 = icmp ne i32 %76, 0
  br i1 %tobool77, label %if.end.102, label %land.lhs.true.78

land.lhs.true.78:                                 ; preds = %if.end.76
  %77 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings = getelementptr inbounds %struct.cop, %struct.cop* %77, i32 0, i32 14
  %78 = load %struct.sv*, %struct.sv** %cop_warnings, align 8
  %cmp79 = icmp eq %struct.sv* %78, null
  br i1 %cmp79, label %if.then.95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.78
  %79 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings81 = getelementptr inbounds %struct.cop, %struct.cop* %79, i32 0, i32 14
  %80 = load %struct.sv*, %struct.sv** %cop_warnings81, align 8
  %cmp82 = icmp eq %struct.sv* %80, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 1)
  br i1 %cmp82, label %if.then.95, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false
  %81 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings85 = getelementptr inbounds %struct.cop, %struct.cop* %81, i32 0, i32 14
  %82 = load %struct.sv*, %struct.sv** %cop_warnings85, align 8
  %cmp86 = icmp ne %struct.sv* %82, getelementptr inbounds (%struct.sv, %struct.sv* null, i64 2)
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.102

land.lhs.true.88:                                 ; preds = %lor.lhs.false.84
  %83 = load volatile %struct.cop*, %struct.cop** @PL_curcop, align 8
  %cop_warnings89 = getelementptr inbounds %struct.cop, %struct.cop* %83, i32 0, i32 14
  %84 = load %struct.sv*, %struct.sv** %cop_warnings89, align 8
  %sv_any90 = getelementptr inbounds %struct.sv, %struct.sv* %84, i32 0, i32 0
  %85 = load i8*, i8** %sv_any90, align 8
  %86 = bitcast i8* %85 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %86, i32 0, i32 0
  %87 = load i8*, i8** %xpv_pv, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %87, i64 6
  %88 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %88 to i32
  %and93 = and i32 %conv92, 1
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.102

if.then.95:                                       ; preds = %land.lhs.true.88, %lor.lhs.false, %land.lhs.true.78
  %89 = load %struct.hek*, %struct.hek** %hek.addr, align 8
  %tobool96 = icmp ne %struct.hek* %89, null
  br i1 %tobool96, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.95
  %90 = load %struct.hek*, %struct.hek** %hek.addr, align 8
  %hek_key97 = getelementptr inbounds %struct.hek, %struct.hek* %90, i32 0, i32 2
  %arraydecay98 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key97, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.then.95
  %91 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arraydecay98, %cond.true ], [ %91, %cond.false ]
  %92 = load i32, i32* %k_flags, align 4
  %and99 = and i32 %92, 1
  %tobool100 = icmp ne i32 %and99, 0
  %cond101 = select i1 %tobool100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)
  call void (i32, i8*, ...) @Perl_warner(i32 24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0), i8* %cond, i8* %cond101)
  br label %if.end.102

if.end.102:                                       ; preds = %cond.end, %land.lhs.true.88, %lor.lhs.false.84, %if.end.76
  %93 = load i32, i32* %k_flags, align 4
  %and103 = and i32 %93, 256
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.102
  %94 = load i8*, i8** %str.addr, align 8
  call void @Perl_safesysfree(i8* %94)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %if.end.102
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.hek* @Perl_share_hek(i8* %str, i32 %len, i32 %hash) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %is_utf8 = alloca i8, align 1
  %flags = alloca i32, align 4
  %save = alloca i8*, align 8
  %tmplen = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %hash, i32* %hash.addr, align 4
  store i8 0, i8* %is_utf8, align 1
  store i32 0, i32* %flags, align 4
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %save, align 8
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 0, %2
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %tmplen, align 8
  store i8 1, i8* %is_utf8, align 1
  %3 = load i8*, i8** %str.addr, align 8
  %call = call i8* @Perl_bytes_from_utf8(i8* %3, i64* %tmplen, i8* %is_utf8)
  store i8* %call, i8** %str.addr, align 8
  %4 = load i64, i64* %tmplen, align 8
  %conv1 = trunc i64 %4 to i32
  store i32 %conv1, i32* %len.addr, align 4
  %5 = load i8, i8* %is_utf8, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 1, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i8*, i8** %save, align 8
  %cmp3 = icmp ne i8* %6, %7
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %8 = load i32, i32* %flags, align 4
  %or = or i32 %8, 258
  store i32 %or, i32* %flags, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %entry
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i32, i32* %len.addr, align 4
  %11 = load i32, i32* %hash.addr, align 4
  %12 = load i32, i32* %flags, align 4
  %call8 = call %struct.hek* @S_share_hek_flags(i8* %9, i32 %10, i32 %11, i32 %12)
  ret %struct.hek* %call8
}

declare i8* @Perl_bytes_from_utf8(i8*, i64*, i8*) #1

declare i32 @Perl_magic_existspack(%struct.sv*, %struct.magic*) #1

declare signext i8 @Perl_sv_2bool(%struct.sv*) #1

; Function Attrs: nounwind uwtable
define internal void @S_hv_magic_check(%struct.hv* %hv, i8* %needs_copy, i8* %needs_store) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %needs_copy.addr = alloca i8*, align 8
  %needs_store.addr = alloca i8*, align 8
  %mg = alloca %struct.magic*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  store i8* %needs_copy, i8** %needs_copy.addr, align 8
  store i8* %needs_store, i8** %needs_store.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %0, i32 0, i32 0
  %1 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  %2 = bitcast %struct.xpvhv* %1 to %struct.xpvmg*
  %xmg_magic = getelementptr inbounds %struct.xpvmg, %struct.xpvmg* %2, i32 0, i32 5
  %3 = load %struct.magic*, %struct.magic** %xmg_magic, align 8
  store %struct.magic* %3, %struct.magic** %mg, align 8
  %4 = load i8*, i8** %needs_copy.addr, align 8
  store i8 0, i8* %4, align 1
  %5 = load i8*, i8** %needs_store.addr, align 8
  store i8 1, i8* %5, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load %struct.magic*, %struct.magic** %mg, align 8
  %tobool = icmp ne %struct.magic* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type = getelementptr inbounds %struct.magic, %struct.magic* %7, i32 0, i32 3
  %8 = load i8, i8* %mg_type, align 1
  %conv = sext i8 %8 to i32
  %cmp = icmp sge i32 %conv, 65
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %9 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type2 = getelementptr inbounds %struct.magic, %struct.magic* %9, i32 0, i32 3
  %10 = load i8, i8* %mg_type2, align 1
  %conv3 = sext i8 %10 to i32
  %cmp4 = icmp sle i32 %conv3, 90
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load i8*, i8** %needs_copy.addr, align 8
  store i8 1, i8* %11, align 1
  %12 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_type6 = getelementptr inbounds %struct.magic, %struct.magic* %12, i32 0, i32 3
  %13 = load i8, i8* %mg_type6, align 1
  %conv7 = sext i8 %13 to i32
  switch i32 %conv7, label %sw.epilog [
    i32 80, label %sw.bb
    i32 83, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  %14 = load i8*, i8** %needs_store.addr, align 8
  store i8 0, i8* %14, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.then
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %land.lhs.true, %while.body
  %15 = load %struct.magic*, %struct.magic** %mg, align 8
  %mg_moremagic = getelementptr inbounds %struct.magic, %struct.magic* %15, i32 0, i32 0
  %16 = load %struct.magic*, %struct.magic** %mg_moremagic, align 8
  store %struct.magic* %16, %struct.magic** %mg, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare signext i8 @Perl_sv_tainted(%struct.sv*) #1

declare i32 @memcmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @S_hv_notallowed(i32 %flags, i8* %key, i32 %klen, i8* %msg) #0 {
entry:
  %flags.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %klen.addr = alloca i32, align 4
  %msg.addr = alloca i8*, align 8
  %sv = alloca %struct.sv*, align 8
  %esv = alloca %struct.sv*, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i8* %key, i8** %key.addr, align 8
  store i32 %klen, i32* %klen.addr, align 4
  store i8* %msg, i8** %msg.addr, align 8
  %call = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call, %struct.sv** %sv, align 8
  %call1 = call %struct.sv* @Perl_sv_newmortal()
  store %struct.sv* %call1, %struct.sv** %esv, align 8
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.sv*, %struct.sv** %sv, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %3 = load i32, i32* %klen.addr, align 4
  %conv = sext i32 %3 to i64
  call void @Perl_sv_setpvn(%struct.sv* %1, i8* %2, i64 %conv)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.sv*, %struct.sv** %sv, align 8
  %5 = load i8*, i8** %key.addr, align 8
  %6 = load i32, i32* %klen.addr, align 4
  %conv2 = sext i32 %6 to i64
  call void @Perl_sv_usepvn(%struct.sv* %4, i8* %5, i64 %conv2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %flags.addr, align 4
  %and3 = and i32 %7, 1
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.sv*, %struct.sv** %sv, align 8
  %sv_flags = getelementptr inbounds %struct.sv, %struct.sv* %8, i32 0, i32 2
  %9 = load i32, i32* %sv_flags, align 4
  %or = or i32 %9, 536870912
  store i32 %or, i32* %sv_flags, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %10 = load %struct.sv*, %struct.sv** %esv, align 8
  %11 = load i8*, i8** %msg.addr, align 8
  call void (%struct.sv*, i8*, ...) @Perl_sv_setpvf(%struct.sv* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* %11)
  %12 = load %struct.sv*, %struct.sv** %esv, align 8
  %sv_any = getelementptr inbounds %struct.sv, %struct.sv* %12, i32 0, i32 0
  %13 = load i8*, i8** %sv_any, align 8
  %14 = bitcast i8* %13 to %struct.xpv*
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %14, i32 0, i32 0
  %15 = load i8*, i8** %xpv_pv, align 8
  %16 = load %struct.sv*, %struct.sv** %sv, align 8
  call void (i8*, ...) @Perl_croak(i8* %15, %struct.sv* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @S_hsplit(%struct.hv* %hv) #0 {
entry:
  %hv.addr = alloca %struct.hv*, align 8
  %xhv = alloca %struct.xpvhv*, align 8
  %oldsize = alloca i32, align 4
  %newsize = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i8*, align 8
  %aep = alloca %struct.he**, align 8
  %bep = alloca %struct.he**, align 8
  %entry1 = alloca %struct.he*, align 8
  %oentry = alloca %struct.he**, align 8
  %longest_chain = alloca i32, align 4
  %was_shared = alloca i32, align 4
  %new_chunk = alloca i8*, align 8
  %new_chunk_size = alloca i32, align 4
  %left_length = alloca i32, align 4
  %right_length = alloca i32, align 4
  %next = alloca %struct.he*, align 8
  %hash = alloca i64, align 8
  %s_PeRlHaSh_tmp = alloca i8*, align 8
  %s_PeRlHaSh = alloca i8*, align 8
  %i_PeRlHaSh = alloca i32, align 4
  %hash_PeRlHaSh = alloca i32, align 4
  %tmp = alloca i64, align 8
  %new_hek = alloca %struct.hek*, align 8
  store %struct.hv* %hv, %struct.hv** %hv.addr, align 8
  %0 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any = getelementptr inbounds %struct.hv, %struct.hv* %0, i32 0, i32 0
  %1 = load %struct.xpvhv*, %struct.xpvhv** %sv_any, align 8
  store %struct.xpvhv* %1, %struct.xpvhv** %xhv, align 8
  %2 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %2, i32 0, i32 2
  %3 = load i64, i64* %xhv_max, align 8
  %conv = trunc i64 %3 to i32
  %add = add nsw i32 %conv, 1
  store i32 %add, i32* %oldsize, align 4
  %4 = load i32, i32* %oldsize, align 4
  %mul = mul nsw i32 %4, 2
  store i32 %mul, i32* %newsize, align 4
  %5 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %5, i32 0, i32 0
  %6 = load i8*, i8** %xhv_array, align 8
  store i8* %6, i8** %a, align 8
  store i32 0, i32* %longest_chain, align 4
  %7 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_any2 = getelementptr inbounds %struct.hv, %struct.hv* %7, i32 0, i32 0
  %8 = load %struct.xpvhv*, %struct.xpvhv** %sv_any2, align 8
  %xnv_nv = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %8, i32 0, i32 4
  %9 = load double, double* %xnv_nv, align 8
  %tobool = fcmp une double %9, 0.000000e+00
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags = getelementptr inbounds %struct.hv, %struct.hv* %10, i32 0, i32 2
  %11 = load i32, i32* %sv_flags, align 4
  %and = and i32 %11, 8388608
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  call void @Perl_hv_clear_placeholders(%struct.hv* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i8 1, i8* @PL_nomemok, align 1
  %13 = load i32, i32* %newsize, align 4
  %cmp = icmp slt i32 %13, 64
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load i32, i32* %newsize, align 4
  %conv5 = sext i32 %14 to i64
  %mul6 = mul i64 %conv5, 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %15 = load i32, i32* %newsize, align 4
  %conv7 = sext i32 %15 to i64
  %mul8 = mul i64 %conv7, 8
  %mul9 = mul i64 %mul8, 2
  %sub = sub i64 %mul9, 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %mul6, %cond.true ], [ %sub, %cond.false ]
  %mul10 = mul i64 %cond, 1
  %call = call i8* @Perl_safesysmalloc(i64 %mul10)
  store i8* %call, i8** %a, align 8
  %16 = load i8*, i8** %a, align 8
  %tobool11 = icmp ne i8* %16, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %cond.end
  store i8 0, i8* @PL_nomemok, align 1
  br label %return

if.end.13:                                        ; preds = %cond.end
  %17 = load i8*, i8** %a, align 8
  %18 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array14 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %18, i32 0, i32 0
  %19 = load i8*, i8** %xhv_array14, align 8
  %20 = load i32, i32* %oldsize, align 4
  %conv15 = sext i32 %20 to i64
  %mul16 = mul i64 %conv15, 8
  %mul17 = mul i64 %mul16, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %19, i64 %mul17, i32 1, i1 false)
  %21 = load i32, i32* %oldsize, align 4
  %cmp18 = icmp sge i32 %21, 64
  br i1 %cmp18, label %if.then.20, label %if.else.43

if.then.20:                                       ; preds = %if.end.13
  %22 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array21 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %22, i32 0, i32 0
  %23 = load i8*, i8** %xhv_array21, align 8
  store i8* %23, i8** %new_chunk, align 8
  %24 = load i32, i32* %oldsize, align 4
  %cmp22 = icmp slt i32 %24, 64
  br i1 %cmp22, label %cond.true.24, label %cond.false.27

cond.true.24:                                     ; preds = %if.then.20
  %25 = load i32, i32* %oldsize, align 4
  %conv25 = sext i32 %25 to i64
  %mul26 = mul i64 %conv25, 8
  br label %cond.end.32

cond.false.27:                                    ; preds = %if.then.20
  %26 = load i32, i32* %oldsize, align 4
  %conv28 = sext i32 %26 to i64
  %mul29 = mul i64 %conv28, 8
  %mul30 = mul i64 %mul29, 2
  %sub31 = sub i64 %mul30, 16
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.27, %cond.true.24
  %cond33 = phi i64 [ %mul26, %cond.true.24 ], [ %sub31, %cond.false.27 ]
  %conv34 = trunc i64 %cond33 to i32
  store i32 %conv34, i32* %new_chunk_size, align 4
  %27 = load i32, i32* %new_chunk_size, align 4
  %28 = load i32, i32* @PL_nice_chunk_size, align 4
  %cmp35 = icmp ugt i32 %27, %28
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %cond.end.32
  %29 = load i8*, i8** @PL_nice_chunk, align 8
  %tobool38 = icmp ne i8* %29, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.37
  %30 = load i8*, i8** @PL_nice_chunk, align 8
  call void @Perl_safesysfree(i8* %30)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.37
  %31 = load i8*, i8** %new_chunk, align 8
  store i8* %31, i8** @PL_nice_chunk, align 8
  %32 = load i32, i32* %new_chunk_size, align 4
  store i32 %32, i32* @PL_nice_chunk_size, align 4
  br label %if.end.42

if.else:                                          ; preds = %cond.end.32
  %33 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array41 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %33, i32 0, i32 0
  %34 = load i8*, i8** %xhv_array41, align 8
  call void @Perl_safesysfree(i8* %34)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.end.40
  br label %if.end.45

if.else.43:                                       ; preds = %if.end.13
  %35 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array44 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %35, i32 0, i32 0
  %36 = load i8*, i8** %xhv_array44, align 8
  call void @Perl_safesysfree(i8* %36)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.end.42
  store i8 0, i8* @PL_nomemok, align 1
  %37 = load i32, i32* %oldsize, align 4
  %conv46 = sext i32 %37 to i64
  %mul47 = mul i64 %conv46, 8
  %38 = load i8*, i8** %a, align 8
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 %mul47
  %39 = load i32, i32* %newsize, align 4
  %40 = load i32, i32* %oldsize, align 4
  %sub48 = sub nsw i32 %39, %40
  %conv49 = sext i32 %sub48 to i64
  %mul50 = mul i64 %conv49, 8
  %mul51 = mul i64 %mul50, 1
  call void @llvm.memset.p0i8.i64(i8* %arrayidx, i8 0, i64 %mul51, i32 1, i1 false)
  %41 = load i32, i32* %newsize, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %newsize, align 4
  %conv52 = sext i32 %dec to i64
  %42 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max53 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %42, i32 0, i32 2
  store i64 %conv52, i64* %xhv_max53, align 8
  %43 = load i8*, i8** %a, align 8
  %44 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array54 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %44, i32 0, i32 0
  store i8* %43, i8** %xhv_array54, align 8
  %45 = load i8*, i8** %a, align 8
  %46 = bitcast i8* %45 to %struct.he**
  store %struct.he** %46, %struct.he*** %aep, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.89, %if.end.45
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %oldsize, align 4
  %cmp55 = icmp slt i32 %47, %48
  br i1 %cmp55, label %for.body, label %for.end.91

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %left_length, align 4
  store i32 0, i32* %right_length, align 4
  %49 = load %struct.he**, %struct.he*** %aep, align 8
  %50 = load %struct.he*, %struct.he** %49, align 8
  %tobool57 = icmp ne %struct.he* %50, null
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %for.body
  br label %for.inc.89

if.end.59:                                        ; preds = %for.body
  %51 = load %struct.he**, %struct.he*** %aep, align 8
  %52 = load i32, i32* %oldsize, align 4
  %idx.ext = sext i32 %52 to i64
  %add.ptr = getelementptr inbounds %struct.he*, %struct.he** %51, i64 %idx.ext
  store %struct.he** %add.ptr, %struct.he*** %bep, align 8
  %53 = load %struct.he**, %struct.he*** %aep, align 8
  store %struct.he** %53, %struct.he*** %oentry, align 8
  %54 = load %struct.he**, %struct.he*** %aep, align 8
  %55 = load %struct.he*, %struct.he** %54, align 8
  store %struct.he* %55, %struct.he** %entry1, align 8
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc, %if.end.59
  %56 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool61 = icmp ne %struct.he* %56, null
  br i1 %tobool61, label %for.body.62, label %for.end

for.body.62:                                      ; preds = %for.cond.60
  %57 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek = getelementptr inbounds %struct.he, %struct.he* %57, i32 0, i32 1
  %58 = load %struct.hek*, %struct.hek** %hent_hek, align 8
  %hek_hash = getelementptr inbounds %struct.hek, %struct.hek* %58, i32 0, i32 0
  %59 = load i32, i32* %hek_hash, align 4
  %60 = load i32, i32* %newsize, align 4
  %and63 = and i32 %59, %60
  %61 = load i32, i32* %i, align 4
  %cmp64 = icmp ne i32 %and63, %61
  br i1 %cmp64, label %if.then.66, label %if.else.72

if.then.66:                                       ; preds = %for.body.62
  %62 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %62, i32 0, i32 0
  %63 = load %struct.he*, %struct.he** %hent_next, align 8
  %64 = load %struct.he**, %struct.he*** %oentry, align 8
  store %struct.he* %63, %struct.he** %64, align 8
  %65 = load %struct.he**, %struct.he*** %bep, align 8
  %66 = load %struct.he*, %struct.he** %65, align 8
  %67 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next67 = getelementptr inbounds %struct.he, %struct.he* %67, i32 0, i32 0
  store %struct.he* %66, %struct.he** %hent_next67, align 8
  %68 = load %struct.he**, %struct.he*** %bep, align 8
  %69 = load %struct.he*, %struct.he** %68, align 8
  %tobool68 = icmp ne %struct.he* %69, null
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %if.then.66
  %70 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_fill = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %70, i32 0, i32 1
  %71 = load i64, i64* %xhv_fill, align 8
  %inc = add i64 %71, 1
  store i64 %inc, i64* %xhv_fill, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.then.66
  %72 = load %struct.he*, %struct.he** %entry1, align 8
  %73 = load %struct.he**, %struct.he*** %bep, align 8
  store %struct.he* %72, %struct.he** %73, align 8
  %74 = load i32, i32* %right_length, align 4
  %inc71 = add nsw i32 %74, 1
  store i32 %inc71, i32* %right_length, align 4
  br label %for.inc

if.else.72:                                       ; preds = %for.body.62
  %75 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next73 = getelementptr inbounds %struct.he, %struct.he* %75, i32 0, i32 0
  store %struct.he** %hent_next73, %struct.he*** %oentry, align 8
  %76 = load i32, i32* %left_length, align 4
  %inc74 = add nsw i32 %76, 1
  store i32 %inc74, i32* %left_length, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72
  br label %for.inc

for.inc:                                          ; preds = %if.end.75, %if.end.70
  %77 = load %struct.he**, %struct.he*** %oentry, align 8
  %78 = load %struct.he*, %struct.he** %77, align 8
  store %struct.he* %78, %struct.he** %entry1, align 8
  br label %for.cond.60

for.end:                                          ; preds = %for.cond.60
  %79 = load %struct.he**, %struct.he*** %aep, align 8
  %80 = load %struct.he*, %struct.he** %79, align 8
  %tobool76 = icmp ne %struct.he* %80, null
  br i1 %tobool76, label %if.end.80, label %if.then.77

if.then.77:                                       ; preds = %for.end
  %81 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_fill78 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %81, i32 0, i32 1
  %82 = load i64, i64* %xhv_fill78, align 8
  %dec79 = add i64 %82, -1
  store i64 %dec79, i64* %xhv_fill78, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %for.end
  %83 = load i32, i32* %left_length, align 4
  %84 = load i32, i32* %longest_chain, align 4
  %cmp81 = icmp sgt i32 %83, %84
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.80
  %85 = load i32, i32* %left_length, align 4
  store i32 %85, i32* %longest_chain, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.end.80
  %86 = load i32, i32* %right_length, align 4
  %87 = load i32, i32* %longest_chain, align 4
  %cmp85 = icmp sgt i32 %86, %87
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.84
  %88 = load i32, i32* %right_length, align 4
  store i32 %88, i32* %longest_chain, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.end.84
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88, %if.then.58
  %89 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %89, 1
  store i32 %inc90, i32* %i, align 4
  %90 = load %struct.he**, %struct.he*** %aep, align 8
  %incdec.ptr = getelementptr inbounds %struct.he*, %struct.he** %90, i32 1
  store %struct.he** %incdec.ptr, %struct.he*** %aep, align 8
  br label %for.cond

for.end.91:                                       ; preds = %for.cond
  %91 = load i32, i32* %longest_chain, align 4
  %cmp92 = icmp sle i32 %91, 14
  br i1 %cmp92, label %if.then.97, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.91
  %92 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags94 = getelementptr inbounds %struct.hv, %struct.hv* %92, i32 0, i32 2
  %93 = load i32, i32* %sv_flags94, align 4
  %and95 = and i32 %93, 268435456
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %lor.lhs.false, %for.end.91
  br label %return

if.end.98:                                        ; preds = %lor.lhs.false
  %94 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %95 = load %struct.hv*, %struct.hv** @PL_strtab, align 8
  %cmp99 = icmp eq %struct.hv* %94, %95
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.98
  br label %return

if.end.102:                                       ; preds = %if.end.98
  %96 = load i32, i32* %newsize, align 4
  %inc103 = add nsw i32 %96, 1
  store i32 %inc103, i32* %newsize, align 4
  %97 = load i32, i32* %newsize, align 4
  %cmp104 = icmp slt i32 %97, 64
  br i1 %cmp104, label %cond.true.106, label %cond.false.109

cond.true.106:                                    ; preds = %if.end.102
  %98 = load i32, i32* %newsize, align 4
  %conv107 = sext i32 %98 to i64
  %mul108 = mul i64 %conv107, 8
  br label %cond.end.114

cond.false.109:                                   ; preds = %if.end.102
  %99 = load i32, i32* %newsize, align 4
  %conv110 = sext i32 %99 to i64
  %mul111 = mul i64 %conv110, 8
  %mul112 = mul i64 %mul111, 2
  %sub113 = sub i64 %mul112, 16
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.109, %cond.true.106
  %cond115 = phi i64 [ %mul108, %cond.true.106 ], [ %sub113, %cond.false.109 ]
  %mul116 = mul i64 %cond115, 1
  %call117 = call i8* @Perl_safesysmalloc(i64 %mul116)
  store i8* %call117, i8** %a, align 8
  %100 = load i8*, i8** %a, align 8
  %101 = load i32, i32* %newsize, align 4
  %cmp118 = icmp slt i32 %101, 64
  br i1 %cmp118, label %cond.true.120, label %cond.false.123

cond.true.120:                                    ; preds = %cond.end.114
  %102 = load i32, i32* %newsize, align 4
  %conv121 = sext i32 %102 to i64
  %mul122 = mul i64 %conv121, 8
  br label %cond.end.128

cond.false.123:                                   ; preds = %cond.end.114
  %103 = load i32, i32* %newsize, align 4
  %conv124 = sext i32 %103 to i64
  %mul125 = mul i64 %conv124, 8
  %mul126 = mul i64 %mul125, 2
  %sub127 = sub i64 %mul126, 16
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.123, %cond.true.120
  %cond129 = phi i64 [ %mul122, %cond.true.120 ], [ %sub127, %cond.false.123 ]
  %mul130 = mul i64 %cond129, 1
  call void @llvm.memset.p0i8.i64(i8* %100, i8 0, i64 %mul130, i32 1, i1 false)
  %104 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags131 = getelementptr inbounds %struct.hv, %struct.hv* %104, i32 0, i32 2
  %105 = load i32, i32* %sv_flags131, align 4
  %and132 = and i32 %105, 536870912
  store i32 %and132, i32* %was_shared, align 4
  %106 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_fill133 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %106, i32 0, i32 1
  store i64 0, i64* %xhv_fill133, align 8
  %107 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags134 = getelementptr inbounds %struct.hv, %struct.hv* %107, i32 0, i32 2
  %108 = load i32, i32* %sv_flags134, align 4
  %and135 = and i32 %108, -536870913
  store i32 %and135, i32* %sv_flags134, align 4
  %109 = load %struct.hv*, %struct.hv** %hv.addr, align 8
  %sv_flags136 = getelementptr inbounds %struct.hv, %struct.hv* %109, i32 0, i32 2
  %110 = load i32, i32* %sv_flags136, align 4
  %or = or i32 %110, 268435456
  store i32 %or, i32* %sv_flags136, align 4
  %111 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array137 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %111, i32 0, i32 0
  %112 = load i8*, i8** %xhv_array137, align 8
  %113 = bitcast i8* %112 to %struct.he**
  store %struct.he** %113, %struct.he*** %aep, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.211, %cond.end.128
  %114 = load i32, i32* %i, align 4
  %115 = load i32, i32* %newsize, align 4
  %cmp139 = icmp slt i32 %114, %115
  br i1 %cmp139, label %for.body.141, label %for.end.214

for.body.141:                                     ; preds = %for.cond.138
  %116 = load %struct.he**, %struct.he*** %aep, align 8
  %117 = load %struct.he*, %struct.he** %116, align 8
  store %struct.he* %117, %struct.he** %entry1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.208, %for.body.141
  %118 = load %struct.he*, %struct.he** %entry1, align 8
  %tobool142 = icmp ne %struct.he* %118, null
  br i1 %tobool142, label %while.body, label %while.end.210

while.body:                                       ; preds = %while.cond
  %119 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next143 = getelementptr inbounds %struct.he, %struct.he* %119, i32 0, i32 0
  %120 = load %struct.he*, %struct.he** %hent_next143, align 8
  store %struct.he* %120, %struct.he** %next, align 8
  %121 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek144 = getelementptr inbounds %struct.he, %struct.he* %121, i32 0, i32 1
  %122 = load %struct.hek*, %struct.hek** %hent_hek144, align 8
  %hek_key = getelementptr inbounds %struct.hek, %struct.hek* %122, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key, i32 0, i32 0
  store i8* %arraydecay, i8** %s_PeRlHaSh_tmp, align 8
  %123 = load i8*, i8** %s_PeRlHaSh_tmp, align 8
  store i8* %123, i8** %s_PeRlHaSh, align 8
  %124 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek145 = getelementptr inbounds %struct.he, %struct.he* %124, i32 0, i32 1
  %125 = load %struct.hek*, %struct.hek** %hent_hek145, align 8
  %hek_len = getelementptr inbounds %struct.hek, %struct.hek* %125, i32 0, i32 1
  %126 = load i32, i32* %hek_len, align 4
  store i32 %126, i32* %i_PeRlHaSh, align 4
  %127 = load i64, i64* @PL_rehash_seed, align 8
  %conv146 = trunc i64 %127 to i32
  store i32 %conv146, i32* %hash_PeRlHaSh, align 4
  br label %while.cond.147

while.cond.147:                                   ; preds = %while.body.150, %while.body
  %128 = load i32, i32* %i_PeRlHaSh, align 4
  %dec148 = add nsw i32 %128, -1
  store i32 %dec148, i32* %i_PeRlHaSh, align 4
  %tobool149 = icmp ne i32 %128, 0
  br i1 %tobool149, label %while.body.150, label %while.end

while.body.150:                                   ; preds = %while.cond.147
  %129 = load i8*, i8** %s_PeRlHaSh, align 8
  %incdec.ptr151 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr151, i8** %s_PeRlHaSh, align 8
  %130 = load i8, i8* %129, align 1
  %conv152 = zext i8 %130 to i32
  %131 = load i32, i32* %hash_PeRlHaSh, align 4
  %add153 = add i32 %131, %conv152
  store i32 %add153, i32* %hash_PeRlHaSh, align 4
  %132 = load i32, i32* %hash_PeRlHaSh, align 4
  %shl = shl i32 %132, 10
  %133 = load i32, i32* %hash_PeRlHaSh, align 4
  %add154 = add i32 %133, %shl
  store i32 %add154, i32* %hash_PeRlHaSh, align 4
  %134 = load i32, i32* %hash_PeRlHaSh, align 4
  %shr = lshr i32 %134, 6
  %135 = load i32, i32* %hash_PeRlHaSh, align 4
  %xor = xor i32 %135, %shr
  store i32 %xor, i32* %hash_PeRlHaSh, align 4
  br label %while.cond.147

while.end:                                        ; preds = %while.cond.147
  %136 = load i32, i32* %hash_PeRlHaSh, align 4
  %shl155 = shl i32 %136, 3
  %137 = load i32, i32* %hash_PeRlHaSh, align 4
  %add156 = add i32 %137, %shl155
  store i32 %add156, i32* %hash_PeRlHaSh, align 4
  %138 = load i32, i32* %hash_PeRlHaSh, align 4
  %shr157 = lshr i32 %138, 11
  %139 = load i32, i32* %hash_PeRlHaSh, align 4
  %xor158 = xor i32 %139, %shr157
  store i32 %xor158, i32* %hash_PeRlHaSh, align 4
  %140 = load i32, i32* %hash_PeRlHaSh, align 4
  %141 = load i32, i32* %hash_PeRlHaSh, align 4
  %shl159 = shl i32 %141, 15
  %add160 = add i32 %140, %shl159
  %conv161 = zext i32 %add160 to i64
  store i64 %conv161, i64* %hash, align 8
  store i64 %conv161, i64* %tmp
  %142 = load i64, i64* %tmp
  %143 = load i32, i32* %was_shared, align 4
  %tobool162 = icmp ne i32 %143, 0
  br i1 %tobool162, label %if.then.163, label %if.else.183

if.then.163:                                      ; preds = %while.end
  %144 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek165 = getelementptr inbounds %struct.he, %struct.he* %144, i32 0, i32 1
  %145 = load %struct.hek*, %struct.hek** %hent_hek165, align 8
  %hek_key166 = getelementptr inbounds %struct.hek, %struct.hek* %145, i32 0, i32 2
  %arraydecay167 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key166, i32 0, i32 0
  %146 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek168 = getelementptr inbounds %struct.he, %struct.he* %146, i32 0, i32 1
  %147 = load %struct.hek*, %struct.hek** %hent_hek168, align 8
  %hek_len169 = getelementptr inbounds %struct.hek, %struct.hek* %147, i32 0, i32 1
  %148 = load i32, i32* %hek_len169, align 4
  %149 = load i64, i64* %hash, align 8
  %conv170 = trunc i64 %149 to i32
  %150 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek171 = getelementptr inbounds %struct.he, %struct.he* %150, i32 0, i32 1
  %151 = load %struct.hek*, %struct.hek** %hent_hek171, align 8
  %hek_key172 = getelementptr inbounds %struct.hek, %struct.hek* %151, i32 0, i32 2
  %arraydecay173 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key172, i32 0, i32 0
  %152 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek174 = getelementptr inbounds %struct.he, %struct.he* %152, i32 0, i32 1
  %153 = load %struct.hek*, %struct.hek** %hent_hek174, align 8
  %hek_len175 = getelementptr inbounds %struct.hek, %struct.hek* %153, i32 0, i32 1
  %154 = load i32, i32* %hek_len175, align 4
  %idx.ext176 = sext i32 %154 to i64
  %add.ptr177 = getelementptr inbounds i8, i8* %arraydecay173, i64 %idx.ext176
  %add.ptr178 = getelementptr inbounds i8, i8* %add.ptr177, i64 1
  %155 = load i8, i8* %add.ptr178, align 1
  %conv179 = zext i8 %155 to i32
  %call180 = call %struct.hek* @S_save_hek_flags(i8* %arraydecay167, i32 %148, i32 %conv170, i32 %conv179)
  store %struct.hek* %call180, %struct.hek** %new_hek, align 8
  %156 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek181 = getelementptr inbounds %struct.he, %struct.he* %156, i32 0, i32 1
  %157 = load %struct.hek*, %struct.hek** %hent_hek181, align 8
  call void @Perl_unshare_hek(%struct.hek* %157)
  %158 = load %struct.hek*, %struct.hek** %new_hek, align 8
  %159 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek182 = getelementptr inbounds %struct.he, %struct.he* %159, i32 0, i32 1
  store %struct.hek* %158, %struct.hek** %hent_hek182, align 8
  br label %if.end.187

if.else.183:                                      ; preds = %while.end
  %160 = load i64, i64* %hash, align 8
  %conv184 = trunc i64 %160 to i32
  %161 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek185 = getelementptr inbounds %struct.he, %struct.he* %161, i32 0, i32 1
  %162 = load %struct.hek*, %struct.hek** %hent_hek185, align 8
  %hek_hash186 = getelementptr inbounds %struct.hek, %struct.hek* %162, i32 0, i32 0
  store i32 %conv184, i32* %hek_hash186, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.183, %if.then.163
  %163 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek188 = getelementptr inbounds %struct.he, %struct.he* %163, i32 0, i32 1
  %164 = load %struct.hek*, %struct.hek** %hent_hek188, align 8
  %hek_key189 = getelementptr inbounds %struct.hek, %struct.hek* %164, i32 0, i32 2
  %arraydecay190 = getelementptr inbounds [1 x i8], [1 x i8]* %hek_key189, i32 0, i32 0
  %165 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_hek191 = getelementptr inbounds %struct.he, %struct.he* %165, i32 0, i32 1
  %166 = load %struct.hek*, %struct.hek** %hent_hek191, align 8
  %hek_len192 = getelementptr inbounds %struct.hek, %struct.hek* %166, i32 0, i32 1
  %167 = load i32, i32* %hek_len192, align 4
  %idx.ext193 = sext i32 %167 to i64
  %add.ptr194 = getelementptr inbounds i8, i8* %arraydecay190, i64 %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, i8* %add.ptr194, i64 1
  %168 = load i8, i8* %add.ptr195, align 1
  %conv196 = zext i8 %168 to i32
  %or197 = or i32 %conv196, 4
  %conv198 = trunc i32 %or197 to i8
  store i8 %conv198, i8* %add.ptr195, align 1
  %169 = load i8*, i8** %a, align 8
  %170 = bitcast i8* %169 to %struct.he**
  %171 = load i64, i64* %hash, align 8
  %172 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_max199 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %172, i32 0, i32 2
  %173 = load i64, i64* %xhv_max199, align 8
  %conv200 = trunc i64 %173 to i32
  %conv201 = sext i32 %conv200 to i64
  %and202 = and i64 %171, %conv201
  %add.ptr203 = getelementptr inbounds %struct.he*, %struct.he** %170, i64 %and202
  store %struct.he** %add.ptr203, %struct.he*** %bep, align 8
  %174 = load %struct.he**, %struct.he*** %bep, align 8
  %175 = load %struct.he*, %struct.he** %174, align 8
  %tobool204 = icmp ne %struct.he* %175, null
  br i1 %tobool204, label %if.end.208, label %if.then.205

if.then.205:                                      ; preds = %if.end.187
  %176 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_fill206 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %176, i32 0, i32 1
  %177 = load i64, i64* %xhv_fill206, align 8
  %inc207 = add i64 %177, 1
  store i64 %inc207, i64* %xhv_fill206, align 8
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.205, %if.end.187
  %178 = load %struct.he**, %struct.he*** %bep, align 8
  %179 = load %struct.he*, %struct.he** %178, align 8
  %180 = load %struct.he*, %struct.he** %entry1, align 8
  %hent_next209 = getelementptr inbounds %struct.he, %struct.he* %180, i32 0, i32 0
  store %struct.he* %179, %struct.he** %hent_next209, align 8
  %181 = load %struct.he*, %struct.he** %entry1, align 8
  %182 = load %struct.he**, %struct.he*** %bep, align 8
  store %struct.he* %181, %struct.he** %182, align 8
  %183 = load %struct.he*, %struct.he** %next, align 8
  store %struct.he* %183, %struct.he** %entry1, align 8
  br label %while.cond

while.end.210:                                    ; preds = %while.cond
  br label %for.inc.211

for.inc.211:                                      ; preds = %while.end.210
  %184 = load i32, i32* %i, align 4
  %inc212 = add nsw i32 %184, 1
  store i32 %inc212, i32* %i, align 4
  %185 = load %struct.he**, %struct.he*** %aep, align 8
  %incdec.ptr213 = getelementptr inbounds %struct.he*, %struct.he** %185, i32 1
  store %struct.he** %incdec.ptr213, %struct.he*** %aep, align 8
  br label %for.cond.138

for.end.214:                                      ; preds = %for.cond.138
  %186 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array215 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %186, i32 0, i32 0
  %187 = load i8*, i8** %xhv_array215, align 8
  call void @Perl_safesysfree(i8* %187)
  %188 = load i8*, i8** %a, align 8
  %189 = load %struct.xpvhv*, %struct.xpvhv** %xhv, align 8
  %xhv_array216 = getelementptr inbounds %struct.xpvhv, %struct.xpvhv* %189, i32 0, i32 0
  store i8* %188, i8** %xhv_array216, align 8
  br label %return

return:                                           ; preds = %for.end.214, %if.then.101, %if.then.97, %if.then.12
  ret void
}

declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #1

declare void @Perl_sv_usepvn(%struct.sv*, i8*, i64) #1

declare i32 @Perl_sv_unmagic(%struct.sv*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @S_more_he() #0 {
entry:
  %he = alloca %struct.he*, align 8
  %heend = alloca %struct.he*, align 8
  %ptr = alloca %struct.xpv*, align 8
  %call = call i8* @Perl_safesysmalloc(i64 4080)
  %0 = bitcast i8* %call to %struct.xpv*
  store %struct.xpv* %0, %struct.xpv** %ptr, align 8
  %1 = load %struct.xpv*, %struct.xpv** @PL_he_arenaroot, align 8
  %2 = bitcast %struct.xpv* %1 to i8*
  %3 = load %struct.xpv*, %struct.xpv** %ptr, align 8
  %xpv_pv = getelementptr inbounds %struct.xpv, %struct.xpv* %3, i32 0, i32 0
  store i8* %2, i8** %xpv_pv, align 8
  %4 = load %struct.xpv*, %struct.xpv** %ptr, align 8
  store %struct.xpv* %4, %struct.xpv** @PL_he_arenaroot, align 8
  %5 = load %struct.xpv*, %struct.xpv** %ptr, align 8
  %6 = bitcast %struct.xpv* %5 to %struct.he*
  store %struct.he* %6, %struct.he** %he, align 8
  %7 = load %struct.he*, %struct.he** %he, align 8
  %arrayidx = getelementptr inbounds %struct.he, %struct.he* %7, i64 169
  store %struct.he* %arrayidx, %struct.he** %heend, align 8
  %8 = load %struct.he*, %struct.he** %he, align 8
  %incdec.ptr = getelementptr inbounds %struct.he, %struct.he* %8, i32 1
  store %struct.he* %incdec.ptr, %struct.he** %he, align 8
  store %struct.he* %incdec.ptr, %struct.he** @PL_he_root, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load %struct.he*, %struct.he** %he, align 8
  %10 = load %struct.he*, %struct.he** %heend, align 8
  %cmp = icmp ult %struct.he* %9, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.he*, %struct.he** %he, align 8
  %add.ptr = getelementptr inbounds %struct.he, %struct.he* %11, i64 1
  %12 = load %struct.he*, %struct.he** %he, align 8
  %hent_next = getelementptr inbounds %struct.he, %struct.he* %12, i32 0, i32 0
  store %struct.he* %add.ptr, %struct.he** %hent_next, align 8
  %13 = load %struct.he*, %struct.he** %he, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.he, %struct.he* %13, i32 1
  store %struct.he* %incdec.ptr1, %struct.he** %he, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.he*, %struct.he** %he, align 8
  %hent_next2 = getelementptr inbounds %struct.he, %struct.he* %14, i32 0, i32 0
  store %struct.he* null, %struct.he** %hent_next2, align 8
  ret void
}

declare void @Perl_warner(i32, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
