; ModuleID = './jbig2_symbol_dict.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Jbig2HuffmanParams = type { i32, i32, %struct._Jbig2HuffmanLine* }
%struct._Jbig2HuffmanLine = type { i32, i32, i32 }
%struct.Jbig2SymbolDict = type { i32, %struct._Jbig2Image** }
%struct._Jbig2Image = type { i32, i32, i32, i8*, i32 }
%struct._Jbig2Ctx = type { %struct._Jbig2Allocator*, i32, %struct._Jbig2Ctx*, i32 (i8*, i8*, i32, i32)*, i8*, i8*, i64, i32, i32, i32, i8, i32, i32, %struct._Jbig2Segment**, i32, i32, i32, i32, %struct._Jbig2Page* }
%struct._Jbig2Allocator = type { i8* (%struct._Jbig2Allocator*, i64)*, void (%struct._Jbig2Allocator*, i8*)*, i8* (%struct._Jbig2Allocator*, i8*, i64)* }
%struct._Jbig2Segment = type { i32, i8, i32, i64, i32, i32*, i8* }
%struct._Jbig2Page = type { i32, i32, i32, i32, i32, i32, i16, i32, i32, i8, %struct._Jbig2Image* }
%struct.Jbig2SymbolDictParams = type { i32, i32, i32, %struct.Jbig2SymbolDict*, i32, i32, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, i32, [8 x i8], i32, [4 x i8] }
%struct._Jbig2HuffmanTable = type { i32, %struct._Jbig2HuffmanEntry* }
%struct._Jbig2HuffmanEntry = type { %union.anon, i8, i8, i8 }
%union.anon = type { %struct._Jbig2HuffmanTable* }
%struct._Jbig2WordStream = type { i32 (%struct._Jbig2WordStream*, i32, i32*)* }
%struct._Jbig2HuffmanState = type opaque
%struct._Jbig2ArithState = type opaque
%struct._Jbig2ArithIntCtx = type opaque
%struct._Jbig2ArithIaidCtx = type opaque
%struct.Jbig2TextRegionParams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx*, i32, [4 x i8] }
%struct.Jbig2GenericRegionParams = type { i32, i32, i32, i32, [8 x i8] }
%struct.Jbig2RefinementRegionParams = type { i32, %struct._Jbig2Image*, i32, i32, i32, [4 x i8] }

@.str = private unnamed_addr constant [46 x i8] c"Negative number of symbols in symbol dict: %d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"unable to allocate new empty symbol dict\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"unable to allocate glyphs for new empty symbol dict\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"failed to allocate referred list of symbol dictionaries\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"counted %d symbol dictionaries but built a list with %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"failed to allocate new symbol dictionary\00", align 1
@jbig2_huffman_params_D = external constant %struct._Jbig2HuffmanParams, align 8
@jbig2_huffman_params_E = external constant %struct._Jbig2HuffmanParams, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"Custom DH huffman table not found (%d)\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"symbol dictionary specified invalid huffman table\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"failed to allocate DH huffman table\00", align 1
@jbig2_huffman_params_B = external constant %struct._Jbig2HuffmanParams, align 8
@jbig2_huffman_params_C = external constant %struct._Jbig2HuffmanParams, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"Custom DW huffman table not found (%d)\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"failed to allocate DW huffman table\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Custom BMSIZE huffman table not found (%d)\00", align 1
@jbig2_huffman_params_A = external constant %struct._Jbig2HuffmanParams, align 8
@.str.12 = private unnamed_addr constant [40 x i8] c"failed to allocate BMSIZE huffman table\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"Custom REFAGG huffman table not found (%d)\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"failed to allocate REFAGG huffman table\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"SDHUFF is zero, but contrary to spec SDHUFFDH is not.\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"SDHUFF is zero, but contrary to spec SDHUFFDW is not.\00", align 1
@.str.17 = private unnamed_addr constant [70 x i8] c"bitmap coding context is used (NYI) symbol data likely to be garbage!\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"symbol dictionary, flags=%04x, %u exported syms, %u new syms\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"failed to allocate dicts in symbol dictionary\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"failed to allocate symbol array in symbol dictionary\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"segment marks bitmap coding context as used (NYI)\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"failed to allocate GB_stats in jbig2_symbol_dictionary\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"failed to allocate GR_stats in jbig2_symbol_dictionary\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"segment marks bitmap coding context as retained (NYI)\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Segment too short\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"failed to allocate ws in jbig2_decode_symbol_dict\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"failed to allocate as in jbig2_decode_symbol_dict\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"failed to allocate storage for symbol bitmap\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"huffman coded symbol dictionary\00", align 1
@jbig2_huffman_params_O = external constant %struct._Jbig2HuffmanParams, align 8
@.str.30 = private unnamed_addr constant [50 x i8] c"could not allocate storage for (%u) symbol widths\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"could not allocate storage for (%u) new symbols\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"error or OOB decoding height class delta (%d)\0A\00", align 1
@.str.33 = private unnamed_addr constant [42 x i8] c"prevent DOS while decoding height classes\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"Invalid HCHEIGHT value\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"decoding height class %d with %d syms decoded\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c" OOB signals end of height class %d\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"No OOB signalling end of height class %d\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"Invalid SYMWIDTH value (%d) at symbol %d\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"failed to allocate image in jbig2_decode_symbol_dict\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"invalid number of symbols or OOB in aggregate glyph\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"aggregate symbol coding (%d instances)\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"Out of memory allocating dictionary array\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"Out of memory allocating symbol dictionary\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"Out of memory creating text region params\00", align 1
@jbig2_huffman_params_F = external constant %struct._Jbig2HuffmanParams, align 8
@jbig2_huffman_params_H = external constant %struct._Jbig2HuffmanParams, align 8
@jbig2_huffman_params_K = external constant %struct._Jbig2HuffmanParams, align 8
@.str.45 = private unnamed_addr constant [36 x i8] c"Out of memory creating symbol image\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"failed to decode data\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"refinement references unknown symbol %d\00", align 1
@.str.48 = private unnamed_addr constant [71 x i8] c"symbol is a refinement of id %d with the refinement applied at (%d,%d)\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"missing glyph %d/%d!\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"decoded symbol %u of %u (%ux%u)\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"error decoding size of collective bitmap!\00", align 1
@.str.52 = private unnamed_addr constant [44 x i8] c"could not allocate collective bitmap image!\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"not enough data for decoding (%d/%d)\00", align 1
@.str.54 = private unnamed_addr constant [60 x i8] c"reading %dx%d uncompressed bitmap for %d symbols (%d bytes)\00", align 1
@.str.55 = private unnamed_addr constant [58 x i8] c"reading %dx%d collective bitmap for %d symbols (%d bytes)\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"error decoding MMR bitmap image!\00", align 1
@.str.57 = private unnamed_addr constant [60 x i8] c"failed to copy the collective bitmap into symbol dictionary\00", align 1
@.str.58 = private unnamed_addr constant [60 x i8] c"failed to allocate symbols exported from symbols dictionary\00", align 1
@.str.59 = private unnamed_addr constant [50 x i8] c"failed to decode exrunlength for exported symbols\00", align 1
@.str.60 = private unnamed_addr constant [54 x i8] c"runlength too small in export symbol table (%d <= 0)\0A\00", align 1
@.str.61 = private unnamed_addr constant [59 x i8] c"runlength too large in export symbol table (%d > %d - %d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.Jbig2SymbolDict* @jbig2_sd_new(%struct._Jbig2Ctx* %ctx, i32 %n_symbols) #0 {
entry:
  %retval = alloca %struct.Jbig2SymbolDict*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %n_symbols.addr = alloca i32, align 4
  %new = alloca %struct.Jbig2SymbolDict*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store i32 %n_symbols, i32* %n_symbols.addr, align 4, !tbaa !5
  %0 = bitcast %struct.Jbig2SymbolDict** %new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.Jbig2SymbolDict* null, %struct.Jbig2SymbolDict** %new, align 8, !tbaa !1
  %1 = load i32, i32* %n_symbols.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %3 = load i32, i32* %n_symbols.addr, align 4, !tbaa !5
  %call = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %2, i32 3, i32 -1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0), i32 %3) #4
  store %struct.Jbig2SymbolDict* null, %struct.Jbig2SymbolDict** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %4, i32 0, i32 0
  %5 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !7
  %call1 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %5, i64 1, i64 16) #4
  %6 = bitcast i8* %call1 to %struct.Jbig2SymbolDict*
  store %struct.Jbig2SymbolDict* %6, %struct.Jbig2SymbolDict** %new, align 8, !tbaa !1
  %7 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %new, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.Jbig2SymbolDict* %7, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator4 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %8, i32 0, i32 0
  %9 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator4, align 8, !tbaa !7
  %10 = load i32, i32* %n_symbols.addr, align 4, !tbaa !5
  %conv = sext i32 %10 to i64
  %call5 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %9, i64 %conv, i64 8) #4
  %11 = bitcast i8* %call5 to %struct._Jbig2Image**
  %12 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %new, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %12, i32 0, i32 1
  store %struct._Jbig2Image** %11, %struct._Jbig2Image*** %glyphs, align 8, !tbaa !10
  %13 = load i32, i32* %n_symbols.addr, align 4, !tbaa !5
  %14 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %new, align 8, !tbaa !1
  %n_symbols6 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %14, i32 0, i32 0
  store i32 %13, i32* %n_symbols6, align 4, !tbaa !12
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %15 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call7 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %15, i32 3, i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0)) #4
  store %struct.Jbig2SymbolDict* null, %struct.Jbig2SymbolDict** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.then.3
  %16 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %new, align 8, !tbaa !1
  %glyphs9 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %16, i32 0, i32 1
  %17 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs9, align 8, !tbaa !10
  %cmp10 = icmp ne %struct._Jbig2Image** %17, null
  br i1 %cmp10, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %if.end.8
  %18 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %new, align 8, !tbaa !1
  %glyphs13 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %18, i32 0, i32 1
  %19 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs13, align 8, !tbaa !10
  %20 = bitcast %struct._Jbig2Image** %19 to i8*
  %21 = load i32, i32* %n_symbols.addr, align 4, !tbaa !5
  %conv14 = sext i32 %21 to i64
  %mul = mul i64 %conv14, 8
  %call15 = call i8* @memset(i8* %20, i32 0, i64 %mul) #5
  br label %if.end.19

if.else.16:                                       ; preds = %if.end.8
  %22 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call17 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %22, i32 3, i32 -1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0)) #4
  %23 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator18 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %23, i32 0, i32 0
  %24 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator18, align 8, !tbaa !7
  %25 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %new, align 8, !tbaa !1
  %26 = bitcast %struct.Jbig2SymbolDict* %25 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %24, i8* %26) #4
  store %struct.Jbig2SymbolDict* null, %struct.Jbig2SymbolDict** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.12
  %27 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %new, align 8, !tbaa !1
  store %struct.Jbig2SymbolDict* %27, %struct.Jbig2SymbolDict** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.else.16, %if.else, %if.then
  %28 = bitcast %struct.Jbig2SymbolDict** %new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %retval
  ret %struct.Jbig2SymbolDict* %29
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @jbig2_error(%struct._Jbig2Ctx*, i32, i32, i8*, ...) #2

declare i8* @jbig2_alloc(%struct._Jbig2Allocator*, i64, i64) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare void @jbig2_free(%struct._Jbig2Allocator*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @jbig2_sd_release(%struct._Jbig2Ctx* %ctx, %struct.Jbig2SymbolDict* %dict) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %dict.addr = alloca %struct.Jbig2SymbolDict*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct.Jbig2SymbolDict* %dict, %struct.Jbig2SymbolDict** %dict.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %dict.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.Jbig2SymbolDict* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %3 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %dict.addr, align 8, !tbaa !1
  %n_symbols = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %3, i32 0, i32 0
  %4 = load i32, i32* %n_symbols, align 4, !tbaa !12
  %cmp1 = icmp ult i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %dict.addr, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %6, i32 0, i32 1
  %7 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %7, i64 %idxprom
  %8 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx, align 8, !tbaa !1
  %tobool = icmp ne %struct._Jbig2Image* %8, null
  br i1 %tobool, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %for.body
  %9 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %dict.addr, align 8, !tbaa !1
  %glyphs4 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %11, i32 0, i32 1
  %12 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs4, align 8, !tbaa !10
  %arrayidx5 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %12, i64 %idxprom3
  %13 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx5, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %9, %struct._Jbig2Image* %13) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %15, i32 0, i32 0
  %16 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !7
  %17 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %dict.addr, align 8, !tbaa !1
  %glyphs7 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %17, i32 0, i32 1
  %18 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs7, align 8, !tbaa !10
  %19 = bitcast %struct._Jbig2Image** %18 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %16, i8* %19) #4
  %20 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator8 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %20, i32 0, i32 0
  %21 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator8, align 8, !tbaa !7
  %22 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %dict.addr, align 8, !tbaa !1
  %23 = bitcast %struct.Jbig2SymbolDict* %22 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %21, i8* %23) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @jbig2_image_release(%struct._Jbig2Ctx*, %struct._Jbig2Image*) #2

; Function Attrs: nounwind uwtable
define %struct._Jbig2Image* @jbig2_sd_glyph(%struct.Jbig2SymbolDict* %dict, i32 %id) #0 {
entry:
  %retval = alloca %struct._Jbig2Image*, align 8
  %dict.addr = alloca %struct.Jbig2SymbolDict*, align 8
  %id.addr = alloca i32, align 4
  store %struct.Jbig2SymbolDict* %dict, %struct.Jbig2SymbolDict** %dict.addr, align 8, !tbaa !1
  store i32 %id, i32* %id.addr, align 4, !tbaa !5
  %0 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %dict.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.Jbig2SymbolDict* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._Jbig2Image* null, %struct._Jbig2Image** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %id.addr, align 4, !tbaa !5
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %dict.addr, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %2, i32 0, i32 1
  %3 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %3, i64 %idxprom
  %4 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx, align 8, !tbaa !1
  store %struct._Jbig2Image* %4, %struct._Jbig2Image** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._Jbig2Image*, %struct._Jbig2Image** %retval
  ret %struct._Jbig2Image* %5
}

; Function Attrs: nounwind uwtable
define i32 @jbig2_sd_count_referred(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %index = alloca i32, align 4
  %rsegment = alloca %struct._Jbig2Segment*, align 8
  %n_dicts = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct._Jbig2Segment** %rsegment to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %n_dicts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %n_dicts, align 4, !tbaa !5
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %index, align 4, !tbaa !5
  %4 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %referred_to_segment_count = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %4, i32 0, i32 4
  %5 = load i32, i32* %referred_to_segment_count, align 4, !tbaa !13
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %7 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %referred_to_segments = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %8, i32 0, i32 5
  %9 = load i32*, i32** %referred_to_segments, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %call = call %struct._Jbig2Segment* @jbig2_find_segment(%struct._Jbig2Ctx* %6, i32 %10) #4
  store %struct._Jbig2Segment* %call, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %11 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %tobool = icmp ne %struct._Jbig2Segment* %11, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %12, i32 0, i32 1
  %13 = load i8, i8* %flags, align 1, !tbaa !16
  %conv = zext i8 %13 to i32
  %and = and i32 %conv, 63
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %14 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %result = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %14, i32 0, i32 6
  %15 = load i8*, i8** %result, align 8, !tbaa !17
  %tobool4 = icmp ne i8* %15, null
  br i1 %tobool4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true.3
  %16 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %result6 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %16, i32 0, i32 6
  %17 = load i8*, i8** %result6, align 8, !tbaa !17
  %18 = bitcast i8* %17 to %struct.Jbig2SymbolDict*
  %n_symbols = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %18, i32 0, i32 0
  %19 = load i32, i32* %n_symbols, align 4, !tbaa !12
  %cmp7 = icmp ugt i32 %19, 0
  br i1 %cmp7, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true.5
  %20 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %result10 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %20, i32 0, i32 6
  %21 = load i8*, i8** %result10, align 8, !tbaa !17
  %22 = bitcast i8* %21 to %struct.Jbig2SymbolDict*
  %glyphs = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %22, i32 0, i32 1
  %23 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs, align 8, !tbaa !10
  %24 = load %struct._Jbig2Image*, %struct._Jbig2Image** %23, align 8, !tbaa !1
  %cmp11 = icmp ne %struct._Jbig2Image* %24, null
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.9
  %25 = load i32, i32* %n_dicts, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %n_dicts, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.9, %land.lhs.true.5, %land.lhs.true.3, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %index, align 4, !tbaa !5
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, i32* %index, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %n_dicts, align 4, !tbaa !5
  %28 = bitcast i32* %n_dicts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct._Jbig2Segment** %rsegment to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  ret i32 %27
}

declare %struct._Jbig2Segment* @jbig2_find_segment(%struct._Jbig2Ctx*, i32) #2

; Function Attrs: nounwind uwtable
define %struct.Jbig2SymbolDict** @jbig2_sd_list_referred(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment) #0 {
entry:
  %retval = alloca %struct.Jbig2SymbolDict**, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %index = alloca i32, align 4
  %rsegment = alloca %struct._Jbig2Segment*, align 8
  %dicts = alloca %struct.Jbig2SymbolDict**, align 8
  %n_dicts = alloca i32, align 4
  %dindex = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct._Jbig2Segment** %rsegment to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.Jbig2SymbolDict*** %dicts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %n_dicts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %5 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %call = call i32 @jbig2_sd_count_referred(%struct._Jbig2Ctx* %4, %struct._Jbig2Segment* %5) #4
  store i32 %call, i32* %n_dicts, align 4, !tbaa !5
  %6 = bitcast i32* %dindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %dindex, align 4, !tbaa !5
  %7 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %7, i32 0, i32 0
  %8 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !7
  %9 = load i32, i32* %n_dicts, align 4, !tbaa !5
  %conv = sext i32 %9 to i64
  %call1 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %8, i64 %conv, i64 8) #4
  %10 = bitcast i8* %call1 to %struct.Jbig2SymbolDict**
  store %struct.Jbig2SymbolDict** %10, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %11 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %cmp = icmp eq %struct.Jbig2SymbolDict** %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %13 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %13, i32 0, i32 0
  %14 = load i32, i32* %number, align 4, !tbaa !18
  %call3 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %12, i32 3, i32 %14, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i32 0, i32 0)) #4
  store %struct.Jbig2SymbolDict** null, %struct.Jbig2SymbolDict*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %index, align 4, !tbaa !5
  %16 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %referred_to_segment_count = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %16, i32 0, i32 4
  %17 = load i32, i32* %referred_to_segment_count, align 4, !tbaa !13
  %cmp4 = icmp slt i32 %15, %17
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %19 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom = sext i32 %19 to i64
  %20 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %referred_to_segments = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %20, i32 0, i32 5
  %21 = load i32*, i32** %referred_to_segments, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %call6 = call %struct._Jbig2Segment* @jbig2_find_segment(%struct._Jbig2Ctx* %18, i32 %22) #4
  store %struct._Jbig2Segment* %call6, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %23 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %tobool = icmp ne %struct._Jbig2Segment* %23, null
  br i1 %tobool, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %for.body
  %24 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %24, i32 0, i32 1
  %25 = load i8, i8* %flags, align 1, !tbaa !16
  %conv7 = zext i8 %25 to i32
  %and = and i32 %conv7, 63
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.24

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %26 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %result = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %26, i32 0, i32 6
  %27 = load i8*, i8** %result, align 8, !tbaa !17
  %tobool11 = icmp ne i8* %27, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.24

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %28 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %result13 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %28, i32 0, i32 6
  %29 = load i8*, i8** %result13, align 8, !tbaa !17
  %30 = bitcast i8* %29 to %struct.Jbig2SymbolDict*
  %n_symbols = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %30, i32 0, i32 0
  %31 = load i32, i32* %n_symbols, align 4, !tbaa !12
  %cmp14 = icmp ugt i32 %31, 0
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.24

land.lhs.true.16:                                 ; preds = %land.lhs.true.12
  %32 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %result17 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %32, i32 0, i32 6
  %33 = load i8*, i8** %result17, align 8, !tbaa !17
  %34 = bitcast i8* %33 to %struct.Jbig2SymbolDict*
  %glyphs = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %34, i32 0, i32 1
  %35 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs, align 8, !tbaa !10
  %36 = load %struct._Jbig2Image*, %struct._Jbig2Image** %35, align 8, !tbaa !1
  %cmp18 = icmp ne %struct._Jbig2Image* %36, null
  br i1 %cmp18, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %land.lhs.true.16
  %37 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %rsegment, align 8, !tbaa !1
  %result21 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %37, i32 0, i32 6
  %38 = load i8*, i8** %result21, align 8, !tbaa !17
  %39 = bitcast i8* %38 to %struct.Jbig2SymbolDict*
  %40 = load i32, i32* %dindex, align 4, !tbaa !5
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %dindex, align 4, !tbaa !5
  %idxprom22 = sext i32 %40 to i64
  %41 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %41, i64 %idxprom22
  store %struct.Jbig2SymbolDict* %39, %struct.Jbig2SymbolDict** %arrayidx23, align 8, !tbaa !1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %land.lhs.true.16, %land.lhs.true.12, %land.lhs.true.10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %42 = load i32, i32* %index, align 4, !tbaa !5
  %inc25 = add nsw i32 %42, 1
  store i32 %inc25, i32* %index, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* %dindex, align 4, !tbaa !5
  %44 = load i32, i32* %n_dicts, align 4, !tbaa !5
  %cmp26 = icmp ne i32 %43, %44
  br i1 %cmp26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %for.end
  %45 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %46 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number29 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %46, i32 0, i32 0
  %47 = load i32, i32* %number29, align 4, !tbaa !18
  %48 = load i32, i32* %n_dicts, align 4, !tbaa !5
  %49 = load i32, i32* %dindex, align 4, !tbaa !5
  %call30 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %45, i32 3, i32 %47, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i32 0, i32 0), i32 %48, i32 %49) #4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %for.end
  %50 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  store %struct.Jbig2SymbolDict** %50, %struct.Jbig2SymbolDict*** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then
  %51 = bitcast i32* %dindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %n_dicts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.Jbig2SymbolDict*** %dicts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct._Jbig2Segment** %rsegment to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %retval
  ret %struct.Jbig2SymbolDict** %56
}

; Function Attrs: nounwind uwtable
define %struct.Jbig2SymbolDict* @jbig2_sd_cat(%struct._Jbig2Ctx* %ctx, i32 %n_dicts, %struct.Jbig2SymbolDict** %dicts) #0 {
entry:
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %n_dicts.addr = alloca i32, align 4
  %dicts.addr = alloca %struct.Jbig2SymbolDict**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %symbols = alloca i32, align 4
  %new = alloca %struct.Jbig2SymbolDict*, align 8
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store i32 %n_dicts, i32* %n_dicts.addr, align 4, !tbaa !5
  store %struct.Jbig2SymbolDict** %dicts, %struct.Jbig2SymbolDict*** %dicts.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %symbols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.Jbig2SymbolDict** %new to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.Jbig2SymbolDict* null, %struct.Jbig2SymbolDict** %new, align 8, !tbaa !1
  store i32 0, i32* %symbols, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %6 = load i32, i32* %n_dicts.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %8, i64 %idxprom
  %9 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %arrayidx, align 8, !tbaa !1
  %n_symbols = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %9, i32 0, i32 0
  %10 = load i32, i32* %n_symbols, align 4, !tbaa !12
  %11 = load i32, i32* %symbols, align 4, !tbaa !5
  %add = add i32 %11, %10
  store i32 %add, i32* %symbols, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %14 = load i32, i32* %symbols, align 4, !tbaa !5
  %call = call %struct.Jbig2SymbolDict* @jbig2_sd_new(%struct._Jbig2Ctx* %13, i32 %14) #4
  store %struct.Jbig2SymbolDict* %call, %struct.Jbig2SymbolDict** %new, align 8, !tbaa !1
  %15 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %new, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.Jbig2SymbolDict* %15, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 0, i32* %k, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.23, %if.then
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %17 = load i32, i32* %n_dicts.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %16, %17
  br i1 %cmp3, label %for.body.4, label %for.end.25

