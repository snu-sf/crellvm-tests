; ModuleID = './MultiSource.Benchmarks.MiBench/61.consumer-typeset.z42.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, [1 x %struct.coltab_rec] }
%struct.coltab_rec = type { %union.rec*, %union.rec* }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.14, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.2 }
%struct.anon.2 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.11, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.11 = type { %struct.GAP }
%union.anon.14 = type { %union.rec* }
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.0 = type { i8, i8, i32 }

@col_tab = internal global %struct.anon* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"%s ignored (illegal left parameter)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"@SetColour\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BackEnd = external global %struct.back_end_rec*, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"%s ignored (empty left parameter)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"nochange\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"ColourCommand: number\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"ran out of memory when enlarging colour table\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"too many colours (maximum is %d)\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8

; Function Attrs: nounwind uwtable
define void @ColourInit() #0 {
entry:
  %call = call %struct.anon* @ctab_new(i32 100)
  store %struct.anon* %call, %struct.anon** @col_tab, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.anon* @ctab_new(i32 %newsize) #0 {
entry:
  %newsize.addr = alloca i32, align 4
  %S = alloca %struct.anon*, align 8
  %i = alloca i32, align 4
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load i32, i32* %newsize.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 16
  %add = add i64 8, %mul
  %call = call noalias i8* @malloc(i64 %add) #4
  %1 = bitcast i8* %call to %struct.anon*
  store %struct.anon* %1, %struct.anon** %S, align 8
  %2 = load %struct.anon*, %struct.anon** %S, align 8
  %cmp = icmp eq %struct.anon* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 42, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0), i32 1, %struct.FILE_POS* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %newsize.addr, align 4
  %5 = load %struct.anon*, %struct.anon** %S, align 8
  %coltab_size = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  store i32 %4, i32* %coltab_size, align 4
  %6 = load %struct.anon*, %struct.anon** %S, align 8
  %coltab_count = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 1
  store i32 0, i32* %coltab_count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %newsize.addr, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.anon*, %struct.anon** %S, align 8
  %coltab = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %coltab, i32 0, i64 %idxprom
  %by_name_hash = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %arrayidx, i32 0, i32 1
  store %union.rec* null, %union.rec** %by_name_hash, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.anon*, %struct.anon** %S, align 8
  %coltab6 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %coltab6, i32 0, i64 %idxprom5
  %by_number = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %arrayidx7, i32 0, i32 0
  store %union.rec* null, %union.rec** %by_number, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.anon*, %struct.anon** %S, align 8
  ret %struct.anon* %14
}

; Function Attrs: nounwind uwtable
define void @ColourChange(%struct.STYLE* %style, %union.rec* %x) #0 {
entry:
  %style.addr = alloca %struct.STYLE*, align 8
  %x.addr = alloca %union.rec*, align 8
  %cname = alloca %union.rec*, align 8
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %os114 = bitcast %union.FIRST_UNION* %ou13 to %struct.anon.0*
  %otype5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os114, i32 0, i32 0
  %3 = load i8, i8* %otype5, align 1
  %conv6 = zext i8 %3 to i32
  %cmp7 = icmp eq i32 %conv6, 12
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %os19 = bitcast %union.rec* %4 to %struct.word_type*
  %ou110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou110 to %struct.FILE_POS*
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 42, i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.65

if.end:                                           ; preds = %lor.lhs.false, %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os111 = bitcast %union.rec* %5 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call12 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)) #5
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.end
  %6 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %colour_avail = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %6, i32 0, i32 9
  %7 = load i32, i32* %colour_avail, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.then.15
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %os117 = bitcast %union.rec* %8 to %struct.word_type*
  %ou118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 1
  %ofpos19 = bitcast %union.FIRST_UNION* %ou118 to %struct.FILE_POS*
  %call20 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 42, i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %if.then.15
  br label %if.end.65

if.end.22:                                        ; preds = %if.end
  %9 = load %union.rec*, %union.rec** %x.addr, align 8
  %os123 = bitcast %union.rec* %9 to %struct.word_type*
  %ostring24 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 4
  %arraydecay25 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring24, i32 0, i32 0
  %call26 = call i32 @strcmp(i8* %arraydecay25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)) #5
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.22
  br label %if.end.65

