; ModuleID = './src/ftfont.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type opaque
%struct.font = type { %struct.vectorlike_header, [17 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.font_driver* }
%struct.vectorlike_header = type { i64 }
%struct.font_driver = type { i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, {}*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }
%struct.face = type { [19 x i64], i32, %struct._XGC*, i64, i64, i64, i64, i64, i64, i64, %struct.font*, i32, i32, i24, i32, %struct.face*, %struct.face*, %struct.face*, i8* }
%struct._XGC = type opaque
%struct.font_metrics = type { i16, i16, i16, i16, i16 }
%struct.glyph_string = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.frame*, %struct.window*, %struct._XDisplay*, i64, %struct.glyph_row*, i32, %struct.XChar2b*, i32, i32, %struct.face*, %struct.font*, %struct.composition*, i64, i32, i32, i8, %struct._XGC*, %struct.glyph*, %struct.image*, %struct.xwidget*, %struct.glyph_slice, %struct.glyph_string*, %struct.glyph_string*, [2 x %struct.XRectangle], i32, i32, i32, %struct.glyph_string*, %struct.glyph_string* }
%struct.window = type opaque
%struct._XDisplay = type opaque
%struct.glyph_row = type <{ [4 x %struct.glyph*], [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.display_pos, %struct.display_pos, %struct.text_pos, %struct.text_pos, i32, [11 x i8], i8, i24, i24, i32, i40, i32, %struct.XRectangle* }>
%struct.display_pos = type { %struct.text_pos, i64, %struct.text_pos, i32 }
%struct.text_pos = type { i64, i64 }
%struct.XRectangle = type { i16, i16, i16, i16 }
%struct.XChar2b = type { i8, i8 }
%struct.composition = type { i32, i16, i16, i16, i16, i16, i32, i32, i64, i8*, i16* }
%struct.glyph = type { i64, i64, i16, i16, i16, i16, i24, i24, %union.anon.0, %union.anon.2 }
%union.anon.0 = type { %struct.glyph_slice }
%union.anon.2 = type { i32 }
%struct.image = type { %struct.timespec, i64, i64, %struct._XImage*, %struct._XImage*, i64*, i32, i64, i64, i64, i8, i32, i32, [4 x i32], i32, i64, i64, i32, i32, i32, %struct.image_type*, i8, i64, i64, i64, %struct.image*, %struct.image* }
%struct.timespec = type { i64, i64 }
%struct._XImage = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, %struct.funcs }
%struct.funcs = type { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* }
%struct.Visual = type { %struct._XExtData*, i64, i32, i64, i64, i64, i32, i32 }
%struct._XExtData = type { i32, %struct._XExtData*, i32 (%struct._XExtData*)*, i8* }
%struct.image_type = type { i32, i1 (i64)*, i1 (%struct.frame*, %struct.image*)*, void (%struct.frame*, %struct.image*)*, i1 ()*, %struct.image_type* }
%struct.xwidget = type opaque
%struct.glyph_slice = type { i64 }
%struct.font_bitmap = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.FT_LibraryRec_ = type opaque
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.6 = type { i8*, [6 x i32], i8*, %struct._FcCharSet* }
%struct._FcCharSet = type opaque
%struct.charset = type { i32, i64, i32, [15 x i32], i8*, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [190 x i8], i32 }
%struct.ftfont_cache_data = type { %struct.FT_FaceRec_*, %struct._FcCharSet* }
%struct.FT_FaceRec_ = type { i64, i64, i64, i64, i64, i8*, i8*, i32, %struct.FT_Bitmap_Size_*, i32, %struct.FT_CharMapRec_**, %struct.FT_Generic_, %struct.FT_BBox_, i16, i16, i16, i16, i16, i16, i16, i16, %struct.FT_GlyphSlotRec_*, %struct.FT_SizeRec_*, %struct.FT_CharMapRec_*, %struct.FT_DriverRec_*, %struct.FT_MemoryRec_*, %struct.FT_StreamRec_*, %struct.FT_ListRec_, %struct.FT_Generic_, i8*, %struct.FT_Face_InternalRec_* }
%struct.FT_Bitmap_Size_ = type { i16, i16, i64, i64, i64 }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }
%struct.FT_GlyphSlotRec_ = type { %struct.FT_LibraryRec_*, %struct.FT_FaceRec_*, %struct.FT_GlyphSlotRec_*, i32, %struct.FT_Generic_, %struct.FT_Glyph_Metrics_, i64, i64, %struct.FT_Vector_, i32, %struct.FT_Bitmap_, i32, i32, %struct.FT_Outline_, i32, %struct.FT_SubGlyphRec_*, i8*, i64, i64, i64, i8*, %struct.FT_Slot_InternalRec_* }
%struct.FT_Glyph_Metrics_ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.FT_Vector_ = type { i64, i64 }
%struct.FT_Bitmap_ = type { i32, i32, i32, i8*, i16, i8, i8, i8* }
%struct.FT_Outline_ = type { i16, i16, %struct.FT_Vector_*, i8*, i16*, i32 }
%struct.FT_SubGlyphRec_ = type opaque
%struct.FT_Slot_InternalRec_ = type opaque
%struct.FT_SizeRec_ = type { %struct.FT_FaceRec_*, %struct.FT_Generic_, %struct.FT_Size_Metrics_, %struct.FT_Size_InternalRec_* }
%struct.FT_Size_Metrics_ = type { i16, i16, i64, i64, i64, i64, i64, i64 }
%struct.FT_Size_InternalRec_ = type opaque
%struct.FT_CharMapRec_ = type { %struct.FT_FaceRec_*, i32, i16, i16 }
%struct.FT_DriverRec_ = type opaque
%struct.FT_MemoryRec_ = type { i8*, i8* (%struct.FT_MemoryRec_*, i64)*, void (%struct.FT_MemoryRec_*, i8*)*, i8* (%struct.FT_MemoryRec_*, i64, i64, i8*)* }
%struct.FT_StreamRec_ = type { i8*, i64, i64, %union.FT_StreamDesc_, %union.FT_StreamDesc_, i64 (%struct.FT_StreamRec_*, i64, i8*, i64)*, void (%struct.FT_StreamRec_*)*, %struct.FT_MemoryRec_*, i8*, i8* }
%union.FT_StreamDesc_ = type { i64 }
%struct.FT_ListRec_ = type { %struct.FT_ListNodeRec_*, %struct.FT_ListNodeRec_* }
%struct.FT_ListNodeRec_ = type { %struct.FT_ListNodeRec_*, %struct.FT_ListNodeRec_*, i8* }
%struct.FT_Generic_ = type { i8*, void (i8*)* }
%struct.FT_Face_InternalRec_ = type opaque
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }
%struct._FcPattern = type opaque
%struct._FcFontSet = type { i32, i32, %struct._FcPattern** }
%struct._FcObjectSet = type { i32, i32, i8** }
%struct._FcConfig = type opaque
%struct.OpenTypeSpec = type { i64, i32, i32, [2 x i32], [2 x i32*] }
%struct._FcValue = type { i32, %union.anon.8 }
%union.anon.8 = type { i8* }
%struct.ftfont_info = type { %struct.font, %struct.FT_SizeRec_*, i32, %struct.FT_Matrix_ }
%struct.FT_Matrix_ = type { i64, i64, i64, i64 }
%struct.Lisp_Hash_Table = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.hash_table_test, %struct.Lisp_Hash_Table* }
%struct.hash_table_test = type { i64, i64, i64, i1 (%struct.hash_table_test*, i64, i64)*, i64 (%struct.hash_table_test*, i64)* }
%struct._FcLangSet = type opaque
%struct.BDF_PropertyRec_ = type { i32, %union.anon.7 }
%union.anon.7 = type { i8* }

@ftfont_info_size = global i64 264, align 8
@ftfont_driver = global { i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* } { i64 0, i8 0, i64 (%struct.frame*)* @ftfont_get_cache, i64 (%struct.frame*, i64)* @ftfont_list, i64 (%struct.frame*, i64)* @ftfont_match, i64 (%struct.frame*)* @ftfont_list_family, void (i64)* null, i64 (%struct.frame*, i64, i32)* @ftfont_open, void (%struct.font*)* @ftfont_close, void (%struct.frame*, %struct.face*)* null, void (%struct.frame*, %struct.face*)* null, i32 (i64, i32)* @ftfont_has_char, i32 (%struct.font*, i32)* @ftfont_encode_char, void (%struct.font*, i32*, i32, %struct.font_metrics*)* @ftfont_text_extents, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)* null, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)* @ftfont_get_bitmap, void (%struct.font*, %struct.font_bitmap*)* null, i32 (%struct.font*, i32, i32, i32*, i32*)* @ftfont_anchor_point, i64 (%struct.font*)* null, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)* null, i32 (%struct.frame*)* null, i32 (%struct.frame*)* null, i64 (i64)* null, i32 (%struct.frame*, %struct.font*)* null, i32 (%struct.font*, i32, i32*)* null, void (i64, i64)* @ftfont_filter_properties, i1 (%struct.frame*, i64, i64)* null, i64 (%struct.font*)* @ftfont_combining_capability }, align 8
@freetype_font_cache = internal global i64 0, align 8
@ftfont_generic_family_list = internal global i64 0, align 8
@ft_face_cache = internal global i64 0, align 8
@ft_library = internal global %struct.FT_LibraryRec_* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@fc_initialized = internal global i8 0, align 1
@globals = external global %struct.emacs_globals, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"foundry\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"slant\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"pixelsize\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"scalable\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"capability\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"fontformat\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"ftfont-list\00", align 1
@fc_charset_table = internal global [38 x %struct.anon.6] [%struct.anon.6 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), [6 x i32] [i32 160, i32 161, i32 180, i32 188, i32 208, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), [6 x i32] [i32 160, i32 270, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), [6 x i32] [i32 160, i32 264, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), [6 x i32] [i32 160, i32 175, i32 296, i32 342, i32 711, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), [6 x i32] [i32 160, i32 1025, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), [6 x i32] [i32 160, i32 1548, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), [6 x i32] [i32 160, i32 900, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), [6 x i32] [i32 160, i32 1488, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), [6 x i32] [i32 160, i32 161, i32 188, i32 286, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), [6 x i32] [i32 160, i32 208, i32 296, i32 8213, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), [6 x i32] [i32 160, i32 3585, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), [6 x i32] [i32 160, i32 8220, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), [6 x i32] [i32 160, i32 372, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), [6 x i32] [i32 160, i32 161, i32 208, i32 338, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), [6 x i32] [i32 160, i32 536, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), [6 x i32] [i32 19987, i32 0, i32 0, i32 0, i32 0, i32 0], i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), [6 x i32] [i32 63153, i32 0, i32 0, i32 0, i32 0, i32 0], i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), [6 x i32] [i32 20053, i32 0, i32 0, i32 0, i32 0, i32 0], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), [6 x i32] [i32 44032, i32 0, i32 0, i32 0, i32 0, i32 0], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), [6 x i32] [i32 65074, i32 0, i32 0, i32 0, i32 0, i32 0], i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), [6 x i32] [i32 20019, i32 31028, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), [6 x i32] [i32 131497, i32 0, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), [6 x i32] [i32 131159, i32 0, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), [6 x i32] [i32 131072, i32 0, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), [6 x i32] [i32 131075, i32 0, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), [6 x i32] [i32 131157, i32 0, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), [6 x i32] [i32 19974, i32 0, i32 0, i32 0, i32 0, i32 0], i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), [6 x i32] [i32 20036, i32 0, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), [6 x i32] [i32 64016, i32 0, i32 0, i32 0, i32 0, i32 0], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), [6 x i32] [i32 64073, i32 0, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), [6 x i32] [i32 134047, i32 0, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), [6 x i32] [i32 7840, i32 7854, i32 7890, i32 0, i32 0, i32 0], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), [6 x i32] [i32 3585, i32 0, i32 0, i32 0, i32 0, i32 0], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), [6 x i32] [i32 1025, i32 1168, i32 0, i32 0, i32 0, i32 0], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), [6 x i32] [i32 1025, i32 8729, i32 0, i32 0, i32 0, i32 0], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), [6 x i32] [i32 3713, i32 0, i32 0, i32 0, i32 0, i32 0], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0), %struct._FcCharSet* null }, %struct.anon.6 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), [6 x i32] [i32 131072, i32 0, i32 0, i32 0, i32 0, i32 0], i8* null, %struct._FcCharSet* null }, %struct.anon.6 zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [10 x i8] c"otlayout:\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"lang\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"dpi\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"iso8859-1\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"iso8859-2\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"iso8859-3\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"iso8859-4\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"iso8859-5\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"iso8859-6\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"iso8859-7\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"iso8859-8\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"iso8859-9\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"iso8859-10\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"iso8859-11\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"iso8859-13\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"iso8859-14\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"iso8859-15\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"iso8859-16\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"gb2312.1980-0\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"zh-cn\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"big5-0\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"zh-tw\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"jisx0208.1983-0\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"ja\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"ksc5601.1985-0\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"ko\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"cns11643.1992-1\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"cns11643.1992-2\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"cns11643.1992-3\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"cns11643.1992-4\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"cns11643.1992-5\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"cns11643.1992-6\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"cns11643.1992-7\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"gbk-0\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"jisx0212.1990-0\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"jisx0213.2000-1\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"jisx0213.2000-2\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"jisx0213.2004-1\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"viscii1.1-1\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"tis620.2529-1\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"th\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"windows-1251\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"ru\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"koi8-r\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"mulelao-1\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"unicode-sip\00", align 1
@ftfont_resolve_generic_family.lang = internal constant [3 x i8] c"en\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"bdf\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"pcf\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"Regular\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"Oblique\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"AVERAGE_WIDTH\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"ftfont-match\00", align 1
@charset_jisx0208 = external global i32, align 4
@charset_table = external global %struct.charset*, align 8
@charset_ksc5601 = external global i32, align 4
@Vcharset_hash_table = external global i64, align 8
@charset_work = external global i64, align 8
@ftfont_booleans = internal constant [10 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* null], align 16
@ftfont_non_booleans = internal constant [28 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0), i8* null], align 16
@.str.71 = private unnamed_addr constant [11 x i8] c":antialias\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c":hinting\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c":verticallayout\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c":autohint\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c":globaladvance\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c":outline\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c":scalable\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c":minspace\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c":embolden\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c":family\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c":familylang\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c":style\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c":stylelang\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c":fullname\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c":fullnamelang\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c":slant\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c":weight\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c":size\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c":width\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c":aspect\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c":pixelsize\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c":spacing\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c":foundry\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c":hintstyle\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c":file\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c":index\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c":ftface\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c":rasterizer\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c":scale\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c":dpi\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c":rgba\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c":lcdfilter\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c":charset\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c":lang\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c":fontversion\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c":capability\00", align 1

; Function Attrs: nounwind uwtable
define %struct._FcCharSet* @ftfont_get_fc_charset(i64 %entity) #0 {
entry:
  %entity.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cache = alloca i64, align 8
  %cache_data = alloca %struct.ftfont_cache_data*, align 8
  store i64 %entity, i64* %entity.addr, align 8
  %0 = load i64, i64* %entity.addr, align 8
  %call = call i64 @ftfont_lookup_cache(i64 %0, i32 1)
  store i64 %call, i64* %cache, align 8
  %1 = load i64, i64* %cache, align 8
  %sub = sub nsw i64 %1, 3
  %2 = inttoptr i64 %sub to i8*
  %3 = bitcast i8* %2 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %3, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %4 = load i64, i64* %cdr, align 8
  store i64 %4, i64* %val, align 8
  %5 = load i64, i64* %val, align 8
  %call1 = call i8* @XSAVE_POINTER(i64 %5, i32 0)
  %6 = bitcast i8* %call1 to %struct.ftfont_cache_data*
  store %struct.ftfont_cache_data* %6, %struct.ftfont_cache_data** %cache_data, align 8
  %7 = load %struct.ftfont_cache_data*, %struct.ftfont_cache_data** %cache_data, align 8
  %fc_charset = getelementptr inbounds %struct.ftfont_cache_data, %struct.ftfont_cache_data* %7, i32 0, i32 1
  %8 = load %struct._FcCharSet*, %struct._FcCharSet** %fc_charset, align 8
  ret %struct._FcCharSet* %8
}

; Function Attrs: nounwind uwtable
define internal i64 @ftfont_lookup_cache(i64 %key, i32 %cache_for) #0 {
entry:
  %retval = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %cache_for.addr = alloca i32, align 4
  %cache = alloca i64, align 8
  %val = alloca i64, align 8
  %entity = alloca i64, align 8
  %cache_data = alloca %struct.ftfont_cache_data*, align 8
  %.compoundliteral = alloca [2 x i64], align 8
  %filename = alloca i8*, align 8
  %idx = alloca i32, align 4
  %pat = alloca %struct._FcPattern*, align 8
  %fontset = alloca %struct._FcFontSet*, align 8
  %objset = alloca %struct._FcObjectSet*, align 8
  %charset = alloca %struct._FcCharSet*, align 8
  store i64 %key, i64* %key.addr, align 8
  store i32 %cache_for, i32* %cache_for.addr, align 4
  %0 = load i64, i64* %key.addr, align 8
  %call = call zeroext i1 @FONT_ENTITY_P(i64 %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %key.addr, align 8
  store i64 %1, i64* %entity, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 45)
  %2 = load i64, i64* %entity, align 8
  %call2 = call i64 @AREF(i64 %2, i64 12)
  %call3 = call i64 @assq_no_quit(i64 %call1, i64 %call2)
  store i64 %call3, i64* %val, align 8
  %3 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %3, 3
  %4 = inttoptr i64 %sub to i8*
  %5 = bitcast i8* %4 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %5, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %6 = load i64, i64* %cdr, align 8
  store i64 %6, i64* %key.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %entity, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i64, i64* @ft_face_cache, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %7, %call5
  br i1 %cmp, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.end
  %call7 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call7, i64* %cache, align 8
  br label %if.end.11

if.else.8:                                        ; preds = %if.end
  %8 = load i64, i64* %key.addr, align 8
  %9 = load i64, i64* @ft_face_cache, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %call10 = call i64 @Fgethash(i64 %8, i64 %9, i64 %call9)
  store i64 %call10, i64* %cache, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.8, %if.then.6
  %10 = load i64, i64* %cache, align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %10, %call12
  br i1 %cmp13, label %if.then.14, label %if.else.27

if.then.14:                                       ; preds = %if.end.11
  %11 = load i64, i64* @ft_face_cache, align 8
  %call15 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp16 = icmp eq i64 %11, %call15
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.then.14
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i64 0, i64 0
  %call18 = call i64 @builtin_lisp_symbol(i32 129)
  store i64 %call18, i64* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %call19 = call i64 @builtin_lisp_symbol(i32 371)
  store i64 %call19, i64* %arrayinit.element
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %.compoundliteral, i32 0, i32 0
  %call20 = call i64 @Fmake_hash_table(i64 2, i64* %arraydecay)
  store i64 %call20, i64* @ft_face_cache, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.then.14
  %call22 = call noalias i8* @xmalloc(i64 16)
  %12 = bitcast i8* %call22 to %struct.ftfont_cache_data*
  store %struct.ftfont_cache_data* %12, %struct.ftfont_cache_data** %cache_data, align 8
  %13 = load %struct.ftfont_cache_data*, %struct.ftfont_cache_data** %cache_data, align 8
  %ft_face = getelementptr inbounds %struct.ftfont_cache_data, %struct.ftfont_cache_data* %13, i32 0, i32 0
  store %struct.FT_FaceRec_* null, %struct.FT_FaceRec_** %ft_face, align 8
  %14 = load %struct.ftfont_cache_data*, %struct.ftfont_cache_data** %cache_data, align 8
  %fc_charset = getelementptr inbounds %struct.ftfont_cache_data, %struct.ftfont_cache_data* %14, i32 0, i32 1
  store %struct._FcCharSet* null, %struct._FcCharSet** %fc_charset, align 8
  %15 = load %struct.ftfont_cache_data*, %struct.ftfont_cache_data** %cache_data, align 8
  %16 = bitcast %struct.ftfont_cache_data* %15 to i8*
  %call23 = call i64 @make_save_ptr_int(i8* %16, i64 0)
  store i64 %call23, i64* %val, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 0)
  %17 = load i64, i64* %val, align 8
  %call25 = call i64 @Fcons(i64 %call24, i64 %17)
  store i64 %call25, i64* %cache, align 8
  %18 = load i64, i64* %key.addr, align 8
  %19 = load i64, i64* %cache, align 8
  %20 = load i64, i64* @ft_face_cache, align 8
  %call26 = call i64 @Fputhash(i64 %18, i64 %19, i64 %20)
  br label %if.end.32

if.else.27:                                       ; preds = %if.end.11
  %21 = load i64, i64* %cache, align 8
  %sub28 = sub nsw i64 %21, 3
  %22 = inttoptr i64 %sub28 to i8*
  %23 = bitcast i8* %22 to %struct.Lisp_Cons*
  %u29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %23, i32 0, i32 1
  %cdr30 = bitcast %union.anon* %u29 to i64*
  %24 = load i64, i64* %cdr30, align 8
  store i64 %24, i64* %val, align 8
  %25 = load i64, i64* %val, align 8
  %call31 = call i8* @XSAVE_POINTER(i64 %25, i32 0)
  %26 = bitcast i8* %call31 to %struct.ftfont_cache_data*
  store %struct.ftfont_cache_data* %26, %struct.ftfont_cache_data** %cache_data, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.27, %if.end.21
  %27 = load i32, i32* %cache_for.addr, align 4
  %cmp33 = icmp eq i32 %27, 2
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  %28 = load i64, i64* %cache, align 8
  store i64 %28, i64* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.32
  %29 = load i32, i32* %cache_for.addr, align 4
  %cmp36 = icmp eq i32 %29, 0
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.35
  %30 = load %struct.ftfont_cache_data*, %struct.ftfont_cache_data** %cache_data, align 8
  %ft_face37 = getelementptr inbounds %struct.ftfont_cache_data, %struct.ftfont_cache_data* %30, i32 0, i32 0
  %31 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face37, align 8
  %tobool = icmp ne %struct.FT_FaceRec_* %31, null
  br i1 %tobool, label %if.end.102, label %if.then.40

cond.false:                                       ; preds = %if.end.35
  %32 = load %struct.ftfont_cache_data*, %struct.ftfont_cache_data** %cache_data, align 8
  %fc_charset38 = getelementptr inbounds %struct.ftfont_cache_data, %struct.ftfont_cache_data* %32, i32 0, i32 1
  %33 = load %struct._FcCharSet*, %struct._FcCharSet** %fc_charset38, align 8
  %tobool39 = icmp ne %struct._FcCharSet* %33, null
  br i1 %tobool39, label %if.end.102, label %if.then.40

if.then.40:                                       ; preds = %cond.false, %cond.true
  %34 = load i64, i64* %key.addr, align 8
  %sub41 = sub nsw i64 %34, 3
  %35 = inttoptr i64 %sub41 to i8*
  %36 = bitcast i8* %35 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %36, i32 0, i32 0
  %37 = load i64, i64* %car, align 8
  %call42 = call i8* @SSDATA(i64 %37)
  store i8* %call42, i8** %filename, align 8
  %38 = load i64, i64* %key.addr, align 8
  %sub43 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub43 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %u44 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 1
  %cdr45 = bitcast %union.anon* %u44 to i64*
  %41 = load i64, i64* %cdr45, align 8
  %shr = ashr i64 %41, 2
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %idx, align 4
  %42 = load i32, i32* %cache_for.addr, align 4
  %cmp46 = icmp eq i32 %42, 0
  br i1 %cmp46, label %if.then.48, label %if.else.64

if.then.48:                                       ; preds = %if.then.40
  %43 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** @ft_library, align 8
  %tobool49 = icmp ne %struct.FT_LibraryRec_* %43, null
  br i1 %tobool49, label %if.end.55, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.48
  %call50 = call i32 @FT_Init_FreeType(%struct.FT_LibraryRec_** @ft_library)
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %land.lhs.true
  %call54 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call54, i64* %retval
  br label %return

if.end.55:                                        ; preds = %land.lhs.true, %if.then.48
  %44 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** @ft_library, align 8
  %45 = load i8*, i8** %filename, align 8
  %46 = load i32, i32* %idx, align 4
  %conv56 = sext i32 %46 to i64
  %47 = load %struct.ftfont_cache_data*, %struct.ftfont_cache_data** %cache_data, align 8
  %ft_face57 = getelementptr inbounds %struct.ftfont_cache_data, %struct.ftfont_cache_data* %47, i32 0, i32 0
  %call58 = call i32 @FT_New_Face(%struct.FT_LibraryRec_* %44, i8* %45, i64 %conv56, %struct.FT_FaceRec_** %ft_face57)
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.55
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call62, i64* %retval
  br label %return

if.end.63:                                        ; preds = %if.end.55
  br label %if.end.101

if.else.64:                                       ; preds = %if.then.40
  store %struct._FcPattern* null, %struct._FcPattern** %pat, align 8
  store %struct._FcFontSet* null, %struct._FcFontSet** %fontset, align 8
  store %struct._FcObjectSet* null, %struct._FcObjectSet** %objset, align 8
  store %struct._FcCharSet* null, %struct._FcCharSet** %charset, align 8
  %48 = load i8*, i8** %filename, align 8
  %49 = load i32, i32* %idx, align 4
  %call65 = call %struct._FcPattern* (%struct._FcPattern*, ...) @FcPatternBuild(%struct._FcPattern* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 3, i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 %49, i8* null)
  store %struct._FcPattern* %call65, %struct._FcPattern** %pat, align 8
  %50 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %tobool66 = icmp ne %struct._FcPattern* %50, null
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.else.64
  br label %finish

if.end.68:                                        ; preds = %if.else.64
  %call69 = call %struct._FcObjectSet* (i8*, ...) @FcObjectSetBuild(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* null)
  store %struct._FcObjectSet* %call69, %struct._FcObjectSet** %objset, align 8
  %51 = load %struct._FcObjectSet*, %struct._FcObjectSet** %objset, align 8
  %tobool70 = icmp ne %struct._FcObjectSet* %51, null
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %if.end.68
  br label %finish

if.end.72:                                        ; preds = %if.end.68
  %52 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %53 = load %struct._FcObjectSet*, %struct._FcObjectSet** %objset, align 8
  %call73 = call %struct._FcFontSet* @FcFontList(%struct._FcConfig* null, %struct._FcPattern* %52, %struct._FcObjectSet* %53)
  store %struct._FcFontSet* %call73, %struct._FcFontSet** %fontset, align 8
  %54 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %tobool74 = icmp ne %struct._FcFontSet* %54, null
  br i1 %tobool74, label %if.end.76, label %if.then.75

if.then.75:                                       ; preds = %if.end.72
  br label %finish

if.end.76:                                        ; preds = %if.end.72
  %55 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %tobool77 = icmp ne %struct._FcFontSet* %55, null
  br i1 %tobool77, label %land.lhs.true.78, label %if.else.88

land.lhs.true.78:                                 ; preds = %if.end.76
  %56 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %nfont = getelementptr inbounds %struct._FcFontSet, %struct._FcFontSet* %56, i32 0, i32 0
  %57 = load i32, i32* %nfont, align 4
  %cmp79 = icmp sgt i32 %57, 0
  br i1 %cmp79, label %land.lhs.true.81, label %if.else.88

land.lhs.true.81:                                 ; preds = %land.lhs.true.78
  %58 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %fonts = getelementptr inbounds %struct._FcFontSet, %struct._FcFontSet* %58, i32 0, i32 2
  %59 = load %struct._FcPattern**, %struct._FcPattern*** %fonts, align 8
  %arrayidx = getelementptr inbounds %struct._FcPattern*, %struct._FcPattern** %59, i64 0
  %60 = load %struct._FcPattern*, %struct._FcPattern** %arrayidx, align 8
  %call82 = call i32 @FcPatternGetCharSet(%struct._FcPattern* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct._FcCharSet** %charset)
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %if.then.85, label %if.else.88

if.then.85:                                       ; preds = %land.lhs.true.81
  %61 = load %struct._FcCharSet*, %struct._FcCharSet** %charset, align 8
  %call86 = call %struct._FcCharSet* @FcCharSetCopy(%struct._FcCharSet* %61)
  %62 = load %struct.ftfont_cache_data*, %struct.ftfont_cache_data** %cache_data, align 8
  %fc_charset87 = getelementptr inbounds %struct.ftfont_cache_data, %struct.ftfont_cache_data* %62, i32 0, i32 1
  store %struct._FcCharSet* %call86, %struct._FcCharSet** %fc_charset87, align 8
  br label %if.end.91

if.else.88:                                       ; preds = %land.lhs.true.81, %land.lhs.true.78, %if.end.76
  %call89 = call %struct._FcCharSet* @FcCharSetCreate()
  %63 = load %struct.ftfont_cache_data*, %struct.ftfont_cache_data** %cache_data, align 8
  %fc_charset90 = getelementptr inbounds %struct.ftfont_cache_data, %struct.ftfont_cache_data* %63, i32 0, i32 1
  store %struct._FcCharSet* %call89, %struct._FcCharSet** %fc_charset90, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.85
  br label %finish

