; ModuleID = './MultiSource.Benchmarks.MiBench/62.consumer-typeset.z32.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
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
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"word %s is too long\00", align 1
@xx_res = external global %union.rec*, align 8
@xx_hold = external global %union.rec*, align 8
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@zz_free = external global [0 x %union.rec*], align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Next:\00", align 1

; Function Attrs: nounwind uwtable
define %union.rec* @Next(%union.rec* %x, i32 %inc, i32* %done) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %inc.addr = alloca i32, align 4
  %done.addr = alloca i32*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %n = alloca i32, align 4
  %len = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %inc, i32* %inc.addr, align 4
  store i32* %done, i32** %done.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 94, label %sw.bb.353
    i32 95, label %sw.bb.353
    i32 1, label %sw.bb.353
    i32 2, label %sw.bb.353
    i32 5, label %sw.bb.353
    i32 4, label %sw.bb.353
    i32 6, label %sw.bb.353
    i32 7, label %sw.bb.353
    i32 44, label %sw.bb.353
    i32 42, label %sw.bb.353
    i32 43, label %sw.bb.353
    i32 45, label %sw.bb.353
    i32 46, label %sw.bb.353
    i32 21, label %sw.bb.353
    i32 23, label %sw.bb.353
    i32 20, label %sw.bb.354
    i32 22, label %sw.bb.354
    i32 24, label %sw.bb.354
    i32 25, label %sw.bb.354
    i32 26, label %sw.bb.354
    i32 27, label %sw.bb.354
    i32 28, label %sw.bb.354
    i32 29, label %sw.bb.354
    i32 36, label %sw.bb.354
    i32 37, label %sw.bb.354
    i32 38, label %sw.bb.354
    i32 39, label %sw.bb.354
    i32 40, label %sw.bb.354
    i32 41, label %sw.bb.354
    i32 47, label %sw.bb.354
    i32 48, label %sw.bb.354
    i32 49, label %sw.bb.354
    i32 30, label %sw.bb.354
    i32 31, label %sw.bb.354
    i32 32, label %sw.bb.354
    i32 33, label %sw.bb.354
    i32 50, label %sw.bb.354
    i32 51, label %sw.bb.354
    i32 34, label %sw.bb.354
    i32 35, label %sw.bb.354
    i32 9, label %sw.bb.354
    i32 96, label %sw.bb.354
    i32 97, label %sw.bb.354
    i32 98, label %sw.bb.354
    i32 99, label %sw.bb.354
    i32 17, label %sw.bb.379
    i32 16, label %sw.bb.379
    i32 15, label %sw.bb.379
    i32 18, label %sw.bb.379
    i32 19, label %sw.bb.379
  ]

sw.bb:                                            ; preds = %entry, %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #4
  %conv3 = trunc i64 %call to i32
  store i32 %conv3, i32* %len, align 4
  %3 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %4 = load i32, i32* %r, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %land.rhs, label %land.end.18

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %r, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %union.rec*, %union.rec** %x.addr, align 8
  %os15 = bitcast %union.rec* %6 to %struct.word_type*
  %ostring6 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %ostring6, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp sge i32 %conv7, 48
  br i1 %cmp8, label %land.rhs.10, label %land.end

land.rhs.10:                                      ; preds = %land.rhs
  %8 = load i32, i32* %r, align 4
  %idxprom11 = sext i32 %8 to i64
  %9 = load %union.rec*, %union.rec** %x.addr, align 8
  %os112 = bitcast %union.rec* %9 to %struct.word_type*
  %ostring13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 4
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring13, i32 0, i64 %idxprom11
  %10 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %10 to i32
  %cmp16 = icmp sle i32 %conv15, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs.10, %land.rhs
  %11 = phi i1 [ false, %land.rhs ], [ %cmp16, %land.rhs.10 ]
  %lnot = xor i1 %11, true
  br label %land.end.18

land.end.18:                                      ; preds = %land.end, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %lnot, %land.end ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.18
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %r, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.18
  %14 = load i32, i32* %r, align 4
  %cmp19 = icmp slt i32 %14, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %sw.epilog

if.end:                                           ; preds = %for.end
  %15 = load i32, i32* %r, align 4
  %sub21 = sub nsw i32 %15, 1
  store i32 %sub21, i32* %l, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.44, %if.end
  %16 = load i32, i32* %l, align 4
  %cmp23 = icmp sge i32 %16, 0
  br i1 %cmp23, label %land.rhs.25, label %land.end.42

land.rhs.25:                                      ; preds = %for.cond.22
  %17 = load i32, i32* %l, align 4
  %idxprom26 = sext i32 %17 to i64
  %18 = load %union.rec*, %union.rec** %x.addr, align 8
  %os127 = bitcast %union.rec* %18 to %struct.word_type*
  %ostring28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 4
  %arrayidx29 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring28, i32 0, i64 %idxprom26
  %19 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %19 to i32
  %cmp31 = icmp sge i32 %conv30, 48
  br i1 %cmp31, label %land.rhs.33, label %land.end.41

