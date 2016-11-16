; ModuleID = './jbig2_text.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Jbig2HuffmanParams = type { i32, i32, %struct._Jbig2HuffmanLine* }
%struct._Jbig2HuffmanLine = type { i32, i32, i32 }
%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }
%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }
%struct.Jbig2TextRegionParams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx*, i32, [4 x i8] }
%struct._Jbig2HuffmanTable = type { i32, %struct._Jbig2HuffmanEntry* }
%struct._Jbig2HuffmanEntry = type { %union.anon, i8, i8, i8 }
%union.anon = type { %struct._Jbig2HuffmanTable* }
%struct._Jbig2ArithIaidCtx = type opaque
%struct._Jbig2ArithIntCtx = type opaque
%struct.Jbig2SymbolDict = type { i32, %struct._Jbig2Image** }
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct._Jbig2ArithState = type opaque
%struct._Jbig2WordStream = type { i32 (%struct._Jbig2WordStream*, i32, i32*)* }
%struct._Jbig2HuffmanState = type opaque
%struct.Jbig2RefinementRegionParams = type { i32, %struct._Jbig2Image*, i32, i32, i32, [4 x i8] }
%struct.Jbig2RegionSegmentInfo = type { i32, i32, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [50 x i8] c"symbol list contains %d glyphs in %d dictionaries\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"huffman coded text region\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to allocate storage for text region\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"  read runcode%d length %d\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"error constructing symbol id runcode table!\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"memory allocation failure reading symbol ID huffman table!\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"error reading symbol ID huffman table!\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"error decoding symbol id table: run length with no antecedent!\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"  read runcode%d at index %d (length %d range %d)\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"runlength extends %d entries beyond the end of symbol id table!\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"runlength codes do not cover the available symbol set\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"could not construct Symbol ID huffman table!\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"too many NINSTANCES (%d) decoded\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"symbol id out of range! (%d/%d)\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"missing glyph %d/%d!\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"failed to decode data\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"couldn't allocate reference image\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"text region header flags 0x%04x\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"text region has SBDSOFFSET %d\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"reserved bit 15 of text region huffman flags is not zero\00", align 1
@jbig2_huffman_params_F = external constant %struct._Jbig2HuffmanParams, align 8
@jbig2_huffman_params_G = external constant %struct._Jbig2HuffmanParams, align 8
@.str.20 = private unnamed_addr constant [39 x i8] c"Custom FS huffman table not found (%d)\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"text region specified invalid FS huffman table\00", align 1
@.str.22 = private unnamed_addr constant [58 x i8] c"failed to allocate text region specified FS huffman table\00", align 1
@jbig2_huffman_params_H = external constant %struct._Jbig2HuffmanParams, align 8
@jbig2_huffman_params_I = external constant %struct._Jbig2HuffmanParams, align 8
@jbig2_huffman_params_J = external constant %struct._Jbig2HuffmanParams, align 8
@.str.23 = private unnamed_addr constant [39 x i8] c"Custom DS huffman table not found (%d)\00", align 1
@.str.24 = private unnamed_addr constant [58 x i8] c"failed to allocate text region specified DS huffman table\00", align 1
@jbig2_huffman_params_K = external constant %struct._Jbig2HuffmanParams, align 8
@jbig2_huffman_params_L = external constant %struct._Jbig2HuffmanParams, align 8
@jbig2_huffman_params_M = external constant %struct._Jbig2HuffmanParams, align 8
@.str.25 = private unnamed_addr constant [39 x i8] c"Custom DT huffman table not found (%d)\00", align 1
@.str.26 = private unnamed_addr constant [58 x i8] c"failed to allocate text region specified DT huffman table\00", align 1
@jbig2_huffman_params_N = external constant %struct._Jbig2HuffmanParams, align 8
@jbig2_huffman_params_O = external constant %struct._Jbig2HuffmanParams, align 8
@.str.27 = private unnamed_addr constant [40 x i8] c"Custom RDW huffman table not found (%d)\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"text region specified invalid RDW huffman table\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"failed to allocate text region specified RDW huffman table\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"Custom RDH huffman table not found (%d)\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"text region specified invalid RDH huffman table\00", align 1
@.str.32 = private unnamed_addr constant [59 x i8] c"failed to allocate text region specified RDH huffman table\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"Custom RDX huffman table not found (%d)\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"text region specified invalid RDX huffman table\00", align 1
@.str.35 = private unnamed_addr constant [59 x i8] c"failed to allocate text region specified RDX huffman table\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"Custom RDY huffman table not found (%d)\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"text region specified invalid RDY huffman table\00", align 1
@.str.38 = private unnamed_addr constant [59 x i8] c"failed to allocate text region specified RDY huffman table\00", align 1
@jbig2_huffman_params_A = external constant %struct._Jbig2HuffmanParams, align 8
@.str.39 = private unnamed_addr constant [42 x i8] c"Custom RSIZE huffman table not found (%d)\00", align 1
@.str.40 = private unnamed_addr constant [61 x i8] c"failed to allocate text region specified RSIZE huffman table\00", align 1
@.str.41 = private unnamed_addr constant [58 x i8] c"text region huffman flags bit 15 is set, contrary to spec\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"text region: %d x %d @ (%d,%d) %d symbols\00", align 1
@.str.43 = private unnamed_addr constant [46 x i8] c"text region refers to no symbol dictionaries!\00", align 1
@.str.44 = private unnamed_addr constant [63 x i8] c"unable to retrive symbol dictionaries! previous parsing error?\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"unable to find first referenced symbol dictionary!\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"unable to find all referenced symbol dictionaries!\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"could not allocate GR_stats\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"couldn't allocate text region image\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"couldn't allocate ws in text region image\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"couldn't allocate as in text region image\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"couldn't allocate text region image data\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"failed to decode text region image data\00", align 1
@.str.53 = private unnamed_addr constant [58 x i8] c"composing %dx%d decoded text region onto page at (%d, %d)\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"Segment too short\00", align 1

; Function Attrs: nounwind uwtable
define i32 @jbig2_decode_text_region(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2TextRegionParams* %params, %struct.Jbig2SymbolDict** %dicts, i32 %n_dicts, %struct._Jbig2Image* %image, i8* %data, i64 %size, i8* %GR_stats, %struct._Jbig2ArithState* %as, %struct._Jbig2WordStream* %ws) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2TextRegionParams*, align 8
  %dicts.addr = alloca %struct.Jbig2SymbolDict**, align 8
  %n_dicts.addr = alloca i32, align 4
  %image.addr = alloca %struct._Jbig2Image*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %GR_stats.addr = alloca i8*, align 8
  %as.addr = alloca %struct._Jbig2ArithState*, align 8
  %ws.addr = alloca %struct._Jbig2WordStream*, align 8
  %NINSTANCES = alloca i32, align 4
  %ID = alloca i32, align 4
  %STRIPT = alloca i32, align 4
  %FIRSTS = alloca i32, align 4
  %DT = alloca i32, align 4
  %DFS = alloca i32, align 4
  %IDS = alloca i32, align 4
  %CURS = alloca i32, align 4
  %CURT = alloca i32, align 4
  %S = alloca i32, align 4
  %T = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %first_symbol = alloca i32, align 4
  %index = alloca i32, align 4
  %SBNUMSYMS = alloca i32, align 4
  %IB = alloca %struct._Jbig2Image*, align 8
  %hs = alloca %struct._Jbig2HuffmanState*, align 8
  %SBSYMCODES = alloca %struct._Jbig2HuffmanTable*, align 8
  %code = alloca i32, align 4
  %RI = alloca i32, align 4
  %runcodes = alloca %struct._Jbig2HuffmanTable*, align 8
  %runcodeparams = alloca %struct._Jbig2HuffmanParams, align 8
  %runcodelengths = alloca [35 x %struct._Jbig2HuffmanLine], align 16
  %symcodelengths = alloca %struct._Jbig2HuffmanLine*, align 8
  %symcodeparams = alloca %struct._Jbig2HuffmanParams, align 8
  %err = alloca i32, align 4
  %len = alloca i32, align 4
  %range = alloca i32, align 4
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %id = alloca i32, align 4
  %rparams = alloca %struct.Jbig2RefinementRegionParams, align 8
  %IBO = alloca %struct._Jbig2Image*, align 8
  %RDW = alloca i32, align 4
  %RDH = alloca i32, align 4
  %RDX = alloca i32, align 4
  %RDY = alloca i32, align 4
  %refimage = alloca %struct._Jbig2Image*, align 8
  %BMSIZE = alloca i32, align 4
  %code1 = alloca i32, align 4
  %code2 = alloca i32, align 4
  %code3 = alloca i32, align 4
  %code4 = alloca i32, align 4
  %code5 = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2TextRegionParams* %params, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  store %struct.Jbig2SymbolDict** %dicts, %struct.Jbig2SymbolDict*** %dicts.addr, align 8, !tbaa !1
  store i32 %n_dicts, i32* %n_dicts.addr, align 4, !tbaa !5
  store %struct._Jbig2Image* %image, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !7
  store i8* %GR_stats, i8** %GR_stats.addr, align 8, !tbaa !1
  store %struct._Jbig2ArithState* %as, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  store %struct._Jbig2WordStream* %ws, %struct._Jbig2WordStream** %ws.addr, align 8, !tbaa !1
  %0 = bitcast i32* %NINSTANCES to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ID to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %STRIPT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %FIRSTS to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %DT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %DFS to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %IDS to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %CURS to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %CURT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %T to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %first_symbol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %SBNUMSYMS to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast %struct._Jbig2Image** %IB to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %17 = bitcast %struct._Jbig2HuffmanState** %hs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store %struct._Jbig2HuffmanState* null, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %18 = bitcast %struct._Jbig2HuffmanTable** %SBSYMCODES to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store %struct._Jbig2HuffmanTable* null, %struct._Jbig2HuffmanTable** %SBSYMCODES, align 8, !tbaa !1
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %20 = bitcast i32* %RI to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 0, i32* %SBNUMSYMS, align 4, !tbaa !5
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %index, align 4, !tbaa !5
  %22 = load i32, i32* %n_dicts.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom = zext i32 %23 to i64
  %24 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %24, i64 %idxprom
  %25 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %arrayidx, align 8, !tbaa !1
  %n_symbols = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %25, i32 0, i32 0
  %26 = load i32, i32* %n_symbols, align 4, !tbaa !9
  %27 = load i32, i32* %SBNUMSYMS, align 4, !tbaa !5
  %add = add i32 %27, %26
  store i32 %add, i32* %SBNUMSYMS, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %index, align 4, !tbaa !5
  %inc = add i32 %28, 1
  store i32 %inc, i32* %index, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %30 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %30, i32 0, i32 0
  %31 = load i32, i32* %number, align 4, !tbaa !11
  %32 = load i32, i32* %SBNUMSYMS, align 4, !tbaa !5
  %33 = load i32, i32* %n_dicts.addr, align 4, !tbaa !5
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %29, i32 0, i32 %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 %32, i32 %33) #4
  %34 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFF = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %34, i32 0, i32 0
  %35 = load i32, i32* %SBHUFF, align 4, !tbaa !13
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then, label %if.end.163

if.then:                                          ; preds = %for.end
  %36 = bitcast %struct._Jbig2HuffmanTable** %runcodes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store %struct._Jbig2HuffmanTable* null, %struct._Jbig2HuffmanTable** %runcodes, align 8, !tbaa !1
  %37 = bitcast %struct._Jbig2HuffmanParams* %runcodeparams to i8*
  call void @llvm.lifetime.start(i64 16, i8* %37) #1
  %38 = bitcast [35 x %struct._Jbig2HuffmanLine]* %runcodelengths to i8*
  call void @llvm.lifetime.start(i64 420, i8* %38) #1
  %39 = bitcast %struct._Jbig2HuffmanLine** %symcodelengths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  store %struct._Jbig2HuffmanLine* null, %struct._Jbig2HuffmanLine** %symcodelengths, align 8, !tbaa !1
  %40 = bitcast %struct._Jbig2HuffmanParams* %symcodeparams to i8*
  call void @llvm.lifetime.start(i64 16, i8* %40) #1
  %41 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i32* %range to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %46 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number1 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %46, i32 0, i32 0
  %47 = load i32, i32* %number1, align 4, !tbaa !11
  %call2 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %45, i32 0, i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #4
  %48 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %49 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws.addr, align 8, !tbaa !1
  %call3 = call %struct._Jbig2HuffmanState* @jbig2_huffman_new(%struct._Jbig2Ctx* %48, %struct._Jbig2WordStream* %49) #4
  store %struct._Jbig2HuffmanState* %call3, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %50 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %cmp4 = icmp eq %struct._Jbig2HuffmanState* %50, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %51 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %52 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number6 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %52, i32 0, i32 0
  %53 = load i32, i32* %number6, align 4, !tbaa !11
  %call7 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %51, i32 2, i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0)) #4
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.26, %if.end
  %54 = load i32, i32* %index, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %54, 35
  br i1 %cmp9, label %for.body.10, label %for.end.28

for.body.10:                                      ; preds = %for.cond.8
  %55 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %call11 = call i32 @jbig2_huffman_get_bits(%struct._Jbig2HuffmanState* %55, i32 4, i32* %code) #4
  %56 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom12 = zext i32 %56 to i64
  %arrayidx13 = getelementptr inbounds [35 x %struct._Jbig2HuffmanLine], [35 x %struct._Jbig2HuffmanLine]* %runcodelengths, i32 0, i64 %idxprom12
  %PREFLEN = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx13, i32 0, i32 0
  store i32 %call11, i32* %PREFLEN, align 4, !tbaa !15
  %57 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %57, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body.10
  br label %cleanup1

if.end.16:                                        ; preds = %for.body.10
  %58 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom17 = zext i32 %58 to i64
  %arrayidx18 = getelementptr inbounds [35 x %struct._Jbig2HuffmanLine], [35 x %struct._Jbig2HuffmanLine]* %runcodelengths, i32 0, i64 %idxprom17
  %RANGELEN = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx18, i32 0, i32 1
  store i32 0, i32* %RANGELEN, align 4, !tbaa !17
  %59 = load i32, i32* %index, align 4, !tbaa !5
  %60 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom19 = zext i32 %60 to i64
  %arrayidx20 = getelementptr inbounds [35 x %struct._Jbig2HuffmanLine], [35 x %struct._Jbig2HuffmanLine]* %runcodelengths, i32 0, i64 %idxprom19
  %RANGELOW = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx20, i32 0, i32 2
  store i32 %59, i32* %RANGELOW, align 4, !tbaa !18
  %61 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %62 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number21 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %62, i32 0, i32 0
  %63 = load i32, i32* %number21, align 4, !tbaa !11
  %64 = load i32, i32* %index, align 4, !tbaa !5
  %65 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom22 = zext i32 %65 to i64
  %arrayidx23 = getelementptr inbounds [35 x %struct._Jbig2HuffmanLine], [35 x %struct._Jbig2HuffmanLine]* %runcodelengths, i32 0, i64 %idxprom22
  %PREFLEN24 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx23, i32 0, i32 0
  %66 = load i32, i32* %PREFLEN24, align 4, !tbaa !15
  %call25 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %61, i32 0, i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32 %64, i32 %66) #4
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.16
  %67 = load i32, i32* %index, align 4, !tbaa !5
  %inc27 = add i32 %67, 1
  store i32 %inc27, i32* %index, align 4, !tbaa !5
  br label %for.cond.8

for.end.28:                                       ; preds = %for.cond.8
  %HTOOB = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %runcodeparams, i32 0, i32 0
  store i32 0, i32* %HTOOB, align 4, !tbaa !19
  %arraydecay = getelementptr inbounds [35 x %struct._Jbig2HuffmanLine], [35 x %struct._Jbig2HuffmanLine]* %runcodelengths, i32 0, i32 0
  %lines = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %runcodeparams, i32 0, i32 2
  store %struct._Jbig2HuffmanLine* %arraydecay, %struct._Jbig2HuffmanLine** %lines, align 8, !tbaa !21
  %n_lines = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %runcodeparams, i32 0, i32 1
  store i32 35, i32* %n_lines, align 4, !tbaa !22
  %68 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call29 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %68, %struct._Jbig2HuffmanParams* %runcodeparams) #4
  store %struct._Jbig2HuffmanTable* %call29, %struct._Jbig2HuffmanTable** %runcodes, align 8, !tbaa !1
  %69 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %runcodes, align 8, !tbaa !1
  %cmp30 = icmp eq %struct._Jbig2HuffmanTable* %69, null
  br i1 %cmp30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %for.end.28
  %70 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %71 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number32 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %71, i32 0, i32 0
  %72 = load i32, i32* %number32, align 4, !tbaa !11
  %call33 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %70, i32 3, i32 %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0)) #4
  store i32 -1, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.34:                                        ; preds = %for.end.28
  %73 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %73, i32 0, i32 0
  %74 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !23
  %75 = load i32, i32* %SBNUMSYMS, align 4, !tbaa !5
  %conv = zext i32 %75 to i64
  %call35 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %74, i64 %conv, i64 12) #4
  %76 = bitcast i8* %call35 to %struct._Jbig2HuffmanLine*
  store %struct._Jbig2HuffmanLine* %76, %struct._Jbig2HuffmanLine** %symcodelengths, align 8, !tbaa !1
  %77 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %symcodelengths, align 8, !tbaa !1
  %cmp36 = icmp eq %struct._Jbig2HuffmanLine* %77, null
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.34
  %78 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %79 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number39 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %79, i32 0, i32 0
  %80 = load i32, i32* %number39, align 4, !tbaa !11
  %call40 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %78, i32 3, i32 %80, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0)) #4
  store i32 -1, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.41:                                        ; preds = %if.end.34
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.end.130, %if.end.41
  %81 = load i32, i32* %index, align 4, !tbaa !5
  %82 = load i32, i32* %SBNUMSYMS, align 4, !tbaa !5
  %cmp42 = icmp ult i32 %81, %82
  br i1 %cmp42, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %83 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %84 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %runcodes, align 8, !tbaa !1
  %call44 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %83, %struct._Jbig2HuffmanTable* %84, i32* %err) #4
  store i32 %call44, i32* %code, align 4, !tbaa !5
  %85 = load i32, i32* %err, align 4, !tbaa !5
  %cmp45 = icmp ne i32 %85, 0
  br i1 %cmp45, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %86 = load i32, i32* %code, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %86, 0
  br i1 %cmp47, label %if.then.52, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false
  %87 = load i32, i32* %code, align 4, !tbaa !5
  %cmp50 = icmp sge i32 %87, 35
  br i1 %cmp50, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %lor.lhs.false.49, %lor.lhs.false, %while.body
  %88 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %89 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number53 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %89, i32 0, i32 0
  %90 = load i32, i32* %number53, align 4, !tbaa !11
  %call54 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %88, i32 3, i32 %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0)) #4
  %91 = load i32, i32* %err, align 4, !tbaa !5
  %tobool55 = icmp ne i32 %91, 0
  br i1 %tobool55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.52
  %92 = load i32, i32* %err, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.52
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %92, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.56:                                        ; preds = %lor.lhs.false.49
  %93 = load i32, i32* %code, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %93, 32
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %if.end.56
  %94 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %94, i32* %len, align 4, !tbaa !5
  store i32 1, i32* %range, align 4, !tbaa !5
  br label %if.end.98

if.else:                                          ; preds = %if.end.56
  %95 = load i32, i32* %code, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %95, 32
  br i1 %cmp60, label %if.then.62, label %if.else.72

