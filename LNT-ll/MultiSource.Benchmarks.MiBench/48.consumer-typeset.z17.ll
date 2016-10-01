; ModuleID = './MultiSource.Benchmarks.MiBench/48.consumer-typeset.z17.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.13 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }

@.str = private unnamed_addr constant [25 x i8] c"gap is not a simple word\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"width missing from %s\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%s, %s and %s must be enclosed in double quotes\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"GetGap: dg!\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"units letter missing from %s\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"%.1fr too large (1.0r substituted)\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"unknown gap mode in %s\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"replacing self-contradictory gap %s by breakable version\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"invalid width or gap %s\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"MinGap: units\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"MinGap: NO_MODE\00", align 1
@BackEnd = external global %struct.back_end_rec*, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"MinGap: mode\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"ExtraGap: NO_MODE\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"ExtraGap: mode\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"ActualGap: units\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"cannot continue after previous error(s)\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"ActualGap: NO_MODE\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"ActualGap: mode\00", align 1

; Function Attrs: nounwind uwtable
define void @GetGap(%union.rec* %x, %struct.STYLE* %style, %struct.GAP* %res_gap, i32* %res_inc) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %style.addr = alloca %struct.STYLE*, align 8
  %res_gap.addr = alloca %struct.GAP*, align 8
  %res_inc.addr = alloca i32*, align 8
  %w = alloca i32, align 4
  %num = alloca float, align 4
  %str = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  store %struct.GAP* %res_gap, %struct.GAP** %res_gap.addr, align 8
  store i32* %res_inc, i32** %res_inc.addr, align 8
  %0 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %1 = bitcast %struct.GAP* %0 to i16*
  %bf.load = load i16, i16* %1, align 4
  %bf.clear = and i16 %bf.load, -129
  store i16 %bf.clear, i16* %1, align 4
  %2 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %2, i32 0, i32 1
  store i16 0, i16* %owidth, align 2
  %3 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %4 = bitcast %struct.GAP* %3 to i16*
  %bf.load1 = load i16, i16* %4, align 4
  %bf.clear2 = and i16 %bf.load1, -7169
  %bf.set = or i16 %bf.clear2, 1024
  store i16 %bf.set, i16* %4, align 4
  %5 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %6 = bitcast %struct.GAP* %5 to i16*
  %bf.load3 = load i16, i16* %6, align 4
  %bf.clear4 = and i16 %bf.load3, 8191
  %bf.set5 = or i16 %bf.clear4, 8192
  store i16 %bf.set5, i16* %6, align 4
  %7 = load i32*, i32** %res_inc.addr, align 8
  store i32 158, i32* %7, align 4
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %8 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %9 = load i8, i8* %otype, align 1
  %conv = zext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  %os17 = bitcast %union.rec* %10 to %struct.word_type*
  %ou18 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 1
  %os119 = bitcast %union.FIRST_UNION* %ou18 to %struct.anon*
  %otype10 = getelementptr inbounds %struct.anon, %struct.anon* %os119, i32 0, i32 0
  %11 = load i8, i8* %otype10, align 1
  %conv11 = zext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 12
  br i1 %cmp12, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os114 = bitcast %union.rec* %12 to %struct.word_type*
  %ou115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou115 to %struct.FILE_POS*
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos)
  br label %if.end.284

if.end:                                           ; preds = %lor.lhs.false, %entry
  %13 = load %union.rec*, %union.rec** %x.addr, align 8
  %os116 = bitcast %union.rec* %13 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  store i8* %arraydecay, i8** %str, align 8
  %14 = load i8*, i8** %str, align 8
  %15 = load i8, i8* %14, align 1
  %conv17 = zext i8 %15 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  br label %if.end.284

if.end.21:                                        ; preds = %if.end
  %16 = load i8*, i8** %str, align 8
  %17 = load i8, i8* %16, align 1
  %conv22 = zext i8 %17 to i32
  %cmp23 = icmp eq i32 %conv22, 43
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.21
  %18 = load i32*, i32** %res_inc.addr, align 8
  store i32 159, i32* %18, align 4
  %19 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  br label %if.end.32

if.else:                                          ; preds = %if.end.21
  %20 = load i8*, i8** %str, align 8
  %21 = load i8, i8* %20, align 1
  %conv26 = zext i8 %21 to i32
  %cmp27 = icmp eq i32 %conv26, 45
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.else
  %22 = load i32*, i32** %res_inc.addr, align 8
  store i32 160, i32* %22, align 4
  %23 = load i8*, i8** %str, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr30, i8** %str, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.25
  %24 = load i8*, i8** %str, align 8
  %call33 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %num) #3
  %cmp34 = icmp ne i32 %call33, 1
  br i1 %cmp34, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %if.end.32
  %25 = load %union.rec*, %union.rec** %x.addr, align 8
  %os137 = bitcast %union.rec* %25 to %struct.word_type*
  %ou138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 1
  %ofpos39 = bitcast %union.FIRST_UNION* %ou138 to %struct.FILE_POS*
  %26 = load %union.rec*, %union.rec** %x.addr, align 8
  %os140 = bitcast %union.rec* %26 to %struct.word_type*
  %ostring41 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 4
  %arraydecay42 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring41, i32 0, i32 0
  %call43 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos39, i8* %arraydecay42)
  %27 = load %union.rec*, %union.rec** %x.addr, align 8
  %os144 = bitcast %union.rec* %27 to %struct.word_type*
  %ou145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 1
  %ofpos46 = bitcast %union.FIRST_UNION* %ou145 to %struct.FILE_POS*
  %call47 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.284

if.end.48:                                        ; preds = %if.end.32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.48
  %28 = load i8*, i8** %str, align 8
  %29 = load i8, i8* %28, align 1
  %conv49 = zext i8 %29 to i32
  %cmp50 = icmp sge i32 %conv49, 48
  br i1 %cmp50, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %while.cond
  %30 = load i8*, i8** %str, align 8
  %31 = load i8, i8* %30, align 1
  %conv52 = zext i8 %31 to i32
  %cmp53 = icmp sle i32 %conv52, 57
  br i1 %cmp53, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %while.cond
  %32 = load i8*, i8** %str, align 8
  %33 = load i8, i8* %32, align 1
  %conv55 = zext i8 %33 to i32
  %cmp56 = icmp eq i32 %conv55, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %34 = phi i1 [ true, %land.lhs.true ], [ %cmp56, %lor.rhs ]
  br i1 %34, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %35 = load i8*, i8** %str, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr58, i8** %str, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %36 = load i8*, i8** %str, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr59, i8** %str, align 8
  %37 = load i8, i8* %36, align 1
  %conv60 = zext i8 %37 to i32
  switch i32 %conv60, label %sw.default [
    i32 99, label %sw.bb
    i32 105, label %sw.bb.65
    i32 112, label %sw.bb.71
    i32 109, label %sw.bb.77
    i32 102, label %sw.bb.83
    i32 115, label %sw.bb.93
    i32 118, label %sw.bb.102
    i32 121, label %sw.bb.111
    i32 122, label %sw.bb.119
    i32 119, label %sw.bb.127
    i32 98, label %sw.bb.133
    i32 114, label %sw.bb.139
    i32 100, label %sw.bb.145
  ]