finish:                                           ; preds = %if.end.91, %if.then.75, %if.then.71, %if.then.67
  %64 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %tobool92 = icmp ne %struct._FcFontSet* %64, null
  br i1 %tobool92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %finish
  %65 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  call void @FcFontSetDestroy(%struct._FcFontSet* %65)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %finish
  %66 = load %struct._FcObjectSet*, %struct._FcObjectSet** %objset, align 8
  %tobool95 = icmp ne %struct._FcObjectSet* %66, null
  br i1 %tobool95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.94
  %67 = load %struct._FcObjectSet*, %struct._FcObjectSet** %objset, align 8
  call void @FcObjectSetDestroy(%struct._FcObjectSet* %67)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.end.94
  %68 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %tobool98 = icmp ne %struct._FcPattern* %68, null
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.97
  %69 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  call void @FcPatternDestroy(%struct._FcPattern* %69)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.end.97
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.63
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %cond.false, %cond.true
  %70 = load i64, i64* %cache, align 8
  store i64 %70, i64* %retval
  br label %return

return:                                           ; preds = %if.end.102, %if.then.61, %if.then.53, %if.then.34
  %71 = load i64, i64* %retval
  ret i64 %71
}

declare i8* @XSAVE_POINTER(i64, i32) #1

; Function Attrs: nounwind uwtable
define internal i64 @ftfont_get_cache(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %0 = load i64, i64* @freetype_font_cache, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal i64 @ftfont_list(%struct.frame* %f, i64 %spec) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct.frame*, align 8
  %spec.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %family = alloca i64, align 8
  %adstyle = alloca i64, align 8
  %i = alloca i32, align 4
  %pattern = alloca %struct._FcPattern*, align 8
  %fontset = alloca %struct._FcFontSet*, align 8
  %objset = alloca %struct._FcObjectSet*, align 8
  %charset = alloca %struct._FcCharSet*, align 8
  %chars = alloca i64, align 8
  %otlayout = alloca [15 x i8], align 1
  %otspec = alloca %struct.OpenTypeSpec*, align 8
  %spacing = alloca i32, align 4
  %langname = alloca i8*, align 8
  %resolved = alloca i64, align 8
  %entity = alloca i64, align 8
  %this = alloca i32, align 4
  %this107 = alloca i8*, align 8
  %j = alloca i64, align 8
  %this_adstyle = alloca i64, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %spec, i64* %spec.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %val, align 8
  store %struct._FcFontSet* null, %struct._FcFontSet** %fontset, align 8
  store %struct._FcObjectSet* null, %struct._FcObjectSet** %objset, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %chars, align 8
  store %struct.OpenTypeSpec* null, %struct.OpenTypeSpec** %otspec, align 8
  store i32 -1, i32* %spacing, align 4
  store i8* null, i8** %langname, align 8
  %0 = load i8, i8* @fc_initialized, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i32 @FcInit()
  store i8 1, i8* @fc_initialized, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %spec.addr, align 8
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %otlayout, i32 0, i32 0
  %call3 = call %struct._FcPattern* @ftfont_spec_pattern(i64 %1, i8* %arraydecay, %struct.OpenTypeSpec** %otspec, i8** %langname)
  store %struct._FcPattern* %call3, %struct._FcPattern** %pattern, align 8
  %2 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %tobool4 = icmp ne %struct._FcPattern* %2, null
  br i1 %tobool4, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %3 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %call8 = call i32 @FcPatternGetCharSet(%struct._FcPattern* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct._FcCharSet** %charset)
  %cmp = icmp ne i32 %call8, 0
  br i1 %cmp, label %if.then.9, label %if.end.31

if.then.9:                                        ; preds = %if.end.7
  %call10 = call i64 @builtin_lisp_symbol(i32 114)
  %4 = load i64, i64* %spec.addr, align 8
  %call11 = call i64 @AREF(i64 %4, i64 12)
  %call12 = call i64 @assq_no_quit(i64 %call10, i64 %call11)
  store i64 %call12, i64* %val, align 8
  %5 = load i64, i64* %val, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp14 = icmp eq i64 %5, %call13
  br i1 %cmp14, label %if.end.29, label %if.then.15

if.then.15:                                       ; preds = %if.then.9
  %6 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %9 = load i64, i64* %cdr, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 260), align 8
  %call16 = call i64 @assq_no_quit(i64 %9, i64 %10)
  store i64 %call16, i64* %val, align 8
  %11 = load i64, i64* %val, align 8
  %and = and i64 %11, 7
  %conv = trunc i64 %and to i32
  %cmp17 = icmp eq i32 %conv, 3
  br i1 %cmp17, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.then.15
  %12 = load i64, i64* %val, align 8
  %sub19 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub19 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u20 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr21 = bitcast %union.anon* %u20 to i64*
  %15 = load i64, i64* %cdr21, align 8
  %call22 = call zeroext i1 @VECTORP(i64 %15)
  br i1 %call22, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %land.lhs.true
  %16 = load i64, i64* %val, align 8
  %sub25 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub25 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %u26 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 1
  %cdr27 = bitcast %union.anon* %u26 to i64*
  %19 = load i64, i64* %cdr27, align 8
  store i64 %19, i64* %chars, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %land.lhs.true, %if.then.15
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.9
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call30, i64* %val, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.29, %if.end.7
  %20 = load i64, i64* %spec.addr, align 8
  %call32 = call i64 @AREF(i64 %20, i64 10)
  %and33 = and i64 %call32, 7
  %conv34 = trunc i64 %and33 to i32
  %and35 = and i32 %conv34, -5
  %cmp36 = icmp eq i32 %and35, 2
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.31
  %21 = load i64, i64* %spec.addr, align 8
  %call39 = call i64 @AREF(i64 %21, i64 10)
  %shr = ashr i64 %call39, 2
  %conv40 = trunc i64 %shr to i32
  store i32 %conv40, i32* %spacing, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.end.31
  %22 = load i64, i64* %spec.addr, align 8
  %call42 = call i64 @AREF(i64 %22, i64 2)
  store i64 %call42, i64* %family, align 8
  %23 = load i64, i64* %family, align 8
  %call43 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp44 = icmp eq i64 %23, %call43
  br i1 %cmp44, label %if.end.60, label %if.then.46

if.then.46:                                       ; preds = %if.end.41
  %24 = load i64, i64* %family, align 8
  %25 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %call47 = call i64 @ftfont_resolve_generic_family(i64 %24, %struct._FcPattern* %25)
  store i64 %call47, i64* %resolved, align 8
  %26 = load i64, i64* %resolved, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp49 = icmp eq i64 %26, %call48
  br i1 %cmp49, label %if.end.59, label %if.then.51

if.then.51:                                       ; preds = %if.then.46
  %27 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %call52 = call i32 @FcPatternDel(%struct._FcPattern* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %28 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %29 = load i64, i64* %resolved, align 8
  %call53 = call i64 @SYMBOL_NAME(i64 %29)
  %call54 = call i8* @SDATA(i64 %call53)
  %call55 = call i32 @FcPatternAddString(%struct._FcPattern* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %call54)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.51
  br label %err

if.end.58:                                        ; preds = %if.then.51
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.46
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.41
  %30 = load i64, i64* %spec.addr, align 8
  %call61 = call i64 @AREF(i64 %30, i64 3)
  store i64 %call61, i64* %adstyle, align 8
  %31 = load i64, i64* %adstyle, align 8
  %call62 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp63 = icmp eq i64 %31, %call62
  br i1 %cmp63, label %if.end.72, label %land.lhs.true.65

land.lhs.true.65:                                 ; preds = %if.end.60
  %32 = load i64, i64* %adstyle, align 8
  %call66 = call i64 @SYMBOL_NAME(i64 %32)
  %call67 = call i64 @SBYTES(i64 %call66)
  %cmp68 = icmp eq i64 %call67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %land.lhs.true.65
  %call71 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call71, i64* %adstyle, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %land.lhs.true.65, %if.end.60
  %call73 = call %struct._FcObjectSet* (i8*, ...) @FcObjectSetBuild(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* null)
  store %struct._FcObjectSet* %call73, %struct._FcObjectSet** %objset, align 8
  %33 = load %struct._FcObjectSet*, %struct._FcObjectSet** %objset, align 8
  %tobool74 = icmp ne %struct._FcObjectSet* %33, null
  br i1 %tobool74, label %if.end.76, label %if.then.75

if.then.75:                                       ; preds = %if.end.72
  br label %err

if.end.76:                                        ; preds = %if.end.72
  %34 = load i64, i64* %chars, align 8
  %call77 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp78 = icmp eq i64 %34, %call77
  br i1 %cmp78, label %if.end.82, label %if.then.80

if.then.80:                                       ; preds = %if.end.76
  %35 = load %struct._FcObjectSet*, %struct._FcObjectSet** %objset, align 8
  %call81 = call i32 @FcObjectSetAdd(%struct._FcObjectSet* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.end.76
  %36 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %37 = load %struct._FcObjectSet*, %struct._FcObjectSet** %objset, align 8
  %call83 = call %struct._FcFontSet* @FcFontList(%struct._FcConfig* null, %struct._FcPattern* %36, %struct._FcObjectSet* %37)
  store %struct._FcFontSet* %call83, %struct._FcFontSet** %fontset, align 8
  %38 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %tobool84 = icmp ne %struct._FcFontSet* %38, null
  br i1 %tobool84, label %lor.lhs.false, label %if.then.87

lor.lhs.false:                                    ; preds = %if.end.82
  %39 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %nfont = getelementptr inbounds %struct._FcFontSet, %struct._FcFontSet* %39, i32 0, i32 0
  %40 = load i32, i32* %nfont, align 4
  %cmp85 = icmp eq i32 %40, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %lor.lhs.false, %if.end.82
  br label %finish

if.end.88:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.221, %if.end.88
  %41 = load i32, i32* %i, align 4
  %42 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %nfont89 = getelementptr inbounds %struct._FcFontSet, %struct._FcFontSet* %42, i32 0, i32 0
  %43 = load i32, i32* %nfont89, align 4
  %cmp90 = icmp slt i32 %41, %43
  br i1 %cmp90, label %for.body, label %for.end.223

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %spacing, align 4
  %cmp92 = icmp sge i32 %44, 0
  br i1 %cmp92, label %if.then.94, label %if.end.103

if.then.94:                                       ; preds = %for.body
  %45 = load i32, i32* %i, align 4
  %idxprom = sext i32 %45 to i64
  %46 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %fonts = getelementptr inbounds %struct._FcFontSet, %struct._FcFontSet* %46, i32 0, i32 2
  %47 = load %struct._FcPattern**, %struct._FcPattern*** %fonts, align 8
  %arrayidx = getelementptr inbounds %struct._FcPattern*, %struct._FcPattern** %47, i64 %idxprom
  %48 = load %struct._FcPattern*, %struct._FcPattern** %arrayidx, align 8
  %call95 = call i32 @FcPatternGetInteger(%struct._FcPattern* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* %this)
  %cmp96 = icmp eq i32 %call95, 0
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.102

land.lhs.true.98:                                 ; preds = %if.then.94
  %49 = load i32, i32* %spacing, align 4
  %50 = load i32, i32* %this, align 4
  %cmp99 = icmp ne i32 %49, %50
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %land.lhs.true.98
  br label %for.inc.221

if.end.102:                                       ; preds = %land.lhs.true.98, %if.then.94
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %for.body
  %arrayidx104 = getelementptr inbounds [15 x i8], [15 x i8]* %otlayout, i32 0, i64 0
  %51 = load i8, i8* %arrayidx104, align 1
  %tobool105 = icmp ne i8 %51, 0
  br i1 %tobool105, label %if.then.106, label %if.end.120

if.then.106:                                      ; preds = %if.end.103
  %52 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %52 to i64
  %53 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %fonts109 = getelementptr inbounds %struct._FcFontSet, %struct._FcFontSet* %53, i32 0, i32 2
  %54 = load %struct._FcPattern**, %struct._FcPattern*** %fonts109, align 8
  %arrayidx110 = getelementptr inbounds %struct._FcPattern*, %struct._FcPattern** %54, i64 %idxprom108
  %55 = load %struct._FcPattern*, %struct._FcPattern** %arrayidx110, align 8
  %call111 = call i32 @FcPatternGetString(%struct._FcPattern* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 0, i8** %this107)
  %cmp112 = icmp ne i32 %call111, 0
  br i1 %cmp112, label %if.then.118, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %if.then.106
  %56 = load i8*, i8** %this107, align 8
  %arraydecay115 = getelementptr inbounds [15 x i8], [15 x i8]* %otlayout, i32 0, i32 0
  %call116 = call i8* @strstr(i8* %56, i8* %arraydecay115) #4
  %tobool117 = icmp ne i8* %call116, null
  br i1 %tobool117, label %if.end.119, label %if.then.118

if.then.118:                                      ; preds = %lor.lhs.false.114, %if.then.106
  br label %for.inc.221

if.end.119:                                       ; preds = %lor.lhs.false.114
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.103
  %57 = load i64, i64* %chars, align 8
  %call121 = call zeroext i1 @VECTORP(i64 %57)
  br i1 %call121, label %if.then.122, label %if.end.169

if.then.122:                                      ; preds = %if.end.120
  %58 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %58 to i64
  %59 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %fonts124 = getelementptr inbounds %struct._FcFontSet, %struct._FcFontSet* %59, i32 0, i32 2
  %60 = load %struct._FcPattern**, %struct._FcPattern*** %fonts124, align 8
  %arrayidx125 = getelementptr inbounds %struct._FcPattern*, %struct._FcPattern** %60, i64 %idxprom123
  %61 = load %struct._FcPattern*, %struct._FcPattern** %arrayidx125, align 8
  %call126 = call i32 @FcPatternGetCharSet(%struct._FcPattern* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct._FcCharSet** %charset)
  %cmp127 = icmp ne i32 %call126, 0
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.then.122
  br label %for.inc.221

if.end.130:                                       ; preds = %if.then.122
  store i64 0, i64* %j, align 8
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc, %if.end.130
  %62 = load i64, i64* %j, align 8
  %63 = load i64, i64* %chars, align 8
  %call132 = call i64 @ASIZE(i64 %63)
  %cmp133 = icmp slt i64 %62, %call132
  br i1 %cmp133, label %for.body.135, label %for.end

for.body.135:                                     ; preds = %for.cond.131
  %64 = load i64, i64* %chars, align 8
  %65 = load i64, i64* %j, align 8
  %call136 = call i64 @AREF(i64 %64, i64 %65)
  %and137 = and i64 %call136, 7
  %conv138 = trunc i64 %and137 to i32
  %and139 = and i32 %conv138, -5
  %cmp140 = icmp eq i32 %and139, 2
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.163

land.lhs.true.142:                                ; preds = %for.body.135
  br i1 true, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true.142
  %66 = load i64, i64* %chars, align 8
  %67 = load i64, i64* %j, align 8
  %call143 = call i64 @AREF(i64 %66, i64 %67)
  %shr144 = ashr i64 %call143, 2
  %cmp145 = icmp sle i64 0, %shr144
  br i1 %cmp145, label %land.lhs.true.151, label %if.end.163

cond.false:                                       ; preds = %land.lhs.true.142
  %68 = load i64, i64* %chars, align 8
  %69 = load i64, i64* %j, align 8
  %call147 = call i64 @AREF(i64 %68, i64 %69)
  %shr148 = ashr i64 %call147, 2
  %cmp149 = icmp sle i64 0, %shr148
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.163

land.lhs.true.151:                                ; preds = %cond.false, %cond.true
  %70 = load i64, i64* %chars, align 8
  %71 = load i64, i64* %j, align 8
  %call152 = call i64 @AREF(i64 %70, i64 %71)
  %shr153 = ashr i64 %call152, 2
  %cmp154 = icmp sle i64 %shr153, 4294967295
  br i1 %cmp154, label %land.lhs.true.156, label %if.end.163

land.lhs.true.156:                                ; preds = %land.lhs.true.151
  %72 = load %struct._FcCharSet*, %struct._FcCharSet** %charset, align 8
  %73 = load i64, i64* %chars, align 8
  %74 = load i64, i64* %j, align 8
  %call157 = call i64 @AREF(i64 %73, i64 %74)
  %shr158 = ashr i64 %call157, 2
  %conv159 = trunc i64 %shr158 to i32
  %call160 = call i32 @FcCharSetHasChar(%struct._FcCharSet* %72, i32 %conv159)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %land.lhs.true.156
  br label %for.end

if.end.163:                                       ; preds = %land.lhs.true.156, %land.lhs.true.151, %cond.false, %cond.true, %for.body.135
  br label %for.inc

for.inc:                                          ; preds = %if.end.163
  %75 = load i64, i64* %j, align 8
  %inc = add nsw i64 %75, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.131

for.end:                                          ; preds = %if.then.162, %for.cond.131
  %76 = load i64, i64* %j, align 8
  %77 = load i64, i64* %chars, align 8
  %call164 = call i64 @ASIZE(i64 %77)
  %cmp165 = icmp eq i64 %76, %call164
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %for.end
  br label %for.inc.221

if.end.168:                                       ; preds = %for.end
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.120
  %78 = load i64, i64* %adstyle, align 8
  %call170 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp171 = icmp eq i64 %78, %call170
  br i1 %cmp171, label %lor.lhs.false.173, label %if.then.175

lor.lhs.false.173:                                ; preds = %if.end.169
  %79 = load i8*, i8** %langname, align 8
  %tobool174 = icmp ne i8* %79, null
  br i1 %tobool174, label %if.then.175, label %if.end.209

if.then.175:                                      ; preds = %lor.lhs.false.173, %if.end.169
  %80 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %80 to i64
  %81 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %fonts177 = getelementptr inbounds %struct._FcFontSet, %struct._FcFontSet* %81, i32 0, i32 2
  %82 = load %struct._FcPattern**, %struct._FcPattern*** %fonts177, align 8
  %arrayidx178 = getelementptr inbounds %struct._FcPattern*, %struct._FcPattern** %82, i64 %idxprom176
  %83 = load %struct._FcPattern*, %struct._FcPattern** %arrayidx178, align 8
  %call179 = call i64 @get_adstyle_property(%struct._FcPattern* %83)
  store i64 %call179, i64* %this_adstyle, align 8
  %84 = load i64, i64* %adstyle, align 8
  %call180 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp181 = icmp eq i64 %84, %call180
  br i1 %cmp181, label %if.end.196, label %land.lhs.true.183

land.lhs.true.183:                                ; preds = %if.then.175
  %85 = load i64, i64* %this_adstyle, align 8
  %call184 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp185 = icmp eq i64 %85, %call184
  br i1 %cmp185, label %if.then.195, label %lor.lhs.false.187

lor.lhs.false.187:                                ; preds = %land.lhs.true.183
  %86 = load i64, i64* %adstyle, align 8
  %call188 = call i64 @SYMBOL_NAME(i64 %86)
  %call189 = call i8* @SSDATA(i64 %call188)
  %87 = load i64, i64* %this_adstyle, align 8
  %call190 = call i64 @SYMBOL_NAME(i64 %87)
  %call191 = call i8* @SSDATA(i64 %call190)
  %call192 = call i32 @xstrcasecmp(i8* %call189, i8* %call191)
  %cmp193 = icmp ne i32 %call192, 0
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %lor.lhs.false.187, %land.lhs.true.183
  br label %for.inc.221

if.end.196:                                       ; preds = %lor.lhs.false.187, %if.then.175
  %88 = load i8*, i8** %langname, align 8
  %tobool197 = icmp ne i8* %88, null
  br i1 %tobool197, label %land.lhs.true.198, label %if.end.208

land.lhs.true.198:                                ; preds = %if.end.196
  %89 = load i64, i64* %this_adstyle, align 8
  %call199 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp200 = icmp eq i64 %89, %call199
  br i1 %cmp200, label %if.end.208, label %land.lhs.true.202

land.lhs.true.202:                                ; preds = %land.lhs.true.198
  %90 = load i8*, i8** %langname, align 8
  %91 = load i64, i64* %this_adstyle, align 8
  %call203 = call i64 @SYMBOL_NAME(i64 %91)
  %call204 = call i8* @SSDATA(i64 %call203)
  %call205 = call i32 @xstrcasecmp(i8* %90, i8* %call204)
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %land.lhs.true.202
  br label %for.inc.221

if.end.208:                                       ; preds = %land.lhs.true.202, %land.lhs.true.198, %if.end.196
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %lor.lhs.false.173
  %92 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %92 to i64
  %93 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %fonts211 = getelementptr inbounds %struct._FcFontSet, %struct._FcFontSet* %93, i32 0, i32 2
  %94 = load %struct._FcPattern**, %struct._FcPattern*** %fonts211, align 8
  %arrayidx212 = getelementptr inbounds %struct._FcPattern*, %struct._FcPattern** %94, i64 %idxprom210
  %95 = load %struct._FcPattern*, %struct._FcPattern** %arrayidx212, align 8
  %96 = load i64, i64* %spec.addr, align 8
  %call213 = call i64 @AREF(i64 %96, i64 12)
  %call214 = call i64 @ftfont_pattern_entity(%struct._FcPattern* %95, i64 %call213)
  store i64 %call214, i64* %entity, align 8
  %97 = load i64, i64* %entity, align 8
  %call215 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp216 = icmp eq i64 %97, %call215
  br i1 %cmp216, label %if.end.220, label %if.then.218

if.then.218:                                      ; preds = %if.end.209
  %98 = load i64, i64* %entity, align 8
  %99 = load i64, i64* %val, align 8
  %call219 = call i64 @Fcons(i64 %98, i64 %99)
  store i64 %call219, i64* %val, align 8
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.218, %if.end.209
  br label %for.inc.221

for.inc.221:                                      ; preds = %if.end.220, %if.then.207, %if.then.195, %if.then.167, %if.then.129, %if.then.118, %if.then.101
  %100 = load i32, i32* %i, align 4
  %inc222 = add nsw i32 %100, 1
  store i32 %inc222, i32* %i, align 4
  br label %for.cond

for.end.223:                                      ; preds = %for.cond
  %101 = load i64, i64* %val, align 8
  %call224 = call i64 @Fnreverse(i64 %101)
  store i64 %call224, i64* %val, align 8
  br label %finish

err:                                              ; preds = %if.then.75, %if.then.57
  %call225 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call225, i64* %val, align 8
  br label %finish

finish:                                           ; preds = %err, %for.end.223, %if.then.87
  br label %do.body

do.body:                                          ; preds = %finish
  %102 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 104), align 8
  %call226 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp227 = icmp eq i64 %102, %call226
  br i1 %cmp227, label %if.end.230, label %if.then.229

if.then.229:                                      ; preds = %do.body
  %103 = load i64, i64* %spec.addr, align 8
  %104 = load i64, i64* %val, align 8
  call void @font_add_log(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i64 %103, i64 %104)
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.229, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.230
  %105 = load %struct._FcObjectSet*, %struct._FcObjectSet** %objset, align 8
  %tobool231 = icmp ne %struct._FcObjectSet* %105, null
  br i1 %tobool231, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %do.end
  %106 = load %struct._FcObjectSet*, %struct._FcObjectSet** %objset, align 8
  call void @FcObjectSetDestroy(%struct._FcObjectSet* %106)
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.232, %do.end
  %107 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %tobool234 = icmp ne %struct._FcFontSet* %107, null
  br i1 %tobool234, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %if.end.233
  %108 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  call void @FcFontSetDestroy(%struct._FcFontSet* %108)
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.235, %if.end.233
  %109 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %tobool237 = icmp ne %struct._FcPattern* %109, null
  br i1 %tobool237, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %if.end.236
  %110 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  call void @FcPatternDestroy(%struct._FcPattern* %110)
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.238, %if.end.236
  %111 = load i64, i64* %val, align 8
  store i64 %111, i64* %retval
  br label %return

return:                                           ; preds = %if.end.239, %if.then.5
  %112 = load i64, i64* %retval
  ret i64 %112
}

; Function Attrs: nounwind uwtable
define internal i64 @ftfont_match(%struct.frame* %f, i64 %spec) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct.frame*, align 8
  %spec.addr = alloca i64, align 8
  %entity = alloca i64, align 8
  %pattern = alloca %struct._FcPattern*, align 8
  %match = alloca %struct._FcPattern*, align 8
  %result = alloca i32, align 4
  %otlayout = alloca [15 x i8], align 1
  %otspec = alloca %struct.OpenTypeSpec*, align 8
  %langname = alloca i8*, align 8
  %value = alloca %struct._FcValue, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %spec, i64* %spec.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %entity, align 8
  store %struct._FcPattern* null, %struct._FcPattern** %match, align 8
  store %struct.OpenTypeSpec* null, %struct.OpenTypeSpec** %otspec, align 8
  store i8* null, i8** %langname, align 8
  %0 = load i8, i8* @fc_initialized, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @FcInit()
  store i8 1, i8* @fc_initialized, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %spec.addr, align 8
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %otlayout, i32 0, i32 0
  %call2 = call %struct._FcPattern* @ftfont_spec_pattern(i64 %1, i8* %arraydecay, %struct.OpenTypeSpec** %otspec, i8** %langname)
  store %struct._FcPattern* %call2, %struct._FcPattern** %pattern, align 8
  %2 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %tobool3 = icmp ne %struct._FcPattern* %2, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %3 = load i64, i64* %spec.addr, align 8
  %call7 = call i64 @AREF(i64 %3, i64 8)
  %and = and i64 %call7, 7
  %conv = trunc i64 %and to i32
  %and8 = and i32 %conv, -5
  %cmp = icmp eq i32 %and8, 2
  br i1 %cmp, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.6
  %type = getelementptr inbounds %struct._FcValue, %struct._FcValue* %value, i32 0, i32 0
  store i32 2, i32* %type, align 4
  %4 = load i64, i64* %spec.addr, align 8
  %call11 = call i64 @AREF(i64 %4, i64 8)
  %shr = ashr i64 %call11, 2
  %conv12 = sitofp i64 %shr to double
  %u = getelementptr inbounds %struct._FcValue, %struct._FcValue* %value, i32 0, i32 1
  %d = bitcast %union.anon.8* %u to double*
  store double %conv12, double* %d, align 8
  %5 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %6 = bitcast %struct._FcValue* %value to { i32, i8* }*
  %7 = getelementptr { i32, i8* }, { i32, i8* }* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 1
  %9 = getelementptr { i32, i8* }, { i32, i8* }* %6, i32 0, i32 1
  %10 = load i8*, i8** %9, align 1
  %call13 = call i32 @FcPatternAdd(%struct._FcPattern* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 %8, i8* %10, i32 0)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end.6
  %11 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %call15 = call i32 @FcConfigSubstitute(%struct._FcConfig* null, %struct._FcPattern* %11, i32 0)
  %cmp16 = icmp eq i32 %call15, 1
  br i1 %cmp16, label %if.then.18, label %if.end.44

if.then.18:                                       ; preds = %if.end.14
  %12 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  call void @FcDefaultSubstitute(%struct._FcPattern* %12)
  %13 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %call19 = call %struct._FcPattern* @FcFontMatch(%struct._FcConfig* null, %struct._FcPattern* %13, i32* %result)
  store %struct._FcPattern* %call19, %struct._FcPattern** %match, align 8
  %14 = load %struct._FcPattern*, %struct._FcPattern** %match, align 8
  %tobool20 = icmp ne %struct._FcPattern* %14, null
  br i1 %tobool20, label %if.then.21, label %if.end.43

if.then.21:                                       ; preds = %if.then.18
  %15 = load %struct._FcPattern*, %struct._FcPattern** %match, align 8
  %16 = load i64, i64* %spec.addr, align 8
  %call22 = call i64 @AREF(i64 %16, i64 12)
  %call23 = call i64 @ftfont_pattern_entity(%struct._FcPattern* %15, i64 %call22)
  store i64 %call23, i64* %entity, align 8
  %17 = load %struct._FcPattern*, %struct._FcPattern** %match, align 8
  call void @FcPatternDestroy(%struct._FcPattern* %17)
  %18 = load i64, i64* %spec.addr, align 8
  %call24 = call i64 @AREF(i64 %18, i64 2)
  %call25 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp26 = icmp eq i64 %call24, %call25
  br i1 %cmp26, label %if.end.42, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.21
  %19 = load i64, i64* %spec.addr, align 8
  %call28 = call i64 @AREF(i64 %19, i64 2)
  %20 = load i64, i64* @ftfont_generic_family_list, align 8
  %call29 = call i64 @assq_no_quit(i64 %call28, i64 %20)
  %call30 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp31 = icmp eq i64 %call29, %call30
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.42

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %21 = load i64, i64* %spec.addr, align 8
  %call34 = call i64 @AREF(i64 %21, i64 2)
  %22 = load i64, i64* %entity, align 8
  %call35 = call i64 @AREF(i64 %22, i64 2)
  %call36 = call i64 @Fstring_equal(i64 %call34, i64 %call35)
  %call37 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp38 = icmp eq i64 %call36, %call37
  br i1 %cmp38, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %land.lhs.true.33
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call41, i64* %entity, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %land.lhs.true.33, %land.lhs.true, %if.then.21
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.18
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.14
  %23 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  call void @FcPatternDestroy(%struct._FcPattern* %23)
  br label %do.body

do.body:                                          ; preds = %if.end.44
  %24 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 104), align 8
  %call45 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp46 = icmp eq i64 %24, %call45
  br i1 %cmp46, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %do.body
  %25 = load i64, i64* %spec.addr, align 8
  %26 = load i64, i64* %entity, align 8
  call void @font_add_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i64 %25, i64 %26)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.49
  %27 = load i64, i64* %entity, align 8
  store i64 %27, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4
  %28 = load i64, i64* %retval
  ret i64 %28
}

