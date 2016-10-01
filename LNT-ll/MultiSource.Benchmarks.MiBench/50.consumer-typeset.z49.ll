; ModuleID = './MultiSource.Benchmarks.MiBench/50.consumer-typeset.z49.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.GRAPHICS_STATE = type { i32, i32, i32, i32, i16 }
%struct.FILE_POS = type { i8, i8, i16, i32 }
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
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct.anon.14 = type { i32, i32, [1 x %union.rec*] }
%struct.mapvec = type { %union.rec*, i16, i32, i32, %union.rec*, [256 x %union.rec*], [353 x i8], [4 x [256 x i8]] }
%struct.paper = type { i8*, i32, i32 }
%struct.font_rec = type { %struct.metrics*, i8*, i16*, %struct.composite_rec*, i32, %union.rec*, %union.rec*, i16, i16, i16*, i8*, i8*, i16* }
%struct.metrics = type { i16, i16, i16, i16, i16 }
%struct.composite_rec = type { i8, i16, i16 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.0 = type { i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon.2 = type { i8, i8, i16 }
%struct.anon.7 = type { i32, i32, i32, i8 }

@out_fp = internal global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"\0Agrestore\0A\00", align 1
@gs_stack_top = internal global i32 0, align 4
@gs_stack = internal global [50 x %struct.GRAPHICS_STATE] zeroinitializer, align 16
@currentfont = internal global i32 0, align 4
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
@.str.7 = private unnamed_addr constant [8 x i8] c"%hd %s \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"%d %d %d %d %d %d %d LoutGraphic\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"%d %d %d %d %d %d %d %d %d LoutGr2\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"PrintGraphicInclude!\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"PrintGraphicInclude: !incgraphic_ok(x)!\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"PrintGraphicInclude: fp!\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%hd %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"BeginEPSF\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%%%%BeginDocument: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"%%DocumentNeededResources:\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"(atend)\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.20 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@needs = internal global %union.rec* null, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.21 = private unnamed_addr constant [17 x i8] c"%%LanguageLevel:\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"ignoring LanguageLevel comment in %s file %s\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"@IncludeGraphic\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"%%Extensions:\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"ignoring Extensions comment in %s file %s\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%%+\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"lout.eps\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"\0A%%%%EndDocument\0AEndEPSF\0A\00", align 1
@wordcount = internal global i32 0, align 4
@ConvertToPDFName.buff = internal global [200 x i8] zeroinitializer, align 16
@.str.29 = private unnamed_addr constant [5 x i8] c"LOUT\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"tag %s is too long\00", align 1
@ps_back = internal global %struct.back_end_rec { i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, void (%struct._IO_FILE*)* @PS_PrintInitialize, void (i8*, i32, i32)* @PS_PrintLength, void (%union.rec*, i32, i8*, i8*)* @PS_PrintPageSetupForFont, void (i8*, i32)* @PS_PrintPageResourceForFont, void (i32)* @PS_PrintMapping, void (i32, i32, i8*)* @PS_PrintBeforeFirstPage, void (i32, i32, i8*)* @PS_PrintBetweenPages, void ()* @PS_PrintAfterLastPage, void (%union.rec*, i32, i32)* @PS_PrintWord, void (%union.rec*, i32, i32, %union.rec*)* @PS_PrintPlainGraphic, void (i32, i32, i32, i32, i32)* @PS_PrintUnderline, void (i32, i32)* @PS_CoordTranslate, void (i32)* @PS_CoordRotate, void (float, float)* @PS_CoordScale, void (%union.rec*)* @PS_SaveGraphicState, void ()* @PS_RestoreGraphicState, void (%union.rec*)* @PS_PrintGraphicObject, void (%union.rec*)* @PS_DefineGraphicNames, void (%union.rec*, i32, i32)* @PS_SaveTranslateDefineSave, void (%union.rec*, i32, i32)* @PS_PrintGraphicInclude, void (%union.rec*, i32, i32, i32, i32)* @PS_LinkSource, void (%union.rec*, i32, i32, i32, i32)* @PS_LinkDest, void (...)* bitcast (void ()* @PS_LinkCheck to void (...)*) }, align 8
@PS_BackEnd = global %struct.back_end_rec* @ps_back, align 8
@Encapsulated = common global i32 0, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"gsave\0A\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"rotations, graphics etc. too deeply nested (max is %d)\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"%d %d translate\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"%.4f %.4f scale\0A\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"%%EOF\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"%%Trailer\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"PostScript\00", align 1
@prologue_done = internal global i32 0, align 4
@pagecount = internal global i32 0, align 4
@supplied = internal global %union.rec* null, align 8
@link_dest_tab = internal global %struct.anon.14* null, align 8
@link_source_list = internal global %union.rec* null, align 8
@.str.38 = private unnamed_addr constant [44 x i8] c"run out of memory enlarging link dest table\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"%.3fc\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"%%%%IncludeResource: font %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"/%s%s %s /%s LoutRecode\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"/%s { /%s%s LoutFont } def\0A\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"/%s { /%s LoutFont } def\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"%s font %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"%%PageResources:\00", align 1
@MapTable = external global [0 x %struct.mapvec*], align 8
@.str.46 = private unnamed_addr constant [32 x i8] c"%%%%BeginResource: encoding %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"/%s [\0A\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"/%s%c\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"] def\0A\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"%%%%EndResource\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"%!PS-Adobe-3.0 EPSF-3.0\0A\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"%!PS-Adobe-3.0\0A\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"%%%%Creator: %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"Basser Lout Version 3.24 (October 2000)\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"%%%%CreationDate: Sometime Today\0A\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"%%DocumentData: Binary\0A\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"%%DocumentNeededResources: (atend)\0A\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"%%DocumentSuppliedResources: (atend)\0A\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"%%%%DocumentMedia: %s %d %d 0 white ()\0A\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"%%PageOrder: Ascend\0A\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"%%Pages: (atend)\0A\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"%%%%BoundingBox: 0 0 %d %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"%%EndComments\0A\0A\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"%%BeginProlog\0A\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"%%%%BeginResource: procset %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"LoutStartUp\00", align 1
@.str.67 = private unnamed_addr constant [61 x i8] c"/save_cp { currentpoint /cp_y exch def /cp_x exch def } def\0A\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"/restore_cp { cp_x cp_y moveto } def\0A\00", align 1
@.str.69 = private unnamed_addr constant [53 x i8] c"/outline { gsave 1 1 1 setrgbcolor dup show save_cp\0A\00", align 1
@.str.70 = private unnamed_addr constant [55 x i8] c"  grestore true charpath stroke restore_cp } bind def\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"/m  { 3 1 roll moveto show } bind def\0A\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"/mo { 3 1 roll moveto outline } bind def\0A\00", align 1
@.str.73 = private unnamed_addr constant [57 x i8] c"/s  { exch currentpoint exch pop moveto show } bind def\0A\00", align 1
@.str.74 = private unnamed_addr constant [60 x i8] c"/so { exch currentpoint exch pop moveto outline } bind def\0A\00", align 1
@.str.75 = private unnamed_addr constant [42 x i8] c"/k  { exch neg 0 rmoveto show } bind def\0A\00", align 1
@.str.76 = private unnamed_addr constant [45 x i8] c"/ko { exch neg 0 rmoveto outline } bind def\0A\00", align 1
@.str.77 = private unnamed_addr constant [38 x i8] c"/r  { exch 0 rmoveto show } bind def\0A\00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"/ro { exch 0 rmoveto outline } bind def\0A\00", align 1
@.str.79 = private unnamed_addr constant [55 x i8] c"/c  { gsave 3 1 roll rmoveto show grestore } bind def\0A\00", align 1
@.str.80 = private unnamed_addr constant [58 x i8] c"/co { gsave 3 1 roll rmoveto outline grestore } bind def\0A\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"/ul { gsave setlinewidth dup 3 1 roll\0A\00", align 1
@.str.82 = private unnamed_addr constant [48 x i8] c"      moveto lineto stroke grestore } bind def\0A\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"/in { %d mul } def\0A\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"/cm { %d mul } def\0A\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"/pt { %d mul } def\0A\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"/em { %d mul } def\0A\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"/sp { louts mul } def\0A\00", align 1
@.str.88 = private unnamed_addr constant [23 x i8] c"/vs { loutv mul } def\0A\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"/ft { loutf mul } def\0A\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"/dg {           } def\0A\0A\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"/LoutGraphic {\0A\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"  /louts exch def\0A\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"  /loutv exch def\0A\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"  /loutf exch def\0A\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"  /ymark exch def\0A\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"  /xmark exch def\0A\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"  /ysize exch def\0A\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"  /xsize exch def\0A} def\0A\0A\00", align 1
@.str.99 = private unnamed_addr constant [53 x i8] c"/LoutGr2 { gsave translate LoutGraphic gsave } def\0A\0A\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"/LoutFont\0A\00", align 1
@.str.101 = private unnamed_addr constant [35 x i8] c"{ findfont exch scalefont setfont\0A\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"} bind def\0A\0A\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"/LoutRecode {\0A\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"  { findfont dup length dict begin\0A\00", align 1
@.str.105 = private unnamed_addr constant [53 x i8] c"    {1 index /FID ne {def} {pop pop} ifelse} forall\0A\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"    /Encoding exch def\0A\00", align 1
@.str.107 = private unnamed_addr constant [36 x i8] c"    currentdict end definefont pop\0A\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"  }\0A\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"  stopped pop\0A\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"/BeginEPSF {\0A\00", align 1
@.str.111 = private unnamed_addr constant [27 x i8] c"  /LoutEPSFState save def\0A\00", align 1
@.str.112 = private unnamed_addr constant [34 x i8] c"  /dict_count countdictstack def\0A\00", align 1
@.str.113 = private unnamed_addr constant [29 x i8] c"  /op_count count 1 sub def\0A\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"  userdict begin\0A\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"  /showpage { } def\0A\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"  0 setgray 0 setlinecap\0A\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"  1 setlinewidth 0 setlinejoin\0A\00", align 1
@.str.118 = private unnamed_addr constant [41 x i8] c"  10 setmiterlimit [] 0 setdash newpath\0A\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"  /languagelevel where\0A\00", align 1
@.str.120 = private unnamed_addr constant [23 x i8] c"  { pop languagelevel\0A\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"    1 ne\0A\00", align 1
@.str.122 = private unnamed_addr constant [48 x i8] c"    { false setstrokeadjust false setoverprint\0A\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"    } if\0A\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"  } if\0A\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"/EndEPSF {\0A\00", align 1
@.str.126 = private unnamed_addr constant [37 x i8] c"  count op_count sub { pop } repeat\0A\00", align 1
@.str.127 = private unnamed_addr constant [48 x i8] c"  countdictstack dict_count sub { end } repeat\0A\00", align 1
@.str.128 = private unnamed_addr constant [25 x i8] c"  LoutEPSFState restore\0A\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"} bind def\0A\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"%%EndResource\0A\0A\00", align 1
@.str.131 = private unnamed_addr constant [23 x i8] c"cannot open %s file %s\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"@PrependGraphic\00", align 1
@.str.133 = private unnamed_addr constant [20 x i8] c"%s file %s is empty\00", align 1
@.str.134 = private unnamed_addr constant [17 x i8] c"%%BeginResource:\00", align 1
@.str.135 = private unnamed_addr constant [50 x i8] c"%s file %s lacks PostScript BeginResource comment\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"%% %s file %s\0A\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"%%EndProlog\0A\0A\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"%%BeginSetup\0A\00", align 1
@.str.139 = private unnamed_addr constant [71 x i8] c"/pdfmark where {pop} {userdict /pdfmark /cleartomark load put} ifelse\0A\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"%%EndSetup\0A\0A\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"%%%%Page: \00", align 1
@EightBitToPrintForm = external global [0 x i8*], align 8
@.str.142 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@.str.143 = private unnamed_addr constant [20 x i8] c"%%%%BeginPageSetup\0A\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"/pgsave save def\0A\00", align 1
@.str.145 = private unnamed_addr constant [32 x i8] c"%.4f dup scale %d setlinewidth\0A\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"%%%%EndPageSetup\0A\0A\00", align 1
@MediaName.paper_map = internal constant [15 x %struct.paper] [%struct.paper { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 12240, i32 15840 }, %struct.paper { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i32 15840, i32 24480 }, %struct.paper { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.149, i32 0, i32 0), i32 24480, i32 15840 }, %struct.paper { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.150, i32 0, i32 0), i32 12240, i32 20160 }, %struct.paper { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.151, i32 0, i32 0), i32 7920, i32 12240 }, %struct.paper { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.152, i32 0, i32 0), i32 10800, i32 14400 }, %struct.paper { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.153, i32 0, i32 0), i32 16840, i32 23800 }, %struct.paper { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154, i32 0, i32 0), i32 11900, i32 16840 }, %struct.paper { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.155, i32 0, i32 0), i32 8400, i32 11900 }, %struct.paper { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i32 0, i32 0), i32 14580, i32 20640 }, %struct.paper { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i32 0, i32 0), i32 10320, i32 14580 }, %struct.paper { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i32 0, i32 0), i32 12240, i32 18720 }, %struct.paper { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.159, i32 0, i32 0), i32 12200, i32 15600 }, %struct.paper { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.160, i32 0, i32 0), i32 14400, i32 20160 }, %struct.paper zeroinitializer], align 16
@.str.147 = private unnamed_addr constant [7 x i8] c"Letter\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"Tabloid\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"Ledger\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"Legal\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"Statement\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"Executive\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"A5\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"B4\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"B5\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"Folio\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"Quarto\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"10x14\00", align 1
@MediaName.user_defined = internal global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.161, i32 0, i32 0), align 8
@.str.161 = private unnamed_addr constant [6 x i8] c"Plain\00", align 1
@.str.162 = private unnamed_addr constant [26 x i8] c"\0Apgsave restore\0Ashowpage\0A\00", align 1
@.str.163 = private unnamed_addr constant [46 x i8] c"truncating -EPS document at end of first page\00", align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"\0A%%%%Page: \00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"%%%%EndPageSetup\0A\00", align 1
@.str.166 = private unnamed_addr constant [14 x i8] c"\0A%%%%Trailer\0A\00", align 1
@.str.167 = private unnamed_addr constant [23 x i8] c"PrintAfterLast: needs!\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.169 = private unnamed_addr constant [43 x i8] c"%%%%DocumentSuppliedResources: procset %s\0A\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"%%%%+ %s\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"%%%%Pages: %d\0A\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"%%%%EOF\0A\00", align 1
@TotalWordCount = external global i32, align 4
@.str.173 = private unnamed_addr constant [7 x i8] c"%hd %s\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@finfo = external global %struct.font_rec*, align 8
@.str.175 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.176 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"mo\00", align 1
@.str.178 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c")%s \00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.181 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c")%s %d(\00", align 1
@.str.183 = private unnamed_addr constant [3 x i8] c"ko\00", align 1
@.str.184 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c")%s\0A\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c"%d %d (%c)%s \00", align 1
@.str.187 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.188 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.189 = private unnamed_addr constant [59 x i8] c"PS_PrintPlainGraphic: this routine should never be called!\00", align 1
@.str.190 = private unnamed_addr constant [16 x i8] c"%d %d %d %d ul\0A\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"%.4f rotate\0A\00", align 1
@.str.192 = private unnamed_addr constant [62 x i8] c"\0A[ /Rect [%d %d %d %d] /Subtype /Link /Dest /%s /ANN pdfmark\0A\00", align 1
@.str.193 = private unnamed_addr constant [28 x i8] c"\0A[ /Dest /%s /DEST pdfmark\0A\00", align 1
@.str.194 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str.195 = private unnamed_addr constant [56 x i8] c"link destination %s ignored (there is already one at%s)\00", align 1
@.str.196 = private unnamed_addr constant [37 x i8] c"link name %s used twice (first at%s)\00", align 1
@.str.197 = private unnamed_addr constant [34 x i8] c" PS_LinkCheck: !is_word(type(y))!\00", align 1
@.str.198 = private unnamed_addr constant [38 x i8] c"link name %s has no destination point\00", align 1

; Function Attrs: nounwind uwtable
define void @PS_RestoreGraphicState() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
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

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @PS_PrintGraphicObject(%union.rec* %x) #0 {
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
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call = call i32 @fputs(i8* %arraydecay, %struct._IO_FILE* %3)
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

for.cond:                                         ; preds = %for.inc.99, %sw.bb.3
  %6 = load %union.rec*, %union.rec** %link, align 8
  %7 = load %union.rec*, %union.rec** %x.addr, align 8
  %cmp = icmp ne %union.rec* %6, %7
  br i1 %cmp, label %for.body, label %for.end.104

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
  br i1 %cmp27, label %if.then, label %if.else.44

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
  %call34 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %18)
  br label %if.end.43

if.else:                                          ; preds = %if.then
  %19 = load %union.rec*, %union.rec** %y, align 8
  %os135 = bitcast %union.rec* %19 to %struct.word_type*
  %ou236 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 2
  %os2137 = bitcast %union.SECOND_UNION* %ou236 to %struct.anon.0*
  %ohspace = getelementptr inbounds %struct.anon.0, %struct.anon.0* %os2137, i32 0, i32 1
  %20 = load i8, i8* %ohspace, align 1
  %conv38 = zext i8 %20 to i32
  %cmp39 = icmp sgt i32 %conv38, 0
  br i1 %cmp39, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.else
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call42 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %21)
  br label %if.end

if.end:                                           ; preds = %if.then.41, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %if.then.33
  br label %if.end.98

if.else.44:                                       ; preds = %for.end
  %22 = load %union.rec*, %union.rec** %y, align 8
  %os145 = bitcast %union.rec* %22 to %struct.word_type*
  %ou146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os145, i32 0, i32 1
  %os1147 = bitcast %union.FIRST_UNION* %ou146 to %struct.anon*
  %otype48 = getelementptr inbounds %struct.anon, %struct.anon* %os1147, i32 0, i32 0
  %23 = load i8, i8* %otype48, align 1
  %conv49 = zext i8 %23 to i32
  %cmp50 = icmp eq i32 %conv49, 11
  br i1 %cmp50, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.44
  %24 = load %union.rec*, %union.rec** %y, align 8
  %os152 = bitcast %union.rec* %24 to %struct.word_type*
  %ou153 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 1
  %os1154 = bitcast %union.FIRST_UNION* %ou153 to %struct.anon*
  %otype55 = getelementptr inbounds %struct.anon, %struct.anon* %os1154, i32 0, i32 0
  %25 = load i8, i8* %otype55, align 1
  %conv56 = zext i8 %25 to i32
  %cmp57 = icmp eq i32 %conv56, 12
  br i1 %cmp57, label %if.then.67, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false
  %26 = load %union.rec*, %union.rec** %y, align 8
  %os160 = bitcast %union.rec* %26 to %struct.word_type*
  %ou161 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 1
  %os1162 = bitcast %union.FIRST_UNION* %ou161 to %struct.anon*
  %otype63 = getelementptr inbounds %struct.anon, %struct.anon* %os1162, i32 0, i32 0
  %27 = load i8, i8* %otype63, align 1
  %conv64 = zext i8 %27 to i32
  %cmp65 = icmp eq i32 %conv64, 17
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %lor.lhs.false.59, %lor.lhs.false, %if.else.44
  %28 = load %union.rec*, %union.rec** %y, align 8
  call void @PS_PrintGraphicObject(%union.rec* %28)
  br label %if.end.97

if.else.68:                                       ; preds = %lor.lhs.false.59
  %29 = load %union.rec*, %union.rec** %y, align 8
  %os169 = bitcast %union.rec* %29 to %struct.word_type*
  %ou170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os169, i32 0, i32 1
  %os1171 = bitcast %union.FIRST_UNION* %ou170 to %struct.anon*
  %otype72 = getelementptr inbounds %struct.anon, %struct.anon* %os1171, i32 0, i32 0
  %30 = load i8, i8* %otype72, align 1
  %conv73 = zext i8 %30 to i32
  %cmp74 = icmp eq i32 %conv73, 26
  br i1 %cmp74, label %if.then.91, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %if.else.68
  %31 = load %union.rec*, %union.rec** %y, align 8
  %os177 = bitcast %union.rec* %31 to %struct.word_type*
  %ou178 = getelementptr inbounds %struct.word_type, %struct.word_type* %os177, i32 0, i32 1
  %os1179 = bitcast %union.FIRST_UNION* %ou178 to %struct.anon*
  %otype80 = getelementptr inbounds %struct.anon, %struct.anon* %os1179, i32 0, i32 0
  %32 = load i8, i8* %otype80, align 1
  %conv81 = zext i8 %32 to i32
  %cmp82 = icmp sge i32 %conv81, 119
  br i1 %cmp82, label %land.lhs.true, label %if.else.92

land.lhs.true:                                    ; preds = %lor.lhs.false.76
  %33 = load %union.rec*, %union.rec** %y, align 8
  %os184 = bitcast %union.rec* %33 to %struct.word_type*
  %ou185 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 1
  %os1186 = bitcast %union.FIRST_UNION* %ou185 to %struct.anon*
  %otype87 = getelementptr inbounds %struct.anon, %struct.anon* %os1186, i32 0, i32 0
  %34 = load i8, i8* %otype87, align 1
  %conv88 = zext i8 %34 to i32
  %cmp89 = icmp sle i32 %conv88, 138
  br i1 %cmp89, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %land.lhs.true, %if.else.68
  br label %if.end.96

if.else.92:                                       ; preds = %land.lhs.true, %lor.lhs.false.76
  %35 = load %union.rec*, %union.rec** %x.addr, align 8
  %os193 = bitcast %union.rec* %35 to %struct.word_type*
  %ou194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou194 to %struct.FILE_POS*
  %call95 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.92, %if.then.91
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.67
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.43
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %36 = load %union.rec*, %union.rec** %link, align 8
  %os1100 = bitcast %union.rec* %36 to %struct.word_type*
  %olist101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1100, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist101, i32 0, i64 0
  %osucc103 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx102, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %osucc103, align 8
  store %union.rec* %37, %union.rec** %link, align 8
  br label %for.cond

for.end.104:                                      ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %38 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1105 = bitcast %union.rec* %38 to %struct.word_type*
  %ou1106 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1105, i32 0, i32 1
  %ofpos107 = bitcast %union.FIRST_UNION* %ou1106 to %struct.FILE_POS*
  %call108 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.104, %sw.bb
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define void @PS_DefineGraphicNames(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
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
  br i1 %cmp2, label %if.then.4, label %if.end.20

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
  br i1 %cmp11, label %if.then.13, label %if.end.19

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
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %call16, i8* %call17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.13, %if.then.4
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os221 = bitcast %union.rec* %12 to %struct.closure_type*
  %ou422 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os221, i32 0, i32 4
  %osave_style23 = bitcast %union.FOURTH_UNION* %ou422 to %struct.STYLE*
  %ocolour = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style23, i32 0, i32 4
  %bf.load24 = load i32, i32* %ocolour, align 4
  %bf.lshr = lshr i32 %bf.load24, 12
  %bf.clear25 = and i32 %bf.lshr, 1023
  %13 = load i32, i32* @currentcolour, align 4
  %cmp26 = icmp ne i32 %bf.clear25, %13
  br i1 %cmp26, label %if.then.28, label %if.end.42

if.then.28:                                       ; preds = %if.end.20
  %14 = load %union.rec*, %union.rec** %x.addr, align 8
  %os229 = bitcast %union.rec* %14 to %struct.closure_type*
  %ou430 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os229, i32 0, i32 4
  %osave_style31 = bitcast %union.FOURTH_UNION* %ou430 to %struct.STYLE*
  %ocolour32 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style31, i32 0, i32 4
  %bf.load33 = load i32, i32* %ocolour32, align 4
  %bf.lshr34 = lshr i32 %bf.load33, 12
  %bf.clear35 = and i32 %bf.lshr34, 1023
  store i32 %bf.clear35, i32* @currentcolour, align 4
  %15 = load i32, i32* @currentcolour, align 4
  %cmp36 = icmp ugt i32 %15, 0
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.then.28
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %17 = load i32, i32* @currentcolour, align 4
  %call39 = call i8* @ColourCommand(i32 %17)
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %call39)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.then.28
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.20
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %19 = load %union.rec*, %union.rec** %x.addr, align 8
  %os143 = bitcast %union.rec* %19 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  %20 = load i32, i32* %arrayidx, align 4
  %21 = load %union.rec*, %union.rec** %x.addr, align 8
  %os144 = bitcast %union.rec* %21 to %struct.word_type*
  %ou345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os144, i32 0, i32 3
  %os3146 = bitcast %union.THIRD_UNION* %ou345 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3146, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %22 = load i32, i32* %arrayidx47, align 4
  %add = add nsw i32 %20, %22
  %23 = load %union.rec*, %union.rec** %x.addr, align 8
  %os148 = bitcast %union.rec* %23 to %struct.word_type*
  %ou349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os148, i32 0, i32 3
  %os3150 = bitcast %union.THIRD_UNION* %ou349 to %struct.anon.6*
  %oback51 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x i32], [2 x i32]* %oback51, i32 0, i64 1
  %24 = load i32, i32* %arrayidx52, align 4
  %25 = load %union.rec*, %union.rec** %x.addr, align 8
  %os153 = bitcast %union.rec* %25 to %struct.word_type*
  %ou354 = getelementptr inbounds %struct.word_type, %struct.word_type* %os153, i32 0, i32 3
  %os3155 = bitcast %union.THIRD_UNION* %ou354 to %struct.anon.6*
  %ofwd56 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3155, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd56, i32 0, i64 1
  %26 = load i32, i32* %arrayidx57, align 4
  %add58 = add nsw i32 %24, %26
  %27 = load %union.rec*, %union.rec** %x.addr, align 8
  %os159 = bitcast %union.rec* %27 to %struct.word_type*
  %ou360 = getelementptr inbounds %struct.word_type, %struct.word_type* %os159, i32 0, i32 3
  %os3161 = bitcast %union.THIRD_UNION* %ou360 to %struct.anon.6*
  %oback62 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3161, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [2 x i32], [2 x i32]* %oback62, i32 0, i64 0
  %28 = load i32, i32* %arrayidx63, align 4
  %29 = load %union.rec*, %union.rec** %x.addr, align 8
  %os164 = bitcast %union.rec* %29 to %struct.word_type*
  %ou365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os164, i32 0, i32 3
  %os3166 = bitcast %union.THIRD_UNION* %ou365 to %struct.anon.6*
  %ofwd67 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3166, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd67, i32 0, i64 1
  %30 = load i32, i32* %arrayidx68, align 4
  %31 = load i32, i32* @currentfont, align 4
  %cmp69 = icmp ule i32 %31, 0
  br i1 %cmp69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.42
  br label %cond.end