sw.bb:                                            ; preds = %while.end
  %38 = load float, float* %num, align 4
  %mul = fmul float %38, 5.670000e+02
  %conv61 = fptosi float %mul to i32
  store i32 %conv61, i32* %w, align 4
  %39 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %40 = bitcast %struct.GAP* %39 to i16*
  %bf.load62 = load i16, i16* %40, align 4
  %bf.clear63 = and i16 %bf.load62, -7169
  %bf.set64 = or i16 %bf.clear63, 1024
  store i16 %bf.set64, i16* %40, align 4
  br label %sw.epilog

sw.bb.65:                                         ; preds = %while.end
  %41 = load float, float* %num, align 4
  %mul66 = fmul float %41, 1.440000e+03
  %conv67 = fptosi float %mul66 to i32
  store i32 %conv67, i32* %w, align 4
  %42 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %43 = bitcast %struct.GAP* %42 to i16*
  %bf.load68 = load i16, i16* %43, align 4
  %bf.clear69 = and i16 %bf.load68, -7169
  %bf.set70 = or i16 %bf.clear69, 1024
  store i16 %bf.set70, i16* %43, align 4
  br label %sw.epilog

sw.bb.71:                                         ; preds = %while.end
  %44 = load float, float* %num, align 4
  %mul72 = fmul float %44, 2.000000e+01
  %conv73 = fptosi float %mul72 to i32
  store i32 %conv73, i32* %w, align 4
  %45 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %46 = bitcast %struct.GAP* %45 to i16*
  %bf.load74 = load i16, i16* %46, align 4
  %bf.clear75 = and i16 %bf.load74, -7169
  %bf.set76 = or i16 %bf.clear75, 1024
  store i16 %bf.set76, i16* %46, align 4
  br label %sw.epilog

sw.bb.77:                                         ; preds = %while.end
  %47 = load float, float* %num, align 4
  %mul78 = fmul float %47, 1.200000e+02
  %conv79 = fptosi float %mul78 to i32
  store i32 %conv79, i32* %w, align 4
  %48 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %49 = bitcast %struct.GAP* %48 to i16*
  %bf.load80 = load i16, i16* %49, align 4
  %bf.clear81 = and i16 %bf.load80, -7169
  %bf.set82 = or i16 %bf.clear81, 1024
  store i16 %bf.set82, i16* %49, align 4
  br label %sw.epilog

sw.bb.83:                                         ; preds = %while.end
  %50 = load float, float* %num, align 4
  %51 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont = getelementptr inbounds %struct.STYLE, %struct.STYLE* %51, i32 0, i32 4
  %bf.load84 = load i32, i32* %ofont, align 4
  %bf.clear85 = and i32 %bf.load84, 4095
  %52 = load %union.rec*, %union.rec** %x.addr, align 8
  %call86 = call i32 @FontSize(i32 %bf.clear85, %union.rec* %52)
  %conv87 = sitofp i32 %call86 to float
  %mul88 = fmul float %50, %conv87
  %conv89 = fptosi float %mul88 to i32
  store i32 %conv89, i32* %w, align 4
  %53 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %54 = bitcast %struct.GAP* %53 to i16*
  %bf.load90 = load i16, i16* %54, align 4
  %bf.clear91 = and i16 %bf.load90, -7169
  %bf.set92 = or i16 %bf.clear91, 1024
  store i16 %bf.set92, i16* %54, align 4
  br label %sw.epilog

sw.bb.93:                                         ; preds = %while.end
  %55 = load float, float* %num, align 4
  %56 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %56, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu2 to %struct.GAP*
  %owidth94 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap, i32 0, i32 1
  %57 = load i16, i16* %owidth94, align 2
  %conv95 = sext i16 %57 to i32
  %conv96 = sitofp i32 %conv95 to float
  %mul97 = fmul float %55, %conv96
  %conv98 = fptosi float %mul97 to i32
  store i32 %conv98, i32* %w, align 4
  %58 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %59 = bitcast %struct.GAP* %58 to i16*
  %bf.load99 = load i16, i16* %59, align 4
  %bf.clear100 = and i16 %bf.load99, -7169
  %bf.set101 = or i16 %bf.clear100, 1024
  store i16 %bf.set101, i16* %59, align 4
  br label %sw.epilog

sw.bb.102:                                        ; preds = %while.end
  %60 = load float, float* %num, align 4
  %61 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %61, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %owidth103 = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap, i32 0, i32 1
  %62 = load i16, i16* %owidth103, align 2
  %conv104 = sext i16 %62 to i32
  %conv105 = sitofp i32 %conv104 to float
  %mul106 = fmul float %60, %conv105
  %conv107 = fptosi float %mul106 to i32
  store i32 %conv107, i32* %w, align 4
  %63 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %64 = bitcast %struct.GAP* %63 to i16*
  %bf.load108 = load i16, i16* %64, align 4
  %bf.clear109 = and i16 %bf.load108, -7169
  %bf.set110 = or i16 %bf.clear109, 1024
  store i16 %bf.set110, i16* %64, align 4
  br label %sw.epilog

sw.bb.111:                                        ; preds = %while.end
  %65 = load float, float* %num, align 4
  %66 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %oyunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %66, i32 0, i32 2
  %67 = load i16, i16* %oyunit, align 2
  %conv112 = sext i16 %67 to i32
  %conv113 = sitofp i32 %conv112 to float
  %mul114 = fmul float %65, %conv113
  %conv115 = fptosi float %mul114 to i32
  store i32 %conv115, i32* %w, align 4
  %68 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %69 = bitcast %struct.GAP* %68 to i16*
  %bf.load116 = load i16, i16* %69, align 4
  %bf.clear117 = and i16 %bf.load116, -7169
  %bf.set118 = or i16 %bf.clear117, 1024
  store i16 %bf.set118, i16* %69, align 4
  br label %sw.epilog

sw.bb.119:                                        ; preds = %while.end
  %70 = load float, float* %num, align 4
  %71 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ozunit = getelementptr inbounds %struct.STYLE, %struct.STYLE* %71, i32 0, i32 3
  %72 = load i16, i16* %ozunit, align 2
  %conv120 = sext i16 %72 to i32
  %conv121 = sitofp i32 %conv120 to float
  %mul122 = fmul float %70, %conv121
  %conv123 = fptosi float %mul122 to i32
  store i32 %conv123, i32* %w, align 4
  %73 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %74 = bitcast %struct.GAP* %73 to i16*
  %bf.load124 = load i16, i16* %74, align 4
  %bf.clear125 = and i16 %bf.load124, -7169
  %bf.set126 = or i16 %bf.clear125, 1024
  store i16 %bf.set126, i16* %74, align 4
  br label %sw.epilog

