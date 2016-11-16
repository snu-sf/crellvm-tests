; ModuleID = './pi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opj_cp = type { i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, %struct.opj_tcp*, %union.anon, i8 }
%struct.opj_tcp = type { i32, i32, i32, i32, i32, [100 x float], i32, [32 x %struct.opj_poc], i8*, i8*, i32, i32, [100 x float], %struct.opj_tccp*, i32, i8*, i32, double*, float*, float*, %struct.opj_mct_data*, i32, i32, %struct.opj_simple_mcc_decorrelation_data*, i32, i32, i8 }
%struct.opj_poc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tccp = type { i32, i32, i32, i32, i32, i32, i32, [97 x %struct.opj_stepsize], i32, i32, [33 x i32], [33 x i32], i32 }
%struct.opj_stepsize = type { i32, i32 }
%struct.opj_mct_data = type { i32, i32, i32, i8*, i32 }
%struct.opj_simple_mcc_decorrelation_data = type { i32, i32, %struct.opj_mct_data*, %struct.opj_mct_data*, i8 }
%union.anon = type { %struct.opj_encoding_param }
%struct.opj_encoding_param = type { i32, i32, i32, i32*, i8, i8 }
%struct.opj_pi_iterator = type { i8, i16*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.opj_poc, i32, %struct.opj_pi_comp*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_pi_comp = type { i32, i32, i32, %struct.opj_pi_resolution* }
%struct.opj_pi_resolution = type { i32, i32, i32, i32 }
%struct.opj_image = type { i32, i32, i32, i32, i32, i32, %struct.opj_image_comp*, i8*, i32 }
%struct.opj_image_comp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i16 }

@.str = private unnamed_addr constant [11 x i8] c"p_cp != 00\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"./openjpeg/libopenjpeg/pi.c\00", align 1
@__PRETTY_FUNCTION__.opj_pi_create_decode = private unnamed_addr constant [79 x i8] c"opj_pi_iterator_t *opj_pi_create_decode(opj_image_t *, opj_cp_t *, OPJ_UINT32)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"p_image != 00\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"p_tile_no < p_cp->tw * p_cp->th\00", align 1
@__PRETTY_FUNCTION__.opj_pi_initialise_encode = private unnamed_addr constant [102 x i8] c"opj_pi_iterator_t *opj_pi_initialise_encode(const opj_image_t *, opj_cp_t *, OPJ_UINT32, J2K_T2_MODE)\00", align 1
@__PRETTY_FUNCTION__.opj_pi_update_encoding_parameters = private unnamed_addr constant [84 x i8] c"void opj_pi_update_encoding_parameters(const opj_image_t *, opj_cp_t *, OPJ_UINT32)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"cp != 00\00", align 1
@__PRETTY_FUNCTION__.opj_pi_create = private unnamed_addr constant [84 x i8] c"opj_pi_iterator_t *opj_pi_create(const opj_image_t *, const opj_cp_t *, OPJ_UINT32)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"image != 00\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"tileno < cp->tw * cp->th\00", align 1
@__PRETTY_FUNCTION__.opj_get_all_encoding_parameters = private unnamed_addr constant [211 x i8] c"void opj_get_all_encoding_parameters(const opj_image_t *, const opj_cp_t *, OPJ_UINT32, OPJ_INT32 *, OPJ_INT32 *, OPJ_INT32 *, OPJ_INT32 *, OPJ_UINT32 *, OPJ_UINT32 *, OPJ_UINT32 *, OPJ_UINT32 *, OPJ_UINT32 **)\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"tileno < p_cp->tw * p_cp->th\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"p_pi != 00\00", align 1
@__PRETTY_FUNCTION__.opj_pi_update_decode_poc = private unnamed_addr constant [88 x i8] c"void opj_pi_update_decode_poc(opj_pi_iterator_t *, opj_tcp_t *, OPJ_UINT32, OPJ_UINT32)\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"p_tcp != 00\00", align 1
@__PRETTY_FUNCTION__.opj_pi_update_decode_not_poc = private unnamed_addr constant [92 x i8] c"void opj_pi_update_decode_not_poc(opj_pi_iterator_t *, opj_tcp_t *, OPJ_UINT32, OPJ_UINT32)\00", align 1
@__PRETTY_FUNCTION__.opj_pi_update_encode_poc_and_final = private unnamed_addr constant [156 x i8] c"void opj_pi_update_encode_poc_and_final(opj_cp_t *, OPJ_UINT32, OPJ_INT32, OPJ_INT32, OPJ_INT32, OPJ_INT32, OPJ_UINT32, OPJ_UINT32, OPJ_UINT32, OPJ_UINT32)\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"p_tileno < p_cp->tw * p_cp->th\00", align 1
@__PRETTY_FUNCTION__.opj_pi_update_encode_not_poc = private unnamed_addr constant [162 x i8] c"void opj_pi_update_encode_not_poc(opj_cp_t *, OPJ_UINT32, OPJ_UINT32, OPJ_INT32, OPJ_INT32, OPJ_INT32, OPJ_INT32, OPJ_UINT32, OPJ_UINT32, OPJ_UINT32, OPJ_UINT32)\00", align 1
@__PRETTY_FUNCTION__.opj_get_encoding_parameters = private unnamed_addr constant [192 x i8] c"void opj_get_encoding_parameters(const opj_image_t *, const opj_cp_t *, OPJ_UINT32, OPJ_INT32 *, OPJ_INT32 *, OPJ_INT32 *, OPJ_INT32 *, OPJ_UINT32 *, OPJ_UINT32 *, OPJ_UINT32 *, OPJ_UINT32 *)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @opj_pi_check_next_level(i32 %pos, %struct.opj_cp* %cp, i32 %tileno, i32 %pino, i8* %prog) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %cp.addr = alloca %struct.opj_cp*, align 8
  %tileno.addr = alloca i32, align 4
  %pino.addr = alloca i32, align 4
  %prog.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %tcps = alloca %struct.opj_tcp*, align 8
  %tcp = alloca %struct.opj_poc*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %pos, i32* %pos.addr, align 4, !tbaa !1
  store %struct.opj_cp* %cp, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  store i32 %tileno, i32* %tileno.addr, align 4, !tbaa !1
  store i32 %pino, i32* %pino.addr, align 4, !tbaa !1
  store i8* %prog, i8** %prog.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.opj_tcp** %tcps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %tcps1 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %3, i32 0, i32 17
  %4 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps1, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %4, i64 %idxprom
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %tcps, align 8, !tbaa !5
  %5 = bitcast %struct.opj_poc** %tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom2 = zext i32 %6 to i64
  %7 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !5
  %pocs = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %7, i32 0, i32 7
  %arrayidx3 = getelementptr inbounds [32 x %struct.opj_poc], [32 x %struct.opj_poc]* %pocs, i32 0, i64 %idxprom2
  store %struct.opj_poc* %arrayidx3, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %8 = load i32, i32* %pos.addr, align 4, !tbaa !1
  %cmp = icmp sge i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %pos.addr, align 4, !tbaa !1
  store i32 %9, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %pos.addr, align 4, !tbaa !1
  %cmp4 = icmp sge i32 %10, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom5 = sext i32 %11 to i64
  %12 = load i8*, i8** %prog.addr, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 %idxprom5
  %13 = load i8, i8* %arrayidx6, align 1, !tbaa !9
  %conv = sext i8 %13 to i32
  switch i32 %conv, label %sw.epilog [
    i32 82, label %sw.bb
    i32 67, label %sw.bb.12
    i32 76, label %sw.bb.22
    i32 80, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %for.body
  %14 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %14, i32 0, i32 31
  %15 = load i32, i32* %res_t, align 4, !tbaa !10
  %16 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %resE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %16, i32 0, i32 21
  %17 = load i32, i32* %resE, align 4, !tbaa !12
  %cmp7 = icmp eq i32 %15, %17
  br i1 %cmp7, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %sw.bb
  %18 = load i32, i32* %pos.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %18, 1
  %19 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %20 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %21 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %22 = load i8*, i8** %prog.addr, align 8, !tbaa !5
  %call = call i32 @opj_pi_check_next_level(i32 %sub, %struct.opj_cp* %19, i32 %20, i32 %21, i8* %22) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.9
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then.9
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.11:                                       ; preds = %sw.bb
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.12:                                         ; preds = %for.body
  %23 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %23, i32 0, i32 32
  %24 = load i32, i32* %comp_t, align 4, !tbaa !13
  %25 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %compE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %25, i32 0, i32 22
  %26 = load i32, i32* %compE, align 4, !tbaa !14
  %cmp13 = icmp eq i32 %24, %26
  br i1 %cmp13, label %if.then.15, label %if.else.21

if.then.15:                                       ; preds = %sw.bb.12
  %27 = load i32, i32* %pos.addr, align 4, !tbaa !1
  %sub16 = sub nsw i32 %27, 1
  %28 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %29 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %30 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %31 = load i8*, i8** %prog.addr, align 8, !tbaa !5
  %call17 = call i32 @opj_pi_check_next_level(i32 %sub16, %struct.opj_cp* %28, i32 %29, i32 %30, i8* %31) #6
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.then.15
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.20:                                       ; preds = %if.then.15
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.21:                                       ; preds = %sw.bb.12
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.22:                                         ; preds = %for.body
  %32 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %32, i32 0, i32 30
  %33 = load i32, i32* %lay_t, align 4, !tbaa !15
  %34 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %layE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %34, i32 0, i32 20
  %35 = load i32, i32* %layE, align 4, !tbaa !16
  %cmp23 = icmp eq i32 %33, %35
  br i1 %cmp23, label %if.then.25, label %if.else.31

if.then.25:                                       ; preds = %sw.bb.22
  %36 = load i32, i32* %pos.addr, align 4, !tbaa !1
  %sub26 = sub nsw i32 %36, 1
  %37 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %38 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %39 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %40 = load i8*, i8** %prog.addr, align 8, !tbaa !5
  %call27 = call i32 @opj_pi_check_next_level(i32 %sub26, %struct.opj_cp* %37, i32 %38, i32 %39, i8* %40) #6
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.then.25
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.30:                                       ; preds = %if.then.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.31:                                       ; preds = %sw.bb.22
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.32:                                         ; preds = %for.body
  %41 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prg = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %41, i32 0, i32 9
  %42 = load i32, i32* %prg, align 4, !tbaa !17
  switch i32 %42, label %sw.default [
    i32 1, label %sw.bb.33
  ]

sw.bb.33:                                         ; preds = %sw.bb.32
  %43 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %43, i32 0, i32 33
  %44 = load i32, i32* %prc_t, align 4, !tbaa !18
  %45 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prcE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %45, i32 0, i32 23
  %46 = load i32, i32* %prcE, align 4, !tbaa !19
  %cmp34 = icmp eq i32 %44, %46
  br i1 %cmp34, label %if.then.36, label %if.else.42

if.then.36:                                       ; preds = %sw.bb.33
  %47 = load i32, i32* %i, align 4, !tbaa !1
  %sub37 = sub nsw i32 %47, 1
  %48 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %49 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %50 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %51 = load i8*, i8** %prog.addr, align 8, !tbaa !5
  %call38 = call i32 @opj_pi_check_next_level(i32 %sub37, %struct.opj_cp* %48, i32 %49, i32 %50, i8* %51) #6
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.then.36
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.41:                                       ; preds = %if.then.36
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.42:                                       ; preds = %sw.bb.33
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %sw.bb.32
  %52 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %52, i32 0, i32 34
  %53 = load i32, i32* %tx0_t, align 4, !tbaa !20
  %54 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %txE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %54, i32 0, i32 25
  %55 = load i32, i32* %txE, align 4, !tbaa !21
  %cmp43 = icmp eq i32 %53, %55
  br i1 %cmp43, label %if.then.45, label %if.else.55

if.then.45:                                       ; preds = %sw.default
  %56 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %56, i32 0, i32 35
  %57 = load i32, i32* %ty0_t, align 4, !tbaa !22
  %58 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tyE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %58, i32 0, i32 27
  %59 = load i32, i32* %tyE, align 4, !tbaa !23
  %cmp46 = icmp eq i32 %57, %59
  br i1 %cmp46, label %if.then.48, label %if.else.54

if.then.48:                                       ; preds = %if.then.45
  %60 = load i32, i32* %i, align 4, !tbaa !1
  %sub49 = sub nsw i32 %60, 1
  %61 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %62 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %63 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %64 = load i8*, i8** %prog.addr, align 8, !tbaa !5
  %call50 = call i32 @opj_pi_check_next_level(i32 %sub49, %struct.opj_cp* %61, i32 %62, i32 %63, i8* %64) #6
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.then.48
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.53:                                       ; preds = %if.then.48
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.54:                                       ; preds = %if.then.45
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.55:                                       ; preds = %sw.default
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %65 = load i32, i32* %i, align 4, !tbaa !1
  %dec = add nsw i32 %65, -1
  store i32 %dec, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.55, %if.else.54, %if.else.53, %if.then.52, %if.else.42, %if.else.41, %if.then.40, %if.else.31, %if.else.30, %if.then.29, %if.else.21, %if.else.20, %if.then.19, %if.else.11, %if.else, %if.then.10
  %66 = bitcast %struct.opj_poc** %tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.opj_tcp** %tcps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct.opj_pi_iterator* @opj_pi_create_decode(%struct.opj_image* %p_image, %struct.opj_cp* %p_cp, i32 %p_tile_no) #0 {
entry:
  %retval = alloca %struct.opj_pi_iterator*, align 8
  %p_image.addr = alloca %struct.opj_image*, align 8
  %p_cp.addr = alloca %struct.opj_cp*, align 8
  %p_tile_no.addr = alloca i32, align 4
  %pino = alloca i32, align 4
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %l_tmp_data = alloca i32*, align 8
  %l_tmp_ptr = alloca i32**, align 8
  %l_max_res = alloca i32, align 4
  %l_max_prec = alloca i32, align 4
  %l_tx0 = alloca i32, align 4
  %l_tx1 = alloca i32, align 4
  %l_ty0 = alloca i32, align 4
  %l_ty1 = alloca i32, align 4
  %l_dx_min = alloca i32, align 4
  %l_dy_min = alloca i32, align 4
  %l_bound = alloca i32, align 4
  %l_step_p = alloca i32, align 4
  %l_step_c = alloca i32, align 4
  %l_step_r = alloca i32, align 4
  %l_step_l = alloca i32, align 4
  %l_data_stride = alloca i32, align 4
  %l_pi = alloca %struct.opj_pi_iterator*, align 8
  %l_tcp = alloca %struct.opj_tcp*, align 8
  %l_tccp = alloca %struct.opj_tccp*, align 8
  %l_current_comp = alloca %struct.opj_pi_comp*, align 8
  %l_img_comp = alloca %struct.opj_image_comp*, align 8
  %l_current_pi = alloca %struct.opj_pi_iterator*, align 8
  %l_encoding_value_ptr = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  %l_res = alloca %struct.opj_pi_resolution*, align 8
  %l_res128 = alloca %struct.opj_pi_resolution*, align 8
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  store %struct.opj_cp* %p_cp, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  store i32 %p_tile_no, i32* %p_tile_no.addr, align 4, !tbaa !1
  %0 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32** %l_tmp_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32*** %l_tmp_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %l_max_res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %l_max_prec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %l_tx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %l_tx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %l_ty0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %l_ty1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %l_dx_min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %l_dy_min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %l_bound to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %l_step_p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %l_step_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %l_step_r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %l_step_l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %l_data_stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast %struct.opj_pi_iterator** %l_pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %20 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store %struct.opj_tcp* null, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %21 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store %struct.opj_tccp* null, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %22 = bitcast %struct.opj_pi_comp** %l_current_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store %struct.opj_pi_comp* null, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %23 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %24 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %25 = bitcast i32** %l_encoding_value_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i32* null, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %26 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.opj_cp* %26, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 1176, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.opj_pi_create_decode, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %27, %cond.true
  %28 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.opj_image* %28, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 1177, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.opj_pi_create_decode, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %29, %cond.true.2
  %30 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %31 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tw = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %31, i32 0, i32 6
  %32 = load i32, i32* %tw, align 4, !tbaa !24
  %33 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %th = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %33, i32 0, i32 7
  %34 = load i32, i32* %th, align 4, !tbaa !25
  %mul = mul i32 %32, %34
  %cmp5 = icmp ult i32 %30, %mul
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 1178, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.opj_pi_create_decode, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %35, %cond.true.6
  %36 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %idxprom = zext i32 %36 to i64
  %37 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tcps = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %37, i32 0, i32 17
  %38 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %38, i64 %idxprom
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %39 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %numpocs = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %39, i32 0, i32 6
  %40 = load i32, i32* %numpocs, align 4, !tbaa !26
  %add = add i32 %40, 1
  store i32 %add, i32* %l_bound, align 4, !tbaa !1
  store i32 132, i32* %l_data_stride, align 4, !tbaa !1
  %41 = load i32, i32* %l_data_stride, align 4, !tbaa !1
  %42 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %42, i32 0, i32 4
  %43 = load i32, i32* %numcomps, align 4, !tbaa !28
  %mul9 = mul i32 %41, %43
  %conv = zext i32 %mul9 to i64
  %mul10 = mul i64 %conv, 4
  %cmp11 = icmp uge i64 %mul10, -256
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.8
  br label %cond.end.19

cond.false.14:                                    ; preds = %cond.end.8
  %44 = load i32, i32* %l_data_stride, align 4, !tbaa !1
  %45 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps15 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %45, i32 0, i32 4
  %46 = load i32, i32* %numcomps15, align 4, !tbaa !28
  %mul16 = mul i32 %44, %46
  %conv17 = zext i32 %mul16 to i64
  %mul18 = mul i64 %conv17, 4
  %call = call noalias i8* @malloc(i64 %mul18) #8
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.14, %cond.true.13
  %cond = phi i8* [ null, %cond.true.13 ], [ %call, %cond.false.14 ]
  %47 = bitcast i8* %cond to i32*
  store i32* %47, i32** %l_tmp_data, align 8, !tbaa !5
  %48 = load i32*, i32** %l_tmp_data, align 8, !tbaa !5
  %tobool = icmp ne i32* %48, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.19
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.19
  %49 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps20 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %49, i32 0, i32 4
  %50 = load i32, i32* %numcomps20, align 4, !tbaa !28
  %conv21 = zext i32 %50 to i64
  %mul22 = mul i64 %conv21, 8
  %cmp23 = icmp uge i64 %mul22, -256
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %if.end
  br label %cond.end.31

cond.false.26:                                    ; preds = %if.end
  %51 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps27 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %51, i32 0, i32 4
  %52 = load i32, i32* %numcomps27, align 4, !tbaa !28
  %conv28 = zext i32 %52 to i64
  %mul29 = mul i64 %conv28, 8
  %call30 = call noalias i8* @malloc(i64 %mul29) #8
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.26, %cond.true.25
  %cond32 = phi i8* [ null, %cond.true.25 ], [ %call30, %cond.false.26 ]
  %53 = bitcast i8* %cond32 to i32**
  store i32** %53, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %54 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %tobool33 = icmp ne i32** %54, null
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %cond.end.31
  %55 = load i32*, i32** %l_tmp_data, align 8, !tbaa !5
  %56 = bitcast i32* %55 to i8*
  call void @free(i8* %56) #8
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %cond.end.31
  %57 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %58 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %59 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %call36 = call %struct.opj_pi_iterator* @opj_pi_create(%struct.opj_image* %57, %struct.opj_cp* %58, i32 %59) #6
  store %struct.opj_pi_iterator* %call36, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %60 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %tobool37 = icmp ne %struct.opj_pi_iterator* %60, null
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.35
  %61 = load i32*, i32** %l_tmp_data, align 8, !tbaa !5
  %62 = bitcast i32* %61 to i8*
  call void @free(i8* %62) #8
  %63 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %64 = bitcast i32** %63 to i8*
  call void @free(i8* %64) #8
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.35
  %65 = load i32*, i32** %l_tmp_data, align 8, !tbaa !5
  store i32* %65, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.39
  %66 = load i32, i32* %compno, align 4, !tbaa !1
  %67 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps40 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %67, i32 0, i32 4
  %68 = load i32, i32* %numcomps40, align 4, !tbaa !28
  %cmp41 = icmp ult i32 %66, %68
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %70 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom43 = zext i32 %70 to i64
  %71 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %arrayidx44 = getelementptr inbounds i32*, i32** %71, i64 %idxprom43
  store i32* %69, i32** %arrayidx44, align 8, !tbaa !5
  %72 = load i32, i32* %l_data_stride, align 4, !tbaa !1
  %73 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %idx.ext = zext i32 %72 to i64
  %add.ptr = getelementptr inbounds i32, i32* %73, i64 %idx.ext
  store i32* %add.ptr, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i32, i32* %compno, align 4, !tbaa !1
  %inc = add i32 %74, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %75 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %76 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %77 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %78 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  call void @opj_get_all_encoding_parameters(%struct.opj_image* %75, %struct.opj_cp* %76, i32 %77, i32* %l_tx0, i32* %l_tx1, i32* %l_ty0, i32* %l_ty1, i32* %l_dx_min, i32* %l_dy_min, i32* %l_max_prec, i32* %l_max_res, i32** %78) #6
  store i32 1, i32* %l_step_p, align 4, !tbaa !1
  %79 = load i32, i32* %l_max_prec, align 4, !tbaa !1
  %80 = load i32, i32* %l_step_p, align 4, !tbaa !1
  %mul45 = mul i32 %79, %80
  store i32 %mul45, i32* %l_step_c, align 4, !tbaa !1
  %81 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps46 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %81, i32 0, i32 4
  %82 = load i32, i32* %numcomps46, align 4, !tbaa !28
  %83 = load i32, i32* %l_step_c, align 4, !tbaa !1
  %mul47 = mul i32 %82, %83
  store i32 %mul47, i32* %l_step_r, align 4, !tbaa !1
  %84 = load i32, i32* %l_max_res, align 4, !tbaa !1
  %85 = load i32, i32* %l_step_r, align 4, !tbaa !1
  %mul48 = mul i32 %84, %85
  store i32 %mul48, i32* %l_step_l, align 4, !tbaa !1
  %86 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  store %struct.opj_pi_iterator* %86, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %87 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %numlayers = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %87, i32 0, i32 2
  %88 = load i32, i32* %numlayers, align 4, !tbaa !30
  %add49 = add i32 %88, 1
  %89 = load i32, i32* %l_step_l, align 4, !tbaa !1
  %mul50 = mul i32 %add49, %89
  %conv51 = zext i32 %mul50 to i64
  %cmp52 = icmp ne i64 %conv51, 0
  br i1 %cmp52, label %land.lhs.true, label %cond.false.61

land.lhs.true:                                    ; preds = %for.end
  %90 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %numlayers54 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %90, i32 0, i32 2
  %91 = load i32, i32* %numlayers54, align 4, !tbaa !30
  %add55 = add i32 %91, 1
  %92 = load i32, i32* %l_step_l, align 4, !tbaa !1
  %mul56 = mul i32 %add55, %92
  %conv57 = zext i32 %mul56 to i64
  %cmp58 = icmp uge i64 %conv57, 9223372036854775680
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %land.lhs.true
  br label %cond.end.67

cond.false.61:                                    ; preds = %land.lhs.true, %for.end
  %93 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %numlayers62 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %93, i32 0, i32 2
  %94 = load i32, i32* %numlayers62, align 4, !tbaa !30
  %add63 = add i32 %94, 1
  %95 = load i32, i32* %l_step_l, align 4, !tbaa !1
  %mul64 = mul i32 %add63, %95
  %conv65 = zext i32 %mul64 to i64
  %call66 = call noalias i8* @calloc(i64 %conv65, i64 2) #8
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.61, %cond.true.60
  %cond68 = phi i8* [ null, %cond.true.60 ], [ %call66, %cond.false.61 ]
  %96 = bitcast i8* %cond68 to i16*
  %97 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %include = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %97, i32 0, i32 1
  store i16* %96, i16** %include, align 8, !tbaa !31
  %98 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %include69 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %98, i32 0, i32 1
  %99 = load i16*, i16** %include69, align 8, !tbaa !31
  %tobool70 = icmp ne i16* %99, null
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %cond.end.67
  %100 = load i32*, i32** %l_tmp_data, align 8, !tbaa !5
  %101 = bitcast i32* %100 to i8*
  call void @free(i8* %101) #8
  %102 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %103 = bitcast i32** %102 to i8*
  call void @free(i8* %103) #8
  %104 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %105 = load i32, i32* %l_bound, align 4, !tbaa !1
  call void @opj_pi_destroy(%struct.opj_pi_iterator* %104, i32 %105) #6
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %cond.end.67
  %106 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %include73 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %106, i32 0, i32 1
  %107 = load i16*, i16** %include73, align 8, !tbaa !31
  %108 = bitcast i16* %107 to i8*
  %109 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %numlayers74 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %109, i32 0, i32 2
  %110 = load i32, i32* %numlayers74, align 4, !tbaa !30
  %add75 = add i32 %110, 1
  %111 = load i32, i32* %l_step_l, align 4, !tbaa !1
  %mul76 = mul i32 %add75, %111
  %conv77 = zext i32 %mul76 to i64
  %mul78 = mul i64 %conv77, 2
  %call79 = call i8* @memset(i8* %108, i32 0, i64 %mul78) #8
  %112 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %112, i32 0, i32 13
  %113 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps, align 8, !tbaa !33
  store %struct.opj_pi_comp* %113, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %114 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %comps80 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %114, i32 0, i32 6
  %115 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps80, align 8, !tbaa !34
  store %struct.opj_image_comp* %115, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %116 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %116, i32 0, i32 13
  %117 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !35
  store %struct.opj_tccp* %117, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %118 = load i32, i32* %l_tx0, align 4, !tbaa !1
  %119 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %tx0 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %119, i32 0, i32 14
  store i32 %118, i32* %tx0, align 4, !tbaa !36
  %120 = load i32, i32* %l_ty0, align 4, !tbaa !1
  %121 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %ty0 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %121, i32 0, i32 15
  store i32 %120, i32* %ty0, align 4, !tbaa !37
  %122 = load i32, i32* %l_tx1, align 4, !tbaa !1
  %123 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %tx1 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %123, i32 0, i32 16
  store i32 %122, i32* %tx1, align 4, !tbaa !38
  %124 = load i32, i32* %l_ty1, align 4, !tbaa !1
  %125 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %ty1 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %125, i32 0, i32 17
  store i32 %124, i32* %ty1, align 4, !tbaa !39
  %126 = load i32, i32* %l_step_p, align 4, !tbaa !1
  %127 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_p = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %127, i32 0, i32 5
  store i32 %126, i32* %step_p, align 4, !tbaa !40
  %128 = load i32, i32* %l_step_c, align 4, !tbaa !1
  %129 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_c = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %129, i32 0, i32 4
  store i32 %128, i32* %step_c, align 4, !tbaa !41
  %130 = load i32, i32* %l_step_r, align 4, !tbaa !1
  %131 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_r = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %131, i32 0, i32 3
  store i32 %130, i32* %step_r, align 4, !tbaa !42
  %132 = load i32, i32* %l_step_l, align 4, !tbaa !1
  %133 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_l = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %133, i32 0, i32 2
  store i32 %132, i32* %step_l, align 4, !tbaa !43
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.104, %if.end.72
  %134 = load i32, i32* %compno, align 4, !tbaa !1
  %135 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %numcomps82 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %135, i32 0, i32 12
  %136 = load i32, i32* %numcomps82, align 4, !tbaa !44
  %cmp83 = icmp ult i32 %134, %136
  br i1 %cmp83, label %for.body.85, label %for.end.106

for.body.85:                                      ; preds = %for.cond.81
  %137 = bitcast %struct.opj_pi_resolution** %l_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %137) #1
  %138 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %138, i32 0, i32 3
  %139 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions, align 8, !tbaa !45
  store %struct.opj_pi_resolution* %139, %struct.opj_pi_resolution** %l_res, align 8, !tbaa !5
  %140 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom86 = zext i32 %140 to i64
  %141 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %arrayidx87 = getelementptr inbounds i32*, i32** %141, i64 %idxprom86
  %142 = load i32*, i32** %arrayidx87, align 8, !tbaa !5
  store i32* %142, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %143 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %143, i32 0, i32 0
  %144 = load i32, i32* %dx, align 4, !tbaa !47
  %145 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %dx88 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %145, i32 0, i32 0
  store i32 %144, i32* %dx88, align 4, !tbaa !50
  %146 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dy = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %146, i32 0, i32 1
  %147 = load i32, i32* %dy, align 4, !tbaa !51
  %148 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %dy89 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %148, i32 0, i32 1
  store i32 %147, i32* %dy89, align 4, !tbaa !52
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.98, %for.body.85
  %149 = load i32, i32* %resno, align 4, !tbaa !1
  %150 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %150, i32 0, i32 2
  %151 = load i32, i32* %numresolutions, align 4, !tbaa !53
  %cmp91 = icmp ult i32 %149, %151
  br i1 %cmp91, label %for.body.93, label %for.end.100

for.body.93:                                      ; preds = %for.cond.90
  %152 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %incdec.ptr, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %153 = load i32, i32* %152, align 4, !tbaa !1
  %154 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res, align 8, !tbaa !5
  %pdx = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %154, i32 0, i32 0
  store i32 %153, i32* %pdx, align 4, !tbaa !54
  %155 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr94 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %incdec.ptr94, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %156 = load i32, i32* %155, align 4, !tbaa !1
  %157 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res, align 8, !tbaa !5
  %pdy = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %157, i32 0, i32 1
  store i32 %156, i32* %pdy, align 4, !tbaa !56
  %158 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr95 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %incdec.ptr95, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %159 = load i32, i32* %158, align 4, !tbaa !1
  %160 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res, align 8, !tbaa !5
  %pw = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %160, i32 0, i32 2
  store i32 %159, i32* %pw, align 4, !tbaa !57
  %161 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr96 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %incdec.ptr96, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %162 = load i32, i32* %161, align 4, !tbaa !1
  %163 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %163, i32 0, i32 3
  store i32 %162, i32* %ph, align 4, !tbaa !58
  %164 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res, align 8, !tbaa !5
  %incdec.ptr97 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %164, i32 1
  store %struct.opj_pi_resolution* %incdec.ptr97, %struct.opj_pi_resolution** %l_res, align 8, !tbaa !5
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.body.93
  %165 = load i32, i32* %resno, align 4, !tbaa !1
  %inc99 = add i32 %165, 1
  store i32 %inc99, i32* %resno, align 4, !tbaa !1
  br label %for.cond.90

for.end.100:                                      ; preds = %for.cond.90
  %166 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %incdec.ptr101 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %166, i32 1
  store %struct.opj_pi_comp* %incdec.ptr101, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %167 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %incdec.ptr102 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %167, i32 1
  store %struct.opj_image_comp* %incdec.ptr102, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %168 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %incdec.ptr103 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %168, i32 1
  store %struct.opj_tccp* %incdec.ptr103, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %169 = bitcast %struct.opj_pi_resolution** %l_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.end.100
  %170 = load i32, i32* %compno, align 4, !tbaa !1
  %inc105 = add i32 %170, 1
  store i32 %inc105, i32* %compno, align 4, !tbaa !1
  br label %for.cond.81

for.end.106:                                      ; preds = %for.cond.81
  %171 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %incdec.ptr107 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %171, i32 1
  store %struct.opj_pi_iterator* %incdec.ptr107, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  store i32 1, i32* %pino, align 4, !tbaa !1
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.163, %for.end.106
  %172 = load i32, i32* %pino, align 4, !tbaa !1
  %173 = load i32, i32* %l_bound, align 4, !tbaa !1
  %cmp109 = icmp ult i32 %172, %173
  br i1 %cmp109, label %for.body.111, label %for.end.165

for.body.111:                                     ; preds = %for.cond.108
  %174 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %comps112 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %174, i32 0, i32 13
  %175 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps112, align 8, !tbaa !33
  store %struct.opj_pi_comp* %175, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %176 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %comps113 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %176, i32 0, i32 6
  %177 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps113, align 8, !tbaa !34
  store %struct.opj_image_comp* %177, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %178 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %tccps114 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %178, i32 0, i32 13
  %179 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps114, align 8, !tbaa !35
  store %struct.opj_tccp* %179, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %180 = load i32, i32* %l_tx0, align 4, !tbaa !1
  %181 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %tx0115 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %181, i32 0, i32 14
  store i32 %180, i32* %tx0115, align 4, !tbaa !36
  %182 = load i32, i32* %l_ty0, align 4, !tbaa !1
  %183 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %ty0116 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %183, i32 0, i32 15
  store i32 %182, i32* %ty0116, align 4, !tbaa !37
  %184 = load i32, i32* %l_tx1, align 4, !tbaa !1
  %185 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %tx1117 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %185, i32 0, i32 16
  store i32 %184, i32* %tx1117, align 4, !tbaa !38
  %186 = load i32, i32* %l_ty1, align 4, !tbaa !1
  %187 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %ty1118 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %187, i32 0, i32 17
  store i32 %186, i32* %ty1118, align 4, !tbaa !39
  %188 = load i32, i32* %l_step_p, align 4, !tbaa !1
  %189 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_p119 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %189, i32 0, i32 5
  store i32 %188, i32* %step_p119, align 4, !tbaa !40
  %190 = load i32, i32* %l_step_c, align 4, !tbaa !1
  %191 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_c120 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %191, i32 0, i32 4
  store i32 %190, i32* %step_c120, align 4, !tbaa !41
  %192 = load i32, i32* %l_step_r, align 4, !tbaa !1
  %193 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_r121 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %193, i32 0, i32 3
  store i32 %192, i32* %step_r121, align 4, !tbaa !42
  %194 = load i32, i32* %l_step_l, align 4, !tbaa !1
  %195 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_l122 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %195, i32 0, i32 2
  store i32 %194, i32* %step_l122, align 4, !tbaa !43
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.156, %for.body.111
  %196 = load i32, i32* %compno, align 4, !tbaa !1
  %197 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %numcomps124 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %197, i32 0, i32 12
  %198 = load i32, i32* %numcomps124, align 4, !tbaa !44
  %cmp125 = icmp ult i32 %196, %198
  br i1 %cmp125, label %for.body.127, label %for.end.158

for.body.127:                                     ; preds = %for.cond.123
  %199 = bitcast %struct.opj_pi_resolution** %l_res128 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %199) #1
  %200 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %resolutions129 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %200, i32 0, i32 3
  %201 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions129, align 8, !tbaa !45
  store %struct.opj_pi_resolution* %201, %struct.opj_pi_resolution** %l_res128, align 8, !tbaa !5
  %202 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom130 = zext i32 %202 to i64
  %203 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %arrayidx131 = getelementptr inbounds i32*, i32** %203, i64 %idxprom130
  %204 = load i32*, i32** %arrayidx131, align 8, !tbaa !5
  store i32* %204, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %205 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dx132 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %205, i32 0, i32 0
  %206 = load i32, i32* %dx132, align 4, !tbaa !47
  %207 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %dx133 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %207, i32 0, i32 0
  store i32 %206, i32* %dx133, align 4, !tbaa !50
  %208 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dy134 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %208, i32 0, i32 1
  %209 = load i32, i32* %dy134, align 4, !tbaa !51
  %210 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %dy135 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %210, i32 0, i32 1
  store i32 %209, i32* %dy135, align 4, !tbaa !52
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.150, %for.body.127
  %211 = load i32, i32* %resno, align 4, !tbaa !1
  %212 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %numresolutions137 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %212, i32 0, i32 2
  %213 = load i32, i32* %numresolutions137, align 4, !tbaa !53
  %cmp138 = icmp ult i32 %211, %213
  br i1 %cmp138, label %for.body.140, label %for.end.152

for.body.140:                                     ; preds = %for.cond.136
  %214 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr141 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %incdec.ptr141, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %215 = load i32, i32* %214, align 4, !tbaa !1
  %216 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res128, align 8, !tbaa !5
  %pdx142 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %216, i32 0, i32 0
  store i32 %215, i32* %pdx142, align 4, !tbaa !54
  %217 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr143 = getelementptr inbounds i32, i32* %217, i32 1
  store i32* %incdec.ptr143, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %218 = load i32, i32* %217, align 4, !tbaa !1
  %219 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res128, align 8, !tbaa !5
  %pdy144 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %219, i32 0, i32 1
  store i32 %218, i32* %pdy144, align 4, !tbaa !56
  %220 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr145 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %incdec.ptr145, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %221 = load i32, i32* %220, align 4, !tbaa !1
  %222 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res128, align 8, !tbaa !5
  %pw146 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %222, i32 0, i32 2
  store i32 %221, i32* %pw146, align 4, !tbaa !57
  %223 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr147 = getelementptr inbounds i32, i32* %223, i32 1
  store i32* %incdec.ptr147, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %224 = load i32, i32* %223, align 4, !tbaa !1
  %225 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res128, align 8, !tbaa !5
  %ph148 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %225, i32 0, i32 3
  store i32 %224, i32* %ph148, align 4, !tbaa !58
  %226 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res128, align 8, !tbaa !5
  %incdec.ptr149 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %226, i32 1
  store %struct.opj_pi_resolution* %incdec.ptr149, %struct.opj_pi_resolution** %l_res128, align 8, !tbaa !5
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.body.140
  %227 = load i32, i32* %resno, align 4, !tbaa !1
  %inc151 = add i32 %227, 1
  store i32 %inc151, i32* %resno, align 4, !tbaa !1
  br label %for.cond.136

for.end.152:                                      ; preds = %for.cond.136
  %228 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %incdec.ptr153 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %228, i32 1
  store %struct.opj_pi_comp* %incdec.ptr153, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %229 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %incdec.ptr154 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %229, i32 1
  store %struct.opj_image_comp* %incdec.ptr154, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %230 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %incdec.ptr155 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %230, i32 1
  store %struct.opj_tccp* %incdec.ptr155, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %231 = bitcast %struct.opj_pi_resolution** %l_res128 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.end.152
  %232 = load i32, i32* %compno, align 4, !tbaa !1
  %inc157 = add i32 %232, 1
  store i32 %inc157, i32* %compno, align 4, !tbaa !1
  br label %for.cond.123

for.end.158:                                      ; preds = %for.cond.123
  %233 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %add.ptr159 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %233, i64 -1
  %include160 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %add.ptr159, i32 0, i32 1
  %234 = load i16*, i16** %include160, align 8, !tbaa !31
  %235 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %include161 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %235, i32 0, i32 1
  store i16* %234, i16** %include161, align 8, !tbaa !31
  %236 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %incdec.ptr162 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %236, i32 1
  store %struct.opj_pi_iterator* %incdec.ptr162, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.end.158
  %237 = load i32, i32* %pino, align 4, !tbaa !1
  %inc164 = add i32 %237, 1
  store i32 %inc164, i32* %pino, align 4, !tbaa !1
  br label %for.cond.108

for.end.165:                                      ; preds = %for.cond.108
  %238 = load i32*, i32** %l_tmp_data, align 8, !tbaa !5
  %239 = bitcast i32* %238 to i8*
  call void @free(i8* %239) #8
  store i32* null, i32** %l_tmp_data, align 8, !tbaa !5
  %240 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %241 = bitcast i32** %240 to i8*
  call void @free(i8* %241) #8
  store i32** null, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %242 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %POC = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %242, i32 0, i32 26
  %bf.load = load i8, i8* %POC, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool166 = icmp ne i32 %bf.cast, 0
  br i1 %tobool166, label %if.then.167, label %if.else

if.then.167:                                      ; preds = %for.end.165
  %243 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %244 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %245 = load i32, i32* %l_max_prec, align 4, !tbaa !1
  %246 = load i32, i32* %l_max_res, align 4, !tbaa !1
  call void @opj_pi_update_decode_poc(%struct.opj_pi_iterator* %243, %struct.opj_tcp* %244, i32 %245, i32 %246) #6
  br label %if.end.168

if.else:                                          ; preds = %for.end.165
  %247 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %248 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %249 = load i32, i32* %l_max_prec, align 4, !tbaa !1
  %250 = load i32, i32* %l_max_res, align 4, !tbaa !1
  call void @opj_pi_update_decode_not_poc(%struct.opj_pi_iterator* %247, %struct.opj_tcp* %248, i32 %249, i32 %250) #6
  br label %if.end.168

if.end.168:                                       ; preds = %if.else, %if.then.167
  %251 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  store %struct.opj_pi_iterator* %251, %struct.opj_pi_iterator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.168, %if.then.71, %if.then.38, %if.then.34, %if.then
  %252 = bitcast i32** %l_encoding_value_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %252) #1
  %253 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %253) #1
  %254 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #1
  %255 = bitcast %struct.opj_pi_comp** %l_current_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #1
  %256 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %256) #1
  %257 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #1
  %258 = bitcast %struct.opj_pi_iterator** %l_pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  %259 = bitcast i32* %l_data_stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast i32* %l_step_l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #1
  %261 = bitcast i32* %l_step_r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i32* %l_step_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast i32* %l_step_p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %264 = bitcast i32* %l_bound to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #1
  %265 = bitcast i32* %l_dy_min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #1
  %266 = bitcast i32* %l_dx_min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = bitcast i32* %l_ty1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #1
  %268 = bitcast i32* %l_ty0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  %269 = bitcast i32* %l_tx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #1
  %270 = bitcast i32* %l_tx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #1
  %271 = bitcast i32* %l_max_prec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #1
  %272 = bitcast i32* %l_max_res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #1
  %273 = bitcast i32*** %l_tmp_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #1
  %274 = bitcast i32** %l_tmp_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #1
  %275 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #1
  %278 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %retval
  ret %struct.opj_pi_iterator* %278
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.opj_pi_iterator* @opj_pi_create(%struct.opj_image* %image, %struct.opj_cp* %cp, i32 %tileno) #0 {
entry:
  %retval = alloca %struct.opj_pi_iterator*, align 8
  %image.addr = alloca %struct.opj_image*, align 8
  %cp.addr = alloca %struct.opj_cp*, align 8
  %tileno.addr = alloca i32, align 4
  %pino = alloca i32, align 4
  %compno = alloca i32, align 4
  %l_poc_bound = alloca i32, align 4
  %l_pi = alloca %struct.opj_pi_iterator*, align 8
  %tcp = alloca %struct.opj_tcp*, align 8
  %tccp = alloca %struct.opj_tccp*, align 8
  %l_current_pi = alloca %struct.opj_pi_iterator*, align 8
  %cleanup.dest.slot = alloca i32
  %comp = alloca %struct.opj_pi_comp*, align 8
  store %struct.opj_image* %image, %struct.opj_image** %image.addr, align 8, !tbaa !5
  store %struct.opj_cp* %cp, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  store i32 %tileno, i32* %tileno.addr, align 4, !tbaa !1
  %0 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %l_poc_bound to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.opj_pi_iterator** %l_pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %4 = bitcast %struct.opj_tcp** %tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.opj_tcp* null, %struct.opj_tcp** %tcp, align 8, !tbaa !5
  %5 = bitcast %struct.opj_tccp** %tccp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.opj_tccp* null, %struct.opj_tccp** %tccp, align 8, !tbaa !5
  %6 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %7 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.opj_cp* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 799, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_pi_create, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.opj_image* %9, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 800, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_pi_create, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %10, %cond.true.2
  %11 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %12 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %tw = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %12, i32 0, i32 6
  %13 = load i32, i32* %tw, align 4, !tbaa !24
  %14 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %th = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %14, i32 0, i32 7
  %15 = load i32, i32* %th, align 4, !tbaa !25
  %mul = mul i32 %13, %15
  %cmp5 = icmp ult i32 %11, %mul
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 801, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_pi_create, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %16, %cond.true.6
  %17 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %idxprom = zext i32 %17 to i64
  %18 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %tcps = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %18, i32 0, i32 17
  %19 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %19, i64 %idxprom
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %tcp, align 8, !tbaa !5
  %20 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !5
  %numpocs = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %20, i32 0, i32 6
  %21 = load i32, i32* %numpocs, align 4, !tbaa !26
  %add = add i32 %21, 1
  store i32 %add, i32* %l_poc_bound, align 4, !tbaa !1
  %22 = load i32, i32* %l_poc_bound, align 4, !tbaa !1
  %conv = zext i32 %22 to i64
  %cmp9 = icmp ne i64 %conv, 0
  br i1 %cmp9, label %land.lhs.true, label %cond.false.15

land.lhs.true:                                    ; preds = %cond.end.8
  %23 = load i32, i32* %l_poc_bound, align 4, !tbaa !1
  %conv11 = zext i32 %23 to i64
  %cmp12 = icmp uge i64 %conv11, 74382032555280449
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %land.lhs.true
  br label %cond.end.17

cond.false.15:                                    ; preds = %land.lhs.true, %cond.end.8
  %24 = load i32, i32* %l_poc_bound, align 4, !tbaa !1
  %conv16 = zext i32 %24 to i64
  %call = call noalias i8* @calloc(i64 %conv16, i64 248) #8
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.15, %cond.true.14
  %cond = phi i8* [ null, %cond.true.14 ], [ %call, %cond.false.15 ]
  %25 = bitcast i8* %cond to %struct.opj_pi_iterator*
  store %struct.opj_pi_iterator* %25, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %26 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_pi_iterator* %26, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.17
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

if.end:                                           ; preds = %cond.end.17
  %27 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %28 = bitcast %struct.opj_pi_iterator* %27 to i8*
  %29 = load i32, i32* %l_poc_bound, align 4, !tbaa !1
  %conv18 = zext i32 %29 to i64
  %mul19 = mul i64 %conv18, 248
  %call20 = call i8* @memset(i8* %28, i32 0, i64 %mul19) #8
  %30 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  store %struct.opj_pi_iterator* %30, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  store i32 0, i32* %pino, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.82, %if.end
  %31 = load i32, i32* %pino, align 4, !tbaa !1
  %32 = load i32, i32* %l_poc_bound, align 4, !tbaa !1
  %cmp21 = icmp ult i32 %31, %32
  br i1 %cmp21, label %for.body, label %for.end.84

for.body:                                         ; preds = %for.cond
  %33 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %33, i32 0, i32 4
  %34 = load i32, i32* %numcomps, align 4, !tbaa !28
  %conv23 = zext i32 %34 to i64
  %cmp24 = icmp ne i64 %conv23, 0
  br i1 %cmp24, label %land.lhs.true.26, label %cond.false.32

land.lhs.true.26:                                 ; preds = %for.body
  %35 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !5
  %numcomps27 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %35, i32 0, i32 4
  %36 = load i32, i32* %numcomps27, align 4, !tbaa !28
  %conv28 = zext i32 %36 to i64
  %cmp29 = icmp uge i64 %conv28, 768614336404564640
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %land.lhs.true.26
  br label %cond.end.36

cond.false.32:                                    ; preds = %land.lhs.true.26, %for.body
  %37 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !5
  %numcomps33 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %37, i32 0, i32 4
  %38 = load i32, i32* %numcomps33, align 4, !tbaa !28
  %conv34 = zext i32 %38 to i64
  %call35 = call noalias i8* @calloc(i64 %conv34, i64 24) #8
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.32, %cond.true.31
  %cond37 = phi i8* [ null, %cond.true.31 ], [ %call35, %cond.false.32 ]
  %39 = bitcast i8* %cond37 to %struct.opj_pi_comp*
  %40 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %40, i32 0, i32 13
  store %struct.opj_pi_comp* %39, %struct.opj_pi_comp** %comps, align 8, !tbaa !33
  %41 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %comps38 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %41, i32 0, i32 13
  %42 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps38, align 8, !tbaa !33
  %tobool39 = icmp ne %struct.opj_pi_comp* %42, null
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %cond.end.36
  %43 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %44 = load i32, i32* %l_poc_bound, align 4, !tbaa !1
  call void @opj_pi_destroy(%struct.opj_pi_iterator* %43, i32 %44) #6
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

if.end.41:                                        ; preds = %cond.end.36
  %45 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !5
  %numcomps42 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %45, i32 0, i32 4
  %46 = load i32, i32* %numcomps42, align 4, !tbaa !28
  %47 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %numcomps43 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %47, i32 0, i32 12
  store i32 %46, i32* %numcomps43, align 4, !tbaa !44
  %48 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %comps44 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %48, i32 0, i32 13
  %49 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps44, align 8, !tbaa !33
  %50 = bitcast %struct.opj_pi_comp* %49 to i8*
  %51 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !5
  %numcomps45 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %51, i32 0, i32 4
  %52 = load i32, i32* %numcomps45, align 4, !tbaa !28
  %conv46 = zext i32 %52 to i64
  %mul47 = mul i64 %conv46, 24
  %call48 = call i8* @memset(i8* %50, i32 0, i64 %mul47) #8
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc, %if.end.41
  %53 = load i32, i32* %compno, align 4, !tbaa !1
  %54 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !5
  %numcomps50 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %54, i32 0, i32 4
  %55 = load i32, i32* %numcomps50, align 4, !tbaa !28
  %cmp51 = icmp ult i32 %53, %55
  br i1 %cmp51, label %for.body.53, label %for.end

for.body.53:                                      ; preds = %for.cond.49
  %56 = bitcast %struct.opj_pi_comp** %comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom54 = zext i32 %57 to i64
  %58 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %comps55 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %58, i32 0, i32 13
  %59 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps55, align 8, !tbaa !33
  %arrayidx56 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %59, i64 %idxprom54
  store %struct.opj_pi_comp* %arrayidx56, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %60 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom57 = zext i32 %60 to i64
  %61 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !5
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %61, i32 0, i32 13
  %62 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !35
  %arrayidx58 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %62, i64 %idxprom57
  store %struct.opj_tccp* %arrayidx58, %struct.opj_tccp** %tccp, align 8, !tbaa !5
  %63 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %63, i32 0, i32 1
  %64 = load i32, i32* %numresolutions, align 4, !tbaa !59
  %conv59 = zext i32 %64 to i64
  %mul60 = mul i64 %conv59, 16
  %cmp61 = icmp uge i64 %mul60, -256
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %for.body.53
  br label %cond.end.69

cond.false.64:                                    ; preds = %for.body.53
  %65 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp, align 8, !tbaa !5
  %numresolutions65 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %65, i32 0, i32 1
  %66 = load i32, i32* %numresolutions65, align 4, !tbaa !59
  %conv66 = zext i32 %66 to i64
  %mul67 = mul i64 %conv66, 16
  %call68 = call noalias i8* @malloc(i64 %mul67) #8
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.64, %cond.true.63
  %cond70 = phi i8* [ null, %cond.true.63 ], [ %call68, %cond.false.64 ]
  %67 = bitcast i8* %cond70 to %struct.opj_pi_resolution*
  %68 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %68, i32 0, i32 3
  store %struct.opj_pi_resolution* %67, %struct.opj_pi_resolution** %resolutions, align 8, !tbaa !45
  %69 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %resolutions71 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %69, i32 0, i32 3
  %70 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions71, align 8, !tbaa !45
  %tobool72 = icmp ne %struct.opj_pi_resolution* %70, null
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %cond.end.69
  %71 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %72 = load i32, i32* %l_poc_bound, align 4, !tbaa !1
  call void @opj_pi_destroy(%struct.opj_pi_iterator* %71, i32 %72) #6
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.74:                                        ; preds = %cond.end.69
  %73 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp, align 8, !tbaa !5
  %numresolutions75 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %73, i32 0, i32 1
  %74 = load i32, i32* %numresolutions75, align 4, !tbaa !59
  %75 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions76 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %75, i32 0, i32 2
  store i32 %74, i32* %numresolutions76, align 4, !tbaa !53
  %76 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %resolutions77 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %76, i32 0, i32 3
  %77 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions77, align 8, !tbaa !45
  %78 = bitcast %struct.opj_pi_resolution* %77 to i8*
  %79 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp, align 8, !tbaa !5
  %numresolutions78 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %79, i32 0, i32 1
  %80 = load i32, i32* %numresolutions78, align 4, !tbaa !59
  %conv79 = zext i32 %80 to i64
  %mul80 = mul i64 %conv79, 16
  %call81 = call i8* @memset(i8* %78, i32 0, i64 %mul80) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.74, %if.then.73
  %81 = bitcast %struct.opj_pi_comp** %comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.85 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %82 = load i32, i32* %compno, align 4, !tbaa !1
  %inc = add i32 %82, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !1
  br label %for.cond.49

for.end:                                          ; preds = %for.cond.49
  %83 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %83, i32 1
  store %struct.opj_pi_iterator* %incdec.ptr, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end
  %84 = load i32, i32* %pino, align 4, !tbaa !1
  %inc83 = add i32 %84, 1
  store i32 %inc83, i32* %pino, align 4, !tbaa !1
  br label %for.cond

for.end.84:                                       ; preds = %for.cond
  %85 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  store %struct.opj_pi_iterator* %85, %struct.opj_pi_iterator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.85

cleanup.85:                                       ; preds = %for.end.84, %cleanup, %if.then.40, %if.then
  %86 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast %struct.opj_tccp** %tccp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast %struct.opj_tcp** %tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast %struct.opj_pi_iterator** %l_pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast i32* %l_poc_bound to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %retval
  ret %struct.opj_pi_iterator* %93
}

; Function Attrs: nounwind uwtable
define internal void @opj_get_all_encoding_parameters(%struct.opj_image* %p_image, %struct.opj_cp* %p_cp, i32 %tileno, i32* %p_tx0, i32* %p_tx1, i32* %p_ty0, i32* %p_ty1, i32* %p_dx_min, i32* %p_dy_min, i32* %p_max_prec, i32* %p_max_res, i32** %p_resolutions) #0 {
entry:
  %p_image.addr = alloca %struct.opj_image*, align 8
  %p_cp.addr = alloca %struct.opj_cp*, align 8
  %tileno.addr = alloca i32, align 4
  %p_tx0.addr = alloca i32*, align 8
  %p_tx1.addr = alloca i32*, align 8
  %p_ty0.addr = alloca i32*, align 8
  %p_ty1.addr = alloca i32*, align 8
  %p_dx_min.addr = alloca i32*, align 8
  %p_dy_min.addr = alloca i32*, align 8
  %p_max_prec.addr = alloca i32*, align 8
  %p_max_res.addr = alloca i32*, align 8
  %p_resolutions.addr = alloca i32**, align 8
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %tcp = alloca %struct.opj_tcp*, align 8
  %l_tccp = alloca %struct.opj_tccp*, align 8
  %l_img_comp = alloca %struct.opj_image_comp*, align 8
  %lResolutionPtr = alloca i32*, align 8
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %l_level_no = alloca i32, align 4
  %l_rx0 = alloca i32, align 4
  %l_ry0 = alloca i32, align 4
  %l_rx1 = alloca i32, align 4
  %l_ry1 = alloca i32, align 4
  %l_px0 = alloca i32, align 4
  %l_py0 = alloca i32, align 4
  %l_px1 = alloca i32, align 4
  %py1 = alloca i32, align 4
  %l_product = alloca i32, align 4
  %l_tcx0 = alloca i32, align 4
  %l_tcy0 = alloca i32, align 4
  %l_tcx1 = alloca i32, align 4
  %l_tcy1 = alloca i32, align 4
  %l_pdx = alloca i32, align 4
  %l_pdy = alloca i32, align 4
  %l_pw = alloca i32, align 4
  %l_ph = alloca i32, align 4
  %l_dx = alloca i32, align 4
  %l_dy = alloca i32, align 4
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  store %struct.opj_cp* %p_cp, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  store i32 %tileno, i32* %tileno.addr, align 4, !tbaa !1
  store i32* %p_tx0, i32** %p_tx0.addr, align 8, !tbaa !5
  store i32* %p_tx1, i32** %p_tx1.addr, align 8, !tbaa !5
  store i32* %p_ty0, i32** %p_ty0.addr, align 8, !tbaa !5
  store i32* %p_ty1, i32** %p_ty1.addr, align 8, !tbaa !5
  store i32* %p_dx_min, i32** %p_dx_min.addr, align 8, !tbaa !5
  store i32* %p_dy_min, i32** %p_dy_min.addr, align 8, !tbaa !5
  store i32* %p_max_prec, i32** %p_max_prec.addr, align 8, !tbaa !5
  store i32* %p_max_res, i32** %p_max_res.addr, align 8, !tbaa !5
  store i32** %p_resolutions, i32*** %p_resolutions.addr, align 8, !tbaa !5
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_tcp** %tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.opj_tcp* null, %struct.opj_tcp** %tcp, align 8, !tbaa !5
  %3 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.opj_tccp* null, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %4 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %5 = bitcast i32** %lResolutionPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.opj_cp* %8, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 691, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @__PRETTY_FUNCTION__.opj_get_all_encoding_parameters, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  %10 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.opj_image* %10, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 692, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @__PRETTY_FUNCTION__.opj_get_all_encoding_parameters, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %11, %cond.true.2
  %12 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %13 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tw = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %13, i32 0, i32 6
  %14 = load i32, i32* %tw, align 4, !tbaa !24
  %15 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %th = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %15, i32 0, i32 7
  %16 = load i32, i32* %th, align 4, !tbaa !25
  %mul = mul i32 %14, %16
  %cmp5 = icmp ult i32 %12, %mul
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 693, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @__PRETTY_FUNCTION__.opj_get_all_encoding_parameters, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %17, %cond.true.6
  %18 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %idxprom = zext i32 %18 to i64
  %19 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tcps = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %19, i32 0, i32 17
  %20 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %20, i64 %idxprom
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %tcp, align 8, !tbaa !5
  %21 = load %struct.opj_tcp*, %struct.opj_tcp** %tcp, align 8, !tbaa !5
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %21, i32 0, i32 13
  %22 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !35
  store %struct.opj_tccp* %22, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %23 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %23, i32 0, i32 6
  %24 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps, align 8, !tbaa !34
  store %struct.opj_image_comp* %24, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %25 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %26 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tw9 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %26, i32 0, i32 6
  %27 = load i32, i32* %tw9, align 4, !tbaa !24
  %rem = urem i32 %25, %27
  store i32 %rem, i32* %p, align 4, !tbaa !1
  %28 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %29 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tw10 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %29, i32 0, i32 6
  %30 = load i32, i32* %tw10, align 4, !tbaa !24
  %div = udiv i32 %28, %30
  store i32 %div, i32* %q, align 4, !tbaa !1
  %31 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tx0 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %31, i32 0, i32 1
  %32 = load i32, i32* %tx0, align 4, !tbaa !61
  %33 = load i32, i32* %p, align 4, !tbaa !1
  %34 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tdx = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %34, i32 0, i32 3
  %35 = load i32, i32* %tdx, align 4, !tbaa !62
  %mul11 = mul i32 %33, %35
  %add = add i32 %32, %mul11
  %36 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %x0 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %36, i32 0, i32 0
  %37 = load i32, i32* %x0, align 4, !tbaa !63
  %call = call i32 @opj_int_max(i32 %add, i32 %37) #6
  %38 = load i32*, i32** %p_tx0.addr, align 8, !tbaa !5
  store i32 %call, i32* %38, align 4, !tbaa !1
  %39 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tx012 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %39, i32 0, i32 1
  %40 = load i32, i32* %tx012, align 4, !tbaa !61
  %41 = load i32, i32* %p, align 4, !tbaa !1
  %add13 = add i32 %41, 1
  %42 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tdx14 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %42, i32 0, i32 3
  %43 = load i32, i32* %tdx14, align 4, !tbaa !62
  %mul15 = mul i32 %add13, %43
  %add16 = add i32 %40, %mul15
  %44 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %x1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %44, i32 0, i32 2
  %45 = load i32, i32* %x1, align 4, !tbaa !64
  %call17 = call i32 @opj_int_min(i32 %add16, i32 %45) #6
  %46 = load i32*, i32** %p_tx1.addr, align 8, !tbaa !5
  store i32 %call17, i32* %46, align 4, !tbaa !1
  %47 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %ty0 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %47, i32 0, i32 2
  %48 = load i32, i32* %ty0, align 4, !tbaa !65
  %49 = load i32, i32* %q, align 4, !tbaa !1
  %50 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tdy = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %50, i32 0, i32 4
  %51 = load i32, i32* %tdy, align 4, !tbaa !66
  %mul18 = mul i32 %49, %51
  %add19 = add i32 %48, %mul18
  %52 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %y0 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %52, i32 0, i32 1
  %53 = load i32, i32* %y0, align 4, !tbaa !67
  %call20 = call i32 @opj_int_max(i32 %add19, i32 %53) #6
  %54 = load i32*, i32** %p_ty0.addr, align 8, !tbaa !5
  store i32 %call20, i32* %54, align 4, !tbaa !1
  %55 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %ty021 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %55, i32 0, i32 2
  %56 = load i32, i32* %ty021, align 4, !tbaa !65
  %57 = load i32, i32* %q, align 4, !tbaa !1
  %add22 = add i32 %57, 1
  %58 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tdy23 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %58, i32 0, i32 4
  %59 = load i32, i32* %tdy23, align 4, !tbaa !66
  %mul24 = mul i32 %add22, %59
  %add25 = add i32 %56, %mul24
  %60 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %y1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %60, i32 0, i32 3
  %61 = load i32, i32* %y1, align 4, !tbaa !68
  %call26 = call i32 @opj_int_min(i32 %add25, i32 %61) #6
  %62 = load i32*, i32** %p_ty1.addr, align 8, !tbaa !5
  store i32 %call26, i32* %62, align 4, !tbaa !1
  %63 = load i32*, i32** %p_max_prec.addr, align 8, !tbaa !5
  store i32 0, i32* %63, align 4, !tbaa !1
  %64 = load i32*, i32** %p_max_res.addr, align 8, !tbaa !5
  store i32 0, i32* %64, align 4, !tbaa !1
  %65 = load i32*, i32** %p_dx_min.addr, align 8, !tbaa !5
  store i32 2147483647, i32* %65, align 4, !tbaa !1
  %66 = load i32*, i32** %p_dy_min.addr, align 8, !tbaa !5
  store i32 2147483647, i32* %66, align 4, !tbaa !1
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.89, %cond.end.8
  %67 = load i32, i32* %compno, align 4, !tbaa !1
  %68 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %68, i32 0, i32 4
  %69 = load i32, i32* %numcomps, align 4, !tbaa !28
  %cmp27 = icmp ult i32 %67, %69
  br i1 %cmp27, label %for.body, label %for.end.91

for.body:                                         ; preds = %for.cond
  %70 = bitcast i32* %l_level_no to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = bitcast i32* %l_rx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = bitcast i32* %l_ry0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = bitcast i32* %l_rx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = bitcast i32* %l_ry1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = bitcast i32* %l_px0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = bitcast i32* %l_py0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = bitcast i32* %l_px1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = bitcast i32* %py1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = bitcast i32* %l_product to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %80 = bitcast i32* %l_tcx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = bitcast i32* %l_tcy0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = bitcast i32* %l_tcx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  %83 = bitcast i32* %l_tcy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = bitcast i32* %l_pdx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = bitcast i32* %l_pdy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #1
  %86 = bitcast i32* %l_pw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  %87 = bitcast i32* %l_ph to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom28 = zext i32 %88 to i64
  %89 = load i32**, i32*** %p_resolutions.addr, align 8, !tbaa !5
  %arrayidx29 = getelementptr inbounds i32*, i32** %89, i64 %idxprom28
  %90 = load i32*, i32** %arrayidx29, align 8, !tbaa !5
  store i32* %90, i32** %lResolutionPtr, align 8, !tbaa !5
  %91 = load i32*, i32** %p_tx0.addr, align 8, !tbaa !5
  %92 = load i32, i32* %91, align 4, !tbaa !1
  %93 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %93, i32 0, i32 0
  %94 = load i32, i32* %dx, align 4, !tbaa !47
  %call30 = call i32 @opj_int_ceildiv(i32 %92, i32 %94) #6
  store i32 %call30, i32* %l_tcx0, align 4, !tbaa !1
  %95 = load i32*, i32** %p_ty0.addr, align 8, !tbaa !5
  %96 = load i32, i32* %95, align 4, !tbaa !1
  %97 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dy = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %97, i32 0, i32 1
  %98 = load i32, i32* %dy, align 4, !tbaa !51
  %call31 = call i32 @opj_int_ceildiv(i32 %96, i32 %98) #6
  store i32 %call31, i32* %l_tcy0, align 4, !tbaa !1
  %99 = load i32*, i32** %p_tx1.addr, align 8, !tbaa !5
  %100 = load i32, i32* %99, align 4, !tbaa !1
  %101 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dx32 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %101, i32 0, i32 0
  %102 = load i32, i32* %dx32, align 4, !tbaa !47
  %call33 = call i32 @opj_int_ceildiv(i32 %100, i32 %102) #6
  store i32 %call33, i32* %l_tcx1, align 4, !tbaa !1
  %103 = load i32*, i32** %p_ty1.addr, align 8, !tbaa !5
  %104 = load i32, i32* %103, align 4, !tbaa !1
  %105 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dy34 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %105, i32 0, i32 1
  %106 = load i32, i32* %dy34, align 4, !tbaa !51
  %call35 = call i32 @opj_int_ceildiv(i32 %104, i32 %106) #6
  store i32 %call35, i32* %l_tcy1, align 4, !tbaa !1
  %107 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %107, i32 0, i32 1
  %108 = load i32, i32* %numresolutions, align 4, !tbaa !59
  %109 = load i32*, i32** %p_max_res.addr, align 8, !tbaa !5
  %110 = load i32, i32* %109, align 4, !tbaa !1
  %cmp36 = icmp ugt i32 %108, %110
  br i1 %cmp36, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %111 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions37 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %111, i32 0, i32 1
  %112 = load i32, i32* %numresolutions37, align 4, !tbaa !59
  %113 = load i32*, i32** %p_max_res.addr, align 8, !tbaa !5
  store i32 %112, i32* %113, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %114 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions38 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %114, i32 0, i32 1
  %115 = load i32, i32* %numresolutions38, align 4, !tbaa !59
  %sub = sub i32 %115, 1
  store i32 %sub, i32* %l_level_no, align 4, !tbaa !1
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc, %if.end
  %116 = load i32, i32* %resno, align 4, !tbaa !1
  %117 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions40 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %117, i32 0, i32 1
  %118 = load i32, i32* %numresolutions40, align 4, !tbaa !59
  %cmp41 = icmp ult i32 %116, %118
  br i1 %cmp41, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.39
  %119 = bitcast i32* %l_dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #1
  %120 = bitcast i32* %l_dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %120) #1
  %121 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom43 = zext i32 %121 to i64
  %122 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %prcw = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %122, i32 0, i32 10
  %arrayidx44 = getelementptr inbounds [33 x i32], [33 x i32]* %prcw, i32 0, i64 %idxprom43
  %123 = load i32, i32* %arrayidx44, align 4, !tbaa !1
  store i32 %123, i32* %l_pdx, align 4, !tbaa !1
  %124 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom45 = zext i32 %124 to i64
  %125 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %prch = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %125, i32 0, i32 11
  %arrayidx46 = getelementptr inbounds [33 x i32], [33 x i32]* %prch, i32 0, i64 %idxprom45
  %126 = load i32, i32* %arrayidx46, align 4, !tbaa !1
  store i32 %126, i32* %l_pdy, align 4, !tbaa !1
  %127 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %128 = load i32*, i32** %lResolutionPtr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %incdec.ptr, i32** %lResolutionPtr, align 8, !tbaa !5
  store i32 %127, i32* %128, align 4, !tbaa !1
  %129 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %130 = load i32*, i32** %lResolutionPtr, align 8, !tbaa !5
  %incdec.ptr47 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %incdec.ptr47, i32** %lResolutionPtr, align 8, !tbaa !5
  store i32 %129, i32* %130, align 4, !tbaa !1
  %131 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dx48 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %131, i32 0, i32 0
  %132 = load i32, i32* %dx48, align 4, !tbaa !47
  %133 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %134 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %add49 = add i32 %133, %134
  %shl = shl i32 1, %add49
  %mul50 = mul i32 %132, %shl
  store i32 %mul50, i32* %l_dx, align 4, !tbaa !1
  %135 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dy51 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %135, i32 0, i32 1
  %136 = load i32, i32* %dy51, align 4, !tbaa !51
  %137 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %138 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %add52 = add i32 %137, %138
  %shl53 = shl i32 1, %add52
  %mul54 = mul i32 %136, %shl53
  store i32 %mul54, i32* %l_dy, align 4, !tbaa !1
  %139 = load i32*, i32** %p_dx_min.addr, align 8, !tbaa !5
  %140 = load i32, i32* %139, align 4, !tbaa !1
  %141 = load i32, i32* %l_dx, align 4, !tbaa !1
  %call55 = call i32 @opj_int_min(i32 %140, i32 %141) #6
  %142 = load i32*, i32** %p_dx_min.addr, align 8, !tbaa !5
  store i32 %call55, i32* %142, align 4, !tbaa !1
  %143 = load i32*, i32** %p_dy_min.addr, align 8, !tbaa !5
  %144 = load i32, i32* %143, align 4, !tbaa !1
  %145 = load i32, i32* %l_dy, align 4, !tbaa !1
  %call56 = call i32 @opj_int_min(i32 %144, i32 %145) #6
  %146 = load i32*, i32** %p_dy_min.addr, align 8, !tbaa !5
  store i32 %call56, i32* %146, align 4, !tbaa !1
  %147 = load i32, i32* %l_tcx0, align 4, !tbaa !1
  %148 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call57 = call i32 @opj_int_ceildivpow2(i32 %147, i32 %148) #6
  store i32 %call57, i32* %l_rx0, align 4, !tbaa !1
  %149 = load i32, i32* %l_tcy0, align 4, !tbaa !1
  %150 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call58 = call i32 @opj_int_ceildivpow2(i32 %149, i32 %150) #6
  store i32 %call58, i32* %l_ry0, align 4, !tbaa !1
  %151 = load i32, i32* %l_tcx1, align 4, !tbaa !1
  %152 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call59 = call i32 @opj_int_ceildivpow2(i32 %151, i32 %152) #6
  store i32 %call59, i32* %l_rx1, align 4, !tbaa !1
  %153 = load i32, i32* %l_tcy1, align 4, !tbaa !1
  %154 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call60 = call i32 @opj_int_ceildivpow2(i32 %153, i32 %154) #6
  store i32 %call60, i32* %l_ry1, align 4, !tbaa !1
  %155 = load i32, i32* %l_rx0, align 4, !tbaa !1
  %156 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %call61 = call i32 @opj_int_floordivpow2(i32 %155, i32 %156) #6
  %157 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %shl62 = shl i32 %call61, %157
  store i32 %shl62, i32* %l_px0, align 4, !tbaa !1
  %158 = load i32, i32* %l_ry0, align 4, !tbaa !1
  %159 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %call63 = call i32 @opj_int_floordivpow2(i32 %158, i32 %159) #6
  %160 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %shl64 = shl i32 %call63, %160
  store i32 %shl64, i32* %l_py0, align 4, !tbaa !1
  %161 = load i32, i32* %l_rx1, align 4, !tbaa !1
  %162 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %call65 = call i32 @opj_int_ceildivpow2(i32 %161, i32 %162) #6
  %163 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %shl66 = shl i32 %call65, %163
  store i32 %shl66, i32* %l_px1, align 4, !tbaa !1
  %164 = load i32, i32* %l_ry1, align 4, !tbaa !1
  %165 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %call67 = call i32 @opj_int_ceildivpow2(i32 %164, i32 %165) #6
  %166 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %shl68 = shl i32 %call67, %166
  store i32 %shl68, i32* %py1, align 4, !tbaa !1
  %167 = load i32, i32* %l_rx0, align 4, !tbaa !1
  %168 = load i32, i32* %l_rx1, align 4, !tbaa !1
  %cmp69 = icmp eq i32 %167, %168
  br i1 %cmp69, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %for.body.42
  br label %cond.end.73

cond.false.71:                                    ; preds = %for.body.42
  %169 = load i32, i32* %l_px1, align 4, !tbaa !1
  %170 = load i32, i32* %l_px0, align 4, !tbaa !1
  %sub72 = sub nsw i32 %169, %170
  %171 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %shr = ashr i32 %sub72, %171
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.true.70
  %cond = phi i32 [ 0, %cond.true.70 ], [ %shr, %cond.false.71 ]
  store i32 %cond, i32* %l_pw, align 4, !tbaa !1
  %172 = load i32, i32* %l_ry0, align 4, !tbaa !1
  %173 = load i32, i32* %l_ry1, align 4, !tbaa !1
  %cmp74 = icmp eq i32 %172, %173
  br i1 %cmp74, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end.73
  br label %cond.end.79

cond.false.76:                                    ; preds = %cond.end.73
  %174 = load i32, i32* %py1, align 4, !tbaa !1
  %175 = load i32, i32* %l_py0, align 4, !tbaa !1
  %sub77 = sub nsw i32 %174, %175
  %176 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %shr78 = ashr i32 %sub77, %176
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.76, %cond.true.75
  %cond80 = phi i32 [ 0, %cond.true.75 ], [ %shr78, %cond.false.76 ]
  store i32 %cond80, i32* %l_ph, align 4, !tbaa !1
  %177 = load i32, i32* %l_pw, align 4, !tbaa !1
  %178 = load i32*, i32** %lResolutionPtr, align 8, !tbaa !5
  %incdec.ptr81 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %incdec.ptr81, i32** %lResolutionPtr, align 8, !tbaa !5
  store i32 %177, i32* %178, align 4, !tbaa !1
  %179 = load i32, i32* %l_ph, align 4, !tbaa !1
  %180 = load i32*, i32** %lResolutionPtr, align 8, !tbaa !5
  %incdec.ptr82 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %incdec.ptr82, i32** %lResolutionPtr, align 8, !tbaa !5
  store i32 %179, i32* %180, align 4, !tbaa !1
  %181 = load i32, i32* %l_pw, align 4, !tbaa !1
  %182 = load i32, i32* %l_ph, align 4, !tbaa !1
  %mul83 = mul i32 %181, %182
  store i32 %mul83, i32* %l_product, align 4, !tbaa !1
  %183 = load i32, i32* %l_product, align 4, !tbaa !1
  %184 = load i32*, i32** %p_max_prec.addr, align 8, !tbaa !5
  %185 = load i32, i32* %184, align 4, !tbaa !1
  %cmp84 = icmp ugt i32 %183, %185
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %cond.end.79
  %186 = load i32, i32* %l_product, align 4, !tbaa !1
  %187 = load i32*, i32** %p_max_prec.addr, align 8, !tbaa !5
  store i32 %186, i32* %187, align 4, !tbaa !1
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %cond.end.79
  %188 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %dec = add i32 %188, -1
  store i32 %dec, i32* %l_level_no, align 4, !tbaa !1
  %189 = bitcast i32* %l_dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %l_dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %191 = load i32, i32* %resno, align 4, !tbaa !1
  %inc = add i32 %191, 1
  store i32 %inc, i32* %resno, align 4, !tbaa !1
  br label %for.cond.39

for.end:                                          ; preds = %for.cond.39
  %192 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %incdec.ptr87 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %192, i32 1
  store %struct.opj_tccp* %incdec.ptr87, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %193 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %incdec.ptr88 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %193, i32 1
  store %struct.opj_image_comp* %incdec.ptr88, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %194 = bitcast i32* %l_ph to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %l_pw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %l_pdy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %l_pdx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %l_tcy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %l_tcx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %l_tcy0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %l_tcx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %l_product to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %py1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %l_px1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %l_py0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %l_px0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %l_ry1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %l_rx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %l_ry0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i32* %l_rx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %l_level_no to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.end
  %212 = load i32, i32* %compno, align 4, !tbaa !1
  %inc90 = add i32 %212, 1
  store i32 %inc90, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end.91:                                       ; preds = %for.cond
  %213 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32** %lResolutionPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  %217 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast %struct.opj_tcp** %tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind uwtable
define void @opj_pi_destroy(%struct.opj_pi_iterator* %p_pi, i32 %p_nb_elements) #0 {
entry:
  %p_pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %p_nb_elements.addr = alloca i32, align 4
  %compno = alloca i32, align 4
  %pino = alloca i32, align 4
  %l_current_pi = alloca %struct.opj_pi_iterator*, align 8
  %l_current_component = alloca %struct.opj_pi_comp*, align 8
  store %struct.opj_pi_iterator* %p_pi, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !5
  store i32 %p_nb_elements, i32* %p_nb_elements.addr, align 4, !tbaa !1
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !5
  store %struct.opj_pi_iterator* %3, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %4 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_pi_iterator* %4, null
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %5 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !5
  %include = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %5, i32 0, i32 1
  %6 = load i16*, i16** %include, align 8, !tbaa !31
  %tobool1 = icmp ne i16* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !5
  %include3 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %7, i32 0, i32 1
  %8 = load i16*, i16** %include3, align 8, !tbaa !31
  %9 = bitcast i16* %8 to i8*
  call void @free(i8* %9) #8
  %10 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !5
  %include4 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %10, i32 0, i32 1
  store i16* null, i16** %include4, align 8, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store i32 0, i32* %pino, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %if.end
  %11 = load i32, i32* %pino, align 4, !tbaa !1
  %12 = load i32, i32* %p_nb_elements.addr, align 4, !tbaa !1
  %cmp = icmp ult i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %13 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %13, i32 0, i32 13
  %14 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps, align 8, !tbaa !33
  %tobool5 = icmp ne %struct.opj_pi_comp* %14, null
  br i1 %tobool5, label %if.then.6, label %if.end.18

if.then.6:                                        ; preds = %for.body
  %15 = bitcast %struct.opj_pi_comp** %l_current_component to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %comps7 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %16, i32 0, i32 13
  %17 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps7, align 8, !tbaa !33
  store %struct.opj_pi_comp* %17, %struct.opj_pi_comp** %l_current_component, align 8, !tbaa !5
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.then.6
  %18 = load i32, i32* %compno, align 4, !tbaa !1
  %19 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %19, i32 0, i32 12
  %20 = load i32, i32* %numcomps, align 4, !tbaa !44
  %cmp9 = icmp ult i32 %18, %20
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %21 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_component, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %21, i32 0, i32 3
  %22 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions, align 8, !tbaa !45
  %tobool11 = icmp ne %struct.opj_pi_resolution* %22, null
  br i1 %tobool11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %for.body.10
  %23 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_component, align 8, !tbaa !5
  %resolutions13 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %23, i32 0, i32 3
  %24 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions13, align 8, !tbaa !45
  %25 = bitcast %struct.opj_pi_resolution* %24 to i8*
  call void @free(i8* %25) #8
  %26 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_component, align 8, !tbaa !5
  %resolutions14 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %26, i32 0, i32 3
  store %struct.opj_pi_resolution* null, %struct.opj_pi_resolution** %resolutions14, align 8, !tbaa !45
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %for.body.10
  %27 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_component, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %27, i32 1
  store %struct.opj_pi_comp* %incdec.ptr, %struct.opj_pi_comp** %l_current_component, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %28 = load i32, i32* %compno, align 4, !tbaa !1
  %inc = add i32 %28, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !1
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  %29 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %comps16 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %29, i32 0, i32 13
  %30 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps16, align 8, !tbaa !33
  %31 = bitcast %struct.opj_pi_comp* %30 to i8*
  call void @free(i8* %31) #8
  %32 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %comps17 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %32, i32 0, i32 13
  store %struct.opj_pi_comp* null, %struct.opj_pi_comp** %comps17, align 8, !tbaa !33
  %33 = bitcast %struct.opj_pi_comp** %l_current_component to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %for.body
  %34 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %incdec.ptr19 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %34, i32 1
  store %struct.opj_pi_iterator* %incdec.ptr19, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end.18
  %35 = load i32, i32* %pino, align 4, !tbaa !1
  %inc21 = add i32 %35, 1
  store i32 %inc21, i32* %pino, align 4, !tbaa !1
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %36 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !5
  %37 = bitcast %struct.opj_pi_iterator* %36 to i8*
  call void @free(i8* %37) #8
  br label %if.end.23

if.end.23:                                        ; preds = %for.end.22, %entry
  %38 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal void @opj_pi_update_decode_poc(%struct.opj_pi_iterator* %p_pi, %struct.opj_tcp* %p_tcp, i32 %p_max_precision, i32 %p_max_res) #0 {
entry:
  %p_pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %p_tcp.addr = alloca %struct.opj_tcp*, align 8
  %p_max_precision.addr = alloca i32, align 4
  %p_max_res.addr = alloca i32, align 4
  %pino = alloca i32, align 4
  %l_bound = alloca i32, align 4
  %l_current_pi = alloca %struct.opj_pi_iterator*, align 8
  %l_current_poc = alloca %struct.opj_poc*, align 8
  store %struct.opj_pi_iterator* %p_pi, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !5
  store %struct.opj_tcp* %p_tcp, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !5
  store i32 %p_max_precision, i32* %p_max_precision.addr, align 4, !tbaa !1
  store i32 %p_max_res, i32* %p_max_res.addr, align 4, !tbaa !1
  %0 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %l_bound to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %3 = bitcast %struct.opj_poc** %l_current_poc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.opj_poc* null, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %4 = load i32, i32* %p_max_res.addr, align 4, !tbaa !1
  %5 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.opj_pi_iterator* %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 995, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @__PRETTY_FUNCTION__.opj_pi_update_decode_poc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.opj_tcp* %7, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 996, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @__PRETTY_FUNCTION__.opj_pi_update_decode_poc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %8, %cond.true.2
  %9 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !5
  %numpocs = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %9, i32 0, i32 6
  %10 = load i32, i32* %numpocs, align 4, !tbaa !26
  %add = add i32 %10, 1
  store i32 %add, i32* %l_bound, align 4, !tbaa !1
  %11 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !5
  store %struct.opj_pi_iterator* %11, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %12 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !5
  %pocs = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %12, i32 0, i32 7
  %arraydecay = getelementptr inbounds [32 x %struct.opj_poc], [32 x %struct.opj_poc]* %pocs, i32 0, i32 0
  store %struct.opj_poc* %arraydecay, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  store i32 0, i32* %pino, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.4
  %13 = load i32, i32* %pino, align 4, !tbaa !1
  %14 = load i32, i32* %l_bound, align 4, !tbaa !1
  %cmp5 = icmp ult i32 %13, %14
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %prg = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %15, i32 0, i32 9
  %16 = load i32, i32* %prg, align 4, !tbaa !17
  %17 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %17, i32 0, i32 11
  %prg6 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc, i32 0, i32 9
  store i32 %16, i32* %prg6, align 4, !tbaa !69
  %18 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %18, i32 0, i32 10
  store i32 1, i32* %first, align 4, !tbaa !70
  %19 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %resno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %19, i32 0, i32 0
  %20 = load i32, i32* %resno0, align 4, !tbaa !71
  %21 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc7 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %21, i32 0, i32 11
  %resno08 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc7, i32 0, i32 0
  store i32 %20, i32* %resno08, align 4, !tbaa !72
  %22 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %compno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %22, i32 0, i32 1
  %23 = load i32, i32* %compno0, align 4, !tbaa !73
  %24 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc9 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %24, i32 0, i32 11
  %compno010 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc9, i32 0, i32 1
  store i32 %23, i32* %compno010, align 4, !tbaa !74
  %25 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc11 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %25, i32 0, i32 11
  %layno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc11, i32 0, i32 5
  store i32 0, i32* %layno0, align 4, !tbaa !75
  %26 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc12 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %26, i32 0, i32 11
  %precno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc12, i32 0, i32 6
  store i32 0, i32* %precno0, align 4, !tbaa !76
  %27 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %resno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %27, i32 0, i32 3
  %28 = load i32, i32* %resno1, align 4, !tbaa !77
  %29 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc13 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %29, i32 0, i32 11
  %resno114 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc13, i32 0, i32 3
  store i32 %28, i32* %resno114, align 4, !tbaa !78
  %30 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %compno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %30, i32 0, i32 4
  %31 = load i32, i32* %compno1, align 4, !tbaa !79
  %32 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc15 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %32, i32 0, i32 11
  %compno116 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc15, i32 0, i32 4
  store i32 %31, i32* %compno116, align 4, !tbaa !80
  %33 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %layno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %33, i32 0, i32 2
  %34 = load i32, i32* %layno1, align 4, !tbaa !81
  %35 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc17 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %35, i32 0, i32 11
  %layno118 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc17, i32 0, i32 2
  store i32 %34, i32* %layno118, align 4, !tbaa !82
  %36 = load i32, i32* %p_max_precision.addr, align 4, !tbaa !1
  %37 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc19 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %37, i32 0, i32 11
  %precno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc19, i32 0, i32 7
  store i32 %36, i32* %precno1, align 4, !tbaa !83
  %38 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %38, i32 1
  store %struct.opj_pi_iterator* %incdec.ptr, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %39 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %incdec.ptr20 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %39, i32 1
  store %struct.opj_poc* %incdec.ptr20, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %pino, align 4, !tbaa !1
  %inc = add i32 %40, 1
  store i32 %inc, i32* %pino, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = bitcast %struct.opj_poc** %l_current_poc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32* %l_bound to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_pi_update_decode_not_poc(%struct.opj_pi_iterator* %p_pi, %struct.opj_tcp* %p_tcp, i32 %p_max_precision, i32 %p_max_res) #0 {
entry:
  %p_pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %p_tcp.addr = alloca %struct.opj_tcp*, align 8
  %p_max_precision.addr = alloca i32, align 4
  %p_max_res.addr = alloca i32, align 4
  %pino = alloca i32, align 4
  %l_bound = alloca i32, align 4
  %l_current_pi = alloca %struct.opj_pi_iterator*, align 8
  store %struct.opj_pi_iterator* %p_pi, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !5
  store %struct.opj_tcp* %p_tcp, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !5
  store i32 %p_max_precision, i32* %p_max_precision.addr, align 4, !tbaa !1
  store i32 %p_max_res, i32* %p_max_res.addr, align 4, !tbaa !1
  %0 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %l_bound to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %3 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.opj_tcp* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 1033, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @__PRETTY_FUNCTION__.opj_pi_update_decode_not_poc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.opj_pi_iterator* %5, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 1034, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @__PRETTY_FUNCTION__.opj_pi_update_decode_not_poc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %6, %cond.true.2
  %7 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !5
  %numpocs = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %7, i32 0, i32 6
  %8 = load i32, i32* %numpocs, align 4, !tbaa !26
  %add = add i32 %8, 1
  store i32 %add, i32* %l_bound, align 4, !tbaa !1
  %9 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %p_pi.addr, align 8, !tbaa !5
  store %struct.opj_pi_iterator* %9, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  store i32 0, i32* %pino, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.4
  %10 = load i32, i32* %pino, align 4, !tbaa !1
  %11 = load i32, i32* %l_bound, align 4, !tbaa !1
  %cmp5 = icmp ult i32 %10, %11
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !5
  %prg = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %12, i32 0, i32 1
  %13 = load i32, i32* %prg, align 4, !tbaa !84
  %14 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %14, i32 0, i32 11
  %prg6 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc, i32 0, i32 9
  store i32 %13, i32* %prg6, align 4, !tbaa !69
  %15 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %15, i32 0, i32 10
  store i32 1, i32* %first, align 4, !tbaa !70
  %16 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc7 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %16, i32 0, i32 11
  %resno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc7, i32 0, i32 0
  store i32 0, i32* %resno0, align 4, !tbaa !72
  %17 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc8 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %17, i32 0, i32 11
  %compno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc8, i32 0, i32 1
  store i32 0, i32* %compno0, align 4, !tbaa !74
  %18 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc9 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %18, i32 0, i32 11
  %layno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc9, i32 0, i32 5
  store i32 0, i32* %layno0, align 4, !tbaa !75
  %19 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc10 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %19, i32 0, i32 11
  %precno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc10, i32 0, i32 6
  store i32 0, i32* %precno0, align 4, !tbaa !76
  %20 = load i32, i32* %p_max_res.addr, align 4, !tbaa !1
  %21 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc11 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %21, i32 0, i32 11
  %resno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc11, i32 0, i32 3
  store i32 %20, i32* %resno1, align 4, !tbaa !78
  %22 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %22, i32 0, i32 12
  %23 = load i32, i32* %numcomps, align 4, !tbaa !44
  %24 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc12 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %24, i32 0, i32 11
  %compno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc12, i32 0, i32 4
  store i32 %23, i32* %compno1, align 4, !tbaa !80
  %25 = load %struct.opj_tcp*, %struct.opj_tcp** %p_tcp.addr, align 8, !tbaa !5
  %numlayers = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %25, i32 0, i32 2
  %26 = load i32, i32* %numlayers, align 4, !tbaa !30
  %27 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc13 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %27, i32 0, i32 11
  %layno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc13, i32 0, i32 2
  store i32 %26, i32* %layno1, align 4, !tbaa !82
  %28 = load i32, i32* %p_max_precision.addr, align 4, !tbaa !1
  %29 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %poc14 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %29, i32 0, i32 11
  %precno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc14, i32 0, i32 7
  store i32 %28, i32* %precno1, align 4, !tbaa !83
  %30 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %30, i32 1
  store %struct.opj_pi_iterator* %incdec.ptr, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %pino, align 4, !tbaa !1
  %inc = add i32 %31, 1
  store i32 %inc, i32* %pino, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast i32* %l_bound to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.opj_pi_iterator* @opj_pi_initialise_encode(%struct.opj_image* %p_image, %struct.opj_cp* %p_cp, i32 %p_tile_no, i32 %p_t2_mode) #0 {
entry:
  %retval = alloca %struct.opj_pi_iterator*, align 8
  %p_image.addr = alloca %struct.opj_image*, align 8
  %p_cp.addr = alloca %struct.opj_cp*, align 8
  %p_tile_no.addr = alloca i32, align 4
  %p_t2_mode.addr = alloca i32, align 4
  %pino = alloca i32, align 4
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %l_tmp_data = alloca i32*, align 8
  %l_tmp_ptr = alloca i32**, align 8
  %l_max_res = alloca i32, align 4
  %l_max_prec = alloca i32, align 4
  %l_tx0 = alloca i32, align 4
  %l_tx1 = alloca i32, align 4
  %l_ty0 = alloca i32, align 4
  %l_ty1 = alloca i32, align 4
  %l_dx_min = alloca i32, align 4
  %l_dy_min = alloca i32, align 4
  %l_bound = alloca i32, align 4
  %l_step_p = alloca i32, align 4
  %l_step_c = alloca i32, align 4
  %l_step_r = alloca i32, align 4
  %l_step_l = alloca i32, align 4
  %l_data_stride = alloca i32, align 4
  %l_pi = alloca %struct.opj_pi_iterator*, align 8
  %l_tcp = alloca %struct.opj_tcp*, align 8
  %l_tccp = alloca %struct.opj_tccp*, align 8
  %l_current_comp = alloca %struct.opj_pi_comp*, align 8
  %l_img_comp = alloca %struct.opj_image_comp*, align 8
  %l_current_pi = alloca %struct.opj_pi_iterator*, align 8
  %l_encoding_value_ptr = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  %l_res = alloca %struct.opj_pi_resolution*, align 8
  %l_res129 = alloca %struct.opj_pi_resolution*, align 8
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  store %struct.opj_cp* %p_cp, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  store i32 %p_tile_no, i32* %p_tile_no.addr, align 4, !tbaa !1
  store i32 %p_t2_mode, i32* %p_t2_mode.addr, align 4, !tbaa !9
  %0 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32** %l_tmp_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32*** %l_tmp_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %l_max_res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %l_max_prec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %l_tx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %l_tx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %l_ty0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %l_ty1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %l_dx_min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %l_dy_min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %l_bound to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %l_step_p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %l_step_c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %l_step_r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %l_step_l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %l_data_stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast %struct.opj_pi_iterator** %l_pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %20 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store %struct.opj_tcp* null, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %21 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store %struct.opj_tccp* null, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %22 = bitcast %struct.opj_pi_comp** %l_current_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store %struct.opj_pi_comp* null, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %23 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %24 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %25 = bitcast i32** %l_encoding_value_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i32* null, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %26 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.opj_cp* %26, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 1378, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @__PRETTY_FUNCTION__.opj_pi_initialise_encode, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %27, %cond.true
  %28 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.opj_image* %28, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 1379, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @__PRETTY_FUNCTION__.opj_pi_initialise_encode, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %29, %cond.true.2
  %30 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %31 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tw = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %31, i32 0, i32 6
  %32 = load i32, i32* %tw, align 4, !tbaa !24
  %33 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %th = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %33, i32 0, i32 7
  %34 = load i32, i32* %th, align 4, !tbaa !25
  %mul = mul i32 %32, %34
  %cmp5 = icmp ult i32 %30, %mul
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 1380, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @__PRETTY_FUNCTION__.opj_pi_initialise_encode, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %35, %cond.true.6
  %36 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %idxprom = zext i32 %36 to i64
  %37 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tcps = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %37, i32 0, i32 17
  %38 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %38, i64 %idxprom
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %39 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %numpocs = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %39, i32 0, i32 6
  %40 = load i32, i32* %numpocs, align 4, !tbaa !26
  %add = add i32 %40, 1
  store i32 %add, i32* %l_bound, align 4, !tbaa !1
  store i32 132, i32* %l_data_stride, align 4, !tbaa !1
  %41 = load i32, i32* %l_data_stride, align 4, !tbaa !1
  %42 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %42, i32 0, i32 4
  %43 = load i32, i32* %numcomps, align 4, !tbaa !28
  %mul9 = mul i32 %41, %43
  %conv = zext i32 %mul9 to i64
  %mul10 = mul i64 %conv, 4
  %cmp11 = icmp uge i64 %mul10, -256
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.8
  br label %cond.end.19

cond.false.14:                                    ; preds = %cond.end.8
  %44 = load i32, i32* %l_data_stride, align 4, !tbaa !1
  %45 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps15 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %45, i32 0, i32 4
  %46 = load i32, i32* %numcomps15, align 4, !tbaa !28
  %mul16 = mul i32 %44, %46
  %conv17 = zext i32 %mul16 to i64
  %mul18 = mul i64 %conv17, 4
  %call = call noalias i8* @malloc(i64 %mul18) #8
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.14, %cond.true.13
  %cond = phi i8* [ null, %cond.true.13 ], [ %call, %cond.false.14 ]
  %47 = bitcast i8* %cond to i32*
  store i32* %47, i32** %l_tmp_data, align 8, !tbaa !5
  %48 = load i32*, i32** %l_tmp_data, align 8, !tbaa !5
  %tobool = icmp ne i32* %48, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.19
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.19
  %49 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps20 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %49, i32 0, i32 4
  %50 = load i32, i32* %numcomps20, align 4, !tbaa !28
  %conv21 = zext i32 %50 to i64
  %mul22 = mul i64 %conv21, 8
  %cmp23 = icmp uge i64 %mul22, -256
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %if.end
  br label %cond.end.31

cond.false.26:                                    ; preds = %if.end
  %51 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps27 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %51, i32 0, i32 4
  %52 = load i32, i32* %numcomps27, align 4, !tbaa !28
  %conv28 = zext i32 %52 to i64
  %mul29 = mul i64 %conv28, 8
  %call30 = call noalias i8* @malloc(i64 %mul29) #8
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.26, %cond.true.25
  %cond32 = phi i8* [ null, %cond.true.25 ], [ %call30, %cond.false.26 ]
  %53 = bitcast i8* %cond32 to i32**
  store i32** %53, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %54 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %tobool33 = icmp ne i32** %54, null
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %cond.end.31
  %55 = load i32*, i32** %l_tmp_data, align 8, !tbaa !5
  %56 = bitcast i32* %55 to i8*
  call void @free(i8* %56) #8
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %cond.end.31
  %57 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %58 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %59 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %call36 = call %struct.opj_pi_iterator* @opj_pi_create(%struct.opj_image* %57, %struct.opj_cp* %58, i32 %59) #6
  store %struct.opj_pi_iterator* %call36, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %60 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %tobool37 = icmp ne %struct.opj_pi_iterator* %60, null
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.35
  %61 = load i32*, i32** %l_tmp_data, align 8, !tbaa !5
  %62 = bitcast i32* %61 to i8*
  call void @free(i8* %62) #8
  %63 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %64 = bitcast i32** %63 to i8*
  call void @free(i8* %64) #8
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.35
  %65 = load i32*, i32** %l_tmp_data, align 8, !tbaa !5
  store i32* %65, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.39
  %66 = load i32, i32* %compno, align 4, !tbaa !1
  %67 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps40 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %67, i32 0, i32 4
  %68 = load i32, i32* %numcomps40, align 4, !tbaa !28
  %cmp41 = icmp ult i32 %66, %68
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %70 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom43 = zext i32 %70 to i64
  %71 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %arrayidx44 = getelementptr inbounds i32*, i32** %71, i64 %idxprom43
  store i32* %69, i32** %arrayidx44, align 8, !tbaa !5
  %72 = load i32, i32* %l_data_stride, align 4, !tbaa !1
  %73 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %idx.ext = zext i32 %72 to i64
  %add.ptr = getelementptr inbounds i32, i32* %73, i64 %idx.ext
  store i32* %add.ptr, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i32, i32* %compno, align 4, !tbaa !1
  %inc = add i32 %74, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %75 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %76 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %77 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %78 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  call void @opj_get_all_encoding_parameters(%struct.opj_image* %75, %struct.opj_cp* %76, i32 %77, i32* %l_tx0, i32* %l_tx1, i32* %l_ty0, i32* %l_ty1, i32* %l_dx_min, i32* %l_dy_min, i32* %l_max_prec, i32* %l_max_res, i32** %78) #6
  store i32 1, i32* %l_step_p, align 4, !tbaa !1
  %79 = load i32, i32* %l_max_prec, align 4, !tbaa !1
  %80 = load i32, i32* %l_step_p, align 4, !tbaa !1
  %mul45 = mul i32 %79, %80
  store i32 %mul45, i32* %l_step_c, align 4, !tbaa !1
  %81 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps46 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %81, i32 0, i32 4
  %82 = load i32, i32* %numcomps46, align 4, !tbaa !28
  %83 = load i32, i32* %l_step_c, align 4, !tbaa !1
  %mul47 = mul i32 %82, %83
  store i32 %mul47, i32* %l_step_r, align 4, !tbaa !1
  %84 = load i32, i32* %l_max_res, align 4, !tbaa !1
  %85 = load i32, i32* %l_step_r, align 4, !tbaa !1
  %mul48 = mul i32 %84, %85
  store i32 %mul48, i32* %l_step_l, align 4, !tbaa !1
  %86 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %m_specific_param = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %86, i32 0, i32 18
  %m_enc = bitcast %union.anon* %m_specific_param to %struct.opj_encoding_param*
  %m_tp_on = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc, i32 0, i32 5
  %bf.load = load i8, i8* %m_tp_on, align 1
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %conv49 = trunc i32 %bf.cast to i8
  %87 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %tp_on = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %87, i32 0, i32 0
  store i8 %conv49, i8* %tp_on, align 1, !tbaa !85
  %88 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  store %struct.opj_pi_iterator* %88, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %89 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %numlayers = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %89, i32 0, i32 2
  %90 = load i32, i32* %numlayers, align 4, !tbaa !30
  %91 = load i32, i32* %l_step_l, align 4, !tbaa !1
  %mul50 = mul i32 %90, %91
  %conv51 = zext i32 %mul50 to i64
  %cmp52 = icmp ne i64 %conv51, 0
  br i1 %cmp52, label %land.lhs.true, label %cond.false.60

land.lhs.true:                                    ; preds = %for.end
  %92 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %numlayers54 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %92, i32 0, i32 2
  %93 = load i32, i32* %numlayers54, align 4, !tbaa !30
  %94 = load i32, i32* %l_step_l, align 4, !tbaa !1
  %mul55 = mul i32 %93, %94
  %conv56 = zext i32 %mul55 to i64
  %cmp57 = icmp uge i64 %conv56, 9223372036854775680
  br i1 %cmp57, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %land.lhs.true
  br label %cond.end.65

cond.false.60:                                    ; preds = %land.lhs.true, %for.end
  %95 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %numlayers61 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %95, i32 0, i32 2
  %96 = load i32, i32* %numlayers61, align 4, !tbaa !30
  %97 = load i32, i32* %l_step_l, align 4, !tbaa !1
  %mul62 = mul i32 %96, %97
  %conv63 = zext i32 %mul62 to i64
  %call64 = call noalias i8* @calloc(i64 %conv63, i64 2) #8
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.60, %cond.true.59
  %cond66 = phi i8* [ null, %cond.true.59 ], [ %call64, %cond.false.60 ]
  %98 = bitcast i8* %cond66 to i16*
  %99 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %include = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %99, i32 0, i32 1
  store i16* %98, i16** %include, align 8, !tbaa !31
  %100 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %include67 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %100, i32 0, i32 1
  %101 = load i16*, i16** %include67, align 8, !tbaa !31
  %tobool68 = icmp ne i16* %101, null
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %cond.end.65
  %102 = load i32*, i32** %l_tmp_data, align 8, !tbaa !5
  %103 = bitcast i32* %102 to i8*
  call void @free(i8* %103) #8
  %104 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %105 = bitcast i32** %104 to i8*
  call void @free(i8* %105) #8
  %106 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  %107 = load i32, i32* %l_bound, align 4, !tbaa !1
  call void @opj_pi_destroy(%struct.opj_pi_iterator* %106, i32 %107) #6
  store %struct.opj_pi_iterator* null, %struct.opj_pi_iterator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %cond.end.65
  %108 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %include71 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %108, i32 0, i32 1
  %109 = load i16*, i16** %include71, align 8, !tbaa !31
  %110 = bitcast i16* %109 to i8*
  %111 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %numlayers72 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %111, i32 0, i32 2
  %112 = load i32, i32* %numlayers72, align 4, !tbaa !30
  %113 = load i32, i32* %l_step_l, align 4, !tbaa !1
  %mul73 = mul i32 %112, %113
  %conv74 = zext i32 %mul73 to i64
  %mul75 = mul i64 %conv74, 2
  %call76 = call i8* @memset(i8* %110, i32 0, i64 %mul75) #8
  %114 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %114, i32 0, i32 13
  %115 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps, align 8, !tbaa !33
  store %struct.opj_pi_comp* %115, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %116 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %comps77 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %116, i32 0, i32 6
  %117 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps77, align 8, !tbaa !34
  store %struct.opj_image_comp* %117, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %118 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %118, i32 0, i32 13
  %119 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !35
  store %struct.opj_tccp* %119, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %120 = load i32, i32* %l_tx0, align 4, !tbaa !1
  %121 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %tx0 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %121, i32 0, i32 14
  store i32 %120, i32* %tx0, align 4, !tbaa !36
  %122 = load i32, i32* %l_ty0, align 4, !tbaa !1
  %123 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %ty0 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %123, i32 0, i32 15
  store i32 %122, i32* %ty0, align 4, !tbaa !37
  %124 = load i32, i32* %l_tx1, align 4, !tbaa !1
  %125 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %tx1 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %125, i32 0, i32 16
  store i32 %124, i32* %tx1, align 4, !tbaa !38
  %126 = load i32, i32* %l_ty1, align 4, !tbaa !1
  %127 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %ty1 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %127, i32 0, i32 17
  store i32 %126, i32* %ty1, align 4, !tbaa !39
  %128 = load i32, i32* %l_dx_min, align 4, !tbaa !1
  %129 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %dx = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %129, i32 0, i32 20
  store i32 %128, i32* %dx, align 4, !tbaa !86
  %130 = load i32, i32* %l_dy_min, align 4, !tbaa !1
  %131 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %dy = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %131, i32 0, i32 21
  store i32 %130, i32* %dy, align 4, !tbaa !87
  %132 = load i32, i32* %l_step_p, align 4, !tbaa !1
  %133 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_p = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %133, i32 0, i32 5
  store i32 %132, i32* %step_p, align 4, !tbaa !40
  %134 = load i32, i32* %l_step_c, align 4, !tbaa !1
  %135 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_c = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %135, i32 0, i32 4
  store i32 %134, i32* %step_c, align 4, !tbaa !41
  %136 = load i32, i32* %l_step_r, align 4, !tbaa !1
  %137 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_r = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %137, i32 0, i32 3
  store i32 %136, i32* %step_r, align 4, !tbaa !42
  %138 = load i32, i32* %l_step_l, align 4, !tbaa !1
  %139 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_l = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %139, i32 0, i32 2
  store i32 %138, i32* %step_l, align 4, !tbaa !43
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.103, %if.end.70
  %140 = load i32, i32* %compno, align 4, !tbaa !1
  %141 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %numcomps79 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %141, i32 0, i32 12
  %142 = load i32, i32* %numcomps79, align 4, !tbaa !44
  %cmp80 = icmp ult i32 %140, %142
  br i1 %cmp80, label %for.body.82, label %for.end.105

for.body.82:                                      ; preds = %for.cond.78
  %143 = bitcast %struct.opj_pi_resolution** %l_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #1
  %144 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %144, i32 0, i32 3
  %145 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions, align 8, !tbaa !45
  store %struct.opj_pi_resolution* %145, %struct.opj_pi_resolution** %l_res, align 8, !tbaa !5
  %146 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom83 = zext i32 %146 to i64
  %147 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %arrayidx84 = getelementptr inbounds i32*, i32** %147, i64 %idxprom83
  %148 = load i32*, i32** %arrayidx84, align 8, !tbaa !5
  store i32* %148, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %149 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dx85 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %149, i32 0, i32 0
  %150 = load i32, i32* %dx85, align 4, !tbaa !47
  %151 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %dx86 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %151, i32 0, i32 0
  store i32 %150, i32* %dx86, align 4, !tbaa !50
  %152 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dy87 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %152, i32 0, i32 1
  %153 = load i32, i32* %dy87, align 4, !tbaa !51
  %154 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %dy88 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %154, i32 0, i32 1
  store i32 %153, i32* %dy88, align 4, !tbaa !52
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.97, %for.body.82
  %155 = load i32, i32* %resno, align 4, !tbaa !1
  %156 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %156, i32 0, i32 2
  %157 = load i32, i32* %numresolutions, align 4, !tbaa !53
  %cmp90 = icmp ult i32 %155, %157
  br i1 %cmp90, label %for.body.92, label %for.end.99

for.body.92:                                      ; preds = %for.cond.89
  %158 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %incdec.ptr, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %159 = load i32, i32* %158, align 4, !tbaa !1
  %160 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res, align 8, !tbaa !5
  %pdx = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %160, i32 0, i32 0
  store i32 %159, i32* %pdx, align 4, !tbaa !54
  %161 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr93 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %incdec.ptr93, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %162 = load i32, i32* %161, align 4, !tbaa !1
  %163 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res, align 8, !tbaa !5
  %pdy = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %163, i32 0, i32 1
  store i32 %162, i32* %pdy, align 4, !tbaa !56
  %164 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr94 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %incdec.ptr94, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %165 = load i32, i32* %164, align 4, !tbaa !1
  %166 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res, align 8, !tbaa !5
  %pw = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %166, i32 0, i32 2
  store i32 %165, i32* %pw, align 4, !tbaa !57
  %167 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr95 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %incdec.ptr95, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %168 = load i32, i32* %167, align 4, !tbaa !1
  %169 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %169, i32 0, i32 3
  store i32 %168, i32* %ph, align 4, !tbaa !58
  %170 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res, align 8, !tbaa !5
  %incdec.ptr96 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %170, i32 1
  store %struct.opj_pi_resolution* %incdec.ptr96, %struct.opj_pi_resolution** %l_res, align 8, !tbaa !5
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.92
  %171 = load i32, i32* %resno, align 4, !tbaa !1
  %inc98 = add i32 %171, 1
  store i32 %inc98, i32* %resno, align 4, !tbaa !1
  br label %for.cond.89

for.end.99:                                       ; preds = %for.cond.89
  %172 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %incdec.ptr100 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %172, i32 1
  store %struct.opj_pi_comp* %incdec.ptr100, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %173 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %incdec.ptr101 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %173, i32 1
  store %struct.opj_image_comp* %incdec.ptr101, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %174 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %incdec.ptr102 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %174, i32 1
  store %struct.opj_tccp* %incdec.ptr102, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %175 = bitcast %struct.opj_pi_resolution** %l_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.end.99
  %176 = load i32, i32* %compno, align 4, !tbaa !1
  %inc104 = add i32 %176, 1
  store i32 %inc104, i32* %compno, align 4, !tbaa !1
  br label %for.cond.78

for.end.105:                                      ; preds = %for.cond.78
  %177 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %incdec.ptr106 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %177, i32 1
  store %struct.opj_pi_iterator* %incdec.ptr106, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  store i32 1, i32* %pino, align 4, !tbaa !1
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.164, %for.end.105
  %178 = load i32, i32* %pino, align 4, !tbaa !1
  %179 = load i32, i32* %l_bound, align 4, !tbaa !1
  %cmp108 = icmp ult i32 %178, %179
  br i1 %cmp108, label %for.body.110, label %for.end.166

for.body.110:                                     ; preds = %for.cond.107
  %180 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %comps111 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %180, i32 0, i32 13
  %181 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps111, align 8, !tbaa !33
  store %struct.opj_pi_comp* %181, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %182 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %comps112 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %182, i32 0, i32 6
  %183 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps112, align 8, !tbaa !34
  store %struct.opj_image_comp* %183, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %184 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %tccps113 = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %184, i32 0, i32 13
  %185 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps113, align 8, !tbaa !35
  store %struct.opj_tccp* %185, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %186 = load i32, i32* %l_tx0, align 4, !tbaa !1
  %187 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %tx0114 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %187, i32 0, i32 14
  store i32 %186, i32* %tx0114, align 4, !tbaa !36
  %188 = load i32, i32* %l_ty0, align 4, !tbaa !1
  %189 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %ty0115 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %189, i32 0, i32 15
  store i32 %188, i32* %ty0115, align 4, !tbaa !37
  %190 = load i32, i32* %l_tx1, align 4, !tbaa !1
  %191 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %tx1116 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %191, i32 0, i32 16
  store i32 %190, i32* %tx1116, align 4, !tbaa !38
  %192 = load i32, i32* %l_ty1, align 4, !tbaa !1
  %193 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %ty1117 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %193, i32 0, i32 17
  store i32 %192, i32* %ty1117, align 4, !tbaa !39
  %194 = load i32, i32* %l_dx_min, align 4, !tbaa !1
  %195 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %dx118 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %195, i32 0, i32 20
  store i32 %194, i32* %dx118, align 4, !tbaa !86
  %196 = load i32, i32* %l_dy_min, align 4, !tbaa !1
  %197 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %dy119 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %197, i32 0, i32 21
  store i32 %196, i32* %dy119, align 4, !tbaa !87
  %198 = load i32, i32* %l_step_p, align 4, !tbaa !1
  %199 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_p120 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %199, i32 0, i32 5
  store i32 %198, i32* %step_p120, align 4, !tbaa !40
  %200 = load i32, i32* %l_step_c, align 4, !tbaa !1
  %201 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_c121 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %201, i32 0, i32 4
  store i32 %200, i32* %step_c121, align 4, !tbaa !41
  %202 = load i32, i32* %l_step_r, align 4, !tbaa !1
  %203 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_r122 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %203, i32 0, i32 3
  store i32 %202, i32* %step_r122, align 4, !tbaa !42
  %204 = load i32, i32* %l_step_l, align 4, !tbaa !1
  %205 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %step_l123 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %205, i32 0, i32 2
  store i32 %204, i32* %step_l123, align 4, !tbaa !43
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.157, %for.body.110
  %206 = load i32, i32* %compno, align 4, !tbaa !1
  %207 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %numcomps125 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %207, i32 0, i32 12
  %208 = load i32, i32* %numcomps125, align 4, !tbaa !44
  %cmp126 = icmp ult i32 %206, %208
  br i1 %cmp126, label %for.body.128, label %for.end.159

for.body.128:                                     ; preds = %for.cond.124
  %209 = bitcast %struct.opj_pi_resolution** %l_res129 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %209) #1
  %210 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %resolutions130 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %210, i32 0, i32 3
  %211 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions130, align 8, !tbaa !45
  store %struct.opj_pi_resolution* %211, %struct.opj_pi_resolution** %l_res129, align 8, !tbaa !5
  %212 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom131 = zext i32 %212 to i64
  %213 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %arrayidx132 = getelementptr inbounds i32*, i32** %213, i64 %idxprom131
  %214 = load i32*, i32** %arrayidx132, align 8, !tbaa !5
  store i32* %214, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %215 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dx133 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %215, i32 0, i32 0
  %216 = load i32, i32* %dx133, align 4, !tbaa !47
  %217 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %dx134 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %217, i32 0, i32 0
  store i32 %216, i32* %dx134, align 4, !tbaa !50
  %218 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dy135 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %218, i32 0, i32 1
  %219 = load i32, i32* %dy135, align 4, !tbaa !51
  %220 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %dy136 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %220, i32 0, i32 1
  store i32 %219, i32* %dy136, align 4, !tbaa !52
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.151, %for.body.128
  %221 = load i32, i32* %resno, align 4, !tbaa !1
  %222 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %numresolutions138 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %222, i32 0, i32 2
  %223 = load i32, i32* %numresolutions138, align 4, !tbaa !53
  %cmp139 = icmp ult i32 %221, %223
  br i1 %cmp139, label %for.body.141, label %for.end.153

for.body.141:                                     ; preds = %for.cond.137
  %224 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr142 = getelementptr inbounds i32, i32* %224, i32 1
  store i32* %incdec.ptr142, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %225 = load i32, i32* %224, align 4, !tbaa !1
  %226 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res129, align 8, !tbaa !5
  %pdx143 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %226, i32 0, i32 0
  store i32 %225, i32* %pdx143, align 4, !tbaa !54
  %227 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr144 = getelementptr inbounds i32, i32* %227, i32 1
  store i32* %incdec.ptr144, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %228 = load i32, i32* %227, align 4, !tbaa !1
  %229 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res129, align 8, !tbaa !5
  %pdy145 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %229, i32 0, i32 1
  store i32 %228, i32* %pdy145, align 4, !tbaa !56
  %230 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr146 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %incdec.ptr146, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %231 = load i32, i32* %230, align 4, !tbaa !1
  %232 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res129, align 8, !tbaa !5
  %pw147 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %232, i32 0, i32 2
  store i32 %231, i32* %pw147, align 4, !tbaa !57
  %233 = load i32*, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %incdec.ptr148 = getelementptr inbounds i32, i32* %233, i32 1
  store i32* %incdec.ptr148, i32** %l_encoding_value_ptr, align 8, !tbaa !5
  %234 = load i32, i32* %233, align 4, !tbaa !1
  %235 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res129, align 8, !tbaa !5
  %ph149 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %235, i32 0, i32 3
  store i32 %234, i32* %ph149, align 4, !tbaa !58
  %236 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %l_res129, align 8, !tbaa !5
  %incdec.ptr150 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %236, i32 1
  store %struct.opj_pi_resolution* %incdec.ptr150, %struct.opj_pi_resolution** %l_res129, align 8, !tbaa !5
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.body.141
  %237 = load i32, i32* %resno, align 4, !tbaa !1
  %inc152 = add i32 %237, 1
  store i32 %inc152, i32* %resno, align 4, !tbaa !1
  br label %for.cond.137

for.end.153:                                      ; preds = %for.cond.137
  %238 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %incdec.ptr154 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %238, i32 1
  store %struct.opj_pi_comp* %incdec.ptr154, %struct.opj_pi_comp** %l_current_comp, align 8, !tbaa !5
  %239 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %incdec.ptr155 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %239, i32 1
  store %struct.opj_image_comp* %incdec.ptr155, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %240 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %incdec.ptr156 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %240, i32 1
  store %struct.opj_tccp* %incdec.ptr156, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %241 = bitcast %struct.opj_pi_resolution** %l_res129 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #1
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.end.153
  %242 = load i32, i32* %compno, align 4, !tbaa !1
  %inc158 = add i32 %242, 1
  store i32 %inc158, i32* %compno, align 4, !tbaa !1
  br label %for.cond.124

for.end.159:                                      ; preds = %for.cond.124
  %243 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %add.ptr160 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %243, i64 -1
  %include161 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %add.ptr160, i32 0, i32 1
  %244 = load i16*, i16** %include161, align 8, !tbaa !31
  %245 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %include162 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %245, i32 0, i32 1
  store i16* %244, i16** %include162, align 8, !tbaa !31
  %246 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  %incdec.ptr163 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %246, i32 1
  store %struct.opj_pi_iterator* %incdec.ptr163, %struct.opj_pi_iterator** %l_current_pi, align 8, !tbaa !5
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.end.159
  %247 = load i32, i32* %pino, align 4, !tbaa !1
  %inc165 = add i32 %247, 1
  store i32 %inc165, i32* %pino, align 4, !tbaa !1
  br label %for.cond.107

for.end.166:                                      ; preds = %for.cond.107
  %248 = load i32*, i32** %l_tmp_data, align 8, !tbaa !5
  %249 = bitcast i32* %248 to i8*
  call void @free(i8* %249) #8
  store i32* null, i32** %l_tmp_data, align 8, !tbaa !5
  %250 = load i32**, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %251 = bitcast i32** %250 to i8*
  call void @free(i8* %251) #8
  store i32** null, i32*** %l_tmp_ptr, align 8, !tbaa !5
  %252 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %POC = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %252, i32 0, i32 26
  %bf.load167 = load i8, i8* %POC, align 8
  %bf.lshr168 = lshr i8 %bf.load167, 1
  %bf.clear169 = and i8 %bf.lshr168, 1
  %bf.cast170 = zext i8 %bf.clear169 to i32
  %tobool171 = icmp ne i32 %bf.cast170, 0
  br i1 %tobool171, label %land.lhs.true.172, label %if.else

land.lhs.true.172:                                ; preds = %for.end.166
  %253 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %m_specific_param173 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %253, i32 0, i32 18
  %m_enc174 = bitcast %union.anon* %m_specific_param173 to %struct.opj_encoding_param*
  %m_cinema = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc174, i32 0, i32 0
  %254 = load i32, i32* %m_cinema, align 4, !tbaa !88
  %tobool175 = icmp ne i32 %254, 0
  br i1 %tobool175, label %if.then.178, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.172
  %255 = load i32, i32* %p_t2_mode.addr, align 4, !tbaa !9
  %cmp176 = icmp eq i32 %255, 1
  br i1 %cmp176, label %if.then.178, label %if.else

if.then.178:                                      ; preds = %lor.lhs.false, %land.lhs.true.172
  %256 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %257 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %258 = load i32, i32* %l_tx0, align 4, !tbaa !1
  %259 = load i32, i32* %l_tx1, align 4, !tbaa !1
  %260 = load i32, i32* %l_ty0, align 4, !tbaa !1
  %261 = load i32, i32* %l_ty1, align 4, !tbaa !1
  %262 = load i32, i32* %l_max_prec, align 4, !tbaa !1
  %263 = load i32, i32* %l_max_res, align 4, !tbaa !1
  %264 = load i32, i32* %l_dx_min, align 4, !tbaa !1
  %265 = load i32, i32* %l_dy_min, align 4, !tbaa !1
  call void @opj_pi_update_encode_poc_and_final(%struct.opj_cp* %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %265) #6
  br label %if.end.180

if.else:                                          ; preds = %lor.lhs.false, %for.end.166
  %266 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %267 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps179 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %267, i32 0, i32 4
  %268 = load i32, i32* %numcomps179, align 4, !tbaa !28
  %269 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %270 = load i32, i32* %l_tx0, align 4, !tbaa !1
  %271 = load i32, i32* %l_tx1, align 4, !tbaa !1
  %272 = load i32, i32* %l_ty0, align 4, !tbaa !1
  %273 = load i32, i32* %l_ty1, align 4, !tbaa !1
  %274 = load i32, i32* %l_max_prec, align 4, !tbaa !1
  %275 = load i32, i32* %l_max_res, align 4, !tbaa !1
  %276 = load i32, i32* %l_dx_min, align 4, !tbaa !1
  %277 = load i32, i32* %l_dy_min, align 4, !tbaa !1
  call void @opj_pi_update_encode_not_poc(%struct.opj_cp* %266, i32 %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276, i32 %277) #6
  br label %if.end.180

if.end.180:                                       ; preds = %if.else, %if.then.178
  %278 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %l_pi, align 8, !tbaa !5
  store %struct.opj_pi_iterator* %278, %struct.opj_pi_iterator** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.180, %if.then.69, %if.then.38, %if.then.34, %if.then
  %279 = bitcast i32** %l_encoding_value_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  %280 = bitcast %struct.opj_pi_iterator** %l_current_pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #1
  %281 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #1
  %282 = bitcast %struct.opj_pi_comp** %l_current_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #1
  %283 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #1
  %284 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %284) #1
  %285 = bitcast %struct.opj_pi_iterator** %l_pi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %285) #1
  %286 = bitcast i32* %l_data_stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #1
  %287 = bitcast i32* %l_step_l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #1
  %288 = bitcast i32* %l_step_r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
  %289 = bitcast i32* %l_step_c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast i32* %l_step_p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i32* %l_bound to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast i32* %l_dy_min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %l_dx_min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i32* %l_ty1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast i32* %l_ty0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i32* %l_tx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32* %l_tx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i32* %l_max_prec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i32* %l_max_res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast i32*** %l_tmp_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #1
  %301 = bitcast i32** %l_tmp_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #1
  %302 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %304 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #1
  %305 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %retval
  ret %struct.opj_pi_iterator* %305
}

; Function Attrs: nounwind uwtable
define internal void @opj_pi_update_encode_poc_and_final(%struct.opj_cp* %p_cp, i32 %p_tileno, i32 %p_tx0, i32 %p_tx1, i32 %p_ty0, i32 %p_ty1, i32 %p_max_prec, i32 %p_max_res, i32 %p_dx_min, i32 %p_dy_min) #0 {
entry:
  %p_cp.addr = alloca %struct.opj_cp*, align 8
  %p_tileno.addr = alloca i32, align 4
  %p_tx0.addr = alloca i32, align 4
  %p_tx1.addr = alloca i32, align 4
  %p_ty0.addr = alloca i32, align 4
  %p_ty1.addr = alloca i32, align 4
  %p_max_prec.addr = alloca i32, align 4
  %p_max_res.addr = alloca i32, align 4
  %p_dx_min.addr = alloca i32, align 4
  %p_dy_min.addr = alloca i32, align 4
  %pino = alloca i32, align 4
  %l_tcp = alloca %struct.opj_tcp*, align 8
  %l_current_poc = alloca %struct.opj_poc*, align 8
  %l_poc_bound = alloca i32, align 4
  store %struct.opj_cp* %p_cp, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  store i32 %p_tileno, i32* %p_tileno.addr, align 4, !tbaa !1
  store i32 %p_tx0, i32* %p_tx0.addr, align 4, !tbaa !1
  store i32 %p_tx1, i32* %p_tx1.addr, align 4, !tbaa !1
  store i32 %p_ty0, i32* %p_ty0.addr, align 4, !tbaa !1
  store i32 %p_ty1, i32* %p_ty1.addr, align 4, !tbaa !1
  store i32 %p_max_prec, i32* %p_max_prec.addr, align 4, !tbaa !1
  store i32 %p_max_res, i32* %p_max_res.addr, align 4, !tbaa !1
  store i32 %p_dx_min, i32* %p_dx_min.addr, align 4, !tbaa !1
  store i32 %p_dy_min, i32* %p_dy_min.addr, align 4, !tbaa !1
  %0 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.opj_tcp* null, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %2 = bitcast %struct.opj_poc** %l_current_poc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.opj_poc* null, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %3 = bitcast i32* %l_poc_bound to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %p_max_res.addr, align 4, !tbaa !1
  %5 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.opj_cp* %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 869, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @__PRETTY_FUNCTION__.opj_pi_update_encode_poc_and_final, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load i32, i32* %p_tileno.addr, align 4, !tbaa !1
  %8 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tw = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %8, i32 0, i32 6
  %9 = load i32, i32* %tw, align 4, !tbaa !24
  %10 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %th = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %10, i32 0, i32 7
  %11 = load i32, i32* %th, align 4, !tbaa !25
  %mul = mul i32 %9, %11
  %cmp1 = icmp ult i32 %7, %mul
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 870, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @__PRETTY_FUNCTION__.opj_pi_update_encode_poc_and_final, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %12, %cond.true.2
  %13 = load i32, i32* %p_tileno.addr, align 4, !tbaa !1
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tcps = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %14, i32 0, i32 17
  %15 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %15, i64 %idxprom
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %16 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %numpocs = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %16, i32 0, i32 6
  %17 = load i32, i32* %numpocs, align 4, !tbaa !26
  %add = add i32 %17, 1
  store i32 %add, i32* %l_poc_bound, align 4, !tbaa !1
  %18 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %pocs = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %18, i32 0, i32 7
  %arraydecay = getelementptr inbounds [32 x %struct.opj_poc], [32 x %struct.opj_poc]* %pocs, i32 0, i32 0
  store %struct.opj_poc* %arraydecay, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %19 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %compno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %19, i32 0, i32 1
  %20 = load i32, i32* %compno0, align 4, !tbaa !73
  %21 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %compS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %21, i32 0, i32 18
  store i32 %20, i32* %compS, align 4, !tbaa !90
  %22 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %compno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %22, i32 0, i32 4
  %23 = load i32, i32* %compno1, align 4, !tbaa !79
  %24 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %compE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %24, i32 0, i32 22
  store i32 %23, i32* %compE, align 4, !tbaa !14
  %25 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %resno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %25, i32 0, i32 0
  %26 = load i32, i32* %resno0, align 4, !tbaa !71
  %27 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %resS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %27, i32 0, i32 17
  store i32 %26, i32* %resS, align 4, !tbaa !91
  %28 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %resno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %28, i32 0, i32 3
  %29 = load i32, i32* %resno1, align 4, !tbaa !77
  %30 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %resE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %30, i32 0, i32 21
  store i32 %29, i32* %resE, align 4, !tbaa !12
  %31 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %layno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %31, i32 0, i32 2
  %32 = load i32, i32* %layno1, align 4, !tbaa !81
  %33 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %layE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %33, i32 0, i32 20
  store i32 %32, i32* %layE, align 4, !tbaa !16
  %34 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %layS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %34, i32 0, i32 16
  store i32 0, i32* %layS, align 4, !tbaa !92
  %35 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %prg1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %35, i32 0, i32 8
  %36 = load i32, i32* %prg1, align 4, !tbaa !93
  %37 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %prg = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %37, i32 0, i32 9
  store i32 %36, i32* %prg, align 4, !tbaa !17
  %38 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %prcS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %38, i32 0, i32 19
  store i32 0, i32* %prcS, align 4, !tbaa !94
  %39 = load i32, i32* %p_max_prec.addr, align 4, !tbaa !1
  %40 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %prcE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %40, i32 0, i32 23
  store i32 %39, i32* %prcE, align 4, !tbaa !19
  %41 = load i32, i32* %p_tx0.addr, align 4, !tbaa !1
  %42 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %txS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %42, i32 0, i32 24
  store i32 %41, i32* %txS, align 4, !tbaa !95
  %43 = load i32, i32* %p_tx1.addr, align 4, !tbaa !1
  %44 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %txE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %44, i32 0, i32 25
  store i32 %43, i32* %txE, align 4, !tbaa !21
  %45 = load i32, i32* %p_ty0.addr, align 4, !tbaa !1
  %46 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %tyS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %46, i32 0, i32 26
  store i32 %45, i32* %tyS, align 4, !tbaa !96
  %47 = load i32, i32* %p_ty1.addr, align 4, !tbaa !1
  %48 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %tyE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %48, i32 0, i32 27
  store i32 %47, i32* %tyE, align 4, !tbaa !23
  %49 = load i32, i32* %p_dx_min.addr, align 4, !tbaa !1
  %50 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %dx = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %50, i32 0, i32 28
  store i32 %49, i32* %dx, align 4, !tbaa !97
  %51 = load i32, i32* %p_dy_min.addr, align 4, !tbaa !1
  %52 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %dy = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %52, i32 0, i32 29
  store i32 %51, i32* %dy, align 4, !tbaa !98
  %53 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %53, i32 1
  store %struct.opj_poc* %incdec.ptr, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  store i32 1, i32* %pino, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.4
  %54 = load i32, i32* %pino, align 4, !tbaa !1
  %55 = load i32, i32* %l_poc_bound, align 4, !tbaa !1
  %cmp5 = icmp ult i32 %54, %55
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %compno06 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %56, i32 0, i32 1
  %57 = load i32, i32* %compno06, align 4, !tbaa !73
  %58 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %compS7 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %58, i32 0, i32 18
  store i32 %57, i32* %compS7, align 4, !tbaa !90
  %59 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %compno18 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %59, i32 0, i32 4
  %60 = load i32, i32* %compno18, align 4, !tbaa !79
  %61 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %compE9 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %61, i32 0, i32 22
  store i32 %60, i32* %compE9, align 4, !tbaa !14
  %62 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %resno010 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %62, i32 0, i32 0
  %63 = load i32, i32* %resno010, align 4, !tbaa !71
  %64 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %resS11 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %64, i32 0, i32 17
  store i32 %63, i32* %resS11, align 4, !tbaa !91
  %65 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %resno112 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %65, i32 0, i32 3
  %66 = load i32, i32* %resno112, align 4, !tbaa !77
  %67 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %resE13 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %67, i32 0, i32 21
  store i32 %66, i32* %resE13, align 4, !tbaa !12
  %68 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %layno114 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %68, i32 0, i32 2
  %69 = load i32, i32* %layno114, align 4, !tbaa !81
  %70 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %layE15 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %70, i32 0, i32 20
  store i32 %69, i32* %layE15, align 4, !tbaa !16
  %71 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %prg116 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %71, i32 0, i32 8
  %72 = load i32, i32* %prg116, align 4, !tbaa !93
  %73 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %prg17 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %73, i32 0, i32 9
  store i32 %72, i32* %prg17, align 4, !tbaa !17
  %74 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %prcS18 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %74, i32 0, i32 19
  store i32 0, i32* %prcS18, align 4, !tbaa !94
  %75 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %layE19 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %75, i32 0, i32 20
  %76 = load i32, i32* %layE19, align 4, !tbaa !16
  %77 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %77, i64 -1
  %layE20 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %add.ptr, i32 0, i32 20
  %78 = load i32, i32* %layE20, align 4, !tbaa !16
  %cmp21 = icmp ugt i32 %76, %78
  br i1 %cmp21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %for.body
  %79 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %layE23 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %79, i32 0, i32 20
  %80 = load i32, i32* %layE23, align 4, !tbaa !16
  br label %cond.end.25

cond.false.24:                                    ; preds = %for.body
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.22
  %cond = phi i32 [ %80, %cond.true.22 ], [ 0, %cond.false.24 ]
  %81 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %layS26 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %81, i32 0, i32 16
  store i32 %cond, i32* %layS26, align 4, !tbaa !92
  %82 = load i32, i32* %p_max_prec.addr, align 4, !tbaa !1
  %83 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %prcE27 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %83, i32 0, i32 23
  store i32 %82, i32* %prcE27, align 4, !tbaa !19
  %84 = load i32, i32* %p_tx0.addr, align 4, !tbaa !1
  %85 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %txS28 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %85, i32 0, i32 24
  store i32 %84, i32* %txS28, align 4, !tbaa !95
  %86 = load i32, i32* %p_tx1.addr, align 4, !tbaa !1
  %87 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %txE29 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %87, i32 0, i32 25
  store i32 %86, i32* %txE29, align 4, !tbaa !21
  %88 = load i32, i32* %p_ty0.addr, align 4, !tbaa !1
  %89 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %tyS30 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %89, i32 0, i32 26
  store i32 %88, i32* %tyS30, align 4, !tbaa !96
  %90 = load i32, i32* %p_ty1.addr, align 4, !tbaa !1
  %91 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %tyE31 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %91, i32 0, i32 27
  store i32 %90, i32* %tyE31, align 4, !tbaa !23
  %92 = load i32, i32* %p_dx_min.addr, align 4, !tbaa !1
  %93 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %dx32 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %93, i32 0, i32 28
  store i32 %92, i32* %dx32, align 4, !tbaa !97
  %94 = load i32, i32* %p_dy_min.addr, align 4, !tbaa !1
  %95 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %dy33 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %95, i32 0, i32 29
  store i32 %94, i32* %dy33, align 4, !tbaa !98
  %96 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %incdec.ptr34 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %96, i32 1
  store %struct.opj_poc* %incdec.ptr34, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %cond.end.25
  %97 = load i32, i32* %pino, align 4, !tbaa !1
  %inc = add i32 %97, 1
  store i32 %inc, i32* %pino, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %98 = bitcast i32* %l_poc_bound to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast %struct.opj_poc** %l_current_poc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_pi_update_encode_not_poc(%struct.opj_cp* %p_cp, i32 %p_num_comps, i32 %p_tileno, i32 %p_tx0, i32 %p_tx1, i32 %p_ty0, i32 %p_ty1, i32 %p_max_prec, i32 %p_max_res, i32 %p_dx_min, i32 %p_dy_min) #0 {
entry:
  %p_cp.addr = alloca %struct.opj_cp*, align 8
  %p_num_comps.addr = alloca i32, align 4
  %p_tileno.addr = alloca i32, align 4
  %p_tx0.addr = alloca i32, align 4
  %p_tx1.addr = alloca i32, align 4
  %p_ty0.addr = alloca i32, align 4
  %p_ty1.addr = alloca i32, align 4
  %p_max_prec.addr = alloca i32, align 4
  %p_max_res.addr = alloca i32, align 4
  %p_dx_min.addr = alloca i32, align 4
  %p_dy_min.addr = alloca i32, align 4
  %pino = alloca i32, align 4
  %l_tcp = alloca %struct.opj_tcp*, align 8
  %l_current_poc = alloca %struct.opj_poc*, align 8
  %l_poc_bound = alloca i32, align 4
  store %struct.opj_cp* %p_cp, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  store i32 %p_num_comps, i32* %p_num_comps.addr, align 4, !tbaa !1
  store i32 %p_tileno, i32* %p_tileno.addr, align 4, !tbaa !1
  store i32 %p_tx0, i32* %p_tx0.addr, align 4, !tbaa !1
  store i32 %p_tx1, i32* %p_tx1.addr, align 4, !tbaa !1
  store i32 %p_ty0, i32* %p_ty0.addr, align 4, !tbaa !1
  store i32 %p_ty1, i32* %p_ty1.addr, align 4, !tbaa !1
  store i32 %p_max_prec, i32* %p_max_prec.addr, align 4, !tbaa !1
  store i32 %p_max_res, i32* %p_max_res.addr, align 4, !tbaa !1
  store i32 %p_dx_min, i32* %p_dx_min.addr, align 4, !tbaa !1
  store i32 %p_dy_min, i32* %p_dy_min.addr, align 4, !tbaa !1
  %0 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.opj_tcp* null, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %2 = bitcast %struct.opj_poc** %l_current_poc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.opj_poc* null, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %3 = bitcast i32* %l_poc_bound to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.opj_cp* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 945, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @__PRETTY_FUNCTION__.opj_pi_update_encode_not_poc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load i32, i32* %p_tileno.addr, align 4, !tbaa !1
  %7 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tw = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %7, i32 0, i32 6
  %8 = load i32, i32* %tw, align 4, !tbaa !24
  %9 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %th = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %9, i32 0, i32 7
  %10 = load i32, i32* %th, align 4, !tbaa !25
  %mul = mul i32 %8, %10
  %cmp1 = icmp ult i32 %6, %mul
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 946, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @__PRETTY_FUNCTION__.opj_pi_update_encode_not_poc, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %11, %cond.true.2
  %12 = load i32, i32* %p_tileno.addr, align 4, !tbaa !1
  %idxprom = zext i32 %12 to i64
  %13 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tcps = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %13, i32 0, i32 17
  %14 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %14, i64 %idxprom
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %15 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %numpocs = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %15, i32 0, i32 6
  %16 = load i32, i32* %numpocs, align 4, !tbaa !26
  %add = add i32 %16, 1
  store i32 %add, i32* %l_poc_bound, align 4, !tbaa !1
  %17 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %pocs = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %17, i32 0, i32 7
  %arraydecay = getelementptr inbounds [32 x %struct.opj_poc], [32 x %struct.opj_poc]* %pocs, i32 0, i32 0
  store %struct.opj_poc* %arraydecay, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  store i32 0, i32* %pino, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.4
  %18 = load i32, i32* %pino, align 4, !tbaa !1
  %19 = load i32, i32* %l_poc_bound, align 4, !tbaa !1
  %cmp5 = icmp ult i32 %18, %19
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %compS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %20, i32 0, i32 18
  store i32 0, i32* %compS, align 4, !tbaa !90
  %21 = load i32, i32* %p_num_comps.addr, align 4, !tbaa !1
  %22 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %compE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %22, i32 0, i32 22
  store i32 %21, i32* %compE, align 4, !tbaa !14
  %23 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %resS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %23, i32 0, i32 17
  store i32 0, i32* %resS, align 4, !tbaa !91
  %24 = load i32, i32* %p_max_res.addr, align 4, !tbaa !1
  %25 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %resE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %25, i32 0, i32 21
  store i32 %24, i32* %resE, align 4, !tbaa !12
  %26 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %layS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %26, i32 0, i32 16
  store i32 0, i32* %layS, align 4, !tbaa !92
  %27 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %numlayers = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %27, i32 0, i32 2
  %28 = load i32, i32* %numlayers, align 4, !tbaa !30
  %29 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %layE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %29, i32 0, i32 20
  store i32 %28, i32* %layE, align 4, !tbaa !16
  %30 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %prg = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %30, i32 0, i32 1
  %31 = load i32, i32* %prg, align 4, !tbaa !84
  %32 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %prg6 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %32, i32 0, i32 9
  store i32 %31, i32* %prg6, align 4, !tbaa !17
  %33 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %prcS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %33, i32 0, i32 19
  store i32 0, i32* %prcS, align 4, !tbaa !94
  %34 = load i32, i32* %p_max_prec.addr, align 4, !tbaa !1
  %35 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %prcE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %35, i32 0, i32 23
  store i32 %34, i32* %prcE, align 4, !tbaa !19
  %36 = load i32, i32* %p_tx0.addr, align 4, !tbaa !1
  %37 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %txS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %37, i32 0, i32 24
  store i32 %36, i32* %txS, align 4, !tbaa !95
  %38 = load i32, i32* %p_tx1.addr, align 4, !tbaa !1
  %39 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %txE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %39, i32 0, i32 25
  store i32 %38, i32* %txE, align 4, !tbaa !21
  %40 = load i32, i32* %p_ty0.addr, align 4, !tbaa !1
  %41 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %tyS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %41, i32 0, i32 26
  store i32 %40, i32* %tyS, align 4, !tbaa !96
  %42 = load i32, i32* %p_ty1.addr, align 4, !tbaa !1
  %43 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %tyE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %43, i32 0, i32 27
  store i32 %42, i32* %tyE, align 4, !tbaa !23
  %44 = load i32, i32* %p_dx_min.addr, align 4, !tbaa !1
  %45 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %dx = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %45, i32 0, i32 28
  store i32 %44, i32* %dx, align 4, !tbaa !97
  %46 = load i32, i32* %p_dy_min.addr, align 4, !tbaa !1
  %47 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %dy = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %47, i32 0, i32 29
  store i32 %46, i32* %dy, align 4, !tbaa !98
  %48 = load %struct.opj_poc*, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %48, i32 1
  store %struct.opj_poc* %incdec.ptr, %struct.opj_poc** %l_current_poc, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %pino, align 4, !tbaa !1
  %inc = add i32 %49, 1
  store i32 %inc, i32* %pino, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = bitcast i32* %l_poc_bound to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast %struct.opj_poc** %l_current_poc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i32* %pino to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_pi_create_encode(%struct.opj_pi_iterator* %pi, %struct.opj_cp* %cp, i32 %tileno, i32 %pino, i32 %tpnum, i32 %tppos, i32 %t2_mode) #0 {
entry:
  %pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %cp.addr = alloca %struct.opj_cp*, align 8
  %tileno.addr = alloca i32, align 4
  %pino.addr = alloca i32, align 4
  %tpnum.addr = alloca i32, align 4
  %tppos.addr = alloca i32, align 4
  %t2_mode.addr = alloca i32, align 4
  %prog = alloca i8*, align 8
  %i = alloca i32, align 4
  %incr_top = alloca i32, align 4
  %resetX = alloca i32, align 4
  %tcps = alloca %struct.opj_tcp*, align 8
  %tcp = alloca %struct.opj_poc*, align 8
  store %struct.opj_pi_iterator* %pi, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  store %struct.opj_cp* %cp, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  store i32 %tileno, i32* %tileno.addr, align 4, !tbaa !1
  store i32 %pino, i32* %pino.addr, align 4, !tbaa !1
  store i32 %tpnum, i32* %tpnum.addr, align 4, !tbaa !1
  store i32 %tppos, i32* %tppos.addr, align 4, !tbaa !1
  store i32 %t2_mode, i32* %t2_mode.addr, align 4, !tbaa !9
  %0 = bitcast i8** %prog to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %incr_top to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 1, i32* %incr_top, align 4, !tbaa !1
  %3 = bitcast i32* %resetX to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %resetX, align 4, !tbaa !1
  %4 = bitcast %struct.opj_tcp** %tcps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %tcps1 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %6, i32 0, i32 17
  %7 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps1, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %7, i64 %idxprom
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %tcps, align 8, !tbaa !5
  %8 = bitcast %struct.opj_poc** %tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom2 = zext i32 %9 to i64
  %10 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !5
  %pocs = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %10, i32 0, i32 7
  %arrayidx3 = getelementptr inbounds [32 x %struct.opj_poc], [32 x %struct.opj_poc]* %pocs, i32 0, i64 %idxprom2
  store %struct.opj_poc* %arrayidx3, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %11 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prg = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %11, i32 0, i32 9
  %12 = load i32, i32* %prg, align 4, !tbaa !17
  %call = call i8* @opj_j2k_convert_progression_order(i32 %12) #6
  store i8* %call, i8** %prog, align 8, !tbaa !5
  %13 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom4 = zext i32 %13 to i64
  %14 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %14, i64 %idxprom4
  %first = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx5, i32 0, i32 10
  store i32 1, i32* %first, align 4, !tbaa !70
  %15 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prg6 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %15, i32 0, i32 9
  %16 = load i32, i32* %prg6, align 4, !tbaa !17
  %17 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom7 = zext i32 %17 to i64
  %18 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %18, i64 %idxprom7
  %poc = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx8, i32 0, i32 11
  %prg9 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc, i32 0, i32 9
  store i32 %16, i32* %prg9, align 4, !tbaa !69
  %19 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %m_specific_param = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %19, i32 0, i32 18
  %m_enc = bitcast %union.anon* %m_specific_param to %struct.opj_encoding_param*
  %m_tp_on = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc, i32 0, i32 5
  %bf.load = load i8, i8* %m_tp_on, align 1
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %20 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %m_specific_param10 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %20, i32 0, i32 18
  %m_enc11 = bitcast %union.anon* %m_specific_param10 to %struct.opj_encoding_param*
  %m_cinema = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc11, i32 0, i32 0
  %21 = load i32, i32* %m_cinema, align 4, !tbaa !88
  %tobool12 = icmp ne i32 %21, 0
  br i1 %tobool12, label %lor.lhs.false, label %land.lhs.true.13

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %22 = load i32, i32* %t2_mode.addr, align 4, !tbaa !9
  %cmp = icmp eq i32 %22, 1
  br i1 %cmp, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.13, %land.lhs.true
  %23 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %m_specific_param14 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %23, i32 0, i32 18
  %m_enc15 = bitcast %union.anon* %m_specific_param14 to %struct.opj_encoding_param*
  %m_cinema16 = getelementptr inbounds %struct.opj_encoding_param, %struct.opj_encoding_param* %m_enc15, i32 0, i32 0
  %24 = load i32, i32* %m_cinema16, align 4, !tbaa !88
  %tobool17 = icmp ne i32 %24, 0
  br i1 %tobool17, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %25 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %resS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %25, i32 0, i32 17
  %26 = load i32, i32* %resS, align 4, !tbaa !91
  %27 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom18 = zext i32 %27 to i64
  %28 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %28, i64 %idxprom18
  %poc20 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx19, i32 0, i32 11
  %resno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc20, i32 0, i32 0
  store i32 %26, i32* %resno0, align 4, !tbaa !72
  %29 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %resE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %29, i32 0, i32 21
  %30 = load i32, i32* %resE, align 4, !tbaa !12
  %31 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom21 = zext i32 %31 to i64
  %32 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx22 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %32, i64 %idxprom21
  %poc23 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx22, i32 0, i32 11
  %resno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc23, i32 0, i32 3
  store i32 %30, i32* %resno1, align 4, !tbaa !78
  %33 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %compS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %33, i32 0, i32 18
  %34 = load i32, i32* %compS, align 4, !tbaa !90
  %35 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom24 = zext i32 %35 to i64
  %36 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %36, i64 %idxprom24
  %poc26 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx25, i32 0, i32 11
  %compno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc26, i32 0, i32 1
  store i32 %34, i32* %compno0, align 4, !tbaa !74
  %37 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %compE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %37, i32 0, i32 22
  %38 = load i32, i32* %compE, align 4, !tbaa !14
  %39 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom27 = zext i32 %39 to i64
  %40 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %40, i64 %idxprom27
  %poc29 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx28, i32 0, i32 11
  %compno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc29, i32 0, i32 4
  store i32 %38, i32* %compno1, align 4, !tbaa !80
  %41 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %layS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %41, i32 0, i32 16
  %42 = load i32, i32* %layS, align 4, !tbaa !92
  %43 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom30 = zext i32 %43 to i64
  %44 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx31 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %44, i64 %idxprom30
  %poc32 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx31, i32 0, i32 11
  %layno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc32, i32 0, i32 5
  store i32 %42, i32* %layno0, align 4, !tbaa !75
  %45 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %layE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %45, i32 0, i32 20
  %46 = load i32, i32* %layE, align 4, !tbaa !16
  %47 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom33 = zext i32 %47 to i64
  %48 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx34 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %48, i64 %idxprom33
  %poc35 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx34, i32 0, i32 11
  %layno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc35, i32 0, i32 2
  store i32 %46, i32* %layno1, align 4, !tbaa !82
  %49 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prcS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %49, i32 0, i32 19
  %50 = load i32, i32* %prcS, align 4, !tbaa !94
  %51 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom36 = zext i32 %51 to i64
  %52 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx37 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %52, i64 %idxprom36
  %poc38 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx37, i32 0, i32 11
  %precno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc38, i32 0, i32 6
  store i32 %50, i32* %precno0, align 4, !tbaa !76
  %53 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prcE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %53, i32 0, i32 23
  %54 = load i32, i32* %prcE, align 4, !tbaa !19
  %55 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom39 = zext i32 %55 to i64
  %56 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx40 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %56, i64 %idxprom39
  %poc41 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx40, i32 0, i32 11
  %precno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc41, i32 0, i32 7
  store i32 %54, i32* %precno1, align 4, !tbaa !83
  %57 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %txS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %57, i32 0, i32 24
  %58 = load i32, i32* %txS, align 4, !tbaa !95
  %59 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom42 = zext i32 %59 to i64
  %60 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx43 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %60, i64 %idxprom42
  %poc44 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx43, i32 0, i32 11
  %tx0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc44, i32 0, i32 12
  store i32 %58, i32* %tx0, align 4, !tbaa !99
  %61 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tyS = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %61, i32 0, i32 26
  %62 = load i32, i32* %tyS, align 4, !tbaa !96
  %63 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom45 = zext i32 %63 to i64
  %64 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx46 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %64, i64 %idxprom45
  %poc47 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx46, i32 0, i32 11
  %ty0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc47, i32 0, i32 14
  store i32 %62, i32* %ty0, align 4, !tbaa !100
  %65 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %txE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %65, i32 0, i32 25
  %66 = load i32, i32* %txE, align 4, !tbaa !21
  %67 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom48 = zext i32 %67 to i64
  %68 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx49 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %68, i64 %idxprom48
  %poc50 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx49, i32 0, i32 11
  %tx1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc50, i32 0, i32 13
  store i32 %66, i32* %tx1, align 4, !tbaa !101
  %69 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tyE = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %69, i32 0, i32 27
  %70 = load i32, i32* %tyE, align 4, !tbaa !23
  %71 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom51 = zext i32 %71 to i64
  %72 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx52 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %72, i64 %idxprom51
  %poc53 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx52, i32 0, i32 11
  %ty1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc53, i32 0, i32 15
  store i32 %70, i32* %ty1, align 4, !tbaa !102
  br label %if.end.628

if.else:                                          ; preds = %lor.lhs.false, %land.lhs.true.13
  %73 = load i32, i32* %tppos.addr, align 4, !tbaa !1
  %add = add nsw i32 %73, 1
  store i32 %add, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %74 = load i32, i32* %i, align 4, !tbaa !1
  %cmp54 = icmp slt i32 %74, 4
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %75 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom55 = sext i32 %75 to i64
  %76 = load i8*, i8** %prog, align 8, !tbaa !5
  %arrayidx56 = getelementptr inbounds i8, i8* %76, i64 %idxprom55
  %77 = load i8, i8* %arrayidx56, align 1, !tbaa !9
  %conv = sext i8 %77 to i32
  switch i32 %conv, label %sw.epilog.122 [
    i32 82, label %sw.bb
    i32 67, label %sw.bb.67
    i32 76, label %sw.bb.78
    i32 80, label %sw.bb.89
  ]

sw.bb:                                            ; preds = %for.body
  %78 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %resS57 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %78, i32 0, i32 17
  %79 = load i32, i32* %resS57, align 4, !tbaa !91
  %80 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom58 = zext i32 %80 to i64
  %81 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx59 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %81, i64 %idxprom58
  %poc60 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx59, i32 0, i32 11
  %resno061 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc60, i32 0, i32 0
  store i32 %79, i32* %resno061, align 4, !tbaa !72
  %82 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %resE62 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %82, i32 0, i32 21
  %83 = load i32, i32* %resE62, align 4, !tbaa !12
  %84 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom63 = zext i32 %84 to i64
  %85 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx64 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %85, i64 %idxprom63
  %poc65 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx64, i32 0, i32 11
  %resno166 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc65, i32 0, i32 3
  store i32 %83, i32* %resno166, align 4, !tbaa !78
  br label %sw.epilog.122

sw.bb.67:                                         ; preds = %for.body
  %86 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %compS68 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %86, i32 0, i32 18
  %87 = load i32, i32* %compS68, align 4, !tbaa !90
  %88 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom69 = zext i32 %88 to i64
  %89 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx70 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %89, i64 %idxprom69
  %poc71 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx70, i32 0, i32 11
  %compno072 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc71, i32 0, i32 1
  store i32 %87, i32* %compno072, align 4, !tbaa !74
  %90 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %compE73 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %90, i32 0, i32 22
  %91 = load i32, i32* %compE73, align 4, !tbaa !14
  %92 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom74 = zext i32 %92 to i64
  %93 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx75 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %93, i64 %idxprom74
  %poc76 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx75, i32 0, i32 11
  %compno177 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc76, i32 0, i32 4
  store i32 %91, i32* %compno177, align 4, !tbaa !80
  br label %sw.epilog.122

sw.bb.78:                                         ; preds = %for.body
  %94 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %layS79 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %94, i32 0, i32 16
  %95 = load i32, i32* %layS79, align 4, !tbaa !92
  %96 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom80 = zext i32 %96 to i64
  %97 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx81 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %97, i64 %idxprom80
  %poc82 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx81, i32 0, i32 11
  %layno083 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc82, i32 0, i32 5
  store i32 %95, i32* %layno083, align 4, !tbaa !75
  %98 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %layE84 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %98, i32 0, i32 20
  %99 = load i32, i32* %layE84, align 4, !tbaa !16
  %100 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom85 = zext i32 %100 to i64
  %101 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx86 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %101, i64 %idxprom85
  %poc87 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx86, i32 0, i32 11
  %layno188 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc87, i32 0, i32 2
  store i32 %99, i32* %layno188, align 4, !tbaa !82
  br label %sw.epilog.122

sw.bb.89:                                         ; preds = %for.body
  %102 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prg90 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %102, i32 0, i32 9
  %103 = load i32, i32* %prg90, align 4, !tbaa !17
  switch i32 %103, label %sw.default [
    i32 0, label %sw.bb.91
    i32 1, label %sw.bb.91
  ]

sw.bb.91:                                         ; preds = %sw.bb.89, %sw.bb.89
  %104 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prcS92 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %104, i32 0, i32 19
  %105 = load i32, i32* %prcS92, align 4, !tbaa !94
  %106 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom93 = zext i32 %106 to i64
  %107 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx94 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %107, i64 %idxprom93
  %poc95 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx94, i32 0, i32 11
  %precno096 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc95, i32 0, i32 6
  store i32 %105, i32* %precno096, align 4, !tbaa !76
  %108 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prcE97 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %108, i32 0, i32 23
  %109 = load i32, i32* %prcE97, align 4, !tbaa !19
  %110 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom98 = zext i32 %110 to i64
  %111 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx99 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %111, i64 %idxprom98
  %poc100 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx99, i32 0, i32 11
  %precno1101 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc100, i32 0, i32 7
  store i32 %109, i32* %precno1101, align 4, !tbaa !83
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.89
  %112 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %txS102 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %112, i32 0, i32 24
  %113 = load i32, i32* %txS102, align 4, !tbaa !95
  %114 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom103 = zext i32 %114 to i64
  %115 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx104 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %115, i64 %idxprom103
  %poc105 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx104, i32 0, i32 11
  %tx0106 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc105, i32 0, i32 12
  store i32 %113, i32* %tx0106, align 4, !tbaa !99
  %116 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tyS107 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %116, i32 0, i32 26
  %117 = load i32, i32* %tyS107, align 4, !tbaa !96
  %118 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom108 = zext i32 %118 to i64
  %119 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx109 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %119, i64 %idxprom108
  %poc110 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx109, i32 0, i32 11
  %ty0111 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc110, i32 0, i32 14
  store i32 %117, i32* %ty0111, align 4, !tbaa !100
  %120 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %txE112 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %120, i32 0, i32 25
  %121 = load i32, i32* %txE112, align 4, !tbaa !21
  %122 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom113 = zext i32 %122 to i64
  %123 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx114 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %123, i64 %idxprom113
  %poc115 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx114, i32 0, i32 11
  %tx1116 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc115, i32 0, i32 13
  store i32 %121, i32* %tx1116, align 4, !tbaa !101
  %124 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tyE117 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %124, i32 0, i32 27
  %125 = load i32, i32* %tyE117, align 4, !tbaa !23
  %126 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom118 = zext i32 %126 to i64
  %127 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx119 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %127, i64 %idxprom118
  %poc120 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx119, i32 0, i32 11
  %ty1121 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc120, i32 0, i32 15
  store i32 %125, i32* %ty1121, align 4, !tbaa !102
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.91
  br label %sw.epilog.122

sw.epilog.122:                                    ; preds = %for.body, %sw.epilog, %sw.bb.78, %sw.bb.67, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.122
  %128 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %128, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %129 = load i32, i32* %tpnum.addr, align 4, !tbaa !1
  %cmp123 = icmp eq i32 %129, 0
  br i1 %cmp123, label %if.then.125, label %if.else.240

if.then.125:                                      ; preds = %for.end
  %130 = load i32, i32* %tppos.addr, align 4, !tbaa !1
  store i32 %130, i32* %i, align 4, !tbaa !1
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.238, %if.then.125
  %131 = load i32, i32* %i, align 4, !tbaa !1
  %cmp127 = icmp sge i32 %131, 0
  br i1 %cmp127, label %for.body.129, label %for.end.239

for.body.129:                                     ; preds = %for.cond.126
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom130 = sext i32 %132 to i64
  %133 = load i8*, i8** %prog, align 8, !tbaa !5
  %arrayidx131 = getelementptr inbounds i8, i8* %133, i64 %idxprom130
  %134 = load i8, i8* %arrayidx131, align 1, !tbaa !9
  %conv132 = sext i8 %134 to i32
  switch i32 %conv132, label %sw.epilog.237 [
    i32 67, label %sw.bb.133
    i32 82, label %sw.bb.148
    i32 76, label %sw.bb.163
    i32 80, label %sw.bb.178
  ]

sw.bb.133:                                        ; preds = %for.body.129
  %135 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %compS134 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %135, i32 0, i32 18
  %136 = load i32, i32* %compS134, align 4, !tbaa !90
  %137 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %137, i32 0, i32 32
  store i32 %136, i32* %comp_t, align 4, !tbaa !13
  %138 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t135 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %138, i32 0, i32 32
  %139 = load i32, i32* %comp_t135, align 4, !tbaa !13
  %140 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom136 = zext i32 %140 to i64
  %141 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx137 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %141, i64 %idxprom136
  %poc138 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx137, i32 0, i32 11
  %compno0139 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc138, i32 0, i32 1
  store i32 %139, i32* %compno0139, align 4, !tbaa !74
  %142 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t140 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %142, i32 0, i32 32
  %143 = load i32, i32* %comp_t140, align 4, !tbaa !13
  %add141 = add i32 %143, 1
  %144 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom142 = zext i32 %144 to i64
  %145 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx143 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %145, i64 %idxprom142
  %poc144 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx143, i32 0, i32 11
  %compno1145 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc144, i32 0, i32 4
  store i32 %add141, i32* %compno1145, align 4, !tbaa !80
  %146 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t146 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %146, i32 0, i32 32
  %147 = load i32, i32* %comp_t146, align 4, !tbaa !13
  %add147 = add i32 %147, 1
  store i32 %add147, i32* %comp_t146, align 4, !tbaa !13
  br label %sw.epilog.237

sw.bb.148:                                        ; preds = %for.body.129
  %148 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %resS149 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %148, i32 0, i32 17
  %149 = load i32, i32* %resS149, align 4, !tbaa !91
  %150 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %150, i32 0, i32 31
  store i32 %149, i32* %res_t, align 4, !tbaa !10
  %151 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t150 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %151, i32 0, i32 31
  %152 = load i32, i32* %res_t150, align 4, !tbaa !10
  %153 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom151 = zext i32 %153 to i64
  %154 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx152 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %154, i64 %idxprom151
  %poc153 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx152, i32 0, i32 11
  %resno0154 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc153, i32 0, i32 0
  store i32 %152, i32* %resno0154, align 4, !tbaa !72
  %155 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t155 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %155, i32 0, i32 31
  %156 = load i32, i32* %res_t155, align 4, !tbaa !10
  %add156 = add i32 %156, 1
  %157 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom157 = zext i32 %157 to i64
  %158 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx158 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %158, i64 %idxprom157
  %poc159 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx158, i32 0, i32 11
  %resno1160 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc159, i32 0, i32 3
  store i32 %add156, i32* %resno1160, align 4, !tbaa !78
  %159 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t161 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %159, i32 0, i32 31
  %160 = load i32, i32* %res_t161, align 4, !tbaa !10
  %add162 = add i32 %160, 1
  store i32 %add162, i32* %res_t161, align 4, !tbaa !10
  br label %sw.epilog.237

sw.bb.163:                                        ; preds = %for.body.129
  %161 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %layS164 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %161, i32 0, i32 16
  %162 = load i32, i32* %layS164, align 4, !tbaa !92
  %163 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %163, i32 0, i32 30
  store i32 %162, i32* %lay_t, align 4, !tbaa !15
  %164 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t165 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %164, i32 0, i32 30
  %165 = load i32, i32* %lay_t165, align 4, !tbaa !15
  %166 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom166 = zext i32 %166 to i64
  %167 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx167 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %167, i64 %idxprom166
  %poc168 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx167, i32 0, i32 11
  %layno0169 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc168, i32 0, i32 5
  store i32 %165, i32* %layno0169, align 4, !tbaa !75
  %168 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t170 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %168, i32 0, i32 30
  %169 = load i32, i32* %lay_t170, align 4, !tbaa !15
  %add171 = add i32 %169, 1
  %170 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom172 = zext i32 %170 to i64
  %171 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx173 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %171, i64 %idxprom172
  %poc174 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx173, i32 0, i32 11
  %layno1175 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc174, i32 0, i32 2
  store i32 %add171, i32* %layno1175, align 4, !tbaa !82
  %172 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t176 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %172, i32 0, i32 30
  %173 = load i32, i32* %lay_t176, align 4, !tbaa !15
  %add177 = add i32 %173, 1
  store i32 %add177, i32* %lay_t176, align 4, !tbaa !15
  br label %sw.epilog.237

sw.bb.178:                                        ; preds = %for.body.129
  %174 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prg179 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %174, i32 0, i32 9
  %175 = load i32, i32* %prg179, align 4, !tbaa !17
  switch i32 %175, label %sw.default.195 [
    i32 0, label %sw.bb.180
    i32 1, label %sw.bb.180
  ]

sw.bb.180:                                        ; preds = %sw.bb.178, %sw.bb.178
  %176 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prcS181 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %176, i32 0, i32 19
  %177 = load i32, i32* %prcS181, align 4, !tbaa !94
  %178 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %178, i32 0, i32 33
  store i32 %177, i32* %prc_t, align 4, !tbaa !18
  %179 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t182 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %179, i32 0, i32 33
  %180 = load i32, i32* %prc_t182, align 4, !tbaa !18
  %181 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom183 = zext i32 %181 to i64
  %182 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx184 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %182, i64 %idxprom183
  %poc185 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx184, i32 0, i32 11
  %precno0186 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc185, i32 0, i32 6
  store i32 %180, i32* %precno0186, align 4, !tbaa !76
  %183 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t187 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %183, i32 0, i32 33
  %184 = load i32, i32* %prc_t187, align 4, !tbaa !18
  %add188 = add i32 %184, 1
  %185 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom189 = zext i32 %185 to i64
  %186 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx190 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %186, i64 %idxprom189
  %poc191 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx190, i32 0, i32 11
  %precno1192 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc191, i32 0, i32 7
  store i32 %add188, i32* %precno1192, align 4, !tbaa !83
  %187 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t193 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %187, i32 0, i32 33
  %188 = load i32, i32* %prc_t193, align 4, !tbaa !18
  %add194 = add i32 %188, 1
  store i32 %add194, i32* %prc_t193, align 4, !tbaa !18
  br label %sw.epilog.236

sw.default.195:                                   ; preds = %sw.bb.178
  %189 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %txS196 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %189, i32 0, i32 24
  %190 = load i32, i32* %txS196, align 4, !tbaa !95
  %191 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %191, i32 0, i32 34
  store i32 %190, i32* %tx0_t, align 4, !tbaa !20
  %192 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tyS197 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %192, i32 0, i32 26
  %193 = load i32, i32* %tyS197, align 4, !tbaa !96
  %194 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %194, i32 0, i32 35
  store i32 %193, i32* %ty0_t, align 4, !tbaa !22
  %195 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t198 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %195, i32 0, i32 34
  %196 = load i32, i32* %tx0_t198, align 4, !tbaa !20
  %197 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom199 = zext i32 %197 to i64
  %198 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx200 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %198, i64 %idxprom199
  %poc201 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx200, i32 0, i32 11
  %tx0202 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc201, i32 0, i32 12
  store i32 %196, i32* %tx0202, align 4, !tbaa !99
  %199 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t203 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %199, i32 0, i32 34
  %200 = load i32, i32* %tx0_t203, align 4, !tbaa !20
  %201 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dx = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %201, i32 0, i32 28
  %202 = load i32, i32* %dx, align 4, !tbaa !97
  %add204 = add i32 %200, %202
  %203 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t205 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %203, i32 0, i32 34
  %204 = load i32, i32* %tx0_t205, align 4, !tbaa !20
  %205 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dx206 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %205, i32 0, i32 28
  %206 = load i32, i32* %dx206, align 4, !tbaa !97
  %rem = urem i32 %204, %206
  %sub = sub i32 %add204, %rem
  %207 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom207 = zext i32 %207 to i64
  %208 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx208 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %208, i64 %idxprom207
  %poc209 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx208, i32 0, i32 11
  %tx1210 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc209, i32 0, i32 13
  store i32 %sub, i32* %tx1210, align 4, !tbaa !101
  %209 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t211 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %209, i32 0, i32 35
  %210 = load i32, i32* %ty0_t211, align 4, !tbaa !22
  %211 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom212 = zext i32 %211 to i64
  %212 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx213 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %212, i64 %idxprom212
  %poc214 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx213, i32 0, i32 11
  %ty0215 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc214, i32 0, i32 14
  store i32 %210, i32* %ty0215, align 4, !tbaa !100
  %213 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t216 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %213, i32 0, i32 35
  %214 = load i32, i32* %ty0_t216, align 4, !tbaa !22
  %215 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dy = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %215, i32 0, i32 29
  %216 = load i32, i32* %dy, align 4, !tbaa !98
  %add217 = add i32 %214, %216
  %217 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t218 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %217, i32 0, i32 35
  %218 = load i32, i32* %ty0_t218, align 4, !tbaa !22
  %219 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dy219 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %219, i32 0, i32 29
  %220 = load i32, i32* %dy219, align 4, !tbaa !98
  %rem220 = urem i32 %218, %220
  %sub221 = sub i32 %add217, %rem220
  %221 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom222 = zext i32 %221 to i64
  %222 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx223 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %222, i64 %idxprom222
  %poc224 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx223, i32 0, i32 11
  %ty1225 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc224, i32 0, i32 15
  store i32 %sub221, i32* %ty1225, align 4, !tbaa !102
  %223 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom226 = zext i32 %223 to i64
  %224 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx227 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %224, i64 %idxprom226
  %poc228 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx227, i32 0, i32 11
  %tx1229 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc228, i32 0, i32 13
  %225 = load i32, i32* %tx1229, align 4, !tbaa !101
  %226 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t230 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %226, i32 0, i32 34
  store i32 %225, i32* %tx0_t230, align 4, !tbaa !20
  %227 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom231 = zext i32 %227 to i64
  %228 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx232 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %228, i64 %idxprom231
  %poc233 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx232, i32 0, i32 11
  %ty1234 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc233, i32 0, i32 15
  %229 = load i32, i32* %ty1234, align 4, !tbaa !102
  %230 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t235 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %230, i32 0, i32 35
  store i32 %229, i32* %ty0_t235, align 4, !tbaa !22
  br label %sw.epilog.236

sw.epilog.236:                                    ; preds = %sw.default.195, %sw.bb.180
  br label %sw.epilog.237

sw.epilog.237:                                    ; preds = %for.body.129, %sw.epilog.236, %sw.bb.163, %sw.bb.148, %sw.bb.133
  br label %for.inc.238

for.inc.238:                                      ; preds = %sw.epilog.237
  %231 = load i32, i32* %i, align 4, !tbaa !1
  %dec = add nsw i32 %231, -1
  store i32 %dec, i32* %i, align 4, !tbaa !1
  br label %for.cond.126

for.end.239:                                      ; preds = %for.cond.126
  store i32 1, i32* %incr_top, align 4, !tbaa !1
  br label %if.end.627

if.else.240:                                      ; preds = %for.end
  %232 = load i32, i32* %tppos.addr, align 4, !tbaa !1
  store i32 %232, i32* %i, align 4, !tbaa !1
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.624, %if.else.240
  %233 = load i32, i32* %i, align 4, !tbaa !1
  %cmp242 = icmp sge i32 %233, 0
  br i1 %cmp242, label %for.body.244, label %for.end.626

for.body.244:                                     ; preds = %for.cond.241
  %234 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom245 = sext i32 %234 to i64
  %235 = load i8*, i8** %prog, align 8, !tbaa !5
  %arrayidx246 = getelementptr inbounds i8, i8* %235, i64 %idxprom245
  %236 = load i8, i8* %arrayidx246, align 1, !tbaa !9
  %conv247 = sext i8 %236 to i32
  switch i32 %conv247, label %sw.epilog.332 [
    i32 67, label %sw.bb.248
    i32 82, label %sw.bb.260
    i32 76, label %sw.bb.272
    i32 80, label %sw.bb.284
  ]

sw.bb.248:                                        ; preds = %for.body.244
  %237 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t249 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %237, i32 0, i32 32
  %238 = load i32, i32* %comp_t249, align 4, !tbaa !13
  %sub250 = sub i32 %238, 1
  %239 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom251 = zext i32 %239 to i64
  %240 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx252 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %240, i64 %idxprom251
  %poc253 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx252, i32 0, i32 11
  %compno0254 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc253, i32 0, i32 1
  store i32 %sub250, i32* %compno0254, align 4, !tbaa !74
  %241 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t255 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %241, i32 0, i32 32
  %242 = load i32, i32* %comp_t255, align 4, !tbaa !13
  %243 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom256 = zext i32 %243 to i64
  %244 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx257 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %244, i64 %idxprom256
  %poc258 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx257, i32 0, i32 11
  %compno1259 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc258, i32 0, i32 4
  store i32 %242, i32* %compno1259, align 4, !tbaa !80
  br label %sw.epilog.332

sw.bb.260:                                        ; preds = %for.body.244
  %245 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t261 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %245, i32 0, i32 31
  %246 = load i32, i32* %res_t261, align 4, !tbaa !10
  %sub262 = sub i32 %246, 1
  %247 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom263 = zext i32 %247 to i64
  %248 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx264 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %248, i64 %idxprom263
  %poc265 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx264, i32 0, i32 11
  %resno0266 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc265, i32 0, i32 0
  store i32 %sub262, i32* %resno0266, align 4, !tbaa !72
  %249 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t267 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %249, i32 0, i32 31
  %250 = load i32, i32* %res_t267, align 4, !tbaa !10
  %251 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom268 = zext i32 %251 to i64
  %252 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx269 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %252, i64 %idxprom268
  %poc270 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx269, i32 0, i32 11
  %resno1271 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc270, i32 0, i32 3
  store i32 %250, i32* %resno1271, align 4, !tbaa !78
  br label %sw.epilog.332

sw.bb.272:                                        ; preds = %for.body.244
  %253 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t273 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %253, i32 0, i32 30
  %254 = load i32, i32* %lay_t273, align 4, !tbaa !15
  %sub274 = sub i32 %254, 1
  %255 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom275 = zext i32 %255 to i64
  %256 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx276 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %256, i64 %idxprom275
  %poc277 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx276, i32 0, i32 11
  %layno0278 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc277, i32 0, i32 5
  store i32 %sub274, i32* %layno0278, align 4, !tbaa !75
  %257 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t279 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %257, i32 0, i32 30
  %258 = load i32, i32* %lay_t279, align 4, !tbaa !15
  %259 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom280 = zext i32 %259 to i64
  %260 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx281 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %260, i64 %idxprom280
  %poc282 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx281, i32 0, i32 11
  %layno1283 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc282, i32 0, i32 2
  store i32 %258, i32* %layno1283, align 4, !tbaa !82
  br label %sw.epilog.332

sw.bb.284:                                        ; preds = %for.body.244
  %261 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prg285 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %261, i32 0, i32 9
  %262 = load i32, i32* %prg285, align 4, !tbaa !17
  switch i32 %262, label %sw.default.298 [
    i32 0, label %sw.bb.286
    i32 1, label %sw.bb.286
  ]

sw.bb.286:                                        ; preds = %sw.bb.284, %sw.bb.284
  %263 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t287 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %263, i32 0, i32 33
  %264 = load i32, i32* %prc_t287, align 4, !tbaa !18
  %sub288 = sub i32 %264, 1
  %265 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom289 = zext i32 %265 to i64
  %266 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx290 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %266, i64 %idxprom289
  %poc291 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx290, i32 0, i32 11
  %precno0292 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc291, i32 0, i32 6
  store i32 %sub288, i32* %precno0292, align 4, !tbaa !76
  %267 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t293 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %267, i32 0, i32 33
  %268 = load i32, i32* %prc_t293, align 4, !tbaa !18
  %269 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom294 = zext i32 %269 to i64
  %270 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx295 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %270, i64 %idxprom294
  %poc296 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx295, i32 0, i32 11
  %precno1297 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc296, i32 0, i32 7
  store i32 %268, i32* %precno1297, align 4, !tbaa !83
  br label %sw.epilog.331

sw.default.298:                                   ; preds = %sw.bb.284
  %271 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t299 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %271, i32 0, i32 34
  %272 = load i32, i32* %tx0_t299, align 4, !tbaa !20
  %273 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dx300 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %273, i32 0, i32 28
  %274 = load i32, i32* %dx300, align 4, !tbaa !97
  %sub301 = sub i32 %272, %274
  %275 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t302 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %275, i32 0, i32 34
  %276 = load i32, i32* %tx0_t302, align 4, !tbaa !20
  %277 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dx303 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %277, i32 0, i32 28
  %278 = load i32, i32* %dx303, align 4, !tbaa !97
  %rem304 = urem i32 %276, %278
  %sub305 = sub i32 %sub301, %rem304
  %279 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom306 = zext i32 %279 to i64
  %280 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx307 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %280, i64 %idxprom306
  %poc308 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx307, i32 0, i32 11
  %tx0309 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc308, i32 0, i32 12
  store i32 %sub305, i32* %tx0309, align 4, !tbaa !99
  %281 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t310 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %281, i32 0, i32 34
  %282 = load i32, i32* %tx0_t310, align 4, !tbaa !20
  %283 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom311 = zext i32 %283 to i64
  %284 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx312 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %284, i64 %idxprom311
  %poc313 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx312, i32 0, i32 11
  %tx1314 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc313, i32 0, i32 13
  store i32 %282, i32* %tx1314, align 4, !tbaa !101
  %285 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t315 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %285, i32 0, i32 35
  %286 = load i32, i32* %ty0_t315, align 4, !tbaa !22
  %287 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dy316 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %287, i32 0, i32 29
  %288 = load i32, i32* %dy316, align 4, !tbaa !98
  %sub317 = sub i32 %286, %288
  %289 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t318 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %289, i32 0, i32 35
  %290 = load i32, i32* %ty0_t318, align 4, !tbaa !22
  %291 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dy319 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %291, i32 0, i32 29
  %292 = load i32, i32* %dy319, align 4, !tbaa !98
  %rem320 = urem i32 %290, %292
  %sub321 = sub i32 %sub317, %rem320
  %293 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom322 = zext i32 %293 to i64
  %294 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx323 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %294, i64 %idxprom322
  %poc324 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx323, i32 0, i32 11
  %ty0325 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc324, i32 0, i32 14
  store i32 %sub321, i32* %ty0325, align 4, !tbaa !100
  %295 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t326 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %295, i32 0, i32 35
  %296 = load i32, i32* %ty0_t326, align 4, !tbaa !22
  %297 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom327 = zext i32 %297 to i64
  %298 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx328 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %298, i64 %idxprom327
  %poc329 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx328, i32 0, i32 11
  %ty1330 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc329, i32 0, i32 15
  store i32 %296, i32* %ty1330, align 4, !tbaa !102
  br label %sw.epilog.331

sw.epilog.331:                                    ; preds = %sw.default.298, %sw.bb.286
  br label %sw.epilog.332

sw.epilog.332:                                    ; preds = %for.body.244, %sw.epilog.331, %sw.bb.272, %sw.bb.260, %sw.bb.248
  %299 = load i32, i32* %incr_top, align 4, !tbaa !1
  %cmp333 = icmp eq i32 %299, 1
  br i1 %cmp333, label %if.then.335, label %if.end.623

if.then.335:                                      ; preds = %sw.epilog.332
  %300 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom336 = sext i32 %300 to i64
  %301 = load i8*, i8** %prog, align 8, !tbaa !5
  %arrayidx337 = getelementptr inbounds i8, i8* %301, i64 %idxprom336
  %302 = load i8, i8* %arrayidx337, align 1, !tbaa !9
  %conv338 = sext i8 %302 to i32
  switch i32 %conv338, label %sw.epilog.622 [
    i32 82, label %sw.bb.339
    i32 67, label %sw.bb.380
    i32 76, label %sw.bb.422
    i32 80, label %sw.bb.464
  ]

sw.bb.339:                                        ; preds = %if.then.335
  %303 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t340 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %303, i32 0, i32 31
  %304 = load i32, i32* %res_t340, align 4, !tbaa !10
  %305 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %resE341 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %305, i32 0, i32 21
  %306 = load i32, i32* %resE341, align 4, !tbaa !12
  %cmp342 = icmp eq i32 %304, %306
  br i1 %cmp342, label %if.then.344, label %if.else.365

if.then.344:                                      ; preds = %sw.bb.339
  %307 = load i32, i32* %i, align 4, !tbaa !1
  %sub345 = sub nsw i32 %307, 1
  %308 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %309 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %310 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %311 = load i8*, i8** %prog, align 8, !tbaa !5
  %call346 = call i32 @opj_pi_check_next_level(i32 %sub345, %struct.opj_cp* %308, i32 %309, i32 %310, i8* %311) #6
  %tobool347 = icmp ne i32 %call346, 0
  br i1 %tobool347, label %if.then.348, label %if.else.364

if.then.348:                                      ; preds = %if.then.344
  %312 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %resS349 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %312, i32 0, i32 17
  %313 = load i32, i32* %resS349, align 4, !tbaa !91
  %314 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t350 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %314, i32 0, i32 31
  store i32 %313, i32* %res_t350, align 4, !tbaa !10
  %315 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t351 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %315, i32 0, i32 31
  %316 = load i32, i32* %res_t351, align 4, !tbaa !10
  %317 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom352 = zext i32 %317 to i64
  %318 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx353 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %318, i64 %idxprom352
  %poc354 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx353, i32 0, i32 11
  %resno0355 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc354, i32 0, i32 0
  store i32 %316, i32* %resno0355, align 4, !tbaa !72
  %319 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t356 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %319, i32 0, i32 31
  %320 = load i32, i32* %res_t356, align 4, !tbaa !10
  %add357 = add i32 %320, 1
  %321 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom358 = zext i32 %321 to i64
  %322 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx359 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %322, i64 %idxprom358
  %poc360 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx359, i32 0, i32 11
  %resno1361 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc360, i32 0, i32 3
  store i32 %add357, i32* %resno1361, align 4, !tbaa !78
  %323 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t362 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %323, i32 0, i32 31
  %324 = load i32, i32* %res_t362, align 4, !tbaa !10
  %add363 = add i32 %324, 1
  store i32 %add363, i32* %res_t362, align 4, !tbaa !10
  store i32 1, i32* %incr_top, align 4, !tbaa !1
  br label %if.end

if.else.364:                                      ; preds = %if.then.344
  store i32 0, i32* %incr_top, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.364, %if.then.348
  br label %if.end.379

if.else.365:                                      ; preds = %sw.bb.339
  %325 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t366 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %325, i32 0, i32 31
  %326 = load i32, i32* %res_t366, align 4, !tbaa !10
  %327 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom367 = zext i32 %327 to i64
  %328 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx368 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %328, i64 %idxprom367
  %poc369 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx368, i32 0, i32 11
  %resno0370 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc369, i32 0, i32 0
  store i32 %326, i32* %resno0370, align 4, !tbaa !72
  %329 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t371 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %329, i32 0, i32 31
  %330 = load i32, i32* %res_t371, align 4, !tbaa !10
  %add372 = add i32 %330, 1
  %331 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom373 = zext i32 %331 to i64
  %332 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx374 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %332, i64 %idxprom373
  %poc375 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx374, i32 0, i32 11
  %resno1376 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc375, i32 0, i32 3
  store i32 %add372, i32* %resno1376, align 4, !tbaa !78
  %333 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %res_t377 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %333, i32 0, i32 31
  %334 = load i32, i32* %res_t377, align 4, !tbaa !10
  %add378 = add i32 %334, 1
  store i32 %add378, i32* %res_t377, align 4, !tbaa !10
  store i32 0, i32* %incr_top, align 4, !tbaa !1
  br label %if.end.379

if.end.379:                                       ; preds = %if.else.365, %if.end
  br label %sw.epilog.622

sw.bb.380:                                        ; preds = %if.then.335
  %335 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t381 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %335, i32 0, i32 32
  %336 = load i32, i32* %comp_t381, align 4, !tbaa !13
  %337 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %compE382 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %337, i32 0, i32 22
  %338 = load i32, i32* %compE382, align 4, !tbaa !14
  %cmp383 = icmp eq i32 %336, %338
  br i1 %cmp383, label %if.then.385, label %if.else.407

if.then.385:                                      ; preds = %sw.bb.380
  %339 = load i32, i32* %i, align 4, !tbaa !1
  %sub386 = sub nsw i32 %339, 1
  %340 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %341 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %342 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %343 = load i8*, i8** %prog, align 8, !tbaa !5
  %call387 = call i32 @opj_pi_check_next_level(i32 %sub386, %struct.opj_cp* %340, i32 %341, i32 %342, i8* %343) #6
  %tobool388 = icmp ne i32 %call387, 0
  br i1 %tobool388, label %if.then.389, label %if.else.405

if.then.389:                                      ; preds = %if.then.385
  %344 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %compS390 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %344, i32 0, i32 18
  %345 = load i32, i32* %compS390, align 4, !tbaa !90
  %346 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t391 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %346, i32 0, i32 32
  store i32 %345, i32* %comp_t391, align 4, !tbaa !13
  %347 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t392 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %347, i32 0, i32 32
  %348 = load i32, i32* %comp_t392, align 4, !tbaa !13
  %349 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom393 = zext i32 %349 to i64
  %350 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx394 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %350, i64 %idxprom393
  %poc395 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx394, i32 0, i32 11
  %compno0396 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc395, i32 0, i32 1
  store i32 %348, i32* %compno0396, align 4, !tbaa !74
  %351 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t397 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %351, i32 0, i32 32
  %352 = load i32, i32* %comp_t397, align 4, !tbaa !13
  %add398 = add i32 %352, 1
  %353 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom399 = zext i32 %353 to i64
  %354 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx400 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %354, i64 %idxprom399
  %poc401 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx400, i32 0, i32 11
  %compno1402 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc401, i32 0, i32 4
  store i32 %add398, i32* %compno1402, align 4, !tbaa !80
  %355 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t403 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %355, i32 0, i32 32
  %356 = load i32, i32* %comp_t403, align 4, !tbaa !13
  %add404 = add i32 %356, 1
  store i32 %add404, i32* %comp_t403, align 4, !tbaa !13
  store i32 1, i32* %incr_top, align 4, !tbaa !1
  br label %if.end.406

if.else.405:                                      ; preds = %if.then.385
  store i32 0, i32* %incr_top, align 4, !tbaa !1
  br label %if.end.406

if.end.406:                                       ; preds = %if.else.405, %if.then.389
  br label %if.end.421

if.else.407:                                      ; preds = %sw.bb.380
  %357 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t408 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %357, i32 0, i32 32
  %358 = load i32, i32* %comp_t408, align 4, !tbaa !13
  %359 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom409 = zext i32 %359 to i64
  %360 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx410 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %360, i64 %idxprom409
  %poc411 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx410, i32 0, i32 11
  %compno0412 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc411, i32 0, i32 1
  store i32 %358, i32* %compno0412, align 4, !tbaa !74
  %361 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t413 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %361, i32 0, i32 32
  %362 = load i32, i32* %comp_t413, align 4, !tbaa !13
  %add414 = add i32 %362, 1
  %363 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom415 = zext i32 %363 to i64
  %364 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx416 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %364, i64 %idxprom415
  %poc417 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx416, i32 0, i32 11
  %compno1418 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc417, i32 0, i32 4
  store i32 %add414, i32* %compno1418, align 4, !tbaa !80
  %365 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %comp_t419 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %365, i32 0, i32 32
  %366 = load i32, i32* %comp_t419, align 4, !tbaa !13
  %add420 = add i32 %366, 1
  store i32 %add420, i32* %comp_t419, align 4, !tbaa !13
  store i32 0, i32* %incr_top, align 4, !tbaa !1
  br label %if.end.421

if.end.421:                                       ; preds = %if.else.407, %if.end.406
  br label %sw.epilog.622

sw.bb.422:                                        ; preds = %if.then.335
  %367 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t423 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %367, i32 0, i32 30
  %368 = load i32, i32* %lay_t423, align 4, !tbaa !15
  %369 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %layE424 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %369, i32 0, i32 20
  %370 = load i32, i32* %layE424, align 4, !tbaa !16
  %cmp425 = icmp eq i32 %368, %370
  br i1 %cmp425, label %if.then.427, label %if.else.449

if.then.427:                                      ; preds = %sw.bb.422
  %371 = load i32, i32* %i, align 4, !tbaa !1
  %sub428 = sub nsw i32 %371, 1
  %372 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %373 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %374 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %375 = load i8*, i8** %prog, align 8, !tbaa !5
  %call429 = call i32 @opj_pi_check_next_level(i32 %sub428, %struct.opj_cp* %372, i32 %373, i32 %374, i8* %375) #6
  %tobool430 = icmp ne i32 %call429, 0
  br i1 %tobool430, label %if.then.431, label %if.else.447

if.then.431:                                      ; preds = %if.then.427
  %376 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %layS432 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %376, i32 0, i32 16
  %377 = load i32, i32* %layS432, align 4, !tbaa !92
  %378 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t433 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %378, i32 0, i32 30
  store i32 %377, i32* %lay_t433, align 4, !tbaa !15
  %379 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t434 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %379, i32 0, i32 30
  %380 = load i32, i32* %lay_t434, align 4, !tbaa !15
  %381 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom435 = zext i32 %381 to i64
  %382 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx436 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %382, i64 %idxprom435
  %poc437 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx436, i32 0, i32 11
  %layno0438 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc437, i32 0, i32 5
  store i32 %380, i32* %layno0438, align 4, !tbaa !75
  %383 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t439 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %383, i32 0, i32 30
  %384 = load i32, i32* %lay_t439, align 4, !tbaa !15
  %add440 = add i32 %384, 1
  %385 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom441 = zext i32 %385 to i64
  %386 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx442 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %386, i64 %idxprom441
  %poc443 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx442, i32 0, i32 11
  %layno1444 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc443, i32 0, i32 2
  store i32 %add440, i32* %layno1444, align 4, !tbaa !82
  %387 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t445 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %387, i32 0, i32 30
  %388 = load i32, i32* %lay_t445, align 4, !tbaa !15
  %add446 = add i32 %388, 1
  store i32 %add446, i32* %lay_t445, align 4, !tbaa !15
  store i32 1, i32* %incr_top, align 4, !tbaa !1
  br label %if.end.448

if.else.447:                                      ; preds = %if.then.427
  store i32 0, i32* %incr_top, align 4, !tbaa !1
  br label %if.end.448

if.end.448:                                       ; preds = %if.else.447, %if.then.431
  br label %if.end.463

if.else.449:                                      ; preds = %sw.bb.422
  %389 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t450 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %389, i32 0, i32 30
  %390 = load i32, i32* %lay_t450, align 4, !tbaa !15
  %391 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom451 = zext i32 %391 to i64
  %392 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx452 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %392, i64 %idxprom451
  %poc453 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx452, i32 0, i32 11
  %layno0454 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc453, i32 0, i32 5
  store i32 %390, i32* %layno0454, align 4, !tbaa !75
  %393 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t455 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %393, i32 0, i32 30
  %394 = load i32, i32* %lay_t455, align 4, !tbaa !15
  %add456 = add i32 %394, 1
  %395 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom457 = zext i32 %395 to i64
  %396 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx458 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %396, i64 %idxprom457
  %poc459 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx458, i32 0, i32 11
  %layno1460 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc459, i32 0, i32 2
  store i32 %add456, i32* %layno1460, align 4, !tbaa !82
  %397 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %lay_t461 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %397, i32 0, i32 30
  %398 = load i32, i32* %lay_t461, align 4, !tbaa !15
  %add462 = add i32 %398, 1
  store i32 %add462, i32* %lay_t461, align 4, !tbaa !15
  store i32 0, i32* %incr_top, align 4, !tbaa !1
  br label %if.end.463

if.end.463:                                       ; preds = %if.else.449, %if.end.448
  br label %sw.epilog.622

sw.bb.464:                                        ; preds = %if.then.335
  %399 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prg465 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %399, i32 0, i32 9
  %400 = load i32, i32* %prg465, align 4, !tbaa !17
  switch i32 %400, label %sw.default.508 [
    i32 0, label %sw.bb.466
    i32 1, label %sw.bb.466
  ]

sw.bb.466:                                        ; preds = %sw.bb.464, %sw.bb.464
  %401 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t467 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %401, i32 0, i32 33
  %402 = load i32, i32* %prc_t467, align 4, !tbaa !18
  %403 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prcE468 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %403, i32 0, i32 23
  %404 = load i32, i32* %prcE468, align 4, !tbaa !19
  %cmp469 = icmp eq i32 %402, %404
  br i1 %cmp469, label %if.then.471, label %if.else.493

if.then.471:                                      ; preds = %sw.bb.466
  %405 = load i32, i32* %i, align 4, !tbaa !1
  %sub472 = sub nsw i32 %405, 1
  %406 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %407 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %408 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %409 = load i8*, i8** %prog, align 8, !tbaa !5
  %call473 = call i32 @opj_pi_check_next_level(i32 %sub472, %struct.opj_cp* %406, i32 %407, i32 %408, i8* %409) #6
  %tobool474 = icmp ne i32 %call473, 0
  br i1 %tobool474, label %if.then.475, label %if.else.491

if.then.475:                                      ; preds = %if.then.471
  %410 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prcS476 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %410, i32 0, i32 19
  %411 = load i32, i32* %prcS476, align 4, !tbaa !94
  %412 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t477 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %412, i32 0, i32 33
  store i32 %411, i32* %prc_t477, align 4, !tbaa !18
  %413 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t478 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %413, i32 0, i32 33
  %414 = load i32, i32* %prc_t478, align 4, !tbaa !18
  %415 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom479 = zext i32 %415 to i64
  %416 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx480 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %416, i64 %idxprom479
  %poc481 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx480, i32 0, i32 11
  %precno0482 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc481, i32 0, i32 6
  store i32 %414, i32* %precno0482, align 4, !tbaa !76
  %417 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t483 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %417, i32 0, i32 33
  %418 = load i32, i32* %prc_t483, align 4, !tbaa !18
  %add484 = add i32 %418, 1
  %419 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom485 = zext i32 %419 to i64
  %420 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx486 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %420, i64 %idxprom485
  %poc487 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx486, i32 0, i32 11
  %precno1488 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc487, i32 0, i32 7
  store i32 %add484, i32* %precno1488, align 4, !tbaa !83
  %421 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t489 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %421, i32 0, i32 33
  %422 = load i32, i32* %prc_t489, align 4, !tbaa !18
  %add490 = add i32 %422, 1
  store i32 %add490, i32* %prc_t489, align 4, !tbaa !18
  store i32 1, i32* %incr_top, align 4, !tbaa !1
  br label %if.end.492

if.else.491:                                      ; preds = %if.then.471
  store i32 0, i32* %incr_top, align 4, !tbaa !1
  br label %if.end.492

if.end.492:                                       ; preds = %if.else.491, %if.then.475
  br label %if.end.507

if.else.493:                                      ; preds = %sw.bb.466
  %423 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t494 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %423, i32 0, i32 33
  %424 = load i32, i32* %prc_t494, align 4, !tbaa !18
  %425 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom495 = zext i32 %425 to i64
  %426 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx496 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %426, i64 %idxprom495
  %poc497 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx496, i32 0, i32 11
  %precno0498 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc497, i32 0, i32 6
  store i32 %424, i32* %precno0498, align 4, !tbaa !76
  %427 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t499 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %427, i32 0, i32 33
  %428 = load i32, i32* %prc_t499, align 4, !tbaa !18
  %add500 = add i32 %428, 1
  %429 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom501 = zext i32 %429 to i64
  %430 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx502 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %430, i64 %idxprom501
  %poc503 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx502, i32 0, i32 11
  %precno1504 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc503, i32 0, i32 7
  store i32 %add500, i32* %precno1504, align 4, !tbaa !83
  %431 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %prc_t505 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %431, i32 0, i32 33
  %432 = load i32, i32* %prc_t505, align 4, !tbaa !18
  %add506 = add i32 %432, 1
  store i32 %add506, i32* %prc_t505, align 4, !tbaa !18
  store i32 0, i32* %incr_top, align 4, !tbaa !1
  br label %if.end.507

if.end.507:                                       ; preds = %if.else.493, %if.end.492
  br label %sw.epilog.621

sw.default.508:                                   ; preds = %sw.bb.464
  %433 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t509 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %433, i32 0, i32 34
  %434 = load i32, i32* %tx0_t509, align 4, !tbaa !20
  %435 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %txE510 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %435, i32 0, i32 25
  %436 = load i32, i32* %txE510, align 4, !tbaa !21
  %cmp511 = icmp uge i32 %434, %436
  br i1 %cmp511, label %if.then.513, label %if.else.598

if.then.513:                                      ; preds = %sw.default.508
  %437 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t514 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %437, i32 0, i32 35
  %438 = load i32, i32* %ty0_t514, align 4, !tbaa !22
  %439 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tyE515 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %439, i32 0, i32 27
  %440 = load i32, i32* %tyE515, align 4, !tbaa !23
  %cmp516 = icmp uge i32 %438, %440
  br i1 %cmp516, label %if.then.518, label %if.else.548

if.then.518:                                      ; preds = %if.then.513
  %441 = load i32, i32* %i, align 4, !tbaa !1
  %sub519 = sub nsw i32 %441, 1
  %442 = load %struct.opj_cp*, %struct.opj_cp** %cp.addr, align 8, !tbaa !5
  %443 = load i32, i32* %tileno.addr, align 4, !tbaa !1
  %444 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %445 = load i8*, i8** %prog, align 8, !tbaa !5
  %call520 = call i32 @opj_pi_check_next_level(i32 %sub519, %struct.opj_cp* %442, i32 %443, i32 %444, i8* %445) #6
  %tobool521 = icmp ne i32 %call520, 0
  br i1 %tobool521, label %if.then.522, label %if.else.546

if.then.522:                                      ; preds = %if.then.518
  %446 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tyS523 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %446, i32 0, i32 26
  %447 = load i32, i32* %tyS523, align 4, !tbaa !96
  %448 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t524 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %448, i32 0, i32 35
  store i32 %447, i32* %ty0_t524, align 4, !tbaa !22
  %449 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t525 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %449, i32 0, i32 35
  %450 = load i32, i32* %ty0_t525, align 4, !tbaa !22
  %451 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom526 = zext i32 %451 to i64
  %452 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx527 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %452, i64 %idxprom526
  %poc528 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx527, i32 0, i32 11
  %ty0529 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc528, i32 0, i32 14
  store i32 %450, i32* %ty0529, align 4, !tbaa !100
  %453 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t530 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %453, i32 0, i32 35
  %454 = load i32, i32* %ty0_t530, align 4, !tbaa !22
  %455 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dy531 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %455, i32 0, i32 29
  %456 = load i32, i32* %dy531, align 4, !tbaa !98
  %add532 = add i32 %454, %456
  %457 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t533 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %457, i32 0, i32 35
  %458 = load i32, i32* %ty0_t533, align 4, !tbaa !22
  %459 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dy534 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %459, i32 0, i32 29
  %460 = load i32, i32* %dy534, align 4, !tbaa !98
  %rem535 = urem i32 %458, %460
  %sub536 = sub i32 %add532, %rem535
  %461 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom537 = zext i32 %461 to i64
  %462 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx538 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %462, i64 %idxprom537
  %poc539 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx538, i32 0, i32 11
  %ty1540 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc539, i32 0, i32 15
  store i32 %sub536, i32* %ty1540, align 4, !tbaa !102
  %463 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom541 = zext i32 %463 to i64
  %464 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx542 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %464, i64 %idxprom541
  %poc543 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx542, i32 0, i32 11
  %ty1544 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc543, i32 0, i32 15
  %465 = load i32, i32* %ty1544, align 4, !tbaa !102
  %466 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t545 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %466, i32 0, i32 35
  store i32 %465, i32* %ty0_t545, align 4, !tbaa !22
  store i32 1, i32* %incr_top, align 4, !tbaa !1
  store i32 1, i32* %resetX, align 4, !tbaa !1
  br label %if.end.547

if.else.546:                                      ; preds = %if.then.518
  store i32 0, i32* %incr_top, align 4, !tbaa !1
  store i32 0, i32* %resetX, align 4, !tbaa !1
  br label %if.end.547

if.end.547:                                       ; preds = %if.else.546, %if.then.522
  br label %if.end.570

if.else.548:                                      ; preds = %if.then.513
  %467 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t549 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %467, i32 0, i32 35
  %468 = load i32, i32* %ty0_t549, align 4, !tbaa !22
  %469 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom550 = zext i32 %469 to i64
  %470 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx551 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %470, i64 %idxprom550
  %poc552 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx551, i32 0, i32 11
  %ty0553 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc552, i32 0, i32 14
  store i32 %468, i32* %ty0553, align 4, !tbaa !100
  %471 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t554 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %471, i32 0, i32 35
  %472 = load i32, i32* %ty0_t554, align 4, !tbaa !22
  %473 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dy555 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %473, i32 0, i32 29
  %474 = load i32, i32* %dy555, align 4, !tbaa !98
  %add556 = add i32 %472, %474
  %475 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t557 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %475, i32 0, i32 35
  %476 = load i32, i32* %ty0_t557, align 4, !tbaa !22
  %477 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dy558 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %477, i32 0, i32 29
  %478 = load i32, i32* %dy558, align 4, !tbaa !98
  %rem559 = urem i32 %476, %478
  %sub560 = sub i32 %add556, %rem559
  %479 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom561 = zext i32 %479 to i64
  %480 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx562 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %480, i64 %idxprom561
  %poc563 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx562, i32 0, i32 11
  %ty1564 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc563, i32 0, i32 15
  store i32 %sub560, i32* %ty1564, align 4, !tbaa !102
  %481 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom565 = zext i32 %481 to i64
  %482 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx566 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %482, i64 %idxprom565
  %poc567 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx566, i32 0, i32 11
  %ty1568 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc567, i32 0, i32 15
  %483 = load i32, i32* %ty1568, align 4, !tbaa !102
  %484 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %ty0_t569 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %484, i32 0, i32 35
  store i32 %483, i32* %ty0_t569, align 4, !tbaa !22
  store i32 0, i32* %incr_top, align 4, !tbaa !1
  store i32 1, i32* %resetX, align 4, !tbaa !1
  br label %if.end.570

if.end.570:                                       ; preds = %if.else.548, %if.end.547
  %485 = load i32, i32* %resetX, align 4, !tbaa !1
  %cmp571 = icmp eq i32 %485, 1
  br i1 %cmp571, label %if.then.573, label %if.end.597

if.then.573:                                      ; preds = %if.end.570
  %486 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %txS574 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %486, i32 0, i32 24
  %487 = load i32, i32* %txS574, align 4, !tbaa !95
  %488 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t575 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %488, i32 0, i32 34
  store i32 %487, i32* %tx0_t575, align 4, !tbaa !20
  %489 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t576 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %489, i32 0, i32 34
  %490 = load i32, i32* %tx0_t576, align 4, !tbaa !20
  %491 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom577 = zext i32 %491 to i64
  %492 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx578 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %492, i64 %idxprom577
  %poc579 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx578, i32 0, i32 11
  %tx0580 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc579, i32 0, i32 12
  store i32 %490, i32* %tx0580, align 4, !tbaa !99
  %493 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t581 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %493, i32 0, i32 34
  %494 = load i32, i32* %tx0_t581, align 4, !tbaa !20
  %495 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dx582 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %495, i32 0, i32 28
  %496 = load i32, i32* %dx582, align 4, !tbaa !97
  %add583 = add i32 %494, %496
  %497 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t584 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %497, i32 0, i32 34
  %498 = load i32, i32* %tx0_t584, align 4, !tbaa !20
  %499 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dx585 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %499, i32 0, i32 28
  %500 = load i32, i32* %dx585, align 4, !tbaa !97
  %rem586 = urem i32 %498, %500
  %sub587 = sub i32 %add583, %rem586
  %501 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom588 = zext i32 %501 to i64
  %502 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx589 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %502, i64 %idxprom588
  %poc590 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx589, i32 0, i32 11
  %tx1591 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc590, i32 0, i32 13
  store i32 %sub587, i32* %tx1591, align 4, !tbaa !101
  %503 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom592 = zext i32 %503 to i64
  %504 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx593 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %504, i64 %idxprom592
  %poc594 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx593, i32 0, i32 11
  %tx1595 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc594, i32 0, i32 13
  %505 = load i32, i32* %tx1595, align 4, !tbaa !101
  %506 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t596 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %506, i32 0, i32 34
  store i32 %505, i32* %tx0_t596, align 4, !tbaa !20
  br label %if.end.597

if.end.597:                                       ; preds = %if.then.573, %if.end.570
  br label %if.end.620

if.else.598:                                      ; preds = %sw.default.508
  %507 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t599 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %507, i32 0, i32 34
  %508 = load i32, i32* %tx0_t599, align 4, !tbaa !20
  %509 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom600 = zext i32 %509 to i64
  %510 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx601 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %510, i64 %idxprom600
  %poc602 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx601, i32 0, i32 11
  %tx0603 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc602, i32 0, i32 12
  store i32 %508, i32* %tx0603, align 4, !tbaa !99
  %511 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t604 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %511, i32 0, i32 34
  %512 = load i32, i32* %tx0_t604, align 4, !tbaa !20
  %513 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dx605 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %513, i32 0, i32 28
  %514 = load i32, i32* %dx605, align 4, !tbaa !97
  %add606 = add i32 %512, %514
  %515 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t607 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %515, i32 0, i32 34
  %516 = load i32, i32* %tx0_t607, align 4, !tbaa !20
  %517 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %dx608 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %517, i32 0, i32 28
  %518 = load i32, i32* %dx608, align 4, !tbaa !97
  %rem609 = urem i32 %516, %518
  %sub610 = sub i32 %add606, %rem609
  %519 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom611 = zext i32 %519 to i64
  %520 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx612 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %520, i64 %idxprom611
  %poc613 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx612, i32 0, i32 11
  %tx1614 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc613, i32 0, i32 13
  store i32 %sub610, i32* %tx1614, align 4, !tbaa !101
  %521 = load i32, i32* %pino.addr, align 4, !tbaa !1
  %idxprom615 = zext i32 %521 to i64
  %522 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %arrayidx616 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %522, i64 %idxprom615
  %poc617 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %arrayidx616, i32 0, i32 11
  %tx1618 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc617, i32 0, i32 13
  %523 = load i32, i32* %tx1618, align 4, !tbaa !101
  %524 = load %struct.opj_poc*, %struct.opj_poc** %tcp, align 8, !tbaa !5
  %tx0_t619 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %524, i32 0, i32 34
  store i32 %523, i32* %tx0_t619, align 4, !tbaa !20
  store i32 0, i32* %incr_top, align 4, !tbaa !1
  br label %if.end.620

if.end.620:                                       ; preds = %if.else.598, %if.end.597
  br label %sw.epilog.621

sw.epilog.621:                                    ; preds = %if.end.620, %if.end.507
  br label %sw.epilog.622

sw.epilog.622:                                    ; preds = %if.then.335, %sw.epilog.621, %if.end.463, %if.end.421, %if.end.379
  br label %if.end.623

if.end.623:                                       ; preds = %sw.epilog.622, %sw.epilog.332
  br label %for.inc.624

for.inc.624:                                      ; preds = %if.end.623
  %525 = load i32, i32* %i, align 4, !tbaa !1
  %dec625 = add nsw i32 %525, -1
  store i32 %dec625, i32* %i, align 4, !tbaa !1
  br label %for.cond.241

for.end.626:                                      ; preds = %for.cond.241
  br label %if.end.627

if.end.627:                                       ; preds = %for.end.626, %for.end.239
  br label %if.end.628

if.end.628:                                       ; preds = %if.end.627, %if.then
  %526 = bitcast %struct.opj_poc** %tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %526) #1
  %527 = bitcast %struct.opj_tcp** %tcps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %527) #1
  %528 = bitcast i32* %resetX to i8*
  call void @llvm.lifetime.end(i64 4, i8* %528) #1
  %529 = bitcast i32* %incr_top to i8*
  call void @llvm.lifetime.end(i64 4, i8* %529) #1
  %530 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %530) #1
  %531 = bitcast i8** %prog to i8*
  call void @llvm.lifetime.end(i64 8, i8* %531) #1
  ret void
}

declare i8* @opj_j2k_convert_progression_order(i32) #4

; Function Attrs: nounwind uwtable
define void @opj_pi_update_encoding_parameters(%struct.opj_image* %p_image, %struct.opj_cp* %p_cp, i32 %p_tile_no) #0 {
entry:
  %p_image.addr = alloca %struct.opj_image*, align 8
  %p_cp.addr = alloca %struct.opj_cp*, align 8
  %p_tile_no.addr = alloca i32, align 4
  %l_max_res = alloca i32, align 4
  %l_max_prec = alloca i32, align 4
  %l_tx0 = alloca i32, align 4
  %l_tx1 = alloca i32, align 4
  %l_ty0 = alloca i32, align 4
  %l_ty1 = alloca i32, align 4
  %l_dx_min = alloca i32, align 4
  %l_dy_min = alloca i32, align 4
  %l_tcp = alloca %struct.opj_tcp*, align 8
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  store %struct.opj_cp* %p_cp, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  store i32 %p_tile_no, i32* %p_tile_no.addr, align 4, !tbaa !1
  %0 = bitcast i32* %l_max_res to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %l_max_prec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %l_tx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %l_tx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %l_ty0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %l_ty1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %l_dx_min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %l_dy_min to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.opj_tcp* null, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %9 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.opj_cp* %9, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 1836, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_pi_update_encoding_parameters, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  %11 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.opj_image* %11, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 1837, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_pi_update_encoding_parameters, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %12, %cond.true.2
  %13 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %14 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tw = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %14, i32 0, i32 6
  %15 = load i32, i32* %tw, align 4, !tbaa !24
  %16 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %th = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %16, i32 0, i32 7
  %17 = load i32, i32* %th, align 4, !tbaa !25
  %mul = mul i32 %15, %17
  %cmp5 = icmp ult i32 %13, %mul
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 1838, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_pi_update_encoding_parameters, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %18, %cond.true.6
  %19 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %idxprom = zext i32 %19 to i64
  %20 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tcps = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %20, i32 0, i32 17
  %21 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %21, i64 %idxprom
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %22 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %23 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %24 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  call void @opj_get_encoding_parameters(%struct.opj_image* %22, %struct.opj_cp* %23, i32 %24, i32* %l_tx0, i32* %l_tx1, i32* %l_ty0, i32* %l_ty1, i32* %l_dx_min, i32* %l_dy_min, i32* %l_max_prec, i32* %l_max_res) #6
  %25 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %POC = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %25, i32 0, i32 26
  %bf.load = load i8, i8* %POC, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.8
  %26 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %27 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %28 = load i32, i32* %l_tx0, align 4, !tbaa !1
  %29 = load i32, i32* %l_tx1, align 4, !tbaa !1
  %30 = load i32, i32* %l_ty0, align 4, !tbaa !1
  %31 = load i32, i32* %l_ty1, align 4, !tbaa !1
  %32 = load i32, i32* %l_max_prec, align 4, !tbaa !1
  %33 = load i32, i32* %l_max_res, align 4, !tbaa !1
  %34 = load i32, i32* %l_dx_min, align 4, !tbaa !1
  %35 = load i32, i32* %l_dy_min, align 4, !tbaa !1
  call void @opj_pi_update_encode_poc_and_final(%struct.opj_cp* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35) #6
  br label %if.end

if.else:                                          ; preds = %cond.end.8
  %36 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %37 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %37, i32 0, i32 4
  %38 = load i32, i32* %numcomps, align 4, !tbaa !28
  %39 = load i32, i32* %p_tile_no.addr, align 4, !tbaa !1
  %40 = load i32, i32* %l_tx0, align 4, !tbaa !1
  %41 = load i32, i32* %l_tx1, align 4, !tbaa !1
  %42 = load i32, i32* %l_ty0, align 4, !tbaa !1
  %43 = load i32, i32* %l_ty1, align 4, !tbaa !1
  %44 = load i32, i32* %l_max_prec, align 4, !tbaa !1
  %45 = load i32, i32* %l_max_res, align 4, !tbaa !1
  %46 = load i32, i32* %l_dx_min, align 4, !tbaa !1
  %47 = load i32, i32* %l_dy_min, align 4, !tbaa !1
  call void @opj_pi_update_encode_not_poc(%struct.opj_cp* %36, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %48 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %l_dy_min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %l_dx_min to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %l_ty1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %l_ty0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %l_tx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %l_tx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %l_max_prec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %l_max_res to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_get_encoding_parameters(%struct.opj_image* %p_image, %struct.opj_cp* %p_cp, i32 %p_tileno, i32* %p_tx0, i32* %p_tx1, i32* %p_ty0, i32* %p_ty1, i32* %p_dx_min, i32* %p_dy_min, i32* %p_max_prec, i32* %p_max_res) #0 {
entry:
  %p_image.addr = alloca %struct.opj_image*, align 8
  %p_cp.addr = alloca %struct.opj_cp*, align 8
  %p_tileno.addr = alloca i32, align 4
  %p_tx0.addr = alloca i32*, align 8
  %p_tx1.addr = alloca i32*, align 8
  %p_ty0.addr = alloca i32*, align 8
  %p_ty1.addr = alloca i32*, align 8
  %p_dx_min.addr = alloca i32*, align 8
  %p_dy_min.addr = alloca i32*, align 8
  %p_max_prec.addr = alloca i32*, align 8
  %p_max_res.addr = alloca i32*, align 8
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %l_tcp = alloca %struct.opj_tcp*, align 8
  %l_tccp = alloca %struct.opj_tccp*, align 8
  %l_img_comp = alloca %struct.opj_image_comp*, align 8
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %l_level_no = alloca i32, align 4
  %l_rx0 = alloca i32, align 4
  %l_ry0 = alloca i32, align 4
  %l_rx1 = alloca i32, align 4
  %l_ry1 = alloca i32, align 4
  %l_px0 = alloca i32, align 4
  %l_py0 = alloca i32, align 4
  %l_px1 = alloca i32, align 4
  %py1 = alloca i32, align 4
  %l_pdx = alloca i32, align 4
  %l_pdy = alloca i32, align 4
  %l_pw = alloca i32, align 4
  %l_ph = alloca i32, align 4
  %l_product = alloca i32, align 4
  %l_tcx0 = alloca i32, align 4
  %l_tcy0 = alloca i32, align 4
  %l_tcx1 = alloca i32, align 4
  %l_tcy1 = alloca i32, align 4
  %l_dx = alloca i32, align 4
  %l_dy = alloca i32, align 4
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  store %struct.opj_cp* %p_cp, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  store i32 %p_tileno, i32* %p_tileno.addr, align 4, !tbaa !1
  store i32* %p_tx0, i32** %p_tx0.addr, align 8, !tbaa !5
  store i32* %p_tx1, i32** %p_tx1.addr, align 8, !tbaa !5
  store i32* %p_ty0, i32** %p_ty0.addr, align 8, !tbaa !5
  store i32* %p_ty1, i32** %p_ty1.addr, align 8, !tbaa !5
  store i32* %p_dx_min, i32** %p_dx_min.addr, align 8, !tbaa !5
  store i32* %p_dy_min, i32** %p_dy_min.addr, align 8, !tbaa !5
  store i32* %p_max_prec, i32** %p_max_prec.addr, align 8, !tbaa !5
  store i32* %p_max_res, i32** %p_max_res.addr, align 8, !tbaa !5
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.opj_tcp* null, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %3 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.opj_tccp* null, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %4 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %5 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.opj_cp* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 572, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @__PRETTY_FUNCTION__.opj_get_encoding_parameters, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.opj_image* %9, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 573, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @__PRETTY_FUNCTION__.opj_get_encoding_parameters, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %10, %cond.true.2
  %11 = load i32, i32* %p_tileno.addr, align 4, !tbaa !1
  %12 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tw = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %12, i32 0, i32 6
  %13 = load i32, i32* %tw, align 4, !tbaa !24
  %14 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %th = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %14, i32 0, i32 7
  %15 = load i32, i32* %th, align 4, !tbaa !25
  %mul = mul i32 %13, %15
  %cmp5 = icmp ult i32 %11, %mul
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i32 574, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @__PRETTY_FUNCTION__.opj_get_encoding_parameters, i32 0, i32 0)) #7
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %16, %cond.true.6
  %17 = load i32, i32* %p_tileno.addr, align 4, !tbaa !1
  %idxprom = zext i32 %17 to i64
  %18 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tcps = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %18, i32 0, i32 17
  %19 = load %struct.opj_tcp*, %struct.opj_tcp** %tcps, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %19, i64 %idxprom
  store %struct.opj_tcp* %arrayidx, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %20 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %20, i32 0, i32 6
  %21 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps, align 8, !tbaa !34
  store %struct.opj_image_comp* %21, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %22 = load %struct.opj_tcp*, %struct.opj_tcp** %l_tcp, align 8, !tbaa !5
  %tccps = getelementptr inbounds %struct.opj_tcp, %struct.opj_tcp* %22, i32 0, i32 13
  %23 = load %struct.opj_tccp*, %struct.opj_tccp** %tccps, align 8, !tbaa !35
  store %struct.opj_tccp* %23, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %24 = load i32, i32* %p_tileno.addr, align 4, !tbaa !1
  %25 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tw9 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %25, i32 0, i32 6
  %26 = load i32, i32* %tw9, align 4, !tbaa !24
  %rem = urem i32 %24, %26
  store i32 %rem, i32* %p, align 4, !tbaa !1
  %27 = load i32, i32* %p_tileno.addr, align 4, !tbaa !1
  %28 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tw10 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %28, i32 0, i32 6
  %29 = load i32, i32* %tw10, align 4, !tbaa !24
  %div = udiv i32 %27, %29
  store i32 %div, i32* %q, align 4, !tbaa !1
  %30 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tx0 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %30, i32 0, i32 1
  %31 = load i32, i32* %tx0, align 4, !tbaa !61
  %32 = load i32, i32* %p, align 4, !tbaa !1
  %33 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tdx = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %33, i32 0, i32 3
  %34 = load i32, i32* %tdx, align 4, !tbaa !62
  %mul11 = mul i32 %32, %34
  %add = add i32 %31, %mul11
  %35 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %x0 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %35, i32 0, i32 0
  %36 = load i32, i32* %x0, align 4, !tbaa !63
  %call = call i32 @opj_int_max(i32 %add, i32 %36) #6
  %37 = load i32*, i32** %p_tx0.addr, align 8, !tbaa !5
  store i32 %call, i32* %37, align 4, !tbaa !1
  %38 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tx012 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %38, i32 0, i32 1
  %39 = load i32, i32* %tx012, align 4, !tbaa !61
  %40 = load i32, i32* %p, align 4, !tbaa !1
  %add13 = add i32 %40, 1
  %41 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tdx14 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %41, i32 0, i32 3
  %42 = load i32, i32* %tdx14, align 4, !tbaa !62
  %mul15 = mul i32 %add13, %42
  %add16 = add i32 %39, %mul15
  %43 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %x1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %43, i32 0, i32 2
  %44 = load i32, i32* %x1, align 4, !tbaa !64
  %call17 = call i32 @opj_int_min(i32 %add16, i32 %44) #6
  %45 = load i32*, i32** %p_tx1.addr, align 8, !tbaa !5
  store i32 %call17, i32* %45, align 4, !tbaa !1
  %46 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %ty0 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %46, i32 0, i32 2
  %47 = load i32, i32* %ty0, align 4, !tbaa !65
  %48 = load i32, i32* %q, align 4, !tbaa !1
  %49 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tdy = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %49, i32 0, i32 4
  %50 = load i32, i32* %tdy, align 4, !tbaa !66
  %mul18 = mul i32 %48, %50
  %add19 = add i32 %47, %mul18
  %51 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %y0 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %51, i32 0, i32 1
  %52 = load i32, i32* %y0, align 4, !tbaa !67
  %call20 = call i32 @opj_int_max(i32 %add19, i32 %52) #6
  %53 = load i32*, i32** %p_ty0.addr, align 8, !tbaa !5
  store i32 %call20, i32* %53, align 4, !tbaa !1
  %54 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %ty021 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %54, i32 0, i32 2
  %55 = load i32, i32* %ty021, align 4, !tbaa !65
  %56 = load i32, i32* %q, align 4, !tbaa !1
  %add22 = add i32 %56, 1
  %57 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !5
  %tdy23 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %57, i32 0, i32 4
  %58 = load i32, i32* %tdy23, align 4, !tbaa !66
  %mul24 = mul i32 %add22, %58
  %add25 = add i32 %55, %mul24
  %59 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %y1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %59, i32 0, i32 3
  %60 = load i32, i32* %y1, align 4, !tbaa !68
  %call26 = call i32 @opj_int_min(i32 %add25, i32 %60) #6
  %61 = load i32*, i32** %p_ty1.addr, align 8, !tbaa !5
  store i32 %call26, i32* %61, align 4, !tbaa !1
  %62 = load i32*, i32** %p_max_prec.addr, align 8, !tbaa !5
  store i32 0, i32* %62, align 4, !tbaa !1
  %63 = load i32*, i32** %p_max_res.addr, align 8, !tbaa !5
  store i32 0, i32* %63, align 4, !tbaa !1
  %64 = load i32*, i32** %p_dx_min.addr, align 8, !tbaa !5
  store i32 2147483647, i32* %64, align 4, !tbaa !1
  %65 = load i32*, i32** %p_dy_min.addr, align 8, !tbaa !5
  store i32 2147483647, i32* %65, align 4, !tbaa !1
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.90, %cond.end.8
  %66 = load i32, i32* %compno, align 4, !tbaa !1
  %67 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %67, i32 0, i32 4
  %68 = load i32, i32* %numcomps, align 4, !tbaa !28
  %cmp27 = icmp ult i32 %66, %68
  br i1 %cmp27, label %for.body, label %for.end.92

for.body:                                         ; preds = %for.cond
  %69 = bitcast i32* %l_level_no to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = bitcast i32* %l_rx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = bitcast i32* %l_ry0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = bitcast i32* %l_rx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = bitcast i32* %l_ry1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = bitcast i32* %l_px0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = bitcast i32* %l_py0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = bitcast i32* %l_px1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = bitcast i32* %py1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = bitcast i32* %l_pdx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = bitcast i32* %l_pdy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %80 = bitcast i32* %l_pw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = bitcast i32* %l_ph to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = bitcast i32* %l_product to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  %83 = bitcast i32* %l_tcx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = bitcast i32* %l_tcy0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = bitcast i32* %l_tcx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #1
  %86 = bitcast i32* %l_tcy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  %87 = load i32*, i32** %p_tx0.addr, align 8, !tbaa !5
  %88 = load i32, i32* %87, align 4, !tbaa !1
  %89 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %89, i32 0, i32 0
  %90 = load i32, i32* %dx, align 4, !tbaa !47
  %call28 = call i32 @opj_int_ceildiv(i32 %88, i32 %90) #6
  store i32 %call28, i32* %l_tcx0, align 4, !tbaa !1
  %91 = load i32*, i32** %p_ty0.addr, align 8, !tbaa !5
  %92 = load i32, i32* %91, align 4, !tbaa !1
  %93 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dy = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %93, i32 0, i32 1
  %94 = load i32, i32* %dy, align 4, !tbaa !51
  %call29 = call i32 @opj_int_ceildiv(i32 %92, i32 %94) #6
  store i32 %call29, i32* %l_tcy0, align 4, !tbaa !1
  %95 = load i32*, i32** %p_tx1.addr, align 8, !tbaa !5
  %96 = load i32, i32* %95, align 4, !tbaa !1
  %97 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dx30 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %97, i32 0, i32 0
  %98 = load i32, i32* %dx30, align 4, !tbaa !47
  %call31 = call i32 @opj_int_ceildiv(i32 %96, i32 %98) #6
  store i32 %call31, i32* %l_tcx1, align 4, !tbaa !1
  %99 = load i32*, i32** %p_ty1.addr, align 8, !tbaa !5
  %100 = load i32, i32* %99, align 4, !tbaa !1
  %101 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dy32 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %101, i32 0, i32 1
  %102 = load i32, i32* %dy32, align 4, !tbaa !51
  %call33 = call i32 @opj_int_ceildiv(i32 %100, i32 %102) #6
  store i32 %call33, i32* %l_tcy1, align 4, !tbaa !1
  %103 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %103, i32 0, i32 1
  %104 = load i32, i32* %numresolutions, align 4, !tbaa !59
  %105 = load i32*, i32** %p_max_res.addr, align 8, !tbaa !5
  %106 = load i32, i32* %105, align 4, !tbaa !1
  %cmp34 = icmp ugt i32 %104, %106
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %107 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions35 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %107, i32 0, i32 1
  %108 = load i32, i32* %numresolutions35, align 4, !tbaa !59
  %109 = load i32*, i32** %p_max_res.addr, align 8, !tbaa !5
  store i32 %108, i32* %109, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %if.end
  %110 = load i32, i32* %resno, align 4, !tbaa !1
  %111 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions37 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %111, i32 0, i32 1
  %112 = load i32, i32* %numresolutions37, align 4, !tbaa !59
  %cmp38 = icmp ult i32 %110, %112
  br i1 %cmp38, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %for.cond.36
  %113 = bitcast i32* %l_dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  %114 = bitcast i32* %l_dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #1
  %115 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom40 = zext i32 %115 to i64
  %116 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %prcw = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %116, i32 0, i32 10
  %arrayidx41 = getelementptr inbounds [33 x i32], [33 x i32]* %prcw, i32 0, i64 %idxprom40
  %117 = load i32, i32* %arrayidx41, align 4, !tbaa !1
  store i32 %117, i32* %l_pdx, align 4, !tbaa !1
  %118 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom42 = zext i32 %118 to i64
  %119 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %prch = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %119, i32 0, i32 11
  %arrayidx43 = getelementptr inbounds [33 x i32], [33 x i32]* %prch, i32 0, i64 %idxprom42
  %120 = load i32, i32* %arrayidx43, align 4, !tbaa !1
  store i32 %120, i32* %l_pdy, align 4, !tbaa !1
  %121 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dx44 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %121, i32 0, i32 0
  %122 = load i32, i32* %dx44, align 4, !tbaa !47
  %123 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %124 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions45 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %124, i32 0, i32 1
  %125 = load i32, i32* %numresolutions45, align 4, !tbaa !59
  %add46 = add i32 %123, %125
  %sub = sub i32 %add46, 1
  %126 = load i32, i32* %resno, align 4, !tbaa !1
  %sub47 = sub i32 %sub, %126
  %shl = shl i32 1, %sub47
  %mul48 = mul i32 %122, %shl
  store i32 %mul48, i32* %l_dx, align 4, !tbaa !1
  %127 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %dy49 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %127, i32 0, i32 1
  %128 = load i32, i32* %dy49, align 4, !tbaa !51
  %129 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %130 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions50 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %130, i32 0, i32 1
  %131 = load i32, i32* %numresolutions50, align 4, !tbaa !59
  %add51 = add i32 %129, %131
  %sub52 = sub i32 %add51, 1
  %132 = load i32, i32* %resno, align 4, !tbaa !1
  %sub53 = sub i32 %sub52, %132
  %shl54 = shl i32 1, %sub53
  %mul55 = mul i32 %128, %shl54
  store i32 %mul55, i32* %l_dy, align 4, !tbaa !1
  %133 = load i32*, i32** %p_dx_min.addr, align 8, !tbaa !5
  %134 = load i32, i32* %133, align 4, !tbaa !1
  %135 = load i32, i32* %l_dx, align 4, !tbaa !1
  %call56 = call i32 @opj_uint_min(i32 %134, i32 %135) #6
  %136 = load i32*, i32** %p_dx_min.addr, align 8, !tbaa !5
  store i32 %call56, i32* %136, align 4, !tbaa !1
  %137 = load i32*, i32** %p_dy_min.addr, align 8, !tbaa !5
  %138 = load i32, i32* %137, align 4, !tbaa !1
  %139 = load i32, i32* %l_dy, align 4, !tbaa !1
  %call57 = call i32 @opj_uint_min(i32 %138, i32 %139) #6
  %140 = load i32*, i32** %p_dy_min.addr, align 8, !tbaa !5
  store i32 %call57, i32* %140, align 4, !tbaa !1
  %141 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %numresolutions58 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %141, i32 0, i32 1
  %142 = load i32, i32* %numresolutions58, align 4, !tbaa !59
  %sub59 = sub i32 %142, 1
  %143 = load i32, i32* %resno, align 4, !tbaa !1
  %sub60 = sub i32 %sub59, %143
  store i32 %sub60, i32* %l_level_no, align 4, !tbaa !1
  %144 = load i32, i32* %l_tcx0, align 4, !tbaa !1
  %145 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call61 = call i32 @opj_int_ceildivpow2(i32 %144, i32 %145) #6
  store i32 %call61, i32* %l_rx0, align 4, !tbaa !1
  %146 = load i32, i32* %l_tcy0, align 4, !tbaa !1
  %147 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call62 = call i32 @opj_int_ceildivpow2(i32 %146, i32 %147) #6
  store i32 %call62, i32* %l_ry0, align 4, !tbaa !1
  %148 = load i32, i32* %l_tcx1, align 4, !tbaa !1
  %149 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call63 = call i32 @opj_int_ceildivpow2(i32 %148, i32 %149) #6
  store i32 %call63, i32* %l_rx1, align 4, !tbaa !1
  %150 = load i32, i32* %l_tcy1, align 4, !tbaa !1
  %151 = load i32, i32* %l_level_no, align 4, !tbaa !1
  %call64 = call i32 @opj_int_ceildivpow2(i32 %150, i32 %151) #6
  store i32 %call64, i32* %l_ry1, align 4, !tbaa !1
  %152 = load i32, i32* %l_rx0, align 4, !tbaa !1
  %153 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %call65 = call i32 @opj_int_floordivpow2(i32 %152, i32 %153) #6
  %154 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %shl66 = shl i32 %call65, %154
  store i32 %shl66, i32* %l_px0, align 4, !tbaa !1
  %155 = load i32, i32* %l_ry0, align 4, !tbaa !1
  %156 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %call67 = call i32 @opj_int_floordivpow2(i32 %155, i32 %156) #6
  %157 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %shl68 = shl i32 %call67, %157
  store i32 %shl68, i32* %l_py0, align 4, !tbaa !1
  %158 = load i32, i32* %l_rx1, align 4, !tbaa !1
  %159 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %call69 = call i32 @opj_int_ceildivpow2(i32 %158, i32 %159) #6
  %160 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %shl70 = shl i32 %call69, %160
  store i32 %shl70, i32* %l_px1, align 4, !tbaa !1
  %161 = load i32, i32* %l_ry1, align 4, !tbaa !1
  %162 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %call71 = call i32 @opj_int_ceildivpow2(i32 %161, i32 %162) #6
  %163 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %shl72 = shl i32 %call71, %163
  store i32 %shl72, i32* %py1, align 4, !tbaa !1
  %164 = load i32, i32* %l_rx0, align 4, !tbaa !1
  %165 = load i32, i32* %l_rx1, align 4, !tbaa !1
  %cmp73 = icmp eq i32 %164, %165
  br i1 %cmp73, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %for.body.39
  br label %cond.end.77

cond.false.75:                                    ; preds = %for.body.39
  %166 = load i32, i32* %l_px1, align 4, !tbaa !1
  %167 = load i32, i32* %l_px0, align 4, !tbaa !1
  %sub76 = sub nsw i32 %166, %167
  %168 = load i32, i32* %l_pdx, align 4, !tbaa !1
  %shr = ashr i32 %sub76, %168
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.74
  %cond = phi i32 [ 0, %cond.true.74 ], [ %shr, %cond.false.75 ]
  store i32 %cond, i32* %l_pw, align 4, !tbaa !1
  %169 = load i32, i32* %l_ry0, align 4, !tbaa !1
  %170 = load i32, i32* %l_ry1, align 4, !tbaa !1
  %cmp78 = icmp eq i32 %169, %170
  br i1 %cmp78, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.end.77
  br label %cond.end.83

cond.false.80:                                    ; preds = %cond.end.77
  %171 = load i32, i32* %py1, align 4, !tbaa !1
  %172 = load i32, i32* %l_py0, align 4, !tbaa !1
  %sub81 = sub nsw i32 %171, %172
  %173 = load i32, i32* %l_pdy, align 4, !tbaa !1
  %shr82 = ashr i32 %sub81, %173
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.80, %cond.true.79
  %cond84 = phi i32 [ 0, %cond.true.79 ], [ %shr82, %cond.false.80 ]
  store i32 %cond84, i32* %l_ph, align 4, !tbaa !1
  %174 = load i32, i32* %l_pw, align 4, !tbaa !1
  %175 = load i32, i32* %l_ph, align 4, !tbaa !1
  %mul85 = mul i32 %174, %175
  store i32 %mul85, i32* %l_product, align 4, !tbaa !1
  %176 = load i32, i32* %l_product, align 4, !tbaa !1
  %177 = load i32*, i32** %p_max_prec.addr, align 8, !tbaa !5
  %178 = load i32, i32* %177, align 4, !tbaa !1
  %cmp86 = icmp ugt i32 %176, %178
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %cond.end.83
  %179 = load i32, i32* %l_product, align 4, !tbaa !1
  %180 = load i32*, i32** %p_max_prec.addr, align 8, !tbaa !5
  store i32 %179, i32* %180, align 4, !tbaa !1
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %cond.end.83
  %181 = bitcast i32* %l_dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %l_dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %183 = load i32, i32* %resno, align 4, !tbaa !1
  %inc = add i32 %183, 1
  store i32 %inc, i32* %resno, align 4, !tbaa !1
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  %184 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %184, i32 1
  store %struct.opj_image_comp* %incdec.ptr, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !5
  %185 = load %struct.opj_tccp*, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %incdec.ptr89 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %185, i32 1
  store %struct.opj_tccp* %incdec.ptr89, %struct.opj_tccp** %l_tccp, align 8, !tbaa !5
  %186 = bitcast i32* %l_tcy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %l_tcx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %l_tcy0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %l_tcx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %l_product to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %l_ph to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %l_pw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %l_pdy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %l_pdx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %py1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %l_px1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %l_py0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %l_px0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %l_ry1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %l_rx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %l_ry0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %l_rx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %l_level_no to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.end
  %204 = load i32, i32* %compno, align 4, !tbaa !1
  %inc91 = add i32 %204, 1
  store i32 %inc91, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end.92:                                       ; preds = %for.cond
  %205 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast %struct.opj_tccp** %l_tccp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast %struct.opj_tcp** %l_tcp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_pi_next(%struct.opj_pi_iterator* %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pi.addr = alloca %struct.opj_pi_iterator*, align 8
  store %struct.opj_pi_iterator* %pi, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %0 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %0, i32 0, i32 11
  %prg = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc, i32 0, i32 9
  %1 = load i32, i32* %prg, align 4, !tbaa !69
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 -1, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %call = call i32 @opj_pi_next_lrcp(%struct.opj_pi_iterator* %2) #6
  store i32 %call, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %call2 = call i32 @opj_pi_next_rlcp(%struct.opj_pi_iterator* %3) #6
  store i32 %call2, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %4 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %call4 = call i32 @opj_pi_next_rpcl(%struct.opj_pi_iterator* %4) #6
  store i32 %call4, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %5 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %call6 = call i32 @opj_pi_next_pcrl(%struct.opj_pi_iterator* %5) #6
  store i32 %call6, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %6 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %call8 = call i32 @opj_pi_next_cprl(%struct.opj_pi_iterator* %6) #6
  store i32 %call8, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_pi_next_lrcp(%struct.opj_pi_iterator* %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %comp = alloca %struct.opj_pi_comp*, align 8
  %res = alloca %struct.opj_pi_resolution*, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_pi_iterator* %pi, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %0 = bitcast %struct.opj_pi_comp** %comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.opj_pi_comp* null, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %1 = bitcast %struct.opj_pi_resolution** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.opj_pi_resolution* null, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %2 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %index, align 4, !tbaa !1
  %3 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %3, i32 0, i32 10
  %4 = load i32, i32* %first, align 4, !tbaa !70
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %5, i32 0, i32 6
  %6 = load i32, i32* %compno, align 4, !tbaa !103
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %7, i32 0, i32 13
  %8 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %8, i64 %idxprom
  store %struct.opj_pi_comp* %arrayidx, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %9 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %9, i32 0, i32 7
  %10 = load i32, i32* %resno, align 4, !tbaa !104
  %idxprom1 = zext i32 %10 to i64
  %11 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %11, i32 0, i32 3
  %12 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions, align 8, !tbaa !45
  %arrayidx2 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %12, i64 %idxprom1
  store %struct.opj_pi_resolution* %arrayidx2, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  br label %LABEL_SKIP

if.else:                                          ; preds = %entry
  %13 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %first3 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %13, i32 0, i32 10
  store i32 0, i32* %first3, align 4, !tbaa !70
  br label %if.end

if.end:                                           ; preds = %if.else
  %14 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %14, i32 0, i32 11
  %layno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc, i32 0, i32 5
  %15 = load i32, i32* %layno0, align 4, !tbaa !75
  %16 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %16, i32 0, i32 9
  store i32 %15, i32* %layno, align 4, !tbaa !105
  br label %for.cond

for.cond:                                         ; preds = %for.inc.70, %if.end
  %17 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno4 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %17, i32 0, i32 9
  %18 = load i32, i32* %layno4, align 4, !tbaa !105
  %19 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc5 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %19, i32 0, i32 11
  %layno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc5, i32 0, i32 2
  %20 = load i32, i32* %layno1, align 4, !tbaa !82
  %cmp = icmp ult i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end.73

for.body:                                         ; preds = %for.cond
  %21 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc6 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %21, i32 0, i32 11
  %resno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc6, i32 0, i32 0
  %22 = load i32, i32* %resno0, align 4, !tbaa !72
  %23 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno7 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %23, i32 0, i32 7
  store i32 %22, i32* %resno7, align 4, !tbaa !104
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.66, %for.body
  %24 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno9 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %24, i32 0, i32 7
  %25 = load i32, i32* %resno9, align 4, !tbaa !104
  %26 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc10 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %26, i32 0, i32 11
  %resno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc10, i32 0, i32 3
  %27 = load i32, i32* %resno1, align 4, !tbaa !78
  %cmp11 = icmp ult i32 %25, %27
  br i1 %cmp11, label %for.body.12, label %for.end.69

for.body.12:                                      ; preds = %for.cond.8
  %28 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc13 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %28, i32 0, i32 11
  %compno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc13, i32 0, i32 1
  %29 = load i32, i32* %compno0, align 4, !tbaa !74
  %30 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno14 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %30, i32 0, i32 6
  store i32 %29, i32* %compno14, align 4, !tbaa !103
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.62, %for.body.12
  %31 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno16 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %31, i32 0, i32 6
  %32 = load i32, i32* %compno16, align 4, !tbaa !103
  %33 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc17 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %33, i32 0, i32 11
  %compno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc17, i32 0, i32 4
  %34 = load i32, i32* %compno1, align 4, !tbaa !80
  %cmp18 = icmp ult i32 %32, %34
  br i1 %cmp18, label %for.body.19, label %for.end.65

for.body.19:                                      ; preds = %for.cond.15
  %35 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno20 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %35, i32 0, i32 6
  %36 = load i32, i32* %compno20, align 4, !tbaa !103
  %idxprom21 = zext i32 %36 to i64
  %37 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %comps22 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %37, i32 0, i32 13
  %38 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps22, align 8, !tbaa !33
  %arrayidx23 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %38, i64 %idxprom21
  store %struct.opj_pi_comp* %arrayidx23, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %39 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno24 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %39, i32 0, i32 7
  %40 = load i32, i32* %resno24, align 4, !tbaa !104
  %41 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %41, i32 0, i32 2
  %42 = load i32, i32* %numresolutions, align 4, !tbaa !53
  %cmp25 = icmp uge i32 %40, %42
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.body.19
  br label %for.inc.62

if.end.27:                                        ; preds = %for.body.19
  %43 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno28 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %43, i32 0, i32 7
  %44 = load i32, i32* %resno28, align 4, !tbaa !104
  %idxprom29 = zext i32 %44 to i64
  %45 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %resolutions30 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %45, i32 0, i32 3
  %46 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions30, align 8, !tbaa !45
  %arrayidx31 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %46, i64 %idxprom29
  store %struct.opj_pi_resolution* %arrayidx31, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %47 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tp_on = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %47, i32 0, i32 0
  %48 = load i8, i8* %tp_on, align 1, !tbaa !85
  %tobool32 = icmp ne i8 %48, 0
  br i1 %tobool32, label %if.end.35, label %if.then.33

if.then.33:                                       ; preds = %if.end.27
  %49 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pw = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %49, i32 0, i32 2
  %50 = load i32, i32* %pw, align 4, !tbaa !57
  %51 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %51, i32 0, i32 3
  %52 = load i32, i32* %ph, align 4, !tbaa !58
  %mul = mul i32 %50, %52
  %53 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc34 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %53, i32 0, i32 11
  %precno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc34, i32 0, i32 7
  store i32 %mul, i32* %precno1, align 4, !tbaa !83
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.27
  %54 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc36 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %54, i32 0, i32 11
  %precno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc36, i32 0, i32 6
  %55 = load i32, i32* %precno0, align 4, !tbaa !76
  %56 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %precno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %56, i32 0, i32 8
  store i32 %55, i32* %precno, align 4, !tbaa !106
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc, %if.end.35
  %57 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %precno38 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %57, i32 0, i32 8
  %58 = load i32, i32* %precno38, align 4, !tbaa !106
  %59 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc39 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %59, i32 0, i32 11
  %precno140 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc39, i32 0, i32 7
  %60 = load i32, i32* %precno140, align 4, !tbaa !83
  %cmp41 = icmp ult i32 %58, %60
  br i1 %cmp41, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.37
  %61 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno43 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %61, i32 0, i32 9
  %62 = load i32, i32* %layno43, align 4, !tbaa !105
  %63 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_l = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %63, i32 0, i32 2
  %64 = load i32, i32* %step_l, align 4, !tbaa !43
  %mul44 = mul i32 %62, %64
  %65 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno45 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %65, i32 0, i32 7
  %66 = load i32, i32* %resno45, align 4, !tbaa !104
  %67 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_r = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %67, i32 0, i32 3
  %68 = load i32, i32* %step_r, align 4, !tbaa !42
  %mul46 = mul i32 %66, %68
  %add = add i32 %mul44, %mul46
  %69 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno47 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %69, i32 0, i32 6
  %70 = load i32, i32* %compno47, align 4, !tbaa !103
  %71 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_c = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %71, i32 0, i32 4
  %72 = load i32, i32* %step_c, align 4, !tbaa !41
  %mul48 = mul i32 %70, %72
  %add49 = add i32 %add, %mul48
  %73 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %precno50 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %73, i32 0, i32 8
  %74 = load i32, i32* %precno50, align 4, !tbaa !106
  %75 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_p = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %75, i32 0, i32 5
  %76 = load i32, i32* %step_p, align 4, !tbaa !40
  %mul51 = mul i32 %74, %76
  %add52 = add i32 %add49, %mul51
  store i32 %add52, i32* %index, align 4, !tbaa !1
  %77 = load i32, i32* %index, align 4, !tbaa !1
  %idxprom53 = zext i32 %77 to i64
  %78 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %include = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %78, i32 0, i32 1
  %79 = load i16*, i16** %include, align 8, !tbaa !31
  %arrayidx54 = getelementptr inbounds i16, i16* %79, i64 %idxprom53
  %80 = load i16, i16* %arrayidx54, align 2, !tbaa !107
  %tobool55 = icmp ne i16 %80, 0
  br i1 %tobool55, label %if.end.60, label %if.then.56

if.then.56:                                       ; preds = %for.body.42
  %81 = load i32, i32* %index, align 4, !tbaa !1
  %idxprom57 = zext i32 %81 to i64
  %82 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %include58 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %82, i32 0, i32 1
  %83 = load i16*, i16** %include58, align 8, !tbaa !31
  %arrayidx59 = getelementptr inbounds i16, i16* %83, i64 %idxprom57
  store i16 1, i16* %arrayidx59, align 2, !tbaa !107
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %for.body.42
  br label %LABEL_SKIP

LABEL_SKIP:                                       ; preds = %if.end.60, %if.then
  br label %for.inc

for.inc:                                          ; preds = %LABEL_SKIP
  %84 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %precno61 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %84, i32 0, i32 8
  %85 = load i32, i32* %precno61, align 4, !tbaa !106
  %inc = add i32 %85, 1
  store i32 %inc, i32* %precno61, align 4, !tbaa !106
  br label %for.cond.37

for.end:                                          ; preds = %for.cond.37
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end, %if.then.26
  %86 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno63 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %86, i32 0, i32 6
  %87 = load i32, i32* %compno63, align 4, !tbaa !103
  %inc64 = add i32 %87, 1
  store i32 %inc64, i32* %compno63, align 4, !tbaa !103
  br label %for.cond.15

for.end.65:                                       ; preds = %for.cond.15
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %88 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno67 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %88, i32 0, i32 7
  %89 = load i32, i32* %resno67, align 4, !tbaa !104
  %inc68 = add i32 %89, 1
  store i32 %inc68, i32* %resno67, align 4, !tbaa !104
  br label %for.cond.8

for.end.69:                                       ; preds = %for.cond.8
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end.69
  %90 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno71 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %90, i32 0, i32 9
  %91 = load i32, i32* %layno71, align 4, !tbaa !105
  %inc72 = add i32 %91, 1
  store i32 %inc72, i32* %layno71, align 4, !tbaa !105
  br label %for.cond

for.end.73:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.73, %if.then.56
  %92 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast %struct.opj_pi_resolution** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct.opj_pi_comp** %comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_pi_next_rlcp(%struct.opj_pi_iterator* %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %comp = alloca %struct.opj_pi_comp*, align 8
  %res = alloca %struct.opj_pi_resolution*, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_pi_iterator* %pi, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %0 = bitcast %struct.opj_pi_comp** %comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.opj_pi_comp* null, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %1 = bitcast %struct.opj_pi_resolution** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.opj_pi_resolution* null, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %2 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %index, align 4, !tbaa !1
  %3 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %3, i32 0, i32 10
  %4 = load i32, i32* %first, align 4, !tbaa !70
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %5, i32 0, i32 6
  %6 = load i32, i32* %compno, align 4, !tbaa !103
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %7, i32 0, i32 13
  %8 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %8, i64 %idxprom
  store %struct.opj_pi_comp* %arrayidx, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %9 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %9, i32 0, i32 7
  %10 = load i32, i32* %resno, align 4, !tbaa !104
  %idxprom1 = zext i32 %10 to i64
  %11 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %11, i32 0, i32 3
  %12 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions, align 8, !tbaa !45
  %arrayidx2 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %12, i64 %idxprom1
  store %struct.opj_pi_resolution* %arrayidx2, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  br label %LABEL_SKIP

if.else:                                          ; preds = %entry
  %13 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %first3 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %13, i32 0, i32 10
  store i32 0, i32* %first3, align 4, !tbaa !70
  br label %if.end

if.end:                                           ; preds = %if.else
  %14 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %14, i32 0, i32 11
  %resno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc, i32 0, i32 0
  %15 = load i32, i32* %resno0, align 4, !tbaa !72
  %16 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno4 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %16, i32 0, i32 7
  store i32 %15, i32* %resno4, align 4, !tbaa !104
  br label %for.cond

for.cond:                                         ; preds = %for.inc.70, %if.end
  %17 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno5 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %17, i32 0, i32 7
  %18 = load i32, i32* %resno5, align 4, !tbaa !104
  %19 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc6 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %19, i32 0, i32 11
  %resno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc6, i32 0, i32 3
  %20 = load i32, i32* %resno1, align 4, !tbaa !78
  %cmp = icmp ult i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end.73

for.body:                                         ; preds = %for.cond
  %21 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc7 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %21, i32 0, i32 11
  %layno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc7, i32 0, i32 5
  %22 = load i32, i32* %layno0, align 4, !tbaa !75
  %23 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %23, i32 0, i32 9
  store i32 %22, i32* %layno, align 4, !tbaa !105
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.66, %for.body
  %24 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno9 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %24, i32 0, i32 9
  %25 = load i32, i32* %layno9, align 4, !tbaa !105
  %26 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc10 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %26, i32 0, i32 11
  %layno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc10, i32 0, i32 2
  %27 = load i32, i32* %layno1, align 4, !tbaa !82
  %cmp11 = icmp ult i32 %25, %27
  br i1 %cmp11, label %for.body.12, label %for.end.69

for.body.12:                                      ; preds = %for.cond.8
  %28 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc13 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %28, i32 0, i32 11
  %compno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc13, i32 0, i32 1
  %29 = load i32, i32* %compno0, align 4, !tbaa !74
  %30 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno14 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %30, i32 0, i32 6
  store i32 %29, i32* %compno14, align 4, !tbaa !103
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.62, %for.body.12
  %31 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno16 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %31, i32 0, i32 6
  %32 = load i32, i32* %compno16, align 4, !tbaa !103
  %33 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc17 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %33, i32 0, i32 11
  %compno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc17, i32 0, i32 4
  %34 = load i32, i32* %compno1, align 4, !tbaa !80
  %cmp18 = icmp ult i32 %32, %34
  br i1 %cmp18, label %for.body.19, label %for.end.65

for.body.19:                                      ; preds = %for.cond.15
  %35 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno20 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %35, i32 0, i32 6
  %36 = load i32, i32* %compno20, align 4, !tbaa !103
  %idxprom21 = zext i32 %36 to i64
  %37 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %comps22 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %37, i32 0, i32 13
  %38 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps22, align 8, !tbaa !33
  %arrayidx23 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %38, i64 %idxprom21
  store %struct.opj_pi_comp* %arrayidx23, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %39 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno24 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %39, i32 0, i32 7
  %40 = load i32, i32* %resno24, align 4, !tbaa !104
  %41 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %41, i32 0, i32 2
  %42 = load i32, i32* %numresolutions, align 4, !tbaa !53
  %cmp25 = icmp uge i32 %40, %42
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.body.19
  br label %for.inc.62

if.end.27:                                        ; preds = %for.body.19
  %43 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno28 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %43, i32 0, i32 7
  %44 = load i32, i32* %resno28, align 4, !tbaa !104
  %idxprom29 = zext i32 %44 to i64
  %45 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %resolutions30 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %45, i32 0, i32 3
  %46 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions30, align 8, !tbaa !45
  %arrayidx31 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %46, i64 %idxprom29
  store %struct.opj_pi_resolution* %arrayidx31, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %47 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tp_on = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %47, i32 0, i32 0
  %48 = load i8, i8* %tp_on, align 1, !tbaa !85
  %tobool32 = icmp ne i8 %48, 0
  br i1 %tobool32, label %if.end.35, label %if.then.33

if.then.33:                                       ; preds = %if.end.27
  %49 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pw = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %49, i32 0, i32 2
  %50 = load i32, i32* %pw, align 4, !tbaa !57
  %51 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %51, i32 0, i32 3
  %52 = load i32, i32* %ph, align 4, !tbaa !58
  %mul = mul i32 %50, %52
  %53 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc34 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %53, i32 0, i32 11
  %precno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc34, i32 0, i32 7
  store i32 %mul, i32* %precno1, align 4, !tbaa !83
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.27
  %54 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc36 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %54, i32 0, i32 11
  %precno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc36, i32 0, i32 6
  %55 = load i32, i32* %precno0, align 4, !tbaa !76
  %56 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %precno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %56, i32 0, i32 8
  store i32 %55, i32* %precno, align 4, !tbaa !106
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc, %if.end.35
  %57 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %precno38 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %57, i32 0, i32 8
  %58 = load i32, i32* %precno38, align 4, !tbaa !106
  %59 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc39 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %59, i32 0, i32 11
  %precno140 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc39, i32 0, i32 7
  %60 = load i32, i32* %precno140, align 4, !tbaa !83
  %cmp41 = icmp ult i32 %58, %60
  br i1 %cmp41, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.37
  %61 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno43 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %61, i32 0, i32 9
  %62 = load i32, i32* %layno43, align 4, !tbaa !105
  %63 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_l = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %63, i32 0, i32 2
  %64 = load i32, i32* %step_l, align 4, !tbaa !43
  %mul44 = mul i32 %62, %64
  %65 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno45 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %65, i32 0, i32 7
  %66 = load i32, i32* %resno45, align 4, !tbaa !104
  %67 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_r = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %67, i32 0, i32 3
  %68 = load i32, i32* %step_r, align 4, !tbaa !42
  %mul46 = mul i32 %66, %68
  %add = add i32 %mul44, %mul46
  %69 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno47 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %69, i32 0, i32 6
  %70 = load i32, i32* %compno47, align 4, !tbaa !103
  %71 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_c = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %71, i32 0, i32 4
  %72 = load i32, i32* %step_c, align 4, !tbaa !41
  %mul48 = mul i32 %70, %72
  %add49 = add i32 %add, %mul48
  %73 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %precno50 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %73, i32 0, i32 8
  %74 = load i32, i32* %precno50, align 4, !tbaa !106
  %75 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_p = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %75, i32 0, i32 5
  %76 = load i32, i32* %step_p, align 4, !tbaa !40
  %mul51 = mul i32 %74, %76
  %add52 = add i32 %add49, %mul51
  store i32 %add52, i32* %index, align 4, !tbaa !1
  %77 = load i32, i32* %index, align 4, !tbaa !1
  %idxprom53 = zext i32 %77 to i64
  %78 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %include = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %78, i32 0, i32 1
  %79 = load i16*, i16** %include, align 8, !tbaa !31
  %arrayidx54 = getelementptr inbounds i16, i16* %79, i64 %idxprom53
  %80 = load i16, i16* %arrayidx54, align 2, !tbaa !107
  %tobool55 = icmp ne i16 %80, 0
  br i1 %tobool55, label %if.end.60, label %if.then.56

if.then.56:                                       ; preds = %for.body.42
  %81 = load i32, i32* %index, align 4, !tbaa !1
  %idxprom57 = zext i32 %81 to i64
  %82 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %include58 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %82, i32 0, i32 1
  %83 = load i16*, i16** %include58, align 8, !tbaa !31
  %arrayidx59 = getelementptr inbounds i16, i16* %83, i64 %idxprom57
  store i16 1, i16* %arrayidx59, align 2, !tbaa !107
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %for.body.42
  br label %LABEL_SKIP

LABEL_SKIP:                                       ; preds = %if.end.60, %if.then
  br label %for.inc

for.inc:                                          ; preds = %LABEL_SKIP
  %84 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %precno61 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %84, i32 0, i32 8
  %85 = load i32, i32* %precno61, align 4, !tbaa !106
  %inc = add i32 %85, 1
  store i32 %inc, i32* %precno61, align 4, !tbaa !106
  br label %for.cond.37

for.end:                                          ; preds = %for.cond.37
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end, %if.then.26
  %86 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno63 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %86, i32 0, i32 6
  %87 = load i32, i32* %compno63, align 4, !tbaa !103
  %inc64 = add i32 %87, 1
  store i32 %inc64, i32* %compno63, align 4, !tbaa !103
  br label %for.cond.15

for.end.65:                                       ; preds = %for.cond.15
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %88 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno67 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %88, i32 0, i32 9
  %89 = load i32, i32* %layno67, align 4, !tbaa !105
  %inc68 = add i32 %89, 1
  store i32 %inc68, i32* %layno67, align 4, !tbaa !105
  br label %for.cond.8

for.end.69:                                       ; preds = %for.cond.8
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.end.69
  %90 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno71 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %90, i32 0, i32 7
  %91 = load i32, i32* %resno71, align 4, !tbaa !104
  %inc72 = add i32 %91, 1
  store i32 %inc72, i32* %resno71, align 4, !tbaa !104
  br label %for.cond

for.end.73:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.73, %if.then.56
  %92 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast %struct.opj_pi_resolution** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast %struct.opj_pi_comp** %comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = load i32, i32* %retval
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_pi_next_rpcl(%struct.opj_pi_iterator* %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %comp = alloca %struct.opj_pi_comp*, align 8
  %res = alloca %struct.opj_pi_resolution*, align 8
  %index = alloca i32, align 4
  %compno = alloca i32, align 4
  %resno = alloca i32, align 4
  %dx5 = alloca i32, align 4
  %dy6 = alloca i32, align 4
  %levelno = alloca i32, align 4
  %trx0 = alloca i32, align 4
  %try0 = alloca i32, align 4
  %trx1 = alloca i32, align 4
  %try1 = alloca i32, align 4
  %rpx = alloca i32, align 4
  %rpy = alloca i32, align 4
  %prci = alloca i32, align 4
  %prcj = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_pi_iterator* %pi, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %0 = bitcast %struct.opj_pi_comp** %comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.opj_pi_comp* null, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %1 = bitcast %struct.opj_pi_resolution** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.opj_pi_resolution* null, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %2 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %index, align 4, !tbaa !1
  %3 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %3, i32 0, i32 10
  %4 = load i32, i32* %first, align 4, !tbaa !70
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br label %LABEL_SKIP

if.else:                                          ; preds = %entry
  %5 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %first1 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %7, i32 0, i32 10
  store i32 0, i32* %first1, align 4, !tbaa !70
  %8 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %8, i32 0, i32 20
  store i32 0, i32* %dx, align 4, !tbaa !86
  %9 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %9, i32 0, i32 21
  store i32 0, i32* %dy, align 4, !tbaa !87
  store i32 0, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.else
  %10 = load i32, i32* %compno, align 4, !tbaa !1
  %11 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %11, i32 0, i32 12
  %12 = load i32, i32* %numcomps, align 4, !tbaa !44
  %cmp = icmp ult i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %compno, align 4, !tbaa !1
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %14, i32 0, i32 13
  %15 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %15, i64 %idxprom
  store %struct.opj_pi_comp* %arrayidx, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %resno, align 4, !tbaa !1
  %17 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %17, i32 0, i32 2
  %18 = load i32, i32* %numresolutions, align 4, !tbaa !53
  %cmp3 = icmp ult i32 %16, %18
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %19 = bitcast i32* %dx5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %dy6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom7 = zext i32 %21 to i64
  %22 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %22, i32 0, i32 3
  %23 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions, align 8, !tbaa !45
  %arrayidx8 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %23, i64 %idxprom7
  store %struct.opj_pi_resolution* %arrayidx8, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %24 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx9 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %24, i32 0, i32 0
  %25 = load i32, i32* %dx9, align 4, !tbaa !50
  %26 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdx = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %26, i32 0, i32 0
  %27 = load i32, i32* %pdx, align 4, !tbaa !54
  %28 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions10 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %28, i32 0, i32 2
  %29 = load i32, i32* %numresolutions10, align 4, !tbaa !53
  %add = add i32 %27, %29
  %sub = sub i32 %add, 1
  %30 = load i32, i32* %resno, align 4, !tbaa !1
  %sub11 = sub i32 %sub, %30
  %shl = shl i32 1, %sub11
  %mul = mul i32 %25, %shl
  store i32 %mul, i32* %dx5, align 4, !tbaa !1
  %31 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy12 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %31, i32 0, i32 1
  %32 = load i32, i32* %dy12, align 4, !tbaa !52
  %33 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdy = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %33, i32 0, i32 1
  %34 = load i32, i32* %pdy, align 4, !tbaa !56
  %35 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions13 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %35, i32 0, i32 2
  %36 = load i32, i32* %numresolutions13, align 4, !tbaa !53
  %add14 = add i32 %34, %36
  %sub15 = sub i32 %add14, 1
  %37 = load i32, i32* %resno, align 4, !tbaa !1
  %sub16 = sub i32 %sub15, %37
  %shl17 = shl i32 1, %sub16
  %mul18 = mul i32 %32, %shl17
  store i32 %mul18, i32* %dy6, align 4, !tbaa !1
  %38 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx19 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %38, i32 0, i32 20
  %39 = load i32, i32* %dx19, align 4, !tbaa !86
  %tobool20 = icmp ne i32 %39, 0
  br i1 %tobool20, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body.4
  %40 = load i32, i32* %dx5, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %for.body.4
  %41 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx21 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %41, i32 0, i32 20
  %42 = load i32, i32* %dx21, align 4, !tbaa !86
  %43 = load i32, i32* %dx5, align 4, !tbaa !1
  %call = call i32 @opj_uint_min(i32 %42, i32 %43) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %40, %cond.true ], [ %call, %cond.false ]
  %44 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx22 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %44, i32 0, i32 20
  store i32 %cond, i32* %dx22, align 4, !tbaa !86
  %45 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy23 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %45, i32 0, i32 21
  %46 = load i32, i32* %dy23, align 4, !tbaa !87
  %tobool24 = icmp ne i32 %46, 0
  br i1 %tobool24, label %cond.false.26, label %cond.true.25

cond.true.25:                                     ; preds = %cond.end
  %47 = load i32, i32* %dy6, align 4, !tbaa !1
  br label %cond.end.29

cond.false.26:                                    ; preds = %cond.end
  %48 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy27 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %48, i32 0, i32 21
  %49 = load i32, i32* %dy27, align 4, !tbaa !87
  %50 = load i32, i32* %dy6, align 4, !tbaa !1
  %call28 = call i32 @opj_uint_min(i32 %49, i32 %50) #6
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.26, %cond.true.25
  %cond30 = phi i32 [ %47, %cond.true.25 ], [ %call28, %cond.false.26 ]
  %51 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy31 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %51, i32 0, i32 21
  store i32 %cond30, i32* %dy31, align 4, !tbaa !87
  %52 = bitcast i32* %dy6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %dx5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.29
  %54 = load i32, i32* %resno, align 4, !tbaa !1
  %inc = add i32 %54, 1
  store i32 %inc, i32* %resno, align 4, !tbaa !1
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %55 = load i32, i32* %compno, align 4, !tbaa !1
  %inc33 = add i32 %55, 1
  store i32 %inc33, i32* %compno, align 4, !tbaa !1
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %56 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  br label %if.end

if.end:                                           ; preds = %for.end.34
  %58 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tp_on = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %58, i32 0, i32 0
  %59 = load i8, i8* %tp_on, align 1, !tbaa !85
  %tobool35 = icmp ne i8 %59, 0
  br i1 %tobool35, label %if.end.44, label %if.then.36

if.then.36:                                       ; preds = %if.end
  %60 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty0 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %60, i32 0, i32 15
  %61 = load i32, i32* %ty0, align 4, !tbaa !37
  %62 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %62, i32 0, i32 11
  %ty037 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc, i32 0, i32 14
  store i32 %61, i32* %ty037, align 4, !tbaa !100
  %63 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx0 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %63, i32 0, i32 14
  %64 = load i32, i32* %tx0, align 4, !tbaa !36
  %65 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc38 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %65, i32 0, i32 11
  %tx039 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc38, i32 0, i32 12
  store i32 %64, i32* %tx039, align 4, !tbaa !99
  %66 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty1 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %66, i32 0, i32 17
  %67 = load i32, i32* %ty1, align 4, !tbaa !39
  %68 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc40 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %68, i32 0, i32 11
  %ty141 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc40, i32 0, i32 15
  store i32 %67, i32* %ty141, align 4, !tbaa !102
  %69 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx1 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %69, i32 0, i32 16
  %70 = load i32, i32* %tx1, align 4, !tbaa !38
  %71 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc42 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %71, i32 0, i32 11
  %tx143 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc42, i32 0, i32 13
  store i32 %70, i32* %tx143, align 4, !tbaa !101
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.36, %if.end
  %72 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc45 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %72, i32 0, i32 11
  %resno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc45, i32 0, i32 0
  %73 = load i32, i32* %resno0, align 4, !tbaa !72
  %74 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno46 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %74, i32 0, i32 7
  store i32 %73, i32* %resno46, align 4, !tbaa !104
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.231, %if.end.44
  %75 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno48 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %75, i32 0, i32 7
  %76 = load i32, i32* %resno48, align 4, !tbaa !104
  %77 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc49 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %77, i32 0, i32 11
  %resno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc49, i32 0, i32 3
  %78 = load i32, i32* %resno1, align 4, !tbaa !78
  %cmp50 = icmp ult i32 %76, %78
  br i1 %cmp50, label %for.body.51, label %for.end.234

for.body.51:                                      ; preds = %for.cond.47
  %79 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc52 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %79, i32 0, i32 11
  %ty053 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc52, i32 0, i32 14
  %80 = load i32, i32* %ty053, align 4, !tbaa !100
  %81 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %81, i32 0, i32 19
  store i32 %80, i32* %y, align 4, !tbaa !108
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.222, %for.body.51
  %82 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y55 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %82, i32 0, i32 19
  %83 = load i32, i32* %y55, align 4, !tbaa !108
  %84 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc56 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %84, i32 0, i32 11
  %ty157 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc56, i32 0, i32 15
  %85 = load i32, i32* %ty157, align 4, !tbaa !102
  %cmp58 = icmp slt i32 %83, %85
  br i1 %cmp58, label %for.body.59, label %for.end.230

for.body.59:                                      ; preds = %for.cond.54
  %86 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc60 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %86, i32 0, i32 11
  %tx061 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc60, i32 0, i32 12
  %87 = load i32, i32* %tx061, align 4, !tbaa !99
  %88 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %88, i32 0, i32 18
  store i32 %87, i32* %x, align 4, !tbaa !109
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.213, %for.body.59
  %89 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x63 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %89, i32 0, i32 18
  %90 = load i32, i32* %x63, align 4, !tbaa !109
  %91 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc64 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %91, i32 0, i32 11
  %tx165 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc64, i32 0, i32 13
  %92 = load i32, i32* %tx165, align 4, !tbaa !101
  %cmp66 = icmp slt i32 %90, %92
  br i1 %cmp66, label %for.body.67, label %for.end.221

for.body.67:                                      ; preds = %for.cond.62
  %93 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc68 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %93, i32 0, i32 11
  %compno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc68, i32 0, i32 1
  %94 = load i32, i32* %compno0, align 4, !tbaa !74
  %95 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno69 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %95, i32 0, i32 6
  store i32 %94, i32* %compno69, align 4, !tbaa !103
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.209, %for.body.67
  %96 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno71 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %96, i32 0, i32 6
  %97 = load i32, i32* %compno71, align 4, !tbaa !103
  %98 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc72 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %98, i32 0, i32 11
  %compno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc72, i32 0, i32 4
  %99 = load i32, i32* %compno1, align 4, !tbaa !80
  %cmp73 = icmp ult i32 %97, %99
  br i1 %cmp73, label %for.body.74, label %for.end.212

for.body.74:                                      ; preds = %for.cond.70
  %100 = bitcast i32* %levelno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  %101 = bitcast i32* %trx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  %102 = bitcast i32* %try0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #1
  %103 = bitcast i32* %trx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %104 = bitcast i32* %try1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = bitcast i32* %rpx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  %106 = bitcast i32* %rpy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = bitcast i32* %prci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #1
  %108 = bitcast i32* %prcj to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #1
  %109 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno75 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %109, i32 0, i32 6
  %110 = load i32, i32* %compno75, align 4, !tbaa !103
  %idxprom76 = zext i32 %110 to i64
  %111 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %comps77 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %111, i32 0, i32 13
  %112 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps77, align 8, !tbaa !33
  %arrayidx78 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %112, i64 %idxprom76
  store %struct.opj_pi_comp* %arrayidx78, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %113 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno79 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %113, i32 0, i32 7
  %114 = load i32, i32* %resno79, align 4, !tbaa !104
  %115 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions80 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %115, i32 0, i32 2
  %116 = load i32, i32* %numresolutions80, align 4, !tbaa !53
  %cmp81 = icmp uge i32 %114, %116
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %for.body.74
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %for.body.74
  %117 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno84 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %117, i32 0, i32 7
  %118 = load i32, i32* %resno84, align 4, !tbaa !104
  %idxprom85 = zext i32 %118 to i64
  %119 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %resolutions86 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %119, i32 0, i32 3
  %120 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions86, align 8, !tbaa !45
  %arrayidx87 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %120, i64 %idxprom85
  store %struct.opj_pi_resolution* %arrayidx87, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %121 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions88 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %121, i32 0, i32 2
  %122 = load i32, i32* %numresolutions88, align 4, !tbaa !53
  %sub89 = sub i32 %122, 1
  %123 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno90 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %123, i32 0, i32 7
  %124 = load i32, i32* %resno90, align 4, !tbaa !104
  %sub91 = sub i32 %sub89, %124
  store i32 %sub91, i32* %levelno, align 4, !tbaa !1
  %125 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx092 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %125, i32 0, i32 14
  %126 = load i32, i32* %tx092, align 4, !tbaa !36
  %127 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx93 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %127, i32 0, i32 0
  %128 = load i32, i32* %dx93, align 4, !tbaa !50
  %129 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl94 = shl i32 %128, %129
  %call95 = call i32 @opj_int_ceildiv(i32 %126, i32 %shl94) #6
  store i32 %call95, i32* %trx0, align 4, !tbaa !1
  %130 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty096 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %130, i32 0, i32 15
  %131 = load i32, i32* %ty096, align 4, !tbaa !37
  %132 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy97 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %132, i32 0, i32 1
  %133 = load i32, i32* %dy97, align 4, !tbaa !52
  %134 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl98 = shl i32 %133, %134
  %call99 = call i32 @opj_int_ceildiv(i32 %131, i32 %shl98) #6
  store i32 %call99, i32* %try0, align 4, !tbaa !1
  %135 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx1100 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %135, i32 0, i32 16
  %136 = load i32, i32* %tx1100, align 4, !tbaa !38
  %137 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx101 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %137, i32 0, i32 0
  %138 = load i32, i32* %dx101, align 4, !tbaa !50
  %139 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl102 = shl i32 %138, %139
  %call103 = call i32 @opj_int_ceildiv(i32 %136, i32 %shl102) #6
  store i32 %call103, i32* %trx1, align 4, !tbaa !1
  %140 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty1104 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %140, i32 0, i32 17
  %141 = load i32, i32* %ty1104, align 4, !tbaa !39
  %142 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy105 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %142, i32 0, i32 1
  %143 = load i32, i32* %dy105, align 4, !tbaa !52
  %144 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl106 = shl i32 %143, %144
  %call107 = call i32 @opj_int_ceildiv(i32 %141, i32 %shl106) #6
  store i32 %call107, i32* %try1, align 4, !tbaa !1
  %145 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdx108 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %145, i32 0, i32 0
  %146 = load i32, i32* %pdx108, align 4, !tbaa !54
  %147 = load i32, i32* %levelno, align 4, !tbaa !1
  %add109 = add i32 %146, %147
  store i32 %add109, i32* %rpx, align 4, !tbaa !1
  %148 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdy110 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %148, i32 0, i32 1
  %149 = load i32, i32* %pdy110, align 4, !tbaa !56
  %150 = load i32, i32* %levelno, align 4, !tbaa !1
  %add111 = add i32 %149, %150
  store i32 %add111, i32* %rpy, align 4, !tbaa !1
  %151 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y112 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %151, i32 0, i32 19
  %152 = load i32, i32* %y112, align 4, !tbaa !108
  %153 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy113 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %153, i32 0, i32 1
  %154 = load i32, i32* %dy113, align 4, !tbaa !52
  %155 = load i32, i32* %rpy, align 4, !tbaa !1
  %shl114 = shl i32 %154, %155
  %rem = urem i32 %152, %shl114
  %cmp115 = icmp eq i32 %rem, 0
  br i1 %cmp115, label %if.end.124, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.83
  %156 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y116 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %156, i32 0, i32 19
  %157 = load i32, i32* %y116, align 4, !tbaa !108
  %158 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty0117 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %158, i32 0, i32 15
  %159 = load i32, i32* %ty0117, align 4, !tbaa !37
  %cmp118 = icmp eq i32 %157, %159
  br i1 %cmp118, label %land.lhs.true, label %if.then.123

land.lhs.true:                                    ; preds = %lor.lhs.false
  %160 = load i32, i32* %try0, align 4, !tbaa !1
  %161 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl119 = shl i32 %160, %161
  %162 = load i32, i32* %rpy, align 4, !tbaa !1
  %shl120 = shl i32 1, %162
  %rem121 = srem i32 %shl119, %shl120
  %tobool122 = icmp ne i32 %rem121, 0
  br i1 %tobool122, label %if.end.124, label %if.then.123

if.then.123:                                      ; preds = %land.lhs.true, %lor.lhs.false
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

if.end.124:                                       ; preds = %land.lhs.true, %if.end.83
  %163 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x125 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %163, i32 0, i32 18
  %164 = load i32, i32* %x125, align 4, !tbaa !109
  %165 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx126 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %165, i32 0, i32 0
  %166 = load i32, i32* %dx126, align 4, !tbaa !50
  %167 = load i32, i32* %rpx, align 4, !tbaa !1
  %shl127 = shl i32 %166, %167
  %rem128 = urem i32 %164, %shl127
  %cmp129 = icmp eq i32 %rem128, 0
  br i1 %cmp129, label %if.end.140, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %if.end.124
  %168 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x131 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %168, i32 0, i32 18
  %169 = load i32, i32* %x131, align 4, !tbaa !109
  %170 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx0132 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %170, i32 0, i32 14
  %171 = load i32, i32* %tx0132, align 4, !tbaa !36
  %cmp133 = icmp eq i32 %169, %171
  br i1 %cmp133, label %land.lhs.true.134, label %if.then.139

land.lhs.true.134:                                ; preds = %lor.lhs.false.130
  %172 = load i32, i32* %trx0, align 4, !tbaa !1
  %173 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl135 = shl i32 %172, %173
  %174 = load i32, i32* %rpx, align 4, !tbaa !1
  %shl136 = shl i32 1, %174
  %rem137 = srem i32 %shl135, %shl136
  %tobool138 = icmp ne i32 %rem137, 0
  br i1 %tobool138, label %if.end.140, label %if.then.139

if.then.139:                                      ; preds = %land.lhs.true.134, %lor.lhs.false.130
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

if.end.140:                                       ; preds = %land.lhs.true.134, %if.end.124
  %175 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pw = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %175, i32 0, i32 2
  %176 = load i32, i32* %pw, align 4, !tbaa !57
  %cmp141 = icmp eq i32 %176, 0
  br i1 %cmp141, label %if.then.144, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %if.end.140
  %177 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %177, i32 0, i32 3
  %178 = load i32, i32* %ph, align 4, !tbaa !58
  %cmp143 = icmp eq i32 %178, 0
  br i1 %cmp143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %lor.lhs.false.142, %if.end.140
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

if.end.145:                                       ; preds = %lor.lhs.false.142
  %179 = load i32, i32* %trx0, align 4, !tbaa !1
  %180 = load i32, i32* %trx1, align 4, !tbaa !1
  %cmp146 = icmp eq i32 %179, %180
  br i1 %cmp146, label %if.then.149, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %if.end.145
  %181 = load i32, i32* %try0, align 4, !tbaa !1
  %182 = load i32, i32* %try1, align 4, !tbaa !1
  %cmp148 = icmp eq i32 %181, %182
  br i1 %cmp148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %lor.lhs.false.147, %if.end.145
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

if.end.150:                                       ; preds = %lor.lhs.false.147
  %183 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x151 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %183, i32 0, i32 18
  %184 = load i32, i32* %x151, align 4, !tbaa !109
  %185 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx152 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %185, i32 0, i32 0
  %186 = load i32, i32* %dx152, align 4, !tbaa !50
  %187 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl153 = shl i32 %186, %187
  %call154 = call i32 @opj_int_ceildiv(i32 %184, i32 %shl153) #6
  %188 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdx155 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %188, i32 0, i32 0
  %189 = load i32, i32* %pdx155, align 4, !tbaa !54
  %call156 = call i32 @opj_int_floordivpow2(i32 %call154, i32 %189) #6
  %190 = load i32, i32* %trx0, align 4, !tbaa !1
  %191 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdx157 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %191, i32 0, i32 0
  %192 = load i32, i32* %pdx157, align 4, !tbaa !54
  %call158 = call i32 @opj_int_floordivpow2(i32 %190, i32 %192) #6
  %sub159 = sub nsw i32 %call156, %call158
  store i32 %sub159, i32* %prci, align 4, !tbaa !1
  %193 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y160 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %193, i32 0, i32 19
  %194 = load i32, i32* %y160, align 4, !tbaa !108
  %195 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy161 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %195, i32 0, i32 1
  %196 = load i32, i32* %dy161, align 4, !tbaa !52
  %197 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl162 = shl i32 %196, %197
  %call163 = call i32 @opj_int_ceildiv(i32 %194, i32 %shl162) #6
  %198 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdy164 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %198, i32 0, i32 1
  %199 = load i32, i32* %pdy164, align 4, !tbaa !56
  %call165 = call i32 @opj_int_floordivpow2(i32 %call163, i32 %199) #6
  %200 = load i32, i32* %try0, align 4, !tbaa !1
  %201 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdy166 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %201, i32 0, i32 1
  %202 = load i32, i32* %pdy166, align 4, !tbaa !56
  %call167 = call i32 @opj_int_floordivpow2(i32 %200, i32 %202) #6
  %sub168 = sub nsw i32 %call165, %call167
  store i32 %sub168, i32* %prcj, align 4, !tbaa !1
  %203 = load i32, i32* %prci, align 4, !tbaa !1
  %204 = load i32, i32* %prcj, align 4, !tbaa !1
  %205 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pw169 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %205, i32 0, i32 2
  %206 = load i32, i32* %pw169, align 4, !tbaa !57
  %mul170 = mul i32 %204, %206
  %add171 = add i32 %203, %mul170
  %207 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %precno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %207, i32 0, i32 8
  store i32 %add171, i32* %precno, align 4, !tbaa !106
  %208 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc172 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %208, i32 0, i32 11
  %layno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc172, i32 0, i32 5
  %209 = load i32, i32* %layno0, align 4, !tbaa !75
  %210 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %210, i32 0, i32 9
  store i32 %209, i32* %layno, align 4, !tbaa !105
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.197, %if.end.150
  %211 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno174 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %211, i32 0, i32 9
  %212 = load i32, i32* %layno174, align 4, !tbaa !105
  %213 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc175 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %213, i32 0, i32 11
  %layno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc175, i32 0, i32 2
  %214 = load i32, i32* %layno1, align 4, !tbaa !82
  %cmp176 = icmp ult i32 %212, %214
  br i1 %cmp176, label %for.body.177, label %for.end.200

for.body.177:                                     ; preds = %for.cond.173
  %215 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno178 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %215, i32 0, i32 9
  %216 = load i32, i32* %layno178, align 4, !tbaa !105
  %217 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_l = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %217, i32 0, i32 2
  %218 = load i32, i32* %step_l, align 4, !tbaa !43
  %mul179 = mul i32 %216, %218
  %219 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno180 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %219, i32 0, i32 7
  %220 = load i32, i32* %resno180, align 4, !tbaa !104
  %221 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_r = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %221, i32 0, i32 3
  %222 = load i32, i32* %step_r, align 4, !tbaa !42
  %mul181 = mul i32 %220, %222
  %add182 = add i32 %mul179, %mul181
  %223 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno183 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %223, i32 0, i32 6
  %224 = load i32, i32* %compno183, align 4, !tbaa !103
  %225 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_c = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %225, i32 0, i32 4
  %226 = load i32, i32* %step_c, align 4, !tbaa !41
  %mul184 = mul i32 %224, %226
  %add185 = add i32 %add182, %mul184
  %227 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %precno186 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %227, i32 0, i32 8
  %228 = load i32, i32* %precno186, align 4, !tbaa !106
  %229 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_p = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %229, i32 0, i32 5
  %230 = load i32, i32* %step_p, align 4, !tbaa !40
  %mul187 = mul i32 %228, %230
  %add188 = add i32 %add185, %mul187
  store i32 %add188, i32* %index, align 4, !tbaa !1
  %231 = load i32, i32* %index, align 4, !tbaa !1
  %idxprom189 = zext i32 %231 to i64
  %232 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %include = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %232, i32 0, i32 1
  %233 = load i16*, i16** %include, align 8, !tbaa !31
  %arrayidx190 = getelementptr inbounds i16, i16* %233, i64 %idxprom189
  %234 = load i16, i16* %arrayidx190, align 2, !tbaa !107
  %tobool191 = icmp ne i16 %234, 0
  br i1 %tobool191, label %if.end.196, label %if.then.192

if.then.192:                                      ; preds = %for.body.177
  %235 = load i32, i32* %index, align 4, !tbaa !1
  %idxprom193 = zext i32 %235 to i64
  %236 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %include194 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %236, i32 0, i32 1
  %237 = load i16*, i16** %include194, align 8, !tbaa !31
  %arrayidx195 = getelementptr inbounds i16, i16* %237, i64 %idxprom193
  store i16 1, i16* %arrayidx195, align 2, !tbaa !107
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.196:                                       ; preds = %for.body.177
  br label %LABEL_SKIP

LABEL_SKIP:                                       ; preds = %if.end.196, %if.then
  br label %for.inc.197

for.inc.197:                                      ; preds = %LABEL_SKIP
  %238 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno198 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %238, i32 0, i32 9
  %239 = load i32, i32* %layno198, align 4, !tbaa !105
  %inc199 = add i32 %239, 1
  store i32 %inc199, i32* %layno198, align 4, !tbaa !105
  br label %for.cond.173

for.end.200:                                      ; preds = %for.cond.173
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.200, %if.then.192, %if.then.149, %if.then.144, %if.then.139, %if.then.123, %if.then.82
  %240 = bitcast i32* %prcj to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i32* %prci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  %242 = bitcast i32* %rpy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast i32* %rpx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32* %try1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast i32* %trx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast i32* %try0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast i32* %trx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = bitcast i32* %levelno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.235 [
    i32 0, label %cleanup.cont
    i32 20, label %for.inc.209
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.209

for.inc.209:                                      ; preds = %cleanup.cont, %cleanup
  %249 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno210 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %249, i32 0, i32 6
  %250 = load i32, i32* %compno210, align 4, !tbaa !103
  %inc211 = add i32 %250, 1
  store i32 %inc211, i32* %compno210, align 4, !tbaa !103
  br label %for.cond.70

for.end.212:                                      ; preds = %for.cond.70
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.end.212
  %251 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx214 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %251, i32 0, i32 20
  %252 = load i32, i32* %dx214, align 4, !tbaa !86
  %253 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x215 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %253, i32 0, i32 18
  %254 = load i32, i32* %x215, align 4, !tbaa !109
  %255 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx216 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %255, i32 0, i32 20
  %256 = load i32, i32* %dx216, align 4, !tbaa !86
  %rem217 = urem i32 %254, %256
  %sub218 = sub i32 %252, %rem217
  %257 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x219 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %257, i32 0, i32 18
  %258 = load i32, i32* %x219, align 4, !tbaa !109
  %add220 = add i32 %258, %sub218
  store i32 %add220, i32* %x219, align 4, !tbaa !109
  br label %for.cond.62

for.end.221:                                      ; preds = %for.cond.62
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.end.221
  %259 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy223 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %259, i32 0, i32 21
  %260 = load i32, i32* %dy223, align 4, !tbaa !87
  %261 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y224 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %261, i32 0, i32 19
  %262 = load i32, i32* %y224, align 4, !tbaa !108
  %263 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy225 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %263, i32 0, i32 21
  %264 = load i32, i32* %dy225, align 4, !tbaa !87
  %rem226 = urem i32 %262, %264
  %sub227 = sub i32 %260, %rem226
  %265 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y228 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %265, i32 0, i32 19
  %266 = load i32, i32* %y228, align 4, !tbaa !108
  %add229 = add i32 %266, %sub227
  store i32 %add229, i32* %y228, align 4, !tbaa !108
  br label %for.cond.54

for.end.230:                                      ; preds = %for.cond.54
  br label %for.inc.231

for.inc.231:                                      ; preds = %for.end.230
  %267 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno232 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %267, i32 0, i32 7
  %268 = load i32, i32* %resno232, align 4, !tbaa !104
  %inc233 = add i32 %268, 1
  store i32 %inc233, i32* %resno232, align 4, !tbaa !104
  br label %for.cond.47

for.end.234:                                      ; preds = %for.cond.47
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

cleanup.235:                                      ; preds = %for.end.234, %cleanup
  %269 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #1
  %270 = bitcast %struct.opj_pi_resolution** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #1
  %271 = bitcast %struct.opj_pi_comp** %comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #1
  %272 = load i32, i32* %retval
  ret i32 %272
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_pi_next_pcrl(%struct.opj_pi_iterator* %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %comp = alloca %struct.opj_pi_comp*, align 8
  %res = alloca %struct.opj_pi_resolution*, align 8
  %index = alloca i32, align 4
  %compno1 = alloca i32, align 4
  %resno = alloca i32, align 4
  %dx9 = alloca i32, align 4
  %dy10 = alloca i32, align 4
  %levelno = alloca i32, align 4
  %trx0 = alloca i32, align 4
  %try0 = alloca i32, align 4
  %trx1 = alloca i32, align 4
  %try1 = alloca i32, align 4
  %rpx = alloca i32, align 4
  %rpy = alloca i32, align 4
  %prci = alloca i32, align 4
  %prcj = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_pi_iterator* %pi, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %0 = bitcast %struct.opj_pi_comp** %comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.opj_pi_comp* null, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %1 = bitcast %struct.opj_pi_resolution** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.opj_pi_resolution* null, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %2 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %index, align 4, !tbaa !1
  %3 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %3, i32 0, i32 10
  %4 = load i32, i32* %first, align 4, !tbaa !70
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %5, i32 0, i32 6
  %6 = load i32, i32* %compno, align 4, !tbaa !103
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %7, i32 0, i32 13
  %8 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %8, i64 %idxprom
  store %struct.opj_pi_comp* %arrayidx, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  br label %LABEL_SKIP

if.else:                                          ; preds = %entry
  %9 = bitcast i32* %compno1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %first2 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %11, i32 0, i32 10
  store i32 0, i32* %first2, align 4, !tbaa !70
  %12 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %12, i32 0, i32 20
  store i32 0, i32* %dx, align 4, !tbaa !86
  %13 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %13, i32 0, i32 21
  store i32 0, i32* %dy, align 4, !tbaa !87
  store i32 0, i32* %compno1, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %if.else
  %14 = load i32, i32* %compno1, align 4, !tbaa !1
  %15 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %numcomps = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %15, i32 0, i32 12
  %16 = load i32, i32* %numcomps, align 4, !tbaa !44
  %cmp = icmp ult i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %compno1, align 4, !tbaa !1
  %idxprom3 = zext i32 %17 to i64
  %18 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %comps4 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %18, i32 0, i32 13
  %19 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps4, align 8, !tbaa !33
  %arrayidx5 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %19, i64 %idxprom3
  store %struct.opj_pi_comp* %arrayidx5, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %20 = load i32, i32* %resno, align 4, !tbaa !1
  %21 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %21, i32 0, i32 2
  %22 = load i32, i32* %numresolutions, align 4, !tbaa !53
  %cmp7 = icmp ult i32 %20, %22
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %23 = bitcast i32* %dx9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %dy10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom11 = zext i32 %25 to i64
  %26 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %26, i32 0, i32 3
  %27 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions, align 8, !tbaa !45
  %arrayidx12 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %27, i64 %idxprom11
  store %struct.opj_pi_resolution* %arrayidx12, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %28 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx13 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %28, i32 0, i32 0
  %29 = load i32, i32* %dx13, align 4, !tbaa !50
  %30 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdx = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %30, i32 0, i32 0
  %31 = load i32, i32* %pdx, align 4, !tbaa !54
  %32 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions14 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %32, i32 0, i32 2
  %33 = load i32, i32* %numresolutions14, align 4, !tbaa !53
  %add = add i32 %31, %33
  %sub = sub i32 %add, 1
  %34 = load i32, i32* %resno, align 4, !tbaa !1
  %sub15 = sub i32 %sub, %34
  %shl = shl i32 1, %sub15
  %mul = mul i32 %29, %shl
  store i32 %mul, i32* %dx9, align 4, !tbaa !1
  %35 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy16 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %35, i32 0, i32 1
  %36 = load i32, i32* %dy16, align 4, !tbaa !52
  %37 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdy = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %37, i32 0, i32 1
  %38 = load i32, i32* %pdy, align 4, !tbaa !56
  %39 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions17 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %39, i32 0, i32 2
  %40 = load i32, i32* %numresolutions17, align 4, !tbaa !53
  %add18 = add i32 %38, %40
  %sub19 = sub i32 %add18, 1
  %41 = load i32, i32* %resno, align 4, !tbaa !1
  %sub20 = sub i32 %sub19, %41
  %shl21 = shl i32 1, %sub20
  %mul22 = mul i32 %36, %shl21
  store i32 %mul22, i32* %dy10, align 4, !tbaa !1
  %42 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx23 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %42, i32 0, i32 20
  %43 = load i32, i32* %dx23, align 4, !tbaa !86
  %tobool24 = icmp ne i32 %43, 0
  br i1 %tobool24, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body.8
  %44 = load i32, i32* %dx9, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %for.body.8
  %45 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx25 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %45, i32 0, i32 20
  %46 = load i32, i32* %dx25, align 4, !tbaa !86
  %47 = load i32, i32* %dx9, align 4, !tbaa !1
  %call = call i32 @opj_uint_min(i32 %46, i32 %47) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %44, %cond.true ], [ %call, %cond.false ]
  %48 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx26 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %48, i32 0, i32 20
  store i32 %cond, i32* %dx26, align 4, !tbaa !86
  %49 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy27 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %49, i32 0, i32 21
  %50 = load i32, i32* %dy27, align 4, !tbaa !87
  %tobool28 = icmp ne i32 %50, 0
  br i1 %tobool28, label %cond.false.30, label %cond.true.29

cond.true.29:                                     ; preds = %cond.end
  %51 = load i32, i32* %dy10, align 4, !tbaa !1
  br label %cond.end.33

cond.false.30:                                    ; preds = %cond.end
  %52 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy31 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %52, i32 0, i32 21
  %53 = load i32, i32* %dy31, align 4, !tbaa !87
  %54 = load i32, i32* %dy10, align 4, !tbaa !1
  %call32 = call i32 @opj_uint_min(i32 %53, i32 %54) #6
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.30, %cond.true.29
  %cond34 = phi i32 [ %51, %cond.true.29 ], [ %call32, %cond.false.30 ]
  %55 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy35 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %55, i32 0, i32 21
  store i32 %cond34, i32* %dy35, align 4, !tbaa !87
  %56 = bitcast i32* %dy10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %dx9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.33
  %58 = load i32, i32* %resno, align 4, !tbaa !1
  %inc = add i32 %58, 1
  store i32 %inc, i32* %resno, align 4, !tbaa !1
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end
  %59 = load i32, i32* %compno1, align 4, !tbaa !1
  %inc37 = add i32 %59, 1
  store i32 %inc37, i32* %compno1, align 4, !tbaa !1
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  %60 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %compno1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %if.end

if.end:                                           ; preds = %for.end.38
  %62 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tp_on = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %62, i32 0, i32 0
  %63 = load i8, i8* %tp_on, align 1, !tbaa !85
  %tobool39 = icmp ne i8 %63, 0
  br i1 %tobool39, label %if.end.48, label %if.then.40

if.then.40:                                       ; preds = %if.end
  %64 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty0 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %64, i32 0, i32 15
  %65 = load i32, i32* %ty0, align 4, !tbaa !37
  %66 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %66, i32 0, i32 11
  %ty041 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc, i32 0, i32 14
  store i32 %65, i32* %ty041, align 4, !tbaa !100
  %67 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx0 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %67, i32 0, i32 14
  %68 = load i32, i32* %tx0, align 4, !tbaa !36
  %69 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc42 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %69, i32 0, i32 11
  %tx043 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc42, i32 0, i32 12
  store i32 %68, i32* %tx043, align 4, !tbaa !99
  %70 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty1 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %70, i32 0, i32 17
  %71 = load i32, i32* %ty1, align 4, !tbaa !39
  %72 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc44 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %72, i32 0, i32 11
  %ty145 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc44, i32 0, i32 15
  store i32 %71, i32* %ty145, align 4, !tbaa !102
  %73 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx1 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %73, i32 0, i32 16
  %74 = load i32, i32* %tx1, align 4, !tbaa !38
  %75 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc46 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %75, i32 0, i32 11
  %tx147 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc46, i32 0, i32 13
  store i32 %74, i32* %tx147, align 4, !tbaa !101
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.40, %if.end
  %76 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc49 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %76, i32 0, i32 11
  %ty050 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc49, i32 0, i32 14
  %77 = load i32, i32* %ty050, align 4, !tbaa !100
  %78 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %78, i32 0, i32 19
  store i32 %77, i32* %y, align 4, !tbaa !108
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.228, %if.end.48
  %79 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y52 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %79, i32 0, i32 19
  %80 = load i32, i32* %y52, align 4, !tbaa !108
  %81 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc53 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %81, i32 0, i32 11
  %ty154 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc53, i32 0, i32 15
  %82 = load i32, i32* %ty154, align 4, !tbaa !102
  %cmp55 = icmp slt i32 %80, %82
  br i1 %cmp55, label %for.body.56, label %for.end.236

for.body.56:                                      ; preds = %for.cond.51
  %83 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc57 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %83, i32 0, i32 11
  %tx058 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc57, i32 0, i32 12
  %84 = load i32, i32* %tx058, align 4, !tbaa !99
  %85 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %85, i32 0, i32 18
  store i32 %84, i32* %x, align 4, !tbaa !109
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.219, %for.body.56
  %86 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x60 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %86, i32 0, i32 18
  %87 = load i32, i32* %x60, align 4, !tbaa !109
  %88 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc61 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %88, i32 0, i32 11
  %tx162 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc61, i32 0, i32 13
  %89 = load i32, i32* %tx162, align 4, !tbaa !101
  %cmp63 = icmp slt i32 %87, %89
  br i1 %cmp63, label %for.body.64, label %for.end.227

for.body.64:                                      ; preds = %for.cond.59
  %90 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc65 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %90, i32 0, i32 11
  %compno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc65, i32 0, i32 1
  %91 = load i32, i32* %compno0, align 4, !tbaa !74
  %92 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno66 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %92, i32 0, i32 6
  store i32 %91, i32* %compno66, align 4, !tbaa !103
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.215, %for.body.64
  %93 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno68 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %93, i32 0, i32 6
  %94 = load i32, i32* %compno68, align 4, !tbaa !103
  %95 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc69 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %95, i32 0, i32 11
  %compno170 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc69, i32 0, i32 4
  %96 = load i32, i32* %compno170, align 4, !tbaa !80
  %cmp71 = icmp ult i32 %94, %96
  br i1 %cmp71, label %for.body.72, label %for.end.218

for.body.72:                                      ; preds = %for.cond.67
  %97 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno73 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %97, i32 0, i32 6
  %98 = load i32, i32* %compno73, align 4, !tbaa !103
  %idxprom74 = zext i32 %98 to i64
  %99 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %comps75 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %99, i32 0, i32 13
  %100 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps75, align 8, !tbaa !33
  %arrayidx76 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %100, i64 %idxprom74
  store %struct.opj_pi_comp* %arrayidx76, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %101 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc77 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %101, i32 0, i32 11
  %resno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc77, i32 0, i32 0
  %102 = load i32, i32* %resno0, align 4, !tbaa !72
  %103 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno78 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %103, i32 0, i32 7
  store i32 %102, i32* %resno78, align 4, !tbaa !104
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.211, %for.body.72
  %104 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno80 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %104, i32 0, i32 7
  %105 = load i32, i32* %resno80, align 4, !tbaa !104
  %106 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc81 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %106, i32 0, i32 11
  %resno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc81, i32 0, i32 3
  %107 = load i32, i32* %resno1, align 4, !tbaa !78
  %108 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions82 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %108, i32 0, i32 2
  %109 = load i32, i32* %numresolutions82, align 4, !tbaa !53
  %call83 = call i32 @opj_uint_min(i32 %107, i32 %109) #6
  %cmp84 = icmp ult i32 %105, %call83
  br i1 %cmp84, label %for.body.85, label %for.end.214

for.body.85:                                      ; preds = %for.cond.79
  %110 = bitcast i32* %levelno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %110) #1
  %111 = bitcast i32* %trx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #1
  %112 = bitcast i32* %try0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #1
  %113 = bitcast i32* %trx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  %114 = bitcast i32* %try1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #1
  %115 = bitcast i32* %rpx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  %116 = bitcast i32* %rpy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #1
  %117 = bitcast i32* %prci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #1
  %118 = bitcast i32* %prcj to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %119 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno86 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %119, i32 0, i32 7
  %120 = load i32, i32* %resno86, align 4, !tbaa !104
  %idxprom87 = zext i32 %120 to i64
  %121 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %resolutions88 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %121, i32 0, i32 3
  %122 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions88, align 8, !tbaa !45
  %arrayidx89 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %122, i64 %idxprom87
  store %struct.opj_pi_resolution* %arrayidx89, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %123 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions90 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %123, i32 0, i32 2
  %124 = load i32, i32* %numresolutions90, align 4, !tbaa !53
  %sub91 = sub i32 %124, 1
  %125 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno92 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %125, i32 0, i32 7
  %126 = load i32, i32* %resno92, align 4, !tbaa !104
  %sub93 = sub i32 %sub91, %126
  store i32 %sub93, i32* %levelno, align 4, !tbaa !1
  %127 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx094 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %127, i32 0, i32 14
  %128 = load i32, i32* %tx094, align 4, !tbaa !36
  %129 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx95 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %129, i32 0, i32 0
  %130 = load i32, i32* %dx95, align 4, !tbaa !50
  %131 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl96 = shl i32 %130, %131
  %call97 = call i32 @opj_int_ceildiv(i32 %128, i32 %shl96) #6
  store i32 %call97, i32* %trx0, align 4, !tbaa !1
  %132 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty098 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %132, i32 0, i32 15
  %133 = load i32, i32* %ty098, align 4, !tbaa !37
  %134 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy99 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %134, i32 0, i32 1
  %135 = load i32, i32* %dy99, align 4, !tbaa !52
  %136 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl100 = shl i32 %135, %136
  %call101 = call i32 @opj_int_ceildiv(i32 %133, i32 %shl100) #6
  store i32 %call101, i32* %try0, align 4, !tbaa !1
  %137 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx1102 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %137, i32 0, i32 16
  %138 = load i32, i32* %tx1102, align 4, !tbaa !38
  %139 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx103 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %139, i32 0, i32 0
  %140 = load i32, i32* %dx103, align 4, !tbaa !50
  %141 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl104 = shl i32 %140, %141
  %call105 = call i32 @opj_int_ceildiv(i32 %138, i32 %shl104) #6
  store i32 %call105, i32* %trx1, align 4, !tbaa !1
  %142 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty1106 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %142, i32 0, i32 17
  %143 = load i32, i32* %ty1106, align 4, !tbaa !39
  %144 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy107 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %144, i32 0, i32 1
  %145 = load i32, i32* %dy107, align 4, !tbaa !52
  %146 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl108 = shl i32 %145, %146
  %call109 = call i32 @opj_int_ceildiv(i32 %143, i32 %shl108) #6
  store i32 %call109, i32* %try1, align 4, !tbaa !1
  %147 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdx110 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %147, i32 0, i32 0
  %148 = load i32, i32* %pdx110, align 4, !tbaa !54
  %149 = load i32, i32* %levelno, align 4, !tbaa !1
  %add111 = add i32 %148, %149
  store i32 %add111, i32* %rpx, align 4, !tbaa !1
  %150 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdy112 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %150, i32 0, i32 1
  %151 = load i32, i32* %pdy112, align 4, !tbaa !56
  %152 = load i32, i32* %levelno, align 4, !tbaa !1
  %add113 = add i32 %151, %152
  store i32 %add113, i32* %rpy, align 4, !tbaa !1
  %153 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y114 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %153, i32 0, i32 19
  %154 = load i32, i32* %y114, align 4, !tbaa !108
  %155 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy115 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %155, i32 0, i32 1
  %156 = load i32, i32* %dy115, align 4, !tbaa !52
  %157 = load i32, i32* %rpy, align 4, !tbaa !1
  %shl116 = shl i32 %156, %157
  %rem = urem i32 %154, %shl116
  %cmp117 = icmp eq i32 %rem, 0
  br i1 %cmp117, label %if.end.126, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.85
  %158 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y118 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %158, i32 0, i32 19
  %159 = load i32, i32* %y118, align 4, !tbaa !108
  %160 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty0119 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %160, i32 0, i32 15
  %161 = load i32, i32* %ty0119, align 4, !tbaa !37
  %cmp120 = icmp eq i32 %159, %161
  br i1 %cmp120, label %land.lhs.true, label %if.then.125

land.lhs.true:                                    ; preds = %lor.lhs.false
  %162 = load i32, i32* %try0, align 4, !tbaa !1
  %163 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl121 = shl i32 %162, %163
  %164 = load i32, i32* %rpy, align 4, !tbaa !1
  %shl122 = shl i32 1, %164
  %rem123 = srem i32 %shl121, %shl122
  %tobool124 = icmp ne i32 %rem123, 0
  br i1 %tobool124, label %if.end.126, label %if.then.125

if.then.125:                                      ; preds = %land.lhs.true, %lor.lhs.false
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

if.end.126:                                       ; preds = %land.lhs.true, %for.body.85
  %165 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x127 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %165, i32 0, i32 18
  %166 = load i32, i32* %x127, align 4, !tbaa !109
  %167 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx128 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %167, i32 0, i32 0
  %168 = load i32, i32* %dx128, align 4, !tbaa !50
  %169 = load i32, i32* %rpx, align 4, !tbaa !1
  %shl129 = shl i32 %168, %169
  %rem130 = urem i32 %166, %shl129
  %cmp131 = icmp eq i32 %rem130, 0
  br i1 %cmp131, label %if.end.142, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %if.end.126
  %170 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x133 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %170, i32 0, i32 18
  %171 = load i32, i32* %x133, align 4, !tbaa !109
  %172 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx0134 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %172, i32 0, i32 14
  %173 = load i32, i32* %tx0134, align 4, !tbaa !36
  %cmp135 = icmp eq i32 %171, %173
  br i1 %cmp135, label %land.lhs.true.136, label %if.then.141

land.lhs.true.136:                                ; preds = %lor.lhs.false.132
  %174 = load i32, i32* %trx0, align 4, !tbaa !1
  %175 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl137 = shl i32 %174, %175
  %176 = load i32, i32* %rpx, align 4, !tbaa !1
  %shl138 = shl i32 1, %176
  %rem139 = srem i32 %shl137, %shl138
  %tobool140 = icmp ne i32 %rem139, 0
  br i1 %tobool140, label %if.end.142, label %if.then.141

if.then.141:                                      ; preds = %land.lhs.true.136, %lor.lhs.false.132
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

if.end.142:                                       ; preds = %land.lhs.true.136, %if.end.126
  %177 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pw = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %177, i32 0, i32 2
  %178 = load i32, i32* %pw, align 4, !tbaa !57
  %cmp143 = icmp eq i32 %178, 0
  br i1 %cmp143, label %if.then.146, label %lor.lhs.false.144

lor.lhs.false.144:                                ; preds = %if.end.142
  %179 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %179, i32 0, i32 3
  %180 = load i32, i32* %ph, align 4, !tbaa !58
  %cmp145 = icmp eq i32 %180, 0
  br i1 %cmp145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %lor.lhs.false.144, %if.end.142
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

if.end.147:                                       ; preds = %lor.lhs.false.144
  %181 = load i32, i32* %trx0, align 4, !tbaa !1
  %182 = load i32, i32* %trx1, align 4, !tbaa !1
  %cmp148 = icmp eq i32 %181, %182
  br i1 %cmp148, label %if.then.151, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %if.end.147
  %183 = load i32, i32* %try0, align 4, !tbaa !1
  %184 = load i32, i32* %try1, align 4, !tbaa !1
  %cmp150 = icmp eq i32 %183, %184
  br i1 %cmp150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %lor.lhs.false.149, %if.end.147
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

if.end.152:                                       ; preds = %lor.lhs.false.149
  %185 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x153 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %185, i32 0, i32 18
  %186 = load i32, i32* %x153, align 4, !tbaa !109
  %187 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx154 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %187, i32 0, i32 0
  %188 = load i32, i32* %dx154, align 4, !tbaa !50
  %189 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl155 = shl i32 %188, %189
  %call156 = call i32 @opj_int_ceildiv(i32 %186, i32 %shl155) #6
  %190 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdx157 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %190, i32 0, i32 0
  %191 = load i32, i32* %pdx157, align 4, !tbaa !54
  %call158 = call i32 @opj_int_floordivpow2(i32 %call156, i32 %191) #6
  %192 = load i32, i32* %trx0, align 4, !tbaa !1
  %193 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdx159 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %193, i32 0, i32 0
  %194 = load i32, i32* %pdx159, align 4, !tbaa !54
  %call160 = call i32 @opj_int_floordivpow2(i32 %192, i32 %194) #6
  %sub161 = sub nsw i32 %call158, %call160
  store i32 %sub161, i32* %prci, align 4, !tbaa !1
  %195 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y162 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %195, i32 0, i32 19
  %196 = load i32, i32* %y162, align 4, !tbaa !108
  %197 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy163 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %197, i32 0, i32 1
  %198 = load i32, i32* %dy163, align 4, !tbaa !52
  %199 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl164 = shl i32 %198, %199
  %call165 = call i32 @opj_int_ceildiv(i32 %196, i32 %shl164) #6
  %200 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdy166 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %200, i32 0, i32 1
  %201 = load i32, i32* %pdy166, align 4, !tbaa !56
  %call167 = call i32 @opj_int_floordivpow2(i32 %call165, i32 %201) #6
  %202 = load i32, i32* %try0, align 4, !tbaa !1
  %203 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdy168 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %203, i32 0, i32 1
  %204 = load i32, i32* %pdy168, align 4, !tbaa !56
  %call169 = call i32 @opj_int_floordivpow2(i32 %202, i32 %204) #6
  %sub170 = sub nsw i32 %call167, %call169
  store i32 %sub170, i32* %prcj, align 4, !tbaa !1
  %205 = load i32, i32* %prci, align 4, !tbaa !1
  %206 = load i32, i32* %prcj, align 4, !tbaa !1
  %207 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pw171 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %207, i32 0, i32 2
  %208 = load i32, i32* %pw171, align 4, !tbaa !57
  %mul172 = mul i32 %206, %208
  %add173 = add i32 %205, %mul172
  %209 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %precno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %209, i32 0, i32 8
  store i32 %add173, i32* %precno, align 4, !tbaa !106
  %210 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc174 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %210, i32 0, i32 11
  %layno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc174, i32 0, i32 5
  %211 = load i32, i32* %layno0, align 4, !tbaa !75
  %212 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %212, i32 0, i32 9
  store i32 %211, i32* %layno, align 4, !tbaa !105
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.199, %if.end.152
  %213 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno176 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %213, i32 0, i32 9
  %214 = load i32, i32* %layno176, align 4, !tbaa !105
  %215 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc177 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %215, i32 0, i32 11
  %layno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc177, i32 0, i32 2
  %216 = load i32, i32* %layno1, align 4, !tbaa !82
  %cmp178 = icmp ult i32 %214, %216
  br i1 %cmp178, label %for.body.179, label %for.end.202

for.body.179:                                     ; preds = %for.cond.175
  %217 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno180 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %217, i32 0, i32 9
  %218 = load i32, i32* %layno180, align 4, !tbaa !105
  %219 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_l = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %219, i32 0, i32 2
  %220 = load i32, i32* %step_l, align 4, !tbaa !43
  %mul181 = mul i32 %218, %220
  %221 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno182 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %221, i32 0, i32 7
  %222 = load i32, i32* %resno182, align 4, !tbaa !104
  %223 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_r = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %223, i32 0, i32 3
  %224 = load i32, i32* %step_r, align 4, !tbaa !42
  %mul183 = mul i32 %222, %224
  %add184 = add i32 %mul181, %mul183
  %225 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno185 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %225, i32 0, i32 6
  %226 = load i32, i32* %compno185, align 4, !tbaa !103
  %227 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_c = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %227, i32 0, i32 4
  %228 = load i32, i32* %step_c, align 4, !tbaa !41
  %mul186 = mul i32 %226, %228
  %add187 = add i32 %add184, %mul186
  %229 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %precno188 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %229, i32 0, i32 8
  %230 = load i32, i32* %precno188, align 4, !tbaa !106
  %231 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_p = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %231, i32 0, i32 5
  %232 = load i32, i32* %step_p, align 4, !tbaa !40
  %mul189 = mul i32 %230, %232
  %add190 = add i32 %add187, %mul189
  store i32 %add190, i32* %index, align 4, !tbaa !1
  %233 = load i32, i32* %index, align 4, !tbaa !1
  %idxprom191 = zext i32 %233 to i64
  %234 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %include = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %234, i32 0, i32 1
  %235 = load i16*, i16** %include, align 8, !tbaa !31
  %arrayidx192 = getelementptr inbounds i16, i16* %235, i64 %idxprom191
  %236 = load i16, i16* %arrayidx192, align 2, !tbaa !107
  %tobool193 = icmp ne i16 %236, 0
  br i1 %tobool193, label %if.end.198, label %if.then.194

if.then.194:                                      ; preds = %for.body.179
  %237 = load i32, i32* %index, align 4, !tbaa !1
  %idxprom195 = zext i32 %237 to i64
  %238 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %include196 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %238, i32 0, i32 1
  %239 = load i16*, i16** %include196, align 8, !tbaa !31
  %arrayidx197 = getelementptr inbounds i16, i16* %239, i64 %idxprom195
  store i16 1, i16* %arrayidx197, align 2, !tbaa !107
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.198:                                       ; preds = %for.body.179
  br label %LABEL_SKIP

LABEL_SKIP:                                       ; preds = %if.end.198, %if.then
  br label %for.inc.199

for.inc.199:                                      ; preds = %LABEL_SKIP
  %240 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno200 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %240, i32 0, i32 9
  %241 = load i32, i32* %layno200, align 4, !tbaa !105
  %inc201 = add i32 %241, 1
  store i32 %inc201, i32* %layno200, align 4, !tbaa !105
  br label %for.cond.175

for.end.202:                                      ; preds = %for.cond.175
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.202, %if.then.194, %if.then.151, %if.then.146, %if.then.141, %if.then.125
  %242 = bitcast i32* %prcj to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast i32* %prci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32* %rpy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast i32* %rpx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast i32* %try1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast i32* %trx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = bitcast i32* %try0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  %249 = bitcast i32* %trx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  %250 = bitcast i32* %levelno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.237 [
    i32 0, label %cleanup.cont
    i32 20, label %for.inc.211
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.211

for.inc.211:                                      ; preds = %cleanup.cont, %cleanup
  %251 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno212 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %251, i32 0, i32 7
  %252 = load i32, i32* %resno212, align 4, !tbaa !104
  %inc213 = add i32 %252, 1
  store i32 %inc213, i32* %resno212, align 4, !tbaa !104
  br label %for.cond.79

for.end.214:                                      ; preds = %for.cond.79
  br label %for.inc.215

for.inc.215:                                      ; preds = %for.end.214
  %253 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno216 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %253, i32 0, i32 6
  %254 = load i32, i32* %compno216, align 4, !tbaa !103
  %inc217 = add i32 %254, 1
  store i32 %inc217, i32* %compno216, align 4, !tbaa !103
  br label %for.cond.67

for.end.218:                                      ; preds = %for.cond.67
  br label %for.inc.219

for.inc.219:                                      ; preds = %for.end.218
  %255 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx220 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %255, i32 0, i32 20
  %256 = load i32, i32* %dx220, align 4, !tbaa !86
  %257 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x221 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %257, i32 0, i32 18
  %258 = load i32, i32* %x221, align 4, !tbaa !109
  %259 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx222 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %259, i32 0, i32 20
  %260 = load i32, i32* %dx222, align 4, !tbaa !86
  %rem223 = urem i32 %258, %260
  %sub224 = sub i32 %256, %rem223
  %261 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x225 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %261, i32 0, i32 18
  %262 = load i32, i32* %x225, align 4, !tbaa !109
  %add226 = add i32 %262, %sub224
  store i32 %add226, i32* %x225, align 4, !tbaa !109
  br label %for.cond.59

for.end.227:                                      ; preds = %for.cond.59
  br label %for.inc.228

for.inc.228:                                      ; preds = %for.end.227
  %263 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy229 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %263, i32 0, i32 21
  %264 = load i32, i32* %dy229, align 4, !tbaa !87
  %265 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y230 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %265, i32 0, i32 19
  %266 = load i32, i32* %y230, align 4, !tbaa !108
  %267 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy231 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %267, i32 0, i32 21
  %268 = load i32, i32* %dy231, align 4, !tbaa !87
  %rem232 = urem i32 %266, %268
  %sub233 = sub i32 %264, %rem232
  %269 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y234 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %269, i32 0, i32 19
  %270 = load i32, i32* %y234, align 4, !tbaa !108
  %add235 = add i32 %270, %sub233
  store i32 %add235, i32* %y234, align 4, !tbaa !108
  br label %for.cond.51

for.end.236:                                      ; preds = %for.cond.51
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.237

cleanup.237:                                      ; preds = %for.end.236, %cleanup
  %271 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #1
  %272 = bitcast %struct.opj_pi_resolution** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  %273 = bitcast %struct.opj_pi_comp** %comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #1
  %274 = load i32, i32* %retval
  ret i32 %274
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_pi_next_cprl(%struct.opj_pi_iterator* %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pi.addr = alloca %struct.opj_pi_iterator*, align 8
  %comp = alloca %struct.opj_pi_comp*, align 8
  %res = alloca %struct.opj_pi_resolution*, align 8
  %index = alloca i32, align 4
  %resno = alloca i32, align 4
  %dx12 = alloca i32, align 4
  %dy13 = alloca i32, align 4
  %levelno = alloca i32, align 4
  %trx0 = alloca i32, align 4
  %try0 = alloca i32, align 4
  %trx1 = alloca i32, align 4
  %try1 = alloca i32, align 4
  %rpx = alloca i32, align 4
  %rpy = alloca i32, align 4
  %prci = alloca i32, align 4
  %prcj = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_pi_iterator* %pi, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %0 = bitcast %struct.opj_pi_comp** %comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.opj_pi_comp* null, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %1 = bitcast %struct.opj_pi_resolution** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.opj_pi_resolution* null, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %2 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %index, align 4, !tbaa !1
  %3 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %3, i32 0, i32 10
  %4 = load i32, i32* %first, align 4, !tbaa !70
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %5, i32 0, i32 6
  %6 = load i32, i32* %compno, align 4, !tbaa !103
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %comps = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %7, i32 0, i32 13
  %8 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %8, i64 %idxprom
  store %struct.opj_pi_comp* %arrayidx, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  br label %LABEL_SKIP

if.else:                                          ; preds = %entry
  %9 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %first1 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %9, i32 0, i32 10
  store i32 0, i32* %first1, align 4, !tbaa !70
  br label %if.end

if.end:                                           ; preds = %if.else
  %10 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %10, i32 0, i32 11
  %compno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc, i32 0, i32 1
  %11 = load i32, i32* %compno0, align 4, !tbaa !74
  %12 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno2 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %12, i32 0, i32 6
  store i32 %11, i32* %compno2, align 4, !tbaa !103
  br label %for.cond

for.cond:                                         ; preds = %for.inc.225, %if.end
  %13 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno3 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %13, i32 0, i32 6
  %14 = load i32, i32* %compno3, align 4, !tbaa !103
  %15 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc4 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %15, i32 0, i32 11
  %compno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc4, i32 0, i32 4
  %16 = load i32, i32* %compno1, align 4, !tbaa !80
  %cmp = icmp ult i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end.228

for.body:                                         ; preds = %for.cond
  %17 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno5 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %18, i32 0, i32 6
  %19 = load i32, i32* %compno5, align 4, !tbaa !103
  %idxprom6 = zext i32 %19 to i64
  %20 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %comps7 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %20, i32 0, i32 13
  %21 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comps7, align 8, !tbaa !33
  %arrayidx8 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %21, i64 %idxprom6
  store %struct.opj_pi_comp* %arrayidx8, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %22 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %22, i32 0, i32 20
  store i32 0, i32* %dx, align 4, !tbaa !86
  %23 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %23, i32 0, i32 21
  store i32 0, i32* %dy, align 4, !tbaa !87
  store i32 0, i32* %resno, align 4, !tbaa !1
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %24 = load i32, i32* %resno, align 4, !tbaa !1
  %25 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %25, i32 0, i32 2
  %26 = load i32, i32* %numresolutions, align 4, !tbaa !53
  %cmp10 = icmp ult i32 %24, %26
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %27 = bitcast i32* %dx12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32* %dy13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load i32, i32* %resno, align 4, !tbaa !1
  %idxprom14 = zext i32 %29 to i64
  %30 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %resolutions = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %30, i32 0, i32 3
  %31 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions, align 8, !tbaa !45
  %arrayidx15 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %31, i64 %idxprom14
  store %struct.opj_pi_resolution* %arrayidx15, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %32 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx16 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %32, i32 0, i32 0
  %33 = load i32, i32* %dx16, align 4, !tbaa !50
  %34 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdx = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %34, i32 0, i32 0
  %35 = load i32, i32* %pdx, align 4, !tbaa !54
  %36 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions17 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %36, i32 0, i32 2
  %37 = load i32, i32* %numresolutions17, align 4, !tbaa !53
  %add = add i32 %35, %37
  %sub = sub i32 %add, 1
  %38 = load i32, i32* %resno, align 4, !tbaa !1
  %sub18 = sub i32 %sub, %38
  %shl = shl i32 1, %sub18
  %mul = mul i32 %33, %shl
  store i32 %mul, i32* %dx12, align 4, !tbaa !1
  %39 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy19 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %39, i32 0, i32 1
  %40 = load i32, i32* %dy19, align 4, !tbaa !52
  %41 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdy = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %41, i32 0, i32 1
  %42 = load i32, i32* %pdy, align 4, !tbaa !56
  %43 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions20 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %43, i32 0, i32 2
  %44 = load i32, i32* %numresolutions20, align 4, !tbaa !53
  %add21 = add i32 %42, %44
  %sub22 = sub i32 %add21, 1
  %45 = load i32, i32* %resno, align 4, !tbaa !1
  %sub23 = sub i32 %sub22, %45
  %shl24 = shl i32 1, %sub23
  %mul25 = mul i32 %40, %shl24
  store i32 %mul25, i32* %dy13, align 4, !tbaa !1
  %46 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx26 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %46, i32 0, i32 20
  %47 = load i32, i32* %dx26, align 4, !tbaa !86
  %tobool27 = icmp ne i32 %47, 0
  br i1 %tobool27, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body.11
  %48 = load i32, i32* %dx12, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %for.body.11
  %49 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx28 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %49, i32 0, i32 20
  %50 = load i32, i32* %dx28, align 4, !tbaa !86
  %51 = load i32, i32* %dx12, align 4, !tbaa !1
  %call = call i32 @opj_uint_min(i32 %50, i32 %51) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %48, %cond.true ], [ %call, %cond.false ]
  %52 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx29 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %52, i32 0, i32 20
  store i32 %cond, i32* %dx29, align 4, !tbaa !86
  %53 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy30 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %53, i32 0, i32 21
  %54 = load i32, i32* %dy30, align 4, !tbaa !87
  %tobool31 = icmp ne i32 %54, 0
  br i1 %tobool31, label %cond.false.33, label %cond.true.32

cond.true.32:                                     ; preds = %cond.end
  %55 = load i32, i32* %dy13, align 4, !tbaa !1
  br label %cond.end.36

cond.false.33:                                    ; preds = %cond.end
  %56 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy34 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %56, i32 0, i32 21
  %57 = load i32, i32* %dy34, align 4, !tbaa !87
  %58 = load i32, i32* %dy13, align 4, !tbaa !1
  %call35 = call i32 @opj_uint_min(i32 %57, i32 %58) #6
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.33, %cond.true.32
  %cond37 = phi i32 [ %55, %cond.true.32 ], [ %call35, %cond.false.33 ]
  %59 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy38 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %59, i32 0, i32 21
  store i32 %cond37, i32* %dy38, align 4, !tbaa !87
  %60 = bitcast i32* %dy13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %dx12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.36
  %62 = load i32, i32* %resno, align 4, !tbaa !1
  %inc = add i32 %62, 1
  store i32 %inc, i32* %resno, align 4, !tbaa !1
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %63 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tp_on = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %63, i32 0, i32 0
  %64 = load i8, i8* %tp_on, align 1, !tbaa !85
  %tobool39 = icmp ne i8 %64, 0
  br i1 %tobool39, label %if.end.49, label %if.then.40

if.then.40:                                       ; preds = %for.end
  %65 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty0 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %65, i32 0, i32 15
  %66 = load i32, i32* %ty0, align 4, !tbaa !37
  %67 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc41 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %67, i32 0, i32 11
  %ty042 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc41, i32 0, i32 14
  store i32 %66, i32* %ty042, align 4, !tbaa !100
  %68 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx0 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %68, i32 0, i32 14
  %69 = load i32, i32* %tx0, align 4, !tbaa !36
  %70 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc43 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %70, i32 0, i32 11
  %tx044 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc43, i32 0, i32 12
  store i32 %69, i32* %tx044, align 4, !tbaa !99
  %71 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty1 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %71, i32 0, i32 17
  %72 = load i32, i32* %ty1, align 4, !tbaa !39
  %73 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc45 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %73, i32 0, i32 11
  %ty146 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc45, i32 0, i32 15
  store i32 %72, i32* %ty146, align 4, !tbaa !102
  %74 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx1 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %74, i32 0, i32 16
  %75 = load i32, i32* %tx1, align 4, !tbaa !38
  %76 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc47 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %76, i32 0, i32 11
  %tx148 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc47, i32 0, i32 13
  store i32 %75, i32* %tx148, align 4, !tbaa !101
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.40, %for.end
  %77 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc50 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %77, i32 0, i32 11
  %ty051 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc50, i32 0, i32 14
  %78 = load i32, i32* %ty051, align 4, !tbaa !100
  %79 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %79, i32 0, i32 19
  store i32 %78, i32* %y, align 4, !tbaa !108
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.213, %if.end.49
  %80 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y53 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %80, i32 0, i32 19
  %81 = load i32, i32* %y53, align 4, !tbaa !108
  %82 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc54 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %82, i32 0, i32 11
  %ty155 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc54, i32 0, i32 15
  %83 = load i32, i32* %ty155, align 4, !tbaa !102
  %cmp56 = icmp slt i32 %81, %83
  br i1 %cmp56, label %for.body.57, label %for.end.221

for.body.57:                                      ; preds = %for.cond.52
  %84 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc58 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %84, i32 0, i32 11
  %tx059 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc58, i32 0, i32 12
  %85 = load i32, i32* %tx059, align 4, !tbaa !99
  %86 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %86, i32 0, i32 18
  store i32 %85, i32* %x, align 4, !tbaa !109
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.204, %for.body.57
  %87 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x61 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %87, i32 0, i32 18
  %88 = load i32, i32* %x61, align 4, !tbaa !109
  %89 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc62 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %89, i32 0, i32 11
  %tx163 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc62, i32 0, i32 13
  %90 = load i32, i32* %tx163, align 4, !tbaa !101
  %cmp64 = icmp slt i32 %88, %90
  br i1 %cmp64, label %for.body.65, label %for.end.212

for.body.65:                                      ; preds = %for.cond.60
  %91 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc66 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %91, i32 0, i32 11
  %resno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc66, i32 0, i32 0
  %92 = load i32, i32* %resno0, align 4, !tbaa !72
  %93 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno67 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %93, i32 0, i32 7
  store i32 %92, i32* %resno67, align 4, !tbaa !104
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.200, %for.body.65
  %94 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno69 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %94, i32 0, i32 7
  %95 = load i32, i32* %resno69, align 4, !tbaa !104
  %96 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc70 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %96, i32 0, i32 11
  %resno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc70, i32 0, i32 3
  %97 = load i32, i32* %resno1, align 4, !tbaa !78
  %98 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions71 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %98, i32 0, i32 2
  %99 = load i32, i32* %numresolutions71, align 4, !tbaa !53
  %call72 = call i32 @opj_uint_min(i32 %97, i32 %99) #6
  %cmp73 = icmp ult i32 %95, %call72
  br i1 %cmp73, label %for.body.74, label %for.end.203

for.body.74:                                      ; preds = %for.cond.68
  %100 = bitcast i32* %levelno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  %101 = bitcast i32* %trx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  %102 = bitcast i32* %try0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #1
  %103 = bitcast i32* %trx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %104 = bitcast i32* %try1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = bitcast i32* %rpx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  %106 = bitcast i32* %rpy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = bitcast i32* %prci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #1
  %108 = bitcast i32* %prcj to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #1
  %109 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno75 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %109, i32 0, i32 7
  %110 = load i32, i32* %resno75, align 4, !tbaa !104
  %idxprom76 = zext i32 %110 to i64
  %111 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %resolutions77 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %111, i32 0, i32 3
  %112 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %resolutions77, align 8, !tbaa !45
  %arrayidx78 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %112, i64 %idxprom76
  store %struct.opj_pi_resolution* %arrayidx78, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %113 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %numresolutions79 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %113, i32 0, i32 2
  %114 = load i32, i32* %numresolutions79, align 4, !tbaa !53
  %sub80 = sub i32 %114, 1
  %115 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno81 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %115, i32 0, i32 7
  %116 = load i32, i32* %resno81, align 4, !tbaa !104
  %sub82 = sub i32 %sub80, %116
  store i32 %sub82, i32* %levelno, align 4, !tbaa !1
  %117 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx083 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %117, i32 0, i32 14
  %118 = load i32, i32* %tx083, align 4, !tbaa !36
  %119 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx84 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %119, i32 0, i32 0
  %120 = load i32, i32* %dx84, align 4, !tbaa !50
  %121 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl85 = shl i32 %120, %121
  %call86 = call i32 @opj_int_ceildiv(i32 %118, i32 %shl85) #6
  store i32 %call86, i32* %trx0, align 4, !tbaa !1
  %122 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty087 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %122, i32 0, i32 15
  %123 = load i32, i32* %ty087, align 4, !tbaa !37
  %124 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy88 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %124, i32 0, i32 1
  %125 = load i32, i32* %dy88, align 4, !tbaa !52
  %126 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl89 = shl i32 %125, %126
  %call90 = call i32 @opj_int_ceildiv(i32 %123, i32 %shl89) #6
  store i32 %call90, i32* %try0, align 4, !tbaa !1
  %127 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx191 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %127, i32 0, i32 16
  %128 = load i32, i32* %tx191, align 4, !tbaa !38
  %129 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx92 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %129, i32 0, i32 0
  %130 = load i32, i32* %dx92, align 4, !tbaa !50
  %131 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl93 = shl i32 %130, %131
  %call94 = call i32 @opj_int_ceildiv(i32 %128, i32 %shl93) #6
  store i32 %call94, i32* %trx1, align 4, !tbaa !1
  %132 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty195 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %132, i32 0, i32 17
  %133 = load i32, i32* %ty195, align 4, !tbaa !39
  %134 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy96 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %134, i32 0, i32 1
  %135 = load i32, i32* %dy96, align 4, !tbaa !52
  %136 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl97 = shl i32 %135, %136
  %call98 = call i32 @opj_int_ceildiv(i32 %133, i32 %shl97) #6
  store i32 %call98, i32* %try1, align 4, !tbaa !1
  %137 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdx99 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %137, i32 0, i32 0
  %138 = load i32, i32* %pdx99, align 4, !tbaa !54
  %139 = load i32, i32* %levelno, align 4, !tbaa !1
  %add100 = add i32 %138, %139
  store i32 %add100, i32* %rpx, align 4, !tbaa !1
  %140 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdy101 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %140, i32 0, i32 1
  %141 = load i32, i32* %pdy101, align 4, !tbaa !56
  %142 = load i32, i32* %levelno, align 4, !tbaa !1
  %add102 = add i32 %141, %142
  store i32 %add102, i32* %rpy, align 4, !tbaa !1
  %143 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y103 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %143, i32 0, i32 19
  %144 = load i32, i32* %y103, align 4, !tbaa !108
  %145 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy104 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %145, i32 0, i32 1
  %146 = load i32, i32* %dy104, align 4, !tbaa !52
  %147 = load i32, i32* %rpy, align 4, !tbaa !1
  %shl105 = shl i32 %146, %147
  %rem = urem i32 %144, %shl105
  %cmp106 = icmp eq i32 %rem, 0
  br i1 %cmp106, label %if.end.115, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.74
  %148 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y107 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %148, i32 0, i32 19
  %149 = load i32, i32* %y107, align 4, !tbaa !108
  %150 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %ty0108 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %150, i32 0, i32 15
  %151 = load i32, i32* %ty0108, align 4, !tbaa !37
  %cmp109 = icmp eq i32 %149, %151
  br i1 %cmp109, label %land.lhs.true, label %if.then.114

land.lhs.true:                                    ; preds = %lor.lhs.false
  %152 = load i32, i32* %try0, align 4, !tbaa !1
  %153 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl110 = shl i32 %152, %153
  %154 = load i32, i32* %rpy, align 4, !tbaa !1
  %shl111 = shl i32 1, %154
  %rem112 = srem i32 %shl110, %shl111
  %tobool113 = icmp ne i32 %rem112, 0
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %land.lhs.true, %lor.lhs.false
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup

if.end.115:                                       ; preds = %land.lhs.true, %for.body.74
  %155 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x116 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %155, i32 0, i32 18
  %156 = load i32, i32* %x116, align 4, !tbaa !109
  %157 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx117 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %157, i32 0, i32 0
  %158 = load i32, i32* %dx117, align 4, !tbaa !50
  %159 = load i32, i32* %rpx, align 4, !tbaa !1
  %shl118 = shl i32 %158, %159
  %rem119 = urem i32 %156, %shl118
  %cmp120 = icmp eq i32 %rem119, 0
  br i1 %cmp120, label %if.end.131, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %if.end.115
  %160 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x122 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %160, i32 0, i32 18
  %161 = load i32, i32* %x122, align 4, !tbaa !109
  %162 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %tx0123 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %162, i32 0, i32 14
  %163 = load i32, i32* %tx0123, align 4, !tbaa !36
  %cmp124 = icmp eq i32 %161, %163
  br i1 %cmp124, label %land.lhs.true.125, label %if.then.130

land.lhs.true.125:                                ; preds = %lor.lhs.false.121
  %164 = load i32, i32* %trx0, align 4, !tbaa !1
  %165 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl126 = shl i32 %164, %165
  %166 = load i32, i32* %rpx, align 4, !tbaa !1
  %shl127 = shl i32 1, %166
  %rem128 = srem i32 %shl126, %shl127
  %tobool129 = icmp ne i32 %rem128, 0
  br i1 %tobool129, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %land.lhs.true.125, %lor.lhs.false.121
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup

if.end.131:                                       ; preds = %land.lhs.true.125, %if.end.115
  %167 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pw = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %167, i32 0, i32 2
  %168 = load i32, i32* %pw, align 4, !tbaa !57
  %cmp132 = icmp eq i32 %168, 0
  br i1 %cmp132, label %if.then.135, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %if.end.131
  %169 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %ph = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %169, i32 0, i32 3
  %170 = load i32, i32* %ph, align 4, !tbaa !58
  %cmp134 = icmp eq i32 %170, 0
  br i1 %cmp134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %lor.lhs.false.133, %if.end.131
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup

if.end.136:                                       ; preds = %lor.lhs.false.133
  %171 = load i32, i32* %trx0, align 4, !tbaa !1
  %172 = load i32, i32* %trx1, align 4, !tbaa !1
  %cmp137 = icmp eq i32 %171, %172
  br i1 %cmp137, label %if.then.140, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %if.end.136
  %173 = load i32, i32* %try0, align 4, !tbaa !1
  %174 = load i32, i32* %try1, align 4, !tbaa !1
  %cmp139 = icmp eq i32 %173, %174
  br i1 %cmp139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %lor.lhs.false.138, %if.end.136
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup

if.end.141:                                       ; preds = %lor.lhs.false.138
  %175 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x142 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %175, i32 0, i32 18
  %176 = load i32, i32* %x142, align 4, !tbaa !109
  %177 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dx143 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %177, i32 0, i32 0
  %178 = load i32, i32* %dx143, align 4, !tbaa !50
  %179 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl144 = shl i32 %178, %179
  %call145 = call i32 @opj_int_ceildiv(i32 %176, i32 %shl144) #6
  %180 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdx146 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %180, i32 0, i32 0
  %181 = load i32, i32* %pdx146, align 4, !tbaa !54
  %call147 = call i32 @opj_int_floordivpow2(i32 %call145, i32 %181) #6
  %182 = load i32, i32* %trx0, align 4, !tbaa !1
  %183 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdx148 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %183, i32 0, i32 0
  %184 = load i32, i32* %pdx148, align 4, !tbaa !54
  %call149 = call i32 @opj_int_floordivpow2(i32 %182, i32 %184) #6
  %sub150 = sub nsw i32 %call147, %call149
  store i32 %sub150, i32* %prci, align 4, !tbaa !1
  %185 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y151 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %185, i32 0, i32 19
  %186 = load i32, i32* %y151, align 4, !tbaa !108
  %187 = load %struct.opj_pi_comp*, %struct.opj_pi_comp** %comp, align 8, !tbaa !5
  %dy152 = getelementptr inbounds %struct.opj_pi_comp, %struct.opj_pi_comp* %187, i32 0, i32 1
  %188 = load i32, i32* %dy152, align 4, !tbaa !52
  %189 = load i32, i32* %levelno, align 4, !tbaa !1
  %shl153 = shl i32 %188, %189
  %call154 = call i32 @opj_int_ceildiv(i32 %186, i32 %shl153) #6
  %190 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdy155 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %190, i32 0, i32 1
  %191 = load i32, i32* %pdy155, align 4, !tbaa !56
  %call156 = call i32 @opj_int_floordivpow2(i32 %call154, i32 %191) #6
  %192 = load i32, i32* %try0, align 4, !tbaa !1
  %193 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pdy157 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %193, i32 0, i32 1
  %194 = load i32, i32* %pdy157, align 4, !tbaa !56
  %call158 = call i32 @opj_int_floordivpow2(i32 %192, i32 %194) #6
  %sub159 = sub nsw i32 %call156, %call158
  store i32 %sub159, i32* %prcj, align 4, !tbaa !1
  %195 = load i32, i32* %prci, align 4, !tbaa !1
  %196 = load i32, i32* %prcj, align 4, !tbaa !1
  %197 = load %struct.opj_pi_resolution*, %struct.opj_pi_resolution** %res, align 8, !tbaa !5
  %pw160 = getelementptr inbounds %struct.opj_pi_resolution, %struct.opj_pi_resolution* %197, i32 0, i32 2
  %198 = load i32, i32* %pw160, align 4, !tbaa !57
  %mul161 = mul i32 %196, %198
  %add162 = add i32 %195, %mul161
  %199 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %precno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %199, i32 0, i32 8
  store i32 %add162, i32* %precno, align 4, !tbaa !106
  %200 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc163 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %200, i32 0, i32 11
  %layno0 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc163, i32 0, i32 5
  %201 = load i32, i32* %layno0, align 4, !tbaa !75
  %202 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %202, i32 0, i32 9
  store i32 %201, i32* %layno, align 4, !tbaa !105
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.188, %if.end.141
  %203 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno165 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %203, i32 0, i32 9
  %204 = load i32, i32* %layno165, align 4, !tbaa !105
  %205 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %poc166 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %205, i32 0, i32 11
  %layno1 = getelementptr inbounds %struct.opj_poc, %struct.opj_poc* %poc166, i32 0, i32 2
  %206 = load i32, i32* %layno1, align 4, !tbaa !82
  %cmp167 = icmp ult i32 %204, %206
  br i1 %cmp167, label %for.body.168, label %for.end.191

for.body.168:                                     ; preds = %for.cond.164
  %207 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno169 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %207, i32 0, i32 9
  %208 = load i32, i32* %layno169, align 4, !tbaa !105
  %209 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_l = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %209, i32 0, i32 2
  %210 = load i32, i32* %step_l, align 4, !tbaa !43
  %mul170 = mul i32 %208, %210
  %211 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno171 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %211, i32 0, i32 7
  %212 = load i32, i32* %resno171, align 4, !tbaa !104
  %213 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_r = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %213, i32 0, i32 3
  %214 = load i32, i32* %step_r, align 4, !tbaa !42
  %mul172 = mul i32 %212, %214
  %add173 = add i32 %mul170, %mul172
  %215 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno174 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %215, i32 0, i32 6
  %216 = load i32, i32* %compno174, align 4, !tbaa !103
  %217 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_c = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %217, i32 0, i32 4
  %218 = load i32, i32* %step_c, align 4, !tbaa !41
  %mul175 = mul i32 %216, %218
  %add176 = add i32 %add173, %mul175
  %219 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %precno177 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %219, i32 0, i32 8
  %220 = load i32, i32* %precno177, align 4, !tbaa !106
  %221 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %step_p = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %221, i32 0, i32 5
  %222 = load i32, i32* %step_p, align 4, !tbaa !40
  %mul178 = mul i32 %220, %222
  %add179 = add i32 %add176, %mul178
  store i32 %add179, i32* %index, align 4, !tbaa !1
  %223 = load i32, i32* %index, align 4, !tbaa !1
  %idxprom180 = zext i32 %223 to i64
  %224 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %include = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %224, i32 0, i32 1
  %225 = load i16*, i16** %include, align 8, !tbaa !31
  %arrayidx181 = getelementptr inbounds i16, i16* %225, i64 %idxprom180
  %226 = load i16, i16* %arrayidx181, align 2, !tbaa !107
  %tobool182 = icmp ne i16 %226, 0
  br i1 %tobool182, label %if.end.187, label %if.then.183

if.then.183:                                      ; preds = %for.body.168
  %227 = load i32, i32* %index, align 4, !tbaa !1
  %idxprom184 = zext i32 %227 to i64
  %228 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %include185 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %228, i32 0, i32 1
  %229 = load i16*, i16** %include185, align 8, !tbaa !31
  %arrayidx186 = getelementptr inbounds i16, i16* %229, i64 %idxprom184
  store i16 1, i16* %arrayidx186, align 2, !tbaa !107
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.187:                                       ; preds = %for.body.168
  br label %LABEL_SKIP

LABEL_SKIP:                                       ; preds = %if.end.187, %if.then
  br label %for.inc.188

for.inc.188:                                      ; preds = %LABEL_SKIP
  %230 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %layno189 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %230, i32 0, i32 9
  %231 = load i32, i32* %layno189, align 4, !tbaa !105
  %inc190 = add i32 %231, 1
  store i32 %inc190, i32* %layno189, align 4, !tbaa !105
  br label %for.cond.164

for.end.191:                                      ; preds = %for.cond.164
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.191, %if.then.183, %if.then.140, %if.then.135, %if.then.130, %if.then.114
  %232 = bitcast i32* %prcj to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %233 = bitcast i32* %prci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #1
  %234 = bitcast i32* %rpy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast i32* %rpx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  %236 = bitcast i32* %try1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #1
  %237 = bitcast i32* %trx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i32* %try0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast i32* %trx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %240 = bitcast i32* %levelno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.222 [
    i32 0, label %cleanup.cont
    i32 17, label %for.inc.200
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.200

for.inc.200:                                      ; preds = %cleanup.cont, %cleanup
  %241 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %resno201 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %241, i32 0, i32 7
  %242 = load i32, i32* %resno201, align 4, !tbaa !104
  %inc202 = add i32 %242, 1
  store i32 %inc202, i32* %resno201, align 4, !tbaa !104
  br label %for.cond.68

for.end.203:                                      ; preds = %for.cond.68
  br label %for.inc.204

for.inc.204:                                      ; preds = %for.end.203
  %243 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx205 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %243, i32 0, i32 20
  %244 = load i32, i32* %dx205, align 4, !tbaa !86
  %245 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x206 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %245, i32 0, i32 18
  %246 = load i32, i32* %x206, align 4, !tbaa !109
  %247 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dx207 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %247, i32 0, i32 20
  %248 = load i32, i32* %dx207, align 4, !tbaa !86
  %rem208 = urem i32 %246, %248
  %sub209 = sub i32 %244, %rem208
  %249 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %x210 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %249, i32 0, i32 18
  %250 = load i32, i32* %x210, align 4, !tbaa !109
  %add211 = add i32 %250, %sub209
  store i32 %add211, i32* %x210, align 4, !tbaa !109
  br label %for.cond.60

for.end.212:                                      ; preds = %for.cond.60
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.end.212
  %251 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy214 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %251, i32 0, i32 21
  %252 = load i32, i32* %dy214, align 4, !tbaa !87
  %253 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y215 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %253, i32 0, i32 19
  %254 = load i32, i32* %y215, align 4, !tbaa !108
  %255 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %dy216 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %255, i32 0, i32 21
  %256 = load i32, i32* %dy216, align 4, !tbaa !87
  %rem217 = urem i32 %254, %256
  %sub218 = sub i32 %252, %rem217
  %257 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %y219 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %257, i32 0, i32 19
  %258 = load i32, i32* %y219, align 4, !tbaa !108
  %add220 = add i32 %258, %sub218
  store i32 %add220, i32* %y219, align 4, !tbaa !108
  br label %for.cond.52

for.end.221:                                      ; preds = %for.cond.52
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.222

cleanup.222:                                      ; preds = %for.end.221, %cleanup
  %259 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %cleanup.dest.223 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.223, label %cleanup.229 [
    i32 0, label %cleanup.cont.224
  ]

cleanup.cont.224:                                 ; preds = %cleanup.222
  br label %for.inc.225

for.inc.225:                                      ; preds = %cleanup.cont.224
  %260 = load %struct.opj_pi_iterator*, %struct.opj_pi_iterator** %pi.addr, align 8, !tbaa !5
  %compno226 = getelementptr inbounds %struct.opj_pi_iterator, %struct.opj_pi_iterator* %260, i32 0, i32 6
  %261 = load i32, i32* %compno226, align 4, !tbaa !103
  %inc227 = add i32 %261, 1
  store i32 %inc227, i32* %compno226, align 4, !tbaa !103
  br label %for.cond

for.end.228:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.229

cleanup.229:                                      ; preds = %for.end.228, %cleanup.222
  %262 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast %struct.opj_pi_resolution** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #1
  %264 = bitcast %struct.opj_pi_comp** %comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #1
  %265 = load i32, i32* %retval
  ret i32 %265
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_max(i32 %a, i32 %b) #5 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  %0 = load i32, i32* %a.addr, align 4, !tbaa !1
  %1 = load i32, i32* %b.addr, align 4, !tbaa !1
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_min(i32 %a, i32 %b) #5 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  %0 = load i32, i32* %a.addr, align 4, !tbaa !1
  %1 = load i32, i32* %b.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_ceildiv(i32 %a, i32 %b) #5 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  %0 = load i32, i32* %a.addr, align 4, !tbaa !1
  %1 = load i32, i32* %b.addr, align 4, !tbaa !1
  %add = add nsw i32 %0, %1
  %sub = sub nsw i32 %add, 1
  %2 = load i32, i32* %b.addr, align 4, !tbaa !1
  %div = sdiv i32 %sub, %2
  ret i32 %div
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_ceildivpow2(i32 %a, i32 %b) #5 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  %0 = load i32, i32* %a.addr, align 4, !tbaa !1
  %conv = sext i32 %0 to i64
  %1 = load i32, i32* %b.addr, align 4, !tbaa !1
  %shl = shl i32 1, %1
  %conv1 = sext i32 %shl to i64
  %add = add nsw i64 %conv, %conv1
  %sub = sub nsw i64 %add, 1
  %2 = load i32, i32* %b.addr, align 4, !tbaa !1
  %sh_prom = zext i32 %2 to i64
  %shr = ashr i64 %sub, %sh_prom
  %conv2 = trunc i64 %shr to i32
  ret i32 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_floordivpow2(i32 %a, i32 %b) #5 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  %0 = load i32, i32* %a.addr, align 4, !tbaa !1
  %1 = load i32, i32* %b.addr, align 4, !tbaa !1
  %shr = ashr i32 %0, %1
  ret i32 %shr
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_uint_min(i32 %a, i32 %b) #5 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !1
  store i32 %b, i32* %b.addr, align 4, !tbaa !1
  %0 = load i32, i32* %a.addr, align 4, !tbaa !1
  %1 = load i32, i32* %b.addr, align 4, !tbaa !1
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin noreturn nounwind }
attributes #8 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !6, i64 96}
!8 = !{!"opj_cp", !3, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !6, i64 24, !2, i64 32, !2, i64 36, !6, i64 40, !2, i64 48, !2, i64 52, !6, i64 56, !6, i64 64, !6, i64 72, !2, i64 80, !2, i64 84, !2, i64 88, !6, i64 96, !3, i64 104, !2, i64 136, !2, i64 136}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !2, i64 128}
!11 = !{!"opj_poc", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !3, i64 32, !3, i64 36, !3, i64 40, !2, i64 48, !2, i64 52, !2, i64 56, !2, i64 60, !2, i64 64, !2, i64 68, !2, i64 72, !2, i64 76, !2, i64 80, !2, i64 84, !2, i64 88, !2, i64 92, !2, i64 96, !2, i64 100, !2, i64 104, !2, i64 108, !2, i64 112, !2, i64 116, !2, i64 120, !2, i64 124, !2, i64 128, !2, i64 132, !2, i64 136, !2, i64 140, !2, i64 144}
!12 = !{!11, !2, i64 88}
!13 = !{!11, !2, i64 132}
!14 = !{!11, !2, i64 92}
!15 = !{!11, !2, i64 124}
!16 = !{!11, !2, i64 84}
!17 = !{!11, !3, i64 36}
!18 = !{!11, !2, i64 136}
!19 = !{!11, !2, i64 96}
!20 = !{!11, !2, i64 140}
!21 = !{!11, !2, i64 104}
!22 = !{!11, !2, i64 144}
!23 = !{!11, !2, i64 112}
!24 = !{!8, !2, i64 32}
!25 = !{!8, !2, i64 36}
!26 = !{!27, !2, i64 420}
!27 = !{!"opj_tcp", !2, i64 0, !3, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !3, i64 20, !2, i64 420, !3, i64 424, !6, i64 5160, !6, i64 5168, !2, i64 5176, !2, i64 5180, !3, i64 5184, !6, i64 5584, !2, i64 5592, !6, i64 5600, !2, i64 5608, !6, i64 5616, !6, i64 5624, !6, i64 5632, !6, i64 5640, !2, i64 5648, !2, i64 5652, !6, i64 5656, !2, i64 5664, !2, i64 5668, !2, i64 5672, !2, i64 5672}
!28 = !{!29, !2, i64 16}
!29 = !{!"opj_image", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !3, i64 20, !6, i64 24, !6, i64 32, !2, i64 40}
!30 = !{!27, !2, i64 8}
!31 = !{!32, !6, i64 8}
!32 = !{!"opj_pi_iterator", !3, i64 0, !6, i64 8, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !2, i64 44, !2, i64 48, !11, i64 52, !2, i64 200, !6, i64 208, !2, i64 216, !2, i64 220, !2, i64 224, !2, i64 228, !2, i64 232, !2, i64 236, !2, i64 240, !2, i64 244}
!33 = !{!32, !6, i64 208}
!34 = !{!29, !6, i64 24}
!35 = !{!27, !6, i64 5584}
!36 = !{!32, !2, i64 216}
!37 = !{!32, !2, i64 220}
!38 = !{!32, !2, i64 224}
!39 = !{!32, !2, i64 228}
!40 = !{!32, !2, i64 28}
!41 = !{!32, !2, i64 24}
!42 = !{!32, !2, i64 20}
!43 = !{!32, !2, i64 16}
!44 = !{!32, !2, i64 200}
!45 = !{!46, !6, i64 16}
!46 = !{!"opj_pi_comp", !2, i64 0, !2, i64 4, !2, i64 8, !6, i64 16}
!47 = !{!48, !2, i64 0}
!48 = !{!"opj_image_comp", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !2, i64 32, !2, i64 36, !2, i64 40, !6, i64 48, !49, i64 56}
!49 = !{!"short", !3, i64 0}
!50 = !{!46, !2, i64 0}
!51 = !{!48, !2, i64 4}
!52 = !{!46, !2, i64 4}
!53 = !{!46, !2, i64 8}
!54 = !{!55, !2, i64 0}
!55 = !{!"opj_pi_resolution", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12}
!56 = !{!55, !2, i64 4}
!57 = !{!55, !2, i64 8}
!58 = !{!55, !2, i64 12}
!59 = !{!60, !2, i64 4}
!60 = !{!"opj_tccp", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !2, i64 24, !3, i64 28, !2, i64 804, !2, i64 808, !3, i64 812, !3, i64 944, !2, i64 1076}
!61 = !{!8, !2, i64 4}
!62 = !{!8, !2, i64 12}
!63 = !{!29, !2, i64 0}
!64 = !{!29, !2, i64 8}
!65 = !{!8, !2, i64 8}
!66 = !{!8, !2, i64 16}
!67 = !{!29, !2, i64 4}
!68 = !{!29, !2, i64 12}
!69 = !{!32, !3, i64 88}
!70 = !{!32, !2, i64 48}
!71 = !{!11, !2, i64 0}
!72 = !{!32, !2, i64 52}
!73 = !{!11, !2, i64 4}
!74 = !{!32, !2, i64 56}
!75 = !{!32, !2, i64 72}
!76 = !{!32, !2, i64 76}
!77 = !{!11, !2, i64 12}
!78 = !{!32, !2, i64 64}
!79 = !{!11, !2, i64 16}
!80 = !{!32, !2, i64 68}
!81 = !{!11, !2, i64 8}
!82 = !{!32, !2, i64 60}
!83 = !{!32, !2, i64 80}
!84 = !{!27, !3, i64 4}
!85 = !{!32, !3, i64 0}
!86 = !{!32, !2, i64 240}
!87 = !{!32, !2, i64 244}
!88 = !{!89, !3, i64 0}
!89 = !{!"opj_encoding_param", !3, i64 0, !2, i64 4, !2, i64 8, !6, i64 16, !3, i64 24, !2, i64 25, !2, i64 25, !2, i64 25, !2, i64 25}
!90 = !{!11, !2, i64 76}
!91 = !{!11, !2, i64 72}
!92 = !{!11, !2, i64 68}
!93 = !{!11, !3, i64 32}
!94 = !{!11, !2, i64 80}
!95 = !{!11, !2, i64 100}
!96 = !{!11, !2, i64 108}
!97 = !{!11, !2, i64 116}
!98 = !{!11, !2, i64 120}
!99 = !{!32, !2, i64 104}
!100 = !{!32, !2, i64 112}
!101 = !{!32, !2, i64 108}
!102 = !{!32, !2, i64 116}
!103 = !{!32, !2, i64 32}
!104 = !{!32, !2, i64 36}
!105 = !{!32, !2, i64 44}
!106 = !{!32, !2, i64 40}
!107 = !{!49, !49, i64 0}
!108 = !{!32, !2, i64 236}
!109 = !{!32, !2, i64 232}