if.then.62:                                       ; preds = %if.else
  %96 = load i32, i32* %index, align 4, !tbaa !5
  %cmp63 = icmp ult i32 %96, 1
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %if.then.62
  %97 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %98 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number66 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %98, i32 0, i32 0
  %99 = load i32, i32* %number66, align 4, !tbaa !11
  %call67 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %97, i32 3, i32 %99, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i32 0, i32 0)) #4
  store i32 -1, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.68:                                        ; preds = %if.then.62
  %100 = load i32, i32* %index, align 4, !tbaa !5
  %sub = sub i32 %100, 1
  %idxprom69 = zext i32 %sub to i64
  %101 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %symcodelengths, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %101, i64 %idxprom69
  %PREFLEN71 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx70, i32 0, i32 0
  %102 = load i32, i32* %PREFLEN71, align 4, !tbaa !15
  store i32 %102, i32* %len, align 4, !tbaa !5
  br label %if.end.73

if.else.72:                                       ; preds = %if.else
  store i32 0, i32* %len, align 4, !tbaa !5
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.72, %if.end.68
  store i32 0, i32* %err, align 4, !tbaa !5
  %103 = load i32, i32* %code, align 4, !tbaa !5
  %cmp74 = icmp eq i32 %103, 32
  br i1 %cmp74, label %if.then.76, label %if.else.79

if.then.76:                                       ; preds = %if.end.73
  %104 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %call77 = call i32 @jbig2_huffman_get_bits(%struct._Jbig2HuffmanState* %104, i32 2, i32* %err) #4
  %add78 = add nsw i32 %call77, 3
  store i32 %add78, i32* %range, align 4, !tbaa !5
  br label %if.end.93

if.else.79:                                       ; preds = %if.end.73
  %105 = load i32, i32* %code, align 4, !tbaa !5
  %cmp80 = icmp eq i32 %105, 33
  br i1 %cmp80, label %if.then.82, label %if.else.85

if.then.82:                                       ; preds = %if.else.79
  %106 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %call83 = call i32 @jbig2_huffman_get_bits(%struct._Jbig2HuffmanState* %106, i32 3, i32* %err) #4
  %add84 = add nsw i32 %call83, 3
  store i32 %add84, i32* %range, align 4, !tbaa !5
  br label %if.end.92

if.else.85:                                       ; preds = %if.else.79
  %107 = load i32, i32* %code, align 4, !tbaa !5
  %cmp86 = icmp eq i32 %107, 34
  br i1 %cmp86, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %if.else.85
  %108 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %call89 = call i32 @jbig2_huffman_get_bits(%struct._Jbig2HuffmanState* %108, i32 7, i32* %err) #4
  %add90 = add nsw i32 %call89, 11
  store i32 %add90, i32* %range, align 4, !tbaa !5
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %if.else.85
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.82
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.76
  %109 = load i32, i32* %err, align 4, !tbaa !5
  %cmp94 = icmp slt i32 %109, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.93
  br label %cleanup1

if.end.97:                                        ; preds = %if.end.93
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.59
  %110 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %111 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number99 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %111, i32 0, i32 0
  %112 = load i32, i32* %number99, align 4, !tbaa !11
  %113 = load i32, i32* %code, align 4, !tbaa !5
  %114 = load i32, i32* %index, align 4, !tbaa !5
  %115 = load i32, i32* %len, align 4, !tbaa !5
  %116 = load i32, i32* %range, align 4, !tbaa !5
  %call100 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %110, i32 0, i32 %112, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i32 0, i32 0), i32 %113, i32 %114, i32 %115, i32 %116) #4
  %117 = load i32, i32* %index, align 4, !tbaa !5
  %118 = load i32, i32* %range, align 4, !tbaa !5
  %add101 = add i32 %117, %118
  %119 = load i32, i32* %SBNUMSYMS, align 4, !tbaa !5
  %cmp102 = icmp ugt i32 %add101, %119
  br i1 %cmp102, label %if.then.104, label %if.end.110

if.then.104:                                      ; preds = %if.end.98
  %120 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %121 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number105 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %121, i32 0, i32 0
  %122 = load i32, i32* %number105, align 4, !tbaa !11
  %123 = load i32, i32* %index, align 4, !tbaa !5
  %124 = load i32, i32* %range, align 4, !tbaa !5
  %add106 = add i32 %123, %124
  %125 = load i32, i32* %SBNUMSYMS, align 4, !tbaa !5
  %sub107 = sub i32 %add106, %125
  %call108 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %120, i32 2, i32 %122, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i32 0, i32 0), i32 %sub107) #4
  %126 = load i32, i32* %SBNUMSYMS, align 4, !tbaa !5
  %127 = load i32, i32* %index, align 4, !tbaa !5
  %sub109 = sub i32 %126, %127
  store i32 %sub109, i32* %range, align 4, !tbaa !5
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.104, %if.end.98
  store i32 0, i32* %r, align 4, !tbaa !5
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.128, %if.end.110
  %128 = load i32, i32* %r, align 4, !tbaa !5
  %129 = load i32, i32* %range, align 4, !tbaa !5
  %cmp112 = icmp slt i32 %128, %129
  br i1 %cmp112, label %for.body.114, label %for.end.130

for.body.114:                                     ; preds = %for.cond.111
  %130 = load i32, i32* %len, align 4, !tbaa !5
  %131 = load i32, i32* %index, align 4, !tbaa !5
  %132 = load i32, i32* %r, align 4, !tbaa !5
  %add115 = add i32 %131, %132
  %idxprom116 = zext i32 %add115 to i64
  %133 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %symcodelengths, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %133, i64 %idxprom116
  %PREFLEN118 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx117, i32 0, i32 0
  store i32 %130, i32* %PREFLEN118, align 4, !tbaa !15
  %134 = load i32, i32* %index, align 4, !tbaa !5
  %135 = load i32, i32* %r, align 4, !tbaa !5
  %add119 = add i32 %134, %135
  %idxprom120 = zext i32 %add119 to i64
  %136 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %symcodelengths, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %136, i64 %idxprom120
  %RANGELEN122 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx121, i32 0, i32 1
  store i32 0, i32* %RANGELEN122, align 4, !tbaa !17
  %137 = load i32, i32* %index, align 4, !tbaa !5
  %138 = load i32, i32* %r, align 4, !tbaa !5
  %add123 = add i32 %137, %138
  %139 = load i32, i32* %index, align 4, !tbaa !5
  %140 = load i32, i32* %r, align 4, !tbaa !5
  %add124 = add i32 %139, %140
  %idxprom125 = zext i32 %add124 to i64
  %141 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %symcodelengths, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %141, i64 %idxprom125
  %RANGELOW127 = getelementptr inbounds %struct._Jbig2HuffmanLine, %struct._Jbig2HuffmanLine* %arrayidx126, i32 0, i32 2
  store i32 %add123, i32* %RANGELOW127, align 4, !tbaa !18
  br label %for.inc.128

for.inc.128:                                      ; preds = %for.body.114
  %142 = load i32, i32* %r, align 4, !tbaa !5
  %inc129 = add nsw i32 %142, 1
  store i32 %inc129, i32* %r, align 4, !tbaa !5
  br label %for.cond.111

for.end.130:                                      ; preds = %for.cond.111
  %143 = load i32, i32* %r, align 4, !tbaa !5
  %144 = load i32, i32* %index, align 4, !tbaa !5
  %add131 = add i32 %144, %143
  store i32 %add131, i32* %index, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %145 = load i32, i32* %index, align 4, !tbaa !5
  %146 = load i32, i32* %SBNUMSYMS, align 4, !tbaa !5
  %cmp132 = icmp ult i32 %145, %146
  br i1 %cmp132, label %if.then.134, label %if.end.137

if.then.134:                                      ; preds = %while.end
  %147 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %148 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number135 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %148, i32 0, i32 0
  %149 = load i32, i32* %number135, align 4, !tbaa !11
  %call136 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %147, i32 2, i32 %149, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0)) #4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %while.end
  %HTOOB138 = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %symcodeparams, i32 0, i32 0
  store i32 0, i32* %HTOOB138, align 4, !tbaa !19
  %150 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %symcodelengths, align 8, !tbaa !1
  %lines139 = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %symcodeparams, i32 0, i32 2
  store %struct._Jbig2HuffmanLine* %150, %struct._Jbig2HuffmanLine** %lines139, align 8, !tbaa !21
  %151 = load i32, i32* %SBNUMSYMS, align 4, !tbaa !5
  %n_lines140 = getelementptr inbounds %struct._Jbig2HuffmanParams, %struct._Jbig2HuffmanParams* %symcodeparams, i32 0, i32 1
  store i32 %151, i32* %n_lines140, align 4, !tbaa !22
  %152 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  call void @jbig2_huffman_skip(%struct._Jbig2HuffmanState* %152) #4
  %153 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call141 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %153, %struct._Jbig2HuffmanParams* %symcodeparams) #4
  store %struct._Jbig2HuffmanTable* %call141, %struct._Jbig2HuffmanTable** %SBSYMCODES, align 8, !tbaa !1
  br label %cleanup1

cleanup1:                                         ; preds = %if.end.137, %if.then.96, %if.then.65, %cond.end, %if.then.38, %if.then.31, %if.then.15
  %154 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator142 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %154, i32 0, i32 0
  %155 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator142, align 8, !tbaa !23
  %156 = load %struct._Jbig2HuffmanLine*, %struct._Jbig2HuffmanLine** %symcodelengths, align 8, !tbaa !1
  %157 = bitcast %struct._Jbig2HuffmanLine* %156 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %155, i8* %157) #4
  %158 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %159 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %runcodes, align 8, !tbaa !1
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %158, %struct._Jbig2HuffmanTable* %159) #4
  %160 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBSYMCODES, align 8, !tbaa !1
  %cmp143 = icmp eq %struct._Jbig2HuffmanTable* %160, null
  br i1 %cmp143, label %if.then.145, label %if.end.154

if.then.145:                                      ; preds = %cleanup1
  %161 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %162 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number146 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %162, i32 0, i32 0
  %163 = load i32, i32* %number146, align 4, !tbaa !11
  %call147 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %161, i32 3, i32 %163, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0)) #4
  %164 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %165 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  call void @jbig2_huffman_free(%struct._Jbig2Ctx* %164, %struct._Jbig2HuffmanState* %165) #4
  %166 = load i32, i32* %code, align 4, !tbaa !5
  %cmp148 = icmp ne i32 %166, 0
  br i1 %cmp148, label %cond.true.150, label %cond.false.151

cond.true.150:                                    ; preds = %if.then.145
  %167 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.152

cond.false.151:                                   ; preds = %if.then.145
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.151, %cond.true.150
  %cond153 = phi i32 [ %167, %cond.true.150 ], [ -1, %cond.false.151 ]
  store i32 %cond153, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.154:                                       ; preds = %cleanup1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.154, %cond.end.152, %if.then.5
  %168 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %range to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %err to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast %struct._Jbig2HuffmanParams* %symcodeparams to i8*
  call void @llvm.lifetime.end(i64 16, i8* %172) #1
  %173 = bitcast %struct._Jbig2HuffmanLine** %symcodelengths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast [35 x %struct._Jbig2HuffmanLine]* %runcodelengths to i8*
  call void @llvm.lifetime.end(i64 420, i8* %174) #1
  %175 = bitcast %struct._Jbig2HuffmanParams* %runcodeparams to i8*
  call void @llvm.lifetime.end(i64 16, i8* %175) #1
  %176 = bitcast %struct._Jbig2HuffmanTable** %runcodes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.479 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.163

if.end.163:                                       ; preds = %cleanup.cont, %for.end
  %177 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %178 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %179 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBDEFPIXEL = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %179, i32 0, i32 2
  %180 = load i32, i32* %SBDEFPIXEL, align 4, !tbaa !25
  call void @jbig2_image_clear(%struct._Jbig2Ctx* %177, %struct._Jbig2Image* %178, i32 %180) #4
  %181 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFF164 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %181, i32 0, i32 0
  %182 = load i32, i32* %SBHUFF164, align 4, !tbaa !13
  %tobool165 = icmp ne i32 %182, 0
  br i1 %tobool165, label %if.then.166, label %if.else.168

if.then.166:                                      ; preds = %if.end.163
  %183 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %184 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFFDT = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %184, i32 0, i32 12
  %185 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFDT, align 8, !tbaa !26
  %call167 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %183, %struct._Jbig2HuffmanTable* %185, i32* %code) #4
  store i32 %call167, i32* %STRIPT, align 4, !tbaa !5
  br label %if.end.170

if.else.168:                                      ; preds = %if.end.163
  %186 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %IADT = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %186, i32 0, i32 18
  %187 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADT, align 8, !tbaa !27
  %188 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %call169 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %187, %struct._Jbig2ArithState* %188, i32* %STRIPT) #4
  store i32 %call169, i32* %code, align 4, !tbaa !5
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.168, %if.then.166
  %189 = load i32, i32* %code, align 4, !tbaa !5
  %cmp171 = icmp slt i32 %189, 0
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.end.170
  br label %cleanup2

if.end.174:                                       ; preds = %if.end.170
  %190 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBSTRIPS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %190, i32 0, i32 9
  %191 = load i32, i32* %SBSTRIPS, align 4, !tbaa !28
  %sub175 = sub nsw i32 0, %191
  %192 = load i32, i32* %STRIPT, align 4, !tbaa !5
  %mul = mul nsw i32 %192, %sub175
  store i32 %mul, i32* %STRIPT, align 4, !tbaa !5
  store i32 0, i32* %FIRSTS, align 4, !tbaa !5
  store i32 0, i32* %NINSTANCES, align 4, !tbaa !5
  br label %while.cond.176

while.cond.176:                                   ; preds = %for.end.473, %if.end.174
  %193 = load i32, i32* %NINSTANCES, align 4, !tbaa !5
  %194 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBNUMINSTANCES = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %194, i32 0, i32 7
  %195 = load i32, i32* %SBNUMINSTANCES, align 4, !tbaa !29
  %cmp177 = icmp ult i32 %193, %195
  br i1 %cmp177, label %while.body.179, label %while.end.474

while.body.179:                                   ; preds = %while.cond.176
  %196 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFF180 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %196, i32 0, i32 0
  %197 = load i32, i32* %SBHUFF180, align 4, !tbaa !13
  %tobool181 = icmp ne i32 %197, 0
  br i1 %tobool181, label %if.then.182, label %if.else.185

if.then.182:                                      ; preds = %while.body.179
  %198 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %199 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFFDT183 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %199, i32 0, i32 12
  %200 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFDT183, align 8, !tbaa !26
  %call184 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %198, %struct._Jbig2HuffmanTable* %200, i32* %code) #4
  store i32 %call184, i32* %DT, align 4, !tbaa !5
  br label %if.end.188

if.else.185:                                      ; preds = %while.body.179
  %201 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %IADT186 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %201, i32 0, i32 18
  %202 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADT186, align 8, !tbaa !27
  %203 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %call187 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %202, %struct._Jbig2ArithState* %203, i32* %DT) #4
  store i32 %call187, i32* %code, align 4, !tbaa !5
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.185, %if.then.182
  %204 = load i32, i32* %code, align 4, !tbaa !5
  %cmp189 = icmp slt i32 %204, 0
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %if.end.188
  br label %cleanup2

if.end.192:                                       ; preds = %if.end.188
  %205 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBSTRIPS193 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %205, i32 0, i32 9
  %206 = load i32, i32* %SBSTRIPS193, align 4, !tbaa !28
  %207 = load i32, i32* %DT, align 4, !tbaa !5
  %mul194 = mul nsw i32 %207, %206
  store i32 %mul194, i32* %DT, align 4, !tbaa !5
  %208 = load i32, i32* %DT, align 4, !tbaa !5
  %209 = load i32, i32* %STRIPT, align 4, !tbaa !5
  %add195 = add nsw i32 %209, %208
  store i32 %add195, i32* %STRIPT, align 4, !tbaa !5
  store i32 1, i32* %first_symbol, align 4, !tbaa !5
  br label %for.cond.196

for.cond.196:                                     ; preds = %if.end.471, %if.end.192
  %210 = load i32, i32* %first_symbol, align 4, !tbaa !5
  %tobool197 = icmp ne i32 %210, 0
  br i1 %tobool197, label %if.then.198, label %if.else.211

if.then.198:                                      ; preds = %for.cond.196
  %211 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFF199 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %211, i32 0, i32 0
  %212 = load i32, i32* %SBHUFF199, align 4, !tbaa !13
  %tobool200 = icmp ne i32 %212, 0
  br i1 %tobool200, label %if.then.201, label %if.else.203

if.then.201:                                      ; preds = %if.then.198
  %213 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %214 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFFFS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %214, i32 0, i32 10
  %215 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFFS, align 8, !tbaa !30
  %call202 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %213, %struct._Jbig2HuffmanTable* %215, i32* %code) #4
  store i32 %call202, i32* %DFS, align 4, !tbaa !5
  br label %if.end.205

if.else.203:                                      ; preds = %if.then.198
  %216 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %IAFS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %216, i32 0, i32 19
  %217 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IAFS, align 8, !tbaa !31
  %218 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %call204 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %217, %struct._Jbig2ArithState* %218, i32* %DFS) #4
  store i32 %call204, i32* %code, align 4, !tbaa !5
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.203, %if.then.201
  %219 = load i32, i32* %code, align 4, !tbaa !5
  %cmp206 = icmp slt i32 %219, 0
  br i1 %cmp206, label %if.then.208, label %if.end.209

if.then.208:                                      ; preds = %if.end.205
  br label %cleanup2

if.end.209:                                       ; preds = %if.end.205
  %220 = load i32, i32* %DFS, align 4, !tbaa !5
  %221 = load i32, i32* %FIRSTS, align 4, !tbaa !5
  %add210 = add nsw i32 %221, %220
  store i32 %add210, i32* %FIRSTS, align 4, !tbaa !5
  %222 = load i32, i32* %FIRSTS, align 4, !tbaa !5
  store i32 %222, i32* %CURS, align 4, !tbaa !5
  store i32 0, i32* %first_symbol, align 4, !tbaa !5
  br label %if.end.231

if.else.211:                                      ; preds = %for.cond.196
  %223 = load i32, i32* %NINSTANCES, align 4, !tbaa !5
  %224 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBNUMINSTANCES212 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %224, i32 0, i32 7
  %225 = load i32, i32* %SBNUMINSTANCES212, align 4, !tbaa !29
  %cmp213 = icmp ugt i32 %223, %225
  br i1 %cmp213, label %if.then.215, label %if.end.218

if.then.215:                                      ; preds = %if.else.211
  %226 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %227 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number216 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %227, i32 0, i32 0
  %228 = load i32, i32* %number216, align 4, !tbaa !11
  %229 = load i32, i32* %NINSTANCES, align 4, !tbaa !5
  %call217 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %226, i32 3, i32 %228, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0), i32 %229) #4
  store i32 %call217, i32* %code, align 4, !tbaa !5
  br label %for.end.473

if.end.218:                                       ; preds = %if.else.211
  %230 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFF219 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %230, i32 0, i32 0
  %231 = load i32, i32* %SBHUFF219, align 4, !tbaa !13
  %tobool220 = icmp ne i32 %231, 0
  br i1 %tobool220, label %if.then.221, label %if.else.223

if.then.221:                                      ; preds = %if.end.218
  %232 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %233 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFFDS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %233, i32 0, i32 11
  %234 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFDS, align 8, !tbaa !32
  %call222 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %232, %struct._Jbig2HuffmanTable* %234, i32* %code) #4
  store i32 %call222, i32* %IDS, align 4, !tbaa !5
  br label %if.end.225

if.else.223:                                      ; preds = %if.end.218
  %235 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %IADS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %235, i32 0, i32 20
  %236 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADS, align 8, !tbaa !33
  %237 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %call224 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %236, %struct._Jbig2ArithState* %237, i32* %IDS) #4
  store i32 %call224, i32* %code, align 4, !tbaa !5
  br label %if.end.225