land.rhs.33:                                      ; preds = %land.rhs.25
  %20 = load i32, i32* %l, align 4
  %idxprom34 = sext i32 %20 to i64
  %21 = load %union.rec*, %union.rec** %x.addr, align 8
  %os135 = bitcast %union.rec* %21 to %struct.word_type*
  %ostring36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 4
  %arrayidx37 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring36, i32 0, i64 %idxprom34
  %22 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %22 to i32
  %cmp39 = icmp sle i32 %conv38, 57
  br label %land.end.41

land.end.41:                                      ; preds = %land.rhs.33, %land.rhs.25
  %23 = phi i1 [ false, %land.rhs.25 ], [ %cmp39, %land.rhs.33 ]
  br label %land.end.42

land.end.42:                                      ; preds = %land.end.41, %for.cond.22
  %24 = phi i1 [ false, %for.cond.22 ], [ %23, %land.end.41 ]
  br i1 %24, label %for.body.43, label %for.end.46

for.body.43:                                      ; preds = %land.end.42
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.43
  %25 = load i32, i32* %l, align 4
  %dec45 = add nsw i32 %25, -1
  store i32 %dec45, i32* %l, align 4
  br label %for.cond.22

for.end.46:                                       ; preds = %land.end.42
  %26 = load i32, i32* %l, align 4
  %add = add nsw i32 %26, 1
  %idxprom47 = sext i32 %add to i64
  %27 = load %union.rec*, %union.rec** %x.addr, align 8
  %os148 = bitcast %union.rec* %27 to %struct.word_type*
  %ostring49 = getelementptr inbounds %struct.word_type, %struct.word_type* %os148, i32 0, i32 4
  %arrayidx50 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring49, i32 0, i64 %idxprom47
  %call51 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %n) #5
  %28 = load i32, i32* %l, align 4
  %add52 = add nsw i32 %28, 1
  %idxprom53 = sext i32 %add52 to i64
  %29 = load %union.rec*, %union.rec** %x.addr, align 8
  %os154 = bitcast %union.rec* %29 to %struct.word_type*
  %ostring55 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 4
  %arrayidx56 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring55, i32 0, i64 %idxprom53
  store i8 0, i8* %arrayidx56, align 1
  %arraydecay57 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %x.addr, align 8
  %os158 = bitcast %union.rec* %30 to %struct.word_type*
  %ostring59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 4
  %arraydecay60 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring59, i32 0, i32 0
  %call61 = call i8* @strcpy(i8* %arraydecay57, i8* %arraydecay60) #5
  %arraydecay62 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %31 = load i32, i32* %n, align 4
  %32 = load i32, i32* %inc.addr, align 4
  %add63 = add nsw i32 %31, %32
  %call64 = call i8* @StringInt(i32 %add63)
  %call65 = call i8* @strcat(i8* %arraydecay62, i8* %call64) #5
  %arraydecay66 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %33 = load i32, i32* %r, align 4
  %add67 = add nsw i32 %33, 1
  %idxprom68 = sext i32 %add67 to i64
  %34 = load %union.rec*, %union.rec** %x.addr, align 8
  %os169 = bitcast %union.rec* %34 to %struct.word_type*
  %ostring70 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 4
  %arrayidx71 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring70, i32 0, i64 %idxprom68
  %call72 = call i8* @strcat(i8* %arraydecay66, i8* %arrayidx71) #5
  %arraydecay73 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call74 = call i64 @strlen(i8* %arraydecay73) #4
  %cmp75 = icmp uge i64 %call74, 512
  br i1 %cmp75, label %if.then.77, label %if.end.82