sw.bb.127:                                        ; preds = %while.end
  %75 = load float, float* %num, align 4
  %mul128 = fmul float %75, 4.096000e+03
  %conv129 = fptosi float %mul128 to i32
  store i32 %conv129, i32* %w, align 4
  %76 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %77 = bitcast %struct.GAP* %76 to i16*
  %bf.load130 = load i16, i16* %77, align 4
  %bf.clear131 = and i16 %bf.load130, -7169
  %bf.set132 = or i16 %bf.clear131, 5120
  store i16 %bf.set132, i16* %77, align 4
  br label %sw.epilog

sw.bb.133:                                        ; preds = %while.end
  %78 = load float, float* %num, align 4
  %mul134 = fmul float %78, 4.096000e+03
  %conv135 = fptosi float %mul134 to i32
  store i32 %conv135, i32* %w, align 4
  %79 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %80 = bitcast %struct.GAP* %79 to i16*
  %bf.load136 = load i16, i16* %80, align 4
  %bf.clear137 = and i16 %bf.load136, -7169
  %bf.set138 = or i16 %bf.clear137, 2048
  store i16 %bf.set138, i16* %80, align 4
  br label %sw.epilog

sw.bb.139:                                        ; preds = %while.end
  %81 = load float, float* %num, align 4
  %mul140 = fmul float %81, 4.096000e+03
  %conv141 = fptosi float %mul140 to i32
  store i32 %conv141, i32* %w, align 4
  %82 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %83 = bitcast %struct.GAP* %82 to i16*
  %bf.load142 = load i16, i16* %83, align 4
  %bf.clear143 = and i16 %bf.load142, -7169
  %bf.set144 = or i16 %bf.clear143, 3072
  store i16 %bf.set144, i16* %83, align 4
  br label %sw.epilog

sw.bb.145:                                        ; preds = %while.end
  %84 = load i32*, i32** %res_inc.addr, align 8
  %85 = load i32, i32* %84, align 4
  %cmp146 = icmp eq i32 %85, 160
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %sw.bb.145
  %86 = load float, float* %num, align 4
  %sub = fsub float -0.000000e+00, %86
  store float %sub, float* %num, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %sw.bb.145
  %87 = load i32*, i32** %res_inc.addr, align 8
  store i32 158, i32* %87, align 4
  br label %while.cond.150

while.cond.150:                                   ; preds = %while.body.154, %if.end.149
  %88 = load float, float* %num, align 4
  %conv151 = fpext float %88 to double
  %cmp152 = fcmp ogt double %conv151, 1.800000e+02
  br i1 %cmp152, label %while.body.154, label %while.end.158

while.body.154:                                   ; preds = %while.cond.150
  %89 = load float, float* %num, align 4
  %conv155 = fpext float %89 to double
  %sub156 = fsub double %conv155, 3.600000e+02
  %conv157 = fptrunc double %sub156 to float
  store float %conv157, float* %num, align 4
  br label %while.cond.150

while.end.158:                                    ; preds = %while.cond.150
  br label %while.cond.159

while.cond.159:                                   ; preds = %while.body.163, %while.end.158
  %90 = load float, float* %num, align 4
  %conv160 = fpext float %90 to double
  %cmp161 = fcmp olt double %conv160, -1.800000e+02
  br i1 %cmp161, label %while.body.163, label %while.end.166

while.body.163:                                   ; preds = %while.cond.159
  %91 = load float, float* %num, align 4
  %conv164 = fpext float %91 to double
  %add = fadd double %conv164, 3.600000e+02
  %conv165 = fptrunc double %add to float
  store float %conv165, float* %num, align 4
  br label %while.cond.159

while.end.166:                                    ; preds = %while.cond.159
  %92 = load float, float* %num, align 4
  %conv167 = fpext float %92 to double
  %cmp168 = fcmp oge double %conv167, -1.800000e+02
  br i1 %cmp168, label %land.lhs.true.170, label %if.then.174

land.lhs.true.170:                                ; preds = %while.end.166
  %93 = load float, float* %num, align 4
  %conv171 = fpext float %93 to double
  %cmp172 = fcmp ole double %conv171, 1.800000e+02
  br i1 %cmp172, label %if.end.176, label %if.then.174

if.then.174:                                      ; preds = %land.lhs.true.170, %while.end.166
  %94 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call175 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.174, %land.lhs.true.170
  %95 = load float, float* %num, align 4
  %mul177 = fmul float %95, 1.280000e+02
  %conv178 = fptosi float %mul177 to i32
  store i32 %conv178, i32* %w, align 4
  %96 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %97 = bitcast %struct.GAP* %96 to i16*
  %bf.load179 = load i16, i16* %97, align 4
  %bf.clear180 = and i16 %bf.load179, -7169
  %bf.set181 = or i16 %bf.clear180, 4096
  store i16 %bf.set181, i16* %97, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.end
  %98 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1182 = bitcast %union.rec* %98 to %struct.word_type*
  %ou1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1182, i32 0, i32 1
  %ofpos184 = bitcast %union.FIRST_UNION* %ou1183 to %struct.FILE_POS*
  %99 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1185 = bitcast %union.rec* %99 to %struct.word_type*
  %ostring186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1185, i32 0, i32 4
  %arraydecay187 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring186, i32 0, i32 0
  %call188 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos184, i8* %arraydecay187)
  br label %if.end.284

sw.epilog:                                        ; preds = %if.end.176, %sw.bb.139, %sw.bb.133, %sw.bb.127, %sw.bb.119, %sw.bb.111, %sw.bb.102, %sw.bb.93, %sw.bb.83, %sw.bb.77, %sw.bb.71, %sw.bb.65, %sw.bb
  %100 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %101 = bitcast %struct.GAP* %100 to i16*
  %bf.load189 = load i16, i16* %101, align 4
  %bf.lshr = lshr i16 %bf.load189, 10
  %bf.clear190 = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear190 to i32
  %cmp191 = icmp eq i32 %bf.cast, 3
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.202

land.lhs.true.193:                                ; preds = %sw.epilog
  %102 = load i32, i32* %w, align 4
  %cmp194 = icmp sgt i32 %102, 4096
  br i1 %cmp194, label %if.then.196, label %if.end.202