for.body.4:                                       ; preds = %for.cond.2
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.20, %for.body.4
  %18 = load i32, i32* %j, align 4, !tbaa !5
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %20, i64 %idxprom6
  %21 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %arrayidx7, align 8, !tbaa !1
  %n_symbols8 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %21, i32 0, i32 0
  %22 = load i32, i32* %n_symbols8, align 4, !tbaa !12
  %cmp9 = icmp ult i32 %18, %22
  br i1 %cmp9, label %for.body.10, label %for.end.22

for.body.10:                                      ; preds = %for.cond.5
  %23 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %24 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom11 = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %25 to i64
  %26 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %26, i64 %idxprom12
  %27 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %arrayidx13, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %27, i32 0, i32 1
  %28 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs, align 8, !tbaa !10
  %arrayidx14 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %28, i64 %idxprom11
  %29 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx14, align 8, !tbaa !1
  %call15 = call %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx* %23, %struct._Jbig2Image* %29) #4
  %30 = load i32, i32* %k, align 4, !tbaa !5
  %inc16 = add nsw i32 %30, 1
  store i32 %inc16, i32* %k, align 4, !tbaa !5
  %idxprom17 = sext i32 %30 to i64
  %31 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %new, align 8, !tbaa !1
  %glyphs18 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %31, i32 0, i32 1
  %32 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs18, align 8, !tbaa !10
  %arrayidx19 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %32, i64 %idxprom17
  store %struct._Jbig2Image* %call15, %struct._Jbig2Image** %arrayidx19, align 8, !tbaa !1
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.10
  %33 = load i32, i32* %j, align 4, !tbaa !5
  %inc21 = add nsw i32 %33, 1
  store i32 %inc21, i32* %j, align 4, !tbaa !5
  br label %for.cond.5

for.end.22:                                       ; preds = %for.cond.5
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end.22
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %34, 1
  store i32 %inc24, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.end.25:                                       ; preds = %for.cond.2
  br label %if.end

if.else:                                          ; preds = %for.end
  %35 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call26 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %35, i32 2, i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.25
  %36 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %new, align 8, !tbaa !1
  %37 = bitcast %struct.Jbig2SymbolDict** %new to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %symbols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  ret %struct.Jbig2SymbolDict* %36
}

declare %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx*, %struct._Jbig2Image*) #2

; Function Attrs: nounwind uwtable
define i32 @jbig2_symbol_dictionary(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, i8* %segment_data) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %segment_data.addr = alloca i8*, align 8
  %params = alloca %struct.Jbig2SymbolDictParams, align 8
  %flags = alloca i16, align 2
  %sdat_bytes = alloca i32, align 4
  %offset = alloca i32, align 4
  %GB_stats = alloca i8*, align 8
  %GR_stats = alloca i8*, align 8
  %table_index = alloca i32, align 4
  %huffman_params = alloca %struct._Jbig2HuffmanParams*, align 8
  %cleanup.dest.slot = alloca i32
  %n_dicts = alloca i32, align 4
  %dicts = alloca %struct.Jbig2SymbolDict**, align 8
  %stats_size = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store i8* %segment_data, i8** %segment_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Jbig2SymbolDictParams* %params to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = bitcast i16* %flags to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = bitcast i32* %sdat_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i8** %GB_stats to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* null, i8** %GB_stats, align 8, !tbaa !1
  %5 = bitcast i8** %GR_stats to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i8* null, i8** %GR_stats, align 8, !tbaa !1
  %6 = bitcast i32* %table_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %table_index, align 4, !tbaa !5
  %7 = bitcast %struct._Jbig2HuffmanParams** %huffman_params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %8, i32 0, i32 3
  %9 = load i64, i64* %data_length, align 8, !tbaa !19
  %cmp = icmp ult i64 %9, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %too_short

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %call = call zeroext i16 @jbig2_get_uint16(i8* %10) #4
  store i16 %call, i16* %flags, align 2, !tbaa !20
  %11 = bitcast %struct.Jbig2SymbolDictParams* %params to i8*
  %call1 = call i8* @memset(i8* %11, i32 0, i64 88) #5
  %12 = load i16, i16* %flags, align 2, !tbaa !20
  %conv = zext i16 %12 to i32
  %and = and i32 %conv, 1
  %SDHUFF = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 0
  store i32 %and, i32* %SDHUFF, align 4, !tbaa !22
  %13 = load i16, i16* %flags, align 2, !tbaa !20
  %conv2 = zext i16 %13 to i32
  %shr = ashr i32 %conv2, 1
  %and3 = and i32 %shr, 1
  %SDREFAGG = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 1
  store i32 %and3, i32* %SDREFAGG, align 4, !tbaa !24
  %14 = load i16, i16* %flags, align 2, !tbaa !20
  %conv4 = zext i16 %14 to i32
  %shr5 = ashr i32 %conv4, 10
  %and6 = and i32 %shr5, 3
  %SDTEMPLATE = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 10
  store i32 %and6, i32* %SDTEMPLATE, align 4, !tbaa !25
  %15 = load i16, i16* %flags, align 2, !tbaa !20
  %conv7 = zext i16 %15 to i32
  %shr8 = ashr i32 %conv7, 12
  %and9 = and i32 %shr8, 1
  %SDRTEMPLATE = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 12
  store i32 %and9, i32* %SDRTEMPLATE, align 4, !tbaa !26
  %SDHUFF10 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 0
  %16 = load i32, i32* %SDHUFF10, align 4, !tbaa !22
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.11, label %if.end.118

if.then.11:                                       ; preds = %if.end
  %17 = load i16, i16* %flags, align 2, !tbaa !20
  %conv12 = zext i16 %17 to i32
  %and13 = and i32 %conv12, 12
  %shr14 = ashr i32 %and13, 2
  switch i32 %shr14, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.16
    i32 3, label %sw.bb.19
    i32 2, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %if.then.11
  %18 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call15 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %18, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_D) #4
  %SDHUFFDH = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 6
  store %struct._Jbig2HuffmanTable* %call15, %struct._Jbig2HuffmanTable** %SDHUFFDH, align 8, !tbaa !27
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.then.11
  %19 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call17 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %19, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_E) #4
  %SDHUFFDH18 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 6
  store %struct._Jbig2HuffmanTable* %call17, %struct._Jbig2HuffmanTable** %SDHUFFDH18, align 8, !tbaa !27
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then.11
  %20 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %21 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %22 = load i32, i32* %table_index, align 4, !tbaa !5
  %call20 = call %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx* %20, %struct._Jbig2Segment* %21, i32 %22) #4
  store %struct._Jbig2HuffmanParams* %call20, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %23 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %cmp21 = icmp eq %struct._Jbig2HuffmanParams* %23, null
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %sw.bb.19
  %24 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %25 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %25, i32 0, i32 0
  %26 = load i32, i32* %number, align 4, !tbaa !18
  %27 = load i32, i32* %table_index, align 4, !tbaa !5
  %call24 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %24, i32 3, i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i32 %27) #4
  store i32 %call24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.296

if.end.25:                                        ; preds = %sw.bb.19
  %28 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %29 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %call26 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %28, %struct._Jbig2HuffmanParams* %29) #4
  %SDHUFFDH27 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 6
  store %struct._Jbig2HuffmanTable* %call26, %struct._Jbig2HuffmanTable** %SDHUFFDH27, align 8, !tbaa !27
  %30 = load i32, i32* %table_index, align 4, !tbaa !5
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %table_index, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.then.11
  br label %sw.default

sw.default:                                       ; preds = %if.then.11, %sw.bb.28
  %31 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %32 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number29 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %32, i32 0, i32 0
  %33 = load i32, i32* %number29, align 4, !tbaa !18
  %call30 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %31, i32 3, i32 %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0)) #4
  store i32 %call30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.296

sw.epilog:                                        ; preds = %if.end.25, %sw.bb.16, %sw.bb
  %SDHUFFDH31 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 6
  %34 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFDH31, align 8, !tbaa !27
  %cmp32 = icmp eq %struct._Jbig2HuffmanTable* %34, null
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %sw.epilog
  %35 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %36 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number35 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %36, i32 0, i32 0
  %37 = load i32, i32* %number35, align 4, !tbaa !18
  %call36 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %35, i32 3, i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0)) #4
  br label %cleanup.280

if.end.37:                                        ; preds = %sw.epilog
  %38 = load i16, i16* %flags, align 2, !tbaa !20
  %conv38 = zext i16 %38 to i32
  %and39 = and i32 %conv38, 48
  %shr40 = ashr i32 %and39, 4
  switch i32 %shr40, label %sw.default.58 [
    i32 0, label %sw.bb.41
    i32 1, label %sw.bb.43
    i32 3, label %sw.bb.46
    i32 2, label %sw.bb.57
  ]

sw.bb.41:                                         ; preds = %if.end.37
  %39 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call42 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %39, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_B) #4
  %SDHUFFDW = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 7
  store %struct._Jbig2HuffmanTable* %call42, %struct._Jbig2HuffmanTable** %SDHUFFDW, align 8, !tbaa !28
  br label %sw.epilog.61

sw.bb.43:                                         ; preds = %if.end.37
  %40 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call44 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %40, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_C) #4
  %SDHUFFDW45 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 7
  store %struct._Jbig2HuffmanTable* %call44, %struct._Jbig2HuffmanTable** %SDHUFFDW45, align 8, !tbaa !28
  br label %sw.epilog.61

sw.bb.46:                                         ; preds = %if.end.37
  %41 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %42 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %43 = load i32, i32* %table_index, align 4, !tbaa !5
  %call47 = call %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx* %41, %struct._Jbig2Segment* %42, i32 %43) #4
  store %struct._Jbig2HuffmanParams* %call47, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %44 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %cmp48 = icmp eq %struct._Jbig2HuffmanParams* %44, null
  br i1 %cmp48, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %sw.bb.46
  %45 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %46 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number51 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %46, i32 0, i32 0
  %47 = load i32, i32* %number51, align 4, !tbaa !18
  %48 = load i32, i32* %table_index, align 4, !tbaa !5
  %call52 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %45, i32 3, i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0), i32 %48) #4
  br label %sw.epilog.61

if.end.53:                                        ; preds = %sw.bb.46
  %49 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %50 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %call54 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %49, %struct._Jbig2HuffmanParams* %50) #4
  %SDHUFFDW55 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 7
  store %struct._Jbig2HuffmanTable* %call54, %struct._Jbig2HuffmanTable** %SDHUFFDW55, align 8, !tbaa !28
  %51 = load i32, i32* %table_index, align 4, !tbaa !5
  %inc56 = add nsw i32 %51, 1
  store i32 %inc56, i32* %table_index, align 4, !tbaa !5
  br label %sw.epilog.61

sw.bb.57:                                         ; preds = %if.end.37
  br label %sw.default.58

sw.default.58:                                    ; preds = %if.end.37, %sw.bb.57
  %52 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %53 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number59 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %53, i32 0, i32 0
  %54 = load i32, i32* %number59, align 4, !tbaa !18
  %call60 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %52, i32 3, i32 %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0)) #4
  br label %cleanup.280

sw.epilog.61:                                     ; preds = %if.end.53, %if.then.50, %sw.bb.43, %sw.bb.41
  %SDHUFFDW62 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 7
  %55 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFDW62, align 8, !tbaa !28
  %cmp63 = icmp eq %struct._Jbig2HuffmanTable* %55, null
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %sw.epilog.61
  %56 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %57 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number66 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %57, i32 0, i32 0
  %58 = load i32, i32* %number66, align 4, !tbaa !18
  %call67 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %56, i32 3, i32 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0)) #4
  br label %cleanup.280

if.end.68:                                        ; preds = %sw.epilog.61
  %59 = load i16, i16* %flags, align 2, !tbaa !20
  %conv69 = zext i16 %59 to i32
  %and70 = and i32 %conv69, 64
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %if.then.72, label %if.else.82

if.then.72:                                       ; preds = %if.end.68
  %60 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %61 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %62 = load i32, i32* %table_index, align 4, !tbaa !5
  %call73 = call %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx* %60, %struct._Jbig2Segment* %61, i32 %62) #4
  store %struct._Jbig2HuffmanParams* %call73, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %63 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %cmp74 = icmp eq %struct._Jbig2HuffmanParams* %63, null
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %if.then.72
  %64 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %65 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number77 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %65, i32 0, i32 0
  %66 = load i32, i32* %number77, align 4, !tbaa !18
  %67 = load i32, i32* %table_index, align 4, !tbaa !5
  %call78 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %64, i32 3, i32 %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i32 %67) #4
  br label %if.end.81

if.else:                                          ; preds = %if.then.72
  %68 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %69 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %call79 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %68, %struct._Jbig2HuffmanParams* %69) #4
  %SDHUFFBMSIZE = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 8
  store %struct._Jbig2HuffmanTable* %call79, %struct._Jbig2HuffmanTable** %SDHUFFBMSIZE, align 8, !tbaa !29
  %70 = load i32, i32* %table_index, align 4, !tbaa !5
  %inc80 = add nsw i32 %70, 1
  store i32 %inc80, i32* %table_index, align 4, !tbaa !5
  br label %if.end.81

if.end.81:                                        ; preds = %if.else, %if.then.76
  br label %if.end.85

if.else.82:                                       ; preds = %if.end.68
  %71 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call83 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %71, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_A) #4
  %SDHUFFBMSIZE84 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 8
  store %struct._Jbig2HuffmanTable* %call83, %struct._Jbig2HuffmanTable** %SDHUFFBMSIZE84, align 8, !tbaa !29
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.end.81
  %SDHUFFBMSIZE86 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 8
  %72 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFBMSIZE86, align 8, !tbaa !29
  %cmp87 = icmp eq %struct._Jbig2HuffmanTable* %72, null
  br i1 %cmp87, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %if.end.85
  %73 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %74 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number90 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %74, i32 0, i32 0
  %75 = load i32, i32* %number90, align 4, !tbaa !18
  %call91 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %73, i32 3, i32 %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0)) #4
  br label %cleanup.280

if.end.92:                                        ; preds = %if.end.85
  %76 = load i16, i16* %flags, align 2, !tbaa !20
  %conv93 = zext i16 %76 to i32
  %and94 = and i32 %conv93, 128
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then.96, label %if.else.107

if.then.96:                                       ; preds = %if.end.92
  %77 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %78 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %79 = load i32, i32* %table_index, align 4, !tbaa !5
  %call97 = call %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx* %77, %struct._Jbig2Segment* %78, i32 %79) #4
  store %struct._Jbig2HuffmanParams* %call97, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %80 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %cmp98 = icmp eq %struct._Jbig2HuffmanParams* %80, null
  br i1 %cmp98, label %if.then.100, label %if.else.103

if.then.100:                                      ; preds = %if.then.96
  %81 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %82 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number101 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %82, i32 0, i32 0
  %83 = load i32, i32* %number101, align 4, !tbaa !18
  %84 = load i32, i32* %table_index, align 4, !tbaa !5
  %call102 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %81, i32 3, i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i32 %84) #4
  br label %if.end.106

if.else.103:                                      ; preds = %if.then.96
  %85 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %86 = load %struct._Jbig2HuffmanParams*, %struct._Jbig2HuffmanParams** %huffman_params, align 8, !tbaa !1
  %call104 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %85, %struct._Jbig2HuffmanParams* %86) #4
  %SDHUFFAGGINST = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 9
  store %struct._Jbig2HuffmanTable* %call104, %struct._Jbig2HuffmanTable** %SDHUFFAGGINST, align 8, !tbaa !30
  %87 = load i32, i32* %table_index, align 4, !tbaa !5
  %inc105 = add nsw i32 %87, 1
  store i32 %inc105, i32* %table_index, align 4, !tbaa !5
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.103, %if.then.100
  br label %if.end.110

if.else.107:                                      ; preds = %if.end.92
  %88 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call108 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %88, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_A) #4
  %SDHUFFAGGINST109 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 9
  store %struct._Jbig2HuffmanTable* %call108, %struct._Jbig2HuffmanTable** %SDHUFFAGGINST109, align 8, !tbaa !30
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.end.106
  %SDHUFFAGGINST111 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 9
  %89 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFAGGINST111, align 8, !tbaa !30
  %cmp112 = icmp eq %struct._Jbig2HuffmanTable* %89, null
  br i1 %cmp112, label %if.then.114, label %if.end.117

if.then.114:                                      ; preds = %if.end.110
  %90 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %91 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number115 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %91, i32 0, i32 0
  %92 = load i32, i32* %number115, align 4, !tbaa !18
  %call116 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %90, i32 3, i32 %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0)) #4
  br label %cleanup.280

if.end.117:                                       ; preds = %if.end.110
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end
  %SDHUFF119 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 0
  %93 = load i32, i32* %SDHUFF119, align 4, !tbaa !22
  %tobool120 = icmp ne i32 %93, 0
  br i1 %tobool120, label %if.end.136, label %if.then.121

if.then.121:                                      ; preds = %if.end.118
  %94 = load i16, i16* %flags, align 2, !tbaa !20
  %conv122 = zext i16 %94 to i32
  %and123 = and i32 %conv122, 12
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then.125, label %if.end.128

if.then.125:                                      ; preds = %if.then.121
  %95 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %96 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number126 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %96, i32 0, i32 0
  %97 = load i32, i32* %number126, align 4, !tbaa !18
  %call127 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %95, i32 3, i32 %97, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0)) #4
  br label %cleanup.280

if.end.128:                                       ; preds = %if.then.121
  %98 = load i16, i16* %flags, align 2, !tbaa !20
  %conv129 = zext i16 %98 to i32
  %and130 = and i32 %conv129, 48
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %if.then.132, label %if.end.135

if.then.132:                                      ; preds = %if.end.128
  %99 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %100 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number133 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %100, i32 0, i32 0
  %101 = load i32, i32* %number133, align 4, !tbaa !18
  %call134 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %99, i32 3, i32 %101, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0)) #4
  br label %cleanup.280

if.end.135:                                       ; preds = %if.end.128
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.118
  %102 = load i16, i16* %flags, align 2, !tbaa !20
  %conv137 = zext i16 %102 to i32
  %and138 = and i32 %conv137, 128
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %if.then.140, label %if.end.143

if.then.140:                                      ; preds = %if.end.136
  %103 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %104 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number141 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %104, i32 0, i32 0
  %105 = load i32, i32* %number141, align 4, !tbaa !18
  %call142 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %103, i32 3, i32 %105, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.17, i32 0, i32 0)) #4
  br label %cleanup.280

if.end.143:                                       ; preds = %if.end.136
  %SDHUFF144 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 0
  %106 = load i32, i32* %SDHUFF144, align 4, !tbaa !22
  %tobool145 = icmp ne i32 %106, 0
  br i1 %tobool145, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.143
  br label %cond.end

cond.false:                                       ; preds = %if.end.143
  %SDTEMPLATE146 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 10
  %107 = load i32, i32* %SDTEMPLATE146, align 4, !tbaa !25
  %cmp147 = icmp eq i32 %107, 0
  %cond = select i1 %cmp147, i32 8, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond149 = phi i32 [ 0, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond149, i32* %sdat_bytes, align 4, !tbaa !5
  %sdat = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 11
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %sdat, i32 0, i32 0
  %108 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %108, i64 2
  %109 = load i32, i32* %sdat_bytes, align 4, !tbaa !5
  %conv150 = sext i32 %109 to i64
  %call151 = call i8* @memcpy(i8* %arraydecay, i8* %add.ptr, i64 %conv150) #5
  %110 = load i32, i32* %sdat_bytes, align 4, !tbaa !5
  %add = add nsw i32 2, %110
  store i32 %add, i32* %offset, align 4, !tbaa !5
  %SDREFAGG152 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 1
  %111 = load i32, i32* %SDREFAGG152, align 4, !tbaa !24
  %tobool153 = icmp ne i32 %111, 0
  br i1 %tobool153, label %land.lhs.true, label %if.end.168

land.lhs.true:                                    ; preds = %cond.end
  %SDRTEMPLATE154 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 12
  %112 = load i32, i32* %SDRTEMPLATE154, align 4, !tbaa !26
  %tobool155 = icmp ne i32 %112, 0
  br i1 %tobool155, label %if.end.168, label %if.then.156

if.then.156:                                      ; preds = %land.lhs.true
  %113 = load i32, i32* %offset, align 4, !tbaa !5
  %add157 = add nsw i32 %113, 4
  %conv158 = sext i32 %add157 to i64
  %114 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length159 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %114, i32 0, i32 3
  %115 = load i64, i64* %data_length159, align 8, !tbaa !19
  %cmp160 = icmp ugt i64 %conv158, %115
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.then.156
  br label %too_short

if.end.163:                                       ; preds = %if.then.156
  %sdrat = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 13
  %arraydecay164 = getelementptr inbounds [4 x i8], [4 x i8]* %sdrat, i32 0, i32 0
  %116 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %117 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext = sext i32 %117 to i64
  %add.ptr165 = getelementptr inbounds i8, i8* %116, i64 %idx.ext
  %call166 = call i8* @memcpy(i8* %arraydecay164, i8* %add.ptr165, i64 4) #5
  %118 = load i32, i32* %offset, align 4, !tbaa !5
  %add167 = add nsw i32 %118, 4
  store i32 %add167, i32* %offset, align 4, !tbaa !5
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.163, %land.lhs.true, %cond.end
  %119 = load i32, i32* %offset, align 4, !tbaa !5
  %add169 = add nsw i32 %119, 8
  %conv170 = sext i32 %add169 to i64
  %120 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length171 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %120, i32 0, i32 3
  %121 = load i64, i64* %data_length171, align 8, !tbaa !19
  %cmp172 = icmp ugt i64 %conv170, %121
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.end.168
  br label %too_short

if.end.175:                                       ; preds = %if.end.168
  %122 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %123 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext176 = sext i32 %123 to i64
  %add.ptr177 = getelementptr inbounds i8, i8* %122, i64 %idx.ext176
  %call178 = call i32 @jbig2_get_uint32(i8* %add.ptr177) #4
  %SDNUMEXSYMS = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 5
  store i32 %call178, i32* %SDNUMEXSYMS, align 4, !tbaa !31
  %124 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %125 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext179 = sext i32 %125 to i64
  %add.ptr180 = getelementptr inbounds i8, i8* %124, i64 %idx.ext179
  %add.ptr181 = getelementptr inbounds i8, i8* %add.ptr180, i64 4
  %call182 = call i32 @jbig2_get_uint32(i8* %add.ptr181) #4
  %SDNUMNEWSYMS = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 4
  store i32 %call182, i32* %SDNUMNEWSYMS, align 4, !tbaa !32
  %126 = load i32, i32* %offset, align 4, !tbaa !5
  %add183 = add nsw i32 %126, 8
  store i32 %add183, i32* %offset, align 4, !tbaa !5
  %127 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %128 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number184 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %128, i32 0, i32 0
  %129 = load i32, i32* %number184, align 4, !tbaa !18
  %130 = load i16, i16* %flags, align 2, !tbaa !20
  %conv185 = zext i16 %130 to i32
  %SDNUMEXSYMS186 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 5
  %131 = load i32, i32* %SDNUMEXSYMS186, align 4, !tbaa !31
  %SDNUMNEWSYMS187 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 4
  %132 = load i32, i32* %SDNUMNEWSYMS187, align 4, !tbaa !32
  %call188 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %127, i32 1, i32 %129, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i32 0, i32 0), i32 %conv185, i32 %131, i32 %132) #4
  %133 = bitcast i32* %n_dicts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #1
  %134 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %135 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %call189 = call i32 @jbig2_sd_count_referred(%struct._Jbig2Ctx* %134, %struct._Jbig2Segment* %135) #4
  store i32 %call189, i32* %n_dicts, align 4, !tbaa !5
  %136 = bitcast %struct.Jbig2SymbolDict*** %dicts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %136) #1
  store %struct.Jbig2SymbolDict** null, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %137 = load i32, i32* %n_dicts, align 4, !tbaa !5
  %cmp190 = icmp sgt i32 %137, 0
  br i1 %cmp190, label %if.then.192, label %if.end.209

