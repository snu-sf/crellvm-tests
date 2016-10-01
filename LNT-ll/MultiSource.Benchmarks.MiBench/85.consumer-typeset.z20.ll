; ModuleID = './MultiSource.Benchmarks.MiBench/85.consumer-typeset.z20.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.13 = type { %union.rec* }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.2 = type { i8, i8, i16 }
%struct.anon = type { i8, i8, i32 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.ext_gall_type = type { [2 x %struct.LIST], i8, i16, i32, i64, i64, %union.rec* }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"FlushGalley: type(hd) != HEAD!\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"FlushGalley: resume found no parent to hd!\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"FlushGalley/ATTACH_KILLED: inners!=nilobj!\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"FlushGalley/ATTACH_INPUT: inners!=nilobj!\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"FlushGalley/ATTACH_NOTARG: inners!=nilobj!\00", align 1
@ForceGalleySym = external global %union.rec*, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"FlushGalley: attach_status\00", align 1
@InputSym = external global %union.rec*, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"FlushGalley: dest_index\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"Flush: PRECEDES!\00", align 1
@xx_hold = external global %union.rec*, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"FlushG: UpDims!\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"FlushGalley: dest != VCAT or ACAT!\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"FlushGalley: prec_gap == nilobj && !is_indefinite(type(y))!\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"FlushGalley: succ_gap != nilobj!\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"FlushGalley: dest_side != FWD || !is_indefinite(type(y))!\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"component too wide for available space\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"FlushGalley:  tgp!\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"FlushGalley:\00", align 1
@PrintSym = external global %union.rec*, align 8
@.str.19 = private unnamed_addr constant [27 x i8] c"FlushGalley: reject print!\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"FlushGalley: header under SPLIT!\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"FlushGalley/REJECT: headers!\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"FlushGalley/REJECT: first_link!\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"FlushGalley/REJECT THR!\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"FlushGalley/REJECT: headers_count!\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"FlushGalley/REJECT: dest_index!\00", align 1
@AllowCrossDb = external global i32, align 4
@.str.26 = private unnamed_addr constant [26 x i8] c"error in database file %s\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"AttachG: db CLOSURE!\00", align 1
@OldCrossDb = external global %union.rec*, align 8
@.str.28 = private unnamed_addr constant [36 x i8] c"FlushGalley: cr is_word(type(tag))!\00", align 1

; Function Attrs: nounwind uwtable
define void @FlushGalley(%union.rec* %hd) #0 {
entry:
  %hd.addr = alloca %union.rec*, align 8
  %dest = alloca %union.rec*, align 8
  %dest_index = alloca %union.rec*, align 8
  %inners = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %dim = alloca i32, align 4
  %dest_par_constr = alloca %struct.CONSTRAINT, align 4
  %dest_perp_constr = alloca %struct.CONSTRAINT, align 4
  %pb = alloca i32, align 4
  %pf = alloca i32, align 4
  %f = alloca i32, align 4
  %dest_encl = alloca %union.rec*, align 8
  %dest_side = alloca i32, align 4
  %need_adjust = alloca i32, align 4
  %dest_back = alloca i32, align 4
  %dest_fwd = alloca i32, align 4
  %frame_size = alloca i32, align 4
  %prec_gap = alloca %union.rec*, align 8
  %prec_def = alloca %union.rec*, align 8
  %succ_gap = alloca %union.rec*, align 8
  %succ_def = alloca %union.rec*, align 8
  %stop_link = alloca %union.rec*, align 8
  %stop_back = alloca i32, align 4
  %stop_fwd = alloca i32, align 4
  %stop_perp_back = alloca i32, align 4
  %stop_perp_fwd = alloca i32, align 4
  %prnt_flush = alloca i32, align 4
  %target_is_internal = alloca i32, align 4
  %headers_seen = alloca i32, align 4
  %zlink = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %prnt = alloca %union.rec*, align 8
  %attach_status = alloca i32, align 4
  %remove_target = alloca i32, align 4
  %why = alloca %union.rec*, align 8
  %perp_back = alloca i32, align 4
  %perp_fwd = alloca i32, align 4
  %z1606 = alloca %union.rec*, align 8
  %promotable = alloca i32, align 4
  %tgp = alloca %union.rec*, align 8
  %z2226 = alloca %union.rec*, align 8
  %z2455 = alloca %union.rec*, align 8
  %zlink2457 = alloca %union.rec*, align 8
  %top_z = alloca %union.rec*, align 8
  %headers_count = alloca i32, align 4
  %eg = alloca %union.rec*, align 8
  %val = alloca %union.rec*, align 8
  %index2 = alloca %union.rec*, align 8
  %hd2 = alloca %union.rec*, align 8
  %tag = alloca %union.rec*, align 8
  %seq = alloca %union.rec*, align 8
  %newsym = alloca %union.rec*, align 8
  %found = alloca i32, align 4
  %gall = alloca i32, align 4
  %newtag = alloca [512 x i8], align 16
  %newseq = alloca [512 x i8], align 16
  %tmp3865 = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %cr = alloca %union.rec*, align 8
  %ins = alloca %union.rec*, align 8
  %tag4983 = alloca %union.rec*, align 8
  %seq4985 = alloca %union.rec*, align 8
  %eg4987 = alloca %union.rec*, align 8
  %cnt = alloca %union.rec*, align 8
  %found4990 = alloca i32, align 4
  %newseq4992 = alloca [512 x i8], align 16
  %tfnum = alloca i16, align 2
  %tfpos = alloca i64, align 8
  %tcont = alloca i64, align 8
  %tlnum = alloca i32, align 4
  store %union.rec* %hd, %union.rec** %hd.addr, align 8
  store i32 0, i32* %prnt_flush, align 4
  %0 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %ogall_dir = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 2
  %bf.load = load i16, i16* %ogall_dir, align 2
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  store i32 %bf.cast, i32* %dim, align 4
  br label %RESUME

RESUME:                                           ; preds = %if.end.6406, %cond.end.6044, %if.then.5738, %if.end.4958, %cond.end.3081, %if.end.2185, %if.end.244, %if.then.84, %entry
  %1 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os17 = bitcast %union.rec* %1 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %2 = load i8, i8* %otype, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %RESUME
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %RESUME
  %4 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os19 = bitcast %union.rec* %4 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %5 = load %union.rec*, %union.rec** %osucc, align 8
  %6 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp10 = icmp ne %union.rec* %5, %6
  br i1 %cmp10, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  %8 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os115 = bitcast %union.rec* %8 to %struct.word_type*
  %olist16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist16, i32 0, i64 1
  %osucc18 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx17, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %osucc18, align 8
  %os119 = bitcast %union.rec* %9 to %struct.word_type*
  %olist20 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist20, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx21, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %10, %union.rec** %dest_index, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %11 = load %union.rec*, %union.rec** %dest_index, align 8
  %os122 = bitcast %union.rec* %11 to %struct.word_type*
  %ou123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 1
  %os1124 = bitcast %union.FIRST_UNION* %ou123 to %struct.anon*
  %otype25 = getelementptr inbounds %struct.anon, %struct.anon* %os1124, i32 0, i32 0
  %12 = load i8, i8* %otype25, align 1
  %conv26 = zext i8 %12 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %union.rec*, %union.rec** %dest_index, align 8
  %os129 = bitcast %union.rec* %13 to %struct.word_type*
  %olist30 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist30, i32 0, i64 0
  %opred32 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx31, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred32, align 8
  store %union.rec* %14, %union.rec** %dest_index, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %union.rec*, %union.rec** %dest_index, align 8
  %os133 = bitcast %union.rec* %15 to %struct.word_type*
  %ou134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 1
  %os1135 = bitcast %union.FIRST_UNION* %ou134 to %struct.anon*
  %otype36 = getelementptr inbounds %struct.anon, %struct.anon* %os1135, i32 0, i32 0
  %16 = load i8, i8* %otype36, align 1
  %conv37 = zext i8 %16 to i32
  switch i32 %conv37, label %sw.default.255 [
    i32 119, label %sw.bb
    i32 120, label %sw.bb.38
    i32 122, label %sw.bb.246
  ]

sw.bb:                                            ; preds = %for.end
  br label %return

sw.bb.38:                                         ; preds = %for.end
  %17 = load %union.rec*, %union.rec** %hd.addr, align 8
  %call39 = call i32 @AttachGalley(%union.rec* %17, %union.rec** %inners, %union.rec** %y)
  store i32 %call39, i32* %attach_status, align 4
  %18 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os140 = bitcast %union.rec* %18 to %struct.word_type*
  %olist41 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist41, i32 0, i64 1
  %osucc43 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx42, i32 0, i32 1
  %19 = load %union.rec*, %union.rec** %osucc43, align 8
  %os144 = bitcast %union.rec* %19 to %struct.word_type*
  %olist45 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist45, i32 0, i64 0
  %opred47 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx46, i32 0, i32 0
  %20 = load %union.rec*, %union.rec** %opred47, align 8
  store %union.rec* %20, %union.rec** %dest_index, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.57, %sw.bb.38
  %21 = load %union.rec*, %union.rec** %dest_index, align 8
  %os149 = bitcast %union.rec* %21 to %struct.word_type*
  %ou150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 1
  %os1151 = bitcast %union.FIRST_UNION* %ou150 to %struct.anon*
  %otype52 = getelementptr inbounds %struct.anon, %struct.anon* %os1151, i32 0, i32 0
  %22 = load i8, i8* %otype52, align 1
  %conv53 = zext i8 %22 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %for.body.56, label %for.end.62

for.body.56:                                      ; preds = %for.cond.48
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.56
  %23 = load %union.rec*, %union.rec** %dest_index, align 8
  %os158 = bitcast %union.rec* %23 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 0
  %opred61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %opred61, align 8
  store %union.rec* %24, %union.rec** %dest_index, align 8
  br label %for.cond.48

for.end.62:                                       ; preds = %for.cond.48
  %25 = load i32, i32* %attach_status, align 4
  switch i32 %25, label %sw.default [
    i32 0, label %sw.bb.63
    i32 1, label %sw.bb.69
    i32 2, label %sw.bb.75
    i32 3, label %sw.bb.81
    i32 4, label %sw.bb.86
    i32 5, label %sw.bb.168
  ]

sw.bb.63:                                         ; preds = %for.end.62
  %26 = load %union.rec*, %union.rec** %inners, align 8
  %cmp64 = icmp eq %union.rec* %26, null
  br i1 %cmp64, label %if.end.68, label %if.then.66

if.then.66:                                       ; preds = %sw.bb.63
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call67 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %sw.bb.63
  br label %return

sw.bb.69:                                         ; preds = %for.end.62
  %28 = load i32, i32* %prnt_flush, align 4
  %29 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @ParentFlush(i32 %28, %union.rec* %29, i32 0)
  %30 = load %union.rec*, %union.rec** %inners, align 8
  %cmp70 = icmp eq %union.rec* %30, null
  br i1 %cmp70, label %if.end.74, label %if.then.72

if.then.72:                                       ; preds = %sw.bb.69
  %31 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call73 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %sw.bb.69
  br label %return

sw.bb.75:                                         ; preds = %for.end.62
  %32 = load i32, i32* %prnt_flush, align 4
  %33 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @ParentFlush(i32 %32, %union.rec* %33, i32 0)
  %34 = load %union.rec*, %union.rec** %inners, align 8
  %cmp76 = icmp eq %union.rec* %34, null
  br i1 %cmp76, label %if.end.80, label %if.then.78

if.then.78:                                       ; preds = %sw.bb.75
  %35 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call79 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %sw.bb.75
  br label %return

sw.bb.81:                                         ; preds = %for.end.62
  %36 = load %union.rec*, %union.rec** %inners, align 8
  %cmp82 = icmp ne %union.rec* %36, null
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %sw.bb.81
  %37 = load %union.rec*, %union.rec** %inners, align 8
  call void @FlushInners(%union.rec* %37, %union.rec* null)
  br label %RESUME

if.end.85:                                        ; preds = %sw.bb.81
  store %union.rec* null, %union.rec** %stop_link, align 8
  br label %SUSPEND

sw.bb.86:                                         ; preds = %for.end.62
  %38 = load %union.rec*, %union.rec** %dest_index, align 8
  %os2 = bitcast %union.rec* %38 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %39 = load %union.rec*, %union.rec** %oactual, align 8
  %os287 = bitcast %union.rec* %39 to %struct.closure_type*
  %oactual88 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os287, i32 0, i32 5
  %40 = load %union.rec*, %union.rec** %oactual88, align 8
  %41 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os289 = bitcast %union.rec* %41 to %struct.closure_type*
  %oux = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os289, i32 0, i32 6
  %owhereto = bitcast %union.anon.12* %oux to %union.rec**
  %42 = load %union.rec*, %union.rec** %owhereto, align 8
  %cmp90 = icmp eq %union.rec* %40, %42
  %conv91 = zext i1 %cmp90 to i32
  store i32 %conv91, i32* %remove_target, align 4
  %43 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os192 = bitcast %union.rec* %43 to %struct.word_type*
  %ou293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os192, i32 0, i32 2
  %os2394 = bitcast %union.SECOND_UNION* %ou293 to %struct.anon.2*
  %oforce_gall = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os2394, i32 0, i32 2
  %bf.load95 = load i16, i16* %oforce_gall, align 2
  %bf.lshr96 = lshr i16 %bf.load95, 12
  %bf.clear97 = and i16 %bf.lshr96, 1
  %bf.cast98 = zext i16 %bf.clear97 to i32
  %tobool = icmp ne i32 %bf.cast98, 0
  br i1 %tobool, label %if.then.99, label %if.else

if.then.99:                                       ; preds = %sw.bb.86
  %44 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1100 = bitcast %union.rec* %44 to %struct.word_type*
  %olist101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1100, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist101, i32 0, i64 1
  %osucc103 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx102, i32 0, i32 1
  %45 = load %union.rec*, %union.rec** %osucc103, align 8
  %os1104 = bitcast %union.rec* %45 to %struct.word_type*
  %olist105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1104, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist105, i32 0, i64 0
  %opred107 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx106, i32 0, i32 0
  %46 = load %union.rec*, %union.rec** %opred107, align 8
  store %union.rec* %46, %union.rec** %prnt, align 8
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.117, %if.then.99
  %47 = load %union.rec*, %union.rec** %prnt, align 8
  %os1109 = bitcast %union.rec* %47 to %struct.word_type*
  %ou1110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1109, i32 0, i32 1
  %os11111 = bitcast %union.FIRST_UNION* %ou1110 to %struct.anon*
  %otype112 = getelementptr inbounds %struct.anon, %struct.anon* %os11111, i32 0, i32 0
  %48 = load i8, i8* %otype112, align 1
  %conv113 = zext i8 %48 to i32
  %cmp114 = icmp eq i32 %conv113, 0
  br i1 %cmp114, label %for.body.116, label %for.end.122

for.body.116:                                     ; preds = %for.cond.108
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.116
  %49 = load %union.rec*, %union.rec** %prnt, align 8
  %os1118 = bitcast %union.rec* %49 to %struct.word_type*
  %olist119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist119, i32 0, i64 0
  %opred121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx120, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %opred121, align 8
  store %union.rec* %50, %union.rec** %prnt, align 8
  br label %for.cond.108

for.end.122:                                      ; preds = %for.cond.108
  %51 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1123 = bitcast %union.rec* %51 to %struct.word_type*
  %ou2124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1123, i32 0, i32 2
  %os23125 = bitcast %union.SECOND_UNION* %ou2124 to %struct.anon.2*
  %onon_blocking = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23125, i32 0, i32 2
  %bf.load126 = load i16, i16* %onon_blocking, align 2
  %bf.clear127 = and i16 %bf.load126, 1
  %bf.cast128 = zext i16 %bf.clear127 to i32
  %tobool129 = icmp ne i32 %bf.cast128, 0
  br i1 %tobool129, label %if.end.138, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.122
  %52 = load i32, i32* %remove_target, align 4
  %tobool130 = icmp ne i32 %52, 0
  br i1 %tobool130, label %if.then.131, label %if.end.138

if.then.131:                                      ; preds = %land.lhs.true
  %53 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1132 = bitcast %union.rec* %53 to %struct.word_type*
  %ou2133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 2
  %os23134 = bitcast %union.SECOND_UNION* %ou2133 to %struct.anon.2*
  %onon_blocking135 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23134, i32 0, i32 2
  %bf.load136 = load i16, i16* %onon_blocking135, align 2
  %bf.clear137 = and i16 %bf.load136, -2
  %bf.set = or i16 %bf.clear137, 1
  store i16 %bf.set, i16* %onon_blocking135, align 2
  store i32 1, i32* %prnt_flush, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.131, %land.lhs.true, %for.end.122
  %54 = load %union.rec*, %union.rec** %prnt, align 8
  %55 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1139 = bitcast %union.rec* %55 to %struct.word_type*
  %olist140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1139, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist140, i32 0, i64 1
  %osucc142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx141, i32 0, i32 1
  %56 = load %union.rec*, %union.rec** %osucc142, align 8
  %57 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1143 = bitcast %union.rec* %57 to %struct.word_type*
  %olist144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist144, i32 0, i64 1
  %osucc146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx145, i32 0, i32 1
  %58 = load %union.rec*, %union.rec** %osucc146, align 8
  %59 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2147 = bitcast %union.rec* %59 to %struct.closure_type*
  %oux148 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2147, i32 0, i32 6
  %owhereto149 = bitcast %union.anon.12* %oux148 to %union.rec**
  %60 = load %union.rec*, %union.rec** %owhereto149, align 8
  call void @FreeGalley(%union.rec* %54, %union.rec* %56, %union.rec** %inners, %union.rec* %58, %union.rec* %60)
  br label %if.end.162

if.else:                                          ; preds = %sw.bb.86
  %61 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1150 = bitcast %union.rec* %61 to %struct.word_type*
  %ou2151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1150, i32 0, i32 2
  %os23152 = bitcast %union.SECOND_UNION* %ou2151 to %struct.anon.2*
  %oblocked = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23152, i32 0, i32 2
  %bf.load153 = load i16, i16* %oblocked, align 2
  %bf.lshr154 = lshr i16 %bf.load153, 5
  %bf.clear155 = and i16 %bf.lshr154, 1
  %bf.cast156 = zext i16 %bf.clear155 to i32
  %tobool157 = icmp ne i32 %bf.cast156, 0
  br i1 %tobool157, label %land.lhs.true.158, label %if.end.161

land.lhs.true.158:                                ; preds = %if.else
  %62 = load i32, i32* %remove_target, align 4
  %tobool159 = icmp ne i32 %62, 0
  br i1 %tobool159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %land.lhs.true.158
  store i32 1, i32* %prnt_flush, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %land.lhs.true.158, %if.else
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.end.138
  %63 = load %union.rec*, %union.rec** %hd.addr, align 8
  call void @DetachGalley(%union.rec* %63)
  %64 = load %union.rec*, %union.rec** %hd.addr, align 8
  call void @KillGalley(%union.rec* %64, i32 1)
  %65 = load %union.rec*, %union.rec** %inners, align 8
  %cmp163 = icmp ne %union.rec* %65, null
  br i1 %cmp163, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %if.end.162
  %66 = load %union.rec*, %union.rec** %inners, align 8
  call void @FlushInners(%union.rec* %66, %union.rec* null)
  br label %if.end.167

if.else.166:                                      ; preds = %if.end.162
  %67 = load i32, i32* %prnt_flush, align 4
  %68 = load %union.rec*, %union.rec** %dest_index, align 8
  %69 = load i32, i32* %remove_target, align 4
  call void @ParentFlush(i32 %67, %union.rec* %68, i32 %69)
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.166, %if.then.165
  br label %return

sw.bb.168:                                        ; preds = %for.end.62
  %70 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1169 = bitcast %union.rec* %70 to %struct.word_type*
  %ou2170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1169, i32 0, i32 2
  %os23171 = bitcast %union.SECOND_UNION* %ou2170 to %struct.anon.2*
  %oforce_gall172 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23171, i32 0, i32 2
  %bf.load173 = load i16, i16* %oforce_gall172, align 2
  %bf.lshr174 = lshr i16 %bf.load173, 12
  %bf.clear175 = and i16 %bf.lshr174, 1
  %bf.cast176 = zext i16 %bf.clear175 to i32
  %tobool177 = icmp ne i32 %bf.cast176, 0
  br i1 %tobool177, label %if.then.184, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.168
  %71 = load %union.rec*, %union.rec** %dest_index, align 8
  %os2178 = bitcast %union.rec* %71 to %struct.closure_type*
  %oactual179 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2178, i32 0, i32 5
  %72 = load %union.rec*, %union.rec** %oactual179, align 8
  %os2180 = bitcast %union.rec* %72 to %struct.closure_type*
  %oactual181 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2180, i32 0, i32 5
  %73 = load %union.rec*, %union.rec** %oactual181, align 8
  %74 = load %union.rec*, %union.rec** @ForceGalleySym, align 8
  %cmp182 = icmp eq %union.rec* %73, %74
  br i1 %cmp182, label %if.then.184, label %if.else.229

if.then.184:                                      ; preds = %lor.lhs.false, %sw.bb.168
  %75 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1185 = bitcast %union.rec* %75 to %struct.word_type*
  %olist186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1185, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist186, i32 0, i64 1
  %osucc188 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx187, i32 0, i32 1
  %76 = load %union.rec*, %union.rec** %osucc188, align 8
  %os1189 = bitcast %union.rec* %76 to %struct.word_type*
  %olist190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1189, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist190, i32 0, i64 0
  %opred192 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx191, i32 0, i32 0
  %77 = load %union.rec*, %union.rec** %opred192, align 8
  store %union.rec* %77, %union.rec** %prnt, align 8
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.202, %if.then.184
  %78 = load %union.rec*, %union.rec** %prnt, align 8
  %os1194 = bitcast %union.rec* %78 to %struct.word_type*
  %ou1195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1194, i32 0, i32 1
  %os11196 = bitcast %union.FIRST_UNION* %ou1195 to %struct.anon*
  %otype197 = getelementptr inbounds %struct.anon, %struct.anon* %os11196, i32 0, i32 0
  %79 = load i8, i8* %otype197, align 1
  %conv198 = zext i8 %79 to i32
  %cmp199 = icmp eq i32 %conv198, 0
  br i1 %cmp199, label %for.body.201, label %for.end.207

for.body.201:                                     ; preds = %for.cond.193
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.body.201
  %80 = load %union.rec*, %union.rec** %prnt, align 8
  %os1203 = bitcast %union.rec* %80 to %struct.word_type*
  %olist204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1203, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist204, i32 0, i64 0
  %opred206 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx205, i32 0, i32 0
  %81 = load %union.rec*, %union.rec** %opred206, align 8
  store %union.rec* %81, %union.rec** %prnt, align 8
  br label %for.cond.193

for.end.207:                                      ; preds = %for.cond.193
  %82 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1208 = bitcast %union.rec* %82 to %struct.word_type*
  %ou2209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1208, i32 0, i32 2
  %os23210 = bitcast %union.SECOND_UNION* %ou2209 to %struct.anon.2*
  %onon_blocking211 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23210, i32 0, i32 2
  %bf.load212 = load i16, i16* %onon_blocking211, align 2
  %bf.clear213 = and i16 %bf.load212, 1
  %bf.cast214 = zext i16 %bf.clear213 to i32
  %tobool215 = icmp ne i32 %bf.cast214, 0
  br i1 %tobool215, label %if.end.217, label %if.then.216

if.then.216:                                      ; preds = %for.end.207
  store i32 1, i32* %prnt_flush, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.216, %for.end.207
  %83 = load %union.rec*, %union.rec** %prnt, align 8
  %84 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1218 = bitcast %union.rec* %84 to %struct.word_type*
  %olist219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1218, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist219, i32 0, i64 1
  %osucc221 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx220, i32 0, i32 1
  %85 = load %union.rec*, %union.rec** %osucc221, align 8
  %86 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1222 = bitcast %union.rec* %86 to %struct.word_type*
  %olist223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1222, i32 0, i32 0
  %arrayidx224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist223, i32 0, i64 1
  %osucc225 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx224, i32 0, i32 1
  %87 = load %union.rec*, %union.rec** %osucc225, align 8
  %88 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2226 = bitcast %union.rec* %88 to %struct.closure_type*
  %oux227 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2226, i32 0, i32 6
  %owhereto228 = bitcast %union.anon.12* %oux227 to %union.rec**
  %89 = load %union.rec*, %union.rec** %owhereto228, align 8
  call void @FreeGalley(%union.rec* %83, %union.rec* %85, %union.rec** %inners, %union.rec* %87, %union.rec* %89)
  br label %if.end.240

if.else.229:                                      ; preds = %lor.lhs.false
  %90 = load i32, i32* %prnt_flush, align 4
  %tobool230 = icmp ne i32 %90, 0
  br i1 %tobool230, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else.229
  %91 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1231 = bitcast %union.rec* %91 to %struct.word_type*
  %ou2232 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1231, i32 0, i32 2
  %os23233 = bitcast %union.SECOND_UNION* %ou2232 to %struct.anon.2*
  %oblocked234 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23233, i32 0, i32 2
  %bf.load235 = load i16, i16* %oblocked234, align 2
  %bf.lshr236 = lshr i16 %bf.load235, 5
  %bf.clear237 = and i16 %bf.lshr236, 1
  %bf.cast238 = zext i16 %bf.clear237 to i32
  %tobool239 = icmp ne i32 %bf.cast238, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else.229
  %92 = phi i1 [ true, %if.else.229 ], [ %tobool239, %lor.rhs ]
  %lor.ext = zext i1 %92 to i32
  store i32 %lor.ext, i32* %prnt_flush, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %lor.end, %if.end.217
  %93 = load %union.rec*, %union.rec** %inners, align 8
  %cmp241 = icmp ne %union.rec* %93, null
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %if.end.240
  %94 = load %union.rec*, %union.rec** %inners, align 8
  call void @FlushInners(%union.rec* %94, %union.rec* null)
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.243, %if.end.240
  br label %RESUME

sw.default:                                       ; preds = %for.end.62
  %95 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call245 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %sw.epilog.263

sw.bb.246:                                        ; preds = %for.end
  %96 = load %union.rec*, %union.rec** %dest_index, align 8
  %os2247 = bitcast %union.rec* %96 to %struct.closure_type*
  %oactual248 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2247, i32 0, i32 5
  %97 = load %union.rec*, %union.rec** %oactual248, align 8
  %os2249 = bitcast %union.rec* %97 to %struct.closure_type*
  %oactual250 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2249, i32 0, i32 5
  %98 = load %union.rec*, %union.rec** %oactual250, align 8
  %99 = load %union.rec*, %union.rec** @InputSym, align 8
  %cmp251 = icmp eq %union.rec* %98, %99
  br i1 %cmp251, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %sw.bb.246
  %100 = load i32, i32* %prnt_flush, align 4
  %101 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @ParentFlush(i32 %100, %union.rec* %101, i32 0)
  br label %return

if.end.254:                                       ; preds = %sw.bb.246
  br label %sw.epilog.263

sw.default.255:                                   ; preds = %for.end
  %102 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %103 = load %union.rec*, %union.rec** %dest_index, align 8
  %os1256 = bitcast %union.rec* %103 to %struct.word_type*
  %ou1257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1256, i32 0, i32 1
  %os11258 = bitcast %union.FIRST_UNION* %ou1257 to %struct.anon*
  %otype259 = getelementptr inbounds %struct.anon, %struct.anon* %os11258, i32 0, i32 0
  %104 = load i8, i8* %otype259, align 1
  %conv260 = zext i8 %104 to i32
  %call261 = call i8* @Image(i32 %conv260)
  %call262 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* %call261)
  br label %sw.epilog.263

sw.epilog.263:                                    ; preds = %sw.default.255, %if.end.254, %sw.epilog
  %105 = load %union.rec*, %union.rec** %dest_index, align 8
  %os2264 = bitcast %union.rec* %105 to %struct.closure_type*
  %oactual265 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2264, i32 0, i32 5
  %106 = load %union.rec*, %union.rec** %oactual265, align 8
  store %union.rec* %106, %union.rec** %dest, align 8
  %107 = load %union.rec*, %union.rec** %dest, align 8
  %os1266 = bitcast %union.rec* %107 to %struct.word_type*
  %ou2267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1266, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2267 to %struct.anon.1*
  %108 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load268 = load i32, i32* %108, align 4
  %bf.lshr269 = lshr i32 %bf.load268, 29
  %bf.clear270 = and i32 %bf.lshr269, 3
  %cmp271 = icmp eq i32 %bf.clear270, 0
  br i1 %cmp271, label %if.then.273, label %if.end.280

if.then.273:                                      ; preds = %sw.epilog.263
  %109 = load %union.rec*, %union.rec** %dest, align 8
  %os1274 = bitcast %union.rec* %109 to %struct.word_type*
  %ou2275 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1274, i32 0, i32 2
  %os22276 = bitcast %union.SECOND_UNION* %ou2275 to %struct.anon.1*
  %110 = bitcast %struct.anon.1* %os22276 to i32*
  %bf.load277 = load i32, i32* %110, align 4
  %bf.clear278 = and i32 %bf.load277, -1610612737
  %bf.set279 = or i32 %bf.clear278, 536870912
  store i32 %bf.set279, i32* %110, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.273, %sw.epilog.263
  %111 = load i32, i32* %dim, align 4
  %cmp281 = icmp eq i32 %111, 1
  br i1 %cmp281, label %land.lhs.true.283, label %lor.rhs.292

land.lhs.true.283:                                ; preds = %if.end.280
  %112 = load %union.rec*, %union.rec** %dest, align 8
  %os1284 = bitcast %union.rec* %112 to %struct.word_type*
  %ou2285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1284, i32 0, i32 2
  %os23286 = bitcast %union.SECOND_UNION* %ou2285 to %struct.anon.2*
  %oexternal_ver = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23286, i32 0, i32 2
  %bf.load287 = load i16, i16* %oexternal_ver, align 2
  %bf.lshr288 = lshr i16 %bf.load287, 4
  %bf.clear289 = and i16 %bf.lshr288, 1
  %bf.cast290 = zext i16 %bf.clear289 to i32
  %tobool291 = icmp ne i32 %bf.cast290, 0
  br i1 %tobool291, label %lor.rhs.292, label %lor.end.303

lor.rhs.292:                                      ; preds = %land.lhs.true.283, %if.end.280
  %113 = load i32, i32* %dim, align 4
  %cmp293 = icmp eq i32 %113, 0
  br i1 %cmp293, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs.292
  %114 = load %union.rec*, %union.rec** %dest, align 8
  %os1295 = bitcast %union.rec* %114 to %struct.word_type*
  %ou2296 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1295, i32 0, i32 2
  %os23297 = bitcast %union.SECOND_UNION* %ou2296 to %struct.anon.2*
  %oexternal_hor = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23297, i32 0, i32 2
  %bf.load298 = load i16, i16* %oexternal_hor, align 2
  %bf.lshr299 = lshr i16 %bf.load298, 3
  %bf.clear300 = and i16 %bf.lshr299, 1
  %bf.cast301 = zext i16 %bf.clear300 to i32
  %tobool302 = icmp ne i32 %bf.cast301, 0
  %lnot = xor i1 %tobool302, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs.292
  %115 = phi i1 [ false, %lor.rhs.292 ], [ %lnot, %land.rhs ]
  br label %lor.end.303

lor.end.303:                                      ; preds = %land.end, %land.lhs.true.283
  %116 = phi i1 [ true, %land.lhs.true.283 ], [ %115, %land.end ]
  %lor.ext304 = zext i1 %116 to i32
  store i32 %lor.ext304, i32* %target_is_internal, align 4
  store i32 0, i32* %headers_seen, align 4
  store %union.rec* null, %union.rec** %inners, align 8
  store %union.rec* null, %union.rec** %dest_encl, align 8
  store %union.rec* null, %union.rec** %stop_link, align 8
  store i32 0, i32* %need_adjust, align 4
  %117 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1305 = bitcast %union.rec* %117 to %struct.word_type*
  %olist306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1305, i32 0, i32 0
  %arrayidx307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist306, i32 0, i64 0
  %osucc308 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx307, i32 0, i32 1
  %118 = load %union.rec*, %union.rec** %osucc308, align 8
  store %union.rec* %118, %union.rec** %link, align 8
  br label %for.cond.309

for.cond.309:                                     ; preds = %for.inc.2197, %lor.end.303
  %119 = load %union.rec*, %union.rec** %link, align 8
  %120 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp310 = icmp ne %union.rec* %119, %120
  br i1 %cmp310, label %for.body.312, label %for.end.2202

for.body.312:                                     ; preds = %for.cond.309
  %121 = load %union.rec*, %union.rec** %link, align 8
  %os1313 = bitcast %union.rec* %121 to %struct.word_type*
  %olist314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1313, i32 0, i32 0
  %arrayidx315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist314, i32 0, i64 1
  %opred316 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx315, i32 0, i32 0
  %122 = load %union.rec*, %union.rec** %opred316, align 8
  store %union.rec* %122, %union.rec** %y, align 8
  br label %for.cond.317

for.cond.317:                                     ; preds = %for.inc.326, %for.body.312
  %123 = load %union.rec*, %union.rec** %y, align 8
  %os1318 = bitcast %union.rec* %123 to %struct.word_type*
  %ou1319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1318, i32 0, i32 1
  %os11320 = bitcast %union.FIRST_UNION* %ou1319 to %struct.anon*
  %otype321 = getelementptr inbounds %struct.anon, %struct.anon* %os11320, i32 0, i32 0
  %124 = load i8, i8* %otype321, align 1
  %conv322 = zext i8 %124 to i32
  %cmp323 = icmp eq i32 %conv322, 0
  br i1 %cmp323, label %for.body.325, label %for.end.331

for.body.325:                                     ; preds = %for.cond.317
  br label %for.inc.326

for.inc.326:                                      ; preds = %for.body.325
  %125 = load %union.rec*, %union.rec** %y, align 8
  %os1327 = bitcast %union.rec* %125 to %struct.word_type*
  %olist328 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1327, i32 0, i32 0
  %arrayidx329 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist328, i32 0, i64 1
  %opred330 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx329, i32 0, i32 0
  %126 = load %union.rec*, %union.rec** %opred330, align 8
  store %union.rec* %126, %union.rec** %y, align 8
  br label %for.cond.317

for.end.331:                                      ; preds = %for.cond.317
  %127 = load %union.rec*, %union.rec** %y, align 8
  %os1332 = bitcast %union.rec* %127 to %struct.word_type*
  %ou1333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 1
  %os11334 = bitcast %union.FIRST_UNION* %ou1333 to %struct.anon*
  %otype335 = getelementptr inbounds %struct.anon, %struct.anon* %os11334, i32 0, i32 0
  %128 = load i8, i8* %otype335, align 1
  %conv336 = zext i8 %128 to i32
  %cmp337 = icmp eq i32 %conv336, 9
  br i1 %cmp337, label %if.then.339, label %if.end.369

if.then.339:                                      ; preds = %for.end.331
  %129 = load i32, i32* %dim, align 4
  %cmp340 = icmp eq i32 %129, 0
  br i1 %cmp340, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.339
  %130 = load %union.rec*, %union.rec** %y, align 8
  %os1342 = bitcast %union.rec* %130 to %struct.word_type*
  %olist343 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1342, i32 0, i32 0
  %arrayidx344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist343, i32 0, i64 0
  %osucc345 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx344, i32 0, i32 1
  %131 = load %union.rec*, %union.rec** %osucc345, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.339
  %132 = load %union.rec*, %union.rec** %y, align 8
  %os1346 = bitcast %union.rec* %132 to %struct.word_type*
  %olist347 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1346, i32 0, i32 0
  %arrayidx348 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist347, i32 0, i64 0
  %opred349 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx348, i32 0, i32 0
  %133 = load %union.rec*, %union.rec** %opred349, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ %131, %cond.true ], [ %133, %cond.false ]
  %os1350 = bitcast %union.rec* %cond to %struct.word_type*
  %olist351 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1350, i32 0, i32 0
  %arrayidx352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist351, i32 0, i64 1
  %opred353 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx352, i32 0, i32 0
  %134 = load %union.rec*, %union.rec** %opred353, align 8
  store %union.rec* %134, %union.rec** %y, align 8
  br label %for.cond.354

for.cond.354:                                     ; preds = %for.inc.363, %cond.end
  %135 = load %union.rec*, %union.rec** %y, align 8
  %os1355 = bitcast %union.rec* %135 to %struct.word_type*
  %ou1356 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1355, i32 0, i32 1
  %os11357 = bitcast %union.FIRST_UNION* %ou1356 to %struct.anon*
  %otype358 = getelementptr inbounds %struct.anon, %struct.anon* %os11357, i32 0, i32 0
  %136 = load i8, i8* %otype358, align 1
  %conv359 = zext i8 %136 to i32
  %cmp360 = icmp eq i32 %conv359, 0
  br i1 %cmp360, label %for.body.362, label %for.end.368

for.body.362:                                     ; preds = %for.cond.354
  br label %for.inc.363

for.inc.363:                                      ; preds = %for.body.362
  %137 = load %union.rec*, %union.rec** %y, align 8
  %os1364 = bitcast %union.rec* %137 to %struct.word_type*
  %olist365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1364, i32 0, i32 0
  %arrayidx366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist365, i32 0, i64 1
  %opred367 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx366, i32 0, i32 0
  %138 = load %union.rec*, %union.rec** %opred367, align 8
  store %union.rec* %138, %union.rec** %y, align 8
  br label %for.cond.354

for.end.368:                                      ; preds = %for.cond.354
  br label %if.end.369

if.end.369:                                       ; preds = %for.end.368, %for.end.331
  %139 = load %union.rec*, %union.rec** %y, align 8
  %os1370 = bitcast %union.rec* %139 to %struct.word_type*
  %ou1371 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1370, i32 0, i32 1
  %os11372 = bitcast %union.FIRST_UNION* %ou1371 to %struct.anon*
  %otype373 = getelementptr inbounds %struct.anon, %struct.anon* %os11372, i32 0, i32 0
  %140 = load i8, i8* %otype373, align 1
  %conv374 = zext i8 %140 to i32
  switch i32 %conv374, label %sw.default.2188 [
    i32 1, label %sw.bb.375
    i32 136, label %sw.bb.418
    i32 137, label %sw.bb.418
    i32 138, label %sw.bb.418
    i32 133, label %sw.bb.418
    i32 129, label %sw.bb.418
    i32 130, label %sw.bb.418
    i32 132, label %sw.bb.418
    i32 134, label %sw.bb.418
    i32 127, label %sw.bb.418
    i32 128, label %sw.bb.418
    i32 131, label %sw.bb.418
    i32 135, label %sw.bb.418
    i32 124, label %sw.bb.433
    i32 120, label %sw.bb.433
    i32 122, label %sw.bb.605
    i32 121, label %sw.bb.605
    i32 125, label %sw.bb.606
    i32 20, label %sw.bb.1245
    i32 21, label %sw.bb.1245
    i32 22, label %sw.bb.1245
    i32 23, label %sw.bb.1245
    i32 5, label %sw.bb.1246
    i32 4, label %sw.bb.1246
    i32 11, label %sw.bb.1246
    i32 12, label %sw.bb.1246
    i32 24, label %sw.bb.1246
    i32 25, label %sw.bb.1246
    i32 26, label %sw.bb.1246
    i32 27, label %sw.bb.1246
    i32 28, label %sw.bb.1246
    i32 29, label %sw.bb.1246
    i32 30, label %sw.bb.1246
    i32 31, label %sw.bb.1246
    i32 32, label %sw.bb.1246
    i32 33, label %sw.bb.1246
    i32 36, label %sw.bb.1246
    i32 37, label %sw.bb.1246
    i32 38, label %sw.bb.1246
    i32 39, label %sw.bb.1246
    i32 40, label %sw.bb.1246
    i32 41, label %sw.bb.1246
    i32 44, label %sw.bb.1246
    i32 42, label %sw.bb.1246
    i32 43, label %sw.bb.1246
    i32 45, label %sw.bb.1246
    i32 46, label %sw.bb.1246
    i32 50, label %sw.bb.1246
    i32 51, label %sw.bb.1246
    i32 34, label %sw.bb.1246
    i32 35, label %sw.bb.1246
    i32 94, label %sw.bb.1246
    i32 95, label %sw.bb.1246
    i32 96, label %sw.bb.1246
    i32 97, label %sw.bb.1246
    i32 98, label %sw.bb.1246
    i32 99, label %sw.bb.1246
    i32 17, label %sw.bb.1246
    i32 18, label %sw.bb.1246
    i32 19, label %sw.bb.1246
    i32 15, label %sw.bb.1246
    i32 2, label %sw.bb.1246
    i32 6, label %sw.bb.1246
    i32 7, label %sw.bb.1246
  ]

sw.bb.375:                                        ; preds = %if.end.369
  %141 = load %union.rec*, %union.rec** %dest, align 8
  %os1376 = bitcast %union.rec* %141 to %struct.word_type*
  %ou2377 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1376, i32 0, i32 2
  %os22378 = bitcast %union.SECOND_UNION* %ou2377 to %struct.anon.1*
  %142 = bitcast %struct.anon.1* %os22378 to i32*
  %bf.load379 = load i32, i32* %142, align 4
  %bf.lshr380 = lshr i32 %bf.load379, 29
  %bf.clear381 = and i32 %bf.lshr380, 3
  %143 = load %union.rec*, %union.rec** %y, align 8
  %os1382 = bitcast %union.rec* %143 to %struct.word_type*
  %ou2383 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1382, i32 0, i32 2
  %os22384 = bitcast %union.SECOND_UNION* %ou2383 to %struct.anon.1*
  %144 = bitcast %struct.anon.1* %os22384 to i32*
  %bf.load385 = load i32, i32* %144, align 4
  %bf.value = and i32 %bf.clear381, 3
  %bf.shl = shl i32 %bf.value, 29
  %bf.clear386 = and i32 %bf.load385, -1610612737
  %bf.set387 = or i32 %bf.clear386, %bf.shl
  store i32 %bf.set387, i32* %144, align 4
  %145 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %145, %union.rec** %prec_gap, align 8
  %146 = load i32, i32* %target_is_internal, align 4
  %tobool388 = icmp ne i32 %146, 0
  br i1 %tobool388, label %if.then.389, label %if.else.400

if.then.389:                                      ; preds = %sw.bb.375
  %147 = load %union.rec*, %union.rec** %dest_encl, align 8
  %cmp390 = icmp ne %union.rec* %147, null
  br i1 %cmp390, label %land.lhs.true.392, label %if.end.399

land.lhs.true.392:                                ; preds = %if.then.389
  %148 = load %union.rec*, %union.rec** %prec_gap, align 8
  %os5 = bitcast %union.rec* %148 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %149 = bitcast %struct.GAP* %ogap to i16*
  %bf.load393 = load i16, i16* %149, align 4
  %bf.lshr394 = lshr i16 %bf.load393, 7
  %bf.clear395 = and i16 %bf.lshr394, 1
  %bf.cast396 = zext i16 %bf.clear395 to i32
  %tobool397 = icmp ne i32 %bf.cast396, 0
  br i1 %tobool397, label %if.end.399, label %if.then.398

if.then.398:                                      ; preds = %land.lhs.true.392
  %150 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %150, %union.rec** %stop_link, align 8
  %151 = load i32, i32* %dest_back, align 4
  store i32 %151, i32* %stop_back, align 4
  %152 = load i32, i32* %dest_fwd, align 4
  store i32 %152, i32* %stop_fwd, align 4
  %153 = load i32, i32* %perp_back, align 4
  store i32 %153, i32* %stop_perp_back, align 4
  %154 = load i32, i32* %perp_fwd, align 4
  store i32 %154, i32* %stop_perp_fwd, align 4
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.398, %land.lhs.true.392, %if.then.389
  br label %if.end.401

if.else.400:                                      ; preds = %sw.bb.375
  %155 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %155, %union.rec** %stop_link, align 8
  br label %if.end.401

if.end.401:                                       ; preds = %if.else.400, %if.end.399
  %156 = load %union.rec*, %union.rec** %y, align 8
  %os5402 = bitcast %union.rec* %156 to %struct.gapobj_type*
  %ogap403 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5402, i32 0, i32 3
  %157 = bitcast %struct.GAP* %ogap403 to i16*
  %bf.load404 = load i16, i16* %157, align 4
  %bf.lshr405 = lshr i16 %bf.load404, 9
  %bf.clear406 = and i16 %bf.lshr405, 1
  %bf.cast407 = zext i16 %bf.clear406 to i32
  %tobool408 = icmp ne i32 %bf.cast407, 0
  br i1 %tobool408, label %if.end.417, label %if.then.409

if.then.409:                                      ; preds = %if.end.401
  %158 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os1410 = bitcast %union.rec* %158 to %struct.word_type*
  %ou2411 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1410, i32 0, i32 2
  %os23412 = bitcast %union.SECOND_UNION* %ou2411 to %struct.anon.2*
  %oblocked413 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23412, i32 0, i32 2
  %bf.load414 = load i16, i16* %oblocked413, align 2
  %bf.clear415 = and i16 %bf.load414, -33
  %bf.set416 = or i16 %bf.clear415, 32
  store i16 %bf.set416, i16* %oblocked413, align 2
  br label %if.end.417

if.end.417:                                       ; preds = %if.then.409, %if.end.401
  br label %sw.epilog.2196

sw.bb.418:                                        ; preds = %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369
  %159 = load %union.rec*, %union.rec** %dest, align 8
  %os1419 = bitcast %union.rec* %159 to %struct.word_type*
  %ou2420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1419, i32 0, i32 2
  %os22421 = bitcast %union.SECOND_UNION* %ou2420 to %struct.anon.1*
  %160 = bitcast %struct.anon.1* %os22421 to i32*
  %bf.load422 = load i32, i32* %160, align 4
  %bf.lshr423 = lshr i32 %bf.load422, 29
  %bf.clear424 = and i32 %bf.lshr423, 3
  %161 = load %union.rec*, %union.rec** %y, align 8
  %os1425 = bitcast %union.rec* %161 to %struct.word_type*
  %ou2426 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1425, i32 0, i32 2
  %os22427 = bitcast %union.SECOND_UNION* %ou2426 to %struct.anon.1*
  %162 = bitcast %struct.anon.1* %os22427 to i32*
  %bf.load428 = load i32, i32* %162, align 4
  %bf.value429 = and i32 %bf.clear424, 3
  %bf.shl430 = shl i32 %bf.value429, 29
  %bf.clear431 = and i32 %bf.load428, -1610612737
  %bf.set432 = or i32 %bf.clear431, %bf.shl430
  store i32 %bf.set432, i32* %162, align 4
  br label %sw.epilog.2196

sw.bb.433:                                        ; preds = %if.end.369, %if.end.369
  %163 = load %union.rec*, %union.rec** %inners, align 8
  %cmp434 = icmp eq %union.rec* %163, null
  br i1 %cmp434, label %if.then.436, label %if.end.480

if.then.436:                                      ; preds = %sw.bb.433
  %164 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv437 = zext i8 %164 to i32
  store i32 %conv437, i32* @zz_size, align 4
  %conv438 = sext i32 %conv437 to i64
  %cmp439 = icmp uge i64 %conv438, 265
  br i1 %cmp439, label %if.then.441, label %if.else.443

if.then.441:                                      ; preds = %if.then.436
  %165 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call442 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %165)
  br label %if.end.459

if.else.443:                                      ; preds = %if.then.436
  %166 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %166 to i64
  %arrayidx444 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %167 = load %union.rec*, %union.rec** %arrayidx444, align 8
  %cmp445 = icmp eq %union.rec* %167, null
  br i1 %cmp445, label %if.then.447, label %if.else.449

if.then.447:                                      ; preds = %if.else.443
  %168 = load i32, i32* @zz_size, align 4
  %169 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call448 = call %union.rec* @GetMemory(i32 %168, %struct.FILE_POS* %169)
  store %union.rec* %call448, %union.rec** @zz_hold, align 8
  br label %if.end.458

if.else.449:                                      ; preds = %if.else.443
  %170 = load i32, i32* @zz_size, align 4
  %idxprom450 = sext i32 %170 to i64
  %arrayidx451 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom450
  %171 = load %union.rec*, %union.rec** %arrayidx451, align 8
  store %union.rec* %171, %union.rec** @zz_hold, align 8
  store %union.rec* %171, %union.rec** @zz_hold, align 8
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1452 = bitcast %union.rec* %172 to %struct.word_type*
  %olist453 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1452, i32 0, i32 0
  %arrayidx454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist453, i32 0, i64 0
  %opred455 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx454, i32 0, i32 0
  %173 = load %union.rec*, %union.rec** %opred455, align 8
  %174 = load i32, i32* @zz_size, align 4
  %idxprom456 = sext i32 %174 to i64
  %arrayidx457 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom456
  store %union.rec* %173, %union.rec** %arrayidx457, align 8
  br label %if.end.458

if.end.458:                                       ; preds = %if.else.449, %if.then.447
  br label %if.end.459

if.end.459:                                       ; preds = %if.end.458, %if.then.441
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1460 = bitcast %union.rec* %175 to %struct.word_type*
  %ou1461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1460, i32 0, i32 1
  %os11462 = bitcast %union.FIRST_UNION* %ou1461 to %struct.anon*
  %otype463 = getelementptr inbounds %struct.anon, %struct.anon* %os11462, i32 0, i32 0
  store i8 17, i8* %otype463, align 1
  %176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1464 = bitcast %union.rec* %177 to %struct.word_type*
  %olist465 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1464, i32 0, i32 0
  %arrayidx466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist465, i32 0, i64 1
  %osucc467 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx466, i32 0, i32 1
  store %union.rec* %176, %union.rec** %osucc467, align 8
  %178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1468 = bitcast %union.rec* %178 to %struct.word_type*
  %olist469 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1468, i32 0, i32 0
  %arrayidx470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist469, i32 0, i64 1
  %opred471 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx470, i32 0, i32 0
  store %union.rec* %176, %union.rec** %opred471, align 8
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1472 = bitcast %union.rec* %179 to %struct.word_type*
  %olist473 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1472, i32 0, i32 0
  %arrayidx474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist473, i32 0, i64 0
  %osucc475 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx474, i32 0, i32 1
  store %union.rec* %176, %union.rec** %osucc475, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1476 = bitcast %union.rec* %180 to %struct.word_type*
  %olist477 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1476, i32 0, i32 0
  %arrayidx478 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist477, i32 0, i64 0
  %opred479 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx478, i32 0, i32 0
  store %union.rec* %176, %union.rec** %opred479, align 8
  store %union.rec* %176, %union.rec** %inners, align 8
  br label %if.end.480

if.end.480:                                       ; preds = %if.end.459, %sw.bb.433
  %181 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv481 = zext i8 %181 to i32
  store i32 %conv481, i32* @zz_size, align 4
  %conv482 = sext i32 %conv481 to i64
  %cmp483 = icmp uge i64 %conv482, 265
  br i1 %cmp483, label %if.then.485, label %if.else.487

if.then.485:                                      ; preds = %if.end.480
  %182 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call486 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %182)
  br label %if.end.504

if.else.487:                                      ; preds = %if.end.480
  %183 = load i32, i32* @zz_size, align 4
  %idxprom488 = sext i32 %183 to i64
  %arrayidx489 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom488
  %184 = load %union.rec*, %union.rec** %arrayidx489, align 8
  %cmp490 = icmp eq %union.rec* %184, null
  br i1 %cmp490, label %if.then.492, label %if.else.494

if.then.492:                                      ; preds = %if.else.487
  %185 = load i32, i32* @zz_size, align 4
  %186 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call493 = call %union.rec* @GetMemory(i32 %185, %struct.FILE_POS* %186)
  store %union.rec* %call493, %union.rec** @zz_hold, align 8
  br label %if.end.503

if.else.494:                                      ; preds = %if.else.487
  %187 = load i32, i32* @zz_size, align 4
  %idxprom495 = sext i32 %187 to i64
  %arrayidx496 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom495
  %188 = load %union.rec*, %union.rec** %arrayidx496, align 8
  store %union.rec* %188, %union.rec** @zz_hold, align 8
  store %union.rec* %188, %union.rec** @zz_hold, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1497 = bitcast %union.rec* %189 to %struct.word_type*
  %olist498 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1497, i32 0, i32 0
  %arrayidx499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist498, i32 0, i64 0
  %opred500 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx499, i32 0, i32 0
  %190 = load %union.rec*, %union.rec** %opred500, align 8
  %191 = load i32, i32* @zz_size, align 4
  %idxprom501 = sext i32 %191 to i64
  %arrayidx502 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom501
  store %union.rec* %190, %union.rec** %arrayidx502, align 8
  br label %if.end.503

if.end.503:                                       ; preds = %if.else.494, %if.then.492
  br label %if.end.504

if.end.504:                                       ; preds = %if.end.503, %if.then.485
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1505 = bitcast %union.rec* %192 to %struct.word_type*
  %ou1506 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1505, i32 0, i32 1
  %os11507 = bitcast %union.FIRST_UNION* %ou1506 to %struct.anon*
  %otype508 = getelementptr inbounds %struct.anon, %struct.anon* %os11507, i32 0, i32 0
  store i8 0, i8* %otype508, align 1
  %193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1509 = bitcast %union.rec* %194 to %struct.word_type*
  %olist510 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1509, i32 0, i32 0
  %arrayidx511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist510, i32 0, i64 1
  %osucc512 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx511, i32 0, i32 1
  store %union.rec* %193, %union.rec** %osucc512, align 8
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1513 = bitcast %union.rec* %195 to %struct.word_type*
  %olist514 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1513, i32 0, i32 0
  %arrayidx515 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist514, i32 0, i64 1
  %opred516 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx515, i32 0, i32 0
  store %union.rec* %193, %union.rec** %opred516, align 8
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1517 = bitcast %union.rec* %196 to %struct.word_type*
  %olist518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1517, i32 0, i32 0
  %arrayidx519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist518, i32 0, i64 0
  %osucc520 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx519, i32 0, i32 1
  store %union.rec* %193, %union.rec** %osucc520, align 8
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1521 = bitcast %union.rec* %197 to %struct.word_type*
  %olist522 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1521, i32 0, i32 0
  %arrayidx523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist522, i32 0, i64 0
  %opred524 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx523, i32 0, i32 0
  store %union.rec* %193, %union.rec** %opred524, align 8
  store %union.rec* %193, %union.rec** @xx_link, align 8
  %198 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %198, %union.rec** @zz_res, align 8
  %199 = load %union.rec*, %union.rec** %inners, align 8
  store %union.rec* %199, %union.rec** @zz_hold, align 8
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp525 = icmp eq %union.rec* %200, null
  br i1 %cmp525, label %cond.true.527, label %cond.false.528

cond.true.527:                                    ; preds = %if.end.504
  %201 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.563

cond.false.528:                                   ; preds = %if.end.504
  %202 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp529 = icmp eq %union.rec* %202, null
  br i1 %cmp529, label %cond.true.531, label %cond.false.532

cond.true.531:                                    ; preds = %cond.false.528
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.561

cond.false.532:                                   ; preds = %cond.false.528
  %204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1533 = bitcast %union.rec* %204 to %struct.word_type*
  %olist534 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1533, i32 0, i32 0
  %arrayidx535 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist534, i32 0, i64 0
  %opred536 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx535, i32 0, i32 0
  %205 = load %union.rec*, %union.rec** %opred536, align 8
  store %union.rec* %205, %union.rec** @zz_tmp, align 8
  %206 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1537 = bitcast %union.rec* %206 to %struct.word_type*
  %olist538 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1537, i32 0, i32 0
  %arrayidx539 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist538, i32 0, i64 0
  %opred540 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx539, i32 0, i32 0
  %207 = load %union.rec*, %union.rec** %opred540, align 8
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1541 = bitcast %union.rec* %208 to %struct.word_type*
  %olist542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1541, i32 0, i32 0
  %arrayidx543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist542, i32 0, i64 0
  %opred544 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx543, i32 0, i32 0
  store %union.rec* %207, %union.rec** %opred544, align 8
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %210 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1545 = bitcast %union.rec* %210 to %struct.word_type*
  %olist546 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1545, i32 0, i32 0
  %arrayidx547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist546, i32 0, i64 0
  %opred548 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx547, i32 0, i32 0
  %211 = load %union.rec*, %union.rec** %opred548, align 8
  %os1549 = bitcast %union.rec* %211 to %struct.word_type*
  %olist550 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1549, i32 0, i32 0
  %arrayidx551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist550, i32 0, i64 0
  %osucc552 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx551, i32 0, i32 1
  store %union.rec* %209, %union.rec** %osucc552, align 8
  %212 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %213 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1553 = bitcast %union.rec* %213 to %struct.word_type*
  %olist554 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1553, i32 0, i32 0
  %arrayidx555 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist554, i32 0, i64 0
  %opred556 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx555, i32 0, i32 0
  store %union.rec* %212, %union.rec** %opred556, align 8
  %214 = load %union.rec*, %union.rec** @zz_res, align 8
  %215 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1557 = bitcast %union.rec* %215 to %struct.word_type*
  %olist558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1557, i32 0, i32 0
  %arrayidx559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist558, i32 0, i64 0
  %osucc560 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx559, i32 0, i32 1
  store %union.rec* %214, %union.rec** %osucc560, align 8
  br label %cond.end.561

cond.end.561:                                     ; preds = %cond.false.532, %cond.true.531
  %cond562 = phi %union.rec* [ %203, %cond.true.531 ], [ %214, %cond.false.532 ]
  br label %cond.end.563

cond.end.563:                                     ; preds = %cond.end.561, %cond.true.527
  %cond564 = phi %union.rec* [ %201, %cond.true.527 ], [ %cond562, %cond.end.561 ]
  %216 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %216, %union.rec** @zz_res, align 8
  %217 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %217, %union.rec** @zz_hold, align 8
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp565 = icmp eq %union.rec* %218, null
  br i1 %cmp565, label %cond.true.567, label %cond.false.568

cond.true.567:                                    ; preds = %cond.end.563
  %219 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.603

cond.false.568:                                   ; preds = %cond.end.563
  %220 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp569 = icmp eq %union.rec* %220, null
  br i1 %cmp569, label %cond.true.571, label %cond.false.572

cond.true.571:                                    ; preds = %cond.false.568
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.601

cond.false.572:                                   ; preds = %cond.false.568
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1573 = bitcast %union.rec* %222 to %struct.word_type*
  %olist574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1573, i32 0, i32 0
  %arrayidx575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist574, i32 0, i64 1
  %opred576 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx575, i32 0, i32 0
  %223 = load %union.rec*, %union.rec** %opred576, align 8
  store %union.rec* %223, %union.rec** @zz_tmp, align 8
  %224 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1577 = bitcast %union.rec* %224 to %struct.word_type*
  %olist578 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1577, i32 0, i32 0
  %arrayidx579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist578, i32 0, i64 1
  %opred580 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx579, i32 0, i32 0
  %225 = load %union.rec*, %union.rec** %opred580, align 8
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1581 = bitcast %union.rec* %226 to %struct.word_type*
  %olist582 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1581, i32 0, i32 0
  %arrayidx583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist582, i32 0, i64 1
  %opred584 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx583, i32 0, i32 0
  store %union.rec* %225, %union.rec** %opred584, align 8
  %227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %228 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1585 = bitcast %union.rec* %228 to %struct.word_type*
  %olist586 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1585, i32 0, i32 0
  %arrayidx587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist586, i32 0, i64 1
  %opred588 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx587, i32 0, i32 0
  %229 = load %union.rec*, %union.rec** %opred588, align 8
  %os1589 = bitcast %union.rec* %229 to %struct.word_type*
  %olist590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1589, i32 0, i32 0
  %arrayidx591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist590, i32 0, i64 1
  %osucc592 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx591, i32 0, i32 1
  store %union.rec* %227, %union.rec** %osucc592, align 8
  %230 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %231 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1593 = bitcast %union.rec* %231 to %struct.word_type*
  %olist594 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1593, i32 0, i32 0
  %arrayidx595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist594, i32 0, i64 1
  %opred596 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx595, i32 0, i32 0
  store %union.rec* %230, %union.rec** %opred596, align 8
  %232 = load %union.rec*, %union.rec** @zz_res, align 8
  %233 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1597 = bitcast %union.rec* %233 to %struct.word_type*
  %olist598 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1597, i32 0, i32 0
  %arrayidx599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist598, i32 0, i64 1
  %osucc600 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx599, i32 0, i32 1
  store %union.rec* %232, %union.rec** %osucc600, align 8
  br label %cond.end.601

cond.end.601:                                     ; preds = %cond.false.572, %cond.true.571
  %cond602 = phi %union.rec* [ %221, %cond.true.571 ], [ %232, %cond.false.572 ]
  br label %cond.end.603

cond.end.603:                                     ; preds = %cond.end.601, %cond.true.567
  %cond604 = phi %union.rec* [ %219, %cond.true.567 ], [ %cond602, %cond.end.601 ]
  br label %sw.epilog.2196

sw.bb.605:                                        ; preds = %if.end.369, %if.end.369
  br label %SUSPEND

sw.bb.606:                                        ; preds = %if.end.369
  %234 = load %union.rec*, %union.rec** %y, align 8
  %os1607 = bitcast %union.rec* %234 to %struct.word_type*
  %olist608 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1607, i32 0, i32 0
  %arrayidx609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist608, i32 0, i64 0
  %osucc610 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx609, i32 0, i32 1
  %235 = load %union.rec*, %union.rec** %osucc610, align 8
  %os1611 = bitcast %union.rec* %235 to %struct.word_type*
  %olist612 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1611, i32 0, i32 0
  %arrayidx613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist612, i32 0, i64 1
  %opred614 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx613, i32 0, i32 0
  %236 = load %union.rec*, %union.rec** %opred614, align 8
  store %union.rec* %236, %union.rec** %tmp, align 8
  br label %for.cond.615

for.cond.615:                                     ; preds = %for.inc.624, %sw.bb.606
  %237 = load %union.rec*, %union.rec** %tmp, align 8
  %os1616 = bitcast %union.rec* %237 to %struct.word_type*
  %ou1617 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1616, i32 0, i32 1
  %os11618 = bitcast %union.FIRST_UNION* %ou1617 to %struct.anon*
  %otype619 = getelementptr inbounds %struct.anon, %struct.anon* %os11618, i32 0, i32 0
  %238 = load i8, i8* %otype619, align 1
  %conv620 = zext i8 %238 to i32
  %cmp621 = icmp eq i32 %conv620, 0
  br i1 %cmp621, label %for.body.623, label %for.end.629

for.body.623:                                     ; preds = %for.cond.615
  br label %for.inc.624

for.inc.624:                                      ; preds = %for.body.623
  %239 = load %union.rec*, %union.rec** %tmp, align 8
  %os1625 = bitcast %union.rec* %239 to %struct.word_type*
  %olist626 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1625, i32 0, i32 0
  %arrayidx627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist626, i32 0, i64 1
  %opred628 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx627, i32 0, i32 0
  %240 = load %union.rec*, %union.rec** %opred628, align 8
  store %union.rec* %240, %union.rec** %tmp, align 8
  br label %for.cond.615

for.end.629:                                      ; preds = %for.cond.615
  %241 = load %union.rec*, %union.rec** %tmp, align 8
  %os1630 = bitcast %union.rec* %241 to %struct.word_type*
  %olist631 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1630, i32 0, i32 0
  %arrayidx632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist631, i32 0, i64 1
  %osucc633 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx632, i32 0, i32 1
  %242 = load %union.rec*, %union.rec** %osucc633, align 8
  %243 = load %union.rec*, %union.rec** %tmp, align 8
  %os1634 = bitcast %union.rec* %243 to %struct.word_type*
  %olist635 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1634, i32 0, i32 0
  %arrayidx636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist635, i32 0, i64 1
  %opred637 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx636, i32 0, i32 0
  %244 = load %union.rec*, %union.rec** %opred637, align 8
  %cmp638 = icmp eq %union.rec* %242, %244
  br i1 %cmp638, label %if.then.640, label %if.end.772

if.then.640:                                      ; preds = %for.end.629
  %245 = load %union.rec*, %union.rec** %link, align 8
  %os1641 = bitcast %union.rec* %245 to %struct.word_type*
  %olist642 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1641, i32 0, i32 0
  %arrayidx643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist642, i32 0, i64 0
  %opred644 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx643, i32 0, i32 0
  %246 = load %union.rec*, %union.rec** %opred644, align 8
  store %union.rec* %246, %union.rec** %link, align 8
  %247 = load %union.rec*, %union.rec** %link, align 8
  %os1645 = bitcast %union.rec* %247 to %struct.word_type*
  %olist646 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1645, i32 0, i32 0
  %arrayidx647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist646, i32 0, i64 0
  %osucc648 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx647, i32 0, i32 1
  %248 = load %union.rec*, %union.rec** %osucc648, align 8
  store %union.rec* %248, %union.rec** @xx_link, align 8
  %249 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %249, %union.rec** @zz_hold, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1649 = bitcast %union.rec* %250 to %struct.word_type*
  %olist650 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1649, i32 0, i32 0
  %arrayidx651 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist650, i32 0, i64 1
  %osucc652 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx651, i32 0, i32 1
  %251 = load %union.rec*, %union.rec** %osucc652, align 8
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp653 = icmp eq %union.rec* %251, %252
  br i1 %cmp653, label %cond.true.655, label %cond.false.656

cond.true.655:                                    ; preds = %if.then.640
  br label %cond.end.685

cond.false.656:                                   ; preds = %if.then.640
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1657 = bitcast %union.rec* %253 to %struct.word_type*
  %olist658 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1657, i32 0, i32 0
  %arrayidx659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist658, i32 0, i64 1
  %osucc660 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx659, i32 0, i32 1
  %254 = load %union.rec*, %union.rec** %osucc660, align 8
  store %union.rec* %254, %union.rec** @zz_res, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1661 = bitcast %union.rec* %255 to %struct.word_type*
  %olist662 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1661, i32 0, i32 0
  %arrayidx663 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist662, i32 0, i64 1
  %opred664 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx663, i32 0, i32 0
  %256 = load %union.rec*, %union.rec** %opred664, align 8
  %257 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1665 = bitcast %union.rec* %257 to %struct.word_type*
  %olist666 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1665, i32 0, i32 0
  %arrayidx667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist666, i32 0, i64 1
  %opred668 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx667, i32 0, i32 0
  store %union.rec* %256, %union.rec** %opred668, align 8
  %258 = load %union.rec*, %union.rec** @zz_res, align 8
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1669 = bitcast %union.rec* %259 to %struct.word_type*
  %olist670 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1669, i32 0, i32 0
  %arrayidx671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist670, i32 0, i64 1
  %opred672 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx671, i32 0, i32 0
  %260 = load %union.rec*, %union.rec** %opred672, align 8
  %os1673 = bitcast %union.rec* %260 to %struct.word_type*
  %olist674 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1673, i32 0, i32 0
  %arrayidx675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist674, i32 0, i64 1
  %osucc676 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx675, i32 0, i32 1
  store %union.rec* %258, %union.rec** %osucc676, align 8
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1677 = bitcast %union.rec* %262 to %struct.word_type*
  %olist678 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1677, i32 0, i32 0
  %arrayidx679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist678, i32 0, i64 1
  %osucc680 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx679, i32 0, i32 1
  store %union.rec* %261, %union.rec** %osucc680, align 8
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1681 = bitcast %union.rec* %263 to %struct.word_type*
  %olist682 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1681, i32 0, i32 0
  %arrayidx683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist682, i32 0, i64 1
  %opred684 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx683, i32 0, i32 0
  store %union.rec* %261, %union.rec** %opred684, align 8
  %264 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.685

cond.end.685:                                     ; preds = %cond.false.656, %cond.true.655
  %cond686 = phi %union.rec* [ null, %cond.true.655 ], [ %264, %cond.false.656 ]
  store %union.rec* %cond686, %union.rec** @xx_tmp, align 8
  %265 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %265, %union.rec** @zz_hold, align 8
  %266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1687 = bitcast %union.rec* %266 to %struct.word_type*
  %olist688 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1687, i32 0, i32 0
  %arrayidx689 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist688, i32 0, i64 0
  %osucc690 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx689, i32 0, i32 1
  %267 = load %union.rec*, %union.rec** %osucc690, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp691 = icmp eq %union.rec* %267, %268
  br i1 %cmp691, label %cond.true.693, label %cond.false.694

cond.true.693:                                    ; preds = %cond.end.685
  br label %cond.end.723

cond.false.694:                                   ; preds = %cond.end.685
  %269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1695 = bitcast %union.rec* %269 to %struct.word_type*
  %olist696 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1695, i32 0, i32 0
  %arrayidx697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist696, i32 0, i64 0
  %osucc698 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx697, i32 0, i32 1
  %270 = load %union.rec*, %union.rec** %osucc698, align 8
  store %union.rec* %270, %union.rec** @zz_res, align 8
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1699 = bitcast %union.rec* %271 to %struct.word_type*
  %olist700 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1699, i32 0, i32 0
  %arrayidx701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist700, i32 0, i64 0
  %opred702 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx701, i32 0, i32 0
  %272 = load %union.rec*, %union.rec** %opred702, align 8
  %273 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1703 = bitcast %union.rec* %273 to %struct.word_type*
  %olist704 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1703, i32 0, i32 0
  %arrayidx705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist704, i32 0, i64 0
  %opred706 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx705, i32 0, i32 0
  store %union.rec* %272, %union.rec** %opred706, align 8
  %274 = load %union.rec*, %union.rec** @zz_res, align 8
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1707 = bitcast %union.rec* %275 to %struct.word_type*
  %olist708 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1707, i32 0, i32 0
  %arrayidx709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist708, i32 0, i64 0
  %opred710 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx709, i32 0, i32 0
  %276 = load %union.rec*, %union.rec** %opred710, align 8
  %os1711 = bitcast %union.rec* %276 to %struct.word_type*
  %olist712 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1711, i32 0, i32 0
  %arrayidx713 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist712, i32 0, i64 0
  %osucc714 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx713, i32 0, i32 1
  store %union.rec* %274, %union.rec** %osucc714, align 8
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1715 = bitcast %union.rec* %278 to %struct.word_type*
  %olist716 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1715, i32 0, i32 0
  %arrayidx717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist716, i32 0, i64 0
  %osucc718 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx717, i32 0, i32 1
  store %union.rec* %277, %union.rec** %osucc718, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1719 = bitcast %union.rec* %279 to %struct.word_type*
  %olist720 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1719, i32 0, i32 0
  %arrayidx721 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist720, i32 0, i64 0
  %opred722 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx721, i32 0, i32 0
  store %union.rec* %277, %union.rec** %opred722, align 8
  %280 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.723

cond.end.723:                                     ; preds = %cond.false.694, %cond.true.693
  %cond724 = phi %union.rec* [ null, %cond.true.693 ], [ %280, %cond.false.694 ]
  %281 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %281, %union.rec** @zz_hold, align 8
  %282 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %282, %union.rec** @zz_hold, align 8
  %283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1725 = bitcast %union.rec* %283 to %struct.word_type*
  %ou1726 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1725, i32 0, i32 1
  %os11727 = bitcast %union.FIRST_UNION* %ou1726 to %struct.anon*
  %otype728 = getelementptr inbounds %struct.anon, %struct.anon* %os11727, i32 0, i32 0
  %284 = load i8, i8* %otype728, align 1
  %conv729 = zext i8 %284 to i32
  %cmp730 = icmp eq i32 %conv729, 11
  br i1 %cmp730, label %cond.true.740, label %lor.lhs.false.732

lor.lhs.false.732:                                ; preds = %cond.end.723
  %285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1733 = bitcast %union.rec* %285 to %struct.word_type*
  %ou1734 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1733, i32 0, i32 1
  %os11735 = bitcast %union.FIRST_UNION* %ou1734 to %struct.anon*
  %otype736 = getelementptr inbounds %struct.anon, %struct.anon* %os11735, i32 0, i32 0
  %286 = load i8, i8* %otype736, align 1
  %conv737 = zext i8 %286 to i32
  %cmp738 = icmp eq i32 %conv737, 12
  br i1 %cmp738, label %cond.true.740, label %cond.false.745

cond.true.740:                                    ; preds = %lor.lhs.false.732, %cond.end.723
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1741 = bitcast %union.rec* %287 to %struct.word_type*
  %ou1742 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1741, i32 0, i32 1
  %os11743 = bitcast %union.FIRST_UNION* %ou1742 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11743, i32 0, i32 1
  %288 = load i8, i8* %orec_size, align 1
  %conv744 = zext i8 %288 to i32
  br label %cond.end.753

cond.false.745:                                   ; preds = %lor.lhs.false.732
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1746 = bitcast %union.rec* %289 to %struct.word_type*
  %ou1747 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1746, i32 0, i32 1
  %os11748 = bitcast %union.FIRST_UNION* %ou1747 to %struct.anon*
  %otype749 = getelementptr inbounds %struct.anon, %struct.anon* %os11748, i32 0, i32 0
  %290 = load i8, i8* %otype749, align 1
  %idxprom750 = zext i8 %290 to i64
  %arrayidx751 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom750
  %291 = load i8, i8* %arrayidx751, align 1
  %conv752 = zext i8 %291 to i32
  br label %cond.end.753

cond.end.753:                                     ; preds = %cond.false.745, %cond.true.740
  %cond754 = phi i32 [ %conv744, %cond.true.740 ], [ %conv752, %cond.false.745 ]
  store i32 %cond754, i32* @zz_size, align 4
  %292 = load i32, i32* @zz_size, align 4
  %idxprom755 = sext i32 %292 to i64
  %arrayidx756 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom755
  %293 = load %union.rec*, %union.rec** %arrayidx756, align 8
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1757 = bitcast %union.rec* %294 to %struct.word_type*
  %olist758 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1757, i32 0, i32 0
  %arrayidx759 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist758, i32 0, i64 0
  %opred760 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx759, i32 0, i32 0
  store %union.rec* %293, %union.rec** %opred760, align 8
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %296 = load i32, i32* @zz_size, align 4
  %idxprom761 = sext i32 %296 to i64
  %arrayidx762 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom761
  store %union.rec* %295, %union.rec** %arrayidx762, align 8
  %297 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os1763 = bitcast %union.rec* %297 to %struct.word_type*
  %olist764 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1763, i32 0, i32 0
  %arrayidx765 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist764, i32 0, i64 1
  %osucc766 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx765, i32 0, i32 1
  %298 = load %union.rec*, %union.rec** %osucc766, align 8
  %299 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp767 = icmp eq %union.rec* %298, %299
  br i1 %cmp767, label %if.then.769, label %if.end.771

if.then.769:                                      ; preds = %cond.end.753
  %300 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call770 = call i32 @DisposeObject(%union.rec* %300)
  br label %if.end.771

if.end.771:                                       ; preds = %if.then.769, %cond.end.753
  br label %sw.epilog.2196

if.end.772:                                       ; preds = %for.end.629
  %301 = load %union.rec*, %union.rec** %tmp, align 8
  %os1773 = bitcast %union.rec* %301 to %struct.word_type*
  %olist774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1773, i32 0, i32 0
  %arrayidx775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist774, i32 0, i64 1
  %osucc776 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx775, i32 0, i32 1
  %302 = load %union.rec*, %union.rec** %osucc776, align 8
  %os1777 = bitcast %union.rec* %302 to %struct.word_type*
  %olist778 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1777, i32 0, i32 0
  %arrayidx779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist778, i32 0, i64 0
  %opred780 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx779, i32 0, i32 0
  %303 = load %union.rec*, %union.rec** %opred780, align 8
  store %union.rec* %303, %union.rec** %tmp, align 8
  br label %for.cond.781

for.cond.781:                                     ; preds = %for.inc.790, %if.end.772
  %304 = load %union.rec*, %union.rec** %tmp, align 8
  %os1782 = bitcast %union.rec* %304 to %struct.word_type*
  %ou1783 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1782, i32 0, i32 1
  %os11784 = bitcast %union.FIRST_UNION* %ou1783 to %struct.anon*
  %otype785 = getelementptr inbounds %struct.anon, %struct.anon* %os11784, i32 0, i32 0
  %305 = load i8, i8* %otype785, align 1
  %conv786 = zext i8 %305 to i32
  %cmp787 = icmp eq i32 %conv786, 0
  br i1 %cmp787, label %for.body.789, label %for.end.795

for.body.789:                                     ; preds = %for.cond.781
  br label %for.inc.790

for.inc.790:                                      ; preds = %for.body.789
  %306 = load %union.rec*, %union.rec** %tmp, align 8
  %os1791 = bitcast %union.rec* %306 to %struct.word_type*
  %olist792 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1791, i32 0, i32 0
  %arrayidx793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist792, i32 0, i64 0
  %opred794 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx793, i32 0, i32 0
  %307 = load %union.rec*, %union.rec** %opred794, align 8
  store %union.rec* %307, %union.rec** %tmp, align 8
  br label %for.cond.781

for.end.795:                                      ; preds = %for.cond.781
  %308 = load %union.rec*, %union.rec** %tmp, align 8
  %os1796 = bitcast %union.rec* %308 to %struct.word_type*
  %ou1797 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1796, i32 0, i32 1
  %os11798 = bitcast %union.FIRST_UNION* %ou1797 to %struct.anon*
  %otype799 = getelementptr inbounds %struct.anon, %struct.anon* %os11798, i32 0, i32 0
  %309 = load i8, i8* %otype799, align 1
  %conv800 = zext i8 %309 to i32
  %cmp801 = icmp eq i32 %conv800, 124
  br i1 %cmp801, label %if.end.805, label %if.then.803

if.then.803:                                      ; preds = %for.end.795
  %310 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call804 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %310, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.805

if.end.805:                                       ; preds = %if.then.803, %for.end.795
  %311 = load %union.rec*, %union.rec** %tmp, align 8
  %312 = load %union.rec*, %union.rec** %dest_index, align 8
  %call806 = call i32 @CheckComponentOrder(%union.rec* %311, %union.rec* %312)
  switch i32 %call806, label %sw.epilog.1244 [
    i32 157, label %sw.bb.807
    i32 154, label %sw.bb.1232
    i32 156, label %sw.bb.1233
    i32 155, label %sw.bb.1234
  ]

sw.bb.807:                                        ; preds = %if.end.805
  %313 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %313, %union.rec** @xx_hold, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.923, %sw.bb.807
  %314 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1808 = bitcast %union.rec* %314 to %struct.word_type*
  %olist809 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1808, i32 0, i32 0
  %arrayidx810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist809, i32 0, i64 1
  %osucc811 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx810, i32 0, i32 1
  %315 = load %union.rec*, %union.rec** %osucc811, align 8
  %316 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp812 = icmp ne %union.rec* %315, %316
  br i1 %cmp812, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %317 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1814 = bitcast %union.rec* %317 to %struct.word_type*
  %olist815 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1814, i32 0, i32 0
  %arrayidx816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist815, i32 0, i64 1
  %osucc817 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx816, i32 0, i32 1
  %318 = load %union.rec*, %union.rec** %osucc817, align 8
  store %union.rec* %318, %union.rec** @xx_link, align 8
  %319 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %319, %union.rec** @zz_hold, align 8
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1818 = bitcast %union.rec* %320 to %struct.word_type*
  %olist819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1818, i32 0, i32 0
  %arrayidx820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist819, i32 0, i64 1
  %osucc821 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx820, i32 0, i32 1
  %321 = load %union.rec*, %union.rec** %osucc821, align 8
  %322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp822 = icmp eq %union.rec* %321, %322
  br i1 %cmp822, label %cond.true.824, label %cond.false.825

cond.true.824:                                    ; preds = %while.body
  br label %cond.end.854

cond.false.825:                                   ; preds = %while.body
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1826 = bitcast %union.rec* %323 to %struct.word_type*
  %olist827 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1826, i32 0, i32 0
  %arrayidx828 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist827, i32 0, i64 1
  %osucc829 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx828, i32 0, i32 1
  %324 = load %union.rec*, %union.rec** %osucc829, align 8
  store %union.rec* %324, %union.rec** @zz_res, align 8
  %325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1830 = bitcast %union.rec* %325 to %struct.word_type*
  %olist831 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1830, i32 0, i32 0
  %arrayidx832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist831, i32 0, i64 1
  %opred833 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx832, i32 0, i32 0
  %326 = load %union.rec*, %union.rec** %opred833, align 8
  %327 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1834 = bitcast %union.rec* %327 to %struct.word_type*
  %olist835 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1834, i32 0, i32 0
  %arrayidx836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist835, i32 0, i64 1
  %opred837 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx836, i32 0, i32 0
  store %union.rec* %326, %union.rec** %opred837, align 8
  %328 = load %union.rec*, %union.rec** @zz_res, align 8
  %329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1838 = bitcast %union.rec* %329 to %struct.word_type*
  %olist839 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1838, i32 0, i32 0
  %arrayidx840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist839, i32 0, i64 1
  %opred841 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx840, i32 0, i32 0
  %330 = load %union.rec*, %union.rec** %opred841, align 8
  %os1842 = bitcast %union.rec* %330 to %struct.word_type*
  %olist843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1842, i32 0, i32 0
  %arrayidx844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist843, i32 0, i64 1
  %osucc845 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx844, i32 0, i32 1
  store %union.rec* %328, %union.rec** %osucc845, align 8
  %331 = load %union.rec*, %union.rec** @zz_hold, align 8
  %332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1846 = bitcast %union.rec* %332 to %struct.word_type*
  %olist847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1846, i32 0, i32 0
  %arrayidx848 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist847, i32 0, i64 1
  %osucc849 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx848, i32 0, i32 1
  store %union.rec* %331, %union.rec** %osucc849, align 8
  %333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1850 = bitcast %union.rec* %333 to %struct.word_type*
  %olist851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1850, i32 0, i32 0
  %arrayidx852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist851, i32 0, i64 1
  %opred853 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx852, i32 0, i32 0
  store %union.rec* %331, %union.rec** %opred853, align 8
  %334 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.854

cond.end.854:                                     ; preds = %cond.false.825, %cond.true.824
  %cond855 = phi %union.rec* [ null, %cond.true.824 ], [ %334, %cond.false.825 ]
  %335 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %335, %union.rec** @zz_hold, align 8
  %336 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1856 = bitcast %union.rec* %336 to %struct.word_type*
  %olist857 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1856, i32 0, i32 0
  %arrayidx858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist857, i32 0, i64 0
  %osucc859 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx858, i32 0, i32 1
  %337 = load %union.rec*, %union.rec** %osucc859, align 8
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp860 = icmp eq %union.rec* %337, %338
  br i1 %cmp860, label %cond.true.862, label %cond.false.863

cond.true.862:                                    ; preds = %cond.end.854
  br label %cond.end.892

cond.false.863:                                   ; preds = %cond.end.854
  %339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1864 = bitcast %union.rec* %339 to %struct.word_type*
  %olist865 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1864, i32 0, i32 0
  %arrayidx866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist865, i32 0, i64 0
  %osucc867 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx866, i32 0, i32 1
  %340 = load %union.rec*, %union.rec** %osucc867, align 8
  store %union.rec* %340, %union.rec** @zz_res, align 8
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1868 = bitcast %union.rec* %341 to %struct.word_type*
  %olist869 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1868, i32 0, i32 0
  %arrayidx870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist869, i32 0, i64 0
  %opred871 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx870, i32 0, i32 0
  %342 = load %union.rec*, %union.rec** %opred871, align 8
  %343 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1872 = bitcast %union.rec* %343 to %struct.word_type*
  %olist873 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1872, i32 0, i32 0
  %arrayidx874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist873, i32 0, i64 0
  %opred875 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx874, i32 0, i32 0
  store %union.rec* %342, %union.rec** %opred875, align 8
  %344 = load %union.rec*, %union.rec** @zz_res, align 8
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1876 = bitcast %union.rec* %345 to %struct.word_type*
  %olist877 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1876, i32 0, i32 0
  %arrayidx878 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist877, i32 0, i64 0
  %opred879 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx878, i32 0, i32 0
  %346 = load %union.rec*, %union.rec** %opred879, align 8
  %os1880 = bitcast %union.rec* %346 to %struct.word_type*
  %olist881 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1880, i32 0, i32 0
  %arrayidx882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist881, i32 0, i64 0
  %osucc883 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx882, i32 0, i32 1
  store %union.rec* %344, %union.rec** %osucc883, align 8
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %348 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1884 = bitcast %union.rec* %348 to %struct.word_type*
  %olist885 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1884, i32 0, i32 0
  %arrayidx886 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist885, i32 0, i64 0
  %osucc887 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx886, i32 0, i32 1
  store %union.rec* %347, %union.rec** %osucc887, align 8
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1888 = bitcast %union.rec* %349 to %struct.word_type*
  %olist889 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1888, i32 0, i32 0
  %arrayidx890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist889, i32 0, i64 0
  %opred891 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx890, i32 0, i32 0
  store %union.rec* %347, %union.rec** %opred891, align 8
  %350 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.892

cond.end.892:                                     ; preds = %cond.false.863, %cond.true.862
  %cond893 = phi %union.rec* [ null, %cond.true.862 ], [ %350, %cond.false.863 ]
  %351 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %351, %union.rec** @zz_hold, align 8
  %352 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %352, %union.rec** @zz_hold, align 8
  %353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1894 = bitcast %union.rec* %353 to %struct.word_type*
  %ou1895 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1894, i32 0, i32 1
  %os11896 = bitcast %union.FIRST_UNION* %ou1895 to %struct.anon*
  %otype897 = getelementptr inbounds %struct.anon, %struct.anon* %os11896, i32 0, i32 0
  %354 = load i8, i8* %otype897, align 1
  %conv898 = zext i8 %354 to i32
  %cmp899 = icmp eq i32 %conv898, 11
  br i1 %cmp899, label %cond.true.909, label %lor.lhs.false.901

lor.lhs.false.901:                                ; preds = %cond.end.892
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1902 = bitcast %union.rec* %355 to %struct.word_type*
  %ou1903 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1902, i32 0, i32 1
  %os11904 = bitcast %union.FIRST_UNION* %ou1903 to %struct.anon*
  %otype905 = getelementptr inbounds %struct.anon, %struct.anon* %os11904, i32 0, i32 0
  %356 = load i8, i8* %otype905, align 1
  %conv906 = zext i8 %356 to i32
  %cmp907 = icmp eq i32 %conv906, 12
  br i1 %cmp907, label %cond.true.909, label %cond.false.915

cond.true.909:                                    ; preds = %lor.lhs.false.901, %cond.end.892
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1910 = bitcast %union.rec* %357 to %struct.word_type*
  %ou1911 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1910, i32 0, i32 1
  %os11912 = bitcast %union.FIRST_UNION* %ou1911 to %struct.anon*
  %orec_size913 = getelementptr inbounds %struct.anon, %struct.anon* %os11912, i32 0, i32 1
  %358 = load i8, i8* %orec_size913, align 1
  %conv914 = zext i8 %358 to i32
  br label %cond.end.923

cond.false.915:                                   ; preds = %lor.lhs.false.901
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1916 = bitcast %union.rec* %359 to %struct.word_type*
  %ou1917 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1916, i32 0, i32 1
  %os11918 = bitcast %union.FIRST_UNION* %ou1917 to %struct.anon*
  %otype919 = getelementptr inbounds %struct.anon, %struct.anon* %os11918, i32 0, i32 0
  %360 = load i8, i8* %otype919, align 1
  %idxprom920 = zext i8 %360 to i64
  %arrayidx921 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom920
  %361 = load i8, i8* %arrayidx921, align 1
  %conv922 = zext i8 %361 to i32
  br label %cond.end.923

cond.end.923:                                     ; preds = %cond.false.915, %cond.true.909
  %cond924 = phi i32 [ %conv914, %cond.true.909 ], [ %conv922, %cond.false.915 ]
  store i32 %cond924, i32* @zz_size, align 4
  %362 = load i32, i32* @zz_size, align 4
  %idxprom925 = sext i32 %362 to i64
  %arrayidx926 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom925
  %363 = load %union.rec*, %union.rec** %arrayidx926, align 8
  %364 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1927 = bitcast %union.rec* %364 to %struct.word_type*
  %olist928 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1927, i32 0, i32 0
  %arrayidx929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist928, i32 0, i64 0
  %opred930 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx929, i32 0, i32 0
  store %union.rec* %363, %union.rec** %opred930, align 8
  %365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %366 = load i32, i32* @zz_size, align 4
  %idxprom931 = sext i32 %366 to i64
  %arrayidx932 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom931
  store %union.rec* %365, %union.rec** %arrayidx932, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.933

while.cond.933:                                   ; preds = %cond.end.1050, %while.end
  %367 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1934 = bitcast %union.rec* %367 to %struct.word_type*
  %olist935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1934, i32 0, i32 0
  %arrayidx936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist935, i32 0, i64 0
  %osucc937 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx936, i32 0, i32 1
  %368 = load %union.rec*, %union.rec** %osucc937, align 8
  %369 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp938 = icmp ne %union.rec* %368, %369
  br i1 %cmp938, label %while.body.940, label %while.end.1060

while.body.940:                                   ; preds = %while.cond.933
  %370 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1941 = bitcast %union.rec* %370 to %struct.word_type*
  %olist942 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1941, i32 0, i32 0
  %arrayidx943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist942, i32 0, i64 0
  %osucc944 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx943, i32 0, i32 1
  %371 = load %union.rec*, %union.rec** %osucc944, align 8
  store %union.rec* %371, %union.rec** @xx_link, align 8
  %372 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %372, %union.rec** @zz_hold, align 8
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1945 = bitcast %union.rec* %373 to %struct.word_type*
  %olist946 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1945, i32 0, i32 0
  %arrayidx947 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist946, i32 0, i64 1
  %osucc948 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx947, i32 0, i32 1
  %374 = load %union.rec*, %union.rec** %osucc948, align 8
  %375 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp949 = icmp eq %union.rec* %374, %375
  br i1 %cmp949, label %cond.true.951, label %cond.false.952

cond.true.951:                                    ; preds = %while.body.940
  br label %cond.end.981

cond.false.952:                                   ; preds = %while.body.940
  %376 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1953 = bitcast %union.rec* %376 to %struct.word_type*
  %olist954 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1953, i32 0, i32 0
  %arrayidx955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist954, i32 0, i64 1
  %osucc956 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx955, i32 0, i32 1
  %377 = load %union.rec*, %union.rec** %osucc956, align 8
  store %union.rec* %377, %union.rec** @zz_res, align 8
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1957 = bitcast %union.rec* %378 to %struct.word_type*
  %olist958 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1957, i32 0, i32 0
  %arrayidx959 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist958, i32 0, i64 1
  %opred960 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx959, i32 0, i32 0
  %379 = load %union.rec*, %union.rec** %opred960, align 8
  %380 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1961 = bitcast %union.rec* %380 to %struct.word_type*
  %olist962 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1961, i32 0, i32 0
  %arrayidx963 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist962, i32 0, i64 1
  %opred964 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx963, i32 0, i32 0
  store %union.rec* %379, %union.rec** %opred964, align 8
  %381 = load %union.rec*, %union.rec** @zz_res, align 8
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1965 = bitcast %union.rec* %382 to %struct.word_type*
  %olist966 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1965, i32 0, i32 0
  %arrayidx967 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist966, i32 0, i64 1
  %opred968 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx967, i32 0, i32 0
  %383 = load %union.rec*, %union.rec** %opred968, align 8
  %os1969 = bitcast %union.rec* %383 to %struct.word_type*
  %olist970 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1969, i32 0, i32 0
  %arrayidx971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist970, i32 0, i64 1
  %osucc972 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx971, i32 0, i32 1
  store %union.rec* %381, %union.rec** %osucc972, align 8
  %384 = load %union.rec*, %union.rec** @zz_hold, align 8
  %385 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1973 = bitcast %union.rec* %385 to %struct.word_type*
  %olist974 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1973, i32 0, i32 0
  %arrayidx975 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist974, i32 0, i64 1
  %osucc976 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx975, i32 0, i32 1
  store %union.rec* %384, %union.rec** %osucc976, align 8
  %386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1977 = bitcast %union.rec* %386 to %struct.word_type*
  %olist978 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1977, i32 0, i32 0
  %arrayidx979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist978, i32 0, i64 1
  %opred980 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx979, i32 0, i32 0
  store %union.rec* %384, %union.rec** %opred980, align 8
  %387 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.981

cond.end.981:                                     ; preds = %cond.false.952, %cond.true.951
  %cond982 = phi %union.rec* [ null, %cond.true.951 ], [ %387, %cond.false.952 ]
  %388 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %388, %union.rec** @zz_hold, align 8
  %389 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1983 = bitcast %union.rec* %389 to %struct.word_type*
  %olist984 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1983, i32 0, i32 0
  %arrayidx985 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist984, i32 0, i64 0
  %osucc986 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx985, i32 0, i32 1
  %390 = load %union.rec*, %union.rec** %osucc986, align 8
  %391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp987 = icmp eq %union.rec* %390, %391
  br i1 %cmp987, label %cond.true.989, label %cond.false.990

cond.true.989:                                    ; preds = %cond.end.981
  br label %cond.end.1019

cond.false.990:                                   ; preds = %cond.end.981
  %392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1991 = bitcast %union.rec* %392 to %struct.word_type*
  %olist992 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1991, i32 0, i32 0
  %arrayidx993 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist992, i32 0, i64 0
  %osucc994 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx993, i32 0, i32 1
  %393 = load %union.rec*, %union.rec** %osucc994, align 8
  store %union.rec* %393, %union.rec** @zz_res, align 8
  %394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1995 = bitcast %union.rec* %394 to %struct.word_type*
  %olist996 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1995, i32 0, i32 0
  %arrayidx997 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist996, i32 0, i64 0
  %opred998 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx997, i32 0, i32 0
  %395 = load %union.rec*, %union.rec** %opred998, align 8
  %396 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1999 = bitcast %union.rec* %396 to %struct.word_type*
  %olist1000 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1999, i32 0, i32 0
  %arrayidx1001 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1000, i32 0, i64 0
  %opred1002 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1001, i32 0, i32 0
  store %union.rec* %395, %union.rec** %opred1002, align 8
  %397 = load %union.rec*, %union.rec** @zz_res, align 8
  %398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11003 = bitcast %union.rec* %398 to %struct.word_type*
  %olist1004 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11003, i32 0, i32 0
  %arrayidx1005 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1004, i32 0, i64 0
  %opred1006 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1005, i32 0, i32 0
  %399 = load %union.rec*, %union.rec** %opred1006, align 8
  %os11007 = bitcast %union.rec* %399 to %struct.word_type*
  %olist1008 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11007, i32 0, i32 0
  %arrayidx1009 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1008, i32 0, i64 0
  %osucc1010 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1009, i32 0, i32 1
  store %union.rec* %397, %union.rec** %osucc1010, align 8
  %400 = load %union.rec*, %union.rec** @zz_hold, align 8
  %401 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11011 = bitcast %union.rec* %401 to %struct.word_type*
  %olist1012 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11011, i32 0, i32 0
  %arrayidx1013 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1012, i32 0, i64 0
  %osucc1014 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1013, i32 0, i32 1
  store %union.rec* %400, %union.rec** %osucc1014, align 8
  %402 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11015 = bitcast %union.rec* %402 to %struct.word_type*
  %olist1016 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11015, i32 0, i32 0
  %arrayidx1017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1016, i32 0, i64 0
  %opred1018 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1017, i32 0, i32 0
  store %union.rec* %400, %union.rec** %opred1018, align 8
  %403 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1019

cond.end.1019:                                    ; preds = %cond.false.990, %cond.true.989
  %cond1020 = phi %union.rec* [ null, %cond.true.989 ], [ %403, %cond.false.990 ]
  %404 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %404, %union.rec** @zz_hold, align 8
  %405 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %405, %union.rec** @zz_hold, align 8
  %406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11021 = bitcast %union.rec* %406 to %struct.word_type*
  %ou11022 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11021, i32 0, i32 1
  %os111023 = bitcast %union.FIRST_UNION* %ou11022 to %struct.anon*
  %otype1024 = getelementptr inbounds %struct.anon, %struct.anon* %os111023, i32 0, i32 0
  %407 = load i8, i8* %otype1024, align 1
  %conv1025 = zext i8 %407 to i32
  %cmp1026 = icmp eq i32 %conv1025, 11
  br i1 %cmp1026, label %cond.true.1036, label %lor.lhs.false.1028

lor.lhs.false.1028:                               ; preds = %cond.end.1019
  %408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11029 = bitcast %union.rec* %408 to %struct.word_type*
  %ou11030 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11029, i32 0, i32 1
  %os111031 = bitcast %union.FIRST_UNION* %ou11030 to %struct.anon*
  %otype1032 = getelementptr inbounds %struct.anon, %struct.anon* %os111031, i32 0, i32 0
  %409 = load i8, i8* %otype1032, align 1
  %conv1033 = zext i8 %409 to i32
  %cmp1034 = icmp eq i32 %conv1033, 12
  br i1 %cmp1034, label %cond.true.1036, label %cond.false.1042

cond.true.1036:                                   ; preds = %lor.lhs.false.1028, %cond.end.1019
  %410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11037 = bitcast %union.rec* %410 to %struct.word_type*
  %ou11038 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11037, i32 0, i32 1
  %os111039 = bitcast %union.FIRST_UNION* %ou11038 to %struct.anon*
  %orec_size1040 = getelementptr inbounds %struct.anon, %struct.anon* %os111039, i32 0, i32 1
  %411 = load i8, i8* %orec_size1040, align 1
  %conv1041 = zext i8 %411 to i32
  br label %cond.end.1050

cond.false.1042:                                  ; preds = %lor.lhs.false.1028
  %412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11043 = bitcast %union.rec* %412 to %struct.word_type*
  %ou11044 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11043, i32 0, i32 1
  %os111045 = bitcast %union.FIRST_UNION* %ou11044 to %struct.anon*
  %otype1046 = getelementptr inbounds %struct.anon, %struct.anon* %os111045, i32 0, i32 0
  %413 = load i8, i8* %otype1046, align 1
  %idxprom1047 = zext i8 %413 to i64
  %arrayidx1048 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1047
  %414 = load i8, i8* %arrayidx1048, align 1
  %conv1049 = zext i8 %414 to i32
  br label %cond.end.1050

cond.end.1050:                                    ; preds = %cond.false.1042, %cond.true.1036
  %cond1051 = phi i32 [ %conv1041, %cond.true.1036 ], [ %conv1049, %cond.false.1042 ]
  store i32 %cond1051, i32* @zz_size, align 4
  %415 = load i32, i32* @zz_size, align 4
  %idxprom1052 = sext i32 %415 to i64
  %arrayidx1053 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1052
  %416 = load %union.rec*, %union.rec** %arrayidx1053, align 8
  %417 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11054 = bitcast %union.rec* %417 to %struct.word_type*
  %olist1055 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11054, i32 0, i32 0
  %arrayidx1056 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1055, i32 0, i64 0
  %opred1057 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1056, i32 0, i32 0
  store %union.rec* %416, %union.rec** %opred1057, align 8
  %418 = load %union.rec*, %union.rec** @zz_hold, align 8
  %419 = load i32, i32* @zz_size, align 4
  %idxprom1058 = sext i32 %419 to i64
  %arrayidx1059 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1058
  store %union.rec* %418, %union.rec** %arrayidx1059, align 8
  br label %while.cond.933

while.end.1060:                                   ; preds = %while.cond.933
  %420 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %420, %union.rec** @zz_hold, align 8
  %421 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %421, %union.rec** @zz_hold, align 8
  %422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11061 = bitcast %union.rec* %422 to %struct.word_type*
  %ou11062 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11061, i32 0, i32 1
  %os111063 = bitcast %union.FIRST_UNION* %ou11062 to %struct.anon*
  %otype1064 = getelementptr inbounds %struct.anon, %struct.anon* %os111063, i32 0, i32 0
  %423 = load i8, i8* %otype1064, align 1
  %conv1065 = zext i8 %423 to i32
  %cmp1066 = icmp eq i32 %conv1065, 11
  br i1 %cmp1066, label %cond.true.1076, label %lor.lhs.false.1068

lor.lhs.false.1068:                               ; preds = %while.end.1060
  %424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11069 = bitcast %union.rec* %424 to %struct.word_type*
  %ou11070 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11069, i32 0, i32 1
  %os111071 = bitcast %union.FIRST_UNION* %ou11070 to %struct.anon*
  %otype1072 = getelementptr inbounds %struct.anon, %struct.anon* %os111071, i32 0, i32 0
  %425 = load i8, i8* %otype1072, align 1
  %conv1073 = zext i8 %425 to i32
  %cmp1074 = icmp eq i32 %conv1073, 12
  br i1 %cmp1074, label %cond.true.1076, label %cond.false.1082

cond.true.1076:                                   ; preds = %lor.lhs.false.1068, %while.end.1060
  %426 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11077 = bitcast %union.rec* %426 to %struct.word_type*
  %ou11078 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11077, i32 0, i32 1
  %os111079 = bitcast %union.FIRST_UNION* %ou11078 to %struct.anon*
  %orec_size1080 = getelementptr inbounds %struct.anon, %struct.anon* %os111079, i32 0, i32 1
  %427 = load i8, i8* %orec_size1080, align 1
  %conv1081 = zext i8 %427 to i32
  br label %cond.end.1090

cond.false.1082:                                  ; preds = %lor.lhs.false.1068
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11083 = bitcast %union.rec* %428 to %struct.word_type*
  %ou11084 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11083, i32 0, i32 1
  %os111085 = bitcast %union.FIRST_UNION* %ou11084 to %struct.anon*
  %otype1086 = getelementptr inbounds %struct.anon, %struct.anon* %os111085, i32 0, i32 0
  %429 = load i8, i8* %otype1086, align 1
  %idxprom1087 = zext i8 %429 to i64
  %arrayidx1088 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1087
  %430 = load i8, i8* %arrayidx1088, align 1
  %conv1089 = zext i8 %430 to i32
  br label %cond.end.1090

cond.end.1090:                                    ; preds = %cond.false.1082, %cond.true.1076
  %cond1091 = phi i32 [ %conv1081, %cond.true.1076 ], [ %conv1089, %cond.false.1082 ]
  store i32 %cond1091, i32* @zz_size, align 4
  %431 = load i32, i32* @zz_size, align 4
  %idxprom1092 = sext i32 %431 to i64
  %arrayidx1093 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1092
  %432 = load %union.rec*, %union.rec** %arrayidx1093, align 8
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11094 = bitcast %union.rec* %433 to %struct.word_type*
  %olist1095 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11094, i32 0, i32 0
  %arrayidx1096 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1095, i32 0, i64 0
  %opred1097 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1096, i32 0, i32 0
  store %union.rec* %432, %union.rec** %opred1097, align 8
  %434 = load %union.rec*, %union.rec** @zz_hold, align 8
  %435 = load i32, i32* @zz_size, align 4
  %idxprom1098 = sext i32 %435 to i64
  %arrayidx1099 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1098
  store %union.rec* %434, %union.rec** %arrayidx1099, align 8
  %436 = load %union.rec*, %union.rec** %link, align 8
  %os11100 = bitcast %union.rec* %436 to %struct.word_type*
  %olist1101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11100, i32 0, i32 0
  %arrayidx1102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1101, i32 0, i64 0
  %opred1103 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1102, i32 0, i32 0
  %437 = load %union.rec*, %union.rec** %opred1103, align 8
  store %union.rec* %437, %union.rec** %link, align 8
  %438 = load %union.rec*, %union.rec** %link, align 8
  %os11104 = bitcast %union.rec* %438 to %struct.word_type*
  %olist1105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11104, i32 0, i32 0
  %arrayidx1106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1105, i32 0, i64 0
  %osucc1107 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1106, i32 0, i32 1
  %439 = load %union.rec*, %union.rec** %osucc1107, align 8
  store %union.rec* %439, %union.rec** @xx_link, align 8
  %440 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %440, %union.rec** @zz_hold, align 8
  %441 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11108 = bitcast %union.rec* %441 to %struct.word_type*
  %olist1109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11108, i32 0, i32 0
  %arrayidx1110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1109, i32 0, i64 1
  %osucc1111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1110, i32 0, i32 1
  %442 = load %union.rec*, %union.rec** %osucc1111, align 8
  %443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1112 = icmp eq %union.rec* %442, %443
  br i1 %cmp1112, label %cond.true.1114, label %cond.false.1115

cond.true.1114:                                   ; preds = %cond.end.1090
  br label %cond.end.1144

cond.false.1115:                                  ; preds = %cond.end.1090
  %444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11116 = bitcast %union.rec* %444 to %struct.word_type*
  %olist1117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11116, i32 0, i32 0
  %arrayidx1118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1117, i32 0, i64 1
  %osucc1119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1118, i32 0, i32 1
  %445 = load %union.rec*, %union.rec** %osucc1119, align 8
  store %union.rec* %445, %union.rec** @zz_res, align 8
  %446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11120 = bitcast %union.rec* %446 to %struct.word_type*
  %olist1121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11120, i32 0, i32 0
  %arrayidx1122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1121, i32 0, i64 1
  %opred1123 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1122, i32 0, i32 0
  %447 = load %union.rec*, %union.rec** %opred1123, align 8
  %448 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11124 = bitcast %union.rec* %448 to %struct.word_type*
  %olist1125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11124, i32 0, i32 0
  %arrayidx1126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1125, i32 0, i64 1
  %opred1127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1126, i32 0, i32 0
  store %union.rec* %447, %union.rec** %opred1127, align 8
  %449 = load %union.rec*, %union.rec** @zz_res, align 8
  %450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11128 = bitcast %union.rec* %450 to %struct.word_type*
  %olist1129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11128, i32 0, i32 0
  %arrayidx1130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1129, i32 0, i64 1
  %opred1131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1130, i32 0, i32 0
  %451 = load %union.rec*, %union.rec** %opred1131, align 8
  %os11132 = bitcast %union.rec* %451 to %struct.word_type*
  %olist1133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11132, i32 0, i32 0
  %arrayidx1134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1133, i32 0, i64 1
  %osucc1135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1134, i32 0, i32 1
  store %union.rec* %449, %union.rec** %osucc1135, align 8
  %452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11136 = bitcast %union.rec* %453 to %struct.word_type*
  %olist1137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11136, i32 0, i32 0
  %arrayidx1138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1137, i32 0, i64 1
  %osucc1139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1138, i32 0, i32 1
  store %union.rec* %452, %union.rec** %osucc1139, align 8
  %454 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11140 = bitcast %union.rec* %454 to %struct.word_type*
  %olist1141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11140, i32 0, i32 0
  %arrayidx1142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1141, i32 0, i64 1
  %opred1143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1142, i32 0, i32 0
  store %union.rec* %452, %union.rec** %opred1143, align 8
  %455 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1144

cond.end.1144:                                    ; preds = %cond.false.1115, %cond.true.1114
  %cond1145 = phi %union.rec* [ null, %cond.true.1114 ], [ %455, %cond.false.1115 ]
  store %union.rec* %cond1145, %union.rec** @xx_tmp, align 8
  %456 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %456, %union.rec** @zz_hold, align 8
  %457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11146 = bitcast %union.rec* %457 to %struct.word_type*
  %olist1147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11146, i32 0, i32 0
  %arrayidx1148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1147, i32 0, i64 0
  %osucc1149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1148, i32 0, i32 1
  %458 = load %union.rec*, %union.rec** %osucc1149, align 8
  %459 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1150 = icmp eq %union.rec* %458, %459
  br i1 %cmp1150, label %cond.true.1152, label %cond.false.1153

cond.true.1152:                                   ; preds = %cond.end.1144
  br label %cond.end.1182

cond.false.1153:                                  ; preds = %cond.end.1144
  %460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11154 = bitcast %union.rec* %460 to %struct.word_type*
  %olist1155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11154, i32 0, i32 0
  %arrayidx1156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1155, i32 0, i64 0
  %osucc1157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1156, i32 0, i32 1
  %461 = load %union.rec*, %union.rec** %osucc1157, align 8
  store %union.rec* %461, %union.rec** @zz_res, align 8
  %462 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11158 = bitcast %union.rec* %462 to %struct.word_type*
  %olist1159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11158, i32 0, i32 0
  %arrayidx1160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1159, i32 0, i64 0
  %opred1161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1160, i32 0, i32 0
  %463 = load %union.rec*, %union.rec** %opred1161, align 8
  %464 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11162 = bitcast %union.rec* %464 to %struct.word_type*
  %olist1163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11162, i32 0, i32 0
  %arrayidx1164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1163, i32 0, i64 0
  %opred1165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1164, i32 0, i32 0
  store %union.rec* %463, %union.rec** %opred1165, align 8
  %465 = load %union.rec*, %union.rec** @zz_res, align 8
  %466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11166 = bitcast %union.rec* %466 to %struct.word_type*
  %olist1167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11166, i32 0, i32 0
  %arrayidx1168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1167, i32 0, i64 0
  %opred1169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1168, i32 0, i32 0
  %467 = load %union.rec*, %union.rec** %opred1169, align 8
  %os11170 = bitcast %union.rec* %467 to %struct.word_type*
  %olist1171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11170, i32 0, i32 0
  %arrayidx1172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1171, i32 0, i64 0
  %osucc1173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1172, i32 0, i32 1
  store %union.rec* %465, %union.rec** %osucc1173, align 8
  %468 = load %union.rec*, %union.rec** @zz_hold, align 8
  %469 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11174 = bitcast %union.rec* %469 to %struct.word_type*
  %olist1175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11174, i32 0, i32 0
  %arrayidx1176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1175, i32 0, i64 0
  %osucc1177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1176, i32 0, i32 1
  store %union.rec* %468, %union.rec** %osucc1177, align 8
  %470 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11178 = bitcast %union.rec* %470 to %struct.word_type*
  %olist1179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11178, i32 0, i32 0
  %arrayidx1180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1179, i32 0, i64 0
  %opred1181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1180, i32 0, i32 0
  store %union.rec* %468, %union.rec** %opred1181, align 8
  %471 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1182

cond.end.1182:                                    ; preds = %cond.false.1153, %cond.true.1152
  %cond1183 = phi %union.rec* [ null, %cond.true.1152 ], [ %471, %cond.false.1153 ]
  %472 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %472, %union.rec** @zz_hold, align 8
  %473 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %473, %union.rec** @zz_hold, align 8
  %474 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11184 = bitcast %union.rec* %474 to %struct.word_type*
  %ou11185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11184, i32 0, i32 1
  %os111186 = bitcast %union.FIRST_UNION* %ou11185 to %struct.anon*
  %otype1187 = getelementptr inbounds %struct.anon, %struct.anon* %os111186, i32 0, i32 0
  %475 = load i8, i8* %otype1187, align 1
  %conv1188 = zext i8 %475 to i32
  %cmp1189 = icmp eq i32 %conv1188, 11
  br i1 %cmp1189, label %cond.true.1199, label %lor.lhs.false.1191

lor.lhs.false.1191:                               ; preds = %cond.end.1182
  %476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11192 = bitcast %union.rec* %476 to %struct.word_type*
  %ou11193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11192, i32 0, i32 1
  %os111194 = bitcast %union.FIRST_UNION* %ou11193 to %struct.anon*
  %otype1195 = getelementptr inbounds %struct.anon, %struct.anon* %os111194, i32 0, i32 0
  %477 = load i8, i8* %otype1195, align 1
  %conv1196 = zext i8 %477 to i32
  %cmp1197 = icmp eq i32 %conv1196, 12
  br i1 %cmp1197, label %cond.true.1199, label %cond.false.1205

cond.true.1199:                                   ; preds = %lor.lhs.false.1191, %cond.end.1182
  %478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11200 = bitcast %union.rec* %478 to %struct.word_type*
  %ou11201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11200, i32 0, i32 1
  %os111202 = bitcast %union.FIRST_UNION* %ou11201 to %struct.anon*
  %orec_size1203 = getelementptr inbounds %struct.anon, %struct.anon* %os111202, i32 0, i32 1
  %479 = load i8, i8* %orec_size1203, align 1
  %conv1204 = zext i8 %479 to i32
  br label %cond.end.1213

cond.false.1205:                                  ; preds = %lor.lhs.false.1191
  %480 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11206 = bitcast %union.rec* %480 to %struct.word_type*
  %ou11207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11206, i32 0, i32 1
  %os111208 = bitcast %union.FIRST_UNION* %ou11207 to %struct.anon*
  %otype1209 = getelementptr inbounds %struct.anon, %struct.anon* %os111208, i32 0, i32 0
  %481 = load i8, i8* %otype1209, align 1
  %idxprom1210 = zext i8 %481 to i64
  %arrayidx1211 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1210
  %482 = load i8, i8* %arrayidx1211, align 1
  %conv1212 = zext i8 %482 to i32
  br label %cond.end.1213

cond.end.1213:                                    ; preds = %cond.false.1205, %cond.true.1199
  %cond1214 = phi i32 [ %conv1204, %cond.true.1199 ], [ %conv1212, %cond.false.1205 ]
  store i32 %cond1214, i32* @zz_size, align 4
  %483 = load i32, i32* @zz_size, align 4
  %idxprom1215 = sext i32 %483 to i64
  %arrayidx1216 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1215
  %484 = load %union.rec*, %union.rec** %arrayidx1216, align 8
  %485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11217 = bitcast %union.rec* %485 to %struct.word_type*
  %olist1218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11217, i32 0, i32 0
  %arrayidx1219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1218, i32 0, i64 0
  %opred1220 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1219, i32 0, i32 0
  store %union.rec* %484, %union.rec** %opred1220, align 8
  %486 = load %union.rec*, %union.rec** @zz_hold, align 8
  %487 = load i32, i32* @zz_size, align 4
  %idxprom1221 = sext i32 %487 to i64
  %arrayidx1222 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1221
  store %union.rec* %486, %union.rec** %arrayidx1222, align 8
  %488 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os11223 = bitcast %union.rec* %488 to %struct.word_type*
  %olist1224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11223, i32 0, i32 0
  %arrayidx1225 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1224, i32 0, i64 1
  %osucc1226 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1225, i32 0, i32 1
  %489 = load %union.rec*, %union.rec** %osucc1226, align 8
  %490 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp1227 = icmp eq %union.rec* %489, %490
  br i1 %cmp1227, label %if.then.1229, label %if.end.1231

if.then.1229:                                     ; preds = %cond.end.1213
  %491 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call1230 = call i32 @DisposeObject(%union.rec* %491)
  br label %if.end.1231

if.end.1231:                                      ; preds = %if.then.1229, %cond.end.1213
  br label %sw.epilog.1244

sw.bb.1232:                                       ; preds = %if.end.805
  br label %sw.epilog.1244

sw.bb.1233:                                       ; preds = %if.end.805
  br label %SUSPEND

sw.bb.1234:                                       ; preds = %if.end.805
  %492 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a = bitcast %union.rec* %492 to %struct.head_type*
  %oopt_components = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a, i32 0, i32 8
  %493 = load %union.rec*, %union.rec** %oopt_components, align 8
  %cmp1235 = icmp ne %union.rec* %493, null
  br i1 %cmp1235, label %if.then.1237, label %if.end.1243

if.then.1237:                                     ; preds = %sw.bb.1234
  %494 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1238 = bitcast %union.rec* %494 to %struct.head_type*
  %oopt_components1239 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1238, i32 0, i32 8
  %495 = load %union.rec*, %union.rec** %oopt_components1239, align 8
  %call1240 = call i32 @DisposeObject(%union.rec* %495)
  %496 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1241 = bitcast %union.rec* %496 to %struct.head_type*
  %oopt_components1242 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1241, i32 0, i32 8
  store %union.rec* null, %union.rec** %oopt_components1242, align 8
  br label %if.end.1243

if.end.1243:                                      ; preds = %if.then.1237, %sw.bb.1234
  br label %REJECT

sw.epilog.1244:                                   ; preds = %if.end.805, %sw.bb.1232, %if.end.1231
  br label %sw.epilog.2196

sw.bb.1245:                                       ; preds = %if.end.369, %if.end.369, %if.end.369, %if.end.369
  store i32 1, i32* %headers_seen, align 4
  br label %sw.epilog.2196

sw.bb.1246:                                       ; preds = %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369, %if.end.369
  %497 = load %union.rec*, %union.rec** %dest, align 8
  %os11247 = bitcast %union.rec* %497 to %struct.word_type*
  %ou21248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11247, i32 0, i32 2
  %os221249 = bitcast %union.SECOND_UNION* %ou21248 to %struct.anon.1*
  %498 = bitcast %struct.anon.1* %os221249 to i32*
  %bf.load1250 = load i32, i32* %498, align 4
  %bf.lshr1251 = lshr i32 %bf.load1250, 29
  %bf.clear1252 = and i32 %bf.lshr1251, 3
  %499 = load %union.rec*, %union.rec** %y, align 8
  %os11253 = bitcast %union.rec* %499 to %struct.word_type*
  %ou21254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11253, i32 0, i32 2
  %os221255 = bitcast %union.SECOND_UNION* %ou21254 to %struct.anon.1*
  %500 = bitcast %struct.anon.1* %os221255 to i32*
  %bf.load1256 = load i32, i32* %500, align 4
  %bf.value1257 = and i32 %bf.clear1252, 3
  %bf.shl1258 = shl i32 %bf.value1257, 29
  %bf.clear1259 = and i32 %bf.load1256, -1610612737
  %bf.set1260 = or i32 %bf.clear1259, %bf.shl1258
  store i32 %bf.set1260, i32* %500, align 4
  %501 = load i32, i32* %dim, align 4
  %cmp1261 = icmp eq i32 %501, 1
  br i1 %cmp1261, label %if.then.1263, label %if.end.1329

if.then.1263:                                     ; preds = %sw.bb.1246
  %502 = load %union.rec*, %union.rec** %link, align 8
  %os11264 = bitcast %union.rec* %502 to %struct.word_type*
  %olist1265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11264, i32 0, i32 0
  %arrayidx1266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1265, i32 0, i64 0
  %osucc1267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1266, i32 0, i32 1
  %503 = load %union.rec*, %union.rec** %osucc1267, align 8
  store %union.rec* %503, %union.rec** %zlink, align 8
  br label %for.cond.1268

for.cond.1268:                                    ; preds = %for.inc.1313, %if.then.1263
  %504 = load %union.rec*, %union.rec** %zlink, align 8
  %505 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp1269 = icmp ne %union.rec* %504, %505
  br i1 %cmp1269, label %for.body.1271, label %for.end.1318

for.body.1271:                                    ; preds = %for.cond.1268
  %506 = load %union.rec*, %union.rec** %zlink, align 8
  %os11272 = bitcast %union.rec* %506 to %struct.word_type*
  %olist1273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11272, i32 0, i32 0
  %arrayidx1274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1273, i32 0, i64 1
  %opred1275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1274, i32 0, i32 0
  %507 = load %union.rec*, %union.rec** %opred1275, align 8
  store %union.rec* %507, %union.rec** %z, align 8
  br label %for.cond.1276

for.cond.1276:                                    ; preds = %for.inc.1285, %for.body.1271
  %508 = load %union.rec*, %union.rec** %z, align 8
  %os11277 = bitcast %union.rec* %508 to %struct.word_type*
  %ou11278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11277, i32 0, i32 1
  %os111279 = bitcast %union.FIRST_UNION* %ou11278 to %struct.anon*
  %otype1280 = getelementptr inbounds %struct.anon, %struct.anon* %os111279, i32 0, i32 0
  %509 = load i8, i8* %otype1280, align 1
  %conv1281 = zext i8 %509 to i32
  %cmp1282 = icmp eq i32 %conv1281, 0
  br i1 %cmp1282, label %for.body.1284, label %for.end.1290

for.body.1284:                                    ; preds = %for.cond.1276
  br label %for.inc.1285

for.inc.1285:                                     ; preds = %for.body.1284
  %510 = load %union.rec*, %union.rec** %z, align 8
  %os11286 = bitcast %union.rec* %510 to %struct.word_type*
  %olist1287 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11286, i32 0, i32 0
  %arrayidx1288 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1287, i32 0, i64 1
  %opred1289 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1288, i32 0, i32 0
  %511 = load %union.rec*, %union.rec** %opred1289, align 8
  store %union.rec* %511, %union.rec** %z, align 8
  br label %for.cond.1276

for.end.1290:                                     ; preds = %for.cond.1276
  %512 = load %union.rec*, %union.rec** %z, align 8
  %os11291 = bitcast %union.rec* %512 to %struct.word_type*
  %ou11292 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11291, i32 0, i32 1
  %os111293 = bitcast %union.FIRST_UNION* %ou11292 to %struct.anon*
  %otype1294 = getelementptr inbounds %struct.anon, %struct.anon* %os111293, i32 0, i32 0
  %513 = load i8, i8* %otype1294, align 1
  %conv1295 = zext i8 %513 to i32
  switch i32 %conv1295, label %sw.default.1311 [
    i32 121, label %sw.bb.1296
    i32 122, label %sw.bb.1296
    i32 1, label %sw.bb.1297
  ]

sw.bb.1296:                                       ; preds = %for.end.1290, %for.end.1290
  %514 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %514, %union.rec** %y, align 8
  br label %SUSPEND

sw.bb.1297:                                       ; preds = %for.end.1290
  %515 = load %union.rec*, %union.rec** %z, align 8
  %os51298 = bitcast %union.rec* %515 to %struct.gapobj_type*
  %ogap1299 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51298, i32 0, i32 3
  %516 = bitcast %struct.GAP* %ogap1299 to i16*
  %bf.load1300 = load i16, i16* %516, align 4
  %bf.lshr1301 = lshr i16 %bf.load1300, 9
  %bf.clear1302 = and i16 %bf.lshr1301, 1
  %bf.cast1303 = zext i16 %bf.clear1302 to i32
  %tobool1304 = icmp ne i32 %bf.cast1303, 0
  br i1 %tobool1304, label %if.end.1310, label %if.then.1305

if.then.1305:                                     ; preds = %sw.bb.1297
  %517 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11306 = bitcast %union.rec* %517 to %struct.word_type*
  %olist1307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11306, i32 0, i32 0
  %arrayidx1308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1307, i32 0, i64 0
  %opred1309 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1308, i32 0, i32 0
  %518 = load %union.rec*, %union.rec** %opred1309, align 8
  store %union.rec* %518, %union.rec** %zlink, align 8
  br label %if.end.1310

if.end.1310:                                      ; preds = %if.then.1305, %sw.bb.1297
  br label %sw.epilog.1312

sw.default.1311:                                  ; preds = %for.end.1290
  br label %sw.epilog.1312

sw.epilog.1312:                                   ; preds = %sw.default.1311, %if.end.1310
  br label %for.inc.1313

for.inc.1313:                                     ; preds = %sw.epilog.1312
  %519 = load %union.rec*, %union.rec** %zlink, align 8
  %os11314 = bitcast %union.rec* %519 to %struct.word_type*
  %olist1315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11314, i32 0, i32 0
  %arrayidx1316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1315, i32 0, i64 0
  %osucc1317 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1316, i32 0, i32 1
  %520 = load %union.rec*, %union.rec** %osucc1317, align 8
  store %union.rec* %520, %union.rec** %zlink, align 8
  br label %for.cond.1268

for.end.1318:                                     ; preds = %for.cond.1268
  %521 = load %union.rec*, %union.rec** %y, align 8
  %os11319 = bitcast %union.rec* %521 to %struct.word_type*
  %ou11320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11319, i32 0, i32 1
  %os111321 = bitcast %union.FIRST_UNION* %ou11320 to %struct.anon*
  %otype1322 = getelementptr inbounds %struct.anon, %struct.anon* %os111321, i32 0, i32 0
  %522 = load i8, i8* %otype1322, align 1
  %conv1323 = zext i8 %522 to i32
  %cmp1324 = icmp eq i32 %conv1323, 18
  br i1 %cmp1324, label %if.then.1326, label %if.end.1328

if.then.1326:                                     ; preds = %for.end.1318
  %523 = load %union.rec*, %union.rec** %y, align 8
  %call1327 = call i32 @VerticalHyphenate(%union.rec* %523)
  br label %if.end.1328

if.end.1328:                                      ; preds = %if.then.1326, %for.end.1318
  br label %if.end.1329

if.end.1329:                                      ; preds = %if.end.1328, %sw.bb.1246
  %524 = load i32, i32* %target_is_internal, align 4
  %tobool1330 = icmp ne i32 %524, 0
  br i1 %tobool1330, label %if.then.1331, label %if.end.2102

if.then.1331:                                     ; preds = %if.end.1329
  %525 = load %union.rec*, %union.rec** %dest_encl, align 8
  %cmp1332 = icmp eq %union.rec* %525, null
  br i1 %cmp1332, label %if.then.1334, label %if.end.1503

if.then.1334:                                     ; preds = %if.then.1331
  %526 = load i32, i32* %dim, align 4
  %sub = sub nsw i32 1, %526
  %cmp1335 = icmp eq i32 %sub, 0
  br i1 %cmp1335, label %cond.true.1337, label %cond.false.1342

cond.true.1337:                                   ; preds = %if.then.1334
  %527 = load %union.rec*, %union.rec** %dest, align 8
  %os11338 = bitcast %union.rec* %527 to %struct.word_type*
  %olist1339 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11338, i32 0, i32 0
  %arrayidx1340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1339, i32 0, i64 1
  %osucc1341 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1340, i32 0, i32 1
  %528 = load %union.rec*, %union.rec** %osucc1341, align 8
  br label %cond.end.1347

cond.false.1342:                                  ; preds = %if.then.1334
  %529 = load %union.rec*, %union.rec** %dest, align 8
  %os11343 = bitcast %union.rec* %529 to %struct.word_type*
  %olist1344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11343, i32 0, i32 0
  %arrayidx1345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1344, i32 0, i64 1
  %opred1346 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1345, i32 0, i32 0
  %530 = load %union.rec*, %union.rec** %opred1346, align 8
  br label %cond.end.1347

cond.end.1347:                                    ; preds = %cond.false.1342, %cond.true.1337
  %cond1348 = phi %union.rec* [ %528, %cond.true.1337 ], [ %530, %cond.false.1342 ]
  %531 = load i32, i32* %dim, align 4
  %cmp1349 = icmp eq i32 %531, 0
  br i1 %cmp1349, label %cond.true.1351, label %cond.false.1356

cond.true.1351:                                   ; preds = %cond.end.1347
  %532 = load %union.rec*, %union.rec** %dest, align 8
  %os11352 = bitcast %union.rec* %532 to %struct.word_type*
  %olist1353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11352, i32 0, i32 0
  %arrayidx1354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1353, i32 0, i64 1
  %osucc1355 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1354, i32 0, i32 1
  %533 = load %union.rec*, %union.rec** %osucc1355, align 8
  br label %cond.end.1362

cond.false.1356:                                  ; preds = %cond.end.1347
  %534 = load %union.rec*, %union.rec** %dest, align 8
  %os11358 = bitcast %union.rec* %534 to %struct.word_type*
  %olist1359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11358, i32 0, i32 0
  %arrayidx1360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1359, i32 0, i64 1
  %opred1361 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1360, i32 0, i32 0
  %535 = load %union.rec*, %union.rec** %opred1361, align 8
  br label %cond.end.1362

cond.end.1362:                                    ; preds = %cond.false.1356, %cond.true.1351
  %cond1363 = phi %union.rec* [ %533, %cond.true.1351 ], [ %535, %cond.false.1356 ]
  %cmp1364 = icmp eq %union.rec* %cond1348, %cond1363
  br i1 %cmp1364, label %if.end.1368, label %if.then.1366

if.then.1366:                                     ; preds = %cond.end.1362
  %536 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1367 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %536, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.1368

if.end.1368:                                      ; preds = %if.then.1366, %cond.end.1362
  %537 = load %union.rec*, %union.rec** %dest, align 8
  %os11369 = bitcast %union.rec* %537 to %struct.word_type*
  %olist1370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11369, i32 0, i32 0
  %arrayidx1371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1370, i32 0, i64 1
  %osucc1372 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1371, i32 0, i32 1
  %538 = load %union.rec*, %union.rec** %osucc1372, align 8
  %os11373 = bitcast %union.rec* %538 to %struct.word_type*
  %olist1374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11373, i32 0, i32 0
  %arrayidx1375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1374, i32 0, i64 0
  %opred1376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1375, i32 0, i32 0
  %539 = load %union.rec*, %union.rec** %opred1376, align 8
  store %union.rec* %539, %union.rec** %dest_encl, align 8
  br label %for.cond.1377

for.cond.1377:                                    ; preds = %for.inc.1386, %if.end.1368
  %540 = load %union.rec*, %union.rec** %dest_encl, align 8
  %os11378 = bitcast %union.rec* %540 to %struct.word_type*
  %ou11379 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11378, i32 0, i32 1
  %os111380 = bitcast %union.FIRST_UNION* %ou11379 to %struct.anon*
  %otype1381 = getelementptr inbounds %struct.anon, %struct.anon* %os111380, i32 0, i32 0
  %541 = load i8, i8* %otype1381, align 1
  %conv1382 = zext i8 %541 to i32
  %cmp1383 = icmp eq i32 %conv1382, 0
  br i1 %cmp1383, label %for.body.1385, label %for.end.1391

for.body.1385:                                    ; preds = %for.cond.1377
  br label %for.inc.1386

for.inc.1386:                                     ; preds = %for.body.1385
  %542 = load %union.rec*, %union.rec** %dest_encl, align 8
  %os11387 = bitcast %union.rec* %542 to %struct.word_type*
  %olist1388 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11387, i32 0, i32 0
  %arrayidx1389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1388, i32 0, i64 0
  %opred1390 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1389, i32 0, i32 0
  %543 = load %union.rec*, %union.rec** %opred1390, align 8
  store %union.rec* %543, %union.rec** %dest_encl, align 8
  br label %for.cond.1377

for.end.1391:                                     ; preds = %for.cond.1377
  %544 = load i32, i32* %dim, align 4
  %cmp1392 = icmp eq i32 %544, 1
  br i1 %cmp1392, label %land.lhs.true.1394, label %lor.lhs.false.1402

land.lhs.true.1394:                               ; preds = %for.end.1391
  %545 = load %union.rec*, %union.rec** %dest_encl, align 8
  %os11395 = bitcast %union.rec* %545 to %struct.word_type*
  %ou11396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11395, i32 0, i32 1
  %os111397 = bitcast %union.FIRST_UNION* %ou11396 to %struct.anon*
  %otype1398 = getelementptr inbounds %struct.anon, %struct.anon* %os111397, i32 0, i32 0
  %546 = load i8, i8* %otype1398, align 1
  %conv1399 = zext i8 %546 to i32
  %cmp1400 = icmp eq i32 %conv1399, 19
  br i1 %cmp1400, label %if.end.1415, label %lor.lhs.false.1402

lor.lhs.false.1402:                               ; preds = %land.lhs.true.1394, %for.end.1391
  %547 = load i32, i32* %dim, align 4
  %cmp1403 = icmp eq i32 %547, 0
  br i1 %cmp1403, label %land.lhs.true.1405, label %if.then.1413

land.lhs.true.1405:                               ; preds = %lor.lhs.false.1402
  %548 = load %union.rec*, %union.rec** %dest_encl, align 8
  %os11406 = bitcast %union.rec* %548 to %struct.word_type*
  %ou11407 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11406, i32 0, i32 1
  %os111408 = bitcast %union.FIRST_UNION* %ou11407 to %struct.anon*
  %otype1409 = getelementptr inbounds %struct.anon, %struct.anon* %os111408, i32 0, i32 0
  %549 = load i8, i8* %otype1409, align 1
  %conv1410 = zext i8 %549 to i32
  %cmp1411 = icmp eq i32 %conv1410, 17
  br i1 %cmp1411, label %if.end.1415, label %if.then.1413

if.then.1413:                                     ; preds = %land.lhs.true.1405, %lor.lhs.false.1402
  %550 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1414 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %550, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.1415

if.end.1415:                                      ; preds = %if.then.1413, %land.lhs.true.1405, %land.lhs.true.1394
  %551 = load %union.rec*, %union.rec** %dest, align 8
  %os11416 = bitcast %union.rec* %551 to %struct.word_type*
  %olist1417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11416, i32 0, i32 0
  %arrayidx1418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1417, i32 0, i64 1
  %osucc1419 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1418, i32 0, i32 1
  %552 = load %union.rec*, %union.rec** %osucc1419, align 8
  call void @SetNeighbours(%union.rec* %552, i32 0, %union.rec** %prec_gap, %union.rec** %prec_def, %union.rec** %succ_gap, %union.rec** %succ_def, i32* %dest_side)
  %553 = load %union.rec*, %union.rec** %prec_gap, align 8
  %cmp1420 = icmp ne %union.rec* %553, null
  br i1 %cmp1420, label %if.end.1440, label %lor.lhs.false.1422

lor.lhs.false.1422:                               ; preds = %if.end.1415
  %554 = load %union.rec*, %union.rec** %y, align 8
  %os11423 = bitcast %union.rec* %554 to %struct.word_type*
  %ou11424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11423, i32 0, i32 1
  %os111425 = bitcast %union.FIRST_UNION* %ou11424 to %struct.anon*
  %otype1426 = getelementptr inbounds %struct.anon, %struct.anon* %os111425, i32 0, i32 0
  %555 = load i8, i8* %otype1426, align 1
  %conv1427 = zext i8 %555 to i32
  %cmp1428 = icmp sge i32 %conv1427, 2
  br i1 %cmp1428, label %land.lhs.true.1430, label %if.then.1438

land.lhs.true.1430:                               ; preds = %lor.lhs.false.1422
  %556 = load %union.rec*, %union.rec** %y, align 8
  %os11431 = bitcast %union.rec* %556 to %struct.word_type*
  %ou11432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11431, i32 0, i32 1
  %os111433 = bitcast %union.FIRST_UNION* %ou11432 to %struct.anon*
  %otype1434 = getelementptr inbounds %struct.anon, %struct.anon* %os111433, i32 0, i32 0
  %557 = load i8, i8* %otype1434, align 1
  %conv1435 = zext i8 %557 to i32
  %cmp1436 = icmp sle i32 %conv1435, 8
  br i1 %cmp1436, label %if.end.1440, label %if.then.1438

if.then.1438:                                     ; preds = %land.lhs.true.1430, %lor.lhs.false.1422
  %558 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1439 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %558, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.1440

if.end.1440:                                      ; preds = %if.then.1438, %land.lhs.true.1430, %if.end.1415
  %559 = load %union.rec*, %union.rec** %succ_gap, align 8
  %cmp1441 = icmp eq %union.rec* %559, null
  br i1 %cmp1441, label %if.end.1445, label %if.then.1443

if.then.1443:                                     ; preds = %if.end.1440
  %560 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1444 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %560, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.1445

if.end.1445:                                      ; preds = %if.then.1443, %if.end.1440
  %561 = load i32, i32* %dest_side, align 4
  %cmp1446 = icmp eq i32 %561, 153
  br i1 %cmp1446, label %if.end.1466, label %lor.lhs.false.1448

lor.lhs.false.1448:                               ; preds = %if.end.1445
  %562 = load %union.rec*, %union.rec** %y, align 8
  %os11449 = bitcast %union.rec* %562 to %struct.word_type*
  %ou11450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11449, i32 0, i32 1
  %os111451 = bitcast %union.FIRST_UNION* %ou11450 to %struct.anon*
  %otype1452 = getelementptr inbounds %struct.anon, %struct.anon* %os111451, i32 0, i32 0
  %563 = load i8, i8* %otype1452, align 1
  %conv1453 = zext i8 %563 to i32
  %cmp1454 = icmp sge i32 %conv1453, 2
  br i1 %cmp1454, label %land.lhs.true.1456, label %if.then.1464

land.lhs.true.1456:                               ; preds = %lor.lhs.false.1448
  %564 = load %union.rec*, %union.rec** %y, align 8
  %os11457 = bitcast %union.rec* %564 to %struct.word_type*
  %ou11458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11457, i32 0, i32 1
  %os111459 = bitcast %union.FIRST_UNION* %ou11458 to %struct.anon*
  %otype1460 = getelementptr inbounds %struct.anon, %struct.anon* %os111459, i32 0, i32 0
  %565 = load i8, i8* %otype1460, align 1
  %conv1461 = zext i8 %565 to i32
  %cmp1462 = icmp sle i32 %conv1461, 8
  br i1 %cmp1462, label %if.end.1466, label %if.then.1464

if.then.1464:                                     ; preds = %land.lhs.true.1456, %lor.lhs.false.1448
  %566 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1465 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %566, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.1466

if.end.1466:                                      ; preds = %if.then.1464, %land.lhs.true.1456, %if.end.1445
  %567 = load i32, i32* %dim, align 4
  %idxprom1467 = sext i32 %567 to i64
  %568 = load %union.rec*, %union.rec** %dest_encl, align 8
  %os11468 = bitcast %union.rec* %568 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11468, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx1469 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 %idxprom1467
  %569 = load i32, i32* %arrayidx1469, align 4
  store i32 %569, i32* %dest_back, align 4
  %570 = load i32, i32* %dim, align 4
  %idxprom1470 = sext i32 %570 to i64
  %571 = load %union.rec*, %union.rec** %dest_encl, align 8
  %os11471 = bitcast %union.rec* %571 to %struct.word_type*
  %ou31472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11471, i32 0, i32 3
  %os311473 = bitcast %union.THIRD_UNION* %ou31472 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311473, i32 0, i32 1
  %arrayidx1474 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 %idxprom1470
  %572 = load i32, i32* %arrayidx1474, align 4
  store i32 %572, i32* %dest_fwd, align 4
  %573 = load i32, i32* %dim, align 4
  %sub1475 = sub nsw i32 1, %573
  %idxprom1476 = sext i32 %sub1475 to i64
  %574 = load %union.rec*, %union.rec** %dest_encl, align 8
  %os11477 = bitcast %union.rec* %574 to %struct.word_type*
  %ou31478 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11477, i32 0, i32 3
  %os311479 = bitcast %union.THIRD_UNION* %ou31478 to %struct.anon.6*
  %oback1480 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311479, i32 0, i32 0
  %arrayidx1481 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1480, i32 0, i64 %idxprom1476
  %575 = load i32, i32* %arrayidx1481, align 4
  store i32 %575, i32* %perp_back, align 4
  %576 = load i32, i32* %dim, align 4
  %sub1482 = sub nsw i32 1, %576
  %idxprom1483 = sext i32 %sub1482 to i64
  %577 = load %union.rec*, %union.rec** %dest_encl, align 8
  %os11484 = bitcast %union.rec* %577 to %struct.word_type*
  %ou31485 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11484, i32 0, i32 3
  %os311486 = bitcast %union.THIRD_UNION* %ou31485 to %struct.anon.6*
  %ofwd1487 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311486, i32 0, i32 1
  %arrayidx1488 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1487, i32 0, i64 %idxprom1483
  %578 = load i32, i32* %arrayidx1488, align 4
  store i32 %578, i32* %perp_fwd, align 4
  %579 = load %union.rec*, %union.rec** %dest_encl, align 8
  %580 = load i32, i32* %dim, align 4
  call void @Constrained(%union.rec* %579, %struct.CONSTRAINT* %dest_par_constr, i32 %580, %union.rec** %why)
  %581 = load %union.rec*, %union.rec** %dest_encl, align 8
  %582 = load i32, i32* %dim, align 4
  %sub1489 = sub nsw i32 1, %582
  call void @Constrained(%union.rec* %581, %struct.CONSTRAINT* %dest_perp_constr, i32 %sub1489, %union.rec** %why)
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 0
  %583 = load i32, i32* %obc, align 4
  %cmp1490 = icmp ne i32 %583, 8388607
  br i1 %cmp1490, label %cond.true.1498, label %lor.lhs.false.1492

lor.lhs.false.1492:                               ; preds = %if.end.1466
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 1
  %584 = load i32, i32* %obfc, align 4
  %cmp1493 = icmp ne i32 %584, 8388607
  br i1 %cmp1493, label %cond.true.1498, label %lor.lhs.false.1495

lor.lhs.false.1495:                               ; preds = %lor.lhs.false.1492
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 2
  %585 = load i32, i32* %ofc, align 4
  %cmp1496 = icmp ne i32 %585, 8388607
  br i1 %cmp1496, label %cond.true.1498, label %cond.false.1500

cond.true.1498:                                   ; preds = %lor.lhs.false.1495, %lor.lhs.false.1492, %if.end.1466
  %obfc1499 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 1
  %586 = load i32, i32* %obfc1499, align 4
  br label %cond.end.1501

cond.false.1500:                                  ; preds = %lor.lhs.false.1495
  br label %cond.end.1501

cond.end.1501:                                    ; preds = %cond.false.1500, %cond.true.1498
  %cond1502 = phi i32 [ %586, %cond.true.1498 ], [ 0, %cond.false.1500 ]
  store i32 %cond1502, i32* %frame_size, align 4
  br label %if.end.1503

if.end.1503:                                      ; preds = %cond.end.1501, %if.then.1331
  %587 = load %union.rec*, %union.rec** %y, align 8
  %os11504 = bitcast %union.rec* %587 to %struct.word_type*
  %ou11505 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11504, i32 0, i32 1
  %os111506 = bitcast %union.FIRST_UNION* %ou11505 to %struct.anon*
  %otype1507 = getelementptr inbounds %struct.anon, %struct.anon* %os111506, i32 0, i32 0
  %588 = load i8, i8* %otype1507, align 1
  %conv1508 = zext i8 %588 to i32
  %cmp1509 = icmp sge i32 %conv1508, 2
  br i1 %cmp1509, label %land.lhs.true.1511, label %if.then.1519

land.lhs.true.1511:                               ; preds = %if.end.1503
  %589 = load %union.rec*, %union.rec** %y, align 8
  %os11512 = bitcast %union.rec* %589 to %struct.word_type*
  %ou11513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11512, i32 0, i32 1
  %os111514 = bitcast %union.FIRST_UNION* %ou11513 to %struct.anon*
  %otype1515 = getelementptr inbounds %struct.anon, %struct.anon* %os111514, i32 0, i32 0
  %590 = load i8, i8* %otype1515, align 1
  %conv1516 = zext i8 %590 to i32
  %cmp1517 = icmp sle i32 %conv1516, 8
  br i1 %cmp1517, label %if.end.2101, label %if.then.1519

if.then.1519:                                     ; preds = %land.lhs.true.1511, %if.end.1503
  %591 = load i32, i32* %dest_fwd, align 4
  %592 = load i32, i32* %dim, align 4
  %idxprom1520 = sext i32 %592 to i64
  %593 = load %union.rec*, %union.rec** %y, align 8
  %os11521 = bitcast %union.rec* %593 to %struct.word_type*
  %ou31522 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11521, i32 0, i32 3
  %os311523 = bitcast %union.THIRD_UNION* %ou31522 to %struct.anon.6*
  %ofwd1524 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311523, i32 0, i32 1
  %arrayidx1525 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1524, i32 0, i64 %idxprom1520
  %594 = load i32, i32* %arrayidx1525, align 4
  %add = add nsw i32 %591, %594
  %595 = load i32, i32* %dim, align 4
  %idxprom1526 = sext i32 %595 to i64
  %596 = load %union.rec*, %union.rec** %prec_def, align 8
  %os11527 = bitcast %union.rec* %596 to %struct.word_type*
  %ou31528 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11527, i32 0, i32 3
  %os311529 = bitcast %union.THIRD_UNION* %ou31528 to %struct.anon.6*
  %ofwd1530 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311529, i32 0, i32 1
  %arrayidx1531 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1530, i32 0, i64 %idxprom1526
  %597 = load i32, i32* %arrayidx1531, align 4
  %sub1532 = sub nsw i32 %add, %597
  %598 = load i32, i32* %dim, align 4
  %idxprom1533 = sext i32 %598 to i64
  %599 = load %union.rec*, %union.rec** %prec_def, align 8
  %os11534 = bitcast %union.rec* %599 to %struct.word_type*
  %ou31535 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11534, i32 0, i32 3
  %os311536 = bitcast %union.THIRD_UNION* %ou31535 to %struct.anon.6*
  %ofwd1537 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311536, i32 0, i32 1
  %arrayidx1538 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1537, i32 0, i64 %idxprom1533
  %600 = load i32, i32* %arrayidx1538, align 4
  %601 = load i32, i32* %dim, align 4
  %idxprom1539 = sext i32 %601 to i64
  %602 = load %union.rec*, %union.rec** %y, align 8
  %os11540 = bitcast %union.rec* %602 to %struct.word_type*
  %ou31541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11540, i32 0, i32 3
  %os311542 = bitcast %union.THIRD_UNION* %ou31541 to %struct.anon.6*
  %oback1543 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311542, i32 0, i32 0
  %arrayidx1544 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1543, i32 0, i64 %idxprom1539
  %603 = load i32, i32* %arrayidx1544, align 4
  %604 = load i32, i32* %dim, align 4
  %idxprom1545 = sext i32 %604 to i64
  %605 = load %union.rec*, %union.rec** %y, align 8
  %os11546 = bitcast %union.rec* %605 to %struct.word_type*
  %ou31547 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11546, i32 0, i32 3
  %os311548 = bitcast %union.THIRD_UNION* %ou31547 to %struct.anon.6*
  %ofwd1549 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311548, i32 0, i32 1
  %arrayidx1550 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1549, i32 0, i64 %idxprom1545
  %606 = load i32, i32* %arrayidx1550, align 4
  %607 = load %union.rec*, %union.rec** %prec_gap, align 8
  %os51551 = bitcast %union.rec* %607 to %struct.gapobj_type*
  %ogap1552 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51551, i32 0, i32 3
  %608 = load i32, i32* %frame_size, align 4
  %609 = load i32, i32* %dest_back, align 4
  %610 = load i32, i32* %dest_fwd, align 4
  %add1553 = add nsw i32 %609, %610
  %611 = load i32, i32* %dim, align 4
  %idxprom1554 = sext i32 %611 to i64
  %612 = load %union.rec*, %union.rec** %prec_def, align 8
  %os11555 = bitcast %union.rec* %612 to %struct.word_type*
  %ou31556 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11555, i32 0, i32 3
  %os311557 = bitcast %union.THIRD_UNION* %ou31556 to %struct.anon.6*
  %ofwd1558 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311557, i32 0, i32 1
  %arrayidx1559 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1558, i32 0, i64 %idxprom1554
  %613 = load i32, i32* %arrayidx1559, align 4
  %sub1560 = sub nsw i32 %add1553, %613
  %call1561 = call i32 @ActualGap(i32 %600, i32 %603, i32 %606, %struct.GAP* %ogap1552, i32 %608, i32 %sub1560)
  %add1562 = add nsw i32 %sub1532, %call1561
  store i32 %add1562, i32* %f, align 4
  %614 = load %union.rec*, %union.rec** %prec_gap, align 8
  %os51563 = bitcast %union.rec* %614 to %struct.gapobj_type*
  %ogap1564 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51563, i32 0, i32 3
  %615 = bitcast %struct.GAP* %ogap1564 to i16*
  %bf.load1565 = load i16, i16* %615, align 4
  %bf.lshr1566 = lshr i16 %bf.load1565, 10
  %bf.clear1567 = and i16 %bf.lshr1566, 7
  %bf.cast1568 = zext i16 %bf.clear1567 to i32
  %cmp1569 = icmp eq i32 %bf.cast1568, 2
  br i1 %cmp1569, label %land.lhs.true.1571, label %lor.lhs.false.1577

land.lhs.true.1571:                               ; preds = %if.then.1519
  %616 = load %union.rec*, %union.rec** %prec_gap, align 8
  %os51572 = bitcast %union.rec* %616 to %struct.gapobj_type*
  %ogap1573 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os51572, i32 0, i32 3
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap1573, i32 0, i32 1
  %617 = load i16, i16* %owidth, align 2
  %conv1574 = sext i16 %617 to i32
  %cmp1575 = icmp sgt i32 %conv1574, 4096
  br i1 %cmp1575, label %if.then.1599, label %lor.lhs.false.1577

lor.lhs.false.1577:                               ; preds = %land.lhs.true.1571, %if.then.1519
  %618 = load i32, i32* %dest_back, align 4
  %obc1578 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 0
  %619 = load i32, i32* %obc1578, align 4
  %cmp1579 = icmp sle i32 %618, %619
  br i1 %cmp1579, label %land.lhs.true.1581, label %if.then.1599

land.lhs.true.1581:                               ; preds = %lor.lhs.false.1577
  %620 = load i32, i32* %dest_back, align 4
  %621 = load i32, i32* %f, align 4
  %add1582 = add nsw i32 %620, %621
  %obfc1583 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 1
  %622 = load i32, i32* %obfc1583, align 4
  %cmp1584 = icmp sle i32 %add1582, %622
  br i1 %cmp1584, label %land.lhs.true.1586, label %if.then.1599

land.lhs.true.1586:                               ; preds = %land.lhs.true.1581
  %623 = load i32, i32* %f, align 4
  %ofc1587 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 2
  %624 = load i32, i32* %ofc1587, align 4
  %cmp1588 = icmp sle i32 %623, %624
  br i1 %cmp1588, label %lor.lhs.false.1590, label %if.then.1599

lor.lhs.false.1590:                               ; preds = %land.lhs.true.1586
  %625 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1591 = bitcast %union.rec* %625 to %struct.head_type*
  %oopt_components1592 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1591, i32 0, i32 8
  %626 = load %union.rec*, %union.rec** %oopt_components1592, align 8
  %cmp1593 = icmp ne %union.rec* %626, null
  br i1 %cmp1593, label %land.lhs.true.1595, label %if.end.1972

land.lhs.true.1595:                               ; preds = %lor.lhs.false.1590
  %627 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1596 = bitcast %union.rec* %627 to %struct.head_type*
  %oopt_comps_permitted = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1596, i32 0, i32 15
  %628 = load i32, i32* %oopt_comps_permitted, align 4
  %cmp1597 = icmp sle i32 %628, 0
  br i1 %cmp1597, label %if.then.1599, label %if.end.1972

if.then.1599:                                     ; preds = %land.lhs.true.1595, %land.lhs.true.1586, %land.lhs.true.1581, %lor.lhs.false.1577, %land.lhs.true.1571
  %629 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1600 = bitcast %union.rec* %629 to %struct.head_type*
  %oopt_components1601 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1600, i32 0, i32 8
  %630 = load %union.rec*, %union.rec** %oopt_components1601, align 8
  %cmp1602 = icmp ne %union.rec* %630, null
  br i1 %cmp1602, label %if.then.1604, label %if.end.1971

if.then.1604:                                     ; preds = %if.then.1599
  %631 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 26), align 1
  %conv1607 = zext i8 %631 to i32
  store i32 %conv1607, i32* @zz_size, align 4
  %conv1608 = sext i32 %conv1607 to i64
  %cmp1609 = icmp uge i64 %conv1608, 265
  br i1 %cmp1609, label %if.then.1611, label %if.else.1613

if.then.1611:                                     ; preds = %if.then.1604
  %632 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1612 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %632)
  br label %if.end.1630

if.else.1613:                                     ; preds = %if.then.1604
  %633 = load i32, i32* @zz_size, align 4
  %idxprom1614 = sext i32 %633 to i64
  %arrayidx1615 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1614
  %634 = load %union.rec*, %union.rec** %arrayidx1615, align 8
  %cmp1616 = icmp eq %union.rec* %634, null
  br i1 %cmp1616, label %if.then.1618, label %if.else.1620

if.then.1618:                                     ; preds = %if.else.1613
  %635 = load i32, i32* @zz_size, align 4
  %636 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1619 = call %union.rec* @GetMemory(i32 %635, %struct.FILE_POS* %636)
  store %union.rec* %call1619, %union.rec** @zz_hold, align 8
  br label %if.end.1629

if.else.1620:                                     ; preds = %if.else.1613
  %637 = load i32, i32* @zz_size, align 4
  %idxprom1621 = sext i32 %637 to i64
  %arrayidx1622 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1621
  %638 = load %union.rec*, %union.rec** %arrayidx1622, align 8
  store %union.rec* %638, %union.rec** @zz_hold, align 8
  store %union.rec* %638, %union.rec** @zz_hold, align 8
  %639 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11623 = bitcast %union.rec* %639 to %struct.word_type*
  %olist1624 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11623, i32 0, i32 0
  %arrayidx1625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1624, i32 0, i64 0
  %opred1626 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1625, i32 0, i32 0
  %640 = load %union.rec*, %union.rec** %opred1626, align 8
  %641 = load i32, i32* @zz_size, align 4
  %idxprom1627 = sext i32 %641 to i64
  %arrayidx1628 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1627
  store %union.rec* %640, %union.rec** %arrayidx1628, align 8
  br label %if.end.1629

if.end.1629:                                      ; preds = %if.else.1620, %if.then.1618
  br label %if.end.1630

if.end.1630:                                      ; preds = %if.end.1629, %if.then.1611
  %642 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11631 = bitcast %union.rec* %642 to %struct.word_type*
  %ou11632 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11631, i32 0, i32 1
  %os111633 = bitcast %union.FIRST_UNION* %ou11632 to %struct.anon*
  %otype1634 = getelementptr inbounds %struct.anon, %struct.anon* %os111633, i32 0, i32 0
  store i8 26, i8* %otype1634, align 1
  %643 = load %union.rec*, %union.rec** @zz_hold, align 8
  %644 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11635 = bitcast %union.rec* %644 to %struct.word_type*
  %olist1636 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11635, i32 0, i32 0
  %arrayidx1637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1636, i32 0, i64 1
  %osucc1638 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1637, i32 0, i32 1
  store %union.rec* %643, %union.rec** %osucc1638, align 8
  %645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11639 = bitcast %union.rec* %645 to %struct.word_type*
  %olist1640 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11639, i32 0, i32 0
  %arrayidx1641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1640, i32 0, i64 1
  %opred1642 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1641, i32 0, i32 0
  store %union.rec* %643, %union.rec** %opred1642, align 8
  %646 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11643 = bitcast %union.rec* %646 to %struct.word_type*
  %olist1644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11643, i32 0, i32 0
  %arrayidx1645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1644, i32 0, i64 0
  %osucc1646 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1645, i32 0, i32 1
  store %union.rec* %643, %union.rec** %osucc1646, align 8
  %647 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11647 = bitcast %union.rec* %647 to %struct.word_type*
  %olist1648 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11647, i32 0, i32 0
  %arrayidx1649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1648, i32 0, i64 0
  %opred1650 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1649, i32 0, i32 0
  store %union.rec* %643, %union.rec** %opred1650, align 8
  store %union.rec* %643, %union.rec** %z1606, align 8
  %obc1651 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 0
  %648 = load i32, i32* %obc1651, align 4
  %649 = load %union.rec*, %union.rec** %z1606, align 8
  %os21652 = bitcast %union.rec* %649 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21652, i32 0, i32 4
  %oconstraint = bitcast %union.FOURTH_UNION* %ou4 to %struct.CONSTRAINT*
  %obc1653 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint, i32 0, i32 0
  store i32 %648, i32* %obc1653, align 4
  %obfc1654 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 1
  %650 = load i32, i32* %obfc1654, align 4
  %651 = load %union.rec*, %union.rec** %z1606, align 8
  %os21655 = bitcast %union.rec* %651 to %struct.closure_type*
  %ou41656 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21655, i32 0, i32 4
  %oconstraint1657 = bitcast %union.FOURTH_UNION* %ou41656 to %struct.CONSTRAINT*
  %obfc1658 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1657, i32 0, i32 1
  store i32 %650, i32* %obfc1658, align 4
  %ofc1659 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 2
  %652 = load i32, i32* %ofc1659, align 4
  %653 = load %union.rec*, %union.rec** %z1606, align 8
  %os21660 = bitcast %union.rec* %653 to %struct.closure_type*
  %ou41661 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21660, i32 0, i32 4
  %oconstraint1662 = bitcast %union.FOURTH_UNION* %ou41661 to %struct.CONSTRAINT*
  %ofc1663 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1662, i32 0, i32 2
  store i32 %652, i32* %ofc1663, align 4
  %654 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1664 = zext i8 %654 to i32
  store i32 %conv1664, i32* @zz_size, align 4
  %conv1665 = sext i32 %conv1664 to i64
  %cmp1666 = icmp uge i64 %conv1665, 265
  br i1 %cmp1666, label %if.then.1668, label %if.else.1670

if.then.1668:                                     ; preds = %if.end.1630
  %655 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1669 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %655)
  br label %if.end.1687

if.else.1670:                                     ; preds = %if.end.1630
  %656 = load i32, i32* @zz_size, align 4
  %idxprom1671 = sext i32 %656 to i64
  %arrayidx1672 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1671
  %657 = load %union.rec*, %union.rec** %arrayidx1672, align 8
  %cmp1673 = icmp eq %union.rec* %657, null
  br i1 %cmp1673, label %if.then.1675, label %if.else.1677

if.then.1675:                                     ; preds = %if.else.1670
  %658 = load i32, i32* @zz_size, align 4
  %659 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1676 = call %union.rec* @GetMemory(i32 %658, %struct.FILE_POS* %659)
  store %union.rec* %call1676, %union.rec** @zz_hold, align 8
  br label %if.end.1686

if.else.1677:                                     ; preds = %if.else.1670
  %660 = load i32, i32* @zz_size, align 4
  %idxprom1678 = sext i32 %660 to i64
  %arrayidx1679 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1678
  %661 = load %union.rec*, %union.rec** %arrayidx1679, align 8
  store %union.rec* %661, %union.rec** @zz_hold, align 8
  store %union.rec* %661, %union.rec** @zz_hold, align 8
  %662 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11680 = bitcast %union.rec* %662 to %struct.word_type*
  %olist1681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11680, i32 0, i32 0
  %arrayidx1682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1681, i32 0, i64 0
  %opred1683 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1682, i32 0, i32 0
  %663 = load %union.rec*, %union.rec** %opred1683, align 8
  %664 = load i32, i32* @zz_size, align 4
  %idxprom1684 = sext i32 %664 to i64
  %arrayidx1685 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1684
  store %union.rec* %663, %union.rec** %arrayidx1685, align 8
  br label %if.end.1686

if.end.1686:                                      ; preds = %if.else.1677, %if.then.1675
  br label %if.end.1687

if.end.1687:                                      ; preds = %if.end.1686, %if.then.1668
  %665 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11688 = bitcast %union.rec* %665 to %struct.word_type*
  %ou11689 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11688, i32 0, i32 1
  %os111690 = bitcast %union.FIRST_UNION* %ou11689 to %struct.anon*
  %otype1691 = getelementptr inbounds %struct.anon, %struct.anon* %os111690, i32 0, i32 0
  store i8 0, i8* %otype1691, align 1
  %666 = load %union.rec*, %union.rec** @zz_hold, align 8
  %667 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11692 = bitcast %union.rec* %667 to %struct.word_type*
  %olist1693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11692, i32 0, i32 0
  %arrayidx1694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1693, i32 0, i64 1
  %osucc1695 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1694, i32 0, i32 1
  store %union.rec* %666, %union.rec** %osucc1695, align 8
  %668 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11696 = bitcast %union.rec* %668 to %struct.word_type*
  %olist1697 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11696, i32 0, i32 0
  %arrayidx1698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1697, i32 0, i64 1
  %opred1699 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1698, i32 0, i32 0
  store %union.rec* %666, %union.rec** %opred1699, align 8
  %669 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11700 = bitcast %union.rec* %669 to %struct.word_type*
  %olist1701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11700, i32 0, i32 0
  %arrayidx1702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1701, i32 0, i64 0
  %osucc1703 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1702, i32 0, i32 1
  store %union.rec* %666, %union.rec** %osucc1703, align 8
  %670 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11704 = bitcast %union.rec* %670 to %struct.word_type*
  %olist1705 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11704, i32 0, i32 0
  %arrayidx1706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1705, i32 0, i64 0
  %opred1707 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1706, i32 0, i32 0
  store %union.rec* %666, %union.rec** %opred1707, align 8
  store %union.rec* %666, %union.rec** @xx_link, align 8
  %671 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %671, %union.rec** @zz_res, align 8
  %672 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1708 = bitcast %union.rec* %672 to %struct.head_type*
  %oopt_constraints = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1708, i32 0, i32 9
  %673 = load %union.rec*, %union.rec** %oopt_constraints, align 8
  store %union.rec* %673, %union.rec** @zz_hold, align 8
  %674 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1709 = icmp eq %union.rec* %674, null
  br i1 %cmp1709, label %cond.true.1711, label %cond.false.1712

cond.true.1711:                                   ; preds = %if.end.1687
  %675 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1747

cond.false.1712:                                  ; preds = %if.end.1687
  %676 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1713 = icmp eq %union.rec* %676, null
  br i1 %cmp1713, label %cond.true.1715, label %cond.false.1716

cond.true.1715:                                   ; preds = %cond.false.1712
  %677 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1745

cond.false.1716:                                  ; preds = %cond.false.1712
  %678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11717 = bitcast %union.rec* %678 to %struct.word_type*
  %olist1718 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11717, i32 0, i32 0
  %arrayidx1719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1718, i32 0, i64 0
  %opred1720 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1719, i32 0, i32 0
  %679 = load %union.rec*, %union.rec** %opred1720, align 8
  store %union.rec* %679, %union.rec** @zz_tmp, align 8
  %680 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11721 = bitcast %union.rec* %680 to %struct.word_type*
  %olist1722 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11721, i32 0, i32 0
  %arrayidx1723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1722, i32 0, i64 0
  %opred1724 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1723, i32 0, i32 0
  %681 = load %union.rec*, %union.rec** %opred1724, align 8
  %682 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11725 = bitcast %union.rec* %682 to %struct.word_type*
  %olist1726 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11725, i32 0, i32 0
  %arrayidx1727 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1726, i32 0, i64 0
  %opred1728 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1727, i32 0, i32 0
  store %union.rec* %681, %union.rec** %opred1728, align 8
  %683 = load %union.rec*, %union.rec** @zz_hold, align 8
  %684 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11729 = bitcast %union.rec* %684 to %struct.word_type*
  %olist1730 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11729, i32 0, i32 0
  %arrayidx1731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1730, i32 0, i64 0
  %opred1732 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1731, i32 0, i32 0
  %685 = load %union.rec*, %union.rec** %opred1732, align 8
  %os11733 = bitcast %union.rec* %685 to %struct.word_type*
  %olist1734 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11733, i32 0, i32 0
  %arrayidx1735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1734, i32 0, i64 0
  %osucc1736 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1735, i32 0, i32 1
  store %union.rec* %683, %union.rec** %osucc1736, align 8
  %686 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %687 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11737 = bitcast %union.rec* %687 to %struct.word_type*
  %olist1738 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11737, i32 0, i32 0
  %arrayidx1739 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1738, i32 0, i64 0
  %opred1740 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1739, i32 0, i32 0
  store %union.rec* %686, %union.rec** %opred1740, align 8
  %688 = load %union.rec*, %union.rec** @zz_res, align 8
  %689 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11741 = bitcast %union.rec* %689 to %struct.word_type*
  %olist1742 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11741, i32 0, i32 0
  %arrayidx1743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1742, i32 0, i64 0
  %osucc1744 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1743, i32 0, i32 1
  store %union.rec* %688, %union.rec** %osucc1744, align 8
  br label %cond.end.1745

cond.end.1745:                                    ; preds = %cond.false.1716, %cond.true.1715
  %cond1746 = phi %union.rec* [ %677, %cond.true.1715 ], [ %688, %cond.false.1716 ]
  br label %cond.end.1747

cond.end.1747:                                    ; preds = %cond.end.1745, %cond.true.1711
  %cond1748 = phi %union.rec* [ %675, %cond.true.1711 ], [ %cond1746, %cond.end.1745 ]
  %690 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %690, %union.rec** @zz_res, align 8
  %691 = load %union.rec*, %union.rec** %z1606, align 8
  store %union.rec* %691, %union.rec** @zz_hold, align 8
  %692 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1749 = icmp eq %union.rec* %692, null
  br i1 %cmp1749, label %cond.true.1751, label %cond.false.1752

cond.true.1751:                                   ; preds = %cond.end.1747
  %693 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1787

cond.false.1752:                                  ; preds = %cond.end.1747
  %694 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1753 = icmp eq %union.rec* %694, null
  br i1 %cmp1753, label %cond.true.1755, label %cond.false.1756

cond.true.1755:                                   ; preds = %cond.false.1752
  %695 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1785

cond.false.1756:                                  ; preds = %cond.false.1752
  %696 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11757 = bitcast %union.rec* %696 to %struct.word_type*
  %olist1758 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11757, i32 0, i32 0
  %arrayidx1759 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1758, i32 0, i64 1
  %opred1760 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1759, i32 0, i32 0
  %697 = load %union.rec*, %union.rec** %opred1760, align 8
  store %union.rec* %697, %union.rec** @zz_tmp, align 8
  %698 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11761 = bitcast %union.rec* %698 to %struct.word_type*
  %olist1762 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11761, i32 0, i32 0
  %arrayidx1763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1762, i32 0, i64 1
  %opred1764 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1763, i32 0, i32 0
  %699 = load %union.rec*, %union.rec** %opred1764, align 8
  %700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11765 = bitcast %union.rec* %700 to %struct.word_type*
  %olist1766 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11765, i32 0, i32 0
  %arrayidx1767 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1766, i32 0, i64 1
  %opred1768 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1767, i32 0, i32 0
  store %union.rec* %699, %union.rec** %opred1768, align 8
  %701 = load %union.rec*, %union.rec** @zz_hold, align 8
  %702 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11769 = bitcast %union.rec* %702 to %struct.word_type*
  %olist1770 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11769, i32 0, i32 0
  %arrayidx1771 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1770, i32 0, i64 1
  %opred1772 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1771, i32 0, i32 0
  %703 = load %union.rec*, %union.rec** %opred1772, align 8
  %os11773 = bitcast %union.rec* %703 to %struct.word_type*
  %olist1774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11773, i32 0, i32 0
  %arrayidx1775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1774, i32 0, i64 1
  %osucc1776 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1775, i32 0, i32 1
  store %union.rec* %701, %union.rec** %osucc1776, align 8
  %704 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %705 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11777 = bitcast %union.rec* %705 to %struct.word_type*
  %olist1778 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11777, i32 0, i32 0
  %arrayidx1779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1778, i32 0, i64 1
  %opred1780 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1779, i32 0, i32 0
  store %union.rec* %704, %union.rec** %opred1780, align 8
  %706 = load %union.rec*, %union.rec** @zz_res, align 8
  %707 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11781 = bitcast %union.rec* %707 to %struct.word_type*
  %olist1782 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11781, i32 0, i32 0
  %arrayidx1783 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1782, i32 0, i64 1
  %osucc1784 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1783, i32 0, i32 1
  store %union.rec* %706, %union.rec** %osucc1784, align 8
  br label %cond.end.1785

cond.end.1785:                                    ; preds = %cond.false.1756, %cond.true.1755
  %cond1786 = phi %union.rec* [ %695, %cond.true.1755 ], [ %706, %cond.false.1756 ]
  br label %cond.end.1787

cond.end.1787:                                    ; preds = %cond.end.1785, %cond.true.1751
  %cond1788 = phi %union.rec* [ %693, %cond.true.1751 ], [ %cond1786, %cond.end.1785 ]
  %708 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1789 = bitcast %union.rec* %708 to %struct.head_type*
  %oopt_counts = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1789, i32 0, i32 10
  %709 = load %union.rec*, %union.rec** %oopt_counts, align 8
  %cmp1790 = icmp ne %union.rec* %709, null
  br i1 %cmp1790, label %land.lhs.true.1792, label %if.else.1967

land.lhs.true.1792:                               ; preds = %cond.end.1787
  %710 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1793 = bitcast %union.rec* %710 to %struct.head_type*
  %oopt_counts1794 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1793, i32 0, i32 10
  %711 = load %union.rec*, %union.rec** %oopt_counts1794, align 8
  %os11795 = bitcast %union.rec* %711 to %struct.word_type*
  %olist1796 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11795, i32 0, i32 0
  %arrayidx1797 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1796, i32 0, i64 0
  %osucc1798 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1797, i32 0, i32 1
  %712 = load %union.rec*, %union.rec** %osucc1798, align 8
  %713 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1799 = bitcast %union.rec* %713 to %struct.head_type*
  %oopt_counts1800 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1799, i32 0, i32 10
  %714 = load %union.rec*, %union.rec** %oopt_counts1800, align 8
  %cmp1801 = icmp ne %union.rec* %712, %714
  br i1 %cmp1801, label %if.then.1803, label %if.else.1967

if.then.1803:                                     ; preds = %land.lhs.true.1792
  %715 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1804 = bitcast %union.rec* %715 to %struct.head_type*
  %oopt_counts1805 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1804, i32 0, i32 10
  %716 = load %union.rec*, %union.rec** %oopt_counts1805, align 8
  %os11806 = bitcast %union.rec* %716 to %struct.word_type*
  %olist1807 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11806, i32 0, i32 0
  %arrayidx1808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1807, i32 0, i64 0
  %osucc1809 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1808, i32 0, i32 1
  %717 = load %union.rec*, %union.rec** %osucc1809, align 8
  %os11810 = bitcast %union.rec* %717 to %struct.word_type*
  %olist1811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11810, i32 0, i32 0
  %arrayidx1812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1811, i32 0, i64 1
  %opred1813 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1812, i32 0, i32 0
  %718 = load %union.rec*, %union.rec** %opred1813, align 8
  store %union.rec* %718, %union.rec** %z1606, align 8
  br label %for.cond.1814

for.cond.1814:                                    ; preds = %for.inc.1823, %if.then.1803
  %719 = load %union.rec*, %union.rec** %z1606, align 8
  %os11815 = bitcast %union.rec* %719 to %struct.word_type*
  %ou11816 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11815, i32 0, i32 1
  %os111817 = bitcast %union.FIRST_UNION* %ou11816 to %struct.anon*
  %otype1818 = getelementptr inbounds %struct.anon, %struct.anon* %os111817, i32 0, i32 0
  %720 = load i8, i8* %otype1818, align 1
  %conv1819 = zext i8 %720 to i32
  %cmp1820 = icmp eq i32 %conv1819, 0
  br i1 %cmp1820, label %for.body.1822, label %for.end.1828

for.body.1822:                                    ; preds = %for.cond.1814
  br label %for.inc.1823

for.inc.1823:                                     ; preds = %for.body.1822
  %721 = load %union.rec*, %union.rec** %z1606, align 8
  %os11824 = bitcast %union.rec* %721 to %struct.word_type*
  %olist1825 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11824, i32 0, i32 0
  %arrayidx1826 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1825, i32 0, i64 1
  %opred1827 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1826, i32 0, i32 0
  %722 = load %union.rec*, %union.rec** %opred1827, align 8
  store %union.rec* %722, %union.rec** %z1606, align 8
  br label %for.cond.1814

for.end.1828:                                     ; preds = %for.cond.1814
  %723 = load %union.rec*, %union.rec** %z1606, align 8
  %os11829 = bitcast %union.rec* %723 to %struct.word_type*
  %ou31830 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11829, i32 0, i32 3
  %os311831 = bitcast %union.THIRD_UNION* %ou31830 to %struct.anon.6*
  %oback1832 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311831, i32 0, i32 0
  %arrayidx1833 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1832, i32 0, i64 0
  %724 = load i32, i32* %arrayidx1833, align 4
  %sub1834 = sub nsw i32 %724, 1
  %725 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1835 = bitcast %union.rec* %725 to %struct.head_type*
  %oopt_comps_permitted1836 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1835, i32 0, i32 15
  %726 = load i32, i32* %oopt_comps_permitted1836, align 4
  %add1837 = add nsw i32 %726, %sub1834
  store i32 %add1837, i32* %oopt_comps_permitted1836, align 4
  %727 = load %union.rec*, %union.rec** %z1606, align 8
  %os11838 = bitcast %union.rec* %727 to %struct.word_type*
  %olist1839 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11838, i32 0, i32 0
  %arrayidx1840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1839, i32 0, i64 1
  %osucc1841 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1840, i32 0, i32 1
  %728 = load %union.rec*, %union.rec** %osucc1841, align 8
  store %union.rec* %728, %union.rec** @xx_link, align 8
  %729 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %729, %union.rec** @zz_hold, align 8
  %730 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11842 = bitcast %union.rec* %730 to %struct.word_type*
  %olist1843 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11842, i32 0, i32 0
  %arrayidx1844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1843, i32 0, i64 1
  %osucc1845 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1844, i32 0, i32 1
  %731 = load %union.rec*, %union.rec** %osucc1845, align 8
  %732 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1846 = icmp eq %union.rec* %731, %732
  br i1 %cmp1846, label %cond.true.1848, label %cond.false.1849

cond.true.1848:                                   ; preds = %for.end.1828
  br label %cond.end.1878

cond.false.1849:                                  ; preds = %for.end.1828
  %733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11850 = bitcast %union.rec* %733 to %struct.word_type*
  %olist1851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11850, i32 0, i32 0
  %arrayidx1852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1851, i32 0, i64 1
  %osucc1853 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1852, i32 0, i32 1
  %734 = load %union.rec*, %union.rec** %osucc1853, align 8
  store %union.rec* %734, %union.rec** @zz_res, align 8
  %735 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11854 = bitcast %union.rec* %735 to %struct.word_type*
  %olist1855 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11854, i32 0, i32 0
  %arrayidx1856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1855, i32 0, i64 1
  %opred1857 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1856, i32 0, i32 0
  %736 = load %union.rec*, %union.rec** %opred1857, align 8
  %737 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11858 = bitcast %union.rec* %737 to %struct.word_type*
  %olist1859 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11858, i32 0, i32 0
  %arrayidx1860 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1859, i32 0, i64 1
  %opred1861 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1860, i32 0, i32 0
  store %union.rec* %736, %union.rec** %opred1861, align 8
  %738 = load %union.rec*, %union.rec** @zz_res, align 8
  %739 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11862 = bitcast %union.rec* %739 to %struct.word_type*
  %olist1863 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11862, i32 0, i32 0
  %arrayidx1864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1863, i32 0, i64 1
  %opred1865 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1864, i32 0, i32 0
  %740 = load %union.rec*, %union.rec** %opred1865, align 8
  %os11866 = bitcast %union.rec* %740 to %struct.word_type*
  %olist1867 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11866, i32 0, i32 0
  %arrayidx1868 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1867, i32 0, i64 1
  %osucc1869 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1868, i32 0, i32 1
  store %union.rec* %738, %union.rec** %osucc1869, align 8
  %741 = load %union.rec*, %union.rec** @zz_hold, align 8
  %742 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11870 = bitcast %union.rec* %742 to %struct.word_type*
  %olist1871 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11870, i32 0, i32 0
  %arrayidx1872 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1871, i32 0, i64 1
  %osucc1873 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1872, i32 0, i32 1
  store %union.rec* %741, %union.rec** %osucc1873, align 8
  %743 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11874 = bitcast %union.rec* %743 to %struct.word_type*
  %olist1875 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11874, i32 0, i32 0
  %arrayidx1876 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1875, i32 0, i64 1
  %opred1877 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1876, i32 0, i32 0
  store %union.rec* %741, %union.rec** %opred1877, align 8
  %744 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1878

cond.end.1878:                                    ; preds = %cond.false.1849, %cond.true.1848
  %cond1879 = phi %union.rec* [ null, %cond.true.1848 ], [ %744, %cond.false.1849 ]
  store %union.rec* %cond1879, %union.rec** @xx_tmp, align 8
  %745 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %745, %union.rec** @zz_hold, align 8
  %746 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11880 = bitcast %union.rec* %746 to %struct.word_type*
  %olist1881 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11880, i32 0, i32 0
  %arrayidx1882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1881, i32 0, i64 0
  %osucc1883 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1882, i32 0, i32 1
  %747 = load %union.rec*, %union.rec** %osucc1883, align 8
  %748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1884 = icmp eq %union.rec* %747, %748
  br i1 %cmp1884, label %cond.true.1886, label %cond.false.1887

cond.true.1886:                                   ; preds = %cond.end.1878
  br label %cond.end.1917

cond.false.1887:                                  ; preds = %cond.end.1878
  %749 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11888 = bitcast %union.rec* %749 to %struct.word_type*
  %olist1889 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11888, i32 0, i32 0
  %arrayidx1890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1889, i32 0, i64 0
  %osucc1891 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1890, i32 0, i32 1
  %750 = load %union.rec*, %union.rec** %osucc1891, align 8
  store %union.rec* %750, %union.rec** @zz_res, align 8
  %751 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11892 = bitcast %union.rec* %751 to %struct.word_type*
  %olist1893 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11892, i32 0, i32 0
  %arrayidx1894 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1893, i32 0, i64 0
  %opred1895 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1894, i32 0, i32 0
  %752 = load %union.rec*, %union.rec** %opred1895, align 8
  %753 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11897 = bitcast %union.rec* %753 to %struct.word_type*
  %olist1898 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11897, i32 0, i32 0
  %arrayidx1899 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1898, i32 0, i64 0
  %opred1900 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1899, i32 0, i32 0
  store %union.rec* %752, %union.rec** %opred1900, align 8
  %754 = load %union.rec*, %union.rec** @zz_res, align 8
  %755 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11901 = bitcast %union.rec* %755 to %struct.word_type*
  %olist1902 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11901, i32 0, i32 0
  %arrayidx1903 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1902, i32 0, i64 0
  %opred1904 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1903, i32 0, i32 0
  %756 = load %union.rec*, %union.rec** %opred1904, align 8
  %os11905 = bitcast %union.rec* %756 to %struct.word_type*
  %olist1906 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11905, i32 0, i32 0
  %arrayidx1907 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1906, i32 0, i64 0
  %osucc1908 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1907, i32 0, i32 1
  store %union.rec* %754, %union.rec** %osucc1908, align 8
  %757 = load %union.rec*, %union.rec** @zz_hold, align 8
  %758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11909 = bitcast %union.rec* %758 to %struct.word_type*
  %olist1910 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11909, i32 0, i32 0
  %arrayidx1911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1910, i32 0, i64 0
  %osucc1912 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1911, i32 0, i32 1
  store %union.rec* %757, %union.rec** %osucc1912, align 8
  %759 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11913 = bitcast %union.rec* %759 to %struct.word_type*
  %olist1914 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11913, i32 0, i32 0
  %arrayidx1915 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1914, i32 0, i64 0
  %opred1916 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1915, i32 0, i32 0
  store %union.rec* %757, %union.rec** %opred1916, align 8
  %760 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1917

cond.end.1917:                                    ; preds = %cond.false.1887, %cond.true.1886
  %cond1918 = phi %union.rec* [ null, %cond.true.1886 ], [ %760, %cond.false.1887 ]
  %761 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %761, %union.rec** @zz_hold, align 8
  %762 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %762, %union.rec** @zz_hold, align 8
  %763 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11919 = bitcast %union.rec* %763 to %struct.word_type*
  %ou11920 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11919, i32 0, i32 1
  %os111921 = bitcast %union.FIRST_UNION* %ou11920 to %struct.anon*
  %otype1922 = getelementptr inbounds %struct.anon, %struct.anon* %os111921, i32 0, i32 0
  %764 = load i8, i8* %otype1922, align 1
  %conv1923 = zext i8 %764 to i32
  %cmp1924 = icmp eq i32 %conv1923, 11
  br i1 %cmp1924, label %cond.true.1934, label %lor.lhs.false.1926

lor.lhs.false.1926:                               ; preds = %cond.end.1917
  %765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11927 = bitcast %union.rec* %765 to %struct.word_type*
  %ou11928 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11927, i32 0, i32 1
  %os111929 = bitcast %union.FIRST_UNION* %ou11928 to %struct.anon*
  %otype1930 = getelementptr inbounds %struct.anon, %struct.anon* %os111929, i32 0, i32 0
  %766 = load i8, i8* %otype1930, align 1
  %conv1931 = zext i8 %766 to i32
  %cmp1932 = icmp eq i32 %conv1931, 12
  br i1 %cmp1932, label %cond.true.1934, label %cond.false.1940

cond.true.1934:                                   ; preds = %lor.lhs.false.1926, %cond.end.1917
  %767 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11935 = bitcast %union.rec* %767 to %struct.word_type*
  %ou11936 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11935, i32 0, i32 1
  %os111937 = bitcast %union.FIRST_UNION* %ou11936 to %struct.anon*
  %orec_size1938 = getelementptr inbounds %struct.anon, %struct.anon* %os111937, i32 0, i32 1
  %768 = load i8, i8* %orec_size1938, align 1
  %conv1939 = zext i8 %768 to i32
  br label %cond.end.1948

cond.false.1940:                                  ; preds = %lor.lhs.false.1926
  %769 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11941 = bitcast %union.rec* %769 to %struct.word_type*
  %ou11942 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11941, i32 0, i32 1
  %os111943 = bitcast %union.FIRST_UNION* %ou11942 to %struct.anon*
  %otype1944 = getelementptr inbounds %struct.anon, %struct.anon* %os111943, i32 0, i32 0
  %770 = load i8, i8* %otype1944, align 1
  %idxprom1945 = zext i8 %770 to i64
  %arrayidx1946 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom1945
  %771 = load i8, i8* %arrayidx1946, align 1
  %conv1947 = zext i8 %771 to i32
  br label %cond.end.1948

cond.end.1948:                                    ; preds = %cond.false.1940, %cond.true.1934
  %cond1949 = phi i32 [ %conv1939, %cond.true.1934 ], [ %conv1947, %cond.false.1940 ]
  store i32 %cond1949, i32* @zz_size, align 4
  %772 = load i32, i32* @zz_size, align 4
  %idxprom1950 = sext i32 %772 to i64
  %arrayidx1951 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1950
  %773 = load %union.rec*, %union.rec** %arrayidx1951, align 8
  %774 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11952 = bitcast %union.rec* %774 to %struct.word_type*
  %olist1953 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11952, i32 0, i32 0
  %arrayidx1954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1953, i32 0, i64 0
  %opred1955 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1954, i32 0, i32 0
  store %union.rec* %773, %union.rec** %opred1955, align 8
  %775 = load %union.rec*, %union.rec** @zz_hold, align 8
  %776 = load i32, i32* @zz_size, align 4
  %idxprom1956 = sext i32 %776 to i64
  %arrayidx1957 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1956
  store %union.rec* %775, %union.rec** %arrayidx1957, align 8
  %777 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os11958 = bitcast %union.rec* %777 to %struct.word_type*
  %olist1959 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11958, i32 0, i32 0
  %arrayidx1960 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1959, i32 0, i64 1
  %osucc1961 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1960, i32 0, i32 1
  %778 = load %union.rec*, %union.rec** %osucc1961, align 8
  %779 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp1962 = icmp eq %union.rec* %778, %779
  br i1 %cmp1962, label %if.then.1964, label %if.end.1966

if.then.1964:                                     ; preds = %cond.end.1948
  %780 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call1965 = call i32 @DisposeObject(%union.rec* %780)
  br label %if.end.1966

if.end.1966:                                      ; preds = %if.then.1964, %cond.end.1948
  br label %if.end.1970

if.else.1967:                                     ; preds = %land.lhs.true.1792, %cond.end.1787
  %781 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a1968 = bitcast %union.rec* %781 to %struct.head_type*
  %oopt_comps_permitted1969 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a1968, i32 0, i32 15
  store i32 65535, i32* %oopt_comps_permitted1969, align 4
  br label %if.end.1970

if.end.1970:                                      ; preds = %if.else.1967, %if.end.1966
  br label %if.end.1971

if.end.1971:                                      ; preds = %if.end.1970, %if.then.1599
  br label %REJECT

if.end.1972:                                      ; preds = %land.lhs.true.1595, %lor.lhs.false.1590
  %782 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os11973 = bitcast %union.rec* %782 to %struct.word_type*
  %ou21974 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11973, i32 0, i32 2
  %os231975 = bitcast %union.SECOND_UNION* %ou21974 to %struct.anon.2*
  %oblocked1976 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os231975, i32 0, i32 2
  %bf.load1977 = load i16, i16* %oblocked1976, align 2
  %bf.lshr1978 = lshr i16 %bf.load1977, 5
  %bf.clear1979 = and i16 %bf.lshr1978, 1
  %bf.cast1980 = zext i16 %bf.clear1979 to i32
  %tobool1981 = icmp ne i32 %bf.cast1980, 0
  br i1 %tobool1981, label %if.then.1982, label %if.else.2019

if.then.1982:                                     ; preds = %if.end.1972
  store i32 0, i32* %pb, align 4
  %783 = load i32, i32* %perp_fwd, align 4
  %784 = load i32, i32* %dim, align 4
  %sub1983 = sub nsw i32 1, %784
  %idxprom1984 = sext i32 %sub1983 to i64
  %785 = load %union.rec*, %union.rec** %y, align 8
  %os11985 = bitcast %union.rec* %785 to %struct.word_type*
  %ou31986 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11985, i32 0, i32 3
  %os311987 = bitcast %union.THIRD_UNION* %ou31986 to %struct.anon.6*
  %oback1988 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311987, i32 0, i32 0
  %arrayidx1989 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1988, i32 0, i64 %idxprom1984
  %786 = load i32, i32* %arrayidx1989, align 4
  %787 = load i32, i32* %dim, align 4
  %sub1990 = sub nsw i32 1, %787
  %idxprom1991 = sext i32 %sub1990 to i64
  %788 = load %union.rec*, %union.rec** %y, align 8
  %os11992 = bitcast %union.rec* %788 to %struct.word_type*
  %ou31993 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11992, i32 0, i32 3
  %os311994 = bitcast %union.THIRD_UNION* %ou31993 to %struct.anon.6*
  %ofwd1995 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311994, i32 0, i32 1
  %arrayidx1996 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1995, i32 0, i64 %idxprom1991
  %789 = load i32, i32* %arrayidx1996, align 4
  %add1997 = add nsw i32 %786, %789
  %cmp1998 = icmp slt i32 %783, %add1997
  br i1 %cmp1998, label %cond.true.2000, label %cond.false.2016

cond.true.2000:                                   ; preds = %if.then.1982
  %790 = load i32, i32* %dim, align 4
  %sub2001 = sub nsw i32 1, %790
  %idxprom2002 = sext i32 %sub2001 to i64
  %791 = load %union.rec*, %union.rec** %y, align 8
  %os12003 = bitcast %union.rec* %791 to %struct.word_type*
  %ou32004 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12003, i32 0, i32 3
  %os312005 = bitcast %union.THIRD_UNION* %ou32004 to %struct.anon.6*
  %oback2006 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312005, i32 0, i32 0
  %arrayidx2007 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2006, i32 0, i64 %idxprom2002
  %792 = load i32, i32* %arrayidx2007, align 4
  %793 = load i32, i32* %dim, align 4
  %sub2008 = sub nsw i32 1, %793
  %idxprom2009 = sext i32 %sub2008 to i64
  %794 = load %union.rec*, %union.rec** %y, align 8
  %os12010 = bitcast %union.rec* %794 to %struct.word_type*
  %ou32011 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12010, i32 0, i32 3
  %os312012 = bitcast %union.THIRD_UNION* %ou32011 to %struct.anon.6*
  %ofwd2013 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312012, i32 0, i32 1
  %arrayidx2014 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2013, i32 0, i64 %idxprom2009
  %795 = load i32, i32* %arrayidx2014, align 4
  %add2015 = add nsw i32 %792, %795
  br label %cond.end.2017

cond.false.2016:                                  ; preds = %if.then.1982
  %796 = load i32, i32* %perp_fwd, align 4
  br label %cond.end.2017

cond.end.2017:                                    ; preds = %cond.false.2016, %cond.true.2000
  %cond2018 = phi i32 [ %add2015, %cond.true.2000 ], [ %796, %cond.false.2016 ]
  store i32 %cond2018, i32* %pf, align 4
  br label %if.end.2060

if.else.2019:                                     ; preds = %if.end.1972
  %797 = load i32, i32* %perp_back, align 4
  %798 = load i32, i32* %dim, align 4
  %sub2020 = sub nsw i32 1, %798
  %idxprom2021 = sext i32 %sub2020 to i64
  %799 = load %union.rec*, %union.rec** %y, align 8
  %os12022 = bitcast %union.rec* %799 to %struct.word_type*
  %ou32023 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12022, i32 0, i32 3
  %os312024 = bitcast %union.THIRD_UNION* %ou32023 to %struct.anon.6*
  %oback2025 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312024, i32 0, i32 0
  %arrayidx2026 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2025, i32 0, i64 %idxprom2021
  %800 = load i32, i32* %arrayidx2026, align 4
  %cmp2027 = icmp slt i32 %797, %800
  br i1 %cmp2027, label %cond.true.2029, label %cond.false.2037

cond.true.2029:                                   ; preds = %if.else.2019
  %801 = load i32, i32* %dim, align 4
  %sub2030 = sub nsw i32 1, %801
  %idxprom2031 = sext i32 %sub2030 to i64
  %802 = load %union.rec*, %union.rec** %y, align 8
  %os12032 = bitcast %union.rec* %802 to %struct.word_type*
  %ou32033 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12032, i32 0, i32 3
  %os312034 = bitcast %union.THIRD_UNION* %ou32033 to %struct.anon.6*
  %oback2035 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312034, i32 0, i32 0
  %arrayidx2036 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2035, i32 0, i64 %idxprom2031
  %803 = load i32, i32* %arrayidx2036, align 4
  br label %cond.end.2038

cond.false.2037:                                  ; preds = %if.else.2019
  %804 = load i32, i32* %perp_back, align 4
  br label %cond.end.2038

cond.end.2038:                                    ; preds = %cond.false.2037, %cond.true.2029
  %cond2039 = phi i32 [ %803, %cond.true.2029 ], [ %804, %cond.false.2037 ]
  store i32 %cond2039, i32* %pb, align 4
  %805 = load i32, i32* %perp_fwd, align 4
  %806 = load i32, i32* %dim, align 4
  %sub2040 = sub nsw i32 1, %806
  %idxprom2041 = sext i32 %sub2040 to i64
  %807 = load %union.rec*, %union.rec** %y, align 8
  %os12042 = bitcast %union.rec* %807 to %struct.word_type*
  %ou32043 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12042, i32 0, i32 3
  %os312044 = bitcast %union.THIRD_UNION* %ou32043 to %struct.anon.6*
  %ofwd2045 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312044, i32 0, i32 1
  %arrayidx2046 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2045, i32 0, i64 %idxprom2041
  %808 = load i32, i32* %arrayidx2046, align 4
  %cmp2047 = icmp slt i32 %805, %808
  br i1 %cmp2047, label %cond.true.2049, label %cond.false.2057

cond.true.2049:                                   ; preds = %cond.end.2038
  %809 = load i32, i32* %dim, align 4
  %sub2050 = sub nsw i32 1, %809
  %idxprom2051 = sext i32 %sub2050 to i64
  %810 = load %union.rec*, %union.rec** %y, align 8
  %os12052 = bitcast %union.rec* %810 to %struct.word_type*
  %ou32053 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12052, i32 0, i32 3
  %os312054 = bitcast %union.THIRD_UNION* %ou32053 to %struct.anon.6*
  %ofwd2055 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312054, i32 0, i32 1
  %arrayidx2056 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2055, i32 0, i64 %idxprom2051
  %811 = load i32, i32* %arrayidx2056, align 4
  br label %cond.end.2058

cond.false.2057:                                  ; preds = %cond.end.2038
  %812 = load i32, i32* %perp_fwd, align 4
  br label %cond.end.2058

cond.end.2058:                                    ; preds = %cond.false.2057, %cond.true.2049
  %cond2059 = phi i32 [ %811, %cond.true.2049 ], [ %812, %cond.false.2057 ]
  store i32 %cond2059, i32* %pf, align 4
  br label %if.end.2060

if.end.2060:                                      ; preds = %cond.end.2058, %cond.end.2017
  %813 = load i32, i32* %pb, align 4
  %obc2061 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_perp_constr, i32 0, i32 0
  %814 = load i32, i32* %obc2061, align 4
  %cmp2062 = icmp sle i32 %813, %814
  br i1 %cmp2062, label %land.lhs.true.2064, label %if.then.2073

land.lhs.true.2064:                               ; preds = %if.end.2060
  %815 = load i32, i32* %pb, align 4
  %816 = load i32, i32* %pf, align 4
  %add2065 = add nsw i32 %815, %816
  %obfc2066 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_perp_constr, i32 0, i32 1
  %817 = load i32, i32* %obfc2066, align 4
  %cmp2067 = icmp sle i32 %add2065, %817
  br i1 %cmp2067, label %land.lhs.true.2069, label %if.then.2073

land.lhs.true.2069:                               ; preds = %land.lhs.true.2064
  %818 = load i32, i32* %pf, align 4
  %ofc2070 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_perp_constr, i32 0, i32 2
  %819 = load i32, i32* %ofc2070, align 4
  %cmp2071 = icmp sle i32 %818, %819
  br i1 %cmp2071, label %if.end.2092, label %if.then.2073

if.then.2073:                                     ; preds = %land.lhs.true.2069, %land.lhs.true.2064, %if.end.2060
  %820 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a2074 = bitcast %union.rec* %820 to %struct.head_type*
  %oopt_components2075 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a2074, i32 0, i32 8
  %821 = load %union.rec*, %union.rec** %oopt_components2075, align 8
  %cmp2076 = icmp ne %union.rec* %821, null
  br i1 %cmp2076, label %if.then.2078, label %if.end.2084

if.then.2078:                                     ; preds = %if.then.2073
  %822 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a2079 = bitcast %union.rec* %822 to %struct.head_type*
  %oopt_components2080 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a2079, i32 0, i32 8
  %823 = load %union.rec*, %union.rec** %oopt_components2080, align 8
  %call2081 = call i32 @DisposeObject(%union.rec* %823)
  %824 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a2082 = bitcast %union.rec* %824 to %struct.head_type*
  %oopt_components2083 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a2082, i32 0, i32 8
  store %union.rec* null, %union.rec** %oopt_components2083, align 8
  br label %if.end.2084

if.end.2084:                                      ; preds = %if.then.2078, %if.then.2073
  %825 = load i32, i32* %dim, align 4
  %cmp2085 = icmp eq i32 %825, 1
  br i1 %cmp2085, label %if.then.2087, label %if.end.2091

if.then.2087:                                     ; preds = %if.end.2084
  %826 = load %union.rec*, %union.rec** %y, align 8
  %os12088 = bitcast %union.rec* %826 to %struct.word_type*
  %ou12089 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12088, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou12089 to %struct.FILE_POS*
  %call2090 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 20, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos)
  br label %if.end.2091

if.end.2091:                                      ; preds = %if.then.2087, %if.end.2084
  br label %REJECT

if.end.2092:                                      ; preds = %land.lhs.true.2069
  %827 = load i32, i32* %f, align 4
  store i32 %827, i32* %dest_fwd, align 4
  %828 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %828, %union.rec** %prec_def, align 8
  %829 = load i32, i32* %pb, align 4
  store i32 %829, i32* %perp_back, align 4
  %830 = load i32, i32* %pf, align 4
  store i32 %830, i32* %perp_fwd, align 4
  store i32 1, i32* %need_adjust, align 4
  %831 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a2093 = bitcast %union.rec* %831 to %struct.head_type*
  %oopt_components2094 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a2093, i32 0, i32 8
  %832 = load %union.rec*, %union.rec** %oopt_components2094, align 8
  %cmp2095 = icmp ne %union.rec* %832, null
  br i1 %cmp2095, label %if.then.2097, label %if.end.2100

if.then.2097:                                     ; preds = %if.end.2092
  %833 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a2098 = bitcast %union.rec* %833 to %struct.head_type*
  %oopt_comps_permitted2099 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a2098, i32 0, i32 15
  %834 = load i32, i32* %oopt_comps_permitted2099, align 4
  %dec = add nsw i32 %834, -1
  store i32 %dec, i32* %oopt_comps_permitted2099, align 4
  br label %if.end.2100

if.end.2100:                                      ; preds = %if.then.2097, %if.end.2092
  br label %if.end.2101

if.end.2101:                                      ; preds = %if.end.2100, %land.lhs.true.1511
  br label %if.end.2102

if.end.2102:                                      ; preds = %if.end.2101, %if.end.1329
  %835 = load i32, i32* %prnt_flush, align 4
  %tobool2103 = icmp ne i32 %835, 0
  br i1 %tobool2103, label %lor.end.2114, label %lor.rhs.2104

lor.rhs.2104:                                     ; preds = %if.end.2102
  %836 = load %union.rec*, %union.rec** %dest_index, align 8
  %os12105 = bitcast %union.rec* %836 to %struct.word_type*
  %ou22106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12105, i32 0, i32 2
  %os232107 = bitcast %union.SECOND_UNION* %ou22106 to %struct.anon.2*
  %oblocked2108 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os232107, i32 0, i32 2
  %bf.load2109 = load i16, i16* %oblocked2108, align 2
  %bf.lshr2110 = lshr i16 %bf.load2109, 5
  %bf.clear2111 = and i16 %bf.lshr2110, 1
  %bf.cast2112 = zext i16 %bf.clear2111 to i32
  %tobool2113 = icmp ne i32 %bf.cast2112, 0
  br label %lor.end.2114

lor.end.2114:                                     ; preds = %lor.rhs.2104, %if.end.2102
  %837 = phi i1 [ true, %if.end.2102 ], [ %tobool2113, %lor.rhs.2104 ]
  %lor.ext2115 = zext i1 %837 to i32
  store i32 %lor.ext2115, i32* %prnt_flush, align 4
  %838 = load %union.rec*, %union.rec** %inners, align 8
  %cmp2116 = icmp ne %union.rec* %838, null
  br i1 %cmp2116, label %if.then.2118, label %if.end.2187

if.then.2118:                                     ; preds = %lor.end.2114
  %839 = load %union.rec*, %union.rec** %link, align 8
  %os12121 = bitcast %union.rec* %839 to %struct.word_type*
  %olist2122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12121, i32 0, i32 0
  %arrayidx2123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2122, i32 0, i64 0
  %osucc2124 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2123, i32 0, i32 1
  %840 = load %union.rec*, %union.rec** %osucc2124, align 8
  %os12125 = bitcast %union.rec* %840 to %struct.word_type*
  %ou12126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12125, i32 0, i32 1
  %os112127 = bitcast %union.FIRST_UNION* %ou12126 to %struct.anon*
  %otype2128 = getelementptr inbounds %struct.anon, %struct.anon* %os112127, i32 0, i32 0
  %841 = load i8, i8* %otype2128, align 1
  %conv2129 = zext i8 %841 to i32
  %cmp2130 = icmp eq i32 %conv2129, 0
  br i1 %cmp2130, label %if.then.2132, label %if.else.2174

if.then.2132:                                     ; preds = %if.then.2118
  %842 = load %union.rec*, %union.rec** %link, align 8
  %os12133 = bitcast %union.rec* %842 to %struct.word_type*
  %olist2134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12133, i32 0, i32 0
  %arrayidx2135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2134, i32 0, i64 0
  %osucc2136 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2135, i32 0, i32 1
  %843 = load %union.rec*, %union.rec** %osucc2136, align 8
  %os12137 = bitcast %union.rec* %843 to %struct.word_type*
  %olist2138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12137, i32 0, i32 0
  %arrayidx2139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2138, i32 0, i64 1
  %opred2140 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2139, i32 0, i32 0
  %844 = load %union.rec*, %union.rec** %opred2140, align 8
  store %union.rec* %844, %union.rec** %tgp, align 8
  br label %for.cond.2141

for.cond.2141:                                    ; preds = %for.inc.2150, %if.then.2132
  %845 = load %union.rec*, %union.rec** %tgp, align 8
  %os12142 = bitcast %union.rec* %845 to %struct.word_type*
  %ou12143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12142, i32 0, i32 1
  %os112144 = bitcast %union.FIRST_UNION* %ou12143 to %struct.anon*
  %otype2145 = getelementptr inbounds %struct.anon, %struct.anon* %os112144, i32 0, i32 0
  %846 = load i8, i8* %otype2145, align 1
  %conv2146 = zext i8 %846 to i32
  %cmp2147 = icmp eq i32 %conv2146, 0
  br i1 %cmp2147, label %for.body.2149, label %for.end.2155

for.body.2149:                                    ; preds = %for.cond.2141
  br label %for.inc.2150

for.inc.2150:                                     ; preds = %for.body.2149
  %847 = load %union.rec*, %union.rec** %tgp, align 8
  %os12151 = bitcast %union.rec* %847 to %struct.word_type*
  %olist2152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12151, i32 0, i32 0
  %arrayidx2153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2152, i32 0, i64 1
  %opred2154 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2153, i32 0, i32 0
  %848 = load %union.rec*, %union.rec** %opred2154, align 8
  store %union.rec* %848, %union.rec** %tgp, align 8
  br label %for.cond.2141

for.end.2155:                                     ; preds = %for.cond.2141
  %849 = load %union.rec*, %union.rec** %tgp, align 8
  %os12156 = bitcast %union.rec* %849 to %struct.word_type*
  %ou12157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12156, i32 0, i32 1
  %os112158 = bitcast %union.FIRST_UNION* %ou12157 to %struct.anon*
  %otype2159 = getelementptr inbounds %struct.anon, %struct.anon* %os112158, i32 0, i32 0
  %850 = load i8, i8* %otype2159, align 1
  %conv2160 = zext i8 %850 to i32
  %cmp2161 = icmp eq i32 %conv2160, 1
  br i1 %cmp2161, label %if.end.2165, label %if.then.2163

if.then.2163:                                     ; preds = %for.end.2155
  %851 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2164 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %851, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.2165

if.end.2165:                                      ; preds = %if.then.2163, %for.end.2155
  %852 = load %union.rec*, %union.rec** %tgp, align 8
  %os52166 = bitcast %union.rec* %852 to %struct.gapobj_type*
  %ogap2167 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52166, i32 0, i32 3
  %853 = bitcast %struct.GAP* %ogap2167 to i16*
  %bf.load2168 = load i16, i16* %853, align 4
  %bf.lshr2169 = lshr i16 %bf.load2168, 7
  %bf.clear2170 = and i16 %bf.lshr2169, 1
  %bf.cast2171 = zext i16 %bf.clear2170 to i32
  %tobool2172 = icmp ne i32 %bf.cast2171, 0
  %lnot2173 = xor i1 %tobool2172, true
  %lnot.ext = zext i1 %lnot2173 to i32
  store i32 %lnot.ext, i32* %promotable, align 4
  br label %if.end.2175

if.else.2174:                                     ; preds = %if.then.2118
  store i32 1, i32* %promotable, align 4
  br label %if.end.2175

if.end.2175:                                      ; preds = %if.else.2174, %if.end.2165
  %854 = load i32, i32* %promotable, align 4
  %tobool2176 = icmp ne i32 %854, 0
  br i1 %tobool2176, label %if.then.2177, label %if.end.2186

if.then.2177:                                     ; preds = %if.end.2175
  %855 = load %union.rec*, %union.rec** %hd.addr, align 8
  %856 = load %union.rec*, %union.rec** %link, align 8
  %os12178 = bitcast %union.rec* %856 to %struct.word_type*
  %olist2179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12178, i32 0, i32 0
  %arrayidx2180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2179, i32 0, i64 0
  %osucc2181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2180, i32 0, i32 1
  %857 = load %union.rec*, %union.rec** %osucc2181, align 8
  %858 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @Promote(%union.rec* %855, %union.rec* %857, %union.rec* %858, i32 1)
  %859 = load i32, i32* %need_adjust, align 4
  %tobool2182 = icmp ne i32 %859, 0
  br i1 %tobool2182, label %if.then.2183, label %if.end.2185

if.then.2183:                                     ; preds = %if.then.2177
  %860 = load %union.rec*, %union.rec** %dest_encl, align 8
  %861 = load i32, i32* %dest_back, align 4
  %862 = load i32, i32* %dest_fwd, align 4
  %863 = load i32, i32* %dim, align 4
  call void @AdjustSize(%union.rec* %860, i32 %861, i32 %862, i32 %863)
  %864 = load %union.rec*, %union.rec** %dest_encl, align 8
  %865 = load i32, i32* %perp_back, align 4
  %866 = load i32, i32* %perp_fwd, align 4
  %867 = load i32, i32* %dim, align 4
  %sub2184 = sub nsw i32 1, %867
  call void @AdjustSize(%union.rec* %864, i32 %865, i32 %866, i32 %sub2184)
  br label %if.end.2185

if.end.2185:                                      ; preds = %if.then.2183, %if.then.2177
  %868 = load %union.rec*, %union.rec** %inners, align 8
  %869 = load %union.rec*, %union.rec** %hd.addr, align 8
  call void @FlushInners(%union.rec* %868, %union.rec* %869)
  br label %RESUME

if.end.2186:                                      ; preds = %if.end.2175
  br label %if.end.2187

if.end.2187:                                      ; preds = %if.end.2186, %lor.end.2114
  br label %sw.epilog.2196

sw.default.2188:                                  ; preds = %if.end.369
  %870 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %871 = load %union.rec*, %union.rec** %y, align 8
  %os12189 = bitcast %union.rec* %871 to %struct.word_type*
  %ou12190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12189, i32 0, i32 1
  %os112191 = bitcast %union.FIRST_UNION* %ou12190 to %struct.anon*
  %otype2192 = getelementptr inbounds %struct.anon, %struct.anon* %os112191, i32 0, i32 0
  %872 = load i8, i8* %otype2192, align 1
  %conv2193 = zext i8 %872 to i32
  %call2194 = call i8* @Image(i32 %conv2193)
  %call2195 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %870, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* %call2194)
  br label %sw.epilog.2196

sw.epilog.2196:                                   ; preds = %sw.default.2188, %if.end.2187, %sw.bb.1245, %sw.epilog.1244, %if.end.771, %cond.end.603, %sw.bb.418, %if.end.417
  br label %for.inc.2197

for.inc.2197:                                     ; preds = %sw.epilog.2196
  %873 = load %union.rec*, %union.rec** %link, align 8
  %os12198 = bitcast %union.rec* %873 to %struct.word_type*
  %olist2199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12198, i32 0, i32 0
  %arrayidx2200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2199, i32 0, i64 0
  %osucc2201 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2200, i32 0, i32 1
  %874 = load %union.rec*, %union.rec** %osucc2201, align 8
  store %union.rec* %874, %union.rec** %link, align 8
  br label %for.cond.309

for.end.2202:                                     ; preds = %for.cond.309
  %875 = load %union.rec*, %union.rec** %inners, align 8
  %cmp2203 = icmp ne %union.rec* %875, null
  br i1 %cmp2203, label %if.then.2205, label %if.end.2207

if.then.2205:                                     ; preds = %for.end.2202
  %876 = load %union.rec*, %union.rec** %inners, align 8
  %call2206 = call i32 @DisposeObject(%union.rec* %876)
  br label %if.end.2207

if.end.2207:                                      ; preds = %if.then.2205, %for.end.2202
  %877 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os12208 = bitcast %union.rec* %877 to %struct.word_type*
  %olist2209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12208, i32 0, i32 0
  %arrayidx2210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2209, i32 0, i64 0
  %osucc2211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2210, i32 0, i32 1
  %878 = load %union.rec*, %union.rec** %osucc2211, align 8
  %879 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp2212 = icmp ne %union.rec* %878, %879
  br i1 %cmp2212, label %if.then.2214, label %if.end.2219

if.then.2214:                                     ; preds = %if.end.2207
  %880 = load %union.rec*, %union.rec** %hd.addr, align 8
  %881 = load %union.rec*, %union.rec** %hd.addr, align 8
  %882 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @Promote(%union.rec* %880, %union.rec* %881, %union.rec* %882, i32 1)
  %883 = load i32, i32* %need_adjust, align 4
  %tobool2215 = icmp ne i32 %883, 0
  br i1 %tobool2215, label %if.then.2216, label %if.end.2218

if.then.2216:                                     ; preds = %if.then.2214
  %884 = load %union.rec*, %union.rec** %dest_encl, align 8
  %885 = load i32, i32* %dest_back, align 4
  %886 = load i32, i32* %dest_fwd, align 4
  %887 = load i32, i32* %dim, align 4
  call void @AdjustSize(%union.rec* %884, i32 %885, i32 %886, i32 %887)
  %888 = load %union.rec*, %union.rec** %dest_encl, align 8
  %889 = load i32, i32* %perp_back, align 4
  %890 = load i32, i32* %perp_fwd, align 4
  %891 = load i32, i32* %dim, align 4
  %sub2217 = sub nsw i32 1, %891
  call void @AdjustSize(%union.rec* %888, i32 %889, i32 %890, i32 %sub2217)
  br label %if.end.2218

if.end.2218:                                      ; preds = %if.then.2216, %if.then.2214
  br label %if.end.2219

if.end.2219:                                      ; preds = %if.end.2218, %if.end.2207
  %892 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a2220 = bitcast %union.rec* %892 to %struct.head_type*
  %oopt_components2221 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a2220, i32 0, i32 8
  %893 = load %union.rec*, %union.rec** %oopt_components2221, align 8
  %cmp2222 = icmp ne %union.rec* %893, null
  br i1 %cmp2222, label %if.then.2224, label %if.end.2429

if.then.2224:                                     ; preds = %if.end.2219
  %894 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 26), align 1
  %conv2227 = zext i8 %894 to i32
  store i32 %conv2227, i32* @zz_size, align 4
  %conv2228 = sext i32 %conv2227 to i64
  %cmp2229 = icmp uge i64 %conv2228, 265
  br i1 %cmp2229, label %if.then.2231, label %if.else.2233

if.then.2231:                                     ; preds = %if.then.2224
  %895 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2232 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %895)
  br label %if.end.2250

if.else.2233:                                     ; preds = %if.then.2224
  %896 = load i32, i32* @zz_size, align 4
  %idxprom2234 = sext i32 %896 to i64
  %arrayidx2235 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2234
  %897 = load %union.rec*, %union.rec** %arrayidx2235, align 8
  %cmp2236 = icmp eq %union.rec* %897, null
  br i1 %cmp2236, label %if.then.2238, label %if.else.2240

if.then.2238:                                     ; preds = %if.else.2233
  %898 = load i32, i32* @zz_size, align 4
  %899 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2239 = call %union.rec* @GetMemory(i32 %898, %struct.FILE_POS* %899)
  store %union.rec* %call2239, %union.rec** @zz_hold, align 8
  br label %if.end.2249

if.else.2240:                                     ; preds = %if.else.2233
  %900 = load i32, i32* @zz_size, align 4
  %idxprom2241 = sext i32 %900 to i64
  %arrayidx2242 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2241
  %901 = load %union.rec*, %union.rec** %arrayidx2242, align 8
  store %union.rec* %901, %union.rec** @zz_hold, align 8
  store %union.rec* %901, %union.rec** @zz_hold, align 8
  %902 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12243 = bitcast %union.rec* %902 to %struct.word_type*
  %olist2244 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12243, i32 0, i32 0
  %arrayidx2245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2244, i32 0, i64 0
  %opred2246 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2245, i32 0, i32 0
  %903 = load %union.rec*, %union.rec** %opred2246, align 8
  %904 = load i32, i32* @zz_size, align 4
  %idxprom2247 = sext i32 %904 to i64
  %arrayidx2248 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2247
  store %union.rec* %903, %union.rec** %arrayidx2248, align 8
  br label %if.end.2249

if.end.2249:                                      ; preds = %if.else.2240, %if.then.2238
  br label %if.end.2250

if.end.2250:                                      ; preds = %if.end.2249, %if.then.2231
  %905 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12251 = bitcast %union.rec* %905 to %struct.word_type*
  %ou12252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12251, i32 0, i32 1
  %os112253 = bitcast %union.FIRST_UNION* %ou12252 to %struct.anon*
  %otype2254 = getelementptr inbounds %struct.anon, %struct.anon* %os112253, i32 0, i32 0
  store i8 26, i8* %otype2254, align 1
  %906 = load %union.rec*, %union.rec** @zz_hold, align 8
  %907 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12255 = bitcast %union.rec* %907 to %struct.word_type*
  %olist2256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12255, i32 0, i32 0
  %arrayidx2257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2256, i32 0, i64 1
  %osucc2258 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2257, i32 0, i32 1
  store %union.rec* %906, %union.rec** %osucc2258, align 8
  %908 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12259 = bitcast %union.rec* %908 to %struct.word_type*
  %olist2260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12259, i32 0, i32 0
  %arrayidx2261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2260, i32 0, i64 1
  %opred2262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2261, i32 0, i32 0
  store %union.rec* %906, %union.rec** %opred2262, align 8
  %909 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12263 = bitcast %union.rec* %909 to %struct.word_type*
  %olist2264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12263, i32 0, i32 0
  %arrayidx2265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2264, i32 0, i64 0
  %osucc2266 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2265, i32 0, i32 1
  store %union.rec* %906, %union.rec** %osucc2266, align 8
  %910 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12267 = bitcast %union.rec* %910 to %struct.word_type*
  %olist2268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12267, i32 0, i32 0
  %arrayidx2269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2268, i32 0, i64 0
  %opred2270 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2269, i32 0, i32 0
  store %union.rec* %906, %union.rec** %opred2270, align 8
  store %union.rec* %906, %union.rec** %z2226, align 8
  %911 = load %union.rec*, %union.rec** %dest_encl, align 8
  %cmp2271 = icmp ne %union.rec* %911, null
  br i1 %cmp2271, label %if.then.2273, label %if.else.2289

if.then.2273:                                     ; preds = %if.end.2250
  %obc2274 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 0
  %912 = load i32, i32* %obc2274, align 4
  %913 = load %union.rec*, %union.rec** %z2226, align 8
  %os22275 = bitcast %union.rec* %913 to %struct.closure_type*
  %ou42276 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22275, i32 0, i32 4
  %oconstraint2277 = bitcast %union.FOURTH_UNION* %ou42276 to %struct.CONSTRAINT*
  %obc2278 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2277, i32 0, i32 0
  store i32 %912, i32* %obc2278, align 4
  %obfc2279 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 1
  %914 = load i32, i32* %obfc2279, align 4
  %915 = load %union.rec*, %union.rec** %z2226, align 8
  %os22280 = bitcast %union.rec* %915 to %struct.closure_type*
  %ou42281 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22280, i32 0, i32 4
  %oconstraint2282 = bitcast %union.FOURTH_UNION* %ou42281 to %struct.CONSTRAINT*
  %obfc2283 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2282, i32 0, i32 1
  store i32 %914, i32* %obfc2283, align 4
  %ofc2284 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %dest_par_constr, i32 0, i32 2
  %916 = load i32, i32* %ofc2284, align 4
  %917 = load %union.rec*, %union.rec** %z2226, align 8
  %os22285 = bitcast %union.rec* %917 to %struct.closure_type*
  %ou42286 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22285, i32 0, i32 4
  %oconstraint2287 = bitcast %union.FOURTH_UNION* %ou42286 to %struct.CONSTRAINT*
  %ofc2288 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2287, i32 0, i32 2
  store i32 %916, i32* %ofc2288, align 4
  br label %if.end.2302

if.else.2289:                                     ; preds = %if.end.2250
  %918 = load %union.rec*, %union.rec** %z2226, align 8
  %os22290 = bitcast %union.rec* %918 to %struct.closure_type*
  %ou42291 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22290, i32 0, i32 4
  %oconstraint2292 = bitcast %union.FOURTH_UNION* %ou42291 to %struct.CONSTRAINT*
  %obc2293 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2292, i32 0, i32 0
  store i32 8388607, i32* %obc2293, align 4
  %919 = load %union.rec*, %union.rec** %z2226, align 8
  %os22294 = bitcast %union.rec* %919 to %struct.closure_type*
  %ou42295 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22294, i32 0, i32 4
  %oconstraint2296 = bitcast %union.FOURTH_UNION* %ou42295 to %struct.CONSTRAINT*
  %obfc2297 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2296, i32 0, i32 1
  store i32 8388607, i32* %obfc2297, align 4
  %920 = load %union.rec*, %union.rec** %z2226, align 8
  %os22298 = bitcast %union.rec* %920 to %struct.closure_type*
  %ou42299 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22298, i32 0, i32 4
  %oconstraint2300 = bitcast %union.FOURTH_UNION* %ou42299 to %struct.CONSTRAINT*
  %ofc2301 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint2300, i32 0, i32 2
  store i32 8388607, i32* %ofc2301, align 4
  br label %if.end.2302

if.end.2302:                                      ; preds = %if.else.2289, %if.then.2273
  %921 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv2303 = zext i8 %921 to i32
  store i32 %conv2303, i32* @zz_size, align 4
  %conv2304 = sext i32 %conv2303 to i64
  %cmp2305 = icmp uge i64 %conv2304, 265
  br i1 %cmp2305, label %if.then.2307, label %if.else.2309

if.then.2307:                                     ; preds = %if.end.2302
  %922 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2308 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %922)
  br label %if.end.2326

if.else.2309:                                     ; preds = %if.end.2302
  %923 = load i32, i32* @zz_size, align 4
  %idxprom2310 = sext i32 %923 to i64
  %arrayidx2311 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2310
  %924 = load %union.rec*, %union.rec** %arrayidx2311, align 8
  %cmp2312 = icmp eq %union.rec* %924, null
  br i1 %cmp2312, label %if.then.2314, label %if.else.2316

if.then.2314:                                     ; preds = %if.else.2309
  %925 = load i32, i32* @zz_size, align 4
  %926 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2315 = call %union.rec* @GetMemory(i32 %925, %struct.FILE_POS* %926)
  store %union.rec* %call2315, %union.rec** @zz_hold, align 8
  br label %if.end.2325

if.else.2316:                                     ; preds = %if.else.2309
  %927 = load i32, i32* @zz_size, align 4
  %idxprom2317 = sext i32 %927 to i64
  %arrayidx2318 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2317
  %928 = load %union.rec*, %union.rec** %arrayidx2318, align 8
  store %union.rec* %928, %union.rec** @zz_hold, align 8
  store %union.rec* %928, %union.rec** @zz_hold, align 8
  %929 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12319 = bitcast %union.rec* %929 to %struct.word_type*
  %olist2320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12319, i32 0, i32 0
  %arrayidx2321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2320, i32 0, i64 0
  %opred2322 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2321, i32 0, i32 0
  %930 = load %union.rec*, %union.rec** %opred2322, align 8
  %931 = load i32, i32* @zz_size, align 4
  %idxprom2323 = sext i32 %931 to i64
  %arrayidx2324 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2323
  store %union.rec* %930, %union.rec** %arrayidx2324, align 8
  br label %if.end.2325

if.end.2325:                                      ; preds = %if.else.2316, %if.then.2314
  br label %if.end.2326

if.end.2326:                                      ; preds = %if.end.2325, %if.then.2307
  %932 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12327 = bitcast %union.rec* %932 to %struct.word_type*
  %ou12328 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12327, i32 0, i32 1
  %os112329 = bitcast %union.FIRST_UNION* %ou12328 to %struct.anon*
  %otype2330 = getelementptr inbounds %struct.anon, %struct.anon* %os112329, i32 0, i32 0
  store i8 0, i8* %otype2330, align 1
  %933 = load %union.rec*, %union.rec** @zz_hold, align 8
  %934 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12331 = bitcast %union.rec* %934 to %struct.word_type*
  %olist2332 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12331, i32 0, i32 0
  %arrayidx2333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2332, i32 0, i64 1
  %osucc2334 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2333, i32 0, i32 1
  store %union.rec* %933, %union.rec** %osucc2334, align 8
  %935 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12335 = bitcast %union.rec* %935 to %struct.word_type*
  %olist2336 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12335, i32 0, i32 0
  %arrayidx2337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2336, i32 0, i64 1
  %opred2338 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2337, i32 0, i32 0
  store %union.rec* %933, %union.rec** %opred2338, align 8
  %936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12339 = bitcast %union.rec* %936 to %struct.word_type*
  %olist2340 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12339, i32 0, i32 0
  %arrayidx2341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2340, i32 0, i64 0
  %osucc2342 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2341, i32 0, i32 1
  store %union.rec* %933, %union.rec** %osucc2342, align 8
  %937 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12343 = bitcast %union.rec* %937 to %struct.word_type*
  %olist2344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12343, i32 0, i32 0
  %arrayidx2345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2344, i32 0, i64 0
  %opred2346 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2345, i32 0, i32 0
  store %union.rec* %933, %union.rec** %opred2346, align 8
  store %union.rec* %933, %union.rec** @xx_link, align 8
  %938 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %938, %union.rec** @zz_res, align 8
  %939 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a2347 = bitcast %union.rec* %939 to %struct.head_type*
  %oopt_constraints2348 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a2347, i32 0, i32 9
  %940 = load %union.rec*, %union.rec** %oopt_constraints2348, align 8
  store %union.rec* %940, %union.rec** @zz_hold, align 8
  %941 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2349 = icmp eq %union.rec* %941, null
  br i1 %cmp2349, label %cond.true.2351, label %cond.false.2352

cond.true.2351:                                   ; preds = %if.end.2326
  %942 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2387

cond.false.2352:                                  ; preds = %if.end.2326
  %943 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2353 = icmp eq %union.rec* %943, null
  br i1 %cmp2353, label %cond.true.2355, label %cond.false.2356

cond.true.2355:                                   ; preds = %cond.false.2352
  %944 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2385

cond.false.2356:                                  ; preds = %cond.false.2352
  %945 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12357 = bitcast %union.rec* %945 to %struct.word_type*
  %olist2358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12357, i32 0, i32 0
  %arrayidx2359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2358, i32 0, i64 0
  %opred2360 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2359, i32 0, i32 0
  %946 = load %union.rec*, %union.rec** %opred2360, align 8
  store %union.rec* %946, %union.rec** @zz_tmp, align 8
  %947 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12361 = bitcast %union.rec* %947 to %struct.word_type*
  %olist2362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12361, i32 0, i32 0
  %arrayidx2363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2362, i32 0, i64 0
  %opred2364 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2363, i32 0, i32 0
  %948 = load %union.rec*, %union.rec** %opred2364, align 8
  %949 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12365 = bitcast %union.rec* %949 to %struct.word_type*
  %olist2366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12365, i32 0, i32 0
  %arrayidx2367 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2366, i32 0, i64 0
  %opred2368 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2367, i32 0, i32 0
  store %union.rec* %948, %union.rec** %opred2368, align 8
  %950 = load %union.rec*, %union.rec** @zz_hold, align 8
  %951 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12369 = bitcast %union.rec* %951 to %struct.word_type*
  %olist2370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12369, i32 0, i32 0
  %arrayidx2371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2370, i32 0, i64 0
  %opred2372 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2371, i32 0, i32 0
  %952 = load %union.rec*, %union.rec** %opred2372, align 8
  %os12373 = bitcast %union.rec* %952 to %struct.word_type*
  %olist2374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12373, i32 0, i32 0
  %arrayidx2375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2374, i32 0, i64 0
  %osucc2376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2375, i32 0, i32 1
  store %union.rec* %950, %union.rec** %osucc2376, align 8
  %953 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %954 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12377 = bitcast %union.rec* %954 to %struct.word_type*
  %olist2378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12377, i32 0, i32 0
  %arrayidx2379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2378, i32 0, i64 0
  %opred2380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2379, i32 0, i32 0
  store %union.rec* %953, %union.rec** %opred2380, align 8
  %955 = load %union.rec*, %union.rec** @zz_res, align 8
  %956 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12381 = bitcast %union.rec* %956 to %struct.word_type*
  %olist2382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12381, i32 0, i32 0
  %arrayidx2383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2382, i32 0, i64 0
  %osucc2384 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2383, i32 0, i32 1
  store %union.rec* %955, %union.rec** %osucc2384, align 8
  br label %cond.end.2385

cond.end.2385:                                    ; preds = %cond.false.2356, %cond.true.2355
  %cond2386 = phi %union.rec* [ %944, %cond.true.2355 ], [ %955, %cond.false.2356 ]
  br label %cond.end.2387

cond.end.2387:                                    ; preds = %cond.end.2385, %cond.true.2351
  %cond2388 = phi %union.rec* [ %942, %cond.true.2351 ], [ %cond2386, %cond.end.2385 ]
  %957 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %957, %union.rec** @zz_res, align 8
  %958 = load %union.rec*, %union.rec** %z2226, align 8
  store %union.rec* %958, %union.rec** @zz_hold, align 8
  %959 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2389 = icmp eq %union.rec* %959, null
  br i1 %cmp2389, label %cond.true.2391, label %cond.false.2392

cond.true.2391:                                   ; preds = %cond.end.2387
  %960 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2427

cond.false.2392:                                  ; preds = %cond.end.2387
  %961 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2393 = icmp eq %union.rec* %961, null
  br i1 %cmp2393, label %cond.true.2395, label %cond.false.2396

cond.true.2395:                                   ; preds = %cond.false.2392
  %962 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2425

cond.false.2396:                                  ; preds = %cond.false.2392
  %963 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12397 = bitcast %union.rec* %963 to %struct.word_type*
  %olist2398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12397, i32 0, i32 0
  %arrayidx2399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2398, i32 0, i64 1
  %opred2400 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2399, i32 0, i32 0
  %964 = load %union.rec*, %union.rec** %opred2400, align 8
  store %union.rec* %964, %union.rec** @zz_tmp, align 8
  %965 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12401 = bitcast %union.rec* %965 to %struct.word_type*
  %olist2402 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12401, i32 0, i32 0
  %arrayidx2403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2402, i32 0, i64 1
  %opred2404 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2403, i32 0, i32 0
  %966 = load %union.rec*, %union.rec** %opred2404, align 8
  %967 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12405 = bitcast %union.rec* %967 to %struct.word_type*
  %olist2406 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12405, i32 0, i32 0
  %arrayidx2407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2406, i32 0, i64 1
  %opred2408 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2407, i32 0, i32 0
  store %union.rec* %966, %union.rec** %opred2408, align 8
  %968 = load %union.rec*, %union.rec** @zz_hold, align 8
  %969 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12409 = bitcast %union.rec* %969 to %struct.word_type*
  %olist2410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12409, i32 0, i32 0
  %arrayidx2411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2410, i32 0, i64 1
  %opred2412 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2411, i32 0, i32 0
  %970 = load %union.rec*, %union.rec** %opred2412, align 8
  %os12413 = bitcast %union.rec* %970 to %struct.word_type*
  %olist2414 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12413, i32 0, i32 0
  %arrayidx2415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2414, i32 0, i64 1
  %osucc2416 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2415, i32 0, i32 1
  store %union.rec* %968, %union.rec** %osucc2416, align 8
  %971 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %972 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12417 = bitcast %union.rec* %972 to %struct.word_type*
  %olist2418 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12417, i32 0, i32 0
  %arrayidx2419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2418, i32 0, i64 1
  %opred2420 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2419, i32 0, i32 0
  store %union.rec* %971, %union.rec** %opred2420, align 8
  %973 = load %union.rec*, %union.rec** @zz_res, align 8
  %974 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12421 = bitcast %union.rec* %974 to %struct.word_type*
  %olist2422 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12421, i32 0, i32 0
  %arrayidx2423 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2422, i32 0, i64 1
  %osucc2424 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2423, i32 0, i32 1
  store %union.rec* %973, %union.rec** %osucc2424, align 8
  br label %cond.end.2425

cond.end.2425:                                    ; preds = %cond.false.2396, %cond.true.2395
  %cond2426 = phi %union.rec* [ %962, %cond.true.2395 ], [ %973, %cond.false.2396 ]
  br label %cond.end.2427

cond.end.2427:                                    ; preds = %cond.end.2425, %cond.true.2391
  %cond2428 = phi %union.rec* [ %960, %cond.true.2391 ], [ %cond2426, %cond.end.2425 ]
  br label %if.end.2429

if.end.2429:                                      ; preds = %cond.end.2427, %if.end.2219
  %975 = load %union.rec*, %union.rec** %hd.addr, align 8
  call void @DetachGalley(%union.rec* %975)
  %976 = load %union.rec*, %union.rec** %hd.addr, align 8
  call void @KillGalley(%union.rec* %976, i32 1)
  %977 = load i32, i32* %prnt_flush, align 4
  %978 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @ParentFlush(i32 %977, %union.rec* %978, i32 1)
  br label %return

REJECT:                                           ; preds = %if.end.2091, %if.end.1971, %if.end.1243
  %979 = load %union.rec*, %union.rec** %dest, align 8
  %os22430 = bitcast %union.rec* %979 to %struct.closure_type*
  %oactual2431 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os22430, i32 0, i32 5
  %980 = load %union.rec*, %union.rec** %oactual2431, align 8
  %981 = load %union.rec*, %union.rec** @PrintSym, align 8
  %cmp2432 = icmp ne %union.rec* %980, %981
  br i1 %cmp2432, label %if.end.2436, label %if.then.2434

if.then.2434:                                     ; preds = %REJECT
  %982 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2435 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %982, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.2436

if.end.2436:                                      ; preds = %if.then.2434, %REJECT
  %983 = load %union.rec*, %union.rec** %inners, align 8
  %cmp2437 = icmp ne %union.rec* %983, null
  br i1 %cmp2437, label %if.then.2439, label %if.end.2441

if.then.2439:                                     ; preds = %if.end.2436
  %984 = load %union.rec*, %union.rec** %inners, align 8
  %call2440 = call i32 @DisposeObject(%union.rec* %984)
  br label %if.end.2441

if.end.2441:                                      ; preds = %if.then.2439, %if.end.2436
  %985 = load %union.rec*, %union.rec** %stop_link, align 8
  %cmp2442 = icmp ne %union.rec* %985, null
  br i1 %cmp2442, label %if.then.2444, label %if.end.2449

if.then.2444:                                     ; preds = %if.end.2441
  %986 = load %union.rec*, %union.rec** %hd.addr, align 8
  %987 = load %union.rec*, %union.rec** %stop_link, align 8
  %988 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @Promote(%union.rec* %986, %union.rec* %987, %union.rec* %988, i32 1)
  %989 = load i32, i32* %need_adjust, align 4
  %tobool2445 = icmp ne i32 %989, 0
  br i1 %tobool2445, label %if.then.2446, label %if.end.2448

if.then.2446:                                     ; preds = %if.then.2444
  %990 = load %union.rec*, %union.rec** %dest_encl, align 8
  %991 = load i32, i32* %stop_back, align 4
  %992 = load i32, i32* %stop_fwd, align 4
  %993 = load i32, i32* %dim, align 4
  call void @AdjustSize(%union.rec* %990, i32 %991, i32 %992, i32 %993)
  %994 = load %union.rec*, %union.rec** %dest_encl, align 8
  %995 = load i32, i32* %stop_perp_back, align 4
  %996 = load i32, i32* %stop_perp_fwd, align 4
  %997 = load i32, i32* %dim, align 4
  %sub2447 = sub nsw i32 1, %997
  call void @AdjustSize(%union.rec* %994, i32 %995, i32 %996, i32 %sub2447)
  br label %if.end.2448

if.end.2448:                                      ; preds = %if.then.2446, %if.then.2444
  br label %if.end.2449

if.end.2449:                                      ; preds = %if.end.2448, %if.end.2441
  %998 = load i32, i32* %target_is_internal, align 4
  %tobool2450 = icmp ne i32 %998, 0
  br i1 %tobool2450, label %land.lhs.true.2451, label %if.end.2560

land.lhs.true.2451:                               ; preds = %if.end.2449
  %999 = load i32, i32* %headers_seen, align 4
  %tobool2452 = icmp ne i32 %999, 0
  br i1 %tobool2452, label %if.then.2453, label %if.end.2560

if.then.2453:                                     ; preds = %land.lhs.true.2451
  %1000 = load %union.rec*, %union.rec** %hd.addr, align 8
  store %union.rec* %1000, %union.rec** %zlink2457, align 8
  br label %for.cond.2459

for.cond.2459:                                    ; preds = %if.end.2558, %if.then.2453
  %1001 = load %union.rec*, %union.rec** %zlink2457, align 8
  %os12460 = bitcast %union.rec* %1001 to %struct.word_type*
  %olist2461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12460, i32 0, i32 0
  %arrayidx2462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2461, i32 0, i64 0
  %osucc2463 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2462, i32 0, i32 1
  %1002 = load %union.rec*, %union.rec** %osucc2463, align 8
  %1003 = load %union.rec*, %union.rec** %link, align 8
  %cmp2464 = icmp ne %union.rec* %1002, %1003
  br i1 %cmp2464, label %for.body.2466, label %for.end.2559

for.body.2466:                                    ; preds = %for.cond.2459
  %1004 = load %union.rec*, %union.rec** %zlink2457, align 8
  %os12467 = bitcast %union.rec* %1004 to %struct.word_type*
  %olist2468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12467, i32 0, i32 0
  %arrayidx2469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2468, i32 0, i64 0
  %osucc2470 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2469, i32 0, i32 1
  %1005 = load %union.rec*, %union.rec** %osucc2470, align 8
  %os12471 = bitcast %union.rec* %1005 to %struct.word_type*
  %olist2472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12471, i32 0, i32 0
  %arrayidx2473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2472, i32 0, i64 1
  %opred2474 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2473, i32 0, i32 0
  %1006 = load %union.rec*, %union.rec** %opred2474, align 8
  store %union.rec* %1006, %union.rec** %z2455, align 8
  br label %for.cond.2475

for.cond.2475:                                    ; preds = %for.inc.2484, %for.body.2466
  %1007 = load %union.rec*, %union.rec** %z2455, align 8
  %os12476 = bitcast %union.rec* %1007 to %struct.word_type*
  %ou12477 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12476, i32 0, i32 1
  %os112478 = bitcast %union.FIRST_UNION* %ou12477 to %struct.anon*
  %otype2479 = getelementptr inbounds %struct.anon, %struct.anon* %os112478, i32 0, i32 0
  %1008 = load i8, i8* %otype2479, align 1
  %conv2480 = zext i8 %1008 to i32
  %cmp2481 = icmp eq i32 %conv2480, 0
  br i1 %cmp2481, label %for.body.2483, label %for.end.2489

for.body.2483:                                    ; preds = %for.cond.2475
  br label %for.inc.2484

for.inc.2484:                                     ; preds = %for.body.2483
  %1009 = load %union.rec*, %union.rec** %z2455, align 8
  %os12485 = bitcast %union.rec* %1009 to %struct.word_type*
  %olist2486 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12485, i32 0, i32 0
  %arrayidx2487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2486, i32 0, i64 1
  %opred2488 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2487, i32 0, i32 0
  %1010 = load %union.rec*, %union.rec** %opred2488, align 8
  store %union.rec* %1010, %union.rec** %z2455, align 8
  br label %for.cond.2475

for.end.2489:                                     ; preds = %for.cond.2475
  %1011 = load %union.rec*, %union.rec** %z2455, align 8
  store %union.rec* %1011, %union.rec** %top_z, align 8
  %1012 = load %union.rec*, %union.rec** %z2455, align 8
  %os12490 = bitcast %union.rec* %1012 to %struct.word_type*
  %ou12491 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12490, i32 0, i32 1
  %os112492 = bitcast %union.FIRST_UNION* %ou12491 to %struct.anon*
  %otype2493 = getelementptr inbounds %struct.anon, %struct.anon* %os112492, i32 0, i32 0
  %1013 = load i8, i8* %otype2493, align 1
  %conv2494 = zext i8 %1013 to i32
  %cmp2495 = icmp eq i32 %conv2494, 9
  br i1 %cmp2495, label %if.then.2497, label %if.end.2531

if.then.2497:                                     ; preds = %for.end.2489
  %1014 = load i32, i32* %dim, align 4
  %cmp2498 = icmp eq i32 %1014, 0
  br i1 %cmp2498, label %cond.true.2500, label %cond.false.2505

cond.true.2500:                                   ; preds = %if.then.2497
  %1015 = load %union.rec*, %union.rec** %z2455, align 8
  %os12501 = bitcast %union.rec* %1015 to %struct.word_type*
  %olist2502 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12501, i32 0, i32 0
  %arrayidx2503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2502, i32 0, i64 0
  %osucc2504 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2503, i32 0, i32 1
  %1016 = load %union.rec*, %union.rec** %osucc2504, align 8
  br label %cond.end.2510

cond.false.2505:                                  ; preds = %if.then.2497
  %1017 = load %union.rec*, %union.rec** %z2455, align 8
  %os12506 = bitcast %union.rec* %1017 to %struct.word_type*
  %olist2507 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12506, i32 0, i32 0
  %arrayidx2508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2507, i32 0, i64 0
  %opred2509 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2508, i32 0, i32 0
  %1018 = load %union.rec*, %union.rec** %opred2509, align 8
  br label %cond.end.2510

cond.end.2510:                                    ; preds = %cond.false.2505, %cond.true.2500
  %cond2511 = phi %union.rec* [ %1016, %cond.true.2500 ], [ %1018, %cond.false.2505 ]
  %os12512 = bitcast %union.rec* %cond2511 to %struct.word_type*
  %olist2513 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12512, i32 0, i32 0
  %arrayidx2514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2513, i32 0, i64 1
  %opred2515 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2514, i32 0, i32 0
  %1019 = load %union.rec*, %union.rec** %opred2515, align 8
  store %union.rec* %1019, %union.rec** %z2455, align 8
  br label %for.cond.2516

for.cond.2516:                                    ; preds = %for.inc.2525, %cond.end.2510
  %1020 = load %union.rec*, %union.rec** %z2455, align 8
  %os12517 = bitcast %union.rec* %1020 to %struct.word_type*
  %ou12518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12517, i32 0, i32 1
  %os112519 = bitcast %union.FIRST_UNION* %ou12518 to %struct.anon*
  %otype2520 = getelementptr inbounds %struct.anon, %struct.anon* %os112519, i32 0, i32 0
  %1021 = load i8, i8* %otype2520, align 1
  %conv2521 = zext i8 %1021 to i32
  %cmp2522 = icmp eq i32 %conv2521, 0
  br i1 %cmp2522, label %for.body.2524, label %for.end.2530

for.body.2524:                                    ; preds = %for.cond.2516
  br label %for.inc.2525

for.inc.2525:                                     ; preds = %for.body.2524
  %1022 = load %union.rec*, %union.rec** %z2455, align 8
  %os12526 = bitcast %union.rec* %1022 to %struct.word_type*
  %olist2527 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12526, i32 0, i32 0
  %arrayidx2528 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2527, i32 0, i64 1
  %opred2529 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2528, i32 0, i32 0
  %1023 = load %union.rec*, %union.rec** %opred2529, align 8
  store %union.rec* %1023, %union.rec** %z2455, align 8
  br label %for.cond.2516

for.end.2530:                                     ; preds = %for.cond.2516
  br label %if.end.2531

if.end.2531:                                      ; preds = %for.end.2530, %for.end.2489
  %1024 = load %union.rec*, %union.rec** %z2455, align 8
  %os12532 = bitcast %union.rec* %1024 to %struct.word_type*
  %ou12533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12532, i32 0, i32 1
  %os112534 = bitcast %union.FIRST_UNION* %ou12533 to %struct.anon*
  %otype2535 = getelementptr inbounds %struct.anon, %struct.anon* %os112534, i32 0, i32 0
  %1025 = load i8, i8* %otype2535, align 1
  %conv2536 = zext i8 %1025 to i32
  %cmp2537 = icmp sge i32 %conv2536, 20
  br i1 %cmp2537, label %land.lhs.true.2539, label %if.else.2553

land.lhs.true.2539:                               ; preds = %if.end.2531
  %1026 = load %union.rec*, %union.rec** %z2455, align 8
  %os12540 = bitcast %union.rec* %1026 to %struct.word_type*
  %ou12541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12540, i32 0, i32 1
  %os112542 = bitcast %union.FIRST_UNION* %ou12541 to %struct.anon*
  %otype2543 = getelementptr inbounds %struct.anon, %struct.anon* %os112542, i32 0, i32 0
  %1027 = load i8, i8* %otype2543, align 1
  %conv2544 = zext i8 %1027 to i32
  %cmp2545 = icmp sle i32 %conv2544, 23
  br i1 %cmp2545, label %if.then.2547, label %if.else.2553

if.then.2547:                                     ; preds = %land.lhs.true.2539
  %1028 = load %union.rec*, %union.rec** %top_z, align 8
  %1029 = load %union.rec*, %union.rec** %z2455, align 8
  %cmp2548 = icmp eq %union.rec* %1028, %1029
  br i1 %cmp2548, label %if.end.2552, label %if.then.2550

if.then.2550:                                     ; preds = %if.then.2547
  %1030 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2551 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1030, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.2552

if.end.2552:                                      ; preds = %if.then.2550, %if.then.2547
  %1031 = load %union.rec*, %union.rec** %hd.addr, align 8
  %1032 = load %union.rec*, %union.rec** %z2455, align 8
  call void @HandleHeader(%union.rec* %1031, %union.rec* %1032)
  br label %if.end.2558

if.else.2553:                                     ; preds = %land.lhs.true.2539, %if.end.2531
  %1033 = load %union.rec*, %union.rec** %zlink2457, align 8
  %os12554 = bitcast %union.rec* %1033 to %struct.word_type*
  %olist2555 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12554, i32 0, i32 0
  %arrayidx2556 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2555, i32 0, i64 0
  %osucc2557 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2556, i32 0, i32 1
  %1034 = load %union.rec*, %union.rec** %osucc2557, align 8
  store %union.rec* %1034, %union.rec** %zlink2457, align 8
  br label %if.end.2558

if.end.2558:                                      ; preds = %if.else.2553, %if.end.2552
  br label %for.cond.2459

for.end.2559:                                     ; preds = %for.cond.2459
  br label %if.end.2560

if.end.2560:                                      ; preds = %for.end.2559, %land.lhs.true.2451, %if.end.2449
  %1035 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a2561 = bitcast %union.rec* %1035 to %struct.head_type*
  %oheaders = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a2561, i32 0, i32 13
  %1036 = load %union.rec*, %union.rec** %oheaders, align 8
  %cmp2562 = icmp ne %union.rec* %1036, null
  br i1 %cmp2562, label %if.then.2564, label %if.end.2772

if.then.2564:                                     ; preds = %if.end.2560
  %1037 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a2566 = bitcast %union.rec* %1037 to %struct.head_type*
  %oheaders2567 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a2566, i32 0, i32 13
  %1038 = load %union.rec*, %union.rec** %oheaders2567, align 8
  %os12568 = bitcast %union.rec* %1038 to %struct.word_type*
  %olist2569 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12568, i32 0, i32 0
  %arrayidx2570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2569, i32 0, i64 0
  %osucc2571 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2570, i32 0, i32 1
  %1039 = load %union.rec*, %union.rec** %osucc2571, align 8
  %1040 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a2572 = bitcast %union.rec* %1040 to %struct.head_type*
  %oheaders2573 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a2572, i32 0, i32 13
  %1041 = load %union.rec*, %union.rec** %oheaders2573, align 8
  %cmp2574 = icmp ne %union.rec* %1039, %1041
  br i1 %cmp2574, label %if.end.2578, label %if.then.2576

if.then.2576:                                     ; preds = %if.then.2564
  %1042 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2577 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1042, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.2578

if.end.2578:                                      ; preds = %if.then.2576, %if.then.2564
  %1043 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os12579 = bitcast %union.rec* %1043 to %struct.word_type*
  %olist2580 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12579, i32 0, i32 0
  %arrayidx2581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2580, i32 0, i64 0
  %osucc2582 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2581, i32 0, i32 1
  %1044 = load %union.rec*, %union.rec** %osucc2582, align 8
  store %union.rec* %1044, %union.rec** %tmp, align 8
  %1045 = load %union.rec*, %union.rec** %tmp, align 8
  %1046 = load %union.rec*, %union.rec** %hd.addr, align 8
  %cmp2583 = icmp ne %union.rec* %1045, %1046
  br i1 %cmp2583, label %if.end.2587, label %if.then.2585

if.then.2585:                                     ; preds = %if.end.2578
  %1047 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2586 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1047, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.2587

if.end.2587:                                      ; preds = %if.then.2585, %if.end.2578
  store i32 0, i32* %headers_count, align 4
  %1048 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a2588 = bitcast %union.rec* %1048 to %struct.head_type*
  %oheaders2589 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a2588, i32 0, i32 13
  %1049 = load %union.rec*, %union.rec** %oheaders2589, align 8
  %os12590 = bitcast %union.rec* %1049 to %struct.word_type*
  %olist2591 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12590, i32 0, i32 0
  %arrayidx2592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2591, i32 0, i64 0
  %osucc2593 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2592, i32 0, i32 1
  %1050 = load %union.rec*, %union.rec** %osucc2593, align 8
  store %union.rec* %1050, %union.rec** %link, align 8
  br label %for.cond.2594

for.cond.2594:                                    ; preds = %for.inc.2761, %if.end.2587
  %1051 = load %union.rec*, %union.rec** %link, align 8
  %1052 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a2595 = bitcast %union.rec* %1052 to %struct.head_type*
  %oheaders2596 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a2595, i32 0, i32 13
  %1053 = load %union.rec*, %union.rec** %oheaders2596, align 8
  %cmp2597 = icmp ne %union.rec* %1051, %1053
  br i1 %cmp2597, label %for.body.2599, label %for.end.2766

for.body.2599:                                    ; preds = %for.cond.2594
  %1054 = load %union.rec*, %union.rec** %link, align 8
  %os12600 = bitcast %union.rec* %1054 to %struct.word_type*
  %olist2601 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12600, i32 0, i32 0
  %arrayidx2602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2601, i32 0, i64 1
  %opred2603 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2602, i32 0, i32 0
  %1055 = load %union.rec*, %union.rec** %opred2603, align 8
  store %union.rec* %1055, %union.rec** %y, align 8
  br label %for.cond.2604

for.cond.2604:                                    ; preds = %for.inc.2613, %for.body.2599
  %1056 = load %union.rec*, %union.rec** %y, align 8
  %os12605 = bitcast %union.rec* %1056 to %struct.word_type*
  %ou12606 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12605, i32 0, i32 1
  %os112607 = bitcast %union.FIRST_UNION* %ou12606 to %struct.anon*
  %otype2608 = getelementptr inbounds %struct.anon, %struct.anon* %os112607, i32 0, i32 0
  %1057 = load i8, i8* %otype2608, align 1
  %conv2609 = zext i8 %1057 to i32
  %cmp2610 = icmp eq i32 %conv2609, 0
  br i1 %cmp2610, label %for.body.2612, label %for.end.2618

for.body.2612:                                    ; preds = %for.cond.2604
  br label %for.inc.2613

for.inc.2613:                                     ; preds = %for.body.2612
  %1058 = load %union.rec*, %union.rec** %y, align 8
  %os12614 = bitcast %union.rec* %1058 to %struct.word_type*
  %olist2615 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12614, i32 0, i32 0
  %arrayidx2616 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2615, i32 0, i64 1
  %opred2617 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2616, i32 0, i32 0
  %1059 = load %union.rec*, %union.rec** %opred2617, align 8
  store %union.rec* %1059, %union.rec** %y, align 8
  br label %for.cond.2604

for.end.2618:                                     ; preds = %for.cond.2604
  %1060 = load %union.rec*, %union.rec** %y, align 8
  %os12619 = bitcast %union.rec* %1060 to %struct.word_type*
  %ou12620 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12619, i32 0, i32 1
  %os112621 = bitcast %union.FIRST_UNION* %ou12620 to %struct.anon*
  %otype2622 = getelementptr inbounds %struct.anon, %struct.anon* %os112621, i32 0, i32 0
  %1061 = load i8, i8* %otype2622, align 1
  %conv2623 = zext i8 %1061 to i32
  %cmp2624 = icmp ne i32 %conv2623, 16
  br i1 %cmp2624, label %land.lhs.true.2626, label %if.then.2634

land.lhs.true.2626:                               ; preds = %for.end.2618
  %1062 = load %union.rec*, %union.rec** %y, align 8
  %os12627 = bitcast %union.rec* %1062 to %struct.word_type*
  %ou12628 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12627, i32 0, i32 1
  %os112629 = bitcast %union.FIRST_UNION* %ou12628 to %struct.anon*
  %otype2630 = getelementptr inbounds %struct.anon, %struct.anon* %os112629, i32 0, i32 0
  %1063 = load i8, i8* %otype2630, align 1
  %conv2631 = zext i8 %1063 to i32
  %cmp2632 = icmp ne i32 %conv2631, 15
  br i1 %cmp2632, label %if.end.2636, label %if.then.2634

if.then.2634:                                     ; preds = %land.lhs.true.2626, %for.end.2618
  %1064 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2635 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1064, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.2636

if.end.2636:                                      ; preds = %if.then.2634, %land.lhs.true.2626
  %1065 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv2637 = zext i8 %1065 to i32
  store i32 %conv2637, i32* @zz_size, align 4
  %conv2638 = sext i32 %conv2637 to i64
  %cmp2639 = icmp uge i64 %conv2638, 265
  br i1 %cmp2639, label %if.then.2641, label %if.else.2643

if.then.2641:                                     ; preds = %if.end.2636
  %1066 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2642 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1066)
  br label %if.end.2660

if.else.2643:                                     ; preds = %if.end.2636
  %1067 = load i32, i32* @zz_size, align 4
  %idxprom2644 = sext i32 %1067 to i64
  %arrayidx2645 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2644
  %1068 = load %union.rec*, %union.rec** %arrayidx2645, align 8
  %cmp2646 = icmp eq %union.rec* %1068, null
  br i1 %cmp2646, label %if.then.2648, label %if.else.2650

if.then.2648:                                     ; preds = %if.else.2643
  %1069 = load i32, i32* @zz_size, align 4
  %1070 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2649 = call %union.rec* @GetMemory(i32 %1069, %struct.FILE_POS* %1070)
  store %union.rec* %call2649, %union.rec** @zz_hold, align 8
  br label %if.end.2659

if.else.2650:                                     ; preds = %if.else.2643
  %1071 = load i32, i32* @zz_size, align 4
  %idxprom2651 = sext i32 %1071 to i64
  %arrayidx2652 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2651
  %1072 = load %union.rec*, %union.rec** %arrayidx2652, align 8
  store %union.rec* %1072, %union.rec** @zz_hold, align 8
  store %union.rec* %1072, %union.rec** @zz_hold, align 8
  %1073 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12653 = bitcast %union.rec* %1073 to %struct.word_type*
  %olist2654 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12653, i32 0, i32 0
  %arrayidx2655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2654, i32 0, i64 0
  %opred2656 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2655, i32 0, i32 0
  %1074 = load %union.rec*, %union.rec** %opred2656, align 8
  %1075 = load i32, i32* @zz_size, align 4
  %idxprom2657 = sext i32 %1075 to i64
  %arrayidx2658 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2657
  store %union.rec* %1074, %union.rec** %arrayidx2658, align 8
  br label %if.end.2659

if.end.2659:                                      ; preds = %if.else.2650, %if.then.2648
  br label %if.end.2660

if.end.2660:                                      ; preds = %if.end.2659, %if.then.2641
  %1076 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12661 = bitcast %union.rec* %1076 to %struct.word_type*
  %ou12662 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12661, i32 0, i32 1
  %os112663 = bitcast %union.FIRST_UNION* %ou12662 to %struct.anon*
  %otype2664 = getelementptr inbounds %struct.anon, %struct.anon* %os112663, i32 0, i32 0
  store i8 0, i8* %otype2664, align 1
  %1077 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1078 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12665 = bitcast %union.rec* %1078 to %struct.word_type*
  %olist2666 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12665, i32 0, i32 0
  %arrayidx2667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2666, i32 0, i64 1
  %osucc2668 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2667, i32 0, i32 1
  store %union.rec* %1077, %union.rec** %osucc2668, align 8
  %1079 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12669 = bitcast %union.rec* %1079 to %struct.word_type*
  %olist2670 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12669, i32 0, i32 0
  %arrayidx2671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2670, i32 0, i64 1
  %opred2672 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2671, i32 0, i32 0
  store %union.rec* %1077, %union.rec** %opred2672, align 8
  %1080 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12673 = bitcast %union.rec* %1080 to %struct.word_type*
  %olist2674 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12673, i32 0, i32 0
  %arrayidx2675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2674, i32 0, i64 0
  %osucc2676 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2675, i32 0, i32 1
  store %union.rec* %1077, %union.rec** %osucc2676, align 8
  %1081 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12677 = bitcast %union.rec* %1081 to %struct.word_type*
  %olist2678 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12677, i32 0, i32 0
  %arrayidx2679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2678, i32 0, i64 0
  %opred2680 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2679, i32 0, i32 0
  store %union.rec* %1077, %union.rec** %opred2680, align 8
  store %union.rec* %1077, %union.rec** @xx_link, align 8
  %1082 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1082, %union.rec** @zz_res, align 8
  %1083 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1083, %union.rec** @zz_hold, align 8
  %1084 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2681 = icmp eq %union.rec* %1084, null
  br i1 %cmp2681, label %cond.true.2683, label %cond.false.2684

cond.true.2683:                                   ; preds = %if.end.2660
  %1085 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2719

cond.false.2684:                                  ; preds = %if.end.2660
  %1086 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2685 = icmp eq %union.rec* %1086, null
  br i1 %cmp2685, label %cond.true.2687, label %cond.false.2688

cond.true.2687:                                   ; preds = %cond.false.2684
  %1087 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2717

cond.false.2688:                                  ; preds = %cond.false.2684
  %1088 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12689 = bitcast %union.rec* %1088 to %struct.word_type*
  %olist2690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12689, i32 0, i32 0
  %arrayidx2691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2690, i32 0, i64 0
  %opred2692 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2691, i32 0, i32 0
  %1089 = load %union.rec*, %union.rec** %opred2692, align 8
  store %union.rec* %1089, %union.rec** @zz_tmp, align 8
  %1090 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12693 = bitcast %union.rec* %1090 to %struct.word_type*
  %olist2694 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12693, i32 0, i32 0
  %arrayidx2695 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2694, i32 0, i64 0
  %opred2696 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2695, i32 0, i32 0
  %1091 = load %union.rec*, %union.rec** %opred2696, align 8
  %1092 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12697 = bitcast %union.rec* %1092 to %struct.word_type*
  %olist2698 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12697, i32 0, i32 0
  %arrayidx2699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2698, i32 0, i64 0
  %opred2700 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2699, i32 0, i32 0
  store %union.rec* %1091, %union.rec** %opred2700, align 8
  %1093 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1094 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12701 = bitcast %union.rec* %1094 to %struct.word_type*
  %olist2702 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12701, i32 0, i32 0
  %arrayidx2703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2702, i32 0, i64 0
  %opred2704 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2703, i32 0, i32 0
  %1095 = load %union.rec*, %union.rec** %opred2704, align 8
  %os12705 = bitcast %union.rec* %1095 to %struct.word_type*
  %olist2706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12705, i32 0, i32 0
  %arrayidx2707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2706, i32 0, i64 0
  %osucc2708 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2707, i32 0, i32 1
  store %union.rec* %1093, %union.rec** %osucc2708, align 8
  %1096 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1097 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12709 = bitcast %union.rec* %1097 to %struct.word_type*
  %olist2710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12709, i32 0, i32 0
  %arrayidx2711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2710, i32 0, i64 0
  %opred2712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2711, i32 0, i32 0
  store %union.rec* %1096, %union.rec** %opred2712, align 8
  %1098 = load %union.rec*, %union.rec** @zz_res, align 8
  %1099 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12713 = bitcast %union.rec* %1099 to %struct.word_type*
  %olist2714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12713, i32 0, i32 0
  %arrayidx2715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2714, i32 0, i64 0
  %osucc2716 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2715, i32 0, i32 1
  store %union.rec* %1098, %union.rec** %osucc2716, align 8
  br label %cond.end.2717

cond.end.2717:                                    ; preds = %cond.false.2688, %cond.true.2687
  %cond2718 = phi %union.rec* [ %1087, %cond.true.2687 ], [ %1098, %cond.false.2688 ]
  br label %cond.end.2719

cond.end.2719:                                    ; preds = %cond.end.2717, %cond.true.2683
  %cond2720 = phi %union.rec* [ %1085, %cond.true.2683 ], [ %cond2718, %cond.end.2717 ]
  %1100 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1100, %union.rec** @zz_res, align 8
  %1101 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1101, %union.rec** @zz_hold, align 8
  %1102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2721 = icmp eq %union.rec* %1102, null
  br i1 %cmp2721, label %cond.true.2723, label %cond.false.2724

cond.true.2723:                                   ; preds = %cond.end.2719
  %1103 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2759

cond.false.2724:                                  ; preds = %cond.end.2719
  %1104 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp2725 = icmp eq %union.rec* %1104, null
  br i1 %cmp2725, label %cond.true.2727, label %cond.false.2728

cond.true.2727:                                   ; preds = %cond.false.2724
  %1105 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.2757

cond.false.2728:                                  ; preds = %cond.false.2724
  %1106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12729 = bitcast %union.rec* %1106 to %struct.word_type*
  %olist2730 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12729, i32 0, i32 0
  %arrayidx2731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2730, i32 0, i64 1
  %opred2732 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2731, i32 0, i32 0
  %1107 = load %union.rec*, %union.rec** %opred2732, align 8
  store %union.rec* %1107, %union.rec** @zz_tmp, align 8
  %1108 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12733 = bitcast %union.rec* %1108 to %struct.word_type*
  %olist2734 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12733, i32 0, i32 0
  %arrayidx2735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2734, i32 0, i64 1
  %opred2736 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2735, i32 0, i32 0
  %1109 = load %union.rec*, %union.rec** %opred2736, align 8
  %1110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12737 = bitcast %union.rec* %1110 to %struct.word_type*
  %olist2738 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12737, i32 0, i32 0
  %arrayidx2739 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2738, i32 0, i64 1
  %opred2740 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2739, i32 0, i32 0
  store %union.rec* %1109, %union.rec** %opred2740, align 8
  %1111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1112 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12741 = bitcast %union.rec* %1112 to %struct.word_type*
  %olist2742 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12741, i32 0, i32 0
  %arrayidx2743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2742, i32 0, i64 1
  %opred2744 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2743, i32 0, i32 0
  %1113 = load %union.rec*, %union.rec** %opred2744, align 8
  %os12745 = bitcast %union.rec* %1113 to %struct.word_type*
  %olist2746 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12745, i32 0, i32 0
  %arrayidx2747 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2746, i32 0, i64 1
  %osucc2748 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2747, i32 0, i32 1
  store %union.rec* %1111, %union.rec** %osucc2748, align 8
  %1114 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1115 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12749 = bitcast %union.rec* %1115 to %struct.word_type*
  %olist2750 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12749, i32 0, i32 0
  %arrayidx2751 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2750, i32 0, i64 1
  %opred2752 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2751, i32 0, i32 0
  store %union.rec* %1114, %union.rec** %opred2752, align 8
  %1116 = load %union.rec*, %union.rec** @zz_res, align 8
  %1117 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os12753 = bitcast %union.rec* %1117 to %struct.word_type*
  %olist2754 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12753, i32 0, i32 0
  %arrayidx2755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2754, i32 0, i64 1
  %osucc2756 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2755, i32 0, i32 1
  store %union.rec* %1116, %union.rec** %osucc2756, align 8
  br label %cond.end.2757

cond.end.2757:                                    ; preds = %cond.false.2728, %cond.true.2727
  %cond2758 = phi %union.rec* [ %1105, %cond.true.2727 ], [ %1116, %cond.false.2728 ]
  br label %cond.end.2759

cond.end.2759:                                    ; preds = %cond.end.2757, %cond.true.2723
  %cond2760 = phi %union.rec* [ %1103, %cond.true.2723 ], [ %cond2758, %cond.end.2757 ]
  %1118 = load i32, i32* %headers_count, align 4
  %inc = add nsw i32 %1118, 1
  store i32 %inc, i32* %headers_count, align 4
  br label %for.inc.2761

for.inc.2761:                                     ; preds = %cond.end.2759
  %1119 = load %union.rec*, %union.rec** %link, align 8
  %os12762 = bitcast %union.rec* %1119 to %struct.word_type*
  %olist2763 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12762, i32 0, i32 0
  %arrayidx2764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2763, i32 0, i64 0
  %osucc2765 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2764, i32 0, i32 1
  %1120 = load %union.rec*, %union.rec** %osucc2765, align 8
  store %union.rec* %1120, %union.rec** %link, align 8
  br label %for.cond.2594

for.end.2766:                                     ; preds = %for.cond.2594
  %1121 = load i32, i32* %headers_count, align 4
  %rem = srem i32 %1121, 2
  %cmp2767 = icmp eq i32 %rem, 0
  br i1 %cmp2767, label %if.end.2771, label %if.then.2769

if.then.2769:                                     ; preds = %for.end.2766
  %1122 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2770 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.2771

if.end.2771:                                      ; preds = %if.then.2769, %for.end.2766
  br label %if.end.2772

if.end.2772:                                      ; preds = %if.end.2771, %if.end.2560
  %1123 = load %union.rec*, %union.rec** %hd.addr, align 8
  call void @DetachGalley(%union.rec* %1123)
  %1124 = load %union.rec*, %union.rec** %dest_index, align 8
  %os12773 = bitcast %union.rec* %1124 to %struct.word_type*
  %ou12774 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12773, i32 0, i32 1
  %os112775 = bitcast %union.FIRST_UNION* %ou12774 to %struct.anon*
  %otype2776 = getelementptr inbounds %struct.anon, %struct.anon* %os112775, i32 0, i32 0
  %1125 = load i8, i8* %otype2776, align 1
  %conv2777 = zext i8 %1125 to i32
  %cmp2778 = icmp eq i32 %conv2777, 122
  br i1 %cmp2778, label %if.end.2782, label %if.then.2780

if.then.2780:                                     ; preds = %if.end.2772
  %1126 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2781 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.2782

if.end.2782:                                      ; preds = %if.then.2780, %if.end.2772
  %1127 = load i32, i32* %prnt_flush, align 4
  %tobool2783 = icmp ne i32 %1127, 0
  br i1 %tobool2783, label %lor.end.2794, label %lor.rhs.2784

lor.rhs.2784:                                     ; preds = %if.end.2782
  %1128 = load %union.rec*, %union.rec** %dest_index, align 8
  %os12785 = bitcast %union.rec* %1128 to %struct.word_type*
  %ou22786 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12785, i32 0, i32 2
  %os232787 = bitcast %union.SECOND_UNION* %ou22786 to %struct.anon.2*
  %oblocked2788 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os232787, i32 0, i32 2
  %bf.load2789 = load i16, i16* %oblocked2788, align 2
  %bf.lshr2790 = lshr i16 %bf.load2789, 5
  %bf.clear2791 = and i16 %bf.lshr2790, 1
  %bf.cast2792 = zext i16 %bf.clear2791 to i32
  %tobool2793 = icmp ne i32 %bf.cast2792, 0
  br label %lor.end.2794

lor.end.2794:                                     ; preds = %lor.rhs.2784, %if.end.2782
  %1129 = phi i1 [ true, %if.end.2782 ], [ %tobool2793, %lor.rhs.2784 ]
  %lor.ext2795 = zext i1 %1129 to i32
  store i32 %lor.ext2795, i32* %prnt_flush, align 4
  %1130 = load %union.rec*, %union.rec** %dest_index, align 8
  store %union.rec* %1130, %union.rec** @xx_hold, align 8
  br label %while.cond.2796

while.cond.2796:                                  ; preds = %cond.end.2913, %lor.end.2794
  %1131 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os12797 = bitcast %union.rec* %1131 to %struct.word_type*
  %olist2798 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12797, i32 0, i32 0
  %arrayidx2799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2798, i32 0, i64 1
  %osucc2800 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2799, i32 0, i32 1
  %1132 = load %union.rec*, %union.rec** %osucc2800, align 8
  %1133 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp2801 = icmp ne %union.rec* %1132, %1133
  br i1 %cmp2801, label %while.body.2803, label %while.end.2923

while.body.2803:                                  ; preds = %while.cond.2796
  %1134 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os12804 = bitcast %union.rec* %1134 to %struct.word_type*
  %olist2805 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12804, i32 0, i32 0
  %arrayidx2806 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2805, i32 0, i64 1
  %osucc2807 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2806, i32 0, i32 1
  %1135 = load %union.rec*, %union.rec** %osucc2807, align 8
  store %union.rec* %1135, %union.rec** @xx_link, align 8
  %1136 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1136, %union.rec** @zz_hold, align 8
  %1137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12808 = bitcast %union.rec* %1137 to %struct.word_type*
  %olist2809 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12808, i32 0, i32 0
  %arrayidx2810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2809, i32 0, i64 1
  %osucc2811 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2810, i32 0, i32 1
  %1138 = load %union.rec*, %union.rec** %osucc2811, align 8
  %1139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2812 = icmp eq %union.rec* %1138, %1139
  br i1 %cmp2812, label %cond.true.2814, label %cond.false.2815

cond.true.2814:                                   ; preds = %while.body.2803
  br label %cond.end.2844

cond.false.2815:                                  ; preds = %while.body.2803
  %1140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12816 = bitcast %union.rec* %1140 to %struct.word_type*
  %olist2817 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12816, i32 0, i32 0
  %arrayidx2818 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2817, i32 0, i64 1
  %osucc2819 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2818, i32 0, i32 1
  %1141 = load %union.rec*, %union.rec** %osucc2819, align 8
  store %union.rec* %1141, %union.rec** @zz_res, align 8
  %1142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12820 = bitcast %union.rec* %1142 to %struct.word_type*
  %olist2821 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12820, i32 0, i32 0
  %arrayidx2822 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2821, i32 0, i64 1
  %opred2823 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2822, i32 0, i32 0
  %1143 = load %union.rec*, %union.rec** %opred2823, align 8
  %1144 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12824 = bitcast %union.rec* %1144 to %struct.word_type*
  %olist2825 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12824, i32 0, i32 0
  %arrayidx2826 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2825, i32 0, i64 1
  %opred2827 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2826, i32 0, i32 0
  store %union.rec* %1143, %union.rec** %opred2827, align 8
  %1145 = load %union.rec*, %union.rec** @zz_res, align 8
  %1146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12828 = bitcast %union.rec* %1146 to %struct.word_type*
  %olist2829 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12828, i32 0, i32 0
  %arrayidx2830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2829, i32 0, i64 1
  %opred2831 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2830, i32 0, i32 0
  %1147 = load %union.rec*, %union.rec** %opred2831, align 8
  %os12832 = bitcast %union.rec* %1147 to %struct.word_type*
  %olist2833 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12832, i32 0, i32 0
  %arrayidx2834 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2833, i32 0, i64 1
  %osucc2835 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2834, i32 0, i32 1
  store %union.rec* %1145, %union.rec** %osucc2835, align 8
  %1148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12836 = bitcast %union.rec* %1149 to %struct.word_type*
  %olist2837 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12836, i32 0, i32 0
  %arrayidx2838 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2837, i32 0, i64 1
  %osucc2839 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2838, i32 0, i32 1
  store %union.rec* %1148, %union.rec** %osucc2839, align 8
  %1150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12840 = bitcast %union.rec* %1150 to %struct.word_type*
  %olist2841 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12840, i32 0, i32 0
  %arrayidx2842 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2841, i32 0, i64 1
  %opred2843 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2842, i32 0, i32 0
  store %union.rec* %1148, %union.rec** %opred2843, align 8
  %1151 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2844

cond.end.2844:                                    ; preds = %cond.false.2815, %cond.true.2814
  %cond2845 = phi %union.rec* [ null, %cond.true.2814 ], [ %1151, %cond.false.2815 ]
  %1152 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1152, %union.rec** @zz_hold, align 8
  %1153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12846 = bitcast %union.rec* %1153 to %struct.word_type*
  %olist2847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12846, i32 0, i32 0
  %arrayidx2848 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2847, i32 0, i64 0
  %osucc2849 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2848, i32 0, i32 1
  %1154 = load %union.rec*, %union.rec** %osucc2849, align 8
  %1155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2850 = icmp eq %union.rec* %1154, %1155
  br i1 %cmp2850, label %cond.true.2852, label %cond.false.2853

cond.true.2852:                                   ; preds = %cond.end.2844
  br label %cond.end.2882

cond.false.2853:                                  ; preds = %cond.end.2844
  %1156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12854 = bitcast %union.rec* %1156 to %struct.word_type*
  %olist2855 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12854, i32 0, i32 0
  %arrayidx2856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2855, i32 0, i64 0
  %osucc2857 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2856, i32 0, i32 1
  %1157 = load %union.rec*, %union.rec** %osucc2857, align 8
  store %union.rec* %1157, %union.rec** @zz_res, align 8
  %1158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12858 = bitcast %union.rec* %1158 to %struct.word_type*
  %olist2859 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12858, i32 0, i32 0
  %arrayidx2860 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2859, i32 0, i64 0
  %opred2861 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2860, i32 0, i32 0
  %1159 = load %union.rec*, %union.rec** %opred2861, align 8
  %1160 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12862 = bitcast %union.rec* %1160 to %struct.word_type*
  %olist2863 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12862, i32 0, i32 0
  %arrayidx2864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2863, i32 0, i64 0
  %opred2865 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2864, i32 0, i32 0
  store %union.rec* %1159, %union.rec** %opred2865, align 8
  %1161 = load %union.rec*, %union.rec** @zz_res, align 8
  %1162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12866 = bitcast %union.rec* %1162 to %struct.word_type*
  %olist2867 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12866, i32 0, i32 0
  %arrayidx2868 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2867, i32 0, i64 0
  %opred2869 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2868, i32 0, i32 0
  %1163 = load %union.rec*, %union.rec** %opred2869, align 8
  %os12870 = bitcast %union.rec* %1163 to %struct.word_type*
  %olist2871 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12870, i32 0, i32 0
  %arrayidx2872 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2871, i32 0, i64 0
  %osucc2873 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2872, i32 0, i32 1
  store %union.rec* %1161, %union.rec** %osucc2873, align 8
  %1164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12874 = bitcast %union.rec* %1165 to %struct.word_type*
  %olist2875 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12874, i32 0, i32 0
  %arrayidx2876 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2875, i32 0, i64 0
  %osucc2877 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2876, i32 0, i32 1
  store %union.rec* %1164, %union.rec** %osucc2877, align 8
  %1166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12878 = bitcast %union.rec* %1166 to %struct.word_type*
  %olist2879 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12878, i32 0, i32 0
  %arrayidx2880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2879, i32 0, i64 0
  %opred2881 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2880, i32 0, i32 0
  store %union.rec* %1164, %union.rec** %opred2881, align 8
  %1167 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2882

cond.end.2882:                                    ; preds = %cond.false.2853, %cond.true.2852
  %cond2883 = phi %union.rec* [ null, %cond.true.2852 ], [ %1167, %cond.false.2853 ]
  %1168 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1168, %union.rec** @zz_hold, align 8
  %1169 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1169, %union.rec** @zz_hold, align 8
  %1170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12884 = bitcast %union.rec* %1170 to %struct.word_type*
  %ou12885 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12884, i32 0, i32 1
  %os112886 = bitcast %union.FIRST_UNION* %ou12885 to %struct.anon*
  %otype2887 = getelementptr inbounds %struct.anon, %struct.anon* %os112886, i32 0, i32 0
  %1171 = load i8, i8* %otype2887, align 1
  %conv2888 = zext i8 %1171 to i32
  %cmp2889 = icmp eq i32 %conv2888, 11
  br i1 %cmp2889, label %cond.true.2899, label %lor.lhs.false.2891

lor.lhs.false.2891:                               ; preds = %cond.end.2882
  %1172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12892 = bitcast %union.rec* %1172 to %struct.word_type*
  %ou12893 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12892, i32 0, i32 1
  %os112894 = bitcast %union.FIRST_UNION* %ou12893 to %struct.anon*
  %otype2895 = getelementptr inbounds %struct.anon, %struct.anon* %os112894, i32 0, i32 0
  %1173 = load i8, i8* %otype2895, align 1
  %conv2896 = zext i8 %1173 to i32
  %cmp2897 = icmp eq i32 %conv2896, 12
  br i1 %cmp2897, label %cond.true.2899, label %cond.false.2905

cond.true.2899:                                   ; preds = %lor.lhs.false.2891, %cond.end.2882
  %1174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12900 = bitcast %union.rec* %1174 to %struct.word_type*
  %ou12901 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12900, i32 0, i32 1
  %os112902 = bitcast %union.FIRST_UNION* %ou12901 to %struct.anon*
  %orec_size2903 = getelementptr inbounds %struct.anon, %struct.anon* %os112902, i32 0, i32 1
  %1175 = load i8, i8* %orec_size2903, align 1
  %conv2904 = zext i8 %1175 to i32
  br label %cond.end.2913

cond.false.2905:                                  ; preds = %lor.lhs.false.2891
  %1176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12906 = bitcast %union.rec* %1176 to %struct.word_type*
  %ou12907 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12906, i32 0, i32 1
  %os112908 = bitcast %union.FIRST_UNION* %ou12907 to %struct.anon*
  %otype2909 = getelementptr inbounds %struct.anon, %struct.anon* %os112908, i32 0, i32 0
  %1177 = load i8, i8* %otype2909, align 1
  %idxprom2910 = zext i8 %1177 to i64
  %arrayidx2911 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom2910
  %1178 = load i8, i8* %arrayidx2911, align 1
  %conv2912 = zext i8 %1178 to i32
  br label %cond.end.2913

cond.end.2913:                                    ; preds = %cond.false.2905, %cond.true.2899
  %cond2914 = phi i32 [ %conv2904, %cond.true.2899 ], [ %conv2912, %cond.false.2905 ]
  store i32 %cond2914, i32* @zz_size, align 4
  %1179 = load i32, i32* @zz_size, align 4
  %idxprom2915 = sext i32 %1179 to i64
  %arrayidx2916 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2915
  %1180 = load %union.rec*, %union.rec** %arrayidx2916, align 8
  %1181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12917 = bitcast %union.rec* %1181 to %struct.word_type*
  %olist2918 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12917, i32 0, i32 0
  %arrayidx2919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2918, i32 0, i64 0
  %opred2920 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2919, i32 0, i32 0
  store %union.rec* %1180, %union.rec** %opred2920, align 8
  %1182 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1183 = load i32, i32* @zz_size, align 4
  %idxprom2921 = sext i32 %1183 to i64
  %arrayidx2922 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom2921
  store %union.rec* %1182, %union.rec** %arrayidx2922, align 8
  br label %while.cond.2796

while.end.2923:                                   ; preds = %while.cond.2796
  br label %while.cond.2924

while.cond.2924:                                  ; preds = %cond.end.3041, %while.end.2923
  %1184 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os12925 = bitcast %union.rec* %1184 to %struct.word_type*
  %olist2926 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12925, i32 0, i32 0
  %arrayidx2927 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2926, i32 0, i64 0
  %osucc2928 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2927, i32 0, i32 1
  %1185 = load %union.rec*, %union.rec** %osucc2928, align 8
  %1186 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp2929 = icmp ne %union.rec* %1185, %1186
  br i1 %cmp2929, label %while.body.2931, label %while.end.3051

while.body.2931:                                  ; preds = %while.cond.2924
  %1187 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os12932 = bitcast %union.rec* %1187 to %struct.word_type*
  %olist2933 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12932, i32 0, i32 0
  %arrayidx2934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2933, i32 0, i64 0
  %osucc2935 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2934, i32 0, i32 1
  %1188 = load %union.rec*, %union.rec** %osucc2935, align 8
  store %union.rec* %1188, %union.rec** @xx_link, align 8
  %1189 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1189, %union.rec** @zz_hold, align 8
  %1190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12936 = bitcast %union.rec* %1190 to %struct.word_type*
  %olist2937 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12936, i32 0, i32 0
  %arrayidx2938 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2937, i32 0, i64 1
  %osucc2939 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2938, i32 0, i32 1
  %1191 = load %union.rec*, %union.rec** %osucc2939, align 8
  %1192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2940 = icmp eq %union.rec* %1191, %1192
  br i1 %cmp2940, label %cond.true.2942, label %cond.false.2943

cond.true.2942:                                   ; preds = %while.body.2931
  br label %cond.end.2972

cond.false.2943:                                  ; preds = %while.body.2931
  %1193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12944 = bitcast %union.rec* %1193 to %struct.word_type*
  %olist2945 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12944, i32 0, i32 0
  %arrayidx2946 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2945, i32 0, i64 1
  %osucc2947 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2946, i32 0, i32 1
  %1194 = load %union.rec*, %union.rec** %osucc2947, align 8
  store %union.rec* %1194, %union.rec** @zz_res, align 8
  %1195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12948 = bitcast %union.rec* %1195 to %struct.word_type*
  %olist2949 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12948, i32 0, i32 0
  %arrayidx2950 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2949, i32 0, i64 1
  %opred2951 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2950, i32 0, i32 0
  %1196 = load %union.rec*, %union.rec** %opred2951, align 8
  %1197 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12952 = bitcast %union.rec* %1197 to %struct.word_type*
  %olist2953 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12952, i32 0, i32 0
  %arrayidx2954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2953, i32 0, i64 1
  %opred2955 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2954, i32 0, i32 0
  store %union.rec* %1196, %union.rec** %opred2955, align 8
  %1198 = load %union.rec*, %union.rec** @zz_res, align 8
  %1199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12956 = bitcast %union.rec* %1199 to %struct.word_type*
  %olist2957 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12956, i32 0, i32 0
  %arrayidx2958 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2957, i32 0, i64 1
  %opred2959 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2958, i32 0, i32 0
  %1200 = load %union.rec*, %union.rec** %opred2959, align 8
  %os12960 = bitcast %union.rec* %1200 to %struct.word_type*
  %olist2961 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12960, i32 0, i32 0
  %arrayidx2962 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2961, i32 0, i64 1
  %osucc2963 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2962, i32 0, i32 1
  store %union.rec* %1198, %union.rec** %osucc2963, align 8
  %1201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12964 = bitcast %union.rec* %1202 to %struct.word_type*
  %olist2965 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12964, i32 0, i32 0
  %arrayidx2966 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2965, i32 0, i64 1
  %osucc2967 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2966, i32 0, i32 1
  store %union.rec* %1201, %union.rec** %osucc2967, align 8
  %1203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12968 = bitcast %union.rec* %1203 to %struct.word_type*
  %olist2969 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12968, i32 0, i32 0
  %arrayidx2970 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2969, i32 0, i64 1
  %opred2971 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2970, i32 0, i32 0
  store %union.rec* %1201, %union.rec** %opred2971, align 8
  %1204 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.2972

cond.end.2972:                                    ; preds = %cond.false.2943, %cond.true.2942
  %cond2973 = phi %union.rec* [ null, %cond.true.2942 ], [ %1204, %cond.false.2943 ]
  %1205 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1205, %union.rec** @zz_hold, align 8
  %1206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12974 = bitcast %union.rec* %1206 to %struct.word_type*
  %olist2975 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12974, i32 0, i32 0
  %arrayidx2976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2975, i32 0, i64 0
  %osucc2977 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2976, i32 0, i32 1
  %1207 = load %union.rec*, %union.rec** %osucc2977, align 8
  %1208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp2978 = icmp eq %union.rec* %1207, %1208
  br i1 %cmp2978, label %cond.true.2980, label %cond.false.2981

cond.true.2980:                                   ; preds = %cond.end.2972
  br label %cond.end.3010

cond.false.2981:                                  ; preds = %cond.end.2972
  %1209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12982 = bitcast %union.rec* %1209 to %struct.word_type*
  %olist2983 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12982, i32 0, i32 0
  %arrayidx2984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2983, i32 0, i64 0
  %osucc2985 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2984, i32 0, i32 1
  %1210 = load %union.rec*, %union.rec** %osucc2985, align 8
  store %union.rec* %1210, %union.rec** @zz_res, align 8
  %1211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12986 = bitcast %union.rec* %1211 to %struct.word_type*
  %olist2987 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12986, i32 0, i32 0
  %arrayidx2988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2987, i32 0, i64 0
  %opred2989 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2988, i32 0, i32 0
  %1212 = load %union.rec*, %union.rec** %opred2989, align 8
  %1213 = load %union.rec*, %union.rec** @zz_res, align 8
  %os12990 = bitcast %union.rec* %1213 to %struct.word_type*
  %olist2991 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12990, i32 0, i32 0
  %arrayidx2992 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2991, i32 0, i64 0
  %opred2993 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2992, i32 0, i32 0
  store %union.rec* %1212, %union.rec** %opred2993, align 8
  %1214 = load %union.rec*, %union.rec** @zz_res, align 8
  %1215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os12994 = bitcast %union.rec* %1215 to %struct.word_type*
  %olist2995 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12994, i32 0, i32 0
  %arrayidx2996 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2995, i32 0, i64 0
  %opred2997 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2996, i32 0, i32 0
  %1216 = load %union.rec*, %union.rec** %opred2997, align 8
  %os12998 = bitcast %union.rec* %1216 to %struct.word_type*
  %olist2999 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12998, i32 0, i32 0
  %arrayidx3000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2999, i32 0, i64 0
  %osucc3001 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3000, i32 0, i32 1
  store %union.rec* %1214, %union.rec** %osucc3001, align 8
  %1217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13002 = bitcast %union.rec* %1218 to %struct.word_type*
  %olist3003 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13002, i32 0, i32 0
  %arrayidx3004 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3003, i32 0, i64 0
  %osucc3005 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3004, i32 0, i32 1
  store %union.rec* %1217, %union.rec** %osucc3005, align 8
  %1219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13006 = bitcast %union.rec* %1219 to %struct.word_type*
  %olist3007 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13006, i32 0, i32 0
  %arrayidx3008 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3007, i32 0, i64 0
  %opred3009 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3008, i32 0, i32 0
  store %union.rec* %1217, %union.rec** %opred3009, align 8
  %1220 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3010

cond.end.3010:                                    ; preds = %cond.false.2981, %cond.true.2980
  %cond3011 = phi %union.rec* [ null, %cond.true.2980 ], [ %1220, %cond.false.2981 ]
  %1221 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1221, %union.rec** @zz_hold, align 8
  %1222 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1222, %union.rec** @zz_hold, align 8
  %1223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13012 = bitcast %union.rec* %1223 to %struct.word_type*
  %ou13013 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13012, i32 0, i32 1
  %os113014 = bitcast %union.FIRST_UNION* %ou13013 to %struct.anon*
  %otype3015 = getelementptr inbounds %struct.anon, %struct.anon* %os113014, i32 0, i32 0
  %1224 = load i8, i8* %otype3015, align 1
  %conv3016 = zext i8 %1224 to i32
  %cmp3017 = icmp eq i32 %conv3016, 11
  br i1 %cmp3017, label %cond.true.3027, label %lor.lhs.false.3019

lor.lhs.false.3019:                               ; preds = %cond.end.3010
  %1225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13020 = bitcast %union.rec* %1225 to %struct.word_type*
  %ou13021 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13020, i32 0, i32 1
  %os113022 = bitcast %union.FIRST_UNION* %ou13021 to %struct.anon*
  %otype3023 = getelementptr inbounds %struct.anon, %struct.anon* %os113022, i32 0, i32 0
  %1226 = load i8, i8* %otype3023, align 1
  %conv3024 = zext i8 %1226 to i32
  %cmp3025 = icmp eq i32 %conv3024, 12
  br i1 %cmp3025, label %cond.true.3027, label %cond.false.3033

cond.true.3027:                                   ; preds = %lor.lhs.false.3019, %cond.end.3010
  %1227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13028 = bitcast %union.rec* %1227 to %struct.word_type*
  %ou13029 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13028, i32 0, i32 1
  %os113030 = bitcast %union.FIRST_UNION* %ou13029 to %struct.anon*
  %orec_size3031 = getelementptr inbounds %struct.anon, %struct.anon* %os113030, i32 0, i32 1
  %1228 = load i8, i8* %orec_size3031, align 1
  %conv3032 = zext i8 %1228 to i32
  br label %cond.end.3041

cond.false.3033:                                  ; preds = %lor.lhs.false.3019
  %1229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13034 = bitcast %union.rec* %1229 to %struct.word_type*
  %ou13035 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13034, i32 0, i32 1
  %os113036 = bitcast %union.FIRST_UNION* %ou13035 to %struct.anon*
  %otype3037 = getelementptr inbounds %struct.anon, %struct.anon* %os113036, i32 0, i32 0
  %1230 = load i8, i8* %otype3037, align 1
  %idxprom3038 = zext i8 %1230 to i64
  %arrayidx3039 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom3038
  %1231 = load i8, i8* %arrayidx3039, align 1
  %conv3040 = zext i8 %1231 to i32
  br label %cond.end.3041

cond.end.3041:                                    ; preds = %cond.false.3033, %cond.true.3027
  %cond3042 = phi i32 [ %conv3032, %cond.true.3027 ], [ %conv3040, %cond.false.3033 ]
  store i32 %cond3042, i32* @zz_size, align 4
  %1232 = load i32, i32* @zz_size, align 4
  %idxprom3043 = sext i32 %1232 to i64
  %arrayidx3044 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3043
  %1233 = load %union.rec*, %union.rec** %arrayidx3044, align 8
  %1234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13045 = bitcast %union.rec* %1234 to %struct.word_type*
  %olist3046 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13045, i32 0, i32 0
  %arrayidx3047 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3046, i32 0, i64 0
  %opred3048 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3047, i32 0, i32 0
  store %union.rec* %1233, %union.rec** %opred3048, align 8
  %1235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1236 = load i32, i32* @zz_size, align 4
  %idxprom3049 = sext i32 %1236 to i64
  %arrayidx3050 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3049
  store %union.rec* %1235, %union.rec** %arrayidx3050, align 8
  br label %while.cond.2924

while.end.3051:                                   ; preds = %while.cond.2924
  %1237 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %1237, %union.rec** @zz_hold, align 8
  %1238 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1238, %union.rec** @zz_hold, align 8
  %1239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13052 = bitcast %union.rec* %1239 to %struct.word_type*
  %ou13053 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13052, i32 0, i32 1
  %os113054 = bitcast %union.FIRST_UNION* %ou13053 to %struct.anon*
  %otype3055 = getelementptr inbounds %struct.anon, %struct.anon* %os113054, i32 0, i32 0
  %1240 = load i8, i8* %otype3055, align 1
  %conv3056 = zext i8 %1240 to i32
  %cmp3057 = icmp eq i32 %conv3056, 11
  br i1 %cmp3057, label %cond.true.3067, label %lor.lhs.false.3059

lor.lhs.false.3059:                               ; preds = %while.end.3051
  %1241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13060 = bitcast %union.rec* %1241 to %struct.word_type*
  %ou13061 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13060, i32 0, i32 1
  %os113062 = bitcast %union.FIRST_UNION* %ou13061 to %struct.anon*
  %otype3063 = getelementptr inbounds %struct.anon, %struct.anon* %os113062, i32 0, i32 0
  %1242 = load i8, i8* %otype3063, align 1
  %conv3064 = zext i8 %1242 to i32
  %cmp3065 = icmp eq i32 %conv3064, 12
  br i1 %cmp3065, label %cond.true.3067, label %cond.false.3073

cond.true.3067:                                   ; preds = %lor.lhs.false.3059, %while.end.3051
  %1243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13068 = bitcast %union.rec* %1243 to %struct.word_type*
  %ou13069 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13068, i32 0, i32 1
  %os113070 = bitcast %union.FIRST_UNION* %ou13069 to %struct.anon*
  %orec_size3071 = getelementptr inbounds %struct.anon, %struct.anon* %os113070, i32 0, i32 1
  %1244 = load i8, i8* %orec_size3071, align 1
  %conv3072 = zext i8 %1244 to i32
  br label %cond.end.3081

cond.false.3073:                                  ; preds = %lor.lhs.false.3059
  %1245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13074 = bitcast %union.rec* %1245 to %struct.word_type*
  %ou13075 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13074, i32 0, i32 1
  %os113076 = bitcast %union.FIRST_UNION* %ou13075 to %struct.anon*
  %otype3077 = getelementptr inbounds %struct.anon, %struct.anon* %os113076, i32 0, i32 0
  %1246 = load i8, i8* %otype3077, align 1
  %idxprom3078 = zext i8 %1246 to i64
  %arrayidx3079 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom3078
  %1247 = load i8, i8* %arrayidx3079, align 1
  %conv3080 = zext i8 %1247 to i32
  br label %cond.end.3081

cond.end.3081:                                    ; preds = %cond.false.3073, %cond.true.3067
  %cond3082 = phi i32 [ %conv3072, %cond.true.3067 ], [ %conv3080, %cond.false.3073 ]
  store i32 %cond3082, i32* @zz_size, align 4
  %1248 = load i32, i32* @zz_size, align 4
  %idxprom3083 = sext i32 %1248 to i64
  %arrayidx3084 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3083
  %1249 = load %union.rec*, %union.rec** %arrayidx3084, align 8
  %1250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13085 = bitcast %union.rec* %1250 to %struct.word_type*
  %olist3086 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13085, i32 0, i32 0
  %arrayidx3087 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3086, i32 0, i64 0
  %opred3088 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3087, i32 0, i32 0
  store %union.rec* %1249, %union.rec** %opred3088, align 8
  %1251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1252 = load i32, i32* @zz_size, align 4
  %idxprom3089 = sext i32 %1252 to i64
  %arrayidx3090 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3089
  store %union.rec* %1251, %union.rec** %arrayidx3090, align 8
  br label %RESUME

SUSPEND:                                          ; preds = %sw.bb.1296, %sw.bb.1233, %sw.bb.605, %if.end.85
  %1253 = load %union.rec*, %union.rec** %inners, align 8
  %cmp3091 = icmp ne %union.rec* %1253, null
  br i1 %cmp3091, label %if.then.3093, label %if.end.3095

if.then.3093:                                     ; preds = %SUSPEND
  %1254 = load %union.rec*, %union.rec** %inners, align 8
  %call3094 = call i32 @DisposeObject(%union.rec* %1254)
  br label %if.end.3095

if.end.3095:                                      ; preds = %if.then.3093, %SUSPEND
  %1255 = load %union.rec*, %union.rec** %stop_link, align 8
  %cmp3096 = icmp ne %union.rec* %1255, null
  br i1 %cmp3096, label %if.then.3098, label %if.end.3103

if.then.3098:                                     ; preds = %if.end.3095
  %1256 = load %union.rec*, %union.rec** %hd.addr, align 8
  %1257 = load %union.rec*, %union.rec** %stop_link, align 8
  %1258 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @Promote(%union.rec* %1256, %union.rec* %1257, %union.rec* %1258, i32 1)
  %1259 = load i32, i32* %need_adjust, align 4
  %tobool3099 = icmp ne i32 %1259, 0
  br i1 %tobool3099, label %if.then.3100, label %if.end.3102

if.then.3100:                                     ; preds = %if.then.3098
  %1260 = load %union.rec*, %union.rec** %dest_encl, align 8
  %1261 = load i32, i32* %stop_back, align 4
  %1262 = load i32, i32* %stop_fwd, align 4
  %1263 = load i32, i32* %dim, align 4
  call void @AdjustSize(%union.rec* %1260, i32 %1261, i32 %1262, i32 %1263)
  %1264 = load %union.rec*, %union.rec** %dest_encl, align 8
  %1265 = load i32, i32* %stop_perp_back, align 4
  %1266 = load i32, i32* %stop_perp_fwd, align 4
  %1267 = load i32, i32* %dim, align 4
  %sub3101 = sub nsw i32 1, %1267
  call void @AdjustSize(%union.rec* %1264, i32 %1265, i32 %1266, i32 %sub3101)
  br label %if.end.3102

if.end.3102:                                      ; preds = %if.then.3100, %if.then.3098
  br label %if.end.3103

if.end.3103:                                      ; preds = %if.end.3102, %if.end.3095
  %1268 = load %union.rec*, %union.rec** %y, align 8
  %os13104 = bitcast %union.rec* %1268 to %struct.word_type*
  %ou13105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13104, i32 0, i32 1
  %os113106 = bitcast %union.FIRST_UNION* %ou13105 to %struct.anon*
  %otype3107 = getelementptr inbounds %struct.anon, %struct.anon* %os113106, i32 0, i32 0
  %1269 = load i8, i8* %otype3107, align 1
  %conv3108 = zext i8 %1269 to i32
  %cmp3109 = icmp eq i32 %conv3108, 121
  br i1 %cmp3109, label %land.lhs.true.3111, label %if.else.4959

land.lhs.true.3111:                               ; preds = %if.end.3103
  %1270 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a3112 = bitcast %union.rec* %1270 to %struct.head_type*
  %oready_galls = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3112, i32 0, i32 7
  %1271 = load %union.rec*, %union.rec** %oready_galls, align 8
  %cmp3113 = icmp ne %union.rec* %1271, null
  br i1 %cmp3113, label %land.lhs.true.3115, label %if.else.4959

land.lhs.true.3115:                               ; preds = %land.lhs.true.3111
  %1272 = load i32, i32* @AllowCrossDb, align 4
  %tobool3116 = icmp ne i32 %1272, 0
  br i1 %tobool3116, label %if.then.3117, label %if.else.4959

if.then.3117:                                     ; preds = %land.lhs.true.3115
  %1273 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a3129 = bitcast %union.rec* %1273 to %struct.head_type*
  %oready_galls3130 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3129, i32 0, i32 7
  %1274 = load %union.rec*, %union.rec** %oready_galls3130, align 8
  %os13131 = bitcast %union.rec* %1274 to %struct.word_type*
  %olist3132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13131, i32 0, i32 0
  %arrayidx3133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3132, i32 0, i64 0
  %osucc3134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3133, i32 0, i32 1
  %1275 = load %union.rec*, %union.rec** %osucc3134, align 8
  %os13135 = bitcast %union.rec* %1275 to %struct.word_type*
  %olist3136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13135, i32 0, i32 0
  %arrayidx3137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3136, i32 0, i64 1
  %opred3138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3137, i32 0, i32 0
  %1276 = load %union.rec*, %union.rec** %opred3138, align 8
  store %union.rec* %1276, %union.rec** %eg, align 8
  br label %for.cond.3139

for.cond.3139:                                    ; preds = %for.inc.3148, %if.then.3117
  %1277 = load %union.rec*, %union.rec** %eg, align 8
  %os13140 = bitcast %union.rec* %1277 to %struct.word_type*
  %ou13141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13140, i32 0, i32 1
  %os113142 = bitcast %union.FIRST_UNION* %ou13141 to %struct.anon*
  %otype3143 = getelementptr inbounds %struct.anon, %struct.anon* %os113142, i32 0, i32 0
  %1278 = load i8, i8* %otype3143, align 1
  %conv3144 = zext i8 %1278 to i32
  %cmp3145 = icmp eq i32 %conv3144, 0
  br i1 %cmp3145, label %for.body.3147, label %for.end.3153

for.body.3147:                                    ; preds = %for.cond.3139
  br label %for.inc.3148

for.inc.3148:                                     ; preds = %for.body.3147
  %1279 = load %union.rec*, %union.rec** %eg, align 8
  %os13149 = bitcast %union.rec* %1279 to %struct.word_type*
  %olist3150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13149, i32 0, i32 0
  %arrayidx3151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3150, i32 0, i64 1
  %opred3152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3151, i32 0, i32 0
  %1280 = load %union.rec*, %union.rec** %opred3152, align 8
  store %union.rec* %1280, %union.rec** %eg, align 8
  br label %for.cond.3139

for.end.3153:                                     ; preds = %for.cond.3139
  call void @SwitchScope(%union.rec* null)
  %1281 = load %union.rec*, %union.rec** %eg, align 8
  %os8 = bitcast %union.rec* %1281 to %struct.ext_gall_type*
  %oeg_fnum = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os8, i32 0, i32 2
  %1282 = load i16, i16* %oeg_fnum, align 2
  %1283 = load %union.rec*, %union.rec** %eg, align 8
  %os83154 = bitcast %union.rec* %1283 to %struct.ext_gall_type*
  %oeg_fpos = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os83154, i32 0, i32 4
  %1284 = load i64, i64* %oeg_fpos, align 8
  %1285 = load %union.rec*, %union.rec** %eg, align 8
  %os83155 = bitcast %union.rec* %1285 to %struct.ext_gall_type*
  %oeg_lnum = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os83155, i32 0, i32 3
  %1286 = load i32, i32* %oeg_lnum, align 4
  %call3156 = call %union.rec* @ReadFromFile(i16 zeroext %1282, i64 %1284, i32 %1286)
  store %union.rec* %call3156, %union.rec** %val, align 8
  call void @UnSwitchScope(%union.rec* null)
  %1287 = load %union.rec*, %union.rec** %val, align 8
  %cmp3157 = icmp eq %union.rec* %1287, null
  br i1 %cmp3157, label %if.then.3159, label %if.end.3167

if.then.3159:                                     ; preds = %for.end.3153
  %1288 = load %union.rec*, %union.rec** %y, align 8
  %os13160 = bitcast %union.rec* %1288 to %struct.word_type*
  %ou13161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13160, i32 0, i32 1
  %ofpos3162 = bitcast %union.FIRST_UNION* %ou13161 to %struct.FILE_POS*
  %1289 = load %union.rec*, %union.rec** %eg, align 8
  %os83163 = bitcast %union.rec* %1289 to %struct.ext_gall_type*
  %oeg_fnum3164 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os83163, i32 0, i32 2
  %1290 = load i16, i16* %oeg_fnum3164, align 2
  %call3165 = call i8* @FileName(i16 zeroext %1290)
  %call3166 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 20, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos3162, i8* %call3165)
  br label %if.end.3167

if.end.3167:                                      ; preds = %if.then.3159, %for.end.3153
  %1291 = load %union.rec*, %union.rec** %val, align 8
  %os13168 = bitcast %union.rec* %1291 to %struct.word_type*
  %ou13169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13168, i32 0, i32 1
  %os113170 = bitcast %union.FIRST_UNION* %ou13169 to %struct.anon*
  %otype3171 = getelementptr inbounds %struct.anon, %struct.anon* %os113170, i32 0, i32 0
  %1292 = load i8, i8* %otype3171, align 1
  %conv3172 = zext i8 %1292 to i32
  %cmp3173 = icmp eq i32 %conv3172, 2
  br i1 %cmp3173, label %if.end.3177, label %if.then.3175

if.then.3175:                                     ; preds = %if.end.3167
  %1293 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3176 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1293, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.3177

if.end.3177:                                      ; preds = %if.then.3175, %if.end.3167
  %1294 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 120), align 1
  %conv3178 = zext i8 %1294 to i32
  store i32 %conv3178, i32* @zz_size, align 4
  %conv3179 = sext i32 %conv3178 to i64
  %cmp3180 = icmp uge i64 %conv3179, 265
  br i1 %cmp3180, label %if.then.3182, label %if.else.3184

if.then.3182:                                     ; preds = %if.end.3177
  %1295 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3183 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1295)
  br label %if.end.3201

if.else.3184:                                     ; preds = %if.end.3177
  %1296 = load i32, i32* @zz_size, align 4
  %idxprom3185 = sext i32 %1296 to i64
  %arrayidx3186 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3185
  %1297 = load %union.rec*, %union.rec** %arrayidx3186, align 8
  %cmp3187 = icmp eq %union.rec* %1297, null
  br i1 %cmp3187, label %if.then.3189, label %if.else.3191

if.then.3189:                                     ; preds = %if.else.3184
  %1298 = load i32, i32* @zz_size, align 4
  %1299 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3190 = call %union.rec* @GetMemory(i32 %1298, %struct.FILE_POS* %1299)
  store %union.rec* %call3190, %union.rec** @zz_hold, align 8
  br label %if.end.3200

if.else.3191:                                     ; preds = %if.else.3184
  %1300 = load i32, i32* @zz_size, align 4
  %idxprom3192 = sext i32 %1300 to i64
  %arrayidx3193 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3192
  %1301 = load %union.rec*, %union.rec** %arrayidx3193, align 8
  store %union.rec* %1301, %union.rec** @zz_hold, align 8
  store %union.rec* %1301, %union.rec** @zz_hold, align 8
  %1302 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13194 = bitcast %union.rec* %1302 to %struct.word_type*
  %olist3195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13194, i32 0, i32 0
  %arrayidx3196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3195, i32 0, i64 0
  %opred3197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3196, i32 0, i32 0
  %1303 = load %union.rec*, %union.rec** %opred3197, align 8
  %1304 = load i32, i32* @zz_size, align 4
  %idxprom3198 = sext i32 %1304 to i64
  %arrayidx3199 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3198
  store %union.rec* %1303, %union.rec** %arrayidx3199, align 8
  br label %if.end.3200

if.end.3200:                                      ; preds = %if.else.3191, %if.then.3189
  br label %if.end.3201

if.end.3201:                                      ; preds = %if.end.3200, %if.then.3182
  %1305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13202 = bitcast %union.rec* %1305 to %struct.word_type*
  %ou13203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13202, i32 0, i32 1
  %os113204 = bitcast %union.FIRST_UNION* %ou13203 to %struct.anon*
  %otype3205 = getelementptr inbounds %struct.anon, %struct.anon* %os113204, i32 0, i32 0
  store i8 120, i8* %otype3205, align 1
  %1306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1307 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13206 = bitcast %union.rec* %1307 to %struct.word_type*
  %olist3207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13206, i32 0, i32 0
  %arrayidx3208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3207, i32 0, i64 1
  %osucc3209 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3208, i32 0, i32 1
  store %union.rec* %1306, %union.rec** %osucc3209, align 8
  %1308 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13210 = bitcast %union.rec* %1308 to %struct.word_type*
  %olist3211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13210, i32 0, i32 0
  %arrayidx3212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3211, i32 0, i64 1
  %opred3213 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3212, i32 0, i32 0
  store %union.rec* %1306, %union.rec** %opred3213, align 8
  %1309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13214 = bitcast %union.rec* %1309 to %struct.word_type*
  %olist3215 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13214, i32 0, i32 0
  %arrayidx3216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3215, i32 0, i64 0
  %osucc3217 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3216, i32 0, i32 1
  store %union.rec* %1306, %union.rec** %osucc3217, align 8
  %1310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13218 = bitcast %union.rec* %1310 to %struct.word_type*
  %olist3219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13218, i32 0, i32 0
  %arrayidx3220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3219, i32 0, i64 0
  %opred3221 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3220, i32 0, i32 0
  store %union.rec* %1306, %union.rec** %opred3221, align 8
  store %union.rec* %1306, %union.rec** %index2, align 8
  %1311 = load %union.rec*, %union.rec** %index2, align 8
  %os23222 = bitcast %union.rec* %1311 to %struct.closure_type*
  %oux3223 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23222, i32 0, i32 6
  %opinpoint = bitcast %union.anon.12* %oux3223 to %union.rec**
  store %union.rec* null, %union.rec** %opinpoint, align 8
  %1312 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 8), align 1
  %conv3224 = zext i8 %1312 to i32
  store i32 %conv3224, i32* @zz_size, align 4
  %conv3225 = sext i32 %conv3224 to i64
  %cmp3226 = icmp uge i64 %conv3225, 265
  br i1 %cmp3226, label %if.then.3228, label %if.else.3230

if.then.3228:                                     ; preds = %if.end.3201
  %1313 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3229 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1313)
  br label %if.end.3247

if.else.3230:                                     ; preds = %if.end.3201
  %1314 = load i32, i32* @zz_size, align 4
  %idxprom3231 = sext i32 %1314 to i64
  %arrayidx3232 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3231
  %1315 = load %union.rec*, %union.rec** %arrayidx3232, align 8
  %cmp3233 = icmp eq %union.rec* %1315, null
  br i1 %cmp3233, label %if.then.3235, label %if.else.3237

if.then.3235:                                     ; preds = %if.else.3230
  %1316 = load i32, i32* @zz_size, align 4
  %1317 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3236 = call %union.rec* @GetMemory(i32 %1316, %struct.FILE_POS* %1317)
  store %union.rec* %call3236, %union.rec** @zz_hold, align 8
  br label %if.end.3246

if.else.3237:                                     ; preds = %if.else.3230
  %1318 = load i32, i32* @zz_size, align 4
  %idxprom3238 = sext i32 %1318 to i64
  %arrayidx3239 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3238
  %1319 = load %union.rec*, %union.rec** %arrayidx3239, align 8
  store %union.rec* %1319, %union.rec** @zz_hold, align 8
  store %union.rec* %1319, %union.rec** @zz_hold, align 8
  %1320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13240 = bitcast %union.rec* %1320 to %struct.word_type*
  %olist3241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13240, i32 0, i32 0
  %arrayidx3242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3241, i32 0, i64 0
  %opred3243 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3242, i32 0, i32 0
  %1321 = load %union.rec*, %union.rec** %opred3243, align 8
  %1322 = load i32, i32* @zz_size, align 4
  %idxprom3244 = sext i32 %1322 to i64
  %arrayidx3245 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3244
  store %union.rec* %1321, %union.rec** %arrayidx3245, align 8
  br label %if.end.3246

if.end.3246:                                      ; preds = %if.else.3237, %if.then.3235
  br label %if.end.3247

if.end.3247:                                      ; preds = %if.end.3246, %if.then.3228
  %1323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13248 = bitcast %union.rec* %1323 to %struct.word_type*
  %ou13249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13248, i32 0, i32 1
  %os113250 = bitcast %union.FIRST_UNION* %ou13249 to %struct.anon*
  %otype3251 = getelementptr inbounds %struct.anon, %struct.anon* %os113250, i32 0, i32 0
  store i8 8, i8* %otype3251, align 1
  %1324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13252 = bitcast %union.rec* %1325 to %struct.word_type*
  %olist3253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13252, i32 0, i32 0
  %arrayidx3254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3253, i32 0, i64 1
  %osucc3255 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3254, i32 0, i32 1
  store %union.rec* %1324, %union.rec** %osucc3255, align 8
  %1326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13256 = bitcast %union.rec* %1326 to %struct.word_type*
  %olist3257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13256, i32 0, i32 0
  %arrayidx3258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3257, i32 0, i64 1
  %opred3259 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3258, i32 0, i32 0
  store %union.rec* %1324, %union.rec** %opred3259, align 8
  %1327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13260 = bitcast %union.rec* %1327 to %struct.word_type*
  %olist3261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13260, i32 0, i32 0
  %arrayidx3262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3261, i32 0, i64 0
  %osucc3263 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3262, i32 0, i32 1
  store %union.rec* %1324, %union.rec** %osucc3263, align 8
  %1328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13264 = bitcast %union.rec* %1328 to %struct.word_type*
  %olist3265 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13264, i32 0, i32 0
  %arrayidx3266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3265, i32 0, i64 0
  %opred3267 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3266, i32 0, i32 0
  store %union.rec* %1324, %union.rec** %opred3267, align 8
  store %union.rec* %1324, %union.rec** %hd2, align 8
  %1329 = load %union.rec*, %union.rec** %val, align 8
  %os13268 = bitcast %union.rec* %1329 to %struct.word_type*
  %ou13269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13268, i32 0, i32 1
  %ofpos3270 = bitcast %union.FIRST_UNION* %ou13269 to %struct.FILE_POS*
  %ofile_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos3270, i32 0, i32 2
  %1330 = load i16, i16* %ofile_num, align 2
  %1331 = load %union.rec*, %union.rec** %hd2, align 8
  %os13271 = bitcast %union.rec* %1331 to %struct.word_type*
  %ou13272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13271, i32 0, i32 1
  %ofpos3273 = bitcast %union.FIRST_UNION* %ou13272 to %struct.FILE_POS*
  %ofile_num3274 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos3273, i32 0, i32 2
  store i16 %1330, i16* %ofile_num3274, align 2
  %1332 = load %union.rec*, %union.rec** %val, align 8
  %os13275 = bitcast %union.rec* %1332 to %struct.word_type*
  %ou13276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13275, i32 0, i32 1
  %ofpos3277 = bitcast %union.FIRST_UNION* %ou13276 to %struct.FILE_POS*
  %oline_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos3277, i32 0, i32 3
  %bf.load3278 = load i32, i32* %oline_num, align 4
  %bf.clear3279 = and i32 %bf.load3278, 1048575
  %1333 = load %union.rec*, %union.rec** %hd2, align 8
  %os13280 = bitcast %union.rec* %1333 to %struct.word_type*
  %ou13281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13280, i32 0, i32 1
  %ofpos3282 = bitcast %union.FIRST_UNION* %ou13281 to %struct.FILE_POS*
  %oline_num3283 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos3282, i32 0, i32 3
  %bf.load3284 = load i32, i32* %oline_num3283, align 4
  %bf.value3285 = and i32 %bf.clear3279, 1048575
  %bf.clear3286 = and i32 %bf.load3284, -1048576
  %bf.set3287 = or i32 %bf.clear3286, %bf.value3285
  store i32 %bf.set3287, i32* %oline_num3283, align 4
  %1334 = load %union.rec*, %union.rec** %val, align 8
  %os13288 = bitcast %union.rec* %1334 to %struct.word_type*
  %ou13289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13288, i32 0, i32 1
  %ofpos3290 = bitcast %union.FIRST_UNION* %ou13289 to %struct.FILE_POS*
  %ocol_num = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos3290, i32 0, i32 3
  %bf.load3291 = load i32, i32* %ocol_num, align 4
  %bf.lshr3292 = lshr i32 %bf.load3291, 20
  %1335 = load %union.rec*, %union.rec** %hd2, align 8
  %os13293 = bitcast %union.rec* %1335 to %struct.word_type*
  %ou13294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13293, i32 0, i32 1
  %ofpos3295 = bitcast %union.FIRST_UNION* %ou13294 to %struct.FILE_POS*
  %ocol_num3296 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %ofpos3295, i32 0, i32 3
  %bf.load3297 = load i32, i32* %ocol_num3296, align 4
  %bf.value3298 = and i32 %bf.lshr3292, 4095
  %bf.shl3299 = shl i32 %bf.value3298, 20
  %bf.clear3300 = and i32 %bf.load3297, 1048575
  %bf.set3301 = or i32 %bf.clear3300, %bf.shl3299
  store i32 %bf.set3301, i32* %ocol_num3296, align 4
  %1336 = load %union.rec*, %union.rec** %val, align 8
  %os23302 = bitcast %union.rec* %1336 to %struct.closure_type*
  %oactual3303 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23302, i32 0, i32 5
  %1337 = load %union.rec*, %union.rec** %oactual3303, align 8
  %1338 = load %union.rec*, %union.rec** %hd2, align 8
  %os23304 = bitcast %union.rec* %1338 to %struct.closure_type*
  %oactual3305 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23304, i32 0, i32 5
  store %union.rec* %1337, %union.rec** %oactual3305, align 8
  %1339 = load %union.rec*, %union.rec** %hd2, align 8
  %os2a3306 = bitcast %union.rec* %1339 to %struct.head_type*
  %olimiter = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3306, i32 0, i32 11
  store %union.rec* null, %union.rec** %olimiter, align 8
  %1340 = load %union.rec*, %union.rec** %hd2, align 8
  %os2a3307 = bitcast %union.rec* %1340 to %struct.head_type*
  %oopt_constraints3308 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3307, i32 0, i32 9
  store %union.rec* null, %union.rec** %oopt_constraints3308, align 8
  %1341 = load %union.rec*, %union.rec** %hd2, align 8
  %os2a3309 = bitcast %union.rec* %1341 to %struct.head_type*
  %oopt_components3310 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3309, i32 0, i32 8
  store %union.rec* null, %union.rec** %oopt_components3310, align 8
  %1342 = load %union.rec*, %union.rec** %val, align 8
  %os23311 = bitcast %union.rec* %1342 to %struct.closure_type*
  %oactual3312 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23311, i32 0, i32 5
  %1343 = load %union.rec*, %union.rec** %oactual3312, align 8
  %os13313 = bitcast %union.rec* %1343 to %struct.word_type*
  %ou23314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13313, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou23314 to %struct.anon.5*
  %ohoriz_galley = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %1344 = bitcast [3 x i8]* %ohoriz_galley to i24*
  %bf.load3315 = load i24, i24* %1344, align 1
  %bf.lshr3316 = lshr i24 %bf.load3315, 21
  %bf.clear3317 = and i24 %bf.lshr3316, 1
  %bf.cast3318 = zext i24 %bf.clear3317 to i32
  %1345 = load %union.rec*, %union.rec** %hd2, align 8
  %os13319 = bitcast %union.rec* %1345 to %struct.word_type*
  %ou23320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13319, i32 0, i32 2
  %os233321 = bitcast %union.SECOND_UNION* %ou23320 to %struct.anon.2*
  %ogall_dir3322 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os233321, i32 0, i32 2
  %1346 = trunc i32 %bf.cast3318 to i16
  %bf.load3323 = load i16, i16* %ogall_dir3322, align 2
  %bf.value3324 = and i16 %1346, 1
  %bf.shl3325 = shl i16 %bf.value3324, 8
  %bf.clear3326 = and i16 %bf.load3323, -257
  %bf.set3327 = or i16 %bf.clear3326, %bf.shl3325
  store i16 %bf.set3327, i16* %ogall_dir3322, align 2
  %bf.result.cast = zext i16 %bf.value3324 to i32
  %1347 = load %union.rec*, %union.rec** %hd2, align 8
  %os13328 = bitcast %union.rec* %1347 to %struct.word_type*
  %ou23329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13328, i32 0, i32 2
  %os233330 = bitcast %union.SECOND_UNION* %ou23329 to %struct.anon.2*
  %osized = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os233330, i32 0, i32 2
  %bf.load3331 = load i16, i16* %osized, align 2
  %bf.clear3332 = and i16 %bf.load3331, -3
  store i16 %bf.clear3332, i16* %osized, align 2
  %1348 = load %union.rec*, %union.rec** %hd2, align 8
  %os2a3333 = bitcast %union.rec* %1348 to %struct.head_type*
  %oready_galls3334 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3333, i32 0, i32 7
  store %union.rec* null, %union.rec** %oready_galls3334, align 8
  %1349 = load %union.rec*, %union.rec** %hd2, align 8
  %os13335 = bitcast %union.rec* %1349 to %struct.word_type*
  %ou23336 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13335, i32 0, i32 2
  %os233337 = bitcast %union.SECOND_UNION* %ou23336 to %struct.anon.2*
  %omust_expand = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os233337, i32 0, i32 2
  %bf.load3338 = load i16, i16* %omust_expand, align 2
  %bf.clear3339 = and i16 %bf.load3338, -129
  %bf.set3340 = or i16 %bf.clear3339, 128
  store i16 %bf.set3340, i16* %omust_expand, align 2
  %1350 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv3341 = zext i8 %1350 to i32
  store i32 %conv3341, i32* @zz_size, align 4
  %conv3342 = sext i32 %conv3341 to i64
  %cmp3343 = icmp uge i64 %conv3342, 265
  br i1 %cmp3343, label %if.then.3345, label %if.else.3347

if.then.3345:                                     ; preds = %if.end.3247
  %1351 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3346 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1351)
  br label %if.end.3364

if.else.3347:                                     ; preds = %if.end.3247
  %1352 = load i32, i32* @zz_size, align 4
  %idxprom3348 = sext i32 %1352 to i64
  %arrayidx3349 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3348
  %1353 = load %union.rec*, %union.rec** %arrayidx3349, align 8
  %cmp3350 = icmp eq %union.rec* %1353, null
  br i1 %cmp3350, label %if.then.3352, label %if.else.3354

if.then.3352:                                     ; preds = %if.else.3347
  %1354 = load i32, i32* @zz_size, align 4
  %1355 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3353 = call %union.rec* @GetMemory(i32 %1354, %struct.FILE_POS* %1355)
  store %union.rec* %call3353, %union.rec** @zz_hold, align 8
  br label %if.end.3363

if.else.3354:                                     ; preds = %if.else.3347
  %1356 = load i32, i32* @zz_size, align 4
  %idxprom3355 = sext i32 %1356 to i64
  %arrayidx3356 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3355
  %1357 = load %union.rec*, %union.rec** %arrayidx3356, align 8
  store %union.rec* %1357, %union.rec** @zz_hold, align 8
  store %union.rec* %1357, %union.rec** @zz_hold, align 8
  %1358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13357 = bitcast %union.rec* %1358 to %struct.word_type*
  %olist3358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13357, i32 0, i32 0
  %arrayidx3359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3358, i32 0, i64 0
  %opred3360 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3359, i32 0, i32 0
  %1359 = load %union.rec*, %union.rec** %opred3360, align 8
  %1360 = load i32, i32* @zz_size, align 4
  %idxprom3361 = sext i32 %1360 to i64
  %arrayidx3362 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3361
  store %union.rec* %1359, %union.rec** %arrayidx3362, align 8
  br label %if.end.3363

if.end.3363:                                      ; preds = %if.else.3354, %if.then.3352
  br label %if.end.3364

if.end.3364:                                      ; preds = %if.end.3363, %if.then.3345
  %1361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13365 = bitcast %union.rec* %1361 to %struct.word_type*
  %ou13366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13365, i32 0, i32 1
  %os113367 = bitcast %union.FIRST_UNION* %ou13366 to %struct.anon*
  %otype3368 = getelementptr inbounds %struct.anon, %struct.anon* %os113367, i32 0, i32 0
  store i8 0, i8* %otype3368, align 1
  %1362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13369 = bitcast %union.rec* %1363 to %struct.word_type*
  %olist3370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13369, i32 0, i32 0
  %arrayidx3371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3370, i32 0, i64 1
  %osucc3372 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3371, i32 0, i32 1
  store %union.rec* %1362, %union.rec** %osucc3372, align 8
  %1364 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13373 = bitcast %union.rec* %1364 to %struct.word_type*
  %olist3374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13373, i32 0, i32 0
  %arrayidx3375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3374, i32 0, i64 1
  %opred3376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3375, i32 0, i32 0
  store %union.rec* %1362, %union.rec** %opred3376, align 8
  %1365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13377 = bitcast %union.rec* %1365 to %struct.word_type*
  %olist3378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13377, i32 0, i32 0
  %arrayidx3379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3378, i32 0, i64 0
  %osucc3380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3379, i32 0, i32 1
  store %union.rec* %1362, %union.rec** %osucc3380, align 8
  %1366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13381 = bitcast %union.rec* %1366 to %struct.word_type*
  %olist3382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13381, i32 0, i32 0
  %arrayidx3383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3382, i32 0, i64 0
  %opred3384 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3383, i32 0, i32 0
  store %union.rec* %1362, %union.rec** %opred3384, align 8
  store %union.rec* %1362, %union.rec** @xx_link, align 8
  %1367 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1367, %union.rec** @zz_res, align 8
  %1368 = load %union.rec*, %union.rec** %index2, align 8
  store %union.rec* %1368, %union.rec** @zz_hold, align 8
  %1369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3385 = icmp eq %union.rec* %1369, null
  br i1 %cmp3385, label %cond.true.3387, label %cond.false.3388

cond.true.3387:                                   ; preds = %if.end.3364
  %1370 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3423

cond.false.3388:                                  ; preds = %if.end.3364
  %1371 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3389 = icmp eq %union.rec* %1371, null
  br i1 %cmp3389, label %cond.true.3391, label %cond.false.3392

cond.true.3391:                                   ; preds = %cond.false.3388
  %1372 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3421

cond.false.3392:                                  ; preds = %cond.false.3388
  %1373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13393 = bitcast %union.rec* %1373 to %struct.word_type*
  %olist3394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13393, i32 0, i32 0
  %arrayidx3395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3394, i32 0, i64 0
  %opred3396 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3395, i32 0, i32 0
  %1374 = load %union.rec*, %union.rec** %opred3396, align 8
  store %union.rec* %1374, %union.rec** @zz_tmp, align 8
  %1375 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13397 = bitcast %union.rec* %1375 to %struct.word_type*
  %olist3398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13397, i32 0, i32 0
  %arrayidx3399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3398, i32 0, i64 0
  %opred3400 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3399, i32 0, i32 0
  %1376 = load %union.rec*, %union.rec** %opred3400, align 8
  %1377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13401 = bitcast %union.rec* %1377 to %struct.word_type*
  %olist3402 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13401, i32 0, i32 0
  %arrayidx3403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3402, i32 0, i64 0
  %opred3404 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3403, i32 0, i32 0
  store %union.rec* %1376, %union.rec** %opred3404, align 8
  %1378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1379 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13405 = bitcast %union.rec* %1379 to %struct.word_type*
  %olist3406 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13405, i32 0, i32 0
  %arrayidx3407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3406, i32 0, i64 0
  %opred3408 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3407, i32 0, i32 0
  %1380 = load %union.rec*, %union.rec** %opred3408, align 8
  %os13409 = bitcast %union.rec* %1380 to %struct.word_type*
  %olist3410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13409, i32 0, i32 0
  %arrayidx3411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3410, i32 0, i64 0
  %osucc3412 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3411, i32 0, i32 1
  store %union.rec* %1378, %union.rec** %osucc3412, align 8
  %1381 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1382 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13413 = bitcast %union.rec* %1382 to %struct.word_type*
  %olist3414 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13413, i32 0, i32 0
  %arrayidx3415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3414, i32 0, i64 0
  %opred3416 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3415, i32 0, i32 0
  store %union.rec* %1381, %union.rec** %opred3416, align 8
  %1383 = load %union.rec*, %union.rec** @zz_res, align 8
  %1384 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13417 = bitcast %union.rec* %1384 to %struct.word_type*
  %olist3418 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13417, i32 0, i32 0
  %arrayidx3419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3418, i32 0, i64 0
  %osucc3420 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3419, i32 0, i32 1
  store %union.rec* %1383, %union.rec** %osucc3420, align 8
  br label %cond.end.3421

cond.end.3421:                                    ; preds = %cond.false.3392, %cond.true.3391
  %cond3422 = phi %union.rec* [ %1372, %cond.true.3391 ], [ %1383, %cond.false.3392 ]
  br label %cond.end.3423

cond.end.3423:                                    ; preds = %cond.end.3421, %cond.true.3387
  %cond3424 = phi %union.rec* [ %1370, %cond.true.3387 ], [ %cond3422, %cond.end.3421 ]
  %1385 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1385, %union.rec** @zz_res, align 8
  %1386 = load %union.rec*, %union.rec** %hd2, align 8
  store %union.rec* %1386, %union.rec** @zz_hold, align 8
  %1387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3425 = icmp eq %union.rec* %1387, null
  br i1 %cmp3425, label %cond.true.3427, label %cond.false.3428

cond.true.3427:                                   ; preds = %cond.end.3423
  %1388 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3463

cond.false.3428:                                  ; preds = %cond.end.3423
  %1389 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3429 = icmp eq %union.rec* %1389, null
  br i1 %cmp3429, label %cond.true.3431, label %cond.false.3432

cond.true.3431:                                   ; preds = %cond.false.3428
  %1390 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3461

cond.false.3432:                                  ; preds = %cond.false.3428
  %1391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13433 = bitcast %union.rec* %1391 to %struct.word_type*
  %olist3434 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13433, i32 0, i32 0
  %arrayidx3435 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3434, i32 0, i64 1
  %opred3436 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3435, i32 0, i32 0
  %1392 = load %union.rec*, %union.rec** %opred3436, align 8
  store %union.rec* %1392, %union.rec** @zz_tmp, align 8
  %1393 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13437 = bitcast %union.rec* %1393 to %struct.word_type*
  %olist3438 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13437, i32 0, i32 0
  %arrayidx3439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3438, i32 0, i64 1
  %opred3440 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3439, i32 0, i32 0
  %1394 = load %union.rec*, %union.rec** %opred3440, align 8
  %1395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13441 = bitcast %union.rec* %1395 to %struct.word_type*
  %olist3442 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13441, i32 0, i32 0
  %arrayidx3443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3442, i32 0, i64 1
  %opred3444 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3443, i32 0, i32 0
  store %union.rec* %1394, %union.rec** %opred3444, align 8
  %1396 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1397 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13445 = bitcast %union.rec* %1397 to %struct.word_type*
  %olist3446 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13445, i32 0, i32 0
  %arrayidx3447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3446, i32 0, i64 1
  %opred3448 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3447, i32 0, i32 0
  %1398 = load %union.rec*, %union.rec** %opred3448, align 8
  %os13449 = bitcast %union.rec* %1398 to %struct.word_type*
  %olist3450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13449, i32 0, i32 0
  %arrayidx3451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3450, i32 0, i64 1
  %osucc3452 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3451, i32 0, i32 1
  store %union.rec* %1396, %union.rec** %osucc3452, align 8
  %1399 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1400 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13453 = bitcast %union.rec* %1400 to %struct.word_type*
  %olist3454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13453, i32 0, i32 0
  %arrayidx3455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3454, i32 0, i64 1
  %opred3456 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3455, i32 0, i32 0
  store %union.rec* %1399, %union.rec** %opred3456, align 8
  %1401 = load %union.rec*, %union.rec** @zz_res, align 8
  %1402 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13457 = bitcast %union.rec* %1402 to %struct.word_type*
  %olist3458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13457, i32 0, i32 0
  %arrayidx3459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3458, i32 0, i64 1
  %osucc3460 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3459, i32 0, i32 1
  store %union.rec* %1401, %union.rec** %osucc3460, align 8
  br label %cond.end.3461

cond.end.3461:                                    ; preds = %cond.false.3432, %cond.true.3431
  %cond3462 = phi %union.rec* [ %1390, %cond.true.3431 ], [ %1401, %cond.false.3432 ]
  br label %cond.end.3463

cond.end.3463:                                    ; preds = %cond.end.3461, %cond.true.3427
  %cond3464 = phi %union.rec* [ %1388, %cond.true.3427 ], [ %cond3462, %cond.end.3461 ]
  %1403 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv3465 = zext i8 %1403 to i32
  store i32 %conv3465, i32* @zz_size, align 4
  %conv3466 = sext i32 %conv3465 to i64
  %cmp3467 = icmp uge i64 %conv3466, 265
  br i1 %cmp3467, label %if.then.3469, label %if.else.3471

if.then.3469:                                     ; preds = %cond.end.3463
  %1404 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3470 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1404)
  br label %if.end.3488

if.else.3471:                                     ; preds = %cond.end.3463
  %1405 = load i32, i32* @zz_size, align 4
  %idxprom3472 = sext i32 %1405 to i64
  %arrayidx3473 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3472
  %1406 = load %union.rec*, %union.rec** %arrayidx3473, align 8
  %cmp3474 = icmp eq %union.rec* %1406, null
  br i1 %cmp3474, label %if.then.3476, label %if.else.3478

if.then.3476:                                     ; preds = %if.else.3471
  %1407 = load i32, i32* @zz_size, align 4
  %1408 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3477 = call %union.rec* @GetMemory(i32 %1407, %struct.FILE_POS* %1408)
  store %union.rec* %call3477, %union.rec** @zz_hold, align 8
  br label %if.end.3487

if.else.3478:                                     ; preds = %if.else.3471
  %1409 = load i32, i32* @zz_size, align 4
  %idxprom3479 = sext i32 %1409 to i64
  %arrayidx3480 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3479
  %1410 = load %union.rec*, %union.rec** %arrayidx3480, align 8
  store %union.rec* %1410, %union.rec** @zz_hold, align 8
  store %union.rec* %1410, %union.rec** @zz_hold, align 8
  %1411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13481 = bitcast %union.rec* %1411 to %struct.word_type*
  %olist3482 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13481, i32 0, i32 0
  %arrayidx3483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3482, i32 0, i64 0
  %opred3484 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3483, i32 0, i32 0
  %1412 = load %union.rec*, %union.rec** %opred3484, align 8
  %1413 = load i32, i32* @zz_size, align 4
  %idxprom3485 = sext i32 %1413 to i64
  %arrayidx3486 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3485
  store %union.rec* %1412, %union.rec** %arrayidx3486, align 8
  br label %if.end.3487

if.end.3487:                                      ; preds = %if.else.3478, %if.then.3476
  br label %if.end.3488

if.end.3488:                                      ; preds = %if.end.3487, %if.then.3469
  %1414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13489 = bitcast %union.rec* %1414 to %struct.word_type*
  %ou13490 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13489, i32 0, i32 1
  %os113491 = bitcast %union.FIRST_UNION* %ou13490 to %struct.anon*
  %otype3492 = getelementptr inbounds %struct.anon, %struct.anon* %os113491, i32 0, i32 0
  store i8 0, i8* %otype3492, align 1
  %1415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13493 = bitcast %union.rec* %1416 to %struct.word_type*
  %olist3494 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13493, i32 0, i32 0
  %arrayidx3495 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3494, i32 0, i64 1
  %osucc3496 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3495, i32 0, i32 1
  store %union.rec* %1415, %union.rec** %osucc3496, align 8
  %1417 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13497 = bitcast %union.rec* %1417 to %struct.word_type*
  %olist3498 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13497, i32 0, i32 0
  %arrayidx3499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3498, i32 0, i64 1
  %opred3500 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3499, i32 0, i32 0
  store %union.rec* %1415, %union.rec** %opred3500, align 8
  %1418 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13501 = bitcast %union.rec* %1418 to %struct.word_type*
  %olist3502 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13501, i32 0, i32 0
  %arrayidx3503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3502, i32 0, i64 0
  %osucc3504 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3503, i32 0, i32 1
  store %union.rec* %1415, %union.rec** %osucc3504, align 8
  %1419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13505 = bitcast %union.rec* %1419 to %struct.word_type*
  %olist3506 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13505, i32 0, i32 0
  %arrayidx3507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3506, i32 0, i64 0
  %opred3508 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3507, i32 0, i32 0
  store %union.rec* %1415, %union.rec** %opred3508, align 8
  store %union.rec* %1415, %union.rec** @xx_link, align 8
  %1420 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1420, %union.rec** @zz_res, align 8
  %1421 = load %union.rec*, %union.rec** %hd2, align 8
  store %union.rec* %1421, %union.rec** @zz_hold, align 8
  %1422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3509 = icmp eq %union.rec* %1422, null
  br i1 %cmp3509, label %cond.true.3511, label %cond.false.3512

cond.true.3511:                                   ; preds = %if.end.3488
  %1423 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3547

cond.false.3512:                                  ; preds = %if.end.3488
  %1424 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3513 = icmp eq %union.rec* %1424, null
  br i1 %cmp3513, label %cond.true.3515, label %cond.false.3516

cond.true.3515:                                   ; preds = %cond.false.3512
  %1425 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3545

cond.false.3516:                                  ; preds = %cond.false.3512
  %1426 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13517 = bitcast %union.rec* %1426 to %struct.word_type*
  %olist3518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13517, i32 0, i32 0
  %arrayidx3519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3518, i32 0, i64 0
  %opred3520 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3519, i32 0, i32 0
  %1427 = load %union.rec*, %union.rec** %opred3520, align 8
  store %union.rec* %1427, %union.rec** @zz_tmp, align 8
  %1428 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13521 = bitcast %union.rec* %1428 to %struct.word_type*
  %olist3522 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13521, i32 0, i32 0
  %arrayidx3523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3522, i32 0, i64 0
  %opred3524 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3523, i32 0, i32 0
  %1429 = load %union.rec*, %union.rec** %opred3524, align 8
  %1430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13525 = bitcast %union.rec* %1430 to %struct.word_type*
  %olist3526 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13525, i32 0, i32 0
  %arrayidx3527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3526, i32 0, i64 0
  %opred3528 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3527, i32 0, i32 0
  store %union.rec* %1429, %union.rec** %opred3528, align 8
  %1431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1432 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13529 = bitcast %union.rec* %1432 to %struct.word_type*
  %olist3530 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13529, i32 0, i32 0
  %arrayidx3531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3530, i32 0, i64 0
  %opred3532 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3531, i32 0, i32 0
  %1433 = load %union.rec*, %union.rec** %opred3532, align 8
  %os13533 = bitcast %union.rec* %1433 to %struct.word_type*
  %olist3534 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13533, i32 0, i32 0
  %arrayidx3535 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3534, i32 0, i64 0
  %osucc3536 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3535, i32 0, i32 1
  store %union.rec* %1431, %union.rec** %osucc3536, align 8
  %1434 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1435 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13537 = bitcast %union.rec* %1435 to %struct.word_type*
  %olist3538 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13537, i32 0, i32 0
  %arrayidx3539 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3538, i32 0, i64 0
  %opred3540 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3539, i32 0, i32 0
  store %union.rec* %1434, %union.rec** %opred3540, align 8
  %1436 = load %union.rec*, %union.rec** @zz_res, align 8
  %1437 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13541 = bitcast %union.rec* %1437 to %struct.word_type*
  %olist3542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13541, i32 0, i32 0
  %arrayidx3543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3542, i32 0, i64 0
  %osucc3544 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3543, i32 0, i32 1
  store %union.rec* %1436, %union.rec** %osucc3544, align 8
  br label %cond.end.3545

cond.end.3545:                                    ; preds = %cond.false.3516, %cond.true.3515
  %cond3546 = phi %union.rec* [ %1425, %cond.true.3515 ], [ %1436, %cond.false.3516 ]
  br label %cond.end.3547

cond.end.3547:                                    ; preds = %cond.end.3545, %cond.true.3511
  %cond3548 = phi %union.rec* [ %1423, %cond.true.3511 ], [ %cond3546, %cond.end.3545 ]
  %1438 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1438, %union.rec** @zz_res, align 8
  %1439 = load %union.rec*, %union.rec** %val, align 8
  store %union.rec* %1439, %union.rec** @zz_hold, align 8
  %1440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3549 = icmp eq %union.rec* %1440, null
  br i1 %cmp3549, label %cond.true.3551, label %cond.false.3552

cond.true.3551:                                   ; preds = %cond.end.3547
  %1441 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3587

cond.false.3552:                                  ; preds = %cond.end.3547
  %1442 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3553 = icmp eq %union.rec* %1442, null
  br i1 %cmp3553, label %cond.true.3555, label %cond.false.3556

cond.true.3555:                                   ; preds = %cond.false.3552
  %1443 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3585

cond.false.3556:                                  ; preds = %cond.false.3552
  %1444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13557 = bitcast %union.rec* %1444 to %struct.word_type*
  %olist3558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13557, i32 0, i32 0
  %arrayidx3559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3558, i32 0, i64 1
  %opred3560 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3559, i32 0, i32 0
  %1445 = load %union.rec*, %union.rec** %opred3560, align 8
  store %union.rec* %1445, %union.rec** @zz_tmp, align 8
  %1446 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13561 = bitcast %union.rec* %1446 to %struct.word_type*
  %olist3562 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13561, i32 0, i32 0
  %arrayidx3563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3562, i32 0, i64 1
  %opred3564 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3563, i32 0, i32 0
  %1447 = load %union.rec*, %union.rec** %opred3564, align 8
  %1448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13565 = bitcast %union.rec* %1448 to %struct.word_type*
  %olist3566 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13565, i32 0, i32 0
  %arrayidx3567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3566, i32 0, i64 1
  %opred3568 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3567, i32 0, i32 0
  store %union.rec* %1447, %union.rec** %opred3568, align 8
  %1449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1450 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13569 = bitcast %union.rec* %1450 to %struct.word_type*
  %olist3570 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13569, i32 0, i32 0
  %arrayidx3571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3570, i32 0, i64 1
  %opred3572 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3571, i32 0, i32 0
  %1451 = load %union.rec*, %union.rec** %opred3572, align 8
  %os13573 = bitcast %union.rec* %1451 to %struct.word_type*
  %olist3574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13573, i32 0, i32 0
  %arrayidx3575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3574, i32 0, i64 1
  %osucc3576 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3575, i32 0, i32 1
  store %union.rec* %1449, %union.rec** %osucc3576, align 8
  %1452 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1453 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13577 = bitcast %union.rec* %1453 to %struct.word_type*
  %olist3578 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13577, i32 0, i32 0
  %arrayidx3579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3578, i32 0, i64 1
  %opred3580 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3579, i32 0, i32 0
  store %union.rec* %1452, %union.rec** %opred3580, align 8
  %1454 = load %union.rec*, %union.rec** @zz_res, align 8
  %1455 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13581 = bitcast %union.rec* %1455 to %struct.word_type*
  %olist3582 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13581, i32 0, i32 0
  %arrayidx3583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3582, i32 0, i64 1
  %osucc3584 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3583, i32 0, i32 1
  store %union.rec* %1454, %union.rec** %osucc3584, align 8
  br label %cond.end.3585

cond.end.3585:                                    ; preds = %cond.false.3556, %cond.true.3555
  %cond3586 = phi %union.rec* [ %1443, %cond.true.3555 ], [ %1454, %cond.false.3556 ]
  br label %cond.end.3587

cond.end.3587:                                    ; preds = %cond.end.3585, %cond.true.3551
  %cond3588 = phi %union.rec* [ %1441, %cond.true.3551 ], [ %cond3586, %cond.end.3585 ]
  %1456 = load %union.rec*, %union.rec** %hd2, align 8
  call void @SetTarget(%union.rec* %1456)
  %1457 = load %union.rec*, %union.rec** %hd2, align 8
  %os13589 = bitcast %union.rec* %1457 to %struct.word_type*
  %ou23590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13589, i32 0, i32 2
  %os233591 = bitcast %union.SECOND_UNION* %ou23590 to %struct.anon.2*
  %ofoll_or_prec = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os233591, i32 0, i32 0
  store i8 -127, i8* %ofoll_or_prec, align 1
  %1458 = load %union.rec*, %union.rec** %hd2, align 8
  %os23592 = bitcast %union.rec* %1458 to %struct.closure_type*
  %oactual3593 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23592, i32 0, i32 5
  %1459 = load %union.rec*, %union.rec** %oactual3593, align 8
  %os6 = bitcast %union.rec* %1459 to %struct.symbol_type*
  %ohas_enclose = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 16
  %bf.load3594 = load i8, i8* %ohas_enclose, align 2
  %bf.lshr3595 = lshr i8 %bf.load3594, 5
  %bf.clear3596 = and i8 %bf.lshr3595, 1
  %bf.cast3597 = zext i8 %bf.clear3596 to i32
  %tobool3598 = icmp ne i32 %bf.cast3597, 0
  br i1 %tobool3598, label %cond.true.3599, label %cond.false.3601

cond.true.3599:                                   ; preds = %cond.end.3587
  %1460 = load %union.rec*, %union.rec** %hd2, align 8
  %call3600 = call %union.rec* @BuildEnclose(%union.rec* %1460)
  br label %cond.end.3602

cond.false.3601:                                  ; preds = %cond.end.3587
  br label %cond.end.3602

cond.end.3602:                                    ; preds = %cond.false.3601, %cond.true.3599
  %cond3603 = phi %union.rec* [ %call3600, %cond.true.3599 ], [ null, %cond.false.3601 ]
  %1461 = load %union.rec*, %union.rec** %hd2, align 8
  %os2a3604 = bitcast %union.rec* %1461 to %struct.head_type*
  %oenclose_obj = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3604, i32 0, i32 12
  store %union.rec* %cond3603, %union.rec** %oenclose_obj, align 8
  %1462 = load %union.rec*, %union.rec** %hd2, align 8
  %os2a3605 = bitcast %union.rec* %1462 to %struct.head_type*
  %odead_headers = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3605, i32 0, i32 14
  store %union.rec* null, %union.rec** %odead_headers, align 8
  %1463 = load %union.rec*, %union.rec** %hd2, align 8
  %os2a3606 = bitcast %union.rec* %1463 to %struct.head_type*
  %oheaders3607 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a3606, i32 0, i32 13
  store %union.rec* null, %union.rec** %oheaders3607, align 8
  %1464 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv3608 = zext i8 %1464 to i32
  store i32 %conv3608, i32* @zz_size, align 4
  %conv3609 = sext i32 %conv3608 to i64
  %cmp3610 = icmp uge i64 %conv3609, 265
  br i1 %cmp3610, label %if.then.3612, label %if.else.3614

if.then.3612:                                     ; preds = %cond.end.3602
  %1465 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3613 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1465)
  br label %if.end.3631

if.else.3614:                                     ; preds = %cond.end.3602
  %1466 = load i32, i32* @zz_size, align 4
  %idxprom3615 = sext i32 %1466 to i64
  %arrayidx3616 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3615
  %1467 = load %union.rec*, %union.rec** %arrayidx3616, align 8
  %cmp3617 = icmp eq %union.rec* %1467, null
  br i1 %cmp3617, label %if.then.3619, label %if.else.3621

if.then.3619:                                     ; preds = %if.else.3614
  %1468 = load i32, i32* @zz_size, align 4
  %1469 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3620 = call %union.rec* @GetMemory(i32 %1468, %struct.FILE_POS* %1469)
  store %union.rec* %call3620, %union.rec** @zz_hold, align 8
  br label %if.end.3630

if.else.3621:                                     ; preds = %if.else.3614
  %1470 = load i32, i32* @zz_size, align 4
  %idxprom3622 = sext i32 %1470 to i64
  %arrayidx3623 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3622
  %1471 = load %union.rec*, %union.rec** %arrayidx3623, align 8
  store %union.rec* %1471, %union.rec** @zz_hold, align 8
  store %union.rec* %1471, %union.rec** @zz_hold, align 8
  %1472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13624 = bitcast %union.rec* %1472 to %struct.word_type*
  %olist3625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13624, i32 0, i32 0
  %arrayidx3626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3625, i32 0, i64 0
  %opred3627 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3626, i32 0, i32 0
  %1473 = load %union.rec*, %union.rec** %opred3627, align 8
  %1474 = load i32, i32* @zz_size, align 4
  %idxprom3628 = sext i32 %1474 to i64
  %arrayidx3629 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3628
  store %union.rec* %1473, %union.rec** %arrayidx3629, align 8
  br label %if.end.3630

if.end.3630:                                      ; preds = %if.else.3621, %if.then.3619
  br label %if.end.3631

if.end.3631:                                      ; preds = %if.end.3630, %if.then.3612
  %1475 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13632 = bitcast %union.rec* %1475 to %struct.word_type*
  %ou13633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13632, i32 0, i32 1
  %os113634 = bitcast %union.FIRST_UNION* %ou13633 to %struct.anon*
  %otype3635 = getelementptr inbounds %struct.anon, %struct.anon* %os113634, i32 0, i32 0
  store i8 0, i8* %otype3635, align 1
  %1476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13636 = bitcast %union.rec* %1477 to %struct.word_type*
  %olist3637 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13636, i32 0, i32 0
  %arrayidx3638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3637, i32 0, i64 1
  %osucc3639 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3638, i32 0, i32 1
  store %union.rec* %1476, %union.rec** %osucc3639, align 8
  %1478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13640 = bitcast %union.rec* %1478 to %struct.word_type*
  %olist3641 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13640, i32 0, i32 0
  %arrayidx3642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3641, i32 0, i64 1
  %opred3643 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3642, i32 0, i32 0
  store %union.rec* %1476, %union.rec** %opred3643, align 8
  %1479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13644 = bitcast %union.rec* %1479 to %struct.word_type*
  %olist3645 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13644, i32 0, i32 0
  %arrayidx3646 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3645, i32 0, i64 0
  %osucc3647 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3646, i32 0, i32 1
  store %union.rec* %1476, %union.rec** %osucc3647, align 8
  %1480 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13648 = bitcast %union.rec* %1480 to %struct.word_type*
  %olist3649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13648, i32 0, i32 0
  %arrayidx3650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3649, i32 0, i64 0
  %opred3651 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3650, i32 0, i32 0
  store %union.rec* %1476, %union.rec** %opred3651, align 8
  store %union.rec* %1476, %union.rec** @xx_link, align 8
  %1481 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1481, %union.rec** @zz_res, align 8
  %1482 = load %union.rec*, %union.rec** %y, align 8
  %os13652 = bitcast %union.rec* %1482 to %struct.word_type*
  %olist3653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13652, i32 0, i32 0
  %arrayidx3654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3653, i32 0, i64 1
  %osucc3655 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3654, i32 0, i32 1
  %1483 = load %union.rec*, %union.rec** %osucc3655, align 8
  store %union.rec* %1483, %union.rec** @zz_hold, align 8
  %1484 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3656 = icmp eq %union.rec* %1484, null
  br i1 %cmp3656, label %cond.true.3658, label %cond.false.3659

cond.true.3658:                                   ; preds = %if.end.3631
  %1485 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3694

cond.false.3659:                                  ; preds = %if.end.3631
  %1486 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3660 = icmp eq %union.rec* %1486, null
  br i1 %cmp3660, label %cond.true.3662, label %cond.false.3663

cond.true.3662:                                   ; preds = %cond.false.3659
  %1487 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3692

cond.false.3663:                                  ; preds = %cond.false.3659
  %1488 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13664 = bitcast %union.rec* %1488 to %struct.word_type*
  %olist3665 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13664, i32 0, i32 0
  %arrayidx3666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3665, i32 0, i64 0
  %opred3667 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3666, i32 0, i32 0
  %1489 = load %union.rec*, %union.rec** %opred3667, align 8
  store %union.rec* %1489, %union.rec** @zz_tmp, align 8
  %1490 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13668 = bitcast %union.rec* %1490 to %struct.word_type*
  %olist3669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13668, i32 0, i32 0
  %arrayidx3670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3669, i32 0, i64 0
  %opred3671 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3670, i32 0, i32 0
  %1491 = load %union.rec*, %union.rec** %opred3671, align 8
  %1492 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13672 = bitcast %union.rec* %1492 to %struct.word_type*
  %olist3673 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13672, i32 0, i32 0
  %arrayidx3674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3673, i32 0, i64 0
  %opred3675 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3674, i32 0, i32 0
  store %union.rec* %1491, %union.rec** %opred3675, align 8
  %1493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1494 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13676 = bitcast %union.rec* %1494 to %struct.word_type*
  %olist3677 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13676, i32 0, i32 0
  %arrayidx3678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3677, i32 0, i64 0
  %opred3679 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3678, i32 0, i32 0
  %1495 = load %union.rec*, %union.rec** %opred3679, align 8
  %os13680 = bitcast %union.rec* %1495 to %struct.word_type*
  %olist3681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13680, i32 0, i32 0
  %arrayidx3682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3681, i32 0, i64 0
  %osucc3683 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3682, i32 0, i32 1
  store %union.rec* %1493, %union.rec** %osucc3683, align 8
  %1496 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1497 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13684 = bitcast %union.rec* %1497 to %struct.word_type*
  %olist3685 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13684, i32 0, i32 0
  %arrayidx3686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3685, i32 0, i64 0
  %opred3687 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3686, i32 0, i32 0
  store %union.rec* %1496, %union.rec** %opred3687, align 8
  %1498 = load %union.rec*, %union.rec** @zz_res, align 8
  %1499 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13688 = bitcast %union.rec* %1499 to %struct.word_type*
  %olist3689 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13688, i32 0, i32 0
  %arrayidx3690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3689, i32 0, i64 0
  %osucc3691 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3690, i32 0, i32 1
  store %union.rec* %1498, %union.rec** %osucc3691, align 8
  br label %cond.end.3692

cond.end.3692:                                    ; preds = %cond.false.3663, %cond.true.3662
  %cond3693 = phi %union.rec* [ %1487, %cond.true.3662 ], [ %1498, %cond.false.3663 ]
  br label %cond.end.3694

cond.end.3694:                                    ; preds = %cond.end.3692, %cond.true.3658
  %cond3695 = phi %union.rec* [ %1485, %cond.true.3658 ], [ %cond3693, %cond.end.3692 ]
  %1500 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1500, %union.rec** @zz_res, align 8
  %1501 = load %union.rec*, %union.rec** %index2, align 8
  store %union.rec* %1501, %union.rec** @zz_hold, align 8
  %1502 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3696 = icmp eq %union.rec* %1502, null
  br i1 %cmp3696, label %cond.true.3698, label %cond.false.3699

cond.true.3698:                                   ; preds = %cond.end.3694
  %1503 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3734

cond.false.3699:                                  ; preds = %cond.end.3694
  %1504 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3700 = icmp eq %union.rec* %1504, null
  br i1 %cmp3700, label %cond.true.3702, label %cond.false.3703

cond.true.3702:                                   ; preds = %cond.false.3699
  %1505 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3732

cond.false.3703:                                  ; preds = %cond.false.3699
  %1506 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13704 = bitcast %union.rec* %1506 to %struct.word_type*
  %olist3705 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13704, i32 0, i32 0
  %arrayidx3706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3705, i32 0, i64 1
  %opred3707 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3706, i32 0, i32 0
  %1507 = load %union.rec*, %union.rec** %opred3707, align 8
  store %union.rec* %1507, %union.rec** @zz_tmp, align 8
  %1508 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13708 = bitcast %union.rec* %1508 to %struct.word_type*
  %olist3709 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13708, i32 0, i32 0
  %arrayidx3710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3709, i32 0, i64 1
  %opred3711 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3710, i32 0, i32 0
  %1509 = load %union.rec*, %union.rec** %opred3711, align 8
  %1510 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13712 = bitcast %union.rec* %1510 to %struct.word_type*
  %olist3713 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13712, i32 0, i32 0
  %arrayidx3714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3713, i32 0, i64 1
  %opred3715 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3714, i32 0, i32 0
  store %union.rec* %1509, %union.rec** %opred3715, align 8
  %1511 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1512 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13716 = bitcast %union.rec* %1512 to %struct.word_type*
  %olist3717 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13716, i32 0, i32 0
  %arrayidx3718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3717, i32 0, i64 1
  %opred3719 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3718, i32 0, i32 0
  %1513 = load %union.rec*, %union.rec** %opred3719, align 8
  %os13720 = bitcast %union.rec* %1513 to %struct.word_type*
  %olist3721 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13720, i32 0, i32 0
  %arrayidx3722 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3721, i32 0, i64 1
  %osucc3723 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3722, i32 0, i32 1
  store %union.rec* %1511, %union.rec** %osucc3723, align 8
  %1514 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1515 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13724 = bitcast %union.rec* %1515 to %struct.word_type*
  %olist3725 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13724, i32 0, i32 0
  %arrayidx3726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3725, i32 0, i64 1
  %opred3727 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3726, i32 0, i32 0
  store %union.rec* %1514, %union.rec** %opred3727, align 8
  %1516 = load %union.rec*, %union.rec** @zz_res, align 8
  %1517 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13728 = bitcast %union.rec* %1517 to %struct.word_type*
  %olist3729 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13728, i32 0, i32 0
  %arrayidx3730 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3729, i32 0, i64 1
  %osucc3731 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3730, i32 0, i32 1
  store %union.rec* %1516, %union.rec** %osucc3731, align 8
  br label %cond.end.3732

cond.end.3732:                                    ; preds = %cond.false.3703, %cond.true.3702
  %cond3733 = phi %union.rec* [ %1505, %cond.true.3702 ], [ %1516, %cond.false.3703 ]
  br label %cond.end.3734

cond.end.3734:                                    ; preds = %cond.end.3732, %cond.true.3698
  %cond3735 = phi %union.rec* [ %1503, %cond.true.3698 ], [ %cond3733, %cond.end.3732 ]
  %1518 = load %union.rec*, %union.rec** %eg, align 8
  %os13736 = bitcast %union.rec* %1518 to %struct.word_type*
  %olist3737 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13736, i32 0, i32 0
  %arrayidx3738 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3737, i32 0, i64 0
  %osucc3739 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3738, i32 0, i32 1
  %1519 = load %union.rec*, %union.rec** %osucc3739, align 8
  %os13740 = bitcast %union.rec* %1519 to %struct.word_type*
  %olist3741 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13740, i32 0, i32 0
  %arrayidx3742 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3741, i32 0, i64 1
  %opred3743 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3742, i32 0, i32 0
  %1520 = load %union.rec*, %union.rec** %opred3743, align 8
  store %union.rec* %1520, %union.rec** %tag, align 8
  br label %for.cond.3744

for.cond.3744:                                    ; preds = %for.inc.3753, %cond.end.3734
  %1521 = load %union.rec*, %union.rec** %tag, align 8
  %os13745 = bitcast %union.rec* %1521 to %struct.word_type*
  %ou13746 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13745, i32 0, i32 1
  %os113747 = bitcast %union.FIRST_UNION* %ou13746 to %struct.anon*
  %otype3748 = getelementptr inbounds %struct.anon, %struct.anon* %os113747, i32 0, i32 0
  %1522 = load i8, i8* %otype3748, align 1
  %conv3749 = zext i8 %1522 to i32
  %cmp3750 = icmp eq i32 %conv3749, 0
  br i1 %cmp3750, label %for.body.3752, label %for.end.3758

for.body.3752:                                    ; preds = %for.cond.3744
  br label %for.inc.3753

for.inc.3753:                                     ; preds = %for.body.3752
  %1523 = load %union.rec*, %union.rec** %tag, align 8
  %os13754 = bitcast %union.rec* %1523 to %struct.word_type*
  %olist3755 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13754, i32 0, i32 0
  %arrayidx3756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3755, i32 0, i64 1
  %opred3757 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3756, i32 0, i32 0
  %1524 = load %union.rec*, %union.rec** %opred3757, align 8
  store %union.rec* %1524, %union.rec** %tag, align 8
  br label %for.cond.3744

for.end.3758:                                     ; preds = %for.cond.3744
  %1525 = load %union.rec*, %union.rec** %eg, align 8
  %os13759 = bitcast %union.rec* %1525 to %struct.word_type*
  %olist3760 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13759, i32 0, i32 0
  %arrayidx3761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3760, i32 0, i64 0
  %opred3762 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3761, i32 0, i32 0
  %1526 = load %union.rec*, %union.rec** %opred3762, align 8
  %os13763 = bitcast %union.rec* %1526 to %struct.word_type*
  %olist3764 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13763, i32 0, i32 0
  %arrayidx3765 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3764, i32 0, i64 1
  %opred3766 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3765, i32 0, i32 0
  %1527 = load %union.rec*, %union.rec** %opred3766, align 8
  store %union.rec* %1527, %union.rec** %seq, align 8
  br label %for.cond.3767

for.cond.3767:                                    ; preds = %for.inc.3776, %for.end.3758
  %1528 = load %union.rec*, %union.rec** %seq, align 8
  %os13768 = bitcast %union.rec* %1528 to %struct.word_type*
  %ou13769 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13768, i32 0, i32 1
  %os113770 = bitcast %union.FIRST_UNION* %ou13769 to %struct.anon*
  %otype3771 = getelementptr inbounds %struct.anon, %struct.anon* %os113770, i32 0, i32 0
  %1529 = load i8, i8* %otype3771, align 1
  %conv3772 = zext i8 %1529 to i32
  %cmp3773 = icmp eq i32 %conv3772, 0
  br i1 %cmp3773, label %for.body.3775, label %for.end.3781

for.body.3775:                                    ; preds = %for.cond.3767
  br label %for.inc.3776

for.inc.3776:                                     ; preds = %for.body.3775
  %1530 = load %union.rec*, %union.rec** %seq, align 8
  %os13777 = bitcast %union.rec* %1530 to %struct.word_type*
  %olist3778 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13777, i32 0, i32 0
  %arrayidx3779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3778, i32 0, i64 1
  %opred3780 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3779, i32 0, i32 0
  %1531 = load %union.rec*, %union.rec** %opred3780, align 8
  store %union.rec* %1531, %union.rec** %seq, align 8
  br label %for.cond.3767

for.end.3781:                                     ; preds = %for.cond.3767
  br label %do.body

do.body:                                          ; preds = %land.end.4252, %for.end.3781
  %1532 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %newtag, i32 0, i32 0
  %arraydecay3782 = getelementptr inbounds [512 x i8], [512 x i8]* %newseq, i32 0, i32 0
  %1533 = load %union.rec*, %union.rec** %eg, align 8
  %os83783 = bitcast %union.rec* %1533 to %struct.ext_gall_type*
  %oeg_fnum3784 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os83783, i32 0, i32 2
  %1534 = load %union.rec*, %union.rec** %eg, align 8
  %os83785 = bitcast %union.rec* %1534 to %struct.ext_gall_type*
  %oeg_fpos3786 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os83785, i32 0, i32 4
  %1535 = load %union.rec*, %union.rec** %eg, align 8
  %os83787 = bitcast %union.rec* %1535 to %struct.ext_gall_type*
  %oeg_lnum3788 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os83787, i32 0, i32 3
  %1536 = load %union.rec*, %union.rec** %eg, align 8
  %os83789 = bitcast %union.rec* %1536 to %struct.ext_gall_type*
  %oeg_cont = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os83789, i32 0, i32 5
  %call3790 = call i32 @DbRetrieveNext(%union.rec* %1532, i32* %gall, %union.rec** %newsym, i8* %arraydecay, i8* %arraydecay3782, i16* %oeg_fnum3784, i64* %oeg_fpos3786, i32* %oeg_lnum3788, i64* %oeg_cont)
  store i32 %call3790, i32* %found, align 4
  %1537 = load i32, i32* %found, align 4
  %tobool3791 = icmp ne i32 %1537, 0
  br i1 %tobool3791, label %if.then.3792, label %if.end.3806

if.then.3792:                                     ; preds = %do.body
  %1538 = load i32, i32* %gall, align 4
  %tobool3793 = icmp ne i32 %1538, 0
  br i1 %tobool3793, label %land.lhs.true.3794, label %land.end.3805

land.lhs.true.3794:                               ; preds = %if.then.3792
  %1539 = load %union.rec*, %union.rec** %newsym, align 8
  %1540 = load %union.rec*, %union.rec** %eg, align 8
  %os83795 = bitcast %union.rec* %1540 to %struct.ext_gall_type*
  %oeg_symbol = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os83795, i32 0, i32 6
  %1541 = load %union.rec*, %union.rec** %oeg_symbol, align 8
  %cmp3796 = icmp eq %union.rec* %1539, %1541
  br i1 %cmp3796, label %land.rhs.3798, label %land.end.3805

land.rhs.3798:                                    ; preds = %land.lhs.true.3794
  %arraydecay3799 = getelementptr inbounds [512 x i8], [512 x i8]* %newtag, i32 0, i32 0
  %1542 = load %union.rec*, %union.rec** %tag, align 8
  %os13800 = bitcast %union.rec* %1542 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os13800, i32 0, i32 4
  %arraydecay3801 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call3802 = call i32 @strcmp(i8* %arraydecay3799, i8* %arraydecay3801) #3
  %cmp3803 = icmp eq i32 %call3802, 0
  br label %land.end.3805

land.end.3805:                                    ; preds = %land.rhs.3798, %land.lhs.true.3794, %if.then.3792
  %1543 = phi i1 [ false, %land.lhs.true.3794 ], [ false, %if.then.3792 ], [ %cmp3803, %land.rhs.3798 ]
  %land.ext = zext i1 %1543 to i32
  store i32 %land.ext, i32* %found, align 4
  br label %if.end.3806

if.end.3806:                                      ; preds = %land.end.3805, %do.body
  %1544 = load i32, i32* %found, align 4
  %tobool3807 = icmp ne i32 %1544, 0
  br i1 %tobool3807, label %land.lhs.true.3808, label %if.end.4242

land.lhs.true.3808:                               ; preds = %if.end.3806
  %arraydecay3809 = getelementptr inbounds [512 x i8], [512 x i8]* %newseq, i32 0, i32 0
  %1545 = load %union.rec*, %union.rec** %seq, align 8
  %os13810 = bitcast %union.rec* %1545 to %struct.word_type*
  %ostring3811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13810, i32 0, i32 4
  %arraydecay3812 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring3811, i32 0, i32 0
  %call3813 = call i32 @strcmp(i8* %arraydecay3809, i8* %arraydecay3812) #3
  %cmp3814 = icmp eq i32 %call3813, 0
  br i1 %cmp3814, label %if.then.3816, label %if.end.4242

if.then.3816:                                     ; preds = %land.lhs.true.3808
  call void @SwitchScope(%union.rec* null)
  %1546 = load %union.rec*, %union.rec** %eg, align 8
  %os83817 = bitcast %union.rec* %1546 to %struct.ext_gall_type*
  %oeg_fnum3818 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os83817, i32 0, i32 2
  %1547 = load i16, i16* %oeg_fnum3818, align 2
  %1548 = load %union.rec*, %union.rec** %eg, align 8
  %os83819 = bitcast %union.rec* %1548 to %struct.ext_gall_type*
  %oeg_fpos3820 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os83819, i32 0, i32 4
  %1549 = load i64, i64* %oeg_fpos3820, align 8
  %1550 = load %union.rec*, %union.rec** %eg, align 8
  %os83821 = bitcast %union.rec* %1550 to %struct.ext_gall_type*
  %oeg_lnum3822 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os83821, i32 0, i32 3
  %1551 = load i32, i32* %oeg_lnum3822, align 4
  %call3823 = call %union.rec* @ReadFromFile(i16 zeroext %1547, i64 %1549, i32 %1551)
  store %union.rec* %call3823, %union.rec** %val, align 8
  call void @UnSwitchScope(%union.rec* null)
  %1552 = load %union.rec*, %union.rec** %val, align 8
  %cmp3824 = icmp eq %union.rec* %1552, null
  br i1 %cmp3824, label %if.then.3826, label %if.end.3834

if.then.3826:                                     ; preds = %if.then.3816
  %1553 = load %union.rec*, %union.rec** %y, align 8
  %os13827 = bitcast %union.rec* %1553 to %struct.word_type*
  %ou13828 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13827, i32 0, i32 1
  %ofpos3829 = bitcast %union.FIRST_UNION* %ou13828 to %struct.FILE_POS*
  %1554 = load %union.rec*, %union.rec** %eg, align 8
  %os83830 = bitcast %union.rec* %1554 to %struct.ext_gall_type*
  %oeg_fnum3831 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os83830, i32 0, i32 2
  %1555 = load i16, i16* %oeg_fnum3831, align 2
  %call3832 = call i8* @FileName(i16 zeroext %1555)
  %call3833 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 20, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos3829, i8* %call3832)
  br label %if.end.3834

if.end.3834:                                      ; preds = %if.then.3826, %if.then.3816
  %1556 = load %union.rec*, %union.rec** %val, align 8
  %os13835 = bitcast %union.rec* %1556 to %struct.word_type*
  %ou13836 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13835, i32 0, i32 1
  %os113837 = bitcast %union.FIRST_UNION* %ou13836 to %struct.anon*
  %otype3838 = getelementptr inbounds %struct.anon, %struct.anon* %os113837, i32 0, i32 0
  %1557 = load i8, i8* %otype3838, align 1
  %conv3839 = zext i8 %1557 to i32
  %cmp3840 = icmp eq i32 %conv3839, 2
  br i1 %cmp3840, label %if.end.3844, label %if.then.3842

if.then.3842:                                     ; preds = %if.end.3834
  %1558 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3843 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1558, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.3844

if.end.3844:                                      ; preds = %if.then.3842, %if.end.3834
  %1559 = load %union.rec*, %union.rec** %val, align 8
  %os23845 = bitcast %union.rec* %1559 to %struct.closure_type*
  %oactual3846 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23845, i32 0, i32 5
  %1560 = load %union.rec*, %union.rec** %oactual3846, align 8
  %os63847 = bitcast %union.rec* %1560 to %struct.symbol_type*
  %ohas_merge = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os63847, i32 0, i32 16
  %bf.load3848 = load i8, i8* %ohas_merge, align 2
  %bf.lshr3849 = lshr i8 %bf.load3848, 3
  %bf.clear3850 = and i8 %bf.lshr3849, 1
  %bf.cast3851 = zext i8 %bf.clear3850 to i32
  %tobool3852 = icmp ne i32 %bf.cast3851, 0
  br i1 %tobool3852, label %if.else.3855, label %if.then.3853

if.then.3853:                                     ; preds = %if.end.3844
  %1561 = load %union.rec*, %union.rec** %val, align 8
  %call3854 = call i32 @DisposeObject(%union.rec* %1561)
  br label %if.end.4241

if.else.3855:                                     ; preds = %if.end.3844
  %1562 = load %union.rec*, %union.rec** %hd2, align 8
  %os13856 = bitcast %union.rec* %1562 to %struct.word_type*
  %ou13857 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13856, i32 0, i32 1
  %os113858 = bitcast %union.FIRST_UNION* %ou13857 to %struct.anon*
  %otype3859 = getelementptr inbounds %struct.anon, %struct.anon* %os113858, i32 0, i32 0
  %1563 = load i8, i8* %otype3859, align 1
  %conv3860 = zext i8 %1563 to i32
  %cmp3861 = icmp ne i32 %conv3860, 17
  br i1 %cmp3861, label %if.then.3863, label %if.end.4116

if.then.3863:                                     ; preds = %if.else.3855
  %1564 = load %union.rec*, %union.rec** %hd2, align 8
  store %union.rec* %1564, %union.rec** %tmp3865, align 8
  %1565 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv3866 = zext i8 %1565 to i32
  store i32 %conv3866, i32* @zz_size, align 4
  %conv3867 = sext i32 %conv3866 to i64
  %cmp3868 = icmp uge i64 %conv3867, 265
  br i1 %cmp3868, label %if.then.3870, label %if.else.3872

if.then.3870:                                     ; preds = %if.then.3863
  %1566 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3871 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1566)
  br label %if.end.3889

if.else.3872:                                     ; preds = %if.then.3863
  %1567 = load i32, i32* @zz_size, align 4
  %idxprom3873 = sext i32 %1567 to i64
  %arrayidx3874 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3873
  %1568 = load %union.rec*, %union.rec** %arrayidx3874, align 8
  %cmp3875 = icmp eq %union.rec* %1568, null
  br i1 %cmp3875, label %if.then.3877, label %if.else.3879

if.then.3877:                                     ; preds = %if.else.3872
  %1569 = load i32, i32* @zz_size, align 4
  %1570 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3878 = call %union.rec* @GetMemory(i32 %1569, %struct.FILE_POS* %1570)
  store %union.rec* %call3878, %union.rec** @zz_hold, align 8
  br label %if.end.3888

if.else.3879:                                     ; preds = %if.else.3872
  %1571 = load i32, i32* @zz_size, align 4
  %idxprom3880 = sext i32 %1571 to i64
  %arrayidx3881 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3880
  %1572 = load %union.rec*, %union.rec** %arrayidx3881, align 8
  store %union.rec* %1572, %union.rec** @zz_hold, align 8
  store %union.rec* %1572, %union.rec** @zz_hold, align 8
  %1573 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13882 = bitcast %union.rec* %1573 to %struct.word_type*
  %olist3883 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13882, i32 0, i32 0
  %arrayidx3884 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3883, i32 0, i64 0
  %opred3885 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3884, i32 0, i32 0
  %1574 = load %union.rec*, %union.rec** %opred3885, align 8
  %1575 = load i32, i32* @zz_size, align 4
  %idxprom3886 = sext i32 %1575 to i64
  %arrayidx3887 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3886
  store %union.rec* %1574, %union.rec** %arrayidx3887, align 8
  br label %if.end.3888

if.end.3888:                                      ; preds = %if.else.3879, %if.then.3877
  br label %if.end.3889

if.end.3889:                                      ; preds = %if.end.3888, %if.then.3870
  %1576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13890 = bitcast %union.rec* %1576 to %struct.word_type*
  %ou13891 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13890, i32 0, i32 1
  %os113892 = bitcast %union.FIRST_UNION* %ou13891 to %struct.anon*
  %otype3893 = getelementptr inbounds %struct.anon, %struct.anon* %os113892, i32 0, i32 0
  store i8 17, i8* %otype3893, align 1
  %1577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1578 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13894 = bitcast %union.rec* %1578 to %struct.word_type*
  %olist3895 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13894, i32 0, i32 0
  %arrayidx3896 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3895, i32 0, i64 1
  %osucc3897 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3896, i32 0, i32 1
  store %union.rec* %1577, %union.rec** %osucc3897, align 8
  %1579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13898 = bitcast %union.rec* %1579 to %struct.word_type*
  %olist3899 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13898, i32 0, i32 0
  %arrayidx3900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3899, i32 0, i64 1
  %opred3901 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3900, i32 0, i32 0
  store %union.rec* %1577, %union.rec** %opred3901, align 8
  %1580 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13902 = bitcast %union.rec* %1580 to %struct.word_type*
  %olist3903 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13902, i32 0, i32 0
  %arrayidx3904 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3903, i32 0, i64 0
  %osucc3905 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3904, i32 0, i32 1
  store %union.rec* %1577, %union.rec** %osucc3905, align 8
  %1581 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13906 = bitcast %union.rec* %1581 to %struct.word_type*
  %olist3907 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13906, i32 0, i32 0
  %arrayidx3908 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3907, i32 0, i64 0
  %opred3909 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3908, i32 0, i32 0
  store %union.rec* %1577, %union.rec** %opred3909, align 8
  store %union.rec* %1577, %union.rec** %hd2, align 8
  %1582 = load %union.rec*, %union.rec** %tmp3865, align 8
  %os13910 = bitcast %union.rec* %1582 to %struct.word_type*
  %olist3911 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13910, i32 0, i32 0
  %arrayidx3912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3911, i32 0, i64 1
  %osucc3913 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3912, i32 0, i32 1
  %1583 = load %union.rec*, %union.rec** %osucc3913, align 8
  store %union.rec* %1583, %union.rec** @xx_link, align 8
  %1584 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1584, %union.rec** @zz_hold, align 8
  %1585 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13914 = bitcast %union.rec* %1585 to %struct.word_type*
  %olist3915 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13914, i32 0, i32 0
  %arrayidx3916 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3915, i32 0, i64 1
  %osucc3917 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3916, i32 0, i32 1
  %1586 = load %union.rec*, %union.rec** %osucc3917, align 8
  %1587 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3918 = icmp eq %union.rec* %1586, %1587
  br i1 %cmp3918, label %cond.true.3920, label %cond.false.3921

cond.true.3920:                                   ; preds = %if.end.3889
  br label %cond.end.3950

cond.false.3921:                                  ; preds = %if.end.3889
  %1588 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13922 = bitcast %union.rec* %1588 to %struct.word_type*
  %olist3923 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13922, i32 0, i32 0
  %arrayidx3924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3923, i32 0, i64 1
  %osucc3925 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3924, i32 0, i32 1
  %1589 = load %union.rec*, %union.rec** %osucc3925, align 8
  store %union.rec* %1589, %union.rec** @zz_res, align 8
  %1590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13926 = bitcast %union.rec* %1590 to %struct.word_type*
  %olist3927 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13926, i32 0, i32 0
  %arrayidx3928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3927, i32 0, i64 1
  %opred3929 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3928, i32 0, i32 0
  %1591 = load %union.rec*, %union.rec** %opred3929, align 8
  %1592 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13930 = bitcast %union.rec* %1592 to %struct.word_type*
  %olist3931 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13930, i32 0, i32 0
  %arrayidx3932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3931, i32 0, i64 1
  %opred3933 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3932, i32 0, i32 0
  store %union.rec* %1591, %union.rec** %opred3933, align 8
  %1593 = load %union.rec*, %union.rec** @zz_res, align 8
  %1594 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13934 = bitcast %union.rec* %1594 to %struct.word_type*
  %olist3935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13934, i32 0, i32 0
  %arrayidx3936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3935, i32 0, i64 1
  %opred3937 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3936, i32 0, i32 0
  %1595 = load %union.rec*, %union.rec** %opred3937, align 8
  %os13938 = bitcast %union.rec* %1595 to %struct.word_type*
  %olist3939 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13938, i32 0, i32 0
  %arrayidx3940 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3939, i32 0, i64 1
  %osucc3941 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3940, i32 0, i32 1
  store %union.rec* %1593, %union.rec** %osucc3941, align 8
  %1596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1597 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13942 = bitcast %union.rec* %1597 to %struct.word_type*
  %olist3943 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13942, i32 0, i32 0
  %arrayidx3944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3943, i32 0, i64 1
  %osucc3945 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3944, i32 0, i32 1
  store %union.rec* %1596, %union.rec** %osucc3945, align 8
  %1598 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13946 = bitcast %union.rec* %1598 to %struct.word_type*
  %olist3947 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13946, i32 0, i32 0
  %arrayidx3948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3947, i32 0, i64 1
  %opred3949 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3948, i32 0, i32 0
  store %union.rec* %1596, %union.rec** %opred3949, align 8
  %1599 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3950

cond.end.3950:                                    ; preds = %cond.false.3921, %cond.true.3920
  %cond3951 = phi %union.rec* [ null, %cond.true.3920 ], [ %1599, %cond.false.3921 ]
  %1600 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1600, %union.rec** @zz_res, align 8
  %1601 = load %union.rec*, %union.rec** %hd2, align 8
  store %union.rec* %1601, %union.rec** @zz_hold, align 8
  %1602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3952 = icmp eq %union.rec* %1602, null
  br i1 %cmp3952, label %cond.true.3954, label %cond.false.3955

cond.true.3954:                                   ; preds = %cond.end.3950
  %1603 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.3990

cond.false.3955:                                  ; preds = %cond.end.3950
  %1604 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp3956 = icmp eq %union.rec* %1604, null
  br i1 %cmp3956, label %cond.true.3958, label %cond.false.3959

cond.true.3958:                                   ; preds = %cond.false.3955
  %1605 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.3988

cond.false.3959:                                  ; preds = %cond.false.3955
  %1606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13960 = bitcast %union.rec* %1606 to %struct.word_type*
  %olist3961 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13960, i32 0, i32 0
  %arrayidx3962 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3961, i32 0, i64 1
  %opred3963 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3962, i32 0, i32 0
  %1607 = load %union.rec*, %union.rec** %opred3963, align 8
  store %union.rec* %1607, %union.rec** @zz_tmp, align 8
  %1608 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13964 = bitcast %union.rec* %1608 to %struct.word_type*
  %olist3965 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13964, i32 0, i32 0
  %arrayidx3966 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3965, i32 0, i64 1
  %opred3967 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3966, i32 0, i32 0
  %1609 = load %union.rec*, %union.rec** %opred3967, align 8
  %1610 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13968 = bitcast %union.rec* %1610 to %struct.word_type*
  %olist3969 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13968, i32 0, i32 0
  %arrayidx3970 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3969, i32 0, i64 1
  %opred3971 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3970, i32 0, i32 0
  store %union.rec* %1609, %union.rec** %opred3971, align 8
  %1611 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1612 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13972 = bitcast %union.rec* %1612 to %struct.word_type*
  %olist3973 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13972, i32 0, i32 0
  %arrayidx3974 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3973, i32 0, i64 1
  %opred3975 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3974, i32 0, i32 0
  %1613 = load %union.rec*, %union.rec** %opred3975, align 8
  %os13976 = bitcast %union.rec* %1613 to %struct.word_type*
  %olist3977 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13976, i32 0, i32 0
  %arrayidx3978 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3977, i32 0, i64 1
  %osucc3979 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3978, i32 0, i32 1
  store %union.rec* %1611, %union.rec** %osucc3979, align 8
  %1614 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1615 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13980 = bitcast %union.rec* %1615 to %struct.word_type*
  %olist3981 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13980, i32 0, i32 0
  %arrayidx3982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3981, i32 0, i64 1
  %opred3983 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3982, i32 0, i32 0
  store %union.rec* %1614, %union.rec** %opred3983, align 8
  %1616 = load %union.rec*, %union.rec** @zz_res, align 8
  %1617 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os13984 = bitcast %union.rec* %1617 to %struct.word_type*
  %olist3985 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13984, i32 0, i32 0
  %arrayidx3986 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3985, i32 0, i64 1
  %osucc3987 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3986, i32 0, i32 1
  store %union.rec* %1616, %union.rec** %osucc3987, align 8
  br label %cond.end.3988

cond.end.3988:                                    ; preds = %cond.false.3959, %cond.true.3958
  %cond3989 = phi %union.rec* [ %1605, %cond.true.3958 ], [ %1616, %cond.false.3959 ]
  br label %cond.end.3990

cond.end.3990:                                    ; preds = %cond.end.3988, %cond.true.3954
  %cond3991 = phi %union.rec* [ %1603, %cond.true.3954 ], [ %cond3989, %cond.end.3988 ]
  %1618 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv3992 = zext i8 %1618 to i32
  store i32 %conv3992, i32* @zz_size, align 4
  %conv3993 = sext i32 %conv3992 to i64
  %cmp3994 = icmp uge i64 %conv3993, 265
  br i1 %cmp3994, label %if.then.3996, label %if.else.3998

if.then.3996:                                     ; preds = %cond.end.3990
  %1619 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3997 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1619)
  br label %if.end.4015

if.else.3998:                                     ; preds = %cond.end.3990
  %1620 = load i32, i32* @zz_size, align 4
  %idxprom3999 = sext i32 %1620 to i64
  %arrayidx4000 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom3999
  %1621 = load %union.rec*, %union.rec** %arrayidx4000, align 8
  %cmp4001 = icmp eq %union.rec* %1621, null
  br i1 %cmp4001, label %if.then.4003, label %if.else.4005

if.then.4003:                                     ; preds = %if.else.3998
  %1622 = load i32, i32* @zz_size, align 4
  %1623 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4004 = call %union.rec* @GetMemory(i32 %1622, %struct.FILE_POS* %1623)
  store %union.rec* %call4004, %union.rec** @zz_hold, align 8
  br label %if.end.4014

if.else.4005:                                     ; preds = %if.else.3998
  %1624 = load i32, i32* @zz_size, align 4
  %idxprom4006 = sext i32 %1624 to i64
  %arrayidx4007 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4006
  %1625 = load %union.rec*, %union.rec** %arrayidx4007, align 8
  store %union.rec* %1625, %union.rec** @zz_hold, align 8
  store %union.rec* %1625, %union.rec** @zz_hold, align 8
  %1626 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14008 = bitcast %union.rec* %1626 to %struct.word_type*
  %olist4009 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14008, i32 0, i32 0
  %arrayidx4010 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4009, i32 0, i64 0
  %opred4011 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4010, i32 0, i32 0
  %1627 = load %union.rec*, %union.rec** %opred4011, align 8
  %1628 = load i32, i32* @zz_size, align 4
  %idxprom4012 = sext i32 %1628 to i64
  %arrayidx4013 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4012
  store %union.rec* %1627, %union.rec** %arrayidx4013, align 8
  br label %if.end.4014

if.end.4014:                                      ; preds = %if.else.4005, %if.then.4003
  br label %if.end.4015

if.end.4015:                                      ; preds = %if.end.4014, %if.then.3996
  %1629 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14016 = bitcast %union.rec* %1629 to %struct.word_type*
  %ou14017 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14016, i32 0, i32 1
  %os114018 = bitcast %union.FIRST_UNION* %ou14017 to %struct.anon*
  %otype4019 = getelementptr inbounds %struct.anon, %struct.anon* %os114018, i32 0, i32 0
  store i8 0, i8* %otype4019, align 1
  %1630 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1631 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14020 = bitcast %union.rec* %1631 to %struct.word_type*
  %olist4021 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14020, i32 0, i32 0
  %arrayidx4022 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4021, i32 0, i64 1
  %osucc4023 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4022, i32 0, i32 1
  store %union.rec* %1630, %union.rec** %osucc4023, align 8
  %1632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14024 = bitcast %union.rec* %1632 to %struct.word_type*
  %olist4025 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14024, i32 0, i32 0
  %arrayidx4026 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4025, i32 0, i64 1
  %opred4027 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4026, i32 0, i32 0
  store %union.rec* %1630, %union.rec** %opred4027, align 8
  %1633 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14028 = bitcast %union.rec* %1633 to %struct.word_type*
  %olist4029 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14028, i32 0, i32 0
  %arrayidx4030 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4029, i32 0, i64 0
  %osucc4031 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4030, i32 0, i32 1
  store %union.rec* %1630, %union.rec** %osucc4031, align 8
  %1634 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14032 = bitcast %union.rec* %1634 to %struct.word_type*
  %olist4033 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14032, i32 0, i32 0
  %arrayidx4034 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4033, i32 0, i64 0
  %opred4035 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4034, i32 0, i32 0
  store %union.rec* %1630, %union.rec** %opred4035, align 8
  store %union.rec* %1630, %union.rec** @xx_link, align 8
  %1635 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1635, %union.rec** @zz_res, align 8
  %1636 = load %union.rec*, %union.rec** %hd2, align 8
  store %union.rec* %1636, %union.rec** @zz_hold, align 8
  %1637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4036 = icmp eq %union.rec* %1637, null
  br i1 %cmp4036, label %cond.true.4038, label %cond.false.4039

cond.true.4038:                                   ; preds = %if.end.4015
  %1638 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4074

cond.false.4039:                                  ; preds = %if.end.4015
  %1639 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4040 = icmp eq %union.rec* %1639, null
  br i1 %cmp4040, label %cond.true.4042, label %cond.false.4043

cond.true.4042:                                   ; preds = %cond.false.4039
  %1640 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4072

cond.false.4043:                                  ; preds = %cond.false.4039
  %1641 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14044 = bitcast %union.rec* %1641 to %struct.word_type*
  %olist4045 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14044, i32 0, i32 0
  %arrayidx4046 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4045, i32 0, i64 0
  %opred4047 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4046, i32 0, i32 0
  %1642 = load %union.rec*, %union.rec** %opred4047, align 8
  store %union.rec* %1642, %union.rec** @zz_tmp, align 8
  %1643 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14048 = bitcast %union.rec* %1643 to %struct.word_type*
  %olist4049 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14048, i32 0, i32 0
  %arrayidx4050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4049, i32 0, i64 0
  %opred4051 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4050, i32 0, i32 0
  %1644 = load %union.rec*, %union.rec** %opred4051, align 8
  %1645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14052 = bitcast %union.rec* %1645 to %struct.word_type*
  %olist4053 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14052, i32 0, i32 0
  %arrayidx4054 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4053, i32 0, i64 0
  %opred4055 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4054, i32 0, i32 0
  store %union.rec* %1644, %union.rec** %opred4055, align 8
  %1646 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1647 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14056 = bitcast %union.rec* %1647 to %struct.word_type*
  %olist4057 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14056, i32 0, i32 0
  %arrayidx4058 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4057, i32 0, i64 0
  %opred4059 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4058, i32 0, i32 0
  %1648 = load %union.rec*, %union.rec** %opred4059, align 8
  %os14060 = bitcast %union.rec* %1648 to %struct.word_type*
  %olist4061 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14060, i32 0, i32 0
  %arrayidx4062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4061, i32 0, i64 0
  %osucc4063 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4062, i32 0, i32 1
  store %union.rec* %1646, %union.rec** %osucc4063, align 8
  %1649 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1650 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14064 = bitcast %union.rec* %1650 to %struct.word_type*
  %olist4065 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14064, i32 0, i32 0
  %arrayidx4066 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4065, i32 0, i64 0
  %opred4067 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4066, i32 0, i32 0
  store %union.rec* %1649, %union.rec** %opred4067, align 8
  %1651 = load %union.rec*, %union.rec** @zz_res, align 8
  %1652 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14068 = bitcast %union.rec* %1652 to %struct.word_type*
  %olist4069 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14068, i32 0, i32 0
  %arrayidx4070 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4069, i32 0, i64 0
  %osucc4071 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4070, i32 0, i32 1
  store %union.rec* %1651, %union.rec** %osucc4071, align 8
  br label %cond.end.4072

cond.end.4072:                                    ; preds = %cond.false.4043, %cond.true.4042
  %cond4073 = phi %union.rec* [ %1640, %cond.true.4042 ], [ %1651, %cond.false.4043 ]
  br label %cond.end.4074

cond.end.4074:                                    ; preds = %cond.end.4072, %cond.true.4038
  %cond4075 = phi %union.rec* [ %1638, %cond.true.4038 ], [ %cond4073, %cond.end.4072 ]
  %1653 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1653, %union.rec** @zz_res, align 8
  %1654 = load %union.rec*, %union.rec** %tmp3865, align 8
  store %union.rec* %1654, %union.rec** @zz_hold, align 8
  %1655 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4076 = icmp eq %union.rec* %1655, null
  br i1 %cmp4076, label %cond.true.4078, label %cond.false.4079

cond.true.4078:                                   ; preds = %cond.end.4074
  %1656 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4114

cond.false.4079:                                  ; preds = %cond.end.4074
  %1657 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4080 = icmp eq %union.rec* %1657, null
  br i1 %cmp4080, label %cond.true.4082, label %cond.false.4083

cond.true.4082:                                   ; preds = %cond.false.4079
  %1658 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4112

cond.false.4083:                                  ; preds = %cond.false.4079
  %1659 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14084 = bitcast %union.rec* %1659 to %struct.word_type*
  %olist4085 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14084, i32 0, i32 0
  %arrayidx4086 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4085, i32 0, i64 1
  %opred4087 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4086, i32 0, i32 0
  %1660 = load %union.rec*, %union.rec** %opred4087, align 8
  store %union.rec* %1660, %union.rec** @zz_tmp, align 8
  %1661 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14088 = bitcast %union.rec* %1661 to %struct.word_type*
  %olist4089 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14088, i32 0, i32 0
  %arrayidx4090 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4089, i32 0, i64 1
  %opred4091 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4090, i32 0, i32 0
  %1662 = load %union.rec*, %union.rec** %opred4091, align 8
  %1663 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14092 = bitcast %union.rec* %1663 to %struct.word_type*
  %olist4093 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14092, i32 0, i32 0
  %arrayidx4094 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4093, i32 0, i64 1
  %opred4095 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4094, i32 0, i32 0
  store %union.rec* %1662, %union.rec** %opred4095, align 8
  %1664 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1665 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14096 = bitcast %union.rec* %1665 to %struct.word_type*
  %olist4097 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14096, i32 0, i32 0
  %arrayidx4098 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4097, i32 0, i64 1
  %opred4099 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4098, i32 0, i32 0
  %1666 = load %union.rec*, %union.rec** %opred4099, align 8
  %os14100 = bitcast %union.rec* %1666 to %struct.word_type*
  %olist4101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14100, i32 0, i32 0
  %arrayidx4102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4101, i32 0, i64 1
  %osucc4103 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4102, i32 0, i32 1
  store %union.rec* %1664, %union.rec** %osucc4103, align 8
  %1667 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1668 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14104 = bitcast %union.rec* %1668 to %struct.word_type*
  %olist4105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14104, i32 0, i32 0
  %arrayidx4106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4105, i32 0, i64 1
  %opred4107 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4106, i32 0, i32 0
  store %union.rec* %1667, %union.rec** %opred4107, align 8
  %1669 = load %union.rec*, %union.rec** @zz_res, align 8
  %1670 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14108 = bitcast %union.rec* %1670 to %struct.word_type*
  %olist4109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14108, i32 0, i32 0
  %arrayidx4110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4109, i32 0, i64 1
  %osucc4111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4110, i32 0, i32 1
  store %union.rec* %1669, %union.rec** %osucc4111, align 8
  br label %cond.end.4112

cond.end.4112:                                    ; preds = %cond.false.4083, %cond.true.4082
  %cond4113 = phi %union.rec* [ %1658, %cond.true.4082 ], [ %1669, %cond.false.4083 ]
  br label %cond.end.4114

cond.end.4114:                                    ; preds = %cond.end.4112, %cond.true.4078
  %cond4115 = phi %union.rec* [ %1656, %cond.true.4078 ], [ %cond4113, %cond.end.4112 ]
  br label %if.end.4116

if.end.4116:                                      ; preds = %cond.end.4114, %if.else.3855
  %1671 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv4117 = zext i8 %1671 to i32
  store i32 %conv4117, i32* @zz_size, align 4
  %conv4118 = sext i32 %conv4117 to i64
  %cmp4119 = icmp uge i64 %conv4118, 265
  br i1 %cmp4119, label %if.then.4121, label %if.else.4123

if.then.4121:                                     ; preds = %if.end.4116
  %1672 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4122 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1672)
  br label %if.end.4140

if.else.4123:                                     ; preds = %if.end.4116
  %1673 = load i32, i32* @zz_size, align 4
  %idxprom4124 = sext i32 %1673 to i64
  %arrayidx4125 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4124
  %1674 = load %union.rec*, %union.rec** %arrayidx4125, align 8
  %cmp4126 = icmp eq %union.rec* %1674, null
  br i1 %cmp4126, label %if.then.4128, label %if.else.4130

if.then.4128:                                     ; preds = %if.else.4123
  %1675 = load i32, i32* @zz_size, align 4
  %1676 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4129 = call %union.rec* @GetMemory(i32 %1675, %struct.FILE_POS* %1676)
  store %union.rec* %call4129, %union.rec** @zz_hold, align 8
  br label %if.end.4139

if.else.4130:                                     ; preds = %if.else.4123
  %1677 = load i32, i32* @zz_size, align 4
  %idxprom4131 = sext i32 %1677 to i64
  %arrayidx4132 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4131
  %1678 = load %union.rec*, %union.rec** %arrayidx4132, align 8
  store %union.rec* %1678, %union.rec** @zz_hold, align 8
  store %union.rec* %1678, %union.rec** @zz_hold, align 8
  %1679 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14133 = bitcast %union.rec* %1679 to %struct.word_type*
  %olist4134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14133, i32 0, i32 0
  %arrayidx4135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4134, i32 0, i64 0
  %opred4136 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4135, i32 0, i32 0
  %1680 = load %union.rec*, %union.rec** %opred4136, align 8
  %1681 = load i32, i32* @zz_size, align 4
  %idxprom4137 = sext i32 %1681 to i64
  %arrayidx4138 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4137
  store %union.rec* %1680, %union.rec** %arrayidx4138, align 8
  br label %if.end.4139

if.end.4139:                                      ; preds = %if.else.4130, %if.then.4128
  br label %if.end.4140

if.end.4140:                                      ; preds = %if.end.4139, %if.then.4121
  %1682 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14141 = bitcast %union.rec* %1682 to %struct.word_type*
  %ou14142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14141, i32 0, i32 1
  %os114143 = bitcast %union.FIRST_UNION* %ou14142 to %struct.anon*
  %otype4144 = getelementptr inbounds %struct.anon, %struct.anon* %os114143, i32 0, i32 0
  store i8 0, i8* %otype4144, align 1
  %1683 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14145 = bitcast %union.rec* %1684 to %struct.word_type*
  %olist4146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14145, i32 0, i32 0
  %arrayidx4147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4146, i32 0, i64 1
  %osucc4148 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4147, i32 0, i32 1
  store %union.rec* %1683, %union.rec** %osucc4148, align 8
  %1685 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14149 = bitcast %union.rec* %1685 to %struct.word_type*
  %olist4150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14149, i32 0, i32 0
  %arrayidx4151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4150, i32 0, i64 1
  %opred4152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4151, i32 0, i32 0
  store %union.rec* %1683, %union.rec** %opred4152, align 8
  %1686 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14153 = bitcast %union.rec* %1686 to %struct.word_type*
  %olist4154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14153, i32 0, i32 0
  %arrayidx4155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4154, i32 0, i64 0
  %osucc4156 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4155, i32 0, i32 1
  store %union.rec* %1683, %union.rec** %osucc4156, align 8
  %1687 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14157 = bitcast %union.rec* %1687 to %struct.word_type*
  %olist4158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14157, i32 0, i32 0
  %arrayidx4159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4158, i32 0, i64 0
  %opred4160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4159, i32 0, i32 0
  store %union.rec* %1683, %union.rec** %opred4160, align 8
  store %union.rec* %1683, %union.rec** @xx_link, align 8
  %1688 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1688, %union.rec** @zz_res, align 8
  %1689 = load %union.rec*, %union.rec** %hd2, align 8
  store %union.rec* %1689, %union.rec** @zz_hold, align 8
  %1690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4161 = icmp eq %union.rec* %1690, null
  br i1 %cmp4161, label %cond.true.4163, label %cond.false.4164

cond.true.4163:                                   ; preds = %if.end.4140
  %1691 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4199

cond.false.4164:                                  ; preds = %if.end.4140
  %1692 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4165 = icmp eq %union.rec* %1692, null
  br i1 %cmp4165, label %cond.true.4167, label %cond.false.4168

cond.true.4167:                                   ; preds = %cond.false.4164
  %1693 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4197

cond.false.4168:                                  ; preds = %cond.false.4164
  %1694 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14169 = bitcast %union.rec* %1694 to %struct.word_type*
  %olist4170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14169, i32 0, i32 0
  %arrayidx4171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4170, i32 0, i64 0
  %opred4172 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4171, i32 0, i32 0
  %1695 = load %union.rec*, %union.rec** %opred4172, align 8
  store %union.rec* %1695, %union.rec** @zz_tmp, align 8
  %1696 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14173 = bitcast %union.rec* %1696 to %struct.word_type*
  %olist4174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14173, i32 0, i32 0
  %arrayidx4175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4174, i32 0, i64 0
  %opred4176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4175, i32 0, i32 0
  %1697 = load %union.rec*, %union.rec** %opred4176, align 8
  %1698 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14177 = bitcast %union.rec* %1698 to %struct.word_type*
  %olist4178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14177, i32 0, i32 0
  %arrayidx4179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4178, i32 0, i64 0
  %opred4180 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4179, i32 0, i32 0
  store %union.rec* %1697, %union.rec** %opred4180, align 8
  %1699 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1700 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14181 = bitcast %union.rec* %1700 to %struct.word_type*
  %olist4182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14181, i32 0, i32 0
  %arrayidx4183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4182, i32 0, i64 0
  %opred4184 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4183, i32 0, i32 0
  %1701 = load %union.rec*, %union.rec** %opred4184, align 8
  %os14185 = bitcast %union.rec* %1701 to %struct.word_type*
  %olist4186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14185, i32 0, i32 0
  %arrayidx4187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4186, i32 0, i64 0
  %osucc4188 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4187, i32 0, i32 1
  store %union.rec* %1699, %union.rec** %osucc4188, align 8
  %1702 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1703 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14189 = bitcast %union.rec* %1703 to %struct.word_type*
  %olist4190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14189, i32 0, i32 0
  %arrayidx4191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4190, i32 0, i64 0
  %opred4192 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4191, i32 0, i32 0
  store %union.rec* %1702, %union.rec** %opred4192, align 8
  %1704 = load %union.rec*, %union.rec** @zz_res, align 8
  %1705 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14193 = bitcast %union.rec* %1705 to %struct.word_type*
  %olist4194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14193, i32 0, i32 0
  %arrayidx4195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4194, i32 0, i64 0
  %osucc4196 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4195, i32 0, i32 1
  store %union.rec* %1704, %union.rec** %osucc4196, align 8
  br label %cond.end.4197

cond.end.4197:                                    ; preds = %cond.false.4168, %cond.true.4167
  %cond4198 = phi %union.rec* [ %1693, %cond.true.4167 ], [ %1704, %cond.false.4168 ]
  br label %cond.end.4199

cond.end.4199:                                    ; preds = %cond.end.4197, %cond.true.4163
  %cond4200 = phi %union.rec* [ %1691, %cond.true.4163 ], [ %cond4198, %cond.end.4197 ]
  %1706 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1706, %union.rec** @zz_res, align 8
  %1707 = load %union.rec*, %union.rec** %val, align 8
  store %union.rec* %1707, %union.rec** @zz_hold, align 8
  %1708 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4201 = icmp eq %union.rec* %1708, null
  br i1 %cmp4201, label %cond.true.4203, label %cond.false.4204

cond.true.4203:                                   ; preds = %cond.end.4199
  %1709 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4239

cond.false.4204:                                  ; preds = %cond.end.4199
  %1710 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4205 = icmp eq %union.rec* %1710, null
  br i1 %cmp4205, label %cond.true.4207, label %cond.false.4208

cond.true.4207:                                   ; preds = %cond.false.4204
  %1711 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4237

cond.false.4208:                                  ; preds = %cond.false.4204
  %1712 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14209 = bitcast %union.rec* %1712 to %struct.word_type*
  %olist4210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14209, i32 0, i32 0
  %arrayidx4211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4210, i32 0, i64 1
  %opred4212 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4211, i32 0, i32 0
  %1713 = load %union.rec*, %union.rec** %opred4212, align 8
  store %union.rec* %1713, %union.rec** @zz_tmp, align 8
  %1714 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14213 = bitcast %union.rec* %1714 to %struct.word_type*
  %olist4214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14213, i32 0, i32 0
  %arrayidx4215 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4214, i32 0, i64 1
  %opred4216 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4215, i32 0, i32 0
  %1715 = load %union.rec*, %union.rec** %opred4216, align 8
  %1716 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14217 = bitcast %union.rec* %1716 to %struct.word_type*
  %olist4218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14217, i32 0, i32 0
  %arrayidx4219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4218, i32 0, i64 1
  %opred4220 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4219, i32 0, i32 0
  store %union.rec* %1715, %union.rec** %opred4220, align 8
  %1717 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1718 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14221 = bitcast %union.rec* %1718 to %struct.word_type*
  %olist4222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14221, i32 0, i32 0
  %arrayidx4223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4222, i32 0, i64 1
  %opred4224 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4223, i32 0, i32 0
  %1719 = load %union.rec*, %union.rec** %opred4224, align 8
  %os14225 = bitcast %union.rec* %1719 to %struct.word_type*
  %olist4226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14225, i32 0, i32 0
  %arrayidx4227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4226, i32 0, i64 1
  %osucc4228 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4227, i32 0, i32 1
  store %union.rec* %1717, %union.rec** %osucc4228, align 8
  %1720 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1721 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14229 = bitcast %union.rec* %1721 to %struct.word_type*
  %olist4230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14229, i32 0, i32 0
  %arrayidx4231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4230, i32 0, i64 1
  %opred4232 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4231, i32 0, i32 0
  store %union.rec* %1720, %union.rec** %opred4232, align 8
  %1722 = load %union.rec*, %union.rec** @zz_res, align 8
  %1723 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14233 = bitcast %union.rec* %1723 to %struct.word_type*
  %olist4234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14233, i32 0, i32 0
  %arrayidx4235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4234, i32 0, i64 1
  %osucc4236 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4235, i32 0, i32 1
  store %union.rec* %1722, %union.rec** %osucc4236, align 8
  br label %cond.end.4237

cond.end.4237:                                    ; preds = %cond.false.4208, %cond.true.4207
  %cond4238 = phi %union.rec* [ %1711, %cond.true.4207 ], [ %1722, %cond.false.4208 ]
  br label %cond.end.4239

cond.end.4239:                                    ; preds = %cond.end.4237, %cond.true.4203
  %cond4240 = phi %union.rec* [ %1709, %cond.true.4203 ], [ %cond4238, %cond.end.4237 ]
  br label %if.end.4241

if.end.4241:                                      ; preds = %cond.end.4239, %if.then.3853
  br label %if.end.4242

if.end.4242:                                      ; preds = %if.end.4241, %land.lhs.true.3808, %if.end.3806
  br label %do.cond

do.cond:                                          ; preds = %if.end.4242
  %1724 = load i32, i32* %found, align 4
  %tobool4243 = icmp ne i32 %1724, 0
  br i1 %tobool4243, label %land.rhs.4244, label %land.end.4252

land.rhs.4244:                                    ; preds = %do.cond
  %arraydecay4245 = getelementptr inbounds [512 x i8], [512 x i8]* %newseq, i32 0, i32 0
  %1725 = load %union.rec*, %union.rec** %seq, align 8
  %os14246 = bitcast %union.rec* %1725 to %struct.word_type*
  %ostring4247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14246, i32 0, i32 4
  %arraydecay4248 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring4247, i32 0, i32 0
  %call4249 = call i32 @strcmp(i8* %arraydecay4245, i8* %arraydecay4248) #3
  %cmp4250 = icmp eq i32 %call4249, 0
  br label %land.end.4252

land.end.4252:                                    ; preds = %land.rhs.4244, %do.cond
  %1726 = phi i1 [ false, %do.cond ], [ %cmp4250, %land.rhs.4244 ]
  br i1 %1726, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.4252
  %1727 = load i32, i32* %found, align 4
  %tobool4254 = icmp ne i32 %1727, 0
  br i1 %tobool4254, label %if.then.4255, label %if.else.4764

if.then.4255:                                     ; preds = %do.end
  %1728 = load %union.rec*, %union.rec** %tag, align 8
  %os14256 = bitcast %union.rec* %1728 to %struct.word_type*
  %olist4257 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14256, i32 0, i32 0
  %arrayidx4258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4257, i32 0, i64 1
  %osucc4259 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4258, i32 0, i32 1
  %1729 = load %union.rec*, %union.rec** %osucc4259, align 8
  store %union.rec* %1729, %union.rec** @xx_link, align 8
  %1730 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1730, %union.rec** @zz_hold, align 8
  %1731 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14260 = bitcast %union.rec* %1731 to %struct.word_type*
  %olist4261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14260, i32 0, i32 0
  %arrayidx4262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4261, i32 0, i64 1
  %osucc4263 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4262, i32 0, i32 1
  %1732 = load %union.rec*, %union.rec** %osucc4263, align 8
  %1733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4264 = icmp eq %union.rec* %1732, %1733
  br i1 %cmp4264, label %cond.true.4266, label %cond.false.4267

cond.true.4266:                                   ; preds = %if.then.4255
  br label %cond.end.4296

cond.false.4267:                                  ; preds = %if.then.4255
  %1734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14268 = bitcast %union.rec* %1734 to %struct.word_type*
  %olist4269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14268, i32 0, i32 0
  %arrayidx4270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4269, i32 0, i64 1
  %osucc4271 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4270, i32 0, i32 1
  %1735 = load %union.rec*, %union.rec** %osucc4271, align 8
  store %union.rec* %1735, %union.rec** @zz_res, align 8
  %1736 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14272 = bitcast %union.rec* %1736 to %struct.word_type*
  %olist4273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14272, i32 0, i32 0
  %arrayidx4274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4273, i32 0, i64 1
  %opred4275 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4274, i32 0, i32 0
  %1737 = load %union.rec*, %union.rec** %opred4275, align 8
  %1738 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14276 = bitcast %union.rec* %1738 to %struct.word_type*
  %olist4277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14276, i32 0, i32 0
  %arrayidx4278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4277, i32 0, i64 1
  %opred4279 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4278, i32 0, i32 0
  store %union.rec* %1737, %union.rec** %opred4279, align 8
  %1739 = load %union.rec*, %union.rec** @zz_res, align 8
  %1740 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14280 = bitcast %union.rec* %1740 to %struct.word_type*
  %olist4281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14280, i32 0, i32 0
  %arrayidx4282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4281, i32 0, i64 1
  %opred4283 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4282, i32 0, i32 0
  %1741 = load %union.rec*, %union.rec** %opred4283, align 8
  %os14284 = bitcast %union.rec* %1741 to %struct.word_type*
  %olist4285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14284, i32 0, i32 0
  %arrayidx4286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4285, i32 0, i64 1
  %osucc4287 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4286, i32 0, i32 1
  store %union.rec* %1739, %union.rec** %osucc4287, align 8
  %1742 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1743 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14288 = bitcast %union.rec* %1743 to %struct.word_type*
  %olist4289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14288, i32 0, i32 0
  %arrayidx4290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4289, i32 0, i64 1
  %osucc4291 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4290, i32 0, i32 1
  store %union.rec* %1742, %union.rec** %osucc4291, align 8
  %1744 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14292 = bitcast %union.rec* %1744 to %struct.word_type*
  %olist4293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14292, i32 0, i32 0
  %arrayidx4294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4293, i32 0, i64 1
  %opred4295 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4294, i32 0, i32 0
  store %union.rec* %1742, %union.rec** %opred4295, align 8
  %1745 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4296

cond.end.4296:                                    ; preds = %cond.false.4267, %cond.true.4266
  %cond4297 = phi %union.rec* [ null, %cond.true.4266 ], [ %1745, %cond.false.4267 ]
  store %union.rec* %cond4297, %union.rec** @xx_tmp, align 8
  %1746 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1746, %union.rec** @zz_hold, align 8
  %1747 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14298 = bitcast %union.rec* %1747 to %struct.word_type*
  %olist4299 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14298, i32 0, i32 0
  %arrayidx4300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4299, i32 0, i64 0
  %osucc4301 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4300, i32 0, i32 1
  %1748 = load %union.rec*, %union.rec** %osucc4301, align 8
  %1749 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4302 = icmp eq %union.rec* %1748, %1749
  br i1 %cmp4302, label %cond.true.4304, label %cond.false.4305

cond.true.4304:                                   ; preds = %cond.end.4296
  br label %cond.end.4334

cond.false.4305:                                  ; preds = %cond.end.4296
  %1750 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14306 = bitcast %union.rec* %1750 to %struct.word_type*
  %olist4307 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14306, i32 0, i32 0
  %arrayidx4308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4307, i32 0, i64 0
  %osucc4309 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4308, i32 0, i32 1
  %1751 = load %union.rec*, %union.rec** %osucc4309, align 8
  store %union.rec* %1751, %union.rec** @zz_res, align 8
  %1752 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14310 = bitcast %union.rec* %1752 to %struct.word_type*
  %olist4311 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14310, i32 0, i32 0
  %arrayidx4312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4311, i32 0, i64 0
  %opred4313 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4312, i32 0, i32 0
  %1753 = load %union.rec*, %union.rec** %opred4313, align 8
  %1754 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14314 = bitcast %union.rec* %1754 to %struct.word_type*
  %olist4315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14314, i32 0, i32 0
  %arrayidx4316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4315, i32 0, i64 0
  %opred4317 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4316, i32 0, i32 0
  store %union.rec* %1753, %union.rec** %opred4317, align 8
  %1755 = load %union.rec*, %union.rec** @zz_res, align 8
  %1756 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14318 = bitcast %union.rec* %1756 to %struct.word_type*
  %olist4319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14318, i32 0, i32 0
  %arrayidx4320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4319, i32 0, i64 0
  %opred4321 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4320, i32 0, i32 0
  %1757 = load %union.rec*, %union.rec** %opred4321, align 8
  %os14322 = bitcast %union.rec* %1757 to %struct.word_type*
  %olist4323 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14322, i32 0, i32 0
  %arrayidx4324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4323, i32 0, i64 0
  %osucc4325 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4324, i32 0, i32 1
  store %union.rec* %1755, %union.rec** %osucc4325, align 8
  %1758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1759 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14326 = bitcast %union.rec* %1759 to %struct.word_type*
  %olist4327 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14326, i32 0, i32 0
  %arrayidx4328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4327, i32 0, i64 0
  %osucc4329 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4328, i32 0, i32 1
  store %union.rec* %1758, %union.rec** %osucc4329, align 8
  %1760 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14330 = bitcast %union.rec* %1760 to %struct.word_type*
  %olist4331 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14330, i32 0, i32 0
  %arrayidx4332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4331, i32 0, i64 0
  %opred4333 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4332, i32 0, i32 0
  store %union.rec* %1758, %union.rec** %opred4333, align 8
  %1761 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4334

cond.end.4334:                                    ; preds = %cond.false.4305, %cond.true.4304
  %cond4335 = phi %union.rec* [ null, %cond.true.4304 ], [ %1761, %cond.false.4305 ]
  %1762 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1762, %union.rec** @zz_hold, align 8
  %1763 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1763, %union.rec** @zz_hold, align 8
  %1764 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14336 = bitcast %union.rec* %1764 to %struct.word_type*
  %ou14337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14336, i32 0, i32 1
  %os114338 = bitcast %union.FIRST_UNION* %ou14337 to %struct.anon*
  %otype4339 = getelementptr inbounds %struct.anon, %struct.anon* %os114338, i32 0, i32 0
  %1765 = load i8, i8* %otype4339, align 1
  %conv4340 = zext i8 %1765 to i32
  %cmp4341 = icmp eq i32 %conv4340, 11
  br i1 %cmp4341, label %cond.true.4351, label %lor.lhs.false.4343

lor.lhs.false.4343:                               ; preds = %cond.end.4334
  %1766 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14344 = bitcast %union.rec* %1766 to %struct.word_type*
  %ou14345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14344, i32 0, i32 1
  %os114346 = bitcast %union.FIRST_UNION* %ou14345 to %struct.anon*
  %otype4347 = getelementptr inbounds %struct.anon, %struct.anon* %os114346, i32 0, i32 0
  %1767 = load i8, i8* %otype4347, align 1
  %conv4348 = zext i8 %1767 to i32
  %cmp4349 = icmp eq i32 %conv4348, 12
  br i1 %cmp4349, label %cond.true.4351, label %cond.false.4357

cond.true.4351:                                   ; preds = %lor.lhs.false.4343, %cond.end.4334
  %1768 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14352 = bitcast %union.rec* %1768 to %struct.word_type*
  %ou14353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14352, i32 0, i32 1
  %os114354 = bitcast %union.FIRST_UNION* %ou14353 to %struct.anon*
  %orec_size4355 = getelementptr inbounds %struct.anon, %struct.anon* %os114354, i32 0, i32 1
  %1769 = load i8, i8* %orec_size4355, align 1
  %conv4356 = zext i8 %1769 to i32
  br label %cond.end.4365

cond.false.4357:                                  ; preds = %lor.lhs.false.4343
  %1770 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14358 = bitcast %union.rec* %1770 to %struct.word_type*
  %ou14359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14358, i32 0, i32 1
  %os114360 = bitcast %union.FIRST_UNION* %ou14359 to %struct.anon*
  %otype4361 = getelementptr inbounds %struct.anon, %struct.anon* %os114360, i32 0, i32 0
  %1771 = load i8, i8* %otype4361, align 1
  %idxprom4362 = zext i8 %1771 to i64
  %arrayidx4363 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom4362
  %1772 = load i8, i8* %arrayidx4363, align 1
  %conv4364 = zext i8 %1772 to i32
  br label %cond.end.4365

cond.end.4365:                                    ; preds = %cond.false.4357, %cond.true.4351
  %cond4366 = phi i32 [ %conv4356, %cond.true.4351 ], [ %conv4364, %cond.false.4357 ]
  store i32 %cond4366, i32* @zz_size, align 4
  %1773 = load i32, i32* @zz_size, align 4
  %idxprom4367 = sext i32 %1773 to i64
  %arrayidx4368 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4367
  %1774 = load %union.rec*, %union.rec** %arrayidx4368, align 8
  %1775 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14369 = bitcast %union.rec* %1775 to %struct.word_type*
  %olist4370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14369, i32 0, i32 0
  %arrayidx4371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4370, i32 0, i64 0
  %opred4372 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4371, i32 0, i32 0
  store %union.rec* %1774, %union.rec** %opred4372, align 8
  %1776 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1777 = load i32, i32* @zz_size, align 4
  %idxprom4373 = sext i32 %1777 to i64
  %arrayidx4374 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4373
  store %union.rec* %1776, %union.rec** %arrayidx4374, align 8
  %1778 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os14375 = bitcast %union.rec* %1778 to %struct.word_type*
  %olist4376 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14375, i32 0, i32 0
  %arrayidx4377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4376, i32 0, i64 1
  %osucc4378 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4377, i32 0, i32 1
  %1779 = load %union.rec*, %union.rec** %osucc4378, align 8
  %1780 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp4379 = icmp eq %union.rec* %1779, %1780
  br i1 %cmp4379, label %if.then.4381, label %if.end.4383

if.then.4381:                                     ; preds = %cond.end.4365
  %1781 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call4382 = call i32 @DisposeObject(%union.rec* %1781)
  br label %if.end.4383

if.end.4383:                                      ; preds = %if.then.4381, %cond.end.4365
  %1782 = load %union.rec*, %union.rec** %seq, align 8
  %os14384 = bitcast %union.rec* %1782 to %struct.word_type*
  %olist4385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14384, i32 0, i32 0
  %arrayidx4386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4385, i32 0, i64 1
  %osucc4387 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4386, i32 0, i32 1
  %1783 = load %union.rec*, %union.rec** %osucc4387, align 8
  store %union.rec* %1783, %union.rec** @xx_link, align 8
  %1784 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1784, %union.rec** @zz_hold, align 8
  %1785 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14388 = bitcast %union.rec* %1785 to %struct.word_type*
  %olist4389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14388, i32 0, i32 0
  %arrayidx4390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4389, i32 0, i64 1
  %osucc4391 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4390, i32 0, i32 1
  %1786 = load %union.rec*, %union.rec** %osucc4391, align 8
  %1787 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4392 = icmp eq %union.rec* %1786, %1787
  br i1 %cmp4392, label %cond.true.4394, label %cond.false.4395

cond.true.4394:                                   ; preds = %if.end.4383
  br label %cond.end.4424

cond.false.4395:                                  ; preds = %if.end.4383
  %1788 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14396 = bitcast %union.rec* %1788 to %struct.word_type*
  %olist4397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14396, i32 0, i32 0
  %arrayidx4398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4397, i32 0, i64 1
  %osucc4399 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4398, i32 0, i32 1
  %1789 = load %union.rec*, %union.rec** %osucc4399, align 8
  store %union.rec* %1789, %union.rec** @zz_res, align 8
  %1790 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14400 = bitcast %union.rec* %1790 to %struct.word_type*
  %olist4401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14400, i32 0, i32 0
  %arrayidx4402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4401, i32 0, i64 1
  %opred4403 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4402, i32 0, i32 0
  %1791 = load %union.rec*, %union.rec** %opred4403, align 8
  %1792 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14404 = bitcast %union.rec* %1792 to %struct.word_type*
  %olist4405 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14404, i32 0, i32 0
  %arrayidx4406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4405, i32 0, i64 1
  %opred4407 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4406, i32 0, i32 0
  store %union.rec* %1791, %union.rec** %opred4407, align 8
  %1793 = load %union.rec*, %union.rec** @zz_res, align 8
  %1794 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14408 = bitcast %union.rec* %1794 to %struct.word_type*
  %olist4409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14408, i32 0, i32 0
  %arrayidx4410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4409, i32 0, i64 1
  %opred4411 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4410, i32 0, i32 0
  %1795 = load %union.rec*, %union.rec** %opred4411, align 8
  %os14412 = bitcast %union.rec* %1795 to %struct.word_type*
  %olist4413 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14412, i32 0, i32 0
  %arrayidx4414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4413, i32 0, i64 1
  %osucc4415 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4414, i32 0, i32 1
  store %union.rec* %1793, %union.rec** %osucc4415, align 8
  %1796 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1797 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14416 = bitcast %union.rec* %1797 to %struct.word_type*
  %olist4417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14416, i32 0, i32 0
  %arrayidx4418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4417, i32 0, i64 1
  %osucc4419 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4418, i32 0, i32 1
  store %union.rec* %1796, %union.rec** %osucc4419, align 8
  %1798 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14420 = bitcast %union.rec* %1798 to %struct.word_type*
  %olist4421 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14420, i32 0, i32 0
  %arrayidx4422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4421, i32 0, i64 1
  %opred4423 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4422, i32 0, i32 0
  store %union.rec* %1796, %union.rec** %opred4423, align 8
  %1799 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4424

cond.end.4424:                                    ; preds = %cond.false.4395, %cond.true.4394
  %cond4425 = phi %union.rec* [ null, %cond.true.4394 ], [ %1799, %cond.false.4395 ]
  store %union.rec* %cond4425, %union.rec** @xx_tmp, align 8
  %1800 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1800, %union.rec** @zz_hold, align 8
  %1801 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14426 = bitcast %union.rec* %1801 to %struct.word_type*
  %olist4427 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14426, i32 0, i32 0
  %arrayidx4428 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4427, i32 0, i64 0
  %osucc4429 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4428, i32 0, i32 1
  %1802 = load %union.rec*, %union.rec** %osucc4429, align 8
  %1803 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4430 = icmp eq %union.rec* %1802, %1803
  br i1 %cmp4430, label %cond.true.4432, label %cond.false.4433

cond.true.4432:                                   ; preds = %cond.end.4424
  br label %cond.end.4462

cond.false.4433:                                  ; preds = %cond.end.4424
  %1804 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14434 = bitcast %union.rec* %1804 to %struct.word_type*
  %olist4435 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14434, i32 0, i32 0
  %arrayidx4436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4435, i32 0, i64 0
  %osucc4437 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4436, i32 0, i32 1
  %1805 = load %union.rec*, %union.rec** %osucc4437, align 8
  store %union.rec* %1805, %union.rec** @zz_res, align 8
  %1806 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14438 = bitcast %union.rec* %1806 to %struct.word_type*
  %olist4439 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14438, i32 0, i32 0
  %arrayidx4440 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4439, i32 0, i64 0
  %opred4441 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4440, i32 0, i32 0
  %1807 = load %union.rec*, %union.rec** %opred4441, align 8
  %1808 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14442 = bitcast %union.rec* %1808 to %struct.word_type*
  %olist4443 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14442, i32 0, i32 0
  %arrayidx4444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4443, i32 0, i64 0
  %opred4445 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4444, i32 0, i32 0
  store %union.rec* %1807, %union.rec** %opred4445, align 8
  %1809 = load %union.rec*, %union.rec** @zz_res, align 8
  %1810 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14446 = bitcast %union.rec* %1810 to %struct.word_type*
  %olist4447 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14446, i32 0, i32 0
  %arrayidx4448 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4447, i32 0, i64 0
  %opred4449 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4448, i32 0, i32 0
  %1811 = load %union.rec*, %union.rec** %opred4449, align 8
  %os14450 = bitcast %union.rec* %1811 to %struct.word_type*
  %olist4451 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14450, i32 0, i32 0
  %arrayidx4452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4451, i32 0, i64 0
  %osucc4453 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4452, i32 0, i32 1
  store %union.rec* %1809, %union.rec** %osucc4453, align 8
  %1812 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1813 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14454 = bitcast %union.rec* %1813 to %struct.word_type*
  %olist4455 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14454, i32 0, i32 0
  %arrayidx4456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4455, i32 0, i64 0
  %osucc4457 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4456, i32 0, i32 1
  store %union.rec* %1812, %union.rec** %osucc4457, align 8
  %1814 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14458 = bitcast %union.rec* %1814 to %struct.word_type*
  %olist4459 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14458, i32 0, i32 0
  %arrayidx4460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4459, i32 0, i64 0
  %opred4461 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4460, i32 0, i32 0
  store %union.rec* %1812, %union.rec** %opred4461, align 8
  %1815 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4462

cond.end.4462:                                    ; preds = %cond.false.4433, %cond.true.4432
  %cond4463 = phi %union.rec* [ null, %cond.true.4432 ], [ %1815, %cond.false.4433 ]
  %1816 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1816, %union.rec** @zz_hold, align 8
  %1817 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1817, %union.rec** @zz_hold, align 8
  %1818 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14464 = bitcast %union.rec* %1818 to %struct.word_type*
  %ou14465 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14464, i32 0, i32 1
  %os114466 = bitcast %union.FIRST_UNION* %ou14465 to %struct.anon*
  %otype4467 = getelementptr inbounds %struct.anon, %struct.anon* %os114466, i32 0, i32 0
  %1819 = load i8, i8* %otype4467, align 1
  %conv4468 = zext i8 %1819 to i32
  %cmp4469 = icmp eq i32 %conv4468, 11
  br i1 %cmp4469, label %cond.true.4479, label %lor.lhs.false.4471

lor.lhs.false.4471:                               ; preds = %cond.end.4462
  %1820 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14472 = bitcast %union.rec* %1820 to %struct.word_type*
  %ou14473 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14472, i32 0, i32 1
  %os114474 = bitcast %union.FIRST_UNION* %ou14473 to %struct.anon*
  %otype4475 = getelementptr inbounds %struct.anon, %struct.anon* %os114474, i32 0, i32 0
  %1821 = load i8, i8* %otype4475, align 1
  %conv4476 = zext i8 %1821 to i32
  %cmp4477 = icmp eq i32 %conv4476, 12
  br i1 %cmp4477, label %cond.true.4479, label %cond.false.4485

cond.true.4479:                                   ; preds = %lor.lhs.false.4471, %cond.end.4462
  %1822 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14480 = bitcast %union.rec* %1822 to %struct.word_type*
  %ou14481 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14480, i32 0, i32 1
  %os114482 = bitcast %union.FIRST_UNION* %ou14481 to %struct.anon*
  %orec_size4483 = getelementptr inbounds %struct.anon, %struct.anon* %os114482, i32 0, i32 1
  %1823 = load i8, i8* %orec_size4483, align 1
  %conv4484 = zext i8 %1823 to i32
  br label %cond.end.4493

cond.false.4485:                                  ; preds = %lor.lhs.false.4471
  %1824 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14486 = bitcast %union.rec* %1824 to %struct.word_type*
  %ou14487 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14486, i32 0, i32 1
  %os114488 = bitcast %union.FIRST_UNION* %ou14487 to %struct.anon*
  %otype4489 = getelementptr inbounds %struct.anon, %struct.anon* %os114488, i32 0, i32 0
  %1825 = load i8, i8* %otype4489, align 1
  %idxprom4490 = zext i8 %1825 to i64
  %arrayidx4491 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom4490
  %1826 = load i8, i8* %arrayidx4491, align 1
  %conv4492 = zext i8 %1826 to i32
  br label %cond.end.4493

cond.end.4493:                                    ; preds = %cond.false.4485, %cond.true.4479
  %cond4494 = phi i32 [ %conv4484, %cond.true.4479 ], [ %conv4492, %cond.false.4485 ]
  store i32 %cond4494, i32* @zz_size, align 4
  %1827 = load i32, i32* @zz_size, align 4
  %idxprom4495 = sext i32 %1827 to i64
  %arrayidx4496 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4495
  %1828 = load %union.rec*, %union.rec** %arrayidx4496, align 8
  %1829 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14497 = bitcast %union.rec* %1829 to %struct.word_type*
  %olist4498 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14497, i32 0, i32 0
  %arrayidx4499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4498, i32 0, i64 0
  %opred4500 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4499, i32 0, i32 0
  store %union.rec* %1828, %union.rec** %opred4500, align 8
  %1830 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1831 = load i32, i32* @zz_size, align 4
  %idxprom4501 = sext i32 %1831 to i64
  %arrayidx4502 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4501
  store %union.rec* %1830, %union.rec** %arrayidx4502, align 8
  %1832 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os14503 = bitcast %union.rec* %1832 to %struct.word_type*
  %olist4504 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14503, i32 0, i32 0
  %arrayidx4505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4504, i32 0, i64 1
  %osucc4506 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4505, i32 0, i32 1
  %1833 = load %union.rec*, %union.rec** %osucc4506, align 8
  %1834 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp4507 = icmp eq %union.rec* %1833, %1834
  br i1 %cmp4507, label %if.then.4509, label %if.end.4511

if.then.4509:                                     ; preds = %cond.end.4493
  %1835 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call4510 = call i32 @DisposeObject(%union.rec* %1835)
  br label %if.end.4511

if.end.4511:                                      ; preds = %if.then.4509, %cond.end.4493
  %arraydecay4512 = getelementptr inbounds [512 x i8], [512 x i8]* %newtag, i32 0, i32 0
  %1836 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4513 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay4512, %struct.FILE_POS* %1836)
  store %union.rec* %call4513, %union.rec** %tag, align 8
  %arraydecay4514 = getelementptr inbounds [512 x i8], [512 x i8]* %newseq, i32 0, i32 0
  %1837 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4515 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay4514, %struct.FILE_POS* %1837)
  store %union.rec* %call4515, %union.rec** %seq, align 8
  %1838 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv4516 = zext i8 %1838 to i32
  store i32 %conv4516, i32* @zz_size, align 4
  %conv4517 = sext i32 %conv4516 to i64
  %cmp4518 = icmp uge i64 %conv4517, 265
  br i1 %cmp4518, label %if.then.4520, label %if.else.4522

if.then.4520:                                     ; preds = %if.end.4511
  %1839 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4521 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1839)
  br label %if.end.4539

if.else.4522:                                     ; preds = %if.end.4511
  %1840 = load i32, i32* @zz_size, align 4
  %idxprom4523 = sext i32 %1840 to i64
  %arrayidx4524 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4523
  %1841 = load %union.rec*, %union.rec** %arrayidx4524, align 8
  %cmp4525 = icmp eq %union.rec* %1841, null
  br i1 %cmp4525, label %if.then.4527, label %if.else.4529

if.then.4527:                                     ; preds = %if.else.4522
  %1842 = load i32, i32* @zz_size, align 4
  %1843 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4528 = call %union.rec* @GetMemory(i32 %1842, %struct.FILE_POS* %1843)
  store %union.rec* %call4528, %union.rec** @zz_hold, align 8
  br label %if.end.4538

if.else.4529:                                     ; preds = %if.else.4522
  %1844 = load i32, i32* @zz_size, align 4
  %idxprom4530 = sext i32 %1844 to i64
  %arrayidx4531 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4530
  %1845 = load %union.rec*, %union.rec** %arrayidx4531, align 8
  store %union.rec* %1845, %union.rec** @zz_hold, align 8
  store %union.rec* %1845, %union.rec** @zz_hold, align 8
  %1846 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14532 = bitcast %union.rec* %1846 to %struct.word_type*
  %olist4533 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14532, i32 0, i32 0
  %arrayidx4534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4533, i32 0, i64 0
  %opred4535 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4534, i32 0, i32 0
  %1847 = load %union.rec*, %union.rec** %opred4535, align 8
  %1848 = load i32, i32* @zz_size, align 4
  %idxprom4536 = sext i32 %1848 to i64
  %arrayidx4537 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4536
  store %union.rec* %1847, %union.rec** %arrayidx4537, align 8
  br label %if.end.4538

if.end.4538:                                      ; preds = %if.else.4529, %if.then.4527
  br label %if.end.4539

if.end.4539:                                      ; preds = %if.end.4538, %if.then.4520
  %1849 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14540 = bitcast %union.rec* %1849 to %struct.word_type*
  %ou14541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14540, i32 0, i32 1
  %os114542 = bitcast %union.FIRST_UNION* %ou14541 to %struct.anon*
  %otype4543 = getelementptr inbounds %struct.anon, %struct.anon* %os114542, i32 0, i32 0
  store i8 0, i8* %otype4543, align 1
  %1850 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1851 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14544 = bitcast %union.rec* %1851 to %struct.word_type*
  %olist4545 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14544, i32 0, i32 0
  %arrayidx4546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4545, i32 0, i64 1
  %osucc4547 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4546, i32 0, i32 1
  store %union.rec* %1850, %union.rec** %osucc4547, align 8
  %1852 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14548 = bitcast %union.rec* %1852 to %struct.word_type*
  %olist4549 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14548, i32 0, i32 0
  %arrayidx4550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4549, i32 0, i64 1
  %opred4551 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4550, i32 0, i32 0
  store %union.rec* %1850, %union.rec** %opred4551, align 8
  %1853 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14552 = bitcast %union.rec* %1853 to %struct.word_type*
  %olist4553 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14552, i32 0, i32 0
  %arrayidx4554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4553, i32 0, i64 0
  %osucc4555 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4554, i32 0, i32 1
  store %union.rec* %1850, %union.rec** %osucc4555, align 8
  %1854 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14556 = bitcast %union.rec* %1854 to %struct.word_type*
  %olist4557 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14556, i32 0, i32 0
  %arrayidx4558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4557, i32 0, i64 0
  %opred4559 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4558, i32 0, i32 0
  store %union.rec* %1850, %union.rec** %opred4559, align 8
  store %union.rec* %1850, %union.rec** @xx_link, align 8
  %1855 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1855, %union.rec** @zz_res, align 8
  %1856 = load %union.rec*, %union.rec** %eg, align 8
  store %union.rec* %1856, %union.rec** @zz_hold, align 8
  %1857 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4560 = icmp eq %union.rec* %1857, null
  br i1 %cmp4560, label %cond.true.4562, label %cond.false.4563

cond.true.4562:                                   ; preds = %if.end.4539
  %1858 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4598

cond.false.4563:                                  ; preds = %if.end.4539
  %1859 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4564 = icmp eq %union.rec* %1859, null
  br i1 %cmp4564, label %cond.true.4566, label %cond.false.4567

cond.true.4566:                                   ; preds = %cond.false.4563
  %1860 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4596

cond.false.4567:                                  ; preds = %cond.false.4563
  %1861 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14568 = bitcast %union.rec* %1861 to %struct.word_type*
  %olist4569 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14568, i32 0, i32 0
  %arrayidx4570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4569, i32 0, i64 0
  %opred4571 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4570, i32 0, i32 0
  %1862 = load %union.rec*, %union.rec** %opred4571, align 8
  store %union.rec* %1862, %union.rec** @zz_tmp, align 8
  %1863 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14572 = bitcast %union.rec* %1863 to %struct.word_type*
  %olist4573 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14572, i32 0, i32 0
  %arrayidx4574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4573, i32 0, i64 0
  %opred4575 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4574, i32 0, i32 0
  %1864 = load %union.rec*, %union.rec** %opred4575, align 8
  %1865 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14576 = bitcast %union.rec* %1865 to %struct.word_type*
  %olist4577 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14576, i32 0, i32 0
  %arrayidx4578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4577, i32 0, i64 0
  %opred4579 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4578, i32 0, i32 0
  store %union.rec* %1864, %union.rec** %opred4579, align 8
  %1866 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1867 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14580 = bitcast %union.rec* %1867 to %struct.word_type*
  %olist4581 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14580, i32 0, i32 0
  %arrayidx4582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4581, i32 0, i64 0
  %opred4583 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4582, i32 0, i32 0
  %1868 = load %union.rec*, %union.rec** %opred4583, align 8
  %os14584 = bitcast %union.rec* %1868 to %struct.word_type*
  %olist4585 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14584, i32 0, i32 0
  %arrayidx4586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4585, i32 0, i64 0
  %osucc4587 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4586, i32 0, i32 1
  store %union.rec* %1866, %union.rec** %osucc4587, align 8
  %1869 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1870 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14588 = bitcast %union.rec* %1870 to %struct.word_type*
  %olist4589 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14588, i32 0, i32 0
  %arrayidx4590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4589, i32 0, i64 0
  %opred4591 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4590, i32 0, i32 0
  store %union.rec* %1869, %union.rec** %opred4591, align 8
  %1871 = load %union.rec*, %union.rec** @zz_res, align 8
  %1872 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14592 = bitcast %union.rec* %1872 to %struct.word_type*
  %olist4593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14592, i32 0, i32 0
  %arrayidx4594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4593, i32 0, i64 0
  %osucc4595 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4594, i32 0, i32 1
  store %union.rec* %1871, %union.rec** %osucc4595, align 8
  br label %cond.end.4596

cond.end.4596:                                    ; preds = %cond.false.4567, %cond.true.4566
  %cond4597 = phi %union.rec* [ %1860, %cond.true.4566 ], [ %1871, %cond.false.4567 ]
  br label %cond.end.4598

cond.end.4598:                                    ; preds = %cond.end.4596, %cond.true.4562
  %cond4599 = phi %union.rec* [ %1858, %cond.true.4562 ], [ %cond4597, %cond.end.4596 ]
  %1873 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1873, %union.rec** @zz_res, align 8
  %1874 = load %union.rec*, %union.rec** %tag, align 8
  store %union.rec* %1874, %union.rec** @zz_hold, align 8
  %1875 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4600 = icmp eq %union.rec* %1875, null
  br i1 %cmp4600, label %cond.true.4602, label %cond.false.4603

cond.true.4602:                                   ; preds = %cond.end.4598
  %1876 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4638

cond.false.4603:                                  ; preds = %cond.end.4598
  %1877 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4604 = icmp eq %union.rec* %1877, null
  br i1 %cmp4604, label %cond.true.4606, label %cond.false.4607

cond.true.4606:                                   ; preds = %cond.false.4603
  %1878 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4636

cond.false.4607:                                  ; preds = %cond.false.4603
  %1879 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14608 = bitcast %union.rec* %1879 to %struct.word_type*
  %olist4609 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14608, i32 0, i32 0
  %arrayidx4610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4609, i32 0, i64 1
  %opred4611 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4610, i32 0, i32 0
  %1880 = load %union.rec*, %union.rec** %opred4611, align 8
  store %union.rec* %1880, %union.rec** @zz_tmp, align 8
  %1881 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14612 = bitcast %union.rec* %1881 to %struct.word_type*
  %olist4613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14612, i32 0, i32 0
  %arrayidx4614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4613, i32 0, i64 1
  %opred4615 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4614, i32 0, i32 0
  %1882 = load %union.rec*, %union.rec** %opred4615, align 8
  %1883 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14616 = bitcast %union.rec* %1883 to %struct.word_type*
  %olist4617 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14616, i32 0, i32 0
  %arrayidx4618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4617, i32 0, i64 1
  %opred4619 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4618, i32 0, i32 0
  store %union.rec* %1882, %union.rec** %opred4619, align 8
  %1884 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1885 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14620 = bitcast %union.rec* %1885 to %struct.word_type*
  %olist4621 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14620, i32 0, i32 0
  %arrayidx4622 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4621, i32 0, i64 1
  %opred4623 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4622, i32 0, i32 0
  %1886 = load %union.rec*, %union.rec** %opred4623, align 8
  %os14624 = bitcast %union.rec* %1886 to %struct.word_type*
  %olist4625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14624, i32 0, i32 0
  %arrayidx4626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4625, i32 0, i64 1
  %osucc4627 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4626, i32 0, i32 1
  store %union.rec* %1884, %union.rec** %osucc4627, align 8
  %1887 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1888 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14628 = bitcast %union.rec* %1888 to %struct.word_type*
  %olist4629 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14628, i32 0, i32 0
  %arrayidx4630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4629, i32 0, i64 1
  %opred4631 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4630, i32 0, i32 0
  store %union.rec* %1887, %union.rec** %opred4631, align 8
  %1889 = load %union.rec*, %union.rec** @zz_res, align 8
  %1890 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14632 = bitcast %union.rec* %1890 to %struct.word_type*
  %olist4633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14632, i32 0, i32 0
  %arrayidx4634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4633, i32 0, i64 1
  %osucc4635 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4634, i32 0, i32 1
  store %union.rec* %1889, %union.rec** %osucc4635, align 8
  br label %cond.end.4636

cond.end.4636:                                    ; preds = %cond.false.4607, %cond.true.4606
  %cond4637 = phi %union.rec* [ %1878, %cond.true.4606 ], [ %1889, %cond.false.4607 ]
  br label %cond.end.4638

cond.end.4638:                                    ; preds = %cond.end.4636, %cond.true.4602
  %cond4639 = phi %union.rec* [ %1876, %cond.true.4602 ], [ %cond4637, %cond.end.4636 ]
  %1891 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv4640 = zext i8 %1891 to i32
  store i32 %conv4640, i32* @zz_size, align 4
  %conv4641 = sext i32 %conv4640 to i64
  %cmp4642 = icmp uge i64 %conv4641, 265
  br i1 %cmp4642, label %if.then.4644, label %if.else.4646

if.then.4644:                                     ; preds = %cond.end.4638
  %1892 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4645 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1892)
  br label %if.end.4663

if.else.4646:                                     ; preds = %cond.end.4638
  %1893 = load i32, i32* @zz_size, align 4
  %idxprom4647 = sext i32 %1893 to i64
  %arrayidx4648 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4647
  %1894 = load %union.rec*, %union.rec** %arrayidx4648, align 8
  %cmp4649 = icmp eq %union.rec* %1894, null
  br i1 %cmp4649, label %if.then.4651, label %if.else.4653

if.then.4651:                                     ; preds = %if.else.4646
  %1895 = load i32, i32* @zz_size, align 4
  %1896 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4652 = call %union.rec* @GetMemory(i32 %1895, %struct.FILE_POS* %1896)
  store %union.rec* %call4652, %union.rec** @zz_hold, align 8
  br label %if.end.4662

if.else.4653:                                     ; preds = %if.else.4646
  %1897 = load i32, i32* @zz_size, align 4
  %idxprom4654 = sext i32 %1897 to i64
  %arrayidx4655 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4654
  %1898 = load %union.rec*, %union.rec** %arrayidx4655, align 8
  store %union.rec* %1898, %union.rec** @zz_hold, align 8
  store %union.rec* %1898, %union.rec** @zz_hold, align 8
  %1899 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14656 = bitcast %union.rec* %1899 to %struct.word_type*
  %olist4657 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14656, i32 0, i32 0
  %arrayidx4658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4657, i32 0, i64 0
  %opred4659 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4658, i32 0, i32 0
  %1900 = load %union.rec*, %union.rec** %opred4659, align 8
  %1901 = load i32, i32* @zz_size, align 4
  %idxprom4660 = sext i32 %1901 to i64
  %arrayidx4661 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4660
  store %union.rec* %1900, %union.rec** %arrayidx4661, align 8
  br label %if.end.4662

if.end.4662:                                      ; preds = %if.else.4653, %if.then.4651
  br label %if.end.4663

if.end.4663:                                      ; preds = %if.end.4662, %if.then.4644
  %1902 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14664 = bitcast %union.rec* %1902 to %struct.word_type*
  %ou14665 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14664, i32 0, i32 1
  %os114666 = bitcast %union.FIRST_UNION* %ou14665 to %struct.anon*
  %otype4667 = getelementptr inbounds %struct.anon, %struct.anon* %os114666, i32 0, i32 0
  store i8 0, i8* %otype4667, align 1
  %1903 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1904 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14668 = bitcast %union.rec* %1904 to %struct.word_type*
  %olist4669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14668, i32 0, i32 0
  %arrayidx4670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4669, i32 0, i64 1
  %osucc4671 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4670, i32 0, i32 1
  store %union.rec* %1903, %union.rec** %osucc4671, align 8
  %1905 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14672 = bitcast %union.rec* %1905 to %struct.word_type*
  %olist4673 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14672, i32 0, i32 0
  %arrayidx4674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4673, i32 0, i64 1
  %opred4675 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4674, i32 0, i32 0
  store %union.rec* %1903, %union.rec** %opred4675, align 8
  %1906 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14676 = bitcast %union.rec* %1906 to %struct.word_type*
  %olist4677 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14676, i32 0, i32 0
  %arrayidx4678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4677, i32 0, i64 0
  %osucc4679 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4678, i32 0, i32 1
  store %union.rec* %1903, %union.rec** %osucc4679, align 8
  %1907 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14680 = bitcast %union.rec* %1907 to %struct.word_type*
  %olist4681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14680, i32 0, i32 0
  %arrayidx4682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4681, i32 0, i64 0
  %opred4683 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4682, i32 0, i32 0
  store %union.rec* %1903, %union.rec** %opred4683, align 8
  store %union.rec* %1903, %union.rec** @xx_link, align 8
  %1908 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1908, %union.rec** @zz_res, align 8
  %1909 = load %union.rec*, %union.rec** %eg, align 8
  store %union.rec* %1909, %union.rec** @zz_hold, align 8
  %1910 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4684 = icmp eq %union.rec* %1910, null
  br i1 %cmp4684, label %cond.true.4686, label %cond.false.4687

cond.true.4686:                                   ; preds = %if.end.4663
  %1911 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4722

cond.false.4687:                                  ; preds = %if.end.4663
  %1912 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4688 = icmp eq %union.rec* %1912, null
  br i1 %cmp4688, label %cond.true.4690, label %cond.false.4691

cond.true.4690:                                   ; preds = %cond.false.4687
  %1913 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4720

cond.false.4691:                                  ; preds = %cond.false.4687
  %1914 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14692 = bitcast %union.rec* %1914 to %struct.word_type*
  %olist4693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14692, i32 0, i32 0
  %arrayidx4694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4693, i32 0, i64 0
  %opred4695 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4694, i32 0, i32 0
  %1915 = load %union.rec*, %union.rec** %opred4695, align 8
  store %union.rec* %1915, %union.rec** @zz_tmp, align 8
  %1916 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14696 = bitcast %union.rec* %1916 to %struct.word_type*
  %olist4697 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14696, i32 0, i32 0
  %arrayidx4698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4697, i32 0, i64 0
  %opred4699 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4698, i32 0, i32 0
  %1917 = load %union.rec*, %union.rec** %opred4699, align 8
  %1918 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14700 = bitcast %union.rec* %1918 to %struct.word_type*
  %olist4701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14700, i32 0, i32 0
  %arrayidx4702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4701, i32 0, i64 0
  %opred4703 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4702, i32 0, i32 0
  store %union.rec* %1917, %union.rec** %opred4703, align 8
  %1919 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1920 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14704 = bitcast %union.rec* %1920 to %struct.word_type*
  %olist4705 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14704, i32 0, i32 0
  %arrayidx4706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4705, i32 0, i64 0
  %opred4707 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4706, i32 0, i32 0
  %1921 = load %union.rec*, %union.rec** %opred4707, align 8
  %os14708 = bitcast %union.rec* %1921 to %struct.word_type*
  %olist4709 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14708, i32 0, i32 0
  %arrayidx4710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4709, i32 0, i64 0
  %osucc4711 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4710, i32 0, i32 1
  store %union.rec* %1919, %union.rec** %osucc4711, align 8
  %1922 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1923 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14712 = bitcast %union.rec* %1923 to %struct.word_type*
  %olist4713 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14712, i32 0, i32 0
  %arrayidx4714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4713, i32 0, i64 0
  %opred4715 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4714, i32 0, i32 0
  store %union.rec* %1922, %union.rec** %opred4715, align 8
  %1924 = load %union.rec*, %union.rec** @zz_res, align 8
  %1925 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14716 = bitcast %union.rec* %1925 to %struct.word_type*
  %olist4717 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14716, i32 0, i32 0
  %arrayidx4718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4717, i32 0, i64 0
  %osucc4719 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4718, i32 0, i32 1
  store %union.rec* %1924, %union.rec** %osucc4719, align 8
  br label %cond.end.4720

cond.end.4720:                                    ; preds = %cond.false.4691, %cond.true.4690
  %cond4721 = phi %union.rec* [ %1913, %cond.true.4690 ], [ %1924, %cond.false.4691 ]
  br label %cond.end.4722

cond.end.4722:                                    ; preds = %cond.end.4720, %cond.true.4686
  %cond4723 = phi %union.rec* [ %1911, %cond.true.4686 ], [ %cond4721, %cond.end.4720 ]
  %1926 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1926, %union.rec** @zz_res, align 8
  %1927 = load %union.rec*, %union.rec** %seq, align 8
  store %union.rec* %1927, %union.rec** @zz_hold, align 8
  %1928 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4724 = icmp eq %union.rec* %1928, null
  br i1 %cmp4724, label %cond.true.4726, label %cond.false.4727

cond.true.4726:                                   ; preds = %cond.end.4722
  %1929 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4762

cond.false.4727:                                  ; preds = %cond.end.4722
  %1930 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4728 = icmp eq %union.rec* %1930, null
  br i1 %cmp4728, label %cond.true.4730, label %cond.false.4731

cond.true.4730:                                   ; preds = %cond.false.4727
  %1931 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4760

cond.false.4731:                                  ; preds = %cond.false.4727
  %1932 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14732 = bitcast %union.rec* %1932 to %struct.word_type*
  %olist4733 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14732, i32 0, i32 0
  %arrayidx4734 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4733, i32 0, i64 1
  %opred4735 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4734, i32 0, i32 0
  %1933 = load %union.rec*, %union.rec** %opred4735, align 8
  store %union.rec* %1933, %union.rec** @zz_tmp, align 8
  %1934 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14736 = bitcast %union.rec* %1934 to %struct.word_type*
  %olist4737 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14736, i32 0, i32 0
  %arrayidx4738 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4737, i32 0, i64 1
  %opred4739 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4738, i32 0, i32 0
  %1935 = load %union.rec*, %union.rec** %opred4739, align 8
  %1936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14740 = bitcast %union.rec* %1936 to %struct.word_type*
  %olist4741 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14740, i32 0, i32 0
  %arrayidx4742 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4741, i32 0, i64 1
  %opred4743 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4742, i32 0, i32 0
  store %union.rec* %1935, %union.rec** %opred4743, align 8
  %1937 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1938 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14744 = bitcast %union.rec* %1938 to %struct.word_type*
  %olist4745 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14744, i32 0, i32 0
  %arrayidx4746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4745, i32 0, i64 1
  %opred4747 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4746, i32 0, i32 0
  %1939 = load %union.rec*, %union.rec** %opred4747, align 8
  %os14748 = bitcast %union.rec* %1939 to %struct.word_type*
  %olist4749 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14748, i32 0, i32 0
  %arrayidx4750 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4749, i32 0, i64 1
  %osucc4751 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4750, i32 0, i32 1
  store %union.rec* %1937, %union.rec** %osucc4751, align 8
  %1940 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1941 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14752 = bitcast %union.rec* %1941 to %struct.word_type*
  %olist4753 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14752, i32 0, i32 0
  %arrayidx4754 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4753, i32 0, i64 1
  %opred4755 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4754, i32 0, i32 0
  store %union.rec* %1940, %union.rec** %opred4755, align 8
  %1942 = load %union.rec*, %union.rec** @zz_res, align 8
  %1943 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14756 = bitcast %union.rec* %1943 to %struct.word_type*
  %olist4757 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14756, i32 0, i32 0
  %arrayidx4758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4757, i32 0, i64 1
  %osucc4759 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4758, i32 0, i32 1
  store %union.rec* %1942, %union.rec** %osucc4759, align 8
  br label %cond.end.4760

cond.end.4760:                                    ; preds = %cond.false.4731, %cond.true.4730
  %cond4761 = phi %union.rec* [ %1931, %cond.true.4730 ], [ %1942, %cond.false.4731 ]
  br label %cond.end.4762

cond.end.4762:                                    ; preds = %cond.end.4760, %cond.true.4726
  %cond4763 = phi %union.rec* [ %1929, %cond.true.4726 ], [ %cond4761, %cond.end.4760 ]
  br label %if.end.4948

if.else.4764:                                     ; preds = %do.end
  %1944 = load %union.rec*, %union.rec** %eg, align 8
  %os14765 = bitcast %union.rec* %1944 to %struct.word_type*
  %olist4766 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14765, i32 0, i32 0
  %arrayidx4767 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4766, i32 0, i64 1
  %osucc4768 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4767, i32 0, i32 1
  %1945 = load %union.rec*, %union.rec** %osucc4768, align 8
  store %union.rec* %1945, %union.rec** @xx_link, align 8
  %1946 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1946, %union.rec** @zz_hold, align 8
  %1947 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14769 = bitcast %union.rec* %1947 to %struct.word_type*
  %olist4770 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14769, i32 0, i32 0
  %arrayidx4771 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4770, i32 0, i64 1
  %osucc4772 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4771, i32 0, i32 1
  %1948 = load %union.rec*, %union.rec** %osucc4772, align 8
  %1949 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4773 = icmp eq %union.rec* %1948, %1949
  br i1 %cmp4773, label %cond.true.4775, label %cond.false.4776

cond.true.4775:                                   ; preds = %if.else.4764
  br label %cond.end.4805

cond.false.4776:                                  ; preds = %if.else.4764
  %1950 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14777 = bitcast %union.rec* %1950 to %struct.word_type*
  %olist4778 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14777, i32 0, i32 0
  %arrayidx4779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4778, i32 0, i64 1
  %osucc4780 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4779, i32 0, i32 1
  %1951 = load %union.rec*, %union.rec** %osucc4780, align 8
  store %union.rec* %1951, %union.rec** @zz_res, align 8
  %1952 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14781 = bitcast %union.rec* %1952 to %struct.word_type*
  %olist4782 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14781, i32 0, i32 0
  %arrayidx4783 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4782, i32 0, i64 1
  %opred4784 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4783, i32 0, i32 0
  %1953 = load %union.rec*, %union.rec** %opred4784, align 8
  %1954 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14785 = bitcast %union.rec* %1954 to %struct.word_type*
  %olist4786 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14785, i32 0, i32 0
  %arrayidx4787 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4786, i32 0, i64 1
  %opred4788 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4787, i32 0, i32 0
  store %union.rec* %1953, %union.rec** %opred4788, align 8
  %1955 = load %union.rec*, %union.rec** @zz_res, align 8
  %1956 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14789 = bitcast %union.rec* %1956 to %struct.word_type*
  %olist4790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14789, i32 0, i32 0
  %arrayidx4791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4790, i32 0, i64 1
  %opred4792 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4791, i32 0, i32 0
  %1957 = load %union.rec*, %union.rec** %opred4792, align 8
  %os14793 = bitcast %union.rec* %1957 to %struct.word_type*
  %olist4794 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14793, i32 0, i32 0
  %arrayidx4795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4794, i32 0, i64 1
  %osucc4796 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4795, i32 0, i32 1
  store %union.rec* %1955, %union.rec** %osucc4796, align 8
  %1958 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1959 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14797 = bitcast %union.rec* %1959 to %struct.word_type*
  %olist4798 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14797, i32 0, i32 0
  %arrayidx4799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4798, i32 0, i64 1
  %osucc4800 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4799, i32 0, i32 1
  store %union.rec* %1958, %union.rec** %osucc4800, align 8
  %1960 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14801 = bitcast %union.rec* %1960 to %struct.word_type*
  %olist4802 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14801, i32 0, i32 0
  %arrayidx4803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4802, i32 0, i64 1
  %opred4804 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4803, i32 0, i32 0
  store %union.rec* %1958, %union.rec** %opred4804, align 8
  %1961 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4805

cond.end.4805:                                    ; preds = %cond.false.4776, %cond.true.4775
  %cond4806 = phi %union.rec* [ null, %cond.true.4775 ], [ %1961, %cond.false.4776 ]
  store %union.rec* %cond4806, %union.rec** @xx_tmp, align 8
  %1962 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1962, %union.rec** @zz_hold, align 8
  %1963 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14807 = bitcast %union.rec* %1963 to %struct.word_type*
  %olist4808 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14807, i32 0, i32 0
  %arrayidx4809 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4808, i32 0, i64 0
  %osucc4810 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4809, i32 0, i32 1
  %1964 = load %union.rec*, %union.rec** %osucc4810, align 8
  %1965 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4811 = icmp eq %union.rec* %1964, %1965
  br i1 %cmp4811, label %cond.true.4813, label %cond.false.4814

cond.true.4813:                                   ; preds = %cond.end.4805
  br label %cond.end.4843

cond.false.4814:                                  ; preds = %cond.end.4805
  %1966 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14815 = bitcast %union.rec* %1966 to %struct.word_type*
  %olist4816 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14815, i32 0, i32 0
  %arrayidx4817 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4816, i32 0, i64 0
  %osucc4818 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4817, i32 0, i32 1
  %1967 = load %union.rec*, %union.rec** %osucc4818, align 8
  store %union.rec* %1967, %union.rec** @zz_res, align 8
  %1968 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14819 = bitcast %union.rec* %1968 to %struct.word_type*
  %olist4820 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14819, i32 0, i32 0
  %arrayidx4821 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4820, i32 0, i64 0
  %opred4822 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4821, i32 0, i32 0
  %1969 = load %union.rec*, %union.rec** %opred4822, align 8
  %1970 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14823 = bitcast %union.rec* %1970 to %struct.word_type*
  %olist4824 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14823, i32 0, i32 0
  %arrayidx4825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4824, i32 0, i64 0
  %opred4826 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4825, i32 0, i32 0
  store %union.rec* %1969, %union.rec** %opred4826, align 8
  %1971 = load %union.rec*, %union.rec** @zz_res, align 8
  %1972 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14827 = bitcast %union.rec* %1972 to %struct.word_type*
  %olist4828 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14827, i32 0, i32 0
  %arrayidx4829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4828, i32 0, i64 0
  %opred4830 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4829, i32 0, i32 0
  %1973 = load %union.rec*, %union.rec** %opred4830, align 8
  %os14831 = bitcast %union.rec* %1973 to %struct.word_type*
  %olist4832 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14831, i32 0, i32 0
  %arrayidx4833 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4832, i32 0, i64 0
  %osucc4834 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4833, i32 0, i32 1
  store %union.rec* %1971, %union.rec** %osucc4834, align 8
  %1974 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1975 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14835 = bitcast %union.rec* %1975 to %struct.word_type*
  %olist4836 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14835, i32 0, i32 0
  %arrayidx4837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4836, i32 0, i64 0
  %osucc4838 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4837, i32 0, i32 1
  store %union.rec* %1974, %union.rec** %osucc4838, align 8
  %1976 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14839 = bitcast %union.rec* %1976 to %struct.word_type*
  %olist4840 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14839, i32 0, i32 0
  %arrayidx4841 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4840, i32 0, i64 0
  %opred4842 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4841, i32 0, i32 0
  store %union.rec* %1974, %union.rec** %opred4842, align 8
  %1977 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4843

cond.end.4843:                                    ; preds = %cond.false.4814, %cond.true.4813
  %cond4844 = phi %union.rec* [ null, %cond.true.4813 ], [ %1977, %cond.false.4814 ]
  %1978 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1978, %union.rec** @zz_hold, align 8
  %1979 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1979, %union.rec** @zz_hold, align 8
  %1980 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14845 = bitcast %union.rec* %1980 to %struct.word_type*
  %ou14846 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14845, i32 0, i32 1
  %os114847 = bitcast %union.FIRST_UNION* %ou14846 to %struct.anon*
  %otype4848 = getelementptr inbounds %struct.anon, %struct.anon* %os114847, i32 0, i32 0
  %1981 = load i8, i8* %otype4848, align 1
  %conv4849 = zext i8 %1981 to i32
  %cmp4850 = icmp eq i32 %conv4849, 11
  br i1 %cmp4850, label %cond.true.4860, label %lor.lhs.false.4852

lor.lhs.false.4852:                               ; preds = %cond.end.4843
  %1982 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14853 = bitcast %union.rec* %1982 to %struct.word_type*
  %ou14854 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14853, i32 0, i32 1
  %os114855 = bitcast %union.FIRST_UNION* %ou14854 to %struct.anon*
  %otype4856 = getelementptr inbounds %struct.anon, %struct.anon* %os114855, i32 0, i32 0
  %1983 = load i8, i8* %otype4856, align 1
  %conv4857 = zext i8 %1983 to i32
  %cmp4858 = icmp eq i32 %conv4857, 12
  br i1 %cmp4858, label %cond.true.4860, label %cond.false.4866

cond.true.4860:                                   ; preds = %lor.lhs.false.4852, %cond.end.4843
  %1984 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14861 = bitcast %union.rec* %1984 to %struct.word_type*
  %ou14862 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14861, i32 0, i32 1
  %os114863 = bitcast %union.FIRST_UNION* %ou14862 to %struct.anon*
  %orec_size4864 = getelementptr inbounds %struct.anon, %struct.anon* %os114863, i32 0, i32 1
  %1985 = load i8, i8* %orec_size4864, align 1
  %conv4865 = zext i8 %1985 to i32
  br label %cond.end.4874

cond.false.4866:                                  ; preds = %lor.lhs.false.4852
  %1986 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14867 = bitcast %union.rec* %1986 to %struct.word_type*
  %ou14868 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14867, i32 0, i32 1
  %os114869 = bitcast %union.FIRST_UNION* %ou14868 to %struct.anon*
  %otype4870 = getelementptr inbounds %struct.anon, %struct.anon* %os114869, i32 0, i32 0
  %1987 = load i8, i8* %otype4870, align 1
  %idxprom4871 = zext i8 %1987 to i64
  %arrayidx4872 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom4871
  %1988 = load i8, i8* %arrayidx4872, align 1
  %conv4873 = zext i8 %1988 to i32
  br label %cond.end.4874

cond.end.4874:                                    ; preds = %cond.false.4866, %cond.true.4860
  %cond4875 = phi i32 [ %conv4865, %cond.true.4860 ], [ %conv4873, %cond.false.4866 ]
  store i32 %cond4875, i32* @zz_size, align 4
  %1989 = load i32, i32* @zz_size, align 4
  %idxprom4876 = sext i32 %1989 to i64
  %arrayidx4877 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4876
  %1990 = load %union.rec*, %union.rec** %arrayidx4877, align 8
  %1991 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14878 = bitcast %union.rec* %1991 to %struct.word_type*
  %olist4879 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14878, i32 0, i32 0
  %arrayidx4880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4879, i32 0, i64 0
  %opred4881 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4880, i32 0, i32 0
  store %union.rec* %1990, %union.rec** %opred4881, align 8
  %1992 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1993 = load i32, i32* @zz_size, align 4
  %idxprom4882 = sext i32 %1993 to i64
  %arrayidx4883 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4882
  store %union.rec* %1992, %union.rec** %arrayidx4883, align 8
  %1994 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os14884 = bitcast %union.rec* %1994 to %struct.word_type*
  %olist4885 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14884, i32 0, i32 0
  %arrayidx4886 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4885, i32 0, i64 1
  %osucc4887 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4886, i32 0, i32 1
  %1995 = load %union.rec*, %union.rec** %osucc4887, align 8
  %1996 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp4888 = icmp eq %union.rec* %1995, %1996
  br i1 %cmp4888, label %if.then.4890, label %if.end.4892

if.then.4890:                                     ; preds = %cond.end.4874
  %1997 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call4891 = call i32 @DisposeObject(%union.rec* %1997)
  br label %if.end.4892

if.end.4892:                                      ; preds = %if.then.4890, %cond.end.4874
  %1998 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a4893 = bitcast %union.rec* %1998 to %struct.head_type*
  %oready_galls4894 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a4893, i32 0, i32 7
  %1999 = load %union.rec*, %union.rec** %oready_galls4894, align 8
  %os14895 = bitcast %union.rec* %1999 to %struct.word_type*
  %olist4896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14895, i32 0, i32 0
  %arrayidx4897 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4896, i32 0, i64 0
  %osucc4898 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4897, i32 0, i32 1
  %2000 = load %union.rec*, %union.rec** %osucc4898, align 8
  %2001 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a4899 = bitcast %union.rec* %2001 to %struct.head_type*
  %oready_galls4900 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a4899, i32 0, i32 7
  %2002 = load %union.rec*, %union.rec** %oready_galls4900, align 8
  %cmp4901 = icmp eq %union.rec* %2000, %2002
  br i1 %cmp4901, label %if.then.4903, label %if.end.4947

if.then.4903:                                     ; preds = %if.end.4892
  %2003 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a4904 = bitcast %union.rec* %2003 to %struct.head_type*
  %oready_galls4905 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a4904, i32 0, i32 7
  %2004 = load %union.rec*, %union.rec** %oready_galls4905, align 8
  store %union.rec* %2004, %union.rec** @zz_hold, align 8
  %2005 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2005, %union.rec** @zz_hold, align 8
  %2006 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14906 = bitcast %union.rec* %2006 to %struct.word_type*
  %ou14907 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14906, i32 0, i32 1
  %os114908 = bitcast %union.FIRST_UNION* %ou14907 to %struct.anon*
  %otype4909 = getelementptr inbounds %struct.anon, %struct.anon* %os114908, i32 0, i32 0
  %2007 = load i8, i8* %otype4909, align 1
  %conv4910 = zext i8 %2007 to i32
  %cmp4911 = icmp eq i32 %conv4910, 11
  br i1 %cmp4911, label %cond.true.4921, label %lor.lhs.false.4913

lor.lhs.false.4913:                               ; preds = %if.then.4903
  %2008 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14914 = bitcast %union.rec* %2008 to %struct.word_type*
  %ou14915 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14914, i32 0, i32 1
  %os114916 = bitcast %union.FIRST_UNION* %ou14915 to %struct.anon*
  %otype4917 = getelementptr inbounds %struct.anon, %struct.anon* %os114916, i32 0, i32 0
  %2009 = load i8, i8* %otype4917, align 1
  %conv4918 = zext i8 %2009 to i32
  %cmp4919 = icmp eq i32 %conv4918, 12
  br i1 %cmp4919, label %cond.true.4921, label %cond.false.4927

cond.true.4921:                                   ; preds = %lor.lhs.false.4913, %if.then.4903
  %2010 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14922 = bitcast %union.rec* %2010 to %struct.word_type*
  %ou14923 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14922, i32 0, i32 1
  %os114924 = bitcast %union.FIRST_UNION* %ou14923 to %struct.anon*
  %orec_size4925 = getelementptr inbounds %struct.anon, %struct.anon* %os114924, i32 0, i32 1
  %2011 = load i8, i8* %orec_size4925, align 1
  %conv4926 = zext i8 %2011 to i32
  br label %cond.end.4935

cond.false.4927:                                  ; preds = %lor.lhs.false.4913
  %2012 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14928 = bitcast %union.rec* %2012 to %struct.word_type*
  %ou14929 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14928, i32 0, i32 1
  %os114930 = bitcast %union.FIRST_UNION* %ou14929 to %struct.anon*
  %otype4931 = getelementptr inbounds %struct.anon, %struct.anon* %os114930, i32 0, i32 0
  %2013 = load i8, i8* %otype4931, align 1
  %idxprom4932 = zext i8 %2013 to i64
  %arrayidx4933 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom4932
  %2014 = load i8, i8* %arrayidx4933, align 1
  %conv4934 = zext i8 %2014 to i32
  br label %cond.end.4935

cond.end.4935:                                    ; preds = %cond.false.4927, %cond.true.4921
  %cond4936 = phi i32 [ %conv4926, %cond.true.4921 ], [ %conv4934, %cond.false.4927 ]
  store i32 %cond4936, i32* @zz_size, align 4
  %2015 = load i32, i32* @zz_size, align 4
  %idxprom4937 = sext i32 %2015 to i64
  %arrayidx4938 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4937
  %2016 = load %union.rec*, %union.rec** %arrayidx4938, align 8
  %2017 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14939 = bitcast %union.rec* %2017 to %struct.word_type*
  %olist4940 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14939, i32 0, i32 0
  %arrayidx4941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4940, i32 0, i64 0
  %opred4942 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4941, i32 0, i32 0
  store %union.rec* %2016, %union.rec** %opred4942, align 8
  %2018 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2019 = load i32, i32* @zz_size, align 4
  %idxprom4943 = sext i32 %2019 to i64
  %arrayidx4944 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4943
  store %union.rec* %2018, %union.rec** %arrayidx4944, align 8
  %2020 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a4945 = bitcast %union.rec* %2020 to %struct.head_type*
  %oready_galls4946 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a4945, i32 0, i32 7
  store %union.rec* null, %union.rec** %oready_galls4946, align 8
  br label %if.end.4947

if.end.4947:                                      ; preds = %cond.end.4935, %if.end.4892
  br label %if.end.4948

if.end.4948:                                      ; preds = %if.end.4947, %cond.end.4762
  %2021 = load %union.rec*, %union.rec** %hd2, align 8
  %os14949 = bitcast %union.rec* %2021 to %struct.word_type*
  %ou14950 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14949, i32 0, i32 1
  %os114951 = bitcast %union.FIRST_UNION* %ou14950 to %struct.anon*
  %otype4952 = getelementptr inbounds %struct.anon, %struct.anon* %os114951, i32 0, i32 0
  %2022 = load i8, i8* %otype4952, align 1
  %conv4953 = zext i8 %2022 to i32
  %cmp4954 = icmp eq i32 %conv4953, 17
  br i1 %cmp4954, label %if.then.4956, label %if.end.4958

if.then.4956:                                     ; preds = %if.end.4948
  %2023 = load %union.rec*, %union.rec** %hd2, align 8
  %call4957 = call %union.rec* @ConvertGalleyList(%union.rec* %2023)
  store %union.rec* %call4957, %union.rec** %hd2, align 8
  br label %if.end.4958

if.end.4958:                                      ; preds = %if.then.4956, %if.end.4948
  %2024 = load %union.rec*, %union.rec** %hd2, align 8
  call void @FlushGalley(%union.rec* %2024)
  br label %RESUME

if.else.4959:                                     ; preds = %land.lhs.true.3115, %land.lhs.true.3111, %if.end.3103
  %2025 = load %union.rec*, %union.rec** %y, align 8
  %os14960 = bitcast %union.rec* %2025 to %struct.word_type*
  %ou14961 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14960, i32 0, i32 1
  %os114962 = bitcast %union.FIRST_UNION* %ou14961 to %struct.anon*
  %otype4963 = getelementptr inbounds %struct.anon, %struct.anon* %os114962, i32 0, i32 0
  %2026 = load i8, i8* %otype4963, align 1
  %conv4964 = zext i8 %2026 to i32
  %cmp4965 = icmp eq i32 %conv4964, 121
  br i1 %cmp4965, label %land.lhs.true.4967, label %if.end.5740

land.lhs.true.4967:                               ; preds = %if.else.4959
  %2027 = load %union.rec*, %union.rec** %y, align 8
  %os14968 = bitcast %union.rec* %2027 to %struct.word_type*
  %ou24969 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14968, i32 0, i32 2
  %os234970 = bitcast %union.SECOND_UNION* %ou24969 to %struct.anon.2*
  %otrigger_ext = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os234970, i32 0, i32 2
  %bf.load4971 = load i16, i16* %otrigger_ext, align 2
  %bf.lshr4972 = lshr i16 %bf.load4971, 6
  %bf.clear4973 = and i16 %bf.lshr4972, 1
  %bf.cast4974 = zext i16 %bf.clear4973 to i32
  %tobool4975 = icmp ne i32 %bf.cast4974, 0
  br i1 %tobool4975, label %land.lhs.true.4976, label %if.end.5740

land.lhs.true.4976:                               ; preds = %land.lhs.true.4967
  %2028 = load i32, i32* @AllowCrossDb, align 4
  %tobool4977 = icmp ne i32 %2028, 0
  br i1 %tobool4977, label %if.then.4978, label %if.end.5740

if.then.4978:                                     ; preds = %land.lhs.true.4976
  %2029 = load %union.rec*, %union.rec** %y, align 8
  %os24997 = bitcast %union.rec* %2029 to %struct.closure_type*
  %oactual4998 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24997, i32 0, i32 5
  %2030 = load %union.rec*, %union.rec** %oactual4998, align 8
  %os24999 = bitcast %union.rec* %2030 to %struct.closure_type*
  %oactual5000 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24999, i32 0, i32 5
  %2031 = load %union.rec*, %union.rec** %oactual5000, align 8
  %call5001 = call %union.rec* @FirstExternTarget(%union.rec* %2031, %union.rec** %cnt)
  store %union.rec* %call5001, %union.rec** %sym, align 8
  br label %for.cond.5002

for.cond.5002:                                    ; preds = %for.inc.5721, %if.then.4978
  %2032 = load %union.rec*, %union.rec** %sym, align 8
  %cmp5003 = icmp ne %union.rec* %2032, null
  br i1 %cmp5003, label %for.body.5005, label %for.end.5727

for.body.5005:                                    ; preds = %for.cond.5002
  %2033 = load %union.rec*, %union.rec** %sym, align 8
  %2034 = load %union.rec*, %union.rec** %y, align 8
  %os25006 = bitcast %union.rec* %2034 to %struct.closure_type*
  %oactual5007 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25006, i32 0, i32 5
  %2035 = load %union.rec*, %union.rec** %oactual5007, align 8
  %os15008 = bitcast %union.rec* %2035 to %struct.word_type*
  %ou15009 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15008, i32 0, i32 1
  %ofpos5010 = bitcast %union.FIRST_UNION* %ou15009 to %struct.FILE_POS*
  %call5011 = call %union.rec* @GallTargEval(%union.rec* %2033, %struct.FILE_POS* %ofpos5010)
  store %union.rec* %call5011, %union.rec** %cr, align 8
  %2036 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 132), align 1
  %conv5012 = zext i8 %2036 to i32
  store i32 %conv5012, i32* @zz_size, align 4
  %conv5013 = sext i32 %conv5012 to i64
  %cmp5014 = icmp uge i64 %conv5013, 265
  br i1 %cmp5014, label %if.then.5016, label %if.else.5018

if.then.5016:                                     ; preds = %for.body.5005
  %2037 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5017 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %2037)
  br label %if.end.5035

if.else.5018:                                     ; preds = %for.body.5005
  %2038 = load i32, i32* @zz_size, align 4
  %idxprom5019 = sext i32 %2038 to i64
  %arrayidx5020 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5019
  %2039 = load %union.rec*, %union.rec** %arrayidx5020, align 8
  %cmp5021 = icmp eq %union.rec* %2039, null
  br i1 %cmp5021, label %if.then.5023, label %if.else.5025

if.then.5023:                                     ; preds = %if.else.5018
  %2040 = load i32, i32* @zz_size, align 4
  %2041 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5024 = call %union.rec* @GetMemory(i32 %2040, %struct.FILE_POS* %2041)
  store %union.rec* %call5024, %union.rec** @zz_hold, align 8
  br label %if.end.5034

if.else.5025:                                     ; preds = %if.else.5018
  %2042 = load i32, i32* @zz_size, align 4
  %idxprom5026 = sext i32 %2042 to i64
  %arrayidx5027 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5026
  %2043 = load %union.rec*, %union.rec** %arrayidx5027, align 8
  store %union.rec* %2043, %union.rec** @zz_hold, align 8
  store %union.rec* %2043, %union.rec** @zz_hold, align 8
  %2044 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15028 = bitcast %union.rec* %2044 to %struct.word_type*
  %olist5029 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15028, i32 0, i32 0
  %arrayidx5030 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5029, i32 0, i64 0
  %opred5031 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5030, i32 0, i32 0
  %2045 = load %union.rec*, %union.rec** %opred5031, align 8
  %2046 = load i32, i32* @zz_size, align 4
  %idxprom5032 = sext i32 %2046 to i64
  %arrayidx5033 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5032
  store %union.rec* %2045, %union.rec** %arrayidx5033, align 8
  br label %if.end.5034

if.end.5034:                                      ; preds = %if.else.5025, %if.then.5023
  br label %if.end.5035

if.end.5035:                                      ; preds = %if.end.5034, %if.then.5016
  %2047 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15036 = bitcast %union.rec* %2047 to %struct.word_type*
  %ou15037 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15036, i32 0, i32 1
  %os115038 = bitcast %union.FIRST_UNION* %ou15037 to %struct.anon*
  %otype5039 = getelementptr inbounds %struct.anon, %struct.anon* %os115038, i32 0, i32 0
  store i8 -124, i8* %otype5039, align 1
  %2048 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2049 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15040 = bitcast %union.rec* %2049 to %struct.word_type*
  %olist5041 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15040, i32 0, i32 0
  %arrayidx5042 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5041, i32 0, i64 1
  %osucc5043 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5042, i32 0, i32 1
  store %union.rec* %2048, %union.rec** %osucc5043, align 8
  %2050 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15044 = bitcast %union.rec* %2050 to %struct.word_type*
  %olist5045 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15044, i32 0, i32 0
  %arrayidx5046 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5045, i32 0, i64 1
  %opred5047 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5046, i32 0, i32 0
  store %union.rec* %2048, %union.rec** %opred5047, align 8
  %2051 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15048 = bitcast %union.rec* %2051 to %struct.word_type*
  %olist5049 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15048, i32 0, i32 0
  %arrayidx5050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5049, i32 0, i64 0
  %osucc5051 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5050, i32 0, i32 1
  store %union.rec* %2048, %union.rec** %osucc5051, align 8
  %2052 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15052 = bitcast %union.rec* %2052 to %struct.word_type*
  %olist5053 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15052, i32 0, i32 0
  %arrayidx5054 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5053, i32 0, i64 0
  %opred5055 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5054, i32 0, i32 0
  store %union.rec* %2048, %union.rec** %opred5055, align 8
  store %union.rec* %2048, %union.rec** %ins, align 8
  %2053 = load %union.rec*, %union.rec** %cr, align 8
  %2054 = load %union.rec*, %union.rec** %ins, align 8
  %os25056 = bitcast %union.rec* %2054 to %struct.closure_type*
  %oactual5057 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25056, i32 0, i32 5
  store %union.rec* %2053, %union.rec** %oactual5057, align 8
  %2055 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv5058 = zext i8 %2055 to i32
  store i32 %conv5058, i32* @zz_size, align 4
  %conv5059 = sext i32 %conv5058 to i64
  %cmp5060 = icmp uge i64 %conv5059, 265
  br i1 %cmp5060, label %if.then.5062, label %if.else.5064

if.then.5062:                                     ; preds = %if.end.5035
  %2056 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5063 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %2056)
  br label %if.end.5081

if.else.5064:                                     ; preds = %if.end.5035
  %2057 = load i32, i32* @zz_size, align 4
  %idxprom5065 = sext i32 %2057 to i64
  %arrayidx5066 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5065
  %2058 = load %union.rec*, %union.rec** %arrayidx5066, align 8
  %cmp5067 = icmp eq %union.rec* %2058, null
  br i1 %cmp5067, label %if.then.5069, label %if.else.5071

if.then.5069:                                     ; preds = %if.else.5064
  %2059 = load i32, i32* @zz_size, align 4
  %2060 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5070 = call %union.rec* @GetMemory(i32 %2059, %struct.FILE_POS* %2060)
  store %union.rec* %call5070, %union.rec** @zz_hold, align 8
  br label %if.end.5080

if.else.5071:                                     ; preds = %if.else.5064
  %2061 = load i32, i32* @zz_size, align 4
  %idxprom5072 = sext i32 %2061 to i64
  %arrayidx5073 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5072
  %2062 = load %union.rec*, %union.rec** %arrayidx5073, align 8
  store %union.rec* %2062, %union.rec** @zz_hold, align 8
  store %union.rec* %2062, %union.rec** @zz_hold, align 8
  %2063 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15074 = bitcast %union.rec* %2063 to %struct.word_type*
  %olist5075 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15074, i32 0, i32 0
  %arrayidx5076 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5075, i32 0, i64 0
  %opred5077 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5076, i32 0, i32 0
  %2064 = load %union.rec*, %union.rec** %opred5077, align 8
  %2065 = load i32, i32* @zz_size, align 4
  %idxprom5078 = sext i32 %2065 to i64
  %arrayidx5079 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5078
  store %union.rec* %2064, %union.rec** %arrayidx5079, align 8
  br label %if.end.5080

if.end.5080:                                      ; preds = %if.else.5071, %if.then.5069
  br label %if.end.5081

if.end.5081:                                      ; preds = %if.end.5080, %if.then.5062
  %2066 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15082 = bitcast %union.rec* %2066 to %struct.word_type*
  %ou15083 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15082, i32 0, i32 1
  %os115084 = bitcast %union.FIRST_UNION* %ou15083 to %struct.anon*
  %otype5085 = getelementptr inbounds %struct.anon, %struct.anon* %os115084, i32 0, i32 0
  store i8 0, i8* %otype5085, align 1
  %2067 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2068 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15086 = bitcast %union.rec* %2068 to %struct.word_type*
  %olist5087 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15086, i32 0, i32 0
  %arrayidx5088 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5087, i32 0, i64 1
  %osucc5089 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5088, i32 0, i32 1
  store %union.rec* %2067, %union.rec** %osucc5089, align 8
  %2069 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15090 = bitcast %union.rec* %2069 to %struct.word_type*
  %olist5091 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15090, i32 0, i32 0
  %arrayidx5092 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5091, i32 0, i64 1
  %opred5093 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5092, i32 0, i32 0
  store %union.rec* %2067, %union.rec** %opred5093, align 8
  %2070 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15094 = bitcast %union.rec* %2070 to %struct.word_type*
  %olist5095 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15094, i32 0, i32 0
  %arrayidx5096 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5095, i32 0, i64 0
  %osucc5097 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5096, i32 0, i32 1
  store %union.rec* %2067, %union.rec** %osucc5097, align 8
  %2071 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15098 = bitcast %union.rec* %2071 to %struct.word_type*
  %olist5099 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15098, i32 0, i32 0
  %arrayidx5100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5099, i32 0, i64 0
  %opred5101 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5100, i32 0, i32 0
  store %union.rec* %2067, %union.rec** %opred5101, align 8
  store %union.rec* %2067, %union.rec** @xx_link, align 8
  %2072 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2072, %union.rec** @zz_res, align 8
  %2073 = load %union.rec*, %union.rec** %y, align 8
  %os15102 = bitcast %union.rec* %2073 to %struct.word_type*
  %olist5103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15102, i32 0, i32 0
  %arrayidx5104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5103, i32 0, i64 1
  %osucc5105 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5104, i32 0, i32 1
  %2074 = load %union.rec*, %union.rec** %osucc5105, align 8
  store %union.rec* %2074, %union.rec** @zz_hold, align 8
  %2075 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5106 = icmp eq %union.rec* %2075, null
  br i1 %cmp5106, label %cond.true.5108, label %cond.false.5109

cond.true.5108:                                   ; preds = %if.end.5081
  %2076 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5144

cond.false.5109:                                  ; preds = %if.end.5081
  %2077 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5110 = icmp eq %union.rec* %2077, null
  br i1 %cmp5110, label %cond.true.5112, label %cond.false.5113

cond.true.5112:                                   ; preds = %cond.false.5109
  %2078 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5142

cond.false.5113:                                  ; preds = %cond.false.5109
  %2079 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15114 = bitcast %union.rec* %2079 to %struct.word_type*
  %olist5115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15114, i32 0, i32 0
  %arrayidx5116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5115, i32 0, i64 0
  %opred5117 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5116, i32 0, i32 0
  %2080 = load %union.rec*, %union.rec** %opred5117, align 8
  store %union.rec* %2080, %union.rec** @zz_tmp, align 8
  %2081 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15118 = bitcast %union.rec* %2081 to %struct.word_type*
  %olist5119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15118, i32 0, i32 0
  %arrayidx5120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5119, i32 0, i64 0
  %opred5121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5120, i32 0, i32 0
  %2082 = load %union.rec*, %union.rec** %opred5121, align 8
  %2083 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15122 = bitcast %union.rec* %2083 to %struct.word_type*
  %olist5123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15122, i32 0, i32 0
  %arrayidx5124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5123, i32 0, i64 0
  %opred5125 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5124, i32 0, i32 0
  store %union.rec* %2082, %union.rec** %opred5125, align 8
  %2084 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2085 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15126 = bitcast %union.rec* %2085 to %struct.word_type*
  %olist5127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15126, i32 0, i32 0
  %arrayidx5128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5127, i32 0, i64 0
  %opred5129 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5128, i32 0, i32 0
  %2086 = load %union.rec*, %union.rec** %opred5129, align 8
  %os15130 = bitcast %union.rec* %2086 to %struct.word_type*
  %olist5131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15130, i32 0, i32 0
  %arrayidx5132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5131, i32 0, i64 0
  %osucc5133 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5132, i32 0, i32 1
  store %union.rec* %2084, %union.rec** %osucc5133, align 8
  %2087 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2088 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15134 = bitcast %union.rec* %2088 to %struct.word_type*
  %olist5135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15134, i32 0, i32 0
  %arrayidx5136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5135, i32 0, i64 0
  %opred5137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5136, i32 0, i32 0
  store %union.rec* %2087, %union.rec** %opred5137, align 8
  %2089 = load %union.rec*, %union.rec** @zz_res, align 8
  %2090 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15138 = bitcast %union.rec* %2090 to %struct.word_type*
  %olist5139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15138, i32 0, i32 0
  %arrayidx5140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5139, i32 0, i64 0
  %osucc5141 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5140, i32 0, i32 1
  store %union.rec* %2089, %union.rec** %osucc5141, align 8
  br label %cond.end.5142

cond.end.5142:                                    ; preds = %cond.false.5113, %cond.true.5112
  %cond5143 = phi %union.rec* [ %2078, %cond.true.5112 ], [ %2089, %cond.false.5113 ]
  br label %cond.end.5144

cond.end.5144:                                    ; preds = %cond.end.5142, %cond.true.5108
  %cond5145 = phi %union.rec* [ %2076, %cond.true.5108 ], [ %cond5143, %cond.end.5142 ]
  %2091 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2091, %union.rec** @zz_res, align 8
  %2092 = load %union.rec*, %union.rec** %ins, align 8
  store %union.rec* %2092, %union.rec** @zz_hold, align 8
  %2093 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5146 = icmp eq %union.rec* %2093, null
  br i1 %cmp5146, label %cond.true.5148, label %cond.false.5149

cond.true.5148:                                   ; preds = %cond.end.5144
  %2094 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5184

cond.false.5149:                                  ; preds = %cond.end.5144
  %2095 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5150 = icmp eq %union.rec* %2095, null
  br i1 %cmp5150, label %cond.true.5152, label %cond.false.5153

cond.true.5152:                                   ; preds = %cond.false.5149
  %2096 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5182

cond.false.5153:                                  ; preds = %cond.false.5149
  %2097 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15154 = bitcast %union.rec* %2097 to %struct.word_type*
  %olist5155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15154, i32 0, i32 0
  %arrayidx5156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5155, i32 0, i64 1
  %opred5157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5156, i32 0, i32 0
  %2098 = load %union.rec*, %union.rec** %opred5157, align 8
  store %union.rec* %2098, %union.rec** @zz_tmp, align 8
  %2099 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15158 = bitcast %union.rec* %2099 to %struct.word_type*
  %olist5159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15158, i32 0, i32 0
  %arrayidx5160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5159, i32 0, i64 1
  %opred5161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5160, i32 0, i32 0
  %2100 = load %union.rec*, %union.rec** %opred5161, align 8
  %2101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15162 = bitcast %union.rec* %2101 to %struct.word_type*
  %olist5163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15162, i32 0, i32 0
  %arrayidx5164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5163, i32 0, i64 1
  %opred5165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5164, i32 0, i32 0
  store %union.rec* %2100, %union.rec** %opred5165, align 8
  %2102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2103 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15166 = bitcast %union.rec* %2103 to %struct.word_type*
  %olist5167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15166, i32 0, i32 0
  %arrayidx5168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5167, i32 0, i64 1
  %opred5169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5168, i32 0, i32 0
  %2104 = load %union.rec*, %union.rec** %opred5169, align 8
  %os15170 = bitcast %union.rec* %2104 to %struct.word_type*
  %olist5171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15170, i32 0, i32 0
  %arrayidx5172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5171, i32 0, i64 1
  %osucc5173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5172, i32 0, i32 1
  store %union.rec* %2102, %union.rec** %osucc5173, align 8
  %2105 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2106 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15174 = bitcast %union.rec* %2106 to %struct.word_type*
  %olist5175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15174, i32 0, i32 0
  %arrayidx5176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5175, i32 0, i64 1
  %opred5177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5176, i32 0, i32 0
  store %union.rec* %2105, %union.rec** %opred5177, align 8
  %2107 = load %union.rec*, %union.rec** @zz_res, align 8
  %2108 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15178 = bitcast %union.rec* %2108 to %struct.word_type*
  %olist5179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15178, i32 0, i32 0
  %arrayidx5180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5179, i32 0, i64 1
  %osucc5181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5180, i32 0, i32 1
  store %union.rec* %2107, %union.rec** %osucc5181, align 8
  br label %cond.end.5182

cond.end.5182:                                    ; preds = %cond.false.5153, %cond.true.5152
  %cond5183 = phi %union.rec* [ %2096, %cond.true.5152 ], [ %2107, %cond.false.5153 ]
  br label %cond.end.5184

cond.end.5184:                                    ; preds = %cond.end.5182, %cond.true.5148
  %cond5185 = phi %union.rec* [ %2094, %cond.true.5148 ], [ %cond5183, %cond.end.5182 ]
  %2109 = load %union.rec*, %union.rec** %cr, align 8
  %os15186 = bitcast %union.rec* %2109 to %struct.word_type*
  %olist5187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15186, i32 0, i32 0
  %arrayidx5188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5187, i32 0, i64 0
  %opred5189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5188, i32 0, i32 0
  %2110 = load %union.rec*, %union.rec** %opred5189, align 8
  %os15190 = bitcast %union.rec* %2110 to %struct.word_type*
  %olist5191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15190, i32 0, i32 0
  %arrayidx5192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5191, i32 0, i64 1
  %opred5193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5192, i32 0, i32 0
  %2111 = load %union.rec*, %union.rec** %opred5193, align 8
  store %union.rec* %2111, %union.rec** %tag4983, align 8
  br label %for.cond.5194

for.cond.5194:                                    ; preds = %for.inc.5203, %cond.end.5184
  %2112 = load %union.rec*, %union.rec** %tag4983, align 8
  %os15195 = bitcast %union.rec* %2112 to %struct.word_type*
  %ou15196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15195, i32 0, i32 1
  %os115197 = bitcast %union.FIRST_UNION* %ou15196 to %struct.anon*
  %otype5198 = getelementptr inbounds %struct.anon, %struct.anon* %os115197, i32 0, i32 0
  %2113 = load i8, i8* %otype5198, align 1
  %conv5199 = zext i8 %2113 to i32
  %cmp5200 = icmp eq i32 %conv5199, 0
  br i1 %cmp5200, label %for.body.5202, label %for.end.5208

for.body.5202:                                    ; preds = %for.cond.5194
  br label %for.inc.5203

for.inc.5203:                                     ; preds = %for.body.5202
  %2114 = load %union.rec*, %union.rec** %tag4983, align 8
  %os15204 = bitcast %union.rec* %2114 to %struct.word_type*
  %olist5205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15204, i32 0, i32 0
  %arrayidx5206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5205, i32 0, i64 1
  %opred5207 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5206, i32 0, i32 0
  %2115 = load %union.rec*, %union.rec** %opred5207, align 8
  store %union.rec* %2115, %union.rec** %tag4983, align 8
  br label %for.cond.5194

for.end.5208:                                     ; preds = %for.cond.5194
  %2116 = load %union.rec*, %union.rec** %tag4983, align 8
  %os15209 = bitcast %union.rec* %2116 to %struct.word_type*
  %ou15210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15209, i32 0, i32 1
  %os115211 = bitcast %union.FIRST_UNION* %ou15210 to %struct.anon*
  %otype5212 = getelementptr inbounds %struct.anon, %struct.anon* %os115211, i32 0, i32 0
  %2117 = load i8, i8* %otype5212, align 1
  %conv5213 = zext i8 %2117 to i32
  %cmp5214 = icmp eq i32 %conv5213, 11
  br i1 %cmp5214, label %if.end.5226, label %lor.lhs.false.5216

lor.lhs.false.5216:                               ; preds = %for.end.5208
  %2118 = load %union.rec*, %union.rec** %tag4983, align 8
  %os15217 = bitcast %union.rec* %2118 to %struct.word_type*
  %ou15218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15217, i32 0, i32 1
  %os115219 = bitcast %union.FIRST_UNION* %ou15218 to %struct.anon*
  %otype5220 = getelementptr inbounds %struct.anon, %struct.anon* %os115219, i32 0, i32 0
  %2119 = load i8, i8* %otype5220, align 1
  %conv5221 = zext i8 %2119 to i32
  %cmp5222 = icmp eq i32 %conv5221, 12
  br i1 %cmp5222, label %if.end.5226, label %if.then.5224

if.then.5224:                                     ; preds = %lor.lhs.false.5216
  %2120 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5225 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.5226

if.end.5226:                                      ; preds = %if.then.5224, %lor.lhs.false.5216, %for.end.5208
  %2121 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  %2122 = load %union.rec*, %union.rec** %sym, align 8
  %2123 = load %union.rec*, %union.rec** %tag4983, align 8
  %os15227 = bitcast %union.rec* %2123 to %struct.word_type*
  %ostring5228 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15227, i32 0, i32 4
  %arraydecay5229 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring5228, i32 0, i32 0
  %arraydecay5230 = getelementptr inbounds [512 x i8], [512 x i8]* %newseq4992, i32 0, i32 0
  %call5231 = call i32 @DbRetrieve(%union.rec* %2121, i32 1, %union.rec* %2122, i8* %arraydecay5229, i8* %arraydecay5230, i16* %tfnum, i64* %tfpos, i32* %tlnum, i64* %tcont)
  store i32 %call5231, i32* %found4990, align 4
  %2124 = load i32, i32* %found4990, align 4
  %tobool5232 = icmp ne i32 %2124, 0
  br i1 %tobool5232, label %if.then.5233, label %if.end.5720

if.then.5233:                                     ; preds = %if.end.5226
  %2125 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a5234 = bitcast %union.rec* %2125 to %struct.head_type*
  %oready_galls5235 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a5234, i32 0, i32 7
  %2126 = load %union.rec*, %union.rec** %oready_galls5235, align 8
  %cmp5236 = icmp eq %union.rec* %2126, null
  br i1 %cmp5236, label %if.then.5238, label %if.end.5285

if.then.5238:                                     ; preds = %if.then.5233
  %2127 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv5239 = zext i8 %2127 to i32
  store i32 %conv5239, i32* @zz_size, align 4
  %conv5240 = sext i32 %conv5239 to i64
  %cmp5241 = icmp uge i64 %conv5240, 265
  br i1 %cmp5241, label %if.then.5243, label %if.else.5245

if.then.5243:                                     ; preds = %if.then.5238
  %2128 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5244 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %2128)
  br label %if.end.5262

if.else.5245:                                     ; preds = %if.then.5238
  %2129 = load i32, i32* @zz_size, align 4
  %idxprom5246 = sext i32 %2129 to i64
  %arrayidx5247 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5246
  %2130 = load %union.rec*, %union.rec** %arrayidx5247, align 8
  %cmp5248 = icmp eq %union.rec* %2130, null
  br i1 %cmp5248, label %if.then.5250, label %if.else.5252

if.then.5250:                                     ; preds = %if.else.5245
  %2131 = load i32, i32* @zz_size, align 4
  %2132 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5251 = call %union.rec* @GetMemory(i32 %2131, %struct.FILE_POS* %2132)
  store %union.rec* %call5251, %union.rec** @zz_hold, align 8
  br label %if.end.5261

if.else.5252:                                     ; preds = %if.else.5245
  %2133 = load i32, i32* @zz_size, align 4
  %idxprom5253 = sext i32 %2133 to i64
  %arrayidx5254 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5253
  %2134 = load %union.rec*, %union.rec** %arrayidx5254, align 8
  store %union.rec* %2134, %union.rec** @zz_hold, align 8
  store %union.rec* %2134, %union.rec** @zz_hold, align 8
  %2135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15255 = bitcast %union.rec* %2135 to %struct.word_type*
  %olist5256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15255, i32 0, i32 0
  %arrayidx5257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5256, i32 0, i64 0
  %opred5258 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5257, i32 0, i32 0
  %2136 = load %union.rec*, %union.rec** %opred5258, align 8
  %2137 = load i32, i32* @zz_size, align 4
  %idxprom5259 = sext i32 %2137 to i64
  %arrayidx5260 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5259
  store %union.rec* %2136, %union.rec** %arrayidx5260, align 8
  br label %if.end.5261

if.end.5261:                                      ; preds = %if.else.5252, %if.then.5250
  br label %if.end.5262

if.end.5262:                                      ; preds = %if.end.5261, %if.then.5243
  %2138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15263 = bitcast %union.rec* %2138 to %struct.word_type*
  %ou15264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15263, i32 0, i32 1
  %os115265 = bitcast %union.FIRST_UNION* %ou15264 to %struct.anon*
  %otype5266 = getelementptr inbounds %struct.anon, %struct.anon* %os115265, i32 0, i32 0
  store i8 17, i8* %otype5266, align 1
  %2139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15267 = bitcast %union.rec* %2140 to %struct.word_type*
  %olist5268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15267, i32 0, i32 0
  %arrayidx5269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5268, i32 0, i64 1
  %osucc5270 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5269, i32 0, i32 1
  store %union.rec* %2139, %union.rec** %osucc5270, align 8
  %2141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15271 = bitcast %union.rec* %2141 to %struct.word_type*
  %olist5272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15271, i32 0, i32 0
  %arrayidx5273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5272, i32 0, i64 1
  %opred5274 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5273, i32 0, i32 0
  store %union.rec* %2139, %union.rec** %opred5274, align 8
  %2142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15275 = bitcast %union.rec* %2142 to %struct.word_type*
  %olist5276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15275, i32 0, i32 0
  %arrayidx5277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5276, i32 0, i64 0
  %osucc5278 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5277, i32 0, i32 1
  store %union.rec* %2139, %union.rec** %osucc5278, align 8
  %2143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15279 = bitcast %union.rec* %2143 to %struct.word_type*
  %olist5280 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15279, i32 0, i32 0
  %arrayidx5281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5280, i32 0, i64 0
  %opred5282 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5281, i32 0, i32 0
  store %union.rec* %2139, %union.rec** %opred5282, align 8
  %2144 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a5283 = bitcast %union.rec* %2144 to %struct.head_type*
  %oready_galls5284 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a5283, i32 0, i32 7
  store %union.rec* %2139, %union.rec** %oready_galls5284, align 8
  br label %if.end.5285

if.end.5285:                                      ; preds = %if.end.5262, %if.then.5233
  %2145 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 147), align 1
  %conv5286 = zext i8 %2145 to i32
  store i32 %conv5286, i32* @zz_size, align 4
  %conv5287 = sext i32 %conv5286 to i64
  %cmp5288 = icmp uge i64 %conv5287, 265
  br i1 %cmp5288, label %if.then.5290, label %if.else.5292

if.then.5290:                                     ; preds = %if.end.5285
  %2146 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5291 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %2146)
  br label %if.end.5309

if.else.5292:                                     ; preds = %if.end.5285
  %2147 = load i32, i32* @zz_size, align 4
  %idxprom5293 = sext i32 %2147 to i64
  %arrayidx5294 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5293
  %2148 = load %union.rec*, %union.rec** %arrayidx5294, align 8
  %cmp5295 = icmp eq %union.rec* %2148, null
  br i1 %cmp5295, label %if.then.5297, label %if.else.5299

if.then.5297:                                     ; preds = %if.else.5292
  %2149 = load i32, i32* @zz_size, align 4
  %2150 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5298 = call %union.rec* @GetMemory(i32 %2149, %struct.FILE_POS* %2150)
  store %union.rec* %call5298, %union.rec** @zz_hold, align 8
  br label %if.end.5308

if.else.5299:                                     ; preds = %if.else.5292
  %2151 = load i32, i32* @zz_size, align 4
  %idxprom5300 = sext i32 %2151 to i64
  %arrayidx5301 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5300
  %2152 = load %union.rec*, %union.rec** %arrayidx5301, align 8
  store %union.rec* %2152, %union.rec** @zz_hold, align 8
  store %union.rec* %2152, %union.rec** @zz_hold, align 8
  %2153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15302 = bitcast %union.rec* %2153 to %struct.word_type*
  %olist5303 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15302, i32 0, i32 0
  %arrayidx5304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5303, i32 0, i64 0
  %opred5305 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5304, i32 0, i32 0
  %2154 = load %union.rec*, %union.rec** %opred5305, align 8
  %2155 = load i32, i32* @zz_size, align 4
  %idxprom5306 = sext i32 %2155 to i64
  %arrayidx5307 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5306
  store %union.rec* %2154, %union.rec** %arrayidx5307, align 8
  br label %if.end.5308

if.end.5308:                                      ; preds = %if.else.5299, %if.then.5297
  br label %if.end.5309

if.end.5309:                                      ; preds = %if.end.5308, %if.then.5290
  %2156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15310 = bitcast %union.rec* %2156 to %struct.word_type*
  %ou15311 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15310, i32 0, i32 1
  %os115312 = bitcast %union.FIRST_UNION* %ou15311 to %struct.anon*
  %otype5313 = getelementptr inbounds %struct.anon, %struct.anon* %os115312, i32 0, i32 0
  store i8 -109, i8* %otype5313, align 1
  %2157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15314 = bitcast %union.rec* %2158 to %struct.word_type*
  %olist5315 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15314, i32 0, i32 0
  %arrayidx5316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5315, i32 0, i64 1
  %osucc5317 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5316, i32 0, i32 1
  store %union.rec* %2157, %union.rec** %osucc5317, align 8
  %2159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15318 = bitcast %union.rec* %2159 to %struct.word_type*
  %olist5319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15318, i32 0, i32 0
  %arrayidx5320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5319, i32 0, i64 1
  %opred5321 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5320, i32 0, i32 0
  store %union.rec* %2157, %union.rec** %opred5321, align 8
  %2160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15322 = bitcast %union.rec* %2160 to %struct.word_type*
  %olist5323 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15322, i32 0, i32 0
  %arrayidx5324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5323, i32 0, i64 0
  %osucc5325 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5324, i32 0, i32 1
  store %union.rec* %2157, %union.rec** %osucc5325, align 8
  %2161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15326 = bitcast %union.rec* %2161 to %struct.word_type*
  %olist5327 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15326, i32 0, i32 0
  %arrayidx5328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5327, i32 0, i64 0
  %opred5329 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5328, i32 0, i32 0
  store %union.rec* %2157, %union.rec** %opred5329, align 8
  store %union.rec* %2157, %union.rec** %eg4987, align 8
  %2162 = load i16, i16* %tfnum, align 2
  %2163 = load %union.rec*, %union.rec** %eg4987, align 8
  %os85330 = bitcast %union.rec* %2163 to %struct.ext_gall_type*
  %oeg_fnum5331 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os85330, i32 0, i32 2
  store i16 %2162, i16* %oeg_fnum5331, align 2
  %2164 = load i64, i64* %tfpos, align 8
  %2165 = load %union.rec*, %union.rec** %eg4987, align 8
  %os85332 = bitcast %union.rec* %2165 to %struct.ext_gall_type*
  %oeg_fpos5333 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os85332, i32 0, i32 4
  store i64 %2164, i64* %oeg_fpos5333, align 8
  %2166 = load i32, i32* %tlnum, align 4
  %2167 = load %union.rec*, %union.rec** %eg4987, align 8
  %os85334 = bitcast %union.rec* %2167 to %struct.ext_gall_type*
  %oeg_lnum5335 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os85334, i32 0, i32 3
  store i32 %2166, i32* %oeg_lnum5335, align 4
  %2168 = load %union.rec*, %union.rec** %sym, align 8
  %2169 = load %union.rec*, %union.rec** %eg4987, align 8
  %os85336 = bitcast %union.rec* %2169 to %struct.ext_gall_type*
  %oeg_symbol5337 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os85336, i32 0, i32 6
  store %union.rec* %2168, %union.rec** %oeg_symbol5337, align 8
  %2170 = load i64, i64* %tcont, align 8
  %2171 = load %union.rec*, %union.rec** %eg4987, align 8
  %os85338 = bitcast %union.rec* %2171 to %struct.ext_gall_type*
  %oeg_cont5339 = getelementptr inbounds %struct.ext_gall_type, %struct.ext_gall_type* %os85338, i32 0, i32 5
  store i64 %2170, i64* %oeg_cont5339, align 8
  %2172 = load %union.rec*, %union.rec** %tag4983, align 8
  %os15340 = bitcast %union.rec* %2172 to %struct.word_type*
  %ostring5341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15340, i32 0, i32 4
  %arraydecay5342 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring5341, i32 0, i32 0
  %2173 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5343 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay5342, %struct.FILE_POS* %2173)
  store %union.rec* %call5343, %union.rec** %tag4983, align 8
  %2174 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv5344 = zext i8 %2174 to i32
  store i32 %conv5344, i32* @zz_size, align 4
  %conv5345 = sext i32 %conv5344 to i64
  %cmp5346 = icmp uge i64 %conv5345, 265
  br i1 %cmp5346, label %if.then.5348, label %if.else.5350

if.then.5348:                                     ; preds = %if.end.5309
  %2175 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5349 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %2175)
  br label %if.end.5367

if.else.5350:                                     ; preds = %if.end.5309
  %2176 = load i32, i32* @zz_size, align 4
  %idxprom5351 = sext i32 %2176 to i64
  %arrayidx5352 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5351
  %2177 = load %union.rec*, %union.rec** %arrayidx5352, align 8
  %cmp5353 = icmp eq %union.rec* %2177, null
  br i1 %cmp5353, label %if.then.5355, label %if.else.5357

if.then.5355:                                     ; preds = %if.else.5350
  %2178 = load i32, i32* @zz_size, align 4
  %2179 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5356 = call %union.rec* @GetMemory(i32 %2178, %struct.FILE_POS* %2179)
  store %union.rec* %call5356, %union.rec** @zz_hold, align 8
  br label %if.end.5366

if.else.5357:                                     ; preds = %if.else.5350
  %2180 = load i32, i32* @zz_size, align 4
  %idxprom5358 = sext i32 %2180 to i64
  %arrayidx5359 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5358
  %2181 = load %union.rec*, %union.rec** %arrayidx5359, align 8
  store %union.rec* %2181, %union.rec** @zz_hold, align 8
  store %union.rec* %2181, %union.rec** @zz_hold, align 8
  %2182 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15360 = bitcast %union.rec* %2182 to %struct.word_type*
  %olist5361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15360, i32 0, i32 0
  %arrayidx5362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5361, i32 0, i64 0
  %opred5363 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5362, i32 0, i32 0
  %2183 = load %union.rec*, %union.rec** %opred5363, align 8
  %2184 = load i32, i32* @zz_size, align 4
  %idxprom5364 = sext i32 %2184 to i64
  %arrayidx5365 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5364
  store %union.rec* %2183, %union.rec** %arrayidx5365, align 8
  br label %if.end.5366

if.end.5366:                                      ; preds = %if.else.5357, %if.then.5355
  br label %if.end.5367

if.end.5367:                                      ; preds = %if.end.5366, %if.then.5348
  %2185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15368 = bitcast %union.rec* %2185 to %struct.word_type*
  %ou15369 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15368, i32 0, i32 1
  %os115370 = bitcast %union.FIRST_UNION* %ou15369 to %struct.anon*
  %otype5371 = getelementptr inbounds %struct.anon, %struct.anon* %os115370, i32 0, i32 0
  store i8 0, i8* %otype5371, align 1
  %2186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15372 = bitcast %union.rec* %2187 to %struct.word_type*
  %olist5373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15372, i32 0, i32 0
  %arrayidx5374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5373, i32 0, i64 1
  %osucc5375 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5374, i32 0, i32 1
  store %union.rec* %2186, %union.rec** %osucc5375, align 8
  %2188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15376 = bitcast %union.rec* %2188 to %struct.word_type*
  %olist5377 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15376, i32 0, i32 0
  %arrayidx5378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5377, i32 0, i64 1
  %opred5379 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5378, i32 0, i32 0
  store %union.rec* %2186, %union.rec** %opred5379, align 8
  %2189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15380 = bitcast %union.rec* %2189 to %struct.word_type*
  %olist5381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15380, i32 0, i32 0
  %arrayidx5382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5381, i32 0, i64 0
  %osucc5383 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5382, i32 0, i32 1
  store %union.rec* %2186, %union.rec** %osucc5383, align 8
  %2190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15384 = bitcast %union.rec* %2190 to %struct.word_type*
  %olist5385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15384, i32 0, i32 0
  %arrayidx5386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5385, i32 0, i64 0
  %opred5387 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5386, i32 0, i32 0
  store %union.rec* %2186, %union.rec** %opred5387, align 8
  store %union.rec* %2186, %union.rec** @xx_link, align 8
  %2191 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2191, %union.rec** @zz_res, align 8
  %2192 = load %union.rec*, %union.rec** %eg4987, align 8
  store %union.rec* %2192, %union.rec** @zz_hold, align 8
  %2193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5388 = icmp eq %union.rec* %2193, null
  br i1 %cmp5388, label %cond.true.5390, label %cond.false.5391

cond.true.5390:                                   ; preds = %if.end.5367
  %2194 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5426

cond.false.5391:                                  ; preds = %if.end.5367
  %2195 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5392 = icmp eq %union.rec* %2195, null
  br i1 %cmp5392, label %cond.true.5394, label %cond.false.5395

cond.true.5394:                                   ; preds = %cond.false.5391
  %2196 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5424

cond.false.5395:                                  ; preds = %cond.false.5391
  %2197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15396 = bitcast %union.rec* %2197 to %struct.word_type*
  %olist5397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15396, i32 0, i32 0
  %arrayidx5398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5397, i32 0, i64 0
  %opred5399 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5398, i32 0, i32 0
  %2198 = load %union.rec*, %union.rec** %opred5399, align 8
  store %union.rec* %2198, %union.rec** @zz_tmp, align 8
  %2199 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15400 = bitcast %union.rec* %2199 to %struct.word_type*
  %olist5401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15400, i32 0, i32 0
  %arrayidx5402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5401, i32 0, i64 0
  %opred5403 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5402, i32 0, i32 0
  %2200 = load %union.rec*, %union.rec** %opred5403, align 8
  %2201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15404 = bitcast %union.rec* %2201 to %struct.word_type*
  %olist5405 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15404, i32 0, i32 0
  %arrayidx5406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5405, i32 0, i64 0
  %opred5407 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5406, i32 0, i32 0
  store %union.rec* %2200, %union.rec** %opred5407, align 8
  %2202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2203 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15408 = bitcast %union.rec* %2203 to %struct.word_type*
  %olist5409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15408, i32 0, i32 0
  %arrayidx5410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5409, i32 0, i64 0
  %opred5411 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5410, i32 0, i32 0
  %2204 = load %union.rec*, %union.rec** %opred5411, align 8
  %os15412 = bitcast %union.rec* %2204 to %struct.word_type*
  %olist5413 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15412, i32 0, i32 0
  %arrayidx5414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5413, i32 0, i64 0
  %osucc5415 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5414, i32 0, i32 1
  store %union.rec* %2202, %union.rec** %osucc5415, align 8
  %2205 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2206 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15416 = bitcast %union.rec* %2206 to %struct.word_type*
  %olist5417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15416, i32 0, i32 0
  %arrayidx5418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5417, i32 0, i64 0
  %opred5419 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5418, i32 0, i32 0
  store %union.rec* %2205, %union.rec** %opred5419, align 8
  %2207 = load %union.rec*, %union.rec** @zz_res, align 8
  %2208 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15420 = bitcast %union.rec* %2208 to %struct.word_type*
  %olist5421 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15420, i32 0, i32 0
  %arrayidx5422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5421, i32 0, i64 0
  %osucc5423 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5422, i32 0, i32 1
  store %union.rec* %2207, %union.rec** %osucc5423, align 8
  br label %cond.end.5424

cond.end.5424:                                    ; preds = %cond.false.5395, %cond.true.5394
  %cond5425 = phi %union.rec* [ %2196, %cond.true.5394 ], [ %2207, %cond.false.5395 ]
  br label %cond.end.5426

cond.end.5426:                                    ; preds = %cond.end.5424, %cond.true.5390
  %cond5427 = phi %union.rec* [ %2194, %cond.true.5390 ], [ %cond5425, %cond.end.5424 ]
  %2209 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2209, %union.rec** @zz_res, align 8
  %2210 = load %union.rec*, %union.rec** %tag4983, align 8
  store %union.rec* %2210, %union.rec** @zz_hold, align 8
  %2211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5428 = icmp eq %union.rec* %2211, null
  br i1 %cmp5428, label %cond.true.5430, label %cond.false.5431

cond.true.5430:                                   ; preds = %cond.end.5426
  %2212 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5466

cond.false.5431:                                  ; preds = %cond.end.5426
  %2213 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5432 = icmp eq %union.rec* %2213, null
  br i1 %cmp5432, label %cond.true.5434, label %cond.false.5435

cond.true.5434:                                   ; preds = %cond.false.5431
  %2214 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5464

cond.false.5435:                                  ; preds = %cond.false.5431
  %2215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15436 = bitcast %union.rec* %2215 to %struct.word_type*
  %olist5437 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15436, i32 0, i32 0
  %arrayidx5438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5437, i32 0, i64 1
  %opred5439 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5438, i32 0, i32 0
  %2216 = load %union.rec*, %union.rec** %opred5439, align 8
  store %union.rec* %2216, %union.rec** @zz_tmp, align 8
  %2217 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15440 = bitcast %union.rec* %2217 to %struct.word_type*
  %olist5441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15440, i32 0, i32 0
  %arrayidx5442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5441, i32 0, i64 1
  %opred5443 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5442, i32 0, i32 0
  %2218 = load %union.rec*, %union.rec** %opred5443, align 8
  %2219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15444 = bitcast %union.rec* %2219 to %struct.word_type*
  %olist5445 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15444, i32 0, i32 0
  %arrayidx5446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5445, i32 0, i64 1
  %opred5447 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5446, i32 0, i32 0
  store %union.rec* %2218, %union.rec** %opred5447, align 8
  %2220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2221 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15448 = bitcast %union.rec* %2221 to %struct.word_type*
  %olist5449 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15448, i32 0, i32 0
  %arrayidx5450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5449, i32 0, i64 1
  %opred5451 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5450, i32 0, i32 0
  %2222 = load %union.rec*, %union.rec** %opred5451, align 8
  %os15452 = bitcast %union.rec* %2222 to %struct.word_type*
  %olist5453 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15452, i32 0, i32 0
  %arrayidx5454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5453, i32 0, i64 1
  %osucc5455 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5454, i32 0, i32 1
  store %union.rec* %2220, %union.rec** %osucc5455, align 8
  %2223 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2224 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15456 = bitcast %union.rec* %2224 to %struct.word_type*
  %olist5457 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15456, i32 0, i32 0
  %arrayidx5458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5457, i32 0, i64 1
  %opred5459 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5458, i32 0, i32 0
  store %union.rec* %2223, %union.rec** %opred5459, align 8
  %2225 = load %union.rec*, %union.rec** @zz_res, align 8
  %2226 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15460 = bitcast %union.rec* %2226 to %struct.word_type*
  %olist5461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15460, i32 0, i32 0
  %arrayidx5462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5461, i32 0, i64 1
  %osucc5463 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5462, i32 0, i32 1
  store %union.rec* %2225, %union.rec** %osucc5463, align 8
  br label %cond.end.5464

cond.end.5464:                                    ; preds = %cond.false.5435, %cond.true.5434
  %cond5465 = phi %union.rec* [ %2214, %cond.true.5434 ], [ %2225, %cond.false.5435 ]
  br label %cond.end.5466

cond.end.5466:                                    ; preds = %cond.end.5464, %cond.true.5430
  %cond5467 = phi %union.rec* [ %2212, %cond.true.5430 ], [ %cond5465, %cond.end.5464 ]
  %arraydecay5468 = getelementptr inbounds [512 x i8], [512 x i8]* %newseq4992, i32 0, i32 0
  %2227 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5469 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay5468, %struct.FILE_POS* %2227)
  store %union.rec* %call5469, %union.rec** %seq4985, align 8
  %2228 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv5470 = zext i8 %2228 to i32
  store i32 %conv5470, i32* @zz_size, align 4
  %conv5471 = sext i32 %conv5470 to i64
  %cmp5472 = icmp uge i64 %conv5471, 265
  br i1 %cmp5472, label %if.then.5474, label %if.else.5476

if.then.5474:                                     ; preds = %cond.end.5466
  %2229 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5475 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %2229)
  br label %if.end.5493

if.else.5476:                                     ; preds = %cond.end.5466
  %2230 = load i32, i32* @zz_size, align 4
  %idxprom5477 = sext i32 %2230 to i64
  %arrayidx5478 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5477
  %2231 = load %union.rec*, %union.rec** %arrayidx5478, align 8
  %cmp5479 = icmp eq %union.rec* %2231, null
  br i1 %cmp5479, label %if.then.5481, label %if.else.5483

if.then.5481:                                     ; preds = %if.else.5476
  %2232 = load i32, i32* @zz_size, align 4
  %2233 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5482 = call %union.rec* @GetMemory(i32 %2232, %struct.FILE_POS* %2233)
  store %union.rec* %call5482, %union.rec** @zz_hold, align 8
  br label %if.end.5492

if.else.5483:                                     ; preds = %if.else.5476
  %2234 = load i32, i32* @zz_size, align 4
  %idxprom5484 = sext i32 %2234 to i64
  %arrayidx5485 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5484
  %2235 = load %union.rec*, %union.rec** %arrayidx5485, align 8
  store %union.rec* %2235, %union.rec** @zz_hold, align 8
  store %union.rec* %2235, %union.rec** @zz_hold, align 8
  %2236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15486 = bitcast %union.rec* %2236 to %struct.word_type*
  %olist5487 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15486, i32 0, i32 0
  %arrayidx5488 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5487, i32 0, i64 0
  %opred5489 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5488, i32 0, i32 0
  %2237 = load %union.rec*, %union.rec** %opred5489, align 8
  %2238 = load i32, i32* @zz_size, align 4
  %idxprom5490 = sext i32 %2238 to i64
  %arrayidx5491 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5490
  store %union.rec* %2237, %union.rec** %arrayidx5491, align 8
  br label %if.end.5492

if.end.5492:                                      ; preds = %if.else.5483, %if.then.5481
  br label %if.end.5493

if.end.5493:                                      ; preds = %if.end.5492, %if.then.5474
  %2239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15494 = bitcast %union.rec* %2239 to %struct.word_type*
  %ou15495 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15494, i32 0, i32 1
  %os115496 = bitcast %union.FIRST_UNION* %ou15495 to %struct.anon*
  %otype5497 = getelementptr inbounds %struct.anon, %struct.anon* %os115496, i32 0, i32 0
  store i8 0, i8* %otype5497, align 1
  %2240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15498 = bitcast %union.rec* %2241 to %struct.word_type*
  %olist5499 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15498, i32 0, i32 0
  %arrayidx5500 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5499, i32 0, i64 1
  %osucc5501 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5500, i32 0, i32 1
  store %union.rec* %2240, %union.rec** %osucc5501, align 8
  %2242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15502 = bitcast %union.rec* %2242 to %struct.word_type*
  %olist5503 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15502, i32 0, i32 0
  %arrayidx5504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5503, i32 0, i64 1
  %opred5505 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5504, i32 0, i32 0
  store %union.rec* %2240, %union.rec** %opred5505, align 8
  %2243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15506 = bitcast %union.rec* %2243 to %struct.word_type*
  %olist5507 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15506, i32 0, i32 0
  %arrayidx5508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5507, i32 0, i64 0
  %osucc5509 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5508, i32 0, i32 1
  store %union.rec* %2240, %union.rec** %osucc5509, align 8
  %2244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15510 = bitcast %union.rec* %2244 to %struct.word_type*
  %olist5511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15510, i32 0, i32 0
  %arrayidx5512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5511, i32 0, i64 0
  %opred5513 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5512, i32 0, i32 0
  store %union.rec* %2240, %union.rec** %opred5513, align 8
  store %union.rec* %2240, %union.rec** @xx_link, align 8
  %2245 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2245, %union.rec** @zz_res, align 8
  %2246 = load %union.rec*, %union.rec** %eg4987, align 8
  store %union.rec* %2246, %union.rec** @zz_hold, align 8
  %2247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5514 = icmp eq %union.rec* %2247, null
  br i1 %cmp5514, label %cond.true.5516, label %cond.false.5517

cond.true.5516:                                   ; preds = %if.end.5493
  %2248 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5552

cond.false.5517:                                  ; preds = %if.end.5493
  %2249 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5518 = icmp eq %union.rec* %2249, null
  br i1 %cmp5518, label %cond.true.5520, label %cond.false.5521

cond.true.5520:                                   ; preds = %cond.false.5517
  %2250 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5550

cond.false.5521:                                  ; preds = %cond.false.5517
  %2251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15522 = bitcast %union.rec* %2251 to %struct.word_type*
  %olist5523 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15522, i32 0, i32 0
  %arrayidx5524 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5523, i32 0, i64 0
  %opred5525 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5524, i32 0, i32 0
  %2252 = load %union.rec*, %union.rec** %opred5525, align 8
  store %union.rec* %2252, %union.rec** @zz_tmp, align 8
  %2253 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15526 = bitcast %union.rec* %2253 to %struct.word_type*
  %olist5527 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15526, i32 0, i32 0
  %arrayidx5528 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5527, i32 0, i64 0
  %opred5529 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5528, i32 0, i32 0
  %2254 = load %union.rec*, %union.rec** %opred5529, align 8
  %2255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15530 = bitcast %union.rec* %2255 to %struct.word_type*
  %olist5531 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15530, i32 0, i32 0
  %arrayidx5532 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5531, i32 0, i64 0
  %opred5533 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5532, i32 0, i32 0
  store %union.rec* %2254, %union.rec** %opred5533, align 8
  %2256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2257 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15534 = bitcast %union.rec* %2257 to %struct.word_type*
  %olist5535 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15534, i32 0, i32 0
  %arrayidx5536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5535, i32 0, i64 0
  %opred5537 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5536, i32 0, i32 0
  %2258 = load %union.rec*, %union.rec** %opred5537, align 8
  %os15538 = bitcast %union.rec* %2258 to %struct.word_type*
  %olist5539 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15538, i32 0, i32 0
  %arrayidx5540 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5539, i32 0, i64 0
  %osucc5541 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5540, i32 0, i32 1
  store %union.rec* %2256, %union.rec** %osucc5541, align 8
  %2259 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2260 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15542 = bitcast %union.rec* %2260 to %struct.word_type*
  %olist5543 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15542, i32 0, i32 0
  %arrayidx5544 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5543, i32 0, i64 0
  %opred5545 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5544, i32 0, i32 0
  store %union.rec* %2259, %union.rec** %opred5545, align 8
  %2261 = load %union.rec*, %union.rec** @zz_res, align 8
  %2262 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15546 = bitcast %union.rec* %2262 to %struct.word_type*
  %olist5547 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15546, i32 0, i32 0
  %arrayidx5548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5547, i32 0, i64 0
  %osucc5549 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5548, i32 0, i32 1
  store %union.rec* %2261, %union.rec** %osucc5549, align 8
  br label %cond.end.5550

cond.end.5550:                                    ; preds = %cond.false.5521, %cond.true.5520
  %cond5551 = phi %union.rec* [ %2250, %cond.true.5520 ], [ %2261, %cond.false.5521 ]
  br label %cond.end.5552

cond.end.5552:                                    ; preds = %cond.end.5550, %cond.true.5516
  %cond5553 = phi %union.rec* [ %2248, %cond.true.5516 ], [ %cond5551, %cond.end.5550 ]
  %2263 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2263, %union.rec** @zz_res, align 8
  %2264 = load %union.rec*, %union.rec** %seq4985, align 8
  store %union.rec* %2264, %union.rec** @zz_hold, align 8
  %2265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5554 = icmp eq %union.rec* %2265, null
  br i1 %cmp5554, label %cond.true.5556, label %cond.false.5557

cond.true.5556:                                   ; preds = %cond.end.5552
  %2266 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5592

cond.false.5557:                                  ; preds = %cond.end.5552
  %2267 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5558 = icmp eq %union.rec* %2267, null
  br i1 %cmp5558, label %cond.true.5560, label %cond.false.5561

cond.true.5560:                                   ; preds = %cond.false.5557
  %2268 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5590

cond.false.5561:                                  ; preds = %cond.false.5557
  %2269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15562 = bitcast %union.rec* %2269 to %struct.word_type*
  %olist5563 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15562, i32 0, i32 0
  %arrayidx5564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5563, i32 0, i64 1
  %opred5565 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5564, i32 0, i32 0
  %2270 = load %union.rec*, %union.rec** %opred5565, align 8
  store %union.rec* %2270, %union.rec** @zz_tmp, align 8
  %2271 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15566 = bitcast %union.rec* %2271 to %struct.word_type*
  %olist5567 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15566, i32 0, i32 0
  %arrayidx5568 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5567, i32 0, i64 1
  %opred5569 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5568, i32 0, i32 0
  %2272 = load %union.rec*, %union.rec** %opred5569, align 8
  %2273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15570 = bitcast %union.rec* %2273 to %struct.word_type*
  %olist5571 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15570, i32 0, i32 0
  %arrayidx5572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5571, i32 0, i64 1
  %opred5573 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5572, i32 0, i32 0
  store %union.rec* %2272, %union.rec** %opred5573, align 8
  %2274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2275 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15574 = bitcast %union.rec* %2275 to %struct.word_type*
  %olist5575 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15574, i32 0, i32 0
  %arrayidx5576 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5575, i32 0, i64 1
  %opred5577 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5576, i32 0, i32 0
  %2276 = load %union.rec*, %union.rec** %opred5577, align 8
  %os15578 = bitcast %union.rec* %2276 to %struct.word_type*
  %olist5579 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15578, i32 0, i32 0
  %arrayidx5580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5579, i32 0, i64 1
  %osucc5581 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5580, i32 0, i32 1
  store %union.rec* %2274, %union.rec** %osucc5581, align 8
  %2277 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2278 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15582 = bitcast %union.rec* %2278 to %struct.word_type*
  %olist5583 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15582, i32 0, i32 0
  %arrayidx5584 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5583, i32 0, i64 1
  %opred5585 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5584, i32 0, i32 0
  store %union.rec* %2277, %union.rec** %opred5585, align 8
  %2279 = load %union.rec*, %union.rec** @zz_res, align 8
  %2280 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15586 = bitcast %union.rec* %2280 to %struct.word_type*
  %olist5587 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15586, i32 0, i32 0
  %arrayidx5588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5587, i32 0, i64 1
  %osucc5589 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5588, i32 0, i32 1
  store %union.rec* %2279, %union.rec** %osucc5589, align 8
  br label %cond.end.5590

cond.end.5590:                                    ; preds = %cond.false.5561, %cond.true.5560
  %cond5591 = phi %union.rec* [ %2268, %cond.true.5560 ], [ %2279, %cond.false.5561 ]
  br label %cond.end.5592

cond.end.5592:                                    ; preds = %cond.end.5590, %cond.true.5556
  %cond5593 = phi %union.rec* [ %2266, %cond.true.5556 ], [ %cond5591, %cond.end.5590 ]
  %2281 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv5594 = zext i8 %2281 to i32
  store i32 %conv5594, i32* @zz_size, align 4
  %conv5595 = sext i32 %conv5594 to i64
  %cmp5596 = icmp uge i64 %conv5595, 265
  br i1 %cmp5596, label %if.then.5598, label %if.else.5600

if.then.5598:                                     ; preds = %cond.end.5592
  %2282 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5599 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %2282)
  br label %if.end.5617

if.else.5600:                                     ; preds = %cond.end.5592
  %2283 = load i32, i32* @zz_size, align 4
  %idxprom5601 = sext i32 %2283 to i64
  %arrayidx5602 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5601
  %2284 = load %union.rec*, %union.rec** %arrayidx5602, align 8
  %cmp5603 = icmp eq %union.rec* %2284, null
  br i1 %cmp5603, label %if.then.5605, label %if.else.5607

if.then.5605:                                     ; preds = %if.else.5600
  %2285 = load i32, i32* @zz_size, align 4
  %2286 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5606 = call %union.rec* @GetMemory(i32 %2285, %struct.FILE_POS* %2286)
  store %union.rec* %call5606, %union.rec** @zz_hold, align 8
  br label %if.end.5616

if.else.5607:                                     ; preds = %if.else.5600
  %2287 = load i32, i32* @zz_size, align 4
  %idxprom5608 = sext i32 %2287 to i64
  %arrayidx5609 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5608
  %2288 = load %union.rec*, %union.rec** %arrayidx5609, align 8
  store %union.rec* %2288, %union.rec** @zz_hold, align 8
  store %union.rec* %2288, %union.rec** @zz_hold, align 8
  %2289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15610 = bitcast %union.rec* %2289 to %struct.word_type*
  %olist5611 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15610, i32 0, i32 0
  %arrayidx5612 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5611, i32 0, i64 0
  %opred5613 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5612, i32 0, i32 0
  %2290 = load %union.rec*, %union.rec** %opred5613, align 8
  %2291 = load i32, i32* @zz_size, align 4
  %idxprom5614 = sext i32 %2291 to i64
  %arrayidx5615 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5614
  store %union.rec* %2290, %union.rec** %arrayidx5615, align 8
  br label %if.end.5616

if.end.5616:                                      ; preds = %if.else.5607, %if.then.5605
  br label %if.end.5617

if.end.5617:                                      ; preds = %if.end.5616, %if.then.5598
  %2292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15618 = bitcast %union.rec* %2292 to %struct.word_type*
  %ou15619 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15618, i32 0, i32 1
  %os115620 = bitcast %union.FIRST_UNION* %ou15619 to %struct.anon*
  %otype5621 = getelementptr inbounds %struct.anon, %struct.anon* %os115620, i32 0, i32 0
  store i8 0, i8* %otype5621, align 1
  %2293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15622 = bitcast %union.rec* %2294 to %struct.word_type*
  %olist5623 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15622, i32 0, i32 0
  %arrayidx5624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5623, i32 0, i64 1
  %osucc5625 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5624, i32 0, i32 1
  store %union.rec* %2293, %union.rec** %osucc5625, align 8
  %2295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15626 = bitcast %union.rec* %2295 to %struct.word_type*
  %olist5627 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15626, i32 0, i32 0
  %arrayidx5628 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5627, i32 0, i64 1
  %opred5629 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5628, i32 0, i32 0
  store %union.rec* %2293, %union.rec** %opred5629, align 8
  %2296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15630 = bitcast %union.rec* %2296 to %struct.word_type*
  %olist5631 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15630, i32 0, i32 0
  %arrayidx5632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5631, i32 0, i64 0
  %osucc5633 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5632, i32 0, i32 1
  store %union.rec* %2293, %union.rec** %osucc5633, align 8
  %2297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15634 = bitcast %union.rec* %2297 to %struct.word_type*
  %olist5635 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15634, i32 0, i32 0
  %arrayidx5636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5635, i32 0, i64 0
  %opred5637 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5636, i32 0, i32 0
  store %union.rec* %2293, %union.rec** %opred5637, align 8
  store %union.rec* %2293, %union.rec** @xx_link, align 8
  %2298 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2298, %union.rec** @zz_res, align 8
  %2299 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a5638 = bitcast %union.rec* %2299 to %struct.head_type*
  %oready_galls5639 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a5638, i32 0, i32 7
  %2300 = load %union.rec*, %union.rec** %oready_galls5639, align 8
  store %union.rec* %2300, %union.rec** @zz_hold, align 8
  %2301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5640 = icmp eq %union.rec* %2301, null
  br i1 %cmp5640, label %cond.true.5642, label %cond.false.5643

cond.true.5642:                                   ; preds = %if.end.5617
  %2302 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5678

cond.false.5643:                                  ; preds = %if.end.5617
  %2303 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5644 = icmp eq %union.rec* %2303, null
  br i1 %cmp5644, label %cond.true.5646, label %cond.false.5647

cond.true.5646:                                   ; preds = %cond.false.5643
  %2304 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5676

cond.false.5647:                                  ; preds = %cond.false.5643
  %2305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15648 = bitcast %union.rec* %2305 to %struct.word_type*
  %olist5649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15648, i32 0, i32 0
  %arrayidx5650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5649, i32 0, i64 0
  %opred5651 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5650, i32 0, i32 0
  %2306 = load %union.rec*, %union.rec** %opred5651, align 8
  store %union.rec* %2306, %union.rec** @zz_tmp, align 8
  %2307 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15652 = bitcast %union.rec* %2307 to %struct.word_type*
  %olist5653 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15652, i32 0, i32 0
  %arrayidx5654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5653, i32 0, i64 0
  %opred5655 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5654, i32 0, i32 0
  %2308 = load %union.rec*, %union.rec** %opred5655, align 8
  %2309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15656 = bitcast %union.rec* %2309 to %struct.word_type*
  %olist5657 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15656, i32 0, i32 0
  %arrayidx5658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5657, i32 0, i64 0
  %opred5659 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5658, i32 0, i32 0
  store %union.rec* %2308, %union.rec** %opred5659, align 8
  %2310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2311 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15660 = bitcast %union.rec* %2311 to %struct.word_type*
  %olist5661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15660, i32 0, i32 0
  %arrayidx5662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5661, i32 0, i64 0
  %opred5663 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5662, i32 0, i32 0
  %2312 = load %union.rec*, %union.rec** %opred5663, align 8
  %os15664 = bitcast %union.rec* %2312 to %struct.word_type*
  %olist5665 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15664, i32 0, i32 0
  %arrayidx5666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5665, i32 0, i64 0
  %osucc5667 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5666, i32 0, i32 1
  store %union.rec* %2310, %union.rec** %osucc5667, align 8
  %2313 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2314 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15668 = bitcast %union.rec* %2314 to %struct.word_type*
  %olist5669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15668, i32 0, i32 0
  %arrayidx5670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5669, i32 0, i64 0
  %opred5671 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5670, i32 0, i32 0
  store %union.rec* %2313, %union.rec** %opred5671, align 8
  %2315 = load %union.rec*, %union.rec** @zz_res, align 8
  %2316 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15672 = bitcast %union.rec* %2316 to %struct.word_type*
  %olist5673 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15672, i32 0, i32 0
  %arrayidx5674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5673, i32 0, i64 0
  %osucc5675 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5674, i32 0, i32 1
  store %union.rec* %2315, %union.rec** %osucc5675, align 8
  br label %cond.end.5676

cond.end.5676:                                    ; preds = %cond.false.5647, %cond.true.5646
  %cond5677 = phi %union.rec* [ %2304, %cond.true.5646 ], [ %2315, %cond.false.5647 ]
  br label %cond.end.5678

cond.end.5678:                                    ; preds = %cond.end.5676, %cond.true.5642
  %cond5679 = phi %union.rec* [ %2302, %cond.true.5642 ], [ %cond5677, %cond.end.5676 ]
  %2317 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2317, %union.rec** @zz_res, align 8
  %2318 = load %union.rec*, %union.rec** %eg4987, align 8
  store %union.rec* %2318, %union.rec** @zz_hold, align 8
  %2319 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5680 = icmp eq %union.rec* %2319, null
  br i1 %cmp5680, label %cond.true.5682, label %cond.false.5683

cond.true.5682:                                   ; preds = %cond.end.5678
  %2320 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5718

cond.false.5683:                                  ; preds = %cond.end.5678
  %2321 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5684 = icmp eq %union.rec* %2321, null
  br i1 %cmp5684, label %cond.true.5686, label %cond.false.5687

cond.true.5686:                                   ; preds = %cond.false.5683
  %2322 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5716

cond.false.5687:                                  ; preds = %cond.false.5683
  %2323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15688 = bitcast %union.rec* %2323 to %struct.word_type*
  %olist5689 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15688, i32 0, i32 0
  %arrayidx5690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5689, i32 0, i64 1
  %opred5691 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5690, i32 0, i32 0
  %2324 = load %union.rec*, %union.rec** %opred5691, align 8
  store %union.rec* %2324, %union.rec** @zz_tmp, align 8
  %2325 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15692 = bitcast %union.rec* %2325 to %struct.word_type*
  %olist5693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15692, i32 0, i32 0
  %arrayidx5694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5693, i32 0, i64 1
  %opred5695 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5694, i32 0, i32 0
  %2326 = load %union.rec*, %union.rec** %opred5695, align 8
  %2327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15696 = bitcast %union.rec* %2327 to %struct.word_type*
  %olist5697 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15696, i32 0, i32 0
  %arrayidx5698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5697, i32 0, i64 1
  %opred5699 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5698, i32 0, i32 0
  store %union.rec* %2326, %union.rec** %opred5699, align 8
  %2328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2329 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15700 = bitcast %union.rec* %2329 to %struct.word_type*
  %olist5701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15700, i32 0, i32 0
  %arrayidx5702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5701, i32 0, i64 1
  %opred5703 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5702, i32 0, i32 0
  %2330 = load %union.rec*, %union.rec** %opred5703, align 8
  %os15704 = bitcast %union.rec* %2330 to %struct.word_type*
  %olist5705 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15704, i32 0, i32 0
  %arrayidx5706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5705, i32 0, i64 1
  %osucc5707 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5706, i32 0, i32 1
  store %union.rec* %2328, %union.rec** %osucc5707, align 8
  %2331 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2332 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15708 = bitcast %union.rec* %2332 to %struct.word_type*
  %olist5709 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15708, i32 0, i32 0
  %arrayidx5710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5709, i32 0, i64 1
  %opred5711 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5710, i32 0, i32 0
  store %union.rec* %2331, %union.rec** %opred5711, align 8
  %2333 = load %union.rec*, %union.rec** @zz_res, align 8
  %2334 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15712 = bitcast %union.rec* %2334 to %struct.word_type*
  %olist5713 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15712, i32 0, i32 0
  %arrayidx5714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5713, i32 0, i64 1
  %osucc5715 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5714, i32 0, i32 1
  store %union.rec* %2333, %union.rec** %osucc5715, align 8
  br label %cond.end.5716

cond.end.5716:                                    ; preds = %cond.false.5687, %cond.true.5686
  %cond5717 = phi %union.rec* [ %2322, %cond.true.5686 ], [ %2333, %cond.false.5687 ]
  br label %cond.end.5718

cond.end.5718:                                    ; preds = %cond.end.5716, %cond.true.5682
  %cond5719 = phi %union.rec* [ %2320, %cond.true.5682 ], [ %cond5717, %cond.end.5716 ]
  br label %if.end.5720

if.end.5720:                                      ; preds = %cond.end.5718, %if.end.5226
  br label %for.inc.5721

for.inc.5721:                                     ; preds = %if.end.5720
  %2335 = load %union.rec*, %union.rec** %y, align 8
  %os25722 = bitcast %union.rec* %2335 to %struct.closure_type*
  %oactual5723 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25722, i32 0, i32 5
  %2336 = load %union.rec*, %union.rec** %oactual5723, align 8
  %os25724 = bitcast %union.rec* %2336 to %struct.closure_type*
  %oactual5725 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25724, i32 0, i32 5
  %2337 = load %union.rec*, %union.rec** %oactual5725, align 8
  %call5726 = call %union.rec* @NextExternTarget(%union.rec* %2337, %union.rec** %cnt)
  store %union.rec* %call5726, %union.rec** %sym, align 8
  br label %for.cond.5002

for.end.5727:                                     ; preds = %for.cond.5002
  %2338 = load %union.rec*, %union.rec** %y, align 8
  %os15728 = bitcast %union.rec* %2338 to %struct.word_type*
  %ou25729 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15728, i32 0, i32 2
  %os235730 = bitcast %union.SECOND_UNION* %ou25729 to %struct.anon.2*
  %otrigger_ext5731 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os235730, i32 0, i32 2
  %bf.load5732 = load i16, i16* %otrigger_ext5731, align 2
  %bf.clear5733 = and i16 %bf.load5732, -65
  store i16 %bf.clear5733, i16* %otrigger_ext5731, align 2
  %2339 = load %union.rec*, %union.rec** %hd.addr, align 8
  %os2a5734 = bitcast %union.rec* %2339 to %struct.head_type*
  %oready_galls5735 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a5734, i32 0, i32 7
  %2340 = load %union.rec*, %union.rec** %oready_galls5735, align 8
  %cmp5736 = icmp ne %union.rec* %2340, null
  br i1 %cmp5736, label %if.then.5738, label %if.end.5739

if.then.5738:                                     ; preds = %for.end.5727
  br label %RESUME

if.end.5739:                                      ; preds = %for.end.5727
  br label %if.end.5740

if.end.5740:                                      ; preds = %if.end.5739, %land.lhs.true.4976, %land.lhs.true.4967, %if.else.4959
  br label %if.end.5741

if.end.5741:                                      ; preds = %if.end.5740
  %2341 = load %union.rec*, %union.rec** %y, align 8
  %os15742 = bitcast %union.rec* %2341 to %struct.word_type*
  %ou15743 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15742, i32 0, i32 1
  %os115744 = bitcast %union.FIRST_UNION* %ou15743 to %struct.anon*
  %otype5745 = getelementptr inbounds %struct.anon, %struct.anon* %os115744, i32 0, i32 0
  %2342 = load i8, i8* %otype5745, align 1
  %conv5746 = zext i8 %2342 to i32
  %cmp5747 = icmp eq i32 %conv5746, 121
  br i1 %cmp5747, label %land.lhs.true.5749, label %if.else.6054

land.lhs.true.5749:                               ; preds = %if.end.5741
  %2343 = load %union.rec*, %union.rec** %y, align 8
  %os15750 = bitcast %union.rec* %2343 to %struct.word_type*
  %ou25751 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15750, i32 0, i32 2
  %os235752 = bitcast %union.SECOND_UNION* %ou25751 to %struct.anon.2*
  %onon_blocking5753 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os235752, i32 0, i32 2
  %bf.load5754 = load i16, i16* %onon_blocking5753, align 2
  %bf.clear5755 = and i16 %bf.load5754, 1
  %bf.cast5756 = zext i16 %bf.clear5755 to i32
  %tobool5757 = icmp ne i32 %bf.cast5756, 0
  br i1 %tobool5757, label %if.then.5758, label %if.else.6054

if.then.5758:                                     ; preds = %land.lhs.true.5749
  %2344 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %2344, %union.rec** @xx_hold, align 8
  br label %while.cond.5759

while.cond.5759:                                  ; preds = %cond.end.5876, %if.then.5758
  %2345 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os15760 = bitcast %union.rec* %2345 to %struct.word_type*
  %olist5761 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15760, i32 0, i32 0
  %arrayidx5762 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5761, i32 0, i64 1
  %osucc5763 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5762, i32 0, i32 1
  %2346 = load %union.rec*, %union.rec** %osucc5763, align 8
  %2347 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp5764 = icmp ne %union.rec* %2346, %2347
  br i1 %cmp5764, label %while.body.5766, label %while.end.5886

while.body.5766:                                  ; preds = %while.cond.5759
  %2348 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os15767 = bitcast %union.rec* %2348 to %struct.word_type*
  %olist5768 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15767, i32 0, i32 0
  %arrayidx5769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5768, i32 0, i64 1
  %osucc5770 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5769, i32 0, i32 1
  %2349 = load %union.rec*, %union.rec** %osucc5770, align 8
  store %union.rec* %2349, %union.rec** @xx_link, align 8
  %2350 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2350, %union.rec** @zz_hold, align 8
  %2351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15771 = bitcast %union.rec* %2351 to %struct.word_type*
  %olist5772 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15771, i32 0, i32 0
  %arrayidx5773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5772, i32 0, i64 1
  %osucc5774 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5773, i32 0, i32 1
  %2352 = load %union.rec*, %union.rec** %osucc5774, align 8
  %2353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5775 = icmp eq %union.rec* %2352, %2353
  br i1 %cmp5775, label %cond.true.5777, label %cond.false.5778

cond.true.5777:                                   ; preds = %while.body.5766
  br label %cond.end.5807

cond.false.5778:                                  ; preds = %while.body.5766
  %2354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15779 = bitcast %union.rec* %2354 to %struct.word_type*
  %olist5780 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15779, i32 0, i32 0
  %arrayidx5781 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5780, i32 0, i64 1
  %osucc5782 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5781, i32 0, i32 1
  %2355 = load %union.rec*, %union.rec** %osucc5782, align 8
  store %union.rec* %2355, %union.rec** @zz_res, align 8
  %2356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15783 = bitcast %union.rec* %2356 to %struct.word_type*
  %olist5784 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15783, i32 0, i32 0
  %arrayidx5785 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5784, i32 0, i64 1
  %opred5786 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5785, i32 0, i32 0
  %2357 = load %union.rec*, %union.rec** %opred5786, align 8
  %2358 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15787 = bitcast %union.rec* %2358 to %struct.word_type*
  %olist5788 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15787, i32 0, i32 0
  %arrayidx5789 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5788, i32 0, i64 1
  %opred5790 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5789, i32 0, i32 0
  store %union.rec* %2357, %union.rec** %opred5790, align 8
  %2359 = load %union.rec*, %union.rec** @zz_res, align 8
  %2360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15791 = bitcast %union.rec* %2360 to %struct.word_type*
  %olist5792 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15791, i32 0, i32 0
  %arrayidx5793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5792, i32 0, i64 1
  %opred5794 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5793, i32 0, i32 0
  %2361 = load %union.rec*, %union.rec** %opred5794, align 8
  %os15795 = bitcast %union.rec* %2361 to %struct.word_type*
  %olist5796 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15795, i32 0, i32 0
  %arrayidx5797 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5796, i32 0, i64 1
  %osucc5798 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5797, i32 0, i32 1
  store %union.rec* %2359, %union.rec** %osucc5798, align 8
  %2362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15799 = bitcast %union.rec* %2363 to %struct.word_type*
  %olist5800 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15799, i32 0, i32 0
  %arrayidx5801 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5800, i32 0, i64 1
  %osucc5802 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5801, i32 0, i32 1
  store %union.rec* %2362, %union.rec** %osucc5802, align 8
  %2364 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15803 = bitcast %union.rec* %2364 to %struct.word_type*
  %olist5804 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15803, i32 0, i32 0
  %arrayidx5805 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5804, i32 0, i64 1
  %opred5806 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5805, i32 0, i32 0
  store %union.rec* %2362, %union.rec** %opred5806, align 8
  %2365 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5807

cond.end.5807:                                    ; preds = %cond.false.5778, %cond.true.5777
  %cond5808 = phi %union.rec* [ null, %cond.true.5777 ], [ %2365, %cond.false.5778 ]
  %2366 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2366, %union.rec** @zz_hold, align 8
  %2367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15809 = bitcast %union.rec* %2367 to %struct.word_type*
  %olist5810 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15809, i32 0, i32 0
  %arrayidx5811 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5810, i32 0, i64 0
  %osucc5812 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5811, i32 0, i32 1
  %2368 = load %union.rec*, %union.rec** %osucc5812, align 8
  %2369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5813 = icmp eq %union.rec* %2368, %2369
  br i1 %cmp5813, label %cond.true.5815, label %cond.false.5816

cond.true.5815:                                   ; preds = %cond.end.5807
  br label %cond.end.5845

cond.false.5816:                                  ; preds = %cond.end.5807
  %2370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15817 = bitcast %union.rec* %2370 to %struct.word_type*
  %olist5818 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15817, i32 0, i32 0
  %arrayidx5819 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5818, i32 0, i64 0
  %osucc5820 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5819, i32 0, i32 1
  %2371 = load %union.rec*, %union.rec** %osucc5820, align 8
  store %union.rec* %2371, %union.rec** @zz_res, align 8
  %2372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15821 = bitcast %union.rec* %2372 to %struct.word_type*
  %olist5822 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15821, i32 0, i32 0
  %arrayidx5823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5822, i32 0, i64 0
  %opred5824 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5823, i32 0, i32 0
  %2373 = load %union.rec*, %union.rec** %opred5824, align 8
  %2374 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15825 = bitcast %union.rec* %2374 to %struct.word_type*
  %olist5826 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15825, i32 0, i32 0
  %arrayidx5827 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5826, i32 0, i64 0
  %opred5828 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5827, i32 0, i32 0
  store %union.rec* %2373, %union.rec** %opred5828, align 8
  %2375 = load %union.rec*, %union.rec** @zz_res, align 8
  %2376 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15829 = bitcast %union.rec* %2376 to %struct.word_type*
  %olist5830 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15829, i32 0, i32 0
  %arrayidx5831 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5830, i32 0, i64 0
  %opred5832 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5831, i32 0, i32 0
  %2377 = load %union.rec*, %union.rec** %opred5832, align 8
  %os15833 = bitcast %union.rec* %2377 to %struct.word_type*
  %olist5834 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15833, i32 0, i32 0
  %arrayidx5835 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5834, i32 0, i64 0
  %osucc5836 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5835, i32 0, i32 1
  store %union.rec* %2375, %union.rec** %osucc5836, align 8
  %2378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15837 = bitcast %union.rec* %2379 to %struct.word_type*
  %olist5838 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15837, i32 0, i32 0
  %arrayidx5839 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5838, i32 0, i64 0
  %osucc5840 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5839, i32 0, i32 1
  store %union.rec* %2378, %union.rec** %osucc5840, align 8
  %2380 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15841 = bitcast %union.rec* %2380 to %struct.word_type*
  %olist5842 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15841, i32 0, i32 0
  %arrayidx5843 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5842, i32 0, i64 0
  %opred5844 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5843, i32 0, i32 0
  store %union.rec* %2378, %union.rec** %opred5844, align 8
  %2381 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5845

cond.end.5845:                                    ; preds = %cond.false.5816, %cond.true.5815
  %cond5846 = phi %union.rec* [ null, %cond.true.5815 ], [ %2381, %cond.false.5816 ]
  %2382 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2382, %union.rec** @zz_hold, align 8
  %2383 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2383, %union.rec** @zz_hold, align 8
  %2384 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15847 = bitcast %union.rec* %2384 to %struct.word_type*
  %ou15848 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15847, i32 0, i32 1
  %os115849 = bitcast %union.FIRST_UNION* %ou15848 to %struct.anon*
  %otype5850 = getelementptr inbounds %struct.anon, %struct.anon* %os115849, i32 0, i32 0
  %2385 = load i8, i8* %otype5850, align 1
  %conv5851 = zext i8 %2385 to i32
  %cmp5852 = icmp eq i32 %conv5851, 11
  br i1 %cmp5852, label %cond.true.5862, label %lor.lhs.false.5854

lor.lhs.false.5854:                               ; preds = %cond.end.5845
  %2386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15855 = bitcast %union.rec* %2386 to %struct.word_type*
  %ou15856 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15855, i32 0, i32 1
  %os115857 = bitcast %union.FIRST_UNION* %ou15856 to %struct.anon*
  %otype5858 = getelementptr inbounds %struct.anon, %struct.anon* %os115857, i32 0, i32 0
  %2387 = load i8, i8* %otype5858, align 1
  %conv5859 = zext i8 %2387 to i32
  %cmp5860 = icmp eq i32 %conv5859, 12
  br i1 %cmp5860, label %cond.true.5862, label %cond.false.5868

cond.true.5862:                                   ; preds = %lor.lhs.false.5854, %cond.end.5845
  %2388 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15863 = bitcast %union.rec* %2388 to %struct.word_type*
  %ou15864 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15863, i32 0, i32 1
  %os115865 = bitcast %union.FIRST_UNION* %ou15864 to %struct.anon*
  %orec_size5866 = getelementptr inbounds %struct.anon, %struct.anon* %os115865, i32 0, i32 1
  %2389 = load i8, i8* %orec_size5866, align 1
  %conv5867 = zext i8 %2389 to i32
  br label %cond.end.5876

cond.false.5868:                                  ; preds = %lor.lhs.false.5854
  %2390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15869 = bitcast %union.rec* %2390 to %struct.word_type*
  %ou15870 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15869, i32 0, i32 1
  %os115871 = bitcast %union.FIRST_UNION* %ou15870 to %struct.anon*
  %otype5872 = getelementptr inbounds %struct.anon, %struct.anon* %os115871, i32 0, i32 0
  %2391 = load i8, i8* %otype5872, align 1
  %idxprom5873 = zext i8 %2391 to i64
  %arrayidx5874 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom5873
  %2392 = load i8, i8* %arrayidx5874, align 1
  %conv5875 = zext i8 %2392 to i32
  br label %cond.end.5876

cond.end.5876:                                    ; preds = %cond.false.5868, %cond.true.5862
  %cond5877 = phi i32 [ %conv5867, %cond.true.5862 ], [ %conv5875, %cond.false.5868 ]
  store i32 %cond5877, i32* @zz_size, align 4
  %2393 = load i32, i32* @zz_size, align 4
  %idxprom5878 = sext i32 %2393 to i64
  %arrayidx5879 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5878
  %2394 = load %union.rec*, %union.rec** %arrayidx5879, align 8
  %2395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15880 = bitcast %union.rec* %2395 to %struct.word_type*
  %olist5881 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15880, i32 0, i32 0
  %arrayidx5882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5881, i32 0, i64 0
  %opred5883 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5882, i32 0, i32 0
  store %union.rec* %2394, %union.rec** %opred5883, align 8
  %2396 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2397 = load i32, i32* @zz_size, align 4
  %idxprom5884 = sext i32 %2397 to i64
  %arrayidx5885 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5884
  store %union.rec* %2396, %union.rec** %arrayidx5885, align 8
  br label %while.cond.5759

while.end.5886:                                   ; preds = %while.cond.5759
  br label %while.cond.5887

while.cond.5887:                                  ; preds = %cond.end.6004, %while.end.5886
  %2398 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os15888 = bitcast %union.rec* %2398 to %struct.word_type*
  %olist5889 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15888, i32 0, i32 0
  %arrayidx5890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5889, i32 0, i64 0
  %osucc5891 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5890, i32 0, i32 1
  %2399 = load %union.rec*, %union.rec** %osucc5891, align 8
  %2400 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp5892 = icmp ne %union.rec* %2399, %2400
  br i1 %cmp5892, label %while.body.5894, label %while.end.6014

while.body.5894:                                  ; preds = %while.cond.5887
  %2401 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os15895 = bitcast %union.rec* %2401 to %struct.word_type*
  %olist5896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15895, i32 0, i32 0
  %arrayidx5897 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5896, i32 0, i64 0
  %osucc5898 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5897, i32 0, i32 1
  %2402 = load %union.rec*, %union.rec** %osucc5898, align 8
  store %union.rec* %2402, %union.rec** @xx_link, align 8
  %2403 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2403, %union.rec** @zz_hold, align 8
  %2404 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15899 = bitcast %union.rec* %2404 to %struct.word_type*
  %olist5900 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15899, i32 0, i32 0
  %arrayidx5901 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5900, i32 0, i64 1
  %osucc5902 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5901, i32 0, i32 1
  %2405 = load %union.rec*, %union.rec** %osucc5902, align 8
  %2406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5903 = icmp eq %union.rec* %2405, %2406
  br i1 %cmp5903, label %cond.true.5905, label %cond.false.5906

cond.true.5905:                                   ; preds = %while.body.5894
  br label %cond.end.5935

cond.false.5906:                                  ; preds = %while.body.5894
  %2407 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15907 = bitcast %union.rec* %2407 to %struct.word_type*
  %olist5908 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15907, i32 0, i32 0
  %arrayidx5909 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5908, i32 0, i64 1
  %osucc5910 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5909, i32 0, i32 1
  %2408 = load %union.rec*, %union.rec** %osucc5910, align 8
  store %union.rec* %2408, %union.rec** @zz_res, align 8
  %2409 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15911 = bitcast %union.rec* %2409 to %struct.word_type*
  %olist5912 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15911, i32 0, i32 0
  %arrayidx5913 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5912, i32 0, i64 1
  %opred5914 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5913, i32 0, i32 0
  %2410 = load %union.rec*, %union.rec** %opred5914, align 8
  %2411 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15915 = bitcast %union.rec* %2411 to %struct.word_type*
  %olist5916 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15915, i32 0, i32 0
  %arrayidx5917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5916, i32 0, i64 1
  %opred5918 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5917, i32 0, i32 0
  store %union.rec* %2410, %union.rec** %opred5918, align 8
  %2412 = load %union.rec*, %union.rec** @zz_res, align 8
  %2413 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15919 = bitcast %union.rec* %2413 to %struct.word_type*
  %olist5920 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15919, i32 0, i32 0
  %arrayidx5921 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5920, i32 0, i64 1
  %opred5922 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5921, i32 0, i32 0
  %2414 = load %union.rec*, %union.rec** %opred5922, align 8
  %os15923 = bitcast %union.rec* %2414 to %struct.word_type*
  %olist5924 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15923, i32 0, i32 0
  %arrayidx5925 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5924, i32 0, i64 1
  %osucc5926 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5925, i32 0, i32 1
  store %union.rec* %2412, %union.rec** %osucc5926, align 8
  %2415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15927 = bitcast %union.rec* %2416 to %struct.word_type*
  %olist5928 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15927, i32 0, i32 0
  %arrayidx5929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5928, i32 0, i64 1
  %osucc5930 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5929, i32 0, i32 1
  store %union.rec* %2415, %union.rec** %osucc5930, align 8
  %2417 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15931 = bitcast %union.rec* %2417 to %struct.word_type*
  %olist5932 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15931, i32 0, i32 0
  %arrayidx5933 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5932, i32 0, i64 1
  %opred5934 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5933, i32 0, i32 0
  store %union.rec* %2415, %union.rec** %opred5934, align 8
  %2418 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5935

cond.end.5935:                                    ; preds = %cond.false.5906, %cond.true.5905
  %cond5936 = phi %union.rec* [ null, %cond.true.5905 ], [ %2418, %cond.false.5906 ]
  %2419 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2419, %union.rec** @zz_hold, align 8
  %2420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15937 = bitcast %union.rec* %2420 to %struct.word_type*
  %olist5938 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15937, i32 0, i32 0
  %arrayidx5939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5938, i32 0, i64 0
  %osucc5940 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5939, i32 0, i32 1
  %2421 = load %union.rec*, %union.rec** %osucc5940, align 8
  %2422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5941 = icmp eq %union.rec* %2421, %2422
  br i1 %cmp5941, label %cond.true.5943, label %cond.false.5944

cond.true.5943:                                   ; preds = %cond.end.5935
  br label %cond.end.5973

cond.false.5944:                                  ; preds = %cond.end.5935
  %2423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15945 = bitcast %union.rec* %2423 to %struct.word_type*
  %olist5946 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15945, i32 0, i32 0
  %arrayidx5947 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5946, i32 0, i64 0
  %osucc5948 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5947, i32 0, i32 1
  %2424 = load %union.rec*, %union.rec** %osucc5948, align 8
  store %union.rec* %2424, %union.rec** @zz_res, align 8
  %2425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15949 = bitcast %union.rec* %2425 to %struct.word_type*
  %olist5950 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15949, i32 0, i32 0
  %arrayidx5951 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5950, i32 0, i64 0
  %opred5952 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5951, i32 0, i32 0
  %2426 = load %union.rec*, %union.rec** %opred5952, align 8
  %2427 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15953 = bitcast %union.rec* %2427 to %struct.word_type*
  %olist5954 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15953, i32 0, i32 0
  %arrayidx5955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5954, i32 0, i64 0
  %opred5956 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5955, i32 0, i32 0
  store %union.rec* %2426, %union.rec** %opred5956, align 8
  %2428 = load %union.rec*, %union.rec** @zz_res, align 8
  %2429 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15957 = bitcast %union.rec* %2429 to %struct.word_type*
  %olist5958 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15957, i32 0, i32 0
  %arrayidx5959 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5958, i32 0, i64 0
  %opred5960 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5959, i32 0, i32 0
  %2430 = load %union.rec*, %union.rec** %opred5960, align 8
  %os15961 = bitcast %union.rec* %2430 to %struct.word_type*
  %olist5962 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15961, i32 0, i32 0
  %arrayidx5963 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5962, i32 0, i64 0
  %osucc5964 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5963, i32 0, i32 1
  store %union.rec* %2428, %union.rec** %osucc5964, align 8
  %2431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2432 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15965 = bitcast %union.rec* %2432 to %struct.word_type*
  %olist5966 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15965, i32 0, i32 0
  %arrayidx5967 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5966, i32 0, i64 0
  %osucc5968 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5967, i32 0, i32 1
  store %union.rec* %2431, %union.rec** %osucc5968, align 8
  %2433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15969 = bitcast %union.rec* %2433 to %struct.word_type*
  %olist5970 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15969, i32 0, i32 0
  %arrayidx5971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5970, i32 0, i64 0
  %opred5972 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5971, i32 0, i32 0
  store %union.rec* %2431, %union.rec** %opred5972, align 8
  %2434 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5973

cond.end.5973:                                    ; preds = %cond.false.5944, %cond.true.5943
  %cond5974 = phi %union.rec* [ null, %cond.true.5943 ], [ %2434, %cond.false.5944 ]
  %2435 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2435, %union.rec** @zz_hold, align 8
  %2436 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2436, %union.rec** @zz_hold, align 8
  %2437 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15975 = bitcast %union.rec* %2437 to %struct.word_type*
  %ou15976 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15975, i32 0, i32 1
  %os115977 = bitcast %union.FIRST_UNION* %ou15976 to %struct.anon*
  %otype5978 = getelementptr inbounds %struct.anon, %struct.anon* %os115977, i32 0, i32 0
  %2438 = load i8, i8* %otype5978, align 1
  %conv5979 = zext i8 %2438 to i32
  %cmp5980 = icmp eq i32 %conv5979, 11
  br i1 %cmp5980, label %cond.true.5990, label %lor.lhs.false.5982

lor.lhs.false.5982:                               ; preds = %cond.end.5973
  %2439 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15983 = bitcast %union.rec* %2439 to %struct.word_type*
  %ou15984 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15983, i32 0, i32 1
  %os115985 = bitcast %union.FIRST_UNION* %ou15984 to %struct.anon*
  %otype5986 = getelementptr inbounds %struct.anon, %struct.anon* %os115985, i32 0, i32 0
  %2440 = load i8, i8* %otype5986, align 1
  %conv5987 = zext i8 %2440 to i32
  %cmp5988 = icmp eq i32 %conv5987, 12
  br i1 %cmp5988, label %cond.true.5990, label %cond.false.5996

cond.true.5990:                                   ; preds = %lor.lhs.false.5982, %cond.end.5973
  %2441 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15991 = bitcast %union.rec* %2441 to %struct.word_type*
  %ou15992 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15991, i32 0, i32 1
  %os115993 = bitcast %union.FIRST_UNION* %ou15992 to %struct.anon*
  %orec_size5994 = getelementptr inbounds %struct.anon, %struct.anon* %os115993, i32 0, i32 1
  %2442 = load i8, i8* %orec_size5994, align 1
  %conv5995 = zext i8 %2442 to i32
  br label %cond.end.6004

cond.false.5996:                                  ; preds = %lor.lhs.false.5982
  %2443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15997 = bitcast %union.rec* %2443 to %struct.word_type*
  %ou15998 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15997, i32 0, i32 1
  %os115999 = bitcast %union.FIRST_UNION* %ou15998 to %struct.anon*
  %otype6000 = getelementptr inbounds %struct.anon, %struct.anon* %os115999, i32 0, i32 0
  %2444 = load i8, i8* %otype6000, align 1
  %idxprom6001 = zext i8 %2444 to i64
  %arrayidx6002 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6001
  %2445 = load i8, i8* %arrayidx6002, align 1
  %conv6003 = zext i8 %2445 to i32
  br label %cond.end.6004

cond.end.6004:                                    ; preds = %cond.false.5996, %cond.true.5990
  %cond6005 = phi i32 [ %conv5995, %cond.true.5990 ], [ %conv6003, %cond.false.5996 ]
  store i32 %cond6005, i32* @zz_size, align 4
  %2446 = load i32, i32* @zz_size, align 4
  %idxprom6006 = sext i32 %2446 to i64
  %arrayidx6007 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6006
  %2447 = load %union.rec*, %union.rec** %arrayidx6007, align 8
  %2448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16008 = bitcast %union.rec* %2448 to %struct.word_type*
  %olist6009 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16008, i32 0, i32 0
  %arrayidx6010 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6009, i32 0, i64 0
  %opred6011 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6010, i32 0, i32 0
  store %union.rec* %2447, %union.rec** %opred6011, align 8
  %2449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2450 = load i32, i32* @zz_size, align 4
  %idxprom6012 = sext i32 %2450 to i64
  %arrayidx6013 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6012
  store %union.rec* %2449, %union.rec** %arrayidx6013, align 8
  br label %while.cond.5887

while.end.6014:                                   ; preds = %while.cond.5887
  %2451 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %2451, %union.rec** @zz_hold, align 8
  %2452 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2452, %union.rec** @zz_hold, align 8
  %2453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16015 = bitcast %union.rec* %2453 to %struct.word_type*
  %ou16016 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16015, i32 0, i32 1
  %os116017 = bitcast %union.FIRST_UNION* %ou16016 to %struct.anon*
  %otype6018 = getelementptr inbounds %struct.anon, %struct.anon* %os116017, i32 0, i32 0
  %2454 = load i8, i8* %otype6018, align 1
  %conv6019 = zext i8 %2454 to i32
  %cmp6020 = icmp eq i32 %conv6019, 11
  br i1 %cmp6020, label %cond.true.6030, label %lor.lhs.false.6022

lor.lhs.false.6022:                               ; preds = %while.end.6014
  %2455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16023 = bitcast %union.rec* %2455 to %struct.word_type*
  %ou16024 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16023, i32 0, i32 1
  %os116025 = bitcast %union.FIRST_UNION* %ou16024 to %struct.anon*
  %otype6026 = getelementptr inbounds %struct.anon, %struct.anon* %os116025, i32 0, i32 0
  %2456 = load i8, i8* %otype6026, align 1
  %conv6027 = zext i8 %2456 to i32
  %cmp6028 = icmp eq i32 %conv6027, 12
  br i1 %cmp6028, label %cond.true.6030, label %cond.false.6036

cond.true.6030:                                   ; preds = %lor.lhs.false.6022, %while.end.6014
  %2457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16031 = bitcast %union.rec* %2457 to %struct.word_type*
  %ou16032 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16031, i32 0, i32 1
  %os116033 = bitcast %union.FIRST_UNION* %ou16032 to %struct.anon*
  %orec_size6034 = getelementptr inbounds %struct.anon, %struct.anon* %os116033, i32 0, i32 1
  %2458 = load i8, i8* %orec_size6034, align 1
  %conv6035 = zext i8 %2458 to i32
  br label %cond.end.6044

cond.false.6036:                                  ; preds = %lor.lhs.false.6022
  %2459 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16037 = bitcast %union.rec* %2459 to %struct.word_type*
  %ou16038 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16037, i32 0, i32 1
  %os116039 = bitcast %union.FIRST_UNION* %ou16038 to %struct.anon*
  %otype6040 = getelementptr inbounds %struct.anon, %struct.anon* %os116039, i32 0, i32 0
  %2460 = load i8, i8* %otype6040, align 1
  %idxprom6041 = zext i8 %2460 to i64
  %arrayidx6042 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6041
  %2461 = load i8, i8* %arrayidx6042, align 1
  %conv6043 = zext i8 %2461 to i32
  br label %cond.end.6044

cond.end.6044:                                    ; preds = %cond.false.6036, %cond.true.6030
  %cond6045 = phi i32 [ %conv6035, %cond.true.6030 ], [ %conv6043, %cond.false.6036 ]
  store i32 %cond6045, i32* @zz_size, align 4
  %2462 = load i32, i32* @zz_size, align 4
  %idxprom6046 = sext i32 %2462 to i64
  %arrayidx6047 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6046
  %2463 = load %union.rec*, %union.rec** %arrayidx6047, align 8
  %2464 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16048 = bitcast %union.rec* %2464 to %struct.word_type*
  %olist6049 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16048, i32 0, i32 0
  %arrayidx6050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6049, i32 0, i64 0
  %opred6051 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6050, i32 0, i32 0
  store %union.rec* %2463, %union.rec** %opred6051, align 8
  %2465 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2466 = load i32, i32* @zz_size, align 4
  %idxprom6052 = sext i32 %2466 to i64
  %arrayidx6053 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6052
  store %union.rec* %2465, %union.rec** %arrayidx6053, align 8
  br label %RESUME

if.else.6054:                                     ; preds = %land.lhs.true.5749, %if.end.5741
  %2467 = load %union.rec*, %union.rec** %y, align 8
  %os16055 = bitcast %union.rec* %2467 to %struct.word_type*
  %ou16056 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16055, i32 0, i32 1
  %os116057 = bitcast %union.FIRST_UNION* %ou16056 to %struct.anon*
  %otype6058 = getelementptr inbounds %struct.anon, %struct.anon* %os116057, i32 0, i32 0
  %2468 = load i8, i8* %otype6058, align 1
  %conv6059 = zext i8 %2468 to i32
  %cmp6060 = icmp eq i32 %conv6059, 122
  br i1 %cmp6060, label %land.lhs.true.6062, label %if.end.6407

land.lhs.true.6062:                               ; preds = %if.else.6054
  %2469 = load %union.rec*, %union.rec** %y, align 8
  %os16063 = bitcast %union.rec* %2469 to %struct.word_type*
  %ou26064 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16063, i32 0, i32 2
  %os236065 = bitcast %union.SECOND_UNION* %ou26064 to %struct.anon.2*
  %onon_blocking6066 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os236065, i32 0, i32 2
  %bf.load6067 = load i16, i16* %onon_blocking6066, align 2
  %bf.clear6068 = and i16 %bf.load6067, 1
  %bf.cast6069 = zext i16 %bf.clear6068 to i32
  %tobool6070 = icmp ne i32 %bf.cast6069, 0
  br i1 %tobool6070, label %if.then.6071, label %if.end.6407

if.then.6071:                                     ; preds = %land.lhs.true.6062
  %2470 = load %union.rec*, %union.rec** %y, align 8
  %os16072 = bitcast %union.rec* %2470 to %struct.word_type*
  %olist6073 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16072, i32 0, i32 0
  %arrayidx6074 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6073, i32 0, i64 0
  %osucc6075 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6074, i32 0, i32 1
  %2471 = load %union.rec*, %union.rec** %osucc6075, align 8
  %2472 = load %union.rec*, %union.rec** %y, align 8
  %cmp6076 = icmp eq %union.rec* %2471, %2472
  br i1 %cmp6076, label %if.then.6078, label %if.else.6374

if.then.6078:                                     ; preds = %if.then.6071
  %2473 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %2473, %union.rec** @xx_hold, align 8
  br label %while.cond.6079

while.cond.6079:                                  ; preds = %cond.end.6196, %if.then.6078
  %2474 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os16080 = bitcast %union.rec* %2474 to %struct.word_type*
  %olist6081 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16080, i32 0, i32 0
  %arrayidx6082 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6081, i32 0, i64 1
  %osucc6083 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6082, i32 0, i32 1
  %2475 = load %union.rec*, %union.rec** %osucc6083, align 8
  %2476 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp6084 = icmp ne %union.rec* %2475, %2476
  br i1 %cmp6084, label %while.body.6086, label %while.end.6206

while.body.6086:                                  ; preds = %while.cond.6079
  %2477 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os16087 = bitcast %union.rec* %2477 to %struct.word_type*
  %olist6088 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16087, i32 0, i32 0
  %arrayidx6089 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6088, i32 0, i64 1
  %osucc6090 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6089, i32 0, i32 1
  %2478 = load %union.rec*, %union.rec** %osucc6090, align 8
  store %union.rec* %2478, %union.rec** @xx_link, align 8
  %2479 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2479, %union.rec** @zz_hold, align 8
  %2480 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16091 = bitcast %union.rec* %2480 to %struct.word_type*
  %olist6092 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16091, i32 0, i32 0
  %arrayidx6093 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6092, i32 0, i64 1
  %osucc6094 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6093, i32 0, i32 1
  %2481 = load %union.rec*, %union.rec** %osucc6094, align 8
  %2482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6095 = icmp eq %union.rec* %2481, %2482
  br i1 %cmp6095, label %cond.true.6097, label %cond.false.6098

cond.true.6097:                                   ; preds = %while.body.6086
  br label %cond.end.6127

cond.false.6098:                                  ; preds = %while.body.6086
  %2483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16099 = bitcast %union.rec* %2483 to %struct.word_type*
  %olist6100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16099, i32 0, i32 0
  %arrayidx6101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6100, i32 0, i64 1
  %osucc6102 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6101, i32 0, i32 1
  %2484 = load %union.rec*, %union.rec** %osucc6102, align 8
  store %union.rec* %2484, %union.rec** @zz_res, align 8
  %2485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16103 = bitcast %union.rec* %2485 to %struct.word_type*
  %olist6104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16103, i32 0, i32 0
  %arrayidx6105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6104, i32 0, i64 1
  %opred6106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6105, i32 0, i32 0
  %2486 = load %union.rec*, %union.rec** %opred6106, align 8
  %2487 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16107 = bitcast %union.rec* %2487 to %struct.word_type*
  %olist6108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16107, i32 0, i32 0
  %arrayidx6109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6108, i32 0, i64 1
  %opred6110 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6109, i32 0, i32 0
  store %union.rec* %2486, %union.rec** %opred6110, align 8
  %2488 = load %union.rec*, %union.rec** @zz_res, align 8
  %2489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16111 = bitcast %union.rec* %2489 to %struct.word_type*
  %olist6112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16111, i32 0, i32 0
  %arrayidx6113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6112, i32 0, i64 1
  %opred6114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6113, i32 0, i32 0
  %2490 = load %union.rec*, %union.rec** %opred6114, align 8
  %os16115 = bitcast %union.rec* %2490 to %struct.word_type*
  %olist6116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16115, i32 0, i32 0
  %arrayidx6117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6116, i32 0, i64 1
  %osucc6118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6117, i32 0, i32 1
  store %union.rec* %2488, %union.rec** %osucc6118, align 8
  %2491 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2492 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16119 = bitcast %union.rec* %2492 to %struct.word_type*
  %olist6120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16119, i32 0, i32 0
  %arrayidx6121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6120, i32 0, i64 1
  %osucc6122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6121, i32 0, i32 1
  store %union.rec* %2491, %union.rec** %osucc6122, align 8
  %2493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16123 = bitcast %union.rec* %2493 to %struct.word_type*
  %olist6124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16123, i32 0, i32 0
  %arrayidx6125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6124, i32 0, i64 1
  %opred6126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6125, i32 0, i32 0
  store %union.rec* %2491, %union.rec** %opred6126, align 8
  %2494 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6127

cond.end.6127:                                    ; preds = %cond.false.6098, %cond.true.6097
  %cond6128 = phi %union.rec* [ null, %cond.true.6097 ], [ %2494, %cond.false.6098 ]
  %2495 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2495, %union.rec** @zz_hold, align 8
  %2496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16129 = bitcast %union.rec* %2496 to %struct.word_type*
  %olist6130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16129, i32 0, i32 0
  %arrayidx6131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6130, i32 0, i64 0
  %osucc6132 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6131, i32 0, i32 1
  %2497 = load %union.rec*, %union.rec** %osucc6132, align 8
  %2498 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6133 = icmp eq %union.rec* %2497, %2498
  br i1 %cmp6133, label %cond.true.6135, label %cond.false.6136

cond.true.6135:                                   ; preds = %cond.end.6127
  br label %cond.end.6165

cond.false.6136:                                  ; preds = %cond.end.6127
  %2499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16137 = bitcast %union.rec* %2499 to %struct.word_type*
  %olist6138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16137, i32 0, i32 0
  %arrayidx6139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6138, i32 0, i64 0
  %osucc6140 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6139, i32 0, i32 1
  %2500 = load %union.rec*, %union.rec** %osucc6140, align 8
  store %union.rec* %2500, %union.rec** @zz_res, align 8
  %2501 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16141 = bitcast %union.rec* %2501 to %struct.word_type*
  %olist6142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16141, i32 0, i32 0
  %arrayidx6143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6142, i32 0, i64 0
  %opred6144 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6143, i32 0, i32 0
  %2502 = load %union.rec*, %union.rec** %opred6144, align 8
  %2503 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16145 = bitcast %union.rec* %2503 to %struct.word_type*
  %olist6146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16145, i32 0, i32 0
  %arrayidx6147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6146, i32 0, i64 0
  %opred6148 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6147, i32 0, i32 0
  store %union.rec* %2502, %union.rec** %opred6148, align 8
  %2504 = load %union.rec*, %union.rec** @zz_res, align 8
  %2505 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16149 = bitcast %union.rec* %2505 to %struct.word_type*
  %olist6150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16149, i32 0, i32 0
  %arrayidx6151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6150, i32 0, i64 0
  %opred6152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6151, i32 0, i32 0
  %2506 = load %union.rec*, %union.rec** %opred6152, align 8
  %os16153 = bitcast %union.rec* %2506 to %struct.word_type*
  %olist6154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16153, i32 0, i32 0
  %arrayidx6155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6154, i32 0, i64 0
  %osucc6156 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6155, i32 0, i32 1
  store %union.rec* %2504, %union.rec** %osucc6156, align 8
  %2507 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16157 = bitcast %union.rec* %2508 to %struct.word_type*
  %olist6158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16157, i32 0, i32 0
  %arrayidx6159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6158, i32 0, i64 0
  %osucc6160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6159, i32 0, i32 1
  store %union.rec* %2507, %union.rec** %osucc6160, align 8
  %2509 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16161 = bitcast %union.rec* %2509 to %struct.word_type*
  %olist6162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16161, i32 0, i32 0
  %arrayidx6163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6162, i32 0, i64 0
  %opred6164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6163, i32 0, i32 0
  store %union.rec* %2507, %union.rec** %opred6164, align 8
  %2510 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6165

cond.end.6165:                                    ; preds = %cond.false.6136, %cond.true.6135
  %cond6166 = phi %union.rec* [ null, %cond.true.6135 ], [ %2510, %cond.false.6136 ]
  %2511 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2511, %union.rec** @zz_hold, align 8
  %2512 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2512, %union.rec** @zz_hold, align 8
  %2513 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16167 = bitcast %union.rec* %2513 to %struct.word_type*
  %ou16168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16167, i32 0, i32 1
  %os116169 = bitcast %union.FIRST_UNION* %ou16168 to %struct.anon*
  %otype6170 = getelementptr inbounds %struct.anon, %struct.anon* %os116169, i32 0, i32 0
  %2514 = load i8, i8* %otype6170, align 1
  %conv6171 = zext i8 %2514 to i32
  %cmp6172 = icmp eq i32 %conv6171, 11
  br i1 %cmp6172, label %cond.true.6182, label %lor.lhs.false.6174

lor.lhs.false.6174:                               ; preds = %cond.end.6165
  %2515 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16175 = bitcast %union.rec* %2515 to %struct.word_type*
  %ou16176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16175, i32 0, i32 1
  %os116177 = bitcast %union.FIRST_UNION* %ou16176 to %struct.anon*
  %otype6178 = getelementptr inbounds %struct.anon, %struct.anon* %os116177, i32 0, i32 0
  %2516 = load i8, i8* %otype6178, align 1
  %conv6179 = zext i8 %2516 to i32
  %cmp6180 = icmp eq i32 %conv6179, 12
  br i1 %cmp6180, label %cond.true.6182, label %cond.false.6188

cond.true.6182:                                   ; preds = %lor.lhs.false.6174, %cond.end.6165
  %2517 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16183 = bitcast %union.rec* %2517 to %struct.word_type*
  %ou16184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16183, i32 0, i32 1
  %os116185 = bitcast %union.FIRST_UNION* %ou16184 to %struct.anon*
  %orec_size6186 = getelementptr inbounds %struct.anon, %struct.anon* %os116185, i32 0, i32 1
  %2518 = load i8, i8* %orec_size6186, align 1
  %conv6187 = zext i8 %2518 to i32
  br label %cond.end.6196

cond.false.6188:                                  ; preds = %lor.lhs.false.6174
  %2519 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16189 = bitcast %union.rec* %2519 to %struct.word_type*
  %ou16190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16189, i32 0, i32 1
  %os116191 = bitcast %union.FIRST_UNION* %ou16190 to %struct.anon*
  %otype6192 = getelementptr inbounds %struct.anon, %struct.anon* %os116191, i32 0, i32 0
  %2520 = load i8, i8* %otype6192, align 1
  %idxprom6193 = zext i8 %2520 to i64
  %arrayidx6194 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6193
  %2521 = load i8, i8* %arrayidx6194, align 1
  %conv6195 = zext i8 %2521 to i32
  br label %cond.end.6196

cond.end.6196:                                    ; preds = %cond.false.6188, %cond.true.6182
  %cond6197 = phi i32 [ %conv6187, %cond.true.6182 ], [ %conv6195, %cond.false.6188 ]
  store i32 %cond6197, i32* @zz_size, align 4
  %2522 = load i32, i32* @zz_size, align 4
  %idxprom6198 = sext i32 %2522 to i64
  %arrayidx6199 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6198
  %2523 = load %union.rec*, %union.rec** %arrayidx6199, align 8
  %2524 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16200 = bitcast %union.rec* %2524 to %struct.word_type*
  %olist6201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16200, i32 0, i32 0
  %arrayidx6202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6201, i32 0, i64 0
  %opred6203 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6202, i32 0, i32 0
  store %union.rec* %2523, %union.rec** %opred6203, align 8
  %2525 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2526 = load i32, i32* @zz_size, align 4
  %idxprom6204 = sext i32 %2526 to i64
  %arrayidx6205 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6204
  store %union.rec* %2525, %union.rec** %arrayidx6205, align 8
  br label %while.cond.6079

while.end.6206:                                   ; preds = %while.cond.6079
  br label %while.cond.6207

while.cond.6207:                                  ; preds = %cond.end.6324, %while.end.6206
  %2527 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os16208 = bitcast %union.rec* %2527 to %struct.word_type*
  %olist6209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16208, i32 0, i32 0
  %arrayidx6210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6209, i32 0, i64 0
  %osucc6211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6210, i32 0, i32 1
  %2528 = load %union.rec*, %union.rec** %osucc6211, align 8
  %2529 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp6212 = icmp ne %union.rec* %2528, %2529
  br i1 %cmp6212, label %while.body.6214, label %while.end.6334

while.body.6214:                                  ; preds = %while.cond.6207
  %2530 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os16215 = bitcast %union.rec* %2530 to %struct.word_type*
  %olist6216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16215, i32 0, i32 0
  %arrayidx6217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6216, i32 0, i64 0
  %osucc6218 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6217, i32 0, i32 1
  %2531 = load %union.rec*, %union.rec** %osucc6218, align 8
  store %union.rec* %2531, %union.rec** @xx_link, align 8
  %2532 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2532, %union.rec** @zz_hold, align 8
  %2533 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16219 = bitcast %union.rec* %2533 to %struct.word_type*
  %olist6220 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16219, i32 0, i32 0
  %arrayidx6221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6220, i32 0, i64 1
  %osucc6222 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6221, i32 0, i32 1
  %2534 = load %union.rec*, %union.rec** %osucc6222, align 8
  %2535 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6223 = icmp eq %union.rec* %2534, %2535
  br i1 %cmp6223, label %cond.true.6225, label %cond.false.6226

cond.true.6225:                                   ; preds = %while.body.6214
  br label %cond.end.6255

cond.false.6226:                                  ; preds = %while.body.6214
  %2536 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16227 = bitcast %union.rec* %2536 to %struct.word_type*
  %olist6228 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16227, i32 0, i32 0
  %arrayidx6229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6228, i32 0, i64 1
  %osucc6230 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6229, i32 0, i32 1
  %2537 = load %union.rec*, %union.rec** %osucc6230, align 8
  store %union.rec* %2537, %union.rec** @zz_res, align 8
  %2538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16231 = bitcast %union.rec* %2538 to %struct.word_type*
  %olist6232 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16231, i32 0, i32 0
  %arrayidx6233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6232, i32 0, i64 1
  %opred6234 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6233, i32 0, i32 0
  %2539 = load %union.rec*, %union.rec** %opred6234, align 8
  %2540 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16235 = bitcast %union.rec* %2540 to %struct.word_type*
  %olist6236 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16235, i32 0, i32 0
  %arrayidx6237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6236, i32 0, i64 1
  %opred6238 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6237, i32 0, i32 0
  store %union.rec* %2539, %union.rec** %opred6238, align 8
  %2541 = load %union.rec*, %union.rec** @zz_res, align 8
  %2542 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16239 = bitcast %union.rec* %2542 to %struct.word_type*
  %olist6240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16239, i32 0, i32 0
  %arrayidx6241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6240, i32 0, i64 1
  %opred6242 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6241, i32 0, i32 0
  %2543 = load %union.rec*, %union.rec** %opred6242, align 8
  %os16243 = bitcast %union.rec* %2543 to %struct.word_type*
  %olist6244 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16243, i32 0, i32 0
  %arrayidx6245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6244, i32 0, i64 1
  %osucc6246 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6245, i32 0, i32 1
  store %union.rec* %2541, %union.rec** %osucc6246, align 8
  %2544 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2545 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16247 = bitcast %union.rec* %2545 to %struct.word_type*
  %olist6248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16247, i32 0, i32 0
  %arrayidx6249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6248, i32 0, i64 1
  %osucc6250 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6249, i32 0, i32 1
  store %union.rec* %2544, %union.rec** %osucc6250, align 8
  %2546 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16251 = bitcast %union.rec* %2546 to %struct.word_type*
  %olist6252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16251, i32 0, i32 0
  %arrayidx6253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6252, i32 0, i64 1
  %opred6254 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6253, i32 0, i32 0
  store %union.rec* %2544, %union.rec** %opred6254, align 8
  %2547 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6255

cond.end.6255:                                    ; preds = %cond.false.6226, %cond.true.6225
  %cond6256 = phi %union.rec* [ null, %cond.true.6225 ], [ %2547, %cond.false.6226 ]
  %2548 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2548, %union.rec** @zz_hold, align 8
  %2549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16257 = bitcast %union.rec* %2549 to %struct.word_type*
  %olist6258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16257, i32 0, i32 0
  %arrayidx6259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6258, i32 0, i64 0
  %osucc6260 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6259, i32 0, i32 1
  %2550 = load %union.rec*, %union.rec** %osucc6260, align 8
  %2551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp6261 = icmp eq %union.rec* %2550, %2551
  br i1 %cmp6261, label %cond.true.6263, label %cond.false.6264

cond.true.6263:                                   ; preds = %cond.end.6255
  br label %cond.end.6293

cond.false.6264:                                  ; preds = %cond.end.6255
  %2552 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16265 = bitcast %union.rec* %2552 to %struct.word_type*
  %olist6266 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16265, i32 0, i32 0
  %arrayidx6267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6266, i32 0, i64 0
  %osucc6268 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6267, i32 0, i32 1
  %2553 = load %union.rec*, %union.rec** %osucc6268, align 8
  store %union.rec* %2553, %union.rec** @zz_res, align 8
  %2554 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16269 = bitcast %union.rec* %2554 to %struct.word_type*
  %olist6270 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16269, i32 0, i32 0
  %arrayidx6271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6270, i32 0, i64 0
  %opred6272 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6271, i32 0, i32 0
  %2555 = load %union.rec*, %union.rec** %opred6272, align 8
  %2556 = load %union.rec*, %union.rec** @zz_res, align 8
  %os16273 = bitcast %union.rec* %2556 to %struct.word_type*
  %olist6274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16273, i32 0, i32 0
  %arrayidx6275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6274, i32 0, i64 0
  %opred6276 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6275, i32 0, i32 0
  store %union.rec* %2555, %union.rec** %opred6276, align 8
  %2557 = load %union.rec*, %union.rec** @zz_res, align 8
  %2558 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16277 = bitcast %union.rec* %2558 to %struct.word_type*
  %olist6278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16277, i32 0, i32 0
  %arrayidx6279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6278, i32 0, i64 0
  %opred6280 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6279, i32 0, i32 0
  %2559 = load %union.rec*, %union.rec** %opred6280, align 8
  %os16281 = bitcast %union.rec* %2559 to %struct.word_type*
  %olist6282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16281, i32 0, i32 0
  %arrayidx6283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6282, i32 0, i64 0
  %osucc6284 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6283, i32 0, i32 1
  store %union.rec* %2557, %union.rec** %osucc6284, align 8
  %2560 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2561 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16285 = bitcast %union.rec* %2561 to %struct.word_type*
  %olist6286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16285, i32 0, i32 0
  %arrayidx6287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6286, i32 0, i64 0
  %osucc6288 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6287, i32 0, i32 1
  store %union.rec* %2560, %union.rec** %osucc6288, align 8
  %2562 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16289 = bitcast %union.rec* %2562 to %struct.word_type*
  %olist6290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16289, i32 0, i32 0
  %arrayidx6291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6290, i32 0, i64 0
  %opred6292 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6291, i32 0, i32 0
  store %union.rec* %2560, %union.rec** %opred6292, align 8
  %2563 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.6293

cond.end.6293:                                    ; preds = %cond.false.6264, %cond.true.6263
  %cond6294 = phi %union.rec* [ null, %cond.true.6263 ], [ %2563, %cond.false.6264 ]
  %2564 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2564, %union.rec** @zz_hold, align 8
  %2565 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2565, %union.rec** @zz_hold, align 8
  %2566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16295 = bitcast %union.rec* %2566 to %struct.word_type*
  %ou16296 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16295, i32 0, i32 1
  %os116297 = bitcast %union.FIRST_UNION* %ou16296 to %struct.anon*
  %otype6298 = getelementptr inbounds %struct.anon, %struct.anon* %os116297, i32 0, i32 0
  %2567 = load i8, i8* %otype6298, align 1
  %conv6299 = zext i8 %2567 to i32
  %cmp6300 = icmp eq i32 %conv6299, 11
  br i1 %cmp6300, label %cond.true.6310, label %lor.lhs.false.6302

lor.lhs.false.6302:                               ; preds = %cond.end.6293
  %2568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16303 = bitcast %union.rec* %2568 to %struct.word_type*
  %ou16304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16303, i32 0, i32 1
  %os116305 = bitcast %union.FIRST_UNION* %ou16304 to %struct.anon*
  %otype6306 = getelementptr inbounds %struct.anon, %struct.anon* %os116305, i32 0, i32 0
  %2569 = load i8, i8* %otype6306, align 1
  %conv6307 = zext i8 %2569 to i32
  %cmp6308 = icmp eq i32 %conv6307, 12
  br i1 %cmp6308, label %cond.true.6310, label %cond.false.6316

cond.true.6310:                                   ; preds = %lor.lhs.false.6302, %cond.end.6293
  %2570 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16311 = bitcast %union.rec* %2570 to %struct.word_type*
  %ou16312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16311, i32 0, i32 1
  %os116313 = bitcast %union.FIRST_UNION* %ou16312 to %struct.anon*
  %orec_size6314 = getelementptr inbounds %struct.anon, %struct.anon* %os116313, i32 0, i32 1
  %2571 = load i8, i8* %orec_size6314, align 1
  %conv6315 = zext i8 %2571 to i32
  br label %cond.end.6324

cond.false.6316:                                  ; preds = %lor.lhs.false.6302
  %2572 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16317 = bitcast %union.rec* %2572 to %struct.word_type*
  %ou16318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16317, i32 0, i32 1
  %os116319 = bitcast %union.FIRST_UNION* %ou16318 to %struct.anon*
  %otype6320 = getelementptr inbounds %struct.anon, %struct.anon* %os116319, i32 0, i32 0
  %2573 = load i8, i8* %otype6320, align 1
  %idxprom6321 = zext i8 %2573 to i64
  %arrayidx6322 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6321
  %2574 = load i8, i8* %arrayidx6322, align 1
  %conv6323 = zext i8 %2574 to i32
  br label %cond.end.6324

cond.end.6324:                                    ; preds = %cond.false.6316, %cond.true.6310
  %cond6325 = phi i32 [ %conv6315, %cond.true.6310 ], [ %conv6323, %cond.false.6316 ]
  store i32 %cond6325, i32* @zz_size, align 4
  %2575 = load i32, i32* @zz_size, align 4
  %idxprom6326 = sext i32 %2575 to i64
  %arrayidx6327 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6326
  %2576 = load %union.rec*, %union.rec** %arrayidx6327, align 8
  %2577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16328 = bitcast %union.rec* %2577 to %struct.word_type*
  %olist6329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16328, i32 0, i32 0
  %arrayidx6330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6329, i32 0, i64 0
  %opred6331 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6330, i32 0, i32 0
  store %union.rec* %2576, %union.rec** %opred6331, align 8
  %2578 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2579 = load i32, i32* @zz_size, align 4
  %idxprom6332 = sext i32 %2579 to i64
  %arrayidx6333 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6332
  store %union.rec* %2578, %union.rec** %arrayidx6333, align 8
  br label %while.cond.6207

while.end.6334:                                   ; preds = %while.cond.6207
  %2580 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %2580, %union.rec** @zz_hold, align 8
  %2581 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2581, %union.rec** @zz_hold, align 8
  %2582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16335 = bitcast %union.rec* %2582 to %struct.word_type*
  %ou16336 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16335, i32 0, i32 1
  %os116337 = bitcast %union.FIRST_UNION* %ou16336 to %struct.anon*
  %otype6338 = getelementptr inbounds %struct.anon, %struct.anon* %os116337, i32 0, i32 0
  %2583 = load i8, i8* %otype6338, align 1
  %conv6339 = zext i8 %2583 to i32
  %cmp6340 = icmp eq i32 %conv6339, 11
  br i1 %cmp6340, label %cond.true.6350, label %lor.lhs.false.6342

lor.lhs.false.6342:                               ; preds = %while.end.6334
  %2584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16343 = bitcast %union.rec* %2584 to %struct.word_type*
  %ou16344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16343, i32 0, i32 1
  %os116345 = bitcast %union.FIRST_UNION* %ou16344 to %struct.anon*
  %otype6346 = getelementptr inbounds %struct.anon, %struct.anon* %os116345, i32 0, i32 0
  %2585 = load i8, i8* %otype6346, align 1
  %conv6347 = zext i8 %2585 to i32
  %cmp6348 = icmp eq i32 %conv6347, 12
  br i1 %cmp6348, label %cond.true.6350, label %cond.false.6356

cond.true.6350:                                   ; preds = %lor.lhs.false.6342, %while.end.6334
  %2586 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16351 = bitcast %union.rec* %2586 to %struct.word_type*
  %ou16352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16351, i32 0, i32 1
  %os116353 = bitcast %union.FIRST_UNION* %ou16352 to %struct.anon*
  %orec_size6354 = getelementptr inbounds %struct.anon, %struct.anon* %os116353, i32 0, i32 1
  %2587 = load i8, i8* %orec_size6354, align 1
  %conv6355 = zext i8 %2587 to i32
  br label %cond.end.6364

cond.false.6356:                                  ; preds = %lor.lhs.false.6342
  %2588 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16357 = bitcast %union.rec* %2588 to %struct.word_type*
  %ou16358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16357, i32 0, i32 1
  %os116359 = bitcast %union.FIRST_UNION* %ou16358 to %struct.anon*
  %otype6360 = getelementptr inbounds %struct.anon, %struct.anon* %os116359, i32 0, i32 0
  %2589 = load i8, i8* %otype6360, align 1
  %idxprom6361 = zext i8 %2589 to i64
  %arrayidx6362 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom6361
  %2590 = load i8, i8* %arrayidx6362, align 1
  %conv6363 = zext i8 %2590 to i32
  br label %cond.end.6364

cond.end.6364:                                    ; preds = %cond.false.6356, %cond.true.6350
  %cond6365 = phi i32 [ %conv6355, %cond.true.6350 ], [ %conv6363, %cond.false.6356 ]
  store i32 %cond6365, i32* @zz_size, align 4
  %2591 = load i32, i32* @zz_size, align 4
  %idxprom6366 = sext i32 %2591 to i64
  %arrayidx6367 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6366
  %2592 = load %union.rec*, %union.rec** %arrayidx6367, align 8
  %2593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os16368 = bitcast %union.rec* %2593 to %struct.word_type*
  %olist6369 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16368, i32 0, i32 0
  %arrayidx6370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6369, i32 0, i64 0
  %opred6371 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6370, i32 0, i32 0
  store %union.rec* %2592, %union.rec** %opred6371, align 8
  %2594 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2595 = load i32, i32* @zz_size, align 4
  %idxprom6372 = sext i32 %2595 to i64
  %arrayidx6373 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom6372
  store %union.rec* %2594, %union.rec** %arrayidx6373, align 8
  br label %if.end.6406

if.else.6374:                                     ; preds = %if.then.6071
  %2596 = load %union.rec*, %union.rec** %y, align 8
  %os16375 = bitcast %union.rec* %2596 to %struct.word_type*
  %olist6376 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16375, i32 0, i32 0
  %arrayidx6377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6376, i32 0, i64 0
  %osucc6378 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6377, i32 0, i32 1
  %2597 = load %union.rec*, %union.rec** %osucc6378, align 8
  %os16379 = bitcast %union.rec* %2597 to %struct.word_type*
  %olist6380 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16379, i32 0, i32 0
  %arrayidx6381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6380, i32 0, i64 1
  %opred6382 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6381, i32 0, i32 0
  %2598 = load %union.rec*, %union.rec** %opred6382, align 8
  store %union.rec* %2598, %union.rec** %z, align 8
  br label %for.cond.6383

for.cond.6383:                                    ; preds = %for.inc.6392, %if.else.6374
  %2599 = load %union.rec*, %union.rec** %z, align 8
  %os16384 = bitcast %union.rec* %2599 to %struct.word_type*
  %ou16385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16384, i32 0, i32 1
  %os116386 = bitcast %union.FIRST_UNION* %ou16385 to %struct.anon*
  %otype6387 = getelementptr inbounds %struct.anon, %struct.anon* %os116386, i32 0, i32 0
  %2600 = load i8, i8* %otype6387, align 1
  %conv6388 = zext i8 %2600 to i32
  %cmp6389 = icmp eq i32 %conv6388, 0
  br i1 %cmp6389, label %for.body.6391, label %for.end.6397

for.body.6391:                                    ; preds = %for.cond.6383
  br label %for.inc.6392

for.inc.6392:                                     ; preds = %for.body.6391
  %2601 = load %union.rec*, %union.rec** %z, align 8
  %os16393 = bitcast %union.rec* %2601 to %struct.word_type*
  %olist6394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16393, i32 0, i32 0
  %arrayidx6395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6394, i32 0, i64 1
  %opred6396 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6395, i32 0, i32 0
  %2602 = load %union.rec*, %union.rec** %opred6396, align 8
  store %union.rec* %2602, %union.rec** %z, align 8
  br label %for.cond.6383

for.end.6397:                                     ; preds = %for.cond.6383
  %2603 = load %union.rec*, %union.rec** %z, align 8
  %os2a6398 = bitcast %union.rec* %2603 to %struct.head_type*
  %oopt_components6399 = getelementptr inbounds %struct.head_type, %struct.head_type* %os2a6398, i32 0, i32 8
  %2604 = load %union.rec*, %union.rec** %oopt_components6399, align 8
  %cmp6400 = icmp ne %union.rec* %2604, null
  br i1 %cmp6400, label %if.then.6402, label %if.end.6405

if.then.6402:                                     ; preds = %for.end.6397
  %2605 = load %union.rec*, %union.rec** %z, align 8
  %2606 = load %union.rec*, %union.rec** %y, align 8
  %os26403 = bitcast %union.rec* %2606 to %struct.closure_type*
  %oactual6404 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os26403, i32 0, i32 5
  %2607 = load %union.rec*, %union.rec** %oactual6404, align 8
  call void @GazumpOptimize(%union.rec* %2605, %union.rec* %2607)
  br label %if.end.6405

if.end.6405:                                      ; preds = %if.then.6402, %for.end.6397
  %2608 = load %union.rec*, %union.rec** %z, align 8
  call void @DetachGalley(%union.rec* %2608)
  br label %if.end.6406

if.end.6406:                                      ; preds = %if.end.6405, %cond.end.6364
  br label %RESUME

if.end.6407:                                      ; preds = %land.lhs.true.6062, %if.else.6054
  br label %if.end.6408

if.end.6408:                                      ; preds = %if.end.6407
  %2609 = load %union.rec*, %union.rec** %y, align 8
  %os16409 = bitcast %union.rec* %2609 to %struct.word_type*
  %ou26410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16409, i32 0, i32 2
  %os236411 = bitcast %union.SECOND_UNION* %ou26410 to %struct.anon.2*
  %oblocked6412 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os236411, i32 0, i32 2
  %bf.load6413 = load i16, i16* %oblocked6412, align 2
  %bf.clear6414 = and i16 %bf.load6413, -33
  %bf.set6415 = or i16 %bf.clear6414, 32
  store i16 %bf.set6415, i16* %oblocked6412, align 2
  %2610 = load i32, i32* %prnt_flush, align 4
  %2611 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @ParentFlush(i32 %2610, %union.rec* %2611, i32 0)
  br label %return

return:                                           ; preds = %if.end.6408, %if.end.2429, %if.then.253, %if.end.167, %if.end.80, %if.end.74, %if.end.68, %sw.bb
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare i32 @AttachGalley(%union.rec*, %union.rec**, %union.rec**) #1

; Function Attrs: nounwind uwtable
define internal void @ParentFlush(i32 %prnt_flush, %union.rec* %dest_index, i32 %kill) #0 {
entry:
  %prnt_flush.addr = alloca i32, align 4
  %dest_index.addr = alloca %union.rec*, align 8
  %kill.addr = alloca i32, align 4
  %prnt = alloca %union.rec*, align 8
  store i32 %prnt_flush, i32* %prnt_flush.addr, align 4
  store %union.rec* %dest_index, %union.rec** %dest_index.addr, align 8
  store i32 %kill, i32* %kill.addr, align 4
  %0 = load i32, i32* %prnt_flush.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %union.rec*, %union.rec** %dest_index.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %2 = load %union.rec*, %union.rec** %osucc, align 8
  %os11 = bitcast %union.rec* %2 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 0
  %3 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %3, %union.rec** %prnt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load %union.rec*, %union.rec** %prnt, align 8
  %os14 = bitcast %union.rec* %4 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 1
  %os115 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os115, i32 0, i32 0
  %5 = load i8, i8* %otype, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %union.rec*, %union.rec** %prnt, align 8
  %os17 = bitcast %union.rec* %6 to %struct.word_type*
  %olist8 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8, i32 0, i64 0
  %opred10 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx9, i32 0, i32 0
  %7 = load %union.rec*, %union.rec** %opred10, align 8
  store %union.rec* %7, %union.rec** %prnt, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %kill.addr, align 4
  %tobool11 = icmp ne i32 %8, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %for.end
  %9 = load %union.rec*, %union.rec** %dest_index.addr, align 8
  store %union.rec* %9, %union.rec** @xx_hold, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.121, %if.then.12
  %10 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os113 = bitcast %union.rec* %10 to %struct.word_type*
  %olist14 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist14, i32 0, i64 1
  %osucc16 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx15, i32 0, i32 1
  %11 = load %union.rec*, %union.rec** %osucc16, align 8
  %12 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp17 = icmp ne %union.rec* %11, %12
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os119 = bitcast %union.rec* %13 to %struct.word_type*
  %olist20 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist20, i32 0, i64 1
  %osucc22 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx21, i32 0, i32 1
  %14 = load %union.rec*, %union.rec** %osucc22, align 8
  store %union.rec* %14, %union.rec** @xx_link, align 8
  %15 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %15, %union.rec** @zz_hold, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os123 = bitcast %union.rec* %16 to %struct.word_type*
  %olist24 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist24, i32 0, i64 1
  %osucc26 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx25, i32 0, i32 1
  %17 = load %union.rec*, %union.rec** %osucc26, align 8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp27 = icmp eq %union.rec* %17, %18
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os129 = bitcast %union.rec* %19 to %struct.word_type*
  %olist30 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist30, i32 0, i64 1
  %osucc32 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx31, i32 0, i32 1
  %20 = load %union.rec*, %union.rec** %osucc32, align 8
  store %union.rec* %20, %union.rec** @zz_res, align 8
  %21 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os133 = bitcast %union.rec* %21 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 1
  %opred36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 0
  %22 = load %union.rec*, %union.rec** %opred36, align 8
  %23 = load %union.rec*, %union.rec** @zz_res, align 8
  %os137 = bitcast %union.rec* %23 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 1
  %opred40 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 0
  store %union.rec* %22, %union.rec** %opred40, align 8
  %24 = load %union.rec*, %union.rec** @zz_res, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os141 = bitcast %union.rec* %25 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 1
  %opred44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %opred44, align 8
  %os145 = bitcast %union.rec* %26 to %struct.word_type*
  %olist46 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist46, i32 0, i64 1
  %osucc48 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx47, i32 0, i32 1
  store %union.rec* %24, %union.rec** %osucc48, align 8
  %27 = load %union.rec*, %union.rec** @zz_hold, align 8
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os149 = bitcast %union.rec* %28 to %struct.word_type*
  %olist50 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist50, i32 0, i64 1
  %osucc52 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx51, i32 0, i32 1
  store %union.rec* %27, %union.rec** %osucc52, align 8
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os153 = bitcast %union.rec* %29 to %struct.word_type*
  %olist54 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist54, i32 0, i64 1
  %opred56 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx55, i32 0, i32 0
  store %union.rec* %27, %union.rec** %opred56, align 8
  %30 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %30, %cond.false ]
  %31 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %31, %union.rec** @zz_hold, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os157 = bitcast %union.rec* %32 to %struct.word_type*
  %olist58 = getelementptr inbounds %struct.word_type, %struct.word_type* %os157, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist58, i32 0, i64 0
  %osucc60 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx59, i32 0, i32 1
  %33 = load %union.rec*, %union.rec** %osucc60, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp61 = icmp eq %union.rec* %33, %34
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %cond.end
  br label %cond.end.93

cond.false.64:                                    ; preds = %cond.end
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os165 = bitcast %union.rec* %35 to %struct.word_type*
  %olist66 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist66, i32 0, i64 0
  %osucc68 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx67, i32 0, i32 1
  %36 = load %union.rec*, %union.rec** %osucc68, align 8
  store %union.rec* %36, %union.rec** @zz_res, align 8
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os169 = bitcast %union.rec* %37 to %struct.word_type*
  %olist70 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist70, i32 0, i64 0
  %opred72 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx71, i32 0, i32 0
  %38 = load %union.rec*, %union.rec** %opred72, align 8
  %39 = load %union.rec*, %union.rec** @zz_res, align 8
  %os173 = bitcast %union.rec* %39 to %struct.word_type*
  %olist74 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist74, i32 0, i64 0
  %opred76 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx75, i32 0, i32 0
  store %union.rec* %38, %union.rec** %opred76, align 8
  %40 = load %union.rec*, %union.rec** @zz_res, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os177 = bitcast %union.rec* %41 to %struct.word_type*
  %olist78 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist78, i32 0, i64 0
  %opred80 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx79, i32 0, i32 0
  %42 = load %union.rec*, %union.rec** %opred80, align 8
  %os181 = bitcast %union.rec* %42 to %struct.word_type*
  %olist82 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist82, i32 0, i64 0
  %osucc84 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx83, i32 0, i32 1
  store %union.rec* %40, %union.rec** %osucc84, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os185 = bitcast %union.rec* %44 to %struct.word_type*
  %olist86 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist86, i32 0, i64 0
  %osucc88 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx87, i32 0, i32 1
  store %union.rec* %43, %union.rec** %osucc88, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os189 = bitcast %union.rec* %45 to %struct.word_type*
  %olist90 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist90, i32 0, i64 0
  %opred92 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx91, i32 0, i32 0
  store %union.rec* %43, %union.rec** %opred92, align 8
  %46 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.64, %cond.true.63
  %cond94 = phi %union.rec* [ null, %cond.true.63 ], [ %46, %cond.false.64 ]
  %47 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %47, %union.rec** @zz_hold, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %48, %union.rec** @zz_hold, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os195 = bitcast %union.rec* %49 to %struct.word_type*
  %ou196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 1
  %os1197 = bitcast %union.FIRST_UNION* %ou196 to %struct.anon*
  %otype98 = getelementptr inbounds %struct.anon, %struct.anon* %os1197, i32 0, i32 0
  %50 = load i8, i8* %otype98, align 1
  %conv99 = zext i8 %50 to i32
  %cmp100 = icmp eq i32 %conv99, 11
  br i1 %cmp100, label %cond.true.109, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.93
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1102 = bitcast %union.rec* %51 to %struct.word_type*
  %ou1103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 1
  %os11104 = bitcast %union.FIRST_UNION* %ou1103 to %struct.anon*
  %otype105 = getelementptr inbounds %struct.anon, %struct.anon* %os11104, i32 0, i32 0
  %52 = load i8, i8* %otype105, align 1
  %conv106 = zext i8 %52 to i32
  %cmp107 = icmp eq i32 %conv106, 12
  br i1 %cmp107, label %cond.true.109, label %cond.false.114

cond.true.109:                                    ; preds = %lor.lhs.false, %cond.end.93
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1110 = bitcast %union.rec* %53 to %struct.word_type*
  %ou1111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 1
  %os11112 = bitcast %union.FIRST_UNION* %ou1111 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11112, i32 0, i32 1
  %54 = load i8, i8* %orec_size, align 1
  %conv113 = zext i8 %54 to i32
  br label %cond.end.121

cond.false.114:                                   ; preds = %lor.lhs.false
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1115 = bitcast %union.rec* %55 to %struct.word_type*
  %ou1116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 1
  %os11117 = bitcast %union.FIRST_UNION* %ou1116 to %struct.anon*
  %otype118 = getelementptr inbounds %struct.anon, %struct.anon* %os11117, i32 0, i32 0
  %56 = load i8, i8* %otype118, align 1
  %idxprom = zext i8 %56 to i64
  %arrayidx119 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %57 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %57 to i32
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.114, %cond.true.109
  %cond122 = phi i32 [ %conv113, %cond.true.109 ], [ %conv120, %cond.false.114 ]
  store i32 %cond122, i32* @zz_size, align 4
  %58 = load i32, i32* @zz_size, align 4
  %idxprom123 = sext i32 %58 to i64
  %arrayidx124 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom123
  %59 = load %union.rec*, %union.rec** %arrayidx124, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1125 = bitcast %union.rec* %60 to %struct.word_type*
  %olist126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist126, i32 0, i64 0
  %opred128 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx127, i32 0, i32 0
  store %union.rec* %59, %union.rec** %opred128, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %62 = load i32, i32* @zz_size, align 4
  %idxprom129 = sext i32 %62 to i64
  %arrayidx130 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom129
  store %union.rec* %61, %union.rec** %arrayidx130, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.131

while.cond.131:                                   ; preds = %cond.end.249, %while.end
  %63 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1132 = bitcast %union.rec* %63 to %struct.word_type*
  %olist133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist133, i32 0, i64 0
  %osucc135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx134, i32 0, i32 1
  %64 = load %union.rec*, %union.rec** %osucc135, align 8
  %65 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp136 = icmp ne %union.rec* %64, %65
  br i1 %cmp136, label %while.body.138, label %while.end.259

while.body.138:                                   ; preds = %while.cond.131
  %66 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1139 = bitcast %union.rec* %66 to %struct.word_type*
  %olist140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1139, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist140, i32 0, i64 0
  %osucc142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx141, i32 0, i32 1
  %67 = load %union.rec*, %union.rec** %osucc142, align 8
  store %union.rec* %67, %union.rec** @xx_link, align 8
  %68 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %68, %union.rec** @zz_hold, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1143 = bitcast %union.rec* %69 to %struct.word_type*
  %olist144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1143, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist144, i32 0, i64 1
  %osucc146 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx145, i32 0, i32 1
  %70 = load %union.rec*, %union.rec** %osucc146, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp147 = icmp eq %union.rec* %70, %71
  br i1 %cmp147, label %cond.true.149, label %cond.false.150

cond.true.149:                                    ; preds = %while.body.138
  br label %cond.end.179

cond.false.150:                                   ; preds = %while.body.138
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1151 = bitcast %union.rec* %72 to %struct.word_type*
  %olist152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1151, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist152, i32 0, i64 1
  %osucc154 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx153, i32 0, i32 1
  %73 = load %union.rec*, %union.rec** %osucc154, align 8
  store %union.rec* %73, %union.rec** @zz_res, align 8
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1155 = bitcast %union.rec* %74 to %struct.word_type*
  %olist156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist156, i32 0, i64 1
  %opred158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx157, i32 0, i32 0
  %75 = load %union.rec*, %union.rec** %opred158, align 8
  %76 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1159 = bitcast %union.rec* %76 to %struct.word_type*
  %olist160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1159, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist160, i32 0, i64 1
  %opred162 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx161, i32 0, i32 0
  store %union.rec* %75, %union.rec** %opred162, align 8
  %77 = load %union.rec*, %union.rec** @zz_res, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1163 = bitcast %union.rec* %78 to %struct.word_type*
  %olist164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist164, i32 0, i64 1
  %opred166 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx165, i32 0, i32 0
  %79 = load %union.rec*, %union.rec** %opred166, align 8
  %os1167 = bitcast %union.rec* %79 to %struct.word_type*
  %olist168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist168, i32 0, i64 1
  %osucc170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx169, i32 0, i32 1
  store %union.rec* %77, %union.rec** %osucc170, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1171 = bitcast %union.rec* %81 to %struct.word_type*
  %olist172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist172, i32 0, i64 1
  %osucc174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx173, i32 0, i32 1
  store %union.rec* %80, %union.rec** %osucc174, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1175 = bitcast %union.rec* %82 to %struct.word_type*
  %olist176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist176, i32 0, i64 1
  %opred178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx177, i32 0, i32 0
  store %union.rec* %80, %union.rec** %opred178, align 8
  %83 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.150, %cond.true.149
  %cond180 = phi %union.rec* [ null, %cond.true.149 ], [ %83, %cond.false.150 ]
  %84 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %84, %union.rec** @zz_hold, align 8
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1181 = bitcast %union.rec* %85 to %struct.word_type*
  %olist182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1181, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist182, i32 0, i64 0
  %osucc184 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx183, i32 0, i32 1
  %86 = load %union.rec*, %union.rec** %osucc184, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp185 = icmp eq %union.rec* %86, %87
  br i1 %cmp185, label %cond.true.187, label %cond.false.188

cond.true.187:                                    ; preds = %cond.end.179
  br label %cond.end.218

cond.false.188:                                   ; preds = %cond.end.179
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1189 = bitcast %union.rec* %88 to %struct.word_type*
  %olist190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1189, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist190, i32 0, i64 0
  %osucc192 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx191, i32 0, i32 1
  %89 = load %union.rec*, %union.rec** %osucc192, align 8
  store %union.rec* %89, %union.rec** @zz_res, align 8
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1193 = bitcast %union.rec* %90 to %struct.word_type*
  %olist194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1193, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist194, i32 0, i64 0
  %opred196 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx195, i32 0, i32 0
  %91 = load %union.rec*, %union.rec** %opred196, align 8
  %92 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1198 = bitcast %union.rec* %92 to %struct.word_type*
  %olist199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1198, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist199, i32 0, i64 0
  %opred201 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx200, i32 0, i32 0
  store %union.rec* %91, %union.rec** %opred201, align 8
  %93 = load %union.rec*, %union.rec** @zz_res, align 8
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1202 = bitcast %union.rec* %94 to %struct.word_type*
  %olist203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1202, i32 0, i32 0
  %arrayidx204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist203, i32 0, i64 0
  %opred205 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx204, i32 0, i32 0
  %95 = load %union.rec*, %union.rec** %opred205, align 8
  %os1206 = bitcast %union.rec* %95 to %struct.word_type*
  %olist207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1206, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist207, i32 0, i64 0
  %osucc209 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx208, i32 0, i32 1
  store %union.rec* %93, %union.rec** %osucc209, align 8
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1210 = bitcast %union.rec* %97 to %struct.word_type*
  %olist211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1210, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist211, i32 0, i64 0
  %osucc213 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx212, i32 0, i32 1
  store %union.rec* %96, %union.rec** %osucc213, align 8
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1214 = bitcast %union.rec* %98 to %struct.word_type*
  %olist215 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist215, i32 0, i64 0
  %opred217 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx216, i32 0, i32 0
  store %union.rec* %96, %union.rec** %opred217, align 8
  %99 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.188, %cond.true.187
  %cond219 = phi %union.rec* [ null, %cond.true.187 ], [ %99, %cond.false.188 ]
  %100 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %100, %union.rec** @zz_hold, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %101, %union.rec** @zz_hold, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1220 = bitcast %union.rec* %102 to %struct.word_type*
  %ou1221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1220, i32 0, i32 1
  %os11222 = bitcast %union.FIRST_UNION* %ou1221 to %struct.anon*
  %otype223 = getelementptr inbounds %struct.anon, %struct.anon* %os11222, i32 0, i32 0
  %103 = load i8, i8* %otype223, align 1
  %conv224 = zext i8 %103 to i32
  %cmp225 = icmp eq i32 %conv224, 11
  br i1 %cmp225, label %cond.true.235, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %cond.end.218
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1228 = bitcast %union.rec* %104 to %struct.word_type*
  %ou1229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1228, i32 0, i32 1
  %os11230 = bitcast %union.FIRST_UNION* %ou1229 to %struct.anon*
  %otype231 = getelementptr inbounds %struct.anon, %struct.anon* %os11230, i32 0, i32 0
  %105 = load i8, i8* %otype231, align 1
  %conv232 = zext i8 %105 to i32
  %cmp233 = icmp eq i32 %conv232, 12
  br i1 %cmp233, label %cond.true.235, label %cond.false.241

cond.true.235:                                    ; preds = %lor.lhs.false.227, %cond.end.218
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1236 = bitcast %union.rec* %106 to %struct.word_type*
  %ou1237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1236, i32 0, i32 1
  %os11238 = bitcast %union.FIRST_UNION* %ou1237 to %struct.anon*
  %orec_size239 = getelementptr inbounds %struct.anon, %struct.anon* %os11238, i32 0, i32 1
  %107 = load i8, i8* %orec_size239, align 1
  %conv240 = zext i8 %107 to i32
  br label %cond.end.249

cond.false.241:                                   ; preds = %lor.lhs.false.227
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1242 = bitcast %union.rec* %108 to %struct.word_type*
  %ou1243 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1242, i32 0, i32 1
  %os11244 = bitcast %union.FIRST_UNION* %ou1243 to %struct.anon*
  %otype245 = getelementptr inbounds %struct.anon, %struct.anon* %os11244, i32 0, i32 0
  %109 = load i8, i8* %otype245, align 1
  %idxprom246 = zext i8 %109 to i64
  %arrayidx247 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom246
  %110 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %110 to i32
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.241, %cond.true.235
  %cond250 = phi i32 [ %conv240, %cond.true.235 ], [ %conv248, %cond.false.241 ]
  store i32 %cond250, i32* @zz_size, align 4
  %111 = load i32, i32* @zz_size, align 4
  %idxprom251 = sext i32 %111 to i64
  %arrayidx252 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom251
  %112 = load %union.rec*, %union.rec** %arrayidx252, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1253 = bitcast %union.rec* %113 to %struct.word_type*
  %olist254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1253, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist254, i32 0, i64 0
  %opred256 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx255, i32 0, i32 0
  store %union.rec* %112, %union.rec** %opred256, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %115 = load i32, i32* @zz_size, align 4
  %idxprom257 = sext i32 %115 to i64
  %arrayidx258 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom257
  store %union.rec* %114, %union.rec** %arrayidx258, align 8
  br label %while.cond.131

while.end.259:                                    ; preds = %while.cond.131
  %116 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %116, %union.rec** @zz_hold, align 8
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %117, %union.rec** @zz_hold, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1260 = bitcast %union.rec* %118 to %struct.word_type*
  %ou1261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1260, i32 0, i32 1
  %os11262 = bitcast %union.FIRST_UNION* %ou1261 to %struct.anon*
  %otype263 = getelementptr inbounds %struct.anon, %struct.anon* %os11262, i32 0, i32 0
  %119 = load i8, i8* %otype263, align 1
  %conv264 = zext i8 %119 to i32
  %cmp265 = icmp eq i32 %conv264, 11
  br i1 %cmp265, label %cond.true.275, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %while.end.259
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1268 = bitcast %union.rec* %120 to %struct.word_type*
  %ou1269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1268, i32 0, i32 1
  %os11270 = bitcast %union.FIRST_UNION* %ou1269 to %struct.anon*
  %otype271 = getelementptr inbounds %struct.anon, %struct.anon* %os11270, i32 0, i32 0
  %121 = load i8, i8* %otype271, align 1
  %conv272 = zext i8 %121 to i32
  %cmp273 = icmp eq i32 %conv272, 12
  br i1 %cmp273, label %cond.true.275, label %cond.false.281

cond.true.275:                                    ; preds = %lor.lhs.false.267, %while.end.259
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1276 = bitcast %union.rec* %122 to %struct.word_type*
  %ou1277 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1276, i32 0, i32 1
  %os11278 = bitcast %union.FIRST_UNION* %ou1277 to %struct.anon*
  %orec_size279 = getelementptr inbounds %struct.anon, %struct.anon* %os11278, i32 0, i32 1
  %123 = load i8, i8* %orec_size279, align 1
  %conv280 = zext i8 %123 to i32
  br label %cond.end.289

cond.false.281:                                   ; preds = %lor.lhs.false.267
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1282 = bitcast %union.rec* %124 to %struct.word_type*
  %ou1283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1282, i32 0, i32 1
  %os11284 = bitcast %union.FIRST_UNION* %ou1283 to %struct.anon*
  %otype285 = getelementptr inbounds %struct.anon, %struct.anon* %os11284, i32 0, i32 0
  %125 = load i8, i8* %otype285, align 1
  %idxprom286 = zext i8 %125 to i64
  %arrayidx287 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom286
  %126 = load i8, i8* %arrayidx287, align 1
  %conv288 = zext i8 %126 to i32
  br label %cond.end.289

cond.end.289:                                     ; preds = %cond.false.281, %cond.true.275
  %cond290 = phi i32 [ %conv280, %cond.true.275 ], [ %conv288, %cond.false.281 ]
  store i32 %cond290, i32* @zz_size, align 4
  %127 = load i32, i32* @zz_size, align 4
  %idxprom291 = sext i32 %127 to i64
  %arrayidx292 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom291
  %128 = load %union.rec*, %union.rec** %arrayidx292, align 8
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1293 = bitcast %union.rec* %129 to %struct.word_type*
  %olist294 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1293, i32 0, i32 0
  %arrayidx295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist294, i32 0, i64 0
  %opred296 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx295, i32 0, i32 0
  store %union.rec* %128, %union.rec** %opred296, align 8
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %131 = load i32, i32* @zz_size, align 4
  %idxprom297 = sext i32 %131 to i64
  %arrayidx298 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom297
  store %union.rec* %130, %union.rec** %arrayidx298, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.289, %for.end
  %132 = load %union.rec*, %union.rec** %prnt, align 8
  call void @FlushGalley(%union.rec* %132)
  br label %if.end.597

if.else:                                          ; preds = %entry
  %133 = load i32, i32* %kill.addr, align 4
  %tobool299 = icmp ne i32 %133, 0
  br i1 %tobool299, label %if.then.300, label %if.end.596

if.then.300:                                      ; preds = %if.else
  %134 = load %union.rec*, %union.rec** %dest_index.addr, align 8
  store %union.rec* %134, %union.rec** @xx_hold, align 8
  br label %while.cond.301

while.cond.301:                                   ; preds = %cond.end.418, %if.then.300
  %135 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1302 = bitcast %union.rec* %135 to %struct.word_type*
  %olist303 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1302, i32 0, i32 0
  %arrayidx304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist303, i32 0, i64 1
  %osucc305 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx304, i32 0, i32 1
  %136 = load %union.rec*, %union.rec** %osucc305, align 8
  %137 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp306 = icmp ne %union.rec* %136, %137
  br i1 %cmp306, label %while.body.308, label %while.end.428

while.body.308:                                   ; preds = %while.cond.301
  %138 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1309 = bitcast %union.rec* %138 to %struct.word_type*
  %olist310 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1309, i32 0, i32 0
  %arrayidx311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist310, i32 0, i64 1
  %osucc312 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx311, i32 0, i32 1
  %139 = load %union.rec*, %union.rec** %osucc312, align 8
  store %union.rec* %139, %union.rec** @xx_link, align 8
  %140 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %140, %union.rec** @zz_hold, align 8
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1313 = bitcast %union.rec* %141 to %struct.word_type*
  %olist314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1313, i32 0, i32 0
  %arrayidx315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist314, i32 0, i64 1
  %osucc316 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx315, i32 0, i32 1
  %142 = load %union.rec*, %union.rec** %osucc316, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp317 = icmp eq %union.rec* %142, %143
  br i1 %cmp317, label %cond.true.319, label %cond.false.320

cond.true.319:                                    ; preds = %while.body.308
  br label %cond.end.349

cond.false.320:                                   ; preds = %while.body.308
  %144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1321 = bitcast %union.rec* %144 to %struct.word_type*
  %olist322 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1321, i32 0, i32 0
  %arrayidx323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist322, i32 0, i64 1
  %osucc324 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx323, i32 0, i32 1
  %145 = load %union.rec*, %union.rec** %osucc324, align 8
  store %union.rec* %145, %union.rec** @zz_res, align 8
  %146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1325 = bitcast %union.rec* %146 to %struct.word_type*
  %olist326 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1325, i32 0, i32 0
  %arrayidx327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist326, i32 0, i64 1
  %opred328 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx327, i32 0, i32 0
  %147 = load %union.rec*, %union.rec** %opred328, align 8
  %148 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1329 = bitcast %union.rec* %148 to %struct.word_type*
  %olist330 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1329, i32 0, i32 0
  %arrayidx331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist330, i32 0, i64 1
  %opred332 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx331, i32 0, i32 0
  store %union.rec* %147, %union.rec** %opred332, align 8
  %149 = load %union.rec*, %union.rec** @zz_res, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1333 = bitcast %union.rec* %150 to %struct.word_type*
  %olist334 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1333, i32 0, i32 0
  %arrayidx335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist334, i32 0, i64 1
  %opred336 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx335, i32 0, i32 0
  %151 = load %union.rec*, %union.rec** %opred336, align 8
  %os1337 = bitcast %union.rec* %151 to %struct.word_type*
  %olist338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1337, i32 0, i32 0
  %arrayidx339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist338, i32 0, i64 1
  %osucc340 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx339, i32 0, i32 1
  store %union.rec* %149, %union.rec** %osucc340, align 8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1341 = bitcast %union.rec* %153 to %struct.word_type*
  %olist342 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1341, i32 0, i32 0
  %arrayidx343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist342, i32 0, i64 1
  %osucc344 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx343, i32 0, i32 1
  store %union.rec* %152, %union.rec** %osucc344, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1345 = bitcast %union.rec* %154 to %struct.word_type*
  %olist346 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1345, i32 0, i32 0
  %arrayidx347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist346, i32 0, i64 1
  %opred348 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx347, i32 0, i32 0
  store %union.rec* %152, %union.rec** %opred348, align 8
  %155 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.349

cond.end.349:                                     ; preds = %cond.false.320, %cond.true.319
  %cond350 = phi %union.rec* [ null, %cond.true.319 ], [ %155, %cond.false.320 ]
  %156 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %156, %union.rec** @zz_hold, align 8
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1351 = bitcast %union.rec* %157 to %struct.word_type*
  %olist352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1351, i32 0, i32 0
  %arrayidx353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist352, i32 0, i64 0
  %osucc354 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx353, i32 0, i32 1
  %158 = load %union.rec*, %union.rec** %osucc354, align 8
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp355 = icmp eq %union.rec* %158, %159
  br i1 %cmp355, label %cond.true.357, label %cond.false.358

cond.true.357:                                    ; preds = %cond.end.349
  br label %cond.end.387

cond.false.358:                                   ; preds = %cond.end.349
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1359 = bitcast %union.rec* %160 to %struct.word_type*
  %olist360 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1359, i32 0, i32 0
  %arrayidx361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist360, i32 0, i64 0
  %osucc362 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx361, i32 0, i32 1
  %161 = load %union.rec*, %union.rec** %osucc362, align 8
  store %union.rec* %161, %union.rec** @zz_res, align 8
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1363 = bitcast %union.rec* %162 to %struct.word_type*
  %olist364 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1363, i32 0, i32 0
  %arrayidx365 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist364, i32 0, i64 0
  %opred366 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx365, i32 0, i32 0
  %163 = load %union.rec*, %union.rec** %opred366, align 8
  %164 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1367 = bitcast %union.rec* %164 to %struct.word_type*
  %olist368 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1367, i32 0, i32 0
  %arrayidx369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist368, i32 0, i64 0
  %opred370 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx369, i32 0, i32 0
  store %union.rec* %163, %union.rec** %opred370, align 8
  %165 = load %union.rec*, %union.rec** @zz_res, align 8
  %166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1371 = bitcast %union.rec* %166 to %struct.word_type*
  %olist372 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1371, i32 0, i32 0
  %arrayidx373 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist372, i32 0, i64 0
  %opred374 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx373, i32 0, i32 0
  %167 = load %union.rec*, %union.rec** %opred374, align 8
  %os1375 = bitcast %union.rec* %167 to %struct.word_type*
  %olist376 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1375, i32 0, i32 0
  %arrayidx377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist376, i32 0, i64 0
  %osucc378 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx377, i32 0, i32 1
  store %union.rec* %165, %union.rec** %osucc378, align 8
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1379 = bitcast %union.rec* %169 to %struct.word_type*
  %olist380 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1379, i32 0, i32 0
  %arrayidx381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist380, i32 0, i64 0
  %osucc382 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx381, i32 0, i32 1
  store %union.rec* %168, %union.rec** %osucc382, align 8
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1383 = bitcast %union.rec* %170 to %struct.word_type*
  %olist384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1383, i32 0, i32 0
  %arrayidx385 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist384, i32 0, i64 0
  %opred386 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx385, i32 0, i32 0
  store %union.rec* %168, %union.rec** %opred386, align 8
  %171 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.387

cond.end.387:                                     ; preds = %cond.false.358, %cond.true.357
  %cond388 = phi %union.rec* [ null, %cond.true.357 ], [ %171, %cond.false.358 ]
  %172 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %172, %union.rec** @zz_hold, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %173, %union.rec** @zz_hold, align 8
  %174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1389 = bitcast %union.rec* %174 to %struct.word_type*
  %ou1390 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1389, i32 0, i32 1
  %os11391 = bitcast %union.FIRST_UNION* %ou1390 to %struct.anon*
  %otype392 = getelementptr inbounds %struct.anon, %struct.anon* %os11391, i32 0, i32 0
  %175 = load i8, i8* %otype392, align 1
  %conv393 = zext i8 %175 to i32
  %cmp394 = icmp eq i32 %conv393, 11
  br i1 %cmp394, label %cond.true.404, label %lor.lhs.false.396

lor.lhs.false.396:                                ; preds = %cond.end.387
  %176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1397 = bitcast %union.rec* %176 to %struct.word_type*
  %ou1398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1397, i32 0, i32 1
  %os11399 = bitcast %union.FIRST_UNION* %ou1398 to %struct.anon*
  %otype400 = getelementptr inbounds %struct.anon, %struct.anon* %os11399, i32 0, i32 0
  %177 = load i8, i8* %otype400, align 1
  %conv401 = zext i8 %177 to i32
  %cmp402 = icmp eq i32 %conv401, 12
  br i1 %cmp402, label %cond.true.404, label %cond.false.410

cond.true.404:                                    ; preds = %lor.lhs.false.396, %cond.end.387
  %178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1405 = bitcast %union.rec* %178 to %struct.word_type*
  %ou1406 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1405, i32 0, i32 1
  %os11407 = bitcast %union.FIRST_UNION* %ou1406 to %struct.anon*
  %orec_size408 = getelementptr inbounds %struct.anon, %struct.anon* %os11407, i32 0, i32 1
  %179 = load i8, i8* %orec_size408, align 1
  %conv409 = zext i8 %179 to i32
  br label %cond.end.418

cond.false.410:                                   ; preds = %lor.lhs.false.396
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1411 = bitcast %union.rec* %180 to %struct.word_type*
  %ou1412 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1411, i32 0, i32 1
  %os11413 = bitcast %union.FIRST_UNION* %ou1412 to %struct.anon*
  %otype414 = getelementptr inbounds %struct.anon, %struct.anon* %os11413, i32 0, i32 0
  %181 = load i8, i8* %otype414, align 1
  %idxprom415 = zext i8 %181 to i64
  %arrayidx416 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom415
  %182 = load i8, i8* %arrayidx416, align 1
  %conv417 = zext i8 %182 to i32
  br label %cond.end.418

cond.end.418:                                     ; preds = %cond.false.410, %cond.true.404
  %cond419 = phi i32 [ %conv409, %cond.true.404 ], [ %conv417, %cond.false.410 ]
  store i32 %cond419, i32* @zz_size, align 4
  %183 = load i32, i32* @zz_size, align 4
  %idxprom420 = sext i32 %183 to i64
  %arrayidx421 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom420
  %184 = load %union.rec*, %union.rec** %arrayidx421, align 8
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1422 = bitcast %union.rec* %185 to %struct.word_type*
  %olist423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1422, i32 0, i32 0
  %arrayidx424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist423, i32 0, i64 0
  %opred425 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx424, i32 0, i32 0
  store %union.rec* %184, %union.rec** %opred425, align 8
  %186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %187 = load i32, i32* @zz_size, align 4
  %idxprom426 = sext i32 %187 to i64
  %arrayidx427 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom426
  store %union.rec* %186, %union.rec** %arrayidx427, align 8
  br label %while.cond.301

while.end.428:                                    ; preds = %while.cond.301
  br label %while.cond.429

while.cond.429:                                   ; preds = %cond.end.546, %while.end.428
  %188 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1430 = bitcast %union.rec* %188 to %struct.word_type*
  %olist431 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1430, i32 0, i32 0
  %arrayidx432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist431, i32 0, i64 0
  %osucc433 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx432, i32 0, i32 1
  %189 = load %union.rec*, %union.rec** %osucc433, align 8
  %190 = load %union.rec*, %union.rec** @xx_hold, align 8
  %cmp434 = icmp ne %union.rec* %189, %190
  br i1 %cmp434, label %while.body.436, label %while.end.556

while.body.436:                                   ; preds = %while.cond.429
  %191 = load %union.rec*, %union.rec** @xx_hold, align 8
  %os1437 = bitcast %union.rec* %191 to %struct.word_type*
  %olist438 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1437, i32 0, i32 0
  %arrayidx439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist438, i32 0, i64 0
  %osucc440 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx439, i32 0, i32 1
  %192 = load %union.rec*, %union.rec** %osucc440, align 8
  store %union.rec* %192, %union.rec** @xx_link, align 8
  %193 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %193, %union.rec** @zz_hold, align 8
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1441 = bitcast %union.rec* %194 to %struct.word_type*
  %olist442 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1441, i32 0, i32 0
  %arrayidx443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist442, i32 0, i64 1
  %osucc444 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx443, i32 0, i32 1
  %195 = load %union.rec*, %union.rec** %osucc444, align 8
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp445 = icmp eq %union.rec* %195, %196
  br i1 %cmp445, label %cond.true.447, label %cond.false.448

cond.true.447:                                    ; preds = %while.body.436
  br label %cond.end.477

cond.false.448:                                   ; preds = %while.body.436
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1449 = bitcast %union.rec* %197 to %struct.word_type*
  %olist450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1449, i32 0, i32 0
  %arrayidx451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist450, i32 0, i64 1
  %osucc452 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx451, i32 0, i32 1
  %198 = load %union.rec*, %union.rec** %osucc452, align 8
  store %union.rec* %198, %union.rec** @zz_res, align 8
  %199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1453 = bitcast %union.rec* %199 to %struct.word_type*
  %olist454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1453, i32 0, i32 0
  %arrayidx455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist454, i32 0, i64 1
  %opred456 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx455, i32 0, i32 0
  %200 = load %union.rec*, %union.rec** %opred456, align 8
  %201 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1457 = bitcast %union.rec* %201 to %struct.word_type*
  %olist458 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1457, i32 0, i32 0
  %arrayidx459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist458, i32 0, i64 1
  %opred460 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx459, i32 0, i32 0
  store %union.rec* %200, %union.rec** %opred460, align 8
  %202 = load %union.rec*, %union.rec** @zz_res, align 8
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1461 = bitcast %union.rec* %203 to %struct.word_type*
  %olist462 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1461, i32 0, i32 0
  %arrayidx463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist462, i32 0, i64 1
  %opred464 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx463, i32 0, i32 0
  %204 = load %union.rec*, %union.rec** %opred464, align 8
  %os1465 = bitcast %union.rec* %204 to %struct.word_type*
  %olist466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1465, i32 0, i32 0
  %arrayidx467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist466, i32 0, i64 1
  %osucc468 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx467, i32 0, i32 1
  store %union.rec* %202, %union.rec** %osucc468, align 8
  %205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1469 = bitcast %union.rec* %206 to %struct.word_type*
  %olist470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1469, i32 0, i32 0
  %arrayidx471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist470, i32 0, i64 1
  %osucc472 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx471, i32 0, i32 1
  store %union.rec* %205, %union.rec** %osucc472, align 8
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1473 = bitcast %union.rec* %207 to %struct.word_type*
  %olist474 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1473, i32 0, i32 0
  %arrayidx475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist474, i32 0, i64 1
  %opred476 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx475, i32 0, i32 0
  store %union.rec* %205, %union.rec** %opred476, align 8
  %208 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.477

cond.end.477:                                     ; preds = %cond.false.448, %cond.true.447
  %cond478 = phi %union.rec* [ null, %cond.true.447 ], [ %208, %cond.false.448 ]
  %209 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %209, %union.rec** @zz_hold, align 8
  %210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1479 = bitcast %union.rec* %210 to %struct.word_type*
  %olist480 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1479, i32 0, i32 0
  %arrayidx481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist480, i32 0, i64 0
  %osucc482 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx481, i32 0, i32 1
  %211 = load %union.rec*, %union.rec** %osucc482, align 8
  %212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp483 = icmp eq %union.rec* %211, %212
  br i1 %cmp483, label %cond.true.485, label %cond.false.486

cond.true.485:                                    ; preds = %cond.end.477
  br label %cond.end.515

cond.false.486:                                   ; preds = %cond.end.477
  %213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1487 = bitcast %union.rec* %213 to %struct.word_type*
  %olist488 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1487, i32 0, i32 0
  %arrayidx489 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist488, i32 0, i64 0
  %osucc490 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx489, i32 0, i32 1
  %214 = load %union.rec*, %union.rec** %osucc490, align 8
  store %union.rec* %214, %union.rec** @zz_res, align 8
  %215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1491 = bitcast %union.rec* %215 to %struct.word_type*
  %olist492 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1491, i32 0, i32 0
  %arrayidx493 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist492, i32 0, i64 0
  %opred494 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx493, i32 0, i32 0
  %216 = load %union.rec*, %union.rec** %opred494, align 8
  %217 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1495 = bitcast %union.rec* %217 to %struct.word_type*
  %olist496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1495, i32 0, i32 0
  %arrayidx497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist496, i32 0, i64 0
  %opred498 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx497, i32 0, i32 0
  store %union.rec* %216, %union.rec** %opred498, align 8
  %218 = load %union.rec*, %union.rec** @zz_res, align 8
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1499 = bitcast %union.rec* %219 to %struct.word_type*
  %olist500 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1499, i32 0, i32 0
  %arrayidx501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist500, i32 0, i64 0
  %opred502 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx501, i32 0, i32 0
  %220 = load %union.rec*, %union.rec** %opred502, align 8
  %os1503 = bitcast %union.rec* %220 to %struct.word_type*
  %olist504 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1503, i32 0, i32 0
  %arrayidx505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist504, i32 0, i64 0
  %osucc506 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx505, i32 0, i32 1
  store %union.rec* %218, %union.rec** %osucc506, align 8
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1507 = bitcast %union.rec* %222 to %struct.word_type*
  %olist508 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1507, i32 0, i32 0
  %arrayidx509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist508, i32 0, i64 0
  %osucc510 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx509, i32 0, i32 1
  store %union.rec* %221, %union.rec** %osucc510, align 8
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1511 = bitcast %union.rec* %223 to %struct.word_type*
  %olist512 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1511, i32 0, i32 0
  %arrayidx513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist512, i32 0, i64 0
  %opred514 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx513, i32 0, i32 0
  store %union.rec* %221, %union.rec** %opred514, align 8
  %224 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.515

cond.end.515:                                     ; preds = %cond.false.486, %cond.true.485
  %cond516 = phi %union.rec* [ null, %cond.true.485 ], [ %224, %cond.false.486 ]
  %225 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %225, %union.rec** @zz_hold, align 8
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %226, %union.rec** @zz_hold, align 8
  %227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1517 = bitcast %union.rec* %227 to %struct.word_type*
  %ou1518 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1517, i32 0, i32 1
  %os11519 = bitcast %union.FIRST_UNION* %ou1518 to %struct.anon*
  %otype520 = getelementptr inbounds %struct.anon, %struct.anon* %os11519, i32 0, i32 0
  %228 = load i8, i8* %otype520, align 1
  %conv521 = zext i8 %228 to i32
  %cmp522 = icmp eq i32 %conv521, 11
  br i1 %cmp522, label %cond.true.532, label %lor.lhs.false.524

lor.lhs.false.524:                                ; preds = %cond.end.515
  %229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1525 = bitcast %union.rec* %229 to %struct.word_type*
  %ou1526 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1525, i32 0, i32 1
  %os11527 = bitcast %union.FIRST_UNION* %ou1526 to %struct.anon*
  %otype528 = getelementptr inbounds %struct.anon, %struct.anon* %os11527, i32 0, i32 0
  %230 = load i8, i8* %otype528, align 1
  %conv529 = zext i8 %230 to i32
  %cmp530 = icmp eq i32 %conv529, 12
  br i1 %cmp530, label %cond.true.532, label %cond.false.538

cond.true.532:                                    ; preds = %lor.lhs.false.524, %cond.end.515
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1533 = bitcast %union.rec* %231 to %struct.word_type*
  %ou1534 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1533, i32 0, i32 1
  %os11535 = bitcast %union.FIRST_UNION* %ou1534 to %struct.anon*
  %orec_size536 = getelementptr inbounds %struct.anon, %struct.anon* %os11535, i32 0, i32 1
  %232 = load i8, i8* %orec_size536, align 1
  %conv537 = zext i8 %232 to i32
  br label %cond.end.546

cond.false.538:                                   ; preds = %lor.lhs.false.524
  %233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1539 = bitcast %union.rec* %233 to %struct.word_type*
  %ou1540 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1539, i32 0, i32 1
  %os11541 = bitcast %union.FIRST_UNION* %ou1540 to %struct.anon*
  %otype542 = getelementptr inbounds %struct.anon, %struct.anon* %os11541, i32 0, i32 0
  %234 = load i8, i8* %otype542, align 1
  %idxprom543 = zext i8 %234 to i64
  %arrayidx544 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom543
  %235 = load i8, i8* %arrayidx544, align 1
  %conv545 = zext i8 %235 to i32
  br label %cond.end.546

cond.end.546:                                     ; preds = %cond.false.538, %cond.true.532
  %cond547 = phi i32 [ %conv537, %cond.true.532 ], [ %conv545, %cond.false.538 ]
  store i32 %cond547, i32* @zz_size, align 4
  %236 = load i32, i32* @zz_size, align 4
  %idxprom548 = sext i32 %236 to i64
  %arrayidx549 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom548
  %237 = load %union.rec*, %union.rec** %arrayidx549, align 8
  %238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1550 = bitcast %union.rec* %238 to %struct.word_type*
  %olist551 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1550, i32 0, i32 0
  %arrayidx552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist551, i32 0, i64 0
  %opred553 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx552, i32 0, i32 0
  store %union.rec* %237, %union.rec** %opred553, align 8
  %239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %240 = load i32, i32* @zz_size, align 4
  %idxprom554 = sext i32 %240 to i64
  %arrayidx555 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom554
  store %union.rec* %239, %union.rec** %arrayidx555, align 8
  br label %while.cond.429

while.end.556:                                    ; preds = %while.cond.429
  %241 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %241, %union.rec** @zz_hold, align 8
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %242, %union.rec** @zz_hold, align 8
  %243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1557 = bitcast %union.rec* %243 to %struct.word_type*
  %ou1558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1557, i32 0, i32 1
  %os11559 = bitcast %union.FIRST_UNION* %ou1558 to %struct.anon*
  %otype560 = getelementptr inbounds %struct.anon, %struct.anon* %os11559, i32 0, i32 0
  %244 = load i8, i8* %otype560, align 1
  %conv561 = zext i8 %244 to i32
  %cmp562 = icmp eq i32 %conv561, 11
  br i1 %cmp562, label %cond.true.572, label %lor.lhs.false.564

lor.lhs.false.564:                                ; preds = %while.end.556
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1565 = bitcast %union.rec* %245 to %struct.word_type*
  %ou1566 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1565, i32 0, i32 1
  %os11567 = bitcast %union.FIRST_UNION* %ou1566 to %struct.anon*
  %otype568 = getelementptr inbounds %struct.anon, %struct.anon* %os11567, i32 0, i32 0
  %246 = load i8, i8* %otype568, align 1
  %conv569 = zext i8 %246 to i32
  %cmp570 = icmp eq i32 %conv569, 12
  br i1 %cmp570, label %cond.true.572, label %cond.false.578

cond.true.572:                                    ; preds = %lor.lhs.false.564, %while.end.556
  %247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1573 = bitcast %union.rec* %247 to %struct.word_type*
  %ou1574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1573, i32 0, i32 1
  %os11575 = bitcast %union.FIRST_UNION* %ou1574 to %struct.anon*
  %orec_size576 = getelementptr inbounds %struct.anon, %struct.anon* %os11575, i32 0, i32 1
  %248 = load i8, i8* %orec_size576, align 1
  %conv577 = zext i8 %248 to i32
  br label %cond.end.586

cond.false.578:                                   ; preds = %lor.lhs.false.564
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1579 = bitcast %union.rec* %249 to %struct.word_type*
  %ou1580 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1579, i32 0, i32 1
  %os11581 = bitcast %union.FIRST_UNION* %ou1580 to %struct.anon*
  %otype582 = getelementptr inbounds %struct.anon, %struct.anon* %os11581, i32 0, i32 0
  %250 = load i8, i8* %otype582, align 1
  %idxprom583 = zext i8 %250 to i64
  %arrayidx584 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom583
  %251 = load i8, i8* %arrayidx584, align 1
  %conv585 = zext i8 %251 to i32
  br label %cond.end.586

cond.end.586:                                     ; preds = %cond.false.578, %cond.true.572
  %cond587 = phi i32 [ %conv577, %cond.true.572 ], [ %conv585, %cond.false.578 ]
  store i32 %cond587, i32* @zz_size, align 4
  %252 = load i32, i32* @zz_size, align 4
  %idxprom588 = sext i32 %252 to i64
  %arrayidx589 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom588
  %253 = load %union.rec*, %union.rec** %arrayidx589, align 8
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1590 = bitcast %union.rec* %254 to %struct.word_type*
  %olist591 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1590, i32 0, i32 0
  %arrayidx592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist591, i32 0, i64 0
  %opred593 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx592, i32 0, i32 0
  store %union.rec* %253, %union.rec** %opred593, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %256 = load i32, i32* @zz_size, align 4
  %idxprom594 = sext i32 %256 to i64
  %arrayidx595 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom594
  store %union.rec* %255, %union.rec** %arrayidx595, align 8
  br label %if.end.596

if.end.596:                                       ; preds = %cond.end.586, %if.else
  br label %if.end.597

if.end.597:                                       ; preds = %if.end.596, %if.end
  ret void
}

declare void @FlushInners(%union.rec*, %union.rec*) #1

declare void @FreeGalley(%union.rec*, %union.rec*, %union.rec**, %union.rec*, %union.rec*) #1

declare void @DetachGalley(%union.rec*) #1

declare void @KillGalley(%union.rec*, i32) #1

declare i8* @Image(i32) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare i32 @CheckComponentOrder(%union.rec*, %union.rec*) #1

declare i32 @VerticalHyphenate(%union.rec*) #1

declare void @SetNeighbours(%union.rec*, i32, %union.rec**, %union.rec**, %union.rec**, %union.rec**, i32*) #1

declare void @Constrained(%union.rec*, %struct.CONSTRAINT*, i32, %union.rec**) #1

declare i32 @ActualGap(i32, i32, i32, %struct.GAP*, i32, i32) #1

declare void @Promote(%union.rec*, %union.rec*, %union.rec*, i32) #1

declare void @AdjustSize(%union.rec*, i32, i32, i32) #1

declare void @HandleHeader(%union.rec*, %union.rec*) #1

declare void @SwitchScope(%union.rec*) #1

declare %union.rec* @ReadFromFile(i16 zeroext, i64, i32) #1

declare void @UnSwitchScope(%union.rec*) #1

declare i8* @FileName(i16 zeroext) #1

declare void @SetTarget(%union.rec*) #1

declare %union.rec* @BuildEnclose(%union.rec*) #1

declare i32 @DbRetrieveNext(%union.rec*, i32*, %union.rec**, i8*, i8*, i16*, i64*, i32*, i64*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare %union.rec* @ConvertGalleyList(%union.rec*) #1

declare %union.rec* @FirstExternTarget(%union.rec*, %union.rec**) #1

declare %union.rec* @GallTargEval(%union.rec*, %struct.FILE_POS*) #1

declare i32 @DbRetrieve(%union.rec*, i32, %union.rec*, i8*, i8*, i16*, i64*, i32*, i64*) #1

declare %union.rec* @NextExternTarget(%union.rec*, %union.rec**) #1

declare void @GazumpOptimize(%union.rec*, %union.rec*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
