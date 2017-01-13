; ModuleID = './MultiSource.Benchmarks.MiBench/86.consumer-typeset.z50.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.GRAPHICS_STATE = type { i32, i32, i32, i32, i16 }
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
%struct.mapvec = type { %union.rec*, i16, i32, i32, %union.rec*, [256 x %union.rec*], [353 x i8], [4 x [256 x i8]] }
%struct.font_rec = type { %struct.metrics*, i8*, i16*, %struct.composite_rec*, i32, %union.rec*, %union.rec*, i16, i16, i16*, i8*, i8*, i16* }
%struct.metrics = type { i16, i16, i16, i16, i16 }
%struct.composite_rec = type { i8, i16, i16 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.0 = type { i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon.7 = type { i32, i32, i32, i8 }
%struct.anon.4 = type { i16, i16 }

@prologue_done = internal global i32 0, align 4
@out_fp = internal global %struct._IO_FILE* null, align 8
@gs_stack_top = internal global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"rotations, graphics etc. too deeply nested (max is %d)\00", align 1
@currentfont = internal global i32 0, align 4
@gs_stack = internal global [50 x %struct.GRAPHICS_STATE] zeroinitializer, align 16
@currentcolour = internal global i32 0, align 4
@cpexists = internal global i32 0, align 4
@currenty = internal global i32 0, align 4
@currentxheight2 = internal global i16 0, align 2
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"error in left parameter of %s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"@Graphic\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"PrintGraphic: type(x) != GRAPHIC!\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"cannot include EPS file in PDF output; EPS file %s ignored\00", align 1
@pdf_back = internal global %struct.back_end_rec { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, void (%struct._IO_FILE*)* @PDF_PrintInitialize, void (i8*, i32, i32)* @PDF_PrintLength, void (%union.rec*, i32, i8*, i8*)* @PDF_PrintPageSetupForFont, void (i8*, i32)* @PDF_PrintPageResourceForFont, void (i32)* @PDF_PrintMapping, void (i32, i32, i8*)* @PDF_PrintBeforeFirstPage, void (i32, i32, i8*)* @PDF_PrintBetweenPages, void ()* @PDF_PrintAfterLastPage, void (%union.rec*, i32, i32)* @PDF_PrintWord, void (%union.rec*, i32, i32, %union.rec*)* @PDF_PrintPlainGraphic, void (i32, i32, i32, i32, i32)* @PDF_PrintUnderline, void (i32, i32)* @PDF_CoordTranslate, void (i32)* @PDF_CoordRotate, void (float, float)* @PDF_CoordScale, void (%union.rec*)* @PDF_SaveGraphicState, void ()* @PDF_RestoreGraphicState, void (%union.rec*)* @PDF_PrintGraphicObject, void (%union.rec*)* @PDF_DefineGraphicNames, void (%union.rec*, i32, i32)* @PDF_SaveTranslateDefineSave, void (%union.rec*, i32, i32)* @PDF_PrintGraphicInclude, void (%union.rec*, i32, i32, i32, i32)* @PDF_LinkSource, void (%union.rec*, i32, i32, i32, i32)* @PDF_LinkDest, void (...)* bitcast (void ()* @PDF_LinkCheck to void (...)*) }, align 8
@PDF_BackEnd = global %struct.back_end_rec* @pdf_back, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@pagecount = internal global i32 0, align 4
@wordcount = internal global i32 0, align 4
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@needs = internal global %union.rec* null, align 8
@supplied = internal global %union.rec* null, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"%.3fc\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"%%%%IncludeResource: font %s\0A\00", align 1
@MapTable = external global [0 x %struct.mapvec*], align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"/%s%c\00", align 1
@PDF_PrintWord.last_hpos = internal global i32 0, align 4
@PDF_PrintWord.next_hpos = internal global i32 -1, align 4
@TotalWordCount = external global i32, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@finfo = external global %struct.font_rec*, align 8
@EightBitToPrintForm = external global [0 x i8*], align 8
@.str.16 = private unnamed_addr constant [60 x i8] c"PDF_PrintPlainGraphic: this routine should never be called!\00", align 1

; Function Attrs: nounwind uwtable
define void @PDF_PrintAfterLastPage() #0 {
entry:
  %0 = load i32, i32* @prologue_done, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Cleanup(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFFile_Cleanup(%struct._IO_FILE* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @PDFPage_Cleanup(%struct._IO_FILE*) #1

declare void @PDFFile_Cleanup(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @PDF_SaveGraphicState(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Push(%struct._IO_FILE* %0)
  %1 = load i32, i32* @gs_stack_top, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @gs_stack_top, align 4
  %2 = load i32, i32* @gs_stack_top, align 4
  %cmp = icmp sge i32 %2, 50
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %3 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 50, i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i32 50)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* @currentfont, align 4
  %5 = load i32, i32* @gs_stack_top, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom
  %gs_font = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx, i32 0, i32 0
  store i32 %4, i32* %gs_font, align 4
  %6 = load i32, i32* @currentcolour, align 4
  %7 = load i32, i32* @gs_stack_top, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom1
  %gs_colour = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx2, i32 0, i32 1
  store i32 %6, i32* %gs_colour, align 4
  %8 = load i32, i32* @cpexists, align 4
  %9 = load i32, i32* @gs_stack_top, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom3
  %gs_cpexists = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx4, i32 0, i32 2
  store i32 %8, i32* %gs_cpexists, align 4
  %10 = load i32, i32* @currenty, align 4
  %11 = load i32, i32* @gs_stack_top, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom5
  %gs_currenty = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx6, i32 0, i32 3
  store i32 %10, i32* %gs_currenty, align 4
  %12 = load i16, i16* @currentxheight2, align 2
  %13 = load i32, i32* @gs_stack_top, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom7
  %gs_xheight2 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx8, i32 0, i32 4
  store i16 %12, i16* %gs_xheight2, align 2
  ret void
}

declare void @PDFPage_Push(%struct._IO_FILE*) #1

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define void @PDF_RestoreGraphicState() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Pop(%struct._IO_FILE* %0)
  %1 = load i32, i32* @gs_stack_top, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom
  %gs_font = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %gs_font, align 4
  store i32 %2, i32* @currentfont, align 4
  %3 = load i32, i32* @gs_stack_top, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom1
  %gs_colour = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx2, i32 0, i32 1
  %4 = load i32, i32* %gs_colour, align 4
  store i32 %4, i32* @currentcolour, align 4
  %5 = load i32, i32* @gs_stack_top, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom3
  %gs_cpexists = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx4, i32 0, i32 2
  %6 = load i32, i32* %gs_cpexists, align 4
  store i32 %6, i32* @cpexists, align 4
  %7 = load i32, i32* @gs_stack_top, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom5
  %gs_currenty = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx6, i32 0, i32 3
  %8 = load i32, i32* %gs_currenty, align 4
  store i32 %8, i32* @currenty, align 4
  %9 = load i32, i32* @gs_stack_top, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom7
  %gs_xheight2 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx8, i32 0, i32 4
  %10 = load i16, i16* %gs_xheight2, align 2
  store i16 %10, i16* @currentxheight2, align 2
  %11 = load i32, i32* @gs_stack_top, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* @gs_stack_top, align 4
  ret void
}

declare void @PDFPage_Pop(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @PDF_PrintGraphicObject(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
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
    i32 17, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %3 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  call void @PDFPage_WriteGraphic(%struct._IO_FILE* %2, i8* %arraydecay)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %os14 = bitcast %union.rec* %4 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %5 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %5, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.96, %sw.bb.3
  %6 = load %union.rec*, %union.rec** %link, align 8
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp = icmp ne %union.rec* %6, %7
  br i1 %cmp, label %for.body, label %for.end.101

for.body:                                         ; preds = %for.cond
  %8 = load %union.rec*, %union.rec** %link, align 8
  %os16 = bitcast %union.rec* %8 to %struct.word_type*
  %olist7 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %9, %union.rec** %y, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %10 = load %union.rec*, %union.rec** %y, align 8
  %os110 = bitcast %union.rec* %10 to %struct.word_type*
  %ou111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 1
  %os1112 = bitcast %union.FIRST_UNION* %ou111 to %struct.anon*
  %otype13 = getelementptr inbounds %struct.anon, %struct.anon* %os1112, i32 0, i32 0
  %11 = load i8, i8* %otype13, align 1
  %conv14 = zext i8 %11 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.9
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %12 = load %union.rec*, %union.rec** %y, align 8
  %os118 = bitcast %union.rec* %12 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %opred21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred21, align 8
  store %union.rec* %13, %union.rec** %y, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %14 = load %union.rec*, %union.rec** %y, align 8
  %os122 = bitcast %union.rec* %14 to %struct.word_type*
  %ou123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 1
  %os1124 = bitcast %union.FIRST_UNION* %ou123 to %struct.anon*
  %otype25 = getelementptr inbounds %struct.anon, %struct.anon* %os1124, i32 0, i32 0
  %15 = load i8, i8* %otype25, align 1
  %conv26 = zext i8 %15 to i32
  %cmp27 = icmp eq i32 %conv26, 1
  br i1 %cmp27, label %if.then, label %if.else.42

if.then:                                          ; preds = %for.end
  %16 = load %union.rec*, %union.rec** %y, align 8
  %os129 = bitcast %union.rec* %16 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 2
  %os21 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.0*
  %ovspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os21, i32 0, i32 2
  %17 = load i8, i8* %ovspace, align 1
  %conv30 = zext i8 %17 to i32
  %cmp31 = icmp sgt i32 %conv30, 0
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.then
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.41

if.else:                                          ; preds = %if.then
  %19 = load %union.rec*, %union.rec** %y, align 8
  %os134 = bitcast %union.rec* %19 to %struct.word_type*
  %ou235 = getelementptr inbounds %struct.word_type, %struct.word_type* %os134, i32 0, i32 2
  %os2136 = bitcast %union.SECOND_UNION* %ou235 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os2136, i32 0, i32 1
  %20 = load i8, i8* %ohspace, align 1
  %conv37 = zext i8 %20 to i32
  %cmp38 = icmp sgt i32 %conv37, 0
  br i1 %cmp38, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %if.else
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.40, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end, %if.then.33
  br label %if.end.95

if.else.42:                                       ; preds = %for.end
  %22 = load %union.rec*, %union.rec** %y, align 8
  %os143 = bitcast %union.rec* %22 to %struct.word_type*
  %ou144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 1
  %os1145 = bitcast %union.FIRST_UNION* %ou144 to %struct.anon*
  %otype46 = getelementptr inbounds %struct.anon, %struct.anon* %os1145, i32 0, i32 0
  %23 = load i8, i8* %otype46, align 1
  %conv47 = zext i8 %23 to i32
  %cmp48 = icmp eq i32 %conv47, 11
  br i1 %cmp48, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.42
  %24 = load %union.rec*, %union.rec** %y, align 8
  %os150 = bitcast %union.rec* %24 to %struct.word_type*
  %ou151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 1
  %os1152 = bitcast %union.FIRST_UNION* %ou151 to %struct.anon*
  %otype53 = getelementptr inbounds %struct.anon, %struct.anon* %os1152, i32 0, i32 0
  %25 = load i8, i8* %otype53, align 1
  %conv54 = zext i8 %25 to i32
  %cmp55 = icmp eq i32 %conv54, 12
  br i1 %cmp55, label %if.then.65, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false
  %26 = load %union.rec*, %union.rec** %y, align 8
  %os158 = bitcast %union.rec* %26 to %struct.word_type*
  %ou159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 1
  %os1160 = bitcast %union.FIRST_UNION* %ou159 to %struct.anon*
  %otype61 = getelementptr inbounds %struct.anon, %struct.anon* %os1160, i32 0, i32 0
  %27 = load i8, i8* %otype61, align 1
  %conv62 = zext i8 %27 to i32
  %cmp63 = icmp eq i32 %conv62, 17
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %lor.lhs.false.57, %lor.lhs.false, %if.else.42
  %28 = load %union.rec*, %union.rec** %y, align 8
  call void @PDF_PrintGraphicObject(%union.rec* %28)
  br label %if.end.94

if.else.66:                                       ; preds = %lor.lhs.false.57
  %29 = load %union.rec*, %union.rec** %y, align 8
  %os167 = bitcast %union.rec* %29 to %struct.word_type*
  %ou168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os167, i32 0, i32 1
  %os1169 = bitcast %union.FIRST_UNION* %ou168 to %struct.anon*
  %otype70 = getelementptr inbounds %struct.anon, %struct.anon* %os1169, i32 0, i32 0
  %30 = load i8, i8* %otype70, align 1
  %conv71 = zext i8 %30 to i32
  %cmp72 = icmp eq i32 %conv71, 26
  br i1 %cmp72, label %if.then.89, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %if.else.66
  %31 = load %union.rec*, %union.rec** %y, align 8
  %os175 = bitcast %union.rec* %31 to %struct.word_type*
  %ou176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 1
  %os1177 = bitcast %union.FIRST_UNION* %ou176 to %struct.anon*
  %otype78 = getelementptr inbounds %struct.anon, %struct.anon* %os1177, i32 0, i32 0
  %32 = load i8, i8* %otype78, align 1
  %conv79 = zext i8 %32 to i32
  %cmp80 = icmp sge i32 %conv79, 119
  br i1 %cmp80, label %land.lhs.true, label %if.else.90

land.lhs.true:                                    ; preds = %lor.lhs.false.74
  %33 = load %union.rec*, %union.rec** %y, align 8
  %os182 = bitcast %union.rec* %33 to %struct.word_type*
  %ou183 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 1
  %os1184 = bitcast %union.FIRST_UNION* %ou183 to %struct.anon*
  %otype85 = getelementptr inbounds %struct.anon, %struct.anon* %os1184, i32 0, i32 0
  %34 = load i8, i8* %otype85, align 1
  %conv86 = zext i8 %34 to i32
  %cmp87 = icmp sle i32 %conv86, 138
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %land.lhs.true, %if.else.66
  br label %if.end.93

if.else.90:                                       ; preds = %land.lhs.true, %lor.lhs.false.74
  %35 = load %union.rec*, %union.rec** %x.addr, align 8
  %os191 = bitcast %union.rec* %35 to %struct.word_type*
  %ou192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os191, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou192 to %struct.FILE_POS*
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 50, i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.65
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.41
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %36 = load %union.rec*, %union.rec** %link, align 8
  %os197 = bitcast %union.rec* %36 to %struct.word_type*
  %olist98 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist98, i32 0, i64 0
  %osucc100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx99, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %osucc100, align 8
  store %union.rec* %37, %union.rec** %link, align 8
  br label %for.cond

for.end.101:                                      ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %38 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1102 = bitcast %union.rec* %38 to %struct.word_type*
  %ou1103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 1
  %ofpos104 = bitcast %union.FIRST_UNION* %ou1103 to %struct.FILE_POS*
  %call105 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 50, i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.101, %sw.bb
  ret void
}

declare void @PDFPage_WriteGraphic(%struct._IO_FILE*, i8*) #1

declare void @PDFPage_Write(%struct._IO_FILE*, i8*) #1

; Function Attrs: nounwind uwtable
define void @PDF_DefineGraphicNames(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %str = alloca [256 x i8], align 16
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 97
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %3 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %ofont = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style, i32 0, i32 4
  %bf.load = load i32, i32* %ofont, align 4
  %bf.clear = and i32 %bf.load, 4095
  %4 = load i32, i32* @currentfont, align 4
  %cmp2 = icmp ne i32 %bf.clear, %4
  br i1 %cmp2, label %if.then.4, label %if.end.19

if.then.4:                                        ; preds = %if.end
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os25 = bitcast %union.rec* %5 to %struct.closure_type*
  %ou46 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os25, i32 0, i32 4
  %osave_style7 = bitcast %union.FOURTH_UNION* %ou46 to %struct.STYLE*
  %ofont8 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style7, i32 0, i32 4
  %bf.load9 = load i32, i32* %ofont8, align 4
  %bf.clear10 = and i32 %bf.load9, 4095
  store i32 %bf.clear10, i32* @currentfont, align 4
  %6 = load i32, i32* @currentfont, align 4
  %cmp11 = icmp ugt i32 %6, 0
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.then.4
  %7 = load i32, i32* @currentfont, align 4
  %call14 = call i32 @FontHalfXHeight(i32 %7)
  %conv15 = trunc i32 %call14 to i16
  store i16 %conv15, i16* @currentxheight2, align 2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %9 = load i32, i32* @currentfont, align 4
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  %call16 = call i32 @FontSize(i32 %9, %union.rec* %10)
  %11 = load i32, i32* @currentfont, align 4
  %call17 = call i8* @FontName(i32 %11)
  call void @PDFFont_Set(%struct._IO_FILE* %8, i32 %call16, i8* %call17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %if.then.4
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os220 = bitcast %union.rec* %12 to %struct.closure_type*
  %ou421 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os220, i32 0, i32 4
  %osave_style22 = bitcast %union.FOURTH_UNION* %ou421 to %struct.STYLE*
  %ocolour = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style22, i32 0, i32 4
  %bf.load23 = load i32, i32* %ocolour, align 4
  %bf.lshr = lshr i32 %bf.load23, 12
  %bf.clear24 = and i32 %bf.lshr, 1023
  %13 = load i32, i32* @currentcolour, align 4
  %cmp25 = icmp ne i32 %bf.clear24, %13
  br i1 %cmp25, label %if.then.27, label %if.end.42

if.then.27:                                       ; preds = %if.end.19
  %14 = load %union.rec*, %union.rec** %x.addr, align 8
  %os228 = bitcast %union.rec* %14 to %struct.closure_type*
  %ou429 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os228, i32 0, i32 4
  %osave_style30 = bitcast %union.FOURTH_UNION* %ou429 to %struct.STYLE*
  %ocolour31 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style30, i32 0, i32 4
  %bf.load32 = load i32, i32* %ocolour31, align 4
  %bf.lshr33 = lshr i32 %bf.load32, 12
  %bf.clear34 = and i32 %bf.lshr33, 1023
  store i32 %bf.clear34, i32* @currentcolour, align 4
  %15 = load i32, i32* @currentcolour, align 4
  %cmp35 = icmp ugt i32 %15, 0
  br i1 %cmp35, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %if.then.27
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %str, i32 0, i32 0
  %16 = load i32, i32* @currentcolour, align 4
  %call38 = call i8* @ColourCommand(i32 %16)
  %call39 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* %call38) #4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %arraydecay40 = getelementptr inbounds [256 x i8], [256 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %17, i8* %arraydecay40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %if.then.27
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.19
  %18 = load %union.rec*, %union.rec** %x.addr, align 8
  %os143 = bitcast %union.rec* %18 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  %19 = load i32, i32* %arrayidx, align 4
  %20 = load %union.rec*, %union.rec** %x.addr, align 8
  %os144 = bitcast %union.rec* %20 to %struct.word_type*
  %ou345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 3
  %os3146 = bitcast %union.THIRD_UNION* %ou345 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3146, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %21 = load i32, i32* %arrayidx47, align 4
  %add = add nsw i32 %19, %21
  %22 = load %union.rec*, %union.rec** %x.addr, align 8
  %os148 = bitcast %union.rec* %22 to %struct.word_type*
  %ou349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os148, i32 0, i32 3
  %os3150 = bitcast %union.THIRD_UNION* %ou349 to %struct.anon.6*
  %oback51 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x i32], [2 x i32]* %oback51, i32 0, i64 1
  %23 = load i32, i32* %arrayidx52, align 4
  %24 = load %union.rec*, %union.rec** %x.addr, align 8
  %os153 = bitcast %union.rec* %24 to %struct.word_type*
  %ou354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 3
  %os3155 = bitcast %union.THIRD_UNION* %ou354 to %struct.anon.6*
  %ofwd56 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3155, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd56, i32 0, i64 1
  %25 = load i32, i32* %arrayidx57, align 4
  %add58 = add nsw i32 %23, %25
  %26 = load %union.rec*, %union.rec** %x.addr, align 8
  %os159 = bitcast %union.rec* %26 to %struct.word_type*
  %ou360 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 3
  %os3161 = bitcast %union.THIRD_UNION* %ou360 to %struct.anon.6*
  %oback62 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3161, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [2 x i32], [2 x i32]* %oback62, i32 0, i64 0
  %27 = load i32, i32* %arrayidx63, align 4
  %28 = load %union.rec*, %union.rec** %x.addr, align 8
  %os164 = bitcast %union.rec* %28 to %struct.word_type*
  %ou365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 3
  %os3166 = bitcast %union.THIRD_UNION* %ou365 to %struct.anon.6*
  %ofwd67 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3166, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd67, i32 0, i64 1
  %29 = load i32, i32* %arrayidx68, align 4
  %30 = load i32, i32* @currentfont, align 4
  %cmp69 = icmp ule i32 %30, 0
  br i1 %cmp69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.42
  br label %cond.end

cond.false:                                       ; preds = %if.end.42
  %31 = load i32, i32* @currentfont, align 4
  %32 = load %union.rec*, %union.rec** %x.addr, align 8
  %call71 = call i32 @FontSize(i32 %31, %union.rec* %32)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 240, %cond.true ], [ %call71, %cond.false ]
  %33 = load %union.rec*, %union.rec** %x.addr, align 8
  %os272 = bitcast %union.rec* %33 to %struct.closure_type*
  %ou473 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os272, i32 0, i32 4
  %osave_style74 = bitcast %union.FOURTH_UNION* %ou473 to %struct.STYLE*
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style74, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap, i32 0, i32 1
  %34 = load i16, i16* %owidth, align 2
  %conv75 = sext i16 %34 to i32
  %35 = load %union.rec*, %union.rec** %x.addr, align 8
  %os276 = bitcast %union.rec* %35 to %struct.closure_type*
  %ou477 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os276, i32 0, i32 4
  %osave_style78 = bitcast %union.FOURTH_UNION* %ou477 to %struct.STYLE*
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style78, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu2 to %struct.GAP*
  %owidth79 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap, i32 0, i32 1
  %36 = load i16, i16* %owidth79, align 2
  %conv80 = sext i16 %36 to i32
  call void @PDFPage_SetVars(i32 %add, i32 %add58, i32 %27, i32 %29, i32 %cond, i32 %conv75, i32 %conv80)
  ret void
}

declare i32 @FontHalfXHeight(i32) #1

declare void @PDFFont_Set(%struct._IO_FILE*, i32, i8*) #1

declare i32 @FontSize(i32, %union.rec*) #1

declare i8* @FontName(i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i8* @ColourCommand(i32) #1

declare void @PDFPage_SetVars(i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @PDF_SaveTranslateDefineSave(%union.rec* %x, i32 %xdist, i32 %ydist) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %xdist.addr = alloca i32, align 4
  %ydist.addr = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %xdist, i32* %xdist.addr, align 4
  store i32 %ydist, i32* %ydist.addr, align 4
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @PDF_SaveGraphicState(%union.rec* %0)
  %1 = load i32, i32* %xdist.addr, align 4
  %2 = load i32, i32* %ydist.addr, align 4
  call void @PDF_CoordTranslate(i32 %1, i32 %2)
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @PDF_DefineGraphicNames(%union.rec* %3)
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @PDF_SaveGraphicState(%union.rec* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_CoordTranslate(i32 %xdist, i32 %ydist) #0 {
entry:
  %xdist.addr = alloca i32, align 4
  %ydist.addr = alloca i32, align 4
  store i32 %xdist, i32* %xdist.addr, align 4
  store i32 %ydist, i32* %ydist.addr, align 4
  %0 = load i32, i32* %xdist.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %ydist.addr, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %3 = load i32, i32* %xdist.addr, align 4
  %conv = sitofp i32 %3 to float
  %4 = load i32, i32* %ydist.addr, align 4
  %conv2 = sitofp i32 %4 to float
  call void @PDFPage_Translate(%struct._IO_FILE* %2, float %conv, float %conv2)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  store i32 0, i32* @cpexists, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDF_PrintGraphicInclude(%union.rec* %x, i32 %colmark, i32 %rowmark) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %colmark.addr = alloca i32, align 4
  %rowmark.addr = alloca i32, align 4
  %y = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %colmark, i32* %colmark.addr, align 4
  store i32 %rowmark, i32* %rowmark.addr, align 4
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  %os11 = bitcast %union.rec* %1 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 0
  %2 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %2, %union.rec** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %union.rec*, %union.rec** %y, align 8
  %os14 = bitcast %union.rec* %3 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 1
  %os115 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os115, i32 0, i32 0
  %4 = load i8, i8* %otype, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %union.rec*, %union.rec** %y, align 8
  %os17 = bitcast %union.rec* %5 to %struct.word_type*
  %olist8 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist8, i32 0, i64 1
  %opred10 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx9, i32 0, i32 0
  %6 = load %union.rec*, %union.rec** %opred10, align 8
  store %union.rec* %6, %union.rec** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os111 = bitcast %union.rec* %7 to %struct.word_type*
  %ou112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou112 to %struct.FILE_POS*
  %8 = load %union.rec*, %union.rec** %y, align 8
  %os113 = bitcast %union.rec* %8 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 50, i32 4, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* %arraydecay)
  ret void
}

declare void @PDFPage_Translate(%struct._IO_FILE*, float, float) #1

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintInitialize(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @out_fp, align 8
  store i32 0, i32* @prologue_done, align 4
  store i32 -1, i32* @gs_stack_top, align 4
  store i32 0, i32* @currentfont, align 4
  store i32 0, i32* @currentcolour, align 4
  store i32 0, i32* @cpexists, align 4
  store i32 0, i32* @pagecount, align 4
  store i32 0, i32* @wordcount, align 4
  %1 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp = icmp uge i64 %conv1, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.FILE_POS* %2)
  br label %if.end.13

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %4 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp3 = icmp eq %union.rec* %4, null
  br i1 %cmp3, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %5 = load i32, i32* @zz_size, align 4
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6 = call %union.rec* @GetMemory(i32 %5, %struct.FILE_POS* %6)
  store %union.rec* %call6, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %7 = load i32, i32* @zz_size, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom8
  %8 = load %union.rec*, %union.rec** %arrayidx9, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  %9 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %9 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred, align 8
  %11 = load i32, i32* @zz_size, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom11
  store %union.rec* %10, %union.rec** %arrayidx12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.5
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os114 = bitcast %union.rec* %12 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 17, i8* %otype, align 1
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os115 = bitcast %union.rec* %14 to %struct.word_type*
  %olist16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist16, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx17, i32 0, i32 1
  store %union.rec* %13, %union.rec** %osucc, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os118 = bitcast %union.rec* %15 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %opred21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  store %union.rec* %13, %union.rec** %opred21, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %16 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 0
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  store %union.rec* %13, %union.rec** %osucc25, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os126 = bitcast %union.rec* %17 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 0
  %opred29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  store %union.rec* %13, %union.rec** %opred29, align 8
  store %union.rec* %13, %union.rec** @needs, align 8
  %18 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv30 = zext i8 %18 to i32
  store i32 %conv30, i32* @zz_size, align 4
  %conv31 = sext i32 %conv30 to i64
  %cmp32 = icmp uge i64 %conv31, 265
  br i1 %cmp32, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.end.13
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call35 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.FILE_POS* %19)
  br label %if.end.53

if.else.36:                                       ; preds = %if.end.13
  %20 = load i32, i32* @zz_size, align 4
  %idxprom37 = sext i32 %20 to i64
  %arrayidx38 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom37
  %21 = load %union.rec*, %union.rec** %arrayidx38, align 8
  %cmp39 = icmp eq %union.rec* %21, null
  br i1 %cmp39, label %if.then.41, label %if.else.43

if.then.41:                                       ; preds = %if.else.36
  %22 = load i32, i32* @zz_size, align 4
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call42 = call %union.rec* @GetMemory(i32 %22, %struct.FILE_POS* %23)
  store %union.rec* %call42, %union.rec** @zz_hold, align 8
  br label %if.end.52

if.else.43:                                       ; preds = %if.else.36
  %24 = load i32, i32* @zz_size, align 4
  %idxprom44 = sext i32 %24 to i64
  %arrayidx45 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom44
  %25 = load %union.rec*, %union.rec** %arrayidx45, align 8
  store %union.rec* %25, %union.rec** @zz_hold, align 8
  store %union.rec* %25, %union.rec** @zz_hold, align 8
  %26 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os146 = bitcast %union.rec* %26 to %struct.word_type*
  %olist47 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist47, i32 0, i64 0
  %opred49 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx48, i32 0, i32 0
  %27 = load %union.rec*, %union.rec** %opred49, align 8
  %28 = load i32, i32* @zz_size, align 4
  %idxprom50 = sext i32 %28 to i64
  %arrayidx51 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom50
  store %union.rec* %27, %union.rec** %arrayidx51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.43, %if.then.41
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.34
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os154 = bitcast %union.rec* %29 to %struct.word_type*
  %ou155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 1
  %os1156 = bitcast %union.FIRST_UNION* %ou155 to %struct.anon*
  %otype57 = getelementptr inbounds %struct.anon, %struct.anon* %os1156, i32 0, i32 0
  store i8 17, i8* %otype57, align 1
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os158 = bitcast %union.rec* %31 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 1
  %osucc61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 1
  store %union.rec* %30, %union.rec** %osucc61, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os162 = bitcast %union.rec* %32 to %struct.word_type*
  %olist63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist63, i32 0, i64 1
  %opred65 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx64, i32 0, i32 0
  store %union.rec* %30, %union.rec** %opred65, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os166 = bitcast %union.rec* %33 to %struct.word_type*
  %olist67 = getelementptr inbounds %struct.word_type, %struct.word_type* %os166, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist67, i32 0, i64 0
  %osucc69 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx68, i32 0, i32 1
  store %union.rec* %30, %union.rec** %osucc69, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os170 = bitcast %union.rec* %34 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 0
  %opred73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 0
  store %union.rec* %30, %union.rec** %opred73, align 8
  store %union.rec* %30, %union.rec** @supplied, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintLength(i8* %buff, i32 %length, i32 %length_dim) #0 {
entry:
  %buff.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %length_dim.addr = alloca i32, align 4
  store i8* %buff, i8** %buff.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 %length_dim, i32* %length_dim.addr, align 4
  %0 = load i8*, i8** %buff.addr, align 8
  %1 = load i32, i32* %length.addr, align 4
  %conv = sitofp i32 %1 to float
  %div = fdiv float %conv, 5.670000e+02
  %conv1 = fpext float %div to double
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), double %conv1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintPageSetupForFont(%union.rec* %face, i32 %font_curr_page, i8* %font_name, i8* %first_size_str) #0 {
entry:
  %face.addr = alloca %union.rec*, align 8
  %font_curr_page.addr = alloca i32, align 4
  %font_name.addr = alloca i8*, align 8
  %first_size_str.addr = alloca i8*, align 8
  %enc = alloca i8*, align 8
  %m = alloca i32, align 4
  store %union.rec* %face, %union.rec** %face.addr, align 8
  store i32 %font_curr_page, i32* %font_curr_page.addr, align 4
  store i8* %font_name, i8** %font_name.addr, align 8
  store i8* %first_size_str, i8** %first_size_str.addr, align 8
  store i8* null, i8** %enc, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %1 = load i8*, i8** %font_name.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i8* %1)
  %2 = load %union.rec*, %union.rec** %face.addr, align 8
  %os1 = bitcast %union.rec* %2 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 3
  %os32 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.7*
  %ofont_recoded = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32, i32 0, i32 3
  %bf.load = load i8, i8* %ofont_recoded, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %union.rec*, %union.rec** %face.addr, align 8
  %os11 = bitcast %union.rec* %3 to %struct.word_type*
  %ou32 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 3
  %os323 = bitcast %union.THIRD_UNION* %ou32 to %struct.anon.7*
  %ofont_mapping = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os323, i32 0, i32 3
  %bf.load4 = load i8, i8* %ofont_mapping, align 4
  %bf.clear = and i8 %bf.load4, 127
  %bf.cast5 = zext i8 %bf.clear to i32
  store i32 %bf.cast5, i32* %m, align 4
  %4 = load i32, i32* %m, align 4
  call void @MapEnsurePrinted(i32 %4, i32 1)
  %5 = load i32, i32* %m, align 4
  %call6 = call i8* @MapEncodingName(i32 %5)
  store i8* %call6, i8** %enc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %7 = load i8*, i8** %first_size_str.addr, align 8
  %8 = load i8*, i8** %font_name.addr, align 8
  %9 = load i8*, i8** %enc, align 8
  call void @PDFFont_AddFont(%struct._IO_FILE* %6, i8* %7, i8* %8, i8* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintPageResourceForFont(i8* %font_name, i32 %first) #0 {
entry:
  %font_name.addr = alloca i8*, align 8
  %first.addr = alloca i32, align 4
  store i8* %font_name, i8** %font_name.addr, align 8
  store i32 %first, i32* %first.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintMapping(i32 %m) #0 {
entry:
  %m.addr = alloca i32, align 4
  %map = alloca %struct.mapvec*, align 8
  %i = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.mapvec*], [0 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom
  %1 = load %struct.mapvec*, %struct.mapvec** %arrayidx, align 8
  store %struct.mapvec* %1, %struct.mapvec** %map, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %3 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %name = getelementptr inbounds %struct.mapvec, %struct.mapvec* %3, i32 0, i32 4
  %4 = load %union.rec*, %union.rec** %name, align 8
  %os1 = bitcast %union.rec* %4 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  call void @PDFFile_BeginFontEncoding(%struct._IO_FILE* %2, i8* %arraydecay)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %5, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %vector = getelementptr inbounds %struct.mapvec, %struct.mapvec* %8, i32 0, i32 5
  %arrayidx2 = getelementptr inbounds [256 x %union.rec*], [256 x %union.rec*]* %vector, i32 0, i64 %idxprom1
  %9 = load %union.rec*, %union.rec** %arrayidx2, align 8
  %os13 = bitcast %union.rec* %9 to %struct.word_type*
  %ostring4 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 4
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring4, i32 0, i32 0
  %10 = load i32, i32* %i, align 4
  %add = add nsw i32 %10, 1
  %rem = srem i32 %add, 8
  %cmp6 = icmp ne i32 %rem, 0
  %cond = select i1 %cmp6, i32 32, i32 10
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay5, i32 %cond)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFFile_EndFontEncoding(%struct._IO_FILE* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintBeforeFirstPage(i32 %h, i32 %v, i8* %label) #0 {
entry:
  %h.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  store i32 %h, i32* %h.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %1 = load i32, i32* %h.addr, align 4
  %div = sdiv i32 %1, 20
  %2 = load i32, i32* %v.addr, align 4
  %div1 = sdiv i32 %2, 20
  call void @PDFFile_Init(%struct._IO_FILE* %0, i32 %div, i32 %div1, i32 1440, i32 567, i32 20, i32 120)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageSetup(%struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Init(%struct._IO_FILE* %4, float 0x3FA99999A0000000, i32 10)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageResources(%struct._IO_FILE* %5)
  call void @FontAdvanceCurrentPage()
  store i32 1, i32* @prologue_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintBetweenPages(i32 %h, i32 %v, i8* %label) #0 {
entry:
  %h.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  store i32 %h, i32* %h.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Cleanup(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFPage_Init(%struct._IO_FILE* %1, float 0x3FA99999A0000000, i32 10)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageResources(%struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageSetup(%struct._IO_FILE* %3)
  call void @FontAdvanceCurrentPage()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintWord(%union.rec* %x, i32 %hpos, i32 %vpos) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %hpos.addr = alloca i32, align 4
  %vpos.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  %lig = alloca i8*, align 8
  %unacc = alloca i8*, align 8
  %ksize = alloca i32, align 4
  %command = alloca i8*, align 8
  %m = alloca i32, align 4
  %composite = alloca i16*, align 8
  %cmp = alloca %struct.composite_rec*, align 8
  %str = alloca [256 x i8], align 16
  %ua_ch1 = alloca i32, align 4
  %ua_ch2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %kc = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %hpos, i32* %hpos.addr, align 4
  store i32 %vpos, i32* %vpos.addr, align 4
  %0 = load i32, i32* @TotalWordCount, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @TotalWordCount, align 4
  %1 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %2 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %2, align 4
  %bf.clear = and i32 %bf.load, 4095
  %3 = load i32, i32* @currentfont, align 4
  %cmp1 = icmp ne i32 %bf.clear, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %4 to %struct.word_type*
  %ou23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 2
  %os224 = bitcast %union.SECOND_UNION* %ou23 to %struct.anon.1*
  %5 = bitcast %struct.anon.1* %os224 to i32*
  %bf.load5 = load i32, i32* %5, align 4
  %bf.clear6 = and i32 %bf.load5, 4095
  store i32 %bf.clear6, i32* @currentfont, align 4
  %6 = load i32, i32* @currentfont, align 4
  %call = call i32 @FontHalfXHeight(i32 %6)
  %conv = trunc i32 %call to i16
  store i16 %conv, i16* @currentxheight2, align 2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %8 = load i32, i32* @currentfont, align 4
  %9 = load %union.rec*, %union.rec** %x.addr, align 8
  %call7 = call i32 @FontSize(i32 %8, %union.rec* %9)
  %10 = load i32, i32* @currentfont, align 4
  %call8 = call i8* @FontName(i32 %10)
  call void @PDFFont_Set(%struct._IO_FILE* %7, i32 %call7, i8* %call8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %union.rec*, %union.rec** %x.addr, align 8
  %os19 = bitcast %union.rec* %11 to %struct.word_type*
  %ou210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 2
  %os2211 = bitcast %union.SECOND_UNION* %ou210 to %struct.anon.1*
  %12 = bitcast %struct.anon.1* %os2211 to i32*
  %bf.load12 = load i32, i32* %12, align 4
  %bf.lshr = lshr i32 %bf.load12, 12
  %bf.clear13 = and i32 %bf.lshr, 1023
  %13 = load i32, i32* @currentcolour, align 4
  %cmp14 = icmp ne i32 %bf.clear13, %13
  br i1 %cmp14, label %if.then.16, label %if.end.30

if.then.16:                                       ; preds = %if.end
  %14 = load %union.rec*, %union.rec** %x.addr, align 8
  %os117 = bitcast %union.rec* %14 to %struct.word_type*
  %ou218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 2
  %os2219 = bitcast %union.SECOND_UNION* %ou218 to %struct.anon.1*
  %15 = bitcast %struct.anon.1* %os2219 to i32*
  %bf.load20 = load i32, i32* %15, align 4
  %bf.lshr21 = lshr i32 %bf.load20, 12
  %bf.clear22 = and i32 %bf.lshr21, 1023
  store i32 %bf.clear22, i32* @currentcolour, align 4
  %16 = load i32, i32* @currentcolour, align 4
  %cmp23 = icmp ugt i32 %16, 0
  br i1 %cmp23, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.then.16
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %str, i32 0, i32 0
  %17 = load i32, i32* @currentcolour, align 4
  %call26 = call i8* @ColourCommand(i32 %17)
  %call27 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* %call26) #4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %arraydecay28 = getelementptr inbounds [256 x i8], [256 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %18, i8* %arraydecay28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.then.16
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  %19 = load i32, i32* %vpos.addr, align 4
  %20 = load i16, i16* @currentxheight2, align 2
  %conv31 = sext i16 %20 to i32
  %sub = sub nsw i32 %19, %conv31
  store i32 %sub, i32* %vpos.addr, align 4
  %21 = load i32, i32* @cpexists, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.30
  %22 = load i32, i32* @currenty, align 4
  %23 = load i32, i32* %vpos.addr, align 4
  %cmp32 = icmp eq i32 %22, %23
  br i1 %cmp32, label %land.lhs.true.34, label %if.else

land.lhs.true.34:                                 ; preds = %land.lhs.true
  %call35 = call i32 @PDFHasValidTextMatrix()
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %land.lhs.true.34
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8** %command, align 8
  br label %if.end.38

if.else:                                          ; preds = %land.lhs.true.34, %land.lhs.true, %if.end.30
  %24 = load i32, i32* %vpos.addr, align 4
  store i32 %24, i32* @currenty, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8** %command, align 8
  store i32 1, i32* @cpexists, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.37
  %25 = load %union.rec*, %union.rec** %x.addr, align 8
  %os139 = bitcast %union.rec* %25 to %struct.word_type*
  %ou240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 2
  %os2241 = bitcast %union.SECOND_UNION* %ou240 to %struct.anon.1*
  %26 = bitcast %struct.anon.1* %os2241 to i32*
  %bf.load42 = load i32, i32* %26, align 4
  %bf.clear43 = and i32 %bf.load42, 4095
  %idxprom = zext i32 %bf.clear43 to i64
  %27 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx = getelementptr inbounds %struct.font_rec, %struct.font_rec* %27, i64 %idxprom
  %lig_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx, i32 0, i32 1
  %28 = load i8*, i8** %lig_table, align 8
  store i8* %28, i8** %lig, align 8
  %29 = load %union.rec*, %union.rec** %x.addr, align 8
  %os144 = bitcast %union.rec* %29 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 4
  %arraydecay45 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  store i8* %arraydecay45, i8** %q, align 8
  store i8* %arraydecay45, i8** %p, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.38
  %30 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %q, align 8
  %incdec.ptr46 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr46, i8** %q, align 8
  store i8 %31, i8* %32, align 1
  %idxprom47 = zext i8 %31 to i64
  %33 = load i8*, i8** %lig, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %33, i64 %idxprom47
  %34 = load i8, i8* %arrayidx48, align 1
  %tobool49 = icmp ne i8 %34, 0
  br i1 %tobool49, label %if.then.50, label %if.end.102

if.then.50:                                       ; preds = %do.body
  %35 = load i8*, i8** %q, align 8
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 -1
  %36 = load i8, i8* %add.ptr, align 1
  %idxprom51 = zext i8 %36 to i64
  %37 = load i8*, i8** %lig, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %37, i64 %idxprom51
  %38 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %38 to i32
  %cmp54 = icmp eq i32 %conv53, 1
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.then.50
  br label %do.cond

if.else.57:                                       ; preds = %if.then.50
  %39 = load i8*, i8** %p, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %39, i64 -1
  %40 = load i8, i8* %add.ptr58, align 1
  %idxprom59 = zext i8 %40 to i64
  %41 = load i8*, i8** %lig, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %41, i64 %idxprom59
  %42 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %42 to i32
  %add = add nsw i32 %conv61, 256
  %idxprom62 = sext i32 %add to i64
  %43 = load i8*, i8** %lig, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %43, i64 %idxprom62
  store i8* %arrayidx63, i8** %a, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.99, %if.else.57
  %44 = load i8*, i8** %a, align 8
  %incdec.ptr64 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr64, i8** %a, align 8
  %45 = load i8, i8* %44, align 1
  %conv65 = zext i8 %45 to i32
  %46 = load i8*, i8** %p, align 8
  %add.ptr66 = getelementptr inbounds i8, i8* %46, i64 -1
  %47 = load i8, i8* %add.ptr66, align 1
  %conv67 = zext i8 %47 to i32
  %cmp68 = icmp eq i32 %conv65, %conv67
  br i1 %cmp68, label %while.body, label %while.end.100

while.body:                                       ; preds = %while.cond
  %48 = load i8*, i8** %p, align 8
  store i8* %48, i8** %b, align 8
  br label %while.cond.70

while.cond.70:                                    ; preds = %while.body.83, %while.body
  %49 = load i8*, i8** %a, align 8
  %50 = load i8, i8* %49, align 1
  %conv71 = zext i8 %50 to i32
  %51 = load i8*, i8** %b, align 8
  %52 = load i8, i8* %51, align 1
  %conv72 = zext i8 %52 to i32
  %cmp73 = icmp eq i32 %conv71, %conv72
  br i1 %cmp73, label %land.lhs.true.75, label %land.end

land.lhs.true.75:                                 ; preds = %while.cond.70
  %53 = load i8*, i8** %a, align 8
  %add.ptr76 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %add.ptr76, align 1
  %conv77 = zext i8 %54 to i32
  %cmp78 = icmp ne i32 %conv77, 0
  br i1 %cmp78, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.75
  %55 = load i8*, i8** %b, align 8
  %56 = load i8, i8* %55, align 1
  %conv80 = zext i8 %56 to i32
  %cmp81 = icmp ne i32 %conv80, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.75, %while.cond.70
  %57 = phi i1 [ false, %land.lhs.true.75 ], [ false, %while.cond.70 ], [ %cmp81, %land.rhs ]
  br i1 %57, label %while.body.83, label %while.end

while.body.83:                                    ; preds = %land.end
  %58 = load i8*, i8** %a, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr84, i8** %a, align 8
  %59 = load i8*, i8** %b, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr85, i8** %b, align 8
  br label %while.cond.70

while.end:                                        ; preds = %land.end
  %60 = load i8*, i8** %a, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %60, i64 1
  %61 = load i8, i8* %add.ptr86, align 1
  %conv87 = zext i8 %61 to i32
  %cmp88 = icmp eq i32 %conv87, 0
  br i1 %cmp88, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %while.end
  %62 = load i8*, i8** %a, align 8
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %q, align 8
  %add.ptr91 = getelementptr inbounds i8, i8* %64, i64 -1
  store i8 %63, i8* %add.ptr91, align 1
  %65 = load i8*, i8** %b, align 8
  store i8* %65, i8** %p, align 8
  br label %while.end.100

if.else.92:                                       ; preds = %while.end
  br label %while.cond.93

while.cond.93:                                    ; preds = %while.body.96, %if.else.92
  %66 = load i8*, i8** %a, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr94, i8** %a, align 8
  %67 = load i8, i8* %incdec.ptr94, align 1
  %tobool95 = icmp ne i8 %67, 0
  br i1 %tobool95, label %while.body.96, label %while.end.97

while.body.96:                                    ; preds = %while.cond.93
  br label %while.cond.93

while.end.97:                                     ; preds = %while.cond.93
  %68 = load i8*, i8** %a, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr98, i8** %a, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %while.end.97
  br label %while.cond

while.end.100:                                    ; preds = %if.then.90, %while.cond
  br label %if.end.101

if.end.101:                                       ; preds = %while.end.100
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.102, %if.then.56
  %69 = load i8*, i8** %p, align 8
  %70 = load i8, i8* %69, align 1
  %tobool103 = icmp ne i8 %70, 0
  br i1 %tobool103, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %71 = load i8*, i8** %q, align 8
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %command, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %72, i64 0
  %73 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %73 to i32
  switch i32 %conv105, label %sw.epilog [
    i32 109, label %sw.bb
    i32 115, label %sw.bb.109
  ]

sw.bb:                                            ; preds = %do.end
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %75 = load i32, i32* %hpos.addr, align 4
  %76 = load i32, i32* %vpos.addr, align 4
  call void @PDFText_OpenXY(%struct._IO_FILE* %74, i32 %75, i32 %76)
  %77 = load i32, i32* %hpos.addr, align 4
  store i32 %77, i32* @PDF_PrintWord.last_hpos, align 4
  %78 = load i32, i32* %hpos.addr, align 4
  %79 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1106 = bitcast %union.rec* %79 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %80 = load i32, i32* %arrayidx107, align 4
  %add108 = add nsw i32 %78, %80
  store i32 %add108, i32* @PDF_PrintWord.next_hpos, align 4
  br label %sw.epilog

sw.bb.109:                                        ; preds = %do.end
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %82 = load i32, i32* %hpos.addr, align 4
  %83 = load i32, i32* @PDF_PrintWord.last_hpos, align 4
  %sub110 = sub nsw i32 %82, %83
  call void @PDFText_OpenX(%struct._IO_FILE* %81, i32 %sub110)
  %84 = load i32, i32* %hpos.addr, align 4
  store i32 %84, i32* @PDF_PrintWord.last_hpos, align 4
  %85 = load i32, i32* %hpos.addr, align 4
  %86 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1111 = bitcast %union.rec* %86 to %struct.word_type*
  %ou3112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 3
  %os31113 = bitcast %union.THIRD_UNION* %ou3112 to %struct.anon.6*
  %ofwd114 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31113, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd114, i32 0, i64 0
  %87 = load i32, i32* %arrayidx115, align 4
  %add116 = add nsw i32 %85, %87
  store i32 %add116, i32* @PDF_PrintWord.next_hpos, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.109, %sw.bb
  %88 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1117 = bitcast %union.rec* %88 to %struct.word_type*
  %ostring118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 4
  %arraydecay119 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring118, i32 0, i32 0
  store i8* %arraydecay119, i8** %p, align 8
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %90 = load i8*, i8** %p, align 8
  %91 = load i8, i8* %90, align 1
  %idxprom120 = zext i8 %91 to i64
  %arrayidx121 = getelementptr inbounds [0 x i8*], [0 x i8*]* @EightBitToPrintForm, i32 0, i64 %idxprom120
  %92 = load i8*, i8** %arrayidx121, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %89, i8* %92)
  %93 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1122 = bitcast %union.rec* %93 to %struct.word_type*
  %ou2123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1122, i32 0, i32 2
  %os22124 = bitcast %union.SECOND_UNION* %ou2123 to %struct.anon.1*
  %94 = bitcast %struct.anon.1* %os22124 to i32*
  %bf.load125 = load i32, i32* %94, align 4
  %bf.clear126 = and i32 %bf.load125, 4095
  %idxprom127 = zext i32 %bf.clear126 to i64
  %95 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx128 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %95, i64 %idxprom127
  %font_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx128, i32 0, i32 5
  %96 = load %union.rec*, %union.rec** %font_table, align 8
  %os1129 = bitcast %union.rec* %96 to %struct.word_type*
  %ou3130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1129, i32 0, i32 3
  %os32 = bitcast %union.THIRD_UNION* %ou3130 to %struct.anon.7*
  %ofont_mapping = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32, i32 0, i32 3
  %bf.load131 = load i8, i8* %ofont_mapping, align 4
  %bf.clear132 = and i8 %bf.load131, 127
  %bf.cast = zext i8 %bf.clear132 to i32
  store i32 %bf.cast, i32* %m, align 4
  %97 = load i32, i32* %m, align 4
  %idxprom133 = zext i32 %97 to i64
  %arrayidx134 = getelementptr inbounds [0 x %struct.mapvec*], [0 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom133
  %98 = load %struct.mapvec*, %struct.mapvec** %arrayidx134, align 8
  %map = getelementptr inbounds %struct.mapvec, %struct.mapvec* %98, i32 0, i32 7
  %arrayidx135 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %map, i32 0, i64 2
  %arraydecay136 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx135, i32 0, i32 0
  store i8* %arraydecay136, i8** %unacc, align 8
  %99 = load i8*, i8** %p, align 8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr137, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.240, %sw.epilog
  %100 = load i8*, i8** %p, align 8
  %101 = load i8, i8* %100, align 1
  %tobool138 = icmp ne i8 %101, 0
  br i1 %tobool138, label %for.body, label %for.end.242

for.body:                                         ; preds = %for.cond
  %102 = load i8*, i8** %p, align 8
  %add.ptr139 = getelementptr inbounds i8, i8* %102, i64 -1
  %103 = load i8, i8* %add.ptr139, align 1
  %idxprom140 = zext i8 %103 to i64
  %104 = load i8*, i8** %unacc, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %104, i64 %idxprom140
  %105 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %105 to i32
  store i32 %conv142, i32* %ua_ch1, align 4
  %106 = load i8*, i8** %p, align 8
  %107 = load i8, i8* %106, align 1
  %idxprom143 = zext i8 %107 to i64
  %108 = load i8*, i8** %unacc, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %108, i64 %idxprom143
  %109 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %109 to i32
  store i32 %conv145, i32* %ua_ch2, align 4
  %110 = load i32, i32* %ua_ch1, align 4
  %idxprom146 = sext i32 %110 to i64
  %111 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1147 = bitcast %union.rec* %111 to %struct.word_type*
  %ou2148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1147, i32 0, i32 2
  %os22149 = bitcast %union.SECOND_UNION* %ou2148 to %struct.anon.1*
  %112 = bitcast %struct.anon.1* %os22149 to i32*
  %bf.load150 = load i32, i32* %112, align 4
  %bf.clear151 = and i32 %bf.load150, 4095
  %idxprom152 = zext i32 %bf.clear151 to i64
  %113 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx153 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %113, i64 %idxprom152
  %original_face = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx153, i32 0, i32 6
  %114 = load %union.rec*, %union.rec** %original_face, align 8
  %os1154 = bitcast %union.rec* %114 to %struct.word_type*
  %ou2155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 2
  %os25 = bitcast %union.SECOND_UNION* %ou2155 to %struct.anon.4*
  %115 = bitcast %struct.anon.4* %os25 to i16*
  %bf.load156 = load i16, i16* %115, align 4
  %bf.clear157 = and i16 %bf.load156, 4095
  %bf.cast158 = zext i16 %bf.clear157 to i32
  %idxprom159 = zext i32 %bf.cast158 to i64
  %116 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx160 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %116, i64 %idxprom159
  %kern_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx160, i32 0, i32 9
  %117 = load i16*, i16** %kern_table, align 8
  %arrayidx161 = getelementptr inbounds i16, i16* %117, i64 %idxprom146
  %118 = load i16, i16* %arrayidx161, align 2
  %conv162 = zext i16 %118 to i32
  store i32 %conv162, i32* %i, align 4
  %119 = load i32, i32* %j, align 4
  %120 = load i32, i32* %i, align 4
  %cmp163 = icmp eq i32 %120, 0
  br i1 %cmp163, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %for.body
  store i32 0, i32* %ksize, align 4
  br label %if.end.233

if.else.166:                                      ; preds = %for.body
  %121 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1167 = bitcast %union.rec* %121 to %struct.word_type*
  %ou2168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 2
  %os22169 = bitcast %union.SECOND_UNION* %ou2168 to %struct.anon.1*
  %122 = bitcast %struct.anon.1* %os22169 to i32*
  %bf.load170 = load i32, i32* %122, align 4
  %bf.clear171 = and i32 %bf.load170, 4095
  %idxprom172 = zext i32 %bf.clear171 to i64
  %123 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx173 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %123, i64 %idxprom172
  %original_face174 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx173, i32 0, i32 6
  %124 = load %union.rec*, %union.rec** %original_face174, align 8
  %os1175 = bitcast %union.rec* %124 to %struct.word_type*
  %ou2176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 2
  %os25177 = bitcast %union.SECOND_UNION* %ou2176 to %struct.anon.4*
  %125 = bitcast %struct.anon.4* %os25177 to i16*
  %bf.load178 = load i16, i16* %125, align 4
  %bf.clear179 = and i16 %bf.load178, 4095
  %bf.cast180 = zext i16 %bf.clear179 to i32
  %idxprom181 = zext i32 %bf.cast180 to i64
  %126 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx182 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %126, i64 %idxprom181
  %kern_chars = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx182, i32 0, i32 10
  %127 = load i8*, i8** %kern_chars, align 8
  store i8* %127, i8** %kc, align 8
  %128 = load i32, i32* %i, align 4
  store i32 %128, i32* %j, align 4
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc, %if.else.166
  %129 = load i32, i32* %j, align 4
  %idxprom184 = sext i32 %129 to i64
  %130 = load i8*, i8** %kc, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %130, i64 %idxprom184
  %131 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %131 to i32
  %132 = load i32, i32* %ua_ch2, align 4
  %cmp187 = icmp sgt i32 %conv186, %132
  br i1 %cmp187, label %for.body.189, label %for.end

for.body.189:                                     ; preds = %for.cond.183
  br label %for.inc

for.inc:                                          ; preds = %for.body.189
  %133 = load i32, i32* %j, align 4
  %inc190 = add nsw i32 %133, 1
  store i32 %inc190, i32* %j, align 4
  br label %for.cond.183

for.end:                                          ; preds = %for.cond.183
  %134 = load i32, i32* %j, align 4
  %idxprom191 = sext i32 %134 to i64
  %135 = load i8*, i8** %kc, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %135, i64 %idxprom191
  %136 = load i8, i8* %arrayidx192, align 1
  %conv193 = zext i8 %136 to i32
  %137 = load i32, i32* %ua_ch2, align 4
  %cmp194 = icmp eq i32 %conv193, %137
  br i1 %cmp194, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %138 = load i32, i32* %j, align 4
  %idxprom196 = sext i32 %138 to i64
  %139 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1197 = bitcast %union.rec* %139 to %struct.word_type*
  %ou2198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1197, i32 0, i32 2
  %os22199 = bitcast %union.SECOND_UNION* %ou2198 to %struct.anon.1*
  %140 = bitcast %struct.anon.1* %os22199 to i32*
  %bf.load200 = load i32, i32* %140, align 4
  %bf.clear201 = and i32 %bf.load200, 4095
  %idxprom202 = zext i32 %bf.clear201 to i64
  %141 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx203 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %141, i64 %idxprom202
  %original_face204 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx203, i32 0, i32 6
  %142 = load %union.rec*, %union.rec** %original_face204, align 8
  %os1205 = bitcast %union.rec* %142 to %struct.word_type*
  %ou2206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1205, i32 0, i32 2
  %os25207 = bitcast %union.SECOND_UNION* %ou2206 to %struct.anon.4*
  %143 = bitcast %struct.anon.4* %os25207 to i16*
  %bf.load208 = load i16, i16* %143, align 4
  %bf.clear209 = and i16 %bf.load208, 4095
  %bf.cast210 = zext i16 %bf.clear209 to i32
  %idxprom211 = zext i32 %bf.cast210 to i64
  %144 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx212 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %144, i64 %idxprom211
  %kern_value = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx212, i32 0, i32 11
  %145 = load i8*, i8** %kern_value, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %145, i64 %idxprom196
  %146 = load i8, i8* %arrayidx213, align 1
  %idxprom214 = zext i8 %146 to i64
  %147 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1215 = bitcast %union.rec* %147 to %struct.word_type*
  %ou2216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1215, i32 0, i32 2
  %os22217 = bitcast %union.SECOND_UNION* %ou2216 to %struct.anon.1*
  %148 = bitcast %struct.anon.1* %os22217 to i32*
  %bf.load218 = load i32, i32* %148, align 4
  %bf.clear219 = and i32 %bf.load218, 4095
  %idxprom220 = zext i32 %bf.clear219 to i64
  %149 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx221 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %149, i64 %idxprom220
  %original_face222 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx221, i32 0, i32 6
  %150 = load %union.rec*, %union.rec** %original_face222, align 8
  %os1223 = bitcast %union.rec* %150 to %struct.word_type*
  %ou2224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1223, i32 0, i32 2
  %os25225 = bitcast %union.SECOND_UNION* %ou2224 to %struct.anon.4*
  %151 = bitcast %struct.anon.4* %os25225 to i16*
  %bf.load226 = load i16, i16* %151, align 4
  %bf.clear227 = and i16 %bf.load226, 4095
  %bf.cast228 = zext i16 %bf.clear227 to i32
  %idxprom229 = zext i32 %bf.cast228 to i64
  %152 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx230 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %152, i64 %idxprom229
  %kern_sizes = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx230, i32 0, i32 12
  %153 = load i16*, i16** %kern_sizes, align 8
  %arrayidx231 = getelementptr inbounds i16, i16* %153, i64 %idxprom214
  %154 = load i16, i16* %arrayidx231, align 2
  %conv232 = sext i16 %154 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv232, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %ksize, align 4
  br label %if.end.233

if.end.233:                                       ; preds = %cond.end, %if.then.165
  %155 = load i32, i32* %ksize, align 4
  %cmp234 = icmp ne i32 %155, 0
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.end.233
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %157 = load i32, i32* %ksize, align 4
  call void @PDFText_Kern(%struct._IO_FILE* %156, i32 %157)
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.236, %if.end.233
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %159 = load i8*, i8** %p, align 8
  %160 = load i8, i8* %159, align 1
  %idxprom238 = zext i8 %160 to i64
  %arrayidx239 = getelementptr inbounds [0 x i8*], [0 x i8*]* @EightBitToPrintForm, i32 0, i64 %idxprom238
  %161 = load i8*, i8** %arrayidx239, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %158, i8* %161)
  br label %for.inc.240

for.inc.240:                                      ; preds = %if.end.237
  %162 = load i8*, i8** %p, align 8
  %incdec.ptr241 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %incdec.ptr241, i8** %p, align 8
  br label %for.cond

for.end.242:                                      ; preds = %for.cond
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PDFText_Close(%struct._IO_FILE* %163)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintPlainGraphic(%union.rec* %x, i32 %xmk, i32 %ymk, %union.rec* %z) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %xmk.addr = alloca i32, align 4
  %ymk.addr = alloca i32, align 4
  %z.addr = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %xmk, i32* %xmk.addr, align 4
  store i32 %ymk, i32* %ymk.addr, align 4
  store %union.rec* %z, %union.rec** %z.addr, align 8
  %0 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_PrintUnderline(i32 %fnum, i32 %col, i32 %xstart, i32 %xstop, i32 %ymk) #0 {
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
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %1 = load i32, i32* %xstart.addr, align 4
  %2 = load i32, i32* %xstop.addr, align 4
  %3 = load i32, i32* %ymk.addr, align 4
  %4 = load i32, i32* %fnum.addr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx = getelementptr inbounds %struct.font_rec, %struct.font_rec* %5, i64 %idxprom
  %underline_pos = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx, i32 0, i32 7
  %6 = load i16, i16* %underline_pos, align 2
  %conv = sext i16 %6 to i32
  %sub = sub nsw i32 %3, %conv
  %7 = load i32, i32* %fnum.addr, align 4
  %idxprom1 = zext i32 %7 to i64
  %8 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx2 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %8, i64 %idxprom1
  %underline_thick = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx2, i32 0, i32 8
  %9 = load i16, i16* %underline_thick, align 2
  %conv3 = sext i16 %9 to i32
  call void @PDFPage_PrintUnderline(%struct._IO_FILE* %0, i32 %1, i32 %2, i32 %sub, i32 %conv3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_CoordRotate(i32 %amount) #0 {
entry:
  %amount.addr = alloca i32, align 4
  %theAmount = alloca i32, align 4
  store i32 %amount, i32* %amount.addr, align 4
  %0 = load i32, i32* %amount.addr, align 4
  %div = sdiv i32 %0, 128
  %rem = srem i32 %div, 360
  store i32 %rem, i32* %theAmount, align 4
  %1 = load i32, i32* %theAmount, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %3 = load i32, i32* %theAmount, align 4
  %conv = sitofp i32 %3 to double
  %mul = fmul double %conv, 0x400921FB54442D18
  %div1 = fdiv double %mul, 1.800000e+02
  %conv2 = fptrunc double %div1 to float
  call void @PDFPage_Rotate(%struct._IO_FILE* %2, float %conv2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @cpexists, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_CoordScale(float %hfactor, float %vfactor) #0 {
entry:
  %hfactor.addr = alloca float, align 4
  %vfactor.addr = alloca float, align 4
  store float %hfactor, float* %hfactor.addr, align 4
  store float %vfactor, float* %vfactor.addr, align 4
  %0 = load float, float* %hfactor.addr, align 4
  %conv = fpext float %0 to double
  %sub = fsub double %conv, 1.000000e+00
  %call = call double @fabs(double %sub) #5
  %cmp = fcmp ogt double %call, 1.000000e-02
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load float, float* %vfactor.addr, align 4
  %conv2 = fpext float %1 to double
  %sub3 = fsub double %conv2, 1.000000e+00
  %call4 = call double @fabs(double %sub3) #5
  %cmp5 = fcmp ogt double %call4, 1.000000e-02
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %3 = load float, float* %hfactor.addr, align 4
  %4 = load float, float* %vfactor.addr, align 4
  call void @PDFPage_Scale(%struct._IO_FILE* %2, float %3, float %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  store i32 0, i32* @cpexists, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDF_LinkSource(%union.rec* %name, i32 %llx, i32 %lly, i32 %urx, i32 %ury) #0 {
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
define internal void @PDF_LinkDest(%union.rec* %name, i32 %llx, i32 %lly, i32 %urx, i32 %ury) #0 {
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

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @MapEnsurePrinted(i32, i32) #1

declare i8* @MapEncodingName(i32) #1

declare void @PDFFont_AddFont(%struct._IO_FILE*, i8*, i8*, i8*) #1

declare void @PDFFile_BeginFontEncoding(%struct._IO_FILE*, i8*) #1

declare void @PDFFile_EndFontEncoding(%struct._IO_FILE*) #1

declare void @PDFFile_Init(%struct._IO_FILE*, i32, i32, i32, i32, i32, i32) #1

declare void @FontPrintPageSetup(%struct._IO_FILE*) #1

declare void @PDFPage_Init(%struct._IO_FILE*, float, i32) #1

declare void @FontPrintPageResources(%struct._IO_FILE*) #1

declare void @FontAdvanceCurrentPage() #1

declare i32 @PDFHasValidTextMatrix() #1

declare void @PDFText_OpenXY(%struct._IO_FILE*, i32, i32) #1

declare void @PDFText_OpenX(%struct._IO_FILE*, i32) #1

declare void @PDFText_Kern(%struct._IO_FILE*, i32) #1

declare void @PDFText_Close(%struct._IO_FILE*) #1

declare void @PDFPage_PrintUnderline(%struct._IO_FILE*, i32, i32, i32, i32) #1

declare void @PDFPage_Rotate(%struct._IO_FILE*, float) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare void @PDFPage_Scale(%struct._IO_FILE*, float, float) #1

; Function Attrs: nounwind uwtable
define internal void @PDF_LinkCheck() #0 {
entry:
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
