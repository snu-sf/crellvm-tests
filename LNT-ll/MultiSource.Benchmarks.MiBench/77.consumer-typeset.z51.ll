; ModuleID = './MultiSource.Benchmarks.MiBench/77.consumer-typeset.z51.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
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
%struct.anon.6 = type { [2 x i32], [2 x i32] }

@out_fp = internal global %struct._IO_FILE* null, align 8
@prologue_done = internal global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Plain_CoordTranslate: should never be called!\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Plain_CoordScale: should never be called!\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Plain_SaveGraphicState: should never be called!\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Plain_RestoreGraphicState: should never be called!\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Plain_PrintGraphicObject: should never be called!\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Plain_DefineGraphicNames: should never be called!\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Plain_SaveTranslateDefineSave: should never be called!\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Plain_PrintGraphicInclude: should never be called!\00", align 1
@plain_back = internal global %struct.back_end_rec { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, void (%struct._IO_FILE*)* @Plain_PrintInitialize, void (i8*, i32, i32)* @Plain_PrintLength, void (%union.rec*, i32, i8*, i8*)* @Plain_PrintPageSetupForFont, void (i8*, i32)* @Plain_PrintPageResourceForFont, void (i32)* @Plain_PrintMapping, void (i32, i32, i8*)* @Plain_PrintBeforeFirstPage, void (i32, i32, i8*)* @Plain_PrintBetweenPages, void ()* @Plain_PrintAfterLastPage, void (%union.rec*, i32, i32)* @Plain_PrintWord, void (%union.rec*, i32, i32, %union.rec*)* @Plain_PrintPlainGraphic, void (i32, i32, i32, i32, i32)* @Plain_PrintUnderline, void (i32, i32)* @Plain_CoordTranslate, void (i32)* @Plain_CoordRotate, void (float, float)* @Plain_CoordScale, void (%union.rec*)* @Plain_SaveGraphicState, void ()* @Plain_RestoreGraphicState, void (%union.rec*)* @Plain_PrintGraphicObject, void (%union.rec*)* @Plain_DefineGraphicNames, void (%union.rec*, i32, i32)* @Plain_SaveTranslateDefineSave, void (%union.rec*, i32, i32)* @Plain_PrintGraphicInclude, void (%union.rec*, i32, i32, i32, i32)* @Plain_LinkSource, void (%union.rec*, i32, i32, i32, i32)* @Plain_LinkDest, void (...)* bitcast (void ()* @Plain_LinkCheck to void (...)*) }, align 8
@Plain_BackEnd = global %struct.back_end_rec* @plain_back, align 8
@PlainCharWidth = common global i32 0, align 4
@PlainCharHeight = common global i32 0, align 4
@PlainFormFeed = common global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"PlainText\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%.2fs\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%.2ff\00", align 1
@hsize = internal global i32 0, align 4
@vsize = internal global i32 0, align 4
@page = internal global i8* null, align 8
@TotalWordCount = external global i32, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"PrintWord:  h < 0!\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"PrintWord:  h >= hsize!\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"PrintWord:  v < 0!\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"PrintWord:  v >= vsize!\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"word %s deleted (internal error, off page at %d,%d)\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"left parameter of %s must be a simple word\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"@PlainGraphic\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"left parameter of %s must be a non-empty word\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"fill %s deleted (internal error, off page at %d,%d)\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Plain_CoordRotate: should never be called!\00", align 1