; Function Attrs: nounwind uwtable
define internal i64 @ftfont_list_family(%struct.frame* %f) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %list = alloca i64, align 8
  %pattern = alloca %struct._FcPattern*, align 8
  %fontset = alloca %struct._FcFontSet*, align 8
  %objset = alloca %struct._FcObjectSet*, align 8
  %i = alloca i32, align 4
  %pat = alloca %struct._FcPattern*, align 8
  %str = alloca i8*, align 8
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %list, align 8
  store %struct._FcPattern* null, %struct._FcPattern** %pattern, align 8
  store %struct._FcFontSet* null, %struct._FcFontSet** %fontset, align 8
  store %struct._FcObjectSet* null, %struct._FcObjectSet** %objset, align 8
  %0 = load i8, i8* @fc_initialized, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @FcInit()
  store i8 1, i8* @fc_initialized, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call %struct._FcPattern* @FcPatternCreate()
  store %struct._FcPattern* %call2, %struct._FcPattern** %pattern, align 8
  %1 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %tobool3 = icmp ne %struct._FcPattern* %1, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %finish

if.end.5:                                         ; preds = %if.end
  %call6 = call %struct._FcObjectSet* (i8*, ...) @FcObjectSetBuild(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* null)
  store %struct._FcObjectSet* %call6, %struct._FcObjectSet** %objset, align 8
  %2 = load %struct._FcObjectSet*, %struct._FcObjectSet** %objset, align 8
  %tobool7 = icmp ne %struct._FcObjectSet* %2, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  br label %finish

if.end.9:                                         ; preds = %if.end.5
  %3 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %4 = load %struct._FcObjectSet*, %struct._FcObjectSet** %objset, align 8
  %call10 = call %struct._FcFontSet* @FcFontList(%struct._FcConfig* null, %struct._FcPattern* %3, %struct._FcObjectSet* %4)
  store %struct._FcFontSet* %call10, %struct._FcFontSet** %fontset, align 8
  %5 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %tobool11 = icmp ne %struct._FcFontSet* %5, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  br label %finish

if.end.13:                                        ; preds = %if.end.9
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %6 = load i32, i32* %i, align 4
  %7 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %nfont = getelementptr inbounds %struct._FcFontSet, %struct._FcFontSet* %7, i32 0, i32 0
  %8 = load i32, i32* %nfont, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %fonts = getelementptr inbounds %struct._FcFontSet, %struct._FcFontSet* %10, i32 0, i32 2
  %11 = load %struct._FcPattern**, %struct._FcPattern*** %fonts, align 8
  %arrayidx = getelementptr inbounds %struct._FcPattern*, %struct._FcPattern** %11, i64 %idxprom
  %12 = load %struct._FcPattern*, %struct._FcPattern** %arrayidx, align 8
  store %struct._FcPattern* %12, %struct._FcPattern** %pat, align 8
  %13 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %call14 = call i32 @FcPatternGetString(%struct._FcPattern* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i8** %str)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %for.body
  %14 = load i8*, i8** %str, align 8
  %call17 = call i64 @intern(i8* %14)
  %15 = load i64, i64* %list, align 8
  %call18 = call i64 @Fcons(i64 %call17, i64 %15)
  store i64 %call18, i64* %list, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %finish

finish:                                           ; preds = %for.end, %if.then.12, %if.then.8, %if.then.4
  %17 = load %struct._FcObjectSet*, %struct._FcObjectSet** %objset, align 8
  %tobool20 = icmp ne %struct._FcObjectSet* %17, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %finish
  %18 = load %struct._FcObjectSet*, %struct._FcObjectSet** %objset, align 8
  call void @FcObjectSetDestroy(%struct._FcObjectSet* %18)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %finish
  %19 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %tobool23 = icmp ne %struct._FcFontSet* %19, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %20 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  call void @FcFontSetDestroy(%struct._FcFontSet* %20)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  %21 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %tobool26 = icmp ne %struct._FcPattern* %21, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %22 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  call void @FcPatternDestroy(%struct._FcPattern* %22)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  %23 = load i64, i64* %list, align 8
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define internal i64 @ftfont_open(%struct.frame* %f, i64 %entity, i32 %pixel_size) #0 {
entry:
  %f.addr = alloca %struct.frame*, align 8
  %entity.addr = alloca i64, align 8
  %pixel_size.addr = alloca i32, align 4
  %font_object = alloca i64, align 8
  %size = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %entity, i64* %entity.addr, align 8
  store i32 %pixel_size, i32* %pixel_size.addr, align 4
  %0 = load i64, i64* %entity.addr, align 8
  %call = call i64 @AREF(i64 %0, i64 8)
  %shr = ashr i64 %call, 2
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %size, align 4
  %1 = load i32, i32* %size, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %pixel_size.addr, align 4
  store i32 %2, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 466)
  %3 = load i64, i64* %entity.addr, align 8
  %4 = load i32, i32* %size, align 4
  %conv3 = uitofp i32 %4 to double
  %call4 = call i64 @font_build_object(i32 32, i64 %call2, i64 %3, double %conv3)
  store i64 %call4, i64* %font_object, align 8
  %5 = load %struct.frame*, %struct.frame** %f.addr, align 8
  %6 = load i64, i64* %entity.addr, align 8
  %7 = load i32, i32* %pixel_size.addr, align 4
  %8 = load i64, i64* %font_object, align 8
  %call5 = call i64 @ftfont_open2(%struct.frame* %5, i64 %6, i32 %7, i64 %8)
  ret i64 %call5
}

; Function Attrs: nounwind uwtable
define internal void @ftfont_close(%struct.font* %font) #0 {
entry:
  %font.addr = alloca %struct.font*, align 8
  %ftfont_info = alloca %struct.ftfont_info*, align 8
  %val = alloca i64, align 8
  %cache = alloca i64, align 8
  %cache_data = alloca %struct.ftfont_cache_data*, align 8
  store %struct.font* %font, %struct.font** %font.addr, align 8
  %0 = load %struct.font*, %struct.font** %font.addr, align 8
  %1 = bitcast %struct.font* %0 to %struct.ftfont_info*
  store %struct.ftfont_info* %1, %struct.ftfont_info** %ftfont_info, align 8
  %2 = load %struct.font*, %struct.font** %font.addr, align 8
  %props = getelementptr inbounds %struct.font, %struct.font* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [17 x i64], [17 x i64]* %props, i32 0, i64 16
  %3 = load i64, i64* %arrayidx, align 8
  %4 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %index = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %4, i32 0, i32 2
  %5 = load i32, i32* %index, align 4
  %conv = sext i32 %5 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %call = call i64 @Fcons(i64 %3, i64 %add)
  store i64 %call, i64* %val, align 8
  %6 = load i64, i64* %val, align 8
  %call1 = call i64 @ftfont_lookup_cache(i64 %6, i32 0)
  store i64 %call1, i64* %cache, align 8
  %7 = load i64, i64* %cache, align 8
  %sub = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %10 = load i64, i64* %cdr, align 8
  store i64 %10, i64* %val, align 8
  %11 = load i64, i64* %val, align 8
  %12 = load i64, i64* %val, align 8
  %call2 = call i64 @XSAVE_INTEGER(i64 %12, i32 1)
  %sub3 = sub nsw i64 %call2, 1
  call void @set_save_integer(i64 %11, i32 1, i64 %sub3)
  %13 = load i64, i64* %val, align 8
  %call4 = call i64 @XSAVE_INTEGER(i64 %13, i32 1)
  %cmp = icmp eq i64 %call4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load i64, i64* %val, align 8
  %call6 = call i8* @XSAVE_POINTER(i64 %14, i32 0)
  %15 = bitcast i8* %call6 to %struct.ftfont_cache_data*
  store %struct.ftfont_cache_data* %15, %struct.ftfont_cache_data** %cache_data, align 8
  %16 = load %struct.ftfont_cache_data*, %struct.ftfont_cache_data** %cache_data, align 8
  %ft_face = getelementptr inbounds %struct.ftfont_cache_data, %struct.ftfont_cache_data* %16, i32 0, i32 0
  %17 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %call7 = call i32 @FT_Done_Face(%struct.FT_FaceRec_* %17)
  %18 = load %struct.ftfont_cache_data*, %struct.ftfont_cache_data** %cache_data, align 8
  %ft_face8 = getelementptr inbounds %struct.ftfont_cache_data, %struct.ftfont_cache_data* %18, i32 0, i32 0
  store %struct.FT_FaceRec_* null, %struct.FT_FaceRec_** %ft_face8, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %ft_size = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %19, i32 0, i32 1
  %20 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %ft_size, align 8
  %call9 = call i32 @FT_Done_Size(%struct.FT_SizeRec_* %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ftfont_has_char(i64 %font, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca i64, align 8
  %c.addr = alloca i32, align 4
  %cs = alloca %struct.charset*, align 8
  %charset = alloca %struct._FcCharSet*, align 8
  %ftfont_info = alloca %struct.ftfont_info*, align 8
  store i64 %font, i64* %font.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store %struct.charset* null, %struct.charset** %cs, align 8
  %0 = load i64, i64* %font.addr, align 8
  %call = call i64 @AREF(i64 %0, i64 3)
  %call1 = call i64 @builtin_lisp_symbol(i32 583)
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @charset_jisx0208, align 4
  %cmp2 = icmp sge i32 %1, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %3 = load i32, i32* @charset_jisx0208, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.charset, %struct.charset* %2, i64 %idx.ext
  store %struct.charset* %add.ptr, %struct.charset** %cs, align 8
  br label %if.end.11

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i64, i64* %font.addr, align 8
  %call3 = call i64 @AREF(i64 %4, i64 3)
  %call4 = call i64 @builtin_lisp_symbol(i32 597)
  %cmp5 = icmp eq i64 %call3, %call4
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %if.else
  %5 = load i32, i32* @charset_ksc5601, align 4
  %cmp7 = icmp sge i32 %5, 0
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true.6
  %6 = load %struct.charset*, %struct.charset** @charset_table, align 8
  %7 = load i32, i32* @charset_ksc5601, align 4
  %idx.ext9 = sext i32 %7 to i64
  %add.ptr10 = getelementptr inbounds %struct.charset, %struct.charset* %6, i64 %idx.ext9
  store %struct.charset* %add.ptr10, %struct.charset** %cs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true.6, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  %8 = load %struct.charset*, %struct.charset** %cs, align 8
  %tobool = icmp ne %struct.charset* %8, null
  br i1 %tobool, label %if.then.12, label %if.end.104

if.then.12:                                       ; preds = %if.end.11
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %9 = load i32, i32* %c.addr, align 4
  %add = add i32 %9, 0
  %cmp13 = icmp ult i32 %add, 128
  br i1 %cmp13, label %land.lhs.true.17, label %cond.false.20

cond.false:                                       ; preds = %if.then.12
  %10 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %10 to i64
  %add14 = add i64 %conv, 0
  %cmp15 = icmp ult i64 %add14, 128
  br i1 %cmp15, label %land.lhs.true.17, label %cond.false.20

land.lhs.true.17:                                 ; preds = %cond.false, %cond.true
  %11 = load %struct.charset*, %struct.charset** %cs, align 8
  %ascii_compatible_p = getelementptr inbounds %struct.charset, %struct.charset* %11, i32 0, i32 5
  %bf.load = load i8, i8* %ascii_compatible_p, align 8
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = trunc i8 %bf.clear to i1
  br i1 %bf.cast, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %land.lhs.true.17
  %12 = load i32, i32* %c.addr, align 4
  br label %cond.end.99

cond.false.20:                                    ; preds = %land.lhs.true.17, %cond.false, %cond.true
  %13 = load %struct.charset*, %struct.charset** %cs, align 8
  %unified_p = getelementptr inbounds %struct.charset, %struct.charset* %13, i32 0, i32 5
  %bf.load21 = load i8, i8* %unified_p, align 8
  %bf.lshr22 = lshr i8 %bf.load21, 5
  %bf.clear23 = and i8 %bf.lshr22, 1
  %bf.cast24 = trunc i8 %bf.clear23 to i1
  br i1 %bf.cast24, label %cond.true.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false.20
  %14 = load %struct.charset*, %struct.charset** %cs, align 8
  %method = getelementptr inbounds %struct.charset, %struct.charset* %14, i32 0, i32 9
  %15 = load i32, i32* %method, align 4
  %cmp26 = icmp eq i32 %15, 2
  br i1 %cmp26, label %cond.true.32, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %16 = load %struct.charset*, %struct.charset** %cs, align 8
  %method29 = getelementptr inbounds %struct.charset, %struct.charset* %16, i32 0, i32 9
  %17 = load i32, i32* %method29, align 4
  %cmp30 = icmp eq i32 %17, 3
  br i1 %cmp30, label %cond.true.32, label %cond.false.34

cond.true.32:                                     ; preds = %lor.lhs.false.28, %lor.lhs.false, %cond.false.20
  %18 = load %struct.charset*, %struct.charset** %cs, align 8
  %19 = load i32, i32* %c.addr, align 4
  %call33 = call i32 @encode_char(%struct.charset* %18, i32 %19)
  br label %cond.end.97

cond.false.34:                                    ; preds = %lor.lhs.false.28
  %20 = load i32, i32* %c.addr, align 4
  %21 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_char = getelementptr inbounds %struct.charset, %struct.charset* %21, i32 0, i32 13
  %22 = load i32, i32* %min_char, align 4
  %cmp35 = icmp slt i32 %20, %22
  br i1 %cmp35, label %cond.true.40, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %cond.false.34
  %23 = load i32, i32* %c.addr, align 4
  %24 = load %struct.charset*, %struct.charset** %cs, align 8
  %max_char = getelementptr inbounds %struct.charset, %struct.charset* %24, i32 0, i32 14
  %25 = load i32, i32* %max_char, align 4
  %cmp38 = icmp sgt i32 %23, %25
  br i1 %cmp38, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %lor.lhs.false.37, %cond.false.34
  %26 = load %struct.charset*, %struct.charset** %cs, align 8
  %invalid_code = getelementptr inbounds %struct.charset, %struct.charset* %26, i32 0, i32 15
  %27 = load i32, i32* %invalid_code, align 4
  br label %cond.end.95

cond.false.41:                                    ; preds = %lor.lhs.false.37
  %28 = load %struct.charset*, %struct.charset** %cs, align 8
  %method42 = getelementptr inbounds %struct.charset, %struct.charset* %28, i32 0, i32 9
  %29 = load i32, i32* %method42, align 4
  %cmp43 = icmp eq i32 %29, 0
  br i1 %cmp43, label %cond.true.45, label %cond.false.54

cond.true.45:                                     ; preds = %cond.false.41
  %30 = load %struct.charset*, %struct.charset** %cs, align 8
  %code_linear_p = getelementptr inbounds %struct.charset, %struct.charset* %30, i32 0, i32 5
  %bf.load46 = load i8, i8* %code_linear_p, align 8
  %bf.clear47 = and i8 %bf.load46, 1
  %bf.cast48 = trunc i8 %bf.clear47 to i1
  br i1 %bf.cast48, label %cond.true.50, label %cond.false.52

cond.true.50:                                     ; preds = %cond.true.45
  %31 = load i32, i32* %c.addr, align 4
  %32 = load %struct.charset*, %struct.charset** %cs, align 8
  %code_offset = getelementptr inbounds %struct.charset, %struct.charset* %32, i32 0, i32 17
  %33 = load i32, i32* %code_offset, align 4
  %sub = sub nsw i32 %31, %33
  %34 = load %struct.charset*, %struct.charset** %cs, align 8
  %min_code = getelementptr inbounds %struct.charset, %struct.charset* %34, i32 0, i32 10
  %35 = load i32, i32* %min_code, align 4
  %add51 = add i32 %sub, %35
  br label %cond.end

cond.false.52:                                    ; preds = %cond.true.45
  %36 = load %struct.charset*, %struct.charset** %cs, align 8
  %37 = load i32, i32* %c.addr, align 4
  %call53 = call i32 @encode_char(%struct.charset* %36, i32 %37)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.52, %cond.true.50
  %cond = phi i32 [ %add51, %cond.true.50 ], [ %call53, %cond.false.52 ]
  br label %cond.end.93

cond.false.54:                                    ; preds = %cond.false.41
  %38 = load %struct.charset*, %struct.charset** %cs, align 8
  %method55 = getelementptr inbounds %struct.charset, %struct.charset* %38, i32 0, i32 9
  %39 = load i32, i32* %method55, align 4
  %cmp56 = icmp eq i32 %39, 1
  br i1 %cmp56, label %cond.true.58, label %cond.false.89

cond.true.58:                                     ; preds = %cond.false.54
  %40 = load %struct.charset*, %struct.charset** %cs, align 8
  %compact_codes_p = getelementptr inbounds %struct.charset, %struct.charset* %40, i32 0, i32 5
  %bf.load59 = load i8, i8* %compact_codes_p, align 8
  %bf.lshr60 = lshr i8 %bf.load59, 4
  %bf.clear61 = and i8 %bf.lshr60, 1
  %bf.cast62 = trunc i8 %bf.clear61 to i1
  br i1 %bf.cast62, label %land.lhs.true.64, label %cond.false.85

land.lhs.true.64:                                 ; preds = %cond.true.58
  %41 = load i64, i64* @Vcharset_hash_table, align 8
  %call65 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %41)
  %42 = load %struct.charset*, %struct.charset** %cs, align 8
  %hash_index = getelementptr inbounds %struct.charset, %struct.charset* %42, i32 0, i32 1
  %43 = load i64, i64* %hash_index, align 8
  %call66 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call65, i64 %43)
  %call67 = call i64 @AREF(i64 %call66, i64 5)
  %call68 = call zeroext i1 @CHAR_TABLE_P(i64 %call67)
  br i1 %call68, label %cond.true.70, label %cond.false.85

cond.true.70:                                     ; preds = %land.lhs.true.64
  %44 = load i64, i64* @Vcharset_hash_table, align 8
  %call71 = call %struct.Lisp_Hash_Table* @XHASH_TABLE(i64 %44)
  %45 = load %struct.charset*, %struct.charset** %cs, align 8
  %hash_index72 = getelementptr inbounds %struct.charset, %struct.charset* %45, i32 0, i32 1
  %46 = load i64, i64* %hash_index72, align 8
  %call73 = call i64 @HASH_VALUE(%struct.Lisp_Hash_Table* %call71, i64 %46)
  %call74 = call i64 @AREF(i64 %call73, i64 5)
  %47 = load i32, i32* %c.addr, align 4
  %call75 = call i64 @CHAR_TABLE_REF(i64 %call74, i32 %47)
  store i64 %call75, i64* @charset_work, align 8
  %48 = load i64, i64* @charset_work, align 8
  %call76 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp77 = icmp eq i64 %48, %call76
  br i1 %cmp77, label %cond.true.79, label %cond.false.81

cond.true.79:                                     ; preds = %cond.true.70
  %49 = load %struct.charset*, %struct.charset** %cs, align 8
  %invalid_code80 = getelementptr inbounds %struct.charset, %struct.charset* %49, i32 0, i32 15
  %50 = load i32, i32* %invalid_code80, align 4
  br label %cond.end.83

cond.false.81:                                    ; preds = %cond.true.70
  %51 = load i64, i64* @charset_work, align 8
  %shr = ashr i64 %51, 2
  %conv82 = trunc i64 %shr to i32
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.81, %cond.true.79
  %cond84 = phi i32 [ %50, %cond.true.79 ], [ %conv82, %cond.false.81 ]
  br label %cond.end.87

cond.false.85:                                    ; preds = %land.lhs.true.64, %cond.true.58
  %52 = load %struct.charset*, %struct.charset** %cs, align 8
  %53 = load i32, i32* %c.addr, align 4
  %call86 = call i32 @encode_char(%struct.charset* %52, i32 %53)
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.85, %cond.end.83
  %cond88 = phi i32 [ %cond84, %cond.end.83 ], [ %call86, %cond.false.85 ]
  br label %cond.end.91

cond.false.89:                                    ; preds = %cond.false.54
  %54 = load %struct.charset*, %struct.charset** %cs, align 8
  %55 = load i32, i32* %c.addr, align 4
  %call90 = call i32 @encode_char(%struct.charset* %54, i32 %55)
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.89, %cond.end.87
  %cond92 = phi i32 [ %cond88, %cond.end.87 ], [ %call90, %cond.false.89 ]
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.91, %cond.end
  %cond94 = phi i32 [ %cond, %cond.end ], [ %cond92, %cond.end.91 ]
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.end.93, %cond.true.40
  %cond96 = phi i32 [ %27, %cond.true.40 ], [ %cond94, %cond.end.93 ]
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.end.95, %cond.true.32
  %cond98 = phi i32 [ %call33, %cond.true.32 ], [ %cond96, %cond.end.95 ]
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.end.97, %cond.true.19
  %cond100 = phi i32 [ %12, %cond.true.19 ], [ %cond98, %cond.end.97 ]
  %56 = load %struct.charset*, %struct.charset** %cs, align 8
  %invalid_code101 = getelementptr inbounds %struct.charset, %struct.charset* %56, i32 0, i32 15
  %57 = load i32, i32* %invalid_code101, align 4
  %cmp102 = icmp ne i32 %cond100, %57
  %conv103 = zext i1 %cmp102 to i32
  store i32 %conv103, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.end.11
  %58 = load i64, i64* %font.addr, align 8
  %call105 = call zeroext i1 @FONT_ENTITY_P(i64 %58)
  br i1 %call105, label %if.then.106, label %if.else.111

if.then.106:                                      ; preds = %if.end.104
  %59 = load i64, i64* %font.addr, align 8
  %call107 = call %struct._FcCharSet* @ftfont_get_fc_charset(i64 %59)
  store %struct._FcCharSet* %call107, %struct._FcCharSet** %charset, align 8
  %60 = load %struct._FcCharSet*, %struct._FcCharSet** %charset, align 8
  %61 = load i32, i32* %c.addr, align 4
  %call108 = call i32 @FcCharSetHasChar(%struct._FcCharSet* %60, i32 %61)
  %cmp109 = icmp eq i32 %call108, 1
  %conv110 = zext i1 %cmp109 to i32
  store i32 %conv110, i32* %retval
  br label %return

if.else.111:                                      ; preds = %if.end.104
  %62 = load i64, i64* %font.addr, align 8
  %call112 = call %struct.font* @XFONT_OBJECT(i64 %62)
  %63 = bitcast %struct.font* %call112 to %struct.ftfont_info*
  store %struct.ftfont_info* %63, %struct.ftfont_info** %ftfont_info, align 8
  %64 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %ft_size = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %64, i32 0, i32 1
  %65 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %ft_size, align 8
  %face = getelementptr inbounds %struct.FT_SizeRec_, %struct.FT_SizeRec_* %65, i32 0, i32 0
  %66 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %face, align 8
  %67 = load i32, i32* %c.addr, align 4
  %conv113 = sext i32 %67 to i64
  %call114 = call i32 @FT_Get_Char_Index(%struct.FT_FaceRec_* %66, i64 %conv113)
  %cmp115 = icmp ne i32 %call114, 0
  %conv116 = zext i1 %cmp115 to i32
  store i32 %conv116, i32* %retval
  br label %return

return:                                           ; preds = %if.else.111, %if.then.106, %cond.end.99
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @ftfont_encode_char(%struct.font* %font, i32 %c) #0 {
entry:
  %font.addr = alloca %struct.font*, align 8
  %c.addr = alloca i32, align 4
  %ftfont_info = alloca %struct.ftfont_info*, align 8
  %ft_face = alloca %struct.FT_FaceRec_*, align 8
  %charcode = alloca i64, align 8
  %code = alloca i32, align 4
  store %struct.font* %font, %struct.font** %font.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.font*, %struct.font** %font.addr, align 8
  %1 = bitcast %struct.font* %0 to %struct.ftfont_info*
  store %struct.ftfont_info* %1, %struct.ftfont_info** %ftfont_info, align 8
  %2 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %ft_size = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %2, i32 0, i32 1
  %3 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %ft_size, align 8
  %face = getelementptr inbounds %struct.FT_SizeRec_, %struct.FT_SizeRec_* %3, i32 0, i32 0
  %4 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %face, align 8
  store %struct.FT_FaceRec_* %4, %struct.FT_FaceRec_** %ft_face, align 8
  %5 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %5 to i64
  store i64 %conv, i64* %charcode, align 8
  %6 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %7 = load i64, i64* %charcode, align 8
  %call = call i32 @FT_Get_Char_Index(%struct.FT_FaceRec_* %6, i64 %7)
  store i32 %call, i32* %code, align 4
  %8 = load i32, i32* %code, align 4
  %cmp = icmp ugt i32 %8, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i32, i32* %code, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ -1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal void @ftfont_text_extents(%struct.font* %font, i32* %code, i32 %nglyphs, %struct.font_metrics* %metrics) #0 {