if.end.225:                                       ; preds = %if.else.223, %if.then.221
  %238 = load i32, i32* %code, align 4, !tbaa !5
  %tobool226 = icmp ne i32 %238, 0
  br i1 %tobool226, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %if.end.225
  br label %for.end.473

if.end.228:                                       ; preds = %if.end.225
  %239 = load i32, i32* %IDS, align 4, !tbaa !5
  %240 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBDSOFFSET = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %240, i32 0, i32 6
  %241 = load i32, i32* %SBDSOFFSET, align 4, !tbaa !34
  %add229 = add nsw i32 %239, %241
  %242 = load i32, i32* %CURS, align 4, !tbaa !5
  %add230 = add nsw i32 %242, %add229
  store i32 %add230, i32* %CURS, align 4, !tbaa !5
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.228, %if.end.209
  %243 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBSTRIPS232 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %243, i32 0, i32 9
  %244 = load i32, i32* %SBSTRIPS232, align 4, !tbaa !28
  %cmp233 = icmp eq i32 %244, 1
  br i1 %cmp233, label %if.then.235, label %if.else.236

if.then.235:                                      ; preds = %if.end.231
  store i32 0, i32* %CURT, align 4, !tbaa !5
  br label %if.end.244

if.else.236:                                      ; preds = %if.end.231
  %245 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFF237 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %245, i32 0, i32 0
  %246 = load i32, i32* %SBHUFF237, align 4, !tbaa !13
  %tobool238 = icmp ne i32 %246, 0
  br i1 %tobool238, label %if.then.239, label %if.else.241

if.then.239:                                      ; preds = %if.else.236
  %247 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %248 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %LOGSBSTRIPS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %248, i32 0, i32 8
  %249 = load i32, i32* %LOGSBSTRIPS, align 4, !tbaa !35
  %call240 = call i32 @jbig2_huffman_get_bits(%struct._Jbig2HuffmanState* %247, i32 %249, i32* %code) #4
  store i32 %call240, i32* %CURT, align 4, !tbaa !5
  br label %if.end.243

if.else.241:                                      ; preds = %if.else.236
  %250 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %IAIT = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %250, i32 0, i32 21
  %251 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IAIT, align 8, !tbaa !36
  %252 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %call242 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %251, %struct._Jbig2ArithState* %252, i32* %CURT) #4
  store i32 %call242, i32* %code, align 4, !tbaa !5
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.241, %if.then.239
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.then.235
  %253 = load i32, i32* %code, align 4, !tbaa !5
  %cmp245 = icmp slt i32 %253, 0
  br i1 %cmp245, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %if.end.244
  br label %cleanup2

if.end.248:                                       ; preds = %if.end.244
  %254 = load i32, i32* %STRIPT, align 4, !tbaa !5
  %255 = load i32, i32* %CURT, align 4, !tbaa !5
  %add249 = add nsw i32 %254, %255
  store i32 %add249, i32* %T, align 4, !tbaa !5
  %256 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFF250 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %256, i32 0, i32 0
  %257 = load i32, i32* %SBHUFF250, align 4, !tbaa !13
  %tobool251 = icmp ne i32 %257, 0
  br i1 %tobool251, label %if.then.252, label %if.else.254

if.then.252:                                      ; preds = %if.end.248
  %258 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %259 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBSYMCODES, align 8, !tbaa !1
  %call253 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %258, %struct._Jbig2HuffmanTable* %259, i32* %code) #4
  store i32 %call253, i32* %ID, align 4, !tbaa !5
  br label %if.end.256

if.else.254:                                      ; preds = %if.end.248
  %260 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %IAID = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %260, i32 0, i32 22
  %261 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %IAID, align 8, !tbaa !37
  %262 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %call255 = call i32 @jbig2_arith_iaid_decode(%struct._Jbig2ArithIaidCtx* %261, %struct._Jbig2ArithState* %262, i32* %ID) #4
  store i32 %call255, i32* %code, align 4, !tbaa !5
  br label %if.end.256

if.end.256:                                       ; preds = %if.else.254, %if.then.252
  %263 = load i32, i32* %code, align 4, !tbaa !5
  %cmp257 = icmp slt i32 %263, 0
  br i1 %cmp257, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %if.end.256
  br label %cleanup2

if.end.260:                                       ; preds = %if.end.256
  %264 = load i32, i32* %ID, align 4, !tbaa !5
  %265 = load i32, i32* %SBNUMSYMS, align 4, !tbaa !5
  %cmp261 = icmp uge i32 %264, %265
  br i1 %cmp261, label %if.then.263, label %if.end.266

if.then.263:                                      ; preds = %if.end.260
  %266 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %267 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number264 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %267, i32 0, i32 0
  %268 = load i32, i32* %number264, align 4, !tbaa !11
  %269 = load i32, i32* %ID, align 4, !tbaa !5
  %270 = load i32, i32* %SBNUMSYMS, align 4, !tbaa !5
  %call265 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %266, i32 3, i32 %268, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0), i32 %269, i32 %270) #4
  store i32 %call265, i32* %code, align 4, !tbaa !5
  br label %cleanup2

if.end.266:                                       ; preds = %if.end.260
  %271 = bitcast i32* %id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %271) #1
  %272 = load i32, i32* %ID, align 4, !tbaa !5
  store i32 %272, i32* %id, align 4, !tbaa !5
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %while.cond.267

while.cond.267:                                   ; preds = %while.body.273, %if.end.266
  %273 = load i32, i32* %id, align 4, !tbaa !5
  %274 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom268 = zext i32 %274 to i64
  %275 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts.addr, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %275, i64 %idxprom268
  %276 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %arrayidx269, align 8, !tbaa !1
  %n_symbols270 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %276, i32 0, i32 0
  %277 = load i32, i32* %n_symbols270, align 4, !tbaa !9
  %cmp271 = icmp uge i32 %273, %277
  br i1 %cmp271, label %while.body.273, label %while.end.279

while.body.273:                                   ; preds = %while.cond.267
  %278 = load i32, i32* %index, align 4, !tbaa !5
  %inc274 = add i32 %278, 1
  store i32 %inc274, i32* %index, align 4, !tbaa !5
  %idxprom275 = zext i32 %278 to i64
  %279 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts.addr, align 8, !tbaa !1
  %arrayidx276 = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %279, i64 %idxprom275
  %280 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %arrayidx276, align 8, !tbaa !1
  %n_symbols277 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %280, i32 0, i32 0
  %281 = load i32, i32* %n_symbols277, align 4, !tbaa !9
  %282 = load i32, i32* %id, align 4, !tbaa !5
  %sub278 = sub i32 %282, %281
  store i32 %sub278, i32* %id, align 4, !tbaa !5
  br label %while.cond.267

while.end.279:                                    ; preds = %while.cond.267
  %283 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %284 = load i32, i32* %id, align 4, !tbaa !5
  %idxprom280 = zext i32 %284 to i64
  %285 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom281 = zext i32 %285 to i64
  %286 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts.addr, align 8, !tbaa !1
  %arrayidx282 = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %286, i64 %idxprom281
  %287 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %arrayidx282, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %287, i32 0, i32 1
  %288 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs, align 8, !tbaa !38
  %arrayidx283 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %288, i64 %idxprom280
  %289 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx283, align 8, !tbaa !1
  %call284 = call %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx* %283, %struct._Jbig2Image* %289) #4
  store %struct._Jbig2Image* %call284, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %290 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %tobool285 = icmp ne %struct._Jbig2Image* %290, null
  br i1 %tobool285, label %if.end.289, label %if.then.286

if.then.286:                                      ; preds = %while.end.279
  %291 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %292 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number287 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %292, i32 0, i32 0
  %293 = load i32, i32* %number287, align 4, !tbaa !11
  %294 = load i32, i32* %index, align 4, !tbaa !5
  %295 = load i32, i32* %id, align 4, !tbaa !5
  %call288 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %291, i32 3, i32 %293, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i32 %294, i32 %295) #4
  store i32 %call288, i32* %code, align 4, !tbaa !5
  store i32 14, i32* %cleanup.dest.slot
  br label %cleanup.290

if.end.289:                                       ; preds = %while.end.279
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.290

cleanup.290:                                      ; preds = %if.then.286, %if.end.289
  %296 = bitcast i32* %id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %cleanup.dest.291 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.291, label %cleanup.479 [
    i32 0, label %cleanup.cont.292
    i32 14, label %cleanup2
  ]

cleanup.cont.292:                                 ; preds = %cleanup.290
  %297 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBREFINE = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %297, i32 0, i32 1
  %298 = load i32, i32* %SBREFINE, align 4, !tbaa !39
  %tobool293 = icmp ne i32 %298, 0
  br i1 %tobool293, label %if.then.294, label %if.else.306

if.then.294:                                      ; preds = %cleanup.cont.292
  %299 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFF295 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %299, i32 0, i32 0
  %300 = load i32, i32* %SBHUFF295, align 4, !tbaa !13
  %tobool296 = icmp ne i32 %300, 0
  br i1 %tobool296, label %if.then.297, label %if.else.299

if.then.297:                                      ; preds = %if.then.294
  %301 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %call298 = call i32 @jbig2_huffman_get_bits(%struct._Jbig2HuffmanState* %301, i32 1, i32* %code) #4
  store i32 %call298, i32* %RI, align 4, !tbaa !5
  br label %if.end.301

if.else.299:                                      ; preds = %if.then.294
  %302 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %IARI = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %302, i32 0, i32 23
  %303 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARI, align 8, !tbaa !40
  %304 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %call300 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %303, %struct._Jbig2ArithState* %304, i32* %RI) #4
  store i32 %call300, i32* %code, align 4, !tbaa !5
  br label %if.end.301

if.end.301:                                       ; preds = %if.else.299, %if.then.297
  %305 = load i32, i32* %code, align 4, !tbaa !5
  %cmp302 = icmp slt i32 %305, 0
  br i1 %cmp302, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %if.end.301
  br label %cleanup2

if.end.305:                                       ; preds = %if.end.301
  br label %if.end.307

if.else.306:                                      ; preds = %cleanup.cont.292
  store i32 0, i32* %RI, align 4, !tbaa !5
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.306, %if.end.305
  %306 = load i32, i32* %RI, align 4, !tbaa !5
  %tobool308 = icmp ne i32 %306, 0
  br i1 %tobool308, label %if.then.309, label %if.end.385

if.then.309:                                      ; preds = %if.end.307
  %307 = bitcast %struct.Jbig2RefinementRegionParams* %rparams to i8*
  call void @llvm.lifetime.start(i64 32, i8* %307) #1
  %308 = bitcast %struct._Jbig2Image** %IBO to i8*
  call void @llvm.lifetime.start(i64 8, i8* %308) #1
  %309 = bitcast i32* %RDW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %309) #1
  %310 = bitcast i32* %RDH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %310) #1
  %311 = bitcast i32* %RDX to i8*
  call void @llvm.lifetime.start(i64 4, i8* %311) #1
  %312 = bitcast i32* %RDY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %312) #1
  %313 = bitcast %struct._Jbig2Image** %refimage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %313) #1
  %314 = bitcast i32* %BMSIZE to i8*
  call void @llvm.lifetime.start(i64 4, i8* %314) #1
  store i32 0, i32* %BMSIZE, align 4, !tbaa !5
  %315 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %315) #1
  store i32 0, i32* %code1, align 4, !tbaa !5
  %316 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %316) #1
  store i32 0, i32* %code2, align 4, !tbaa !5
  %317 = bitcast i32* %code3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %317) #1
  store i32 0, i32* %code3, align 4, !tbaa !5
  %318 = bitcast i32* %code4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %318) #1
  store i32 0, i32* %code4, align 4, !tbaa !5
  %319 = bitcast i32* %code5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %319) #1
  store i32 0, i32* %code5, align 4, !tbaa !5
  %320 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFF310 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %320, i32 0, i32 0
  %321 = load i32, i32* %SBHUFF310, align 4, !tbaa !13
  %tobool311 = icmp ne i32 %321, 0
  br i1 %tobool311, label %if.else.317, label %if.then.312

if.then.312:                                      ; preds = %if.then.309
  %322 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %IARDW = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %322, i32 0, i32 24
  %323 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDW, align 8, !tbaa !41
  %324 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %call313 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %323, %struct._Jbig2ArithState* %324, i32* %RDW) #4
  store i32 %call313, i32* %code1, align 4, !tbaa !5
  %325 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %IARDH = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %325, i32 0, i32 25
  %326 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDH, align 8, !tbaa !42
  %327 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %call314 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %326, %struct._Jbig2ArithState* %327, i32* %RDH) #4
  store i32 %call314, i32* %code2, align 4, !tbaa !5
  %328 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %IARDX = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %328, i32 0, i32 26
  %329 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDX, align 8, !tbaa !43
  %330 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %call315 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %329, %struct._Jbig2ArithState* %330, i32* %RDX) #4
  store i32 %call315, i32* %code3, align 4, !tbaa !5
  %331 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %IARDY = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %331, i32 0, i32 27
  %332 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDY, align 8, !tbaa !44
  %333 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %call316 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %332, %struct._Jbig2ArithState* %333, i32* %RDY) #4
  store i32 %call316, i32* %code4, align 4, !tbaa !5
  br label %if.end.323

if.else.317:                                      ; preds = %if.then.309
  %334 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %335 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFFRDW = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %335, i32 0, i32 13
  %336 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDW, align 8, !tbaa !45
  %call318 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %334, %struct._Jbig2HuffmanTable* %336, i32* %code1) #4
  store i32 %call318, i32* %RDW, align 4, !tbaa !5
  %337 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %338 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFFRDH = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %338, i32 0, i32 14
  %339 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDH, align 8, !tbaa !46
  %call319 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %337, %struct._Jbig2HuffmanTable* %339, i32* %code2) #4
  store i32 %call319, i32* %RDH, align 4, !tbaa !5
  %340 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %341 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFFRDX = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %341, i32 0, i32 15
  %342 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDX, align 8, !tbaa !47
  %call320 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %340, %struct._Jbig2HuffmanTable* %342, i32* %code3) #4
  store i32 %call320, i32* %RDX, align 4, !tbaa !5
  %343 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %344 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFFRDY = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %344, i32 0, i32 16
  %345 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDY, align 8, !tbaa !48
  %call321 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %343, %struct._Jbig2HuffmanTable* %345, i32* %code4) #4
  store i32 %call321, i32* %RDY, align 4, !tbaa !5
  %346 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %347 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFFRSIZE = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %347, i32 0, i32 17
  %348 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRSIZE, align 8, !tbaa !49
  %call322 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %346, %struct._Jbig2HuffmanTable* %348, i32* %code5) #4
  store i32 %call322, i32* %BMSIZE, align 4, !tbaa !5
  %349 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  call void @jbig2_huffman_skip(%struct._Jbig2HuffmanState* %349) #4
  br label %if.end.323

if.end.323:                                       ; preds = %if.else.317, %if.then.312
  %350 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp324 = icmp slt i32 %350, 0
  br i1 %cmp324, label %if.then.338, label %lor.lhs.false.326

lor.lhs.false.326:                                ; preds = %if.end.323
  %351 = load i32, i32* %code2, align 4, !tbaa !5
  %cmp327 = icmp slt i32 %351, 0
  br i1 %cmp327, label %if.then.338, label %lor.lhs.false.329

lor.lhs.false.329:                                ; preds = %lor.lhs.false.326
  %352 = load i32, i32* %code3, align 4, !tbaa !5
  %cmp330 = icmp slt i32 %352, 0
  br i1 %cmp330, label %if.then.338, label %lor.lhs.false.332

lor.lhs.false.332:                                ; preds = %lor.lhs.false.329
  %353 = load i32, i32* %code4, align 4, !tbaa !5
  %cmp333 = icmp slt i32 %353, 0
  br i1 %cmp333, label %if.then.338, label %lor.lhs.false.335

lor.lhs.false.335:                                ; preds = %lor.lhs.false.332
  %354 = load i32, i32* %code5, align 4, !tbaa !5
  %cmp336 = icmp slt i32 %354, 0
  br i1 %cmp336, label %if.then.338, label %if.end.341

if.then.338:                                      ; preds = %lor.lhs.false.335, %lor.lhs.false.332, %lor.lhs.false.329, %lor.lhs.false.326, %if.end.323
  %355 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %356 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number339 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %356, i32 0, i32 0
  %357 = load i32, i32* %number339, align 4, !tbaa !11
  %call340 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %355, i32 3, i32 %357, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0)) #4
  store i32 %call340, i32* %code, align 4, !tbaa !5
  store i32 14, i32* %cleanup.dest.slot
  br label %cleanup.370

if.end.341:                                       ; preds = %lor.lhs.false.335
  %358 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  store %struct._Jbig2Image* %358, %struct._Jbig2Image** %IBO, align 8, !tbaa !1
  %359 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %360 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IBO, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %360, i32 0, i32 0
  %361 = load i32, i32* %width, align 4, !tbaa !50
  %362 = load i32, i32* %RDW, align 4, !tbaa !5
  %add342 = add nsw i32 %361, %362
  %363 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IBO, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %363, i32 0, i32 1
  %364 = load i32, i32* %height, align 4, !tbaa !52
  %365 = load i32, i32* %RDH, align 4, !tbaa !5
  %add343 = add nsw i32 %364, %365
  %call344 = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %359, i32 %add342, i32 %add343) #4
  store %struct._Jbig2Image* %call344, %struct._Jbig2Image** %refimage, align 8, !tbaa !1
  %366 = load %struct._Jbig2Image*, %struct._Jbig2Image** %refimage, align 8, !tbaa !1
  %cmp345 = icmp eq %struct._Jbig2Image* %366, null
  br i1 %cmp345, label %if.then.347, label %if.end.354

if.then.347:                                      ; preds = %if.end.341
  %367 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %368 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IBO, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %367, %struct._Jbig2Image* %368) #4
  %369 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFF348 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %369, i32 0, i32 0
  %370 = load i32, i32* %SBHUFF348, align 4, !tbaa !13
  %tobool349 = icmp ne i32 %370, 0
  br i1 %tobool349, label %if.then.350, label %if.end.351

if.then.350:                                      ; preds = %if.then.347
  %371 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %372 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBSYMCODES, align 8, !tbaa !1
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %371, %struct._Jbig2HuffmanTable* %372) #4
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.350, %if.then.347
  %373 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %374 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number352 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %374, i32 0, i32 0
  %375 = load i32, i32* %number352, align 4, !tbaa !11
  %call353 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %373, i32 3, i32 %375, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0)) #4
  store i32 %call353, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.370