if.then.192:                                      ; preds = %if.end.175
  %138 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %139 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %call193 = call %struct.Jbig2SymbolDict** @jbig2_sd_list_referred(%struct._Jbig2Ctx* %138, %struct._Jbig2Segment* %139) #4
  store %struct.Jbig2SymbolDict** %call193, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %140 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %cmp194 = icmp eq %struct.Jbig2SymbolDict** %140, null
  br i1 %cmp194, label %if.then.196, label %if.end.199

if.then.196:                                      ; preds = %if.then.192
  %141 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %142 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number197 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %142, i32 0, i32 0
  %143 = load i32, i32* %number197, align 4, !tbaa !18
  %call198 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %141, i32 2, i32 %143, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i32 0, i32 0)) #4
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.199:                                       ; preds = %if.then.192
  %144 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %145 = load i32, i32* %n_dicts, align 4, !tbaa !5
  %146 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %call200 = call %struct.Jbig2SymbolDict* @jbig2_sd_cat(%struct._Jbig2Ctx* %144, i32 %145, %struct.Jbig2SymbolDict** %146) #4
  %SDINSYMS = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 3
  store %struct.Jbig2SymbolDict* %call200, %struct.Jbig2SymbolDict** %SDINSYMS, align 8, !tbaa !33
  %SDINSYMS201 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 3
  %147 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDINSYMS201, align 8, !tbaa !33
  %cmp202 = icmp eq %struct.Jbig2SymbolDict* %147, null
  br i1 %cmp202, label %if.then.204, label %if.end.207

if.then.204:                                      ; preds = %if.end.199
  %148 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %149 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number205 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %149, i32 0, i32 0
  %150 = load i32, i32* %number205, align 4, !tbaa !18
  %call206 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %148, i32 2, i32 %150, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i32 0, i32 0)) #4
  %151 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %151, i32 0, i32 0
  %152 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !7
  %153 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %154 = bitcast %struct.Jbig2SymbolDict** %153 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %152, i8* %154) #4
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.207:                                       ; preds = %if.end.199
  %155 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator208 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %155, i32 0, i32 0
  %156 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator208, align 8, !tbaa !7
  %157 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %dicts, align 8, !tbaa !1
  %158 = bitcast %struct.Jbig2SymbolDict** %157 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %156, i8* %158) #4
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.207, %if.end.175
  %SDINSYMS210 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 3
  %159 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDINSYMS210, align 8, !tbaa !33
  %cmp211 = icmp ne %struct.Jbig2SymbolDict* %159, null
  br i1 %cmp211, label %if.then.213, label %if.end.215

if.then.213:                                      ; preds = %if.end.209
  %SDINSYMS214 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 3
  %160 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDINSYMS214, align 8, !tbaa !33
  %n_symbols = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %160, i32 0, i32 0
  %161 = load i32, i32* %n_symbols, align 4, !tbaa !12
  %SDNUMINSYMS = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 2
  store i32 %161, i32* %SDNUMINSYMS, align 4, !tbaa !34
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.213, %if.end.209
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.204, %if.then.196, %if.end.215
  %162 = bitcast %struct.Jbig2SymbolDict*** %dicts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast i32* %n_dicts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.296 [
    i32 0, label %cleanup.cont
    i32 4, label %cleanup.280
  ]

cleanup.cont:                                     ; preds = %cleanup
  %164 = load i16, i16* %flags, align 2, !tbaa !20
  %conv217 = zext i16 %164 to i32
  %and218 = and i32 %conv217, 256
  %tobool219 = icmp ne i32 %and218, 0
  br i1 %tobool219, label %if.then.220, label %if.else.223

if.then.220:                                      ; preds = %cleanup.cont
  %165 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %166 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number221 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %166, i32 0, i32 0
  %167 = load i32, i32* %number221, align 4, !tbaa !18
  %call222 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %165, i32 2, i32 %167, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i32 0, i32 0)) #4
  br label %cleanup.280

if.else.223:                                      ; preds = %cleanup.cont
  %168 = bitcast i32* %stats_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %168) #1
  %SDTEMPLATE224 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 10
  %169 = load i32, i32* %SDTEMPLATE224, align 4, !tbaa !25
  %cmp225 = icmp eq i32 %169, 0
  br i1 %cmp225, label %cond.true.227, label %cond.false.228

cond.true.227:                                    ; preds = %if.else.223
  br label %cond.end.233

cond.false.228:                                   ; preds = %if.else.223
  %SDTEMPLATE229 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 10
  %170 = load i32, i32* %SDTEMPLATE229, align 4, !tbaa !25
  %cmp230 = icmp eq i32 %170, 1
  %cond232 = select i1 %cmp230, i32 8192, i32 1024
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.228, %cond.true.227
  %cond234 = phi i32 [ 65536, %cond.true.227 ], [ %cond232, %cond.false.228 ]
  store i32 %cond234, i32* %stats_size, align 4, !tbaa !5
  %171 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator235 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %171, i32 0, i32 0
  %172 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator235, align 8, !tbaa !7
  %173 = load i32, i32* %stats_size, align 4, !tbaa !5
  %conv236 = sext i32 %173 to i64
  %call237 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %172, i64 %conv236, i64 1) #4
  store i8* %call237, i8** %GB_stats, align 8, !tbaa !1
  %174 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  %cmp238 = icmp eq i8* %174, null
  br i1 %cmp238, label %if.then.240, label %if.end.242

if.then.240:                                      ; preds = %cond.end.233
  %175 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call241 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %175, i32 3, i32 -1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i32 0, i32 0)) #4
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.259

if.end.242:                                       ; preds = %cond.end.233
  %176 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  %177 = load i32, i32* %stats_size, align 4, !tbaa !5
  %conv243 = sext i32 %177 to i64
  %call244 = call i8* @memset(i8* %176, i32 0, i64 %conv243) #5
  %SDRTEMPLATE245 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 12
  %178 = load i32, i32* %SDRTEMPLATE245, align 4, !tbaa !26
  %tobool246 = icmp ne i32 %178, 0
  %cond247 = select i1 %tobool246, i32 1024, i32 8192
  store i32 %cond247, i32* %stats_size, align 4, !tbaa !5
  %179 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator248 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %179, i32 0, i32 0
  %180 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator248, align 8, !tbaa !7
  %181 = load i32, i32* %stats_size, align 4, !tbaa !5
  %conv249 = sext i32 %181 to i64
  %call250 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %180, i64 %conv249, i64 1) #4
  store i8* %call250, i8** %GR_stats, align 8, !tbaa !1
  %182 = load i8*, i8** %GR_stats, align 8, !tbaa !1
  %cmp251 = icmp eq i8* %182, null
  br i1 %cmp251, label %if.then.253, label %if.end.256

if.then.253:                                      ; preds = %if.end.242
  %183 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call254 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %183, i32 3, i32 -1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i32 0, i32 0)) #4
  %184 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator255 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %184, i32 0, i32 0
  %185 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator255, align 8, !tbaa !7
  %186 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %185, i8* %186) #4
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.259

if.end.256:                                       ; preds = %if.end.242
  %187 = load i8*, i8** %GR_stats, align 8, !tbaa !1
  %188 = load i32, i32* %stats_size, align 4, !tbaa !5
  %conv257 = sext i32 %188 to i64
  %call258 = call i8* @memset(i8* %187, i32 0, i64 %conv257) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.259

cleanup.259:                                      ; preds = %if.then.253, %if.then.240, %if.end.256
  %189 = bitcast i32* %stats_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %cleanup.dest.260 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.260, label %cleanup.296 [
    i32 0, label %cleanup.cont.261
    i32 4, label %cleanup.280
  ]

cleanup.cont.261:                                 ; preds = %cleanup.259
  br label %if.end.262

if.end.262:                                       ; preds = %cleanup.cont.261
  %190 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %191 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %192 = load i8*, i8** %segment_data.addr, align 8, !tbaa !1
  %193 = load i32, i32* %offset, align 4, !tbaa !5
  %idx.ext263 = sext i32 %193 to i64
  %add.ptr264 = getelementptr inbounds i8, i8* %192, i64 %idx.ext263
  %194 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %data_length265 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %194, i32 0, i32 3
  %195 = load i64, i64* %data_length265, align 8, !tbaa !19
  %196 = load i32, i32* %offset, align 4, !tbaa !5
  %conv266 = sext i32 %196 to i64
  %sub = sub i64 %195, %conv266
  %197 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  %198 = load i8*, i8** %GR_stats, align 8, !tbaa !1
  %call267 = call %struct.Jbig2SymbolDict* @jbig2_decode_symbol_dict(%struct._Jbig2Ctx* %190, %struct._Jbig2Segment* %191, %struct.Jbig2SymbolDictParams* %params, i8* %add.ptr264, i64 %sub, i8* %197, i8* %198) #4
  %199 = bitcast %struct.Jbig2SymbolDict* %call267 to i8*
  %200 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %200, i32 0, i32 6
  store i8* %199, i8** %result, align 8, !tbaa !17
  %201 = load i16, i16* %flags, align 2, !tbaa !20
  %conv268 = zext i16 %201 to i32
  %and269 = and i32 %conv268, 512
  %tobool270 = icmp ne i32 %and269, 0
  br i1 %tobool270, label %if.then.271, label %if.else.276

if.then.271:                                      ; preds = %if.end.262
  %202 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator272 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %202, i32 0, i32 0
  %203 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator272, align 8, !tbaa !7
  %204 = load i8*, i8** %GR_stats, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %203, i8* %204) #4
  %205 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator273 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %205, i32 0, i32 0
  %206 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator273, align 8, !tbaa !7
  %207 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %206, i8* %207) #4
  %208 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %209 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number274 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %209, i32 0, i32 0
  %210 = load i32, i32* %number274, align 4, !tbaa !18
  %call275 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %208, i32 2, i32 %210, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i32 0, i32 0)) #4
  br label %if.end.279

if.else.276:                                      ; preds = %if.end.262
  %211 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator277 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %211, i32 0, i32 0
  %212 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator277, align 8, !tbaa !7
  %213 = load i8*, i8** %GR_stats, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %212, i8* %213) #4
  %214 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator278 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %214, i32 0, i32 0
  %215 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator278, align 8, !tbaa !7
  %216 = load i8*, i8** %GB_stats, align 8, !tbaa !1
  call void @jbig2_free(%struct._Jbig2Allocator* %215, i8* %216) #4
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.276, %if.then.271
  br label %cleanup.280

cleanup.280:                                      ; preds = %if.end.279, %cleanup.259, %cleanup, %if.then.220, %if.then.140, %if.then.132, %if.then.125, %if.then.114, %if.then.89, %if.then.65, %sw.default.58, %if.then.34
  %SDHUFF281 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 0
  %217 = load i32, i32* %SDHUFF281, align 4, !tbaa !22
  %tobool282 = icmp ne i32 %217, 0
  br i1 %tobool282, label %if.then.283, label %if.end.288

if.then.283:                                      ; preds = %cleanup.280
  %218 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %SDHUFFDH284 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 6
  %219 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFDH284, align 8, !tbaa !27
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %218, %struct._Jbig2HuffmanTable* %219) #4
  %220 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %SDHUFFDW285 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 7
  %221 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFDW285, align 8, !tbaa !28
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %220, %struct._Jbig2HuffmanTable* %221) #4
  %222 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %SDHUFFBMSIZE286 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 8
  %223 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFBMSIZE286, align 8, !tbaa !29
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %222, %struct._Jbig2HuffmanTable* %223) #4
  %224 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %SDHUFFAGGINST287 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 9
  %225 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFAGGINST287, align 8, !tbaa !30
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %224, %struct._Jbig2HuffmanTable* %225) #4
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.283, %cleanup.280
  %226 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %SDINSYMS289 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %params, i32 0, i32 3
  %227 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDINSYMS289, align 8, !tbaa !33
  call void @jbig2_sd_release(%struct._Jbig2Ctx* %226, %struct.Jbig2SymbolDict* %227) #4
  %228 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %result290 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %228, i32 0, i32 6
  %229 = load i8*, i8** %result290, align 8, !tbaa !17
  %cmp291 = icmp ne i8* %229, null
  %cond293 = select i1 %cmp291, i32 0, i32 -1
  store i32 %cond293, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.296

too_short:                                        ; preds = %if.then.174, %if.then.162, %if.then
  %230 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %231 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number294 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %231, i32 0, i32 0
  %232 = load i32, i32* %number294, align 4, !tbaa !18
  %call295 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %230, i32 3, i32 %232, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0)) #4
  store i32 %call295, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.296

cleanup.296:                                      ; preds = %too_short, %if.end.288, %cleanup.259, %cleanup, %sw.default, %if.then.23
  %233 = bitcast %struct._Jbig2HuffmanParams** %huffman_params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #1
  %234 = bitcast i32* %table_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast i8** %GR_stats to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #1
  %236 = bitcast i8** %GB_stats to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #1
  %237 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i32* %sdat_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast i16* %flags to i8*
  call void @llvm.lifetime.end(i64 2, i8* %239) #1
  %240 = bitcast %struct.Jbig2SymbolDictParams* %params to i8*
  call void @llvm.lifetime.end(i64 88, i8* %240) #1
  %241 = load i32, i32* %retval
  ret i32 %241
}

declare zeroext i16 @jbig2_get_uint16(i8*) #2

declare %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx*, %struct._Jbig2HuffmanParams*) #2

declare %struct._Jbig2HuffmanParams* @jbig2_find_table(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, i32) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @jbig2_get_uint32(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.Jbig2SymbolDict* @jbig2_decode_symbol_dict(%struct._Jbig2Ctx* %ctx, %struct._Jbig2Segment* %segment, %struct.Jbig2SymbolDictParams* %params, i8* %data, i64 %size, i8* %GB_stats, i8* %GR_stats) #0 {
entry:
  %retval = alloca %struct.Jbig2SymbolDict*, align 8
  %ctx.addr = alloca %struct._Jbig2Ctx*, align 8
  %segment.addr = alloca %struct._Jbig2Segment*, align 8
  %params.addr = alloca %struct.Jbig2SymbolDictParams*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %GB_stats.addr = alloca i8*, align 8
  %GR_stats.addr = alloca i8*, align 8
  %SDNEWSYMS = alloca %struct.Jbig2SymbolDict*, align 8
  %SDEXSYMS = alloca %struct.Jbig2SymbolDict*, align 8
  %HCHEIGHT = alloca i32, align 4
  %NSYMSDECODED = alloca i32, align 4
  %SYMWIDTH = alloca i32, align 4
  %TOTWIDTH = alloca i32, align 4
  %HCFIRSTSYM = alloca i32, align 4
  %SDNEWSYMWIDTHS = alloca i32*, align 8
  %SBSYMCODELEN = alloca i32, align 4
  %ws = alloca %struct._Jbig2WordStream*, align 8
  %hs = alloca %struct._Jbig2HuffmanState*, align 8
  %SDHUFFRDX = alloca %struct._Jbig2HuffmanTable*, align 8
  %SBHUFFRSIZE = alloca %struct._Jbig2HuffmanTable*, align 8
  %as = alloca %struct._Jbig2ArithState*, align 8
  %IADH = alloca %struct._Jbig2ArithIntCtx*, align 8
  %IADW = alloca %struct._Jbig2ArithIntCtx*, align 8
  %IAEX = alloca %struct._Jbig2ArithIntCtx*, align 8
  %IAAI = alloca %struct._Jbig2ArithIntCtx*, align 8
  %IAID = alloca %struct._Jbig2ArithIaidCtx*, align 8
  %IARDX = alloca %struct._Jbig2ArithIntCtx*, align 8
  %IARDY = alloca %struct._Jbig2ArithIntCtx*, align 8
  %code = alloca i32, align 4
  %refagg_dicts = alloca %struct.Jbig2SymbolDict**, align 8
  %n_refagg_dicts = alloca i32, align 4
  %tparams = alloca %struct.Jbig2TextRegionParams*, align 8
  %cleanup.dest.slot = alloca i32
  %tmp = alloca i64, align 8
  %HCDH = alloca i32, align 4
  %DW = alloca i32, align 4
  %region_params = alloca %struct.Jbig2GenericRegionParams, align 4
  %sdat_bytes = alloca i32, align 4
  %image = alloca %struct._Jbig2Image*, align 8
  %REFAGGNINST = alloca i32, align 4
  %image213 = alloca %struct._Jbig2Image*, align 8
  %i = alloca i32, align 4
  %rparams = alloca %struct.Jbig2RefinementRegionParams, align 8
  %image330 = alloca %struct._Jbig2Image*, align 8
  %ID = alloca i32, align 4
  %RDX = alloca i32, align 4
  %RDY = alloca i32, align 4
  %BMSIZE = alloca i32, align 4
  %ninsyms = alloca i32, align 4
  %code1 = alloca i32, align 4
  %code2 = alloca i32, align 4
  %code3 = alloca i32, align 4
  %code4 = alloca i32, align 4
  %image461 = alloca %struct._Jbig2Image*, align 8
  %BMSIZE463 = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %src = alloca i8*, align 8
  %stride488 = alloca i32, align 4
  %dst = alloca i8*, align 8
  %rparams541 = alloca %struct.Jbig2GenericRegionParams, align 4
  %glyph = alloca %struct._Jbig2Image*, align 8
  %i622 = alloca i32, align 4
  %j624 = alloca i32, align 4
  %k = alloca i32, align 4
  %exflag = alloca i32, align 4
  %limit = alloca i64, align 8
  %exrunlength = alloca i32, align 4
  %zerolength = alloca i32, align 4
  store %struct._Jbig2Ctx* %ctx, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  store %struct._Jbig2Segment* %segment, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  store %struct.Jbig2SymbolDictParams* %params, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !35
  store i8* %GB_stats, i8** %GB_stats.addr, align 8, !tbaa !1
  store i8* %GR_stats, i8** %GR_stats.addr, align 8, !tbaa !1
  %0 = bitcast %struct.Jbig2SymbolDict** %SDNEWSYMS to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.Jbig2SymbolDict* null, %struct.Jbig2SymbolDict** %SDNEWSYMS, align 8, !tbaa !1
  %1 = bitcast %struct.Jbig2SymbolDict** %SDEXSYMS to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.Jbig2SymbolDict* null, %struct.Jbig2SymbolDict** %SDEXSYMS, align 8, !tbaa !1
  %2 = bitcast i32* %HCHEIGHT to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %NSYMSDECODED to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %SYMWIDTH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %TOTWIDTH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %HCFIRSTSYM to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32** %SDNEWSYMWIDTHS to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* null, i32** %SDNEWSYMWIDTHS, align 8, !tbaa !1
  %8 = bitcast i32* %SBSYMCODELEN to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %SBSYMCODELEN, align 4, !tbaa !5
  %9 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct._Jbig2WordStream* null, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %10 = bitcast %struct._Jbig2HuffmanState** %hs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct._Jbig2HuffmanState* null, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %11 = bitcast %struct._Jbig2HuffmanTable** %SDHUFFRDX to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct._Jbig2HuffmanTable* null, %struct._Jbig2HuffmanTable** %SDHUFFRDX, align 8, !tbaa !1
  %12 = bitcast %struct._Jbig2HuffmanTable** %SBHUFFRSIZE to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store %struct._Jbig2HuffmanTable* null, %struct._Jbig2HuffmanTable** %SBHUFFRSIZE, align 8, !tbaa !1
  %13 = bitcast %struct._Jbig2ArithState** %as to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store %struct._Jbig2ArithState* null, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %14 = bitcast %struct._Jbig2ArithIntCtx** %IADH to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store %struct._Jbig2ArithIntCtx* null, %struct._Jbig2ArithIntCtx** %IADH, align 8, !tbaa !1
  %15 = bitcast %struct._Jbig2ArithIntCtx** %IADW to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store %struct._Jbig2ArithIntCtx* null, %struct._Jbig2ArithIntCtx** %IADW, align 8, !tbaa !1
  %16 = bitcast %struct._Jbig2ArithIntCtx** %IAEX to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store %struct._Jbig2ArithIntCtx* null, %struct._Jbig2ArithIntCtx** %IAEX, align 8, !tbaa !1
  %17 = bitcast %struct._Jbig2ArithIntCtx** %IAAI to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store %struct._Jbig2ArithIntCtx* null, %struct._Jbig2ArithIntCtx** %IAAI, align 8, !tbaa !1
  %18 = bitcast %struct._Jbig2ArithIaidCtx** %IAID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store %struct._Jbig2ArithIaidCtx* null, %struct._Jbig2ArithIaidCtx** %IAID, align 8, !tbaa !1
  %19 = bitcast %struct._Jbig2ArithIntCtx** %IARDX to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store %struct._Jbig2ArithIntCtx* null, %struct._Jbig2ArithIntCtx** %IARDX, align 8, !tbaa !1
  %20 = bitcast %struct._Jbig2ArithIntCtx** %IARDY to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store %struct._Jbig2ArithIntCtx* null, %struct._Jbig2ArithIntCtx** %IARDY, align 8, !tbaa !1
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %22 = bitcast %struct.Jbig2SymbolDict*** %refagg_dicts to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store %struct.Jbig2SymbolDict** null, %struct.Jbig2SymbolDict*** %refagg_dicts, align 8, !tbaa !1
  %23 = bitcast i32* %n_refagg_dicts to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 1, i32* %n_refagg_dicts, align 4, !tbaa !5
  %24 = bitcast %struct.Jbig2TextRegionParams** %tparams to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store %struct.Jbig2TextRegionParams* null, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  store i32 0, i32* %HCHEIGHT, align 4, !tbaa !5
  store i32 0, i32* %NSYMSDECODED, align 4, !tbaa !5
  %25 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %27 = load i64, i64* %size.addr, align 8, !tbaa !35
  %call = call %struct._Jbig2WordStream* @jbig2_word_stream_buf_new(%struct._Jbig2Ctx* %25, i8* %26, i64 %27) #4
  store %struct._Jbig2WordStream* %call, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %28 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %cmp = icmp eq %struct._Jbig2WordStream* %28, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %29 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %30 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %30, i32 0, i32 0
  %31 = load i32, i32* %number, align 4, !tbaa !18
  %call1 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %29, i32 2, i32 %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i32 0, i32 0)) #4
  store %struct.Jbig2SymbolDict* null, %struct.Jbig2SymbolDict** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.769

