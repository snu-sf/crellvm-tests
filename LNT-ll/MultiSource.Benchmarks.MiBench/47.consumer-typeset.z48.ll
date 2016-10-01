; ModuleID = './MultiSource.Benchmarks.MiBench/47.consumer-typeset.z48.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.t_font_encoding_entry = type { %struct.t_font_encoding_entry*, i32, i8* }
%struct.t_qsave_entry = type { %struct.t_qsave_entry*, i32, i32, float, float }
%struct.t_qsave_marking_entry = type { %struct.t_qsave_marking_entry*, i32 }
%struct.t_font_list_entry = type { %struct.t_font_list_entry*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.t_source_annot_entry = type { %struct.t_source_annot_entry*, %struct.t_target_annot_entry*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t_target_annot_entry = type { %struct.t_target_annot_entry*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.t_page_block = type { %struct.t_page_block*, [64 x i32] }
%struct.t_offset_block = type { %struct.t_offset_block*, [256 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@g_valid_text_matrix = internal global i32 0, align 4
@g_PDF_debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%%\0A%% font encoding '%s':\0A%%\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"<<\0A/Type /Encoding\0A/Differences [ 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"PDFFile_BeginFontEncoding: run out of memory\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"PDFFile_BeginFontEncoding: out of memory\00", align 1
@g_font_encoding_list = internal global %struct.t_font_encoding_entry* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"]\0A>>\0Aendobj\0A\00", align 1
@g_graphics_vars = internal global [4 x i32] zeroinitializer, align 16
@g_units = internal global [7 x i32] zeroinitializer, align 16
@g_in_buffering_mode = internal global i32 0, align 4
@g_buffer_pos = internal global i32 0, align 4
@g_buffer = internal global [1024 x i8] zeroinitializer, align 16
@g_TJ_pending = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c")]TJ\0A\00", align 1
@g_ET_pending = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"ET\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"PDFPage_Push: run out of memory\00", align 1
@g_page_h_origin = internal global i32 0, align 4
@g_page_v_origin = internal global i32 0, align 4
@g_qsave_stack = internal global %struct.t_qsave_entry* null, align 8
@g_qsave_marking_stack = internal global %struct.t_qsave_marking_entry* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"q\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\0AQ\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"cannot find font entry for name %s\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%s %u Tf\0A\00", align 1
@g_page_uses_fonts = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c")%d(\00", align 1
@g_page_contents_obj_num = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"%.2f 0 0 %.2f 0 0 cm\0A\00", align 1
@g_page_h_scale_factor = internal global float 0.000000e+00, align 4
@g_page_v_scale_factor = internal global float 0.000000e+00, align 4
@.str.14 = private unnamed_addr constant [28 x i8] c"%.2f %.2f %.2f %.2f 0 0 cm\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"1 0 0 1 %.2f %.2f cm\0A\00", align 1
@g_expr_depth = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@g_link_depth = internal global i32 0, align 4
@g_graphic_keywords = internal global [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i32 0, i32 0)], align 16
@.str.17 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@g_link_keywords = internal global [5 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.117, i32 0, i32 0)], align 16
@g_link_index = internal global i32 0, align 4
@g_link_keyword = internal global i32 0, align 4
@g_doc_info_keywords = internal global [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0)], align 16
@g_arithmetic_keywords = internal global [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i32 0, i32 0)], align 16
@g_expr = internal global [512 x i8] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [35 x i8] c"PDFPage_WriteGraphic: '(' expected\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@g_expr_index = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [65 x i8] c"PDFPage_WriteGraphic: '__' encountered while processing @Graphic\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"q %d w %d %d m %d %d l s Q\0A\00", align 1
@g_page_has_text = internal global i32 0, align 4
@g_page_has_graphics = internal global i32 0, align 4
@g_page_length_obj_num = internal global i32 0, align 4
@g_page_start_offset = internal global i32 0, align 4
@g_page_line_width = internal global i32 0, align 4
@g_font_list = internal global %struct.t_font_list_entry* null, align 8
@g_page_count = internal global i32 0, align 4
@g_page_object_num = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [37 x i8] c"%%\0A%% length object for page %u:\0A%%\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"%u\0Aendobj\0A\00", align 1
@g_source_annot_list = internal global %struct.t_source_annot_entry* null, align 8
@g_cur_page_block = internal global %struct.t_page_block* null, align 8
@.str.24 = private unnamed_addr constant [35 x i8] c"PDFPage_Cleanup: run out of memory\00", align 1
@g_page_block_list = internal global %struct.t_page_block* null, align 8
@.str.25 = private unnamed_addr constant [26 x i8] c"%%\0A%% page number %u:\0A%%\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"<<\0A/Type /Page\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"/CropBox [ 0 0 %u %u ]\0A\00", align 1
@g_doc_h_bound = internal global i32 0, align 4
@g_doc_v_bound = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"/Parent \00", align 1
@g_pages_root = internal global i32 0, align 4
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"/Contents \00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"/Resources\0A<<\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"/Font <<\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c" >>\0A\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"/ProcSet [ /PDF\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c" /Text\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c" ]\0A\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"/Annots [\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c">>\0Aendobj\0A\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"%PDF-1.2\0A\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%\E2\E3\CF\D3\0A\00", align 1
@g_next_objnum = internal global i32 0, align 4
@g_obj_offset_list = internal global %struct.t_offset_block* null, align 8
@g_cur_obj_offset_block = internal global %struct.t_offset_block* null, align 8
@g_doc_author = internal global i8* null, align 8
@g_doc_title = internal global i8* null, align 8
@g_doc_subject = internal global i8* null, align 8
@g_doc_keywords = internal global i8* null, align 8
@g_target_annot_list = internal global %struct.t_target_annot_entry* null, align 8
@g_has_exported_targets = internal global i32 0, align 4
@.str.44 = private unnamed_addr constant [46 x i8] c"%%\0A%% /Dests dictionary (exported links):\0A%%\0A\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"/%s [ \00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c" /XYZ null null null ]\0A\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"%%\0A%% catalog:\0A%%\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"/Type /Catalog\0A\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"/Pages \00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"/Dests \00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"%%\0A%% Info object:\0A%%\0A\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"/Creator (%s)\0A\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"Basser Lout Version 3.24 (October 2000)\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"/Producer (%s)\0A\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"/CreationDate (Sometime Today)\0A\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"/Author (%s)\0A\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"/Title (%s)\0A\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"/Subject (%s)\0A\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"/Keywords (%s)\0A\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"trailer\0A<<\0A\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"/Size %u\0A\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"/Root \00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"\0A/Info \00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c" >>\0Astartxref\0A%u\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"%%EOF\0A\00", align 1
@.str.67 = private unnamed_addr constant [51 x i8] c"PDFFile_Cleanup: unresolved link annotation named \00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.69 = private unnamed_addr constant [40 x i8] c"PDFFont_NewListEntry: run out of memory\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"%%\0A%% page %u's contents:\0A%%\0A\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"<< /Length \00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c" >>\0Astream\0A\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"%u w\0A\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"BT\0A\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"1 0 0 1 %d %d Tm\0A\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"%d 0 Td\0A\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"[(\00", align 1
@.str.80 = private unnamed_addr constant [58 x i8] c"PDFPage_CollectExpr: expression too long (max. 512 chars)\00", align 1
@.str.81 = private unnamed_addr constant [31 x i8] c"PDFPage_EvalExpr: '(' expected\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"PDFPage_EvalExpr: ',' expected\00", align 1
@.str.83 = private unnamed_addr constant [31 x i8] c"PDFPage_EvalExpr: ')' expected\00", align 1
@g_unit_keywords = internal global [7 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0)], align 16
@.str.84 = private unnamed_addr constant [77 x i8] c"PDFPage_EvalExpr: __add, __sub, __mul, __div, or a unit keyword was expected\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.86 = private unnamed_addr constant [80 x i8] c"PDFPage_GetFloat: unable to evaluate number for Lout graphic keyword processing\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"em\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"loutf\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"loutv\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"louts\00", align 1
@.str.94 = private unnamed_addr constant [52 x i8] c"PDFPage_CollectLink: link too long (max. 512 chars)\00", align 1
@g_link = internal global [512 x i8] zeroinitializer, align 16
@.str.95 = private unnamed_addr constant [60 x i8] c"PDFPage_ProcessLinkKeyword: empty link-name / URI; ignored.\00", align 1
@g_dest_link_options = internal global [8 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0)], align 16
@g_external_file_spec_keyword = internal global [1 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0)], align 8
@.str.96 = private unnamed_addr constant [44 x i8] c"PDFPage_ProcessLinkKeyword: empty file spec\00", align 1
@.str.97 = private unnamed_addr constant [42 x i8] c"PDFPage_ProcessLinkKeyword: out of memory\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"__FitNoChange\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"__Fit\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"__FitH\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"__FitV\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"__FitR\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"__FitB\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"__FitBH\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"__FitBV\00", align 1
@.str.106 = private unnamed_addr constant [38 x i8] c"PDFSourceAnnot_New: run out of memory\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"__link_to=\00", align 1
@.str.108 = private unnamed_addr constant [38 x i8] c"PDFTargetAnnot_New: run out of memory\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"xsize\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"ysize\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"xmark\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"ymark\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"link_source=<<\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"link_external=<<\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"link_URI=<<\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"link_target=<<\00", align 1
@.str.117 = private unnamed_addr constant [26 x i8] c"link_target_for_export=<<\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"author=\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"title=\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"subject=\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"keywords=\00", align 1
@.str.122 = private unnamed_addr constant [55 x i8] c"PDFPage_ProcessDocInfoKeyword: no memory for __author=\00", align 1
@.str.123 = private unnamed_addr constant [54 x i8] c"PDFPage_ProcessDocInfoKeyword: no memory for __title=\00", align 1
@.str.124 = private unnamed_addr constant [56 x i8] c"PDFPage_ProcessDocInfoKeyword: no memory for __subject=\00", align 1
@.str.125 = private unnamed_addr constant [57 x i8] c"PDFPage_ProcessDocInfoKeyword: no memory for __keywords=\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"pick\00", align 1
@.str.133 = private unnamed_addr constant [33 x i8] c"PDFObject_New: run out of memory\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"endstream\0Aendobj\0A\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"%u 0 obj\0A\00", align 1
@.str.136 = private unnamed_addr constant [34 x i8] c"%%\0A%% declare use of font %s:\0A%%\0A\00", align 1
@.str.137 = private unnamed_addr constant [32 x i8] c"<<\0A/Type /Font\0A/Subtype /Type1\0A\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"/Name %s\0A\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"/BaseFont /%s\0A\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"/Encoding \00", align 1
@g_standard_base_14_fonts = internal global [14 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i32 0, i32 0)], align 16
@.str.141 = private unnamed_addr constant [8 x i8] c"Courier\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"Courier-Bold\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"Courier-Oblique\00", align 1
@.str.144 = private unnamed_addr constant [20 x i8] c"Courier-BoldOblique\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"Helvetica\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"Helvetica-Bold\00", align 1
@.str.147 = private unnamed_addr constant [18 x i8] c"Helvetica-Oblique\00", align 1
@.str.148 = private unnamed_addr constant [22 x i8] c"Helvetica-BoldOblique\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"Times\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"Times-Bold\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"Times-Italic\00", align 1
@.str.153 = private unnamed_addr constant [17 x i8] c"Times-BoldItalic\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"ZapfDingbats\00", align 1
@.str.155 = private unnamed_addr constant [48 x i8] c"%%\0A%% annotation in page object # %u to %s:\0A%%\0A\00", align 1
@.str.156 = private unnamed_addr constant [72 x i8] c"<<\0A/Type /Annot\0A/Subtype /Link\0A/Rect [ %d %d %d %d ]\0A/Border [ 0 0 0 ]\0A\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"/Dest [ \00", align 1
@.str.158 = private unnamed_addr constant [21 x i8] c" /XYZ null null null\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c" /Fit\00", align 1
@.str.160 = private unnamed_addr constant [10 x i8] c" /FitH %u\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c" /FitV %u\00", align 1
@.str.162 = private unnamed_addr constant [19 x i8] c" /FitR %u %u %u %u\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c" /FitB\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c" /FitBH %u\00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c" /FitBV %u\00", align 1
@.str.166 = private unnamed_addr constant [47 x i8] c"PDFSourceAnnot_Write: invalid link dest option\00", align 1
@.str.167 = private unnamed_addr constant [50 x i8] c"/A << /Type /Action /S /GoToR /D (%s) /F\0A(%s) >>\0A\00", align 1
@.str.168 = private unnamed_addr constant [42 x i8] c"/A << /Type /Action /S /URI /URI\0A(%s) >>\0A\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"%u 0 R\00", align 1
@.str.170 = private unnamed_addr constant [30 x i8] c"%%\0A%% root of pages tree:\0A%%\0A\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"/Type /Pages\0A\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"/Kids [ \00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c" ]\0A/Count %u\0A\00", align 1
@.str.174 = private unnamed_addr constant [25 x i8] c"/MediaBox [ 0 0 %u %u ]\0A\00", align 1
@.str.175 = private unnamed_addr constant [22 x i8] c"%%\0A%% xref table:\0A%%\0A\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"xref\0A\00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c"0 %u\0A\00", align 1
@.str.178 = private unnamed_addr constant [21 x i8] c"0000000000 65535 f \0A\00", align 1
@.str.179 = private unnamed_addr constant [16 x i8] c"%010u 00000 n \0A\00", align 1
@.str.180 = private unnamed_addr constant [45 x i8] c"PDFFile_WriteXREF: undefined object number: \00", align 1

; Function Attrs: nounwind uwtable
define i32 @PDFHasValidTextMatrix() #0 {
entry:
  %0 = load i32, i32* @g_valid_text_matrix, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @PDFFile_BeginFontEncoding(%struct._IO_FILE* %in_fp, i8* %in_encoding_name) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_encoding_name.addr = alloca i8*, align 8
  %encoding_num = alloca i32, align 4
  %encoding_entry = alloca %struct.t_font_encoding_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i8* %in_encoding_name, i8** %in_encoding_name.addr, align 8
  %0 = load i32, i32* @g_PDF_debug, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %2 = load i8*, i8** %in_encoding_name.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call1 = call i32 @PDFObject_WriteNewObj(%struct._IO_FILE* %3)
  store i32 %call1, i32* %encoding_num, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %4)
  %call3 = call noalias i8* @malloc(i64 24) #5
  %5 = bitcast i8* %call3 to %struct.t_font_encoding_entry*
  store %struct.t_font_encoding_entry* %5, %struct.t_font_encoding_entry** %encoding_entry, align 8
  %6 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %encoding_entry, align 8
  %cmp = icmp eq %struct.t_font_encoding_entry* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call5 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.FILE_POS* %7)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %8 = load i8*, i8** %in_encoding_name.addr, align 8
  %call7 = call i64 @strlen(i8* %8) #6
  %add = add i64 %call7, 1
  %call8 = call noalias i8* @malloc(i64 %add) #5
  %9 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %encoding_entry, align 8
  %m_font_encoding = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %9, i32 0, i32 2
  store i8* %call8, i8** %m_font_encoding, align 8
  %10 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %encoding_entry, align 8
  %m_font_encoding9 = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %10, i32 0, i32 2
  %11 = load i8*, i8** %m_font_encoding9, align 8
  %cmp10 = icmp eq i8* %11, null
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.6
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.6
  %13 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** @g_font_encoding_list, align 8
  %14 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %encoding_entry, align 8
  %m_next_entry = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %14, i32 0, i32 0
  store %struct.t_font_encoding_entry* %13, %struct.t_font_encoding_entry** %m_next_entry, align 8
  %15 = load i32, i32* %encoding_num, align 4
  %16 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %encoding_entry, align 8
  %m_object_num = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %16, i32 0, i32 1
  store i32 %15, i32* %m_object_num, align 4
  %17 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %encoding_entry, align 8
  %m_font_encoding14 = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %17, i32 0, i32 2
  %18 = load i8*, i8** %m_font_encoding14, align 8
  %19 = load i8*, i8** %in_encoding_name.addr, align 8
  %call15 = call i8* @strcpy(i8* %18, i8* %19) #5
  %20 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %encoding_entry, align 8
  store %struct.t_font_encoding_entry* %20, %struct.t_font_encoding_entry** @g_font_encoding_list, align 8
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @PDFObject_WriteNewObj(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %next_ref = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  %call = call i32 @PDFObject_New()
  store i32 %call, i32* %next_ref, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %1 = load i32, i32* %next_ref, align 4
  call void @PDFObject_WriteObj(%struct._IO_FILE* %0, i32 %1)
  %2 = load i32, i32* %next_ref, align 4
  ret i32 %2
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @PDFFile_EndFontEncoding(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFFont_AddFont(%struct._IO_FILE* %in_fp, i8* %in_short_font_name, i8* %in_real_font_name, i8* %in_font_encoding_name) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_short_font_name.addr = alloca i8*, align 8
  %in_real_font_name.addr = alloca i8*, align 8
  %in_font_encoding_name.addr = alloca i8*, align 8
  %entry1 = alloca %struct.t_font_list_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i8* %in_short_font_name, i8** %in_short_font_name.addr, align 8
  store i8* %in_real_font_name, i8** %in_real_font_name.addr, align 8
  store i8* %in_font_encoding_name, i8** %in_font_encoding_name.addr, align 8
  %0 = load i8*, i8** %in_real_font_name.addr, align 8
  %call = call %struct.t_font_list_entry* @PDFFont_FindListEntry(i8* %0)
  store %struct.t_font_list_entry* %call, %struct.t_font_list_entry** %entry1, align 8
  %1 = load i8*, i8** %in_short_font_name.addr, align 8
  %2 = load i8*, i8** %in_real_font_name.addr, align 8
  %3 = load i8*, i8** %in_font_encoding_name.addr, align 8
  %call2 = call i32 @PDFFont_FindFontEncoding(i8* %3)
  %call3 = call %struct.t_font_list_entry* @PDFFont_NewListEntry(i8* %1, i8* %2, i32 %call2)
  store %struct.t_font_list_entry* %call3, %struct.t_font_list_entry** %entry1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.t_font_list_entry* @PDFFont_FindListEntry(i8* %in_real_font_name) #0 {
entry:
  %in_real_font_name.addr = alloca i8*, align 8
  %entry1 = alloca %struct.t_font_list_entry*, align 8
  store i8* %in_real_font_name, i8** %in_real_font_name.addr, align 8
  %0 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_list_entry* %0, %struct.t_font_list_entry** %entry1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %cmp = icmp ne %struct.t_font_list_entry* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %in_real_font_name.addr, align 8
  %3 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %m_actual_font_name = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %3, i32 0, i32 3
  %4 = load i8*, i8** %m_actual_font_name, align 8
  %call = call i32 @strcmp(i8* %2, i8* %4) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %m_next_font_entry = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %5, i32 0, i32 0
  %6 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %m_next_font_entry, align 8
  store %struct.t_font_list_entry* %6, %struct.t_font_list_entry** %entry1, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %7 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  ret %struct.t_font_list_entry* %7
}

; Function Attrs: nounwind uwtable
define internal %struct.t_font_list_entry* @PDFFont_NewListEntry(i8* %in_short_font_name, i8* %in_real_font_name, i32 %in_font_encoding_obj) #0 {
entry:
  %in_short_font_name.addr = alloca i8*, align 8
  %in_real_font_name.addr = alloca i8*, align 8
  %in_font_encoding_obj.addr = alloca i32, align 4
  %next_font_num = alloca i32, align 4
  %new_entry = alloca %struct.t_font_list_entry*, align 8
  %PDF_font_name = alloca [64 x i8], align 16
  %num = alloca [32 x i8], align 16
  store i8* %in_short_font_name, i8** %in_short_font_name.addr, align 8
  store i8* %in_real_font_name, i8** %in_real_font_name.addr, align 8
  store i32 %in_font_encoding_obj, i32* %in_font_encoding_obj.addr, align 4
  store i32 0, i32* %next_font_num, align 4
  %0 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_list_entry* %0, %struct.t_font_list_entry** %new_entry, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %cmp = icmp ne %struct.t_font_list_entry* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %next_font_num, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %next_font_num, align 4
  %3 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %m_next_font_entry = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %3, i32 0, i32 0
  %4 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %m_next_font_entry, align 8
  store %struct.t_font_list_entry* %4, %struct.t_font_list_entry** %new_entry, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = bitcast [64 x i8]* %PDF_font_name to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 64, i32 16, i1 false)
  %6 = bitcast i8* %5 to [64 x i8]*
  %7 = getelementptr [64 x i8], [64 x i8]* %6, i32 0, i32 0
  store i8 47, i8* %7
  %8 = getelementptr [64 x i8], [64 x i8]* %6, i32 0, i32 1
  store i8 70, i8* %8
  %call = call noalias i8* @malloc(i64 48) #5
  %9 = bitcast i8* %call to %struct.t_font_list_entry*
  store %struct.t_font_list_entry* %9, %struct.t_font_list_entry** %new_entry, align 8
  %10 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %cmp1 = icmp eq %struct.t_font_list_entry* %10, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.69, i32 0, i32 0), i32 1, %struct.FILE_POS* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %num, i32 0, i32 0
  %12 = load i32, i32* %next_font_num, align 4
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i32 %12) #5
  %arraydecay4 = getelementptr inbounds [64 x i8], [64 x i8]* %PDF_font_name, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %num, i32 0, i32 0
  %call6 = call i8* @strcat(i8* %arraydecay4, i8* %arraydecay5) #5
  %arraydecay7 = getelementptr inbounds [64 x i8], [64 x i8]* %PDF_font_name, i32 0, i32 0
  %call8 = call i64 @strlen(i8* %arraydecay7) #6
  %add = add i64 %call8, 1
  %call9 = call noalias i8* @malloc(i64 %add) #5
  %13 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %m_PDF_font_name = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %13, i32 0, i32 1
  store i8* %call9, i8** %m_PDF_font_name, align 8
  %14 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %m_PDF_font_name10 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %14, i32 0, i32 1
  %15 = load i8*, i8** %m_PDF_font_name10, align 8
  %cmp11 = icmp eq i8* %15, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.69, i32 0, i32 0), i32 1, %struct.FILE_POS* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  %17 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %m_PDF_font_name15 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %17, i32 0, i32 1
  %18 = load i8*, i8** %m_PDF_font_name15, align 8
  %arraydecay16 = getelementptr inbounds [64 x i8], [64 x i8]* %PDF_font_name, i32 0, i32 0
  %call17 = call i8* @strcpy(i8* %18, i8* %arraydecay16) #5
  %19 = load i8*, i8** %in_short_font_name.addr, align 8
  %call18 = call i64 @strlen(i8* %19) #6
  %add19 = add i64 %call18, 1
  %call20 = call noalias i8* @malloc(i64 %add19) #5
  %20 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %m_short_font_name = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %20, i32 0, i32 2
  store i8* %call20, i8** %m_short_font_name, align 8
  %21 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %m_short_font_name21 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %21, i32 0, i32 2
  %22 = load i8*, i8** %m_short_font_name21, align 8
  %cmp22 = icmp eq i8* %22, null
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.14
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call24 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.69, i32 0, i32 0), i32 1, %struct.FILE_POS* %23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.14
  %24 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %m_short_font_name26 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %24, i32 0, i32 2
  %25 = load i8*, i8** %m_short_font_name26, align 8
  %26 = load i8*, i8** %in_short_font_name.addr, align 8
  %call27 = call i8* @strcpy(i8* %25, i8* %26) #5
  %27 = load i8*, i8** %in_real_font_name.addr, align 8
  %call28 = call i64 @strlen(i8* %27) #6
  %add29 = add i64 %call28, 1
  %call30 = call noalias i8* @malloc(i64 %add29) #5
  %28 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %m_actual_font_name = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %28, i32 0, i32 3
  store i8* %call30, i8** %m_actual_font_name, align 8
  %29 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %m_actual_font_name31 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %29, i32 0, i32 3
  %30 = load i8*, i8** %m_actual_font_name31, align 8
  %cmp32 = icmp eq i8* %30, null
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.25
  %31 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call34 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.69, i32 0, i32 0), i32 1, %struct.FILE_POS* %31)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.25
  %32 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %m_actual_font_name36 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %32, i32 0, i32 3
  %33 = load i8*, i8** %m_actual_font_name36, align 8
  %34 = load i8*, i8** %in_real_font_name.addr, align 8
  %call37 = call i8* @strcpy(i8* %33, i8* %34) #5
  %35 = load i32, i32* %in_font_encoding_obj.addr, align 4
  %36 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %m_font_encoding_obj = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %36, i32 0, i32 4
  store i32 %35, i32* %m_font_encoding_obj, align 4
  %37 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %m_pdf_object_number = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %37, i32 0, i32 5
  store i32 0, i32* %m_pdf_object_number, align 4
  %38 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %m_font_resource_in_pdf = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %38, i32 0, i32 6
  store i32 0, i32* %m_font_resource_in_pdf, align 4
  %39 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  %40 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  %m_next_font_entry38 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %40, i32 0, i32 0
  store %struct.t_font_list_entry* %39, %struct.t_font_list_entry** %m_next_font_entry38, align 8
  %41 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  store %struct.t_font_list_entry* %41, %struct.t_font_list_entry** @g_font_list, align 8
  %42 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %new_entry, align 8
  ret %struct.t_font_list_entry* %42
}