entry:
  %font.addr = alloca %struct.font*, align 8
  %code.addr = alloca i32*, align 8
  %nglyphs.addr = alloca i32, align 4
  %metrics.addr = alloca %struct.font_metrics*, align 8
  %ftfont_info = alloca %struct.ftfont_info*, align 8
  %ft_face = alloca %struct.FT_FaceRec_*, align 8
  %i = alloca i32, align 4
  %width = alloca i32, align 4
  %first = alloca i8, align 1
  %m = alloca %struct.FT_Glyph_Metrics_*, align 8
  store %struct.font* %font, %struct.font** %font.addr, align 8
  store i32* %code, i32** %code.addr, align 8
  store i32 %nglyphs, i32* %nglyphs.addr, align 4
  store %struct.font_metrics* %metrics, %struct.font_metrics** %metrics.addr, align 8
  %0 = load %struct.font*, %struct.font** %font.addr, align 8
  %1 = bitcast %struct.font* %0 to %struct.ftfont_info*
  store %struct.ftfont_info* %1, %struct.ftfont_info** %ftfont_info, align 8
  %2 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %ft_size = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %2, i32 0, i32 1
  %3 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %ft_size, align 8
  %face = getelementptr inbounds %struct.FT_SizeRec_, %struct.FT_SizeRec_* %3, i32 0, i32 0
  %4 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %face, align 8
  store %struct.FT_FaceRec_* %4, %struct.FT_FaceRec_** %ft_face, align 8
  store i32 0, i32* %width, align 4
  %5 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %ft_size1 = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %5, i32 0, i32 1
  %6 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %ft_size1, align 8
  %7 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %size = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %7, i32 0, i32 22
  %8 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %size, align 8
  %cmp = icmp ne %struct.FT_SizeRec_* %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %ft_size2 = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %9, i32 0, i32 1
  %10 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %ft_size2, align 8
  %call = call i32 @FT_Activate_Size(%struct.FT_SizeRec_* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  store i8 1, i8* %first, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %nglyphs.addr, align 4
  %cmp3 = icmp slt i32 %11, %12
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i32*, i32** %code.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %idxprom
  %16 = load i32, i32* %arrayidx, align 4
  %call4 = call i32 @FT_Load_Glyph(%struct.FT_FaceRec_* %13, i32 %16, i32 0)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.body
  %17 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %17, i32 0, i32 21
  %18 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph, align 8
  %metrics7 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %18, i32 0, i32 5
  store %struct.FT_Glyph_Metrics_* %metrics7, %struct.FT_Glyph_Metrics_** %m, align 8
  %19 = load i8, i8* %first, align 1
  %tobool = trunc i8 %19 to i1
  br i1 %tobool, label %if.then.8, label %if.end.18

if.then.8:                                        ; preds = %if.then.6
  %20 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %horiBearingX = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %20, i32 0, i32 2
  %21 = load i64, i64* %horiBearingX, align 8
  %shr = ashr i64 %21, 6
  %conv = trunc i64 %shr to i16
  %22 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %lbearing = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %22, i32 0, i32 0
  store i16 %conv, i16* %lbearing, align 2
  %23 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %horiBearingX9 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %23, i32 0, i32 2
  %24 = load i64, i64* %horiBearingX9, align 8
  %25 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %width10 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %25, i32 0, i32 0
  %26 = load i64, i64* %width10, align 8
  %add = add nsw i64 %24, %26
  %shr11 = ashr i64 %add, 6
  %conv12 = trunc i64 %shr11 to i16
  %27 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %rbearing = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %27, i32 0, i32 1
  store i16 %conv12, i16* %rbearing, align 2
  %28 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %horiBearingY = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %28, i32 0, i32 3
  %29 = load i64, i64* %horiBearingY, align 8
  %shr13 = ashr i64 %29, 6
  %conv14 = trunc i64 %shr13 to i16
  %30 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %ascent = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %30, i32 0, i32 3
  store i16 %conv14, i16* %ascent, align 2
  %31 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %height = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %31, i32 0, i32 1
  %32 = load i64, i64* %height, align 8
  %33 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %horiBearingY15 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %33, i32 0, i32 3
  %34 = load i64, i64* %horiBearingY15, align 8
  %sub = sub nsw i64 %32, %34
  %shr16 = ashr i64 %sub, 6
  %conv17 = trunc i64 %shr16 to i16
  %35 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %descent = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %35, i32 0, i32 4
  store i16 %conv17, i16* %descent, align 2
  store i8 0, i8* %first, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.8, %if.then.6
  %36 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %lbearing19 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %36, i32 0, i32 0
  %37 = load i16, i16* %lbearing19, align 2
  %conv20 = sext i16 %37 to i64
  %38 = load i32, i32* %width, align 4
  %conv21 = sext i32 %38 to i64
  %39 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %horiBearingX22 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %39, i32 0, i32 2
  %40 = load i64, i64* %horiBearingX22, align 8
  %shr23 = ashr i64 %40, 6
  %add24 = add nsw i64 %conv21, %shr23
  %cmp25 = icmp sgt i64 %conv20, %add24
  br i1 %cmp25, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %if.end.18
  %41 = load i32, i32* %width, align 4
  %conv28 = sext i32 %41 to i64
  %42 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %horiBearingX29 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %42, i32 0, i32 2
  %43 = load i64, i64* %horiBearingX29, align 8
  %shr30 = ashr i64 %43, 6
  %add31 = add nsw i64 %conv28, %shr30
  %conv32 = trunc i64 %add31 to i16
  %44 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %lbearing33 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %44, i32 0, i32 0
  store i16 %conv32, i16* %lbearing33, align 2
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.27, %if.end.18
  %45 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %rbearing35 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %45, i32 0, i32 1
  %46 = load i16, i16* %rbearing35, align 2
  %conv36 = sext i16 %46 to i64
  %47 = load i32, i32* %width, align 4
  %conv37 = sext i32 %47 to i64
  %48 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %horiBearingX38 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %48, i32 0, i32 2
  %49 = load i64, i64* %horiBearingX38, align 8
  %50 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %width39 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %50, i32 0, i32 0
  %51 = load i64, i64* %width39, align 8
  %add40 = add nsw i64 %49, %51
  %shr41 = ashr i64 %add40, 6
  %add42 = add nsw i64 %conv37, %shr41
  %cmp43 = icmp slt i64 %conv36, %add42
  br i1 %cmp43, label %if.then.45, label %if.end.54

if.then.45:                                       ; preds = %if.end.34
  %52 = load i32, i32* %width, align 4
  %conv46 = sext i32 %52 to i64
  %53 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %horiBearingX47 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %53, i32 0, i32 2
  %54 = load i64, i64* %horiBearingX47, align 8
  %55 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %width48 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %55, i32 0, i32 0
  %56 = load i64, i64* %width48, align 8
  %add49 = add nsw i64 %54, %56
  %shr50 = ashr i64 %add49, 6
  %add51 = add nsw i64 %conv46, %shr50
  %conv52 = trunc i64 %add51 to i16
  %57 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %rbearing53 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %57, i32 0, i32 1
  store i16 %conv52, i16* %rbearing53, align 2
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.45, %if.end.34
  %58 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %ascent55 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %58, i32 0, i32 3
  %59 = load i16, i16* %ascent55, align 2
  %conv56 = sext i16 %59 to i64
  %60 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %horiBearingY57 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %60, i32 0, i32 3
  %61 = load i64, i64* %horiBearingY57, align 8
  %shr58 = ashr i64 %61, 6
  %cmp59 = icmp slt i64 %conv56, %shr58
  br i1 %cmp59, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %if.end.54
  %62 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %horiBearingY62 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %62, i32 0, i32 3
  %63 = load i64, i64* %horiBearingY62, align 8
  %shr63 = ashr i64 %63, 6
  %conv64 = trunc i64 %shr63 to i16
  %64 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %ascent65 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %64, i32 0, i32 3
  store i16 %conv64, i16* %ascent65, align 2
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %if.end.54
  %65 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %descent67 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %65, i32 0, i32 4
  %66 = load i16, i16* %descent67, align 2
  %conv68 = sext i16 %66 to i64
  %67 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %height69 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %67, i32 0, i32 1
  %68 = load i64, i64* %height69, align 8
  %69 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %horiBearingY70 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %69, i32 0, i32 3
  %70 = load i64, i64* %horiBearingY70, align 8
  %sub71 = sub nsw i64 %68, %70
  %shr72 = ashr i64 %sub71, 6
  %cmp73 = icmp sgt i64 %conv68, %shr72
  br i1 %cmp73, label %if.then.75, label %if.end.82

if.then.75:                                       ; preds = %if.end.66
  %71 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %height76 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %71, i32 0, i32 1
  %72 = load i64, i64* %height76, align 8
  %73 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %horiBearingY77 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %73, i32 0, i32 3
  %74 = load i64, i64* %horiBearingY77, align 8
  %sub78 = sub nsw i64 %72, %74
  %shr79 = ashr i64 %sub78, 6
  %conv80 = trunc i64 %shr79 to i16
  %75 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %descent81 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %75, i32 0, i32 4
  store i16 %conv80, i16* %descent81, align 2
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.75, %if.end.66
  %76 = load %struct.FT_Glyph_Metrics_*, %struct.FT_Glyph_Metrics_** %m, align 8
  %horiAdvance = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %76, i32 0, i32 4
  %77 = load i64, i64* %horiAdvance, align 8
  %shr83 = ashr i64 %77, 6
  %78 = load i32, i32* %width, align 4
  %conv84 = sext i32 %78 to i64
  %add85 = add nsw i64 %conv84, %shr83
  %conv86 = trunc i64 %add85 to i32
  store i32 %conv86, i32* %width, align 4
  br label %if.end.88

if.else:                                          ; preds = %for.body
  %79 = load %struct.font*, %struct.font** %font.addr, align 8
  %space_width = getelementptr inbounds %struct.font, %struct.font* %79, i32 0, i32 6
  %80 = load i32, i32* %space_width, align 4
  %81 = load i32, i32* %width, align 4
  %add87 = add nsw i32 %81, %80
  store i32 %add87, i32* %width, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else, %if.end.82
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %82 = load i32, i32* %i, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = load i32, i32* %width, align 4
  %conv89 = trunc i32 %83 to i16
  %84 = load %struct.font_metrics*, %struct.font_metrics** %metrics.addr, align 8
  %width90 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %84, i32 0, i32 2
  store i16 %conv89, i16* %width90, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ftfont_get_bitmap(%struct.font* %font, i32 %code, %struct.font_bitmap* %bitmap, i32 %bits_per_pixel) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.font*, align 8
  %code.addr = alloca i32, align 4
  %bitmap.addr = alloca %struct.font_bitmap*, align 8
  %bits_per_pixel.addr = alloca i32, align 4
  %ftfont_info = alloca %struct.ftfont_info*, align 8
  %ft_face = alloca %struct.FT_FaceRec_*, align 8
  %load_flags = alloca i32, align 4
  store %struct.font* %font, %struct.font** %font.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store %struct.font_bitmap* %bitmap, %struct.font_bitmap** %bitmap.addr, align 8
  store i32 %bits_per_pixel, i32* %bits_per_pixel.addr, align 4
  %0 = load %struct.font*, %struct.font** %font.addr, align 8
  %1 = bitcast %struct.font* %0 to %struct.ftfont_info*
  store %struct.ftfont_info* %1, %struct.ftfont_info** %ftfont_info, align 8
  %2 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %ft_size = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %2, i32 0, i32 1
  %3 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %ft_size, align 8
  %face = getelementptr inbounds %struct.FT_SizeRec_, %struct.FT_SizeRec_* %3, i32 0, i32 0
  %4 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %face, align 8
  store %struct.FT_FaceRec_* %4, %struct.FT_FaceRec_** %ft_face, align 8
  store i32 4, i32* %load_flags, align 4
  %5 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %ft_size1 = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %5, i32 0, i32 1
  %6 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %ft_size1, align 8
  %7 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %size = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %7, i32 0, i32 22
  %8 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %size, align 8
  %cmp = icmp ne %struct.FT_SizeRec_* %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %ft_size2 = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %9, i32 0, i32 1
  %10 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %ft_size2, align 8
  %call = call i32 @FT_Activate_Size(%struct.FT_SizeRec_* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %bits_per_pixel.addr, align 4
  %cmp3 = icmp eq i32 %11, 1
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %12 = load i32, i32* %load_flags, align 4
  %or = or i32 %12, 131072
  store i32 %or, i32* %load_flags, align 4
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %13 = load i32, i32* %bits_per_pixel.addr, align 4
  %cmp5 = icmp ne i32 %13, 8
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.4
  %14 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %15 = load i32, i32* %code.addr, align 4
  %16 = load i32, i32* %load_flags, align 4
  %call9 = call i32 @FT_Load_Glyph(%struct.FT_FaceRec_* %14, i32 %15, i32 %16)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %17 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %17, i32 0, i32 21
  %18 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph, align 8
  %bitmap13 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %18, i32 0, i32 10
  %pixel_mode = getelementptr inbounds %struct.FT_Bitmap_, %struct.FT_Bitmap_* %bitmap13, i32 0, i32 5
  %19 = load i8, i8* %pixel_mode, align 1
  %conv = sext i8 %19 to i32
  %cmp14 = icmp eq i32 %conv, 1
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  br label %cond.end.41

cond.false:                                       ; preds = %if.end.12
  %20 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph16 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %20, i32 0, i32 21
  %21 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph16, align 8
  %bitmap17 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %21, i32 0, i32 10
  %pixel_mode18 = getelementptr inbounds %struct.FT_Bitmap_, %struct.FT_Bitmap_* %bitmap17, i32 0, i32 5
  %22 = load i8, i8* %pixel_mode18, align 1
  %conv19 = sext i8 %22 to i32
  %cmp20 = icmp eq i32 %conv19, 2
  br i1 %cmp20, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.false
  br label %cond.end.39

cond.false.23:                                    ; preds = %cond.false
  %23 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph24 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %23, i32 0, i32 21
  %24 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph24, align 8
  %bitmap25 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %24, i32 0, i32 10
  %pixel_mode26 = getelementptr inbounds %struct.FT_Bitmap_, %struct.FT_Bitmap_* %bitmap25, i32 0, i32 5
  %25 = load i8, i8* %pixel_mode26, align 1
  %conv27 = sext i8 %25 to i32
  %cmp28 = icmp eq i32 %conv27, 5
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false.23
  br label %cond.end

cond.false.31:                                    ; preds = %cond.false.23
  %26 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph32 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %26, i32 0, i32 21
  %27 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph32, align 8
  %bitmap33 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %27, i32 0, i32 10
  %pixel_mode34 = getelementptr inbounds %struct.FT_Bitmap_, %struct.FT_Bitmap_* %bitmap33, i32 0, i32 5
  %28 = load i8, i8* %pixel_mode34, align 1
  %conv35 = sext i8 %28 to i32
  %cmp36 = icmp eq i32 %conv35, 6
  %cond = select i1 %cmp36, i32 8, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.31, %cond.true.30
  %cond38 = phi i32 [ 8, %cond.true.30 ], [ %cond, %cond.false.31 ]
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.end, %cond.true.22
  %cond40 = phi i32 [ 8, %cond.true.22 ], [ %cond38, %cond.end ]
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.end.39, %cond.true
  %cond42 = phi i32 [ 1, %cond.true ], [ %cond40, %cond.end.39 ]
  %29 = load %struct.font_bitmap*, %struct.font_bitmap** %bitmap.addr, align 8
  %bits_per_pixel43 = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %29, i32 0, i32 0
  store i32 %cond42, i32* %bits_per_pixel43, align 4
  %30 = load %struct.font_bitmap*, %struct.font_bitmap** %bitmap.addr, align 8
  %bits_per_pixel44 = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %30, i32 0, i32 0
  %31 = load i32, i32* %bits_per_pixel44, align 4
  %cmp45 = icmp slt i32 %31, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %cond.end.41
  store i32 -1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %cond.end.41
  %32 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph49 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %32, i32 0, i32 21
  %33 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph49, align 8
  %bitmap50 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %33, i32 0, i32 10
  %rows = getelementptr inbounds %struct.FT_Bitmap_, %struct.FT_Bitmap_* %bitmap50, i32 0, i32 0
  %34 = load i32, i32* %rows, align 4
  %35 = load %struct.font_bitmap*, %struct.font_bitmap** %bitmap.addr, align 8
  %rows51 = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %35, i32 0, i32 1
  store i32 %34, i32* %rows51, align 4
  %36 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph52 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %36, i32 0, i32 21
  %37 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph52, align 8
  %bitmap53 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %37, i32 0, i32 10
  %width = getelementptr inbounds %struct.FT_Bitmap_, %struct.FT_Bitmap_* %bitmap53, i32 0, i32 1
  %38 = load i32, i32* %width, align 4
  %39 = load %struct.font_bitmap*, %struct.font_bitmap** %bitmap.addr, align 8
  %width54 = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %39, i32 0, i32 2
  store i32 %38, i32* %width54, align 4
  %40 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph55 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %40, i32 0, i32 21
  %41 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph55, align 8
  %bitmap56 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %41, i32 0, i32 10
  %pitch = getelementptr inbounds %struct.FT_Bitmap_, %struct.FT_Bitmap_* %bitmap56, i32 0, i32 2
  %42 = load i32, i32* %pitch, align 4
  %43 = load %struct.font_bitmap*, %struct.font_bitmap** %bitmap.addr, align 8
  %pitch57 = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %43, i32 0, i32 3
  store i32 %42, i32* %pitch57, align 4
  %44 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph58 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %44, i32 0, i32 21
  %45 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph58, align 8
  %bitmap59 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %45, i32 0, i32 10
  %buffer = getelementptr inbounds %struct.FT_Bitmap_, %struct.FT_Bitmap_* %bitmap59, i32 0, i32 3
  %46 = load i8*, i8** %buffer, align 8
  %47 = load %struct.font_bitmap*, %struct.font_bitmap** %bitmap.addr, align 8
  %buffer60 = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %47, i32 0, i32 4
  store i8* %46, i8** %buffer60, align 8
  %48 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph61 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %48, i32 0, i32 21
  %49 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph61, align 8
  %bitmap_left = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %49, i32 0, i32 11
  %50 = load i32, i32* %bitmap_left, align 4
  %51 = load %struct.font_bitmap*, %struct.font_bitmap** %bitmap.addr, align 8
  %left = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %51, i32 0, i32 5
  store i32 %50, i32* %left, align 4
  %52 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph62 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %52, i32 0, i32 21
  %53 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph62, align 8
  %bitmap_top = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %53, i32 0, i32 12
  %54 = load i32, i32* %bitmap_top, align 4
  %55 = load %struct.font_bitmap*, %struct.font_bitmap** %bitmap.addr, align 8
  %top = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %55, i32 0, i32 6
  store i32 %54, i32* %top, align 4
  %56 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph63 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %56, i32 0, i32 21
  %57 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph63, align 8
  %metrics = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %57, i32 0, i32 5
  %horiAdvance = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %metrics, i32 0, i32 4
  %58 = load i64, i64* %horiAdvance, align 8
  %shr = ashr i64 %58, 6
  %conv64 = trunc i64 %shr to i32
  %59 = load %struct.font_bitmap*, %struct.font_bitmap** %bitmap.addr, align 8
  %advance = getelementptr inbounds %struct.font_bitmap, %struct.font_bitmap* %59, i32 0, i32 7
  store i32 %conv64, i32* %advance, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.47, %if.then.11, %if.then.6
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @ftfont_anchor_point(%struct.font* %font, i32 %code, i32 %idx, i32* %x, i32* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.font*, align 8
  %code.addr = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %ftfont_info = alloca %struct.ftfont_info*, align 8
  %ft_face = alloca %struct.FT_FaceRec_*, align 8
  store %struct.font* %font, %struct.font** %font.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %idx, i32* %idx.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load %struct.font*, %struct.font** %font.addr, align 8
  %1 = bitcast %struct.font* %0 to %struct.ftfont_info*
  store %struct.ftfont_info* %1, %struct.ftfont_info** %ftfont_info, align 8
  %2 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %ft_size = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %2, i32 0, i32 1
  %3 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %ft_size, align 8
  %face = getelementptr inbounds %struct.FT_SizeRec_, %struct.FT_SizeRec_* %3, i32 0, i32 0
  %4 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %face, align 8
  store %struct.FT_FaceRec_* %4, %struct.FT_FaceRec_** %ft_face, align 8
  %5 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %ft_size1 = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %5, i32 0, i32 1
  %6 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %ft_size1, align 8
  %7 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %size = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %7, i32 0, i32 22
  %8 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %size, align 8
  %cmp = icmp ne %struct.FT_SizeRec_* %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %ft_size2 = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %9, i32 0, i32 1
  %10 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %ft_size2, align 8
  %call = call i32 @FT_Activate_Size(%struct.FT_SizeRec_* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %12 = load i32, i32* %code.addr, align 4
  %call3 = call i32 @FT_Load_Glyph(%struct.FT_FaceRec_* %11, i32 %12, i32 0)
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %13 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %13, i32 0, i32 21
  %14 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph, align 8
  %format = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %14, i32 0, i32 9
  %15 = load i32, i32* %format, align 4
  %cmp7 = icmp ne i32 %15, 1869968492
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %16 = load i32, i32* %idx.addr, align 4
  %17 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph10 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %17, i32 0, i32 21
  %18 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph10, align 8
  %outline = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %18, i32 0, i32 13
  %n_points = getelementptr inbounds %struct.FT_Outline_, %struct.FT_Outline_* %outline, i32 0, i32 1
  %19 = load i16, i16* %n_points, align 2
  %conv = sext i16 %19 to i32
  %cmp11 = icmp sge i32 %16, %conv
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %20 = load i32, i32* %idx.addr, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph15 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %21, i32 0, i32 21
  %22 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph15, align 8
  %outline16 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %22, i32 0, i32 13
  %points = getelementptr inbounds %struct.FT_Outline_, %struct.FT_Outline_* %outline16, i32 0, i32 2
  %23 = load %struct.FT_Vector_*, %struct.FT_Vector_** %points, align 8
  %arrayidx = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %23, i64 %idxprom
  %x17 = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %arrayidx, i32 0, i32 0
  %24 = load i64, i64* %x17, align 8
  %conv18 = trunc i64 %24 to i32
  %25 = load i32*, i32** %x.addr, align 8
  store i32 %conv18, i32* %25, align 4
  %26 = load i32, i32* %idx.addr, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph20 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %27, i32 0, i32 21
  %28 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph20, align 8
  %outline21 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %28, i32 0, i32 13
  %points22 = getelementptr inbounds %struct.FT_Outline_, %struct.FT_Outline_* %outline21, i32 0, i32 2
  %29 = load %struct.FT_Vector_*, %struct.FT_Vector_** %points22, align 8
  %arrayidx23 = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %29, i64 %idxprom19
  %y24 = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %arrayidx23, i32 0, i32 1
  %30 = load i64, i64* %y24, align 8
  %conv25 = trunc i64 %30 to i32
  %31 = load i32*, i32** %y.addr, align 8
  store i32 %conv25, i32* %31, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then.8, %if.then.5
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal void @ftfont_filter_properties(i64 %font, i64 %alist) #0 {
entry:
  %font.addr = alloca i64, align 8
  %alist.addr = alloca i64, align 8
  store i64 %font, i64* %font.addr, align 8
  store i64 %alist, i64* %alist.addr, align 8
  %0 = load i64, i64* %font.addr, align 8
  %1 = load i64, i64* %alist.addr, align 8
  call void @font_filter_properties(i64 %0, i64 %1, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @ftfont_booleans, i32 0, i32 0), i8** getelementptr inbounds ([28 x i8*], [28 x i8*]* @ftfont_non_booleans, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @ftfont_combining_capability(%struct.font* %font) #0 {
entry:
  %font.addr = alloca %struct.font*, align 8
  store %struct.font* %font, %struct.font** %font.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @ftfont_open2(%struct.frame* %f, i64 %entity, i32 %pixel_size, i64 %font_object) #0 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct.frame*, align 8
  %entity.addr = alloca i64, align 8
  %pixel_size.addr = alloca i32, align 4
  %font_object.addr = alloca i64, align 8
  %ftfont_info = alloca %struct.ftfont_info*, align 8
  %font = alloca %struct.font*, align 8
  %cache_data = alloca %struct.ftfont_cache_data*, align 8
  %ft_face = alloca %struct.FT_FaceRec_*, align 8
  %ft_size = alloca %struct.FT_SizeRec_*, align 8
  %size = alloca i32, align 4
  %val = alloca i64, align 8
  %filename = alloca i64, align 8
  %idx = alloca i64, align 8
  %cache = alloca i64, align 8
  %scalable = alloca i8, align 1
  %spacing = alloca i32, align 4
  %i = alloca i32, align 4
  %upEM = alloca double, align 8
  %n = alloca i32, align 4
  %this_width = alloca i32, align 4
  store %struct.frame* %f, %struct.frame** %f.addr, align 8
  store i64 %entity, i64* %entity.addr, align 8
  store i32 %pixel_size, i32* %pixel_size.addr, align 4
  store i64 %font_object, i64* %font_object.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 45)
  %0 = load i64, i64* %entity.addr, align 8
  %call1 = call i64 @AREF(i64 %0, i64 12)
  %call2 = call i64 @assq_no_quit(i64 %call, i64 %call1)
  store i64 %call2, i64* %val, align 8
  %1 = load i64, i64* %val, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call4, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %val, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %5 = load i64, i64* %cdr, align 8
  store i64 %5, i64* %val, align 8
  %6 = load i64, i64* %entity.addr, align 8
  %call5 = call i64 @ftfont_lookup_cache(i64 %6, i32 0)
  store i64 %call5, i64* %cache, align 8
  %7 = load i64, i64* %cache, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp7 = icmp eq i64 %7, %call6
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %8 = load i64, i64* %val, align 8
  %sub12 = sub nsw i64 %8, 3
  %9 = inttoptr i64 %sub12 to i8*
  %10 = bitcast i8* %9 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %10, i32 0, i32 0
  %11 = load i64, i64* %car, align 8
  store i64 %11, i64* %filename, align 8
  %12 = load i64, i64* %val, align 8
  %sub13 = sub nsw i64 %12, 3
  %13 = inttoptr i64 %sub13 to i8*
  %14 = bitcast i8* %13 to %struct.Lisp_Cons*
  %u14 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %14, i32 0, i32 1
  %cdr15 = bitcast %union.anon* %u14 to i64*
  %15 = load i64, i64* %cdr15, align 8
  store i64 %15, i64* %idx, align 8
  %16 = load i64, i64* %cache, align 8
  %sub16 = sub nsw i64 %16, 3
  %17 = inttoptr i64 %sub16 to i8*
  %18 = bitcast i8* %17 to %struct.Lisp_Cons*
  %u17 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %18, i32 0, i32 1
  %cdr18 = bitcast %union.anon* %u17 to i64*
  %19 = load i64, i64* %cdr18, align 8
  store i64 %19, i64* %val, align 8
  %20 = load i64, i64* %cache, align 8
  %sub19 = sub nsw i64 %20, 3
  %21 = inttoptr i64 %sub19 to i8*
  %22 = bitcast i8* %21 to %struct.Lisp_Cons*
  %u20 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %22, i32 0, i32 1
  %cdr21 = bitcast %union.anon* %u20 to i64*
  %23 = load i64, i64* %cdr21, align 8
  %call22 = call i8* @XSAVE_POINTER(i64 %23, i32 0)
  %24 = bitcast i8* %call22 to %struct.ftfont_cache_data*
  store %struct.ftfont_cache_data* %24, %struct.ftfont_cache_data** %cache_data, align 8
  %25 = load %struct.ftfont_cache_data*, %struct.ftfont_cache_data** %cache_data, align 8
  %ft_face23 = getelementptr inbounds %struct.ftfont_cache_data, %struct.ftfont_cache_data* %25, i32 0, i32 0
  %26 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face23, align 8
  store %struct.FT_FaceRec_* %26, %struct.FT_FaceRec_** %ft_face, align 8
  %27 = load i64, i64* %val, align 8
  %call24 = call i64 @XSAVE_INTEGER(i64 %27, i32 1)
  %cmp25 = icmp sgt i64 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.41

if.then.27:                                       ; preds = %if.end.11
  %28 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %call28 = call i32 @FT_New_Size(%struct.FT_FaceRec_* %28, %struct.FT_SizeRec_** %ft_size)
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.then.27
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call32, i64* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.27
  %29 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %ft_size, align 8
  %call34 = call i32 @FT_Activate_Size(%struct.FT_SizeRec_* %29)
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.33
  %30 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %ft_size, align 8
  %call38 = call i32 @FT_Done_Size(%struct.FT_SizeRec_* %30)
  %call39 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call39, i64* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.33
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.11
  %31 = load i64, i64* %val, align 8
  %32 = load i64, i64* %val, align 8
  %call42 = call i64 @XSAVE_INTEGER(i64 %32, i32 1)
  %add = add nsw i64 %call42, 1
  call void @set_save_integer(i64 %31, i32 1, i64 %add)
  %33 = load i64, i64* %entity.addr, align 8
  %call43 = call i64 @AREF(i64 %33, i64 8)
  %shr = ashr i64 %call43, 2
  %conv44 = trunc i64 %shr to i32
  store i32 %conv44, i32* %size, align 4
  %34 = load i32, i32* %size, align 4
  %cmp45 = icmp eq i32 %34, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.41
  %35 = load i32, i32* %pixel_size.addr, align 4
  store i32 %35, i32* %size, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.41
  %36 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %37 = load i32, i32* %size, align 4
  %38 = load i32, i32* %size, align 4
  %call49 = call i32 @FT_Set_Pixel_Sizes(%struct.FT_FaceRec_* %36, i32 %37, i32 %38)
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.60

if.then.52:                                       ; preds = %if.end.48
  %39 = load i64, i64* %val, align 8
  %call53 = call i64 @XSAVE_INTEGER(i64 %39, i32 1)
  %cmp54 = icmp eq i64 %call53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.then.52
  %40 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %call57 = call i32 @FT_Done_Face(%struct.FT_FaceRec_* %40)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.then.52
  %call59 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call59, i64* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.48
  %41 = load i64, i64* %font_object.addr, align 8
  %42 = load i64, i64* %filename, align 8
  call void @ASET(i64 %41, i64 16, i64 %42)
  %43 = load i64, i64* %font_object.addr, align 8
  %call61 = call %struct.font* @XFONT_OBJECT(i64 %43)
  store %struct.font* %call61, %struct.font** %font, align 8
  %44 = load %struct.font*, %struct.font** %font, align 8
  %45 = bitcast %struct.font* %44 to %struct.ftfont_info*
  store %struct.ftfont_info* %45, %struct.ftfont_info** %ftfont_info, align 8
  %46 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %size62 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %46, i32 0, i32 22
  %47 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %size62, align 8
  %48 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %ft_size63 = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %48, i32 0, i32 1
  store %struct.FT_SizeRec_* %47, %struct.FT_SizeRec_** %ft_size63, align 8
  %49 = load i64, i64* %idx, align 8
  %shr64 = ashr i64 %49, 2
  %conv65 = trunc i64 %shr64 to i32
  %50 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %index = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %50, i32 0, i32 2
  store i32 %conv65, i32* %index, align 4
  %51 = load %struct.ftfont_info*, %struct.ftfont_info** %ftfont_info, align 8
  %matrix = getelementptr inbounds %struct.ftfont_info, %struct.ftfont_info* %51, i32 0, i32 3
  %xx = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %matrix, i32 0, i32 0
  store i64 0, i64* %xx, align 8
  %52 = load i32, i32* %size, align 4
  %53 = load %struct.font*, %struct.font** %font, align 8
  %pixel_size66 = getelementptr inbounds %struct.font, %struct.font* %53, i32 0, i32 4
  store i32 %52, i32* %pixel_size66, align 4
  %54 = load %struct.font*, %struct.font** %font, align 8
  %driver = getelementptr inbounds %struct.font, %struct.font* %54, i32 0, i32 18
  store %struct.font_driver* bitcast ({ i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }* @ftfont_driver to %struct.font_driver*), %struct.font_driver** %driver, align 8
  %55 = load %struct.font*, %struct.font** %font, align 8
  %repertory_charset = getelementptr inbounds %struct.font, %struct.font* %55, i32 0, i32 17
  store i32 -1, i32* %repertory_charset, align 4
  %56 = load %struct.font*, %struct.font** %font, align 8
  %encoding_charset = getelementptr inbounds %struct.font, %struct.font* %56, i32 0, i32 16
  store i32 -1, i32* %encoding_charset, align 4
  %57 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %units_per_EM = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %57, i32 0, i32 13
  %58 = load i16, i16* %units_per_EM, align 2
  %conv67 = uitofp i16 %58 to double
  store double %conv67, double* %upEM, align 8
  %59 = load i64, i64* %entity.addr, align 8
  %call68 = call i64 @AREF(i64 %59, i64 11)
  %and69 = and i64 %call68, 7
  %conv70 = trunc i64 %and69 to i32
  %and71 = and i32 %conv70, -5
  %cmp72 = icmp eq i32 %and71, 2
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.60
  %60 = load i64, i64* %entity.addr, align 8
  %call74 = call i64 @AREF(i64 %60, i64 11)
  %shr75 = ashr i64 %call74, 2
  %cmp76 = icmp eq i64 %shr75, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.60
  %61 = phi i1 [ false, %if.end.60 ], [ %cmp76, %land.rhs ]
  %frombool = zext i1 %61 to i8
  store i8 %frombool, i8* %scalable, align 1
  %62 = load i8, i8* %scalable, align 1
  %tobool = trunc i8 %62 to i1
  br i1 %tobool, label %if.then.78, label %if.else

if.then.78:                                       ; preds = %land.end
  %63 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %ascender = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %63, i32 0, i32 14
  %64 = load i16, i16* %ascender, align 2
  %conv79 = sext i16 %64 to i32
  %65 = load i32, i32* %size, align 4
  %mul = mul i32 %conv79, %65
  %conv80 = uitofp i32 %mul to double
  %66 = load double, double* %upEM, align 8
  %div = fdiv double %conv80, %66
  %add81 = fadd double %div, 5.000000e-01
  %conv82 = fptosi double %add81 to i32
  %67 = load %struct.font*, %struct.font** %font, align 8
  %ascent = getelementptr inbounds %struct.font, %struct.font* %67, i32 0, i32 8
  store i32 %conv82, i32* %ascent, align 4
  %68 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %descender = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %68, i32 0, i32 15
  %69 = load i16, i16* %descender, align 2
  %conv83 = sext i16 %69 to i32
  %sub84 = sub nsw i32 0, %conv83
  %70 = load i32, i32* %size, align 4
  %mul85 = mul i32 %sub84, %70
  %conv86 = uitofp i32 %mul85 to double
  %71 = load double, double* %upEM, align 8
  %div87 = fdiv double %conv86, %71
  %add88 = fadd double %div87, 5.000000e-01
  %conv89 = fptosi double %add88 to i32
  %72 = load %struct.font*, %struct.font** %font, align 8
  %descent = getelementptr inbounds %struct.font, %struct.font* %72, i32 0, i32 9
  store i32 %conv89, i32* %descent, align 4
  %73 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %height = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %73, i32 0, i32 16
  %74 = load i16, i16* %height, align 2
  %conv90 = sext i16 %74 to i32
  %75 = load i32, i32* %size, align 4
  %mul91 = mul i32 %conv90, %75
  %conv92 = uitofp i32 %mul91 to double
  %76 = load double, double* %upEM, align 8
  %div93 = fdiv double %conv92, %76
  %add94 = fadd double %div93, 5.000000e-01
  %conv95 = fptosi double %add94 to i32
  %77 = load %struct.font*, %struct.font** %font, align 8
  %height96 = getelementptr inbounds %struct.font, %struct.font* %77, i32 0, i32 5
  store i32 %conv95, i32* %height96, align 4
  br label %if.end.115

if.else:                                          ; preds = %land.end
  %78 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %size97 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %78, i32 0, i32 22
  %79 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %size97, align 8
  %metrics = getelementptr inbounds %struct.FT_SizeRec_, %struct.FT_SizeRec_* %79, i32 0, i32 2
  %ascender98 = getelementptr inbounds %struct.FT_Size_Metrics_, %struct.FT_Size_Metrics_* %metrics, i32 0, i32 4
  %80 = load i64, i64* %ascender98, align 8
  %shr99 = ashr i64 %80, 6
  %conv100 = trunc i64 %shr99 to i32
  %81 = load %struct.font*, %struct.font** %font, align 8
  %ascent101 = getelementptr inbounds %struct.font, %struct.font* %81, i32 0, i32 8
  store i32 %conv100, i32* %ascent101, align 4
  %82 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %size102 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %82, i32 0, i32 22
  %83 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %size102, align 8
  %metrics103 = getelementptr inbounds %struct.FT_SizeRec_, %struct.FT_SizeRec_* %83, i32 0, i32 2
  %descender104 = getelementptr inbounds %struct.FT_Size_Metrics_, %struct.FT_Size_Metrics_* %metrics103, i32 0, i32 5
  %84 = load i64, i64* %descender104, align 8
  %sub105 = sub nsw i64 0, %84
  %shr106 = ashr i64 %sub105, 6
  %conv107 = trunc i64 %shr106 to i32
  %85 = load %struct.font*, %struct.font** %font, align 8
  %descent108 = getelementptr inbounds %struct.font, %struct.font* %85, i32 0, i32 9
  store i32 %conv107, i32* %descent108, align 4
  %86 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %size109 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %86, i32 0, i32 22
  %87 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %size109, align 8
  %metrics110 = getelementptr inbounds %struct.FT_SizeRec_, %struct.FT_SizeRec_* %87, i32 0, i32 2
  %height111 = getelementptr inbounds %struct.FT_Size_Metrics_, %struct.FT_Size_Metrics_* %metrics110, i32 0, i32 6
  %88 = load i64, i64* %height111, align 8
  %shr112 = ashr i64 %88, 6
  %conv113 = trunc i64 %shr112 to i32
  %89 = load %struct.font*, %struct.font** %font, align 8
  %height114 = getelementptr inbounds %struct.font, %struct.font* %89, i32 0, i32 5
  store i32 %conv113, i32* %height114, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.else, %if.then.78
  %90 = load i64, i64* %entity.addr, align 8
  %call116 = call i64 @AREF(i64 %90, i64 10)
  %and117 = and i64 %call116, 7
  %conv118 = trunc i64 %and117 to i32
  %and119 = and i32 %conv118, -5
  %cmp120 = icmp eq i32 %and119, 2
  br i1 %cmp120, label %if.then.122, label %if.else.126

if.then.122:                                      ; preds = %if.end.115
  %91 = load i64, i64* %entity.addr, align 8
  %call123 = call i64 @AREF(i64 %91, i64 10)
  %shr124 = ashr i64 %call123, 2
  %conv125 = trunc i64 %shr124 to i32
  store i32 %conv125, i32* %spacing, align 4
  br label %if.end.127

if.else.126:                                      ; preds = %if.end.115
  store i32 0, i32* %spacing, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.126, %if.then.122
  %92 = load i32, i32* %spacing, align 4
  %cmp128 = icmp ne i32 %92, 0
  br i1 %cmp128, label %land.lhs.true, label %if.else.145

land.lhs.true:                                    ; preds = %if.end.127
  %93 = load i32, i32* %spacing, align 4
  %cmp130 = icmp ne i32 %93, 90
  br i1 %cmp130, label %if.then.132, label %if.else.145

if.then.132:                                      ; preds = %land.lhs.true
  %94 = load i8, i8* %scalable, align 1
  %tobool133 = trunc i8 %94 to i1
  br i1 %tobool133, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.132
  %95 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %max_advance_width = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %95, i32 0, i32 17
  %96 = load i16, i16* %max_advance_width, align 2
  %conv135 = sext i16 %96 to i32
  %97 = load i32, i32* %size, align 4
  %mul136 = mul i32 %conv135, %97
  %conv137 = uitofp i32 %mul136 to double
  %98 = load double, double* %upEM, align 8
  %div138 = fdiv double %conv137, %98
  %add139 = fadd double %div138, 5.000000e-01
  br label %cond.end

cond.false:                                       ; preds = %if.then.132
  %99 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %size140 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %99, i32 0, i32 22
  %100 = load %struct.FT_SizeRec_*, %struct.FT_SizeRec_** %size140, align 8
  %metrics141 = getelementptr inbounds %struct.FT_SizeRec_, %struct.FT_SizeRec_* %100, i32 0, i32 2
  %max_advance = getelementptr inbounds %struct.FT_Size_Metrics_, %struct.FT_Size_Metrics_* %metrics141, i32 0, i32 7
  %101 = load i64, i64* %max_advance, align 8
  %shr142 = ashr i64 %101, 6
  %conv143 = sitofp i64 %shr142 to double
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add139, %cond.true ], [ %conv143, %cond.false ]
  %conv144 = fptosi double %cond to i32
  %102 = load %struct.font*, %struct.font** %font, align 8
  %space_width = getelementptr inbounds %struct.font, %struct.font* %102, i32 0, i32 6
  store i32 %conv144, i32* %space_width, align 4
  %103 = load %struct.font*, %struct.font** %font, align 8
  %average_width = getelementptr inbounds %struct.font, %struct.font* %103, i32 0, i32 7
  store i32 %conv144, i32* %average_width, align 4
  %104 = load %struct.font*, %struct.font** %font, align 8
  %min_width = getelementptr inbounds %struct.font, %struct.font* %104, i32 0, i32 2
  store i32 %conv144, i32* %min_width, align 4
  br label %if.end.185

if.else.145:                                      ; preds = %land.lhs.true, %if.end.127
  %105 = load %struct.font*, %struct.font** %font, align 8
  %space_width146 = getelementptr inbounds %struct.font, %struct.font* %105, i32 0, i32 6
  store i32 0, i32* %space_width146, align 4
  %106 = load %struct.font*, %struct.font** %font, align 8
  %average_width147 = getelementptr inbounds %struct.font, %struct.font* %106, i32 0, i32 7
  store i32 0, i32* %average_width147, align 4
  %107 = load %struct.font*, %struct.font** %font, align 8
  %min_width148 = getelementptr inbounds %struct.font, %struct.font* %107, i32 0, i32 2
  store i32 0, i32* %min_width148, align 4
  store i32 32, i32* %i, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.145
  %108 = load i32, i32* %i, align 4
  %cmp149 = icmp slt i32 %108, 127
  br i1 %cmp149, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %109 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %110 = load i32, i32* %i, align 4
  %conv151 = sext i32 %110 to i64
  %call152 = call i32 @FT_Load_Char(%struct.FT_FaceRec_* %109, i64 %conv151, i32 0)
  %cmp153 = icmp eq i32 %call152, 0
  br i1 %cmp153, label %if.then.155, label %if.end.177

if.then.155:                                      ; preds = %for.body
  %111 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %glyph = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %111, i32 0, i32 21
  %112 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph, align 8
  %metrics156 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %112, i32 0, i32 5
  %horiAdvance = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %metrics156, i32 0, i32 4
  %113 = load i64, i64* %horiAdvance, align 8
  %shr157 = ashr i64 %113, 6
  %conv158 = trunc i64 %shr157 to i32
  store i32 %conv158, i32* %this_width, align 4
  %114 = load i32, i32* %this_width, align 4
  %cmp159 = icmp sgt i32 %114, 0
  br i1 %cmp159, label %land.lhs.true.161, label %if.end.169

land.lhs.true.161:                                ; preds = %if.then.155
  %115 = load %struct.font*, %struct.font** %font, align 8
  %min_width162 = getelementptr inbounds %struct.font, %struct.font* %115, i32 0, i32 2
  %116 = load i32, i32* %min_width162, align 4
  %tobool163 = icmp ne i32 %116, 0
  br i1 %tobool163, label %lor.lhs.false, label %if.then.167

lor.lhs.false:                                    ; preds = %land.lhs.true.161
  %117 = load %struct.font*, %struct.font** %font, align 8
  %min_width164 = getelementptr inbounds %struct.font, %struct.font* %117, i32 0, i32 2
  %118 = load i32, i32* %min_width164, align 4
  %119 = load i32, i32* %this_width, align 4
  %cmp165 = icmp sgt i32 %118, %119
  br i1 %cmp165, label %if.then.167, label %if.end.169

if.then.167:                                      ; preds = %lor.lhs.false, %land.lhs.true.161
  %120 = load i32, i32* %this_width, align 4
  %121 = load %struct.font*, %struct.font** %font, align 8
  %min_width168 = getelementptr inbounds %struct.font, %struct.font* %121, i32 0, i32 2
  store i32 %120, i32* %min_width168, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.167, %lor.lhs.false, %if.then.155
  %122 = load i32, i32* %i, align 4
  %cmp170 = icmp eq i32 %122, 32
  br i1 %cmp170, label %if.then.172, label %if.end.174

if.then.172:                                      ; preds = %if.end.169
  %123 = load i32, i32* %this_width, align 4
  %124 = load %struct.font*, %struct.font** %font, align 8
  %space_width173 = getelementptr inbounds %struct.font, %struct.font* %124, i32 0, i32 6
  store i32 %123, i32* %space_width173, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.172, %if.end.169
  %125 = load i32, i32* %this_width, align 4
  %126 = load %struct.font*, %struct.font** %font, align 8
  %average_width175 = getelementptr inbounds %struct.font, %struct.font* %126, i32 0, i32 7
  %127 = load i32, i32* %average_width175, align 4
  %add176 = add nsw i32 %127, %125
  store i32 %add176, i32* %average_width175, align 4
  %128 = load i32, i32* %n, align 4
  %inc = add nsw i32 %128, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.174, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.177
  %129 = load i32, i32* %i, align 4
  %inc178 = add nsw i32 %129, 1
  store i32 %inc178, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %130 = load i32, i32* %n, align 4
  %cmp179 = icmp sgt i32 %130, 0
  br i1 %cmp179, label %if.then.181, label %if.end.184

if.then.181:                                      ; preds = %for.end
  %131 = load i32, i32* %n, align 4
  %132 = load %struct.font*, %struct.font** %font, align 8
  %average_width182 = getelementptr inbounds %struct.font, %struct.font* %132, i32 0, i32 7
  %133 = load i32, i32* %average_width182, align 4
  %div183 = sdiv i32 %133, %131
  store i32 %div183, i32* %average_width182, align 4
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.181, %for.end
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %cond.end
  %134 = load %struct.font*, %struct.font** %font, align 8
  %baseline_offset = getelementptr inbounds %struct.font, %struct.font* %134, i32 0, i32 13
  store i32 0, i32* %baseline_offset, align 4
  %135 = load %struct.font*, %struct.font** %font, align 8
  %relative_compose = getelementptr inbounds %struct.font, %struct.font* %135, i32 0, i32 14
  store i32 0, i32* %relative_compose, align 4
  %136 = load %struct.font*, %struct.font** %font, align 8
  %default_ascent = getelementptr inbounds %struct.font, %struct.font* %136, i32 0, i32 15
  store i32 0, i32* %default_ascent, align 4
  %137 = load %struct.font*, %struct.font** %font, align 8
  %vertical_centering = getelementptr inbounds %struct.font, %struct.font* %137, i32 0, i32 12
  store i8 0, i8* %vertical_centering, align 1
  %138 = load i8, i8* %scalable, align 1
  %tobool186 = trunc i8 %138 to i1
  br i1 %tobool186, label %if.then.187, label %if.else.203

if.then.187:                                      ; preds = %if.end.185
  %139 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %underline_position = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %139, i32 0, i32 19
  %140 = load i16, i16* %underline_position, align 2
  %conv188 = sext i16 %140 to i32
  %sub189 = sub nsw i32 0, %conv188
  %141 = load i32, i32* %size, align 4
  %mul190 = mul i32 %sub189, %141
  %conv191 = uitofp i32 %mul190 to double
  %142 = load double, double* %upEM, align 8
  %div192 = fdiv double %conv191, %142
  %add193 = fadd double %div192, 5.000000e-01
  %conv194 = fptosi double %add193 to i32
  %143 = load %struct.font*, %struct.font** %font, align 8
  %underline_position195 = getelementptr inbounds %struct.font, %struct.font* %143, i32 0, i32 11
  store i32 %conv194, i32* %underline_position195, align 4
  %144 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %underline_thickness = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %144, i32 0, i32 20
  %145 = load i16, i16* %underline_thickness, align 2
  %conv196 = sext i16 %145 to i32
  %146 = load i32, i32* %size, align 4
  %mul197 = mul i32 %conv196, %146
  %conv198 = uitofp i32 %mul197 to double
  %147 = load double, double* %upEM, align 8
  %div199 = fdiv double %conv198, %147
  %add200 = fadd double %div199, 5.000000e-01
  %conv201 = fptosi double %add200 to i32
  %148 = load %struct.font*, %struct.font** %font, align 8
  %underline_thickness202 = getelementptr inbounds %struct.font, %struct.font* %148, i32 0, i32 10
  store i32 %conv201, i32* %underline_thickness202, align 4
  br label %if.end.206

if.else.203:                                      ; preds = %if.end.185
  %149 = load %struct.font*, %struct.font** %font, align 8
  %underline_position204 = getelementptr inbounds %struct.font, %struct.font* %149, i32 0, i32 11
  store i32 -1, i32* %underline_position204, align 4
  %150 = load %struct.font*, %struct.font** %font, align 8
  %underline_thickness205 = getelementptr inbounds %struct.font, %struct.font* %150, i32 0, i32 10
  store i32 0, i32* %underline_thickness205, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.203, %if.then.187
  %151 = load i64, i64* %font_object.addr, align 8
  store i64 %151, i64* %retval
  br label %return

return:                                           ; preds = %if.end.206, %if.end.58, %if.then.37, %if.then.31, %if.then.9, %if.then
  %152 = load i64, i64* %retval
  ret i64 %152
}

declare i64 @assq_no_quit(i64, i64) #1

declare i64 @builtin_lisp_symbol(i32) #1

declare i64 @AREF(i64, i64) #1

declare i64 @XSAVE_INTEGER(i64, i32) #1

declare i32 @FT_New_Size(%struct.FT_FaceRec_*, %struct.FT_SizeRec_**) #1

declare i32 @FT_Activate_Size(%struct.FT_SizeRec_*) #1

declare i32 @FT_Done_Size(%struct.FT_SizeRec_*) #1

declare void @set_save_integer(i64, i32, i64) #1

declare i32 @FT_Set_Pixel_Sizes(%struct.FT_FaceRec_*, i32, i32) #1

declare i32 @FT_Done_Face(%struct.FT_FaceRec_*) #1

declare void @ASET(i64, i64, i64) #1

declare %struct.font* @XFONT_OBJECT(i64) #1

declare i32 @FT_Load_Char(%struct.FT_FaceRec_*, i64, i32) #1

; Function Attrs: nounwind uwtable
define void @syms_of_ftfont() #0 {
entry:
  call void @staticpro(i64* @freetype_font_cache)
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %call1 = call i64 @list1(i64 %call)
  store i64 %call1, i64* @freetype_font_cache, align 8
  call void @staticpro(i64* @ftfont_generic_family_list)
  %call2 = call i64 @builtin_lisp_symbol(i32 681)
  %call3 = call i64 @builtin_lisp_symbol(i32 901)
  %call4 = call i64 @Fcons(i64 %call2, i64 %call3)
  %call5 = call i64 @builtin_lisp_symbol(i32 825)
  %call6 = call i64 @builtin_lisp_symbol(i32 901)
  %call7 = call i64 @Fcons(i64 %call5, i64 %call6)
  %call8 = call i64 @builtin_lisp_symbol(i32 823)
  %call9 = call i64 @builtin_lisp_symbol(i32 901)
  %call10 = call i64 @Fcons(i64 %call8, i64 %call9)
  %call11 = call i64 @list3(i64 %call4, i64 %call7, i64 %call10)
  store i64 %call11, i64* @ftfont_generic_family_list, align 8
  call void @staticpro(i64* @ft_face_cache)
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call12, i64* @ft_face_cache, align 8
  %call13 = call i64 @builtin_lisp_symbol(i32 466)
  store i64 %call13, i64* getelementptr inbounds (%struct.font_driver, %struct.font_driver* bitcast ({ i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }* @ftfont_driver to %struct.font_driver*), i32 0, i32 0), align 8
  call void @register_font_driver(%struct.font_driver* bitcast ({ i64, i8, i64 (%struct.frame*)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*, i64)*, i64 (%struct.frame*)*, void (i64)*, i64 (%struct.frame*, i64, i32)*, void (%struct.font*)*, void (%struct.frame*, %struct.face*)*, void (%struct.frame*, %struct.face*)*, i32 (i64, i32)*, i32 (%struct.font*, i32)*, void (%struct.font*, i32*, i32, %struct.font_metrics*)*, i32 (%struct.glyph_string*, i32, i32, i32, i32, i1)*, i32 (%struct.font*, i32, %struct.font_bitmap*, i32)*, void (%struct.font*, %struct.font_bitmap*)*, i32 (%struct.font*, i32, i32, i32*, i32*)*, i64 (%struct.font*)*, i32 (%struct.font*, i64, i64, i32, i32, i64, i32, i1)*, i32 (%struct.frame*)*, i32 (%struct.frame*)*, i64 (i64)*, i32 (%struct.frame*, %struct.font*)*, i32 (%struct.font*, i32, i32*)*, void (i64, i64)*, i1 (%struct.frame*, i64, i64)*, i64 (%struct.font*)* }* @ftfont_driver to %struct.font_driver*), %struct.frame* null)
  ret void
}