; Function Attrs: nounwind uwtable
define void @Plain_PrintInitialize(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @out_fp, align 8
  store i32 0, i32* @prologue_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plain_CoordTranslate(i32 %xdist, i32 %ydist) #0 {
entry:
  %xdist.addr = alloca i32, align 4
  %ydist.addr = alloca i32, align 4
  store i32 %xdist, i32* %xdist.addr, align 4
  store i32 %ydist, i32* %ydist.addr, align 4
  %0 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define void @Plain_CoordScale(float %hfactor, float %vfactor) #0 {
entry:
  %hfactor.addr = alloca float, align 4
  %vfactor.addr = alloca float, align 4
  store float %hfactor, float* %hfactor.addr, align 4
  store float %vfactor, float* %vfactor.addr, align 4
  %0 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plain_SaveGraphicState(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plain_RestoreGraphicState() #0 {
entry:
  %0 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plain_PrintGraphicObject(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plain_DefineGraphicNames(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plain_SaveTranslateDefineSave(%union.rec* %x, i32 %xdist, i32 %ydist) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %xdist.addr = alloca i32, align 4
  %ydist.addr = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %xdist, i32* %xdist.addr, align 4
  store i32 %ydist, i32* %ydist.addr, align 4
  %0 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plain_PrintGraphicInclude(%union.rec* %x, i32 %colmark, i32 %rowmark) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %colmark.addr = alloca i32, align 4
  %rowmark.addr = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %colmark, i32* %colmark.addr, align 4
  store i32 %rowmark, i32* %rowmark.addr, align 4
  %0 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintLength(i8* %buff, i32 %length, i32 %length_dim) #0 {
entry:
  %buff.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %length_dim.addr = alloca i32, align 4
  store i8* %buff, i8** %buff.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 %length_dim, i32* %length_dim.addr, align 4
  %0 = load i32, i32* %length_dim.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buff.addr, align 8
  %2 = load i32, i32* %length.addr, align 4
  %conv = sitofp i32 %2 to float
  %3 = load i32, i32* @PlainCharWidth, align 4
  %conv1 = sitofp i32 %3 to float
  %div = fdiv float %conv, %conv1
  %conv2 = fpext float %div to double
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), double %conv2) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %buff.addr, align 8
  %5 = load i32, i32* %length.addr, align 4
  %conv3 = sitofp i32 %5 to float
  %6 = load i32, i32* @PlainCharHeight, align 4
  %conv4 = sitofp i32 %6 to float
  %div5 = fdiv float %conv3, %conv4
  %conv6 = fpext float %div5 to double
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), double %conv6) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintPageSetupForFont(%union.rec* %face, i32 %font_curr_page, i8* %font_name, i8* %first_size_str) #0 {
entry:
  %face.addr = alloca %union.rec*, align 8
  %font_curr_page.addr = alloca i32, align 4
  %font_name.addr = alloca i8*, align 8
  %first_size_str.addr = alloca i8*, align 8
  store %union.rec* %face, %union.rec** %face.addr, align 8
  store i32 %font_curr_page, i32* %font_curr_page.addr, align 4
  store i8* %font_name, i8** %font_name.addr, align 8
  store i8* %first_size_str, i8** %first_size_str.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintPageResourceForFont(i8* %font_name, i32 %first) #0 {
entry:
  %font_name.addr = alloca i8*, align 8
  %first.addr = alloca i32, align 4
  store i8* %font_name, i8** %font_name.addr, align 8
  store i32 %first, i32* %first.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintMapping(i32 %m) #0 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintBeforeFirstPage(i32 %h, i32 %v, i8* %label) #0 {
entry:
  %h.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  %0 = load i32, i32* %h.addr, align 4
  %sub = sub nsw i32 %0, 1
  %1 = load i32, i32* @PlainCharWidth, align 4
  %div = sdiv i32 %sub, %1
  %add = add nsw i32 %div, 1
  store i32 %add, i32* @hsize, align 4
  %2 = load i32, i32* %v.addr, align 4
  %sub1 = sub nsw i32 %2, 1
  %3 = load i32, i32* @PlainCharHeight, align 4
  %div2 = sdiv i32 %sub1, %3
  %add3 = add nsw i32 %div2, 1
  store i32 %add3, i32* @vsize, align 4
  %4 = load i32, i32* @hsize, align 4
  %5 = load i32, i32* @vsize, align 4
  %mul = mul nsw i32 %4, %5
  %conv = sext i32 %mul to i64
  %mul4 = mul i64 %conv, 1
  %call = call noalias i8* @malloc(i64 %mul4) #4
  store i8* %call, i8** @page, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @vsize, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* @hsize, align 4
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* @hsize, align 4
  %mul10 = mul nsw i32 %10, %11
  %12 = load i32, i32* %j, align 4
  %add11 = add nsw i32 %mul10, %12
  %idxprom = sext i32 %add11 to i64
  %13 = load i8*, i8** @page, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  store i8 32, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %15 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %15, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  store i32 1, i32* @prologue_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintBetweenPages(i32 %h, i32 %v, i8* %label) #0 {