if.end.354:                                       ; preds = %if.end.341
  %376 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBRTEMPLATE = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %376, i32 0, i32 28
  %377 = load i32, i32* %SBRTEMPLATE, align 4, !tbaa !53
  %GRTEMPLATE = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %rparams, i32 0, i32 0
  store i32 %377, i32* %GRTEMPLATE, align 4, !tbaa !54
  %378 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IBO, align 8, !tbaa !1
  %reference = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %rparams, i32 0, i32 1
  store %struct._Jbig2Image* %378, %struct._Jbig2Image** %reference, align 8, !tbaa !56
  %379 = load i32, i32* %RDW, align 4, !tbaa !5
  %shr = ashr i32 %379, 1
  %380 = load i32, i32* %RDX, align 4, !tbaa !5
  %add355 = add nsw i32 %shr, %380
  %DX = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %rparams, i32 0, i32 2
  store i32 %add355, i32* %DX, align 4, !tbaa !57
  %381 = load i32, i32* %RDH, align 4, !tbaa !5
  %shr356 = ashr i32 %381, 1
  %382 = load i32, i32* %RDY, align 4, !tbaa !5
  %add357 = add nsw i32 %shr356, %382
  %DY = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %rparams, i32 0, i32 3
  store i32 %add357, i32* %DY, align 4, !tbaa !58
  %TPGRON = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %rparams, i32 0, i32 4
  store i32 0, i32* %TPGRON, align 4, !tbaa !59
  %grat = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %rparams, i32 0, i32 5
  %arraydecay358 = getelementptr inbounds [4 x i8], [4 x i8]* %grat, i32 0, i32 0
  %383 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %sbrat = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %383, i32 0, i32 29
  %arraydecay359 = getelementptr inbounds [4 x i8], [4 x i8]* %sbrat, i32 0, i32 0
  %call360 = call i8* @memcpy(i8* %arraydecay358, i8* %arraydecay359, i64 4) #5
  %384 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %385 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %386 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as.addr, align 8, !tbaa !1
  %387 = load %struct._Jbig2Image*, %struct._Jbig2Image** %refimage, align 8, !tbaa !1
  %388 = load i8*, i8** %GR_stats.addr, align 8, !tbaa !1
  %call361 = call i32 @jbig2_decode_refinement_region(%struct._Jbig2Ctx* %384, %struct._Jbig2Segment* %385, %struct.Jbig2RefinementRegionParams* %rparams, %struct._Jbig2ArithState* %386, %struct._Jbig2Image* %387, i8* %388) #4
  store i32 %call361, i32* %code, align 4, !tbaa !5
  %389 = load i32, i32* %code, align 4, !tbaa !5
  %cmp362 = icmp slt i32 %389, 0
  br i1 %cmp362, label %if.then.364, label %if.end.365

if.then.364:                                      ; preds = %if.end.354
  %390 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %391 = load %struct._Jbig2Image*, %struct._Jbig2Image** %refimage, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %390, %struct._Jbig2Image* %391) #4
  store i32 14, i32* %cleanup.dest.slot
  br label %cleanup.370

if.end.365:                                       ; preds = %if.end.354
  %392 = load %struct._Jbig2Image*, %struct._Jbig2Image** %refimage, align 8, !tbaa !1
  store %struct._Jbig2Image* %392, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %393 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %394 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IBO, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %393, %struct._Jbig2Image* %394) #4
  %395 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFF366 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %395, i32 0, i32 0
  %396 = load i32, i32* %SBHUFF366, align 4, !tbaa !13
  %tobool367 = icmp ne i32 %396, 0
  br i1 %tobool367, label %if.then.368, label %if.end.369

if.then.368:                                      ; preds = %if.end.365
  %397 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %398 = load i32, i32* %BMSIZE, align 4, !tbaa !5
  call void @jbig2_huffman_advance(%struct._Jbig2HuffmanState* %397, i32 %398) #4
  br label %if.end.369

if.end.369:                                       ; preds = %if.then.368, %if.end.365
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.370

cleanup.370:                                      ; preds = %if.then.364, %if.then.338, %if.end.369, %if.end.351
  %399 = bitcast i32* %code5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %399) #1
  %400 = bitcast i32* %code4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %400) #1
  %401 = bitcast i32* %code3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %401) #1
  %402 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %402) #1
  %403 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %403) #1
  %404 = bitcast i32* %BMSIZE to i8*
  call void @llvm.lifetime.end(i64 4, i8* %404) #1
  %405 = bitcast %struct._Jbig2Image** %refimage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %405) #1
  %406 = bitcast i32* %RDY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %406) #1
  %407 = bitcast i32* %RDX to i8*
  call void @llvm.lifetime.end(i64 4, i8* %407) #1
  %408 = bitcast i32* %RDH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %408) #1
  %409 = bitcast i32* %RDW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %409) #1
  %410 = bitcast %struct._Jbig2Image** %IBO to i8*
  call void @llvm.lifetime.end(i64 8, i8* %410) #1
  %411 = bitcast %struct.Jbig2RefinementRegionParams* %rparams to i8*
  call void @llvm.lifetime.end(i64 32, i8* %411) #1
  %cleanup.dest.383 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.383, label %cleanup.479 [
    i32 0, label %cleanup.cont.384
    i32 14, label %cleanup2
  ]

cleanup.cont.384:                                 ; preds = %cleanup.370
  br label %if.end.385

if.end.385:                                       ; preds = %cleanup.cont.384, %if.end.307
  %412 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %TRANSPOSED = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %412, i32 0, i32 4
  %413 = load i32, i32* %TRANSPOSED, align 4, !tbaa !60
  %tobool386 = icmp ne i32 %413, 0
  br i1 %tobool386, label %if.else.393, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.385
  %414 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %REFCORNER = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %414, i32 0, i32 5
  %415 = load i32, i32* %REFCORNER, align 4, !tbaa !61
  %cmp387 = icmp ugt i32 %415, 1
  br i1 %cmp387, label %if.then.389, label %if.else.393

if.then.389:                                      ; preds = %land.lhs.true
  %416 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %width390 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %416, i32 0, i32 0
  %417 = load i32, i32* %width390, align 4, !tbaa !50
  %sub391 = sub nsw i32 %417, 1
  %418 = load i32, i32* %CURS, align 4, !tbaa !5
  %add392 = add nsw i32 %418, %sub391
  store i32 %add392, i32* %CURS, align 4, !tbaa !5
  br label %if.end.404

if.else.393:                                      ; preds = %land.lhs.true, %if.end.385
  %419 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %TRANSPOSED394 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %419, i32 0, i32 4
  %420 = load i32, i32* %TRANSPOSED394, align 4, !tbaa !60
  %tobool395 = icmp ne i32 %420, 0
  br i1 %tobool395, label %land.lhs.true.396, label %if.end.403

land.lhs.true.396:                                ; preds = %if.else.393
  %421 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %REFCORNER397 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %421, i32 0, i32 5
  %422 = load i32, i32* %REFCORNER397, align 4, !tbaa !61
  %and = and i32 %422, 1
  %tobool398 = icmp ne i32 %and, 0
  br i1 %tobool398, label %if.end.403, label %if.then.399

if.then.399:                                      ; preds = %land.lhs.true.396
  %423 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %height400 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %423, i32 0, i32 1
  %424 = load i32, i32* %height400, align 4, !tbaa !52
  %sub401 = sub nsw i32 %424, 1
  %425 = load i32, i32* %CURS, align 4, !tbaa !5
  %add402 = add nsw i32 %425, %sub401
  store i32 %add402, i32* %CURS, align 4, !tbaa !5
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.399, %land.lhs.true.396, %if.else.393
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.403, %if.then.389
  %426 = load i32, i32* %CURS, align 4, !tbaa !5
  store i32 %426, i32* %S, align 4, !tbaa !5
  %427 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %TRANSPOSED405 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %427, i32 0, i32 4
  %428 = load i32, i32* %TRANSPOSED405, align 4, !tbaa !60
  %tobool406 = icmp ne i32 %428, 0
  br i1 %tobool406, label %if.else.424, label %if.then.407

if.then.407:                                      ; preds = %if.end.404
  %429 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %REFCORNER408 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %429, i32 0, i32 5
  %430 = load i32, i32* %REFCORNER408, align 4, !tbaa !61
  switch i32 %430, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.409
    i32 0, label %sw.bb.413
    i32 2, label %sw.bb.417
  ]

sw.bb:                                            ; preds = %if.then.407
  %431 = load i32, i32* %S, align 4, !tbaa !5
  store i32 %431, i32* %x, align 4, !tbaa !5
  %432 = load i32, i32* %T, align 4, !tbaa !5
  store i32 %432, i32* %y, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.409:                                        ; preds = %if.then.407
  %433 = load i32, i32* %S, align 4, !tbaa !5
  %434 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %width410 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %434, i32 0, i32 0
  %435 = load i32, i32* %width410, align 4, !tbaa !50
  %sub411 = sub nsw i32 %433, %435
  %add412 = add nsw i32 %sub411, 1
  store i32 %add412, i32* %x, align 4, !tbaa !5
  %436 = load i32, i32* %T, align 4, !tbaa !5
  store i32 %436, i32* %y, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.413:                                        ; preds = %if.then.407
  %437 = load i32, i32* %S, align 4, !tbaa !5
  store i32 %437, i32* %x, align 4, !tbaa !5
  %438 = load i32, i32* %T, align 4, !tbaa !5
  %439 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %height414 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %439, i32 0, i32 1
  %440 = load i32, i32* %height414, align 4, !tbaa !52
  %sub415 = sub nsw i32 %438, %440
  %add416 = add nsw i32 %sub415, 1
  store i32 %add416, i32* %y, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.417:                                        ; preds = %if.then.407
  %441 = load i32, i32* %S, align 4, !tbaa !5
  %442 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %width418 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %442, i32 0, i32 0
  %443 = load i32, i32* %width418, align 4, !tbaa !50
  %sub419 = sub nsw i32 %441, %443
  %add420 = add nsw i32 %sub419, 1
  store i32 %add420, i32* %x, align 4, !tbaa !5
  %444 = load i32, i32* %T, align 4, !tbaa !5
  %445 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %height421 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %445, i32 0, i32 1
  %446 = load i32, i32* %height421, align 4, !tbaa !52
  %sub422 = sub nsw i32 %444, %446
  %add423 = add nsw i32 %sub422, 1
  store i32 %add423, i32* %y, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.407, %sw.bb.417, %sw.bb.413, %sw.bb.409, %sw.bb
  br label %if.end.443

if.else.424:                                      ; preds = %if.end.404
  %447 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %REFCORNER425 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %447, i32 0, i32 5
  %448 = load i32, i32* %REFCORNER425, align 4, !tbaa !61
  switch i32 %448, label %sw.epilog.442 [
    i32 1, label %sw.bb.426
    i32 3, label %sw.bb.427
    i32 0, label %sw.bb.431
    i32 2, label %sw.bb.435
  ]

sw.bb.426:                                        ; preds = %if.else.424
  %449 = load i32, i32* %T, align 4, !tbaa !5
  store i32 %449, i32* %x, align 4, !tbaa !5
  %450 = load i32, i32* %S, align 4, !tbaa !5
  store i32 %450, i32* %y, align 4, !tbaa !5
  br label %sw.epilog.442

sw.bb.427:                                        ; preds = %if.else.424
  %451 = load i32, i32* %T, align 4, !tbaa !5
  %452 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %width428 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %452, i32 0, i32 0
  %453 = load i32, i32* %width428, align 4, !tbaa !50
  %sub429 = sub nsw i32 %451, %453
  %add430 = add nsw i32 %sub429, 1
  store i32 %add430, i32* %x, align 4, !tbaa !5
  %454 = load i32, i32* %S, align 4, !tbaa !5
  store i32 %454, i32* %y, align 4, !tbaa !5
  br label %sw.epilog.442

sw.bb.431:                                        ; preds = %if.else.424
  %455 = load i32, i32* %T, align 4, !tbaa !5
  store i32 %455, i32* %x, align 4, !tbaa !5
  %456 = load i32, i32* %S, align 4, !tbaa !5
  %457 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %height432 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %457, i32 0, i32 1
  %458 = load i32, i32* %height432, align 4, !tbaa !52
  %sub433 = sub nsw i32 %456, %458
  %add434 = add nsw i32 %sub433, 1
  store i32 %add434, i32* %y, align 4, !tbaa !5
  br label %sw.epilog.442

sw.bb.435:                                        ; preds = %if.else.424
  %459 = load i32, i32* %T, align 4, !tbaa !5
  %460 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %width436 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %460, i32 0, i32 0
  %461 = load i32, i32* %width436, align 4, !tbaa !50
  %sub437 = sub nsw i32 %459, %461
  %add438 = add nsw i32 %sub437, 1
  store i32 %add438, i32* %x, align 4, !tbaa !5
  %462 = load i32, i32* %S, align 4, !tbaa !5
  %463 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %height439 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %463, i32 0, i32 1
  %464 = load i32, i32* %height439, align 4, !tbaa !52
  %sub440 = sub nsw i32 %462, %464
  %add441 = add nsw i32 %sub440, 1
  store i32 %add441, i32* %y, align 4, !tbaa !5
  br label %sw.epilog.442

sw.epilog.442:                                    ; preds = %if.else.424, %sw.bb.435, %sw.bb.431, %sw.bb.427, %sw.bb.426
  br label %if.end.443

if.end.443:                                       ; preds = %sw.epilog.442, %sw.epilog
  %465 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %466 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image.addr, align 8, !tbaa !1
  %467 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %468 = load i32, i32* %x, align 4, !tbaa !5
  %469 = load i32, i32* %y, align 4, !tbaa !5
  %470 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBCOMBOP = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %470, i32 0, i32 3
  %471 = load i32, i32* %SBCOMBOP, align 4, !tbaa !62
  %call444 = call i32 @jbig2_image_compose(%struct._Jbig2Ctx* %465, %struct._Jbig2Image* %466, %struct._Jbig2Image* %467, i32 %468, i32 %469, i32 %471) #4
  store i32 %call444, i32* %code, align 4, !tbaa !5
  %472 = load i32, i32* %code, align 4, !tbaa !5
  %cmp445 = icmp slt i32 %472, 0
  br i1 %cmp445, label %if.then.447, label %if.end.448

if.then.447:                                      ; preds = %if.end.443
  %473 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %474 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %473, %struct._Jbig2Image* %474) #4
  br label %cleanup2

if.end.448:                                       ; preds = %if.end.443
  %475 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %TRANSPOSED449 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %475, i32 0, i32 4
  %476 = load i32, i32* %TRANSPOSED449, align 4, !tbaa !60
  %tobool450 = icmp ne i32 %476, 0
  br i1 %tobool450, label %if.else.459, label %land.lhs.true.451

land.lhs.true.451:                                ; preds = %if.end.448
  %477 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %REFCORNER452 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %477, i32 0, i32 5
  %478 = load i32, i32* %REFCORNER452, align 4, !tbaa !61
  %cmp453 = icmp ult i32 %478, 2
  br i1 %cmp453, label %if.then.455, label %if.else.459

if.then.455:                                      ; preds = %land.lhs.true.451
  %479 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %width456 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %479, i32 0, i32 0
  %480 = load i32, i32* %width456, align 4, !tbaa !50
  %sub457 = sub nsw i32 %480, 1
  %481 = load i32, i32* %CURS, align 4, !tbaa !5
  %add458 = add nsw i32 %481, %sub457
  store i32 %add458, i32* %CURS, align 4, !tbaa !5
  br label %if.end.471

if.else.459:                                      ; preds = %land.lhs.true.451, %if.end.448
  %482 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %TRANSPOSED460 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %482, i32 0, i32 4
  %483 = load i32, i32* %TRANSPOSED460, align 4, !tbaa !60
  %tobool461 = icmp ne i32 %483, 0
  br i1 %tobool461, label %land.lhs.true.462, label %if.end.470

land.lhs.true.462:                                ; preds = %if.else.459
  %484 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %REFCORNER463 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %484, i32 0, i32 5
  %485 = load i32, i32* %REFCORNER463, align 4, !tbaa !61
  %and464 = and i32 %485, 1
  %tobool465 = icmp ne i32 %and464, 0
  br i1 %tobool465, label %if.then.466, label %if.end.470

if.then.466:                                      ; preds = %land.lhs.true.462
  %486 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  %height467 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %486, i32 0, i32 1
  %487 = load i32, i32* %height467, align 4, !tbaa !52
  %sub468 = sub nsw i32 %487, 1
  %488 = load i32, i32* %CURS, align 4, !tbaa !5
  %add469 = add nsw i32 %488, %sub468
  store i32 %add469, i32* %CURS, align 4, !tbaa !5
  br label %if.end.470

if.end.470:                                       ; preds = %if.then.466, %land.lhs.true.462, %if.else.459
  br label %if.end.471

if.end.471:                                       ; preds = %if.end.470, %if.then.455
  %489 = load i32, i32* %NINSTANCES, align 4, !tbaa !5
  %inc472 = add i32 %489, 1
  store i32 %inc472, i32* %NINSTANCES, align 4, !tbaa !5
  %490 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %491 = load %struct._Jbig2Image*, %struct._Jbig2Image** %IB, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %490, %struct._Jbig2Image* %491) #4
  br label %for.cond.196

for.end.473:                                      ; preds = %if.then.227, %if.then.215
  br label %while.cond.176

while.end.474:                                    ; preds = %while.cond.176
  br label %cleanup2

cleanup2:                                         ; preds = %while.end.474, %cleanup.370, %cleanup.290, %if.then.447, %if.then.304, %if.then.263, %if.then.259, %if.then.247, %if.then.208, %if.then.191, %if.then.173
  %492 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %params.addr, align 8, !tbaa !1
  %SBHUFF475 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %492, i32 0, i32 0
  %493 = load i32, i32* %SBHUFF475, align 4, !tbaa !13
  %tobool476 = icmp ne i32 %493, 0
  br i1 %tobool476, label %if.then.477, label %if.end.478

if.then.477:                                      ; preds = %cleanup2
  %494 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %495 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBSYMCODES, align 8, !tbaa !1
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %494, %struct._Jbig2HuffmanTable* %495) #4
  br label %if.end.478

if.end.478:                                       ; preds = %if.then.477, %cleanup2
  %496 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %497 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  call void @jbig2_huffman_free(%struct._Jbig2Ctx* %496, %struct._Jbig2HuffmanState* %497) #4
  %498 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %498, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.479

cleanup.479:                                      ; preds = %if.end.478, %cleanup.370, %cleanup.290, %cleanup
  %499 = bitcast i32* %RI to i8*
  call void @llvm.lifetime.end(i64 4, i8* %499) #1
  %500 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %500) #1
  %501 = bitcast %struct._Jbig2HuffmanTable** %SBSYMCODES to i8*
  call void @llvm.lifetime.end(i64 8, i8* %501) #1
  %502 = bitcast %struct._Jbig2HuffmanState** %hs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %502) #1
  %503 = bitcast %struct._Jbig2Image** %IB to i8*
  call void @llvm.lifetime.end(i64 8, i8* %503) #1
  %504 = bitcast i32* %SBNUMSYMS to i8*
  call void @llvm.lifetime.end(i64 4, i8* %504) #1
  %505 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %505) #1
  %506 = bitcast i32* %first_symbol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %506) #1
  %507 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %507) #1
  %508 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %508) #1
  %509 = bitcast i32* %T to i8*
  call void @llvm.lifetime.end(i64 4, i8* %509) #1
  %510 = bitcast i32* %S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %510) #1
  %511 = bitcast i32* %CURT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %511) #1
  %512 = bitcast i32* %CURS to i8*
  call void @llvm.lifetime.end(i64 4, i8* %512) #1
  %513 = bitcast i32* %IDS to i8*
  call void @llvm.lifetime.end(i64 4, i8* %513) #1
  %514 = bitcast i32* %DFS to i8*
  call void @llvm.lifetime.end(i64 4, i8* %514) #1
  %515 = bitcast i32* %DT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %515) #1
  %516 = bitcast i32* %FIRSTS to i8*
  call void @llvm.lifetime.end(i64 4, i8* %516) #1
  %517 = bitcast i32* %STRIPT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %517) #1
  %518 = bitcast i32* %ID to i8*
  call void @llvm.lifetime.end(i64 4, i8* %518) #1
  %519 = bitcast i32* %NINSTANCES to i8*
  call void @llvm.lifetime.end(i64 4, i8* %519) #1
  %520 = load i32, i32* %retval
  ret i32 %520
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @jbig2_error(%struct._Jbig2Ctx*, i32, i32, i8*, ...) #2

declare %struct._Jbig2HuffmanState* @jbig2_huffman_new(%struct._Jbig2Ctx*, %struct._Jbig2WordStream*) #2

declare i32 @jbig2_huffman_get_bits(%struct._Jbig2HuffmanState*, i32, i32*) #2