cond.false:                                       ; preds = %if.end.42
  %32 = load i32, i32* @currentfont, align 4
  %33 = load %union.rec*, %union.rec** %x.addr, align 8
  %call71 = call i32 @FontSize(i32 %32, %union.rec* %33)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 240, %cond.true ], [ %call71, %cond.false ]
  %34 = load %union.rec*, %union.rec** %x.addr, align 8
  %os272 = bitcast %union.rec* %34 to %struct.closure_type*
  %ou473 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os272, i32 0, i32 4
  %osave_style74 = bitcast %union.FOURTH_UNION* %ou473 to %struct.STYLE*
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style74, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap, i32 0, i32 1
  %35 = load i16, i16* %owidth, align 2
  %conv75 = sext i16 %35 to i32
  %36 = load %union.rec*, %union.rec** %x.addr, align 8
  %os276 = bitcast %union.rec* %36 to %struct.closure_type*
  %ou477 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os276, i32 0, i32 4
  %osave_style78 = bitcast %union.FOURTH_UNION* %ou477 to %struct.STYLE*
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style78, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu2 to %struct.GAP*
  %owidth79 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap, i32 0, i32 1
  %37 = load i16, i16* %owidth79, align 2
  %conv80 = sext i16 %37 to i32
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0), i32 %add, i32 %add58, i32 %28, i32 %30, i32 %cond, i32 %conv75, i32 %conv80)
  ret void
}

declare i32 @FontHalfXHeight(i32) #1

declare i32 @FontSize(i32, %union.rec*) #1

declare i8* @FontName(i32) #1

declare i8* @ColourCommand(i32) #1

; Function Attrs: nounwind uwtable
define void @PS_SaveTranslateDefineSave(%union.rec* %x, i32 %xdist, i32 %ydist) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %xdist.addr = alloca i32, align 4
  %ydist.addr = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %xdist, i32* %xdist.addr, align 4
  store i32 %ydist, i32* %ydist.addr, align 4
  %0 = load i32, i32* @gs_stack_top, align 4
  %cmp = icmp sge i32 %0, 49
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %1 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %ofont = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style, i32 0, i32 4
  %bf.load = load i32, i32* %ofont, align 4
  %bf.clear = and i32 %bf.load, 4095
  %2 = load i32, i32* @currentfont, align 4
  %cmp1 = icmp ne i32 %bf.clear, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load %union.rec*, %union.rec** %x.addr, align 8
  %os23 = bitcast %union.rec* %3 to %struct.closure_type*
  %ou44 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os23, i32 0, i32 4
  %osave_style5 = bitcast %union.FOURTH_UNION* %ou44 to %struct.STYLE*
  %ocolour = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style5, i32 0, i32 4
  %bf.load6 = load i32, i32* %ocolour, align 4
  %bf.lshr = lshr i32 %bf.load6, 12
  %bf.clear7 = and i32 %bf.lshr, 1023
  %4 = load i32, i32* @currentcolour, align 4
  %cmp8 = icmp ne i32 %bf.clear7, %4
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @PS_SaveGraphicState(%union.rec* %5)
  %6 = load i32, i32* %xdist.addr, align 4
  %7 = load i32, i32* %ydist.addr, align 4
  call void @PS_CoordTranslate(i32 %6, i32 %7)
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @PS_DefineGraphicNames(%union.rec* %8)
  %9 = load %union.rec*, %union.rec** %x.addr, align 8
  call void @PS_SaveGraphicState(%union.rec* %9)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.2
  %10 = load i32, i32* @gs_stack_top, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @gs_stack_top, align 4
  %11 = load i32, i32* @currentfont, align 4
  %12 = load i32, i32* @gs_stack_top, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom
  %gs_font = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx, i32 0, i32 0
  store i32 %11, i32* %gs_font, align 4
  %13 = load i32, i32* @currentcolour, align 4
  %14 = load i32, i32* @gs_stack_top, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom9
  %gs_colour = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx10, i32 0, i32 1
  store i32 %13, i32* %gs_colour, align 4
  %15 = load i32, i32* @cpexists, align 4
  %16 = load i32, i32* @gs_stack_top, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom11
  %gs_cpexists = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx12, i32 0, i32 2
  store i32 %15, i32* %gs_cpexists, align 4
  %17 = load i32, i32* @currenty, align 4
  %18 = load i32, i32* @gs_stack_top, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom13
  %gs_currenty = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx14, i32 0, i32 3
  store i32 %17, i32* %gs_currenty, align 4
  %19 = load i16, i16* @currentxheight2, align 2
  %20 = load i32, i32* @gs_stack_top, align 4
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom15
  %gs_xheight2 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx16, i32 0, i32 4
  store i16 %19, i16* %gs_xheight2, align 2
  store i32 0, i32* @cpexists, align 4
  %21 = load i32, i32* @gs_stack_top, align 4
  %inc17 = add nsw i32 %21, 1
  store i32 %inc17, i32* @gs_stack_top, align 4
  %22 = load i32, i32* @currentfont, align 4
  %23 = load i32, i32* @gs_stack_top, align 4
  %idxprom18 = sext i32 %23 to i64
  %arrayidx19 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom18
  %gs_font20 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx19, i32 0, i32 0
  store i32 %22, i32* %gs_font20, align 4
  %24 = load i32, i32* @currentcolour, align 4
  %25 = load i32, i32* @gs_stack_top, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom21
  %gs_colour23 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx22, i32 0, i32 1
  store i32 %24, i32* %gs_colour23, align 4
  %26 = load i32, i32* @cpexists, align 4
  %27 = load i32, i32* @gs_stack_top, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom24
  %gs_cpexists26 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx25, i32 0, i32 2
  store i32 %26, i32* %gs_cpexists26, align 4
  %28 = load i32, i32* @currenty, align 4
  %29 = load i32, i32* @gs_stack_top, align 4
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom27
  %gs_currenty29 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx28, i32 0, i32 3
  store i32 %28, i32* %gs_currenty29, align 4
  %30 = load i16, i16* @currentxheight2, align 2
  %31 = load i32, i32* @gs_stack_top, align 4
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom30
  %gs_xheight232 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx31, i32 0, i32 4
  store i16 %30, i16* %gs_xheight232, align 2
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %33 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %33 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  %34 = load i32, i32* %arrayidx33, align 4
  %35 = load %union.rec*, %union.rec** %x.addr, align 8
  %os134 = bitcast %union.rec* %35 to %struct.word_type*
  %ou335 = getelementptr inbounds %struct.word_type, %struct.word_type* %os134, i32 0, i32 3
  %os3136 = bitcast %union.THIRD_UNION* %ou335 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3136, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %36 = load i32, i32* %arrayidx37, align 4
  %add = add nsw i32 %34, %36
  %37 = load %union.rec*, %union.rec** %x.addr, align 8
  %os138 = bitcast %union.rec* %37 to %struct.word_type*
  %ou339 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 3
  %os3140 = bitcast %union.THIRD_UNION* %ou339 to %struct.anon.6*
  %oback41 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3140, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x i32], [2 x i32]* %oback41, i32 0, i64 1
  %38 = load i32, i32* %arrayidx42, align 4
  %39 = load %union.rec*, %union.rec** %x.addr, align 8
  %os143 = bitcast %union.rec* %39 to %struct.word_type*
  %ou344 = getelementptr inbounds %struct.word_type, %struct.word_type* %os143, i32 0, i32 3
  %os3145 = bitcast %union.THIRD_UNION* %ou344 to %struct.anon.6*
  %ofwd46 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3145, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd46, i32 0, i64 1
  %40 = load i32, i32* %arrayidx47, align 4
  %add48 = add nsw i32 %38, %40
  %41 = load %union.rec*, %union.rec** %x.addr, align 8
  %os149 = bitcast %union.rec* %41 to %struct.word_type*
  %ou350 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 3
  %os3151 = bitcast %union.THIRD_UNION* %ou350 to %struct.anon.6*
  %oback52 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3151, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [2 x i32], [2 x i32]* %oback52, i32 0, i64 0
  %42 = load i32, i32* %arrayidx53, align 4
  %43 = load %union.rec*, %union.rec** %x.addr, align 8
  %os154 = bitcast %union.rec* %43 to %struct.word_type*
  %ou355 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 3
  %os3156 = bitcast %union.THIRD_UNION* %ou355 to %struct.anon.6*
  %ofwd57 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3156, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd57, i32 0, i64 1
  %44 = load i32, i32* %arrayidx58, align 4
  %45 = load i32, i32* @currentfont, align 4
  %cmp59 = icmp ule i32 %45, 0
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %46 = load i32, i32* @currentfont, align 4
  %47 = load %union.rec*, %union.rec** %x.addr, align 8
  %call = call i32 @FontSize(i32 %46, %union.rec* %47)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 240, %cond.true ], [ %call, %cond.false ]
  %48 = load %union.rec*, %union.rec** %x.addr, align 8
  %os260 = bitcast %union.rec* %48 to %struct.closure_type*
  %ou461 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os260, i32 0, i32 4
  %osave_style62 = bitcast %union.FOURTH_UNION* %ou461 to %struct.STYLE*
  %osu1 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style62, i32 0, i32 0
  %oline_gap = bitcast %union.anon* %osu1 to %struct.GAP*
  %owidth = getelementptr inbounds %struct.GAP, %struct.GAP* %oline_gap, i32 0, i32 1
  %49 = load i16, i16* %owidth, align 2
  %conv = sext i16 %49 to i32
  %50 = load %union.rec*, %union.rec** %x.addr, align 8
  %os263 = bitcast %union.rec* %50 to %struct.closure_type*
  %ou464 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os263, i32 0, i32 4
  %osave_style65 = bitcast %union.FOURTH_UNION* %ou464 to %struct.STYLE*
  %osu2 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style65, i32 0, i32 1
  %ospace_gap = bitcast %union.anon.10* %osu2 to %struct.GAP*
  %owidth66 = getelementptr inbounds %struct.GAP, %struct.GAP* %ospace_gap, i32 0, i32 1
  %51 = load i16, i16* %owidth66, align 2
  %conv67 = sext i16 %51 to i32
  %52 = load i32, i32* %xdist.addr, align 4
  %53 = load i32, i32* %ydist.addr, align 4
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), i32 %add, i32 %add48, i32 %42, i32 %44, i32 %cond, i32 %conv, i32 %conv67, i32 %52, i32 %53)
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_SaveGraphicState(%union.rec* %x) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0))
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
  %call1 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 7, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.32, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i32 50)
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
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom2
  %gs_colour = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx3, i32 0, i32 1
  store i32 %6, i32* %gs_colour, align 4
  %8 = load i32, i32* @cpexists, align 4
  %9 = load i32, i32* @gs_stack_top, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom4
  %gs_cpexists = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx5, i32 0, i32 2
  store i32 %8, i32* %gs_cpexists, align 4
  %10 = load i32, i32* @currenty, align 4
  %11 = load i32, i32* @gs_stack_top, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom6
  %gs_currenty = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx7, i32 0, i32 3
  store i32 %10, i32* %gs_currenty, align 4
  %12 = load i16, i16* @currentxheight2, align 2
  %13 = load i32, i32* @gs_stack_top, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [50 x %struct.GRAPHICS_STATE], [50 x %struct.GRAPHICS_STATE]* @gs_stack, i32 0, i64 %idxprom8
  %gs_xheight2 = getelementptr inbounds %struct.GRAPHICS_STATE, %struct.GRAPHICS_STATE* %arrayidx9, i32 0, i32 4
  store i16 %12, i16* %gs_xheight2, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_CoordTranslate(i32 %xdist, i32 %ydist) #0 {
entry:
  %xdist.addr = alloca i32, align 4
  %ydist.addr = alloca i32, align 4
  store i32 %xdist, i32* %xdist.addr, align 4
  store i32 %ydist, i32* %ydist.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %1 = load i32, i32* %xdist.addr, align 4
  %2 = load i32, i32* %ydist.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), i32 %1, i32 %2)
  store i32 0, i32* @cpexists, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PS_PrintGraphicInclude(%union.rec* %x, i32 %colmark, i32 %rowmark) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %colmark.addr = alloca i32, align 4
  %rowmark.addr = alloca i32, align 4
  %y = alloca %union.rec*, align 8
  %full_name = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %state = alloca i32, align 4
  %compressed = alloca i32, align 4
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store i32 %colmark, i32* %colmark.addr, align 4
  store i32 %rowmark, i32* %rowmark.addr, align 4
  %0 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %1 = load i8, i8* %otype, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 94
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %union.rec*, %union.rec** %x.addr, align 8
  %os12 = bitcast %union.rec* %2 to %struct.word_type*
  %ou13 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %os114 = bitcast %union.FIRST_UNION* %ou13 to %struct.anon*
  %otype5 = getelementptr inbounds %struct.anon, %struct.anon* %os114, i32 0, i32 0
  %3 = load i8, i8* %otype5, align 1
  %conv6 = zext i8 %3 to i32
  %cmp7 = icmp eq i32 %conv6, 95
  br i1 %cmp7, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %5 = load %union.rec*, %union.rec** %x.addr, align 8
  %os19 = bitcast %union.rec* %5 to %struct.word_type*
  %ou2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os19, i32 0, i32 2
  %os23 = bitcast %union.SECOND_UNION* %ou2 to %struct.anon.2*
  %ocross_type = getelementptr inbounds %struct.anon.2, %struct.anon.2* %os23, i32 0, i32 1
  %6 = load i8, i8* %ocross_type, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call11 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %8 = load %union.rec*, %union.rec** %x.addr, align 8
  %os113 = bitcast %union.rec* %8 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %9 = load %union.rec*, %union.rec** %osucc, align 8
  %os115 = bitcast %union.rec* %9 to %struct.word_type*
  %olist16 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist16, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx17, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %10, %union.rec** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %11 = load %union.rec*, %union.rec** %y, align 8
  %os118 = bitcast %union.rec* %11 to %struct.word_type*
  %ou119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os118, i32 0, i32 1
  %os1120 = bitcast %union.FIRST_UNION* %ou119 to %struct.anon*
  %otype21 = getelementptr inbounds %struct.anon, %struct.anon* %os1120, i32 0, i32 0
  %12 = load i8, i8* %otype21, align 1
  %conv22 = zext i8 %12 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %union.rec*, %union.rec** %y, align 8
  %os125 = bitcast %union.rec* %13 to %struct.word_type*
  %olist26 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist26, i32 0, i64 1
  %opred28 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx27, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %opred28, align 8
  store %union.rec* %14, %union.rec** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %union.rec*, %union.rec** %y, align 8
  %os129 = bitcast %union.rec* %15 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %16 = load %union.rec*, %union.rec** %x.addr, align 8
  %os130 = bitcast %union.rec* %16 to %struct.word_type*
  %ou131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 1
  %os1132 = bitcast %union.FIRST_UNION* %ou131 to %struct.anon*
  %otype33 = getelementptr inbounds %struct.anon, %struct.anon* %os1132, i32 0, i32 0
  %17 = load i8, i8* %otype33, align 1
  %18 = load %union.rec*, %union.rec** %y, align 8
  %os134 = bitcast %union.rec* %18 to %struct.word_type*
  %ou135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os134, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou135 to %struct.FILE_POS*
  %call36 = call %struct._IO_FILE* @OpenIncGraphicFile(i8* %arraydecay, i8 zeroext %17, %union.rec** %full_name, %struct.FILE_POS* %ofpos, i32* %compressed)
  store %struct._IO_FILE* %call36, %struct._IO_FILE** %fp, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp37 = icmp ne %struct._IO_FILE* %19, null
  br i1 %cmp37, label %if.end.41, label %if.then.39

if.then.39:                                       ; preds = %for.end
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call40 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %for.end
  %21 = load %union.rec*, %union.rec** %x.addr, align 8
  %os2 = bitcast %union.rec* %21 to %struct.closure_type*
  %ou4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os2, i32 0, i32 4
  %osave_style = bitcast %union.FOURTH_UNION* %ou4 to %struct.STYLE*
  %ofont = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style, i32 0, i32 4
  %bf.load = load i32, i32* %ofont, align 4
  %bf.clear = and i32 %bf.load, 4095
  %22 = load i32, i32* @currentfont, align 4
  %cmp42 = icmp ne i32 %bf.clear, %22
  br i1 %cmp42, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %if.end.41
  %23 = load %union.rec*, %union.rec** %x.addr, align 8
  %os245 = bitcast %union.rec* %23 to %struct.closure_type*
  %ou446 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os245, i32 0, i32 4
  %osave_style47 = bitcast %union.FOURTH_UNION* %ou446 to %struct.STYLE*
  %ofont48 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style47, i32 0, i32 4
  %bf.load49 = load i32, i32* %ofont48, align 4
  %bf.clear50 = and i32 %bf.load49, 4095
  store i32 %bf.clear50, i32* @currentfont, align 4
  %24 = load i32, i32* @currentfont, align 4
  %call51 = call i32 @FontHalfXHeight(i32 %24)
  %conv52 = trunc i32 %call51 to i16
  store i16 %conv52, i16* @currentxheight2, align 2
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %26 = load i32, i32* @currentfont, align 4
  %27 = load %union.rec*, %union.rec** %x.addr, align 8
  %call53 = call i32 @FontSize(i32 %26, %union.rec* %27)
  %28 = load i32, i32* @currentfont, align 4
  %call54 = call i8* @FontName(i32 %28)
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 %call53, i8* %call54)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.44, %if.end.41
  %29 = load %union.rec*, %union.rec** %x.addr, align 8
  %os257 = bitcast %union.rec* %29 to %struct.closure_type*
  %ou458 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os257, i32 0, i32 4
  %osave_style59 = bitcast %union.FOURTH_UNION* %ou458 to %struct.STYLE*
  %ocolour = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style59, i32 0, i32 4
  %bf.load60 = load i32, i32* %ocolour, align 4
  %bf.lshr = lshr i32 %bf.load60, 12
  %bf.clear61 = and i32 %bf.lshr, 1023
  %30 = load i32, i32* @currentcolour, align 4
  %cmp62 = icmp ne i32 %bf.clear61, %30
  br i1 %cmp62, label %if.then.64, label %if.end.78

if.then.64:                                       ; preds = %if.end.56
  %31 = load %union.rec*, %union.rec** %x.addr, align 8
  %os265 = bitcast %union.rec* %31 to %struct.closure_type*
  %ou466 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %os265, i32 0, i32 4
  %osave_style67 = bitcast %union.FOURTH_UNION* %ou466 to %struct.STYLE*
  %ocolour68 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %osave_style67, i32 0, i32 4
  %bf.load69 = load i32, i32* %ocolour68, align 4
  %bf.lshr70 = lshr i32 %bf.load69, 12
  %bf.clear71 = and i32 %bf.lshr70, 1023
  store i32 %bf.clear71, i32* @currentcolour, align 4
  %32 = load i32, i32* @currentcolour, align 4
  %cmp72 = icmp ugt i32 %32, 0
  br i1 %cmp72, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %if.then.64
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %34 = load i32, i32* @currentcolour, align 4
  %call75 = call i8* @ColourCommand(i32 %34)
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* %call75)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %if.then.64
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.56
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0))
  %36 = load i32, i32* %colmark.addr, align 4
  %37 = load %union.rec*, %union.rec** %x.addr, align 8
  %os180 = bitcast %union.rec* %37 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 0
  %38 = load i32, i32* %arrayidx81, align 4
  %sub = sub nsw i32 %36, %38
  %39 = load i32, i32* %rowmark.addr, align 4
  %40 = load %union.rec*, %union.rec** %x.addr, align 8
  %os182 = bitcast %union.rec* %40 to %struct.word_type*
  %ou383 = getelementptr inbounds %struct.word_type, %struct.word_type* %os182, i32 0, i32 3
  %os3184 = bitcast %union.THIRD_UNION* %ou383 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3184, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 1
  %41 = load i32, i32* %arrayidx85, align 4
  %sub86 = sub nsw i32 %39, %41
  call void @PS_CoordTranslate(i32 %sub, i32 %sub86)
  call void @PS_CoordScale(float 2.000000e+01, float 2.000000e+01)
  %42 = load %union.rec*, %union.rec** %y, align 8
  %os187 = bitcast %union.rec* %42 to %struct.word_type*
  %ou388 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 3
  %os3189 = bitcast %union.THIRD_UNION* %ou388 to %struct.anon.6*
  %oback90 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3189, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [2 x i32], [2 x i32]* %oback90, i32 0, i64 0
  %43 = load i32, i32* %arrayidx91, align 4
  %sub92 = sub nsw i32 0, %43
  %44 = load %union.rec*, %union.rec** %y, align 8
  %os193 = bitcast %union.rec* %44 to %struct.word_type*
  %ou394 = getelementptr inbounds %struct.word_type, %struct.word_type* %os193, i32 0, i32 3
  %os3195 = bitcast %union.THIRD_UNION* %ou394 to %struct.anon.6*
  %oback96 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3195, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [2 x i32], [2 x i32]* %oback96, i32 0, i64 1
  %45 = load i32, i32* %arrayidx97, align 4
  %sub98 = sub nsw i32 0, %45
  call void @PS_CoordTranslate(i32 %sub92, i32 %sub98)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %47 = load %union.rec*, %union.rec** %full_name, align 8
  %os199 = bitcast %union.rec* %47 to %struct.word_type*
  %ostring100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os199, i32 0, i32 4
  %arraydecay101 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring100, i32 0, i32 0
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay101)
  %arraydecay103 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call104 = call i8* @fgets(i8* %arraydecay103, i32 512, %struct._IO_FILE* %48)
  %cmp105 = icmp eq i8* %call104, null
  %cond = select i1 %cmp105, i32 2, i32 0
  store i32 %cond, i32* %state, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.78
  %49 = load i32, i32* %state, align 4
  %cmp107 = icmp ne i32 %49, 2
  br i1 %cmp107, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %50 = load i32, i32* %state, align 4
  switch i32 %50, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.281
  ]

sw.bb:                                            ; preds = %while.body
  %arraydecay109 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call110 = call i32 @StringBeginsWith(i8* %arraydecay109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0))
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %land.lhs.true, label %if.else.243

land.lhs.true:                                    ; preds = %sw.bb
  %arraydecay112 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call113 = call i32 @StringContains(i8* %arraydecay112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0))
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.else.243, label %if.then.115

if.then.115:                                      ; preds = %land.lhs.true
  %arrayidx116 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 26
  %51 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call117 = call %union.rec* @MakeWord(i32 11, i8* %arrayidx116, %struct.FILE_POS* %51)
  store %union.rec* %call117, %union.rec** %y, align 8
  %52 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv118 = zext i8 %52 to i32
  store i32 %conv118, i32* @zz_size, align 4
  %conv119 = sext i32 %conv118 to i64
  %cmp120 = icmp uge i64 %conv119, 265
  br i1 %cmp120, label %if.then.122, label %if.else

if.then.122:                                      ; preds = %if.then.115
  %53 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call123 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %53)
  br label %if.end.140

if.else:                                          ; preds = %if.then.115
  %54 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %54 to i64
  %arrayidx124 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %55 = load %union.rec*, %union.rec** %arrayidx124, align 8
  %cmp125 = icmp eq %union.rec* %55, null
  br i1 %cmp125, label %if.then.127, label %if.else.129

if.then.127:                                      ; preds = %if.else
  %56 = load i32, i32* @zz_size, align 4
  %57 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call128 = call %union.rec* @GetMemory(i32 %56, %struct.FILE_POS* %57)
  store %union.rec* %call128, %union.rec** @zz_hold, align 8
  br label %if.end.139

if.else.129:                                      ; preds = %if.else
  %58 = load i32, i32* @zz_size, align 4
  %idxprom130 = sext i32 %58 to i64
  %arrayidx131 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom130
  %59 = load %union.rec*, %union.rec** %arrayidx131, align 8
  store %union.rec* %59, %union.rec** @zz_hold, align 8
  store %union.rec* %59, %union.rec** @zz_hold, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1133 = bitcast %union.rec* %60 to %struct.word_type*
  %olist134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1133, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist134, i32 0, i64 0
  %opred136 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx135, i32 0, i32 0
  %61 = load %union.rec*, %union.rec** %opred136, align 8
  %62 = load i32, i32* @zz_size, align 4
  %idxprom137 = sext i32 %62 to i64
  %arrayidx138 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom137
  store %union.rec* %61, %union.rec** %arrayidx138, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.129, %if.then.127
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.then.122
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1141 = bitcast %union.rec* %63 to %struct.word_type*
  %ou1142 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1141, i32 0, i32 1
  %os11143 = bitcast %union.FIRST_UNION* %ou1142 to %struct.anon*
  %otype144 = getelementptr inbounds %struct.anon, %struct.anon* %os11143, i32 0, i32 0
  store i8 0, i8* %otype144, align 1
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1145 = bitcast %union.rec* %65 to %struct.word_type*
  %olist146 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1145, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist146, i32 0, i64 1
  %osucc148 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx147, i32 0, i32 1
  store %union.rec* %64, %union.rec** %osucc148, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1149 = bitcast %union.rec* %66 to %struct.word_type*
  %olist150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist150, i32 0, i64 1
  %opred152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx151, i32 0, i32 0
  store %union.rec* %64, %union.rec** %opred152, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1153 = bitcast %union.rec* %67 to %struct.word_type*
  %olist154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1153, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist154, i32 0, i64 0
  %osucc156 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx155, i32 0, i32 1
  store %union.rec* %64, %union.rec** %osucc156, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1157 = bitcast %union.rec* %68 to %struct.word_type*
  %olist158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist158, i32 0, i64 0
  %opred160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx159, i32 0, i32 0
  store %union.rec* %64, %union.rec** %opred160, align 8
  store %union.rec* %64, %union.rec** @xx_link, align 8
  %69 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %69, %union.rec** @zz_res, align 8
  %70 = load %union.rec*, %union.rec** @needs, align 8
  store %union.rec* %70, %union.rec** @zz_hold, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp161 = icmp eq %union.rec* %71, null
  br i1 %cmp161, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.140
  %72 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.196

