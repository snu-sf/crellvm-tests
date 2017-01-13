; ModuleID = './MultiSource.Benchmarks.MiBench/76.consumer-typeset.z23.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.font_rec = type { %struct.metrics*, i8*, i16*, %struct.composite_rec*, i32, %union.rec*, %union.rec*, i16, i16, i16*, i8*, i8*, i16* }
%struct.metrics = type { i16, i16, i16, i16, i16 }
%struct.composite_rec = type { i8, i16, i16 }
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
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.4 = type { i16, i16 }
%struct.anon.2 = type { i8, i8, i16 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.11 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"FAPO HSPAN/VSPAN!\00", align 1
@finfo = external global %struct.font_rec*, align 8
@font_curr_page = external global i32, align 4
@BackEnd = external global %struct.back_end_rec*, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"object deleted (it cannot be scaled vertically)\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"object deleted (it cannot be scaled horizontally)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"FAPO: horizontal scale factor!\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"FAPO: vertical scale factor!\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"NextDefiniteWithGap: g == nilobj!\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"FAPO: final start_group!\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"word %s horizontally scaled by factor %.2f (too wide for %s paragraph)\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"%s object horizontally scaled by factor %.2f (too wide for %s paragraph)\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"oversize object has size 0 or less\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"word %s deleted (too wide for %s paragraph)\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"%s object deleted (too wide for %s paragraph)\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@zz_free = external global [0 x %union.rec*], align 8
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_tmp = external global %union.rec*, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"FAPO: adjustable_gaps!\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"FixAndPrint: underline(prev)!\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"FixAndPrintObject: thr!\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"FixAndPrintObject: link or uplink!\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"FAPO: THR!\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"%s symbol ignored (out of place)\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"FixAndPrintObject:\00", align 1

; Function Attrs: nounwind uwtable
define %union.rec* @FixAndPrintObject(%union.rec* %x, i32 %xmk, i32 %xb, i32 %xf, i32 %dim, i32 %suppress, i32 %pg, i32 %count, i32* %actual_back, i32* %actual_fwd) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %xmk.addr = alloca i32, align 4
  %xb.addr = alloca i32, align 4
  %xf.addr = alloca i32, align 4
  %dim.addr = alloca i32, align 4
  %suppress.addr = alloca i32, align 4
  %pg.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %actual_back.addr = alloca i32*, align 8
  %actual_fwd.addr = alloca i32*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %prev = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %face = alloca %union.rec*, align 8
  %thr = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %uplink = alloca %union.rec*, align 8
  %mk = alloca i32, align 4
  %ymk = alloca i32, align 4
  %frame_size = alloca i32, align 4
  %back_edge = alloca i32, align 4
  %yb = alloca i32, align 4
  %yf = alloca i32, align 4
  %inc = alloca i32, align 4
  %f = alloca i32, align 4
  %aback = alloca i32, align 4
  %afwd = alloca i32, align 4
  %i = alloca i32, align 4
  %scale_factor = alloca float, align 4
  %jn = alloca i32, align 4
  %colc = alloca %struct.CONSTRAINT, align 4
  %rowc = alloca %struct.CONSTRAINT, align 4
  %yc = alloca %struct.CONSTRAINT, align 4
  %colc1239 = alloca %struct.CONSTRAINT, align 4
  %rowc1240 = alloca %struct.CONSTRAINT, align 4
  %yc1241 = alloca %struct.CONSTRAINT, align 4
  %tmp = alloca %union.rec*, align 8
  %pre = alloca %union.rec*, align 8
  %post = alloca %union.rec*, align 8
  %tmp1557 = alloca %union.rec*, align 8
  %pre1559 = alloca %union.rec*, align 8
  %post1561 = alloca %union.rec*, align 8
  %start_group = alloca %union.rec*, align 8
  %zlink = alloca %union.rec*, align 8
  %m = alloca %union.rec*, align 8
  %dble_found = alloca i32, align 4
  %b = alloca i32, align 4
  %f2665 = alloca i32, align 4
  %dlen = alloca i32, align 4
  %will_adjust = alloca i32, align 4
  %adjusting = alloca i32, align 4
  %actual_size = alloca i32, align 4
  %adjust_indent = alloca i32, align 4
  %frame_size3328 = alloca i32, align 4
  %back_edge3330 = alloca i32, align 4
  %adjust_inc = alloca i32, align 4
  %inc3333 = alloca i32, align 4
  %adjust_sofar = alloca i32, align 4
  %adjustable_gaps = alloca i32, align 4
  %gaps_sofar = alloca i32, align 4
  %underlining = alloca i32, align 4
  %underline_xstart = alloca i32, align 4
  %underline_font = alloca i32, align 4
  %underline_colour = alloca i32, align 4
  %urec = alloca %union.rec*, align 8
  %last_bad_gap = alloca %union.rec*, align 8
  %c = alloca %struct.CONSTRAINT, align 4
  %prnt = alloca %union.rec*, align 8
  %tmp4816 = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %xmk, i32* %xmk.addr, align 4
  store i32 %xb, i32* %xb.addr, align 4
  store i32 %xf, i32* %xf.addr, align 4
  store i32 %dim, i32* %dim.addr, align 4
  store i32 %suppress, i32* %suppress.addr, align 4
  store i32 %pg, i32* %pg.addr, align 4
  store i32 %count, i32* %count.addr, align 4
  store i32* %actual_back, i32** %actual_back.addr, align 8
  store i32* %actual_fwd, i32** %actual_fwd.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %0, %union.rec** %res, align 8
  %1 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %2 = load i8, i8* %otype, align 1
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.default.5821 [
    i32 2, label %sw.bb
    i32 5, label %sw.bb
    i32 4, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 44, label %sw.bb.1
    i32 42, label %sw.bb.1
    i32 43, label %sw.bb.1
    i32 45, label %sw.bb.193
    i32 46, label %sw.bb.193
    i32 11, label %sw.bb.386
    i32 12, label %sw.bb.386
    i32 26, label %sw.bb.429
    i32 27, label %sw.bb.429
    i32 28, label %sw.bb.487
    i32 29, label %sw.bb.487
    i32 36, label %sw.bb.591
    i32 37, label %sw.bb.591
    i32 24, label %sw.bb.644
    i32 25, label %sw.bb.644
    i32 38, label %sw.bb.644
    i32 39, label %sw.bb.644
    i32 40, label %sw.bb.644
    i32 41, label %sw.bb.644
    i32 31, label %sw.bb.692
    i32 30, label %sw.bb.791
    i32 34, label %sw.bb.938
    i32 35, label %sw.bb.1054
    i32 51, label %sw.bb.1110
    i32 50, label %sw.bb.1173
    i32 96, label %sw.bb.1298
    i32 97, label %sw.bb.1477
    i32 98, label %sw.bb.1677
    i32 99, label %sw.bb.1677
    i32 94, label %sw.bb.1788
    i32 95, label %sw.bb.1788
    i32 9, label %sw.bb.1858
    i32 19, label %sw.bb.1930
    i32 18, label %sw.bb.1930
    i32 17, label %sw.bb.3319
    i32 16, label %sw.bb.5491
    i32 15, label %sw.bb.5491
    i32 20, label %sw.bb.5806
    i32 21, label %sw.bb.5806
    i32 22, label %sw.bb.5806
    i32 23, label %sw.bb.5806
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  %3 = load i32, i32* %xb.addr, align 4
  %4 = load i32*, i32** %actual_back.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %xf.addr, align 4
  %6 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %5, i32* %6, align 4
  br label %sw.epilog.5829

sw.bb.1:                                          ; preds = %entry, %entry, %entry
  %7 = load i32, i32* %dim.addr, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.1
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %osucc, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.1
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  %os14 = bitcast %union.rec* %10 to %struct.word_type*
  %olist5 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx6, i32 0, i32 0
  %11 = load %union.rec*, %union.rec** %opred, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ %9, %cond.true ], [ %11, %cond.false ]
  %os17 = bitcast %union.rec* %cond to %struct.word_type*
  %olist8 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8, i32 0, i64 1
  %opred10 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx9, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %opred10, align 8
  store %union.rec* %12, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %13 = load %union.rec*, %union.rec** %y, align 8
  %os111 = bitcast %union.rec* %13 to %struct.word_type*
  %ou112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 1
  %os1113 = bitcast %union.FIRST_UNION* %ou112 to %struct.anon*
  %otype14 = getelementptr inbounds %struct.anon, %struct.anon* %os1113, i32 0, i32 0
  %14 = load i8, i8* %otype14, align 1
  %conv15 = zext i8 %14 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %union.rec*, %union.rec** %y, align 8
  %os118 = bitcast %union.rec* %15 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %opred21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  %16 = load %union.rec*, %union.rec** %opred21, align 8
  store %union.rec* %16, %union.rec** %y, align 8
  %17 = load i32, i32* %count.addr, align 4
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, i32* %count.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %union.rec*, %union.rec** %y, align 8
  %os123 = bitcast %union.rec* %18 to %struct.word_type*
  %ou124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 1
  %os1125 = bitcast %union.FIRST_UNION* %ou124 to %struct.anon*
  %otype26 = getelementptr inbounds %struct.anon, %struct.anon* %os1125, i32 0, i32 0
  %19 = load i8, i8* %otype26, align 1
  %conv27 = zext i8 %19 to i32
  %cmp28 = icmp eq i32 %conv27, 13
  br i1 %cmp28, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %20 = load %union.rec*, %union.rec** %y, align 8
  %os130 = bitcast %union.rec* %20 to %struct.word_type*
  %ou131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 1
  %os1132 = bitcast %union.FIRST_UNION* %ou131 to %struct.anon*
  %otype33 = getelementptr inbounds %struct.anon, %struct.anon* %os1132, i32 0, i32 0
  %21 = load i8, i8* %otype33, align 1
  %conv34 = zext i8 %21 to i32
  %cmp35 = icmp eq i32 %conv34, 14
  br i1 %cmp35, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.end
  %22 = load %union.rec*, %union.rec** %y, align 8
  %os137 = bitcast %union.rec* %22 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 0
  %osucc40 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 1
  %23 = load %union.rec*, %union.rec** %osucc40, align 8
  %os141 = bitcast %union.rec* %23 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 1
  %opred44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %opred44, align 8
  store %union.rec* %24, %union.rec** %z, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.54, %if.then
  %25 = load %union.rec*, %union.rec** %z, align 8
  %os146 = bitcast %union.rec* %25 to %struct.word_type*
  %ou147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 1
  %os1148 = bitcast %union.FIRST_UNION* %ou147 to %struct.anon*
  %otype49 = getelementptr inbounds %struct.anon, %struct.anon* %os1148, i32 0, i32 0
  %26 = load i8, i8* %otype49, align 1
  %conv50 = zext i8 %26 to i32
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %for.body.53, label %for.end.59

for.body.53:                                      ; preds = %for.cond.45
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.53
  %27 = load %union.rec*, %union.rec** %z, align 8
  %os155 = bitcast %union.rec* %27 to %struct.word_type*
  %olist56 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist56, i32 0, i64 1
  %opred58 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx57, i32 0, i32 0
  %28 = load %union.rec*, %union.rec** %opred58, align 8
  store %union.rec* %28, %union.rec** %z, align 8
  br label %for.cond.45

for.end.59:                                       ; preds = %for.cond.45
  %29 = load i32, i32* %dim.addr, align 4
  %cmp60 = icmp eq i32 %29, 0
  br i1 %cmp60, label %cond.true.62, label %cond.false.67

cond.true.62:                                     ; preds = %for.end.59
  %30 = load %union.rec*, %union.rec** %x.addr, align 8
  %os163 = bitcast %union.rec* %30 to %struct.word_type*
  %olist64 = getelementptr inbounds %struct.word_type, %struct.word_type* %os163, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist64, i32 0, i64 1
  %osucc66 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx65, i32 0, i32 1
  %31 = load %union.rec*, %union.rec** %osucc66, align 8
  br label %cond.end.72

cond.false.67:                                    ; preds = %for.end.59
  %32 = load %union.rec*, %union.rec** %x.addr, align 8
  %os168 = bitcast %union.rec* %32 to %struct.word_type*
  %olist69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist69, i32 0, i64 1
  %opred71 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx70, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %opred71, align 8
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.67, %cond.true.62
  %cond73 = phi %union.rec* [ %31, %cond.true.62 ], [ %33, %cond.false.67 ]
  %os174 = bitcast %union.rec* %cond73 to %struct.word_type*
  %olist75 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist75, i32 0, i64 0
  %opred77 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx76, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %opred77, align 8
  store %union.rec* %34, %union.rec** %thr, align 8
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.87, %cond.end.72
  %35 = load %union.rec*, %union.rec** %thr, align 8
  %os179 = bitcast %union.rec* %35 to %struct.word_type*
  %ou180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os179, i32 0, i32 1
  %os1181 = bitcast %union.FIRST_UNION* %ou180 to %struct.anon*
  %otype82 = getelementptr inbounds %struct.anon, %struct.anon* %os1181, i32 0, i32 0
  %36 = load i8, i8* %otype82, align 1
  %conv83 = zext i8 %36 to i32
  %cmp84 = icmp eq i32 %conv83, 0
  br i1 %cmp84, label %for.body.86, label %for.end.92

for.body.86:                                      ; preds = %for.cond.78
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.86
  %37 = load %union.rec*, %union.rec** %thr, align 8
  %os188 = bitcast %union.rec* %37 to %struct.word_type*
  %olist89 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist89, i32 0, i64 0
  %opred91 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx90, i32 0, i32 0
  %38 = load %union.rec*, %union.rec** %opred91, align 8
  store %union.rec* %38, %union.rec** %thr, align 8
  br label %for.cond.78

for.end.92:                                       ; preds = %for.cond.78
  %39 = load i32, i32* %xmk.addr, align 4
  %40 = load i32, i32* %dim.addr, align 4
  %idxprom = sext i32 %40 to i64
  %41 = load %union.rec*, %union.rec** %thr, align 8
  %os193 = bitcast %union.rec* %41 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 %idxprom
  %42 = load i32, i32* %arrayidx94, align 4
  %sub = sub nsw i32 %39, %42
  %43 = load i32, i32* %dim.addr, align 4
  %idxprom95 = sext i32 %43 to i64
  %44 = load %union.rec*, %union.rec** %z, align 8
  %os196 = bitcast %union.rec* %44 to %struct.word_type*
  %ou397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os196, i32 0, i32 3
  %os3198 = bitcast %union.THIRD_UNION* %ou397 to %struct.anon.6*
  %oback99 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3198, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [2 x i32], [2 x i32]* %oback99, i32 0, i64 %idxprom95
  %45 = load i32, i32* %arrayidx100, align 4
  %add = add nsw i32 %sub, %45
  %46 = load %union.rec*, %union.rec** %y, align 8
  %os2 = bitcast %union.rec* %46 to %struct.closure_type*
  %oux = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 6
  %osave_mark = bitcast %union.anon.12* %oux to i32*
  store i32 %add, i32* %osave_mark, align 4
  %47 = load %union.rec*, %union.rec** %y, align 8
  %os1101 = bitcast %union.rec* %47 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %48 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %48, align 4
  %bf.lshr = lshr i32 %bf.load, 23
  %bf.clear = and i32 %bf.lshr, 63
  %inc102 = add i32 %bf.clear, 1
  %bf.load103 = load i32, i32* %48, align 4
  %bf.value = and i32 %inc102, 63
  %bf.shl = shl i32 %bf.value, 23
  %bf.clear104 = and i32 %bf.load103, -528482305
  %bf.set = or i32 %bf.clear104, %bf.shl
  store i32 %bf.set, i32* %48, align 4
  %49 = load %union.rec*, %union.rec** %y, align 8
  %os1105 = bitcast %union.rec* %49 to %struct.word_type*
  %ou2106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1105, i32 0, i32 2
  %os22107 = bitcast %union.SECOND_UNION* %ou2106 to %struct.anon.1*
  %50 = bitcast %struct.anon.1* %os22107 to i32*
  %bf.load108 = load i32, i32* %50, align 4
  %bf.clear109 = and i32 %bf.load108, 4095
  %cmp110 = icmp eq i32 %bf.value, %bf.clear109
  br i1 %cmp110, label %if.then.112, label %if.end

if.then.112:                                      ; preds = %for.end.92
  %51 = load i32, i32* %xmk.addr, align 4
  %52 = load i32, i32* %xf.addr, align 4
  %add113 = add nsw i32 %51, %52
  %53 = load %union.rec*, %union.rec** %y, align 8
  %os2114 = bitcast %union.rec* %53 to %struct.closure_type*
  %oux115 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2114, i32 0, i32 6
  %osave_mark116 = bitcast %union.anon.12* %oux115 to i32*
  %54 = load i32, i32* %osave_mark116, align 4
  %sub117 = sub nsw i32 %add113, %54
  %55 = load i32, i32* %dim.addr, align 4
  %idxprom118 = sext i32 %55 to i64
  %56 = load %union.rec*, %union.rec** %z, align 8
  %os1119 = bitcast %union.rec* %56 to %struct.word_type*
  %ou3120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 3
  %os31121 = bitcast %union.THIRD_UNION* %ou3120 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31121, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 %idxprom118
  %57 = load i32, i32* %arrayidx122, align 4
  %cmp123 = icmp slt i32 %sub117, %57
  br i1 %cmp123, label %cond.true.125, label %cond.false.132

cond.true.125:                                    ; preds = %if.then.112
  %58 = load i32, i32* %dim.addr, align 4
  %idxprom126 = sext i32 %58 to i64
  %59 = load %union.rec*, %union.rec** %z, align 8
  %os1127 = bitcast %union.rec* %59 to %struct.word_type*
  %ou3128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1127, i32 0, i32 3
  %os31129 = bitcast %union.THIRD_UNION* %ou3128 to %struct.anon.6*
  %ofwd130 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31129, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd130, i32 0, i64 %idxprom126
  %60 = load i32, i32* %arrayidx131, align 4
  br label %cond.end.138

cond.false.132:                                   ; preds = %if.then.112
  %61 = load i32, i32* %xmk.addr, align 4
  %62 = load i32, i32* %xf.addr, align 4
  %add133 = add nsw i32 %61, %62
  %63 = load %union.rec*, %union.rec** %y, align 8
  %os2134 = bitcast %union.rec* %63 to %struct.closure_type*
  %oux135 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2134, i32 0, i32 6
  %osave_mark136 = bitcast %union.anon.12* %oux135 to i32*
  %64 = load i32, i32* %osave_mark136, align 4
  %sub137 = sub nsw i32 %add133, %64
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.132, %cond.true.125
  %cond139 = phi i32 [ %60, %cond.true.125 ], [ %sub137, %cond.false.132 ]
  store i32 %cond139, i32* %yf, align 4
  %65 = load i32, i32* %yf, align 4
  %66 = load %union.rec*, %union.rec** %y, align 8
  %os2140 = bitcast %union.rec* %66 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2140, i32 0, i32 4
  %oconstraint = bitcast %union.FOURTH_UNION* %ou4 to %struct.CONSTRAINT*
  %obfc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint, i32 0, i32 1
  %67 = load i32, i32* %obfc, align 4
  %68 = load i32, i32* %dim.addr, align 4
  %idxprom141 = sext i32 %68 to i64
  %69 = load %union.rec*, %union.rec** %z, align 8
  %os1142 = bitcast %union.rec* %69 to %struct.word_type*
  %ou3143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1142, i32 0, i32 3
  %os31144 = bitcast %union.THIRD_UNION* %ou3143 to %struct.anon.6*
  %oback145 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x i32], [2 x i32]* %oback145, i32 0, i64 %idxprom141
  %70 = load i32, i32* %arrayidx146, align 4
  %sub147 = sub nsw i32 %67, %70
  %cmp148 = icmp slt i32 %65, %sub147
  br i1 %cmp148, label %cond.true.150, label %cond.false.162

cond.true.150:                                    ; preds = %cond.end.138
  %71 = load %union.rec*, %union.rec** %y, align 8
  %os2151 = bitcast %union.rec* %71 to %struct.closure_type*
  %ou4152 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2151, i32 0, i32 4
  %oconstraint153 = bitcast %union.FOURTH_UNION* %ou4152 to %struct.CONSTRAINT*
  %obfc154 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint153, i32 0, i32 1
  %72 = load i32, i32* %obfc154, align 4
  %73 = load i32, i32* %dim.addr, align 4
  %idxprom155 = sext i32 %73 to i64
  %74 = load %union.rec*, %union.rec** %z, align 8
  %os1156 = bitcast %union.rec* %74 to %struct.word_type*
  %ou3157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1156, i32 0, i32 3
  %os31158 = bitcast %union.THIRD_UNION* %ou3157 to %struct.anon.6*
  %oback159 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31158, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [2 x i32], [2 x i32]* %oback159, i32 0, i64 %idxprom155
  %75 = load i32, i32* %arrayidx160, align 4
  %sub161 = sub nsw i32 %72, %75
  br label %cond.end.163

cond.false.162:                                   ; preds = %cond.end.138
  %76 = load i32, i32* %yf, align 4
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.162, %cond.true.150
  %cond164 = phi i32 [ %sub161, %cond.true.150 ], [ %76, %cond.false.162 ]
  store i32 %cond164, i32* %yf, align 4
  %77 = load %union.rec*, %union.rec** %z, align 8
  %78 = load %union.rec*, %union.rec** %y, align 8
  %os2165 = bitcast %union.rec* %78 to %struct.closure_type*
  %oux166 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2165, i32 0, i32 6
  %osave_mark167 = bitcast %union.anon.12* %oux166 to i32*
  %79 = load i32, i32* %osave_mark167, align 4
  %80 = load i32, i32* %dim.addr, align 4
  %idxprom168 = sext i32 %80 to i64
  %81 = load %union.rec*, %union.rec** %z, align 8
  %os1169 = bitcast %union.rec* %81 to %struct.word_type*
  %ou3170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1169, i32 0, i32 3
  %os31171 = bitcast %union.THIRD_UNION* %ou3170 to %struct.anon.6*
  %oback172 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31171, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [2 x i32], [2 x i32]* %oback172, i32 0, i64 %idxprom168
  %82 = load i32, i32* %arrayidx173, align 4
  %83 = load i32, i32* %yf, align 4
  %84 = load i32, i32* %dim.addr, align 4
  %85 = load i32, i32* %pg.addr, align 4
  %call = call %union.rec* @FixAndPrintObject(%union.rec* %77, i32 %79, i32 %82, i32 %83, i32 %84, i32 0, i32 %85, i32 1, i32* %aback, i32* %afwd)
  store %union.rec* %call, %union.rec** %z, align 8
  %86 = load %union.rec*, %union.rec** %y, align 8
  %os1174 = bitcast %union.rec* %86 to %struct.word_type*
  %ou2175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 2
  %os22176 = bitcast %union.SECOND_UNION* %ou2175 to %struct.anon.1*
  %87 = bitcast %struct.anon.1* %os22176 to i32*
  %bf.load177 = load i32, i32* %87, align 4
  %bf.clear178 = and i32 %bf.load177, -528482305
  store i32 %bf.clear178, i32* %87, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.163, %for.end.92
  %88 = load i32, i32* %dim.addr, align 4
  %idxprom179 = sext i32 %88 to i64
  %89 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1180 = bitcast %union.rec* %89 to %struct.word_type*
  %ou3181 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1180, i32 0, i32 3
  %os31182 = bitcast %union.THIRD_UNION* %ou3181 to %struct.anon.6*
  %oback183 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31182, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [2 x i32], [2 x i32]* %oback183, i32 0, i64 %idxprom179
  %90 = load i32, i32* %arrayidx184, align 4
  %91 = load i32*, i32** %actual_back.addr, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %dim.addr, align 4
  %idxprom185 = sext i32 %92 to i64
  %93 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1186 = bitcast %union.rec* %93 to %struct.word_type*
  %ou3187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 3
  %os31188 = bitcast %union.THIRD_UNION* %ou3187 to %struct.anon.6*
  %ofwd189 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31188, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd189, i32 0, i64 %idxprom185
  %94 = load i32, i32* %arrayidx190, align 4
  %95 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %94, i32* %95, align 4
  br label %if.end.192

if.else:                                          ; preds = %lor.lhs.false
  %96 = load %union.rec*, %union.rec** %y, align 8
  %97 = load i32, i32* %xmk.addr, align 4
  %98 = load i32, i32* %xb.addr, align 4
  %99 = load i32, i32* %xf.addr, align 4
  %100 = load i32, i32* %dim.addr, align 4
  %101 = load i32, i32* %suppress.addr, align 4
  %102 = load i32, i32* %pg.addr, align 4
  %103 = load i32, i32* %count.addr, align 4
  %104 = load i32*, i32** %actual_back.addr, align 8
  %105 = load i32*, i32** %actual_fwd.addr, align 8
  %call191 = call %union.rec* @FixAndPrintObject(%union.rec* %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32* %104, i32* %105)
  store %union.rec* %call191, %union.rec** %y, align 8
  br label %if.end.192

if.end.192:                                       ; preds = %if.else, %if.end
  br label %sw.epilog.5829

sw.bb.193:                                        ; preds = %entry, %entry
  %106 = load i32, i32* %dim.addr, align 4
  %cmp194 = icmp eq i32 %106, 0
  %conv195 = zext i1 %cmp194 to i32
  %107 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1196 = bitcast %union.rec* %107 to %struct.word_type*
  %ou1197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1196, i32 0, i32 1
  %os11198 = bitcast %union.FIRST_UNION* %ou1197 to %struct.anon*
  %otype199 = getelementptr inbounds %struct.anon, %struct.anon* %os11198, i32 0, i32 0
  %108 = load i8, i8* %otype199, align 1
  %conv200 = zext i8 %108 to i32
  %cmp201 = icmp eq i32 %conv200, 45
  %conv202 = zext i1 %cmp201 to i32
  %cmp203 = icmp eq i32 %conv195, %conv202
  br i1 %cmp203, label %if.then.205, label %if.end.385

if.then.205:                                      ; preds = %sw.bb.193
  %109 = load i32, i32* %dim.addr, align 4
  %cmp206 = icmp eq i32 %109, 0
  br i1 %cmp206, label %cond.true.208, label %cond.false.213

cond.true.208:                                    ; preds = %if.then.205
  %110 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1209 = bitcast %union.rec* %110 to %struct.word_type*
  %olist210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist210, i32 0, i64 0
  %osucc212 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx211, i32 0, i32 1
  %111 = load %union.rec*, %union.rec** %osucc212, align 8
  br label %cond.end.218

cond.false.213:                                   ; preds = %if.then.205
  %112 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1214 = bitcast %union.rec* %112 to %struct.word_type*
  %olist215 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist215, i32 0, i64 0
  %opred217 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx216, i32 0, i32 0
  %113 = load %union.rec*, %union.rec** %opred217, align 8
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.213, %cond.true.208
  %cond219 = phi %union.rec* [ %111, %cond.true.208 ], [ %113, %cond.false.213 ]
  %os1220 = bitcast %union.rec* %cond219 to %struct.word_type*
  %olist221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1220, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist221, i32 0, i64 1
  %opred223 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx222, i32 0, i32 0
  %114 = load %union.rec*, %union.rec** %opred223, align 8
  store %union.rec* %114, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.224

for.cond.224:                                     ; preds = %for.inc.233, %cond.end.218
  %115 = load %union.rec*, %union.rec** %y, align 8
  %os1225 = bitcast %union.rec* %115 to %struct.word_type*
  %ou1226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1225, i32 0, i32 1
  %os11227 = bitcast %union.FIRST_UNION* %ou1226 to %struct.anon*
  %otype228 = getelementptr inbounds %struct.anon, %struct.anon* %os11227, i32 0, i32 0
  %116 = load i8, i8* %otype228, align 1
  %conv229 = zext i8 %116 to i32
  %cmp230 = icmp eq i32 %conv229, 0
  br i1 %cmp230, label %for.body.232, label %for.end.239

for.body.232:                                     ; preds = %for.cond.224
  br label %for.inc.233

for.inc.233:                                      ; preds = %for.body.232
  %117 = load %union.rec*, %union.rec** %y, align 8
  %os1234 = bitcast %union.rec* %117 to %struct.word_type*
  %olist235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1234, i32 0, i32 0
  %arrayidx236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist235, i32 0, i64 1
  %opred237 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx236, i32 0, i32 0
  %118 = load %union.rec*, %union.rec** %opred237, align 8
  store %union.rec* %118, %union.rec** %y, align 8
  %119 = load i32, i32* %count.addr, align 4
  %inc238 = add nsw i32 %119, 1
  store i32 %inc238, i32* %count.addr, align 4
  br label %for.cond.224

for.end.239:                                      ; preds = %for.cond.224
  %120 = load %union.rec*, %union.rec** %y, align 8
  %os1240 = bitcast %union.rec* %120 to %struct.word_type*
  %ou1241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1240, i32 0, i32 1
  %os11242 = bitcast %union.FIRST_UNION* %ou1241 to %struct.anon*
  %otype243 = getelementptr inbounds %struct.anon, %struct.anon* %os11242, i32 0, i32 0
  %121 = load i8, i8* %otype243, align 1
  %conv244 = zext i8 %121 to i32
  %cmp245 = icmp eq i32 %conv244, 13
  br i1 %cmp245, label %if.end.257, label %lor.lhs.false.247

lor.lhs.false.247:                                ; preds = %for.end.239
  %122 = load %union.rec*, %union.rec** %y, align 8
  %os1248 = bitcast %union.rec* %122 to %struct.word_type*
  %ou1249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1248, i32 0, i32 1
  %os11250 = bitcast %union.FIRST_UNION* %ou1249 to %struct.anon*
  %otype251 = getelementptr inbounds %struct.anon, %struct.anon* %os11250, i32 0, i32 0
  %123 = load i8, i8* %otype251, align 1
  %conv252 = zext i8 %123 to i32
  %cmp253 = icmp eq i32 %conv252, 14
  br i1 %cmp253, label %if.end.257, label %if.then.255

if.then.255:                                      ; preds = %lor.lhs.false.247
  %124 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call256 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %124, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.255, %lor.lhs.false.247, %for.end.239
  %125 = load %union.rec*, %union.rec** %y, align 8
  %os1258 = bitcast %union.rec* %125 to %struct.word_type*
  %ou2259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1258, i32 0, i32 2
  %os22260 = bitcast %union.SECOND_UNION* %ou2259 to %struct.anon.1*
  %126 = bitcast %struct.anon.1* %os22260 to i32*
  %bf.load261 = load i32, i32* %126, align 4
  %bf.lshr262 = lshr i32 %bf.load261, 23
  %bf.clear263 = and i32 %bf.lshr262, 63
  %inc264 = add i32 %bf.clear263, 1
  %bf.load265 = load i32, i32* %126, align 4
  %bf.value266 = and i32 %inc264, 63
  %bf.shl267 = shl i32 %bf.value266, 23
  %bf.clear268 = and i32 %bf.load265, -528482305
  %bf.set269 = or i32 %bf.clear268, %bf.shl267
  store i32 %bf.set269, i32* %126, align 4
  %127 = load %union.rec*, %union.rec** %y, align 8
  %os1270 = bitcast %union.rec* %127 to %struct.word_type*
  %ou2271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1270, i32 0, i32 2
  %os22272 = bitcast %union.SECOND_UNION* %ou2271 to %struct.anon.1*
  %128 = bitcast %struct.anon.1* %os22272 to i32*
  %bf.load273 = load i32, i32* %128, align 4
  %bf.clear274 = and i32 %bf.load273, 4095
  %cmp275 = icmp eq i32 %bf.value266, %bf.clear274
  br i1 %cmp275, label %if.then.277, label %if.end.384

if.then.277:                                      ; preds = %if.end.257
  %129 = load %union.rec*, %union.rec** %y, align 8
  %os1278 = bitcast %union.rec* %129 to %struct.word_type*
  %olist279 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1278, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist279, i32 0, i64 0
  %osucc281 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx280, i32 0, i32 1
  %130 = load %union.rec*, %union.rec** %osucc281, align 8
  %os1282 = bitcast %union.rec* %130 to %struct.word_type*
  %olist283 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1282, i32 0, i32 0
  %arrayidx284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist283, i32 0, i64 1
  %opred285 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx284, i32 0, i32 0
  %131 = load %union.rec*, %union.rec** %opred285, align 8
  store %union.rec* %131, %union.rec** %z, align 8
  br label %for.cond.286

for.cond.286:                                     ; preds = %for.inc.295, %if.then.277
  %132 = load %union.rec*, %union.rec** %z, align 8
  %os1287 = bitcast %union.rec* %132 to %struct.word_type*
  %ou1288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1287, i32 0, i32 1
  %os11289 = bitcast %union.FIRST_UNION* %ou1288 to %struct.anon*
  %otype290 = getelementptr inbounds %struct.anon, %struct.anon* %os11289, i32 0, i32 0
  %133 = load i8, i8* %otype290, align 1
  %conv291 = zext i8 %133 to i32
  %cmp292 = icmp eq i32 %conv291, 0
  br i1 %cmp292, label %for.body.294, label %for.end.300

for.body.294:                                     ; preds = %for.cond.286
  br label %for.inc.295

for.inc.295:                                      ; preds = %for.body.294
  %134 = load %union.rec*, %union.rec** %z, align 8
  %os1296 = bitcast %union.rec* %134 to %struct.word_type*
  %olist297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1296, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist297, i32 0, i64 1
  %opred299 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx298, i32 0, i32 0
  %135 = load %union.rec*, %union.rec** %opred299, align 8
  store %union.rec* %135, %union.rec** %z, align 8
  br label %for.cond.286

for.end.300:                                      ; preds = %for.cond.286
  %136 = load i32, i32* %xmk.addr, align 4
  %137 = load i32, i32* %xf.addr, align 4
  %add301 = add nsw i32 %136, %137
  %138 = load %union.rec*, %union.rec** %y, align 8
  %os2302 = bitcast %union.rec* %138 to %struct.closure_type*
  %oux303 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2302, i32 0, i32 6
  %osave_mark304 = bitcast %union.anon.12* %oux303 to i32*
  %139 = load i32, i32* %osave_mark304, align 4
  %sub305 = sub nsw i32 %add301, %139
  %140 = load i32, i32* %dim.addr, align 4
  %idxprom306 = sext i32 %140 to i64
  %141 = load %union.rec*, %union.rec** %z, align 8
  %os1307 = bitcast %union.rec* %141 to %struct.word_type*
  %ou3308 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1307, i32 0, i32 3
  %os31309 = bitcast %union.THIRD_UNION* %ou3308 to %struct.anon.6*
  %ofwd310 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31309, i32 0, i32 1
  %arrayidx311 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd310, i32 0, i64 %idxprom306
  %142 = load i32, i32* %arrayidx311, align 4
  %cmp312 = icmp slt i32 %sub305, %142
  br i1 %cmp312, label %cond.true.314, label %cond.false.321

cond.true.314:                                    ; preds = %for.end.300
  %143 = load i32, i32* %dim.addr, align 4
  %idxprom315 = sext i32 %143 to i64
  %144 = load %union.rec*, %union.rec** %z, align 8
  %os1316 = bitcast %union.rec* %144 to %struct.word_type*
  %ou3317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1316, i32 0, i32 3
  %os31318 = bitcast %union.THIRD_UNION* %ou3317 to %struct.anon.6*
  %ofwd319 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31318, i32 0, i32 1
  %arrayidx320 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd319, i32 0, i64 %idxprom315
  %145 = load i32, i32* %arrayidx320, align 4
  br label %cond.end.327

cond.false.321:                                   ; preds = %for.end.300
  %146 = load i32, i32* %xmk.addr, align 4
  %147 = load i32, i32* %xf.addr, align 4
  %add322 = add nsw i32 %146, %147
  %148 = load %union.rec*, %union.rec** %y, align 8
  %os2323 = bitcast %union.rec* %148 to %struct.closure_type*
  %oux324 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2323, i32 0, i32 6
  %osave_mark325 = bitcast %union.anon.12* %oux324 to i32*
  %149 = load i32, i32* %osave_mark325, align 4
  %sub326 = sub nsw i32 %add322, %149
  br label %cond.end.327

cond.end.327:                                     ; preds = %cond.false.321, %cond.true.314
  %cond328 = phi i32 [ %145, %cond.true.314 ], [ %sub326, %cond.false.321 ]
  store i32 %cond328, i32* %yf, align 4
  %150 = load i32, i32* %yf, align 4
  %151 = load %union.rec*, %union.rec** %y, align 8
  %os2329 = bitcast %union.rec* %151 to %struct.closure_type*
  %ou4330 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2329, i32 0, i32 4
  %oconstraint331 = bitcast %union.FOURTH_UNION* %ou4330 to %struct.CONSTRAINT*
  %obfc332 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint331, i32 0, i32 1
  %152 = load i32, i32* %obfc332, align 4
  %153 = load i32, i32* %dim.addr, align 4
  %idxprom333 = sext i32 %153 to i64
  %154 = load %union.rec*, %union.rec** %z, align 8
  %os1334 = bitcast %union.rec* %154 to %struct.word_type*
  %ou3335 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1334, i32 0, i32 3
  %os31336 = bitcast %union.THIRD_UNION* %ou3335 to %struct.anon.6*
  %oback337 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31336, i32 0, i32 0
  %arrayidx338 = getelementptr inbounds [2 x i32], [2 x i32]* %oback337, i32 0, i64 %idxprom333
  %155 = load i32, i32* %arrayidx338, align 4
  %sub339 = sub nsw i32 %152, %155
  %cmp340 = icmp slt i32 %150, %sub339
  br i1 %cmp340, label %cond.true.342, label %cond.false.354

cond.true.342:                                    ; preds = %cond.end.327
  %156 = load %union.rec*, %union.rec** %y, align 8
  %os2343 = bitcast %union.rec* %156 to %struct.closure_type*
  %ou4344 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2343, i32 0, i32 4
  %oconstraint345 = bitcast %union.FOURTH_UNION* %ou4344 to %struct.CONSTRAINT*
  %obfc346 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint345, i32 0, i32 1
  %157 = load i32, i32* %obfc346, align 4
  %158 = load i32, i32* %dim.addr, align 4
  %idxprom347 = sext i32 %158 to i64
  %159 = load %union.rec*, %union.rec** %z, align 8
  %os1348 = bitcast %union.rec* %159 to %struct.word_type*
  %ou3349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 3
  %os31350 = bitcast %union.THIRD_UNION* %ou3349 to %struct.anon.6*
  %oback351 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31350, i32 0, i32 0
  %arrayidx352 = getelementptr inbounds [2 x i32], [2 x i32]* %oback351, i32 0, i64 %idxprom347
  %160 = load i32, i32* %arrayidx352, align 4
  %sub353 = sub nsw i32 %157, %160
  br label %cond.end.355

cond.false.354:                                   ; preds = %cond.end.327
  %161 = load i32, i32* %yf, align 4
  br label %cond.end.355

cond.end.355:                                     ; preds = %cond.false.354, %cond.true.342
  %cond356 = phi i32 [ %sub353, %cond.true.342 ], [ %161, %cond.false.354 ]
  store i32 %cond356, i32* %yf, align 4
  %162 = load %union.rec*, %union.rec** %z, align 8
  %163 = load %union.rec*, %union.rec** %y, align 8
  %os2357 = bitcast %union.rec* %163 to %struct.closure_type*
  %oux358 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2357, i32 0, i32 6
  %osave_mark359 = bitcast %union.anon.12* %oux358 to i32*
  %164 = load i32, i32* %osave_mark359, align 4
  %165 = load i32, i32* %dim.addr, align 4
  %idxprom360 = sext i32 %165 to i64
  %166 = load %union.rec*, %union.rec** %z, align 8
  %os1361 = bitcast %union.rec* %166 to %struct.word_type*
  %ou3362 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1361, i32 0, i32 3
  %os31363 = bitcast %union.THIRD_UNION* %ou3362 to %struct.anon.6*
  %oback364 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31363, i32 0, i32 0
  %arrayidx365 = getelementptr inbounds [2 x i32], [2 x i32]* %oback364, i32 0, i64 %idxprom360
  %167 = load i32, i32* %arrayidx365, align 4
  %168 = load i32, i32* %yf, align 4
  %169 = load i32, i32* %dim.addr, align 4
  %170 = load i32, i32* %pg.addr, align 4
  %call366 = call %union.rec* @FixAndPrintObject(%union.rec* %162, i32 %164, i32 %167, i32 %168, i32 %169, i32 0, i32 %170, i32 1, i32* %aback, i32* %afwd)
  store %union.rec* %call366, %union.rec** %z, align 8
  %171 = load i32, i32* %dim.addr, align 4
  %idxprom367 = sext i32 %171 to i64
  %172 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1368 = bitcast %union.rec* %172 to %struct.word_type*
  %ou3369 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1368, i32 0, i32 3
  %os31370 = bitcast %union.THIRD_UNION* %ou3369 to %struct.anon.6*
  %oback371 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31370, i32 0, i32 0
  %arrayidx372 = getelementptr inbounds [2 x i32], [2 x i32]* %oback371, i32 0, i64 %idxprom367
  %173 = load i32, i32* %arrayidx372, align 4
  %174 = load i32*, i32** %actual_back.addr, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* %dim.addr, align 4
  %idxprom373 = sext i32 %175 to i64
  %176 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1374 = bitcast %union.rec* %176 to %struct.word_type*
  %ou3375 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1374, i32 0, i32 3
  %os31376 = bitcast %union.THIRD_UNION* %ou3375 to %struct.anon.6*
  %ofwd377 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31376, i32 0, i32 1
  %arrayidx378 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd377, i32 0, i64 %idxprom373
  %177 = load i32, i32* %arrayidx378, align 4
  %178 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %177, i32* %178, align 4
  %179 = load %union.rec*, %union.rec** %y, align 8
  %os1379 = bitcast %union.rec* %179 to %struct.word_type*
  %ou2380 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1379, i32 0, i32 2
  %os22381 = bitcast %union.SECOND_UNION* %ou2380 to %struct.anon.1*
  %180 = bitcast %struct.anon.1* %os22381 to i32*
  %bf.load382 = load i32, i32* %180, align 4
  %bf.clear383 = and i32 %bf.load382, -528482305
  store i32 %bf.clear383, i32* %180, align 4
  br label %if.end.384

if.end.384:                                       ; preds = %cond.end.355, %if.end.257
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %sw.bb.193
  br label %sw.epilog.5829

sw.bb.386:                                        ; preds = %entry, %entry
  %181 = load i32, i32* %dim.addr, align 4
  %cmp387 = icmp eq i32 %181, 0
  br i1 %cmp387, label %if.then.389, label %if.else.414

if.then.389:                                      ; preds = %sw.bb.386
  %182 = load i32, i32* %xmk.addr, align 4
  %183 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1390 = bitcast %union.rec* %183 to %struct.word_type*
  %ou1391 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1390, i32 0, i32 1
  %os11392 = bitcast %union.FIRST_UNION* %ou1391 to %struct.anon*
  %oword_save_mark = getelementptr inbounds %struct.anon, %struct.anon* %os11392, i32 0, i32 2
  store i32 %182, i32* %oword_save_mark, align 4
  %184 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1393 = bitcast %union.rec* %184 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1393, i32 0, i32 4
  %arrayidx394 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i64 0
  %185 = load i8, i8* %arrayidx394, align 1
  %conv395 = zext i8 %185 to i32
  %cmp396 = icmp ne i32 %conv395, 0
  br i1 %cmp396, label %if.then.398, label %if.end.413

if.then.398:                                      ; preds = %if.then.389
  %186 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1399 = bitcast %union.rec* %186 to %struct.word_type*
  %ou2400 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1399, i32 0, i32 2
  %os22401 = bitcast %union.SECOND_UNION* %ou2400 to %struct.anon.1*
  %187 = bitcast %struct.anon.1* %os22401 to i32*
  %bf.load402 = load i32, i32* %187, align 4
  %bf.clear403 = and i32 %bf.load402, 4095
  %idxprom404 = zext i32 %bf.clear403 to i64
  %188 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx405 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %188, i64 %idxprom404
  %original_face = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx405, i32 0, i32 6
  %189 = load %union.rec*, %union.rec** %original_face, align 8
  store %union.rec* %189, %union.rec** %face, align 8
  %190 = load %union.rec*, %union.rec** %face, align 8
  %os1406 = bitcast %union.rec* %190 to %struct.word_type*
  %ou2407 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1406, i32 0, i32 2
  %os25 = bitcast %union.SECOND_UNION* %ou2407 to %struct.anon.4*
  %ofont_page = getelementptr inbounds %struct.anon.4, %struct.anon.4* %os25, i32 0, i32 1
  %191 = load i16, i16* %ofont_page, align 2
  %conv408 = zext i16 %191 to i32
  %192 = load i32, i32* @font_curr_page, align 4
  %cmp409 = icmp slt i32 %conv408, %192
  br i1 %cmp409, label %if.then.411, label %if.end.412

if.then.411:                                      ; preds = %if.then.398
  %193 = load %union.rec*, %union.rec** %face, align 8
  call void @FontPageUsed(%union.rec* %193)
  br label %if.end.412

if.end.412:                                       ; preds = %if.then.411, %if.then.398
  br label %if.end.413

if.end.413:                                       ; preds = %if.end.412, %if.then.389
  br label %if.end.428

if.else.414:                                      ; preds = %sw.bb.386
  %194 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1415 = bitcast %union.rec* %194 to %struct.word_type*
  %ostring416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1415, i32 0, i32 4
  %arrayidx417 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring416, i32 0, i64 0
  %195 = load i8, i8* %arrayidx417, align 1
  %conv418 = zext i8 %195 to i32
  %cmp419 = icmp ne i32 %conv418, 0
  br i1 %cmp419, label %if.then.421, label %if.end.427

if.then.421:                                      ; preds = %if.else.414
  %196 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %PrintWord = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %196, i32 0, i32 18
  %197 = load void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)** %PrintWord, align 8
  %198 = load %union.rec*, %union.rec** %x.addr, align 8
  %199 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1422 = bitcast %union.rec* %199 to %struct.word_type*
  %ou1423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1422, i32 0, i32 1
  %os11424 = bitcast %union.FIRST_UNION* %ou1423 to %struct.anon*
  %oword_save_mark425 = getelementptr inbounds %struct.anon, %struct.anon* %os11424, i32 0, i32 2
  %200 = load i32, i32* %oword_save_mark425, align 4
  %201 = load i32, i32* %pg.addr, align 4
  %202 = load i32, i32* %xmk.addr, align 4
  %sub426 = sub nsw i32 %201, %202
  call void %197(%union.rec* %198, i32 %200, i32 %sub426)
  br label %if.end.427

if.end.427:                                       ; preds = %if.then.421, %if.else.414
  br label %if.end.428

if.end.428:                                       ; preds = %if.end.427, %if.end.413
  %203 = load i32, i32* %xb.addr, align 4
  %204 = load i32*, i32** %actual_back.addr, align 8
  store i32 %203, i32* %204, align 4
  %205 = load i32, i32* %xf.addr, align 4
  %206 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %205, i32* %206, align 4
  br label %sw.epilog.5829

sw.bb.429:                                        ; preds = %entry, %entry
  %207 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1430 = bitcast %union.rec* %207 to %struct.word_type*
  %olist431 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1430, i32 0, i32 0
  %arrayidx432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist431, i32 0, i64 0
  %osucc433 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx432, i32 0, i32 1
  %208 = load %union.rec*, %union.rec** %osucc433, align 8
  %os1434 = bitcast %union.rec* %208 to %struct.word_type*
  %olist435 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1434, i32 0, i32 0
  %arrayidx436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist435, i32 0, i64 1
  %opred437 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx436, i32 0, i32 0
  %209 = load %union.rec*, %union.rec** %opred437, align 8
  store %union.rec* %209, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.438

for.cond.438:                                     ; preds = %for.inc.447, %sw.bb.429
  %210 = load %union.rec*, %union.rec** %y, align 8
  %os1439 = bitcast %union.rec* %210 to %struct.word_type*
  %ou1440 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1439, i32 0, i32 1
  %os11441 = bitcast %union.FIRST_UNION* %ou1440 to %struct.anon*
  %otype442 = getelementptr inbounds %struct.anon, %struct.anon* %os11441, i32 0, i32 0
  %211 = load i8, i8* %otype442, align 1
  %conv443 = zext i8 %211 to i32
  %cmp444 = icmp eq i32 %conv443, 0
  br i1 %cmp444, label %for.body.446, label %for.end.453

for.body.446:                                     ; preds = %for.cond.438
  br label %for.inc.447

for.inc.447:                                      ; preds = %for.body.446
  %212 = load %union.rec*, %union.rec** %y, align 8
  %os1448 = bitcast %union.rec* %212 to %struct.word_type*
  %olist449 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1448, i32 0, i32 0
  %arrayidx450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist449, i32 0, i64 1
  %opred451 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx450, i32 0, i32 0
  %213 = load %union.rec*, %union.rec** %opred451, align 8
  store %union.rec* %213, %union.rec** %y, align 8
  %214 = load i32, i32* %count.addr, align 4
  %inc452 = add nsw i32 %214, 1
  store i32 %inc452, i32* %count.addr, align 4
  br label %for.cond.438

for.end.453:                                      ; preds = %for.cond.438
  %215 = load i32, i32* %dim.addr, align 4
  %cmp454 = icmp eq i32 %215, 0
  %conv455 = zext i1 %cmp454 to i32
  %216 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1456 = bitcast %union.rec* %216 to %struct.word_type*
  %ou1457 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1456, i32 0, i32 1
  %os11458 = bitcast %union.FIRST_UNION* %ou1457 to %struct.anon*
  %otype459 = getelementptr inbounds %struct.anon, %struct.anon* %os11458, i32 0, i32 0
  %217 = load i8, i8* %otype459, align 1
  %conv460 = zext i8 %217 to i32
  %cmp461 = icmp eq i32 %conv460, 26
  %conv462 = zext i1 %cmp461 to i32
  %cmp463 = icmp eq i32 %conv455, %conv462
  br i1 %cmp463, label %if.then.465, label %if.else.484

if.then.465:                                      ; preds = %for.end.453
  %218 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2466 = bitcast %union.rec* %218 to %struct.closure_type*
  %ou4467 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2466, i32 0, i32 4
  %oconstraint468 = bitcast %union.FOURTH_UNION* %ou4467 to %struct.CONSTRAINT*
  %obfc469 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint468, i32 0, i32 1
  %219 = load i32, i32* %obfc469, align 4
  %220 = load i32, i32* %dim.addr, align 4
  %idxprom470 = sext i32 %220 to i64
  %221 = load %union.rec*, %union.rec** %y, align 8
  %os1471 = bitcast %union.rec* %221 to %struct.word_type*
  %ou3472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1471, i32 0, i32 3
  %os31473 = bitcast %union.THIRD_UNION* %ou3472 to %struct.anon.6*
  %oback474 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31473, i32 0, i32 0
  %arrayidx475 = getelementptr inbounds [2 x i32], [2 x i32]* %oback474, i32 0, i64 %idxprom470
  %222 = load i32, i32* %arrayidx475, align 4
  %sub476 = sub nsw i32 %219, %222
  store i32 %sub476, i32* %yf, align 4
  %223 = load %union.rec*, %union.rec** %y, align 8
  %224 = load i32, i32* %xmk.addr, align 4
  %225 = load i32, i32* %dim.addr, align 4
  %idxprom477 = sext i32 %225 to i64
  %226 = load %union.rec*, %union.rec** %y, align 8
  %os1478 = bitcast %union.rec* %226 to %struct.word_type*
  %ou3479 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1478, i32 0, i32 3
  %os31480 = bitcast %union.THIRD_UNION* %ou3479 to %struct.anon.6*
  %oback481 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31480, i32 0, i32 0
  %arrayidx482 = getelementptr inbounds [2 x i32], [2 x i32]* %oback481, i32 0, i64 %idxprom477
  %227 = load i32, i32* %arrayidx482, align 4
  %228 = load i32, i32* %yf, align 4
  %229 = load i32, i32* %dim.addr, align 4
  %230 = load i32, i32* %pg.addr, align 4
  %231 = load i32, i32* %count.addr, align 4
  %call483 = call %union.rec* @FixAndPrintObject(%union.rec* %223, i32 %224, i32 %227, i32 %228, i32 %229, i32 0, i32 %230, i32 %231, i32* %aback, i32* %afwd)
  store %union.rec* %call483, %union.rec** %y, align 8
  %232 = load i32, i32* %xb.addr, align 4
  %233 = load i32*, i32** %actual_back.addr, align 8
  store i32 %232, i32* %233, align 4
  %234 = load i32, i32* %xf.addr, align 4
  %235 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %234, i32* %235, align 4
  br label %if.end.486

if.else.484:                                      ; preds = %for.end.453
  %236 = load %union.rec*, %union.rec** %y, align 8
  %237 = load i32, i32* %xmk.addr, align 4
  %238 = load i32, i32* %xb.addr, align 4
  %239 = load i32, i32* %xf.addr, align 4
  %240 = load i32, i32* %dim.addr, align 4
  %241 = load i32, i32* %suppress.addr, align 4
  %242 = load i32, i32* %pg.addr, align 4
  %243 = load i32, i32* %count.addr, align 4
  %244 = load i32*, i32** %actual_back.addr, align 8
  %245 = load i32*, i32** %actual_fwd.addr, align 8
  %call485 = call %union.rec* @FixAndPrintObject(%union.rec* %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32* %244, i32* %245)
  store %union.rec* %call485, %union.rec** %y, align 8
  br label %if.end.486

if.end.486:                                       ; preds = %if.else.484, %if.then.465
  br label %sw.epilog.5829

sw.bb.487:                                        ; preds = %entry, %entry
  %246 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1488 = bitcast %union.rec* %246 to %struct.word_type*
  %olist489 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1488, i32 0, i32 0
  %arrayidx490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist489, i32 0, i64 0
  %osucc491 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx490, i32 0, i32 1
  %247 = load %union.rec*, %union.rec** %osucc491, align 8
  %os1492 = bitcast %union.rec* %247 to %struct.word_type*
  %olist493 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1492, i32 0, i32 0
  %arrayidx494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist493, i32 0, i64 1
  %opred495 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx494, i32 0, i32 0
  %248 = load %union.rec*, %union.rec** %opred495, align 8
  store %union.rec* %248, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.496

for.cond.496:                                     ; preds = %for.inc.505, %sw.bb.487
  %249 = load %union.rec*, %union.rec** %y, align 8
  %os1497 = bitcast %union.rec* %249 to %struct.word_type*
  %ou1498 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1497, i32 0, i32 1
  %os11499 = bitcast %union.FIRST_UNION* %ou1498 to %struct.anon*
  %otype500 = getelementptr inbounds %struct.anon, %struct.anon* %os11499, i32 0, i32 0
  %250 = load i8, i8* %otype500, align 1
  %conv501 = zext i8 %250 to i32
  %cmp502 = icmp eq i32 %conv501, 0
  br i1 %cmp502, label %for.body.504, label %for.end.511

for.body.504:                                     ; preds = %for.cond.496
  br label %for.inc.505

for.inc.505:                                      ; preds = %for.body.504
  %251 = load %union.rec*, %union.rec** %y, align 8
  %os1506 = bitcast %union.rec* %251 to %struct.word_type*
  %olist507 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1506, i32 0, i32 0
  %arrayidx508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist507, i32 0, i64 1
  %opred509 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx508, i32 0, i32 0
  %252 = load %union.rec*, %union.rec** %opred509, align 8
  store %union.rec* %252, %union.rec** %y, align 8
  %253 = load i32, i32* %count.addr, align 4
  %inc510 = add nsw i32 %253, 1
  store i32 %inc510, i32* %count.addr, align 4
  br label %for.cond.496

for.end.511:                                      ; preds = %for.cond.496
  %254 = load i32, i32* %dim.addr, align 4
  %cmp512 = icmp eq i32 %254, 0
  %conv513 = zext i1 %cmp512 to i32
  %255 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1514 = bitcast %union.rec* %255 to %struct.word_type*
  %ou1515 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1514, i32 0, i32 1
  %os11516 = bitcast %union.FIRST_UNION* %ou1515 to %struct.anon*
  %otype517 = getelementptr inbounds %struct.anon, %struct.anon* %os11516, i32 0, i32 0
  %256 = load i8, i8* %otype517, align 1
  %conv518 = zext i8 %256 to i32
  %cmp519 = icmp eq i32 %conv518, 28
  %conv520 = zext i1 %cmp519 to i32
  %cmp521 = icmp eq i32 %conv513, %conv520
  br i1 %cmp521, label %if.then.523, label %if.else.588

if.then.523:                                      ; preds = %for.end.511
  %257 = load %union.rec*, %union.rec** %x.addr, align 8
  %258 = load %union.rec*, %union.rec** %y, align 8
  %259 = load i32, i32* %dim.addr, align 4
  %call524 = call i32 @FindShift(%union.rec* %257, %union.rec* %258, i32 %259)
  store i32 %call524, i32* %f, align 4
  %260 = load i32, i32* %xmk.addr, align 4
  %261 = load i32, i32* %f, align 4
  %sub525 = sub nsw i32 %260, %261
  store i32 %sub525, i32* %ymk, align 4
  %262 = load i32, i32* %xb.addr, align 4
  %263 = load i32, i32* %f, align 4
  %sub526 = sub nsw i32 %262, %263
  %cmp527 = icmp slt i32 0, %sub526
  br i1 %cmp527, label %cond.true.529, label %cond.false.531

cond.true.529:                                    ; preds = %if.then.523
  %264 = load i32, i32* %xb.addr, align 4
  %265 = load i32, i32* %f, align 4
  %sub530 = sub nsw i32 %264, %265
  br label %cond.end.532

cond.false.531:                                   ; preds = %if.then.523
  br label %cond.end.532

cond.end.532:                                     ; preds = %cond.false.531, %cond.true.529
  %cond533 = phi i32 [ %sub530, %cond.true.529 ], [ 0, %cond.false.531 ]
  store i32 %cond533, i32* %yb, align 4
  %266 = load i32, i32* %xf.addr, align 4
  %267 = load i32, i32* %f, align 4
  %add534 = add nsw i32 %266, %267
  %cmp535 = icmp slt i32 0, %add534
  br i1 %cmp535, label %cond.true.537, label %cond.false.539

cond.true.537:                                    ; preds = %cond.end.532
  %268 = load i32, i32* %xf.addr, align 4
  %269 = load i32, i32* %f, align 4
  %add538 = add nsw i32 %268, %269
  br label %cond.end.540

cond.false.539:                                   ; preds = %cond.end.532
  br label %cond.end.540

cond.end.540:                                     ; preds = %cond.false.539, %cond.true.537
  %cond541 = phi i32 [ %add538, %cond.true.537 ], [ 0, %cond.false.539 ]
  store i32 %cond541, i32* %yf, align 4
  %270 = load %union.rec*, %union.rec** %y, align 8
  %271 = load i32, i32* %ymk, align 4
  %272 = load i32, i32* %yb, align 4
  %273 = load i32, i32* %yf, align 4
  %274 = load i32, i32* %dim.addr, align 4
  %275 = load i32, i32* %suppress.addr, align 4
  %276 = load i32, i32* %pg.addr, align 4
  %277 = load i32, i32* %count.addr, align 4
  %call542 = call %union.rec* @FixAndPrintObject(%union.rec* %270, i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276, i32 %277, i32* %aback, i32* %afwd)
  store %union.rec* %call542, %union.rec** %y, align 8
  %278 = load %union.rec*, %union.rec** %x.addr, align 8
  %279 = load %union.rec*, %union.rec** %y, align 8
  %280 = load i32, i32* %dim.addr, align 4
  %call543 = call i32 @FindShift(%union.rec* %278, %union.rec* %279, i32 %280)
  store i32 %call543, i32* %f, align 4
  %281 = load i32, i32* %aback, align 4
  %282 = load i32, i32* %f, align 4
  %add544 = add nsw i32 %281, %282
  %cmp545 = icmp slt i32 0, %add544
  br i1 %cmp545, label %cond.true.547, label %cond.false.549

cond.true.547:                                    ; preds = %cond.end.540
  %283 = load i32, i32* %aback, align 4
  %284 = load i32, i32* %f, align 4
  %add548 = add nsw i32 %283, %284
  br label %cond.end.550

cond.false.549:                                   ; preds = %cond.end.540
  br label %cond.end.550

cond.end.550:                                     ; preds = %cond.false.549, %cond.true.547
  %cond551 = phi i32 [ %add548, %cond.true.547 ], [ 0, %cond.false.549 ]
  %cmp552 = icmp slt i32 8388607, %cond551
  br i1 %cmp552, label %cond.true.554, label %cond.false.555

cond.true.554:                                    ; preds = %cond.end.550
  br label %cond.end.564

cond.false.555:                                   ; preds = %cond.end.550
  %285 = load i32, i32* %aback, align 4
  %286 = load i32, i32* %f, align 4
  %add556 = add nsw i32 %285, %286
  %cmp557 = icmp slt i32 0, %add556
  br i1 %cmp557, label %cond.true.559, label %cond.false.561

cond.true.559:                                    ; preds = %cond.false.555
  %287 = load i32, i32* %aback, align 4
  %288 = load i32, i32* %f, align 4
  %add560 = add nsw i32 %287, %288
  br label %cond.end.562

cond.false.561:                                   ; preds = %cond.false.555
  br label %cond.end.562

cond.end.562:                                     ; preds = %cond.false.561, %cond.true.559
  %cond563 = phi i32 [ %add560, %cond.true.559 ], [ 0, %cond.false.561 ]
  br label %cond.end.564

cond.end.564:                                     ; preds = %cond.end.562, %cond.true.554
  %cond565 = phi i32 [ 8388607, %cond.true.554 ], [ %cond563, %cond.end.562 ]
  %289 = load i32*, i32** %actual_back.addr, align 8
  store i32 %cond565, i32* %289, align 4
  %290 = load i32, i32* %afwd, align 4
  %291 = load i32, i32* %f, align 4
  %sub566 = sub nsw i32 %290, %291
  %cmp567 = icmp slt i32 0, %sub566
  br i1 %cmp567, label %cond.true.569, label %cond.false.571

cond.true.569:                                    ; preds = %cond.end.564
  %292 = load i32, i32* %afwd, align 4
  %293 = load i32, i32* %f, align 4
  %sub570 = sub nsw i32 %292, %293
  br label %cond.end.572

cond.false.571:                                   ; preds = %cond.end.564
  br label %cond.end.572

cond.end.572:                                     ; preds = %cond.false.571, %cond.true.569
  %cond573 = phi i32 [ %sub570, %cond.true.569 ], [ 0, %cond.false.571 ]
  %cmp574 = icmp slt i32 8388607, %cond573
  br i1 %cmp574, label %cond.true.576, label %cond.false.577

cond.true.576:                                    ; preds = %cond.end.572
  br label %cond.end.586

cond.false.577:                                   ; preds = %cond.end.572
  %294 = load i32, i32* %afwd, align 4
  %295 = load i32, i32* %f, align 4
  %sub578 = sub nsw i32 %294, %295
  %cmp579 = icmp slt i32 0, %sub578
  br i1 %cmp579, label %cond.true.581, label %cond.false.583

cond.true.581:                                    ; preds = %cond.false.577
  %296 = load i32, i32* %afwd, align 4
  %297 = load i32, i32* %f, align 4
  %sub582 = sub nsw i32 %296, %297
  br label %cond.end.584

cond.false.583:                                   ; preds = %cond.false.577
  br label %cond.end.584

cond.end.584:                                     ; preds = %cond.false.583, %cond.true.581
  %cond585 = phi i32 [ %sub582, %cond.true.581 ], [ 0, %cond.false.583 ]
  br label %cond.end.586

cond.end.586:                                     ; preds = %cond.end.584, %cond.true.576
  %cond587 = phi i32 [ 8388607, %cond.true.576 ], [ %cond585, %cond.end.584 ]
  %298 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %cond587, i32* %298, align 4
  br label %if.end.590

if.else.588:                                      ; preds = %for.end.511
  %299 = load %union.rec*, %union.rec** %y, align 8
  %300 = load i32, i32* %xmk.addr, align 4
  %301 = load i32, i32* %xb.addr, align 4
  %302 = load i32, i32* %xf.addr, align 4
  %303 = load i32, i32* %dim.addr, align 4
  %304 = load i32, i32* %suppress.addr, align 4
  %305 = load i32, i32* %pg.addr, align 4
  %306 = load i32, i32* %count.addr, align 4
  %307 = load i32*, i32** %actual_back.addr, align 8
  %308 = load i32*, i32** %actual_fwd.addr, align 8
  %call589 = call %union.rec* @FixAndPrintObject(%union.rec* %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304, i32 %305, i32 %306, i32* %307, i32* %308)
  store %union.rec* %call589, %union.rec** %y, align 8
  br label %if.end.590

if.end.590:                                       ; preds = %if.else.588, %cond.end.586
  br label %sw.epilog.5829

sw.bb.591:                                        ; preds = %entry, %entry
  %309 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1592 = bitcast %union.rec* %309 to %struct.word_type*
  %olist593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1592, i32 0, i32 0
  %arrayidx594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist593, i32 0, i64 0
  %osucc595 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx594, i32 0, i32 1
  %310 = load %union.rec*, %union.rec** %osucc595, align 8
  %os1596 = bitcast %union.rec* %310 to %struct.word_type*
  %olist597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1596, i32 0, i32 0
  %arrayidx598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist597, i32 0, i64 1
  %opred599 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx598, i32 0, i32 0
  %311 = load %union.rec*, %union.rec** %opred599, align 8
  store %union.rec* %311, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.600

for.cond.600:                                     ; preds = %for.inc.609, %sw.bb.591
  %312 = load %union.rec*, %union.rec** %y, align 8
  %os1601 = bitcast %union.rec* %312 to %struct.word_type*
  %ou1602 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1601, i32 0, i32 1
  %os11603 = bitcast %union.FIRST_UNION* %ou1602 to %struct.anon*
  %otype604 = getelementptr inbounds %struct.anon, %struct.anon* %os11603, i32 0, i32 0
  %313 = load i8, i8* %otype604, align 1
  %conv605 = zext i8 %313 to i32
  %cmp606 = icmp eq i32 %conv605, 0
  br i1 %cmp606, label %for.body.608, label %for.end.615

for.body.608:                                     ; preds = %for.cond.600
  br label %for.inc.609

for.inc.609:                                      ; preds = %for.body.608
  %314 = load %union.rec*, %union.rec** %y, align 8
  %os1610 = bitcast %union.rec* %314 to %struct.word_type*
  %olist611 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1610, i32 0, i32 0
  %arrayidx612 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist611, i32 0, i64 1
  %opred613 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx612, i32 0, i32 0
  %315 = load %union.rec*, %union.rec** %opred613, align 8
  store %union.rec* %315, %union.rec** %y, align 8
  %316 = load i32, i32* %count.addr, align 4
  %inc614 = add nsw i32 %316, 1
  store i32 %inc614, i32* %count.addr, align 4
  br label %for.cond.600

for.end.615:                                      ; preds = %for.cond.600
  %317 = load i32, i32* %dim.addr, align 4
  %cmp616 = icmp eq i32 %317, 0
  %conv617 = zext i1 %cmp616 to i32
  %318 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1618 = bitcast %union.rec* %318 to %struct.word_type*
  %ou1619 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1618, i32 0, i32 1
  %os11620 = bitcast %union.FIRST_UNION* %ou1619 to %struct.anon*
  %otype621 = getelementptr inbounds %struct.anon, %struct.anon* %os11620, i32 0, i32 0
  %319 = load i8, i8* %otype621, align 1
  %conv622 = zext i8 %319 to i32
  %cmp623 = icmp eq i32 %conv622, 36
  %conv624 = zext i1 %cmp623 to i32
  %cmp625 = icmp eq i32 %conv617, %conv624
  br i1 %cmp625, label %if.then.627, label %if.else.641

if.then.627:                                      ; preds = %for.end.615
  %320 = load %union.rec*, %union.rec** %y, align 8
  %321 = load i32, i32* %xmk.addr, align 4
  %322 = load i32, i32* %dim.addr, align 4
  %idxprom628 = sext i32 %322 to i64
  %323 = load %union.rec*, %union.rec** %y, align 8
  %os1629 = bitcast %union.rec* %323 to %struct.word_type*
  %ou3630 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1629, i32 0, i32 3
  %os31631 = bitcast %union.THIRD_UNION* %ou3630 to %struct.anon.6*
  %oback632 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31631, i32 0, i32 0
  %arrayidx633 = getelementptr inbounds [2 x i32], [2 x i32]* %oback632, i32 0, i64 %idxprom628
  %324 = load i32, i32* %arrayidx633, align 4
  %325 = load i32, i32* %dim.addr, align 4
  %idxprom634 = sext i32 %325 to i64
  %326 = load %union.rec*, %union.rec** %y, align 8
  %os1635 = bitcast %union.rec* %326 to %struct.word_type*
  %ou3636 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1635, i32 0, i32 3
  %os31637 = bitcast %union.THIRD_UNION* %ou3636 to %struct.anon.6*
  %ofwd638 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31637, i32 0, i32 1
  %arrayidx639 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd638, i32 0, i64 %idxprom634
  %327 = load i32, i32* %arrayidx639, align 4
  %328 = load i32, i32* %dim.addr, align 4
  %329 = load i32, i32* %pg.addr, align 4
  %330 = load i32, i32* %count.addr, align 4
  %call640 = call %union.rec* @FixAndPrintObject(%union.rec* %320, i32 %321, i32 %324, i32 %327, i32 %328, i32 0, i32 %329, i32 %330, i32* %aback, i32* %afwd)
  store %union.rec* %call640, %union.rec** %y, align 8
  %331 = load i32, i32* %xb.addr, align 4
  %332 = load i32*, i32** %actual_back.addr, align 8
  store i32 %331, i32* %332, align 4
  %333 = load i32, i32* %xf.addr, align 4
  %334 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %333, i32* %334, align 4
  br label %if.end.643

if.else.641:                                      ; preds = %for.end.615
  %335 = load %union.rec*, %union.rec** %y, align 8
  %336 = load i32, i32* %xmk.addr, align 4
  %337 = load i32, i32* %xb.addr, align 4
  %338 = load i32, i32* %xf.addr, align 4
  %339 = load i32, i32* %dim.addr, align 4
  %340 = load i32, i32* %suppress.addr, align 4
  %341 = load i32, i32* %pg.addr, align 4
  %342 = load i32, i32* %count.addr, align 4
  %343 = load i32*, i32** %actual_back.addr, align 8
  %344 = load i32*, i32** %actual_fwd.addr, align 8
  %call642 = call %union.rec* @FixAndPrintObject(%union.rec* %335, i32 %336, i32 %337, i32 %338, i32 %339, i32 %340, i32 %341, i32 %342, i32* %343, i32* %344)
  store %union.rec* %call642, %union.rec** %y, align 8
  br label %if.end.643

if.end.643:                                       ; preds = %if.else.641, %if.then.627
  br label %sw.epilog.5829

sw.bb.644:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %345 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1645 = bitcast %union.rec* %345 to %struct.word_type*
  %olist646 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1645, i32 0, i32 0
  %arrayidx647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist646, i32 0, i64 0
  %osucc648 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx647, i32 0, i32 1
  %346 = load %union.rec*, %union.rec** %osucc648, align 8
  %os1649 = bitcast %union.rec* %346 to %struct.word_type*
  %olist650 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1649, i32 0, i32 0
  %arrayidx651 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist650, i32 0, i64 1
  %opred652 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx651, i32 0, i32 0
  %347 = load %union.rec*, %union.rec** %opred652, align 8
  store %union.rec* %347, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.653

for.cond.653:                                     ; preds = %for.inc.662, %sw.bb.644
  %348 = load %union.rec*, %union.rec** %y, align 8
  %os1654 = bitcast %union.rec* %348 to %struct.word_type*
  %ou1655 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1654, i32 0, i32 1
  %os11656 = bitcast %union.FIRST_UNION* %ou1655 to %struct.anon*
  %otype657 = getelementptr inbounds %struct.anon, %struct.anon* %os11656, i32 0, i32 0
  %349 = load i8, i8* %otype657, align 1
  %conv658 = zext i8 %349 to i32
  %cmp659 = icmp eq i32 %conv658, 0
  br i1 %cmp659, label %for.body.661, label %for.end.668

for.body.661:                                     ; preds = %for.cond.653
  br label %for.inc.662

for.inc.662:                                      ; preds = %for.body.661
  %350 = load %union.rec*, %union.rec** %y, align 8
  %os1663 = bitcast %union.rec* %350 to %struct.word_type*
  %olist664 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1663, i32 0, i32 0
  %arrayidx665 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist664, i32 0, i64 1
  %opred666 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx665, i32 0, i32 0
  %351 = load %union.rec*, %union.rec** %opred666, align 8
  store %union.rec* %351, %union.rec** %y, align 8
  %352 = load i32, i32* %count.addr, align 4
  %inc667 = add nsw i32 %352, 1
  store i32 %inc667, i32* %count.addr, align 4
  br label %for.cond.653

for.end.668:                                      ; preds = %for.cond.653
  %353 = load i32, i32* %dim.addr, align 4
  %cmp669 = icmp eq i32 %353, 0
  %conv670 = zext i1 %cmp669 to i32
  %354 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1671 = bitcast %union.rec* %354 to %struct.word_type*
  %ou1672 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1671, i32 0, i32 1
  %os11673 = bitcast %union.FIRST_UNION* %ou1672 to %struct.anon*
  %otype674 = getelementptr inbounds %struct.anon, %struct.anon* %os11673, i32 0, i32 0
  %355 = load i8, i8* %otype674, align 1
  %conv675 = zext i8 %355 to i32
  %cmp676 = icmp eq i32 %conv675, 24
  br i1 %cmp676, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.end.668
  %356 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1678 = bitcast %union.rec* %356 to %struct.word_type*
  %ou1679 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1678, i32 0, i32 1
  %os11680 = bitcast %union.FIRST_UNION* %ou1679 to %struct.anon*
  %otype681 = getelementptr inbounds %struct.anon, %struct.anon* %os11680, i32 0, i32 0
  %357 = load i8, i8* %otype681, align 1
  %conv682 = zext i8 %357 to i32
  %cmp683 = icmp eq i32 %conv682, 40
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.668
  %358 = phi i1 [ true, %for.end.668 ], [ %cmp683, %lor.rhs ]
  %lor.ext = zext i1 %358 to i32
  %cmp685 = icmp eq i32 %conv670, %lor.ext
  br i1 %cmp685, label %if.then.687, label %if.else.689

if.then.687:                                      ; preds = %lor.end
  %359 = load %union.rec*, %union.rec** %y, align 8
  %360 = load i32, i32* %xmk.addr, align 4
  %361 = load i32, i32* %xb.addr, align 4
  %362 = load i32, i32* %xf.addr, align 4
  %363 = load i32, i32* %dim.addr, align 4
  %364 = load i32, i32* %pg.addr, align 4
  %365 = load i32, i32* %count.addr, align 4
  %call688 = call %union.rec* @FixAndPrintObject(%union.rec* %359, i32 %360, i32 %361, i32 %362, i32 %363, i32 0, i32 %364, i32 %365, i32* %aback, i32* %afwd)
  store %union.rec* %call688, %union.rec** %y, align 8
  %366 = load i32, i32* %xb.addr, align 4
  %367 = load i32*, i32** %actual_back.addr, align 8
  store i32 %366, i32* %367, align 4
  %368 = load i32, i32* %xf.addr, align 4
  %369 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %368, i32* %369, align 4
  br label %if.end.691

if.else.689:                                      ; preds = %lor.end
  %370 = load %union.rec*, %union.rec** %y, align 8
  %371 = load i32, i32* %xmk.addr, align 4
  %372 = load i32, i32* %xb.addr, align 4
  %373 = load i32, i32* %xf.addr, align 4
  %374 = load i32, i32* %dim.addr, align 4
  %375 = load i32, i32* %suppress.addr, align 4
  %376 = load i32, i32* %pg.addr, align 4
  %377 = load i32, i32* %count.addr, align 4
  %378 = load i32*, i32** %actual_back.addr, align 8
  %379 = load i32*, i32** %actual_fwd.addr, align 8
  %call690 = call %union.rec* @FixAndPrintObject(%union.rec* %370, i32 %371, i32 %372, i32 %373, i32 %374, i32 %375, i32 %376, i32 %377, i32* %378, i32* %379)
  store %union.rec* %call690, %union.rec** %y, align 8
  br label %if.end.691

if.end.691:                                       ; preds = %if.else.689, %if.then.687
  br label %sw.epilog.5829

sw.bb.692:                                        ; preds = %entry
  %380 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1693 = bitcast %union.rec* %380 to %struct.word_type*
  %olist694 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1693, i32 0, i32 0
  %arrayidx695 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist694, i32 0, i64 0
  %osucc696 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx695, i32 0, i32 1
  %381 = load %union.rec*, %union.rec** %osucc696, align 8
  %os1697 = bitcast %union.rec* %381 to %struct.word_type*
  %olist698 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1697, i32 0, i32 0
  %arrayidx699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist698, i32 0, i64 1
  %opred700 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx699, i32 0, i32 0
  %382 = load %union.rec*, %union.rec** %opred700, align 8
  store %union.rec* %382, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.701

for.cond.701:                                     ; preds = %for.inc.710, %sw.bb.692
  %383 = load %union.rec*, %union.rec** %y, align 8
  %os1702 = bitcast %union.rec* %383 to %struct.word_type*
  %ou1703 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1702, i32 0, i32 1
  %os11704 = bitcast %union.FIRST_UNION* %ou1703 to %struct.anon*
  %otype705 = getelementptr inbounds %struct.anon, %struct.anon* %os11704, i32 0, i32 0
  %384 = load i8, i8* %otype705, align 1
  %conv706 = zext i8 %384 to i32
  %cmp707 = icmp eq i32 %conv706, 0
  br i1 %cmp707, label %for.body.709, label %for.end.716

for.body.709:                                     ; preds = %for.cond.701
  br label %for.inc.710

for.inc.710:                                      ; preds = %for.body.709
  %385 = load %union.rec*, %union.rec** %y, align 8
  %os1711 = bitcast %union.rec* %385 to %struct.word_type*
  %olist712 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1711, i32 0, i32 0
  %arrayidx713 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist712, i32 0, i64 1
  %opred714 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx713, i32 0, i32 0
  %386 = load %union.rec*, %union.rec** %opred714, align 8
  store %union.rec* %386, %union.rec** %y, align 8
  %387 = load i32, i32* %count.addr, align 4
  %inc715 = add nsw i32 %387, 1
  store i32 %inc715, i32* %count.addr, align 4
  br label %for.cond.701

for.end.716:                                      ; preds = %for.cond.701
  %388 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %scale_avail = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %388, i32 0, i32 2
  %389 = load i32, i32* %scale_avail, align 4
  %tobool = icmp ne i32 %389, 0
  br i1 %tobool, label %if.then.717, label %if.end.790

if.then.717:                                      ; preds = %for.end.716
  %390 = load i32, i32* %dim.addr, align 4
  %cmp718 = icmp eq i32 %390, 0
  br i1 %cmp718, label %if.then.720, label %if.else.722

if.then.720:                                      ; preds = %if.then.717
  %391 = load %union.rec*, %union.rec** %y, align 8
  %392 = load i32, i32* %xmk.addr, align 4
  %393 = load i32, i32* %xb.addr, align 4
  %394 = load i32, i32* %xf.addr, align 4
  %395 = load i32, i32* %dim.addr, align 4
  %396 = load i32, i32* %pg.addr, align 4
  %397 = load i32, i32* %count.addr, align 4
  %call721 = call %union.rec* @FixAndPrintObject(%union.rec* %391, i32 %392, i32 %393, i32 %394, i32 %395, i32 0, i32 %396, i32 %397, i32* %aback, i32* %afwd)
  store %union.rec* %call721, %union.rec** %y, align 8
  br label %if.end.789

if.else.722:                                      ; preds = %if.then.717
  %398 = load i32, i32* %xb.addr, align 4
  %399 = load i32, i32* %xf.addr, align 4
  %add723 = add nsw i32 %398, %399
  %400 = load %union.rec*, %union.rec** %y, align 8
  %os1724 = bitcast %union.rec* %400 to %struct.word_type*
  %ou3725 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1724, i32 0, i32 3
  %os31726 = bitcast %union.THIRD_UNION* %ou3725 to %struct.anon.6*
  %oback727 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31726, i32 0, i32 0
  %arrayidx728 = getelementptr inbounds [2 x i32], [2 x i32]* %oback727, i32 0, i64 1
  %401 = load i32, i32* %arrayidx728, align 4
  %402 = load %union.rec*, %union.rec** %y, align 8
  %os1729 = bitcast %union.rec* %402 to %struct.word_type*
  %ou3730 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1729, i32 0, i32 3
  %os31731 = bitcast %union.THIRD_UNION* %ou3730 to %struct.anon.6*
  %ofwd732 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31731, i32 0, i32 1
  %arrayidx733 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd732, i32 0, i64 1
  %403 = load i32, i32* %arrayidx733, align 4
  %add734 = add nsw i32 %401, %403
  %call735 = call float @ScaleFactor(i32 %add723, i32 %add734)
  store float %call735, float* %scale_factor, align 4
  %cmp736 = fcmp ogt float %call735, 0.000000e+00
  br i1 %cmp736, label %if.then.738, label %if.else.760

if.then.738:                                      ; preds = %if.else.722
  %404 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %SaveGraphicState = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %404, i32 0, i32 24
  %405 = load void (%union.rec*)*, void (%union.rec*)** %SaveGraphicState, align 8
  %406 = load %union.rec*, %union.rec** %y, align 8
  call void %405(%union.rec* %406)
  %407 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %CoordTranslate = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %407, i32 0, i32 21
  %408 = load void (i32, i32)*, void (i32, i32)** %CoordTranslate, align 8
  %409 = load i32, i32* %pg.addr, align 4
  %410 = load i32, i32* %xmk.addr, align 4
  %411 = load i32, i32* %xb.addr, align 4
  %sub739 = sub nsw i32 %410, %411
  %412 = load %union.rec*, %union.rec** %y, align 8
  %os1740 = bitcast %union.rec* %412 to %struct.word_type*
  %ou3741 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1740, i32 0, i32 3
  %os31742 = bitcast %union.THIRD_UNION* %ou3741 to %struct.anon.6*
  %oback743 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31742, i32 0, i32 0
  %arrayidx744 = getelementptr inbounds [2 x i32], [2 x i32]* %oback743, i32 0, i64 1
  %413 = load i32, i32* %arrayidx744, align 4
  %conv745 = sitofp i32 %413 to float
  %414 = load float, float* %scale_factor, align 4
  %mul = fmul float %conv745, %414
  %conv746 = fptosi float %mul to i32
  %add747 = add nsw i32 %sub739, %conv746
  %sub748 = sub nsw i32 %409, %add747
  call void %408(i32 0, i32 %sub748)
  %415 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %CoordScale = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %415, i32 0, i32 23
  %416 = load void (float, float)*, void (float, float)** %CoordScale, align 8
  %417 = load float, float* %scale_factor, align 4
  call void %416(float 1.000000e+00, float %417)
  %418 = load %union.rec*, %union.rec** %y, align 8
  %419 = load %union.rec*, %union.rec** %y, align 8
  %os1749 = bitcast %union.rec* %419 to %struct.word_type*
  %ou3750 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1749, i32 0, i32 3
  %os31751 = bitcast %union.THIRD_UNION* %ou3750 to %struct.anon.6*
  %oback752 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31751, i32 0, i32 0
  %arrayidx753 = getelementptr inbounds [2 x i32], [2 x i32]* %oback752, i32 0, i64 1
  %420 = load i32, i32* %arrayidx753, align 4
  %421 = load %union.rec*, %union.rec** %y, align 8
  %os1754 = bitcast %union.rec* %421 to %struct.word_type*
  %ou3755 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1754, i32 0, i32 3
  %os31756 = bitcast %union.THIRD_UNION* %ou3755 to %struct.anon.6*
  %ofwd757 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31756, i32 0, i32 1
  %arrayidx758 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd757, i32 0, i64 1
  %422 = load i32, i32* %arrayidx758, align 4
  %423 = load i32, i32* %dim.addr, align 4
  %424 = load i32, i32* %count.addr, align 4
  %call759 = call %union.rec* @FixAndPrintObject(%union.rec* %418, i32 0, i32 %420, i32 %422, i32 %423, i32 0, i32 0, i32 %424, i32* %aback, i32* %afwd)
  store %union.rec* %call759, %union.rec** %y, align 8
  %425 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %RestoreGraphicState = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %425, i32 0, i32 25
  %426 = load void ()*, void ()** %RestoreGraphicState, align 8
  call void %426()
  br label %if.end.788

if.else.760:                                      ; preds = %if.else.722
  %427 = load %union.rec*, %union.rec** %y, align 8
  %os1761 = bitcast %union.rec* %427 to %struct.word_type*
  %ou1762 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1761, i32 0, i32 1
  %os11763 = bitcast %union.FIRST_UNION* %ou1762 to %struct.anon*
  %otype764 = getelementptr inbounds %struct.anon, %struct.anon* %os11763, i32 0, i32 0
  %428 = load i8, i8* %otype764, align 1
  %conv765 = zext i8 %428 to i32
  %cmp766 = icmp eq i32 %conv765, 11
  br i1 %cmp766, label %lor.lhs.false.776, label %lor.lhs.false.768

lor.lhs.false.768:                                ; preds = %if.else.760
  %429 = load %union.rec*, %union.rec** %y, align 8
  %os1769 = bitcast %union.rec* %429 to %struct.word_type*
  %ou1770 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1769, i32 0, i32 1
  %os11771 = bitcast %union.FIRST_UNION* %ou1770 to %struct.anon*
  %otype772 = getelementptr inbounds %struct.anon, %struct.anon* %os11771, i32 0, i32 0
  %430 = load i8, i8* %otype772, align 1
  %conv773 = zext i8 %430 to i32
  %cmp774 = icmp eq i32 %conv773, 12
  br i1 %cmp774, label %lor.lhs.false.776, label %if.then.783

lor.lhs.false.776:                                ; preds = %lor.lhs.false.768, %if.else.760
  %431 = load %union.rec*, %union.rec** %y, align 8
  %os1777 = bitcast %union.rec* %431 to %struct.word_type*
  %ostring778 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1777, i32 0, i32 4
  %arrayidx779 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring778, i32 0, i64 0
  %432 = load i8, i8* %arrayidx779, align 1
  %conv780 = zext i8 %432 to i32
  %cmp781 = icmp ne i32 %conv780, 0
  br i1 %cmp781, label %if.then.783, label %if.end.787

if.then.783:                                      ; preds = %lor.lhs.false.776, %lor.lhs.false.768
  %433 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1784 = bitcast %union.rec* %433 to %struct.word_type*
  %ou1785 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1784, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1785 to %struct.FILE_POS*
  %call786 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos)
  br label %if.end.787

if.end.787:                                       ; preds = %if.then.783, %lor.lhs.false.776
  br label %if.end.788

if.end.788:                                       ; preds = %if.end.787, %if.then.738
  br label %if.end.789

if.end.789:                                       ; preds = %if.end.788, %if.then.720
  br label %if.end.790

if.end.790:                                       ; preds = %if.end.789, %for.end.716
  %434 = load i32, i32* %xb.addr, align 4
  %435 = load i32*, i32** %actual_back.addr, align 8
  store i32 %434, i32* %435, align 4
  %436 = load i32, i32* %xf.addr, align 4
  %437 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %436, i32* %437, align 4
  br label %sw.epilog.5829

sw.bb.791:                                        ; preds = %entry
  %438 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1792 = bitcast %union.rec* %438 to %struct.word_type*
  %olist793 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1792, i32 0, i32 0
  %arrayidx794 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist793, i32 0, i64 0
  %osucc795 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx794, i32 0, i32 1
  %439 = load %union.rec*, %union.rec** %osucc795, align 8
  %os1796 = bitcast %union.rec* %439 to %struct.word_type*
  %olist797 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1796, i32 0, i32 0
  %arrayidx798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist797, i32 0, i64 1
  %opred799 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx798, i32 0, i32 0
  %440 = load %union.rec*, %union.rec** %opred799, align 8
  store %union.rec* %440, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.800

for.cond.800:                                     ; preds = %for.inc.809, %sw.bb.791
  %441 = load %union.rec*, %union.rec** %y, align 8
  %os1801 = bitcast %union.rec* %441 to %struct.word_type*
  %ou1802 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1801, i32 0, i32 1
  %os11803 = bitcast %union.FIRST_UNION* %ou1802 to %struct.anon*
  %otype804 = getelementptr inbounds %struct.anon, %struct.anon* %os11803, i32 0, i32 0
  %442 = load i8, i8* %otype804, align 1
  %conv805 = zext i8 %442 to i32
  %cmp806 = icmp eq i32 %conv805, 0
  br i1 %cmp806, label %for.body.808, label %for.end.815

for.body.808:                                     ; preds = %for.cond.800
  br label %for.inc.809

for.inc.809:                                      ; preds = %for.body.808
  %443 = load %union.rec*, %union.rec** %y, align 8
  %os1810 = bitcast %union.rec* %443 to %struct.word_type*
  %olist811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1810, i32 0, i32 0
  %arrayidx812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist811, i32 0, i64 1
  %opred813 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx812, i32 0, i32 0
  %444 = load %union.rec*, %union.rec** %opred813, align 8
  store %union.rec* %444, %union.rec** %y, align 8
  %445 = load i32, i32* %count.addr, align 4
  %inc814 = add nsw i32 %445, 1
  store i32 %inc814, i32* %count.addr, align 4
  br label %for.cond.800

for.end.815:                                      ; preds = %for.cond.800
  %446 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %scale_avail816 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %446, i32 0, i32 2
  %447 = load i32, i32* %scale_avail816, align 4
  %tobool817 = icmp ne i32 %447, 0
  br i1 %tobool817, label %if.then.818, label %if.end.937

if.then.818:                                      ; preds = %for.end.815
  %448 = load i32, i32* %dim.addr, align 4
  %cmp819 = icmp eq i32 %448, 0
  br i1 %cmp819, label %if.then.821, label %if.else.888

if.then.821:                                      ; preds = %if.then.818
  %449 = load i32, i32* %xmk.addr, align 4
  %450 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2822 = bitcast %union.rec* %450 to %struct.closure_type*
  %oux823 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2822, i32 0, i32 6
  %osave_mark824 = bitcast %union.anon.12* %oux823 to i32*
  store i32 %449, i32* %osave_mark824, align 4
  %451 = load i32, i32* %xb.addr, align 4
  %452 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2825 = bitcast %union.rec* %452 to %struct.closure_type*
  %ou4826 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2825, i32 0, i32 4
  %oconstraint827 = bitcast %union.FOURTH_UNION* %ou4826 to %struct.CONSTRAINT*
  %obc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint827, i32 0, i32 0
  store i32 %451, i32* %obc, align 4
  %453 = load i32, i32* %xf.addr, align 4
  %454 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2828 = bitcast %union.rec* %454 to %struct.closure_type*
  %ou4829 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2828, i32 0, i32 4
  %oconstraint830 = bitcast %union.FOURTH_UNION* %ou4829 to %struct.CONSTRAINT*
  %ofc = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint830, i32 0, i32 2
  store i32 %453, i32* %ofc, align 4
  %455 = load i32, i32* %xb.addr, align 4
  %456 = load i32, i32* %xf.addr, align 4
  %add831 = add nsw i32 %455, %456
  %457 = load %union.rec*, %union.rec** %y, align 8
  %os1832 = bitcast %union.rec* %457 to %struct.word_type*
  %ou3833 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1832, i32 0, i32 3
  %os31834 = bitcast %union.THIRD_UNION* %ou3833 to %struct.anon.6*
  %oback835 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31834, i32 0, i32 0
  %arrayidx836 = getelementptr inbounds [2 x i32], [2 x i32]* %oback835, i32 0, i64 0
  %458 = load i32, i32* %arrayidx836, align 4
  %459 = load %union.rec*, %union.rec** %y, align 8
  %os1837 = bitcast %union.rec* %459 to %struct.word_type*
  %ou3838 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1837, i32 0, i32 3
  %os31839 = bitcast %union.THIRD_UNION* %ou3838 to %struct.anon.6*
  %ofwd840 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31839, i32 0, i32 1
  %arrayidx841 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd840, i32 0, i64 0
  %460 = load i32, i32* %arrayidx841, align 4
  %add842 = add nsw i32 %458, %460
  %call843 = call float @ScaleFactor(i32 %add831, i32 %add842)
  store float %call843, float* %scale_factor, align 4
  %cmp844 = fcmp ogt float %call843, 0.000000e+00
  br i1 %cmp844, label %if.then.846, label %if.else.858

if.then.846:                                      ; preds = %if.then.821
  %461 = load %union.rec*, %union.rec** %y, align 8
  %462 = load %union.rec*, %union.rec** %y, align 8
  %os1847 = bitcast %union.rec* %462 to %struct.word_type*
  %ou3848 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1847, i32 0, i32 3
  %os31849 = bitcast %union.THIRD_UNION* %ou3848 to %struct.anon.6*
  %oback850 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31849, i32 0, i32 0
  %arrayidx851 = getelementptr inbounds [2 x i32], [2 x i32]* %oback850, i32 0, i64 0
  %463 = load i32, i32* %arrayidx851, align 4
  %464 = load %union.rec*, %union.rec** %y, align 8
  %os1852 = bitcast %union.rec* %464 to %struct.word_type*
  %ou3853 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1852, i32 0, i32 3
  %os31854 = bitcast %union.THIRD_UNION* %ou3853 to %struct.anon.6*
  %ofwd855 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31854, i32 0, i32 1
  %arrayidx856 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd855, i32 0, i64 0
  %465 = load i32, i32* %arrayidx856, align 4
  %466 = load i32, i32* %dim.addr, align 4
  %467 = load i32, i32* %pg.addr, align 4
  %468 = load i32, i32* %count.addr, align 4
  %call857 = call %union.rec* @FixAndPrintObject(%union.rec* %461, i32 0, i32 %463, i32 %465, i32 %466, i32 0, i32 %467, i32 %468, i32* %aback, i32* %afwd)
  store %union.rec* %call857, %union.rec** %y, align 8
  br label %if.end.887

if.else.858:                                      ; preds = %if.then.821
  %469 = load %union.rec*, %union.rec** %y, align 8
  %os1859 = bitcast %union.rec* %469 to %struct.word_type*
  %ou1860 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1859, i32 0, i32 1
  %os11861 = bitcast %union.FIRST_UNION* %ou1860 to %struct.anon*
  %otype862 = getelementptr inbounds %struct.anon, %struct.anon* %os11861, i32 0, i32 0
  %470 = load i8, i8* %otype862, align 1
  %conv863 = zext i8 %470 to i32
  %cmp864 = icmp eq i32 %conv863, 11
  br i1 %cmp864, label %lor.lhs.false.874, label %lor.lhs.false.866

lor.lhs.false.866:                                ; preds = %if.else.858
  %471 = load %union.rec*, %union.rec** %y, align 8
  %os1867 = bitcast %union.rec* %471 to %struct.word_type*
  %ou1868 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1867, i32 0, i32 1
  %os11869 = bitcast %union.FIRST_UNION* %ou1868 to %struct.anon*
  %otype870 = getelementptr inbounds %struct.anon, %struct.anon* %os11869, i32 0, i32 0
  %472 = load i8, i8* %otype870, align 1
  %conv871 = zext i8 %472 to i32
  %cmp872 = icmp eq i32 %conv871, 12
  br i1 %cmp872, label %lor.lhs.false.874, label %if.then.881

lor.lhs.false.874:                                ; preds = %lor.lhs.false.866, %if.else.858
  %473 = load %union.rec*, %union.rec** %y, align 8
  %os1875 = bitcast %union.rec* %473 to %struct.word_type*
  %ostring876 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1875, i32 0, i32 4
  %arrayidx877 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring876, i32 0, i64 0
  %474 = load i8, i8* %arrayidx877, align 1
  %conv878 = zext i8 %474 to i32
  %cmp879 = icmp ne i32 %conv878, 0
  br i1 %cmp879, label %if.then.881, label %if.end.886

if.then.881:                                      ; preds = %lor.lhs.false.874, %lor.lhs.false.866
  %475 = load %union.rec*, %union.rec** %y, align 8
  %os1882 = bitcast %union.rec* %475 to %struct.word_type*
  %ou1883 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1882, i32 0, i32 1
  %ofpos884 = bitcast %union.FIRST_UNION* %ou1883 to %struct.FILE_POS*
  %call885 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos884)
  br label %if.end.886

if.end.886:                                       ; preds = %if.then.881, %lor.lhs.false.874
  br label %if.end.887

if.end.887:                                       ; preds = %if.end.886, %if.then.846
  br label %if.end.936

if.else.888:                                      ; preds = %if.then.818
  %476 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2889 = bitcast %union.rec* %476 to %struct.closure_type*
  %ou4890 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2889, i32 0, i32 4
  %oconstraint891 = bitcast %union.FOURTH_UNION* %ou4890 to %struct.CONSTRAINT*
  %obc892 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint891, i32 0, i32 0
  %477 = load i32, i32* %obc892, align 4
  %478 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2893 = bitcast %union.rec* %478 to %struct.closure_type*
  %ou4894 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2893, i32 0, i32 4
  %oconstraint895 = bitcast %union.FOURTH_UNION* %ou4894 to %struct.CONSTRAINT*
  %ofc896 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint895, i32 0, i32 2
  %479 = load i32, i32* %ofc896, align 4
  %add897 = add nsw i32 %477, %479
  %480 = load %union.rec*, %union.rec** %y, align 8
  %os1898 = bitcast %union.rec* %480 to %struct.word_type*
  %ou3899 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1898, i32 0, i32 3
  %os31900 = bitcast %union.THIRD_UNION* %ou3899 to %struct.anon.6*
  %oback901 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31900, i32 0, i32 0
  %arrayidx902 = getelementptr inbounds [2 x i32], [2 x i32]* %oback901, i32 0, i64 0
  %481 = load i32, i32* %arrayidx902, align 4
  %482 = load %union.rec*, %union.rec** %y, align 8
  %os1903 = bitcast %union.rec* %482 to %struct.word_type*
  %ou3904 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1903, i32 0, i32 3
  %os31905 = bitcast %union.THIRD_UNION* %ou3904 to %struct.anon.6*
  %ofwd906 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31905, i32 0, i32 1
  %arrayidx907 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd906, i32 0, i64 0
  %483 = load i32, i32* %arrayidx907, align 4
  %add908 = add nsw i32 %481, %483
  %call909 = call float @ScaleFactor(i32 %add897, i32 %add908)
  store float %call909, float* %scale_factor, align 4
  %cmp910 = fcmp ogt float %call909, 0.000000e+00
  br i1 %cmp910, label %if.then.912, label %if.end.935

if.then.912:                                      ; preds = %if.else.888
  %484 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %SaveGraphicState913 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %484, i32 0, i32 24
  %485 = load void (%union.rec*)*, void (%union.rec*)** %SaveGraphicState913, align 8
  %486 = load %union.rec*, %union.rec** %y, align 8
  call void %485(%union.rec* %486)
  %487 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %CoordTranslate914 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %487, i32 0, i32 21
  %488 = load void (i32, i32)*, void (i32, i32)** %CoordTranslate914, align 8
  %489 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2915 = bitcast %union.rec* %489 to %struct.closure_type*
  %oux916 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2915, i32 0, i32 6
  %osave_mark917 = bitcast %union.anon.12* %oux916 to i32*
  %490 = load i32, i32* %osave_mark917, align 4
  %491 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2918 = bitcast %union.rec* %491 to %struct.closure_type*
  %ou4919 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2918, i32 0, i32 4
  %oconstraint920 = bitcast %union.FOURTH_UNION* %ou4919 to %struct.CONSTRAINT*
  %obc921 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint920, i32 0, i32 0
  %492 = load i32, i32* %obc921, align 4
  %sub922 = sub nsw i32 %490, %492
  %493 = load %union.rec*, %union.rec** %y, align 8
  %os1923 = bitcast %union.rec* %493 to %struct.word_type*
  %ou3924 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1923, i32 0, i32 3
  %os31925 = bitcast %union.THIRD_UNION* %ou3924 to %struct.anon.6*
  %oback926 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31925, i32 0, i32 0
  %arrayidx927 = getelementptr inbounds [2 x i32], [2 x i32]* %oback926, i32 0, i64 0
  %494 = load i32, i32* %arrayidx927, align 4
  %conv928 = sitofp i32 %494 to float
  %495 = load float, float* %scale_factor, align 4
  %mul929 = fmul float %conv928, %495
  %conv930 = fptosi float %mul929 to i32
  %add931 = add nsw i32 %sub922, %conv930
  call void %488(i32 %add931, i32 0)
  %496 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %CoordScale932 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %496, i32 0, i32 23
  %497 = load void (float, float)*, void (float, float)** %CoordScale932, align 8
  %498 = load float, float* %scale_factor, align 4
  call void %497(float %498, float 1.000000e+00)
  %499 = load %union.rec*, %union.rec** %y, align 8
  %500 = load i32, i32* %xmk.addr, align 4
  %501 = load i32, i32* %xb.addr, align 4
  %502 = load i32, i32* %xf.addr, align 4
  %503 = load i32, i32* %dim.addr, align 4
  %504 = load i32, i32* %pg.addr, align 4
  %505 = load i32, i32* %count.addr, align 4
  %call933 = call %union.rec* @FixAndPrintObject(%union.rec* %499, i32 %500, i32 %501, i32 %502, i32 %503, i32 0, i32 %504, i32 %505, i32* %aback, i32* %afwd)
  store %union.rec* %call933, %union.rec** %y, align 8
  %506 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %RestoreGraphicState934 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %506, i32 0, i32 25
  %507 = load void ()*, void ()** %RestoreGraphicState934, align 8
  call void %507()
  br label %if.end.935

if.end.935:                                       ; preds = %if.then.912, %if.else.888
  br label %if.end.936

if.end.936:                                       ; preds = %if.end.935, %if.end.887
  br label %if.end.937

if.end.937:                                       ; preds = %if.end.936, %for.end.815
  %508 = load i32, i32* %xb.addr, align 4
  %509 = load i32*, i32** %actual_back.addr, align 8
  store i32 %508, i32* %509, align 4
  %510 = load i32, i32* %xf.addr, align 4
  %511 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %510, i32* %511, align 4
  br label %sw.epilog.5829

sw.bb.938:                                        ; preds = %entry
  %512 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1939 = bitcast %union.rec* %512 to %struct.word_type*
  %olist940 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1939, i32 0, i32 0
  %arrayidx941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist940, i32 0, i64 0
  %osucc942 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx941, i32 0, i32 1
  %513 = load %union.rec*, %union.rec** %osucc942, align 8
  %os1943 = bitcast %union.rec* %513 to %struct.word_type*
  %olist944 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1943, i32 0, i32 0
  %arrayidx945 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist944, i32 0, i64 1
  %opred946 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx945, i32 0, i32 0
  %514 = load %union.rec*, %union.rec** %opred946, align 8
  store %union.rec* %514, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.947

for.cond.947:                                     ; preds = %for.inc.956, %sw.bb.938
  %515 = load %union.rec*, %union.rec** %y, align 8
  %os1948 = bitcast %union.rec* %515 to %struct.word_type*
  %ou1949 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1948, i32 0, i32 1
  %os11950 = bitcast %union.FIRST_UNION* %ou1949 to %struct.anon*
  %otype951 = getelementptr inbounds %struct.anon, %struct.anon* %os11950, i32 0, i32 0
  %516 = load i8, i8* %otype951, align 1
  %conv952 = zext i8 %516 to i32
  %cmp953 = icmp eq i32 %conv952, 0
  br i1 %cmp953, label %for.body.955, label %for.end.962

for.body.955:                                     ; preds = %for.cond.947
  br label %for.inc.956

for.inc.956:                                      ; preds = %for.body.955
  %517 = load %union.rec*, %union.rec** %y, align 8
  %os1957 = bitcast %union.rec* %517 to %struct.word_type*
  %olist958 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1957, i32 0, i32 0
  %arrayidx959 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist958, i32 0, i64 1
  %opred960 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx959, i32 0, i32 0
  %518 = load %union.rec*, %union.rec** %opred960, align 8
  store %union.rec* %518, %union.rec** %y, align 8
  %519 = load i32, i32* %count.addr, align 4
  %inc961 = add nsw i32 %519, 1
  store i32 %inc961, i32* %count.addr, align 4
  br label %for.cond.947

for.end.962:                                      ; preds = %for.cond.947
  %520 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %scale_avail963 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %520, i32 0, i32 2
  %521 = load i32, i32* %scale_avail963, align 4
  %tobool964 = icmp ne i32 %521, 0
  br i1 %tobool964, label %if.then.965, label %if.else.1037

if.then.965:                                      ; preds = %for.end.962
  %522 = load i32, i32* %dim.addr, align 4
  %cmp966 = icmp eq i32 %522, 0
  br i1 %cmp966, label %if.then.968, label %if.else.993

if.then.968:                                      ; preds = %if.then.965
  %523 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2969 = bitcast %union.rec* %523 to %struct.closure_type*
  %ou4970 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2969, i32 0, i32 4
  %oconstraint971 = bitcast %union.FOURTH_UNION* %ou4970 to %struct.CONSTRAINT*
  %obc972 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint971, i32 0, i32 0
  %524 = load i32, i32* %obc972, align 4
  %cmp973 = icmp sgt i32 %524, 0
  br i1 %cmp973, label %if.end.977, label %if.then.975

if.then.975:                                      ; preds = %if.then.968
  %525 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call976 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %525, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.977

if.end.977:                                       ; preds = %if.then.975, %if.then.968
  %526 = load i32, i32* %xmk.addr, align 4
  %527 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2978 = bitcast %union.rec* %527 to %struct.closure_type*
  %oux979 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2978, i32 0, i32 6
  %osave_mark980 = bitcast %union.anon.12* %oux979 to i32*
  store i32 %526, i32* %osave_mark980, align 4
  %528 = load i32, i32* %xb.addr, align 4
  %mul981 = mul nsw i32 %528, 128
  %529 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2982 = bitcast %union.rec* %529 to %struct.closure_type*
  %ou4983 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2982, i32 0, i32 4
  %oconstraint984 = bitcast %union.FOURTH_UNION* %ou4983 to %struct.CONSTRAINT*
  %obc985 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint984, i32 0, i32 0
  %530 = load i32, i32* %obc985, align 4
  %div = sdiv i32 %mul981, %530
  store i32 %div, i32* %yb, align 4
  %531 = load i32, i32* %xf.addr, align 4
  %mul986 = mul nsw i32 %531, 128
  %532 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2987 = bitcast %union.rec* %532 to %struct.closure_type*
  %ou4988 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2987, i32 0, i32 4
  %oconstraint989 = bitcast %union.FOURTH_UNION* %ou4988 to %struct.CONSTRAINT*
  %obc990 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint989, i32 0, i32 0
  %533 = load i32, i32* %obc990, align 4
  %div991 = sdiv i32 %mul986, %533
  store i32 %div991, i32* %yf, align 4
  %534 = load %union.rec*, %union.rec** %y, align 8
  %535 = load i32, i32* %yb, align 4
  %536 = load i32, i32* %yf, align 4
  %537 = load i32, i32* %dim.addr, align 4
  %538 = load i32, i32* %pg.addr, align 4
  %539 = load i32, i32* %count.addr, align 4
  %call992 = call %union.rec* @FixAndPrintObject(%union.rec* %534, i32 0, i32 %535, i32 %536, i32 %537, i32 0, i32 %538, i32 %539, i32* %aback, i32* %afwd)
  store %union.rec* %call992, %union.rec** %y, align 8
  br label %if.end.1036

if.else.993:                                      ; preds = %if.then.965
  %540 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2994 = bitcast %union.rec* %540 to %struct.closure_type*
  %ou4995 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2994, i32 0, i32 4
  %oconstraint996 = bitcast %union.FOURTH_UNION* %ou4995 to %struct.CONSTRAINT*
  %ofc997 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint996, i32 0, i32 2
  %541 = load i32, i32* %ofc997, align 4
  %cmp998 = icmp sgt i32 %541, 0
  br i1 %cmp998, label %if.end.1002, label %if.then.1000

if.then.1000:                                     ; preds = %if.else.993
  %542 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1001 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %542, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.1002

if.end.1002:                                      ; preds = %if.then.1000, %if.else.993
  %543 = load i32, i32* %xb.addr, align 4
  %mul1003 = mul nsw i32 %543, 128
  %544 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21004 = bitcast %union.rec* %544 to %struct.closure_type*
  %ou41005 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21004, i32 0, i32 4
  %oconstraint1006 = bitcast %union.FOURTH_UNION* %ou41005 to %struct.CONSTRAINT*
  %ofc1007 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1006, i32 0, i32 2
  %545 = load i32, i32* %ofc1007, align 4
  %div1008 = sdiv i32 %mul1003, %545
  store i32 %div1008, i32* %yb, align 4
  %546 = load i32, i32* %xf.addr, align 4
  %mul1009 = mul nsw i32 %546, 128
  %547 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21010 = bitcast %union.rec* %547 to %struct.closure_type*
  %ou41011 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21010, i32 0, i32 4
  %oconstraint1012 = bitcast %union.FOURTH_UNION* %ou41011 to %struct.CONSTRAINT*
  %ofc1013 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1012, i32 0, i32 2
  %548 = load i32, i32* %ofc1013, align 4
  %div1014 = sdiv i32 %mul1009, %548
  store i32 %div1014, i32* %yf, align 4
  %549 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %SaveGraphicState1015 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %549, i32 0, i32 24
  %550 = load void (%union.rec*)*, void (%union.rec*)** %SaveGraphicState1015, align 8
  %551 = load %union.rec*, %union.rec** %y, align 8
  call void %550(%union.rec* %551)
  %552 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %CoordTranslate1016 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %552, i32 0, i32 21
  %553 = load void (i32, i32)*, void (i32, i32)** %CoordTranslate1016, align 8
  %554 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21017 = bitcast %union.rec* %554 to %struct.closure_type*
  %oux1018 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21017, i32 0, i32 6
  %osave_mark1019 = bitcast %union.anon.12* %oux1018 to i32*
  %555 = load i32, i32* %osave_mark1019, align 4
  %556 = load i32, i32* %pg.addr, align 4
  %557 = load i32, i32* %xmk.addr, align 4
  %sub1020 = sub nsw i32 %556, %557
  call void %553(i32 %555, i32 %sub1020)
  %558 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %CoordScale1021 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %558, i32 0, i32 23
  %559 = load void (float, float)*, void (float, float)** %CoordScale1021, align 8
  %560 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21022 = bitcast %union.rec* %560 to %struct.closure_type*
  %ou41023 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21022, i32 0, i32 4
  %oconstraint1024 = bitcast %union.FOURTH_UNION* %ou41023 to %struct.CONSTRAINT*
  %obc1025 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1024, i32 0, i32 0
  %561 = load i32, i32* %obc1025, align 4
  %conv1026 = sitofp i32 %561 to float
  %div1027 = fdiv float %conv1026, 1.280000e+02
  %562 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21028 = bitcast %union.rec* %562 to %struct.closure_type*
  %ou41029 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21028, i32 0, i32 4
  %oconstraint1030 = bitcast %union.FOURTH_UNION* %ou41029 to %struct.CONSTRAINT*
  %ofc1031 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1030, i32 0, i32 2
  %563 = load i32, i32* %ofc1031, align 4
  %conv1032 = sitofp i32 %563 to float
  %div1033 = fdiv float %conv1032, 1.280000e+02
  call void %559(float %div1027, float %div1033)
  %564 = load %union.rec*, %union.rec** %y, align 8
  %565 = load i32, i32* %yb, align 4
  %566 = load i32, i32* %yf, align 4
  %567 = load i32, i32* %dim.addr, align 4
  %568 = load i32, i32* %count.addr, align 4
  %call1034 = call %union.rec* @FixAndPrintObject(%union.rec* %564, i32 0, i32 %565, i32 %566, i32 %567, i32 0, i32 0, i32 %568, i32* %aback, i32* %afwd)
  store %union.rec* %call1034, %union.rec** %y, align 8
  %569 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %RestoreGraphicState1035 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %569, i32 0, i32 25
  %570 = load void ()*, void ()** %RestoreGraphicState1035, align 8
  call void %570()
  br label %if.end.1036

if.end.1036:                                      ; preds = %if.end.1002, %if.end.977
  br label %if.end.1053

if.else.1037:                                     ; preds = %for.end.962
  %571 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21038 = bitcast %union.rec* %571 to %struct.closure_type*
  %ou41039 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21038, i32 0, i32 4
  %oconstraint1040 = bitcast %union.FOURTH_UNION* %ou41039 to %struct.CONSTRAINT*
  %obc1041 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1040, i32 0, i32 0
  %572 = load i32, i32* %obc1041, align 4
  %cmp1042 = icmp eq i32 %572, 128
  br i1 %cmp1042, label %land.lhs.true, label %if.end.1052

land.lhs.true:                                    ; preds = %if.else.1037
  %573 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21044 = bitcast %union.rec* %573 to %struct.closure_type*
  %ou41045 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21044, i32 0, i32 4
  %oconstraint1046 = bitcast %union.FOURTH_UNION* %ou41045 to %struct.CONSTRAINT*
  %ofc1047 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1046, i32 0, i32 2
  %574 = load i32, i32* %ofc1047, align 4
  %cmp1048 = icmp eq i32 %574, 128
  br i1 %cmp1048, label %if.then.1050, label %if.end.1052

if.then.1050:                                     ; preds = %land.lhs.true
  %575 = load %union.rec*, %union.rec** %y, align 8
  %576 = load i32, i32* %xmk.addr, align 4
  %577 = load i32, i32* %xb.addr, align 4
  %578 = load i32, i32* %xf.addr, align 4
  %579 = load i32, i32* %dim.addr, align 4
  %580 = load i32, i32* %suppress.addr, align 4
  %581 = load i32, i32* %pg.addr, align 4
  %582 = load i32, i32* %count.addr, align 4
  %call1051 = call %union.rec* @FixAndPrintObject(%union.rec* %575, i32 %576, i32 %577, i32 %578, i32 %579, i32 %580, i32 %581, i32 %582, i32* %aback, i32* %afwd)
  store %union.rec* %call1051, %union.rec** %y, align 8
  br label %if.end.1052

if.end.1052:                                      ; preds = %if.then.1050, %land.lhs.true, %if.else.1037
  br label %if.end.1053

if.end.1053:                                      ; preds = %if.end.1052, %if.end.1036
  %583 = load i32, i32* %xb.addr, align 4
  %584 = load i32*, i32** %actual_back.addr, align 8
  store i32 %583, i32* %584, align 4
  %585 = load i32, i32* %xf.addr, align 4
  %586 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %585, i32* %586, align 4
  br label %sw.epilog.5829

sw.bb.1054:                                       ; preds = %entry
  %587 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11055 = bitcast %union.rec* %587 to %struct.word_type*
  %olist1056 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11055, i32 0, i32 0
  %arrayidx1057 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1056, i32 0, i64 0
  %opred1058 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1057, i32 0, i32 0
  %588 = load %union.rec*, %union.rec** %opred1058, align 8
  %os11059 = bitcast %union.rec* %588 to %struct.word_type*
  %olist1060 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11059, i32 0, i32 0
  %arrayidx1061 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1060, i32 0, i64 1
  %opred1062 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1061, i32 0, i32 0
  %589 = load %union.rec*, %union.rec** %opred1062, align 8
  store %union.rec* %589, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.1063

for.cond.1063:                                    ; preds = %for.inc.1072, %sw.bb.1054
  %590 = load %union.rec*, %union.rec** %y, align 8
  %os11064 = bitcast %union.rec* %590 to %struct.word_type*
  %ou11065 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11064, i32 0, i32 1
  %os111066 = bitcast %union.FIRST_UNION* %ou11065 to %struct.anon*
  %otype1067 = getelementptr inbounds %struct.anon, %struct.anon* %os111066, i32 0, i32 0
  %591 = load i8, i8* %otype1067, align 1
  %conv1068 = zext i8 %591 to i32
  %cmp1069 = icmp eq i32 %conv1068, 0
  br i1 %cmp1069, label %for.body.1071, label %for.end.1078

for.body.1071:                                    ; preds = %for.cond.1063
  br label %for.inc.1072

for.inc.1072:                                     ; preds = %for.body.1071
  %592 = load %union.rec*, %union.rec** %y, align 8
  %os11073 = bitcast %union.rec* %592 to %struct.word_type*
  %olist1074 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11073, i32 0, i32 0
  %arrayidx1075 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1074, i32 0, i64 1
  %opred1076 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1075, i32 0, i32 0
  %593 = load %union.rec*, %union.rec** %opred1076, align 8
  store %union.rec* %593, %union.rec** %y, align 8
  %594 = load i32, i32* %count.addr, align 4
  %inc1077 = add nsw i32 %594, 1
  store i32 %inc1077, i32* %count.addr, align 4
  br label %for.cond.1063

for.end.1078:                                     ; preds = %for.cond.1063
  %595 = load i32, i32* %dim.addr, align 4
  %cmp1079 = icmp eq i32 %595, 0
  br i1 %cmp1079, label %if.then.1081, label %if.else.1107

if.then.1081:                                     ; preds = %for.end.1078
  %596 = load %union.rec*, %union.rec** %y, align 8
  %597 = load i32, i32* %xmk.addr, align 4
  %598 = load i32, i32* %dim.addr, align 4
  %idxprom1082 = sext i32 %598 to i64
  %599 = load %union.rec*, %union.rec** %y, align 8
  %os11083 = bitcast %union.rec* %599 to %struct.word_type*
  %ou31084 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11083, i32 0, i32 3
  %os311085 = bitcast %union.THIRD_UNION* %ou31084 to %struct.anon.6*
  %oback1086 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311085, i32 0, i32 0
  %arrayidx1087 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1086, i32 0, i64 %idxprom1082
  %600 = load i32, i32* %arrayidx1087, align 4
  %601 = load i32, i32* %dim.addr, align 4
  %idxprom1088 = sext i32 %601 to i64
  %602 = load %union.rec*, %union.rec** %y, align 8
  %os11089 = bitcast %union.rec* %602 to %struct.word_type*
  %ou31090 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11089, i32 0, i32 3
  %os311091 = bitcast %union.THIRD_UNION* %ou31090 to %struct.anon.6*
  %ofwd1092 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311091, i32 0, i32 1
  %arrayidx1093 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1092, i32 0, i64 %idxprom1088
  %603 = load i32, i32* %arrayidx1093, align 4
  %604 = load i32, i32* %dim.addr, align 4
  %605 = load i32, i32* %pg.addr, align 4
  %606 = load i32, i32* %count.addr, align 4
  %call1094 = call %union.rec* @FixAndPrintObject(%union.rec* %596, i32 %597, i32 %600, i32 %603, i32 %604, i32 0, i32 %605, i32 %606, i32* %aback, i32* %afwd)
  store %union.rec* %call1094, %union.rec** %y, align 8
  %607 = load i32, i32* %dim.addr, align 4
  %idxprom1095 = sext i32 %607 to i64
  %608 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11096 = bitcast %union.rec* %608 to %struct.word_type*
  %ou31097 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11096, i32 0, i32 3
  %os311098 = bitcast %union.THIRD_UNION* %ou31097 to %struct.anon.6*
  %oback1099 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311098, i32 0, i32 0
  %arrayidx1100 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1099, i32 0, i64 %idxprom1095
  %609 = load i32, i32* %arrayidx1100, align 4
  %610 = load i32*, i32** %actual_back.addr, align 8
  store i32 %609, i32* %610, align 4
  %611 = load i32, i32* %dim.addr, align 4
  %idxprom1101 = sext i32 %611 to i64
  %612 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11102 = bitcast %union.rec* %612 to %struct.word_type*
  %ou31103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11102, i32 0, i32 3
  %os311104 = bitcast %union.THIRD_UNION* %ou31103 to %struct.anon.6*
  %ofwd1105 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311104, i32 0, i32 1
  %arrayidx1106 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1105, i32 0, i64 %idxprom1101
  %613 = load i32, i32* %arrayidx1106, align 4
  %614 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %613, i32* %614, align 4
  br label %if.end.1109

if.else.1107:                                     ; preds = %for.end.1078
  %615 = load %union.rec*, %union.rec** %y, align 8
  %616 = load i32, i32* %xmk.addr, align 4
  %617 = load i32, i32* %xb.addr, align 4
  %618 = load i32, i32* %xf.addr, align 4
  %619 = load i32, i32* %dim.addr, align 4
  %620 = load i32, i32* %suppress.addr, align 4
  %621 = load i32, i32* %pg.addr, align 4
  %622 = load i32, i32* %count.addr, align 4
  %623 = load i32*, i32** %actual_back.addr, align 8
  %624 = load i32*, i32** %actual_fwd.addr, align 8
  %call1108 = call %union.rec* @FixAndPrintObject(%union.rec* %615, i32 %616, i32 %617, i32 %618, i32 %619, i32 %620, i32 %621, i32 %622, i32* %623, i32* %624)
  store %union.rec* %call1108, %union.rec** %y, align 8
  br label %if.end.1109

if.end.1109:                                      ; preds = %if.else.1107, %if.then.1081
  br label %sw.epilog.5829

sw.bb.1110:                                       ; preds = %entry
  %625 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11111 = bitcast %union.rec* %625 to %struct.word_type*
  %olist1112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11111, i32 0, i32 0
  %arrayidx1113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1112, i32 0, i64 0
  %osucc1114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1113, i32 0, i32 1
  %626 = load %union.rec*, %union.rec** %osucc1114, align 8
  %os11115 = bitcast %union.rec* %626 to %struct.word_type*
  %olist1116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11115, i32 0, i32 0
  %arrayidx1117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1116, i32 0, i64 1
  %opred1118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1117, i32 0, i32 0
  %627 = load %union.rec*, %union.rec** %opred1118, align 8
  store %union.rec* %627, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.1119

for.cond.1119:                                    ; preds = %for.inc.1128, %sw.bb.1110
  %628 = load %union.rec*, %union.rec** %y, align 8
  %os11120 = bitcast %union.rec* %628 to %struct.word_type*
  %ou11121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11120, i32 0, i32 1
  %os111122 = bitcast %union.FIRST_UNION* %ou11121 to %struct.anon*
  %otype1123 = getelementptr inbounds %struct.anon, %struct.anon* %os111122, i32 0, i32 0
  %629 = load i8, i8* %otype1123, align 1
  %conv1124 = zext i8 %629 to i32
  %cmp1125 = icmp eq i32 %conv1124, 0
  br i1 %cmp1125, label %for.body.1127, label %for.end.1134

for.body.1127:                                    ; preds = %for.cond.1119
  br label %for.inc.1128

for.inc.1128:                                     ; preds = %for.body.1127
  %630 = load %union.rec*, %union.rec** %y, align 8
  %os11129 = bitcast %union.rec* %630 to %struct.word_type*
  %olist1130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11129, i32 0, i32 0
  %arrayidx1131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1130, i32 0, i64 1
  %opred1132 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1131, i32 0, i32 0
  %631 = load %union.rec*, %union.rec** %opred1132, align 8
  store %union.rec* %631, %union.rec** %y, align 8
  %632 = load i32, i32* %count.addr, align 4
  %inc1133 = add nsw i32 %632, 1
  store i32 %inc1133, i32* %count.addr, align 4
  br label %for.cond.1119

for.end.1134:                                     ; preds = %for.cond.1119
  %633 = load %union.rec*, %union.rec** %y, align 8
  %634 = load i32, i32* %xmk.addr, align 4
  %635 = load i32, i32* %xb.addr, align 4
  %636 = load i32, i32* %xf.addr, align 4
  %637 = load i32, i32* %dim.addr, align 4
  %638 = load i32, i32* %suppress.addr, align 4
  %639 = load i32, i32* %pg.addr, align 4
  %640 = load i32, i32* %count.addr, align 4
  %call1135 = call %union.rec* @FixAndPrintObject(%union.rec* %633, i32 %634, i32 %635, i32 %636, i32 %637, i32 %638, i32 %639, i32 %640, i32* %aback, i32* %afwd)
  store %union.rec* %call1135, %union.rec** %y, align 8
  %641 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11136 = bitcast %union.rec* %641 to %struct.word_type*
  %olist1137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11136, i32 0, i32 0
  %arrayidx1138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1137, i32 0, i64 0
  %opred1139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1138, i32 0, i32 0
  %642 = load %union.rec*, %union.rec** %opred1139, align 8
  %os11140 = bitcast %union.rec* %642 to %struct.word_type*
  %olist1141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11140, i32 0, i32 0
  %arrayidx1142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1141, i32 0, i64 1
  %opred1143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1142, i32 0, i32 0
  %643 = load %union.rec*, %union.rec** %opred1143, align 8
  store %union.rec* %643, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.1144

for.cond.1144:                                    ; preds = %for.inc.1153, %for.end.1134
  %644 = load %union.rec*, %union.rec** %y, align 8
  %os11145 = bitcast %union.rec* %644 to %struct.word_type*
  %ou11146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11145, i32 0, i32 1
  %os111147 = bitcast %union.FIRST_UNION* %ou11146 to %struct.anon*
  %otype1148 = getelementptr inbounds %struct.anon, %struct.anon* %os111147, i32 0, i32 0
  %645 = load i8, i8* %otype1148, align 1
  %conv1149 = zext i8 %645 to i32
  %cmp1150 = icmp eq i32 %conv1149, 0
  br i1 %cmp1150, label %for.body.1152, label %for.end.1159

for.body.1152:                                    ; preds = %for.cond.1144
  br label %for.inc.1153

for.inc.1153:                                     ; preds = %for.body.1152
  %646 = load %union.rec*, %union.rec** %y, align 8
  %os11154 = bitcast %union.rec* %646 to %struct.word_type*
  %olist1155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11154, i32 0, i32 0
  %arrayidx1156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1155, i32 0, i64 1
  %opred1157 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1156, i32 0, i32 0
  %647 = load %union.rec*, %union.rec** %opred1157, align 8
  store %union.rec* %647, %union.rec** %y, align 8
  %648 = load i32, i32* %count.addr, align 4
  %inc1158 = add nsw i32 %648, 1
  store i32 %inc1158, i32* %count.addr, align 4
  br label %for.cond.1144

for.end.1159:                                     ; preds = %for.cond.1144
  %649 = load %union.rec*, %union.rec** %y, align 8
  %650 = load i32, i32* %xmk.addr, align 4
  %651 = load i32, i32* %xb.addr, align 4
  %652 = load i32, i32* %xf.addr, align 4
  %653 = load i32, i32* %dim.addr, align 4
  %654 = load i32, i32* %suppress.addr, align 4
  %655 = load i32, i32* %pg.addr, align 4
  %656 = load i32, i32* %count.addr, align 4
  %call1160 = call %union.rec* @FixAndPrintObject(%union.rec* %649, i32 %650, i32 %651, i32 %652, i32 %653, i32 %654, i32 %655, i32 %656, i32* %aback, i32* %afwd)
  store %union.rec* %call1160, %union.rec** %y, align 8
  %657 = load i32, i32* %dim.addr, align 4
  %idxprom1161 = sext i32 %657 to i64
  %658 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11162 = bitcast %union.rec* %658 to %struct.word_type*
  %ou31163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11162, i32 0, i32 3
  %os311164 = bitcast %union.THIRD_UNION* %ou31163 to %struct.anon.6*
  %oback1165 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311164, i32 0, i32 0
  %arrayidx1166 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1165, i32 0, i64 %idxprom1161
  %659 = load i32, i32* %arrayidx1166, align 4
  %660 = load i32*, i32** %actual_back.addr, align 8
  store i32 %659, i32* %660, align 4
  %661 = load i32, i32* %dim.addr, align 4
  %idxprom1167 = sext i32 %661 to i64
  %662 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11168 = bitcast %union.rec* %662 to %struct.word_type*
  %ou31169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11168, i32 0, i32 3
  %os311170 = bitcast %union.THIRD_UNION* %ou31169 to %struct.anon.6*
  %ofwd1171 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311170, i32 0, i32 1
  %arrayidx1172 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1171, i32 0, i64 %idxprom1167
  %663 = load i32, i32* %arrayidx1172, align 4
  %664 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %663, i32* %664, align 4
  br label %sw.epilog.5829

sw.bb.1173:                                       ; preds = %entry
  %665 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11174 = bitcast %union.rec* %665 to %struct.word_type*
  %olist1175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11174, i32 0, i32 0
  %arrayidx1176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1175, i32 0, i64 0
  %osucc1177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1176, i32 0, i32 1
  %666 = load %union.rec*, %union.rec** %osucc1177, align 8
  %os11178 = bitcast %union.rec* %666 to %struct.word_type*
  %olist1179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11178, i32 0, i32 0
  %arrayidx1180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1179, i32 0, i64 1
  %opred1181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1180, i32 0, i32 0
  %667 = load %union.rec*, %union.rec** %opred1181, align 8
  store %union.rec* %667, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.1182

for.cond.1182:                                    ; preds = %for.inc.1191, %sw.bb.1173
  %668 = load %union.rec*, %union.rec** %y, align 8
  %os11183 = bitcast %union.rec* %668 to %struct.word_type*
  %ou11184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11183, i32 0, i32 1
  %os111185 = bitcast %union.FIRST_UNION* %ou11184 to %struct.anon*
  %otype1186 = getelementptr inbounds %struct.anon, %struct.anon* %os111185, i32 0, i32 0
  %669 = load i8, i8* %otype1186, align 1
  %conv1187 = zext i8 %669 to i32
  %cmp1188 = icmp eq i32 %conv1187, 0
  br i1 %cmp1188, label %for.body.1190, label %for.end.1197

for.body.1190:                                    ; preds = %for.cond.1182
  br label %for.inc.1191

for.inc.1191:                                     ; preds = %for.body.1190
  %670 = load %union.rec*, %union.rec** %y, align 8
  %os11192 = bitcast %union.rec* %670 to %struct.word_type*
  %olist1193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11192, i32 0, i32 0
  %arrayidx1194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1193, i32 0, i64 1
  %opred1195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1194, i32 0, i32 0
  %671 = load %union.rec*, %union.rec** %opred1195, align 8
  store %union.rec* %671, %union.rec** %y, align 8
  %672 = load i32, i32* %count.addr, align 4
  %inc1196 = add nsw i32 %672, 1
  store i32 %inc1196, i32* %count.addr, align 4
  br label %for.cond.1182

for.end.1197:                                     ; preds = %for.cond.1182
  %673 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %rotate_avail = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %673, i32 0, i32 3
  %674 = load i32, i32* %rotate_avail, align 4
  %tobool1198 = icmp ne i32 %674, 0
  br i1 %tobool1198, label %if.then.1199, label %if.else.1287

if.then.1199:                                     ; preds = %for.end.1197
  %675 = load i32, i32* %dim.addr, align 4
  %cmp1200 = icmp eq i32 %675, 0
  br i1 %cmp1200, label %if.then.1202, label %if.else.1238

if.then.1202:                                     ; preds = %if.then.1199
  %676 = load i32, i32* %xmk.addr, align 4
  %677 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21203 = bitcast %union.rec* %677 to %struct.closure_type*
  %oux1204 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21203, i32 0, i32 6
  %osave_mark1205 = bitcast %union.anon.12* %oux1204 to i32*
  store i32 %676, i32* %osave_mark1205, align 4
  %678 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11206 = bitcast %union.rec* %678 to %struct.word_type*
  %ou31207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11206, i32 0, i32 3
  %os311208 = bitcast %union.THIRD_UNION* %ou31207 to %struct.anon.6*
  %oback1209 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311208, i32 0, i32 0
  %arrayidx1210 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1209, i32 0, i64 0
  %679 = load i32, i32* %arrayidx1210, align 4
  %obc1211 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %colc, i32 0, i32 0
  store i32 %679, i32* %obc1211, align 4
  %obfc1212 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %colc, i32 0, i32 1
  store i32 8388607, i32* %obfc1212, align 4
  %680 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11213 = bitcast %union.rec* %680 to %struct.word_type*
  %ou31214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11213, i32 0, i32 3
  %os311215 = bitcast %union.THIRD_UNION* %ou31214 to %struct.anon.6*
  %ofwd1216 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311215, i32 0, i32 1
  %arrayidx1217 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1216, i32 0, i64 0
  %681 = load i32, i32* %arrayidx1217, align 4
  %ofc1218 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %colc, i32 0, i32 2
  store i32 %681, i32* %ofc1218, align 4
  %682 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11219 = bitcast %union.rec* %682 to %struct.word_type*
  %ou31220 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11219, i32 0, i32 3
  %os311221 = bitcast %union.THIRD_UNION* %ou31220 to %struct.anon.6*
  %oback1222 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311221, i32 0, i32 0
  %arrayidx1223 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1222, i32 0, i64 1
  %683 = load i32, i32* %arrayidx1223, align 4
  %obc1224 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %rowc, i32 0, i32 0
  store i32 %683, i32* %obc1224, align 4
  %obfc1225 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %rowc, i32 0, i32 1
  store i32 8388607, i32* %obfc1225, align 4
  %684 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11226 = bitcast %union.rec* %684 to %struct.word_type*
  %ou31227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11226, i32 0, i32 3
  %os311228 = bitcast %union.THIRD_UNION* %ou31227 to %struct.anon.6*
  %ofwd1229 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311228, i32 0, i32 1
  %arrayidx1230 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1229, i32 0, i64 1
  %685 = load i32, i32* %arrayidx1230, align 4
  %ofc1231 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %rowc, i32 0, i32 2
  store i32 %685, i32* %ofc1231, align 4
  %686 = load %union.rec*, %union.rec** %y, align 8
  %687 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21232 = bitcast %union.rec* %687 to %struct.closure_type*
  %ou41233 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21232, i32 0, i32 4
  %oconstraint1234 = bitcast %union.FOURTH_UNION* %ou41233 to %struct.CONSTRAINT*
  %osparec = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1234, i32 0, i32 3
  %688 = load i32, i32* %osparec, align 4
  call void @RotateConstraint(%struct.CONSTRAINT* %yc, %union.rec* %686, i32 %688, %struct.CONSTRAINT* %colc, %struct.CONSTRAINT* %rowc, i32 0)
  %689 = load %union.rec*, %union.rec** %y, align 8
  %obc1235 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %690 = load i32, i32* %obc1235, align 4
  %ofc1236 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %691 = load i32, i32* %ofc1236, align 4
  %692 = load i32, i32* %pg.addr, align 4
  %693 = load i32, i32* %count.addr, align 4
  %call1237 = call %union.rec* @FixAndPrintObject(%union.rec* %689, i32 0, i32 %690, i32 %691, i32 0, i32 0, i32 %692, i32 %693, i32* %aback, i32* %afwd)
  store %union.rec* %call1237, %union.rec** %y, align 8
  br label %if.end.1286

if.else.1238:                                     ; preds = %if.then.1199
  %694 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %SaveGraphicState1242 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %694, i32 0, i32 24
  %695 = load void (%union.rec*)*, void (%union.rec*)** %SaveGraphicState1242, align 8
  %696 = load %union.rec*, %union.rec** %y, align 8
  call void %695(%union.rec* %696)
  %697 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %CoordTranslate1243 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %697, i32 0, i32 21
  %698 = load void (i32, i32)*, void (i32, i32)** %CoordTranslate1243, align 8
  %699 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21244 = bitcast %union.rec* %699 to %struct.closure_type*
  %oux1245 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21244, i32 0, i32 6
  %osave_mark1246 = bitcast %union.anon.12* %oux1245 to i32*
  %700 = load i32, i32* %osave_mark1246, align 4
  %701 = load i32, i32* %pg.addr, align 4
  %702 = load i32, i32* %xmk.addr, align 4
  %sub1247 = sub nsw i32 %701, %702
  call void %698(i32 %700, i32 %sub1247)
  %703 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %CoordRotate = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %703, i32 0, i32 22
  %704 = load void (i32)*, void (i32)** %CoordRotate, align 8
  %705 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21248 = bitcast %union.rec* %705 to %struct.closure_type*
  %ou41249 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21248, i32 0, i32 4
  %oconstraint1250 = bitcast %union.FOURTH_UNION* %ou41249 to %struct.CONSTRAINT*
  %osparec1251 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1250, i32 0, i32 3
  %706 = load i32, i32* %osparec1251, align 4
  call void %704(i32 %706)
  %707 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11252 = bitcast %union.rec* %707 to %struct.word_type*
  %ou31253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11252, i32 0, i32 3
  %os311254 = bitcast %union.THIRD_UNION* %ou31253 to %struct.anon.6*
  %oback1255 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311254, i32 0, i32 0
  %arrayidx1256 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1255, i32 0, i64 0
  %708 = load i32, i32* %arrayidx1256, align 4
  %obc1257 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %colc1239, i32 0, i32 0
  store i32 %708, i32* %obc1257, align 4
  %obfc1258 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %colc1239, i32 0, i32 1
  store i32 8388607, i32* %obfc1258, align 4
  %709 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11259 = bitcast %union.rec* %709 to %struct.word_type*
  %ou31260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11259, i32 0, i32 3
  %os311261 = bitcast %union.THIRD_UNION* %ou31260 to %struct.anon.6*
  %ofwd1262 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311261, i32 0, i32 1
  %arrayidx1263 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1262, i32 0, i64 0
  %710 = load i32, i32* %arrayidx1263, align 4
  %ofc1264 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %colc1239, i32 0, i32 2
  store i32 %710, i32* %ofc1264, align 4
  %711 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11265 = bitcast %union.rec* %711 to %struct.word_type*
  %ou31266 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11265, i32 0, i32 3
  %os311267 = bitcast %union.THIRD_UNION* %ou31266 to %struct.anon.6*
  %oback1268 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311267, i32 0, i32 0
  %arrayidx1269 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1268, i32 0, i64 1
  %712 = load i32, i32* %arrayidx1269, align 4
  %obc1270 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %rowc1240, i32 0, i32 0
  store i32 %712, i32* %obc1270, align 4
  %obfc1271 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %rowc1240, i32 0, i32 1
  store i32 8388607, i32* %obfc1271, align 4
  %713 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11272 = bitcast %union.rec* %713 to %struct.word_type*
  %ou31273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11272, i32 0, i32 3
  %os311274 = bitcast %union.THIRD_UNION* %ou31273 to %struct.anon.6*
  %ofwd1275 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311274, i32 0, i32 1
  %arrayidx1276 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1275, i32 0, i64 1
  %714 = load i32, i32* %arrayidx1276, align 4
  %ofc1277 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %rowc1240, i32 0, i32 2
  store i32 %714, i32* %ofc1277, align 4
  %715 = load %union.rec*, %union.rec** %y, align 8
  %716 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21278 = bitcast %union.rec* %716 to %struct.closure_type*
  %ou41279 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21278, i32 0, i32 4
  %oconstraint1280 = bitcast %union.FOURTH_UNION* %ou41279 to %struct.CONSTRAINT*
  %osparec1281 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1280, i32 0, i32 3
  %717 = load i32, i32* %osparec1281, align 4
  call void @RotateConstraint(%struct.CONSTRAINT* %yc1241, %union.rec* %715, i32 %717, %struct.CONSTRAINT* %colc1239, %struct.CONSTRAINT* %rowc1240, i32 1)
  %718 = load %union.rec*, %union.rec** %y, align 8
  %obc1282 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc1241, i32 0, i32 0
  %719 = load i32, i32* %obc1282, align 4
  %ofc1283 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc1241, i32 0, i32 2
  %720 = load i32, i32* %ofc1283, align 4
  %721 = load i32, i32* %count.addr, align 4
  %call1284 = call %union.rec* @FixAndPrintObject(%union.rec* %718, i32 0, i32 %719, i32 %720, i32 1, i32 0, i32 0, i32 %721, i32* %aback, i32* %afwd)
  store %union.rec* %call1284, %union.rec** %y, align 8
  %722 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %RestoreGraphicState1285 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %722, i32 0, i32 25
  %723 = load void ()*, void ()** %RestoreGraphicState1285, align 8
  call void %723()
  br label %if.end.1286

if.end.1286:                                      ; preds = %if.else.1238, %if.then.1202
  br label %if.end.1297

if.else.1287:                                     ; preds = %for.end.1197
  %724 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21288 = bitcast %union.rec* %724 to %struct.closure_type*
  %ou41289 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21288, i32 0, i32 4
  %oconstraint1290 = bitcast %union.FOURTH_UNION* %ou41289 to %struct.CONSTRAINT*
  %osparec1291 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint1290, i32 0, i32 3
  %725 = load i32, i32* %osparec1291, align 4
  %cmp1292 = icmp eq i32 %725, 0
  br i1 %cmp1292, label %if.then.1294, label %if.end.1296

if.then.1294:                                     ; preds = %if.else.1287
  %726 = load %union.rec*, %union.rec** %y, align 8
  %727 = load i32, i32* %xmk.addr, align 4
  %728 = load i32, i32* %xb.addr, align 4
  %729 = load i32, i32* %xf.addr, align 4
  %730 = load i32, i32* %dim.addr, align 4
  %731 = load i32, i32* %suppress.addr, align 4
  %732 = load i32, i32* %pg.addr, align 4
  %733 = load i32, i32* %count.addr, align 4
  %call1295 = call %union.rec* @FixAndPrintObject(%union.rec* %726, i32 %727, i32 %728, i32 %729, i32 %730, i32 %731, i32 %732, i32 %733, i32* %aback, i32* %afwd)
  store %union.rec* %call1295, %union.rec** %y, align 8
  br label %if.end.1296

if.end.1296:                                      ; preds = %if.then.1294, %if.else.1287
  br label %if.end.1297

if.end.1297:                                      ; preds = %if.end.1296, %if.end.1286
  %734 = load i32, i32* %xb.addr, align 4
  %735 = load i32*, i32** %actual_back.addr, align 8
  store i32 %734, i32* %735, align 4
  %736 = load i32, i32* %xf.addr, align 4
  %737 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %736, i32* %737, align 4
  br label %sw.epilog.5829

sw.bb.1298:                                       ; preds = %entry
  %738 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11299 = bitcast %union.rec* %738 to %struct.word_type*
  %olist1300 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11299, i32 0, i32 0
  %arrayidx1301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1300, i32 0, i64 0
  %opred1302 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1301, i32 0, i32 0
  %739 = load %union.rec*, %union.rec** %opred1302, align 8
  %os11303 = bitcast %union.rec* %739 to %struct.word_type*
  %olist1304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11303, i32 0, i32 0
  %arrayidx1305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1304, i32 0, i64 1
  %opred1306 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1305, i32 0, i32 0
  %740 = load %union.rec*, %union.rec** %opred1306, align 8
  store %union.rec* %740, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.1307

for.cond.1307:                                    ; preds = %for.inc.1316, %sw.bb.1298
  %741 = load %union.rec*, %union.rec** %y, align 8
  %os11308 = bitcast %union.rec* %741 to %struct.word_type*
  %ou11309 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11308, i32 0, i32 1
  %os111310 = bitcast %union.FIRST_UNION* %ou11309 to %struct.anon*
  %otype1311 = getelementptr inbounds %struct.anon, %struct.anon* %os111310, i32 0, i32 0
  %742 = load i8, i8* %otype1311, align 1
  %conv1312 = zext i8 %742 to i32
  %cmp1313 = icmp eq i32 %conv1312, 0
  br i1 %cmp1313, label %for.body.1315, label %for.end.1322

for.body.1315:                                    ; preds = %for.cond.1307
  br label %for.inc.1316

for.inc.1316:                                     ; preds = %for.body.1315
  %743 = load %union.rec*, %union.rec** %y, align 8
  %os11317 = bitcast %union.rec* %743 to %struct.word_type*
  %olist1318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11317, i32 0, i32 0
  %arrayidx1319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1318, i32 0, i64 1
  %opred1320 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1319, i32 0, i32 0
  %744 = load %union.rec*, %union.rec** %opred1320, align 8
  store %union.rec* %744, %union.rec** %y, align 8
  %745 = load i32, i32* %count.addr, align 4
  %inc1321 = add nsw i32 %745, 1
  store i32 %inc1321, i32* %count.addr, align 4
  br label %for.cond.1307

for.end.1322:                                     ; preds = %for.cond.1307
  %746 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %plaingraphic_avail = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %746, i32 0, i32 6
  %747 = load i32, i32* %plaingraphic_avail, align 4
  %tobool1323 = icmp ne i32 %747, 0
  br i1 %tobool1323, label %if.then.1324, label %if.else.1474

if.then.1324:                                     ; preds = %for.end.1322
  %748 = load i32, i32* %dim.addr, align 4
  %cmp1325 = icmp eq i32 %748, 0
  br i1 %cmp1325, label %if.then.1327, label %if.else.1351

if.then.1327:                                     ; preds = %if.then.1324
  %749 = load i32, i32* %xb.addr, align 4
  %750 = load i32, i32* %dim.addr, align 4
  %idxprom1328 = sext i32 %750 to i64
  %751 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11329 = bitcast %union.rec* %751 to %struct.word_type*
  %ou31330 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11329, i32 0, i32 3
  %os311331 = bitcast %union.THIRD_UNION* %ou31330 to %struct.anon.6*
  %oback1332 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311331, i32 0, i32 0
  %arrayidx1333 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1332, i32 0, i64 %idxprom1328
  store i32 %749, i32* %arrayidx1333, align 4
  %752 = load i32, i32* %xf.addr, align 4
  %753 = load i32, i32* %dim.addr, align 4
  %idxprom1334 = sext i32 %753 to i64
  %754 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11335 = bitcast %union.rec* %754 to %struct.word_type*
  %ou31336 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11335, i32 0, i32 3
  %os311337 = bitcast %union.THIRD_UNION* %ou31336 to %struct.anon.6*
  %ofwd1338 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311337, i32 0, i32 1
  %arrayidx1339 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1338, i32 0, i64 %idxprom1334
  store i32 %752, i32* %arrayidx1339, align 4
  %755 = load i32, i32* %xmk.addr, align 4
  %756 = load i32, i32* %dim.addr, align 4
  %idxprom1340 = sext i32 %756 to i64
  %757 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11341 = bitcast %union.rec* %757 to %struct.word_type*
  %ou31342 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11341, i32 0, i32 3
  %os311343 = bitcast %union.THIRD_UNION* %ou31342 to %struct.anon.6*
  %oback1344 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311343, i32 0, i32 0
  %arrayidx1345 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1344, i32 0, i64 %idxprom1340
  %758 = load i32, i32* %arrayidx1345, align 4
  %sub1346 = sub nsw i32 %755, %758
  %759 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21347 = bitcast %union.rec* %759 to %struct.closure_type*
  %oux1348 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21347, i32 0, i32 6
  %osave_mark1349 = bitcast %union.anon.12* %oux1348 to i32*
  store i32 %sub1346, i32* %osave_mark1349, align 4
  %760 = load %union.rec*, %union.rec** %y, align 8
  %761 = load i32, i32* %xmk.addr, align 4
  %762 = load i32, i32* %xb.addr, align 4
  %763 = load i32, i32* %xf.addr, align 4
  %764 = load i32, i32* %dim.addr, align 4
  %765 = load i32, i32* %suppress.addr, align 4
  %766 = load i32, i32* %pg.addr, align 4
  %767 = load i32, i32* %count.addr, align 4
  %call1350 = call %union.rec* @FixAndPrintObject(%union.rec* %760, i32 %761, i32 %762, i32 %763, i32 %764, i32 %765, i32 %766, i32 %767, i32* %aback, i32* %afwd)
  store %union.rec* %call1350, %union.rec** %y, align 8
  br label %if.end.1473

if.else.1351:                                     ; preds = %if.then.1324
  %768 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11354 = bitcast %union.rec* %768 to %struct.word_type*
  %olist1355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11354, i32 0, i32 0
  %arrayidx1356 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1355, i32 0, i64 0
  %osucc1357 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1356, i32 0, i32 1
  %769 = load %union.rec*, %union.rec** %osucc1357, align 8
  %os11358 = bitcast %union.rec* %769 to %struct.word_type*
  %olist1359 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11358, i32 0, i32 0
  %arrayidx1360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1359, i32 0, i64 1
  %opred1361 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1360, i32 0, i32 0
  %770 = load %union.rec*, %union.rec** %opred1361, align 8
  store %union.rec* %770, %union.rec** %tmp, align 8
  br label %for.cond.1362

for.cond.1362:                                    ; preds = %for.inc.1371, %if.else.1351
  %771 = load %union.rec*, %union.rec** %tmp, align 8
  %os11363 = bitcast %union.rec* %771 to %struct.word_type*
  %ou11364 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11363, i32 0, i32 1
  %os111365 = bitcast %union.FIRST_UNION* %ou11364 to %struct.anon*
  %otype1366 = getelementptr inbounds %struct.anon, %struct.anon* %os111365, i32 0, i32 0
  %772 = load i8, i8* %otype1366, align 1
  %conv1367 = zext i8 %772 to i32
  %cmp1368 = icmp eq i32 %conv1367, 0
  br i1 %cmp1368, label %for.body.1370, label %for.end.1376

for.body.1370:                                    ; preds = %for.cond.1362
  br label %for.inc.1371

for.inc.1371:                                     ; preds = %for.body.1370
  %773 = load %union.rec*, %union.rec** %tmp, align 8
  %os11372 = bitcast %union.rec* %773 to %struct.word_type*
  %olist1373 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11372, i32 0, i32 0
  %arrayidx1374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1373, i32 0, i64 1
  %opred1375 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1374, i32 0, i32 0
  %774 = load %union.rec*, %union.rec** %opred1375, align 8
  store %union.rec* %774, %union.rec** %tmp, align 8
  br label %for.cond.1362

for.end.1376:                                     ; preds = %for.cond.1362
  %775 = load %union.rec*, %union.rec** %tmp, align 8
  %os11377 = bitcast %union.rec* %775 to %struct.word_type*
  %ou11378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11377, i32 0, i32 1
  %os111379 = bitcast %union.FIRST_UNION* %ou11378 to %struct.anon*
  %otype1380 = getelementptr inbounds %struct.anon, %struct.anon* %os111379, i32 0, i32 0
  %776 = load i8, i8* %otype1380, align 1
  %conv1381 = zext i8 %776 to i32
  %cmp1382 = icmp eq i32 %conv1381, 19
  br i1 %cmp1382, label %if.then.1384, label %if.else.1431

if.then.1384:                                     ; preds = %for.end.1376
  %777 = load %union.rec*, %union.rec** %tmp, align 8
  %os11385 = bitcast %union.rec* %777 to %struct.word_type*
  %olist1386 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11385, i32 0, i32 0
  %arrayidx1387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1386, i32 0, i64 0
  %osucc1388 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1387, i32 0, i32 1
  %778 = load %union.rec*, %union.rec** %osucc1388, align 8
  %os11389 = bitcast %union.rec* %778 to %struct.word_type*
  %olist1390 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11389, i32 0, i32 0
  %arrayidx1391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1390, i32 0, i64 1
  %opred1392 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1391, i32 0, i32 0
  %779 = load %union.rec*, %union.rec** %opred1392, align 8
  store %union.rec* %779, %union.rec** %pre, align 8
  br label %for.cond.1393

for.cond.1393:                                    ; preds = %for.inc.1402, %if.then.1384
  %780 = load %union.rec*, %union.rec** %pre, align 8
  %os11394 = bitcast %union.rec* %780 to %struct.word_type*
  %ou11395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11394, i32 0, i32 1
  %os111396 = bitcast %union.FIRST_UNION* %ou11395 to %struct.anon*
  %otype1397 = getelementptr inbounds %struct.anon, %struct.anon* %os111396, i32 0, i32 0
  %781 = load i8, i8* %otype1397, align 1
  %conv1398 = zext i8 %781 to i32
  %cmp1399 = icmp eq i32 %conv1398, 0
  br i1 %cmp1399, label %for.body.1401, label %for.end.1407

for.body.1401:                                    ; preds = %for.cond.1393
  br label %for.inc.1402

for.inc.1402:                                     ; preds = %for.body.1401
  %782 = load %union.rec*, %union.rec** %pre, align 8
  %os11403 = bitcast %union.rec* %782 to %struct.word_type*
  %olist1404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11403, i32 0, i32 0
  %arrayidx1405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1404, i32 0, i64 1
  %opred1406 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1405, i32 0, i32 0
  %783 = load %union.rec*, %union.rec** %opred1406, align 8
  store %union.rec* %783, %union.rec** %pre, align 8
  br label %for.cond.1393

for.end.1407:                                     ; preds = %for.cond.1393
  %784 = load %union.rec*, %union.rec** %tmp, align 8
  %os11408 = bitcast %union.rec* %784 to %struct.word_type*
  %olist1409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11408, i32 0, i32 0
  %arrayidx1410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1409, i32 0, i64 0
  %opred1411 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1410, i32 0, i32 0
  %785 = load %union.rec*, %union.rec** %opred1411, align 8
  %os11412 = bitcast %union.rec* %785 to %struct.word_type*
  %olist1413 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11412, i32 0, i32 0
  %arrayidx1414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1413, i32 0, i64 1
  %opred1415 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1414, i32 0, i32 0
  %786 = load %union.rec*, %union.rec** %opred1415, align 8
  store %union.rec* %786, %union.rec** %post, align 8
  br label %for.cond.1416

for.cond.1416:                                    ; preds = %for.inc.1425, %for.end.1407
  %787 = load %union.rec*, %union.rec** %post, align 8
  %os11417 = bitcast %union.rec* %787 to %struct.word_type*
  %ou11418 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11417, i32 0, i32 1
  %os111419 = bitcast %union.FIRST_UNION* %ou11418 to %struct.anon*
  %otype1420 = getelementptr inbounds %struct.anon, %struct.anon* %os111419, i32 0, i32 0
  %788 = load i8, i8* %otype1420, align 1
  %conv1421 = zext i8 %788 to i32
  %cmp1422 = icmp eq i32 %conv1421, 0
  br i1 %cmp1422, label %for.body.1424, label %for.end.1430

for.body.1424:                                    ; preds = %for.cond.1416
  br label %for.inc.1425

for.inc.1425:                                     ; preds = %for.body.1424
  %789 = load %union.rec*, %union.rec** %post, align 8
  %os11426 = bitcast %union.rec* %789 to %struct.word_type*
  %olist1427 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11426, i32 0, i32 0
  %arrayidx1428 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1427, i32 0, i64 1
  %opred1429 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1428, i32 0, i32 0
  %790 = load %union.rec*, %union.rec** %opred1429, align 8
  store %union.rec* %790, %union.rec** %post, align 8
  br label %for.cond.1416

for.end.1430:                                     ; preds = %for.cond.1416
  br label %if.end.1432

if.else.1431:                                     ; preds = %for.end.1376
  %791 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %791, %union.rec** %pre, align 8
  store %union.rec* null, %union.rec** %post, align 8
  br label %if.end.1432

if.end.1432:                                      ; preds = %if.else.1431, %for.end.1430
  %792 = load i32, i32* %xb.addr, align 4
  %793 = load i32, i32* %dim.addr, align 4
  %idxprom1433 = sext i32 %793 to i64
  %794 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11434 = bitcast %union.rec* %794 to %struct.word_type*
  %ou31435 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11434, i32 0, i32 3
  %os311436 = bitcast %union.THIRD_UNION* %ou31435 to %struct.anon.6*
  %oback1437 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311436, i32 0, i32 0
  %arrayidx1438 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1437, i32 0, i64 %idxprom1433
  store i32 %792, i32* %arrayidx1438, align 4
  %795 = load i32, i32* %xf.addr, align 4
  %796 = load i32, i32* %dim.addr, align 4
  %idxprom1439 = sext i32 %796 to i64
  %797 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11440 = bitcast %union.rec* %797 to %struct.word_type*
  %ou31441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11440, i32 0, i32 3
  %os311442 = bitcast %union.THIRD_UNION* %ou31441 to %struct.anon.6*
  %ofwd1443 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311442, i32 0, i32 1
  %arrayidx1444 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1443, i32 0, i64 %idxprom1439
  store i32 %795, i32* %arrayidx1444, align 4
  %798 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %PrintPlainGraphic = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %798, i32 0, i32 19
  %799 = load void (%union.rec*, i32, i32, %union.rec*)*, void (%union.rec*, i32, i32, %union.rec*)** %PrintPlainGraphic, align 8
  %800 = load %union.rec*, %union.rec** %pre, align 8
  %801 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21445 = bitcast %union.rec* %801 to %struct.closure_type*
  %oux1446 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21445, i32 0, i32 6
  %osave_mark1447 = bitcast %union.anon.12* %oux1446 to i32*
  %802 = load i32, i32* %osave_mark1447, align 4
  %803 = load i32, i32* %pg.addr, align 4
  %804 = load i32, i32* %xmk.addr, align 4
  %805 = load i32, i32* %dim.addr, align 4
  %idxprom1448 = sext i32 %805 to i64
  %806 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11449 = bitcast %union.rec* %806 to %struct.word_type*
  %ou31450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11449, i32 0, i32 3
  %os311451 = bitcast %union.THIRD_UNION* %ou31450 to %struct.anon.6*
  %oback1452 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311451, i32 0, i32 0
  %arrayidx1453 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1452, i32 0, i64 %idxprom1448
  %807 = load i32, i32* %arrayidx1453, align 4
  %sub1454 = sub nsw i32 %804, %807
  %sub1455 = sub nsw i32 %803, %sub1454
  %808 = load %union.rec*, %union.rec** %x.addr, align 8
  call void %799(%union.rec* %800, i32 %802, i32 %sub1455, %union.rec* %808)
  %809 = load %union.rec*, %union.rec** %y, align 8
  %810 = load i32, i32* %xmk.addr, align 4
  %811 = load i32, i32* %xb.addr, align 4
  %812 = load i32, i32* %xf.addr, align 4
  %813 = load i32, i32* %dim.addr, align 4
  %814 = load i32, i32* %suppress.addr, align 4
  %815 = load i32, i32* %pg.addr, align 4
  %816 = load i32, i32* %count.addr, align 4
  %call1456 = call %union.rec* @FixAndPrintObject(%union.rec* %809, i32 %810, i32 %811, i32 %812, i32 %813, i32 %814, i32 %815, i32 %816, i32* %aback, i32* %afwd)
  store %union.rec* %call1456, %union.rec** %y, align 8
  %817 = load %union.rec*, %union.rec** %post, align 8
  %cmp1457 = icmp ne %union.rec* %817, null
  br i1 %cmp1457, label %if.then.1459, label %if.end.1472

if.then.1459:                                     ; preds = %if.end.1432
  %818 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %PrintPlainGraphic1460 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %818, i32 0, i32 19
  %819 = load void (%union.rec*, i32, i32, %union.rec*)*, void (%union.rec*, i32, i32, %union.rec*)** %PrintPlainGraphic1460, align 8
  %820 = load %union.rec*, %union.rec** %post, align 8
  %821 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21461 = bitcast %union.rec* %821 to %struct.closure_type*
  %oux1462 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21461, i32 0, i32 6
  %osave_mark1463 = bitcast %union.anon.12* %oux1462 to i32*
  %822 = load i32, i32* %osave_mark1463, align 4
  %823 = load i32, i32* %pg.addr, align 4
  %824 = load i32, i32* %xmk.addr, align 4
  %825 = load i32, i32* %dim.addr, align 4
  %idxprom1464 = sext i32 %825 to i64
  %826 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11465 = bitcast %union.rec* %826 to %struct.word_type*
  %ou31466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11465, i32 0, i32 3
  %os311467 = bitcast %union.THIRD_UNION* %ou31466 to %struct.anon.6*
  %oback1468 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311467, i32 0, i32 0
  %arrayidx1469 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1468, i32 0, i64 %idxprom1464
  %827 = load i32, i32* %arrayidx1469, align 4
  %sub1470 = sub nsw i32 %824, %827
  %sub1471 = sub nsw i32 %823, %sub1470
  %828 = load %union.rec*, %union.rec** %x.addr, align 8
  call void %819(%union.rec* %820, i32 %822, i32 %sub1471, %union.rec* %828)
  br label %if.end.1472

if.end.1472:                                      ; preds = %if.then.1459, %if.end.1432
  br label %if.end.1473

if.end.1473:                                      ; preds = %if.end.1472, %if.then.1327
  br label %if.end.1476

if.else.1474:                                     ; preds = %for.end.1322
  %829 = load %union.rec*, %union.rec** %y, align 8
  %830 = load i32, i32* %xmk.addr, align 4
  %831 = load i32, i32* %xb.addr, align 4
  %832 = load i32, i32* %xf.addr, align 4
  %833 = load i32, i32* %dim.addr, align 4
  %834 = load i32, i32* %suppress.addr, align 4
  %835 = load i32, i32* %pg.addr, align 4
  %836 = load i32, i32* %count.addr, align 4
  %call1475 = call %union.rec* @FixAndPrintObject(%union.rec* %829, i32 %830, i32 %831, i32 %832, i32 %833, i32 %834, i32 %835, i32 %836, i32* %aback, i32* %afwd)
  store %union.rec* %call1475, %union.rec** %y, align 8
  br label %if.end.1476

if.end.1476:                                      ; preds = %if.else.1474, %if.end.1473
  %837 = load i32, i32* %xb.addr, align 4
  %838 = load i32*, i32** %actual_back.addr, align 8
  store i32 %837, i32* %838, align 4
  %839 = load i32, i32* %xf.addr, align 4
  %840 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %839, i32* %840, align 4
  br label %sw.epilog.5829

sw.bb.1477:                                       ; preds = %entry
  %841 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11478 = bitcast %union.rec* %841 to %struct.word_type*
  %olist1479 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11478, i32 0, i32 0
  %arrayidx1480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1479, i32 0, i64 0
  %opred1481 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1480, i32 0, i32 0
  %842 = load %union.rec*, %union.rec** %opred1481, align 8
  %os11482 = bitcast %union.rec* %842 to %struct.word_type*
  %olist1483 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11482, i32 0, i32 0
  %arrayidx1484 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1483, i32 0, i64 1
  %opred1485 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1484, i32 0, i32 0
  %843 = load %union.rec*, %union.rec** %opred1485, align 8
  store %union.rec* %843, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.1486

for.cond.1486:                                    ; preds = %for.inc.1495, %sw.bb.1477
  %844 = load %union.rec*, %union.rec** %y, align 8
  %os11487 = bitcast %union.rec* %844 to %struct.word_type*
  %ou11488 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11487, i32 0, i32 1
  %os111489 = bitcast %union.FIRST_UNION* %ou11488 to %struct.anon*
  %otype1490 = getelementptr inbounds %struct.anon, %struct.anon* %os111489, i32 0, i32 0
  %845 = load i8, i8* %otype1490, align 1
  %conv1491 = zext i8 %845 to i32
  %cmp1492 = icmp eq i32 %conv1491, 0
  br i1 %cmp1492, label %for.body.1494, label %for.end.1501

for.body.1494:                                    ; preds = %for.cond.1486
  br label %for.inc.1495

for.inc.1495:                                     ; preds = %for.body.1494
  %846 = load %union.rec*, %union.rec** %y, align 8
  %os11496 = bitcast %union.rec* %846 to %struct.word_type*
  %olist1497 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11496, i32 0, i32 0
  %arrayidx1498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1497, i32 0, i64 1
  %opred1499 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1498, i32 0, i32 0
  %847 = load %union.rec*, %union.rec** %opred1499, align 8
  store %union.rec* %847, %union.rec** %y, align 8
  %848 = load i32, i32* %count.addr, align 4
  %inc1500 = add nsw i32 %848, 1
  store i32 %inc1500, i32* %count.addr, align 4
  br label %for.cond.1486

for.end.1501:                                     ; preds = %for.cond.1486
  %849 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %graphic_avail = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %849, i32 0, i32 4
  %850 = load i32, i32* %graphic_avail, align 4
  %tobool1502 = icmp ne i32 %850, 0
  br i1 %tobool1502, label %if.then.1503, label %if.else.1674

if.then.1503:                                     ; preds = %for.end.1501
  %851 = load i32, i32* %dim.addr, align 4
  %cmp1504 = icmp eq i32 %851, 0
  br i1 %cmp1504, label %if.then.1506, label %if.else.1555

if.then.1506:                                     ; preds = %if.then.1503
  %852 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21507 = bitcast %union.rec* %852 to %struct.closure_type*
  %ou41508 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21507, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou41508 to %struct.STYLE*
  %ofont = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style, i32 0, i32 4
  %bf.load1509 = load i32, i32* %ofont, align 4
  %bf.clear1510 = and i32 %bf.load1509, 4095
  %cmp1511 = icmp sgt i32 %bf.clear1510, 0
  br i1 %cmp1511, label %if.then.1513, label %if.end.1532

if.then.1513:                                     ; preds = %if.then.1506
  %853 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21514 = bitcast %union.rec* %853 to %struct.closure_type*
  %ou41515 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21514, i32 0, i32 4
  %osave_style1516 = bitcast %union.FOURTH_UNION* %ou41515 to %struct.STYLE*
  %ofont1517 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1516, i32 0, i32 4
  %bf.load1518 = load i32, i32* %ofont1517, align 4
  %bf.clear1519 = and i32 %bf.load1518, 4095
  %idxprom1520 = zext i32 %bf.clear1519 to i64
  %854 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1521 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %854, i64 %idxprom1520
  %original_face1522 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1521, i32 0, i32 6
  %855 = load %union.rec*, %union.rec** %original_face1522, align 8
  store %union.rec* %855, %union.rec** %face, align 8
  %856 = load %union.rec*, %union.rec** %face, align 8
  %os11523 = bitcast %union.rec* %856 to %struct.word_type*
  %ou21524 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11523, i32 0, i32 2
  %os251525 = bitcast %union.SECOND_UNION* %ou21524 to %struct.anon.4*
  %ofont_page1526 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %os251525, i32 0, i32 1
  %857 = load i16, i16* %ofont_page1526, align 2
  %conv1527 = zext i16 %857 to i32
  %858 = load i32, i32* @font_curr_page, align 4
  %cmp1528 = icmp slt i32 %conv1527, %858
  br i1 %cmp1528, label %if.then.1530, label %if.end.1531

if.then.1530:                                     ; preds = %if.then.1513
  %859 = load %union.rec*, %union.rec** %face, align 8
  call void @FontPageUsed(%union.rec* %859)
  br label %if.end.1531

if.end.1531:                                      ; preds = %if.then.1530, %if.then.1513
  br label %if.end.1532

if.end.1532:                                      ; preds = %if.end.1531, %if.then.1506
  %860 = load i32, i32* %xb.addr, align 4
  %861 = load i32, i32* %dim.addr, align 4
  %idxprom1533 = sext i32 %861 to i64
  %862 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11534 = bitcast %union.rec* %862 to %struct.word_type*
  %ou31535 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11534, i32 0, i32 3
  %os311536 = bitcast %union.THIRD_UNION* %ou31535 to %struct.anon.6*
  %oback1537 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311536, i32 0, i32 0
  %arrayidx1538 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1537, i32 0, i64 %idxprom1533
  store i32 %860, i32* %arrayidx1538, align 4
  %863 = load i32, i32* %xf.addr, align 4
  %864 = load i32, i32* %dim.addr, align 4
  %idxprom1539 = sext i32 %864 to i64
  %865 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11540 = bitcast %union.rec* %865 to %struct.word_type*
  %ou31541 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11540, i32 0, i32 3
  %os311542 = bitcast %union.THIRD_UNION* %ou31541 to %struct.anon.6*
  %ofwd1543 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311542, i32 0, i32 1
  %arrayidx1544 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1543, i32 0, i64 %idxprom1539
  store i32 %863, i32* %arrayidx1544, align 4
  %866 = load i32, i32* %xmk.addr, align 4
  %867 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11545 = bitcast %union.rec* %867 to %struct.word_type*
  %ou31546 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11545, i32 0, i32 3
  %os311547 = bitcast %union.THIRD_UNION* %ou31546 to %struct.anon.6*
  %oback1548 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311547, i32 0, i32 0
  %arrayidx1549 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1548, i32 0, i64 0
  %868 = load i32, i32* %arrayidx1549, align 4
  %sub1550 = sub nsw i32 %866, %868
  %869 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21551 = bitcast %union.rec* %869 to %struct.closure_type*
  %oux1552 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21551, i32 0, i32 6
  %osave_mark1553 = bitcast %union.anon.12* %oux1552 to i32*
  store i32 %sub1550, i32* %osave_mark1553, align 4
  %870 = load %union.rec*, %union.rec** %y, align 8
  %871 = load i32, i32* %xb.addr, align 4
  %872 = load i32, i32* %xb.addr, align 4
  %873 = load i32, i32* %xf.addr, align 4
  %874 = load i32, i32* %dim.addr, align 4
  %875 = load i32, i32* %pg.addr, align 4
  %876 = load i32, i32* %count.addr, align 4
  %call1554 = call %union.rec* @FixAndPrintObject(%union.rec* %870, i32 %871, i32 %872, i32 %873, i32 %874, i32 0, i32 %875, i32 %876, i32* %aback, i32* %afwd)
  store %union.rec* %call1554, %union.rec** %y, align 8
  br label %if.end.1673

if.else.1555:                                     ; preds = %if.then.1503
  %877 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11562 = bitcast %union.rec* %877 to %struct.word_type*
  %olist1563 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11562, i32 0, i32 0
  %arrayidx1564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1563, i32 0, i64 0
  %osucc1565 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1564, i32 0, i32 1
  %878 = load %union.rec*, %union.rec** %osucc1565, align 8
  %os11566 = bitcast %union.rec* %878 to %struct.word_type*
  %olist1567 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11566, i32 0, i32 0
  %arrayidx1568 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1567, i32 0, i64 1
  %opred1569 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1568, i32 0, i32 0
  %879 = load %union.rec*, %union.rec** %opred1569, align 8
  store %union.rec* %879, %union.rec** %tmp1557, align 8
  br label %for.cond.1570

for.cond.1570:                                    ; preds = %for.inc.1579, %if.else.1555
  %880 = load %union.rec*, %union.rec** %tmp1557, align 8
  %os11571 = bitcast %union.rec* %880 to %struct.word_type*
  %ou11572 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11571, i32 0, i32 1
  %os111573 = bitcast %union.FIRST_UNION* %ou11572 to %struct.anon*
  %otype1574 = getelementptr inbounds %struct.anon, %struct.anon* %os111573, i32 0, i32 0
  %881 = load i8, i8* %otype1574, align 1
  %conv1575 = zext i8 %881 to i32
  %cmp1576 = icmp eq i32 %conv1575, 0
  br i1 %cmp1576, label %for.body.1578, label %for.end.1584

for.body.1578:                                    ; preds = %for.cond.1570
  br label %for.inc.1579

for.inc.1579:                                     ; preds = %for.body.1578
  %882 = load %union.rec*, %union.rec** %tmp1557, align 8
  %os11580 = bitcast %union.rec* %882 to %struct.word_type*
  %olist1581 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11580, i32 0, i32 0
  %arrayidx1582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1581, i32 0, i64 1
  %opred1583 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1582, i32 0, i32 0
  %883 = load %union.rec*, %union.rec** %opred1583, align 8
  store %union.rec* %883, %union.rec** %tmp1557, align 8
  br label %for.cond.1570

for.end.1584:                                     ; preds = %for.cond.1570
  %884 = load %union.rec*, %union.rec** %tmp1557, align 8
  %os11585 = bitcast %union.rec* %884 to %struct.word_type*
  %ou11586 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11585, i32 0, i32 1
  %os111587 = bitcast %union.FIRST_UNION* %ou11586 to %struct.anon*
  %otype1588 = getelementptr inbounds %struct.anon, %struct.anon* %os111587, i32 0, i32 0
  %885 = load i8, i8* %otype1588, align 1
  %conv1589 = zext i8 %885 to i32
  %cmp1590 = icmp eq i32 %conv1589, 19
  br i1 %cmp1590, label %if.then.1592, label %if.else.1640

if.then.1592:                                     ; preds = %for.end.1584
  %886 = load %union.rec*, %union.rec** %tmp1557, align 8
  %os11593 = bitcast %union.rec* %886 to %struct.word_type*
  %olist1594 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11593, i32 0, i32 0
  %arrayidx1595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1594, i32 0, i64 0
  %osucc1596 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1595, i32 0, i32 1
  %887 = load %union.rec*, %union.rec** %osucc1596, align 8
  %os11597 = bitcast %union.rec* %887 to %struct.word_type*
  %olist1598 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11597, i32 0, i32 0
  %arrayidx1599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1598, i32 0, i64 1
  %opred1600 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1599, i32 0, i32 0
  %888 = load %union.rec*, %union.rec** %opred1600, align 8
  store %union.rec* %888, %union.rec** %pre1559, align 8
  br label %for.cond.1601

for.cond.1601:                                    ; preds = %for.inc.1610, %if.then.1592
  %889 = load %union.rec*, %union.rec** %pre1559, align 8
  %os11602 = bitcast %union.rec* %889 to %struct.word_type*
  %ou11603 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11602, i32 0, i32 1
  %os111604 = bitcast %union.FIRST_UNION* %ou11603 to %struct.anon*
  %otype1605 = getelementptr inbounds %struct.anon, %struct.anon* %os111604, i32 0, i32 0
  %890 = load i8, i8* %otype1605, align 1
  %conv1606 = zext i8 %890 to i32
  %cmp1607 = icmp eq i32 %conv1606, 0
  br i1 %cmp1607, label %for.body.1609, label %for.end.1615

for.body.1609:                                    ; preds = %for.cond.1601
  br label %for.inc.1610

for.inc.1610:                                     ; preds = %for.body.1609
  %891 = load %union.rec*, %union.rec** %pre1559, align 8
  %os11611 = bitcast %union.rec* %891 to %struct.word_type*
  %olist1612 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11611, i32 0, i32 0
  %arrayidx1613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1612, i32 0, i64 1
  %opred1614 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1613, i32 0, i32 0
  %892 = load %union.rec*, %union.rec** %opred1614, align 8
  store %union.rec* %892, %union.rec** %pre1559, align 8
  br label %for.cond.1601

for.end.1615:                                     ; preds = %for.cond.1601
  %893 = load %union.rec*, %union.rec** %tmp1557, align 8
  %os11616 = bitcast %union.rec* %893 to %struct.word_type*
  %olist1617 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11616, i32 0, i32 0
  %arrayidx1618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1617, i32 0, i64 0
  %opred1619 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1618, i32 0, i32 0
  %894 = load %union.rec*, %union.rec** %opred1619, align 8
  %os11621 = bitcast %union.rec* %894 to %struct.word_type*
  %olist1622 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11621, i32 0, i32 0
  %arrayidx1623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1622, i32 0, i64 1
  %opred1624 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1623, i32 0, i32 0
  %895 = load %union.rec*, %union.rec** %opred1624, align 8
  store %union.rec* %895, %union.rec** %post1561, align 8
  br label %for.cond.1625

for.cond.1625:                                    ; preds = %for.inc.1634, %for.end.1615
  %896 = load %union.rec*, %union.rec** %post1561, align 8
  %os11626 = bitcast %union.rec* %896 to %struct.word_type*
  %ou11627 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11626, i32 0, i32 1
  %os111628 = bitcast %union.FIRST_UNION* %ou11627 to %struct.anon*
  %otype1629 = getelementptr inbounds %struct.anon, %struct.anon* %os111628, i32 0, i32 0
  %897 = load i8, i8* %otype1629, align 1
  %conv1630 = zext i8 %897 to i32
  %cmp1631 = icmp eq i32 %conv1630, 0
  br i1 %cmp1631, label %for.body.1633, label %for.end.1639

for.body.1633:                                    ; preds = %for.cond.1625
  br label %for.inc.1634

for.inc.1634:                                     ; preds = %for.body.1633
  %898 = load %union.rec*, %union.rec** %post1561, align 8
  %os11635 = bitcast %union.rec* %898 to %struct.word_type*
  %olist1636 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11635, i32 0, i32 0
  %arrayidx1637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1636, i32 0, i64 1
  %opred1638 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1637, i32 0, i32 0
  %899 = load %union.rec*, %union.rec** %opred1638, align 8
  store %union.rec* %899, %union.rec** %post1561, align 8
  br label %for.cond.1625

for.end.1639:                                     ; preds = %for.cond.1625
  br label %if.end.1641

if.else.1640:                                     ; preds = %for.end.1584
  %900 = load %union.rec*, %union.rec** %tmp1557, align 8
  store %union.rec* %900, %union.rec** %pre1559, align 8
  store %union.rec* null, %union.rec** %post1561, align 8
  br label %if.end.1641

if.end.1641:                                      ; preds = %if.else.1640, %for.end.1639
  %901 = load i32, i32* %xb.addr, align 4
  %902 = load i32, i32* %dim.addr, align 4
  %idxprom1642 = sext i32 %902 to i64
  %903 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11643 = bitcast %union.rec* %903 to %struct.word_type*
  %ou31644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11643, i32 0, i32 3
  %os311645 = bitcast %union.THIRD_UNION* %ou31644 to %struct.anon.6*
  %oback1646 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311645, i32 0, i32 0
  %arrayidx1647 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1646, i32 0, i64 %idxprom1642
  store i32 %901, i32* %arrayidx1647, align 4
  %904 = load i32, i32* %xf.addr, align 4
  %905 = load i32, i32* %dim.addr, align 4
  %idxprom1648 = sext i32 %905 to i64
  %906 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11649 = bitcast %union.rec* %906 to %struct.word_type*
  %ou31650 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11649, i32 0, i32 3
  %os311651 = bitcast %union.THIRD_UNION* %ou31650 to %struct.anon.6*
  %ofwd1652 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311651, i32 0, i32 1
  %arrayidx1653 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1652, i32 0, i64 %idxprom1648
  store i32 %904, i32* %arrayidx1653, align 4
  %907 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %SaveTranslateDefineSave = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %907, i32 0, i32 28
  %908 = load void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)** %SaveTranslateDefineSave, align 8
  %909 = load %union.rec*, %union.rec** %x.addr, align 8
  %910 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21654 = bitcast %union.rec* %910 to %struct.closure_type*
  %oux1655 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21654, i32 0, i32 6
  %osave_mark1656 = bitcast %union.anon.12* %oux1655 to i32*
  %911 = load i32, i32* %osave_mark1656, align 4
  %912 = load i32, i32* %pg.addr, align 4
  %913 = load i32, i32* %xmk.addr, align 4
  %914 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11657 = bitcast %union.rec* %914 to %struct.word_type*
  %ou31658 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11657, i32 0, i32 3
  %os311659 = bitcast %union.THIRD_UNION* %ou31658 to %struct.anon.6*
  %ofwd1660 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311659, i32 0, i32 1
  %arrayidx1661 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1660, i32 0, i64 1
  %915 = load i32, i32* %arrayidx1661, align 4
  %add1662 = add nsw i32 %913, %915
  %sub1663 = sub nsw i32 %912, %add1662
  call void %908(%union.rec* %909, i32 %911, i32 %sub1663)
  %916 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %PrintGraphicObject = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %916, i32 0, i32 26
  %917 = load void (%union.rec*)*, void (%union.rec*)** %PrintGraphicObject, align 8
  %918 = load %union.rec*, %union.rec** %pre1559, align 8
  call void %917(%union.rec* %918)
  %919 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %RestoreGraphicState1664 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %919, i32 0, i32 25
  %920 = load void ()*, void ()** %RestoreGraphicState1664, align 8
  call void %920()
  %921 = load %union.rec*, %union.rec** %y, align 8
  %922 = load i32, i32* %xb.addr, align 4
  %923 = load i32, i32* %xb.addr, align 4
  %924 = load i32, i32* %xf.addr, align 4
  %925 = load i32, i32* %dim.addr, align 4
  %926 = load i32, i32* %xb.addr, align 4
  %927 = load i32, i32* %xf.addr, align 4
  %add1665 = add nsw i32 %926, %927
  %928 = load i32, i32* %count.addr, align 4
  %call1666 = call %union.rec* @FixAndPrintObject(%union.rec* %921, i32 %922, i32 %923, i32 %924, i32 %925, i32 0, i32 %add1665, i32 %928, i32* %aback, i32* %afwd)
  store %union.rec* %call1666, %union.rec** %y, align 8
  %929 = load %union.rec*, %union.rec** %post1561, align 8
  %cmp1667 = icmp ne %union.rec* %929, null
  br i1 %cmp1667, label %if.then.1669, label %if.end.1671

if.then.1669:                                     ; preds = %if.end.1641
  %930 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %PrintGraphicObject1670 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %930, i32 0, i32 26
  %931 = load void (%union.rec*)*, void (%union.rec*)** %PrintGraphicObject1670, align 8
  %932 = load %union.rec*, %union.rec** %post1561, align 8
  call void %931(%union.rec* %932)
  br label %if.end.1671

if.end.1671:                                      ; preds = %if.then.1669, %if.end.1641
  %933 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %RestoreGraphicState1672 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %933, i32 0, i32 25
  %934 = load void ()*, void ()** %RestoreGraphicState1672, align 8
  call void %934()
  br label %if.end.1673

if.end.1673:                                      ; preds = %if.end.1671, %if.end.1532
  br label %if.end.1676

if.else.1674:                                     ; preds = %for.end.1501
  %935 = load %union.rec*, %union.rec** %y, align 8
  %936 = load i32, i32* %xmk.addr, align 4
  %937 = load i32, i32* %xb.addr, align 4
  %938 = load i32, i32* %xf.addr, align 4
  %939 = load i32, i32* %dim.addr, align 4
  %940 = load i32, i32* %suppress.addr, align 4
  %941 = load i32, i32* %pg.addr, align 4
  %942 = load i32, i32* %count.addr, align 4
  %call1675 = call %union.rec* @FixAndPrintObject(%union.rec* %935, i32 %936, i32 %937, i32 %938, i32 %939, i32 %940, i32 %941, i32 %942, i32* %aback, i32* %afwd)
  store %union.rec* %call1675, %union.rec** %y, align 8
  br label %if.end.1676

if.end.1676:                                      ; preds = %if.else.1674, %if.end.1673
  %943 = load i32, i32* %xb.addr, align 4
  %944 = load i32*, i32** %actual_back.addr, align 8
  store i32 %943, i32* %944, align 4
  %945 = load i32, i32* %xf.addr, align 4
  %946 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %945, i32* %946, align 4
  br label %sw.epilog.5829

sw.bb.1677:                                       ; preds = %entry, %entry
  %947 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11678 = bitcast %union.rec* %947 to %struct.word_type*
  %olist1679 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11678, i32 0, i32 0
  %arrayidx1680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1679, i32 0, i64 0
  %opred1681 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1680, i32 0, i32 0
  %948 = load %union.rec*, %union.rec** %opred1681, align 8
  %os11682 = bitcast %union.rec* %948 to %struct.word_type*
  %olist1683 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11682, i32 0, i32 0
  %arrayidx1684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1683, i32 0, i64 1
  %opred1685 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1684, i32 0, i32 0
  %949 = load %union.rec*, %union.rec** %opred1685, align 8
  store %union.rec* %949, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.1686

for.cond.1686:                                    ; preds = %for.inc.1695, %sw.bb.1677
  %950 = load %union.rec*, %union.rec** %y, align 8
  %os11687 = bitcast %union.rec* %950 to %struct.word_type*
  %ou11688 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11687, i32 0, i32 1
  %os111689 = bitcast %union.FIRST_UNION* %ou11688 to %struct.anon*
  %otype1690 = getelementptr inbounds %struct.anon, %struct.anon* %os111689, i32 0, i32 0
  %951 = load i8, i8* %otype1690, align 1
  %conv1691 = zext i8 %951 to i32
  %cmp1692 = icmp eq i32 %conv1691, 0
  br i1 %cmp1692, label %for.body.1694, label %for.end.1701

for.body.1694:                                    ; preds = %for.cond.1686
  br label %for.inc.1695

for.inc.1695:                                     ; preds = %for.body.1694
  %952 = load %union.rec*, %union.rec** %y, align 8
  %os11696 = bitcast %union.rec* %952 to %struct.word_type*
  %olist1697 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11696, i32 0, i32 0
  %arrayidx1698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1697, i32 0, i64 1
  %opred1699 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1698, i32 0, i32 0
  %953 = load %union.rec*, %union.rec** %opred1699, align 8
  store %union.rec* %953, %union.rec** %y, align 8
  %954 = load i32, i32* %count.addr, align 4
  %inc1700 = add nsw i32 %954, 1
  store i32 %inc1700, i32* %count.addr, align 4
  br label %for.cond.1686

for.end.1701:                                     ; preds = %for.cond.1686
  %955 = load i32, i32* %dim.addr, align 4
  %cmp1702 = icmp eq i32 %955, 0
  br i1 %cmp1702, label %if.then.1704, label %if.else.1708

if.then.1704:                                     ; preds = %for.end.1701
  %956 = load i32, i32* %xmk.addr, align 4
  %957 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21705 = bitcast %union.rec* %957 to %struct.closure_type*
  %oux1706 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21705, i32 0, i32 6
  %osave_mark1707 = bitcast %union.anon.12* %oux1706 to i32*
  store i32 %956, i32* %osave_mark1707, align 4
  br label %if.end.1786

if.else.1708:                                     ; preds = %for.end.1701
  %958 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11709 = bitcast %union.rec* %958 to %struct.word_type*
  %olist1710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11709, i32 0, i32 0
  %arrayidx1711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1710, i32 0, i64 0
  %osucc1712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1711, i32 0, i32 1
  %959 = load %union.rec*, %union.rec** %osucc1712, align 8
  %os11713 = bitcast %union.rec* %959 to %struct.word_type*
  %olist1714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11713, i32 0, i32 0
  %arrayidx1715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1714, i32 0, i64 1
  %opred1716 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1715, i32 0, i32 0
  %960 = load %union.rec*, %union.rec** %opred1716, align 8
  store %union.rec* %960, %union.rec** %z, align 8
  br label %for.cond.1717

for.cond.1717:                                    ; preds = %for.inc.1726, %if.else.1708
  %961 = load %union.rec*, %union.rec** %z, align 8
  %os11718 = bitcast %union.rec* %961 to %struct.word_type*
  %ou11719 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11718, i32 0, i32 1
  %os111720 = bitcast %union.FIRST_UNION* %ou11719 to %struct.anon*
  %otype1721 = getelementptr inbounds %struct.anon, %struct.anon* %os111720, i32 0, i32 0
  %962 = load i8, i8* %otype1721, align 1
  %conv1722 = zext i8 %962 to i32
  %cmp1723 = icmp eq i32 %conv1722, 0
  br i1 %cmp1723, label %for.body.1725, label %for.end.1731

for.body.1725:                                    ; preds = %for.cond.1717
  br label %for.inc.1726

for.inc.1726:                                     ; preds = %for.body.1725
  %963 = load %union.rec*, %union.rec** %z, align 8
  %os11727 = bitcast %union.rec* %963 to %struct.word_type*
  %olist1728 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11727, i32 0, i32 0
  %arrayidx1729 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1728, i32 0, i64 1
  %opred1730 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1729, i32 0, i32 0
  %964 = load %union.rec*, %union.rec** %opred1730, align 8
  store %union.rec* %964, %union.rec** %z, align 8
  br label %for.cond.1717

for.end.1731:                                     ; preds = %for.cond.1717
  %965 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11732 = bitcast %union.rec* %965 to %struct.word_type*
  %ou11733 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11732, i32 0, i32 1
  %os111734 = bitcast %union.FIRST_UNION* %ou11733 to %struct.anon*
  %otype1735 = getelementptr inbounds %struct.anon, %struct.anon* %os111734, i32 0, i32 0
  %966 = load i8, i8* %otype1735, align 1
  %conv1736 = zext i8 %966 to i32
  %cmp1737 = icmp eq i32 %conv1736, 98
  br i1 %cmp1737, label %if.then.1739, label %if.else.1762

if.then.1739:                                     ; preds = %for.end.1731
  %967 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %LinkSource = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %967, i32 0, i32 30
  %968 = load void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)** %LinkSource, align 8
  %969 = load %union.rec*, %union.rec** %z, align 8
  %970 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21740 = bitcast %union.rec* %970 to %struct.closure_type*
  %oux1741 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21740, i32 0, i32 6
  %osave_mark1742 = bitcast %union.anon.12* %oux1741 to i32*
  %971 = load i32, i32* %osave_mark1742, align 4
  %972 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11743 = bitcast %union.rec* %972 to %struct.word_type*
  %ou31744 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11743, i32 0, i32 3
  %os311745 = bitcast %union.THIRD_UNION* %ou31744 to %struct.anon.6*
  %oback1746 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311745, i32 0, i32 0
  %arrayidx1747 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1746, i32 0, i64 0
  %973 = load i32, i32* %arrayidx1747, align 4
  %sub1748 = sub nsw i32 %971, %973
  %974 = load i32, i32* %pg.addr, align 4
  %975 = load i32, i32* %xmk.addr, align 4
  %sub1749 = sub nsw i32 %974, %975
  %976 = load i32, i32* %xf.addr, align 4
  %sub1750 = sub nsw i32 %sub1749, %976
  %977 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21751 = bitcast %union.rec* %977 to %struct.closure_type*
  %oux1752 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21751, i32 0, i32 6
  %osave_mark1753 = bitcast %union.anon.12* %oux1752 to i32*
  %978 = load i32, i32* %osave_mark1753, align 4
  %979 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11754 = bitcast %union.rec* %979 to %struct.word_type*
  %ou31755 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11754, i32 0, i32 3
  %os311756 = bitcast %union.THIRD_UNION* %ou31755 to %struct.anon.6*
  %ofwd1757 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311756, i32 0, i32 1
  %arrayidx1758 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1757, i32 0, i64 0
  %980 = load i32, i32* %arrayidx1758, align 4
  %add1759 = add nsw i32 %978, %980
  %981 = load i32, i32* %pg.addr, align 4
  %982 = load i32, i32* %xmk.addr, align 4
  %sub1760 = sub nsw i32 %981, %982
  %983 = load i32, i32* %xb.addr, align 4
  %add1761 = add nsw i32 %sub1760, %983
  call void %968(%union.rec* %969, i32 %sub1748, i32 %sub1750, i32 %add1759, i32 %add1761)
  br label %if.end.1785

if.else.1762:                                     ; preds = %for.end.1731
  %984 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %LinkDest = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %984, i32 0, i32 31
  %985 = load void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)** %LinkDest, align 8
  %986 = load %union.rec*, %union.rec** %z, align 8
  %987 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21763 = bitcast %union.rec* %987 to %struct.closure_type*
  %oux1764 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21763, i32 0, i32 6
  %osave_mark1765 = bitcast %union.anon.12* %oux1764 to i32*
  %988 = load i32, i32* %osave_mark1765, align 4
  %989 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11766 = bitcast %union.rec* %989 to %struct.word_type*
  %ou31767 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11766, i32 0, i32 3
  %os311768 = bitcast %union.THIRD_UNION* %ou31767 to %struct.anon.6*
  %oback1769 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311768, i32 0, i32 0
  %arrayidx1770 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1769, i32 0, i64 0
  %990 = load i32, i32* %arrayidx1770, align 4
  %sub1771 = sub nsw i32 %988, %990
  %991 = load i32, i32* %pg.addr, align 4
  %992 = load i32, i32* %xmk.addr, align 4
  %sub1772 = sub nsw i32 %991, %992
  %993 = load i32, i32* %xf.addr, align 4
  %sub1773 = sub nsw i32 %sub1772, %993
  %994 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21774 = bitcast %union.rec* %994 to %struct.closure_type*
  %oux1775 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21774, i32 0, i32 6
  %osave_mark1776 = bitcast %union.anon.12* %oux1775 to i32*
  %995 = load i32, i32* %osave_mark1776, align 4
  %996 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11777 = bitcast %union.rec* %996 to %struct.word_type*
  %ou31778 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11777, i32 0, i32 3
  %os311779 = bitcast %union.THIRD_UNION* %ou31778 to %struct.anon.6*
  %ofwd1780 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311779, i32 0, i32 1
  %arrayidx1781 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1780, i32 0, i64 0
  %997 = load i32, i32* %arrayidx1781, align 4
  %add1782 = add nsw i32 %995, %997
  %998 = load i32, i32* %pg.addr, align 4
  %999 = load i32, i32* %xmk.addr, align 4
  %sub1783 = sub nsw i32 %998, %999
  %1000 = load i32, i32* %xb.addr, align 4
  %add1784 = add nsw i32 %sub1783, %1000
  call void %985(%union.rec* %986, i32 %sub1771, i32 %sub1773, i32 %add1782, i32 %add1784)
  br label %if.end.1785

if.end.1785:                                      ; preds = %if.else.1762, %if.then.1739
  br label %if.end.1786

if.end.1786:                                      ; preds = %if.end.1785, %if.then.1704
  %1001 = load %union.rec*, %union.rec** %y, align 8
  %1002 = load i32, i32* %xmk.addr, align 4
  %1003 = load i32, i32* %xb.addr, align 4
  %1004 = load i32, i32* %xf.addr, align 4
  %1005 = load i32, i32* %dim.addr, align 4
  %1006 = load i32, i32* %pg.addr, align 4
  %1007 = load i32, i32* %count.addr, align 4
  %call1787 = call %union.rec* @FixAndPrintObject(%union.rec* %1001, i32 %1002, i32 %1003, i32 %1004, i32 %1005, i32 0, i32 %1006, i32 %1007, i32* %aback, i32* %afwd)
  store %union.rec* %call1787, %union.rec** %y, align 8
  %1008 = load i32, i32* %xb.addr, align 4
  %1009 = load i32*, i32** %actual_back.addr, align 8
  store i32 %1008, i32* %1009, align 4
  %1010 = load i32, i32* %xf.addr, align 4
  %1011 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %1010, i32* %1011, align 4
  br label %sw.epilog.5829

sw.bb.1788:                                       ; preds = %entry, %entry
  %1012 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11789 = bitcast %union.rec* %1012 to %struct.word_type*
  %olist1790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11789, i32 0, i32 0
  %arrayidx1791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1790, i32 0, i64 0
  %osucc1792 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1791, i32 0, i32 1
  %1013 = load %union.rec*, %union.rec** %osucc1792, align 8
  %os11793 = bitcast %union.rec* %1013 to %struct.word_type*
  %olist1794 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11793, i32 0, i32 0
  %arrayidx1795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1794, i32 0, i64 1
  %opred1796 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1795, i32 0, i32 0
  %1014 = load %union.rec*, %union.rec** %opred1796, align 8
  store %union.rec* %1014, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.1797

for.cond.1797:                                    ; preds = %for.inc.1806, %sw.bb.1788
  %1015 = load %union.rec*, %union.rec** %y, align 8
  %os11798 = bitcast %union.rec* %1015 to %struct.word_type*
  %ou11799 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11798, i32 0, i32 1
  %os111800 = bitcast %union.FIRST_UNION* %ou11799 to %struct.anon*
  %otype1801 = getelementptr inbounds %struct.anon, %struct.anon* %os111800, i32 0, i32 0
  %1016 = load i8, i8* %otype1801, align 1
  %conv1802 = zext i8 %1016 to i32
  %cmp1803 = icmp eq i32 %conv1802, 0
  br i1 %cmp1803, label %for.body.1805, label %for.end.1812

for.body.1805:                                    ; preds = %for.cond.1797
  br label %for.inc.1806

for.inc.1806:                                     ; preds = %for.body.1805
  %1017 = load %union.rec*, %union.rec** %y, align 8
  %os11807 = bitcast %union.rec* %1017 to %struct.word_type*
  %olist1808 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11807, i32 0, i32 0
  %arrayidx1809 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1808, i32 0, i64 1
  %opred1810 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1809, i32 0, i32 0
  %1018 = load %union.rec*, %union.rec** %opred1810, align 8
  store %union.rec* %1018, %union.rec** %y, align 8
  %1019 = load i32, i32* %count.addr, align 4
  %inc1811 = add nsw i32 %1019, 1
  store i32 %inc1811, i32* %count.addr, align 4
  br label %for.cond.1797

for.end.1812:                                     ; preds = %for.cond.1797
  %1020 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %incgraphic_avail = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1020, i32 0, i32 5
  %1021 = load i32, i32* %incgraphic_avail, align 4
  %tobool1813 = icmp ne i32 %1021, 0
  br i1 %tobool1813, label %if.then.1814, label %if.end.1857

if.then.1814:                                     ; preds = %for.end.1812
  %1022 = load i32, i32* %dim.addr, align 4
  %cmp1815 = icmp eq i32 %1022, 0
  br i1 %cmp1815, label %if.then.1817, label %if.else.1844

if.then.1817:                                     ; preds = %if.then.1814
  %1023 = load i32, i32* %xmk.addr, align 4
  %1024 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21818 = bitcast %union.rec* %1024 to %struct.closure_type*
  %oux1819 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21818, i32 0, i32 6
  %osave_mark1820 = bitcast %union.anon.12* %oux1819 to i32*
  store i32 %1023, i32* %osave_mark1820, align 4
  %1025 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11821 = bitcast %union.rec* %1025 to %struct.word_type*
  %ou21822 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11821, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou21822 to %struct.anon.2*
  %ocross_type = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 1
  %1026 = load i8, i8* %ocross_type, align 1
  %tobool1823 = icmp ne i8 %1026, 0
  br i1 %tobool1823, label %if.then.1824, label %if.end.1843

if.then.1824:                                     ; preds = %if.then.1817
  %1027 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21825 = bitcast %union.rec* %1027 to %struct.closure_type*
  %ou41826 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21825, i32 0, i32 4
  %osave_style1827 = bitcast %union.FOURTH_UNION* %ou41826 to %struct.STYLE*
  %ofont1828 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style1827, i32 0, i32 4
  %bf.load1829 = load i32, i32* %ofont1828, align 4
  %bf.clear1830 = and i32 %bf.load1829, 4095
  %idxprom1831 = zext i32 %bf.clear1830 to i64
  %1028 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1832 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %1028, i64 %idxprom1831
  %original_face1833 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1832, i32 0, i32 6
  %1029 = load %union.rec*, %union.rec** %original_face1833, align 8
  store %union.rec* %1029, %union.rec** %face, align 8
  %1030 = load %union.rec*, %union.rec** %face, align 8
  %os11834 = bitcast %union.rec* %1030 to %struct.word_type*
  %ou21835 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11834, i32 0, i32 2
  %os251836 = bitcast %union.SECOND_UNION* %ou21835 to %struct.anon.4*
  %ofont_page1837 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %os251836, i32 0, i32 1
  %1031 = load i16, i16* %ofont_page1837, align 2
  %conv1838 = zext i16 %1031 to i32
  %1032 = load i32, i32* @font_curr_page, align 4
  %cmp1839 = icmp slt i32 %conv1838, %1032
  br i1 %cmp1839, label %if.then.1841, label %if.end.1842

if.then.1841:                                     ; preds = %if.then.1824
  %1033 = load %union.rec*, %union.rec** %face, align 8
  call void @FontPageUsed(%union.rec* %1033)
  br label %if.end.1842

if.end.1842:                                      ; preds = %if.then.1841, %if.then.1824
  br label %if.end.1843

if.end.1843:                                      ; preds = %if.end.1842, %if.then.1817
  br label %if.end.1856

if.else.1844:                                     ; preds = %if.then.1814
  %1034 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11845 = bitcast %union.rec* %1034 to %struct.word_type*
  %ou21846 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11845, i32 0, i32 2
  %os231847 = bitcast %union.SECOND_UNION* %ou21846 to %struct.anon.2*
  %ocross_type1848 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os231847, i32 0, i32 1
  %1035 = load i8, i8* %ocross_type1848, align 1
  %tobool1849 = icmp ne i8 %1035, 0
  br i1 %tobool1849, label %if.then.1850, label %if.end.1855

if.then.1850:                                     ; preds = %if.else.1844
  %1036 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %PrintGraphicInclude = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1036, i32 0, i32 29
  %1037 = load void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)** %PrintGraphicInclude, align 8
  %1038 = load %union.rec*, %union.rec** %x.addr, align 8
  %1039 = load %union.rec*, %union.rec** %x.addr, align 8
  %os21851 = bitcast %union.rec* %1039 to %struct.closure_type*
  %oux1852 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os21851, i32 0, i32 6
  %osave_mark1853 = bitcast %union.anon.12* %oux1852 to i32*
  %1040 = load i32, i32* %osave_mark1853, align 4
  %1041 = load i32, i32* %pg.addr, align 4
  %1042 = load i32, i32* %xmk.addr, align 4
  %sub1854 = sub nsw i32 %1041, %1042
  call void %1037(%union.rec* %1038, i32 %1040, i32 %sub1854)
  br label %if.end.1855

if.end.1855:                                      ; preds = %if.then.1850, %if.else.1844
  br label %if.end.1856

if.end.1856:                                      ; preds = %if.end.1855, %if.end.1843
  br label %if.end.1857

if.end.1857:                                      ; preds = %if.end.1856, %for.end.1812
  %1043 = load i32, i32* %xb.addr, align 4
  %1044 = load i32*, i32** %actual_back.addr, align 8
  store i32 %1043, i32* %1044, align 4
  %1045 = load i32, i32* %xf.addr, align 4
  %1046 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %1045, i32* %1046, align 4
  br label %sw.epilog.5829

sw.bb.1858:                                       ; preds = %entry
  %1047 = load i32, i32* %dim.addr, align 4
  %cmp1859 = icmp eq i32 %1047, 0
  br i1 %cmp1859, label %cond.true.1861, label %cond.false.1866

cond.true.1861:                                   ; preds = %sw.bb.1858
  %1048 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11862 = bitcast %union.rec* %1048 to %struct.word_type*
  %olist1863 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11862, i32 0, i32 0
  %arrayidx1864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1863, i32 0, i64 0
  %osucc1865 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1864, i32 0, i32 1
  %1049 = load %union.rec*, %union.rec** %osucc1865, align 8
  br label %cond.end.1871

cond.false.1866:                                  ; preds = %sw.bb.1858
  %1050 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11867 = bitcast %union.rec* %1050 to %struct.word_type*
  %olist1868 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11867, i32 0, i32 0
  %arrayidx1869 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1868, i32 0, i64 0
  %opred1870 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1869, i32 0, i32 0
  %1051 = load %union.rec*, %union.rec** %opred1870, align 8
  br label %cond.end.1871

cond.end.1871:                                    ; preds = %cond.false.1866, %cond.true.1861
  %cond1872 = phi %union.rec* [ %1049, %cond.true.1861 ], [ %1051, %cond.false.1866 ]
  store %union.rec* %cond1872, %union.rec** %link, align 8
  %1052 = load %union.rec*, %union.rec** %link, align 8
  %os11873 = bitcast %union.rec* %1052 to %struct.word_type*
  %olist1874 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11873, i32 0, i32 0
  %arrayidx1875 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1874, i32 0, i64 1
  %opred1876 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1875, i32 0, i32 0
  %1053 = load %union.rec*, %union.rec** %opred1876, align 8
  store %union.rec* %1053, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.1877

for.cond.1877:                                    ; preds = %for.inc.1886, %cond.end.1871
  %1054 = load %union.rec*, %union.rec** %y, align 8
  %os11878 = bitcast %union.rec* %1054 to %struct.word_type*
  %ou11879 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11878, i32 0, i32 1
  %os111880 = bitcast %union.FIRST_UNION* %ou11879 to %struct.anon*
  %otype1881 = getelementptr inbounds %struct.anon, %struct.anon* %os111880, i32 0, i32 0
  %1055 = load i8, i8* %otype1881, align 1
  %conv1882 = zext i8 %1055 to i32
  %cmp1883 = icmp eq i32 %conv1882, 0
  br i1 %cmp1883, label %for.body.1885, label %for.end.1892

for.body.1885:                                    ; preds = %for.cond.1877
  br label %for.inc.1886

for.inc.1886:                                     ; preds = %for.body.1885
  %1056 = load %union.rec*, %union.rec** %y, align 8
  %os11887 = bitcast %union.rec* %1056 to %struct.word_type*
  %olist1888 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11887, i32 0, i32 0
  %arrayidx1889 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1888, i32 0, i64 1
  %opred1890 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1889, i32 0, i32 0
  %1057 = load %union.rec*, %union.rec** %opred1890, align 8
  store %union.rec* %1057, %union.rec** %y, align 8
  %1058 = load i32, i32* %count.addr, align 4
  %inc1891 = add nsw i32 %1058, 1
  store i32 %inc1891, i32* %count.addr, align 4
  br label %for.cond.1877

for.end.1892:                                     ; preds = %for.cond.1877
  %1059 = load %union.rec*, %union.rec** %y, align 8
  %1060 = load i32, i32* %xmk.addr, align 4
  %1061 = load i32, i32* %dim.addr, align 4
  %idxprom1893 = sext i32 %1061 to i64
  %1062 = load %union.rec*, %union.rec** %y, align 8
  %os11894 = bitcast %union.rec* %1062 to %struct.word_type*
  %ou31895 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11894, i32 0, i32 3
  %os311896 = bitcast %union.THIRD_UNION* %ou31895 to %struct.anon.6*
  %oback1897 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311896, i32 0, i32 0
  %arrayidx1898 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1897, i32 0, i64 %idxprom1893
  %1063 = load i32, i32* %arrayidx1898, align 4
  %1064 = load i32, i32* %xb.addr, align 4
  %cmp1899 = icmp slt i32 %1063, %1064
  br i1 %cmp1899, label %cond.true.1901, label %cond.false.1902

cond.true.1901:                                   ; preds = %for.end.1892
  %1065 = load i32, i32* %xb.addr, align 4
  br label %cond.end.1909

cond.false.1902:                                  ; preds = %for.end.1892
  %1066 = load i32, i32* %dim.addr, align 4
  %idxprom1903 = sext i32 %1066 to i64
  %1067 = load %union.rec*, %union.rec** %y, align 8
  %os11904 = bitcast %union.rec* %1067 to %struct.word_type*
  %ou31905 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11904, i32 0, i32 3
  %os311906 = bitcast %union.THIRD_UNION* %ou31905 to %struct.anon.6*
  %oback1907 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311906, i32 0, i32 0
  %arrayidx1908 = getelementptr inbounds [2 x i32], [2 x i32]* %oback1907, i32 0, i64 %idxprom1903
  %1068 = load i32, i32* %arrayidx1908, align 4
  br label %cond.end.1909

cond.end.1909:                                    ; preds = %cond.false.1902, %cond.true.1901
  %cond1910 = phi i32 [ %1065, %cond.true.1901 ], [ %1068, %cond.false.1902 ]
  %1069 = load i32, i32* %dim.addr, align 4
  %idxprom1911 = sext i32 %1069 to i64
  %1070 = load %union.rec*, %union.rec** %y, align 8
  %os11912 = bitcast %union.rec* %1070 to %struct.word_type*
  %ou31913 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11912, i32 0, i32 3
  %os311914 = bitcast %union.THIRD_UNION* %ou31913 to %struct.anon.6*
  %ofwd1915 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311914, i32 0, i32 1
  %arrayidx1916 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1915, i32 0, i64 %idxprom1911
  %1071 = load i32, i32* %arrayidx1916, align 4
  %1072 = load i32, i32* %xf.addr, align 4
  %cmp1917 = icmp slt i32 %1071, %1072
  br i1 %cmp1917, label %cond.true.1919, label %cond.false.1920

cond.true.1919:                                   ; preds = %cond.end.1909
  %1073 = load i32, i32* %xf.addr, align 4
  br label %cond.end.1927

cond.false.1920:                                  ; preds = %cond.end.1909
  %1074 = load i32, i32* %dim.addr, align 4
  %idxprom1921 = sext i32 %1074 to i64
  %1075 = load %union.rec*, %union.rec** %y, align 8
  %os11922 = bitcast %union.rec* %1075 to %struct.word_type*
  %ou31923 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11922, i32 0, i32 3
  %os311924 = bitcast %union.THIRD_UNION* %ou31923 to %struct.anon.6*
  %ofwd1925 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os311924, i32 0, i32 1
  %arrayidx1926 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd1925, i32 0, i64 %idxprom1921
  %1076 = load i32, i32* %arrayidx1926, align 4
  br label %cond.end.1927

cond.end.1927:                                    ; preds = %cond.false.1920, %cond.true.1919
  %cond1928 = phi i32 [ %1073, %cond.true.1919 ], [ %1076, %cond.false.1920 ]
  %1077 = load i32, i32* %dim.addr, align 4
  %1078 = load i32, i32* %suppress.addr, align 4
  %1079 = load i32, i32* %pg.addr, align 4
  %1080 = load i32, i32* %count.addr, align 4
  %1081 = load i32*, i32** %actual_back.addr, align 8
  %1082 = load i32*, i32** %actual_fwd.addr, align 8
  %call1929 = call %union.rec* @FixAndPrintObject(%union.rec* %1059, i32 %1060, i32 %cond1910, i32 %cond1928, i32 %1077, i32 %1078, i32 %1079, i32 %1080, i32* %1081, i32* %1082)
  store %union.rec* %call1929, %union.rec** %y, align 8
  br label %sw.epilog.5829

sw.bb.1930:                                       ; preds = %entry, %entry
  %1083 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11931 = bitcast %union.rec* %1083 to %struct.word_type*
  %ou11932 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11931, i32 0, i32 1
  %os111933 = bitcast %union.FIRST_UNION* %ou11932 to %struct.anon*
  %otype1934 = getelementptr inbounds %struct.anon, %struct.anon* %os111933, i32 0, i32 0
  %1084 = load i8, i8* %otype1934, align 1
  %conv1935 = zext i8 %1084 to i32
  %cmp1936 = icmp eq i32 %conv1935, 19
  %conv1937 = zext i1 %cmp1936 to i32
  %1085 = load i32, i32* %dim.addr, align 4
  %cmp1938 = icmp eq i32 %1085, 1
  %conv1939 = zext i1 %cmp1938 to i32
  %cmp1940 = icmp eq i32 %conv1937, %conv1939
  br i1 %cmp1940, label %if.then.1942, label %if.else.2658

if.then.1942:                                     ; preds = %sw.bb.1930
  store i32 1, i32* %jn, align 4
  %1086 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11943 = bitcast %union.rec* %1086 to %struct.word_type*
  %olist1944 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11943, i32 0, i32 0
  %arrayidx1945 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1944, i32 0, i64 0
  %osucc1946 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1945, i32 0, i32 1
  %1087 = load %union.rec*, %union.rec** %osucc1946, align 8
  store %union.rec* %1087, %union.rec** %link, align 8
  br label %for.cond.1947

for.cond.1947:                                    ; preds = %for.inc.2015, %if.then.1942
  %1088 = load %union.rec*, %union.rec** %link, align 8
  %1089 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp1948 = icmp ne %union.rec* %1088, %1089
  br i1 %cmp1948, label %for.body.1950, label %for.end.2020

for.body.1950:                                    ; preds = %for.cond.1947
  %1090 = load %union.rec*, %union.rec** %link, align 8
  %os11951 = bitcast %union.rec* %1090 to %struct.word_type*
  %olist1952 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11951, i32 0, i32 0
  %arrayidx1953 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1952, i32 0, i64 1
  %opred1954 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1953, i32 0, i32 0
  %1091 = load %union.rec*, %union.rec** %opred1954, align 8
  store %union.rec* %1091, %union.rec** %prev, align 8
  br label %for.cond.1955

for.cond.1955:                                    ; preds = %for.inc.1964, %for.body.1950
  %1092 = load %union.rec*, %union.rec** %prev, align 8
  %os11956 = bitcast %union.rec* %1092 to %struct.word_type*
  %ou11957 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11956, i32 0, i32 1
  %os111958 = bitcast %union.FIRST_UNION* %ou11957 to %struct.anon*
  %otype1959 = getelementptr inbounds %struct.anon, %struct.anon* %os111958, i32 0, i32 0
  %1093 = load i8, i8* %otype1959, align 1
  %conv1960 = zext i8 %1093 to i32
  %cmp1961 = icmp eq i32 %conv1960, 0
  br i1 %cmp1961, label %for.body.1963, label %for.end.1969

for.body.1963:                                    ; preds = %for.cond.1955
  br label %for.inc.1964

for.inc.1964:                                     ; preds = %for.body.1963
  %1094 = load %union.rec*, %union.rec** %prev, align 8
  %os11965 = bitcast %union.rec* %1094 to %struct.word_type*
  %olist1966 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11965, i32 0, i32 0
  %arrayidx1967 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1966, i32 0, i64 1
  %opred1968 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1967, i32 0, i32 0
  %1095 = load %union.rec*, %union.rec** %opred1968, align 8
  store %union.rec* %1095, %union.rec** %prev, align 8
  br label %for.cond.1955

for.end.1969:                                     ; preds = %for.cond.1955
  %1096 = load %union.rec*, %union.rec** %prev, align 8
  %os11970 = bitcast %union.rec* %1096 to %struct.word_type*
  %ou11971 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11970, i32 0, i32 1
  %os111972 = bitcast %union.FIRST_UNION* %ou11971 to %struct.anon*
  %otype1973 = getelementptr inbounds %struct.anon, %struct.anon* %os111972, i32 0, i32 0
  %1097 = load i8, i8* %otype1973, align 1
  %conv1974 = zext i8 %1097 to i32
  %cmp1975 = icmp eq i32 %conv1974, 1
  br i1 %cmp1975, label %if.then.1977, label %if.else.1983

if.then.1977:                                     ; preds = %for.end.1969
  %1098 = load i32, i32* %jn, align 4
  %tobool1978 = icmp ne i32 %1098, 0
  br i1 %tobool1978, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.1977
  %1099 = load %union.rec*, %union.rec** %prev, align 8
  %os5 = bitcast %union.rec* %1099 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %1100 = bitcast %struct.GAP* %ogap to i16*
  %bf.load1979 = load i16, i16* %1100, align 4
  %bf.lshr1980 = lshr i16 %bf.load1979, 9
  %bf.clear1981 = and i16 %bf.lshr1980, 1
  %bf.cast = zext i16 %bf.clear1981 to i32
  %tobool1982 = icmp ne i32 %bf.cast, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.1977
  %1101 = phi i1 [ false, %if.then.1977 ], [ %tobool1982, %land.rhs ]
  %land.ext = zext i1 %1101 to i32
  store i32 %land.ext, i32* %jn, align 4
  br label %if.end.2014

if.else.1983:                                     ; preds = %for.end.1969
  %1102 = load %union.rec*, %union.rec** %prev, align 8
  %os11984 = bitcast %union.rec* %1102 to %struct.word_type*
  %ou11985 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11984, i32 0, i32 1
  %os111986 = bitcast %union.FIRST_UNION* %ou11985 to %struct.anon*
  %otype1987 = getelementptr inbounds %struct.anon, %struct.anon* %os111986, i32 0, i32 0
  %1103 = load i8, i8* %otype1987, align 1
  %conv1988 = zext i8 %1103 to i32
  %cmp1989 = icmp eq i32 %conv1988, 9
  br i1 %cmp1989, label %cond.true.1991, label %cond.false.1994

cond.true.1991:                                   ; preds = %if.else.1983
  %1104 = load %union.rec*, %union.rec** %prev, align 8
  %call1992 = call i32 @SplitIsDefinite(%union.rec* %1104)
  %tobool1993 = icmp ne i32 %call1992, 0
  br i1 %tobool1993, label %if.then.2012, label %if.end.2013

cond.false.1994:                                  ; preds = %if.else.1983
  %1105 = load %union.rec*, %union.rec** %prev, align 8
  %os11995 = bitcast %union.rec* %1105 to %struct.word_type*
  %ou11996 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11995, i32 0, i32 1
  %os111997 = bitcast %union.FIRST_UNION* %ou11996 to %struct.anon*
  %otype1998 = getelementptr inbounds %struct.anon, %struct.anon* %os111997, i32 0, i32 0
  %1106 = load i8, i8* %otype1998, align 1
  %conv1999 = zext i8 %1106 to i32
  %cmp2000 = icmp sge i32 %conv1999, 9
  br i1 %cmp2000, label %land.rhs.2002, label %land.end.2010

land.rhs.2002:                                    ; preds = %cond.false.1994
  %1107 = load %union.rec*, %union.rec** %prev, align 8
  %os12003 = bitcast %union.rec* %1107 to %struct.word_type*
  %ou12004 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12003, i32 0, i32 1
  %os112005 = bitcast %union.FIRST_UNION* %ou12004 to %struct.anon*
  %otype2006 = getelementptr inbounds %struct.anon, %struct.anon* %os112005, i32 0, i32 0
  %1108 = load i8, i8* %otype2006, align 1
  %conv2007 = zext i8 %1108 to i32
  %cmp2008 = icmp sle i32 %conv2007, 99
  br label %land.end.2010

land.end.2010:                                    ; preds = %land.rhs.2002, %cond.false.1994
  %1109 = phi i1 [ false, %cond.false.1994 ], [ %cmp2008, %land.rhs.2002 ]
  br i1 %1109, label %if.then.2012, label %if.end.2013

if.then.2012:                                     ; preds = %land.end.2010, %cond.true.1991
  br label %for.end.2020

if.end.2013:                                      ; preds = %land.end.2010, %cond.true.1991
  br label %if.end.2014

if.end.2014:                                      ; preds = %if.end.2013, %land.end
  br label %for.inc.2015

for.inc.2015:                                     ; preds = %if.end.2014
  %1110 = load %union.rec*, %union.rec** %link, align 8
  %os12016 = bitcast %union.rec* %1110 to %struct.word_type*
  %olist2017 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12016, i32 0, i32 0
  %arrayidx2018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2017, i32 0, i64 0
  %osucc2019 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2018, i32 0, i32 1
  %1111 = load %union.rec*, %union.rec** %osucc2019, align 8
  store %union.rec* %1111, %union.rec** %link, align 8
  br label %for.cond.1947

for.end.2020:                                     ; preds = %if.then.2012, %for.cond.1947
  %1112 = load %union.rec*, %union.rec** %link, align 8
  %1113 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2021 = icmp ne %union.rec* %1112, %1113
  br i1 %cmp2021, label %if.then.2023, label %if.else.2656

if.then.2023:                                     ; preds = %for.end.2020
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %1114 = load %union.rec*, %union.rec** %link, align 8
  %os12024 = bitcast %union.rec* %1114 to %struct.word_type*
  %olist2025 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12024, i32 0, i32 0
  %arrayidx2026 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2025, i32 0, i64 0
  %osucc2027 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2026, i32 0, i32 1
  %1115 = load %union.rec*, %union.rec** %osucc2027, align 8
  store %union.rec* %1115, %union.rec** %link, align 8
  br label %for.cond.2028

for.cond.2028:                                    ; preds = %for.inc.2107, %if.then.2023
  %1116 = load %union.rec*, %union.rec** %link, align 8
  %1117 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2029 = icmp ne %union.rec* %1116, %1117
  br i1 %cmp2029, label %for.body.2031, label %for.end.2112

for.body.2031:                                    ; preds = %for.cond.2028
  %1118 = load %union.rec*, %union.rec** %link, align 8
  %os12032 = bitcast %union.rec* %1118 to %struct.word_type*
  %olist2033 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12032, i32 0, i32 0
  %arrayidx2034 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2033, i32 0, i64 1
  %opred2035 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2034, i32 0, i32 0
  %1119 = load %union.rec*, %union.rec** %opred2035, align 8
  store %union.rec* %1119, %union.rec** %y, align 8
  br label %for.cond.2036

for.cond.2036:                                    ; preds = %for.inc.2045, %for.body.2031
  %1120 = load %union.rec*, %union.rec** %y, align 8
  %os12037 = bitcast %union.rec* %1120 to %struct.word_type*
  %ou12038 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12037, i32 0, i32 1
  %os112039 = bitcast %union.FIRST_UNION* %ou12038 to %struct.anon*
  %otype2040 = getelementptr inbounds %struct.anon, %struct.anon* %os112039, i32 0, i32 0
  %1121 = load i8, i8* %otype2040, align 1
  %conv2041 = zext i8 %1121 to i32
  %cmp2042 = icmp eq i32 %conv2041, 0
  br i1 %cmp2042, label %for.body.2044, label %for.end.2050

for.body.2044:                                    ; preds = %for.cond.2036
  br label %for.inc.2045

for.inc.2045:                                     ; preds = %for.body.2044
  %1122 = load %union.rec*, %union.rec** %y, align 8
  %os12046 = bitcast %union.rec* %1122 to %struct.word_type*
  %olist2047 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12046, i32 0, i32 0
  %arrayidx2048 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2047, i32 0, i64 1
  %opred2049 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2048, i32 0, i32 0
  %1123 = load %union.rec*, %union.rec** %opred2049, align 8
  store %union.rec* %1123, %union.rec** %y, align 8
  br label %for.cond.2036

for.end.2050:                                     ; preds = %for.cond.2036
  %1124 = load %union.rec*, %union.rec** %y, align 8
  %os12051 = bitcast %union.rec* %1124 to %struct.word_type*
  %ou12052 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12051, i32 0, i32 1
  %os112053 = bitcast %union.FIRST_UNION* %ou12052 to %struct.anon*
  %otype2054 = getelementptr inbounds %struct.anon, %struct.anon* %os112053, i32 0, i32 0
  %1125 = load i8, i8* %otype2054, align 1
  %conv2055 = zext i8 %1125 to i32
  %cmp2056 = icmp eq i32 %conv2055, 1
  br i1 %cmp2056, label %if.then.2058, label %if.else.2070

if.then.2058:                                     ; preds = %for.end.2050
  %1126 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1126, %union.rec** %g, align 8
  %1127 = load i32, i32* %jn, align 4
  %tobool2059 = icmp ne i32 %1127, 0
  br i1 %tobool2059, label %land.rhs.2060, label %land.end.2068

land.rhs.2060:                                    ; preds = %if.then.2058
  %1128 = load %union.rec*, %union.rec** %y, align 8
  %os52061 = bitcast %union.rec* %1128 to %struct.gapobj_type*
  %ogap2062 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52061, i32 0, i32 3
  %1129 = bitcast %struct.GAP* %ogap2062 to i16*
  %bf.load2063 = load i16, i16* %1129, align 4
  %bf.lshr2064 = lshr i16 %bf.load2063, 9
  %bf.clear2065 = and i16 %bf.lshr2064, 1
  %bf.cast2066 = zext i16 %bf.clear2065 to i32
  %tobool2067 = icmp ne i32 %bf.cast2066, 0
  br label %land.end.2068

land.end.2068:                                    ; preds = %land.rhs.2060, %if.then.2058
  %1130 = phi i1 [ false, %if.then.2058 ], [ %tobool2067, %land.rhs.2060 ]
  %land.ext2069 = zext i1 %1130 to i32
  store i32 %land.ext2069, i32* %jn, align 4
  br label %if.end.2106

if.else.2070:                                     ; preds = %for.end.2050
  %1131 = load %union.rec*, %union.rec** %y, align 8
  %os12071 = bitcast %union.rec* %1131 to %struct.word_type*
  %ou12072 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12071, i32 0, i32 1
  %os112073 = bitcast %union.FIRST_UNION* %ou12072 to %struct.anon*
  %otype2074 = getelementptr inbounds %struct.anon, %struct.anon* %os112073, i32 0, i32 0
  %1132 = load i8, i8* %otype2074, align 1
  %conv2075 = zext i8 %1132 to i32
  %cmp2076 = icmp eq i32 %conv2075, 9
  br i1 %cmp2076, label %cond.true.2078, label %cond.false.2081

cond.true.2078:                                   ; preds = %if.else.2070
  %1133 = load %union.rec*, %union.rec** %y, align 8
  %call2079 = call i32 @SplitIsDefinite(%union.rec* %1133)
  %tobool2080 = icmp ne i32 %call2079, 0
  br i1 %tobool2080, label %if.then.2099, label %if.end.2105

cond.false.2081:                                  ; preds = %if.else.2070
  %1134 = load %union.rec*, %union.rec** %y, align 8
  %os12082 = bitcast %union.rec* %1134 to %struct.word_type*
  %ou12083 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12082, i32 0, i32 1
  %os112084 = bitcast %union.FIRST_UNION* %ou12083 to %struct.anon*
  %otype2085 = getelementptr inbounds %struct.anon, %struct.anon* %os112084, i32 0, i32 0
  %1135 = load i8, i8* %otype2085, align 1
  %conv2086 = zext i8 %1135 to i32
  %cmp2087 = icmp sge i32 %conv2086, 9
  br i1 %cmp2087, label %land.rhs.2089, label %land.end.2097

land.rhs.2089:                                    ; preds = %cond.false.2081
  %1136 = load %union.rec*, %union.rec** %y, align 8
  %os12090 = bitcast %union.rec* %1136 to %struct.word_type*
  %ou12091 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12090, i32 0, i32 1
  %os112092 = bitcast %union.FIRST_UNION* %ou12091 to %struct.anon*
  %otype2093 = getelementptr inbounds %struct.anon, %struct.anon* %os112092, i32 0, i32 0
  %1137 = load i8, i8* %otype2093, align 1
  %conv2094 = zext i8 %1137 to i32
  %cmp2095 = icmp sle i32 %conv2094, 99
  br label %land.end.2097

land.end.2097:                                    ; preds = %land.rhs.2089, %cond.false.2081
  %1138 = phi i1 [ false, %cond.false.2081 ], [ %cmp2095, %land.rhs.2089 ]
  br i1 %1138, label %if.then.2099, label %if.end.2105

if.then.2099:                                     ; preds = %land.end.2097, %cond.true.2078
  %1139 = load %union.rec*, %union.rec** %g, align 8
  %cmp2100 = icmp ne %union.rec* %1139, null
  br i1 %cmp2100, label %if.end.2104, label %if.then.2102

if.then.2102:                                     ; preds = %if.then.2099
  %1140 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2103 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.2104

if.end.2104:                                      ; preds = %if.then.2102, %if.then.2099
  br label %for.end.2112

if.end.2105:                                      ; preds = %land.end.2097, %cond.true.2078
  br label %if.end.2106

if.end.2106:                                      ; preds = %if.end.2105, %land.end.2068
  br label %for.inc.2107

for.inc.2107:                                     ; preds = %if.end.2106
  %1141 = load %union.rec*, %union.rec** %link, align 8
  %os12108 = bitcast %union.rec* %1141 to %struct.word_type*
  %olist2109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12108, i32 0, i32 0
  %arrayidx2110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2109, i32 0, i64 0
  %osucc2111 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2110, i32 0, i32 1
  %1142 = load %union.rec*, %union.rec** %osucc2111, align 8
  store %union.rec* %1142, %union.rec** %link, align 8
  br label %for.cond.2028

for.end.2112:                                     ; preds = %if.end.2104, %for.cond.2028
  %1143 = load %union.rec*, %union.rec** %link, align 8
  %1144 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2113 = icmp ne %union.rec* %1143, %1144
  br i1 %cmp2113, label %land.lhs.true.2115, label %if.end.2169

land.lhs.true.2115:                               ; preds = %for.end.2112
  %1145 = load %union.rec*, %union.rec** %g, align 8
  %os52116 = bitcast %union.rec* %1145 to %struct.gapobj_type*
  %ogap2117 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52116, i32 0, i32 3
  %1146 = bitcast %struct.GAP* %ogap2117 to i16*
  %bf.load2118 = load i16, i16* %1146, align 4
  %bf.lshr2119 = lshr i16 %bf.load2118, 13
  %bf.cast2120 = zext i16 %bf.lshr2119 to i32
  %cmp2121 = icmp eq i32 %bf.cast2120, 6
  br i1 %cmp2121, label %land.lhs.true.2123, label %if.end.2169

land.lhs.true.2123:                               ; preds = %land.lhs.true.2115
  %1147 = load %union.rec*, %union.rec** %g, align 8
  %os52124 = bitcast %union.rec* %1147 to %struct.gapobj_type*
  %ogap2125 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52124, i32 0, i32 3
  %1148 = bitcast %struct.GAP* %ogap2125 to i16*
  %bf.load2126 = load i16, i16* %1148, align 4
  %bf.lshr2127 = lshr i16 %bf.load2126, 10
  %bf.clear2128 = and i16 %bf.lshr2127, 7
  %bf.cast2129 = zext i16 %bf.clear2128 to i32
  %cmp2130 = icmp eq i32 %bf.cast2129, 3
  br i1 %cmp2130, label %land.lhs.true.2132, label %if.end.2169

land.lhs.true.2132:                               ; preds = %land.lhs.true.2123
  %1149 = load %union.rec*, %union.rec** %g, align 8
  %os52133 = bitcast %union.rec* %1149 to %struct.gapobj_type*
  %ogap2134 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52133, i32 0, i32 3
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap2134, i32 0, i32 1
  %1150 = load i16, i16* %owidth, align 2
  %conv2135 = sext i16 %1150 to i32
  %cmp2136 = icmp eq i32 %conv2135, 0
  br i1 %cmp2136, label %if.then.2138, label %if.end.2169

if.then.2138:                                     ; preds = %land.lhs.true.2132
  %1151 = load i32, i32* %xb.addr, align 4
  %1152 = load i32, i32* %dim.addr, align 4
  %idxprom2139 = sext i32 %1152 to i64
  %1153 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12140 = bitcast %union.rec* %1153 to %struct.word_type*
  %ou32141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12140, i32 0, i32 3
  %os312142 = bitcast %union.THIRD_UNION* %ou32141 to %struct.anon.6*
  %oback2143 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312142, i32 0, i32 0
  %arrayidx2144 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2143, i32 0, i64 %idxprom2139
  %1154 = load i32, i32* %arrayidx2144, align 4
  %sub2145 = sub nsw i32 %1151, %1154
  %1155 = load i32, i32* %dim.addr, align 4
  %idxprom2146 = sext i32 %1155 to i64
  %1156 = load %union.rec*, %union.rec** %prev, align 8
  %os12147 = bitcast %union.rec* %1156 to %struct.word_type*
  %ou32148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12147, i32 0, i32 3
  %os312149 = bitcast %union.THIRD_UNION* %ou32148 to %struct.anon.6*
  %ofwd2150 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312149, i32 0, i32 1
  %arrayidx2151 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2150, i32 0, i64 %idxprom2146
  %1157 = load i32, i32* %arrayidx2151, align 4
  %add2152 = add nsw i32 %1157, %sub2145
  store i32 %add2152, i32* %arrayidx2151, align 4
  %1158 = load i32, i32* %xb.addr, align 4
  %1159 = load i32, i32* %dim.addr, align 4
  %idxprom2153 = sext i32 %1159 to i64
  %1160 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12154 = bitcast %union.rec* %1160 to %struct.word_type*
  %ou32155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12154, i32 0, i32 3
  %os312156 = bitcast %union.THIRD_UNION* %ou32155 to %struct.anon.6*
  %oback2157 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312156, i32 0, i32 0
  %arrayidx2158 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2157, i32 0, i64 %idxprom2153
  store i32 %1158, i32* %arrayidx2158, align 4
  %1161 = load %union.rec*, %union.rec** %g, align 8
  %os52159 = bitcast %union.rec* %1161 to %struct.gapobj_type*
  %ogap2160 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52159, i32 0, i32 3
  %1162 = bitcast %struct.GAP* %ogap2160 to i16*
  %bf.load2161 = load i16, i16* %1162, align 4
  %bf.clear2162 = and i16 %bf.load2161, 8191
  %bf.set2163 = or i16 %bf.clear2162, 8192
  store i16 %bf.set2163, i16* %1162, align 4
  %1163 = load %union.rec*, %union.rec** %g, align 8
  %os52164 = bitcast %union.rec* %1163 to %struct.gapobj_type*
  %ogap2165 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52164, i32 0, i32 3
  %1164 = bitcast %struct.GAP* %ogap2165 to i16*
  %bf.load2166 = load i16, i16* %1164, align 4
  %bf.clear2167 = and i16 %bf.load2166, -7169
  %bf.set2168 = or i16 %bf.clear2167, 1024
  store i16 %bf.set2168, i16* %1164, align 4
  br label %if.end.2169

if.end.2169:                                      ; preds = %if.then.2138, %land.lhs.true.2132, %land.lhs.true.2123, %land.lhs.true.2115, %for.end.2112
  store i32 1, i32* %jn, align 4
  %1165 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12170 = bitcast %union.rec* %1165 to %struct.word_type*
  %olist2171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12170, i32 0, i32 0
  %arrayidx2172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2171, i32 0, i64 0
  %osucc2173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2172, i32 0, i32 1
  %1166 = load %union.rec*, %union.rec** %osucc2173, align 8
  store %union.rec* %1166, %union.rec** %link, align 8
  br label %for.cond.2174

for.cond.2174:                                    ; preds = %for.inc.2248, %if.end.2169
  %1167 = load %union.rec*, %union.rec** %link, align 8
  %1168 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2175 = icmp ne %union.rec* %1167, %1168
  br i1 %cmp2175, label %for.body.2177, label %for.end.2253

for.body.2177:                                    ; preds = %for.cond.2174
  %1169 = load %union.rec*, %union.rec** %link, align 8
  %os12178 = bitcast %union.rec* %1169 to %struct.word_type*
  %olist2179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12178, i32 0, i32 0
  %arrayidx2180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2179, i32 0, i64 1
  %opred2181 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2180, i32 0, i32 0
  %1170 = load %union.rec*, %union.rec** %opred2181, align 8
  store %union.rec* %1170, %union.rec** %prev, align 8
  br label %for.cond.2182

for.cond.2182:                                    ; preds = %for.inc.2191, %for.body.2177
  %1171 = load %union.rec*, %union.rec** %prev, align 8
  %os12183 = bitcast %union.rec* %1171 to %struct.word_type*
  %ou12184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12183, i32 0, i32 1
  %os112185 = bitcast %union.FIRST_UNION* %ou12184 to %struct.anon*
  %otype2186 = getelementptr inbounds %struct.anon, %struct.anon* %os112185, i32 0, i32 0
  %1172 = load i8, i8* %otype2186, align 1
  %conv2187 = zext i8 %1172 to i32
  %cmp2188 = icmp eq i32 %conv2187, 0
  br i1 %cmp2188, label %for.body.2190, label %for.end.2196

for.body.2190:                                    ; preds = %for.cond.2182
  br label %for.inc.2191

for.inc.2191:                                     ; preds = %for.body.2190
  %1173 = load %union.rec*, %union.rec** %prev, align 8
  %os12192 = bitcast %union.rec* %1173 to %struct.word_type*
  %olist2193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12192, i32 0, i32 0
  %arrayidx2194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2193, i32 0, i64 1
  %opred2195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2194, i32 0, i32 0
  %1174 = load %union.rec*, %union.rec** %opred2195, align 8
  store %union.rec* %1174, %union.rec** %prev, align 8
  br label %for.cond.2182

for.end.2196:                                     ; preds = %for.cond.2182
  %1175 = load %union.rec*, %union.rec** %prev, align 8
  %os12197 = bitcast %union.rec* %1175 to %struct.word_type*
  %ou12198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12197, i32 0, i32 1
  %os112199 = bitcast %union.FIRST_UNION* %ou12198 to %struct.anon*
  %otype2200 = getelementptr inbounds %struct.anon, %struct.anon* %os112199, i32 0, i32 0
  %1176 = load i8, i8* %otype2200, align 1
  %conv2201 = zext i8 %1176 to i32
  %cmp2202 = icmp eq i32 %conv2201, 1
  br i1 %cmp2202, label %if.then.2204, label %if.else.2216

if.then.2204:                                     ; preds = %for.end.2196
  %1177 = load i32, i32* %jn, align 4
  %tobool2205 = icmp ne i32 %1177, 0
  br i1 %tobool2205, label %land.rhs.2206, label %land.end.2214

land.rhs.2206:                                    ; preds = %if.then.2204
  %1178 = load %union.rec*, %union.rec** %prev, align 8
  %os52207 = bitcast %union.rec* %1178 to %struct.gapobj_type*
  %ogap2208 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52207, i32 0, i32 3
  %1179 = bitcast %struct.GAP* %ogap2208 to i16*
  %bf.load2209 = load i16, i16* %1179, align 4
  %bf.lshr2210 = lshr i16 %bf.load2209, 9
  %bf.clear2211 = and i16 %bf.lshr2210, 1
  %bf.cast2212 = zext i16 %bf.clear2211 to i32
  %tobool2213 = icmp ne i32 %bf.cast2212, 0
  br label %land.end.2214

land.end.2214:                                    ; preds = %land.rhs.2206, %if.then.2204
  %1180 = phi i1 [ false, %if.then.2204 ], [ %tobool2213, %land.rhs.2206 ]
  %land.ext2215 = zext i1 %1180 to i32
  store i32 %land.ext2215, i32* %jn, align 4
  br label %if.end.2247

if.else.2216:                                     ; preds = %for.end.2196
  %1181 = load %union.rec*, %union.rec** %prev, align 8
  %os12217 = bitcast %union.rec* %1181 to %struct.word_type*
  %ou12218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12217, i32 0, i32 1
  %os112219 = bitcast %union.FIRST_UNION* %ou12218 to %struct.anon*
  %otype2220 = getelementptr inbounds %struct.anon, %struct.anon* %os112219, i32 0, i32 0
  %1182 = load i8, i8* %otype2220, align 1
  %conv2221 = zext i8 %1182 to i32
  %cmp2222 = icmp eq i32 %conv2221, 9
  br i1 %cmp2222, label %cond.true.2224, label %cond.false.2227

cond.true.2224:                                   ; preds = %if.else.2216
  %1183 = load %union.rec*, %union.rec** %prev, align 8
  %call2225 = call i32 @SplitIsDefinite(%union.rec* %1183)
  %tobool2226 = icmp ne i32 %call2225, 0
  br i1 %tobool2226, label %if.then.2245, label %if.end.2246

cond.false.2227:                                  ; preds = %if.else.2216
  %1184 = load %union.rec*, %union.rec** %prev, align 8
  %os12228 = bitcast %union.rec* %1184 to %struct.word_type*
  %ou12229 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12228, i32 0, i32 1
  %os112230 = bitcast %union.FIRST_UNION* %ou12229 to %struct.anon*
  %otype2231 = getelementptr inbounds %struct.anon, %struct.anon* %os112230, i32 0, i32 0
  %1185 = load i8, i8* %otype2231, align 1
  %conv2232 = zext i8 %1185 to i32
  %cmp2233 = icmp sge i32 %conv2232, 9
  br i1 %cmp2233, label %land.rhs.2235, label %land.end.2243

land.rhs.2235:                                    ; preds = %cond.false.2227
  %1186 = load %union.rec*, %union.rec** %prev, align 8
  %os12236 = bitcast %union.rec* %1186 to %struct.word_type*
  %ou12237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12236, i32 0, i32 1
  %os112238 = bitcast %union.FIRST_UNION* %ou12237 to %struct.anon*
  %otype2239 = getelementptr inbounds %struct.anon, %struct.anon* %os112238, i32 0, i32 0
  %1187 = load i8, i8* %otype2239, align 1
  %conv2240 = zext i8 %1187 to i32
  %cmp2241 = icmp sle i32 %conv2240, 99
  br label %land.end.2243

land.end.2243:                                    ; preds = %land.rhs.2235, %cond.false.2227
  %1188 = phi i1 [ false, %cond.false.2227 ], [ %cmp2241, %land.rhs.2235 ]
  br i1 %1188, label %if.then.2245, label %if.end.2246

if.then.2245:                                     ; preds = %land.end.2243, %cond.true.2224
  br label %for.end.2253

if.end.2246:                                      ; preds = %land.end.2243, %cond.true.2224
  br label %if.end.2247

if.end.2247:                                      ; preds = %if.end.2246, %land.end.2214
  br label %for.inc.2248

for.inc.2248:                                     ; preds = %if.end.2247
  %1189 = load %union.rec*, %union.rec** %link, align 8
  %os12249 = bitcast %union.rec* %1189 to %struct.word_type*
  %olist2250 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12249, i32 0, i32 0
  %arrayidx2251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2250, i32 0, i64 0
  %osucc2252 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2251, i32 0, i32 1
  %1190 = load %union.rec*, %union.rec** %osucc2252, align 8
  store %union.rec* %1190, %union.rec** %link, align 8
  br label %for.cond.2174

for.end.2253:                                     ; preds = %if.then.2245, %for.cond.2174
  %1191 = load i32, i32* %dim.addr, align 4
  %idxprom2254 = sext i32 %1191 to i64
  %1192 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12255 = bitcast %union.rec* %1192 to %struct.word_type*
  %ou32256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12255, i32 0, i32 3
  %os312257 = bitcast %union.THIRD_UNION* %ou32256 to %struct.anon.6*
  %oback2258 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312257, i32 0, i32 0
  %arrayidx2259 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2258, i32 0, i64 %idxprom2254
  %1193 = load i32, i32* %arrayidx2259, align 4
  %1194 = load i32, i32* %xf.addr, align 4
  %add2260 = add nsw i32 %1193, %1194
  store i32 %add2260, i32* %frame_size, align 4
  %1195 = load i32, i32* %xmk.addr, align 4
  %1196 = load i32, i32* %dim.addr, align 4
  %idxprom2261 = sext i32 %1196 to i64
  %1197 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12262 = bitcast %union.rec* %1197 to %struct.word_type*
  %ou32263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12262, i32 0, i32 3
  %os312264 = bitcast %union.THIRD_UNION* %ou32263 to %struct.anon.6*
  %oback2265 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312264, i32 0, i32 0
  %arrayidx2266 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2265, i32 0, i64 %idxprom2261
  %1198 = load i32, i32* %arrayidx2266, align 4
  %sub2267 = sub nsw i32 %1195, %1198
  store i32 %sub2267, i32* %back_edge, align 4
  %1199 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12268 = bitcast %union.rec* %1199 to %struct.word_type*
  %ou22269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12268, i32 0, i32 2
  %os232270 = bitcast %union.SECOND_UNION* %ou22269 to %struct.anon.2*
  %oadjust_cat = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os232270, i32 0, i32 2
  %bf.load2271 = load i16, i16* %oadjust_cat, align 2
  %bf.lshr2272 = lshr i16 %bf.load2271, 11
  %bf.clear2273 = and i16 %bf.lshr2272, 1
  %bf.cast2274 = zext i16 %bf.clear2273 to i32
  %tobool2275 = icmp ne i32 %bf.cast2274, 0
  br i1 %tobool2275, label %land.lhs.true.2276, label %if.else.2280

land.lhs.true.2276:                               ; preds = %for.end.2253
  %1200 = load i32, i32* %suppress.addr, align 4
  %tobool2277 = icmp ne i32 %1200, 0
  br i1 %tobool2277, label %if.else.2280, label %if.then.2278

if.then.2278:                                     ; preds = %land.lhs.true.2276
  %1201 = load %union.rec*, %union.rec** %x.addr, align 8
  %1202 = load i32, i32* %frame_size, align 4
  %1203 = load i32, i32* %dim.addr, align 4
  %call2279 = call i32 @FindAdjustIncrement(%union.rec* %1201, i32 %1202, i32 %1203)
  store i32 %call2279, i32* %inc, align 4
  br label %if.end.2281

if.else.2280:                                     ; preds = %land.lhs.true.2276, %for.end.2253
  store i32 0, i32* %inc, align 4
  br label %if.end.2281

if.end.2281:                                      ; preds = %if.else.2280, %if.then.2278
  %1204 = load i32, i32* %back_edge, align 4
  %1205 = load i32, i32* %dim.addr, align 4
  %idxprom2282 = sext i32 %1205 to i64
  %1206 = load %union.rec*, %union.rec** %prev, align 8
  %os12283 = bitcast %union.rec* %1206 to %struct.word_type*
  %ou32284 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12283, i32 0, i32 3
  %os312285 = bitcast %union.THIRD_UNION* %ou32284 to %struct.anon.6*
  %oback2286 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312285, i32 0, i32 0
  %arrayidx2287 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2286, i32 0, i64 %idxprom2282
  %1207 = load i32, i32* %arrayidx2287, align 4
  %add2288 = add nsw i32 %1204, %1207
  store i32 %add2288, i32* %mk, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %1208 = load %union.rec*, %union.rec** %link, align 8
  %os12289 = bitcast %union.rec* %1208 to %struct.word_type*
  %olist2290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12289, i32 0, i32 0
  %arrayidx2291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2290, i32 0, i64 0
  %osucc2292 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2291, i32 0, i32 1
  %1209 = load %union.rec*, %union.rec** %osucc2292, align 8
  store %union.rec* %1209, %union.rec** %link, align 8
  br label %for.cond.2293

for.cond.2293:                                    ; preds = %for.inc.2372, %if.end.2281
  %1210 = load %union.rec*, %union.rec** %link, align 8
  %1211 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2294 = icmp ne %union.rec* %1210, %1211
  br i1 %cmp2294, label %for.body.2296, label %for.end.2377

for.body.2296:                                    ; preds = %for.cond.2293
  %1212 = load %union.rec*, %union.rec** %link, align 8
  %os12297 = bitcast %union.rec* %1212 to %struct.word_type*
  %olist2298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12297, i32 0, i32 0
  %arrayidx2299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2298, i32 0, i64 1
  %opred2300 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2299, i32 0, i32 0
  %1213 = load %union.rec*, %union.rec** %opred2300, align 8
  store %union.rec* %1213, %union.rec** %y, align 8
  br label %for.cond.2301

for.cond.2301:                                    ; preds = %for.inc.2310, %for.body.2296
  %1214 = load %union.rec*, %union.rec** %y, align 8
  %os12302 = bitcast %union.rec* %1214 to %struct.word_type*
  %ou12303 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12302, i32 0, i32 1
  %os112304 = bitcast %union.FIRST_UNION* %ou12303 to %struct.anon*
  %otype2305 = getelementptr inbounds %struct.anon, %struct.anon* %os112304, i32 0, i32 0
  %1215 = load i8, i8* %otype2305, align 1
  %conv2306 = zext i8 %1215 to i32
  %cmp2307 = icmp eq i32 %conv2306, 0
  br i1 %cmp2307, label %for.body.2309, label %for.end.2315

for.body.2309:                                    ; preds = %for.cond.2301
  br label %for.inc.2310

for.inc.2310:                                     ; preds = %for.body.2309
  %1216 = load %union.rec*, %union.rec** %y, align 8
  %os12311 = bitcast %union.rec* %1216 to %struct.word_type*
  %olist2312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12311, i32 0, i32 0
  %arrayidx2313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2312, i32 0, i64 1
  %opred2314 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2313, i32 0, i32 0
  %1217 = load %union.rec*, %union.rec** %opred2314, align 8
  store %union.rec* %1217, %union.rec** %y, align 8
  br label %for.cond.2301

for.end.2315:                                     ; preds = %for.cond.2301
  %1218 = load %union.rec*, %union.rec** %y, align 8
  %os12316 = bitcast %union.rec* %1218 to %struct.word_type*
  %ou12317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12316, i32 0, i32 1
  %os112318 = bitcast %union.FIRST_UNION* %ou12317 to %struct.anon*
  %otype2319 = getelementptr inbounds %struct.anon, %struct.anon* %os112318, i32 0, i32 0
  %1219 = load i8, i8* %otype2319, align 1
  %conv2320 = zext i8 %1219 to i32
  %cmp2321 = icmp eq i32 %conv2320, 1
  br i1 %cmp2321, label %if.then.2323, label %if.else.2335

if.then.2323:                                     ; preds = %for.end.2315
  %1220 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1220, %union.rec** %g, align 8
  %1221 = load i32, i32* %jn, align 4
  %tobool2324 = icmp ne i32 %1221, 0
  br i1 %tobool2324, label %land.rhs.2325, label %land.end.2333

land.rhs.2325:                                    ; preds = %if.then.2323
  %1222 = load %union.rec*, %union.rec** %y, align 8
  %os52326 = bitcast %union.rec* %1222 to %struct.gapobj_type*
  %ogap2327 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52326, i32 0, i32 3
  %1223 = bitcast %struct.GAP* %ogap2327 to i16*
  %bf.load2328 = load i16, i16* %1223, align 4
  %bf.lshr2329 = lshr i16 %bf.load2328, 9
  %bf.clear2330 = and i16 %bf.lshr2329, 1
  %bf.cast2331 = zext i16 %bf.clear2330 to i32
  %tobool2332 = icmp ne i32 %bf.cast2331, 0
  br label %land.end.2333

land.end.2333:                                    ; preds = %land.rhs.2325, %if.then.2323
  %1224 = phi i1 [ false, %if.then.2323 ], [ %tobool2332, %land.rhs.2325 ]
  %land.ext2334 = zext i1 %1224 to i32
  store i32 %land.ext2334, i32* %jn, align 4
  br label %if.end.2371

if.else.2335:                                     ; preds = %for.end.2315
  %1225 = load %union.rec*, %union.rec** %y, align 8
  %os12336 = bitcast %union.rec* %1225 to %struct.word_type*
  %ou12337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12336, i32 0, i32 1
  %os112338 = bitcast %union.FIRST_UNION* %ou12337 to %struct.anon*
  %otype2339 = getelementptr inbounds %struct.anon, %struct.anon* %os112338, i32 0, i32 0
  %1226 = load i8, i8* %otype2339, align 1
  %conv2340 = zext i8 %1226 to i32
  %cmp2341 = icmp eq i32 %conv2340, 9
  br i1 %cmp2341, label %cond.true.2343, label %cond.false.2346

cond.true.2343:                                   ; preds = %if.else.2335
  %1227 = load %union.rec*, %union.rec** %y, align 8
  %call2344 = call i32 @SplitIsDefinite(%union.rec* %1227)
  %tobool2345 = icmp ne i32 %call2344, 0
  br i1 %tobool2345, label %if.then.2364, label %if.end.2370

cond.false.2346:                                  ; preds = %if.else.2335
  %1228 = load %union.rec*, %union.rec** %y, align 8
  %os12347 = bitcast %union.rec* %1228 to %struct.word_type*
  %ou12348 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12347, i32 0, i32 1
  %os112349 = bitcast %union.FIRST_UNION* %ou12348 to %struct.anon*
  %otype2350 = getelementptr inbounds %struct.anon, %struct.anon* %os112349, i32 0, i32 0
  %1229 = load i8, i8* %otype2350, align 1
  %conv2351 = zext i8 %1229 to i32
  %cmp2352 = icmp sge i32 %conv2351, 9
  br i1 %cmp2352, label %land.rhs.2354, label %land.end.2362

land.rhs.2354:                                    ; preds = %cond.false.2346
  %1230 = load %union.rec*, %union.rec** %y, align 8
  %os12355 = bitcast %union.rec* %1230 to %struct.word_type*
  %ou12356 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12355, i32 0, i32 1
  %os112357 = bitcast %union.FIRST_UNION* %ou12356 to %struct.anon*
  %otype2358 = getelementptr inbounds %struct.anon, %struct.anon* %os112357, i32 0, i32 0
  %1231 = load i8, i8* %otype2358, align 1
  %conv2359 = zext i8 %1231 to i32
  %cmp2360 = icmp sle i32 %conv2359, 99
  br label %land.end.2362

land.end.2362:                                    ; preds = %land.rhs.2354, %cond.false.2346
  %1232 = phi i1 [ false, %cond.false.2346 ], [ %cmp2360, %land.rhs.2354 ]
  br i1 %1232, label %if.then.2364, label %if.end.2370

if.then.2364:                                     ; preds = %land.end.2362, %cond.true.2343
  %1233 = load %union.rec*, %union.rec** %g, align 8
  %cmp2365 = icmp ne %union.rec* %1233, null
  br i1 %cmp2365, label %if.end.2369, label %if.then.2367

if.then.2367:                                     ; preds = %if.then.2364
  %1234 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2368 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1234, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.2369

if.end.2369:                                      ; preds = %if.then.2367, %if.then.2364
  br label %for.end.2377

if.end.2370:                                      ; preds = %land.end.2362, %cond.true.2343
  br label %if.end.2371

if.end.2371:                                      ; preds = %if.end.2370, %land.end.2333
  br label %for.inc.2372

for.inc.2372:                                     ; preds = %if.end.2371
  %1235 = load %union.rec*, %union.rec** %link, align 8
  %os12373 = bitcast %union.rec* %1235 to %struct.word_type*
  %olist2374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12373, i32 0, i32 0
  %arrayidx2375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2374, i32 0, i64 0
  %osucc2376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2375, i32 0, i32 1
  %1236 = load %union.rec*, %union.rec** %osucc2376, align 8
  store %union.rec* %1236, %union.rec** %link, align 8
  br label %for.cond.2293

for.end.2377:                                     ; preds = %if.end.2369, %for.cond.2293
  br label %while.cond

while.cond:                                       ; preds = %for.end.2582, %for.end.2377
  %1237 = load %union.rec*, %union.rec** %link, align 8
  %1238 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2378 = icmp ne %union.rec* %1237, %1238
  br i1 %cmp2378, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1239 = load %union.rec*, %union.rec** %g, align 8
  %os52380 = bitcast %union.rec* %1239 to %struct.gapobj_type*
  %ogap2381 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52380, i32 0, i32 3
  %1240 = bitcast %struct.GAP* %ogap2381 to i16*
  %bf.load2382 = load i16, i16* %1240, align 4
  %bf.lshr2383 = lshr i16 %bf.load2382, 13
  %bf.cast2384 = zext i16 %bf.lshr2383 to i32
  %cmp2385 = icmp eq i32 %bf.cast2384, 6
  br i1 %cmp2385, label %land.lhs.true.2387, label %if.else.2461

land.lhs.true.2387:                               ; preds = %while.body
  %1241 = load %union.rec*, %union.rec** %g, align 8
  %os52388 = bitcast %union.rec* %1241 to %struct.gapobj_type*
  %ogap2389 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52388, i32 0, i32 3
  %1242 = bitcast %struct.GAP* %ogap2389 to i16*
  %bf.load2390 = load i16, i16* %1242, align 4
  %bf.lshr2391 = lshr i16 %bf.load2390, 10
  %bf.clear2392 = and i16 %bf.lshr2391, 7
  %bf.cast2393 = zext i16 %bf.clear2392 to i32
  %cmp2394 = icmp eq i32 %bf.cast2393, 3
  br i1 %cmp2394, label %land.lhs.true.2396, label %if.else.2461

land.lhs.true.2396:                               ; preds = %land.lhs.true.2387
  %1243 = load %union.rec*, %union.rec** %g, align 8
  %os52397 = bitcast %union.rec* %1243 to %struct.gapobj_type*
  %ogap2398 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52397, i32 0, i32 3
  %owidth2399 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap2398, i32 0, i32 1
  %1244 = load i16, i16* %owidth2399, align 2
  %conv2400 = sext i16 %1244 to i32
  %cmp2401 = icmp eq i32 %conv2400, 4096
  br i1 %cmp2401, label %if.then.2403, label %if.else.2461

if.then.2403:                                     ; preds = %land.lhs.true.2396
  %1245 = load %union.rec*, %union.rec** %prev, align 8
  %1246 = load i32, i32* %mk, align 4
  %1247 = load i32, i32* %dim.addr, align 4
  %idxprom2404 = sext i32 %1247 to i64
  %1248 = load %union.rec*, %union.rec** %prev, align 8
  %os12405 = bitcast %union.rec* %1248 to %struct.word_type*
  %ou32406 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12405, i32 0, i32 3
  %os312407 = bitcast %union.THIRD_UNION* %ou32406 to %struct.anon.6*
  %oback2408 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312407, i32 0, i32 0
  %arrayidx2409 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2408, i32 0, i64 %idxprom2404
  %1249 = load i32, i32* %arrayidx2409, align 4
  %1250 = load i32, i32* %dim.addr, align 4
  %idxprom2410 = sext i32 %1250 to i64
  %1251 = load %union.rec*, %union.rec** %prev, align 8
  %os12411 = bitcast %union.rec* %1251 to %struct.word_type*
  %ou32412 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12411, i32 0, i32 3
  %os312413 = bitcast %union.THIRD_UNION* %ou32412 to %struct.anon.6*
  %ofwd2414 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312413, i32 0, i32 1
  %arrayidx2415 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2414, i32 0, i64 %idxprom2410
  %1252 = load i32, i32* %arrayidx2415, align 4
  %1253 = load i32, i32* %xmk.addr, align 4
  %1254 = load i32, i32* %xf.addr, align 4
  %add2416 = add nsw i32 %1253, %1254
  %1255 = load i32, i32* %mk, align 4
  %sub2417 = sub nsw i32 %add2416, %1255
  %1256 = load i32, i32* %dim.addr, align 4
  %idxprom2418 = sext i32 %1256 to i64
  %1257 = load %union.rec*, %union.rec** %y, align 8
  %os12419 = bitcast %union.rec* %1257 to %struct.word_type*
  %ou32420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12419, i32 0, i32 3
  %os312421 = bitcast %union.THIRD_UNION* %ou32420 to %struct.anon.6*
  %oback2422 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312421, i32 0, i32 0
  %arrayidx2423 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2422, i32 0, i64 %idxprom2418
  %1258 = load i32, i32* %arrayidx2423, align 4
  %1259 = load i32, i32* %dim.addr, align 4
  %idxprom2424 = sext i32 %1259 to i64
  %1260 = load %union.rec*, %union.rec** %y, align 8
  %os12425 = bitcast %union.rec* %1260 to %struct.word_type*
  %ou32426 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12425, i32 0, i32 3
  %os312427 = bitcast %union.THIRD_UNION* %ou32426 to %struct.anon.6*
  %ofwd2428 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312427, i32 0, i32 1
  %arrayidx2429 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2428, i32 0, i64 %idxprom2424
  %1261 = load i32, i32* %arrayidx2429, align 4
  %add2430 = add nsw i32 %1258, %1261
  %sub2431 = sub nsw i32 %sub2417, %add2430
  %cmp2432 = icmp slt i32 %1252, %sub2431
  br i1 %cmp2432, label %cond.true.2434, label %cond.false.2451

cond.true.2434:                                   ; preds = %if.then.2403
  %1262 = load i32, i32* %xmk.addr, align 4
  %1263 = load i32, i32* %xf.addr, align 4
  %add2435 = add nsw i32 %1262, %1263
  %1264 = load i32, i32* %mk, align 4
  %sub2436 = sub nsw i32 %add2435, %1264
  %1265 = load i32, i32* %dim.addr, align 4
  %idxprom2437 = sext i32 %1265 to i64
  %1266 = load %union.rec*, %union.rec** %y, align 8
  %os12438 = bitcast %union.rec* %1266 to %struct.word_type*
  %ou32439 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12438, i32 0, i32 3
  %os312440 = bitcast %union.THIRD_UNION* %ou32439 to %struct.anon.6*
  %oback2441 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312440, i32 0, i32 0
  %arrayidx2442 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2441, i32 0, i64 %idxprom2437
  %1267 = load i32, i32* %arrayidx2442, align 4
  %1268 = load i32, i32* %dim.addr, align 4
  %idxprom2443 = sext i32 %1268 to i64
  %1269 = load %union.rec*, %union.rec** %y, align 8
  %os12444 = bitcast %union.rec* %1269 to %struct.word_type*
  %ou32445 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12444, i32 0, i32 3
  %os312446 = bitcast %union.THIRD_UNION* %ou32445 to %struct.anon.6*
  %ofwd2447 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312446, i32 0, i32 1
  %arrayidx2448 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2447, i32 0, i64 %idxprom2443
  %1270 = load i32, i32* %arrayidx2448, align 4
  %add2449 = add nsw i32 %1267, %1270
  %sub2450 = sub nsw i32 %sub2436, %add2449
  br label %cond.end.2458

cond.false.2451:                                  ; preds = %if.then.2403
  %1271 = load i32, i32* %dim.addr, align 4
  %idxprom2452 = sext i32 %1271 to i64
  %1272 = load %union.rec*, %union.rec** %prev, align 8
  %os12453 = bitcast %union.rec* %1272 to %struct.word_type*
  %ou32454 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12453, i32 0, i32 3
  %os312455 = bitcast %union.THIRD_UNION* %ou32454 to %struct.anon.6*
  %ofwd2456 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312455, i32 0, i32 1
  %arrayidx2457 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2456, i32 0, i64 %idxprom2452
  %1273 = load i32, i32* %arrayidx2457, align 4
  br label %cond.end.2458

cond.end.2458:                                    ; preds = %cond.false.2451, %cond.true.2434
  %cond2459 = phi i32 [ %sub2450, %cond.true.2434 ], [ %1273, %cond.false.2451 ]
  %1274 = load i32, i32* %dim.addr, align 4
  %1275 = load i32, i32* %pg.addr, align 4
  %1276 = load i32, i32* %count.addr, align 4
  %call2460 = call %union.rec* @FixAndPrintObject(%union.rec* %1245, i32 %1246, i32 %1249, i32 %cond2459, i32 %1274, i32 0, i32 %1275, i32 %1276, i32* %aback, i32* %afwd)
  store %union.rec* %call2460, %union.rec** %prev, align 8
  br label %if.end.2476

if.else.2461:                                     ; preds = %land.lhs.true.2396, %land.lhs.true.2387, %while.body
  %1277 = load %union.rec*, %union.rec** %prev, align 8
  %1278 = load i32, i32* %mk, align 4
  %1279 = load i32, i32* %dim.addr, align 4
  %idxprom2462 = sext i32 %1279 to i64
  %1280 = load %union.rec*, %union.rec** %prev, align 8
  %os12463 = bitcast %union.rec* %1280 to %struct.word_type*
  %ou32464 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12463, i32 0, i32 3
  %os312465 = bitcast %union.THIRD_UNION* %ou32464 to %struct.anon.6*
  %oback2466 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312465, i32 0, i32 0
  %arrayidx2467 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2466, i32 0, i64 %idxprom2462
  %1281 = load i32, i32* %arrayidx2467, align 4
  %1282 = load i32, i32* %dim.addr, align 4
  %idxprom2468 = sext i32 %1282 to i64
  %1283 = load %union.rec*, %union.rec** %prev, align 8
  %os12469 = bitcast %union.rec* %1283 to %struct.word_type*
  %ou32470 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12469, i32 0, i32 3
  %os312471 = bitcast %union.THIRD_UNION* %ou32470 to %struct.anon.6*
  %ofwd2472 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312471, i32 0, i32 1
  %arrayidx2473 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2472, i32 0, i64 %idxprom2468
  %1284 = load i32, i32* %arrayidx2473, align 4
  %1285 = load i32, i32* %inc, align 4
  %add2474 = add nsw i32 %1284, %1285
  %1286 = load i32, i32* %dim.addr, align 4
  %1287 = load i32, i32* %pg.addr, align 4
  %1288 = load i32, i32* %count.addr, align 4
  %call2475 = call %union.rec* @FixAndPrintObject(%union.rec* %1277, i32 %1278, i32 %1281, i32 %add2474, i32 %1286, i32 0, i32 %1287, i32 %1288, i32* %aback, i32* %afwd)
  store %union.rec* %call2475, %union.rec** %prev, align 8
  br label %if.end.2476

if.end.2476:                                      ; preds = %if.else.2461, %cond.end.2458
  %1289 = load i32, i32* %afwd, align 4
  %1290 = load i32, i32* %dim.addr, align 4
  %idxprom2477 = sext i32 %1290 to i64
  %1291 = load %union.rec*, %union.rec** %y, align 8
  %os12478 = bitcast %union.rec* %1291 to %struct.word_type*
  %ou32479 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12478, i32 0, i32 3
  %os312480 = bitcast %union.THIRD_UNION* %ou32479 to %struct.anon.6*
  %oback2481 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312480, i32 0, i32 0
  %arrayidx2482 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2481, i32 0, i64 %idxprom2477
  %1292 = load i32, i32* %arrayidx2482, align 4
  %1293 = load i32, i32* %dim.addr, align 4
  %idxprom2483 = sext i32 %1293 to i64
  %1294 = load %union.rec*, %union.rec** %y, align 8
  %os12484 = bitcast %union.rec* %1294 to %struct.word_type*
  %ou32485 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12484, i32 0, i32 3
  %os312486 = bitcast %union.THIRD_UNION* %ou32485 to %struct.anon.6*
  %ofwd2487 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312486, i32 0, i32 1
  %arrayidx2488 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2487, i32 0, i64 %idxprom2483
  %1295 = load i32, i32* %arrayidx2488, align 4
  %1296 = load %union.rec*, %union.rec** %g, align 8
  %os52489 = bitcast %union.rec* %1296 to %struct.gapobj_type*
  %ogap2490 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52489, i32 0, i32 3
  %1297 = load i32, i32* %frame_size, align 4
  %1298 = load i32, i32* %mk, align 4
  %1299 = load i32, i32* %back_edge, align 4
  %sub2491 = sub nsw i32 %1298, %1299
  %call2492 = call i32 @ActualGap(i32 %1289, i32 %1292, i32 %1295, %struct.GAP* %ogap2490, i32 %1297, i32 %sub2491)
  %1300 = load i32, i32* %mk, align 4
  %add2493 = add nsw i32 %1300, %call2492
  store i32 %add2493, i32* %mk, align 4
  %1301 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1301, %union.rec** %prev, align 8
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %1302 = load %union.rec*, %union.rec** %link, align 8
  %os12494 = bitcast %union.rec* %1302 to %struct.word_type*
  %olist2495 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12494, i32 0, i32 0
  %arrayidx2496 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2495, i32 0, i64 0
  %osucc2497 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2496, i32 0, i32 1
  %1303 = load %union.rec*, %union.rec** %osucc2497, align 8
  store %union.rec* %1303, %union.rec** %link, align 8
  br label %for.cond.2498

for.cond.2498:                                    ; preds = %for.inc.2577, %if.end.2476
  %1304 = load %union.rec*, %union.rec** %link, align 8
  %1305 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2499 = icmp ne %union.rec* %1304, %1305
  br i1 %cmp2499, label %for.body.2501, label %for.end.2582

for.body.2501:                                    ; preds = %for.cond.2498
  %1306 = load %union.rec*, %union.rec** %link, align 8
  %os12502 = bitcast %union.rec* %1306 to %struct.word_type*
  %olist2503 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12502, i32 0, i32 0
  %arrayidx2504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2503, i32 0, i64 1
  %opred2505 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2504, i32 0, i32 0
  %1307 = load %union.rec*, %union.rec** %opred2505, align 8
  store %union.rec* %1307, %union.rec** %y, align 8
  br label %for.cond.2506

for.cond.2506:                                    ; preds = %for.inc.2515, %for.body.2501
  %1308 = load %union.rec*, %union.rec** %y, align 8
  %os12507 = bitcast %union.rec* %1308 to %struct.word_type*
  %ou12508 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12507, i32 0, i32 1
  %os112509 = bitcast %union.FIRST_UNION* %ou12508 to %struct.anon*
  %otype2510 = getelementptr inbounds %struct.anon, %struct.anon* %os112509, i32 0, i32 0
  %1309 = load i8, i8* %otype2510, align 1
  %conv2511 = zext i8 %1309 to i32
  %cmp2512 = icmp eq i32 %conv2511, 0
  br i1 %cmp2512, label %for.body.2514, label %for.end.2520

for.body.2514:                                    ; preds = %for.cond.2506
  br label %for.inc.2515

for.inc.2515:                                     ; preds = %for.body.2514
  %1310 = load %union.rec*, %union.rec** %y, align 8
  %os12516 = bitcast %union.rec* %1310 to %struct.word_type*
  %olist2517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12516, i32 0, i32 0
  %arrayidx2518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2517, i32 0, i64 1
  %opred2519 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2518, i32 0, i32 0
  %1311 = load %union.rec*, %union.rec** %opred2519, align 8
  store %union.rec* %1311, %union.rec** %y, align 8
  br label %for.cond.2506

for.end.2520:                                     ; preds = %for.cond.2506
  %1312 = load %union.rec*, %union.rec** %y, align 8
  %os12521 = bitcast %union.rec* %1312 to %struct.word_type*
  %ou12522 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12521, i32 0, i32 1
  %os112523 = bitcast %union.FIRST_UNION* %ou12522 to %struct.anon*
  %otype2524 = getelementptr inbounds %struct.anon, %struct.anon* %os112523, i32 0, i32 0
  %1313 = load i8, i8* %otype2524, align 1
  %conv2525 = zext i8 %1313 to i32
  %cmp2526 = icmp eq i32 %conv2525, 1
  br i1 %cmp2526, label %if.then.2528, label %if.else.2540

if.then.2528:                                     ; preds = %for.end.2520
  %1314 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1314, %union.rec** %g, align 8
  %1315 = load i32, i32* %jn, align 4
  %tobool2529 = icmp ne i32 %1315, 0
  br i1 %tobool2529, label %land.rhs.2530, label %land.end.2538

land.rhs.2530:                                    ; preds = %if.then.2528
  %1316 = load %union.rec*, %union.rec** %y, align 8
  %os52531 = bitcast %union.rec* %1316 to %struct.gapobj_type*
  %ogap2532 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52531, i32 0, i32 3
  %1317 = bitcast %struct.GAP* %ogap2532 to i16*
  %bf.load2533 = load i16, i16* %1317, align 4
  %bf.lshr2534 = lshr i16 %bf.load2533, 9
  %bf.clear2535 = and i16 %bf.lshr2534, 1
  %bf.cast2536 = zext i16 %bf.clear2535 to i32
  %tobool2537 = icmp ne i32 %bf.cast2536, 0
  br label %land.end.2538

land.end.2538:                                    ; preds = %land.rhs.2530, %if.then.2528
  %1318 = phi i1 [ false, %if.then.2528 ], [ %tobool2537, %land.rhs.2530 ]
  %land.ext2539 = zext i1 %1318 to i32
  store i32 %land.ext2539, i32* %jn, align 4
  br label %if.end.2576

if.else.2540:                                     ; preds = %for.end.2520
  %1319 = load %union.rec*, %union.rec** %y, align 8
  %os12541 = bitcast %union.rec* %1319 to %struct.word_type*
  %ou12542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12541, i32 0, i32 1
  %os112543 = bitcast %union.FIRST_UNION* %ou12542 to %struct.anon*
  %otype2544 = getelementptr inbounds %struct.anon, %struct.anon* %os112543, i32 0, i32 0
  %1320 = load i8, i8* %otype2544, align 1
  %conv2545 = zext i8 %1320 to i32
  %cmp2546 = icmp eq i32 %conv2545, 9
  br i1 %cmp2546, label %cond.true.2548, label %cond.false.2551

cond.true.2548:                                   ; preds = %if.else.2540
  %1321 = load %union.rec*, %union.rec** %y, align 8
  %call2549 = call i32 @SplitIsDefinite(%union.rec* %1321)
  %tobool2550 = icmp ne i32 %call2549, 0
  br i1 %tobool2550, label %if.then.2569, label %if.end.2575

cond.false.2551:                                  ; preds = %if.else.2540
  %1322 = load %union.rec*, %union.rec** %y, align 8
  %os12552 = bitcast %union.rec* %1322 to %struct.word_type*
  %ou12553 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12552, i32 0, i32 1
  %os112554 = bitcast %union.FIRST_UNION* %ou12553 to %struct.anon*
  %otype2555 = getelementptr inbounds %struct.anon, %struct.anon* %os112554, i32 0, i32 0
  %1323 = load i8, i8* %otype2555, align 1
  %conv2556 = zext i8 %1323 to i32
  %cmp2557 = icmp sge i32 %conv2556, 9
  br i1 %cmp2557, label %land.rhs.2559, label %land.end.2567

land.rhs.2559:                                    ; preds = %cond.false.2551
  %1324 = load %union.rec*, %union.rec** %y, align 8
  %os12560 = bitcast %union.rec* %1324 to %struct.word_type*
  %ou12561 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12560, i32 0, i32 1
  %os112562 = bitcast %union.FIRST_UNION* %ou12561 to %struct.anon*
  %otype2563 = getelementptr inbounds %struct.anon, %struct.anon* %os112562, i32 0, i32 0
  %1325 = load i8, i8* %otype2563, align 1
  %conv2564 = zext i8 %1325 to i32
  %cmp2565 = icmp sle i32 %conv2564, 99
  br label %land.end.2567

land.end.2567:                                    ; preds = %land.rhs.2559, %cond.false.2551
  %1326 = phi i1 [ false, %cond.false.2551 ], [ %cmp2565, %land.rhs.2559 ]
  br i1 %1326, label %if.then.2569, label %if.end.2575

if.then.2569:                                     ; preds = %land.end.2567, %cond.true.2548
  %1327 = load %union.rec*, %union.rec** %g, align 8
  %cmp2570 = icmp ne %union.rec* %1327, null
  br i1 %cmp2570, label %if.end.2574, label %if.then.2572

if.then.2572:                                     ; preds = %if.then.2569
  %1328 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2573 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1328, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.2574

if.end.2574:                                      ; preds = %if.then.2572, %if.then.2569
  br label %for.end.2582

if.end.2575:                                      ; preds = %land.end.2567, %cond.true.2548
  br label %if.end.2576

if.end.2576:                                      ; preds = %if.end.2575, %land.end.2538
  br label %for.inc.2577

for.inc.2577:                                     ; preds = %if.end.2576
  %1329 = load %union.rec*, %union.rec** %link, align 8
  %os12578 = bitcast %union.rec* %1329 to %struct.word_type*
  %olist2579 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12578, i32 0, i32 0
  %arrayidx2580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2579, i32 0, i64 0
  %osucc2581 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2580, i32 0, i32 1
  %1330 = load %union.rec*, %union.rec** %osucc2581, align 8
  store %union.rec* %1330, %union.rec** %link, align 8
  br label %for.cond.2498

for.end.2582:                                     ; preds = %if.end.2574, %for.cond.2498
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1331 = load i32, i32* %suppress.addr, align 4
  %tobool2583 = icmp ne i32 %1331, 0
  br i1 %tobool2583, label %if.then.2584, label %if.else.2598

if.then.2584:                                     ; preds = %while.end
  %1332 = load %union.rec*, %union.rec** %prev, align 8
  %1333 = load i32, i32* %mk, align 4
  %1334 = load i32, i32* %dim.addr, align 4
  %idxprom2585 = sext i32 %1334 to i64
  %1335 = load %union.rec*, %union.rec** %prev, align 8
  %os12586 = bitcast %union.rec* %1335 to %struct.word_type*
  %ou32587 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12586, i32 0, i32 3
  %os312588 = bitcast %union.THIRD_UNION* %ou32587 to %struct.anon.6*
  %oback2589 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312588, i32 0, i32 0
  %arrayidx2590 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2589, i32 0, i64 %idxprom2585
  %1336 = load i32, i32* %arrayidx2590, align 4
  %1337 = load i32, i32* %dim.addr, align 4
  %idxprom2591 = sext i32 %1337 to i64
  %1338 = load %union.rec*, %union.rec** %prev, align 8
  %os12592 = bitcast %union.rec* %1338 to %struct.word_type*
  %ou32593 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12592, i32 0, i32 3
  %os312594 = bitcast %union.THIRD_UNION* %ou32593 to %struct.anon.6*
  %ofwd2595 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312594, i32 0, i32 1
  %arrayidx2596 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2595, i32 0, i64 %idxprom2591
  %1339 = load i32, i32* %arrayidx2596, align 4
  %1340 = load i32, i32* %dim.addr, align 4
  %1341 = load i32, i32* %pg.addr, align 4
  %1342 = load i32, i32* %count.addr, align 4
  %call2597 = call %union.rec* @FixAndPrintObject(%union.rec* %1332, i32 %1333, i32 %1336, i32 %1339, i32 %1340, i32 0, i32 %1341, i32 %1342, i32* %aback, i32* %afwd)
  store %union.rec* %call2597, %union.rec** %prev, align 8
  br label %if.end.2628

if.else.2598:                                     ; preds = %while.end
  %1343 = load %union.rec*, %union.rec** %prev, align 8
  %1344 = load i32, i32* %mk, align 4
  %1345 = load i32, i32* %dim.addr, align 4
  %idxprom2599 = sext i32 %1345 to i64
  %1346 = load %union.rec*, %union.rec** %prev, align 8
  %os12600 = bitcast %union.rec* %1346 to %struct.word_type*
  %ou32601 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12600, i32 0, i32 3
  %os312602 = bitcast %union.THIRD_UNION* %ou32601 to %struct.anon.6*
  %oback2603 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312602, i32 0, i32 0
  %arrayidx2604 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2603, i32 0, i64 %idxprom2599
  %1347 = load i32, i32* %arrayidx2604, align 4
  %1348 = load i32, i32* %dim.addr, align 4
  %idxprom2605 = sext i32 %1348 to i64
  %1349 = load %union.rec*, %union.rec** %prev, align 8
  %os12606 = bitcast %union.rec* %1349 to %struct.word_type*
  %ou32607 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12606, i32 0, i32 3
  %os312608 = bitcast %union.THIRD_UNION* %ou32607 to %struct.anon.6*
  %ofwd2609 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312608, i32 0, i32 1
  %arrayidx2610 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2609, i32 0, i64 %idxprom2605
  %1350 = load i32, i32* %arrayidx2610, align 4
  %1351 = load i32, i32* %xmk.addr, align 4
  %1352 = load i32, i32* %xf.addr, align 4
  %add2611 = add nsw i32 %1351, %1352
  %1353 = load i32, i32* %mk, align 4
  %sub2612 = sub nsw i32 %add2611, %1353
  %cmp2613 = icmp slt i32 %1350, %sub2612
  br i1 %cmp2613, label %cond.true.2615, label %cond.false.2618

cond.true.2615:                                   ; preds = %if.else.2598
  %1354 = load i32, i32* %xmk.addr, align 4
  %1355 = load i32, i32* %xf.addr, align 4
  %add2616 = add nsw i32 %1354, %1355
  %1356 = load i32, i32* %mk, align 4
  %sub2617 = sub nsw i32 %add2616, %1356
  br label %cond.end.2625

cond.false.2618:                                  ; preds = %if.else.2598
  %1357 = load i32, i32* %dim.addr, align 4
  %idxprom2619 = sext i32 %1357 to i64
  %1358 = load %union.rec*, %union.rec** %prev, align 8
  %os12620 = bitcast %union.rec* %1358 to %struct.word_type*
  %ou32621 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12620, i32 0, i32 3
  %os312622 = bitcast %union.THIRD_UNION* %ou32621 to %struct.anon.6*
  %ofwd2623 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312622, i32 0, i32 1
  %arrayidx2624 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2623, i32 0, i64 %idxprom2619
  %1359 = load i32, i32* %arrayidx2624, align 4
  br label %cond.end.2625

cond.end.2625:                                    ; preds = %cond.false.2618, %cond.true.2615
  %cond2626 = phi i32 [ %sub2617, %cond.true.2615 ], [ %1359, %cond.false.2618 ]
  %1360 = load i32, i32* %dim.addr, align 4
  %1361 = load i32, i32* %pg.addr, align 4
  %1362 = load i32, i32* %count.addr, align 4
  %call2627 = call %union.rec* @FixAndPrintObject(%union.rec* %1343, i32 %1344, i32 %1347, i32 %cond2626, i32 %1360, i32 0, i32 %1361, i32 %1362, i32* %aback, i32* %afwd)
  store %union.rec* %call2627, %union.rec** %prev, align 8
  br label %if.end.2628

if.end.2628:                                      ; preds = %cond.end.2625, %if.then.2584
  %1363 = load i32, i32* %dim.addr, align 4
  %idxprom2629 = sext i32 %1363 to i64
  %1364 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12630 = bitcast %union.rec* %1364 to %struct.word_type*
  %ou32631 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12630, i32 0, i32 3
  %os312632 = bitcast %union.THIRD_UNION* %ou32631 to %struct.anon.6*
  %oback2633 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312632, i32 0, i32 0
  %arrayidx2634 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2633, i32 0, i64 %idxprom2629
  %1365 = load i32, i32* %arrayidx2634, align 4
  %1366 = load i32, i32* %xb.addr, align 4
  %cmp2635 = icmp slt i32 %1365, %1366
  br i1 %cmp2635, label %cond.true.2637, label %cond.false.2638

cond.true.2637:                                   ; preds = %if.end.2628
  %1367 = load i32, i32* %xb.addr, align 4
  br label %cond.end.2645

cond.false.2638:                                  ; preds = %if.end.2628
  %1368 = load i32, i32* %dim.addr, align 4
  %idxprom2639 = sext i32 %1368 to i64
  %1369 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12640 = bitcast %union.rec* %1369 to %struct.word_type*
  %ou32641 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12640, i32 0, i32 3
  %os312642 = bitcast %union.THIRD_UNION* %ou32641 to %struct.anon.6*
  %oback2643 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312642, i32 0, i32 0
  %arrayidx2644 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2643, i32 0, i64 %idxprom2639
  %1370 = load i32, i32* %arrayidx2644, align 4
  br label %cond.end.2645

cond.end.2645:                                    ; preds = %cond.false.2638, %cond.true.2637
  %cond2646 = phi i32 [ %1367, %cond.true.2637 ], [ %1370, %cond.false.2638 ]
  %1371 = load i32*, i32** %actual_back.addr, align 8
  store i32 %cond2646, i32* %1371, align 4
  %1372 = load i32, i32* %mk, align 4
  %1373 = load i32, i32* %dim.addr, align 4
  %idxprom2647 = sext i32 %1373 to i64
  %1374 = load %union.rec*, %union.rec** %prev, align 8
  %os12648 = bitcast %union.rec* %1374 to %struct.word_type*
  %ou32649 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12648, i32 0, i32 3
  %os312650 = bitcast %union.THIRD_UNION* %ou32649 to %struct.anon.6*
  %ofwd2651 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312650, i32 0, i32 1
  %arrayidx2652 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2651, i32 0, i64 %idxprom2647
  %1375 = load i32, i32* %arrayidx2652, align 4
  %add2653 = add nsw i32 %1372, %1375
  %1376 = load i32, i32* %back_edge, align 4
  %sub2654 = sub nsw i32 %add2653, %1376
  %1377 = load i32*, i32** %actual_back.addr, align 8
  %1378 = load i32, i32* %1377, align 4
  %sub2655 = sub nsw i32 %sub2654, %1378
  %1379 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %sub2655, i32* %1379, align 4
  br label %if.end.2657

if.else.2656:                                     ; preds = %for.end.2020
  %1380 = load i32, i32* %xb.addr, align 4
  %1381 = load i32*, i32** %actual_back.addr, align 8
  store i32 %1380, i32* %1381, align 4
  %1382 = load i32, i32* %xf.addr, align 4
  %1383 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %1382, i32* %1383, align 4
  br label %if.end.2657

if.end.2657:                                      ; preds = %if.else.2656, %cond.end.2645
  br label %if.end.3318

if.else.2658:                                     ; preds = %sw.bb.1930
  store %union.rec* null, %union.rec** %start_group, align 8
  store i32 0, i32* %dble_found, align 4
  store i32 0, i32* %dlen, align 4
  store i32 1, i32* %jn, align 4
  %1384 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12667 = bitcast %union.rec* %1384 to %struct.word_type*
  %olist2668 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12667, i32 0, i32 0
  %arrayidx2669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2668, i32 0, i64 0
  %osucc2670 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2669, i32 0, i32 1
  %1385 = load %union.rec*, %union.rec** %osucc2670, align 8
  store %union.rec* %1385, %union.rec** %link, align 8
  br label %for.cond.2671

for.cond.2671:                                    ; preds = %for.inc.2745, %if.else.2658
  %1386 = load %union.rec*, %union.rec** %link, align 8
  %1387 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2672 = icmp ne %union.rec* %1386, %1387
  br i1 %cmp2672, label %for.body.2674, label %for.end.2750

for.body.2674:                                    ; preds = %for.cond.2671
  %1388 = load %union.rec*, %union.rec** %link, align 8
  %os12675 = bitcast %union.rec* %1388 to %struct.word_type*
  %olist2676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12675, i32 0, i32 0
  %arrayidx2677 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2676, i32 0, i64 1
  %opred2678 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2677, i32 0, i32 0
  %1389 = load %union.rec*, %union.rec** %opred2678, align 8
  store %union.rec* %1389, %union.rec** %y, align 8
  br label %for.cond.2679

for.cond.2679:                                    ; preds = %for.inc.2688, %for.body.2674
  %1390 = load %union.rec*, %union.rec** %y, align 8
  %os12680 = bitcast %union.rec* %1390 to %struct.word_type*
  %ou12681 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12680, i32 0, i32 1
  %os112682 = bitcast %union.FIRST_UNION* %ou12681 to %struct.anon*
  %otype2683 = getelementptr inbounds %struct.anon, %struct.anon* %os112682, i32 0, i32 0
  %1391 = load i8, i8* %otype2683, align 1
  %conv2684 = zext i8 %1391 to i32
  %cmp2685 = icmp eq i32 %conv2684, 0
  br i1 %cmp2685, label %for.body.2687, label %for.end.2693

for.body.2687:                                    ; preds = %for.cond.2679
  br label %for.inc.2688

for.inc.2688:                                     ; preds = %for.body.2687
  %1392 = load %union.rec*, %union.rec** %y, align 8
  %os12689 = bitcast %union.rec* %1392 to %struct.word_type*
  %olist2690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12689, i32 0, i32 0
  %arrayidx2691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2690, i32 0, i64 1
  %opred2692 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2691, i32 0, i32 0
  %1393 = load %union.rec*, %union.rec** %opred2692, align 8
  store %union.rec* %1393, %union.rec** %y, align 8
  br label %for.cond.2679

for.end.2693:                                     ; preds = %for.cond.2679
  %1394 = load %union.rec*, %union.rec** %y, align 8
  %os12694 = bitcast %union.rec* %1394 to %struct.word_type*
  %ou12695 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12694, i32 0, i32 1
  %os112696 = bitcast %union.FIRST_UNION* %ou12695 to %struct.anon*
  %otype2697 = getelementptr inbounds %struct.anon, %struct.anon* %os112696, i32 0, i32 0
  %1395 = load i8, i8* %otype2697, align 1
  %conv2698 = zext i8 %1395 to i32
  %cmp2699 = icmp eq i32 %conv2698, 1
  br i1 %cmp2699, label %if.then.2701, label %if.else.2713

if.then.2701:                                     ; preds = %for.end.2693
  %1396 = load i32, i32* %jn, align 4
  %tobool2702 = icmp ne i32 %1396, 0
  br i1 %tobool2702, label %land.rhs.2703, label %land.end.2711

land.rhs.2703:                                    ; preds = %if.then.2701
  %1397 = load %union.rec*, %union.rec** %y, align 8
  %os52704 = bitcast %union.rec* %1397 to %struct.gapobj_type*
  %ogap2705 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52704, i32 0, i32 3
  %1398 = bitcast %struct.GAP* %ogap2705 to i16*
  %bf.load2706 = load i16, i16* %1398, align 4
  %bf.lshr2707 = lshr i16 %bf.load2706, 9
  %bf.clear2708 = and i16 %bf.lshr2707, 1
  %bf.cast2709 = zext i16 %bf.clear2708 to i32
  %tobool2710 = icmp ne i32 %bf.cast2709, 0
  br label %land.end.2711

land.end.2711:                                    ; preds = %land.rhs.2703, %if.then.2701
  %1399 = phi i1 [ false, %if.then.2701 ], [ %tobool2710, %land.rhs.2703 ]
  %land.ext2712 = zext i1 %1399 to i32
  store i32 %land.ext2712, i32* %jn, align 4
  br label %if.end.2744

if.else.2713:                                     ; preds = %for.end.2693
  %1400 = load %union.rec*, %union.rec** %y, align 8
  %os12714 = bitcast %union.rec* %1400 to %struct.word_type*
  %ou12715 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12714, i32 0, i32 1
  %os112716 = bitcast %union.FIRST_UNION* %ou12715 to %struct.anon*
  %otype2717 = getelementptr inbounds %struct.anon, %struct.anon* %os112716, i32 0, i32 0
  %1401 = load i8, i8* %otype2717, align 1
  %conv2718 = zext i8 %1401 to i32
  %cmp2719 = icmp eq i32 %conv2718, 9
  br i1 %cmp2719, label %cond.true.2721, label %cond.false.2724

cond.true.2721:                                   ; preds = %if.else.2713
  %1402 = load %union.rec*, %union.rec** %y, align 8
  %call2722 = call i32 @SplitIsDefinite(%union.rec* %1402)
  %tobool2723 = icmp ne i32 %call2722, 0
  br i1 %tobool2723, label %if.then.2742, label %if.end.2743

cond.false.2724:                                  ; preds = %if.else.2713
  %1403 = load %union.rec*, %union.rec** %y, align 8
  %os12725 = bitcast %union.rec* %1403 to %struct.word_type*
  %ou12726 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12725, i32 0, i32 1
  %os112727 = bitcast %union.FIRST_UNION* %ou12726 to %struct.anon*
  %otype2728 = getelementptr inbounds %struct.anon, %struct.anon* %os112727, i32 0, i32 0
  %1404 = load i8, i8* %otype2728, align 1
  %conv2729 = zext i8 %1404 to i32
  %cmp2730 = icmp sge i32 %conv2729, 9
  br i1 %cmp2730, label %land.rhs.2732, label %land.end.2740

land.rhs.2732:                                    ; preds = %cond.false.2724
  %1405 = load %union.rec*, %union.rec** %y, align 8
  %os12733 = bitcast %union.rec* %1405 to %struct.word_type*
  %ou12734 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12733, i32 0, i32 1
  %os112735 = bitcast %union.FIRST_UNION* %ou12734 to %struct.anon*
  %otype2736 = getelementptr inbounds %struct.anon, %struct.anon* %os112735, i32 0, i32 0
  %1406 = load i8, i8* %otype2736, align 1
  %conv2737 = zext i8 %1406 to i32
  %cmp2738 = icmp sle i32 %conv2737, 99
  br label %land.end.2740

land.end.2740:                                    ; preds = %land.rhs.2732, %cond.false.2724
  %1407 = phi i1 [ false, %cond.false.2724 ], [ %cmp2738, %land.rhs.2732 ]
  br i1 %1407, label %if.then.2742, label %if.end.2743

if.then.2742:                                     ; preds = %land.end.2740, %cond.true.2721
  br label %for.end.2750

if.end.2743:                                      ; preds = %land.end.2740, %cond.true.2721
  br label %if.end.2744

if.end.2744:                                      ; preds = %if.end.2743, %land.end.2711
  br label %for.inc.2745

for.inc.2745:                                     ; preds = %if.end.2744
  %1408 = load %union.rec*, %union.rec** %link, align 8
  %os12746 = bitcast %union.rec* %1408 to %struct.word_type*
  %olist2747 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12746, i32 0, i32 0
  %arrayidx2748 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2747, i32 0, i64 0
  %osucc2749 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2748, i32 0, i32 1
  %1409 = load %union.rec*, %union.rec** %osucc2749, align 8
  store %union.rec* %1409, %union.rec** %link, align 8
  br label %for.cond.2671

for.end.2750:                                     ; preds = %if.then.2742, %for.cond.2671
  %1410 = load %union.rec*, %union.rec** %link, align 8
  %1411 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2751 = icmp ne %union.rec* %1410, %1411
  br i1 %cmp2751, label %if.then.2753, label %if.end.3317

if.then.2753:                                     ; preds = %for.end.2750
  %1412 = load i32, i32* %dim.addr, align 4
  %idxprom2754 = sext i32 %1412 to i64
  %1413 = load %union.rec*, %union.rec** %y, align 8
  %os12755 = bitcast %union.rec* %1413 to %struct.word_type*
  %ou32756 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12755, i32 0, i32 3
  %os312757 = bitcast %union.THIRD_UNION* %ou32756 to %struct.anon.6*
  %oback2758 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312757, i32 0, i32 0
  %arrayidx2759 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2758, i32 0, i64 %idxprom2754
  %1414 = load i32, i32* %arrayidx2759, align 4
  store i32 %1414, i32* %b, align 4
  %1415 = load i32, i32* %dim.addr, align 4
  %idxprom2760 = sext i32 %1415 to i64
  %1416 = load %union.rec*, %union.rec** %y, align 8
  %os12761 = bitcast %union.rec* %1416 to %struct.word_type*
  %ou32762 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12761, i32 0, i32 3
  %os312763 = bitcast %union.THIRD_UNION* %ou32762 to %struct.anon.6*
  %ofwd2764 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312763, i32 0, i32 1
  %arrayidx2765 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2764, i32 0, i64 %idxprom2760
  %1417 = load i32, i32* %arrayidx2765, align 4
  store i32 %1417, i32* %f2665, align 4
  %1418 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1418, %union.rec** %m, align 8
  %1419 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %1419, %union.rec** %start_group, align 8
  %1420 = load i32, i32* %jn, align 4
  %tobool2766 = icmp ne i32 %1420, 0
  %lnot = xor i1 %tobool2766, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %dble_found, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %1421 = load %union.rec*, %union.rec** %link, align 8
  %os12767 = bitcast %union.rec* %1421 to %struct.word_type*
  %olist2768 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12767, i32 0, i32 0
  %arrayidx2769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2768, i32 0, i64 0
  %osucc2770 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2769, i32 0, i32 1
  %1422 = load %union.rec*, %union.rec** %osucc2770, align 8
  store %union.rec* %1422, %union.rec** %link, align 8
  br label %for.cond.2771

for.cond.2771:                                    ; preds = %for.inc.2850, %if.then.2753
  %1423 = load %union.rec*, %union.rec** %link, align 8
  %1424 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2772 = icmp ne %union.rec* %1423, %1424
  br i1 %cmp2772, label %for.body.2774, label %for.end.2855

for.body.2774:                                    ; preds = %for.cond.2771
  %1425 = load %union.rec*, %union.rec** %link, align 8
  %os12775 = bitcast %union.rec* %1425 to %struct.word_type*
  %olist2776 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12775, i32 0, i32 0
  %arrayidx2777 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2776, i32 0, i64 1
  %opred2778 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2777, i32 0, i32 0
  %1426 = load %union.rec*, %union.rec** %opred2778, align 8
  store %union.rec* %1426, %union.rec** %y, align 8
  br label %for.cond.2779

for.cond.2779:                                    ; preds = %for.inc.2788, %for.body.2774
  %1427 = load %union.rec*, %union.rec** %y, align 8
  %os12780 = bitcast %union.rec* %1427 to %struct.word_type*
  %ou12781 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12780, i32 0, i32 1
  %os112782 = bitcast %union.FIRST_UNION* %ou12781 to %struct.anon*
  %otype2783 = getelementptr inbounds %struct.anon, %struct.anon* %os112782, i32 0, i32 0
  %1428 = load i8, i8* %otype2783, align 1
  %conv2784 = zext i8 %1428 to i32
  %cmp2785 = icmp eq i32 %conv2784, 0
  br i1 %cmp2785, label %for.body.2787, label %for.end.2793

for.body.2787:                                    ; preds = %for.cond.2779
  br label %for.inc.2788

for.inc.2788:                                     ; preds = %for.body.2787
  %1429 = load %union.rec*, %union.rec** %y, align 8
  %os12789 = bitcast %union.rec* %1429 to %struct.word_type*
  %olist2790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12789, i32 0, i32 0
  %arrayidx2791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2790, i32 0, i64 1
  %opred2792 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2791, i32 0, i32 0
  %1430 = load %union.rec*, %union.rec** %opred2792, align 8
  store %union.rec* %1430, %union.rec** %y, align 8
  br label %for.cond.2779

for.end.2793:                                     ; preds = %for.cond.2779
  %1431 = load %union.rec*, %union.rec** %y, align 8
  %os12794 = bitcast %union.rec* %1431 to %struct.word_type*
  %ou12795 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12794, i32 0, i32 1
  %os112796 = bitcast %union.FIRST_UNION* %ou12795 to %struct.anon*
  %otype2797 = getelementptr inbounds %struct.anon, %struct.anon* %os112796, i32 0, i32 0
  %1432 = load i8, i8* %otype2797, align 1
  %conv2798 = zext i8 %1432 to i32
  %cmp2799 = icmp eq i32 %conv2798, 1
  br i1 %cmp2799, label %if.then.2801, label %if.else.2813

if.then.2801:                                     ; preds = %for.end.2793
  %1433 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1433, %union.rec** %g, align 8
  %1434 = load i32, i32* %jn, align 4
  %tobool2802 = icmp ne i32 %1434, 0
  br i1 %tobool2802, label %land.rhs.2803, label %land.end.2811

land.rhs.2803:                                    ; preds = %if.then.2801
  %1435 = load %union.rec*, %union.rec** %y, align 8
  %os52804 = bitcast %union.rec* %1435 to %struct.gapobj_type*
  %ogap2805 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os52804, i32 0, i32 3
  %1436 = bitcast %struct.GAP* %ogap2805 to i16*
  %bf.load2806 = load i16, i16* %1436, align 4
  %bf.lshr2807 = lshr i16 %bf.load2806, 9
  %bf.clear2808 = and i16 %bf.lshr2807, 1
  %bf.cast2809 = zext i16 %bf.clear2808 to i32
  %tobool2810 = icmp ne i32 %bf.cast2809, 0
  br label %land.end.2811

land.end.2811:                                    ; preds = %land.rhs.2803, %if.then.2801
  %1437 = phi i1 [ false, %if.then.2801 ], [ %tobool2810, %land.rhs.2803 ]
  %land.ext2812 = zext i1 %1437 to i32
  store i32 %land.ext2812, i32* %jn, align 4
  br label %if.end.2849

if.else.2813:                                     ; preds = %for.end.2793
  %1438 = load %union.rec*, %union.rec** %y, align 8
  %os12814 = bitcast %union.rec* %1438 to %struct.word_type*
  %ou12815 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12814, i32 0, i32 1
  %os112816 = bitcast %union.FIRST_UNION* %ou12815 to %struct.anon*
  %otype2817 = getelementptr inbounds %struct.anon, %struct.anon* %os112816, i32 0, i32 0
  %1439 = load i8, i8* %otype2817, align 1
  %conv2818 = zext i8 %1439 to i32
  %cmp2819 = icmp eq i32 %conv2818, 9
  br i1 %cmp2819, label %cond.true.2821, label %cond.false.2824

cond.true.2821:                                   ; preds = %if.else.2813
  %1440 = load %union.rec*, %union.rec** %y, align 8
  %call2822 = call i32 @SplitIsDefinite(%union.rec* %1440)
  %tobool2823 = icmp ne i32 %call2822, 0
  br i1 %tobool2823, label %if.then.2842, label %if.end.2848

cond.false.2824:                                  ; preds = %if.else.2813
  %1441 = load %union.rec*, %union.rec** %y, align 8
  %os12825 = bitcast %union.rec* %1441 to %struct.word_type*
  %ou12826 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12825, i32 0, i32 1
  %os112827 = bitcast %union.FIRST_UNION* %ou12826 to %struct.anon*
  %otype2828 = getelementptr inbounds %struct.anon, %struct.anon* %os112827, i32 0, i32 0
  %1442 = load i8, i8* %otype2828, align 1
  %conv2829 = zext i8 %1442 to i32
  %cmp2830 = icmp sge i32 %conv2829, 9
  br i1 %cmp2830, label %land.rhs.2832, label %land.end.2840

land.rhs.2832:                                    ; preds = %cond.false.2824
  %1443 = load %union.rec*, %union.rec** %y, align 8
  %os12833 = bitcast %union.rec* %1443 to %struct.word_type*
  %ou12834 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12833, i32 0, i32 1
  %os112835 = bitcast %union.FIRST_UNION* %ou12834 to %struct.anon*
  %otype2836 = getelementptr inbounds %struct.anon, %struct.anon* %os112835, i32 0, i32 0
  %1444 = load i8, i8* %otype2836, align 1
  %conv2837 = zext i8 %1444 to i32
  %cmp2838 = icmp sle i32 %conv2837, 99
  br label %land.end.2840

land.end.2840:                                    ; preds = %land.rhs.2832, %cond.false.2824
  %1445 = phi i1 [ false, %cond.false.2824 ], [ %cmp2838, %land.rhs.2832 ]
  br i1 %1445, label %if.then.2842, label %if.end.2848

if.then.2842:                                     ; preds = %land.end.2840, %cond.true.2821
  %1446 = load %union.rec*, %union.rec** %g, align 8
  %cmp2843 = icmp ne %union.rec* %1446, null
  br i1 %cmp2843, label %if.end.2847, label %if.then.2845

if.then.2845:                                     ; preds = %if.then.2842
  %1447 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2846 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1447, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.2847

if.end.2847:                                      ; preds = %if.then.2845, %if.then.2842
  br label %for.end.2855

if.end.2848:                                      ; preds = %land.end.2840, %cond.true.2821
  br label %if.end.2849

if.end.2849:                                      ; preds = %if.end.2848, %land.end.2811
  br label %for.inc.2850

for.inc.2850:                                     ; preds = %if.end.2849
  %1448 = load %union.rec*, %union.rec** %link, align 8
  %os12851 = bitcast %union.rec* %1448 to %struct.word_type*
  %olist2852 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12851, i32 0, i32 0
  %arrayidx2853 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2852, i32 0, i64 0
  %osucc2854 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2853, i32 0, i32 1
  %1449 = load %union.rec*, %union.rec** %osucc2854, align 8
  store %union.rec* %1449, %union.rec** %link, align 8
  br label %for.cond.2771

for.end.2855:                                     ; preds = %if.end.2847, %for.cond.2771
  br label %while.cond.2856

while.cond.2856:                                  ; preds = %for.end.3128, %for.end.2855
  %1450 = load %union.rec*, %union.rec** %link, align 8
  %1451 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp2857 = icmp ne %union.rec* %1450, %1451
  br i1 %cmp2857, label %while.body.2859, label %while.end.3129

while.body.2859:                                  ; preds = %while.cond.2856
  %1452 = load i32, i32* %jn, align 4
  %tobool2860 = icmp ne i32 %1452, 0
  br i1 %tobool2860, label %if.else.2986, label %if.then.2861

if.then.2861:                                     ; preds = %while.body.2859
  %1453 = load %union.rec*, %union.rec** %m, align 8
  %1454 = load i32, i32* %xmk.addr, align 4
  %1455 = load i32, i32* %b, align 4
  %add2862 = add nsw i32 %1454, %1455
  %1456 = load i32, i32* %b, align 4
  %1457 = load i32, i32* %xf.addr, align 4
  %1458 = load i32, i32* %b, align 4
  %sub2863 = sub nsw i32 %1457, %1458
  %1459 = load i32, i32* %dim.addr, align 4
  %1460 = load i32, i32* %pg.addr, align 4
  %1461 = load i32, i32* %count.addr, align 4
  %call2864 = call %union.rec* @FixAndPrintObject(%union.rec* %1453, i32 %add2862, i32 %1456, i32 %sub2863, i32 %1459, i32 0, i32 %1460, i32 %1461, i32* %aback, i32* %afwd)
  store %union.rec* %call2864, %union.rec** %m, align 8
  %1462 = load i32, i32* %dim.addr, align 4
  %idxprom2865 = sext i32 %1462 to i64
  %1463 = load %union.rec*, %union.rec** %m, align 8
  %os12866 = bitcast %union.rec* %1463 to %struct.word_type*
  %ou32867 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12866, i32 0, i32 3
  %os312868 = bitcast %union.THIRD_UNION* %ou32867 to %struct.anon.6*
  %oback2869 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312868, i32 0, i32 0
  %arrayidx2870 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2869, i32 0, i64 %idxprom2865
  %1464 = load i32, i32* %arrayidx2870, align 4
  store i32 %1464, i32* %b, align 4
  %1465 = load i32, i32* %dim.addr, align 4
  %idxprom2871 = sext i32 %1465 to i64
  %1466 = load %union.rec*, %union.rec** %m, align 8
  %os12872 = bitcast %union.rec* %1466 to %struct.word_type*
  %ou32873 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12872, i32 0, i32 3
  %os312874 = bitcast %union.THIRD_UNION* %ou32873 to %struct.anon.6*
  %ofwd2875 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312874, i32 0, i32 1
  %arrayidx2876 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2875, i32 0, i64 %idxprom2871
  %1467 = load i32, i32* %arrayidx2876, align 4
  store i32 %1467, i32* %f2665, align 4
  %1468 = load %union.rec*, %union.rec** %start_group, align 8
  store %union.rec* %1468, %union.rec** %zlink, align 8
  br label %for.cond.2877

for.cond.2877:                                    ; preds = %for.inc.2960, %if.then.2861
  %1469 = load %union.rec*, %union.rec** %zlink, align 8
  %1470 = load %union.rec*, %union.rec** %link, align 8
  %cmp2878 = icmp ne %union.rec* %1469, %1470
  br i1 %cmp2878, label %for.body.2880, label %for.end.2965

for.body.2880:                                    ; preds = %for.cond.2877
  %1471 = load %union.rec*, %union.rec** %zlink, align 8
  %os12881 = bitcast %union.rec* %1471 to %struct.word_type*
  %olist2882 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12881, i32 0, i32 0
  %arrayidx2883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2882, i32 0, i64 1
  %opred2884 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2883, i32 0, i32 0
  %1472 = load %union.rec*, %union.rec** %opred2884, align 8
  store %union.rec* %1472, %union.rec** %z, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.2885

for.cond.2885:                                    ; preds = %for.inc.2894, %for.body.2880
  %1473 = load %union.rec*, %union.rec** %z, align 8
  %os12886 = bitcast %union.rec* %1473 to %struct.word_type*
  %ou12887 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12886, i32 0, i32 1
  %os112888 = bitcast %union.FIRST_UNION* %ou12887 to %struct.anon*
  %otype2889 = getelementptr inbounds %struct.anon, %struct.anon* %os112888, i32 0, i32 0
  %1474 = load i8, i8* %otype2889, align 1
  %conv2890 = zext i8 %1474 to i32
  %cmp2891 = icmp eq i32 %conv2890, 0
  br i1 %cmp2891, label %for.body.2893, label %for.end.2900

for.body.2893:                                    ; preds = %for.cond.2885
  br label %for.inc.2894

for.inc.2894:                                     ; preds = %for.body.2893
  %1475 = load %union.rec*, %union.rec** %z, align 8
  %os12895 = bitcast %union.rec* %1475 to %struct.word_type*
  %olist2896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12895, i32 0, i32 0
  %arrayidx2897 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2896, i32 0, i64 1
  %opred2898 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2897, i32 0, i32 0
  %1476 = load %union.rec*, %union.rec** %opred2898, align 8
  store %union.rec* %1476, %union.rec** %z, align 8
  %1477 = load i32, i32* %count.addr, align 4
  %inc2899 = add nsw i32 %1477, 1
  store i32 %inc2899, i32* %count.addr, align 4
  br label %for.cond.2885

for.end.2900:                                     ; preds = %for.cond.2885
  %1478 = load %union.rec*, %union.rec** %z, align 8
  %os12901 = bitcast %union.rec* %1478 to %struct.word_type*
  %ou12902 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12901, i32 0, i32 1
  %os112903 = bitcast %union.FIRST_UNION* %ou12902 to %struct.anon*
  %otype2904 = getelementptr inbounds %struct.anon, %struct.anon* %os112903, i32 0, i32 0
  %1479 = load i8, i8* %otype2904, align 1
  %conv2905 = zext i8 %1479 to i32
  %cmp2906 = icmp sge i32 %conv2905, 9
  br i1 %cmp2906, label %land.lhs.true.2908, label %if.then.2919

land.lhs.true.2908:                               ; preds = %for.end.2900
  %1480 = load %union.rec*, %union.rec** %z, align 8
  %os12909 = bitcast %union.rec* %1480 to %struct.word_type*
  %ou12910 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12909, i32 0, i32 1
  %os112911 = bitcast %union.FIRST_UNION* %ou12910 to %struct.anon*
  %otype2912 = getelementptr inbounds %struct.anon, %struct.anon* %os112911, i32 0, i32 0
  %1481 = load i8, i8* %otype2912, align 1
  %conv2913 = zext i8 %1481 to i32
  %cmp2914 = icmp sle i32 %conv2913, 99
  br i1 %cmp2914, label %lor.lhs.false.2916, label %if.then.2919

lor.lhs.false.2916:                               ; preds = %land.lhs.true.2908
  %1482 = load %union.rec*, %union.rec** %z, align 8
  %1483 = load %union.rec*, %union.rec** %m, align 8
  %cmp2917 = icmp eq %union.rec* %1482, %1483
  br i1 %cmp2917, label %if.then.2919, label %if.end.2920

if.then.2919:                                     ; preds = %lor.lhs.false.2916, %land.lhs.true.2908, %for.end.2900
  br label %for.inc.2960

if.end.2920:                                      ; preds = %lor.lhs.false.2916
  %1484 = load %union.rec*, %union.rec** %z, align 8
  %1485 = load i32, i32* %xmk.addr, align 4
  %1486 = load i32, i32* %b, align 4
  %add2921 = add nsw i32 %1485, %1486
  %1487 = load i32, i32* %b, align 4
  %1488 = load i32, i32* %xf.addr, align 4
  %1489 = load i32, i32* %b, align 4
  %sub2922 = sub nsw i32 %1488, %1489
  %1490 = load i32, i32* %dim.addr, align 4
  %1491 = load i32, i32* %pg.addr, align 4
  %1492 = load i32, i32* %count.addr, align 4
  %call2923 = call %union.rec* @FixAndPrintObject(%union.rec* %1484, i32 %add2921, i32 %1487, i32 %sub2922, i32 %1490, i32 1, i32 %1491, i32 %1492, i32* %aback, i32* %afwd)
  store %union.rec* %call2923, %union.rec** %z, align 8
  %1493 = load i32, i32* %b, align 4
  %1494 = load i32, i32* %dim.addr, align 4
  %idxprom2924 = sext i32 %1494 to i64
  %1495 = load %union.rec*, %union.rec** %z, align 8
  %os12925 = bitcast %union.rec* %1495 to %struct.word_type*
  %ou32926 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12925, i32 0, i32 3
  %os312927 = bitcast %union.THIRD_UNION* %ou32926 to %struct.anon.6*
  %oback2928 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312927, i32 0, i32 0
  %arrayidx2929 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2928, i32 0, i64 %idxprom2924
  %1496 = load i32, i32* %arrayidx2929, align 4
  %cmp2930 = icmp slt i32 %1493, %1496
  br i1 %cmp2930, label %cond.true.2932, label %cond.false.2939

cond.true.2932:                                   ; preds = %if.end.2920
  %1497 = load i32, i32* %dim.addr, align 4
  %idxprom2933 = sext i32 %1497 to i64
  %1498 = load %union.rec*, %union.rec** %z, align 8
  %os12934 = bitcast %union.rec* %1498 to %struct.word_type*
  %ou32935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12934, i32 0, i32 3
  %os312936 = bitcast %union.THIRD_UNION* %ou32935 to %struct.anon.6*
  %oback2937 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312936, i32 0, i32 0
  %arrayidx2938 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2937, i32 0, i64 %idxprom2933
  %1499 = load i32, i32* %arrayidx2938, align 4
  br label %cond.end.2940

cond.false.2939:                                  ; preds = %if.end.2920
  %1500 = load i32, i32* %b, align 4
  br label %cond.end.2940

cond.end.2940:                                    ; preds = %cond.false.2939, %cond.true.2932
  %cond2941 = phi i32 [ %1499, %cond.true.2932 ], [ %1500, %cond.false.2939 ]
  store i32 %cond2941, i32* %b, align 4
  %1501 = load i32, i32* %f2665, align 4
  %1502 = load i32, i32* %dim.addr, align 4
  %idxprom2942 = sext i32 %1502 to i64
  %1503 = load %union.rec*, %union.rec** %z, align 8
  %os12943 = bitcast %union.rec* %1503 to %struct.word_type*
  %ou32944 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12943, i32 0, i32 3
  %os312945 = bitcast %union.THIRD_UNION* %ou32944 to %struct.anon.6*
  %ofwd2946 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312945, i32 0, i32 1
  %arrayidx2947 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2946, i32 0, i64 %idxprom2942
  %1504 = load i32, i32* %arrayidx2947, align 4
  %cmp2948 = icmp slt i32 %1501, %1504
  br i1 %cmp2948, label %cond.true.2950, label %cond.false.2957

cond.true.2950:                                   ; preds = %cond.end.2940
  %1505 = load i32, i32* %dim.addr, align 4
  %idxprom2951 = sext i32 %1505 to i64
  %1506 = load %union.rec*, %union.rec** %z, align 8
  %os12952 = bitcast %union.rec* %1506 to %struct.word_type*
  %ou32953 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12952, i32 0, i32 3
  %os312954 = bitcast %union.THIRD_UNION* %ou32953 to %struct.anon.6*
  %ofwd2955 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312954, i32 0, i32 1
  %arrayidx2956 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2955, i32 0, i64 %idxprom2951
  %1507 = load i32, i32* %arrayidx2956, align 4
  br label %cond.end.2958

cond.false.2957:                                  ; preds = %cond.end.2940
  %1508 = load i32, i32* %f2665, align 4
  br label %cond.end.2958

cond.end.2958:                                    ; preds = %cond.false.2957, %cond.true.2950
  %cond2959 = phi i32 [ %1507, %cond.true.2950 ], [ %1508, %cond.false.2957 ]
  store i32 %cond2959, i32* %f2665, align 4
  br label %for.inc.2960

for.inc.2960:                                     ; preds = %cond.end.2958, %if.then.2919
  %1509 = load %union.rec*, %union.rec** %zlink, align 8
  %os12961 = bitcast %union.rec* %1509 to %struct.word_type*
  %olist2962 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12961, i32 0, i32 0
  %arrayidx2963 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2962, i32 0, i64 0
  %osucc2964 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx2963, i32 0, i32 1
  %1510 = load %union.rec*, %union.rec** %osucc2964, align 8
  store %union.rec* %1510, %union.rec** %zlink, align 8
  br label %for.cond.2877

for.end.2965:                                     ; preds = %for.cond.2877
  %1511 = load i32, i32* %dlen, align 4
  %1512 = load i32, i32* %b, align 4
  %1513 = load i32, i32* %f2665, align 4
  %add2966 = add nsw i32 %1512, %1513
  %cmp2967 = icmp slt i32 %1511, %add2966
  br i1 %cmp2967, label %cond.true.2969, label %cond.false.2971

cond.true.2969:                                   ; preds = %for.end.2965
  %1514 = load i32, i32* %b, align 4
  %1515 = load i32, i32* %f2665, align 4
  %add2970 = add nsw i32 %1514, %1515
  br label %cond.end.2972

cond.false.2971:                                  ; preds = %for.end.2965
  %1516 = load i32, i32* %dlen, align 4
  br label %cond.end.2972

cond.end.2972:                                    ; preds = %cond.false.2971, %cond.true.2969
  %cond2973 = phi i32 [ %add2970, %cond.true.2969 ], [ %1516, %cond.false.2971 ]
  store i32 %cond2973, i32* %dlen, align 4
  store i32 1, i32* %dble_found, align 4
  store %union.rec* null, %union.rec** %start_group, align 8
  %1517 = load i32, i32* %dim.addr, align 4
  %idxprom2974 = sext i32 %1517 to i64
  %1518 = load %union.rec*, %union.rec** %y, align 8
  %os12975 = bitcast %union.rec* %1518 to %struct.word_type*
  %ou32976 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12975, i32 0, i32 3
  %os312977 = bitcast %union.THIRD_UNION* %ou32976 to %struct.anon.6*
  %oback2978 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312977, i32 0, i32 0
  %arrayidx2979 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2978, i32 0, i64 %idxprom2974
  %1519 = load i32, i32* %arrayidx2979, align 4
  store i32 %1519, i32* %b, align 4
  %1520 = load i32, i32* %dim.addr, align 4
  %idxprom2980 = sext i32 %1520 to i64
  %1521 = load %union.rec*, %union.rec** %y, align 8
  %os12981 = bitcast %union.rec* %1521 to %struct.word_type*
  %ou32982 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12981, i32 0, i32 3
  %os312983 = bitcast %union.THIRD_UNION* %ou32982 to %struct.anon.6*
  %ofwd2984 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312983, i32 0, i32 1
  %arrayidx2985 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd2984, i32 0, i64 %idxprom2980
  %1522 = load i32, i32* %arrayidx2985, align 4
  store i32 %1522, i32* %f2665, align 4
  %1523 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1523, %union.rec** %m, align 8
  %1524 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %1524, %union.rec** %start_group, align 8
  br label %if.end.3039

if.else.2986:                                     ; preds = %while.body.2859
  %1525 = load i32, i32* %b, align 4
  %1526 = load i32, i32* %dim.addr, align 4
  %idxprom2987 = sext i32 %1526 to i64
  %1527 = load %union.rec*, %union.rec** %y, align 8
  %os12988 = bitcast %union.rec* %1527 to %struct.word_type*
  %ou32989 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12988, i32 0, i32 3
  %os312990 = bitcast %union.THIRD_UNION* %ou32989 to %struct.anon.6*
  %oback2991 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312990, i32 0, i32 0
  %arrayidx2992 = getelementptr inbounds [2 x i32], [2 x i32]* %oback2991, i32 0, i64 %idxprom2987
  %1528 = load i32, i32* %arrayidx2992, align 4
  %cmp2993 = icmp slt i32 %1525, %1528
  br i1 %cmp2993, label %cond.true.2995, label %cond.false.3002

cond.true.2995:                                   ; preds = %if.else.2986
  %1529 = load i32, i32* %dim.addr, align 4
  %idxprom2996 = sext i32 %1529 to i64
  %1530 = load %union.rec*, %union.rec** %y, align 8
  %os12997 = bitcast %union.rec* %1530 to %struct.word_type*
  %ou32998 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12997, i32 0, i32 3
  %os312999 = bitcast %union.THIRD_UNION* %ou32998 to %struct.anon.6*
  %oback3000 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os312999, i32 0, i32 0
  %arrayidx3001 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3000, i32 0, i64 %idxprom2996
  %1531 = load i32, i32* %arrayidx3001, align 4
  br label %cond.end.3003

cond.false.3002:                                  ; preds = %if.else.2986
  %1532 = load i32, i32* %b, align 4
  br label %cond.end.3003

cond.end.3003:                                    ; preds = %cond.false.3002, %cond.true.2995
  %cond3004 = phi i32 [ %1531, %cond.true.2995 ], [ %1532, %cond.false.3002 ]
  store i32 %cond3004, i32* %b, align 4
  %1533 = load i32, i32* %f2665, align 4
  %1534 = load i32, i32* %dim.addr, align 4
  %idxprom3005 = sext i32 %1534 to i64
  %1535 = load %union.rec*, %union.rec** %y, align 8
  %os13006 = bitcast %union.rec* %1535 to %struct.word_type*
  %ou33007 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13006, i32 0, i32 3
  %os313008 = bitcast %union.THIRD_UNION* %ou33007 to %struct.anon.6*
  %ofwd3009 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313008, i32 0, i32 1
  %arrayidx3010 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3009, i32 0, i64 %idxprom3005
  %1536 = load i32, i32* %arrayidx3010, align 4
  %cmp3011 = icmp slt i32 %1533, %1536
  br i1 %cmp3011, label %cond.true.3013, label %cond.false.3020

cond.true.3013:                                   ; preds = %cond.end.3003
  %1537 = load i32, i32* %dim.addr, align 4
  %idxprom3014 = sext i32 %1537 to i64
  %1538 = load %union.rec*, %union.rec** %y, align 8
  %os13015 = bitcast %union.rec* %1538 to %struct.word_type*
  %ou33016 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13015, i32 0, i32 3
  %os313017 = bitcast %union.THIRD_UNION* %ou33016 to %struct.anon.6*
  %ofwd3018 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313017, i32 0, i32 1
  %arrayidx3019 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3018, i32 0, i64 %idxprom3014
  %1539 = load i32, i32* %arrayidx3019, align 4
  br label %cond.end.3021

cond.false.3020:                                  ; preds = %cond.end.3003
  %1540 = load i32, i32* %f2665, align 4
  br label %cond.end.3021

cond.end.3021:                                    ; preds = %cond.false.3020, %cond.true.3013
  %cond3022 = phi i32 [ %1539, %cond.true.3013 ], [ %1540, %cond.false.3020 ]
  store i32 %cond3022, i32* %f2665, align 4
  %1541 = load i32, i32* %dim.addr, align 4
  %idxprom3023 = sext i32 %1541 to i64
  %1542 = load %union.rec*, %union.rec** %y, align 8
  %os13024 = bitcast %union.rec* %1542 to %struct.word_type*
  %ou33025 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13024, i32 0, i32 3
  %os313026 = bitcast %union.THIRD_UNION* %ou33025 to %struct.anon.6*
  %ofwd3027 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313026, i32 0, i32 1
  %arrayidx3028 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3027, i32 0, i64 %idxprom3023
  %1543 = load i32, i32* %arrayidx3028, align 4
  %1544 = load i32, i32* %dim.addr, align 4
  %idxprom3029 = sext i32 %1544 to i64
  %1545 = load %union.rec*, %union.rec** %m, align 8
  %os13030 = bitcast %union.rec* %1545 to %struct.word_type*
  %ou33031 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13030, i32 0, i32 3
  %os313032 = bitcast %union.THIRD_UNION* %ou33031 to %struct.anon.6*
  %ofwd3033 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313032, i32 0, i32 1
  %arrayidx3034 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3033, i32 0, i64 %idxprom3029
  %1546 = load i32, i32* %arrayidx3034, align 4
  %cmp3035 = icmp sgt i32 %1543, %1546
  br i1 %cmp3035, label %if.then.3037, label %if.end.3038

if.then.3037:                                     ; preds = %cond.end.3021
  %1547 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1547, %union.rec** %m, align 8
  br label %if.end.3038

if.end.3038:                                      ; preds = %if.then.3037, %cond.end.3021
  br label %if.end.3039

if.end.3039:                                      ; preds = %if.end.3038, %cond.end.2972
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %1548 = load %union.rec*, %union.rec** %link, align 8
  %os13040 = bitcast %union.rec* %1548 to %struct.word_type*
  %olist3041 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13040, i32 0, i32 0
  %arrayidx3042 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3041, i32 0, i64 0
  %osucc3043 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3042, i32 0, i32 1
  %1549 = load %union.rec*, %union.rec** %osucc3043, align 8
  store %union.rec* %1549, %union.rec** %link, align 8
  br label %for.cond.3044

for.cond.3044:                                    ; preds = %for.inc.3123, %if.end.3039
  %1550 = load %union.rec*, %union.rec** %link, align 8
  %1551 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3045 = icmp ne %union.rec* %1550, %1551
  br i1 %cmp3045, label %for.body.3047, label %for.end.3128

for.body.3047:                                    ; preds = %for.cond.3044
  %1552 = load %union.rec*, %union.rec** %link, align 8
  %os13048 = bitcast %union.rec* %1552 to %struct.word_type*
  %olist3049 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13048, i32 0, i32 0
  %arrayidx3050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3049, i32 0, i64 1
  %opred3051 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3050, i32 0, i32 0
  %1553 = load %union.rec*, %union.rec** %opred3051, align 8
  store %union.rec* %1553, %union.rec** %y, align 8
  br label %for.cond.3052

for.cond.3052:                                    ; preds = %for.inc.3061, %for.body.3047
  %1554 = load %union.rec*, %union.rec** %y, align 8
  %os13053 = bitcast %union.rec* %1554 to %struct.word_type*
  %ou13054 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13053, i32 0, i32 1
  %os113055 = bitcast %union.FIRST_UNION* %ou13054 to %struct.anon*
  %otype3056 = getelementptr inbounds %struct.anon, %struct.anon* %os113055, i32 0, i32 0
  %1555 = load i8, i8* %otype3056, align 1
  %conv3057 = zext i8 %1555 to i32
  %cmp3058 = icmp eq i32 %conv3057, 0
  br i1 %cmp3058, label %for.body.3060, label %for.end.3066

for.body.3060:                                    ; preds = %for.cond.3052
  br label %for.inc.3061

for.inc.3061:                                     ; preds = %for.body.3060
  %1556 = load %union.rec*, %union.rec** %y, align 8
  %os13062 = bitcast %union.rec* %1556 to %struct.word_type*
  %olist3063 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13062, i32 0, i32 0
  %arrayidx3064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3063, i32 0, i64 1
  %opred3065 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3064, i32 0, i32 0
  %1557 = load %union.rec*, %union.rec** %opred3065, align 8
  store %union.rec* %1557, %union.rec** %y, align 8
  br label %for.cond.3052

for.end.3066:                                     ; preds = %for.cond.3052
  %1558 = load %union.rec*, %union.rec** %y, align 8
  %os13067 = bitcast %union.rec* %1558 to %struct.word_type*
  %ou13068 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13067, i32 0, i32 1
  %os113069 = bitcast %union.FIRST_UNION* %ou13068 to %struct.anon*
  %otype3070 = getelementptr inbounds %struct.anon, %struct.anon* %os113069, i32 0, i32 0
  %1559 = load i8, i8* %otype3070, align 1
  %conv3071 = zext i8 %1559 to i32
  %cmp3072 = icmp eq i32 %conv3071, 1
  br i1 %cmp3072, label %if.then.3074, label %if.else.3086

if.then.3074:                                     ; preds = %for.end.3066
  %1560 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1560, %union.rec** %g, align 8
  %1561 = load i32, i32* %jn, align 4
  %tobool3075 = icmp ne i32 %1561, 0
  br i1 %tobool3075, label %land.rhs.3076, label %land.end.3084

land.rhs.3076:                                    ; preds = %if.then.3074
  %1562 = load %union.rec*, %union.rec** %y, align 8
  %os53077 = bitcast %union.rec* %1562 to %struct.gapobj_type*
  %ogap3078 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53077, i32 0, i32 3
  %1563 = bitcast %struct.GAP* %ogap3078 to i16*
  %bf.load3079 = load i16, i16* %1563, align 4
  %bf.lshr3080 = lshr i16 %bf.load3079, 9
  %bf.clear3081 = and i16 %bf.lshr3080, 1
  %bf.cast3082 = zext i16 %bf.clear3081 to i32
  %tobool3083 = icmp ne i32 %bf.cast3082, 0
  br label %land.end.3084

land.end.3084:                                    ; preds = %land.rhs.3076, %if.then.3074
  %1564 = phi i1 [ false, %if.then.3074 ], [ %tobool3083, %land.rhs.3076 ]
  %land.ext3085 = zext i1 %1564 to i32
  store i32 %land.ext3085, i32* %jn, align 4
  br label %if.end.3122

if.else.3086:                                     ; preds = %for.end.3066
  %1565 = load %union.rec*, %union.rec** %y, align 8
  %os13087 = bitcast %union.rec* %1565 to %struct.word_type*
  %ou13088 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13087, i32 0, i32 1
  %os113089 = bitcast %union.FIRST_UNION* %ou13088 to %struct.anon*
  %otype3090 = getelementptr inbounds %struct.anon, %struct.anon* %os113089, i32 0, i32 0
  %1566 = load i8, i8* %otype3090, align 1
  %conv3091 = zext i8 %1566 to i32
  %cmp3092 = icmp eq i32 %conv3091, 9
  br i1 %cmp3092, label %cond.true.3094, label %cond.false.3097

cond.true.3094:                                   ; preds = %if.else.3086
  %1567 = load %union.rec*, %union.rec** %y, align 8
  %call3095 = call i32 @SplitIsDefinite(%union.rec* %1567)
  %tobool3096 = icmp ne i32 %call3095, 0
  br i1 %tobool3096, label %if.then.3115, label %if.end.3121

cond.false.3097:                                  ; preds = %if.else.3086
  %1568 = load %union.rec*, %union.rec** %y, align 8
  %os13098 = bitcast %union.rec* %1568 to %struct.word_type*
  %ou13099 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13098, i32 0, i32 1
  %os113100 = bitcast %union.FIRST_UNION* %ou13099 to %struct.anon*
  %otype3101 = getelementptr inbounds %struct.anon, %struct.anon* %os113100, i32 0, i32 0
  %1569 = load i8, i8* %otype3101, align 1
  %conv3102 = zext i8 %1569 to i32
  %cmp3103 = icmp sge i32 %conv3102, 9
  br i1 %cmp3103, label %land.rhs.3105, label %land.end.3113

land.rhs.3105:                                    ; preds = %cond.false.3097
  %1570 = load %union.rec*, %union.rec** %y, align 8
  %os13106 = bitcast %union.rec* %1570 to %struct.word_type*
  %ou13107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13106, i32 0, i32 1
  %os113108 = bitcast %union.FIRST_UNION* %ou13107 to %struct.anon*
  %otype3109 = getelementptr inbounds %struct.anon, %struct.anon* %os113108, i32 0, i32 0
  %1571 = load i8, i8* %otype3109, align 1
  %conv3110 = zext i8 %1571 to i32
  %cmp3111 = icmp sle i32 %conv3110, 99
  br label %land.end.3113

land.end.3113:                                    ; preds = %land.rhs.3105, %cond.false.3097
  %1572 = phi i1 [ false, %cond.false.3097 ], [ %cmp3111, %land.rhs.3105 ]
  br i1 %1572, label %if.then.3115, label %if.end.3121

if.then.3115:                                     ; preds = %land.end.3113, %cond.true.3094
  %1573 = load %union.rec*, %union.rec** %g, align 8
  %cmp3116 = icmp ne %union.rec* %1573, null
  br i1 %cmp3116, label %if.end.3120, label %if.then.3118

if.then.3118:                                     ; preds = %if.then.3115
  %1574 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3119 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1574, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.3120

if.end.3120:                                      ; preds = %if.then.3118, %if.then.3115
  br label %for.end.3128

if.end.3121:                                      ; preds = %land.end.3113, %cond.true.3094
  br label %if.end.3122

if.end.3122:                                      ; preds = %if.end.3121, %land.end.3084
  br label %for.inc.3123

for.inc.3123:                                     ; preds = %if.end.3122
  %1575 = load %union.rec*, %union.rec** %link, align 8
  %os13124 = bitcast %union.rec* %1575 to %struct.word_type*
  %olist3125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13124, i32 0, i32 0
  %arrayidx3126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3125, i32 0, i64 0
  %osucc3127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3126, i32 0, i32 1
  %1576 = load %union.rec*, %union.rec** %osucc3127, align 8
  store %union.rec* %1576, %union.rec** %link, align 8
  br label %for.cond.3044

for.end.3128:                                     ; preds = %if.end.3120, %for.cond.3044
  br label %while.cond.2856

while.end.3129:                                   ; preds = %while.cond.2856
  %1577 = load %union.rec*, %union.rec** %start_group, align 8
  %cmp3130 = icmp ne %union.rec* %1577, null
  br i1 %cmp3130, label %if.end.3134, label %if.then.3132

if.then.3132:                                     ; preds = %while.end.3129
  %1578 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3133 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1578, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.3134

if.end.3134:                                      ; preds = %if.then.3132, %while.end.3129
  %1579 = load i32, i32* %dble_found, align 4
  %tobool3135 = icmp ne i32 %1579, 0
  br i1 %tobool3135, label %if.then.3138, label %lor.lhs.false.3136

lor.lhs.false.3136:                               ; preds = %if.end.3134
  %1580 = load i32, i32* %jn, align 4
  %tobool3137 = icmp ne i32 %1580, 0
  br i1 %tobool3137, label %if.else.3251, label %if.then.3138

if.then.3138:                                     ; preds = %lor.lhs.false.3136, %if.end.3134
  %1581 = load %union.rec*, %union.rec** %m, align 8
  %1582 = load i32, i32* %xmk.addr, align 4
  %1583 = load i32, i32* %b, align 4
  %add3139 = add nsw i32 %1582, %1583
  %1584 = load i32, i32* %b, align 4
  %1585 = load i32, i32* %xf.addr, align 4
  %1586 = load i32, i32* %b, align 4
  %sub3140 = sub nsw i32 %1585, %1586
  %1587 = load i32, i32* %dim.addr, align 4
  %1588 = load i32, i32* %pg.addr, align 4
  %1589 = load i32, i32* %count.addr, align 4
  %call3141 = call %union.rec* @FixAndPrintObject(%union.rec* %1581, i32 %add3139, i32 %1584, i32 %sub3140, i32 %1587, i32 0, i32 %1588, i32 %1589, i32* %aback, i32* %afwd)
  store %union.rec* %call3141, %union.rec** %m, align 8
  %1590 = load i32, i32* %dim.addr, align 4
  %idxprom3142 = sext i32 %1590 to i64
  %1591 = load %union.rec*, %union.rec** %m, align 8
  %os13143 = bitcast %union.rec* %1591 to %struct.word_type*
  %ou33144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13143, i32 0, i32 3
  %os313145 = bitcast %union.THIRD_UNION* %ou33144 to %struct.anon.6*
  %oback3146 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313145, i32 0, i32 0
  %arrayidx3147 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3146, i32 0, i64 %idxprom3142
  %1592 = load i32, i32* %arrayidx3147, align 4
  store i32 %1592, i32* %b, align 4
  %1593 = load i32, i32* %dim.addr, align 4
  %idxprom3148 = sext i32 %1593 to i64
  %1594 = load %union.rec*, %union.rec** %m, align 8
  %os13149 = bitcast %union.rec* %1594 to %struct.word_type*
  %ou33150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13149, i32 0, i32 3
  %os313151 = bitcast %union.THIRD_UNION* %ou33150 to %struct.anon.6*
  %ofwd3152 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313151, i32 0, i32 1
  %arrayidx3153 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3152, i32 0, i64 %idxprom3148
  %1595 = load i32, i32* %arrayidx3153, align 4
  store i32 %1595, i32* %f2665, align 4
  %1596 = load %union.rec*, %union.rec** %start_group, align 8
  store %union.rec* %1596, %union.rec** %zlink, align 8
  br label %for.cond.3154

for.cond.3154:                                    ; preds = %for.inc.3237, %if.then.3138
  %1597 = load %union.rec*, %union.rec** %zlink, align 8
  %1598 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3155 = icmp ne %union.rec* %1597, %1598
  br i1 %cmp3155, label %for.body.3157, label %for.end.3242

for.body.3157:                                    ; preds = %for.cond.3154
  %1599 = load %union.rec*, %union.rec** %zlink, align 8
  %os13158 = bitcast %union.rec* %1599 to %struct.word_type*
  %olist3159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13158, i32 0, i32 0
  %arrayidx3160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3159, i32 0, i64 1
  %opred3161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3160, i32 0, i32 0
  %1600 = load %union.rec*, %union.rec** %opred3161, align 8
  store %union.rec* %1600, %union.rec** %z, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.3162

for.cond.3162:                                    ; preds = %for.inc.3171, %for.body.3157
  %1601 = load %union.rec*, %union.rec** %z, align 8
  %os13163 = bitcast %union.rec* %1601 to %struct.word_type*
  %ou13164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13163, i32 0, i32 1
  %os113165 = bitcast %union.FIRST_UNION* %ou13164 to %struct.anon*
  %otype3166 = getelementptr inbounds %struct.anon, %struct.anon* %os113165, i32 0, i32 0
  %1602 = load i8, i8* %otype3166, align 1
  %conv3167 = zext i8 %1602 to i32
  %cmp3168 = icmp eq i32 %conv3167, 0
  br i1 %cmp3168, label %for.body.3170, label %for.end.3177

for.body.3170:                                    ; preds = %for.cond.3162
  br label %for.inc.3171

for.inc.3171:                                     ; preds = %for.body.3170
  %1603 = load %union.rec*, %union.rec** %z, align 8
  %os13172 = bitcast %union.rec* %1603 to %struct.word_type*
  %olist3173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13172, i32 0, i32 0
  %arrayidx3174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3173, i32 0, i64 1
  %opred3175 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3174, i32 0, i32 0
  %1604 = load %union.rec*, %union.rec** %opred3175, align 8
  store %union.rec* %1604, %union.rec** %z, align 8
  %1605 = load i32, i32* %count.addr, align 4
  %inc3176 = add nsw i32 %1605, 1
  store i32 %inc3176, i32* %count.addr, align 4
  br label %for.cond.3162

for.end.3177:                                     ; preds = %for.cond.3162
  %1606 = load %union.rec*, %union.rec** %z, align 8
  %os13178 = bitcast %union.rec* %1606 to %struct.word_type*
  %ou13179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13178, i32 0, i32 1
  %os113180 = bitcast %union.FIRST_UNION* %ou13179 to %struct.anon*
  %otype3181 = getelementptr inbounds %struct.anon, %struct.anon* %os113180, i32 0, i32 0
  %1607 = load i8, i8* %otype3181, align 1
  %conv3182 = zext i8 %1607 to i32
  %cmp3183 = icmp sge i32 %conv3182, 9
  br i1 %cmp3183, label %land.lhs.true.3185, label %if.then.3196

land.lhs.true.3185:                               ; preds = %for.end.3177
  %1608 = load %union.rec*, %union.rec** %z, align 8
  %os13186 = bitcast %union.rec* %1608 to %struct.word_type*
  %ou13187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13186, i32 0, i32 1
  %os113188 = bitcast %union.FIRST_UNION* %ou13187 to %struct.anon*
  %otype3189 = getelementptr inbounds %struct.anon, %struct.anon* %os113188, i32 0, i32 0
  %1609 = load i8, i8* %otype3189, align 1
  %conv3190 = zext i8 %1609 to i32
  %cmp3191 = icmp sle i32 %conv3190, 99
  br i1 %cmp3191, label %lor.lhs.false.3193, label %if.then.3196

lor.lhs.false.3193:                               ; preds = %land.lhs.true.3185
  %1610 = load %union.rec*, %union.rec** %z, align 8
  %1611 = load %union.rec*, %union.rec** %m, align 8
  %cmp3194 = icmp eq %union.rec* %1610, %1611
  br i1 %cmp3194, label %if.then.3196, label %if.end.3197

if.then.3196:                                     ; preds = %lor.lhs.false.3193, %land.lhs.true.3185, %for.end.3177
  br label %for.inc.3237

if.end.3197:                                      ; preds = %lor.lhs.false.3193
  %1612 = load %union.rec*, %union.rec** %z, align 8
  %1613 = load i32, i32* %xmk.addr, align 4
  %1614 = load i32, i32* %b, align 4
  %add3198 = add nsw i32 %1613, %1614
  %1615 = load i32, i32* %b, align 4
  %1616 = load i32, i32* %xf.addr, align 4
  %1617 = load i32, i32* %b, align 4
  %sub3199 = sub nsw i32 %1616, %1617
  %1618 = load i32, i32* %dim.addr, align 4
  %1619 = load i32, i32* %pg.addr, align 4
  %1620 = load i32, i32* %count.addr, align 4
  %call3200 = call %union.rec* @FixAndPrintObject(%union.rec* %1612, i32 %add3198, i32 %1615, i32 %sub3199, i32 %1618, i32 1, i32 %1619, i32 %1620, i32* %aback, i32* %afwd)
  store %union.rec* %call3200, %union.rec** %z, align 8
  %1621 = load i32, i32* %b, align 4
  %1622 = load i32, i32* %dim.addr, align 4
  %idxprom3201 = sext i32 %1622 to i64
  %1623 = load %union.rec*, %union.rec** %z, align 8
  %os13202 = bitcast %union.rec* %1623 to %struct.word_type*
  %ou33203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13202, i32 0, i32 3
  %os313204 = bitcast %union.THIRD_UNION* %ou33203 to %struct.anon.6*
  %oback3205 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313204, i32 0, i32 0
  %arrayidx3206 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3205, i32 0, i64 %idxprom3201
  %1624 = load i32, i32* %arrayidx3206, align 4
  %cmp3207 = icmp slt i32 %1621, %1624
  br i1 %cmp3207, label %cond.true.3209, label %cond.false.3216

cond.true.3209:                                   ; preds = %if.end.3197
  %1625 = load i32, i32* %dim.addr, align 4
  %idxprom3210 = sext i32 %1625 to i64
  %1626 = load %union.rec*, %union.rec** %z, align 8
  %os13211 = bitcast %union.rec* %1626 to %struct.word_type*
  %ou33212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13211, i32 0, i32 3
  %os313213 = bitcast %union.THIRD_UNION* %ou33212 to %struct.anon.6*
  %oback3214 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313213, i32 0, i32 0
  %arrayidx3215 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3214, i32 0, i64 %idxprom3210
  %1627 = load i32, i32* %arrayidx3215, align 4
  br label %cond.end.3217

cond.false.3216:                                  ; preds = %if.end.3197
  %1628 = load i32, i32* %b, align 4
  br label %cond.end.3217

cond.end.3217:                                    ; preds = %cond.false.3216, %cond.true.3209
  %cond3218 = phi i32 [ %1627, %cond.true.3209 ], [ %1628, %cond.false.3216 ]
  store i32 %cond3218, i32* %b, align 4
  %1629 = load i32, i32* %f2665, align 4
  %1630 = load i32, i32* %dim.addr, align 4
  %idxprom3219 = sext i32 %1630 to i64
  %1631 = load %union.rec*, %union.rec** %z, align 8
  %os13220 = bitcast %union.rec* %1631 to %struct.word_type*
  %ou33221 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13220, i32 0, i32 3
  %os313222 = bitcast %union.THIRD_UNION* %ou33221 to %struct.anon.6*
  %ofwd3223 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313222, i32 0, i32 1
  %arrayidx3224 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3223, i32 0, i64 %idxprom3219
  %1632 = load i32, i32* %arrayidx3224, align 4
  %cmp3225 = icmp slt i32 %1629, %1632
  br i1 %cmp3225, label %cond.true.3227, label %cond.false.3234

cond.true.3227:                                   ; preds = %cond.end.3217
  %1633 = load i32, i32* %dim.addr, align 4
  %idxprom3228 = sext i32 %1633 to i64
  %1634 = load %union.rec*, %union.rec** %z, align 8
  %os13229 = bitcast %union.rec* %1634 to %struct.word_type*
  %ou33230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13229, i32 0, i32 3
  %os313231 = bitcast %union.THIRD_UNION* %ou33230 to %struct.anon.6*
  %ofwd3232 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313231, i32 0, i32 1
  %arrayidx3233 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3232, i32 0, i64 %idxprom3228
  %1635 = load i32, i32* %arrayidx3233, align 4
  br label %cond.end.3235

cond.false.3234:                                  ; preds = %cond.end.3217
  %1636 = load i32, i32* %f2665, align 4
  br label %cond.end.3235

cond.end.3235:                                    ; preds = %cond.false.3234, %cond.true.3227
  %cond3236 = phi i32 [ %1635, %cond.true.3227 ], [ %1636, %cond.false.3234 ]
  store i32 %cond3236, i32* %f2665, align 4
  br label %for.inc.3237

for.inc.3237:                                     ; preds = %cond.end.3235, %if.then.3196
  %1637 = load %union.rec*, %union.rec** %zlink, align 8
  %os13238 = bitcast %union.rec* %1637 to %struct.word_type*
  %olist3239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13238, i32 0, i32 0
  %arrayidx3240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3239, i32 0, i64 0
  %osucc3241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3240, i32 0, i32 1
  %1638 = load %union.rec*, %union.rec** %osucc3241, align 8
  store %union.rec* %1638, %union.rec** %zlink, align 8
  br label %for.cond.3154

for.end.3242:                                     ; preds = %for.cond.3154
  %1639 = load i32, i32* %dlen, align 4
  %1640 = load i32, i32* %b, align 4
  %1641 = load i32, i32* %f2665, align 4
  %add3243 = add nsw i32 %1640, %1641
  %cmp3244 = icmp slt i32 %1639, %add3243
  br i1 %cmp3244, label %cond.true.3246, label %cond.false.3248

cond.true.3246:                                   ; preds = %for.end.3242
  %1642 = load i32, i32* %b, align 4
  %1643 = load i32, i32* %f2665, align 4
  %add3247 = add nsw i32 %1642, %1643
  br label %cond.end.3249

cond.false.3248:                                  ; preds = %for.end.3242
  %1644 = load i32, i32* %dlen, align 4
  br label %cond.end.3249

cond.end.3249:                                    ; preds = %cond.false.3248, %cond.true.3246
  %cond3250 = phi i32 [ %add3247, %cond.true.3246 ], [ %1644, %cond.false.3248 ]
  store i32 %cond3250, i32* %dlen, align 4
  %1645 = load i32*, i32** %actual_back.addr, align 8
  store i32 0, i32* %1645, align 4
  %1646 = load i32, i32* %dlen, align 4
  %1647 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %1646, i32* %1647, align 4
  br label %if.end.3316

if.else.3251:                                     ; preds = %lor.lhs.false.3136
  %1648 = load %union.rec*, %union.rec** %m, align 8
  %1649 = load i32, i32* %xmk.addr, align 4
  %1650 = load i32, i32* %xb.addr, align 4
  %1651 = load i32, i32* %xf.addr, align 4
  %1652 = load i32, i32* %dim.addr, align 4
  %1653 = load i32, i32* %pg.addr, align 4
  %1654 = load i32, i32* %count.addr, align 4
  %call3252 = call %union.rec* @FixAndPrintObject(%union.rec* %1648, i32 %1649, i32 %1650, i32 %1651, i32 %1652, i32 0, i32 %1653, i32 %1654, i32* %b, i32* %f2665)
  store %union.rec* %call3252, %union.rec** %m, align 8
  %1655 = load %union.rec*, %union.rec** %start_group, align 8
  store %union.rec* %1655, %union.rec** %zlink, align 8
  br label %for.cond.3253

for.cond.3253:                                    ; preds = %for.inc.3310, %if.else.3251
  %1656 = load %union.rec*, %union.rec** %zlink, align 8
  %1657 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3254 = icmp ne %union.rec* %1656, %1657
  br i1 %cmp3254, label %for.body.3256, label %for.end.3315

for.body.3256:                                    ; preds = %for.cond.3253
  %1658 = load %union.rec*, %union.rec** %zlink, align 8
  %os13257 = bitcast %union.rec* %1658 to %struct.word_type*
  %olist3258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13257, i32 0, i32 0
  %arrayidx3259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3258, i32 0, i64 1
  %opred3260 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3259, i32 0, i32 0
  %1659 = load %union.rec*, %union.rec** %opred3260, align 8
  store %union.rec* %1659, %union.rec** %z, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.3261

for.cond.3261:                                    ; preds = %for.inc.3270, %for.body.3256
  %1660 = load %union.rec*, %union.rec** %z, align 8
  %os13262 = bitcast %union.rec* %1660 to %struct.word_type*
  %ou13263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13262, i32 0, i32 1
  %os113264 = bitcast %union.FIRST_UNION* %ou13263 to %struct.anon*
  %otype3265 = getelementptr inbounds %struct.anon, %struct.anon* %os113264, i32 0, i32 0
  %1661 = load i8, i8* %otype3265, align 1
  %conv3266 = zext i8 %1661 to i32
  %cmp3267 = icmp eq i32 %conv3266, 0
  br i1 %cmp3267, label %for.body.3269, label %for.end.3276

for.body.3269:                                    ; preds = %for.cond.3261
  br label %for.inc.3270

for.inc.3270:                                     ; preds = %for.body.3269
  %1662 = load %union.rec*, %union.rec** %z, align 8
  %os13271 = bitcast %union.rec* %1662 to %struct.word_type*
  %olist3272 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13271, i32 0, i32 0
  %arrayidx3273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3272, i32 0, i64 1
  %opred3274 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3273, i32 0, i32 0
  %1663 = load %union.rec*, %union.rec** %opred3274, align 8
  store %union.rec* %1663, %union.rec** %z, align 8
  %1664 = load i32, i32* %count.addr, align 4
  %inc3275 = add nsw i32 %1664, 1
  store i32 %inc3275, i32* %count.addr, align 4
  br label %for.cond.3261

for.end.3276:                                     ; preds = %for.cond.3261
  %1665 = load %union.rec*, %union.rec** %z, align 8
  %os13277 = bitcast %union.rec* %1665 to %struct.word_type*
  %ou13278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13277, i32 0, i32 1
  %os113279 = bitcast %union.FIRST_UNION* %ou13278 to %struct.anon*
  %otype3280 = getelementptr inbounds %struct.anon, %struct.anon* %os113279, i32 0, i32 0
  %1666 = load i8, i8* %otype3280, align 1
  %conv3281 = zext i8 %1666 to i32
  %cmp3282 = icmp sge i32 %conv3281, 9
  br i1 %cmp3282, label %land.lhs.true.3284, label %if.then.3295

land.lhs.true.3284:                               ; preds = %for.end.3276
  %1667 = load %union.rec*, %union.rec** %z, align 8
  %os13285 = bitcast %union.rec* %1667 to %struct.word_type*
  %ou13286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13285, i32 0, i32 1
  %os113287 = bitcast %union.FIRST_UNION* %ou13286 to %struct.anon*
  %otype3288 = getelementptr inbounds %struct.anon, %struct.anon* %os113287, i32 0, i32 0
  %1668 = load i8, i8* %otype3288, align 1
  %conv3289 = zext i8 %1668 to i32
  %cmp3290 = icmp sle i32 %conv3289, 99
  br i1 %cmp3290, label %lor.lhs.false.3292, label %if.then.3295

lor.lhs.false.3292:                               ; preds = %land.lhs.true.3284
  %1669 = load %union.rec*, %union.rec** %z, align 8
  %1670 = load %union.rec*, %union.rec** %m, align 8
  %cmp3293 = icmp eq %union.rec* %1669, %1670
  br i1 %cmp3293, label %if.then.3295, label %if.end.3296

if.then.3295:                                     ; preds = %lor.lhs.false.3292, %land.lhs.true.3284, %for.end.3276
  br label %for.inc.3310

if.end.3296:                                      ; preds = %lor.lhs.false.3292
  %1671 = load %union.rec*, %union.rec** %z, align 8
  %1672 = load i32, i32* %xmk.addr, align 4
  %1673 = load i32, i32* %xb.addr, align 4
  %1674 = load i32, i32* %xf.addr, align 4
  %1675 = load i32, i32* %dim.addr, align 4
  %1676 = load i32, i32* %pg.addr, align 4
  %1677 = load i32, i32* %count.addr, align 4
  %call3297 = call %union.rec* @FixAndPrintObject(%union.rec* %1671, i32 %1672, i32 %1673, i32 %1674, i32 %1675, i32 1, i32 %1676, i32 %1677, i32* %aback, i32* %afwd)
  store %union.rec* %call3297, %union.rec** %z, align 8
  %1678 = load i32, i32* %b, align 4
  %1679 = load i32, i32* %aback, align 4
  %cmp3298 = icmp slt i32 %1678, %1679
  br i1 %cmp3298, label %cond.true.3300, label %cond.false.3301

cond.true.3300:                                   ; preds = %if.end.3296
  %1680 = load i32, i32* %aback, align 4
  br label %cond.end.3302

cond.false.3301:                                  ; preds = %if.end.3296
  %1681 = load i32, i32* %b, align 4
  br label %cond.end.3302

cond.end.3302:                                    ; preds = %cond.false.3301, %cond.true.3300
  %cond3303 = phi i32 [ %1680, %cond.true.3300 ], [ %1681, %cond.false.3301 ]
  store i32 %cond3303, i32* %b, align 4
  %1682 = load i32, i32* %f2665, align 4
  %1683 = load i32, i32* %afwd, align 4
  %cmp3304 = icmp slt i32 %1682, %1683
  br i1 %cmp3304, label %cond.true.3306, label %cond.false.3307

cond.true.3306:                                   ; preds = %cond.end.3302
  %1684 = load i32, i32* %afwd, align 4
  br label %cond.end.3308

cond.false.3307:                                  ; preds = %cond.end.3302
  %1685 = load i32, i32* %f2665, align 4
  br label %cond.end.3308

cond.end.3308:                                    ; preds = %cond.false.3307, %cond.true.3306
  %cond3309 = phi i32 [ %1684, %cond.true.3306 ], [ %1685, %cond.false.3307 ]
  store i32 %cond3309, i32* %f2665, align 4
  br label %for.inc.3310

for.inc.3310:                                     ; preds = %cond.end.3308, %if.then.3295
  %1686 = load %union.rec*, %union.rec** %zlink, align 8
  %os13311 = bitcast %union.rec* %1686 to %struct.word_type*
  %olist3312 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13311, i32 0, i32 0
  %arrayidx3313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3312, i32 0, i64 0
  %osucc3314 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3313, i32 0, i32 1
  %1687 = load %union.rec*, %union.rec** %osucc3314, align 8
  store %union.rec* %1687, %union.rec** %zlink, align 8
  br label %for.cond.3253

for.end.3315:                                     ; preds = %for.cond.3253
  %1688 = load i32, i32* %b, align 4
  %1689 = load i32*, i32** %actual_back.addr, align 8
  store i32 %1688, i32* %1689, align 4
  %1690 = load i32, i32* %f2665, align 4
  %1691 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %1690, i32* %1691, align 4
  br label %if.end.3316

if.end.3316:                                      ; preds = %for.end.3315, %cond.end.3249
  br label %if.end.3317

if.end.3317:                                      ; preds = %if.end.3316, %for.end.2750
  br label %if.end.3318

if.end.3318:                                      ; preds = %if.end.3317, %if.end.2657
  br label %sw.epilog.5829

sw.bb.3319:                                       ; preds = %entry
  %1692 = load i32, i32* %dim.addr, align 4
  %cmp3320 = icmp eq i32 %1692, 0
  br i1 %cmp3320, label %if.then.3322, label %if.else.5276

if.then.3322:                                     ; preds = %sw.bb.3319
  store i32 1, i32* %jn, align 4
  %1693 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13343 = bitcast %union.rec* %1693 to %struct.word_type*
  %olist3344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13343, i32 0, i32 0
  %arrayidx3345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3344, i32 0, i64 0
  %osucc3346 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3345, i32 0, i32 1
  %1694 = load %union.rec*, %union.rec** %osucc3346, align 8
  store %union.rec* %1694, %union.rec** %link, align 8
  br label %for.cond.3347

for.cond.3347:                                    ; preds = %for.inc.3421, %if.then.3322
  %1695 = load %union.rec*, %union.rec** %link, align 8
  %1696 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3348 = icmp ne %union.rec* %1695, %1696
  br i1 %cmp3348, label %for.body.3350, label %for.end.3426

for.body.3350:                                    ; preds = %for.cond.3347
  %1697 = load %union.rec*, %union.rec** %link, align 8
  %os13351 = bitcast %union.rec* %1697 to %struct.word_type*
  %olist3352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13351, i32 0, i32 0
  %arrayidx3353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3352, i32 0, i64 1
  %opred3354 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3353, i32 0, i32 0
  %1698 = load %union.rec*, %union.rec** %opred3354, align 8
  store %union.rec* %1698, %union.rec** %y, align 8
  br label %for.cond.3355

for.cond.3355:                                    ; preds = %for.inc.3364, %for.body.3350
  %1699 = load %union.rec*, %union.rec** %y, align 8
  %os13356 = bitcast %union.rec* %1699 to %struct.word_type*
  %ou13357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13356, i32 0, i32 1
  %os113358 = bitcast %union.FIRST_UNION* %ou13357 to %struct.anon*
  %otype3359 = getelementptr inbounds %struct.anon, %struct.anon* %os113358, i32 0, i32 0
  %1700 = load i8, i8* %otype3359, align 1
  %conv3360 = zext i8 %1700 to i32
  %cmp3361 = icmp eq i32 %conv3360, 0
  br i1 %cmp3361, label %for.body.3363, label %for.end.3369

for.body.3363:                                    ; preds = %for.cond.3355
  br label %for.inc.3364

for.inc.3364:                                     ; preds = %for.body.3363
  %1701 = load %union.rec*, %union.rec** %y, align 8
  %os13365 = bitcast %union.rec* %1701 to %struct.word_type*
  %olist3366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13365, i32 0, i32 0
  %arrayidx3367 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3366, i32 0, i64 1
  %opred3368 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3367, i32 0, i32 0
  %1702 = load %union.rec*, %union.rec** %opred3368, align 8
  store %union.rec* %1702, %union.rec** %y, align 8
  br label %for.cond.3355

for.end.3369:                                     ; preds = %for.cond.3355
  %1703 = load %union.rec*, %union.rec** %y, align 8
  %os13370 = bitcast %union.rec* %1703 to %struct.word_type*
  %ou13371 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13370, i32 0, i32 1
  %os113372 = bitcast %union.FIRST_UNION* %ou13371 to %struct.anon*
  %otype3373 = getelementptr inbounds %struct.anon, %struct.anon* %os113372, i32 0, i32 0
  %1704 = load i8, i8* %otype3373, align 1
  %conv3374 = zext i8 %1704 to i32
  %cmp3375 = icmp eq i32 %conv3374, 1
  br i1 %cmp3375, label %if.then.3377, label %if.else.3389

if.then.3377:                                     ; preds = %for.end.3369
  %1705 = load i32, i32* %jn, align 4
  %tobool3378 = icmp ne i32 %1705, 0
  br i1 %tobool3378, label %land.rhs.3379, label %land.end.3387

land.rhs.3379:                                    ; preds = %if.then.3377
  %1706 = load %union.rec*, %union.rec** %y, align 8
  %os53380 = bitcast %union.rec* %1706 to %struct.gapobj_type*
  %ogap3381 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53380, i32 0, i32 3
  %1707 = bitcast %struct.GAP* %ogap3381 to i16*
  %bf.load3382 = load i16, i16* %1707, align 4
  %bf.lshr3383 = lshr i16 %bf.load3382, 9
  %bf.clear3384 = and i16 %bf.lshr3383, 1
  %bf.cast3385 = zext i16 %bf.clear3384 to i32
  %tobool3386 = icmp ne i32 %bf.cast3385, 0
  br label %land.end.3387

land.end.3387:                                    ; preds = %land.rhs.3379, %if.then.3377
  %1708 = phi i1 [ false, %if.then.3377 ], [ %tobool3386, %land.rhs.3379 ]
  %land.ext3388 = zext i1 %1708 to i32
  store i32 %land.ext3388, i32* %jn, align 4
  br label %if.end.3420

if.else.3389:                                     ; preds = %for.end.3369
  %1709 = load %union.rec*, %union.rec** %y, align 8
  %os13390 = bitcast %union.rec* %1709 to %struct.word_type*
  %ou13391 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13390, i32 0, i32 1
  %os113392 = bitcast %union.FIRST_UNION* %ou13391 to %struct.anon*
  %otype3393 = getelementptr inbounds %struct.anon, %struct.anon* %os113392, i32 0, i32 0
  %1710 = load i8, i8* %otype3393, align 1
  %conv3394 = zext i8 %1710 to i32
  %cmp3395 = icmp eq i32 %conv3394, 9
  br i1 %cmp3395, label %cond.true.3397, label %cond.false.3400

cond.true.3397:                                   ; preds = %if.else.3389
  %1711 = load %union.rec*, %union.rec** %y, align 8
  %call3398 = call i32 @SplitIsDefinite(%union.rec* %1711)
  %tobool3399 = icmp ne i32 %call3398, 0
  br i1 %tobool3399, label %if.then.3418, label %if.end.3419

cond.false.3400:                                  ; preds = %if.else.3389
  %1712 = load %union.rec*, %union.rec** %y, align 8
  %os13401 = bitcast %union.rec* %1712 to %struct.word_type*
  %ou13402 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13401, i32 0, i32 1
  %os113403 = bitcast %union.FIRST_UNION* %ou13402 to %struct.anon*
  %otype3404 = getelementptr inbounds %struct.anon, %struct.anon* %os113403, i32 0, i32 0
  %1713 = load i8, i8* %otype3404, align 1
  %conv3405 = zext i8 %1713 to i32
  %cmp3406 = icmp sge i32 %conv3405, 9
  br i1 %cmp3406, label %land.rhs.3408, label %land.end.3416

land.rhs.3408:                                    ; preds = %cond.false.3400
  %1714 = load %union.rec*, %union.rec** %y, align 8
  %os13409 = bitcast %union.rec* %1714 to %struct.word_type*
  %ou13410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13409, i32 0, i32 1
  %os113411 = bitcast %union.FIRST_UNION* %ou13410 to %struct.anon*
  %otype3412 = getelementptr inbounds %struct.anon, %struct.anon* %os113411, i32 0, i32 0
  %1715 = load i8, i8* %otype3412, align 1
  %conv3413 = zext i8 %1715 to i32
  %cmp3414 = icmp sle i32 %conv3413, 99
  br label %land.end.3416

land.end.3416:                                    ; preds = %land.rhs.3408, %cond.false.3400
  %1716 = phi i1 [ false, %cond.false.3400 ], [ %cmp3414, %land.rhs.3408 ]
  br i1 %1716, label %if.then.3418, label %if.end.3419

if.then.3418:                                     ; preds = %land.end.3416, %cond.true.3397
  br label %for.end.3426

if.end.3419:                                      ; preds = %land.end.3416, %cond.true.3397
  br label %if.end.3420

if.end.3420:                                      ; preds = %if.end.3419, %land.end.3387
  br label %for.inc.3421

for.inc.3421:                                     ; preds = %if.end.3420
  %1717 = load %union.rec*, %union.rec** %link, align 8
  %os13422 = bitcast %union.rec* %1717 to %struct.word_type*
  %olist3423 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13422, i32 0, i32 0
  %arrayidx3424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3423, i32 0, i64 0
  %osucc3425 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3424, i32 0, i32 1
  %1718 = load %union.rec*, %union.rec** %osucc3425, align 8
  store %union.rec* %1718, %union.rec** %link, align 8
  br label %for.cond.3347

for.end.3426:                                     ; preds = %if.then.3418, %for.cond.3347
  %1719 = load %union.rec*, %union.rec** %link, align 8
  %1720 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3427 = icmp eq %union.rec* %1719, %1720
  br i1 %cmp3427, label %if.then.3429, label %if.end.3442

if.then.3429:                                     ; preds = %for.end.3426
  %1721 = load i32, i32* %dim.addr, align 4
  %idxprom3430 = sext i32 %1721 to i64
  %1722 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13431 = bitcast %union.rec* %1722 to %struct.word_type*
  %ou33432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13431, i32 0, i32 3
  %os313433 = bitcast %union.THIRD_UNION* %ou33432 to %struct.anon.6*
  %oback3434 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313433, i32 0, i32 0
  %arrayidx3435 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3434, i32 0, i64 %idxprom3430
  %1723 = load i32, i32* %arrayidx3435, align 4
  %1724 = load i32*, i32** %actual_back.addr, align 8
  store i32 %1723, i32* %1724, align 4
  %1725 = load i32, i32* %dim.addr, align 4
  %idxprom3436 = sext i32 %1725 to i64
  %1726 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13437 = bitcast %union.rec* %1726 to %struct.word_type*
  %ou33438 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13437, i32 0, i32 3
  %os313439 = bitcast %union.THIRD_UNION* %ou33438 to %struct.anon.6*
  %ofwd3440 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313439, i32 0, i32 1
  %arrayidx3441 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3440, i32 0, i64 %idxprom3436
  %1727 = load i32, i32* %arrayidx3441, align 4
  %1728 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %1727, i32* %1728, align 4
  br label %sw.epilog.5829

if.end.3442:                                      ; preds = %for.end.3426
  store %union.rec* null, %union.rec** %last_bad_gap, align 8
  store i32 0, i32* %adjustable_gaps, align 4
  %1729 = load i32, i32* %xmk.addr, align 4
  %1730 = load i32, i32* %xb.addr, align 4
  %sub3443 = sub nsw i32 %1729, %1730
  store i32 %sub3443, i32* %back_edge3330, align 4
  %1731 = load i32, i32* %back_edge3330, align 4
  %1732 = load i32, i32* %dim.addr, align 4
  %idxprom3444 = sext i32 %1732 to i64
  %1733 = load %union.rec*, %union.rec** %y, align 8
  %os13445 = bitcast %union.rec* %1733 to %struct.word_type*
  %ou33446 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13445, i32 0, i32 3
  %os313447 = bitcast %union.THIRD_UNION* %ou33446 to %struct.anon.6*
  %oback3448 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313447, i32 0, i32 0
  %arrayidx3449 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3448, i32 0, i64 %idxprom3444
  %1734 = load i32, i32* %arrayidx3449, align 4
  %add3450 = add nsw i32 %1731, %1734
  store i32 %add3450, i32* %mk, align 4
  %1735 = load i32, i32* %xb.addr, align 4
  %1736 = load i32, i32* %xf.addr, align 4
  %add3451 = add nsw i32 %1735, %1736
  store i32 %add3451, i32* %frame_size3328, align 4
  %1737 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1737, %union.rec** %prev, align 8
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %1738 = load %union.rec*, %union.rec** %link, align 8
  %os13452 = bitcast %union.rec* %1738 to %struct.word_type*
  %olist3453 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13452, i32 0, i32 0
  %arrayidx3454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3453, i32 0, i64 0
  %osucc3455 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3454, i32 0, i32 1
  %1739 = load %union.rec*, %union.rec** %osucc3455, align 8
  store %union.rec* %1739, %union.rec** %link, align 8
  br label %for.cond.3456

for.cond.3456:                                    ; preds = %for.inc.3535, %if.end.3442
  %1740 = load %union.rec*, %union.rec** %link, align 8
  %1741 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3457 = icmp ne %union.rec* %1740, %1741
  br i1 %cmp3457, label %for.body.3459, label %for.end.3540

for.body.3459:                                    ; preds = %for.cond.3456
  %1742 = load %union.rec*, %union.rec** %link, align 8
  %os13460 = bitcast %union.rec* %1742 to %struct.word_type*
  %olist3461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13460, i32 0, i32 0
  %arrayidx3462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3461, i32 0, i64 1
  %opred3463 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3462, i32 0, i32 0
  %1743 = load %union.rec*, %union.rec** %opred3463, align 8
  store %union.rec* %1743, %union.rec** %y, align 8
  br label %for.cond.3464

for.cond.3464:                                    ; preds = %for.inc.3473, %for.body.3459
  %1744 = load %union.rec*, %union.rec** %y, align 8
  %os13465 = bitcast %union.rec* %1744 to %struct.word_type*
  %ou13466 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13465, i32 0, i32 1
  %os113467 = bitcast %union.FIRST_UNION* %ou13466 to %struct.anon*
  %otype3468 = getelementptr inbounds %struct.anon, %struct.anon* %os113467, i32 0, i32 0
  %1745 = load i8, i8* %otype3468, align 1
  %conv3469 = zext i8 %1745 to i32
  %cmp3470 = icmp eq i32 %conv3469, 0
  br i1 %cmp3470, label %for.body.3472, label %for.end.3478

for.body.3472:                                    ; preds = %for.cond.3464
  br label %for.inc.3473

for.inc.3473:                                     ; preds = %for.body.3472
  %1746 = load %union.rec*, %union.rec** %y, align 8
  %os13474 = bitcast %union.rec* %1746 to %struct.word_type*
  %olist3475 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13474, i32 0, i32 0
  %arrayidx3476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3475, i32 0, i64 1
  %opred3477 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3476, i32 0, i32 0
  %1747 = load %union.rec*, %union.rec** %opred3477, align 8
  store %union.rec* %1747, %union.rec** %y, align 8
  br label %for.cond.3464

for.end.3478:                                     ; preds = %for.cond.3464
  %1748 = load %union.rec*, %union.rec** %y, align 8
  %os13479 = bitcast %union.rec* %1748 to %struct.word_type*
  %ou13480 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13479, i32 0, i32 1
  %os113481 = bitcast %union.FIRST_UNION* %ou13480 to %struct.anon*
  %otype3482 = getelementptr inbounds %struct.anon, %struct.anon* %os113481, i32 0, i32 0
  %1749 = load i8, i8* %otype3482, align 1
  %conv3483 = zext i8 %1749 to i32
  %cmp3484 = icmp eq i32 %conv3483, 1
  br i1 %cmp3484, label %if.then.3486, label %if.else.3498

if.then.3486:                                     ; preds = %for.end.3478
  %1750 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1750, %union.rec** %g, align 8
  %1751 = load i32, i32* %jn, align 4
  %tobool3487 = icmp ne i32 %1751, 0
  br i1 %tobool3487, label %land.rhs.3488, label %land.end.3496

land.rhs.3488:                                    ; preds = %if.then.3486
  %1752 = load %union.rec*, %union.rec** %y, align 8
  %os53489 = bitcast %union.rec* %1752 to %struct.gapobj_type*
  %ogap3490 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53489, i32 0, i32 3
  %1753 = bitcast %struct.GAP* %ogap3490 to i16*
  %bf.load3491 = load i16, i16* %1753, align 4
  %bf.lshr3492 = lshr i16 %bf.load3491, 9
  %bf.clear3493 = and i16 %bf.lshr3492, 1
  %bf.cast3494 = zext i16 %bf.clear3493 to i32
  %tobool3495 = icmp ne i32 %bf.cast3494, 0
  br label %land.end.3496

land.end.3496:                                    ; preds = %land.rhs.3488, %if.then.3486
  %1754 = phi i1 [ false, %if.then.3486 ], [ %tobool3495, %land.rhs.3488 ]
  %land.ext3497 = zext i1 %1754 to i32
  store i32 %land.ext3497, i32* %jn, align 4
  br label %if.end.3534

if.else.3498:                                     ; preds = %for.end.3478
  %1755 = load %union.rec*, %union.rec** %y, align 8
  %os13499 = bitcast %union.rec* %1755 to %struct.word_type*
  %ou13500 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13499, i32 0, i32 1
  %os113501 = bitcast %union.FIRST_UNION* %ou13500 to %struct.anon*
  %otype3502 = getelementptr inbounds %struct.anon, %struct.anon* %os113501, i32 0, i32 0
  %1756 = load i8, i8* %otype3502, align 1
  %conv3503 = zext i8 %1756 to i32
  %cmp3504 = icmp eq i32 %conv3503, 9
  br i1 %cmp3504, label %cond.true.3506, label %cond.false.3509

cond.true.3506:                                   ; preds = %if.else.3498
  %1757 = load %union.rec*, %union.rec** %y, align 8
  %call3507 = call i32 @SplitIsDefinite(%union.rec* %1757)
  %tobool3508 = icmp ne i32 %call3507, 0
  br i1 %tobool3508, label %if.then.3527, label %if.end.3533

cond.false.3509:                                  ; preds = %if.else.3498
  %1758 = load %union.rec*, %union.rec** %y, align 8
  %os13510 = bitcast %union.rec* %1758 to %struct.word_type*
  %ou13511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13510, i32 0, i32 1
  %os113512 = bitcast %union.FIRST_UNION* %ou13511 to %struct.anon*
  %otype3513 = getelementptr inbounds %struct.anon, %struct.anon* %os113512, i32 0, i32 0
  %1759 = load i8, i8* %otype3513, align 1
  %conv3514 = zext i8 %1759 to i32
  %cmp3515 = icmp sge i32 %conv3514, 9
  br i1 %cmp3515, label %land.rhs.3517, label %land.end.3525

land.rhs.3517:                                    ; preds = %cond.false.3509
  %1760 = load %union.rec*, %union.rec** %y, align 8
  %os13518 = bitcast %union.rec* %1760 to %struct.word_type*
  %ou13519 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13518, i32 0, i32 1
  %os113520 = bitcast %union.FIRST_UNION* %ou13519 to %struct.anon*
  %otype3521 = getelementptr inbounds %struct.anon, %struct.anon* %os113520, i32 0, i32 0
  %1761 = load i8, i8* %otype3521, align 1
  %conv3522 = zext i8 %1761 to i32
  %cmp3523 = icmp sle i32 %conv3522, 99
  br label %land.end.3525

land.end.3525:                                    ; preds = %land.rhs.3517, %cond.false.3509
  %1762 = phi i1 [ false, %cond.false.3509 ], [ %cmp3523, %land.rhs.3517 ]
  br i1 %1762, label %if.then.3527, label %if.end.3533

if.then.3527:                                     ; preds = %land.end.3525, %cond.true.3506
  %1763 = load %union.rec*, %union.rec** %g, align 8
  %cmp3528 = icmp ne %union.rec* %1763, null
  br i1 %cmp3528, label %if.end.3532, label %if.then.3530

if.then.3530:                                     ; preds = %if.then.3527
  %1764 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3531 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1764, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.3532

if.end.3532:                                      ; preds = %if.then.3530, %if.then.3527
  br label %for.end.3540

if.end.3533:                                      ; preds = %land.end.3525, %cond.true.3506
  br label %if.end.3534

if.end.3534:                                      ; preds = %if.end.3533, %land.end.3496
  br label %for.inc.3535

for.inc.3535:                                     ; preds = %if.end.3534
  %1765 = load %union.rec*, %union.rec** %link, align 8
  %os13536 = bitcast %union.rec* %1765 to %struct.word_type*
  %olist3537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13536, i32 0, i32 0
  %arrayidx3538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3537, i32 0, i64 0
  %osucc3539 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3538, i32 0, i32 1
  %1766 = load %union.rec*, %union.rec** %osucc3539, align 8
  store %union.rec* %1766, %union.rec** %link, align 8
  br label %for.cond.3456

for.end.3540:                                     ; preds = %if.end.3532, %for.cond.3456
  br label %while.cond.3541

while.cond.3541:                                  ; preds = %for.end.3698, %for.end.3540
  %1767 = load %union.rec*, %union.rec** %link, align 8
  %1768 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3542 = icmp ne %union.rec* %1767, %1768
  br i1 %cmp3542, label %while.body.3544, label %while.end.3699

while.body.3544:                                  ; preds = %while.cond.3541
  %1769 = load i32, i32* %dim.addr, align 4
  %idxprom3545 = sext i32 %1769 to i64
  %1770 = load %union.rec*, %union.rec** %prev, align 8
  %os13546 = bitcast %union.rec* %1770 to %struct.word_type*
  %ou33547 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13546, i32 0, i32 3
  %os313548 = bitcast %union.THIRD_UNION* %ou33547 to %struct.anon.6*
  %ofwd3549 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313548, i32 0, i32 1
  %arrayidx3550 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3549, i32 0, i64 %idxprom3545
  %1771 = load i32, i32* %arrayidx3550, align 4
  %1772 = load i32, i32* %dim.addr, align 4
  %idxprom3551 = sext i32 %1772 to i64
  %1773 = load %union.rec*, %union.rec** %y, align 8
  %os13552 = bitcast %union.rec* %1773 to %struct.word_type*
  %ou33553 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13552, i32 0, i32 3
  %os313554 = bitcast %union.THIRD_UNION* %ou33553 to %struct.anon.6*
  %oback3555 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313554, i32 0, i32 0
  %arrayidx3556 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3555, i32 0, i64 %idxprom3551
  %1774 = load i32, i32* %arrayidx3556, align 4
  %1775 = load i32, i32* %dim.addr, align 4
  %idxprom3557 = sext i32 %1775 to i64
  %1776 = load %union.rec*, %union.rec** %y, align 8
  %os13558 = bitcast %union.rec* %1776 to %struct.word_type*
  %ou33559 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13558, i32 0, i32 3
  %os313560 = bitcast %union.THIRD_UNION* %ou33559 to %struct.anon.6*
  %ofwd3561 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313560, i32 0, i32 1
  %arrayidx3562 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3561, i32 0, i64 %idxprom3557
  %1777 = load i32, i32* %arrayidx3562, align 4
  %1778 = load %union.rec*, %union.rec** %g, align 8
  %os53563 = bitcast %union.rec* %1778 to %struct.gapobj_type*
  %ogap3564 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53563, i32 0, i32 3
  %1779 = load i32, i32* %frame_size3328, align 4
  %1780 = load i32, i32* %mk, align 4
  %1781 = load i32, i32* %back_edge3330, align 4
  %sub3565 = sub nsw i32 %1780, %1781
  %call3566 = call i32 @ActualGap(i32 %1771, i32 %1774, i32 %1777, %struct.GAP* %ogap3564, i32 %1779, i32 %sub3565)
  %conv3567 = trunc i32 %call3566 to i16
  %1782 = load %union.rec*, %union.rec** %g, align 8
  %os53568 = bitcast %union.rec* %1782 to %struct.gapobj_type*
  %osave_actual_gap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53568, i32 0, i32 6
  store i16 %conv3567, i16* %osave_actual_gap, align 2
  %1783 = load %union.rec*, %union.rec** %g, align 8
  %os53569 = bitcast %union.rec* %1783 to %struct.gapobj_type*
  %osave_actual_gap3570 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53569, i32 0, i32 6
  %1784 = load i16, i16* %osave_actual_gap3570, align 2
  %conv3571 = sext i16 %1784 to i32
  %1785 = load i32, i32* %mk, align 4
  %add3572 = add nsw i32 %1785, %conv3571
  store i32 %add3572, i32* %mk, align 4
  %1786 = load %union.rec*, %union.rec** %g, align 8
  %os53573 = bitcast %union.rec* %1786 to %struct.gapobj_type*
  %ogap3574 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53573, i32 0, i32 3
  %1787 = bitcast %struct.GAP* %ogap3574 to i16*
  %bf.load3575 = load i16, i16* %1787, align 4
  %bf.lshr3576 = lshr i16 %bf.load3575, 13
  %bf.cast3577 = zext i16 %bf.lshr3576 to i32
  %cmp3578 = icmp eq i32 %bf.cast3577, 6
  br i1 %cmp3578, label %if.then.3598, label %lor.lhs.false.3580

lor.lhs.false.3580:                               ; preds = %while.body.3544
  %1788 = load %union.rec*, %union.rec** %g, align 8
  %os53581 = bitcast %union.rec* %1788 to %struct.gapobj_type*
  %ogap3582 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53581, i32 0, i32 3
  %1789 = bitcast %struct.GAP* %ogap3582 to i16*
  %bf.load3583 = load i16, i16* %1789, align 4
  %bf.lshr3584 = lshr i16 %bf.load3583, 10
  %bf.clear3585 = and i16 %bf.lshr3584, 7
  %bf.cast3586 = zext i16 %bf.clear3585 to i32
  %cmp3587 = icmp eq i32 %bf.cast3586, 3
  br i1 %cmp3587, label %if.then.3598, label %lor.lhs.false.3589

lor.lhs.false.3589:                               ; preds = %lor.lhs.false.3580
  %1790 = load %union.rec*, %union.rec** %g, align 8
  %os53590 = bitcast %union.rec* %1790 to %struct.gapobj_type*
  %ogap3591 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53590, i32 0, i32 3
  %1791 = bitcast %struct.GAP* %ogap3591 to i16*
  %bf.load3592 = load i16, i16* %1791, align 4
  %bf.lshr3593 = lshr i16 %bf.load3592, 10
  %bf.clear3594 = and i16 %bf.lshr3593, 7
  %bf.cast3595 = zext i16 %bf.clear3594 to i32
  %cmp3596 = icmp eq i32 %bf.cast3595, 2
  br i1 %cmp3596, label %if.then.3598, label %if.else.3599

if.then.3598:                                     ; preds = %lor.lhs.false.3589, %lor.lhs.false.3580, %while.body.3544
  %1792 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %1792, %union.rec** %last_bad_gap, align 8
  store i32 0, i32* %adjustable_gaps, align 4
  br label %if.end.3609

if.else.3599:                                     ; preds = %lor.lhs.false.3589
  %1793 = load %union.rec*, %union.rec** %g, align 8
  %os53600 = bitcast %union.rec* %1793 to %struct.gapobj_type*
  %ogap3601 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53600, i32 0, i32 3
  %owidth3602 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap3601, i32 0, i32 1
  %1794 = load i16, i16* %owidth3602, align 2
  %conv3603 = sext i16 %1794 to i32
  %cmp3604 = icmp sgt i32 %conv3603, 0
  br i1 %cmp3604, label %if.then.3606, label %if.end.3608

if.then.3606:                                     ; preds = %if.else.3599
  %1795 = load i32, i32* %adjustable_gaps, align 4
  %inc3607 = add nsw i32 %1795, 1
  store i32 %inc3607, i32* %adjustable_gaps, align 4
  br label %if.end.3608

if.end.3608:                                      ; preds = %if.then.3606, %if.else.3599
  br label %if.end.3609

if.end.3609:                                      ; preds = %if.end.3608, %if.then.3598
  %1796 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1796, %union.rec** %prev, align 8
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %1797 = load %union.rec*, %union.rec** %link, align 8
  %os13610 = bitcast %union.rec* %1797 to %struct.word_type*
  %olist3611 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13610, i32 0, i32 0
  %arrayidx3612 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3611, i32 0, i64 0
  %osucc3613 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3612, i32 0, i32 1
  %1798 = load %union.rec*, %union.rec** %osucc3613, align 8
  store %union.rec* %1798, %union.rec** %link, align 8
  br label %for.cond.3614

for.cond.3614:                                    ; preds = %for.inc.3693, %if.end.3609
  %1799 = load %union.rec*, %union.rec** %link, align 8
  %1800 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3615 = icmp ne %union.rec* %1799, %1800
  br i1 %cmp3615, label %for.body.3617, label %for.end.3698

for.body.3617:                                    ; preds = %for.cond.3614
  %1801 = load %union.rec*, %union.rec** %link, align 8
  %os13618 = bitcast %union.rec* %1801 to %struct.word_type*
  %olist3619 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13618, i32 0, i32 0
  %arrayidx3620 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3619, i32 0, i64 1
  %opred3621 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3620, i32 0, i32 0
  %1802 = load %union.rec*, %union.rec** %opred3621, align 8
  store %union.rec* %1802, %union.rec** %y, align 8
  br label %for.cond.3622

for.cond.3622:                                    ; preds = %for.inc.3631, %for.body.3617
  %1803 = load %union.rec*, %union.rec** %y, align 8
  %os13623 = bitcast %union.rec* %1803 to %struct.word_type*
  %ou13624 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13623, i32 0, i32 1
  %os113625 = bitcast %union.FIRST_UNION* %ou13624 to %struct.anon*
  %otype3626 = getelementptr inbounds %struct.anon, %struct.anon* %os113625, i32 0, i32 0
  %1804 = load i8, i8* %otype3626, align 1
  %conv3627 = zext i8 %1804 to i32
  %cmp3628 = icmp eq i32 %conv3627, 0
  br i1 %cmp3628, label %for.body.3630, label %for.end.3636

for.body.3630:                                    ; preds = %for.cond.3622
  br label %for.inc.3631

for.inc.3631:                                     ; preds = %for.body.3630
  %1805 = load %union.rec*, %union.rec** %y, align 8
  %os13632 = bitcast %union.rec* %1805 to %struct.word_type*
  %olist3633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13632, i32 0, i32 0
  %arrayidx3634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3633, i32 0, i64 1
  %opred3635 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3634, i32 0, i32 0
  %1806 = load %union.rec*, %union.rec** %opred3635, align 8
  store %union.rec* %1806, %union.rec** %y, align 8
  br label %for.cond.3622

for.end.3636:                                     ; preds = %for.cond.3622
  %1807 = load %union.rec*, %union.rec** %y, align 8
  %os13637 = bitcast %union.rec* %1807 to %struct.word_type*
  %ou13638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13637, i32 0, i32 1
  %os113639 = bitcast %union.FIRST_UNION* %ou13638 to %struct.anon*
  %otype3640 = getelementptr inbounds %struct.anon, %struct.anon* %os113639, i32 0, i32 0
  %1808 = load i8, i8* %otype3640, align 1
  %conv3641 = zext i8 %1808 to i32
  %cmp3642 = icmp eq i32 %conv3641, 1
  br i1 %cmp3642, label %if.then.3644, label %if.else.3656

if.then.3644:                                     ; preds = %for.end.3636
  %1809 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1809, %union.rec** %g, align 8
  %1810 = load i32, i32* %jn, align 4
  %tobool3645 = icmp ne i32 %1810, 0
  br i1 %tobool3645, label %land.rhs.3646, label %land.end.3654

land.rhs.3646:                                    ; preds = %if.then.3644
  %1811 = load %union.rec*, %union.rec** %y, align 8
  %os53647 = bitcast %union.rec* %1811 to %struct.gapobj_type*
  %ogap3648 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os53647, i32 0, i32 3
  %1812 = bitcast %struct.GAP* %ogap3648 to i16*
  %bf.load3649 = load i16, i16* %1812, align 4
  %bf.lshr3650 = lshr i16 %bf.load3649, 9
  %bf.clear3651 = and i16 %bf.lshr3650, 1
  %bf.cast3652 = zext i16 %bf.clear3651 to i32
  %tobool3653 = icmp ne i32 %bf.cast3652, 0
  br label %land.end.3654

land.end.3654:                                    ; preds = %land.rhs.3646, %if.then.3644
  %1813 = phi i1 [ false, %if.then.3644 ], [ %tobool3653, %land.rhs.3646 ]
  %land.ext3655 = zext i1 %1813 to i32
  store i32 %land.ext3655, i32* %jn, align 4
  br label %if.end.3692

if.else.3656:                                     ; preds = %for.end.3636
  %1814 = load %union.rec*, %union.rec** %y, align 8
  %os13657 = bitcast %union.rec* %1814 to %struct.word_type*
  %ou13658 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13657, i32 0, i32 1
  %os113659 = bitcast %union.FIRST_UNION* %ou13658 to %struct.anon*
  %otype3660 = getelementptr inbounds %struct.anon, %struct.anon* %os113659, i32 0, i32 0
  %1815 = load i8, i8* %otype3660, align 1
  %conv3661 = zext i8 %1815 to i32
  %cmp3662 = icmp eq i32 %conv3661, 9
  br i1 %cmp3662, label %cond.true.3664, label %cond.false.3667

cond.true.3664:                                   ; preds = %if.else.3656
  %1816 = load %union.rec*, %union.rec** %y, align 8
  %call3665 = call i32 @SplitIsDefinite(%union.rec* %1816)
  %tobool3666 = icmp ne i32 %call3665, 0
  br i1 %tobool3666, label %if.then.3685, label %if.end.3691

cond.false.3667:                                  ; preds = %if.else.3656
  %1817 = load %union.rec*, %union.rec** %y, align 8
  %os13668 = bitcast %union.rec* %1817 to %struct.word_type*
  %ou13669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13668, i32 0, i32 1
  %os113670 = bitcast %union.FIRST_UNION* %ou13669 to %struct.anon*
  %otype3671 = getelementptr inbounds %struct.anon, %struct.anon* %os113670, i32 0, i32 0
  %1818 = load i8, i8* %otype3671, align 1
  %conv3672 = zext i8 %1818 to i32
  %cmp3673 = icmp sge i32 %conv3672, 9
  br i1 %cmp3673, label %land.rhs.3675, label %land.end.3683

land.rhs.3675:                                    ; preds = %cond.false.3667
  %1819 = load %union.rec*, %union.rec** %y, align 8
  %os13676 = bitcast %union.rec* %1819 to %struct.word_type*
  %ou13677 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13676, i32 0, i32 1
  %os113678 = bitcast %union.FIRST_UNION* %ou13677 to %struct.anon*
  %otype3679 = getelementptr inbounds %struct.anon, %struct.anon* %os113678, i32 0, i32 0
  %1820 = load i8, i8* %otype3679, align 1
  %conv3680 = zext i8 %1820 to i32
  %cmp3681 = icmp sle i32 %conv3680, 99
  br label %land.end.3683

land.end.3683:                                    ; preds = %land.rhs.3675, %cond.false.3667
  %1821 = phi i1 [ false, %cond.false.3667 ], [ %cmp3681, %land.rhs.3675 ]
  br i1 %1821, label %if.then.3685, label %if.end.3691

if.then.3685:                                     ; preds = %land.end.3683, %cond.true.3664
  %1822 = load %union.rec*, %union.rec** %g, align 8
  %cmp3686 = icmp ne %union.rec* %1822, null
  br i1 %cmp3686, label %if.end.3690, label %if.then.3688

if.then.3688:                                     ; preds = %if.then.3685
  %1823 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call3689 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1823, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.3690

if.end.3690:                                      ; preds = %if.then.3688, %if.then.3685
  br label %for.end.3698

if.end.3691:                                      ; preds = %land.end.3683, %cond.true.3664
  br label %if.end.3692

if.end.3692:                                      ; preds = %if.end.3691, %land.end.3654
  br label %for.inc.3693

for.inc.3693:                                     ; preds = %if.end.3692
  %1824 = load %union.rec*, %union.rec** %link, align 8
  %os13694 = bitcast %union.rec* %1824 to %struct.word_type*
  %olist3695 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13694, i32 0, i32 0
  %arrayidx3696 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3695, i32 0, i64 0
  %osucc3697 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3696, i32 0, i32 1
  %1825 = load %union.rec*, %union.rec** %osucc3697, align 8
  store %union.rec* %1825, %union.rec** %link, align 8
  br label %for.cond.3614

for.end.3698:                                     ; preds = %if.end.3690, %for.cond.3614
  br label %while.cond.3541

while.end.3699:                                   ; preds = %while.cond.3541
  %1826 = load i32, i32* %mk, align 4
  %1827 = load i32, i32* %dim.addr, align 4
  %idxprom3700 = sext i32 %1827 to i64
  %1828 = load %union.rec*, %union.rec** %prev, align 8
  %os13701 = bitcast %union.rec* %1828 to %struct.word_type*
  %ou33702 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13701, i32 0, i32 3
  %os313703 = bitcast %union.THIRD_UNION* %ou33702 to %struct.anon.6*
  %ofwd3704 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313703, i32 0, i32 1
  %arrayidx3705 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3704, i32 0, i64 %idxprom3700
  %1829 = load i32, i32* %arrayidx3705, align 4
  %add3706 = add nsw i32 %1826, %1829
  %1830 = load i32, i32* %back_edge3330, align 4
  %sub3707 = sub nsw i32 %add3706, %1830
  store i32 %sub3707, i32* %actual_size, align 4
  %1831 = load i32, i32* %actual_size, align 4
  %1832 = load i32, i32* %frame_size3328, align 4
  %cmp3708 = icmp sgt i32 %1831, %1832
  br i1 %cmp3708, label %land.lhs.true.3710, label %if.else.4245

land.lhs.true.3710:                               ; preds = %while.end.3699
  %1833 = load i32, i32* %adjustable_gaps, align 4
  %cmp3711 = icmp eq i32 %1833, 0
  br i1 %cmp3711, label %if.then.3713, label %if.else.4245

if.then.3713:                                     ; preds = %land.lhs.true.3710
  %obc3715 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  store i32 0, i32* %obc3715, align 4
  %1834 = load i32, i32* %frame_size3328, align 4
  %obfc3716 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  store i32 %1834, i32* %obfc3716, align 4
  %1835 = load i32, i32* %frame_size3328, align 4
  %ofc3717 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  store i32 %1835, i32* %ofc3717, align 4
  %1836 = load i32, i32* %actual_size, align 4
  %1837 = load i32, i32* %dim.addr, align 4
  %idxprom3718 = sext i32 %1837 to i64
  %1838 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13719 = bitcast %union.rec* %1838 to %struct.word_type*
  %ou33720 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13719, i32 0, i32 3
  %os313721 = bitcast %union.THIRD_UNION* %ou33720 to %struct.anon.6*
  %ofwd3722 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313721, i32 0, i32 1
  %arrayidx3723 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3722, i32 0, i64 %idxprom3718
  store i32 %1836, i32* %arrayidx3723, align 4
  %1839 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %scale_avail3724 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1839, i32 0, i32 2
  %1840 = load i32, i32* %scale_avail3724, align 4
  %tobool3725 = icmp ne i32 %1840, 0
  br i1 %tobool3725, label %land.lhs.true.3726, label %if.else.3863

land.lhs.true.3726:                               ; preds = %if.then.3713
  %1841 = load %union.rec*, %union.rec** %x.addr, align 8
  %call3727 = call i32 @InsertScale(%union.rec* %1841, %struct.CONSTRAINT* %c)
  %tobool3728 = icmp ne i32 %call3727, 0
  br i1 %tobool3728, label %if.then.3729, label %if.else.3863

if.then.3729:                                     ; preds = %land.lhs.true.3726
  %1842 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13731 = bitcast %union.rec* %1842 to %struct.word_type*
  %olist3732 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13731, i32 0, i32 0
  %arrayidx3733 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3732, i32 0, i64 1
  %osucc3734 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3733, i32 0, i32 1
  %1843 = load %union.rec*, %union.rec** %osucc3734, align 8
  %os13735 = bitcast %union.rec* %1843 to %struct.word_type*
  %olist3736 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13735, i32 0, i32 0
  %arrayidx3737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3736, i32 0, i64 0
  %opred3738 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3737, i32 0, i32 0
  %1844 = load %union.rec*, %union.rec** %opred3738, align 8
  store %union.rec* %1844, %union.rec** %prnt, align 8
  br label %for.cond.3739

for.cond.3739:                                    ; preds = %for.inc.3748, %if.then.3729
  %1845 = load %union.rec*, %union.rec** %prnt, align 8
  %os13740 = bitcast %union.rec* %1845 to %struct.word_type*
  %ou13741 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13740, i32 0, i32 1
  %os113742 = bitcast %union.FIRST_UNION* %ou13741 to %struct.anon*
  %otype3743 = getelementptr inbounds %struct.anon, %struct.anon* %os113742, i32 0, i32 0
  %1846 = load i8, i8* %otype3743, align 1
  %conv3744 = zext i8 %1846 to i32
  %cmp3745 = icmp eq i32 %conv3744, 0
  br i1 %cmp3745, label %for.body.3747, label %for.end.3753

for.body.3747:                                    ; preds = %for.cond.3739
  br label %for.inc.3748

for.inc.3748:                                     ; preds = %for.body.3747
  %1847 = load %union.rec*, %union.rec** %prnt, align 8
  %os13749 = bitcast %union.rec* %1847 to %struct.word_type*
  %olist3750 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13749, i32 0, i32 0
  %arrayidx3751 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3750, i32 0, i64 0
  %opred3752 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3751, i32 0, i32 0
  %1848 = load %union.rec*, %union.rec** %opred3752, align 8
  store %union.rec* %1848, %union.rec** %prnt, align 8
  br label %for.cond.3739

for.end.3753:                                     ; preds = %for.cond.3739
  %1849 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13754 = bitcast %union.rec* %1849 to %struct.word_type*
  %olist3755 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13754, i32 0, i32 0
  %arrayidx3756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3755, i32 0, i64 0
  %osucc3757 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3756, i32 0, i32 1
  %1850 = load %union.rec*, %union.rec** %osucc3757, align 8
  %os13758 = bitcast %union.rec* %1850 to %struct.word_type*
  %olist3759 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13758, i32 0, i32 0
  %arrayidx3760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3759, i32 0, i64 1
  %opred3761 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3760, i32 0, i32 0
  %1851 = load %union.rec*, %union.rec** %opred3761, align 8
  store %union.rec* %1851, %union.rec** %y, align 8
  br label %for.cond.3762

for.cond.3762:                                    ; preds = %for.inc.3771, %for.end.3753
  %1852 = load %union.rec*, %union.rec** %y, align 8
  %os13763 = bitcast %union.rec* %1852 to %struct.word_type*
  %ou13764 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13763, i32 0, i32 1
  %os113765 = bitcast %union.FIRST_UNION* %ou13764 to %struct.anon*
  %otype3766 = getelementptr inbounds %struct.anon, %struct.anon* %os113765, i32 0, i32 0
  %1853 = load i8, i8* %otype3766, align 1
  %conv3767 = zext i8 %1853 to i32
  %cmp3768 = icmp eq i32 %conv3767, 0
  br i1 %cmp3768, label %for.body.3770, label %for.end.3776

for.body.3770:                                    ; preds = %for.cond.3762
  br label %for.inc.3771

for.inc.3771:                                     ; preds = %for.body.3770
  %1854 = load %union.rec*, %union.rec** %y, align 8
  %os13772 = bitcast %union.rec* %1854 to %struct.word_type*
  %olist3773 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13772, i32 0, i32 0
  %arrayidx3774 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3773, i32 0, i64 1
  %opred3775 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3774, i32 0, i32 0
  %1855 = load %union.rec*, %union.rec** %opred3775, align 8
  store %union.rec* %1855, %union.rec** %y, align 8
  br label %for.cond.3762

for.end.3776:                                     ; preds = %for.cond.3762
  %1856 = load i32, i32* %actual_size, align 4
  %1857 = load i32, i32* %frame_size3328, align 4
  %sub3777 = sub nsw i32 %1856, %1857
  %cmp3778 = icmp slt i32 %sub3777, 20
  br i1 %cmp3778, label %if.then.3780, label %if.else.3781

if.then.3780:                                     ; preds = %for.end.3776
  br label %if.end.3849

if.else.3781:                                     ; preds = %for.end.3776
  %1858 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13782 = bitcast %union.rec* %1858 to %struct.word_type*
  %olist3783 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13782, i32 0, i32 0
  %arrayidx3784 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3783, i32 0, i64 0
  %osucc3785 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3784, i32 0, i32 1
  %1859 = load %union.rec*, %union.rec** %osucc3785, align 8
  %1860 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13786 = bitcast %union.rec* %1860 to %struct.word_type*
  %olist3787 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13786, i32 0, i32 0
  %arrayidx3788 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3787, i32 0, i64 0
  %opred3789 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3788, i32 0, i32 0
  %1861 = load %union.rec*, %union.rec** %opred3789, align 8
  %cmp3790 = icmp eq %union.rec* %1859, %1861
  br i1 %cmp3790, label %land.lhs.true.3792, label %if.else.3823

land.lhs.true.3792:                               ; preds = %if.else.3781
  %1862 = load %union.rec*, %union.rec** %y, align 8
  %os13793 = bitcast %union.rec* %1862 to %struct.word_type*
  %ou13794 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13793, i32 0, i32 1
  %os113795 = bitcast %union.FIRST_UNION* %ou13794 to %struct.anon*
  %otype3796 = getelementptr inbounds %struct.anon, %struct.anon* %os113795, i32 0, i32 0
  %1863 = load i8, i8* %otype3796, align 1
  %conv3797 = zext i8 %1863 to i32
  %cmp3798 = icmp eq i32 %conv3797, 11
  br i1 %cmp3798, label %if.then.3808, label %lor.lhs.false.3800

lor.lhs.false.3800:                               ; preds = %land.lhs.true.3792
  %1864 = load %union.rec*, %union.rec** %y, align 8
  %os13801 = bitcast %union.rec* %1864 to %struct.word_type*
  %ou13802 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13801, i32 0, i32 1
  %os113803 = bitcast %union.FIRST_UNION* %ou13802 to %struct.anon*
  %otype3804 = getelementptr inbounds %struct.anon, %struct.anon* %os113803, i32 0, i32 0
  %1865 = load i8, i8* %otype3804, align 1
  %conv3805 = zext i8 %1865 to i32
  %cmp3806 = icmp eq i32 %conv3805, 12
  br i1 %cmp3806, label %if.then.3808, label %if.else.3823

if.then.3808:                                     ; preds = %lor.lhs.false.3800, %land.lhs.true.3792
  %1866 = load %union.rec*, %union.rec** %y, align 8
  %os13809 = bitcast %union.rec* %1866 to %struct.word_type*
  %ou13810 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13809, i32 0, i32 1
  %ofpos3811 = bitcast %union.FIRST_UNION* %ou13810 to %struct.FILE_POS*
  %1867 = load %union.rec*, %union.rec** %y, align 8
  %os13812 = bitcast %union.rec* %1867 to %struct.word_type*
  %ostring3813 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13812, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring3813, i32 0, i32 0
  %1868 = load %union.rec*, %union.rec** %prnt, align 8
  %os23814 = bitcast %union.rec* %1868 to %struct.closure_type*
  %ou43815 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23814, i32 0, i32 4
  %oconstraint3816 = bitcast %union.FOURTH_UNION* %ou43815 to %struct.CONSTRAINT*
  %obc3817 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint3816, i32 0, i32 0
  %1869 = load i32, i32* %obc3817, align 4
  %conv3818 = sitofp i32 %1869 to float
  %div3819 = fdiv float %conv3818, 1.280000e+02
  %conv3820 = fpext float %div3819 to double
  %1870 = load i32, i32* %frame_size3328, align 4
  %call3821 = call i8* @EchoLength(i32 %1870)
  %call3822 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 3, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3811, i8* %arraydecay, double %conv3820, i8* %call3821)
  br label %if.end.3848

if.else.3823:                                     ; preds = %lor.lhs.false.3800, %if.else.3781
  %1871 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13824 = bitcast %union.rec* %1871 to %struct.word_type*
  %ou13825 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13824, i32 0, i32 1
  %ofpos3826 = bitcast %union.FIRST_UNION* %ou13825 to %struct.FILE_POS*
  %1872 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13827 = bitcast %union.rec* %1872 to %struct.word_type*
  %ou33828 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13827, i32 0, i32 3
  %os313829 = bitcast %union.THIRD_UNION* %ou33828 to %struct.anon.6*
  %oback3830 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313829, i32 0, i32 0
  %arrayidx3831 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3830, i32 0, i64 0
  %1873 = load i32, i32* %arrayidx3831, align 4
  %1874 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13832 = bitcast %union.rec* %1874 to %struct.word_type*
  %ou33833 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13832, i32 0, i32 3
  %os313834 = bitcast %union.THIRD_UNION* %ou33833 to %struct.anon.6*
  %ofwd3835 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313834, i32 0, i32 1
  %arrayidx3836 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3835, i32 0, i64 0
  %1875 = load i32, i32* %arrayidx3836, align 4
  %add3837 = add nsw i32 %1873, %1875
  %call3838 = call i8* @EchoLength(i32 %add3837)
  %1876 = load %union.rec*, %union.rec** %prnt, align 8
  %os23839 = bitcast %union.rec* %1876 to %struct.closure_type*
  %ou43840 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23839, i32 0, i32 4
  %oconstraint3841 = bitcast %union.FOURTH_UNION* %ou43840 to %struct.CONSTRAINT*
  %obc3842 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %oconstraint3841, i32 0, i32 0
  %1877 = load i32, i32* %obc3842, align 4
  %conv3843 = sitofp i32 %1877 to float
  %div3844 = fdiv float %conv3843, 1.280000e+02
  %conv3845 = fpext float %div3844 to double
  %1878 = load i32, i32* %frame_size3328, align 4
  %call3846 = call i8* @EchoLength(i32 %1878)
  %call3847 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 4, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3826, i8* %call3838, double %conv3845, i8* %call3846)
  br label %if.end.3848

if.end.3848:                                      ; preds = %if.else.3823, %if.then.3808
  br label %if.end.3849

if.end.3849:                                      ; preds = %if.end.3848, %if.then.3780
  %1879 = load %union.rec*, %union.rec** %prnt, align 8
  %1880 = load i32, i32* %xmk.addr, align 4
  %1881 = load i32, i32* %dim.addr, align 4
  %idxprom3850 = sext i32 %1881 to i64
  %1882 = load %union.rec*, %union.rec** %prnt, align 8
  %os13851 = bitcast %union.rec* %1882 to %struct.word_type*
  %ou33852 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13851, i32 0, i32 3
  %os313853 = bitcast %union.THIRD_UNION* %ou33852 to %struct.anon.6*
  %oback3854 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313853, i32 0, i32 0
  %arrayidx3855 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3854, i32 0, i64 %idxprom3850
  %1883 = load i32, i32* %arrayidx3855, align 4
  %1884 = load i32, i32* %dim.addr, align 4
  %idxprom3856 = sext i32 %1884 to i64
  %1885 = load %union.rec*, %union.rec** %prnt, align 8
  %os13857 = bitcast %union.rec* %1885 to %struct.word_type*
  %ou33858 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13857, i32 0, i32 3
  %os313859 = bitcast %union.THIRD_UNION* %ou33858 to %struct.anon.6*
  %ofwd3860 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313859, i32 0, i32 1
  %arrayidx3861 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3860, i32 0, i64 %idxprom3856
  %1886 = load i32, i32* %arrayidx3861, align 4
  %1887 = load i32, i32* %dim.addr, align 4
  %1888 = load i32, i32* %pg.addr, align 4
  %1889 = load i32, i32* %count.addr, align 4
  %call3862 = call %union.rec* @FixAndPrintObject(%union.rec* %1879, i32 %1880, i32 %1883, i32 %1886, i32 %1887, i32 0, i32 %1888, i32 %1889, i32* %aback, i32* %afwd)
  store %union.rec* %call3862, %union.rec** %prnt, align 8
  br label %if.end.4244

if.else.3863:                                     ; preds = %land.lhs.true.3726, %if.then.3713
  %1890 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13864 = bitcast %union.rec* %1890 to %struct.word_type*
  %ou33865 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13864, i32 0, i32 3
  %os313866 = bitcast %union.THIRD_UNION* %ou33865 to %struct.anon.6*
  %oback3867 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313866, i32 0, i32 0
  %arrayidx3868 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3867, i32 0, i64 0
  %1891 = load i32, i32* %arrayidx3868, align 4
  %1892 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13869 = bitcast %union.rec* %1892 to %struct.word_type*
  %ou33870 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13869, i32 0, i32 3
  %os313871 = bitcast %union.THIRD_UNION* %ou33870 to %struct.anon.6*
  %ofwd3872 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313871, i32 0, i32 1
  %arrayidx3873 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3872, i32 0, i64 0
  %1893 = load i32, i32* %arrayidx3873, align 4
  %add3874 = add nsw i32 %1891, %1893
  %cmp3875 = icmp sle i32 %add3874, 0
  br i1 %cmp3875, label %if.then.3877, label %if.end.3882

if.then.3877:                                     ; preds = %if.else.3863
  %1894 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13878 = bitcast %union.rec* %1894 to %struct.word_type*
  %ou13879 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13878, i32 0, i32 1
  %ofpos3880 = bitcast %union.FIRST_UNION* %ou13879 to %struct.FILE_POS*
  %call3881 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %ofpos3880)
  br label %if.end.3882

if.end.3882:                                      ; preds = %if.then.3877, %if.else.3863
  %1895 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13883 = bitcast %union.rec* %1895 to %struct.word_type*
  %olist3884 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13883, i32 0, i32 0
  %arrayidx3885 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3884, i32 0, i64 0
  %osucc3886 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3885, i32 0, i32 1
  %1896 = load %union.rec*, %union.rec** %osucc3886, align 8
  %os13887 = bitcast %union.rec* %1896 to %struct.word_type*
  %olist3888 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13887, i32 0, i32 0
  %arrayidx3889 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3888, i32 0, i64 1
  %opred3890 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3889, i32 0, i32 0
  %1897 = load %union.rec*, %union.rec** %opred3890, align 8
  store %union.rec* %1897, %union.rec** %y, align 8
  br label %for.cond.3891

for.cond.3891:                                    ; preds = %for.inc.3900, %if.end.3882
  %1898 = load %union.rec*, %union.rec** %y, align 8
  %os13892 = bitcast %union.rec* %1898 to %struct.word_type*
  %ou13893 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13892, i32 0, i32 1
  %os113894 = bitcast %union.FIRST_UNION* %ou13893 to %struct.anon*
  %otype3895 = getelementptr inbounds %struct.anon, %struct.anon* %os113894, i32 0, i32 0
  %1899 = load i8, i8* %otype3895, align 1
  %conv3896 = zext i8 %1899 to i32
  %cmp3897 = icmp eq i32 %conv3896, 0
  br i1 %cmp3897, label %for.body.3899, label %for.end.3905

for.body.3899:                                    ; preds = %for.cond.3891
  br label %for.inc.3900

for.inc.3900:                                     ; preds = %for.body.3899
  %1900 = load %union.rec*, %union.rec** %y, align 8
  %os13901 = bitcast %union.rec* %1900 to %struct.word_type*
  %olist3902 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13901, i32 0, i32 0
  %arrayidx3903 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3902, i32 0, i64 1
  %opred3904 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3903, i32 0, i32 0
  %1901 = load %union.rec*, %union.rec** %opred3904, align 8
  store %union.rec* %1901, %union.rec** %y, align 8
  br label %for.cond.3891

for.end.3905:                                     ; preds = %for.cond.3891
  %1902 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13906 = bitcast %union.rec* %1902 to %struct.word_type*
  %olist3907 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13906, i32 0, i32 0
  %arrayidx3908 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3907, i32 0, i64 0
  %osucc3909 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3908, i32 0, i32 1
  %1903 = load %union.rec*, %union.rec** %osucc3909, align 8
  %1904 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13910 = bitcast %union.rec* %1904 to %struct.word_type*
  %olist3911 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13910, i32 0, i32 0
  %arrayidx3912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3911, i32 0, i64 0
  %opred3913 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3912, i32 0, i32 0
  %1905 = load %union.rec*, %union.rec** %opred3913, align 8
  %cmp3914 = icmp eq %union.rec* %1903, %1905
  br i1 %cmp3914, label %land.lhs.true.3916, label %if.else.3941

land.lhs.true.3916:                               ; preds = %for.end.3905
  %1906 = load %union.rec*, %union.rec** %y, align 8
  %os13917 = bitcast %union.rec* %1906 to %struct.word_type*
  %ou13918 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13917, i32 0, i32 1
  %os113919 = bitcast %union.FIRST_UNION* %ou13918 to %struct.anon*
  %otype3920 = getelementptr inbounds %struct.anon, %struct.anon* %os113919, i32 0, i32 0
  %1907 = load i8, i8* %otype3920, align 1
  %conv3921 = zext i8 %1907 to i32
  %cmp3922 = icmp eq i32 %conv3921, 11
  br i1 %cmp3922, label %if.then.3932, label %lor.lhs.false.3924

lor.lhs.false.3924:                               ; preds = %land.lhs.true.3916
  %1908 = load %union.rec*, %union.rec** %y, align 8
  %os13925 = bitcast %union.rec* %1908 to %struct.word_type*
  %ou13926 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13925, i32 0, i32 1
  %os113927 = bitcast %union.FIRST_UNION* %ou13926 to %struct.anon*
  %otype3928 = getelementptr inbounds %struct.anon, %struct.anon* %os113927, i32 0, i32 0
  %1909 = load i8, i8* %otype3928, align 1
  %conv3929 = zext i8 %1909 to i32
  %cmp3930 = icmp eq i32 %conv3929, 12
  br i1 %cmp3930, label %if.then.3932, label %if.else.3941

if.then.3932:                                     ; preds = %lor.lhs.false.3924, %land.lhs.true.3916
  %1910 = load %union.rec*, %union.rec** %y, align 8
  %os13933 = bitcast %union.rec* %1910 to %struct.word_type*
  %ou13934 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13933, i32 0, i32 1
  %ofpos3935 = bitcast %union.FIRST_UNION* %ou13934 to %struct.FILE_POS*
  %1911 = load %union.rec*, %union.rec** %y, align 8
  %os13936 = bitcast %union.rec* %1911 to %struct.word_type*
  %ostring3937 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13936, i32 0, i32 4
  %arraydecay3938 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring3937, i32 0, i32 0
  %1912 = load i32, i32* %frame_size3328, align 4
  %call3939 = call i8* @EchoLength(i32 %1912)
  %call3940 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3935, i8* %arraydecay3938, i8* %call3939)
  br label %if.end.3959

if.else.3941:                                     ; preds = %lor.lhs.false.3924, %for.end.3905
  %1913 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13942 = bitcast %union.rec* %1913 to %struct.word_type*
  %ou13943 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13942, i32 0, i32 1
  %ofpos3944 = bitcast %union.FIRST_UNION* %ou13943 to %struct.FILE_POS*
  %1914 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13945 = bitcast %union.rec* %1914 to %struct.word_type*
  %ou33946 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13945, i32 0, i32 3
  %os313947 = bitcast %union.THIRD_UNION* %ou33946 to %struct.anon.6*
  %oback3948 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313947, i32 0, i32 0
  %arrayidx3949 = getelementptr inbounds [2 x i32], [2 x i32]* %oback3948, i32 0, i64 0
  %1915 = load i32, i32* %arrayidx3949, align 4
  %1916 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13950 = bitcast %union.rec* %1916 to %struct.word_type*
  %ou33951 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13950, i32 0, i32 3
  %os313952 = bitcast %union.THIRD_UNION* %ou33951 to %struct.anon.6*
  %ofwd3953 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os313952, i32 0, i32 1
  %arrayidx3954 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd3953, i32 0, i64 0
  %1917 = load i32, i32* %arrayidx3954, align 4
  %add3955 = add nsw i32 %1915, %1917
  %call3956 = call i8* @EchoLength(i32 %add3955)
  %1918 = load i32, i32* %frame_size3328, align 4
  %call3957 = call i8* @EchoLength(i32 %1918)
  %call3958 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos3944, i8* %call3956, i8* %call3957)
  br label %if.end.3959

if.end.3959:                                      ; preds = %if.else.3941, %if.then.3932
  br label %while.cond.3960

while.cond.3960:                                  ; preds = %if.end.4094, %if.end.3959
  %1919 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13961 = bitcast %union.rec* %1919 to %struct.word_type*
  %olist3962 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13961, i32 0, i32 0
  %arrayidx3963 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3962, i32 0, i64 0
  %osucc3964 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3963, i32 0, i32 1
  %1920 = load %union.rec*, %union.rec** %osucc3964, align 8
  %1921 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp3965 = icmp ne %union.rec* %1920, %1921
  br i1 %cmp3965, label %while.body.3967, label %while.end.4095

while.body.3967:                                  ; preds = %while.cond.3960
  %1922 = load %union.rec*, %union.rec** %x.addr, align 8
  %os13968 = bitcast %union.rec* %1922 to %struct.word_type*
  %olist3969 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13968, i32 0, i32 0
  %arrayidx3970 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3969, i32 0, i64 0
  %osucc3971 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3970, i32 0, i32 1
  %1923 = load %union.rec*, %union.rec** %osucc3971, align 8
  store %union.rec* %1923, %union.rec** @xx_link, align 8
  %1924 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1924, %union.rec** @zz_hold, align 8
  %1925 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13972 = bitcast %union.rec* %1925 to %struct.word_type*
  %olist3973 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13972, i32 0, i32 0
  %arrayidx3974 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3973, i32 0, i64 1
  %osucc3975 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3974, i32 0, i32 1
  %1926 = load %union.rec*, %union.rec** %osucc3975, align 8
  %1927 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp3976 = icmp eq %union.rec* %1926, %1927
  br i1 %cmp3976, label %cond.true.3978, label %cond.false.3979

cond.true.3978:                                   ; preds = %while.body.3967
  br label %cond.end.4008

cond.false.3979:                                  ; preds = %while.body.3967
  %1928 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13980 = bitcast %union.rec* %1928 to %struct.word_type*
  %olist3981 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13980, i32 0, i32 0
  %arrayidx3982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3981, i32 0, i64 1
  %osucc3983 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3982, i32 0, i32 1
  %1929 = load %union.rec*, %union.rec** %osucc3983, align 8
  store %union.rec* %1929, %union.rec** @zz_res, align 8
  %1930 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13984 = bitcast %union.rec* %1930 to %struct.word_type*
  %olist3985 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13984, i32 0, i32 0
  %arrayidx3986 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3985, i32 0, i64 1
  %opred3987 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3986, i32 0, i32 0
  %1931 = load %union.rec*, %union.rec** %opred3987, align 8
  %1932 = load %union.rec*, %union.rec** @zz_res, align 8
  %os13988 = bitcast %union.rec* %1932 to %struct.word_type*
  %olist3989 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13988, i32 0, i32 0
  %arrayidx3990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3989, i32 0, i64 1
  %opred3991 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3990, i32 0, i32 0
  store %union.rec* %1931, %union.rec** %opred3991, align 8
  %1933 = load %union.rec*, %union.rec** @zz_res, align 8
  %1934 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os13992 = bitcast %union.rec* %1934 to %struct.word_type*
  %olist3993 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13992, i32 0, i32 0
  %arrayidx3994 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3993, i32 0, i64 1
  %opred3995 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3994, i32 0, i32 0
  %1935 = load %union.rec*, %union.rec** %opred3995, align 8
  %os13996 = bitcast %union.rec* %1935 to %struct.word_type*
  %olist3997 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13996, i32 0, i32 0
  %arrayidx3998 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3997, i32 0, i64 1
  %osucc3999 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3998, i32 0, i32 1
  store %union.rec* %1933, %union.rec** %osucc3999, align 8
  %1936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1937 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14000 = bitcast %union.rec* %1937 to %struct.word_type*
  %olist4001 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14000, i32 0, i32 0
  %arrayidx4002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4001, i32 0, i64 1
  %osucc4003 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4002, i32 0, i32 1
  store %union.rec* %1936, %union.rec** %osucc4003, align 8
  %1938 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14004 = bitcast %union.rec* %1938 to %struct.word_type*
  %olist4005 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14004, i32 0, i32 0
  %arrayidx4006 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4005, i32 0, i64 1
  %opred4007 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4006, i32 0, i32 0
  store %union.rec* %1936, %union.rec** %opred4007, align 8
  %1939 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4008

cond.end.4008:                                    ; preds = %cond.false.3979, %cond.true.3978
  %cond4009 = phi %union.rec* [ null, %cond.true.3978 ], [ %1939, %cond.false.3979 ]
  store %union.rec* %cond4009, %union.rec** @xx_tmp, align 8
  %1940 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1940, %union.rec** @zz_hold, align 8
  %1941 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14010 = bitcast %union.rec* %1941 to %struct.word_type*
  %olist4011 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14010, i32 0, i32 0
  %arrayidx4012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4011, i32 0, i64 0
  %osucc4013 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4012, i32 0, i32 1
  %1942 = load %union.rec*, %union.rec** %osucc4013, align 8
  %1943 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4014 = icmp eq %union.rec* %1942, %1943
  br i1 %cmp4014, label %cond.true.4016, label %cond.false.4017

cond.true.4016:                                   ; preds = %cond.end.4008
  br label %cond.end.4046

cond.false.4017:                                  ; preds = %cond.end.4008
  %1944 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14018 = bitcast %union.rec* %1944 to %struct.word_type*
  %olist4019 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14018, i32 0, i32 0
  %arrayidx4020 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4019, i32 0, i64 0
  %osucc4021 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4020, i32 0, i32 1
  %1945 = load %union.rec*, %union.rec** %osucc4021, align 8
  store %union.rec* %1945, %union.rec** @zz_res, align 8
  %1946 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14022 = bitcast %union.rec* %1946 to %struct.word_type*
  %olist4023 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14022, i32 0, i32 0
  %arrayidx4024 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4023, i32 0, i64 0
  %opred4025 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4024, i32 0, i32 0
  %1947 = load %union.rec*, %union.rec** %opred4025, align 8
  %1948 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14026 = bitcast %union.rec* %1948 to %struct.word_type*
  %olist4027 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14026, i32 0, i32 0
  %arrayidx4028 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4027, i32 0, i64 0
  %opred4029 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4028, i32 0, i32 0
  store %union.rec* %1947, %union.rec** %opred4029, align 8
  %1949 = load %union.rec*, %union.rec** @zz_res, align 8
  %1950 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14030 = bitcast %union.rec* %1950 to %struct.word_type*
  %olist4031 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14030, i32 0, i32 0
  %arrayidx4032 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4031, i32 0, i64 0
  %opred4033 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4032, i32 0, i32 0
  %1951 = load %union.rec*, %union.rec** %opred4033, align 8
  %os14034 = bitcast %union.rec* %1951 to %struct.word_type*
  %olist4035 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14034, i32 0, i32 0
  %arrayidx4036 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4035, i32 0, i64 0
  %osucc4037 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4036, i32 0, i32 1
  store %union.rec* %1949, %union.rec** %osucc4037, align 8
  %1952 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1953 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14038 = bitcast %union.rec* %1953 to %struct.word_type*
  %olist4039 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14038, i32 0, i32 0
  %arrayidx4040 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4039, i32 0, i64 0
  %osucc4041 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4040, i32 0, i32 1
  store %union.rec* %1952, %union.rec** %osucc4041, align 8
  %1954 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14042 = bitcast %union.rec* %1954 to %struct.word_type*
  %olist4043 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14042, i32 0, i32 0
  %arrayidx4044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4043, i32 0, i64 0
  %opred4045 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4044, i32 0, i32 0
  store %union.rec* %1952, %union.rec** %opred4045, align 8
  %1955 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4046

cond.end.4046:                                    ; preds = %cond.false.4017, %cond.true.4016
  %cond4047 = phi %union.rec* [ null, %cond.true.4016 ], [ %1955, %cond.false.4017 ]
  %1956 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1956, %union.rec** @zz_hold, align 8
  %1957 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1957, %union.rec** @zz_hold, align 8
  %1958 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14048 = bitcast %union.rec* %1958 to %struct.word_type*
  %ou14049 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14048, i32 0, i32 1
  %os114050 = bitcast %union.FIRST_UNION* %ou14049 to %struct.anon*
  %otype4051 = getelementptr inbounds %struct.anon, %struct.anon* %os114050, i32 0, i32 0
  %1959 = load i8, i8* %otype4051, align 1
  %conv4052 = zext i8 %1959 to i32
  %cmp4053 = icmp eq i32 %conv4052, 11
  br i1 %cmp4053, label %cond.true.4063, label %lor.lhs.false.4055

lor.lhs.false.4055:                               ; preds = %cond.end.4046
  %1960 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14056 = bitcast %union.rec* %1960 to %struct.word_type*
  %ou14057 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14056, i32 0, i32 1
  %os114058 = bitcast %union.FIRST_UNION* %ou14057 to %struct.anon*
  %otype4059 = getelementptr inbounds %struct.anon, %struct.anon* %os114058, i32 0, i32 0
  %1961 = load i8, i8* %otype4059, align 1
  %conv4060 = zext i8 %1961 to i32
  %cmp4061 = icmp eq i32 %conv4060, 12
  br i1 %cmp4061, label %cond.true.4063, label %cond.false.4068

cond.true.4063:                                   ; preds = %lor.lhs.false.4055, %cond.end.4046
  %1962 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14064 = bitcast %union.rec* %1962 to %struct.word_type*
  %ou14065 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14064, i32 0, i32 1
  %os114066 = bitcast %union.FIRST_UNION* %ou14065 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os114066, i32 0, i32 1
  %1963 = load i8, i8* %orec_size, align 1
  %conv4067 = zext i8 %1963 to i32
  br label %cond.end.4076

cond.false.4068:                                  ; preds = %lor.lhs.false.4055
  %1964 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14069 = bitcast %union.rec* %1964 to %struct.word_type*
  %ou14070 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14069, i32 0, i32 1
  %os114071 = bitcast %union.FIRST_UNION* %ou14070 to %struct.anon*
  %otype4072 = getelementptr inbounds %struct.anon, %struct.anon* %os114071, i32 0, i32 0
  %1965 = load i8, i8* %otype4072, align 1
  %idxprom4073 = zext i8 %1965 to i64
  %arrayidx4074 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom4073
  %1966 = load i8, i8* %arrayidx4074, align 1
  %conv4075 = zext i8 %1966 to i32
  br label %cond.end.4076

cond.end.4076:                                    ; preds = %cond.false.4068, %cond.true.4063
  %cond4077 = phi i32 [ %conv4067, %cond.true.4063 ], [ %conv4075, %cond.false.4068 ]
  store i32 %cond4077, i32* @zz_size, align 4
  %1967 = load i32, i32* @zz_size, align 4
  %idxprom4078 = sext i32 %1967 to i64
  %arrayidx4079 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4078
  %1968 = load %union.rec*, %union.rec** %arrayidx4079, align 8
  %1969 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14080 = bitcast %union.rec* %1969 to %struct.word_type*
  %olist4081 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14080, i32 0, i32 0
  %arrayidx4082 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4081, i32 0, i64 0
  %opred4083 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4082, i32 0, i32 0
  store %union.rec* %1968, %union.rec** %opred4083, align 8
  %1970 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1971 = load i32, i32* @zz_size, align 4
  %idxprom4084 = sext i32 %1971 to i64
  %arrayidx4085 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4084
  store %union.rec* %1970, %union.rec** %arrayidx4085, align 8
  %1972 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os14086 = bitcast %union.rec* %1972 to %struct.word_type*
  %olist4087 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14086, i32 0, i32 0
  %arrayidx4088 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4087, i32 0, i64 1
  %osucc4089 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4088, i32 0, i32 1
  %1973 = load %union.rec*, %union.rec** %osucc4089, align 8
  %1974 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp4090 = icmp eq %union.rec* %1973, %1974
  br i1 %cmp4090, label %if.then.4092, label %if.end.4094

if.then.4092:                                     ; preds = %cond.end.4076
  %1975 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call4093 = call i32 @DisposeObject(%union.rec* %1975)
  br label %if.end.4094

if.end.4094:                                      ; preds = %if.then.4092, %cond.end.4076
  br label %while.cond.3960

while.end.4095:                                   ; preds = %while.cond.3960
  %1976 = load %union.rec*, %union.rec** %x.addr, align 8
  %os14096 = bitcast %union.rec* %1976 to %struct.word_type*
  %ou14097 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14096, i32 0, i32 1
  %ofpos4098 = bitcast %union.FIRST_UNION* %ou14097 to %struct.FILE_POS*
  %call4099 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), %struct.FILE_POS* %ofpos4098)
  store %union.rec* %call4099, %union.rec** %y, align 8
  %1977 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv4100 = zext i8 %1977 to i32
  store i32 %conv4100, i32* @zz_size, align 4
  %conv4101 = sext i32 %conv4100 to i64
  %cmp4102 = icmp uge i64 %conv4101, 265
  br i1 %cmp4102, label %if.then.4104, label %if.else.4106

if.then.4104:                                     ; preds = %while.end.4095
  %1978 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4105 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %1978)
  br label %if.end.4123

if.else.4106:                                     ; preds = %while.end.4095
  %1979 = load i32, i32* @zz_size, align 4
  %idxprom4107 = sext i32 %1979 to i64
  %arrayidx4108 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4107
  %1980 = load %union.rec*, %union.rec** %arrayidx4108, align 8
  %cmp4109 = icmp eq %union.rec* %1980, null
  br i1 %cmp4109, label %if.then.4111, label %if.else.4113

if.then.4111:                                     ; preds = %if.else.4106
  %1981 = load i32, i32* @zz_size, align 4
  %1982 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4112 = call %union.rec* @GetMemory(i32 %1981, %struct.FILE_POS* %1982)
  store %union.rec* %call4112, %union.rec** @zz_hold, align 8
  br label %if.end.4122

if.else.4113:                                     ; preds = %if.else.4106
  %1983 = load i32, i32* @zz_size, align 4
  %idxprom4114 = sext i32 %1983 to i64
  %arrayidx4115 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4114
  %1984 = load %union.rec*, %union.rec** %arrayidx4115, align 8
  store %union.rec* %1984, %union.rec** @zz_hold, align 8
  store %union.rec* %1984, %union.rec** @zz_hold, align 8
  %1985 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14116 = bitcast %union.rec* %1985 to %struct.word_type*
  %olist4117 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14116, i32 0, i32 0
  %arrayidx4118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4117, i32 0, i64 0
  %opred4119 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4118, i32 0, i32 0
  %1986 = load %union.rec*, %union.rec** %opred4119, align 8
  %1987 = load i32, i32* @zz_size, align 4
  %idxprom4120 = sext i32 %1987 to i64
  %arrayidx4121 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4120
  store %union.rec* %1986, %union.rec** %arrayidx4121, align 8
  br label %if.end.4122

if.end.4122:                                      ; preds = %if.else.4113, %if.then.4111
  br label %if.end.4123

if.end.4123:                                      ; preds = %if.end.4122, %if.then.4104
  %1988 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14124 = bitcast %union.rec* %1988 to %struct.word_type*
  %ou14125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14124, i32 0, i32 1
  %os114126 = bitcast %union.FIRST_UNION* %ou14125 to %struct.anon*
  %otype4127 = getelementptr inbounds %struct.anon, %struct.anon* %os114126, i32 0, i32 0
  store i8 0, i8* %otype4127, align 1
  %1989 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1990 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14128 = bitcast %union.rec* %1990 to %struct.word_type*
  %olist4129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14128, i32 0, i32 0
  %arrayidx4130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4129, i32 0, i64 1
  %osucc4131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4130, i32 0, i32 1
  store %union.rec* %1989, %union.rec** %osucc4131, align 8
  %1991 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14132 = bitcast %union.rec* %1991 to %struct.word_type*
  %olist4133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14132, i32 0, i32 0
  %arrayidx4134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4133, i32 0, i64 1
  %opred4135 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4134, i32 0, i32 0
  store %union.rec* %1989, %union.rec** %opred4135, align 8
  %1992 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14136 = bitcast %union.rec* %1992 to %struct.word_type*
  %olist4137 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14136, i32 0, i32 0
  %arrayidx4138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4137, i32 0, i64 0
  %osucc4139 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4138, i32 0, i32 1
  store %union.rec* %1989, %union.rec** %osucc4139, align 8
  %1993 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14140 = bitcast %union.rec* %1993 to %struct.word_type*
  %olist4141 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14140, i32 0, i32 0
  %arrayidx4142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4141, i32 0, i64 0
  %opred4143 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4142, i32 0, i32 0
  store %union.rec* %1989, %union.rec** %opred4143, align 8
  store %union.rec* %1989, %union.rec** @xx_link, align 8
  %1994 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1994, %union.rec** @zz_res, align 8
  %1995 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %1995, %union.rec** @zz_hold, align 8
  %1996 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4144 = icmp eq %union.rec* %1996, null
  br i1 %cmp4144, label %cond.true.4146, label %cond.false.4147

cond.true.4146:                                   ; preds = %if.end.4123
  %1997 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4182

cond.false.4147:                                  ; preds = %if.end.4123
  %1998 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4148 = icmp eq %union.rec* %1998, null
  br i1 %cmp4148, label %cond.true.4150, label %cond.false.4151

cond.true.4150:                                   ; preds = %cond.false.4147
  %1999 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4180

cond.false.4151:                                  ; preds = %cond.false.4147
  %2000 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14152 = bitcast %union.rec* %2000 to %struct.word_type*
  %olist4153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14152, i32 0, i32 0
  %arrayidx4154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4153, i32 0, i64 0
  %opred4155 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4154, i32 0, i32 0
  %2001 = load %union.rec*, %union.rec** %opred4155, align 8
  store %union.rec* %2001, %union.rec** @zz_tmp, align 8
  %2002 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14156 = bitcast %union.rec* %2002 to %struct.word_type*
  %olist4157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14156, i32 0, i32 0
  %arrayidx4158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4157, i32 0, i64 0
  %opred4159 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4158, i32 0, i32 0
  %2003 = load %union.rec*, %union.rec** %opred4159, align 8
  %2004 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14160 = bitcast %union.rec* %2004 to %struct.word_type*
  %olist4161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14160, i32 0, i32 0
  %arrayidx4162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4161, i32 0, i64 0
  %opred4163 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4162, i32 0, i32 0
  store %union.rec* %2003, %union.rec** %opred4163, align 8
  %2005 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2006 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14164 = bitcast %union.rec* %2006 to %struct.word_type*
  %olist4165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14164, i32 0, i32 0
  %arrayidx4166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4165, i32 0, i64 0
  %opred4167 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4166, i32 0, i32 0
  %2007 = load %union.rec*, %union.rec** %opred4167, align 8
  %os14168 = bitcast %union.rec* %2007 to %struct.word_type*
  %olist4169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14168, i32 0, i32 0
  %arrayidx4170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4169, i32 0, i64 0
  %osucc4171 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4170, i32 0, i32 1
  store %union.rec* %2005, %union.rec** %osucc4171, align 8
  %2008 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2009 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14172 = bitcast %union.rec* %2009 to %struct.word_type*
  %olist4173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14172, i32 0, i32 0
  %arrayidx4174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4173, i32 0, i64 0
  %opred4175 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4174, i32 0, i32 0
  store %union.rec* %2008, %union.rec** %opred4175, align 8
  %2010 = load %union.rec*, %union.rec** @zz_res, align 8
  %2011 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14176 = bitcast %union.rec* %2011 to %struct.word_type*
  %olist4177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14176, i32 0, i32 0
  %arrayidx4178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4177, i32 0, i64 0
  %osucc4179 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4178, i32 0, i32 1
  store %union.rec* %2010, %union.rec** %osucc4179, align 8
  br label %cond.end.4180

cond.end.4180:                                    ; preds = %cond.false.4151, %cond.true.4150
  %cond4181 = phi %union.rec* [ %1999, %cond.true.4150 ], [ %2010, %cond.false.4151 ]
  br label %cond.end.4182

cond.end.4182:                                    ; preds = %cond.end.4180, %cond.true.4146
  %cond4183 = phi %union.rec* [ %1997, %cond.true.4146 ], [ %cond4181, %cond.end.4180 ]
  %2012 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2012, %union.rec** @zz_res, align 8
  %2013 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %2013, %union.rec** @zz_hold, align 8
  %2014 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4184 = icmp eq %union.rec* %2014, null
  br i1 %cmp4184, label %cond.true.4186, label %cond.false.4187

cond.true.4186:                                   ; preds = %cond.end.4182
  %2015 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4222

cond.false.4187:                                  ; preds = %cond.end.4182
  %2016 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4188 = icmp eq %union.rec* %2016, null
  br i1 %cmp4188, label %cond.true.4190, label %cond.false.4191

cond.true.4190:                                   ; preds = %cond.false.4187
  %2017 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4220

cond.false.4191:                                  ; preds = %cond.false.4187
  %2018 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14192 = bitcast %union.rec* %2018 to %struct.word_type*
  %olist4193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14192, i32 0, i32 0
  %arrayidx4194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4193, i32 0, i64 1
  %opred4195 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4194, i32 0, i32 0
  %2019 = load %union.rec*, %union.rec** %opred4195, align 8
  store %union.rec* %2019, %union.rec** @zz_tmp, align 8
  %2020 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14196 = bitcast %union.rec* %2020 to %struct.word_type*
  %olist4197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14196, i32 0, i32 0
  %arrayidx4198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4197, i32 0, i64 1
  %opred4199 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4198, i32 0, i32 0
  %2021 = load %union.rec*, %union.rec** %opred4199, align 8
  %2022 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14200 = bitcast %union.rec* %2022 to %struct.word_type*
  %olist4201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14200, i32 0, i32 0
  %arrayidx4202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4201, i32 0, i64 1
  %opred4203 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4202, i32 0, i32 0
  store %union.rec* %2021, %union.rec** %opred4203, align 8
  %2023 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2024 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14204 = bitcast %union.rec* %2024 to %struct.word_type*
  %olist4205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14204, i32 0, i32 0
  %arrayidx4206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4205, i32 0, i64 1
  %opred4207 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4206, i32 0, i32 0
  %2025 = load %union.rec*, %union.rec** %opred4207, align 8
  %os14208 = bitcast %union.rec* %2025 to %struct.word_type*
  %olist4209 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14208, i32 0, i32 0
  %arrayidx4210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4209, i32 0, i64 1
  %osucc4211 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4210, i32 0, i32 1
  store %union.rec* %2023, %union.rec** %osucc4211, align 8
  %2026 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2027 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14212 = bitcast %union.rec* %2027 to %struct.word_type*
  %olist4213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14212, i32 0, i32 0
  %arrayidx4214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4213, i32 0, i64 1
  %opred4215 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4214, i32 0, i32 0
  store %union.rec* %2026, %union.rec** %opred4215, align 8
  %2028 = load %union.rec*, %union.rec** @zz_res, align 8
  %2029 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14216 = bitcast %union.rec* %2029 to %struct.word_type*
  %olist4217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14216, i32 0, i32 0
  %arrayidx4218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4217, i32 0, i64 1
  %osucc4219 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4218, i32 0, i32 1
  store %union.rec* %2028, %union.rec** %osucc4219, align 8
  br label %cond.end.4220

cond.end.4220:                                    ; preds = %cond.false.4191, %cond.true.4190
  %cond4221 = phi %union.rec* [ %2017, %cond.true.4190 ], [ %2028, %cond.false.4191 ]
  br label %cond.end.4222

cond.end.4222:                                    ; preds = %cond.end.4220, %cond.true.4186
  %cond4223 = phi %union.rec* [ %2015, %cond.true.4186 ], [ %cond4221, %cond.end.4220 ]
  %2030 = load %union.rec*, %union.rec** %y, align 8
  %os14224 = bitcast %union.rec* %2030 to %struct.word_type*
  %ou34225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14224, i32 0, i32 3
  %os314226 = bitcast %union.THIRD_UNION* %ou34225 to %struct.anon.6*
  %ofwd4227 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314226, i32 0, i32 1
  %arrayidx4228 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4227, i32 0, i64 0
  store i32 0, i32* %arrayidx4228, align 4
  %2031 = load %union.rec*, %union.rec** %y, align 8
  %os14229 = bitcast %union.rec* %2031 to %struct.word_type*
  %ou34230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14229, i32 0, i32 3
  %os314231 = bitcast %union.THIRD_UNION* %ou34230 to %struct.anon.6*
  %oback4232 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314231, i32 0, i32 0
  %arrayidx4233 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4232, i32 0, i64 0
  store i32 0, i32* %arrayidx4233, align 4
  %2032 = load %union.rec*, %union.rec** %y, align 8
  %os14234 = bitcast %union.rec* %2032 to %struct.word_type*
  %ou34235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14234, i32 0, i32 3
  %os314236 = bitcast %union.THIRD_UNION* %ou34235 to %struct.anon.6*
  %ofwd4237 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314236, i32 0, i32 1
  %arrayidx4238 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4237, i32 0, i64 1
  store i32 0, i32* %arrayidx4238, align 4
  %2033 = load %union.rec*, %union.rec** %y, align 8
  %os14239 = bitcast %union.rec* %2033 to %struct.word_type*
  %ou34240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14239, i32 0, i32 3
  %os314241 = bitcast %union.THIRD_UNION* %ou34240 to %struct.anon.6*
  %oback4242 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314241, i32 0, i32 0
  %arrayidx4243 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4242, i32 0, i64 1
  store i32 0, i32* %arrayidx4243, align 4
  br label %if.end.4244

if.end.4244:                                      ; preds = %cond.end.4222, %if.end.3849
  br label %if.end.5275

if.else.4245:                                     ; preds = %land.lhs.true.3710, %while.end.3699
  %2034 = load i32, i32* %actual_size, align 4
  %2035 = load i32, i32* %frame_size3328, align 4
  %cmp4246 = icmp sgt i32 %2034, %2035
  br i1 %cmp4246, label %if.then.4248, label %if.else.4261

if.then.4248:                                     ; preds = %if.else.4245
  %2036 = load i32, i32* %adjustable_gaps, align 4
  %cmp4249 = icmp sgt i32 %2036, 0
  br i1 %cmp4249, label %if.end.4253, label %if.then.4251

if.then.4251:                                     ; preds = %if.then.4248
  %2037 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4252 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2037, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.4253

if.end.4253:                                      ; preds = %if.then.4251, %if.then.4248
  %2038 = load %union.rec*, %union.rec** %x.addr, align 8
  %os14254 = bitcast %union.rec* %2038 to %struct.word_type*
  %ou24255 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14254, i32 0, i32 2
  %os234256 = bitcast %union.SECOND_UNION* %ou24255 to %struct.anon.2*
  %oadjust_cat4257 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os234256, i32 0, i32 2
  %bf.load4258 = load i16, i16* %oadjust_cat4257, align 2
  %bf.clear4259 = and i16 %bf.load4258, -2049
  %bf.set4260 = or i16 %bf.clear4259, 2048
  store i16 %bf.set4260, i16* %oadjust_cat4257, align 2
  store i32 0, i32* %adjust_indent, align 4
  br label %if.end.4294

if.else.4261:                                     ; preds = %if.else.4245
  %2039 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24262 = bitcast %union.rec* %2039 to %struct.closure_type*
  %ou44263 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24262, i32 0, i32 4
  %osave_style4264 = bitcast %union.FOURTH_UNION* %ou44263 to %struct.STYLE*
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4264, i32 0, i32 1
  %oss2 = bitcast %union.anon.10* %osu2 to %struct.anon.11*
  %2040 = bitcast %struct.anon.11* %oss2 to i8*
  %bf.load4265 = load i8, i8* %2040, align 4
  %bf.lshr4266 = lshr i8 %bf.load4265, 4
  %bf.clear4267 = and i8 %bf.lshr4266, 7
  %bf.cast4268 = zext i8 %bf.clear4267 to i32
  switch i32 %bf.cast4268, label %sw.default [
    i32 7, label %sw.bb.4269
    i32 5, label %sw.bb.4277
    i32 6, label %sw.bb.4286
  ]

sw.bb.4269:                                       ; preds = %if.else.4261
  %2041 = load %union.rec*, %union.rec** %x.addr, align 8
  %os14270 = bitcast %union.rec* %2041 to %struct.word_type*
  %ou24271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14270, i32 0, i32 2
  %os234272 = bitcast %union.SECOND_UNION* %ou24271 to %struct.anon.2*
  %oadjust_cat4273 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os234272, i32 0, i32 2
  %bf.load4274 = load i16, i16* %oadjust_cat4273, align 2
  %bf.clear4275 = and i16 %bf.load4274, -2049
  %bf.set4276 = or i16 %bf.clear4275, 2048
  store i16 %bf.set4276, i16* %oadjust_cat4273, align 2
  store i32 0, i32* %adjust_indent, align 4
  br label %sw.epilog

sw.bb.4277:                                       ; preds = %if.else.4261
  %2042 = load %union.rec*, %union.rec** %x.addr, align 8
  %os14278 = bitcast %union.rec* %2042 to %struct.word_type*
  %ou24279 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14278, i32 0, i32 2
  %os234280 = bitcast %union.SECOND_UNION* %ou24279 to %struct.anon.2*
  %oadjust_cat4281 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os234280, i32 0, i32 2
  %bf.load4282 = load i16, i16* %oadjust_cat4281, align 2
  %bf.clear4283 = and i16 %bf.load4282, -2049
  store i16 %bf.clear4283, i16* %oadjust_cat4281, align 2
  %2043 = load i32, i32* %frame_size3328, align 4
  %2044 = load i32, i32* %actual_size, align 4
  %sub4284 = sub nsw i32 %2043, %2044
  %div4285 = sdiv i32 %sub4284, 2
  store i32 %div4285, i32* %adjust_indent, align 4
  br label %sw.epilog

sw.bb.4286:                                       ; preds = %if.else.4261
  %2045 = load %union.rec*, %union.rec** %x.addr, align 8
  %os14287 = bitcast %union.rec* %2045 to %struct.word_type*
  %ou24288 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14287, i32 0, i32 2
  %os234289 = bitcast %union.SECOND_UNION* %ou24288 to %struct.anon.2*
  %oadjust_cat4290 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os234289, i32 0, i32 2
  %bf.load4291 = load i16, i16* %oadjust_cat4290, align 2
  %bf.clear4292 = and i16 %bf.load4291, -2049
  store i16 %bf.clear4292, i16* %oadjust_cat4290, align 2
  %2046 = load i32, i32* %frame_size3328, align 4
  %2047 = load i32, i32* %actual_size, align 4
  %sub4293 = sub nsw i32 %2046, %2047
  store i32 %sub4293, i32* %adjust_indent, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.4261
  store i32 0, i32* %adjust_indent, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4286, %sw.bb.4277, %sw.bb.4269
  br label %if.end.4294

if.end.4294:                                      ; preds = %sw.epilog, %if.end.4253
  %2048 = load %union.rec*, %union.rec** %x.addr, align 8
  %os14295 = bitcast %union.rec* %2048 to %struct.word_type*
  %ou24296 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14295, i32 0, i32 2
  %os234297 = bitcast %union.SECOND_UNION* %ou24296 to %struct.anon.2*
  %oadjust_cat4298 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os234297, i32 0, i32 2
  %bf.load4299 = load i16, i16* %oadjust_cat4298, align 2
  %bf.lshr4300 = lshr i16 %bf.load4299, 11
  %bf.clear4301 = and i16 %bf.lshr4300, 1
  %bf.cast4302 = zext i16 %bf.clear4301 to i32
  %tobool4303 = icmp ne i32 %bf.cast4302, 0
  br i1 %tobool4303, label %land.lhs.true.4304, label %if.else.4316

land.lhs.true.4304:                               ; preds = %if.end.4294
  %2049 = load i32, i32* %adjustable_gaps, align 4
  %cmp4305 = icmp sgt i32 %2049, 0
  br i1 %cmp4305, label %if.then.4307, label %if.else.4316

if.then.4307:                                     ; preds = %land.lhs.true.4304
  store i32 1, i32* %will_adjust, align 4
  %2050 = load i32, i32* %frame_size3328, align 4
  %2051 = load i32, i32* %actual_size, align 4
  %sub4308 = sub nsw i32 %2050, %2051
  %2052 = load i32, i32* %adjustable_gaps, align 4
  %div4309 = sdiv i32 %sub4308, %2052
  store i32 %div4309, i32* %adjust_inc, align 4
  %2053 = load i32, i32* %adjust_inc, align 4
  %cmp4310 = icmp slt i32 %2053, 0
  br i1 %cmp4310, label %cond.true.4312, label %cond.false.4313

cond.true.4312:                                   ; preds = %if.then.4307
  br label %cond.end.4314

cond.false.4313:                                  ; preds = %if.then.4307
  %2054 = load i32, i32* %adjust_inc, align 4
  br label %cond.end.4314

cond.end.4314:                                    ; preds = %cond.false.4313, %cond.true.4312
  %cond4315 = phi i32 [ 0, %cond.true.4312 ], [ %2054, %cond.false.4313 ]
  store i32 %cond4315, i32* %inc3333, align 4
  store i32 0, i32* %gaps_sofar, align 4
  store i32 0, i32* %adjust_sofar, align 4
  br label %if.end.4317

if.else.4316:                                     ; preds = %land.lhs.true.4304, %if.end.4294
  store i32 0, i32* %will_adjust, align 4
  br label %if.end.4317

if.end.4317:                                      ; preds = %if.else.4316, %cond.end.4314
  store i32 0, i32* %underlining, align 4
  %2055 = load i32, i32* %will_adjust, align 4
  %tobool4318 = icmp ne i32 %2055, 0
  br i1 %tobool4318, label %land.rhs.4319, label %land.end.4322

land.rhs.4319:                                    ; preds = %if.end.4317
  %2056 = load %union.rec*, %union.rec** %last_bad_gap, align 8
  %cmp4320 = icmp eq %union.rec* %2056, null
  br label %land.end.4322

land.end.4322:                                    ; preds = %land.rhs.4319, %if.end.4317
  %2057 = phi i1 [ false, %if.end.4317 ], [ %cmp4320, %land.rhs.4319 ]
  %land.ext4323 = zext i1 %2057 to i32
  store i32 %land.ext4323, i32* %adjusting, align 4
  store i32 1, i32* %jn, align 4
  %2058 = load %union.rec*, %union.rec** %x.addr, align 8
  %os14324 = bitcast %union.rec* %2058 to %struct.word_type*
  %olist4325 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14324, i32 0, i32 0
  %arrayidx4326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4325, i32 0, i64 0
  %osucc4327 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4326, i32 0, i32 1
  %2059 = load %union.rec*, %union.rec** %osucc4327, align 8
  store %union.rec* %2059, %union.rec** %link, align 8
  br label %for.cond.4328

for.cond.4328:                                    ; preds = %for.inc.4402, %land.end.4322
  %2060 = load %union.rec*, %union.rec** %link, align 8
  %2061 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp4329 = icmp ne %union.rec* %2060, %2061
  br i1 %cmp4329, label %for.body.4331, label %for.end.4407

for.body.4331:                                    ; preds = %for.cond.4328
  %2062 = load %union.rec*, %union.rec** %link, align 8
  %os14332 = bitcast %union.rec* %2062 to %struct.word_type*
  %olist4333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14332, i32 0, i32 0
  %arrayidx4334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4333, i32 0, i64 1
  %opred4335 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4334, i32 0, i32 0
  %2063 = load %union.rec*, %union.rec** %opred4335, align 8
  store %union.rec* %2063, %union.rec** %y, align 8
  br label %for.cond.4336

for.cond.4336:                                    ; preds = %for.inc.4345, %for.body.4331
  %2064 = load %union.rec*, %union.rec** %y, align 8
  %os14337 = bitcast %union.rec* %2064 to %struct.word_type*
  %ou14338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14337, i32 0, i32 1
  %os114339 = bitcast %union.FIRST_UNION* %ou14338 to %struct.anon*
  %otype4340 = getelementptr inbounds %struct.anon, %struct.anon* %os114339, i32 0, i32 0
  %2065 = load i8, i8* %otype4340, align 1
  %conv4341 = zext i8 %2065 to i32
  %cmp4342 = icmp eq i32 %conv4341, 0
  br i1 %cmp4342, label %for.body.4344, label %for.end.4350

for.body.4344:                                    ; preds = %for.cond.4336
  br label %for.inc.4345

for.inc.4345:                                     ; preds = %for.body.4344
  %2066 = load %union.rec*, %union.rec** %y, align 8
  %os14346 = bitcast %union.rec* %2066 to %struct.word_type*
  %olist4347 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14346, i32 0, i32 0
  %arrayidx4348 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4347, i32 0, i64 1
  %opred4349 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4348, i32 0, i32 0
  %2067 = load %union.rec*, %union.rec** %opred4349, align 8
  store %union.rec* %2067, %union.rec** %y, align 8
  br label %for.cond.4336

for.end.4350:                                     ; preds = %for.cond.4336
  %2068 = load %union.rec*, %union.rec** %y, align 8
  %os14351 = bitcast %union.rec* %2068 to %struct.word_type*
  %ou14352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14351, i32 0, i32 1
  %os114353 = bitcast %union.FIRST_UNION* %ou14352 to %struct.anon*
  %otype4354 = getelementptr inbounds %struct.anon, %struct.anon* %os114353, i32 0, i32 0
  %2069 = load i8, i8* %otype4354, align 1
  %conv4355 = zext i8 %2069 to i32
  %cmp4356 = icmp eq i32 %conv4355, 1
  br i1 %cmp4356, label %if.then.4358, label %if.else.4370

if.then.4358:                                     ; preds = %for.end.4350
  %2070 = load i32, i32* %jn, align 4
  %tobool4359 = icmp ne i32 %2070, 0
  br i1 %tobool4359, label %land.rhs.4360, label %land.end.4368

land.rhs.4360:                                    ; preds = %if.then.4358
  %2071 = load %union.rec*, %union.rec** %y, align 8
  %os54361 = bitcast %union.rec* %2071 to %struct.gapobj_type*
  %ogap4362 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os54361, i32 0, i32 3
  %2072 = bitcast %struct.GAP* %ogap4362 to i16*
  %bf.load4363 = load i16, i16* %2072, align 4
  %bf.lshr4364 = lshr i16 %bf.load4363, 9
  %bf.clear4365 = and i16 %bf.lshr4364, 1
  %bf.cast4366 = zext i16 %bf.clear4365 to i32
  %tobool4367 = icmp ne i32 %bf.cast4366, 0
  br label %land.end.4368

land.end.4368:                                    ; preds = %land.rhs.4360, %if.then.4358
  %2073 = phi i1 [ false, %if.then.4358 ], [ %tobool4367, %land.rhs.4360 ]
  %land.ext4369 = zext i1 %2073 to i32
  store i32 %land.ext4369, i32* %jn, align 4
  br label %if.end.4401

if.else.4370:                                     ; preds = %for.end.4350
  %2074 = load %union.rec*, %union.rec** %y, align 8
  %os14371 = bitcast %union.rec* %2074 to %struct.word_type*
  %ou14372 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14371, i32 0, i32 1
  %os114373 = bitcast %union.FIRST_UNION* %ou14372 to %struct.anon*
  %otype4374 = getelementptr inbounds %struct.anon, %struct.anon* %os114373, i32 0, i32 0
  %2075 = load i8, i8* %otype4374, align 1
  %conv4375 = zext i8 %2075 to i32
  %cmp4376 = icmp eq i32 %conv4375, 9
  br i1 %cmp4376, label %cond.true.4378, label %cond.false.4381

cond.true.4378:                                   ; preds = %if.else.4370
  %2076 = load %union.rec*, %union.rec** %y, align 8
  %call4379 = call i32 @SplitIsDefinite(%union.rec* %2076)
  %tobool4380 = icmp ne i32 %call4379, 0
  br i1 %tobool4380, label %if.then.4399, label %if.end.4400

cond.false.4381:                                  ; preds = %if.else.4370
  %2077 = load %union.rec*, %union.rec** %y, align 8
  %os14382 = bitcast %union.rec* %2077 to %struct.word_type*
  %ou14383 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14382, i32 0, i32 1
  %os114384 = bitcast %union.FIRST_UNION* %ou14383 to %struct.anon*
  %otype4385 = getelementptr inbounds %struct.anon, %struct.anon* %os114384, i32 0, i32 0
  %2078 = load i8, i8* %otype4385, align 1
  %conv4386 = zext i8 %2078 to i32
  %cmp4387 = icmp sge i32 %conv4386, 9
  br i1 %cmp4387, label %land.rhs.4389, label %land.end.4397

land.rhs.4389:                                    ; preds = %cond.false.4381
  %2079 = load %union.rec*, %union.rec** %y, align 8
  %os14390 = bitcast %union.rec* %2079 to %struct.word_type*
  %ou14391 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14390, i32 0, i32 1
  %os114392 = bitcast %union.FIRST_UNION* %ou14391 to %struct.anon*
  %otype4393 = getelementptr inbounds %struct.anon, %struct.anon* %os114392, i32 0, i32 0
  %2080 = load i8, i8* %otype4393, align 1
  %conv4394 = zext i8 %2080 to i32
  %cmp4395 = icmp sle i32 %conv4394, 99
  br label %land.end.4397

land.end.4397:                                    ; preds = %land.rhs.4389, %cond.false.4381
  %2081 = phi i1 [ false, %cond.false.4381 ], [ %cmp4395, %land.rhs.4389 ]
  br i1 %2081, label %if.then.4399, label %if.end.4400

if.then.4399:                                     ; preds = %land.end.4397, %cond.true.4378
  br label %for.end.4407

if.end.4400:                                      ; preds = %land.end.4397, %cond.true.4378
  br label %if.end.4401

if.end.4401:                                      ; preds = %if.end.4400, %land.end.4368
  br label %for.inc.4402

for.inc.4402:                                     ; preds = %if.end.4401
  %2082 = load %union.rec*, %union.rec** %link, align 8
  %os14403 = bitcast %union.rec* %2082 to %struct.word_type*
  %olist4404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14403, i32 0, i32 0
  %arrayidx4405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4404, i32 0, i64 0
  %osucc4406 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4405, i32 0, i32 1
  %2083 = load %union.rec*, %union.rec** %osucc4406, align 8
  store %union.rec* %2083, %union.rec** %link, align 8
  br label %for.cond.4328

for.end.4407:                                     ; preds = %if.then.4399, %for.cond.4328
  %2084 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %2084, %union.rec** %prev, align 8
  %2085 = load i32, i32* %xmk.addr, align 4
  %2086 = load i32, i32* %dim.addr, align 4
  %idxprom4408 = sext i32 %2086 to i64
  %2087 = load %union.rec*, %union.rec** %x.addr, align 8
  %os14409 = bitcast %union.rec* %2087 to %struct.word_type*
  %ou34410 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14409, i32 0, i32 3
  %os314411 = bitcast %union.THIRD_UNION* %ou34410 to %struct.anon.6*
  %oback4412 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314411, i32 0, i32 0
  %arrayidx4413 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4412, i32 0, i64 %idxprom4408
  %2088 = load i32, i32* %arrayidx4413, align 4
  %sub4414 = sub nsw i32 %2085, %2088
  %2089 = load i32, i32* %dim.addr, align 4
  %idxprom4415 = sext i32 %2089 to i64
  %2090 = load %union.rec*, %union.rec** %y, align 8
  %os14416 = bitcast %union.rec* %2090 to %struct.word_type*
  %ou34417 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14416, i32 0, i32 3
  %os314418 = bitcast %union.THIRD_UNION* %ou34417 to %struct.anon.6*
  %oback4419 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314418, i32 0, i32 0
  %arrayidx4420 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4419, i32 0, i64 %idxprom4415
  %2091 = load i32, i32* %arrayidx4420, align 4
  %add4421 = add nsw i32 %sub4414, %2091
  %2092 = load i32, i32* %adjust_indent, align 4
  %add4422 = add nsw i32 %add4421, %2092
  store i32 %add4422, i32* %mk, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %2093 = load %union.rec*, %union.rec** %link, align 8
  %os14423 = bitcast %union.rec* %2093 to %struct.word_type*
  %olist4424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14423, i32 0, i32 0
  %arrayidx4425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4424, i32 0, i64 0
  %osucc4426 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4425, i32 0, i32 1
  %2094 = load %union.rec*, %union.rec** %osucc4426, align 8
  store %union.rec* %2094, %union.rec** %link, align 8
  br label %for.cond.4427

for.cond.4427:                                    ; preds = %for.inc.4506, %for.end.4407
  %2095 = load %union.rec*, %union.rec** %link, align 8
  %2096 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp4428 = icmp ne %union.rec* %2095, %2096
  br i1 %cmp4428, label %for.body.4430, label %for.end.4511

for.body.4430:                                    ; preds = %for.cond.4427
  %2097 = load %union.rec*, %union.rec** %link, align 8
  %os14431 = bitcast %union.rec* %2097 to %struct.word_type*
  %olist4432 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14431, i32 0, i32 0
  %arrayidx4433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4432, i32 0, i64 1
  %opred4434 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4433, i32 0, i32 0
  %2098 = load %union.rec*, %union.rec** %opred4434, align 8
  store %union.rec* %2098, %union.rec** %y, align 8
  br label %for.cond.4435

for.cond.4435:                                    ; preds = %for.inc.4444, %for.body.4430
  %2099 = load %union.rec*, %union.rec** %y, align 8
  %os14436 = bitcast %union.rec* %2099 to %struct.word_type*
  %ou14437 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14436, i32 0, i32 1
  %os114438 = bitcast %union.FIRST_UNION* %ou14437 to %struct.anon*
  %otype4439 = getelementptr inbounds %struct.anon, %struct.anon* %os114438, i32 0, i32 0
  %2100 = load i8, i8* %otype4439, align 1
  %conv4440 = zext i8 %2100 to i32
  %cmp4441 = icmp eq i32 %conv4440, 0
  br i1 %cmp4441, label %for.body.4443, label %for.end.4449

for.body.4443:                                    ; preds = %for.cond.4435
  br label %for.inc.4444

for.inc.4444:                                     ; preds = %for.body.4443
  %2101 = load %union.rec*, %union.rec** %y, align 8
  %os14445 = bitcast %union.rec* %2101 to %struct.word_type*
  %olist4446 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14445, i32 0, i32 0
  %arrayidx4447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4446, i32 0, i64 1
  %opred4448 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4447, i32 0, i32 0
  %2102 = load %union.rec*, %union.rec** %opred4448, align 8
  store %union.rec* %2102, %union.rec** %y, align 8
  br label %for.cond.4435

for.end.4449:                                     ; preds = %for.cond.4435
  %2103 = load %union.rec*, %union.rec** %y, align 8
  %os14450 = bitcast %union.rec* %2103 to %struct.word_type*
  %ou14451 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14450, i32 0, i32 1
  %os114452 = bitcast %union.FIRST_UNION* %ou14451 to %struct.anon*
  %otype4453 = getelementptr inbounds %struct.anon, %struct.anon* %os114452, i32 0, i32 0
  %2104 = load i8, i8* %otype4453, align 1
  %conv4454 = zext i8 %2104 to i32
  %cmp4455 = icmp eq i32 %conv4454, 1
  br i1 %cmp4455, label %if.then.4457, label %if.else.4469

if.then.4457:                                     ; preds = %for.end.4449
  %2105 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %2105, %union.rec** %g, align 8
  %2106 = load i32, i32* %jn, align 4
  %tobool4458 = icmp ne i32 %2106, 0
  br i1 %tobool4458, label %land.rhs.4459, label %land.end.4467

land.rhs.4459:                                    ; preds = %if.then.4457
  %2107 = load %union.rec*, %union.rec** %y, align 8
  %os54460 = bitcast %union.rec* %2107 to %struct.gapobj_type*
  %ogap4461 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os54460, i32 0, i32 3
  %2108 = bitcast %struct.GAP* %ogap4461 to i16*
  %bf.load4462 = load i16, i16* %2108, align 4
  %bf.lshr4463 = lshr i16 %bf.load4462, 9
  %bf.clear4464 = and i16 %bf.lshr4463, 1
  %bf.cast4465 = zext i16 %bf.clear4464 to i32
  %tobool4466 = icmp ne i32 %bf.cast4465, 0
  br label %land.end.4467

land.end.4467:                                    ; preds = %land.rhs.4459, %if.then.4457
  %2109 = phi i1 [ false, %if.then.4457 ], [ %tobool4466, %land.rhs.4459 ]
  %land.ext4468 = zext i1 %2109 to i32
  store i32 %land.ext4468, i32* %jn, align 4
  br label %if.end.4505

if.else.4469:                                     ; preds = %for.end.4449
  %2110 = load %union.rec*, %union.rec** %y, align 8
  %os14470 = bitcast %union.rec* %2110 to %struct.word_type*
  %ou14471 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14470, i32 0, i32 1
  %os114472 = bitcast %union.FIRST_UNION* %ou14471 to %struct.anon*
  %otype4473 = getelementptr inbounds %struct.anon, %struct.anon* %os114472, i32 0, i32 0
  %2111 = load i8, i8* %otype4473, align 1
  %conv4474 = zext i8 %2111 to i32
  %cmp4475 = icmp eq i32 %conv4474, 9
  br i1 %cmp4475, label %cond.true.4477, label %cond.false.4480

cond.true.4477:                                   ; preds = %if.else.4469
  %2112 = load %union.rec*, %union.rec** %y, align 8
  %call4478 = call i32 @SplitIsDefinite(%union.rec* %2112)
  %tobool4479 = icmp ne i32 %call4478, 0
  br i1 %tobool4479, label %if.then.4498, label %if.end.4504

cond.false.4480:                                  ; preds = %if.else.4469
  %2113 = load %union.rec*, %union.rec** %y, align 8
  %os14481 = bitcast %union.rec* %2113 to %struct.word_type*
  %ou14482 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14481, i32 0, i32 1
  %os114483 = bitcast %union.FIRST_UNION* %ou14482 to %struct.anon*
  %otype4484 = getelementptr inbounds %struct.anon, %struct.anon* %os114483, i32 0, i32 0
  %2114 = load i8, i8* %otype4484, align 1
  %conv4485 = zext i8 %2114 to i32
  %cmp4486 = icmp sge i32 %conv4485, 9
  br i1 %cmp4486, label %land.rhs.4488, label %land.end.4496

land.rhs.4488:                                    ; preds = %cond.false.4480
  %2115 = load %union.rec*, %union.rec** %y, align 8
  %os14489 = bitcast %union.rec* %2115 to %struct.word_type*
  %ou14490 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14489, i32 0, i32 1
  %os114491 = bitcast %union.FIRST_UNION* %ou14490 to %struct.anon*
  %otype4492 = getelementptr inbounds %struct.anon, %struct.anon* %os114491, i32 0, i32 0
  %2116 = load i8, i8* %otype4492, align 1
  %conv4493 = zext i8 %2116 to i32
  %cmp4494 = icmp sle i32 %conv4493, 99
  br label %land.end.4496

land.end.4496:                                    ; preds = %land.rhs.4488, %cond.false.4480
  %2117 = phi i1 [ false, %cond.false.4480 ], [ %cmp4494, %land.rhs.4488 ]
  br i1 %2117, label %if.then.4498, label %if.end.4504

if.then.4498:                                     ; preds = %land.end.4496, %cond.true.4477
  %2118 = load %union.rec*, %union.rec** %g, align 8
  %cmp4499 = icmp ne %union.rec* %2118, null
  br i1 %cmp4499, label %if.end.4503, label %if.then.4501

if.then.4501:                                     ; preds = %if.then.4498
  %2119 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4502 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.4503

if.end.4503:                                      ; preds = %if.then.4501, %if.then.4498
  br label %for.end.4511

if.end.4504:                                      ; preds = %land.end.4496, %cond.true.4477
  br label %if.end.4505

if.end.4505:                                      ; preds = %if.end.4504, %land.end.4467
  br label %for.inc.4506

for.inc.4506:                                     ; preds = %if.end.4505
  %2120 = load %union.rec*, %union.rec** %link, align 8
  %os14507 = bitcast %union.rec* %2120 to %struct.word_type*
  %olist4508 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14507, i32 0, i32 0
  %arrayidx4509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4508, i32 0, i64 0
  %osucc4510 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4509, i32 0, i32 1
  %2121 = load %union.rec*, %union.rec** %osucc4510, align 8
  store %union.rec* %2121, %union.rec** %link, align 8
  br label %for.cond.4427

for.end.4511:                                     ; preds = %if.end.4503, %for.cond.4427
  br label %while.cond.4512

while.cond.4512:                                  ; preds = %for.end.4956, %for.end.4511
  %2122 = load %union.rec*, %union.rec** %link, align 8
  %2123 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp4513 = icmp ne %union.rec* %2122, %2123
  br i1 %cmp4513, label %while.body.4515, label %while.end.4957

while.body.4515:                                  ; preds = %while.cond.4512
  %2124 = load %union.rec*, %union.rec** %prev, align 8
  %os14516 = bitcast %union.rec* %2124 to %struct.word_type*
  %ou24517 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14516, i32 0, i32 2
  %os224518 = bitcast %union.SECOND_UNION* %ou24517 to %struct.anon.1*
  %2125 = bitcast %struct.anon.1* %os224518 to i32*
  %bf.load4519 = load i32, i32* %2125, align 4
  %bf.lshr4520 = lshr i32 %bf.load4519, 29
  %bf.clear4521 = and i32 %bf.lshr4520, 3
  %cmp4522 = icmp eq i32 %bf.clear4521, 2
  br i1 %cmp4522, label %if.then.4524, label %if.end.4805

if.then.4524:                                     ; preds = %while.body.4515
  %2126 = load i32, i32* %underlining, align 4
  %tobool4525 = icmp ne i32 %2126, 0
  br i1 %tobool4525, label %if.end.4595, label %if.then.4526

if.then.4526:                                     ; preds = %if.then.4524
  store i32 1, i32* %underlining, align 4
  %2127 = load %union.rec*, %union.rec** %prev, align 8
  %os14527 = bitcast %union.rec* %2127 to %struct.word_type*
  %ou14528 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14527, i32 0, i32 1
  %os114529 = bitcast %union.FIRST_UNION* %ou14528 to %struct.anon*
  %otype4530 = getelementptr inbounds %struct.anon, %struct.anon* %os114529, i32 0, i32 0
  %2128 = load i8, i8* %otype4530, align 1
  %conv4531 = zext i8 %2128 to i32
  %cmp4532 = icmp eq i32 %conv4531, 11
  br i1 %cmp4532, label %cond.true.4542, label %lor.lhs.false.4534

lor.lhs.false.4534:                               ; preds = %if.then.4526
  %2129 = load %union.rec*, %union.rec** %prev, align 8
  %os14535 = bitcast %union.rec* %2129 to %struct.word_type*
  %ou14536 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14535, i32 0, i32 1
  %os114537 = bitcast %union.FIRST_UNION* %ou14536 to %struct.anon*
  %otype4538 = getelementptr inbounds %struct.anon, %struct.anon* %os114537, i32 0, i32 0
  %2130 = load i8, i8* %otype4538, align 1
  %conv4539 = zext i8 %2130 to i32
  %cmp4540 = icmp eq i32 %conv4539, 12
  br i1 %cmp4540, label %cond.true.4542, label %cond.false.4548

cond.true.4542:                                   ; preds = %lor.lhs.false.4534, %if.then.4526
  %2131 = load %union.rec*, %union.rec** %prev, align 8
  %os14543 = bitcast %union.rec* %2131 to %struct.word_type*
  %ou24544 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14543, i32 0, i32 2
  %os224545 = bitcast %union.SECOND_UNION* %ou24544 to %struct.anon.1*
  %2132 = bitcast %struct.anon.1* %os224545 to i32*
  %bf.load4546 = load i32, i32* %2132, align 4
  %bf.clear4547 = and i32 %bf.load4546, 4095
  br label %cond.end.4555

cond.false.4548:                                  ; preds = %lor.lhs.false.4534
  %2133 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24549 = bitcast %union.rec* %2133 to %struct.closure_type*
  %ou44550 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24549, i32 0, i32 4
  %osave_style4551 = bitcast %union.FOURTH_UNION* %ou44550 to %struct.STYLE*
  %ofont4552 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4551, i32 0, i32 4
  %bf.load4553 = load i32, i32* %ofont4552, align 4
  %bf.clear4554 = and i32 %bf.load4553, 4095
  br label %cond.end.4555

cond.end.4555:                                    ; preds = %cond.false.4548, %cond.true.4542
  %cond4556 = phi i32 [ %bf.clear4547, %cond.true.4542 ], [ %bf.clear4554, %cond.false.4548 ]
  store i32 %cond4556, i32* %underline_font, align 4
  %2134 = load %union.rec*, %union.rec** %prev, align 8
  %os14557 = bitcast %union.rec* %2134 to %struct.word_type*
  %ou14558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14557, i32 0, i32 1
  %os114559 = bitcast %union.FIRST_UNION* %ou14558 to %struct.anon*
  %otype4560 = getelementptr inbounds %struct.anon, %struct.anon* %os114559, i32 0, i32 0
  %2135 = load i8, i8* %otype4560, align 1
  %conv4561 = zext i8 %2135 to i32
  %cmp4562 = icmp eq i32 %conv4561, 11
  br i1 %cmp4562, label %cond.true.4572, label %lor.lhs.false.4564

lor.lhs.false.4564:                               ; preds = %cond.end.4555
  %2136 = load %union.rec*, %union.rec** %prev, align 8
  %os14565 = bitcast %union.rec* %2136 to %struct.word_type*
  %ou14566 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14565, i32 0, i32 1
  %os114567 = bitcast %union.FIRST_UNION* %ou14566 to %struct.anon*
  %otype4568 = getelementptr inbounds %struct.anon, %struct.anon* %os114567, i32 0, i32 0
  %2137 = load i8, i8* %otype4568, align 1
  %conv4569 = zext i8 %2137 to i32
  %cmp4570 = icmp eq i32 %conv4569, 12
  br i1 %cmp4570, label %cond.true.4572, label %cond.false.4579

cond.true.4572:                                   ; preds = %lor.lhs.false.4564, %cond.end.4555
  %2138 = load %union.rec*, %union.rec** %prev, align 8
  %os14573 = bitcast %union.rec* %2138 to %struct.word_type*
  %ou24574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14573, i32 0, i32 2
  %os224575 = bitcast %union.SECOND_UNION* %ou24574 to %struct.anon.1*
  %2139 = bitcast %struct.anon.1* %os224575 to i32*
  %bf.load4576 = load i32, i32* %2139, align 4
  %bf.lshr4577 = lshr i32 %bf.load4576, 12
  %bf.clear4578 = and i32 %bf.lshr4577, 1023
  br label %cond.end.4586

cond.false.4579:                                  ; preds = %lor.lhs.false.4564
  %2140 = load %union.rec*, %union.rec** %x.addr, align 8
  %os24580 = bitcast %union.rec* %2140 to %struct.closure_type*
  %ou44581 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os24580, i32 0, i32 4
  %osave_style4582 = bitcast %union.FOURTH_UNION* %ou44581 to %struct.STYLE*
  %ocolour = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style4582, i32 0, i32 4
  %bf.load4583 = load i32, i32* %ocolour, align 4
  %bf.lshr4584 = lshr i32 %bf.load4583, 12
  %bf.clear4585 = and i32 %bf.lshr4584, 1023
  br label %cond.end.4586

cond.end.4586:                                    ; preds = %cond.false.4579, %cond.true.4572
  %cond4587 = phi i32 [ %bf.clear4578, %cond.true.4572 ], [ %bf.clear4585, %cond.false.4579 ]
  store i32 %cond4587, i32* %underline_colour, align 4
  %2141 = load i32, i32* %mk, align 4
  %2142 = load i32, i32* %dim.addr, align 4
  %idxprom4588 = sext i32 %2142 to i64
  %2143 = load %union.rec*, %union.rec** %prev, align 8
  %os14589 = bitcast %union.rec* %2143 to %struct.word_type*
  %ou34590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14589, i32 0, i32 3
  %os314591 = bitcast %union.THIRD_UNION* %ou34590 to %struct.anon.6*
  %oback4592 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314591, i32 0, i32 0
  %arrayidx4593 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4592, i32 0, i64 %idxprom4588
  %2144 = load i32, i32* %arrayidx4593, align 4
  %sub4594 = sub nsw i32 %2141, %2144
  store i32 %sub4594, i32* %underline_xstart, align 4
  br label %if.end.4595

if.end.4595:                                      ; preds = %cond.end.4586, %if.then.4524
  %2145 = load %union.rec*, %union.rec** %g, align 8
  %os14596 = bitcast %union.rec* %2145 to %struct.word_type*
  %ou24597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14596, i32 0, i32 2
  %os224598 = bitcast %union.SECOND_UNION* %ou24597 to %struct.anon.1*
  %2146 = bitcast %struct.anon.1* %os224598 to i32*
  %bf.load4599 = load i32, i32* %2146, align 4
  %bf.lshr4600 = lshr i32 %bf.load4599, 29
  %bf.clear4601 = and i32 %bf.lshr4600, 3
  %cmp4602 = icmp eq i32 %bf.clear4601, 1
  br i1 %cmp4602, label %if.then.4604, label %if.end.4804

if.then.4604:                                     ; preds = %if.end.4595
  %2147 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 3), align 1
  %conv4605 = zext i8 %2147 to i32
  store i32 %conv4605, i32* @zz_size, align 4
  %conv4606 = sext i32 %conv4605 to i64
  %cmp4607 = icmp uge i64 %conv4606, 265
  br i1 %cmp4607, label %if.then.4609, label %if.else.4611

if.then.4609:                                     ; preds = %if.then.4604
  %2148 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4610 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %2148)
  br label %if.end.4628

if.else.4611:                                     ; preds = %if.then.4604
  %2149 = load i32, i32* @zz_size, align 4
  %idxprom4612 = sext i32 %2149 to i64
  %arrayidx4613 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4612
  %2150 = load %union.rec*, %union.rec** %arrayidx4613, align 8
  %cmp4614 = icmp eq %union.rec* %2150, null
  br i1 %cmp4614, label %if.then.4616, label %if.else.4618

if.then.4616:                                     ; preds = %if.else.4611
  %2151 = load i32, i32* @zz_size, align 4
  %2152 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4617 = call %union.rec* @GetMemory(i32 %2151, %struct.FILE_POS* %2152)
  store %union.rec* %call4617, %union.rec** @zz_hold, align 8
  br label %if.end.4627

if.else.4618:                                     ; preds = %if.else.4611
  %2153 = load i32, i32* @zz_size, align 4
  %idxprom4619 = sext i32 %2153 to i64
  %arrayidx4620 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4619
  %2154 = load %union.rec*, %union.rec** %arrayidx4620, align 8
  store %union.rec* %2154, %union.rec** @zz_hold, align 8
  store %union.rec* %2154, %union.rec** @zz_hold, align 8
  %2155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14621 = bitcast %union.rec* %2155 to %struct.word_type*
  %olist4622 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14621, i32 0, i32 0
  %arrayidx4623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4622, i32 0, i64 0
  %opred4624 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4623, i32 0, i32 0
  %2156 = load %union.rec*, %union.rec** %opred4624, align 8
  %2157 = load i32, i32* @zz_size, align 4
  %idxprom4625 = sext i32 %2157 to i64
  %arrayidx4626 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4625
  store %union.rec* %2156, %union.rec** %arrayidx4626, align 8
  br label %if.end.4627

if.end.4627:                                      ; preds = %if.else.4618, %if.then.4616
  br label %if.end.4628

if.end.4628:                                      ; preds = %if.end.4627, %if.then.4609
  %2158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14629 = bitcast %union.rec* %2158 to %struct.word_type*
  %ou14630 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14629, i32 0, i32 1
  %os114631 = bitcast %union.FIRST_UNION* %ou14630 to %struct.anon*
  %otype4632 = getelementptr inbounds %struct.anon, %struct.anon* %os114631, i32 0, i32 0
  store i8 3, i8* %otype4632, align 1
  %2159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14633 = bitcast %union.rec* %2160 to %struct.word_type*
  %olist4634 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14633, i32 0, i32 0
  %arrayidx4635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4634, i32 0, i64 1
  %osucc4636 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4635, i32 0, i32 1
  store %union.rec* %2159, %union.rec** %osucc4636, align 8
  %2161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14637 = bitcast %union.rec* %2161 to %struct.word_type*
  %olist4638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14637, i32 0, i32 0
  %arrayidx4639 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4638, i32 0, i64 1
  %opred4640 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4639, i32 0, i32 0
  store %union.rec* %2159, %union.rec** %opred4640, align 8
  %2162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14641 = bitcast %union.rec* %2162 to %struct.word_type*
  %olist4642 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14641, i32 0, i32 0
  %arrayidx4643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4642, i32 0, i64 0
  %osucc4644 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4643, i32 0, i32 1
  store %union.rec* %2159, %union.rec** %osucc4644, align 8
  %2163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14645 = bitcast %union.rec* %2163 to %struct.word_type*
  %olist4646 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14645, i32 0, i32 0
  %arrayidx4647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4646, i32 0, i64 0
  %opred4648 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4647, i32 0, i32 0
  store %union.rec* %2159, %union.rec** %opred4648, align 8
  store %union.rec* %2159, %union.rec** %urec, align 8
  %2164 = load i32, i32* %underline_xstart, align 4
  %2165 = load %union.rec*, %union.rec** %urec, align 8
  %os14649 = bitcast %union.rec* %2165 to %struct.word_type*
  %ou34650 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14649, i32 0, i32 3
  %os314651 = bitcast %union.THIRD_UNION* %ou34650 to %struct.anon.6*
  %oback4652 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314651, i32 0, i32 0
  %arrayidx4653 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4652, i32 0, i64 0
  store i32 %2164, i32* %arrayidx4653, align 4
  %2166 = load i32, i32* %mk, align 4
  %2167 = load i32, i32* %dim.addr, align 4
  %idxprom4654 = sext i32 %2167 to i64
  %2168 = load %union.rec*, %union.rec** %prev, align 8
  %os14655 = bitcast %union.rec* %2168 to %struct.word_type*
  %ou34656 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14655, i32 0, i32 3
  %os314657 = bitcast %union.THIRD_UNION* %ou34656 to %struct.anon.6*
  %ofwd4658 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314657, i32 0, i32 1
  %arrayidx4659 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4658, i32 0, i64 %idxprom4654
  %2169 = load i32, i32* %arrayidx4659, align 4
  %add4660 = add nsw i32 %2166, %2169
  %2170 = load %union.rec*, %union.rec** %urec, align 8
  %os14661 = bitcast %union.rec* %2170 to %struct.word_type*
  %ou34662 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14661, i32 0, i32 3
  %os314663 = bitcast %union.THIRD_UNION* %ou34662 to %struct.anon.6*
  %ofwd4664 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314663, i32 0, i32 1
  %arrayidx4665 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4664, i32 0, i64 0
  store i32 %add4660, i32* %arrayidx4665, align 4
  %2171 = load i32, i32* %underline_font, align 4
  %2172 = load %union.rec*, %union.rec** %urec, align 8
  %os14666 = bitcast %union.rec* %2172 to %struct.word_type*
  %ou34667 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14666, i32 0, i32 3
  %os314668 = bitcast %union.THIRD_UNION* %ou34667 to %struct.anon.6*
  %oback4669 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314668, i32 0, i32 0
  %arrayidx4670 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4669, i32 0, i64 1
  store i32 %2171, i32* %arrayidx4670, align 4
  %2173 = load i32, i32* %underline_colour, align 4
  %2174 = load %union.rec*, %union.rec** %urec, align 8
  %os14671 = bitcast %union.rec* %2174 to %struct.word_type*
  %ou34672 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14671, i32 0, i32 3
  %os314673 = bitcast %union.THIRD_UNION* %ou34672 to %struct.anon.6*
  %ofwd4674 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314673, i32 0, i32 1
  %arrayidx4675 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4674, i32 0, i64 1
  store i32 %2173, i32* %arrayidx4675, align 4
  store i32 0, i32* %underlining, align 4
  %2175 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv4676 = zext i8 %2175 to i32
  store i32 %conv4676, i32* @zz_size, align 4
  %conv4677 = sext i32 %conv4676 to i64
  %cmp4678 = icmp uge i64 %conv4677, 265
  br i1 %cmp4678, label %if.then.4680, label %if.else.4682

if.then.4680:                                     ; preds = %if.end.4628
  %2176 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4681 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %2176)
  br label %if.end.4699

if.else.4682:                                     ; preds = %if.end.4628
  %2177 = load i32, i32* @zz_size, align 4
  %idxprom4683 = sext i32 %2177 to i64
  %arrayidx4684 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4683
  %2178 = load %union.rec*, %union.rec** %arrayidx4684, align 8
  %cmp4685 = icmp eq %union.rec* %2178, null
  br i1 %cmp4685, label %if.then.4687, label %if.else.4689

if.then.4687:                                     ; preds = %if.else.4682
  %2179 = load i32, i32* @zz_size, align 4
  %2180 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4688 = call %union.rec* @GetMemory(i32 %2179, %struct.FILE_POS* %2180)
  store %union.rec* %call4688, %union.rec** @zz_hold, align 8
  br label %if.end.4698

if.else.4689:                                     ; preds = %if.else.4682
  %2181 = load i32, i32* @zz_size, align 4
  %idxprom4690 = sext i32 %2181 to i64
  %arrayidx4691 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4690
  %2182 = load %union.rec*, %union.rec** %arrayidx4691, align 8
  store %union.rec* %2182, %union.rec** @zz_hold, align 8
  store %union.rec* %2182, %union.rec** @zz_hold, align 8
  %2183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14692 = bitcast %union.rec* %2183 to %struct.word_type*
  %olist4693 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14692, i32 0, i32 0
  %arrayidx4694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4693, i32 0, i64 0
  %opred4695 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4694, i32 0, i32 0
  %2184 = load %union.rec*, %union.rec** %opred4695, align 8
  %2185 = load i32, i32* @zz_size, align 4
  %idxprom4696 = sext i32 %2185 to i64
  %arrayidx4697 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom4696
  store %union.rec* %2184, %union.rec** %arrayidx4697, align 8
  br label %if.end.4698

if.end.4698:                                      ; preds = %if.else.4689, %if.then.4687
  br label %if.end.4699

if.end.4699:                                      ; preds = %if.end.4698, %if.then.4680
  %2186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14700 = bitcast %union.rec* %2186 to %struct.word_type*
  %ou14701 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14700, i32 0, i32 1
  %os114702 = bitcast %union.FIRST_UNION* %ou14701 to %struct.anon*
  %otype4703 = getelementptr inbounds %struct.anon, %struct.anon* %os114702, i32 0, i32 0
  store i8 0, i8* %otype4703, align 1
  %2187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14704 = bitcast %union.rec* %2188 to %struct.word_type*
  %olist4705 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14704, i32 0, i32 0
  %arrayidx4706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4705, i32 0, i64 1
  %osucc4707 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4706, i32 0, i32 1
  store %union.rec* %2187, %union.rec** %osucc4707, align 8
  %2189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14708 = bitcast %union.rec* %2189 to %struct.word_type*
  %olist4709 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14708, i32 0, i32 0
  %arrayidx4710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4709, i32 0, i64 1
  %opred4711 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4710, i32 0, i32 0
  store %union.rec* %2187, %union.rec** %opred4711, align 8
  %2190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14712 = bitcast %union.rec* %2190 to %struct.word_type*
  %olist4713 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14712, i32 0, i32 0
  %arrayidx4714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4713, i32 0, i64 0
  %osucc4715 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4714, i32 0, i32 1
  store %union.rec* %2187, %union.rec** %osucc4715, align 8
  %2191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14716 = bitcast %union.rec* %2191 to %struct.word_type*
  %olist4717 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14716, i32 0, i32 0
  %arrayidx4718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4717, i32 0, i64 0
  %opred4719 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4718, i32 0, i32 0
  store %union.rec* %2187, %union.rec** %opred4719, align 8
  store %union.rec* %2187, %union.rec** @xx_link, align 8
  %2192 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2192, %union.rec** @zz_res, align 8
  %2193 = load %union.rec*, %union.rec** %prev, align 8
  %os14720 = bitcast %union.rec* %2193 to %struct.word_type*
  %olist4721 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14720, i32 0, i32 0
  %arrayidx4722 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4721, i32 0, i64 1
  %osucc4723 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4722, i32 0, i32 1
  %2194 = load %union.rec*, %union.rec** %osucc4723, align 8
  store %union.rec* %2194, %union.rec** @zz_hold, align 8
  %2195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4724 = icmp eq %union.rec* %2195, null
  br i1 %cmp4724, label %cond.true.4726, label %cond.false.4727

cond.true.4726:                                   ; preds = %if.end.4699
  %2196 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4762

cond.false.4727:                                  ; preds = %if.end.4699
  %2197 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4728 = icmp eq %union.rec* %2197, null
  br i1 %cmp4728, label %cond.true.4730, label %cond.false.4731

cond.true.4730:                                   ; preds = %cond.false.4727
  %2198 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4760

cond.false.4731:                                  ; preds = %cond.false.4727
  %2199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14732 = bitcast %union.rec* %2199 to %struct.word_type*
  %olist4733 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14732, i32 0, i32 0
  %arrayidx4734 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4733, i32 0, i64 0
  %opred4735 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4734, i32 0, i32 0
  %2200 = load %union.rec*, %union.rec** %opred4735, align 8
  store %union.rec* %2200, %union.rec** @zz_tmp, align 8
  %2201 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14736 = bitcast %union.rec* %2201 to %struct.word_type*
  %olist4737 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14736, i32 0, i32 0
  %arrayidx4738 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4737, i32 0, i64 0
  %opred4739 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4738, i32 0, i32 0
  %2202 = load %union.rec*, %union.rec** %opred4739, align 8
  %2203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14740 = bitcast %union.rec* %2203 to %struct.word_type*
  %olist4741 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14740, i32 0, i32 0
  %arrayidx4742 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4741, i32 0, i64 0
  %opred4743 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4742, i32 0, i32 0
  store %union.rec* %2202, %union.rec** %opred4743, align 8
  %2204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2205 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14744 = bitcast %union.rec* %2205 to %struct.word_type*
  %olist4745 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14744, i32 0, i32 0
  %arrayidx4746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4745, i32 0, i64 0
  %opred4747 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4746, i32 0, i32 0
  %2206 = load %union.rec*, %union.rec** %opred4747, align 8
  %os14748 = bitcast %union.rec* %2206 to %struct.word_type*
  %olist4749 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14748, i32 0, i32 0
  %arrayidx4750 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4749, i32 0, i64 0
  %osucc4751 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4750, i32 0, i32 1
  store %union.rec* %2204, %union.rec** %osucc4751, align 8
  %2207 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2208 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14752 = bitcast %union.rec* %2208 to %struct.word_type*
  %olist4753 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14752, i32 0, i32 0
  %arrayidx4754 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4753, i32 0, i64 0
  %opred4755 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4754, i32 0, i32 0
  store %union.rec* %2207, %union.rec** %opred4755, align 8
  %2209 = load %union.rec*, %union.rec** @zz_res, align 8
  %2210 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14756 = bitcast %union.rec* %2210 to %struct.word_type*
  %olist4757 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14756, i32 0, i32 0
  %arrayidx4758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4757, i32 0, i64 0
  %osucc4759 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4758, i32 0, i32 1
  store %union.rec* %2209, %union.rec** %osucc4759, align 8
  br label %cond.end.4760

cond.end.4760:                                    ; preds = %cond.false.4731, %cond.true.4730
  %cond4761 = phi %union.rec* [ %2198, %cond.true.4730 ], [ %2209, %cond.false.4731 ]
  br label %cond.end.4762

cond.end.4762:                                    ; preds = %cond.end.4760, %cond.true.4726
  %cond4763 = phi %union.rec* [ %2196, %cond.true.4726 ], [ %cond4761, %cond.end.4760 ]
  %2211 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2211, %union.rec** @zz_res, align 8
  %2212 = load %union.rec*, %union.rec** %urec, align 8
  store %union.rec* %2212, %union.rec** @zz_hold, align 8
  %2213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp4764 = icmp eq %union.rec* %2213, null
  br i1 %cmp4764, label %cond.true.4766, label %cond.false.4767

cond.true.4766:                                   ; preds = %cond.end.4762
  %2214 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.4802

cond.false.4767:                                  ; preds = %cond.end.4762
  %2215 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp4768 = icmp eq %union.rec* %2215, null
  br i1 %cmp4768, label %cond.true.4770, label %cond.false.4771

cond.true.4770:                                   ; preds = %cond.false.4767
  %2216 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.4800

cond.false.4771:                                  ; preds = %cond.false.4767
  %2217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14772 = bitcast %union.rec* %2217 to %struct.word_type*
  %olist4773 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14772, i32 0, i32 0
  %arrayidx4774 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4773, i32 0, i64 1
  %opred4775 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4774, i32 0, i32 0
  %2218 = load %union.rec*, %union.rec** %opred4775, align 8
  store %union.rec* %2218, %union.rec** @zz_tmp, align 8
  %2219 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14776 = bitcast %union.rec* %2219 to %struct.word_type*
  %olist4777 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14776, i32 0, i32 0
  %arrayidx4778 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4777, i32 0, i64 1
  %opred4779 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4778, i32 0, i32 0
  %2220 = load %union.rec*, %union.rec** %opred4779, align 8
  %2221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os14780 = bitcast %union.rec* %2221 to %struct.word_type*
  %olist4781 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14780, i32 0, i32 0
  %arrayidx4782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4781, i32 0, i64 1
  %opred4783 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4782, i32 0, i32 0
  store %union.rec* %2220, %union.rec** %opred4783, align 8
  %2222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2223 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14784 = bitcast %union.rec* %2223 to %struct.word_type*
  %olist4785 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14784, i32 0, i32 0
  %arrayidx4786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4785, i32 0, i64 1
  %opred4787 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4786, i32 0, i32 0
  %2224 = load %union.rec*, %union.rec** %opred4787, align 8
  %os14788 = bitcast %union.rec* %2224 to %struct.word_type*
  %olist4789 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14788, i32 0, i32 0
  %arrayidx4790 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4789, i32 0, i64 1
  %osucc4791 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4790, i32 0, i32 1
  store %union.rec* %2222, %union.rec** %osucc4791, align 8
  %2225 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2226 = load %union.rec*, %union.rec** @zz_res, align 8
  %os14792 = bitcast %union.rec* %2226 to %struct.word_type*
  %olist4793 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14792, i32 0, i32 0
  %arrayidx4794 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4793, i32 0, i64 1
  %opred4795 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4794, i32 0, i32 0
  store %union.rec* %2225, %union.rec** %opred4795, align 8
  %2227 = load %union.rec*, %union.rec** @zz_res, align 8
  %2228 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os14796 = bitcast %union.rec* %2228 to %struct.word_type*
  %olist4797 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14796, i32 0, i32 0
  %arrayidx4798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4797, i32 0, i64 1
  %osucc4799 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4798, i32 0, i32 1
  store %union.rec* %2227, %union.rec** %osucc4799, align 8
  br label %cond.end.4800

cond.end.4800:                                    ; preds = %cond.false.4771, %cond.true.4770
  %cond4801 = phi %union.rec* [ %2216, %cond.true.4770 ], [ %2227, %cond.false.4771 ]
  br label %cond.end.4802

cond.end.4802:                                    ; preds = %cond.end.4800, %cond.true.4766
  %cond4803 = phi %union.rec* [ %2214, %cond.true.4766 ], [ %cond4801, %cond.end.4800 ]
  br label %if.end.4804

if.end.4804:                                      ; preds = %cond.end.4802, %if.end.4595
  br label %if.end.4805

if.end.4805:                                      ; preds = %if.end.4804, %while.body.4515
  %2229 = load i32, i32* %adjusting, align 4
  %tobool4806 = icmp ne i32 %2229, 0
  br i1 %tobool4806, label %land.lhs.true.4807, label %if.else.4841

land.lhs.true.4807:                               ; preds = %if.end.4805
  %2230 = load %union.rec*, %union.rec** %g, align 8
  %os54808 = bitcast %union.rec* %2230 to %struct.gapobj_type*
  %ogap4809 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os54808, i32 0, i32 3
  %owidth4810 = getelementptr inbounds %struct.GAP, %struct.GAP* %ogap4809, i32 0, i32 1
  %2231 = load i16, i16* %owidth4810, align 2
  %conv4811 = sext i16 %2231 to i32
  %cmp4812 = icmp sgt i32 %conv4811, 0
  br i1 %cmp4812, label %if.then.4814, label %if.else.4841

if.then.4814:                                     ; preds = %land.lhs.true.4807
  %2232 = load %union.rec*, %union.rec** %prev, align 8
  %2233 = load i32, i32* %mk, align 4
  %2234 = load i32, i32* %dim.addr, align 4
  %idxprom4817 = sext i32 %2234 to i64
  %2235 = load %union.rec*, %union.rec** %prev, align 8
  %os14818 = bitcast %union.rec* %2235 to %struct.word_type*
  %ou34819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14818, i32 0, i32 3
  %os314820 = bitcast %union.THIRD_UNION* %ou34819 to %struct.anon.6*
  %oback4821 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314820, i32 0, i32 0
  %arrayidx4822 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4821, i32 0, i64 %idxprom4817
  %2236 = load i32, i32* %arrayidx4822, align 4
  %2237 = load i32, i32* %dim.addr, align 4
  %idxprom4823 = sext i32 %2237 to i64
  %2238 = load %union.rec*, %union.rec** %prev, align 8
  %os14824 = bitcast %union.rec* %2238 to %struct.word_type*
  %ou34825 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14824, i32 0, i32 3
  %os314826 = bitcast %union.THIRD_UNION* %ou34825 to %struct.anon.6*
  %ofwd4827 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314826, i32 0, i32 1
  %arrayidx4828 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4827, i32 0, i64 %idxprom4823
  %2239 = load i32, i32* %arrayidx4828, align 4
  %2240 = load i32, i32* %inc3333, align 4
  %add4829 = add nsw i32 %2239, %2240
  %2241 = load i32, i32* %dim.addr, align 4
  %2242 = load i32, i32* %pg.addr, align 4
  %2243 = load i32, i32* %count.addr, align 4
  %call4830 = call %union.rec* @FixAndPrintObject(%union.rec* %2232, i32 %2233, i32 %2236, i32 %add4829, i32 %2241, i32 0, i32 %2242, i32 %2243, i32* %aback, i32* %afwd)
  store %union.rec* %call4830, %union.rec** %prev, align 8
  %2244 = load i32, i32* %gaps_sofar, align 4
  %inc4831 = add nsw i32 %2244, 1
  store i32 %inc4831, i32* %gaps_sofar, align 4
  %2245 = load i32, i32* %frame_size3328, align 4
  %2246 = load i32, i32* %actual_size, align 4
  %sub4832 = sub nsw i32 %2245, %2246
  %2247 = load i32, i32* %gaps_sofar, align 4
  %mul4833 = mul nsw i32 %sub4832, %2247
  %2248 = load i32, i32* %adjustable_gaps, align 4
  %div4834 = sdiv i32 %mul4833, %2248
  store i32 %div4834, i32* %tmp4816, align 4
  %2249 = load %union.rec*, %union.rec** %g, align 8
  %os54835 = bitcast %union.rec* %2249 to %struct.gapobj_type*
  %osave_actual_gap4836 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os54835, i32 0, i32 6
  %2250 = load i16, i16* %osave_actual_gap4836, align 2
  %conv4837 = sext i16 %2250 to i32
  %2251 = load i32, i32* %tmp4816, align 4
  %2252 = load i32, i32* %adjust_sofar, align 4
  %sub4838 = sub nsw i32 %2251, %2252
  %add4839 = add nsw i32 %conv4837, %sub4838
  %2253 = load i32, i32* %mk, align 4
  %add4840 = add nsw i32 %2253, %add4839
  store i32 %add4840, i32* %mk, align 4
  %2254 = load i32, i32* %tmp4816, align 4
  store i32 %2254, i32* %adjust_sofar, align 4
  br label %if.end.4859

if.else.4841:                                     ; preds = %land.lhs.true.4807, %if.end.4805
  %2255 = load %union.rec*, %union.rec** %prev, align 8
  %2256 = load i32, i32* %mk, align 4
  %2257 = load i32, i32* %dim.addr, align 4
  %idxprom4842 = sext i32 %2257 to i64
  %2258 = load %union.rec*, %union.rec** %prev, align 8
  %os14843 = bitcast %union.rec* %2258 to %struct.word_type*
  %ou34844 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14843, i32 0, i32 3
  %os314845 = bitcast %union.THIRD_UNION* %ou34844 to %struct.anon.6*
  %oback4846 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314845, i32 0, i32 0
  %arrayidx4847 = getelementptr inbounds [2 x i32], [2 x i32]* %oback4846, i32 0, i64 %idxprom4842
  %2259 = load i32, i32* %arrayidx4847, align 4
  %2260 = load i32, i32* %dim.addr, align 4
  %idxprom4848 = sext i32 %2260 to i64
  %2261 = load %union.rec*, %union.rec** %prev, align 8
  %os14849 = bitcast %union.rec* %2261 to %struct.word_type*
  %ou34850 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14849, i32 0, i32 3
  %os314851 = bitcast %union.THIRD_UNION* %ou34850 to %struct.anon.6*
  %ofwd4852 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os314851, i32 0, i32 1
  %arrayidx4853 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd4852, i32 0, i64 %idxprom4848
  %2262 = load i32, i32* %arrayidx4853, align 4
  %2263 = load i32, i32* %dim.addr, align 4
  %2264 = load i32, i32* %pg.addr, align 4
  %2265 = load i32, i32* %count.addr, align 4
  %call4854 = call %union.rec* @FixAndPrintObject(%union.rec* %2255, i32 %2256, i32 %2259, i32 %2262, i32 %2263, i32 0, i32 %2264, i32 %2265, i32* %aback, i32* %afwd)
  store %union.rec* %call4854, %union.rec** %prev, align 8
  %2266 = load %union.rec*, %union.rec** %g, align 8
  %os54855 = bitcast %union.rec* %2266 to %struct.gapobj_type*
  %osave_actual_gap4856 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os54855, i32 0, i32 6
  %2267 = load i16, i16* %osave_actual_gap4856, align 2
  %conv4857 = sext i16 %2267 to i32
  %2268 = load i32, i32* %mk, align 4
  %add4858 = add nsw i32 %2268, %conv4857
  store i32 %add4858, i32* %mk, align 4
  br label %if.end.4859

if.end.4859:                                      ; preds = %if.else.4841, %if.then.4814
  %2269 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %2269, %union.rec** %prev, align 8
  %2270 = load i32, i32* %adjusting, align 4
  %tobool4860 = icmp ne i32 %2270, 0
  br i1 %tobool4860, label %if.end.4867, label %land.lhs.true.4861

land.lhs.true.4861:                               ; preds = %if.end.4859
  %2271 = load i32, i32* %will_adjust, align 4
  %tobool4862 = icmp ne i32 %2271, 0
  br i1 %tobool4862, label %land.lhs.true.4863, label %if.end.4867

land.lhs.true.4863:                               ; preds = %land.lhs.true.4861
  %2272 = load %union.rec*, %union.rec** %g, align 8
  %2273 = load %union.rec*, %union.rec** %last_bad_gap, align 8
  %cmp4864 = icmp eq %union.rec* %2272, %2273
  br i1 %cmp4864, label %if.then.4866, label %if.end.4867

if.then.4866:                                     ; preds = %land.lhs.true.4863
  store i32 1, i32* %adjusting, align 4
  br label %if.end.4867

if.end.4867:                                      ; preds = %if.then.4866, %land.lhs.true.4863, %land.lhs.true.4861, %if.end.4859
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %2274 = load %union.rec*, %union.rec** %link, align 8
  %os14868 = bitcast %union.rec* %2274 to %struct.word_type*
  %olist4869 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14868, i32 0, i32 0
  %arrayidx4870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4869, i32 0, i64 0
  %osucc4871 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4870, i32 0, i32 1
  %2275 = load %union.rec*, %union.rec** %osucc4871, align 8
  store %union.rec* %2275, %union.rec** %link, align 8
  br label %for.cond.4872

for.cond.4872:                                    ; preds = %for.inc.4951, %if.end.4867
  %2276 = load %union.rec*, %union.rec** %link, align 8
  %2277 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp4873 = icmp ne %union.rec* %2276, %2277
  br i1 %cmp4873, label %for.body.4875, label %for.end.4956

for.body.4875:                                    ; preds = %for.cond.4872
  %2278 = load %union.rec*, %union.rec** %link, align 8
  %os14876 = bitcast %union.rec* %2278 to %struct.word_type*
  %olist4877 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14876, i32 0, i32 0
  %arrayidx4878 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4877, i32 0, i64 1
  %opred4879 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4878, i32 0, i32 0
  %2279 = load %union.rec*, %union.rec** %opred4879, align 8
  store %union.rec* %2279, %union.rec** %y, align 8
  br label %for.cond.4880

for.cond.4880:                                    ; preds = %for.inc.4889, %for.body.4875
  %2280 = load %union.rec*, %union.rec** %y, align 8
  %os14881 = bitcast %union.rec* %2280 to %struct.word_type*
  %ou14882 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14881, i32 0, i32 1
  %os114883 = bitcast %union.FIRST_UNION* %ou14882 to %struct.anon*
  %otype4884 = getelementptr inbounds %struct.anon, %struct.anon* %os114883, i32 0, i32 0
  %2281 = load i8, i8* %otype4884, align 1
  %conv4885 = zext i8 %2281 to i32
  %cmp4886 = icmp eq i32 %conv4885, 0
  br i1 %cmp4886, label %for.body.4888, label %for.end.4894

for.body.4888:                                    ; preds = %for.cond.4880
  br label %for.inc.4889

for.inc.4889:                                     ; preds = %for.body.4888
  %2282 = load %union.rec*, %union.rec** %y, align 8
  %os14890 = bitcast %union.rec* %2282 to %struct.word_type*
  %olist4891 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14890, i32 0, i32 0
  %arrayidx4892 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4891, i32 0, i64 1
  %opred4893 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4892, i32 0, i32 0
  %2283 = load %union.rec*, %union.rec** %opred4893, align 8
  store %union.rec* %2283, %union.rec** %y, align 8
  br label %for.cond.4880

for.end.4894:                                     ; preds = %for.cond.4880
  %2284 = load %union.rec*, %union.rec** %y, align 8
  %os14895 = bitcast %union.rec* %2284 to %struct.word_type*
  %ou14896 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14895, i32 0, i32 1
  %os114897 = bitcast %union.FIRST_UNION* %ou14896 to %struct.anon*
  %otype4898 = getelementptr inbounds %struct.anon, %struct.anon* %os114897, i32 0, i32 0
  %2285 = load i8, i8* %otype4898, align 1
  %conv4899 = zext i8 %2285 to i32
  %cmp4900 = icmp eq i32 %conv4899, 1
  br i1 %cmp4900, label %if.then.4902, label %if.else.4914

if.then.4902:                                     ; preds = %for.end.4894
  %2286 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %2286, %union.rec** %g, align 8
  %2287 = load i32, i32* %jn, align 4
  %tobool4903 = icmp ne i32 %2287, 0
  br i1 %tobool4903, label %land.rhs.4904, label %land.end.4912

land.rhs.4904:                                    ; preds = %if.then.4902
  %2288 = load %union.rec*, %union.rec** %y, align 8
  %os54905 = bitcast %union.rec* %2288 to %struct.gapobj_type*
  %ogap4906 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os54905, i32 0, i32 3
  %2289 = bitcast %struct.GAP* %ogap4906 to i16*
  %bf.load4907 = load i16, i16* %2289, align 4
  %bf.lshr4908 = lshr i16 %bf.load4907, 9
  %bf.clear4909 = and i16 %bf.lshr4908, 1
  %bf.cast4910 = zext i16 %bf.clear4909 to i32
  %tobool4911 = icmp ne i32 %bf.cast4910, 0
  br label %land.end.4912

land.end.4912:                                    ; preds = %land.rhs.4904, %if.then.4902
  %2290 = phi i1 [ false, %if.then.4902 ], [ %tobool4911, %land.rhs.4904 ]
  %land.ext4913 = zext i1 %2290 to i32
  store i32 %land.ext4913, i32* %jn, align 4
  br label %if.end.4950

if.else.4914:                                     ; preds = %for.end.4894
  %2291 = load %union.rec*, %union.rec** %y, align 8
  %os14915 = bitcast %union.rec* %2291 to %struct.word_type*
  %ou14916 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14915, i32 0, i32 1
  %os114917 = bitcast %union.FIRST_UNION* %ou14916 to %struct.anon*
  %otype4918 = getelementptr inbounds %struct.anon, %struct.anon* %os114917, i32 0, i32 0
  %2292 = load i8, i8* %otype4918, align 1
  %conv4919 = zext i8 %2292 to i32
  %cmp4920 = icmp eq i32 %conv4919, 9
  br i1 %cmp4920, label %cond.true.4922, label %cond.false.4925

cond.true.4922:                                   ; preds = %if.else.4914
  %2293 = load %union.rec*, %union.rec** %y, align 8
  %call4923 = call i32 @SplitIsDefinite(%union.rec* %2293)
  %tobool4924 = icmp ne i32 %call4923, 0
  br i1 %tobool4924, label %if.then.4943, label %if.end.4949

cond.false.4925:                                  ; preds = %if.else.4914
  %2294 = load %union.rec*, %union.rec** %y, align 8
  %os14926 = bitcast %union.rec* %2294 to %struct.word_type*
  %ou14927 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14926, i32 0, i32 1
  %os114928 = bitcast %union.FIRST_UNION* %ou14927 to %struct.anon*
  %otype4929 = getelementptr inbounds %struct.anon, %struct.anon* %os114928, i32 0, i32 0
  %2295 = load i8, i8* %otype4929, align 1
  %conv4930 = zext i8 %2295 to i32
  %cmp4931 = icmp sge i32 %conv4930, 9
  br i1 %cmp4931, label %land.rhs.4933, label %land.end.4941

land.rhs.4933:                                    ; preds = %cond.false.4925
  %2296 = load %union.rec*, %union.rec** %y, align 8
  %os14934 = bitcast %union.rec* %2296 to %struct.word_type*
  %ou14935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14934, i32 0, i32 1
  %os114936 = bitcast %union.FIRST_UNION* %ou14935 to %struct.anon*
  %otype4937 = getelementptr inbounds %struct.anon, %struct.anon* %os114936, i32 0, i32 0
  %2297 = load i8, i8* %otype4937, align 1
  %conv4938 = zext i8 %2297 to i32
  %cmp4939 = icmp sle i32 %conv4938, 99
  br label %land.end.4941

land.end.4941:                                    ; preds = %land.rhs.4933, %cond.false.4925
  %2298 = phi i1 [ false, %cond.false.4925 ], [ %cmp4939, %land.rhs.4933 ]
  br i1 %2298, label %if.then.4943, label %if.end.4949

if.then.4943:                                     ; preds = %land.end.4941, %cond.true.4922
  %2299 = load %union.rec*, %union.rec** %g, align 8
  %cmp4944 = icmp ne %union.rec* %2299, null
  br i1 %cmp4944, label %if.end.4948, label %if.then.4946

if.then.4946:                                     ; preds = %if.then.4943
  %2300 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4947 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2300, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.4948

if.end.4948:                                      ; preds = %if.then.4946, %if.then.4943
  br label %for.end.4956

if.end.4949:                                      ; preds = %land.end.4941, %cond.true.4922
  br label %if.end.4950

if.end.4950:                                      ; preds = %if.end.4949, %land.end.4912
  br label %for.inc.4951

for.inc.4951:                                     ; preds = %if.end.4950
  %2301 = load %union.rec*, %union.rec** %link, align 8
  %os14952 = bitcast %union.rec* %2301 to %struct.word_type*
  %olist4953 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14952, i32 0, i32 0
  %arrayidx4954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4953, i32 0, i64 0
  %osucc4955 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4954, i32 0, i32 1
  %2302 = load %union.rec*, %union.rec** %osucc4955, align 8
  store %union.rec* %2302, %union.rec** %link, align 8
  br label %for.cond.4872

for.end.4956:                                     ; preds = %if.end.4948, %for.cond.4872
  br label %while.cond.4512

while.end.4957:                                   ; preds = %while.cond.4512
  %2303 = load %union.rec*, %union.rec** %prev, align 8
  %os14958 = bitcast %union.rec* %2303 to %struct.word_type*
  %ou24959 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14958, i32 0, i32 2
  %os224960 = bitcast %union.SECOND_UNION* %ou24959 to %struct.anon.1*
  %2304 = bitcast %struct.anon.1* %os224960 to i32*
  %bf.load4961 = load i32, i32* %2304, align 4
  %bf.lshr4962 = lshr i32 %bf.load4961, 29
  %bf.clear4963 = and i32 %bf.lshr4962, 3
  %cmp4964 = icmp eq i32 %bf.clear4963, 1
  br i1 %cmp4964, label %if.end.4977, label %lor.lhs.false.4966

lor.lhs.false.4966:                               ; preds = %while.end.4957
  %2305 = load %union.rec*, %union.rec** %prev, align 8
  %os14967 = bitcast %union.rec* %2305 to %struct.word_type*
  %ou24968 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14967, i32 0, i32 2
  %os224969 = bitcast %union.SECOND_UNION* %ou24968 to %struct.anon.1*
  %2306 = bitcast %struct.anon.1* %os224969 to i32*
  %bf.load4970 = load i32, i32* %2306, align 4
  %bf.lshr4971 = lshr i32 %bf.load4970, 29
  %bf.clear4972 = and i32 %bf.lshr4971, 3
  %cmp4973 = icmp eq i32 %bf.clear4972, 2
  br i1 %cmp4973, label %if.end.4977, label %if.then.4975

if.then.4975:                                     ; preds = %lor.lhs.false.4966
  %2307 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4976 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2307, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.4977

if.end.4977:                                      ; preds = %if.then.4975, %lor.lhs.false.4966, %while.end.4957
  %2308 = load %union.rec*, %union.rec** %prev, align 8
  %os14978 = bitcast %union.rec* %2308 to %struct.word_type*
  %ou24979 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14978, i32 0, i32 2
  %os224980 = bitcast %union.SECOND_UNION* %ou24979 to %struct.anon.1*
  %2309 = bitcast %struct.anon.1* %os224980 to i32*
  %bf.load4981 = load i32, i32* %2309, align 4
  %bf.lshr4982 = lshr i32 %bf.load4981, 29
  %bf.clear4983 = and i32 %bf.lshr4982, 3
  %cmp4984 = icmp eq i32 %bf.clear4983, 2
  br i1 %cmp4984, label %if.then.4986, label %if.end.5258

if.then.4986:                                     ; preds = %if.end.4977
  %2310 = load i32, i32* %underlining, align 4
  %tobool4987 = icmp ne i32 %2310, 0
  br i1 %tobool4987, label %if.end.5058, label %if.then.4988

if.then.4988:                                     ; preds = %if.then.4986
  store i32 1, i32* %underlining, align 4
  %2311 = load %union.rec*, %union.rec** %prev, align 8
  %os14989 = bitcast %union.rec* %2311 to %struct.word_type*
  %ou14990 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14989, i32 0, i32 1
  %os114991 = bitcast %union.FIRST_UNION* %ou14990 to %struct.anon*
  %otype4992 = getelementptr inbounds %struct.anon, %struct.anon* %os114991, i32 0, i32 0
  %2312 = load i8, i8* %otype4992, align 1
  %conv4993 = zext i8 %2312 to i32
  %cmp4994 = icmp eq i32 %conv4993, 11
  br i1 %cmp4994, label %cond.true.5004, label %lor.lhs.false.4996

lor.lhs.false.4996:                               ; preds = %if.then.4988
  %2313 = load %union.rec*, %union.rec** %prev, align 8
  %os14997 = bitcast %union.rec* %2313 to %struct.word_type*
  %ou14998 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14997, i32 0, i32 1
  %os114999 = bitcast %union.FIRST_UNION* %ou14998 to %struct.anon*
  %otype5000 = getelementptr inbounds %struct.anon, %struct.anon* %os114999, i32 0, i32 0
  %2314 = load i8, i8* %otype5000, align 1
  %conv5001 = zext i8 %2314 to i32
  %cmp5002 = icmp eq i32 %conv5001, 12
  br i1 %cmp5002, label %cond.true.5004, label %cond.false.5010

cond.true.5004:                                   ; preds = %lor.lhs.false.4996, %if.then.4988
  %2315 = load %union.rec*, %union.rec** %prev, align 8
  %os15005 = bitcast %union.rec* %2315 to %struct.word_type*
  %ou25006 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15005, i32 0, i32 2
  %os225007 = bitcast %union.SECOND_UNION* %ou25006 to %struct.anon.1*
  %2316 = bitcast %struct.anon.1* %os225007 to i32*
  %bf.load5008 = load i32, i32* %2316, align 4
  %bf.clear5009 = and i32 %bf.load5008, 4095
  br label %cond.end.5017

cond.false.5010:                                  ; preds = %lor.lhs.false.4996
  %2317 = load %union.rec*, %union.rec** %x.addr, align 8
  %os25011 = bitcast %union.rec* %2317 to %struct.closure_type*
  %ou45012 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25011, i32 0, i32 4
  %osave_style5013 = bitcast %union.FOURTH_UNION* %ou45012 to %struct.STYLE*
  %ofont5014 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5013, i32 0, i32 4
  %bf.load5015 = load i32, i32* %ofont5014, align 4
  %bf.clear5016 = and i32 %bf.load5015, 4095
  br label %cond.end.5017

cond.end.5017:                                    ; preds = %cond.false.5010, %cond.true.5004
  %cond5018 = phi i32 [ %bf.clear5009, %cond.true.5004 ], [ %bf.clear5016, %cond.false.5010 ]
  store i32 %cond5018, i32* %underline_font, align 4
  %2318 = load %union.rec*, %union.rec** %prev, align 8
  %os15019 = bitcast %union.rec* %2318 to %struct.word_type*
  %ou15020 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15019, i32 0, i32 1
  %os115021 = bitcast %union.FIRST_UNION* %ou15020 to %struct.anon*
  %otype5022 = getelementptr inbounds %struct.anon, %struct.anon* %os115021, i32 0, i32 0
  %2319 = load i8, i8* %otype5022, align 1
  %conv5023 = zext i8 %2319 to i32
  %cmp5024 = icmp eq i32 %conv5023, 11
  br i1 %cmp5024, label %cond.true.5034, label %lor.lhs.false.5026

lor.lhs.false.5026:                               ; preds = %cond.end.5017
  %2320 = load %union.rec*, %union.rec** %prev, align 8
  %os15027 = bitcast %union.rec* %2320 to %struct.word_type*
  %ou15028 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15027, i32 0, i32 1
  %os115029 = bitcast %union.FIRST_UNION* %ou15028 to %struct.anon*
  %otype5030 = getelementptr inbounds %struct.anon, %struct.anon* %os115029, i32 0, i32 0
  %2321 = load i8, i8* %otype5030, align 1
  %conv5031 = zext i8 %2321 to i32
  %cmp5032 = icmp eq i32 %conv5031, 12
  br i1 %cmp5032, label %cond.true.5034, label %cond.false.5041

cond.true.5034:                                   ; preds = %lor.lhs.false.5026, %cond.end.5017
  %2322 = load %union.rec*, %union.rec** %prev, align 8
  %os15035 = bitcast %union.rec* %2322 to %struct.word_type*
  %ou25036 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15035, i32 0, i32 2
  %os225037 = bitcast %union.SECOND_UNION* %ou25036 to %struct.anon.1*
  %2323 = bitcast %struct.anon.1* %os225037 to i32*
  %bf.load5038 = load i32, i32* %2323, align 4
  %bf.lshr5039 = lshr i32 %bf.load5038, 12
  %bf.clear5040 = and i32 %bf.lshr5039, 1023
  br label %cond.end.5049

cond.false.5041:                                  ; preds = %lor.lhs.false.5026
  %2324 = load %union.rec*, %union.rec** %x.addr, align 8
  %os25042 = bitcast %union.rec* %2324 to %struct.closure_type*
  %ou45043 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25042, i32 0, i32 4
  %osave_style5044 = bitcast %union.FOURTH_UNION* %ou45043 to %struct.STYLE*
  %ocolour5045 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5044, i32 0, i32 4
  %bf.load5046 = load i32, i32* %ocolour5045, align 4
  %bf.lshr5047 = lshr i32 %bf.load5046, 12
  %bf.clear5048 = and i32 %bf.lshr5047, 1023
  br label %cond.end.5049

cond.end.5049:                                    ; preds = %cond.false.5041, %cond.true.5034
  %cond5050 = phi i32 [ %bf.clear5040, %cond.true.5034 ], [ %bf.clear5048, %cond.false.5041 ]
  store i32 %cond5050, i32* %underline_colour, align 4
  %2325 = load i32, i32* %mk, align 4
  %2326 = load i32, i32* %dim.addr, align 4
  %idxprom5051 = sext i32 %2326 to i64
  %2327 = load %union.rec*, %union.rec** %prev, align 8
  %os15052 = bitcast %union.rec* %2327 to %struct.word_type*
  %ou35053 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15052, i32 0, i32 3
  %os315054 = bitcast %union.THIRD_UNION* %ou35053 to %struct.anon.6*
  %oback5055 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315054, i32 0, i32 0
  %arrayidx5056 = getelementptr inbounds [2 x i32], [2 x i32]* %oback5055, i32 0, i64 %idxprom5051
  %2328 = load i32, i32* %arrayidx5056, align 4
  %sub5057 = sub nsw i32 %2325, %2328
  store i32 %sub5057, i32* %underline_xstart, align 4
  br label %if.end.5058

if.end.5058:                                      ; preds = %cond.end.5049, %if.then.4986
  %2329 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 3), align 1
  %conv5059 = zext i8 %2329 to i32
  store i32 %conv5059, i32* @zz_size, align 4
  %conv5060 = sext i32 %conv5059 to i64
  %cmp5061 = icmp uge i64 %conv5060, 265
  br i1 %cmp5061, label %if.then.5063, label %if.else.5065

if.then.5063:                                     ; preds = %if.end.5058
  %2330 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5064 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %2330)
  br label %if.end.5082

if.else.5065:                                     ; preds = %if.end.5058
  %2331 = load i32, i32* @zz_size, align 4
  %idxprom5066 = sext i32 %2331 to i64
  %arrayidx5067 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5066
  %2332 = load %union.rec*, %union.rec** %arrayidx5067, align 8
  %cmp5068 = icmp eq %union.rec* %2332, null
  br i1 %cmp5068, label %if.then.5070, label %if.else.5072

if.then.5070:                                     ; preds = %if.else.5065
  %2333 = load i32, i32* @zz_size, align 4
  %2334 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5071 = call %union.rec* @GetMemory(i32 %2333, %struct.FILE_POS* %2334)
  store %union.rec* %call5071, %union.rec** @zz_hold, align 8
  br label %if.end.5081

if.else.5072:                                     ; preds = %if.else.5065
  %2335 = load i32, i32* @zz_size, align 4
  %idxprom5073 = sext i32 %2335 to i64
  %arrayidx5074 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5073
  %2336 = load %union.rec*, %union.rec** %arrayidx5074, align 8
  store %union.rec* %2336, %union.rec** @zz_hold, align 8
  store %union.rec* %2336, %union.rec** @zz_hold, align 8
  %2337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15075 = bitcast %union.rec* %2337 to %struct.word_type*
  %olist5076 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15075, i32 0, i32 0
  %arrayidx5077 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5076, i32 0, i64 0
  %opred5078 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5077, i32 0, i32 0
  %2338 = load %union.rec*, %union.rec** %opred5078, align 8
  %2339 = load i32, i32* @zz_size, align 4
  %idxprom5079 = sext i32 %2339 to i64
  %arrayidx5080 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5079
  store %union.rec* %2338, %union.rec** %arrayidx5080, align 8
  br label %if.end.5081

if.end.5081:                                      ; preds = %if.else.5072, %if.then.5070
  br label %if.end.5082

if.end.5082:                                      ; preds = %if.end.5081, %if.then.5063
  %2340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15083 = bitcast %union.rec* %2340 to %struct.word_type*
  %ou15084 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15083, i32 0, i32 1
  %os115085 = bitcast %union.FIRST_UNION* %ou15084 to %struct.anon*
  %otype5086 = getelementptr inbounds %struct.anon, %struct.anon* %os115085, i32 0, i32 0
  store i8 3, i8* %otype5086, align 1
  %2341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15087 = bitcast %union.rec* %2342 to %struct.word_type*
  %olist5088 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15087, i32 0, i32 0
  %arrayidx5089 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5088, i32 0, i64 1
  %osucc5090 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5089, i32 0, i32 1
  store %union.rec* %2341, %union.rec** %osucc5090, align 8
  %2343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15091 = bitcast %union.rec* %2343 to %struct.word_type*
  %olist5092 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15091, i32 0, i32 0
  %arrayidx5093 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5092, i32 0, i64 1
  %opred5094 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5093, i32 0, i32 0
  store %union.rec* %2341, %union.rec** %opred5094, align 8
  %2344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15095 = bitcast %union.rec* %2344 to %struct.word_type*
  %olist5096 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15095, i32 0, i32 0
  %arrayidx5097 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5096, i32 0, i64 0
  %osucc5098 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5097, i32 0, i32 1
  store %union.rec* %2341, %union.rec** %osucc5098, align 8
  %2345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15099 = bitcast %union.rec* %2345 to %struct.word_type*
  %olist5100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15099, i32 0, i32 0
  %arrayidx5101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5100, i32 0, i64 0
  %opred5102 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5101, i32 0, i32 0
  store %union.rec* %2341, %union.rec** %opred5102, align 8
  store %union.rec* %2341, %union.rec** %urec, align 8
  %2346 = load i32, i32* %underline_xstart, align 4
  %2347 = load %union.rec*, %union.rec** %urec, align 8
  %os15103 = bitcast %union.rec* %2347 to %struct.word_type*
  %ou35104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15103, i32 0, i32 3
  %os315105 = bitcast %union.THIRD_UNION* %ou35104 to %struct.anon.6*
  %oback5106 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315105, i32 0, i32 0
  %arrayidx5107 = getelementptr inbounds [2 x i32], [2 x i32]* %oback5106, i32 0, i64 0
  store i32 %2346, i32* %arrayidx5107, align 4
  %2348 = load i32, i32* %mk, align 4
  %2349 = load i32, i32* %dim.addr, align 4
  %idxprom5108 = sext i32 %2349 to i64
  %2350 = load %union.rec*, %union.rec** %prev, align 8
  %os15109 = bitcast %union.rec* %2350 to %struct.word_type*
  %ou35110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15109, i32 0, i32 3
  %os315111 = bitcast %union.THIRD_UNION* %ou35110 to %struct.anon.6*
  %ofwd5112 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315111, i32 0, i32 1
  %arrayidx5113 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd5112, i32 0, i64 %idxprom5108
  %2351 = load i32, i32* %arrayidx5113, align 4
  %add5114 = add nsw i32 %2348, %2351
  %2352 = load %union.rec*, %union.rec** %urec, align 8
  %os15115 = bitcast %union.rec* %2352 to %struct.word_type*
  %ou35116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15115, i32 0, i32 3
  %os315117 = bitcast %union.THIRD_UNION* %ou35116 to %struct.anon.6*
  %ofwd5118 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315117, i32 0, i32 1
  %arrayidx5119 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd5118, i32 0, i64 0
  store i32 %add5114, i32* %arrayidx5119, align 4
  %2353 = load i32, i32* %underline_font, align 4
  %2354 = load %union.rec*, %union.rec** %urec, align 8
  %os15120 = bitcast %union.rec* %2354 to %struct.word_type*
  %ou35121 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15120, i32 0, i32 3
  %os315122 = bitcast %union.THIRD_UNION* %ou35121 to %struct.anon.6*
  %oback5123 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315122, i32 0, i32 0
  %arrayidx5124 = getelementptr inbounds [2 x i32], [2 x i32]* %oback5123, i32 0, i64 1
  store i32 %2353, i32* %arrayidx5124, align 4
  %2355 = load i32, i32* %underline_colour, align 4
  %2356 = load %union.rec*, %union.rec** %urec, align 8
  %os15125 = bitcast %union.rec* %2356 to %struct.word_type*
  %ou35126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15125, i32 0, i32 3
  %os315127 = bitcast %union.THIRD_UNION* %ou35126 to %struct.anon.6*
  %ofwd5128 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315127, i32 0, i32 1
  %arrayidx5129 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd5128, i32 0, i64 1
  store i32 %2355, i32* %arrayidx5129, align 4
  store i32 0, i32* %underlining, align 4
  %2357 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv5130 = zext i8 %2357 to i32
  store i32 %conv5130, i32* @zz_size, align 4
  %conv5131 = sext i32 %conv5130 to i64
  %cmp5132 = icmp uge i64 %conv5131, 265
  br i1 %cmp5132, label %if.then.5134, label %if.else.5136

if.then.5134:                                     ; preds = %if.end.5082
  %2358 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5135 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %2358)
  br label %if.end.5153

if.else.5136:                                     ; preds = %if.end.5082
  %2359 = load i32, i32* @zz_size, align 4
  %idxprom5137 = sext i32 %2359 to i64
  %arrayidx5138 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5137
  %2360 = load %union.rec*, %union.rec** %arrayidx5138, align 8
  %cmp5139 = icmp eq %union.rec* %2360, null
  br i1 %cmp5139, label %if.then.5141, label %if.else.5143

if.then.5141:                                     ; preds = %if.else.5136
  %2361 = load i32, i32* @zz_size, align 4
  %2362 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5142 = call %union.rec* @GetMemory(i32 %2361, %struct.FILE_POS* %2362)
  store %union.rec* %call5142, %union.rec** @zz_hold, align 8
  br label %if.end.5152

if.else.5143:                                     ; preds = %if.else.5136
  %2363 = load i32, i32* @zz_size, align 4
  %idxprom5144 = sext i32 %2363 to i64
  %arrayidx5145 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5144
  %2364 = load %union.rec*, %union.rec** %arrayidx5145, align 8
  store %union.rec* %2364, %union.rec** @zz_hold, align 8
  store %union.rec* %2364, %union.rec** @zz_hold, align 8
  %2365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15146 = bitcast %union.rec* %2365 to %struct.word_type*
  %olist5147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15146, i32 0, i32 0
  %arrayidx5148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5147, i32 0, i64 0
  %opred5149 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5148, i32 0, i32 0
  %2366 = load %union.rec*, %union.rec** %opred5149, align 8
  %2367 = load i32, i32* @zz_size, align 4
  %idxprom5150 = sext i32 %2367 to i64
  %arrayidx5151 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5150
  store %union.rec* %2366, %union.rec** %arrayidx5151, align 8
  br label %if.end.5152

if.end.5152:                                      ; preds = %if.else.5143, %if.then.5141
  br label %if.end.5153

if.end.5153:                                      ; preds = %if.end.5152, %if.then.5134
  %2368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15154 = bitcast %union.rec* %2368 to %struct.word_type*
  %ou15155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15154, i32 0, i32 1
  %os115156 = bitcast %union.FIRST_UNION* %ou15155 to %struct.anon*
  %otype5157 = getelementptr inbounds %struct.anon, %struct.anon* %os115156, i32 0, i32 0
  store i8 0, i8* %otype5157, align 1
  %2369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15158 = bitcast %union.rec* %2370 to %struct.word_type*
  %olist5159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15158, i32 0, i32 0
  %arrayidx5160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5159, i32 0, i64 1
  %osucc5161 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5160, i32 0, i32 1
  store %union.rec* %2369, %union.rec** %osucc5161, align 8
  %2371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15162 = bitcast %union.rec* %2371 to %struct.word_type*
  %olist5163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15162, i32 0, i32 0
  %arrayidx5164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5163, i32 0, i64 1
  %opred5165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5164, i32 0, i32 0
  store %union.rec* %2369, %union.rec** %opred5165, align 8
  %2372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15166 = bitcast %union.rec* %2372 to %struct.word_type*
  %olist5167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15166, i32 0, i32 0
  %arrayidx5168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5167, i32 0, i64 0
  %osucc5169 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5168, i32 0, i32 1
  store %union.rec* %2369, %union.rec** %osucc5169, align 8
  %2373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15170 = bitcast %union.rec* %2373 to %struct.word_type*
  %olist5171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15170, i32 0, i32 0
  %arrayidx5172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5171, i32 0, i64 0
  %opred5173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5172, i32 0, i32 0
  store %union.rec* %2369, %union.rec** %opred5173, align 8
  store %union.rec* %2369, %union.rec** @xx_link, align 8
  %2374 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2374, %union.rec** @zz_res, align 8
  %2375 = load %union.rec*, %union.rec** %prev, align 8
  %os15174 = bitcast %union.rec* %2375 to %struct.word_type*
  %olist5175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15174, i32 0, i32 0
  %arrayidx5176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5175, i32 0, i64 1
  %osucc5177 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5176, i32 0, i32 1
  %2376 = load %union.rec*, %union.rec** %osucc5177, align 8
  store %union.rec* %2376, %union.rec** @zz_hold, align 8
  %2377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5178 = icmp eq %union.rec* %2377, null
  br i1 %cmp5178, label %cond.true.5180, label %cond.false.5181

cond.true.5180:                                   ; preds = %if.end.5153
  %2378 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5216

cond.false.5181:                                  ; preds = %if.end.5153
  %2379 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5182 = icmp eq %union.rec* %2379, null
  br i1 %cmp5182, label %cond.true.5184, label %cond.false.5185

cond.true.5184:                                   ; preds = %cond.false.5181
  %2380 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5214

cond.false.5185:                                  ; preds = %cond.false.5181
  %2381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15186 = bitcast %union.rec* %2381 to %struct.word_type*
  %olist5187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15186, i32 0, i32 0
  %arrayidx5188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5187, i32 0, i64 0
  %opred5189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5188, i32 0, i32 0
  %2382 = load %union.rec*, %union.rec** %opred5189, align 8
  store %union.rec* %2382, %union.rec** @zz_tmp, align 8
  %2383 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15190 = bitcast %union.rec* %2383 to %struct.word_type*
  %olist5191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15190, i32 0, i32 0
  %arrayidx5192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5191, i32 0, i64 0
  %opred5193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5192, i32 0, i32 0
  %2384 = load %union.rec*, %union.rec** %opred5193, align 8
  %2385 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15194 = bitcast %union.rec* %2385 to %struct.word_type*
  %olist5195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15194, i32 0, i32 0
  %arrayidx5196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5195, i32 0, i64 0
  %opred5197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5196, i32 0, i32 0
  store %union.rec* %2384, %union.rec** %opred5197, align 8
  %2386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2387 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15198 = bitcast %union.rec* %2387 to %struct.word_type*
  %olist5199 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15198, i32 0, i32 0
  %arrayidx5200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5199, i32 0, i64 0
  %opred5201 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5200, i32 0, i32 0
  %2388 = load %union.rec*, %union.rec** %opred5201, align 8
  %os15202 = bitcast %union.rec* %2388 to %struct.word_type*
  %olist5203 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15202, i32 0, i32 0
  %arrayidx5204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5203, i32 0, i64 0
  %osucc5205 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5204, i32 0, i32 1
  store %union.rec* %2386, %union.rec** %osucc5205, align 8
  %2389 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2390 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15206 = bitcast %union.rec* %2390 to %struct.word_type*
  %olist5207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15206, i32 0, i32 0
  %arrayidx5208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5207, i32 0, i64 0
  %opred5209 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5208, i32 0, i32 0
  store %union.rec* %2389, %union.rec** %opred5209, align 8
  %2391 = load %union.rec*, %union.rec** @zz_res, align 8
  %2392 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15210 = bitcast %union.rec* %2392 to %struct.word_type*
  %olist5211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15210, i32 0, i32 0
  %arrayidx5212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5211, i32 0, i64 0
  %osucc5213 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5212, i32 0, i32 1
  store %union.rec* %2391, %union.rec** %osucc5213, align 8
  br label %cond.end.5214

cond.end.5214:                                    ; preds = %cond.false.5185, %cond.true.5184
  %cond5215 = phi %union.rec* [ %2380, %cond.true.5184 ], [ %2391, %cond.false.5185 ]
  br label %cond.end.5216

cond.end.5216:                                    ; preds = %cond.end.5214, %cond.true.5180
  %cond5217 = phi %union.rec* [ %2378, %cond.true.5180 ], [ %cond5215, %cond.end.5214 ]
  %2393 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2393, %union.rec** @zz_res, align 8
  %2394 = load %union.rec*, %union.rec** %urec, align 8
  store %union.rec* %2394, %union.rec** @zz_hold, align 8
  %2395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5218 = icmp eq %union.rec* %2395, null
  br i1 %cmp5218, label %cond.true.5220, label %cond.false.5221

cond.true.5220:                                   ; preds = %cond.end.5216
  %2396 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5256

cond.false.5221:                                  ; preds = %cond.end.5216
  %2397 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5222 = icmp eq %union.rec* %2397, null
  br i1 %cmp5222, label %cond.true.5224, label %cond.false.5225

cond.true.5224:                                   ; preds = %cond.false.5221
  %2398 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5254

cond.false.5225:                                  ; preds = %cond.false.5221
  %2399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15226 = bitcast %union.rec* %2399 to %struct.word_type*
  %olist5227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15226, i32 0, i32 0
  %arrayidx5228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5227, i32 0, i64 1
  %opred5229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5228, i32 0, i32 0
  %2400 = load %union.rec*, %union.rec** %opred5229, align 8
  store %union.rec* %2400, %union.rec** @zz_tmp, align 8
  %2401 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15230 = bitcast %union.rec* %2401 to %struct.word_type*
  %olist5231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15230, i32 0, i32 0
  %arrayidx5232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5231, i32 0, i64 1
  %opred5233 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5232, i32 0, i32 0
  %2402 = load %union.rec*, %union.rec** %opred5233, align 8
  %2403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15234 = bitcast %union.rec* %2403 to %struct.word_type*
  %olist5235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15234, i32 0, i32 0
  %arrayidx5236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5235, i32 0, i64 1
  %opred5237 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5236, i32 0, i32 0
  store %union.rec* %2402, %union.rec** %opred5237, align 8
  %2404 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2405 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15238 = bitcast %union.rec* %2405 to %struct.word_type*
  %olist5239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15238, i32 0, i32 0
  %arrayidx5240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5239, i32 0, i64 1
  %opred5241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5240, i32 0, i32 0
  %2406 = load %union.rec*, %union.rec** %opred5241, align 8
  %os15242 = bitcast %union.rec* %2406 to %struct.word_type*
  %olist5243 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15242, i32 0, i32 0
  %arrayidx5244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5243, i32 0, i64 1
  %osucc5245 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5244, i32 0, i32 1
  store %union.rec* %2404, %union.rec** %osucc5245, align 8
  %2407 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2408 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15246 = bitcast %union.rec* %2408 to %struct.word_type*
  %olist5247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15246, i32 0, i32 0
  %arrayidx5248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5247, i32 0, i64 1
  %opred5249 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5248, i32 0, i32 0
  store %union.rec* %2407, %union.rec** %opred5249, align 8
  %2409 = load %union.rec*, %union.rec** @zz_res, align 8
  %2410 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15250 = bitcast %union.rec* %2410 to %struct.word_type*
  %olist5251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15250, i32 0, i32 0
  %arrayidx5252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5251, i32 0, i64 1
  %osucc5253 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5252, i32 0, i32 1
  store %union.rec* %2409, %union.rec** %osucc5253, align 8
  br label %cond.end.5254

cond.end.5254:                                    ; preds = %cond.false.5225, %cond.true.5224
  %cond5255 = phi %union.rec* [ %2398, %cond.true.5224 ], [ %2409, %cond.false.5225 ]
  br label %cond.end.5256

cond.end.5256:                                    ; preds = %cond.end.5254, %cond.true.5220
  %cond5257 = phi %union.rec* [ %2396, %cond.true.5220 ], [ %cond5255, %cond.end.5254 ]
  br label %if.end.5258

if.end.5258:                                      ; preds = %cond.end.5256, %if.end.4977
  %2411 = load %union.rec*, %union.rec** %prev, align 8
  %2412 = load i32, i32* %mk, align 4
  %2413 = load i32, i32* %dim.addr, align 4
  %idxprom5259 = sext i32 %2413 to i64
  %2414 = load %union.rec*, %union.rec** %prev, align 8
  %os15260 = bitcast %union.rec* %2414 to %struct.word_type*
  %ou35261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15260, i32 0, i32 3
  %os315262 = bitcast %union.THIRD_UNION* %ou35261 to %struct.anon.6*
  %oback5263 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315262, i32 0, i32 0
  %arrayidx5264 = getelementptr inbounds [2 x i32], [2 x i32]* %oback5263, i32 0, i64 %idxprom5259
  %2415 = load i32, i32* %arrayidx5264, align 4
  %2416 = load i32, i32* %frame_size3328, align 4
  %2417 = load i32, i32* %mk, align 4
  %2418 = load i32, i32* %xmk.addr, align 4
  %sub5265 = sub nsw i32 %2417, %2418
  %sub5266 = sub nsw i32 %2416, %sub5265
  %2419 = load i32, i32* %dim.addr, align 4
  %idxprom5267 = sext i32 %2419 to i64
  %2420 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15268 = bitcast %union.rec* %2420 to %struct.word_type*
  %ou35269 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15268, i32 0, i32 3
  %os315270 = bitcast %union.THIRD_UNION* %ou35269 to %struct.anon.6*
  %oback5271 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315270, i32 0, i32 0
  %arrayidx5272 = getelementptr inbounds [2 x i32], [2 x i32]* %oback5271, i32 0, i64 %idxprom5267
  %2421 = load i32, i32* %arrayidx5272, align 4
  %sub5273 = sub nsw i32 %sub5266, %2421
  %2422 = load i32, i32* %dim.addr, align 4
  %2423 = load i32, i32* %pg.addr, align 4
  %2424 = load i32, i32* %count.addr, align 4
  %call5274 = call %union.rec* @FixAndPrintObject(%union.rec* %2411, i32 %2412, i32 %2415, i32 %sub5273, i32 %2422, i32 0, i32 %2423, i32 %2424, i32* %aback, i32* %afwd)
  store %union.rec* %call5274, %union.rec** %prev, align 8
  br label %if.end.5275

if.end.5275:                                      ; preds = %if.end.5258, %if.end.4244
  br label %if.end.5490

if.else.5276:                                     ; preds = %sw.bb.3319
  %2425 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15277 = bitcast %union.rec* %2425 to %struct.word_type*
  %olist5278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15277, i32 0, i32 0
  %arrayidx5279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5278, i32 0, i64 0
  %osucc5280 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5279, i32 0, i32 1
  %2426 = load %union.rec*, %union.rec** %osucc5280, align 8
  store %union.rec* %2426, %union.rec** %link, align 8
  br label %for.cond.5281

for.cond.5281:                                    ; preds = %for.inc.5484, %if.else.5276
  %2427 = load %union.rec*, %union.rec** %link, align 8
  %2428 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp5282 = icmp ne %union.rec* %2427, %2428
  br i1 %cmp5282, label %for.body.5284, label %for.end.5489

for.body.5284:                                    ; preds = %for.cond.5281
  %2429 = load %union.rec*, %union.rec** %link, align 8
  %os15285 = bitcast %union.rec* %2429 to %struct.word_type*
  %olist5286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15285, i32 0, i32 0
  %arrayidx5287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5286, i32 0, i64 1
  %opred5288 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5287, i32 0, i32 0
  %2430 = load %union.rec*, %union.rec** %opred5288, align 8
  store %union.rec* %2430, %union.rec** %y, align 8
  br label %for.cond.5289

for.cond.5289:                                    ; preds = %for.inc.5298, %for.body.5284
  %2431 = load %union.rec*, %union.rec** %y, align 8
  %os15290 = bitcast %union.rec* %2431 to %struct.word_type*
  %ou15291 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15290, i32 0, i32 1
  %os115292 = bitcast %union.FIRST_UNION* %ou15291 to %struct.anon*
  %otype5293 = getelementptr inbounds %struct.anon, %struct.anon* %os115292, i32 0, i32 0
  %2432 = load i8, i8* %otype5293, align 1
  %conv5294 = zext i8 %2432 to i32
  %cmp5295 = icmp eq i32 %conv5294, 0
  br i1 %cmp5295, label %for.body.5297, label %for.end.5303

for.body.5297:                                    ; preds = %for.cond.5289
  br label %for.inc.5298

for.inc.5298:                                     ; preds = %for.body.5297
  %2433 = load %union.rec*, %union.rec** %y, align 8
  %os15299 = bitcast %union.rec* %2433 to %struct.word_type*
  %olist5300 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15299, i32 0, i32 0
  %arrayidx5301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5300, i32 0, i64 1
  %opred5302 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5301, i32 0, i32 0
  %2434 = load %union.rec*, %union.rec** %opred5302, align 8
  store %union.rec* %2434, %union.rec** %y, align 8
  br label %for.cond.5289

for.end.5303:                                     ; preds = %for.cond.5289
  %2435 = load %union.rec*, %union.rec** %y, align 8
  %os15304 = bitcast %union.rec* %2435 to %struct.word_type*
  %ou15305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15304, i32 0, i32 1
  %os115306 = bitcast %union.FIRST_UNION* %ou15305 to %struct.anon*
  %otype5307 = getelementptr inbounds %struct.anon, %struct.anon* %os115306, i32 0, i32 0
  %2436 = load i8, i8* %otype5307, align 1
  %conv5308 = zext i8 %2436 to i32
  %cmp5309 = icmp sge i32 %conv5308, 9
  br i1 %cmp5309, label %land.lhs.true.5311, label %if.then.5319

land.lhs.true.5311:                               ; preds = %for.end.5303
  %2437 = load %union.rec*, %union.rec** %y, align 8
  %os15312 = bitcast %union.rec* %2437 to %struct.word_type*
  %ou15313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15312, i32 0, i32 1
  %os115314 = bitcast %union.FIRST_UNION* %ou15313 to %struct.anon*
  %otype5315 = getelementptr inbounds %struct.anon, %struct.anon* %os115314, i32 0, i32 0
  %2438 = load i8, i8* %otype5315, align 1
  %conv5316 = zext i8 %2438 to i32
  %cmp5317 = icmp sle i32 %conv5316, 99
  br i1 %cmp5317, label %if.end.5482, label %if.then.5319

if.then.5319:                                     ; preds = %land.lhs.true.5311, %for.end.5303
  %2439 = load %union.rec*, %union.rec** %y, align 8
  %os15320 = bitcast %union.rec* %2439 to %struct.word_type*
  %ou15321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15320, i32 0, i32 1
  %os115322 = bitcast %union.FIRST_UNION* %ou15321 to %struct.anon*
  %otype5323 = getelementptr inbounds %struct.anon, %struct.anon* %os115322, i32 0, i32 0
  %2440 = load i8, i8* %otype5323, align 1
  %conv5324 = zext i8 %2440 to i32
  %cmp5325 = icmp eq i32 %conv5324, 3
  br i1 %cmp5325, label %if.then.5327, label %if.end.5481

if.then.5327:                                     ; preds = %if.then.5319
  %2441 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %PrintUnderline = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %2441, i32 0, i32 20
  %2442 = load void (i32, i32, i32, i32, i32)*, void (i32, i32, i32, i32, i32)** %PrintUnderline, align 8
  %2443 = load %union.rec*, %union.rec** %y, align 8
  %os15328 = bitcast %union.rec* %2443 to %struct.word_type*
  %ou35329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15328, i32 0, i32 3
  %os315330 = bitcast %union.THIRD_UNION* %ou35329 to %struct.anon.6*
  %oback5331 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315330, i32 0, i32 0
  %arrayidx5332 = getelementptr inbounds [2 x i32], [2 x i32]* %oback5331, i32 0, i64 1
  %2444 = load i32, i32* %arrayidx5332, align 4
  %2445 = load %union.rec*, %union.rec** %y, align 8
  %os15333 = bitcast %union.rec* %2445 to %struct.word_type*
  %ou35334 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15333, i32 0, i32 3
  %os315335 = bitcast %union.THIRD_UNION* %ou35334 to %struct.anon.6*
  %ofwd5336 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315335, i32 0, i32 1
  %arrayidx5337 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd5336, i32 0, i64 1
  %2446 = load i32, i32* %arrayidx5337, align 4
  %2447 = load %union.rec*, %union.rec** %y, align 8
  %os15338 = bitcast %union.rec* %2447 to %struct.word_type*
  %ou35339 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15338, i32 0, i32 3
  %os315340 = bitcast %union.THIRD_UNION* %ou35339 to %struct.anon.6*
  %oback5341 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315340, i32 0, i32 0
  %arrayidx5342 = getelementptr inbounds [2 x i32], [2 x i32]* %oback5341, i32 0, i64 0
  %2448 = load i32, i32* %arrayidx5342, align 4
  %2449 = load %union.rec*, %union.rec** %y, align 8
  %os15343 = bitcast %union.rec* %2449 to %struct.word_type*
  %ou35344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15343, i32 0, i32 3
  %os315345 = bitcast %union.THIRD_UNION* %ou35344 to %struct.anon.6*
  %ofwd5346 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315345, i32 0, i32 1
  %arrayidx5347 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd5346, i32 0, i64 0
  %2450 = load i32, i32* %arrayidx5347, align 4
  %2451 = load i32, i32* %pg.addr, align 4
  %2452 = load i32, i32* %xmk.addr, align 4
  %sub5348 = sub nsw i32 %2451, %2452
  call void %2442(i32 %2444, i32 %2446, i32 %2448, i32 %2450, i32 %sub5348)
  %2453 = load %union.rec*, %union.rec** %link, align 8
  %os15349 = bitcast %union.rec* %2453 to %struct.word_type*
  %olist5350 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15349, i32 0, i32 0
  %arrayidx5351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5350, i32 0, i64 0
  %opred5352 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5351, i32 0, i32 0
  %2454 = load %union.rec*, %union.rec** %opred5352, align 8
  store %union.rec* %2454, %union.rec** %link, align 8
  %2455 = load %union.rec*, %union.rec** %y, align 8
  %os15353 = bitcast %union.rec* %2455 to %struct.word_type*
  %olist5354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15353, i32 0, i32 0
  %arrayidx5355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5354, i32 0, i64 1
  %osucc5356 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5355, i32 0, i32 1
  %2456 = load %union.rec*, %union.rec** %osucc5356, align 8
  store %union.rec* %2456, %union.rec** @xx_link, align 8
  %2457 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2457, %union.rec** @zz_hold, align 8
  %2458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15357 = bitcast %union.rec* %2458 to %struct.word_type*
  %olist5358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15357, i32 0, i32 0
  %arrayidx5359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5358, i32 0, i64 1
  %osucc5360 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5359, i32 0, i32 1
  %2459 = load %union.rec*, %union.rec** %osucc5360, align 8
  %2460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5361 = icmp eq %union.rec* %2459, %2460
  br i1 %cmp5361, label %cond.true.5363, label %cond.false.5364

cond.true.5363:                                   ; preds = %if.then.5327
  br label %cond.end.5393

cond.false.5364:                                  ; preds = %if.then.5327
  %2461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15365 = bitcast %union.rec* %2461 to %struct.word_type*
  %olist5366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15365, i32 0, i32 0
  %arrayidx5367 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5366, i32 0, i64 1
  %osucc5368 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5367, i32 0, i32 1
  %2462 = load %union.rec*, %union.rec** %osucc5368, align 8
  store %union.rec* %2462, %union.rec** @zz_res, align 8
  %2463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15369 = bitcast %union.rec* %2463 to %struct.word_type*
  %olist5370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15369, i32 0, i32 0
  %arrayidx5371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5370, i32 0, i64 1
  %opred5372 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5371, i32 0, i32 0
  %2464 = load %union.rec*, %union.rec** %opred5372, align 8
  %2465 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15373 = bitcast %union.rec* %2465 to %struct.word_type*
  %olist5374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15373, i32 0, i32 0
  %arrayidx5375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5374, i32 0, i64 1
  %opred5376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5375, i32 0, i32 0
  store %union.rec* %2464, %union.rec** %opred5376, align 8
  %2466 = load %union.rec*, %union.rec** @zz_res, align 8
  %2467 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15377 = bitcast %union.rec* %2467 to %struct.word_type*
  %olist5378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15377, i32 0, i32 0
  %arrayidx5379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5378, i32 0, i64 1
  %opred5380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5379, i32 0, i32 0
  %2468 = load %union.rec*, %union.rec** %opred5380, align 8
  %os15381 = bitcast %union.rec* %2468 to %struct.word_type*
  %olist5382 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15381, i32 0, i32 0
  %arrayidx5383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5382, i32 0, i64 1
  %osucc5384 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5383, i32 0, i32 1
  store %union.rec* %2466, %union.rec** %osucc5384, align 8
  %2469 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2470 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15385 = bitcast %union.rec* %2470 to %struct.word_type*
  %olist5386 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15385, i32 0, i32 0
  %arrayidx5387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5386, i32 0, i64 1
  %osucc5388 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5387, i32 0, i32 1
  store %union.rec* %2469, %union.rec** %osucc5388, align 8
  %2471 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15389 = bitcast %union.rec* %2471 to %struct.word_type*
  %olist5390 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15389, i32 0, i32 0
  %arrayidx5391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5390, i32 0, i64 1
  %opred5392 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5391, i32 0, i32 0
  store %union.rec* %2469, %union.rec** %opred5392, align 8
  %2472 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5393

cond.end.5393:                                    ; preds = %cond.false.5364, %cond.true.5363
  %cond5394 = phi %union.rec* [ null, %cond.true.5363 ], [ %2472, %cond.false.5364 ]
  store %union.rec* %cond5394, %union.rec** @xx_tmp, align 8
  %2473 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2473, %union.rec** @zz_hold, align 8
  %2474 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15395 = bitcast %union.rec* %2474 to %struct.word_type*
  %olist5396 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15395, i32 0, i32 0
  %arrayidx5397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5396, i32 0, i64 0
  %osucc5398 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5397, i32 0, i32 1
  %2475 = load %union.rec*, %union.rec** %osucc5398, align 8
  %2476 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5399 = icmp eq %union.rec* %2475, %2476
  br i1 %cmp5399, label %cond.true.5401, label %cond.false.5402

cond.true.5401:                                   ; preds = %cond.end.5393
  br label %cond.end.5431

cond.false.5402:                                  ; preds = %cond.end.5393
  %2477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15403 = bitcast %union.rec* %2477 to %struct.word_type*
  %olist5404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15403, i32 0, i32 0
  %arrayidx5405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5404, i32 0, i64 0
  %osucc5406 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5405, i32 0, i32 1
  %2478 = load %union.rec*, %union.rec** %osucc5406, align 8
  store %union.rec* %2478, %union.rec** @zz_res, align 8
  %2479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15407 = bitcast %union.rec* %2479 to %struct.word_type*
  %olist5408 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15407, i32 0, i32 0
  %arrayidx5409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5408, i32 0, i64 0
  %opred5410 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5409, i32 0, i32 0
  %2480 = load %union.rec*, %union.rec** %opred5410, align 8
  %2481 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15411 = bitcast %union.rec* %2481 to %struct.word_type*
  %olist5412 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15411, i32 0, i32 0
  %arrayidx5413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5412, i32 0, i64 0
  %opred5414 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5413, i32 0, i32 0
  store %union.rec* %2480, %union.rec** %opred5414, align 8
  %2482 = load %union.rec*, %union.rec** @zz_res, align 8
  %2483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15415 = bitcast %union.rec* %2483 to %struct.word_type*
  %olist5416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15415, i32 0, i32 0
  %arrayidx5417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5416, i32 0, i64 0
  %opred5418 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5417, i32 0, i32 0
  %2484 = load %union.rec*, %union.rec** %opred5418, align 8
  %os15419 = bitcast %union.rec* %2484 to %struct.word_type*
  %olist5420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15419, i32 0, i32 0
  %arrayidx5421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5420, i32 0, i64 0
  %osucc5422 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5421, i32 0, i32 1
  store %union.rec* %2482, %union.rec** %osucc5422, align 8
  %2485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2486 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15423 = bitcast %union.rec* %2486 to %struct.word_type*
  %olist5424 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15423, i32 0, i32 0
  %arrayidx5425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5424, i32 0, i64 0
  %osucc5426 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5425, i32 0, i32 1
  store %union.rec* %2485, %union.rec** %osucc5426, align 8
  %2487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15427 = bitcast %union.rec* %2487 to %struct.word_type*
  %olist5428 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15427, i32 0, i32 0
  %arrayidx5429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5428, i32 0, i64 0
  %opred5430 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5429, i32 0, i32 0
  store %union.rec* %2485, %union.rec** %opred5430, align 8
  %2488 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5431

cond.end.5431:                                    ; preds = %cond.false.5402, %cond.true.5401
  %cond5432 = phi %union.rec* [ null, %cond.true.5401 ], [ %2488, %cond.false.5402 ]
  %2489 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2489, %union.rec** @zz_hold, align 8
  %2490 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2490, %union.rec** @zz_hold, align 8
  %2491 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15433 = bitcast %union.rec* %2491 to %struct.word_type*
  %ou15434 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15433, i32 0, i32 1
  %os115435 = bitcast %union.FIRST_UNION* %ou15434 to %struct.anon*
  %otype5436 = getelementptr inbounds %struct.anon, %struct.anon* %os115435, i32 0, i32 0
  %2492 = load i8, i8* %otype5436, align 1
  %conv5437 = zext i8 %2492 to i32
  %cmp5438 = icmp eq i32 %conv5437, 11
  br i1 %cmp5438, label %cond.true.5448, label %lor.lhs.false.5440

lor.lhs.false.5440:                               ; preds = %cond.end.5431
  %2493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15441 = bitcast %union.rec* %2493 to %struct.word_type*
  %ou15442 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15441, i32 0, i32 1
  %os115443 = bitcast %union.FIRST_UNION* %ou15442 to %struct.anon*
  %otype5444 = getelementptr inbounds %struct.anon, %struct.anon* %os115443, i32 0, i32 0
  %2494 = load i8, i8* %otype5444, align 1
  %conv5445 = zext i8 %2494 to i32
  %cmp5446 = icmp eq i32 %conv5445, 12
  br i1 %cmp5446, label %cond.true.5448, label %cond.false.5454

cond.true.5448:                                   ; preds = %lor.lhs.false.5440, %cond.end.5431
  %2495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15449 = bitcast %union.rec* %2495 to %struct.word_type*
  %ou15450 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15449, i32 0, i32 1
  %os115451 = bitcast %union.FIRST_UNION* %ou15450 to %struct.anon*
  %orec_size5452 = getelementptr inbounds %struct.anon, %struct.anon* %os115451, i32 0, i32 1
  %2496 = load i8, i8* %orec_size5452, align 1
  %conv5453 = zext i8 %2496 to i32
  br label %cond.end.5462

cond.false.5454:                                  ; preds = %lor.lhs.false.5440
  %2497 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15455 = bitcast %union.rec* %2497 to %struct.word_type*
  %ou15456 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15455, i32 0, i32 1
  %os115457 = bitcast %union.FIRST_UNION* %ou15456 to %struct.anon*
  %otype5458 = getelementptr inbounds %struct.anon, %struct.anon* %os115457, i32 0, i32 0
  %2498 = load i8, i8* %otype5458, align 1
  %idxprom5459 = zext i8 %2498 to i64
  %arrayidx5460 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom5459
  %2499 = load i8, i8* %arrayidx5460, align 1
  %conv5461 = zext i8 %2499 to i32
  br label %cond.end.5462

cond.end.5462:                                    ; preds = %cond.false.5454, %cond.true.5448
  %cond5463 = phi i32 [ %conv5453, %cond.true.5448 ], [ %conv5461, %cond.false.5454 ]
  store i32 %cond5463, i32* @zz_size, align 4
  %2500 = load i32, i32* @zz_size, align 4
  %idxprom5464 = sext i32 %2500 to i64
  %arrayidx5465 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5464
  %2501 = load %union.rec*, %union.rec** %arrayidx5465, align 8
  %2502 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15466 = bitcast %union.rec* %2502 to %struct.word_type*
  %olist5467 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15466, i32 0, i32 0
  %arrayidx5468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5467, i32 0, i64 0
  %opred5469 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5468, i32 0, i32 0
  store %union.rec* %2501, %union.rec** %opred5469, align 8
  %2503 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2504 = load i32, i32* @zz_size, align 4
  %idxprom5470 = sext i32 %2504 to i64
  %arrayidx5471 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5470
  store %union.rec* %2503, %union.rec** %arrayidx5471, align 8
  %2505 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %os15472 = bitcast %union.rec* %2505 to %struct.word_type*
  %olist5473 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15472, i32 0, i32 0
  %arrayidx5474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5473, i32 0, i64 1
  %osucc5475 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5474, i32 0, i32 1
  %2506 = load %union.rec*, %union.rec** %osucc5475, align 8
  %2507 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %cmp5476 = icmp eq %union.rec* %2506, %2507
  br i1 %cmp5476, label %if.then.5478, label %if.end.5480

if.then.5478:                                     ; preds = %cond.end.5462
  %2508 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %call5479 = call i32 @DisposeObject(%union.rec* %2508)
  br label %if.end.5480

if.end.5480:                                      ; preds = %if.then.5478, %cond.end.5462
  br label %if.end.5481

if.end.5481:                                      ; preds = %if.end.5480, %if.then.5319
  br label %for.inc.5484

if.end.5482:                                      ; preds = %land.lhs.true.5311
  %2509 = load %union.rec*, %union.rec** %y, align 8
  %2510 = load i32, i32* %xmk.addr, align 4
  %2511 = load i32, i32* %xb.addr, align 4
  %2512 = load i32, i32* %xf.addr, align 4
  %2513 = load i32, i32* %dim.addr, align 4
  %2514 = load i32, i32* %pg.addr, align 4
  %2515 = load i32, i32* %count.addr, align 4
  %call5483 = call %union.rec* @FixAndPrintObject(%union.rec* %2509, i32 %2510, i32 %2511, i32 %2512, i32 %2513, i32 0, i32 %2514, i32 %2515, i32* %aback, i32* %afwd)
  store %union.rec* %call5483, %union.rec** %y, align 8
  br label %for.inc.5484

for.inc.5484:                                     ; preds = %if.end.5482, %if.end.5481
  %2516 = load %union.rec*, %union.rec** %link, align 8
  %os15485 = bitcast %union.rec* %2516 to %struct.word_type*
  %olist5486 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15485, i32 0, i32 0
  %arrayidx5487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5486, i32 0, i64 0
  %osucc5488 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5487, i32 0, i32 1
  %2517 = load %union.rec*, %union.rec** %osucc5488, align 8
  store %union.rec* %2517, %union.rec** %link, align 8
  br label %for.cond.5281

for.end.5489:                                     ; preds = %for.cond.5281
  br label %if.end.5490

if.end.5490:                                      ; preds = %for.end.5489, %if.end.5275
  %2518 = load i32, i32* %xb.addr, align 4
  %2519 = load i32*, i32** %actual_back.addr, align 8
  store i32 %2518, i32* %2519, align 4
  %2520 = load i32, i32* %xf.addr, align 4
  %2521 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %2520, i32* %2521, align 4
  br label %sw.epilog.5829

sw.bb.5491:                                       ; preds = %entry, %entry
  %2522 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15492 = bitcast %union.rec* %2522 to %struct.word_type*
  %ou15493 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15492, i32 0, i32 1
  %os115494 = bitcast %union.FIRST_UNION* %ou15493 to %struct.anon*
  %otype5495 = getelementptr inbounds %struct.anon, %struct.anon* %os115494, i32 0, i32 0
  %2523 = load i8, i8* %otype5495, align 1
  %conv5496 = zext i8 %2523 to i32
  %cmp5497 = icmp eq i32 %conv5496, 16
  %conv5498 = zext i1 %cmp5497 to i32
  %2524 = load i32, i32* %dim.addr, align 4
  %cmp5499 = icmp eq i32 %2524, 0
  %conv5500 = zext i1 %cmp5499 to i32
  %cmp5501 = icmp eq i32 %conv5498, %conv5500
  br i1 %cmp5501, label %if.end.5505, label %if.then.5503

if.then.5503:                                     ; preds = %sw.bb.5491
  %2525 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5504 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2525, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.5505

if.end.5505:                                      ; preds = %if.then.5503, %sw.bb.5491
  %2526 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15506 = bitcast %union.rec* %2526 to %struct.word_type*
  %olist5507 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15506, i32 0, i32 0
  %arrayidx5508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5507, i32 0, i64 0
  %osucc5509 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5508, i32 0, i32 1
  %2527 = load %union.rec*, %union.rec** %osucc5509, align 8
  store %union.rec* %2527, %union.rec** %link, align 8
  %2528 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15510 = bitcast %union.rec* %2528 to %struct.word_type*
  %olist5511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15510, i32 0, i32 0
  %arrayidx5512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5511, i32 0, i64 1
  %osucc5513 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5512, i32 0, i32 1
  %2529 = load %union.rec*, %union.rec** %osucc5513, align 8
  store %union.rec* %2529, %union.rec** %uplink, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.5514

for.cond.5514:                                    ; preds = %for.inc.5526, %if.end.5505
  %2530 = load %union.rec*, %union.rec** %link, align 8
  %2531 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp5515 = icmp ne %union.rec* %2530, %2531
  br i1 %cmp5515, label %land.lhs.true.5517, label %land.end.5523

land.lhs.true.5517:                               ; preds = %for.cond.5514
  %2532 = load %union.rec*, %union.rec** %uplink, align 8
  %2533 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp5518 = icmp ne %union.rec* %2532, %2533
  br i1 %cmp5518, label %land.rhs.5520, label %land.end.5523

land.rhs.5520:                                    ; preds = %land.lhs.true.5517
  %2534 = load i32, i32* %i, align 4
  %2535 = load i32, i32* %count.addr, align 4
  %cmp5521 = icmp slt i32 %2534, %2535
  br label %land.end.5523

land.end.5523:                                    ; preds = %land.rhs.5520, %land.lhs.true.5517, %for.cond.5514
  %2536 = phi i1 [ false, %land.lhs.true.5517 ], [ false, %for.cond.5514 ], [ %cmp5521, %land.rhs.5520 ]
  br i1 %2536, label %for.body.5525, label %for.end.5536

for.body.5525:                                    ; preds = %land.end.5523
  br label %for.inc.5526

for.inc.5526:                                     ; preds = %for.body.5525
  %2537 = load %union.rec*, %union.rec** %link, align 8
  %os15527 = bitcast %union.rec* %2537 to %struct.word_type*
  %olist5528 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15527, i32 0, i32 0
  %arrayidx5529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5528, i32 0, i64 0
  %osucc5530 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5529, i32 0, i32 1
  %2538 = load %union.rec*, %union.rec** %osucc5530, align 8
  store %union.rec* %2538, %union.rec** %link, align 8
  %2539 = load %union.rec*, %union.rec** %uplink, align 8
  %os15531 = bitcast %union.rec* %2539 to %struct.word_type*
  %olist5532 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15531, i32 0, i32 0
  %arrayidx5533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5532, i32 0, i64 1
  %osucc5534 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5533, i32 0, i32 1
  %2540 = load %union.rec*, %union.rec** %osucc5534, align 8
  store %union.rec* %2540, %union.rec** %uplink, align 8
  %2541 = load i32, i32* %i, align 4
  %inc5535 = add nsw i32 %2541, 1
  store i32 %inc5535, i32* %i, align 4
  br label %for.cond.5514

for.end.5536:                                     ; preds = %land.end.5523
  %2542 = load %union.rec*, %union.rec** %link, align 8
  %2543 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp5537 = icmp ne %union.rec* %2542, %2543
  br i1 %cmp5537, label %land.lhs.true.5539, label %if.then.5542

land.lhs.true.5539:                               ; preds = %for.end.5536
  %2544 = load %union.rec*, %union.rec** %uplink, align 8
  %2545 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp5540 = icmp ne %union.rec* %2544, %2545
  br i1 %cmp5540, label %if.end.5544, label %if.then.5542

if.then.5542:                                     ; preds = %land.lhs.true.5539, %for.end.5536
  %2546 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5543 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2546, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.5544

if.end.5544:                                      ; preds = %if.then.5542, %land.lhs.true.5539
  %2547 = load %union.rec*, %union.rec** %link, align 8
  %os15545 = bitcast %union.rec* %2547 to %struct.word_type*
  %olist5546 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15545, i32 0, i32 0
  %arrayidx5547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5546, i32 0, i64 1
  %opred5548 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5547, i32 0, i32 0
  %2548 = load %union.rec*, %union.rec** %opred5548, align 8
  store %union.rec* %2548, %union.rec** %y, align 8
  store i32 1, i32* %count.addr, align 4
  br label %for.cond.5549

for.cond.5549:                                    ; preds = %for.inc.5558, %if.end.5544
  %2549 = load %union.rec*, %union.rec** %y, align 8
  %os15550 = bitcast %union.rec* %2549 to %struct.word_type*
  %ou15551 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15550, i32 0, i32 1
  %os115552 = bitcast %union.FIRST_UNION* %ou15551 to %struct.anon*
  %otype5553 = getelementptr inbounds %struct.anon, %struct.anon* %os115552, i32 0, i32 0
  %2550 = load i8, i8* %otype5553, align 1
  %conv5554 = zext i8 %2550 to i32
  %cmp5555 = icmp eq i32 %conv5554, 0
  br i1 %cmp5555, label %for.body.5557, label %for.end.5564

for.body.5557:                                    ; preds = %for.cond.5549
  br label %for.inc.5558

for.inc.5558:                                     ; preds = %for.body.5557
  %2551 = load %union.rec*, %union.rec** %y, align 8
  %os15559 = bitcast %union.rec* %2551 to %struct.word_type*
  %olist5560 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15559, i32 0, i32 0
  %arrayidx5561 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5560, i32 0, i64 1
  %opred5562 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5561, i32 0, i32 0
  %2552 = load %union.rec*, %union.rec** %opred5562, align 8
  store %union.rec* %2552, %union.rec** %y, align 8
  %2553 = load i32, i32* %count.addr, align 4
  %inc5563 = add nsw i32 %2553, 1
  store i32 %inc5563, i32* %count.addr, align 4
  br label %for.cond.5549

for.end.5564:                                     ; preds = %for.cond.5549
  %2554 = load %union.rec*, %union.rec** %uplink, align 8
  store %union.rec* %2554, %union.rec** @xx_link, align 8
  %2555 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2555, %union.rec** @zz_hold, align 8
  %2556 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15565 = bitcast %union.rec* %2556 to %struct.word_type*
  %olist5566 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15565, i32 0, i32 0
  %arrayidx5567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5566, i32 0, i64 1
  %osucc5568 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5567, i32 0, i32 1
  %2557 = load %union.rec*, %union.rec** %osucc5568, align 8
  %2558 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5569 = icmp eq %union.rec* %2557, %2558
  br i1 %cmp5569, label %cond.true.5571, label %cond.false.5572

cond.true.5571:                                   ; preds = %for.end.5564
  br label %cond.end.5601

cond.false.5572:                                  ; preds = %for.end.5564
  %2559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15573 = bitcast %union.rec* %2559 to %struct.word_type*
  %olist5574 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15573, i32 0, i32 0
  %arrayidx5575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5574, i32 0, i64 1
  %osucc5576 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5575, i32 0, i32 1
  %2560 = load %union.rec*, %union.rec** %osucc5576, align 8
  store %union.rec* %2560, %union.rec** @zz_res, align 8
  %2561 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15577 = bitcast %union.rec* %2561 to %struct.word_type*
  %olist5578 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15577, i32 0, i32 0
  %arrayidx5579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5578, i32 0, i64 1
  %opred5580 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5579, i32 0, i32 0
  %2562 = load %union.rec*, %union.rec** %opred5580, align 8
  %2563 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15581 = bitcast %union.rec* %2563 to %struct.word_type*
  %olist5582 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15581, i32 0, i32 0
  %arrayidx5583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5582, i32 0, i64 1
  %opred5584 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5583, i32 0, i32 0
  store %union.rec* %2562, %union.rec** %opred5584, align 8
  %2564 = load %union.rec*, %union.rec** @zz_res, align 8
  %2565 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15585 = bitcast %union.rec* %2565 to %struct.word_type*
  %olist5586 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15585, i32 0, i32 0
  %arrayidx5587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5586, i32 0, i64 1
  %opred5588 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5587, i32 0, i32 0
  %2566 = load %union.rec*, %union.rec** %opred5588, align 8
  %os15589 = bitcast %union.rec* %2566 to %struct.word_type*
  %olist5590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15589, i32 0, i32 0
  %arrayidx5591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5590, i32 0, i64 1
  %osucc5592 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5591, i32 0, i32 1
  store %union.rec* %2564, %union.rec** %osucc5592, align 8
  %2567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15593 = bitcast %union.rec* %2568 to %struct.word_type*
  %olist5594 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15593, i32 0, i32 0
  %arrayidx5595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5594, i32 0, i64 1
  %osucc5596 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5595, i32 0, i32 1
  store %union.rec* %2567, %union.rec** %osucc5596, align 8
  %2569 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15597 = bitcast %union.rec* %2569 to %struct.word_type*
  %olist5598 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15597, i32 0, i32 0
  %arrayidx5599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5598, i32 0, i64 1
  %opred5600 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5599, i32 0, i32 0
  store %union.rec* %2567, %union.rec** %opred5600, align 8
  %2570 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5601

cond.end.5601:                                    ; preds = %cond.false.5572, %cond.true.5571
  %cond5602 = phi %union.rec* [ null, %cond.true.5571 ], [ %2570, %cond.false.5572 ]
  %2571 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2571, %union.rec** @zz_res, align 8
  %2572 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %2572, %union.rec** @zz_hold, align 8
  %2573 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5603 = icmp eq %union.rec* %2573, null
  br i1 %cmp5603, label %cond.true.5605, label %cond.false.5606

cond.true.5605:                                   ; preds = %cond.end.5601
  %2574 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5641

cond.false.5606:                                  ; preds = %cond.end.5601
  %2575 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp5607 = icmp eq %union.rec* %2575, null
  br i1 %cmp5607, label %cond.true.5609, label %cond.false.5610

cond.true.5609:                                   ; preds = %cond.false.5606
  %2576 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.5639

cond.false.5610:                                  ; preds = %cond.false.5606
  %2577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15611 = bitcast %union.rec* %2577 to %struct.word_type*
  %olist5612 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15611, i32 0, i32 0
  %arrayidx5613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5612, i32 0, i64 1
  %opred5614 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5613, i32 0, i32 0
  %2578 = load %union.rec*, %union.rec** %opred5614, align 8
  store %union.rec* %2578, %union.rec** @zz_tmp, align 8
  %2579 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15615 = bitcast %union.rec* %2579 to %struct.word_type*
  %olist5616 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15615, i32 0, i32 0
  %arrayidx5617 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5616, i32 0, i64 1
  %opred5618 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5617, i32 0, i32 0
  %2580 = load %union.rec*, %union.rec** %opred5618, align 8
  %2581 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15619 = bitcast %union.rec* %2581 to %struct.word_type*
  %olist5620 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15619, i32 0, i32 0
  %arrayidx5621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5620, i32 0, i64 1
  %opred5622 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5621, i32 0, i32 0
  store %union.rec* %2580, %union.rec** %opred5622, align 8
  %2582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2583 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15623 = bitcast %union.rec* %2583 to %struct.word_type*
  %olist5624 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15623, i32 0, i32 0
  %arrayidx5625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5624, i32 0, i64 1
  %opred5626 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5625, i32 0, i32 0
  %2584 = load %union.rec*, %union.rec** %opred5626, align 8
  %os15627 = bitcast %union.rec* %2584 to %struct.word_type*
  %olist5628 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15627, i32 0, i32 0
  %arrayidx5629 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5628, i32 0, i64 1
  %osucc5630 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5629, i32 0, i32 1
  store %union.rec* %2582, %union.rec** %osucc5630, align 8
  %2585 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2586 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15631 = bitcast %union.rec* %2586 to %struct.word_type*
  %olist5632 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15631, i32 0, i32 0
  %arrayidx5633 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5632, i32 0, i64 1
  %opred5634 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5633, i32 0, i32 0
  store %union.rec* %2585, %union.rec** %opred5634, align 8
  %2587 = load %union.rec*, %union.rec** @zz_res, align 8
  %2588 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os15635 = bitcast %union.rec* %2588 to %struct.word_type*
  %olist5636 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15635, i32 0, i32 0
  %arrayidx5637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5636, i32 0, i64 1
  %osucc5638 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5637, i32 0, i32 1
  store %union.rec* %2587, %union.rec** %osucc5638, align 8
  br label %cond.end.5639

cond.end.5639:                                    ; preds = %cond.false.5610, %cond.true.5609
  %cond5640 = phi %union.rec* [ %2576, %cond.true.5609 ], [ %2587, %cond.false.5610 ]
  br label %cond.end.5641

cond.end.5641:                                    ; preds = %cond.end.5639, %cond.true.5605
  %cond5642 = phi %union.rec* [ %2574, %cond.true.5605 ], [ %cond5640, %cond.end.5639 ]
  %2589 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %2589, %union.rec** @xx_link, align 8
  %2590 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2590, %union.rec** @zz_hold, align 8
  %2591 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15643 = bitcast %union.rec* %2591 to %struct.word_type*
  %olist5644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15643, i32 0, i32 0
  %arrayidx5645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5644, i32 0, i64 1
  %osucc5646 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5645, i32 0, i32 1
  %2592 = load %union.rec*, %union.rec** %osucc5646, align 8
  %2593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5647 = icmp eq %union.rec* %2592, %2593
  br i1 %cmp5647, label %cond.true.5649, label %cond.false.5650

cond.true.5649:                                   ; preds = %cond.end.5641
  br label %cond.end.5679

cond.false.5650:                                  ; preds = %cond.end.5641
  %2594 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15651 = bitcast %union.rec* %2594 to %struct.word_type*
  %olist5652 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15651, i32 0, i32 0
  %arrayidx5653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5652, i32 0, i64 1
  %osucc5654 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5653, i32 0, i32 1
  %2595 = load %union.rec*, %union.rec** %osucc5654, align 8
  store %union.rec* %2595, %union.rec** @zz_res, align 8
  %2596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15655 = bitcast %union.rec* %2596 to %struct.word_type*
  %olist5656 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15655, i32 0, i32 0
  %arrayidx5657 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5656, i32 0, i64 1
  %opred5658 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5657, i32 0, i32 0
  %2597 = load %union.rec*, %union.rec** %opred5658, align 8
  %2598 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15659 = bitcast %union.rec* %2598 to %struct.word_type*
  %olist5660 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15659, i32 0, i32 0
  %arrayidx5661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5660, i32 0, i64 1
  %opred5662 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5661, i32 0, i32 0
  store %union.rec* %2597, %union.rec** %opred5662, align 8
  %2599 = load %union.rec*, %union.rec** @zz_res, align 8
  %2600 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15663 = bitcast %union.rec* %2600 to %struct.word_type*
  %olist5664 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15663, i32 0, i32 0
  %arrayidx5665 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5664, i32 0, i64 1
  %opred5666 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5665, i32 0, i32 0
  %2601 = load %union.rec*, %union.rec** %opred5666, align 8
  %os15667 = bitcast %union.rec* %2601 to %struct.word_type*
  %olist5668 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15667, i32 0, i32 0
  %arrayidx5669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5668, i32 0, i64 1
  %osucc5670 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5669, i32 0, i32 1
  store %union.rec* %2599, %union.rec** %osucc5670, align 8
  %2602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2603 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15671 = bitcast %union.rec* %2603 to %struct.word_type*
  %olist5672 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15671, i32 0, i32 0
  %arrayidx5673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5672, i32 0, i64 1
  %osucc5674 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5673, i32 0, i32 1
  store %union.rec* %2602, %union.rec** %osucc5674, align 8
  %2604 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15675 = bitcast %union.rec* %2604 to %struct.word_type*
  %olist5676 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15675, i32 0, i32 0
  %arrayidx5677 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5676, i32 0, i64 1
  %opred5678 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5677, i32 0, i32 0
  store %union.rec* %2602, %union.rec** %opred5678, align 8
  %2605 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5679

cond.end.5679:                                    ; preds = %cond.false.5650, %cond.true.5649
  %cond5680 = phi %union.rec* [ null, %cond.true.5649 ], [ %2605, %cond.false.5650 ]
  %2606 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2606, %union.rec** @zz_hold, align 8
  %2607 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15681 = bitcast %union.rec* %2607 to %struct.word_type*
  %olist5682 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15681, i32 0, i32 0
  %arrayidx5683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5682, i32 0, i64 0
  %osucc5684 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5683, i32 0, i32 1
  %2608 = load %union.rec*, %union.rec** %osucc5684, align 8
  %2609 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp5685 = icmp eq %union.rec* %2608, %2609
  br i1 %cmp5685, label %cond.true.5687, label %cond.false.5688

cond.true.5687:                                   ; preds = %cond.end.5679
  br label %cond.end.5717

cond.false.5688:                                  ; preds = %cond.end.5679
  %2610 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15689 = bitcast %union.rec* %2610 to %struct.word_type*
  %olist5690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15689, i32 0, i32 0
  %arrayidx5691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5690, i32 0, i64 0
  %osucc5692 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5691, i32 0, i32 1
  %2611 = load %union.rec*, %union.rec** %osucc5692, align 8
  store %union.rec* %2611, %union.rec** @zz_res, align 8
  %2612 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15693 = bitcast %union.rec* %2612 to %struct.word_type*
  %olist5694 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15693, i32 0, i32 0
  %arrayidx5695 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5694, i32 0, i64 0
  %opred5696 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5695, i32 0, i32 0
  %2613 = load %union.rec*, %union.rec** %opred5696, align 8
  %2614 = load %union.rec*, %union.rec** @zz_res, align 8
  %os15697 = bitcast %union.rec* %2614 to %struct.word_type*
  %olist5698 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15697, i32 0, i32 0
  %arrayidx5699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5698, i32 0, i64 0
  %opred5700 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5699, i32 0, i32 0
  store %union.rec* %2613, %union.rec** %opred5700, align 8
  %2615 = load %union.rec*, %union.rec** @zz_res, align 8
  %2616 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15701 = bitcast %union.rec* %2616 to %struct.word_type*
  %olist5702 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15701, i32 0, i32 0
  %arrayidx5703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5702, i32 0, i64 0
  %opred5704 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5703, i32 0, i32 0
  %2617 = load %union.rec*, %union.rec** %opred5704, align 8
  %os15705 = bitcast %union.rec* %2617 to %struct.word_type*
  %olist5706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15705, i32 0, i32 0
  %arrayidx5707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5706, i32 0, i64 0
  %osucc5708 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5707, i32 0, i32 1
  store %union.rec* %2615, %union.rec** %osucc5708, align 8
  %2618 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2619 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15709 = bitcast %union.rec* %2619 to %struct.word_type*
  %olist5710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15709, i32 0, i32 0
  %arrayidx5711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5710, i32 0, i64 0
  %osucc5712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5711, i32 0, i32 1
  store %union.rec* %2618, %union.rec** %osucc5712, align 8
  %2620 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15713 = bitcast %union.rec* %2620 to %struct.word_type*
  %olist5714 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15713, i32 0, i32 0
  %arrayidx5715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5714, i32 0, i64 0
  %opred5716 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5715, i32 0, i32 0
  store %union.rec* %2618, %union.rec** %opred5716, align 8
  %2621 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.5717

cond.end.5717:                                    ; preds = %cond.false.5688, %cond.true.5687
  %cond5718 = phi %union.rec* [ null, %cond.true.5687 ], [ %2621, %cond.false.5688 ]
  %2622 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2622, %union.rec** @zz_hold, align 8
  %2623 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2623, %union.rec** @zz_hold, align 8
  %2624 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15719 = bitcast %union.rec* %2624 to %struct.word_type*
  %ou15720 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15719, i32 0, i32 1
  %os115721 = bitcast %union.FIRST_UNION* %ou15720 to %struct.anon*
  %otype5722 = getelementptr inbounds %struct.anon, %struct.anon* %os115721, i32 0, i32 0
  %2625 = load i8, i8* %otype5722, align 1
  %conv5723 = zext i8 %2625 to i32
  %cmp5724 = icmp eq i32 %conv5723, 11
  br i1 %cmp5724, label %cond.true.5734, label %lor.lhs.false.5726

lor.lhs.false.5726:                               ; preds = %cond.end.5717
  %2626 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15727 = bitcast %union.rec* %2626 to %struct.word_type*
  %ou15728 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15727, i32 0, i32 1
  %os115729 = bitcast %union.FIRST_UNION* %ou15728 to %struct.anon*
  %otype5730 = getelementptr inbounds %struct.anon, %struct.anon* %os115729, i32 0, i32 0
  %2627 = load i8, i8* %otype5730, align 1
  %conv5731 = zext i8 %2627 to i32
  %cmp5732 = icmp eq i32 %conv5731, 12
  br i1 %cmp5732, label %cond.true.5734, label %cond.false.5740

cond.true.5734:                                   ; preds = %lor.lhs.false.5726, %cond.end.5717
  %2628 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15735 = bitcast %union.rec* %2628 to %struct.word_type*
  %ou15736 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15735, i32 0, i32 1
  %os115737 = bitcast %union.FIRST_UNION* %ou15736 to %struct.anon*
  %orec_size5738 = getelementptr inbounds %struct.anon, %struct.anon* %os115737, i32 0, i32 1
  %2629 = load i8, i8* %orec_size5738, align 1
  %conv5739 = zext i8 %2629 to i32
  br label %cond.end.5748

cond.false.5740:                                  ; preds = %lor.lhs.false.5726
  %2630 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15741 = bitcast %union.rec* %2630 to %struct.word_type*
  %ou15742 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15741, i32 0, i32 1
  %os115743 = bitcast %union.FIRST_UNION* %ou15742 to %struct.anon*
  %otype5744 = getelementptr inbounds %struct.anon, %struct.anon* %os115743, i32 0, i32 0
  %2631 = load i8, i8* %otype5744, align 1
  %idxprom5745 = zext i8 %2631 to i64
  %arrayidx5746 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom5745
  %2632 = load i8, i8* %arrayidx5746, align 1
  %conv5747 = zext i8 %2632 to i32
  br label %cond.end.5748

cond.end.5748:                                    ; preds = %cond.false.5740, %cond.true.5734
  %cond5749 = phi i32 [ %conv5739, %cond.true.5734 ], [ %conv5747, %cond.false.5740 ]
  store i32 %cond5749, i32* @zz_size, align 4
  %2633 = load i32, i32* @zz_size, align 4
  %idxprom5750 = sext i32 %2633 to i64
  %arrayidx5751 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5750
  %2634 = load %union.rec*, %union.rec** %arrayidx5751, align 8
  %2635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15752 = bitcast %union.rec* %2635 to %struct.word_type*
  %olist5753 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15752, i32 0, i32 0
  %arrayidx5754 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist5753, i32 0, i64 0
  %opred5755 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5754, i32 0, i32 0
  store %union.rec* %2634, %union.rec** %opred5755, align 8
  %2636 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2637 = load i32, i32* @zz_size, align 4
  %idxprom5756 = sext i32 %2637 to i64
  %arrayidx5757 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom5756
  store %union.rec* %2636, %union.rec** %arrayidx5757, align 8
  %2638 = load %union.rec*, %union.rec** %y, align 8
  %os15758 = bitcast %union.rec* %2638 to %struct.word_type*
  %ou15759 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15758, i32 0, i32 1
  %os115760 = bitcast %union.FIRST_UNION* %ou15759 to %struct.anon*
  %otype5761 = getelementptr inbounds %struct.anon, %struct.anon* %os115760, i32 0, i32 0
  %2639 = load i8, i8* %otype5761, align 1
  %conv5762 = zext i8 %2639 to i32
  %cmp5763 = icmp ne i32 %conv5762, 1
  br i1 %cmp5763, label %if.end.5767, label %if.then.5765

if.then.5765:                                     ; preds = %cond.end.5748
  %2640 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5766 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2640, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.5767

if.end.5767:                                      ; preds = %if.then.5765, %cond.end.5748
  %2641 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15768 = bitcast %union.rec* %2641 to %struct.word_type*
  %ou25769 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15768, i32 0, i32 2
  %os235770 = bitcast %union.SECOND_UNION* %ou25769 to %struct.anon.2*
  %ocross_type5771 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os235770, i32 0, i32 1
  %2642 = load i8, i8* %ocross_type5771, align 1
  %conv5772 = zext i8 %2642 to i32
  %cmp5773 = icmp ne i32 %conv5772, 2
  br i1 %cmp5773, label %if.then.5775, label %if.end.5792

if.then.5775:                                     ; preds = %if.end.5767
  %2643 = load i32, i32* %xb.addr, align 4
  %2644 = load i32, i32* %dim.addr, align 4
  %idxprom5776 = sext i32 %2644 to i64
  %2645 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15777 = bitcast %union.rec* %2645 to %struct.word_type*
  %ou35778 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15777, i32 0, i32 3
  %os315779 = bitcast %union.THIRD_UNION* %ou35778 to %struct.anon.6*
  %oback5780 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315779, i32 0, i32 0
  %arrayidx5781 = getelementptr inbounds [2 x i32], [2 x i32]* %oback5780, i32 0, i64 %idxprom5776
  store i32 %2643, i32* %arrayidx5781, align 4
  %2646 = load i32, i32* %xf.addr, align 4
  %2647 = load i32, i32* %dim.addr, align 4
  %idxprom5782 = sext i32 %2647 to i64
  %2648 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15783 = bitcast %union.rec* %2648 to %struct.word_type*
  %ou35784 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15783, i32 0, i32 3
  %os315785 = bitcast %union.THIRD_UNION* %ou35784 to %struct.anon.6*
  %ofwd5786 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315785, i32 0, i32 1
  %arrayidx5787 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd5786, i32 0, i64 %idxprom5782
  store i32 %2646, i32* %arrayidx5787, align 4
  %2649 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15788 = bitcast %union.rec* %2649 to %struct.word_type*
  %ou25789 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15788, i32 0, i32 2
  %os235790 = bitcast %union.SECOND_UNION* %ou25789 to %struct.anon.2*
  %ocross_type5791 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os235790, i32 0, i32 1
  store i8 2, i8* %ocross_type5791, align 1
  br label %if.end.5792

if.end.5792:                                      ; preds = %if.then.5775, %if.end.5767
  %2650 = load %union.rec*, %union.rec** %y, align 8
  %2651 = load i32, i32* %xmk.addr, align 4
  %2652 = load i32, i32* %dim.addr, align 4
  %idxprom5793 = sext i32 %2652 to i64
  %2653 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15794 = bitcast %union.rec* %2653 to %struct.word_type*
  %ou35795 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15794, i32 0, i32 3
  %os315796 = bitcast %union.THIRD_UNION* %ou35795 to %struct.anon.6*
  %oback5797 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315796, i32 0, i32 0
  %arrayidx5798 = getelementptr inbounds [2 x i32], [2 x i32]* %oback5797, i32 0, i64 %idxprom5793
  %2654 = load i32, i32* %arrayidx5798, align 4
  %2655 = load i32, i32* %dim.addr, align 4
  %idxprom5799 = sext i32 %2655 to i64
  %2656 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15800 = bitcast %union.rec* %2656 to %struct.word_type*
  %ou35801 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15800, i32 0, i32 3
  %os315802 = bitcast %union.THIRD_UNION* %ou35801 to %struct.anon.6*
  %ofwd5803 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os315802, i32 0, i32 1
  %arrayidx5804 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd5803, i32 0, i64 %idxprom5799
  %2657 = load i32, i32* %arrayidx5804, align 4
  %2658 = load i32, i32* %dim.addr, align 4
  %2659 = load i32, i32* %pg.addr, align 4
  %2660 = load i32, i32* %count.addr, align 4
  %call5805 = call %union.rec* @FixAndPrintObject(%union.rec* %2650, i32 %2651, i32 %2654, i32 %2657, i32 %2658, i32 0, i32 %2659, i32 %2660, i32* %aback, i32* %afwd)
  store %union.rec* %call5805, %union.rec** %y, align 8
  %2661 = load i32, i32* %xb.addr, align 4
  %2662 = load i32*, i32** %actual_back.addr, align 8
  store i32 %2661, i32* %2662, align 4
  %2663 = load i32, i32* %xf.addr, align 4
  %2664 = load i32*, i32** %actual_fwd.addr, align 8
  store i32 %2663, i32* %2664, align 4
  br label %sw.epilog.5829

sw.bb.5806:                                       ; preds = %entry, %entry, %entry, %entry
  %2665 = load i32, i32* %dim.addr, align 4
  %cmp5807 = icmp eq i32 %2665, 0
  br i1 %cmp5807, label %if.then.5809, label %if.end.5820

if.then.5809:                                     ; preds = %sw.bb.5806
  %2666 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15810 = bitcast %union.rec* %2666 to %struct.word_type*
  %ou15811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15810, i32 0, i32 1
  %ofpos5812 = bitcast %union.FIRST_UNION* %ou15811 to %struct.FILE_POS*
  %2667 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15813 = bitcast %union.rec* %2667 to %struct.word_type*
  %ou15814 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15813, i32 0, i32 1
  %os115815 = bitcast %union.FIRST_UNION* %ou15814 to %struct.anon*
  %otype5816 = getelementptr inbounds %struct.anon, %struct.anon* %os115815, i32 0, i32 0
  %2668 = load i8, i8* %otype5816, align 1
  %conv5817 = zext i8 %2668 to i32
  %call5818 = call i8* @Image(i32 %conv5817)
  %call5819 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 23, i32 8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos5812, i8* %call5818)
  br label %if.end.5820

if.end.5820:                                      ; preds = %if.then.5809, %sw.bb.5806
  br label %sw.epilog.5829

sw.default.5821:                                  ; preds = %entry
  %2669 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2670 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15822 = bitcast %union.rec* %2670 to %struct.word_type*
  %ou15823 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15822, i32 0, i32 1
  %os115824 = bitcast %union.FIRST_UNION* %ou15823 to %struct.anon*
  %otype5825 = getelementptr inbounds %struct.anon, %struct.anon* %os115824, i32 0, i32 0
  %2671 = load i8, i8* %otype5825, align 1
  %conv5826 = zext i8 %2671 to i32
  %call5827 = call i8* @Image(i32 %conv5826)
  %call5828 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i32 0, %struct.FILE_POS* %2669, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* %call5827)
  br label %sw.epilog.5829

sw.epilog.5829:                                   ; preds = %sw.default.5821, %if.end.5820, %if.end.5792, %if.end.5490, %if.then.3429, %if.end.3318, %cond.end.1927, %if.end.1857, %if.end.1786, %if.end.1676, %if.end.1476, %if.end.1297, %for.end.1159, %if.end.1109, %if.end.1053, %if.end.937, %if.end.790, %if.end.691, %if.end.643, %if.end.590, %if.end.486, %if.end.428, %if.end.385, %if.end.192, %sw.bb
  %2672 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %2672
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare void @FontPageUsed(%union.rec*) #1

declare i32 @FindShift(%union.rec*, %union.rec*, i32) #1

; Function Attrs: nounwind uwtable
define internal float @ScaleFactor(i32 %avail_size, i32 %inner_size) #0 {
entry:
  %avail_size.addr = alloca i32, align 4
  %inner_size.addr = alloca i32, align 4
  %scale_factor = alloca float, align 4
  store i32 %avail_size, i32* %avail_size.addr, align 4
  store i32 %inner_size, i32* %inner_size.addr, align 4
  %0 = load i32, i32* %avail_size.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.5

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %inner_size.addr, align 4
  %cmp1 = icmp sle i32 %1, 0
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load i32, i32* %avail_size.addr, align 4
  %conv = sitofp i32 %2 to float
  %3 = load i32, i32* %inner_size.addr, align 4
  %conv4 = sitofp i32 %3 to float
  %div = fdiv float %conv, %conv4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi float [ 0.000000e+00, %cond.true.2 ], [ %div, %cond.false.3 ]
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.end, %cond.true
  %cond6 = phi float [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store float %cond6, float* %scale_factor, align 4
  %4 = load float, float* %scale_factor, align 4
  ret float %4
}

declare void @RotateConstraint(%struct.CONSTRAINT*, %union.rec*, i32, %struct.CONSTRAINT*, %struct.CONSTRAINT*, i32) #1

declare i32 @SplitIsDefinite(%union.rec*) #1

; Function Attrs: nounwind uwtable
define internal i32 @FindAdjustIncrement(%union.rec* %x, i32 %frame_size, i32 %dim) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %union.rec*, align 8
  %frame_size.addr = alloca i32, align 4
  %dim.addr = alloca i32, align 4
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %prev = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %adjustable_gaps = alloca i32, align 4
  %jn = alloca i32, align 4
  %inc = alloca i32, align 4
  %mk = alloca i32, align 4
  %actual_size = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %frame_size, i32* %frame_size.addr, align 4
  store i32 %dim, i32* %dim.addr, align 4
  store i32 1, i32* %jn, align 4
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %1, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.49, %entry
  %2 = load %union.rec*, %union.rec** %link, align 8
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp = icmp ne %union.rec* %2, %3
  br i1 %cmp, label %for.body, label %for.end.54

for.body:                                         ; preds = %for.cond
  %4 = load %union.rec*, %union.rec** %link, align 8
  %os11 = bitcast %union.rec* %4 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 0
  %5 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %5, %union.rec** %prev, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load %union.rec*, %union.rec** %prev, align 8
  %os15 = bitcast %union.rec* %6 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 1
  %os116 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os116, i32 0, i32 0
  %7 = load i8, i8* %otype, align 1
  %conv = zext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.4
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %8 = load %union.rec*, %union.rec** %prev, align 8
  %os110 = bitcast %union.rec* %8 to %struct.word_type*
  %olist11 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist11, i32 0, i64 1
  %opred13 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred13, align 8
  store %union.rec* %9, %union.rec** %prev, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %10 = load %union.rec*, %union.rec** %prev, align 8
  %os114 = bitcast %union.rec* %10 to %struct.word_type*
  %ou115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %os1116 = bitcast %union.FIRST_UNION* %ou115 to %struct.anon*
  %otype17 = getelementptr inbounds %struct.anon, %struct.anon* %os1116, i32 0, i32 0
  %11 = load i8, i8* %otype17, align 1
  %conv18 = zext i8 %11 to i32
  %cmp19 = icmp eq i32 %conv18, 1
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %12 = load i32, i32* %jn, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %13 = load %union.rec*, %union.rec** %prev, align 8
  %os5 = bitcast %union.rec* %13 to %struct.gapobj_type*
  %ogap = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5, i32 0, i32 3
  %14 = bitcast %struct.GAP* %ogap to i16*
  %bf.load = load i16, i16* %14, align 4
  %bf.lshr = lshr i16 %bf.load, 9
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool21 = icmp ne i32 %bf.cast, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %15 = phi i1 [ false, %if.then ], [ %tobool21, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  store i32 %land.ext, i32* %jn, align 4
  br label %if.end.48

if.else:                                          ; preds = %for.end
  %16 = load %union.rec*, %union.rec** %prev, align 8
  %os122 = bitcast %union.rec* %16 to %struct.word_type*
  %ou123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 1
  %os1124 = bitcast %union.FIRST_UNION* %ou123 to %struct.anon*
  %otype25 = getelementptr inbounds %struct.anon, %struct.anon* %os1124, i32 0, i32 0
  %17 = load i8, i8* %otype25, align 1
  %conv26 = zext i8 %17 to i32
  %cmp27 = icmp eq i32 %conv26, 9
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %18 = load %union.rec*, %union.rec** %prev, align 8
  %call = call i32 @SplitIsDefinite(%union.rec* %18)
  %tobool29 = icmp ne i32 %call, 0
  br i1 %tobool29, label %if.then.47, label %if.end

cond.false:                                       ; preds = %if.else
  %19 = load %union.rec*, %union.rec** %prev, align 8
  %os130 = bitcast %union.rec* %19 to %struct.word_type*
  %ou131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 1
  %os1132 = bitcast %union.FIRST_UNION* %ou131 to %struct.anon*
  %otype33 = getelementptr inbounds %struct.anon, %struct.anon* %os1132, i32 0, i32 0
  %20 = load i8, i8* %otype33, align 1
  %conv34 = zext i8 %20 to i32
  %cmp35 = icmp sge i32 %conv34, 9
  br i1 %cmp35, label %land.rhs.37, label %land.end.45

land.rhs.37:                                      ; preds = %cond.false
  %21 = load %union.rec*, %union.rec** %prev, align 8
  %os138 = bitcast %union.rec* %21 to %struct.word_type*
  %ou139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 1
  %os1140 = bitcast %union.FIRST_UNION* %ou139 to %struct.anon*
  %otype41 = getelementptr inbounds %struct.anon, %struct.anon* %os1140, i32 0, i32 0
  %22 = load i8, i8* %otype41, align 1
  %conv42 = zext i8 %22 to i32
  %cmp43 = icmp sle i32 %conv42, 99
  br label %land.end.45

land.end.45:                                      ; preds = %land.rhs.37, %cond.false
  %23 = phi i1 [ false, %cond.false ], [ %cmp43, %land.rhs.37 ]
  br i1 %23, label %if.then.47, label %if.end

if.then.47:                                       ; preds = %land.end.45, %cond.true
  br label %for.end.54

if.end:                                           ; preds = %land.end.45, %cond.true
  br label %if.end.48

if.end.48:                                        ; preds = %if.end, %land.end
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %24 = load %union.rec*, %union.rec** %link, align 8
  %os150 = bitcast %union.rec* %24 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 0
  %osucc53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 1
  %25 = load %union.rec*, %union.rec** %osucc53, align 8
  store %union.rec* %25, %union.rec** %link, align 8
  br label %for.cond

for.end.54:                                       ; preds = %if.then.47, %for.cond
  %26 = load %union.rec*, %union.rec** %link, align 8
  %27 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp55 = icmp ne %union.rec* %26, %27
  br i1 %cmp55, label %if.then.57, label %if.else.299

if.then.57:                                       ; preds = %for.end.54
  store i32 0, i32* %adjustable_gaps, align 4
  %28 = load i32, i32* %dim.addr, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %union.rec*, %union.rec** %prev, align 8
  %os158 = bitcast %union.rec* %29 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 %idxprom
  %30 = load i32, i32* %arrayidx59, align 4
  store i32 %30, i32* %mk, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %31 = load %union.rec*, %union.rec** %link, align 8
  %os160 = bitcast %union.rec* %31 to %struct.word_type*
  %olist61 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist61, i32 0, i64 0
  %osucc63 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx62, i32 0, i32 1
  %32 = load %union.rec*, %union.rec** %osucc63, align 8
  store %union.rec* %32, %union.rec** %link, align 8
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.143, %if.then.57
  %33 = load %union.rec*, %union.rec** %link, align 8
  %34 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp65 = icmp ne %union.rec* %33, %34
  br i1 %cmp65, label %for.body.67, label %for.end.148

for.body.67:                                      ; preds = %for.cond.64
  %35 = load %union.rec*, %union.rec** %link, align 8
  %os168 = bitcast %union.rec* %35 to %struct.word_type*
  %olist69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist69, i32 0, i64 1
  %opred71 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx70, i32 0, i32 0
  %36 = load %union.rec*, %union.rec** %opred71, align 8
  store %union.rec* %36, %union.rec** %y, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.81, %for.body.67
  %37 = load %union.rec*, %union.rec** %y, align 8
  %os173 = bitcast %union.rec* %37 to %struct.word_type*
  %ou174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 1
  %os1175 = bitcast %union.FIRST_UNION* %ou174 to %struct.anon*
  %otype76 = getelementptr inbounds %struct.anon, %struct.anon* %os1175, i32 0, i32 0
  %38 = load i8, i8* %otype76, align 1
  %conv77 = zext i8 %38 to i32
  %cmp78 = icmp eq i32 %conv77, 0
  br i1 %cmp78, label %for.body.80, label %for.end.86

for.body.80:                                      ; preds = %for.cond.72
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.80
  %39 = load %union.rec*, %union.rec** %y, align 8
  %os182 = bitcast %union.rec* %39 to %struct.word_type*
  %olist83 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist83, i32 0, i64 1
  %opred85 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx84, i32 0, i32 0
  %40 = load %union.rec*, %union.rec** %opred85, align 8
  store %union.rec* %40, %union.rec** %y, align 8
  br label %for.cond.72

for.end.86:                                       ; preds = %for.cond.72
  %41 = load %union.rec*, %union.rec** %y, align 8
  %os187 = bitcast %union.rec* %41 to %struct.word_type*
  %ou188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 1
  %os1189 = bitcast %union.FIRST_UNION* %ou188 to %struct.anon*
  %otype90 = getelementptr inbounds %struct.anon, %struct.anon* %os1189, i32 0, i32 0
  %42 = load i8, i8* %otype90, align 1
  %conv91 = zext i8 %42 to i32
  %cmp92 = icmp eq i32 %conv91, 1
  br i1 %cmp92, label %if.then.94, label %if.else.106

if.then.94:                                       ; preds = %for.end.86
  %43 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %43, %union.rec** %g, align 8
  %44 = load i32, i32* %jn, align 4
  %tobool95 = icmp ne i32 %44, 0
  br i1 %tobool95, label %land.rhs.96, label %land.end.104

land.rhs.96:                                      ; preds = %if.then.94
  %45 = load %union.rec*, %union.rec** %y, align 8
  %os597 = bitcast %union.rec* %45 to %struct.gapobj_type*
  %ogap98 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os597, i32 0, i32 3
  %46 = bitcast %struct.GAP* %ogap98 to i16*
  %bf.load99 = load i16, i16* %46, align 4
  %bf.lshr100 = lshr i16 %bf.load99, 9
  %bf.clear101 = and i16 %bf.lshr100, 1
  %bf.cast102 = zext i16 %bf.clear101 to i32
  %tobool103 = icmp ne i32 %bf.cast102, 0
  br label %land.end.104

land.end.104:                                     ; preds = %land.rhs.96, %if.then.94
  %47 = phi i1 [ false, %if.then.94 ], [ %tobool103, %land.rhs.96 ]
  %land.ext105 = zext i1 %47 to i32
  store i32 %land.ext105, i32* %jn, align 4
  br label %if.end.142

if.else.106:                                      ; preds = %for.end.86
  %48 = load %union.rec*, %union.rec** %y, align 8
  %os1107 = bitcast %union.rec* %48 to %struct.word_type*
  %ou1108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1107, i32 0, i32 1
  %os11109 = bitcast %union.FIRST_UNION* %ou1108 to %struct.anon*
  %otype110 = getelementptr inbounds %struct.anon, %struct.anon* %os11109, i32 0, i32 0
  %49 = load i8, i8* %otype110, align 1
  %conv111 = zext i8 %49 to i32
  %cmp112 = icmp eq i32 %conv111, 9
  br i1 %cmp112, label %cond.true.114, label %cond.false.117

cond.true.114:                                    ; preds = %if.else.106
  %50 = load %union.rec*, %union.rec** %y, align 8
  %call115 = call i32 @SplitIsDefinite(%union.rec* %50)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.then.135, label %if.end.141

cond.false.117:                                   ; preds = %if.else.106
  %51 = load %union.rec*, %union.rec** %y, align 8
  %os1118 = bitcast %union.rec* %51 to %struct.word_type*
  %ou1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 1
  %os11120 = bitcast %union.FIRST_UNION* %ou1119 to %struct.anon*
  %otype121 = getelementptr inbounds %struct.anon, %struct.anon* %os11120, i32 0, i32 0
  %52 = load i8, i8* %otype121, align 1
  %conv122 = zext i8 %52 to i32
  %cmp123 = icmp sge i32 %conv122, 9
  br i1 %cmp123, label %land.rhs.125, label %land.end.133

land.rhs.125:                                     ; preds = %cond.false.117
  %53 = load %union.rec*, %union.rec** %y, align 8
  %os1126 = bitcast %union.rec* %53 to %struct.word_type*
  %ou1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1126, i32 0, i32 1
  %os11128 = bitcast %union.FIRST_UNION* %ou1127 to %struct.anon*
  %otype129 = getelementptr inbounds %struct.anon, %struct.anon* %os11128, i32 0, i32 0
  %54 = load i8, i8* %otype129, align 1
  %conv130 = zext i8 %54 to i32
  %cmp131 = icmp sle i32 %conv130, 99
  br label %land.end.133

land.end.133:                                     ; preds = %land.rhs.125, %cond.false.117
  %55 = phi i1 [ false, %cond.false.117 ], [ %cmp131, %land.rhs.125 ]
  br i1 %55, label %if.then.135, label %if.end.141

if.then.135:                                      ; preds = %land.end.133, %cond.true.114
  %56 = load %union.rec*, %union.rec** %g, align 8
  %cmp136 = icmp ne %union.rec* %56, null
  br i1 %cmp136, label %if.end.140, label %if.then.138

if.then.138:                                      ; preds = %if.then.135
  %57 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call139 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %if.then.135
  br label %for.end.148

if.end.141:                                       ; preds = %land.end.133, %cond.true.114
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %land.end.104
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %58 = load %union.rec*, %union.rec** %link, align 8
  %os1144 = bitcast %union.rec* %58 to %struct.word_type*
  %olist145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist145, i32 0, i64 0
  %osucc147 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx146, i32 0, i32 1
  %59 = load %union.rec*, %union.rec** %osucc147, align 8
  store %union.rec* %59, %union.rec** %link, align 8
  br label %for.cond.64

for.end.148:                                      ; preds = %if.end.140, %for.cond.64
  br label %while.cond

while.cond:                                       ; preds = %for.end.287, %for.end.148
  %60 = load %union.rec*, %union.rec** %link, align 8
  %61 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp149 = icmp ne %union.rec* %60, %61
  br i1 %cmp149, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %62 = load %union.rec*, %union.rec** %g, align 8
  %os5151 = bitcast %union.rec* %62 to %struct.gapobj_type*
  %ogap152 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5151, i32 0, i32 3
  %63 = bitcast %struct.GAP* %ogap152 to i16*
  %bf.load153 = load i16, i16* %63, align 4
  %bf.lshr154 = lshr i16 %bf.load153, 13
  %bf.cast155 = zext i16 %bf.lshr154 to i32
  %cmp156 = icmp eq i32 %bf.cast155, 6
  br i1 %cmp156, label %if.then.175, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %64 = load %union.rec*, %union.rec** %g, align 8
  %os5158 = bitcast %union.rec* %64 to %struct.gapobj_type*
  %ogap159 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5158, i32 0, i32 3
  %65 = bitcast %struct.GAP* %ogap159 to i16*
  %bf.load160 = load i16, i16* %65, align 4
  %bf.lshr161 = lshr i16 %bf.load160, 10
  %bf.clear162 = and i16 %bf.lshr161, 7
  %bf.cast163 = zext i16 %bf.clear162 to i32
  %cmp164 = icmp eq i32 %bf.cast163, 3
  br i1 %cmp164, label %if.then.175, label %lor.lhs.false.166

lor.lhs.false.166:                                ; preds = %lor.lhs.false
  %66 = load %union.rec*, %union.rec** %g, align 8
  %os5167 = bitcast %union.rec* %66 to %struct.gapobj_type*
  %ogap168 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5167, i32 0, i32 3
  %67 = bitcast %struct.GAP* %ogap168 to i16*
  %bf.load169 = load i16, i16* %67, align 4
  %bf.lshr170 = lshr i16 %bf.load169, 10
  %bf.clear171 = and i16 %bf.lshr170, 7
  %bf.cast172 = zext i16 %bf.clear171 to i32
  %cmp173 = icmp eq i32 %bf.cast172, 2
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %lor.lhs.false.166, %lor.lhs.false, %while.body
  store i32 0, i32* %retval
  br label %return

if.end.176:                                       ; preds = %lor.lhs.false.166
  %68 = load i32, i32* %dim.addr, align 4
  %idxprom177 = sext i32 %68 to i64
  %69 = load %union.rec*, %union.rec** %prev, align 8
  %os1178 = bitcast %union.rec* %69 to %struct.word_type*
  %ou3179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 3
  %os31180 = bitcast %union.THIRD_UNION* %ou3179 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31180, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 %idxprom177
  %70 = load i32, i32* %arrayidx181, align 4
  %71 = load i32, i32* %dim.addr, align 4
  %idxprom182 = sext i32 %71 to i64
  %72 = load %union.rec*, %union.rec** %y, align 8
  %os1183 = bitcast %union.rec* %72 to %struct.word_type*
  %ou3184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1183, i32 0, i32 3
  %os31185 = bitcast %union.THIRD_UNION* %ou3184 to %struct.anon.6*
  %oback186 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31185, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [2 x i32], [2 x i32]* %oback186, i32 0, i64 %idxprom182
  %73 = load i32, i32* %arrayidx187, align 4
  %74 = load i32, i32* %dim.addr, align 4
  %idxprom188 = sext i32 %74 to i64
  %75 = load %union.rec*, %union.rec** %y, align 8
  %os1190 = bitcast %union.rec* %75 to %struct.word_type*
  %ou3191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1190, i32 0, i32 3
  %os31192 = bitcast %union.THIRD_UNION* %ou3191 to %struct.anon.6*
  %ofwd193 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31192, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd193, i32 0, i64 %idxprom188
  %76 = load i32, i32* %arrayidx194, align 4
  %77 = load %union.rec*, %union.rec** %g, align 8
  %os5195 = bitcast %union.rec* %77 to %struct.gapobj_type*
  %ogap196 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5195, i32 0, i32 3
  %78 = load i32, i32* %frame_size.addr, align 4
  %79 = load i32, i32* %mk, align 4
  %call197 = call i32 @ActualGap(i32 %70, i32 %73, i32 %76, %struct.GAP* %ogap196, i32 %78, i32 %79)
  %80 = load i32, i32* %mk, align 4
  %add = add nsw i32 %80, %call197
  store i32 %add, i32* %mk, align 4
  %81 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %81, %union.rec** %prev, align 8
  %82 = load i32, i32* %adjustable_gaps, align 4
  %inc198 = add nsw i32 %82, 1
  store i32 %inc198, i32* %adjustable_gaps, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %83 = load %union.rec*, %union.rec** %link, align 8
  %os1199 = bitcast %union.rec* %83 to %struct.word_type*
  %olist200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1199, i32 0, i32 0
  %arrayidx201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist200, i32 0, i64 0
  %osucc202 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx201, i32 0, i32 1
  %84 = load %union.rec*, %union.rec** %osucc202, align 8
  store %union.rec* %84, %union.rec** %link, align 8
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.282, %if.end.176
  %85 = load %union.rec*, %union.rec** %link, align 8
  %86 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp204 = icmp ne %union.rec* %85, %86
  br i1 %cmp204, label %for.body.206, label %for.end.287

for.body.206:                                     ; preds = %for.cond.203
  %87 = load %union.rec*, %union.rec** %link, align 8
  %os1207 = bitcast %union.rec* %87 to %struct.word_type*
  %olist208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1207, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist208, i32 0, i64 1
  %opred210 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx209, i32 0, i32 0
  %88 = load %union.rec*, %union.rec** %opred210, align 8
  store %union.rec* %88, %union.rec** %y, align 8
  br label %for.cond.211

for.cond.211:                                     ; preds = %for.inc.220, %for.body.206
  %89 = load %union.rec*, %union.rec** %y, align 8
  %os1212 = bitcast %union.rec* %89 to %struct.word_type*
  %ou1213 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1212, i32 0, i32 1
  %os11214 = bitcast %union.FIRST_UNION* %ou1213 to %struct.anon*
  %otype215 = getelementptr inbounds %struct.anon, %struct.anon* %os11214, i32 0, i32 0
  %90 = load i8, i8* %otype215, align 1
  %conv216 = zext i8 %90 to i32
  %cmp217 = icmp eq i32 %conv216, 0
  br i1 %cmp217, label %for.body.219, label %for.end.225

for.body.219:                                     ; preds = %for.cond.211
  br label %for.inc.220

for.inc.220:                                      ; preds = %for.body.219
  %91 = load %union.rec*, %union.rec** %y, align 8
  %os1221 = bitcast %union.rec* %91 to %struct.word_type*
  %olist222 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1221, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist222, i32 0, i64 1
  %opred224 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx223, i32 0, i32 0
  %92 = load %union.rec*, %union.rec** %opred224, align 8
  store %union.rec* %92, %union.rec** %y, align 8
  br label %for.cond.211

for.end.225:                                      ; preds = %for.cond.211
  %93 = load %union.rec*, %union.rec** %y, align 8
  %os1226 = bitcast %union.rec* %93 to %struct.word_type*
  %ou1227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1226, i32 0, i32 1
  %os11228 = bitcast %union.FIRST_UNION* %ou1227 to %struct.anon*
  %otype229 = getelementptr inbounds %struct.anon, %struct.anon* %os11228, i32 0, i32 0
  %94 = load i8, i8* %otype229, align 1
  %conv230 = zext i8 %94 to i32
  %cmp231 = icmp eq i32 %conv230, 1
  br i1 %cmp231, label %if.then.233, label %if.else.245

if.then.233:                                      ; preds = %for.end.225
  %95 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %95, %union.rec** %g, align 8
  %96 = load i32, i32* %jn, align 4
  %tobool234 = icmp ne i32 %96, 0
  br i1 %tobool234, label %land.rhs.235, label %land.end.243

land.rhs.235:                                     ; preds = %if.then.233
  %97 = load %union.rec*, %union.rec** %y, align 8
  %os5236 = bitcast %union.rec* %97 to %struct.gapobj_type*
  %ogap237 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %os5236, i32 0, i32 3
  %98 = bitcast %struct.GAP* %ogap237 to i16*
  %bf.load238 = load i16, i16* %98, align 4
  %bf.lshr239 = lshr i16 %bf.load238, 9
  %bf.clear240 = and i16 %bf.lshr239, 1
  %bf.cast241 = zext i16 %bf.clear240 to i32
  %tobool242 = icmp ne i32 %bf.cast241, 0
  br label %land.end.243

land.end.243:                                     ; preds = %land.rhs.235, %if.then.233
  %99 = phi i1 [ false, %if.then.233 ], [ %tobool242, %land.rhs.235 ]
  %land.ext244 = zext i1 %99 to i32
  store i32 %land.ext244, i32* %jn, align 4
  br label %if.end.281

if.else.245:                                      ; preds = %for.end.225
  %100 = load %union.rec*, %union.rec** %y, align 8
  %os1246 = bitcast %union.rec* %100 to %struct.word_type*
  %ou1247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1246, i32 0, i32 1
  %os11248 = bitcast %union.FIRST_UNION* %ou1247 to %struct.anon*
  %otype249 = getelementptr inbounds %struct.anon, %struct.anon* %os11248, i32 0, i32 0
  %101 = load i8, i8* %otype249, align 1
  %conv250 = zext i8 %101 to i32
  %cmp251 = icmp eq i32 %conv250, 9
  br i1 %cmp251, label %cond.true.253, label %cond.false.256

cond.true.253:                                    ; preds = %if.else.245
  %102 = load %union.rec*, %union.rec** %y, align 8
  %call254 = call i32 @SplitIsDefinite(%union.rec* %102)
  %tobool255 = icmp ne i32 %call254, 0
  br i1 %tobool255, label %if.then.274, label %if.end.280

cond.false.256:                                   ; preds = %if.else.245
  %103 = load %union.rec*, %union.rec** %y, align 8
  %os1257 = bitcast %union.rec* %103 to %struct.word_type*
  %ou1258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1257, i32 0, i32 1
  %os11259 = bitcast %union.FIRST_UNION* %ou1258 to %struct.anon*
  %otype260 = getelementptr inbounds %struct.anon, %struct.anon* %os11259, i32 0, i32 0
  %104 = load i8, i8* %otype260, align 1
  %conv261 = zext i8 %104 to i32
  %cmp262 = icmp sge i32 %conv261, 9
  br i1 %cmp262, label %land.rhs.264, label %land.end.272

land.rhs.264:                                     ; preds = %cond.false.256
  %105 = load %union.rec*, %union.rec** %y, align 8
  %os1265 = bitcast %union.rec* %105 to %struct.word_type*
  %ou1266 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1265, i32 0, i32 1
  %os11267 = bitcast %union.FIRST_UNION* %ou1266 to %struct.anon*
  %otype268 = getelementptr inbounds %struct.anon, %struct.anon* %os11267, i32 0, i32 0
  %106 = load i8, i8* %otype268, align 1
  %conv269 = zext i8 %106 to i32
  %cmp270 = icmp sle i32 %conv269, 99
  br label %land.end.272

land.end.272:                                     ; preds = %land.rhs.264, %cond.false.256
  %107 = phi i1 [ false, %cond.false.256 ], [ %cmp270, %land.rhs.264 ]
  br i1 %107, label %if.then.274, label %if.end.280

if.then.274:                                      ; preds = %land.end.272, %cond.true.253
  %108 = load %union.rec*, %union.rec** %g, align 8
  %cmp275 = icmp ne %union.rec* %108, null
  br i1 %cmp275, label %if.end.279, label %if.then.277

if.then.277:                                      ; preds = %if.then.274
  %109 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call278 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.277, %if.then.274
  br label %for.end.287

if.end.280:                                       ; preds = %land.end.272, %cond.true.253
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %land.end.243
  br label %for.inc.282

for.inc.282:                                      ; preds = %if.end.281
  %110 = load %union.rec*, %union.rec** %link, align 8
  %os1283 = bitcast %union.rec* %110 to %struct.word_type*
  %olist284 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1283, i32 0, i32 0
  %arrayidx285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist284, i32 0, i64 0
  %osucc286 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx285, i32 0, i32 1
  %111 = load %union.rec*, %union.rec** %osucc286, align 8
  store %union.rec* %111, %union.rec** %link, align 8
  br label %for.cond.203

for.end.287:                                      ; preds = %if.end.279, %for.cond.203
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %112 = load i32, i32* %mk, align 4
  %113 = load i32, i32* %dim.addr, align 4
  %idxprom288 = sext i32 %113 to i64
  %114 = load %union.rec*, %union.rec** %prev, align 8
  %os1289 = bitcast %union.rec* %114 to %struct.word_type*
  %ou3290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1289, i32 0, i32 3
  %os31291 = bitcast %union.THIRD_UNION* %ou3290 to %struct.anon.6*
  %ofwd292 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31291, i32 0, i32 1
  %arrayidx293 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd292, i32 0, i64 %idxprom288
  %115 = load i32, i32* %arrayidx293, align 4
  %add294 = add nsw i32 %112, %115
  store i32 %add294, i32* %actual_size, align 4
  %116 = load i32, i32* %adjustable_gaps, align 4
  %cmp295 = icmp eq i32 %116, 0
  br i1 %cmp295, label %cond.true.297, label %cond.false.298

cond.true.297:                                    ; preds = %while.end
  br label %cond.end

cond.false.298:                                   ; preds = %while.end
  %117 = load i32, i32* %frame_size.addr, align 4
  %118 = load i32, i32* %actual_size, align 4
  %sub = sub nsw i32 %117, %118
  %119 = load i32, i32* %adjustable_gaps, align 4
  %div = sdiv i32 %sub, %119
  br label %cond.end

cond.end:                                         ; preds = %cond.false.298, %cond.true.297
  %cond = phi i32 [ 0, %cond.true.297 ], [ %div, %cond.false.298 ]
  store i32 %cond, i32* %inc, align 4
  br label %if.end.300

if.else.299:                                      ; preds = %for.end.54
  store i32 0, i32* %inc, align 4
  br label %if.end.300

if.end.300:                                       ; preds = %if.else.299, %cond.end
  %120 = load i32, i32* %inc, align 4
  store i32 %120, i32* %retval
  br label %return

return:                                           ; preds = %if.end.300, %if.then.175
  %121 = load i32, i32* %retval
  ret i32 %121
}

declare i32 @ActualGap(i32, i32, i32, %struct.GAP*, i32, i32) #1

declare i32 @InsertScale(%union.rec*, %struct.CONSTRAINT*) #1

declare i8* @EchoLength(i32) #1

declare i32 @DisposeObject(%union.rec*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i8* @Image(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