if.end:                                           ; preds = %entry
  %32 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %33 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %call2 = call %struct._Jbig2ArithState* @jbig2_arith_new(%struct._Jbig2Ctx* %32, %struct._Jbig2WordStream* %33) #4
  store %struct._Jbig2ArithState* %call2, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %34 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %cmp3 = icmp eq %struct._Jbig2ArithState* %34, null
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %35 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %36 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number5 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %36, i32 0, i32 0
  %37 = load i32, i32* %number5, align 4, !tbaa !18
  %call6 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %35, i32 2, i32 %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i32 0, i32 0)) #4
  %38 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %39 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  call void @jbig2_word_stream_buf_free(%struct._Jbig2Ctx* %38, %struct._Jbig2WordStream* %39) #4
  store %struct.Jbig2SymbolDict* null, %struct.Jbig2SymbolDict** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.769

if.end.7:                                         ; preds = %if.end
  %40 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %40, i32 0, i32 0
  %41 = load i32, i32* %SDHUFF, align 4, !tbaa !22
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.else, label %if.then.8

if.then.8:                                        ; preds = %if.end.7
  %42 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call9 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %42) #4
  store %struct._Jbig2ArithIntCtx* %call9, %struct._Jbig2ArithIntCtx** %IADH, align 8, !tbaa !1
  %43 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call10 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %43) #4
  store %struct._Jbig2ArithIntCtx* %call10, %struct._Jbig2ArithIntCtx** %IADW, align 8, !tbaa !1
  %44 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call11 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %44) #4
  store %struct._Jbig2ArithIntCtx* %call11, %struct._Jbig2ArithIntCtx** %IAEX, align 8, !tbaa !1
  %45 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call12 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %45) #4
  store %struct._Jbig2ArithIntCtx* %call12, %struct._Jbig2ArithIntCtx** %IAAI, align 8, !tbaa !1
  %46 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADH, align 8, !tbaa !1
  %cmp13 = icmp eq %struct._Jbig2ArithIntCtx* %46, null
  br i1 %cmp13, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.8
  %47 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADW, align 8, !tbaa !1
  %cmp14 = icmp eq %struct._Jbig2ArithIntCtx* %47, null
  br i1 %cmp14, label %if.then.19, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false
  %48 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IAEX, align 8, !tbaa !1
  %cmp16 = icmp eq %struct._Jbig2ArithIntCtx* %48, null
  br i1 %cmp16, label %if.then.19, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.15
  %49 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IAAI, align 8, !tbaa !1
  %cmp18 = icmp eq %struct._Jbig2ArithIntCtx* %49, null
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false.15, %lor.lhs.false, %if.then.8
  %50 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %51 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number20 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %51, i32 0, i32 0
  %52 = load i32, i32* %number20, align 4, !tbaa !18
  %call21 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %50, i32 2, i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i32 0, i32 0)) #4
  br label %cleanup1

if.end.22:                                        ; preds = %lor.lhs.false.17
  %53 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDREFAGG = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %53, i32 0, i32 1
  %54 = load i32, i32* %SDREFAGG, align 4, !tbaa !24
  %tobool23 = icmp ne i32 %54, 0
  br i1 %tobool23, label %if.then.24, label %if.end.42

if.then.24:                                       ; preds = %if.end.22
  %55 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMINSYMS = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %56, i32 0, i32 2
  %57 = load i32, i32* %SDNUMINSYMS, align 4, !tbaa !34
  %58 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMNEWSYMS = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %58, i32 0, i32 4
  %59 = load i32, i32* %SDNUMNEWSYMS, align 4, !tbaa !32
  %add = add i32 %57, %59
  %conv = zext i32 %add to i64
  store i64 %conv, i64* %tmp, align 8, !tbaa !35
  store i32 0, i32* %SBSYMCODELEN, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.24
  %60 = load i32, i32* %SBSYMCODELEN, align 4, !tbaa !5
  %sh_prom = zext i32 %60 to i64
  %shl = shl i64 1, %sh_prom
  %61 = load i64, i64* %tmp, align 8, !tbaa !35
  %cmp25 = icmp slt i64 %shl, %61
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %SBSYMCODELEN, align 4, !tbaa !5
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %SBSYMCODELEN, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %64 = load i32, i32* %SBSYMCODELEN, align 4, !tbaa !5
  %call27 = call %struct._Jbig2ArithIaidCtx* @jbig2_arith_iaid_ctx_new(%struct._Jbig2Ctx* %63, i32 %64) #4
  store %struct._Jbig2ArithIaidCtx* %call27, %struct._Jbig2ArithIaidCtx** %IAID, align 8, !tbaa !1
  %65 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call28 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %65) #4
  store %struct._Jbig2ArithIntCtx* %call28, %struct._Jbig2ArithIntCtx** %IARDX, align 8, !tbaa !1
  %66 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call29 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %66) #4
  store %struct._Jbig2ArithIntCtx* %call29, %struct._Jbig2ArithIntCtx** %IARDY, align 8, !tbaa !1
  %67 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %IAID, align 8, !tbaa !1
  %cmp30 = icmp eq %struct._Jbig2ArithIaidCtx* %67, null
  br i1 %cmp30, label %if.then.38, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %for.end
  %68 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDX, align 8, !tbaa !1
  %cmp33 = icmp eq %struct._Jbig2ArithIntCtx* %68, null
  br i1 %cmp33, label %if.then.38, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.32
  %69 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDY, align 8, !tbaa !1
  %cmp36 = icmp eq %struct._Jbig2ArithIntCtx* %69, null
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %lor.lhs.false.35, %lor.lhs.false.32, %for.end
  %70 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %71 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number39 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %71, i32 0, i32 0
  %72 = load i32, i32* %number39, align 4, !tbaa !18
  %call40 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %70, i32 2, i32 %72, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i32 0, i32 0)) #4
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %lor.lhs.false.35
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.38, %if.end.41
  %73 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.769 [
    i32 0, label %cleanup.cont
    i32 6, label %cleanup2
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.42

if.end.42:                                        ; preds = %cleanup.cont, %if.end.22
  br label %if.end.74

if.else:                                          ; preds = %if.end.7
  %74 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %75 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number43 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %75, i32 0, i32 0
  %76 = load i32, i32* %number43, align 4, !tbaa !18
  %call44 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %74, i32 0, i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0)) #4
  %77 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %78 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %call45 = call %struct._Jbig2HuffmanState* @jbig2_huffman_new(%struct._Jbig2Ctx* %77, %struct._Jbig2WordStream* %78) #4
  store %struct._Jbig2HuffmanState* %call45, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %79 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call46 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %79, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_O) #4
  store %struct._Jbig2HuffmanTable* %call46, %struct._Jbig2HuffmanTable** %SDHUFFRDX, align 8, !tbaa !1
  %80 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call47 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %80, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_A) #4
  store %struct._Jbig2HuffmanTable* %call47, %struct._Jbig2HuffmanTable** %SBHUFFRSIZE, align 8, !tbaa !1
  %81 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %cmp48 = icmp eq %struct._Jbig2HuffmanState* %81, null
  br i1 %cmp48, label %if.then.56, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %if.else
  %82 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFRDX, align 8, !tbaa !1
  %cmp51 = icmp eq %struct._Jbig2HuffmanTable* %82, null
  br i1 %cmp51, label %if.then.56, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.50
  %83 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRSIZE, align 8, !tbaa !1
  %cmp54 = icmp eq %struct._Jbig2HuffmanTable* %83, null
  br i1 %cmp54, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %lor.lhs.false.53, %lor.lhs.false.50, %if.else
  %84 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %85 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number57 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %85, i32 0, i32 0
  %86 = load i32, i32* %number57, align 4, !tbaa !18
  %call58 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %84, i32 2, i32 %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i32 0, i32 0)) #4
  br label %cleanup2

if.end.59:                                        ; preds = %lor.lhs.false.53
  %87 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDREFAGG60 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %87, i32 0, i32 1
  %88 = load i32, i32* %SDREFAGG60, align 4, !tbaa !24
  %tobool61 = icmp ne i32 %88, 0
  br i1 %tobool61, label %if.end.73, label %if.then.62

if.then.62:                                       ; preds = %if.end.59
  %89 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %89, i32 0, i32 0
  %90 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator, align 8, !tbaa !7
  %91 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMNEWSYMS63 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %91, i32 0, i32 4
  %92 = load i32, i32* %SDNUMNEWSYMS63, align 4, !tbaa !32
  %conv64 = zext i32 %92 to i64
  %call65 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %90, i64 %conv64, i64 4) #4
  %93 = bitcast i8* %call65 to i32*
  store i32* %93, i32** %SDNEWSYMWIDTHS, align 8, !tbaa !1
  %94 = load i32*, i32** %SDNEWSYMWIDTHS, align 8, !tbaa !1
  %cmp66 = icmp eq i32* %94, null
  br i1 %cmp66, label %if.then.68, label %if.end.72

if.then.68:                                       ; preds = %if.then.62
  %95 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %96 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number69 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %96, i32 0, i32 0
  %97 = load i32, i32* %number69, align 4, !tbaa !18
  %98 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMNEWSYMS70 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %98, i32 0, i32 4
  %99 = load i32, i32* %SDNUMNEWSYMS70, align 4, !tbaa !32
  %call71 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %95, i32 3, i32 %97, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i32 0, i32 0), i32 %99) #4
  br label %cleanup2

if.end.72:                                        ; preds = %if.then.62
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.59
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.42
  %100 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %101 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMNEWSYMS75 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %101, i32 0, i32 4
  %102 = load i32, i32* %SDNUMNEWSYMS75, align 4, !tbaa !32
  %call76 = call %struct.Jbig2SymbolDict* @jbig2_sd_new(%struct._Jbig2Ctx* %100, i32 %102) #4
  store %struct.Jbig2SymbolDict* %call76, %struct.Jbig2SymbolDict** %SDNEWSYMS, align 8, !tbaa !1
  %103 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDNEWSYMS, align 8, !tbaa !1
  %cmp77 = icmp eq %struct.Jbig2SymbolDict* %103, null
  br i1 %cmp77, label %if.then.79, label %if.end.83

if.then.79:                                       ; preds = %if.end.74
  %104 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %105 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number80 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %105, i32 0, i32 0
  %106 = load i32, i32* %number80, align 4, !tbaa !18
  %107 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMNEWSYMS81 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %107, i32 0, i32 4
  %108 = load i32, i32* %SDNUMNEWSYMS81, align 4, !tbaa !32
  %call82 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %104, i32 2, i32 %106, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i32 0, i32 0), i32 %108) #4
  br label %cleanup2

if.end.83:                                        ; preds = %if.end.74
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.613, %if.end.83
  %109 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %110 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMNEWSYMS84 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %110, i32 0, i32 4
  %111 = load i32, i32* %SDNUMNEWSYMS84, align 4, !tbaa !32
  %cmp85 = icmp ult i32 %109, %111
  br i1 %cmp85, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %112 = bitcast i32* %HCDH to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #1
  %113 = bitcast i32* %DW to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  %114 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF89 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %114, i32 0, i32 0
  %115 = load i32, i32* %SDHUFF89, align 4, !tbaa !22
  %tobool90 = icmp ne i32 %115, 0
  br i1 %tobool90, label %if.then.91, label %if.else.93

if.then.91:                                       ; preds = %while.body
  %116 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %117 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFFDH = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %117, i32 0, i32 6
  %118 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFDH, align 8, !tbaa !27
  %call92 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %116, %struct._Jbig2HuffmanTable* %118, i32* %code) #4
  store i32 %call92, i32* %HCDH, align 4, !tbaa !5
  br label %if.end.95

if.else.93:                                       ; preds = %while.body
  %119 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADH, align 8, !tbaa !1
  %120 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %call94 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %119, %struct._Jbig2ArithState* %120, i32* %HCDH) #4
  store i32 %call94, i32* %code, align 4, !tbaa !5
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.93, %if.then.91
  %121 = load i32, i32* %code, align 4, !tbaa !5
  %cmp96 = icmp ne i32 %121, 0
  br i1 %cmp96, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %if.end.95
  %122 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %123 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number99 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %123, i32 0, i32 0
  %124 = load i32, i32* %number99, align 4, !tbaa !18
  %125 = load i32, i32* %code, align 4, !tbaa !5
  %call100 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %122, i32 2, i32 %124, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i32 0, i32 0), i32 %125) #4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %if.end.95
  %126 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF102 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %126, i32 0, i32 0
  %127 = load i32, i32* %SDHUFF102, align 4, !tbaa !22
  %tobool103 = icmp ne i32 %127, 0
  br i1 %tobool103, label %if.end.111, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.101
  %128 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %call104 = call i32 @jbig2_arith_get_offset(%struct._Jbig2ArithState* %128) #4
  %conv105 = sext i32 %call104 to i64
  %129 = load i64, i64* %size.addr, align 8, !tbaa !35
  %cmp106 = icmp uge i64 %conv105, %129
  br i1 %cmp106, label %if.then.108, label %if.end.111

if.then.108:                                      ; preds = %land.lhs.true
  %130 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %131 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number109 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %131, i32 0, i32 0
  %132 = load i32, i32* %number109, align 4, !tbaa !18
  %call110 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %130, i32 3, i32 %132, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.33, i32 0, i32 0)) #4
  store i32 %call110, i32* %code, align 4, !tbaa !5
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.111:                                       ; preds = %land.lhs.true, %if.end.101
  %133 = load i32, i32* %HCHEIGHT, align 4, !tbaa !5
  %134 = load i32, i32* %HCDH, align 4, !tbaa !5
  %add112 = add i32 %133, %134
  store i32 %add112, i32* %HCHEIGHT, align 4, !tbaa !5
  store i32 0, i32* %SYMWIDTH, align 4, !tbaa !5
  store i32 0, i32* %TOTWIDTH, align 4, !tbaa !5
  %135 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  store i32 %135, i32* %HCFIRSTSYM, align 4, !tbaa !5
  %136 = load i32, i32* %HCHEIGHT, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %136, 0
  br i1 %cmp113, label %if.then.115, label %if.end.118

if.then.115:                                      ; preds = %if.end.111
  %137 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %138 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number116 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %138, i32 0, i32 0
  %139 = load i32, i32* %number116, align 4, !tbaa !18
  %call117 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %137, i32 3, i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0)) #4
  store i32 %call117, i32* %code, align 4, !tbaa !5
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.118:                                       ; preds = %if.end.111
  %140 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %141 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number119 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %141, i32 0, i32 0
  %142 = load i32, i32* %number119, align 4, !tbaa !18
  %143 = load i32, i32* %HCHEIGHT, align 4, !tbaa !5
  %144 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %call120 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %140, i32 0, i32 %142, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.35, i32 0, i32 0), i32 %143, i32 %144) #4
  br label %for.cond.121

for.cond.121:                                     ; preds = %if.end.448, %if.end.118
  %145 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF122 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %145, i32 0, i32 0
  %146 = load i32, i32* %SDHUFF122, align 4, !tbaa !22
  %tobool123 = icmp ne i32 %146, 0
  br i1 %tobool123, label %if.then.124, label %if.else.126

if.then.124:                                      ; preds = %for.cond.121
  %147 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %148 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFFDW = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %148, i32 0, i32 7
  %149 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFDW, align 8, !tbaa !28
  %call125 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %147, %struct._Jbig2HuffmanTable* %149, i32* %code) #4
  store i32 %call125, i32* %DW, align 4, !tbaa !5
  br label %if.end.128

if.else.126:                                      ; preds = %for.cond.121
  %150 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADW, align 8, !tbaa !1
  %151 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %call127 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %150, %struct._Jbig2ArithState* %151, i32* %DW) #4
  store i32 %call127, i32* %code, align 4, !tbaa !5
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.126, %if.then.124
  %152 = load i32, i32* %code, align 4, !tbaa !5
  %cmp129 = icmp slt i32 %152, 0
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.128
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.132:                                       ; preds = %if.end.128
  %153 = load i32, i32* %code, align 4, !tbaa !5
  %cmp133 = icmp eq i32 %153, 1
  br i1 %cmp133, label %if.then.135, label %if.end.138

if.then.135:                                      ; preds = %if.end.132
  %154 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %155 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number136 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %155, i32 0, i32 0
  %156 = load i32, i32* %number136, align 4, !tbaa !18
  %157 = load i32, i32* %HCHEIGHT, align 4, !tbaa !5
  %call137 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %154, i32 0, i32 %156, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0), i32 %157) #4
  br label %for.end.453

if.end.138:                                       ; preds = %if.end.132
  %158 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %159 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMNEWSYMS139 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %159, i32 0, i32 4
  %160 = load i32, i32* %SDNUMNEWSYMS139, align 4, !tbaa !32
  %cmp140 = icmp uge i32 %158, %160
  br i1 %cmp140, label %if.then.142, label %if.end.145

if.then.142:                                      ; preds = %if.end.138
  %161 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %162 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number143 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %162, i32 0, i32 0
  %163 = load i32, i32* %number143, align 4, !tbaa !18
  %164 = load i32, i32* %HCHEIGHT, align 4, !tbaa !5
  %call144 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %161, i32 3, i32 %163, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i32 %164) #4
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.145:                                       ; preds = %if.end.138
  %165 = load i32, i32* %SYMWIDTH, align 4, !tbaa !5
  %166 = load i32, i32* %DW, align 4, !tbaa !5
  %add146 = add i32 %165, %166
  store i32 %add146, i32* %SYMWIDTH, align 4, !tbaa !5
  %167 = load i32, i32* %TOTWIDTH, align 4, !tbaa !5
  %168 = load i32, i32* %SYMWIDTH, align 4, !tbaa !5
  %add147 = add i32 %167, %168
  store i32 %add147, i32* %TOTWIDTH, align 4, !tbaa !5
  %169 = load i32, i32* %SYMWIDTH, align 4, !tbaa !5
  %cmp148 = icmp slt i32 %169, 0
  br i1 %cmp148, label %if.then.150, label %if.end.154

if.then.150:                                      ; preds = %if.end.145
  %170 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %171 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number151 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %171, i32 0, i32 0
  %172 = load i32, i32* %number151, align 4, !tbaa !18
  %173 = load i32, i32* %SYMWIDTH, align 4, !tbaa !5
  %174 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %add152 = add i32 %174, 1
  %call153 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %170, i32 3, i32 %172, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0), i32 %173, i32 %add152) #4
  store i32 %call153, i32* %code, align 4, !tbaa !5
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.610

if.end.154:                                       ; preds = %if.end.145
  %175 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF155 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %175, i32 0, i32 0
  %176 = load i32, i32* %SDHUFF155, align 4, !tbaa !22
  %tobool156 = icmp ne i32 %176, 0
  br i1 %tobool156, label %lor.lhs.false.157, label %if.then.160

lor.lhs.false.157:                                ; preds = %if.end.154
  %177 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDREFAGG158 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %177, i32 0, i32 1
  %178 = load i32, i32* %SDREFAGG158, align 4, !tbaa !24
  %tobool159 = icmp ne i32 %178, 0
  br i1 %tobool159, label %if.then.160, label %if.end.439

if.then.160:                                      ; preds = %lor.lhs.false.157, %if.end.154
  %179 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDREFAGG161 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %179, i32 0, i32 1
  %180 = load i32, i32* %SDREFAGG161, align 4, !tbaa !24
  %tobool162 = icmp ne i32 %180, 0
  br i1 %tobool162, label %if.else.190, label %if.then.163

if.then.163:                                      ; preds = %if.then.160
  %181 = bitcast %struct.Jbig2GenericRegionParams* %region_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %181) #1
  %182 = bitcast i32* %sdat_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %182) #1
  %183 = bitcast %struct._Jbig2Image** %image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %183) #1
  %MMR = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %region_params, i32 0, i32 0
  store i32 0, i32* %MMR, align 4, !tbaa !36
  %184 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDTEMPLATE = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %184, i32 0, i32 10
  %185 = load i32, i32* %SDTEMPLATE, align 4, !tbaa !25
  %GBTEMPLATE = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %region_params, i32 0, i32 1
  store i32 %185, i32* %GBTEMPLATE, align 4, !tbaa !38
  %TPGDON = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %region_params, i32 0, i32 2
  store i32 0, i32* %TPGDON, align 4, !tbaa !39
  %USESKIP = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %region_params, i32 0, i32 3
  store i32 0, i32* %USESKIP, align 4, !tbaa !40
  %186 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDTEMPLATE167 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %186, i32 0, i32 10
  %187 = load i32, i32* %SDTEMPLATE167, align 4, !tbaa !25
  %cmp168 = icmp eq i32 %187, 0
  %cond = select i1 %cmp168, i32 8, i32 2
  store i32 %cond, i32* %sdat_bytes, align 4, !tbaa !5
  %gbat = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %region_params, i32 0, i32 4
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %gbat, i32 0, i32 0
  %188 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %sdat = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %188, i32 0, i32 11
  %arraydecay170 = getelementptr inbounds [8 x i8], [8 x i8]* %sdat, i32 0, i32 0
  %189 = load i32, i32* %sdat_bytes, align 4, !tbaa !5
  %conv171 = sext i32 %189 to i64
  %call172 = call i8* @memcpy(i8* %arraydecay, i8* %arraydecay170, i64 %conv171) #5
  %190 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %191 = load i32, i32* %SYMWIDTH, align 4, !tbaa !5
  %192 = load i32, i32* %HCHEIGHT, align 4, !tbaa !5
  %call173 = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %190, i32 %191, i32 %192) #4
  store %struct._Jbig2Image* %call173, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %193 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %cmp174 = icmp eq %struct._Jbig2Image* %193, null
  br i1 %cmp174, label %if.then.176, label %if.end.179

if.then.176:                                      ; preds = %if.then.163
  %194 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %195 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number177 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %195, i32 0, i32 0
  %196 = load i32, i32* %number177, align 4, !tbaa !18
  %call178 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %194, i32 3, i32 %196, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.39, i32 0, i32 0)) #4
  store i32 %call178, i32* %code, align 4, !tbaa !5
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.185

if.end.179:                                       ; preds = %if.then.163
  %197 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %198 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %199 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %200 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %201 = load i8*, i8** %GB_stats.addr, align 8, !tbaa !1
  %call180 = call i32 @jbig2_decode_generic_region(%struct._Jbig2Ctx* %197, %struct._Jbig2Segment* %198, %struct.Jbig2GenericRegionParams* %region_params, %struct._Jbig2ArithState* %199, %struct._Jbig2Image* %200, i8* %201) #4
  store i32 %call180, i32* %code, align 4, !tbaa !5
  %202 = load i32, i32* %code, align 4, !tbaa !5
  %cmp181 = icmp slt i32 %202, 0
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %if.end.179
  %203 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %204 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %203, %struct._Jbig2Image* %204) #4
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.185

if.end.184:                                       ; preds = %if.end.179
  %205 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image, align 8, !tbaa !1
  %206 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %idxprom = zext i32 %206 to i64
  %207 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDNEWSYMS, align 8, !tbaa !1
  %glyphs = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %207, i32 0, i32 1
  %208 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %208, i64 %idxprom
  store %struct._Jbig2Image* %205, %struct._Jbig2Image** %arrayidx, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.185

cleanup.185:                                      ; preds = %if.then.183, %if.then.176, %if.end.184
  %209 = bitcast %struct._Jbig2Image** %image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast i32* %sdat_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast %struct.Jbig2GenericRegionParams* %region_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %211) #1
  %cleanup.dest.188 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.188, label %cleanup.610 [
    i32 0, label %cleanup.cont.189
  ]