if.then.77:                                       ; preds = %for.end.46
  %35 = load %union.rec*, %union.rec** %x.addr, align 8
  %os178 = bitcast %union.rec* %35 to %struct.word_type*
  %ou179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou179 to %struct.FILE_POS*
  %arraydecay80 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call81 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 32, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* %arraydecay80)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.77, %for.end.46
  %36 = load %union.rec*, %union.rec** %x.addr, align 8
  %os183 = bitcast %union.rec* %36 to %struct.word_type*
  %ou184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os183, i32 0, i32 1
  %os1185 = bitcast %union.FIRST_UNION* %ou184 to %struct.anon*
  %otype86 = getelementptr inbounds %struct.anon, %struct.anon* %os1185, i32 0, i32 0
  %37 = load i8, i8* %otype86, align 1
  %conv87 = zext i8 %37 to i32
  %arraydecay88 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %38 = load %union.rec*, %union.rec** %x.addr, align 8
  %os189 = bitcast %union.rec* %38 to %struct.word_type*
  %ou190 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 1
  %ofpos91 = bitcast %union.FIRST_UNION* %ou190 to %struct.FILE_POS*
  %call92 = call %union.rec* @MakeWord(i32 %conv87, i8* %arraydecay88, %struct.FILE_POS* %ofpos91)
  store %union.rec* %call92, %union.rec** %y, align 8
  %39 = load %union.rec*, %union.rec** %x.addr, align 8
  %os193 = bitcast %union.rec* %39 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %40 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %40, align 4
  %bf.clear = and i32 %bf.load, 4095
  %41 = load %union.rec*, %union.rec** %y, align 8
  %os194 = bitcast %union.rec* %41 to %struct.word_type*
  %ou295 = getelementptr inbounds %struct.word_type, %struct.word_type* %os194, i32 0, i32 2
  %os2296 = bitcast %union.SECOND_UNION* %ou295 to %struct.anon.1*
  %42 = bitcast %struct.anon.1* %os2296 to i32*
  %bf.load97 = load i32, i32* %42, align 4
  %bf.value = and i32 %bf.clear, 4095
  %bf.clear98 = and i32 %bf.load97, -4096
  %bf.set = or i32 %bf.clear98, %bf.value
  store i32 %bf.set, i32* %42, align 4
  %43 = load %union.rec*, %union.rec** %x.addr, align 8
  %os199 = bitcast %union.rec* %43 to %struct.word_type*
  %ou2100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os199, i32 0, i32 2
  %os22101 = bitcast %union.SECOND_UNION* %ou2100 to %struct.anon.1*
  %44 = bitcast %struct.anon.1* %os22101 to i32*
  %bf.load102 = load i32, i32* %44, align 4
  %bf.lshr = lshr i32 %bf.load102, 12
  %bf.clear103 = and i32 %bf.lshr, 1023
  %45 = load %union.rec*, %union.rec** %y, align 8
  %os1104 = bitcast %union.rec* %45 to %struct.word_type*
  %ou2105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1104, i32 0, i32 2
  %os22106 = bitcast %union.SECOND_UNION* %ou2105 to %struct.anon.1*
  %46 = bitcast %struct.anon.1* %os22106 to i32*
  %bf.load107 = load i32, i32* %46, align 4
  %bf.value108 = and i32 %bf.clear103, 1023
  %bf.shl = shl i32 %bf.value108, 12
  %bf.clear109 = and i32 %bf.load107, -4190209
  %bf.set110 = or i32 %bf.clear109, %bf.shl
  store i32 %bf.set110, i32* %46, align 4
  %47 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1111 = bitcast %union.rec* %47 to %struct.word_type*
  %ou2112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 2
  %os22113 = bitcast %union.SECOND_UNION* %ou2112 to %struct.anon.1*
  %48 = bitcast %struct.anon.1* %os22113 to i32*
  %bf.load114 = load i32, i32* %48, align 4
  %bf.lshr115 = lshr i32 %bf.load114, 22
  %bf.clear116 = and i32 %bf.lshr115, 1
  %49 = load %union.rec*, %union.rec** %y, align 8
  %os1117 = bitcast %union.rec* %49 to %struct.word_type*
  %ou2118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 2
  %os22119 = bitcast %union.SECOND_UNION* %ou2118 to %struct.anon.1*
  %50 = bitcast %struct.anon.1* %os22119 to i32*
  %bf.load120 = load i32, i32* %50, align 4
  %bf.value121 = and i32 %bf.clear116, 1
  %bf.shl122 = shl i32 %bf.value121, 22
  %bf.clear123 = and i32 %bf.load120, -4194305
  %bf.set124 = or i32 %bf.clear123, %bf.shl122
  store i32 %bf.set124, i32* %50, align 4
  %51 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1125 = bitcast %union.rec* %51 to %struct.word_type*
  %ou2126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 2
  %os22127 = bitcast %union.SECOND_UNION* %ou2126 to %struct.anon.1*
  %52 = bitcast %struct.anon.1* %os22127 to i32*
  %bf.load128 = load i32, i32* %52, align 4
  %bf.lshr129 = lshr i32 %bf.load128, 23
  %bf.clear130 = and i32 %bf.lshr129, 63
  %53 = load %union.rec*, %union.rec** %y, align 8
  %os1131 = bitcast %union.rec* %53 to %struct.word_type*
  %ou2132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1131, i32 0, i32 2
  %os22133 = bitcast %union.SECOND_UNION* %ou2132 to %struct.anon.1*
  %54 = bitcast %struct.anon.1* %os22133 to i32*
  %bf.load134 = load i32, i32* %54, align 4
  %bf.value135 = and i32 %bf.clear130, 63
  %bf.shl136 = shl i32 %bf.value135, 23
  %bf.clear137 = and i32 %bf.load134, -528482305
  %bf.set138 = or i32 %bf.clear137, %bf.shl136
  store i32 %bf.set138, i32* %54, align 4
  %55 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1139 = bitcast %union.rec* %55 to %struct.word_type*
  %ou2140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1139, i32 0, i32 2
  %os22141 = bitcast %union.SECOND_UNION* %ou2140 to %struct.anon.1*
  %56 = bitcast %struct.anon.1* %os22141 to i32*
  %bf.load142 = load i32, i32* %56, align 4
  %bf.lshr143 = lshr i32 %bf.load142, 31
  %57 = load %union.rec*, %union.rec** %y, align 8
  %os1144 = bitcast %union.rec* %57 to %struct.word_type*
  %ou2145 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1144, i32 0, i32 2
  %os22146 = bitcast %union.SECOND_UNION* %ou2145 to %struct.anon.1*
  %58 = bitcast %struct.anon.1* %os22146 to i32*
  %bf.load147 = load i32, i32* %58, align 4
  %bf.value148 = and i32 %bf.lshr143, 1
  %bf.shl149 = shl i32 %bf.value148, 31
  %bf.clear150 = and i32 %bf.load147, 2147483647
  %bf.set151 = or i32 %bf.clear150, %bf.shl149
  store i32 %bf.set151, i32* %58, align 4
  %59 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1152 = bitcast %union.rec* %59 to %struct.word_type*
  %ou2153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 2
  %os22154 = bitcast %union.SECOND_UNION* %ou2153 to %struct.anon.1*
  %60 = bitcast %struct.anon.1* %os22154 to i32*
  %bf.load155 = load i32, i32* %60, align 4
  %bf.lshr156 = lshr i32 %bf.load155, 29
  %bf.clear157 = and i32 %bf.lshr156, 3
  %61 = load %union.rec*, %union.rec** %y, align 8
  %os1158 = bitcast %union.rec* %61 to %struct.word_type*
  %ou2159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1158, i32 0, i32 2
  %os22160 = bitcast %union.SECOND_UNION* %ou2159 to %struct.anon.1*
  %62 = bitcast %struct.anon.1* %os22160 to i32*
  %bf.load161 = load i32, i32* %62, align 4
  %bf.value162 = and i32 %bf.clear157, 3
  %bf.shl163 = shl i32 %bf.value162, 29
  %bf.clear164 = and i32 %bf.load161, -1610612737
  %bf.set165 = or i32 %bf.clear164, %bf.shl163
  store i32 %bf.set165, i32* %62, align 4
  %63 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %63, %union.rec** @xx_res, align 8
  %64 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %64, %union.rec** @xx_hold, align 8
  %65 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %65, %union.rec** @zz_hold, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1166 = bitcast %union.rec* %66 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1166, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx167, i32 0, i32 1
  %67 = load %union.rec*, %union.rec** %osucc, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp168 = icmp eq %union.rec* %67, %68
  br i1 %cmp168, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.82
  br label %cond.end