if.then.196:                                      ; preds = %land.lhs.true.193
  %103 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1197 = bitcast %union.rec* %103 to %struct.word_type*
  %ou1198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1197, i32 0, i32 1
  %ofpos199 = bitcast %union.FIRST_UNION* %ou1198 to %struct.FILE_POS*
  %104 = load float, float* %num, align 4
  %conv200 = fpext float %104 to double
  %call201 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos199, double %conv200)
  store i32 4096, i32* %w, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.196, %land.lhs.true.193, %sw.epilog
  %105 = load i32, i32* %w, align 4
  %conv203 = trunc i32 %105 to i16
  %106 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %owidth204 = getelementptr inbounds %struct.GAP, %struct.GAP* %106, i32 0, i32 1
  store i16 %conv203, i16* %owidth204, align 2
  %107 = load i8*, i8** %str, align 8
  %108 = load i8, i8* %107, align 1
  %conv205 = zext i8 %108 to i32
  switch i32 %conv205, label %sw.default.240 [
    i32 117, label %sw.bb.206
    i32 0, label %sw.bb.206
    i32 101, label %sw.bb.210
    i32 104, label %sw.bb.215
    i32 120, label %sw.bb.220
    i32 111, label %sw.bb.225
    i32 107, label %sw.bb.230
    i32 116, label %sw.bb.235
  ]

sw.bb.206:                                        ; preds = %if.end.202, %if.end.202
  %109 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %110 = bitcast %struct.GAP* %109 to i16*
  %bf.load207 = load i16, i16* %110, align 4
  %bf.clear208 = and i16 %bf.load207, 8191
  %bf.set209 = or i16 %bf.clear208, 8192
  store i16 %bf.set209, i16* %110, align 4
  br label %sw.epilog.248

sw.bb.210:                                        ; preds = %if.end.202
  %111 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %112 = bitcast %struct.GAP* %111 to i16*
  %bf.load211 = load i16, i16* %112, align 4
  %bf.clear212 = and i16 %bf.load211, 8191
  %bf.set213 = or i16 %bf.clear212, 8192
  store i16 %bf.set213, i16* %112, align 4
  %113 = load i8*, i8** %str, align 8
  %incdec.ptr214 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr214, i8** %str, align 8
  br label %sw.epilog.248

sw.bb.215:                                        ; preds = %if.end.202
  %114 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %115 = bitcast %struct.GAP* %114 to i16*
  %bf.load216 = load i16, i16* %115, align 4
  %bf.clear217 = and i16 %bf.load216, 8191
  %bf.set218 = or i16 %bf.clear217, 16384
  store i16 %bf.set218, i16* %115, align 4
  %116 = load i8*, i8** %str, align 8
  %incdec.ptr219 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr219, i8** %str, align 8
  br label %sw.epilog.248

sw.bb.220:                                        ; preds = %if.end.202
  %117 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %118 = bitcast %struct.GAP* %117 to i16*
  %bf.load221 = load i16, i16* %118, align 4
  %bf.clear222 = and i16 %bf.load221, 8191
  %bf.set223 = or i16 %bf.clear222, 24576
  store i16 %bf.set223, i16* %118, align 4
  %119 = load i8*, i8** %str, align 8
  %incdec.ptr224 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr224, i8** %str, align 8
  br label %sw.epilog.248

sw.bb.225:                                        ; preds = %if.end.202
  %120 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %121 = bitcast %struct.GAP* %120 to i16*
  %bf.load226 = load i16, i16* %121, align 4
  %bf.clear227 = and i16 %bf.load226, 8191
  %bf.set228 = or i16 %bf.clear227, -32768
  store i16 %bf.set228, i16* %121, align 4
  %122 = load i8*, i8** %str, align 8
  %incdec.ptr229 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr229, i8** %str, align 8
  br label %sw.epilog.248

sw.bb.230:                                        ; preds = %if.end.202
  %123 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %124 = bitcast %struct.GAP* %123 to i16*
  %bf.load231 = load i16, i16* %124, align 4
  %bf.clear232 = and i16 %bf.load231, 8191
  %bf.set233 = or i16 %bf.clear232, -24576
  store i16 %bf.set233, i16* %124, align 4
  %125 = load i8*, i8** %str, align 8
  %incdec.ptr234 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr234, i8** %str, align 8
  br label %sw.epilog.248

sw.bb.235:                                        ; preds = %if.end.202
  %126 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %127 = bitcast %struct.GAP* %126 to i16*
  %bf.load236 = load i16, i16* %127, align 4
  %bf.clear237 = and i16 %bf.load236, 8191
  %bf.set238 = or i16 %bf.clear237, -16384
  store i16 %bf.set238, i16* %127, align 4
  %128 = load i8*, i8** %str, align 8
  %incdec.ptr239 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %incdec.ptr239, i8** %str, align 8
  br label %sw.epilog.248

sw.default.240:                                   ; preds = %if.end.202
  %129 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1241 = bitcast %union.rec* %129 to %struct.word_type*
  %ou1242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1241, i32 0, i32 1
  %ofpos243 = bitcast %union.FIRST_UNION* %ou1242 to %struct.FILE_POS*
  %130 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1244 = bitcast %union.rec* %130 to %struct.word_type*
  %ostring245 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1244, i32 0, i32 4
  %arraydecay246 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring245, i32 0, i32 0
  %call247 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos243, i8* %arraydecay246)
  br label %if.end.284

sw.epilog.248:                                    ; preds = %sw.bb.235, %sw.bb.230, %sw.bb.225, %sw.bb.220, %sw.bb.215, %sw.bb.210, %sw.bb.206
  %131 = load i8*, i8** %str, align 8
  %132 = load i8, i8* %131, align 1
  %conv249 = zext i8 %132 to i32
  %cmp250 = icmp eq i32 %conv249, 117
  br i1 %cmp250, label %if.then.252, label %if.end.272

if.then.252:                                      ; preds = %sw.epilog.248
  %133 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %134 = bitcast %struct.GAP* %133 to i16*
  %bf.load253 = load i16, i16* %134, align 4
  %bf.lshr254 = lshr i16 %bf.load253, 13
  %bf.cast255 = zext i16 %bf.lshr254 to i32
  %cmp256 = icmp eq i32 %bf.cast255, 2
  br i1 %cmp256, label %if.then.258, label %if.else.266

if.then.258:                                      ; preds = %if.then.252
  %135 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1259 = bitcast %union.rec* %135 to %struct.word_type*
  %ou1260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1259, i32 0, i32 1
  %ofpos261 = bitcast %union.FIRST_UNION* %ou1260 to %struct.FILE_POS*
  %136 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1262 = bitcast %union.rec* %136 to %struct.word_type*
  %ostring263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1262, i32 0, i32 4
  %arraydecay264 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring263, i32 0, i32 0
  %call265 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 9, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos261, i8* %arraydecay264)
  br label %if.end.270

if.else.266:                                      ; preds = %if.then.252
  %137 = load %struct.GAP*, %struct.GAP** %res_gap.addr, align 8
  %138 = bitcast %struct.GAP* %137 to i16*
  %bf.load267 = load i16, i16* %138, align 4
  %bf.clear268 = and i16 %bf.load267, -129
  %bf.set269 = or i16 %bf.clear268, 128
  store i16 %bf.set269, i16* %138, align 4
  br label %if.end.270