; Function Attrs: nounwind uwtable
define internal i32 @PDFFont_FindFontEncoding(i8* %in_font_encoding_name) #0 {
entry:
  %retval = alloca i32, align 4
  %in_font_encoding_name.addr = alloca i8*, align 8
  %entry1 = alloca %struct.t_font_encoding_entry*, align 8
  store i8* %in_font_encoding_name, i8** %in_font_encoding_name.addr, align 8
  %0 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** @g_font_encoding_list, align 8
  store %struct.t_font_encoding_entry* %0, %struct.t_font_encoding_entry** %entry1, align 8
  %1 = load i8*, i8** %in_font_encoding_name.addr, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %if.end
  %2 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %entry1, align 8
  %cmp2 = icmp ne %struct.t_font_encoding_entry* %2, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %in_font_encoding_name.addr, align 8
  %4 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %entry1, align 8
  %m_font_encoding = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %4, i32 0, i32 2
  %5 = load i8*, i8** %m_font_encoding, align 8
  %call = call i32 @strcmp(i8* %3, i8* %5) #6
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  br label %while.end

if.end.5:                                         ; preds = %while.body
  %6 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %entry1, align 8
  %m_next_entry = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %6, i32 0, i32 0
  %7 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %m_next_entry, align 8
  store %struct.t_font_encoding_entry* %7, %struct.t_font_encoding_entry** %entry1, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.4, %while.cond
  %8 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %entry1, align 8
  %cmp6 = icmp ne %struct.t_font_encoding_entry* %8, null
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %9 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %entry1, align 8
  %m_object_num = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %9, i32 0, i32 1
  %10 = load i32, i32* %m_object_num, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define void @PDFPage_SetVars(i32 %xsize, i32 %ysize, i32 %xmark, i32 %ymark, i32 %loutf, i32 %loutv, i32 %louts) #0 {
entry:
  %xsize.addr = alloca i32, align 4
  %ysize.addr = alloca i32, align 4
  %xmark.addr = alloca i32, align 4
  %ymark.addr = alloca i32, align 4
  %loutf.addr = alloca i32, align 4
  %loutv.addr = alloca i32, align 4
  %louts.addr = alloca i32, align 4
  store i32 %xsize, i32* %xsize.addr, align 4
  store i32 %ysize, i32* %ysize.addr, align 4
  store i32 %xmark, i32* %xmark.addr, align 4
  store i32 %ymark, i32* %ymark.addr, align 4
  store i32 %loutf, i32* %loutf.addr, align 4
  store i32 %loutv, i32* %loutv.addr, align 4
  store i32 %louts, i32* %louts.addr, align 4
  %0 = load i32, i32* %xsize.addr, align 4
  store i32 %0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 0), align 4
  %1 = load i32, i32* %ysize.addr, align 4
  store i32 %1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 1), align 4
  %2 = load i32, i32* %xmark.addr, align 4
  store i32 %2, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 2), align 4
  %3 = load i32, i32* %ymark.addr, align 4
  store i32 %3, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 3), align 4
  %4 = load i32, i32* %loutf.addr, align 4
  store i32 %4, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 4), align 4
  %5 = load i32, i32* %loutv.addr, align 4
  store i32 %5, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 5), align 4
  %6 = load i32, i32* %louts.addr, align 4
  store i32 %6, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 6), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_Write(%struct._IO_FILE* %in_fp, i8* %in_str) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_str.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i8* %in_str, i8** %in_str.addr, align 8
  %0 = load i8*, i8** %in_str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.17

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_Begin(%struct._IO_FILE* %2)
  %3 = load i32, i32* @g_in_buffering_mode, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.2, label %if.else.10

if.then.2:                                        ; preds = %if.end
  %4 = load i8*, i8** %in_str.addr, align 8
  %call = call i64 @strlen(i8* %4) #6
  %conv3 = trunc i64 %call to i32
  store i32 %conv3, i32* %len, align 4
  %5 = load i32, i32* @g_buffer_pos, align 4
  %6 = load i32, i32* %len, align 4
  %add = add i32 %5, %6
  %cmp4 = icmp ugt i32 %add, 1023
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_FlushBuffer(%struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %9 = load i8*, i8** %in_str.addr, align 8
  call void @PDFPage_WriteStream(%struct._IO_FILE* %8, i8* %9)
  br label %if.end.9

if.else:                                          ; preds = %if.then.2
  %10 = load i32, i32* @g_buffer_pos, align 4
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @g_buffer, i32 0, i32 0), i64 %idx.ext
  %11 = load i8*, i8** %in_str.addr, align 8
  %call7 = call i8* @strcpy(i8* %add.ptr, i8* %11) #5
  %12 = load i32, i32* %len, align 4
  %13 = load i32, i32* @g_buffer_pos, align 4
  %add8 = add i32 %13, %12
  store i32 %add8, i32* @g_buffer_pos, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  br label %if.end.17

if.else.10:                                       ; preds = %if.end
  %14 = load i32, i32* @g_TJ_pending, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.else.10
  store i32 0, i32* @g_TJ_pending, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_WriteStream(%struct._IO_FILE* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.else.10
  %16 = load i32, i32* @g_ET_pending, align 4
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  store i32 0, i32* @g_ET_pending, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_WriteStream(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* @g_valid_text_matrix, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %19 = load i8*, i8** %in_str.addr, align 8
  call void @PDFPage_WriteStream(%struct._IO_FILE* %18, i8* %19)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then, %if.end.16, %if.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFPage_Begin(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  %0 = load i32, i32* @g_page_contents_obj_num, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @g_PDF_debug, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %3 = load i32, i32* @g_page_count, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i32 0, i32 0), i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call2 = call i32 @PDFObject_WriteNewObj(%struct._IO_FILE* %4)
  store i32 %call2, i32* @g_page_contents_obj_num, align 4
  %call3 = call i32 @PDFObject_New()
  store i32 %call3, i32* @g_page_length_obj_num, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0), %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %7 = load i32, i32* @g_page_length_obj_num, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %6, i32 %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0), %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call6 = call i64 @ftell(%struct._IO_FILE* %9)
  %conv = trunc i64 %call6 to i32
  store i32 %conv, i32* @g_page_start_offset, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %10 = load float, float* @g_page_h_scale_factor, align 4
  %conv7 = fpext float %10 to double
  %11 = load float, float* @g_page_v_scale_factor, align 4
  %conv8 = fpext float %11 to double
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), double %conv7, double %conv8) #5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %arraydecay10 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_WriteStream(%struct._IO_FILE* %12, i8* %arraydecay10)
  %arraydecay11 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %13 = load i32, i32* @g_page_line_width, align 4
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i32 %13) #5
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %arraydecay13 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_WriteStream(%struct._IO_FILE* %14, i8* %arraydecay13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFPage_FlushBuffer(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %entry1 = alloca %struct.t_qsave_marking_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  %0 = load i32, i32* @g_in_buffering_mode, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @g_in_buffering_mode, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  %cmp = icmp ne %struct.t_qsave_marking_entry* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  store %struct.t_qsave_marking_entry* %2, %struct.t_qsave_marking_entry** %entry1, align 8
  %3 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry1, align 8
  %m_next_entry = getelementptr inbounds %struct.t_qsave_marking_entry, %struct.t_qsave_marking_entry* %3, i32 0, i32 0
  %4 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %m_next_entry, align 8
  store %struct.t_qsave_marking_entry* %4, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  %5 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry1, align 8
  %6 = bitcast %struct.t_qsave_marking_entry* %5 to i8*
  call void @free(i8* %6) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_WriteStream(%struct._IO_FILE* %7, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @g_buffer, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFPage_WriteStream(%struct._IO_FILE* %in_fp, i8* %in_str) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_str.addr = alloca i8*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i8* %in_str, i8** %in_str.addr, align 8
  %0 = load i8*, i8** %in_str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %in_str.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call = call i32 @fputs(i8* %2, %struct._IO_FILE* %3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_Push(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %entry1 = alloca %struct.t_qsave_entry*, align 8
  %entry4 = alloca %struct.t_qsave_marking_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  %call = call noalias i8* @malloc(i64 24) #5
  %0 = bitcast i8* %call to %struct.t_qsave_entry*
  store %struct.t_qsave_entry* %0, %struct.t_qsave_entry** %entry1, align 8
  %1 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry1, align 8
  %cmp = icmp eq %struct.t_qsave_entry* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i32 1, %struct.FILE_POS* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @g_page_h_origin, align 4
  %4 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry1, align 8
  %m_page_h_origin = getelementptr inbounds %struct.t_qsave_entry, %struct.t_qsave_entry* %4, i32 0, i32 1
  store i32 %3, i32* %m_page_h_origin, align 4
  %5 = load i32, i32* @g_page_v_origin, align 4
  %6 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry1, align 8
  %m_page_v_origin = getelementptr inbounds %struct.t_qsave_entry, %struct.t_qsave_entry* %6, i32 0, i32 2
  store i32 %5, i32* %m_page_v_origin, align 4
  %7 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** @g_qsave_stack, align 8
  %8 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry1, align 8
  %m_next_entry = getelementptr inbounds %struct.t_qsave_entry, %struct.t_qsave_entry* %8, i32 0, i32 0
  store %struct.t_qsave_entry* %7, %struct.t_qsave_entry** %m_next_entry, align 8
  %9 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry1, align 8
  store %struct.t_qsave_entry* %9, %struct.t_qsave_entry** @g_qsave_stack, align 8
  %10 = load i32, i32* @g_in_buffering_mode, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %if.end
  %call5 = call noalias i8* @malloc(i64 16) #5
  %11 = bitcast i8* %call5 to %struct.t_qsave_marking_entry*
  store %struct.t_qsave_marking_entry* %11, %struct.t_qsave_marking_entry** %entry4, align 8
  %12 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry4, align 8
  %cmp6 = icmp eq %struct.t_qsave_marking_entry* %12, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.then.3
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call8 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i32 1, %struct.FILE_POS* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.3
  %14 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  %15 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry4, align 8
  %m_next_entry10 = getelementptr inbounds %struct.t_qsave_marking_entry, %struct.t_qsave_marking_entry* %15, i32 0, i32 0
  store %struct.t_qsave_marking_entry* %14, %struct.t_qsave_marking_entry** %m_next_entry10, align 8
  %16 = load i32, i32* @g_buffer_pos, align 4
  %17 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry4, align 8
  %m_buffer_pos = getelementptr inbounds %struct.t_qsave_marking_entry, %struct.t_qsave_marking_entry* %17, i32 0, i32 1
  store i32 %16, i32* %m_buffer_pos, align 4
  %18 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry4, align 8
  store %struct.t_qsave_marking_entry* %18, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.9, %if.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_Pop(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %entry1 = alloca %struct.t_qsave_entry*, align 8
  %entry2 = alloca %struct.t_qsave_marking_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  %0 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** @g_qsave_stack, align 8
  store %struct.t_qsave_entry* %0, %struct.t_qsave_entry** %entry1, align 8
  %1 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry1, align 8
  %m_page_h_origin = getelementptr inbounds %struct.t_qsave_entry, %struct.t_qsave_entry* %1, i32 0, i32 1
  %2 = load i32, i32* %m_page_h_origin, align 4
  store i32 %2, i32* @g_page_h_origin, align 4
  %3 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry1, align 8
  %m_page_v_origin = getelementptr inbounds %struct.t_qsave_entry, %struct.t_qsave_entry* %3, i32 0, i32 2
  %4 = load i32, i32* %m_page_v_origin, align 4
  store i32 %4, i32* @g_page_v_origin, align 4
  %5 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry1, align 8
  %m_next_entry = getelementptr inbounds %struct.t_qsave_entry, %struct.t_qsave_entry* %5, i32 0, i32 0
  %6 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %m_next_entry, align 8
  store %struct.t_qsave_entry* %6, %struct.t_qsave_entry** @g_qsave_stack, align 8
  %7 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** %entry1, align 8
  %8 = bitcast %struct.t_qsave_entry* %7 to i8*
  call void @free(i8* %8) #5
  %9 = load i32, i32* @g_in_buffering_mode, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  store %struct.t_qsave_marking_entry* %10, %struct.t_qsave_marking_entry** %entry2, align 8
  %11 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry2, align 8
  %cmp = icmp ne %struct.t_qsave_marking_entry* %11, null
  %conv = zext i1 %cmp to i32
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv, %struct.FILE_POS* %12)
  %13 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry2, align 8
  %m_next_entry3 = getelementptr inbounds %struct.t_qsave_marking_entry, %struct.t_qsave_marking_entry* %13, i32 0, i32 0
  %14 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %m_next_entry3, align 8
  store %struct.t_qsave_marking_entry* %14, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  %15 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry2, align 8
  %m_buffer_pos = getelementptr inbounds %struct.t_qsave_marking_entry, %struct.t_qsave_marking_entry* %15, i32 0, i32 1
  %16 = load i32, i32* %m_buffer_pos, align 4
  store i32 %16, i32* @g_buffer_pos, align 4
  %17 = load i32, i32* @g_buffer_pos, align 4
  %idxprom = zext i32 %17 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* @g_buffer, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %18 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** %entry2, align 8
  %19 = bitcast %struct.t_qsave_marking_entry* %18 to i8*
  call void @free(i8* %19) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load %struct.t_qsave_marking_entry*, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  %cmp4 = icmp eq %struct.t_qsave_marking_entry* %20, null
  %conv5 = zext i1 %cmp4 to i32
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv5, %struct.FILE_POS* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @Assert(i32 %condition, %struct.FILE_POS* %inFilePos) #0 {
entry:
  %condition.addr = alloca i32, align 4
  %inFilePos.addr = alloca %struct.FILE_POS*, align 8
  store i32 %condition, i32* %condition.addr, align 4
  store %struct.FILE_POS* %inFilePos, %struct.FILE_POS** %inFilePos.addr, align 8
  %0 = load i32, i32* %condition.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %condition.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** %inFilePos.addr, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, %struct.FILE_POS* %3)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFFont_Set(%struct._IO_FILE* %in_fp, i32 %in_font_size, i8* %in_short_font_name) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_font_size.addr = alloca i32, align 4
  %in_short_font_name.addr = alloca i8*, align 8
  %str = alloca [512 x i8], align 16
  %entry1 = alloca %struct.t_font_list_entry*, align 8
  %cur_ET_pending = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i32 %in_font_size, i32* %in_font_size.addr, align 4
  store i8* %in_short_font_name, i8** %in_short_font_name.addr, align 8
  %0 = load i8*, i8** %in_short_font_name.addr, align 8
  %call = call %struct.t_font_list_entry* @PDFFont_FindListEntry_Short(i8* %0)
  store %struct.t_font_list_entry* %call, %struct.t_font_list_entry** %entry1, align 8
  %1 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %cmp = icmp eq %struct.t_font_list_entry* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3 = load i8*, i8** %in_short_font_name.addr, align 8
  %call2 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.FILE_POS* %2, i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %4 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %m_PDF_font_name = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %4, i32 0, i32 1
  %5 = load i8*, i8** %m_PDF_font_name, align 8
  %6 = load i32, i32* %in_font_size.addr, align 4
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* %5, i32 %6) #5
  %7 = load i32, i32* @g_TJ_pending, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* @g_TJ_pending, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_WriteStream(%struct._IO_FILE* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %9 = load i32, i32* @g_ET_pending, align 4
  store i32 %9, i32* %cur_ET_pending, align 4
  store i32 0, i32* @g_ET_pending, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %arraydecay6 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %10, i8* %arraydecay6)
  %11 = load i32, i32* %cur_ET_pending, align 4
  store i32 %11, i32* @g_ET_pending, align 4
  %12 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %m_in_use = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %12, i32 0, i32 7
  store i32 1, i32* %m_in_use, align 4
  store i32 1, i32* @g_page_uses_fonts, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.t_font_list_entry* @PDFFont_FindListEntry_Short(i8* %in_short_font_name) #0 {
entry:
  %in_short_font_name.addr = alloca i8*, align 8
  %entry1 = alloca %struct.t_font_list_entry*, align 8
  store i8* %in_short_font_name, i8** %in_short_font_name.addr, align 8
  %0 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_list_entry* %0, %struct.t_font_list_entry** %entry1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %cmp = icmp ne %struct.t_font_list_entry* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %in_short_font_name.addr, align 8
  %3 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %m_short_font_name = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %3, i32 0, i32 2
  %4 = load i8*, i8** %m_short_font_name, align 8
  %call = call i32 @strcmp(i8* %2, i8* %4) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %m_next_font_entry = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %5, i32 0, i32 0
  %6 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %m_next_font_entry, align 8
  store %struct.t_font_list_entry* %6, %struct.t_font_list_entry** %entry1, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %7 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  ret %struct.t_font_list_entry* %7
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @PDFText_OpenXY(%struct._IO_FILE* %in_fp, i32 %hpos, i32 %vpos) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %hpos.addr = alloca i32, align 4
  %vpos.addr = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i32 %hpos, i32* %hpos.addr, align 4
  store i32 %vpos, i32* %vpos.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFText_OpenBT(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %2 = load i32, i32* %hpos.addr, align 4
  %3 = load i32, i32* %vpos.addr, align 4
  call void @PDFText_MoveToXYAndOpen(%struct._IO_FILE* %1, i32 %2, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFText_OpenBT(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_FlushBuffer(%struct._IO_FILE* %0)
  store i32 1, i32* @g_page_has_text, align 4
  %1 = load i32, i32* @g_TJ_pending, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @g_TJ_pending, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_WriteStream(%struct._IO_FILE* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @g_ET_pending, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* @g_ET_pending, align 4
  br label %if.end.3

if.else:                                          ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0))
  store i32 1, i32* @g_valid_text_matrix, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFText_MoveToXYAndOpen(%struct._IO_FILE* %in_fp, i32 %hpos, i32 %vpos) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %hpos.addr = alloca i32, align 4
  %vpos.addr = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i32 %hpos, i32* %hpos.addr, align 4
  store i32 %vpos, i32* %vpos.addr, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %0 = load i32, i32* %hpos.addr, align 4
  %1 = load i32, i32* %vpos.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i32 0, i32 0), i32 %0, i32 %1) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %arraydecay1 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %2, i8* %arraydecay1)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFText_OpenString(%struct._IO_FILE* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFText_OpenX(%struct._IO_FILE* %in_fp, i32 %hpos) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %hpos.addr = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i32 %hpos, i32* %hpos.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFText_OpenBT(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %2 = load i32, i32* %hpos.addr, align 4
  call void @PDFText_MoveToXAndOpen(%struct._IO_FILE* %1, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFText_MoveToXAndOpen(%struct._IO_FILE* %in_fp, i32 %hpos) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %hpos.addr = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i32 %hpos, i32* %hpos.addr, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %0 = load i32, i32* %hpos.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 %0) #5
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %arraydecay1 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %1, i8* %arraydecay1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFText_OpenString(%struct._IO_FILE* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFText_Open(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  %0 = load i32, i32* @g_TJ_pending, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @g_TJ_pending, align 4
  %1 = load i32, i32* @g_ET_pending, align 4
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv, %struct.FILE_POS* %2)
  store i32 0, i32* @g_ET_pending, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFText_OpenBT(%struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFText_OpenString(%struct._IO_FILE* %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFText_OpenString(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  %0 = load i32, i32* @g_TJ_pending, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @g_TJ_pending, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_Write(%struct._IO_FILE* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFText_Kern(%struct._IO_FILE* %in_fp, i32 %in_kern) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_kern.addr = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i32 %in_kern, i32* %in_kern.addr, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %0 = load i32, i32* %in_kern.addr, align 4
  %sub = sub nsw i32 0, %0
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %sub) #5
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %arraydecay1 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %1, i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFText_Close(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  %0 = load i32, i32* @g_page_contents_obj_num, align 4
  %cmp = icmp ne i32 %0, 0
  %conv = zext i1 %cmp to i32
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv, %struct.FILE_POS* %1)
  store i32 1, i32* @g_TJ_pending, align 4
  store i32 1, i32* @g_ET_pending, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_Scale(%struct._IO_FILE* %in_fp, float %in_h_scale_factor, float %in_v_scale_factor) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_h_scale_factor.addr = alloca float, align 4
  %in_v_scale_factor.addr = alloca float, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store float %in_h_scale_factor, float* %in_h_scale_factor.addr, align 4
  store float %in_v_scale_factor, float* %in_v_scale_factor.addr, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %0 = load float, float* %in_h_scale_factor.addr, align 4
  %conv = fpext float %0 to double
  %1 = load float, float* %in_v_scale_factor.addr, align 4
  %conv1 = fpext float %1 to double
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), double %conv, double %conv1) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %arraydecay2 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %2, i8* %arraydecay2)
  %3 = load float, float* %in_h_scale_factor.addr, align 4
  %4 = load float, float* @g_page_h_scale_factor, align 4
  %mul = fmul float %4, %3
  store float %mul, float* @g_page_h_scale_factor, align 4
  %5 = load float, float* %in_v_scale_factor.addr, align 4
  %6 = load float, float* @g_page_v_scale_factor, align 4
  %mul3 = fmul float %6, %5
  store float %mul3, float* @g_page_v_scale_factor, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_Rotate(%struct._IO_FILE* %in_fp, float %in_angle_in_radians) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_angle_in_radians.addr = alloca float, align 4
  %cos_radians = alloca float, align 4
  %sin_radians = alloca float, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store float %in_angle_in_radians, float* %in_angle_in_radians.addr, align 4
  %0 = load float, float* %in_angle_in_radians.addr, align 4
  %conv = fpext float %0 to double
  %call = call double @cos(double %conv) #5
  %conv1 = fptrunc double %call to float
  store float %conv1, float* %cos_radians, align 4
  %1 = load float, float* %in_angle_in_radians.addr, align 4
  %conv2 = fpext float %1 to double
  %call3 = call double @sin(double %conv2) #5
  %conv4 = fptrunc double %call3 to float
  store float %conv4, float* %sin_radians, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %2 = load float, float* %cos_radians, align 4
  %conv5 = fpext float %2 to double
  %3 = load float, float* %sin_radians, align 4
  %conv6 = fpext float %3 to double
  %4 = load float, float* %sin_radians, align 4
  %sub = fsub float -0.000000e+00, %4
  %conv7 = fpext float %sub to double
  %5 = load float, float* %cos_radians, align 4
  %conv8 = fpext float %5 to double
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0), double %conv5, double %conv6, double %conv7, double %conv8) #5
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %arraydecay10 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %6, i8* %arraydecay10)
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind uwtable
define void @PDFPage_Translate(%struct._IO_FILE* %in_fp, float %in_delta_h, float %in_delta_v) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_delta_h.addr = alloca float, align 4
  %in_delta_v.addr = alloca float, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store float %in_delta_h, float* %in_delta_h.addr, align 4
  store float %in_delta_v, float* %in_delta_v.addr, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %0 = load float, float* %in_delta_h.addr, align 4
  %conv = fpext float %0 to double
  %1 = load float, float* %in_delta_v.addr, align 4
  %conv1 = fpext float %1 to double
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), double %conv, double %conv1) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %arraydecay2 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %2, i8* %arraydecay2)
  %3 = load float, float* %in_delta_h.addr, align 4
  %4 = load i32, i32* @g_page_h_origin, align 4
  %conv3 = sitofp i32 %4 to float
  %add = fadd float %conv3, %3
  %conv4 = fptosi float %add to i32
  store i32 %conv4, i32* @g_page_h_origin, align 4
  %5 = load float, float* %in_delta_v.addr, align 4
  %6 = load i32, i32* @g_page_v_origin, align 4
  %conv5 = sitofp i32 %6 to float
  %add6 = fadd float %conv5, %5
  %conv7 = fptosi float %add6 to i32
  store i32 %conv7, i32* @g_page_v_origin, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_WriteGraphic(%struct._IO_FILE* %in_fp, i8* %in_str) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_str.addr = alloca i8*, align 8
  %str = alloca [512 x i8], align 16
  %charPtr = alloca i8*, align 8
  %strPtr = alloca i8*, align 8
  %hasResult = alloca i32, align 4
  %value = alloca float, align 4
  %i = alloca i32, align 4
  %value19 = alloca float, align 4
  %hasResult105 = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i8* %in_str, i8** %in_str.addr, align 8
  %0 = load i8*, i8** %in_str.addr, align 8
  store i8* %0, i8** %charPtr, align 8
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  store i8* %arraydecay, i8** %strPtr, align 8
  %1 = load i8*, i8** %charPtr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @g_expr_depth, align 4
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  %4 = load i8*, i8** %charPtr, align 8
  %call = call i8* @PDFPage_CollectExpr(i8* %4, i32* %hasResult, float* %value)
  store i8* %call, i8** %charPtr, align 8
  %5 = load i32, i32* %hasResult, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.then.4
  %6 = load i8*, i8** %strPtr, align 8
  %7 = load float, float* %value, align 4
  %conv6 = fpext float %7 to double
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), double %conv6) #5
  %8 = load i8*, i8** %strPtr, align 8
  %call8 = call i64 @strlen(i8* %8) #6
  %9 = load i8*, i8** %strPtr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %call8
  store i8* %add.ptr, i8** %strPtr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %10 = load i32, i32* @g_link_depth, align 4
  %cmp11 = icmp ne i32 %10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.10
  %11 = load i8*, i8** %charPtr, align 8
  %call14 = call i8* @PDFPage_CollectLink(i8* %11)
  store i8* %call14, i8** %charPtr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %if.end.126, %if.end.15
  %12 = load i8*, i8** %charPtr, align 8
  %13 = load i8, i8* %12, align 1
  %conv16 = zext i8 %13 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %while.body, label %while.end.127