cond.false:                                       ; preds = %if.end.82
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1170 = bitcast %union.rec* %69 to %struct.word_type*
  %olist171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist171, i32 0, i64 1
  %osucc173 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx172, i32 0, i32 1
  %70 = load %union.rec*, %union.rec** %osucc173, align 8
  store %union.rec* %70, %union.rec** @zz_res, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1174 = bitcast %union.rec* %71 to %struct.word_type*
  %olist175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1174, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist175, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx176, i32 0, i32 0
  %72 = load %union.rec*, %union.rec** %opred, align 8
  %73 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1177 = bitcast %union.rec* %73 to %struct.word_type*
  %olist178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1177, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist178, i32 0, i64 1
  %opred180 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx179, i32 0, i32 0
  store %union.rec* %72, %union.rec** %opred180, align 8
  %74 = load %union.rec*, %union.rec** @zz_res, align 8
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1181 = bitcast %union.rec* %75 to %struct.word_type*
  %olist182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1181, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist182, i32 0, i64 1
  %opred184 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx183, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %opred184, align 8
  %os1186 = bitcast %union.rec* %76 to %struct.word_type*
  %olist187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1186, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist187, i32 0, i64 1
  %osucc189 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx188, i32 0, i32 1
  store %union.rec* %74, %union.rec** %osucc189, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1190 = bitcast %union.rec* %78 to %struct.word_type*
  %olist191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1190, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist191, i32 0, i64 1
  %osucc193 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx192, i32 0, i32 1
  store %union.rec* %77, %union.rec** %osucc193, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1194 = bitcast %union.rec* %79 to %struct.word_type*
  %olist195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1194, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist195, i32 0, i64 1
  %opred197 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx196, i32 0, i32 0
  store %union.rec* %77, %union.rec** %opred197, align 8
  %80 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %80, %cond.false ]
  store %union.rec* %cond, %union.rec** @xx_tmp, align 8
  %81 = load %union.rec*, %union.rec** @xx_res, align 8
  store %union.rec* %81, %union.rec** @zz_res, align 8
  %82 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %82, %union.rec** @zz_hold, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp198 = icmp eq %union.rec* %83, null
  br i1 %cmp198, label %cond.true.200, label %cond.false.201

cond.true.200:                                    ; preds = %cond.end
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.236

cond.false.201:                                   ; preds = %cond.end
  %85 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp202 = icmp eq %union.rec* %85, null
  br i1 %cmp202, label %cond.true.204, label %cond.false.205

cond.true.204:                                    ; preds = %cond.false.201
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.234