cleanup.cont.189:                                 ; preds = %cleanup.185
  br label %if.end.438

if.else.190:                                      ; preds = %if.then.160
  %212 = bitcast i32* %REFAGGNINST to i8*
  call void @llvm.lifetime.start(i64 4, i8* %212) #1
  %213 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF192 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %213, i32 0, i32 0
  %214 = load i32, i32* %SDHUFF192, align 4, !tbaa !22
  %tobool193 = icmp ne i32 %214, 0
  br i1 %tobool193, label %if.then.194, label %if.else.196

if.then.194:                                      ; preds = %if.else.190
  %215 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %216 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFFAGGINST = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %216, i32 0, i32 9
  %217 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFAGGINST, align 8, !tbaa !30
  %call195 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %215, %struct._Jbig2HuffmanTable* %217, i32* %code) #4
  store i32 %call195, i32* %REFAGGNINST, align 4, !tbaa !5
  br label %if.end.198

if.else.196:                                      ; preds = %if.else.190
  %218 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IAAI, align 8, !tbaa !1
  %219 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %call197 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %218, %struct._Jbig2ArithState* %219, i32* %REFAGGNINST) #4
  store i32 %call197, i32* %code, align 4, !tbaa !5
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.196, %if.then.194
  %220 = load i32, i32* %code, align 4, !tbaa !5
  %tobool199 = icmp ne i32 %220, 0
  br i1 %tobool199, label %if.then.203, label %lor.lhs.false.200

lor.lhs.false.200:                                ; preds = %if.end.198
  %221 = load i32, i32* %REFAGGNINST, align 4, !tbaa !5
  %cmp201 = icmp sle i32 %221, 0
  br i1 %cmp201, label %if.then.203, label %if.end.206

if.then.203:                                      ; preds = %lor.lhs.false.200, %if.end.198
  %222 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %223 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number204 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %223, i32 0, i32 0
  %224 = load i32, i32* %number204, align 4, !tbaa !18
  %call205 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %222, i32 3, i32 %224, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i32 0, i32 0)) #4
  store i32 %call205, i32* %code, align 4, !tbaa !5
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.435

if.end.206:                                       ; preds = %lor.lhs.false.200
  %225 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %226 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number207 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %226, i32 0, i32 0
  %227 = load i32, i32* %number207, align 4, !tbaa !18
  %228 = load i32, i32* %REFAGGNINST, align 4, !tbaa !5
  %call208 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %225, i32 0, i32 %227, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i32 0, i32 0), i32 %228) #4
  %229 = load i32, i32* %REFAGGNINST, align 4, !tbaa !5
  %cmp209 = icmp ugt i32 %229, 1
  br i1 %cmp209, label %if.then.211, label %if.else.327

if.then.211:                                      ; preds = %if.end.206
  %230 = bitcast %struct._Jbig2Image** %image213 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %230) #1
  %231 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %231) #1
  %232 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %cmp215 = icmp eq %struct.Jbig2TextRegionParams* %232, null
  br i1 %cmp215, label %if.then.217, label %if.end.301

if.then.217:                                      ; preds = %if.then.211
  %233 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator218 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %233, i32 0, i32 0
  %234 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator218, align 8, !tbaa !7
  %235 = load i32, i32* %n_refagg_dicts, align 4, !tbaa !5
  %conv219 = sext i32 %235 to i64
  %call220 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %234, i64 %conv219, i64 8) #4
  %236 = bitcast i8* %call220 to %struct.Jbig2SymbolDict**
  store %struct.Jbig2SymbolDict** %236, %struct.Jbig2SymbolDict*** %refagg_dicts, align 8, !tbaa !1
  %237 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %refagg_dicts, align 8, !tbaa !1
  %cmp221 = icmp eq %struct.Jbig2SymbolDict** %237, null
  br i1 %cmp221, label %if.then.223, label %if.end.226

if.then.223:                                      ; preds = %if.then.217
  %238 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %239 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number224 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %239, i32 0, i32 0
  %240 = load i32, i32* %number224, align 4, !tbaa !18
  %call225 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %238, i32 3, i32 %240, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i32 0, i32 0)) #4
  store i32 %call225, i32* %code, align 4, !tbaa !5
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.323

if.end.226:                                       ; preds = %if.then.217
  %241 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %242 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMINSYMS227 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %242, i32 0, i32 2
  %243 = load i32, i32* %SDNUMINSYMS227, align 4, !tbaa !34
  %244 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMNEWSYMS228 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %244, i32 0, i32 4
  %245 = load i32, i32* %SDNUMNEWSYMS228, align 4, !tbaa !32
  %add229 = add i32 %243, %245
  %call230 = call %struct.Jbig2SymbolDict* @jbig2_sd_new(%struct._Jbig2Ctx* %241, i32 %add229) #4
  %246 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %refagg_dicts, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %246, i64 0
  store %struct.Jbig2SymbolDict* %call230, %struct.Jbig2SymbolDict** %arrayidx231, align 8, !tbaa !1
  %247 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %refagg_dicts, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %247, i64 0
  %248 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %arrayidx232, align 8, !tbaa !1
  %cmp233 = icmp eq %struct.Jbig2SymbolDict* %248, null
  br i1 %cmp233, label %if.then.235, label %if.end.239

if.then.235:                                      ; preds = %if.end.226
  %249 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %250 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number236 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %250, i32 0, i32 0
  %251 = load i32, i32* %number236, align 4, !tbaa !18
  %call237 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %249, i32 3, i32 %251, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i32 0, i32 0)) #4
  store i32 %call237, i32* %code, align 4, !tbaa !5
  %252 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator238 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %252, i32 0, i32 0
  %253 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator238, align 8, !tbaa !7
  %254 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %refagg_dicts, align 8, !tbaa !1
  %255 = bitcast %struct.Jbig2SymbolDict** %254 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %253, i8* %255) #4
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.323

if.end.239:                                       ; preds = %if.end.226
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.240

for.cond.240:                                     ; preds = %for.inc.253, %if.end.239
  %256 = load i32, i32* %i, align 4, !tbaa !5
  %257 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMINSYMS241 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %257, i32 0, i32 2
  %258 = load i32, i32* %SDNUMINSYMS241, align 4, !tbaa !34
  %cmp242 = icmp ult i32 %256, %258
  br i1 %cmp242, label %for.body.244, label %for.end.255

for.body.244:                                     ; preds = %for.cond.240
  %259 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %260 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom245 = sext i32 %260 to i64
  %261 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDINSYMS = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %261, i32 0, i32 3
  %262 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDINSYMS, align 8, !tbaa !33
  %glyphs246 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %262, i32 0, i32 1
  %263 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs246, align 8, !tbaa !10
  %arrayidx247 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %263, i64 %idxprom245
  %264 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx247, align 8, !tbaa !1
  %call248 = call %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx* %259, %struct._Jbig2Image* %264) #4
  %265 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom249 = sext i32 %265 to i64
  %266 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %refagg_dicts, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %266, i64 0
  %267 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %arrayidx250, align 8, !tbaa !1
  %glyphs251 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %267, i32 0, i32 1
  %268 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs251, align 8, !tbaa !10
  %arrayidx252 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %268, i64 %idxprom249
  store %struct._Jbig2Image* %call248, %struct._Jbig2Image** %arrayidx252, align 8, !tbaa !1
  br label %for.inc.253

for.inc.253:                                      ; preds = %for.body.244
  %269 = load i32, i32* %i, align 4, !tbaa !5
  %inc254 = add nsw i32 %269, 1
  store i32 %inc254, i32* %i, align 4, !tbaa !5
  br label %for.cond.240

for.end.255:                                      ; preds = %for.cond.240
  %270 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator256 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %270, i32 0, i32 0
  %271 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator256, align 8, !tbaa !7
  %call257 = call i8* @jbig2_alloc(%struct._Jbig2Allocator* %271, i64 1, i64 192) #4
  %272 = bitcast i8* %call257 to %struct.Jbig2TextRegionParams*
  store %struct.Jbig2TextRegionParams* %272, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %273 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %cmp258 = icmp eq %struct.Jbig2TextRegionParams* %273, null
  br i1 %cmp258, label %if.then.260, label %if.end.263

if.then.260:                                      ; preds = %for.end.255
  %274 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %275 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number261 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %275, i32 0, i32 0
  %276 = load i32, i32* %number261, align 4, !tbaa !18
  %call262 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %274, i32 3, i32 %276, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i32 0, i32 0)) #4
  store i32 %call262, i32* %code, align 4, !tbaa !5
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.323

if.end.263:                                       ; preds = %for.end.255
  %277 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF264 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %277, i32 0, i32 0
  %278 = load i32, i32* %SDHUFF264, align 4, !tbaa !22
  %tobool265 = icmp ne i32 %278, 0
  br i1 %tobool265, label %if.else.291, label %if.then.266

if.then.266:                                      ; preds = %if.end.263
  %279 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call267 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %279) #4
  %280 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IADT = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %280, i32 0, i32 18
  store %struct._Jbig2ArithIntCtx* %call267, %struct._Jbig2ArithIntCtx** %IADT, align 8, !tbaa !41
  %281 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call268 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %281) #4
  %282 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IAFS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %282, i32 0, i32 19
  store %struct._Jbig2ArithIntCtx* %call268, %struct._Jbig2ArithIntCtx** %IAFS, align 8, !tbaa !43
  %283 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call269 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %283) #4
  %284 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IADS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %284, i32 0, i32 20
  store %struct._Jbig2ArithIntCtx* %call269, %struct._Jbig2ArithIntCtx** %IADS, align 8, !tbaa !44
  %285 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call270 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %285) #4
  %286 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IAIT = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %286, i32 0, i32 21
  store %struct._Jbig2ArithIntCtx* %call270, %struct._Jbig2ArithIntCtx** %IAIT, align 8, !tbaa !45
  store i32 0, i32* %SBSYMCODELEN, align 4, !tbaa !5
  br label %for.cond.271

for.cond.271:                                     ; preds = %for.inc.279, %if.then.266
  %287 = load i32, i32* %SBSYMCODELEN, align 4, !tbaa !5
  %shl272 = shl i32 1, %287
  %288 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMINSYMS273 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %288, i32 0, i32 2
  %289 = load i32, i32* %SDNUMINSYMS273, align 4, !tbaa !34
  %290 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMNEWSYMS274 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %290, i32 0, i32 4
  %291 = load i32, i32* %SDNUMNEWSYMS274, align 4, !tbaa !32
  %add275 = add i32 %289, %291
  %cmp276 = icmp slt i32 %shl272, %add275
  br i1 %cmp276, label %for.body.278, label %for.end.281

for.body.278:                                     ; preds = %for.cond.271
  br label %for.inc.279

for.inc.279:                                      ; preds = %for.body.278
  %292 = load i32, i32* %SBSYMCODELEN, align 4, !tbaa !5
  %inc280 = add nsw i32 %292, 1
  store i32 %inc280, i32* %SBSYMCODELEN, align 4, !tbaa !5
  br label %for.cond.271

for.end.281:                                      ; preds = %for.cond.271
  %293 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %294 = load i32, i32* %SBSYMCODELEN, align 4, !tbaa !5
  %call282 = call %struct._Jbig2ArithIaidCtx* @jbig2_arith_iaid_ctx_new(%struct._Jbig2Ctx* %293, i32 %294) #4
  %295 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IAID283 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %295, i32 0, i32 22
  store %struct._Jbig2ArithIaidCtx* %call282, %struct._Jbig2ArithIaidCtx** %IAID283, align 8, !tbaa !46
  %296 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call284 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %296) #4
  %297 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IARI = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %297, i32 0, i32 23
  store %struct._Jbig2ArithIntCtx* %call284, %struct._Jbig2ArithIntCtx** %IARI, align 8, !tbaa !47
  %298 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call285 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %298) #4
  %299 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IARDW = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %299, i32 0, i32 24
  store %struct._Jbig2ArithIntCtx* %call285, %struct._Jbig2ArithIntCtx** %IARDW, align 8, !tbaa !48
  %300 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call286 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %300) #4
  %301 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IARDH = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %301, i32 0, i32 25
  store %struct._Jbig2ArithIntCtx* %call286, %struct._Jbig2ArithIntCtx** %IARDH, align 8, !tbaa !49
  %302 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call287 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %302) #4
  %303 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IARDX288 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %303, i32 0, i32 26
  store %struct._Jbig2ArithIntCtx* %call287, %struct._Jbig2ArithIntCtx** %IARDX288, align 8, !tbaa !50
  %304 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call289 = call %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx* %304) #4
  %305 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IARDY290 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %305, i32 0, i32 27
  store %struct._Jbig2ArithIntCtx* %call289, %struct._Jbig2ArithIntCtx** %IARDY290, align 8, !tbaa !51
  br label %if.end.299

if.else.291:                                      ; preds = %if.end.263
  %306 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call292 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %306, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_F) #4
  %307 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFFFS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %307, i32 0, i32 10
  store %struct._Jbig2HuffmanTable* %call292, %struct._Jbig2HuffmanTable** %SBHUFFFS, align 8, !tbaa !52
  %308 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call293 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %308, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_H) #4
  %309 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFFDS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %309, i32 0, i32 11
  store %struct._Jbig2HuffmanTable* %call293, %struct._Jbig2HuffmanTable** %SBHUFFDS, align 8, !tbaa !53
  %310 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call294 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %310, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_K) #4
  %311 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFFDT = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %311, i32 0, i32 12
  store %struct._Jbig2HuffmanTable* %call294, %struct._Jbig2HuffmanTable** %SBHUFFDT, align 8, !tbaa !54
  %312 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call295 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %312, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_O) #4
  %313 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFFRDW = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %313, i32 0, i32 13
  store %struct._Jbig2HuffmanTable* %call295, %struct._Jbig2HuffmanTable** %SBHUFFRDW, align 8, !tbaa !55
  %314 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call296 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %314, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_O) #4
  %315 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFFRDH = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %315, i32 0, i32 14
  store %struct._Jbig2HuffmanTable* %call296, %struct._Jbig2HuffmanTable** %SBHUFFRDH, align 8, !tbaa !56
  %316 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call297 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %316, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_O) #4
  %317 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFFRDX = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %317, i32 0, i32 15
  store %struct._Jbig2HuffmanTable* %call297, %struct._Jbig2HuffmanTable** %SBHUFFRDX, align 8, !tbaa !57
  %318 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %call298 = call %struct._Jbig2HuffmanTable* @jbig2_build_huffman_table(%struct._Jbig2Ctx* %318, %struct._Jbig2HuffmanParams* @jbig2_huffman_params_O) #4
  %319 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFFRDY = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %319, i32 0, i32 16
  store %struct._Jbig2HuffmanTable* %call298, %struct._Jbig2HuffmanTable** %SBHUFFRDY, align 8, !tbaa !58
  br label %if.end.299

if.end.299:                                       ; preds = %if.else.291, %for.end.281
  %320 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF300 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %320, i32 0, i32 0
  %321 = load i32, i32* %SDHUFF300, align 4, !tbaa !22
  %322 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFF = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %322, i32 0, i32 0
  store i32 %321, i32* %SBHUFF, align 4, !tbaa !59
  %323 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBREFINE = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %323, i32 0, i32 1
  store i32 1, i32* %SBREFINE, align 4, !tbaa !60
  %324 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBSTRIPS = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %324, i32 0, i32 9
  store i32 1, i32* %SBSTRIPS, align 4, !tbaa !61
  %325 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBDEFPIXEL = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %325, i32 0, i32 2
  store i32 0, i32* %SBDEFPIXEL, align 4, !tbaa !62
  %326 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBCOMBOP = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %326, i32 0, i32 3
  store i32 0, i32* %SBCOMBOP, align 4, !tbaa !63
  %327 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %TRANSPOSED = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %327, i32 0, i32 4
  store i32 0, i32* %TRANSPOSED, align 4, !tbaa !64
  %328 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %REFCORNER = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %328, i32 0, i32 5
  store i32 1, i32* %REFCORNER, align 4, !tbaa !65
  %329 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBDSOFFSET = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %329, i32 0, i32 6
  store i32 0, i32* %SBDSOFFSET, align 4, !tbaa !66
  %330 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDRTEMPLATE = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %330, i32 0, i32 12
  %331 = load i32, i32* %SDRTEMPLATE, align 4, !tbaa !26
  %332 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBRTEMPLATE = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %332, i32 0, i32 28
  store i32 %331, i32* %SBRTEMPLATE, align 4, !tbaa !67
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.299, %if.then.211
  %333 = load i32, i32* %REFAGGNINST, align 4, !tbaa !5
  %334 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBNUMINSTANCES = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %334, i32 0, i32 7
  store i32 %333, i32* %SBNUMINSTANCES, align 4, !tbaa !68
  %335 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %336 = load i32, i32* %SYMWIDTH, align 4, !tbaa !5
  %337 = load i32, i32* %HCHEIGHT, align 4, !tbaa !5
  %call302 = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %335, i32 %336, i32 %337) #4
  store %struct._Jbig2Image* %call302, %struct._Jbig2Image** %image213, align 8, !tbaa !1
  %338 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image213, align 8, !tbaa !1
  %cmp303 = icmp eq %struct._Jbig2Image* %338, null
  br i1 %cmp303, label %if.then.305, label %if.end.308

if.then.305:                                      ; preds = %if.end.301
  %339 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %340 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number306 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %340, i32 0, i32 0
  %341 = load i32, i32* %number306, align 4, !tbaa !18
  %call307 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %339, i32 3, i32 %341, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0)) #4
  store i32 %call307, i32* %code, align 4, !tbaa !5
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.323

if.end.308:                                       ; preds = %if.end.301
  %342 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %343 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %344 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %345 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %refagg_dicts, align 8, !tbaa !1
  %346 = load i32, i32* %n_refagg_dicts, align 4, !tbaa !5
  %347 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image213, align 8, !tbaa !1
  %348 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %349 = load i64, i64* %size.addr, align 8, !tbaa !35
  %350 = load i8*, i8** %GR_stats.addr, align 8, !tbaa !1
  %351 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %352 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  %call309 = call i32 @jbig2_decode_text_region(%struct._Jbig2Ctx* %342, %struct._Jbig2Segment* %343, %struct.Jbig2TextRegionParams* %344, %struct.Jbig2SymbolDict** %345, i32 %346, %struct._Jbig2Image* %347, i8* %348, i64 %349, i8* %350, %struct._Jbig2ArithState* %351, %struct._Jbig2WordStream* %352) #4
  %353 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image213, align 8, !tbaa !1
  %354 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %idxprom310 = zext i32 %354 to i64
  %355 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDNEWSYMS, align 8, !tbaa !1
  %glyphs311 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %355, i32 0, i32 1
  %356 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs311, align 8, !tbaa !10
  %arrayidx312 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %356, i64 %idxprom310
  store %struct._Jbig2Image* %353, %struct._Jbig2Image** %arrayidx312, align 8, !tbaa !1
  %357 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %358 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %idxprom313 = zext i32 %358 to i64
  %359 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDNEWSYMS, align 8, !tbaa !1
  %glyphs314 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %359, i32 0, i32 1
  %360 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs314, align 8, !tbaa !10
  %arrayidx315 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %360, i64 %idxprom313
  %361 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx315, align 8, !tbaa !1
  %call316 = call %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx* %357, %struct._Jbig2Image* %361) #4
  %362 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMINSYMS317 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %362, i32 0, i32 2
  %363 = load i32, i32* %SDNUMINSYMS317, align 4, !tbaa !34
  %364 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %add318 = add i32 %363, %364
  %idxprom319 = zext i32 %add318 to i64
  %365 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %refagg_dicts, align 8, !tbaa !1
  %arrayidx320 = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %365, i64 0
  %366 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %arrayidx320, align 8, !tbaa !1
  %glyphs321 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %366, i32 0, i32 1
  %367 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs321, align 8, !tbaa !10
  %arrayidx322 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %367, i64 %idxprom319
  store %struct._Jbig2Image* %call316, %struct._Jbig2Image** %arrayidx322, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.323

cleanup.323:                                      ; preds = %if.then.305, %if.then.260, %if.then.235, %if.then.223, %if.end.308
  %368 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %368) #1
  %369 = bitcast %struct._Jbig2Image** %image213 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %369) #1
  %cleanup.dest.325 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.325, label %cleanup.435 [
    i32 0, label %cleanup.cont.326
  ]

cleanup.cont.326:                                 ; preds = %cleanup.323
  br label %if.end.434

if.else.327:                                      ; preds = %if.end.206
  %370 = bitcast %struct.Jbig2RefinementRegionParams* %rparams to i8*
  call void @llvm.lifetime.start(i64 32, i8* %370) #1
  %371 = bitcast %struct._Jbig2Image** %image330 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %371) #1
  %372 = bitcast i32* %ID to i8*
  call void @llvm.lifetime.start(i64 4, i8* %372) #1
  %373 = bitcast i32* %RDX to i8*
  call void @llvm.lifetime.start(i64 4, i8* %373) #1
  %374 = bitcast i32* %RDY to i8*
  call void @llvm.lifetime.start(i64 4, i8* %374) #1
  %375 = bitcast i32* %BMSIZE to i8*
  call void @llvm.lifetime.start(i64 4, i8* %375) #1
  store i32 0, i32* %BMSIZE, align 4, !tbaa !5
  %376 = bitcast i32* %ninsyms to i8*
  call void @llvm.lifetime.start(i64 4, i8* %376) #1
  %377 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMINSYMS336 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %377, i32 0, i32 2
  %378 = load i32, i32* %SDNUMINSYMS336, align 4, !tbaa !34
  store i32 %378, i32* %ninsyms, align 4, !tbaa !5
  %379 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %379) #1
  store i32 0, i32* %code1, align 4, !tbaa !5
  %380 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %380) #1
  store i32 0, i32* %code2, align 4, !tbaa !5
  %381 = bitcast i32* %code3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %381) #1
  store i32 0, i32* %code3, align 4, !tbaa !5
  %382 = bitcast i32* %code4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %382) #1
  store i32 0, i32* %code4, align 4, !tbaa !5
  %383 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF341 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %383, i32 0, i32 0
  %384 = load i32, i32* %SDHUFF341, align 4, !tbaa !22
  %tobool342 = icmp ne i32 %384, 0
  br i1 %tobool342, label %if.then.343, label %if.else.348

if.then.343:                                      ; preds = %if.else.327
  %385 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %386 = load i32, i32* %SBSYMCODELEN, align 4, !tbaa !5
  %call344 = call i32 @jbig2_huffman_get_bits(%struct._Jbig2HuffmanState* %385, i32 %386, i32* %code4) #4
  store i32 %call344, i32* %ID, align 4, !tbaa !5
  %387 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %388 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFRDX, align 8, !tbaa !1
  %call345 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %387, %struct._Jbig2HuffmanTable* %388, i32* %code1) #4
  store i32 %call345, i32* %RDX, align 4, !tbaa !5
  %389 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %390 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFRDX, align 8, !tbaa !1
  %call346 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %389, %struct._Jbig2HuffmanTable* %390, i32* %code2) #4
  store i32 %call346, i32* %RDY, align 4, !tbaa !5
  %391 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %392 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRSIZE, align 8, !tbaa !1
  %call347 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %391, %struct._Jbig2HuffmanTable* %392, i32* %code3) #4
  store i32 %call347, i32* %BMSIZE, align 4, !tbaa !5
  %393 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  call void @jbig2_huffman_skip(%struct._Jbig2HuffmanState* %393) #4
  br label %if.end.352