declare %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx*, %struct._Jbig2HuffmanParams*) #2

declare i8* @jbig2_alloc(%struct._Jbig2Allocator*, i64, i64) #2

declare i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanTable*, i32*) #2

declare void @jbig2_huffman_skip(%struct._Jbig2HuffmanState*) #2

declare void @jbig2_free(%struct._Jbig2Allocator*, i8*) #2

declare void @jbig2_release_huffman_table(%struct._Jbig2Ctx*, %struct._Jbig2HuffmanTable*) #2

declare void @jbig2_huffman_free(%struct._Jbig2Ctx*, %struct._Jbig2HuffmanState*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @jbig2_image_clear(%struct._Jbig2Ctx*, %struct._Jbig2Image*, i32) #2

declare i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithState*, i32*) #2

declare i32 @jbig2_arith_iaid_decode(%struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithState*, i32*) #2

declare %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx*, %struct._Jbig2Image*) #2

declare %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx*, i32, i32) #2

declare void @jbig2_image_release(%struct._Jbig2Ctx*, %struct._Jbig2Image*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @jbig2_decode_refinement_region(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, %struct.Jbig2RefinementRegionParams*, %struct._Jbig2ArithState*, %struct._Jbig2Image*, i8*) #2

declare void @jbig2_huffman_advance(%struct._Jbig2HuffmanState*, i32) #2

declare i32 @jbig2_image_compose(%struct._Jbig2Ctx*, %struct._Jbig2Image*, %struct._Jbig2Image*, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @jbig2_text_region(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %segment_data) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %segment_data.addr = alloca i8*, align 8
  %offset = alloca i32, align 4
  %region_info = alloca %struct.Jbig2RegionSegmentInfo, align 4
  %params = alloca %struct.Jbig2TextRegionParams, align 8
  %image = alloca %struct._Jbig2Image*, align 8
  %dicts = alloca %struct.Jbig2SymbolDict**, align 8
  %n_dicts = alloca i32, align 4
  %flags = alloca i16, align 2
  %huffman_flags = alloca i16, align 2
  %GR_stats = alloca i8*, align 8
  %code = alloca i32, align 4
  %ws = alloca %struct._Jbig2WordStream*, align 8
  %as = alloca %struct._Jbig2ArithState*, align 8
  %table_index = alloca i32, align 4
  %huffman_params = alloca %struct._Jbig2HuffmanParams*, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %stats_size = alloca i32, align 4
  %SBSYMCODELEN = alloca i32, align 4
  %index407 = alloca i32, align 4
  %SBNUMSYMS = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %offset, align 4, !tbaa !5
  %1 = bitcast %struct.Jbig2RegionSegmentInfo* %region_info to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast %struct.Jbig2TextRegionParams* %params to i8*
  call void @llvm.lifetime.start(i64 192, i8* %2) #1
  %3 = bitcast %struct._Jbig2Image** %image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %4 = bitcast %struct.Jbig2SymbolDict*** %dicts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.Jbig2SymbolDict** null, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %5 = bitcast i32* %n_dicts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %n_dicts, align 4, !tbaa !5
  %6 = bitcast i16* %flags to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  store i16 0, i16* %flags, align 2, !tbaa !63
  %7 = bitcast i16* %huffman_flags to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  store i16 0, i16* %huffman_flags, align 2, !tbaa !63
  %8 = bitcast i8** %GR_stats to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8* null, i8** %GR_stats, align 8, !tbaa !1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %10 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct._Jbig2WordStream* null, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %11 = bitcast %struct._Jbig2ArithState** %as to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct._Jbig2ArithState* null, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %12 = bitcast i32* %table_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %table_index, align 4, !tbaa !5
  %13 = bitcast %struct._Jbig2HuffmanParams** %huffman_params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store %struct._Jbig2HuffmanParams* null, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %14 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %14, i32 0, i32 3
  %15 = load i64, i64* %data_length, align 8, !tbaa !65
  %cmp = icmp ult i64 %15, 17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %too_short

if.end:                                           ; preds = %entry
  %16 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  call void @jbig2_get_region_segment_info(%struct.Jbig2RegionSegmentInfo* %region_info, i8* %16) #4
  %17 = load i32, i32* %offset, align 4, !tbaa !5
  %add = add nsw i32 %17, 17
  store i32 %add, i32* %offset, align 4, !tbaa !5
  %18 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %19 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %19 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  %call = call zeroext i16 @jbig2_get_uint16(i8* %add.ptr) #4
  store i16 %call, i16* %flags, align 2, !tbaa !63
  %20 = load i32, i32* %offset, align 4, !tbaa !5
  %add1 = add nsw i32 %20, 2
  store i32 %add1, i32* %offset, align 4, !tbaa !5
  %21 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %22 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %22, i32 0, i32 0
  %23 = load i32, i32* %number, align 4, !tbaa !11
  %24 = load i16, i16* %flags, align 2, !tbaa !63
  %conv = zext i16 %24 to i32
  %call2 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %21, i32 0, i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i32 %conv) #4
  %25 = bitcast %struct.Jbig2TextRegionParams* %params to i8*
  %call3 = call i8* @memset(i8* %25, i32 0, i64 192) #5
  %26 = load i16, i16* %flags, align 2, !tbaa !63
  %conv4 = zext i16 %26 to i32
  %and = and i32 %conv4, 1
  %SBHUFF = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 0
  store i32 %and, i32* %SBHUFF, align 4, !tbaa !13
  %27 = load i16, i16* %flags, align 2, !tbaa !63
  %conv5 = zext i16 %27 to i32
  %and6 = and i32 %conv5, 2
  %SBREFINE = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 1
  store i32 %and6, i32* %SBREFINE, align 4, !tbaa !39
  %28 = load i16, i16* %flags, align 2, !tbaa !63
  %conv7 = zext i16 %28 to i32
  %and8 = and i32 %conv7, 12
  %shr = ashr i32 %and8, 2
  %LOGSBSTRIPS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 8
  store i32 %shr, i32* %LOGSBSTRIPS, align 4, !tbaa !35
  %LOGSBSTRIPS9 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 8
  %29 = load i32, i32* %LOGSBSTRIPS9, align 4, !tbaa !35
  %shl = shl i32 1, %29
  %SBSTRIPS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 9
  store i32 %shl, i32* %SBSTRIPS, align 4, !tbaa !28
  %30 = load i16, i16* %flags, align 2, !tbaa !63
  %conv10 = zext i16 %30 to i32
  %and11 = and i32 %conv10, 48
  %shr12 = ashr i32 %and11, 4
  %REFCORNER = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 5
  store i32 %shr12, i32* %REFCORNER, align 4, !tbaa !61
  %31 = load i16, i16* %flags, align 2, !tbaa !63
  %conv13 = zext i16 %31 to i32
  %and14 = and i32 %conv13, 64
  %TRANSPOSED = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 4
  store i32 %and14, i32* %TRANSPOSED, align 4, !tbaa !60
  %32 = load i16, i16* %flags, align 2, !tbaa !63
  %conv15 = zext i16 %32 to i32
  %and16 = and i32 %conv15, 384
  %shr17 = ashr i32 %and16, 7
  %SBCOMBOP = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 3
  store i32 %shr17, i32* %SBCOMBOP, align 4, !tbaa !62
  %33 = load i16, i16* %flags, align 2, !tbaa !63
  %conv18 = zext i16 %33 to i32
  %and19 = and i32 %conv18, 512
  %SBDEFPIXEL = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 2
  store i32 %and19, i32* %SBDEFPIXEL, align 4, !tbaa !25
  %34 = load i16, i16* %flags, align 2, !tbaa !63
  %conv20 = zext i16 %34 to i32
  %and21 = and i32 %conv20, 31744
  %shr22 = ashr i32 %and21, 10
  %SBDSOFFSET = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 6
  store i32 %shr22, i32* %SBDSOFFSET, align 4, !tbaa !34
  %SBDSOFFSET23 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 6
  %35 = load i32, i32* %SBDSOFFSET23, align 4, !tbaa !34
  %cmp24 = icmp sgt i32 %35, 15
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end
  %SBDSOFFSET27 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 6
  %36 = load i32, i32* %SBDSOFFSET27, align 4, !tbaa !34
  %sub = sub nsw i32 %36, 32
  store i32 %sub, i32* %SBDSOFFSET27, align 4, !tbaa !34
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end
  %37 = load i16, i16* %flags, align 2, !tbaa !63
  %conv29 = zext i16 %37 to i32
  %and30 = and i32 %conv29, 32768
  %SBRTEMPLATE = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 28
  store i32 %and30, i32* %SBRTEMPLATE, align 4, !tbaa !53
  %SBDSOFFSET31 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 6
  %38 = load i32, i32* %SBDSOFFSET31, align 4, !tbaa !34
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end.28
  %39 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %40 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number33 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %40, i32 0, i32 0
  %41 = load i32, i32* %number33, align 4, !tbaa !11
  %SBDSOFFSET34 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 6
  %42 = load i32, i32* %SBDSOFFSET34, align 4, !tbaa !34
  %call35 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %39, i32 0, i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i32 0, i32 0), i32 %42) #4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.end.28
  %SBHUFF37 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 0
  %43 = load i32, i32* %SBHUFF37, align 4, !tbaa !13
  %tobool38 = icmp ne i32 %43, 0
  br i1 %tobool38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.end.36
  %44 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %45 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext40 = sext i32 %45 to i64
  %add.ptr41 = getelementptr inbounds i8, i8* %44, i64 %idx.ext40
  %call42 = call zeroext i16 @jbig2_get_uint16(i8* %add.ptr41) #4
  store i16 %call42, i16* %huffman_flags, align 2, !tbaa !63
  %46 = load i32, i32* %offset, align 4, !tbaa !5
  %add43 = add nsw i32 %46, 2
  store i32 %add43, i32* %offset, align 4, !tbaa !5
  %47 = load i16, i16* %huffman_flags, align 2, !tbaa !63
  %conv44 = zext i16 %47 to i32
  %and45 = and i32 %conv44, 32768
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.then.39
  %48 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %49 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number48 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %49, i32 0, i32 0
  %50 = load i32, i32* %number48, align 4, !tbaa !11
  %call49 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %48, i32 2, i32 %50, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.19, i32 0, i32 0)) #4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.then.39
  br label %if.end.74

if.else:                                          ; preds = %if.end.36
  %SBREFINE51 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 1
  %51 = load i32, i32* %SBREFINE51, align 4, !tbaa !39
  %tobool52 = icmp ne i32 %51, 0
  br i1 %tobool52, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %if.else
  %SBRTEMPLATE53 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 28
  %52 = load i32, i32* %SBRTEMPLATE53, align 4, !tbaa !53
  %tobool54 = icmp ne i32 %52, 0
  br i1 %tobool54, label %if.end.73, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true
  %53 = load i32, i32* %offset, align 4, !tbaa !5
  %idxprom = sext i32 %53 to i64
  %54 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %54, i64 %idxprom
  %55 = load i8, i8* %arrayidx, align 1, !tbaa !66
  %sbrat = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 29
  %arrayidx56 = getelementptr inbounds [4 x i8], [4 x i8]* %sbrat, i32 0, i64 0
  store i8 %55, i8* %arrayidx56, align 1, !tbaa !66
  %56 = load i32, i32* %offset, align 4, !tbaa !5
  %add57 = add nsw i32 %56, 1
  %idxprom58 = sext i32 %add57 to i64
  %57 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8, i8* %57, i64 %idxprom58
  %58 = load i8, i8* %arrayidx59, align 1, !tbaa !66
  %sbrat60 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 29
  %arrayidx61 = getelementptr inbounds [4 x i8], [4 x i8]* %sbrat60, i32 0, i64 1
  store i8 %58, i8* %arrayidx61, align 1, !tbaa !66
  %59 = load i32, i32* %offset, align 4, !tbaa !5
  %add62 = add nsw i32 %59, 2
  %idxprom63 = sext i32 %add62 to i64
  %60 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i8, i8* %60, i64 %idxprom63
  %61 = load i8, i8* %arrayidx64, align 1, !tbaa !66
  %sbrat65 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 29
  %arrayidx66 = getelementptr inbounds [4 x i8], [4 x i8]* %sbrat65, i32 0, i64 2
  store i8 %61, i8* %arrayidx66, align 1, !tbaa !66
  %62 = load i32, i32* %offset, align 4, !tbaa !5
  %add67 = add nsw i32 %62, 3
  %idxprom68 = sext i32 %add67 to i64
  %63 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %63, i64 %idxprom68
  %64 = load i8, i8* %arrayidx69, align 1, !tbaa !66
  %sbrat70 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 29
  %arrayidx71 = getelementptr inbounds [4 x i8], [4 x i8]* %sbrat70, i32 0, i64 3
  store i8 %64, i8* %arrayidx71, align 1, !tbaa !66
  %65 = load i32, i32* %offset, align 4, !tbaa !5
  %add72 = add nsw i32 %65, 4
  store i32 %add72, i32* %offset, align 4, !tbaa !5
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.55, %land.lhs.true, %if.else
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.50
  %66 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %67 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext75 = sext i32 %67 to i64
  %add.ptr76 = getelementptr inbounds i8, i8* %66, i64 %idx.ext75
  %call77 = call i32 @jbig2_get_uint32(i8* %add.ptr76) #4
  %SBNUMINSTANCES = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 7
  store i32 %call77, i32* %SBNUMINSTANCES, align 4, !tbaa !29
  %68 = load i32, i32* %offset, align 4, !tbaa !5
  %add78 = add nsw i32 %68, 4
  store i32 %add78, i32* %offset, align 4, !tbaa !5
  %SBHUFF79 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 0
  %69 = load i32, i32* %SBHUFF79, align 4, !tbaa !13
  %tobool80 = icmp ne i32 %69, 0
  br i1 %tobool80, label %if.then.81, label %if.end.323

if.then.81:                                       ; preds = %if.end.74
  %70 = load i16, i16* %huffman_flags, align 2, !tbaa !63
  %conv82 = zext i16 %70 to i32
  %and83 = and i32 %conv82, 3
  switch i32 %and83, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.85
    i32 3, label %sw.bb.88
    i32 2, label %sw.bb.98
  ]

sw.bb:                                            ; preds = %if.then.81
  %71 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call84 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %71, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_F) #4
  %SBHUFFFS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 10
  store %struct._Jbig2HuffmanTable* %call84, %struct._Jbig2HuffmanTable** %SBHUFFFS, align 8, !tbaa !30
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.then.81
  %72 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call86 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %72, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_G) #4
  %SBHUFFFS87 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 10
  store %struct._Jbig2HuffmanTable* %call86, %struct._Jbig2HuffmanTable** %SBHUFFFS87, align 8, !tbaa !30
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.then.81
  %73 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %74 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %75 = load i32, i32* %table_index, align 4, !tbaa !5
  %call89 = call %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx* %73, %struct._Jbig2Segment* %74, i32 %75) #4
  store %struct._Jbig2HuffmanParams* %call89, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %76 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %cmp90 = icmp eq %struct._Jbig2HuffmanParams* %76, null
  br i1 %cmp90, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %sw.bb.88
  %77 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %78 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number93 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %78, i32 0, i32 0
  %79 = load i32, i32* %number93, align 4, !tbaa !11
  %80 = load i32, i32* %table_index, align 4, !tbaa !5
  %call94 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %77, i32 3, i32 %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i32 0, i32 0), i32 %80) #4
  store i32 %call94, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.95:                                        ; preds = %sw.bb.88
  %81 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %82 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %call96 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %81, %struct._Jbig2HuffmanParams* %82) #4
  %SBHUFFFS97 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 10
  store %struct._Jbig2HuffmanTable* %call96, %struct._Jbig2HuffmanTable** %SBHUFFFS97, align 8, !tbaa !30
  %83 = load i32, i32* %table_index, align 4, !tbaa !5
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %table_index, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.98:                                         ; preds = %if.then.81
  br label %sw.default

sw.default:                                       ; preds = %if.then.81, %sw.bb.98
  %84 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %85 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number99 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %85, i32 0, i32 0
  %86 = load i32, i32* %number99, align 4, !tbaa !11
  %call100 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %84, i32 3, i32 %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i32 0, i32 0)) #4
  store i32 %call100, i32* %code, align 4, !tbaa !5
  br label %cleanup1

sw.epilog:                                        ; preds = %if.end.95, %sw.bb.85, %sw.bb
  %SBHUFFFS101 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 10
  %87 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFFS101, align 8, !tbaa !30
  %cmp102 = icmp eq %struct._Jbig2HuffmanTable* %87, null
  br i1 %cmp102, label %if.then.104, label %if.end.107

if.then.104:                                      ; preds = %sw.epilog
  %88 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %89 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number105 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %89, i32 0, i32 0
  %90 = load i32, i32* %number105, align 4, !tbaa !11
  %call106 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %88, i32 3, i32 %90, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.22, i32 0, i32 0)) #4
  store i32 %call106, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.107:                                       ; preds = %sw.epilog
  %91 = load i16, i16* %huffman_flags, align 2, !tbaa !63
  %conv108 = zext i16 %91 to i32
  %and109 = and i32 %conv108, 12
  %shr110 = ashr i32 %and109, 2
  switch i32 %shr110, label %sw.epilog.130 [
    i32 0, label %sw.bb.111
    i32 1, label %sw.bb.113
    i32 2, label %sw.bb.116
    i32 3, label %sw.bb.119
  ]

sw.bb.111:                                        ; preds = %if.end.107
  %92 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call112 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %92, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_H) #4
  %SBHUFFDS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 11
  store %struct._Jbig2HuffmanTable* %call112, %struct._Jbig2HuffmanTable** %SBHUFFDS, align 8, !tbaa !32
  br label %sw.epilog.130

sw.bb.113:                                        ; preds = %if.end.107
  %93 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call114 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %93, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_I) #4
  %SBHUFFDS115 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 11
  store %struct._Jbig2HuffmanTable* %call114, %struct._Jbig2HuffmanTable** %SBHUFFDS115, align 8, !tbaa !32
  br label %sw.epilog.130

sw.bb.116:                                        ; preds = %if.end.107
  %94 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call117 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %94, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_J) #4
  %SBHUFFDS118 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 11
  store %struct._Jbig2HuffmanTable* %call117, %struct._Jbig2HuffmanTable** %SBHUFFDS118, align 8, !tbaa !32
  br label %sw.epilog.130

sw.bb.119:                                        ; preds = %if.end.107
  %95 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %96 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %97 = load i32, i32* %table_index, align 4, !tbaa !5
  %call120 = call %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx* %95, %struct._Jbig2Segment* %96, i32 %97) #4
  store %struct._Jbig2HuffmanParams* %call120, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %98 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %cmp121 = icmp eq %struct._Jbig2HuffmanParams* %98, null
  br i1 %cmp121, label %if.then.123, label %if.end.126

if.then.123:                                      ; preds = %sw.bb.119
  %99 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %100 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number124 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %100, i32 0, i32 0
  %101 = load i32, i32* %number124, align 4, !tbaa !11
  %102 = load i32, i32* %table_index, align 4, !tbaa !5
  %call125 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %99, i32 3, i32 %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0), i32 %102) #4
  store i32 %call125, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.126:                                       ; preds = %sw.bb.119
  %103 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %104 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %call127 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %103, %struct._Jbig2HuffmanParams* %104) #4
  %SBHUFFDS128 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 11
  store %struct._Jbig2HuffmanTable* %call127, %struct._Jbig2HuffmanTable** %SBHUFFDS128, align 8, !tbaa !32
  %105 = load i32, i32* %table_index, align 4, !tbaa !5
  %inc129 = add nsw i32 %105, 1
  store i32 %inc129, i32* %table_index, align 4, !tbaa !5
  br label %sw.epilog.130