cond.false.205:                                   ; preds = %cond.false.201
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1206 = bitcast %union.rec* %87 to %struct.word_type*
  %olist207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1206, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist207, i32 0, i64 1
  %opred209 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx208, i32 0, i32 0
  %88 = load %union.rec*, %union.rec** %opred209, align 8
  store %union.rec* %88, %union.rec** @zz_tmp, align 8
  %89 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1210 = bitcast %union.rec* %89 to %struct.word_type*
  %olist211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1210, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist211, i32 0, i64 1
  %opred213 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx212, i32 0, i32 0
  %90 = load %union.rec*, %union.rec** %opred213, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1214 = bitcast %union.rec* %91 to %struct.word_type*
  %olist215 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist215, i32 0, i64 1
  %opred217 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx216, i32 0, i32 0
  store %union.rec* %90, %union.rec** %opred217, align 8
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %93 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1218 = bitcast %union.rec* %93 to %struct.word_type*
  %olist219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1218, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist219, i32 0, i64 1
  %opred221 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx220, i32 0, i32 0
  %94 = load %union.rec*, %union.rec** %opred221, align 8
  %os1222 = bitcast %union.rec* %94 to %struct.word_type*
  %olist223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1222, i32 0, i32 0
  %arrayidx224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist223, i32 0, i64 1
  %osucc225 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx224, i32 0, i32 1
  store %union.rec* %92, %union.rec** %osucc225, align 8
  %95 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %96 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1226 = bitcast %union.rec* %96 to %struct.word_type*
  %olist227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1226, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist227, i32 0, i64 1
  %opred229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx228, i32 0, i32 0
  store %union.rec* %95, %union.rec** %opred229, align 8
  %97 = load %union.rec*, %union.rec** @zz_res, align 8
  %98 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1230 = bitcast %union.rec* %98 to %struct.word_type*
  %olist231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist231, i32 0, i64 1
  %osucc233 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx232, i32 0, i32 1
  store %union.rec* %97, %union.rec** %osucc233, align 8
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.205, %cond.true.204
  %cond235 = phi %union.rec* [ %86, %cond.true.204 ], [ %97, %cond.false.205 ]
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.end.234, %cond.true.200
  %cond237 = phi %union.rec* [ %84, %cond.true.200 ], [ %cond235, %cond.end.234 ]
  %99 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %99, %union.rec** @zz_hold, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1238 = bitcast %union.rec* %100 to %struct.word_type*
  %olist239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist239, i32 0, i64 0
  %osucc241 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx240, i32 0, i32 1
  %101 = load %union.rec*, %union.rec** %osucc241, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp242 = icmp eq %union.rec* %101, %102
  br i1 %cmp242, label %cond.true.244, label %cond.false.245

cond.true.244:                                    ; preds = %cond.end.236
  br label %cond.end.274

cond.false.245:                                   ; preds = %cond.end.236
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1246 = bitcast %union.rec* %103 to %struct.word_type*
  %olist247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1246, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist247, i32 0, i64 0
  %osucc249 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx248, i32 0, i32 1
  %104 = load %union.rec*, %union.rec** %osucc249, align 8
  store %union.rec* %104, %union.rec** @zz_res, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1250 = bitcast %union.rec* %105 to %struct.word_type*
  %olist251 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1250, i32 0, i32 0
  %arrayidx252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist251, i32 0, i64 0
  %opred253 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx252, i32 0, i32 0
  %106 = load %union.rec*, %union.rec** %opred253, align 8
  %107 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1254 = bitcast %union.rec* %107 to %struct.word_type*
  %olist255 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1254, i32 0, i32 0
  %arrayidx256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist255, i32 0, i64 0
  %opred257 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx256, i32 0, i32 0
  store %union.rec* %106, %union.rec** %opred257, align 8
  %108 = load %union.rec*, %union.rec** @zz_res, align 8
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1258 = bitcast %union.rec* %109 to %struct.word_type*
  %olist259 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1258, i32 0, i32 0
  %arrayidx260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist259, i32 0, i64 0
  %opred261 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx260, i32 0, i32 0
  %110 = load %union.rec*, %union.rec** %opred261, align 8
  %os1262 = bitcast %union.rec* %110 to %struct.word_type*
  %olist263 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1262, i32 0, i32 0
  %arrayidx264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist263, i32 0, i64 0
  %osucc265 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx264, i32 0, i32 1
  store %union.rec* %108, %union.rec** %osucc265, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1266 = bitcast %union.rec* %112 to %struct.word_type*
  %olist267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1266, i32 0, i32 0
  %arrayidx268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist267, i32 0, i64 0
  %osucc269 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx268, i32 0, i32 1
  store %union.rec* %111, %union.rec** %osucc269, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1270 = bitcast %union.rec* %113 to %struct.word_type*
  %olist271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1270, i32 0, i32 0
  %arrayidx272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist271, i32 0, i64 0
  %opred273 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx272, i32 0, i32 0
  store %union.rec* %111, %union.rec** %opred273, align 8
  %114 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.274

cond.end.274:                                     ; preds = %cond.false.245, %cond.true.244
  %cond275 = phi %union.rec* [ null, %cond.true.244 ], [ %114, %cond.false.245 ]
  store %union.rec* %cond275, %union.rec** @xx_tmp, align 8
  %115 = load %union.rec*, %union.rec** @xx_res, align 8
  store %union.rec* %115, %union.rec** @zz_res, align 8
  %116 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %116, %union.rec** @zz_hold, align 8
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp276 = icmp eq %union.rec* %117, null
  br i1 %cmp276, label %cond.true.278, label %cond.false.279