if.else.348:                                      ; preds = %if.else.327
  %394 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %IAID, align 8, !tbaa !1
  %395 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %call349 = call i32 @jbig2_arith_iaid_decode(%struct._Jbig2ArithIaidCtx* %394, %struct._Jbig2ArithState* %395, i32* %ID) #4
  store i32 %call349, i32* %code1, align 4, !tbaa !5
  %396 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDX, align 8, !tbaa !1
  %397 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %call350 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %396, %struct._Jbig2ArithState* %397, i32* %RDX) #4
  store i32 %call350, i32* %code2, align 4, !tbaa !5
  %398 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDY, align 8, !tbaa !1
  %399 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %call351 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %398, %struct._Jbig2ArithState* %399, i32* %RDY) #4
  store i32 %call351, i32* %code3, align 4, !tbaa !5
  br label %if.end.352

if.end.352:                                       ; preds = %if.else.348, %if.then.343
  %400 = load i32, i32* %code1, align 4, !tbaa !5
  %cmp353 = icmp slt i32 %400, 0
  br i1 %cmp353, label %if.then.364, label %lor.lhs.false.355

lor.lhs.false.355:                                ; preds = %if.end.352
  %401 = load i32, i32* %code2, align 4, !tbaa !5
  %cmp356 = icmp slt i32 %401, 0
  br i1 %cmp356, label %if.then.364, label %lor.lhs.false.358

lor.lhs.false.358:                                ; preds = %lor.lhs.false.355
  %402 = load i32, i32* %code3, align 4, !tbaa !5
  %cmp359 = icmp slt i32 %402, 0
  br i1 %cmp359, label %if.then.364, label %lor.lhs.false.361

lor.lhs.false.361:                                ; preds = %lor.lhs.false.358
  %403 = load i32, i32* %code4, align 4, !tbaa !5
  %cmp362 = icmp slt i32 %403, 0
  br i1 %cmp362, label %if.then.364, label %if.end.367

if.then.364:                                      ; preds = %lor.lhs.false.361, %lor.lhs.false.358, %lor.lhs.false.355, %if.end.352
  %404 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %405 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number365 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %405, i32 0, i32 0
  %406 = load i32, i32* %number365, align 4, !tbaa !18
  %call366 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %404, i32 3, i32 %406, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0)) #4
  store i32 %call366, i32* %code, align 4, !tbaa !5
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.421

if.end.367:                                       ; preds = %lor.lhs.false.361
  %407 = load i32, i32* %ID, align 4, !tbaa !5
  %408 = load i32, i32* %ninsyms, align 4, !tbaa !5
  %409 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %add368 = add i32 %408, %409
  %cmp369 = icmp uge i32 %407, %add368
  br i1 %cmp369, label %if.then.371, label %if.end.374

if.then.371:                                      ; preds = %if.end.367
  %410 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %411 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number372 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %411, i32 0, i32 0
  %412 = load i32, i32* %number372, align 4, !tbaa !18
  %413 = load i32, i32* %ID, align 4, !tbaa !5
  %call373 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %410, i32 3, i32 %412, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i32 0, i32 0), i32 %413) #4
  store i32 %call373, i32* %code, align 4, !tbaa !5
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.421

if.end.374:                                       ; preds = %if.end.367
  %414 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %415 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number375 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %415, i32 0, i32 0
  %416 = load i32, i32* %number375, align 4, !tbaa !18
  %417 = load i32, i32* %ID, align 4, !tbaa !5
  %418 = load i32, i32* %RDX, align 4, !tbaa !5
  %419 = load i32, i32* %RDY, align 4, !tbaa !5
  %call376 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %414, i32 0, i32 %416, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.48, i32 0, i32 0), i32 %417, i32 %418, i32 %419) #4
  %420 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %421 = load i32, i32* %SYMWIDTH, align 4, !tbaa !5
  %422 = load i32, i32* %HCHEIGHT, align 4, !tbaa !5
  %call377 = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %420, i32 %421, i32 %422) #4
  store %struct._Jbig2Image* %call377, %struct._Jbig2Image** %image330, align 8, !tbaa !1
  %423 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image330, align 8, !tbaa !1
  %cmp378 = icmp eq %struct._Jbig2Image* %423, null
  br i1 %cmp378, label %if.then.380, label %if.end.383

if.then.380:                                      ; preds = %if.end.374
  %424 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %425 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number381 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %425, i32 0, i32 0
  %426 = load i32, i32* %number381, align 4, !tbaa !18
  %call382 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %424, i32 3, i32 %426, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0)) #4
  store i32 %call382, i32* %code, align 4, !tbaa !5
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.421

if.end.383:                                       ; preds = %if.end.374
  %427 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDRTEMPLATE384 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %427, i32 0, i32 12
  %428 = load i32, i32* %SDRTEMPLATE384, align 4, !tbaa !26
  %GRTEMPLATE = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %rparams, i32 0, i32 0
  store i32 %428, i32* %GRTEMPLATE, align 4, !tbaa !69
  %429 = load i32, i32* %ID, align 4, !tbaa !5
  %430 = load i32, i32* %ninsyms, align 4, !tbaa !5
  %cmp385 = icmp ult i32 %429, %430
  br i1 %cmp385, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.383
  %431 = load i32, i32* %ID, align 4, !tbaa !5
  %idxprom387 = zext i32 %431 to i64
  %432 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDINSYMS388 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %432, i32 0, i32 3
  %433 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDINSYMS388, align 8, !tbaa !33
  %glyphs389 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %433, i32 0, i32 1
  %434 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs389, align 8, !tbaa !10
  %arrayidx390 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %434, i64 %idxprom387
  %435 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx390, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.end.383
  %436 = load i32, i32* %ID, align 4, !tbaa !5
  %437 = load i32, i32* %ninsyms, align 4, !tbaa !5
  %sub = sub i32 %436, %437
  %idxprom391 = zext i32 %sub to i64
  %438 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDNEWSYMS, align 8, !tbaa !1
  %glyphs392 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %438, i32 0, i32 1
  %439 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs392, align 8, !tbaa !10
  %arrayidx393 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %439, i64 %idxprom391
  %440 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx393, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond394 = phi %struct._Jbig2Image* [ %435, %cond.true ], [ %440, %cond.false ]
  %reference = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %rparams, i32 0, i32 1
  store %struct._Jbig2Image* %cond394, %struct._Jbig2Image** %reference, align 8, !tbaa !71
  %reference395 = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %rparams, i32 0, i32 1
  %441 = load %struct._Jbig2Image*, %struct._Jbig2Image** %reference395, align 8, !tbaa !71
  %cmp396 = icmp eq %struct._Jbig2Image* %441, null
  br i1 %cmp396, label %if.then.398, label %if.end.401

if.then.398:                                      ; preds = %cond.end
  %442 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %443 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number399 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %443, i32 0, i32 0
  %444 = load i32, i32* %number399, align 4, !tbaa !18
  %445 = load i32, i32* %ID, align 4, !tbaa !5
  %446 = load i32, i32* %ninsyms, align 4, !tbaa !5
  %call400 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %442, i32 3, i32 %444, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i32 0, i32 0), i32 %445, i32 %446) #4
  store i32 %call400, i32* %code, align 4, !tbaa !5
  %447 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %448 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image330, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %447, %struct._Jbig2Image* %448) #4
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.421

if.end.401:                                       ; preds = %cond.end
  %449 = load i32, i32* %RDX, align 4, !tbaa !5
  %DX = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %rparams, i32 0, i32 2
  store i32 %449, i32* %DX, align 4, !tbaa !72
  %450 = load i32, i32* %RDY, align 4, !tbaa !5
  %DY = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %rparams, i32 0, i32 3
  store i32 %450, i32* %DY, align 4, !tbaa !73
  %TPGRON = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %rparams, i32 0, i32 4
  store i32 0, i32* %TPGRON, align 4, !tbaa !74
  %grat = getelementptr inbounds %struct.Jbig2RefinementRegionParams, %struct.Jbig2RefinementRegionParams* %rparams, i32 0, i32 5
  %arraydecay402 = getelementptr inbounds [4 x i8], [4 x i8]* %grat, i32 0, i32 0
  %451 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %sdrat = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %451, i32 0, i32 13
  %arraydecay403 = getelementptr inbounds [4 x i8], [4 x i8]* %sdrat, i32 0, i32 0
  %call404 = call i8* @memcpy(i8* %arraydecay402, i8* %arraydecay403, i64 4) #5
  %452 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %453 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %454 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %455 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image330, align 8, !tbaa !1
  %456 = load i8*, i8** %GR_stats.addr, align 8, !tbaa !1
  %call405 = call i32 @jbig2_decode_refinement_region(%struct._Jbig2Ctx* %452, %struct._Jbig2Segment* %453, %struct.Jbig2RefinementRegionParams* %rparams, %struct._Jbig2ArithState* %454, %struct._Jbig2Image* %455, i8* %456) #4
  store i32 %call405, i32* %code, align 4, !tbaa !5
  %457 = load i32, i32* %code, align 4, !tbaa !5
  %cmp406 = icmp slt i32 %457, 0
  br i1 %cmp406, label %if.then.408, label %if.end.409

if.then.408:                                      ; preds = %if.end.401
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.421

if.end.409:                                       ; preds = %if.end.401
  %458 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image330, align 8, !tbaa !1
  %459 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %idxprom410 = zext i32 %459 to i64
  %460 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDNEWSYMS, align 8, !tbaa !1
  %glyphs411 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %460, i32 0, i32 1
  %461 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs411, align 8, !tbaa !10
  %arrayidx412 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %461, i64 %idxprom410
  store %struct._Jbig2Image* %458, %struct._Jbig2Image** %arrayidx412, align 8, !tbaa !1
  %462 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF413 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %462, i32 0, i32 0
  %463 = load i32, i32* %SDHUFF413, align 4, !tbaa !22
  %tobool414 = icmp ne i32 %463, 0
  br i1 %tobool414, label %if.then.415, label %if.end.420

if.then.415:                                      ; preds = %if.end.409
  %464 = load i32, i32* %BMSIZE, align 4, !tbaa !5
  %cmp416 = icmp eq i32 %464, 0
  br i1 %cmp416, label %if.then.418, label %if.end.419

if.then.418:                                      ; preds = %if.then.415
  %465 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image330, align 8, !tbaa !1
  %height = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %465, i32 0, i32 1
  %466 = load i32, i32* %height, align 4, !tbaa !75
  %467 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image330, align 8, !tbaa !1
  %stride = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %467, i32 0, i32 2
  %468 = load i32, i32* %stride, align 4, !tbaa !77
  %mul = mul nsw i32 %466, %468
  store i32 %mul, i32* %BMSIZE, align 4, !tbaa !5
  br label %if.end.419

if.end.419:                                       ; preds = %if.then.418, %if.then.415
  %469 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %470 = load i32, i32* %BMSIZE, align 4, !tbaa !5
  call void @jbig2_huffman_advance(%struct._Jbig2HuffmanState* %469, i32 %470) #4
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419, %if.end.409
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.421

cleanup.421:                                      ; preds = %if.then.408, %if.then.398, %if.then.380, %if.then.371, %if.then.364, %if.end.420
  %471 = bitcast i32* %code4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %471) #1
  %472 = bitcast i32* %code3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %472) #1
  %473 = bitcast i32* %code2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %473) #1
  %474 = bitcast i32* %code1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %474) #1
  %475 = bitcast i32* %ninsyms to i8*
  call void @llvm.lifetime.end(i64 4, i8* %475) #1
  %476 = bitcast i32* %BMSIZE to i8*
  call void @llvm.lifetime.end(i64 4, i8* %476) #1
  %477 = bitcast i32* %RDY to i8*
  call void @llvm.lifetime.end(i64 4, i8* %477) #1
  %478 = bitcast i32* %RDX to i8*
  call void @llvm.lifetime.end(i64 4, i8* %478) #1
  %479 = bitcast i32* %ID to i8*
  call void @llvm.lifetime.end(i64 4, i8* %479) #1
  %480 = bitcast %struct._Jbig2Image** %image330 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %480) #1
  %481 = bitcast %struct.Jbig2RefinementRegionParams* %rparams to i8*
  call void @llvm.lifetime.end(i64 32, i8* %481) #1
  %cleanup.dest.432 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.432, label %cleanup.435 [
    i32 0, label %cleanup.cont.433
  ]

cleanup.cont.433:                                 ; preds = %cleanup.421
  br label %if.end.434

if.end.434:                                       ; preds = %cleanup.cont.433, %cleanup.cont.326
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.435

cleanup.435:                                      ; preds = %if.then.203, %if.end.434, %cleanup.421, %cleanup.323
  %482 = bitcast i32* %REFAGGNINST to i8*
  call void @llvm.lifetime.end(i64 4, i8* %482) #1
  %cleanup.dest.436 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.436, label %cleanup.610 [
    i32 0, label %cleanup.cont.437
  ]

cleanup.cont.437:                                 ; preds = %cleanup.435
  br label %if.end.438

if.end.438:                                       ; preds = %cleanup.cont.437, %cleanup.cont.189
  br label %if.end.439

if.end.439:                                       ; preds = %if.end.438, %lor.lhs.false.157
  %483 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF440 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %483, i32 0, i32 0
  %484 = load i32, i32* %SDHUFF440, align 4, !tbaa !22
  %tobool441 = icmp ne i32 %484, 0
  br i1 %tobool441, label %land.lhs.true.442, label %if.end.448

land.lhs.true.442:                                ; preds = %if.end.439
  %485 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDREFAGG443 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %485, i32 0, i32 1
  %486 = load i32, i32* %SDREFAGG443, align 4, !tbaa !24
  %tobool444 = icmp ne i32 %486, 0
  br i1 %tobool444, label %if.end.448, label %if.then.445

if.then.445:                                      ; preds = %land.lhs.true.442
  %487 = load i32, i32* %SYMWIDTH, align 4, !tbaa !5
  %488 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %idxprom446 = zext i32 %488 to i64
  %489 = load i32*, i32** %SDNEWSYMWIDTHS, align 8, !tbaa !1
  %arrayidx447 = getelementptr inbounds i32, i32* %489, i64 %idxprom446
  store i32 %487, i32* %arrayidx447, align 4, !tbaa !5
  br label %if.end.448

if.end.448:                                       ; preds = %if.then.445, %land.lhs.true.442, %if.end.439
  %490 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %add449 = add i32 %490, 1
  store i32 %add449, i32* %NSYMSDECODED, align 4, !tbaa !5
  %491 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %492 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number450 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %492, i32 0, i32 0
  %493 = load i32, i32* %number450, align 4, !tbaa !18
  %494 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %495 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMNEWSYMS451 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %495, i32 0, i32 4
  %496 = load i32, i32* %SDNUMNEWSYMS451, align 4, !tbaa !32
  %497 = load i32, i32* %SYMWIDTH, align 4, !tbaa !5
  %498 = load i32, i32* %HCHEIGHT, align 4, !tbaa !5
  %call452 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %491, i32 0, i32 %493, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.50, i32 0, i32 0), i32 %494, i32 %496, i32 %497, i32 %498) #4
  br label %for.cond.121

for.end.453:                                      ; preds = %if.then.135
  %499 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF454 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %499, i32 0, i32 0
  %500 = load i32, i32* %SDHUFF454, align 4, !tbaa !22
  %tobool455 = icmp ne i32 %500, 0
  br i1 %tobool455, label %land.lhs.true.456, label %if.end.609

land.lhs.true.456:                                ; preds = %for.end.453
  %501 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDREFAGG457 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %501, i32 0, i32 1
  %502 = load i32, i32* %SDREFAGG457, align 4, !tbaa !24
  %tobool458 = icmp ne i32 %502, 0
  br i1 %tobool458, label %if.end.609, label %if.then.459

if.then.459:                                      ; preds = %land.lhs.true.456
  %503 = bitcast %struct._Jbig2Image** %image461 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %503) #1
  %504 = bitcast i32* %BMSIZE463 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %504) #1
  %505 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %506 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFFBMSIZE = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %506, i32 0, i32 8
  %507 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFBMSIZE, align 8, !tbaa !29
  %call464 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %505, %struct._Jbig2HuffmanTable* %507, i32* %code) #4
  store i32 %call464, i32* %BMSIZE463, align 4, !tbaa !5
  %508 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %508) #1
  %509 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %509) #1
  %510 = load i32, i32* %code, align 4, !tbaa !5
  %tobool467 = icmp ne i32 %510, 0
  br i1 %tobool467, label %if.then.471, label %lor.lhs.false.468

lor.lhs.false.468:                                ; preds = %if.then.459
  %511 = load i32, i32* %BMSIZE463, align 4, !tbaa !5
  %cmp469 = icmp slt i32 %511, 0
  br i1 %cmp469, label %if.then.471, label %if.end.474

if.then.471:                                      ; preds = %lor.lhs.false.468, %if.then.459
  %512 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %513 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number472 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %513, i32 0, i32 0
  %514 = load i32, i32* %number472, align 4, !tbaa !18
  %call473 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %512, i32 3, i32 %514, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i32 0, i32 0)) #4
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.603

if.end.474:                                       ; preds = %lor.lhs.false.468
  %515 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  call void @jbig2_huffman_skip(%struct._Jbig2HuffmanState* %515) #4
  %516 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %517 = load i32, i32* %TOTWIDTH, align 4, !tbaa !5
  %518 = load i32, i32* %HCHEIGHT, align 4, !tbaa !5
  %call475 = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %516, i32 %517, i32 %518) #4
  store %struct._Jbig2Image* %call475, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %519 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %cmp476 = icmp eq %struct._Jbig2Image* %519, null
  br i1 %cmp476, label %if.then.478, label %if.end.481

if.then.478:                                      ; preds = %if.end.474
  %520 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %521 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number479 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %521, i32 0, i32 0
  %522 = load i32, i32* %number479, align 4, !tbaa !18
  %call480 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %520, i32 3, i32 %522, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.52, i32 0, i32 0)) #4
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.603

if.end.481:                                       ; preds = %if.end.474
  %523 = load i32, i32* %BMSIZE463, align 4, !tbaa !5
  %cmp482 = icmp eq i32 %523, 0
  br i1 %cmp482, label %if.then.484, label %if.else.539

if.then.484:                                      ; preds = %if.end.481
  %524 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %524) #1
  %525 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %526 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %call486 = call i32 @jbig2_huffman_offset(%struct._Jbig2HuffmanState* %526) #4
  %idx.ext = sext i32 %call486 to i64
  %add.ptr = getelementptr inbounds i8, i8* %525, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8, !tbaa !1
  %527 = bitcast i32* %stride488 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %527) #1
  %528 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %width = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %528, i32 0, i32 0
  %529 = load i32, i32* %width, align 4, !tbaa !78
  %shr = ashr i32 %529, 3
  %530 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %width489 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %530, i32 0, i32 0
  %531 = load i32, i32* %width489, align 4, !tbaa !78
  %and = and i32 %531, 7
  %tobool490 = icmp ne i32 %and, 0
  %cond491 = select i1 %tobool490, i32 1, i32 0
  %add492 = add nsw i32 %shr, %cond491
  store i32 %add492, i32* %stride488, align 4, !tbaa !5
  %532 = bitcast i8** %dst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %532) #1
  %533 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %data494 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %533, i32 0, i32 3
  %534 = load i8*, i8** %data494, align 8, !tbaa !79
  store i8* %534, i8** %dst, align 8, !tbaa !1
  %535 = load i64, i64* %size.addr, align 8, !tbaa !35
  %536 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %call495 = call i32 @jbig2_huffman_offset(%struct._Jbig2HuffmanState* %536) #4
  %conv496 = sext i32 %call495 to i64
  %sub497 = sub i64 %535, %conv496
  %537 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %height498 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %537, i32 0, i32 1
  %538 = load i32, i32* %height498, align 4, !tbaa !75
  %539 = load i32, i32* %stride488, align 4, !tbaa !5
  %mul499 = mul nsw i32 %538, %539
  %conv500 = sext i32 %mul499 to i64
  %cmp501 = icmp ult i64 %sub497, %conv500
  br i1 %cmp501, label %if.then.503, label %if.end.511

if.then.503:                                      ; preds = %if.then.484
  %540 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %541 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number504 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %541, i32 0, i32 0
  %542 = load i32, i32* %number504, align 4, !tbaa !18
  %543 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %height505 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %543, i32 0, i32 1
  %544 = load i32, i32* %height505, align 4, !tbaa !75
  %545 = load i32, i32* %stride488, align 4, !tbaa !5
  %mul506 = mul nsw i32 %544, %545
  %546 = load i64, i64* %size.addr, align 8, !tbaa !35
  %547 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %call507 = call i32 @jbig2_huffman_offset(%struct._Jbig2HuffmanState* %547) #4
  %conv508 = sext i32 %call507 to i64
  %sub509 = sub i64 %546, %conv508
  %call510 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %540, i32 3, i32 %542, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i32 0, i32 0), i32 %mul506, i64 %sub509) #4
  %548 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %549 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %548, %struct._Jbig2Image* %549) #4
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.534

if.end.511:                                       ; preds = %if.then.484
  %550 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %height512 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %550, i32 0, i32 1
  %551 = load i32, i32* %height512, align 4, !tbaa !75
  %552 = load i32, i32* %stride488, align 4, !tbaa !5
  %mul513 = mul nsw i32 %551, %552
  store i32 %mul513, i32* %BMSIZE463, align 4, !tbaa !5
  %553 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %554 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number514 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %554, i32 0, i32 0
  %555 = load i32, i32* %number514, align 4, !tbaa !18
  %556 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %width515 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %556, i32 0, i32 0
  %557 = load i32, i32* %width515, align 4, !tbaa !78
  %558 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %height516 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %558, i32 0, i32 1
  %559 = load i32, i32* %height516, align 4, !tbaa !75
  %560 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %561 = load i32, i32* %HCFIRSTSYM, align 4, !tbaa !5
  %sub517 = sub i32 %560, %561
  %562 = load i32, i32* %BMSIZE463, align 4, !tbaa !5
  %call518 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %553, i32 0, i32 %555, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.54, i32 0, i32 0), i32 %557, i32 %559, i32 %sub517, i32 %562) #4
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.519

for.cond.519:                                     ; preds = %for.inc.531, %if.end.511
  %563 = load i32, i32* %j, align 4, !tbaa !5
  %564 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %height520 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %564, i32 0, i32 1
  %565 = load i32, i32* %height520, align 4, !tbaa !75
  %cmp521 = icmp slt i32 %563, %565
  br i1 %cmp521, label %for.body.523, label %for.end.533

for.body.523:                                     ; preds = %for.cond.519
  %566 = load i8*, i8** %dst, align 8, !tbaa !1
  %567 = load i8*, i8** %src, align 8, !tbaa !1
  %568 = load i32, i32* %stride488, align 4, !tbaa !5
  %conv524 = sext i32 %568 to i64
  %call525 = call i8* @memcpy(i8* %566, i8* %567, i64 %conv524) #5
  %569 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %stride526 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %569, i32 0, i32 2
  %570 = load i32, i32* %stride526, align 4, !tbaa !77
  %571 = load i8*, i8** %dst, align 8, !tbaa !1
  %idx.ext527 = sext i32 %570 to i64
  %add.ptr528 = getelementptr inbounds i8, i8* %571, i64 %idx.ext527
  store i8* %add.ptr528, i8** %dst, align 8, !tbaa !1
  %572 = load i32, i32* %stride488, align 4, !tbaa !5
  %573 = load i8*, i8** %src, align 8, !tbaa !1
  %idx.ext529 = sext i32 %572 to i64
  %add.ptr530 = getelementptr inbounds i8, i8* %573, i64 %idx.ext529
  store i8* %add.ptr530, i8** %src, align 8, !tbaa !1
  br label %for.inc.531