while.body:                                       ; preds = %while.cond
  %14 = load i8*, i8** %strPtr, align 8
  %arraydecay20 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %add.ptr21 = getelementptr inbounds i8, i8* %arraydecay20, i64 512
  %cmp22 = icmp ult i8* %14, %add.ptr21
  %conv23 = zext i1 %cmp22 to i32
  %15 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv23, %struct.FILE_POS* %15)
  %16 = load i8*, i8** %charPtr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx, align 1
  %conv24 = zext i8 %17 to i32
  %cmp25 = icmp eq i32 %conv24, 95
  br i1 %cmp25, label %land.lhs.true, label %if.else.123

land.lhs.true:                                    ; preds = %while.body
  %18 = load i8*, i8** %charPtr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %19 to i32
  %cmp29 = icmp eq i32 %conv28, 95
  br i1 %cmp29, label %if.then.31, label %if.else.123

if.then.31:                                       ; preds = %land.lhs.true
  %20 = load i8*, i8** %charPtr, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %20, i64 2
  store i8* %add.ptr32, i8** %charPtr, align 8
  %21 = load i8*, i8** %charPtr, align 8
  %call33 = call i32 @PDFKeyword_Find(i32 4, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @g_graphic_keywords, i32 0, i32 0), i8* %21)
  store i32 %call33, i32* %i, align 4
  %22 = load i32, i32* %i, align 4
  %cmp34 = icmp sge i32 %22, 0
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.then.31
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds [4 x i8*], [4 x i8*]* @g_graphic_keywords, i32 0, i64 %idxprom
  %24 = load i8*, i8** %arrayidx37, align 8
  %call38 = call i64 @strlen(i8* %24) #6
  %25 = load i8*, i8** %charPtr, align 8
  %add.ptr39 = getelementptr inbounds i8, i8* %25, i64 %call38
  store i8* %add.ptr39, i8** %charPtr, align 8
  %26 = load i8*, i8** %strPtr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %27 to i64
  %arrayidx41 = getelementptr inbounds [4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 %idxprom40
  %28 = load i32, i32* %arrayidx41, align 4
  %call42 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 %28) #5
  %29 = load i8*, i8** %strPtr, align 8
  %call43 = call i64 @strlen(i8* %29) #6
  %30 = load i8*, i8** %strPtr, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %30, i64 %call43
  store i8* %add.ptr44, i8** %strPtr, align 8
  br label %if.end.122

if.else:                                          ; preds = %if.then.31
  %31 = load i8*, i8** %charPtr, align 8
  %call45 = call i32 @PDFKeyword_Find(i32 5, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @g_link_keywords, i32 0, i32 0), i8* %31)
  store i32 %call45, i32* %i, align 4
  %32 = load i32, i32* %i, align 4
  %cmp46 = icmp sge i32 %32, 0
  br i1 %cmp46, label %if.then.48, label %if.else.62

if.then.48:                                       ; preds = %if.else
  %33 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %33 to i64
  %arrayidx50 = getelementptr inbounds [5 x i8*], [5 x i8*]* @g_link_keywords, i32 0, i64 %idxprom49
  %34 = load i8*, i8** %arrayidx50, align 8
  %call51 = call i64 @strlen(i8* %34) #6
  %35 = load i8*, i8** %charPtr, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %35, i64 %call51
  store i8* %add.ptr52, i8** %charPtr, align 8
  br label %while.cond.53

while.cond.53:                                    ; preds = %while.body.60, %if.then.48
  %36 = load i8*, i8** %charPtr, align 8
  %37 = load i8, i8* %36, align 1
  %conv54 = zext i8 %37 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %call56 = call i16** @__ctype_b_loc() #7
  %38 = load i16*, i16** %call56, align 8
  %arrayidx57 = getelementptr inbounds i16, i16* %38, i64 %idxprom55
  %39 = load i16, i16* %arrayidx57, align 2
  %conv58 = zext i16 %39 to i32
  %and = and i32 %conv58, 8192
  %tobool59 = icmp ne i32 %and, 0
  br i1 %tobool59, label %while.body.60, label %while.end

while.body.60:                                    ; preds = %while.cond.53
  %40 = load i8*, i8** %charPtr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %charPtr, align 8
  br label %while.cond.53

while.end:                                        ; preds = %while.cond.53
  store i32 0, i32* @g_link_index, align 4
  %41 = load i32, i32* @g_link_depth, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* @g_link_depth, align 4
  %42 = load i32, i32* %i, align 4
  store i32 %42, i32* @g_link_keyword, align 4
  %43 = load i8*, i8** %charPtr, align 8
  %call61 = call i8* @PDFPage_CollectLink(i8* %43)
  store i8* %call61, i8** %charPtr, align 8
  br label %if.end.121

if.else.62:                                       ; preds = %if.else
  %44 = load i8*, i8** %charPtr, align 8
  %call63 = call i32 @PDFKeyword_Find(i32 4, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @g_doc_info_keywords, i32 0, i32 0), i8* %44)
  store i32 %call63, i32* %i, align 4
  %45 = load i32, i32* %i, align 4
  %cmp64 = icmp sge i32 %45, 0
  br i1 %cmp64, label %if.then.66, label %if.else.72

if.then.66:                                       ; preds = %if.else.62
  %46 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %46 to i64
  %arrayidx68 = getelementptr inbounds [4 x i8*], [4 x i8*]* @g_doc_info_keywords, i32 0, i64 %idxprom67
  %47 = load i8*, i8** %arrayidx68, align 8
  %call69 = call i64 @strlen(i8* %47) #6
  %48 = load i8*, i8** %charPtr, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %48, i64 %call69
  store i8* %add.ptr70, i8** %charPtr, align 8
  %49 = load i8*, i8** %charPtr, align 8
  %50 = load i32, i32* %i, align 4
  %call71 = call i8* @PDFPage_ProcessDocInfoKeyword(i8* %49, i32 %50)
  store i8* %call71, i8** %charPtr, align 8
  br label %if.end.120

if.else.72:                                       ; preds = %if.else.62
  %51 = load i8*, i8** %charPtr, align 8
  %call73 = call i32 @PDFKeyword_Find(i32 7, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @g_arithmetic_keywords, i32 0, i32 0), i8* %51)
  store i32 %call73, i32* %i, align 4
  %52 = load i32, i32* %i, align 4
  %cmp74 = icmp sge i32 %52, 0
  br i1 %cmp74, label %if.then.76, label %if.else.115

if.then.76:                                       ; preds = %if.else.72
  %53 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %53 to i64
  %arrayidx78 = getelementptr inbounds [7 x i8*], [7 x i8*]* @g_arithmetic_keywords, i32 0, i64 %idxprom77
  %54 = load i8*, i8** %arrayidx78, align 8
  %call79 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_expr, i32 0, i32 0), i8* %54) #5
  %55 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %55 to i64
  %arrayidx81 = getelementptr inbounds [7 x i8*], [7 x i8*]* @g_arithmetic_keywords, i32 0, i64 %idxprom80
  %56 = load i8*, i8** %arrayidx81, align 8
  %call82 = call i64 @strlen(i8* %56) #6
  %57 = load i8*, i8** %charPtr, align 8
  %add.ptr83 = getelementptr inbounds i8, i8* %57, i64 %call82
  store i8* %add.ptr83, i8** %charPtr, align 8
  br label %while.cond.84

while.cond.84:                                    ; preds = %while.body.92, %if.then.76
  %58 = load i8*, i8** %charPtr, align 8
  %59 = load i8, i8* %58, align 1
  %conv85 = zext i8 %59 to i32
  %idxprom86 = sext i32 %conv85 to i64
  %call87 = call i16** @__ctype_b_loc() #7
  %60 = load i16*, i16** %call87, align 8
  %arrayidx88 = getelementptr inbounds i16, i16* %60, i64 %idxprom86
  %61 = load i16, i16* %arrayidx88, align 2
  %conv89 = zext i16 %61 to i32
  %and90 = and i32 %conv89, 8192
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %while.body.92, label %while.end.94

while.body.92:                                    ; preds = %while.cond.84
  %62 = load i8*, i8** %charPtr, align 8
  %incdec.ptr93 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr93, i8** %charPtr, align 8
  br label %while.cond.84

while.end.94:                                     ; preds = %while.cond.84
  %63 = load i8*, i8** %charPtr, align 8
  %64 = load i8, i8* %63, align 1
  %conv95 = zext i8 %64 to i32
  %cmp96 = icmp ne i32 %conv95, 40
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %while.end.94
  %65 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call99 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i32 1, %struct.FILE_POS* %65)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %while.end.94
  %call101 = call i8* @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_expr, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #5
  %call102 = call i64 @strlen(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_expr, i32 0, i32 0)) #6
  %conv103 = trunc i64 %call102 to i32
  store i32 %conv103, i32* @g_expr_index, align 4
  %66 = load i32, i32* @g_expr_depth, align 4
  %inc104 = add nsw i32 %66, 1
  store i32 %inc104, i32* @g_expr_depth, align 4
  %67 = load i8*, i8** %charPtr, align 8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr106, i8** %charPtr, align 8
  %call107 = call i8* @PDFPage_CollectExpr(i8* %incdec.ptr106, i32* %hasResult105, float* %value19)
  store i8* %call107, i8** %charPtr, align 8
  %68 = load i32, i32* %hasResult105, align 4
  %tobool108 = icmp ne i32 %68, 0
  br i1 %tobool108, label %if.then.109, label %if.end.114

if.then.109:                                      ; preds = %if.end.100
  %69 = load i8*, i8** %strPtr, align 8
  %70 = load float, float* %value19, align 4
  %conv110 = fpext float %70 to double
  %call111 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), double %conv110) #5
  %71 = load i8*, i8** %strPtr, align 8
  %call112 = call i64 @strlen(i8* %71) #6
  %72 = load i8*, i8** %strPtr, align 8
  %add.ptr113 = getelementptr inbounds i8, i8* %72, i64 %call112
  store i8* %add.ptr113, i8** %strPtr, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.109, %if.end.100
  br label %if.end.119

if.else.115:                                      ; preds = %if.else.72
  %73 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call116 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 37, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %73)
  %74 = load i8*, i8** %strPtr, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr117, i8** %strPtr, align 8
  store i8 95, i8* %74, align 1
  %75 = load i8*, i8** %strPtr, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr118, i8** %strPtr, align 8
  store i8 95, i8* %75, align 1
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.115, %if.end.114
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.66
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %while.end
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.36
  br label %if.end.126

if.else.123:                                      ; preds = %land.lhs.true, %while.body
  %76 = load i8*, i8** %charPtr, align 8
  %incdec.ptr124 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr124, i8** %charPtr, align 8
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %strPtr, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr125, i8** %strPtr, align 8
  store i8 %77, i8* %78, align 1
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.123, %if.end.122
  br label %while.cond

while.end.127:                                    ; preds = %while.cond
  %79 = load i8*, i8** %strPtr, align 8
  store i8 0, i8* %79, align 1
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_FlushBuffer(%struct._IO_FILE* %80)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %arraydecay128 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %81, i8* %arraydecay128)
  br label %return

return:                                           ; preds = %while.end.127, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @PDFPage_CollectExpr(i8* %charPtr, i32* %outHasResult, float* %outResult) #0 {
entry:
  %charPtr.addr = alloca i8*, align 8
  %outHasResult.addr = alloca i32*, align 8
  %outResult.addr = alloca float*, align 8
  %ch = alloca i8, align 1
  store i8* %charPtr, i8** %charPtr.addr, align 8
  store i32* %outHasResult, i32** %outHasResult.addr, align 8
  store float* %outResult, float** %outResult.addr, align 8
  %0 = load i32*, i32** %outHasResult.addr, align 8
  store i32 0, i32* %0, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %entry
  %1 = load i8*, i8** %charPtr.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* @g_expr_index, align 4
  %conv2 = sext i32 %3 to i64
  %cmp3 = icmp uge i64 %conv2, 512
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 34, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.80, i32 0, i32 0), i32 1, %struct.FILE_POS* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i8*, i8** %charPtr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %charPtr.addr, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %ch, align 1
  %7 = load i32, i32* @g_expr_index, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @g_expr_index, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* @g_expr, i32 0, i64 %idxprom
  store i8 %6, i8* %arrayidx, align 1
  %8 = load i8, i8* %ch, align 1
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 40
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %9 = load i32, i32* @g_expr_depth, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, i32* @g_expr_depth, align 4
  br label %if.end.24

if.else:                                          ; preds = %if.end
  %10 = load i8, i8* %ch, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 41
  br i1 %cmp11, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %if.else
  %11 = load i32, i32* @g_expr_depth, align 4
  %cmp14 = icmp ne i32 %11, 0
  %conv15 = zext i1 %cmp14 to i32
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv15, %struct.FILE_POS* %12)
  %13 = load i32, i32* @g_expr_depth, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* @g_expr_depth, align 4
  %14 = load i32, i32* @g_expr_depth, align 4
  %cmp16 = icmp eq i32 %14, 0
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.then.13
  %15 = load i32, i32* @g_expr_index, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [512 x i8], [512 x i8]* @g_expr, i32 0, i64 %idxprom19
  store i8 0, i8* %arrayidx20, align 1
  %16 = load float*, float** %outResult.addr, align 8
  %call21 = call i8* @PDFPage_EvalExpr(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_expr, i32 0, i32 0), float* %16)
  %17 = load i32*, i32** %outHasResult.addr, align 8
  store i32 1, i32* %17, align 4
  br label %while.end

if.end.22:                                        ; preds = %if.then.13
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.8
  br label %while.cond

while.end:                                        ; preds = %if.then.18, %while.cond
  %18 = load i8*, i8** %charPtr.addr, align 8
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define internal i8* @PDFPage_CollectLink(i8* %charPtr) #0 {
entry:
  %charPtr.addr = alloca i8*, align 8
  %ch = alloca i8, align 1
  store i8* %charPtr, i8** %charPtr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.41, %entry
  %0 = load i8*, i8** %charPtr.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* @g_link_index, align 4
  %conv2 = sext i32 %2 to i64
  %cmp3 = icmp uge i64 %conv2, 512
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.94, i32 0, i32 0), i32 1, %struct.FILE_POS* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %4 = load i8*, i8** %charPtr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %charPtr.addr, align 8
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %ch, align 1
  %6 = load i32, i32* @g_link_index, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @g_link_index, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* @g_link, i32 0, i64 %idxprom
  store i8 %5, i8* %arrayidx, align 1
  %7 = load i8, i8* %ch, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 60
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8*, i8** %charPtr.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv8 = zext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv8, 60
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true
  %10 = load i8*, i8** %charPtr.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr12, i8** %charPtr.addr, align 8
  %11 = load i8, i8* %10, align 1
  %12 = load i32, i32* @g_link_index, align 4
  %inc13 = add nsw i32 %12, 1
  store i32 %inc13, i32* @g_link_index, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [512 x i8], [512 x i8]* @g_link, i32 0, i64 %idxprom14
  store i8 %11, i8* %arrayidx15, align 1
  %13 = load i32, i32* @g_link_depth, align 4
  %inc16 = add nsw i32 %13, 1
  store i32 %inc16, i32* @g_link_depth, align 4
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true, %if.end
  %14 = load i8, i8* %ch, align 1
  %conv17 = sext i8 %14 to i32
  %cmp18 = icmp eq i32 %conv17, 62
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.40