declare void @staticpro(i64*) #1

declare i64 @list1(i64) #1

declare i64 @list3(i64, i64, i64) #1

declare i64 @Fcons(i64, i64) #1

declare void @register_font_driver(%struct.font_driver*, %struct.frame*) #1

declare zeroext i1 @FONT_ENTITY_P(i64) #1

declare i64 @Fgethash(i64, i64, i64) #1

declare i64 @Fmake_hash_table(i64, i64*) #1

declare noalias i8* @xmalloc(i64) #1

declare i64 @make_save_ptr_int(i8*, i64) #1

declare i64 @Fputhash(i64, i64, i64) #1

declare i8* @SSDATA(i64) #1

declare i32 @FT_Init_FreeType(%struct.FT_LibraryRec_**) #1

declare i32 @FT_New_Face(%struct.FT_LibraryRec_*, i8*, i64, %struct.FT_FaceRec_**) #1

declare %struct._FcPattern* @FcPatternBuild(%struct._FcPattern*, ...) #1

declare %struct._FcObjectSet* @FcObjectSetBuild(i8*, ...) #1

declare %struct._FcFontSet* @FcFontList(%struct._FcConfig*, %struct._FcPattern*, %struct._FcObjectSet*) #1

declare i32 @FcPatternGetCharSet(%struct._FcPattern*, i8*, i32, %struct._FcCharSet**) #1

declare %struct._FcCharSet* @FcCharSetCopy(%struct._FcCharSet*) #1

declare %struct._FcCharSet* @FcCharSetCreate() #1

declare void @FcFontSetDestroy(%struct._FcFontSet*) #1

declare void @FcObjectSetDestroy(%struct._FcObjectSet*) #1

declare void @FcPatternDestroy(%struct._FcPattern*) #1

declare i32 @FcInit() #1

; Function Attrs: nounwind uwtable
define internal %struct._FcPattern* @ftfont_spec_pattern(i64 %spec, i8* %otlayout, %struct.OpenTypeSpec** %otspec, i8** %langname) #0 {
entry:
  %retval = alloca %struct._FcPattern*, align 8
  %spec.addr = alloca i64, align 8
  %otlayout.addr = alloca i8*, align 8
  %otspec.addr = alloca %struct.OpenTypeSpec**, align 8
  %langname.addr = alloca i8**, align 8
  %tmp = alloca i64, align 8
  %extra = alloca i64, align 8
  %pattern = alloca %struct._FcPattern*, align 8
  %charset = alloca %struct._FcCharSet*, align 8
  %langset = alloca %struct._FcLangSet*, align 8
  %n = alloca i32, align 4
  %dpi = alloca i32, align 4
  %scalable = alloca i32, align 4
  %script = alloca i64, align 8
  %registry = alloca i64, align 8
  %fc_charset_idx = alloca i32, align 4
  %lang = alloca i8*, align 8
  %key = alloca i64, align 8
  %val = alloca i64, align 8
  %chars = alloca i64, align 8
  store i64 %spec, i64* %spec.addr, align 8
  store i8* %otlayout, i8** %otlayout.addr, align 8
  store %struct.OpenTypeSpec** %otspec, %struct.OpenTypeSpec*** %otspec.addr, align 8
  store i8** %langname, i8*** %langname.addr, align 8
  store %struct._FcPattern* null, %struct._FcPattern** %pattern, align 8
  store %struct._FcCharSet* null, %struct._FcCharSet** %charset, align 8
  store %struct._FcLangSet* null, %struct._FcLangSet** %langset, align 8
  store i32 -1, i32* %dpi, align 4
  store i32 -1, i32* %scalable, align 4
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %script, align 8
  %0 = load i64, i64* %spec.addr, align 8
  %call11 = call i64 @AREF(i64 %0, i64 6)
  %and = and i64 %call11, 7
  %conv = trunc i64 %and to i32
  %and12 = and i32 %conv, -5
  %cmp = icmp eq i32 %and12, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %spec.addr, align 8
  %call14 = call i64 @AREF(i64 %1, i64 6)
  %shr = ashr i64 %call14, 2
  %shr15 = ashr i64 %shr, 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr15, %cond.true ], [ -1, %cond.false ]
  %conv16 = trunc i64 %cond to i32
  store i32 %conv16, i32* %n, align 4
  %cmp17 = icmp sge i32 %conv16, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %2 = load i32, i32* %n, align 4
  %cmp19 = icmp slt i32 %2, 100
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._FcPattern* null, %struct._FcPattern** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %cond.end
  %3 = load i64, i64* %spec.addr, align 8
  %call21 = call i64 @AREF(i64 %3, i64 9)
  %and22 = and i64 %call21, 7
  %conv23 = trunc i64 %and22 to i32
  %and24 = and i32 %conv23, -5
  %cmp25 = icmp eq i32 %and24, 2
  br i1 %cmp25, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.end
  %4 = load i64, i64* %spec.addr, align 8
  %call28 = call i64 @AREF(i64 %4, i64 9)
  %shr29 = ashr i64 %call28, 2
  %conv30 = trunc i64 %shr29 to i32
  store i32 %conv30, i32* %dpi, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.end
  %5 = load i64, i64* %spec.addr, align 8
  %call32 = call i64 @AREF(i64 %5, i64 11)
  %and33 = and i64 %call32, 7
  %conv34 = trunc i64 %and33 to i32
  %and35 = and i32 %conv34, -5
  %cmp36 = icmp eq i32 %and35, 2
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.44

land.lhs.true.38:                                 ; preds = %if.end.31
  %6 = load i64, i64* %spec.addr, align 8
  %call39 = call i64 @AREF(i64 %6, i64 11)
  %shr40 = ashr i64 %call39, 2
  %cmp41 = icmp eq i64 %shr40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true.38
  store i32 1, i32* %scalable, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %land.lhs.true.38, %if.end.31
  %7 = load i64, i64* %spec.addr, align 8
  %call45 = call i64 @AREF(i64 %7, i64 4)
  store i64 %call45, i64* %registry, align 8
  %8 = load i64, i64* %registry, align 8
  %call46 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp47 = icmp eq i64 %8, %call46
  br i1 %cmp47, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.44
  %9 = load i64, i64* %registry, align 8
  %call49 = call i64 @builtin_lisp_symbol(i32 182)
  %cmp50 = icmp eq i64 %9, %call49
  br i1 %cmp50, label %if.then.60, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false
  %10 = load i64, i64* %registry, align 8
  %call53 = call i64 @builtin_lisp_symbol(i32 578)
  %cmp54 = icmp eq i64 %10, %call53
  br i1 %cmp54, label %if.then.60, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.52
  %11 = load i64, i64* %registry, align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 972)
  %cmp58 = icmp eq i64 %11, %call57
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %lor.lhs.false.56, %lor.lhs.false.52, %lor.lhs.false, %if.end.44
  store i32 -1, i32* %fc_charset_idx, align 4
  br label %if.end.77

if.else:                                          ; preds = %lor.lhs.false.56
  %12 = load i64, i64* %registry, align 8
  %call62 = call i32 @ftfont_get_charset(i64 %12)
  store i32 %call62, i32* %fc_charset_idx, align 4
  %13 = load i32, i32* %fc_charset_idx, align 4
  %cmp63 = icmp slt i32 %13, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.else
  store %struct._FcPattern* null, %struct._FcPattern** %retval
  br label %return

if.end.66:                                        ; preds = %if.else
  %14 = load i32, i32* %fc_charset_idx, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [38 x %struct.anon.6], [38 x %struct.anon.6]* @fc_charset_table, i32 0, i64 %idxprom
  %fc_charset = getelementptr inbounds %struct.anon.6, %struct.anon.6* %arrayidx, i32 0, i32 3
  %15 = load %struct._FcCharSet*, %struct._FcCharSet** %fc_charset, align 8
  store %struct._FcCharSet* %15, %struct._FcCharSet** %charset, align 8
  %16 = load i32, i32* %fc_charset_idx, align 4
  %idxprom67 = sext i32 %16 to i64
  %arrayidx68 = getelementptr inbounds [38 x %struct.anon.6], [38 x %struct.anon.6]* @fc_charset_table, i32 0, i64 %idxprom67
  %lang69 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %arrayidx68, i32 0, i32 2
  %17 = load i8*, i8** %lang69, align 8
  %18 = load i8**, i8*** %langname.addr, align 8
  store i8* %17, i8** %18, align 8
  %19 = load i8**, i8*** %langname.addr, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %lang, align 8
  %21 = load i8*, i8** %lang, align 8
  %tobool = icmp ne i8* %21, null
  br i1 %tobool, label %if.then.70, label %if.end.76

if.then.70:                                       ; preds = %if.end.66
  %call71 = call %struct._FcLangSet* @FcLangSetCreate()
  store %struct._FcLangSet* %call71, %struct._FcLangSet** %langset, align 8
  %22 = load %struct._FcLangSet*, %struct._FcLangSet** %langset, align 8
  %tobool72 = icmp ne %struct._FcLangSet* %22, null
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %if.then.70
  br label %err

if.end.74:                                        ; preds = %if.then.70
  %23 = load %struct._FcLangSet*, %struct._FcLangSet** %langset, align 8
  %24 = load i8*, i8** %lang, align 8
  %call75 = call i32 @FcLangSetAdd(%struct._FcLangSet* %23, i8* %24)
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.74, %if.end.66
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.60
  %25 = load i8*, i8** %otlayout.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %arrayidx78, align 1
  %26 = load i64, i64* %spec.addr, align 8
  %call79 = call i64 @AREF(i64 %26, i64 12)
  store i64 %call79, i64* %extra, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.210, %if.end.77
  %27 = load i64, i64* %extra, align 8
  %and80 = and i64 %27, 7
  %conv81 = trunc i64 %and80 to i32
  %cmp82 = icmp eq i32 %conv81, 3
  br i1 %cmp82, label %for.body, label %for.end.214