cond.true.278:                                    ; preds = %cond.end.274
  %118 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.314

cond.false.279:                                   ; preds = %cond.end.274
  %119 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp280 = icmp eq %union.rec* %119, null
  br i1 %cmp280, label %cond.true.282, label %cond.false.283

cond.true.282:                                    ; preds = %cond.false.279
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.312

cond.false.283:                                   ; preds = %cond.false.279
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1284 = bitcast %union.rec* %121 to %struct.word_type*
  %olist285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1284, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist285, i32 0, i64 0
  %opred287 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx286, i32 0, i32 0
  %122 = load %union.rec*, %union.rec** %opred287, align 8
  store %union.rec* %122, %union.rec** @zz_tmp, align 8
  %123 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1288 = bitcast %union.rec* %123 to %struct.word_type*
  %olist289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1288, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist289, i32 0, i64 0
  %opred291 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx290, i32 0, i32 0
  %124 = load %union.rec*, %union.rec** %opred291, align 8
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1292 = bitcast %union.rec* %125 to %struct.word_type*
  %olist293 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1292, i32 0, i32 0
  %arrayidx294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist293, i32 0, i64 0
  %opred295 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx294, i32 0, i32 0
  store %union.rec* %124, %union.rec** %opred295, align 8
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %127 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1296 = bitcast %union.rec* %127 to %struct.word_type*
  %olist297 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1296, i32 0, i32 0
  %arrayidx298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist297, i32 0, i64 0
  %opred299 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx298, i32 0, i32 0
  %128 = load %union.rec*, %union.rec** %opred299, align 8
  %os1300 = bitcast %union.rec* %128 to %struct.word_type*
  %olist301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1300, i32 0, i32 0
  %arrayidx302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist301, i32 0, i64 0
  %osucc303 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx302, i32 0, i32 1
  store %union.rec* %126, %union.rec** %osucc303, align 8
  %129 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %130 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1304 = bitcast %union.rec* %130 to %struct.word_type*
  %olist305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1304, i32 0, i32 0
  %arrayidx306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist305, i32 0, i64 0
  %opred307 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx306, i32 0, i32 0
  store %union.rec* %129, %union.rec** %opred307, align 8
  %131 = load %union.rec*, %union.rec** @zz_res, align 8
  %132 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1308 = bitcast %union.rec* %132 to %struct.word_type*
  %olist309 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1308, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist309, i32 0, i64 0
  %osucc311 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx310, i32 0, i32 1
  store %union.rec* %131, %union.rec** %osucc311, align 8
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.false.283, %cond.true.282
  %cond313 = phi %union.rec* [ %120, %cond.true.282 ], [ %131, %cond.false.283 ]
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.end.312, %cond.true.278
  %cond315 = phi %union.rec* [ %118, %cond.true.278 ], [ %cond313, %cond.end.312 ]
  %133 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %133, %union.rec** @zz_hold, align 8
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %134, %union.rec** @zz_hold, align 8
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1316 = bitcast %union.rec* %135 to %struct.word_type*
  %ou1317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1316, i32 0, i32 1
  %os11318 = bitcast %union.FIRST_UNION* %ou1317 to %struct.anon*
  %otype319 = getelementptr inbounds %struct.anon, %struct.anon* %os11318, i32 0, i32 0
  %136 = load i8, i8* %otype319, align 1
  %conv320 = zext i8 %136 to i32
  %cmp321 = icmp eq i32 %conv320, 11
  br i1 %cmp321, label %cond.true.330, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.314
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1323 = bitcast %union.rec* %137 to %struct.word_type*
  %ou1324 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1323, i32 0, i32 1
  %os11325 = bitcast %union.FIRST_UNION* %ou1324 to %struct.anon*
  %otype326 = getelementptr inbounds %struct.anon, %struct.anon* %os11325, i32 0, i32 0
  %138 = load i8, i8* %otype326, align 1
  %conv327 = zext i8 %138 to i32
  %cmp328 = icmp eq i32 %conv327, 12
  br i1 %cmp328, label %cond.true.330, label %cond.false.335

cond.true.330:                                    ; preds = %lor.lhs.false, %cond.end.314
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1331 = bitcast %union.rec* %139 to %struct.word_type*
  %ou1332 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1331, i32 0, i32 1
  %os11333 = bitcast %union.FIRST_UNION* %ou1332 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11333, i32 0, i32 1
  %140 = load i8, i8* %orec_size, align 1
  %conv334 = zext i8 %140 to i32
  br label %cond.end.343

cond.false.335:                                   ; preds = %lor.lhs.false
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1336 = bitcast %union.rec* %141 to %struct.word_type*
  %ou1337 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1336, i32 0, i32 1
  %os11338 = bitcast %union.FIRST_UNION* %ou1337 to %struct.anon*
  %otype339 = getelementptr inbounds %struct.anon, %struct.anon* %os11338, i32 0, i32 0
  %142 = load i8, i8* %otype339, align 1
  %idxprom340 = zext i8 %142 to i64
  %arrayidx341 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom340
  %143 = load i8, i8* %arrayidx341, align 1
  %conv342 = zext i8 %143 to i32
  br label %cond.end.343