cond.false:                                       ; preds = %if.end.140
  %73 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp163 = icmp eq %union.rec* %73, null
  br i1 %cmp163, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %cond.false
  %74 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.166:                                   ; preds = %cond.false
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1167 = bitcast %union.rec* %75 to %struct.word_type*
  %olist168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist168, i32 0, i64 0
  %opred170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx169, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %opred170, align 8
  store %union.rec* %76, %union.rec** @zz_tmp, align 8
  %77 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1171 = bitcast %union.rec* %77 to %struct.word_type*
  %olist172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist172, i32 0, i64 0
  %opred174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx173, i32 0, i32 0
  %78 = load %union.rec*, %union.rec** %opred174, align 8
  %79 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1175 = bitcast %union.rec* %79 to %struct.word_type*
  %olist176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist176, i32 0, i64 0
  %opred178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx177, i32 0, i32 0
  store %union.rec* %78, %union.rec** %opred178, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %81 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1179 = bitcast %union.rec* %81 to %struct.word_type*
  %olist180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1179, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist180, i32 0, i64 0
  %opred182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx181, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %opred182, align 8
  %os1183 = bitcast %union.rec* %82 to %struct.word_type*
  %olist184 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1183, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist184, i32 0, i64 0
  %osucc186 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx185, i32 0, i32 1
  store %union.rec* %80, %union.rec** %osucc186, align 8
  %83 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1187 = bitcast %union.rec* %84 to %struct.word_type*
  %olist188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1187, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist188, i32 0, i64 0
  %opred190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx189, i32 0, i32 0
  store %union.rec* %83, %union.rec** %opred190, align 8
  %85 = load %union.rec*, %union.rec** @zz_res, align 8
  %86 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1191 = bitcast %union.rec* %86 to %struct.word_type*
  %olist192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1191, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist192, i32 0, i64 0
  %osucc194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx193, i32 0, i32 1
  store %union.rec* %85, %union.rec** %osucc194, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.166, %cond.true.165
  %cond195 = phi %union.rec* [ %74, %cond.true.165 ], [ %85, %cond.false.166 ]
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.end, %cond.true
  %cond197 = phi %union.rec* [ %72, %cond.true ], [ %cond195, %cond.end ]
  %87 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %87, %union.rec** @zz_res, align 8
  %88 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %88, %union.rec** @zz_hold, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp198 = icmp eq %union.rec* %89, null
  br i1 %cmp198, label %cond.true.200, label %cond.false.201

cond.true.200:                                    ; preds = %cond.end.196
  %90 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.236

cond.false.201:                                   ; preds = %cond.end.196
  %91 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp202 = icmp eq %union.rec* %91, null
  br i1 %cmp202, label %cond.true.204, label %cond.false.205

cond.true.204:                                    ; preds = %cond.false.201
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.234

cond.false.205:                                   ; preds = %cond.false.201
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1206 = bitcast %union.rec* %93 to %struct.word_type*
  %olist207 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1206, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist207, i32 0, i64 1
  %opred209 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx208, i32 0, i32 0
  %94 = load %union.rec*, %union.rec** %opred209, align 8
  store %union.rec* %94, %union.rec** @zz_tmp, align 8
  %95 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1210 = bitcast %union.rec* %95 to %struct.word_type*
  %olist211 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1210, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist211, i32 0, i64 1
  %opred213 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx212, i32 0, i32 0
  %96 = load %union.rec*, %union.rec** %opred213, align 8
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1214 = bitcast %union.rec* %97 to %struct.word_type*
  %olist215 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist215, i32 0, i64 1
  %opred217 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx216, i32 0, i32 0
  store %union.rec* %96, %union.rec** %opred217, align 8
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %99 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1218 = bitcast %union.rec* %99 to %struct.word_type*
  %olist219 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1218, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist219, i32 0, i64 1
  %opred221 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx220, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %opred221, align 8
  %os1222 = bitcast %union.rec* %100 to %struct.word_type*
  %olist223 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1222, i32 0, i32 0
  %arrayidx224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist223, i32 0, i64 1
  %osucc225 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx224, i32 0, i32 1
  store %union.rec* %98, %union.rec** %osucc225, align 8
  %101 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %102 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1226 = bitcast %union.rec* %102 to %struct.word_type*
  %olist227 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1226, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist227, i32 0, i64 1
  %opred229 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx228, i32 0, i32 0
  store %union.rec* %101, %union.rec** %opred229, align 8
  %103 = load %union.rec*, %union.rec** @zz_res, align 8
  %104 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1230 = bitcast %union.rec* %104 to %struct.word_type*
  %olist231 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1230, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist231, i32 0, i64 1
  %osucc233 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx232, i32 0, i32 1
  store %union.rec* %103, %union.rec** %osucc233, align 8
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.205, %cond.true.204
  %cond235 = phi %union.rec* [ %92, %cond.true.204 ], [ %103, %cond.false.205 ]
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.end.234, %cond.true.200
  %cond237 = phi %union.rec* [ %90, %cond.true.200 ], [ %cond235, %cond.end.234 ]
  %arraydecay238 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call239 = call i8* @fgets(i8* %arraydecay238, i32 512, %struct._IO_FILE* %105)
  %cmp240 = icmp eq i8* %call239, null
  %cond242 = select i1 %cmp240, i32 2, i32 1
  store i32 %cond242, i32* %state, align 4
  br label %if.end.280

if.else.243:                                      ; preds = %land.lhs.true, %sw.bb
  %arraydecay244 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call245 = call i32 @StringBeginsWith(i8* %arraydecay244, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0))
  %tobool246 = icmp ne i32 %call245, 0
  br i1 %tobool246, label %if.then.247, label %if.end.255

if.then.247:                                      ; preds = %if.else.243
  %106 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1248 = bitcast %union.rec* %106 to %struct.word_type*
  %ou1249 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1248, i32 0, i32 1
  %ofpos250 = bitcast %union.FIRST_UNION* %ou1249 to %struct.FILE_POS*
  %107 = load %union.rec*, %union.rec** %full_name, align 8
  %os1251 = bitcast %union.rec* %107 to %struct.word_type*
  %ostring252 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1251, i32 0, i32 4
  %arraydecay253 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring252, i32 0, i32 0
  %call254 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos250, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8* %arraydecay253)
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.247, %if.else.243
  %arraydecay256 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call257 = call i32 @StringBeginsWith(i8* %arraydecay256, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0))
  %tobool258 = icmp ne i32 %call257, 0
  br i1 %tobool258, label %if.then.259, label %if.end.267

if.then.259:                                      ; preds = %if.end.255
  %108 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1260 = bitcast %union.rec* %108 to %struct.word_type*
  %ou1261 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1260, i32 0, i32 1
  %ofpos262 = bitcast %union.FIRST_UNION* %ou1261 to %struct.FILE_POS*
  %109 = load %union.rec*, %union.rec** %full_name, align 8
  %os1263 = bitcast %union.rec* %109 to %struct.word_type*
  %ostring264 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1263, i32 0, i32 4
  %arraydecay265 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring264, i32 0, i32 0
  %call266 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos262, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i8* %arraydecay265)
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.259, %if.end.255
  %arraydecay268 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call269 = call i32 @strip_out(i8* %arraydecay268)
  %tobool270 = icmp ne i32 %call269, 0
  br i1 %tobool270, label %if.end.274, label %if.then.271

if.then.271:                                      ; preds = %if.end.267
  %arraydecay272 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call273 = call i32 @fputs(i8* %arraydecay272, %struct._IO_FILE* %110)
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.271, %if.end.267
  %arraydecay275 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call276 = call i8* @fgets(i8* %arraydecay275, i32 512, %struct._IO_FILE* %111)
  %cmp277 = icmp eq i8* %call276, null
  %cond279 = select i1 %cmp277, i32 2, i32 0
  store i32 %cond279, i32* %state, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.274, %cond.end.236
  br label %sw.epilog

sw.bb.281:                                        ; preds = %while.body
  %arraydecay282 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call283 = call i32 @StringBeginsWith(i8* %arraydecay282, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0))
  %tobool284 = icmp ne i32 %call283, 0
  br i1 %tobool284, label %if.then.285, label %if.else.417

if.then.285:                                      ; preds = %sw.bb.281
  %arrayidx286 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 3
  %112 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call287 = call %union.rec* @MakeWord(i32 11, i8* %arrayidx286, %struct.FILE_POS* %112)
  store %union.rec* %call287, %union.rec** %x.addr, align 8
  %113 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv288 = zext i8 %113 to i32
  store i32 %conv288, i32* @zz_size, align 4
  %conv289 = sext i32 %conv288 to i64
  %cmp290 = icmp uge i64 %conv289, 265
  br i1 %cmp290, label %if.then.292, label %if.else.294

if.then.292:                                      ; preds = %if.then.285
  %114 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call293 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %114)
  br label %if.end.311

if.else.294:                                      ; preds = %if.then.285
  %115 = load i32, i32* @zz_size, align 4
  %idxprom295 = sext i32 %115 to i64
  %arrayidx296 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom295
  %116 = load %union.rec*, %union.rec** %arrayidx296, align 8
  %cmp297 = icmp eq %union.rec* %116, null
  br i1 %cmp297, label %if.then.299, label %if.else.301

if.then.299:                                      ; preds = %if.else.294
  %117 = load i32, i32* @zz_size, align 4
  %118 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call300 = call %union.rec* @GetMemory(i32 %117, %struct.FILE_POS* %118)
  store %union.rec* %call300, %union.rec** @zz_hold, align 8
  br label %if.end.310

if.else.301:                                      ; preds = %if.else.294
  %119 = load i32, i32* @zz_size, align 4
  %idxprom302 = sext i32 %119 to i64
  %arrayidx303 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom302
  %120 = load %union.rec*, %union.rec** %arrayidx303, align 8
  store %union.rec* %120, %union.rec** @zz_hold, align 8
  store %union.rec* %120, %union.rec** @zz_hold, align 8
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1304 = bitcast %union.rec* %121 to %struct.word_type*
  %olist305 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1304, i32 0, i32 0
  %arrayidx306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist305, i32 0, i64 0
  %opred307 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx306, i32 0, i32 0
  %122 = load %union.rec*, %union.rec** %opred307, align 8
  %123 = load i32, i32* @zz_size, align 4
  %idxprom308 = sext i32 %123 to i64
  %arrayidx309 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom308
  store %union.rec* %122, %union.rec** %arrayidx309, align 8
  br label %if.end.310

if.end.310:                                       ; preds = %if.else.301, %if.then.299
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.then.292
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1312 = bitcast %union.rec* %124 to %struct.word_type*
  %ou1313 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1312, i32 0, i32 1
  %os11314 = bitcast %union.FIRST_UNION* %ou1313 to %struct.anon*
  %otype315 = getelementptr inbounds %struct.anon, %struct.anon* %os11314, i32 0, i32 0
  store i8 0, i8* %otype315, align 1
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1316 = bitcast %union.rec* %126 to %struct.word_type*
  %olist317 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1316, i32 0, i32 0
  %arrayidx318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist317, i32 0, i64 1
  %osucc319 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx318, i32 0, i32 1
  store %union.rec* %125, %union.rec** %osucc319, align 8
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1320 = bitcast %union.rec* %127 to %struct.word_type*
  %olist321 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1320, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist321, i32 0, i64 1
  %opred323 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx322, i32 0, i32 0
  store %union.rec* %125, %union.rec** %opred323, align 8
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1324 = bitcast %union.rec* %128 to %struct.word_type*
  %olist325 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1324, i32 0, i32 0
  %arrayidx326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist325, i32 0, i64 0
  %osucc327 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx326, i32 0, i32 1
  store %union.rec* %125, %union.rec** %osucc327, align 8
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1328 = bitcast %union.rec* %129 to %struct.word_type*
  %olist329 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1328, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist329, i32 0, i64 0
  %opred331 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx330, i32 0, i32 0
  store %union.rec* %125, %union.rec** %opred331, align 8
  store %union.rec* %125, %union.rec** @xx_link, align 8
  %130 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %130, %union.rec** @zz_res, align 8
  %131 = load %union.rec*, %union.rec** @needs, align 8
  store %union.rec* %131, %union.rec** @zz_hold, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp332 = icmp eq %union.rec* %132, null
  br i1 %cmp332, label %cond.true.334, label %cond.false.335

cond.true.334:                                    ; preds = %if.end.311
  %133 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.370

cond.false.335:                                   ; preds = %if.end.311
  %134 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp336 = icmp eq %union.rec* %134, null
  br i1 %cmp336, label %cond.true.338, label %cond.false.339

cond.true.338:                                    ; preds = %cond.false.335
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.368

cond.false.339:                                   ; preds = %cond.false.335
  %136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1340 = bitcast %union.rec* %136 to %struct.word_type*
  %olist341 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1340, i32 0, i32 0
  %arrayidx342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist341, i32 0, i64 0
  %opred343 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx342, i32 0, i32 0
  %137 = load %union.rec*, %union.rec** %opred343, align 8
  store %union.rec* %137, %union.rec** @zz_tmp, align 8
  %138 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1344 = bitcast %union.rec* %138 to %struct.word_type*
  %olist345 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1344, i32 0, i32 0
  %arrayidx346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist345, i32 0, i64 0
  %opred347 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx346, i32 0, i32 0
  %139 = load %union.rec*, %union.rec** %opred347, align 8
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1348 = bitcast %union.rec* %140 to %struct.word_type*
  %olist349 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1348, i32 0, i32 0
  %arrayidx350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist349, i32 0, i64 0
  %opred351 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx350, i32 0, i32 0
  store %union.rec* %139, %union.rec** %opred351, align 8
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %142 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1352 = bitcast %union.rec* %142 to %struct.word_type*
  %olist353 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1352, i32 0, i32 0
  %arrayidx354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist353, i32 0, i64 0
  %opred355 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx354, i32 0, i32 0
  %143 = load %union.rec*, %union.rec** %opred355, align 8
  %os1356 = bitcast %union.rec* %143 to %struct.word_type*
  %olist357 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1356, i32 0, i32 0
  %arrayidx358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist357, i32 0, i64 0
  %osucc359 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx358, i32 0, i32 1
  store %union.rec* %141, %union.rec** %osucc359, align 8
  %144 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %145 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1360 = bitcast %union.rec* %145 to %struct.word_type*
  %olist361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1360, i32 0, i32 0
  %arrayidx362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist361, i32 0, i64 0
  %opred363 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx362, i32 0, i32 0
  store %union.rec* %144, %union.rec** %opred363, align 8
  %146 = load %union.rec*, %union.rec** @zz_res, align 8
  %147 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1364 = bitcast %union.rec* %147 to %struct.word_type*
  %olist365 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1364, i32 0, i32 0
  %arrayidx366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist365, i32 0, i64 0
  %osucc367 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx366, i32 0, i32 1
  store %union.rec* %146, %union.rec** %osucc367, align 8
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.339, %cond.true.338
  %cond369 = phi %union.rec* [ %135, %cond.true.338 ], [ %146, %cond.false.339 ]
  br label %cond.end.370

cond.end.370:                                     ; preds = %cond.end.368, %cond.true.334
  %cond371 = phi %union.rec* [ %133, %cond.true.334 ], [ %cond369, %cond.end.368 ]
  %148 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %148, %union.rec** @zz_res, align 8
  %149 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %149, %union.rec** @zz_hold, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp372 = icmp eq %union.rec* %150, null
  br i1 %cmp372, label %cond.true.374, label %cond.false.375

cond.true.374:                                    ; preds = %cond.end.370
  %151 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.410

cond.false.375:                                   ; preds = %cond.end.370
  %152 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp376 = icmp eq %union.rec* %152, null
  br i1 %cmp376, label %cond.true.378, label %cond.false.379

cond.true.378:                                    ; preds = %cond.false.375
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.408

cond.false.379:                                   ; preds = %cond.false.375
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1380 = bitcast %union.rec* %154 to %struct.word_type*
  %olist381 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1380, i32 0, i32 0
  %arrayidx382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist381, i32 0, i64 1
  %opred383 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx382, i32 0, i32 0
  %155 = load %union.rec*, %union.rec** %opred383, align 8
  store %union.rec* %155, %union.rec** @zz_tmp, align 8
  %156 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1384 = bitcast %union.rec* %156 to %struct.word_type*
  %olist385 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1384, i32 0, i32 0
  %arrayidx386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist385, i32 0, i64 1
  %opred387 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx386, i32 0, i32 0
  %157 = load %union.rec*, %union.rec** %opred387, align 8
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1388 = bitcast %union.rec* %158 to %struct.word_type*
  %olist389 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1388, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist389, i32 0, i64 1
  %opred391 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx390, i32 0, i32 0
  store %union.rec* %157, %union.rec** %opred391, align 8
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %160 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1392 = bitcast %union.rec* %160 to %struct.word_type*
  %olist393 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1392, i32 0, i32 0
  %arrayidx394 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist393, i32 0, i64 1
  %opred395 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx394, i32 0, i32 0
  %161 = load %union.rec*, %union.rec** %opred395, align 8
  %os1396 = bitcast %union.rec* %161 to %struct.word_type*
  %olist397 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1396, i32 0, i32 0
  %arrayidx398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist397, i32 0, i64 1
  %osucc399 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx398, i32 0, i32 1
  store %union.rec* %159, %union.rec** %osucc399, align 8
  %162 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %163 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1400 = bitcast %union.rec* %163 to %struct.word_type*
  %olist401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1400, i32 0, i32 0
  %arrayidx402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist401, i32 0, i64 1
  %opred403 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx402, i32 0, i32 0
  store %union.rec* %162, %union.rec** %opred403, align 8
  %164 = load %union.rec*, %union.rec** @zz_res, align 8
  %165 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1404 = bitcast %union.rec* %165 to %struct.word_type*
  %olist405 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1404, i32 0, i32 0
  %arrayidx406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist405, i32 0, i64 1
  %osucc407 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx406, i32 0, i32 1
  store %union.rec* %164, %union.rec** %osucc407, align 8
  br label %cond.end.408

cond.end.408:                                     ; preds = %cond.false.379, %cond.true.378
  %cond409 = phi %union.rec* [ %153, %cond.true.378 ], [ %164, %cond.false.379 ]
  br label %cond.end.410

cond.end.410:                                     ; preds = %cond.end.408, %cond.true.374
  %cond411 = phi %union.rec* [ %151, %cond.true.374 ], [ %cond409, %cond.end.408 ]
  %arraydecay412 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call413 = call i8* @fgets(i8* %arraydecay412, i32 512, %struct._IO_FILE* %166)
  %cmp414 = icmp eq i8* %call413, null
  %cond416 = select i1 %cmp414, i32 2, i32 1
  store i32 %cond416, i32* %state, align 4
  br label %if.end.430

if.else.417:                                      ; preds = %sw.bb.281
  %arraydecay418 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call419 = call i32 @strip_out(i8* %arraydecay418)
  %tobool420 = icmp ne i32 %call419, 0
  br i1 %tobool420, label %if.end.424, label %if.then.421

if.then.421:                                      ; preds = %if.else.417
  %arraydecay422 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call423 = call i32 @fputs(i8* %arraydecay422, %struct._IO_FILE* %167)
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.421, %if.else.417
  %arraydecay425 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call426 = call i8* @fgets(i8* %arraydecay425, i32 512, %struct._IO_FILE* %168)
  %cmp427 = icmp eq i8* %call426, null
  %cond429 = select i1 %cmp427, i32 2, i32 0
  store i32 %cond429, i32* %state, align 4
  br label %if.end.430

if.end.430:                                       ; preds = %if.end.424, %cond.end.410
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end.430, %if.end.280
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %169 = load %union.rec*, %union.rec** %full_name, align 8
  %call431 = call i32 @DisposeObject(%union.rec* %169)
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call432 = call i32 @fclose(%struct._IO_FILE* %170)
  %171 = load i32, i32* %compressed, align 4
  %tobool433 = icmp ne i32 %171, 0
  br i1 %tobool433, label %if.then.434, label %if.end.436

if.then.434:                                      ; preds = %while.end
  %call435 = call i32 @remove(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)) #4
  br label %if.end.436

if.end.436:                                       ; preds = %if.then.434, %while.end
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call437 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0))
  store i32 0, i32* @wordcount, align 4
  ret void
}

declare %struct._IO_FILE* @OpenIncGraphicFile(i8*, i8 zeroext, %union.rec**, %struct.FILE_POS*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @PS_CoordScale(float %hfactor, float %vfactor) #0 {
entry:
  %hfactor.addr = alloca float, align 4
  %vfactor.addr = alloca float, align 4
  store float %hfactor, float* %hfactor.addr, align 4
  store float %vfactor, float* %vfactor.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %1 = load float, float* %hfactor.addr, align 4
  %conv = fpext float %1 to double
  %2 = load float, float* %vfactor.addr, align 4
  %conv1 = fpext float %2 to double
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), double %conv, double %conv1)
  store i32 0, i32* @cpexists, align 4
  ret void
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @StringBeginsWith(i8*, i8*) #1

declare i32 @StringContains(i8*, i8*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define internal i32 @strip_out(i8* %buff) #0 {
entry:
  %retval = alloca i32, align 4
  %buff.addr = alloca i8*, align 8
  store i8* %buff, i8** %buff.addr, align 8
  %0 = load i8*, i8** %buff.addr, align 8
  %call = call i32 @StringBeginsWith(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %buff.addr, align 8
  %call1 = call i32 @StringBeginsWith(i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare i32 @DisposeObject(%union.rec*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @remove(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @ConvertToPDFName(%union.rec* %name) #0 {
entry:
  %name.addr = alloca %union.rec*, align 8
  %q = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %union.rec* %name, %union.rec** %name.addr, align 8
  %call = call i8* @strcpy(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @ConvertToPDFName.buff, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0)) #4
  %call1 = call i64 @strlen(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @ConvertToPDFName.buff, i32 0, i32 0)) #5
  %arrayidx = getelementptr inbounds [200 x i8], [200 x i8]* @ConvertToPDFName.buff, i32 0, i64 %call1
  store i8* %arrayidx, i8** %q, align 8
  %0 = load %union.rec*, %union.rec** %name.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %q, align 8
  %cmp3 = icmp uge i8* %3, getelementptr inbounds ([200 x i8], [200 x i8]* @ConvertToPDFName.buff, i32 0, i64 199)
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %union.rec*, %union.rec** %name.addr, align 8
  %os15 = bitcast %union.rec* %4 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %5 = load %union.rec*, %union.rec** %name.addr, align 8
  %os16 = bitcast %union.rec* %5 to %struct.word_type*
  %ostring7 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 4
  %arraydecay8 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring7, i32 0, i32 0
  %call9 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %ofpos, i8* %arraydecay8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv10 = zext i8 %7 to i32
  %cmp11 = icmp sge i32 %conv10, 97
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv13 = zext i8 %9 to i32
  %cmp14 = icmp sle i32 %conv13, 122
  br i1 %cmp14, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv16 = zext i8 %11 to i32
  %cmp17 = icmp sge i32 %conv16, 65
  br i1 %cmp17, label %land.lhs.true.19, label %lor.lhs.false.23

land.lhs.true.19:                                 ; preds = %lor.lhs.false
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv20 = zext i8 %13 to i32
  %cmp21 = icmp sle i32 %conv20, 90
  br i1 %cmp21, label %if.then.31, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true.19, %lor.lhs.false
  %14 = load i8*, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %conv24 = zext i8 %15 to i32
  %cmp25 = icmp sge i32 %conv24, 48
  br i1 %cmp25, label %land.lhs.true.27, label %if.else

land.lhs.true.27:                                 ; preds = %lor.lhs.false.23
  %16 = load i8*, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  %conv28 = zext i8 %17 to i32
  %cmp29 = icmp sle i32 %conv28, 57
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %land.lhs.true.27, %land.lhs.true.19, %land.lhs.true
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  store i8 %19, i8* %20, align 1
  br label %if.end.33

if.else:                                          ; preds = %land.lhs.true.27, %lor.lhs.false.23
  %21 = load i8*, i8** %q, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr32, i8** %q, align 8
  store i8 95, i8* %21, align 1
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr34, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i8*, i8** %q, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr35, i8** %q, align 8
  store i8 0, i8* %23, align 1
  ret i8* getelementptr inbounds ([200 x i8], [200 x i8]* @ConvertToPDFName.buff, i32 0, i32 0)
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @PS_PrintInitialize(%struct._IO_FILE* %fp) #0 {
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
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %2)
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
  %call35 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %19)
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
  %call74 = call %struct.anon.14* @ltab_new(i32 200)
  store %struct.anon.14* %call74, %struct.anon.14** @link_dest_tab, align 8
  %35 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv75 = zext i8 %35 to i32
  store i32 %conv75, i32* @zz_size, align 4
  %conv76 = sext i32 %conv75 to i64
  %cmp77 = icmp uge i64 %conv76, 265
  br i1 %cmp77, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %if.end.53
  %36 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call80 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %36)
  br label %if.end.98

if.else.81:                                       ; preds = %if.end.53
  %37 = load i32, i32* @zz_size, align 4
  %idxprom82 = sext i32 %37 to i64
  %arrayidx83 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom82
  %38 = load %union.rec*, %union.rec** %arrayidx83, align 8
  %cmp84 = icmp eq %union.rec* %38, null
  br i1 %cmp84, label %if.then.86, label %if.else.88

if.then.86:                                       ; preds = %if.else.81
  %39 = load i32, i32* @zz_size, align 4
  %40 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call87 = call %union.rec* @GetMemory(i32 %39, %struct.FILE_POS* %40)
  store %union.rec* %call87, %union.rec** @zz_hold, align 8
  br label %if.end.97