for.body:                                         ; preds = %for.cond
  %28 = load i64, i64* %extra, align 8
  %sub = sub nsw i64 %28, 3
  %29 = inttoptr i64 %sub to i8*
  %30 = bitcast i8* %29 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %30, i32 0, i32 0
  %31 = load i64, i64* %car, align 8
  %sub86 = sub nsw i64 %31, 3
  %32 = inttoptr i64 %sub86 to i8*
  %33 = bitcast i8* %32 to %struct.Lisp_Cons*
  %car87 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %33, i32 0, i32 0
  %34 = load i64, i64* %car87, align 8
  store i64 %34, i64* %key, align 8
  %35 = load i64, i64* %extra, align 8
  %sub88 = sub nsw i64 %35, 3
  %36 = inttoptr i64 %sub88 to i8*
  %37 = bitcast i8* %36 to %struct.Lisp_Cons*
  %car89 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %37, i32 0, i32 0
  %38 = load i64, i64* %car89, align 8
  %sub90 = sub nsw i64 %38, 3
  %39 = inttoptr i64 %sub90 to i8*
  %40 = bitcast i8* %39 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %40, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %41 = load i64, i64* %cdr, align 8
  store i64 %41, i64* %val, align 8
  %42 = load i64, i64* %key, align 8
  %call91 = call i64 @builtin_lisp_symbol(i32 35)
  %cmp92 = icmp eq i64 %42, %call91
  br i1 %cmp92, label %if.then.94, label %if.else.104

if.then.94:                                       ; preds = %for.body
  %43 = load i64, i64* %val, align 8
  %and95 = and i64 %43, 7
  %conv96 = trunc i64 %and95 to i32
  %and97 = and i32 %conv96, -5
  %cmp98 = icmp eq i32 %and97, 2
  br i1 %cmp98, label %if.then.100, label %if.end.103

if.then.100:                                      ; preds = %if.then.94
  %44 = load i64, i64* %val, align 8
  %shr101 = ashr i64 %44, 2
  %conv102 = trunc i64 %shr101 to i32
  store i32 %conv102, i32* %dpi, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.100, %if.then.94
  br label %if.end.209

if.else.104:                                      ; preds = %for.body
  %45 = load i64, i64* %key, align 8
  %call105 = call i64 @builtin_lisp_symbol(i32 73)
  %cmp106 = icmp eq i64 %45, %call105
  br i1 %cmp106, label %if.then.108, label %if.else.153

if.then.108:                                      ; preds = %if.else.104
  %46 = load %struct._FcLangSet*, %struct._FcLangSet** %langset, align 8
  %tobool109 = icmp ne %struct._FcLangSet* %46, null
  br i1 %tobool109, label %if.end.112, label %if.then.110

if.then.110:                                      ; preds = %if.then.108
  %call111 = call %struct._FcLangSet* @FcLangSetCreate()
  store %struct._FcLangSet* %call111, %struct._FcLangSet** %langset, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.then.108
  %47 = load %struct._FcLangSet*, %struct._FcLangSet** %langset, align 8
  %tobool113 = icmp ne %struct._FcLangSet* %47, null
  br i1 %tobool113, label %if.end.115, label %if.then.114

if.then.114:                                      ; preds = %if.end.112
  br label %err

if.end.115:                                       ; preds = %if.end.112
  %48 = load i64, i64* %val, align 8
  %and116 = and i64 %48, 7
  %conv117 = trunc i64 %and116 to i32
  %cmp118 = icmp eq i32 %conv117, 0
  br i1 %cmp118, label %if.then.120, label %if.else.127

if.then.120:                                      ; preds = %if.end.115
  %49 = load %struct._FcLangSet*, %struct._FcLangSet** %langset, align 8
  %50 = load i64, i64* %val, align 8
  %call121 = call i64 @SYMBOL_NAME(i64 %50)
  %call122 = call i8* @SDATA(i64 %call121)
  %call123 = call i32 @FcLangSetAdd(%struct._FcLangSet* %49, i8* %call122)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.end.126, label %if.then.125

if.then.125:                                      ; preds = %if.then.120
  br label %err

if.end.126:                                       ; preds = %if.then.120
  br label %if.end.152

if.else.127:                                      ; preds = %if.end.115
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc, %if.else.127
  %51 = load i64, i64* %val, align 8
  %and129 = and i64 %51, 7
  %conv130 = trunc i64 %and129 to i32
  %cmp131 = icmp eq i32 %conv130, 3
  br i1 %cmp131, label %for.body.133, label %for.end

for.body.133:                                     ; preds = %for.cond.128
  %52 = load i64, i64* %val, align 8
  %sub134 = sub nsw i64 %52, 3
  %53 = inttoptr i64 %sub134 to i8*
  %54 = bitcast i8* %53 to %struct.Lisp_Cons*
  %car135 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %54, i32 0, i32 0
  %55 = load i64, i64* %car135, align 8
  %and136 = and i64 %55, 7
  %conv137 = trunc i64 %and136 to i32
  %cmp138 = icmp eq i32 %conv137, 0
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.148

land.lhs.true.140:                                ; preds = %for.body.133
  %56 = load %struct._FcLangSet*, %struct._FcLangSet** %langset, align 8
  %57 = load i64, i64* %val, align 8
  %sub141 = sub nsw i64 %57, 3
  %58 = inttoptr i64 %sub141 to i8*
  %59 = bitcast i8* %58 to %struct.Lisp_Cons*
  %car142 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %59, i32 0, i32 0
  %60 = load i64, i64* %car142, align 8
  %call143 = call i64 @SYMBOL_NAME(i64 %60)
  %call144 = call i8* @SDATA(i64 %call143)
  %call145 = call i32 @FcLangSetAdd(%struct._FcLangSet* %56, i8* %call144)
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.end.148, label %if.then.147

if.then.147:                                      ; preds = %land.lhs.true.140
  br label %err

if.end.148:                                       ; preds = %land.lhs.true.140, %for.body.133
  br label %for.inc

for.inc:                                          ; preds = %if.end.148
  %61 = load i64, i64* %val, align 8
  %sub149 = sub nsw i64 %61, 3
  %62 = inttoptr i64 %sub149 to i8*
  %63 = bitcast i8* %62 to %struct.Lisp_Cons*
  %u150 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %63, i32 0, i32 1
  %cdr151 = bitcast %union.anon* %u150 to i64*
  %64 = load i64, i64* %cdr151, align 8
  store i64 %64, i64* %val, align 8
  br label %for.cond.128

for.end:                                          ; preds = %for.cond.128
  br label %if.end.152

if.end.152:                                       ; preds = %for.end, %if.end.126
  br label %if.end.208

if.else.153:                                      ; preds = %if.else.104
  %65 = load i64, i64* %key, align 8
  %call154 = call i64 @builtin_lisp_symbol(i32 89)
  %cmp155 = icmp eq i64 %65, %call154
  br i1 %cmp155, label %if.then.157, label %if.else.192

if.then.157:                                      ; preds = %if.else.153
  %66 = load i64, i64* %val, align 8
  %and158 = and i64 %66, 7
  %conv159 = trunc i64 %and158 to i32
  %cmp160 = icmp eq i32 %conv159, 3
  br i1 %cmp160, label %if.then.162, label %if.end.191

if.then.162:                                      ; preds = %if.then.157
  %67 = load i64, i64* %val, align 8
  %call163 = call %struct.OpenTypeSpec* @ftfont_get_open_type_spec(i64 %67)
  %68 = load %struct.OpenTypeSpec**, %struct.OpenTypeSpec*** %otspec.addr, align 8
  store %struct.OpenTypeSpec* %call163, %struct.OpenTypeSpec** %68, align 8
  %69 = load %struct.OpenTypeSpec**, %struct.OpenTypeSpec*** %otspec.addr, align 8
  %70 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %69, align 8
  %tobool164 = icmp ne %struct.OpenTypeSpec* %70, null
  br i1 %tobool164, label %if.end.166, label %if.then.165

if.then.165:                                      ; preds = %if.then.162
  store %struct._FcPattern* null, %struct._FcPattern** %retval
  br label %return

if.end.166:                                       ; preds = %if.then.162
  %71 = load i8*, i8** %otlayout.addr, align 8
  %call167 = call i8* @strcpy(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)) #5
  br label %do.body

do.body:                                          ; preds = %if.end.166
  %72 = load %struct.OpenTypeSpec**, %struct.OpenTypeSpec*** %otspec.addr, align 8
  %73 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %72, align 8
  %script_tag = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %73, i32 0, i32 1
  %74 = load i32, i32* %script_tag, align 4
  %shr168 = lshr i32 %74, 24
  %conv169 = trunc i32 %shr168 to i8
  %75 = load i8*, i8** %otlayout.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %75, i64 9
  %arrayidx170 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  store i8 %conv169, i8* %arrayidx170, align 1
  %76 = load %struct.OpenTypeSpec**, %struct.OpenTypeSpec*** %otspec.addr, align 8
  %77 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %76, align 8
  %script_tag171 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %77, i32 0, i32 1
  %78 = load i32, i32* %script_tag171, align 4
  %shr172 = lshr i32 %78, 16
  %and173 = and i32 %shr172, 255
  %conv174 = trunc i32 %and173 to i8
  %79 = load i8*, i8** %otlayout.addr, align 8
  %add.ptr175 = getelementptr inbounds i8, i8* %79, i64 9
  %arrayidx176 = getelementptr inbounds i8, i8* %add.ptr175, i64 1
  store i8 %conv174, i8* %arrayidx176, align 1
  %80 = load %struct.OpenTypeSpec**, %struct.OpenTypeSpec*** %otspec.addr, align 8
  %81 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %80, align 8
  %script_tag177 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %81, i32 0, i32 1
  %82 = load i32, i32* %script_tag177, align 4
  %shr178 = lshr i32 %82, 8
  %and179 = and i32 %shr178, 255
  %conv180 = trunc i32 %and179 to i8
  %83 = load i8*, i8** %otlayout.addr, align 8
  %add.ptr181 = getelementptr inbounds i8, i8* %83, i64 9
  %arrayidx182 = getelementptr inbounds i8, i8* %add.ptr181, i64 2
  store i8 %conv180, i8* %arrayidx182, align 1
  %84 = load %struct.OpenTypeSpec**, %struct.OpenTypeSpec*** %otspec.addr, align 8
  %85 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %84, align 8
  %script_tag183 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %85, i32 0, i32 1
  %86 = load i32, i32* %script_tag183, align 4
  %and184 = and i32 %86, 255
  %conv185 = trunc i32 %and184 to i8
  %87 = load i8*, i8** %otlayout.addr, align 8
  %add.ptr186 = getelementptr inbounds i8, i8* %87, i64 9
  %arrayidx187 = getelementptr inbounds i8, i8* %add.ptr186, i64 3
  store i8 %conv185, i8* %arrayidx187, align 1
  %88 = load i8*, i8** %otlayout.addr, align 8
  %add.ptr188 = getelementptr inbounds i8, i8* %88, i64 9
  %arrayidx189 = getelementptr inbounds i8, i8* %add.ptr188, i64 4
  store i8 0, i8* %arrayidx189, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %89 = load %struct.OpenTypeSpec**, %struct.OpenTypeSpec*** %otspec.addr, align 8
  %90 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %89, align 8
  %script190 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %90, i32 0, i32 0
  %91 = load i64, i64* %script190, align 8
  store i64 %91, i64* %script, align 8
  br label %if.end.191

if.end.191:                                       ; preds = %do.end, %if.then.157
  br label %if.end.207

if.else.192:                                      ; preds = %if.else.153
  %92 = load i64, i64* %key, align 8
  %call193 = call i64 @builtin_lisp_symbol(i32 114)
  %cmp194 = icmp eq i64 %92, %call193
  br i1 %cmp194, label %if.then.196, label %if.else.197

if.then.196:                                      ; preds = %if.else.192
  %93 = load i64, i64* %val, align 8
  store i64 %93, i64* %script, align 8
  br label %if.end.206

if.else.197:                                      ; preds = %if.else.192
  %94 = load i64, i64* %key, align 8
  %call198 = call i64 @builtin_lisp_symbol(i32 113)
  %cmp199 = icmp eq i64 %94, %call198
  br i1 %cmp199, label %if.then.201, label %if.end.205

if.then.201:                                      ; preds = %if.else.197
  %95 = load i64, i64* %val, align 8
  %call202 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp203 = icmp eq i64 %95, %call202
  %lnot = xor i1 %cmp203, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %scalable, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.201, %if.else.197
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.196
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.end.191
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.end.152
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.103
  br label %for.inc.210

for.inc.210:                                      ; preds = %if.end.209
  %96 = load i64, i64* %extra, align 8
  %sub211 = sub nsw i64 %96, 3
  %97 = inttoptr i64 %sub211 to i8*
  %98 = bitcast i8* %97 to %struct.Lisp_Cons*
  %u212 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %98, i32 0, i32 1
  %cdr213 = bitcast %union.anon* %u212 to i64*
  %99 = load i64, i64* %cdr213, align 8
  store i64 %99, i64* %extra, align 8
  br label %for.cond

for.end.214:                                      ; preds = %for.cond
  %100 = load i64, i64* %script, align 8
  %call215 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp216 = icmp eq i64 %100, %call215
  br i1 %cmp216, label %if.end.272, label %land.lhs.true.218

land.lhs.true.218:                                ; preds = %for.end.214
  %101 = load %struct._FcCharSet*, %struct._FcCharSet** %charset, align 8
  %tobool219 = icmp ne %struct._FcCharSet* %101, null
  br i1 %tobool219, label %if.end.272, label %if.then.220

if.then.220:                                      ; preds = %land.lhs.true.218
  %102 = load i64, i64* %script, align 8
  %103 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 260), align 8
  %call222 = call i64 @assq_no_quit(i64 %102, i64 %103)
  store i64 %call222, i64* %chars, align 8
  %104 = load i64, i64* %chars, align 8
  %and223 = and i64 %104, 7
  %conv224 = trunc i64 %and223 to i32
  %cmp225 = icmp eq i32 %conv224, 3
  br i1 %cmp225, label %land.lhs.true.227, label %if.end.271

land.lhs.true.227:                                ; preds = %if.then.220
  %105 = load i64, i64* %chars, align 8
  %call228 = call i64 @CDR(i64 %105)
  %and229 = and i64 %call228, 7
  %conv230 = trunc i64 %and229 to i32
  %cmp231 = icmp eq i32 %conv230, 3
  br i1 %cmp231, label %if.then.233, label %if.end.271

if.then.233:                                      ; preds = %land.lhs.true.227
  %call234 = call %struct._FcCharSet* @FcCharSetCreate()
  store %struct._FcCharSet* %call234, %struct._FcCharSet** %charset, align 8
  %106 = load %struct._FcCharSet*, %struct._FcCharSet** %charset, align 8
  %tobool235 = icmp ne %struct._FcCharSet* %106, null
  br i1 %tobool235, label %if.end.237, label %if.then.236

if.then.236:                                      ; preds = %if.then.233
  br label %err

if.end.237:                                       ; preds = %if.then.233
  %107 = load i64, i64* %chars, align 8
  %sub238 = sub nsw i64 %107, 3
  %108 = inttoptr i64 %sub238 to i8*
  %109 = bitcast i8* %108 to %struct.Lisp_Cons*
  %u239 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %109, i32 0, i32 1
  %cdr240 = bitcast %union.anon* %u239 to i64*
  %110 = load i64, i64* %cdr240, align 8
  store i64 %110, i64* %chars, align 8
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.266, %if.end.237
  %111 = load i64, i64* %chars, align 8
  %and242 = and i64 %111, 7
  %conv243 = trunc i64 %and242 to i32
  %cmp244 = icmp eq i32 %conv243, 3
  br i1 %cmp244, label %for.body.246, label %for.end.270

for.body.246:                                     ; preds = %for.cond.241
  %112 = load i64, i64* %chars, align 8
  %sub247 = sub nsw i64 %112, 3
  %113 = inttoptr i64 %sub247 to i8*
  %114 = bitcast i8* %113 to %struct.Lisp_Cons*
  %car248 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %114, i32 0, i32 0
  %115 = load i64, i64* %car248, align 8
  %call249 = call zeroext i1 @NATNUMP(i64 %115)
  br i1 %call249, label %land.lhs.true.251, label %if.end.265

land.lhs.true.251:                                ; preds = %for.body.246
  %116 = load i64, i64* %chars, align 8
  %sub252 = sub nsw i64 %116, 3
  %117 = inttoptr i64 %sub252 to i8*
  %118 = bitcast i8* %117 to %struct.Lisp_Cons*
  %car253 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %118, i32 0, i32 0
  %119 = load i64, i64* %car253, align 8
  %shr254 = ashr i64 %119, 2
  %cmp255 = icmp sle i64 %shr254, 4194303
  br i1 %cmp255, label %land.lhs.true.257, label %if.end.265

land.lhs.true.257:                                ; preds = %land.lhs.true.251
  %120 = load %struct._FcCharSet*, %struct._FcCharSet** %charset, align 8
  %121 = load i64, i64* %chars, align 8
  %sub258 = sub nsw i64 %121, 3
  %122 = inttoptr i64 %sub258 to i8*
  %123 = bitcast i8* %122 to %struct.Lisp_Cons*
  %car259 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %123, i32 0, i32 0
  %124 = load i64, i64* %car259, align 8
  %shr260 = ashr i64 %124, 2
  %conv261 = trunc i64 %shr260 to i32
  %call262 = call i32 @FcCharSetAddChar(%struct._FcCharSet* %120, i32 %conv261)
  %tobool263 = icmp ne i32 %call262, 0
  br i1 %tobool263, label %if.end.265, label %if.then.264

if.then.264:                                      ; preds = %land.lhs.true.257
  br label %err

if.end.265:                                       ; preds = %land.lhs.true.257, %land.lhs.true.251, %for.body.246
  br label %for.inc.266

for.inc.266:                                      ; preds = %if.end.265
  %125 = load i64, i64* %chars, align 8
  %sub267 = sub nsw i64 %125, 3
  %126 = inttoptr i64 %sub267 to i8*
  %127 = bitcast i8* %126 to %struct.Lisp_Cons*
  %u268 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %127, i32 0, i32 1
  %cdr269 = bitcast %union.anon* %u268 to i64*
  %128 = load i64, i64* %cdr269, align 8
  store i64 %128, i64* %chars, align 8
  br label %for.cond.241

for.end.270:                                      ; preds = %for.cond.241
  br label %if.end.271

if.end.271:                                       ; preds = %for.end.270, %land.lhs.true.227, %if.then.220
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %land.lhs.true.218, %for.end.214
  %call273 = call %struct._FcPattern* @FcPatternCreate()
  store %struct._FcPattern* %call273, %struct._FcPattern** %pattern, align 8
  %129 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %tobool274 = icmp ne %struct._FcPattern* %129, null
  br i1 %tobool274, label %if.end.276, label %if.then.275

if.then.275:                                      ; preds = %if.end.272
  br label %err

if.end.276:                                       ; preds = %if.end.272
  %130 = load i64, i64* %spec.addr, align 8
  %call277 = call i64 @AREF(i64 %130, i64 1)
  store i64 %call277, i64* %tmp, align 8
  %131 = load i64, i64* %tmp, align 8
  %call278 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp279 = icmp eq i64 %131, %call278
  br i1 %cmp279, label %if.end.287, label %land.lhs.true.281

land.lhs.true.281:                                ; preds = %if.end.276
  %132 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %133 = load i64, i64* %tmp, align 8
  %call282 = call i64 @SYMBOL_NAME(i64 %133)
  %call283 = call i8* @SDATA(i64 %call282)
  %call284 = call i32 @FcPatternAddString(%struct._FcPattern* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* %call283)
  %tobool285 = icmp ne i32 %call284, 0
  br i1 %tobool285, label %if.end.287, label %if.then.286

if.then.286:                                      ; preds = %land.lhs.true.281
  br label %err

if.end.287:                                       ; preds = %land.lhs.true.281, %if.end.276
  %134 = load i64, i64* %spec.addr, align 8
  %call288 = call i64 @AREF(i64 %134, i64 2)
  store i64 %call288, i64* %tmp, align 8
  %135 = load i64, i64* %tmp, align 8
  %call289 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp290 = icmp eq i64 %135, %call289
  br i1 %cmp290, label %if.end.298, label %land.lhs.true.292

land.lhs.true.292:                                ; preds = %if.end.287
  %136 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %137 = load i64, i64* %tmp, align 8
  %call293 = call i64 @SYMBOL_NAME(i64 %137)
  %call294 = call i8* @SDATA(i64 %call293)
  %call295 = call i32 @FcPatternAddString(%struct._FcPattern* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %call294)
  %tobool296 = icmp ne i32 %call295, 0
  br i1 %tobool296, label %if.end.298, label %if.then.297

if.then.297:                                      ; preds = %land.lhs.true.292
  br label %err

if.end.298:                                       ; preds = %land.lhs.true.292, %if.end.287
  %138 = load %struct._FcCharSet*, %struct._FcCharSet** %charset, align 8
  %tobool299 = icmp ne %struct._FcCharSet* %138, null
  br i1 %tobool299, label %land.lhs.true.300, label %if.end.304

land.lhs.true.300:                                ; preds = %if.end.298
  %139 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %140 = load %struct._FcCharSet*, %struct._FcCharSet** %charset, align 8
  %call301 = call i32 @FcPatternAddCharSet(%struct._FcPattern* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct._FcCharSet* %140)
  %tobool302 = icmp ne i32 %call301, 0
  br i1 %tobool302, label %if.end.304, label %if.then.303

if.then.303:                                      ; preds = %land.lhs.true.300
  br label %err

if.end.304:                                       ; preds = %land.lhs.true.300, %if.end.298
  %141 = load %struct._FcLangSet*, %struct._FcLangSet** %langset, align 8
  %tobool305 = icmp ne %struct._FcLangSet* %141, null
  br i1 %tobool305, label %land.lhs.true.306, label %if.end.310

land.lhs.true.306:                                ; preds = %if.end.304
  %142 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %143 = load %struct._FcLangSet*, %struct._FcLangSet** %langset, align 8
  %call307 = call i32 @FcPatternAddLangSet(%struct._FcPattern* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), %struct._FcLangSet* %143)
  %tobool308 = icmp ne i32 %call307, 0
  br i1 %tobool308, label %if.end.310, label %if.then.309

if.then.309:                                      ; preds = %land.lhs.true.306
  br label %err

if.end.310:                                       ; preds = %land.lhs.true.306, %if.end.304
  %144 = load i32, i32* %dpi, align 4
  %cmp311 = icmp sge i32 %144, 0
  br i1 %cmp311, label %land.lhs.true.313, label %if.end.318

land.lhs.true.313:                                ; preds = %if.end.310
  %145 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %146 = load i32, i32* %dpi, align 4
  %conv314 = sitofp i32 %146 to double
  %call315 = call i32 @FcPatternAddDouble(%struct._FcPattern* %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), double %conv314)
  %tobool316 = icmp ne i32 %call315, 0
  br i1 %tobool316, label %if.end.318, label %if.then.317

if.then.317:                                      ; preds = %land.lhs.true.313
  br label %err

if.end.318:                                       ; preds = %land.lhs.true.313, %if.end.310
  %147 = load i32, i32* %scalable, align 4
  %cmp319 = icmp sge i32 %147, 0
  br i1 %cmp319, label %land.lhs.true.321, label %if.end.327

land.lhs.true.321:                                ; preds = %if.end.318
  %148 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %149 = load i32, i32* %scalable, align 4
  %tobool322 = icmp ne i32 %149, 0
  %cond323 = select i1 %tobool322, i32 1, i32 0
  %call324 = call i32 @FcPatternAddBool(%struct._FcPattern* %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %cond323)
  %tobool325 = icmp ne i32 %call324, 0
  br i1 %tobool325, label %if.end.327, label %if.then.326

if.then.326:                                      ; preds = %land.lhs.true.321
  br label %err

if.end.327:                                       ; preds = %land.lhs.true.321, %if.end.318
  br label %finish

err:                                              ; preds = %if.then.326, %if.then.317, %if.then.309, %if.then.303, %if.then.297, %if.then.286, %if.then.275, %if.then.264, %if.then.236, %if.then.147, %if.then.125, %if.then.114, %if.then.73
  %150 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  %tobool328 = icmp ne %struct._FcPattern* %150, null
  br i1 %tobool328, label %if.then.329, label %if.end.330

if.then.329:                                      ; preds = %err
  %151 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  call void @FcPatternDestroy(%struct._FcPattern* %151)
  store %struct._FcPattern* null, %struct._FcPattern** %pattern, align 8
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.329, %err
  %152 = load %struct.OpenTypeSpec**, %struct.OpenTypeSpec*** %otspec.addr, align 8
  %153 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %152, align 8
  %tobool331 = icmp ne %struct.OpenTypeSpec* %153, null
  br i1 %tobool331, label %if.then.332, label %if.end.347

if.then.332:                                      ; preds = %if.end.330
  %154 = load %struct.OpenTypeSpec**, %struct.OpenTypeSpec*** %otspec.addr, align 8
  %155 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %154, align 8
  %nfeatures = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %155, i32 0, i32 3
  %arrayidx333 = getelementptr inbounds [2 x i32], [2 x i32]* %nfeatures, i32 0, i64 0
  %156 = load i32, i32* %arrayidx333, align 4
  %cmp334 = icmp sgt i32 %156, 0
  br i1 %cmp334, label %if.then.336, label %if.end.338

if.then.336:                                      ; preds = %if.then.332
  %157 = load %struct.OpenTypeSpec**, %struct.OpenTypeSpec*** %otspec.addr, align 8
  %158 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %157, align 8
  %features = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %158, i32 0, i32 4
  %arrayidx337 = getelementptr inbounds [2 x i32*], [2 x i32*]* %features, i32 0, i64 0
  %159 = load i32*, i32** %arrayidx337, align 8
  %160 = bitcast i32* %159 to i8*
  call void @free(i8* %160) #5
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.336, %if.then.332
  %161 = load %struct.OpenTypeSpec**, %struct.OpenTypeSpec*** %otspec.addr, align 8
  %162 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %161, align 8
  %nfeatures339 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %162, i32 0, i32 3
  %arrayidx340 = getelementptr inbounds [2 x i32], [2 x i32]* %nfeatures339, i32 0, i64 1
  %163 = load i32, i32* %arrayidx340, align 4
  %cmp341 = icmp sgt i32 %163, 0
  br i1 %cmp341, label %if.then.343, label %if.end.346

if.then.343:                                      ; preds = %if.end.338
  %164 = load %struct.OpenTypeSpec**, %struct.OpenTypeSpec*** %otspec.addr, align 8
  %165 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %164, align 8
  %features344 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %165, i32 0, i32 4
  %arrayidx345 = getelementptr inbounds [2 x i32*], [2 x i32*]* %features344, i32 0, i64 1
  %166 = load i32*, i32** %arrayidx345, align 8
  %167 = bitcast i32* %166 to i8*
  call void @free(i8* %167) #5
  br label %if.end.346

if.end.346:                                       ; preds = %if.then.343, %if.end.338
  %168 = load %struct.OpenTypeSpec**, %struct.OpenTypeSpec*** %otspec.addr, align 8
  %169 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %168, align 8
  %170 = bitcast %struct.OpenTypeSpec* %169 to i8*
  call void @free(i8* %170) #5
  %171 = load %struct.OpenTypeSpec**, %struct.OpenTypeSpec*** %otspec.addr, align 8
  store %struct.OpenTypeSpec* null, %struct.OpenTypeSpec** %171, align 8
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.346, %if.end.330
  br label %finish

finish:                                           ; preds = %if.end.347, %if.end.327
  %172 = load %struct._FcLangSet*, %struct._FcLangSet** %langset, align 8
  %tobool348 = icmp ne %struct._FcLangSet* %172, null
  br i1 %tobool348, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %finish
  %173 = load %struct._FcLangSet*, %struct._FcLangSet** %langset, align 8
  call void @FcLangSetDestroy(%struct._FcLangSet* %173)
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.349, %finish
  %174 = load %struct._FcCharSet*, %struct._FcCharSet** %charset, align 8
  %tobool351 = icmp ne %struct._FcCharSet* %174, null
  br i1 %tobool351, label %land.lhs.true.352, label %if.end.356

land.lhs.true.352:                                ; preds = %if.end.350
  %175 = load i32, i32* %fc_charset_idx, align 4
  %cmp353 = icmp slt i32 %175, 0
  br i1 %cmp353, label %if.then.355, label %if.end.356

if.then.355:                                      ; preds = %land.lhs.true.352
  %176 = load %struct._FcCharSet*, %struct._FcCharSet** %charset, align 8
  call void @FcCharSetDestroy(%struct._FcCharSet* %176)
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.355, %land.lhs.true.352, %if.end.350
  %177 = load %struct._FcPattern*, %struct._FcPattern** %pattern, align 8
  store %struct._FcPattern* %177, %struct._FcPattern** %retval
  br label %return

return:                                           ; preds = %if.end.356, %if.then.165, %if.then.65, %if.then
  %178 = load %struct._FcPattern*, %struct._FcPattern** %retval
  ret %struct._FcPattern* %178
}