cond.end.343:                                     ; preds = %cond.false.335, %cond.true.330
  %cond344 = phi i32 [ %conv334, %cond.true.330 ], [ %conv342, %cond.false.335 ]
  store i32 %cond344, i32* @zz_size, align 4
  %144 = load i32, i32* @zz_size, align 4
  %idxprom345 = sext i32 %144 to i64
  %arrayidx346 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom345
  %145 = load %union.rec*, %union.rec** %arrayidx346, align 8
  %146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1347 = bitcast %union.rec* %146 to %struct.word_type*
  %olist348 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1347, i32 0, i32 0
  %arrayidx349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist348, i32 0, i64 0
  %opred350 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx349, i32 0, i32 0
  store %union.rec* %145, %union.rec** %opred350, align 8
  %147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %148 = load i32, i32* @zz_size, align 4
  %idxprom351 = sext i32 %148 to i64
  %arrayidx352 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom351
  store %union.rec* %147, %union.rec** %arrayidx352, align 8
  %149 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %149, %union.rec** %x.addr, align 8
  %150 = load i32*, i32** %done.addr, align 8
  store i32 1, i32* %150, align 4
  br label %sw.epilog

sw.bb.353:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.bb.354:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %151 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1355 = bitcast %union.rec* %151 to %struct.word_type*
  %olist356 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1355, i32 0, i32 0
  %arrayidx357 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist356, i32 0, i64 0
  %opred358 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx357, i32 0, i32 0
  %152 = load %union.rec*, %union.rec** %opred358, align 8
  %os1359 = bitcast %union.rec* %152 to %struct.word_type*
  %olist360 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1359, i32 0, i32 0
  %arrayidx361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist360, i32 0, i64 1
  %opred362 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx361, i32 0, i32 0
  %153 = load %union.rec*, %union.rec** %opred362, align 8
  store %union.rec* %153, %union.rec** %y, align 8
  br label %for.cond.363

for.cond.363:                                     ; preds = %for.inc.372, %sw.bb.354
  %154 = load %union.rec*, %union.rec** %y, align 8
  %os1364 = bitcast %union.rec* %154 to %struct.word_type*
  %ou1365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1364, i32 0, i32 1
  %os11366 = bitcast %union.FIRST_UNION* %ou1365 to %struct.anon*
  %otype367 = getelementptr inbounds %struct.anon, %struct.anon* %os11366, i32 0, i32 0
  %155 = load i8, i8* %otype367, align 1
  %conv368 = zext i8 %155 to i32
  %cmp369 = icmp eq i32 %conv368, 0
  br i1 %cmp369, label %for.body.371, label %for.end.377

for.body.371:                                     ; preds = %for.cond.363
  br label %for.inc.372

for.inc.372:                                      ; preds = %for.body.371
  %156 = load %union.rec*, %union.rec** %y, align 8
  %os1373 = bitcast %union.rec* %156 to %struct.word_type*
  %olist374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1373, i32 0, i32 0
  %arrayidx375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist374, i32 0, i64 1
  %opred376 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx375, i32 0, i32 0
  %157 = load %union.rec*, %union.rec** %opred376, align 8
  store %union.rec* %157, %union.rec** %y, align 8
  br label %for.cond.363

for.end.377:                                      ; preds = %for.cond.363
  %158 = load %union.rec*, %union.rec** %y, align 8
  %159 = load i32, i32* %inc.addr, align 4
  %160 = load i32*, i32** %done.addr, align 8
  %call378 = call %union.rec* @Next(%union.rec* %158, i32 %159, i32* %160)
  store %union.rec* %call378, %union.rec** %y, align 8
  br label %sw.epilog

sw.bb.379:                                        ; preds = %entry, %entry, %entry, %entry, %entry
  %161 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1380 = bitcast %union.rec* %161 to %struct.word_type*
  %olist381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1380, i32 0, i32 0
  %arrayidx382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist381, i32 0, i64 0
  %opred383 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx382, i32 0, i32 0
  %162 = load %union.rec*, %union.rec** %opred383, align 8
  store %union.rec* %162, %union.rec** %link, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.431, %if.then.422, %sw.bb.379
  %163 = load %union.rec*, %union.rec** %link, align 8
  %164 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp384 = icmp ne %union.rec* %163, %164
  br i1 %cmp384, label %land.rhs.386, label %land.end.388

land.rhs.386:                                     ; preds = %while.cond
  %165 = load i32*, i32** %done.addr, align 8
  %166 = load i32, i32* %165, align 4
  %tobool = icmp ne i32 %166, 0
  %lnot387 = xor i1 %tobool, true
  br label %land.end.388

land.end.388:                                     ; preds = %land.rhs.386, %while.cond
  %167 = phi i1 [ false, %while.cond ], [ %lnot387, %land.rhs.386 ]
  br i1 %167, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.388
  %168 = load %union.rec*, %union.rec** %link, align 8
  %os1389 = bitcast %union.rec* %168 to %struct.word_type*
  %olist390 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1389, i32 0, i32 0
  %arrayidx391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist390, i32 0, i64 1
  %opred392 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx391, i32 0, i32 0
  %169 = load %union.rec*, %union.rec** %opred392, align 8
  store %union.rec* %169, %union.rec** %y, align 8
  br label %for.cond.393