if.else.88:                                       ; preds = %if.else.81
  %41 = load i32, i32* @zz_size, align 4
  %idxprom89 = sext i32 %41 to i64
  %arrayidx90 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom89
  %42 = load %union.rec*, %union.rec** %arrayidx90, align 8
  store %union.rec* %42, %union.rec** @zz_hold, align 8
  store %union.rec* %42, %union.rec** @zz_hold, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os191 = bitcast %union.rec* %43 to %struct.word_type*
  %olist92 = getelementptr inbounds %struct.word_type, %struct.word_type* %os191, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist92, i32 0, i64 0
  %opred94 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx93, i32 0, i32 0
  %44 = load %union.rec*, %union.rec** %opred94, align 8
  %45 = load i32, i32* @zz_size, align 4
  %idxprom95 = sext i32 %45 to i64
  %arrayidx96 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom95
  store %union.rec* %44, %union.rec** %arrayidx96, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.88, %if.then.86
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.79
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os199 = bitcast %union.rec* %46 to %struct.word_type*
  %ou1100 = getelementptr inbounds %struct.word_type, %struct.word_type* %os199, i32 0, i32 1
  %os11101 = bitcast %union.FIRST_UNION* %ou1100 to %struct.anon*
  %otype102 = getelementptr inbounds %struct.anon, %struct.anon* %os11101, i32 0, i32 0
  store i8 17, i8* %otype102, align 1
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1103 = bitcast %union.rec* %48 to %struct.word_type*
  %olist104 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1103, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist104, i32 0, i64 1
  %osucc106 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx105, i32 0, i32 1
  store %union.rec* %47, %union.rec** %osucc106, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1107 = bitcast %union.rec* %49 to %struct.word_type*
  %olist108 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1107, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist108, i32 0, i64 1
  %opred110 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx109, i32 0, i32 0
  store %union.rec* %47, %union.rec** %opred110, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1111 = bitcast %union.rec* %50 to %struct.word_type*
  %olist112 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist112, i32 0, i64 0
  %osucc114 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx113, i32 0, i32 1
  store %union.rec* %47, %union.rec** %osucc114, align 8
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1115 = bitcast %union.rec* %51 to %struct.word_type*
  %olist116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist116, i32 0, i64 0
  %opred118 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx117, i32 0, i32 0
  store %union.rec* %47, %union.rec** %opred118, align 8
  store %union.rec* %47, %union.rec** @link_source_list, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintLength(i8* %buff, i32 %length, i32 %length_dim) #0 {
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
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), double %conv1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintPageSetupForFont(%union.rec* %face, i32 %font_curr_page, i8* %font_name, i8* %short_name) #0 {
entry:
  %face.addr = alloca %union.rec*, align 8
  %font_curr_page.addr = alloca i32, align 4
  %font_name.addr = alloca i8*, align 8
  %short_name.addr = alloca i8*, align 8
  store %union.rec* %face, %union.rec** %face.addr, align 8
  store i32 %font_curr_page, i32* %font_curr_page.addr, align 4
  store i8* %font_name, i8** %font_name.addr, align 8
  store i8* %short_name, i8** %short_name.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %1 = load i8*, i8** %font_name.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i32 0, i32 0), i8* %1)
  %2 = load %union.rec*, %union.rec** %face.addr, align 8
  %os1 = bitcast %union.rec* %2 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 3
  %os32 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.7*
  %ofont_recoded = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32, i32 0, i32 3
  %bf.load = load i8, i8* %ofont_recoded, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %union.rec*, %union.rec** %face.addr, align 8
  %os11 = bitcast %union.rec* %3 to %struct.word_type*
  %ou32 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 3
  %os323 = bitcast %union.THIRD_UNION* %ou32 to %struct.anon.7*
  %ofont_mapping = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os323, i32 0, i32 3
  %bf.load4 = load i8, i8* %ofont_mapping, align 4
  %bf.clear = and i8 %bf.load4, 127
  %bf.cast5 = zext i8 %bf.clear to i32
  %4 = load i32, i32* %font_curr_page.addr, align 4
  call void @MapEnsurePrinted(i32 %bf.cast5, i32 %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %6 = load i8*, i8** %font_name.addr, align 8
  %7 = load i8*, i8** %short_name.addr, align 8
  %8 = load %union.rec*, %union.rec** %face.addr, align 8
  %os16 = bitcast %union.rec* %8 to %struct.word_type*
  %ou37 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 3
  %os328 = bitcast %union.THIRD_UNION* %ou37 to %struct.anon.7*
  %ofont_mapping9 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os328, i32 0, i32 3
  %bf.load10 = load i8, i8* %ofont_mapping9, align 4
  %bf.clear11 = and i8 %bf.load10, 127
  %bf.cast12 = zext i8 %bf.clear11 to i32
  %call13 = call i8* @MapEncodingName(i32 %bf.cast12)
  %9 = load i8*, i8** %font_name.addr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* %6, i8* %7, i8* %call13, i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %11 = load i8*, i8** %short_name.addr, align 8
  %12 = load i8*, i8** %font_name.addr, align 8
  %13 = load i8*, i8** %short_name.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0), i8* %11, i8* %12, i8* %13)
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %15 = load i8*, i8** %short_name.addr, align 8
  %16 = load i8*, i8** %font_name.addr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i32 0, i32 0), i8* %15, i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintPageResourceForFont(i8* %font_name, i32 %first) #0 {
entry:
  %font_name.addr = alloca i8*, align 8
  %first.addr = alloca i32, align 4
  store i8* %font_name, i8** %font_name.addr, align 8
  store i32 %first, i32* %first.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %1 = load i32, i32* %first.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0)
  %2 = load i8*, i8** %font_name.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8* %cond, i8* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintMapping(i32 %m) #0 {
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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i32 0, i32 0), i8* %arraydecay)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %6 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %name1 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %6, i32 0, i32 4
  %7 = load %union.rec*, %union.rec** %name1, align 8
  %os12 = bitcast %union.rec* %7 to %struct.word_type*
  %ostring3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 4
  %arraydecay4 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring3, i32 0, i32 0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* %arraydecay4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %vector = getelementptr inbounds %struct.mapvec, %struct.mapvec* %11, i32 0, i32 5
  %arrayidx7 = getelementptr inbounds [256 x %union.rec*], [256 x %union.rec*]* %vector, i32 0, i64 %idxprom6
  %12 = load %union.rec*, %union.rec** %arrayidx7, align 8
  %os18 = bitcast %union.rec* %12 to %struct.word_type*
  %ostring9 = getelementptr inbounds %struct.word_type, %struct.word_type* %os18, i32 0, i32 4
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring9, i32 0, i32 0
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %13, 1
  %rem = srem i32 %add, 8
  %cmp11 = icmp ne i32 %rem, 0
  %cond = select i1 %cmp11, i32 32, i32 10
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* %arraydecay10, i32 %cond)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintBeforeFirstPage(i32 %h, i32 %v, i8* %label) #0 {
entry:
  %h.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %fnum = alloca i16, align 2
  %p = alloca i8*, align 8
  %buff = alloca [512 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %tmp = alloca %union.rec*, align 8
  store i32 %h, i32* %h.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  %0 = load i32, i32* @Encapsulated, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i32 0, i32 0), %struct._IO_FILE* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), %struct._IO_FILE* %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.55, i32 0, i32 0), %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i32 0, i32 0), %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.58, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %9 = load i32, i32* %h.addr, align 4
  %10 = load i32, i32* %v.addr, align 4
  %call7 = call i8* @MediaName(i32 %9, i32 %10)
  %11 = load i32, i32* %h.addr, align 4
  %div = sdiv i32 %11, 20
  %12 = load i32, i32* %v.addr, align 4
  %div8 = sdiv i32 %12, 20
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i32 0, i32 0), i8* %call7, i32 %div, i32 %div8)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i32 0, i32 0), %struct._IO_FILE* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0), %struct._IO_FILE* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %16 = load i32, i32* %h.addr, align 4
  %div12 = sdiv i32 %16, 20
  %17 = load i32, i32* %v.addr, align 4
  %div13 = sdiv i32 %17, 20
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i32 0, i32 0), i32 %div12, i32 %div13)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call15 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), %struct._IO_FILE* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call16 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), %struct._IO_FILE* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.67, i32 0, i32 0), %struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call19 = call i32 @fputs(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.68, i32 0, i32 0), %struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.69, i32 0, i32 0), %struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call21 = call i32 @fputs(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.70, i32 0, i32 0), %struct._IO_FILE* %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call22 = call i32 @fputs(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i32 0, i32 0), %struct._IO_FILE* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call23 = call i32 @fputs(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.72, i32 0, i32 0), %struct._IO_FILE* %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.73, i32 0, i32 0), %struct._IO_FILE* %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call25 = call i32 @fputs(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.74, i32 0, i32 0), %struct._IO_FILE* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call26 = call i32 @fputs(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.75, i32 0, i32 0), %struct._IO_FILE* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call27 = call i32 @fputs(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.76, i32 0, i32 0), %struct._IO_FILE* %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call28 = call i32 @fputs(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.77, i32 0, i32 0), %struct._IO_FILE* %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call29 = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.78, i32 0, i32 0), %struct._IO_FILE* %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call30 = call i32 @fputs(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.79, i32 0, i32 0), %struct._IO_FILE* %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call31 = call i32 @fputs(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.80, i32 0, i32 0), %struct._IO_FILE* %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call32 = call i32 @fputs(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i32 0, i32 0), %struct._IO_FILE* %35)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call33 = call i32 @fputs(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.82, i32 0, i32 0), %struct._IO_FILE* %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i32 0, i32 0), i32 1440)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.84, i32 0, i32 0), i32 567)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i32 0, i32 0), i32 20)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.86, i32 0, i32 0), i32 120)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call38 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.87, i32 0, i32 0), %struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call39 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.88, i32 0, i32 0), %struct._IO_FILE* %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call40 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.89, i32 0, i32 0), %struct._IO_FILE* %43)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call41 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.90, i32 0, i32 0), %struct._IO_FILE* %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call42 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.91, i32 0, i32 0), %struct._IO_FILE* %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call43 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.92, i32 0, i32 0), %struct._IO_FILE* %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call44 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i32 0, i32 0), %struct._IO_FILE* %47)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call45 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i32 0, i32 0), %struct._IO_FILE* %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call46 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i32 0, i32 0), %struct._IO_FILE* %49)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call47 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i32 0, i32 0), %struct._IO_FILE* %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call48 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.97, i32 0, i32 0), %struct._IO_FILE* %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call49 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.98, i32 0, i32 0), %struct._IO_FILE* %52)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call50 = call i32 @fputs(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.99, i32 0, i32 0), %struct._IO_FILE* %53)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call51 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), %struct._IO_FILE* %54)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call52 = call i32 @fputs(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.101, i32 0, i32 0), %struct._IO_FILE* %55)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call53 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), %struct._IO_FILE* %56)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call54 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.103, i32 0, i32 0), %struct._IO_FILE* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call55 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.104, i32 0, i32 0), %struct._IO_FILE* %58)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call56 = call i32 @fputs(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.105, i32 0, i32 0), %struct._IO_FILE* %59)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call57 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.106, i32 0, i32 0), %struct._IO_FILE* %60)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call58 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.107, i32 0, i32 0), %struct._IO_FILE* %61)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call59 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), %struct._IO_FILE* %62)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call60 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.109, i32 0, i32 0), %struct._IO_FILE* %63)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call61 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), %struct._IO_FILE* %64)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call62 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.110, i32 0, i32 0), %struct._IO_FILE* %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call63 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.111, i32 0, i32 0), %struct._IO_FILE* %66)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call64 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.112, i32 0, i32 0), %struct._IO_FILE* %67)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call65 = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.113, i32 0, i32 0), %struct._IO_FILE* %68)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call66 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i32 0, i32 0), %struct._IO_FILE* %69)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call67 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.115, i32 0, i32 0), %struct._IO_FILE* %70)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call68 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.116, i32 0, i32 0), %struct._IO_FILE* %71)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call69 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.117, i32 0, i32 0), %struct._IO_FILE* %72)
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call70 = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.118, i32 0, i32 0), %struct._IO_FILE* %73)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call71 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.119, i32 0, i32 0), %struct._IO_FILE* %74)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call72 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.120, i32 0, i32 0), %struct._IO_FILE* %75)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call73 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0), %struct._IO_FILE* %76)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call74 = call i32 @fputs(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.122, i32 0, i32 0), %struct._IO_FILE* %77)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call75 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), %struct._IO_FILE* %78)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call76 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), %struct._IO_FILE* %79)
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call77 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), %struct._IO_FILE* %80)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call78 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.125, i32 0, i32 0), %struct._IO_FILE* %81)
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call79 = call i32 @fputs(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.126, i32 0, i32 0), %struct._IO_FILE* %82)
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call80 = call i32 @fputs(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.127, i32 0, i32 0), %struct._IO_FILE* %83)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call81 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.128, i32 0, i32 0), %struct._IO_FILE* %84)
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call82 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0), %struct._IO_FILE* %85)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call83 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.130, i32 0, i32 0), %struct._IO_FILE* %86)
  %call84 = call zeroext i16 @FirstFile(i32 6)
  store i16 %call84, i16* %fnum, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %87 = load i16, i16* %fnum, align 2
  %conv = zext i16 %87 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %88 = load i16, i16* %fnum, align 2
  %call86 = call %struct._IO_FILE* @OpenFile(i16 zeroext %88, i32 0, i32 0)
  store %struct._IO_FILE* %call86, %struct._IO_FILE** %fp, align 8
  %cmp87 = icmp eq %struct._IO_FILE* %call86, null
  br i1 %cmp87, label %if.then.89, label %if.else.93

if.then.89:                                       ; preds = %for.body
  %89 = load i16, i16* %fnum, align 2
  %call90 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %89)
  %90 = load i16, i16* %fnum, align 2
  %call91 = call i8* @FileName(i16 zeroext %90)
  %call92 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.131, i32 0, i32 0), i32 2, %struct.FILE_POS* %call90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.132, i32 0, i32 0), i8* %call91)
  br label %if.end.238

if.else.93:                                       ; preds = %for.body
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call94 = call i8* @fgets(i8* %arraydecay, i32 512, %struct._IO_FILE* %91)
  %cmp95 = icmp eq i8* %call94, null
  br i1 %cmp95, label %if.then.97, label %if.else.101

if.then.97:                                       ; preds = %if.else.93
  %92 = load i16, i16* %fnum, align 2
  %call98 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %92)
  %93 = load i16, i16* %fnum, align 2
  %call99 = call i8* @FileName(i16 zeroext %93)
  %call100 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.133, i32 0, i32 0), i32 2, %struct.FILE_POS* %call98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.132, i32 0, i32 0), i8* %call99)
  br label %if.end.237

if.else.101:                                      ; preds = %if.else.93
  %arraydecay102 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %call103 = call i32 @StringBeginsWith(i8* %arraydecay102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.134, i32 0, i32 0))
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.105, label %if.else.219

if.then.105:                                      ; preds = %if.else.101
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 16
  %94 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call106 = call %union.rec* @MakeWord(i32 11, i8* %arrayidx, %struct.FILE_POS* %94)
  store %union.rec* %call106, %union.rec** %tmp, align 8
  %95 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv107 = zext i8 %95 to i32
  store i32 %conv107, i32* @zz_size, align 4
  %conv108 = sext i32 %conv107 to i64
  %cmp109 = icmp uge i64 %conv108, 265
  br i1 %cmp109, label %if.then.111, label %if.else.113

if.then.111:                                      ; preds = %if.then.105
  %96 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call112 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %96)
  br label %if.end.126

if.else.113:                                      ; preds = %if.then.105
  %97 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %97 to i64
  %arrayidx114 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %98 = load %union.rec*, %union.rec** %arrayidx114, align 8
  %cmp115 = icmp eq %union.rec* %98, null
  br i1 %cmp115, label %if.then.117, label %if.else.119

if.then.117:                                      ; preds = %if.else.113
  %99 = load i32, i32* @zz_size, align 4
  %100 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call118 = call %union.rec* @GetMemory(i32 %99, %struct.FILE_POS* %100)
  store %union.rec* %call118, %union.rec** @zz_hold, align 8
  br label %if.end.125

if.else.119:                                      ; preds = %if.else.113
  %101 = load i32, i32* @zz_size, align 4
  %idxprom120 = sext i32 %101 to i64
  %arrayidx121 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom120
  %102 = load %union.rec*, %union.rec** %arrayidx121, align 8
  store %union.rec* %102, %union.rec** @zz_hold, align 8
  store %union.rec* %102, %union.rec** @zz_hold, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %103 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx122, i32 0, i32 0
  %104 = load %union.rec*, %union.rec** %opred, align 8
  %105 = load i32, i32* @zz_size, align 4
  %idxprom123 = sext i32 %105 to i64
  %arrayidx124 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom123
  store %union.rec* %104, %union.rec** %arrayidx124, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.119, %if.then.117
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.111
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1127 = bitcast %union.rec* %106 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1127, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 0, i8* %otype, align 1
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1128 = bitcast %union.rec* %108 to %struct.word_type*
  %olist129 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist129, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx130, i32 0, i32 1
  store %union.rec* %107, %union.rec** %osucc, align 8
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1131 = bitcast %union.rec* %109 to %struct.word_type*
  %olist132 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1131, i32 0, i32 0
  %arrayidx133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist132, i32 0, i64 1
  %opred134 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx133, i32 0, i32 0
  store %union.rec* %107, %union.rec** %opred134, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1135 = bitcast %union.rec* %110 to %struct.word_type*
  %olist136 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1135, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist136, i32 0, i64 0
  %osucc138 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx137, i32 0, i32 1
  store %union.rec* %107, %union.rec** %osucc138, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1139 = bitcast %union.rec* %111 to %struct.word_type*
  %olist140 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1139, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist140, i32 0, i64 0
  %opred142 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx141, i32 0, i32 0
  store %union.rec* %107, %union.rec** %opred142, align 8
  store %union.rec* %107, %union.rec** @xx_link, align 8
  %112 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %112, %union.rec** @zz_res, align 8
  %113 = load %union.rec*, %union.rec** @supplied, align 8
  store %union.rec* %113, %union.rec** @zz_hold, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp143 = icmp eq %union.rec* %114, null
  br i1 %cmp143, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.126
  %115 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.177

cond.false:                                       ; preds = %if.end.126
  %116 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp145 = icmp eq %union.rec* %116, null
  br i1 %cmp145, label %cond.true.147, label %cond.false.148

cond.true.147:                                    ; preds = %cond.false
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.148:                                   ; preds = %cond.false
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1149 = bitcast %union.rec* %118 to %struct.word_type*
  %olist150 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1149, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist150, i32 0, i64 0
  %opred152 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx151, i32 0, i32 0
  %119 = load %union.rec*, %union.rec** %opred152, align 8
  store %union.rec* %119, %union.rec** @zz_tmp, align 8
  %120 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1153 = bitcast %union.rec* %120 to %struct.word_type*
  %olist154 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1153, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist154, i32 0, i64 0
  %opred156 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx155, i32 0, i32 0
  %121 = load %union.rec*, %union.rec** %opred156, align 8
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1157 = bitcast %union.rec* %122 to %struct.word_type*
  %olist158 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1157, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist158, i32 0, i64 0
  %opred160 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx159, i32 0, i32 0
  store %union.rec* %121, %union.rec** %opred160, align 8
  %123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %124 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1161 = bitcast %union.rec* %124 to %struct.word_type*
  %olist162 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1161, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist162, i32 0, i64 0
  %opred164 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx163, i32 0, i32 0
  %125 = load %union.rec*, %union.rec** %opred164, align 8
  %os1165 = bitcast %union.rec* %125 to %struct.word_type*
  %olist166 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1165, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist166, i32 0, i64 0
  %osucc168 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx167, i32 0, i32 1
  store %union.rec* %123, %union.rec** %osucc168, align 8
  %126 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %127 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1169 = bitcast %union.rec* %127 to %struct.word_type*
  %olist170 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1169, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist170, i32 0, i64 0
  %opred172 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx171, i32 0, i32 0
  store %union.rec* %126, %union.rec** %opred172, align 8
  %128 = load %union.rec*, %union.rec** @zz_res, align 8
  %129 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1173 = bitcast %union.rec* %129 to %struct.word_type*
  %olist174 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1173, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist174, i32 0, i64 0
  %osucc176 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx175, i32 0, i32 1
  store %union.rec* %128, %union.rec** %osucc176, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.148, %cond.true.147
  %cond = phi %union.rec* [ %117, %cond.true.147 ], [ %128, %cond.false.148 ]
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.end, %cond.true
  %cond178 = phi %union.rec* [ %115, %cond.true ], [ %cond, %cond.end ]
  %130 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %130, %union.rec** @zz_res, align 8
  %131 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %131, %union.rec** @zz_hold, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp179 = icmp eq %union.rec* %132, null
  br i1 %cmp179, label %cond.true.181, label %cond.false.182

cond.true.181:                                    ; preds = %cond.end.177
  %133 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.217

cond.false.182:                                   ; preds = %cond.end.177
  %134 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp183 = icmp eq %union.rec* %134, null
  br i1 %cmp183, label %cond.true.185, label %cond.false.186

cond.true.185:                                    ; preds = %cond.false.182
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.215

cond.false.186:                                   ; preds = %cond.false.182
  %136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1187 = bitcast %union.rec* %136 to %struct.word_type*
  %olist188 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1187, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist188, i32 0, i64 1
  %opred190 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx189, i32 0, i32 0
  %137 = load %union.rec*, %union.rec** %opred190, align 8
  store %union.rec* %137, %union.rec** @zz_tmp, align 8
  %138 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1191 = bitcast %union.rec* %138 to %struct.word_type*
  %olist192 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1191, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist192, i32 0, i64 1
  %opred194 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx193, i32 0, i32 0
  %139 = load %union.rec*, %union.rec** %opred194, align 8
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1195 = bitcast %union.rec* %140 to %struct.word_type*
  %olist196 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1195, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist196, i32 0, i64 1
  %opred198 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx197, i32 0, i32 0
  store %union.rec* %139, %union.rec** %opred198, align 8
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %142 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1199 = bitcast %union.rec* %142 to %struct.word_type*
  %olist200 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1199, i32 0, i32 0
  %arrayidx201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist200, i32 0, i64 1
  %opred202 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx201, i32 0, i32 0
  %143 = load %union.rec*, %union.rec** %opred202, align 8
  %os1203 = bitcast %union.rec* %143 to %struct.word_type*
  %olist204 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1203, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist204, i32 0, i64 1
  %osucc206 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx205, i32 0, i32 1
  store %union.rec* %141, %union.rec** %osucc206, align 8
  %144 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %145 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1207 = bitcast %union.rec* %145 to %struct.word_type*
  %olist208 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1207, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist208, i32 0, i64 1
  %opred210 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx209, i32 0, i32 0
  store %union.rec* %144, %union.rec** %opred210, align 8
  %146 = load %union.rec*, %union.rec** @zz_res, align 8
  %147 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1211 = bitcast %union.rec* %147 to %struct.word_type*
  %olist212 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1211, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist212, i32 0, i64 1
  %osucc214 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx213, i32 0, i32 1
  store %union.rec* %146, %union.rec** %osucc214, align 8
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.186, %cond.true.185
  %cond216 = phi %union.rec* [ %135, %cond.true.185 ], [ %146, %cond.false.186 ]
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.end.215, %cond.true.181
  %cond218 = phi %union.rec* [ %133, %cond.true.181 ], [ %cond216, %cond.end.215 ]
  br label %if.end.223

if.else.219:                                      ; preds = %if.else.101
  %148 = load i16, i16* %fnum, align 2
  %call220 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %148)
  %149 = load i16, i16* %fnum, align 2
  %call221 = call i8* @FileName(i16 zeroext %149)
  %call222 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.135, i32 0, i32 0), i32 2, %struct.FILE_POS* %call220, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.132, i32 0, i32 0), i8* %call221)
  br label %if.end.223

if.end.223:                                       ; preds = %if.else.219, %cond.end.217
  %arraydecay224 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call225 = call i32 @fputs(i8* %arraydecay224, %struct._IO_FILE* %150)
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %152 = load i16, i16* %fnum, align 2
  %call226 = call i8* @FileName(i16 zeroext %152)
  %call227 = call i8* @mybasename(i8* %call226)
  %call228 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %151, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.132, i32 0, i32 0), i8* %call227)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.223
  %arraydecay229 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call230 = call i8* @fgets(i8* %arraydecay229, i32 512, %struct._IO_FILE* %153)
  %cmp231 = icmp ne i8* %call230, null
  br i1 %cmp231, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay233 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call234 = call i32 @fputs(i8* %arraydecay233, %struct._IO_FILE* %154)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call235 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %155)
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call236 = call i32 @fclose(%struct._IO_FILE* %156)
  br label %if.end.237

if.end.237:                                       ; preds = %while.end, %if.then.97
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.then.89
  br label %for.inc

for.inc:                                          ; preds = %if.end.238
  %157 = load i16, i16* %fnum, align 2
  %call239 = call zeroext i16 @NextFile(i16 zeroext %157)
  store i16 %call239, i16* %fnum, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call240 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.137, i32 0, i32 0), %struct._IO_FILE* %158)
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call241 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.138, i32 0, i32 0), %struct._IO_FILE* %159)
  call void (...) @MapPrintEncodings()
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call242 = call i32 @fputs(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.139, i32 0, i32 0), %struct._IO_FILE* %160)
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call243 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i32 0, i32 0), %struct._IO_FILE* %161)
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.141, i32 0, i32 0))
  %163 = load i8*, i8** %label.addr, align 8
  store i8* %163, i8** %p, align 8
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.253, %for.end
  %164 = load i8*, i8** %p, align 8
  %165 = load i8, i8* %164, align 1
  %conv246 = zext i8 %165 to i32
  %cmp247 = icmp ne i32 %conv246, 0
  br i1 %cmp247, label %for.body.249, label %for.end.254

for.body.249:                                     ; preds = %for.cond.245
  %166 = load i8*, i8** %p, align 8
  %167 = load i8, i8* %166, align 1
  %idxprom250 = zext i8 %167 to i64
  %arrayidx251 = getelementptr inbounds [0 x i8*], [0 x i8*]* @EightBitToPrintForm, i32 0, i64 %idxprom250
  %168 = load i8*, i8** %arrayidx251, align 8
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call252 = call i32 @fputs(i8* %168, %struct._IO_FILE* %169)
  br label %for.inc.253

for.inc.253:                                      ; preds = %for.body.249
  %170 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond.245