land.lhs.true.20:                                 ; preds = %if.else
  %15 = load i8*, i8** %charPtr.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv21 = zext i8 %16 to i32
  %cmp22 = icmp eq i32 %conv21, 62
  br i1 %cmp22, label %if.then.24, label %if.end.40

if.then.24:                                       ; preds = %land.lhs.true.20
  %17 = load i32, i32* @g_link_depth, align 4
  %cmp25 = icmp ne i32 %17, 0
  %conv26 = zext i1 %cmp25 to i32
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv26, %struct.FILE_POS* %18)
  %19 = load i32, i32* @g_link_depth, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* @g_link_depth, align 4
  %20 = load i32, i32* @g_link_depth, align 4
  %cmp27 = icmp eq i32 %20, 0
  br i1 %cmp27, label %if.then.29, label %if.else.34

if.then.29:                                       ; preds = %if.then.24
  %21 = load i32, i32* @g_link_index, align 4
  %dec30 = add nsw i32 %21, -1
  store i32 %dec30, i32* @g_link_index, align 4
  %idxprom31 = sext i32 %dec30 to i64
  %arrayidx32 = getelementptr inbounds [512 x i8], [512 x i8]* @g_link, i32 0, i64 %idxprom31
  store i8 0, i8* %arrayidx32, align 1
  call void @PDFPage_ProcessLinkKeyword()
  %22 = load i8*, i8** %charPtr.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr33, i8** %charPtr.addr, align 8
  br label %while.end

if.else.34:                                       ; preds = %if.then.24
  %23 = load i8*, i8** %charPtr.addr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr35, i8** %charPtr.addr, align 8
  %24 = load i8, i8* %23, align 1
  %25 = load i32, i32* @g_link_index, align 4
  %inc36 = add nsw i32 %25, 1
  store i32 %inc36, i32* @g_link_index, align 4
  %idxprom37 = sext i32 %25 to i64
  %arrayidx38 = getelementptr inbounds [512 x i8], [512 x i8]* @g_link, i32 0, i64 %idxprom37
  store i8 %24, i8* %arrayidx38, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.34
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true.20, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.11
  br label %while.cond

while.end:                                        ; preds = %if.then.29, %while.cond
  %26 = load i8*, i8** %charPtr.addr, align 8
  ret i8* %26
}

; Function Attrs: nounwind uwtable
define internal i32 @PDFKeyword_Find(i32 %in_number_of_array_elements, i8** %in_keyword_array, i8* %in_str) #0 {
entry:
  %in_number_of_array_elements.addr = alloca i32, align 4
  %in_keyword_array.addr = alloca i8**, align 8
  %in_str.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  store i32 %in_number_of_array_elements, i32* %in_number_of_array_elements.addr, align 4
  store i8** %in_keyword_array, i8*** %in_keyword_array.addr, align 8
  store i8* %in_str, i8** %in_str.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %in_number_of_array_elements.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i8**, i8*** %in_keyword_array.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %4) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %5 to i64
  %6 = load i8**, i8*** %in_keyword_array.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx2, align 8
  %8 = load i8*, i8** %in_str.addr, align 8
  %9 = load i32, i32* %len, align 4
  %conv3 = zext i32 %9 to i64
  %call4 = call i32 @memcmp(i8* %7, i8* %8, i64 %conv3) #6
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %in_number_of_array_elements.addr, align 4
  %cmp7 = icmp ult i32 %11, %12
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ -1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define internal i8* @PDFPage_ProcessDocInfoKeyword(i8* %charPtr, i32 %i) #0 {
entry:
  %charPtr.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  store i8* %charPtr, i8** %charPtr.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.7
    i32 2, label %sw.bb.20
    i32 3, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** @g_doc_author, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %2 = load i8*, i8** @g_doc_author, align 8
  call void @free(i8* %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %3 = load i8*, i8** %charPtr.addr, align 8
  %call = call i64 @strlen(i8* %3) #6
  %add = add i64 %call, 1
  %call1 = call noalias i8* @malloc(i64 %add) #5
  store i8* %call1, i8** @g_doc_author, align 8
  %4 = load i8*, i8** @g_doc_author, align 8
  %cmp2 = icmp eq i8* %4, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %5 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.122, i32 0, i32 0), i32 2, %struct.FILE_POS* %5)
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %6 = load i8*, i8** @g_doc_author, align 8
  %7 = load i8*, i8** %charPtr.addr, align 8
  %call5 = call i8* @strcpy(i8* %6, i8* %7) #5
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %8 = load i8*, i8** @g_doc_title, align 8
  %cmp8 = icmp ne i8* %8, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.bb.7
  %9 = load i8*, i8** @g_doc_title, align 8
  call void @free(i8* %9) #5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %sw.bb.7
  %10 = load i8*, i8** %charPtr.addr, align 8
  %call11 = call i64 @strlen(i8* %10) #6
  %add12 = add i64 %call11, 1
  %call13 = call noalias i8* @malloc(i64 %add12) #5
  store i8* %call13, i8** @g_doc_title, align 8
  %11 = load i8*, i8** @g_doc_title, align 8
  %cmp14 = icmp eq i8* %11, null
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.end.10
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call16 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.123, i32 0, i32 0), i32 2, %struct.FILE_POS* %12)
  br label %if.end.19

if.else.17:                                       ; preds = %if.end.10
  %13 = load i8*, i8** @g_doc_title, align 8
  %14 = load i8*, i8** %charPtr.addr, align 8
  %call18 = call i8* @strcpy(i8* %13, i8* %14) #5
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.17, %if.then.15
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %15 = load i8*, i8** @g_doc_subject, align 8
  %cmp21 = icmp ne i8* %15, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %sw.bb.20
  %16 = load i8*, i8** @g_doc_subject, align 8
  call void @free(i8* %16) #5
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %sw.bb.20
  %17 = load i8*, i8** %charPtr.addr, align 8
  %call24 = call i64 @strlen(i8* %17) #6
  %add25 = add i64 %call24, 1
  %call26 = call noalias i8* @malloc(i64 %add25) #5
  store i8* %call26, i8** @g_doc_subject, align 8
  %18 = load i8*, i8** @g_doc_subject, align 8
  %cmp27 = icmp eq i8* %18, null
  br i1 %cmp27, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.end.23
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call29 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 47, i32 28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.124, i32 0, i32 0), i32 2, %struct.FILE_POS* %19)
  br label %if.end.32

if.else.30:                                       ; preds = %if.end.23
  %20 = load i8*, i8** @g_doc_subject, align 8
  %21 = load i8*, i8** %charPtr.addr, align 8
  %call31 = call i8* @strcpy(i8* %20, i8* %21) #5
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.28
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %22 = load i8*, i8** @g_doc_keywords, align 8
  %cmp34 = icmp ne i8* %22, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %sw.bb.33
  %23 = load i8*, i8** @g_doc_keywords, align 8
  call void @free(i8* %23) #5
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %sw.bb.33
  %24 = load i8*, i8** %charPtr.addr, align 8
  %call37 = call i64 @strlen(i8* %24) #6
  %add38 = add i64 %call37, 1
  %call39 = call noalias i8* @malloc(i64 %add38) #5
  store i8* %call39, i8** @g_doc_keywords, align 8
  %25 = load i8*, i8** @g_doc_keywords, align 8
  %cmp40 = icmp eq i8* %25, null
  br i1 %cmp40, label %if.then.41, label %if.else.43

if.then.41:                                       ; preds = %if.end.36
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call42 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 29, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.125, i32 0, i32 0), i32 2, %struct.FILE_POS* %26)
  br label %if.end.45

if.else.43:                                       ; preds = %if.end.36
  %27 = load i8*, i8** @g_doc_keywords, align 8
  %28 = load i8*, i8** %charPtr.addr, align 8
  %call44 = call i8* @strcpy(i8* %27, i8* %28) #5
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.then.41
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.45, %if.end.32, %if.end.19, %if.end.6
  %29 = load i8*, i8** %charPtr.addr, align 8
  %30 = load i8*, i8** %charPtr.addr, align 8
  %call46 = call i64 @strlen(i8* %30) #6
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %call46
  ret i8* %add.ptr
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @PDFPage_PrintUnderline(%struct._IO_FILE* %in_fp, i32 %in_x1, i32 %in_x2, i32 %in_y, i32 %in_thickness) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_x1.addr = alloca i32, align 4
  %in_x2.addr = alloca i32, align 4
  %in_y.addr = alloca i32, align 4
  %in_thickness.addr = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i32 %in_x1, i32* %in_x1.addr, align 4
  store i32 %in_x2, i32* %in_x2.addr, align 4
  store i32 %in_y, i32* %in_y.addr, align 4
  store i32 %in_thickness, i32* %in_thickness.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_FlushBuffer(%struct._IO_FILE* %0)
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %1 = load i32, i32* %in_thickness.addr, align 4
  %2 = load i32, i32* %in_x1.addr, align 4
  %3 = load i32, i32* %in_y.addr, align 4
  %4 = load i32, i32* %in_x2.addr, align 4
  %5 = load i32, i32* %in_y.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0), i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #5
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %arraydecay1 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  call void @PDFPage_Write(%struct._IO_FILE* %6, i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_Init(%struct._IO_FILE* %in_fp, float %in_scale_factor, i32 %in_line_width) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_scale_factor.addr = alloca float, align 4
  %in_line_width.addr = alloca i32, align 4
  %entry1 = alloca %struct.t_font_list_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store float %in_scale_factor, float* %in_scale_factor.addr, align 4
  store i32 %in_line_width, i32* %in_line_width.addr, align 4
  store i32 0, i32* @g_page_uses_fonts, align 4
  store i32 0, i32* @g_page_has_text, align 4
  store i32 0, i32* @g_page_has_graphics, align 4
  store i32 0, i32* @g_page_contents_obj_num, align 4
  store i32 0, i32* @g_page_length_obj_num, align 4
  store i32 0, i32* @g_page_start_offset, align 4
  %0 = load float, float* %in_scale_factor.addr, align 4
  store float %0, float* @g_page_v_scale_factor, align 4
  store float %0, float* @g_page_h_scale_factor, align 4
  store i32 0, i32* @g_page_v_origin, align 4
  store i32 0, i32* @g_page_h_origin, align 4
  %1 = load i32, i32* %in_line_width.addr, align 4
  store i32 %1, i32* @g_page_line_width, align 4
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 0), align 4
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 1), align 4
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 2), align 4
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 3), align 4
  store i32 0, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 4), align 4
  store i32 0, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 5), align 4
  store i32 0, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 6), align 4
  store i32 0, i32* @g_ET_pending, align 4
  store i32 0, i32* @g_TJ_pending, align 4
  store i32 0, i32* @g_valid_text_matrix, align 4
  %2 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_list_entry* %2, %struct.t_font_list_entry** %entry1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %cmp = icmp ne %struct.t_font_list_entry* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %m_in_use = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %4, i32 0, i32 7
  store i32 0, i32* %m_in_use, align 4
  %5 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry1, align 8
  %m_next_font_entry = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %5, i32 0, i32 0
  %6 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %m_next_font_entry, align 8
  store %struct.t_font_list_entry* %6, %struct.t_font_list_entry** %entry1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.t_qsave_entry* null, %struct.t_qsave_entry** @g_qsave_stack, align 8
  store %struct.t_qsave_marking_entry* null, %struct.t_qsave_marking_entry** @g_qsave_marking_stack, align 8
  store i32 0, i32* @g_buffer_pos, align 4
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @g_buffer, i32 0, i64 0), align 1
  store i32 0, i32* @g_in_buffering_mode, align 4
  store i32 1, i32* @g_in_buffering_mode, align 4
  %7 = load i32, i32* @g_page_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* @g_page_count, align 4
  %call = call i32 @PDFObject_New()
  store i32 %call, i32* @g_page_object_num, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFPage_Cleanup(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %hasAnnot = alloca i32, align 4
  %page_length = alloca i32, align 4
  %entry6 = alloca %struct.t_font_list_entry*, align 8
  %source = alloca %struct.t_source_annot_entry*, align 8
  %wanted_block_num = alloca i32, align 4
  %block_pos = alloca i32, align 4
  %the_block = alloca %struct.t_page_block*, align 8
  %entry65 = alloca %struct.t_font_list_entry*, align 8
  %entry100 = alloca %struct.t_source_annot_entry*, align 8
  %previous_entry = alloca %struct.t_source_annot_entry*, align 8
  %next_entry = alloca %struct.t_source_annot_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i32 0, i32* %hasAnnot, align 4
  %0 = load %struct.t_qsave_entry*, %struct.t_qsave_entry** @g_qsave_stack, align 8
  %cmp = icmp eq %struct.t_qsave_entry* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv, %struct.FILE_POS* %1)
  %2 = load i32, i32* @g_page_contents_obj_num, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call = call i32 @PDFPage_End(%struct._IO_FILE* %3)
  store i32 %call, i32* %page_length, align 4
  %4 = load i32, i32* @g_PDF_debug, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %6 = load i32, i32* @g_page_count, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0), i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %8 = load i32, i32* @g_page_length_obj_num, align 4
  call void @PDFObject_WriteObj(%struct._IO_FILE* %7, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %10 = load i32, i32* %page_length, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 %10)
  %11 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_list_entry* %11, %struct.t_font_list_entry** %entry6, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %12 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry6, align 8
  %cmp7 = icmp ne %struct.t_font_list_entry* %12, null
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %14 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry6, align 8
  call void @PDFFont_WriteFontResource(%struct._IO_FILE* %13, %struct.t_font_list_entry* %14)
  %15 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry6, align 8
  %m_next_font_entry = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %15, i32 0, i32 0
  %16 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %m_next_font_entry, align 8
  store %struct.t_font_list_entry* %16, %struct.t_font_list_entry** %entry6, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.9

if.end.9:                                         ; preds = %while.end, %entry
  %17 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  store %struct.t_source_annot_entry* %17, %struct.t_source_annot_entry** %source, align 8
  br label %while.cond.10

while.cond.10:                                    ; preds = %if.end.17, %if.end.9
  %18 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %cmp11 = icmp ne %struct.t_source_annot_entry* %18, null
  br i1 %cmp11, label %while.body.13, label %while.end.18

while.body.13:                                    ; preds = %while.cond.10
  %19 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %m_this_page_object_num = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %19, i32 0, i32 9
  %20 = load i32, i32* %m_this_page_object_num, align 4
  %21 = load i32, i32* @g_page_object_num, align 4
  %cmp14 = icmp eq i32 %20, %21
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %while.body.13
  store i32 1, i32* %hasAnnot, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %23 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  call void @PDFSourceAnnot_Write(%struct._IO_FILE* %22, %struct.t_source_annot_entry* %23)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %while.body.13
  %24 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %m_next_entry = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %24, i32 0, i32 0
  %25 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %m_next_entry, align 8
  store %struct.t_source_annot_entry* %25, %struct.t_source_annot_entry** %source, align 8
  br label %while.cond.10

while.end.18:                                     ; preds = %while.cond.10
  %26 = load i32, i32* @g_page_count, align 4
  %sub = sub i32 %26, 1
  %div = udiv i32 %sub, 64
  store i32 %div, i32* %wanted_block_num, align 4
  %27 = load i32, i32* @g_page_count, align 4
  %sub19 = sub i32 %27, 1
  %rem = urem i32 %sub19, 64
  store i32 %rem, i32* %block_pos, align 4
  %28 = load %struct.t_page_block*, %struct.t_page_block** @g_cur_page_block, align 8
  store %struct.t_page_block* %28, %struct.t_page_block** %the_block, align 8
  %29 = load i32, i32* %block_pos, align 4
  %cmp20 = icmp eq i32 %29, 0
  br i1 %cmp20, label %if.then.22, label %if.else.38

if.then.22:                                       ; preds = %while.end.18
  %call23 = call noalias i8* @malloc(i64 264) #5
  %30 = bitcast i8* %call23 to %struct.t_page_block*
  store %struct.t_page_block* %30, %struct.t_page_block** %the_block, align 8
  %31 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  %cmp24 = icmp eq %struct.t_page_block* %31, null
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.22
  %32 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call27 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i32 1, %struct.FILE_POS* %32)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.22
  %33 = load i32, i32* %wanted_block_num, align 4
  %cmp29 = icmp eq i32 %33, 0
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.28
  %34 = load %struct.t_page_block*, %struct.t_page_block** @g_page_block_list, align 8
  %cmp32 = icmp eq %struct.t_page_block* %34, null
  %conv33 = zext i1 %cmp32 to i32
  %35 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv33, %struct.FILE_POS* %35)
  %36 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  store %struct.t_page_block* %36, %struct.t_page_block** @g_page_block_list, align 8
  br label %if.end.36

if.else:                                          ; preds = %if.end.28
  %37 = load %struct.t_page_block*, %struct.t_page_block** @g_cur_page_block, align 8
  %cmp34 = icmp ne %struct.t_page_block* %37, null
  %conv35 = zext i1 %cmp34 to i32
  %38 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv35, %struct.FILE_POS* %38)
  %39 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  %40 = load %struct.t_page_block*, %struct.t_page_block** @g_cur_page_block, align 8
  %m_next_block = getelementptr inbounds %struct.t_page_block, %struct.t_page_block* %40, i32 0, i32 0
  store %struct.t_page_block* %39, %struct.t_page_block** %m_next_block, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.31
  %41 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  %m_next_block37 = getelementptr inbounds %struct.t_page_block, %struct.t_page_block* %41, i32 0, i32 0
  store %struct.t_page_block* null, %struct.t_page_block** %m_next_block37, align 8
  %42 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  store %struct.t_page_block* %42, %struct.t_page_block** @g_cur_page_block, align 8
  br label %if.end.41

if.else.38:                                       ; preds = %while.end.18
  %43 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  %cmp39 = icmp ne %struct.t_page_block* %43, null
  %conv40 = zext i1 %cmp39 to i32
  %44 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv40, %struct.FILE_POS* %44)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.end.36
  %45 = load i32, i32* @g_PDF_debug, align 4
  %tobool42 = icmp ne i32 %45, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.41
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %47 = load i32, i32* @g_page_count, align 4
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i32 0, i32 0), i32 %47)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.41
  %48 = load i32, i32* @g_page_object_num, align 4
  %49 = load i32, i32* %block_pos, align 4
  %idxprom = zext i32 %49 to i64
  %50 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  %m_block = getelementptr inbounds %struct.t_page_block, %struct.t_page_block* %50, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %m_block, i32 0, i64 %idxprom
  store i32 %48, i32* %arrayidx, align 4
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %52 = load i32, i32* @g_page_object_num, align 4
  call void @PDFObject_WriteObj(%struct._IO_FILE* %51, i32 %52)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call46 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), %struct._IO_FILE* %53)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %55 = load i32, i32* @g_doc_h_bound, align 4
  %56 = load i32, i32* @g_doc_v_bound, align 4
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), i32 %55, i32 %56)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call48 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %59 = load i32, i32* @g_pages_root, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %58, i32 %59)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call49 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %60)
  %61 = load i32, i32* @g_page_contents_obj_num, align 4
  %cmp50 = icmp ne i32 %61, 0
  br i1 %cmp50, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.end.45
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call53 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %62)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %64 = load i32, i32* @g_page_contents_obj_num, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %63, i32 %64)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call54 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %65)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.end.45
  %66 = load i32, i32* @g_page_uses_fonts, align 4
  %tobool56 = icmp ne i32 %66, 0
  br i1 %tobool56, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.55
  %67 = load i32, i32* @g_page_has_text, align 4
  %tobool57 = icmp ne i32 %67, 0
  br i1 %tobool57, label %if.then.60, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false
  %68 = load i32, i32* @g_page_has_graphics, align 4
  %tobool59 = icmp ne i32 %68, 0
  br i1 %tobool59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %lor.lhs.false.58, %lor.lhs.false, %if.end.55
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call61 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %69)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %lor.lhs.false.58
  %70 = load i32, i32* @g_page_uses_fonts, align 4
  %tobool63 = icmp ne i32 %70, 0
  br i1 %tobool63, label %if.then.64, label %if.end.78

if.then.64:                                       ; preds = %if.end.62
  %71 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_list_entry* %71, %struct.t_font_list_entry** %entry65, align 8
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call66 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %72)
  br label %while.cond.67

while.cond.67:                                    ; preds = %if.end.74, %if.then.64
  %73 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry65, align 8
  %cmp68 = icmp ne %struct.t_font_list_entry* %73, null
  br i1 %cmp68, label %while.body.70, label %while.end.76

while.body.70:                                    ; preds = %while.cond.67
  %74 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry65, align 8
  %m_in_use = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %74, i32 0, i32 7
  %75 = load i32, i32* %m_in_use, align 4
  %tobool71 = icmp ne i32 %75, 0
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %while.body.70
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %77 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry65, align 8
  %m_PDF_font_name = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %77, i32 0, i32 1
  %78 = load i8*, i8** %m_PDF_font_name, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* %78)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %80 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry65, align 8
  call void @PDFFont_WriteObjectRef(%struct._IO_FILE* %79, %struct.t_font_list_entry* %80)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %while.body.70
  %81 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %entry65, align 8
  %m_next_font_entry75 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %81, i32 0, i32 0
  %82 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %m_next_font_entry75, align 8
  store %struct.t_font_list_entry* %82, %struct.t_font_list_entry** %entry65, align 8
  br label %while.cond.67

while.end.76:                                     ; preds = %while.cond.67
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call77 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %83)
  br label %if.end.78

if.end.78:                                        ; preds = %while.end.76, %if.end.62
  %84 = load i32, i32* @g_page_has_text, align 4
  %tobool79 = icmp ne i32 %84, 0
  br i1 %tobool79, label %if.then.82, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %if.end.78
  %85 = load i32, i32* @g_page_has_graphics, align 4
  %tobool81 = icmp ne i32 %85, 0
  br i1 %tobool81, label %if.then.82, label %if.end.89