if.end.30:                                        ; preds = %if.end.22
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  %os131 = bitcast %union.rec* %10 to %struct.word_type*
  %ostring32 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 4
  %arraydecay33 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring32, i32 0, i32 0
  %11 = load %struct.anon*, %struct.anon** @col_tab, align 8
  %call34 = call %union.rec* @ctab_retrieve(i8* %arraydecay33, %struct.anon* %11)
  store %union.rec* %call34, %union.rec** %cname, align 8
  %12 = load %union.rec*, %union.rec** %cname, align 8
  %cmp35 = icmp eq %union.rec* %12, null
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.end.30
  %13 = load %union.rec*, %union.rec** %x.addr, align 8
  %os138 = bitcast %union.rec* %13 to %struct.word_type*
  %ou139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 1
  %os1140 = bitcast %union.FIRST_UNION* %ou139 to %struct.anon.0*
  %otype41 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1140, i32 0, i32 0
  %14 = load i8, i8* %otype41, align 1
  %conv42 = zext i8 %14 to i32
  %15 = load %union.rec*, %union.rec** %x.addr, align 8
  %os143 = bitcast %union.rec* %15 to %struct.word_type*
  %ostring44 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 4
  %arraydecay45 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring44, i32 0, i32 0
  %16 = load %union.rec*, %union.rec** %x.addr, align 8
  %os146 = bitcast %union.rec* %16 to %struct.word_type*
  %ou147 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 1
  %ofpos48 = bitcast %union.FIRST_UNION* %ou147 to %struct.FILE_POS*
  %call49 = call %union.rec* @MakeWord(i32 %conv42, i8* %arraydecay45, %struct.FILE_POS* %ofpos48)
  store %union.rec* %call49, %union.rec** %cname, align 8
  %17 = load %union.rec*, %union.rec** %cname, align 8
  call void @ctab_insert(%union.rec* %17, %struct.anon** @col_tab)
  %18 = load %union.rec*, %union.rec** %cname, align 8
  %os150 = bitcast %union.rec* %18 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %19 = bitcast %struct.anon.2* %os22 to i32*
  %bf.load = load i32, i32* %19, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 1023
  %20 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ocolour = getelementptr inbounds %struct.STYLE, %struct.STYLE* %20, i32 0, i32 4
  %bf.load51 = load i32, i32* %ocolour, align 4
  %bf.value = and i32 %bf.clear, 1023
  %bf.shl = shl i32 %bf.value, 12
  %bf.clear52 = and i32 %bf.load51, -4190209
  %bf.set = or i32 %bf.clear52, %bf.shl
  store i32 %bf.set, i32* %ocolour, align 4
  br label %if.end.65

if.else:                                          ; preds = %if.end.30
  %21 = load %union.rec*, %union.rec** %cname, align 8
  %os153 = bitcast %union.rec* %21 to %struct.word_type*
  %ou254 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 2
  %os2255 = bitcast %union.SECOND_UNION* %ou254 to %struct.anon.2*
  %22 = bitcast %struct.anon.2* %os2255 to i32*
  %bf.load56 = load i32, i32* %22, align 4
  %bf.lshr57 = lshr i32 %bf.load56, 12
  %bf.clear58 = and i32 %bf.lshr57, 1023
  %23 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ocolour59 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %23, i32 0, i32 4
  %bf.load60 = load i32, i32* %ocolour59, align 4
  %bf.value61 = and i32 %bf.clear58, 1023
  %bf.shl62 = shl i32 %bf.value61, 12
  %bf.clear63 = and i32 %bf.load60, -4190209
  %bf.set64 = or i32 %bf.clear63, %bf.shl62
  store i32 %bf.set64, i32* %ocolour59, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then, %if.end.21, %if.then.29, %if.else, %if.then.37
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %union.rec* @ctab_retrieve(i8* %str, %struct.anon* %S) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %str.addr = alloca i8*, align 8
  %S.addr = alloca %struct.anon*, align 8
  %x = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %pos = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store %struct.anon* %S, %struct.anon** %S.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %pos, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr1, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = zext i8 %6 to i32
  %7 = load i32, i32* %pos, align 4
  %add = add nsw i32 %7, %conv2
  store i32 %add, i32* %pos, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %pos, align 4
  %9 = load %struct.anon*, %struct.anon** %S.addr, align 8
  %coltab_size = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %10 = load i32, i32* %coltab_size, align 4
  %rem = srem i32 %8, %10
  store i32 %rem, i32* %pos, align 4
  %11 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.anon*, %struct.anon** %S.addr, align 8
  %coltab = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %coltab, i32 0, i64 %idxprom
  %by_name_hash = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %arrayidx, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %by_name_hash, align 8
  store %union.rec* %13, %union.rec** %x, align 8
  %14 = load %union.rec*, %union.rec** %x, align 8
  %cmp = icmp eq %union.rec* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store %union.rec* null, %union.rec** %retval
  br label %return