for.end.254:                                      ; preds = %for.cond.245
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %172 = load i32, i32* @pagecount, align 4
  %inc = add nsw i32 %172, 1
  store i32 %inc, i32* @pagecount, align 4
  %call255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), i32 %inc)
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call256 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.143, i32 0, i32 0))
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageResources(%struct._IO_FILE* %174)
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call257 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.144, i32 0, i32 0))
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageSetup(%struct._IO_FILE* %176)
  call void @FontAdvanceCurrentPage()
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i32 0, i32 0), double 5.000000e-02, i32 10)
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call259 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.146, i32 0, i32 0))
  store i32 1, i32* @prologue_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintBetweenPages(i32 %h, i32 %v, i8* %label) #0 {
entry:
  %h.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %label.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i32 %h, i32* %h.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  store i8* %label, i8** %label.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.162, i32 0, i32 0))
  store i32 0, i32* @gs_stack_top, align 4
  store i32 0, i32* @cpexists, align 4
  store i32 0, i32* @currentfont, align 4
  store i32 0, i32* @currentcolour, align 4
  %1 = load i32, i32* @Encapsulated, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PS_PrintAfterLastPage()
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call1 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.163, i32 0, i32 0), i32 1, %struct.FILE_POS* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.164, i32 0, i32 0))
  %4 = load i8*, i8** %label.addr, align 8
  store i8* %4, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %idxprom = zext i8 %8 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @EightBitToPrintForm, i32 0, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call4 = call i32 @fputs(i8* %9, %struct._IO_FILE* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %13 = load i32, i32* @pagecount, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* @pagecount, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0), i32 %inc)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.143, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageResources(%struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.144, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @FontPrintPageSetup(%struct._IO_FILE* %17)
  call void @FontAdvanceCurrentPage()
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i32 0, i32 0), double 5.000000e-02, i32 10)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.165, i32 0, i32 0))
  store i32 0, i32* @wordcount, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintAfterLastPage() #0 {
entry:
  %x = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %first_need = alloca i32, align 4
  %0 = load i32, i32* @prologue_done, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.80

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.162, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.166, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call2 = call i32 @FontNeeded(%struct._IO_FILE* %3)
  store i32 %call2, i32* %first_need, align 4
  %4 = load %union.rec*, %union.rec** @needs, align 8
  %os1 = bitcast %union.rec* %4 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %5 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %5, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %if.then
  %6 = load %union.rec*, %union.rec** %link, align 8
  %7 = load %union.rec*, %union.rec** @needs, align 8
  %cmp = icmp ne %union.rec* %6, %7
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %8 = load %union.rec*, %union.rec** %link, align 8
  %os13 = bitcast %union.rec* %8 to %struct.word_type*
  %olist4 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist4, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx5, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %9, %union.rec** %x, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %10 = load %union.rec*, %union.rec** %x, align 8
  %os17 = bitcast %union.rec* %10 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os17, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  %11 = load i8, i8* %otype, align 1
  %conv = zext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv, 0
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.6
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %12 = load %union.rec*, %union.rec** %x, align 8
  %os111 = bitcast %union.rec* %12 to %struct.word_type*
  %olist12 = getelementptr inbounds %struct.word_type, %struct.word_type* %os111, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist12, i32 0, i64 1
  %opred14 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx13, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %opred14, align 8
  store %union.rec* %13, %union.rec** %x, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %14 = load %union.rec*, %union.rec** %x, align 8
  %os115 = bitcast %union.rec* %14 to %struct.word_type*
  %ou116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os115, i32 0, i32 1
  %os1117 = bitcast %union.FIRST_UNION* %ou116 to %struct.anon*
  %otype18 = getelementptr inbounds %struct.anon, %struct.anon* %os1117, i32 0, i32 0
  %15 = load i8, i8* %otype18, align 1
  %conv19 = zext i8 %15 to i32
  %cmp20 = icmp eq i32 %conv19, 11
  br i1 %cmp20, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %16 = load %union.rec*, %union.rec** %x, align 8
  %os122 = bitcast %union.rec* %16 to %struct.word_type*
  %ou123 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 1
  %os1124 = bitcast %union.FIRST_UNION* %ou123 to %struct.anon*
  %otype25 = getelementptr inbounds %struct.anon, %struct.anon* %os1124, i32 0, i32 0
  %17 = load i8, i8* %otype25, align 1
  %conv26 = zext i8 %17 to i32
  %cmp27 = icmp eq i32 %conv26, 12
  br i1 %cmp27, label %if.end, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call30 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.167, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.29, %lor.lhs.false, %for.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %20 = load i32, i32* %first_need, align 4
  %tobool31 = icmp ne i32 %20, 0
  %cond = select i1 %tobool31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0)
  %21 = load %union.rec*, %union.rec** %x, align 8
  %os132 = bitcast %union.rec* %21 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os132, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i32 0, i32 0), i8* %cond, i8* %arraydecay)
  store i32 0, i32* %first_need, align 4
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end
  %22 = load %union.rec*, %union.rec** %link, align 8
  %os135 = bitcast %union.rec* %22 to %struct.word_type*
  %olist36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist36, i32 0, i64 0
  %osucc38 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx37, i32 0, i32 1
  %23 = load %union.rec*, %union.rec** %osucc38, align 8
  store %union.rec* %23, %union.rec** %link, align 8
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0))
  %25 = load %union.rec*, %union.rec** @supplied, align 8
  %os141 = bitcast %union.rec* %25 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 0
  %osucc44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 1
  %26 = load %union.rec*, %union.rec** %osucc44, align 8
  store %union.rec* %26, %union.rec** %link, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.72, %for.end.39
  %27 = load %union.rec*, %union.rec** %link, align 8
  %28 = load %union.rec*, %union.rec** @supplied, align 8
  %cmp46 = icmp ne %union.rec* %27, %28
  br i1 %cmp46, label %for.body.48, label %for.end.77

for.body.48:                                      ; preds = %for.cond.45
  %29 = load %union.rec*, %union.rec** %link, align 8
  %os149 = bitcast %union.rec* %29 to %struct.word_type*
  %olist50 = getelementptr inbounds %struct.word_type, %struct.word_type* %os149, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist50, i32 0, i64 1
  %opred52 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx51, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %opred52, align 8
  store %union.rec* %30, %union.rec** %x, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.62, %for.body.48
  %31 = load %union.rec*, %union.rec** %x, align 8
  %os154 = bitcast %union.rec* %31 to %struct.word_type*
  %ou155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 1
  %os1156 = bitcast %union.FIRST_UNION* %ou155 to %struct.anon*
  %otype57 = getelementptr inbounds %struct.anon, %struct.anon* %os1156, i32 0, i32 0
  %32 = load i8, i8* %otype57, align 1
  %conv58 = zext i8 %32 to i32
  %cmp59 = icmp eq i32 %conv58, 0
  br i1 %cmp59, label %for.body.61, label %for.end.67

for.body.61:                                      ; preds = %for.cond.53
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.61
  %33 = load %union.rec*, %union.rec** %x, align 8
  %os163 = bitcast %union.rec* %33 to %struct.word_type*
  %olist64 = getelementptr inbounds %struct.word_type, %struct.word_type* %os163, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist64, i32 0, i64 1
  %opred66 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx65, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %opred66, align 8
  store %union.rec* %34, %union.rec** %x, align 8
  br label %for.cond.53

for.end.67:                                       ; preds = %for.cond.53
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %36 = load %union.rec*, %union.rec** %x, align 8
  %os168 = bitcast %union.rec* %36 to %struct.word_type*
  %ostring69 = getelementptr inbounds %struct.word_type, %struct.word_type* %os168, i32 0, i32 4
  %arraydecay70 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring69, i32 0, i32 0
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.170, i32 0, i32 0), i8* %arraydecay70)
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.67
  %37 = load %union.rec*, %union.rec** %link, align 8
  %os173 = bitcast %union.rec* %37 to %struct.word_type*
  %olist74 = getelementptr inbounds %struct.word_type, %struct.word_type* %os173, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist74, i32 0, i64 0
  %osucc76 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx75, i32 0, i32 1
  %38 = load %union.rec*, %union.rec** %osucc76, align 8
  store %union.rec* %38, %union.rec** %link, align 8
  br label %for.cond.45

for.end.77:                                       ; preds = %for.cond.45
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @MapPrintPSResources(%struct._IO_FILE* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %41 = load i32, i32* @pagecount, align 4
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.171, i32 0, i32 0), i32 %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i32 0, i32 0))
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.77, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintWord(%union.rec* %x, i32 %hpos, i32 %vpos) #0 {
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
  %buff = alloca [20 x i8], align 16
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %buff162 = alloca [20 x i8], align 16
  %i163 = alloca i32, align 4
  %y164 = alloca i32, align 4
  %buff194 = alloca [20 x i8], align 16
  %i195 = alloca i32, align 4
  %y196 = alloca i32, align 4
  %buff253 = alloca [20 x i8], align 16
  %i254 = alloca i32, align 4
  %y255 = alloca i32, align 4
  %ua_ch1 = alloca i32, align 4
  %ua_ch2 = alloca i32, align 4
  %i355 = alloca i32, align 4
  %j = alloca i32, align 4
  %kc = alloca i8*, align 8
  %buff441 = alloca [20 x i8], align 16
  %i442 = alloca i32, align 4
  %y443 = alloca i32, align 4
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
  br i1 %cmp1, label %if.then, label %if.end.16

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
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i32 %call7, i8* %call8)
  %11 = load i32, i32* @wordcount, align 4
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, i32* @wordcount, align 4
  %cmp11 = icmp sge i32 %inc10, 5
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call14 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %12)
  store i32 0, i32* @wordcount, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call15 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  %14 = load %union.rec*, %union.rec** %x.addr, align 8
  %os117 = bitcast %union.rec* %14 to %struct.word_type*
  %ou218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 2
  %os2219 = bitcast %union.SECOND_UNION* %ou218 to %struct.anon.1*
  %15 = bitcast %struct.anon.1* %os2219 to i32*
  %bf.load20 = load i32, i32* %15, align 4
  %bf.lshr = lshr i32 %bf.load20, 12
  %bf.clear21 = and i32 %bf.lshr, 1023
  %16 = load i32, i32* @currentcolour, align 4
  %cmp22 = icmp ne i32 %bf.clear21, %16
  br i1 %cmp22, label %if.then.24, label %if.end.45

if.then.24:                                       ; preds = %if.end.16
  %17 = load %union.rec*, %union.rec** %x.addr, align 8
  %os125 = bitcast %union.rec* %17 to %struct.word_type*
  %ou226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os125, i32 0, i32 2
  %os2227 = bitcast %union.SECOND_UNION* %ou226 to %struct.anon.1*
  %18 = bitcast %struct.anon.1* %os2227 to i32*
  %bf.load28 = load i32, i32* %18, align 4
  %bf.lshr29 = lshr i32 %bf.load28, 12
  %bf.clear30 = and i32 %bf.lshr29, 1023
  store i32 %bf.clear30, i32* @currentcolour, align 4
  %19 = load i32, i32* @currentcolour, align 4
  %cmp31 = icmp ugt i32 %19, 0
  br i1 %cmp31, label %if.then.33, label %if.end.44

if.then.33:                                       ; preds = %if.then.24
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %21 = load i32, i32* @currentcolour, align 4
  %call34 = call i8* @ColourCommand(i32 %21)
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i32 0, i32 0), i8* %call34)
  %22 = load i32, i32* @wordcount, align 4
  %inc36 = add nsw i32 %22, 1
  store i32 %inc36, i32* @wordcount, align 4
  %cmp37 = icmp sge i32 %inc36, 5
  br i1 %cmp37, label %if.then.39, label %if.else.41

if.then.39:                                       ; preds = %if.then.33
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call40 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %23)
  store i32 0, i32* @wordcount, align 4
  br label %if.end.43

if.else.41:                                       ; preds = %if.then.33
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call42 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %24)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.39
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.24
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.16
  %25 = load %union.rec*, %union.rec** %x.addr, align 8
  %os146 = bitcast %union.rec* %25 to %struct.word_type*
  %ou247 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 2
  %os2248 = bitcast %union.SECOND_UNION* %ou247 to %struct.anon.1*
  %26 = bitcast %struct.anon.1* %os2248 to i32*
  %bf.load49 = load i32, i32* %26, align 4
  %bf.clear50 = and i32 %bf.load49, 4095
  %idxprom = zext i32 %bf.clear50 to i64
  %27 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx = getelementptr inbounds %struct.font_rec, %struct.font_rec* %27, i64 %idxprom
  %lig_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx, i32 0, i32 1
  %28 = load i8*, i8** %lig_table, align 8
  store i8* %28, i8** %lig, align 8
  %29 = load %union.rec*, %union.rec** %x.addr, align 8
  %os151 = bitcast %union.rec* %29 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  store i8* %arraydecay, i8** %q, align 8
  store i8* %arraydecay, i8** %p, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.45
  %30 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %q, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr52, i8** %q, align 8
  store i8 %31, i8* %32, align 1
  %idxprom53 = zext i8 %31 to i64
  %33 = load i8*, i8** %lig, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %33, i64 %idxprom53
  %34 = load i8, i8* %arrayidx54, align 1
  %tobool = icmp ne i8 %34, 0
  br i1 %tobool, label %if.then.55, label %if.end.106

if.then.55:                                       ; preds = %do.body
  %35 = load i8*, i8** %q, align 8
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 -1
  %36 = load i8, i8* %add.ptr, align 1
  %idxprom56 = zext i8 %36 to i64
  %37 = load i8*, i8** %lig, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %37, i64 %idxprom56
  %38 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %38 to i32
  %cmp59 = icmp eq i32 %conv58, 1
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.then.55
  br label %do.cond

if.else.62:                                       ; preds = %if.then.55
  %39 = load i8*, i8** %p, align 8
  %add.ptr63 = getelementptr inbounds i8, i8* %39, i64 -1
  %40 = load i8, i8* %add.ptr63, align 1
  %idxprom64 = zext i8 %40 to i64
  %41 = load i8*, i8** %lig, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %41, i64 %idxprom64
  %42 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %42 to i32
  %add = add nsw i32 %conv66, 256
  %idxprom67 = sext i32 %add to i64
  %43 = load i8*, i8** %lig, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %43, i64 %idxprom67
  store i8* %arrayidx68, i8** %a, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.103, %if.else.62
  %44 = load i8*, i8** %a, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr69, i8** %a, align 8
  %45 = load i8, i8* %44, align 1
  %conv70 = zext i8 %45 to i32
  %46 = load i8*, i8** %p, align 8
  %add.ptr71 = getelementptr inbounds i8, i8* %46, i64 -1
  %47 = load i8, i8* %add.ptr71, align 1
  %conv72 = zext i8 %47 to i32
  %cmp73 = icmp eq i32 %conv70, %conv72
  br i1 %cmp73, label %while.body, label %while.end.104

while.body:                                       ; preds = %while.cond
  %48 = load i8*, i8** %p, align 8
  store i8* %48, i8** %b, align 8
  br label %while.cond.75

while.cond.75:                                    ; preds = %while.body.87, %while.body
  %49 = load i8*, i8** %a, align 8
  %50 = load i8, i8* %49, align 1
  %conv76 = zext i8 %50 to i32
  %51 = load i8*, i8** %b, align 8
  %52 = load i8, i8* %51, align 1
  %conv77 = zext i8 %52 to i32
  %cmp78 = icmp eq i32 %conv76, %conv77
  br i1 %cmp78, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond.75
  %53 = load i8*, i8** %a, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %add.ptr80, align 1
  %conv81 = zext i8 %54 to i32
  %cmp82 = icmp ne i32 %conv81, 0
  br i1 %cmp82, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %55 = load i8*, i8** %b, align 8
  %56 = load i8, i8* %55, align 1
  %conv84 = zext i8 %56 to i32
  %cmp85 = icmp ne i32 %conv84, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond.75
  %57 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.75 ], [ %cmp85, %land.rhs ]
  br i1 %57, label %while.body.87, label %while.end

while.body.87:                                    ; preds = %land.end
  %58 = load i8*, i8** %a, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr88, i8** %a, align 8
  %59 = load i8*, i8** %b, align 8
  %incdec.ptr89 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr89, i8** %b, align 8
  br label %while.cond.75

while.end:                                        ; preds = %land.end
  %60 = load i8*, i8** %a, align 8
  %add.ptr90 = getelementptr inbounds i8, i8* %60, i64 1
  %61 = load i8, i8* %add.ptr90, align 1
  %conv91 = zext i8 %61 to i32
  %cmp92 = icmp eq i32 %conv91, 0
  br i1 %cmp92, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %while.end
  %62 = load i8*, i8** %a, align 8
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %q, align 8
  %add.ptr95 = getelementptr inbounds i8, i8* %64, i64 -1
  store i8 %63, i8* %add.ptr95, align 1
  %65 = load i8*, i8** %b, align 8
  store i8* %65, i8** %p, align 8
  br label %while.end.104

if.else.96:                                       ; preds = %while.end
  br label %while.cond.97

while.cond.97:                                    ; preds = %while.body.100, %if.else.96
  %66 = load i8*, i8** %a, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr98, i8** %a, align 8
  %67 = load i8, i8* %incdec.ptr98, align 1
  %tobool99 = icmp ne i8 %67, 0
  br i1 %tobool99, label %while.body.100, label %while.end.101

while.body.100:                                   ; preds = %while.cond.97
  br label %while.cond.97

while.end.101:                                    ; preds = %while.cond.97
  %68 = load i8*, i8** %a, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr102, i8** %a, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %while.end.101
  br label %while.cond

while.end.104:                                    ; preds = %if.then.94, %while.cond
  br label %if.end.105

if.end.105:                                       ; preds = %while.end.104
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.106, %if.then.61
  %69 = load i8*, i8** %p, align 8
  %70 = load i8, i8* %69, align 1
  %tobool107 = icmp ne i8 %70, 0
  br i1 %tobool107, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %71 = load i8*, i8** %q, align 8
  store i8 0, i8* %71, align 1
  %72 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1108 = bitcast %union.rec* %72 to %struct.word_type*
  %ou2109 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1108, i32 0, i32 2
  %os22110 = bitcast %union.SECOND_UNION* %ou2109 to %struct.anon.1*
  %73 = bitcast %struct.anon.1* %os22110 to i32*
  %bf.load111 = load i32, i32* %73, align 4
  %bf.clear112 = and i32 %bf.load111, 4095
  %idxprom113 = zext i32 %bf.clear112 to i64
  %74 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx114 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %74, i64 %idxprom113
  %cmp_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx114, i32 0, i32 3
  %75 = load %struct.composite_rec*, %struct.composite_rec** %cmp_table, align 8
  store %struct.composite_rec* %75, %struct.composite_rec** %cmp, align 8
  %76 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1115 = bitcast %union.rec* %76 to %struct.word_type*
  %ou2116 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1115, i32 0, i32 2
  %os22117 = bitcast %union.SECOND_UNION* %ou2116 to %struct.anon.1*
  %77 = bitcast %struct.anon.1* %os22117 to i32*
  %bf.load118 = load i32, i32* %77, align 4
  %bf.clear119 = and i32 %bf.load118, 4095
  %idxprom120 = zext i32 %bf.clear119 to i64
  %78 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx121 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %78, i64 %idxprom120
  %composite122 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx121, i32 0, i32 2
  %79 = load i16*, i16** %composite122, align 8
  store i16* %79, i16** %composite, align 8
  %80 = load i32, i32* %vpos.addr, align 4
  %81 = load i16, i16* @currentxheight2, align 2
  %conv123 = sext i16 %81 to i32
  %sub = sub nsw i32 %80, %conv123
  store i32 %sub, i32* %vpos.addr, align 4
  %82 = load i32, i32* @cpexists, align 4
  %tobool124 = icmp ne i32 %82, 0
  br i1 %tobool124, label %land.lhs.true.125, label %if.else.161

land.lhs.true.125:                                ; preds = %do.end
  %83 = load i32, i32* @currenty, align 4
  %84 = load i32, i32* %vpos.addr, align 4
  %cmp126 = icmp eq i32 %83, %84
  br i1 %cmp126, label %if.then.128, label %if.else.161

if.then.128:                                      ; preds = %land.lhs.true.125
  %85 = load i32, i32* %hpos.addr, align 4
  %cmp129 = icmp sge i32 %85, 0
  br i1 %cmp129, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %if.then.128
  %86 = load i32, i32* %hpos.addr, align 4
  store i32 %86, i32* %y, align 4
  br label %if.end.135

if.else.132:                                      ; preds = %if.then.128
  %87 = load i32, i32* %hpos.addr, align 4
  %sub133 = sub nsw i32 0, %87
  store i32 %sub133, i32* %y, align 4
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call134 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %88)
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.132, %if.then.131
  store i32 0, i32* %i, align 4
  br label %do.body.136

do.body.136:                                      ; preds = %do.cond.142, %if.end.135
  %89 = load i32, i32* %y, align 4
  %rem = srem i32 %89, 10
  %add137 = add nsw i32 %rem, 48
  %conv138 = trunc i32 %add137 to i8
  %90 = load i32, i32* %i, align 4
  %inc139 = add nsw i32 %90, 1
  store i32 %inc139, i32* %i, align 4
  %idxprom140 = sext i32 %90 to i64
  %arrayidx141 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i64 %idxprom140
  store i8 %conv138, i8* %arrayidx141, align 1
  br label %do.cond.142

do.cond.142:                                      ; preds = %do.body.136
  %91 = load i32, i32* %y, align 4
  %div = sdiv i32 %91, 10
  store i32 %div, i32* %y, align 4
  %cmp143 = icmp sgt i32 %div, 0
  br i1 %cmp143, label %do.body.136, label %do.end.145

do.end.145:                                       ; preds = %do.cond.142
  br label %do.body.146

do.body.146:                                      ; preds = %do.cond.151, %do.end.145
  %92 = load i32, i32* %i, align 4
  %dec = add nsw i32 %92, -1
  store i32 %dec, i32* %i, align 4
  %93 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %93 to i64
  %arrayidx148 = getelementptr inbounds [20 x i8], [20 x i8]* %buff, i32 0, i64 %idxprom147
  %94 = load i8, i8* %arrayidx148, align 1
  %conv149 = sext i8 %94 to i32
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call150 = call i32 @_IO_putc(i32 %conv149, %struct._IO_FILE* %95)
  br label %do.cond.151

do.cond.151:                                      ; preds = %do.body.146
  %96 = load i32, i32* %i, align 4
  %tobool152 = icmp ne i32 %96, 0
  br i1 %tobool152, label %do.body.146, label %do.end.153

do.end.153:                                       ; preds = %do.cond.151
  %97 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1154 = bitcast %union.rec* %97 to %struct.word_type*
  %ou2155 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1154, i32 0, i32 2
  %os22156 = bitcast %union.SECOND_UNION* %ou2155 to %struct.anon.1*
  %98 = bitcast %struct.anon.1* %os22156 to i32*
  %bf.load157 = load i32, i32* %98, align 4
  %bf.lshr158 = lshr i32 %bf.load157, 22
  %bf.clear159 = and i32 %bf.lshr158, 1
  %tobool160 = icmp ne i32 %bf.clear159, 0
  %cond = select i1 %tobool160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.176, i32 0, i32 0)
  store i8* %cond, i8** %command, align 8
  br label %if.end.233

if.else.161:                                      ; preds = %land.lhs.true.125, %do.end
  %99 = load i32, i32* %vpos.addr, align 4
  store i32 %99, i32* @currenty, align 4
  %100 = load i32, i32* %hpos.addr, align 4
  %cmp165 = icmp sge i32 %100, 0
  br i1 %cmp165, label %if.then.167, label %if.else.168

if.then.167:                                      ; preds = %if.else.161
  %101 = load i32, i32* %hpos.addr, align 4
  store i32 %101, i32* %y164, align 4
  br label %if.end.171

if.else.168:                                      ; preds = %if.else.161
  %102 = load i32, i32* %hpos.addr, align 4
  %sub169 = sub nsw i32 0, %102
  store i32 %sub169, i32* %y164, align 4
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call170 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %103)
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.168, %if.then.167
  store i32 0, i32* %i163, align 4
  br label %do.body.172

do.body.172:                                      ; preds = %do.cond.179, %if.end.171
  %104 = load i32, i32* %y164, align 4
  %rem173 = srem i32 %104, 10
  %add174 = add nsw i32 %rem173, 48
  %conv175 = trunc i32 %add174 to i8
  %105 = load i32, i32* %i163, align 4
  %inc176 = add nsw i32 %105, 1
  store i32 %inc176, i32* %i163, align 4
  %idxprom177 = sext i32 %105 to i64
  %arrayidx178 = getelementptr inbounds [20 x i8], [20 x i8]* %buff162, i32 0, i64 %idxprom177
  store i8 %conv175, i8* %arrayidx178, align 1
  br label %do.cond.179

do.cond.179:                                      ; preds = %do.body.172
  %106 = load i32, i32* %y164, align 4
  %div180 = sdiv i32 %106, 10
  store i32 %div180, i32* %y164, align 4
  %cmp181 = icmp sgt i32 %div180, 0
  br i1 %cmp181, label %do.body.172, label %do.end.183

do.end.183:                                       ; preds = %do.cond.179
  br label %do.body.184

do.body.184:                                      ; preds = %do.cond.190, %do.end.183
  %107 = load i32, i32* %i163, align 4
  %dec185 = add nsw i32 %107, -1
  store i32 %dec185, i32* %i163, align 4
  %108 = load i32, i32* %i163, align 4
  %idxprom186 = sext i32 %108 to i64
  %arrayidx187 = getelementptr inbounds [20 x i8], [20 x i8]* %buff162, i32 0, i64 %idxprom186
  %109 = load i8, i8* %arrayidx187, align 1
  %conv188 = sext i8 %109 to i32
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call189 = call i32 @_IO_putc(i32 %conv188, %struct._IO_FILE* %110)
  br label %do.cond.190

do.cond.190:                                      ; preds = %do.body.184
  %111 = load i32, i32* %i163, align 4
  %tobool191 = icmp ne i32 %111, 0
  br i1 %tobool191, label %do.body.184, label %do.end.192

do.end.192:                                       ; preds = %do.cond.190
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call193 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %112)
  %113 = load i32, i32* @currenty, align 4
  %cmp197 = icmp sge i32 %113, 0
  br i1 %cmp197, label %if.then.199, label %if.else.200