if.end.270:                                       ; preds = %if.else.266, %if.then.258
  %139 = load i8*, i8** %str, align 8
  %incdec.ptr271 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr271, i8** %str, align 8
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.270, %sw.epilog.248
  %140 = load i8*, i8** %str, align 8
  %141 = load i8, i8* %140, align 1
  %conv273 = zext i8 %141 to i32
  %cmp274 = icmp ne i32 %conv273, 0
  br i1 %cmp274, label %if.then.276, label %if.end.284

if.then.276:                                      ; preds = %if.end.272
  %142 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1277 = bitcast %union.rec* %142 to %struct.word_type*
  %ou1278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1277, i32 0, i32 1
  %ofpos279 = bitcast %union.FIRST_UNION* %ou1278 to %struct.FILE_POS*
  %143 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1280 = bitcast %union.rec* %143 to %struct.word_type*
  %ostring281 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1280, i32 0, i32 4
  %arraydecay282 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring281, i32 0, i32 0
  %call283 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos279, i8* %arraydecay282)
  br label %if.end.284

if.end.284:                                       ; preds = %if.then, %if.then.20, %if.then.36, %sw.default, %sw.default.240, %if.then.276, %if.end.272
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare i32 @FontSize(i32, %union.rec*) #1

; Function Attrs: nounwind uwtable
define i32 @MinGap(i32 %a, i32 %b, i32 %c, %struct.GAP* %xgap) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %xgap.addr = alloca %struct.GAP*, align 8
  %res = alloca i32, align 4
  %w = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store %struct.GAP* %xgap, %struct.GAP** %xgap.addr, align 8
  %0 = load %struct.GAP*, %struct.GAP** %xgap.addr, align 8
  %1 = bitcast %struct.GAP* %0 to i16*
  %bf.load = load i16, i16* %1, align 4
  %bf.lshr = lshr i16 %bf.load, 10
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 5, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.GAP*, %struct.GAP** %xgap.addr, align 8
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %2, i32 0, i32 1
  %3 = load i16, i16* %owidth, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, i32* %w, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 0, i32* %w, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 0, i32* %w, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %4 = load %struct.GAP*, %struct.GAP** %xgap.addr, align 8
  %owidth4 = getelementptr inbounds %struct.GAP, %struct.GAP* %4, i32 0, i32 1
  %5 = load i16, i16* %owidth4, align 2
  %conv5 = sext i16 %5 to i32
  %6 = load i32, i32* %b.addr, align 4
  %7 = load i32, i32* %c.addr, align 4
  %add = add nsw i32 %6, %7
  %mul = mul nsw i32 %conv5, %add
  %div = sdiv i32 %mul, 4096
  store i32 %div, i32* %w, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %9 = load %struct.GAP*, %struct.GAP** %xgap.addr, align 8
  %10 = bitcast %struct.GAP* %9 to i16*
  %bf.load6 = load i16, i16* %10, align 4
  %bf.lshr7 = lshr i16 %bf.load6, 13
  %bf.cast8 = zext i16 %bf.lshr7 to i32
  switch i32 %bf.cast8, label %sw.default.64 [
    i32 0, label %sw.bb.9
    i32 7, label %sw.bb.11
    i32 2, label %sw.bb.11
    i32 1, label %sw.bb.11
    i32 3, label %sw.bb.17
    i32 4, label %sw.bb.42
    i32 5, label %sw.bb.43
    i32 6, label %sw.bb.62
  ]

sw.bb.9:                                          ; preds = %sw.epilog
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %res, align 4
  br label %sw.epilog.66

sw.bb.11:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %12 = load i32, i32* %a.addr, align 4
  %13 = load i32, i32* %w, align 4
  %add12 = add nsw i32 %12, %13
  %14 = load i32, i32* %b.addr, align 4
  %add13 = add nsw i32 %add12, %14
  %cmp = icmp slt i32 8388607, %add13
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.11
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.11
  %15 = load i32, i32* %a.addr, align 4
  %16 = load i32, i32* %w, align 4
  %add15 = add nsw i32 %15, %16
  %17 = load i32, i32* %b.addr, align 4
  %add16 = add nsw i32 %add15, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 8388607, %cond.true ], [ %add16, %cond.false ]
  store i32 %cond, i32* %res, align 4
  br label %sw.epilog.66

sw.bb.17:                                         ; preds = %sw.epilog
  %18 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %fractional_spacing_avail = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %18, i32 0, i32 7
  %19 = load i32, i32* %fractional_spacing_avail, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.17
  %20 = load i32, i32* %w, align 4
  %21 = load i32, i32* %a.addr, align 4
  %22 = load i32, i32* %b.addr, align 4
  %add18 = add nsw i32 %21, %22
  %23 = load i32, i32* %w, align 4
  %conv19 = sitofp i32 %23 to double
  %mul20 = fmul double 1.000000e-01, %conv19
  %conv21 = fptosi double %mul20 to i32
  %add22 = add nsw i32 %add18, %conv21
  %cmp23 = icmp slt i32 %20, %add22
  br i1 %cmp23, label %cond.true.25, label %cond.false.31

cond.true.25:                                     ; preds = %if.then
  %24 = load i32, i32* %a.addr, align 4
  %25 = load i32, i32* %b.addr, align 4
  %add26 = add nsw i32 %24, %25
  %26 = load i32, i32* %w, align 4
  %conv27 = sitofp i32 %26 to double
  %mul28 = fmul double 1.000000e-01, %conv27
  %conv29 = fptosi double %mul28 to i32
  %add30 = add nsw i32 %add26, %conv29
  br label %cond.end.32

cond.false.31:                                    ; preds = %if.then
  %27 = load i32, i32* %w, align 4
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.25
  %cond33 = phi i32 [ %add30, %cond.true.25 ], [ %27, %cond.false.31 ]
  store i32 %cond33, i32* %res, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb.17
  %28 = load i32, i32* %w, align 4
  %29 = load i32, i32* %a.addr, align 4
  %30 = load i32, i32* %b.addr, align 4
  %add34 = add nsw i32 %29, %30
  %cmp35 = icmp slt i32 %28, %add34
  br i1 %cmp35, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %if.else
  %31 = load i32, i32* %a.addr, align 4
  %32 = load i32, i32* %b.addr, align 4
  %add38 = add nsw i32 %31, %32
  br label %cond.end.40

cond.false.39:                                    ; preds = %if.else
  %33 = load i32, i32* %w, align 4
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.37
  %cond41 = phi i32 [ %add38, %cond.true.37 ], [ %33, %cond.false.39 ]
  store i32 %cond41, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.40, %cond.end.32
  br label %sw.epilog.66

sw.bb.42:                                         ; preds = %sw.epilog
  %34 = load i32, i32* %w, align 4
  store i32 %34, i32* %res, align 4
  br label %sw.epilog.66