declare zeroext i1 @VECTORP(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @ftfont_resolve_generic_family(i64 %family, %struct._FcPattern* %pattern) #0 {
entry:
  %retval = alloca i64, align 8
  %family.addr = alloca i64, align 8
  %pattern.addr = alloca %struct._FcPattern*, align 8
  %slot = alloca i64, align 8
  %match = alloca %struct._FcPattern*, align 8
  %result = alloca i32, align 4
  %langset = alloca %struct._FcLangSet*, align 8
  %fam = alloca i8*, align 8
  store i64 %family, i64* %family.addr, align 8
  store %struct._FcPattern* %pattern, %struct._FcPattern** %pattern.addr, align 8
  %0 = load i64, i64* %family.addr, align 8
  %call = call i64 @SYMBOL_NAME(i64 %0)
  %call1 = call i64 @Fdowncase(i64 %call)
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %call3 = call i64 @Fintern(i64 %call1, i64 %call2)
  store i64 %call3, i64* %family.addr, align 8
  %1 = load i64, i64* %family.addr, align 8
  %call4 = call i64 @builtin_lisp_symbol(i32 680)
  %cmp = icmp eq i64 %1, %call4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = call i64 @builtin_lisp_symbol(i32 681)
  store i64 %call5, i64* %family.addr, align 8
  br label %if.end.12

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %family.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 823)
  %cmp7 = icmp eq i64 %2, %call6
  br i1 %cmp7, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i64, i64* %family.addr, align 8
  %call8 = call i64 @builtin_lisp_symbol(i32 824)
  %cmp9 = icmp eq i64 %3, %call8
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %lor.lhs.false, %if.else
  %call11 = call i64 @builtin_lisp_symbol(i32 825)
  store i64 %call11, i64* %family.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %lor.lhs.false
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %4 = load i64, i64* %family.addr, align 8
  %5 = load i64, i64* @ftfont_generic_family_list, align 8
  %call13 = call i64 @assq_no_quit(i64 %4, i64 %5)
  store i64 %call13, i64* %slot, align 8
  %6 = load i64, i64* %slot, align 8
  %and = and i64 %6, 7
  %conv = trunc i64 %and to i32
  %cmp14 = icmp eq i32 %conv, 3
  br i1 %cmp14, label %if.end.18, label %if.then.16

if.then.16:                                       ; preds = %if.end.12
  %call17 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call17, i64* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.12
  %7 = load i64, i64* %slot, align 8
  %sub = sub nsw i64 %7, 3
  %8 = inttoptr i64 %sub to i8*
  %9 = bitcast i8* %8 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %9, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %10 = load i64, i64* %cdr, align 8
  %call19 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp20 = icmp eq i64 %10, %call19
  br i1 %cmp20, label %if.end.26, label %if.then.22

if.then.22:                                       ; preds = %if.end.18
  %11 = load i64, i64* %slot, align 8
  %sub23 = sub nsw i64 %11, 3
  %12 = inttoptr i64 %sub23 to i8*
  %13 = bitcast i8* %12 to %struct.Lisp_Cons*
  %u24 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %13, i32 0, i32 1
  %cdr25 = bitcast %union.anon* %u24 to i64*
  %14 = load i64, i64* %cdr25, align 8
  store i64 %14, i64* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.18
  %15 = load %struct._FcPattern*, %struct._FcPattern** %pattern.addr, align 8
  %call27 = call %struct._FcPattern* @FcPatternDuplicate(%struct._FcPattern* %15)
  store %struct._FcPattern* %call27, %struct._FcPattern** %pattern.addr, align 8
  %16 = load %struct._FcPattern*, %struct._FcPattern** %pattern.addr, align 8
  %tobool = icmp ne %struct._FcPattern* %16, null
  br i1 %tobool, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.26
  br label %err

if.end.29:                                        ; preds = %if.end.26
  %17 = load %struct._FcPattern*, %struct._FcPattern** %pattern.addr, align 8
  %call30 = call i32 @FcPatternDel(%struct._FcPattern* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0))
  %18 = load %struct._FcPattern*, %struct._FcPattern** %pattern.addr, align 8
  %call31 = call i32 @FcPatternDel(%struct._FcPattern* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %19 = load %struct._FcPattern*, %struct._FcPattern** %pattern.addr, align 8
  %20 = load i64, i64* %family.addr, align 8
  %call32 = call i64 @SYMBOL_NAME(i64 %20)
  %call33 = call i8* @SDATA(i64 %call32)
  %call34 = call i32 @FcPatternAddString(%struct._FcPattern* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %call33)
  %21 = load %struct._FcPattern*, %struct._FcPattern** %pattern.addr, align 8
  %call35 = call i32 @FcPatternGetLangSet(%struct._FcPattern* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 0, %struct._FcLangSet** %langset)
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.end.29
  %call39 = call %struct._FcLangSet* @FcLangSetCreate()
  store %struct._FcLangSet* %call39, %struct._FcLangSet** %langset, align 8
  %22 = load %struct._FcLangSet*, %struct._FcLangSet** %langset, align 8
  %call40 = call i32 @FcLangSetAdd(%struct._FcLangSet* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ftfont_resolve_generic_family.lang, i32 0, i32 0))
  %23 = load %struct._FcPattern*, %struct._FcPattern** %pattern.addr, align 8
  %24 = load %struct._FcLangSet*, %struct._FcLangSet** %langset, align 8
  %call41 = call i32 @FcPatternAddLangSet(%struct._FcPattern* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), %struct._FcLangSet* %24)
  %25 = load %struct._FcLangSet*, %struct._FcLangSet** %langset, align 8
  call void @FcLangSetDestroy(%struct._FcLangSet* %25)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %if.end.29
  %26 = load %struct._FcPattern*, %struct._FcPattern** %pattern.addr, align 8
  %call43 = call i32 @FcConfigSubstitute(%struct._FcConfig* null, %struct._FcPattern* %26, i32 0)
  %27 = load %struct._FcPattern*, %struct._FcPattern** %pattern.addr, align 8
  call void @FcDefaultSubstitute(%struct._FcPattern* %27)
  %28 = load %struct._FcPattern*, %struct._FcPattern** %pattern.addr, align 8
  %call44 = call %struct._FcPattern* @FcFontMatch(%struct._FcConfig* null, %struct._FcPattern* %28, i32* %result)
  store %struct._FcPattern* %call44, %struct._FcPattern** %match, align 8
  %29 = load %struct._FcPattern*, %struct._FcPattern** %match, align 8
  %tobool45 = icmp ne %struct._FcPattern* %29, null
  br i1 %tobool45, label %if.then.46, label %if.else.53

if.then.46:                                       ; preds = %if.end.42
  %30 = load %struct._FcPattern*, %struct._FcPattern** %match, align 8
  %call47 = call i32 @FcPatternGetString(%struct._FcPattern* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i8** %fam)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.then.46
  %31 = load i8*, i8** %fam, align 8
  %call51 = call i64 @intern(i8* %31)
  store i64 %call51, i64* %family.addr, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.then.46
  br label %if.end.55

if.else.53:                                       ; preds = %if.end.42
  %call54 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call54, i64* %family.addr, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.53, %if.end.52
  %32 = load i64, i64* %slot, align 8
  %33 = load i64, i64* %family.addr, align 8
  call void @XSETCDR(i64 %32, i64 %33)
  %34 = load %struct._FcPattern*, %struct._FcPattern** %match, align 8
  %tobool56 = icmp ne %struct._FcPattern* %34, null
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  %35 = load %struct._FcPattern*, %struct._FcPattern** %match, align 8
  call void @FcPatternDestroy(%struct._FcPattern* %35)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.55
  br label %err

err:                                              ; preds = %if.end.58, %if.then.28
  %36 = load %struct._FcPattern*, %struct._FcPattern** %pattern.addr, align 8
  %tobool59 = icmp ne %struct._FcPattern* %36, null
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %err
  %37 = load %struct._FcPattern*, %struct._FcPattern** %pattern.addr, align 8
  call void @FcPatternDestroy(%struct._FcPattern* %37)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %err
  %38 = load i64, i64* %family.addr, align 8
  store i64 %38, i64* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.22, %if.then.16
  %39 = load i64, i64* %retval
  ret i64 %39
}

declare i32 @FcPatternDel(%struct._FcPattern*, i8*) #1

declare i32 @FcPatternAddString(%struct._FcPattern*, i8*, i8*) #1

declare i8* @SDATA(i64) #1

declare i64 @SYMBOL_NAME(i64) #1

declare i64 @SBYTES(i64) #1

declare i32 @FcObjectSetAdd(%struct._FcObjectSet*, i8*) #1

declare i32 @FcPatternGetInteger(%struct._FcPattern*, i8*, i32, i32*) #1

declare i32 @FcPatternGetString(%struct._FcPattern*, i8*, i32, i8**) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

declare i64 @ASIZE(i64) #1

declare i32 @FcCharSetHasChar(%struct._FcCharSet*, i32) #1

; Function Attrs: nounwind uwtable
define internal i64 @get_adstyle_property(%struct._FcPattern* %p) #0 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca %struct._FcPattern*, align 8
  %fcstr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %end = alloca i8*, align 8
  %adstyle = alloca i64, align 8
  store %struct._FcPattern* %p, %struct._FcPattern** %p.addr, align 8
  %0 = load %struct._FcPattern*, %struct._FcPattern** %p.addr, align 8
  %call = call i32 @FcPatternGetString(%struct._FcPattern* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 0, i8** %fcstr)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %fcstr, align 8
  %call1 = call i32 @xstrcasecmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0))
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %2 = load i8*, i8** %fcstr, align 8
  %call4 = call i32 @xstrcasecmp(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0))
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %call6 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call6, i64* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  %3 = load %struct._FcPattern*, %struct._FcPattern** %p.addr, align 8
  %call7 = call i32 @FcPatternGetString(%struct._FcPattern* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 0, i8** %fcstr)
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call10, i64* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %4 = load i8*, i8** %fcstr, align 8
  store i8* %4, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  store i8* %5, i8** %end, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %6 = load i8*, i8** %end, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i8*, i8** %end, align 8
  %9 = load i8, i8* %8, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp ne i32 %conv12, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp13, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i8*, i8** %end, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %end, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %12 = load i8*, i8** %str, align 8
  %13 = load i8*, i8** %end, align 8
  %14 = load i8*, i8** %str, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call15 = call zeroext i1 @matching_prefix(i8* %12, i64 %sub.ptr.sub, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0))
  br i1 %call15, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %15 = load i8*, i8** %str, align 8
  %16 = load i8*, i8** %end, align 8
  %17 = load i8*, i8** %str, align 8
  %sub.ptr.lhs.cast17 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast18 = ptrtoint i8* %17 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %call20 = call zeroext i1 @matching_prefix(i8* %15, i64 %sub.ptr.sub19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0))
  br i1 %call20, label %if.then.34, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false
  %18 = load i8*, i8** %str, align 8
  %19 = load i8*, i8** %end, align 8
  %20 = load i8*, i8** %str, align 8
  %sub.ptr.lhs.cast23 = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast24 = ptrtoint i8* %20 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %call26 = call zeroext i1 @matching_prefix(i8* %18, i64 %sub.ptr.sub25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0))
  br i1 %call26, label %if.then.34, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.22
  %21 = load i8*, i8** %str, align 8
  %22 = load i8*, i8** %end, align 8
  %23 = load i8*, i8** %str, align 8
  %sub.ptr.lhs.cast29 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %23 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %call32 = call zeroext i1 @matching_prefix(i8* %21, i64 %sub.ptr.sub31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0))
  br i1 %call32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false.22, %lor.lhs.false, %for.end
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call35, i64* %retval
  br label %return

if.end.36:                                        ; preds = %lor.lhs.false.28
  %24 = load i8*, i8** %str, align 8
  %25 = load i8*, i8** %end, align 8
  %26 = load i8*, i8** %str, align 8
  %sub.ptr.lhs.cast37 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast38 = ptrtoint i8* %26 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  %call40 = call i64 @font_intern_prop(i8* %24, i64 %sub.ptr.sub39, i1 zeroext true)
  store i64 %call40, i64* %adstyle, align 8
  %27 = load i64, i64* %adstyle, align 8
  %call41 = call i32 @font_style_to_value(i32 7, i64 %27, i1 zeroext false)
  %cmp42 = icmp sge i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.36
  %call45 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call45, i64* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.36
  %28 = load i64, i64* %adstyle, align 8
  store i64 %28, i64* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.44, %if.then.34, %if.then.9, %if.then
  %29 = load i64, i64* %retval
  ret i64 %29
}

declare i32 @xstrcasecmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i64 @ftfont_pattern_entity(%struct._FcPattern* %p, i64 %extra) #0 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca %struct._FcPattern*, align 8
  %extra.addr = alloca i64, align 8
  %key = alloca i64, align 8
  %cache = alloca i64, align 8
  %entity = alloca i64, align 8
  %str = alloca i8*, align 8
  %file = alloca i8*, align 8
  %idx = alloca i32, align 4
  %numeric = alloca i32, align 4
  %dbl = alloca double, align 8
  %b = alloca i32, align 4
  %val = alloca i64, align 8
  %i = alloca i32, align 4
  %s = alloca i8*, align 8
  %s38 = alloca i8*, align 8
  %dpi = alloca i32, align 4
  %ft_face = alloca %struct.FT_FaceRec_*, align 8
  %rec = alloca %struct.BDF_PropertyRec_, align 8
  store %struct._FcPattern* %p, %struct._FcPattern** %p.addr, align 8
  store i64 %extra, i64* %extra.addr, align 8
  %0 = load %struct._FcPattern*, %struct._FcPattern** %p.addr, align 8
  %call = call i32 @FcPatternGetString(%struct._FcPattern* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8** %str)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._FcPattern*, %struct._FcPattern** %p.addr, align 8
  %call2 = call i32 @FcPatternGetInteger(%struct._FcPattern* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 0, i32* %idx)
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call5, i64* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %2 = load i8*, i8** %str, align 8
  store i8* %2, i8** %file, align 8
  %3 = load i8*, i8** %file, align 8
  %call7 = call i64 @build_unibyte_string(i8* %3)
  %4 = load i32, i32* %idx, align 4
  %conv = sext i32 %4 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %call8 = call i64 @Fcons(i64 %call7, i64 %add)
  store i64 %call8, i64* %key, align 8
  %5 = load i64, i64* %key, align 8
  %call9 = call i64 @ftfont_lookup_cache(i64 %5, i32 2)
  store i64 %call9, i64* %cache, align 8
  %6 = load i64, i64* %cache, align 8
  %sub = sub nsw i64 %6, 3
  %7 = inttoptr i64 %sub to i8*
  %8 = bitcast i8* %7 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %8, i32 0, i32 0
  %9 = load i64, i64* %car, align 8
  store i64 %9, i64* %entity, align 8
  %10 = load i64, i64* %entity, align 8
  %call10 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp11 = icmp eq i64 %10, %call10
  br i1 %cmp11, label %if.end.23, label %if.then.13

if.then.13:                                       ; preds = %if.end.6
  %call14 = call i64 @font_make_entity()
  store i64 %call14, i64* %val, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %11 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %11, 13
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %val, align 8
  %13 = load i32, i32* %i, align 4
  %conv17 = sext i32 %13 to i64
  %14 = load i64, i64* %entity, align 8
  %15 = load i32, i32* %i, align 4
  %conv18 = sext i32 %15 to i64
  %call19 = call i64 @AREF(i64 %14, i64 %conv18)
  call void @ASET(i64 %12, i64 %conv17, i64 %call19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i64, i64* %val, align 8
  %18 = load i64, i64* %extra.addr, align 8
  %call20 = call i64 @Fcopy_sequence(i64 %18)
  call void @ASET(i64 %17, i64 12, i64 %call20)
  %19 = load i64, i64* %val, align 8
  %call21 = call i64 @builtin_lisp_symbol(i32 45)
  %20 = load i64, i64* %key, align 8
  %call22 = call i64 @font_put_extra(i64 %19, i64 %call21, i64 %20)
  %21 = load i64, i64* %val, align 8
  store i64 %21, i64* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.6
  %call24 = call i64 @font_make_entity()
  store i64 %call24, i64* %entity, align 8
  %22 = load i64, i64* %cache, align 8
  %23 = load i64, i64* %entity, align 8
  call void @XSETCAR(i64 %22, i64 %23)
  %24 = load i64, i64* %entity, align 8
  %call25 = call i64 @builtin_lisp_symbol(i32 466)
  call void @ASET(i64 %24, i64 0, i64 %call25)
  %25 = load i64, i64* %entity, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 578)
  call void @ASET(i64 %25, i64 4, i64 %call26)
  %26 = load %struct._FcPattern*, %struct._FcPattern** %p.addr, align 8
  %call27 = call i32 @FcPatternGetString(%struct._FcPattern* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 0, i8** %str)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.23
  %27 = load i8*, i8** %str, align 8
  store i8* %27, i8** %s, align 8
  %28 = load i64, i64* %entity, align 8
  %29 = load i8*, i8** %s, align 8
  %30 = load i8*, i8** %s, align 8
  %call31 = call i64 @strlen(i8* %30) #4
  %call32 = call i64 @font_intern_prop(i8* %29, i64 %call31, i1 zeroext true)
  call void @ASET(i64 %28, i64 1, i64 %call32)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.23
  %31 = load %struct._FcPattern*, %struct._FcPattern** %p.addr, align 8
  %call34 = call i32 @FcPatternGetString(%struct._FcPattern* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i8** %str)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %if.end.33
  %32 = load i8*, i8** %str, align 8
  store i8* %32, i8** %s38, align 8
  %33 = load i64, i64* %entity, align 8
  %34 = load i8*, i8** %s38, align 8
  %35 = load i8*, i8** %s38, align 8
  %call39 = call i64 @strlen(i8* %35) #4
  %call40 = call i64 @font_intern_prop(i8* %34, i64 %call39, i1 zeroext true)
  call void @ASET(i64 %33, i64 2, i64 %call40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %if.end.33
  %36 = load %struct._FcPattern*, %struct._FcPattern** %p.addr, align 8
  %call42 = call i32 @FcPatternGetInteger(%struct._FcPattern* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 0, i32* %numeric)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.59

if.then.45:                                       ; preds = %if.end.41
  %37 = load i32, i32* %numeric, align 4
  %cmp46 = icmp sge i32 %37, 80
  br i1 %cmp46, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.then.45
  %38 = load i32, i32* %numeric, align 4
  %cmp48 = icmp slt i32 %38, 100
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true
  store i32 100, i32* %numeric, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %land.lhs.true, %if.then.45
  %39 = load i64, i64* %entity, align 8
  %40 = load i32, i32* %numeric, align 4
  %conv52 = sext i32 %40 to i64
  %shl53 = shl i64 %conv52, 2
  %add54 = add i64 %shl53, 2
  %call55 = call i32 @font_style_to_value(i32 5, i64 %add54, i1 zeroext true)
  %conv56 = sext i32 %call55 to i64
  %shl57 = shl i64 %conv56, 2
  %add58 = add i64 %shl57, 2
  call void @ASET(i64 %39, i64 5, i64 %add58)
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.51, %if.end.41
  %41 = load %struct._FcPattern*, %struct._FcPattern** %p.addr, align 8
  %call60 = call i32 @FcPatternGetInteger(%struct._FcPattern* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 0, i32* %numeric)
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.72

if.then.63:                                       ; preds = %if.end.59
  %42 = load i32, i32* %numeric, align 4
  %add64 = add nsw i32 %42, 100
  store i32 %add64, i32* %numeric, align 4
  %43 = load i64, i64* %entity, align 8
  %44 = load i32, i32* %numeric, align 4
  %conv65 = sext i32 %44 to i64
  %shl66 = shl i64 %conv65, 2
  %add67 = add i64 %shl66, 2
  %call68 = call i32 @font_style_to_value(i32 6, i64 %add67, i1 zeroext true)
  %conv69 = sext i32 %call68 to i64
  %shl70 = shl i64 %conv69, 2
  %add71 = add i64 %shl70, 2
  call void @ASET(i64 %43, i64 6, i64 %add71)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.63, %if.end.59
  %45 = load %struct._FcPattern*, %struct._FcPattern** %p.addr, align 8
  %call73 = call i32 @FcPatternGetInteger(%struct._FcPattern* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 0, i32* %numeric)
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.84

if.then.76:                                       ; preds = %if.end.72
  %46 = load i64, i64* %entity, align 8
  %47 = load i32, i32* %numeric, align 4
  %conv77 = sext i32 %47 to i64
  %shl78 = shl i64 %conv77, 2
  %add79 = add i64 %shl78, 2
  %call80 = call i32 @font_style_to_value(i32 7, i64 %add79, i1 zeroext true)
  %conv81 = sext i32 %call80 to i64
  %shl82 = shl i64 %conv81, 2
  %add83 = add i64 %shl82, 2
  call void @ASET(i64 %46, i64 7, i64 %add83)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.76, %if.end.72
  %48 = load %struct._FcPattern*, %struct._FcPattern** %p.addr, align 8
  %call85 = call i32 @FcPatternGetDouble(%struct._FcPattern* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 0, double* %dbl)
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then.88, label %if.else

if.then.88:                                       ; preds = %if.end.84
  %49 = load i64, i64* %entity, align 8
  %50 = load double, double* %dbl, align 8
  %conv89 = fptoui double %50 to i64
  %shl90 = shl i64 %conv89, 2
  %add91 = add i64 %shl90, 2
  call void @ASET(i64 %49, i64 8, i64 %add91)
  br label %if.end.92

if.else:                                          ; preds = %if.end.84
  %51 = load i64, i64* %entity, align 8
  call void @ASET(i64 %51, i64 8, i64 2)
  br label %if.end.92

if.end.92:                                        ; preds = %if.else, %if.then.88
  %52 = load %struct._FcPattern*, %struct._FcPattern** %p.addr, align 8
  %call93 = call i32 @FcPatternGetInteger(%struct._FcPattern* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* %numeric)
  %cmp94 = icmp eq i32 %call93, 0
  br i1 %cmp94, label %if.then.96, label %if.end.100

if.then.96:                                       ; preds = %if.end.92
  %53 = load i64, i64* %entity, align 8
  %54 = load i32, i32* %numeric, align 4
  %conv97 = sext i32 %54 to i64
  %shl98 = shl i64 %conv97, 2
  %add99 = add i64 %shl98, 2
  call void @ASET(i64 %53, i64 10, i64 %add99)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.96, %if.end.92
  %55 = load %struct._FcPattern*, %struct._FcPattern** %p.addr, align 8
  %call101 = call i32 @FcPatternGetDouble(%struct._FcPattern* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 0, double* %dbl)
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.109

if.then.104:                                      ; preds = %if.end.100
  %56 = load double, double* %dbl, align 8
  %conv105 = fptosi double %56 to i32
  store i32 %conv105, i32* %dpi, align 4
  %57 = load i64, i64* %entity, align 8
  %58 = load i32, i32* %dpi, align 4
  %conv106 = sext i32 %58 to i64
  %shl107 = shl i64 %conv106, 2
  %add108 = add i64 %shl107, 2
  call void @ASET(i64 %57, i64 9, i64 %add108)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.104, %if.end.100
  %59 = load %struct._FcPattern*, %struct._FcPattern** %p.addr, align 8
  %call110 = call i32 @FcPatternGetBool(%struct._FcPattern* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 0, i32* %b)
  %cmp111 = icmp eq i32 %call110, 0
  br i1 %cmp111, label %land.lhs.true.113, label %if.else.117

land.lhs.true.113:                                ; preds = %if.end.109
  %60 = load i32, i32* %b, align 4
  %cmp114 = icmp eq i32 %60, 1
  br i1 %cmp114, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %land.lhs.true.113
  %61 = load i64, i64* %entity, align 8
  call void @ASET(i64 %61, i64 8, i64 2)
  %62 = load i64, i64* %entity, align 8
  call void @ASET(i64 %62, i64 11, i64 2)
  br label %if.end.141

if.else.117:                                      ; preds = %land.lhs.true.113, %if.end.109
  %63 = load i64, i64* %entity, align 8
  %64 = load %struct._FcPattern*, %struct._FcPattern** %p.addr, align 8
  %call118 = call i64 @get_adstyle_property(%struct._FcPattern* %64)
  call void @ASET(i64 %63, i64 3, i64 %call118)
  %65 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** @ft_library, align 8
  %tobool = icmp ne %struct.FT_LibraryRec_* %65, null
  br i1 %tobool, label %land.lhs.true.122, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.117
  %call119 = call i32 @FT_Init_FreeType(%struct.FT_LibraryRec_** @ft_library)
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.140

land.lhs.true.122:                                ; preds = %lor.lhs.false, %if.else.117
  %66 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** @ft_library, align 8
  %67 = load i8*, i8** %file, align 8
  %68 = load i32, i32* %idx, align 4
  %conv123 = sext i32 %68 to i64
  %call124 = call i32 @FT_New_Face(%struct.FT_LibraryRec_* %66, i8* %67, i64 %conv123, %struct.FT_FaceRec_** %ft_face)
  %cmp125 = icmp eq i32 %call124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.140

if.then.127:                                      ; preds = %land.lhs.true.122
  %69 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %call128 = call i32 @FT_Get_BDF_Property(%struct.FT_FaceRec_* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0), %struct.BDF_PropertyRec_* %rec)
  %cmp129 = icmp eq i32 %call128, 0
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.138

land.lhs.true.131:                                ; preds = %if.then.127
  %type = getelementptr inbounds %struct.BDF_PropertyRec_, %struct.BDF_PropertyRec_* %rec, i32 0, i32 0
  %70 = load i32, i32* %type, align 4
  %cmp132 = icmp eq i32 %70, 2
  br i1 %cmp132, label %if.then.134, label %if.end.138

if.then.134:                                      ; preds = %land.lhs.true.131
  %71 = load i64, i64* %entity, align 8
  %u = getelementptr inbounds %struct.BDF_PropertyRec_, %struct.BDF_PropertyRec_* %rec, i32 0, i32 1
  %integer = bitcast %union.anon.7* %u to i32*
  %72 = load i32, i32* %integer, align 4
  %conv135 = sext i32 %72 to i64
  %shl136 = shl i64 %conv135, 2
  %add137 = add i64 %shl136, 2
  call void @ASET(i64 %71, i64 11, i64 %add137)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.134, %land.lhs.true.131, %if.then.127
  %73 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8
  %call139 = call i32 @FT_Done_Face(%struct.FT_FaceRec_* %73)
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.138, %land.lhs.true.122, %lor.lhs.false
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.116
  %74 = load i64, i64* %entity, align 8
  %75 = load i64, i64* %extra.addr, align 8
  %call142 = call i64 @Fcopy_sequence(i64 %75)
  call void @ASET(i64 %74, i64 12, i64 %call142)
  %76 = load i64, i64* %entity, align 8
  %call143 = call i64 @builtin_lisp_symbol(i32 45)
  %77 = load i64, i64* %key, align 8
  %call144 = call i64 @font_put_extra(i64 %76, i64 %call143, i64 %77)
  %78 = load i64, i64* %entity, align 8
  store i64 %78, i64* %retval
  br label %return

return:                                           ; preds = %if.end.141, %for.end, %if.then.4, %if.then
  %79 = load i64, i64* %retval
  ret i64 %79
}

declare i64 @Fnreverse(i64) #1