sw.epilog.130:                                    ; preds = %if.end.107, %if.end.126, %sw.bb.116, %sw.bb.113, %sw.bb.111
  %SBHUFFDS131 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 11
  %106 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFDS131, align 8, !tbaa !32
  %cmp132 = icmp eq %struct._Jbig2HuffmanTable* %106, null
  br i1 %cmp132, label %if.then.134, label %if.end.137

if.then.134:                                      ; preds = %sw.epilog.130
  %107 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %108 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number135 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %108, i32 0, i32 0
  %109 = load i32, i32* %number135, align 4, !tbaa !11
  %call136 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %107, i32 3, i32 %109, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i32 0, i32 0)) #4
  store i32 %call136, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.137:                                       ; preds = %sw.epilog.130
  %110 = load i16, i16* %huffman_flags, align 2, !tbaa !63
  %conv138 = zext i16 %110 to i32
  %and139 = and i32 %conv138, 48
  %shr140 = ashr i32 %and139, 4
  switch i32 %shr140, label %sw.epilog.160 [
    i32 0, label %sw.bb.141
    i32 1, label %sw.bb.143
    i32 2, label %sw.bb.146
    i32 3, label %sw.bb.149
  ]

sw.bb.141:                                        ; preds = %if.end.137
  %111 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call142 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %111, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_K) #4
  %SBHUFFDT = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 12
  store %struct._Jbig2HuffmanTable* %call142, %struct._Jbig2HuffmanTable** %SBHUFFDT, align 8, !tbaa !26
  br label %sw.epilog.160

sw.bb.143:                                        ; preds = %if.end.137
  %112 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call144 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %112, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_L) #4
  %SBHUFFDT145 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 12
  store %struct._Jbig2HuffmanTable* %call144, %struct._Jbig2HuffmanTable** %SBHUFFDT145, align 8, !tbaa !26
  br label %sw.epilog.160

sw.bb.146:                                        ; preds = %if.end.137
  %113 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call147 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %113, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_M) #4
  %SBHUFFDT148 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 12
  store %struct._Jbig2HuffmanTable* %call147, %struct._Jbig2HuffmanTable** %SBHUFFDT148, align 8, !tbaa !26
  br label %sw.epilog.160

sw.bb.149:                                        ; preds = %if.end.137
  %114 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %115 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %116 = load i32, i32* %table_index, align 4, !tbaa !5
  %call150 = call %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx* %114, %struct._Jbig2Segment* %115, i32 %116) #4
  store %struct._Jbig2HuffmanParams* %call150, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %117 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %cmp151 = icmp eq %struct._Jbig2HuffmanParams* %117, null
  br i1 %cmp151, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %sw.bb.149
  %118 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %119 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number154 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %119, i32 0, i32 0
  %120 = load i32, i32* %number154, align 4, !tbaa !11
  %121 = load i32, i32* %table_index, align 4, !tbaa !5
  %call155 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %118, i32 3, i32 %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0), i32 %121) #4
  store i32 %call155, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.156:                                       ; preds = %sw.bb.149
  %122 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %123 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %call157 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %122, %struct._Jbig2HuffmanParams* %123) #4
  %SBHUFFDT158 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 12
  store %struct._Jbig2HuffmanTable* %call157, %struct._Jbig2HuffmanTable** %SBHUFFDT158, align 8, !tbaa !26
  %124 = load i32, i32* %table_index, align 4, !tbaa !5
  %inc159 = add nsw i32 %124, 1
  store i32 %inc159, i32* %table_index, align 4, !tbaa !5
  br label %sw.epilog.160

sw.epilog.160:                                    ; preds = %if.end.137, %if.end.156, %sw.bb.146, %sw.bb.143, %sw.bb.141
  %SBHUFFDT161 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 12
  %125 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFDT161, align 8, !tbaa !26
  %cmp162 = icmp eq %struct._Jbig2HuffmanTable* %125, null
  br i1 %cmp162, label %if.then.164, label %if.end.167

if.then.164:                                      ; preds = %sw.epilog.160
  %126 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %127 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number165 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %127, i32 0, i32 0
  %128 = load i32, i32* %number165, align 4, !tbaa !11
  %call166 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %126, i32 3, i32 %128, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.26, i32 0, i32 0)) #4
  store i32 %call166, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.167:                                       ; preds = %sw.epilog.160
  %129 = load i16, i16* %huffman_flags, align 2, !tbaa !63
  %conv168 = zext i16 %129 to i32
  %and169 = and i32 %conv168, 192
  %shr170 = ashr i32 %and169, 6
  switch i32 %shr170, label %sw.default.188 [
    i32 0, label %sw.bb.171
    i32 1, label %sw.bb.173
    i32 3, label %sw.bb.176
    i32 2, label %sw.bb.187
  ]

sw.bb.171:                                        ; preds = %if.end.167
  %130 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call172 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %130, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_N) #4
  %SBHUFFRDW = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 13
  store %struct._Jbig2HuffmanTable* %call172, %struct._Jbig2HuffmanTable** %SBHUFFRDW, align 8, !tbaa !45
  br label %sw.epilog.191

sw.bb.173:                                        ; preds = %if.end.167
  %131 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call174 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %131, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_O) #4
  %SBHUFFRDW175 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 13
  store %struct._Jbig2HuffmanTable* %call174, %struct._Jbig2HuffmanTable** %SBHUFFRDW175, align 8, !tbaa !45
  br label %sw.epilog.191

sw.bb.176:                                        ; preds = %if.end.167
  %132 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %133 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %134 = load i32, i32* %table_index, align 4, !tbaa !5
  %call177 = call %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx* %132, %struct._Jbig2Segment* %133, i32 %134) #4
  store %struct._Jbig2HuffmanParams* %call177, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %135 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %cmp178 = icmp eq %struct._Jbig2HuffmanParams* %135, null
  br i1 %cmp178, label %if.then.180, label %if.end.183

if.then.180:                                      ; preds = %sw.bb.176
  %136 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %137 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number181 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %137, i32 0, i32 0
  %138 = load i32, i32* %number181, align 4, !tbaa !11
  %139 = load i32, i32* %table_index, align 4, !tbaa !5
  %call182 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %136, i32 3, i32 %138, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i32 0, i32 0), i32 %139) #4
  store i32 %call182, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.183:                                       ; preds = %sw.bb.176
  %140 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %141 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %call184 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %140, %struct._Jbig2HuffmanParams* %141) #4
  %SBHUFFRDW185 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 13
  store %struct._Jbig2HuffmanTable* %call184, %struct._Jbig2HuffmanTable** %SBHUFFRDW185, align 8, !tbaa !45
  %142 = load i32, i32* %table_index, align 4, !tbaa !5
  %inc186 = add nsw i32 %142, 1
  store i32 %inc186, i32* %table_index, align 4, !tbaa !5
  br label %sw.epilog.191

sw.bb.187:                                        ; preds = %if.end.167
  br label %sw.default.188

sw.default.188:                                   ; preds = %if.end.167, %sw.bb.187
  %143 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %144 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number189 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %144, i32 0, i32 0
  %145 = load i32, i32* %number189, align 4, !tbaa !11
  %call190 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %143, i32 3, i32 %145, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i32 0, i32 0)) #4
  store i32 %call190, i32* %code, align 4, !tbaa !5
  br label %cleanup1

sw.epilog.191:                                    ; preds = %if.end.183, %sw.bb.173, %sw.bb.171
  %SBHUFFRDW192 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 13
  %146 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDW192, align 8, !tbaa !45
  %cmp193 = icmp eq %struct._Jbig2HuffmanTable* %146, null
  br i1 %cmp193, label %if.then.195, label %if.end.198

if.then.195:                                      ; preds = %sw.epilog.191
  %147 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %148 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number196 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %148, i32 0, i32 0
  %149 = load i32, i32* %number196, align 4, !tbaa !11
  %call197 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %147, i32 3, i32 %149, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.29, i32 0, i32 0)) #4
  store i32 %call197, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.198:                                       ; preds = %sw.epilog.191
  %150 = load i16, i16* %huffman_flags, align 2, !tbaa !63
  %conv199 = zext i16 %150 to i32
  %and200 = and i32 %conv199, 768
  %shr201 = ashr i32 %and200, 8
  switch i32 %shr201, label %sw.default.219 [
    i32 0, label %sw.bb.202
    i32 1, label %sw.bb.204
    i32 3, label %sw.bb.207
    i32 2, label %sw.bb.218
  ]

sw.bb.202:                                        ; preds = %if.end.198
  %151 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call203 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %151, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_N) #4
  %SBHUFFRDH = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 14
  store %struct._Jbig2HuffmanTable* %call203, %struct._Jbig2HuffmanTable** %SBHUFFRDH, align 8, !tbaa !46
  br label %sw.epilog.222

sw.bb.204:                                        ; preds = %if.end.198
  %152 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call205 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %152, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_O) #4
  %SBHUFFRDH206 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 14
  store %struct._Jbig2HuffmanTable* %call205, %struct._Jbig2HuffmanTable** %SBHUFFRDH206, align 8, !tbaa !46
  br label %sw.epilog.222

sw.bb.207:                                        ; preds = %if.end.198
  %153 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %154 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %155 = load i32, i32* %table_index, align 4, !tbaa !5
  %call208 = call %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx* %153, %struct._Jbig2Segment* %154, i32 %155) #4
  store %struct._Jbig2HuffmanParams* %call208, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %156 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %cmp209 = icmp eq %struct._Jbig2HuffmanParams* %156, null
  br i1 %cmp209, label %if.then.211, label %if.end.214

if.then.211:                                      ; preds = %sw.bb.207
  %157 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %158 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number212 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %158, i32 0, i32 0
  %159 = load i32, i32* %number212, align 4, !tbaa !11
  %160 = load i32, i32* %table_index, align 4, !tbaa !5
  %call213 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %157, i32 3, i32 %159, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0), i32 %160) #4
  store i32 %call213, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.214:                                       ; preds = %sw.bb.207
  %161 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %162 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %call215 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %161, %struct._Jbig2HuffmanParams* %162) #4
  %SBHUFFRDH216 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 14
  store %struct._Jbig2HuffmanTable* %call215, %struct._Jbig2HuffmanTable** %SBHUFFRDH216, align 8, !tbaa !46
  %163 = load i32, i32* %table_index, align 4, !tbaa !5
  %inc217 = add nsw i32 %163, 1
  store i32 %inc217, i32* %table_index, align 4, !tbaa !5
  br label %sw.epilog.222

sw.bb.218:                                        ; preds = %if.end.198
  br label %sw.default.219

sw.default.219:                                   ; preds = %if.end.198, %sw.bb.218
  %164 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %165 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number220 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %165, i32 0, i32 0
  %166 = load i32, i32* %number220, align 4, !tbaa !11
  %call221 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %164, i32 3, i32 %166, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i32 0, i32 0)) #4
  store i32 %call221, i32* %code, align 4, !tbaa !5
  br label %cleanup1

sw.epilog.222:                                    ; preds = %if.end.214, %sw.bb.204, %sw.bb.202
  %SBHUFFRDH223 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 14
  %167 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDH223, align 8, !tbaa !46
  %cmp224 = icmp eq %struct._Jbig2HuffmanTable* %167, null
  br i1 %cmp224, label %if.then.226, label %if.end.229

if.then.226:                                      ; preds = %sw.epilog.222
  %168 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %169 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number227 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %169, i32 0, i32 0
  %170 = load i32, i32* %number227, align 4, !tbaa !11
  %call228 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %168, i32 3, i32 %170, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.32, i32 0, i32 0)) #4
  store i32 %call228, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.229:                                       ; preds = %sw.epilog.222
  %171 = load i16, i16* %huffman_flags, align 2, !tbaa !63
  %conv230 = zext i16 %171 to i32
  %and231 = and i32 %conv230, 3072
  %shr232 = ashr i32 %and231, 10
  switch i32 %shr232, label %sw.default.250 [
    i32 0, label %sw.bb.233
    i32 1, label %sw.bb.235
    i32 3, label %sw.bb.238
    i32 2, label %sw.bb.249
  ]

sw.bb.233:                                        ; preds = %if.end.229
  %172 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call234 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %172, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_N) #4
  %SBHUFFRDX = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 15
  store %struct._Jbig2HuffmanTable* %call234, %struct._Jbig2HuffmanTable** %SBHUFFRDX, align 8, !tbaa !47
  br label %sw.epilog.253

sw.bb.235:                                        ; preds = %if.end.229
  %173 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call236 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %173, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_O) #4
  %SBHUFFRDX237 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 15
  store %struct._Jbig2HuffmanTable* %call236, %struct._Jbig2HuffmanTable** %SBHUFFRDX237, align 8, !tbaa !47
  br label %sw.epilog.253

sw.bb.238:                                        ; preds = %if.end.229
  %174 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %175 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %176 = load i32, i32* %table_index, align 4, !tbaa !5
  %call239 = call %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx* %174, %struct._Jbig2Segment* %175, i32 %176) #4
  store %struct._Jbig2HuffmanParams* %call239, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %177 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %cmp240 = icmp eq %struct._Jbig2HuffmanParams* %177, null
  br i1 %cmp240, label %if.then.242, label %if.end.245

if.then.242:                                      ; preds = %sw.bb.238
  %178 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %179 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number243 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %179, i32 0, i32 0
  %180 = load i32, i32* %number243, align 4, !tbaa !11
  %181 = load i32, i32* %table_index, align 4, !tbaa !5
  %call244 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %178, i32 3, i32 %180, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i32 0, i32 0), i32 %181) #4
  store i32 %call244, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.245:                                       ; preds = %sw.bb.238
  %182 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %183 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %call246 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %182, %struct._Jbig2HuffmanParams* %183) #4
  %SBHUFFRDX247 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 15
  store %struct._Jbig2HuffmanTable* %call246, %struct._Jbig2HuffmanTable** %SBHUFFRDX247, align 8, !tbaa !47
  %184 = load i32, i32* %table_index, align 4, !tbaa !5
  %inc248 = add nsw i32 %184, 1
  store i32 %inc248, i32* %table_index, align 4, !tbaa !5
  br label %sw.epilog.253

sw.bb.249:                                        ; preds = %if.end.229
  br label %sw.default.250

sw.default.250:                                   ; preds = %if.end.229, %sw.bb.249
  %185 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %186 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number251 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %186, i32 0, i32 0
  %187 = load i32, i32* %number251, align 4, !tbaa !11
  %call252 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %185, i32 3, i32 %187, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0)) #4
  store i32 %call252, i32* %code, align 4, !tbaa !5
  br label %cleanup1

sw.epilog.253:                                    ; preds = %if.end.245, %sw.bb.235, %sw.bb.233
  %SBHUFFRDX254 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 15
  %188 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDX254, align 8, !tbaa !47
  %cmp255 = icmp eq %struct._Jbig2HuffmanTable* %188, null
  br i1 %cmp255, label %if.then.257, label %if.end.260

if.then.257:                                      ; preds = %sw.epilog.253
  %189 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %190 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number258 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %190, i32 0, i32 0
  %191 = load i32, i32* %number258, align 4, !tbaa !11
  %call259 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %189, i32 3, i32 %191, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.35, i32 0, i32 0)) #4
  store i32 %call259, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.260:                                       ; preds = %sw.epilog.253
  %192 = load i16, i16* %huffman_flags, align 2, !tbaa !63
  %conv261 = zext i16 %192 to i32
  %and262 = and i32 %conv261, 12288
  %shr263 = ashr i32 %and262, 12
  switch i32 %shr263, label %sw.default.281 [
    i32 0, label %sw.bb.264
    i32 1, label %sw.bb.266
    i32 3, label %sw.bb.269
    i32 2, label %sw.bb.280
  ]

sw.bb.264:                                        ; preds = %if.end.260
  %193 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call265 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %193, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_N) #4
  %SBHUFFRDY = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 16
  store %struct._Jbig2HuffmanTable* %call265, %struct._Jbig2HuffmanTable** %SBHUFFRDY, align 8, !tbaa !48
  br label %sw.epilog.284

sw.bb.266:                                        ; preds = %if.end.260
  %194 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call267 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %194, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_O) #4
  %SBHUFFRDY268 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 16
  store %struct._Jbig2HuffmanTable* %call267, %struct._Jbig2HuffmanTable** %SBHUFFRDY268, align 8, !tbaa !48
  br label %sw.epilog.284

sw.bb.269:                                        ; preds = %if.end.260
  %195 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %196 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %197 = load i32, i32* %table_index, align 4, !tbaa !5
  %call270 = call %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx* %195, %struct._Jbig2Segment* %196, i32 %197) #4
  store %struct._Jbig2HuffmanParams* %call270, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %198 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %cmp271 = icmp eq %struct._Jbig2HuffmanParams* %198, null
  br i1 %cmp271, label %if.then.273, label %if.end.276

if.then.273:                                      ; preds = %sw.bb.269
  %199 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %200 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number274 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %200, i32 0, i32 0
  %201 = load i32, i32* %number274, align 4, !tbaa !11
  %202 = load i32, i32* %table_index, align 4, !tbaa !5
  %call275 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %199, i32 3, i32 %201, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i32 0, i32 0), i32 %202) #4
  store i32 %call275, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.276:                                       ; preds = %sw.bb.269
  %203 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %204 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %call277 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %203, %struct._Jbig2HuffmanParams* %204) #4
  %SBHUFFRDY278 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 16
  store %struct._Jbig2HuffmanTable* %call277, %struct._Jbig2HuffmanTable** %SBHUFFRDY278, align 8, !tbaa !48
  %205 = load i32, i32* %table_index, align 4, !tbaa !5
  %inc279 = add nsw i32 %205, 1
  store i32 %inc279, i32* %table_index, align 4, !tbaa !5
  br label %sw.epilog.284

sw.bb.280:                                        ; preds = %if.end.260
  br label %sw.default.281

sw.default.281:                                   ; preds = %if.end.260, %sw.bb.280
  %206 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %207 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number282 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %207, i32 0, i32 0
  %208 = load i32, i32* %number282, align 4, !tbaa !11
  %call283 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %206, i32 3, i32 %208, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.37, i32 0, i32 0)) #4
  store i32 %call283, i32* %code, align 4, !tbaa !5
  br label %cleanup1

sw.epilog.284:                                    ; preds = %if.end.276, %sw.bb.266, %sw.bb.264
  %SBHUFFRDY285 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 16
  %209 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDY285, align 8, !tbaa !48
  %cmp286 = icmp eq %struct._Jbig2HuffmanTable* %209, null
  br i1 %cmp286, label %if.then.288, label %if.end.291

if.then.288:                                      ; preds = %sw.epilog.284
  %210 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %211 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number289 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %211, i32 0, i32 0
  %212 = load i32, i32* %number289, align 4, !tbaa !11
  %call290 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %210, i32 3, i32 %212, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.38, i32 0, i32 0)) #4
  store i32 %call290, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.291:                                       ; preds = %sw.epilog.284
  %213 = load i16, i16* %huffman_flags, align 2, !tbaa !63
  %conv292 = zext i16 %213 to i32
  %and293 = and i32 %conv292, 16384
  %shr294 = ashr i32 %and293, 14
  switch i32 %shr294, label %sw.epilog.308 [
    i32 0, label %sw.bb.295
    i32 1, label %sw.bb.297
  ]

sw.bb.295:                                        ; preds = %if.end.291
  %214 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call296 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %214, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_A) #4
  %SBHUFFRSIZE = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 17
  store %struct._Jbig2HuffmanTable* %call296, %struct._Jbig2HuffmanTable** %SBHUFFRSIZE, align 8, !tbaa !49
  br label %sw.epilog.308