if.then.82:                                       ; preds = %lor.lhs.false.80, %if.end.78
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call83 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %86)
  %87 = load i32, i32* @g_page_has_text, align 4
  %tobool84 = icmp ne i32 %87, 0
  br i1 %tobool84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.then.82
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call86 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %struct._IO_FILE* %88)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.then.82
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call88 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %89)
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.87, %lor.lhs.false.80
  %90 = load i32, i32* @g_page_uses_fonts, align 4
  %tobool90 = icmp ne i32 %90, 0
  br i1 %tobool90, label %if.then.95, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %if.end.89
  %91 = load i32, i32* @g_page_has_text, align 4
  %tobool92 = icmp ne i32 %91, 0
  br i1 %tobool92, label %if.then.95, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %lor.lhs.false.91
  %92 = load i32, i32* @g_page_has_graphics, align 4
  %tobool94 = icmp ne i32 %92, 0
  br i1 %tobool94, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %lor.lhs.false.93, %lor.lhs.false.91, %if.end.89
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call96 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %93)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %lor.lhs.false.93
  %94 = load i32, i32* %hasAnnot, align 4
  %tobool98 = icmp ne i32 %94, 0
  br i1 %tobool98, label %if.then.99, label %if.end.132

if.then.99:                                       ; preds = %if.end.97
  %95 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  store %struct.t_source_annot_entry* %95, %struct.t_source_annot_entry** %entry100, align 8
  store %struct.t_source_annot_entry* null, %struct.t_source_annot_entry** %previous_entry, align 8
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call101 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %96)
  br label %while.cond.102

while.cond.102:                                   ; preds = %if.end.129, %if.then.99
  %97 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry100, align 8
  %cmp103 = icmp ne %struct.t_source_annot_entry* %97, null
  br i1 %cmp103, label %while.body.105, label %while.end.130

while.body.105:                                   ; preds = %while.cond.102
  %98 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry100, align 8
  %m_this_page_object_num106 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %98, i32 0, i32 9
  %99 = load i32, i32* %m_this_page_object_num106, align 4
  %100 = load i32, i32* @g_page_object_num, align 4
  %cmp107 = icmp eq i32 %99, %100
  br i1 %cmp107, label %if.then.109, label %if.else.127

if.then.109:                                      ; preds = %while.body.105
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call110 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %101)
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %103 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry100, align 8
  %m_this_object_num = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %103, i32 0, i32 8
  %104 = load i32, i32* %m_this_object_num, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %102, i32 %104)
  %105 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry100, align 8
  %m_written_to_PDF_file = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %105, i32 0, i32 12
  %106 = load i32, i32* %m_written_to_PDF_file, align 4
  %tobool111 = icmp ne i32 %106, 0
  br i1 %tobool111, label %if.then.112, label %if.else.124

if.then.112:                                      ; preds = %if.then.109
  %107 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry100, align 8
  %m_next_entry113 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %107, i32 0, i32 0
  %108 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %m_next_entry113, align 8
  store %struct.t_source_annot_entry* %108, %struct.t_source_annot_entry** %next_entry, align 8
  %109 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  %110 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry100, align 8
  %cmp114 = icmp eq %struct.t_source_annot_entry* %109, %110
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.then.112
  %111 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %next_entry, align 8
  store %struct.t_source_annot_entry* %111, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %if.then.112
  %112 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %previous_entry, align 8
  %cmp118 = icmp ne %struct.t_source_annot_entry* %112, null
  br i1 %cmp118, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.end.117
  %113 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %next_entry, align 8
  %114 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %previous_entry, align 8
  %m_next_entry121 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %114, i32 0, i32 0
  store %struct.t_source_annot_entry* %113, %struct.t_source_annot_entry** %m_next_entry121, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %if.end.117
  %115 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry100, align 8
  %call123 = call %struct.t_source_annot_entry* @PDFSourceAnnot_Dispose(%struct.t_source_annot_entry* %115)
  %116 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %next_entry, align 8
  store %struct.t_source_annot_entry* %116, %struct.t_source_annot_entry** %entry100, align 8
  br label %if.end.126

if.else.124:                                      ; preds = %if.then.109
  %117 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry100, align 8
  store %struct.t_source_annot_entry* %117, %struct.t_source_annot_entry** %previous_entry, align 8
  %118 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry100, align 8
  %m_next_entry125 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %118, i32 0, i32 0
  %119 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %m_next_entry125, align 8
  store %struct.t_source_annot_entry* %119, %struct.t_source_annot_entry** %entry100, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.124, %if.end.122
  br label %if.end.129

if.else.127:                                      ; preds = %while.body.105
  %120 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry100, align 8
  store %struct.t_source_annot_entry* %120, %struct.t_source_annot_entry** %previous_entry, align 8
  %121 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry100, align 8
  %m_next_entry128 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %121, i32 0, i32 0
  %122 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %m_next_entry128, align 8
  store %struct.t_source_annot_entry* %122, %struct.t_source_annot_entry** %entry100, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.127, %if.end.126
  br label %while.cond.102

while.end.130:                                    ; preds = %while.cond.102
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call131 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %123)
  br label %if.end.132

if.end.132:                                       ; preds = %while.end.130, %if.end.97
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call133 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %124)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @PDFPage_End(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %page_length = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  %0 = load i32, i32* @g_in_buffering_mode, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @g_buffer_pos, align 4
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @g_buffer, i32 0, i64 0), align 1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFPage_FlushBuffer(%struct._IO_FILE* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @g_page_contents_obj_num, align 4
  %cmp = icmp ne i32 %2, 0
  %conv = zext i1 %cmp to i32
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv, %struct.FILE_POS* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call = call i64 @ftell(%struct._IO_FILE* %4)
  %5 = load i32, i32* @g_page_start_offset, align 4
  %conv1 = zext i32 %5 to i64
  %sub = sub nsw i64 %call, %conv1
  %conv2 = trunc i64 %sub to i32
  store i32 %conv2, i32* %page_length, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.134, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load i32, i32* %page_length, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @PDFObject_WriteObj(%struct._IO_FILE* %in_fp, i32 %in_object_number) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_object_number.addr = alloca i32, align 4
  %block_pos = alloca i32, align 4
  %block = alloca %struct.t_offset_block*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i32 %in_object_number, i32* %in_object_number.addr, align 4
  %0 = load i32, i32* %in_object_number.addr, align 4
  %call = call %struct.t_offset_block* @PDFObject_FindOffsetBlock(i32 %0, i32* %block_pos)
  store %struct.t_offset_block* %call, %struct.t_offset_block** %block, align 8
  %1 = load i32, i32* %block_pos, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.t_offset_block*, %struct.t_offset_block** %block, align 8
  %m_block = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %m_block, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %3, 0
  %conv = zext i1 %cmp to i32
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv, %struct.FILE_POS* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call1 = call i64 @ftell(%struct._IO_FILE* %5)
  %conv2 = trunc i64 %call1 to i32
  %6 = load i32, i32* %block_pos, align 4
  %idxprom3 = zext i32 %6 to i64
  %7 = load %struct.t_offset_block*, %struct.t_offset_block** %block, align 8
  %m_block4 = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [256 x i32], [256 x i32]* %m_block4, i32 0, i64 %idxprom3
  store i32 %conv2, i32* %arrayidx5, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %9 = load i32, i32* %in_object_number.addr, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFFont_WriteFontResource(%struct._IO_FILE* %in_fp, %struct.t_font_list_entry* %in_font_entry) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_font_entry.addr = alloca %struct.t_font_list_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store %struct.t_font_list_entry* %in_font_entry, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %0 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %m_font_resource_in_pdf = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %0, i32 0, i32 6
  %1 = load i32, i32* %m_font_resource_in_pdf, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.19, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %m_font_resource_in_pdf1 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %2, i32 0, i32 6
  store i32 1, i32* %m_font_resource_in_pdf1, align 4
  %3 = load i32, i32* @g_PDF_debug, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %5 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %m_actual_font_name = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %5, i32 0, i32 3
  %6 = load i8*, i8** %m_actual_font_name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.136, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %8 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  call void @PDFFont_WriteObject(%struct._IO_FILE* %7, %struct.t_font_list_entry* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.137, i32 0, i32 0), %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %11 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %m_PDF_font_name = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %11, i32 0, i32 1
  %12 = load i8*, i8** %m_PDF_font_name, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0), i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %14 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %m_actual_font_name6 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %14, i32 0, i32 3
  %15 = load i8*, i8** %m_actual_font_name6, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.139, i32 0, i32 0), i8* %15)
  %16 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %m_actual_font_name8 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %16, i32 0, i32 3
  %17 = load i8*, i8** %m_actual_font_name8, align 8
  %call9 = call i32 @PDFFont_IsOneOfTheBase14Fonts(i8* %17)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %18 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %m_font_encoding_obj = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %18, i32 0, i32 4
  %19 = load i32, i32* %m_font_encoding_obj, align 4
  %cmp = icmp ne i32 %19, 0
  br i1 %cmp, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.12
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.140, i32 0, i32 0), %struct._IO_FILE* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %22 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %m_font_encoding_obj15 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %22, i32 0, i32 4
  %23 = load i32, i32* %m_font_encoding_obj15, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %21, i32 %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call16 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %24)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.12
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %25)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.17, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFSourceAnnot_Write(%struct._IO_FILE* %in_fp, %struct.t_source_annot_entry* %in_entry) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_entry.addr = alloca %struct.t_source_annot_entry*, align 8
  %target = alloca %struct.t_target_annot_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store %struct.t_source_annot_entry* %in_entry, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %0 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %cmp = icmp ne %struct.t_source_annot_entry* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv, %struct.FILE_POS* %1)
  %2 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_target = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %2, i32 0, i32 1
  %3 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %m_target, align 8
  store %struct.t_target_annot_entry* %3, %struct.t_target_annot_entry** %target, align 8
  %4 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_link_type = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %4, i32 0, i32 11
  %5 = load i32, i32* %m_link_type, align 4
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %cmp3 = icmp eq %struct.t_target_annot_entry* %6, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* @g_PDF_debug, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %9 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_this_page_object_num = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %9, i32 0, i32 9
  %10 = load i32, i32* %m_this_page_object_num, align 4
  %11 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_target6 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %11, i32 0, i32 1
  %12 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %m_target6, align 8
  %m_name = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %12, i32 0, i32 1
  %13 = load i8*, i8** %m_name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.155, i32 0, i32 0), i32 %10, i8* %13)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %15 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_this_object_num = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %15, i32 0, i32 8
  %16 = load i32, i32* %m_this_object_num, align 4
  call void @PDFObject_WriteObj(%struct._IO_FILE* %14, i32 %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %18 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_ll_x = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %18, i32 0, i32 4
  %19 = load i32, i32* %m_ll_x, align 4
  %20 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_ll_y = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %20, i32 0, i32 5
  %21 = load i32, i32* %m_ll_y, align 4
  %22 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_ur_x = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %22, i32 0, i32 6
  %23 = load i32, i32* %m_ur_x, align 4
  %24 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_ur_y = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %24, i32 0, i32 7
  %25 = load i32, i32* %m_ur_y, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.156, i32 0, i32 0), i32 %19, i32 %21, i32 %23, i32 %25)
  %26 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_link_type9 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %26, i32 0, i32 11
  %27 = load i32, i32* %m_link_type9, align 4
  switch i32 %27, label %sw.epilog.45 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.38
    i32 2, label %sw.bb.41
    i32 3, label %sw.bb.44
    i32 4, label %sw.bb.44
    i32 5, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %if.end.7
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.157, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %30 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_target11 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %30, i32 0, i32 1
  %31 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %m_target11, align 8
  %m_page_object_num = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %31, i32 0, i32 2
  %32 = load i32, i32* %m_page_object_num, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %29, i32 %32)
  %33 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_dest_option = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %33, i32 0, i32 10
  %34 = load i32, i32* %m_dest_option, align 4
  switch i32 %34, label %sw.default [
    i32 0, label %sw.bb.12
    i32 1, label %sw.bb.14
    i32 2, label %sw.bb.16
    i32 3, label %sw.bb.19
    i32 4, label %sw.bb.22
    i32 5, label %sw.bb.28
    i32 6, label %sw.bb.30
    i32 7, label %sw.bb.33
  ]

sw.bb.12:                                         ; preds = %sw.bb
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.158, i32 0, i32 0))
  br label %sw.bb.14

sw.bb.14:                                         ; preds = %sw.bb, %sw.bb.12
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.159, i32 0, i32 0))
  br label %sw.epilog

sw.bb.16:                                         ; preds = %sw.bb
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %38 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %m_ur_y17 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %38, i32 0, i32 6
  %39 = load i32, i32* %m_ur_y17, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.160, i32 0, i32 0), i32 %39)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %sw.bb
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %41 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %m_ll_x20 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %41, i32 0, i32 3
  %42 = load i32, i32* %m_ll_x20, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i32 0, i32 0), i32 %42)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %sw.bb
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %44 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %m_ll_x23 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %44, i32 0, i32 3
  %45 = load i32, i32* %m_ll_x23, align 4
  %46 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %m_ll_y24 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %46, i32 0, i32 4
  %47 = load i32, i32* %m_ll_y24, align 4
  %48 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %m_ur_x25 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %48, i32 0, i32 5
  %49 = load i32, i32* %m_ur_x25, align 4
  %50 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %m_ur_y26 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %50, i32 0, i32 6
  %51 = load i32, i32* %m_ur_y26, align 4
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.162, i32 0, i32 0), i32 %45, i32 %47, i32 %49, i32 %51)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %sw.bb
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.163, i32 0, i32 0))
  br label %sw.epilog

sw.bb.30:                                         ; preds = %sw.bb
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %54 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %m_ur_y31 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %54, i32 0, i32 6
  %55 = load i32, i32* %m_ur_y31, align 4
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.164, i32 0, i32 0), i32 %55)
  br label %sw.epilog

sw.bb.33:                                         ; preds = %sw.bb
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %57 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %m_ll_x34 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %57, i32 0, i32 3
  %58 = load i32, i32* %m_ll_x34, align 4
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.165, i32 0, i32 0), i32 %58)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %59 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call36 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.166, i32 0, i32 0), i32 1, %struct.FILE_POS* %59)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.33, %sw.bb.30, %sw.bb.28, %sw.bb.22, %sw.bb.19, %sw.bb.16, %sw.bb.14
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0))
  br label %sw.epilog.45

sw.bb.38:                                         ; preds = %if.end.7
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %62 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_name39 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %62, i32 0, i32 2
  %63 = load i8*, i8** %m_name39, align 8
  %64 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_file_spec = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %64, i32 0, i32 3
  %65 = load i8*, i8** %m_file_spec, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.167, i32 0, i32 0), i8* %63, i8* %65)
  br label %sw.epilog.45

sw.bb.41:                                         ; preds = %if.end.7
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %67 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_name42 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %67, i32 0, i32 2
  %68 = load i8*, i8** %m_name42, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.168, i32 0, i32 0), i8* %68)
  br label %sw.epilog.45

sw.bb.44:                                         ; preds = %if.end.7, %if.end.7, %if.end.7
  br label %sw.epilog.45

sw.epilog.45:                                     ; preds = %if.end.7, %sw.bb.44, %sw.bb.41, %sw.bb.38, %sw.epilog
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0))
  %70 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_entry.addr, align 8
  %m_written_to_PDF_file = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %70, i32 0, i32 12
  store i32 1, i32* %m_written_to_PDF_file, align 4
  br label %return

return:                                           ; preds = %sw.epilog.45, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFObject_WriteRef(%struct._IO_FILE* %in_fp, i32 %in_object_number) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_object_number.addr = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i32 %in_object_number, i32* %in_object_number.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %1 = load i32, i32* %in_object_number.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i32 0, i32 0), i32 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PDFFont_WriteObjectRef(%struct._IO_FILE* %in_fp, %struct.t_font_list_entry* %in_font_entry) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_font_entry.addr = alloca %struct.t_font_list_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store %struct.t_font_list_entry* %in_font_entry, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %0 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %m_pdf_object_number = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %0, i32 0, i32 5
  %1 = load i32, i32* %m_pdf_object_number, align 4
  %cmp = icmp ne i32 %1, 0
  %conv = zext i1 %cmp to i32
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv, %struct.FILE_POS* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %4 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %m_pdf_object_number1 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %4, i32 0, i32 5
  %5 = load i32, i32* %m_pdf_object_number1, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %3, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.t_source_annot_entry* @PDFSourceAnnot_Dispose(%struct.t_source_annot_entry* %in_source_annot) #0 {
entry:
  %in_source_annot.addr = alloca %struct.t_source_annot_entry*, align 8
  %next_entry = alloca %struct.t_source_annot_entry*, align 8
  store %struct.t_source_annot_entry* %in_source_annot, %struct.t_source_annot_entry** %in_source_annot.addr, align 8
  %0 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_source_annot.addr, align 8
  %m_next_entry = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %0, i32 0, i32 0
  %1 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %m_next_entry, align 8
  store %struct.t_source_annot_entry* %1, %struct.t_source_annot_entry** %next_entry, align 8
  %2 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_source_annot.addr, align 8
  %m_name = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %2, i32 0, i32 2
  %3 = load i8*, i8** %m_name, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_source_annot.addr, align 8
  %m_name1 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %4, i32 0, i32 2
  %5 = load i8*, i8** %m_name1, align 8
  call void @free(i8* %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_source_annot.addr, align 8
  %m_file_spec = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %6, i32 0, i32 3
  %7 = load i8*, i8** %m_file_spec, align 8
  %cmp2 = icmp ne i8* %7, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_source_annot.addr, align 8
  %m_file_spec4 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %8, i32 0, i32 3
  %9 = load i8*, i8** %m_file_spec4, align 8
  call void @free(i8* %9) #5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %10 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %in_source_annot.addr, align 8
  %11 = bitcast %struct.t_source_annot_entry* %10 to i8*
  call void @free(i8* %11) #5
  %12 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %next_entry, align 8
  ret %struct.t_source_annot_entry* %12
}

; Function Attrs: nounwind uwtable
define void @PDFFile_Init(%struct._IO_FILE* %in_fp, i32 %in_h_bound, i32 %in_v_bound, i32 %in_IN, i32 %in_CM, i32 %in_PT, i32 %in_EM) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_h_bound.addr = alloca i32, align 4
  %in_v_bound.addr = alloca i32, align 4
  %in_IN.addr = alloca i32, align 4
  %in_CM.addr = alloca i32, align 4
  %in_PT.addr = alloca i32, align 4
  %in_EM.addr = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store i32 %in_h_bound, i32* %in_h_bound.addr, align 4
  store i32 %in_v_bound, i32* %in_v_bound.addr, align 4
  store i32 %in_IN, i32* %in_IN.addr, align 4
  store i32 %in_CM, i32* %in_CM.addr, align 4
  store i32 %in_PT, i32* %in_PT.addr, align 4
  store i32 %in_EM, i32* %in_EM.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), %struct._IO_FILE* %1)
  store i32 0, i32* @g_PDF_debug, align 4
  store i32 1, i32* @g_next_objnum, align 4
  store %struct.t_offset_block* null, %struct.t_offset_block** @g_obj_offset_list, align 8
  store %struct.t_offset_block* null, %struct.t_offset_block** @g_cur_obj_offset_block, align 8
  store %struct.t_font_list_entry* null, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_encoding_entry* null, %struct.t_font_encoding_entry** @g_font_encoding_list, align 8
  store i32 0, i32* @g_page_count, align 4
  store %struct.t_page_block* null, %struct.t_page_block** @g_page_block_list, align 8
  store %struct.t_page_block* null, %struct.t_page_block** @g_cur_page_block, align 8
  %call2 = call i32 @PDFObject_New()
  store i32 %call2, i32* @g_pages_root, align 4
  %2 = load i32, i32* %in_h_bound.addr, align 4
  store i32 %2, i32* @g_doc_h_bound, align 4
  %3 = load i32, i32* %in_v_bound.addr, align 4
  store i32 %3, i32* @g_doc_v_bound, align 4
  store i8* null, i8** @g_doc_author, align 8
  store i8* null, i8** @g_doc_title, align 8
  store i8* null, i8** @g_doc_subject, align 8
  store i8* null, i8** @g_doc_keywords, align 8
  store %struct.t_target_annot_entry* null, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  store i32 0, i32* @g_has_exported_targets, align 4
  store %struct.t_source_annot_entry* null, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  %4 = load i32, i32* %in_IN.addr, align 4
  store i32 %4, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 0), align 4
  %5 = load i32, i32* %in_CM.addr, align 4
  store i32 %5, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 1), align 4
  %6 = load i32, i32* %in_PT.addr, align 4
  store i32 %6, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 2), align 4
  %7 = load i32, i32* %in_EM.addr, align 4
  store i32 %7, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_units, i32 0, i64 3), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @PDFFile_Cleanup(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %xref_start = alloca i32, align 4
  %catalog_obj_num = alloca i32, align 4
  %info_obj_num = alloca i32, align 4
  %dests_obj_num = alloca i32, align 4
  %source = alloca %struct.t_source_annot_entry*, align 8
  %target = alloca %struct.t_target_annot_entry*, align 8
  %entry6 = alloca %struct.t_target_annot_entry*, align 8
  %now = alloca i64, align 8
  %date = alloca %struct.tm*, align 8
  %the_block = alloca %struct.t_offset_block*, align 8
  %the_block92 = alloca %struct.t_font_encoding_entry*, align 8
  %the_block99 = alloca %struct.t_font_list_entry*, align 8
  %the_block105 = alloca %struct.t_page_block*, align 8
  %entry112 = alloca %struct.t_source_annot_entry*, align 8
  %str = alloca [512 x i8], align 16
  %entry130 = alloca %struct.t_target_annot_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  %0 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  store %struct.t_source_annot_entry* %0, %struct.t_source_annot_entry** %source, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %cmp = icmp ne %struct.t_source_annot_entry* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %m_target = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %2, i32 0, i32 1
  %3 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %m_target, align 8
  %cmp1 = icmp eq %struct.t_target_annot_entry* %3, null
  %conv = zext i1 %cmp1 to i32
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv, %struct.FILE_POS* %4)
  %5 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %m_name = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %5, i32 0, i32 2
  %6 = load i8*, i8** %m_name, align 8
  %call = call %struct.t_target_annot_entry* @PDFTargetAnnot_Find(i8* %6)
  store %struct.t_target_annot_entry* %call, %struct.t_target_annot_entry** %target, align 8
  %7 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %cmp2 = icmp ne %struct.t_target_annot_entry* %7, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %9 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %m_target4 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %9, i32 0, i32 1
  store %struct.t_target_annot_entry* %8, %struct.t_target_annot_entry** %m_target4, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %11 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  call void @PDFSourceAnnot_Write(%struct._IO_FILE* %10, %struct.t_source_annot_entry* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %12 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %m_next_entry = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %12, i32 0, i32 0
  %13 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %m_next_entry, align 8
  store %struct.t_source_annot_entry* %13, %struct.t_source_annot_entry** %source, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  call void @PDFFile_WritePagesObject(%struct._IO_FILE* %14)
  %15 = load i32, i32* @g_has_exported_targets, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.5, label %if.end.28

if.then.5:                                        ; preds = %while.end
  %16 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  store %struct.t_target_annot_entry* %16, %struct.t_target_annot_entry** %entry6, align 8
  %17 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry6, align 8
  %cmp7 = icmp ne %struct.t_target_annot_entry* %17, null
  %conv8 = zext i1 %cmp7 to i32
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv8, %struct.FILE_POS* %18)
  %19 = load i32, i32* @g_PDF_debug, align 4
  %tobool9 = icmp ne i32 %19, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.then.5
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.then.5
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call13 = call i32 @PDFObject_WriteNewObj(%struct._IO_FILE* %21)
  store i32 %call13, i32* %dests_obj_num, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), %struct._IO_FILE* %22)
  br label %while.cond.15