if.end:                                           ; preds = %while.end
  %15 = load %union.rec*, %union.rec** %x, align 8
  %os1 = bitcast %union.rec* %15 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4, i32 0, i32 1
  %16 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %16, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.end
  %17 = load %union.rec*, %union.rec** %link, align 8
  %18 = load %union.rec*, %union.rec** %x, align 8
  %cmp5 = icmp ne %union.rec* %17, %18
  br i1 %cmp5, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %19 = load %union.rec*, %union.rec** %link, align 8
  %os17 = bitcast %union.rec* %19 to %struct.word_type*
  %olist8 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx9, i32 0, i32 0
  %20 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %20, %union.rec** %y, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %21 = load %union.rec*, %union.rec** %y, align 8
  %os111 = bitcast %union.rec* %21 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  %22 = load i8, i8* %otype, align 1
  %conv12 = zext i8 %22 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.10
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %23 = load %union.rec*, %union.rec** %y, align 8
  %os116 = bitcast %union.rec* %23 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 1
  %opred19 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %opred19, align 8
  store %union.rec* %24, %union.rec** %y, align 8
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %25 = load i8*, i8** %str.addr, align 8
  %26 = load %union.rec*, %union.rec** %y, align 8
  %os120 = bitcast %union.rec* %26 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i32 @strcmp(i8* %25, i8* %arraydecay) #5
  %cmp21 = icmp eq i32 %call, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.end
  %27 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %27, %union.rec** %retval
  br label %return

if.end.24:                                        ; preds = %for.end
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %28 = load %union.rec*, %union.rec** %link, align 8
  %os126 = bitcast %union.rec* %28 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 0
  %osucc29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 1
  %29 = load %union.rec*, %union.rec** %osucc29, align 8
  store %union.rec* %29, %union.rec** %link, align 8
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  store %union.rec* null, %union.rec** %retval
  br label %return

return:                                           ; preds = %for.end.30, %if.then.23, %if.then
  %30 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %30
}

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define internal void @ctab_insert(%union.rec* %x, %struct.anon** %S) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %S.addr = alloca %struct.anon**, align 8
  %pos = alloca i32, align 4
  %num = alloca i32, align 4
  %p = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.anon** %S, %struct.anon*** %S.addr, align 8
  %0 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %1 = load %struct.anon*, %struct.anon** %0, align 8
  %coltab_count = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 1
  %2 = load i32, i32* %coltab_count, align 4
  %3 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %4 = load %struct.anon*, %struct.anon** %3, align 8
  %coltab_size = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %5 = load i32, i32* %coltab_size, align 4
  %sub = sub nsw i32 %5, 1
  %cmp = icmp eq i32 %2, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %7 = load %struct.anon*, %struct.anon** %6, align 8
  %8 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %9 = load %struct.anon*, %struct.anon** %8, align 8
  %coltab_size1 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %10 = load i32, i32* %coltab_size1, align 4
  %mul = mul nsw i32 2, %10
  %call = call %struct.anon* @ctab_rehash(%struct.anon* %7, i32 %mul)
  %11 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  store %struct.anon* %call, %struct.anon** %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %13 = load %struct.anon*, %struct.anon** %12, align 8
  %coltab_count2 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %14 = load i32, i32* %coltab_count2, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %coltab_count2, align 4
  store i32 %inc, i32* %num, align 4
  %15 = load i32, i32* %num, align 4
  %cmp3 = icmp sgt i32 %15, 4096
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %16 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %16 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %call5 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 42, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i32 4096)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %17 = load %union.rec*, %union.rec** %x.addr, align 8
  %os17 = bitcast %union.rec* %17 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %conv = zext i8 %19 to i32
  store i32 %conv, i32* %pos, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.6
  %20 = load i8*, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  %tobool = icmp ne i8 %21, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %conv9 = zext i8 %23 to i32
  %24 = load i32, i32* %pos, align 4
  %add = add nsw i32 %24, %conv9
  store i32 %add, i32* %pos, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i32, i32* %pos, align 4
  %26 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %27 = load %struct.anon*, %struct.anon** %26, align 8
  %coltab_size10 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 0
  %28 = load i32, i32* %coltab_size10, align 4
  %rem = srem i32 %25, %28
  store i32 %rem, i32* %pos, align 4
  %29 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %31 = load %struct.anon*, %struct.anon** %30, align 8
  %coltab = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %coltab, i32 0, i64 %idxprom
  %by_name_hash = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %arrayidx, i32 0, i32 1
  %32 = load %union.rec*, %union.rec** %by_name_hash, align 8
  %cmp11 = icmp eq %union.rec* %32, null
  br i1 %cmp11, label %if.then.13, label %if.end.56