for.cond.393:                                     ; preds = %for.inc.402, %while.body
  %170 = load %union.rec*, %union.rec** %y, align 8
  %os1394 = bitcast %union.rec* %170 to %struct.word_type*
  %ou1395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1394, i32 0, i32 1
  %os11396 = bitcast %union.FIRST_UNION* %ou1395 to %struct.anon*
  %otype397 = getelementptr inbounds %struct.anon, %struct.anon* %os11396, i32 0, i32 0
  %171 = load i8, i8* %otype397, align 1
  %conv398 = zext i8 %171 to i32
  %cmp399 = icmp eq i32 %conv398, 0
  br i1 %cmp399, label %for.body.401, label %for.end.407

for.body.401:                                     ; preds = %for.cond.393
  br label %for.inc.402

for.inc.402:                                      ; preds = %for.body.401
  %172 = load %union.rec*, %union.rec** %y, align 8
  %os1403 = bitcast %union.rec* %172 to %struct.word_type*
  %olist404 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1403, i32 0, i32 0
  %arrayidx405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist404, i32 0, i64 1
  %opred406 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx405, i32 0, i32 0
  %173 = load %union.rec*, %union.rec** %opred406, align 8
  store %union.rec* %173, %union.rec** %y, align 8
  br label %for.cond.393

for.end.407:                                      ; preds = %for.cond.393
  %174 = load %union.rec*, %union.rec** %y, align 8
  %os1408 = bitcast %union.rec* %174 to %struct.word_type*
  %ou1409 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1408, i32 0, i32 1
  %os11410 = bitcast %union.FIRST_UNION* %ou1409 to %struct.anon*
  %otype411 = getelementptr inbounds %struct.anon, %struct.anon* %os11410, i32 0, i32 0
  %175 = load i8, i8* %otype411, align 1
  %conv412 = zext i8 %175 to i32
  %cmp413 = icmp sge i32 %conv412, 119
  br i1 %cmp413, label %land.lhs.true, label %if.end.423

land.lhs.true:                                    ; preds = %for.end.407
  %176 = load %union.rec*, %union.rec** %y, align 8
  %os1415 = bitcast %union.rec* %176 to %struct.word_type*
  %ou1416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1415, i32 0, i32 1
  %os11417 = bitcast %union.FIRST_UNION* %ou1416 to %struct.anon*
  %otype418 = getelementptr inbounds %struct.anon, %struct.anon* %os11417, i32 0, i32 0
  %177 = load i8, i8* %otype418, align 1
  %conv419 = zext i8 %177 to i32
  %cmp420 = icmp sle i32 %conv419, 138
  br i1 %cmp420, label %if.then.422, label %if.end.423

if.then.422:                                      ; preds = %land.lhs.true
  br label %while.cond

if.end.423:                                       ; preds = %land.lhs.true, %for.end.407
  %178 = load %union.rec*, %union.rec** %y, align 8
  %179 = load i32, i32* %inc.addr, align 4
  %180 = load i32*, i32** %done.addr, align 8
  %call424 = call %union.rec* @Next(%union.rec* %178, i32 %179, i32* %180)
  store %union.rec* %call424, %union.rec** %y, align 8
  %181 = load i32*, i32** %done.addr, align 8
  %182 = load i32, i32* %181, align 4
  %tobool425 = icmp ne i32 %182, 0
  br i1 %tobool425, label %if.end.431, label %if.then.426

if.then.426:                                      ; preds = %if.end.423
  %183 = load %union.rec*, %union.rec** %link, align 8
  %os1427 = bitcast %union.rec* %183 to %struct.word_type*
  %olist428 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1427, i32 0, i32 0
  %arrayidx429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist428, i32 0, i64 0
  %opred430 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx429, i32 0, i32 0
  %184 = load %union.rec*, %union.rec** %opred430, align 8
  store %union.rec* %184, %union.rec** %link, align 8
  br label %if.end.431

if.end.431:                                       ; preds = %if.then.426, %if.end.423
  br label %while.cond

while.end:                                        ; preds = %land.end.388
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %185 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %186 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1432 = bitcast %union.rec* %186 to %struct.word_type*
  %ou1433 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1432, i32 0, i32 1
  %os11434 = bitcast %union.FIRST_UNION* %ou1433 to %struct.anon*
  %otype435 = getelementptr inbounds %struct.anon, %struct.anon* %os11434, i32 0, i32 0
  %187 = load i8, i8* %otype435, align 1
  %conv436 = zext i8 %187 to i32
  %call437 = call i8* @Image(i32 %conv436)
  %call438 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* %call437)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %while.end, %for.end.377, %sw.bb.353, %cond.end.343, %if.then
  %188 = load %union.rec*, %union.rec** %x.addr, align 8
  ret %union.rec* %188
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare i8* @StringInt(i32) #3

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #3

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #3

declare i8* @Image(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