while.cond.15:                                    ; preds = %if.end.24, %if.end.12
  %23 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry6, align 8
  %cmp16 = icmp ne %struct.t_target_annot_entry* %23, null
  br i1 %cmp16, label %while.body.18, label %while.end.26

while.body.18:                                    ; preds = %while.cond.15
  %24 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry6, align 8
  %m_for_export = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %24, i32 0, i32 7
  %25 = load i32, i32* %m_for_export, align 4
  %tobool19 = icmp ne i32 %25, 0
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %while.body.18
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %27 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry6, align 8
  %m_name21 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %27, i32 0, i32 1
  %28 = load i8*, i8** %m_name21, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %30 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry6, align 8
  %m_page_object_num = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %30, i32 0, i32 2
  %31 = load i32, i32* %m_page_object_num, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %29, i32 %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %while.body.18
  %33 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry6, align 8
  %m_next_entry25 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %33, i32 0, i32 0
  %34 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %m_next_entry25, align 8
  store %struct.t_target_annot_entry* %34, %struct.t_target_annot_entry** %entry6, align 8
  br label %while.cond.15

while.end.26:                                     ; preds = %while.cond.15
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call27 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %35)
  br label %if.end.28

if.end.28:                                        ; preds = %while.end.26, %while.end
  %36 = load i32, i32* @g_PDF_debug, align 4
  %tobool29 = icmp ne i32 %36, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.28
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.28
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call33 = call i32 @PDFObject_WriteNewObj(%struct._IO_FILE* %38)
  store i32 %call33, i32* %catalog_obj_num, align 4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call34 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), %struct._IO_FILE* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call35 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), %struct._IO_FILE* %40)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call36 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), %struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %43 = load i32, i32* @g_pages_root, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %42, i32 %43)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call37 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %44)
  %45 = load i32, i32* @g_has_exported_targets, align 4
  %tobool38 = icmp ne i32 %45, 0
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.32
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call40 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), %struct._IO_FILE* %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %48 = load i32, i32* %dests_obj_num, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %47, i32 %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call41 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %49)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.32
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call43 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %50)
  %51 = load i32, i32* @g_PDF_debug, align 4
  %tobool44 = icmp ne i32 %51, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.42
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.42
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call48 = call i32 @PDFObject_WriteNewObj(%struct._IO_FILE* %53)
  store i32 %call48, i32* %info_obj_num, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call49 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), %struct._IO_FILE* %54)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i32 0, i32 0))
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i32 0, i32 0))
  %call52 = call i64 @time(i64* null) #5
  store i64 %call52, i64* %now, align 8
  %call53 = call %struct.tm* @localtime(i64* %now) #5
  store %struct.tm* %call53, %struct.tm** %date, align 8
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i32 0, i32 0))
  %58 = load i8*, i8** @g_doc_author, align 8
  %cmp55 = icmp ne i8* %58, null
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.47
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %60 = load i8*, i8** @g_doc_author, align 8
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), i8* %60)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.47
  %61 = load i8*, i8** @g_doc_title, align 8
  %cmp60 = icmp ne i8* %61, null
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.59
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %63 = load i8*, i8** @g_doc_title, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), i8* %63)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.59
  %64 = load i8*, i8** @g_doc_subject, align 8
  %cmp65 = icmp ne i8* %64, null
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.64
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %66 = load i8*, i8** @g_doc_subject, align 8
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0), i8* %66)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.64
  %67 = load i8*, i8** @g_doc_keywords, align 8
  %cmp70 = icmp ne i8* %67, null
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.69
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %69 = load i8*, i8** @g_doc_keywords, align 8
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0), i8* %69)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.end.69
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call75 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %70)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call76 = call i32 @PDFFile_WriteXREF(%struct._IO_FILE* %71)
  store i32 %call76, i32* %xref_start, align 4
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call77 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), %struct._IO_FILE* %72)
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %74 = load i32, i32* @g_next_objnum, align 4
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 %74)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call79 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), %struct._IO_FILE* %75)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %77 = load i32, i32* %catalog_obj_num, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %76, i32 %77)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call80 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), %struct._IO_FILE* %78)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %80 = load i32, i32* %info_obj_num, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %79, i32 %80)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %82 = load i32, i32* %xref_start, align 4
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0), i32 %82)
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call82 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), %struct._IO_FILE* %83)
  br label %while.cond.83

while.cond.83:                                    ; preds = %while.body.86, %if.end.74
  %84 = load %struct.t_offset_block*, %struct.t_offset_block** @g_obj_offset_list, align 8
  %cmp84 = icmp ne %struct.t_offset_block* %84, null
  br i1 %cmp84, label %while.body.86, label %while.end.87

while.body.86:                                    ; preds = %while.cond.83
  %85 = load %struct.t_offset_block*, %struct.t_offset_block** @g_obj_offset_list, align 8
  store %struct.t_offset_block* %85, %struct.t_offset_block** %the_block, align 8
  %86 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %m_next_block = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %86, i32 0, i32 0
  %87 = load %struct.t_offset_block*, %struct.t_offset_block** %m_next_block, align 8
  store %struct.t_offset_block* %87, %struct.t_offset_block** @g_obj_offset_list, align 8
  %88 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %89 = bitcast %struct.t_offset_block* %88 to i8*
  call void @free(i8* %89) #5
  br label %while.cond.83

while.end.87:                                     ; preds = %while.cond.83
  br label %while.cond.88

while.cond.88:                                    ; preds = %while.body.91, %while.end.87
  %90 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** @g_font_encoding_list, align 8
  %cmp89 = icmp ne %struct.t_font_encoding_entry* %90, null
  br i1 %cmp89, label %while.body.91, label %while.end.94

while.body.91:                                    ; preds = %while.cond.88
  %91 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** @g_font_encoding_list, align 8
  store %struct.t_font_encoding_entry* %91, %struct.t_font_encoding_entry** %the_block92, align 8
  %92 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %the_block92, align 8
  %m_next_entry93 = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %92, i32 0, i32 0
  %93 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %m_next_entry93, align 8
  store %struct.t_font_encoding_entry* %93, %struct.t_font_encoding_entry** @g_font_encoding_list, align 8
  %94 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %the_block92, align 8
  %m_font_encoding = getelementptr inbounds %struct.t_font_encoding_entry, %struct.t_font_encoding_entry* %94, i32 0, i32 2
  %95 = load i8*, i8** %m_font_encoding, align 8
  call void @free(i8* %95) #5
  %96 = load %struct.t_font_encoding_entry*, %struct.t_font_encoding_entry** %the_block92, align 8
  %97 = bitcast %struct.t_font_encoding_entry* %96 to i8*
  call void @free(i8* %97) #5
  br label %while.cond.88

while.end.94:                                     ; preds = %while.cond.88
  br label %while.cond.95

while.cond.95:                                    ; preds = %while.body.98, %while.end.94
  %98 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  %cmp96 = icmp ne %struct.t_font_list_entry* %98, null
  br i1 %cmp96, label %while.body.98, label %while.end.100

while.body.98:                                    ; preds = %while.cond.95
  %99 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** @g_font_list, align 8
  store %struct.t_font_list_entry* %99, %struct.t_font_list_entry** %the_block99, align 8
  %100 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %the_block99, align 8
  %m_next_font_entry = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %100, i32 0, i32 0
  %101 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %m_next_font_entry, align 8
  store %struct.t_font_list_entry* %101, %struct.t_font_list_entry** @g_font_list, align 8
  %102 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %the_block99, align 8
  %m_PDF_font_name = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %102, i32 0, i32 1
  %103 = load i8*, i8** %m_PDF_font_name, align 8
  call void @free(i8* %103) #5
  %104 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %the_block99, align 8
  %m_short_font_name = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %104, i32 0, i32 2
  %105 = load i8*, i8** %m_short_font_name, align 8
  call void @free(i8* %105) #5
  %106 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %the_block99, align 8
  %m_actual_font_name = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %106, i32 0, i32 3
  %107 = load i8*, i8** %m_actual_font_name, align 8
  call void @free(i8* %107) #5
  %108 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %the_block99, align 8
  %109 = bitcast %struct.t_font_list_entry* %108 to i8*
  call void @free(i8* %109) #5
  br label %while.cond.95

while.end.100:                                    ; preds = %while.cond.95
  br label %while.cond.101

while.cond.101:                                   ; preds = %while.body.104, %while.end.100
  %110 = load %struct.t_page_block*, %struct.t_page_block** @g_page_block_list, align 8
  %cmp102 = icmp ne %struct.t_page_block* %110, null
  br i1 %cmp102, label %while.body.104, label %while.end.107

while.body.104:                                   ; preds = %while.cond.101
  %111 = load %struct.t_page_block*, %struct.t_page_block** @g_page_block_list, align 8
  store %struct.t_page_block* %111, %struct.t_page_block** %the_block105, align 8
  %112 = load %struct.t_page_block*, %struct.t_page_block** %the_block105, align 8
  %m_next_block106 = getelementptr inbounds %struct.t_page_block, %struct.t_page_block* %112, i32 0, i32 0
  %113 = load %struct.t_page_block*, %struct.t_page_block** %m_next_block106, align 8
  store %struct.t_page_block* %113, %struct.t_page_block** @g_page_block_list, align 8
  %114 = load %struct.t_page_block*, %struct.t_page_block** %the_block105, align 8
  %115 = bitcast %struct.t_page_block* %114 to i8*
  call void @free(i8* %115) #5
  br label %while.cond.101

while.end.107:                                    ; preds = %while.cond.101
  br label %while.cond.108

while.cond.108:                                   ; preds = %if.end.123, %while.end.107
  %116 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  %cmp109 = icmp ne %struct.t_source_annot_entry* %116, null
  br i1 %cmp109, label %while.body.111, label %while.end.125

while.body.111:                                   ; preds = %while.cond.108
  %117 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  store %struct.t_source_annot_entry* %117, %struct.t_source_annot_entry** %entry112, align 8
  %118 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry112, align 8
  %m_target113 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %118, i32 0, i32 1
  %119 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %m_target113, align 8
  %cmp114 = icmp eq %struct.t_target_annot_entry* %119, null
  br i1 %cmp114, label %if.then.116, label %if.end.123

if.then.116:                                      ; preds = %while.body.111
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call117 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.67, i32 0, i32 0)) #5
  %arraydecay118 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %120 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry112, align 8
  %m_name119 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %120, i32 0, i32 2
  %121 = load i8*, i8** %m_name119, align 8
  %call120 = call i8* @strcat(i8* %arraydecay118, i8* %121) #5
  %122 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %arraydecay121 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call122 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i32 2, %struct.FILE_POS* %122, i8* %arraydecay121)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.116, %while.body.111
  %123 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry112, align 8
  %call124 = call %struct.t_source_annot_entry* @PDFSourceAnnot_Dispose(%struct.t_source_annot_entry* %123)
  store %struct.t_source_annot_entry* %call124, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  br label %while.cond.108

while.end.125:                                    ; preds = %while.cond.108
  br label %while.cond.126

while.cond.126:                                   ; preds = %while.body.129, %while.end.125
  %124 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  %cmp127 = icmp ne %struct.t_target_annot_entry* %124, null
  br i1 %cmp127, label %while.body.129, label %while.end.133

while.body.129:                                   ; preds = %while.cond.126
  %125 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  store %struct.t_target_annot_entry* %125, %struct.t_target_annot_entry** %entry130, align 8
  %126 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry130, align 8
  %m_next_entry131 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %126, i32 0, i32 0
  %127 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %m_next_entry131, align 8
  store %struct.t_target_annot_entry* %127, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  %128 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry130, align 8
  %m_name132 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %128, i32 0, i32 1
  %129 = load i8*, i8** %m_name132, align 8
  call void @free(i8* %129) #5
  %130 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry130, align 8
  %131 = bitcast %struct.t_target_annot_entry* %130 to i8*
  call void @free(i8* %131) #5
  br label %while.cond.126

while.end.133:                                    ; preds = %while.cond.126
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.t_target_annot_entry* @PDFTargetAnnot_Find(i8* %in_annot_name) #0 {
entry:
  %in_annot_name.addr = alloca i8*, align 8
  %entry1 = alloca %struct.t_target_annot_entry*, align 8
  store i8* %in_annot_name, i8** %in_annot_name.addr, align 8
  %0 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  store %struct.t_target_annot_entry* %0, %struct.t_target_annot_entry** %entry1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %cmp = icmp ne %struct.t_target_annot_entry* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %in_annot_name.addr, align 8
  %3 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %m_name = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %3, i32 0, i32 1
  %4 = load i8*, i8** %m_name, align 8
  %call = call i32 @strcmp(i8* %2, i8* %4) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %5 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %m_next_entry = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %5, i32 0, i32 0
  %6 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %m_next_entry, align 8
  store %struct.t_target_annot_entry* %6, %struct.t_target_annot_entry** %entry1, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %7 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  ret %struct.t_target_annot_entry* %7
}

; Function Attrs: nounwind uwtable
define internal void @PDFFile_WritePagesObject(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %the_block = alloca %struct.t_page_block*, align 8
  %block_pos = alloca i32, align 4
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  %0 = load %struct.t_page_block*, %struct.t_page_block** @g_page_block_list, align 8
  store %struct.t_page_block* %0, %struct.t_page_block** %the_block, align 8
  %1 = load i32, i32* @g_PDF_debug, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.170, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %4 = load i32, i32* @g_pages_root, align 4
  call void @PDFObject_WriteObj(%struct._IO_FILE* %3, i32 %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.171, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i32 0, i32 0), %struct._IO_FILE* %7)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* @g_page_count, align 4
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %rem = urem i32 %10, 64
  store i32 %rem, i32* %block_pos, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %12 = load i32, i32* %block_pos, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  %m_block = getelementptr inbounds %struct.t_page_block, %struct.t_page_block* %13, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %m_block, i32 0, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  call void @PDFObject_WriteRef(%struct._IO_FILE* %11, i32 %14)
  %15 = load i32, i32* %block_pos, align 4
  %cmp4 = icmp eq i32 %15, 63
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  %16 = load %struct.t_page_block*, %struct.t_page_block** %the_block, align 8
  %m_next_block = getelementptr inbounds %struct.t_page_block, %struct.t_page_block* %16, i32 0, i32 0
  %17 = load %struct.t_page_block*, %struct.t_page_block** %m_next_block, align 8
  store %struct.t_page_block* %17, %struct.t_page_block** %the_block, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %for.body
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %18)
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %19 = load i32, i32* %i, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %21 = load i32, i32* @g_page_count, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.173, i32 0, i32 0), i32 %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %23 = load i32, i32* @g_doc_h_bound, align 4
  %24 = load i32, i32* @g_doc_v_bound, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.174, i32 0, i32 0), i32 %23, i32 %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %25)
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: nounwind uwtable
define internal i32 @PDFFile_WriteXREF(%struct._IO_FILE* %in_fp) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %xref_start = alloca i32, align 4
  %the_block = alloca %struct.t_offset_block*, align 8
  %block_pos = alloca i32, align 4
  %str = alloca [512 x i8], align 16
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  %0 = load %struct.t_offset_block*, %struct.t_offset_block** @g_obj_offset_list, align 8
  store %struct.t_offset_block* %0, %struct.t_offset_block** %the_block, align 8
  %1 = load i32, i32* @g_PDF_debug, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.175, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call1 = call i64 @ftell(%struct._IO_FILE* %3)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %xref_start, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.176, i32 0, i32 0), %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %6 = load i32, i32* @g_next_objnum, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.177, i32 0, i32 0), i32 %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.178, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load i32, i32* @g_next_objnum, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %9 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %cmp6 = icmp ne %struct.t_offset_block* %9, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %10 = phi i1 [ true, %if.end ], [ %cmp6, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %lor.ext, %struct.FILE_POS* %11)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %lor.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* @g_next_objnum, align 4
  %cmp8 = icmp ult i32 %12, %13
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %14, 1
  %rem = srem i32 %sub, 256
  store i32 %rem, i32* %block_pos, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %16 = load i32, i32* %block_pos, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %m_block = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %17, i32 0, i32 1
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %m_block, i32 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.179, i32 0, i32 0), i32 %18)
  %19 = load i32, i32* %block_pos, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %m_block12 = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %20, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [256 x i32], [256 x i32]* %m_block12, i32 0, i64 %idxprom11
  %21 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %21, 0
  br i1 %cmp14, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %for.body
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call17 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.180, i32 0, i32 0)) #5
  %arraydecay18 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %arraydecay19 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call20 = call i64 @strlen(i8* %arraydecay19) #6
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay18, i64 %call20
  %22 = load i32, i32* %i, align 4
  %call21 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i32 %22) #5
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %arraydecay22 = getelementptr inbounds [512 x i8], [512 x i8]* %str, i32 0, i32 0
  %call23 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i32 2, %struct.FILE_POS* %23, i8* %arraydecay22)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.16, %for.body
  %24 = load i32, i32* %block_pos, align 4
  %cmp25 = icmp eq i32 %24, 255
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  %25 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %m_next_block = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %25, i32 0, i32 0
  %26 = load %struct.t_offset_block*, %struct.t_offset_block** %m_next_block, align 8
  store %struct.t_offset_block* %26, %struct.t_offset_block** %the_block, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %xref_start, align 4
  ret i32 %28
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i8* @PDFPage_EvalExpr(i8* %inExpr, float* %outValue) #0 {
entry:
  %inExpr.addr = alloca i8*, align 8
  %outValue.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %chp = alloca i8*, align 8
  %val = alloca float, align 4
  %val1 = alloca float, align 4
  %val2 = alloca float, align 4
  %count = alloca i32, align 4
  store i8* %inExpr, i8** %inExpr.addr, align 8
  store float* %outValue, float** %outValue.addr, align 8
  %0 = load i8*, i8** %inExpr.addr, align 8
  store i8* %0, i8** %chp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %chp, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #7
  %3 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %4 to i32
  %and = and i32 %conv1, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %chp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %chp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.5, %while.end
  %6 = load i8*, i8** %chp, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv3, 95
  br i1 %cmp, label %while.body.5, label %while.end.7

while.body.5:                                     ; preds = %while.cond.2
  %8 = load i8*, i8** %chp, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr6, i8** %chp, align 8
  br label %while.cond.2

while.end.7:                                      ; preds = %while.cond.2
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.12, %while.end.7
  %9 = load i8*, i8** %chp, align 8
  %10 = load i8, i8* %9, align 1
  %conv9 = sext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv9, 43
  br i1 %cmp10, label %while.body.12, label %while.end.14

while.body.12:                                    ; preds = %while.cond.8
  %11 = load i8*, i8** %chp, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr13, i8** %chp, align 8
  br label %while.cond.8

while.end.14:                                     ; preds = %while.cond.8
  %12 = load i8*, i8** %chp, align 8
  %13 = load i8, i8* %12, align 1
  %conv15 = sext i8 %13 to i32
  %idxprom16 = sext i32 %conv15 to i64
  %call17 = call i16** @__ctype_b_loc() #7
  %14 = load i16*, i16** %call17, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %14, i64 %idxprom16
  %15 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %15 to i32
  %and20 = and i32 %conv19, 2048
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.14
  %16 = load i8*, i8** %chp, align 8
  %17 = load i8, i8* %16, align 1
  %conv22 = sext i8 %17 to i32
  %cmp23 = icmp eq i32 %conv22, 46
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.end.14
  %18 = load i8*, i8** %chp, align 8
  %19 = load float*, float** %outValue.addr, align 8
  %call25 = call i8* @PDFPage_GetFloat(i8* %18, float* %19)
  store i8* %call25, i8** %chp, align 8
  br label %if.end.149

if.else:                                          ; preds = %lor.lhs.false
  %20 = load i8*, i8** %chp, align 8
  %21 = load i8, i8* %20, align 1
  %conv26 = sext i8 %21 to i32
  %cmp27 = icmp eq i32 %conv26, 45
  br i1 %cmp27, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %if.else
  %22 = load i8*, i8** %chp, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr30, i8** %chp, align 8
  %call31 = call i8* @PDFPage_EvalExpr(i8* %incdec.ptr30, float* %val)
  store i8* %call31, i8** %chp, align 8
  %23 = load float, float* %val, align 4
  %sub = fsub float -0.000000e+00, %23
  %24 = load float*, float** %outValue.addr, align 8
  store float %sub, float* %24, align 4
  br label %if.end.148