entry:
  %h.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %new_hsize = alloca i32, align 4
  %new_vsize = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %jmax = alloca i32, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  %0 = load i32, i32* @vsize, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @hsize, align 4
  %sub1 = sub nsw i32 %2, 1
  store i32 %sub1, i32* %jmax, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %jmax, align 4
  %cmp3 = icmp sge i32 %3, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.2
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @hsize, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %jmax, align 4
  %add = add nsw i32 %mul, %6
  %idxprom = sext i32 %add to i64
  %7 = load i8*, i8** @page, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.2
  %9 = phi i1 [ false, %for.cond.2 ], [ %cmp4, %land.rhs ]
  br i1 %9, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %10 = load i32, i32* %jmax, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %jmax, align 4
  br label %for.cond.2

for.end:                                          ; preds = %land.end
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.16, %for.end
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %jmax, align 4
  %cmp8 = icmp sle i32 %11, %12
  br i1 %cmp8, label %for.body.10, label %for.end.17

for.body.10:                                      ; preds = %for.cond.7
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* @hsize, align 4
  %mul11 = mul nsw i32 %13, %14
  %15 = load i32, i32* %j, align 4
  %add12 = add nsw i32 %mul11, %15
  %idxprom13 = sext i32 %add12 to i64
  %16 = load i8*, i8** @page, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %16, i64 %idxprom13
  %17 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %17 to i32
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call = call i32 @_IO_putc(i32 %conv15, %struct._IO_FILE* %18)
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.10
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.7