if.then.13:                                       ; preds = %while.end
  %33 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv14 = zext i8 %33 to i32
  store i32 %conv14, i32* @zz_size, align 4
  %conv15 = sext i32 %conv14 to i64
  %cmp16 = icmp uge i64 %conv15, 265
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.13
  %34 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call19 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %34)
  br label %if.end.34

if.else:                                          ; preds = %if.then.13
  %35 = load i32, i32* @zz_size, align 4
  %idxprom20 = sext i32 %35 to i64
  %arrayidx21 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom20
  %36 = load %union.rec*, %union.rec** %arrayidx21, align 8
  %cmp22 = icmp eq %union.rec* %36, null
  br i1 %cmp22, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.else
  %37 = load i32, i32* @zz_size, align 4
  %38 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call25 = call %union.rec* @GetMemory(i32 %37, %struct.FILE_POS* %38)
  store %union.rec* %call25, %union.rec** @zz_hold, align 8
  br label %if.end.33

if.else.26:                                       ; preds = %if.else
  %39 = load i32, i32* @zz_size, align 4
  %idxprom27 = sext i32 %39 to i64
  %arrayidx28 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom27
  %40 = load %union.rec*, %union.rec** %arrayidx28, align 8
  store %union.rec* %40, %union.rec** @zz_hold, align 8
  store %union.rec* %40, %union.rec** @zz_hold, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os129 = bitcast %union.rec* %41 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx30, i32 0, i32 0
  %42 = load %union.rec*, %union.rec** %opred, align 8
  %43 = load i32, i32* @zz_size, align 4
  %idxprom31 = sext i32 %43 to i64
  %arrayidx32 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom31
  store %union.rec* %42, %union.rec** %arrayidx32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.26, %if.then.24
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.18
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os135 = bitcast %union.rec* %44 to %struct.word_type*
  %ou136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou136 to %struct.anon.0*
  %otype = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os11, i32 0, i32 0
  store i8 17, i8* %otype, align 1
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os137 = bitcast %union.rec* %46 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 1
  store %union.rec* %45, %union.rec** %osucc, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os140 = bitcast %union.rec* %47 to %struct.word_type*
  %olist41 = getelementptr inbounds %struct.word_type, %struct.word_type* %os140, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist41, i32 0, i64 1
  %opred43 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx42, i32 0, i32 0
  store %union.rec* %45, %union.rec** %opred43, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os144 = bitcast %union.rec* %48 to %struct.word_type*
  %olist45 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist45, i32 0, i64 0
  %osucc47 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx46, i32 0, i32 1
  store %union.rec* %45, %union.rec** %osucc47, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os148 = bitcast %union.rec* %49 to %struct.word_type*
  %olist49 = getelementptr inbounds %struct.word_type, %struct.word_type* %os148, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist49, i32 0, i64 0
  %opred51 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx50, i32 0, i32 0
  store %union.rec* %45, %union.rec** %opred51, align 8
  %50 = load i32, i32* %pos, align 4
  %idxprom52 = sext i32 %50 to i64
  %51 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %52 = load %struct.anon*, %struct.anon** %51, align 8
  %coltab53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 2
  %arrayidx54 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %coltab53, i32 0, i64 %idxprom52
  %by_name_hash55 = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %arrayidx54, i32 0, i32 1
  store %union.rec* %45, %union.rec** %by_name_hash55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.34, %while.end
  %53 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv57 = zext i8 %53 to i32
  store i32 %conv57, i32* @zz_size, align 4
  %conv58 = sext i32 %conv57 to i64
  %cmp59 = icmp uge i64 %conv58, 265
  br i1 %cmp59, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %if.end.56
  %54 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call62 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %54)
  br label %if.end.80