sw.bb.43:                                         ; preds = %sw.epilog
  %35 = load i32, i32* %a.addr, align 4
  %36 = load i32, i32* %b.addr, align 4
  %cmp44 = icmp slt i32 %35, %36
  br i1 %cmp44, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %sw.bb.43
  %37 = load i32, i32* %b.addr, align 4
  br label %cond.end.48

cond.false.47:                                    ; preds = %sw.bb.43
  %38 = load i32, i32* %a.addr, align 4
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.46
  %cond49 = phi i32 [ %37, %cond.true.46 ], [ %38, %cond.false.47 ]
  %39 = load i32, i32* %w, align 4
  %cmp50 = icmp slt i32 %cond49, %39
  br i1 %cmp50, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %cond.end.48
  %40 = load i32, i32* %w, align 4
  br label %cond.end.60

cond.false.53:                                    ; preds = %cond.end.48
  %41 = load i32, i32* %a.addr, align 4
  %42 = load i32, i32* %b.addr, align 4
  %cmp54 = icmp slt i32 %41, %42
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.false.53
  %43 = load i32, i32* %b.addr, align 4
  br label %cond.end.58

cond.false.57:                                    ; preds = %cond.false.53
  %44 = load i32, i32* %a.addr, align 4
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.56
  %cond59 = phi i32 [ %43, %cond.true.56 ], [ %44, %cond.false.57 ]
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.end.58, %cond.true.52
  %cond61 = phi i32 [ %40, %cond.true.52 ], [ %cond59, %cond.end.58 ]
  store i32 %cond61, i32* %res, align 4
  br label %sw.epilog.66

sw.bb.62:                                         ; preds = %sw.epilog
  %45 = load i32, i32* %a.addr, align 4
  %46 = load i32, i32* %b.addr, align 4
  %add63 = add nsw i32 %45, %46
  store i32 %add63, i32* %res, align 4
  br label %sw.epilog.66

sw.default.64:                                    ; preds = %sw.epilog
  %47 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call65 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %res, align 4
  br label %sw.epilog.66

sw.epilog.66:                                     ; preds = %sw.default.64, %sw.bb.62, %cond.end.60, %sw.bb.42, %if.end, %cond.end, %sw.bb.9
  %48 = load i32, i32* %res, align 4
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @ExtraGap(i32 %a, i32 %b, %struct.GAP* %xgap, i32 %dir) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %xgap.addr = alloca %struct.GAP*, align 8
  %dir.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  %res = alloca i32, align 4
  %w = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store %struct.GAP* %xgap, %struct.GAP** %xgap.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load %struct.GAP*, %struct.GAP** %xgap.addr, align 8
  %1 = bitcast %struct.GAP* %0 to i16*
  %bf.load = load i16, i16* %1, align 4
  %bf.lshr = lshr i16 %bf.load, 10
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.GAP*, %struct.GAP** %xgap.addr, align 8
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %2, i32 0, i32 1
  %3 = load i16, i16* %owidth, align 2
  %conv = sext i16 %3 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %w, align 4
  %4 = load %struct.GAP*, %struct.GAP** %xgap.addr, align 8
  %5 = bitcast %struct.GAP* %4 to i16*
  %bf.load3 = load i16, i16* %5, align 4
  %bf.lshr4 = lshr i16 %bf.load3, 13
  %bf.cast5 = zext i16 %bf.lshr4 to i32
  switch i32 %bf.cast5, label %sw.default [
    i32 0, label %sw.bb
    i32 7, label %sw.bb.6
    i32 2, label %sw.bb.6
    i32 1, label %sw.bb.6
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.32
    i32 5, label %sw.bb.33
    i32 6, label %sw.bb.60
  ]

sw.bb:                                            ; preds = %cond.end
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %res, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %cond.end, %cond.end, %cond.end
  store i32 0, i32* %res, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %cond.end
  %7 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %fractional_spacing_avail = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %7, i32 0, i32 7
  %8 = load i32, i32* %fractional_spacing_avail, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.7
  %9 = load i32, i32* %w, align 4
  %conv8 = sitofp i32 %9 to double
  %mul = fmul double 9.000000e-01, %conv8
  %conv9 = fptosi double %mul to i32
  %10 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 %conv9, %10
  %11 = load i32, i32* %b.addr, align 4
  %sub10 = sub nsw i32 %sub, %11
  %cmp11 = icmp slt i32 0, %sub10
  br i1 %cmp11, label %cond.true.13, label %cond.false.19

cond.true.13:                                     ; preds = %if.then
  %12 = load i32, i32* %w, align 4
  %conv14 = sitofp i32 %12 to double
  %mul15 = fmul double 9.000000e-01, %conv14
  %conv16 = fptosi double %mul15 to i32
  %13 = load i32, i32* %a.addr, align 4
  %sub17 = sub nsw i32 %conv16, %13
  %14 = load i32, i32* %b.addr, align 4
  %sub18 = sub nsw i32 %sub17, %14
  br label %cond.end.20

cond.false.19:                                    ; preds = %if.then
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.13
  %cond21 = phi i32 [ %sub18, %cond.true.13 ], [ 0, %cond.false.19 ]
  store i32 %cond21, i32* %res, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb.7
  %15 = load i32, i32* %w, align 4
  %16 = load i32, i32* %a.addr, align 4
  %sub22 = sub nsw i32 %15, %16
  %17 = load i32, i32* %b.addr, align 4
  %sub23 = sub nsw i32 %sub22, %17
  %cmp24 = icmp slt i32 0, %sub23
  br i1 %cmp24, label %cond.true.26, label %cond.false.29

cond.true.26:                                     ; preds = %if.else
  %18 = load i32, i32* %w, align 4
  %19 = load i32, i32* %a.addr, align 4
  %sub27 = sub nsw i32 %18, %19
  %20 = load i32, i32* %b.addr, align 4
  %sub28 = sub nsw i32 %sub27, %20
  br label %cond.end.30

cond.false.29:                                    ; preds = %if.else
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.26
  %cond31 = phi i32 [ %sub28, %cond.true.26 ], [ 0, %cond.false.29 ]
  store i32 %cond31, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.30, %cond.end.20
  br label %sw.epilog

sw.bb.32:                                         ; preds = %cond.end
  store i32 8388607, i32* %res, align 4
  br label %sw.epilog

sw.bb.33:                                         ; preds = %cond.end
  %21 = load i32, i32* %a.addr, align 4
  %22 = load i32, i32* %b.addr, align 4
  %23 = load i32, i32* %w, align 4
  %cmp34 = icmp slt i32 %22, %23
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %sw.bb.33
  %24 = load i32, i32* %w, align 4
  br label %cond.end.38

cond.false.37:                                    ; preds = %sw.bb.33
  %25 = load i32, i32* %b.addr, align 4
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.36
  %cond39 = phi i32 [ %24, %cond.true.36 ], [ %25, %cond.false.37 ]
  %cmp40 = icmp slt i32 %21, %cond39
  br i1 %cmp40, label %cond.true.42, label %cond.false.49