for.end.17:                                       ; preds = %for.cond.7
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call18 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %20)
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.17
  %21 = load i32, i32* %i, align 4
  %dec20 = add nsw i32 %21, -1
  store i32 %dec20, i32* %i, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %22 = load i32, i32* @PlainFormFeed, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.21
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call22 = call i32 @_IO_putc(i32 12, %struct._IO_FILE* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.21
  %24 = load i32, i32* %h.addr, align 4
  %sub23 = sub nsw i32 %24, 1
  %25 = load i32, i32* @PlainCharWidth, align 4
  %div = sdiv i32 %sub23, %25
  %add24 = add nsw i32 %div, 1
  store i32 %add24, i32* %new_hsize, align 4
  %26 = load i32, i32* %v.addr, align 4
  %sub25 = sub nsw i32 %26, 1
  %27 = load i32, i32* @PlainCharHeight, align 4
  %div26 = sdiv i32 %sub25, %27
  %add27 = add nsw i32 %div26, 1
  store i32 %add27, i32* %new_vsize, align 4
  %28 = load i32, i32* %new_hsize, align 4
  %29 = load i32, i32* @hsize, align 4
  %cmp28 = icmp ne i32 %28, %29
  br i1 %cmp28, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %30 = load i32, i32* %new_vsize, align 4
  %31 = load i32, i32* @vsize, align 4
  %cmp30 = icmp ne i32 %30, %31
  br i1 %cmp30, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %lor.lhs.false, %if.end
  %32 = load i8*, i8** @page, align 8
  call void @free(i8* %32) #4
  %33 = load i32, i32* %new_hsize, align 4
  store i32 %33, i32* @hsize, align 4
  %34 = load i32, i32* %new_vsize, align 4
  store i32 %34, i32* @vsize, align 4
  %35 = load i32, i32* @hsize, align 4
  %36 = load i32, i32* @vsize, align 4
  %mul33 = mul nsw i32 %35, %36
  %conv34 = sext i32 %mul33 to i64
  %mul35 = mul i64 %conv34, 1
  %call36 = call noalias i8* @malloc(i64 %mul35) #4
  store i8* %call36, i8** @page, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.53, %if.end.37
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* @vsize, align 4
  %cmp39 = icmp slt i32 %37, %38
  br i1 %cmp39, label %for.body.41, label %for.end.55

for.body.41:                                      ; preds = %for.cond.38
  store i32 0, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.50, %for.body.41
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* @hsize, align 4
  %cmp43 = icmp slt i32 %39, %40
  br i1 %cmp43, label %for.body.45, label %for.end.52

for.body.45:                                      ; preds = %for.cond.42
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* @hsize, align 4
  %mul46 = mul nsw i32 %41, %42
  %43 = load i32, i32* %j, align 4
  %add47 = add nsw i32 %mul46, %43
  %idxprom48 = sext i32 %add47 to i64
  %44 = load i8*, i8** @page, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %44, i64 %idxprom48
  store i8 32, i8* %arrayidx49, align 1
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.45
  %45 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %45, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond.42

for.end.52:                                       ; preds = %for.cond.42
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end.52
  %46 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %46, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.38

for.end.55:                                       ; preds = %for.cond.38
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintAfterLastPage() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %jmax = alloca i32, align 4
  %0 = load i32, i32* @prologue_done, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @vsize, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %if.then
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @hsize, align 4
  %sub1 = sub nsw i32 %3, 1
  store i32 %sub1, i32* %jmax, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %jmax, align 4
  %cmp3 = icmp sge i32 %4, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.2
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @hsize, align 4
  %mul = mul nsw i32 %5, %6
  %7 = load i32, i32* %jmax, align 4
  %add = add nsw i32 %mul, %7
  %idxprom = sext i32 %add to i64
  %8 = load i8*, i8** @page, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.2
  %10 = phi i1 [ false, %for.cond.2 ], [ %cmp4, %land.rhs ]
  br i1 %10, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %11 = load i32, i32* %jmax, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %jmax, align 4
  br label %for.cond.2

for.end:                                          ; preds = %land.end
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.16, %for.end
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %jmax, align 4
  %cmp8 = icmp sle i32 %12, %13
  br i1 %cmp8, label %for.body.10, label %for.end.17

for.body.10:                                      ; preds = %for.cond.7
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* @hsize, align 4
  %mul11 = mul nsw i32 %14, %15
  %16 = load i32, i32* %j, align 4
  %add12 = add nsw i32 %mul11, %16
  %idxprom13 = sext i32 %add12 to i64
  %17 = load i8*, i8** @page, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %17, i64 %idxprom13
  %18 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %18 to i32
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call = call i32 @_IO_putc(i32 %conv15, %struct._IO_FILE* %19)
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.10
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.7

for.end.17:                                       ; preds = %for.cond.7
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call18 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %21)
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.17
  %22 = load i32, i32* %i, align 4
  %dec20 = add nsw i32 %22, -1
  store i32 %dec20, i32* %i, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end.21, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintWord(%union.rec* %x, i32 %hpos, i32 %vpos) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %hpos.addr = alloca i32, align 4
  %vpos.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %h = alloca i32, align 4
  %v = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %hpos, i32* %hpos.addr, align 4
  store i32 %vpos, i32* %vpos.addr, align 4
  %0 = load i32, i32* @TotalWordCount, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @TotalWordCount, align 4
  %1 = load i32, i32* %hpos.addr, align 4
  %conv = sitofp i32 %1 to float
  %2 = load i32, i32* @PlainCharWidth, align 4
  %conv1 = sitofp i32 %2 to float
  %div = fdiv float %conv, %conv1
  %conv2 = fpext float %div to double
  %add = fadd double %conv2, 5.000000e-01
  %conv3 = fptosi double %add to i32
  store i32 %conv3, i32* %h, align 4
  %3 = load i32, i32* %vpos.addr, align 4
  %conv4 = sitofp i32 %3 to float
  %4 = load i32, i32* @PlainCharHeight, align 4
  %conv5 = sitofp i32 %4 to float
  %div6 = fdiv float %conv4, %conv5
  %conv7 = fptosi float %div6 to i32
  store i32 %conv7, i32* %v, align 4
  %5 = load i32, i32* %h, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %h, align 4
  %conv9 = sext i32 %6 to i64
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %7 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay) #5
  %add10 = add i64 %conv9, %call
  %8 = load i32, i32* @hsize, align 4
  %conv11 = sext i32 %8 to i64
  %cmp12 = icmp ult i64 %add10, %conv11
  br i1 %cmp12, label %land.lhs.true.14, label %if.else

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %9 = load i32, i32* %v, align 4
  %cmp15 = icmp sge i32 %9, 0
  br i1 %cmp15, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %land.lhs.true.14
  %10 = load i32, i32* %v, align 4
  %11 = load i32, i32* @vsize, align 4
  %cmp18 = icmp slt i32 %10, %11
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.17
  %12 = load i32, i32* %h, align 4
  %cmp20 = icmp sge i32 %12, 0
  br i1 %cmp20, label %if.end, label %if.then.22

