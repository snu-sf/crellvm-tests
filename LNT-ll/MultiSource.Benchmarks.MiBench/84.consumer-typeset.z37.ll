; ModuleID = './MultiSource.Benchmarks.MiBench/84.consumer-typeset.z37.bc'
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
%struct.font_rec = type { %struct.metrics*, i8*, i16*, %struct.composite_rec*, i32, %union.rec*, %union.rec*, i16, i16, i16*, i8*, i8*, i16* }
%struct.metrics = type { i16, i16, i16, i16, i16 }
%struct.composite_rec = type { i8, i16, i16 }
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct.mapvec = type { %union.rec*, i16, i32, i32, %union.rec*, [256 x %union.rec*], [353 x i8], [4 x [256 x i8]] }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.9 = type { i8, [3 x i8] }
%struct.anon.7 = type { i32, i32, i32, i8 }
%struct.anon.4 = type { i16, i16 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.6 = type { [2 x i32], [2 x i32] }

@font_curr_page = common global i32 0, align 4
@font_count = internal global i32 0, align 4
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@font_root = internal global %union.rec* null, align 8
@font_used = internal global %union.rec* null, align 8
@font_seqnum = internal global i32 0, align 4
@finfo = common global %struct.font_rec* null, align 8
@finfo_size = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"@FontDef\00", align 1
@StartSym = external global %union.rec*, align 8
@FontDefSym = internal global %union.rec* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"@Tag\00", align 1
@fd_tag = internal global %union.rec* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"@Family\00", align 1
@fd_family = internal global %union.rec* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"@Face\00", align 1
@fd_face = internal global %union.rec* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"@Name\00", align 1
@fd_name = internal global %union.rec* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"@Metrics\00", align 1
@fd_metrics = internal global %union.rec* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"@ExtraMetrics\00", align 1
@fd_extra_metrics = internal global %union.rec* null, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"@Mapping\00", align 1
@fd_mapping = internal global %union.rec* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"@Recode\00", align 1
@fd_recode = internal global %union.rec* null, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"FontChange: font_count!\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"smallcaps\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"nosmallcaps\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"error in left parameter of %s\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"@Font\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"FontChange: num!\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"initial font must have family, face and size\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"FontChange: Up(finfo[font(*style)].font_table) !\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"FontChange: type(tmpf)!\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"FontChange: Up(tmpf)!\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"FontChange: type(family)!\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"FontChange: type(face)!\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"FontChange: Up(face)!\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"FontChange fr!\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"FontChange requested_face!\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"font family name %s must be followed by a face name\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"there is no font with family name %s and face name %s\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"FontChange: no children!\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"FontChange: 1 child!\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"FontChange: 2 children!\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"syntax error in font size %s; ignoring it\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"no current font on which to base size change %s\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"FontChange: %d\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"%s %s ignored (result is not positive)\00", align 1
@BackEnd = external global %struct.back_end_rec*, align 8
@PlainCharHeight = external global i32, align 4
@.str.36 = private unnamed_addr constant [47 x i8] c"too many different fonts and sizes (max is %d)\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"run out of memory when increasing font table size\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"FontChange: old!\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.39 = private unnamed_addr constant [50 x i8] c"run out of memory when changing font or font size\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"FontWordSize: !is_word(type(x))!\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"no current font at word %s\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"no current colour at word %s\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"no current language at word %s\00", align 1
@MapTable = external global [0 x %struct.mapvec*], align 8
@.str.44 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.45 = private unnamed_addr constant [60 x i8] c"character %s replaced by space (it has no glyph in font %s)\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"FontSize!\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"no current font at this point\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"FontHalfXHeight!\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"FontMapping!\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"FontName!\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"FontFamiliy!\00", align 1
@FontFamilyAndFace.buff = internal global [80 x i8] zeroinitializer, align 16
@.str.52 = private unnamed_addr constant [41 x i8] c"family and face names %s %s are too long\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"FontDebug: font_root!\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"FontPrintAll: family!\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"FontPrintAll: face!\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"FontDebug: Down(face)!\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"FontPrintAll: ps_name!\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"FontPrintAll: first_size!\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"/%s%s %s /%s LoutRecode\0A\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"/%s { /%s%s LoutFont } def\0A\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"/%s { /%s LoutFont } def\0A\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"FontDebug: font_used!\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"FontPrintPageSetup: face!\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"FontPrintPageSetup: first_size!\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"FontPrintPageSetup: ps_name!\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"FontPrintPageResources: face!\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"FontPrintPageResources: ps_name!\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"FontPageUsed!\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"%s font %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"%%DocumentNeededResources:\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"%%+\00", align 1
@.str.73 = private unnamed_addr constant [52 x i8] c"unable to set font %s %s (no font databases loaded)\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"cannot read %s for %s\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"FontRead: type(y) != PAR!\00", align 1
@.str.77 = private unnamed_addr constant [50 x i8] c"font family name %s incompatible with %s value %s\00", align 1
@.str.78 = private unnamed_addr constant [48 x i8] c"font face name %s incompatible with %s value %s\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"illegal font name (quotes needed?)\00", align 1
@.str.80 = private unnamed_addr constant [48 x i8] c"illegal font metrics file name (quotes needed?)\00", align 1
@.str.81 = private unnamed_addr constant [54 x i8] c"illegal font extra metrics file name (quotes needed?)\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"illegal mapping file name (quotes needed?)\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"illegal value of %s\00", align 1
@.str.84 = private unnamed_addr constant [47 x i8] c"FontRead: cannot identify component of FontDef\00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c"font %s %s already defined, at%s\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.88 = private unnamed_addr constant [32 x i8] c"expecting either Yes or No here\00", align 1
@.str.89 = private unnamed_addr constant [51 x i8] c"too many different fonts and sizes (maximum is %d)\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"fnt\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"cannot open font file %s\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"StartFontMetrics\00", align 1
@.str.94 = private unnamed_addr constant [50 x i8] c"font file %s does not begin with StartFontMetrics\00", align 1
@.str.95 = private unnamed_addr constant [45 x i8] c"run out of memory while reading font file %s\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"EndFontMetrics\0A\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"UnderlinePosition\00", align 1
@.str.98 = private unnamed_addr constant [53 x i8] c"UnderlinePosition found twice in font file (line %d)\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"UnderlinePosition %f\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"UnderlineThickness\00", align 1
@.str.101 = private unnamed_addr constant [54 x i8] c"UnderlineThickness found twice in font file (line %d)\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"UnderlineThickness %f\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"XHeight\00", align 1
@.str.104 = private unnamed_addr constant [43 x i8] c"XHeight found twice in font file (line %d)\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"XHeight %f\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.107 = private unnamed_addr constant [47 x i8] c"FontName found twice in font file %s (line %d)\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"FontName %s\00", align 1
@.str.109 = private unnamed_addr constant [41 x i8] c"FontName empty in font file %s (line %d)\00", align 1
@.str.110 = private unnamed_addr constant [48 x i8] c"FontName in font file (%s) and %s (%s) disagree\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"IsFixedPitch\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"IsFixedPitch %s\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"StartCharMetrics\00", align 1
@.str.115 = private unnamed_addr constant [28 x i8] c"FontName missing in file %s\00", align 1
@Kern = external global i32, align 4
@.str.116 = private unnamed_addr constant [15 x i8] c"StartKernPairs\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"StartKernPairs %d\00", align 1
@.str.118 = private unnamed_addr constant [62 x i8] c"syntax error on StartKernPairs line in font file %s (line %d)\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"EndKernPairs\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"KPX\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"KPX %s %s %f\00", align 1
@.str.122 = private unnamed_addr constant [43 x i8] c"syntax error in font file %s (line %d): %s\00", align 1
@.str.123 = private unnamed_addr constant [60 x i8] c"non-contiguous kerning pair %s %s in font file %s (line %d)\00", align 1
@.str.124 = private unnamed_addr constant [49 x i8] c"too many kerning pairs in font file %s (line %d)\00", align 1
@.str.125 = private unnamed_addr constant [59 x i8] c"kerning pair %s %s appears twice in font file %s (line %d)\00", align 1
@.str.126 = private unnamed_addr constant [41 x i8] c"EndFontMetrics missing from font file %s\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.128 = private unnamed_addr constant [31 x i8] c"cannot open extra font file %s\00", align 1
@.str.129 = private unnamed_addr constant [22 x i8] c"StartExtraCharMetrics\00", align 1
@.str.130 = private unnamed_addr constant [21 x i8] c"StartBuildComposites\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"EndCharMetrics\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"EndExtraCharMetrics\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"N %s\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"WX\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"WX %f\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"B %f %f %f %f\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.140 = private unnamed_addr constant [67 x i8] c"ignoring unencoded ligature character %s in font file %s (line %d)\00", align 1
@.str.141 = private unnamed_addr constant [55 x i8] c"too many ligature characters in font file %s (line %d)\00", align 1
@.str.142 = private unnamed_addr constant [37 x i8] c"WX missing in font file %s (line %d)\00", align 1
@.str.143 = private unnamed_addr constant [36 x i8] c"B missing in font file %s (line %d)\00", align 1
@PlainCharWidth = external global i32, align 4
@.str.144 = private unnamed_addr constant [3 x i8] c"CC\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"CC %s %d \00", align 1
@.str.146 = private unnamed_addr constant [45 x i8] c"syntax error in extra font file %s (line %d)\00", align 1
@.str.147 = private unnamed_addr constant [52 x i8] c"unknown character name %s in font file %s (line %d)\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c" PCC %s %d %d\00", align 1
@.str.149 = private unnamed_addr constant [44 x i8] c"too many composites in file %s (at line %d)\00", align 1
@.str.150 = private unnamed_addr constant [19 x i8] c"EndBuildComposites\00", align 1
@.str.151 = private unnamed_addr constant [59 x i8] c"missing EndBuildComposites in extra font file %s (line %d)\00", align 1

; Function Attrs: nounwind uwtable
define void @FontInit() #0 {
entry:
  store i32 1, i32* @font_curr_page, align 4
  store i32 0, i32* @font_count, align 4
  %0 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv = zext i8 %0 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv1 = sext i32 %conv to i64
  %cmp = icmp uge i64 %conv1, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1)
  br label %if.end.13

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %3 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp3 = icmp eq %union.rec* %3, null
  br i1 %cmp3, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %4 = load i32, i32* @zz_size, align 4
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call6 = call %union.rec* @GetMemory(i32 %4, %struct.FILE_POS* %5)
  store %union.rec* %call6, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.7:                                        ; preds = %if.else
  %6 = load i32, i32* @zz_size, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom8
  %7 = load %union.rec*, %union.rec** %arrayidx9, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  %8 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  %10 = load i32, i32* @zz_size, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom11
  store %union.rec* %9, %union.rec** %arrayidx12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.5
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os114 = bitcast %union.rec* %11 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 17, i8* %otype, align 1
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %13 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os115 = bitcast %union.rec* %13 to %struct.word_type*
  %olist16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist16, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx17, i32 0, i32 1
  store %union.rec* %12, %union.rec** %osucc, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os118 = bitcast %union.rec* %14 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %opred21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  store %union.rec* %12, %union.rec** %opred21, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %15 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 0
  %osucc25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  store %union.rec* %12, %union.rec** %osucc25, align 8
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os126 = bitcast %union.rec* %16 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 0
  %opred29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 0
  store %union.rec* %12, %union.rec** %opred29, align 8
  store %union.rec* %12, %union.rec** @font_root, align 8
  %17 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv30 = zext i8 %17 to i32
  store i32 %conv30, i32* @zz_size, align 4
  %conv31 = sext i32 %conv30 to i64
  %cmp32 = icmp uge i64 %conv31, 265
  br i1 %cmp32, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.end.13
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call35 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %18)
  br label %if.end.53

if.else.36:                                       ; preds = %if.end.13
  %19 = load i32, i32* @zz_size, align 4
  %idxprom37 = sext i32 %19 to i64
  %arrayidx38 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom37
  %20 = load %union.rec*, %union.rec** %arrayidx38, align 8
  %cmp39 = icmp eq %union.rec* %20, null
  br i1 %cmp39, label %if.then.41, label %if.else.43

if.then.41:                                       ; preds = %if.else.36
  %21 = load i32, i32* @zz_size, align 4
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call42 = call %union.rec* @GetMemory(i32 %21, %struct.FILE_POS* %22)
  store %union.rec* %call42, %union.rec** @zz_hold, align 8
  br label %if.end.52

if.else.43:                                       ; preds = %if.else.36
  %23 = load i32, i32* @zz_size, align 4
  %idxprom44 = sext i32 %23 to i64
  %arrayidx45 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom44
  %24 = load %union.rec*, %union.rec** %arrayidx45, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os146 = bitcast %union.rec* %25 to %struct.word_type*
  %olist47 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist47, i32 0, i64 0
  %opred49 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx48, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %opred49, align 8
  %27 = load i32, i32* @zz_size, align 4
  %idxprom50 = sext i32 %27 to i64
  %arrayidx51 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom50
  store %union.rec* %26, %union.rec** %arrayidx51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.43, %if.then.41
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.34
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os154 = bitcast %union.rec* %28 to %struct.word_type*
  %ou155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 1
  %os1156 = bitcast %union.FIRST_UNION* %ou155 to %struct.anon*
  %otype57 = getelementptr inbounds %struct.anon, %struct.anon* %os1156, i32 0, i32 0
  store i8 17, i8* %otype57, align 1
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %30 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os158 = bitcast %union.rec* %30 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 1
  %osucc61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 1
  store %union.rec* %29, %union.rec** %osucc61, align 8
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os162 = bitcast %union.rec* %31 to %struct.word_type*
  %olist63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist63, i32 0, i64 1
  %opred65 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx64, i32 0, i32 0
  store %union.rec* %29, %union.rec** %opred65, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os166 = bitcast %union.rec* %32 to %struct.word_type*
  %olist67 = getelementptr inbounds %struct.word_type, %struct.word_type* %os166, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist67, i32 0, i64 0
  %osucc69 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx68, i32 0, i32 1
  store %union.rec* %29, %union.rec** %osucc69, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os170 = bitcast %union.rec* %33 to %struct.word_type*
  %olist71 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist71, i32 0, i64 0
  %opred73 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx72, i32 0, i32 0
  store %union.rec* %29, %union.rec** %opred73, align 8
  store %union.rec* %29, %union.rec** @font_used, align 8
  store i32 0, i32* @font_seqnum, align 4
  %call74 = call noalias i8* @malloc(i64 9600) #4
  %34 = bitcast i8* %call74 to %struct.font_rec*
  store %struct.font_rec* %34, %struct.font_rec** @finfo, align 8
  store i32 100, i32* @finfo_size, align 4
  %35 = load %union.rec*, %union.rec** @StartSym, align 8
  %call75 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 143, %union.rec* %35, i32 0)
  store %union.rec* %call75, %union.rec** @FontDefSym, align 8
  %36 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %call76 = call %union.rec* @load(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 145, %union.rec* %36, i32 1)
  store %union.rec* %call76, %union.rec** @fd_tag, align 8
  %37 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %call77 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 145, %union.rec* %37, i32 1)
  store %union.rec* %call77, %union.rec** @fd_family, align 8
  %38 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %call78 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 145, %union.rec* %38, i32 1)
  store %union.rec* %call78, %union.rec** @fd_face, align 8
  %39 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %call79 = call %union.rec* @load(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 145, %union.rec* %39, i32 1)
  store %union.rec* %call79, %union.rec** @fd_name, align 8
  %40 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %call80 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 145, %union.rec* %40, i32 1)
  store %union.rec* %call80, %union.rec** @fd_metrics, align 8
  %41 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %call81 = call %union.rec* @load(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 145, %union.rec* %41, i32 0)
  store %union.rec* %call81, %union.rec** @fd_extra_metrics, align 8
  %42 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %call82 = call %union.rec* @load(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 145, %union.rec* %42, i32 1)
  store %union.rec* %call82, %union.rec** @fd_mapping, align 8
  %43 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %call83 = call %union.rec* @load(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 145, %union.rec* %43, i32 0)
  store %union.rec* %call83, %union.rec** @fd_recode, align 8
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal %union.rec* @load(i8* %name, i32 %dtype, %union.rec* %encl, i32 %compulsory) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %dtype.addr = alloca i32, align 4
  %encl.addr = alloca %union.rec*, align 8
  %compulsory.addr = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %dtype, i32* %dtype.addr, align 4
  store %union.rec* %encl, %union.rec** %encl.addr, align 8
  store i32 %compulsory, i32* %compulsory.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %dtype.addr, align 4
  %conv = trunc i32 %1 to i8
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3 = load %union.rec*, %union.rec** %encl.addr, align 8
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), %struct.FILE_POS* %4)
  %call1 = call %union.rec* @InsertSym(i8* %0, i8 zeroext %conv, %struct.FILE_POS* %2, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %3, %union.rec* %call)
  store %union.rec* %call1, %union.rec** %res, align 8
  %5 = load i32, i32* %dtype.addr, align 4
  %cmp = icmp eq i32 %5, 145
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %union.rec*, %union.rec** %res, align 8
  %os1 = bitcast %union.rec* %6 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os26 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.5*
  %ovisible = getelementptr inbounds %struct.anon.5, %struct.anon.5* %os26, i32 0, i32 1
  %7 = bitcast [3 x i8]* %ovisible to i24*
  %bf.load = load i24, i24* %7, align 1
  %bf.clear = and i24 %bf.load, -65537
  %bf.set = or i24 %bf.clear, 65536
  store i24 %bf.set, i24* %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %compulsory.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %9 = load %union.rec*, %union.rec** %encl.addr, align 8
  %os6 = bitcast %union.rec* %9 to %struct.symbol_type*
  %ohas_compulsory = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 13
  %10 = load i16, i16* %ohas_compulsory, align 2
  %inc = add i16 %10, 1
  store i16 %inc, i16* %ohas_compulsory, align 2
  %11 = load %union.rec*, %union.rec** %res, align 8
  %os64 = bitcast %union.rec* %11 to %struct.symbol_type*
  %ois_compulsory = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os64, i32 0, i32 16
  %bf.load5 = load i8, i8* %ois_compulsory, align 2
  %bf.clear6 = and i8 %bf.load5, -65
  %bf.set7 = or i8 %bf.clear6, 64
  store i8 %bf.set7, i8* %ois_compulsory, align 2
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.3, %if.end
  %12 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %12
}

; Function Attrs: nounwind uwtable
define void @FontChange(%struct.STYLE* %style, %union.rec* %x) #0 {
entry:
  %style.addr = alloca %struct.STYLE*, align 8
  %x.addr = alloca %union.rec*, align 8
  %i = alloca i32, align 4
  %requested_family = alloca %union.rec*, align 8
  %requested_face = alloca %union.rec*, align 8
  %requested_size = alloca %union.rec*, align 8
  %par = alloca [3 x %union.rec*], align 16
  %family = alloca %union.rec*, align 8
  %face = alloca %union.rec*, align 8
  %fsize = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %new = alloca %union.rec*, align 8
  %old = alloca %union.rec*, align 8
  %tmpf = alloca %union.rec*, align 8
  %gp = alloca %struct.GAP, align 4
  %flen = alloca i16, align 2
  %num = alloca i32, align 4
  %c = alloca i32, align 4
  %inc = alloca i32, align 4
  %newfnt = alloca %struct.metrics*, align 8
  %oldfnt = alloca %struct.metrics*, align 8
  %lig = alloca i8*, align 8
  %cmptop = alloca i32, align 4
  %oldcmp = alloca %struct.composite_rec*, align 8
  %newcmp = alloca %struct.composite_rec*, align 8
  %oldks = alloca i16*, align 8
  %newks = alloca i16*, align 8
  %klen = alloca i32, align 4
  store %struct.STYLE* %style, %struct.STYLE** %style.addr, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont = getelementptr inbounds %struct.STYLE, %struct.STYLE* %0, i32 0, i32 4
  %bf.load = load i32, i32* %ofont, align 4
  %bf.clear = and i32 %bf.load, 4095
  %1 = load i32, i32* @font_count, align 4
  %cmp = icmp ule i32 %bf.clear, %1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %num, align 4
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %3 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %4 = load i8, i8* %otype, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 5
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  br label %if.end.176

if.else:                                          ; preds = %if.end
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os14 = bitcast %union.rec* %5 to %struct.word_type*
  %ou15 = getelementptr inbounds %struct.word_type, %struct.word_type* %os14, i32 0, i32 1
  %os116 = bitcast %union.FIRST_UNION* %ou15 to %struct.anon*
  %otype7 = getelementptr inbounds %struct.anon, %struct.anon* %os116, i32 0, i32 0
  %6 = load i8, i8* %otype7, align 1
  %conv8 = zext i8 %6 to i32
  %cmp9 = icmp eq i32 %conv8, 11
  br i1 %cmp9, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %os111 = bitcast %union.rec* %7 to %struct.word_type*
  %ou112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 1
  %os1113 = bitcast %union.FIRST_UNION* %ou112 to %struct.anon*
  %otype14 = getelementptr inbounds %struct.anon, %struct.anon* %os1113, i32 0, i32 0
  %8 = load i8, i8* %otype14, align 1
  %conv15 = zext i8 %8 to i32
  %cmp16 = icmp eq i32 %conv15, 12
  br i1 %cmp16, label %if.then.18, label %if.else.50

if.then.18:                                       ; preds = %lor.lhs.false, %if.else
  %9 = load %union.rec*, %union.rec** %x.addr, align 8
  %os119 = bitcast %union.rec* %9 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call20 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #5
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %if.then.18
  %10 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %10, i32 0, i32 0
  %oss1 = bitcast %union.anon* %osu1 to %struct.anon.9*
  %11 = bitcast %struct.anon.9* %oss1 to i8*
  %bf.load24 = load i8, i8* %11, align 4
  %bf.clear25 = and i8 %bf.load24, -9
  %bf.set = or i8 %bf.clear25, 8
  store i8 %bf.set, i8* %11, align 4
  br label %if.end.49

if.else.26:                                       ; preds = %if.then.18
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os127 = bitcast %union.rec* %12 to %struct.word_type*
  %ostring28 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 4
  %arraydecay29 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring28, i32 0, i32 0
  %call30 = call i32 @strcmp(i8* %arraydecay29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)) #5
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.else.38

if.then.33:                                       ; preds = %if.else.26
  %13 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu134 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %13, i32 0, i32 0
  %oss135 = bitcast %union.anon* %osu134 to %struct.anon.9*
  %14 = bitcast %struct.anon.9* %oss135 to i8*
  %bf.load36 = load i8, i8* %14, align 4
  %bf.clear37 = and i8 %bf.load36, -9
  store i8 %bf.clear37, i8* %14, align 4
  br label %if.end.48

if.else.38:                                       ; preds = %if.else.26
  %15 = load %union.rec*, %union.rec** %x.addr, align 8
  %os139 = bitcast %union.rec* %15 to %struct.word_type*
  %ostring40 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 4
  %arraydecay41 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring40, i32 0, i32 0
  %call42 = call i32 @strcmp(i8* %arraydecay41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0)) #5
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.end.47, label %if.then.45

if.then.45:                                       ; preds = %if.else.38
  %16 = load %union.rec*, %union.rec** %x.addr, align 8
  %17 = load i32, i32* %num, align 4
  %inc46 = add nsw i32 %17, 1
  store i32 %inc46, i32* %num, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 %idxprom
  store %union.rec* %16, %union.rec** %arrayidx, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.else.38
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.33
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.23
  br label %if.end.175

if.else.50:                                       ; preds = %lor.lhs.false
  %18 = load %union.rec*, %union.rec** %x.addr, align 8
  %os151 = bitcast %union.rec* %18 to %struct.word_type*
  %ou152 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 1
  %os1153 = bitcast %union.FIRST_UNION* %ou152 to %struct.anon*
  %otype54 = getelementptr inbounds %struct.anon, %struct.anon* %os1153, i32 0, i32 0
  %19 = load i8, i8* %otype54, align 1
  %conv55 = zext i8 %19 to i32
  %cmp56 = icmp eq i32 %conv55, 17
  br i1 %cmp56, label %if.then.58, label %if.else.169

if.then.58:                                       ; preds = %if.else.50
  %20 = load %union.rec*, %union.rec** %x.addr, align 8
  %os159 = bitcast %union.rec* %20 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 1
  %21 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %21, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.163, %if.then.58
  %22 = load %union.rec*, %union.rec** %link, align 8
  %23 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp61 = icmp ne %union.rec* %22, %23
  br i1 %cmp61, label %for.body, label %for.end.168

for.body:                                         ; preds = %for.cond
  %24 = load %union.rec*, %union.rec** %link, align 8
  %os163 = bitcast %union.rec* %24 to %struct.word_type*
  %olist64 = getelementptr inbounds %struct.word_type, %struct.word_type* %os163, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist64, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx65, i32 0, i32 0
  %25 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %25, %union.rec** %y, align 8
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc, %for.body
  %26 = load %union.rec*, %union.rec** %y, align 8
  %os167 = bitcast %union.rec* %26 to %struct.word_type*
  %ou168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os167, i32 0, i32 1
  %os1169 = bitcast %union.FIRST_UNION* %ou168 to %struct.anon*
  %otype70 = getelementptr inbounds %struct.anon, %struct.anon* %os1169, i32 0, i32 0
  %27 = load i8, i8* %otype70, align 1
  %conv71 = zext i8 %27 to i32
  %cmp72 = icmp eq i32 %conv71, 0
  br i1 %cmp72, label %for.body.74, label %for.end

for.body.74:                                      ; preds = %for.cond.66
  br label %for.inc

for.inc:                                          ; preds = %for.body.74
  %28 = load %union.rec*, %union.rec** %y, align 8
  %os175 = bitcast %union.rec* %28 to %struct.word_type*
  %olist76 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist76, i32 0, i64 1
  %opred78 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx77, i32 0, i32 0
  %29 = load %union.rec*, %union.rec** %opred78, align 8
  store %union.rec* %29, %union.rec** %y, align 8
  br label %for.cond.66

for.end:                                          ; preds = %for.cond.66
  %30 = load %union.rec*, %union.rec** %y, align 8
  %os179 = bitcast %union.rec* %30 to %struct.word_type*
  %ou180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os179, i32 0, i32 1
  %os1181 = bitcast %union.FIRST_UNION* %ou180 to %struct.anon*
  %otype82 = getelementptr inbounds %struct.anon, %struct.anon* %os1181, i32 0, i32 0
  %31 = load i8, i8* %otype82, align 1
  %conv83 = zext i8 %31 to i32
  %cmp84 = icmp eq i32 %conv83, 1
  br i1 %cmp84, label %if.then.94, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %for.end
  %32 = load %union.rec*, %union.rec** %y, align 8
  %os187 = bitcast %union.rec* %32 to %struct.word_type*
  %ou188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 1
  %os1189 = bitcast %union.FIRST_UNION* %ou188 to %struct.anon*
  %otype90 = getelementptr inbounds %struct.anon, %struct.anon* %os1189, i32 0, i32 0
  %33 = load i8, i8* %otype90, align 1
  %conv91 = zext i8 %33 to i32
  %cmp92 = icmp eq i32 %conv91, 5
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %lor.lhs.false.86, %for.end
  br label %for.inc.163

if.end.95:                                        ; preds = %lor.lhs.false.86
  %34 = load %union.rec*, %union.rec** %y, align 8
  %os196 = bitcast %union.rec* %34 to %struct.word_type*
  %ou197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os196, i32 0, i32 1
  %os1198 = bitcast %union.FIRST_UNION* %ou197 to %struct.anon*
  %otype99 = getelementptr inbounds %struct.anon, %struct.anon* %os1198, i32 0, i32 0
  %35 = load i8, i8* %otype99, align 1
  %conv100 = zext i8 %35 to i32
  %cmp101 = icmp eq i32 %conv100, 11
  br i1 %cmp101, label %if.then.111, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %if.end.95
  %36 = load %union.rec*, %union.rec** %y, align 8
  %os1104 = bitcast %union.rec* %36 to %struct.word_type*
  %ou1105 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1104, i32 0, i32 1
  %os11106 = bitcast %union.FIRST_UNION* %ou1105 to %struct.anon*
  %otype107 = getelementptr inbounds %struct.anon, %struct.anon* %os11106, i32 0, i32 0
  %37 = load i8, i8* %otype107, align 1
  %conv108 = zext i8 %37 to i32
  %cmp109 = icmp eq i32 %conv108, 12
  br i1 %cmp109, label %if.then.111, label %if.else.157

if.then.111:                                      ; preds = %lor.lhs.false.103, %if.end.95
  %38 = load %union.rec*, %union.rec** %y, align 8
  %os1112 = bitcast %union.rec* %38 to %struct.word_type*
  %ostring113 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1112, i32 0, i32 4
  %arraydecay114 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring113, i32 0, i32 0
  %call115 = call i32 @strcmp(i8* %arraydecay114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #5
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.then.118, label %if.else.124

if.then.118:                                      ; preds = %if.then.111
  %39 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1119 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %39, i32 0, i32 0
  %oss1120 = bitcast %union.anon* %osu1119 to %struct.anon.9*
  %40 = bitcast %struct.anon.9* %oss1120 to i8*
  %bf.load121 = load i8, i8* %40, align 4
  %bf.clear122 = and i8 %bf.load121, -9
  %bf.set123 = or i8 %bf.clear122, 8
  store i8 %bf.set123, i8* %40, align 4
  br label %if.end.156

if.else.124:                                      ; preds = %if.then.111
  %41 = load %union.rec*, %union.rec** %y, align 8
  %os1125 = bitcast %union.rec* %41 to %struct.word_type*
  %ostring126 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 4
  %arraydecay127 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring126, i32 0, i32 0
  %call128 = call i32 @strcmp(i8* %arraydecay127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)) #5
  %cmp129 = icmp eq i32 %call128, 0
  br i1 %cmp129, label %if.then.131, label %if.else.136

if.then.131:                                      ; preds = %if.else.124
  %42 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu1132 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %42, i32 0, i32 0
  %oss1133 = bitcast %union.anon* %osu1132 to %struct.anon.9*
  %43 = bitcast %struct.anon.9* %oss1133 to i8*
  %bf.load134 = load i8, i8* %43, align 4
  %bf.clear135 = and i8 %bf.load134, -9
  store i8 %bf.clear135, i8* %43, align 4
  br label %if.end.155

if.else.136:                                      ; preds = %if.else.124
  %44 = load %union.rec*, %union.rec** %y, align 8
  %os1137 = bitcast %union.rec* %44 to %struct.word_type*
  %ostring138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1137, i32 0, i32 4
  %arraydecay139 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring138, i32 0, i32 0
  %call140 = call i32 @strcmp(i8* %arraydecay139, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0)) #5
  %cmp141 = icmp eq i32 %call140, 0
  br i1 %cmp141, label %if.end.154, label %if.then.143

if.then.143:                                      ; preds = %if.else.136
  %45 = load i32, i32* %num, align 4
  %cmp144 = icmp sge i32 %45, 3
  br i1 %cmp144, label %if.then.146, label %if.end.150

if.then.146:                                      ; preds = %if.then.143
  %46 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1147 = bitcast %union.rec* %46 to %struct.word_type*
  %ou1148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1147, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1148 to %struct.FILE_POS*
  %call149 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.150:                                       ; preds = %if.then.143
  %47 = load %union.rec*, %union.rec** %y, align 8
  %48 = load i32, i32* %num, align 4
  %inc151 = add nsw i32 %48, 1
  store i32 %inc151, i32* %num, align 4
  %idxprom152 = sext i32 %48 to i64
  %arrayidx153 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 %idxprom152
  store %union.rec* %47, %union.rec** %arrayidx153, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.150, %if.else.136
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.131
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.118
  br label %if.end.162

if.else.157:                                      ; preds = %lor.lhs.false.103
  %49 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1158 = bitcast %union.rec* %49 to %struct.word_type*
  %ou1159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1158, i32 0, i32 1
  %ofpos160 = bitcast %union.FIRST_UNION* %ou1159 to %struct.FILE_POS*
  %call161 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.162:                                       ; preds = %if.end.156
  br label %for.inc.163

for.inc.163:                                      ; preds = %if.end.162, %if.then.94
  %50 = load %union.rec*, %union.rec** %link, align 8
  %os1164 = bitcast %union.rec* %50 to %struct.word_type*
  %olist165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1164, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist165, i32 0, i64 0
  %osucc167 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx166, i32 0, i32 1
  %51 = load %union.rec*, %union.rec** %osucc167, align 8
  store %union.rec* %51, %union.rec** %link, align 8
  br label %for.cond

for.end.168:                                      ; preds = %for.cond
  br label %if.end.174

if.else.169:                                      ; preds = %if.else.50
  %52 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1170 = bitcast %union.rec* %52 to %struct.word_type*
  %ou1171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 1
  %ofpos172 = bitcast %union.FIRST_UNION* %ou1171 to %struct.FILE_POS*
  %call173 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.174:                                       ; preds = %for.end.168
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.49
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.3
  %53 = load i32, i32* %num, align 4
  %cmp177 = icmp eq i32 %53, 0
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.end.176
  br label %return

if.end.180:                                       ; preds = %if.end.176
  %54 = load i32, i32* %num, align 4
  %cmp181 = icmp sge i32 %54, 1
  br i1 %cmp181, label %land.lhs.true, label %if.then.185

land.lhs.true:                                    ; preds = %if.end.180
  %55 = load i32, i32* %num, align 4
  %cmp183 = icmp sle i32 %55, 3
  br i1 %cmp183, label %if.end.187, label %if.then.185

if.then.185:                                      ; preds = %land.lhs.true, %if.end.180
  %56 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call186 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.185, %land.lhs.true
  store %union.rec* null, %union.rec** %requested_size, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.224, %if.end.187
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %num, align 4
  %cmp189 = icmp slt i32 %57, %58
  br i1 %cmp189, label %for.body.191, label %for.end.226

for.body.191:                                     ; preds = %for.cond.188
  %59 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %59 to i64
  %arrayidx193 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 %idxprom192
  %60 = load %union.rec*, %union.rec** %arrayidx193, align 8
  %os1194 = bitcast %union.rec* %60 to %struct.word_type*
  %ostring195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1194, i32 0, i32 4
  %arrayidx196 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring195, i32 0, i64 0
  %61 = load i8, i8* %arrayidx196, align 1
  %conv197 = zext i8 %61 to i32
  store i32 %conv197, i32* %c, align 4
  %62 = load i32, i32* %c, align 4
  %cmp198 = icmp eq i32 %62, 43
  br i1 %cmp198, label %if.then.209, label %lor.lhs.false.200

lor.lhs.false.200:                                ; preds = %for.body.191
  %63 = load i32, i32* %c, align 4
  %cmp201 = icmp eq i32 %63, 45
  br i1 %cmp201, label %if.then.209, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %lor.lhs.false.200
  %64 = load i32, i32* %c, align 4
  %cmp204 = icmp sge i32 %64, 48
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.223

land.lhs.true.206:                                ; preds = %lor.lhs.false.203
  %65 = load i32, i32* %c, align 4
  %cmp207 = icmp sle i32 %65, 57
  br i1 %cmp207, label %if.then.209, label %if.end.223

if.then.209:                                      ; preds = %land.lhs.true.206, %lor.lhs.false.200, %for.body.191
  %66 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %66 to i64
  %arrayidx211 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 %idxprom210
  %67 = load %union.rec*, %union.rec** %arrayidx211, align 8
  store %union.rec* %67, %union.rec** %requested_size, align 8
  %68 = load i32, i32* %i, align 4
  %add = add nsw i32 %68, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.220, %if.then.209
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %num, align 4
  %cmp213 = icmp slt i32 %69, %70
  br i1 %cmp213, label %for.body.215, label %for.end.222

for.body.215:                                     ; preds = %for.cond.212
  %71 = load i32, i32* %i, align 4
  %idxprom216 = sext i32 %71 to i64
  %arrayidx217 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 %idxprom216
  %72 = load %union.rec*, %union.rec** %arrayidx217, align 8
  %73 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %73, 1
  %idxprom218 = sext i32 %sub to i64
  %arrayidx219 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 %idxprom218
  store %union.rec* %72, %union.rec** %arrayidx219, align 8
  br label %for.inc.220

for.inc.220:                                      ; preds = %for.body.215
  %74 = load i32, i32* %i, align 4
  %inc221 = add nsw i32 %74, 1
  store i32 %inc221, i32* %i, align 4
  br label %for.cond.212

for.end.222:                                      ; preds = %for.cond.212
  %75 = load i32, i32* %num, align 4
  %dec = add nsw i32 %75, -1
  store i32 %dec, i32* %num, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %for.end.222, %land.lhs.true.206, %lor.lhs.false.203
  br label %for.inc.224

for.inc.224:                                      ; preds = %if.end.223
  %76 = load i32, i32* %i, align 4
  %inc225 = add nsw i32 %76, 1
  store i32 %inc225, i32* %i, align 4
  br label %for.cond.188

for.end.226:                                      ; preds = %for.cond.188
  %77 = load i32, i32* %num, align 4
  switch i32 %77, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.227
    i32 2, label %sw.bb.229
  ]

sw.bb:                                            ; preds = %for.end.226
  store %union.rec* null, %union.rec** %requested_face, align 8
  store %union.rec* null, %union.rec** %requested_family, align 8
  br label %sw.epilog

sw.bb.227:                                        ; preds = %for.end.226
  store %union.rec* null, %union.rec** %requested_family, align 8
  %arrayidx228 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 0
  %78 = load %union.rec*, %union.rec** %arrayidx228, align 8
  store %union.rec* %78, %union.rec** %requested_face, align 8
  br label %sw.epilog

sw.bb.229:                                        ; preds = %for.end.226
  %arrayidx230 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 0
  %79 = load %union.rec*, %union.rec** %arrayidx230, align 8
  store %union.rec* %79, %union.rec** %requested_family, align 8
  %arrayidx231 = getelementptr inbounds [3 x %union.rec*], [3 x %union.rec*]* %par, i32 0, i64 1
  %80 = load %union.rec*, %union.rec** %arrayidx231, align 8
  store %union.rec* %80, %union.rec** %requested_face, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.226
  %81 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1232 = bitcast %union.rec* %81 to %struct.word_type*
  %ou1233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 1
  %ofpos234 = bitcast %union.FIRST_UNION* %ou1233 to %struct.FILE_POS*
  %call235 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  br label %return

sw.epilog:                                        ; preds = %sw.bb.229, %sw.bb.227, %sw.bb
  %82 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont236 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %82, i32 0, i32 4
  %bf.load237 = load i32, i32* %ofont236, align 4
  %bf.clear238 = and i32 %bf.load237, 4095
  %cmp239 = icmp eq i32 %bf.clear238, 0
  br i1 %cmp239, label %land.lhs.true.241, label %if.end.255

land.lhs.true.241:                                ; preds = %sw.epilog
  %83 = load %union.rec*, %union.rec** %requested_size, align 8
  %cmp242 = icmp eq %union.rec* %83, null
  br i1 %cmp242, label %if.then.250, label %lor.lhs.false.244

lor.lhs.false.244:                                ; preds = %land.lhs.true.241
  %84 = load %union.rec*, %union.rec** %requested_family, align 8
  %cmp245 = icmp eq %union.rec* %84, null
  br i1 %cmp245, label %if.then.250, label %lor.lhs.false.247

lor.lhs.false.247:                                ; preds = %lor.lhs.false.244
  %85 = load %union.rec*, %union.rec** %requested_face, align 8
  %cmp248 = icmp eq %union.rec* %85, null
  br i1 %cmp248, label %if.then.250, label %if.end.255

if.then.250:                                      ; preds = %lor.lhs.false.247, %lor.lhs.false.244, %land.lhs.true.241
  %86 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1251 = bitcast %union.rec* %86 to %struct.word_type*
  %ou1252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1251, i32 0, i32 1
  %ofpos253 = bitcast %union.FIRST_UNION* %ou1252 to %struct.FILE_POS*
  %call254 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos253)
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.250, %lor.lhs.false.247, %sw.epilog
  store %union.rec* null, %union.rec** %family, align 8
  %87 = load %union.rec*, %union.rec** %requested_family, align 8
  %cmp256 = icmp ne %union.rec* %87, null
  br i1 %cmp256, label %if.then.258, label %if.else.307

if.then.258:                                      ; preds = %if.end.255
  %88 = load %union.rec*, %union.rec** @font_root, align 8
  %os1259 = bitcast %union.rec* %88 to %struct.word_type*
  %olist260 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1259, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist260, i32 0, i64 0
  %osucc262 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx261, i32 0, i32 1
  %89 = load %union.rec*, %union.rec** %osucc262, align 8
  store %union.rec* %89, %union.rec** %link, align 8
  br label %for.cond.263

for.cond.263:                                     ; preds = %for.inc.297, %if.then.258
  %90 = load %union.rec*, %union.rec** %link, align 8
  %91 = load %union.rec*, %union.rec** @font_root, align 8
  %cmp264 = icmp ne %union.rec* %90, %91
  br i1 %cmp264, label %for.body.266, label %for.end.302

for.body.266:                                     ; preds = %for.cond.263
  %92 = load %union.rec*, %union.rec** %link, align 8
  %os1267 = bitcast %union.rec* %92 to %struct.word_type*
  %olist268 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1267, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist268, i32 0, i64 1
  %opred270 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx269, i32 0, i32 0
  %93 = load %union.rec*, %union.rec** %opred270, align 8
  store %union.rec* %93, %union.rec** %y, align 8
  br label %for.cond.271

for.cond.271:                                     ; preds = %for.inc.280, %for.body.266
  %94 = load %union.rec*, %union.rec** %y, align 8
  %os1272 = bitcast %union.rec* %94 to %struct.word_type*
  %ou1273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1272, i32 0, i32 1
  %os11274 = bitcast %union.FIRST_UNION* %ou1273 to %struct.anon*
  %otype275 = getelementptr inbounds %struct.anon, %struct.anon* %os11274, i32 0, i32 0
  %95 = load i8, i8* %otype275, align 1
  %conv276 = zext i8 %95 to i32
  %cmp277 = icmp eq i32 %conv276, 0
  br i1 %cmp277, label %for.body.279, label %for.end.285

for.body.279:                                     ; preds = %for.cond.271
  br label %for.inc.280

for.inc.280:                                      ; preds = %for.body.279
  %96 = load %union.rec*, %union.rec** %y, align 8
  %os1281 = bitcast %union.rec* %96 to %struct.word_type*
  %olist282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist282, i32 0, i64 1
  %opred284 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx283, i32 0, i32 0
  %97 = load %union.rec*, %union.rec** %opred284, align 8
  store %union.rec* %97, %union.rec** %y, align 8
  br label %for.cond.271

for.end.285:                                      ; preds = %for.cond.271
  %98 = load %union.rec*, %union.rec** %requested_family, align 8
  %os1286 = bitcast %union.rec* %98 to %struct.word_type*
  %ostring287 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1286, i32 0, i32 4
  %arraydecay288 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring287, i32 0, i32 0
  %99 = load %union.rec*, %union.rec** %y, align 8
  %os1289 = bitcast %union.rec* %99 to %struct.word_type*
  %ostring290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1289, i32 0, i32 4
  %arraydecay291 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring290, i32 0, i32 0
  %call292 = call i32 @strcmp(i8* %arraydecay288, i8* %arraydecay291) #5
  %cmp293 = icmp eq i32 %call292, 0
  br i1 %cmp293, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %for.end.285
  br label %for.end.302

if.end.296:                                       ; preds = %for.end.285
  br label %for.inc.297

for.inc.297:                                      ; preds = %if.end.296
  %100 = load %union.rec*, %union.rec** %link, align 8
  %os1298 = bitcast %union.rec* %100 to %struct.word_type*
  %olist299 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1298, i32 0, i32 0
  %arrayidx300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist299, i32 0, i64 0
  %osucc301 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx300, i32 0, i32 1
  %101 = load %union.rec*, %union.rec** %osucc301, align 8
  store %union.rec* %101, %union.rec** %link, align 8
  br label %for.cond.263

for.end.302:                                      ; preds = %if.then.295, %for.cond.263
  %102 = load %union.rec*, %union.rec** %link, align 8
  %103 = load %union.rec*, %union.rec** @font_root, align 8
  %cmp303 = icmp ne %union.rec* %102, %103
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %for.end.302
  %104 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %104, %union.rec** %family, align 8
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.305, %for.end.302
  br label %if.end.425

if.else.307:                                      ; preds = %if.end.255
  %105 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont308 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %105, i32 0, i32 4
  %bf.load309 = load i32, i32* %ofont308, align 4
  %bf.clear310 = and i32 %bf.load309, 4095
  %idxprom311 = zext i32 %bf.clear310 to i64
  %106 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx312 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %106, i64 %idxprom311
  %font_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx312, i32 0, i32 5
  %107 = load %union.rec*, %union.rec** %font_table, align 8
  %os1313 = bitcast %union.rec* %107 to %struct.word_type*
  %olist314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1313, i32 0, i32 0
  %arrayidx315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist314, i32 0, i64 1
  %osucc316 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx315, i32 0, i32 1
  %108 = load %union.rec*, %union.rec** %osucc316, align 8
  %109 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont317 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %109, i32 0, i32 4
  %bf.load318 = load i32, i32* %ofont317, align 4
  %bf.clear319 = and i32 %bf.load318, 4095
  %idxprom320 = zext i32 %bf.clear319 to i64
  %110 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx321 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %110, i64 %idxprom320
  %font_table322 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx321, i32 0, i32 5
  %111 = load %union.rec*, %union.rec** %font_table322, align 8
  %cmp323 = icmp ne %union.rec* %108, %111
  br i1 %cmp323, label %if.end.327, label %if.then.325

if.then.325:                                      ; preds = %if.else.307
  %112 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call326 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %112, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.325, %if.else.307
  %113 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont328 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %113, i32 0, i32 4
  %bf.load329 = load i32, i32* %ofont328, align 4
  %bf.clear330 = and i32 %bf.load329, 4095
  %idxprom331 = zext i32 %bf.clear330 to i64
  %114 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx332 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %114, i64 %idxprom331
  %font_table333 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx332, i32 0, i32 5
  %115 = load %union.rec*, %union.rec** %font_table333, align 8
  %os1334 = bitcast %union.rec* %115 to %struct.word_type*
  %olist335 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1334, i32 0, i32 0
  %arrayidx336 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist335, i32 0, i64 1
  %osucc337 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx336, i32 0, i32 1
  %116 = load %union.rec*, %union.rec** %osucc337, align 8
  %os1338 = bitcast %union.rec* %116 to %struct.word_type*
  %olist339 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1338, i32 0, i32 0
  %arrayidx340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist339, i32 0, i64 0
  %opred341 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx340, i32 0, i32 0
  %117 = load %union.rec*, %union.rec** %opred341, align 8
  store %union.rec* %117, %union.rec** %tmpf, align 8
  br label %for.cond.342

for.cond.342:                                     ; preds = %for.inc.351, %if.end.327
  %118 = load %union.rec*, %union.rec** %tmpf, align 8
  %os1343 = bitcast %union.rec* %118 to %struct.word_type*
  %ou1344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1343, i32 0, i32 1
  %os11345 = bitcast %union.FIRST_UNION* %ou1344 to %struct.anon*
  %otype346 = getelementptr inbounds %struct.anon, %struct.anon* %os11345, i32 0, i32 0
  %119 = load i8, i8* %otype346, align 1
  %conv347 = zext i8 %119 to i32
  %cmp348 = icmp eq i32 %conv347, 0
  br i1 %cmp348, label %for.body.350, label %for.end.356

for.body.350:                                     ; preds = %for.cond.342
  br label %for.inc.351

for.inc.351:                                      ; preds = %for.body.350
  %120 = load %union.rec*, %union.rec** %tmpf, align 8
  %os1352 = bitcast %union.rec* %120 to %struct.word_type*
  %olist353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1352, i32 0, i32 0
  %arrayidx354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist353, i32 0, i64 0
  %opred355 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx354, i32 0, i32 0
  %121 = load %union.rec*, %union.rec** %opred355, align 8
  store %union.rec* %121, %union.rec** %tmpf, align 8
  br label %for.cond.342

for.end.356:                                      ; preds = %for.cond.342
  %122 = load %union.rec*, %union.rec** %tmpf, align 8
  %os1357 = bitcast %union.rec* %122 to %struct.word_type*
  %ou1358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1357, i32 0, i32 1
  %os11359 = bitcast %union.FIRST_UNION* %ou1358 to %struct.anon*
  %otype360 = getelementptr inbounds %struct.anon, %struct.anon* %os11359, i32 0, i32 0
  %123 = load i8, i8* %otype360, align 1
  %conv361 = zext i8 %123 to i32
  %cmp362 = icmp eq i32 %conv361, 11
  br i1 %cmp362, label %if.end.374, label %lor.lhs.false.364

lor.lhs.false.364:                                ; preds = %for.end.356
  %124 = load %union.rec*, %union.rec** %tmpf, align 8
  %os1365 = bitcast %union.rec* %124 to %struct.word_type*
  %ou1366 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1365, i32 0, i32 1
  %os11367 = bitcast %union.FIRST_UNION* %ou1366 to %struct.anon*
  %otype368 = getelementptr inbounds %struct.anon, %struct.anon* %os11367, i32 0, i32 0
  %125 = load i8, i8* %otype368, align 1
  %conv369 = zext i8 %125 to i32
  %cmp370 = icmp eq i32 %conv369, 12
  br i1 %cmp370, label %if.end.374, label %if.then.372

if.then.372:                                      ; preds = %lor.lhs.false.364
  %126 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call373 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.372, %lor.lhs.false.364, %for.end.356
  %127 = load %union.rec*, %union.rec** %tmpf, align 8
  %os1375 = bitcast %union.rec* %127 to %struct.word_type*
  %olist376 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1375, i32 0, i32 0
  %arrayidx377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist376, i32 0, i64 1
  %osucc378 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx377, i32 0, i32 1
  %128 = load %union.rec*, %union.rec** %osucc378, align 8
  %129 = load %union.rec*, %union.rec** %tmpf, align 8
  %cmp379 = icmp ne %union.rec* %128, %129
  br i1 %cmp379, label %if.end.383, label %if.then.381

if.then.381:                                      ; preds = %if.end.374
  %130 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call382 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.383

if.end.383:                                       ; preds = %if.then.381, %if.end.374
  %131 = load %union.rec*, %union.rec** %tmpf, align 8
  %os1384 = bitcast %union.rec* %131 to %struct.word_type*
  %olist385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1384, i32 0, i32 0
  %arrayidx386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist385, i32 0, i64 1
  %osucc387 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx386, i32 0, i32 1
  %132 = load %union.rec*, %union.rec** %osucc387, align 8
  %os1388 = bitcast %union.rec* %132 to %struct.word_type*
  %olist389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1388, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist389, i32 0, i64 0
  %opred391 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx390, i32 0, i32 0
  %133 = load %union.rec*, %union.rec** %opred391, align 8
  store %union.rec* %133, %union.rec** %family, align 8
  br label %for.cond.392

for.cond.392:                                     ; preds = %for.inc.401, %if.end.383
  %134 = load %union.rec*, %union.rec** %family, align 8
  %os1393 = bitcast %union.rec* %134 to %struct.word_type*
  %ou1394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1393, i32 0, i32 1
  %os11395 = bitcast %union.FIRST_UNION* %ou1394 to %struct.anon*
  %otype396 = getelementptr inbounds %struct.anon, %struct.anon* %os11395, i32 0, i32 0
  %135 = load i8, i8* %otype396, align 1
  %conv397 = zext i8 %135 to i32
  %cmp398 = icmp eq i32 %conv397, 0
  br i1 %cmp398, label %for.body.400, label %for.end.406

for.body.400:                                     ; preds = %for.cond.392
  br label %for.inc.401

for.inc.401:                                      ; preds = %for.body.400
  %136 = load %union.rec*, %union.rec** %family, align 8
  %os1402 = bitcast %union.rec* %136 to %struct.word_type*
  %olist403 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1402, i32 0, i32 0
  %arrayidx404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist403, i32 0, i64 0
  %opred405 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx404, i32 0, i32 0
  %137 = load %union.rec*, %union.rec** %opred405, align 8
  store %union.rec* %137, %union.rec** %family, align 8
  br label %for.cond.392

for.end.406:                                      ; preds = %for.cond.392
  %138 = load %union.rec*, %union.rec** %family, align 8
  %os1407 = bitcast %union.rec* %138 to %struct.word_type*
  %ou1408 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1407, i32 0, i32 1
  %os11409 = bitcast %union.FIRST_UNION* %ou1408 to %struct.anon*
  %otype410 = getelementptr inbounds %struct.anon, %struct.anon* %os11409, i32 0, i32 0
  %139 = load i8, i8* %otype410, align 1
  %conv411 = zext i8 %139 to i32
  %cmp412 = icmp eq i32 %conv411, 11
  br i1 %cmp412, label %if.end.424, label %lor.lhs.false.414

lor.lhs.false.414:                                ; preds = %for.end.406
  %140 = load %union.rec*, %union.rec** %family, align 8
  %os1415 = bitcast %union.rec* %140 to %struct.word_type*
  %ou1416 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1415, i32 0, i32 1
  %os11417 = bitcast %union.FIRST_UNION* %ou1416 to %struct.anon*
  %otype418 = getelementptr inbounds %struct.anon, %struct.anon* %os11417, i32 0, i32 0
  %141 = load i8, i8* %otype418, align 1
  %conv419 = zext i8 %141 to i32
  %cmp420 = icmp eq i32 %conv419, 12
  br i1 %cmp420, label %if.end.424, label %if.then.422

if.then.422:                                      ; preds = %lor.lhs.false.414
  %142 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call423 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.422, %lor.lhs.false.414, %for.end.406
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.424, %if.end.306
  store %union.rec* null, %union.rec** %face, align 8
  %143 = load %union.rec*, %union.rec** %family, align 8
  %cmp426 = icmp ne %union.rec* %143, null
  br i1 %cmp426, label %if.then.428, label %if.end.538

if.then.428:                                      ; preds = %if.end.425
  %144 = load %union.rec*, %union.rec** %requested_face, align 8
  %cmp429 = icmp ne %union.rec* %144, null
  br i1 %cmp429, label %if.then.431, label %if.else.480

if.then.431:                                      ; preds = %if.then.428
  %145 = load %union.rec*, %union.rec** %family, align 8
  %os1432 = bitcast %union.rec* %145 to %struct.word_type*
  %olist433 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1432, i32 0, i32 0
  %arrayidx434 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist433, i32 0, i64 0
  %osucc435 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx434, i32 0, i32 1
  %146 = load %union.rec*, %union.rec** %osucc435, align 8
  store %union.rec* %146, %union.rec** %link, align 8
  br label %for.cond.436

for.cond.436:                                     ; preds = %for.inc.470, %if.then.431
  %147 = load %union.rec*, %union.rec** %link, align 8
  %148 = load %union.rec*, %union.rec** %family, align 8
  %cmp437 = icmp ne %union.rec* %147, %148
  br i1 %cmp437, label %for.body.439, label %for.end.475

for.body.439:                                     ; preds = %for.cond.436
  %149 = load %union.rec*, %union.rec** %link, align 8
  %os1440 = bitcast %union.rec* %149 to %struct.word_type*
  %olist441 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1440, i32 0, i32 0
  %arrayidx442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist441, i32 0, i64 1
  %opred443 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx442, i32 0, i32 0
  %150 = load %union.rec*, %union.rec** %opred443, align 8
  store %union.rec* %150, %union.rec** %y, align 8
  br label %for.cond.444

for.cond.444:                                     ; preds = %for.inc.453, %for.body.439
  %151 = load %union.rec*, %union.rec** %y, align 8
  %os1445 = bitcast %union.rec* %151 to %struct.word_type*
  %ou1446 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1445, i32 0, i32 1
  %os11447 = bitcast %union.FIRST_UNION* %ou1446 to %struct.anon*
  %otype448 = getelementptr inbounds %struct.anon, %struct.anon* %os11447, i32 0, i32 0
  %152 = load i8, i8* %otype448, align 1
  %conv449 = zext i8 %152 to i32
  %cmp450 = icmp eq i32 %conv449, 0
  br i1 %cmp450, label %for.body.452, label %for.end.458

for.body.452:                                     ; preds = %for.cond.444
  br label %for.inc.453

for.inc.453:                                      ; preds = %for.body.452
  %153 = load %union.rec*, %union.rec** %y, align 8
  %os1454 = bitcast %union.rec* %153 to %struct.word_type*
  %olist455 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1454, i32 0, i32 0
  %arrayidx456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist455, i32 0, i64 1
  %opred457 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx456, i32 0, i32 0
  %154 = load %union.rec*, %union.rec** %opred457, align 8
  store %union.rec* %154, %union.rec** %y, align 8
  br label %for.cond.444

for.end.458:                                      ; preds = %for.cond.444
  %155 = load %union.rec*, %union.rec** %requested_face, align 8
  %os1459 = bitcast %union.rec* %155 to %struct.word_type*
  %ostring460 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1459, i32 0, i32 4
  %arraydecay461 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring460, i32 0, i32 0
  %156 = load %union.rec*, %union.rec** %y, align 8
  %os1462 = bitcast %union.rec* %156 to %struct.word_type*
  %ostring463 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1462, i32 0, i32 4
  %arraydecay464 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring463, i32 0, i32 0
  %call465 = call i32 @strcmp(i8* %arraydecay461, i8* %arraydecay464) #5
  %cmp466 = icmp eq i32 %call465, 0
  br i1 %cmp466, label %if.then.468, label %if.end.469

if.then.468:                                      ; preds = %for.end.458
  br label %for.end.475

if.end.469:                                       ; preds = %for.end.458
  br label %for.inc.470

for.inc.470:                                      ; preds = %if.end.469
  %157 = load %union.rec*, %union.rec** %link, align 8
  %os1471 = bitcast %union.rec* %157 to %struct.word_type*
  %olist472 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1471, i32 0, i32 0
  %arrayidx473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist472, i32 0, i64 0
  %osucc474 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx473, i32 0, i32 1
  %158 = load %union.rec*, %union.rec** %osucc474, align 8
  store %union.rec* %158, %union.rec** %link, align 8
  br label %for.cond.436

for.end.475:                                      ; preds = %if.then.468, %for.cond.436
  %159 = load %union.rec*, %union.rec** %link, align 8
  %160 = load %union.rec*, %union.rec** %family, align 8
  %cmp476 = icmp ne %union.rec* %159, %160
  br i1 %cmp476, label %if.then.478, label %if.end.479

if.then.478:                                      ; preds = %for.end.475
  %161 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %161, %union.rec** %face, align 8
  br label %if.end.479

if.end.479:                                       ; preds = %if.then.478, %for.end.475
  br label %if.end.537

if.else.480:                                      ; preds = %if.then.428
  %162 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont481 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %162, i32 0, i32 4
  %bf.load482 = load i32, i32* %ofont481, align 4
  %bf.clear483 = and i32 %bf.load482, 4095
  %idxprom484 = zext i32 %bf.clear483 to i64
  %163 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx485 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %163, i64 %idxprom484
  %font_table486 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx485, i32 0, i32 5
  %164 = load %union.rec*, %union.rec** %font_table486, align 8
  %os1487 = bitcast %union.rec* %164 to %struct.word_type*
  %olist488 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1487, i32 0, i32 0
  %arrayidx489 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist488, i32 0, i64 1
  %osucc490 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx489, i32 0, i32 1
  %165 = load %union.rec*, %union.rec** %osucc490, align 8
  %os1491 = bitcast %union.rec* %165 to %struct.word_type*
  %olist492 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1491, i32 0, i32 0
  %arrayidx493 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist492, i32 0, i64 0
  %opred494 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx493, i32 0, i32 0
  %166 = load %union.rec*, %union.rec** %opred494, align 8
  store %union.rec* %166, %union.rec** %face, align 8
  br label %for.cond.495

for.cond.495:                                     ; preds = %for.inc.504, %if.else.480
  %167 = load %union.rec*, %union.rec** %face, align 8
  %os1496 = bitcast %union.rec* %167 to %struct.word_type*
  %ou1497 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1496, i32 0, i32 1
  %os11498 = bitcast %union.FIRST_UNION* %ou1497 to %struct.anon*
  %otype499 = getelementptr inbounds %struct.anon, %struct.anon* %os11498, i32 0, i32 0
  %168 = load i8, i8* %otype499, align 1
  %conv500 = zext i8 %168 to i32
  %cmp501 = icmp eq i32 %conv500, 0
  br i1 %cmp501, label %for.body.503, label %for.end.509

for.body.503:                                     ; preds = %for.cond.495
  br label %for.inc.504

for.inc.504:                                      ; preds = %for.body.503
  %169 = load %union.rec*, %union.rec** %face, align 8
  %os1505 = bitcast %union.rec* %169 to %struct.word_type*
  %olist506 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1505, i32 0, i32 0
  %arrayidx507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist506, i32 0, i64 0
  %opred508 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx507, i32 0, i32 0
  %170 = load %union.rec*, %union.rec** %opred508, align 8
  store %union.rec* %170, %union.rec** %face, align 8
  br label %for.cond.495

for.end.509:                                      ; preds = %for.cond.495
  %171 = load %union.rec*, %union.rec** %face, align 8
  %os1510 = bitcast %union.rec* %171 to %struct.word_type*
  %ou1511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1510, i32 0, i32 1
  %os11512 = bitcast %union.FIRST_UNION* %ou1511 to %struct.anon*
  %otype513 = getelementptr inbounds %struct.anon, %struct.anon* %os11512, i32 0, i32 0
  %172 = load i8, i8* %otype513, align 1
  %conv514 = zext i8 %172 to i32
  %cmp515 = icmp eq i32 %conv514, 11
  br i1 %cmp515, label %if.end.527, label %lor.lhs.false.517

lor.lhs.false.517:                                ; preds = %for.end.509
  %173 = load %union.rec*, %union.rec** %face, align 8
  %os1518 = bitcast %union.rec* %173 to %struct.word_type*
  %ou1519 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1518, i32 0, i32 1
  %os11520 = bitcast %union.FIRST_UNION* %ou1519 to %struct.anon*
  %otype521 = getelementptr inbounds %struct.anon, %struct.anon* %os11520, i32 0, i32 0
  %174 = load i8, i8* %otype521, align 1
  %conv522 = zext i8 %174 to i32
  %cmp523 = icmp eq i32 %conv522, 12
  br i1 %cmp523, label %if.end.527, label %if.then.525

if.then.525:                                      ; preds = %lor.lhs.false.517
  %175 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call526 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %175, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.527

if.end.527:                                       ; preds = %if.then.525, %lor.lhs.false.517, %for.end.509
  %176 = load %union.rec*, %union.rec** %face, align 8
  %os1528 = bitcast %union.rec* %176 to %struct.word_type*
  %olist529 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1528, i32 0, i32 0
  %arrayidx530 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist529, i32 0, i64 1
  %osucc531 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx530, i32 0, i32 1
  %177 = load %union.rec*, %union.rec** %osucc531, align 8
  %178 = load %union.rec*, %union.rec** %face, align 8
  %cmp532 = icmp ne %union.rec* %177, %178
  br i1 %cmp532, label %if.end.536, label %if.then.534

if.then.534:                                      ; preds = %if.end.527
  %179 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call535 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %179, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.536

if.end.536:                                       ; preds = %if.then.534, %if.end.527
  br label %if.end.537

if.end.537:                                       ; preds = %if.end.536, %if.end.479
  br label %if.end.538

if.end.538:                                       ; preds = %if.end.537, %if.end.425
  %180 = load %union.rec*, %union.rec** %face, align 8
  %cmp539 = icmp eq %union.rec* %180, null
  br i1 %cmp539, label %if.then.541, label %if.end.636

if.then.541:                                      ; preds = %if.end.538
  %181 = load %union.rec*, %union.rec** %family, align 8
  %cmp542 = icmp ne %union.rec* %181, null
  br i1 %cmp542, label %if.end.549, label %lor.lhs.false.544

lor.lhs.false.544:                                ; preds = %if.then.541
  %182 = load %union.rec*, %union.rec** %requested_family, align 8
  %cmp545 = icmp ne %union.rec* %182, null
  br i1 %cmp545, label %if.end.549, label %if.then.547

if.then.547:                                      ; preds = %lor.lhs.false.544
  %183 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call548 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.549

if.end.549:                                       ; preds = %if.then.547, %lor.lhs.false.544, %if.then.541
  %184 = load %union.rec*, %union.rec** %requested_face, align 8
  %cmp550 = icmp ne %union.rec* %184, null
  br i1 %cmp550, label %if.end.554, label %if.then.552

if.then.552:                                      ; preds = %if.end.549
  %185 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call553 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %185, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.554

if.end.554:                                       ; preds = %if.then.552, %if.end.549
  %186 = load %union.rec*, %union.rec** %family, align 8
  %cmp555 = icmp ne %union.rec* %186, null
  br i1 %cmp555, label %if.then.557, label %if.end.558

if.then.557:                                      ; preds = %if.end.554
  %187 = load %union.rec*, %union.rec** %family, align 8
  store %union.rec* %187, %union.rec** %requested_family, align 8
  br label %if.end.558

if.end.558:                                       ; preds = %if.then.557, %if.end.554
  %188 = load %union.rec*, %union.rec** %requested_family, align 8
  %os1559 = bitcast %union.rec* %188 to %struct.word_type*
  %ostring560 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1559, i32 0, i32 4
  %arraydecay561 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring560, i32 0, i32 0
  %189 = load %union.rec*, %union.rec** %requested_face, align 8
  %os1562 = bitcast %union.rec* %189 to %struct.word_type*
  %ostring563 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1562, i32 0, i32 4
  %arraydecay564 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring563, i32 0, i32 0
  %190 = load %union.rec*, %union.rec** %x.addr, align 8
  %call565 = call %union.rec* @FontRead(i8* %arraydecay561, i8* %arraydecay564, %union.rec* %190)
  store %union.rec* %call565, %union.rec** %face, align 8
  %191 = load %union.rec*, %union.rec** %face, align 8
  %cmp566 = icmp eq %union.rec* %191, null
  br i1 %cmp566, label %if.then.568, label %if.end.635

if.then.568:                                      ; preds = %if.end.558
  %192 = load %union.rec*, %union.rec** @font_root, align 8
  %os1569 = bitcast %union.rec* %192 to %struct.word_type*
  %olist570 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1569, i32 0, i32 0
  %arrayidx571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist570, i32 0, i64 0
  %osucc572 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx571, i32 0, i32 1
  %193 = load %union.rec*, %union.rec** %osucc572, align 8
  store %union.rec* %193, %union.rec** %link, align 8
  br label %for.cond.573

for.cond.573:                                     ; preds = %for.inc.607, %if.then.568
  %194 = load %union.rec*, %union.rec** %link, align 8
  %195 = load %union.rec*, %union.rec** @font_root, align 8
  %cmp574 = icmp ne %union.rec* %194, %195
  br i1 %cmp574, label %for.body.576, label %for.end.612

for.body.576:                                     ; preds = %for.cond.573
  %196 = load %union.rec*, %union.rec** %link, align 8
  %os1577 = bitcast %union.rec* %196 to %struct.word_type*
  %olist578 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1577, i32 0, i32 0
  %arrayidx579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist578, i32 0, i64 1
  %opred580 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx579, i32 0, i32 0
  %197 = load %union.rec*, %union.rec** %opred580, align 8
  store %union.rec* %197, %union.rec** %y, align 8
  br label %for.cond.581

for.cond.581:                                     ; preds = %for.inc.590, %for.body.576
  %198 = load %union.rec*, %union.rec** %y, align 8
  %os1582 = bitcast %union.rec* %198 to %struct.word_type*
  %ou1583 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1582, i32 0, i32 1
  %os11584 = bitcast %union.FIRST_UNION* %ou1583 to %struct.anon*
  %otype585 = getelementptr inbounds %struct.anon, %struct.anon* %os11584, i32 0, i32 0
  %199 = load i8, i8* %otype585, align 1
  %conv586 = zext i8 %199 to i32
  %cmp587 = icmp eq i32 %conv586, 0
  br i1 %cmp587, label %for.body.589, label %for.end.595

for.body.589:                                     ; preds = %for.cond.581
  br label %for.inc.590

for.inc.590:                                      ; preds = %for.body.589
  %200 = load %union.rec*, %union.rec** %y, align 8
  %os1591 = bitcast %union.rec* %200 to %struct.word_type*
  %olist592 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1591, i32 0, i32 0
  %arrayidx593 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist592, i32 0, i64 1
  %opred594 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx593, i32 0, i32 0
  %201 = load %union.rec*, %union.rec** %opred594, align 8
  store %union.rec* %201, %union.rec** %y, align 8
  br label %for.cond.581

for.end.595:                                      ; preds = %for.cond.581
  %202 = load %union.rec*, %union.rec** %y, align 8
  %os1596 = bitcast %union.rec* %202 to %struct.word_type*
  %ostring597 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1596, i32 0, i32 4
  %arraydecay598 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring597, i32 0, i32 0
  %203 = load %union.rec*, %union.rec** %requested_face, align 8
  %os1599 = bitcast %union.rec* %203 to %struct.word_type*
  %ostring600 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1599, i32 0, i32 4
  %arraydecay601 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring600, i32 0, i32 0
  %call602 = call i32 @strcmp(i8* %arraydecay598, i8* %arraydecay601) #5
  %cmp603 = icmp eq i32 %call602, 0
  br i1 %cmp603, label %if.then.605, label %if.end.606

if.then.605:                                      ; preds = %for.end.595
  br label %for.end.612

if.end.606:                                       ; preds = %for.end.595
  br label %for.inc.607

for.inc.607:                                      ; preds = %if.end.606
  %204 = load %union.rec*, %union.rec** %link, align 8
  %os1608 = bitcast %union.rec* %204 to %struct.word_type*
  %olist609 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1608, i32 0, i32 0
  %arrayidx610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist609, i32 0, i64 0
  %osucc611 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx610, i32 0, i32 1
  %205 = load %union.rec*, %union.rec** %osucc611, align 8
  store %union.rec* %205, %union.rec** %link, align 8
  br label %for.cond.573

for.end.612:                                      ; preds = %if.then.605, %for.cond.573
  %206 = load %union.rec*, %union.rec** %link, align 8
  %207 = load %union.rec*, %union.rec** @font_root, align 8
  %cmp613 = icmp ne %union.rec* %206, %207
  br i1 %cmp613, label %if.then.615, label %if.else.623

if.then.615:                                      ; preds = %for.end.612
  %208 = load %union.rec*, %union.rec** %requested_face, align 8
  %os1616 = bitcast %union.rec* %208 to %struct.word_type*
  %ou1617 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1616, i32 0, i32 1
  %ofpos618 = bitcast %union.FIRST_UNION* %ou1617 to %struct.FILE_POS*
  %209 = load %union.rec*, %union.rec** %requested_face, align 8
  %os1619 = bitcast %union.rec* %209 to %struct.word_type*
  %ostring620 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1619, i32 0, i32 4
  %arraydecay621 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring620, i32 0, i32 0
  %call622 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos618, i8* %arraydecay621)
  br label %if.end.634

if.else.623:                                      ; preds = %for.end.612
  %210 = load %union.rec*, %union.rec** %requested_face, align 8
  %os1624 = bitcast %union.rec* %210 to %struct.word_type*
  %ou1625 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1624, i32 0, i32 1
  %ofpos626 = bitcast %union.FIRST_UNION* %ou1625 to %struct.FILE_POS*
  %211 = load %union.rec*, %union.rec** %requested_family, align 8
  %os1627 = bitcast %union.rec* %211 to %struct.word_type*
  %ostring628 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1627, i32 0, i32 4
  %arraydecay629 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring628, i32 0, i32 0
  %212 = load %union.rec*, %union.rec** %requested_face, align 8
  %os1630 = bitcast %union.rec* %212 to %struct.word_type*
  %ostring631 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1630, i32 0, i32 4
  %arraydecay632 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring631, i32 0, i32 0
  %call633 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 46, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos626, i8* %arraydecay629, i8* %arraydecay632)
  br label %if.end.634

if.end.634:                                       ; preds = %if.else.623, %if.then.615
  br label %return

if.end.635:                                       ; preds = %if.end.558
  br label %if.end.636

if.end.636:                                       ; preds = %if.end.635, %if.end.538
  %213 = load %union.rec*, %union.rec** %face, align 8
  %os1637 = bitcast %union.rec* %213 to %struct.word_type*
  %olist638 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1637, i32 0, i32 0
  %arrayidx639 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist638, i32 0, i64 0
  %osucc640 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx639, i32 0, i32 1
  %214 = load %union.rec*, %union.rec** %osucc640, align 8
  %215 = load %union.rec*, %union.rec** %face, align 8
  %cmp641 = icmp ne %union.rec* %214, %215
  br i1 %cmp641, label %if.end.645, label %if.then.643

if.then.643:                                      ; preds = %if.end.636
  %216 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call644 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.645

if.end.645:                                       ; preds = %if.then.643, %if.end.636
  %217 = load %union.rec*, %union.rec** %face, align 8
  %os1646 = bitcast %union.rec* %217 to %struct.word_type*
  %olist647 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1646, i32 0, i32 0
  %arrayidx648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist647, i32 0, i64 0
  %osucc649 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx648, i32 0, i32 1
  %218 = load %union.rec*, %union.rec** %osucc649, align 8
  %os1650 = bitcast %union.rec* %218 to %struct.word_type*
  %olist651 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1650, i32 0, i32 0
  %arrayidx652 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist651, i32 0, i64 0
  %osucc653 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx652, i32 0, i32 1
  %219 = load %union.rec*, %union.rec** %osucc653, align 8
  %220 = load %union.rec*, %union.rec** %face, align 8
  %cmp654 = icmp ne %union.rec* %219, %220
  br i1 %cmp654, label %if.end.658, label %if.then.656

if.then.656:                                      ; preds = %if.end.645
  %221 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call657 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %221, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.658

if.end.658:                                       ; preds = %if.then.656, %if.end.645
  %222 = load %union.rec*, %union.rec** %face, align 8
  %os1659 = bitcast %union.rec* %222 to %struct.word_type*
  %olist660 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1659, i32 0, i32 0
  %arrayidx661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist660, i32 0, i64 0
  %osucc662 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx661, i32 0, i32 1
  %223 = load %union.rec*, %union.rec** %osucc662, align 8
  %os1663 = bitcast %union.rec* %223 to %struct.word_type*
  %olist664 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1663, i32 0, i32 0
  %arrayidx665 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist664, i32 0, i64 0
  %osucc666 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx665, i32 0, i32 1
  %224 = load %union.rec*, %union.rec** %osucc666, align 8
  %os1667 = bitcast %union.rec* %224 to %struct.word_type*
  %olist668 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1667, i32 0, i32 0
  %arrayidx669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist668, i32 0, i64 0
  %osucc670 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx669, i32 0, i32 1
  %225 = load %union.rec*, %union.rec** %osucc670, align 8
  %226 = load %union.rec*, %union.rec** %face, align 8
  %cmp671 = icmp ne %union.rec* %225, %226
  br i1 %cmp671, label %if.end.675, label %if.then.673

if.then.673:                                      ; preds = %if.end.658
  %227 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call674 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %227, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.675

if.end.675:                                       ; preds = %if.then.673, %if.end.658
  %228 = load %union.rec*, %union.rec** %requested_size, align 8
  %cmp676 = icmp eq %union.rec* %228, null
  br i1 %cmp676, label %if.then.678, label %if.else.687

if.then.678:                                      ; preds = %if.end.675
  %229 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont679 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %229, i32 0, i32 4
  %bf.load680 = load i32, i32* %ofont679, align 4
  %bf.clear681 = and i32 %bf.load680, 4095
  %idxprom682 = zext i32 %bf.clear681 to i64
  %230 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx683 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %230, i64 %idxprom682
  %font_table684 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx683, i32 0, i32 5
  %231 = load %union.rec*, %union.rec** %font_table684, align 8
  %os1685 = bitcast %union.rec* %231 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1685, i32 0, i32 3
  %os32 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.7*
  %ofont_size = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32, i32 0, i32 0
  %232 = load i32, i32* %ofont_size, align 4
  %conv686 = trunc i32 %232 to i16
  store i16 %conv686, i16* %flen, align 2
  br label %if.end.781

if.else.687:                                      ; preds = %if.end.675
  %233 = load %union.rec*, %union.rec** %requested_size, align 8
  %234 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  call void @GetGap(%union.rec* %233, %struct.STYLE* %234, %struct.GAP* %gp, i32* %inc)
  %235 = bitcast %struct.GAP* %gp to i16*
  %bf.load688 = load i16, i16* %235, align 4
  %bf.lshr = lshr i16 %bf.load688, 13
  %bf.cast = zext i16 %bf.lshr to i32
  %cmp689 = icmp ne i32 %bf.cast, 1
  br i1 %cmp689, label %if.then.698, label %lor.lhs.false.691

lor.lhs.false.691:                                ; preds = %if.else.687
  %236 = bitcast %struct.GAP* %gp to i16*
  %bf.load692 = load i16, i16* %236, align 4
  %bf.lshr693 = lshr i16 %bf.load692, 10
  %bf.clear694 = and i16 %bf.lshr693, 7
  %bf.cast695 = zext i16 %bf.clear694 to i32
  %cmp696 = icmp ne i32 %bf.cast695, 1
  br i1 %cmp696, label %if.then.698, label %if.else.717

if.then.698:                                      ; preds = %lor.lhs.false.691, %if.else.687
  %237 = load %union.rec*, %union.rec** %requested_size, align 8
  %os1699 = bitcast %union.rec* %237 to %struct.word_type*
  %ou1700 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1699, i32 0, i32 1
  %ofpos701 = bitcast %union.FIRST_UNION* %ou1700 to %struct.FILE_POS*
  %238 = load %union.rec*, %union.rec** %requested_size, align 8
  %os1702 = bitcast %union.rec* %238 to %struct.word_type*
  %ostring703 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1702, i32 0, i32 4
  %arraydecay704 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring703, i32 0, i32 0
  %call705 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos701, i8* %arraydecay704)
  %239 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont706 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %239, i32 0, i32 4
  %bf.load707 = load i32, i32* %ofont706, align 4
  %bf.clear708 = and i32 %bf.load707, 4095
  %idxprom709 = zext i32 %bf.clear708 to i64
  %240 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx710 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %240, i64 %idxprom709
  %font_table711 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx710, i32 0, i32 5
  %241 = load %union.rec*, %union.rec** %font_table711, align 8
  %os1712 = bitcast %union.rec* %241 to %struct.word_type*
  %ou3713 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1712, i32 0, i32 3
  %os32714 = bitcast %union.THIRD_UNION* %ou3713 to %struct.anon.7*
  %ofont_size715 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32714, i32 0, i32 0
  %242 = load i32, i32* %ofont_size715, align 4
  %conv716 = trunc i32 %242 to i16
  store i16 %conv716, i16* %flen, align 2
  br label %if.end.780

if.else.717:                                      ; preds = %lor.lhs.false.691
  %243 = load i32, i32* %inc, align 4
  %cmp718 = icmp eq i32 %243, 158
  br i1 %cmp718, label %if.then.720, label %if.else.721

if.then.720:                                      ; preds = %if.else.717
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %gp, i32 0, i32 1
  %244 = load i16, i16* %owidth, align 2
  store i16 %244, i16* %flen, align 2
  br label %if.end.779

if.else.721:                                      ; preds = %if.else.717
  %245 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont722 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %245, i32 0, i32 4
  %bf.load723 = load i32, i32* %ofont722, align 4
  %bf.clear724 = and i32 %bf.load723, 4095
  %cmp725 = icmp eq i32 %bf.clear724, 0
  br i1 %cmp725, label %if.then.727, label %if.else.735

if.then.727:                                      ; preds = %if.else.721
  %246 = load %union.rec*, %union.rec** %requested_size, align 8
  %os1728 = bitcast %union.rec* %246 to %struct.word_type*
  %ou1729 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1728, i32 0, i32 1
  %ofpos730 = bitcast %union.FIRST_UNION* %ou1729 to %struct.FILE_POS*
  %247 = load %union.rec*, %union.rec** %requested_size, align 8
  %os1731 = bitcast %union.rec* %247 to %struct.word_type*
  %ostring732 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1731, i32 0, i32 4
  %arraydecay733 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring732, i32 0, i32 0
  %call734 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.33, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos730, i8* %arraydecay733)
  br label %if.end.778

if.else.735:                                      ; preds = %if.else.721
  %248 = load i32, i32* %inc, align 4
  %cmp736 = icmp eq i32 %248, 159
  br i1 %cmp736, label %if.then.738, label %if.else.753

if.then.738:                                      ; preds = %if.else.735
  %249 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont739 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %249, i32 0, i32 4
  %bf.load740 = load i32, i32* %ofont739, align 4
  %bf.clear741 = and i32 %bf.load740, 4095
  %idxprom742 = zext i32 %bf.clear741 to i64
  %250 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx743 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %250, i64 %idxprom742
  %font_table744 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx743, i32 0, i32 5
  %251 = load %union.rec*, %union.rec** %font_table744, align 8
  %os1745 = bitcast %union.rec* %251 to %struct.word_type*
  %ou3746 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1745, i32 0, i32 3
  %os32747 = bitcast %union.THIRD_UNION* %ou3746 to %struct.anon.7*
  %ofont_size748 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32747, i32 0, i32 0
  %252 = load i32, i32* %ofont_size748, align 4
  %owidth749 = getelementptr inbounds %struct.GAP, %struct.GAP* %gp, i32 0, i32 1
  %253 = load i16, i16* %owidth749, align 2
  %conv750 = sext i16 %253 to i32
  %add751 = add nsw i32 %252, %conv750
  %conv752 = trunc i32 %add751 to i16
  store i16 %conv752, i16* %flen, align 2
  br label %if.end.777

if.else.753:                                      ; preds = %if.else.735
  %254 = load i32, i32* %inc, align 4
  %cmp754 = icmp eq i32 %254, 160
  br i1 %cmp754, label %if.then.756, label %if.else.771

if.then.756:                                      ; preds = %if.else.753
  %255 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont757 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %255, i32 0, i32 4
  %bf.load758 = load i32, i32* %ofont757, align 4
  %bf.clear759 = and i32 %bf.load758, 4095
  %idxprom760 = zext i32 %bf.clear759 to i64
  %256 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx761 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %256, i64 %idxprom760
  %font_table762 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx761, i32 0, i32 5
  %257 = load %union.rec*, %union.rec** %font_table762, align 8
  %os1763 = bitcast %union.rec* %257 to %struct.word_type*
  %ou3764 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1763, i32 0, i32 3
  %os32765 = bitcast %union.THIRD_UNION* %ou3764 to %struct.anon.7*
  %ofont_size766 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32765, i32 0, i32 0
  %258 = load i32, i32* %ofont_size766, align 4
  %owidth767 = getelementptr inbounds %struct.GAP, %struct.GAP* %gp, i32 0, i32 1
  %259 = load i16, i16* %owidth767, align 2
  %conv768 = sext i16 %259 to i32
  %sub769 = sub nsw i32 %258, %conv768
  %conv770 = trunc i32 %sub769 to i16
  store i16 %conv770, i16* %flen, align 2
  br label %if.end.776

if.else.771:                                      ; preds = %if.else.753
  %260 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1772 = bitcast %union.rec* %260 to %struct.word_type*
  %ou1773 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1772, i32 0, i32 1
  %ofpos774 = bitcast %union.FIRST_UNION* %ou1773 to %struct.FILE_POS*
  %261 = load i32, i32* %inc, align 4
  %call775 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i32 0, %struct.FILE_POS* %ofpos774, i32 %261)
  br label %if.end.776

if.end.776:                                       ; preds = %if.else.771, %if.then.756
  br label %if.end.777

if.end.777:                                       ; preds = %if.end.776, %if.then.738
  br label %if.end.778

if.end.778:                                       ; preds = %if.end.777, %if.then.727
  br label %if.end.779

if.end.779:                                       ; preds = %if.end.778, %if.then.720
  br label %if.end.780

if.end.780:                                       ; preds = %if.end.779, %if.then.698
  br label %if.end.781

if.end.781:                                       ; preds = %if.end.780, %if.then.678
  %262 = load i16, i16* %flen, align 2
  %conv782 = sext i16 %262 to i32
  %cmp783 = icmp sle i32 %conv782, 0
  br i1 %cmp783, label %if.then.785, label %if.end.793

if.then.785:                                      ; preds = %if.end.781
  %263 = load %union.rec*, %union.rec** %requested_size, align 8
  %os1786 = bitcast %union.rec* %263 to %struct.word_type*
  %ou1787 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1786, i32 0, i32 1
  %ofpos788 = bitcast %union.FIRST_UNION* %ou1787 to %struct.FILE_POS*
  %264 = load %union.rec*, %union.rec** %requested_size, align 8
  %os1789 = bitcast %union.rec* %264 to %struct.word_type*
  %ostring790 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1789, i32 0, i32 4
  %arraydecay791 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring790, i32 0, i32 0
  %call792 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos788, i8* %arraydecay791, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  br label %return

if.end.793:                                       ; preds = %if.end.781
  %265 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %uses_font_metrics = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %265, i32 0, i32 8
  %266 = load i32, i32* %uses_font_metrics, align 4
  %tobool = icmp ne i32 %266, 0
  br i1 %tobool, label %if.end.796, label %if.then.794

if.then.794:                                      ; preds = %if.end.793
  %267 = load i32, i32* @PlainCharHeight, align 4
  %conv795 = trunc i32 %267 to i16
  store i16 %conv795, i16* %flen, align 2
  br label %if.end.796

if.end.796:                                       ; preds = %if.then.794, %if.end.793
  %268 = load %union.rec*, %union.rec** %face, align 8
  %os1797 = bitcast %union.rec* %268 to %struct.word_type*
  %olist798 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1797, i32 0, i32 0
  %arrayidx799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist798, i32 0, i64 0
  %osucc800 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx799, i32 0, i32 1
  %269 = load %union.rec*, %union.rec** %osucc800, align 8
  %os1801 = bitcast %union.rec* %269 to %struct.word_type*
  %olist802 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1801, i32 0, i32 0
  %arrayidx803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist802, i32 0, i64 0
  %osucc804 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx803, i32 0, i32 1
  %270 = load %union.rec*, %union.rec** %osucc804, align 8
  %os1805 = bitcast %union.rec* %270 to %struct.word_type*
  %olist806 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1805, i32 0, i32 0
  %arrayidx807 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist806, i32 0, i64 0
  %osucc808 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx807, i32 0, i32 1
  %271 = load %union.rec*, %union.rec** %osucc808, align 8
  store %union.rec* %271, %union.rec** %link, align 8
  br label %for.cond.809

for.cond.809:                                     ; preds = %for.inc.885, %if.end.796
  %272 = load %union.rec*, %union.rec** %link, align 8
  %273 = load %union.rec*, %union.rec** %face, align 8
  %cmp810 = icmp ne %union.rec* %272, %273
  br i1 %cmp810, label %for.body.812, label %for.end.890

for.body.812:                                     ; preds = %for.cond.809
  %274 = load %union.rec*, %union.rec** %link, align 8
  %os1813 = bitcast %union.rec* %274 to %struct.word_type*
  %olist814 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1813, i32 0, i32 0
  %arrayidx815 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist814, i32 0, i64 1
  %opred816 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx815, i32 0, i32 0
  %275 = load %union.rec*, %union.rec** %opred816, align 8
  store %union.rec* %275, %union.rec** %fsize, align 8
  br label %for.cond.817

for.cond.817:                                     ; preds = %for.inc.826, %for.body.812
  %276 = load %union.rec*, %union.rec** %fsize, align 8
  %os1818 = bitcast %union.rec* %276 to %struct.word_type*
  %ou1819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1818, i32 0, i32 1
  %os11820 = bitcast %union.FIRST_UNION* %ou1819 to %struct.anon*
  %otype821 = getelementptr inbounds %struct.anon, %struct.anon* %os11820, i32 0, i32 0
  %277 = load i8, i8* %otype821, align 1
  %conv822 = zext i8 %277 to i32
  %cmp823 = icmp eq i32 %conv822, 0
  br i1 %cmp823, label %for.body.825, label %for.end.831

for.body.825:                                     ; preds = %for.cond.817
  br label %for.inc.826

for.inc.826:                                      ; preds = %for.body.825
  %278 = load %union.rec*, %union.rec** %fsize, align 8
  %os1827 = bitcast %union.rec* %278 to %struct.word_type*
  %olist828 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1827, i32 0, i32 0
  %arrayidx829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist828, i32 0, i64 1
  %opred830 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx829, i32 0, i32 0
  %279 = load %union.rec*, %union.rec** %opred830, align 8
  store %union.rec* %279, %union.rec** %fsize, align 8
  br label %for.cond.817

for.end.831:                                      ; preds = %for.cond.817
  %280 = load %union.rec*, %union.rec** %fsize, align 8
  %os1832 = bitcast %union.rec* %280 to %struct.word_type*
  %ou3833 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1832, i32 0, i32 3
  %os32834 = bitcast %union.THIRD_UNION* %ou3833 to %struct.anon.7*
  %ofont_size835 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32834, i32 0, i32 0
  %281 = load i32, i32* %ofont_size835, align 4
  %282 = load i16, i16* %flen, align 2
  %conv836 = sext i16 %282 to i32
  %cmp837 = icmp eq i32 %281, %conv836
  br i1 %cmp837, label %if.then.839, label %if.end.884

if.then.839:                                      ; preds = %for.end.831
  %283 = load %union.rec*, %union.rec** %fsize, align 8
  %os1840 = bitcast %union.rec* %283 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1840, i32 0, i32 2
  %os25 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.4*
  %284 = bitcast %struct.anon.4* %os25 to i16*
  %bf.load841 = load i16, i16* %284, align 4
  %bf.clear842 = and i16 %bf.load841, 4095
  %bf.cast843 = zext i16 %bf.clear842 to i32
  %285 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont844 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %285, i32 0, i32 4
  %bf.load845 = load i32, i32* %ofont844, align 4
  %bf.value = and i32 %bf.cast843, 4095
  %bf.clear846 = and i32 %bf.load845, -4096
  %bf.set847 = or i32 %bf.clear846, %bf.value
  store i32 %bf.set847, i32* %ofont844, align 4
  %286 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %286, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu2 to %struct.GAP*
  %287 = bitcast %struct.GAP* %ospace_gap to i16*
  %bf.load848 = load i16, i16* %287, align 4
  %bf.lshr849 = lshr i16 %bf.load848, 7
  %bf.clear850 = and i16 %bf.lshr849, 1
  %bf.cast851 = zext i16 %bf.clear850 to i32
  %288 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2852 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %288, i32 0, i32 1
  %ospace_gap853 = bitcast %union.anon.10* %osu2852 to %struct.GAP*
  %289 = bitcast %struct.GAP* %ospace_gap853 to i16*
  %290 = trunc i32 %bf.cast851 to i16
  %bf.load854 = load i16, i16* %289, align 4
  %bf.value855 = and i16 %290, 1
  %bf.shl = shl i16 %bf.value855, 7
  %bf.clear856 = and i16 %bf.load854, -129
  %bf.set857 = or i16 %bf.clear856, %bf.shl
  store i16 %bf.set857, i16* %289, align 4
  %bf.result.cast = zext i16 %bf.value855 to i32
  %291 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2858 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %291, i32 0, i32 1
  %ospace_gap859 = bitcast %union.anon.10* %osu2858 to %struct.GAP*
  %292 = bitcast %struct.GAP* %ospace_gap859 to i16*
  %bf.load860 = load i16, i16* %292, align 4
  %bf.clear861 = and i16 %bf.load860, -257
  store i16 %bf.clear861, i16* %292, align 4
  %293 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2862 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %293, i32 0, i32 1
  %ospace_gap863 = bitcast %union.anon.10* %osu2862 to %struct.GAP*
  %294 = bitcast %struct.GAP* %ospace_gap863 to i16*
  %bf.load864 = load i16, i16* %294, align 4
  %bf.clear865 = and i16 %bf.load864, -513
  %bf.set866 = or i16 %bf.clear865, 512
  store i16 %bf.set866, i16* %294, align 4
  %295 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2867 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %295, i32 0, i32 1
  %ospace_gap868 = bitcast %union.anon.10* %osu2867 to %struct.GAP*
  %296 = bitcast %struct.GAP* %ospace_gap868 to i16*
  %bf.load869 = load i16, i16* %296, align 4
  %bf.clear870 = and i16 %bf.load869, -7169
  %bf.set871 = or i16 %bf.clear870, 1024
  store i16 %bf.set871, i16* %296, align 4
  %297 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2872 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %297, i32 0, i32 1
  %ospace_gap873 = bitcast %union.anon.10* %osu2872 to %struct.GAP*
  %298 = bitcast %struct.GAP* %ospace_gap873 to i16*
  %bf.load874 = load i16, i16* %298, align 4
  %bf.clear875 = and i16 %bf.load874, 8191
  %bf.set876 = or i16 %bf.clear875, 8192
  store i16 %bf.set876, i16* %298, align 4
  %299 = load %union.rec*, %union.rec** %fsize, align 8
  %os1877 = bitcast %union.rec* %299 to %struct.word_type*
  %ou3878 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1877, i32 0, i32 3
  %os32879 = bitcast %union.THIRD_UNION* %ou3878 to %struct.anon.7*
  %ofont_spacewidth = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32879, i32 0, i32 2
  %300 = load i32, i32* %ofont_spacewidth, align 4
  %conv880 = trunc i32 %300 to i16
  %301 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu2881 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %301, i32 0, i32 1
  %ospace_gap882 = bitcast %union.anon.10* %osu2881 to %struct.GAP*
  %owidth883 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap882, i32 0, i32 1
  store i16 %conv880, i16* %owidth883, align 2
  br label %return

if.end.884:                                       ; preds = %for.end.831
  br label %for.inc.885

for.inc.885:                                      ; preds = %if.end.884
  %302 = load %union.rec*, %union.rec** %link, align 8
  %os1886 = bitcast %union.rec* %302 to %struct.word_type*
  %olist887 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1886, i32 0, i32 0
  %arrayidx888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist887, i32 0, i64 0
  %osucc889 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx888, i32 0, i32 1
  %303 = load %union.rec*, %union.rec** %osucc889, align 8
  store %union.rec* %303, %union.rec** %link, align 8
  br label %for.cond.809

for.end.890:                                      ; preds = %for.cond.809
  %304 = load i32, i32* @font_count, align 4
  %inc891 = add i32 %304, 1
  store i32 %inc891, i32* @font_count, align 4
  %305 = load i32, i32* @finfo_size, align 4
  %cmp892 = icmp uge i32 %inc891, %305
  br i1 %cmp892, label %if.then.894, label %if.end.914

if.then.894:                                      ; preds = %for.end.890
  %306 = load i32, i32* @font_count, align 4
  %cmp895 = icmp ugt i32 %306, 4096
  br i1 %cmp895, label %if.then.897, label %if.end.902

if.then.897:                                      ; preds = %if.then.894
  %307 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1898 = bitcast %union.rec* %307 to %struct.word_type*
  %ou1899 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1898, i32 0, i32 1
  %ofpos900 = bitcast %union.FIRST_UNION* %ou1899 to %struct.FILE_POS*
  %call901 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos900, i32 4096)
  br label %if.end.902

if.end.902:                                       ; preds = %if.then.897, %if.then.894
  %308 = load i32, i32* @finfo_size, align 4
  %mul = mul nsw i32 %308, 2
  store i32 %mul, i32* @finfo_size, align 4
  %309 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %310 = bitcast %struct.font_rec* %309 to i8*
  %311 = load i32, i32* @finfo_size, align 4
  %conv903 = sext i32 %311 to i64
  %mul904 = mul i64 %conv903, 96
  %call905 = call i8* @realloc(i8* %310, i64 %mul904) #4
  %312 = bitcast i8* %call905 to %struct.font_rec*
  store %struct.font_rec* %312, %struct.font_rec** @finfo, align 8
  %313 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %cmp906 = icmp eq %struct.font_rec* %313, null
  br i1 %cmp906, label %if.then.908, label %if.end.913

if.then.908:                                      ; preds = %if.end.902
  %314 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1909 = bitcast %union.rec* %314 to %struct.word_type*
  %ou1910 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1909, i32 0, i32 1
  %ofpos911 = bitcast %union.FIRST_UNION* %ou1910 to %struct.FILE_POS*
  %call912 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 52, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos911)
  br label %if.end.913

if.end.913:                                       ; preds = %if.then.908, %if.end.902
  br label %if.end.914

if.end.914:                                       ; preds = %if.end.913, %for.end.890
  %315 = load %union.rec*, %union.rec** %face, align 8
  %os1915 = bitcast %union.rec* %315 to %struct.word_type*
  %olist916 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1915, i32 0, i32 0
  %arrayidx917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist916, i32 0, i64 0
  %osucc918 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx917, i32 0, i32 1
  %316 = load %union.rec*, %union.rec** %osucc918, align 8
  %os1919 = bitcast %union.rec* %316 to %struct.word_type*
  %olist920 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1919, i32 0, i32 0
  %arrayidx921 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist920, i32 0, i64 0
  %osucc922 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx921, i32 0, i32 1
  %317 = load %union.rec*, %union.rec** %osucc922, align 8
  %os1923 = bitcast %union.rec* %317 to %struct.word_type*
  %olist924 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1923, i32 0, i32 0
  %arrayidx925 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist924, i32 0, i64 0
  %osucc926 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx925, i32 0, i32 1
  %318 = load %union.rec*, %union.rec** %osucc926, align 8
  %os1927 = bitcast %union.rec* %318 to %struct.word_type*
  %olist928 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1927, i32 0, i32 0
  %arrayidx929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist928, i32 0, i64 1
  %opred930 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx929, i32 0, i32 0
  %319 = load %union.rec*, %union.rec** %opred930, align 8
  store %union.rec* %319, %union.rec** %old, align 8
  br label %for.cond.931

for.cond.931:                                     ; preds = %for.inc.940, %if.end.914
  %320 = load %union.rec*, %union.rec** %old, align 8
  %os1932 = bitcast %union.rec* %320 to %struct.word_type*
  %ou1933 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1932, i32 0, i32 1
  %os11934 = bitcast %union.FIRST_UNION* %ou1933 to %struct.anon*
  %otype935 = getelementptr inbounds %struct.anon, %struct.anon* %os11934, i32 0, i32 0
  %321 = load i8, i8* %otype935, align 1
  %conv936 = zext i8 %321 to i32
  %cmp937 = icmp eq i32 %conv936, 0
  br i1 %cmp937, label %for.body.939, label %for.end.945

for.body.939:                                     ; preds = %for.cond.931
  br label %for.inc.940

for.inc.940:                                      ; preds = %for.body.939
  %322 = load %union.rec*, %union.rec** %old, align 8
  %os1941 = bitcast %union.rec* %322 to %struct.word_type*
  %olist942 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1941, i32 0, i32 0
  %arrayidx943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist942, i32 0, i64 1
  %opred944 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx943, i32 0, i32 0
  %323 = load %union.rec*, %union.rec** %opred944, align 8
  store %union.rec* %323, %union.rec** %old, align 8
  br label %for.cond.931

for.end.945:                                      ; preds = %for.cond.931
  %324 = load %union.rec*, %union.rec** %old, align 8
  %os1946 = bitcast %union.rec* %324 to %struct.word_type*
  %ou1947 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1946, i32 0, i32 1
  %os11948 = bitcast %union.FIRST_UNION* %ou1947 to %struct.anon*
  %otype949 = getelementptr inbounds %struct.anon, %struct.anon* %os11948, i32 0, i32 0
  %325 = load i8, i8* %otype949, align 1
  %conv950 = zext i8 %325 to i32
  %cmp951 = icmp eq i32 %conv950, 11
  br i1 %cmp951, label %if.end.963, label %lor.lhs.false.953

lor.lhs.false.953:                                ; preds = %for.end.945
  %326 = load %union.rec*, %union.rec** %old, align 8
  %os1954 = bitcast %union.rec* %326 to %struct.word_type*
  %ou1955 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1954, i32 0, i32 1
  %os11956 = bitcast %union.FIRST_UNION* %ou1955 to %struct.anon*
  %otype957 = getelementptr inbounds %struct.anon, %struct.anon* %os11956, i32 0, i32 0
  %327 = load i8, i8* %otype957, align 1
  %conv958 = zext i8 %327 to i32
  %cmp959 = icmp eq i32 %conv958, 12
  br i1 %cmp959, label %if.end.963, label %if.then.961

if.then.961:                                      ; preds = %lor.lhs.false.953
  %328 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call962 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %328, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.963

if.end.963:                                       ; preds = %if.then.961, %lor.lhs.false.953, %for.end.945
  %329 = load %union.rec*, %union.rec** %old, align 8
  %os1964 = bitcast %union.rec* %329 to %struct.word_type*
  %ostring965 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1964, i32 0, i32 4
  %arraydecay966 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring965, i32 0, i32 0
  %330 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call967 = call %union.rec* @MakeWord(i32 11, i8* %arraydecay966, %struct.FILE_POS* %330)
  store %union.rec* %call967, %union.rec** %new, align 8
  %331 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv968 = zext i8 %331 to i32
  store i32 %conv968, i32* @zz_size, align 4
  %conv969 = sext i32 %conv968 to i64
  %cmp970 = icmp uge i64 %conv969, 265
  br i1 %cmp970, label %if.then.972, label %if.else.974

if.then.972:                                      ; preds = %if.end.963
  %332 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call973 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %332)
  br label %if.end.991

if.else.974:                                      ; preds = %if.end.963
  %333 = load i32, i32* @zz_size, align 4
  %idxprom975 = sext i32 %333 to i64
  %arrayidx976 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom975
  %334 = load %union.rec*, %union.rec** %arrayidx976, align 8
  %cmp977 = icmp eq %union.rec* %334, null
  br i1 %cmp977, label %if.then.979, label %if.else.981

if.then.979:                                      ; preds = %if.else.974
  %335 = load i32, i32* @zz_size, align 4
  %336 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call980 = call %union.rec* @GetMemory(i32 %335, %struct.FILE_POS* %336)
  store %union.rec* %call980, %union.rec** @zz_hold, align 8
  br label %if.end.990

if.else.981:                                      ; preds = %if.else.974
  %337 = load i32, i32* @zz_size, align 4
  %idxprom982 = sext i32 %337 to i64
  %arrayidx983 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom982
  %338 = load %union.rec*, %union.rec** %arrayidx983, align 8
  store %union.rec* %338, %union.rec** @zz_hold, align 8
  store %union.rec* %338, %union.rec** @zz_hold, align 8
  %339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1984 = bitcast %union.rec* %339 to %struct.word_type*
  %olist985 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1984, i32 0, i32 0
  %arrayidx986 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist985, i32 0, i64 0
  %opred987 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx986, i32 0, i32 0
  %340 = load %union.rec*, %union.rec** %opred987, align 8
  %341 = load i32, i32* @zz_size, align 4
  %idxprom988 = sext i32 %341 to i64
  %arrayidx989 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom988
  store %union.rec* %340, %union.rec** %arrayidx989, align 8
  br label %if.end.990

if.end.990:                                       ; preds = %if.else.981, %if.then.979
  br label %if.end.991

if.end.991:                                       ; preds = %if.end.990, %if.then.972
  %342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1992 = bitcast %union.rec* %342 to %struct.word_type*
  %ou1993 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1992, i32 0, i32 1
  %os11994 = bitcast %union.FIRST_UNION* %ou1993 to %struct.anon*
  %otype995 = getelementptr inbounds %struct.anon, %struct.anon* %os11994, i32 0, i32 0
  store i8 0, i8* %otype995, align 1
  %343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1996 = bitcast %union.rec* %344 to %struct.word_type*
  %olist997 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1996, i32 0, i32 0
  %arrayidx998 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist997, i32 0, i64 1
  %osucc999 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx998, i32 0, i32 1
  store %union.rec* %343, %union.rec** %osucc999, align 8
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11000 = bitcast %union.rec* %345 to %struct.word_type*
  %olist1001 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11000, i32 0, i32 0
  %arrayidx1002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1001, i32 0, i64 1
  %opred1003 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1002, i32 0, i32 0
  store %union.rec* %343, %union.rec** %opred1003, align 8
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11004 = bitcast %union.rec* %346 to %struct.word_type*
  %olist1005 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11004, i32 0, i32 0
  %arrayidx1006 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1005, i32 0, i64 0
  %osucc1007 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1006, i32 0, i32 1
  store %union.rec* %343, %union.rec** %osucc1007, align 8
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11008 = bitcast %union.rec* %347 to %struct.word_type*
  %olist1009 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11008, i32 0, i32 0
  %arrayidx1010 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1009, i32 0, i64 0
  %opred1011 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1010, i32 0, i32 0
  store %union.rec* %343, %union.rec** %opred1011, align 8
  store %union.rec* %343, %union.rec** @xx_link, align 8
  %348 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %348, %union.rec** @zz_res, align 8
  %349 = load %union.rec*, %union.rec** %face, align 8
  store %union.rec* %349, %union.rec** @zz_hold, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1012 = icmp eq %union.rec* %350, null
  br i1 %cmp1012, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.991
  %351 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1046

cond.false:                                       ; preds = %if.end.991
  %352 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1014 = icmp eq %union.rec* %352, null
  br i1 %cmp1014, label %cond.true.1016, label %cond.false.1017

cond.true.1016:                                   ; preds = %cond.false
  %353 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.1017:                                  ; preds = %cond.false
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11018 = bitcast %union.rec* %354 to %struct.word_type*
  %olist1019 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11018, i32 0, i32 0
  %arrayidx1020 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1019, i32 0, i64 0
  %opred1021 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1020, i32 0, i32 0
  %355 = load %union.rec*, %union.rec** %opred1021, align 8
  store %union.rec* %355, %union.rec** @zz_tmp, align 8
  %356 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11022 = bitcast %union.rec* %356 to %struct.word_type*
  %olist1023 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11022, i32 0, i32 0
  %arrayidx1024 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1023, i32 0, i64 0
  %opred1025 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1024, i32 0, i32 0
  %357 = load %union.rec*, %union.rec** %opred1025, align 8
  %358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11026 = bitcast %union.rec* %358 to %struct.word_type*
  %olist1027 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11026, i32 0, i32 0
  %arrayidx1028 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1027, i32 0, i64 0
  %opred1029 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1028, i32 0, i32 0
  store %union.rec* %357, %union.rec** %opred1029, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %360 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11030 = bitcast %union.rec* %360 to %struct.word_type*
  %olist1031 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11030, i32 0, i32 0
  %arrayidx1032 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1031, i32 0, i64 0
  %opred1033 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1032, i32 0, i32 0
  %361 = load %union.rec*, %union.rec** %opred1033, align 8
  %os11034 = bitcast %union.rec* %361 to %struct.word_type*
  %olist1035 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11034, i32 0, i32 0
  %arrayidx1036 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1035, i32 0, i64 0
  %osucc1037 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1036, i32 0, i32 1
  store %union.rec* %359, %union.rec** %osucc1037, align 8
  %362 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %363 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11038 = bitcast %union.rec* %363 to %struct.word_type*
  %olist1039 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11038, i32 0, i32 0
  %arrayidx1040 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1039, i32 0, i64 0
  %opred1041 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1040, i32 0, i32 0
  store %union.rec* %362, %union.rec** %opred1041, align 8
  %364 = load %union.rec*, %union.rec** @zz_res, align 8
  %365 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11042 = bitcast %union.rec* %365 to %struct.word_type*
  %olist1043 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11042, i32 0, i32 0
  %arrayidx1044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1043, i32 0, i64 0
  %osucc1045 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1044, i32 0, i32 1
  store %union.rec* %364, %union.rec** %osucc1045, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.1017, %cond.true.1016
  %cond = phi %union.rec* [ %353, %cond.true.1016 ], [ %364, %cond.false.1017 ]
  br label %cond.end.1046

cond.end.1046:                                    ; preds = %cond.end, %cond.true
  %cond1047 = phi %union.rec* [ %351, %cond.true ], [ %cond, %cond.end ]
  %366 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %366, %union.rec** @zz_res, align 8
  %367 = load %union.rec*, %union.rec** %new, align 8
  store %union.rec* %367, %union.rec** @zz_hold, align 8
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1048 = icmp eq %union.rec* %368, null
  br i1 %cmp1048, label %cond.true.1050, label %cond.false.1051

cond.true.1050:                                   ; preds = %cond.end.1046
  %369 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1086

cond.false.1051:                                  ; preds = %cond.end.1046
  %370 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1052 = icmp eq %union.rec* %370, null
  br i1 %cmp1052, label %cond.true.1054, label %cond.false.1055

cond.true.1054:                                   ; preds = %cond.false.1051
  %371 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1084

cond.false.1055:                                  ; preds = %cond.false.1051
  %372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11056 = bitcast %union.rec* %372 to %struct.word_type*
  %olist1057 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11056, i32 0, i32 0
  %arrayidx1058 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1057, i32 0, i64 1
  %opred1059 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1058, i32 0, i32 0
  %373 = load %union.rec*, %union.rec** %opred1059, align 8
  store %union.rec* %373, %union.rec** @zz_tmp, align 8
  %374 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11060 = bitcast %union.rec* %374 to %struct.word_type*
  %olist1061 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11060, i32 0, i32 0
  %arrayidx1062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1061, i32 0, i64 1
  %opred1063 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1062, i32 0, i32 0
  %375 = load %union.rec*, %union.rec** %opred1063, align 8
  %376 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11064 = bitcast %union.rec* %376 to %struct.word_type*
  %olist1065 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11064, i32 0, i32 0
  %arrayidx1066 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1065, i32 0, i64 1
  %opred1067 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1066, i32 0, i32 0
  store %union.rec* %375, %union.rec** %opred1067, align 8
  %377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %378 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11068 = bitcast %union.rec* %378 to %struct.word_type*
  %olist1069 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11068, i32 0, i32 0
  %arrayidx1070 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1069, i32 0, i64 1
  %opred1071 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1070, i32 0, i32 0
  %379 = load %union.rec*, %union.rec** %opred1071, align 8
  %os11072 = bitcast %union.rec* %379 to %struct.word_type*
  %olist1073 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11072, i32 0, i32 0
  %arrayidx1074 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1073, i32 0, i64 1
  %osucc1075 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1074, i32 0, i32 1
  store %union.rec* %377, %union.rec** %osucc1075, align 8
  %380 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %381 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11076 = bitcast %union.rec* %381 to %struct.word_type*
  %olist1077 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11076, i32 0, i32 0
  %arrayidx1078 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1077, i32 0, i64 1
  %opred1079 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1078, i32 0, i32 0
  store %union.rec* %380, %union.rec** %opred1079, align 8
  %382 = load %union.rec*, %union.rec** @zz_res, align 8
  %383 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11080 = bitcast %union.rec* %383 to %struct.word_type*
  %olist1081 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11080, i32 0, i32 0
  %arrayidx1082 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1081, i32 0, i64 1
  %osucc1083 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1082, i32 0, i32 1
  store %union.rec* %382, %union.rec** %osucc1083, align 8
  br label %cond.end.1084

cond.end.1084:                                    ; preds = %cond.false.1055, %cond.true.1054
  %cond1085 = phi %union.rec* [ %371, %cond.true.1054 ], [ %382, %cond.false.1055 ]
  br label %cond.end.1086

cond.end.1086:                                    ; preds = %cond.end.1084, %cond.true.1050
  %cond1087 = phi %union.rec* [ %369, %cond.true.1050 ], [ %cond1085, %cond.end.1084 ]
  %384 = load i32, i32* @font_count, align 4
  %385 = load %union.rec*, %union.rec** %new, align 8
  %os11088 = bitcast %union.rec* %385 to %struct.word_type*
  %ou21089 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11088, i32 0, i32 2
  %os251090 = bitcast %union.SECOND_UNION* %ou21089 to %struct.anon.4*
  %386 = bitcast %struct.anon.4* %os251090 to i16*
  %387 = trunc i32 %384 to i16
  %bf.load1091 = load i16, i16* %386, align 4
  %bf.value1092 = and i16 %387, 4095
  %bf.clear1093 = and i16 %bf.load1091, -4096
  %bf.set1094 = or i16 %bf.clear1093, %bf.value1092
  store i16 %bf.set1094, i16* %386, align 4
  %bf.result.cast1095 = zext i16 %bf.value1092 to i32
  %388 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %uses_font_metrics1096 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %388, i32 0, i32 8
  %389 = load i32, i32* %uses_font_metrics1096, align 4
  %tobool1097 = icmp ne i32 %389, 0
  br i1 %tobool1097, label %cond.true.1098, label %cond.false.1100

cond.true.1098:                                   ; preds = %cond.end.1086
  %390 = load i16, i16* %flen, align 2
  %conv1099 = sext i16 %390 to i32
  br label %cond.end.1105

cond.false.1100:                                  ; preds = %cond.end.1086
  %391 = load %union.rec*, %union.rec** %old, align 8
  %os11101 = bitcast %union.rec* %391 to %struct.word_type*
  %ou31102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11101, i32 0, i32 3
  %os321103 = bitcast %union.THIRD_UNION* %ou31102 to %struct.anon.7*
  %ofont_size1104 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321103, i32 0, i32 0
  %392 = load i32, i32* %ofont_size1104, align 4
  br label %cond.end.1105

cond.end.1105:                                    ; preds = %cond.false.1100, %cond.true.1098
  %cond1106 = phi i32 [ %conv1099, %cond.true.1098 ], [ %392, %cond.false.1100 ]
  %393 = load %union.rec*, %union.rec** %new, align 8
  %os11107 = bitcast %union.rec* %393 to %struct.word_type*
  %ou31108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11107, i32 0, i32 3
  %os321109 = bitcast %union.THIRD_UNION* %ou31108 to %struct.anon.7*
  %ofont_size1110 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321109, i32 0, i32 0
  store i32 %cond1106, i32* %ofont_size1110, align 4
  %394 = load %union.rec*, %union.rec** %old, align 8
  %os11111 = bitcast %union.rec* %394 to %struct.word_type*
  %ou31112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11111, i32 0, i32 3
  %os321113 = bitcast %union.THIRD_UNION* %ou31112 to %struct.anon.7*
  %ofont_xheight2 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321113, i32 0, i32 1
  %395 = load i32, i32* %ofont_xheight2, align 4
  %396 = load %union.rec*, %union.rec** %new, align 8
  %os11114 = bitcast %union.rec* %396 to %struct.word_type*
  %ou31115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11114, i32 0, i32 3
  %os321116 = bitcast %union.THIRD_UNION* %ou31115 to %struct.anon.7*
  %ofont_size1117 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321116, i32 0, i32 0
  %397 = load i32, i32* %ofont_size1117, align 4
  %mul1118 = mul nsw i32 %395, %397
  %398 = load %union.rec*, %union.rec** %old, align 8
  %os11119 = bitcast %union.rec* %398 to %struct.word_type*
  %ou31120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11119, i32 0, i32 3
  %os321121 = bitcast %union.THIRD_UNION* %ou31120 to %struct.anon.7*
  %ofont_size1122 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321121, i32 0, i32 0
  %399 = load i32, i32* %ofont_size1122, align 4
  %div = sdiv i32 %mul1118, %399
  %400 = load %union.rec*, %union.rec** %new, align 8
  %os11123 = bitcast %union.rec* %400 to %struct.word_type*
  %ou31124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11123, i32 0, i32 3
  %os321125 = bitcast %union.THIRD_UNION* %ou31124 to %struct.anon.7*
  %ofont_xheight21126 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321125, i32 0, i32 1
  store i32 %div, i32* %ofont_xheight21126, align 4
  %401 = load %union.rec*, %union.rec** %old, align 8
  %os11127 = bitcast %union.rec* %401 to %struct.word_type*
  %ou31128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11127, i32 0, i32 3
  %os321129 = bitcast %union.THIRD_UNION* %ou31128 to %struct.anon.7*
  %ofont_recoded = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321129, i32 0, i32 3
  %bf.load1130 = load i8, i8* %ofont_recoded, align 4
  %bf.lshr1131 = lshr i8 %bf.load1130, 7
  %bf.cast1132 = zext i8 %bf.lshr1131 to i32
  %402 = load %union.rec*, %union.rec** %new, align 8
  %os11133 = bitcast %union.rec* %402 to %struct.word_type*
  %ou31134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11133, i32 0, i32 3
  %os321135 = bitcast %union.THIRD_UNION* %ou31134 to %struct.anon.7*
  %ofont_recoded1136 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321135, i32 0, i32 3
  %403 = trunc i32 %bf.cast1132 to i8
  %bf.load1137 = load i8, i8* %ofont_recoded1136, align 4
  %bf.value1138 = and i8 %403, 1
  %bf.shl1139 = shl i8 %bf.value1138, 7
  %bf.clear1140 = and i8 %bf.load1137, 127
  %bf.set1141 = or i8 %bf.clear1140, %bf.shl1139
  store i8 %bf.set1141, i8* %ofont_recoded1136, align 4
  %bf.result.cast1142 = zext i8 %bf.value1138 to i32
  %404 = load %union.rec*, %union.rec** %old, align 8
  %os11143 = bitcast %union.rec* %404 to %struct.word_type*
  %ou31144 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11143, i32 0, i32 3
  %os321145 = bitcast %union.THIRD_UNION* %ou31144 to %struct.anon.7*
  %ofont_mapping = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321145, i32 0, i32 3
  %bf.load1146 = load i8, i8* %ofont_mapping, align 4
  %bf.clear1147 = and i8 %bf.load1146, 127
  %bf.cast1148 = zext i8 %bf.clear1147 to i32
  %405 = load %union.rec*, %union.rec** %new, align 8
  %os11149 = bitcast %union.rec* %405 to %struct.word_type*
  %ou31150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11149, i32 0, i32 3
  %os321151 = bitcast %union.THIRD_UNION* %ou31150 to %struct.anon.7*
  %ofont_mapping1152 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321151, i32 0, i32 3
  %406 = trunc i32 %bf.cast1148 to i8
  %bf.load1153 = load i8, i8* %ofont_mapping1152, align 4
  %bf.value1154 = and i8 %406, 127
  %bf.clear1155 = and i8 %bf.load1153, -128
  %bf.set1156 = or i8 %bf.clear1155, %bf.value1154
  store i8 %bf.set1156, i8* %ofont_mapping1152, align 4
  %bf.result.cast1157 = zext i8 %bf.value1154 to i32
  %407 = load %union.rec*, %union.rec** %old, align 8
  %os11158 = bitcast %union.rec* %407 to %struct.word_type*
  %ou31159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11158, i32 0, i32 3
  %os321160 = bitcast %union.THIRD_UNION* %ou31159 to %struct.anon.7*
  %ofont_spacewidth1161 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321160, i32 0, i32 2
  %408 = load i32, i32* %ofont_spacewidth1161, align 4
  %409 = load %union.rec*, %union.rec** %new, align 8
  %os11162 = bitcast %union.rec* %409 to %struct.word_type*
  %ou31163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11162, i32 0, i32 3
  %os321164 = bitcast %union.THIRD_UNION* %ou31163 to %struct.anon.7*
  %ofont_size1165 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321164, i32 0, i32 0
  %410 = load i32, i32* %ofont_size1165, align 4
  %mul1166 = mul nsw i32 %408, %410
  %411 = load %union.rec*, %union.rec** %old, align 8
  %os11167 = bitcast %union.rec* %411 to %struct.word_type*
  %ou31168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11167, i32 0, i32 3
  %os321169 = bitcast %union.THIRD_UNION* %ou31168 to %struct.anon.7*
  %ofont_size1170 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321169, i32 0, i32 0
  %412 = load i32, i32* %ofont_size1170, align 4
  %div1171 = sdiv i32 %mul1166, %412
  %413 = load %union.rec*, %union.rec** %new, align 8
  %os11172 = bitcast %union.rec* %413 to %struct.word_type*
  %ou31173 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11172, i32 0, i32 3
  %os321174 = bitcast %union.THIRD_UNION* %ou31173 to %struct.anon.7*
  %ofont_spacewidth1175 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321174, i32 0, i32 2
  store i32 %div1171, i32* %ofont_spacewidth1175, align 4
  %414 = load %union.rec*, %union.rec** %new, align 8
  %415 = load i32, i32* @font_count, align 4
  %idxprom1176 = zext i32 %415 to i64
  %416 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1177 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %416, i64 %idxprom1176
  %font_table1178 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1177, i32 0, i32 5
  store %union.rec* %414, %union.rec** %font_table1178, align 8
  %417 = load %union.rec*, %union.rec** %face, align 8
  %418 = load i32, i32* @font_count, align 4
  %idxprom1179 = zext i32 %418 to i64
  %419 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1180 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %419, i64 %idxprom1179
  %original_face = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1180, i32 0, i32 6
  store %union.rec* %417, %union.rec** %original_face, align 8
  %420 = load %union.rec*, %union.rec** %old, align 8
  %os11181 = bitcast %union.rec* %420 to %struct.word_type*
  %ou21182 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11181, i32 0, i32 2
  %os251183 = bitcast %union.SECOND_UNION* %ou21182 to %struct.anon.4*
  %421 = bitcast %struct.anon.4* %os251183 to i16*
  %bf.load1184 = load i16, i16* %421, align 4
  %bf.clear1185 = and i16 %bf.load1184, 4095
  %bf.cast1186 = zext i16 %bf.clear1185 to i32
  %idxprom1187 = zext i32 %bf.cast1186 to i64
  %422 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1188 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %422, i64 %idxprom1187
  %underline_pos = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1188, i32 0, i32 7
  %423 = load i16, i16* %underline_pos, align 2
  %conv1189 = sext i16 %423 to i32
  %424 = load %union.rec*, %union.rec** %new, align 8
  %os11190 = bitcast %union.rec* %424 to %struct.word_type*
  %ou31191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11190, i32 0, i32 3
  %os321192 = bitcast %union.THIRD_UNION* %ou31191 to %struct.anon.7*
  %ofont_size1193 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321192, i32 0, i32 0
  %425 = load i32, i32* %ofont_size1193, align 4
  %mul1194 = mul nsw i32 %conv1189, %425
  %426 = load %union.rec*, %union.rec** %old, align 8
  %os11195 = bitcast %union.rec* %426 to %struct.word_type*
  %ou31196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11195, i32 0, i32 3
  %os321197 = bitcast %union.THIRD_UNION* %ou31196 to %struct.anon.7*
  %ofont_size1198 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321197, i32 0, i32 0
  %427 = load i32, i32* %ofont_size1198, align 4
  %div1199 = sdiv i32 %mul1194, %427
  %conv1200 = trunc i32 %div1199 to i16
  %428 = load i32, i32* @font_count, align 4
  %idxprom1201 = zext i32 %428 to i64
  %429 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1202 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %429, i64 %idxprom1201
  %underline_pos1203 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1202, i32 0, i32 7
  store i16 %conv1200, i16* %underline_pos1203, align 2
  %430 = load %union.rec*, %union.rec** %old, align 8
  %os11204 = bitcast %union.rec* %430 to %struct.word_type*
  %ou21205 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11204, i32 0, i32 2
  %os251206 = bitcast %union.SECOND_UNION* %ou21205 to %struct.anon.4*
  %431 = bitcast %struct.anon.4* %os251206 to i16*
  %bf.load1207 = load i16, i16* %431, align 4
  %bf.clear1208 = and i16 %bf.load1207, 4095
  %bf.cast1209 = zext i16 %bf.clear1208 to i32
  %idxprom1210 = zext i32 %bf.cast1209 to i64
  %432 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1211 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %432, i64 %idxprom1210
  %underline_thick = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1211, i32 0, i32 8
  %433 = load i16, i16* %underline_thick, align 2
  %conv1212 = sext i16 %433 to i32
  %434 = load %union.rec*, %union.rec** %new, align 8
  %os11213 = bitcast %union.rec* %434 to %struct.word_type*
  %ou31214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11213, i32 0, i32 3
  %os321215 = bitcast %union.THIRD_UNION* %ou31214 to %struct.anon.7*
  %ofont_size1216 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321215, i32 0, i32 0
  %435 = load i32, i32* %ofont_size1216, align 4
  %mul1217 = mul nsw i32 %conv1212, %435
  %436 = load %union.rec*, %union.rec** %old, align 8
  %os11218 = bitcast %union.rec* %436 to %struct.word_type*
  %ou31219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11218, i32 0, i32 3
  %os321220 = bitcast %union.THIRD_UNION* %ou31219 to %struct.anon.7*
  %ofont_size1221 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321220, i32 0, i32 0
  %437 = load i32, i32* %ofont_size1221, align 4
  %div1222 = sdiv i32 %mul1217, %437
  %conv1223 = trunc i32 %div1222 to i16
  %438 = load i32, i32* @font_count, align 4
  %idxprom1224 = zext i32 %438 to i64
  %439 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1225 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %439, i64 %idxprom1224
  %underline_thick1226 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1225, i32 0, i32 8
  store i16 %conv1223, i16* %underline_thick1226, align 2
  %call1227 = call noalias i8* @malloc(i64 2560) #4
  %440 = bitcast i8* %call1227 to %struct.metrics*
  %441 = load i32, i32* @font_count, align 4
  %idxprom1228 = zext i32 %441 to i64
  %442 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1229 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %442, i64 %idxprom1228
  %size_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1229, i32 0, i32 0
  store %struct.metrics* %440, %struct.metrics** %size_table, align 8
  %443 = load i32, i32* @font_count, align 4
  %idxprom1230 = zext i32 %443 to i64
  %444 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1231 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %444, i64 %idxprom1230
  %size_table1232 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1231, i32 0, i32 0
  %445 = load %struct.metrics*, %struct.metrics** %size_table1232, align 8
  %cmp1233 = icmp eq %struct.metrics* %445, null
  br i1 %cmp1233, label %if.then.1235, label %if.end.1240

if.then.1235:                                     ; preds = %cond.end.1105
  %446 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11236 = bitcast %union.rec* %446 to %struct.word_type*
  %ou11237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11236, i32 0, i32 1
  %ofpos1238 = bitcast %union.FIRST_UNION* %ou11237 to %struct.FILE_POS*
  %call1239 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 53, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1238)
  br label %if.end.1240

if.end.1240:                                      ; preds = %if.then.1235, %cond.end.1105
  %447 = load %union.rec*, %union.rec** %old, align 8
  %os11241 = bitcast %union.rec* %447 to %struct.word_type*
  %ou21242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11241, i32 0, i32 2
  %os251243 = bitcast %union.SECOND_UNION* %ou21242 to %struct.anon.4*
  %448 = bitcast %struct.anon.4* %os251243 to i16*
  %bf.load1244 = load i16, i16* %448, align 4
  %bf.clear1245 = and i16 %bf.load1244, 4095
  %bf.cast1246 = zext i16 %bf.clear1245 to i32
  %idxprom1247 = zext i32 %bf.cast1246 to i64
  %449 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1248 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %449, i64 %idxprom1247
  %lig_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1248, i32 0, i32 1
  %450 = load i8*, i8** %lig_table, align 8
  store i8* %450, i8** %lig, align 8
  %451 = load i32, i32* @font_count, align 4
  %idxprom1249 = zext i32 %451 to i64
  %452 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1250 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %452, i64 %idxprom1249
  %lig_table1251 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1250, i32 0, i32 1
  store i8* %450, i8** %lig_table1251, align 8
  %453 = load %union.rec*, %union.rec** %new, align 8
  %os11252 = bitcast %union.rec* %453 to %struct.word_type*
  %ou21253 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11252, i32 0, i32 2
  %os251254 = bitcast %union.SECOND_UNION* %ou21253 to %struct.anon.4*
  %454 = bitcast %struct.anon.4* %os251254 to i16*
  %bf.load1255 = load i16, i16* %454, align 4
  %bf.clear1256 = and i16 %bf.load1255, 4095
  %bf.cast1257 = zext i16 %bf.clear1256 to i32
  %idxprom1258 = zext i32 %bf.cast1257 to i64
  %455 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1259 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %455, i64 %idxprom1258
  %size_table1260 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1259, i32 0, i32 0
  %456 = load %struct.metrics*, %struct.metrics** %size_table1260, align 8
  store %struct.metrics* %456, %struct.metrics** %newfnt, align 8
  %457 = load %union.rec*, %union.rec** %old, align 8
  %os11261 = bitcast %union.rec* %457 to %struct.word_type*
  %ou21262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11261, i32 0, i32 2
  %os251263 = bitcast %union.SECOND_UNION* %ou21262 to %struct.anon.4*
  %458 = bitcast %struct.anon.4* %os251263 to i16*
  %bf.load1264 = load i16, i16* %458, align 4
  %bf.clear1265 = and i16 %bf.load1264, 4095
  %bf.cast1266 = zext i16 %bf.clear1265 to i32
  %idxprom1267 = zext i32 %bf.cast1266 to i64
  %459 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1268 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %459, i64 %idxprom1267
  %size_table1269 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1268, i32 0, i32 0
  %460 = load %struct.metrics*, %struct.metrics** %size_table1269, align 8
  store %struct.metrics* %460, %struct.metrics** %oldfnt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1270

for.cond.1270:                                    ; preds = %for.inc.1366, %if.end.1240
  %461 = load i32, i32* %i, align 4
  %cmp1271 = icmp slt i32 %461, 256
  br i1 %cmp1271, label %for.body.1273, label %for.end.1368

for.body.1273:                                    ; preds = %for.cond.1270
  %462 = load i32, i32* %i, align 4
  %idxprom1274 = sext i32 %462 to i64
  %463 = load i8*, i8** %lig, align 8
  %arrayidx1275 = getelementptr inbounds i8, i8* %463, i64 %idxprom1274
  %464 = load i8, i8* %arrayidx1275, align 1
  %conv1276 = zext i8 %464 to i32
  %cmp1277 = icmp ne i32 %conv1276, 1
  br i1 %cmp1277, label %if.then.1279, label %if.end.1365

if.then.1279:                                     ; preds = %for.body.1273
  %465 = load i32, i32* %i, align 4
  %idxprom1280 = sext i32 %465 to i64
  %466 = load %struct.metrics*, %struct.metrics** %oldfnt, align 8
  %arrayidx1281 = getelementptr inbounds %struct.metrics, %struct.metrics* %466, i64 %idxprom1280
  %left = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx1281, i32 0, i32 2
  %467 = load i16, i16* %left, align 2
  %conv1282 = sext i16 %467 to i32
  %468 = load %union.rec*, %union.rec** %new, align 8
  %os11283 = bitcast %union.rec* %468 to %struct.word_type*
  %ou31284 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11283, i32 0, i32 3
  %os321285 = bitcast %union.THIRD_UNION* %ou31284 to %struct.anon.7*
  %ofont_size1286 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321285, i32 0, i32 0
  %469 = load i32, i32* %ofont_size1286, align 4
  %mul1287 = mul nsw i32 %conv1282, %469
  %470 = load %union.rec*, %union.rec** %old, align 8
  %os11288 = bitcast %union.rec* %470 to %struct.word_type*
  %ou31289 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11288, i32 0, i32 3
  %os321290 = bitcast %union.THIRD_UNION* %ou31289 to %struct.anon.7*
  %ofont_size1291 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321290, i32 0, i32 0
  %471 = load i32, i32* %ofont_size1291, align 4
  %div1292 = sdiv i32 %mul1287, %471
  %conv1293 = trunc i32 %div1292 to i16
  %472 = load i32, i32* %i, align 4
  %idxprom1294 = sext i32 %472 to i64
  %473 = load %struct.metrics*, %struct.metrics** %newfnt, align 8
  %arrayidx1295 = getelementptr inbounds %struct.metrics, %struct.metrics* %473, i64 %idxprom1294
  %left1296 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx1295, i32 0, i32 2
  store i16 %conv1293, i16* %left1296, align 2
  %474 = load i32, i32* %i, align 4
  %idxprom1297 = sext i32 %474 to i64
  %475 = load %struct.metrics*, %struct.metrics** %oldfnt, align 8
  %arrayidx1298 = getelementptr inbounds %struct.metrics, %struct.metrics* %475, i64 %idxprom1297
  %right = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx1298, i32 0, i32 3
  %476 = load i16, i16* %right, align 2
  %conv1299 = sext i16 %476 to i32
  %477 = load %union.rec*, %union.rec** %new, align 8
  %os11300 = bitcast %union.rec* %477 to %struct.word_type*
  %ou31301 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11300, i32 0, i32 3
  %os321302 = bitcast %union.THIRD_UNION* %ou31301 to %struct.anon.7*
  %ofont_size1303 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321302, i32 0, i32 0
  %478 = load i32, i32* %ofont_size1303, align 4
  %mul1304 = mul nsw i32 %conv1299, %478
  %479 = load %union.rec*, %union.rec** %old, align 8
  %os11305 = bitcast %union.rec* %479 to %struct.word_type*
  %ou31306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11305, i32 0, i32 3
  %os321307 = bitcast %union.THIRD_UNION* %ou31306 to %struct.anon.7*
  %ofont_size1308 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321307, i32 0, i32 0
  %480 = load i32, i32* %ofont_size1308, align 4
  %div1309 = sdiv i32 %mul1304, %480
  %conv1310 = trunc i32 %div1309 to i16
  %481 = load i32, i32* %i, align 4
  %idxprom1311 = sext i32 %481 to i64
  %482 = load %struct.metrics*, %struct.metrics** %newfnt, align 8
  %arrayidx1312 = getelementptr inbounds %struct.metrics, %struct.metrics* %482, i64 %idxprom1311
  %right1313 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx1312, i32 0, i32 3
  store i16 %conv1310, i16* %right1313, align 2
  %483 = load i32, i32* %i, align 4
  %idxprom1314 = sext i32 %483 to i64
  %484 = load %struct.metrics*, %struct.metrics** %oldfnt, align 8
  %arrayidx1315 = getelementptr inbounds %struct.metrics, %struct.metrics* %484, i64 %idxprom1314
  %down = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx1315, i32 0, i32 1
  %485 = load i16, i16* %down, align 2
  %conv1316 = sext i16 %485 to i32
  %486 = load %union.rec*, %union.rec** %new, align 8
  %os11317 = bitcast %union.rec* %486 to %struct.word_type*
  %ou31318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11317, i32 0, i32 3
  %os321319 = bitcast %union.THIRD_UNION* %ou31318 to %struct.anon.7*
  %ofont_size1320 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321319, i32 0, i32 0
  %487 = load i32, i32* %ofont_size1320, align 4
  %mul1321 = mul nsw i32 %conv1316, %487
  %488 = load %union.rec*, %union.rec** %old, align 8
  %os11322 = bitcast %union.rec* %488 to %struct.word_type*
  %ou31323 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11322, i32 0, i32 3
  %os321324 = bitcast %union.THIRD_UNION* %ou31323 to %struct.anon.7*
  %ofont_size1325 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321324, i32 0, i32 0
  %489 = load i32, i32* %ofont_size1325, align 4
  %div1326 = sdiv i32 %mul1321, %489
  %conv1327 = trunc i32 %div1326 to i16
  %490 = load i32, i32* %i, align 4
  %idxprom1328 = sext i32 %490 to i64
  %491 = load %struct.metrics*, %struct.metrics** %newfnt, align 8
  %arrayidx1329 = getelementptr inbounds %struct.metrics, %struct.metrics* %491, i64 %idxprom1328
  %down1330 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx1329, i32 0, i32 1
  store i16 %conv1327, i16* %down1330, align 2
  %492 = load i32, i32* %i, align 4
  %idxprom1331 = sext i32 %492 to i64
  %493 = load %struct.metrics*, %struct.metrics** %oldfnt, align 8
  %arrayidx1332 = getelementptr inbounds %struct.metrics, %struct.metrics* %493, i64 %idxprom1331
  %up = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx1332, i32 0, i32 0
  %494 = load i16, i16* %up, align 2
  %conv1333 = sext i16 %494 to i32
  %495 = load %union.rec*, %union.rec** %new, align 8
  %os11334 = bitcast %union.rec* %495 to %struct.word_type*
  %ou31335 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11334, i32 0, i32 3
  %os321336 = bitcast %union.THIRD_UNION* %ou31335 to %struct.anon.7*
  %ofont_size1337 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321336, i32 0, i32 0
  %496 = load i32, i32* %ofont_size1337, align 4
  %mul1338 = mul nsw i32 %conv1333, %496
  %497 = load %union.rec*, %union.rec** %old, align 8
  %os11339 = bitcast %union.rec* %497 to %struct.word_type*
  %ou31340 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11339, i32 0, i32 3
  %os321341 = bitcast %union.THIRD_UNION* %ou31340 to %struct.anon.7*
  %ofont_size1342 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321341, i32 0, i32 0
  %498 = load i32, i32* %ofont_size1342, align 4
  %div1343 = sdiv i32 %mul1338, %498
  %conv1344 = trunc i32 %div1343 to i16
  %499 = load i32, i32* %i, align 4
  %idxprom1345 = sext i32 %499 to i64
  %500 = load %struct.metrics*, %struct.metrics** %newfnt, align 8
  %arrayidx1346 = getelementptr inbounds %struct.metrics, %struct.metrics* %500, i64 %idxprom1345
  %up1347 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx1346, i32 0, i32 0
  store i16 %conv1344, i16* %up1347, align 2
  %501 = load i32, i32* %i, align 4
  %idxprom1348 = sext i32 %501 to i64
  %502 = load %struct.metrics*, %struct.metrics** %oldfnt, align 8
  %arrayidx1349 = getelementptr inbounds %struct.metrics, %struct.metrics* %502, i64 %idxprom1348
  %last_adjust = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx1349, i32 0, i32 4
  %503 = load i16, i16* %last_adjust, align 2
  %conv1350 = sext i16 %503 to i32
  %504 = load %union.rec*, %union.rec** %new, align 8
  %os11351 = bitcast %union.rec* %504 to %struct.word_type*
  %ou31352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11351, i32 0, i32 3
  %os321353 = bitcast %union.THIRD_UNION* %ou31352 to %struct.anon.7*
  %ofont_size1354 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321353, i32 0, i32 0
  %505 = load i32, i32* %ofont_size1354, align 4
  %mul1355 = mul nsw i32 %conv1350, %505
  %506 = load %union.rec*, %union.rec** %old, align 8
  %os11356 = bitcast %union.rec* %506 to %struct.word_type*
  %ou31357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11356, i32 0, i32 3
  %os321358 = bitcast %union.THIRD_UNION* %ou31357 to %struct.anon.7*
  %ofont_size1359 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321358, i32 0, i32 0
  %507 = load i32, i32* %ofont_size1359, align 4
  %div1360 = sdiv i32 %mul1355, %507
  %conv1361 = trunc i32 %div1360 to i16
  %508 = load i32, i32* %i, align 4
  %idxprom1362 = sext i32 %508 to i64
  %509 = load %struct.metrics*, %struct.metrics** %newfnt, align 8
  %arrayidx1363 = getelementptr inbounds %struct.metrics, %struct.metrics* %509, i64 %idxprom1362
  %last_adjust1364 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx1363, i32 0, i32 4
  store i16 %conv1361, i16* %last_adjust1364, align 2
  br label %if.end.1365

if.end.1365:                                      ; preds = %if.then.1279, %for.body.1273
  br label %for.inc.1366

for.inc.1366:                                     ; preds = %if.end.1365
  %510 = load i32, i32* %i, align 4
  %inc1367 = add nsw i32 %510, 1
  store i32 %inc1367, i32* %i, align 4
  br label %for.cond.1270

for.end.1368:                                     ; preds = %for.cond.1270
  %511 = load %union.rec*, %union.rec** %old, align 8
  %os11369 = bitcast %union.rec* %511 to %struct.word_type*
  %ou21370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11369, i32 0, i32 2
  %os251371 = bitcast %union.SECOND_UNION* %ou21370 to %struct.anon.4*
  %512 = bitcast %struct.anon.4* %os251371 to i16*
  %bf.load1372 = load i16, i16* %512, align 4
  %bf.clear1373 = and i16 %bf.load1372, 4095
  %bf.cast1374 = zext i16 %bf.clear1373 to i32
  %idxprom1375 = zext i32 %bf.cast1374 to i64
  %513 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1376 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %513, i64 %idxprom1375
  %composite = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1376, i32 0, i32 2
  %514 = load i16*, i16** %composite, align 8
  %515 = load i32, i32* @font_count, align 4
  %idxprom1377 = zext i32 %515 to i64
  %516 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1378 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %516, i64 %idxprom1377
  %composite1379 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1378, i32 0, i32 2
  store i16* %514, i16** %composite1379, align 8
  %517 = load %union.rec*, %union.rec** %old, align 8
  %os11380 = bitcast %union.rec* %517 to %struct.word_type*
  %ou21381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11380, i32 0, i32 2
  %os251382 = bitcast %union.SECOND_UNION* %ou21381 to %struct.anon.4*
  %518 = bitcast %struct.anon.4* %os251382 to i16*
  %bf.load1383 = load i16, i16* %518, align 4
  %bf.clear1384 = and i16 %bf.load1383, 4095
  %bf.cast1385 = zext i16 %bf.clear1384 to i32
  %idxprom1386 = zext i32 %bf.cast1385 to i64
  %519 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1387 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %519, i64 %idxprom1386
  %cmp_top = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1387, i32 0, i32 4
  %520 = load i32, i32* %cmp_top, align 4
  store i32 %520, i32* %cmptop, align 4
  %521 = load i32, i32* @font_count, align 4
  %idxprom1388 = zext i32 %521 to i64
  %522 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1389 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %522, i64 %idxprom1388
  %cmp_top1390 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1389, i32 0, i32 4
  store i32 %520, i32* %cmp_top1390, align 4
  %523 = load %union.rec*, %union.rec** %old, align 8
  %os11391 = bitcast %union.rec* %523 to %struct.word_type*
  %ou21392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11391, i32 0, i32 2
  %os251393 = bitcast %union.SECOND_UNION* %ou21392 to %struct.anon.4*
  %524 = bitcast %struct.anon.4* %os251393 to i16*
  %bf.load1394 = load i16, i16* %524, align 4
  %bf.clear1395 = and i16 %bf.load1394, 4095
  %bf.cast1396 = zext i16 %bf.clear1395 to i32
  %idxprom1397 = zext i32 %bf.cast1396 to i64
  %525 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1398 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %525, i64 %idxprom1397
  %cmp_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1398, i32 0, i32 3
  %526 = load %struct.composite_rec*, %struct.composite_rec** %cmp_table, align 8
  store %struct.composite_rec* %526, %struct.composite_rec** %oldcmp, align 8
  %527 = load i32, i32* %cmptop, align 4
  %conv1399 = sext i32 %527 to i64
  %mul1400 = mul i64 %conv1399, 6
  %call1401 = call noalias i8* @malloc(i64 %mul1400) #4
  %528 = bitcast i8* %call1401 to %struct.composite_rec*
  store %struct.composite_rec* %528, %struct.composite_rec** %newcmp, align 8
  %529 = load %struct.composite_rec*, %struct.composite_rec** %newcmp, align 8
  %cmp1402 = icmp eq %struct.composite_rec* %529, null
  br i1 %cmp1402, label %if.then.1404, label %if.end.1409

if.then.1404:                                     ; preds = %for.end.1368
  %530 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11405 = bitcast %union.rec* %530 to %struct.word_type*
  %ou11406 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11405, i32 0, i32 1
  %ofpos1407 = bitcast %union.FIRST_UNION* %ou11406 to %struct.FILE_POS*
  %call1408 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1407)
  br label %if.end.1409

if.end.1409:                                      ; preds = %if.then.1404, %for.end.1368
  store i32 1, i32* %i, align 4
  br label %for.cond.1410

for.cond.1410:                                    ; preds = %for.inc.1461, %if.end.1409
  %531 = load i32, i32* %i, align 4
  %532 = load i32, i32* %cmptop, align 4
  %cmp1411 = icmp slt i32 %531, %532
  br i1 %cmp1411, label %for.body.1413, label %for.end.1463

for.body.1413:                                    ; preds = %for.cond.1410
  %533 = load i32, i32* %i, align 4
  %idxprom1414 = sext i32 %533 to i64
  %534 = load %struct.composite_rec*, %struct.composite_rec** %oldcmp, align 8
  %arrayidx1415 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %534, i64 %idxprom1414
  %char_code = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %arrayidx1415, i32 0, i32 0
  %535 = load i8, i8* %char_code, align 1
  %536 = load i32, i32* %i, align 4
  %idxprom1416 = sext i32 %536 to i64
  %537 = load %struct.composite_rec*, %struct.composite_rec** %newcmp, align 8
  %arrayidx1417 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %537, i64 %idxprom1416
  %char_code1418 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %arrayidx1417, i32 0, i32 0
  store i8 %535, i8* %char_code1418, align 1
  %538 = load i32, i32* %i, align 4
  %idxprom1419 = sext i32 %538 to i64
  %539 = load %struct.composite_rec*, %struct.composite_rec** %newcmp, align 8
  %arrayidx1420 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %539, i64 %idxprom1419
  %char_code1421 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %arrayidx1420, i32 0, i32 0
  %540 = load i8, i8* %char_code1421, align 1
  %conv1422 = zext i8 %540 to i32
  %cmp1423 = icmp ne i32 %conv1422, 0
  br i1 %cmp1423, label %if.then.1425, label %if.end.1460

if.then.1425:                                     ; preds = %for.body.1413
  %541 = load i32, i32* %i, align 4
  %idxprom1426 = sext i32 %541 to i64
  %542 = load %struct.composite_rec*, %struct.composite_rec** %oldcmp, align 8
  %arrayidx1427 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %542, i64 %idxprom1426
  %x_offset = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %arrayidx1427, i32 0, i32 1
  %543 = load i16, i16* %x_offset, align 2
  %conv1428 = sext i16 %543 to i32
  %544 = load %union.rec*, %union.rec** %new, align 8
  %os11429 = bitcast %union.rec* %544 to %struct.word_type*
  %ou31430 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11429, i32 0, i32 3
  %os321431 = bitcast %union.THIRD_UNION* %ou31430 to %struct.anon.7*
  %ofont_size1432 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321431, i32 0, i32 0
  %545 = load i32, i32* %ofont_size1432, align 4
  %mul1433 = mul nsw i32 %conv1428, %545
  %546 = load %union.rec*, %union.rec** %old, align 8
  %os11434 = bitcast %union.rec* %546 to %struct.word_type*
  %ou31435 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11434, i32 0, i32 3
  %os321436 = bitcast %union.THIRD_UNION* %ou31435 to %struct.anon.7*
  %ofont_size1437 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321436, i32 0, i32 0
  %547 = load i32, i32* %ofont_size1437, align 4
  %div1438 = sdiv i32 %mul1433, %547
  %conv1439 = trunc i32 %div1438 to i16
  %548 = load i32, i32* %i, align 4
  %idxprom1440 = sext i32 %548 to i64
  %549 = load %struct.composite_rec*, %struct.composite_rec** %newcmp, align 8
  %arrayidx1441 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %549, i64 %idxprom1440
  %x_offset1442 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %arrayidx1441, i32 0, i32 1
  store i16 %conv1439, i16* %x_offset1442, align 2
  %550 = load i32, i32* %i, align 4
  %idxprom1443 = sext i32 %550 to i64
  %551 = load %struct.composite_rec*, %struct.composite_rec** %oldcmp, align 8
  %arrayidx1444 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %551, i64 %idxprom1443
  %y_offset = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %arrayidx1444, i32 0, i32 2
  %552 = load i16, i16* %y_offset, align 2
  %conv1445 = sext i16 %552 to i32
  %553 = load %union.rec*, %union.rec** %new, align 8
  %os11446 = bitcast %union.rec* %553 to %struct.word_type*
  %ou31447 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11446, i32 0, i32 3
  %os321448 = bitcast %union.THIRD_UNION* %ou31447 to %struct.anon.7*
  %ofont_size1449 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321448, i32 0, i32 0
  %554 = load i32, i32* %ofont_size1449, align 4
  %mul1450 = mul nsw i32 %conv1445, %554
  %555 = load %union.rec*, %union.rec** %old, align 8
  %os11451 = bitcast %union.rec* %555 to %struct.word_type*
  %ou31452 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11451, i32 0, i32 3
  %os321453 = bitcast %union.THIRD_UNION* %ou31452 to %struct.anon.7*
  %ofont_size1454 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321453, i32 0, i32 0
  %556 = load i32, i32* %ofont_size1454, align 4
  %div1455 = sdiv i32 %mul1450, %556
  %conv1456 = trunc i32 %div1455 to i16
  %557 = load i32, i32* %i, align 4
  %idxprom1457 = sext i32 %557 to i64
  %558 = load %struct.composite_rec*, %struct.composite_rec** %newcmp, align 8
  %arrayidx1458 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %558, i64 %idxprom1457
  %y_offset1459 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %arrayidx1458, i32 0, i32 2
  store i16 %conv1456, i16* %y_offset1459, align 2
  br label %if.end.1460

if.end.1460:                                      ; preds = %if.then.1425, %for.body.1413
  br label %for.inc.1461

for.inc.1461:                                     ; preds = %if.end.1460
  %559 = load i32, i32* %i, align 4
  %inc1462 = add nsw i32 %559, 1
  store i32 %inc1462, i32* %i, align 4
  br label %for.cond.1410

for.end.1463:                                     ; preds = %for.cond.1410
  %560 = load %struct.composite_rec*, %struct.composite_rec** %newcmp, align 8
  %561 = load i32, i32* @font_count, align 4
  %idxprom1464 = zext i32 %561 to i64
  %562 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1465 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %562, i64 %idxprom1464
  %cmp_table1466 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1465, i32 0, i32 3
  store %struct.composite_rec* %560, %struct.composite_rec** %cmp_table1466, align 8
  %563 = load %union.rec*, %union.rec** %old, align 8
  %os11467 = bitcast %union.rec* %563 to %struct.word_type*
  %ou21468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11467, i32 0, i32 2
  %os251469 = bitcast %union.SECOND_UNION* %ou21468 to %struct.anon.4*
  %564 = bitcast %struct.anon.4* %os251469 to i16*
  %bf.load1470 = load i16, i16* %564, align 4
  %bf.clear1471 = and i16 %bf.load1470, 4095
  %bf.cast1472 = zext i16 %bf.clear1471 to i32
  %idxprom1473 = zext i32 %bf.cast1472 to i64
  %565 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1474 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %565, i64 %idxprom1473
  %kern_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1474, i32 0, i32 9
  %566 = load i16*, i16** %kern_table, align 8
  %567 = load i32, i32* @font_count, align 4
  %idxprom1475 = zext i32 %567 to i64
  %568 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1476 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %568, i64 %idxprom1475
  %kern_table1477 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1476, i32 0, i32 9
  store i16* %566, i16** %kern_table1477, align 8
  %569 = load %union.rec*, %union.rec** %old, align 8
  %os11478 = bitcast %union.rec* %569 to %struct.word_type*
  %ou21479 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11478, i32 0, i32 2
  %os251480 = bitcast %union.SECOND_UNION* %ou21479 to %struct.anon.4*
  %570 = bitcast %struct.anon.4* %os251480 to i16*
  %bf.load1481 = load i16, i16* %570, align 4
  %bf.clear1482 = and i16 %bf.load1481, 4095
  %bf.cast1483 = zext i16 %bf.clear1482 to i32
  %idxprom1484 = zext i32 %bf.cast1483 to i64
  %571 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1485 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %571, i64 %idxprom1484
  %kern_chars = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1485, i32 0, i32 10
  %572 = load i8*, i8** %kern_chars, align 8
  %573 = load i32, i32* @font_count, align 4
  %idxprom1486 = zext i32 %573 to i64
  %574 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1487 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %574, i64 %idxprom1486
  %kern_chars1488 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1487, i32 0, i32 10
  store i8* %572, i8** %kern_chars1488, align 8
  %575 = load %union.rec*, %union.rec** %old, align 8
  %os11489 = bitcast %union.rec* %575 to %struct.word_type*
  %ou21490 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11489, i32 0, i32 2
  %os251491 = bitcast %union.SECOND_UNION* %ou21490 to %struct.anon.4*
  %576 = bitcast %struct.anon.4* %os251491 to i16*
  %bf.load1492 = load i16, i16* %576, align 4
  %bf.clear1493 = and i16 %bf.load1492, 4095
  %bf.cast1494 = zext i16 %bf.clear1493 to i32
  %idxprom1495 = zext i32 %bf.cast1494 to i64
  %577 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1496 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %577, i64 %idxprom1495
  %kern_value = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1496, i32 0, i32 11
  %578 = load i8*, i8** %kern_value, align 8
  %579 = load i32, i32* @font_count, align 4
  %idxprom1497 = zext i32 %579 to i64
  %580 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1498 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %580, i64 %idxprom1497
  %kern_value1499 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1498, i32 0, i32 11
  store i8* %578, i8** %kern_value1499, align 8
  %581 = load %union.rec*, %union.rec** %old, align 8
  %os11500 = bitcast %union.rec* %581 to %struct.word_type*
  %ou21501 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11500, i32 0, i32 2
  %os251502 = bitcast %union.SECOND_UNION* %ou21501 to %struct.anon.4*
  %582 = bitcast %struct.anon.4* %os251502 to i16*
  %bf.load1503 = load i16, i16* %582, align 4
  %bf.clear1504 = and i16 %bf.load1503, 4095
  %bf.cast1505 = zext i16 %bf.clear1504 to i32
  %idxprom1506 = zext i32 %bf.cast1505 to i64
  %583 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1507 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %583, i64 %idxprom1506
  %kern_sizes = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1507, i32 0, i32 12
  %584 = load i16*, i16** %kern_sizes, align 8
  store i16* %584, i16** %oldks, align 8
  %585 = load i16*, i16** %oldks, align 8
  %cmp1508 = icmp ne i16* %585, null
  br i1 %cmp1508, label %if.then.1510, label %if.else.1552

if.then.1510:                                     ; preds = %for.end.1463
  %586 = load i16*, i16** %oldks, align 8
  %arrayidx1511 = getelementptr inbounds i16, i16* %586, i64 0
  %587 = load i16, i16* %arrayidx1511, align 2
  %conv1512 = sext i16 %587 to i32
  store i32 %conv1512, i32* %klen, align 4
  %588 = load i32, i32* %klen, align 4
  %conv1513 = sext i32 %588 to i64
  %mul1514 = mul i64 %conv1513, 2
  %call1515 = call noalias i8* @malloc(i64 %mul1514) #4
  %589 = bitcast i8* %call1515 to i16*
  store i16* %589, i16** %newks, align 8
  %590 = load i32, i32* @font_count, align 4
  %idxprom1516 = zext i32 %590 to i64
  %591 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1517 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %591, i64 %idxprom1516
  %kern_sizes1518 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1517, i32 0, i32 12
  store i16* %589, i16** %kern_sizes1518, align 8
  %592 = load i16*, i16** %newks, align 8
  %cmp1519 = icmp eq i16* %592, null
  br i1 %cmp1519, label %if.then.1521, label %if.end.1526

if.then.1521:                                     ; preds = %if.then.1510
  %593 = load %union.rec*, %union.rec** %x.addr, align 8
  %os11522 = bitcast %union.rec* %593 to %struct.word_type*
  %ou11523 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11522, i32 0, i32 1
  %ofpos1524 = bitcast %union.FIRST_UNION* %ou11523 to %struct.FILE_POS*
  %call1525 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 55, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1524)
  br label %if.end.1526

if.end.1526:                                      ; preds = %if.then.1521, %if.then.1510
  %594 = load i32, i32* %klen, align 4
  %conv1527 = trunc i32 %594 to i16
  %595 = load i16*, i16** %newks, align 8
  %arrayidx1528 = getelementptr inbounds i16, i16* %595, i64 0
  store i16 %conv1527, i16* %arrayidx1528, align 2
  store i32 1, i32* %i, align 4
  br label %for.cond.1529

for.cond.1529:                                    ; preds = %for.inc.1549, %if.end.1526
  %596 = load i32, i32* %i, align 4
  %597 = load i32, i32* %klen, align 4
  %cmp1530 = icmp slt i32 %596, %597
  br i1 %cmp1530, label %for.body.1532, label %for.end.1551

for.body.1532:                                    ; preds = %for.cond.1529
  %598 = load i32, i32* %i, align 4
  %idxprom1533 = sext i32 %598 to i64
  %599 = load i16*, i16** %oldks, align 8
  %arrayidx1534 = getelementptr inbounds i16, i16* %599, i64 %idxprom1533
  %600 = load i16, i16* %arrayidx1534, align 2
  %conv1535 = sext i16 %600 to i32
  %601 = load %union.rec*, %union.rec** %new, align 8
  %os11536 = bitcast %union.rec* %601 to %struct.word_type*
  %ou31537 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11536, i32 0, i32 3
  %os321538 = bitcast %union.THIRD_UNION* %ou31537 to %struct.anon.7*
  %ofont_size1539 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321538, i32 0, i32 0
  %602 = load i32, i32* %ofont_size1539, align 4
  %mul1540 = mul nsw i32 %conv1535, %602
  %603 = load %union.rec*, %union.rec** %old, align 8
  %os11541 = bitcast %union.rec* %603 to %struct.word_type*
  %ou31542 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11541, i32 0, i32 3
  %os321543 = bitcast %union.THIRD_UNION* %ou31542 to %struct.anon.7*
  %ofont_size1544 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321543, i32 0, i32 0
  %604 = load i32, i32* %ofont_size1544, align 4
  %div1545 = sdiv i32 %mul1540, %604
  %conv1546 = trunc i32 %div1545 to i16
  %605 = load i32, i32* %i, align 4
  %idxprom1547 = sext i32 %605 to i64
  %606 = load i16*, i16** %newks, align 8
  %arrayidx1548 = getelementptr inbounds i16, i16* %606, i64 %idxprom1547
  store i16 %conv1546, i16* %arrayidx1548, align 2
  br label %for.inc.1549

for.inc.1549:                                     ; preds = %for.body.1532
  %607 = load i32, i32* %i, align 4
  %inc1550 = add nsw i32 %607, 1
  store i32 %inc1550, i32* %i, align 4
  br label %for.cond.1529

for.end.1551:                                     ; preds = %for.cond.1529
  br label %if.end.1556

if.else.1552:                                     ; preds = %for.end.1463
  %608 = load i32, i32* @font_count, align 4
  %idxprom1553 = zext i32 %608 to i64
  %609 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx1554 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %609, i64 %idxprom1553
  %kern_sizes1555 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx1554, i32 0, i32 12
  store i16* null, i16** %kern_sizes1555, align 8
  br label %if.end.1556

if.end.1556:                                      ; preds = %if.else.1552, %for.end.1551
  %610 = load i32, i32* @font_count, align 4
  %611 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %ofont1557 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %611, i32 0, i32 4
  %bf.load1558 = load i32, i32* %ofont1557, align 4
  %bf.value1559 = and i32 %610, 4095
  %bf.clear1560 = and i32 %bf.load1558, -4096
  %bf.set1561 = or i32 %bf.clear1560, %bf.value1559
  store i32 %bf.set1561, i32* %ofont1557, align 4
  %612 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu21562 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %612, i32 0, i32 1
  %ospace_gap1563 = bitcast %union.anon.10* %osu21562 to %struct.GAP*
  %613 = bitcast %struct.GAP* %ospace_gap1563 to i16*
  %bf.load1564 = load i16, i16* %613, align 4
  %bf.lshr1565 = lshr i16 %bf.load1564, 7
  %bf.clear1566 = and i16 %bf.lshr1565, 1
  %bf.cast1567 = zext i16 %bf.clear1566 to i32
  %614 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu21568 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %614, i32 0, i32 1
  %ospace_gap1569 = bitcast %union.anon.10* %osu21568 to %struct.GAP*
  %615 = bitcast %struct.GAP* %ospace_gap1569 to i16*
  %616 = trunc i32 %bf.cast1567 to i16
  %bf.load1570 = load i16, i16* %615, align 4
  %bf.value1571 = and i16 %616, 1
  %bf.shl1572 = shl i16 %bf.value1571, 7
  %bf.clear1573 = and i16 %bf.load1570, -129
  %bf.set1574 = or i16 %bf.clear1573, %bf.shl1572
  store i16 %bf.set1574, i16* %615, align 4
  %bf.result.cast1575 = zext i16 %bf.value1571 to i32
  %617 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu21576 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %617, i32 0, i32 1
  %ospace_gap1577 = bitcast %union.anon.10* %osu21576 to %struct.GAP*
  %618 = bitcast %struct.GAP* %ospace_gap1577 to i16*
  %bf.load1578 = load i16, i16* %618, align 4
  %bf.clear1579 = and i16 %bf.load1578, -257
  store i16 %bf.clear1579, i16* %618, align 4
  %619 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu21580 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %619, i32 0, i32 1
  %ospace_gap1581 = bitcast %union.anon.10* %osu21580 to %struct.GAP*
  %620 = bitcast %struct.GAP* %ospace_gap1581 to i16*
  %bf.load1582 = load i16, i16* %620, align 4
  %bf.clear1583 = and i16 %bf.load1582, -513
  %bf.set1584 = or i16 %bf.clear1583, 512
  store i16 %bf.set1584, i16* %620, align 4
  %621 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu21585 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %621, i32 0, i32 1
  %ospace_gap1586 = bitcast %union.anon.10* %osu21585 to %struct.GAP*
  %622 = bitcast %struct.GAP* %ospace_gap1586 to i16*
  %bf.load1587 = load i16, i16* %622, align 4
  %bf.clear1588 = and i16 %bf.load1587, -7169
  %bf.set1589 = or i16 %bf.clear1588, 1024
  store i16 %bf.set1589, i16* %622, align 4
  %623 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu21590 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %623, i32 0, i32 1
  %ospace_gap1591 = bitcast %union.anon.10* %osu21590 to %struct.GAP*
  %624 = bitcast %struct.GAP* %ospace_gap1591 to i16*
  %bf.load1592 = load i16, i16* %624, align 4
  %bf.clear1593 = and i16 %bf.load1592, 8191
  %bf.set1594 = or i16 %bf.clear1593, 8192
  store i16 %bf.set1594, i16* %624, align 4
  %625 = load %union.rec*, %union.rec** %new, align 8
  %os11595 = bitcast %union.rec* %625 to %struct.word_type*
  %ou31596 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11595, i32 0, i32 3
  %os321597 = bitcast %union.THIRD_UNION* %ou31596 to %struct.anon.7*
  %ofont_spacewidth1598 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321597, i32 0, i32 2
  %626 = load i32, i32* %ofont_spacewidth1598, align 4
  %conv1599 = trunc i32 %626 to i16
  %627 = load %struct.STYLE*, %struct.STYLE** %style.addr, align 8
  %osu21600 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %627, i32 0, i32 1
  %ospace_gap1601 = bitcast %union.anon.10* %osu21600 to %struct.GAP*
  %owidth1602 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap1601, i32 0, i32 1
  store i16 %conv1599, i16* %owidth1602, align 2
  br label %return

return:                                           ; preds = %if.end.1556, %if.then.839, %if.then.785, %if.end.634, %sw.default, %if.then.179, %if.else.169, %if.else.157, %if.then.146
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %union.rec* @FontRead(i8* %family_name, i8* %face_name, %union.rec* %err) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %family_name.addr = alloca i8*, align 8
  %face_name.addr = alloca i8*, align 8
  %err.addr = alloca %union.rec*, align 8
  %cs = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %db = alloca %union.rec*, align 8
  %fontdef_obj = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %ylink = alloca %union.rec*, align 8
  %tag = alloca [100 x i8], align 16
  %seq = alloca [100 x i8], align 16
  %dfnum = alloca i16, align 2
  %dfpos = alloca i64, align 8
  %cont = alloca i64, align 8
  %dlnum = alloca i32, align 4
  %font_name_found = alloca i32, align 4
  %family = alloca %union.rec*, align 8
  %face = alloca %union.rec*, align 8
  %font_name = alloca %union.rec*, align 8
  %AFMfilename = alloca %union.rec*, align 8
  %Extrafilename = alloca %union.rec*, align 8
  %LCMfilename = alloca %union.rec*, align 8
  %recode = alloca %union.rec*, align 8
  %first_size = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  %command = alloca [512 x i8], align 16
  %ch = alloca i8, align 1
  %status = alloca i8*, align 8
  %xheight2 = alloca i32, align 4
  %i = alloca i32, align 4
  %lnum = alloca i32, align 4
  %ligtop = alloca i32, align 4
  %cmptop = alloca i32, align 4
  %fl_xheight2 = alloca float, align 4
  %fl_under_pos = alloca float, align 4
  %fl_under_thick = alloca float, align 4
  %under_pos = alloca i32, align 4
  %under_thick = alloca i32, align 4
  %upfound = alloca i32, align 4
  %utfound = alloca i32, align 4
  %xhfound = alloca i32, align 4
  %fixed_pitch = alloca i32, align 4
  %fnum = alloca i16, align 2
  %extra_fnum = alloca i16, align 2
  %fp = alloca %struct._IO_FILE*, align 8
  %extra_fp = alloca %struct._IO_FILE*, align 8
  %fnt = alloca %struct.metrics*, align 8
  %lig = alloca i8*, align 8
  %composite = alloca i16*, align 8
  %cmp = alloca %struct.composite_rec*, align 8
  %kt = alloca i16*, align 8
  %kc = alloca i8*, align 8
  %kv = alloca i8*, align 8
  %ks = alloca i16*, align 8
  %ch1 = alloca i8, align 1
  %ch2 = alloca i8, align 1
  %last_ch1 = alloca i8, align 1
  %name1 = alloca [30 x i8], align 16
  %name2 = alloca [30 x i8], align 16
  %kc_top = alloca i32, align 4
  %ks_top = alloca i32, align 4
  %pos = alloca i32, align 4
  %num_pairs = alloca i32, align 4
  %ksize = alloca i32, align 4
  %fl_ksize = alloca float, align 4
  store i8* %family_name, i8** %family_name.addr, align 8
  store i8* %face_name, i8** %face_name.addr, align 8
  store %union.rec* %err, %union.rec** %err.addr, align 8
  store i32 0, i32* %fixed_pitch, align 4
  %0 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %os6 = bitcast %union.rec* %0 to %struct.symbol_type*
  %ocross_sym = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %os6, i32 0, i32 8
  %1 = load %union.rec*, %union.rec** %ocross_sym, align 8
  store %union.rec* %1, %union.rec** %cs, align 8
  %2 = load %union.rec*, %union.rec** %cs, align 8
  %cmp1 = icmp eq %union.rec* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4 = load i8*, i8** %family_name.addr, align 8
  %5 = load i8*, i8** %face_name.addr, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 10, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.73, i32 0, i32 0), i32 1, %struct.FILE_POS* %3, i8* %4, i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %tag, i32 0, i32 0
  %6 = load i8*, i8** %family_name.addr, align 8
  %7 = load i8*, i8** %face_name.addr, align 8
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i8* %6, i8* %7) #4
  %8 = load %union.rec*, %union.rec** %cs, align 8
  %os1 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %osucc, align 8
  %os13 = bitcast %union.rec* %9 to %struct.word_type*
  %olist4 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4, i32 0, i64 1
  %osucc6 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %osucc6, align 8
  store %union.rec* %10, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.end
  %11 = load %union.rec*, %union.rec** %link, align 8
  %12 = load %union.rec*, %union.rec** %cs, align 8
  %cmp7 = icmp ne %union.rec* %11, %12
  br i1 %cmp7, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %13 = load %union.rec*, %union.rec** %link, align 8
  %os18 = bitcast %union.rec* %13 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %14, %union.rec** %db, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %15 = load %union.rec*, %union.rec** %db, align 8
  %os112 = bitcast %union.rec* %15 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %16 = load i8, i8* %otype, align 1
  %conv = zext i8 %16 to i32
  %cmp13 = icmp eq i32 %conv, 0
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.11
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %17 = load %union.rec*, %union.rec** %db, align 8
  %os116 = bitcast %union.rec* %17 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 0
  %opred19 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %opred19, align 8
  store %union.rec* %18, %union.rec** %db, align 8
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %19 = load %union.rec*, %union.rec** %db, align 8
  %20 = load %union.rec*, %union.rec** @FontDefSym, align 8
  %arraydecay20 = getelementptr inbounds [100 x i8], [100 x i8]* %tag, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [100 x i8], [100 x i8]* %seq, i32 0, i32 0
  %call22 = call i32 @DbRetrieve(%union.rec* %19, i32 0, %union.rec* %20, i8* %arraydecay20, i8* %arraydecay21, i16* %dfnum, i64* %dfpos, i32* %dlnum, i64* %cont)
  %tobool = icmp ne i32 %call22, 0
  br i1 %tobool, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.end
  br label %for.end.30

if.end.24:                                        ; preds = %for.end
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %21 = load %union.rec*, %union.rec** %link, align 8
  %os126 = bitcast %union.rec* %21 to %struct.word_type*
  %olist27 = getelementptr inbounds %struct.word_type, %struct.word_type* %os126, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist27, i32 0, i64 1
  %osucc29 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx28, i32 0, i32 1
  %22 = load %union.rec*, %union.rec** %osucc29, align 8
  store %union.rec* %22, %union.rec** %link, align 8
  br label %for.cond

for.end.30:                                       ; preds = %if.then.23, %for.cond
  %23 = load %union.rec*, %union.rec** %link, align 8
  %24 = load %union.rec*, %union.rec** %cs, align 8
  %cmp31 = icmp eq %union.rec* %23, %24
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.end.30
  store %union.rec* null, %union.rec** %retval
  br label %return

if.end.34:                                        ; preds = %for.end.30
  call void @SwitchScope(%union.rec* null)
  %25 = load i16, i16* %dfnum, align 2
  %26 = load i64, i64* %dfpos, align 8
  %27 = load i32, i32* %dlnum, align 4
  %call35 = call %union.rec* @ReadFromFile(i16 zeroext %25, i64 %26, i32 %27)
  store %union.rec* %call35, %union.rec** %fontdef_obj, align 8
  call void @UnSwitchScope(%union.rec* null)
  %28 = load %union.rec*, %union.rec** %fontdef_obj, align 8
  %cmp36 = icmp eq %union.rec* %28, null
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.34
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %arraydecay39 = getelementptr inbounds [100 x i8], [100 x i8]* %tag, i32 0, i32 0
  %call40 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i32 0, i32 0), i32 0, %struct.FILE_POS* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay39)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.end.34
  store %union.rec* null, %union.rec** %AFMfilename, align 8
  store %union.rec* null, %union.rec** %font_name, align 8
  store %union.rec* null, %union.rec** %face, align 8
  store %union.rec* null, %union.rec** %family, align 8
  store %union.rec* null, %union.rec** %recode, align 8
  store %union.rec* null, %union.rec** %LCMfilename, align 8
  store %union.rec* null, %union.rec** %Extrafilename, align 8
  %30 = load %union.rec*, %union.rec** %fontdef_obj, align 8
  %os142 = bitcast %union.rec* %30 to %struct.word_type*
  %olist43 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist43, i32 0, i64 0
  %osucc45 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx44, i32 0, i32 1
  %31 = load %union.rec*, %union.rec** %osucc45, align 8
  store %union.rec* %31, %union.rec** %ylink, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.466, %if.end.41
  %32 = load %union.rec*, %union.rec** %ylink, align 8
  %33 = load %union.rec*, %union.rec** %fontdef_obj, align 8
  %cmp47 = icmp ne %union.rec* %32, %33
  br i1 %cmp47, label %for.body.49, label %for.end.471

for.body.49:                                      ; preds = %for.cond.46
  %34 = load %union.rec*, %union.rec** %ylink, align 8
  %os150 = bitcast %union.rec* %34 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 1
  %opred53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %opred53, align 8
  store %union.rec* %35, %union.rec** %y, align 8
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.63, %for.body.49
  %36 = load %union.rec*, %union.rec** %y, align 8
  %os155 = bitcast %union.rec* %36 to %struct.word_type*
  %ou156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 1
  %os1157 = bitcast %union.FIRST_UNION* %ou156 to %struct.anon*
  %otype58 = getelementptr inbounds %struct.anon, %struct.anon* %os1157, i32 0, i32 0
  %37 = load i8, i8* %otype58, align 1
  %conv59 = zext i8 %37 to i32
  %cmp60 = icmp eq i32 %conv59, 0
  br i1 %cmp60, label %for.body.62, label %for.end.68

for.body.62:                                      ; preds = %for.cond.54
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.62
  %38 = load %union.rec*, %union.rec** %y, align 8
  %os164 = bitcast %union.rec* %38 to %struct.word_type*
  %olist65 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist65, i32 0, i64 1
  %opred67 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx66, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %opred67, align 8
  store %union.rec* %39, %union.rec** %y, align 8
  br label %for.cond.54

for.end.68:                                       ; preds = %for.cond.54
  %40 = load %union.rec*, %union.rec** %y, align 8
  %os169 = bitcast %union.rec* %40 to %struct.word_type*
  %ou170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 1
  %os1171 = bitcast %union.FIRST_UNION* %ou170 to %struct.anon*
  %otype72 = getelementptr inbounds %struct.anon, %struct.anon* %os1171, i32 0, i32 0
  %41 = load i8, i8* %otype72, align 1
  %conv73 = zext i8 %41 to i32
  %cmp74 = icmp eq i32 %conv73, 10
  br i1 %cmp74, label %if.end.78, label %if.then.76

if.then.76:                                       ; preds = %for.end.68
  %42 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call77 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.76, i32 0, i32 0))
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %for.end.68
  %43 = load %union.rec*, %union.rec** %y, align 8
  %os2 = bitcast %union.rec* %43 to %struct.closure_type*
  %oactual = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 5
  %44 = load %union.rec*, %union.rec** %oactual, align 8
  %45 = load %union.rec*, %union.rec** @fd_tag, align 8
  %cmp79 = icmp eq %union.rec* %44, %45
  br i1 %cmp79, label %if.then.81, label %if.else

if.then.81:                                       ; preds = %if.end.78
  br label %if.end.465

if.else:                                          ; preds = %if.end.78
  %46 = load %union.rec*, %union.rec** %y, align 8
  %os282 = bitcast %union.rec* %46 to %struct.closure_type*
  %oactual83 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os282, i32 0, i32 5
  %47 = load %union.rec*, %union.rec** %oactual83, align 8
  %48 = load %union.rec*, %union.rec** @fd_family, align 8
  %cmp84 = icmp eq %union.rec* %47, %48
  br i1 %cmp84, label %if.then.86, label %if.else.139

if.then.86:                                       ; preds = %if.else
  %49 = load %union.rec*, %union.rec** %y, align 8
  %os187 = bitcast %union.rec* %49 to %struct.word_type*
  %olist88 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist88, i32 0, i64 0
  %osucc90 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx89, i32 0, i32 1
  %50 = load %union.rec*, %union.rec** %osucc90, align 8
  %os191 = bitcast %union.rec* %50 to %struct.word_type*
  %olist92 = getelementptr inbounds %struct.word_type, %struct.word_type* %os191, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist92, i32 0, i64 1
  %opred94 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx93, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %opred94, align 8
  store %union.rec* %51, %union.rec** %family, align 8
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.104, %if.then.86
  %52 = load %union.rec*, %union.rec** %family, align 8
  %os196 = bitcast %union.rec* %52 to %struct.word_type*
  %ou197 = getelementptr inbounds %struct.word_type, %struct.word_type* %os196, i32 0, i32 1
  %os1198 = bitcast %union.FIRST_UNION* %ou197 to %struct.anon*
  %otype99 = getelementptr inbounds %struct.anon, %struct.anon* %os1198, i32 0, i32 0
  %53 = load i8, i8* %otype99, align 1
  %conv100 = zext i8 %53 to i32
  %cmp101 = icmp eq i32 %conv100, 0
  br i1 %cmp101, label %for.body.103, label %for.end.109

for.body.103:                                     ; preds = %for.cond.95
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.103
  %54 = load %union.rec*, %union.rec** %family, align 8
  %os1105 = bitcast %union.rec* %54 to %struct.word_type*
  %olist106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1105, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist106, i32 0, i64 1
  %opred108 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx107, i32 0, i32 0
  %55 = load %union.rec*, %union.rec** %opred108, align 8
  store %union.rec* %55, %union.rec** %family, align 8
  br label %for.cond.95

for.end.109:                                      ; preds = %for.cond.95
  %56 = load %union.rec*, %union.rec** %family, align 8
  %os1110 = bitcast %union.rec* %56 to %struct.word_type*
  %ou1111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 1
  %os11112 = bitcast %union.FIRST_UNION* %ou1111 to %struct.anon*
  %otype113 = getelementptr inbounds %struct.anon, %struct.anon* %os11112, i32 0, i32 0
  %57 = load i8, i8* %otype113, align 1
  %conv114 = zext i8 %57 to i32
  %cmp115 = icmp eq i32 %conv114, 11
  br i1 %cmp115, label %lor.lhs.false.124, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.109
  %58 = load %union.rec*, %union.rec** %family, align 8
  %os1117 = bitcast %union.rec* %58 to %struct.word_type*
  %ou1118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 1
  %os11119 = bitcast %union.FIRST_UNION* %ou1118 to %struct.anon*
  %otype120 = getelementptr inbounds %struct.anon, %struct.anon* %os11119, i32 0, i32 0
  %59 = load i8, i8* %otype120, align 1
  %conv121 = zext i8 %59 to i32
  %cmp122 = icmp eq i32 %conv121, 12
  br i1 %cmp122, label %lor.lhs.false.124, label %if.then.130

lor.lhs.false.124:                                ; preds = %lor.lhs.false, %for.end.109
  %60 = load %union.rec*, %union.rec** %family, align 8
  %os1125 = bitcast %union.rec* %60 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1125, i32 0, i32 4
  %arraydecay126 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %61 = load i8*, i8** %family_name.addr, align 8
  %call127 = call i32 @strcmp(i8* %arraydecay126, i8* %61) #5
  %cmp128 = icmp eq i32 %call127, 0
  br i1 %cmp128, label %if.end.138, label %if.then.130

if.then.130:                                      ; preds = %lor.lhs.false.124, %lor.lhs.false
  %62 = load %union.rec*, %union.rec** %fontdef_obj, align 8
  %os1131 = bitcast %union.rec* %62 to %struct.word_type*
  %ou1132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1131, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1132 to %struct.FILE_POS*
  %63 = load %union.rec*, %union.rec** %family, align 8
  %os1133 = bitcast %union.rec* %63 to %struct.word_type*
  %ostring134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 4
  %arraydecay135 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring134, i32 0, i32 0
  %arraydecay136 = getelementptr inbounds [100 x i8], [100 x i8]* %tag, i32 0, i32 0
  %call137 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.77, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* %arraydecay135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay136)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.130, %lor.lhs.false.124
  br label %if.end.464

if.else.139:                                      ; preds = %if.else
  %64 = load %union.rec*, %union.rec** %y, align 8
  %os2140 = bitcast %union.rec* %64 to %struct.closure_type*
  %oactual141 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2140, i32 0, i32 5
  %65 = load %union.rec*, %union.rec** %oactual141, align 8
  %66 = load %union.rec*, %union.rec** @fd_face, align 8
  %cmp142 = icmp eq %union.rec* %65, %66
  br i1 %cmp142, label %if.then.144, label %if.else.200

if.then.144:                                      ; preds = %if.else.139
  %67 = load %union.rec*, %union.rec** %y, align 8
  %os1145 = bitcast %union.rec* %67 to %struct.word_type*
  %olist146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1145, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist146, i32 0, i64 0
  %osucc148 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx147, i32 0, i32 1
  %68 = load %union.rec*, %union.rec** %osucc148, align 8
  %os1149 = bitcast %union.rec* %68 to %struct.word_type*
  %olist150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist150, i32 0, i64 1
  %opred152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx151, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %opred152, align 8
  store %union.rec* %69, %union.rec** %face, align 8
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.162, %if.then.144
  %70 = load %union.rec*, %union.rec** %face, align 8
  %os1154 = bitcast %union.rec* %70 to %struct.word_type*
  %ou1155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 1
  %os11156 = bitcast %union.FIRST_UNION* %ou1155 to %struct.anon*
  %otype157 = getelementptr inbounds %struct.anon, %struct.anon* %os11156, i32 0, i32 0
  %71 = load i8, i8* %otype157, align 1
  %conv158 = zext i8 %71 to i32
  %cmp159 = icmp eq i32 %conv158, 0
  br i1 %cmp159, label %for.body.161, label %for.end.167

for.body.161:                                     ; preds = %for.cond.153
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.161
  %72 = load %union.rec*, %union.rec** %face, align 8
  %os1163 = bitcast %union.rec* %72 to %struct.word_type*
  %olist164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist164, i32 0, i64 1
  %opred166 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx165, i32 0, i32 0
  %73 = load %union.rec*, %union.rec** %opred166, align 8
  store %union.rec* %73, %union.rec** %face, align 8
  br label %for.cond.153

for.end.167:                                      ; preds = %for.cond.153
  %74 = load %union.rec*, %union.rec** %face, align 8
  %os1168 = bitcast %union.rec* %74 to %struct.word_type*
  %ou1169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1168, i32 0, i32 1
  %os11170 = bitcast %union.FIRST_UNION* %ou1169 to %struct.anon*
  %otype171 = getelementptr inbounds %struct.anon, %struct.anon* %os11170, i32 0, i32 0
  %75 = load i8, i8* %otype171, align 1
  %conv172 = zext i8 %75 to i32
  %cmp173 = icmp eq i32 %conv172, 11
  br i1 %cmp173, label %lor.lhs.false.183, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %for.end.167
  %76 = load %union.rec*, %union.rec** %face, align 8
  %os1176 = bitcast %union.rec* %76 to %struct.word_type*
  %ou1177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 1
  %os11178 = bitcast %union.FIRST_UNION* %ou1177 to %struct.anon*
  %otype179 = getelementptr inbounds %struct.anon, %struct.anon* %os11178, i32 0, i32 0
  %77 = load i8, i8* %otype179, align 1
  %conv180 = zext i8 %77 to i32
  %cmp181 = icmp eq i32 %conv180, 12
  br i1 %cmp181, label %lor.lhs.false.183, label %if.then.190

lor.lhs.false.183:                                ; preds = %lor.lhs.false.175, %for.end.167
  %78 = load %union.rec*, %union.rec** %face, align 8
  %os1184 = bitcast %union.rec* %78 to %struct.word_type*
  %ostring185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1184, i32 0, i32 4
  %arraydecay186 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring185, i32 0, i32 0
  %79 = load i8*, i8** %face_name.addr, align 8
  %call187 = call i32 @strcmp(i8* %arraydecay186, i8* %79) #5
  %cmp188 = icmp eq i32 %call187, 0
  br i1 %cmp188, label %if.end.199, label %if.then.190

if.then.190:                                      ; preds = %lor.lhs.false.183, %lor.lhs.false.175
  %80 = load %union.rec*, %union.rec** %fontdef_obj, align 8
  %os1191 = bitcast %union.rec* %80 to %struct.word_type*
  %ou1192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1191, i32 0, i32 1
  %ofpos193 = bitcast %union.FIRST_UNION* %ou1192 to %struct.FILE_POS*
  %81 = load %union.rec*, %union.rec** %face, align 8
  %os1194 = bitcast %union.rec* %81 to %struct.word_type*
  %ostring195 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1194, i32 0, i32 4
  %arraydecay196 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring195, i32 0, i32 0
  %arraydecay197 = getelementptr inbounds [100 x i8], [100 x i8]* %tag, i32 0, i32 0
  %call198 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 13, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.78, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos193, i8* %arraydecay196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay197)
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.190, %lor.lhs.false.183
  br label %if.end.463

if.else.200:                                      ; preds = %if.else.139
  %82 = load %union.rec*, %union.rec** %y, align 8
  %os2201 = bitcast %union.rec* %82 to %struct.closure_type*
  %oactual202 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2201, i32 0, i32 5
  %83 = load %union.rec*, %union.rec** %oactual202, align 8
  %84 = load %union.rec*, %union.rec** @fd_name, align 8
  %cmp203 = icmp eq %union.rec* %83, %84
  br i1 %cmp203, label %if.then.205, label %if.else.251

if.then.205:                                      ; preds = %if.else.200
  %85 = load %union.rec*, %union.rec** %y, align 8
  %os1206 = bitcast %union.rec* %85 to %struct.word_type*
  %olist207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1206, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist207, i32 0, i64 0
  %osucc209 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx208, i32 0, i32 1
  %86 = load %union.rec*, %union.rec** %osucc209, align 8
  %os1210 = bitcast %union.rec* %86 to %struct.word_type*
  %olist211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1210, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist211, i32 0, i64 1
  %opred213 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx212, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %opred213, align 8
  store %union.rec* %87, %union.rec** %font_name, align 8
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.223, %if.then.205
  %88 = load %union.rec*, %union.rec** %font_name, align 8
  %os1215 = bitcast %union.rec* %88 to %struct.word_type*
  %ou1216 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1215, i32 0, i32 1
  %os11217 = bitcast %union.FIRST_UNION* %ou1216 to %struct.anon*
  %otype218 = getelementptr inbounds %struct.anon, %struct.anon* %os11217, i32 0, i32 0
  %89 = load i8, i8* %otype218, align 1
  %conv219 = zext i8 %89 to i32
  %cmp220 = icmp eq i32 %conv219, 0
  br i1 %cmp220, label %for.body.222, label %for.end.228

for.body.222:                                     ; preds = %for.cond.214
  br label %for.inc.223

for.inc.223:                                      ; preds = %for.body.222
  %90 = load %union.rec*, %union.rec** %font_name, align 8
  %os1224 = bitcast %union.rec* %90 to %struct.word_type*
  %olist225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1224, i32 0, i32 0
  %arrayidx226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist225, i32 0, i64 1
  %opred227 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx226, i32 0, i32 0
  %91 = load %union.rec*, %union.rec** %opred227, align 8
  store %union.rec* %91, %union.rec** %font_name, align 8
  br label %for.cond.214

for.end.228:                                      ; preds = %for.cond.214
  %92 = load %union.rec*, %union.rec** %font_name, align 8
  %call229 = call %union.rec* @ReplaceWithTidy(%union.rec* %92, i32 1)
  store %union.rec* %call229, %union.rec** %font_name, align 8
  %93 = load %union.rec*, %union.rec** %font_name, align 8
  %os1230 = bitcast %union.rec* %93 to %struct.word_type*
  %ou1231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 1
  %os11232 = bitcast %union.FIRST_UNION* %ou1231 to %struct.anon*
  %otype233 = getelementptr inbounds %struct.anon, %struct.anon* %os11232, i32 0, i32 0
  %94 = load i8, i8* %otype233, align 1
  %conv234 = zext i8 %94 to i32
  %cmp235 = icmp eq i32 %conv234, 11
  br i1 %cmp235, label %if.end.250, label %lor.lhs.false.237

lor.lhs.false.237:                                ; preds = %for.end.228
  %95 = load %union.rec*, %union.rec** %font_name, align 8
  %os1238 = bitcast %union.rec* %95 to %struct.word_type*
  %ou1239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1238, i32 0, i32 1
  %os11240 = bitcast %union.FIRST_UNION* %ou1239 to %struct.anon*
  %otype241 = getelementptr inbounds %struct.anon, %struct.anon* %os11240, i32 0, i32 0
  %96 = load i8, i8* %otype241, align 1
  %conv242 = zext i8 %96 to i32
  %cmp243 = icmp eq i32 %conv242, 12
  br i1 %cmp243, label %if.end.250, label %if.then.245

if.then.245:                                      ; preds = %lor.lhs.false.237
  %97 = load %union.rec*, %union.rec** %font_name, align 8
  %os1246 = bitcast %union.rec* %97 to %struct.word_type*
  %ou1247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1246, i32 0, i32 1
  %ofpos248 = bitcast %union.FIRST_UNION* %ou1247 to %struct.FILE_POS*
  %call249 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.79, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos248)
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.245, %lor.lhs.false.237, %for.end.228
  br label %if.end.462

if.else.251:                                      ; preds = %if.else.200
  %98 = load %union.rec*, %union.rec** %y, align 8
  %os2252 = bitcast %union.rec* %98 to %struct.closure_type*
  %oactual253 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2252, i32 0, i32 5
  %99 = load %union.rec*, %union.rec** %oactual253, align 8
  %100 = load %union.rec*, %union.rec** @fd_metrics, align 8
  %cmp254 = icmp eq %union.rec* %99, %100
  br i1 %cmp254, label %if.then.256, label %if.else.302

if.then.256:                                      ; preds = %if.else.251
  %101 = load %union.rec*, %union.rec** %y, align 8
  %os1257 = bitcast %union.rec* %101 to %struct.word_type*
  %olist258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1257, i32 0, i32 0
  %arrayidx259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist258, i32 0, i64 0
  %osucc260 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx259, i32 0, i32 1
  %102 = load %union.rec*, %union.rec** %osucc260, align 8
  %os1261 = bitcast %union.rec* %102 to %struct.word_type*
  %olist262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1261, i32 0, i32 0
  %arrayidx263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist262, i32 0, i64 1
  %opred264 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx263, i32 0, i32 0
  %103 = load %union.rec*, %union.rec** %opred264, align 8
  store %union.rec* %103, %union.rec** %AFMfilename, align 8
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.274, %if.then.256
  %104 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os1266 = bitcast %union.rec* %104 to %struct.word_type*
  %ou1267 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1266, i32 0, i32 1
  %os11268 = bitcast %union.FIRST_UNION* %ou1267 to %struct.anon*
  %otype269 = getelementptr inbounds %struct.anon, %struct.anon* %os11268, i32 0, i32 0
  %105 = load i8, i8* %otype269, align 1
  %conv270 = zext i8 %105 to i32
  %cmp271 = icmp eq i32 %conv270, 0
  br i1 %cmp271, label %for.body.273, label %for.end.279

for.body.273:                                     ; preds = %for.cond.265
  br label %for.inc.274

for.inc.274:                                      ; preds = %for.body.273
  %106 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os1275 = bitcast %union.rec* %106 to %struct.word_type*
  %olist276 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1275, i32 0, i32 0
  %arrayidx277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist276, i32 0, i64 1
  %opred278 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx277, i32 0, i32 0
  %107 = load %union.rec*, %union.rec** %opred278, align 8
  store %union.rec* %107, %union.rec** %AFMfilename, align 8
  br label %for.cond.265

for.end.279:                                      ; preds = %for.cond.265
  %108 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %call280 = call %union.rec* @ReplaceWithTidy(%union.rec* %108, i32 1)
  store %union.rec* %call280, %union.rec** %AFMfilename, align 8
  %109 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os1281 = bitcast %union.rec* %109 to %struct.word_type*
  %ou1282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1281, i32 0, i32 1
  %os11283 = bitcast %union.FIRST_UNION* %ou1282 to %struct.anon*
  %otype284 = getelementptr inbounds %struct.anon, %struct.anon* %os11283, i32 0, i32 0
  %110 = load i8, i8* %otype284, align 1
  %conv285 = zext i8 %110 to i32
  %cmp286 = icmp eq i32 %conv285, 11
  br i1 %cmp286, label %if.end.301, label %lor.lhs.false.288

lor.lhs.false.288:                                ; preds = %for.end.279
  %111 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os1289 = bitcast %union.rec* %111 to %struct.word_type*
  %ou1290 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1289, i32 0, i32 1
  %os11291 = bitcast %union.FIRST_UNION* %ou1290 to %struct.anon*
  %otype292 = getelementptr inbounds %struct.anon, %struct.anon* %os11291, i32 0, i32 0
  %112 = load i8, i8* %otype292, align 1
  %conv293 = zext i8 %112 to i32
  %cmp294 = icmp eq i32 %conv293, 12
  br i1 %cmp294, label %if.end.301, label %if.then.296

if.then.296:                                      ; preds = %lor.lhs.false.288
  %113 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os1297 = bitcast %union.rec* %113 to %struct.word_type*
  %ou1298 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1297, i32 0, i32 1
  %ofpos299 = bitcast %union.FIRST_UNION* %ou1298 to %struct.FILE_POS*
  %call300 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.80, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos299)
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.296, %lor.lhs.false.288, %for.end.279
  br label %if.end.461

if.else.302:                                      ; preds = %if.else.251
  %114 = load %union.rec*, %union.rec** %y, align 8
  %os2303 = bitcast %union.rec* %114 to %struct.closure_type*
  %oactual304 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2303, i32 0, i32 5
  %115 = load %union.rec*, %union.rec** %oactual304, align 8
  %116 = load %union.rec*, %union.rec** @fd_extra_metrics, align 8
  %cmp305 = icmp eq %union.rec* %115, %116
  br i1 %cmp305, label %if.then.307, label %if.else.353

if.then.307:                                      ; preds = %if.else.302
  %117 = load %union.rec*, %union.rec** %y, align 8
  %os1308 = bitcast %union.rec* %117 to %struct.word_type*
  %olist309 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1308, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist309, i32 0, i64 0
  %osucc311 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx310, i32 0, i32 1
  %118 = load %union.rec*, %union.rec** %osucc311, align 8
  %os1312 = bitcast %union.rec* %118 to %struct.word_type*
  %olist313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1312, i32 0, i32 0
  %arrayidx314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist313, i32 0, i64 1
  %opred315 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx314, i32 0, i32 0
  %119 = load %union.rec*, %union.rec** %opred315, align 8
  store %union.rec* %119, %union.rec** %Extrafilename, align 8
  br label %for.cond.316

for.cond.316:                                     ; preds = %for.inc.325, %if.then.307
  %120 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %os1317 = bitcast %union.rec* %120 to %struct.word_type*
  %ou1318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1317, i32 0, i32 1
  %os11319 = bitcast %union.FIRST_UNION* %ou1318 to %struct.anon*
  %otype320 = getelementptr inbounds %struct.anon, %struct.anon* %os11319, i32 0, i32 0
  %121 = load i8, i8* %otype320, align 1
  %conv321 = zext i8 %121 to i32
  %cmp322 = icmp eq i32 %conv321, 0
  br i1 %cmp322, label %for.body.324, label %for.end.330

for.body.324:                                     ; preds = %for.cond.316
  br label %for.inc.325

for.inc.325:                                      ; preds = %for.body.324
  %122 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %os1326 = bitcast %union.rec* %122 to %struct.word_type*
  %olist327 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1326, i32 0, i32 0
  %arrayidx328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist327, i32 0, i64 1
  %opred329 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx328, i32 0, i32 0
  %123 = load %union.rec*, %union.rec** %opred329, align 8
  store %union.rec* %123, %union.rec** %Extrafilename, align 8
  br label %for.cond.316

for.end.330:                                      ; preds = %for.cond.316
  %124 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %call331 = call %union.rec* @ReplaceWithTidy(%union.rec* %124, i32 1)
  store %union.rec* %call331, %union.rec** %Extrafilename, align 8
  %125 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %os1332 = bitcast %union.rec* %125 to %struct.word_type*
  %ou1333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 1
  %os11334 = bitcast %union.FIRST_UNION* %ou1333 to %struct.anon*
  %otype335 = getelementptr inbounds %struct.anon, %struct.anon* %os11334, i32 0, i32 0
  %126 = load i8, i8* %otype335, align 1
  %conv336 = zext i8 %126 to i32
  %cmp337 = icmp eq i32 %conv336, 11
  br i1 %cmp337, label %if.end.352, label %lor.lhs.false.339

lor.lhs.false.339:                                ; preds = %for.end.330
  %127 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %os1340 = bitcast %union.rec* %127 to %struct.word_type*
  %ou1341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1340, i32 0, i32 1
  %os11342 = bitcast %union.FIRST_UNION* %ou1341 to %struct.anon*
  %otype343 = getelementptr inbounds %struct.anon, %struct.anon* %os11342, i32 0, i32 0
  %128 = load i8, i8* %otype343, align 1
  %conv344 = zext i8 %128 to i32
  %cmp345 = icmp eq i32 %conv344, 12
  br i1 %cmp345, label %if.end.352, label %if.then.347

if.then.347:                                      ; preds = %lor.lhs.false.339
  %129 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %os1348 = bitcast %union.rec* %129 to %struct.word_type*
  %ou1349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 1
  %ofpos350 = bitcast %union.FIRST_UNION* %ou1349 to %struct.FILE_POS*
  %call351 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.81, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos350)
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.347, %lor.lhs.false.339, %for.end.330
  br label %if.end.460

if.else.353:                                      ; preds = %if.else.302
  %130 = load %union.rec*, %union.rec** %y, align 8
  %os2354 = bitcast %union.rec* %130 to %struct.closure_type*
  %oactual355 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2354, i32 0, i32 5
  %131 = load %union.rec*, %union.rec** %oactual355, align 8
  %132 = load %union.rec*, %union.rec** @fd_mapping, align 8
  %cmp356 = icmp eq %union.rec* %131, %132
  br i1 %cmp356, label %if.then.358, label %if.else.404

if.then.358:                                      ; preds = %if.else.353
  %133 = load %union.rec*, %union.rec** %y, align 8
  %os1359 = bitcast %union.rec* %133 to %struct.word_type*
  %olist360 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1359, i32 0, i32 0
  %arrayidx361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist360, i32 0, i64 0
  %osucc362 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx361, i32 0, i32 1
  %134 = load %union.rec*, %union.rec** %osucc362, align 8
  %os1363 = bitcast %union.rec* %134 to %struct.word_type*
  %olist364 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1363, i32 0, i32 0
  %arrayidx365 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist364, i32 0, i64 1
  %opred366 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx365, i32 0, i32 0
  %135 = load %union.rec*, %union.rec** %opred366, align 8
  store %union.rec* %135, %union.rec** %LCMfilename, align 8
  br label %for.cond.367

for.cond.367:                                     ; preds = %for.inc.376, %if.then.358
  %136 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %os1368 = bitcast %union.rec* %136 to %struct.word_type*
  %ou1369 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1368, i32 0, i32 1
  %os11370 = bitcast %union.FIRST_UNION* %ou1369 to %struct.anon*
  %otype371 = getelementptr inbounds %struct.anon, %struct.anon* %os11370, i32 0, i32 0
  %137 = load i8, i8* %otype371, align 1
  %conv372 = zext i8 %137 to i32
  %cmp373 = icmp eq i32 %conv372, 0
  br i1 %cmp373, label %for.body.375, label %for.end.381

for.body.375:                                     ; preds = %for.cond.367
  br label %for.inc.376

for.inc.376:                                      ; preds = %for.body.375
  %138 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %os1377 = bitcast %union.rec* %138 to %struct.word_type*
  %olist378 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1377, i32 0, i32 0
  %arrayidx379 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist378, i32 0, i64 1
  %opred380 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx379, i32 0, i32 0
  %139 = load %union.rec*, %union.rec** %opred380, align 8
  store %union.rec* %139, %union.rec** %LCMfilename, align 8
  br label %for.cond.367

for.end.381:                                      ; preds = %for.cond.367
  %140 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %call382 = call %union.rec* @ReplaceWithTidy(%union.rec* %140, i32 1)
  store %union.rec* %call382, %union.rec** %LCMfilename, align 8
  %141 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %os1383 = bitcast %union.rec* %141 to %struct.word_type*
  %ou1384 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1383, i32 0, i32 1
  %os11385 = bitcast %union.FIRST_UNION* %ou1384 to %struct.anon*
  %otype386 = getelementptr inbounds %struct.anon, %struct.anon* %os11385, i32 0, i32 0
  %142 = load i8, i8* %otype386, align 1
  %conv387 = zext i8 %142 to i32
  %cmp388 = icmp eq i32 %conv387, 11
  br i1 %cmp388, label %if.end.403, label %lor.lhs.false.390

lor.lhs.false.390:                                ; preds = %for.end.381
  %143 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %os1391 = bitcast %union.rec* %143 to %struct.word_type*
  %ou1392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1391, i32 0, i32 1
  %os11393 = bitcast %union.FIRST_UNION* %ou1392 to %struct.anon*
  %otype394 = getelementptr inbounds %struct.anon, %struct.anon* %os11393, i32 0, i32 0
  %144 = load i8, i8* %otype394, align 1
  %conv395 = zext i8 %144 to i32
  %cmp396 = icmp eq i32 %conv395, 12
  br i1 %cmp396, label %if.end.403, label %if.then.398

if.then.398:                                      ; preds = %lor.lhs.false.390
  %145 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %os1399 = bitcast %union.rec* %145 to %struct.word_type*
  %ou1400 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1399, i32 0, i32 1
  %ofpos401 = bitcast %union.FIRST_UNION* %ou1400 to %struct.FILE_POS*
  %call402 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos401)
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.398, %lor.lhs.false.390, %for.end.381
  br label %if.end.459

if.else.404:                                      ; preds = %if.else.353
  %146 = load %union.rec*, %union.rec** %y, align 8
  %os2405 = bitcast %union.rec* %146 to %struct.closure_type*
  %oactual406 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2405, i32 0, i32 5
  %147 = load %union.rec*, %union.rec** %oactual406, align 8
  %148 = load %union.rec*, %union.rec** @fd_recode, align 8
  %cmp407 = icmp eq %union.rec* %147, %148
  br i1 %cmp407, label %if.then.409, label %if.else.456

if.then.409:                                      ; preds = %if.else.404
  %149 = load %union.rec*, %union.rec** %y, align 8
  %os1410 = bitcast %union.rec* %149 to %struct.word_type*
  %olist411 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1410, i32 0, i32 0
  %arrayidx412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist411, i32 0, i64 0
  %osucc413 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx412, i32 0, i32 1
  %150 = load %union.rec*, %union.rec** %osucc413, align 8
  %os1414 = bitcast %union.rec* %150 to %struct.word_type*
  %olist415 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1414, i32 0, i32 0
  %arrayidx416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist415, i32 0, i64 1
  %opred417 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx416, i32 0, i32 0
  %151 = load %union.rec*, %union.rec** %opred417, align 8
  store %union.rec* %151, %union.rec** %recode, align 8
  br label %for.cond.418

for.cond.418:                                     ; preds = %for.inc.427, %if.then.409
  %152 = load %union.rec*, %union.rec** %recode, align 8
  %os1419 = bitcast %union.rec* %152 to %struct.word_type*
  %ou1420 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1419, i32 0, i32 1
  %os11421 = bitcast %union.FIRST_UNION* %ou1420 to %struct.anon*
  %otype422 = getelementptr inbounds %struct.anon, %struct.anon* %os11421, i32 0, i32 0
  %153 = load i8, i8* %otype422, align 1
  %conv423 = zext i8 %153 to i32
  %cmp424 = icmp eq i32 %conv423, 0
  br i1 %cmp424, label %for.body.426, label %for.end.432

for.body.426:                                     ; preds = %for.cond.418
  br label %for.inc.427

for.inc.427:                                      ; preds = %for.body.426
  %154 = load %union.rec*, %union.rec** %recode, align 8
  %os1428 = bitcast %union.rec* %154 to %struct.word_type*
  %olist429 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1428, i32 0, i32 0
  %arrayidx430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist429, i32 0, i64 1
  %opred431 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx430, i32 0, i32 0
  %155 = load %union.rec*, %union.rec** %opred431, align 8
  store %union.rec* %155, %union.rec** %recode, align 8
  br label %for.cond.418

for.end.432:                                      ; preds = %for.cond.418
  %156 = load %union.rec*, %union.rec** %recode, align 8
  %call433 = call %union.rec* @ReplaceWithTidy(%union.rec* %156, i32 1)
  store %union.rec* %call433, %union.rec** %recode, align 8
  %157 = load %union.rec*, %union.rec** %recode, align 8
  %os1434 = bitcast %union.rec* %157 to %struct.word_type*
  %ou1435 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1434, i32 0, i32 1
  %os11436 = bitcast %union.FIRST_UNION* %ou1435 to %struct.anon*
  %otype437 = getelementptr inbounds %struct.anon, %struct.anon* %os11436, i32 0, i32 0
  %158 = load i8, i8* %otype437, align 1
  %conv438 = zext i8 %158 to i32
  %cmp439 = icmp eq i32 %conv438, 11
  br i1 %cmp439, label %if.end.455, label %lor.lhs.false.441

lor.lhs.false.441:                                ; preds = %for.end.432
  %159 = load %union.rec*, %union.rec** %recode, align 8
  %os1442 = bitcast %union.rec* %159 to %struct.word_type*
  %ou1443 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1442, i32 0, i32 1
  %os11444 = bitcast %union.FIRST_UNION* %ou1443 to %struct.anon*
  %otype445 = getelementptr inbounds %struct.anon, %struct.anon* %os11444, i32 0, i32 0
  %160 = load i8, i8* %otype445, align 1
  %conv446 = zext i8 %160 to i32
  %cmp447 = icmp eq i32 %conv446, 12
  br i1 %cmp447, label %if.end.455, label %if.then.449

if.then.449:                                      ; preds = %lor.lhs.false.441
  %161 = load %union.rec*, %union.rec** %recode, align 8
  %os1450 = bitcast %union.rec* %161 to %struct.word_type*
  %ou1451 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1450, i32 0, i32 1
  %ofpos452 = bitcast %union.FIRST_UNION* %ou1451 to %struct.FILE_POS*
  %162 = load %union.rec*, %union.rec** @fd_recode, align 8
  %call453 = call i8* @SymName(%union.rec* %162)
  %call454 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos452, i8* %call453)
  br label %if.end.455

if.end.455:                                       ; preds = %if.then.449, %lor.lhs.false.441, %for.end.432
  br label %if.end.458

if.else.456:                                      ; preds = %if.else.404
  %163 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call457 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %163, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.84, i32 0, i32 0))
  br label %if.end.458

if.end.458:                                       ; preds = %if.else.456, %if.end.455
  br label %if.end.459

if.end.459:                                       ; preds = %if.end.458, %if.end.403
  br label %if.end.460

if.end.460:                                       ; preds = %if.end.459, %if.end.352
  br label %if.end.461

if.end.461:                                       ; preds = %if.end.460, %if.end.301
  br label %if.end.462

if.end.462:                                       ; preds = %if.end.461, %if.end.250
  br label %if.end.463

if.end.463:                                       ; preds = %if.end.462, %if.end.199
  br label %if.end.464

if.end.464:                                       ; preds = %if.end.463, %if.end.138
  br label %if.end.465

if.end.465:                                       ; preds = %if.end.464, %if.then.81
  br label %for.inc.466

for.inc.466:                                      ; preds = %if.end.465
  %164 = load %union.rec*, %union.rec** %ylink, align 8
  %os1467 = bitcast %union.rec* %164 to %struct.word_type*
  %olist468 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1467, i32 0, i32 0
  %arrayidx469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist468, i32 0, i64 0
  %osucc470 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx469, i32 0, i32 1
  %165 = load %union.rec*, %union.rec** %osucc470, align 8
  store %union.rec* %165, %union.rec** %ylink, align 8
  br label %for.cond.46

for.end.471:                                      ; preds = %for.cond.46
  %166 = load %union.rec*, %union.rec** %family, align 8
  %cmp472 = icmp eq %union.rec* %166, null
  br i1 %cmp472, label %if.then.486, label %lor.lhs.false.474

lor.lhs.false.474:                                ; preds = %for.end.471
  %167 = load %union.rec*, %union.rec** %face, align 8
  %cmp475 = icmp eq %union.rec* %167, null
  br i1 %cmp475, label %if.then.486, label %lor.lhs.false.477

lor.lhs.false.477:                                ; preds = %lor.lhs.false.474
  %168 = load %union.rec*, %union.rec** %font_name, align 8
  %cmp478 = icmp eq %union.rec* %168, null
  br i1 %cmp478, label %if.then.486, label %lor.lhs.false.480

lor.lhs.false.480:                                ; preds = %lor.lhs.false.477
  %169 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %cmp481 = icmp eq %union.rec* %169, null
  br i1 %cmp481, label %if.then.486, label %lor.lhs.false.483

lor.lhs.false.483:                                ; preds = %lor.lhs.false.480
  %170 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %cmp484 = icmp eq %union.rec* %170, null
  br i1 %cmp484, label %if.then.486, label %if.end.487

if.then.486:                                      ; preds = %lor.lhs.false.483, %lor.lhs.false.480, %lor.lhs.false.477, %lor.lhs.false.474, %for.end.471
  store %union.rec* null, %union.rec** %retval
  br label %return

if.end.487:                                       ; preds = %lor.lhs.false.483
  %171 = load %union.rec*, %union.rec** @font_root, align 8
  %os1488 = bitcast %union.rec* %171 to %struct.word_type*
  %olist489 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1488, i32 0, i32 0
  %arrayidx490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist489, i32 0, i64 0
  %osucc491 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx490, i32 0, i32 1
  %172 = load %union.rec*, %union.rec** %osucc491, align 8
  store %union.rec* %172, %union.rec** %link, align 8
  br label %for.cond.492

for.cond.492:                                     ; preds = %for.inc.526, %if.end.487
  %173 = load %union.rec*, %union.rec** %link, align 8
  %174 = load %union.rec*, %union.rec** @font_root, align 8
  %cmp493 = icmp ne %union.rec* %173, %174
  br i1 %cmp493, label %for.body.495, label %for.end.531

for.body.495:                                     ; preds = %for.cond.492
  %175 = load %union.rec*, %union.rec** %link, align 8
  %os1496 = bitcast %union.rec* %175 to %struct.word_type*
  %olist497 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1496, i32 0, i32 0
  %arrayidx498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist497, i32 0, i64 1
  %opred499 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx498, i32 0, i32 0
  %176 = load %union.rec*, %union.rec** %opred499, align 8
  store %union.rec* %176, %union.rec** %y, align 8
  br label %for.cond.500

for.cond.500:                                     ; preds = %for.inc.509, %for.body.495
  %177 = load %union.rec*, %union.rec** %y, align 8
  %os1501 = bitcast %union.rec* %177 to %struct.word_type*
  %ou1502 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1501, i32 0, i32 1
  %os11503 = bitcast %union.FIRST_UNION* %ou1502 to %struct.anon*
  %otype504 = getelementptr inbounds %struct.anon, %struct.anon* %os11503, i32 0, i32 0
  %178 = load i8, i8* %otype504, align 1
  %conv505 = zext i8 %178 to i32
  %cmp506 = icmp eq i32 %conv505, 0
  br i1 %cmp506, label %for.body.508, label %for.end.514

for.body.508:                                     ; preds = %for.cond.500
  br label %for.inc.509

for.inc.509:                                      ; preds = %for.body.508
  %179 = load %union.rec*, %union.rec** %y, align 8
  %os1510 = bitcast %union.rec* %179 to %struct.word_type*
  %olist511 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1510, i32 0, i32 0
  %arrayidx512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist511, i32 0, i64 1
  %opred513 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx512, i32 0, i32 0
  %180 = load %union.rec*, %union.rec** %opred513, align 8
  store %union.rec* %180, %union.rec** %y, align 8
  br label %for.cond.500

for.end.514:                                      ; preds = %for.cond.500
  %181 = load %union.rec*, %union.rec** %y, align 8
  %os1515 = bitcast %union.rec* %181 to %struct.word_type*
  %ostring516 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1515, i32 0, i32 4
  %arraydecay517 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring516, i32 0, i32 0
  %182 = load %union.rec*, %union.rec** %family, align 8
  %os1518 = bitcast %union.rec* %182 to %struct.word_type*
  %ostring519 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1518, i32 0, i32 4
  %arraydecay520 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring519, i32 0, i32 0
  %call521 = call i32 @strcmp(i8* %arraydecay517, i8* %arraydecay520) #5
  %cmp522 = icmp eq i32 %call521, 0
  br i1 %cmp522, label %if.then.524, label %if.end.525

if.then.524:                                      ; preds = %for.end.514
  %183 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %183, %union.rec** %family, align 8
  br label %for.end.531

if.end.525:                                       ; preds = %for.end.514
  br label %for.inc.526

for.inc.526:                                      ; preds = %if.end.525
  %184 = load %union.rec*, %union.rec** %link, align 8
  %os1527 = bitcast %union.rec* %184 to %struct.word_type*
  %olist528 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1527, i32 0, i32 0
  %arrayidx529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist528, i32 0, i64 0
  %osucc530 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx529, i32 0, i32 1
  %185 = load %union.rec*, %union.rec** %osucc530, align 8
  store %union.rec* %185, %union.rec** %link, align 8
  br label %for.cond.492

for.end.531:                                      ; preds = %if.then.524, %for.cond.492
  %186 = load %union.rec*, %union.rec** %link, align 8
  %187 = load %union.rec*, %union.rec** @font_root, align 8
  %cmp532 = icmp eq %union.rec* %186, %187
  br i1 %cmp532, label %if.then.534, label %if.end.613

if.then.534:                                      ; preds = %for.end.531
  %188 = load %union.rec*, %union.rec** %family, align 8
  %os1535 = bitcast %union.rec* %188 to %struct.word_type*
  %olist536 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1535, i32 0, i32 0
  %arrayidx537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist536, i32 0, i64 1
  %osucc538 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx537, i32 0, i32 1
  %189 = load %union.rec*, %union.rec** %osucc538, align 8
  store %union.rec* %189, %union.rec** @xx_link, align 8
  %190 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %190, %union.rec** @zz_hold, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1539 = bitcast %union.rec* %191 to %struct.word_type*
  %olist540 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1539, i32 0, i32 0
  %arrayidx541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist540, i32 0, i64 0
  %osucc542 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx541, i32 0, i32 1
  %192 = load %union.rec*, %union.rec** %osucc542, align 8
  %193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp543 = icmp eq %union.rec* %192, %193
  br i1 %cmp543, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.534
  br label %cond.end

cond.false:                                       ; preds = %if.then.534
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1545 = bitcast %union.rec* %194 to %struct.word_type*
  %olist546 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1545, i32 0, i32 0
  %arrayidx547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist546, i32 0, i64 0
  %osucc548 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx547, i32 0, i32 1
  %195 = load %union.rec*, %union.rec** %osucc548, align 8
  store %union.rec* %195, %union.rec** @zz_res, align 8
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1549 = bitcast %union.rec* %196 to %struct.word_type*
  %olist550 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1549, i32 0, i32 0
  %arrayidx551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist550, i32 0, i64 0
  %opred552 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx551, i32 0, i32 0
  %197 = load %union.rec*, %union.rec** %opred552, align 8
  %198 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1553 = bitcast %union.rec* %198 to %struct.word_type*
  %olist554 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1553, i32 0, i32 0
  %arrayidx555 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist554, i32 0, i64 0
  %opred556 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx555, i32 0, i32 0
  store %union.rec* %197, %union.rec** %opred556, align 8
  %199 = load %union.rec*, %union.rec** @zz_res, align 8
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1557 = bitcast %union.rec* %200 to %struct.word_type*
  %olist558 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1557, i32 0, i32 0
  %arrayidx559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist558, i32 0, i64 0
  %opred560 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx559, i32 0, i32 0
  %201 = load %union.rec*, %union.rec** %opred560, align 8
  %os1561 = bitcast %union.rec* %201 to %struct.word_type*
  %olist562 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1561, i32 0, i32 0
  %arrayidx563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist562, i32 0, i64 0
  %osucc564 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx563, i32 0, i32 1
  store %union.rec* %199, %union.rec** %osucc564, align 8
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1565 = bitcast %union.rec* %203 to %struct.word_type*
  %olist566 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1565, i32 0, i32 0
  %arrayidx567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist566, i32 0, i64 0
  %osucc568 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx567, i32 0, i32 1
  store %union.rec* %202, %union.rec** %osucc568, align 8
  %204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1569 = bitcast %union.rec* %204 to %struct.word_type*
  %olist570 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1569, i32 0, i32 0
  %arrayidx571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist570, i32 0, i64 0
  %opred572 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx571, i32 0, i32 0
  store %union.rec* %202, %union.rec** %opred572, align 8
  %205 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %205, %cond.false ]
  %206 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %206, %union.rec** @zz_res, align 8
  %207 = load %union.rec*, %union.rec** @font_root, align 8
  store %union.rec* %207, %union.rec** @zz_hold, align 8
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp573 = icmp eq %union.rec* %208, null
  br i1 %cmp573, label %cond.true.575, label %cond.false.576

cond.true.575:                                    ; preds = %cond.end
  %209 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.611

cond.false.576:                                   ; preds = %cond.end
  %210 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp577 = icmp eq %union.rec* %210, null
  br i1 %cmp577, label %cond.true.579, label %cond.false.580

cond.true.579:                                    ; preds = %cond.false.576
  %211 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.609

cond.false.580:                                   ; preds = %cond.false.576
  %212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1581 = bitcast %union.rec* %212 to %struct.word_type*
  %olist582 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1581, i32 0, i32 0
  %arrayidx583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist582, i32 0, i64 0
  %opred584 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx583, i32 0, i32 0
  %213 = load %union.rec*, %union.rec** %opred584, align 8
  store %union.rec* %213, %union.rec** @zz_tmp, align 8
  %214 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1585 = bitcast %union.rec* %214 to %struct.word_type*
  %olist586 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1585, i32 0, i32 0
  %arrayidx587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist586, i32 0, i64 0
  %opred588 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx587, i32 0, i32 0
  %215 = load %union.rec*, %union.rec** %opred588, align 8
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1589 = bitcast %union.rec* %216 to %struct.word_type*
  %olist590 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1589, i32 0, i32 0
  %arrayidx591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist590, i32 0, i64 0
  %opred592 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx591, i32 0, i32 0
  store %union.rec* %215, %union.rec** %opred592, align 8
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %218 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1593 = bitcast %union.rec* %218 to %struct.word_type*
  %olist594 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1593, i32 0, i32 0
  %arrayidx595 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist594, i32 0, i64 0
  %opred596 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx595, i32 0, i32 0
  %219 = load %union.rec*, %union.rec** %opred596, align 8
  %os1597 = bitcast %union.rec* %219 to %struct.word_type*
  %olist598 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1597, i32 0, i32 0
  %arrayidx599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist598, i32 0, i64 0
  %osucc600 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx599, i32 0, i32 1
  store %union.rec* %217, %union.rec** %osucc600, align 8
  %220 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %221 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1601 = bitcast %union.rec* %221 to %struct.word_type*
  %olist602 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1601, i32 0, i32 0
  %arrayidx603 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist602, i32 0, i64 0
  %opred604 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx603, i32 0, i32 0
  store %union.rec* %220, %union.rec** %opred604, align 8
  %222 = load %union.rec*, %union.rec** @zz_res, align 8
  %223 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1605 = bitcast %union.rec* %223 to %struct.word_type*
  %olist606 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1605, i32 0, i32 0
  %arrayidx607 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist606, i32 0, i64 0
  %osucc608 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx607, i32 0, i32 1
  store %union.rec* %222, %union.rec** %osucc608, align 8
  br label %cond.end.609

cond.end.609:                                     ; preds = %cond.false.580, %cond.true.579
  %cond610 = phi %union.rec* [ %211, %cond.true.579 ], [ %222, %cond.false.580 ]
  br label %cond.end.611

cond.end.611:                                     ; preds = %cond.end.609, %cond.true.575
  %cond612 = phi %union.rec* [ %209, %cond.true.575 ], [ %cond610, %cond.end.609 ]
  br label %if.end.613

if.end.613:                                       ; preds = %cond.end.611, %for.end.531
  %224 = load %union.rec*, %union.rec** %family, align 8
  %os1614 = bitcast %union.rec* %224 to %struct.word_type*
  %olist615 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1614, i32 0, i32 0
  %arrayidx616 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist615, i32 0, i64 0
  %osucc617 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx616, i32 0, i32 1
  %225 = load %union.rec*, %union.rec** %osucc617, align 8
  store %union.rec* %225, %union.rec** %link, align 8
  br label %for.cond.618

for.cond.618:                                     ; preds = %for.inc.667, %if.end.613
  %226 = load %union.rec*, %union.rec** %link, align 8
  %227 = load %union.rec*, %union.rec** %family, align 8
  %cmp619 = icmp ne %union.rec* %226, %227
  br i1 %cmp619, label %for.body.621, label %for.end.672

for.body.621:                                     ; preds = %for.cond.618
  %228 = load %union.rec*, %union.rec** %link, align 8
  %os1622 = bitcast %union.rec* %228 to %struct.word_type*
  %olist623 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1622, i32 0, i32 0
  %arrayidx624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist623, i32 0, i64 1
  %opred625 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx624, i32 0, i32 0
  %229 = load %union.rec*, %union.rec** %opred625, align 8
  store %union.rec* %229, %union.rec** %y, align 8
  br label %for.cond.626

for.cond.626:                                     ; preds = %for.inc.635, %for.body.621
  %230 = load %union.rec*, %union.rec** %y, align 8
  %os1627 = bitcast %union.rec* %230 to %struct.word_type*
  %ou1628 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1627, i32 0, i32 1
  %os11629 = bitcast %union.FIRST_UNION* %ou1628 to %struct.anon*
  %otype630 = getelementptr inbounds %struct.anon, %struct.anon* %os11629, i32 0, i32 0
  %231 = load i8, i8* %otype630, align 1
  %conv631 = zext i8 %231 to i32
  %cmp632 = icmp eq i32 %conv631, 0
  br i1 %cmp632, label %for.body.634, label %for.end.640

for.body.634:                                     ; preds = %for.cond.626
  br label %for.inc.635

for.inc.635:                                      ; preds = %for.body.634
  %232 = load %union.rec*, %union.rec** %y, align 8
  %os1636 = bitcast %union.rec* %232 to %struct.word_type*
  %olist637 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1636, i32 0, i32 0
  %arrayidx638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist637, i32 0, i64 1
  %opred639 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx638, i32 0, i32 0
  %233 = load %union.rec*, %union.rec** %opred639, align 8
  store %union.rec* %233, %union.rec** %y, align 8
  br label %for.cond.626

for.end.640:                                      ; preds = %for.cond.626
  %234 = load %union.rec*, %union.rec** %y, align 8
  %os1641 = bitcast %union.rec* %234 to %struct.word_type*
  %ostring642 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1641, i32 0, i32 4
  %arraydecay643 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring642, i32 0, i32 0
  %235 = load %union.rec*, %union.rec** %face, align 8
  %os1644 = bitcast %union.rec* %235 to %struct.word_type*
  %ostring645 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1644, i32 0, i32 4
  %arraydecay646 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring645, i32 0, i32 0
  %call647 = call i32 @strcmp(i8* %arraydecay643, i8* %arraydecay646) #5
  %cmp648 = icmp eq i32 %call647, 0
  br i1 %cmp648, label %if.then.650, label %if.end.666

if.then.650:                                      ; preds = %for.end.640
  %236 = load %union.rec*, %union.rec** %face, align 8
  %os1651 = bitcast %union.rec* %236 to %struct.word_type*
  %ou1652 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1651, i32 0, i32 1
  %ofpos653 = bitcast %union.FIRST_UNION* %ou1652 to %struct.FILE_POS*
  %237 = load %union.rec*, %union.rec** %family, align 8
  %os1654 = bitcast %union.rec* %237 to %struct.word_type*
  %ostring655 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1654, i32 0, i32 4
  %arraydecay656 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring655, i32 0, i32 0
  %238 = load %union.rec*, %union.rec** %face, align 8
  %os1657 = bitcast %union.rec* %238 to %struct.word_type*
  %ostring658 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1657, i32 0, i32 4
  %arraydecay659 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring658, i32 0, i32 0
  %239 = load %union.rec*, %union.rec** %y, align 8
  %os1660 = bitcast %union.rec* %239 to %struct.word_type*
  %ou1661 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1660, i32 0, i32 1
  %ofpos662 = bitcast %union.FIRST_UNION* %ou1661 to %struct.FILE_POS*
  %call663 = call i8* @EchoFilePos(%struct.FILE_POS* %ofpos662)
  %call664 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.85, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos653, i8* %arraydecay656, i8* %arraydecay659, i8* %call663)
  %240 = load %union.rec*, %union.rec** %fontdef_obj, align 8
  %call665 = call i32 @DisposeObject(%union.rec* %240)
  %241 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %241, %union.rec** %retval
  br label %return

if.end.666:                                       ; preds = %for.end.640
  br label %for.inc.667

for.inc.667:                                      ; preds = %if.end.666
  %242 = load %union.rec*, %union.rec** %link, align 8
  %os1668 = bitcast %union.rec* %242 to %struct.word_type*
  %olist669 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1668, i32 0, i32 0
  %arrayidx670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist669, i32 0, i64 0
  %osucc671 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx670, i32 0, i32 1
  %243 = load %union.rec*, %union.rec** %osucc671, align 8
  store %union.rec* %243, %union.rec** %link, align 8
  br label %for.cond.618

for.end.672:                                      ; preds = %for.cond.618
  %244 = load %union.rec*, %union.rec** %face, align 8
  %os1673 = bitcast %union.rec* %244 to %struct.word_type*
  %olist674 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1673, i32 0, i32 0
  %arrayidx675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist674, i32 0, i64 1
  %osucc676 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx675, i32 0, i32 1
  %245 = load %union.rec*, %union.rec** %osucc676, align 8
  store %union.rec* %245, %union.rec** @xx_link, align 8
  %246 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %246, %union.rec** @zz_hold, align 8
  %247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1677 = bitcast %union.rec* %247 to %struct.word_type*
  %olist678 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1677, i32 0, i32 0
  %arrayidx679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist678, i32 0, i64 0
  %osucc680 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx679, i32 0, i32 1
  %248 = load %union.rec*, %union.rec** %osucc680, align 8
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp681 = icmp eq %union.rec* %248, %249
  br i1 %cmp681, label %cond.true.683, label %cond.false.684

cond.true.683:                                    ; preds = %for.end.672
  br label %cond.end.713

cond.false.684:                                   ; preds = %for.end.672
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1685 = bitcast %union.rec* %250 to %struct.word_type*
  %olist686 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1685, i32 0, i32 0
  %arrayidx687 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist686, i32 0, i64 0
  %osucc688 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx687, i32 0, i32 1
  %251 = load %union.rec*, %union.rec** %osucc688, align 8
  store %union.rec* %251, %union.rec** @zz_res, align 8
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1689 = bitcast %union.rec* %252 to %struct.word_type*
  %olist690 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1689, i32 0, i32 0
  %arrayidx691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist690, i32 0, i64 0
  %opred692 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx691, i32 0, i32 0
  %253 = load %union.rec*, %union.rec** %opred692, align 8
  %254 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1693 = bitcast %union.rec* %254 to %struct.word_type*
  %olist694 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1693, i32 0, i32 0
  %arrayidx695 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist694, i32 0, i64 0
  %opred696 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx695, i32 0, i32 0
  store %union.rec* %253, %union.rec** %opred696, align 8
  %255 = load %union.rec*, %union.rec** @zz_res, align 8
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1697 = bitcast %union.rec* %256 to %struct.word_type*
  %olist698 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1697, i32 0, i32 0
  %arrayidx699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist698, i32 0, i64 0
  %opred700 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx699, i32 0, i32 0
  %257 = load %union.rec*, %union.rec** %opred700, align 8
  %os1701 = bitcast %union.rec* %257 to %struct.word_type*
  %olist702 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1701, i32 0, i32 0
  %arrayidx703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist702, i32 0, i64 0
  %osucc704 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx703, i32 0, i32 1
  store %union.rec* %255, %union.rec** %osucc704, align 8
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1705 = bitcast %union.rec* %259 to %struct.word_type*
  %olist706 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1705, i32 0, i32 0
  %arrayidx707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist706, i32 0, i64 0
  %osucc708 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx707, i32 0, i32 1
  store %union.rec* %258, %union.rec** %osucc708, align 8
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1709 = bitcast %union.rec* %260 to %struct.word_type*
  %olist710 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1709, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist710, i32 0, i64 0
  %opred712 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx711, i32 0, i32 0
  store %union.rec* %258, %union.rec** %opred712, align 8
  %261 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.713

cond.end.713:                                     ; preds = %cond.false.684, %cond.true.683
  %cond714 = phi %union.rec* [ null, %cond.true.683 ], [ %261, %cond.false.684 ]
  %262 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %262, %union.rec** @zz_res, align 8
  %263 = load %union.rec*, %union.rec** %family, align 8
  store %union.rec* %263, %union.rec** @zz_hold, align 8
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp715 = icmp eq %union.rec* %264, null
  br i1 %cmp715, label %cond.true.717, label %cond.false.718

cond.true.717:                                    ; preds = %cond.end.713
  %265 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.753

cond.false.718:                                   ; preds = %cond.end.713
  %266 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp719 = icmp eq %union.rec* %266, null
  br i1 %cmp719, label %cond.true.721, label %cond.false.722

cond.true.721:                                    ; preds = %cond.false.718
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.751

cond.false.722:                                   ; preds = %cond.false.718
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1723 = bitcast %union.rec* %268 to %struct.word_type*
  %olist724 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1723, i32 0, i32 0
  %arrayidx725 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist724, i32 0, i64 0
  %opred726 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx725, i32 0, i32 0
  %269 = load %union.rec*, %union.rec** %opred726, align 8
  store %union.rec* %269, %union.rec** @zz_tmp, align 8
  %270 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1727 = bitcast %union.rec* %270 to %struct.word_type*
  %olist728 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1727, i32 0, i32 0
  %arrayidx729 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist728, i32 0, i64 0
  %opred730 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx729, i32 0, i32 0
  %271 = load %union.rec*, %union.rec** %opred730, align 8
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1731 = bitcast %union.rec* %272 to %struct.word_type*
  %olist732 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1731, i32 0, i32 0
  %arrayidx733 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist732, i32 0, i64 0
  %opred734 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx733, i32 0, i32 0
  store %union.rec* %271, %union.rec** %opred734, align 8
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %274 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1735 = bitcast %union.rec* %274 to %struct.word_type*
  %olist736 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1735, i32 0, i32 0
  %arrayidx737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist736, i32 0, i64 0
  %opred738 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx737, i32 0, i32 0
  %275 = load %union.rec*, %union.rec** %opred738, align 8
  %os1739 = bitcast %union.rec* %275 to %struct.word_type*
  %olist740 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1739, i32 0, i32 0
  %arrayidx741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist740, i32 0, i64 0
  %osucc742 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx741, i32 0, i32 1
  store %union.rec* %273, %union.rec** %osucc742, align 8
  %276 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %277 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1743 = bitcast %union.rec* %277 to %struct.word_type*
  %olist744 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1743, i32 0, i32 0
  %arrayidx745 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist744, i32 0, i64 0
  %opred746 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx745, i32 0, i32 0
  store %union.rec* %276, %union.rec** %opred746, align 8
  %278 = load %union.rec*, %union.rec** @zz_res, align 8
  %279 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1747 = bitcast %union.rec* %279 to %struct.word_type*
  %olist748 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1747, i32 0, i32 0
  %arrayidx749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist748, i32 0, i64 0
  %osucc750 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx749, i32 0, i32 1
  store %union.rec* %278, %union.rec** %osucc750, align 8
  br label %cond.end.751

cond.end.751:                                     ; preds = %cond.false.722, %cond.true.721
  %cond752 = phi %union.rec* [ %267, %cond.true.721 ], [ %278, %cond.false.722 ]
  br label %cond.end.753

cond.end.753:                                     ; preds = %cond.end.751, %cond.true.717
  %cond754 = phi %union.rec* [ %265, %cond.true.717 ], [ %cond752, %cond.end.751 ]
  %280 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv755 = zext i8 %280 to i32
  store i32 %conv755, i32* @zz_size, align 4
  %conv756 = sext i32 %conv755 to i64
  %cmp757 = icmp uge i64 %conv756, 265
  br i1 %cmp757, label %if.then.759, label %if.else.761

if.then.759:                                      ; preds = %cond.end.753
  %281 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call760 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %281)
  br label %if.end.777

if.else.761:                                      ; preds = %cond.end.753
  %282 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %282 to i64
  %arrayidx762 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %283 = load %union.rec*, %union.rec** %arrayidx762, align 8
  %cmp763 = icmp eq %union.rec* %283, null
  br i1 %cmp763, label %if.then.765, label %if.else.767

if.then.765:                                      ; preds = %if.else.761
  %284 = load i32, i32* @zz_size, align 4
  %285 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call766 = call %union.rec* @GetMemory(i32 %284, %struct.FILE_POS* %285)
  store %union.rec* %call766, %union.rec** @zz_hold, align 8
  br label %if.end.776

if.else.767:                                      ; preds = %if.else.761
  %286 = load i32, i32* @zz_size, align 4
  %idxprom768 = sext i32 %286 to i64
  %arrayidx769 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom768
  %287 = load %union.rec*, %union.rec** %arrayidx769, align 8
  store %union.rec* %287, %union.rec** @zz_hold, align 8
  store %union.rec* %287, %union.rec** @zz_hold, align 8
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1770 = bitcast %union.rec* %288 to %struct.word_type*
  %olist771 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1770, i32 0, i32 0
  %arrayidx772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist771, i32 0, i64 0
  %opred773 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx772, i32 0, i32 0
  %289 = load %union.rec*, %union.rec** %opred773, align 8
  %290 = load i32, i32* @zz_size, align 4
  %idxprom774 = sext i32 %290 to i64
  %arrayidx775 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom774
  store %union.rec* %289, %union.rec** %arrayidx775, align 8
  br label %if.end.776

if.end.776:                                       ; preds = %if.else.767, %if.then.765
  br label %if.end.777

if.end.777:                                       ; preds = %if.end.776, %if.then.759
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1778 = bitcast %union.rec* %291 to %struct.word_type*
  %ou1779 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1778, i32 0, i32 1
  %os11780 = bitcast %union.FIRST_UNION* %ou1779 to %struct.anon*
  %otype781 = getelementptr inbounds %struct.anon, %struct.anon* %os11780, i32 0, i32 0
  store i8 0, i8* %otype781, align 1
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1782 = bitcast %union.rec* %293 to %struct.word_type*
  %olist783 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1782, i32 0, i32 0
  %arrayidx784 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist783, i32 0, i64 1
  %osucc785 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx784, i32 0, i32 1
  store %union.rec* %292, %union.rec** %osucc785, align 8
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1786 = bitcast %union.rec* %294 to %struct.word_type*
  %olist787 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1786, i32 0, i32 0
  %arrayidx788 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist787, i32 0, i64 1
  %opred789 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx788, i32 0, i32 0
  store %union.rec* %292, %union.rec** %opred789, align 8
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1790 = bitcast %union.rec* %295 to %struct.word_type*
  %olist791 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1790, i32 0, i32 0
  %arrayidx792 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist791, i32 0, i64 0
  %osucc793 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx792, i32 0, i32 1
  store %union.rec* %292, %union.rec** %osucc793, align 8
  %296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1794 = bitcast %union.rec* %296 to %struct.word_type*
  %olist795 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1794, i32 0, i32 0
  %arrayidx796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist795, i32 0, i64 0
  %opred797 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx796, i32 0, i32 0
  store %union.rec* %292, %union.rec** %opred797, align 8
  store %union.rec* %292, %union.rec** @xx_link, align 8
  %297 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %297, %union.rec** @zz_res, align 8
  %298 = load %union.rec*, %union.rec** %face, align 8
  store %union.rec* %298, %union.rec** @zz_hold, align 8
  %299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp798 = icmp eq %union.rec* %299, null
  br i1 %cmp798, label %cond.true.800, label %cond.false.801

cond.true.800:                                    ; preds = %if.end.777
  %300 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.836

cond.false.801:                                   ; preds = %if.end.777
  %301 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp802 = icmp eq %union.rec* %301, null
  br i1 %cmp802, label %cond.true.804, label %cond.false.805

cond.true.804:                                    ; preds = %cond.false.801
  %302 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.834

cond.false.805:                                   ; preds = %cond.false.801
  %303 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1806 = bitcast %union.rec* %303 to %struct.word_type*
  %olist807 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1806, i32 0, i32 0
  %arrayidx808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist807, i32 0, i64 0
  %opred809 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx808, i32 0, i32 0
  %304 = load %union.rec*, %union.rec** %opred809, align 8
  store %union.rec* %304, %union.rec** @zz_tmp, align 8
  %305 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1810 = bitcast %union.rec* %305 to %struct.word_type*
  %olist811 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1810, i32 0, i32 0
  %arrayidx812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist811, i32 0, i64 0
  %opred813 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx812, i32 0, i32 0
  %306 = load %union.rec*, %union.rec** %opred813, align 8
  %307 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1814 = bitcast %union.rec* %307 to %struct.word_type*
  %olist815 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1814, i32 0, i32 0
  %arrayidx816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist815, i32 0, i64 0
  %opred817 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx816, i32 0, i32 0
  store %union.rec* %306, %union.rec** %opred817, align 8
  %308 = load %union.rec*, %union.rec** @zz_hold, align 8
  %309 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1818 = bitcast %union.rec* %309 to %struct.word_type*
  %olist819 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1818, i32 0, i32 0
  %arrayidx820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist819, i32 0, i64 0
  %opred821 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx820, i32 0, i32 0
  %310 = load %union.rec*, %union.rec** %opred821, align 8
  %os1822 = bitcast %union.rec* %310 to %struct.word_type*
  %olist823 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1822, i32 0, i32 0
  %arrayidx824 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist823, i32 0, i64 0
  %osucc825 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx824, i32 0, i32 1
  store %union.rec* %308, %union.rec** %osucc825, align 8
  %311 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %312 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1826 = bitcast %union.rec* %312 to %struct.word_type*
  %olist827 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1826, i32 0, i32 0
  %arrayidx828 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist827, i32 0, i64 0
  %opred829 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx828, i32 0, i32 0
  store %union.rec* %311, %union.rec** %opred829, align 8
  %313 = load %union.rec*, %union.rec** @zz_res, align 8
  %314 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1830 = bitcast %union.rec* %314 to %struct.word_type*
  %olist831 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1830, i32 0, i32 0
  %arrayidx832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist831, i32 0, i64 0
  %osucc833 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx832, i32 0, i32 1
  store %union.rec* %313, %union.rec** %osucc833, align 8
  br label %cond.end.834

cond.end.834:                                     ; preds = %cond.false.805, %cond.true.804
  %cond835 = phi %union.rec* [ %302, %cond.true.804 ], [ %313, %cond.false.805 ]
  br label %cond.end.836

cond.end.836:                                     ; preds = %cond.end.834, %cond.true.800
  %cond837 = phi %union.rec* [ %300, %cond.true.800 ], [ %cond835, %cond.end.834 ]
  %315 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %315, %union.rec** @zz_res, align 8
  %316 = load %union.rec*, %union.rec** %font_name, align 8
  store %union.rec* %316, %union.rec** @zz_hold, align 8
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp838 = icmp eq %union.rec* %317, null
  br i1 %cmp838, label %cond.true.840, label %cond.false.841

cond.true.840:                                    ; preds = %cond.end.836
  %318 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.876

cond.false.841:                                   ; preds = %cond.end.836
  %319 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp842 = icmp eq %union.rec* %319, null
  br i1 %cmp842, label %cond.true.844, label %cond.false.845

cond.true.844:                                    ; preds = %cond.false.841
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.874

cond.false.845:                                   ; preds = %cond.false.841
  %321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1846 = bitcast %union.rec* %321 to %struct.word_type*
  %olist847 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1846, i32 0, i32 0
  %arrayidx848 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist847, i32 0, i64 1
  %opred849 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx848, i32 0, i32 0
  %322 = load %union.rec*, %union.rec** %opred849, align 8
  store %union.rec* %322, %union.rec** @zz_tmp, align 8
  %323 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1850 = bitcast %union.rec* %323 to %struct.word_type*
  %olist851 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1850, i32 0, i32 0
  %arrayidx852 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist851, i32 0, i64 1
  %opred853 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx852, i32 0, i32 0
  %324 = load %union.rec*, %union.rec** %opred853, align 8
  %325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1854 = bitcast %union.rec* %325 to %struct.word_type*
  %olist855 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1854, i32 0, i32 0
  %arrayidx856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist855, i32 0, i64 1
  %opred857 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx856, i32 0, i32 0
  store %union.rec* %324, %union.rec** %opred857, align 8
  %326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %327 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1858 = bitcast %union.rec* %327 to %struct.word_type*
  %olist859 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1858, i32 0, i32 0
  %arrayidx860 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist859, i32 0, i64 1
  %opred861 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx860, i32 0, i32 0
  %328 = load %union.rec*, %union.rec** %opred861, align 8
  %os1862 = bitcast %union.rec* %328 to %struct.word_type*
  %olist863 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1862, i32 0, i32 0
  %arrayidx864 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist863, i32 0, i64 1
  %osucc865 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx864, i32 0, i32 1
  store %union.rec* %326, %union.rec** %osucc865, align 8
  %329 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %330 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1866 = bitcast %union.rec* %330 to %struct.word_type*
  %olist867 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1866, i32 0, i32 0
  %arrayidx868 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist867, i32 0, i64 1
  %opred869 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx868, i32 0, i32 0
  store %union.rec* %329, %union.rec** %opred869, align 8
  %331 = load %union.rec*, %union.rec** @zz_res, align 8
  %332 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1870 = bitcast %union.rec* %332 to %struct.word_type*
  %olist871 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1870, i32 0, i32 0
  %arrayidx872 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist871, i32 0, i64 1
  %osucc873 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx872, i32 0, i32 1
  store %union.rec* %331, %union.rec** %osucc873, align 8
  br label %cond.end.874

cond.end.874:                                     ; preds = %cond.false.845, %cond.true.844
  %cond875 = phi %union.rec* [ %320, %cond.true.844 ], [ %331, %cond.false.845 ]
  br label %cond.end.876

cond.end.876:                                     ; preds = %cond.end.874, %cond.true.840
  %cond877 = phi %union.rec* [ %318, %cond.true.840 ], [ %cond875, %cond.end.874 ]
  %333 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv878 = zext i8 %333 to i32
  store i32 %conv878, i32* @zz_size, align 4
  %conv879 = sext i32 %conv878 to i64
  %cmp880 = icmp uge i64 %conv879, 265
  br i1 %cmp880, label %if.then.882, label %if.else.884

if.then.882:                                      ; preds = %cond.end.876
  %334 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call883 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %334)
  br label %if.end.901

if.else.884:                                      ; preds = %cond.end.876
  %335 = load i32, i32* @zz_size, align 4
  %idxprom885 = sext i32 %335 to i64
  %arrayidx886 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom885
  %336 = load %union.rec*, %union.rec** %arrayidx886, align 8
  %cmp887 = icmp eq %union.rec* %336, null
  br i1 %cmp887, label %if.then.889, label %if.else.891

if.then.889:                                      ; preds = %if.else.884
  %337 = load i32, i32* @zz_size, align 4
  %338 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call890 = call %union.rec* @GetMemory(i32 %337, %struct.FILE_POS* %338)
  store %union.rec* %call890, %union.rec** @zz_hold, align 8
  br label %if.end.900

if.else.891:                                      ; preds = %if.else.884
  %339 = load i32, i32* @zz_size, align 4
  %idxprom892 = sext i32 %339 to i64
  %arrayidx893 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom892
  %340 = load %union.rec*, %union.rec** %arrayidx893, align 8
  store %union.rec* %340, %union.rec** @zz_hold, align 8
  store %union.rec* %340, %union.rec** @zz_hold, align 8
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1894 = bitcast %union.rec* %341 to %struct.word_type*
  %olist895 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1894, i32 0, i32 0
  %arrayidx896 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist895, i32 0, i64 0
  %opred897 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx896, i32 0, i32 0
  %342 = load %union.rec*, %union.rec** %opred897, align 8
  %343 = load i32, i32* @zz_size, align 4
  %idxprom898 = sext i32 %343 to i64
  %arrayidx899 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom898
  store %union.rec* %342, %union.rec** %arrayidx899, align 8
  br label %if.end.900

if.end.900:                                       ; preds = %if.else.891, %if.then.889
  br label %if.end.901

if.end.901:                                       ; preds = %if.end.900, %if.then.882
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1902 = bitcast %union.rec* %344 to %struct.word_type*
  %ou1903 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1902, i32 0, i32 1
  %os11904 = bitcast %union.FIRST_UNION* %ou1903 to %struct.anon*
  %otype905 = getelementptr inbounds %struct.anon, %struct.anon* %os11904, i32 0, i32 0
  store i8 0, i8* %otype905, align 1
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1906 = bitcast %union.rec* %346 to %struct.word_type*
  %olist907 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1906, i32 0, i32 0
  %arrayidx908 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist907, i32 0, i64 1
  %osucc909 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx908, i32 0, i32 1
  store %union.rec* %345, %union.rec** %osucc909, align 8
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1910 = bitcast %union.rec* %347 to %struct.word_type*
  %olist911 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1910, i32 0, i32 0
  %arrayidx912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist911, i32 0, i64 1
  %opred913 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx912, i32 0, i32 0
  store %union.rec* %345, %union.rec** %opred913, align 8
  %348 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1914 = bitcast %union.rec* %348 to %struct.word_type*
  %olist915 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1914, i32 0, i32 0
  %arrayidx916 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist915, i32 0, i64 0
  %osucc917 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx916, i32 0, i32 1
  store %union.rec* %345, %union.rec** %osucc917, align 8
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1918 = bitcast %union.rec* %349 to %struct.word_type*
  %olist919 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1918, i32 0, i32 0
  %arrayidx920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist919, i32 0, i64 0
  %opred921 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx920, i32 0, i32 0
  store %union.rec* %345, %union.rec** %opred921, align 8
  store %union.rec* %345, %union.rec** @xx_link, align 8
  %350 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %350, %union.rec** @zz_res, align 8
  %351 = load %union.rec*, %union.rec** %face, align 8
  store %union.rec* %351, %union.rec** @zz_hold, align 8
  %352 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp922 = icmp eq %union.rec* %352, null
  br i1 %cmp922, label %cond.true.924, label %cond.false.925

cond.true.924:                                    ; preds = %if.end.901
  %353 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.960

cond.false.925:                                   ; preds = %if.end.901
  %354 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp926 = icmp eq %union.rec* %354, null
  br i1 %cmp926, label %cond.true.928, label %cond.false.929

cond.true.928:                                    ; preds = %cond.false.925
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.958

cond.false.929:                                   ; preds = %cond.false.925
  %356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1930 = bitcast %union.rec* %356 to %struct.word_type*
  %olist931 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1930, i32 0, i32 0
  %arrayidx932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist931, i32 0, i64 0
  %opred933 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx932, i32 0, i32 0
  %357 = load %union.rec*, %union.rec** %opred933, align 8
  store %union.rec* %357, %union.rec** @zz_tmp, align 8
  %358 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1934 = bitcast %union.rec* %358 to %struct.word_type*
  %olist935 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1934, i32 0, i32 0
  %arrayidx936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist935, i32 0, i64 0
  %opred937 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx936, i32 0, i32 0
  %359 = load %union.rec*, %union.rec** %opred937, align 8
  %360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1938 = bitcast %union.rec* %360 to %struct.word_type*
  %olist939 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1938, i32 0, i32 0
  %arrayidx940 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist939, i32 0, i64 0
  %opred941 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx940, i32 0, i32 0
  store %union.rec* %359, %union.rec** %opred941, align 8
  %361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %362 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1942 = bitcast %union.rec* %362 to %struct.word_type*
  %olist943 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1942, i32 0, i32 0
  %arrayidx944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist943, i32 0, i64 0
  %opred945 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx944, i32 0, i32 0
  %363 = load %union.rec*, %union.rec** %opred945, align 8
  %os1946 = bitcast %union.rec* %363 to %struct.word_type*
  %olist947 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1946, i32 0, i32 0
  %arrayidx948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist947, i32 0, i64 0
  %osucc949 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx948, i32 0, i32 1
  store %union.rec* %361, %union.rec** %osucc949, align 8
  %364 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %365 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1950 = bitcast %union.rec* %365 to %struct.word_type*
  %olist951 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1950, i32 0, i32 0
  %arrayidx952 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist951, i32 0, i64 0
  %opred953 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx952, i32 0, i32 0
  store %union.rec* %364, %union.rec** %opred953, align 8
  %366 = load %union.rec*, %union.rec** @zz_res, align 8
  %367 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1954 = bitcast %union.rec* %367 to %struct.word_type*
  %olist955 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1954, i32 0, i32 0
  %arrayidx956 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist955, i32 0, i64 0
  %osucc957 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx956, i32 0, i32 1
  store %union.rec* %366, %union.rec** %osucc957, align 8
  br label %cond.end.958

cond.end.958:                                     ; preds = %cond.false.929, %cond.true.928
  %cond959 = phi %union.rec* [ %355, %cond.true.928 ], [ %366, %cond.false.929 ]
  br label %cond.end.960

cond.end.960:                                     ; preds = %cond.end.958, %cond.true.924
  %cond961 = phi %union.rec* [ %353, %cond.true.924 ], [ %cond959, %cond.end.958 ]
  %368 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %368, %union.rec** @zz_res, align 8
  %369 = load %union.rec*, %union.rec** %AFMfilename, align 8
  store %union.rec* %369, %union.rec** @zz_hold, align 8
  %370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp962 = icmp eq %union.rec* %370, null
  br i1 %cmp962, label %cond.true.964, label %cond.false.965

cond.true.964:                                    ; preds = %cond.end.960
  %371 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1000

cond.false.965:                                   ; preds = %cond.end.960
  %372 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp966 = icmp eq %union.rec* %372, null
  br i1 %cmp966, label %cond.true.968, label %cond.false.969

cond.true.968:                                    ; preds = %cond.false.965
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.998

cond.false.969:                                   ; preds = %cond.false.965
  %374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1970 = bitcast %union.rec* %374 to %struct.word_type*
  %olist971 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1970, i32 0, i32 0
  %arrayidx972 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist971, i32 0, i64 1
  %opred973 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx972, i32 0, i32 0
  %375 = load %union.rec*, %union.rec** %opred973, align 8
  store %union.rec* %375, %union.rec** @zz_tmp, align 8
  %376 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1974 = bitcast %union.rec* %376 to %struct.word_type*
  %olist975 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1974, i32 0, i32 0
  %arrayidx976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist975, i32 0, i64 1
  %opred977 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx976, i32 0, i32 0
  %377 = load %union.rec*, %union.rec** %opred977, align 8
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1978 = bitcast %union.rec* %378 to %struct.word_type*
  %olist979 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1978, i32 0, i32 0
  %arrayidx980 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist979, i32 0, i64 1
  %opred981 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx980, i32 0, i32 0
  store %union.rec* %377, %union.rec** %opred981, align 8
  %379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %380 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1982 = bitcast %union.rec* %380 to %struct.word_type*
  %olist983 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1982, i32 0, i32 0
  %arrayidx984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist983, i32 0, i64 1
  %opred985 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx984, i32 0, i32 0
  %381 = load %union.rec*, %union.rec** %opred985, align 8
  %os1986 = bitcast %union.rec* %381 to %struct.word_type*
  %olist987 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1986, i32 0, i32 0
  %arrayidx988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist987, i32 0, i64 1
  %osucc989 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx988, i32 0, i32 1
  store %union.rec* %379, %union.rec** %osucc989, align 8
  %382 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %383 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1990 = bitcast %union.rec* %383 to %struct.word_type*
  %olist991 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1990, i32 0, i32 0
  %arrayidx992 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist991, i32 0, i64 1
  %opred993 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx992, i32 0, i32 0
  store %union.rec* %382, %union.rec** %opred993, align 8
  %384 = load %union.rec*, %union.rec** @zz_res, align 8
  %385 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1994 = bitcast %union.rec* %385 to %struct.word_type*
  %olist995 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1994, i32 0, i32 0
  %arrayidx996 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist995, i32 0, i64 1
  %osucc997 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx996, i32 0, i32 1
  store %union.rec* %384, %union.rec** %osucc997, align 8
  br label %cond.end.998

cond.end.998:                                     ; preds = %cond.false.969, %cond.true.968
  %cond999 = phi %union.rec* [ %373, %cond.true.968 ], [ %384, %cond.false.969 ]
  br label %cond.end.1000

cond.end.1000:                                    ; preds = %cond.end.998, %cond.true.964
  %cond1001 = phi %union.rec* [ %371, %cond.true.964 ], [ %cond999, %cond.end.998 ]
  %386 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %cmp1002 = icmp ne %union.rec* %386, null
  br i1 %cmp1002, label %if.then.1004, label %if.end.1129

if.then.1004:                                     ; preds = %cond.end.1000
  %387 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1005 = zext i8 %387 to i32
  store i32 %conv1005, i32* @zz_size, align 4
  %conv1006 = sext i32 %conv1005 to i64
  %cmp1007 = icmp uge i64 %conv1006, 265
  br i1 %cmp1007, label %if.then.1009, label %if.else.1011

if.then.1009:                                     ; preds = %if.then.1004
  %388 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1010 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %388)
  br label %if.end.1028

if.else.1011:                                     ; preds = %if.then.1004
  %389 = load i32, i32* @zz_size, align 4
  %idxprom1012 = sext i32 %389 to i64
  %arrayidx1013 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1012
  %390 = load %union.rec*, %union.rec** %arrayidx1013, align 8
  %cmp1014 = icmp eq %union.rec* %390, null
  br i1 %cmp1014, label %if.then.1016, label %if.else.1018

if.then.1016:                                     ; preds = %if.else.1011
  %391 = load i32, i32* @zz_size, align 4
  %392 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1017 = call %union.rec* @GetMemory(i32 %391, %struct.FILE_POS* %392)
  store %union.rec* %call1017, %union.rec** @zz_hold, align 8
  br label %if.end.1027

if.else.1018:                                     ; preds = %if.else.1011
  %393 = load i32, i32* @zz_size, align 4
  %idxprom1019 = sext i32 %393 to i64
  %arrayidx1020 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1019
  %394 = load %union.rec*, %union.rec** %arrayidx1020, align 8
  store %union.rec* %394, %union.rec** @zz_hold, align 8
  store %union.rec* %394, %union.rec** @zz_hold, align 8
  %395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11021 = bitcast %union.rec* %395 to %struct.word_type*
  %olist1022 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11021, i32 0, i32 0
  %arrayidx1023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1022, i32 0, i64 0
  %opred1024 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1023, i32 0, i32 0
  %396 = load %union.rec*, %union.rec** %opred1024, align 8
  %397 = load i32, i32* @zz_size, align 4
  %idxprom1025 = sext i32 %397 to i64
  %arrayidx1026 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1025
  store %union.rec* %396, %union.rec** %arrayidx1026, align 8
  br label %if.end.1027

if.end.1027:                                      ; preds = %if.else.1018, %if.then.1016
  br label %if.end.1028

if.end.1028:                                      ; preds = %if.end.1027, %if.then.1009
  %398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11029 = bitcast %union.rec* %398 to %struct.word_type*
  %ou11030 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11029, i32 0, i32 1
  %os111031 = bitcast %union.FIRST_UNION* %ou11030 to %struct.anon*
  %otype1032 = getelementptr inbounds %struct.anon, %struct.anon* %os111031, i32 0, i32 0
  store i8 0, i8* %otype1032, align 1
  %399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %400 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11033 = bitcast %union.rec* %400 to %struct.word_type*
  %olist1034 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11033, i32 0, i32 0
  %arrayidx1035 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1034, i32 0, i64 1
  %osucc1036 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1035, i32 0, i32 1
  store %union.rec* %399, %union.rec** %osucc1036, align 8
  %401 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11037 = bitcast %union.rec* %401 to %struct.word_type*
  %olist1038 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11037, i32 0, i32 0
  %arrayidx1039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1038, i32 0, i64 1
  %opred1040 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1039, i32 0, i32 0
  store %union.rec* %399, %union.rec** %opred1040, align 8
  %402 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11041 = bitcast %union.rec* %402 to %struct.word_type*
  %olist1042 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11041, i32 0, i32 0
  %arrayidx1043 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1042, i32 0, i64 0
  %osucc1044 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1043, i32 0, i32 1
  store %union.rec* %399, %union.rec** %osucc1044, align 8
  %403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11045 = bitcast %union.rec* %403 to %struct.word_type*
  %olist1046 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11045, i32 0, i32 0
  %arrayidx1047 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1046, i32 0, i64 0
  %opred1048 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1047, i32 0, i32 0
  store %union.rec* %399, %union.rec** %opred1048, align 8
  store %union.rec* %399, %union.rec** @xx_link, align 8
  %404 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %404, %union.rec** @zz_res, align 8
  %405 = load %union.rec*, %union.rec** %AFMfilename, align 8
  store %union.rec* %405, %union.rec** @zz_hold, align 8
  %406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1049 = icmp eq %union.rec* %406, null
  br i1 %cmp1049, label %cond.true.1051, label %cond.false.1052

cond.true.1051:                                   ; preds = %if.end.1028
  %407 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1087

cond.false.1052:                                  ; preds = %if.end.1028
  %408 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1053 = icmp eq %union.rec* %408, null
  br i1 %cmp1053, label %cond.true.1055, label %cond.false.1056

cond.true.1055:                                   ; preds = %cond.false.1052
  %409 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1085

cond.false.1056:                                  ; preds = %cond.false.1052
  %410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11057 = bitcast %union.rec* %410 to %struct.word_type*
  %olist1058 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11057, i32 0, i32 0
  %arrayidx1059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1058, i32 0, i64 0
  %opred1060 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1059, i32 0, i32 0
  %411 = load %union.rec*, %union.rec** %opred1060, align 8
  store %union.rec* %411, %union.rec** @zz_tmp, align 8
  %412 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11061 = bitcast %union.rec* %412 to %struct.word_type*
  %olist1062 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11061, i32 0, i32 0
  %arrayidx1063 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1062, i32 0, i64 0
  %opred1064 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1063, i32 0, i32 0
  %413 = load %union.rec*, %union.rec** %opred1064, align 8
  %414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11065 = bitcast %union.rec* %414 to %struct.word_type*
  %olist1066 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11065, i32 0, i32 0
  %arrayidx1067 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1066, i32 0, i64 0
  %opred1068 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1067, i32 0, i32 0
  store %union.rec* %413, %union.rec** %opred1068, align 8
  %415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %416 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11069 = bitcast %union.rec* %416 to %struct.word_type*
  %olist1070 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11069, i32 0, i32 0
  %arrayidx1071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1070, i32 0, i64 0
  %opred1072 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1071, i32 0, i32 0
  %417 = load %union.rec*, %union.rec** %opred1072, align 8
  %os11073 = bitcast %union.rec* %417 to %struct.word_type*
  %olist1074 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11073, i32 0, i32 0
  %arrayidx1075 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1074, i32 0, i64 0
  %osucc1076 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1075, i32 0, i32 1
  store %union.rec* %415, %union.rec** %osucc1076, align 8
  %418 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %419 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11077 = bitcast %union.rec* %419 to %struct.word_type*
  %olist1078 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11077, i32 0, i32 0
  %arrayidx1079 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1078, i32 0, i64 0
  %opred1080 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1079, i32 0, i32 0
  store %union.rec* %418, %union.rec** %opred1080, align 8
  %420 = load %union.rec*, %union.rec** @zz_res, align 8
  %421 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11081 = bitcast %union.rec* %421 to %struct.word_type*
  %olist1082 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11081, i32 0, i32 0
  %arrayidx1083 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1082, i32 0, i64 0
  %osucc1084 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1083, i32 0, i32 1
  store %union.rec* %420, %union.rec** %osucc1084, align 8
  br label %cond.end.1085

cond.end.1085:                                    ; preds = %cond.false.1056, %cond.true.1055
  %cond1086 = phi %union.rec* [ %409, %cond.true.1055 ], [ %420, %cond.false.1056 ]
  br label %cond.end.1087

cond.end.1087:                                    ; preds = %cond.end.1085, %cond.true.1051
  %cond1088 = phi %union.rec* [ %407, %cond.true.1051 ], [ %cond1086, %cond.end.1085 ]
  %422 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %422, %union.rec** @zz_res, align 8
  %423 = load %union.rec*, %union.rec** %Extrafilename, align 8
  store %union.rec* %423, %union.rec** @zz_hold, align 8
  %424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1089 = icmp eq %union.rec* %424, null
  br i1 %cmp1089, label %cond.true.1091, label %cond.false.1092

cond.true.1091:                                   ; preds = %cond.end.1087
  %425 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1127

cond.false.1092:                                  ; preds = %cond.end.1087
  %426 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1093 = icmp eq %union.rec* %426, null
  br i1 %cmp1093, label %cond.true.1095, label %cond.false.1096

cond.true.1095:                                   ; preds = %cond.false.1092
  %427 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1125

cond.false.1096:                                  ; preds = %cond.false.1092
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11097 = bitcast %union.rec* %428 to %struct.word_type*
  %olist1098 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11097, i32 0, i32 0
  %arrayidx1099 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1098, i32 0, i64 1
  %opred1100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1099, i32 0, i32 0
  %429 = load %union.rec*, %union.rec** %opred1100, align 8
  store %union.rec* %429, %union.rec** @zz_tmp, align 8
  %430 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11101 = bitcast %union.rec* %430 to %struct.word_type*
  %olist1102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11101, i32 0, i32 0
  %arrayidx1103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1102, i32 0, i64 1
  %opred1104 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1103, i32 0, i32 0
  %431 = load %union.rec*, %union.rec** %opred1104, align 8
  %432 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11105 = bitcast %union.rec* %432 to %struct.word_type*
  %olist1106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11105, i32 0, i32 0
  %arrayidx1107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1106, i32 0, i64 1
  %opred1108 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1107, i32 0, i32 0
  store %union.rec* %431, %union.rec** %opred1108, align 8
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %434 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11109 = bitcast %union.rec* %434 to %struct.word_type*
  %olist1110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11109, i32 0, i32 0
  %arrayidx1111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1110, i32 0, i64 1
  %opred1112 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1111, i32 0, i32 0
  %435 = load %union.rec*, %union.rec** %opred1112, align 8
  %os11113 = bitcast %union.rec* %435 to %struct.word_type*
  %olist1114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11113, i32 0, i32 0
  %arrayidx1115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1114, i32 0, i64 1
  %osucc1116 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1115, i32 0, i32 1
  store %union.rec* %433, %union.rec** %osucc1116, align 8
  %436 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %437 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11117 = bitcast %union.rec* %437 to %struct.word_type*
  %olist1118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11117, i32 0, i32 0
  %arrayidx1119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1118, i32 0, i64 1
  %opred1120 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1119, i32 0, i32 0
  store %union.rec* %436, %union.rec** %opred1120, align 8
  %438 = load %union.rec*, %union.rec** @zz_res, align 8
  %439 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11121 = bitcast %union.rec* %439 to %struct.word_type*
  %olist1122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11121, i32 0, i32 0
  %arrayidx1123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1122, i32 0, i64 1
  %osucc1124 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1123, i32 0, i32 1
  store %union.rec* %438, %union.rec** %osucc1124, align 8
  br label %cond.end.1125

cond.end.1125:                                    ; preds = %cond.false.1096, %cond.true.1095
  %cond1126 = phi %union.rec* [ %427, %cond.true.1095 ], [ %438, %cond.false.1096 ]
  br label %cond.end.1127

cond.end.1127:                                    ; preds = %cond.end.1125, %cond.true.1091
  %cond1128 = phi %union.rec* [ %425, %cond.true.1091 ], [ %cond1126, %cond.end.1125 ]
  br label %if.end.1129

if.end.1129:                                      ; preds = %cond.end.1127, %cond.end.1000
  %440 = load %union.rec*, %union.rec** %recode, align 8
  %cmp1130 = icmp ne %union.rec* %440, null
  br i1 %cmp1130, label %land.lhs.true, label %if.else.1146

land.lhs.true:                                    ; preds = %if.end.1129
  %441 = load %union.rec*, %union.rec** %recode, align 8
  %os11132 = bitcast %union.rec* %441 to %struct.word_type*
  %ostring1133 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11132, i32 0, i32 4
  %arraydecay1134 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1133, i32 0, i32 0
  %call1135 = call i32 @strcmp(i8* %arraydecay1134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0)) #5
  %cmp1136 = icmp eq i32 %call1135, 0
  br i1 %cmp1136, label %if.then.1138, label %if.else.1146

if.then.1138:                                     ; preds = %land.lhs.true
  %442 = load %union.rec*, %union.rec** %face, align 8
  %os11139 = bitcast %union.rec* %442 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11139, i32 0, i32 3
  %os32 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.7*
  %ofont_recoded = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32, i32 0, i32 3
  %bf.load = load i8, i8* %ofont_recoded, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, i8* %ofont_recoded, align 4
  %443 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %call1140 = call i32 @MapLoad(%union.rec* %443, i32 0)
  %444 = load %union.rec*, %union.rec** %face, align 8
  %os11141 = bitcast %union.rec* %444 to %struct.word_type*
  %ou31142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11141, i32 0, i32 3
  %os321143 = bitcast %union.THIRD_UNION* %ou31142 to %struct.anon.7*
  %ofont_mapping = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321143, i32 0, i32 3
  %445 = trunc i32 %call1140 to i8
  %bf.load1144 = load i8, i8* %ofont_mapping, align 4
  %bf.value = and i8 %445, 127
  %bf.clear1145 = and i8 %bf.load1144, -128
  %bf.set = or i8 %bf.clear1145, %bf.value
  store i8 %bf.set, i8* %ofont_mapping, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  br label %if.end.1180

if.else.1146:                                     ; preds = %land.lhs.true, %if.end.1129
  %446 = load %union.rec*, %union.rec** %recode, align 8
  %cmp1147 = icmp eq %union.rec* %446, null
  br i1 %cmp1147, label %if.then.1156, label %lor.lhs.false.1149

lor.lhs.false.1149:                               ; preds = %if.else.1146
  %447 = load %union.rec*, %union.rec** %recode, align 8
  %os11150 = bitcast %union.rec* %447 to %struct.word_type*
  %ostring1151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11150, i32 0, i32 4
  %arraydecay1152 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1151, i32 0, i32 0
  %call1153 = call i32 @strcmp(i8* %arraydecay1152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0)) #5
  %cmp1154 = icmp eq i32 %call1153, 0
  br i1 %cmp1154, label %if.then.1156, label %if.else.1174

if.then.1156:                                     ; preds = %lor.lhs.false.1149, %if.else.1146
  %448 = load %union.rec*, %union.rec** %face, align 8
  %os11157 = bitcast %union.rec* %448 to %struct.word_type*
  %ou31158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11157, i32 0, i32 3
  %os321159 = bitcast %union.THIRD_UNION* %ou31158 to %struct.anon.7*
  %ofont_recoded1160 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321159, i32 0, i32 3
  %bf.load1161 = load i8, i8* %ofont_recoded1160, align 4
  %bf.clear1162 = and i8 %bf.load1161, 127
  %bf.set1163 = or i8 %bf.clear1162, -128
  store i8 %bf.set1163, i8* %ofont_recoded1160, align 4
  %449 = load %union.rec*, %union.rec** %LCMfilename, align 8
  %call1164 = call i32 @MapLoad(%union.rec* %449, i32 1)
  %450 = load %union.rec*, %union.rec** %face, align 8
  %os11165 = bitcast %union.rec* %450 to %struct.word_type*
  %ou31166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11165, i32 0, i32 3
  %os321167 = bitcast %union.THIRD_UNION* %ou31166 to %struct.anon.7*
  %ofont_mapping1168 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321167, i32 0, i32 3
  %451 = trunc i32 %call1164 to i8
  %bf.load1169 = load i8, i8* %ofont_mapping1168, align 4
  %bf.value1170 = and i8 %451, 127
  %bf.clear1171 = and i8 %bf.load1169, -128
  %bf.set1172 = or i8 %bf.clear1171, %bf.value1170
  store i8 %bf.set1172, i8* %ofont_mapping1168, align 4
  %bf.result.cast1173 = zext i8 %bf.value1170 to i32
  br label %if.end.1179

if.else.1174:                                     ; preds = %lor.lhs.false.1149
  %452 = load %union.rec*, %union.rec** %recode, align 8
  %os11175 = bitcast %union.rec* %452 to %struct.word_type*
  %ou11176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11175, i32 0, i32 1
  %ofpos1177 = bitcast %union.FIRST_UNION* %ou11176 to %struct.FILE_POS*
  %call1178 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.88, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1177)
  br label %if.end.1179

if.end.1179:                                      ; preds = %if.else.1174, %if.then.1156
  br label %if.end.1180

if.end.1180:                                      ; preds = %if.end.1179, %if.then.1138
  %453 = load %union.rec*, %union.rec** %face, align 8
  %os11181 = bitcast %union.rec* %453 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11181, i32 0, i32 2
  %os25 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.4*
  %ofont_page = getelementptr inbounds %struct.anon.4, %struct.anon.4* %os25, i32 0, i32 1
  store i16 0, i16* %ofont_page, align 2
  %454 = load i32, i32* @font_count, align 4
  %inc = add i32 %454, 1
  store i32 %inc, i32* @font_count, align 4
  %455 = load i32, i32* @finfo_size, align 4
  %cmp1182 = icmp uge i32 %inc, %455
  br i1 %cmp1182, label %if.then.1184, label %if.end.1204

if.then.1184:                                     ; preds = %if.end.1180
  %456 = load i32, i32* @font_count, align 4
  %cmp1185 = icmp ugt i32 %456, 4096
  br i1 %cmp1185, label %if.then.1187, label %if.end.1192

if.then.1187:                                     ; preds = %if.then.1184
  %457 = load %union.rec*, %union.rec** %err.addr, align 8
  %os11188 = bitcast %union.rec* %457 to %struct.word_type*
  %ou11189 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11188, i32 0, i32 1
  %ofpos1190 = bitcast %union.FIRST_UNION* %ou11189 to %struct.FILE_POS*
  %call1191 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.89, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1190, i32 4096)
  br label %if.end.1192

if.end.1192:                                      ; preds = %if.then.1187, %if.then.1184
  %458 = load i32, i32* @finfo_size, align 4
  %mul = mul nsw i32 %458, 2
  store i32 %mul, i32* @finfo_size, align 4
  %459 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %460 = bitcast %struct.font_rec* %459 to i8*
  %461 = load i32, i32* @finfo_size, align 4
  %conv1193 = sext i32 %461 to i64
  %mul1194 = mul i64 %conv1193, 96
  %call1195 = call i8* @realloc(i8* %460, i64 %mul1194) #4
  %462 = bitcast i8* %call1195 to %struct.font_rec*
  store %struct.font_rec* %462, %struct.font_rec** @finfo, align 8
  %463 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %cmp1196 = icmp eq %struct.font_rec* %463, null
  br i1 %cmp1196, label %if.then.1198, label %if.end.1203

if.then.1198:                                     ; preds = %if.end.1192
  %464 = load %union.rec*, %union.rec** %err.addr, align 8
  %os11199 = bitcast %union.rec* %464 to %struct.word_type*
  %ou11200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11199, i32 0, i32 1
  %ofpos1201 = bitcast %union.FIRST_UNION* %ou11200 to %struct.FILE_POS*
  %call1202 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1201)
  br label %if.end.1203

if.end.1203:                                      ; preds = %if.then.1198, %if.end.1192
  br label %if.end.1204

if.end.1204:                                      ; preds = %if.end.1203, %if.end.1180
  %465 = load i32, i32* @font_seqnum, align 4
  %inc1205 = add nsw i32 %465, 1
  store i32 %inc1205, i32* @font_seqnum, align 4
  %call1206 = call i8* @StringInt(i32 %inc1205)
  %466 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1207 = call %union.rec* @MakeWordTwo(i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i8* %call1206, %struct.FILE_POS* %466)
  store %union.rec* %call1207, %union.rec** %first_size, align 8
  %467 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv1208 = zext i8 %467 to i32
  store i32 %conv1208, i32* @zz_size, align 4
  %conv1209 = sext i32 %conv1208 to i64
  %cmp1210 = icmp uge i64 %conv1209, 265
  br i1 %cmp1210, label %if.then.1212, label %if.else.1214

if.then.1212:                                     ; preds = %if.end.1204
  %468 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1213 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %468)
  br label %if.end.1231

if.else.1214:                                     ; preds = %if.end.1204
  %469 = load i32, i32* @zz_size, align 4
  %idxprom1215 = sext i32 %469 to i64
  %arrayidx1216 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1215
  %470 = load %union.rec*, %union.rec** %arrayidx1216, align 8
  %cmp1217 = icmp eq %union.rec* %470, null
  br i1 %cmp1217, label %if.then.1219, label %if.else.1221

if.then.1219:                                     ; preds = %if.else.1214
  %471 = load i32, i32* @zz_size, align 4
  %472 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1220 = call %union.rec* @GetMemory(i32 %471, %struct.FILE_POS* %472)
  store %union.rec* %call1220, %union.rec** @zz_hold, align 8
  br label %if.end.1230

if.else.1221:                                     ; preds = %if.else.1214
  %473 = load i32, i32* @zz_size, align 4
  %idxprom1222 = sext i32 %473 to i64
  %arrayidx1223 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1222
  %474 = load %union.rec*, %union.rec** %arrayidx1223, align 8
  store %union.rec* %474, %union.rec** @zz_hold, align 8
  store %union.rec* %474, %union.rec** @zz_hold, align 8
  %475 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11224 = bitcast %union.rec* %475 to %struct.word_type*
  %olist1225 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11224, i32 0, i32 0
  %arrayidx1226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1225, i32 0, i64 0
  %opred1227 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1226, i32 0, i32 0
  %476 = load %union.rec*, %union.rec** %opred1227, align 8
  %477 = load i32, i32* @zz_size, align 4
  %idxprom1228 = sext i32 %477 to i64
  %arrayidx1229 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom1228
  store %union.rec* %476, %union.rec** %arrayidx1229, align 8
  br label %if.end.1230

if.end.1230:                                      ; preds = %if.else.1221, %if.then.1219
  br label %if.end.1231

if.end.1231:                                      ; preds = %if.end.1230, %if.then.1212
  %478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11233 = bitcast %union.rec* %478 to %struct.word_type*
  %ou11234 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11233, i32 0, i32 1
  %os111235 = bitcast %union.FIRST_UNION* %ou11234 to %struct.anon*
  %otype1236 = getelementptr inbounds %struct.anon, %struct.anon* %os111235, i32 0, i32 0
  store i8 0, i8* %otype1236, align 1
  %479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %480 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11237 = bitcast %union.rec* %480 to %struct.word_type*
  %olist1238 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11237, i32 0, i32 0
  %arrayidx1239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1238, i32 0, i64 1
  %osucc1240 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1239, i32 0, i32 1
  store %union.rec* %479, %union.rec** %osucc1240, align 8
  %481 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11241 = bitcast %union.rec* %481 to %struct.word_type*
  %olist1242 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11241, i32 0, i32 0
  %arrayidx1243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1242, i32 0, i64 1
  %opred1244 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1243, i32 0, i32 0
  store %union.rec* %479, %union.rec** %opred1244, align 8
  %482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11245 = bitcast %union.rec* %482 to %struct.word_type*
  %olist1246 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11245, i32 0, i32 0
  %arrayidx1247 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1246, i32 0, i64 0
  %osucc1248 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1247, i32 0, i32 1
  store %union.rec* %479, %union.rec** %osucc1248, align 8
  %483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11249 = bitcast %union.rec* %483 to %struct.word_type*
  %olist1250 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11249, i32 0, i32 0
  %arrayidx1251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1250, i32 0, i64 0
  %opred1252 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1251, i32 0, i32 0
  store %union.rec* %479, %union.rec** %opred1252, align 8
  store %union.rec* %479, %union.rec** @xx_link, align 8
  %484 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %484, %union.rec** @zz_res, align 8
  %485 = load %union.rec*, %union.rec** %face, align 8
  store %union.rec* %485, %union.rec** @zz_hold, align 8
  %486 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1253 = icmp eq %union.rec* %486, null
  br i1 %cmp1253, label %cond.true.1255, label %cond.false.1256

cond.true.1255:                                   ; preds = %if.end.1231
  %487 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1291

cond.false.1256:                                  ; preds = %if.end.1231
  %488 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1257 = icmp eq %union.rec* %488, null
  br i1 %cmp1257, label %cond.true.1259, label %cond.false.1260

cond.true.1259:                                   ; preds = %cond.false.1256
  %489 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1289

cond.false.1260:                                  ; preds = %cond.false.1256
  %490 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11261 = bitcast %union.rec* %490 to %struct.word_type*
  %olist1262 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11261, i32 0, i32 0
  %arrayidx1263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1262, i32 0, i64 0
  %opred1264 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1263, i32 0, i32 0
  %491 = load %union.rec*, %union.rec** %opred1264, align 8
  store %union.rec* %491, %union.rec** @zz_tmp, align 8
  %492 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11265 = bitcast %union.rec* %492 to %struct.word_type*
  %olist1266 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11265, i32 0, i32 0
  %arrayidx1267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1266, i32 0, i64 0
  %opred1268 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1267, i32 0, i32 0
  %493 = load %union.rec*, %union.rec** %opred1268, align 8
  %494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11269 = bitcast %union.rec* %494 to %struct.word_type*
  %olist1270 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11269, i32 0, i32 0
  %arrayidx1271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1270, i32 0, i64 0
  %opred1272 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1271, i32 0, i32 0
  store %union.rec* %493, %union.rec** %opred1272, align 8
  %495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %496 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11273 = bitcast %union.rec* %496 to %struct.word_type*
  %olist1274 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11273, i32 0, i32 0
  %arrayidx1275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1274, i32 0, i64 0
  %opred1276 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1275, i32 0, i32 0
  %497 = load %union.rec*, %union.rec** %opred1276, align 8
  %os11277 = bitcast %union.rec* %497 to %struct.word_type*
  %olist1278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11277, i32 0, i32 0
  %arrayidx1279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1278, i32 0, i64 0
  %osucc1280 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1279, i32 0, i32 1
  store %union.rec* %495, %union.rec** %osucc1280, align 8
  %498 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %499 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11281 = bitcast %union.rec* %499 to %struct.word_type*
  %olist1282 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11281, i32 0, i32 0
  %arrayidx1283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1282, i32 0, i64 0
  %opred1284 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1283, i32 0, i32 0
  store %union.rec* %498, %union.rec** %opred1284, align 8
  %500 = load %union.rec*, %union.rec** @zz_res, align 8
  %501 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11285 = bitcast %union.rec* %501 to %struct.word_type*
  %olist1286 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11285, i32 0, i32 0
  %arrayidx1287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1286, i32 0, i64 0
  %osucc1288 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1287, i32 0, i32 1
  store %union.rec* %500, %union.rec** %osucc1288, align 8
  br label %cond.end.1289

cond.end.1289:                                    ; preds = %cond.false.1260, %cond.true.1259
  %cond1290 = phi %union.rec* [ %489, %cond.true.1259 ], [ %500, %cond.false.1260 ]
  br label %cond.end.1291

cond.end.1291:                                    ; preds = %cond.end.1289, %cond.true.1255
  %cond1292 = phi %union.rec* [ %487, %cond.true.1255 ], [ %cond1290, %cond.end.1289 ]
  %502 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %502, %union.rec** @zz_res, align 8
  %503 = load %union.rec*, %union.rec** %first_size, align 8
  store %union.rec* %503, %union.rec** @zz_hold, align 8
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp1293 = icmp eq %union.rec* %504, null
  br i1 %cmp1293, label %cond.true.1295, label %cond.false.1296

cond.true.1295:                                   ; preds = %cond.end.1291
  %505 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.1331

cond.false.1296:                                  ; preds = %cond.end.1291
  %506 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp1297 = icmp eq %union.rec* %506, null
  br i1 %cmp1297, label %cond.true.1299, label %cond.false.1300

cond.true.1299:                                   ; preds = %cond.false.1296
  %507 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.1329

cond.false.1300:                                  ; preds = %cond.false.1296
  %508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11301 = bitcast %union.rec* %508 to %struct.word_type*
  %olist1302 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11301, i32 0, i32 0
  %arrayidx1303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1302, i32 0, i64 1
  %opred1304 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1303, i32 0, i32 0
  %509 = load %union.rec*, %union.rec** %opred1304, align 8
  store %union.rec* %509, %union.rec** @zz_tmp, align 8
  %510 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11305 = bitcast %union.rec* %510 to %struct.word_type*
  %olist1306 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11305, i32 0, i32 0
  %arrayidx1307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1306, i32 0, i64 1
  %opred1308 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1307, i32 0, i32 0
  %511 = load %union.rec*, %union.rec** %opred1308, align 8
  %512 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os11309 = bitcast %union.rec* %512 to %struct.word_type*
  %olist1310 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11309, i32 0, i32 0
  %arrayidx1311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1310, i32 0, i64 1
  %opred1312 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1311, i32 0, i32 0
  store %union.rec* %511, %union.rec** %opred1312, align 8
  %513 = load %union.rec*, %union.rec** @zz_hold, align 8
  %514 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11313 = bitcast %union.rec* %514 to %struct.word_type*
  %olist1314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11313, i32 0, i32 0
  %arrayidx1315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1314, i32 0, i64 1
  %opred1316 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1315, i32 0, i32 0
  %515 = load %union.rec*, %union.rec** %opred1316, align 8
  %os11317 = bitcast %union.rec* %515 to %struct.word_type*
  %olist1318 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11317, i32 0, i32 0
  %arrayidx1319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1318, i32 0, i64 1
  %osucc1320 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1319, i32 0, i32 1
  store %union.rec* %513, %union.rec** %osucc1320, align 8
  %516 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %517 = load %union.rec*, %union.rec** @zz_res, align 8
  %os11321 = bitcast %union.rec* %517 to %struct.word_type*
  %olist1322 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11321, i32 0, i32 0
  %arrayidx1323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1322, i32 0, i64 1
  %opred1324 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1323, i32 0, i32 0
  store %union.rec* %516, %union.rec** %opred1324, align 8
  %518 = load %union.rec*, %union.rec** @zz_res, align 8
  %519 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os11325 = bitcast %union.rec* %519 to %struct.word_type*
  %olist1326 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11325, i32 0, i32 0
  %arrayidx1327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1326, i32 0, i64 1
  %osucc1328 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1327, i32 0, i32 1
  store %union.rec* %518, %union.rec** %osucc1328, align 8
  br label %cond.end.1329

cond.end.1329:                                    ; preds = %cond.false.1300, %cond.true.1299
  %cond1330 = phi %union.rec* [ %507, %cond.true.1299 ], [ %518, %cond.false.1300 ]
  br label %cond.end.1331

cond.end.1331:                                    ; preds = %cond.end.1329, %cond.true.1295
  %cond1332 = phi %union.rec* [ %505, %cond.true.1295 ], [ %cond1330, %cond.end.1329 ]
  %520 = load i32, i32* @font_count, align 4
  %521 = load %union.rec*, %union.rec** %first_size, align 8
  %os11333 = bitcast %union.rec* %521 to %struct.word_type*
  %ou21334 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11333, i32 0, i32 2
  %os251335 = bitcast %union.SECOND_UNION* %ou21334 to %struct.anon.4*
  %522 = bitcast %struct.anon.4* %os251335 to i16*
  %523 = trunc i32 %520 to i16
  %bf.load1336 = load i16, i16* %522, align 4
  %bf.value1337 = and i16 %523, 4095
  %bf.clear1338 = and i16 %bf.load1336, -4096
  %bf.set1339 = or i16 %bf.clear1338, %bf.value1337
  store i16 %bf.set1339, i16* %522, align 4
  %bf.result.cast1340 = zext i16 %bf.value1337 to i32
  %524 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %uses_font_metrics = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %524, i32 0, i32 8
  %525 = load i32, i32* %uses_font_metrics, align 4
  %tobool1341 = icmp ne i32 %525, 0
  br i1 %tobool1341, label %cond.true.1342, label %cond.false.1343

cond.true.1342:                                   ; preds = %cond.end.1331
  br label %cond.end.1344

cond.false.1343:                                  ; preds = %cond.end.1331
  %526 = load i32, i32* @PlainCharHeight, align 4
  br label %cond.end.1344

cond.end.1344:                                    ; preds = %cond.false.1343, %cond.true.1342
  %cond1345 = phi i32 [ 1000, %cond.true.1342 ], [ %526, %cond.false.1343 ]
  %527 = load %union.rec*, %union.rec** %first_size, align 8
  %os11346 = bitcast %union.rec* %527 to %struct.word_type*
  %ou31347 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11346, i32 0, i32 3
  %os321348 = bitcast %union.THIRD_UNION* %ou31347 to %struct.anon.7*
  %ofont_size = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321348, i32 0, i32 0
  store i32 %cond1345, i32* %ofont_size, align 4
  %528 = load %union.rec*, %union.rec** %face, align 8
  %os11349 = bitcast %union.rec* %528 to %struct.word_type*
  %ou31350 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11349, i32 0, i32 3
  %os321351 = bitcast %union.THIRD_UNION* %ou31350 to %struct.anon.7*
  %ofont_recoded1352 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321351, i32 0, i32 3
  %bf.load1353 = load i8, i8* %ofont_recoded1352, align 4
  %bf.lshr = lshr i8 %bf.load1353, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %529 = load %union.rec*, %union.rec** %first_size, align 8
  %os11354 = bitcast %union.rec* %529 to %struct.word_type*
  %ou31355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11354, i32 0, i32 3
  %os321356 = bitcast %union.THIRD_UNION* %ou31355 to %struct.anon.7*
  %ofont_recoded1357 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321356, i32 0, i32 3
  %530 = trunc i32 %bf.cast to i8
  %bf.load1358 = load i8, i8* %ofont_recoded1357, align 4
  %bf.value1359 = and i8 %530, 1
  %bf.shl = shl i8 %bf.value1359, 7
  %bf.clear1360 = and i8 %bf.load1358, 127
  %bf.set1361 = or i8 %bf.clear1360, %bf.shl
  store i8 %bf.set1361, i8* %ofont_recoded1357, align 4
  %bf.result.cast1362 = zext i8 %bf.value1359 to i32
  %531 = load %union.rec*, %union.rec** %face, align 8
  %os11363 = bitcast %union.rec* %531 to %struct.word_type*
  %ou31364 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11363, i32 0, i32 3
  %os321365 = bitcast %union.THIRD_UNION* %ou31364 to %struct.anon.7*
  %ofont_mapping1366 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321365, i32 0, i32 3
  %bf.load1367 = load i8, i8* %ofont_mapping1366, align 4
  %bf.clear1368 = and i8 %bf.load1367, 127
  %bf.cast1369 = zext i8 %bf.clear1368 to i32
  %532 = load %union.rec*, %union.rec** %first_size, align 8
  %os11371 = bitcast %union.rec* %532 to %struct.word_type*
  %ou31372 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11371, i32 0, i32 3
  %os321373 = bitcast %union.THIRD_UNION* %ou31372 to %struct.anon.7*
  %ofont_mapping1374 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321373, i32 0, i32 3
  %533 = trunc i32 %bf.cast1369 to i8
  %bf.load1375 = load i8, i8* %ofont_mapping1374, align 4
  %bf.value1376 = and i8 %533, 127
  %bf.clear1377 = and i8 %bf.load1375, -128
  %bf.set1378 = or i8 %bf.clear1377, %bf.value1376
  store i8 %bf.set1378, i8* %ofont_mapping1374, align 4
  %bf.result.cast1379 = zext i8 %bf.value1376 to i32
  %534 = load %union.rec*, %union.rec** %first_size, align 8
  %os11380 = bitcast %union.rec* %534 to %struct.word_type*
  %ou21381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11380, i32 0, i32 2
  %os251382 = bitcast %union.SECOND_UNION* %ou21381 to %struct.anon.4*
  %535 = bitcast %struct.anon.4* %os251382 to i16*
  %bf.load1383 = load i16, i16* %535, align 4
  %bf.clear1384 = and i16 %bf.load1383, 4095
  %bf.cast1385 = zext i16 %bf.clear1384 to i32
  %536 = load %union.rec*, %union.rec** %face, align 8
  %os11386 = bitcast %union.rec* %536 to %struct.word_type*
  %ou21387 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11386, i32 0, i32 2
  %os251388 = bitcast %union.SECOND_UNION* %ou21387 to %struct.anon.4*
  %537 = bitcast %struct.anon.4* %os251388 to i16*
  %538 = trunc i32 %bf.cast1385 to i16
  %bf.load1389 = load i16, i16* %537, align 4
  %bf.value1390 = and i16 %538, 4095
  %bf.clear1391 = and i16 %bf.load1389, -4096
  %bf.set1392 = or i16 %bf.clear1391, %bf.value1390
  store i16 %bf.set1392, i16* %537, align 4
  %bf.result.cast1393 = zext i16 %bf.value1390 to i32
  %539 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11394 = bitcast %union.rec* %539 to %struct.word_type*
  %ostring1395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11394, i32 0, i32 4
  %arraydecay1396 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1395, i32 0, i32 0
  %540 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11397 = bitcast %union.rec* %540 to %struct.word_type*
  %ou11398 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11397, i32 0, i32 1
  %ofpos1399 = bitcast %union.FIRST_UNION* %ou11398 to %struct.FILE_POS*
  %call1400 = call zeroext i16 @DefineFile(i8* %arraydecay1396, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), %struct.FILE_POS* %ofpos1399, i32 5, i32 5)
  store i16 %call1400, i16* %fnum, align 2
  %541 = load i16, i16* %fnum, align 2
  %call1401 = call %struct._IO_FILE* @OpenFile(i16 zeroext %541, i32 0, i32 0)
  store %struct._IO_FILE* %call1401, %struct._IO_FILE** %fp, align 8
  %542 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp1402 = icmp eq %struct._IO_FILE* %542, null
  br i1 %cmp1402, label %if.then.1404, label %if.end.1410

if.then.1404:                                     ; preds = %cond.end.1344
  %543 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11405 = bitcast %union.rec* %543 to %struct.word_type*
  %ou11406 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11405, i32 0, i32 1
  %ofpos1407 = bitcast %union.FIRST_UNION* %ou11406 to %struct.FILE_POS*
  %544 = load i16, i16* %fnum, align 2
  %call1408 = call i8* @FileName(i16 zeroext %544)
  %call1409 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.91, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1407, i8* %call1408)
  br label %if.end.1410

if.end.1410:                                      ; preds = %if.then.1404, %cond.end.1344
  %arraydecay1411 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %545 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1412 = call i8* @fgets(i8* %arraydecay1411, i32 512, %struct._IO_FILE* %545)
  %cmp1413 = icmp eq i8* %call1412, null
  br i1 %cmp1413, label %if.then.1426, label %lor.lhs.false.1415

lor.lhs.false.1415:                               ; preds = %if.end.1410
  %arraydecay1416 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay1417 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1418 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay1416, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* %arraydecay1417) #4
  %cmp1419 = icmp ne i32 %call1418, 1
  br i1 %cmp1419, label %if.then.1426, label %lor.lhs.false.1421

lor.lhs.false.1421:                               ; preds = %lor.lhs.false.1415
  %arraydecay1422 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1423 = call i32 @strcmp(i8* %arraydecay1422, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.93, i32 0, i32 0)) #5
  %cmp1424 = icmp eq i32 %call1423, 0
  br i1 %cmp1424, label %if.end.1432, label %if.then.1426

if.then.1426:                                     ; preds = %lor.lhs.false.1421, %lor.lhs.false.1415, %if.end.1410
  %546 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11427 = bitcast %union.rec* %546 to %struct.word_type*
  %ou11428 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11427, i32 0, i32 1
  %ofpos1429 = bitcast %union.FIRST_UNION* %ou11428 to %struct.FILE_POS*
  %547 = load i16, i16* %fnum, align 2
  %call1430 = call i8* @FileName(i16 zeroext %547)
  %call1431 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.94, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1429, i8* %call1430)
  br label %if.end.1432

if.end.1432:                                      ; preds = %if.then.1426, %lor.lhs.false.1421
  %call1433 = call noalias i8* @malloc(i64 2560) #4
  %548 = bitcast i8* %call1433 to %struct.metrics*
  store %struct.metrics* %548, %struct.metrics** %fnt, align 8
  %549 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %cmp1434 = icmp eq %struct.metrics* %549, null
  br i1 %cmp1434, label %if.then.1436, label %if.end.1442

if.then.1436:                                     ; preds = %if.end.1432
  %550 = load %union.rec*, %union.rec** %err.addr, align 8
  %os11437 = bitcast %union.rec* %550 to %struct.word_type*
  %ou11438 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11437, i32 0, i32 1
  %ofpos1439 = bitcast %union.FIRST_UNION* %ou11438 to %struct.FILE_POS*
  %551 = load i16, i16* %fnum, align 2
  %call1440 = call i8* @FileName(i16 zeroext %551)
  %call1441 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1439, i8* %call1440)
  br label %if.end.1442

if.end.1442:                                      ; preds = %if.then.1436, %if.end.1432
  %call1443 = call noalias i8* @malloc(i64 512) #4
  store i8* %call1443, i8** %lig, align 8
  %552 = load i8*, i8** %lig, align 8
  %cmp1444 = icmp eq i8* %552, null
  br i1 %cmp1444, label %if.then.1446, label %if.end.1452

if.then.1446:                                     ; preds = %if.end.1442
  %553 = load %union.rec*, %union.rec** %err.addr, align 8
  %os11447 = bitcast %union.rec* %553 to %struct.word_type*
  %ou11448 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11447, i32 0, i32 1
  %ofpos1449 = bitcast %union.FIRST_UNION* %ou11448 to %struct.FILE_POS*
  %554 = load i16, i16* %fnum, align 2
  %call1450 = call i8* @FileName(i16 zeroext %554)
  %call1451 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1449, i8* %call1450)
  br label %if.end.1452

if.end.1452:                                      ; preds = %if.then.1446, %if.end.1442
  store i32 0, i32* %i, align 4
  br label %for.cond.1453

for.cond.1453:                                    ; preds = %for.inc.1459, %if.end.1452
  %555 = load i32, i32* %i, align 4
  %cmp1454 = icmp slt i32 %555, 256
  br i1 %cmp1454, label %for.body.1456, label %for.end.1461

for.body.1456:                                    ; preds = %for.cond.1453
  %556 = load i32, i32* %i, align 4
  %idxprom1457 = sext i32 %556 to i64
  %557 = load i8*, i8** %lig, align 8
  %arrayidx1458 = getelementptr inbounds i8, i8* %557, i64 %idxprom1457
  store i8 1, i8* %arrayidx1458, align 1
  br label %for.inc.1459

for.inc.1459:                                     ; preds = %for.body.1456
  %558 = load i32, i32* %i, align 4
  %inc1460 = add nsw i32 %558, 1
  store i32 %inc1460, i32* %i, align 4
  br label %for.cond.1453

for.end.1461:                                     ; preds = %for.cond.1453
  store i32 258, i32* %ligtop, align 4
  %call1462 = call noalias i8* @malloc(i64 512) #4
  %559 = bitcast i8* %call1462 to i16*
  store i16* %559, i16** %composite, align 8
  %560 = load i16*, i16** %composite, align 8
  %cmp1463 = icmp eq i16* %560, null
  br i1 %cmp1463, label %if.then.1465, label %if.end.1471

if.then.1465:                                     ; preds = %for.end.1461
  %561 = load %union.rec*, %union.rec** %err.addr, align 8
  %os11466 = bitcast %union.rec* %561 to %struct.word_type*
  %ou11467 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11466, i32 0, i32 1
  %ofpos1468 = bitcast %union.FIRST_UNION* %ou11467 to %struct.FILE_POS*
  %562 = load i16, i16* %fnum, align 2
  %call1469 = call i8* @FileName(i16 zeroext %562)
  %call1470 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1468, i8* %call1469)
  br label %if.end.1471

if.end.1471:                                      ; preds = %if.then.1465, %for.end.1461
  %call1472 = call noalias i8* @malloc(i64 1536) #4
  %563 = bitcast i8* %call1472 to %struct.composite_rec*
  store %struct.composite_rec* %563, %struct.composite_rec** %cmp, align 8
  %564 = load %struct.composite_rec*, %struct.composite_rec** %cmp, align 8
  %cmp1473 = icmp eq %struct.composite_rec* %564, null
  br i1 %cmp1473, label %if.then.1475, label %if.end.1481

if.then.1475:                                     ; preds = %if.end.1471
  %565 = load %union.rec*, %union.rec** %err.addr, align 8
  %os11476 = bitcast %union.rec* %565 to %struct.word_type*
  %ou11477 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11476, i32 0, i32 1
  %ofpos1478 = bitcast %union.FIRST_UNION* %ou11477 to %struct.FILE_POS*
  %566 = load i16, i16* %fnum, align 2
  %call1479 = call i8* @FileName(i16 zeroext %566)
  %call1480 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1478, i8* %call1479)
  br label %if.end.1481

if.end.1481:                                      ; preds = %if.then.1475, %if.end.1471
  store i32 0, i32* %i, align 4
  br label %for.cond.1482

for.cond.1482:                                    ; preds = %for.inc.1488, %if.end.1481
  %567 = load i32, i32* %i, align 4
  %cmp1483 = icmp slt i32 %567, 256
  br i1 %cmp1483, label %for.body.1485, label %for.end.1490

for.body.1485:                                    ; preds = %for.cond.1482
  %568 = load i32, i32* %i, align 4
  %idxprom1486 = sext i32 %568 to i64
  %569 = load i16*, i16** %composite, align 8
  %arrayidx1487 = getelementptr inbounds i16, i16* %569, i64 %idxprom1486
  store i16 0, i16* %arrayidx1487, align 2
  br label %for.inc.1488

for.inc.1488:                                     ; preds = %for.body.1485
  %570 = load i32, i32* %i, align 4
  %inc1489 = add nsw i32 %570, 1
  store i32 %inc1489, i32* %i, align 4
  br label %for.cond.1482

for.end.1490:                                     ; preds = %for.cond.1482
  store i32 1, i32* %cmptop, align 4
  %call1491 = call noalias i8* @malloc(i64 512) #4
  %571 = bitcast i8* %call1491 to i16*
  store i16* %571, i16** %kt, align 8
  %572 = load i16*, i16** %kt, align 8
  %cmp1492 = icmp eq i16* %572, null
  br i1 %cmp1492, label %if.then.1494, label %if.end.1500

if.then.1494:                                     ; preds = %for.end.1490
  %573 = load %union.rec*, %union.rec** %err.addr, align 8
  %os11495 = bitcast %union.rec* %573 to %struct.word_type*
  %ou11496 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11495, i32 0, i32 1
  %ofpos1497 = bitcast %union.FIRST_UNION* %ou11496 to %struct.FILE_POS*
  %574 = load i16, i16* %fnum, align 2
  %call1498 = call i8* @FileName(i16 zeroext %574)
  %call1499 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.95, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1497, i8* %call1498)
  br label %if.end.1500

if.end.1500:                                      ; preds = %if.then.1494, %for.end.1490
  store i32 0, i32* %i, align 4
  br label %for.cond.1501

for.cond.1501:                                    ; preds = %for.inc.1507, %if.end.1500
  %575 = load i32, i32* %i, align 4
  %cmp1502 = icmp slt i32 %575, 256
  br i1 %cmp1502, label %for.body.1504, label %for.end.1509

for.body.1504:                                    ; preds = %for.cond.1501
  %576 = load i32, i32* %i, align 4
  %idxprom1505 = sext i32 %576 to i64
  %577 = load i16*, i16** %kt, align 8
  %arrayidx1506 = getelementptr inbounds i16, i16* %577, i64 %idxprom1505
  store i16 0, i16* %arrayidx1506, align 2
  br label %for.inc.1507

for.inc.1507:                                     ; preds = %for.body.1504
  %578 = load i32, i32* %i, align 4
  %inc1508 = add nsw i32 %578, 1
  store i32 %inc1508, i32* %i, align 4
  br label %for.cond.1501

for.end.1509:                                     ; preds = %for.cond.1501
  store i16* null, i16** %ks, align 8
  store i32 0, i32* %utfound, align 4
  store i32 0, i32* %upfound, align 4
  store i32 0, i32* %xhfound, align 4
  store i32 0, i32* %under_pos, align 4
  store i32 0, i32* %under_thick, align 4
  store i32 0, i32* %xheight2, align 4
  store i8* null, i8** %kc, align 8
  store i8* null, i8** %kv, align 8
  store i16* null, i16** %ks, align 8
  store i32 0, i32* %font_name_found, align 4
  store i32 1, i32* %lnum, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %for.end.1509
  %arraydecay1510 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %579 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1511 = call i8* @fgets(i8* %arraydecay1510, i32 512, %struct._IO_FILE* %579)
  store i8* %call1511, i8** %status, align 8
  %cmp1512 = icmp ne i8* %call1511, null
  br i1 %cmp1512, label %land.rhs, label %land.end.1523

land.rhs:                                         ; preds = %while.cond
  %arrayidx1514 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 0
  %580 = load i8, i8* %arrayidx1514, align 1
  %conv1515 = zext i8 %580 to i32
  %cmp1516 = icmp eq i32 %conv1515, 69
  br i1 %cmp1516, label %land.rhs.1518, label %land.end

land.rhs.1518:                                    ; preds = %land.rhs
  %arraydecay1519 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call1520 = call i32 @strcmp(i8* %arraydecay1519, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i32 0, i32 0)) #5
  %cmp1521 = icmp eq i32 %call1520, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.1518, %land.rhs
  %581 = phi i1 [ false, %land.rhs ], [ %cmp1521, %land.rhs.1518 ]
  %lnot = xor i1 %581, true
  br label %land.end.1523

land.end.1523:                                    ; preds = %land.end, %while.cond
  %582 = phi i1 [ false, %while.cond ], [ %lnot, %land.end ]
  br i1 %582, label %while.body, label %while.end.1905

while.body:                                       ; preds = %land.end.1523
  %583 = load i32, i32* %lnum, align 4
  %inc1524 = add nsw i32 %583, 1
  store i32 %inc1524, i32* %lnum, align 4
  %arraydecay1525 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay1526 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1527 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay1525, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* %arraydecay1526) #4
  %arrayidx1528 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i64 0
  %584 = load i8, i8* %arrayidx1528, align 1
  %conv1529 = zext i8 %584 to i32
  switch i32 %conv1529, label %sw.default [
    i32 85, label %sw.bb
    i32 88, label %sw.bb.1563
    i32 70, label %sw.bb.1580
    i32 73, label %sw.bb.1649
    i32 83, label %sw.bb.1665
  ]

sw.bb:                                            ; preds = %while.body
  %arraydecay1530 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1531 = call i32 @strcmp(i8* %arraydecay1530, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i32 0, i32 0)) #5
  %cmp1532 = icmp eq i32 %call1531, 0
  br i1 %cmp1532, label %if.then.1534, label %if.else.1545

if.then.1534:                                     ; preds = %sw.bb
  %585 = load i32, i32* %upfound, align 4
  %tobool1535 = icmp ne i32 %585, 0
  br i1 %tobool1535, label %if.then.1536, label %if.end.1541

if.then.1536:                                     ; preds = %if.then.1534
  %586 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11537 = bitcast %union.rec* %586 to %struct.word_type*
  %ou11538 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11537, i32 0, i32 1
  %ofpos1539 = bitcast %union.FIRST_UNION* %ou11538 to %struct.FILE_POS*
  %587 = load i32, i32* %lnum, align 4
  %call1540 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 26, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.98, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1539, i32 %587)
  br label %if.end.1541

if.end.1541:                                      ; preds = %if.then.1536, %if.then.1534
  %arraydecay1542 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call1543 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay1542, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.99, i32 0, i32 0), float* %fl_under_pos) #4
  %588 = load float, float* %fl_under_pos, align 4
  %conv1544 = fptosi float %588 to i32
  store i32 %conv1544, i32* %under_pos, align 4
  store i32 1, i32* %upfound, align 4
  br label %if.end.1562

if.else.1545:                                     ; preds = %sw.bb
  %arraydecay1546 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1547 = call i32 @strcmp(i8* %arraydecay1546, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.100, i32 0, i32 0)) #5
  %cmp1548 = icmp eq i32 %call1547, 0
  br i1 %cmp1548, label %if.then.1550, label %if.end.1561

if.then.1550:                                     ; preds = %if.else.1545
  %589 = load i32, i32* %utfound, align 4
  %tobool1551 = icmp ne i32 %589, 0
  br i1 %tobool1551, label %if.then.1552, label %if.end.1557

if.then.1552:                                     ; preds = %if.then.1550
  %590 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11553 = bitcast %union.rec* %590 to %struct.word_type*
  %ou11554 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11553, i32 0, i32 1
  %ofpos1555 = bitcast %union.FIRST_UNION* %ou11554 to %struct.FILE_POS*
  %591 = load i32, i32* %lnum, align 4
  %call1556 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.101, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1555, i32 %591)
  br label %if.end.1557

if.end.1557:                                      ; preds = %if.then.1552, %if.then.1550
  %arraydecay1558 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call1559 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay1558, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.102, i32 0, i32 0), float* %fl_under_thick) #4
  %592 = load float, float* %fl_under_thick, align 4
  %conv1560 = fptosi float %592 to i32
  store i32 %conv1560, i32* %under_thick, align 4
  store i32 1, i32* %utfound, align 4
  br label %if.end.1561

if.end.1561:                                      ; preds = %if.end.1557, %if.else.1545
  br label %if.end.1562

if.end.1562:                                      ; preds = %if.end.1561, %if.end.1541
  br label %sw.epilog

sw.bb.1563:                                       ; preds = %while.body
  %arraydecay1564 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1565 = call i32 @strcmp(i8* %arraydecay1564, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i32 0, i32 0)) #5
  %cmp1566 = icmp eq i32 %call1565, 0
  br i1 %cmp1566, label %if.then.1568, label %if.end.1579

if.then.1568:                                     ; preds = %sw.bb.1563
  %593 = load i32, i32* %xhfound, align 4
  %tobool1569 = icmp ne i32 %593, 0
  br i1 %tobool1569, label %if.then.1570, label %if.end.1575

if.then.1570:                                     ; preds = %if.then.1568
  %594 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11571 = bitcast %union.rec* %594 to %struct.word_type*
  %ou11572 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11571, i32 0, i32 1
  %ofpos1573 = bitcast %union.FIRST_UNION* %ou11572 to %struct.FILE_POS*
  %595 = load i32, i32* %lnum, align 4
  %call1574 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.104, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1573, i32 %595)
  br label %if.end.1575

if.end.1575:                                      ; preds = %if.then.1570, %if.then.1568
  %arraydecay1576 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call1577 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay1576, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), float* %fl_xheight2) #4
  %596 = load float, float* %fl_xheight2, align 4
  %div = fdiv float %596, 2.000000e+00
  %conv1578 = fptosi float %div to i32
  store i32 %conv1578, i32* %xheight2, align 4
  store i32 1, i32* %xhfound, align 4
  br label %if.end.1579

if.end.1579:                                      ; preds = %if.end.1575, %sw.bb.1563
  br label %sw.epilog

sw.bb.1580:                                       ; preds = %while.body
  %arraydecay1581 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1582 = call i32 @strcmp(i8* %arraydecay1581, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.106, i32 0, i32 0)) #5
  %cmp1583 = icmp eq i32 %call1582, 0
  br i1 %cmp1583, label %if.then.1585, label %if.end.1648

if.then.1585:                                     ; preds = %sw.bb.1580
  %597 = load i32, i32* %font_name_found, align 4
  %tobool1586 = icmp ne i32 %597, 0
  br i1 %tobool1586, label %if.then.1587, label %if.end.1593

if.then.1587:                                     ; preds = %if.then.1585
  %598 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11588 = bitcast %union.rec* %598 to %struct.word_type*
  %ou11589 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11588, i32 0, i32 1
  %ofpos1590 = bitcast %union.FIRST_UNION* %ou11589 to %struct.FILE_POS*
  %599 = load i16, i16* %fnum, align 2
  %call1591 = call i8* @FileName(i16 zeroext %599)
  %600 = load i32, i32* %lnum, align 4
  %call1592 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 29, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.107, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1590, i8* %call1591, i32 %600)
  br label %if.end.1593

if.end.1593:                                      ; preds = %if.then.1587, %if.then.1585
  %arraydecay1594 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay1595 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1596 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay1594, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i8* %arraydecay1595) #4
  %arraydecay1597 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1598 = call i32 @strcmp(i8* %arraydecay1597, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0)) #5
  %cmp1599 = icmp eq i32 %call1598, 0
  br i1 %cmp1599, label %if.then.1601, label %if.end.1607

if.then.1601:                                     ; preds = %if.end.1593
  %601 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11602 = bitcast %union.rec* %601 to %struct.word_type*
  %ou11603 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11602, i32 0, i32 1
  %ofpos1604 = bitcast %union.FIRST_UNION* %ou11603 to %struct.FILE_POS*
  %602 = load i16, i16* %fnum, align 2
  %call1605 = call i8* @FileName(i16 zeroext %602)
  %603 = load i32, i32* %lnum, align 4
  %call1606 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.109, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1604, i8* %call1605, i32 %603)
  br label %if.end.1607

if.end.1607:                                      ; preds = %if.then.1601, %if.end.1593
  %604 = load %union.rec*, %union.rec** %face, align 8
  %os11608 = bitcast %union.rec* %604 to %struct.word_type*
  %olist1609 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11608, i32 0, i32 0
  %arrayidx1610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1609, i32 0, i64 0
  %osucc1611 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1610, i32 0, i32 1
  %605 = load %union.rec*, %union.rec** %osucc1611, align 8
  %os11612 = bitcast %union.rec* %605 to %struct.word_type*
  %olist1613 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11612, i32 0, i32 0
  %arrayidx1614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1613, i32 0, i64 1
  %opred1615 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1614, i32 0, i32 0
  %606 = load %union.rec*, %union.rec** %opred1615, align 8
  store %union.rec* %606, %union.rec** %y, align 8
  br label %for.cond.1616

for.cond.1616:                                    ; preds = %for.inc.1625, %if.end.1607
  %607 = load %union.rec*, %union.rec** %y, align 8
  %os11617 = bitcast %union.rec* %607 to %struct.word_type*
  %ou11618 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11617, i32 0, i32 1
  %os111619 = bitcast %union.FIRST_UNION* %ou11618 to %struct.anon*
  %otype1620 = getelementptr inbounds %struct.anon, %struct.anon* %os111619, i32 0, i32 0
  %608 = load i8, i8* %otype1620, align 1
  %conv1621 = zext i8 %608 to i32
  %cmp1622 = icmp eq i32 %conv1621, 0
  br i1 %cmp1622, label %for.body.1624, label %for.end.1630

for.body.1624:                                    ; preds = %for.cond.1616
  br label %for.inc.1625

for.inc.1625:                                     ; preds = %for.body.1624
  %609 = load %union.rec*, %union.rec** %y, align 8
  %os11626 = bitcast %union.rec* %609 to %struct.word_type*
  %olist1627 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11626, i32 0, i32 0
  %arrayidx1628 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist1627, i32 0, i64 1
  %opred1629 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1628, i32 0, i32 0
  %610 = load %union.rec*, %union.rec** %opred1629, align 8
  store %union.rec* %610, %union.rec** %y, align 8
  br label %for.cond.1616

for.end.1630:                                     ; preds = %for.cond.1616
  %arraydecay1631 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %611 = load %union.rec*, %union.rec** %y, align 8
  %os11632 = bitcast %union.rec* %611 to %struct.word_type*
  %ostring1633 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11632, i32 0, i32 4
  %arraydecay1634 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1633, i32 0, i32 0
  %call1635 = call i32 @strcmp(i8* %arraydecay1631, i8* %arraydecay1634) #5
  %cmp1636 = icmp eq i32 %call1635, 0
  br i1 %cmp1636, label %if.end.1647, label %if.then.1638

if.then.1638:                                     ; preds = %for.end.1630
  %612 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11639 = bitcast %union.rec* %612 to %struct.word_type*
  %ou11640 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11639, i32 0, i32 1
  %ofpos1641 = bitcast %union.FIRST_UNION* %ou11640 to %struct.FILE_POS*
  %arraydecay1642 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %613 = load %union.rec*, %union.rec** %y, align 8
  %os11643 = bitcast %union.rec* %613 to %struct.word_type*
  %ostring1644 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11643, i32 0, i32 4
  %arraydecay1645 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1644, i32 0, i32 0
  %call1646 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.110, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1641, i8* %arraydecay1642, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %arraydecay1645)
  br label %if.end.1647

if.end.1647:                                      ; preds = %if.then.1638, %for.end.1630
  store i32 1, i32* %font_name_found, align 4
  br label %if.end.1648

if.end.1648:                                      ; preds = %if.end.1647, %sw.bb.1580
  br label %sw.epilog

sw.bb.1649:                                       ; preds = %while.body
  %arraydecay1650 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1651 = call i32 @strcmp(i8* %arraydecay1650, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i32 0, i32 0)) #5
  %cmp1652 = icmp eq i32 %call1651, 0
  br i1 %cmp1652, label %if.then.1654, label %if.end.1664

if.then.1654:                                     ; preds = %sw.bb.1649
  %arraydecay1655 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay1656 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1657 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay1655, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.112, i32 0, i32 0), i8* %arraydecay1656) #4
  %arraydecay1658 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1659 = call i32 @strcmp(i8* %arraydecay1658, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i32 0, i32 0)) #5
  %cmp1660 = icmp eq i32 %call1659, 0
  br i1 %cmp1660, label %if.then.1662, label %if.end.1663

if.then.1662:                                     ; preds = %if.then.1654
  store i32 1, i32* %fixed_pitch, align 4
  br label %if.end.1663

if.end.1663:                                      ; preds = %if.then.1662, %if.then.1654
  br label %if.end.1664

if.end.1664:                                      ; preds = %if.end.1663, %sw.bb.1649
  br label %sw.epilog

sw.bb.1665:                                       ; preds = %while.body
  %arraydecay1666 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1667 = call i32 @strcmp(i8* %arraydecay1666, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.114, i32 0, i32 0)) #5
  %cmp1668 = icmp eq i32 %call1667, 0
  br i1 %cmp1668, label %if.then.1670, label %if.else.1682

if.then.1670:                                     ; preds = %sw.bb.1665
  %614 = load i32, i32* %font_name_found, align 4
  %tobool1671 = icmp ne i32 %614, 0
  br i1 %tobool1671, label %if.end.1678, label %if.then.1672

if.then.1672:                                     ; preds = %if.then.1670
  %615 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11673 = bitcast %union.rec* %615 to %struct.word_type*
  %ou11674 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11673, i32 0, i32 1
  %ofpos1675 = bitcast %union.FIRST_UNION* %ou11674 to %struct.FILE_POS*
  %616 = load i16, i16* %fnum, align 2
  %call1676 = call i8* @FileName(i16 zeroext %616)
  %call1677 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.115, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1675, i8* %call1676)
  br label %if.end.1678

if.end.1678:                                      ; preds = %if.then.1672, %if.then.1670
  %617 = load i32, i32* %xhfound, align 4
  %tobool1679 = icmp ne i32 %617, 0
  br i1 %tobool1679, label %if.end.1681, label %if.then.1680

if.then.1680:                                     ; preds = %if.end.1678
  store i32 250, i32* %xheight2, align 4
  br label %if.end.1681

if.end.1681:                                      ; preds = %if.then.1680, %if.end.1678
  %618 = load %union.rec*, %union.rec** %face, align 8
  %619 = load i32, i32* %fixed_pitch, align 4
  %620 = load i32, i32* %xheight2, align 4
  %621 = load i8*, i8** %lig, align 8
  %622 = load i16, i16* %fnum, align 2
  %623 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %624 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @ReadCharMetrics(%union.rec* %618, i32 %619, i32 %620, i8* %621, i32* %ligtop, i16 zeroext %622, %struct.metrics* %623, i32* %lnum, %struct._IO_FILE* %624)
  br label %if.end.1904

if.else.1682:                                     ; preds = %sw.bb.1665
  %625 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %uses_font_metrics1683 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %625, i32 0, i32 8
  %626 = load i32, i32* %uses_font_metrics1683, align 4
  %tobool1684 = icmp ne i32 %626, 0
  br i1 %tobool1684, label %land.lhs.true.1685, label %if.end.1903

land.lhs.true.1685:                               ; preds = %if.else.1682
  %627 = load i32, i32* @Kern, align 4
  %tobool1686 = icmp ne i32 %627, 0
  br i1 %tobool1686, label %land.lhs.true.1687, label %if.end.1903

land.lhs.true.1687:                               ; preds = %land.lhs.true.1685
  %arraydecay1688 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1689 = call i32 @strcmp(i8* %arraydecay1688, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i32 0, i32 0)) #5
  %cmp1690 = icmp eq i32 %call1689, 0
  br i1 %cmp1690, label %if.then.1692, label %if.end.1903

if.then.1692:                                     ; preds = %land.lhs.true.1687
  %arraydecay1693 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call1694 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay1693, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.117, i32 0, i32 0), i32* %num_pairs) #4
  %cmp1695 = icmp ne i32 %call1694, 1
  br i1 %cmp1695, label %if.then.1697, label %if.end.1703

if.then.1697:                                     ; preds = %if.then.1692
  %628 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11698 = bitcast %union.rec* %628 to %struct.word_type*
  %ou11699 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11698, i32 0, i32 1
  %ofpos1700 = bitcast %union.FIRST_UNION* %ou11699 to %struct.FILE_POS*
  %629 = load i16, i16* %fnum, align 2
  %call1701 = call i8* @FileName(i16 zeroext %629)
  %630 = load i32, i32* %lnum, align 4
  %call1702 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 33, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.118, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1700, i8* %call1701, i32 %630)
  br label %if.end.1703

if.end.1703:                                      ; preds = %if.then.1697, %if.then.1692
  store i32 1, i32* %kc_top, align 4
  store i32 1, i32* %ks_top, align 4
  %631 = load i32, i32* %num_pairs, align 4
  %mul1704 = mul nsw i32 2, %631
  %conv1705 = sext i32 %mul1704 to i64
  %mul1706 = mul i64 %conv1705, 1
  %call1707 = call noalias i8* @malloc(i64 %mul1706) #4
  store i8* %call1707, i8** %kc, align 8
  %632 = load i32, i32* %num_pairs, align 4
  %mul1708 = mul nsw i32 2, %632
  %conv1709 = sext i32 %mul1708 to i64
  %mul1710 = mul i64 %conv1709, 1
  %call1711 = call noalias i8* @malloc(i64 %mul1710) #4
  store i8* %call1711, i8** %kv, align 8
  %633 = load i32, i32* %num_pairs, align 4
  %conv1712 = sext i32 %633 to i64
  %mul1713 = mul i64 %conv1712, 2
  %call1714 = call noalias i8* @malloc(i64 %mul1713) #4
  %634 = bitcast i8* %call1714 to i16*
  store i16* %634, i16** %ks, align 8
  store i8 0, i8* %last_ch1, align 1
  br label %while.cond.1715

while.cond.1715:                                  ; preds = %if.end.1900, %if.then.1790, %if.then.1778, %if.then.1764, %if.then.1750, %if.end.1703
  %arraydecay1716 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %635 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1717 = call i8* @fgets(i8* %arraydecay1716, i32 512, %struct._IO_FILE* %635)
  %arraydecay1718 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %cmp1719 = icmp eq i8* %call1717, %arraydecay1718
  br i1 %cmp1719, label %land.rhs.1721, label %land.end.1726

land.rhs.1721:                                    ; preds = %while.cond.1715
  %arraydecay1722 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call1723 = call i32 @StringBeginsWith(i8* %arraydecay1722, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i32 0, i32 0))
  %tobool1724 = icmp ne i32 %call1723, 0
  %lnot1725 = xor i1 %tobool1724, true
  br label %land.end.1726

land.end.1726:                                    ; preds = %land.rhs.1721, %while.cond.1715
  %636 = phi i1 [ false, %while.cond.1715 ], [ %lnot1725, %land.rhs.1721 ]
  br i1 %636, label %while.body.1727, label %while.end

while.body.1727:                                  ; preds = %land.end.1726
  %637 = load i32, i32* %lnum, align 4
  %inc1728 = add nsw i32 %637, 1
  store i32 %inc1728, i32* %lnum, align 4
  %arraydecay1729 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call1730 = call i32 @StringBeginsWith(i8* %arraydecay1729, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i32 0, i32 0))
  %tobool1731 = icmp ne i32 %call1730, 0
  br i1 %tobool1731, label %if.then.1732, label %if.end.1900

if.then.1732:                                     ; preds = %while.body.1727
  %arraydecay1733 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay1734 = getelementptr inbounds [30 x i8], [30 x i8]* %name1, i32 0, i32 0
  %arraydecay1735 = getelementptr inbounds [30 x i8], [30 x i8]* %name2, i32 0, i32 0
  %call1736 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay1733, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i32 0, i32 0), i8* %arraydecay1734, i8* %arraydecay1735, float* %fl_ksize) #4
  %cmp1737 = icmp ne i32 %call1736, 3
  br i1 %cmp1737, label %if.then.1739, label %if.end.1746

if.then.1739:                                     ; preds = %if.then.1732
  %638 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11740 = bitcast %union.rec* %638 to %struct.word_type*
  %ou11741 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11740, i32 0, i32 1
  %ofpos1742 = bitcast %union.FIRST_UNION* %ou11741 to %struct.FILE_POS*
  %639 = load i16, i16* %fnum, align 2
  %call1743 = call i8* @FileName(i16 zeroext %639)
  %640 = load i32, i32* %lnum, align 4
  %arraydecay1744 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call1745 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.122, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1742, i8* %call1743, i32 %640, i8* %arraydecay1744)
  br label %if.end.1746

if.end.1746:                                      ; preds = %if.then.1739, %if.then.1732
  %641 = load float, float* %fl_ksize, align 4
  %conv1747 = fptosi float %641 to i32
  store i32 %conv1747, i32* %ksize, align 4
  %642 = load i32, i32* %ksize, align 4
  %cmp1748 = icmp eq i32 %642, 0
  br i1 %cmp1748, label %if.then.1750, label %if.end.1751

if.then.1750:                                     ; preds = %if.end.1746
  br label %while.cond.1715

if.end.1751:                                      ; preds = %if.end.1746
  %arraydecay1752 = getelementptr inbounds [30 x i8], [30 x i8]* %name1, i32 0, i32 0
  %643 = load %union.rec*, %union.rec** %face, align 8
  %os11753 = bitcast %union.rec* %643 to %struct.word_type*
  %ou31754 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11753, i32 0, i32 3
  %os321755 = bitcast %union.THIRD_UNION* %ou31754 to %struct.anon.7*
  %ofont_mapping1756 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321755, i32 0, i32 3
  %bf.load1757 = load i8, i8* %ofont_mapping1756, align 4
  %bf.clear1758 = and i8 %bf.load1757, 127
  %bf.cast1759 = zext i8 %bf.clear1758 to i32
  %call1760 = call zeroext i8 @MapCharEncoding(i8* %arraydecay1752, i32 %bf.cast1759)
  store i8 %call1760, i8* %ch1, align 1
  %644 = load i8, i8* %ch1, align 1
  %conv1761 = zext i8 %644 to i32
  %cmp1762 = icmp eq i32 %conv1761, 0
  br i1 %cmp1762, label %if.then.1764, label %if.end.1765

if.then.1764:                                     ; preds = %if.end.1751
  br label %while.cond.1715

if.end.1765:                                      ; preds = %if.end.1751
  %arraydecay1766 = getelementptr inbounds [30 x i8], [30 x i8]* %name2, i32 0, i32 0
  %645 = load %union.rec*, %union.rec** %face, align 8
  %os11767 = bitcast %union.rec* %645 to %struct.word_type*
  %ou31768 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11767, i32 0, i32 3
  %os321769 = bitcast %union.THIRD_UNION* %ou31768 to %struct.anon.7*
  %ofont_mapping1770 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321769, i32 0, i32 3
  %bf.load1771 = load i8, i8* %ofont_mapping1770, align 4
  %bf.clear1772 = and i8 %bf.load1771, 127
  %bf.cast1773 = zext i8 %bf.clear1772 to i32
  %call1774 = call zeroext i8 @MapCharEncoding(i8* %arraydecay1766, i32 %bf.cast1773)
  store i8 %call1774, i8* %ch2, align 1
  %646 = load i8, i8* %ch2, align 1
  %conv1775 = zext i8 %646 to i32
  %cmp1776 = icmp eq i32 %conv1775, 0
  br i1 %cmp1776, label %if.then.1778, label %if.end.1779

if.then.1778:                                     ; preds = %if.end.1765
  br label %while.cond.1715

if.end.1779:                                      ; preds = %if.end.1765
  %647 = load i8, i8* %ch1, align 1
  %conv1780 = zext i8 %647 to i32
  %648 = load i8, i8* %last_ch1, align 1
  %conv1781 = zext i8 %648 to i32
  %cmp1782 = icmp ne i32 %conv1780, %conv1781
  br i1 %cmp1782, label %land.lhs.true.1784, label %if.end.1798

land.lhs.true.1784:                               ; preds = %if.end.1779
  %649 = load i8, i8* %ch1, align 1
  %idxprom1785 = zext i8 %649 to i64
  %650 = load i16*, i16** %kt, align 8
  %arrayidx1786 = getelementptr inbounds i16, i16* %650, i64 %idxprom1785
  %651 = load i16, i16* %arrayidx1786, align 2
  %conv1787 = zext i16 %651 to i32
  %cmp1788 = icmp ne i32 %conv1787, 0
  br i1 %cmp1788, label %if.then.1790, label %if.end.1798

if.then.1790:                                     ; preds = %land.lhs.true.1784
  %652 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11791 = bitcast %union.rec* %652 to %struct.word_type*
  %ou11792 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11791, i32 0, i32 1
  %ofpos1793 = bitcast %union.FIRST_UNION* %ou11792 to %struct.FILE_POS*
  %arraydecay1794 = getelementptr inbounds [30 x i8], [30 x i8]* %name1, i32 0, i32 0
  %arraydecay1795 = getelementptr inbounds [30 x i8], [30 x i8]* %name2, i32 0, i32 0
  %653 = load i16, i16* %fnum, align 2
  %call1796 = call i8* @FileName(i16 zeroext %653)
  %654 = load i32, i32* %lnum, align 4
  %call1797 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.123, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos1793, i8* %arraydecay1794, i8* %arraydecay1795, i8* %call1796, i32 %654)
  br label %while.cond.1715

if.end.1798:                                      ; preds = %land.lhs.true.1784, %if.end.1779
  %655 = load i8, i8* %ch1, align 1
  store i8 %655, i8* %last_ch1, align 1
  %656 = load i8, i8* %ch1, align 1
  %idxprom1799 = zext i8 %656 to i64
  %657 = load i16*, i16** %kt, align 8
  %arrayidx1800 = getelementptr inbounds i16, i16* %657, i64 %idxprom1799
  %658 = load i16, i16* %arrayidx1800, align 2
  %conv1801 = zext i16 %658 to i32
  %cmp1802 = icmp eq i32 %conv1801, 0
  br i1 %cmp1802, label %if.then.1804, label %if.end.1813

if.then.1804:                                     ; preds = %if.end.1798
  %659 = load i32, i32* %kc_top, align 4
  %conv1805 = trunc i32 %659 to i16
  %660 = load i8, i8* %ch1, align 1
  %idxprom1806 = zext i8 %660 to i64
  %661 = load i16*, i16** %kt, align 8
  %arrayidx1807 = getelementptr inbounds i16, i16* %661, i64 %idxprom1806
  store i16 %conv1805, i16* %arrayidx1807, align 2
  %662 = load i32, i32* %kc_top, align 4
  %idxprom1808 = sext i32 %662 to i64
  %663 = load i8*, i8** %kc, align 8
  %arrayidx1809 = getelementptr inbounds i8, i8* %663, i64 %idxprom1808
  store i8 0, i8* %arrayidx1809, align 1
  %664 = load i32, i32* %kc_top, align 4
  %idxprom1810 = sext i32 %664 to i64
  %665 = load i8*, i8** %kv, align 8
  %arrayidx1811 = getelementptr inbounds i8, i8* %665, i64 %idxprom1810
  store i8 0, i8* %arrayidx1811, align 1
  %666 = load i32, i32* %kc_top, align 4
  %inc1812 = add nsw i32 %666, 1
  store i32 %inc1812, i32* %kc_top, align 4
  br label %if.end.1813

if.end.1813:                                      ; preds = %if.then.1804, %if.end.1798
  store i32 1, i32* %pos, align 4
  br label %for.cond.1814

for.cond.1814:                                    ; preds = %for.inc.1825, %if.end.1813
  %667 = load i32, i32* %pos, align 4
  %668 = load i32, i32* %ks_top, align 4
  %cmp1815 = icmp slt i32 %667, %668
  br i1 %cmp1815, label %for.body.1817, label %for.end.1827

for.body.1817:                                    ; preds = %for.cond.1814
  %669 = load i32, i32* %pos, align 4
  %idxprom1818 = sext i32 %669 to i64
  %670 = load i16*, i16** %ks, align 8
  %arrayidx1819 = getelementptr inbounds i16, i16* %670, i64 %idxprom1818
  %671 = load i16, i16* %arrayidx1819, align 2
  %conv1820 = sext i16 %671 to i32
  %672 = load i32, i32* %ksize, align 4
  %cmp1821 = icmp eq i32 %conv1820, %672
  br i1 %cmp1821, label %if.then.1823, label %if.end.1824

if.then.1823:                                     ; preds = %for.body.1817
  br label %for.end.1827

if.end.1824:                                      ; preds = %for.body.1817
  br label %for.inc.1825

for.inc.1825:                                     ; preds = %if.end.1824
  %673 = load i32, i32* %pos, align 4
  %inc1826 = add nsw i32 %673, 1
  store i32 %inc1826, i32* %pos, align 4
  br label %for.cond.1814

for.end.1827:                                     ; preds = %if.then.1823, %for.cond.1814
  %674 = load i32, i32* %pos, align 4
  %675 = load i32, i32* %ks_top, align 4
  %cmp1828 = icmp eq i32 %674, %675
  br i1 %cmp1828, label %if.then.1830, label %if.end.1844

if.then.1830:                                     ; preds = %for.end.1827
  %676 = load i32, i32* %ks_top, align 4
  %677 = load i32, i32* %num_pairs, align 4
  %cmp1831 = icmp eq i32 %676, %677
  br i1 %cmp1831, label %if.then.1833, label %if.end.1839

if.then.1833:                                     ; preds = %if.then.1830
  %678 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11834 = bitcast %union.rec* %678 to %struct.word_type*
  %ou11835 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11834, i32 0, i32 1
  %ofpos1836 = bitcast %union.FIRST_UNION* %ou11835 to %struct.FILE_POS*
  %679 = load i16, i16* %fnum, align 2
  %call1837 = call i8* @FileName(i16 zeroext %679)
  %680 = load i32, i32* %lnum, align 4
  %call1838 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.124, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1836, i8* %call1837, i32 %680)
  br label %if.end.1839

if.end.1839:                                      ; preds = %if.then.1833, %if.then.1830
  %681 = load i32, i32* %ksize, align 4
  %conv1840 = trunc i32 %681 to i16
  %682 = load i32, i32* %pos, align 4
  %idxprom1841 = sext i32 %682 to i64
  %683 = load i16*, i16** %ks, align 8
  %arrayidx1842 = getelementptr inbounds i16, i16* %683, i64 %idxprom1841
  store i16 %conv1840, i16* %arrayidx1842, align 2
  %684 = load i32, i32* %ks_top, align 4
  %inc1843 = add nsw i32 %684, 1
  store i32 %inc1843, i32* %ks_top, align 4
  br label %if.end.1844

if.end.1844:                                      ; preds = %if.end.1839, %for.end.1827
  %685 = load i32, i32* %kc_top, align 4
  %sub = sub nsw i32 %685, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.1845

for.cond.1845:                                    ; preds = %for.inc.1869, %if.end.1844
  %686 = load i32, i32* %i, align 4
  %687 = load i8, i8* %ch1, align 1
  %idxprom1846 = zext i8 %687 to i64
  %688 = load i16*, i16** %kt, align 8
  %arrayidx1847 = getelementptr inbounds i16, i16* %688, i64 %idxprom1846
  %689 = load i16, i16* %arrayidx1847, align 2
  %conv1848 = zext i16 %689 to i32
  %cmp1849 = icmp sge i32 %686, %conv1848
  br i1 %cmp1849, label %land.rhs.1851, label %land.end.1858

land.rhs.1851:                                    ; preds = %for.cond.1845
  %690 = load i32, i32* %i, align 4
  %idxprom1852 = sext i32 %690 to i64
  %691 = load i8*, i8** %kc, align 8
  %arrayidx1853 = getelementptr inbounds i8, i8* %691, i64 %idxprom1852
  %692 = load i8, i8* %arrayidx1853, align 1
  %conv1854 = zext i8 %692 to i32
  %693 = load i8, i8* %ch2, align 1
  %conv1855 = zext i8 %693 to i32
  %cmp1856 = icmp slt i32 %conv1854, %conv1855
  br label %land.end.1858

land.end.1858:                                    ; preds = %land.rhs.1851, %for.cond.1845
  %694 = phi i1 [ false, %for.cond.1845 ], [ %cmp1856, %land.rhs.1851 ]
  br i1 %694, label %for.body.1859, label %for.end.1870

for.body.1859:                                    ; preds = %land.end.1858
  %695 = load i32, i32* %i, align 4
  %idxprom1860 = sext i32 %695 to i64
  %696 = load i8*, i8** %kc, align 8
  %arrayidx1861 = getelementptr inbounds i8, i8* %696, i64 %idxprom1860
  %697 = load i8, i8* %arrayidx1861, align 1
  %698 = load i32, i32* %i, align 4
  %add = add nsw i32 %698, 1
  %idxprom1862 = sext i32 %add to i64
  %699 = load i8*, i8** %kc, align 8
  %arrayidx1863 = getelementptr inbounds i8, i8* %699, i64 %idxprom1862
  store i8 %697, i8* %arrayidx1863, align 1
  %700 = load i32, i32* %i, align 4
  %idxprom1864 = sext i32 %700 to i64
  %701 = load i8*, i8** %kv, align 8
  %arrayidx1865 = getelementptr inbounds i8, i8* %701, i64 %idxprom1864
  %702 = load i8, i8* %arrayidx1865, align 1
  %703 = load i32, i32* %i, align 4
  %add1866 = add nsw i32 %703, 1
  %idxprom1867 = sext i32 %add1866 to i64
  %704 = load i8*, i8** %kv, align 8
  %arrayidx1868 = getelementptr inbounds i8, i8* %704, i64 %idxprom1867
  store i8 %702, i8* %arrayidx1868, align 1
  br label %for.inc.1869

for.inc.1869:                                     ; preds = %for.body.1859
  %705 = load i32, i32* %i, align 4
  %dec = add nsw i32 %705, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.1845

for.end.1870:                                     ; preds = %land.end.1858
  %706 = load i32, i32* %i, align 4
  %707 = load i8, i8* %ch1, align 1
  %idxprom1871 = zext i8 %707 to i64
  %708 = load i16*, i16** %kt, align 8
  %arrayidx1872 = getelementptr inbounds i16, i16* %708, i64 %idxprom1871
  %709 = load i16, i16* %arrayidx1872, align 2
  %conv1873 = zext i16 %709 to i32
  %cmp1874 = icmp sge i32 %706, %conv1873
  br i1 %cmp1874, label %land.lhs.true.1876, label %if.end.1891

land.lhs.true.1876:                               ; preds = %for.end.1870
  %710 = load i32, i32* %i, align 4
  %idxprom1877 = sext i32 %710 to i64
  %711 = load i8*, i8** %kc, align 8
  %arrayidx1878 = getelementptr inbounds i8, i8* %711, i64 %idxprom1877
  %712 = load i8, i8* %arrayidx1878, align 1
  %conv1879 = zext i8 %712 to i32
  %713 = load i8, i8* %ch2, align 1
  %conv1880 = zext i8 %713 to i32
  %cmp1881 = icmp eq i32 %conv1879, %conv1880
  br i1 %cmp1881, label %if.then.1883, label %if.end.1891

if.then.1883:                                     ; preds = %land.lhs.true.1876
  %714 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11884 = bitcast %union.rec* %714 to %struct.word_type*
  %ou11885 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11884, i32 0, i32 1
  %ofpos1886 = bitcast %union.FIRST_UNION* %ou11885 to %struct.FILE_POS*
  %arraydecay1887 = getelementptr inbounds [30 x i8], [30 x i8]* %name1, i32 0, i32 0
  %arraydecay1888 = getelementptr inbounds [30 x i8], [30 x i8]* %name2, i32 0, i32 0
  %715 = load i16, i16* %fnum, align 2
  %call1889 = call i8* @FileName(i16 zeroext %715)
  %716 = load i32, i32* %lnum, align 4
  %call1890 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.125, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1886, i8* %arraydecay1887, i8* %arraydecay1888, i8* %call1889, i32 %716)
  br label %if.end.1891

if.end.1891:                                      ; preds = %if.then.1883, %land.lhs.true.1876, %for.end.1870
  %717 = load i8, i8* %ch2, align 1
  %718 = load i32, i32* %i, align 4
  %add1892 = add nsw i32 %718, 1
  %idxprom1893 = sext i32 %add1892 to i64
  %719 = load i8*, i8** %kc, align 8
  %arrayidx1894 = getelementptr inbounds i8, i8* %719, i64 %idxprom1893
  store i8 %717, i8* %arrayidx1894, align 1
  %720 = load i32, i32* %pos, align 4
  %conv1895 = trunc i32 %720 to i8
  %721 = load i32, i32* %i, align 4
  %add1896 = add nsw i32 %721, 1
  %idxprom1897 = sext i32 %add1896 to i64
  %722 = load i8*, i8** %kv, align 8
  %arrayidx1898 = getelementptr inbounds i8, i8* %722, i64 %idxprom1897
  store i8 %conv1895, i8* %arrayidx1898, align 1
  %723 = load i32, i32* %kc_top, align 4
  %inc1899 = add nsw i32 %723, 1
  store i32 %inc1899, i32* %kc_top, align 4
  br label %if.end.1900

if.end.1900:                                      ; preds = %if.end.1891, %while.body.1727
  br label %while.cond.1715

while.end:                                        ; preds = %land.end.1726
  %724 = load i32, i32* %ks_top, align 4
  %conv1901 = trunc i32 %724 to i16
  %725 = load i16*, i16** %ks, align 8
  %arrayidx1902 = getelementptr inbounds i16, i16* %725, i64 0
  store i16 %conv1901, i16* %arrayidx1902, align 2
  br label %if.end.1903

if.end.1903:                                      ; preds = %while.end, %land.lhs.true.1687, %land.lhs.true.1685, %if.else.1682
  br label %if.end.1904

if.end.1904:                                      ; preds = %if.end.1903, %if.end.1681
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.1904, %if.end.1664, %if.end.1648, %if.end.1579, %if.end.1562
  br label %while.cond

while.end.1905:                                   ; preds = %land.end.1523
  %726 = load i8*, i8** %status, align 8
  %cmp1906 = icmp eq i8* %726, null
  br i1 %cmp1906, label %if.then.1908, label %if.end.1914

if.then.1908:                                     ; preds = %while.end.1905
  %727 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os11909 = bitcast %union.rec* %727 to %struct.word_type*
  %ou11910 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11909, i32 0, i32 1
  %ofpos1911 = bitcast %union.FIRST_UNION* %ou11910 to %struct.FILE_POS*
  %728 = load i16, i16* %fnum, align 2
  %call1912 = call i8* @FileName(i16 zeroext %728)
  %call1913 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.126, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1911, i8* %call1912)
  br label %if.end.1914

if.end.1914:                                      ; preds = %if.then.1908, %while.end.1905
  %729 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1915 = call i32 @fclose(%struct._IO_FILE* %729)
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %730 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %uses_font_metrics1916 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %730, i32 0, i32 8
  %731 = load i32, i32* %uses_font_metrics1916, align 4
  %tobool1917 = icmp ne i32 %731, 0
  br i1 %tobool1917, label %cond.true.1918, label %cond.false.1919

cond.true.1918:                                   ; preds = %if.end.1914
  %732 = load i32, i32* %xheight2, align 4
  br label %cond.end.1921

cond.false.1919:                                  ; preds = %if.end.1914
  %733 = load i32, i32* @PlainCharHeight, align 4
  %div1920 = sdiv i32 %733, 4
  br label %cond.end.1921

cond.end.1921:                                    ; preds = %cond.false.1919, %cond.true.1918
  %cond1922 = phi i32 [ %732, %cond.true.1918 ], [ %div1920, %cond.false.1919 ]
  %734 = load %union.rec*, %union.rec** %first_size, align 8
  %os11923 = bitcast %union.rec* %734 to %struct.word_type*
  %ou31924 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11923, i32 0, i32 3
  %os321925 = bitcast %union.THIRD_UNION* %ou31924 to %struct.anon.7*
  %ofont_xheight2 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321925, i32 0, i32 1
  store i32 %cond1922, i32* %ofont_xheight2, align 4
  %735 = load %union.rec*, %union.rec** %first_size, align 8
  %os11926 = bitcast %union.rec* %735 to %struct.word_type*
  %ou31927 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11926, i32 0, i32 3
  %os321928 = bitcast %union.THIRD_UNION* %ou31927 to %struct.anon.7*
  %ofont_mapping1929 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321928, i32 0, i32 3
  %bf.load1930 = load i8, i8* %ofont_mapping1929, align 4
  %bf.clear1931 = and i8 %bf.load1930, 127
  %bf.cast1932 = zext i8 %bf.clear1931 to i32
  %call1933 = call zeroext i8 @MapCharEncoding(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0), i32 %bf.cast1932)
  store i8 %call1933, i8* %ch, align 1
  %736 = load i8, i8* %ch, align 1
  %conv1934 = zext i8 %736 to i32
  %cmp1935 = icmp eq i32 %conv1934, 0
  br i1 %cmp1935, label %cond.true.1937, label %cond.false.1938

cond.true.1937:                                   ; preds = %cond.end.1921
  br label %cond.end.1942

cond.false.1938:                                  ; preds = %cond.end.1921
  %737 = load i8, i8* %ch, align 1
  %idxprom1939 = zext i8 %737 to i64
  %738 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx1940 = getelementptr inbounds %struct.metrics, %struct.metrics* %738, i64 %idxprom1939
  %right = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx1940, i32 0, i32 3
  %739 = load i16, i16* %right, align 2
  %conv1941 = sext i16 %739 to i32
  br label %cond.end.1942

cond.end.1942:                                    ; preds = %cond.false.1938, %cond.true.1937
  %cond1943 = phi i32 [ 0, %cond.true.1937 ], [ %conv1941, %cond.false.1938 ]
  %740 = load %union.rec*, %union.rec** %first_size, align 8
  %os11944 = bitcast %union.rec* %740 to %struct.word_type*
  %ou31945 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11944, i32 0, i32 3
  %os321946 = bitcast %union.THIRD_UNION* %ou31945 to %struct.anon.7*
  %ofont_spacewidth = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os321946, i32 0, i32 2
  store i32 %cond1943, i32* %ofont_spacewidth, align 4
  %741 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %cmp1947 = icmp ne %union.rec* %741, null
  br i1 %cmp1947, label %if.then.1949, label %if.end.1998

if.then.1949:                                     ; preds = %cond.end.1942
  %742 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %os11950 = bitcast %union.rec* %742 to %struct.word_type*
  %ostring1951 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11950, i32 0, i32 4
  %arraydecay1952 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring1951, i32 0, i32 0
  %743 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %os11953 = bitcast %union.rec* %743 to %struct.word_type*
  %ou11954 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11953, i32 0, i32 1
  %ofpos1955 = bitcast %union.FIRST_UNION* %ou11954 to %struct.FILE_POS*
  %call1956 = call zeroext i16 @DefineFile(i8* %arraydecay1952, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), %struct.FILE_POS* %ofpos1955, i32 5, i32 5)
  store i16 %call1956, i16* %extra_fnum, align 2
  %744 = load i16, i16* %extra_fnum, align 2
  %call1957 = call %struct._IO_FILE* @OpenFile(i16 zeroext %744, i32 0, i32 0)
  store %struct._IO_FILE* %call1957, %struct._IO_FILE** %extra_fp, align 8
  %745 = load %struct._IO_FILE*, %struct._IO_FILE** %extra_fp, align 8
  %cmp1958 = icmp eq %struct._IO_FILE* %745, null
  br i1 %cmp1958, label %if.then.1960, label %if.end.1966

if.then.1960:                                     ; preds = %if.then.1949
  %746 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %os11961 = bitcast %union.rec* %746 to %struct.word_type*
  %ou11962 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11961, i32 0, i32 1
  %ofpos1963 = bitcast %union.FIRST_UNION* %ou11962 to %struct.FILE_POS*
  %747 = load i16, i16* %extra_fnum, align 2
  %call1964 = call i8* @FileName(i16 zeroext %747)
  %call1965 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.128, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos1963, i8* %call1964)
  br label %if.end.1966

if.end.1966:                                      ; preds = %if.then.1960, %if.then.1949
  store i32 0, i32* %lnum, align 4
  br label %while.cond.1967

while.cond.1967:                                  ; preds = %if.end.1995, %if.end.1966
  %arraydecay1968 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %748 = load %struct._IO_FILE*, %struct._IO_FILE** %extra_fp, align 8
  %call1969 = call i8* @fgets(i8* %arraydecay1968, i32 512, %struct._IO_FILE* %748)
  %cmp1970 = icmp ne i8* %call1969, null
  br i1 %cmp1970, label %while.body.1972, label %while.end.1996

while.body.1972:                                  ; preds = %while.cond.1967
  %749 = load i32, i32* %lnum, align 4
  %inc1973 = add nsw i32 %749, 1
  store i32 %inc1973, i32* %lnum, align 4
  %arraydecay1974 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay1975 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1976 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay1974, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* %arraydecay1975) #4
  %arrayidx1977 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i64 0
  %750 = load i8, i8* %arrayidx1977, align 1
  %conv1978 = zext i8 %750 to i32
  %cmp1979 = icmp eq i32 %conv1978, 83
  br i1 %cmp1979, label %if.then.1981, label %if.end.1995

if.then.1981:                                     ; preds = %while.body.1972
  %arraydecay1982 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1983 = call i32 @strcmp(i8* %arraydecay1982, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.129, i32 0, i32 0)) #5
  %cmp1984 = icmp eq i32 %call1983, 0
  br i1 %cmp1984, label %if.then.1986, label %if.else.1987

if.then.1986:                                     ; preds = %if.then.1981
  %751 = load %union.rec*, %union.rec** %face, align 8
  %752 = load i32, i32* %fixed_pitch, align 4
  %753 = load i32, i32* %xheight2, align 4
  %754 = load i8*, i8** %lig, align 8
  %755 = load i16, i16* %extra_fnum, align 2
  %756 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %757 = load %struct._IO_FILE*, %struct._IO_FILE** %extra_fp, align 8
  call void @ReadCharMetrics(%union.rec* %751, i32 %752, i32 %753, i8* %754, i32* %ligtop, i16 zeroext %755, %struct.metrics* %756, i32* %lnum, %struct._IO_FILE* %757)
  br label %if.end.1994

if.else.1987:                                     ; preds = %if.then.1981
  %arraydecay1988 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call1989 = call i32 @strcmp(i8* %arraydecay1988, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.130, i32 0, i32 0)) #5
  %cmp1990 = icmp eq i32 %call1989, 0
  br i1 %cmp1990, label %if.then.1992, label %if.end.1993

if.then.1992:                                     ; preds = %if.else.1987
  %758 = load %union.rec*, %union.rec** %face, align 8
  %759 = load %union.rec*, %union.rec** %Extrafilename, align 8
  %760 = load i16, i16* %extra_fnum, align 2
  %761 = load i16*, i16** %composite, align 8
  %762 = load %struct.composite_rec*, %struct.composite_rec** %cmp, align 8
  %763 = load %struct._IO_FILE*, %struct._IO_FILE** %extra_fp, align 8
  call void @ReadCompositeMetrics(%union.rec* %758, %union.rec* %759, i16 zeroext %760, i32* %lnum, i16* %761, %struct.composite_rec* %762, i32* %cmptop, %struct._IO_FILE* %763)
  br label %if.end.1993

if.end.1993:                                      ; preds = %if.then.1992, %if.else.1987
  br label %if.end.1994

if.end.1994:                                      ; preds = %if.end.1993, %if.then.1986
  br label %if.end.1995

if.end.1995:                                      ; preds = %if.end.1994, %while.body.1972
  br label %while.cond.1967

while.end.1996:                                   ; preds = %while.cond.1967
  %764 = load %struct._IO_FILE*, %struct._IO_FILE** %extra_fp, align 8
  %call1997 = call i32 @fclose(%struct._IO_FILE* %764)
  store %struct._IO_FILE* null, %struct._IO_FILE** %extra_fp, align 8
  br label %if.end.1998

if.end.1998:                                      ; preds = %while.end.1996, %cond.end.1942
  %765 = load %union.rec*, %union.rec** %first_size, align 8
  %766 = load i32, i32* @font_count, align 4
  %idxprom1999 = zext i32 %766 to i64
  %767 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx2000 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %767, i64 %idxprom1999
  %font_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx2000, i32 0, i32 5
  store %union.rec* %765, %union.rec** %font_table, align 8
  %768 = load %union.rec*, %union.rec** %face, align 8
  %769 = load i32, i32* @font_count, align 4
  %idxprom2001 = zext i32 %769 to i64
  %770 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx2002 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %770, i64 %idxprom2001
  %original_face = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx2002, i32 0, i32 6
  store %union.rec* %768, %union.rec** %original_face, align 8
  %771 = load i32, i32* %xheight2, align 4
  %772 = load i32, i32* %under_pos, align 4
  %sub2003 = sub nsw i32 %771, %772
  %conv2004 = trunc i32 %sub2003 to i16
  %773 = load i32, i32* @font_count, align 4
  %idxprom2005 = zext i32 %773 to i64
  %774 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx2006 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %774, i64 %idxprom2005
  %underline_pos = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx2006, i32 0, i32 7
  store i16 %conv2004, i16* %underline_pos, align 2
  %775 = load i32, i32* %under_thick, align 4
  %conv2007 = trunc i32 %775 to i16
  %776 = load i32, i32* @font_count, align 4
  %idxprom2008 = zext i32 %776 to i64
  %777 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx2009 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %777, i64 %idxprom2008
  %underline_thick = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx2009, i32 0, i32 8
  store i16 %conv2007, i16* %underline_thick, align 2
  %778 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %779 = load i32, i32* @font_count, align 4
  %idxprom2010 = zext i32 %779 to i64
  %780 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx2011 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %780, i64 %idxprom2010
  %size_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx2011, i32 0, i32 0
  store %struct.metrics* %778, %struct.metrics** %size_table, align 8
  %781 = load i8*, i8** %lig, align 8
  %782 = load i32, i32* @font_count, align 4
  %idxprom2012 = zext i32 %782 to i64
  %783 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx2013 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %783, i64 %idxprom2012
  %lig_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx2013, i32 0, i32 1
  store i8* %781, i8** %lig_table, align 8
  %784 = load i16*, i16** %composite, align 8
  %785 = load i32, i32* @font_count, align 4
  %idxprom2014 = zext i32 %785 to i64
  %786 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx2015 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %786, i64 %idxprom2014
  %composite2016 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx2015, i32 0, i32 2
  store i16* %784, i16** %composite2016, align 8
  %787 = load %struct.composite_rec*, %struct.composite_rec** %cmp, align 8
  %788 = load i32, i32* @font_count, align 4
  %idxprom2017 = zext i32 %788 to i64
  %789 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx2018 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %789, i64 %idxprom2017
  %cmp_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx2018, i32 0, i32 3
  store %struct.composite_rec* %787, %struct.composite_rec** %cmp_table, align 8
  %790 = load i32, i32* %cmptop, align 4
  %791 = load i32, i32* @font_count, align 4
  %idxprom2019 = zext i32 %791 to i64
  %792 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx2020 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %792, i64 %idxprom2019
  %cmp_top = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx2020, i32 0, i32 4
  store i32 %790, i32* %cmp_top, align 4
  %793 = load i16*, i16** %kt, align 8
  %794 = load i32, i32* @font_count, align 4
  %idxprom2021 = zext i32 %794 to i64
  %795 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx2022 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %795, i64 %idxprom2021
  %kern_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx2022, i32 0, i32 9
  store i16* %793, i16** %kern_table, align 8
  %796 = load i8*, i8** %kc, align 8
  %797 = load i32, i32* @font_count, align 4
  %idxprom2023 = zext i32 %797 to i64
  %798 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx2024 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %798, i64 %idxprom2023
  %kern_chars = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx2024, i32 0, i32 10
  store i8* %796, i8** %kern_chars, align 8
  %799 = load i8*, i8** %kv, align 8
  %800 = load i32, i32* @font_count, align 4
  %idxprom2025 = zext i32 %800 to i64
  %801 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx2026 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %801, i64 %idxprom2025
  %kern_value = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx2026, i32 0, i32 11
  store i8* %799, i8** %kern_value, align 8
  %802 = load i16*, i16** %ks, align 8
  %803 = load i32, i32* @font_count, align 4
  %idxprom2027 = zext i32 %803 to i64
  %804 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx2028 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %804, i64 %idxprom2027
  %kern_sizes = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx2028, i32 0, i32 12
  store i16* %802, i16** %kern_sizes, align 8
  %805 = load %union.rec*, %union.rec** %face, align 8
  store %union.rec* %805, %union.rec** %retval
  br label %return

return:                                           ; preds = %if.end.1998, %if.then.650, %if.then.486, %if.then.33
  %806 = load %union.rec*, %union.rec** %retval
  ret %union.rec* %806
}

declare void @GetGap(%union.rec*, %struct.STYLE*, %struct.GAP*, i32*) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @FontWordSize(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  %lig = alloca i8*, align 8
  %unacc = alloca i8*, align 8
  %acc = alloca i8*, align 8
  %tmp = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  %m = alloca i32, align 4
  %r = alloca i32, align 4
  %u = alloca i32, align 4
  %d = alloca i32, align 4
  %ksize = alloca i32, align 4
  %fnt = alloca %struct.metrics*, align 8
  %ua_ch1 = alloca i32, align 4
  %ua_ch2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %kc = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os19 = bitcast %union.rec* %2 to %struct.word_type*
  %ou110 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 1
  %os1111 = bitcast %union.FIRST_UNION* %ou110 to %struct.anon*
  %otype12 = getelementptr inbounds %struct.anon, %struct.anon* %os1111, i32 0, i32 0
  %3 = load i8, i8* %otype12, align 1
  %conv13 = zext i8 %3 to i32
  %cmp14 = icmp eq i32 %conv13, 12
  br i1 %cmp14, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os116 = bitcast %union.rec* %5 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %arraydecay17 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %arraydecay17, i8** %q, align 8
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then.18, label %if.else.383

if.then.18:                                       ; preds = %if.end
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %os119 = bitcast %union.rec* %8 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 2
  %os22 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.1*
  %9 = bitcast %struct.anon.1* %os22 to i32*
  %bf.load = load i32, i32* %9, align 4
  %bf.clear = and i32 %bf.load, 4095
  %cmp20 = icmp slt i32 %bf.clear, 1
  br i1 %cmp20, label %if.then.30, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %if.then.18
  %10 = load %union.rec*, %union.rec** %x.addr, align 8
  %os123 = bitcast %union.rec* %10 to %struct.word_type*
  %ou224 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 2
  %os2225 = bitcast %union.SECOND_UNION* %ou224 to %struct.anon.1*
  %11 = bitcast %struct.anon.1* %os2225 to i32*
  %bf.load26 = load i32, i32* %11, align 4
  %bf.clear27 = and i32 %bf.load26, 4095
  %12 = load i32, i32* @font_count, align 4
  %cmp28 = icmp ugt i32 %bf.clear27, %12
  br i1 %cmp28, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %lor.lhs.false.22, %if.then.18
  %13 = load %union.rec*, %union.rec** %x.addr, align 8
  %os131 = bitcast %union.rec* %13 to %struct.word_type*
  %ou132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou132 to %struct.FILE_POS*
  %14 = load %union.rec*, %union.rec** %x.addr, align 8
  %os133 = bitcast %union.rec* %14 to %struct.word_type*
  %ostring34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 4
  %arraydecay35 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring34, i32 0, i32 0
  %call36 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* %arraydecay35)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.30, %lor.lhs.false.22
  %15 = load %union.rec*, %union.rec** %x.addr, align 8
  %os138 = bitcast %union.rec* %15 to %struct.word_type*
  %ou239 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 2
  %os2240 = bitcast %union.SECOND_UNION* %ou239 to %struct.anon.1*
  %16 = bitcast %struct.anon.1* %os2240 to i32*
  %bf.load41 = load i32, i32* %16, align 4
  %bf.lshr = lshr i32 %bf.load41, 12
  %bf.clear42 = and i32 %bf.lshr, 1023
  %cmp43 = icmp eq i32 %bf.clear42, 0
  br i1 %cmp43, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.end.37
  %17 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %colour_avail = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %17, i32 0, i32 9
  %18 = load i32, i32* %colour_avail, align 4
  %tobool45 = icmp ne i32 %18, 0
  br i1 %tobool45, label %if.then.46, label %if.end.54

if.then.46:                                       ; preds = %land.lhs.true
  %19 = load %union.rec*, %union.rec** %x.addr, align 8
  %os147 = bitcast %union.rec* %19 to %struct.word_type*
  %ou148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 1
  %ofpos49 = bitcast %union.FIRST_UNION* %ou148 to %struct.FILE_POS*
  %20 = load %union.rec*, %union.rec** %x.addr, align 8
  %os150 = bitcast %union.rec* %20 to %struct.word_type*
  %ostring51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 4
  %arraydecay52 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring51, i32 0, i32 0
  %call53 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos49, i8* %arraydecay52)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.46, %land.lhs.true, %if.end.37
  %21 = load %union.rec*, %union.rec** %x.addr, align 8
  %os155 = bitcast %union.rec* %21 to %struct.word_type*
  %ou256 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 2
  %os2257 = bitcast %union.SECOND_UNION* %ou256 to %struct.anon.1*
  %22 = bitcast %struct.anon.1* %os2257 to i32*
  %bf.load58 = load i32, i32* %22, align 4
  %bf.lshr59 = lshr i32 %bf.load58, 23
  %bf.clear60 = and i32 %bf.lshr59, 63
  %cmp61 = icmp eq i32 %bf.clear60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.71

if.then.63:                                       ; preds = %if.end.54
  %23 = load %union.rec*, %union.rec** %x.addr, align 8
  %os164 = bitcast %union.rec* %23 to %struct.word_type*
  %ou165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 1
  %ofpos66 = bitcast %union.FIRST_UNION* %ou165 to %struct.FILE_POS*
  %24 = load %union.rec*, %union.rec** %x.addr, align 8
  %os167 = bitcast %union.rec* %24 to %struct.word_type*
  %ostring68 = getelementptr inbounds %struct.word_type, %struct.word_type* %os167, i32 0, i32 4
  %arraydecay69 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring68, i32 0, i32 0
  %call70 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos66, i8* %arraydecay69)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.63, %if.end.54
  %25 = load %union.rec*, %union.rec** %x.addr, align 8
  %os172 = bitcast %union.rec* %25 to %struct.word_type*
  %ou273 = getelementptr inbounds %struct.word_type, %struct.word_type* %os172, i32 0, i32 2
  %os2274 = bitcast %union.SECOND_UNION* %ou273 to %struct.anon.1*
  %26 = bitcast %struct.anon.1* %os2274 to i32*
  %bf.load75 = load i32, i32* %26, align 4
  %bf.clear76 = and i32 %bf.load75, 4095
  %idxprom = zext i32 %bf.clear76 to i64
  %27 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx = getelementptr inbounds %struct.font_rec, %struct.font_rec* %27, i64 %idxprom
  %size_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx, i32 0, i32 0
  %28 = load %struct.metrics*, %struct.metrics** %size_table, align 8
  store %struct.metrics* %28, %struct.metrics** %fnt, align 8
  %29 = load %union.rec*, %union.rec** %x.addr, align 8
  %os177 = bitcast %union.rec* %29 to %struct.word_type*
  %ou278 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 2
  %os2279 = bitcast %union.SECOND_UNION* %ou278 to %struct.anon.1*
  %30 = bitcast %struct.anon.1* %os2279 to i32*
  %bf.load80 = load i32, i32* %30, align 4
  %bf.clear81 = and i32 %bf.load80, 4095
  %idxprom82 = zext i32 %bf.clear81 to i64
  %31 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx83 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %31, i64 %idxprom82
  %lig_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx83, i32 0, i32 1
  %32 = load i8*, i8** %lig_table, align 8
  store i8* %32, i8** %lig, align 8
  %33 = load %union.rec*, %union.rec** %x.addr, align 8
  %os184 = bitcast %union.rec* %33 to %struct.word_type*
  %ou285 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 2
  %os2286 = bitcast %union.SECOND_UNION* %ou285 to %struct.anon.1*
  %34 = bitcast %struct.anon.1* %os2286 to i32*
  %bf.load87 = load i32, i32* %34, align 4
  %bf.clear88 = and i32 %bf.load87, 4095
  %idxprom89 = zext i32 %bf.clear88 to i64
  %35 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx90 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %35, i64 %idxprom89
  %font_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx90, i32 0, i32 5
  %36 = load %union.rec*, %union.rec** %font_table, align 8
  %os191 = bitcast %union.rec* %36 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os191, i32 0, i32 3
  %os32 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.7*
  %ofont_mapping = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32, i32 0, i32 3
  %bf.load92 = load i8, i8* %ofont_mapping, align 4
  %bf.clear93 = and i8 %bf.load92, 127
  %bf.cast = zext i8 %bf.clear93 to i32
  store i32 %bf.cast, i32* %m, align 4
  %37 = load i32, i32* %m, align 4
  %idxprom94 = zext i32 %37 to i64
  %arrayidx95 = getelementptr inbounds [0 x %struct.mapvec*], [0 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom94
  %38 = load %struct.mapvec*, %struct.mapvec** %arrayidx95, align 8
  %map = getelementptr inbounds %struct.mapvec, %struct.mapvec* %38, i32 0, i32 7
  %arrayidx96 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %map, i32 0, i64 2
  %arraydecay97 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx96, i32 0, i32 0
  store i8* %arraydecay97, i8** %unacc, align 8
  %39 = load i32, i32* %m, align 4
  %idxprom98 = zext i32 %39 to i64
  %arrayidx99 = getelementptr inbounds [0 x %struct.mapvec*], [0 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom98
  %40 = load %struct.mapvec*, %struct.mapvec** %arrayidx99, align 8
  %map100 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %40, i32 0, i32 7
  %arrayidx101 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %map100, i32 0, i64 3
  %arraydecay102 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx101, i32 0, i32 0
  store i8* %arraydecay102, i8** %acc, align 8
  store i32 0, i32* %r, align 4
  store i32 0, i32* %u, align 4
  store i32 0, i32* %d, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.71
  %41 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %q, align 8
  store i8 %42, i8* %43, align 1
  %idxprom103 = zext i8 %42 to i64
  %44 = load i8*, i8** %lig, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %44, i64 %idxprom103
  %45 = load i8, i8* %arrayidx104, align 1
  %tobool105 = icmp ne i8 %45, 0
  br i1 %tobool105, label %if.then.106, label %if.end.252

if.then.106:                                      ; preds = %do.body
  %46 = load i8*, i8** %q, align 8
  %47 = load i8, i8* %46, align 1
  %idxprom107 = zext i8 %47 to i64
  %48 = load i8*, i8** %lig, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %48, i64 %idxprom107
  %49 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %49 to i32
  %cmp110 = icmp eq i32 %conv109, 1
  br i1 %cmp110, label %if.then.112, label %if.else.208

if.then.112:                                      ; preds = %if.then.106
  %50 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1113 = bitcast %union.rec* %50 to %struct.word_type*
  %ou1114 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1113, i32 0, i32 1
  %ofpos115 = bitcast %union.FIRST_UNION* %ou1114 to %struct.FILE_POS*
  %call116 = call %union.rec* @MakeWord(i32 12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), %struct.FILE_POS* %ofpos115)
  store %union.rec* %call116, %union.rec** %tmp, align 8
  %51 = load i8*, i8** %q, align 8
  %52 = load i8, i8* %51, align 1
  %53 = load %union.rec*, %union.rec** %tmp, align 8
  %os1117 = bitcast %union.rec* %53 to %struct.word_type*
  %ostring118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 4
  %arrayidx119 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring118, i32 0, i64 0
  store i8 %52, i8* %arrayidx119, align 1
  %54 = load i8*, i8** %q, align 8
  %55 = load i8, i8* %54, align 1
  %idxprom120 = zext i8 %55 to i64
  %56 = load i8*, i8** %unacc, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %56, i64 %idxprom120
  %57 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %57 to i32
  %58 = load i8*, i8** %q, align 8
  %59 = load i8, i8* %58, align 1
  %conv123 = zext i8 %59 to i32
  %cmp124 = icmp ne i32 %conv122, %conv123
  br i1 %cmp124, label %if.then.126, label %if.else

if.then.126:                                      ; preds = %if.then.112
  %60 = load i8*, i8** %q, align 8
  %61 = load i8, i8* %60, align 1
  %idxprom127 = zext i8 %61 to i64
  %62 = load i8*, i8** %unacc, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %62, i64 %idxprom127
  %63 = load i8, i8* %arrayidx128, align 1
  %idxprom129 = zext i8 %63 to i64
  %64 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx130 = getelementptr inbounds %struct.metrics, %struct.metrics* %64, i64 %idxprom129
  %up = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx130, i32 0, i32 0
  %65 = load i16, i16* %up, align 2
  %66 = load i8*, i8** %q, align 8
  %67 = load i8, i8* %66, align 1
  %idxprom131 = zext i8 %67 to i64
  %68 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx132 = getelementptr inbounds %struct.metrics, %struct.metrics* %68, i64 %idxprom131
  %up133 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx132, i32 0, i32 0
  store i16 %65, i16* %up133, align 2
  %69 = load i8*, i8** %q, align 8
  %70 = load i8, i8* %69, align 1
  %idxprom134 = zext i8 %70 to i64
  %71 = load i8*, i8** %unacc, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %71, i64 %idxprom134
  %72 = load i8, i8* %arrayidx135, align 1
  %idxprom136 = zext i8 %72 to i64
  %73 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx137 = getelementptr inbounds %struct.metrics, %struct.metrics* %73, i64 %idxprom136
  %down = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx137, i32 0, i32 1
  %74 = load i16, i16* %down, align 2
  %75 = load i8*, i8** %q, align 8
  %76 = load i8, i8* %75, align 1
  %idxprom138 = zext i8 %76 to i64
  %77 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx139 = getelementptr inbounds %struct.metrics, %struct.metrics* %77, i64 %idxprom138
  %down140 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx139, i32 0, i32 1
  store i16 %74, i16* %down140, align 2
  %78 = load i8*, i8** %q, align 8
  %79 = load i8, i8* %78, align 1
  %idxprom141 = zext i8 %79 to i64
  %80 = load i8*, i8** %unacc, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %80, i64 %idxprom141
  %81 = load i8, i8* %arrayidx142, align 1
  %idxprom143 = zext i8 %81 to i64
  %82 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx144 = getelementptr inbounds %struct.metrics, %struct.metrics* %82, i64 %idxprom143
  %left = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx144, i32 0, i32 2
  %83 = load i16, i16* %left, align 2
  %84 = load i8*, i8** %q, align 8
  %85 = load i8, i8* %84, align 1
  %idxprom145 = zext i8 %85 to i64
  %86 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx146 = getelementptr inbounds %struct.metrics, %struct.metrics* %86, i64 %idxprom145
  %left147 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx146, i32 0, i32 2
  store i16 %83, i16* %left147, align 2
  %87 = load i8*, i8** %q, align 8
  %88 = load i8, i8* %87, align 1
  %idxprom148 = zext i8 %88 to i64
  %89 = load i8*, i8** %unacc, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %89, i64 %idxprom148
  %90 = load i8, i8* %arrayidx149, align 1
  %idxprom150 = zext i8 %90 to i64
  %91 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx151 = getelementptr inbounds %struct.metrics, %struct.metrics* %91, i64 %idxprom150
  %right = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx151, i32 0, i32 3
  %92 = load i16, i16* %right, align 2
  %93 = load i8*, i8** %q, align 8
  %94 = load i8, i8* %93, align 1
  %idxprom152 = zext i8 %94 to i64
  %95 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx153 = getelementptr inbounds %struct.metrics, %struct.metrics* %95, i64 %idxprom152
  %right154 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx153, i32 0, i32 3
  store i16 %92, i16* %right154, align 2
  %96 = load i8*, i8** %q, align 8
  %97 = load i8, i8* %96, align 1
  %idxprom155 = zext i8 %97 to i64
  %98 = load i8*, i8** %unacc, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %98, i64 %idxprom155
  %99 = load i8, i8* %arrayidx156, align 1
  %idxprom157 = zext i8 %99 to i64
  %100 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx158 = getelementptr inbounds %struct.metrics, %struct.metrics* %100, i64 %idxprom157
  %last_adjust = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx158, i32 0, i32 4
  %101 = load i16, i16* %last_adjust, align 2
  %102 = load i8*, i8** %q, align 8
  %103 = load i8, i8* %102, align 1
  %idxprom159 = zext i8 %103 to i64
  %104 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx160 = getelementptr inbounds %struct.metrics, %struct.metrics* %104, i64 %idxprom159
  %last_adjust161 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx160, i32 0, i32 4
  store i16 %101, i16* %last_adjust161, align 2
  %105 = load i8*, i8** %q, align 8
  %106 = load i8, i8* %105, align 1
  %idxprom162 = zext i8 %106 to i64
  %107 = load i8*, i8** %lig, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %107, i64 %idxprom162
  store i8 0, i8* %arrayidx163, align 1
  br label %if.end.175

if.else:                                          ; preds = %if.then.112
  %108 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1164 = bitcast %union.rec* %108 to %struct.word_type*
  %ou1165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1164, i32 0, i32 1
  %ofpos166 = bitcast %union.FIRST_UNION* %ou1165 to %struct.FILE_POS*
  %109 = load %union.rec*, %union.rec** %tmp, align 8
  %call167 = call i8* @StringQuotedWord(%union.rec* %109)
  %110 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1168 = bitcast %union.rec* %110 to %struct.word_type*
  %ou2169 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1168, i32 0, i32 2
  %os22170 = bitcast %union.SECOND_UNION* %ou2169 to %struct.anon.1*
  %111 = bitcast %struct.anon.1* %os22170 to i32*
  %bf.load171 = load i32, i32* %111, align 4
  %bf.clear172 = and i32 %bf.load171, 4095
  %call173 = call i8* @FontFamilyAndFace(i32 %bf.clear172)
  %call174 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.45, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos166, i8* %call167, i8* %call173)
  %112 = load i8*, i8** %q, align 8
  store i8 32, i8* %112, align 1
  %113 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %113, i64 -1
  store i8 32, i8* %add.ptr, align 1
  br label %if.end.175

if.end.175:                                       ; preds = %if.else, %if.then.126
  %114 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %114, %union.rec** @zz_hold, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %115, %union.rec** @zz_hold, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1176 = bitcast %union.rec* %116 to %struct.word_type*
  %ou1177 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1176, i32 0, i32 1
  %os11178 = bitcast %union.FIRST_UNION* %ou1177 to %struct.anon*
  %otype179 = getelementptr inbounds %struct.anon, %struct.anon* %os11178, i32 0, i32 0
  %117 = load i8, i8* %otype179, align 1
  %conv180 = zext i8 %117 to i32
  %cmp181 = icmp eq i32 %conv180, 11
  br i1 %cmp181, label %cond.true, label %lor.lhs.false.183

lor.lhs.false.183:                                ; preds = %if.end.175
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1184 = bitcast %union.rec* %118 to %struct.word_type*
  %ou1185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1184, i32 0, i32 1
  %os11186 = bitcast %union.FIRST_UNION* %ou1185 to %struct.anon*
  %otype187 = getelementptr inbounds %struct.anon, %struct.anon* %os11186, i32 0, i32 0
  %119 = load i8, i8* %otype187, align 1
  %conv188 = zext i8 %119 to i32
  %cmp189 = icmp eq i32 %conv188, 12
  br i1 %cmp189, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.183, %if.end.175
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1191 = bitcast %union.rec* %120 to %struct.word_type*
  %ou1192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1191, i32 0, i32 1
  %os11193 = bitcast %union.FIRST_UNION* %ou1192 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os11193, i32 0, i32 1
  %121 = load i8, i8* %orec_size, align 1
  %conv194 = zext i8 %121 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.183
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1195 = bitcast %union.rec* %122 to %struct.word_type*
  %ou1196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1195, i32 0, i32 1
  %os11197 = bitcast %union.FIRST_UNION* %ou1196 to %struct.anon*
  %otype198 = getelementptr inbounds %struct.anon, %struct.anon* %os11197, i32 0, i32 0
  %123 = load i8, i8* %otype198, align 1
  %idxprom199 = zext i8 %123 to i64
  %arrayidx200 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom199
  %124 = load i8, i8* %arrayidx200, align 1
  %conv201 = zext i8 %124 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv194, %cond.true ], [ %conv201, %cond.false ]
  store i32 %cond, i32* @zz_size, align 4
  %125 = load i32, i32* @zz_size, align 4
  %idxprom202 = sext i32 %125 to i64
  %arrayidx203 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom202
  %126 = load %union.rec*, %union.rec** %arrayidx203, align 8
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1204 = bitcast %union.rec* %127 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1204, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx205, i32 0, i32 0
  store %union.rec* %126, %union.rec** %opred, align 8
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %129 = load i32, i32* @zz_size, align 4
  %idxprom206 = sext i32 %129 to i64
  %arrayidx207 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom206
  store %union.rec* %128, %union.rec** %arrayidx207, align 8
  br label %if.end.251

if.else.208:                                      ; preds = %if.then.106
  %130 = load i8*, i8** %p, align 8
  %add.ptr209 = getelementptr inbounds i8, i8* %130, i64 -1
  %131 = load i8, i8* %add.ptr209, align 1
  %idxprom210 = zext i8 %131 to i64
  %132 = load i8*, i8** %lig, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %132, i64 %idxprom210
  %133 = load i8, i8* %arrayidx211, align 1
  %conv212 = zext i8 %133 to i32
  %add = add nsw i32 %conv212, 256
  %idxprom213 = sext i32 %add to i64
  %134 = load i8*, i8** %lig, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %134, i64 %idxprom213
  store i8* %arrayidx214, i8** %a, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.249, %if.else.208
  %135 = load i8*, i8** %a, align 8
  %incdec.ptr215 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr215, i8** %a, align 8
  %136 = load i8, i8* %135, align 1
  %conv216 = zext i8 %136 to i32
  %137 = load i8*, i8** %p, align 8
  %add.ptr217 = getelementptr inbounds i8, i8* %137, i64 -1
  %138 = load i8, i8* %add.ptr217, align 1
  %conv218 = zext i8 %138 to i32
  %cmp219 = icmp eq i32 %conv216, %conv218
  br i1 %cmp219, label %while.body, label %while.end.250

while.body:                                       ; preds = %while.cond
  %139 = load i8*, i8** %p, align 8
  store i8* %139, i8** %b, align 8
  br label %while.cond.221

while.cond.221:                                   ; preds = %while.body.234, %while.body
  %140 = load i8*, i8** %a, align 8
  %141 = load i8, i8* %140, align 1
  %conv222 = zext i8 %141 to i32
  %142 = load i8*, i8** %b, align 8
  %143 = load i8, i8* %142, align 1
  %conv223 = zext i8 %143 to i32
  %cmp224 = icmp eq i32 %conv222, %conv223
  br i1 %cmp224, label %land.lhs.true.226, label %land.end

land.lhs.true.226:                                ; preds = %while.cond.221
  %144 = load i8*, i8** %a, align 8
  %add.ptr227 = getelementptr inbounds i8, i8* %144, i64 1
  %145 = load i8, i8* %add.ptr227, align 1
  %conv228 = zext i8 %145 to i32
  %cmp229 = icmp ne i32 %conv228, 0
  br i1 %cmp229, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.226
  %146 = load i8*, i8** %b, align 8
  %147 = load i8, i8* %146, align 1
  %conv231 = zext i8 %147 to i32
  %cmp232 = icmp ne i32 %conv231, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.226, %while.cond.221
  %148 = phi i1 [ false, %land.lhs.true.226 ], [ false, %while.cond.221 ], [ %cmp232, %land.rhs ]
  br i1 %148, label %while.body.234, label %while.end

while.body.234:                                   ; preds = %land.end
  %149 = load i8*, i8** %a, align 8
  %incdec.ptr235 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %incdec.ptr235, i8** %a, align 8
  %150 = load i8*, i8** %b, align 8
  %incdec.ptr236 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr236, i8** %b, align 8
  br label %while.cond.221

while.end:                                        ; preds = %land.end
  %151 = load i8*, i8** %a, align 8
  %add.ptr237 = getelementptr inbounds i8, i8* %151, i64 1
  %152 = load i8, i8* %add.ptr237, align 1
  %conv238 = zext i8 %152 to i32
  %cmp239 = icmp eq i32 %conv238, 0
  br i1 %cmp239, label %if.then.241, label %if.else.242

if.then.241:                                      ; preds = %while.end
  %153 = load i8*, i8** %a, align 8
  %154 = load i8, i8* %153, align 1
  %155 = load i8*, i8** %q, align 8
  store i8 %154, i8* %155, align 1
  %156 = load i8*, i8** %b, align 8
  store i8* %156, i8** %p, align 8
  br label %while.end.250

if.else.242:                                      ; preds = %while.end
  br label %while.cond.243

while.cond.243:                                   ; preds = %while.body.246, %if.else.242
  %157 = load i8*, i8** %a, align 8
  %incdec.ptr244 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %incdec.ptr244, i8** %a, align 8
  %158 = load i8, i8* %incdec.ptr244, align 1
  %tobool245 = icmp ne i8 %158, 0
  br i1 %tobool245, label %while.body.246, label %while.end.247

while.body.246:                                   ; preds = %while.cond.243
  br label %while.cond.243

while.end.247:                                    ; preds = %while.cond.243
  %159 = load i8*, i8** %a, align 8
  %incdec.ptr248 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr248, i8** %a, align 8
  br label %if.end.249

if.end.249:                                       ; preds = %while.end.247
  br label %while.cond

while.end.250:                                    ; preds = %if.then.241, %while.cond
  br label %if.end.251

if.end.251:                                       ; preds = %while.end.250, %cond.end
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %do.body
  %160 = load i8*, i8** %q, align 8
  %161 = load i8, i8* %160, align 1
  %idxprom253 = zext i8 %161 to i64
  %162 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx254 = getelementptr inbounds %struct.metrics, %struct.metrics* %162, i64 %idxprom253
  %up255 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx254, i32 0, i32 0
  %163 = load i16, i16* %up255, align 2
  %conv256 = sext i16 %163 to i32
  %164 = load i32, i32* %u, align 4
  %cmp257 = icmp sgt i32 %conv256, %164
  br i1 %cmp257, label %if.then.259, label %if.end.264

if.then.259:                                      ; preds = %if.end.252
  %165 = load i8*, i8** %q, align 8
  %166 = load i8, i8* %165, align 1
  %idxprom260 = zext i8 %166 to i64
  %167 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx261 = getelementptr inbounds %struct.metrics, %struct.metrics* %167, i64 %idxprom260
  %up262 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx261, i32 0, i32 0
  %168 = load i16, i16* %up262, align 2
  %conv263 = sext i16 %168 to i32
  store i32 %conv263, i32* %u, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.259, %if.end.252
  %169 = load i8*, i8** %q, align 8
  %170 = load i8, i8* %169, align 1
  %idxprom265 = zext i8 %170 to i64
  %171 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx266 = getelementptr inbounds %struct.metrics, %struct.metrics* %171, i64 %idxprom265
  %down267 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx266, i32 0, i32 1
  %172 = load i16, i16* %down267, align 2
  %conv268 = sext i16 %172 to i32
  %173 = load i32, i32* %d, align 4
  %cmp269 = icmp slt i32 %conv268, %173
  br i1 %cmp269, label %if.then.271, label %if.end.276

if.then.271:                                      ; preds = %if.end.264
  %174 = load i8*, i8** %q, align 8
  %175 = load i8, i8* %174, align 1
  %idxprom272 = zext i8 %175 to i64
  %176 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx273 = getelementptr inbounds %struct.metrics, %struct.metrics* %176, i64 %idxprom272
  %down274 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx273, i32 0, i32 1
  %177 = load i16, i16* %down274, align 2
  %conv275 = sext i16 %177 to i32
  store i32 %conv275, i32* %d, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.271, %if.end.264
  %178 = load i8*, i8** %q, align 8
  %incdec.ptr277 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr277, i8** %q, align 8
  %179 = load i8, i8* %178, align 1
  %idxprom278 = zext i8 %179 to i64
  %180 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx279 = getelementptr inbounds %struct.metrics, %struct.metrics* %180, i64 %idxprom278
  %right280 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx279, i32 0, i32 3
  %181 = load i16, i16* %right280, align 2
  %conv281 = sext i16 %181 to i32
  %182 = load i32, i32* %r, align 4
  %add282 = add nsw i32 %182, %conv281
  store i32 %add282, i32* %r, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.276
  %183 = load i8*, i8** %p, align 8
  %184 = load i8, i8* %183, align 1
  %tobool283 = icmp ne i8 %184, 0
  br i1 %tobool283, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %185 = load i8*, i8** %q, align 8
  store i8 0, i8* %185, align 1
  %186 = load i8*, i8** %q, align 8
  %add.ptr284 = getelementptr inbounds i8, i8* %186, i64 -1
  %187 = load i8, i8* %add.ptr284, align 1
  %idxprom285 = zext i8 %187 to i64
  %188 = load %struct.metrics*, %struct.metrics** %fnt, align 8
  %arrayidx286 = getelementptr inbounds %struct.metrics, %struct.metrics* %188, i64 %idxprom285
  %last_adjust287 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx286, i32 0, i32 4
  %189 = load i16, i16* %last_adjust287, align 2
  %conv288 = sext i16 %189 to i32
  %190 = load i32, i32* %r, align 4
  %add289 = add nsw i32 %190, %conv288
  store i32 %add289, i32* %r, align 4
  %arraydecay290 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %arraydecay290, i8** %p, align 8
  %191 = load i8*, i8** %p, align 8
  %add.ptr291 = getelementptr inbounds i8, i8* %191, i64 1
  store i8* %add.ptr291, i8** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.362, %do.end
  %192 = load i8*, i8** %q, align 8
  %193 = load i8, i8* %192, align 1
  %tobool292 = icmp ne i8 %193, 0
  br i1 %tobool292, label %for.body, label %for.end.365

for.body:                                         ; preds = %for.cond
  %194 = load i8*, i8** %p, align 8
  %195 = load i8, i8* %194, align 1
  %idxprom294 = zext i8 %195 to i64
  %196 = load i8*, i8** %unacc, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %196, i64 %idxprom294
  %197 = load i8, i8* %arrayidx295, align 1
  %conv296 = zext i8 %197 to i32
  store i32 %conv296, i32* %ua_ch1, align 4
  %198 = load i8*, i8** %q, align 8
  %199 = load i8, i8* %198, align 1
  %idxprom298 = zext i8 %199 to i64
  %200 = load i8*, i8** %unacc, align 8
  %arrayidx299 = getelementptr inbounds i8, i8* %200, i64 %idxprom298
  %201 = load i8, i8* %arrayidx299, align 1
  %conv300 = zext i8 %201 to i32
  store i32 %conv300, i32* %ua_ch2, align 4
  %202 = load i32, i32* %ua_ch1, align 4
  %idxprom302 = sext i32 %202 to i64
  %203 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1303 = bitcast %union.rec* %203 to %struct.word_type*
  %ou2304 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1303, i32 0, i32 2
  %os22305 = bitcast %union.SECOND_UNION* %ou2304 to %struct.anon.1*
  %204 = bitcast %struct.anon.1* %os22305 to i32*
  %bf.load306 = load i32, i32* %204, align 4
  %bf.clear307 = and i32 %bf.load306, 4095
  %idxprom308 = zext i32 %bf.clear307 to i64
  %205 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx309 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %205, i64 %idxprom308
  %kern_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx309, i32 0, i32 9
  %206 = load i16*, i16** %kern_table, align 8
  %arrayidx310 = getelementptr inbounds i16, i16* %206, i64 %idxprom302
  %207 = load i16, i16* %arrayidx310, align 2
  %conv311 = zext i16 %207 to i32
  store i32 %conv311, i32* %i, align 4
  %208 = load i32, i32* %i, align 4
  %cmp313 = icmp eq i32 %208, 0
  br i1 %cmp313, label %if.then.315, label %if.else.316

if.then.315:                                      ; preds = %for.body
  store i32 0, i32* %ksize, align 4
  br label %if.end.360

if.else.316:                                      ; preds = %for.body
  %209 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1318 = bitcast %union.rec* %209 to %struct.word_type*
  %ou2319 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1318, i32 0, i32 2
  %os22320 = bitcast %union.SECOND_UNION* %ou2319 to %struct.anon.1*
  %210 = bitcast %struct.anon.1* %os22320 to i32*
  %bf.load321 = load i32, i32* %210, align 4
  %bf.clear322 = and i32 %bf.load321, 4095
  %idxprom323 = zext i32 %bf.clear322 to i64
  %211 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx324 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %211, i64 %idxprom323
  %kern_chars = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx324, i32 0, i32 10
  %212 = load i8*, i8** %kern_chars, align 8
  store i8* %212, i8** %kc, align 8
  %213 = load i32, i32* %i, align 4
  store i32 %213, i32* %j, align 4
  br label %for.cond.325

for.cond.325:                                     ; preds = %for.inc, %if.else.316
  %214 = load i32, i32* %j, align 4
  %idxprom326 = sext i32 %214 to i64
  %215 = load i8*, i8** %kc, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %215, i64 %idxprom326
  %216 = load i8, i8* %arrayidx327, align 1
  %conv328 = zext i8 %216 to i32
  %217 = load i32, i32* %ua_ch2, align 4
  %cmp329 = icmp sgt i32 %conv328, %217
  br i1 %cmp329, label %for.body.331, label %for.end

for.body.331:                                     ; preds = %for.cond.325
  br label %for.inc

for.inc:                                          ; preds = %for.body.331
  %218 = load i32, i32* %j, align 4
  %inc = add nsw i32 %218, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.325

for.end:                                          ; preds = %for.cond.325
  %219 = load i32, i32* %j, align 4
  %idxprom332 = sext i32 %219 to i64
  %220 = load i8*, i8** %kc, align 8
  %arrayidx333 = getelementptr inbounds i8, i8* %220, i64 %idxprom332
  %221 = load i8, i8* %arrayidx333, align 1
  %conv334 = zext i8 %221 to i32
  %222 = load i32, i32* %ua_ch2, align 4
  %cmp335 = icmp eq i32 %conv334, %222
  br i1 %cmp335, label %cond.true.337, label %cond.false.357

cond.true.337:                                    ; preds = %for.end
  %223 = load i32, i32* %j, align 4
  %idxprom338 = sext i32 %223 to i64
  %224 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1339 = bitcast %union.rec* %224 to %struct.word_type*
  %ou2340 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1339, i32 0, i32 2
  %os22341 = bitcast %union.SECOND_UNION* %ou2340 to %struct.anon.1*
  %225 = bitcast %struct.anon.1* %os22341 to i32*
  %bf.load342 = load i32, i32* %225, align 4
  %bf.clear343 = and i32 %bf.load342, 4095
  %idxprom344 = zext i32 %bf.clear343 to i64
  %226 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx345 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %226, i64 %idxprom344
  %kern_value = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx345, i32 0, i32 11
  %227 = load i8*, i8** %kern_value, align 8
  %arrayidx346 = getelementptr inbounds i8, i8* %227, i64 %idxprom338
  %228 = load i8, i8* %arrayidx346, align 1
  %idxprom347 = zext i8 %228 to i64
  %229 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1348 = bitcast %union.rec* %229 to %struct.word_type*
  %ou2349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 2
  %os22350 = bitcast %union.SECOND_UNION* %ou2349 to %struct.anon.1*
  %230 = bitcast %struct.anon.1* %os22350 to i32*
  %bf.load351 = load i32, i32* %230, align 4
  %bf.clear352 = and i32 %bf.load351, 4095
  %idxprom353 = zext i32 %bf.clear352 to i64
  %231 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx354 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %231, i64 %idxprom353
  %kern_sizes = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx354, i32 0, i32 12
  %232 = load i16*, i16** %kern_sizes, align 8
  %arrayidx355 = getelementptr inbounds i16, i16* %232, i64 %idxprom347
  %233 = load i16, i16* %arrayidx355, align 2
  %conv356 = sext i16 %233 to i32
  br label %cond.end.358

cond.false.357:                                   ; preds = %for.end
  br label %cond.end.358

cond.end.358:                                     ; preds = %cond.false.357, %cond.true.337
  %cond359 = phi i32 [ %conv356, %cond.true.337 ], [ 0, %cond.false.357 ]
  store i32 %cond359, i32* %ksize, align 4
  br label %if.end.360

if.end.360:                                       ; preds = %cond.end.358, %if.then.315
  %234 = load i32, i32* %ksize, align 4
  %235 = load i32, i32* %r, align 4
  %add361 = add nsw i32 %235, %234
  store i32 %add361, i32* %r, align 4
  br label %for.inc.362

for.inc.362:                                      ; preds = %if.end.360
  %236 = load i8*, i8** %p, align 8
  %incdec.ptr363 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %incdec.ptr363, i8** %p, align 8
  %237 = load i8*, i8** %q, align 8
  %incdec.ptr364 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %incdec.ptr364, i8** %q, align 8
  br label %for.cond

for.end.365:                                      ; preds = %for.cond
  %238 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1366 = bitcast %union.rec* %238 to %struct.word_type*
  %ou3367 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1366, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3367 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx368 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  store i32 0, i32* %arrayidx368, align 4
  %239 = load i32, i32* %r, align 4
  %240 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1369 = bitcast %union.rec* %240 to %struct.word_type*
  %ou3370 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1369, i32 0, i32 3
  %os31371 = bitcast %union.THIRD_UNION* %ou3370 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31371, i32 0, i32 1
  %arrayidx372 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  store i32 %239, i32* %arrayidx372, align 4
  %241 = load i32, i32* %u, align 4
  %242 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1373 = bitcast %union.rec* %242 to %struct.word_type*
  %ou3374 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1373, i32 0, i32 3
  %os31375 = bitcast %union.THIRD_UNION* %ou3374 to %struct.anon.6*
  %oback376 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31375, i32 0, i32 0
  %arrayidx377 = getelementptr inbounds [2 x i32], [2 x i32]* %oback376, i32 0, i64 1
  store i32 %241, i32* %arrayidx377, align 4
  %243 = load i32, i32* %d, align 4
  %sub = sub nsw i32 0, %243
  %244 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1378 = bitcast %union.rec* %244 to %struct.word_type*
  %ou3379 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1378, i32 0, i32 3
  %os31380 = bitcast %union.THIRD_UNION* %ou3379 to %struct.anon.6*
  %ofwd381 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31380, i32 0, i32 1
  %arrayidx382 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd381, i32 0, i64 1
  store i32 %sub, i32* %arrayidx382, align 4
  br label %if.end.404

if.else.383:                                      ; preds = %if.end
  %245 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1384 = bitcast %union.rec* %245 to %struct.word_type*
  %ou3385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1384, i32 0, i32 3
  %os31386 = bitcast %union.THIRD_UNION* %ou3385 to %struct.anon.6*
  %ofwd387 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31386, i32 0, i32 1
  %arrayidx388 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd387, i32 0, i64 1
  store i32 0, i32* %arrayidx388, align 4
  %246 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1389 = bitcast %union.rec* %246 to %struct.word_type*
  %ou3390 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1389, i32 0, i32 3
  %os31391 = bitcast %union.THIRD_UNION* %ou3390 to %struct.anon.6*
  %oback392 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31391, i32 0, i32 0
  %arrayidx393 = getelementptr inbounds [2 x i32], [2 x i32]* %oback392, i32 0, i64 1
  store i32 0, i32* %arrayidx393, align 4
  %247 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1394 = bitcast %union.rec* %247 to %struct.word_type*
  %ou3395 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1394, i32 0, i32 3
  %os31396 = bitcast %union.THIRD_UNION* %ou3395 to %struct.anon.6*
  %ofwd397 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31396, i32 0, i32 1
  %arrayidx398 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd397, i32 0, i64 0
  store i32 0, i32* %arrayidx398, align 4
  %248 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1399 = bitcast %union.rec* %248 to %struct.word_type*
  %ou3400 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1399, i32 0, i32 3
  %os31401 = bitcast %union.THIRD_UNION* %ou3400 to %struct.anon.6*
  %oback402 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31401, i32 0, i32 0
  %arrayidx403 = getelementptr inbounds [2 x i32], [2 x i32]* %oback402, i32 0, i64 0
  store i32 0, i32* %arrayidx403, align 4
  br label %if.end.404

if.end.404:                                       ; preds = %if.else.383, %for.end.365
  ret void
}

declare i8* @StringQuotedWord(%union.rec*) #1

; Function Attrs: nounwind uwtable
define i8* @FontFamilyAndFace(i32 %fnum) #0 {
entry:
  %fnum.addr = alloca i32, align 4
  %face = alloca %union.rec*, align 8
  %family = alloca %union.rec*, align 8
  store i32 %fnum, i32* %fnum.addr, align 4
  %0 = load i32, i32* %fnum.addr, align 4
  %1 = load i32, i32* @font_count, align 4
  %cmp = icmp ule i32 %0, %1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %fnum.addr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx = getelementptr inbounds %struct.font_rec, %struct.font_rec* %4, i64 %idxprom
  %font_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx, i32 0, i32 5
  %5 = load %union.rec*, %union.rec** %font_table, align 8
  %os1 = bitcast %union.rec* %5 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1, i32 0, i32 1
  %6 = load %union.rec*, %union.rec** %osucc, align 8
  %os12 = bitcast %union.rec* %6 to %struct.word_type*
  %olist3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4, i32 0, i32 0
  %7 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %7, %union.rec** %face, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load %union.rec*, %union.rec** %face, align 8
  %os15 = bitcast %union.rec* %8 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %9 = load i8, i8* %otype, align 1
  %conv = zext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %union.rec*, %union.rec** %face, align 8
  %os18 = bitcast %union.rec* %10 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 0
  %opred11 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %11 = load %union.rec*, %union.rec** %opred11, align 8
  store %union.rec* %11, %union.rec** %face, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %union.rec*, %union.rec** %face, align 8
  %os112 = bitcast %union.rec* %12 to %struct.word_type*
  %olist13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist13, i32 0, i64 1
  %osucc15 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx14, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %osucc15, align 8
  %os116 = bitcast %union.rec* %13 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 0
  %opred19 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred19, align 8
  store %union.rec* %14, %union.rec** %family, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %for.end
  %15 = load %union.rec*, %union.rec** %family, align 8
  %os121 = bitcast %union.rec* %15 to %struct.word_type*
  %ou122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 1
  %os1123 = bitcast %union.FIRST_UNION* %ou122 to %struct.anon*
  %otype24 = getelementptr inbounds %struct.anon, %struct.anon* %os1123, i32 0, i32 0
  %16 = load i8, i8* %otype24, align 1
  %conv25 = zext i8 %16 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %for.body.28, label %for.end.34

for.body.28:                                      ; preds = %for.cond.20
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.28
  %17 = load %union.rec*, %union.rec** %family, align 8
  %os130 = bitcast %union.rec* %17 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 0
  %opred33 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %opred33, align 8
  store %union.rec* %18, %union.rec** %family, align 8
  br label %for.cond.20

for.end.34:                                       ; preds = %for.cond.20
  %19 = load %union.rec*, %union.rec** %family, align 8
  %os135 = bitcast %union.rec* %19 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call36 = call i64 @strlen(i8* %arraydecay) #5
  %20 = load %union.rec*, %union.rec** %face, align 8
  %os137 = bitcast %union.rec* %20 to %struct.word_type*
  %ostring38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 4
  %arraydecay39 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring38, i32 0, i32 0
  %call40 = call i64 @strlen(i8* %arraydecay39) #5
  %add = add i64 %call36, %call40
  %add41 = add i64 %add, 1
  %cmp42 = icmp ugt i64 %add41, 80
  br i1 %cmp42, label %if.then.44, label %if.end.52

if.then.44:                                       ; preds = %for.end.34
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %22 = load %union.rec*, %union.rec** %family, align 8
  %os145 = bitcast %union.rec* %22 to %struct.word_type*
  %ostring46 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 4
  %arraydecay47 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring46, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %face, align 8
  %os148 = bitcast %union.rec* %23 to %struct.word_type*
  %ostring49 = getelementptr inbounds %struct.word_type, %struct.word_type* %os148, i32 0, i32 4
  %arraydecay50 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring49, i32 0, i32 0
  %call51 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.52, i32 0, i32 0), i32 1, %struct.FILE_POS* %21, i8* %arraydecay47, i8* %arraydecay50)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.44, %for.end.34
  %24 = load %union.rec*, %union.rec** %family, align 8
  %os153 = bitcast %union.rec* %24 to %struct.word_type*
  %ostring54 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 4
  %arraydecay55 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring54, i32 0, i32 0
  %call56 = call i8* @strcpy(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @FontFamilyAndFace.buff, i32 0, i32 0), i8* %arraydecay55) #4
  %call57 = call i8* @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @FontFamilyAndFace.buff, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0)) #4
  %25 = load %union.rec*, %union.rec** %face, align 8
  %os158 = bitcast %union.rec* %25 to %struct.word_type*
  %ostring59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 4
  %arraydecay60 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring59, i32 0, i32 0
  %call61 = call i8* @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @FontFamilyAndFace.buff, i32 0, i32 0), i8* %arraydecay60) #4
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @FontFamilyAndFace.buff, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i32 @FontSize(i32 %fnum, %union.rec* %x) #0 {
entry:
  %fnum.addr = alloca i32, align 4
  %x.addr = alloca %union.rec*, align 8
  store i32 %fnum, i32* %fnum.addr, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load i32, i32* %fnum.addr, align 4
  %1 = load i32, i32* @font_count, align 4
  %cmp = icmp ule i32 %0, %1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %fnum.addr, align 4
  %cmp1 = icmp ule i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %4 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %call3 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %fnum.addr, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx = getelementptr inbounds %struct.font_rec, %struct.font_rec* %6, i64 %idxprom
  %font_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx, i32 0, i32 5
  %7 = load %union.rec*, %union.rec** %font_table, align 8
  %os15 = bitcast %union.rec* %7 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 3
  %os32 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.7*
  %ofont_size = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32, i32 0, i32 0
  %8 = load i32, i32* %ofont_size, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @FontHalfXHeight(i32 %fnum) #0 {
entry:
  %fnum.addr = alloca i32, align 4
  store i32 %fnum, i32* %fnum.addr, align 4
  %0 = load i32, i32* %fnum.addr, align 4
  %1 = load i32, i32* @font_count, align 4
  %cmp = icmp ule i32 %0, %1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %fnum.addr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx = getelementptr inbounds %struct.font_rec, %struct.font_rec* %4, i64 %idxprom
  %font_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx, i32 0, i32 5
  %5 = load %union.rec*, %union.rec** %font_table, align 8
  %os1 = bitcast %union.rec* %5 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 3
  %os32 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.7*
  %ofont_xheight2 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32, i32 0, i32 1
  %6 = load i32, i32* %ofont_xheight2, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @FontMapping(i32 %fnum, %struct.FILE_POS* %xfpos) #0 {
entry:
  %fnum.addr = alloca i32, align 4
  %xfpos.addr = alloca %struct.FILE_POS*, align 8
  store i32 %fnum, i32* %fnum.addr, align 4
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %xfpos.addr, align 8
  %0 = load i32, i32* %fnum.addr, align 4
  %1 = load i32, i32* @font_count, align 4
  %cmp = icmp ule i32 %0, %1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %fnum.addr, align 4
  %cmp1 = icmp ule i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** %xfpos.addr, align 8
  %call3 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i32 1, %struct.FILE_POS* %4)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %fnum.addr, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx = getelementptr inbounds %struct.font_rec, %struct.font_rec* %6, i64 %idxprom
  %font_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx, i32 0, i32 5
  %7 = load %union.rec*, %union.rec** %font_table, align 8
  %os1 = bitcast %union.rec* %7 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 3
  %os32 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.7*
  %ofont_mapping = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32, i32 0, i32 3
  %bf.load = load i8, i8* %ofont_mapping, align 4
  %bf.clear = and i8 %bf.load, 127
  %bf.cast = zext i8 %bf.clear to i32
  ret i32 %bf.cast
}

; Function Attrs: nounwind uwtable
define i8* @FontName(i32 %fnum) #0 {
entry:
  %fnum.addr = alloca i32, align 4
  store i32 %fnum, i32* %fnum.addr, align 4
  %0 = load i32, i32* %fnum.addr, align 4
  %1 = load i32, i32* @font_count, align 4
  %cmp = icmp ule i32 %0, %1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %fnum.addr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx = getelementptr inbounds %struct.font_rec, %struct.font_rec* %4, i64 %idxprom
  %font_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx, i32 0, i32 5
  %5 = load %union.rec*, %union.rec** %font_table, align 8
  %os1 = bitcast %union.rec* %5 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  ret i8* %arraydecay
}

; Function Attrs: nounwind uwtable
define i8* @FontFamily(i32 %fnum) #0 {
entry:
  %fnum.addr = alloca i32, align 4
  %face = alloca %union.rec*, align 8
  %family = alloca %union.rec*, align 8
  store i32 %fnum, i32* %fnum.addr, align 4
  %0 = load i32, i32* %fnum.addr, align 4
  %1 = load i32, i32* @font_count, align 4
  %cmp = icmp ule i32 %0, %1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %fnum.addr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx = getelementptr inbounds %struct.font_rec, %struct.font_rec* %4, i64 %idxprom
  %font_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx, i32 0, i32 5
  %5 = load %union.rec*, %union.rec** %font_table, align 8
  %os1 = bitcast %union.rec* %5 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1, i32 0, i32 1
  %6 = load %union.rec*, %union.rec** %osucc, align 8
  %os12 = bitcast %union.rec* %6 to %struct.word_type*
  %olist3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4, i32 0, i32 0
  %7 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %7, %union.rec** %face, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load %union.rec*, %union.rec** %face, align 8
  %os15 = bitcast %union.rec* %8 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %9 = load i8, i8* %otype, align 1
  %conv = zext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %union.rec*, %union.rec** %face, align 8
  %os18 = bitcast %union.rec* %10 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 0
  %opred11 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %11 = load %union.rec*, %union.rec** %opred11, align 8
  store %union.rec* %11, %union.rec** %face, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %union.rec*, %union.rec** %face, align 8
  %os112 = bitcast %union.rec* %12 to %struct.word_type*
  %olist13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist13, i32 0, i64 1
  %osucc15 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx14, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %osucc15, align 8
  %os116 = bitcast %union.rec* %13 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 0
  %opred19 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred19, align 8
  store %union.rec* %14, %union.rec** %family, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %for.end
  %15 = load %union.rec*, %union.rec** %family, align 8
  %os121 = bitcast %union.rec* %15 to %struct.word_type*
  %ou122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 1
  %os1123 = bitcast %union.FIRST_UNION* %ou122 to %struct.anon*
  %otype24 = getelementptr inbounds %struct.anon, %struct.anon* %os1123, i32 0, i32 0
  %16 = load i8, i8* %otype24, align 1
  %conv25 = zext i8 %16 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %for.body.28, label %for.end.34

for.body.28:                                      ; preds = %for.cond.20
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.28
  %17 = load %union.rec*, %union.rec** %family, align 8
  %os130 = bitcast %union.rec* %17 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 0
  %opred33 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %opred33, align 8
  store %union.rec* %18, %union.rec** %family, align 8
  br label %for.cond.20

for.end.34:                                       ; preds = %for.cond.20
  %19 = load %union.rec*, %union.rec** %family, align 8
  %os135 = bitcast %union.rec* %19 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  ret i8* %arraydecay
}

; Function Attrs: nounwind uwtable
define i8* @FontFace(i32 %fnum) #0 {
entry:
  %fnum.addr = alloca i32, align 4
  %face = alloca %union.rec*, align 8
  %family = alloca %union.rec*, align 8
  store i32 %fnum, i32* %fnum.addr, align 4
  %0 = load i32, i32* %fnum.addr, align 4
  %1 = load i32, i32* @font_count, align 4
  %cmp = icmp ule i32 %0, %1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %fnum.addr, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx = getelementptr inbounds %struct.font_rec, %struct.font_rec* %4, i64 %idxprom
  %font_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx, i32 0, i32 5
  %5 = load %union.rec*, %union.rec** %font_table, align 8
  %os1 = bitcast %union.rec* %5 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx1, i32 0, i32 1
  %6 = load %union.rec*, %union.rec** %osucc, align 8
  %os12 = bitcast %union.rec* %6 to %struct.word_type*
  %olist3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist3, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx4, i32 0, i32 0
  %7 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %7, %union.rec** %face, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load %union.rec*, %union.rec** %face, align 8
  %os15 = bitcast %union.rec* %8 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %9 = load i8, i8* %otype, align 1
  %conv = zext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %union.rec*, %union.rec** %face, align 8
  %os18 = bitcast %union.rec* %10 to %struct.word_type*
  %olist9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist9, i32 0, i64 0
  %opred11 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx10, i32 0, i32 0
  %11 = load %union.rec*, %union.rec** %opred11, align 8
  store %union.rec* %11, %union.rec** %face, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %union.rec*, %union.rec** %face, align 8
  %os112 = bitcast %union.rec* %12 to %struct.word_type*
  %olist13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os112, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist13, i32 0, i64 1
  %osucc15 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx14, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %osucc15, align 8
  %os116 = bitcast %union.rec* %13 to %struct.word_type*
  %olist17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist17, i32 0, i64 0
  %opred19 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx18, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred19, align 8
  store %union.rec* %14, %union.rec** %family, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %for.end
  %15 = load %union.rec*, %union.rec** %family, align 8
  %os121 = bitcast %union.rec* %15 to %struct.word_type*
  %ou122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 1
  %os1123 = bitcast %union.FIRST_UNION* %ou122 to %struct.anon*
  %otype24 = getelementptr inbounds %struct.anon, %struct.anon* %os1123, i32 0, i32 0
  %16 = load i8, i8* %otype24, align 1
  %conv25 = zext i8 %16 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %for.body.28, label %for.end.34

for.body.28:                                      ; preds = %for.cond.20
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.28
  %17 = load %union.rec*, %union.rec** %family, align 8
  %os130 = bitcast %union.rec* %17 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 0
  %opred33 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %opred33, align 8
  store %union.rec* %18, %union.rec** %family, align 8
  br label %for.cond.20

for.end.34:                                       ; preds = %for.cond.20
  %19 = load %union.rec*, %union.rec** %face, align 8
  %os135 = bitcast %union.rec* %19 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  ret i8* %arraydecay
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @FontPrintAll(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %family = alloca %union.rec*, align 8
  %face = alloca %union.rec*, align 8
  %first_size = alloca %union.rec*, align 8
  %ps_name = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %flink = alloca %union.rec*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %union.rec*, %union.rec** @font_root, align 8
  %cmp = icmp ne %union.rec* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.rec*, %union.rec** @font_root, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %2 = load i8, i8* %otype, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 17
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %4 = load %union.rec*, %union.rec** @font_root, align 8
  %os13 = bitcast %union.rec* %4 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %5 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %5, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.250, %if.end
  %6 = load %union.rec*, %union.rec** %link, align 8
  %7 = load %union.rec*, %union.rec** @font_root, align 8
  %cmp4 = icmp ne %union.rec* %6, %7
  br i1 %cmp4, label %for.body, label %for.end.255

for.body:                                         ; preds = %for.cond
  %8 = load %union.rec*, %union.rec** %link, align 8
  %os16 = bitcast %union.rec* %8 to %struct.word_type*
  %olist7 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist7, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx8, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %9, %union.rec** %family, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %10 = load %union.rec*, %union.rec** %family, align 8
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
  %12 = load %union.rec*, %union.rec** %family, align 8
  %os118 = bitcast %union.rec* %12 to %struct.word_type*
  %olist19 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist19, i32 0, i64 1
  %opred21 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx20, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred21, align 8
  store %union.rec* %13, %union.rec** %family, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %14 = load %union.rec*, %union.rec** %family, align 8
  %os122 = bitcast %union.rec* %14 to %struct.word_type*
  %ou123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 1
  %os1124 = bitcast %union.FIRST_UNION* %ou123 to %struct.anon*
  %otype25 = getelementptr inbounds %struct.anon, %struct.anon* %os1124, i32 0, i32 0
  %15 = load i8, i8* %otype25, align 1
  %conv26 = zext i8 %15 to i32
  %cmp27 = icmp eq i32 %conv26, 11
  br i1 %cmp27, label %if.end.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %16 = load %union.rec*, %union.rec** %family, align 8
  %os129 = bitcast %union.rec* %16 to %struct.word_type*
  %ou130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 1
  %os1131 = bitcast %union.FIRST_UNION* %ou130 to %struct.anon*
  %otype32 = getelementptr inbounds %struct.anon, %struct.anon* %os1131, i32 0, i32 0
  %17 = load i8, i8* %otype32, align 1
  %conv33 = zext i8 %17 to i32
  %cmp34 = icmp eq i32 %conv33, 12
  br i1 %cmp34, label %if.end.38, label %if.then.36

if.then.36:                                       ; preds = %lor.lhs.false
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call37 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %lor.lhs.false, %for.end
  %19 = load %union.rec*, %union.rec** %family, align 8
  %os139 = bitcast %union.rec* %19 to %struct.word_type*
  %olist40 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist40, i32 0, i64 0
  %osucc42 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx41, i32 0, i32 1
  %20 = load %union.rec*, %union.rec** %osucc42, align 8
  store %union.rec* %20, %union.rec** %flink, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.244, %if.end.38
  %21 = load %union.rec*, %union.rec** %flink, align 8
  %22 = load %union.rec*, %union.rec** %family, align 8
  %cmp44 = icmp ne %union.rec* %21, %22
  br i1 %cmp44, label %for.body.46, label %for.end.249

for.body.46:                                      ; preds = %for.cond.43
  %23 = load %union.rec*, %union.rec** %flink, align 8
  %os147 = bitcast %union.rec* %23 to %struct.word_type*
  %olist48 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist48, i32 0, i64 1
  %opred50 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx49, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %opred50, align 8
  store %union.rec* %24, %union.rec** %face, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.60, %for.body.46
  %25 = load %union.rec*, %union.rec** %face, align 8
  %os152 = bitcast %union.rec* %25 to %struct.word_type*
  %ou153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 1
  %os1154 = bitcast %union.FIRST_UNION* %ou153 to %struct.anon*
  %otype55 = getelementptr inbounds %struct.anon, %struct.anon* %os1154, i32 0, i32 0
  %26 = load i8, i8* %otype55, align 1
  %conv56 = zext i8 %26 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %for.body.59, label %for.end.65

for.body.59:                                      ; preds = %for.cond.51
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.59
  %27 = load %union.rec*, %union.rec** %face, align 8
  %os161 = bitcast %union.rec* %27 to %struct.word_type*
  %olist62 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist62, i32 0, i64 1
  %opred64 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx63, i32 0, i32 0
  %28 = load %union.rec*, %union.rec** %opred64, align 8
  store %union.rec* %28, %union.rec** %face, align 8
  br label %for.cond.51

for.end.65:                                       ; preds = %for.cond.51
  %29 = load %union.rec*, %union.rec** %face, align 8
  %os166 = bitcast %union.rec* %29 to %struct.word_type*
  %ou167 = getelementptr inbounds %struct.word_type, %struct.word_type* %os166, i32 0, i32 1
  %os1168 = bitcast %union.FIRST_UNION* %ou167 to %struct.anon*
  %otype69 = getelementptr inbounds %struct.anon, %struct.anon* %os1168, i32 0, i32 0
  %30 = load i8, i8* %otype69, align 1
  %conv70 = zext i8 %30 to i32
  %cmp71 = icmp eq i32 %conv70, 11
  br i1 %cmp71, label %if.end.83, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %for.end.65
  %31 = load %union.rec*, %union.rec** %face, align 8
  %os174 = bitcast %union.rec* %31 to %struct.word_type*
  %ou175 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 1
  %os1176 = bitcast %union.FIRST_UNION* %ou175 to %struct.anon*
  %otype77 = getelementptr inbounds %struct.anon, %struct.anon* %os1176, i32 0, i32 0
  %32 = load i8, i8* %otype77, align 1
  %conv78 = zext i8 %32 to i32
  %cmp79 = icmp eq i32 %conv78, 12
  br i1 %cmp79, label %if.end.83, label %if.then.81

if.then.81:                                       ; preds = %lor.lhs.false.73
  %33 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call82 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %lor.lhs.false.73, %for.end.65
  %34 = load %union.rec*, %union.rec** %face, align 8
  %os184 = bitcast %union.rec* %34 to %struct.word_type*
  %olist85 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist85, i32 0, i64 0
  %osucc87 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx86, i32 0, i32 1
  %35 = load %union.rec*, %union.rec** %osucc87, align 8
  %36 = load %union.rec*, %union.rec** %face, align 8
  %cmp88 = icmp ne %union.rec* %35, %36
  br i1 %cmp88, label %land.lhs.true.90, label %if.then.116

land.lhs.true.90:                                 ; preds = %if.end.83
  %37 = load %union.rec*, %union.rec** %face, align 8
  %os191 = bitcast %union.rec* %37 to %struct.word_type*
  %olist92 = getelementptr inbounds %struct.word_type, %struct.word_type* %os191, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist92, i32 0, i64 0
  %osucc94 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx93, i32 0, i32 1
  %38 = load %union.rec*, %union.rec** %osucc94, align 8
  %os195 = bitcast %union.rec* %38 to %struct.word_type*
  %olist96 = getelementptr inbounds %struct.word_type, %struct.word_type* %os195, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist96, i32 0, i64 0
  %osucc98 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx97, i32 0, i32 1
  %39 = load %union.rec*, %union.rec** %osucc98, align 8
  %40 = load %union.rec*, %union.rec** %face, align 8
  %cmp99 = icmp ne %union.rec* %39, %40
  br i1 %cmp99, label %land.lhs.true.101, label %if.then.116

land.lhs.true.101:                                ; preds = %land.lhs.true.90
  %41 = load %union.rec*, %union.rec** %face, align 8
  %os1102 = bitcast %union.rec* %41 to %struct.word_type*
  %olist103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist103, i32 0, i64 0
  %osucc105 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx104, i32 0, i32 1
  %42 = load %union.rec*, %union.rec** %osucc105, align 8
  %os1106 = bitcast %union.rec* %42 to %struct.word_type*
  %olist107 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1106, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist107, i32 0, i64 0
  %osucc109 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx108, i32 0, i32 1
  %43 = load %union.rec*, %union.rec** %osucc109, align 8
  %os1110 = bitcast %union.rec* %43 to %struct.word_type*
  %olist111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist111, i32 0, i64 0
  %osucc113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx112, i32 0, i32 1
  %44 = load %union.rec*, %union.rec** %osucc113, align 8
  %45 = load %union.rec*, %union.rec** %face, align 8
  %cmp114 = icmp ne %union.rec* %44, %45
  br i1 %cmp114, label %if.end.118, label %if.then.116

if.then.116:                                      ; preds = %land.lhs.true.101, %land.lhs.true.90, %if.end.83
  %46 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call117 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %land.lhs.true.101
  %47 = load %union.rec*, %union.rec** %face, align 8
  %os1119 = bitcast %union.rec* %47 to %struct.word_type*
  %olist120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist120, i32 0, i64 0
  %osucc122 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx121, i32 0, i32 1
  %48 = load %union.rec*, %union.rec** %osucc122, align 8
  %os1123 = bitcast %union.rec* %48 to %struct.word_type*
  %olist124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1123, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist124, i32 0, i64 1
  %opred126 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx125, i32 0, i32 0
  %49 = load %union.rec*, %union.rec** %opred126, align 8
  store %union.rec* %49, %union.rec** %ps_name, align 8
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.136, %if.end.118
  %50 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1128 = bitcast %union.rec* %50 to %struct.word_type*
  %ou1129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 1
  %os11130 = bitcast %union.FIRST_UNION* %ou1129 to %struct.anon*
  %otype131 = getelementptr inbounds %struct.anon, %struct.anon* %os11130, i32 0, i32 0
  %51 = load i8, i8* %otype131, align 1
  %conv132 = zext i8 %51 to i32
  %cmp133 = icmp eq i32 %conv132, 0
  br i1 %cmp133, label %for.body.135, label %for.end.141

for.body.135:                                     ; preds = %for.cond.127
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.body.135
  %52 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1137 = bitcast %union.rec* %52 to %struct.word_type*
  %olist138 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1137, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist138, i32 0, i64 1
  %opred140 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx139, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %opred140, align 8
  store %union.rec* %53, %union.rec** %ps_name, align 8
  br label %for.cond.127

for.end.141:                                      ; preds = %for.cond.127
  %54 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1142 = bitcast %union.rec* %54 to %struct.word_type*
  %ou1143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1142, i32 0, i32 1
  %os11144 = bitcast %union.FIRST_UNION* %ou1143 to %struct.anon*
  %otype145 = getelementptr inbounds %struct.anon, %struct.anon* %os11144, i32 0, i32 0
  %55 = load i8, i8* %otype145, align 1
  %conv146 = zext i8 %55 to i32
  %cmp147 = icmp eq i32 %conv146, 11
  br i1 %cmp147, label %if.end.159, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %for.end.141
  %56 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1150 = bitcast %union.rec* %56 to %struct.word_type*
  %ou1151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1150, i32 0, i32 1
  %os11152 = bitcast %union.FIRST_UNION* %ou1151 to %struct.anon*
  %otype153 = getelementptr inbounds %struct.anon, %struct.anon* %os11152, i32 0, i32 0
  %57 = load i8, i8* %otype153, align 1
  %conv154 = zext i8 %57 to i32
  %cmp155 = icmp eq i32 %conv154, 12
  br i1 %cmp155, label %if.end.159, label %if.then.157

if.then.157:                                      ; preds = %lor.lhs.false.149
  %58 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call158 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.157, %lor.lhs.false.149, %for.end.141
  %59 = load %union.rec*, %union.rec** %face, align 8
  %os1160 = bitcast %union.rec* %59 to %struct.word_type*
  %olist161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1160, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist161, i32 0, i64 0
  %osucc163 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx162, i32 0, i32 1
  %60 = load %union.rec*, %union.rec** %osucc163, align 8
  %os1164 = bitcast %union.rec* %60 to %struct.word_type*
  %olist165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1164, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist165, i32 0, i64 0
  %osucc167 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx166, i32 0, i32 1
  %61 = load %union.rec*, %union.rec** %osucc167, align 8
  %os1169 = bitcast %union.rec* %61 to %struct.word_type*
  %olist170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1169, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist170, i32 0, i64 0
  %osucc172 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx171, i32 0, i32 1
  %62 = load %union.rec*, %union.rec** %osucc172, align 8
  %os1173 = bitcast %union.rec* %62 to %struct.word_type*
  %olist174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1173, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist174, i32 0, i64 1
  %opred176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx175, i32 0, i32 0
  %63 = load %union.rec*, %union.rec** %opred176, align 8
  store %union.rec* %63, %union.rec** %first_size, align 8
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.186, %if.end.159
  %64 = load %union.rec*, %union.rec** %first_size, align 8
  %os1178 = bitcast %union.rec* %64 to %struct.word_type*
  %ou1179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1178, i32 0, i32 1
  %os11180 = bitcast %union.FIRST_UNION* %ou1179 to %struct.anon*
  %otype181 = getelementptr inbounds %struct.anon, %struct.anon* %os11180, i32 0, i32 0
  %65 = load i8, i8* %otype181, align 1
  %conv182 = zext i8 %65 to i32
  %cmp183 = icmp eq i32 %conv182, 0
  br i1 %cmp183, label %for.body.185, label %for.end.191

for.body.185:                                     ; preds = %for.cond.177
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.body.185
  %66 = load %union.rec*, %union.rec** %first_size, align 8
  %os1187 = bitcast %union.rec* %66 to %struct.word_type*
  %olist188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1187, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist188, i32 0, i64 1
  %opred190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx189, i32 0, i32 0
  %67 = load %union.rec*, %union.rec** %opred190, align 8
  store %union.rec* %67, %union.rec** %first_size, align 8
  br label %for.cond.177

for.end.191:                                      ; preds = %for.cond.177
  %68 = load %union.rec*, %union.rec** %first_size, align 8
  %os1192 = bitcast %union.rec* %68 to %struct.word_type*
  %ou1193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1192, i32 0, i32 1
  %os11194 = bitcast %union.FIRST_UNION* %ou1193 to %struct.anon*
  %otype195 = getelementptr inbounds %struct.anon, %struct.anon* %os11194, i32 0, i32 0
  %69 = load i8, i8* %otype195, align 1
  %conv196 = zext i8 %69 to i32
  %cmp197 = icmp eq i32 %conv196, 11
  br i1 %cmp197, label %if.end.209, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %for.end.191
  %70 = load %union.rec*, %union.rec** %first_size, align 8
  %os1200 = bitcast %union.rec* %70 to %struct.word_type*
  %ou1201 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1200, i32 0, i32 1
  %os11202 = bitcast %union.FIRST_UNION* %ou1201 to %struct.anon*
  %otype203 = getelementptr inbounds %struct.anon, %struct.anon* %os11202, i32 0, i32 0
  %71 = load i8, i8* %otype203, align 1
  %conv204 = zext i8 %71 to i32
  %cmp205 = icmp eq i32 %conv204, 12
  br i1 %cmp205, label %if.end.209, label %if.then.207

if.then.207:                                      ; preds = %lor.lhs.false.199
  %72 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call208 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end.209

if.end.209:                                       ; preds = %if.then.207, %lor.lhs.false.199, %for.end.191
  %73 = load %union.rec*, %union.rec** %face, align 8
  %os1210 = bitcast %union.rec* %73 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1210, i32 0, i32 3
  %os32 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.7*
  %ofont_recoded = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32, i32 0, i32 3
  %bf.load = load i8, i8* %ofont_recoded, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.211, label %if.else

if.then.211:                                      ; preds = %if.end.209
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %75 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1212 = bitcast %union.rec* %75 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1212, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %first_size, align 8
  %os1213 = bitcast %union.rec* %76 to %struct.word_type*
  %ostring214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1213, i32 0, i32 4
  %arraydecay215 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring214, i32 0, i32 0
  %77 = load %union.rec*, %union.rec** %face, align 8
  %os1216 = bitcast %union.rec* %77 to %struct.word_type*
  %ou3217 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1216, i32 0, i32 3
  %os32218 = bitcast %union.THIRD_UNION* %ou3217 to %struct.anon.7*
  %ofont_mapping = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32218, i32 0, i32 3
  %bf.load219 = load i8, i8* %ofont_mapping, align 4
  %bf.clear = and i8 %bf.load219, 127
  %bf.cast220 = zext i8 %bf.clear to i32
  %call221 = call i8* @MapEncodingName(i32 %bf.cast220)
  %78 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1222 = bitcast %union.rec* %78 to %struct.word_type*
  %ostring223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1222, i32 0, i32 4
  %arraydecay224 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring223, i32 0, i32 0
  %call225 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0), i8* %arraydecay, i8* %arraydecay215, i8* %call221, i8* %arraydecay224)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %80 = load %union.rec*, %union.rec** %first_size, align 8
  %os1226 = bitcast %union.rec* %80 to %struct.word_type*
  %ostring227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1226, i32 0, i32 4
  %arraydecay228 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring227, i32 0, i32 0
  %81 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1229 = bitcast %union.rec* %81 to %struct.word_type*
  %ostring230 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1229, i32 0, i32 4
  %arraydecay231 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring230, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %first_size, align 8
  %os1232 = bitcast %union.rec* %82 to %struct.word_type*
  %ostring233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 4
  %arraydecay234 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring233, i32 0, i32 0
  %call235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i32 0, i32 0), i8* %arraydecay228, i8* %arraydecay231, i8* %arraydecay234)
  br label %if.end.243

if.else:                                          ; preds = %if.end.209
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %84 = load %union.rec*, %union.rec** %first_size, align 8
  %os1236 = bitcast %union.rec* %84 to %struct.word_type*
  %ostring237 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1236, i32 0, i32 4
  %arraydecay238 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring237, i32 0, i32 0
  %85 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1239 = bitcast %union.rec* %85 to %struct.word_type*
  %ostring240 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1239, i32 0, i32 4
  %arraydecay241 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring240, i32 0, i32 0
  %call242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i32 0, i32 0), i8* %arraydecay238, i8* %arraydecay241)
  br label %if.end.243

if.end.243:                                       ; preds = %if.else, %if.then.211
  br label %for.inc.244

for.inc.244:                                      ; preds = %if.end.243
  %86 = load %union.rec*, %union.rec** %flink, align 8
  %os1245 = bitcast %union.rec* %86 to %struct.word_type*
  %olist246 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1245, i32 0, i32 0
  %arrayidx247 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist246, i32 0, i64 0
  %osucc248 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx247, i32 0, i32 1
  %87 = load %union.rec*, %union.rec** %osucc248, align 8
  store %union.rec* %87, %union.rec** %flink, align 8
  br label %for.cond.43

for.end.249:                                      ; preds = %for.cond.43
  br label %for.inc.250

for.inc.250:                                      ; preds = %for.end.249
  %88 = load %union.rec*, %union.rec** %link, align 8
  %os1251 = bitcast %union.rec* %88 to %struct.word_type*
  %olist252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1251, i32 0, i32 0
  %arrayidx253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist252, i32 0, i64 0
  %osucc254 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx253, i32 0, i32 1
  %89 = load %union.rec*, %union.rec** %osucc254, align 8
  store %union.rec* %89, %union.rec** %link, align 8
  br label %for.cond

for.end.255:                                      ; preds = %for.cond
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call256 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i32 0, i32 0), %struct._IO_FILE* %90)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @MapEncodingName(i32) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @FontPrintPageSetup(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %face = alloca %union.rec*, align 8
  %first_size = alloca %union.rec*, align 8
  %ps_name = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %union.rec*, %union.rec** @font_root, align 8
  %cmp = icmp ne %union.rec* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.rec*, %union.rec** @font_root, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %2 = load i8, i8* %otype, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 17
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %4 = load %union.rec*, %union.rec** @font_used, align 8
  %cmp3 = icmp ne %union.rec* %4, null
  br i1 %cmp3, label %land.lhs.true.5, label %if.then.13

land.lhs.true.5:                                  ; preds = %if.end
  %5 = load %union.rec*, %union.rec** @font_used, align 8
  %os16 = bitcast %union.rec* %5 to %struct.word_type*
  %ou17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 1
  %os118 = bitcast %union.FIRST_UNION* %ou17 to %struct.anon*
  %otype9 = getelementptr inbounds %struct.anon, %struct.anon* %os118, i32 0, i32 0
  %6 = load i8, i8* %otype9, align 1
  %conv10 = zext i8 %6 to i32
  %cmp11 = icmp eq i32 %conv10, 17
  br i1 %cmp11, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true.5, %if.end
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %land.lhs.true.5
  %8 = load %union.rec*, %union.rec** @font_used, align 8
  %os116 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %9, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.155, %if.end.15
  %10 = load %union.rec*, %union.rec** %link, align 8
  %11 = load %union.rec*, %union.rec** @font_used, align 8
  %cmp17 = icmp ne %union.rec* %10, %11
  br i1 %cmp17, label %for.body, label %for.end.160

for.body:                                         ; preds = %for.cond
  %12 = load %union.rec*, %union.rec** %link, align 8
  %os119 = bitcast %union.rec* %12 to %struct.word_type*
  %olist20 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist20, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx21, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %13, %union.rec** %face, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %for.body
  %14 = load %union.rec*, %union.rec** %face, align 8
  %os123 = bitcast %union.rec* %14 to %struct.word_type*
  %ou124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 1
  %os1125 = bitcast %union.FIRST_UNION* %ou124 to %struct.anon*
  %otype26 = getelementptr inbounds %struct.anon, %struct.anon* %os1125, i32 0, i32 0
  %15 = load i8, i8* %otype26, align 1
  %conv27 = zext i8 %15 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.22
  br label %for.inc

for.inc:                                          ; preds = %for.body.30
  %16 = load %union.rec*, %union.rec** %face, align 8
  %os131 = bitcast %union.rec* %16 to %struct.word_type*
  %olist32 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist32, i32 0, i64 1
  %opred34 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx33, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %opred34, align 8
  store %union.rec* %17, %union.rec** %face, align 8
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  %18 = load %union.rec*, %union.rec** %face, align 8
  %os135 = bitcast %union.rec* %18 to %struct.word_type*
  %ou136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 1
  %os1137 = bitcast %union.FIRST_UNION* %ou136 to %struct.anon*
  %otype38 = getelementptr inbounds %struct.anon, %struct.anon* %os1137, i32 0, i32 0
  %19 = load i8, i8* %otype38, align 1
  %conv39 = zext i8 %19 to i32
  %cmp40 = icmp eq i32 %conv39, 11
  br i1 %cmp40, label %if.end.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %20 = load %union.rec*, %union.rec** %face, align 8
  %os142 = bitcast %union.rec* %20 to %struct.word_type*
  %ou143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 1
  %os1144 = bitcast %union.FIRST_UNION* %ou143 to %struct.anon*
  %otype45 = getelementptr inbounds %struct.anon, %struct.anon* %os1144, i32 0, i32 0
  %21 = load i8, i8* %otype45, align 1
  %conv46 = zext i8 %21 to i32
  %cmp47 = icmp eq i32 %conv46, 12
  br i1 %cmp47, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call50 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %lor.lhs.false, %for.end
  %23 = load %union.rec*, %union.rec** %face, align 8
  %os152 = bitcast %union.rec* %23 to %struct.word_type*
  %olist53 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist53, i32 0, i64 0
  %osucc55 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx54, i32 0, i32 1
  %24 = load %union.rec*, %union.rec** %osucc55, align 8
  %25 = load %union.rec*, %union.rec** %face, align 8
  %cmp56 = icmp ne %union.rec* %24, %25
  br i1 %cmp56, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %if.end.51
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call59 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.51
  %27 = load %union.rec*, %union.rec** %face, align 8
  %os161 = bitcast %union.rec* %27 to %struct.word_type*
  %olist62 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist62, i32 0, i64 0
  %osucc64 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx63, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %osucc64, align 8
  %os165 = bitcast %union.rec* %28 to %struct.word_type*
  %olist66 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist66, i32 0, i64 0
  %osucc68 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx67, i32 0, i32 1
  %29 = load %union.rec*, %union.rec** %osucc68, align 8
  %os169 = bitcast %union.rec* %29 to %struct.word_type*
  %olist70 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist70, i32 0, i64 0
  %osucc72 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx71, i32 0, i32 1
  %30 = load %union.rec*, %union.rec** %osucc72, align 8
  %os173 = bitcast %union.rec* %30 to %struct.word_type*
  %olist74 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist74, i32 0, i64 1
  %opred76 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx75, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %opred76, align 8
  store %union.rec* %31, %union.rec** %first_size, align 8
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.86, %if.end.60
  %32 = load %union.rec*, %union.rec** %first_size, align 8
  %os178 = bitcast %union.rec* %32 to %struct.word_type*
  %ou179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 1
  %os1180 = bitcast %union.FIRST_UNION* %ou179 to %struct.anon*
  %otype81 = getelementptr inbounds %struct.anon, %struct.anon* %os1180, i32 0, i32 0
  %33 = load i8, i8* %otype81, align 1
  %conv82 = zext i8 %33 to i32
  %cmp83 = icmp eq i32 %conv82, 0
  br i1 %cmp83, label %for.body.85, label %for.end.91

for.body.85:                                      ; preds = %for.cond.77
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.85
  %34 = load %union.rec*, %union.rec** %first_size, align 8
  %os187 = bitcast %union.rec* %34 to %struct.word_type*
  %olist88 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist88, i32 0, i64 1
  %opred90 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx89, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %opred90, align 8
  store %union.rec* %35, %union.rec** %first_size, align 8
  br label %for.cond.77

for.end.91:                                       ; preds = %for.cond.77
  %36 = load %union.rec*, %union.rec** %first_size, align 8
  %os192 = bitcast %union.rec* %36 to %struct.word_type*
  %ou193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os192, i32 0, i32 1
  %os1194 = bitcast %union.FIRST_UNION* %ou193 to %struct.anon*
  %otype95 = getelementptr inbounds %struct.anon, %struct.anon* %os1194, i32 0, i32 0
  %37 = load i8, i8* %otype95, align 1
  %conv96 = zext i8 %37 to i32
  %cmp97 = icmp eq i32 %conv96, 11
  br i1 %cmp97, label %if.end.109, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %for.end.91
  %38 = load %union.rec*, %union.rec** %first_size, align 8
  %os1100 = bitcast %union.rec* %38 to %struct.word_type*
  %ou1101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1100, i32 0, i32 1
  %os11102 = bitcast %union.FIRST_UNION* %ou1101 to %struct.anon*
  %otype103 = getelementptr inbounds %struct.anon, %struct.anon* %os11102, i32 0, i32 0
  %39 = load i8, i8* %otype103, align 1
  %conv104 = zext i8 %39 to i32
  %cmp105 = icmp eq i32 %conv104, 12
  br i1 %cmp105, label %if.end.109, label %if.then.107

if.then.107:                                      ; preds = %lor.lhs.false.99
  %40 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call108 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %lor.lhs.false.99, %for.end.91
  %41 = load %union.rec*, %union.rec** %face, align 8
  %os1110 = bitcast %union.rec* %41 to %struct.word_type*
  %olist111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist111, i32 0, i64 0
  %osucc113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx112, i32 0, i32 1
  %42 = load %union.rec*, %union.rec** %osucc113, align 8
  %os1114 = bitcast %union.rec* %42 to %struct.word_type*
  %olist115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1114, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist115, i32 0, i64 1
  %opred117 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx116, i32 0, i32 0
  %43 = load %union.rec*, %union.rec** %opred117, align 8
  store %union.rec* %43, %union.rec** %ps_name, align 8
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.127, %if.end.109
  %44 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1119 = bitcast %union.rec* %44 to %struct.word_type*
  %ou1120 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1119, i32 0, i32 1
  %os11121 = bitcast %union.FIRST_UNION* %ou1120 to %struct.anon*
  %otype122 = getelementptr inbounds %struct.anon, %struct.anon* %os11121, i32 0, i32 0
  %45 = load i8, i8* %otype122, align 1
  %conv123 = zext i8 %45 to i32
  %cmp124 = icmp eq i32 %conv123, 0
  br i1 %cmp124, label %for.body.126, label %for.end.132

for.body.126:                                     ; preds = %for.cond.118
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.126
  %46 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1128 = bitcast %union.rec* %46 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 1
  %opred131 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 0
  %47 = load %union.rec*, %union.rec** %opred131, align 8
  store %union.rec* %47, %union.rec** %ps_name, align 8
  br label %for.cond.118

for.end.132:                                      ; preds = %for.cond.118
  %48 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1133 = bitcast %union.rec* %48 to %struct.word_type*
  %ou1134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 1
  %os11135 = bitcast %union.FIRST_UNION* %ou1134 to %struct.anon*
  %otype136 = getelementptr inbounds %struct.anon, %struct.anon* %os11135, i32 0, i32 0
  %49 = load i8, i8* %otype136, align 1
  %conv137 = zext i8 %49 to i32
  %cmp138 = icmp eq i32 %conv137, 11
  br i1 %cmp138, label %if.end.150, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %for.end.132
  %50 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1141 = bitcast %union.rec* %50 to %struct.word_type*
  %ou1142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1141, i32 0, i32 1
  %os11143 = bitcast %union.FIRST_UNION* %ou1142 to %struct.anon*
  %otype144 = getelementptr inbounds %struct.anon, %struct.anon* %os11143, i32 0, i32 0
  %51 = load i8, i8* %otype144, align 1
  %conv145 = zext i8 %51 to i32
  %cmp146 = icmp eq i32 %conv145, 12
  br i1 %cmp146, label %if.end.150, label %if.then.148

if.then.148:                                      ; preds = %lor.lhs.false.140
  %52 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call149 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %lor.lhs.false.140, %for.end.132
  %53 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %PrintPageSetupForFont = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %53, i32 0, i32 12
  %54 = load void (%union.rec*, i32, i8*, i8*)*, void (%union.rec*, i32, i8*, i8*)** %PrintPageSetupForFont, align 8
  %55 = load %union.rec*, %union.rec** %face, align 8
  %56 = load i32, i32* @font_curr_page, align 4
  %57 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1151 = bitcast %union.rec* %57 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1151, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %58 = load %union.rec*, %union.rec** %first_size, align 8
  %os1152 = bitcast %union.rec* %58 to %struct.word_type*
  %ostring153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 4
  %arraydecay154 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring153, i32 0, i32 0
  call void %54(%union.rec* %55, i32 %56, i8* %arraydecay, i8* %arraydecay154)
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.150
  %59 = load %union.rec*, %union.rec** %link, align 8
  %os1156 = bitcast %union.rec* %59 to %struct.word_type*
  %olist157 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1156, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist157, i32 0, i64 0
  %osucc159 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx158, i32 0, i32 1
  %60 = load %union.rec*, %union.rec** %osucc159, align 8
  store %union.rec* %60, %union.rec** %link, align 8
  br label %for.cond

for.end.160:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @FontPrintPageResources(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %face = alloca %union.rec*, align 8
  %ps_name = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %pface = alloca %union.rec*, align 8
  %pname = alloca %union.rec*, align 8
  %plink = alloca %union.rec*, align 8
  %first = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %union.rec*, %union.rec** @font_root, align 8
  %cmp = icmp ne %union.rec* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.rec*, %union.rec** @font_root, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %2 = load i8, i8* %otype, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 17
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %4 = load %union.rec*, %union.rec** @font_used, align 8
  %cmp3 = icmp ne %union.rec* %4, null
  br i1 %cmp3, label %land.lhs.true.5, label %if.then.13

land.lhs.true.5:                                  ; preds = %if.end
  %5 = load %union.rec*, %union.rec** @font_used, align 8
  %os16 = bitcast %union.rec* %5 to %struct.word_type*
  %ou17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 1
  %os118 = bitcast %union.FIRST_UNION* %ou17 to %struct.anon*
  %otype9 = getelementptr inbounds %struct.anon, %struct.anon* %os118, i32 0, i32 0
  %6 = load i8, i8* %otype9, align 1
  %conv10 = zext i8 %6 to i32
  %cmp11 = icmp eq i32 %conv10, 17
  br i1 %cmp11, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true.5, %if.end
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %land.lhs.true.5
  store i32 1, i32* %first, align 4
  %8 = load %union.rec*, %union.rec** @font_used, align 8
  %os116 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %9, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.174, %if.end.15
  %10 = load %union.rec*, %union.rec** %link, align 8
  %11 = load %union.rec*, %union.rec** @font_used, align 8
  %cmp17 = icmp ne %union.rec* %10, %11
  br i1 %cmp17, label %for.body, label %for.end.179

for.body:                                         ; preds = %for.cond
  %12 = load %union.rec*, %union.rec** %link, align 8
  %os119 = bitcast %union.rec* %12 to %struct.word_type*
  %olist20 = getelementptr inbounds %struct.word_type, %struct.word_type* %os119, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist20, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx21, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %13, %union.rec** %face, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %for.body
  %14 = load %union.rec*, %union.rec** %face, align 8
  %os123 = bitcast %union.rec* %14 to %struct.word_type*
  %ou124 = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 1
  %os1125 = bitcast %union.FIRST_UNION* %ou124 to %struct.anon*
  %otype26 = getelementptr inbounds %struct.anon, %struct.anon* %os1125, i32 0, i32 0
  %15 = load i8, i8* %otype26, align 1
  %conv27 = zext i8 %15 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.22
  br label %for.inc

for.inc:                                          ; preds = %for.body.30
  %16 = load %union.rec*, %union.rec** %face, align 8
  %os131 = bitcast %union.rec* %16 to %struct.word_type*
  %olist32 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist32, i32 0, i64 1
  %opred34 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx33, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %opred34, align 8
  store %union.rec* %17, %union.rec** %face, align 8
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  %18 = load %union.rec*, %union.rec** %face, align 8
  %os135 = bitcast %union.rec* %18 to %struct.word_type*
  %ou136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 1
  %os1137 = bitcast %union.FIRST_UNION* %ou136 to %struct.anon*
  %otype38 = getelementptr inbounds %struct.anon, %struct.anon* %os1137, i32 0, i32 0
  %19 = load i8, i8* %otype38, align 1
  %conv39 = zext i8 %19 to i32
  %cmp40 = icmp eq i32 %conv39, 11
  br i1 %cmp40, label %if.end.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %20 = load %union.rec*, %union.rec** %face, align 8
  %os142 = bitcast %union.rec* %20 to %struct.word_type*
  %ou143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 1
  %os1144 = bitcast %union.FIRST_UNION* %ou143 to %struct.anon*
  %otype45 = getelementptr inbounds %struct.anon, %struct.anon* %os1144, i32 0, i32 0
  %21 = load i8, i8* %otype45, align 1
  %conv46 = zext i8 %21 to i32
  %cmp47 = icmp eq i32 %conv46, 12
  br i1 %cmp47, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call50 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i32 0, i32 0))
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %lor.lhs.false, %for.end
  %23 = load %union.rec*, %union.rec** %face, align 8
  %os152 = bitcast %union.rec* %23 to %struct.word_type*
  %olist53 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist53, i32 0, i64 0
  %osucc55 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx54, i32 0, i32 1
  %24 = load %union.rec*, %union.rec** %osucc55, align 8
  %25 = load %union.rec*, %union.rec** %face, align 8
  %cmp56 = icmp ne %union.rec* %24, %25
  br i1 %cmp56, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %if.end.51
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call59 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.end.51
  %27 = load %union.rec*, %union.rec** %face, align 8
  %os161 = bitcast %union.rec* %27 to %struct.word_type*
  %olist62 = getelementptr inbounds %struct.word_type, %struct.word_type* %os161, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist62, i32 0, i64 0
  %osucc64 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx63, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %osucc64, align 8
  %os165 = bitcast %union.rec* %28 to %struct.word_type*
  %olist66 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist66, i32 0, i64 1
  %opred68 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx67, i32 0, i32 0
  %29 = load %union.rec*, %union.rec** %opred68, align 8
  store %union.rec* %29, %union.rec** %ps_name, align 8
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.78, %if.end.60
  %30 = load %union.rec*, %union.rec** %ps_name, align 8
  %os170 = bitcast %union.rec* %30 to %struct.word_type*
  %ou171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os170, i32 0, i32 1
  %os1172 = bitcast %union.FIRST_UNION* %ou171 to %struct.anon*
  %otype73 = getelementptr inbounds %struct.anon, %struct.anon* %os1172, i32 0, i32 0
  %31 = load i8, i8* %otype73, align 1
  %conv74 = zext i8 %31 to i32
  %cmp75 = icmp eq i32 %conv74, 0
  br i1 %cmp75, label %for.body.77, label %for.end.83

for.body.77:                                      ; preds = %for.cond.69
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.77
  %32 = load %union.rec*, %union.rec** %ps_name, align 8
  %os179 = bitcast %union.rec* %32 to %struct.word_type*
  %olist80 = getelementptr inbounds %struct.word_type, %struct.word_type* %os179, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist80, i32 0, i64 1
  %opred82 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx81, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %opred82, align 8
  store %union.rec* %33, %union.rec** %ps_name, align 8
  br label %for.cond.69

for.end.83:                                       ; preds = %for.cond.69
  %34 = load %union.rec*, %union.rec** %ps_name, align 8
  %os184 = bitcast %union.rec* %34 to %struct.word_type*
  %ou185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 1
  %os1186 = bitcast %union.FIRST_UNION* %ou185 to %struct.anon*
  %otype87 = getelementptr inbounds %struct.anon, %struct.anon* %os1186, i32 0, i32 0
  %35 = load i8, i8* %otype87, align 1
  %conv88 = zext i8 %35 to i32
  %cmp89 = icmp eq i32 %conv88, 11
  br i1 %cmp89, label %if.end.101, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %for.end.83
  %36 = load %union.rec*, %union.rec** %ps_name, align 8
  %os192 = bitcast %union.rec* %36 to %struct.word_type*
  %ou193 = getelementptr inbounds %struct.word_type, %struct.word_type* %os192, i32 0, i32 1
  %os1194 = bitcast %union.FIRST_UNION* %ou193 to %struct.anon*
  %otype95 = getelementptr inbounds %struct.anon, %struct.anon* %os1194, i32 0, i32 0
  %37 = load i8, i8* %otype95, align 1
  %conv96 = zext i8 %37 to i32
  %cmp97 = icmp eq i32 %conv96, 12
  br i1 %cmp97, label %if.end.101, label %if.then.99

if.then.99:                                       ; preds = %lor.lhs.false.91
  %38 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call100 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %lor.lhs.false.91, %for.end.83
  %39 = load %union.rec*, %union.rec** @font_used, align 8
  %os1102 = bitcast %union.rec* %39 to %struct.word_type*
  %olist103 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist103, i32 0, i64 0
  %osucc105 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx104, i32 0, i32 1
  %40 = load %union.rec*, %union.rec** %osucc105, align 8
  store %union.rec* %40, %union.rec** %plink, align 8
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.161, %if.end.101
  %41 = load %union.rec*, %union.rec** %plink, align 8
  %42 = load %union.rec*, %union.rec** %link, align 8
  %cmp107 = icmp ne %union.rec* %41, %42
  br i1 %cmp107, label %for.body.109, label %for.end.166

for.body.109:                                     ; preds = %for.cond.106
  %43 = load %union.rec*, %union.rec** %plink, align 8
  %os1110 = bitcast %union.rec* %43 to %struct.word_type*
  %olist111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist111, i32 0, i64 1
  %opred113 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx112, i32 0, i32 0
  %44 = load %union.rec*, %union.rec** %opred113, align 8
  store %union.rec* %44, %union.rec** %pface, align 8
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.123, %for.body.109
  %45 = load %union.rec*, %union.rec** %pface, align 8
  %os1115 = bitcast %union.rec* %45 to %struct.word_type*
  %ou1116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 1
  %os11117 = bitcast %union.FIRST_UNION* %ou1116 to %struct.anon*
  %otype118 = getelementptr inbounds %struct.anon, %struct.anon* %os11117, i32 0, i32 0
  %46 = load i8, i8* %otype118, align 1
  %conv119 = zext i8 %46 to i32
  %cmp120 = icmp eq i32 %conv119, 0
  br i1 %cmp120, label %for.body.122, label %for.end.128

for.body.122:                                     ; preds = %for.cond.114
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.122
  %47 = load %union.rec*, %union.rec** %pface, align 8
  %os1124 = bitcast %union.rec* %47 to %struct.word_type*
  %olist125 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist125, i32 0, i64 1
  %opred127 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx126, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %opred127, align 8
  store %union.rec* %48, %union.rec** %pface, align 8
  br label %for.cond.114

for.end.128:                                      ; preds = %for.cond.114
  %49 = load %union.rec*, %union.rec** %pface, align 8
  %os1129 = bitcast %union.rec* %49 to %struct.word_type*
  %olist130 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1129, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist130, i32 0, i64 0
  %osucc132 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx131, i32 0, i32 1
  %50 = load %union.rec*, %union.rec** %osucc132, align 8
  %os1133 = bitcast %union.rec* %50 to %struct.word_type*
  %olist134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist134, i32 0, i64 1
  %opred136 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx135, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %opred136, align 8
  store %union.rec* %51, %union.rec** %pname, align 8
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.146, %for.end.128
  %52 = load %union.rec*, %union.rec** %pname, align 8
  %os1138 = bitcast %union.rec* %52 to %struct.word_type*
  %ou1139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1138, i32 0, i32 1
  %os11140 = bitcast %union.FIRST_UNION* %ou1139 to %struct.anon*
  %otype141 = getelementptr inbounds %struct.anon, %struct.anon* %os11140, i32 0, i32 0
  %53 = load i8, i8* %otype141, align 1
  %conv142 = zext i8 %53 to i32
  %cmp143 = icmp eq i32 %conv142, 0
  br i1 %cmp143, label %for.body.145, label %for.end.151

for.body.145:                                     ; preds = %for.cond.137
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.145
  %54 = load %union.rec*, %union.rec** %pname, align 8
  %os1147 = bitcast %union.rec* %54 to %struct.word_type*
  %olist148 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1147, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist148, i32 0, i64 1
  %opred150 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx149, i32 0, i32 0
  %55 = load %union.rec*, %union.rec** %opred150, align 8
  store %union.rec* %55, %union.rec** %pname, align 8
  br label %for.cond.137

for.end.151:                                      ; preds = %for.cond.137
  %56 = load %union.rec*, %union.rec** %pname, align 8
  %os1152 = bitcast %union.rec* %56 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1152, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %57 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1153 = bitcast %union.rec* %57 to %struct.word_type*
  %ostring154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1153, i32 0, i32 4
  %arraydecay155 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring154, i32 0, i32 0
  %call156 = call i32 @strcmp(i8* %arraydecay, i8* %arraydecay155) #5
  %cmp157 = icmp eq i32 %call156, 0
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %for.end.151
  br label %for.end.166

if.end.160:                                       ; preds = %for.end.151
  br label %for.inc.161

for.inc.161:                                      ; preds = %if.end.160
  %58 = load %union.rec*, %union.rec** %plink, align 8
  %os1162 = bitcast %union.rec* %58 to %struct.word_type*
  %olist163 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1162, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist163, i32 0, i64 0
  %osucc165 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx164, i32 0, i32 1
  %59 = load %union.rec*, %union.rec** %osucc165, align 8
  store %union.rec* %59, %union.rec** %plink, align 8
  br label %for.cond.106

for.end.166:                                      ; preds = %if.then.159, %for.cond.106
  %60 = load %union.rec*, %union.rec** %plink, align 8
  %61 = load %union.rec*, %union.rec** %link, align 8
  %cmp167 = icmp eq %union.rec* %60, %61
  br i1 %cmp167, label %if.then.169, label %if.end.173

if.then.169:                                      ; preds = %for.end.166
  %62 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %PrintPageResourceForFont = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %62, i32 0, i32 13
  %63 = load void (i8*, i32)*, void (i8*, i32)** %PrintPageResourceForFont, align 8
  %64 = load %union.rec*, %union.rec** %ps_name, align 8
  %os1170 = bitcast %union.rec* %64 to %struct.word_type*
  %ostring171 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1170, i32 0, i32 4
  %arraydecay172 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring171, i32 0, i32 0
  %65 = load i32, i32* %first, align 4
  call void %63(i8* %arraydecay172, i32 %65)
  store i32 0, i32* %first, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.169, %for.end.166
  br label %for.inc.174

for.inc.174:                                      ; preds = %if.end.173
  %66 = load %union.rec*, %union.rec** %link, align 8
  %os1175 = bitcast %union.rec* %66 to %struct.word_type*
  %olist176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist176, i32 0, i64 0
  %osucc178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx177, i32 0, i32 1
  %67 = load %union.rec*, %union.rec** %osucc178, align 8
  store %union.rec* %67, %union.rec** %link, align 8
  br label %for.cond

for.end.179:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @FontAdvanceCurrentPage() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %cond.end.97, %entry
  %0 = load %union.rec*, %union.rec** @font_used, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  %2 = load %union.rec*, %union.rec** @font_used, align 8
  %cmp = icmp ne %union.rec* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %union.rec*, %union.rec** @font_used, align 8
  %os11 = bitcast %union.rec* %3 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 0
  %osucc4 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 1
  %4 = load %union.rec*, %union.rec** %osucc4, align 8
  store %union.rec* %4, %union.rec** @xx_link, align 8
  %5 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %5, %union.rec** @zz_hold, align 8
  %6 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os15 = bitcast %union.rec* %6 to %struct.word_type*
  %olist6 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6, i32 0, i64 1
  %osucc8 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7, i32 0, i32 1
  %7 = load %union.rec*, %union.rec** %osucc8, align 8
  %8 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp9 = icmp eq %union.rec* %7, %8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %9 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os110 = bitcast %union.rec* %9 to %struct.word_type*
  %olist11 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist11, i32 0, i64 1
  %osucc13 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %osucc13, align 8
  store %union.rec* %10, %union.rec** @zz_res, align 8
  %11 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os114 = bitcast %union.rec* %11 to %struct.word_type*
  %olist15 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist15, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx16, i32 0, i32 0
  %12 = load %union.rec*, %union.rec** %opred, align 8
  %13 = load %union.rec*, %union.rec** @zz_res, align 8
  %os117 = bitcast %union.rec* %13 to %struct.word_type*
  %olist18 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist18, i32 0, i64 1
  %opred20 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx19, i32 0, i32 0
  store %union.rec* %12, %union.rec** %opred20, align 8
  %14 = load %union.rec*, %union.rec** @zz_res, align 8
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os121 = bitcast %union.rec* %15 to %struct.word_type*
  %olist22 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist22, i32 0, i64 1
  %opred24 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx23, i32 0, i32 0
  %16 = load %union.rec*, %union.rec** %opred24, align 8
  %os125 = bitcast %union.rec* %16 to %struct.word_type*
  %olist26 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist26, i32 0, i64 1
  %osucc28 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx27, i32 0, i32 1
  store %union.rec* %14, %union.rec** %osucc28, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os129 = bitcast %union.rec* %18 to %struct.word_type*
  %olist30 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist30, i32 0, i64 1
  %osucc32 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx31, i32 0, i32 1
  store %union.rec* %17, %union.rec** %osucc32, align 8
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os133 = bitcast %union.rec* %19 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 1
  %opred36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 0
  store %union.rec* %17, %union.rec** %opred36, align 8
  %20 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.rec* [ null, %cond.true ], [ %20, %cond.false ]
  %21 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %21, %union.rec** @zz_hold, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os137 = bitcast %union.rec* %22 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 0
  %osucc40 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 1
  %23 = load %union.rec*, %union.rec** %osucc40, align 8
  %24 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp41 = icmp eq %union.rec* %23, %24
  br i1 %cmp41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end
  br label %cond.end.72

cond.false.43:                                    ; preds = %cond.end
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os144 = bitcast %union.rec* %25 to %struct.word_type*
  %olist45 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist45, i32 0, i64 0
  %osucc47 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx46, i32 0, i32 1
  %26 = load %union.rec*, %union.rec** %osucc47, align 8
  store %union.rec* %26, %union.rec** @zz_res, align 8
  %27 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os148 = bitcast %union.rec* %27 to %struct.word_type*
  %olist49 = getelementptr inbounds %struct.word_type, %struct.word_type* %os148, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist49, i32 0, i64 0
  %opred51 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx50, i32 0, i32 0
  %28 = load %union.rec*, %union.rec** %opred51, align 8
  %29 = load %union.rec*, %union.rec** @zz_res, align 8
  %os152 = bitcast %union.rec* %29 to %struct.word_type*
  %olist53 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist53, i32 0, i64 0
  %opred55 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx54, i32 0, i32 0
  store %union.rec* %28, %union.rec** %opred55, align 8
  %30 = load %union.rec*, %union.rec** @zz_res, align 8
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os156 = bitcast %union.rec* %31 to %struct.word_type*
  %olist57 = getelementptr inbounds %struct.word_type, %struct.word_type* %os156, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist57, i32 0, i64 0
  %opred59 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx58, i32 0, i32 0
  %32 = load %union.rec*, %union.rec** %opred59, align 8
  %os160 = bitcast %union.rec* %32 to %struct.word_type*
  %olist61 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist61, i32 0, i64 0
  %osucc63 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx62, i32 0, i32 1
  store %union.rec* %30, %union.rec** %osucc63, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os164 = bitcast %union.rec* %34 to %struct.word_type*
  %olist65 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist65, i32 0, i64 0
  %osucc67 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx66, i32 0, i32 1
  store %union.rec* %33, %union.rec** %osucc67, align 8
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os168 = bitcast %union.rec* %35 to %struct.word_type*
  %olist69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist69, i32 0, i64 0
  %opred71 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx70, i32 0, i32 0
  store %union.rec* %33, %union.rec** %opred71, align 8
  %36 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.43, %cond.true.42
  %cond73 = phi %union.rec* [ null, %cond.true.42 ], [ %36, %cond.false.43 ]
  %37 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %37, %union.rec** @zz_hold, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %38, %union.rec** @zz_hold, align 8
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os174 = bitcast %union.rec* %39 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os174, i32 0, i32 1
  %os1175 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os1175, i32 0, i32 0
  %40 = load i8, i8* %otype, align 1
  %conv = zext i8 %40 to i32
  %cmp76 = icmp eq i32 %conv, 11
  br i1 %cmp76, label %cond.true.85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.72
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os178 = bitcast %union.rec* %41 to %struct.word_type*
  %ou179 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 1
  %os1180 = bitcast %union.FIRST_UNION* %ou179 to %struct.anon*
  %otype81 = getelementptr inbounds %struct.anon, %struct.anon* %os1180, i32 0, i32 0
  %42 = load i8, i8* %otype81, align 1
  %conv82 = zext i8 %42 to i32
  %cmp83 = icmp eq i32 %conv82, 12
  br i1 %cmp83, label %cond.true.85, label %cond.false.90

cond.true.85:                                     ; preds = %lor.lhs.false, %cond.end.72
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os186 = bitcast %union.rec* %43 to %struct.word_type*
  %ou187 = getelementptr inbounds %struct.word_type, %struct.word_type* %os186, i32 0, i32 1
  %os1188 = bitcast %union.FIRST_UNION* %ou187 to %struct.anon*
  %orec_size = getelementptr inbounds %struct.anon, %struct.anon* %os1188, i32 0, i32 1
  %44 = load i8, i8* %orec_size, align 1
  %conv89 = zext i8 %44 to i32
  br label %cond.end.97

cond.false.90:                                    ; preds = %lor.lhs.false
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os191 = bitcast %union.rec* %45 to %struct.word_type*
  %ou192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os191, i32 0, i32 1
  %os1193 = bitcast %union.FIRST_UNION* %ou192 to %struct.anon*
  %otype94 = getelementptr inbounds %struct.anon, %struct.anon* %os1193, i32 0, i32 0
  %46 = load i8, i8* %otype94, align 1
  %idxprom = zext i8 %46 to i64
  %arrayidx95 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %idxprom
  %47 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %47 to i32
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.90, %cond.true.85
  %cond98 = phi i32 [ %conv89, %cond.true.85 ], [ %conv96, %cond.false.90 ]
  store i32 %cond98, i32* @zz_size, align 4
  %48 = load i32, i32* @zz_size, align 4
  %idxprom99 = sext i32 %48 to i64
  %arrayidx100 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom99
  %49 = load %union.rec*, %union.rec** %arrayidx100, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1101 = bitcast %union.rec* %50 to %struct.word_type*
  %olist102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist102, i32 0, i64 0
  %opred104 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx103, i32 0, i32 0
  store %union.rec* %49, %union.rec** %opred104, align 8
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %52 = load i32, i32* @zz_size, align 4
  %idxprom105 = sext i32 %52 to i64
  %arrayidx106 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom105
  store %union.rec* %51, %union.rec** %arrayidx106, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %53 = load i32, i32* @font_curr_page, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* @font_curr_page, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @FontPageUsed(%union.rec* %face) #0 {
entry:
  %face.addr = alloca %union.rec*, align 8
  store %union.rec* %face, %union.rec** %face.addr, align 8
  %0 = load %union.rec*, %union.rec** %face.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 2
  %os25 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.4*
  %ofont_page = getelementptr inbounds %struct.anon.4, %struct.anon.4* %os25, i32 0, i32 1
  %1 = load i16, i16* %ofont_page, align 2
  %conv = zext i16 %1 to i32
  %2 = load i32, i32* @font_curr_page, align 4
  %cmp = icmp slt i32 %conv, %2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv2 = zext i8 %4 to i32
  store i32 %conv2, i32* @zz_size, align 4
  %conv3 = sext i32 %conv2 to i64
  %cmp4 = icmp uge i64 %conv3, 265
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call7 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %5)
  br label %if.end.20

if.else:                                          ; preds = %if.end
  %6 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %7 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp8 = icmp eq %union.rec* %7, null
  br i1 %cmp8, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else
  %8 = load i32, i32* @zz_size, align 4
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call11 = call %union.rec* @GetMemory(i32 %8, %struct.FILE_POS* %9)
  store %union.rec* %call11, %union.rec** @zz_hold, align 8
  br label %if.end.19

if.else.12:                                       ; preds = %if.else
  %10 = load i32, i32* @zz_size, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom13
  %11 = load %union.rec*, %union.rec** %arrayidx14, align 8
  store %union.rec* %11, %union.rec** @zz_hold, align 8
  store %union.rec* %11, %union.rec** @zz_hold, align 8
  %12 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os115 = bitcast %union.rec* %12 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx16, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred, align 8
  %14 = load i32, i32* @zz_size, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom17
  store %union.rec* %13, %union.rec** %arrayidx18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.12, %if.then.10
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.6
  %15 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os121 = bitcast %union.rec* %15 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 0, i8* %otype, align 1
  %16 = load %union.rec*, %union.rec** @zz_hold, align 8
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os122 = bitcast %union.rec* %17 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 1
  store %union.rec* %16, %union.rec** %osucc, align 8
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os125 = bitcast %union.rec* %18 to %struct.word_type*
  %olist26 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist26, i32 0, i64 1
  %opred28 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx27, i32 0, i32 0
  store %union.rec* %16, %union.rec** %opred28, align 8
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os129 = bitcast %union.rec* %19 to %struct.word_type*
  %olist30 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist30, i32 0, i64 0
  %osucc32 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx31, i32 0, i32 1
  store %union.rec* %16, %union.rec** %osucc32, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os133 = bitcast %union.rec* %20 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 0
  %opred36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 0
  store %union.rec* %16, %union.rec** %opred36, align 8
  store %union.rec* %16, %union.rec** @xx_link, align 8
  %21 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %21, %union.rec** @zz_res, align 8
  %22 = load %union.rec*, %union.rec** @font_used, align 8
  store %union.rec* %22, %union.rec** @zz_hold, align 8
  %23 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp37 = icmp eq %union.rec* %23, null
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  %24 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.71

cond.false:                                       ; preds = %if.end.20
  %25 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp39 = icmp eq %union.rec* %25, null
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.false
  %26 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.42:                                    ; preds = %cond.false
  %27 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os143 = bitcast %union.rec* %27 to %struct.word_type*
  %olist44 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist44, i32 0, i64 0
  %opred46 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx45, i32 0, i32 0
  %28 = load %union.rec*, %union.rec** %opred46, align 8
  store %union.rec* %28, %union.rec** @zz_tmp, align 8
  %29 = load %union.rec*, %union.rec** @zz_res, align 8
  %os147 = bitcast %union.rec* %29 to %struct.word_type*
  %olist48 = getelementptr inbounds %struct.word_type, %struct.word_type* %os147, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist48, i32 0, i64 0
  %opred50 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx49, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %opred50, align 8
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os151 = bitcast %union.rec* %31 to %struct.word_type*
  %olist52 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist52, i32 0, i64 0
  %opred54 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx53, i32 0, i32 0
  store %union.rec* %30, %union.rec** %opred54, align 8
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %33 = load %union.rec*, %union.rec** @zz_res, align 8
  %os155 = bitcast %union.rec* %33 to %struct.word_type*
  %olist56 = getelementptr inbounds %struct.word_type, %struct.word_type* %os155, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist56, i32 0, i64 0
  %opred58 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx57, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %opred58, align 8
  %os159 = bitcast %union.rec* %34 to %struct.word_type*
  %olist60 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist60, i32 0, i64 0
  %osucc62 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx61, i32 0, i32 1
  store %union.rec* %32, %union.rec** %osucc62, align 8
  %35 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %36 = load %union.rec*, %union.rec** @zz_res, align 8
  %os163 = bitcast %union.rec* %36 to %struct.word_type*
  %olist64 = getelementptr inbounds %struct.word_type, %struct.word_type* %os163, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist64, i32 0, i64 0
  %opred66 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx65, i32 0, i32 0
  store %union.rec* %35, %union.rec** %opred66, align 8
  %37 = load %union.rec*, %union.rec** @zz_res, align 8
  %38 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os167 = bitcast %union.rec* %38 to %struct.word_type*
  %olist68 = getelementptr inbounds %struct.word_type, %struct.word_type* %os167, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist68, i32 0, i64 0
  %osucc70 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx69, i32 0, i32 1
  store %union.rec* %37, %union.rec** %osucc70, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.42, %cond.true.41
  %cond = phi %union.rec* [ %26, %cond.true.41 ], [ %37, %cond.false.42 ]
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.end, %cond.true
  %cond72 = phi %union.rec* [ %24, %cond.true ], [ %cond, %cond.end ]
  %39 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %39, %union.rec** @zz_res, align 8
  %40 = load %union.rec*, %union.rec** %face.addr, align 8
  store %union.rec* %40, %union.rec** @zz_hold, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp73 = icmp eq %union.rec* %41, null
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end.71
  %42 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.111

cond.false.76:                                    ; preds = %cond.end.71
  %43 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp77 = icmp eq %union.rec* %43, null
  br i1 %cmp77, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.false.76
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.109

cond.false.80:                                    ; preds = %cond.false.76
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os181 = bitcast %union.rec* %45 to %struct.word_type*
  %olist82 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist82, i32 0, i64 1
  %opred84 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx83, i32 0, i32 0
  %46 = load %union.rec*, %union.rec** %opred84, align 8
  store %union.rec* %46, %union.rec** @zz_tmp, align 8
  %47 = load %union.rec*, %union.rec** @zz_res, align 8
  %os185 = bitcast %union.rec* %47 to %struct.word_type*
  %olist86 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist86, i32 0, i64 1
  %opred88 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx87, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %opred88, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os189 = bitcast %union.rec* %49 to %struct.word_type*
  %olist90 = getelementptr inbounds %struct.word_type, %struct.word_type* %os189, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist90, i32 0, i64 1
  %opred92 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx91, i32 0, i32 0
  store %union.rec* %48, %union.rec** %opred92, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %51 = load %union.rec*, %union.rec** @zz_res, align 8
  %os193 = bitcast %union.rec* %51 to %struct.word_type*
  %olist94 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist94, i32 0, i64 1
  %opred96 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx95, i32 0, i32 0
  %52 = load %union.rec*, %union.rec** %opred96, align 8
  %os197 = bitcast %union.rec* %52 to %struct.word_type*
  %olist98 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist98, i32 0, i64 1
  %osucc100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx99, i32 0, i32 1
  store %union.rec* %50, %union.rec** %osucc100, align 8
  %53 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %54 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1101 = bitcast %union.rec* %54 to %struct.word_type*
  %olist102 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1101, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist102, i32 0, i64 1
  %opred104 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx103, i32 0, i32 0
  store %union.rec* %53, %union.rec** %opred104, align 8
  %55 = load %union.rec*, %union.rec** @zz_res, align 8
  %56 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1105 = bitcast %union.rec* %56 to %struct.word_type*
  %olist106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1105, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist106, i32 0, i64 1
  %osucc108 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx107, i32 0, i32 1
  store %union.rec* %55, %union.rec** %osucc108, align 8
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.80, %cond.true.79
  %cond110 = phi %union.rec* [ %44, %cond.true.79 ], [ %55, %cond.false.80 ]
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.end.109, %cond.true.75
  %cond112 = phi %union.rec* [ %42, %cond.true.75 ], [ %cond110, %cond.end.109 ]
  %57 = load i32, i32* @font_curr_page, align 4
  %conv113 = trunc i32 %57 to i16
  %58 = load %union.rec*, %union.rec** %face.addr, align 8
  %os1114 = bitcast %union.rec* %58 to %struct.word_type*
  %ou2115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1114, i32 0, i32 2
  %os25116 = bitcast %union.SECOND_UNION* %ou2115 to %struct.anon.4*
  %ofont_page117 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %os25116, i32 0, i32 1
  store i16 %conv113, i16* %ofont_page117, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FontNeeded(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %first_need = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %flink = alloca %union.rec*, align 8
  %family = alloca %union.rec*, align 8
  %face = alloca %union.rec*, align 8
  %ps_name = alloca %union.rec*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 1, i32* %first_need, align 4
  %0 = load %union.rec*, %union.rec** @font_root, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %1, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %entry
  %2 = load %union.rec*, %union.rec** %link, align 8
  %3 = load %union.rec*, %union.rec** @font_root, align 8
  %cmp = icmp ne %union.rec* %2, %3
  br i1 %cmp, label %for.body, label %for.end.91

for.body:                                         ; preds = %for.cond
  %4 = load %union.rec*, %union.rec** %link, align 8
  %os11 = bitcast %union.rec* %4 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 0
  %5 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %5, %union.rec** %family, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load %union.rec*, %union.rec** %family, align 8
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
  %8 = load %union.rec*, %union.rec** %family, align 8
  %os110 = bitcast %union.rec* %8 to %struct.word_type*
  %olist11 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist11, i32 0, i64 1
  %opred13 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred13, align 8
  store %union.rec* %9, %union.rec** %family, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %10 = load %union.rec*, %union.rec** %family, align 8
  %os114 = bitcast %union.rec* %10 to %struct.word_type*
  %olist15 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist15, i32 0, i64 0
  %osucc17 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx16, i32 0, i32 1
  %11 = load %union.rec*, %union.rec** %osucc17, align 8
  store %union.rec* %11, %union.rec** %flink, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.80, %for.end
  %12 = load %union.rec*, %union.rec** %flink, align 8
  %13 = load %union.rec*, %union.rec** %family, align 8
  %cmp19 = icmp ne %union.rec* %12, %13
  br i1 %cmp19, label %for.body.21, label %for.end.85

for.body.21:                                      ; preds = %for.cond.18
  %14 = load %union.rec*, %union.rec** %flink, align 8
  %os122 = bitcast %union.rec* %14 to %struct.word_type*
  %olist23 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist23, i32 0, i64 1
  %opred25 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 0
  %15 = load %union.rec*, %union.rec** %opred25, align 8
  store %union.rec* %15, %union.rec** %face, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.35, %for.body.21
  %16 = load %union.rec*, %union.rec** %face, align 8
  %os127 = bitcast %union.rec* %16 to %struct.word_type*
  %ou128 = getelementptr inbounds %struct.word_type, %struct.word_type* %os127, i32 0, i32 1
  %os1129 = bitcast %union.FIRST_UNION* %ou128 to %struct.anon*
  %otype30 = getelementptr inbounds %struct.anon, %struct.anon* %os1129, i32 0, i32 0
  %17 = load i8, i8* %otype30, align 1
  %conv31 = zext i8 %17 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %for.body.34, label %for.end.40

for.body.34:                                      ; preds = %for.cond.26
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.34
  %18 = load %union.rec*, %union.rec** %face, align 8
  %os136 = bitcast %union.rec* %18 to %struct.word_type*
  %olist37 = getelementptr inbounds %struct.word_type, %struct.word_type* %os136, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist37, i32 0, i64 1
  %opred39 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx38, i32 0, i32 0
  %19 = load %union.rec*, %union.rec** %opred39, align 8
  store %union.rec* %19, %union.rec** %face, align 8
  br label %for.cond.26

for.end.40:                                       ; preds = %for.cond.26
  %20 = load %union.rec*, %union.rec** %face, align 8
  %os141 = bitcast %union.rec* %20 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 0
  %osucc44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 1
  %21 = load %union.rec*, %union.rec** %osucc44, align 8
  %os145 = bitcast %union.rec* %21 to %struct.word_type*
  %olist46 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist46, i32 0, i64 1
  %opred48 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx47, i32 0, i32 0
  %22 = load %union.rec*, %union.rec** %opred48, align 8
  store %union.rec* %22, %union.rec** %ps_name, align 8
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.58, %for.end.40
  %23 = load %union.rec*, %union.rec** %ps_name, align 8
  %os150 = bitcast %union.rec* %23 to %struct.word_type*
  %ou151 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 1
  %os1152 = bitcast %union.FIRST_UNION* %ou151 to %struct.anon*
  %otype53 = getelementptr inbounds %struct.anon, %struct.anon* %os1152, i32 0, i32 0
  %24 = load i8, i8* %otype53, align 1
  %conv54 = zext i8 %24 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %for.body.57, label %for.end.63

for.body.57:                                      ; preds = %for.cond.49
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.57
  %25 = load %union.rec*, %union.rec** %ps_name, align 8
  %os159 = bitcast %union.rec* %25 to %struct.word_type*
  %olist60 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist60, i32 0, i64 1
  %opred62 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx61, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %opred62, align 8
  store %union.rec* %26, %union.rec** %ps_name, align 8
  br label %for.cond.49

for.end.63:                                       ; preds = %for.cond.49
  %27 = load %union.rec*, %union.rec** %ps_name, align 8
  %os164 = bitcast %union.rec* %27 to %struct.word_type*
  %ou165 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 1
  %os1166 = bitcast %union.FIRST_UNION* %ou165 to %struct.anon*
  %otype67 = getelementptr inbounds %struct.anon, %struct.anon* %os1166, i32 0, i32 0
  %28 = load i8, i8* %otype67, align 1
  %conv68 = zext i8 %28 to i32
  %cmp69 = icmp eq i32 %conv68, 11
  br i1 %cmp69, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.63
  %29 = load %union.rec*, %union.rec** %ps_name, align 8
  %os171 = bitcast %union.rec* %29 to %struct.word_type*
  %ou172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os171, i32 0, i32 1
  %os1173 = bitcast %union.FIRST_UNION* %ou172 to %struct.anon*
  %otype74 = getelementptr inbounds %struct.anon, %struct.anon* %os1173, i32 0, i32 0
  %30 = load i8, i8* %otype74, align 1
  %conv75 = zext i8 %30 to i32
  %cmp76 = icmp eq i32 %conv75, 12
  br i1 %cmp76, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %31 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %for.end.63
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %33 = load i32, i32* %first_need, align 4
  %tobool = icmp ne i32 %33, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0)
  %34 = load %union.rec*, %union.rec** %ps_name, align 8
  %os178 = bitcast %union.rec* %34 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i8* %cond, i8* %arraydecay)
  store i32 0, i32* %first_need, align 4
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end
  %35 = load %union.rec*, %union.rec** %flink, align 8
  %os181 = bitcast %union.rec* %35 to %struct.word_type*
  %olist82 = getelementptr inbounds %struct.word_type, %struct.word_type* %os181, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist82, i32 0, i64 0
  %osucc84 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx83, i32 0, i32 1
  %36 = load %union.rec*, %union.rec** %osucc84, align 8
  store %union.rec* %36, %union.rec** %flink, align 8
  br label %for.cond.18

for.end.85:                                       ; preds = %for.cond.18
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.end.85
  %37 = load %union.rec*, %union.rec** %link, align 8
  %os187 = bitcast %union.rec* %37 to %struct.word_type*
  %olist88 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist88, i32 0, i64 0
  %osucc90 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx89, i32 0, i32 1
  %38 = load %union.rec*, %union.rec** %osucc90, align 8
  store %union.rec* %38, %union.rec** %link, align 8
  br label %for.cond

for.end.91:                                       ; preds = %for.cond
  %39 = load i32, i32* %first_need, align 4
  ret i32 %39
}

declare %union.rec* @InsertSym(i8*, i8 zeroext, %struct.FILE_POS*, i8 zeroext, i32, i32, i32, %union.rec*, %union.rec*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @DbRetrieve(%union.rec*, i32, %union.rec*, i8*, i8*, i16*, i64*, i32*, i64*) #1

declare void @SwitchScope(%union.rec*) #1

declare %union.rec* @ReadFromFile(i16 zeroext, i64, i32) #1

declare void @UnSwitchScope(%union.rec*) #1

declare %union.rec* @ReplaceWithTidy(%union.rec*, i32) #1

declare i8* @SymName(%union.rec*) #1

declare i8* @EchoFilePos(%struct.FILE_POS*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare i32 @MapLoad(%union.rec*, i32) #1

declare %union.rec* @MakeWordTwo(i32, i8*, i8*, %struct.FILE_POS*) #1

declare i8* @StringInt(i32) #1

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #1

declare %struct._IO_FILE* @OpenFile(i16 zeroext, i32, i32) #1

declare i8* @FileName(i16 zeroext) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @ReadCharMetrics(%union.rec* %face, i32 %fixed_pitch, i32 %xheight2, i8* %lig, i32* %ligtop, i16 zeroext %fnum, %struct.metrics* %fnt, i32* %lnum, %struct._IO_FILE* %fp) #0 {
entry:
  %face.addr = alloca %union.rec*, align 8
  %fixed_pitch.addr = alloca i32, align 4
  %xheight2.addr = alloca i32, align 4
  %lig.addr = alloca i8*, align 8
  %ligtop.addr = alloca i32*, align 8
  %fnum.addr = alloca i16, align 2
  %fnt.addr = alloca %struct.metrics*, align 8
  %lnum.addr = alloca i32*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %buff = alloca [512 x i8], align 16
  %command = alloca [512 x i8], align 16
  %ch = alloca i8, align 1
  %ligchar = alloca i8, align 1
  %i = alloca i32, align 4
  %wx = alloca i32, align 4
  %llx = alloca i32, align 4
  %lly = alloca i32, align 4
  %urx = alloca i32, align 4
  %ury = alloca i32, align 4
  %fl_wx = alloca float, align 4
  %fl_llx = alloca float, align 4
  %fl_lly = alloca float, align 4
  %fl_urx = alloca float, align 4
  %fl_ury = alloca float, align 4
  %wxfound = alloca i32, align 4
  %bfound = alloca i32, align 4
  %AFMfilename = alloca %union.rec*, align 8
  store %union.rec* %face, %union.rec** %face.addr, align 8
  store i32 %fixed_pitch, i32* %fixed_pitch.addr, align 4
  store i32 %xheight2, i32* %xheight2.addr, align 4
  store i8* %lig, i8** %lig.addr, align 8
  store i32* %ligtop, i32** %ligtop.addr, align 8
  store i16 %fnum, i16* %fnum.addr, align 2
  store %struct.metrics* %fnt, %struct.metrics** %fnt.addr, align 8
  store i32* %lnum, i32** %lnum.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %union.rec*, %union.rec** %face.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  %os11 = bitcast %union.rec* %1 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 0
  %osucc4 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 1
  %2 = load %union.rec*, %union.rec** %osucc4, align 8
  %os15 = bitcast %union.rec* %2 to %struct.word_type*
  %olist6 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist6, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx7, i32 0, i32 0
  %3 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %3, %union.rec** %AFMfilename, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os18 = bitcast %union.rec* %4 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 1
  %os119 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os119, i32 0, i32 0
  %5 = load i8, i8* %otype, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os111 = bitcast %union.rec* %6 to %struct.word_type*
  %olist12 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist12, i32 0, i64 1
  %opred14 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx13, i32 0, i32 0
  %7 = load %union.rec*, %union.rec** %opred14, align 8
  store %union.rec* %7, %union.rec** %AFMfilename, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.315, %for.end
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 512, %struct._IO_FILE* %8)
  %cmp15 = icmp ne i8* %call, null
  br i1 %cmp15, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %arraydecay17 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call18 = call i32 @StringBeginsWith(i8* %arraydecay17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.131, i32 0, i32 0))
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %arraydecay19 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call20 = call i32 @StringBeginsWith(i8* %arraydecay19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.132, i32 0, i32 0))
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %9 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %while.body, label %while.end.316

while.body:                                       ; preds = %land.end
  %10 = load i32*, i32** %lnum.addr, align 8
  %11 = load i32, i32* %10, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %10, align 4
  store i8 0, i8* %ch, align 1
  store i32 0, i32* %bfound, align 4
  store i32 0, i32* %wxfound, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.body.27, %while.body
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx23 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %13 to i32
  %cmp25 = icmp eq i32 %conv24, 32
  br i1 %cmp25, label %while.body.27, label %while.end

while.body.27:                                    ; preds = %while.cond.22
  %14 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %14, 1
  store i32 %inc28, i32* %i, align 4
  br label %while.cond.22

while.end:                                        ; preds = %while.cond.22
  br label %while.cond.29

while.cond.29:                                    ; preds = %if.end.224, %while.end
  %15 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %15 to i64
  %arrayidx31 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom30
  %16 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %16 to i32
  %cmp33 = icmp ne i32 %conv32, 10
  br i1 %cmp33, label %while.body.35, label %while.end.225

while.body.35:                                    ; preds = %while.cond.29
  %17 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %17 to i64
  %arrayidx37 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom36
  %arraydecay38 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call39 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* %arraydecay38) #4
  %arraydecay40 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call41 = call i32 @strcmp(i8* %arraydecay40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i32 0, i32 0)) #5
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then, label %if.else

if.then:                                          ; preds = %while.body.35
  %18 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %18 to i64
  %arrayidx45 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom44
  %arraydecay46 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call47 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i32 0, i32 0), i8* %arraydecay46) #4
  %arraydecay48 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %19 = load %union.rec*, %union.rec** %face.addr, align 8
  %os149 = bitcast %union.rec* %19 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 3
  %os32 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.7*
  %ofont_mapping = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32, i32 0, i32 3
  %bf.load = load i8, i8* %ofont_mapping, align 4
  %bf.clear = and i8 %bf.load, 127
  %bf.cast = zext i8 %bf.clear to i32
  %call50 = call zeroext i8 @MapCharEncoding(i8* %arraydecay48, i32 %bf.cast)
  store i8 %call50, i8* %ch, align 1
  br label %if.end.191

if.else:                                          ; preds = %while.body.35
  %arraydecay51 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call52 = call i32 @strcmp(i8* %arraydecay51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0)) #5
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.else.60

if.then.55:                                       ; preds = %if.else
  %20 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %20 to i64
  %arrayidx57 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom56
  %call58 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.136, i32 0, i32 0), float* %fl_wx) #4
  %21 = load float, float* %fl_wx, align 4
  %conv59 = fptosi float %21 to i32
  store i32 %conv59, i32* %wx, align 4
  store i32 1, i32* %wxfound, align 4
  br label %if.end.190

if.else.60:                                       ; preds = %if.else
  %arraydecay61 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call62 = call i32 @strcmp(i8* %arraydecay61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i32 0, i32 0)) #5
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then.65, label %if.else.73

if.then.65:                                       ; preds = %if.else.60
  %22 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %22 to i64
  %arrayidx67 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom66
  %call68 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.138, i32 0, i32 0), float* %fl_llx, float* %fl_lly, float* %fl_urx, float* %fl_ury) #4
  %23 = load float, float* %fl_llx, align 4
  %conv69 = fptosi float %23 to i32
  store i32 %conv69, i32* %llx, align 4
  %24 = load float, float* %fl_lly, align 4
  %conv70 = fptosi float %24 to i32
  store i32 %conv70, i32* %lly, align 4
  %25 = load float, float* %fl_urx, align 4
  %conv71 = fptosi float %25 to i32
  store i32 %conv71, i32* %urx, align 4
  %26 = load float, float* %fl_ury, align 4
  %conv72 = fptosi float %26 to i32
  store i32 %conv72, i32* %ury, align 4
  store i32 1, i32* %bfound, align 4
  br label %if.end.189

if.else.73:                                       ; preds = %if.else.60
  %arraydecay74 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call75 = call i32 @strcmp(i8* %arraydecay74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i32 0, i32 0)) #5
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.188

land.lhs.true.78:                                 ; preds = %if.else.73
  %27 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %uses_font_metrics = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %27, i32 0, i32 8
  %28 = load i32, i32* %uses_font_metrics, align 4
  %tobool79 = icmp ne i32 %28, 0
  br i1 %tobool79, label %land.lhs.true.80, label %if.end.188

land.lhs.true.80:                                 ; preds = %land.lhs.true.78
  %29 = load i8, i8* %ch, align 1
  %conv81 = zext i8 %29 to i32
  %cmp82 = icmp ne i32 %conv81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.188

if.then.84:                                       ; preds = %land.lhs.true.80
  %30 = load i8, i8* %ch, align 1
  %idxprom85 = zext i8 %30 to i64
  %31 = load i8*, i8** %lig.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %31, i64 %idxprom85
  %32 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %32 to i32
  %cmp88 = icmp eq i32 %conv87, 1
  br i1 %cmp88, label %if.then.90, label %if.end

if.then.90:                                       ; preds = %if.then.84
  %33 = load i32*, i32** %ligtop.addr, align 8
  %34 = load i32, i32* %33, align 4
  %sub = sub nsw i32 %34, 256
  %conv91 = trunc i32 %sub to i8
  %35 = load i8, i8* %ch, align 1
  %idxprom92 = zext i8 %35 to i64
  %36 = load i8*, i8** %lig.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %36, i64 %idxprom92
  store i8 %conv91, i8* %arrayidx93, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.90, %if.then.84
  %37 = load i8, i8* %ch, align 1
  %38 = load i32*, i32** %ligtop.addr, align 8
  %39 = load i32, i32* %38, align 4
  %inc94 = add nsw i32 %39, 1
  store i32 %inc94, i32* %38, align 4
  %idxprom95 = sext i32 %39 to i64
  %40 = load i8*, i8** %lig.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %40, i64 %idxprom95
  store i8 %37, i8* %arrayidx96, align 1
  %41 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %41, 1
  store i32 %inc97, i32* %i, align 4
  br label %while.cond.98

while.cond.98:                                    ; preds = %while.body.104, %if.end
  %42 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %42 to i64
  %arrayidx100 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom99
  %43 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %43 to i32
  %cmp102 = icmp eq i32 %conv101, 32
  br i1 %cmp102, label %while.body.104, label %while.end.106

while.body.104:                                   ; preds = %while.cond.98
  %44 = load i32, i32* %i, align 4
  %inc105 = add nsw i32 %44, 1
  store i32 %inc105, i32* %i, align 4
  br label %while.cond.98

while.end.106:                                    ; preds = %while.cond.98
  br label %while.cond.107

while.cond.107:                                   ; preds = %while.end.183, %while.end.106
  %45 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %45 to i64
  %arrayidx109 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom108
  %46 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %46 to i32
  %cmp111 = icmp ne i32 %conv110, 59
  br i1 %cmp111, label %land.rhs.113, label %land.end.119

land.rhs.113:                                     ; preds = %while.cond.107
  %47 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %47 to i64
  %arrayidx115 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom114
  %48 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %48 to i32
  %cmp117 = icmp ne i32 %conv116, 10
  br label %land.end.119

land.end.119:                                     ; preds = %land.rhs.113, %while.cond.107
  %49 = phi i1 [ false, %while.cond.107 ], [ %cmp117, %land.rhs.113 ]
  br i1 %49, label %while.body.120, label %while.end.184

while.body.120:                                   ; preds = %land.end.119
  %50 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %50 to i64
  %arrayidx122 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom121
  %arraydecay123 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %call124 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* %arraydecay123) #4
  %arraydecay125 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %face.addr, align 8
  %os1126 = bitcast %union.rec* %51 to %struct.word_type*
  %ou3127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1126, i32 0, i32 3
  %os32128 = bitcast %union.THIRD_UNION* %ou3127 to %struct.anon.7*
  %ofont_mapping129 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32128, i32 0, i32 3
  %bf.load130 = load i8, i8* %ofont_mapping129, align 4
  %bf.clear131 = and i8 %bf.load130, 127
  %bf.cast132 = zext i8 %bf.clear131 to i32
  %call133 = call zeroext i8 @MapCharEncoding(i8* %arraydecay125, i32 %bf.cast132)
  store i8 %call133, i8* %ligchar, align 1
  %52 = load i8, i8* %ligchar, align 1
  %conv134 = zext i8 %52 to i32
  %cmp135 = icmp ne i32 %conv134, 0
  br i1 %cmp135, label %if.then.137, label %if.else.141

if.then.137:                                      ; preds = %while.body.120
  %53 = load i8, i8* %ligchar, align 1
  %54 = load i32*, i32** %ligtop.addr, align 8
  %55 = load i32, i32* %54, align 4
  %inc138 = add nsw i32 %55, 1
  store i32 %inc138, i32* %54, align 4
  %idxprom139 = sext i32 %55 to i64
  %56 = load i8*, i8** %lig.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %56, i64 %idxprom139
  store i8 %53, i8* %arrayidx140, align 1
  br label %if.end.149

if.else.141:                                      ; preds = %while.body.120
  %57 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os1142 = bitcast %union.rec* %57 to %struct.word_type*
  %ou1143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1142, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1143 to %struct.FILE_POS*
  %arraydecay144 = getelementptr inbounds [512 x i8], [512 x i8]* %command, i32 0, i32 0
  %58 = load i16, i16* %fnum.addr, align 2
  %call145 = call i8* @FileName(i16 zeroext %58)
  %59 = load i32*, i32** %lnum.addr, align 8
  %60 = load i32, i32* %59, align 4
  %call146 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.140, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* %arraydecay144, i8* %call145, i32 %60)
  %61 = load i8, i8* %ch, align 1
  %idxprom147 = zext i8 %61 to i64
  %62 = load i8*, i8** %lig.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %62, i64 %idxprom147
  store i8 1, i8* %arrayidx148, align 1
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.141, %if.then.137
  %63 = load i32*, i32** %ligtop.addr, align 8
  %64 = load i32, i32* %63, align 4
  %cmp150 = icmp sgt i32 %64, 507
  br i1 %cmp150, label %if.then.152, label %if.end.158

if.then.152:                                      ; preds = %if.end.149
  %65 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os1153 = bitcast %union.rec* %65 to %struct.word_type*
  %ou1154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1153, i32 0, i32 1
  %ofpos155 = bitcast %union.FIRST_UNION* %ou1154 to %struct.FILE_POS*
  %66 = load i16, i16* %fnum.addr, align 2
  %call156 = call i8* @FileName(i16 zeroext %66)
  %67 = load i32*, i32** %lnum.addr, align 8
  %68 = load i32, i32* %67, align 4
  %call157 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.141, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos155, i8* %call156, i32 %68)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.152, %if.end.149
  br label %while.cond.159

while.cond.159:                                   ; preds = %while.body.172, %if.end.158
  %69 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %69 to i64
  %arrayidx161 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom160
  %70 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %70 to i32
  %cmp163 = icmp ne i32 %conv162, 32
  br i1 %cmp163, label %land.rhs.165, label %land.end.171

land.rhs.165:                                     ; preds = %while.cond.159
  %71 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %71 to i64
  %arrayidx167 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom166
  %72 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %72 to i32
  %cmp169 = icmp ne i32 %conv168, 59
  br label %land.end.171

land.end.171:                                     ; preds = %land.rhs.165, %while.cond.159
  %73 = phi i1 [ false, %while.cond.159 ], [ %cmp169, %land.rhs.165 ]
  br i1 %73, label %while.body.172, label %while.end.174

while.body.172:                                   ; preds = %land.end.171
  %74 = load i32, i32* %i, align 4
  %inc173 = add nsw i32 %74, 1
  store i32 %inc173, i32* %i, align 4
  br label %while.cond.159

while.end.174:                                    ; preds = %land.end.171
  br label %while.cond.175

while.cond.175:                                   ; preds = %while.body.181, %while.end.174
  %75 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %75 to i64
  %arrayidx177 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom176
  %76 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %76 to i32
  %cmp179 = icmp eq i32 %conv178, 32
  br i1 %cmp179, label %while.body.181, label %while.end.183

while.body.181:                                   ; preds = %while.cond.175
  %77 = load i32, i32* %i, align 4
  %inc182 = add nsw i32 %77, 1
  store i32 %inc182, i32* %i, align 4
  br label %while.cond.175

while.end.183:                                    ; preds = %while.cond.175
  br label %while.cond.107

while.end.184:                                    ; preds = %land.end.119
  %78 = load i32*, i32** %ligtop.addr, align 8
  %79 = load i32, i32* %78, align 4
  %inc185 = add nsw i32 %79, 1
  store i32 %inc185, i32* %78, align 4
  %idxprom186 = sext i32 %79 to i64
  %80 = load i8*, i8** %lig.addr, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %80, i64 %idxprom186
  store i8 0, i8* %arrayidx187, align 1
  br label %if.end.188

if.end.188:                                       ; preds = %while.end.184, %land.lhs.true.80, %land.lhs.true.78, %if.else.73
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.then.65
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.55
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then
  br label %while.cond.192

while.cond.192:                                   ; preds = %while.body.205, %if.end.191
  %81 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %81 to i64
  %arrayidx194 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom193
  %82 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %82 to i32
  %cmp196 = icmp ne i32 %conv195, 59
  br i1 %cmp196, label %land.rhs.198, label %land.end.204

land.rhs.198:                                     ; preds = %while.cond.192
  %83 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %83 to i64
  %arrayidx200 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom199
  %84 = load i8, i8* %arrayidx200, align 1
  %conv201 = zext i8 %84 to i32
  %cmp202 = icmp ne i32 %conv201, 10
  br label %land.end.204

land.end.204:                                     ; preds = %land.rhs.198, %while.cond.192
  %85 = phi i1 [ false, %while.cond.192 ], [ %cmp202, %land.rhs.198 ]
  br i1 %85, label %while.body.205, label %while.end.207

while.body.205:                                   ; preds = %land.end.204
  %86 = load i32, i32* %i, align 4
  %inc206 = add nsw i32 %86, 1
  store i32 %inc206, i32* %i, align 4
  br label %while.cond.192

while.end.207:                                    ; preds = %land.end.204
  %87 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %87 to i64
  %arrayidx209 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom208
  %88 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %88 to i32
  %cmp211 = icmp eq i32 %conv210, 59
  br i1 %cmp211, label %if.then.213, label %if.end.224

if.then.213:                                      ; preds = %while.end.207
  %89 = load i32, i32* %i, align 4
  %inc214 = add nsw i32 %89, 1
  store i32 %inc214, i32* %i, align 4
  br label %while.cond.215

while.cond.215:                                   ; preds = %while.body.221, %if.then.213
  %90 = load i32, i32* %i, align 4
  %idxprom216 = sext i32 %90 to i64
  %arrayidx217 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom216
  %91 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %91 to i32
  %cmp219 = icmp eq i32 %conv218, 32
  br i1 %cmp219, label %while.body.221, label %while.end.223

while.body.221:                                   ; preds = %while.cond.215
  %92 = load i32, i32* %i, align 4
  %inc222 = add nsw i32 %92, 1
  store i32 %inc222, i32* %i, align 4
  br label %while.cond.215

while.end.223:                                    ; preds = %while.cond.215
  br label %if.end.224

if.end.224:                                       ; preds = %while.end.223, %while.end.207
  br label %while.cond.29

while.end.225:                                    ; preds = %while.cond.29
  %93 = load i8, i8* %ch, align 1
  %conv226 = zext i8 %93 to i32
  %cmp227 = icmp sgt i32 %conv226, 0
  br i1 %cmp227, label %if.then.229, label %if.end.315

if.then.229:                                      ; preds = %while.end.225
  %94 = load i32, i32* %wxfound, align 4
  %tobool230 = icmp ne i32 %94, 0
  br i1 %tobool230, label %if.end.237, label %if.then.231

if.then.231:                                      ; preds = %if.then.229
  %95 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os1232 = bitcast %union.rec* %95 to %struct.word_type*
  %ou1233 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1232, i32 0, i32 1
  %ofpos234 = bitcast %union.FIRST_UNION* %ou1233 to %struct.FILE_POS*
  %96 = load i16, i16* %fnum.addr, align 2
  %call235 = call i8* @FileName(i16 zeroext %96)
  %97 = load i32*, i32** %lnum.addr, align 8
  %98 = load i32, i32* %97, align 4
  %call236 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.142, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos234, i8* %call235, i32 %98)
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.231, %if.then.229
  %99 = load i32, i32* %bfound, align 4
  %tobool238 = icmp ne i32 %99, 0
  br i1 %tobool238, label %if.end.245, label %if.then.239

if.then.239:                                      ; preds = %if.end.237
  %100 = load %union.rec*, %union.rec** %AFMfilename, align 8
  %os1240 = bitcast %union.rec* %100 to %struct.word_type*
  %ou1241 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1240, i32 0, i32 1
  %ofpos242 = bitcast %union.FIRST_UNION* %ou1241 to %struct.FILE_POS*
  %101 = load i16, i16* %fnum.addr, align 2
  %call243 = call i8* @FileName(i16 zeroext %101)
  %102 = load i32*, i32** %lnum.addr, align 8
  %103 = load i32, i32* %102, align 4
  %call244 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.143, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos242, i8* %call243, i32 %103)
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.239, %if.end.237
  %104 = load i8, i8* %ch, align 1
  %idxprom246 = zext i8 %104 to i64
  %105 = load i8*, i8** %lig.addr, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %105, i64 %idxprom246
  %106 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %106 to i32
  %cmp249 = icmp eq i32 %conv248, 1
  br i1 %cmp249, label %if.then.251, label %if.else.254

if.then.251:                                      ; preds = %if.end.245
  %107 = load i8, i8* %ch, align 1
  %idxprom252 = zext i8 %107 to i64
  %108 = load i8*, i8** %lig.addr, align 8
  %arrayidx253 = getelementptr inbounds i8, i8* %108, i64 %idxprom252
  store i8 0, i8* %arrayidx253, align 1
  br label %if.end.265

if.else.254:                                      ; preds = %if.end.245
  %109 = load i8, i8* %ch, align 1
  %idxprom255 = zext i8 %109 to i64
  %110 = load i8*, i8** %lig.addr, align 8
  %arrayidx256 = getelementptr inbounds i8, i8* %110, i64 %idxprom255
  %111 = load i8, i8* %arrayidx256, align 1
  %conv257 = zext i8 %111 to i32
  %cmp258 = icmp sgt i32 %conv257, 1
  br i1 %cmp258, label %if.then.260, label %if.end.264

if.then.260:                                      ; preds = %if.else.254
  %112 = load i32*, i32** %ligtop.addr, align 8
  %113 = load i32, i32* %112, align 4
  %inc261 = add nsw i32 %113, 1
  store i32 %inc261, i32* %112, align 4
  %idxprom262 = sext i32 %113 to i64
  %114 = load i8*, i8** %lig.addr, align 8
  %arrayidx263 = getelementptr inbounds i8, i8* %114, i64 %idxprom262
  store i8 0, i8* %arrayidx263, align 1
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.260, %if.else.254
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.then.251
  %115 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %uses_font_metrics266 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %115, i32 0, i32 8
  %116 = load i32, i32* %uses_font_metrics266, align 4
  %tobool267 = icmp ne i32 %116, 0
  br i1 %tobool267, label %if.then.268, label %if.else.293

if.then.268:                                      ; preds = %if.end.265
  %117 = load i32, i32* %llx, align 4
  %conv269 = trunc i32 %117 to i16
  %118 = load i8, i8* %ch, align 1
  %idxprom270 = zext i8 %118 to i64
  %119 = load %struct.metrics*, %struct.metrics** %fnt.addr, align 8
  %arrayidx271 = getelementptr inbounds %struct.metrics, %struct.metrics* %119, i64 %idxprom270
  %left = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx271, i32 0, i32 2
  store i16 %conv269, i16* %left, align 2
  %120 = load i32, i32* %lly, align 4
  %121 = load i32, i32* %xheight2.addr, align 4
  %sub272 = sub nsw i32 %120, %121
  %conv273 = trunc i32 %sub272 to i16
  %122 = load i8, i8* %ch, align 1
  %idxprom274 = zext i8 %122 to i64
  %123 = load %struct.metrics*, %struct.metrics** %fnt.addr, align 8
  %arrayidx275 = getelementptr inbounds %struct.metrics, %struct.metrics* %123, i64 %idxprom274
  %down = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx275, i32 0, i32 1
  store i16 %conv273, i16* %down, align 2
  %124 = load i32, i32* %wx, align 4
  %conv276 = trunc i32 %124 to i16
  %125 = load i8, i8* %ch, align 1
  %idxprom277 = zext i8 %125 to i64
  %126 = load %struct.metrics*, %struct.metrics** %fnt.addr, align 8
  %arrayidx278 = getelementptr inbounds %struct.metrics, %struct.metrics* %126, i64 %idxprom277
  %right = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx278, i32 0, i32 3
  store i16 %conv276, i16* %right, align 2
  %127 = load i32, i32* %ury, align 4
  %128 = load i32, i32* %xheight2.addr, align 4
  %sub279 = sub nsw i32 %127, %128
  %conv280 = trunc i32 %sub279 to i16
  %129 = load i8, i8* %ch, align 1
  %idxprom281 = zext i8 %129 to i64
  %130 = load %struct.metrics*, %struct.metrics** %fnt.addr, align 8
  %arrayidx282 = getelementptr inbounds %struct.metrics, %struct.metrics* %130, i64 %idxprom281
  %up = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx282, i32 0, i32 0
  store i16 %conv280, i16* %up, align 2
  %131 = load i32, i32* %urx, align 4
  %cmp283 = icmp eq i32 %131, 0
  br i1 %cmp283, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.268
  %132 = load i32, i32* %wx, align 4
  %cmp285 = icmp eq i32 %132, 0
  br i1 %cmp285, label %cond.true, label %lor.lhs.false.287

lor.lhs.false.287:                                ; preds = %lor.lhs.false
  %133 = load i32, i32* %fixed_pitch.addr, align 4
  %tobool288 = icmp ne i32 %133, 0
  br i1 %tobool288, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.287, %lor.lhs.false, %if.then.268
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.287
  %134 = load i32, i32* %urx, align 4
  %135 = load i32, i32* %wx, align 4
  %sub289 = sub nsw i32 %134, %135
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub289, %cond.false ]
  %conv290 = trunc i32 %cond to i16
  %136 = load i8, i8* %ch, align 1
  %idxprom291 = zext i8 %136 to i64
  %137 = load %struct.metrics*, %struct.metrics** %fnt.addr, align 8
  %arrayidx292 = getelementptr inbounds %struct.metrics, %struct.metrics* %137, i64 %idxprom291
  %last_adjust = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx292, i32 0, i32 4
  store i16 %conv290, i16* %last_adjust, align 2
  br label %if.end.314

if.else.293:                                      ; preds = %if.end.265
  %138 = load i8, i8* %ch, align 1
  %idxprom294 = zext i8 %138 to i64
  %139 = load %struct.metrics*, %struct.metrics** %fnt.addr, align 8
  %arrayidx295 = getelementptr inbounds %struct.metrics, %struct.metrics* %139, i64 %idxprom294
  %left296 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx295, i32 0, i32 2
  store i16 0, i16* %left296, align 2
  %140 = load i32, i32* @PlainCharHeight, align 4
  %sub297 = sub nsw i32 0, %140
  %div = sdiv i32 %sub297, 2
  %conv298 = trunc i32 %div to i16
  %141 = load i8, i8* %ch, align 1
  %idxprom299 = zext i8 %141 to i64
  %142 = load %struct.metrics*, %struct.metrics** %fnt.addr, align 8
  %arrayidx300 = getelementptr inbounds %struct.metrics, %struct.metrics* %142, i64 %idxprom299
  %down301 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx300, i32 0, i32 1
  store i16 %conv298, i16* %down301, align 2
  %143 = load i32, i32* @PlainCharWidth, align 4
  %conv302 = trunc i32 %143 to i16
  %144 = load i8, i8* %ch, align 1
  %idxprom303 = zext i8 %144 to i64
  %145 = load %struct.metrics*, %struct.metrics** %fnt.addr, align 8
  %arrayidx304 = getelementptr inbounds %struct.metrics, %struct.metrics* %145, i64 %idxprom303
  %right305 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx304, i32 0, i32 3
  store i16 %conv302, i16* %right305, align 2
  %146 = load i32, i32* @PlainCharHeight, align 4
  %div306 = sdiv i32 %146, 2
  %conv307 = trunc i32 %div306 to i16
  %147 = load i8, i8* %ch, align 1
  %idxprom308 = zext i8 %147 to i64
  %148 = load %struct.metrics*, %struct.metrics** %fnt.addr, align 8
  %arrayidx309 = getelementptr inbounds %struct.metrics, %struct.metrics* %148, i64 %idxprom308
  %up310 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx309, i32 0, i32 0
  store i16 %conv307, i16* %up310, align 2
  %149 = load i8, i8* %ch, align 1
  %idxprom311 = zext i8 %149 to i64
  %150 = load %struct.metrics*, %struct.metrics** %fnt.addr, align 8
  %arrayidx312 = getelementptr inbounds %struct.metrics, %struct.metrics* %150, i64 %idxprom311
  %last_adjust313 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx312, i32 0, i32 4
  store i16 0, i16* %last_adjust313, align 2
  br label %if.end.314

if.end.314:                                       ; preds = %if.else.293, %cond.end
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %while.end.225
  br label %while.cond

while.end.316:                                    ; preds = %land.end
  ret void
}

declare i32 @StringBeginsWith(i8*, i8*) #1

declare zeroext i8 @MapCharEncoding(i8*, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @ReadCompositeMetrics(%union.rec* %face, %union.rec* %Extrafilename, i16 zeroext %extra_fnum, i32* %lnum, i16* %composite, %struct.composite_rec* %cmp, i32* %cmptop, %struct._IO_FILE* %fp) #0 {
entry:
  %face.addr = alloca %union.rec*, align 8
  %Extrafilename.addr = alloca %union.rec*, align 8
  %extra_fnum.addr = alloca i16, align 2
  %lnum.addr = alloca i32*, align 8
  %composite.addr = alloca i16*, align 8
  %cmp.addr = alloca %struct.composite_rec*, align 8
  %cmptop.addr = alloca i32*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %status = alloca i8*, align 8
  %buff = alloca [512 x i8], align 16
  %composite_name = alloca [100 x i8], align 16
  %name = alloca [100 x i8], align 16
  %composite_num = alloca i32, align 4
  %x_offset = alloca i32, align 4
  %y_offset = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %composite_code = alloca i8, align 1
  %code = alloca i8, align 1
  store %union.rec* %face, %union.rec** %face.addr, align 8
  store %union.rec* %Extrafilename, %union.rec** %Extrafilename.addr, align 8
  store i16 %extra_fnum, i16* %extra_fnum.addr, align 2
  store i32* %lnum, i32** %lnum.addr, align 8
  store i16* %composite, i16** %composite.addr, align 8
  store %struct.composite_rec* %cmp, %struct.composite_rec** %cmp.addr, align 8
  store i32* %cmptop, i32** %cmptop.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.147, %entry
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 512, %struct._IO_FILE* %0)
  store i8* %call, i8** %status, align 8
  %cmp1 = icmp ne i8* %call, null
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %arraydecay2 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call3 = call i32 @StringBeginsWith(i8* %arraydecay2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.144, i32 0, i32 0))
  %tobool = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %1 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %1, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %2 = load i32*, i32** %lnum.addr, align 8
  %3 = load i32, i32* %2, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %2, align 4
  %arraydecay4 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [100 x i8], [100 x i8]* %composite_name, i32 0, i32 0
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.145, i32 0, i32 0), i8* %arraydecay5, i32* %composite_num) #4
  %cmp7 = icmp ne i32 %call6, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load %union.rec*, %union.rec** %Extrafilename.addr, align 8
  %os1 = bitcast %union.rec* %4 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %5 = load i16, i16* %extra_fnum.addr, align 2
  %call8 = call i8* @FileName(i16 zeroext %5)
  %6 = load i32*, i32** %lnum.addr, align 8
  %7 = load i32, i32* %6, align 4
  %call9 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.146, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* %call8, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %cmp10 = icmp ne i32 %conv, 59
  br i1 %cmp10, label %land.lhs.true, label %land.end.23

land.lhs.true:                                    ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom12
  %11 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %cmp15 = icmp ne i32 %conv14, 10
  br i1 %cmp15, label %land.rhs.17, label %land.end.23

land.rhs.17:                                      ; preds = %land.lhs.true
  %12 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom18
  %13 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %13 to i32
  %cmp21 = icmp ne i32 %conv20, 0
  br label %land.end.23

land.end.23:                                      ; preds = %land.rhs.17, %land.lhs.true, %for.cond
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp21, %land.rhs.17 ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.23
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %15, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.23
  %16 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom25
  %17 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %17 to i32
  %cmp28 = icmp ne i32 %conv27, 59
  br i1 %cmp28, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %for.end
  %18 = load %union.rec*, %union.rec** %Extrafilename.addr, align 8
  %os131 = bitcast %union.rec* %18 to %struct.word_type*
  %ou132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 1
  %ofpos33 = bitcast %union.FIRST_UNION* %ou132 to %struct.FILE_POS*
  %19 = load i16, i16* %extra_fnum.addr, align 2
  %call34 = call i8* @FileName(i16 zeroext %19)
  %20 = load i32*, i32** %lnum.addr, align 8
  %21 = load i32, i32* %20, align 4
  %call35 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.146, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos33, i8* %call34, i32 %21)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.30, %for.end
  %22 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %22, 1
  store i32 %inc37, i32* %i, align 4
  %arraydecay38 = getelementptr inbounds [100 x i8], [100 x i8]* %composite_name, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %face.addr, align 8
  %os139 = bitcast %union.rec* %23 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os139, i32 0, i32 3
  %os32 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.7*
  %ofont_mapping = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32, i32 0, i32 3
  %bf.load = load i8, i8* %ofont_mapping, align 4
  %bf.clear = and i8 %bf.load, 127
  %bf.cast = zext i8 %bf.clear to i32
  %call40 = call zeroext i8 @MapCharEncoding(i8* %arraydecay38, i32 %bf.cast)
  store i8 %call40, i8* %composite_code, align 1
  %24 = load i8, i8* %composite_code, align 1
  %conv41 = zext i8 %24 to i32
  %cmp42 = icmp eq i32 %conv41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.50

if.then.44:                                       ; preds = %if.end.36
  %25 = load %union.rec*, %union.rec** %Extrafilename.addr, align 8
  %os145 = bitcast %union.rec* %25 to %struct.word_type*
  %ou146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 1
  %ofpos47 = bitcast %union.FIRST_UNION* %ou146 to %struct.FILE_POS*
  %26 = load i16, i16* %extra_fnum.addr, align 2
  %call48 = call i8* @FileName(i16 zeroext %26)
  %27 = load i32*, i32** %lnum.addr, align 8
  %28 = load i32, i32* %27, align 4
  %call49 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.147, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos47, i8* %call48, i32 %28)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.44, %if.end.36
  %29 = load i32*, i32** %cmptop.addr, align 8
  %30 = load i32, i32* %29, align 4
  %conv51 = trunc i32 %30 to i16
  %31 = load i8, i8* %composite_code, align 1
  %idxprom52 = zext i8 %31 to i64
  %32 = load i16*, i16** %composite.addr, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %32, i64 %idxprom52
  store i16 %conv51, i16* %arrayidx53, align 2
  store i32 0, i32* %count, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.136, %if.end.50
  %33 = load i32, i32* %count, align 4
  %34 = load i32, i32* %composite_num, align 4
  %cmp55 = icmp slt i32 %33, %34
  br i1 %cmp55, label %for.body.57, label %for.end.138

for.body.57:                                      ; preds = %for.cond.54
  %35 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %35 to i64
  %arrayidx59 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom58
  %arraydecay60 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i32 0, i32 0
  %call61 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.148, i32 0, i32 0), i8* %arraydecay60, i32* %x_offset, i32* %y_offset) #4
  %cmp62 = icmp ne i32 %call61, 3
  br i1 %cmp62, label %if.then.64, label %if.end.70

if.then.64:                                       ; preds = %for.body.57
  %36 = load %union.rec*, %union.rec** %Extrafilename.addr, align 8
  %os165 = bitcast %union.rec* %36 to %struct.word_type*
  %ou166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os165, i32 0, i32 1
  %ofpos67 = bitcast %union.FIRST_UNION* %ou166 to %struct.FILE_POS*
  %37 = load i16, i16* %extra_fnum.addr, align 2
  %call68 = call i8* @FileName(i16 zeroext %37)
  %38 = load i32*, i32** %lnum.addr, align 8
  %39 = load i32, i32* %38, align 4
  %call69 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.146, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos67, i8* %call68, i32 %39)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.64, %for.body.57
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.91, %if.end.70
  %40 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %40 to i64
  %arrayidx73 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom72
  %41 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %41 to i32
  %cmp75 = icmp ne i32 %conv74, 59
  br i1 %cmp75, label %land.lhs.true.77, label %land.end.89

land.lhs.true.77:                                 ; preds = %for.cond.71
  %42 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %42 to i64
  %arrayidx79 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom78
  %43 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %43 to i32
  %cmp81 = icmp ne i32 %conv80, 10
  br i1 %cmp81, label %land.rhs.83, label %land.end.89

land.rhs.83:                                      ; preds = %land.lhs.true.77
  %44 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %44 to i64
  %arrayidx85 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom84
  %45 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %45 to i32
  %cmp87 = icmp ne i32 %conv86, 0
  br label %land.end.89

land.end.89:                                      ; preds = %land.rhs.83, %land.lhs.true.77, %for.cond.71
  %46 = phi i1 [ false, %land.lhs.true.77 ], [ false, %for.cond.71 ], [ %cmp87, %land.rhs.83 ]
  br i1 %46, label %for.body.90, label %for.end.93

for.body.90:                                      ; preds = %land.end.89
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.body.90
  %47 = load i32, i32* %i, align 4
  %inc92 = add nsw i32 %47, 1
  store i32 %inc92, i32* %i, align 4
  br label %for.cond.71

for.end.93:                                       ; preds = %land.end.89
  %48 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %48 to i64
  %arrayidx95 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %idxprom94
  %49 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %49 to i32
  %cmp97 = icmp ne i32 %conv96, 59
  br i1 %cmp97, label %if.then.99, label %if.end.105

if.then.99:                                       ; preds = %for.end.93
  %50 = load %union.rec*, %union.rec** %Extrafilename.addr, align 8
  %os1100 = bitcast %union.rec* %50 to %struct.word_type*
  %ou1101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1100, i32 0, i32 1
  %ofpos102 = bitcast %union.FIRST_UNION* %ou1101 to %struct.FILE_POS*
  %51 = load i16, i16* %extra_fnum.addr, align 2
  %call103 = call i8* @FileName(i16 zeroext %51)
  %52 = load i32*, i32** %lnum.addr, align 8
  %53 = load i32, i32* %52, align 4
  %call104 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.146, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos102, i8* %call103, i32 %53)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.99, %for.end.93
  %54 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %54, 1
  store i32 %inc106, i32* %i, align 4
  %55 = load i32*, i32** %cmptop.addr, align 8
  %56 = load i32, i32* %55, align 4
  %cmp107 = icmp sge i32 %56, 256
  br i1 %cmp107, label %if.then.109, label %if.end.115

if.then.109:                                      ; preds = %if.end.105
  %57 = load %union.rec*, %union.rec** %Extrafilename.addr, align 8
  %os1110 = bitcast %union.rec* %57 to %struct.word_type*
  %ou1111 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1110, i32 0, i32 1
  %ofpos112 = bitcast %union.FIRST_UNION* %ou1111 to %struct.FILE_POS*
  %58 = load i16, i16* %extra_fnum.addr, align 2
  %call113 = call i8* @FileName(i16 zeroext %58)
  %59 = load i32*, i32** %lnum.addr, align 8
  %60 = load i32, i32* %59, align 4
  %call114 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.149, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos112, i8* %call113, i32 %60)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.109, %if.end.105
  %arraydecay116 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i32 0, i32 0
  %61 = load %union.rec*, %union.rec** %face.addr, align 8
  %os1117 = bitcast %union.rec* %61 to %struct.word_type*
  %ou3118 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1117, i32 0, i32 3
  %os32119 = bitcast %union.THIRD_UNION* %ou3118 to %struct.anon.7*
  %ofont_mapping120 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32119, i32 0, i32 3
  %bf.load121 = load i8, i8* %ofont_mapping120, align 4
  %bf.clear122 = and i8 %bf.load121, 127
  %bf.cast123 = zext i8 %bf.clear122 to i32
  %call124 = call zeroext i8 @MapCharEncoding(i8* %arraydecay116, i32 %bf.cast123)
  store i8 %call124, i8* %code, align 1
  %62 = load i8, i8* %code, align 1
  %63 = load i32*, i32** %cmptop.addr, align 8
  %64 = load i32, i32* %63, align 4
  %idxprom125 = sext i32 %64 to i64
  %65 = load %struct.composite_rec*, %struct.composite_rec** %cmp.addr, align 8
  %arrayidx126 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %65, i64 %idxprom125
  %char_code = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %arrayidx126, i32 0, i32 0
  store i8 %62, i8* %char_code, align 1
  %66 = load i32, i32* %x_offset, align 4
  %conv127 = trunc i32 %66 to i16
  %67 = load i32*, i32** %cmptop.addr, align 8
  %68 = load i32, i32* %67, align 4
  %idxprom128 = sext i32 %68 to i64
  %69 = load %struct.composite_rec*, %struct.composite_rec** %cmp.addr, align 8
  %arrayidx129 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %69, i64 %idxprom128
  %x_offset130 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %arrayidx129, i32 0, i32 1
  store i16 %conv127, i16* %x_offset130, align 2
  %70 = load i32, i32* %y_offset, align 4
  %conv131 = trunc i32 %70 to i16
  %71 = load i32*, i32** %cmptop.addr, align 8
  %72 = load i32, i32* %71, align 4
  %idxprom132 = sext i32 %72 to i64
  %73 = load %struct.composite_rec*, %struct.composite_rec** %cmp.addr, align 8
  %arrayidx133 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %73, i64 %idxprom132
  %y_offset134 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %arrayidx133, i32 0, i32 2
  store i16 %conv131, i16* %y_offset134, align 2
  %74 = load i32*, i32** %cmptop.addr, align 8
  %75 = load i32, i32* %74, align 4
  %inc135 = add nsw i32 %75, 1
  store i32 %inc135, i32* %74, align 4
  br label %for.inc.136

for.inc.136:                                      ; preds = %if.end.115
  %76 = load i32, i32* %count, align 4
  %inc137 = add nsw i32 %76, 1
  store i32 %inc137, i32* %count, align 4
  br label %for.cond.54

for.end.138:                                      ; preds = %for.cond.54
  %77 = load i32*, i32** %cmptop.addr, align 8
  %78 = load i32, i32* %77, align 4
  %cmp139 = icmp sge i32 %78, 256
  br i1 %cmp139, label %if.then.141, label %if.end.147

if.then.141:                                      ; preds = %for.end.138
  %79 = load %union.rec*, %union.rec** %Extrafilename.addr, align 8
  %os1142 = bitcast %union.rec* %79 to %struct.word_type*
  %ou1143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1142, i32 0, i32 1
  %ofpos144 = bitcast %union.FIRST_UNION* %ou1143 to %struct.FILE_POS*
  %80 = load i16, i16* %extra_fnum.addr, align 2
  %call145 = call i8* @FileName(i16 zeroext %80)
  %81 = load i32*, i32** %lnum.addr, align 8
  %82 = load i32, i32* %81, align 4
  %call146 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.149, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos144, i8* %call145, i32 %82)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.141, %for.end.138
  %83 = load i32*, i32** %cmptop.addr, align 8
  %84 = load i32, i32* %83, align 4
  %idxprom148 = sext i32 %84 to i64
  %85 = load %struct.composite_rec*, %struct.composite_rec** %cmp.addr, align 8
  %arrayidx149 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %85, i64 %idxprom148
  %char_code150 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %arrayidx149, i32 0, i32 0
  store i8 0, i8* %char_code150, align 1
  %86 = load i32*, i32** %cmptop.addr, align 8
  %87 = load i32, i32* %86, align 4
  %inc151 = add nsw i32 %87, 1
  store i32 %inc151, i32* %86, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %88 = load i8*, i8** %status, align 8
  %cmp152 = icmp eq i8* %88, null
  br i1 %cmp152, label %if.then.157, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %arraydecay154 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call155 = call i32 @StringBeginsWith(i8* %arraydecay154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.150, i32 0, i32 0))
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.end.163, label %if.then.157

if.then.157:                                      ; preds = %lor.lhs.false, %while.end
  %89 = load %union.rec*, %union.rec** %Extrafilename.addr, align 8
  %os1158 = bitcast %union.rec* %89 to %struct.word_type*
  %ou1159 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1158, i32 0, i32 1
  %ofpos160 = bitcast %union.FIRST_UNION* %ou1159 to %struct.FILE_POS*
  %90 = load i16, i16* %extra_fnum.addr, align 2
  %call161 = call i8* @FileName(i16 zeroext %90)
  %91 = load i32*, i32** %lnum.addr, align 8
  %92 = load i32, i32* %91, align 4
  %call162 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 37, i32 9, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.151, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos160, i8* %call161, i32 %92)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.157, %lor.lhs.false
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