if.then.199:                                      ; preds = %do.end.192
  %114 = load i32, i32* @currenty, align 4
  store i32 %114, i32* %y196, align 4
  br label %if.end.203

if.else.200:                                      ; preds = %do.end.192
  %115 = load i32, i32* @currenty, align 4
  %sub201 = sub nsw i32 0, %115
  store i32 %sub201, i32* %y196, align 4
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call202 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %116)
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.200, %if.then.199
  store i32 0, i32* %i195, align 4
  br label %do.body.204

do.body.204:                                      ; preds = %do.cond.211, %if.end.203
  %117 = load i32, i32* %y196, align 4
  %rem205 = srem i32 %117, 10
  %add206 = add nsw i32 %rem205, 48
  %conv207 = trunc i32 %add206 to i8
  %118 = load i32, i32* %i195, align 4
  %inc208 = add nsw i32 %118, 1
  store i32 %inc208, i32* %i195, align 4
  %idxprom209 = sext i32 %118 to i64
  %arrayidx210 = getelementptr inbounds [20 x i8], [20 x i8]* %buff194, i32 0, i64 %idxprom209
  store i8 %conv207, i8* %arrayidx210, align 1
  br label %do.cond.211

do.cond.211:                                      ; preds = %do.body.204
  %119 = load i32, i32* %y196, align 4
  %div212 = sdiv i32 %119, 10
  store i32 %div212, i32* %y196, align 4
  %cmp213 = icmp sgt i32 %div212, 0
  br i1 %cmp213, label %do.body.204, label %do.end.215

do.end.215:                                       ; preds = %do.cond.211
  br label %do.body.216

do.body.216:                                      ; preds = %do.cond.222, %do.end.215
  %120 = load i32, i32* %i195, align 4
  %dec217 = add nsw i32 %120, -1
  store i32 %dec217, i32* %i195, align 4
  %121 = load i32, i32* %i195, align 4
  %idxprom218 = sext i32 %121 to i64
  %arrayidx219 = getelementptr inbounds [20 x i8], [20 x i8]* %buff194, i32 0, i64 %idxprom218
  %122 = load i8, i8* %arrayidx219, align 1
  %conv220 = sext i8 %122 to i32
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call221 = call i32 @_IO_putc(i32 %conv220, %struct._IO_FILE* %123)
  br label %do.cond.222

do.cond.222:                                      ; preds = %do.body.216
  %124 = load i32, i32* %i195, align 4
  %tobool223 = icmp ne i32 %124, 0
  br i1 %tobool223, label %do.body.216, label %do.end.224

do.end.224:                                       ; preds = %do.cond.222
  %125 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1225 = bitcast %union.rec* %125 to %struct.word_type*
  %ou2226 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1225, i32 0, i32 2
  %os22227 = bitcast %union.SECOND_UNION* %ou2226 to %struct.anon.1*
  %126 = bitcast %struct.anon.1* %os22227 to i32*
  %bf.load228 = load i32, i32* %126, align 4
  %bf.lshr229 = lshr i32 %bf.load228, 22
  %bf.clear230 = and i32 %bf.lshr229, 1
  %tobool231 = icmp ne i32 %bf.clear230, 0
  %cond232 = select i1 %tobool231, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i32 0, i32 0)
  store i8* %cond232, i8** %command, align 8
  store i32 1, i32* @cpexists, align 4
  br label %if.end.233

if.end.233:                                       ; preds = %do.end.224, %do.end.153
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call234 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %127)
  %128 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1235 = bitcast %union.rec* %128 to %struct.word_type*
  %ostring236 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1235, i32 0, i32 4
  %arraydecay237 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring236, i32 0, i32 0
  store i8* %arraydecay237, i8** %p, align 8
  %129 = load i8*, i8** %p, align 8
  %130 = load i8, i8* %129, align 1
  %idxprom238 = zext i8 %130 to i64
  %131 = load i16*, i16** %composite, align 8
  %arrayidx239 = getelementptr inbounds i16, i16* %131, i64 %idxprom238
  %132 = load i16, i16* %arrayidx239, align 2
  %tobool240 = icmp ne i16 %132, 0
  br i1 %tobool240, label %if.then.241, label %if.else.327

if.then.241:                                      ; preds = %if.end.233
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %134 = load i8*, i8** %command, align 8
  %call242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i32 0, i32 0), i8* %134)
  %135 = load i8*, i8** %p, align 8
  %136 = load i8, i8* %135, align 1
  %idxprom243 = zext i8 %136 to i64
  %137 = load i16*, i16** %composite, align 8
  %arrayidx244 = getelementptr inbounds i16, i16* %137, i64 %idxprom243
  %138 = load i16, i16* %arrayidx244, align 2
  %idxprom245 = zext i16 %138 to i64
  %139 = load %struct.composite_rec*, %struct.composite_rec** %cmp, align 8
  %arrayidx246 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %139, i64 %idxprom245
  %140 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1247 = bitcast %union.rec* %140 to %struct.word_type*
  %ou2248 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1247, i32 0, i32 2
  %os22249 = bitcast %union.SECOND_UNION* %ou2248 to %struct.anon.1*
  %141 = bitcast %struct.anon.1* %os22249 to i32*
  %bf.load250 = load i32, i32* %141, align 4
  %bf.lshr251 = lshr i32 %bf.load250, 22
  %bf.clear252 = and i32 %bf.lshr251, 1
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PrintComposite(%struct.composite_rec* %arrayidx246, i32 %bf.clear252, %struct._IO_FILE* %142)
  %143 = load i8*, i8** %p, align 8
  %144 = load i8, i8* %143, align 1
  %idxprom256 = zext i8 %144 to i64
  %145 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1257 = bitcast %union.rec* %145 to %struct.word_type*
  %ou2258 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1257, i32 0, i32 2
  %os22259 = bitcast %union.SECOND_UNION* %ou2258 to %struct.anon.1*
  %146 = bitcast %struct.anon.1* %os22259 to i32*
  %bf.load260 = load i32, i32* %146, align 4
  %bf.clear261 = and i32 %bf.load260, 4095
  %idxprom262 = zext i32 %bf.clear261 to i64
  %147 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx263 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %147, i64 %idxprom262
  %size_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx263, i32 0, i32 0
  %148 = load %struct.metrics*, %struct.metrics** %size_table, align 8
  %arrayidx264 = getelementptr inbounds %struct.metrics, %struct.metrics* %148, i64 %idxprom256
  %right = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx264, i32 0, i32 3
  %149 = load i16, i16* %right, align 2
  %conv265 = sext i16 %149 to i32
  %cmp266 = icmp sge i32 %conv265, 0
  br i1 %cmp266, label %if.then.268, label %if.else.281

if.then.268:                                      ; preds = %if.then.241
  %150 = load i8*, i8** %p, align 8
  %151 = load i8, i8* %150, align 1
  %idxprom269 = zext i8 %151 to i64
  %152 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1270 = bitcast %union.rec* %152 to %struct.word_type*
  %ou2271 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1270, i32 0, i32 2
  %os22272 = bitcast %union.SECOND_UNION* %ou2271 to %struct.anon.1*
  %153 = bitcast %struct.anon.1* %os22272 to i32*
  %bf.load273 = load i32, i32* %153, align 4
  %bf.clear274 = and i32 %bf.load273, 4095
  %idxprom275 = zext i32 %bf.clear274 to i64
  %154 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx276 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %154, i64 %idxprom275
  %size_table277 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx276, i32 0, i32 0
  %155 = load %struct.metrics*, %struct.metrics** %size_table277, align 8
  %arrayidx278 = getelementptr inbounds %struct.metrics, %struct.metrics* %155, i64 %idxprom269
  %right279 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx278, i32 0, i32 3
  %156 = load i16, i16* %right279, align 2
  %conv280 = sext i16 %156 to i32
  store i32 %conv280, i32* %y255, align 4
  br label %if.end.296

if.else.281:                                      ; preds = %if.then.241
  %157 = load i8*, i8** %p, align 8
  %158 = load i8, i8* %157, align 1
  %idxprom282 = zext i8 %158 to i64
  %159 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1283 = bitcast %union.rec* %159 to %struct.word_type*
  %ou2284 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1283, i32 0, i32 2
  %os22285 = bitcast %union.SECOND_UNION* %ou2284 to %struct.anon.1*
  %160 = bitcast %struct.anon.1* %os22285 to i32*
  %bf.load286 = load i32, i32* %160, align 4
  %bf.clear287 = and i32 %bf.load286, 4095
  %idxprom288 = zext i32 %bf.clear287 to i64
  %161 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx289 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %161, i64 %idxprom288
  %size_table290 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx289, i32 0, i32 0
  %162 = load %struct.metrics*, %struct.metrics** %size_table290, align 8
  %arrayidx291 = getelementptr inbounds %struct.metrics, %struct.metrics* %162, i64 %idxprom282
  %right292 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx291, i32 0, i32 3
  %163 = load i16, i16* %right292, align 2
  %conv293 = sext i16 %163 to i32
  %sub294 = sub nsw i32 0, %conv293
  store i32 %sub294, i32* %y255, align 4
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call295 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %164)
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.281, %if.then.268
  store i32 0, i32* %i254, align 4
  br label %do.body.297

do.body.297:                                      ; preds = %do.cond.304, %if.end.296
  %165 = load i32, i32* %y255, align 4
  %rem298 = srem i32 %165, 10
  %add299 = add nsw i32 %rem298, 48
  %conv300 = trunc i32 %add299 to i8
  %166 = load i32, i32* %i254, align 4
  %inc301 = add nsw i32 %166, 1
  store i32 %inc301, i32* %i254, align 4
  %idxprom302 = sext i32 %166 to i64
  %arrayidx303 = getelementptr inbounds [20 x i8], [20 x i8]* %buff253, i32 0, i64 %idxprom302
  store i8 %conv300, i8* %arrayidx303, align 1
  br label %do.cond.304

do.cond.304:                                      ; preds = %do.body.297
  %167 = load i32, i32* %y255, align 4
  %div305 = sdiv i32 %167, 10
  store i32 %div305, i32* %y255, align 4
  %cmp306 = icmp sgt i32 %div305, 0
  br i1 %cmp306, label %do.body.297, label %do.end.308

do.end.308:                                       ; preds = %do.cond.304
  br label %do.body.309

do.body.309:                                      ; preds = %do.cond.315, %do.end.308
  %168 = load i32, i32* %i254, align 4
  %dec310 = add nsw i32 %168, -1
  store i32 %dec310, i32* %i254, align 4
  %169 = load i32, i32* %i254, align 4
  %idxprom311 = sext i32 %169 to i64
  %arrayidx312 = getelementptr inbounds [20 x i8], [20 x i8]* %buff253, i32 0, i64 %idxprom311
  %170 = load i8, i8* %arrayidx312, align 1
  %conv313 = sext i8 %170 to i32
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call314 = call i32 @_IO_putc(i32 %conv313, %struct._IO_FILE* %171)
  br label %do.cond.315

do.cond.315:                                      ; preds = %do.body.309
  %172 = load i32, i32* %i254, align 4
  %tobool316 = icmp ne i32 %172, 0
  br i1 %tobool316, label %do.body.309, label %do.end.317

do.end.317:                                       ; preds = %do.cond.315
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call318 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %173)
  %174 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1319 = bitcast %union.rec* %174 to %struct.word_type*
  %ou2320 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1319, i32 0, i32 2
  %os22321 = bitcast %union.SECOND_UNION* %ou2320 to %struct.anon.1*
  %175 = bitcast %struct.anon.1* %os22321 to i32*
  %bf.load322 = load i32, i32* %175, align 4
  %bf.lshr323 = lshr i32 %bf.load322, 22
  %bf.clear324 = and i32 %bf.lshr323, 1
  %tobool325 = icmp ne i32 %bf.clear324, 0
  %cond326 = select i1 %tobool325, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i32 0, i32 0)
  store i8* %cond326, i8** %command, align 8
  br label %if.end.331

if.else.327:                                      ; preds = %if.end.233
  %176 = load i8*, i8** %p, align 8
  %177 = load i8, i8* %176, align 1
  %idxprom328 = zext i8 %177 to i64
  %arrayidx329 = getelementptr inbounds [0 x i8*], [0 x i8*]* @EightBitToPrintForm, i32 0, i64 %idxprom328
  %178 = load i8*, i8** %arrayidx329, align 8
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call330 = call i32 @fputs(i8* %178, %struct._IO_FILE* %179)
  br label %if.end.331

if.end.331:                                       ; preds = %if.else.327, %do.end.317
  %180 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1332 = bitcast %union.rec* %180 to %struct.word_type*
  %ou2333 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1332, i32 0, i32 2
  %os22334 = bitcast %union.SECOND_UNION* %ou2333 to %struct.anon.1*
  %181 = bitcast %struct.anon.1* %os22334 to i32*
  %bf.load335 = load i32, i32* %181, align 4
  %bf.clear336 = and i32 %bf.load335, 4095
  %idxprom337 = zext i32 %bf.clear336 to i64
  %182 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx338 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %182, i64 %idxprom337
  %font_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx338, i32 0, i32 5
  %183 = load %union.rec*, %union.rec** %font_table, align 8
  %os1339 = bitcast %union.rec* %183 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1339, i32 0, i32 3
  %os32 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.7*
  %ofont_mapping = getelementptr inbounds %struct.anon.7, %struct.anon.7* %os32, i32 0, i32 3
  %bf.load340 = load i8, i8* %ofont_mapping, align 4
  %bf.clear341 = and i8 %bf.load340, 127
  %bf.cast = zext i8 %bf.clear341 to i32
  store i32 %bf.cast, i32* %m, align 4
  %184 = load i32, i32* %m, align 4
  %idxprom342 = zext i32 %184 to i64
  %arrayidx343 = getelementptr inbounds [0 x %struct.mapvec*], [0 x %struct.mapvec*]* @MapTable, i32 0, i64 %idxprom342
  %185 = load %struct.mapvec*, %struct.mapvec** %arrayidx343, align 8
  %map = getelementptr inbounds %struct.mapvec, %struct.mapvec* %185, i32 0, i32 7
  %arrayidx344 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %map, i32 0, i64 2
  %arraydecay345 = getelementptr inbounds [256 x i8], [256 x i8]* %arrayidx344, i32 0, i32 0
  store i8* %arraydecay345, i8** %unacc, align 8
  %186 = load i8*, i8** %p, align 8
  %incdec.ptr346 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %incdec.ptr346, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.522, %if.end.331
  %187 = load i8*, i8** %p, align 8
  %188 = load i8, i8* %187, align 1
  %tobool347 = icmp ne i8 %188, 0
  br i1 %tobool347, label %for.body, label %for.end.524

for.body:                                         ; preds = %for.cond
  %189 = load i8*, i8** %p, align 8
  %add.ptr348 = getelementptr inbounds i8, i8* %189, i64 -1
  %190 = load i8, i8* %add.ptr348, align 1
  %idxprom349 = zext i8 %190 to i64
  %191 = load i8*, i8** %unacc, align 8
  %arrayidx350 = getelementptr inbounds i8, i8* %191, i64 %idxprom349
  %192 = load i8, i8* %arrayidx350, align 1
  %conv351 = zext i8 %192 to i32
  store i32 %conv351, i32* %ua_ch1, align 4
  %193 = load i8*, i8** %p, align 8
  %194 = load i8, i8* %193, align 1
  %idxprom352 = zext i8 %194 to i64
  %195 = load i8*, i8** %unacc, align 8
  %arrayidx353 = getelementptr inbounds i8, i8* %195, i64 %idxprom352
  %196 = load i8, i8* %arrayidx353, align 1
  %conv354 = zext i8 %196 to i32
  store i32 %conv354, i32* %ua_ch2, align 4
  %197 = load i32, i32* %ua_ch1, align 4
  %idxprom356 = sext i32 %197 to i64
  %198 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1357 = bitcast %union.rec* %198 to %struct.word_type*
  %ou2358 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1357, i32 0, i32 2
  %os22359 = bitcast %union.SECOND_UNION* %ou2358 to %struct.anon.1*
  %199 = bitcast %struct.anon.1* %os22359 to i32*
  %bf.load360 = load i32, i32* %199, align 4
  %bf.clear361 = and i32 %bf.load360, 4095
  %idxprom362 = zext i32 %bf.clear361 to i64
  %200 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx363 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %200, i64 %idxprom362
  %kern_table = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx363, i32 0, i32 9
  %201 = load i16*, i16** %kern_table, align 8
  %arrayidx364 = getelementptr inbounds i16, i16* %201, i64 %idxprom356
  %202 = load i16, i16* %arrayidx364, align 2
  %conv365 = zext i16 %202 to i32
  store i32 %conv365, i32* %i355, align 4
  %203 = load i32, i32* %j, align 4
  %204 = load i32, i32* %i355, align 4
  %cmp366 = icmp eq i32 %204, 0
  br i1 %cmp366, label %if.then.368, label %if.else.369

if.then.368:                                      ; preds = %for.body
  store i32 0, i32* %ksize, align 4
  br label %if.end.410

if.else.369:                                      ; preds = %for.body
  %205 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1370 = bitcast %union.rec* %205 to %struct.word_type*
  %ou2371 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1370, i32 0, i32 2
  %os22372 = bitcast %union.SECOND_UNION* %ou2371 to %struct.anon.1*
  %206 = bitcast %struct.anon.1* %os22372 to i32*
  %bf.load373 = load i32, i32* %206, align 4
  %bf.clear374 = and i32 %bf.load373, 4095
  %idxprom375 = zext i32 %bf.clear374 to i64
  %207 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx376 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %207, i64 %idxprom375
  %kern_chars = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx376, i32 0, i32 10
  %208 = load i8*, i8** %kern_chars, align 8
  store i8* %208, i8** %kc, align 8
  %209 = load i32, i32* %i355, align 4
  store i32 %209, i32* %j, align 4
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc, %if.else.369
  %210 = load i32, i32* %j, align 4
  %idxprom378 = sext i32 %210 to i64
  %211 = load i8*, i8** %kc, align 8
  %arrayidx379 = getelementptr inbounds i8, i8* %211, i64 %idxprom378
  %212 = load i8, i8* %arrayidx379, align 1
  %conv380 = zext i8 %212 to i32
  %213 = load i32, i32* %ua_ch2, align 4
  %cmp381 = icmp sgt i32 %conv380, %213
  br i1 %cmp381, label %for.body.383, label %for.end

for.body.383:                                     ; preds = %for.cond.377
  br label %for.inc

for.inc:                                          ; preds = %for.body.383
  %214 = load i32, i32* %j, align 4
  %inc384 = add nsw i32 %214, 1
  store i32 %inc384, i32* %j, align 4
  br label %for.cond.377

for.end:                                          ; preds = %for.cond.377
  %215 = load i32, i32* %j, align 4
  %idxprom385 = sext i32 %215 to i64
  %216 = load i8*, i8** %kc, align 8
  %arrayidx386 = getelementptr inbounds i8, i8* %216, i64 %idxprom385
  %217 = load i8, i8* %arrayidx386, align 1
  %conv387 = zext i8 %217 to i32
  %218 = load i32, i32* %ua_ch2, align 4
  %cmp388 = icmp eq i32 %conv387, %218
  br i1 %cmp388, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %219 = load i32, i32* %j, align 4
  %idxprom390 = sext i32 %219 to i64
  %220 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1391 = bitcast %union.rec* %220 to %struct.word_type*
  %ou2392 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1391, i32 0, i32 2
  %os22393 = bitcast %union.SECOND_UNION* %ou2392 to %struct.anon.1*
  %221 = bitcast %struct.anon.1* %os22393 to i32*
  %bf.load394 = load i32, i32* %221, align 4
  %bf.clear395 = and i32 %bf.load394, 4095
  %idxprom396 = zext i32 %bf.clear395 to i64
  %222 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx397 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %222, i64 %idxprom396
  %kern_value = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx397, i32 0, i32 11
  %223 = load i8*, i8** %kern_value, align 8
  %arrayidx398 = getelementptr inbounds i8, i8* %223, i64 %idxprom390
  %224 = load i8, i8* %arrayidx398, align 1
  %idxprom399 = zext i8 %224 to i64
  %225 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1400 = bitcast %union.rec* %225 to %struct.word_type*
  %ou2401 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1400, i32 0, i32 2
  %os22402 = bitcast %union.SECOND_UNION* %ou2401 to %struct.anon.1*
  %226 = bitcast %struct.anon.1* %os22402 to i32*
  %bf.load403 = load i32, i32* %226, align 4
  %bf.clear404 = and i32 %bf.load403, 4095
  %idxprom405 = zext i32 %bf.clear404 to i64
  %227 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx406 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %227, i64 %idxprom405
  %kern_sizes = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx406, i32 0, i32 12
  %228 = load i16*, i16** %kern_sizes, align 8
  %arrayidx407 = getelementptr inbounds i16, i16* %228, i64 %idxprom399
  %229 = load i16, i16* %arrayidx407, align 2
  %conv408 = sext i16 %229 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond409 = phi i32 [ %conv408, %cond.true ], [ 0, %cond.false ]
  store i32 %cond409, i32* %ksize, align 4
  br label %if.end.410

if.end.410:                                       ; preds = %cond.end, %if.then.368
  %230 = load i32, i32* %ksize, align 4
  %cmp411 = icmp ne i32 %230, 0
  br i1 %cmp411, label %if.then.413, label %if.end.425

if.then.413:                                      ; preds = %if.end.410
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %232 = load i8*, i8** %command, align 8
  %233 = load i32, i32* %ksize, align 4
  %sub414 = sub nsw i32 0, %233
  %call415 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %231, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.182, i32 0, i32 0), i8* %232, i32 %sub414)
  %234 = load i32, i32* @wordcount, align 4
  %inc416 = add nsw i32 %234, 1
  store i32 %inc416, i32* @wordcount, align 4
  %235 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1417 = bitcast %union.rec* %235 to %struct.word_type*
  %ou2418 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1417, i32 0, i32 2
  %os22419 = bitcast %union.SECOND_UNION* %ou2418 to %struct.anon.1*
  %236 = bitcast %struct.anon.1* %os22419 to i32*
  %bf.load420 = load i32, i32* %236, align 4
  %bf.lshr421 = lshr i32 %bf.load420, 22
  %bf.clear422 = and i32 %bf.lshr421, 1
  %tobool423 = icmp ne i32 %bf.clear422, 0
  %cond424 = select i1 %tobool423, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.184, i32 0, i32 0)
  store i8* %cond424, i8** %command, align 8
  br label %if.end.425

if.end.425:                                       ; preds = %if.then.413, %if.end.410
  %237 = load i8*, i8** %p, align 8
  %238 = load i8, i8* %237, align 1
  %idxprom426 = zext i8 %238 to i64
  %239 = load i16*, i16** %composite, align 8
  %arrayidx427 = getelementptr inbounds i16, i16* %239, i64 %idxprom426
  %240 = load i16, i16* %arrayidx427, align 2
  %tobool428 = icmp ne i16 %240, 0
  br i1 %tobool428, label %if.then.429, label %if.else.517

if.then.429:                                      ; preds = %if.end.425
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %242 = load i8*, i8** %command, align 8
  %call430 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i32 0, i32 0), i8* %242)
  %243 = load i8*, i8** %p, align 8
  %244 = load i8, i8* %243, align 1
  %idxprom431 = zext i8 %244 to i64
  %245 = load i16*, i16** %composite, align 8
  %arrayidx432 = getelementptr inbounds i16, i16* %245, i64 %idxprom431
  %246 = load i16, i16* %arrayidx432, align 2
  %idxprom433 = zext i16 %246 to i64
  %247 = load %struct.composite_rec*, %struct.composite_rec** %cmp, align 8
  %arrayidx434 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %247, i64 %idxprom433
  %248 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1435 = bitcast %union.rec* %248 to %struct.word_type*
  %ou2436 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1435, i32 0, i32 2
  %os22437 = bitcast %union.SECOND_UNION* %ou2436 to %struct.anon.1*
  %249 = bitcast %struct.anon.1* %os22437 to i32*
  %bf.load438 = load i32, i32* %249, align 4
  %bf.lshr439 = lshr i32 %bf.load438, 22
  %bf.clear440 = and i32 %bf.lshr439, 1
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  call void @PrintComposite(%struct.composite_rec* %arrayidx434, i32 %bf.clear440, %struct._IO_FILE* %250)
  %251 = load i8*, i8** %p, align 8
  %252 = load i8, i8* %251, align 1
  %idxprom444 = zext i8 %252 to i64
  %253 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1445 = bitcast %union.rec* %253 to %struct.word_type*
  %ou2446 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1445, i32 0, i32 2
  %os22447 = bitcast %union.SECOND_UNION* %ou2446 to %struct.anon.1*
  %254 = bitcast %struct.anon.1* %os22447 to i32*
  %bf.load448 = load i32, i32* %254, align 4
  %bf.clear449 = and i32 %bf.load448, 4095
  %idxprom450 = zext i32 %bf.clear449 to i64
  %255 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx451 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %255, i64 %idxprom450
  %size_table452 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx451, i32 0, i32 0
  %256 = load %struct.metrics*, %struct.metrics** %size_table452, align 8
  %arrayidx453 = getelementptr inbounds %struct.metrics, %struct.metrics* %256, i64 %idxprom444
  %right454 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx453, i32 0, i32 3
  %257 = load i16, i16* %right454, align 2
  %conv455 = sext i16 %257 to i32
  %cmp456 = icmp sge i32 %conv455, 0
  br i1 %cmp456, label %if.then.458, label %if.else.471

if.then.458:                                      ; preds = %if.then.429
  %258 = load i8*, i8** %p, align 8
  %259 = load i8, i8* %258, align 1
  %idxprom459 = zext i8 %259 to i64
  %260 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1460 = bitcast %union.rec* %260 to %struct.word_type*
  %ou2461 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1460, i32 0, i32 2
  %os22462 = bitcast %union.SECOND_UNION* %ou2461 to %struct.anon.1*
  %261 = bitcast %struct.anon.1* %os22462 to i32*
  %bf.load463 = load i32, i32* %261, align 4
  %bf.clear464 = and i32 %bf.load463, 4095
  %idxprom465 = zext i32 %bf.clear464 to i64
  %262 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx466 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %262, i64 %idxprom465
  %size_table467 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx466, i32 0, i32 0
  %263 = load %struct.metrics*, %struct.metrics** %size_table467, align 8
  %arrayidx468 = getelementptr inbounds %struct.metrics, %struct.metrics* %263, i64 %idxprom459
  %right469 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx468, i32 0, i32 3
  %264 = load i16, i16* %right469, align 2
  %conv470 = sext i16 %264 to i32
  store i32 %conv470, i32* %y443, align 4
  br label %if.end.486