if.then.22:                                       ; preds = %if.then
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call23 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then
  %14 = load i32, i32* %h, align 4
  %15 = load i32, i32* @hsize, align 4
  %cmp24 = icmp slt i32 %14, %15
  br i1 %cmp24, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %if.end
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call27 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end
  %17 = load i32, i32* %v, align 4
  %cmp29 = icmp sge i32 %17, 0
  br i1 %cmp29, label %if.end.33, label %if.then.31

if.then.31:                                       ; preds = %if.end.28
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call32 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.28
  %19 = load i32, i32* %v, align 4
  %20 = load i32, i32* @vsize, align 4
  %cmp34 = icmp slt i32 %19, %20
  br i1 %cmp34, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %if.end.33
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call37 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.33
  %22 = load i32, i32* %v, align 4
  %23 = load i32, i32* @hsize, align 4
  %mul = mul nsw i32 %22, %23
  %24 = load i32, i32* %h, align 4
  %add39 = add nsw i32 %mul, %24
  %idxprom = sext i32 %add39 to i64
  %25 = load i8*, i8** @page, align 8
  %arrayidx = getelementptr inbounds i8, i8* %25, i64 %idxprom
  store i8* %arrayidx, i8** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.38
  %26 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %26 to i64
  %27 = load %union.rec*, %union.rec** %x.addr, align 8
  %os141 = bitcast %union.rec* %27 to %struct.word_type*
  %ostring42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 4
  %arrayidx43 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring42, i32 0, i64 %idxprom40
  %28 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %28 to i32
  %cmp45 = icmp ne i32 %conv44, 0
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %29 to i64
  %30 = load %union.rec*, %union.rec** %x.addr, align 8
  %os148 = bitcast %union.rec* %30 to %struct.word_type*
  %ostring49 = getelementptr inbounds %struct.word_type, %struct.word_type* %os148, i32 0, i32 4
  %arrayidx50 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring49, i32 0, i64 %idxprom47
  %31 = load i8, i8* %arrayidx50, align 1
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %31, i8* %32, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %33, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.57