cond.true.42:                                     ; preds = %cond.end.38
  %26 = load i32, i32* %b.addr, align 4
  %27 = load i32, i32* %w, align 4
  %cmp43 = icmp slt i32 %26, %27
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %cond.true.42
  %28 = load i32, i32* %w, align 4
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.true.42
  %29 = load i32, i32* %b.addr, align 4
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.45
  %cond48 = phi i32 [ %28, %cond.true.45 ], [ %29, %cond.false.46 ]
  br label %cond.end.50

cond.false.49:                                    ; preds = %cond.end.38
  %30 = load i32, i32* %a.addr, align 4
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.end.47
  %cond51 = phi i32 [ %cond48, %cond.end.47 ], [ %30, %cond.false.49 ]
  store i32 %cond51, i32* %tmp, align 4
  %31 = load i32, i32* %dir.addr, align 4
  %cmp52 = icmp eq i32 %31, 151
  br i1 %cmp52, label %cond.true.54, label %cond.false.56

cond.true.54:                                     ; preds = %cond.end.50
  %32 = load i32, i32* %tmp, align 4
  %33 = load i32, i32* %b.addr, align 4
  %sub55 = sub nsw i32 %32, %33
  br label %cond.end.58

cond.false.56:                                    ; preds = %cond.end.50
  %34 = load i32, i32* %tmp, align 4
  %35 = load i32, i32* %a.addr, align 4
  %sub57 = sub nsw i32 %34, %35
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.56, %cond.true.54
  %cond59 = phi i32 [ %sub55, %cond.true.54 ], [ %sub57, %cond.false.56 ]
  store i32 %cond59, i32* %res, align 4
  br label %sw.epilog

sw.bb.60:                                         ; preds = %cond.end
  store i32 0, i32* %res, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end
  %36 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call61 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0))
  store i32 0, i32* %res, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.60, %cond.end.58, %sw.bb.32, %if.end, %sw.bb.6, %sw.bb
  %37 = load i32, i32* %res, align 4
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define i32 @ActualGap(i32 %prevf, i32 %b, i32 %f, %struct.GAP* %xgap, i32 %frame_size, i32 %mk) #0 {
entry:
  %prevf.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %xgap.addr = alloca %struct.GAP*, align 8
  %frame_size.addr = alloca i32, align 4
  %mk.addr = alloca i32, align 4
  %res = alloca i32, align 4
  %w = alloca i32, align 4
  %w2 = alloca i32, align 4
  store i32 %prevf, i32* %prevf.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %f, i32* %f.addr, align 4
  store %struct.GAP* %xgap, %struct.GAP** %xgap.addr, align 8
  store i32 %frame_size, i32* %frame_size.addr, align 4
  store i32 %mk, i32* %mk.addr, align 4
  %0 = load %struct.GAP*, %struct.GAP** %xgap.addr, align 8
  %1 = bitcast %struct.GAP* %0 to i16*
  %bf.load = load i16, i16* %1, align 4
  %bf.lshr = lshr i16 %bf.load, 10
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.7
    i32 5, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.GAP*, %struct.GAP** %xgap.addr, align 8
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %2, i32 0, i32 1
  %3 = load i16, i16* %owidth, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, i32* %w, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.GAP*, %struct.GAP** %xgap.addr, align 8
  %owidth2 = getelementptr inbounds %struct.GAP, %struct.GAP* %4, i32 0, i32 1
  %5 = load i16, i16* %owidth2, align 2
  %conv3 = sext i16 %5 to i32
  %cmp = icmp sgt i32 %conv3, 4096
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  store i32 8388607, i32* %w, align 4
  br label %if.end

if.else:                                          ; preds = %sw.bb.1
  %6 = load %struct.GAP*, %struct.GAP** %xgap.addr, align 8
  %owidth5 = getelementptr inbounds %struct.GAP, %struct.GAP* %6, i32 0, i32 1
  %7 = load i16, i16* %owidth5, align 2
  %conv6 = sext i16 %7 to i32
  %8 = load i32, i32* %frame_size.addr, align 4
  %mul = mul nsw i32 %conv6, %8
  %div = sdiv i32 %mul, 4096
  store i32 %div, i32* %w, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %9 = load %struct.GAP*, %struct.GAP** %xgap.addr, align 8
  %owidth8 = getelementptr inbounds %struct.GAP, %struct.GAP* %9, i32 0, i32 1
  %10 = load i16, i16* %owidth8, align 2
  %conv9 = sext i16 %10 to i32
  %11 = load i32, i32* %frame_size.addr, align 4
  %12 = load i32, i32* %b.addr, align 4
  %sub = sub nsw i32 %11, %12
  %13 = load i32, i32* %f.addr, align 4
  %sub10 = sub nsw i32 %sub, %13
  %mul11 = mul nsw i32 %conv9, %sub10
  %div12 = sdiv i32 %mul11, 4096
  store i32 %div12, i32* %w, align 4
  %14 = load i32, i32* %w, align 4
  %cmp13 = icmp slt i32 %14, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.7
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.7
  %15 = load i32, i32* %w, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %w, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %16 = load %struct.GAP*, %struct.GAP** %xgap.addr, align 8
  %owidth16 = getelementptr inbounds %struct.GAP, %struct.GAP* %16, i32 0, i32 1
  %17 = load i16, i16* %owidth16, align 2
  %conv17 = sext i16 %17 to i32
  %18 = load i32, i32* %b.addr, align 4
  %19 = load i32, i32* %f.addr, align 4
  %add = add nsw i32 %18, %19
  %mul18 = mul nsw i32 %conv17, %add
  %div19 = sdiv i32 %mul18, 4096
  store i32 %div19, i32* %w, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %cond.end, %if.end, %sw.bb
  %21 = load %struct.GAP*, %struct.GAP** %xgap.addr, align 8
  %22 = bitcast %struct.GAP* %21 to i16*
  %bf.load20 = load i16, i16* %22, align 4
  %bf.lshr21 = lshr i16 %bf.load20, 13
  %bf.cast22 = zext i16 %bf.lshr21 to i32
  switch i32 %bf.cast22, label %sw.default.88 [
    i32 0, label %sw.bb.23
    i32 7, label %sw.bb.26
    i32 2, label %sw.bb.26
    i32 1, label %sw.bb.26
    i32 3, label %sw.bb.29
    i32 4, label %sw.bb.57
    i32 5, label %sw.bb.58
    i32 6, label %sw.bb.77
  ]

sw.bb.23:                                         ; preds = %sw.epilog
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call24 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 17, i32 10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %23)
  %24 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call25 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0))
  store i32 0, i32* %w2, align 4
  br label %sw.epilog.90

sw.bb.26:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %25 = load i32, i32* %prevf.addr, align 4
  %26 = load i32, i32* %w, align 4
  %add27 = add nsw i32 %25, %26
  %27 = load i32, i32* %b.addr, align 4
  %add28 = add nsw i32 %add27, %27
  store i32 %add28, i32* %w2, align 4
  br label %sw.epilog.90