if.else.63:                                       ; preds = %if.end.56
  %55 = load i32, i32* @zz_size, align 4
  %idxprom64 = sext i32 %55 to i64
  %arrayidx65 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom64
  %56 = load %union.rec*, %union.rec** %arrayidx65, align 8
  %cmp66 = icmp eq %union.rec* %56, null
  br i1 %cmp66, label %if.then.68, label %if.else.70

if.then.68:                                       ; preds = %if.else.63
  %57 = load i32, i32* @zz_size, align 4
  %58 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call69 = call %union.rec* @GetMemory(i32 %57, %struct.FILE_POS* %58)
  store %union.rec* %call69, %union.rec** @zz_hold, align 8
  br label %if.end.79

if.else.70:                                       ; preds = %if.else.63
  %59 = load i32, i32* @zz_size, align 4
  %idxprom71 = sext i32 %59 to i64
  %arrayidx72 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom71
  %60 = load %union.rec*, %union.rec** %arrayidx72, align 8
  store %union.rec* %60, %union.rec** @zz_hold, align 8
  store %union.rec* %60, %union.rec** @zz_hold, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os173 = bitcast %union.rec* %61 to %struct.word_type*
  %olist74 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist74, i32 0, i64 0
  %opred76 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx75, i32 0, i32 0
  %62 = load %union.rec*, %union.rec** %opred76, align 8
  %63 = load i32, i32* @zz_size, align 4
  %idxprom77 = sext i32 %63 to i64
  %arrayidx78 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom77
  store %union.rec* %62, %union.rec** %arrayidx78, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.70, %if.then.68
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.61
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os181 = bitcast %union.rec* %64 to %struct.word_type*
  %ou182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 1
  %os1183 = bitcast %union.FIRST_UNION* %ou182 to %struct.anon.0*
  %otype84 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os1183, i32 0, i32 0
  store i8 0, i8* %otype84, align 1
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os185 = bitcast %union.rec* %66 to %struct.word_type*
  %olist86 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist86, i32 0, i64 1
  %osucc88 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx87, i32 0, i32 1
  store %union.rec* %65, %union.rec** %osucc88, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os189 = bitcast %union.rec* %67 to %struct.word_type*
  %olist90 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist90, i32 0, i64 1
  %opred92 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx91, i32 0, i32 0
  store %union.rec* %65, %union.rec** %opred92, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os193 = bitcast %union.rec* %68 to %struct.word_type*
  %olist94 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist94, i32 0, i64 0
  %osucc96 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx95, i32 0, i32 1
  store %union.rec* %65, %union.rec** %osucc96, align 8
  %69 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os197 = bitcast %union.rec* %69 to %struct.word_type*
  %olist98 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist98, i32 0, i64 0
  %opred100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx99, i32 0, i32 0
  store %union.rec* %65, %union.rec** %opred100, align 8
  store %union.rec* %65, %union.rec** @xx_link, align 8
  %70 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %70, %union.rec** @zz_res, align 8
  %71 = load i32, i32* %pos, align 4
  %idxprom101 = sext i32 %71 to i64
  %72 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %73 = load %struct.anon*, %struct.anon** %72, align 8
  %coltab102 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 2
  %arrayidx103 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %coltab102, i32 0, i64 %idxprom101
  %by_name_hash104 = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %arrayidx103, i32 0, i32 1
  %74 = load %union.rec*, %union.rec** %by_name_hash104, align 8
  store %union.rec* %74, %union.rec** @zz_hold, align 8
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp105 = icmp eq %union.rec* %75, null
  br i1 %cmp105, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.80
  %76 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.139

cond.false:                                       ; preds = %if.end.80
  %77 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp107 = icmp eq %union.rec* %77, null
  br i1 %cmp107, label %cond.true.109, label %cond.false.110