if.else:                                          ; preds = %land.lhs.true.17, %land.lhs.true.14, %land.lhs.true, %entry
  %34 = load %union.rec*, %union.rec** %x.addr, align 8
  %os152 = bitcast %union.rec* %34 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %35 = load %union.rec*, %union.rec** %x.addr, align 8
  %os153 = bitcast %union.rec* %35 to %struct.word_type*
  %ostring54 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 4
  %arraydecay55 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring54, i32 0, i32 0
  %36 = load i32, i32* %h, align 4
  %37 = load i32, i32* %v, align 4
  %call56 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 51, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* %arraydecay55, i32 %36, i32 %37)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintPlainGraphic(%union.rec* %x, i32 %xmk, i32 %ymk, %union.rec* %z) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %xmk.addr = alloca i32, align 4
  %ymk.addr = alloca i32, align 4
  %z.addr = alloca %union.rec*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %starth = alloca i32, align 4
  %startv = alloca i32, align 4
  %stoph = alloca i32, align 4
  %stopv = alloca i32, align 4
  %h = alloca i32, align 4
  %v = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %xmk, i32* %xmk.addr, align 4
  store i32 %ymk, i32* %ymk.addr, align 4
  store %union.rec* %z, %union.rec** %z.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 11
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %os114 = bitcast %union.FIRST_UNION* %ou13 to %struct.anon*
  %otype5 = getelementptr inbounds %struct.anon, %struct.anon* %os114, i32 0, i32 0
  %3 = load i8, i8* %otype5, align 1
  %conv6 = zext i8 %3 to i32
  %cmp7 = icmp ne i32 %conv6, 12
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %os19 = bitcast %union.rec* %4 to %struct.word_type*
  %ou110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou110 to %struct.FILE_POS*
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 51, i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.104

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os111 = bitcast %union.rec* %5 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call12 = call i64 @strlen(i8* %arraydecay) #5
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, i32* %len, align 4
  %6 = load %union.rec*, %union.rec** %x.addr, align 8
  %os115 = bitcast %union.rec* %6 to %struct.word_type*
  %ostring16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 4
  %arraydecay17 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring16, i32 0, i32 0
  %call18 = call i64 @strlen(i8* %arraydecay17) #5
  %cmp19 = icmp eq i64 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.end
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os122 = bitcast %union.rec* %7 to %struct.word_type*
  %ou123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 1
  %ofpos24 = bitcast %union.FIRST_UNION* %ou123 to %struct.FILE_POS*
  %call25 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 51, i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.104