if.else.32:                                       ; preds = %if.else
  %25 = load i8*, i8** %chp, align 8
  %call33 = call i32 @PDFKeyword_Find(i32 7, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @g_arithmetic_keywords, i32 0, i32 0), i8* %25)
  store i32 %call33, i32* %i, align 4
  %26 = load i32, i32* %i, align 4
  %cmp34 = icmp sge i32 %26, 0
  br i1 %cmp34, label %if.then.36, label %if.else.119

if.then.36:                                       ; preds = %if.else.32
  %27 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %27 to i64
  %arrayidx38 = getelementptr inbounds [7 x i8*], [7 x i8*]* @g_arithmetic_keywords, i32 0, i64 %idxprom37
  %28 = load i8*, i8** %arrayidx38, align 8
  %call39 = call i64 @strlen(i8* %28) #6
  %29 = load i8*, i8** %chp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %call39
  store i8* %add.ptr, i8** %chp, align 8
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.48, %if.then.36
  %30 = load i8*, i8** %chp, align 8
  %31 = load i8, i8* %30, align 1
  %conv41 = sext i8 %31 to i32
  %idxprom42 = sext i32 %conv41 to i64
  %call43 = call i16** @__ctype_b_loc() #7
  %32 = load i16*, i16** %call43, align 8
  %arrayidx44 = getelementptr inbounds i16, i16* %32, i64 %idxprom42
  %33 = load i16, i16* %arrayidx44, align 2
  %conv45 = zext i16 %33 to i32
  %and46 = and i32 %conv45, 8192
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %while.body.48, label %while.end.50

while.body.48:                                    ; preds = %while.cond.40
  %34 = load i8*, i8** %chp, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr49, i8** %chp, align 8
  br label %while.cond.40

while.end.50:                                     ; preds = %while.cond.40
  %35 = load i8*, i8** %chp, align 8
  %36 = load i8, i8* %35, align 1
  %conv51 = sext i8 %36 to i32
  %cmp52 = icmp ne i32 %conv51, 40
  br i1 %cmp52, label %if.then.54, label %if.end

if.then.54:                                       ; preds = %while.end.50
  %37 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call55 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.81, i32 0, i32 0), i32 1, %struct.FILE_POS* %37)
  br label %if.end

if.end:                                           ; preds = %if.then.54, %while.end.50
  %38 = load i8*, i8** %chp, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr56, i8** %chp, align 8
  %call57 = call i8* @PDFPage_EvalExpr(i8* %incdec.ptr56, float* %val1)
  store i8* %call57, i8** %chp, align 8
  %39 = load i32, i32* %i, align 4
  %cmp58 = icmp sle i32 %39, 3
  br i1 %cmp58, label %if.then.63, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %if.end
  %40 = load i32, i32* %i, align 4
  %cmp61 = icmp eq i32 %40, 6
  br i1 %cmp61, label %if.then.63, label %if.end.92

if.then.63:                                       ; preds = %lor.lhs.false.60, %if.end
  %41 = load i32, i32* %i, align 4
  %cmp64 = icmp eq i32 %41, 6
  br i1 %cmp64, label %if.then.66, label %if.else.72

if.then.66:                                       ; preds = %if.then.63
  %42 = load float, float* %val1, align 4
  %conv67 = fpext float %42 to double
  %call68 = call double @floor(double %conv67) #7
  %conv69 = fptosi double %call68 to i32
  store i32 %conv69, i32* %count, align 4
  %43 = load i32, i32* %count, align 4
  %cmp70 = icmp ne i32 %43, 0
  %conv71 = zext i1 %cmp70 to i32
  %44 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv71, %struct.FILE_POS* %44)
  br label %if.end.73

if.else.72:                                       ; preds = %if.then.63
  store i32 1, i32* %count, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.72, %if.then.66
  %45 = load i8*, i8** %chp, align 8
  %46 = load i8, i8* %45, align 1
  %conv74 = sext i8 %46 to i32
  %cmp75 = icmp ne i32 %conv74, 44
  br i1 %cmp75, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.end.73
  %47 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call78 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.82, i32 0, i32 0), i32 1, %struct.FILE_POS* %47)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %if.end.73
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.79
  %48 = load i8*, i8** %chp, align 8
  %incdec.ptr80 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr80, i8** %chp, align 8
  %call81 = call i8* @PDFPage_EvalExpr(i8* %incdec.ptr80, float* %val2)
  store i8* %call81, i8** %chp, align 8
  %49 = load i32, i32* %count, align 4
  %cmp82 = icmp ne i32 %49, 1
  br i1 %cmp82, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %do.body
  %50 = load i8*, i8** %chp, align 8
  %51 = load i8, i8* %50, align 1
  %conv84 = sext i8 %51 to i32
  %cmp85 = icmp eq i32 %conv84, 44
  br i1 %cmp85, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %land.lhs.true
  %52 = load i8*, i8** %chp, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr88, i8** %chp, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %land.lhs.true, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.89
  %53 = load i32, i32* %count, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %count, align 4
  %cmp90 = icmp ne i32 %dec, 0
  br i1 %cmp90, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.92

if.end.92:                                        ; preds = %do.end, %lor.lhs.false.60
  %54 = load i8*, i8** %chp, align 8
  %55 = load i8, i8* %54, align 1
  %conv93 = sext i8 %55 to i32
  %cmp94 = icmp ne i32 %conv93, 41
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %if.end.92
  %56 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call97 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.83, i32 0, i32 0), i32 1, %struct.FILE_POS* %56)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %if.end.92
  %57 = load i8*, i8** %chp, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr99, i8** %chp, align 8
  %58 = load i32, i32* %i, align 4
  switch i32 %58, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.100
    i32 2, label %sw.bb.102
    i32 3, label %sw.bb.103
    i32 4, label %sw.bb.106
    i32 5, label %sw.bb.112
    i32 6, label %sw.bb.118
  ]

sw.bb:                                            ; preds = %if.end.98
  %59 = load float, float* %val1, align 4
  %60 = load float, float* %val2, align 4
  %add = fadd float %59, %60
  %61 = load float*, float** %outValue.addr, align 8
  store float %add, float* %61, align 4
  br label %sw.epilog

sw.bb.100:                                        ; preds = %if.end.98
  %62 = load float, float* %val1, align 4
  %63 = load float, float* %val2, align 4
  %sub101 = fsub float %62, %63
  %64 = load float*, float** %outValue.addr, align 8
  store float %sub101, float* %64, align 4
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.end.98
  %65 = load float, float* %val1, align 4
  %66 = load float, float* %val2, align 4
  %mul = fmul float %65, %66
  %67 = load float*, float** %outValue.addr, align 8
  store float %mul, float* %67, align 4
  br label %sw.epilog

sw.bb.103:                                        ; preds = %if.end.98
  %68 = load float, float* %val2, align 4
  %cmp104 = fcmp une float %68, 0.000000e+00
  %conv105 = zext i1 %cmp104 to i32
  %69 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv105, %struct.FILE_POS* %69)
  %70 = load float, float* %val1, align 4
  %71 = load float, float* %val2, align 4
  %div = fdiv float %70, %71
  %72 = load float*, float** %outValue.addr, align 8
  store float %div, float* %72, align 4
  br label %sw.epilog

sw.bb.106:                                        ; preds = %if.end.98
  %73 = load float, float* %val1, align 4
  %conv107 = fpext float %73 to double
  %mul108 = fmul double %conv107, 0x400921FB54442D18
  %div109 = fdiv double %mul108, 1.800000e+02
  %call110 = call double @sin(double %div109) #5
  %conv111 = fptrunc double %call110 to float
  %74 = load float*, float** %outValue.addr, align 8
  store float %conv111, float* %74, align 4
  br label %sw.epilog

sw.bb.112:                                        ; preds = %if.end.98
  %75 = load float, float* %val1, align 4
  %conv113 = fpext float %75 to double
  %mul114 = fmul double %conv113, 0x400921FB54442D18
  %div115 = fdiv double %mul114, 1.800000e+02
  %call116 = call double @cos(double %div115) #5
  %conv117 = fptrunc double %call116 to float
  %76 = load float*, float** %outValue.addr, align 8
  store float %conv117, float* %76, align 4
  br label %sw.epilog

sw.bb.118:                                        ; preds = %if.end.98
  %77 = load float, float* %val2, align 4
  %78 = load float*, float** %outValue.addr, align 8
  store float %77, float* %78, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.98, %sw.bb.118, %sw.bb.112, %sw.bb.106, %sw.bb.103, %sw.bb.102, %sw.bb.100, %sw.bb
  br label %if.end.147

if.else.119:                                      ; preds = %if.else.32
  %79 = load i8*, i8** %chp, align 8
  %call120 = call i32 @PDFKeyword_Find(i32 4, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @g_graphic_keywords, i32 0, i32 0), i8* %79)
  store i32 %call120, i32* %i, align 4
  %80 = load i32, i32* %i, align 4
  %cmp121 = icmp sge i32 %80, 0
  br i1 %cmp121, label %if.then.123, label %if.else.131

if.then.123:                                      ; preds = %if.else.119
  %81 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %81 to i64
  %arrayidx125 = getelementptr inbounds [4 x i8*], [4 x i8*]* @g_graphic_keywords, i32 0, i64 %idxprom124
  %82 = load i8*, i8** %arrayidx125, align 8
  %call126 = call i64 @strlen(i8* %82) #6
  %83 = load i8*, i8** %chp, align 8
  %add.ptr127 = getelementptr inbounds i8, i8* %83, i64 %call126
  store i8* %add.ptr127, i8** %chp, align 8
  %84 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %84 to i64
  %arrayidx129 = getelementptr inbounds [4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 %idxprom128
  %85 = load i32, i32* %arrayidx129, align 4
  %conv130 = sitofp i32 %85 to float
  %86 = load float*, float** %outValue.addr, align 8
  store float %conv130, float* %86, align 4
  br label %if.end.146

if.else.131:                                      ; preds = %if.else.119
  %87 = load i8*, i8** %chp, align 8
  %call132 = call i32 @PDFKeyword_Find(i32 7, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @g_unit_keywords, i32 0, i32 0), i8* %87)
  store i32 %call132, i32* %i, align 4
  %88 = load i32, i32* %i, align 4
  %cmp133 = icmp sge i32 %88, 0
  br i1 %cmp133, label %if.then.135, label %if.else.143

if.then.135:                                      ; preds = %if.else.131
  %89 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %89 to i64
  %arrayidx137 = getelementptr inbounds [7 x i8*], [7 x i8*]* @g_unit_keywords, i32 0, i64 %idxprom136
  %90 = load i8*, i8** %arrayidx137, align 8
  %call138 = call i64 @strlen(i8* %90) #6
  %91 = load i8*, i8** %chp, align 8
  %add.ptr139 = getelementptr inbounds i8, i8* %91, i64 %call138
  store i8* %add.ptr139, i8** %chp, align 8
  %92 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %92 to i64
  %arrayidx141 = getelementptr inbounds [7 x i32], [7 x i32]* @g_units, i32 0, i64 %idxprom140
  %93 = load i32, i32* %arrayidx141, align 4
  %conv142 = sitofp i32 %93 to float
  %94 = load float*, float** %outValue.addr, align 8
  store float %conv142, float* %94, align 4
  br label %if.end.145

if.else.143:                                      ; preds = %if.else.131
  %95 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call144 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 33, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.84, i32 0, i32 0), i32 1, %struct.FILE_POS* %95)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.143, %if.then.135
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.123
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %sw.epilog
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.then.29
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then
  %96 = load i8*, i8** %chp, align 8
  ret i8* %96
}

; Function Attrs: nounwind uwtable
define internal i8* @PDFPage_GetFloat(i8* %in_str, float* %out_value) #0 {
entry:
  %in_str.addr = alloca i8*, align 8
  %out_value.addr = alloca float*, align 8
  store i8* %in_str, i8** %in_str.addr, align 8
  store float* %out_value, float** %out_value.addr, align 8
  %0 = load i8*, i8** %in_str.addr, align 8
  %1 = load float*, float** %out_value.addr, align 8
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i32 0, i32 0), float* %1) #5
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i8*, i8** %in_str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %idxprom = sext i32 %conv to i64
  %call1 = call i16** @__ctype_b_loc() #7
  %4 = load i16*, i16** %call1, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %5 to i32
  %and = and i32 %conv2, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %in_str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %in_str.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i8*, i8** %in_str.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv3 = zext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv3, 45
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %9 = load i8*, i8** %in_str.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = zext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 43
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %lor.lhs.false, %while.end
  %11 = load i8*, i8** %in_str.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr10, i8** %in_str.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %lor.lhs.false
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.22, %if.end
  %12 = load i8*, i8** %in_str.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv12 = zext i8 %13 to i32
  %idxprom13 = sext i32 %conv12 to i64
  %call14 = call i16** @__ctype_b_loc() #7
  %14 = load i16*, i16** %call14, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %14, i64 %idxprom13
  %15 = load i16, i16* %arrayidx15, align 2
  %conv16 = zext i16 %15 to i32
  %and17 = and i32 %conv16, 2048
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.11
  %16 = load i8*, i8** %in_str.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv19 = zext i8 %17 to i32
  %cmp20 = icmp eq i32 %conv19, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.11
  %18 = phi i1 [ true, %while.cond.11 ], [ %cmp20, %lor.rhs ]
  br i1 %18, label %while.body.22, label %while.end.24

while.body.22:                                    ; preds = %lor.end
  %19 = load i8*, i8** %in_str.addr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr23, i8** %in_str.addr, align 8
  br label %while.cond.11

while.end.24:                                     ; preds = %lor.end
  br label %if.end.26

if.else:                                          ; preds = %entry
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call25 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 21, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.86, i32 0, i32 0), i32 1, %struct.FILE_POS* %20)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %while.end.24
  %21 = load i8*, i8** %in_str.addr, align 8
  ret i8* %21
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @PDFPage_ProcessLinkKeyword() #0 {
entry:
  %charPtr = alloca i8*, align 8
  %keyword = alloca i32, align 4
  %link_len = alloca i32, align 4
  %link_name = alloca i8*, align 8
  %parm = alloca i8*, align 8
  %ll_x = alloca i32, align 4
  %ll_y = alloca i32, align 4
  %ur_x = alloca i32, align 4
  %ur_y = alloca i32, align 4
  %j = alloca i32, align 4
  %source = alloca %struct.t_source_annot_entry*, align 8
  %j70 = alloca i32, align 4
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @g_link, i32 0, i32 0), i8** %charPtr, align 8
  %0 = load i32, i32* @g_link_keyword, align 4
  store i32 %0, i32* %keyword, align 4
  store i32 0, i32* %link_len, align 4
  %1 = load i8*, i8** %charPtr, align 8
  store i8* %1, i8** %link_name, align 8
  store i8* null, i8** %parm, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %charPtr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end.14

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %charPtr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %5 to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #7
  %6 = load i16*, i16** %call, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx3, align 2
  %conv4 = zext i16 %7 to i32
  %and = and i32 %conv4, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %land.rhs
  %8 = load i8*, i8** %charPtr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 95
  br i1 %cmp7, label %land.rhs.9, label %land.end

land.rhs.9:                                       ; preds = %land.lhs.true
  %10 = load i8*, i8** %charPtr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 2
  %11 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 95
  br label %land.end

land.end:                                         ; preds = %land.rhs.9, %land.lhs.true, %land.rhs
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %land.rhs ], [ %cmp12, %land.rhs.9 ]
  %lnot = xor i1 %12, true
  br label %land.end.14

land.end.14:                                      ; preds = %land.end, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %lnot, %land.end ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.14
  %14 = load i32, i32* %link_len, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %link_len, align 4
  %15 = load i8*, i8** %charPtr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %charPtr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.14
  %16 = load i8*, i8** %charPtr, align 8
  %17 = load i8, i8* %16, align 1
  %conv15 = zext i8 %17 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %18 = load i8*, i8** %charPtr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr18, i8** %charPtr, align 8
  store i8* %incdec.ptr18, i8** %parm, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.23, %if.end
  %19 = load i8*, i8** %charPtr, align 8
  %20 = load i8, i8* %19, align 1
  %conv20 = zext i8 %20 to i32
  %cmp21 = icmp ne i32 %conv20, 0
  br i1 %cmp21, label %while.body.23, label %while.end.25

while.body.23:                                    ; preds = %while.cond.19
  %21 = load i8*, i8** %charPtr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr24, i8** %charPtr, align 8
  br label %while.cond.19

while.end.25:                                     ; preds = %while.cond.19
  %22 = load i32, i32* %link_len, align 4
  %cmp26 = icmp eq i32 %22, 0
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %while.end.25
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call29 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 22, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.95, i32 0, i32 0), i32 2, %struct.FILE_POS* %23)
  br label %if.end.106

if.else:                                          ; preds = %while.end.25
  %24 = load i32, i32* @g_page_h_origin, align 4
  %conv30 = sitofp i32 %24 to float
  %25 = load float, float* @g_page_h_scale_factor, align 4
  %mul = fmul float %conv30, %25
  %conv31 = fptosi float %mul to i32
  store i32 %conv31, i32* %ll_x, align 4
  %26 = load i32, i32* @g_page_v_origin, align 4
  %conv32 = sitofp i32 %26 to float
  %27 = load float, float* @g_page_v_scale_factor, align 4
  %mul33 = fmul float %conv32, %27
  %conv34 = fptosi float %mul33 to i32
  store i32 %conv34, i32* %ll_y, align 4
  %28 = load i32, i32* @g_page_h_origin, align 4
  %29 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 0), align 4
  %add = add nsw i32 %28, %29
  %conv35 = sitofp i32 %add to float
  %30 = load float, float* @g_page_h_scale_factor, align 4
  %mul36 = fmul float %conv35, %30
  %conv37 = fptosi float %mul36 to i32
  store i32 %conv37, i32* %ur_x, align 4
  %31 = load i32, i32* @g_page_v_origin, align 4
  %32 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_graphics_vars, i32 0, i64 1), align 4
  %add38 = add nsw i32 %31, %32
  %conv39 = sitofp i32 %add38 to float
  %33 = load float, float* @g_page_v_scale_factor, align 4
  %mul40 = fmul float %conv39, %33
  %conv41 = fptosi float %mul40 to i32
  store i32 %conv41, i32* %ur_y, align 4
  %34 = load i32, i32* %keyword, align 4
  switch i32 %34, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.65
    i32 2, label %sw.bb.65
    i32 3, label %sw.bb.102
    i32 4, label %sw.bb.102
    i32 5, label %sw.bb.105
  ]

sw.bb:                                            ; preds = %if.else
  %35 = load i8*, i8** %parm, align 8
  %cmp42 = icmp ne i8* %35, null
  br i1 %cmp42, label %if.then.44, label %if.else.62

if.then.44:                                       ; preds = %sw.bb
  %36 = load i8*, i8** %charPtr, align 8
  %call45 = call i32 @PDFKeyword_Find(i32 8, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @g_dest_link_options, i32 0, i32 0), i8* %36)
  store i32 %call45, i32* %j, align 4
  %37 = load i32, i32* %j, align 4
  %cmp46 = icmp sge i32 %37, 0
  br i1 %cmp46, label %if.then.48, label %if.else.52

if.then.48:                                       ; preds = %if.then.44
  %38 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %38 to i64
  %arrayidx50 = getelementptr inbounds [8 x i8*], [8 x i8*]* @g_dest_link_options, i32 0, i64 %idxprom49
  %39 = load i8*, i8** %arrayidx50, align 8
  %call51 = call i64 @strlen(i8* %39) #6
  %40 = load i8*, i8** %charPtr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %call51
  store i8* %add.ptr, i8** %charPtr, align 8
  br label %if.end.61

if.else.52:                                       ; preds = %if.then.44
  store i32 0, i32* %j, align 4
  br label %while.cond.53

while.cond.53:                                    ; preds = %while.body.57, %if.else.52
  %41 = load i8*, i8** %charPtr, align 8
  %42 = load i8, i8* %41, align 1
  %conv54 = zext i8 %42 to i32
  %cmp55 = icmp ne i32 %conv54, 0
  br i1 %cmp55, label %while.body.57, label %while.end.59

while.body.57:                                    ; preds = %while.cond.53
  %43 = load i8*, i8** %charPtr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr58, i8** %charPtr, align 8
  br label %while.cond.53

while.end.59:                                     ; preds = %while.cond.53
  %44 = load i8*, i8** %charPtr, align 8
  %45 = load i8*, i8** %link_name, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %45 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv60 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv60, i32* %link_len, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %while.end.59, %if.then.48
  br label %if.end.63

if.else.62:                                       ; preds = %sw.bb
  store i32 0, i32* %j, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.end.61
  %46 = load i32, i32* %keyword, align 4
  %47 = load i8*, i8** %link_name, align 8
  %48 = load i32, i32* %link_len, align 4
  %49 = load i32, i32* %ll_x, align 4
  %50 = load i32, i32* %ll_y, align 4
  %51 = load i32, i32* %ur_x, align 4
  %52 = load i32, i32* %ur_y, align 4
  %53 = load i32, i32* %j, align 4
  %call64 = call %struct.t_source_annot_entry* @PDFSourceAnnot_New(i32 %46, i8* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.else, %if.else
  %54 = load i32, i32* %keyword, align 4
  %55 = load i8*, i8** %link_name, align 8
  %56 = load i32, i32* %link_len, align 4
  %57 = load i32, i32* %ll_x, align 4
  %58 = load i32, i32* %ll_y, align 4
  %59 = load i32, i32* %ur_x, align 4
  %60 = load i32, i32* %ur_y, align 4
  %call66 = call %struct.t_source_annot_entry* @PDFSourceAnnot_New(i32 %54, i8* %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 0)
  store %struct.t_source_annot_entry* %call66, %struct.t_source_annot_entry** %source, align 8
  %61 = load i32, i32* %keyword, align 4
  %cmp67 = icmp eq i32 %61, 1
  br i1 %cmp67, label %if.then.69, label %if.end.101

if.then.69:                                       ; preds = %sw.bb.65
  store i32 0, i32* %link_len, align 4
  %62 = load i8*, i8** %parm, align 8
  %cmp71 = icmp ne i8* %62, null
  br i1 %cmp71, label %if.then.73, label %if.end.83

if.then.73:                                       ; preds = %if.then.69
  %63 = load i8*, i8** %parm, align 8
  %call74 = call i32 @PDFKeyword_Find(i32 1, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_external_file_spec_keyword, i32 0, i32 0), i8* %63)
  store i32 %call74, i32* %j70, align 4
  %64 = load i32, i32* %j70, align 4
  %cmp75 = icmp eq i32 %64, 0
  br i1 %cmp75, label %if.then.77, label %if.end.82