sw.bb.297:                                        ; preds = %if.end.291
  %215 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %216 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %217 = load i32, i32* %table_index, align 4, !tbaa !5
  %call298 = call %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx* %215, %struct._Jbig2Segment* %216, i32 %217) #4
  store %struct._Jbig2HuffmanParams* %call298, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %218 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %cmp299 = icmp eq %struct._Jbig2HuffmanParams* %218, null
  br i1 %cmp299, label %if.then.301, label %if.end.304

if.then.301:                                      ; preds = %sw.bb.297
  %219 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %220 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number302 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %220, i32 0, i32 0
  %221 = load i32, i32* %number302, align 4, !tbaa !11
  %222 = load i32, i32* %table_index, align 4, !tbaa !5
  %call303 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %219, i32 3, i32 %221, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i32 0, i32 0), i32 %222) #4
  store i32 %call303, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.304:                                       ; preds = %sw.bb.297
  %223 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %224 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %call305 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %223, %struct._Jbig2HuffmanParams* %224) #4
  %SBHUFFRSIZE306 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 17
  store %struct._Jbig2HuffmanTable* %call305, %struct._Jbig2HuffmanTable** %SBHUFFRSIZE306, align 8, !tbaa !49
  %225 = load i32, i32* %table_index, align 4, !tbaa !5
  %inc307 = add nsw i32 %225, 1
  store i32 %inc307, i32* %table_index, align 4, !tbaa !5
  br label %sw.epilog.308

sw.epilog.308:                                    ; preds = %if.end.291, %if.end.304, %sw.bb.295
  %SBHUFFRSIZE309 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 17
  %226 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRSIZE309, align 8, !tbaa !49
  %cmp310 = icmp eq %struct._Jbig2HuffmanTable* %226, null
  br i1 %cmp310, label %if.then.312, label %if.end.315

if.then.312:                                      ; preds = %sw.epilog.308
  %227 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %228 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number313 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %228, i32 0, i32 0
  %229 = load i32, i32* %number313, align 4, !tbaa !11
  %call314 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %227, i32 3, i32 %229, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.40, i32 0, i32 0)) #4
  store i32 %call314, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.315:                                       ; preds = %sw.epilog.308
  %230 = load i16, i16* %huffman_flags, align 2, !tbaa !63
  %conv316 = zext i16 %230 to i32
  %and317 = and i32 %conv316, 32768
  %tobool318 = icmp ne i32 %and317, 0
  br i1 %tobool318, label %if.then.319, label %if.end.322

if.then.319:                                      ; preds = %if.end.315
  %231 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %232 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number320 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %232, i32 0, i32 0
  %233 = load i32, i32* %number320, align 4, !tbaa !11
  %call321 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %231, i32 2, i32 %233, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.41, i32 0, i32 0)) #4
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.319, %if.end.315
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %if.end.74
  %234 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %235 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number324 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %235, i32 0, i32 0
  %236 = load i32, i32* %number324, align 4, !tbaa !11
  %width = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 0
  %237 = load i32, i32* %width, align 4, !tbaa !67
  %height = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 1
  %238 = load i32, i32* %height, align 4, !tbaa !69
  %x = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 2
  %239 = load i32, i32* %x, align 4, !tbaa !70
  %y = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 3
  %240 = load i32, i32* %y, align 4, !tbaa !71
  %SBNUMINSTANCES325 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 7
  %241 = load i32, i32* %SBNUMINSTANCES325, align 4, !tbaa !29
  %call326 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %234, i32 1, i32 %236, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i32 0, i32 0), i32 %237, i32 %238, i32 %239, i32 %240, i32 %241) #4
  %242 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %243 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %call327 = call i32 @jbig2_sd_count_referred(%struct._Jbig2Ctx* %242, %struct._Jbig2Segment* %243) #4
  store i32 %call327, i32* %n_dicts, align 4, !tbaa !5
  %244 = load i32, i32* %n_dicts, align 4, !tbaa !5
  %cmp328 = icmp ne i32 %244, 0
  br i1 %cmp328, label %if.then.330, label %if.else.332

if.then.330:                                      ; preds = %if.end.323
  %245 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %246 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %call331 = call %struct.Jbig2SymbolDict** @jbig2_sd_list_referred(%struct._Jbig2Ctx* %245, %struct._Jbig2Segment* %246) #4
  store %struct.Jbig2SymbolDict** %call331, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  br label %if.end.335

if.else.332:                                      ; preds = %if.end.323
  %247 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %248 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number333 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %248, i32 0, i32 0
  %249 = load i32, i32* %number333, align 4, !tbaa !11
  %call334 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %247, i32 3, i32 %249, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.43, i32 0, i32 0)) #4
  store i32 %call334, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.end.335:                                       ; preds = %if.then.330
  %250 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %cmp336 = icmp eq %struct.Jbig2SymbolDict** %250, null
  br i1 %cmp336, label %if.then.338, label %if.else.341

if.then.338:                                      ; preds = %if.end.335
  %251 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %252 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number339 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %252, i32 0, i32 0
  %253 = load i32, i32* %number339, align 4, !tbaa !11
  %call340 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %251, i32 3, i32 %253, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.44, i32 0, i32 0)) #4
  store i32 %call340, i32* %code, align 4, !tbaa !5
  br label %cleanup1

if.else.341:                                      ; preds = %if.end.335
  %254 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %254) #1
  %255 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %arrayidx342 = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %255, i64 0
  %256 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %arrayidx342, align 8, !tbaa !1
  %cmp343 = icmp eq %struct.Jbig2SymbolDict* %256, null
  br i1 %cmp343, label %if.then.345, label %if.end.348

if.then.345:                                      ; preds = %if.else.341
  %257 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %258 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number346 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %258, i32 0, i32 0
  %259 = load i32, i32* %number346, align 4, !tbaa !11
  %call347 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %257, i32 2, i32 %259, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i32 0, i32 0)) #4
  store i32 %call347, i32* %code, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.348:                                       ; preds = %if.else.341
  store i32 1, i32* %index, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.348
  %260 = load i32, i32* %index, align 4, !tbaa !5
  %261 = load i32, i32* %n_dicts, align 4, !tbaa !5
  %cmp349 = icmp slt i32 %260, %261
  br i1 %cmp349, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %262 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom351 = sext i32 %262 to i64
  %263 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %arrayidx352 = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %263, i64 %idxprom351
  %264 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %arrayidx352, align 8, !tbaa !1
  %cmp353 = icmp eq %struct.Jbig2SymbolDict* %264, null
  br i1 %cmp353, label %if.then.355, label %if.end.358

if.then.355:                                      ; preds = %for.body
  %265 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %266 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number356 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %266, i32 0, i32 0
  %267 = load i32, i32* %number356, align 4, !tbaa !11
  %call357 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %265, i32 2, i32 %267, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i32 0, i32 0)) #4
  %268 = load i32, i32* %index, align 4, !tbaa !5
  store i32 %268, i32* %n_dicts, align 4, !tbaa !5
  br label %if.end.358

if.end.358:                                       ; preds = %if.then.355, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.358
  %269 = load i32, i32* %index, align 4, !tbaa !5
  %inc359 = add nsw i32 %269, 1
  store i32 %inc359, i32* %index, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.345, %for.end
  %270 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.554 [
    i32 0, label %cleanup.cont
    i32 4, label %cleanup1
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.360

if.end.360:                                       ; preds = %cleanup.cont
  %271 = bitcast i32* %stats_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %271) #1
  %SBRTEMPLATE361 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 28
  %272 = load i32, i32* %SBRTEMPLATE361, align 4, !tbaa !53
  %tobool362 = icmp ne i32 %272, 0
  %cond = select i1 %tobool362, i32 1024, i32 8192
  store i32 %cond, i32* %stats_size, align 4, !tbaa !5
  %273 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %273, i32 0, i32 0
  %274 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !23
  %275 = load i32, i32* %stats_size, align 4, !tbaa !5
  %conv363 = sext i32 %275 to i64
  %call364 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %274, i64 %conv363, i64 1) #4
  store i8* %call364, i8** %GR_stats, align 8, !tbaa !1
  %276 = load i8*, i8** %GR_stats, align 8, !tbaa !1
  %cmp365 = icmp eq i8* %276, null
  br i1 %cmp365, label %if.then.367, label %if.end.370

if.then.367:                                      ; preds = %if.end.360
  %277 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %278 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number368 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %278, i32 0, i32 0
  %279 = load i32, i32* %number368, align 4, !tbaa !11
  %call369 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %277, i32 3, i32 %279, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0)) #4
  store i32 %call369, i32* %code, align 4, !tbaa !5
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.373

if.end.370:                                       ; preds = %if.end.360
  %280 = load i8*, i8** %GR_stats, align 8, !tbaa !1
  %281 = load i32, i32* %stats_size, align 4, !tbaa !5
  %conv371 = sext i32 %281 to i64
  %call372 = call i8* @memset(i8* %280, i32 0, i64 %conv371) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.373

cleanup.373:                                      ; preds = %if.then.367, %if.end.370
  %282 = bitcast i32* %stats_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %cleanup.dest.374 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.374, label %cleanup.554 [
    i32 0, label %cleanup.cont.375
    i32 4, label %cleanup1
  ]

cleanup.cont.375:                                 ; preds = %cleanup.373
  %283 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %width376 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 0
  %284 = load i32, i32* %width376, align 4, !tbaa !67
  %height377 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 1
  %285 = load i32, i32* %height377, align 4, !tbaa !69
  %call378 = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %283, i32 %284, i32 %285) #4
  store %struct._Jbig2Image* %call378, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %286 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %cmp379 = icmp eq %struct._Jbig2Image* %286, null
  br i1 %cmp379, label %if.then.381, label %if.end.384

if.then.381:                                      ; preds = %cleanup.cont.375
  %287 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %288 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number382 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %288, i32 0, i32 0
  %289 = load i32, i32* %number382, align 4, !tbaa !11
  %call383 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %287, i32 3, i32 %289, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0)) #4
  store i32 %call383, i32* %code, align 4, !tbaa !5
  br label %cleanup2

if.end.384:                                       ; preds = %cleanup.cont.375
  %290 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %291 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %292 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext385 = sext i32 %292 to i64
  %add.ptr386 = getelementptr inbounds i8, i8* %291, i64 %idx.ext385
  %293 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length387 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %293, i32 0, i32 3
  %294 = load i64, i64* %data_length387, align 8, !tbaa !65
  %295 = load i32, i32* %offset, align 4, !tbaa !5
  %conv388 = sext i32 %295 to i64
  %sub389 = sub i64 %294, %conv388
  %call390 = call %struct._Jbig2WordStream* @jbig2_word_stream_buf_new(%struct._Jbig2Ctx* %290, i8* %add.ptr386, i64 %sub389) #4
  store %struct._Jbig2WordStream* %call390, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %296 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %cmp391 = icmp eq %struct._Jbig2WordStream* %296, null
  br i1 %cmp391, label %if.then.393, label %if.end.396

if.then.393:                                      ; preds = %if.end.384
  %297 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %298 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number394 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %298, i32 0, i32 0
  %299 = load i32, i32* %number394, align 4, !tbaa !11
  %call395 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %297, i32 3, i32 %299, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i32 0, i32 0)) #4
  store i32 %call395, i32* %code, align 4, !tbaa !5
  br label %cleanup2

if.end.396:                                       ; preds = %if.end.384
  %300 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %301 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %call397 = call %struct._Jbig2ArithState* @jbig2_arith_new(%struct._Jbig2Ctx* %300, %struct._Jbig2WordStream* %301) #4
  store %struct._Jbig2ArithState* %call397, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %302 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %cmp398 = icmp eq %struct._Jbig2ArithState* %302, null
  br i1 %cmp398, label %if.then.400, label %if.end.403

if.then.400:                                      ; preds = %if.end.396
  %303 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %304 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number401 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %304, i32 0, i32 0
  %305 = load i32, i32* %number401, align 4, !tbaa !11
  %call402 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %303, i32 3, i32 %305, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.50, i32 0, i32 0)) #4
  store i32 %call402, i32* %code, align 4, !tbaa !5
  br label %cleanup2

if.end.403:                                       ; preds = %if.end.396
  %SBHUFF404 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 0
  %306 = load i32, i32* %SBHUFF404, align 4, !tbaa !13
  %tobool405 = icmp ne i32 %306, 0
  br i1 %tobool405, label %if.end.486, label %if.then.406

if.then.406:                                      ; preds = %if.end.403
  %307 = bitcast i32* %SBSYMCODELEN to i8*
  call void @llvm.lifetime.start(i64 4, i8* %307) #1
  %308 = bitcast i32* %index407 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %308) #1
  %309 = bitcast i32* %SBNUMSYMS to i8*
  call void @llvm.lifetime.start(i64 4, i8* %309) #1
  store i32 0, i32* %SBNUMSYMS, align 4, !tbaa !5
  store i32 0, i32* %index407, align 4, !tbaa !5
  br label %for.cond.408

for.cond.408:                                     ; preds = %for.inc.415, %if.then.406
  %310 = load i32, i32* %index407, align 4, !tbaa !5
  %311 = load i32, i32* %n_dicts, align 4, !tbaa !5
  %cmp409 = icmp slt i32 %310, %311
  br i1 %cmp409, label %for.body.411, label %for.end.417

for.body.411:                                     ; preds = %for.cond.408
  %312 = load i32, i32* %index407, align 4, !tbaa !5
  %idxprom412 = sext i32 %312 to i64
  %313 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %arrayidx413 = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %313, i64 %idxprom412
  %314 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %arrayidx413, align 8, !tbaa !1
  %n_symbols = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %314, i32 0, i32 0
  %315 = load i32, i32* %n_symbols, align 4, !tbaa !9
  %316 = load i32, i32* %SBNUMSYMS, align 4, !tbaa !5
  %add414 = add i32 %316, %315
  store i32 %add414, i32* %SBNUMSYMS, align 4, !tbaa !5
  br label %for.inc.415

for.inc.415:                                      ; preds = %for.body.411
  %317 = load i32, i32* %index407, align 4, !tbaa !5
  %inc416 = add nsw i32 %317, 1
  store i32 %inc416, i32* %index407, align 4, !tbaa !5
  br label %for.cond.408

for.end.417:                                      ; preds = %for.cond.408
  %318 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call418 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %318) #4
  %IADT = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 18
  store %struct._Jbig2ArithIntCtx* %call418, %struct._Jbig2ArithIntCtx** %IADT, align 8, !tbaa !27
  %319 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call419 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %319) #4
  %IAFS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 19
  store %struct._Jbig2ArithIntCtx* %call419, %struct._Jbig2ArithIntCtx** %IAFS, align 8, !tbaa !31
  %320 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call420 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %320) #4
  %IADS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 20
  store %struct._Jbig2ArithIntCtx* %call420, %struct._Jbig2ArithIntCtx** %IADS, align 8, !tbaa !33
  %321 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call421 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %321) #4
  %IAIT = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 21
  store %struct._Jbig2ArithIntCtx* %call421, %struct._Jbig2ArithIntCtx** %IAIT, align 8, !tbaa !36
  %IADT422 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 18
  %322 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADT422, align 8, !tbaa !27
  %cmp423 = icmp eq %struct._Jbig2ArithIntCtx* %322, null
  br i1 %cmp423, label %if.then.436, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.417
  %IAFS425 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 19
  %323 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IAFS425, align 8, !tbaa !31
  %cmp426 = icmp eq %struct._Jbig2ArithIntCtx* %323, null
  br i1 %cmp426, label %if.then.436, label %lor.lhs.false.428

lor.lhs.false.428:                                ; preds = %lor.lhs.false
  %IADS429 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 20
  %324 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADS429, align 8, !tbaa !33
  %cmp430 = icmp eq %struct._Jbig2ArithIntCtx* %324, null
  br i1 %cmp430, label %if.then.436, label %lor.lhs.false.432

lor.lhs.false.432:                                ; preds = %lor.lhs.false.428
  %IAIT433 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 21
  %325 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IAIT433, align 8, !tbaa !36
  %cmp434 = icmp eq %struct._Jbig2ArithIntCtx* %325, null
  br i1 %cmp434, label %if.then.436, label %if.end.439

if.then.436:                                      ; preds = %lor.lhs.false.432, %lor.lhs.false.428, %lor.lhs.false, %for.end.417
  %326 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %327 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number437 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %327, i32 0, i32 0
  %328 = load i32, i32* %number437, align 4, !tbaa !11
  %call438 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %326, i32 3, i32 %328, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i32 0, i32 0)) #4
  store i32 %call438, i32* %code, align 4, !tbaa !5
  store i32 19, i32* %cleanup.dest.slot
  br label %cleanup.481

if.end.439:                                       ; preds = %lor.lhs.false.432
  store i32 0, i32* %SBSYMCODELEN, align 4, !tbaa !5
  br label %for.cond.440

for.cond.440:                                     ; preds = %for.inc.445, %if.end.439
  %329 = load i32, i32* %SBSYMCODELEN, align 4, !tbaa !5
  %shl441 = shl i32 1, %329
  %330 = load i32, i32* %SBNUMSYMS, align 4, !tbaa !5
  %cmp442 = icmp slt i32 %shl441, %330
  br i1 %cmp442, label %for.body.444, label %for.end.447

for.body.444:                                     ; preds = %for.cond.440
  br label %for.inc.445

for.inc.445:                                      ; preds = %for.body.444
  %331 = load i32, i32* %SBSYMCODELEN, align 4, !tbaa !5
  %inc446 = add nsw i32 %331, 1
  store i32 %inc446, i32* %SBSYMCODELEN, align 4, !tbaa !5
  br label %for.cond.440

for.end.447:                                      ; preds = %for.cond.440
  %332 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %333 = load i32, i32* %SBSYMCODELEN, align 4, !tbaa !5
  %call448 = call %struct._Jbig2ArithIaidCtx* @jbig2_arith_iaid_ctx_new(%struct._Jbig2Ctx* %332, i32 %333) #4
  %IAID = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 22
  store %struct._Jbig2ArithIaidCtx* %call448, %struct._Jbig2ArithIaidCtx** %IAID, align 8, !tbaa !37
  %334 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call449 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %334) #4
  %IARI = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 23
  store %struct._Jbig2ArithIntCtx* %call449, %struct._Jbig2ArithIntCtx** %IARI, align 8, !tbaa !40
  %335 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call450 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %335) #4
  %IARDW = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 24
  store %struct._Jbig2ArithIntCtx* %call450, %struct._Jbig2ArithIntCtx** %IARDW, align 8, !tbaa !41
  %336 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call451 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %336) #4
  %IARDH = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 25
  store %struct._Jbig2ArithIntCtx* %call451, %struct._Jbig2ArithIntCtx** %IARDH, align 8, !tbaa !42
  %337 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call452 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %337) #4
  %IARDX = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 26
  store %struct._Jbig2ArithIntCtx* %call452, %struct._Jbig2ArithIntCtx** %IARDX, align 8, !tbaa !43
  %338 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call453 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %338) #4
  %IARDY = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 27
  store %struct._Jbig2ArithIntCtx* %call453, %struct._Jbig2ArithIntCtx** %IARDY, align 8, !tbaa !44
  %IAID454 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 22
  %339 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %IAID454, align 8, !tbaa !37
  %cmp455 = icmp eq %struct._Jbig2ArithIaidCtx* %339, null
  br i1 %cmp455, label %if.then.477, label %lor.lhs.false.457

lor.lhs.false.457:                                ; preds = %for.end.447
  %IARI458 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 23
  %340 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARI458, align 8, !tbaa !40
  %cmp459 = icmp eq %struct._Jbig2ArithIntCtx* %340, null
  br i1 %cmp459, label %if.then.477, label %lor.lhs.false.461