if.end.26:                                        ; preds = %if.end
  %8 = load i32, i32* %xmk.addr, align 4
  %conv27 = sitofp i32 %8 to float
  %9 = load i32, i32* @PlainCharWidth, align 4
  %conv28 = sitofp i32 %9 to float
  %div = fdiv float %conv27, %conv28
  %conv29 = fpext float %div to double
  %add = fadd double %conv29, 5.000000e-01
  %conv30 = fptosi double %add to i32
  store i32 %conv30, i32* %starth, align 4
  %10 = load i32, i32* %ymk.addr, align 4
  %conv31 = sitofp i32 %10 to float
  %11 = load i32, i32* @PlainCharHeight, align 4
  %conv32 = sitofp i32 %11 to float
  %div33 = fdiv float %conv31, %conv32
  %conv34 = fptosi float %div33 to i32
  store i32 %conv34, i32* %startv, align 4
  %12 = load i32, i32* %xmk.addr, align 4
  %conv35 = sitofp i32 %12 to float
  %13 = load %union.rec*, %union.rec** %z.addr, align 8
  %os136 = bitcast %union.rec* %13 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os136, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  %14 = load i32, i32* %arrayidx, align 4
  %15 = load %union.rec*, %union.rec** %z.addr, align 8
  %os137 = bitcast %union.rec* %15 to %struct.word_type*
  %ou338 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 3
  %os3139 = bitcast %union.THIRD_UNION* %ou338 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3139, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %16 = load i32, i32* %arrayidx40, align 4
  %add41 = add nsw i32 %14, %16
  %conv42 = sitofp i32 %add41 to float
  %add43 = fadd float %conv35, %conv42
  %17 = load i32, i32* @PlainCharWidth, align 4
  %conv44 = sitofp i32 %17 to float
  %div45 = fdiv float %add43, %conv44
  %conv46 = fpext float %div45 to double
  %add47 = fadd double %conv46, 5.000000e-01
  %conv48 = fptosi double %add47 to i32
  store i32 %conv48, i32* %stoph, align 4
  %18 = load i32, i32* %ymk.addr, align 4
  %conv49 = sitofp i32 %18 to float
  %19 = load %union.rec*, %union.rec** %z.addr, align 8
  %os150 = bitcast %union.rec* %19 to %struct.word_type*
  %ou351 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 3
  %os3152 = bitcast %union.THIRD_UNION* %ou351 to %struct.anon.6*
  %oback53 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3152, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x i32], [2 x i32]* %oback53, i32 0, i64 1
  %20 = load i32, i32* %arrayidx54, align 4
  %21 = load %union.rec*, %union.rec** %z.addr, align 8
  %os155 = bitcast %union.rec* %21 to %struct.word_type*
  %ou356 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 3
  %os3157 = bitcast %union.THIRD_UNION* %ou356 to %struct.anon.6*
  %ofwd58 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3157, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd58, i32 0, i64 1
  %22 = load i32, i32* %arrayidx59, align 4
  %add60 = add nsw i32 %20, %22
  %conv61 = sitofp i32 %add60 to float
  %sub = fsub float %conv49, %conv61
  %23 = load i32, i32* @PlainCharHeight, align 4
  %conv62 = sitofp i32 %23 to float
  %div63 = fdiv float %sub, %conv62
  %conv64 = fptosi float %div63 to i32
  store i32 %conv64, i32* %stopv, align 4
  call void @SetLengthDim(i32 0)
  call void @SetLengthDim(i32 1)
  %24 = load i32, i32* %starth, align 4
  %cmp65 = icmp sge i32 %24, 0
  br i1 %cmp65, label %land.lhs.true.67, label %if.else

land.lhs.true.67:                                 ; preds = %if.end.26
  %25 = load i32, i32* %stoph, align 4
  %26 = load i32, i32* @hsize, align 4
  %cmp68 = icmp slt i32 %25, %26
  br i1 %cmp68, label %land.lhs.true.70, label %if.else

land.lhs.true.70:                                 ; preds = %land.lhs.true.67
  %27 = load i32, i32* %startv, align 4
  %cmp71 = icmp sge i32 %27, 0
  br i1 %cmp71, label %land.lhs.true.73, label %if.else

land.lhs.true.73:                                 ; preds = %land.lhs.true.70
  %28 = load i32, i32* %stopv, align 4
  %29 = load i32, i32* @vsize, align 4
  %cmp74 = icmp slt i32 %28, %29
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %land.lhs.true.73
  store i32 0, i32* %i, align 4
  %30 = load i32, i32* %startv, align 4
  %sub77 = sub nsw i32 %30, 1
  store i32 %sub77, i32* %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.95, %if.then.76
  %31 = load i32, i32* %v, align 4
  %32 = load i32, i32* %stopv, align 4
  %cmp78 = icmp sge i32 %31, %32
  br i1 %cmp78, label %for.body, label %for.end.96

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %starth, align 4
  store i32 %33, i32* %h, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc, %for.body
  %34 = load i32, i32* %h, align 4
  %35 = load i32, i32* %stoph, align 4
  %cmp81 = icmp slt i32 %34, %35
  br i1 %cmp81, label %for.body.83, label %for.end