cond.true.109:                                    ; preds = %cond.false
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.110:                                   ; preds = %cond.false
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1111 = bitcast %union.rec* %79 to %struct.word_type*
  %olist112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist112, i32 0, i64 0
  %opred114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx113, i32 0, i32 0
  %80 = load %union.rec*, %union.rec** %opred114, align 8
  store %union.rec* %80, %union.rec** @zz_tmp, align 8
  %81 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1115 = bitcast %union.rec* %81 to %struct.word_type*
  %olist116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist116, i32 0, i64 0
  %opred118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx117, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %opred118, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1119 = bitcast %union.rec* %83 to %struct.word_type*
  %olist120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist120, i32 0, i64 0
  %opred122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx121, i32 0, i32 0
  store %union.rec* %82, %union.rec** %opred122, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %85 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1123 = bitcast %union.rec* %85 to %struct.word_type*
  %olist124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1123, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist124, i32 0, i64 0
  %opred126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx125, i32 0, i32 0
  %86 = load %union.rec*, %union.rec** %opred126, align 8
  %os1127 = bitcast %union.rec* %86 to %struct.word_type*
  %olist128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1127, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist128, i32 0, i64 0
  %osucc130 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx129, i32 0, i32 1
  store %union.rec* %84, %union.rec** %osucc130, align 8
  %87 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %88 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1131 = bitcast %union.rec* %88 to %struct.word_type*
  %olist132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1131, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist132, i32 0, i64 0
  %opred134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx133, i32 0, i32 0
  store %union.rec* %87, %union.rec** %opred134, align 8
  %89 = load %union.rec*, %union.rec** @zz_res, align 8
  %90 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1135 = bitcast %union.rec* %90 to %struct.word_type*
  %olist136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1135, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist136, i32 0, i64 0
  %osucc138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx137, i32 0, i32 1
  store %union.rec* %89, %union.rec** %osucc138, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.110, %cond.true.109
  %cond = phi %union.rec* [ %78, %cond.true.109 ], [ %89, %cond.false.110 ]
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.end, %cond.true
  %cond140 = phi %union.rec* [ %76, %cond.true ], [ %cond, %cond.end ]
  %91 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %91, %union.rec** @zz_res, align 8
  %92 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %92, %union.rec** @zz_hold, align 8
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp141 = icmp eq %union.rec* %93, null
  br i1 %cmp141, label %cond.true.143, label %cond.false.144

cond.true.143:                                    ; preds = %cond.end.139
  %94 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.179

cond.false.144:                                   ; preds = %cond.end.139
  %95 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp145 = icmp eq %union.rec* %95, null
  br i1 %cmp145, label %cond.true.147, label %cond.false.148

cond.true.147:                                    ; preds = %cond.false.144
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.177

cond.false.148:                                   ; preds = %cond.false.144
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1149 = bitcast %union.rec* %97 to %struct.word_type*
  %olist150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist150, i32 0, i64 1
  %opred152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx151, i32 0, i32 0
  %98 = load %union.rec*, %union.rec** %opred152, align 8
  store %union.rec* %98, %union.rec** @zz_tmp, align 8
  %99 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1153 = bitcast %union.rec* %99 to %struct.word_type*
  %olist154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1153, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist154, i32 0, i64 1
  %opred156 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx155, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %opred156, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1157 = bitcast %union.rec* %101 to %struct.word_type*
  %olist158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist158, i32 0, i64 1
  %opred160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx159, i32 0, i32 0
  store %union.rec* %100, %union.rec** %opred160, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %103 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1161 = bitcast %union.rec* %103 to %struct.word_type*
  %olist162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist162, i32 0, i64 1
  %opred164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx163, i32 0, i32 0
  %104 = load %union.rec*, %union.rec** %opred164, align 8
  %os1165 = bitcast %union.rec* %104 to %struct.word_type*
  %olist166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1165, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist166, i32 0, i64 1
  %osucc168 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx167, i32 0, i32 1
  store %union.rec* %102, %union.rec** %osucc168, align 8
  %105 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %106 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1169 = bitcast %union.rec* %106 to %struct.word_type*
  %olist170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1169, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist170, i32 0, i64 1
  %opred172 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx171, i32 0, i32 0
  store %union.rec* %105, %union.rec** %opred172, align 8
  %107 = load %union.rec*, %union.rec** @zz_res, align 8
  %108 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1173 = bitcast %union.rec* %108 to %struct.word_type*
  %olist174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1173, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist174, i32 0, i64 1
  %osucc176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx175, i32 0, i32 1
  store %union.rec* %107, %union.rec** %osucc176, align 8
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.false.148, %cond.true.147
  %cond178 = phi %union.rec* [ %96, %cond.true.147 ], [ %107, %cond.false.148 ]
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.end.177, %cond.true.143
  %cond180 = phi %union.rec* [ %94, %cond.true.143 ], [ %cond178, %cond.end.177 ]
  %109 = load i32, i32* %num, align 4
  %110 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1181 = bitcast %union.rec* %110 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1181, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %111 = bitcast %struct.anon.2* %os22 to i32*
  %bf.load = load i32, i32* %111, align 4
  %bf.value = and i32 %109, 1023
  %bf.shl = shl i32 %bf.value, 12
  %bf.clear = and i32 %bf.load, -4190209
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %111, align 4
  %112 = load %union.rec*, %union.rec** %x.addr, align 8
  %113 = load i32, i32* %num, align 4
  %idxprom182 = sext i32 %113 to i64
  %114 = load %struct.anon**, %struct.anon*** %S.addr, align 8
  %115 = load %struct.anon*, %struct.anon** %114, align 8
  %coltab183 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 2
  %arrayidx184 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %coltab183, i32 0, i64 %idxprom182
  %by_number = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %arrayidx184, i32 0, i32 0
  store %union.rec* %112, %union.rec** %by_number, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @ColourCommand(i32 %cnum) #0 {