sw.bb.29:                                         ; preds = %sw.epilog
  %28 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %fractional_spacing_avail = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %28, i32 0, i32 7
  %29 = load i32, i32* %fractional_spacing_avail, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.30, label %if.else.47

if.then.30:                                       ; preds = %sw.bb.29
  %30 = load i32, i32* %w, align 4
  %31 = load i32, i32* %prevf.addr, align 4
  %32 = load i32, i32* %b.addr, align 4
  %add31 = add nsw i32 %31, %32
  %33 = load i32, i32* %w, align 4
  %conv32 = sitofp i32 %33 to double
  %mul33 = fmul double 1.000000e-01, %conv32
  %conv34 = fptosi double %mul33 to i32
  %add35 = add nsw i32 %add31, %conv34
  %cmp36 = icmp slt i32 %30, %add35
  br i1 %cmp36, label %cond.true.38, label %cond.false.44

cond.true.38:                                     ; preds = %if.then.30
  %34 = load i32, i32* %prevf.addr, align 4
  %35 = load i32, i32* %b.addr, align 4
  %add39 = add nsw i32 %34, %35
  %36 = load i32, i32* %w, align 4
  %conv40 = sitofp i32 %36 to double
  %mul41 = fmul double 1.000000e-01, %conv40
  %conv42 = fptosi double %mul41 to i32
  %add43 = add nsw i32 %add39, %conv42
  br label %cond.end.45

cond.false.44:                                    ; preds = %if.then.30
  %37 = load i32, i32* %w, align 4
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.38
  %cond46 = phi i32 [ %add43, %cond.true.38 ], [ %37, %cond.false.44 ]
  store i32 %cond46, i32* %w2, align 4
  br label %if.end.56

if.else.47:                                       ; preds = %sw.bb.29
  %38 = load i32, i32* %w, align 4
  %39 = load i32, i32* %prevf.addr, align 4
  %40 = load i32, i32* %b.addr, align 4
  %add48 = add nsw i32 %39, %40
  %cmp49 = icmp slt i32 %38, %add48
  br i1 %cmp49, label %cond.true.51, label %cond.false.53

cond.true.51:                                     ; preds = %if.else.47
  %41 = load i32, i32* %prevf.addr, align 4
  %42 = load i32, i32* %b.addr, align 4
  %add52 = add nsw i32 %41, %42
  br label %cond.end.54

cond.false.53:                                    ; preds = %if.else.47
  %43 = load i32, i32* %w, align 4
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.53, %cond.true.51
  %cond55 = phi i32 [ %add52, %cond.true.51 ], [ %43, %cond.false.53 ]
  store i32 %cond55, i32* %w2, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %cond.end.54, %cond.end.45
  br label %sw.epilog.90

sw.bb.57:                                         ; preds = %sw.epilog
  %44 = load i32, i32* %w, align 4
  store i32 %44, i32* %w2, align 4
  br label %sw.epilog.90

sw.bb.58:                                         ; preds = %sw.epilog
  %45 = load i32, i32* %prevf.addr, align 4
  %46 = load i32, i32* %b.addr, align 4
  %cmp59 = icmp slt i32 %45, %46
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %sw.bb.58
  %47 = load i32, i32* %b.addr, align 4
  br label %cond.end.63

cond.false.62:                                    ; preds = %sw.bb.58
  %48 = load i32, i32* %prevf.addr, align 4
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi i32 [ %47, %cond.true.61 ], [ %48, %cond.false.62 ]
  %49 = load i32, i32* %w, align 4
  %cmp65 = icmp slt i32 %cond64, %49
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.end.63
  %50 = load i32, i32* %w, align 4
  br label %cond.end.75

cond.false.68:                                    ; preds = %cond.end.63
  %51 = load i32, i32* %prevf.addr, align 4
  %52 = load i32, i32* %b.addr, align 4
  %cmp69 = icmp slt i32 %51, %52
  br i1 %cmp69, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %cond.false.68
  %53 = load i32, i32* %b.addr, align 4
  br label %cond.end.73

cond.false.72:                                    ; preds = %cond.false.68
  %54 = load i32, i32* %prevf.addr, align 4
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.72, %cond.true.71
  %cond74 = phi i32 [ %53, %cond.true.71 ], [ %54, %cond.false.72 ]
  br label %cond.end.75

cond.end.75:                                      ; preds = %cond.end.73, %cond.true.67
  %cond76 = phi i32 [ %50, %cond.true.67 ], [ %cond74, %cond.end.73 ]
  store i32 %cond76, i32* %w2, align 4
  br label %sw.epilog.90

sw.bb.77:                                         ; preds = %sw.epilog
  %55 = load i32, i32* %w, align 4
  %56 = load i32, i32* %b.addr, align 4
  %add78 = add nsw i32 %55, %56
  %57 = load i32, i32* %mk.addr, align 4
  %sub79 = sub nsw i32 %add78, %57
  store i32 %sub79, i32* %w2, align 4
  %58 = load i32, i32* %w2, align 4
  %59 = load i32, i32* %prevf.addr, align 4
  %60 = load i32, i32* %b.addr, align 4
  %add80 = add nsw i32 %59, %60
  %cmp81 = icmp slt i32 %58, %add80
  br i1 %cmp81, label %cond.true.83, label %cond.false.85

cond.true.83:                                     ; preds = %sw.bb.77
  %61 = load i32, i32* %prevf.addr, align 4
  %62 = load i32, i32* %b.addr, align 4
  %add84 = add nsw i32 %61, %62
  br label %cond.end.86

cond.false.85:                                    ; preds = %sw.bb.77
  %63 = load i32, i32* %w2, align 4
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.83
  %cond87 = phi i32 [ %add84, %cond.true.83 ], [ %63, %cond.false.85 ]
  store i32 %cond87, i32* %w2, align 4
  br label %sw.epilog.90

sw.default.88:                                    ; preds = %sw.epilog
  %64 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call89 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0))
  store i32 0, i32* %w2, align 4
  br label %sw.epilog.90

sw.epilog.90:                                     ; preds = %sw.default.88, %cond.end.86, %cond.end.75, %sw.bb.57, %if.end.56, %sw.bb.26, %sw.bb.23
  %65 = load i32, i32* %w2, align 4
  %cmp91 = icmp slt i32 8388607, %65
  br i1 %cmp91, label %cond.true.93, label %cond.false.94

cond.true.93:                                     ; preds = %sw.epilog.90
  br label %cond.end.95

cond.false.94:                                    ; preds = %sw.epilog.90
  %66 = load i32, i32* %w2, align 4
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.true.93
  %cond96 = phi i32 [ 8388607, %cond.true.93 ], [ %66, %cond.false.94 ]
  store i32 %cond96, i32* %res, align 4
  %67 = load i32, i32* %res, align 4
  ret i32 %67
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