for.body.83:                                      ; preds = %for.cond.80
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %len, align 4
  %cmp84 = icmp eq i32 %36, %37
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %for.body.83
  store i32 0, i32* %i, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %for.body.83
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load %union.rec*, %union.rec** %x.addr, align 8
  %os188 = bitcast %union.rec* %39 to %struct.word_type*
  %ostring89 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 4
  %arrayidx90 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring89, i32 0, i64 %idxprom
  %40 = load i8, i8* %arrayidx90, align 1
  %41 = load i32, i32* %v, align 4
  %42 = load i32, i32* @hsize, align 4
  %mul = mul nsw i32 %41, %42
  %43 = load i32, i32* %h, align 4
  %add91 = add nsw i32 %mul, %43
  %idxprom92 = sext i32 %add91 to i64
  %44 = load i8*, i8** @page, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %44, i64 %idxprom92
  store i8 %40, i8* %arrayidx93, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.87
  %45 = load i32, i32* %h, align 4
  %inc94 = add nsw i32 %45, 1
  store i32 %inc94, i32* %h, align 4
  br label %for.cond.80

for.end:                                          ; preds = %for.cond.80
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end
  %46 = load i32, i32* %v, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %v, align 4
  br label %for.cond

for.end.96:                                       ; preds = %for.cond
  br label %if.end.104

if.else:                                          ; preds = %land.lhs.true.73, %land.lhs.true.70, %land.lhs.true.67, %if.end.26
  %47 = load %union.rec*, %union.rec** %x.addr, align 8
  %os197 = bitcast %union.rec* %47 to %struct.word_type*
  %ou198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 1
  %ofpos99 = bitcast %union.FIRST_UNION* %ou198 to %struct.FILE_POS*
  %48 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1100 = bitcast %union.rec* %48 to %struct.word_type*
  %ostring101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1100, i32 0, i32 4
  %arraydecay102 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring101, i32 0, i32 0
  %49 = load i32, i32* %h, align 4
  %50 = load i32, i32* %v, align 4
  %call103 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 51, i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos99, i8* %arraydecay102, i32 %49, i32 %50)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then, %if.then.21, %if.else, %for.end.96
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintUnderline(i32 %fnum, i32 %col, i32 %xstart, i32 %xstop, i32 %ymk) #0 {
entry:
  %fnum.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %xstart.addr = alloca i32, align 4
  %xstop.addr = alloca i32, align 4
  %ymk.addr = alloca i32, align 4
  store i32 %fnum, i32* %fnum.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  store i32 %xstart, i32* %xstart.addr, align 4
  store i32 %xstop, i32* %xstop.addr, align 4
  store i32 %ymk, i32* %ymk.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_CoordRotate(i32 %amount) #0 {
entry:
  %amount.addr = alloca i32, align 4
  store i32 %amount, i32* %amount.addr, align 4
  %0 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_LinkSource(%union.rec* %name, i32 %llx, i32 %lly, i32 %urx, i32 %ury) #0 {
entry:
  %name.addr = alloca %union.rec*, align 8
  %llx.addr = alloca i32, align 4
  %lly.addr = alloca i32, align 4
  %urx.addr = alloca i32, align 4
  %ury.addr = alloca i32, align 4
  store %union.rec* %name, %union.rec** %name.addr, align 8
  store i32 %llx, i32* %llx.addr, align 4
  store i32 %lly, i32* %lly.addr, align 4
  store i32 %urx, i32* %urx.addr, align 4
  store i32 %ury, i32* %ury.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_LinkDest(%union.rec* %name, i32 %llx, i32 %lly, i32 %urx, i32 %ury) #0 {
entry:
  %name.addr = alloca %union.rec*, align 8
  %llx.addr = alloca i32, align 4
  %lly.addr = alloca i32, align 4
  %urx.addr = alloca i32, align 4
  %ury.addr = alloca i32, align 4
  store %union.rec* %name, %union.rec** %name.addr, align 8
  store i32 %llx, i32* %llx.addr, align 4
  store i32 %lly, i32* %lly.addr, align 4
  store i32 %urx, i32* %urx.addr, align 4
  store i32 %ury, i32* %ury.addr, align 4
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @SetLengthDim(i32) #1

; Function Attrs: nounwind uwtable
define internal void @Plain_LinkCheck() #0 {
entry:
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