lor.lhs.false.461:                                ; preds = %lor.lhs.false.457
  %IARDW462 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 24
  %341 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDW462, align 8, !tbaa !41
  %cmp463 = icmp eq %struct._Jbig2ArithIntCtx* %341, null
  br i1 %cmp463, label %if.then.477, label %lor.lhs.false.465

lor.lhs.false.465:                                ; preds = %lor.lhs.false.461
  %IARDH466 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 25
  %342 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDH466, align 8, !tbaa !42
  %cmp467 = icmp eq %struct._Jbig2ArithIntCtx* %342, null
  br i1 %cmp467, label %if.then.477, label %lor.lhs.false.469

lor.lhs.false.469:                                ; preds = %lor.lhs.false.465
  %IARDX470 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 26
  %343 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDX470, align 8, !tbaa !43
  %cmp471 = icmp eq %struct._Jbig2ArithIntCtx* %343, null
  br i1 %cmp471, label %if.then.477, label %lor.lhs.false.473

lor.lhs.false.473:                                ; preds = %lor.lhs.false.469
  %IARDY474 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 27
  %344 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDY474, align 8, !tbaa !44
  %cmp475 = icmp eq %struct._Jbig2ArithIntCtx* %344, null
  br i1 %cmp475, label %if.then.477, label %if.end.480

if.then.477:                                      ; preds = %lor.lhs.false.473, %lor.lhs.false.469, %lor.lhs.false.465, %lor.lhs.false.461, %lor.lhs.false.457, %for.end.447
  %345 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %346 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number478 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %346, i32 0, i32 0
  %347 = load i32, i32* %number478, align 4, !tbaa !11
  %call479 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %345, i32 3, i32 %347, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i32 0, i32 0)) #4
  store i32 %call479, i32* %code, align 4, !tbaa !5
  store i32 23, i32* %cleanup.dest.slot
  br label %cleanup.481

if.end.480:                                       ; preds = %lor.lhs.false.473
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.481

cleanup.481:                                      ; preds = %if.then.477, %if.then.436, %if.end.480
  %348 = bitcast i32* %SBNUMSYMS to i8*
  call void @llvm.lifetime.end(i64 4, i8* %348) #1
  %349 = bitcast i32* %index407 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %349) #1
  %350 = bitcast i32* %SBSYMCODELEN to i8*
  call void @llvm.lifetime.end(i64 4, i8* %350) #1
  %cleanup.dest.484 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.484, label %cleanup.554 [
    i32 0, label %cleanup.cont.485
    i32 23, label %cleanup4
    i32 19, label %cleanup3
  ]

cleanup.cont.485:                                 ; preds = %cleanup.481
  br label %if.end.486

if.end.486:                                       ; preds = %cleanup.cont.485, %if.end.403
  %351 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %352 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %353 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %354 = load i32, i32* %n_dicts, align 4, !tbaa !5
  %355 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %356 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %357 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext487 = sext i32 %357 to i64
  %add.ptr488 = getelementptr inbounds i8, i8* %356, i64 %idx.ext487
  %358 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length489 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %358, i32 0, i32 3
  %359 = load i64, i64* %data_length489, align 8, !tbaa !65
  %360 = load i32, i32* %offset, align 4, !tbaa !5
  %conv490 = sext i32 %360 to i64
  %sub491 = sub i64 %359, %conv490
  %361 = load i8*, i8** %GR_stats, align 8, !tbaa !1
  %362 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %363 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %call492 = call i32 @jbig2_decode_text_region(%struct._Jbig2Ctx* %351, %struct._Jbig2Segment* %352, %struct.Jbig2TextRegionParams* %params, %struct.Jbig2SymbolDict** %353, i32 %354, %struct._Jbig2Image* %355, i8* %add.ptr488, i64 %sub491, i8* %361, %struct._Jbig2ArithState* %362, %struct._Jbig2WordStream* %363) #4
  store i32 %call492, i32* %code, align 4, !tbaa !5
  %364 = load i32, i32* %code, align 4, !tbaa !5
  %cmp493 = icmp slt i32 %364, 0
  br i1 %cmp493, label %if.then.495, label %if.end.498

if.then.495:                                      ; preds = %if.end.486
  %365 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %366 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number496 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %366, i32 0, i32 0
  %367 = load i32, i32* %number496, align 4, !tbaa !11
  %call497 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %365, i32 3, i32 %367, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.52, i32 0, i32 0)) #4
  br label %cleanup4

if.end.498:                                       ; preds = %if.end.486
  %368 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %flags499 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %368, i32 0, i32 1
  %369 = load i8, i8* %flags499, align 1, !tbaa !72
  %conv500 = zext i8 %369 to i32
  %and501 = and i32 %conv500, 63
  %cmp502 = icmp eq i32 %and501, 4
  br i1 %cmp502, label %if.then.504, label %if.else.506

if.then.504:                                      ; preds = %if.end.498
  %370 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %371 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %call505 = call %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx* %370, %struct._Jbig2Image* %371) #4
  %372 = bitcast %struct._Jbig2Image* %call505 to i8*
  %373 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %373, i32 0, i32 6
  store i8* %372, i8** %result, align 8, !tbaa !73
  br label %if.end.518

if.else.506:                                      ; preds = %if.end.498
  %374 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %375 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number507 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %375, i32 0, i32 0
  %376 = load i32, i32* %number507, align 4, !tbaa !11
  %width508 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 0
  %377 = load i32, i32* %width508, align 4, !tbaa !67
  %height509 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 1
  %378 = load i32, i32* %height509, align 4, !tbaa !69
  %x510 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 2
  %379 = load i32, i32* %x510, align 4, !tbaa !70
  %y511 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 3
  %380 = load i32, i32* %y511, align 4, !tbaa !71
  %call512 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %374, i32 0, i32 %376, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.53, i32 0, i32 0), i32 %377, i32 %378, i32 %379, i32 %380) #4
  %381 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %382 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %current_page = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %382, i32 0, i32 16
  %383 = load i32, i32* %current_page, align 4, !tbaa !74
  %idxprom513 = sext i32 %383 to i64
  %384 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %pages = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %384, i32 0, i32 18
  %385 = load %struct._Jbig2Page*, %struct._Jbig2Page** %pages, align 8, !tbaa !75
  %arrayidx514 = getelementptr inbounds %struct._Jbig2Page, %struct._Jbig2Page* %385, i64 %idxprom513
  %386 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %x515 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 2
  %387 = load i32, i32* %x515, align 4, !tbaa !70
  %y516 = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 3
  %388 = load i32, i32* %y516, align 4, !tbaa !71
  %op = getelementptr inbounds %struct.Jbig2RegionSegmentInfo, %struct.Jbig2RegionSegmentInfo* %region_info, i32 0, i32 4
  %389 = load i32, i32* %op, align 4, !tbaa !76
  %call517 = call i32 @jbig2_page_add_result(%struct._Jbig2Ctx* %381, %struct._Jbig2Page* %arrayidx514, %struct._Jbig2Image* %386, i32 %387, i32 %388, i32 %389) #4
  br label %if.end.518

if.end.518:                                       ; preds = %if.else.506, %if.then.504
  br label %cleanup4

cleanup4:                                         ; preds = %if.end.518, %cleanup.481, %if.then.495
  %SBHUFF519 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 0
  %390 = load i32, i32* %SBHUFF519, align 4, !tbaa !13
  %tobool520 = icmp ne i32 %390, 0
  br i1 %tobool520, label %if.end.528, label %if.then.521

if.then.521:                                      ; preds = %cleanup4
  %391 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %IAID522 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 22
  %392 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %IAID522, align 8, !tbaa !37
  call void @jbig2_arith_iaid_ctx_free(%struct._Jbig2Ctx* %391, %struct._Jbig2ArithIaidCtx* %392) #4
  %393 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %IARI523 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 23
  %394 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARI523, align 8, !tbaa !40
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %393, %struct._Jbig2ArithIntCtx* %394) #4
  %395 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %IARDW524 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 24
  %396 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDW524, align 8, !tbaa !41
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %395, %struct._Jbig2ArithIntCtx* %396) #4
  %397 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %IARDH525 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 25
  %398 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDH525, align 8, !tbaa !42
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %397, %struct._Jbig2ArithIntCtx* %398) #4
  %399 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %IARDX526 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 26
  %400 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDX526, align 8, !tbaa !43
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %399, %struct._Jbig2ArithIntCtx* %400) #4
  %401 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %IARDY527 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 27
  %402 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDY527, align 8, !tbaa !44
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %401, %struct._Jbig2ArithIntCtx* %402) #4
  br label %if.end.528

if.end.528:                                       ; preds = %if.then.521, %cleanup4
  br label %cleanup3

cleanup3:                                         ; preds = %if.end.528, %cleanup.481
  %SBHUFF529 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 0
  %403 = load i32, i32* %SBHUFF529, align 4, !tbaa !13
  %tobool530 = icmp ne i32 %403, 0
  br i1 %tobool530, label %if.end.536, label %if.then.531

if.then.531:                                      ; preds = %cleanup3
  %404 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %IADT532 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 18
  %405 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADT532, align 8, !tbaa !27
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %404, %struct._Jbig2ArithIntCtx* %405) #4
  %406 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %IAFS533 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 19
  %407 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IAFS533, align 8, !tbaa !31
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %406, %struct._Jbig2ArithIntCtx* %407) #4
  %408 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %IADS534 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 20
  %409 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADS534, align 8, !tbaa !33
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %408, %struct._Jbig2ArithIntCtx* %409) #4
  %410 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %IAIT535 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 21
  %411 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IAIT535, align 8, !tbaa !36
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %410, %struct._Jbig2ArithIntCtx* %411) #4
  br label %if.end.536

if.end.536:                                       ; preds = %if.then.531, %cleanup3
  %412 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator537 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %412, i32 0, i32 0
  %413 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator537, align 8, !tbaa !23
  %414 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %415 = bitcast %struct._Jbig2ArithState* %414 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %413, i8* %415) #4
  %416 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %417 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  call void @jbig2_word_stream_buf_free(%struct._Jbig2Ctx* %416, %struct._Jbig2WordStream* %417) #4
  br label %cleanup2

cleanup2:                                         ; preds = %if.end.536, %if.then.400, %if.then.393, %if.then.381
  %418 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator538 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %418, i32 0, i32 0
  %419 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator538, align 8, !tbaa !23
  %420 = load i8*, i8** %GR_stats, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %419, i8* %420) #4
  %421 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %422 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %421, %struct._Jbig2Image* %422) #4
  br label %cleanup1

cleanup1:                                         ; preds = %cleanup2, %cleanup.373, %cleanup, %if.then.338, %if.else.332, %if.then.312, %if.then.301, %if.then.288, %sw.default.281, %if.then.273, %if.then.257, %sw.default.250, %if.then.242, %if.then.226, %sw.default.219, %if.then.211, %if.then.195, %sw.default.188, %if.then.180, %if.then.164, %if.then.153, %if.then.134, %if.then.123, %if.then.104, %sw.default, %if.then.92
  %SBHUFF539 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 0
  %423 = load i32, i32* %SBHUFF539, align 4, !tbaa !13
  %tobool540 = icmp ne i32 %423, 0
  br i1 %tobool540, label %if.then.541, label %if.end.550

if.then.541:                                      ; preds = %cleanup1
  %424 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %SBHUFFFS542 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 10
  %425 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFFS542, align 8, !tbaa !30
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %424, %struct._Jbig2HuffmanTable* %425) #4
  %426 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %SBHUFFDS543 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 11
  %427 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFDS543, align 8, !tbaa !32
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %426, %struct._Jbig2HuffmanTable* %427) #4
  %428 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %SBHUFFDT544 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 12
  %429 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFDT544, align 8, !tbaa !26
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %428, %struct._Jbig2HuffmanTable* %429) #4
  %430 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %SBHUFFRDX545 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 15
  %431 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDX545, align 8, !tbaa !47
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %430, %struct._Jbig2HuffmanTable* %431) #4
  %432 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %SBHUFFRDY546 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 16
  %433 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDY546, align 8, !tbaa !48
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %432, %struct._Jbig2HuffmanTable* %433) #4
  %434 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %SBHUFFRDW547 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 13
  %435 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDW547, align 8, !tbaa !45
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %434, %struct._Jbig2HuffmanTable* %435) #4
  %436 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %SBHUFFRDH548 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 14
  %437 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDH548, align 8, !tbaa !46
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %436, %struct._Jbig2HuffmanTable* %437) #4
  %438 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %SBHUFFRSIZE549 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %params, i32 0, i32 17
  %439 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRSIZE549, align 8, !tbaa !49
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %438, %struct._Jbig2HuffmanTable* %439) #4
  br label %if.end.550

if.end.550:                                       ; preds = %if.then.541, %cleanup1
  %440 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator551 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %440, i32 0, i32 0
  %441 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator551, align 8, !tbaa !23
  %442 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %443 = bitcast %struct.Jbig2SymbolDict** %442 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %441, i8* %443) #4
  %444 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %444, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.554

too_short:                                        ; preds = %if.then
  %445 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %446 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number552 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %446, i32 0, i32 0
  %447 = load i32, i32* %number552, align 4, !tbaa !11
  %call553 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %445, i32 3, i32 %447, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0)) #4
  store i32 %call553, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.554

cleanup.554:                                      ; preds = %too_short, %if.end.550, %cleanup.481, %cleanup.373, %cleanup
  %448 = bitcast %struct._Jbig2HuffmanParams** %huffman_params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %448) #1
  %449 = bitcast i32* %table_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %449) #1
  %450 = bitcast %struct._Jbig2ArithState** %as to i8*
  call void @llvm.lifetime.end(i64 8, i8* %450) #1
  %451 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.end(i64 8, i8* %451) #1
  %452 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %452) #1
  %453 = bitcast i8** %GR_stats to i8*
  call void @llvm.lifetime.end(i64 8, i8* %453) #1
  %454 = bitcast i16* %huffman_flags to i8*
  call void @llvm.lifetime.end(i64 2, i8* %454) #1
  %455 = bitcast i16* %flags to i8*
  call void @llvm.lifetime.end(i64 2, i8* %455) #1
  %456 = bitcast i32* %n_dicts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %456) #1
  %457 = bitcast %struct.Jbig2SymbolDict*** %dicts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %457) #1
  %458 = bitcast %struct._Jbig2Image** %image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %458) #1
  %459 = bitcast %struct.Jbig2TextRegionParams* %params to i8*
  call void @llvm.lifetime.end(i64 192, i8* %459) #1
  %460 = bitcast %struct.Jbig2RegionSegmentInfo* %region_info to i8*
  call void @llvm.lifetime.end(i64 24, i8* %460) #1
  %461 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %461) #1
  %462 = load i32, i32* %retval
  ret i32 %462
}

declare void @jbig2_get_region_segment_info(%struct.Jbig2RegionSegmentInfo*, i8*) #2

declare zeroext i16 @jbig2_get_uint16(i8*) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @jbig2_get_uint32(i8*) #2

declare %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i32) #2

declare i32 @jbig2_sd_count_referred(%struct._Jbig2Ctx*, %struct._Jbig2Segment*) #2

declare %struct.Jbig2SymbolDict** @jbig2_sd_list_referred(%struct._Jbig2Ctx*, %struct._Jbig2Segment*) #2

declare %struct._Jbig2WordStream* @jbig2_word_stream_buf_new(%struct._Jbig2Ctx*, i8*, i64) #2

declare %struct._Jbig2ArithState* @jbig2_arith_new(%struct._Jbig2Ctx*, %struct._Jbig2WordStream*) #2

declare %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx*) #2

declare %struct._Jbig2ArithIaidCtx* @jbig2_arith_iaid_ctx_new(%struct._Jbig2Ctx*, i32) #2

declare i32 @jbig2_page_add_result(%struct._Jbig2Ctx*, %struct._Jbig2Page*, %struct._Jbig2Image*, i32, i32, i32) #2

declare void @jbig2_arith_iaid_ctx_free(%struct._Jbig2Ctx*, %struct._Jbig2ArithIaidCtx*) #2

declare void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx*, %struct._Jbig2ArithIntCtx*) #2

declare void @jbig2_word_stream_buf_free(%struct._Jbig2Ctx*, %struct._Jbig2WordStream*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !6, i64 0}
!10 = !{!"", !6, i64 0, !2, i64 8}
!11 = !{!12, !6, i64 0}
!12 = !{!"_Jbig2Segment", !6, i64 0, !3, i64 4, !6, i64 8, !8, i64 16, !6, i64 24, !2, i64 32, !2, i64 40}
!13 = !{!14, !6, i64 0}
!14 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !3, i64 12, !6, i64 16, !3, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !6, i64 184, !3, i64 188}
!15 = !{!16, !6, i64 0}
!16 = !{!"_Jbig2HuffmanLine", !6, i64 0, !6, i64 4, !6, i64 8}
!17 = !{!16, !6, i64 4}
!18 = !{!16, !6, i64 8}
!19 = !{!20, !6, i64 0}
!20 = !{!"_Jbig2HuffmanParams", !6, i64 0, !6, i64 4, !2, i64 8}
!21 = !{!20, !2, i64 8}
!22 = !{!20, !6, i64 4}
!23 = !{!24, !2, i64 0}
!24 = !{!"_Jbig2Ctx", !2, i64 0, !3, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !8, i64 48, !6, i64 56, !6, i64 60, !3, i64 64, !3, i64 68, !6, i64 72, !6, i64 76, !2, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !2, i64 104}
!25 = !{!14, !6, i64 8}
!26 = !{!14, !2, i64 56}
!27 = !{!14, !2, i64 104}
!28 = !{!14, !6, i64 36}
!29 = !{!14, !6, i64 28}
!30 = !{!14, !2, i64 40}
!31 = !{!14, !2, i64 112}
!32 = !{!14, !2, i64 48}
!33 = !{!14, !2, i64 120}
!34 = !{!14, !6, i64 24}
!35 = !{!14, !6, i64 32}
!36 = !{!14, !2, i64 128}
!37 = !{!14, !2, i64 136}
!38 = !{!10, !2, i64 8}
!39 = !{!14, !6, i64 4}
!40 = !{!14, !2, i64 144}
!41 = !{!14, !2, i64 152}
!42 = !{!14, !2, i64 160}
!43 = !{!14, !2, i64 168}
!44 = !{!14, !2, i64 176}
!45 = !{!14, !2, i64 64}
!46 = !{!14, !2, i64 72}
!47 = !{!14, !2, i64 80}
!48 = !{!14, !2, i64 88}
!49 = !{!14, !2, i64 96}
!50 = !{!51, !6, i64 0}
!51 = !{!"_Jbig2Image", !6, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !6, i64 24}
!52 = !{!51, !6, i64 4}
!53 = !{!14, !6, i64 184}
!54 = !{!55, !6, i64 0}
!55 = !{!"", !6, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !3, i64 28}
!56 = !{!55, !2, i64 8}
!57 = !{!55, !6, i64 16}
!58 = !{!55, !6, i64 20}
!59 = !{!55, !6, i64 24}
!60 = !{!14, !6, i64 16}
!61 = !{!14, !3, i64 20}
!62 = !{!14, !3, i64 12}
!63 = !{!64, !64, i64 0}
!64 = !{!"short", !3, i64 0}
!65 = !{!12, !8, i64 16}
!66 = !{!3, !3, i64 0}
!67 = !{!68, !6, i64 0}
!68 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !3, i64 16, !3, i64 20}
!69 = !{!68, !6, i64 4}
!70 = !{!68, !6, i64 8}
!71 = !{!68, !6, i64 12}
!72 = !{!12, !3, i64 4}
!73 = !{!12, !2, i64 40}
!74 = !{!24, !6, i64 96}
!75 = !{!24, !2, i64 104}
!76 = !{!68, !3, i64 16}