if.else.471:                                      ; preds = %if.then.429
  %265 = load i8*, i8** %p, align 8
  %266 = load i8, i8* %265, align 1
  %idxprom472 = zext i8 %266 to i64
  %267 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1473 = bitcast %union.rec* %267 to %struct.word_type*
  %ou2474 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1473, i32 0, i32 2
  %os22475 = bitcast %union.SECOND_UNION* %ou2474 to %struct.anon.1*
  %268 = bitcast %struct.anon.1* %os22475 to i32*
  %bf.load476 = load i32, i32* %268, align 4
  %bf.clear477 = and i32 %bf.load476, 4095
  %idxprom478 = zext i32 %bf.clear477 to i64
  %269 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx479 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %269, i64 %idxprom478
  %size_table480 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx479, i32 0, i32 0
  %270 = load %struct.metrics*, %struct.metrics** %size_table480, align 8
  %arrayidx481 = getelementptr inbounds %struct.metrics, %struct.metrics* %270, i64 %idxprom472
  %right482 = getelementptr inbounds %struct.metrics, %struct.metrics* %arrayidx481, i32 0, i32 3
  %271 = load i16, i16* %right482, align 2
  %conv483 = sext i16 %271 to i32
  %sub484 = sub nsw i32 0, %conv483
  store i32 %sub484, i32* %y443, align 4
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call485 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %272)
  br label %if.end.486

if.end.486:                                       ; preds = %if.else.471, %if.then.458
  store i32 0, i32* %i442, align 4
  br label %do.body.487

do.body.487:                                      ; preds = %do.cond.494, %if.end.486
  %273 = load i32, i32* %y443, align 4
  %rem488 = srem i32 %273, 10
  %add489 = add nsw i32 %rem488, 48
  %conv490 = trunc i32 %add489 to i8
  %274 = load i32, i32* %i442, align 4
  %inc491 = add nsw i32 %274, 1
  store i32 %inc491, i32* %i442, align 4
  %idxprom492 = sext i32 %274 to i64
  %arrayidx493 = getelementptr inbounds [20 x i8], [20 x i8]* %buff441, i32 0, i64 %idxprom492
  store i8 %conv490, i8* %arrayidx493, align 1
  br label %do.cond.494

do.cond.494:                                      ; preds = %do.body.487
  %275 = load i32, i32* %y443, align 4
  %div495 = sdiv i32 %275, 10
  store i32 %div495, i32* %y443, align 4
  %cmp496 = icmp sgt i32 %div495, 0
  br i1 %cmp496, label %do.body.487, label %do.end.498

do.end.498:                                       ; preds = %do.cond.494
  br label %do.body.499

do.body.499:                                      ; preds = %do.cond.505, %do.end.498
  %276 = load i32, i32* %i442, align 4
  %dec500 = add nsw i32 %276, -1
  store i32 %dec500, i32* %i442, align 4
  %277 = load i32, i32* %i442, align 4
  %idxprom501 = sext i32 %277 to i64
  %arrayidx502 = getelementptr inbounds [20 x i8], [20 x i8]* %buff441, i32 0, i64 %idxprom501
  %278 = load i8, i8* %arrayidx502, align 1
  %conv503 = sext i8 %278 to i32
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call504 = call i32 @_IO_putc(i32 %conv503, %struct._IO_FILE* %279)
  br label %do.cond.505

do.cond.505:                                      ; preds = %do.body.499
  %280 = load i32, i32* %i442, align 4
  %tobool506 = icmp ne i32 %280, 0
  br i1 %tobool506, label %do.body.499, label %do.end.507

do.end.507:                                       ; preds = %do.cond.505
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call508 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %281)
  %282 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1509 = bitcast %union.rec* %282 to %struct.word_type*
  %ou2510 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1509, i32 0, i32 2
  %os22511 = bitcast %union.SECOND_UNION* %ou2510 to %struct.anon.1*
  %283 = bitcast %struct.anon.1* %os22511 to i32*
  %bf.load512 = load i32, i32* %283, align 4
  %bf.lshr513 = lshr i32 %bf.load512, 22
  %bf.clear514 = and i32 %bf.lshr513, 1
  %tobool515 = icmp ne i32 %bf.clear514, 0
  %cond516 = select i1 %tobool515, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i32 0, i32 0)
  store i8* %cond516, i8** %command, align 8
  br label %if.end.521

if.else.517:                                      ; preds = %if.end.425
  %284 = load i8*, i8** %p, align 8
  %285 = load i8, i8* %284, align 1
  %idxprom518 = zext i8 %285 to i64
  %arrayidx519 = getelementptr inbounds [0 x i8*], [0 x i8*]* @EightBitToPrintForm, i32 0, i64 %idxprom518
  %286 = load i8*, i8** %arrayidx519, align 8
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call520 = call i32 @fputs(i8* %286, %struct._IO_FILE* %287)
  br label %if.end.521

if.end.521:                                       ; preds = %if.else.517, %do.end.507
  br label %for.inc.522

for.inc.522:                                      ; preds = %if.end.521
  %288 = load i8*, i8** %p, align 8
  %incdec.ptr523 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %incdec.ptr523, i8** %p, align 8
  br label %for.cond

for.end.524:                                      ; preds = %for.cond
  %289 = load i32, i32* @wordcount, align 4
  %inc525 = add nsw i32 %289, 1
  store i32 %inc525, i32* @wordcount, align 4
  %cmp526 = icmp sge i32 %inc525, 5
  br i1 %cmp526, label %if.then.528, label %if.else.530

if.then.528:                                      ; preds = %for.end.524
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %291 = load i8*, i8** %command, align 8
  %call529 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %290, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.185, i32 0, i32 0), i8* %291)
  store i32 0, i32* @wordcount, align 4
  br label %if.end.532

if.else.530:                                      ; preds = %for.end.524
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %293 = load i8*, i8** %command, align 8
  %call531 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %292, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i32 0, i32 0), i8* %293)
  br label %if.end.532

if.end.532:                                       ; preds = %if.else.530, %if.then.528
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintPlainGraphic(%union.rec* %x, i32 %xmk, i32 %ymk, %union.rec* %z) #0 {
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
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.189, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_PrintUnderline(i32 %fnum, i32 %col, i32 %xstart, i32 %xstop, i32 %ymk) #0 {
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
  %0 = load i32, i32* %col.addr, align 4
  %1 = load i32, i32* @currentcolour, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %col.addr, align 4
  store i32 %2, i32* @currentcolour, align 4
  %3 = load i32, i32* @currentcolour, align 4
  %cmp1 = icmp ugt i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %5 = load i32, i32* @currentcolour, align 4
  %call = call i8* @ColourCommand(i32 %5)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i32 0, i32 0), i8* %call)
  %6 = load i32, i32* @wordcount, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @wordcount, align 4
  %cmp4 = icmp sge i32 %inc, 5
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call6 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %7)
  store i32 0, i32* @wordcount, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call7 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %10 = load i32, i32* %xstart.addr, align 4
  %11 = load i32, i32* %xstop.addr, align 4
  %12 = load i32, i32* %ymk.addr, align 4
  %13 = load i32, i32* %fnum.addr, align 4
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx = getelementptr inbounds %struct.font_rec, %struct.font_rec* %14, i64 %idxprom
  %underline_pos = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx, i32 0, i32 7
  %15 = load i16, i16* %underline_pos, align 2
  %conv = sext i16 %15 to i32
  %sub = sub nsw i32 %12, %conv
  %16 = load i32, i32* %fnum.addr, align 4
  %idxprom10 = zext i32 %16 to i64
  %17 = load %struct.font_rec*, %struct.font_rec** @finfo, align 8
  %arrayidx11 = getelementptr inbounds %struct.font_rec, %struct.font_rec* %17, i64 %idxprom10
  %underline_thick = getelementptr inbounds %struct.font_rec, %struct.font_rec* %arrayidx11, i32 0, i32 8
  %18 = load i16, i16* %underline_thick, align 2
  %conv12 = sext i16 %18 to i32
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.190, i32 0, i32 0), i32 %10, i32 %11, i32 %sub, i32 %conv12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_CoordRotate(i32 %amount) #0 {
entry:
  %amount.addr = alloca i32, align 4
  store i32 %amount, i32* %amount.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %1 = load i32, i32* %amount.addr, align 4
  %conv = sitofp i32 %1 to float
  %div = fdiv float %conv, 1.280000e+02
  %conv1 = fpext float %div to double
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.191, i32 0, i32 0), double %conv1)
  store i32 0, i32* @cpexists, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_LinkSource(%union.rec* %name, i32 %llx, i32 %lly, i32 %urx, i32 %ury) #0 {
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
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %1 = load i32, i32* %llx.addr, align 4
  %2 = load i32, i32* %lly.addr, align 4
  %3 = load i32, i32* %urx.addr, align 4
  %4 = load i32, i32* %ury.addr, align 4
  %5 = load %union.rec*, %union.rec** %name.addr, align 8
  %call = call i8* @ConvertToPDFName(%union.rec* %5)
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.192, i32 0, i32 0), i32 %1, i32 %2, i32 %3, i32 %4, i8* %call)
  %6 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* @zz_size, align 4
  %conv2 = sext i32 %conv to i64
  %cmp = icmp uge i64 %conv2, 265
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %7)
  br label %if.end.15

if.else:                                          ; preds = %entry
  %8 = load i32, i32* @zz_size, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom
  %9 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp5 = icmp eq %union.rec* %9, null
  br i1 %cmp5, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %10 = load i32, i32* @zz_size, align 4
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call8 = call %union.rec* @GetMemory(i32 %10, %struct.FILE_POS* %11)
  store %union.rec* %call8, %union.rec** @zz_hold, align 8
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %12 = load i32, i32* @zz_size, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom10
  %13 = load %union.rec*, %union.rec** %arrayidx11, align 8
  store %union.rec* %13, %union.rec** @zz_hold, align 8
  store %union.rec* %13, %union.rec** @zz_hold, align 8
  %14 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1 = bitcast %union.rec* %14 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 0
  %15 = load %union.rec*, %union.rec** %opred, align 8
  %16 = load i32, i32* @zz_size, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom13
  store %union.rec* %15, %union.rec** %arrayidx14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.7
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os116 = bitcast %union.rec* %17 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os116, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 0, i8* %otype, align 1
  %18 = load %union.rec*, %union.rec** @zz_hold, align 8
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os117 = bitcast %union.rec* %19 to %struct.word_type*
  %olist18 = getelementptr inbounds %struct.word_type, %struct.word_type* %os117, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist18, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx19, i32 0, i32 1
  store %union.rec* %18, %union.rec** %osucc, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os120 = bitcast %union.rec* %20 to %struct.word_type*
  %olist21 = getelementptr inbounds %struct.word_type, %struct.word_type* %os120, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist21, i32 0, i64 1
  %opred23 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx22, i32 0, i32 0
  store %union.rec* %18, %union.rec** %opred23, align 8
  %21 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os124 = bitcast %union.rec* %21 to %struct.word_type*
  %olist25 = getelementptr inbounds %struct.word_type, %struct.word_type* %os124, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist25, i32 0, i64 0
  %osucc27 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx26, i32 0, i32 1
  store %union.rec* %18, %union.rec** %osucc27, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os128 = bitcast %union.rec* %22 to %struct.word_type*
  %olist29 = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist29, i32 0, i64 0
  %opred31 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx30, i32 0, i32 0
  store %union.rec* %18, %union.rec** %opred31, align 8
  store %union.rec* %18, %union.rec** @xx_link, align 8
  %23 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %23, %union.rec** @zz_res, align 8
  %24 = load %union.rec*, %union.rec** @link_source_list, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp32 = icmp eq %union.rec* %25, null
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %26 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.66

cond.false:                                       ; preds = %if.end.15
  %27 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp34 = icmp eq %union.rec* %27, null
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.false
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.37:                                    ; preds = %cond.false
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os138 = bitcast %union.rec* %29 to %struct.word_type*
  %olist39 = getelementptr inbounds %struct.word_type, %struct.word_type* %os138, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist39, i32 0, i64 0
  %opred41 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx40, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %opred41, align 8
  store %union.rec* %30, %union.rec** @zz_tmp, align 8
  %31 = load %union.rec*, %union.rec** @zz_res, align 8
  %os142 = bitcast %union.rec* %31 to %struct.word_type*
  %olist43 = getelementptr inbounds %struct.word_type, %struct.word_type* %os142, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist43, i32 0, i64 0
  %opred45 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx44, i32 0, i32 0
  %32 = load %union.rec*, %union.rec** %opred45, align 8
  %33 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os146 = bitcast %union.rec* %33 to %struct.word_type*
  %olist47 = getelementptr inbounds %struct.word_type, %struct.word_type* %os146, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist47, i32 0, i64 0
  %opred49 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx48, i32 0, i32 0
  store %union.rec* %32, %union.rec** %opred49, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %35 = load %union.rec*, %union.rec** @zz_res, align 8
  %os150 = bitcast %union.rec* %35 to %struct.word_type*
  %olist51 = getelementptr inbounds %struct.word_type, %struct.word_type* %os150, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist51, i32 0, i64 0
  %opred53 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx52, i32 0, i32 0
  %36 = load %union.rec*, %union.rec** %opred53, align 8
  %os154 = bitcast %union.rec* %36 to %struct.word_type*
  %olist55 = getelementptr inbounds %struct.word_type, %struct.word_type* %os154, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist55, i32 0, i64 0
  %osucc57 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx56, i32 0, i32 1
  store %union.rec* %34, %union.rec** %osucc57, align 8
  %37 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %38 = load %union.rec*, %union.rec** @zz_res, align 8
  %os158 = bitcast %union.rec* %38 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 0
  %opred61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 0
  store %union.rec* %37, %union.rec** %opred61, align 8
  %39 = load %union.rec*, %union.rec** @zz_res, align 8
  %40 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os162 = bitcast %union.rec* %40 to %struct.word_type*
  %olist63 = getelementptr inbounds %struct.word_type, %struct.word_type* %os162, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist63, i32 0, i64 0
  %osucc65 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx64, i32 0, i32 1
  store %union.rec* %39, %union.rec** %osucc65, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.37, %cond.true.36
  %cond = phi %union.rec* [ %28, %cond.true.36 ], [ %39, %cond.false.37 ]
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end, %cond.true
  %cond67 = phi %union.rec* [ %26, %cond.true ], [ %cond, %cond.end ]
  %41 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %41, %union.rec** @zz_res, align 8
  %42 = load %union.rec*, %union.rec** %name.addr, align 8
  store %union.rec* %42, %union.rec** @zz_hold, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp68 = icmp eq %union.rec* %43, null
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %cond.end.66
  %44 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.106

cond.false.71:                                    ; preds = %cond.end.66
  %45 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp72 = icmp eq %union.rec* %45, null
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %cond.false.71
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.104

cond.false.75:                                    ; preds = %cond.false.71
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os176 = bitcast %union.rec* %47 to %struct.word_type*
  %olist77 = getelementptr inbounds %struct.word_type, %struct.word_type* %os176, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist77, i32 0, i64 1
  %opred79 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx78, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %opred79, align 8
  store %union.rec* %48, %union.rec** @zz_tmp, align 8
  %49 = load %union.rec*, %union.rec** @zz_res, align 8
  %os180 = bitcast %union.rec* %49 to %struct.word_type*
  %olist81 = getelementptr inbounds %struct.word_type, %struct.word_type* %os180, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist81, i32 0, i64 1
  %opred83 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx82, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %opred83, align 8
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os184 = bitcast %union.rec* %51 to %struct.word_type*
  %olist85 = getelementptr inbounds %struct.word_type, %struct.word_type* %os184, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist85, i32 0, i64 1
  %opred87 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx86, i32 0, i32 0
  store %union.rec* %50, %union.rec** %opred87, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %53 = load %union.rec*, %union.rec** @zz_res, align 8
  %os188 = bitcast %union.rec* %53 to %struct.word_type*
  %olist89 = getelementptr inbounds %struct.word_type, %struct.word_type* %os188, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist89, i32 0, i64 1
  %opred91 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx90, i32 0, i32 0
  %54 = load %union.rec*, %union.rec** %opred91, align 8
  %os192 = bitcast %union.rec* %54 to %struct.word_type*
  %olist93 = getelementptr inbounds %struct.word_type, %struct.word_type* %os192, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist93, i32 0, i64 1
  %osucc95 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx94, i32 0, i32 1
  store %union.rec* %52, %union.rec** %osucc95, align 8
  %55 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %56 = load %union.rec*, %union.rec** @zz_res, align 8
  %os196 = bitcast %union.rec* %56 to %struct.word_type*
  %olist97 = getelementptr inbounds %struct.word_type, %struct.word_type* %os196, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist97, i32 0, i64 1
  %opred99 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx98, i32 0, i32 0
  store %union.rec* %55, %union.rec** %opred99, align 8
  %57 = load %union.rec*, %union.rec** @zz_res, align 8
  %58 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1100 = bitcast %union.rec* %58 to %struct.word_type*
  %olist101 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1100, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist101, i32 0, i64 1
  %osucc103 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx102, i32 0, i32 1
  store %union.rec* %57, %union.rec** %osucc103, align 8
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.75, %cond.true.74
  %cond105 = phi %union.rec* [ %46, %cond.true.74 ], [ %57, %cond.false.75 ]
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.end.104, %cond.true.70
  %cond107 = phi %union.rec* [ %44, %cond.true.70 ], [ %cond105, %cond.end.104 ]
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PS_LinkDest(%union.rec* %name, i32 %llx, i32 %lly, i32 %urx, i32 %ury) #0 {
entry:
  %name.addr = alloca %union.rec*, align 8
  %llx.addr = alloca i32, align 4
  %lly.addr = alloca i32, align 4
  %urx.addr = alloca i32, align 4
  %ury.addr = alloca i32, align 4
  %prev = alloca %union.rec*, align 8
  store %union.rec* %name, %union.rec** %name.addr, align 8
  store i32 %llx, i32* %llx.addr, align 4
  store i32 %lly, i32* %lly.addr, align 4
  store i32 %urx, i32* %urx.addr, align 4
  store i32 %ury, i32* %ury.addr, align 4
  %0 = load %union.rec*, %union.rec** %name.addr, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %1 = load %struct.anon.14*, %struct.anon.14** @link_dest_tab, align 8
  %call = call %union.rec* @ltab_retrieve(i8* %arraydecay, %struct.anon.14* %1)
  store %union.rec* %call, %union.rec** %prev, align 8
  %2 = load %union.rec*, %union.rec** %prev, align 8
  %cmp = icmp eq %union.rec* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.194, i32 0, i32 0))
  %4 = load %union.rec*, %union.rec** %name.addr, align 8
  call void @ltab_insert(%union.rec* %4, %struct.anon.14** @link_dest_tab)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %union.rec*, %union.rec** %name.addr, align 8
  %os12 = bitcast %union.rec* %5 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os12, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou1 to %struct.FILE_POS*
  %6 = load %union.rec*, %union.rec** %name.addr, align 8
  %os13 = bitcast %union.rec* %6 to %struct.word_type*
  %ostring4 = getelementptr inbounds %struct.word_type, %struct.word_type* %os13, i32 0, i32 4
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring4, i32 0, i32 0
  %7 = load %union.rec*, %union.rec** %prev, align 8
  %os16 = bitcast %union.rec* %7 to %struct.word_type*
  %ou17 = getelementptr inbounds %struct.word_type, %struct.word_type* %os16, i32 0, i32 1
  %ofpos8 = bitcast %union.FIRST_UNION* %ou17 to %struct.FILE_POS*
  %call9 = call i8* @EchoFilePos(%struct.FILE_POS* %ofpos8)
  %call10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 13, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.195, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* %arraydecay5, i8* %call9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @ltab_new(i32 %newsize) #0 {
entry:
  %newsize.addr = alloca i32, align 4
  %S = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load i32, i32* %newsize.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %add = add i64 8, %mul
  %call = call noalias i8* @malloc(i64 %add) #4
  %1 = bitcast i8* %call to %struct.anon.14*
  store %struct.anon.14* %1, %struct.anon.14** %S, align 8
  %2 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %cmp = icmp eq %struct.anon.14* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.38, i32 0, i32 0), i32 1, %struct.FILE_POS* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %newsize.addr, align 4
  %5 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %linktab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %5, i32 0, i32 0
  store i32 %4, i32* %linktab_size, align 4
  %6 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %linktab_count = getelementptr inbounds %struct.anon.14, %struct.anon.14* %6, i32 0, i32 1
  store i32 0, i32* %linktab_count, align 4
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
  %10 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %linktab_item = getelementptr inbounds %struct.anon.14, %struct.anon.14* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %linktab_item, i32 0, i64 %idxprom
  store %union.rec* null, %union.rec** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  ret %struct.anon.14* %12
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @MapEnsurePrinted(i32, i32) #1

declare i8* @MapEncodingName(i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @MediaName(i32 %h, i32 %v) #0 {
entry:
  %retval = alloca i8*, align 8
  %h.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %p = alloca %struct.paper*, align 8
  store i32 %h, i32* %h.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  store %struct.paper* getelementptr inbounds ([15 x %struct.paper], [15 x %struct.paper]* @MediaName.paper_map, i32 0, i32 0), %struct.paper** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.paper*, %struct.paper** %p, align 8
  %name = getelementptr inbounds %struct.paper, %struct.paper* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %h.addr, align 4
  %3 = load %struct.paper*, %struct.paper** %p, align 8
  %width = getelementptr inbounds %struct.paper, %struct.paper* %3, i32 0, i32 1
  %4 = load i32, i32* %width, align 4
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %v.addr, align 4
  %6 = load %struct.paper*, %struct.paper** %p, align 8
  %height = getelementptr inbounds %struct.paper, %struct.paper* %6, i32 0, i32 2
  %7 = load i32, i32* %height, align 4
  %cmp1 = icmp eq i32 %5, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.paper*, %struct.paper** %p, align 8
  %name2 = getelementptr inbounds %struct.paper, %struct.paper* %8, i32 0, i32 0
  %9 = load i8*, i8** %name2, align 8
  store i8* %9, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.paper*, %struct.paper** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.paper, %struct.paper* %10, i32 1
  store %struct.paper* %incdec.ptr, %struct.paper** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8*, i8** @MediaName.user_defined, align 8
  store i8* %11, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load i8*, i8** %retval
  ret i8* %12
}

declare zeroext i16 @FirstFile(i32) #1

declare %struct._IO_FILE* @OpenFile(i16 zeroext, i32, i32) #1

declare %struct.FILE_POS* @PosOfFile(i16 zeroext) #1

declare i8* @FileName(i16 zeroext) #1

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #5
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

declare zeroext i16 @NextFile(i16 zeroext) #1

declare void @MapPrintEncodings(...) #1

declare void @FontPrintPageResources(%struct._IO_FILE*) #1

declare void @FontPrintPageSetup(%struct._IO_FILE*) #1

declare void @FontAdvanceCurrentPage() #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

declare i32 @FontNeeded(%struct._IO_FILE*) #1

declare void @MapPrintPSResources(%struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @PrintComposite(%struct.composite_rec* %cp, i32 %outline, %struct._IO_FILE* %fp) #0 {
entry:
  %cp.addr = alloca %struct.composite_rec*, align 8
  %outline.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct.composite_rec* %cp, %struct.composite_rec** %cp.addr, align 8
  store i32 %outline, i32* %outline.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.composite_rec*, %struct.composite_rec** %cp.addr, align 8
  %char_code = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %0, i32 0, i32 0
  %1 = load i8, i8* %char_code, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load %struct.composite_rec*, %struct.composite_rec** %cp.addr, align 8
  %x_offset = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %3, i32 0, i32 1
  %4 = load i16, i16* %x_offset, align 2
  %conv2 = sext i16 %4 to i32
  %5 = load %struct.composite_rec*, %struct.composite_rec** %cp.addr, align 8
  %y_offset = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %5, i32 0, i32 2
  %6 = load i16, i16* %y_offset, align 2
  %conv3 = sext i16 %6 to i32
  %7 = load %struct.composite_rec*, %struct.composite_rec** %cp.addr, align 8
  %char_code4 = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %7, i32 0, i32 0
  %8 = load i8, i8* %char_code4, align 1
  %conv5 = zext i8 %8 to i32
  %9 = load i32, i32* %outline.addr, align 4
  %tobool = icmp ne i32 %9, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.188, i32 0, i32 0)
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.186, i32 0, i32 0), i32 %conv2, i32 %conv3, i32 %conv5, i8* %cond)
  %10 = load %struct.composite_rec*, %struct.composite_rec** %cp.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.composite_rec, %struct.composite_rec* %10, i32 1
  store %struct.composite_rec* %incdec.ptr, %struct.composite_rec** %cp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @ltab_retrieve(i8* %str, %struct.anon.14* %S) #0 {
entry:
  %retval = alloca %union.rec*, align 8
  %str.addr = alloca i8*, align 8
  %S.addr = alloca %struct.anon.14*, align 8
  %x = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %pos = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store %struct.anon.14* %S, %struct.anon.14** %S.addr, align 8
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
  %9 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %linktab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %9, i32 0, i32 0
  %10 = load i32, i32* %linktab_size, align 4
  %rem = srem i32 %8, %10
  store i32 %rem, i32* %pos, align 4
  %11 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %linktab_item = getelementptr inbounds %struct.anon.14, %struct.anon.14* %12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %linktab_item, i32 0, i64 %idxprom
  %13 = load %union.rec*, %union.rec** %arrayidx, align 8
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
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
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