for.inc.531:                                      ; preds = %for.body.523
  %574 = load i32, i32* %j, align 4, !tbaa !5
  %inc532 = add nsw i32 %574, 1
  store i32 %inc532, i32* %j, align 4, !tbaa !5
  br label %for.cond.519

for.end.533:                                      ; preds = %for.cond.519
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.534

cleanup.534:                                      ; preds = %if.then.503, %for.end.533
  %575 = bitcast i8** %dst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %575) #1
  %576 = bitcast i32* %stride488 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %576) #1
  %577 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %577) #1
  %cleanup.dest.537 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.537, label %cleanup.603 [
    i32 0, label %cleanup.cont.538
  ]

cleanup.cont.538:                                 ; preds = %cleanup.534
  br label %if.end.574

if.else.539:                                      ; preds = %if.end.481
  %578 = bitcast %struct.Jbig2GenericRegionParams* %rparams541 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %578) #1
  %579 = load i64, i64* %size.addr, align 8, !tbaa !35
  %580 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %call542 = call i32 @jbig2_huffman_offset(%struct._Jbig2HuffmanState* %580) #4
  %conv543 = sext i32 %call542 to i64
  %sub544 = sub i64 %579, %conv543
  %581 = load i32, i32* %BMSIZE463, align 4, !tbaa !5
  %conv545 = sext i32 %581 to i64
  %cmp546 = icmp ult i64 %sub544, %conv545
  br i1 %cmp546, label %if.then.548, label %if.end.554

if.then.548:                                      ; preds = %if.else.539
  %582 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %583 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number549 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %583, i32 0, i32 0
  %584 = load i32, i32* %number549, align 4, !tbaa !18
  %585 = load i32, i32* %BMSIZE463, align 4, !tbaa !5
  %586 = load i64, i64* %size.addr, align 8, !tbaa !35
  %587 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %call550 = call i32 @jbig2_huffman_offset(%struct._Jbig2HuffmanState* %587) #4
  %conv551 = sext i32 %call550 to i64
  %sub552 = sub i64 %586, %conv551
  %call553 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %582, i32 3, i32 %584, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i32 0, i32 0), i32 %585, i64 %sub552) #4
  %588 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %589 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %588, %struct._Jbig2Image* %589) #4
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.571

if.end.554:                                       ; preds = %if.else.539
  %590 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %591 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number555 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %591, i32 0, i32 0
  %592 = load i32, i32* %number555, align 4, !tbaa !18
  %593 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %width556 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %593, i32 0, i32 0
  %594 = load i32, i32* %width556, align 4, !tbaa !78
  %595 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %height557 = getelementptr inbounds %struct._Jbig2Image, %struct._Jbig2Image* %595, i32 0, i32 1
  %596 = load i32, i32* %height557, align 4, !tbaa !75
  %597 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %598 = load i32, i32* %HCFIRSTSYM, align 4, !tbaa !5
  %sub558 = sub i32 %597, %598
  %599 = load i32, i32* %BMSIZE463, align 4, !tbaa !5
  %call559 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %590, i32 0, i32 %592, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.55, i32 0, i32 0), i32 %594, i32 %596, i32 %sub558, i32 %599) #4
  %MMR560 = getelementptr inbounds %struct.Jbig2GenericRegionParams, %struct.Jbig2GenericRegionParams* %rparams541, i32 0, i32 0
  store i32 1, i32* %MMR560, align 4, !tbaa !36
  %600 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %601 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %602 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %603 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %call561 = call i32 @jbig2_huffman_offset(%struct._Jbig2HuffmanState* %603) #4
  %idx.ext562 = sext i32 %call561 to i64
  %add.ptr563 = getelementptr inbounds i8, i8* %602, i64 %idx.ext562
  %604 = load i32, i32* %BMSIZE463, align 4, !tbaa !5
  %conv564 = sext i32 %604 to i64
  %605 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %call565 = call i32 @jbig2_decode_generic_mmr(%struct._Jbig2Ctx* %600, %struct._Jbig2Segment* %601, %struct.Jbig2GenericRegionParams* %rparams541, i8* %add.ptr563, i64 %conv564, %struct._Jbig2Image* %605) #4
  store i32 %call565, i32* %code, align 4, !tbaa !5
  %606 = load i32, i32* %code, align 4, !tbaa !5
  %tobool566 = icmp ne i32 %606, 0
  br i1 %tobool566, label %if.then.567, label %if.end.570

if.then.567:                                      ; preds = %if.end.554
  %607 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %608 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number568 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %608, i32 0, i32 0
  %609 = load i32, i32* %number568, align 4, !tbaa !18
  %call569 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %607, i32 3, i32 %609, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.56, i32 0, i32 0)) #4
  %610 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %611 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %610, %struct._Jbig2Image* %611) #4
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.571

if.end.570:                                       ; preds = %if.end.554
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.571

cleanup.571:                                      ; preds = %if.then.567, %if.then.548, %if.end.570
  %612 = bitcast %struct.Jbig2GenericRegionParams* %rparams541 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %612) #1
  %cleanup.dest.572 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.572, label %cleanup.603 [
    i32 0, label %cleanup.cont.573
  ]

cleanup.cont.573:                                 ; preds = %cleanup.571
  br label %if.end.574

if.end.574:                                       ; preds = %cleanup.cont.573, %cleanup.cont.538
  %613 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %614 = load i32, i32* %BMSIZE463, align 4, !tbaa !5
  call void @jbig2_huffman_advance(%struct._Jbig2HuffmanState* %613, i32 %614) #4
  store i32 0, i32* %x, align 4, !tbaa !5
  %615 = load i32, i32* %HCFIRSTSYM, align 4, !tbaa !5
  store i32 %615, i32* %j, align 4, !tbaa !5
  br label %for.cond.575

for.cond.575:                                     ; preds = %for.inc.600, %if.end.574
  %616 = load i32, i32* %j, align 4, !tbaa !5
  %617 = load i32, i32* %NSYMSDECODED, align 4, !tbaa !5
  %cmp576 = icmp ult i32 %616, %617
  br i1 %cmp576, label %for.body.578, label %for.end.602

for.body.578:                                     ; preds = %for.cond.575
  %618 = bitcast %struct._Jbig2Image** %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %618) #1
  %619 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %620 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom580 = sext i32 %620 to i64
  %621 = load i32*, i32** %SDNEWSYMWIDTHS, align 8, !tbaa !1
  %arrayidx581 = getelementptr inbounds i32, i32* %621, i64 %idxprom580
  %622 = load i32, i32* %arrayidx581, align 4, !tbaa !5
  %623 = load i32, i32* %HCHEIGHT, align 4, !tbaa !5
  %call582 = call %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx* %619, i32 %622, i32 %623) #4
  store %struct._Jbig2Image* %call582, %struct._Jbig2Image** %glyph, align 8, !tbaa !1
  %624 = load %struct._Jbig2Image*, %struct._Jbig2Image** %glyph, align 8, !tbaa !1
  %cmp583 = icmp eq %struct._Jbig2Image* %624, null
  br i1 %cmp583, label %if.then.585, label %if.end.588

if.then.585:                                      ; preds = %for.body.578
  %625 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %626 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number586 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %626, i32 0, i32 0
  %627 = load i32, i32* %number586, align 4, !tbaa !18
  %call587 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %625, i32 3, i32 %627, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.57, i32 0, i32 0)) #4
  %628 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %629 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %628, %struct._Jbig2Image* %629) #4
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.597

if.end.588:                                       ; preds = %for.body.578
  %630 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %631 = load %struct._Jbig2Image*, %struct._Jbig2Image** %glyph, align 8, !tbaa !1
  %632 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  %633 = load i32, i32* %x, align 4, !tbaa !5
  %sub589 = sub nsw i32 0, %633
  %call590 = call i32 @jbig2_image_compose(%struct._Jbig2Ctx* %630, %struct._Jbig2Image* %631, %struct._Jbig2Image* %632, i32 %sub589, i32 0, i32 4) #4
  %634 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom591 = sext i32 %634 to i64
  %635 = load i32*, i32** %SDNEWSYMWIDTHS, align 8, !tbaa !1
  %arrayidx592 = getelementptr inbounds i32, i32* %635, i64 %idxprom591
  %636 = load i32, i32* %arrayidx592, align 4, !tbaa !5
  %637 = load i32, i32* %x, align 4, !tbaa !5
  %add593 = add i32 %637, %636
  store i32 %add593, i32* %x, align 4, !tbaa !5
  %638 = load %struct._Jbig2Image*, %struct._Jbig2Image** %glyph, align 8, !tbaa !1
  %639 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom594 = sext i32 %639 to i64
  %640 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDNEWSYMS, align 8, !tbaa !1
  %glyphs595 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %640, i32 0, i32 1
  %641 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs595, align 8, !tbaa !10
  %arrayidx596 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %641, i64 %idxprom594
  store %struct._Jbig2Image* %638, %struct._Jbig2Image** %arrayidx596, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.597

cleanup.597:                                      ; preds = %if.then.585, %if.end.588
  %642 = bitcast %struct._Jbig2Image** %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %642) #1
  %cleanup.dest.598 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.598, label %cleanup.603 [
    i32 0, label %cleanup.cont.599
  ]

cleanup.cont.599:                                 ; preds = %cleanup.597
  br label %for.inc.600

for.inc.600:                                      ; preds = %cleanup.cont.599
  %643 = load i32, i32* %j, align 4, !tbaa !5
  %inc601 = add nsw i32 %643, 1
  store i32 %inc601, i32* %j, align 4, !tbaa !5
  br label %for.cond.575

for.end.602:                                      ; preds = %for.cond.575
  %644 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %645 = load %struct._Jbig2Image*, %struct._Jbig2Image** %image461, align 8, !tbaa !1
  call void @jbig2_image_release(%struct._Jbig2Ctx* %644, %struct._Jbig2Image* %645) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.603

cleanup.603:                                      ; preds = %if.then.478, %if.then.471, %for.end.602, %cleanup.597, %cleanup.571, %cleanup.534
  %646 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %646) #1
  %647 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %647) #1
  %648 = bitcast i32* %BMSIZE463 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %648) #1
  %649 = bitcast %struct._Jbig2Image** %image461 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %649) #1
  %cleanup.dest.607 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.607, label %cleanup.610 [
    i32 0, label %cleanup.cont.608
  ]

cleanup.cont.608:                                 ; preds = %cleanup.603
  br label %if.end.609

if.end.609:                                       ; preds = %cleanup.cont.608, %land.lhs.true.456, %for.end.453
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.610

cleanup.610:                                      ; preds = %if.then.150, %if.then.142, %if.then.131, %if.then.115, %if.then.108, %if.end.609, %cleanup.603, %cleanup.435, %cleanup.185
  %650 = bitcast i32* %DW to i8*
  call void @llvm.lifetime.end(i64 4, i8* %650) #1
  %651 = bitcast i32* %HCDH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %651) #1
  %cleanup.dest.612 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.612, label %cleanup.769 [
    i32 0, label %cleanup.cont.613
    i32 11, label %cleanup4
    i32 6, label %cleanup2
  ]

cleanup.cont.613:                                 ; preds = %cleanup.610
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %652 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %653 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMEXSYMS = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %653, i32 0, i32 5
  %654 = load i32, i32* %SDNUMEXSYMS, align 4, !tbaa !31
  %call614 = call %struct.Jbig2SymbolDict* @jbig2_sd_new(%struct._Jbig2Ctx* %652, i32 %654) #4
  store %struct.Jbig2SymbolDict* %call614, %struct.Jbig2SymbolDict** %SDEXSYMS, align 8, !tbaa !1
  %655 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDEXSYMS, align 8, !tbaa !1
  %cmp615 = icmp eq %struct.Jbig2SymbolDict* %655, null
  br i1 %cmp615, label %if.then.617, label %if.else.620

if.then.617:                                      ; preds = %while.end
  %656 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %657 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number618 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %657, i32 0, i32 0
  %658 = load i32, i32* %number618, align 4, !tbaa !18
  %call619 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %656, i32 3, i32 %658, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.58, i32 0, i32 0)) #4
  br label %cleanup4

if.else.620:                                      ; preds = %while.end
  %659 = bitcast i32* %i622 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %659) #1
  store i32 0, i32* %i622, align 4, !tbaa !5
  %660 = bitcast i32* %j624 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %660) #1
  store i32 0, i32* %j624, align 4, !tbaa !5
  %661 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %661) #1
  %662 = bitcast i32* %exflag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %662) #1
  store i32 0, i32* %exflag, align 4, !tbaa !5
  %663 = bitcast i64* %limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %663) #1
  %664 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMINSYMS628 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %664, i32 0, i32 2
  %665 = load i32, i32* %SDNUMINSYMS628, align 4, !tbaa !34
  %666 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMNEWSYMS629 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %666, i32 0, i32 4
  %667 = load i32, i32* %SDNUMNEWSYMS629, align 4, !tbaa !32
  %add630 = add i32 %665, %667
  %conv631 = zext i32 %add630 to i64
  store i64 %conv631, i64* %limit, align 8, !tbaa !35
  %668 = bitcast i32* %exrunlength to i8*
  call void @llvm.lifetime.start(i64 4, i8* %668) #1
  %669 = bitcast i32* %zerolength to i8*
  call void @llvm.lifetime.start(i64 4, i8* %669) #1
  store i32 0, i32* %zerolength, align 4, !tbaa !5
  br label %while.cond.634

while.cond.634:                                   ; preds = %for.end.723, %if.else.620
  %670 = load i32, i32* %i622, align 4, !tbaa !5
  %conv635 = sext i32 %670 to i64
  %671 = load i64, i64* %limit, align 8, !tbaa !35
  %cmp636 = icmp slt i64 %conv635, %671
  br i1 %cmp636, label %while.body.638, label %while.end.725

while.body.638:                                   ; preds = %while.cond.634
  %672 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF639 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %672, i32 0, i32 0
  %673 = load i32, i32* %SDHUFF639, align 4, !tbaa !22
  %tobool640 = icmp ne i32 %673, 0
  br i1 %tobool640, label %if.then.641, label %if.else.643

if.then.641:                                      ; preds = %while.body.638
  %674 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  %675 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRSIZE, align 8, !tbaa !1
  %call642 = call i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState* %674, %struct._Jbig2HuffmanTable* %675, i32* %code) #4
  store i32 %call642, i32* %exrunlength, align 4, !tbaa !5
  br label %if.end.645

if.else.643:                                      ; preds = %while.body.638
  %676 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IAEX, align 8, !tbaa !1
  %677 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %call644 = call i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx* %676, %struct._Jbig2ArithState* %677, i32* %exrunlength) #4
  store i32 %call644, i32* %code, align 4, !tbaa !5
  br label %if.end.645

if.end.645:                                       ; preds = %if.else.643, %if.then.641
  %678 = load i32, i32* %exrunlength, align 4, !tbaa !5
  %cmp646 = icmp sgt i32 %678, 0
  br i1 %cmp646, label %cond.true.648, label %cond.false.649

cond.true.648:                                    ; preds = %if.end.645
  br label %cond.end.651

cond.false.649:                                   ; preds = %if.end.645
  %679 = load i32, i32* %zerolength, align 4, !tbaa !5
  %add650 = add nsw i32 %679, 1
  br label %cond.end.651

cond.end.651:                                     ; preds = %cond.false.649, %cond.true.648
  %cond652 = phi i32 [ 0, %cond.true.648 ], [ %add650, %cond.false.649 ]
  store i32 %cond652, i32* %zerolength, align 4, !tbaa !5
  %680 = load i32, i32* %code, align 4, !tbaa !5
  %tobool653 = icmp ne i32 %680, 0
  br i1 %tobool653, label %if.then.673, label %lor.lhs.false.654

lor.lhs.false.654:                                ; preds = %cond.end.651
  %681 = load i32, i32* %exrunlength, align 4, !tbaa !5
  %conv655 = sext i32 %681 to i64
  %682 = load i64, i64* %limit, align 8, !tbaa !35
  %683 = load i32, i32* %i622, align 4, !tbaa !5
  %conv656 = sext i32 %683 to i64
  %sub657 = sub nsw i64 %682, %conv656
  %cmp658 = icmp sgt i64 %conv655, %sub657
  br i1 %cmp658, label %if.then.673, label %lor.lhs.false.660

lor.lhs.false.660:                                ; preds = %lor.lhs.false.654
  %684 = load i32, i32* %exrunlength, align 4, !tbaa !5
  %cmp661 = icmp slt i32 %684, 0
  br i1 %cmp661, label %if.then.673, label %lor.lhs.false.663

lor.lhs.false.663:                                ; preds = %lor.lhs.false.660
  %685 = load i32, i32* %zerolength, align 4, !tbaa !5
  %cmp664 = icmp sgt i32 %685, 4
  br i1 %cmp664, label %if.then.673, label %lor.lhs.false.666

lor.lhs.false.666:                                ; preds = %lor.lhs.false.663
  %686 = load i32, i32* %exflag, align 4, !tbaa !5
  %tobool667 = icmp ne i32 %686, 0
  br i1 %tobool667, label %land.lhs.true.668, label %if.end.690

land.lhs.true.668:                                ; preds = %lor.lhs.false.666
  %687 = load i32, i32* %exrunlength, align 4, !tbaa !5
  %688 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMEXSYMS669 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %688, i32 0, i32 5
  %689 = load i32, i32* %SDNUMEXSYMS669, align 4, !tbaa !31
  %690 = load i32, i32* %j624, align 4, !tbaa !5
  %sub670 = sub i32 %689, %690
  %cmp671 = icmp ugt i32 %687, %sub670
  br i1 %cmp671, label %if.then.673, label %if.end.690

if.then.673:                                      ; preds = %land.lhs.true.668, %lor.lhs.false.663, %lor.lhs.false.660, %lor.lhs.false.654, %cond.end.651
  %691 = load i32, i32* %code, align 4, !tbaa !5
  %tobool674 = icmp ne i32 %691, 0
  br i1 %tobool674, label %if.then.675, label %if.else.678

if.then.675:                                      ; preds = %if.then.673
  %692 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %693 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number676 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %693, i32 0, i32 0
  %694 = load i32, i32* %number676, align 4, !tbaa !18
  %call677 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %692, i32 3, i32 %694, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.59, i32 0, i32 0)) #4
  br label %if.end.689

if.else.678:                                      ; preds = %if.then.673
  %695 = load i32, i32* %exrunlength, align 4, !tbaa !5
  %cmp679 = icmp sle i32 %695, 0
  br i1 %cmp679, label %if.then.681, label %if.else.684

if.then.681:                                      ; preds = %if.else.678
  %696 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %697 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number682 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %697, i32 0, i32 0
  %698 = load i32, i32* %number682, align 4, !tbaa !18
  %699 = load i32, i32* %exrunlength, align 4, !tbaa !5
  %call683 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %696, i32 3, i32 %698, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.60, i32 0, i32 0), i32 %699) #4
  br label %if.end.688

if.else.684:                                      ; preds = %if.else.678
  %700 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %701 = load %struct._Jbig2Segment*, %struct._Jbig2Segment** %segment.addr, align 8, !tbaa !1
  %number685 = getelementptr inbounds %struct._Jbig2Segment, %struct._Jbig2Segment* %701, i32 0, i32 0
  %702 = load i32, i32* %number685, align 4, !tbaa !18
  %703 = load i32, i32* %exrunlength, align 4, !tbaa !5
  %704 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMEXSYMS686 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %704, i32 0, i32 5
  %705 = load i32, i32* %SDNUMEXSYMS686, align 4, !tbaa !31
  %706 = load i32, i32* %j624, align 4, !tbaa !5
  %call687 = call i32 (%struct._Jbig2Ctx*, i32, i32, i8*, ...) @jbig2_error(%struct._Jbig2Ctx* %700, i32 3, i32 %702, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.61, i32 0, i32 0), i32 %703, i32 %705, i32 %706) #4
  br label %if.end.688

if.end.688:                                       ; preds = %if.else.684, %if.then.681
  br label %if.end.689

if.end.689:                                       ; preds = %if.end.688, %if.then.675
  %707 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %708 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDEXSYMS, align 8, !tbaa !1
  call void @jbig2_sd_release(%struct._Jbig2Ctx* %707, %struct.Jbig2SymbolDict* %708) #4
  store %struct.Jbig2SymbolDict* null, %struct.Jbig2SymbolDict** %SDEXSYMS, align 8, !tbaa !1
  br label %while.end.725

if.end.690:                                       ; preds = %land.lhs.true.668, %lor.lhs.false.666
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.691

for.cond.691:                                     ; preds = %for.inc.721, %if.end.690
  %709 = load i32, i32* %k, align 4, !tbaa !5
  %710 = load i32, i32* %exrunlength, align 4, !tbaa !5
  %cmp692 = icmp slt i32 %709, %710
  br i1 %cmp692, label %for.body.694, label %for.end.723

for.body.694:                                     ; preds = %for.cond.691
  %711 = load i32, i32* %exflag, align 4, !tbaa !5
  %tobool695 = icmp ne i32 %711, 0
  br i1 %tobool695, label %if.then.696, label %if.end.719

if.then.696:                                      ; preds = %for.body.694
  %712 = load i32, i32* %i622, align 4, !tbaa !5
  %713 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMINSYMS697 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %713, i32 0, i32 2
  %714 = load i32, i32* %SDNUMINSYMS697, align 4, !tbaa !34
  %cmp698 = icmp ult i32 %712, %714
  br i1 %cmp698, label %cond.true.700, label %cond.false.706

cond.true.700:                                    ; preds = %if.then.696
  %715 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %716 = load i32, i32* %i622, align 4, !tbaa !5
  %idxprom701 = sext i32 %716 to i64
  %717 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDINSYMS702 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %717, i32 0, i32 3
  %718 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDINSYMS702, align 8, !tbaa !33
  %glyphs703 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %718, i32 0, i32 1
  %719 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs703, align 8, !tbaa !10
  %arrayidx704 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %719, i64 %idxprom701
  %720 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx704, align 8, !tbaa !1
  %call705 = call %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx* %715, %struct._Jbig2Image* %720) #4
  br label %cond.end.713

cond.false.706:                                   ; preds = %if.then.696
  %721 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %722 = load i32, i32* %i622, align 4, !tbaa !5
  %723 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDNUMINSYMS707 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %723, i32 0, i32 2
  %724 = load i32, i32* %SDNUMINSYMS707, align 4, !tbaa !34
  %sub708 = sub i32 %722, %724
  %idxprom709 = zext i32 %sub708 to i64
  %725 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDNEWSYMS, align 8, !tbaa !1
  %glyphs710 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %725, i32 0, i32 1
  %726 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs710, align 8, !tbaa !10
  %arrayidx711 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %726, i64 %idxprom709
  %727 = load %struct._Jbig2Image*, %struct._Jbig2Image** %arrayidx711, align 8, !tbaa !1
  %call712 = call %struct._Jbig2Image* @jbig2_image_clone(%struct._Jbig2Ctx* %721, %struct._Jbig2Image* %727) #4
  br label %cond.end.713