entry:
  %cnum.addr = alloca i32, align 4
  %res = alloca i8*, align 8
  store i32 %cnum, i32* %cnum.addr, align 4
  %0 = load i32, i32* %cnum.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %cnum.addr, align 4
  %2 = load %struct.anon*, %struct.anon** @col_tab, align 8
  %coltab_count = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 1
  %3 = load i32, i32* %coltab_count, align 4
  %cmp1 = icmp ule i32 %1, %3
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %5 = load i32, i32* %cnum.addr, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.anon*, %struct.anon** @col_tab, align 8
  %coltab = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %coltab, i32 0, i64 %idxprom
  %by_number = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %arrayidx, i32 0, i32 0
  %7 = load %union.rec*, %union.rec** %by_number, align 8
  %os1 = bitcast %union.rec* %7 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  store i8* %arraydecay, i8** %res, align 8
  %8 = load i8*, i8** %res, align 8
  ret i8* %8
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct.anon* @ctab_rehash(%struct.anon* %S, i32 %newsize) #0 {
entry:
  %S.addr = alloca %struct.anon*, align 8
  %newsize.addr = alloca i32, align 4
  %NewS = alloca %struct.anon*, align 8
  %i = alloca i32, align 4
  store %struct.anon* %S, %struct.anon** %S.addr, align 8
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load i32, i32* %newsize.addr, align 4
  %call = call %struct.anon* @ctab_new(i32 %0)
  store %struct.anon* %call, %struct.anon** %NewS, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.anon*, %struct.anon** %S.addr, align 8
  %coltab_count = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 1
  %3 = load i32, i32* %coltab_count, align 4
  %cmp = icmp sle i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.anon*, %struct.anon** %S.addr, align 8
  %coltab = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %coltab, i32 0, i64 %idxprom
  %by_number = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %arrayidx, i32 0, i32 0
  %6 = load %union.rec*, %union.rec** %by_number, align 8
  call void @ctab_insert(%union.rec* %6, %struct.anon** %NewS)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.13, %for.end
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.anon*, %struct.anon** %S.addr, align 8
  %coltab_size = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %10 = load i32, i32* %coltab_size, align 4
  %cmp2 = icmp slt i32 %8, %10
  br i1 %cmp2, label %for.body.3, label %for.end.15

for.body.3:                                       ; preds = %for.cond.1
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.anon*, %struct.anon** %S.addr, align 8
  %coltab5 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %coltab5, i32 0, i64 %idxprom4
  %by_name_hash = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %arrayidx6, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %by_name_hash, align 8
  %cmp7 = icmp ne %union.rec* %13, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %14 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.anon*, %struct.anon** %S.addr, align 8
  %coltab9 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [1 x %struct.coltab_rec], [1 x %struct.coltab_rec]* %coltab9, i32 0, i64 %idxprom8
  %by_name_hash11 = getelementptr inbounds %struct.coltab_rec, %struct.coltab_rec* %arrayidx10, i32 0, i32 1
  %16 = load %union.rec*, %union.rec** %by_name_hash11, align 8
  %call12 = call i32 @DisposeObject(%union.rec* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %17, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.1

for.end.15:                                       ; preds = %for.cond.1
  %18 = load %struct.anon*, %struct.anon** %S.addr, align 8
  %19 = bitcast %struct.anon* %18 to i8*
  call void @free(i8* %19) #4
  %20 = load %struct.anon*, %struct.anon** %NewS, align 8
  ret %struct.anon* %20
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @DisposeObject(%union.rec*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