; Function Attrs: nounwind uwtable
define internal void @ltab_insert(%union.rec* %x, %struct.anon.14** %S) #0 {
entry:
  %x.addr = alloca %union.rec*, align 8
  %S.addr = alloca %struct.anon.14**, align 8
  %pos = alloca i32, align 4
  %z = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %p = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %x.addr, align 8
  store %struct.anon.14** %S, %struct.anon.14*** %S.addr, align 8
  %0 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %1 = load %struct.anon.14*, %struct.anon.14** %0, align 8
  %linktab_count = getelementptr inbounds %struct.anon.14, %struct.anon.14* %1, i32 0, i32 1
  %2 = load i32, i32* %linktab_count, align 4
  %3 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %4 = load %struct.anon.14*, %struct.anon.14** %3, align 8
  %linktab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %4, i32 0, i32 0
  %5 = load i32, i32* %linktab_size, align 4
  %sub = sub nsw i32 %5, 1
  %cmp = icmp eq i32 %2, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %7 = load %struct.anon.14*, %struct.anon.14** %6, align 8
  %8 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %9 = load %struct.anon.14*, %struct.anon.14** %8, align 8
  %linktab_size1 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %9, i32 0, i32 0
  %10 = load i32, i32* %linktab_size1, align 4
  %mul = mul nsw i32 2, %10
  %call = call %struct.anon.14* @ltab_rehash(%struct.anon.14* %7, i32 %mul)
  %11 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  store %struct.anon.14* %call, %struct.anon.14** %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %union.rec*, %union.rec** %x.addr, align 8
  %os1 = bitcast %union.rec* %12 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %pos, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %tobool = icmp ne i8 %16, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr2, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv3 = zext i8 %18 to i32
  %19 = load i32, i32* %pos, align 4
  %add = add nsw i32 %19, %conv3
  store i32 %add, i32* %pos, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load i32, i32* %pos, align 4
  %21 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %22 = load %struct.anon.14*, %struct.anon.14** %21, align 8
  %linktab_size4 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %22, i32 0, i32 0
  %23 = load i32, i32* %linktab_size4, align 4
  %rem = srem i32 %20, %23
  store i32 %rem, i32* %pos, align 4
  %24 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %26 = load %struct.anon.14*, %struct.anon.14** %25, align 8
  %linktab_item = getelementptr inbounds %struct.anon.14, %struct.anon.14* %26, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %linktab_item, i32 0, i64 %idxprom
  %27 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp5 = icmp eq %union.rec* %27, null
  br i1 %cmp5, label %if.then.7, label %if.end.48

if.then.7:                                        ; preds = %while.end
  %28 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %conv8 = zext i8 %28 to i32
  store i32 %conv8, i32* @zz_size, align 4
  %conv9 = sext i32 %conv8 to i64
  %cmp10 = icmp uge i64 %conv9, 265
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.7
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %29)
  br label %if.end.28

if.else:                                          ; preds = %if.then.7
  %30 = load i32, i32* @zz_size, align 4
  %idxprom14 = sext i32 %30 to i64
  %arrayidx15 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom14
  %31 = load %union.rec*, %union.rec** %arrayidx15, align 8
  %cmp16 = icmp eq %union.rec* %31, null
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else
  %32 = load i32, i32* @zz_size, align 4
  %33 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call19 = call %union.rec* @GetMemory(i32 %32, %struct.FILE_POS* %33)
  store %union.rec* %call19, %union.rec** @zz_hold, align 8
  br label %if.end.27

if.else.20:                                       ; preds = %if.else
  %34 = load i32, i32* @zz_size, align 4
  %idxprom21 = sext i32 %34 to i64
  %arrayidx22 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom21
  %35 = load %union.rec*, %union.rec** %arrayidx22, align 8
  store %union.rec* %35, %union.rec** @zz_hold, align 8
  store %union.rec* %35, %union.rec** @zz_hold, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os123 = bitcast %union.rec* %36 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os123, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx24, i32 0, i32 0
  %37 = load %union.rec*, %union.rec** %opred, align 8
  %38 = load i32, i32* @zz_size, align 4
  %idxprom25 = sext i32 %38 to i64
  %arrayidx26 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom25
  store %union.rec* %37, %union.rec** %arrayidx26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.20, %if.then.18
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.12
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os129 = bitcast %union.rec* %39 to %struct.word_type*
  %ou1 = getelementptr inbounds %struct.word_type, %struct.word_type* %os129, i32 0, i32 1
  %os11 = bitcast %union.FIRST_UNION* %ou1 to %struct.anon*
  %otype = getelementptr inbounds %struct.anon, %struct.anon* %os11, i32 0, i32 0
  store i8 17, i8* %otype, align 1
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os130 = bitcast %union.rec* %41 to %struct.word_type*
  %olist31 = getelementptr inbounds %struct.word_type, %struct.word_type* %os130, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist31, i32 0, i64 1
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx32, i32 0, i32 1
  store %union.rec* %40, %union.rec** %osucc, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os133 = bitcast %union.rec* %42 to %struct.word_type*
  %olist34 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist34, i32 0, i64 1
  %opred36 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx35, i32 0, i32 0
  store %union.rec* %40, %union.rec** %opred36, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os137 = bitcast %union.rec* %43 to %struct.word_type*
  %olist38 = getelementptr inbounds %struct.word_type, %struct.word_type* %os137, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist38, i32 0, i64 0
  %osucc40 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx39, i32 0, i32 1
  store %union.rec* %40, %union.rec** %osucc40, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os141 = bitcast %union.rec* %44 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 0
  %opred44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 0
  store %union.rec* %40, %union.rec** %opred44, align 8
  %45 = load i32, i32* %pos, align 4
  %idxprom45 = sext i32 %45 to i64
  %46 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %47 = load %struct.anon.14*, %struct.anon.14** %46, align 8
  %linktab_item46 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %47, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %linktab_item46, i32 0, i64 %idxprom45
  store %union.rec* %40, %union.rec** %arrayidx47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.28, %while.end
  %48 = load i32, i32* %pos, align 4
  %idxprom49 = sext i32 %48 to i64
  %49 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %50 = load %struct.anon.14*, %struct.anon.14** %49, align 8
  %linktab_item50 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %50, i32 0, i32 2
  %arrayidx51 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %linktab_item50, i32 0, i64 %idxprom49
  %51 = load %union.rec*, %union.rec** %arrayidx51, align 8
  store %union.rec* %51, %union.rec** %z, align 8
  %52 = load %union.rec*, %union.rec** %z, align 8
  %os152 = bitcast %union.rec* %52 to %struct.word_type*
  %olist53 = getelementptr inbounds %struct.word_type, %struct.word_type* %os152, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist53, i32 0, i64 0
  %osucc55 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx54, i32 0, i32 1
  %53 = load %union.rec*, %union.rec** %osucc55, align 8
  store %union.rec* %53, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.96, %if.end.48
  %54 = load %union.rec*, %union.rec** %link, align 8
  %55 = load %union.rec*, %union.rec** %z, align 8
  %cmp56 = icmp ne %union.rec* %54, %55
  br i1 %cmp56, label %for.body, label %for.end.101

for.body:                                         ; preds = %for.cond
  %56 = load %union.rec*, %union.rec** %link, align 8
  %os158 = bitcast %union.rec* %56 to %struct.word_type*
  %olist59 = getelementptr inbounds %struct.word_type, %struct.word_type* %os158, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist59, i32 0, i64 1
  %opred61 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx60, i32 0, i32 0
  %57 = load %union.rec*, %union.rec** %opred61, align 8
  store %union.rec* %57, %union.rec** %y, align 8
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc, %for.body
  %58 = load %union.rec*, %union.rec** %y, align 8
  %os163 = bitcast %union.rec* %58 to %struct.word_type*
  %ou164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os163, i32 0, i32 1
  %os1165 = bitcast %union.FIRST_UNION* %ou164 to %struct.anon*
  %otype66 = getelementptr inbounds %struct.anon, %struct.anon* %os1165, i32 0, i32 0
  %59 = load i8, i8* %otype66, align 1
  %conv67 = zext i8 %59 to i32
  %cmp68 = icmp eq i32 %conv67, 0
  br i1 %cmp68, label %for.body.70, label %for.end

for.body.70:                                      ; preds = %for.cond.62
  br label %for.inc

for.inc:                                          ; preds = %for.body.70
  %60 = load %union.rec*, %union.rec** %y, align 8
  %os171 = bitcast %union.rec* %60 to %struct.word_type*
  %olist72 = getelementptr inbounds %struct.word_type, %struct.word_type* %os171, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist72, i32 0, i64 1
  %opred74 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx73, i32 0, i32 0
  %61 = load %union.rec*, %union.rec** %opred74, align 8
  store %union.rec* %61, %union.rec** %y, align 8
  br label %for.cond.62

for.end:                                          ; preds = %for.cond.62
  %62 = load %union.rec*, %union.rec** %x.addr, align 8
  %os175 = bitcast %union.rec* %62 to %struct.word_type*
  %ostring76 = getelementptr inbounds %struct.word_type, %struct.word_type* %os175, i32 0, i32 4
  %arraydecay77 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring76, i32 0, i32 0
  %63 = load %union.rec*, %union.rec** %y, align 8
  %os178 = bitcast %union.rec* %63 to %struct.word_type*
  %ostring79 = getelementptr inbounds %struct.word_type, %struct.word_type* %os178, i32 0, i32 4
  %arraydecay80 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring79, i32 0, i32 0
  %call81 = call i32 @strcmp(i8* %arraydecay77, i8* %arraydecay80) #5
  %cmp82 = icmp eq i32 %call81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.95

if.then.84:                                       ; preds = %for.end
  %64 = load %union.rec*, %union.rec** %x.addr, align 8
  %os185 = bitcast %union.rec* %64 to %struct.word_type*
  %ou186 = getelementptr inbounds %struct.word_type, %struct.word_type* %os185, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou186 to %struct.FILE_POS*
  %65 = load %union.rec*, %union.rec** %x.addr, align 8
  %os187 = bitcast %union.rec* %65 to %struct.word_type*
  %ostring88 = getelementptr inbounds %struct.word_type, %struct.word_type* %os187, i32 0, i32 4
  %arraydecay89 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring88, i32 0, i32 0
  %66 = load %union.rec*, %union.rec** %y, align 8
  %os190 = bitcast %union.rec* %66 to %struct.word_type*
  %ou191 = getelementptr inbounds %struct.word_type, %struct.word_type* %os190, i32 0, i32 1
  %ofpos92 = bitcast %union.FIRST_UNION* %ou191 to %struct.FILE_POS*
  %call93 = call i8* @EchoFilePos(%struct.FILE_POS* %ofpos92)
  %call94 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.196, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* %arraydecay89, i8* %call93)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.84, %for.end
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %67 = load %union.rec*, %union.rec** %link, align 8
  %os197 = bitcast %union.rec* %67 to %struct.word_type*
  %olist98 = getelementptr inbounds %struct.word_type, %struct.word_type* %os197, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist98, i32 0, i64 0
  %osucc100 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx99, i32 0, i32 1
  %68 = load %union.rec*, %union.rec** %osucc100, align 8
  store %union.rec* %68, %union.rec** %link, align 8
  br label %for.cond

for.end.101:                                      ; preds = %for.cond
  %69 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %conv102 = zext i8 %69 to i32
  store i32 %conv102, i32* @zz_size, align 4
  %conv103 = sext i32 %conv102 to i64
  %cmp104 = icmp uge i64 %conv103, 265
  br i1 %cmp104, label %if.then.106, label %if.else.108

if.then.106:                                      ; preds = %for.end.101
  %70 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call107 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %70)
  br label %if.end.125

if.else.108:                                      ; preds = %for.end.101
  %71 = load i32, i32* @zz_size, align 4
  %idxprom109 = sext i32 %71 to i64
  %arrayidx110 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom109
  %72 = load %union.rec*, %union.rec** %arrayidx110, align 8
  %cmp111 = icmp eq %union.rec* %72, null
  br i1 %cmp111, label %if.then.113, label %if.else.115

if.then.113:                                      ; preds = %if.else.108
  %73 = load i32, i32* @zz_size, align 4
  %74 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call114 = call %union.rec* @GetMemory(i32 %73, %struct.FILE_POS* %74)
  store %union.rec* %call114, %union.rec** @zz_hold, align 8
  br label %if.end.124

if.else.115:                                      ; preds = %if.else.108
  %75 = load i32, i32* @zz_size, align 4
  %idxprom116 = sext i32 %75 to i64
  %arrayidx117 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom116
  %76 = load %union.rec*, %union.rec** %arrayidx117, align 8
  store %union.rec* %76, %union.rec** @zz_hold, align 8
  store %union.rec* %76, %union.rec** @zz_hold, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1118 = bitcast %union.rec* %77 to %struct.word_type*
  %olist119 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1118, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist119, i32 0, i64 0
  %opred121 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx120, i32 0, i32 0
  %78 = load %union.rec*, %union.rec** %opred121, align 8
  %79 = load i32, i32* @zz_size, align 4
  %idxprom122 = sext i32 %79 to i64
  %arrayidx123 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %idxprom122
  store %union.rec* %78, %union.rec** %arrayidx123, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.115, %if.then.113
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.106
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1126 = bitcast %union.rec* %80 to %struct.word_type*
  %ou1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1126, i32 0, i32 1
  %os11128 = bitcast %union.FIRST_UNION* %ou1127 to %struct.anon*
  %otype129 = getelementptr inbounds %struct.anon, %struct.anon* %os11128, i32 0, i32 0
  store i8 0, i8* %otype129, align 1
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1130 = bitcast %union.rec* %82 to %struct.word_type*
  %olist131 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1130, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist131, i32 0, i64 1
  %osucc133 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx132, i32 0, i32 1
  store %union.rec* %81, %union.rec** %osucc133, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1134 = bitcast %union.rec* %83 to %struct.word_type*
  %olist135 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1134, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist135, i32 0, i64 1
  %opred137 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx136, i32 0, i32 0
  store %union.rec* %81, %union.rec** %opred137, align 8
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1138 = bitcast %union.rec* %84 to %struct.word_type*
  %olist139 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1138, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist139, i32 0, i64 0
  %osucc141 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx140, i32 0, i32 1
  store %union.rec* %81, %union.rec** %osucc141, align 8
  %85 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1142 = bitcast %union.rec* %85 to %struct.word_type*
  %olist143 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1142, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist143, i32 0, i64 0
  %opred145 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx144, i32 0, i32 0
  store %union.rec* %81, %union.rec** %opred145, align 8
  store %union.rec* %81, %union.rec** @xx_link, align 8
  %86 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %86, %union.rec** @zz_res, align 8
  %87 = load i32, i32* %pos, align 4
  %idxprom146 = sext i32 %87 to i64
  %88 = load %struct.anon.14**, %struct.anon.14*** %S.addr, align 8
  %89 = load %struct.anon.14*, %struct.anon.14** %88, align 8
  %linktab_item147 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %89, i32 0, i32 2
  %arrayidx148 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %linktab_item147, i32 0, i64 %idxprom146
  %90 = load %union.rec*, %union.rec** %arrayidx148, align 8
  store %union.rec* %90, %union.rec** @zz_hold, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp149 = icmp eq %union.rec* %91, null
  br i1 %cmp149, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.125
  %92 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.183

cond.false:                                       ; preds = %if.end.125
  %93 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp151 = icmp eq %union.rec* %93, null
  br i1 %cmp151, label %cond.true.153, label %cond.false.154

cond.true.153:                                    ; preds = %cond.false
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end

cond.false.154:                                   ; preds = %cond.false
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1155 = bitcast %union.rec* %95 to %struct.word_type*
  %olist156 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1155, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist156, i32 0, i64 0
  %opred158 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx157, i32 0, i32 0
  %96 = load %union.rec*, %union.rec** %opred158, align 8
  store %union.rec* %96, %union.rec** @zz_tmp, align 8
  %97 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1159 = bitcast %union.rec* %97 to %struct.word_type*
  %olist160 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1159, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist160, i32 0, i64 0
  %opred162 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx161, i32 0, i32 0
  %98 = load %union.rec*, %union.rec** %opred162, align 8
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1163 = bitcast %union.rec* %99 to %struct.word_type*
  %olist164 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1163, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist164, i32 0, i64 0
  %opred166 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx165, i32 0, i32 0
  store %union.rec* %98, %union.rec** %opred166, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %101 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1167 = bitcast %union.rec* %101 to %struct.word_type*
  %olist168 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1167, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist168, i32 0, i64 0
  %opred170 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx169, i32 0, i32 0
  %102 = load %union.rec*, %union.rec** %opred170, align 8
  %os1171 = bitcast %union.rec* %102 to %struct.word_type*
  %olist172 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1171, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist172, i32 0, i64 0
  %osucc174 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx173, i32 0, i32 1
  store %union.rec* %100, %union.rec** %osucc174, align 8
  %103 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %104 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1175 = bitcast %union.rec* %104 to %struct.word_type*
  %olist176 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist176, i32 0, i64 0
  %opred178 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx177, i32 0, i32 0
  store %union.rec* %103, %union.rec** %opred178, align 8
  %105 = load %union.rec*, %union.rec** @zz_res, align 8
  %106 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1179 = bitcast %union.rec* %106 to %struct.word_type*
  %olist180 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1179, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist180, i32 0, i64 0
  %osucc182 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx181, i32 0, i32 1
  store %union.rec* %105, %union.rec** %osucc182, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.154, %cond.true.153
  %cond = phi %union.rec* [ %94, %cond.true.153 ], [ %105, %cond.false.154 ]
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.end, %cond.true
  %cond184 = phi %union.rec* [ %92, %cond.true ], [ %cond, %cond.end ]
  %107 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %107, %union.rec** @zz_res, align 8
  %108 = load %union.rec*, %union.rec** %x.addr, align 8
  store %union.rec* %108, %union.rec** @zz_hold, align 8
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %cmp185 = icmp eq %union.rec* %109, null
  br i1 %cmp185, label %cond.true.187, label %cond.false.188

cond.true.187:                                    ; preds = %cond.end.183
  %110 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %cond.end.223

cond.false.188:                                   ; preds = %cond.end.183
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  %cmp189 = icmp eq %union.rec* %111, null
  br i1 %cmp189, label %cond.true.191, label %cond.false.192

cond.true.191:                                    ; preds = %cond.false.188
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %cond.end.221

cond.false.192:                                   ; preds = %cond.false.188
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1193 = bitcast %union.rec* %113 to %struct.word_type*
  %olist194 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1193, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist194, i32 0, i64 1
  %opred196 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx195, i32 0, i32 0
  %114 = load %union.rec*, %union.rec** %opred196, align 8
  store %union.rec* %114, %union.rec** @zz_tmp, align 8
  %115 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1197 = bitcast %union.rec* %115 to %struct.word_type*
  %olist198 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1197, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist198, i32 0, i64 1
  %opred200 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx199, i32 0, i32 0
  %116 = load %union.rec*, %union.rec** %opred200, align 8
  %117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %os1201 = bitcast %union.rec* %117 to %struct.word_type*
  %olist202 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1201, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist202, i32 0, i64 1
  %opred204 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx203, i32 0, i32 0
  store %union.rec* %116, %union.rec** %opred204, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %119 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1205 = bitcast %union.rec* %119 to %struct.word_type*
  %olist206 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1205, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist206, i32 0, i64 1
  %opred208 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx207, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %opred208, align 8
  %os1209 = bitcast %union.rec* %120 to %struct.word_type*
  %olist210 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist210, i32 0, i64 1
  %osucc212 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx211, i32 0, i32 1
  store %union.rec* %118, %union.rec** %osucc212, align 8
  %121 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %122 = load %union.rec*, %union.rec** @zz_res, align 8
  %os1213 = bitcast %union.rec* %122 to %struct.word_type*
  %olist214 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1213, i32 0, i32 0
  %arrayidx215 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist214, i32 0, i64 1
  %opred216 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx215, i32 0, i32 0
  store %union.rec* %121, %union.rec** %opred216, align 8
  %123 = load %union.rec*, %union.rec** @zz_res, align 8
  %124 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %os1217 = bitcast %union.rec* %124 to %struct.word_type*
  %olist218 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1217, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist218, i32 0, i64 1
  %osucc220 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx219, i32 0, i32 1
  store %union.rec* %123, %union.rec** %osucc220, align 8
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.192, %cond.true.191
  %cond222 = phi %union.rec* [ %112, %cond.true.191 ], [ %123, %cond.false.192 ]
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.end.221, %cond.true.187
  %cond224 = phi %union.rec* [ %110, %cond.true.187 ], [ %cond222, %cond.end.221 ]
  ret void
}

declare i8* @EchoFilePos(%struct.FILE_POS*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @ltab_rehash(%struct.anon.14* %S, i32 %newsize) #0 {
entry:
  %S.addr = alloca %struct.anon.14*, align 8
  %newsize.addr = alloca i32, align 4
  %NewS = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  store %struct.anon.14* %S, %struct.anon.14** %S.addr, align 8
  store i32 %newsize, i32* %newsize.addr, align 4
  %0 = load i32, i32* %newsize.addr, align 4
  %call = call %struct.anon.14* @ltab_new(i32 %0)
  store %struct.anon.14* %call, %struct.anon.14** %NewS, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %linktab_size = getelementptr inbounds %struct.anon.14, %struct.anon.14* %2, i32 0, i32 0
  %3 = load i32, i32* %linktab_size, align 4
  %cmp = icmp sle i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %linktab_item = getelementptr inbounds %struct.anon.14, %struct.anon.14* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %linktab_item, i32 0, i64 %idxprom
  %6 = load %union.rec*, %union.rec** %arrayidx, align 8
  %cmp1 = icmp ne %union.rec* %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %linktab_item3 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %8, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %linktab_item3, i32 0, i64 %idxprom2
  %9 = load %union.rec*, %union.rec** %arrayidx4, align 8
  call void @ltab_insert(%union.rec* %9, %struct.anon.14** %NewS)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.anon.14*, %struct.anon.14** %S.addr, align 8
  %12 = bitcast %struct.anon.14* %11 to i8*
  call void @free(i8* %12) #4
  %13 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  ret %struct.anon.14* %13
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @PS_LinkCheck() #0 {
entry:
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %0 = load %union.rec*, %union.rec** @link_source_list, align 8
  %os1 = bitcast %union.rec* %0 to %struct.word_type*
  %olist = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist, i32 0, i64 0
  %osucc = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx, i32 0, i32 1
  %1 = load %union.rec*, %union.rec** %osucc, align 8
  store %union.rec* %1, %union.rec** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %entry
  %2 = load %union.rec*, %union.rec** %link, align 8
  %3 = load %union.rec*, %union.rec** @link_source_list, align 8
  %cmp = icmp ne %union.rec* %2, %3
  br i1 %cmp, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  %4 = load %union.rec*, %union.rec** %link, align 8
  %os11 = bitcast %union.rec* %4 to %struct.word_type*
  %olist2 = getelementptr inbounds %struct.word_type, %struct.word_type* %os11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist2, i32 0, i64 1
  %opred = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx3, i32 0, i32 0
  %5 = load %union.rec*, %union.rec** %opred, align 8
  store %union.rec* %5, %union.rec** %y, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load %union.rec*, %union.rec** %y, align 8
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
  %8 = load %union.rec*, %union.rec** %y, align 8
  %os110 = bitcast %union.rec* %8 to %struct.word_type*
  %olist11 = getelementptr inbounds %struct.word_type, %struct.word_type* %os110, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist11, i32 0, i64 1
  %opred13 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx12, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %opred13, align 8
  store %union.rec* %9, %union.rec** %y, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %10 = load %union.rec*, %union.rec** %y, align 8
  %os114 = bitcast %union.rec* %10 to %struct.word_type*
  %ou115 = getelementptr inbounds %struct.word_type, %struct.word_type* %os114, i32 0, i32 1
  %os1116 = bitcast %union.FIRST_UNION* %ou115 to %struct.anon*
  %otype17 = getelementptr inbounds %struct.anon, %struct.anon* %os1116, i32 0, i32 0
  %11 = load i8, i8* %otype17, align 1
  %conv18 = zext i8 %11 to i32
  %cmp19 = icmp eq i32 %conv18, 11
  br i1 %cmp19, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %12 = load %union.rec*, %union.rec** %y, align 8
  %os121 = bitcast %union.rec* %12 to %struct.word_type*
  %ou122 = getelementptr inbounds %struct.word_type, %struct.word_type* %os121, i32 0, i32 1
  %os1123 = bitcast %union.FIRST_UNION* %ou122 to %struct.anon*
  %otype24 = getelementptr inbounds %struct.anon, %struct.anon* %os1123, i32 0, i32 0
  %13 = load i8, i8* %otype24, align 1
  %conv25 = zext i8 %13 to i32
  %cmp26 = icmp eq i32 %conv25, 12
  br i1 %cmp26, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct.FILE_POS* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.197, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %for.end
  %15 = load %union.rec*, %union.rec** %y, align 8
  %os128 = bitcast %union.rec* %15 to %struct.word_type*
  %ostring = getelementptr inbounds %struct.word_type, %struct.word_type* %os128, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ostring, i32 0, i32 0
  %16 = load %struct.anon.14*, %struct.anon.14** @link_dest_tab, align 8
  %call29 = call %union.rec* @ltab_retrieve(i8* %arraydecay, %struct.anon.14* %16)
  %cmp30 = icmp eq %union.rec* %call29, null
  br i1 %cmp30, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %if.end
  %17 = load %union.rec*, %union.rec** %y, align 8
  %os133 = bitcast %union.rec* %17 to %struct.word_type*
  %ou134 = getelementptr inbounds %struct.word_type, %struct.word_type* %os133, i32 0, i32 1
  %ofpos = bitcast %union.FIRST_UNION* %ou134 to %struct.FILE_POS*
  %18 = load %union.rec*, %union.rec** %y, align 8
  %os135 = bitcast %union.rec* %18 to %struct.word_type*
  %ostring36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os135, i32 0, i32 4
  %arraydecay37 = getelementptr inbounds [4 x i8], [4 x i8]* %ostring36, i32 0, i32 0
  %call38 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 49, i32 14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.198, i32 0, i32 0), i32 2, %struct.FILE_POS* %ofpos, i8* %arraydecay37)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.32, %if.end
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %19 = load %union.rec*, %union.rec** %link, align 8
  %os141 = bitcast %union.rec* %19 to %struct.word_type*
  %olist42 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %olist42, i32 0, i64 0
  %osucc44 = getelementptr inbounds %struct.LIST, %struct.LIST* %arrayidx43, i32 0, i32 1
  %20 = load %union.rec*, %union.rec** %osucc44, align 8
  store %union.rec* %20, %union.rec** %link, align 8
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
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