cond.end.713:                                     ; preds = %cond.false.706, %cond.true.700
  %cond714 = phi %struct._Jbig2Image* [ %call705, %cond.true.700 ], [ %call712, %cond.false.706 ]
  %728 = load i32, i32* %j624, align 4, !tbaa !5
  %inc715 = add nsw i32 %728, 1
  store i32 %inc715, i32* %j624, align 4, !tbaa !5
  %idxprom716 = sext i32 %728 to i64
  %729 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDEXSYMS, align 8, !tbaa !1
  %glyphs717 = getelementptr inbounds %struct.Jbig2SymbolDict, %struct.Jbig2SymbolDict* %729, i32 0, i32 1
  %730 = load %struct._Jbig2Image**, %struct._Jbig2Image*** %glyphs717, align 8, !tbaa !10
  %arrayidx718 = getelementptr inbounds %struct._Jbig2Image*, %struct._Jbig2Image** %730, i64 %idxprom716
  store %struct._Jbig2Image* %cond714, %struct._Jbig2Image** %arrayidx718, align 8, !tbaa !1
  br label %if.end.719

if.end.719:                                       ; preds = %cond.end.713, %for.body.694
  %731 = load i32, i32* %i622, align 4, !tbaa !5
  %inc720 = add nsw i32 %731, 1
  store i32 %inc720, i32* %i622, align 4, !tbaa !5
  br label %for.inc.721

for.inc.721:                                      ; preds = %if.end.719
  %732 = load i32, i32* %k, align 4, !tbaa !5
  %inc722 = add nsw i32 %732, 1
  store i32 %inc722, i32* %k, align 4, !tbaa !5
  br label %for.cond.691

for.end.723:                                      ; preds = %for.cond.691
  %733 = load i32, i32* %exflag, align 4, !tbaa !5
  %tobool724 = icmp ne i32 %733, 0
  %lnot = xor i1 %tobool724, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %exflag, align 4, !tbaa !5
  br label %while.cond.634

while.end.725:                                    ; preds = %if.end.689, %while.cond.634
  %734 = bitcast i32* %zerolength to i8*
  call void @llvm.lifetime.end(i64 4, i8* %734) #1
  %735 = bitcast i32* %exrunlength to i8*
  call void @llvm.lifetime.end(i64 4, i8* %735) #1
  %736 = bitcast i64* %limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %736) #1
  %737 = bitcast i32* %exflag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %737) #1
  %738 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %738) #1
  %739 = bitcast i32* %j624 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %739) #1
  %740 = bitcast i32* %i622 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %740) #1
  br label %if.end.726

if.end.726:                                       ; preds = %while.end.725
  br label %cleanup4

cleanup4:                                         ; preds = %if.end.726, %cleanup.610, %if.then.617
  %741 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %cmp727 = icmp ne %struct.Jbig2TextRegionParams* %741, null
  br i1 %cmp727, label %if.then.729, label %if.end.753

if.then.729:                                      ; preds = %cleanup4
  %742 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF730 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %742, i32 0, i32 0
  %743 = load i32, i32* %SDHUFF730, align 4, !tbaa !22
  %tobool731 = icmp ne i32 %743, 0
  br i1 %tobool731, label %if.else.743, label %if.then.732

if.then.732:                                      ; preds = %if.then.729
  %744 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %745 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IADT733 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %745, i32 0, i32 18
  %746 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADT733, align 8, !tbaa !41
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %744, %struct._Jbig2ArithIntCtx* %746) #4
  %747 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %748 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IAFS734 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %748, i32 0, i32 19
  %749 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IAFS734, align 8, !tbaa !43
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %747, %struct._Jbig2ArithIntCtx* %749) #4
  %750 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %751 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IADS735 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %751, i32 0, i32 20
  %752 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADS735, align 8, !tbaa !44
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %750, %struct._Jbig2ArithIntCtx* %752) #4
  %753 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %754 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IAIT736 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %754, i32 0, i32 21
  %755 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IAIT736, align 8, !tbaa !45
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %753, %struct._Jbig2ArithIntCtx* %755) #4
  %756 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %757 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IAID737 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %757, i32 0, i32 22
  %758 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %IAID737, align 8, !tbaa !46
  call void @jbig2_arith_iaid_ctx_free(%struct._Jbig2Ctx* %756, %struct._Jbig2ArithIaidCtx* %758) #4
  %759 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %760 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IARI738 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %760, i32 0, i32 23
  %761 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARI738, align 8, !tbaa !47
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %759, %struct._Jbig2ArithIntCtx* %761) #4
  %762 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %763 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IARDW739 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %763, i32 0, i32 24
  %764 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDW739, align 8, !tbaa !48
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %762, %struct._Jbig2ArithIntCtx* %764) #4
  %765 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %766 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IARDH740 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %766, i32 0, i32 25
  %767 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDH740, align 8, !tbaa !49
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %765, %struct._Jbig2ArithIntCtx* %767) #4
  %768 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %769 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IARDX741 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %769, i32 0, i32 26
  %770 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDX741, align 8, !tbaa !50
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %768, %struct._Jbig2ArithIntCtx* %770) #4
  %771 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %772 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %IARDY742 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %772, i32 0, i32 27
  %773 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDY742, align 8, !tbaa !51
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %771, %struct._Jbig2ArithIntCtx* %773) #4
  br label %if.end.751

if.else.743:                                      ; preds = %if.then.729
  %774 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %775 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFFFS744 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %775, i32 0, i32 10
  %776 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFFS744, align 8, !tbaa !52
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %774, %struct._Jbig2HuffmanTable* %776) #4
  %777 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %778 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFFDS745 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %778, i32 0, i32 11
  %779 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFDS745, align 8, !tbaa !53
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %777, %struct._Jbig2HuffmanTable* %779) #4
  %780 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %781 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFFDT746 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %781, i32 0, i32 12
  %782 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFDT746, align 8, !tbaa !54
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %780, %struct._Jbig2HuffmanTable* %782) #4
  %783 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %784 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFFRDX747 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %784, i32 0, i32 15
  %785 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDX747, align 8, !tbaa !57
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %783, %struct._Jbig2HuffmanTable* %785) #4
  %786 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %787 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFFRDY748 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %787, i32 0, i32 16
  %788 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDY748, align 8, !tbaa !58
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %786, %struct._Jbig2HuffmanTable* %788) #4
  %789 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %790 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFFRDW749 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %790, i32 0, i32 13
  %791 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDW749, align 8, !tbaa !55
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %789, %struct._Jbig2HuffmanTable* %791) #4
  %792 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %793 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %SBHUFFRDH750 = getelementptr inbounds %struct.Jbig2TextRegionParams, %struct.Jbig2TextRegionParams* %793, i32 0, i32 14
  %794 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRDH750, align 8, !tbaa !56
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %792, %struct._Jbig2HuffmanTable* %794) #4
  br label %if.end.751

if.end.751:                                       ; preds = %if.else.743, %if.then.732
  %795 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator752 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %795, i32 0, i32 0
  %796 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator752, align 8, !tbaa !7
  %797 = load %struct.Jbig2TextRegionParams*, %struct.Jbig2TextRegionParams** %tparams, align 8, !tbaa !1
  %798 = bitcast %struct.Jbig2TextRegionParams* %797 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %796, i8* %798) #4
  br label %if.end.753

if.end.753:                                       ; preds = %if.end.751, %cleanup4
  %799 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %refagg_dicts, align 8, !tbaa !1
  %cmp754 = icmp ne %struct.Jbig2SymbolDict** %799, null
  br i1 %cmp754, label %if.then.756, label %if.end.759

if.then.756:                                      ; preds = %if.end.753
  %800 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %801 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %refagg_dicts, align 8, !tbaa !1
  %arrayidx757 = getelementptr inbounds %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %801, i64 0
  %802 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %arrayidx757, align 8, !tbaa !1
  call void @jbig2_sd_release(%struct._Jbig2Ctx* %800, %struct.Jbig2SymbolDict* %802) #4
  %803 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator758 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %803, i32 0, i32 0
  %804 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator758, align 8, !tbaa !7
  %805 = load %struct.Jbig2SymbolDict**, %struct.Jbig2SymbolDict*** %refagg_dicts, align 8, !tbaa !1
  %806 = bitcast %struct.Jbig2SymbolDict** %805 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %804, i8* %806) #4
  br label %if.end.759

if.end.759:                                       ; preds = %if.then.756, %if.end.753
  br label %cleanup2

cleanup2:                                         ; preds = %if.end.759, %cleanup.610, %cleanup, %if.then.79, %if.then.68, %if.then.56
  %807 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %808 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDNEWSYMS, align 8, !tbaa !1
  call void @jbig2_sd_release(%struct._Jbig2Ctx* %807, %struct.Jbig2SymbolDict* %808) #4
  %809 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDHUFF760 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %809, i32 0, i32 0
  %810 = load i32, i32* %SDHUFF760, align 4, !tbaa !22
  %tobool761 = icmp ne i32 %810, 0
  br i1 %tobool761, label %land.lhs.true.762, label %if.end.767

land.lhs.true.762:                                ; preds = %cleanup2
  %811 = load %struct.Jbig2SymbolDictParams*, %struct.Jbig2SymbolDictParams** %params.addr, align 8, !tbaa !1
  %SDREFAGG763 = getelementptr inbounds %struct.Jbig2SymbolDictParams, %struct.Jbig2SymbolDictParams* %811, i32 0, i32 1
  %812 = load i32, i32* %SDREFAGG763, align 4, !tbaa !24
  %tobool764 = icmp ne i32 %812, 0
  br i1 %tobool764, label %if.end.767, label %if.then.765

if.then.765:                                      ; preds = %land.lhs.true.762
  %813 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator766 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %813, i32 0, i32 0
  %814 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator766, align 8, !tbaa !7
  %815 = load i32*, i32** %SDNEWSYMWIDTHS, align 8, !tbaa !1
  %816 = bitcast i32* %815 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %814, i8* %816) #4
  br label %if.end.767

if.end.767:                                       ; preds = %if.then.765, %land.lhs.true.762, %cleanup2
  %817 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %818 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SDHUFFRDX, align 8, !tbaa !1
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %817, %struct._Jbig2HuffmanTable* %818) #4
  %819 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %820 = load %struct._Jbig2HuffmanTable*, %struct._Jbig2HuffmanTable** %SBHUFFRSIZE, align 8, !tbaa !1
  call void @jbig2_release_huffman_table(%struct._Jbig2Ctx* %819, %struct._Jbig2HuffmanTable* %820) #4
  %821 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %822 = load %struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanState** %hs, align 8, !tbaa !1
  call void @jbig2_huffman_free(%struct._Jbig2Ctx* %821, %struct._Jbig2HuffmanState* %822) #4
  %823 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %824 = load %struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithIaidCtx** %IAID, align 8, !tbaa !1
  call void @jbig2_arith_iaid_ctx_free(%struct._Jbig2Ctx* %823, %struct._Jbig2ArithIaidCtx* %824) #4
  %825 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %826 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDX, align 8, !tbaa !1
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %825, %struct._Jbig2ArithIntCtx* %826) #4
  %827 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %828 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IARDY, align 8, !tbaa !1
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %827, %struct._Jbig2ArithIntCtx* %828) #4
  br label %cleanup1

cleanup1:                                         ; preds = %if.end.767, %if.then.19
  %829 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %830 = load %struct._Jbig2WordStream*, %struct._Jbig2WordStream** %ws, align 8, !tbaa !1
  call void @jbig2_word_stream_buf_free(%struct._Jbig2Ctx* %829, %struct._Jbig2WordStream* %830) #4
  %831 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %allocator768 = getelementptr inbounds %struct._Jbig2Ctx, %struct._Jbig2Ctx* %831, i32 0, i32 0
  %832 = load %struct._Jbig2Allocator*, %struct._Jbig2Allocator** %allocator768, align 8, !tbaa !7
  %833 = load %struct._Jbig2ArithState*, %struct._Jbig2ArithState** %as, align 8, !tbaa !1
  %834 = bitcast %struct._Jbig2ArithState* %833 to i8*
  call void @jbig2_free(%struct._Jbig2Allocator* %832, i8* %834) #4
  %835 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %836 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADH, align 8, !tbaa !1
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %835, %struct._Jbig2ArithIntCtx* %836) #4
  %837 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %838 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IADW, align 8, !tbaa !1
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %837, %struct._Jbig2ArithIntCtx* %838) #4
  %839 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %840 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IAEX, align 8, !tbaa !1
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %839, %struct._Jbig2ArithIntCtx* %840) #4
  %841 = load %struct._Jbig2Ctx*, %struct._Jbig2Ctx** %ctx.addr, align 8, !tbaa !1
  %842 = load %struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithIntCtx** %IAAI, align 8, !tbaa !1
  call void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx* %841, %struct._Jbig2ArithIntCtx* %842) #4
  %843 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %SDEXSYMS, align 8, !tbaa !1
  store %struct.Jbig2SymbolDict* %843, %struct.Jbig2SymbolDict** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.769

cleanup.769:                                      ; preds = %cleanup1, %cleanup.610, %cleanup, %if.then.4, %if.then
  %844 = bitcast %struct.Jbig2TextRegionParams** %tparams to i8*
  call void @llvm.lifetime.end(i64 8, i8* %844) #1
  %845 = bitcast i32* %n_refagg_dicts to i8*
  call void @llvm.lifetime.end(i64 4, i8* %845) #1
  %846 = bitcast %struct.Jbig2SymbolDict*** %refagg_dicts to i8*
  call void @llvm.lifetime.end(i64 8, i8* %846) #1
  %847 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %847) #1
  %848 = bitcast %struct._Jbig2ArithIntCtx** %IARDY to i8*
  call void @llvm.lifetime.end(i64 8, i8* %848) #1
  %849 = bitcast %struct._Jbig2ArithIntCtx** %IARDX to i8*
  call void @llvm.lifetime.end(i64 8, i8* %849) #1
  %850 = bitcast %struct._Jbig2ArithIaidCtx** %IAID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %850) #1
  %851 = bitcast %struct._Jbig2ArithIntCtx** %IAAI to i8*
  call void @llvm.lifetime.end(i64 8, i8* %851) #1
  %852 = bitcast %struct._Jbig2ArithIntCtx** %IAEX to i8*
  call void @llvm.lifetime.end(i64 8, i8* %852) #1
  %853 = bitcast %struct._Jbig2ArithIntCtx** %IADW to i8*
  call void @llvm.lifetime.end(i64 8, i8* %853) #1
  %854 = bitcast %struct._Jbig2ArithIntCtx** %IADH to i8*
  call void @llvm.lifetime.end(i64 8, i8* %854) #1
  %855 = bitcast %struct._Jbig2ArithState** %as to i8*
  call void @llvm.lifetime.end(i64 8, i8* %855) #1
  %856 = bitcast %struct._Jbig2HuffmanTable** %SBHUFFRSIZE to i8*
  call void @llvm.lifetime.end(i64 8, i8* %856) #1
  %857 = bitcast %struct._Jbig2HuffmanTable** %SDHUFFRDX to i8*
  call void @llvm.lifetime.end(i64 8, i8* %857) #1
  %858 = bitcast %struct._Jbig2HuffmanState** %hs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %858) #1
  %859 = bitcast %struct._Jbig2WordStream** %ws to i8*
  call void @llvm.lifetime.end(i64 8, i8* %859) #1
  %860 = bitcast i32* %SBSYMCODELEN to i8*
  call void @llvm.lifetime.end(i64 4, i8* %860) #1
  %861 = bitcast i32** %SDNEWSYMWIDTHS to i8*
  call void @llvm.lifetime.end(i64 8, i8* %861) #1
  %862 = bitcast i32* %HCFIRSTSYM to i8*
  call void @llvm.lifetime.end(i64 4, i8* %862) #1
  %863 = bitcast i32* %TOTWIDTH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %863) #1
  %864 = bitcast i32* %SYMWIDTH to i8*
  call void @llvm.lifetime.end(i64 4, i8* %864) #1
  %865 = bitcast i32* %NSYMSDECODED to i8*
  call void @llvm.lifetime.end(i64 4, i8* %865) #1
  %866 = bitcast i32* %HCHEIGHT to i8*
  call void @llvm.lifetime.end(i64 4, i8* %866) #1
  %867 = bitcast %struct.Jbig2SymbolDict** %SDEXSYMS to i8*
  call void @llvm.lifetime.end(i64 8, i8* %867) #1
  %868 = bitcast %struct.Jbig2SymbolDict** %SDNEWSYMS to i8*
  call void @llvm.lifetime.end(i64 8, i8* %868) #1
  %869 = load %struct.Jbig2SymbolDict*, %struct.Jbig2SymbolDict** %retval
  ret %struct.Jbig2SymbolDict* %869
}

declare void @jbig2_release_huffman_table(%struct._Jbig2Ctx*, %struct._Jbig2HuffmanTable*) #2

declare %struct._Jbig2WordStream* @jbig2_word_stream_buf_new(%struct._Jbig2Ctx*, i8*, i64) #2

declare %struct._Jbig2ArithState* @jbig2_arith_new(%struct._Jbig2Ctx*, %struct._Jbig2WordStream*) #2

declare void @jbig2_word_stream_buf_free(%struct._Jbig2Ctx*, %struct._Jbig2WordStream*) #2

declare %struct._Jbig2ArithIntCtx* @jbig2_arith_int_ctx_new(%struct._Jbig2Ctx*) #2

declare %struct._Jbig2ArithIaidCtx* @jbig2_arith_iaid_ctx_new(%struct._Jbig2Ctx*, i32) #2

declare %struct._Jbig2HuffmanState* @jbig2_huffman_new(%struct._Jbig2Ctx*, %struct._Jbig2WordStream*) #2

declare i32 @jbig2_huffman_get(%struct._Jbig2HuffmanState*, %struct._Jbig2HuffmanTable*, i32*) #2

declare i32 @jbig2_arith_int_decode(%struct._Jbig2ArithIntCtx*, %struct._Jbig2ArithState*, i32*) #2

declare i32 @jbig2_arith_get_offset(%struct._Jbig2ArithState*) #2

declare %struct._Jbig2Image* @jbig2_image_new(%struct._Jbig2Ctx*, i32, i32) #2

declare i32 @jbig2_decode_generic_region(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, %struct.Jbig2GenericRegionParams*, %struct._Jbig2ArithState*, %struct._Jbig2Image*, i8*) #2

declare i32 @jbig2_decode_text_region(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, %struct.Jbig2TextRegionParams*, %struct.Jbig2SymbolDict**, i32, %struct._Jbig2Image*, i8*, i64, i8*, %struct._Jbig2ArithState*, %struct._Jbig2WordStream*) #2

declare i32 @jbig2_huffman_get_bits(%struct._Jbig2HuffmanState*, i32, i32*) #2

declare void @jbig2_huffman_skip(%struct._Jbig2HuffmanState*) #2

declare i32 @jbig2_arith_iaid_decode(%struct._Jbig2ArithIaidCtx*, %struct._Jbig2ArithState*, i32*) #2

declare i32 @jbig2_decode_refinement_region(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, %struct.Jbig2RefinementRegionParams*, %struct._Jbig2ArithState*, %struct._Jbig2Image*, i8*) #2

declare void @jbig2_huffman_advance(%struct._Jbig2HuffmanState*, i32) #2

declare i32 @jbig2_huffman_offset(%struct._Jbig2HuffmanState*) #2

declare i32 @jbig2_decode_generic_mmr(%struct._Jbig2Ctx*, %struct._Jbig2Segment*, %struct.Jbig2GenericRegionParams*, i8*, i64, %struct._Jbig2Image*) #2

declare i32 @jbig2_image_compose(%struct._Jbig2Ctx*, %struct._Jbig2Image*, %struct._Jbig2Image*, i32, i32, i32) #2

declare void @jbig2_arith_int_ctx_free(%struct._Jbig2Ctx*, %struct._Jbig2ArithIntCtx*) #2

declare void @jbig2_arith_iaid_ctx_free(%struct._Jbig2Ctx*, %struct._Jbig2ArithIaidCtx*) #2

declare void @jbig2_huffman_free(%struct._Jbig2Ctx*, %struct._Jbig2HuffmanState*) #2

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
!7 = !{!8, !2, i64 0}
!8 = !{!"_Jbig2Ctx", !2, i64 0, !3, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !9, i64 48, !6, i64 56, !6, i64 60, !3, i64 64, !3, i64 68, !6, i64 72, !6, i64 76, !2, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !2, i64 104}
!9 = !{!"long", !3, i64 0}
!10 = !{!11, !2, i64 8}
!11 = !{!"", !6, i64 0, !2, i64 8}
!12 = !{!11, !6, i64 0}
!13 = !{!14, !6, i64 24}
!14 = !{!"_Jbig2Segment", !6, i64 0, !3, i64 4, !6, i64 8, !9, i64 16, !6, i64 24, !2, i64 32, !2, i64 40}
!15 = !{!14, !2, i64 32}
!16 = !{!14, !3, i64 4}
!17 = !{!14, !2, i64 40}
!18 = !{!14, !6, i64 0}
!19 = !{!14, !9, i64 16}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !3, i64 0}
!22 = !{!23, !6, i64 0}
!23 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !6, i64 64, !3, i64 68, !6, i64 76, !3, i64 80}
!24 = !{!23, !6, i64 4}
!25 = !{!23, !6, i64 64}
!26 = !{!23, !6, i64 76}
!27 = !{!23, !2, i64 32}
!28 = !{!23, !2, i64 40}
!29 = !{!23, !2, i64 48}
!30 = !{!23, !2, i64 56}
!31 = !{!23, !6, i64 28}
!32 = !{!23, !6, i64 24}
!33 = !{!23, !2, i64 16}
!34 = !{!23, !6, i64 8}
!35 = !{!9, !9, i64 0}
!36 = !{!37, !6, i64 0}
!37 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !3, i64 16}
!38 = !{!37, !6, i64 4}
!39 = !{!37, !6, i64 8}
!40 = !{!37, !6, i64 12}
!41 = !{!42, !2, i64 104}
!42 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !3, i64 12, !6, i64 16, !3, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !6, i64 184, !3, i64 188}
!43 = !{!42, !2, i64 112}
!44 = !{!42, !2, i64 120}
!45 = !{!42, !2, i64 128}
!46 = !{!42, !2, i64 136}
!47 = !{!42, !2, i64 144}
!48 = !{!42, !2, i64 152}
!49 = !{!42, !2, i64 160}
!50 = !{!42, !2, i64 168}
!51 = !{!42, !2, i64 176}
!52 = !{!42, !2, i64 40}
!53 = !{!42, !2, i64 48}
!54 = !{!42, !2, i64 56}
!55 = !{!42, !2, i64 64}
!56 = !{!42, !2, i64 72}
!57 = !{!42, !2, i64 80}
!58 = !{!42, !2, i64 88}
!59 = !{!42, !6, i64 0}
!60 = !{!42, !6, i64 4}
!61 = !{!42, !6, i64 36}
!62 = !{!42, !6, i64 8}
!63 = !{!42, !3, i64 12}
!64 = !{!42, !6, i64 16}
!65 = !{!42, !3, i64 20}
!66 = !{!42, !6, i64 24}
!67 = !{!42, !6, i64 184}
!68 = !{!42, !6, i64 28}
!69 = !{!70, !6, i64 0}
!70 = !{!"", !6, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !3, i64 28}
!71 = !{!70, !2, i64 8}
!72 = !{!70, !6, i64 16}
!73 = !{!70, !6, i64 20}
!74 = !{!70, !6, i64 24}
!75 = !{!76, !6, i64 4}
!76 = !{!"_Jbig2Image", !6, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !6, i64 24}
!77 = !{!76, !6, i64 8}
!78 = !{!76, !6, i64 0}
!79 = !{!76, !2, i64 16}