declare void @font_add_log(i8*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @ftfont_get_charset(i64 %registry) #0 {
entry:
  %retval = alloca i32, align 4
  %registry.addr = alloca i64, align 8
  %str = alloca i8*, align 8
  %sa_avail = alloca i64, align 8
  %sa_count = alloca i64, align 8
  %sa_must_free = alloca i8, align 1
  %re = alloca i8*, align 8
  %regexp = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %charset = alloca %struct._FcCharSet*, align 8
  %uniquifier = alloca i32*, align 8
  store i64 %registry, i64* %registry.addr, align 8
  %0 = load i64, i64* %registry.addr, align 8
  %call = call i64 @SYMBOL_NAME(i64 %0)
  %call1 = call i8* @SSDATA(i64 %call)
  store i8* %call1, i8** %str, align 8
  store i64 16384, i64* %sa_avail, align 8
  %call2 = call i64 @SPECPDL_INDEX()
  store i64 %call2, i64* %sa_count, align 8
  store i8 0, i8* %sa_must_free, align 1
  %1 = load i64, i64* %registry.addr, align 8
  %call3 = call i64 @SYMBOL_NAME(i64 %1)
  %call4 = call i64 @SBYTES(i64 %call3)
  %mul = mul nsw i64 %call4, 2
  %add = add nsw i64 %mul, 1
  %2 = load i64, i64* %sa_avail, align 8
  %cmp = icmp sle i64 %add, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %registry.addr, align 8
  %call5 = call i64 @SYMBOL_NAME(i64 %3)
  %call6 = call i64 @SBYTES(i64 %call5)
  %mul7 = mul nsw i64 %call6, 2
  %add8 = add nsw i64 %mul7, 1
  %4 = load i64, i64* %sa_avail, align 8
  %sub = sub nsw i64 %4, %add8
  store i64 %sub, i64* %sa_avail, align 8
  %5 = load i64, i64* %registry.addr, align 8
  %call9 = call i64 @SYMBOL_NAME(i64 %5)
  %call10 = call i64 @SBYTES(i64 %call9)
  %mul11 = mul nsw i64 %call10, 2
  %add12 = add nsw i64 %mul11, 1
  %6 = alloca i8, i64 %add12
  br label %cond.end

cond.false:                                       ; preds = %entry
  store i8 1, i8* %sa_must_free, align 1
  %7 = load i64, i64* %registry.addr, align 8
  %call13 = call i64 @SYMBOL_NAME(i64 %7)
  %call14 = call i64 @SBYTES(i64 %call13)
  %mul15 = mul nsw i64 %call14, 2
  %add16 = add nsw i64 %mul15, 1
  %call17 = call i8* @record_xmalloc(i64 %add16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ %call17, %cond.false ]
  store i8* %cond, i8** %re, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %8 = load i32, i32* %i, align 4
  %conv = sext i32 %8 to i64
  %9 = load i64, i64* %registry.addr, align 8
  %call18 = call i64 @SYMBOL_NAME(i64 %9)
  %call19 = call i64 @SBYTES(i64 %call18)
  %cmp20 = icmp slt i64 %conv, %call19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1
  %conv22 = sext i8 %12 to i32
  %cmp23 = icmp eq i32 %conv22, 46
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  %idxprom25 = sext i32 %13 to i64
  %14 = load i8*, i8** %re, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %14, i64 %idxprom25
  store i8 92, i8* %arrayidx26, align 1
  br label %if.end.36

if.else:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %15 to i64
  %16 = load i8*, i8** %str, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %16, i64 %idxprom27
  %17 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %17 to i32
  %cmp30 = icmp eq i32 %conv29, 42
  br i1 %cmp30, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.else
  %18 = load i32, i32* %j, align 4
  %inc33 = add nsw i32 %18, 1
  store i32 %inc33, i32* %j, align 4
  %idxprom34 = sext i32 %18 to i64
  %19 = load i8*, i8** %re, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %19, i64 %idxprom34
  store i8 46, i8* %arrayidx35, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %if.then
  %20 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %20 to i64
  %21 = load i8*, i8** %str, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %21, i64 %idxprom37
  %22 = load i8, i8* %arrayidx38, align 1
  %23 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %23 to i64
  %24 = load i8*, i8** %re, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %24, i64 %idxprom39
  store i8 %22, i8* %arrayidx40, align 1
  %25 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %25 to i64
  %26 = load i8*, i8** %re, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %26, i64 %idxprom41
  %27 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %27 to i32
  %cmp44 = icmp eq i32 %conv43, 63
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.36
  %28 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %28 to i64
  %29 = load i8*, i8** %re, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %29, i64 %idxprom47
  store i8 46, i8* %arrayidx48, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %30 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %30, 1
  store i32 %inc50, i32* %i, align 4
  %31 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %31, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %32 to i64
  %33 = load i8*, i8** %re, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %33, i64 %idxprom52
  store i8 0, i8* %arrayidx53, align 1
  %34 = load i8*, i8** %re, align 8
  %35 = load i32, i32* %j, align 4
  %conv54 = sext i32 %35 to i64
  %call55 = call i64 @make_unibyte_string(i8* %34, i64 %conv54)
  store i64 %call55, i64* %regexp, align 8
  br label %do.body

do.body:                                          ; preds = %for.end
  %36 = load i8, i8* %sa_must_free, align 1
  %tobool = trunc i8 %36 to i1
  br i1 %tobool, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %do.body
  store i8 0, i8* %sa_must_free, align 1
  %37 = load i64, i64* %sa_count, align 8
  %call57 = call i64 @builtin_lisp_symbol(i32 0)
  %call58 = call i64 @unbind_to(i64 %37, i64 %call57)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.59
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.77, %do.end
  %38 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %38 to i64
  %arrayidx62 = getelementptr inbounds [38 x %struct.anon.6], [38 x %struct.anon.6]* @fc_charset_table, i32 0, i64 %idxprom61
  %name = getelementptr inbounds %struct.anon.6, %struct.anon.6* %arrayidx62, i32 0, i32 0
  %39 = load i8*, i8** %name, align 8
  %tobool63 = icmp ne i8* %39, null
  br i1 %tobool63, label %for.body.64, label %for.end.79

for.body.64:                                      ; preds = %for.cond.60
  %40 = load i64, i64* %regexp, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %41 to i64
  %arrayidx66 = getelementptr inbounds [38 x %struct.anon.6], [38 x %struct.anon.6]* @fc_charset_table, i32 0, i64 %idxprom65
  %name67 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %arrayidx66, i32 0, i32 0
  %42 = load i8*, i8** %name67, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %43 to i64
  %arrayidx69 = getelementptr inbounds [38 x %struct.anon.6], [38 x %struct.anon.6]* @fc_charset_table, i32 0, i64 %idxprom68
  %name70 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %arrayidx69, i32 0, i32 0
  %44 = load i8*, i8** %name70, align 8
  %call71 = call i64 @strlen(i8* %44) #4
  %call72 = call i64 @fast_c_string_match_ignore_case(i64 %40, i8* %42, i64 %call71)
  %cmp73 = icmp sge i64 %call72, 0
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.body.64
  br label %for.end.79

if.end.76:                                        ; preds = %for.body.64
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %45 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %45, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.60

for.end.79:                                       ; preds = %if.then.75, %for.cond.60
  %46 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %46 to i64
  %arrayidx81 = getelementptr inbounds [38 x %struct.anon.6], [38 x %struct.anon.6]* @fc_charset_table, i32 0, i64 %idxprom80
  %name82 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %arrayidx81, i32 0, i32 0
  %47 = load i8*, i8** %name82, align 8
  %tobool83 = icmp ne i8* %47, null
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %for.end.79
  store i32 -1, i32* %retval
  br label %return

if.end.85:                                        ; preds = %for.end.79
  %48 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %48 to i64
  %arrayidx87 = getelementptr inbounds [38 x %struct.anon.6], [38 x %struct.anon.6]* @fc_charset_table, i32 0, i64 %idxprom86
  %fc_charset = getelementptr inbounds %struct.anon.6, %struct.anon.6* %arrayidx87, i32 0, i32 3
  %49 = load %struct._FcCharSet*, %struct._FcCharSet** %fc_charset, align 8
  %tobool88 = icmp ne %struct._FcCharSet* %49, null
  br i1 %tobool88, label %if.end.114, label %if.then.89

if.then.89:                                       ; preds = %if.end.85
  %call90 = call %struct._FcCharSet* @FcCharSetCreate()
  store %struct._FcCharSet* %call90, %struct._FcCharSet** %charset, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %50 to i64
  %arrayidx92 = getelementptr inbounds [38 x %struct.anon.6], [38 x %struct.anon.6]* @fc_charset_table, i32 0, i64 %idxprom91
  %uniquifier93 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %arrayidx92, i32 0, i32 1
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %uniquifier93, i32 0, i32 0
  store i32* %arraydecay, i32** %uniquifier, align 8
  %51 = load %struct._FcCharSet*, %struct._FcCharSet** %charset, align 8
  %tobool94 = icmp ne %struct._FcCharSet* %51, null
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %if.then.89
  store i32 -1, i32* %retval
  br label %return

if.end.96:                                        ; preds = %if.then.89
  store i32 0, i32* %j, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.108, %if.end.96
  %52 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %52 to i64
  %53 = load i32*, i32** %uniquifier, align 8
  %arrayidx99 = getelementptr inbounds i32, i32* %53, i64 %idxprom98
  %54 = load i32, i32* %arrayidx99, align 4
  %tobool100 = icmp ne i32 %54, 0
  br i1 %tobool100, label %for.body.101, label %for.end.110

for.body.101:                                     ; preds = %for.cond.97
  %55 = load %struct._FcCharSet*, %struct._FcCharSet** %charset, align 8
  %56 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %56 to i64
  %57 = load i32*, i32** %uniquifier, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %57, i64 %idxprom102
  %58 = load i32, i32* %arrayidx103, align 4
  %call104 = call i32 @FcCharSetAddChar(%struct._FcCharSet* %55, i32 %58)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.end.107, label %if.then.106

if.then.106:                                      ; preds = %for.body.101
  %59 = load %struct._FcCharSet*, %struct._FcCharSet** %charset, align 8
  call void @FcCharSetDestroy(%struct._FcCharSet* %59)
  store i32 -1, i32* %retval
  br label %return

if.end.107:                                       ; preds = %for.body.101
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %60 = load i32, i32* %j, align 4
  %inc109 = add nsw i32 %60, 1
  store i32 %inc109, i32* %j, align 4
  br label %for.cond.97

for.end.110:                                      ; preds = %for.cond.97
  %61 = load %struct._FcCharSet*, %struct._FcCharSet** %charset, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %62 to i64
  %arrayidx112 = getelementptr inbounds [38 x %struct.anon.6], [38 x %struct.anon.6]* @fc_charset_table, i32 0, i64 %idxprom111
  %fc_charset113 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %arrayidx112, i32 0, i32 3
  store %struct._FcCharSet* %61, %struct._FcCharSet** %fc_charset113, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %for.end.110, %if.end.85
  %63 = load i32, i32* %i, align 4
  store i32 %63, i32* %retval
  br label %return

return:                                           ; preds = %if.end.114, %if.then.106, %if.then.95, %if.then.84
  %64 = load i32, i32* %retval
  ret i32 %64
}

declare %struct._FcLangSet* @FcLangSetCreate() #1

declare i32 @FcLangSetAdd(%struct._FcLangSet*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.OpenTypeSpec* @ftfont_get_open_type_spec(i64 %otf_spec) #0 {
entry:
  %retval = alloca %struct.OpenTypeSpec*, align 8
  %otf_spec.addr = alloca i64, align 8
  %spec = alloca %struct.OpenTypeSpec*, align 8
  %val = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %negative = alloca i8, align 1
  %p = alloca i8*, align 8
  %p52 = alloca i8*, align 8
  %len = alloca i64, align 8
  %tag = alloca i32, align 4
  %p127 = alloca i8*, align 8
  store i64 %otf_spec, i64* %otf_spec.addr, align 8
  %call = call noalias i8* @malloc(i64 40) #5
  %0 = bitcast i8* %call to %struct.OpenTypeSpec*
  store %struct.OpenTypeSpec* %0, %struct.OpenTypeSpec** %spec, align 8
  %1 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %tobool = icmp ne %struct.OpenTypeSpec* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.OpenTypeSpec* null, %struct.OpenTypeSpec** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %otf_spec.addr, align 8
  %sub = sub nsw i64 %2, 3
  %3 = inttoptr i64 %sub to i8*
  %4 = bitcast i8* %3 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %4, i32 0, i32 0
  %5 = load i64, i64* %car, align 8
  %6 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %script = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %6, i32 0, i32 0
  store i64 %5, i64* %script, align 8
  %7 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %script1 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %7, i32 0, i32 0
  %8 = load i64, i64* %script1, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %8, %call2
  br i1 %cmp, label %if.else.35, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %9 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %script4 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %9, i32 0, i32 0
  %10 = load i64, i64* %script4, align 8
  %call5 = call i64 @SYMBOL_NAME(i64 %10)
  %call6 = call i8* @SDATA(i64 %call5)
  store i8* %call6, i8** %p, align 8
  %11 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %shl = shl i32 %conv, 24
  %13 = load i8*, i8** %p, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %14 to i32
  %shl9 = shl i32 %conv8, 16
  %or = or i32 %shl, %shl9
  %15 = load i8*, i8** %p, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %15, i64 2
  %16 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %16 to i32
  %shl12 = shl i32 %conv11, 8
  %or13 = or i32 %or, %shl12
  %17 = load i8*, i8** %p, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %17, i64 3
  %18 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %18 to i32
  %or16 = or i32 %or13, %conv15
  %19 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %script_tag = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %19, i32 0, i32 1
  store i32 %or16, i32* %script_tag, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %20 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %script17 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %20, i32 0, i32 0
  %21 = load i64, i64* %script17, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 210), align 8
  %call18 = call i64 @assq_no_quit(i64 %21, i64 %22)
  store i64 %call18, i64* %val, align 8
  %23 = load i64, i64* %val, align 8
  %and = and i64 %23, 7
  %conv19 = trunc i64 %and to i32
  %cmp20 = icmp eq i32 %conv19, 3
  br i1 %cmp20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end
  %24 = load i64, i64* %val, align 8
  %sub22 = sub nsw i64 %24, 3
  %25 = inttoptr i64 %sub22 to i8*
  %26 = bitcast i8* %25 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %26, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %27 = load i64, i64* %cdr, align 8
  %and23 = and i64 %27, 7
  %conv24 = trunc i64 %and23 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true
  %28 = load i64, i64* %val, align 8
  %sub28 = sub nsw i64 %28, 3
  %29 = inttoptr i64 %sub28 to i8*
  %30 = bitcast i8* %29 to %struct.Lisp_Cons*
  %u29 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %30, i32 0, i32 1
  %cdr30 = bitcast %union.anon* %u29 to i64*
  %31 = load i64, i64* %cdr30, align 8
  %32 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %script31 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %32, i32 0, i32 0
  store i64 %31, i64* %script31, align 8
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true, %do.end
  %call32 = call i64 @builtin_lisp_symbol(i32 0)
  %33 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %script33 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %33, i32 0, i32 0
  store i64 %call32, i64* %script33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.27
  br label %if.end.37

if.else.35:                                       ; preds = %if.end
  %34 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %script_tag36 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %34, i32 0, i32 1
  store i32 1145457748, i32* %script_tag36, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.end.34
  %35 = load i64, i64* %otf_spec.addr, align 8
  %sub38 = sub nsw i64 %35, 3
  %36 = inttoptr i64 %sub38 to i8*
  %37 = bitcast i8* %36 to %struct.Lisp_Cons*
  %u39 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %37, i32 0, i32 1
  %cdr40 = bitcast %union.anon* %u39 to i64*
  %38 = load i64, i64* %cdr40, align 8
  store i64 %38, i64* %otf_spec.addr, align 8
  %39 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %langsys_tag = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %39, i32 0, i32 2
  store i32 0, i32* %langsys_tag, align 4
  %40 = load i64, i64* %otf_spec.addr, align 8
  %call41 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp42 = icmp eq i64 %40, %call41
  br i1 %cmp42, label %if.end.75, label %if.then.44

if.then.44:                                       ; preds = %if.end.37
  %41 = load i64, i64* %otf_spec.addr, align 8
  %sub45 = sub nsw i64 %41, 3
  %42 = inttoptr i64 %sub45 to i8*
  %43 = bitcast i8* %42 to %struct.Lisp_Cons*
  %car46 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %43, i32 0, i32 0
  %44 = load i64, i64* %car46, align 8
  store i64 %44, i64* %val, align 8
  %45 = load i64, i64* %val, align 8
  %call47 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp48 = icmp eq i64 %45, %call47
  br i1 %cmp48, label %if.end.71, label %if.then.50

if.then.50:                                       ; preds = %if.then.44
  br label %do.body.51

do.body.51:                                       ; preds = %if.then.50
  %46 = load i64, i64* %val, align 8
  %call53 = call i64 @SYMBOL_NAME(i64 %46)
  %call54 = call i8* @SDATA(i64 %call53)
  store i8* %call54, i8** %p52, align 8
  %47 = load i8*, i8** %p52, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %47, i64 0
  %48 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %48 to i32
  %shl57 = shl i32 %conv56, 24
  %49 = load i8*, i8** %p52, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %49, i64 1
  %50 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %50 to i32
  %shl60 = shl i32 %conv59, 16
  %or61 = or i32 %shl57, %shl60
  %51 = load i8*, i8** %p52, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %51, i64 2
  %52 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %52 to i32
  %shl64 = shl i32 %conv63, 8
  %or65 = or i32 %or61, %shl64
  %53 = load i8*, i8** %p52, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %53, i64 3
  %54 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %54 to i32
  %or68 = or i32 %or65, %conv67
  %55 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %langsys_tag69 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %55, i32 0, i32 2
  store i32 %or68, i32* %langsys_tag69, align 4
  br label %do.end.70

do.end.70:                                        ; preds = %do.body.51
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %if.then.44
  %56 = load i64, i64* %otf_spec.addr, align 8
  %sub72 = sub nsw i64 %56, 3
  %57 = inttoptr i64 %sub72 to i8*
  %58 = bitcast i8* %57 to %struct.Lisp_Cons*
  %u73 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %58, i32 0, i32 1
  %cdr74 = bitcast %union.anon* %u73 to i64*
  %59 = load i64, i64* %cdr74, align 8
  store i64 %59, i64* %otf_spec.addr, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.71, %if.end.37
  %60 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %nfeatures = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %60, i32 0, i32 3
  %arrayidx76 = getelementptr inbounds [2 x i32], [2 x i32]* %nfeatures, i32 0, i64 1
  store i32 0, i32* %arrayidx76, align 4
  %61 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %nfeatures77 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %61, i32 0, i32 3
  %arrayidx78 = getelementptr inbounds [2 x i32], [2 x i32]* %nfeatures77, i32 0, i64 0
  store i32 0, i32* %arrayidx78, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.166, %if.end.75
  %62 = load i32, i32* %i, align 4
  %cmp79 = icmp slt i32 %62, 2
  br i1 %cmp79, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %63 = load i64, i64* %otf_spec.addr, align 8
  %call81 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp82 = icmp eq i64 %63, %call81
  %lnot = xor i1 %cmp82, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %64 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %64, label %for.body, label %for.end.171

for.body:                                         ; preds = %land.end
  %65 = load i64, i64* %otf_spec.addr, align 8
  %sub84 = sub nsw i64 %65, 3
  %66 = inttoptr i64 %sub84 to i8*
  %67 = bitcast i8* %66 to %struct.Lisp_Cons*
  %car85 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %67, i32 0, i32 0
  %68 = load i64, i64* %car85, align 8
  store i64 %68, i64* %val, align 8
  %69 = load i64, i64* %val, align 8
  %call86 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp87 = icmp eq i64 %69, %call86
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %for.body
  br label %for.inc.166

if.end.90:                                        ; preds = %for.body
  %70 = load i64, i64* %val, align 8
  %call91 = call i64 @Flength(i64 %70)
  store i64 %call91, i64* %len, align 8
  %71 = load i64, i64* %len, align 8
  %shr = ashr i64 %71, 2
  %cmp92 = icmp ult i64 2305843009213693951, %shr
  br i1 %cmp92, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.90
  br label %cond.end

cond.false:                                       ; preds = %if.end.90
  %72 = load i64, i64* %len, align 8
  %shr94 = ashr i64 %72, 2
  %mul = mul i64 %shr94, 4
  %call95 = call noalias i8* @malloc(i64 %mul) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call95, %cond.false ]
  %73 = bitcast i8* %cond to i32*
  %74 = load i32, i32* %i, align 4
  %idxprom = sext i32 %74 to i64
  %75 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %features = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %75, i32 0, i32 4
  %arrayidx96 = getelementptr inbounds [2 x i32*], [2 x i32*]* %features, i32 0, i64 %idxprom
  store i32* %73, i32** %arrayidx96, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %76 to i64
  %77 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %features98 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %77, i32 0, i32 4
  %arrayidx99 = getelementptr inbounds [2 x i32*], [2 x i32*]* %features98, i32 0, i64 %idxprom97
  %78 = load i32*, i32** %arrayidx99, align 8
  %tobool100 = icmp ne i32* %78, null
  br i1 %tobool100, label %if.end.112, label %if.then.101

if.then.101:                                      ; preds = %cond.end
  %79 = load i32, i32* %i, align 4
  %cmp102 = icmp sgt i32 %79, 0
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.111

land.lhs.true.104:                                ; preds = %if.then.101
  %80 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %features105 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %80, i32 0, i32 4
  %arrayidx106 = getelementptr inbounds [2 x i32*], [2 x i32*]* %features105, i32 0, i64 0
  %81 = load i32*, i32** %arrayidx106, align 8
  %tobool107 = icmp ne i32* %81, null
  br i1 %tobool107, label %if.then.108, label %if.end.111

if.then.108:                                      ; preds = %land.lhs.true.104
  %82 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %features109 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %82, i32 0, i32 4
  %arrayidx110 = getelementptr inbounds [2 x i32*], [2 x i32*]* %features109, i32 0, i64 0
  %83 = load i32*, i32** %arrayidx110, align 8
  %84 = bitcast i32* %83 to i8*
  call void @free(i8* %84) #5
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.108, %land.lhs.true.104, %if.then.101
  %85 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %86 = bitcast %struct.OpenTypeSpec* %85 to i8*
  call void @free(i8* %86) #5
  store %struct.OpenTypeSpec* null, %struct.OpenTypeSpec** %retval
  br label %return

if.end.112:                                       ; preds = %cond.end
  store i32 0, i32* %j, align 4
  store i8 0, i8* %negative, align 1
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc, %if.end.112
  %87 = load i64, i64* %val, align 8
  %and114 = and i64 %87, 7
  %conv115 = trunc i64 %and114 to i32
  %cmp116 = icmp eq i32 %conv115, 3
  br i1 %cmp116, label %for.body.118, label %for.end

for.body.118:                                     ; preds = %for.cond.113
  %88 = load i64, i64* %val, align 8
  %sub119 = sub nsw i64 %88, 3
  %89 = inttoptr i64 %sub119 to i8*
  %90 = bitcast i8* %89 to %struct.Lisp_Cons*
  %car120 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %90, i32 0, i32 0
  %91 = load i64, i64* %car120, align 8
  %call121 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp122 = icmp eq i64 %91, %call121
  br i1 %cmp122, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %for.body.118
  store i8 1, i8* %negative, align 1
  br label %if.end.159

if.else.125:                                      ; preds = %for.body.118
  br label %do.body.126

do.body.126:                                      ; preds = %if.else.125
  %92 = load i64, i64* %val, align 8
  %sub128 = sub nsw i64 %92, 3
  %93 = inttoptr i64 %sub128 to i8*
  %94 = bitcast i8* %93 to %struct.Lisp_Cons*
  %car129 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %94, i32 0, i32 0
  %95 = load i64, i64* %car129, align 8
  %call130 = call i64 @SYMBOL_NAME(i64 %95)
  %call131 = call i8* @SDATA(i64 %call130)
  store i8* %call131, i8** %p127, align 8
  %96 = load i8*, i8** %p127, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %96, i64 0
  %97 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %97 to i32
  %shl134 = shl i32 %conv133, 24
  %98 = load i8*, i8** %p127, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %98, i64 1
  %99 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %99 to i32
  %shl137 = shl i32 %conv136, 16
  %or138 = or i32 %shl134, %shl137
  %100 = load i8*, i8** %p127, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %100, i64 2
  %101 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %101 to i32
  %shl141 = shl i32 %conv140, 8
  %or142 = or i32 %or138, %shl141
  %102 = load i8*, i8** %p127, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %102, i64 3
  %103 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %103 to i32
  %or145 = or i32 %or142, %conv144
  store i32 %or145, i32* %tag, align 4
  br label %do.end.146

do.end.146:                                       ; preds = %do.body.126
  %104 = load i8, i8* %negative, align 1
  %tobool147 = trunc i8 %104 to i1
  br i1 %tobool147, label %cond.true.149, label %cond.false.151

cond.true.149:                                    ; preds = %do.end.146
  %105 = load i32, i32* %tag, align 4
  %and150 = and i32 %105, -2147483648
  br label %cond.end.152

cond.false.151:                                   ; preds = %do.end.146
  %106 = load i32, i32* %tag, align 4
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.151, %cond.true.149
  %cond153 = phi i32 [ %and150, %cond.true.149 ], [ %106, %cond.false.151 ]
  %107 = load i32, i32* %j, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %j, align 4
  %idxprom154 = sext i32 %107 to i64
  %108 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %108 to i64
  %109 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %features156 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %109, i32 0, i32 4
  %arrayidx157 = getelementptr inbounds [2 x i32*], [2 x i32*]* %features156, i32 0, i64 %idxprom155
  %110 = load i32*, i32** %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %110, i64 %idxprom154
  store i32 %cond153, i32* %arrayidx158, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %cond.end.152, %if.then.124
  br label %for.inc

for.inc:                                          ; preds = %if.end.159
  %111 = load i64, i64* %val, align 8
  %sub160 = sub nsw i64 %111, 3
  %112 = inttoptr i64 %sub160 to i8*
  %113 = bitcast i8* %112 to %struct.Lisp_Cons*
  %u161 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %113, i32 0, i32 1
  %cdr162 = bitcast %union.anon* %u161 to i64*
  %114 = load i64, i64* %cdr162, align 8
  store i64 %114, i64* %val, align 8
  br label %for.cond.113

for.end:                                          ; preds = %for.cond.113
  %115 = load i32, i32* %j, align 4
  %116 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %116 to i64
  %117 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  %nfeatures164 = getelementptr inbounds %struct.OpenTypeSpec, %struct.OpenTypeSpec* %117, i32 0, i32 3
  %arrayidx165 = getelementptr inbounds [2 x i32], [2 x i32]* %nfeatures164, i32 0, i64 %idxprom163
  store i32 %115, i32* %arrayidx165, align 4
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.end, %if.then.89
  %118 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %118, 1
  store i32 %inc167, i32* %i, align 4
  %119 = load i64, i64* %otf_spec.addr, align 8
  %sub168 = sub nsw i64 %119, 3
  %120 = inttoptr i64 %sub168 to i8*
  %121 = bitcast i8* %120 to %struct.Lisp_Cons*
  %u169 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %121, i32 0, i32 1
  %cdr170 = bitcast %union.anon* %u169 to i64*
  %122 = load i64, i64* %cdr170, align 8
  store i64 %122, i64* %otf_spec.addr, align 8
  br label %for.cond

for.end.171:                                      ; preds = %land.end
  %123 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %spec, align 8
  store %struct.OpenTypeSpec* %123, %struct.OpenTypeSpec** %retval
  br label %return

return:                                           ; preds = %for.end.171, %if.end.111, %if.then
  %124 = load %struct.OpenTypeSpec*, %struct.OpenTypeSpec** %retval
  ret %struct.OpenTypeSpec* %124
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i64 @CDR(i64) #1

declare zeroext i1 @NATNUMP(i64) #1

declare i32 @FcCharSetAddChar(%struct._FcCharSet*, i32) #1

declare %struct._FcPattern* @FcPatternCreate() #1

declare i32 @FcPatternAddCharSet(%struct._FcPattern*, i8*, %struct._FcCharSet*) #1

declare i32 @FcPatternAddLangSet(%struct._FcPattern*, i8*, %struct._FcLangSet*) #1

declare i32 @FcPatternAddDouble(%struct._FcPattern*, i8*, double) #1

declare i32 @FcPatternAddBool(%struct._FcPattern*, i8*, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @FcLangSetDestroy(%struct._FcLangSet*) #1

declare void @FcCharSetDestroy(%struct._FcCharSet*) #1

declare i64 @SPECPDL_INDEX() #1

declare i8* @record_xmalloc(i64) #1

declare i64 @make_unibyte_string(i8*, i64) #1

declare i64 @unbind_to(i64, i64) #1

declare i64 @fast_c_string_match_ignore_case(i64, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i64 @Flength(i64) #1

declare i64 @Fintern(i64, i64) #1

declare i64 @Fdowncase(i64) #1

declare %struct._FcPattern* @FcPatternDuplicate(%struct._FcPattern*) #1

declare i32 @FcPatternGetLangSet(%struct._FcPattern*, i8*, i32, %struct._FcLangSet**) #1

declare i32 @FcConfigSubstitute(%struct._FcConfig*, %struct._FcPattern*, i32) #1

declare void @FcDefaultSubstitute(%struct._FcPattern*) #1

declare %struct._FcPattern* @FcFontMatch(%struct._FcConfig*, %struct._FcPattern*, i32*) #1

declare i64 @intern(i8*) #1

declare void @XSETCDR(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @matching_prefix(i8* %str, i64 %len, i8* %pat) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %pat.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %pat, i8** %pat.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %1 = load i8*, i8** %pat.addr, align 8
  %call = call i64 @strlen(i8* %1) #4
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8*, i8** %pat.addr, align 8
  %4 = load i64, i64* %len.addr, align 8
  %call1 = call i32 @c_strncasecmp(i8* %2, i8* %3, i64 %4) #4
  %cmp2 = icmp eq i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %5
}

declare i64 @font_intern_prop(i8*, i64, i1 zeroext) #1

declare i32 @font_style_to_value(i32, i64, i1 zeroext) #1

; Function Attrs: nounwind readonly
declare i32 @c_strncasecmp(i8*, i8*, i64) #2

declare i64 @build_unibyte_string(i8*) #1

declare i64 @font_make_entity() #1

declare i64 @Fcopy_sequence(i64) #1

declare i64 @font_put_extra(i64, i64, i64) #1

declare void @XSETCAR(i64, i64) #1

declare i32 @FcPatternGetDouble(%struct._FcPattern*, i8*, i32, double*) #1

declare i32 @FcPatternGetBool(%struct._FcPattern*, i8*, i32, i32*) #1

declare i32 @FT_Get_BDF_Property(%struct.FT_FaceRec_*, i8*, %struct.BDF_PropertyRec_*) #1

declare i32 @FcPatternAdd(%struct._FcPattern*, i8*, i32, i8*, i32) #1

declare i64 @Fstring_equal(i64, i64) #1

declare i64 @font_build_object(i32, i64, i64, double) #1

declare i32 @encode_char(%struct.charset*, i32) #1

declare zeroext i1 @CHAR_TABLE_P(i64) #1

declare i64 @HASH_VALUE(%struct.Lisp_Hash_Table*, i64) #1

declare %struct.Lisp_Hash_Table* @XHASH_TABLE(i64) #1

declare i64 @CHAR_TABLE_REF(i64, i32) #1

declare i32 @FT_Get_Char_Index(%struct.FT_FaceRec_*, i64) #1

declare i32 @FT_Load_Glyph(%struct.FT_FaceRec_*, i32, i32) #1

declare void @font_filter_properties(i64, i64, i8**, i8**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