if.then.77:                                       ; preds = %if.then.73
  %65 = load i8*, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @g_external_file_spec_keyword, i32 0, i64 0), align 8
  %call78 = call i64 @strlen(i8* %65) #6
  %66 = load i8*, i8** %parm, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %66, i64 %call78
  store i8* %add.ptr79, i8** %parm, align 8
  %67 = load i8*, i8** %parm, align 8
  %call80 = call i64 @strlen(i8* %67) #6
  %conv81 = trunc i64 %call80 to i32
  store i32 %conv81, i32* %link_len, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.77, %if.then.73
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.69
  %68 = load i32, i32* %link_len, align 4
  %cmp84 = icmp eq i32 %68, 0
  br i1 %cmp84, label %if.then.86, label %if.else.88

if.then.86:                                       ; preds = %if.end.83
  %69 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call87 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i32 0, i32 0), i32 1, %struct.FILE_POS* %69)
  br label %if.end.100

if.else.88:                                       ; preds = %if.end.83
  %70 = load i32, i32* %link_len, align 4
  %add89 = add i32 %70, 1
  %conv90 = zext i32 %add89 to i64
  %call91 = call noalias i8* @malloc(i64 %conv90) #5
  %71 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %m_file_spec = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %71, i32 0, i32 3
  store i8* %call91, i8** %m_file_spec, align 8
  %72 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %m_file_spec92 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %72, i32 0, i32 3
  %73 = load i8*, i8** %m_file_spec92, align 8
  %cmp93 = icmp eq i8* %73, null
  br i1 %cmp93, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.else.88
  %74 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call96 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.97, i32 0, i32 0), i32 1, %struct.FILE_POS* %74)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.else.88
  %75 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %source, align 8
  %m_file_spec98 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %75, i32 0, i32 3
  %76 = load i8*, i8** %m_file_spec98, align 8
  %77 = load i8*, i8** %parm, align 8
  %call99 = call i8* @strcpy(i8* %76, i8* %77) #5
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.97, %if.then.86
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %sw.bb.65
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.else, %if.else
  %78 = load i8*, i8** %link_name, align 8
  %79 = load i32, i32* %link_len, align 4
  %80 = load i32, i32* %ll_x, align 4
  %81 = load i32, i32* %ll_y, align 4
  %82 = load i32, i32* %ur_x, align 4
  %83 = load i32, i32* %ur_y, align 4
  %84 = load i32, i32* %keyword, align 4
  %cmp103 = icmp eq i32 %84, 4
  %conv104 = zext i1 %cmp103 to i32
  call void @PDFTargetAnnot_New(i8* %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %conv104)
  br label %sw.epilog

sw.bb.105:                                        ; preds = %if.else
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb.105, %sw.bb.102, %if.end.101, %if.end.63
  br label %if.end.106

if.end.106:                                       ; preds = %sw.epilog, %if.then.28
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.t_source_annot_entry* @PDFSourceAnnot_New(i32 %in_link_type, i8* %in_annot_name, i32 %in_annot_name_length, i32 %in_ll_x, i32 %in_ll_y, i32 %in_ur_x, i32 %in_ur_y, i32 %in_link_dest_option) #0 {
entry:
  %in_link_type.addr = alloca i32, align 4
  %in_annot_name.addr = alloca i8*, align 8
  %in_annot_name_length.addr = alloca i32, align 4
  %in_ll_x.addr = alloca i32, align 4
  %in_ll_y.addr = alloca i32, align 4
  %in_ur_x.addr = alloca i32, align 4
  %in_ur_y.addr = alloca i32, align 4
  %in_link_dest_option.addr = alloca i32, align 4
  %target = alloca %struct.t_target_annot_entry*, align 8
  %entry1 = alloca %struct.t_source_annot_entry*, align 8
  store i32 %in_link_type, i32* %in_link_type.addr, align 4
  store i8* %in_annot_name, i8** %in_annot_name.addr, align 8
  store i32 %in_annot_name_length, i32* %in_annot_name_length.addr, align 4
  store i32 %in_ll_x, i32* %in_ll_x.addr, align 4
  store i32 %in_ll_y, i32* %in_ll_y.addr, align 4
  store i32 %in_ur_x, i32* %in_ur_x.addr, align 4
  store i32 %in_ur_y, i32* %in_ur_y.addr, align 4
  store i32 %in_link_dest_option, i32* %in_link_dest_option.addr, align 4
  store %struct.t_target_annot_entry* null, %struct.t_target_annot_entry** %target, align 8
  %call = call noalias i8* @malloc(i64 72) #5
  %0 = bitcast i8* %call to %struct.t_source_annot_entry*
  store %struct.t_source_annot_entry* %0, %struct.t_source_annot_entry** %entry1, align 8
  %1 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %cmp = icmp eq %struct.t_source_annot_entry* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.106, i32 0, i32 0), i32 1, %struct.FILE_POS* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %in_ll_x.addr, align 4
  %4 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_ll_x = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %4, i32 0, i32 4
  store i32 %3, i32* %m_ll_x, align 4
  %5 = load i32, i32* %in_ll_y.addr, align 4
  %6 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_ll_y = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %6, i32 0, i32 5
  store i32 %5, i32* %m_ll_y, align 4
  %7 = load i32, i32* %in_ur_x.addr, align 4
  %8 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_ur_x = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %8, i32 0, i32 6
  store i32 %7, i32* %m_ur_x, align 4
  %9 = load i32, i32* %in_ur_y.addr, align 4
  %10 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_ur_y = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %10, i32 0, i32 7
  store i32 %9, i32* %m_ur_y, align 4
  %call3 = call i32 @PDFObject_New()
  %11 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_this_object_num = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %11, i32 0, i32 8
  store i32 %call3, i32* %m_this_object_num, align 4
  %12 = load i32, i32* @g_page_object_num, align 4
  %13 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_this_page_object_num = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %13, i32 0, i32 9
  store i32 %12, i32* %m_this_page_object_num, align 4
  %14 = load i32, i32* %in_link_type.addr, align 4
  %15 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_link_type = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %15, i32 0, i32 11
  store i32 %14, i32* %m_link_type, align 4
  %16 = load i32, i32* %in_link_dest_option.addr, align 4
  %cmp4 = icmp uge i32 %16, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %17 = load i32, i32* %in_link_dest_option.addr, align 4
  %cmp5 = icmp ule i32 %17, 7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %18 = phi i1 [ false, %if.end ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %land.ext, %struct.FILE_POS* %19)
  %20 = load i32, i32* %in_link_dest_option.addr, align 4
  %21 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_dest_option = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %21, i32 0, i32 10
  store i32 %20, i32* %m_dest_option, align 4
  %22 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_file_spec = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %22, i32 0, i32 3
  store i8* null, i8** %m_file_spec, align 8
  %23 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_written_to_PDF_file = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %23, i32 0, i32 12
  store i32 0, i32* %m_written_to_PDF_file, align 4
  %24 = load i32, i32* %in_link_type.addr, align 4
  %cmp6 = icmp eq i32 %24, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %land.end
  %25 = load i8*, i8** %in_annot_name.addr, align 8
  %call8 = call %struct.t_target_annot_entry* @PDFTargetAnnot_Find(i8* %25)
  store %struct.t_target_annot_entry* %call8, %struct.t_target_annot_entry** %target, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %land.end
  %26 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %cmp10 = icmp ne %struct.t_target_annot_entry* %26, null
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %27 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %target, align 8
  %28 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_target = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %28, i32 0, i32 1
  store %struct.t_target_annot_entry* %27, %struct.t_target_annot_entry** %m_target, align 8
  %29 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_name = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %29, i32 0, i32 2
  store i8* null, i8** %m_name, align 8
  br label %if.end.24

if.else:                                          ; preds = %if.end.9
  %30 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_target12 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %30, i32 0, i32 1
  store %struct.t_target_annot_entry* null, %struct.t_target_annot_entry** %m_target12, align 8
  %31 = load i32, i32* %in_annot_name_length.addr, align 4
  %add = add i32 %31, 1
  %conv = zext i32 %add to i64
  %call13 = call noalias i8* @malloc(i64 %conv) #5
  %32 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_name14 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %32, i32 0, i32 2
  store i8* %call13, i8** %m_name14, align 8
  %33 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_name15 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %33, i32 0, i32 2
  %34 = load i8*, i8** %m_name15, align 8
  %cmp16 = icmp eq i8* %34, null
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.else
  %35 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call19 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.106, i32 0, i32 0), i32 1, %struct.FILE_POS* %35)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.else
  %36 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_name21 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %36, i32 0, i32 2
  %37 = load i8*, i8** %m_name21, align 8
  %38 = load i8*, i8** %in_annot_name.addr, align 8
  %39 = load i32, i32* %in_annot_name_length.addr, align 4
  %conv22 = zext i32 %39 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 %conv22, i32 1, i1 false)
  %40 = load i32, i32* %in_annot_name_length.addr, align 4
  %idxprom = zext i32 %40 to i64
  %41 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_name23 = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %41, i32 0, i32 2
  %42 = load i8*, i8** %m_name23, align 8
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.20, %if.then.11
  %43 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  %44 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  %m_next_entry = getelementptr inbounds %struct.t_source_annot_entry, %struct.t_source_annot_entry* %44, i32 0, i32 0
  store %struct.t_source_annot_entry* %43, %struct.t_source_annot_entry** %m_next_entry, align 8
  %45 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  store %struct.t_source_annot_entry* %45, %struct.t_source_annot_entry** @g_source_annot_list, align 8
  %46 = load %struct.t_source_annot_entry*, %struct.t_source_annot_entry** %entry1, align 8
  ret %struct.t_source_annot_entry* %46
}

; Function Attrs: nounwind uwtable
define internal void @PDFTargetAnnot_New(i8* %in_annot_name, i32 %in_annot_name_length, i32 %in_ll_x, i32 %in_ll_y, i32 %in_ur_x, i32 %in_ur_y, i32 %in_for_export) #0 {
entry:
  %in_annot_name.addr = alloca i8*, align 8
  %in_annot_name_length.addr = alloca i32, align 4
  %in_ll_x.addr = alloca i32, align 4
  %in_ll_y.addr = alloca i32, align 4
  %in_ur_x.addr = alloca i32, align 4
  %in_ur_y.addr = alloca i32, align 4
  %in_for_export.addr = alloca i32, align 4
  %entry1 = alloca %struct.t_target_annot_entry*, align 8
  store i8* %in_annot_name, i8** %in_annot_name.addr, align 8
  store i32 %in_annot_name_length, i32* %in_annot_name_length.addr, align 4
  store i32 %in_ll_x, i32* %in_ll_x.addr, align 4
  store i32 %in_ll_y, i32* %in_ll_y.addr, align 4
  store i32 %in_ur_x, i32* %in_ur_x.addr, align 4
  store i32 %in_ur_y, i32* %in_ur_y.addr, align 4
  store i32 %in_for_export, i32* %in_for_export.addr, align 4
  %call = call noalias i8* @malloc(i64 40) #5
  %0 = bitcast i8* %call to %struct.t_target_annot_entry*
  store %struct.t_target_annot_entry* %0, %struct.t_target_annot_entry** %entry1, align 8
  %1 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %cmp = icmp eq %struct.t_target_annot_entry* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call2 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.108, i32 0, i32 0), i32 1, %struct.FILE_POS* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %in_annot_name_length.addr, align 4
  %add = add i32 %3, 1
  %conv = zext i32 %add to i64
  %call3 = call noalias i8* @malloc(i64 %conv) #5
  %4 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %m_name = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %4, i32 0, i32 1
  store i8* %call3, i8** %m_name, align 8
  %5 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %m_name4 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %5, i32 0, i32 1
  %6 = load i8*, i8** %m_name4, align 8
  %cmp5 = icmp eq i8* %6, null
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call8 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.108, i32 0, i32 0), i32 1, %struct.FILE_POS* %7)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %8 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %m_name10 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %8, i32 0, i32 1
  %9 = load i8*, i8** %m_name10, align 8
  %10 = load i8*, i8** %in_annot_name.addr, align 8
  %11 = load i32, i32* %in_annot_name_length.addr, align 4
  %conv11 = zext i32 %11 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 %conv11, i32 1, i1 false)
  %12 = load i32, i32* %in_annot_name_length.addr, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %m_name12 = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %13, i32 0, i32 1
  %14 = load i8*, i8** %m_name12, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %15 = load i32, i32* @g_page_contents_obj_num, align 4
  %cmp13 = icmp ne i32 %15, 0
  %conv14 = zext i1 %cmp13 to i32
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv14, %struct.FILE_POS* %16)
  %17 = load i32, i32* @g_page_object_num, align 4
  %18 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %m_page_object_num = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %18, i32 0, i32 2
  store i32 %17, i32* %m_page_object_num, align 4
  %19 = load i32, i32* %in_ll_x.addr, align 4
  %20 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %m_ll_x = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %20, i32 0, i32 3
  store i32 %19, i32* %m_ll_x, align 4
  %21 = load i32, i32* %in_ll_y.addr, align 4
  %22 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %m_ll_y = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %22, i32 0, i32 4
  store i32 %21, i32* %m_ll_y, align 4
  %23 = load i32, i32* %in_ur_x.addr, align 4
  %24 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %m_ur_x = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %24, i32 0, i32 5
  store i32 %23, i32* %m_ur_x, align 4
  %25 = load i32, i32* %in_ur_y.addr, align 4
  %26 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %m_ur_y = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %26, i32 0, i32 6
  store i32 %25, i32* %m_ur_y, align 4
  %27 = load i32, i32* %in_for_export.addr, align 4
  %28 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %m_for_export = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %28, i32 0, i32 7
  store i32 %27, i32* %m_for_export, align 4
  %29 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  %30 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  %m_next_entry = getelementptr inbounds %struct.t_target_annot_entry, %struct.t_target_annot_entry* %30, i32 0, i32 0
  store %struct.t_target_annot_entry* %29, %struct.t_target_annot_entry** %m_next_entry, align 8
  %31 = load %struct.t_target_annot_entry*, %struct.t_target_annot_entry** %entry1, align 8
  store %struct.t_target_annot_entry* %31, %struct.t_target_annot_entry** @g_target_annot_list, align 8
  %32 = load i32, i32* %in_for_export.addr, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  %33 = load i32, i32* %in_for_export.addr, align 4
  store i32 %33, i32* @g_has_exported_targets, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @PDFObject_New() #0 {
entry:
  %wanted_block_num = alloca i32, align 4
  %block_pos = alloca i32, align 4
  %the_block = alloca %struct.t_offset_block*, align 8
  %0 = load i32, i32* @g_next_objnum, align 4
  %sub = sub i32 %0, 1
  %div = udiv i32 %sub, 256
  store i32 %div, i32* %wanted_block_num, align 4
  %1 = load i32, i32* @g_next_objnum, align 4
  %sub1 = sub i32 %1, 1
  %rem = urem i32 %sub1, 256
  store i32 %rem, i32* %block_pos, align 4
  %2 = load %struct.t_offset_block*, %struct.t_offset_block** @g_cur_obj_offset_block, align 8
  store %struct.t_offset_block* %2, %struct.t_offset_block** %the_block, align 8
  %3 = load i32, i32* %block_pos, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else.12

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 1032) #5
  %4 = bitcast i8* %call to %struct.t_offset_block*
  store %struct.t_offset_block* %4, %struct.t_offset_block** %the_block, align 8
  %5 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %cmp2 = icmp eq %struct.t_offset_block* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %call4 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 48, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.133, i32 0, i32 0), i32 1, %struct.FILE_POS* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %7 = load i32, i32* %wanted_block_num, align 4
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %8 = load %struct.t_offset_block*, %struct.t_offset_block** @g_obj_offset_list, align 8
  %cmp7 = icmp eq %struct.t_offset_block* %8, null
  %conv = zext i1 %cmp7 to i32
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv, %struct.FILE_POS* %9)
  %10 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  store %struct.t_offset_block* %10, %struct.t_offset_block** @g_obj_offset_list, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %11 = load %struct.t_offset_block*, %struct.t_offset_block** @g_cur_obj_offset_block, align 8
  %cmp8 = icmp ne %struct.t_offset_block* %11, null
  %conv9 = zext i1 %cmp8 to i32
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv9, %struct.FILE_POS* %12)
  %13 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %14 = load %struct.t_offset_block*, %struct.t_offset_block** @g_cur_obj_offset_block, align 8
  %m_next_block = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %14, i32 0, i32 0
  store %struct.t_offset_block* %13, %struct.t_offset_block** %m_next_block, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.6
  %15 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %m_next_block11 = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %15, i32 0, i32 0
  store %struct.t_offset_block* null, %struct.t_offset_block** %m_next_block11, align 8
  %16 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  store %struct.t_offset_block* %16, %struct.t_offset_block** @g_cur_obj_offset_block, align 8
  br label %if.end.15

if.else.12:                                       ; preds = %entry
  %17 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %cmp13 = icmp ne %struct.t_offset_block* %17, null
  %conv14 = zext i1 %cmp13 to i32
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv14, %struct.FILE_POS* %18)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.12, %if.end.10
  %19 = load i32, i32* %block_pos, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %m_block = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %20, i32 0, i32 1
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %m_block, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %21 = load i32, i32* @g_next_objnum, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* @g_next_objnum, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal %struct.t_offset_block* @PDFObject_FindOffsetBlock(i32 %in_obj_num, i32* %out_block_pos) #0 {
entry:
  %in_obj_num.addr = alloca i32, align 4
  %out_block_pos.addr = alloca i32*, align 8
  %wanted_block_num = alloca i32, align 4
  %block_pos = alloca i32, align 4
  %the_block = alloca %struct.t_offset_block*, align 8
  store i32 %in_obj_num, i32* %in_obj_num.addr, align 4
  store i32* %out_block_pos, i32** %out_block_pos.addr, align 8
  %0 = load i32, i32* %in_obj_num.addr, align 4
  %sub = sub i32 %0, 1
  %div = udiv i32 %sub, 256
  store i32 %div, i32* %wanted_block_num, align 4
  %1 = load i32, i32* %in_obj_num.addr, align 4
  %sub1 = sub i32 %1, 1
  %rem = urem i32 %sub1, 256
  store i32 %rem, i32* %block_pos, align 4
  %2 = load %struct.t_offset_block*, %struct.t_offset_block** @g_obj_offset_list, align 8
  store %struct.t_offset_block* %2, %struct.t_offset_block** %the_block, align 8
  %3 = load i32, i32* %in_obj_num.addr, align 4
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load i32, i32* %in_obj_num.addr, align 4
  %5 = load i32, i32* @g_next_objnum, align 4
  %cmp2 = icmp ult i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %land.ext, %struct.FILE_POS* %7)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %land.end
  %8 = load i32, i32* %wanted_block_num, align 4
  %cmp3 = icmp ne i32 %8, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %cmp4 = icmp ne %struct.t_offset_block* %9, null
  %conv = zext i1 %cmp4 to i32
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv, %struct.FILE_POS* %10)
  %11 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %m_next_block = getelementptr inbounds %struct.t_offset_block, %struct.t_offset_block* %11, i32 0, i32 0
  %12 = load %struct.t_offset_block*, %struct.t_offset_block** %m_next_block, align 8
  store %struct.t_offset_block* %12, %struct.t_offset_block** %the_block, align 8
  %13 = load i32, i32* %wanted_block_num, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %wanted_block_num, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  %cmp5 = icmp ne %struct.t_offset_block* %14, null
  %conv6 = zext i1 %cmp5 to i32
  %15 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  call void @Assert(i32 %conv6, %struct.FILE_POS* %15)
  %16 = load i32*, i32** %out_block_pos.addr, align 8
  %cmp7 = icmp ne i32* %16, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %17 = load i32, i32* %block_pos, align 4
  %18 = load i32*, i32** %out_block_pos.addr, align 8
  store i32 %17, i32* %18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %19 = load %struct.t_offset_block*, %struct.t_offset_block** %the_block, align 8
  ret %struct.t_offset_block* %19
}

; Function Attrs: nounwind uwtable
define internal void @PDFFont_WriteObject(%struct._IO_FILE* %in_fp, %struct.t_font_list_entry* %in_font_entry) #0 {
entry:
  %in_fp.addr = alloca %struct._IO_FILE*, align 8
  %in_font_entry.addr = alloca %struct.t_font_list_entry*, align 8
  store %struct._IO_FILE* %in_fp, %struct._IO_FILE** %in_fp.addr, align 8
  store %struct.t_font_list_entry* %in_font_entry, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %0 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %m_pdf_object_number = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %0, i32 0, i32 5
  %1 = load i32, i32* %m_pdf_object_number, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @PDFObject_New()
  %2 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %m_pdf_object_number1 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %2, i32 0, i32 5
  store i32 %call, i32* %m_pdf_object_number1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp.addr, align 8
  %4 = load %struct.t_font_list_entry*, %struct.t_font_list_entry** %in_font_entry.addr, align 8
  %m_pdf_object_number2 = getelementptr inbounds %struct.t_font_list_entry, %struct.t_font_list_entry* %4, i32 0, i32 5
  %5 = load i32, i32* %m_pdf_object_number2, align 4
  call void @PDFObject_WriteObj(%struct._IO_FILE* %3, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @PDFFont_IsOneOfTheBase14Fonts(i8* %in_real_font_name) #0 {
entry:
  %retval = alloca i32, align 4
  %in_real_font_name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %in_real_font_name, i8** %in_real_font_name.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [14 x i8*], [14 x i8*]* @g_standard_base_14_fonts, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %3 = load i8*, i8** %in_real_font_name.addr, align 8
  %call = call i32 @strcmp(i8* %2, i8* %3) #6
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
