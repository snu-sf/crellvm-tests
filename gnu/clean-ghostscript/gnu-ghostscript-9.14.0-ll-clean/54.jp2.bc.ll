; ModuleID = './jp2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opj_jp2_header_handler = type { i32, i32 (%struct.opj_jp2*, i8*, i32, %struct.opj_event_mgr*)* }
%struct.opj_jp2 = type { %struct.opj_j2k*, %struct.opj_procedure_list*, %struct.opj_procedure_list*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.opj_jp2_comps*, i64, i64, i32, i32, i32, %struct.opj_jp2_color, i32 }
%struct.opj_j2k = type { i32, %union.anon, %struct.opj_image*, %struct.opj_image*, %struct.opj_cp, %struct.opj_procedure_list*, %struct.opj_procedure_list*, %struct.opj_codestream_index*, i32, %struct.opj_tcd* }
%union.anon = type { %struct.opj_j2k_dec }
%struct.opj_j2k_dec = type { i32, %struct.opj_tcp*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i8 }
%struct.opj_tcp = type { i32, i32, i32, i32, i32, [100 x float], i32, [32 x %struct.opj_poc], i8*, i8*, i32, i32, [100 x float], %struct.opj_tccp*, i32, i8*, i32, double*, float*, float*, %struct.opj_mct_data*, i32, i32, %struct.opj_simple_mcc_decorrelation_data*, i32, i32, i8 }
%struct.opj_poc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tccp = type { i32, i32, i32, i32, i32, i32, i32, [97 x %struct.opj_stepsize], i32, i32, [33 x i32], [33 x i32], i32 }
%struct.opj_stepsize = type { i32, i32 }
%struct.opj_mct_data = type { i32, i32, i32, i8*, i32 }
%struct.opj_simple_mcc_decorrelation_data = type { i32, i32, %struct.opj_mct_data*, %struct.opj_mct_data*, i8 }
%struct.opj_image = type { i32, i32, i32, i32, i32, i32, %struct.opj_image_comp*, i8*, i32 }
%struct.opj_image_comp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i16 }
%struct.opj_cp = type { i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, %struct.opj_tcp*, %union.anon.0, i8 }
%union.anon.0 = type { %struct.opj_encoding_param }
%struct.opj_encoding_param = type { i32, i32, i32, i32*, i8, i8 }
%struct.opj_codestream_index = type { i64, i64, i64, i32, %struct.opj_marker_info*, i32, i32, %struct.opj_tile_index* }
%struct.opj_marker_info = type { i16, i64, i32 }
%struct.opj_tile_index = type { i32, i32, i32, i32, %struct.opj_tp_index*, i32, %struct.opj_marker_info*, i32, i32, %struct.opj_packet_info* }
%struct.opj_tp_index = type { i64, i64, i64 }
%struct.opj_packet_info = type { i64, i64, i64, double }
%struct.opj_tcd = type { i32, i32, i32, i32, i32, %struct.opj_tcd_image*, %struct.opj_image*, %struct.opj_cp*, %struct.opj_tcp*, i32, i8 }
%struct.opj_tcd_image = type { %struct.opj_tcd_tile* }
%struct.opj_tcd_tile = type { i32, i32, i32, i32, i32, %struct.opj_tcd_tilecomp*, i32, double, [100 x double], i32 }
%struct.opj_tcd_tilecomp = type { i32, i32, i32, i32, i32, i32, %struct.opj_tcd_resolution*, i32, i32*, i32, i32 }
%struct.opj_tcd_resolution = type { i32, i32, i32, i32, i32, i32, i32, [3 x %struct.opj_tcd_band] }
%struct.opj_tcd_band = type { i32, i32, i32, i32, i32, %struct.opj_tcd_precinct*, i32, i32, float }
%struct.opj_tcd_precinct = type { i32, i32, i32, i32, i32, i32, %union.anon.1, i32, %struct.opj_tgt_tree*, %struct.opj_tgt_tree* }
%union.anon.1 = type { %struct.opj_tcd_cblk_enc* }
%struct.opj_tcd_cblk_enc = type { i8*, %struct.opj_tcd_layer*, %struct.opj_tcd_pass*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tcd_layer = type { i32, i32, double, i8* }
%struct.opj_tcd_pass = type { i32, double, i32, i8 }
%struct.opj_tgt_tree = type { i32, i32, i32, %struct.opj_tgt_node*, i32 }
%struct.opj_tgt_node = type { %struct.opj_tgt_node*, i32, i32, i32 }
%struct.opj_procedure_list = type { i32, i32, void ()** }
%struct.opj_jp2_comps = type { i32, i32, i32 }
%struct.opj_jp2_color = type { i8*, i32, %struct.opj_jp2_cdef*, %struct.opj_jp2_pclr*, i8 }
%struct.opj_jp2_cdef = type { %struct.opj_jp2_cdef_info*, i16 }
%struct.opj_jp2_cdef_info = type { i16, i16, i16 }
%struct.opj_jp2_pclr = type { i32*, i8*, i8*, %struct.opj_jp2_cmap_comp*, i16, i8 }
%struct.opj_jp2_cmap_comp = type { i16, i8, i8 }
%struct.opj_event_mgr = type { i8*, i8*, i8*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.opj_jp2_box = type { i32, i32, i32 }
%struct.opj_stream_private = type { i8*, i64, i64 (i8*, i64, i8*)*, i64 (i8*, i64, i8*)*, i64 (i64, i8*)*, i32 (i64, i8*)*, i8*, i8*, i64 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i32 (%struct.opj_stream_private*, i64, %struct.opj_event_mgr*)*, i64, i64, i64, i32 }
%struct.opj_jp2_img_header_writer_handler = type { i8* (%struct.opj_jp2*, i32*)*, i8*, i32 }
%struct.opj_dparameters = type { i32, i32, [4096 x i8], [4096 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_cparameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i32, i32, [32 x %struct.opj_poc], i32, i32, [100 x float], [100 x float], i32, i32, i32, i32, i32, i32, i32, i32, [33 x i32], [33 x i32], [4096 x i8], [4096 x i8], i32, [4096 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i32, i32, i32, i32, [16 x i32], [16 x i32], i32, i32, i32, i8, i8, i8, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.opj_codestream_info_v2 = type { i32, i32, i32, i32, i32, i32, i32, %struct.opj_tile_v2_info, %struct.opj_tile_v2_info* }
%struct.opj_tile_v2_info = type { i32, i32, i32, i32, i32, %struct.opj_tccp_info* }
%struct.opj_tccp_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [97 x i32], [97 x i32], i32, i32, [33 x i32], [33 x i32] }

@jp2_header = constant [3 x %struct.opj_jp2_header_handler] [%struct.opj_jp2_header_handler { i32 1783636000, i32 (%struct.opj_jp2*, i8*, i32, %struct.opj_event_mgr*)* @opj_jp2_read_jp }, %struct.opj_jp2_header_handler { i32 1718909296, i32 (%struct.opj_jp2*, i8*, i32, %struct.opj_event_mgr*)* @opj_jp2_read_ftyp }, %struct.opj_jp2_header_handler { i32 1785737832, i32 (%struct.opj_jp2*, i8*, i32, %struct.opj_event_mgr*)* @opj_jp2_read_jp2h }], align 16
@jp2_img_header = constant [6 x %struct.opj_jp2_header_handler] [%struct.opj_jp2_header_handler { i32 1768449138, i32 (%struct.opj_jp2*, i8*, i32, %struct.opj_event_mgr*)* @opj_jp2_read_ihdr }, %struct.opj_jp2_header_handler { i32 1668246642, i32 (%struct.opj_jp2*, i8*, i32, %struct.opj_event_mgr*)* @opj_jp2_read_colr }, %struct.opj_jp2_header_handler { i32 1651532643, i32 (%struct.opj_jp2*, i8*, i32, %struct.opj_event_mgr*)* @opj_jp2_read_bpcc }, %struct.opj_jp2_header_handler { i32 1885564018, i32 (%struct.opj_jp2*, i8*, i32, %struct.opj_event_mgr*)* @opj_jp2_read_pclr }, %struct.opj_jp2_header_handler { i32 1668112752, i32 (%struct.opj_jp2*, i8*, i32, %struct.opj_event_mgr*)* @opj_jp2_read_cmap }, %struct.opj_jp2_header_handler { i32 1667523942, i32 (%struct.opj_jp2*, i8*, i32, %struct.opj_event_mgr*)* @opj_jp2_read_cdef }], align 16
@.str = private unnamed_addr constant [49 x i8] c"Failed to decode the codestream in the JP2 file\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"stream != 00\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"./openjpeg/libopenjpeg/jp2.c\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_write_jp2h = private unnamed_addr constant [84 x i8] c"OPJ_BOOL opj_jp2_write_jp2h(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"jp2 != 00\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"p_manager != 00\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Not enough memory to hold JP2 Header data\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Stream error while writing JP2 Header box\0A\00", align 1
@.str.7 = private unnamed_addr constant [69 x i8] c"Invalid number of components specified while setting up JP2 encoder\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Not enough memory when setup the JP2 encoder\0A\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_end_decompress = private unnamed_addr constant [88 x i8] c"OPJ_BOOL opj_jp2_end_decompress(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"cio != 00\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_end_compress = private unnamed_addr constant [86 x i8] c"OPJ_BOOL opj_jp2_end_compress(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_default_validation = private unnamed_addr constant [92 x i8] c"OPJ_BOOL opj_jp2_default_validation(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_start_compress = private unnamed_addr constant [103 x i8] c"OPJ_BOOL opj_jp2_start_compress(opj_jp2_t *, opj_stream_private_t *, opj_image_t *, opj_event_mgr_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_skip_jp2c = private unnamed_addr constant [83 x i8] c"OPJ_BOOL opj_jp2_skip_jp2c(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_read_header = private unnamed_addr constant [101 x i8] c"OPJ_BOOL opj_jp2_read_header(opj_stream_private_t *, opj_jp2_t *, opj_image_t **, opj_event_mgr_t *)\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"p_stream != 00\00", align 1
@.str.11 = private unnamed_addr constant [75 x i8] c"JP2 box which are after the codestream will not be read by this function.\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"p_jp2 != 00\00", align 1
@__PRETTY_FUNCTION__.jp2_dump = private unnamed_addr constant [46 x i8] c"void jp2_dump(opj_jp2_t *, OPJ_INT32, FILE *)\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"p_image_header_data != 00\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_read_ihdr = private unnamed_addr constant [83 x i8] c"OPJ_BOOL opj_jp2_read_ihdr(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Bad image header box (bad size)\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"Not enough memory to handle image header (ihdr)\0A\00", align 1
@.str.16 = private unnamed_addr constant [90 x i8] c"JP2 IHDR box: compression type indicate that the file is not a conforming JP2 file (%d) \0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"p_bpc_header_data != 00\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_read_bpcc = private unnamed_addr constant [83 x i8] c"OPJ_BOOL opj_jp2_read_bpcc(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)\00", align 1
@.str.18 = private unnamed_addr constant [114 x i8] c"A BPCC header box is available although BPC given by the IHDR box (%d) indicate components bit depth is constant\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Bad BPCC header box (bad size)\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"p_pclr_header_data != 00\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_read_pclr = private unnamed_addr constant [83 x i8] c"OPJ_BOOL opj_jp2_read_pclr(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_read_cmap = private unnamed_addr constant [83 x i8] c"OPJ_BOOL opj_jp2_read_cmap(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"p_cmap_header_data != 00\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"Need to read a PCLR box before the CMAP box.\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Only one CMAP box is allowed.\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Insufficient data for CMAP box.\0A\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_read_cdef = private unnamed_addr constant [83 x i8] c"OPJ_BOOL opj_jp2_read_cdef(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"p_cdef_header_data != 00\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"Insufficient data for CDEF box.\0A\00", align 1
@.str.27 = private unnamed_addr constant [61 x i8] c"Number of channel description is equal to zero in CDEF box.\0A\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_read_colr = private unnamed_addr constant [83 x i8] c"OPJ_BOOL opj_jp2_read_colr(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"p_colr_header_data != 00\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Bad COLR header box (bad size)\0A\00", align 1
@.str.30 = private unnamed_addr constant [109 x i8] c"A conforming JP2 reader shall ignore all Colour Specification boxes after the first, so we ignore this one.\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Bad COLR header box (bad size: %d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [106 x i8] c"COLR BOX meth value is not a regular value (%d), so we will ignore the entire Colour Specification box. \0A\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"Invalid component index %d (>= %d).\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"Unexpected OOM.\0A\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"Invalid component/palette index for direct mapping %d.\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"Component %d is mapped twice.\0A\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"Component %d doesn't have a mapping.\0A\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_write_ihdr = private unnamed_addr constant [56 x i8] c"OPJ_BYTE *opj_jp2_write_ihdr(opj_jp2_t *, OPJ_UINT32 *)\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"p_nb_bytes_written != 00\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_write_bpcc = private unnamed_addr constant [56 x i8] c"OPJ_BYTE *opj_jp2_write_bpcc(opj_jp2_t *, OPJ_UINT32 *)\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_write_colr = private unnamed_addr constant [56 x i8] c"OPJ_BYTE *opj_jp2_write_colr(opj_jp2_t *, OPJ_UINT32 *)\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"jp2->meth == 1 || jp2->meth == 2\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"jp2->color.icc_profile_len\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_setup_end_header_writing = private unnamed_addr constant [51 x i8] c"void opj_jp2_setup_end_header_writing(opj_jp2_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jpip_write_iptr = private unnamed_addr constant [85 x i8] c"OPJ_BOOL opj_jpip_write_iptr(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"opj_stream_has_seek(cio)\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"Failed to seek in the stream.\0A\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_write_jp2c = private unnamed_addr constant [84 x i8] c"OPJ_BOOL opj_jp2_write_jp2c(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jpip_write_cidx = private unnamed_addr constant [85 x i8] c"OPJ_BOOL opj_jpip_write_cidx(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jpip_write_fidx = private unnamed_addr constant [85 x i8] c"OPJ_BOOL opj_jpip_write_fidx(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_setup_end_header_reading = private unnamed_addr constant [51 x i8] c"void opj_jp2_setup_end_header_reading(opj_jp2_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_read_header_procedure = private unnamed_addr constant [95 x i8] c"OPJ_BOOL opj_jp2_read_header_procedure(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"Not enough memory to handle jpeg2000 file header\0A\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"bad placed jpeg codestream\0A\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"Cannot handle box of undefined sizes\0A\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"invalid box size %d (%x)\0A\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"Not enough memory to handle jpeg2000 box\0A\00", align 1
@.str.48 = private unnamed_addr constant [49 x i8] c"Problem with reading JPEG2000 box, stream error\0A\00", align 1
@.str.49 = private unnamed_addr constant [50 x i8] c"Problem with skipping JPEG2000 box, stream error\0A\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_read_boxhdr = private unnamed_addr constant [103 x i8] c"OPJ_BOOL opj_jp2_read_boxhdr(opj_jp2_box_t *, OPJ_UINT32 *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"box != 00\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"p_number_bytes_read != 00\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"Cannot handle box sizes higher than 2^32\0A\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"p_procedure_list != 00\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_exec = private unnamed_addr constant [102 x i8] c"OPJ_BOOL opj_jp2_exec(opj_jp2_t *, opj_procedure_list_t *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"p_header_data != 00\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_read_jp = private unnamed_addr constant [81 x i8] c"OPJ_BOOL opj_jp2_read_jp(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)\00", align 1
@.str.55 = private unnamed_addr constant [54 x i8] c"The signature box must be the first box in the file.\0A\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"Error with JP signature Box size\0A\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"Error with JP Signature : bad magic number\0A\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_read_ftyp = private unnamed_addr constant [83 x i8] c"OPJ_BOOL opj_jp2_read_ftyp(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)\00", align 1
@.str.58 = private unnamed_addr constant [50 x i8] c"The ftyp box must be the second box in the file.\0A\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"Error with FTYP signature Box size\0A\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"Not enough memory with FTYP Box\0A\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_read_jp2h = private unnamed_addr constant [83 x i8] c"OPJ_BOOL opj_jp2_read_jp2h(opj_jp2_t *, OPJ_BYTE *, OPJ_UINT32, opj_event_mgr_t *)\00", align 1
@.str.61 = private unnamed_addr constant [45 x i8] c"The  box must be the first box in the file.\0A\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"Stream error while reading JP2 Header box\0A\00", align 1
@.str.63 = private unnamed_addr constant [72 x i8] c"Stream error while reading JP2 Header box: box length is inconsistent.\0A\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"p_data != 00\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_read_boxhdr_char = private unnamed_addr constant [108 x i8] c"OPJ_BOOL opj_jp2_read_boxhdr_char(opj_jp2_box_t *, OPJ_BYTE *, OPJ_UINT32 *, OPJ_UINT32, opj_event_mgr_t *)\00", align 1
@.str.65 = private unnamed_addr constant [40 x i8] c"Cannot handle box of less than 8 bytes\0A\00", align 1
@.str.66 = private unnamed_addr constant [44 x i8] c"Cannot handle XL box of less than 16 bytes\0A\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_setup_encoding_validation = private unnamed_addr constant [52 x i8] c"void opj_jp2_setup_encoding_validation(opj_jp2_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_setup_decoding_validation = private unnamed_addr constant [52 x i8] c"void opj_jp2_setup_decoding_validation(opj_jp2_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_setup_header_writing = private unnamed_addr constant [47 x i8] c"void opj_jp2_setup_header_writing(opj_jp2_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_write_jp = private unnamed_addr constant [82 x i8] c"OPJ_BOOL opj_jp2_write_jp(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_write_ftyp = private unnamed_addr constant [84 x i8] c"OPJ_BOOL opj_jp2_write_ftyp(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"Not enough memory to handle ftyp data\0A\00", align 1
@.str.68 = private unnamed_addr constant [41 x i8] c"Error while writing ftyp data to stream\0A\00", align 1
@__PRETTY_FUNCTION__.opj_jpip_skip_iptr = private unnamed_addr constant [84 x i8] c"OPJ_BOOL opj_jpip_skip_iptr(opj_jp2_t *, opj_stream_private_t *, opj_event_mgr_t *)\00", align 1
@__PRETTY_FUNCTION__.opj_jp2_setup_header_reading = private unnamed_addr constant [47 x i8] c"void opj_jp2_setup_header_reading(opj_jp2_t *)\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_read_jp(%struct.opj_jp2* %jp2, i8* %p_header_data, i32 %p_header_size, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_header_data.addr = alloca i8*, align 8
  %p_header_size.addr = alloca i32, align 4
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_magic_number = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store i8* %p_header_data, i8** %p_header_data.addr, align 8, !tbaa !1
  store i32 %p_header_size, i32* %p_header_size.addr, align 4, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l_magic_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8*, i8** %p_header_data.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1973, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_jp, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_jp2* %3, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1974, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_jp, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %4, %cond.true.2
  %5 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %5, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1975, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_jp, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %6, %cond.true.6
  %7 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jp2_state = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %7, i32 0, i32 22
  %8 = load i32, i32* %jp2_state, align 4, !tbaa !7
  %cmp9 = icmp ne i32 %8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  %9 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %9, i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.55, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.8
  %10 = load i32, i32* %p_header_size.addr, align 4, !tbaa !5
  %cmp10 = icmp ne i32 %10, 4
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %11 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call12 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %11, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.56, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %12 = load i8*, i8** %p_header_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %12, i32* %l_magic_number, i32 4) #6
  %13 = load i32, i32* %l_magic_number, align 4, !tbaa !5
  %cmp14 = icmp ne i32 %13, 218793738
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %14 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call16 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %14, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.57, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.13
  %15 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jp2_state18 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %15, i32 0, i32 22
  %16 = load i32, i32* %jp2_state18, align 4, !tbaa !7
  %or = or i32 %16, 1
  store i32 %or, i32* %jp2_state18, align 4, !tbaa !7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.15, %if.then.11, %if.then
  %17 = bitcast i32* %l_magic_number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_read_ftyp(%struct.opj_jp2* %jp2, i8* %p_header_data, i32 %p_header_size, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_header_data.addr = alloca i8*, align 8
  %p_header_size.addr = alloca i32, align 4
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %i = alloca i32, align 4
  %l_remaining_bytes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store i8* %p_header_data, i8** %p_header_data.addr, align 8, !tbaa !1
  store i32 %p_header_size, i32* %p_header_size.addr, align 4, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %l_remaining_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i8*, i8** %p_header_data.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2019, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_ftyp, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_jp2* %4, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2020, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_ftyp, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %5, %cond.true.2
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %6, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2021, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_ftyp, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %7, %cond.true.6
  %8 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jp2_state = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %8, i32 0, i32 22
  %9 = load i32, i32* %jp2_state, align 4, !tbaa !7
  %cmp9 = icmp ne i32 %9, 1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  %10 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %10, i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.58, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.8
  %11 = load i32, i32* %p_header_size.addr, align 4, !tbaa !5
  %cmp10 = icmp ult i32 %11, 8
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end
  %12 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call12 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %12, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.59, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %13 = load i8*, i8** %p_header_data.addr, align 8, !tbaa !1
  %14 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %brand = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %14, i32 0, i32 14
  call void @opj_read_bytes_LE(i8* %13, i32* %brand, i32 4) #6
  %15 = load i8*, i8** %p_header_data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %add.ptr, i8** %p_header_data.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %p_header_data.addr, align 8, !tbaa !1
  %17 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %minversion = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %17, i32 0, i32 15
  call void @opj_read_bytes_LE(i8* %16, i32* %minversion, i32 4) #6
  %18 = load i8*, i8** %p_header_data.addr, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %18, i64 4
  store i8* %add.ptr14, i8** %p_header_data.addr, align 8, !tbaa !1
  %19 = load i32, i32* %p_header_size.addr, align 4, !tbaa !5
  %sub = sub i32 %19, 8
  store i32 %sub, i32* %l_remaining_bytes, align 4, !tbaa !5
  %20 = load i32, i32* %l_remaining_bytes, align 4, !tbaa !5
  %and = and i32 %20, 3
  %cmp15 = icmp ne i32 %and, 0
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %21 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call17 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %21, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.59, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.13
  %22 = load i32, i32* %l_remaining_bytes, align 4, !tbaa !5
  %shr = lshr i32 %22, 2
  %23 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcl = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %23, i32 0, i32 16
  store i32 %shr, i32* %numcl, align 4, !tbaa !11
  %24 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcl19 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %24, i32 0, i32 16
  %25 = load i32, i32* %numcl19, align 4, !tbaa !11
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.20, label %if.end.42

if.then.20:                                       ; preds = %if.end.18
  %26 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcl21 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %26, i32 0, i32 16
  %27 = load i32, i32* %numcl21, align 4, !tbaa !11
  %conv = zext i32 %27 to i64
  %mul = mul i64 %conv, 4
  %cmp22 = icmp uge i64 %mul, -256
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %if.then.20
  br label %cond.end.30

cond.false.25:                                    ; preds = %if.then.20
  %28 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcl26 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %28, i32 0, i32 16
  %29 = load i32, i32* %numcl26, align 4, !tbaa !11
  %conv27 = zext i32 %29 to i64
  %mul28 = mul i64 %conv27, 4
  %call29 = call noalias i8* @malloc(i64 %mul28) #7
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.25, %cond.true.24
  %cond = phi i8* [ null, %cond.true.24 ], [ %call29, %cond.false.25 ]
  %30 = bitcast i8* %cond to i32*
  %31 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cl = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %31, i32 0, i32 17
  store i32* %30, i32** %cl, align 8, !tbaa !12
  %32 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cl31 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %32, i32 0, i32 17
  %33 = load i32*, i32** %cl31, align 8, !tbaa !12
  %cmp32 = icmp eq i32* %33, null
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %cond.end.30
  %34 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call35 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %34, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.60, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %cond.end.30
  %35 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cl37 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %35, i32 0, i32 17
  %36 = load i32*, i32** %cl37, align 8, !tbaa !12
  %37 = bitcast i32* %36 to i8*
  %38 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcl38 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %38, i32 0, i32 16
  %39 = load i32, i32* %numcl38, align 4, !tbaa !11
  %conv39 = zext i32 %39 to i64
  %mul40 = mul i64 %conv39, 4
  %call41 = call i8* @memset(i8* %37, i32 0, i64 %mul40) #7
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.36, %if.end.18
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.42
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %41 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcl43 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %41, i32 0, i32 16
  %42 = load i32, i32* %numcl43, align 4, !tbaa !11
  %cmp44 = icmp ult i32 %40, %42
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i8*, i8** %p_header_data.addr, align 8, !tbaa !1
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %44 to i64
  %45 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cl46 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %45, i32 0, i32 17
  %46 = load i32*, i32** %cl46, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i32, i32* %46, i64 %idxprom
  call void @opj_read_bytes_LE(i8* %43, i32* %arrayidx, i32 4) #6
  %47 = load i8*, i8** %p_header_data.addr, align 8, !tbaa !1
  %add.ptr47 = getelementptr inbounds i8, i8* %47, i64 4
  store i8* %add.ptr47, i8** %p_header_data.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %48, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jp2_state48 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %49, i32 0, i32 22
  %50 = load i32, i32* %jp2_state48, align 4, !tbaa !7
  %or = or i32 %50, 2
  store i32 %or, i32* %jp2_state48, align 4, !tbaa !7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.34, %if.then.16, %if.then.11, %if.then
  %51 = bitcast i32* %l_remaining_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_read_jp2h(%struct.opj_jp2* %jp2, i8* %p_header_data, i32 %p_header_size, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_header_data.addr = alloca i8*, align 8
  %p_header_size.addr = alloca i32, align 4
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_box_size = alloca i32, align 4
  %l_current_data_size = alloca i32, align 4
  %box = alloca %struct.opj_jp2_box, align 4
  %l_current_handler = alloca %struct.opj_jp2_header_handler*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store i8* %p_header_data, i8** %p_header_data.addr, align 8, !tbaa !1
  store i32 %p_header_size, i32* %p_header_size.addr, align 4, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l_box_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %l_box_size, align 4, !tbaa !5
  %1 = bitcast i32* %l_current_data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %l_current_data_size, align 4, !tbaa !5
  %2 = bitcast %struct.opj_jp2_box* %box to i8*
  call void @llvm.lifetime.start(i64 12, i8* %2) #2
  %3 = bitcast %struct.opj_jp2_header_handler** %l_current_handler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i8*, i8** %p_header_data.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2127, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_jp2h, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_jp2* %6, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2128, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_jp2h, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %7, %cond.true.2
  %8 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %8, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2129, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_jp2h, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %9, %cond.true.6
  %10 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jp2_state = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %10, i32 0, i32 22
  %11 = load i32, i32* %jp2_state, align 4, !tbaa !7
  %and = and i32 %11, 2
  %cmp9 = icmp ne i32 %and, 2
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  %12 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %12, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.61, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.8
  %13 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jp2_img_state = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %13, i32 0, i32 23
  store i32 0, i32* %jp2_img_state, align 4, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %if.end
  %14 = load i32, i32* %p_header_size.addr, align 4, !tbaa !5
  %cmp10 = icmp ugt i32 %14, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %p_header_data.addr, align 8, !tbaa !1
  %16 = load i32, i32* %p_header_size.addr, align 4, !tbaa !5
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call11 = call i32 @opj_jp2_read_boxhdr_char(%struct.opj_jp2_box* %box, i8* %15, i32* %l_box_size, i32 %16, %struct.opj_event_mgr* %17) #6
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %while.body
  %18 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call13 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %18, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.62, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %while.body
  %length = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %box, i32 0, i32 0
  %19 = load i32, i32* %length, align 4, !tbaa !14
  %20 = load i32, i32* %p_header_size.addr, align 4, !tbaa !5
  %cmp15 = icmp ugt i32 %19, %20
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %21 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call17 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %21, i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.63, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.14
  %type = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %box, i32 0, i32 1
  %22 = load i32, i32* %type, align 4, !tbaa !16
  %call19 = call %struct.opj_jp2_header_handler* @opj_jp2_img_find_handler(i32 %22) #6
  store %struct.opj_jp2_header_handler* %call19, %struct.opj_jp2_header_handler** %l_current_handler, align 8, !tbaa !1
  %length20 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %box, i32 0, i32 0
  %23 = load i32, i32* %length20, align 4, !tbaa !14
  %24 = load i32, i32* %l_box_size, align 4, !tbaa !5
  %sub = sub i32 %23, %24
  store i32 %sub, i32* %l_current_data_size, align 4, !tbaa !5
  %25 = load i32, i32* %l_box_size, align 4, !tbaa !5
  %26 = load i8*, i8** %p_header_data.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %p_header_data.addr, align 8, !tbaa !1
  %27 = load %struct.opj_jp2_header_handler*, %struct.opj_jp2_header_handler** %l_current_handler, align 8, !tbaa !1
  %cmp21 = icmp ne %struct.opj_jp2_header_handler* %27, null
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.18
  %28 = load %struct.opj_jp2_header_handler*, %struct.opj_jp2_header_handler** %l_current_handler, align 8, !tbaa !1
  %handler = getelementptr inbounds %struct.opj_jp2_header_handler, %struct.opj_jp2_header_handler* %28, i32 0, i32 1
  %29 = load i32 (%struct.opj_jp2*, i8*, i32, %struct.opj_event_mgr*)*, i32 (%struct.opj_jp2*, i8*, i32, %struct.opj_event_mgr*)** %handler, align 8, !tbaa !17
  %30 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %p_header_data.addr, align 8, !tbaa !1
  %32 = load i32, i32* %l_current_data_size, align 4, !tbaa !5
  %33 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call23 = call i32 %29(%struct.opj_jp2* %30, i8* %31, i32 %32, %struct.opj_event_mgr* %33) #6
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.then.22
  br label %if.end.28

if.else:                                          ; preds = %if.end.18
  %34 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jp2_img_state27 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %34, i32 0, i32 23
  %35 = load i32, i32* %jp2_img_state27, align 4, !tbaa !13
  %or = or i32 %35, 2147483647
  store i32 %or, i32* %jp2_img_state27, align 4, !tbaa !13
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.end.26
  %36 = load i32, i32* %l_current_data_size, align 4, !tbaa !5
  %37 = load i8*, i8** %p_header_data.addr, align 8, !tbaa !1
  %idx.ext29 = zext i32 %36 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %37, i64 %idx.ext29
  store i8* %add.ptr30, i8** %p_header_data.addr, align 8, !tbaa !1
  %length31 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %box, i32 0, i32 0
  %38 = load i32, i32* %length31, align 4, !tbaa !14
  %39 = load i32, i32* %p_header_size.addr, align 4, !tbaa !5
  %sub32 = sub i32 %39, %38
  store i32 %sub32, i32* %p_header_size.addr, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jp2_state33 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %40, i32 0, i32 22
  %41 = load i32, i32* %jp2_state33, align 4, !tbaa !7
  %or34 = or i32 %41, 4
  store i32 %or34, i32* %jp2_state33, align 4, !tbaa !7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.25, %if.then.16, %if.then.12, %if.then
  %42 = bitcast %struct.opj_jp2_header_handler** %l_current_handler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast %struct.opj_jp2_box* %box to i8*
  call void @llvm.lifetime.end(i64 12, i8* %43) #2
  %44 = bitcast i32* %l_current_data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast i32* %l_box_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_read_ihdr(%struct.opj_jp2* %jp2, i8* %p_image_header_data, i32 %p_image_header_size, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_image_header_data.addr = alloca i8*, align 8
  %p_image_header_size.addr = alloca i32, align 4
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store i8* %p_image_header_data, i8** %p_image_header_data.addr, align 8, !tbaa !1
  store i32 %p_image_header_size, i32* %p_image_header_size.addr, align 4, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 515, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_ihdr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_jp2* %2, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 516, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_ihdr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %3, %cond.true.2
  %4 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %4, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 517, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_ihdr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %5, %cond.true.6
  %6 = load i32, i32* %p_image_header_size.addr, align 4, !tbaa !5
  %cmp9 = icmp ne i32 %6, 14
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  %7 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %7, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.8
  %8 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %9 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %9, i32 0, i32 4
  call void @opj_read_bytes_LE(i8* %8, i32* %h, i32 4) #6
  %10 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 4
  store i8* %add.ptr, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %12 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %12, i32 0, i32 3
  call void @opj_read_bytes_LE(i8* %11, i32* %w, i32 4) #6
  %13 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds i8, i8* %13, i64 4
  store i8* %add.ptr10, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %15 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %15, i32 0, i32 5
  call void @opj_read_bytes_LE(i8* %14, i32* %numcomps, i32 2) #6
  %16 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds i8, i8* %16, i64 2
  store i8* %add.ptr11, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %17 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcomps12 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %17, i32 0, i32 5
  %18 = load i32, i32* %numcomps12, align 4, !tbaa !19
  %conv = zext i32 %18 to i64
  %mul = mul i64 %conv, 12
  %cmp13 = icmp uge i64 %mul, -256
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %if.end
  br label %cond.end.21

cond.false.16:                                    ; preds = %if.end
  %19 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcomps17 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %19, i32 0, i32 5
  %20 = load i32, i32* %numcomps17, align 4, !tbaa !19
  %conv18 = zext i32 %20 to i64
  %mul19 = mul i64 %conv18, 12
  %call20 = call noalias i8* @malloc(i64 %mul19) #7
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.16, %cond.true.15
  %cond = phi i8* [ null, %cond.true.15 ], [ %call20, %cond.false.16 ]
  %21 = bitcast i8* %cond to %struct.opj_jp2_comps*
  %22 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %22, i32 0, i32 18
  store %struct.opj_jp2_comps* %21, %struct.opj_jp2_comps** %comps, align 8, !tbaa !20
  %23 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %comps22 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %23, i32 0, i32 18
  %24 = load %struct.opj_jp2_comps*, %struct.opj_jp2_comps** %comps22, align 8, !tbaa !20
  %cmp23 = icmp eq %struct.opj_jp2_comps* %24, null
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %cond.end.21
  %25 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call26 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %25, i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %cond.end.21
  %26 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %comps28 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %26, i32 0, i32 18
  %27 = load %struct.opj_jp2_comps*, %struct.opj_jp2_comps** %comps28, align 8, !tbaa !20
  %28 = bitcast %struct.opj_jp2_comps* %27 to i8*
  %29 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcomps29 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %29, i32 0, i32 5
  %30 = load i32, i32* %numcomps29, align 4, !tbaa !19
  %conv30 = zext i32 %30 to i64
  %mul31 = mul i64 %conv30, 12
  %call32 = call i8* @memset(i8* %28, i32 0, i64 %mul31) #7
  %31 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %32 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %bpc = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %32, i32 0, i32 6
  call void @opj_read_bytes_LE(i8* %31, i32* %bpc, i32 1) #6
  %33 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %35 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %C = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %35, i32 0, i32 7
  call void @opj_read_bytes_LE(i8* %34, i32* %C, i32 1) #6
  %36 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr33, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %37 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %C34 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %37, i32 0, i32 7
  %38 = load i32, i32* %C34, align 4, !tbaa !21
  %cmp35 = icmp ne i32 %38, 7
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.27
  %39 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %40 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %C38 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %40, i32 0, i32 7
  %41 = load i32, i32* %C38, align 4, !tbaa !21
  %call39 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %39, i32 4, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.16, i32 0, i32 0), i32 %41) #6
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.end.27
  %42 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %43 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %UnkC = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %43, i32 0, i32 8
  call void @opj_read_bytes_LE(i8* %42, i32* %UnkC, i32 1) #6
  %44 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %incdec.ptr41 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr41, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %45 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %46 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %IPR = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %46, i32 0, i32 9
  call void @opj_read_bytes_LE(i8* %45, i32* %IPR, i32 1) #6
  %47 = load i8*, i8** %p_image_header_data.addr, align 8, !tbaa !1
  %incdec.ptr42 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr42, i8** %p_image_header_data.addr, align 8, !tbaa !1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.25, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_read_colr(%struct.opj_jp2* %jp2, i8* %p_colr_header_data, i32 %p_colr_header_size, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_colr_header_data.addr = alloca i8*, align 8
  %p_colr_header_size.addr = alloca i32, align 4
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %it_icc_value = alloca i32, align 4
  %icc_len = alloca i32, align 4
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store i8* %p_colr_header_data, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  store i32 %p_colr_header_size, i32* %p_colr_header_size.addr, align 4, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1177, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_colr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load i8*, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %3, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1178, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_colr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %4, %cond.true.2
  %5 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %5, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1179, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_colr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %6, %cond.true.6
  %7 = load i32, i32* %p_colr_header_size.addr, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %7, 3
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  %8 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %8, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70

if.end:                                           ; preds = %cond.end.8
  %9 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %9, i32 0, i32 24
  %jp2_has_colr = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color, i32 0, i32 4
  %10 = load i8, i8* %jp2_has_colr, align 1, !tbaa !22
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %11 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call11 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %11, i32 4, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.30, i32 0, i32 0)) #6
  %12 = load i32, i32* %p_colr_header_size.addr, align 4, !tbaa !5
  %13 = load i8*, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70

if.end.12:                                        ; preds = %if.end
  %14 = load i8*, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  %15 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %15, i32 0, i32 10
  call void @opj_read_bytes_LE(i8* %14, i32* %meth, i32 1) #6
  %16 = load i8*, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  %18 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %precedence = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %18, i32 0, i32 13
  call void @opj_read_bytes_LE(i8* %17, i32* %precedence, i32 1) #6
  %19 = load i8*, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr13, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  %20 = load i8*, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  %21 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %approx = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %21, i32 0, i32 11
  call void @opj_read_bytes_LE(i8* %20, i32* %approx, i32 1) #6
  %22 = load i8*, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr14, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  %23 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth15 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %23, i32 0, i32 10
  %24 = load i32, i32* %meth15, align 4, !tbaa !23
  %cmp16 = icmp eq i32 %24, 1
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.12
  %25 = load i32, i32* %p_colr_header_size.addr, align 4, !tbaa !5
  %cmp18 = icmp ult i32 %25, 7
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.17
  %26 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %27 = load i32, i32* %p_colr_header_size.addr, align 4, !tbaa !5
  %call20 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %26, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0), i32 %27) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70

if.end.21:                                        ; preds = %if.then.17
  %28 = load i32, i32* %p_colr_header_size.addr, align 4, !tbaa !5
  %cmp22 = icmp ugt i32 %28, 7
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.21
  %29 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %30 = load i32, i32* %p_colr_header_size.addr, align 4, !tbaa !5
  %call24 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %29, i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0), i32 %30) #6
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  %31 = load i8*, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  %32 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %enumcs = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %32, i32 0, i32 12
  call void @opj_read_bytes_LE(i8* %31, i32* %enumcs, i32 4) #6
  %33 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color26 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %33, i32 0, i32 24
  %jp2_has_colr27 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color26, i32 0, i32 4
  store i8 1, i8* %jp2_has_colr27, align 1, !tbaa !22
  br label %if.end.69

if.else:                                          ; preds = %if.end.12
  %34 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth28 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %34, i32 0, i32 10
  %35 = load i32, i32* %meth28, align 4, !tbaa !23
  %cmp29 = icmp eq i32 %35, 2
  br i1 %cmp29, label %if.then.30, label %if.else.60

if.then.30:                                       ; preds = %if.else
  %36 = bitcast i32* %it_icc_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  store i32 0, i32* %it_icc_value, align 4, !tbaa !5
  %37 = bitcast i32* %icc_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load i32, i32* %p_colr_header_size.addr, align 4, !tbaa !5
  %sub = sub i32 %38, 3
  store i32 %sub, i32* %icc_len, align 4, !tbaa !5
  %39 = load i32, i32* %icc_len, align 4, !tbaa !5
  %40 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color31 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %40, i32 0, i32 24
  %icc_profile_len = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color31, i32 0, i32 1
  store i32 %39, i32* %icc_profile_len, align 4, !tbaa !24
  %41 = load i32, i32* %icc_len, align 4, !tbaa !5
  %conv = sext i32 %41 to i64
  %cmp32 = icmp uge i64 %conv, -256
  br i1 %cmp32, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %if.then.30
  br label %cond.end.38

cond.false.35:                                    ; preds = %if.then.30
  %42 = load i32, i32* %icc_len, align 4, !tbaa !5
  %conv36 = sext i32 %42 to i64
  %call37 = call noalias i8* @malloc(i64 %conv36) #7
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.35, %cond.true.34
  %cond = phi i8* [ null, %cond.true.34 ], [ %call37, %cond.false.35 ]
  %43 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color39 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %43, i32 0, i32 24
  %icc_profile_buf = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color39, i32 0, i32 0
  store i8* %cond, i8** %icc_profile_buf, align 8, !tbaa !25
  %44 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color40 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %44, i32 0, i32 24
  %icc_profile_buf41 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color40, i32 0, i32 0
  %45 = load i8*, i8** %icc_profile_buf41, align 8, !tbaa !25
  %tobool42 = icmp ne i8* %45, null
  br i1 %tobool42, label %if.end.46, label %if.then.43

if.then.43:                                       ; preds = %cond.end.38
  %46 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color44 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %46, i32 0, i32 24
  %icc_profile_len45 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color44, i32 0, i32 1
  store i32 0, i32* %icc_profile_len45, align 4, !tbaa !24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %cond.end.38
  %47 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color47 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %47, i32 0, i32 24
  %icc_profile_buf48 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color47, i32 0, i32 0
  %48 = load i8*, i8** %icc_profile_buf48, align 8, !tbaa !25
  %49 = load i32, i32* %icc_len, align 4, !tbaa !5
  %conv49 = sext i32 %49 to i64
  %mul = mul i64 %conv49, 1
  %call50 = call i8* @memset(i8* %48, i32 0, i64 %mul) #7
  store i32 0, i32* %it_icc_value, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.46
  %50 = load i32, i32* %it_icc_value, align 4, !tbaa !5
  %51 = load i32, i32* %icc_len, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %50, %51
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load i8*, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %52, i32* %l_value, i32 1) #6
  %53 = load i8*, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  %incdec.ptr53 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr53, i8** %p_colr_header_data.addr, align 8, !tbaa !1
  %54 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv54 = trunc i32 %54 to i8
  %55 = load i32, i32* %it_icc_value, align 4, !tbaa !5
  %idxprom = sext i32 %55 to i64
  %56 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color55 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %56, i32 0, i32 24
  %icc_profile_buf56 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color55, i32 0, i32 0
  %57 = load i8*, i8** %icc_profile_buf56, align 8, !tbaa !25
  %arrayidx = getelementptr inbounds i8, i8* %57, i64 %idxprom
  store i8 %conv54, i8* %arrayidx, align 1, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i32, i32* %it_icc_value, align 4, !tbaa !5
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %it_icc_value, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color57 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %59, i32 0, i32 24
  %jp2_has_colr58 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color57, i32 0, i32 4
  store i8 1, i8* %jp2_has_colr58, align 1, !tbaa !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.43
  %60 = bitcast i32* %icc_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i32* %it_icc_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.70 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.68

if.else.60:                                       ; preds = %if.else
  %62 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth61 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %62, i32 0, i32 10
  %63 = load i32, i32* %meth61, align 4, !tbaa !23
  %cmp62 = icmp ugt i32 %63, 2
  br i1 %cmp62, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.else.60
  %64 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %65 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth65 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %65, i32 0, i32 10
  %66 = load i32, i32* %meth65, align 4, !tbaa !23
  %call66 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %64, i32 4, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.32, i32 0, i32 0), i32 %66) #6
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.else.60
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %cleanup.cont
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.25
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70

cleanup.70:                                       ; preds = %if.end.69, %cleanup, %if.then.19, %if.then.10, %if.then
  %67 = bitcast i32* %l_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_read_bpcc(%struct.opj_jp2* %jp2, i8* %p_bpc_header_data, i32 %p_bpc_header_size, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_bpc_header_data.addr = alloca i8*, align 8
  %p_bpc_header_size.addr = alloca i32, align 4
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store i8* %p_bpc_header_data, i8** %p_bpc_header_data.addr, align 8, !tbaa !1
  store i32 %p_bpc_header_size, i32* %p_bpc_header_size.addr, align 4, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8*, i8** %p_bpc_header_data.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 655, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_bpcc, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_jp2* %3, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 656, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_bpcc, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %4, %cond.true.2
  %5 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %5, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 657, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_bpcc, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %6, %cond.true.6
  %7 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %bpc = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %7, i32 0, i32 6
  %8 = load i32, i32* %bpc, align 4, !tbaa !27
  %cmp9 = icmp ne i32 %8, 255
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  %9 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %10 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %bpc10 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %10, i32 0, i32 6
  %11 = load i32, i32* %bpc10, align 4, !tbaa !27
  %call = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %9, i32 2, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.18, i32 0, i32 0), i32 %11) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.8
  %12 = load i32, i32* %p_bpc_header_size.addr, align 4, !tbaa !5
  %13 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %13, i32 0, i32 5
  %14 = load i32, i32* %numcomps, align 4, !tbaa !19
  %cmp11 = icmp ne i32 %12, %14
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %15 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call13 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %15, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %17 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcomps15 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %17, i32 0, i32 5
  %18 = load i32, i32* %numcomps15, align 4, !tbaa !19
  %cmp16 = icmp ult i32 %16, %18
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %p_bpc_header_data.addr, align 8, !tbaa !1
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %20 to i64
  %21 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %21, i32 0, i32 18
  %22 = load %struct.opj_jp2_comps*, %struct.opj_jp2_comps** %comps, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds %struct.opj_jp2_comps, %struct.opj_jp2_comps* %22, i64 %idxprom
  %bpcc = getelementptr inbounds %struct.opj_jp2_comps, %struct.opj_jp2_comps* %arrayidx, i32 0, i32 2
  call void @opj_read_bytes_LE(i8* %19, i32* %bpcc, i32 1) #6
  %23 = load i8*, i8** %p_bpc_header_data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %p_bpc_header_data.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.12
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_read_pclr(%struct.opj_jp2* %jp2, i8* %p_pclr_header_data, i32 %p_pclr_header_size, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_pclr_header_data.addr = alloca i8*, align 8
  %p_pclr_header_size.addr = alloca i32, align 4
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %jp2_pclr = alloca %struct.opj_jp2_pclr*, align 8
  %channel_size = alloca i8*, align 8
  %channel_sign = alloca i8*, align 8
  %entries = alloca i32*, align 8
  %nr_entries = alloca i16, align 2
  %nr_channels = alloca i16, align 2
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %l_value = alloca i32, align 4
  %orig_header_data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %bytes_to_read = alloca i32, align 4
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store i8* %p_pclr_header_data, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  store i32 %p_pclr_header_size, i32* %p_pclr_header_size.addr, align 4, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_jp2_pclr** %jp2_pclr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %channel_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i8** %channel_sign to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32** %entries to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i16* %nr_entries to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #2
  %5 = bitcast i16* %nr_channels to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #2
  %6 = bitcast i16* %i to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = bitcast i16* %j to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #2
  %8 = bitcast i32* %l_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i8** %orig_header_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load i8*, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  store i8* %10, i8** %orig_header_data, align 8, !tbaa !1
  %11 = load i8*, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %11, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 914, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_pclr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %12, %cond.true
  %13 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_jp2* %13, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 915, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_pclr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %14, %cond.true.2
  %15 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %15, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 916, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_pclr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %16, %cond.true.6
  %17 = load i32, i32* %p_pclr_header_size.addr, align 4, !tbaa !5
  %18 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %18, i32 0, i32 24
  %jp2_pclr9 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color, i32 0, i32 3
  %19 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr9, align 8, !tbaa !28
  %tobool = icmp ne %struct.opj_jp2_pclr* %19, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end:                                           ; preds = %cond.end.8
  %20 = load i32, i32* %p_pclr_header_size.addr, align 4, !tbaa !5
  %cmp10 = icmp ult i32 %20, 3
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.12:                                        ; preds = %if.end
  %21 = load i8*, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %21, i32* %l_value, i32 2) #6
  %22 = load i8*, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 2
  store i8* %add.ptr, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  %23 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv = trunc i32 %23 to i16
  store i16 %conv, i16* %nr_entries, align 2, !tbaa !29
  %24 = load i8*, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %24, i32* %l_value, i32 1) #6
  %25 = load i8*, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  %26 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv13 = trunc i32 %26 to i16
  store i16 %conv13, i16* %nr_channels, align 2, !tbaa !29
  %27 = load i32, i32* %p_pclr_header_size.addr, align 4, !tbaa !5
  %28 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv14 = zext i16 %28 to i32
  %add = add i32 3, %conv14
  %cmp15 = icmp ult i32 %27, %add
  br i1 %cmp15, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %29 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv17 = zext i16 %29 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then.25, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %30 = load i16, i16* %nr_entries, align 2, !tbaa !29
  %conv21 = zext i16 %30 to i32
  %31 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv22 = zext i16 %31 to i32
  %div = udiv i32 -1, %conv22
  %cmp23 = icmp uge i32 %conv21, %div
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false, %if.end.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.26:                                        ; preds = %lor.lhs.false.20
  %32 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv27 = zext i16 %32 to i32
  %33 = load i16, i16* %nr_entries, align 2, !tbaa !29
  %conv28 = zext i16 %33 to i32
  %mul = mul nsw i32 %conv27, %conv28
  %conv29 = sext i32 %mul to i64
  %mul30 = mul i64 %conv29, 4
  %cmp31 = icmp uge i64 %mul30, -256
  br i1 %cmp31, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %if.end.26
  br label %cond.end.40

cond.false.34:                                    ; preds = %if.end.26
  %34 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv35 = zext i16 %34 to i32
  %35 = load i16, i16* %nr_entries, align 2, !tbaa !29
  %conv36 = zext i16 %35 to i32
  %mul37 = mul nsw i32 %conv35, %conv36
  %conv38 = sext i32 %mul37 to i64
  %mul39 = mul i64 %conv38, 4
  %call = call noalias i8* @malloc(i64 %mul39) #7
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.34, %cond.true.33
  %cond = phi i8* [ null, %cond.true.33 ], [ %call, %cond.false.34 ]
  %36 = bitcast i8* %cond to i32*
  store i32* %36, i32** %entries, align 8, !tbaa !1
  %37 = load i32*, i32** %entries, align 8, !tbaa !1
  %tobool41 = icmp ne i32* %37, null
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %cond.end.40
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.43:                                        ; preds = %cond.end.40
  %38 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv44 = zext i16 %38 to i64
  %cmp45 = icmp uge i64 %conv44, -256
  br i1 %cmp45, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %if.end.43
  br label %cond.end.51

cond.false.48:                                    ; preds = %if.end.43
  %39 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv49 = zext i16 %39 to i64
  %call50 = call noalias i8* @malloc(i64 %conv49) #7
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.48, %cond.true.47
  %cond52 = phi i8* [ null, %cond.true.47 ], [ %call50, %cond.false.48 ]
  store i8* %cond52, i8** %channel_size, align 8, !tbaa !1
  %40 = load i8*, i8** %channel_size, align 8, !tbaa !1
  %tobool53 = icmp ne i8* %40, null
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %cond.end.51
  %41 = load i32*, i32** %entries, align 8, !tbaa !1
  %42 = bitcast i32* %41 to i8*
  call void @free(i8* %42) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.55:                                        ; preds = %cond.end.51
  %43 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv56 = zext i16 %43 to i64
  %cmp57 = icmp uge i64 %conv56, -256
  br i1 %cmp57, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %if.end.55
  br label %cond.end.63

cond.false.60:                                    ; preds = %if.end.55
  %44 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv61 = zext i16 %44 to i64
  %call62 = call noalias i8* @malloc(i64 %conv61) #7
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.60, %cond.true.59
  %cond64 = phi i8* [ null, %cond.true.59 ], [ %call62, %cond.false.60 ]
  store i8* %cond64, i8** %channel_sign, align 8, !tbaa !1
  %45 = load i8*, i8** %channel_sign, align 8, !tbaa !1
  %tobool65 = icmp ne i8* %45, null
  br i1 %tobool65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %cond.end.63
  %46 = load i32*, i32** %entries, align 8, !tbaa !1
  %47 = bitcast i32* %46 to i8*
  call void @free(i8* %47) #7
  %48 = load i8*, i8** %channel_size, align 8, !tbaa !1
  call void @free(i8* %48) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.67:                                        ; preds = %cond.end.63
  %call68 = call noalias i8* @malloc(i64 40) #7
  %49 = bitcast i8* %call68 to %struct.opj_jp2_pclr*
  store %struct.opj_jp2_pclr* %49, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !1
  %50 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !1
  %tobool69 = icmp ne %struct.opj_jp2_pclr* %50, null
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %if.end.67
  %51 = load i32*, i32** %entries, align 8, !tbaa !1
  %52 = bitcast i32* %51 to i8*
  call void @free(i8* %52) #7
  %53 = load i8*, i8** %channel_size, align 8, !tbaa !1
  call void @free(i8* %53) #7
  %54 = load i8*, i8** %channel_sign, align 8, !tbaa !1
  call void @free(i8* %54) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

if.end.71:                                        ; preds = %if.end.67
  %55 = load i8*, i8** %channel_sign, align 8, !tbaa !1
  %56 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !1
  %channel_sign72 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %56, i32 0, i32 1
  store i8* %55, i8** %channel_sign72, align 8, !tbaa !31
  %57 = load i8*, i8** %channel_size, align 8, !tbaa !1
  %58 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !1
  %channel_size73 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %58, i32 0, i32 2
  store i8* %57, i8** %channel_size73, align 8, !tbaa !33
  %59 = load i32*, i32** %entries, align 8, !tbaa !1
  %60 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !1
  %entries74 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %60, i32 0, i32 0
  store i32* %59, i32** %entries74, align 8, !tbaa !34
  %61 = load i16, i16* %nr_entries, align 2, !tbaa !29
  %62 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !1
  %nr_entries75 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %62, i32 0, i32 4
  store i16 %61, i16* %nr_entries75, align 2, !tbaa !35
  %63 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv76 = trunc i32 %63 to i8
  %64 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !1
  %nr_channels77 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %64, i32 0, i32 5
  store i8 %conv76, i8* %nr_channels77, align 1, !tbaa !36
  %65 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !1
  %cmap = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %65, i32 0, i32 3
  store %struct.opj_jp2_cmap_comp* null, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !37
  %66 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !1
  %67 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color78 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %67, i32 0, i32 24
  %jp2_pclr79 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color78, i32 0, i32 3
  store %struct.opj_jp2_pclr* %66, %struct.opj_jp2_pclr** %jp2_pclr79, align 8, !tbaa !28
  store i16 0, i16* %i, align 2, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.71
  %68 = load i16, i16* %i, align 2, !tbaa !29
  %conv80 = zext i16 %68 to i32
  %69 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv81 = zext i16 %69 to i32
  %cmp82 = icmp slt i32 %conv80, %conv81
  br i1 %cmp82, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %70 = load i8*, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %70, i32* %l_value, i32 1) #6
  %71 = load i8*, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  %incdec.ptr84 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr84, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  %72 = load i32, i32* %l_value, align 4, !tbaa !5
  %and = and i32 %72, 127
  %add85 = add i32 %and, 1
  %conv86 = trunc i32 %add85 to i8
  %73 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom = zext i16 %73 to i64
  %74 = load i8*, i8** %channel_size, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %74, i64 %idxprom
  store i8 %conv86, i8* %arrayidx, align 1, !tbaa !26
  %75 = load i32, i32* %l_value, align 4, !tbaa !5
  %and87 = and i32 %75, 128
  %tobool88 = icmp ne i32 %and87, 0
  %cond89 = select i1 %tobool88, i32 1, i32 0
  %conv90 = trunc i32 %cond89 to i8
  %76 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom91 = zext i16 %76 to i64
  %77 = load i8*, i8** %channel_sign, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i8, i8* %77, i64 %idxprom91
  store i8 %conv90, i8* %arrayidx92, align 1, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %78 = load i16, i16* %i, align 2, !tbaa !29
  %inc = add i16 %78, 1
  store i16 %inc, i16* %i, align 2, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i16 0, i16* %j, align 2, !tbaa !29
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.126, %for.end
  %79 = load i16, i16* %j, align 2, !tbaa !29
  %conv94 = zext i16 %79 to i32
  %80 = load i16, i16* %nr_entries, align 2, !tbaa !29
  %conv95 = zext i16 %80 to i32
  %cmp96 = icmp slt i32 %conv94, %conv95
  br i1 %cmp96, label %for.body.98, label %for.end.128

for.body.98:                                      ; preds = %for.cond.93
  store i16 0, i16* %i, align 2, !tbaa !29
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.123, %for.body.98
  %81 = load i16, i16* %i, align 2, !tbaa !29
  %conv100 = zext i16 %81 to i32
  %82 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv101 = zext i16 %82 to i32
  %cmp102 = icmp slt i32 %conv100, %conv101
  br i1 %cmp102, label %for.body.104, label %for.end.125

for.body.104:                                     ; preds = %for.cond.99
  %83 = bitcast i32* %bytes_to_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #2
  %84 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom105 = zext i16 %84 to i64
  %85 = load i8*, i8** %channel_size, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i8, i8* %85, i64 %idxprom105
  %86 = load i8, i8* %arrayidx106, align 1, !tbaa !26
  %conv107 = zext i8 %86 to i32
  %add108 = add nsw i32 %conv107, 7
  %shr = ashr i32 %add108, 3
  store i32 %shr, i32* %bytes_to_read, align 4, !tbaa !5
  %87 = load i32, i32* %bytes_to_read, align 4, !tbaa !5
  %conv109 = sext i32 %87 to i64
  %cmp110 = icmp ugt i64 %conv109, 4
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %for.body.104
  store i32 4, i32* %bytes_to_read, align 4, !tbaa !5
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %for.body.104
  %88 = load i32, i32* %p_pclr_header_size.addr, align 4, !tbaa !5
  %conv114 = zext i32 %88 to i64
  %89 = load i8*, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  %90 = load i8*, i8** %orig_header_data, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %90 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %91 = load i32, i32* %bytes_to_read, align 4, !tbaa !5
  %conv115 = sext i32 %91 to i64
  %add116 = add nsw i64 %sub.ptr.sub, %conv115
  %cmp117 = icmp slt i64 %conv114, %add116
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.113
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.120:                                       ; preds = %if.end.113
  %92 = load i8*, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  %93 = load i32, i32* %bytes_to_read, align 4, !tbaa !5
  call void @opj_read_bytes_LE(i8* %92, i32* %l_value, i32 %93) #6
  %94 = load i32, i32* %bytes_to_read, align 4, !tbaa !5
  %95 = load i8*, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %94 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %95, i64 %idx.ext
  store i8* %add.ptr121, i8** %p_pclr_header_data.addr, align 8, !tbaa !1
  %96 = load i32, i32* %l_value, align 4, !tbaa !5
  %97 = load i32*, i32** %entries, align 8, !tbaa !1
  store i32 %96, i32* %97, align 4, !tbaa !5
  %98 = load i32*, i32** %entries, align 8, !tbaa !1
  %incdec.ptr122 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %incdec.ptr122, i32** %entries, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.120, %if.then.119
  %99 = bitcast i32* %bytes_to_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.129 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.123

for.inc.123:                                      ; preds = %cleanup.cont
  %100 = load i16, i16* %i, align 2, !tbaa !29
  %inc124 = add i16 %100, 1
  store i16 %inc124, i16* %i, align 2, !tbaa !29
  br label %for.cond.99

for.end.125:                                      ; preds = %for.cond.99
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.end.125
  %101 = load i16, i16* %j, align 2, !tbaa !29
  %inc127 = add i16 %101, 1
  store i16 %inc127, i16* %j, align 2, !tbaa !29
  br label %for.cond.93

for.end.128:                                      ; preds = %for.cond.93
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129

cleanup.129:                                      ; preds = %for.end.128, %cleanup, %if.then.70, %if.then.66, %if.then.54, %if.then.42, %if.then.25, %if.then.11, %if.then
  %102 = bitcast i8** %orig_header_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #2
  %103 = bitcast i32* %l_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast i16* %j to i8*
  call void @llvm.lifetime.end(i64 2, i8* %104) #2
  %105 = bitcast i16* %i to i8*
  call void @llvm.lifetime.end(i64 2, i8* %105) #2
  %106 = bitcast i16* %nr_channels to i8*
  call void @llvm.lifetime.end(i64 2, i8* %106) #2
  %107 = bitcast i16* %nr_entries to i8*
  call void @llvm.lifetime.end(i64 2, i8* %107) #2
  %108 = bitcast i32** %entries to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = bitcast i8** %channel_sign to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = bitcast i8** %channel_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #2
  %111 = bitcast %struct.opj_jp2_pclr** %jp2_pclr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #2
  %112 = load i32, i32* %retval
  ret i32 %112
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_read_cmap(%struct.opj_jp2* %jp2, i8* %p_cmap_header_data, i32 %p_cmap_header_size, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_cmap_header_data.addr = alloca i8*, align 8
  %p_cmap_header_size.addr = alloca i32, align 4
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %cmap = alloca %struct.opj_jp2_cmap_comp*, align 8
  %i = alloca i8, align 1
  %nr_channels = alloca i8, align 1
  %l_value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store i8* %p_cmap_header_data, i8** %p_cmap_header_data.addr, align 8, !tbaa !1
  store i32 %p_cmap_header_size, i32* %p_cmap_header_size.addr, align 4, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_jp2_cmap_comp** %cmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  call void @llvm.lifetime.start(i64 1, i8* %i) #2
  call void @llvm.lifetime.start(i64 1, i8* %nr_channels) #2
  %1 = bitcast i32* %l_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1009, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_cmap, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i8*, i8** %p_cmap_header_data.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %4, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1010, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_cmap, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %5, %cond.true.2
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %6, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1011, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_cmap, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %7, %cond.true.6
  %8 = load i32, i32* %p_cmap_header_size.addr, align 4, !tbaa !5
  %9 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %9, i32 0, i32 24
  %jp2_pclr = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color, i32 0, i32 3
  %10 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !28
  %cmp9 = icmp eq %struct.opj_jp2_pclr* %10, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  %11 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %11, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.8
  %12 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color10 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %12, i32 0, i32 24
  %jp2_pclr11 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color10, i32 0, i32 3
  %13 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr11, align 8, !tbaa !28
  %cmap12 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %13, i32 0, i32 3
  %14 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap12, align 8, !tbaa !37
  %tobool = icmp ne %struct.opj_jp2_cmap_comp* %14, null
  br i1 %tobool, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %15 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call14 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %15, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end
  %16 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color16 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %16, i32 0, i32 24
  %jp2_pclr17 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color16, i32 0, i32 3
  %17 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr17, align 8, !tbaa !28
  %nr_channels18 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %17, i32 0, i32 5
  %18 = load i8, i8* %nr_channels18, align 1, !tbaa !36
  store i8 %18, i8* %nr_channels, align 1, !tbaa !26
  %19 = load i32, i32* %p_cmap_header_size.addr, align 4, !tbaa !5
  %20 = load i8, i8* %nr_channels, align 1, !tbaa !26
  %conv = zext i8 %20 to i32
  %mul = mul i32 %conv, 4
  %cmp19 = icmp ult i32 %19, %mul
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.15
  %21 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call22 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %21, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.15
  %22 = load i8, i8* %nr_channels, align 1, !tbaa !26
  %conv24 = zext i8 %22 to i64
  %mul25 = mul i64 %conv24, 4
  %cmp26 = icmp uge i64 %mul25, -256
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %if.end.23
  br label %cond.end.33

cond.false.29:                                    ; preds = %if.end.23
  %23 = load i8, i8* %nr_channels, align 1, !tbaa !26
  %conv30 = zext i8 %23 to i64
  %mul31 = mul i64 %conv30, 4
  %call32 = call noalias i8* @malloc(i64 %mul31) #7
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.29, %cond.true.28
  %cond = phi i8* [ null, %cond.true.28 ], [ %call32, %cond.false.29 ]
  %24 = bitcast i8* %cond to %struct.opj_jp2_cmap_comp*
  store %struct.opj_jp2_cmap_comp* %24, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !1
  %25 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !1
  %tobool34 = icmp ne %struct.opj_jp2_cmap_comp* %25, null
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %cond.end.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %cond.end.33
  store i8 0, i8* %i, align 1, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.36
  %26 = load i8, i8* %i, align 1, !tbaa !26
  %conv37 = zext i8 %26 to i32
  %27 = load i8, i8* %nr_channels, align 1, !tbaa !26
  %conv38 = zext i8 %27 to i32
  %cmp39 = icmp slt i32 %conv37, %conv38
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %p_cmap_header_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %28, i32* %l_value, i32 2) #6
  %29 = load i8*, i8** %p_cmap_header_data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %add.ptr, i8** %p_cmap_header_data.addr, align 8, !tbaa !1
  %30 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv41 = trunc i32 %30 to i16
  %31 = load i8, i8* %i, align 1, !tbaa !26
  %idxprom = zext i8 %31 to i64
  %32 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %32, i64 %idxprom
  %cmp42 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %arrayidx, i32 0, i32 0
  store i16 %conv41, i16* %cmp42, align 2, !tbaa !38
  %33 = load i8*, i8** %p_cmap_header_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %33, i32* %l_value, i32 1) #6
  %34 = load i8*, i8** %p_cmap_header_data.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %p_cmap_header_data.addr, align 8, !tbaa !1
  %35 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv43 = trunc i32 %35 to i8
  %36 = load i8, i8* %i, align 1, !tbaa !26
  %idxprom44 = zext i8 %36 to i64
  %37 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %37, i64 %idxprom44
  %mtyp = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %arrayidx45, i32 0, i32 1
  store i8 %conv43, i8* %mtyp, align 1, !tbaa !40
  %38 = load i8*, i8** %p_cmap_header_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %38, i32* %l_value, i32 1) #6
  %39 = load i8*, i8** %p_cmap_header_data.addr, align 8, !tbaa !1
  %incdec.ptr46 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr46, i8** %p_cmap_header_data.addr, align 8, !tbaa !1
  %40 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv47 = trunc i32 %40 to i8
  %41 = load i8, i8* %i, align 1, !tbaa !26
  %idxprom48 = zext i8 %41 to i64
  %42 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %42, i64 %idxprom48
  %pcol = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %arrayidx49, i32 0, i32 2
  store i8 %conv47, i8* %pcol, align 1, !tbaa !41
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i8, i8* %i, align 1, !tbaa !26
  %inc = add i8 %43, 1
  store i8 %inc, i8* %i, align 1, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !1
  %45 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color50 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %45, i32 0, i32 24
  %jp2_pclr51 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color50, i32 0, i32 3
  %46 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr51, align 8, !tbaa !28
  %cmap52 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %46, i32 0, i32 3
  store %struct.opj_jp2_cmap_comp* %44, %struct.opj_jp2_cmap_comp** %cmap52, align 8, !tbaa !37
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.35, %if.then.21, %if.then.13, %if.then
  %47 = bitcast i32* %l_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  call void @llvm.lifetime.end(i64 1, i8* %nr_channels) #2
  call void @llvm.lifetime.end(i64 1, i8* %i) #2
  %48 = bitcast %struct.opj_jp2_cmap_comp** %cmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_read_cdef(%struct.opj_jp2* %jp2, i8* %p_cdef_header_data, i32 %p_cdef_header_size, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_cdef_header_data.addr = alloca i8*, align 8
  %p_cdef_header_size.addr = alloca i32, align 4
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %cdef_info = alloca %struct.opj_jp2_cdef_info*, align 8
  %i = alloca i16, align 2
  %l_value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store i8* %p_cdef_header_data, i8** %p_cdef_header_data.addr, align 8, !tbaa !1
  store i32 %p_cdef_header_size, i32* %p_cdef_header_size.addr, align 4, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_jp2_cdef_info** %cdef_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i16* %i to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i32* %l_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1111, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_cdef, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i8*, i8** %p_cdef_header_data.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i8* %5, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1112, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_cdef, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %6, %cond.true.2
  %7 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %7, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1113, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_cdef, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %8, %cond.true.6
  %9 = load i32, i32* %p_cdef_header_size.addr, align 4, !tbaa !5
  %10 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %10, i32 0, i32 24
  %jp2_cdef = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color, i32 0, i32 2
  %11 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef, align 8, !tbaa !42
  %tobool = icmp ne %struct.opj_jp2_cdef* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.8
  %12 = load i32, i32* %p_cdef_header_size.addr, align 4, !tbaa !5
  %cmp9 = icmp ult i32 %12, 2
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %13 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %13, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %14 = load i8*, i8** %p_cdef_header_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %14, i32* %l_value, i32 2) #6
  %15 = load i8*, i8** %p_cdef_header_data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %add.ptr, i8** %p_cdef_header_data.addr, align 8, !tbaa !1
  %16 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv = trunc i32 %16 to i16
  %conv12 = zext i16 %conv to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.11
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call16 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %17, i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.27, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.11
  %18 = load i32, i32* %p_cdef_header_size.addr, align 4, !tbaa !5
  %19 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv18 = trunc i32 %19 to i16
  %conv19 = zext i16 %conv18 to i32
  %mul = mul i32 %conv19, 6
  %add = add i32 2, %mul
  %cmp20 = icmp ult i32 %18, %add
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.17
  %20 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call23 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %20, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.17
  %21 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv25 = zext i32 %21 to i64
  %mul26 = mul i64 %conv25, 6
  %cmp27 = icmp uge i64 %mul26, -256
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %if.end.24
  br label %cond.end.34

cond.false.30:                                    ; preds = %if.end.24
  %22 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv31 = zext i32 %22 to i64
  %mul32 = mul i64 %conv31, 6
  %call33 = call noalias i8* @malloc(i64 %mul32) #7
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.30, %cond.true.29
  %cond = phi i8* [ null, %cond.true.29 ], [ %call33, %cond.false.30 ]
  %23 = bitcast i8* %cond to %struct.opj_jp2_cdef_info*
  store %struct.opj_jp2_cdef_info* %23, %struct.opj_jp2_cdef_info** %cdef_info, align 8, !tbaa !1
  %24 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %cdef_info, align 8, !tbaa !1
  %tobool35 = icmp ne %struct.opj_jp2_cdef_info* %24, null
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %cond.end.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %cond.end.34
  %call38 = call noalias i8* @malloc(i64 16) #7
  %25 = bitcast i8* %call38 to %struct.opj_jp2_cdef*
  %26 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color39 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %26, i32 0, i32 24
  %jp2_cdef40 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color39, i32 0, i32 2
  store %struct.opj_jp2_cdef* %25, %struct.opj_jp2_cdef** %jp2_cdef40, align 8, !tbaa !42
  %27 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color41 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %27, i32 0, i32 24
  %jp2_cdef42 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color41, i32 0, i32 2
  %28 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef42, align 8, !tbaa !42
  %tobool43 = icmp ne %struct.opj_jp2_cdef* %28, null
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.end.37
  %29 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %cdef_info, align 8, !tbaa !1
  %30 = bitcast %struct.opj_jp2_cdef_info* %29 to i8*
  call void @free(i8* %30) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.37
  %31 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %cdef_info, align 8, !tbaa !1
  %32 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color46 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %32, i32 0, i32 24
  %jp2_cdef47 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color46, i32 0, i32 2
  %33 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef47, align 8, !tbaa !42
  %info = getelementptr inbounds %struct.opj_jp2_cdef, %struct.opj_jp2_cdef* %33, i32 0, i32 0
  store %struct.opj_jp2_cdef_info* %31, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !43
  %34 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv48 = trunc i32 %34 to i16
  %35 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color49 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %35, i32 0, i32 24
  %jp2_cdef50 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color49, i32 0, i32 2
  %36 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef50, align 8, !tbaa !42
  %n = getelementptr inbounds %struct.opj_jp2_cdef, %struct.opj_jp2_cdef* %36, i32 0, i32 1
  store i16 %conv48, i16* %n, align 2, !tbaa !45
  store i16 0, i16* %i, align 2, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.45
  %37 = load i16, i16* %i, align 2, !tbaa !29
  %conv51 = zext i16 %37 to i32
  %38 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color52 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %38, i32 0, i32 24
  %jp2_cdef53 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color52, i32 0, i32 2
  %39 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef53, align 8, !tbaa !42
  %n54 = getelementptr inbounds %struct.opj_jp2_cdef, %struct.opj_jp2_cdef* %39, i32 0, i32 1
  %40 = load i16, i16* %n54, align 2, !tbaa !45
  %conv55 = zext i16 %40 to i32
  %cmp56 = icmp slt i32 %conv51, %conv55
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i8*, i8** %p_cdef_header_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %41, i32* %l_value, i32 2) #6
  %42 = load i8*, i8** %p_cdef_header_data.addr, align 8, !tbaa !1
  %add.ptr58 = getelementptr inbounds i8, i8* %42, i64 2
  store i8* %add.ptr58, i8** %p_cdef_header_data.addr, align 8, !tbaa !1
  %43 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv59 = trunc i32 %43 to i16
  %44 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom = zext i16 %44 to i64
  %45 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %cdef_info, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %45, i64 %idxprom
  %cn = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx, i32 0, i32 0
  store i16 %conv59, i16* %cn, align 2, !tbaa !46
  %46 = load i8*, i8** %p_cdef_header_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %46, i32* %l_value, i32 2) #6
  %47 = load i8*, i8** %p_cdef_header_data.addr, align 8, !tbaa !1
  %add.ptr60 = getelementptr inbounds i8, i8* %47, i64 2
  store i8* %add.ptr60, i8** %p_cdef_header_data.addr, align 8, !tbaa !1
  %48 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv61 = trunc i32 %48 to i16
  %49 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom62 = zext i16 %49 to i64
  %50 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %cdef_info, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %50, i64 %idxprom62
  %typ = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx63, i32 0, i32 1
  store i16 %conv61, i16* %typ, align 2, !tbaa !48
  %51 = load i8*, i8** %p_cdef_header_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %51, i32* %l_value, i32 2) #6
  %52 = load i8*, i8** %p_cdef_header_data.addr, align 8, !tbaa !1
  %add.ptr64 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %add.ptr64, i8** %p_cdef_header_data.addr, align 8, !tbaa !1
  %53 = load i32, i32* %l_value, align 4, !tbaa !5
  %conv65 = trunc i32 %53 to i16
  %54 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom66 = zext i16 %54 to i64
  %55 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %cdef_info, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %55, i64 %idxprom66
  %asoc = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx67, i32 0, i32 2
  store i16 %conv65, i16* %asoc, align 2, !tbaa !49
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %56 = load i16, i16* %i, align 2, !tbaa !29
  %inc = add i16 %56, 1
  store i16 %inc, i16* %i, align 2, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.44, %if.then.36, %if.then.22, %if.then.15, %if.then.10, %if.then
  %57 = bitcast i32* %l_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i16* %i to i8*
  call void @llvm.lifetime.end(i64 2, i8* %58) #2
  %59 = bitcast %struct.opj_jp2_cdef_info** %cdef_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_decode(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %p_stream, %struct.opj_image* %p_image, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_image.addr = alloca %struct.opj_image*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_image* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %1, i32 0, i32 0
  %2 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %3 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %4 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %5 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 @opj_j2k_decode(%struct.opj_j2k* %2, %struct.opj_stream_private* %3, %struct.opj_image* %4, %struct.opj_event_mgr* %5) #6
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call3 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %6, i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %ignore_pclr_cmap_cdef = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %7, i32 0, i32 25
  %8 = load i32, i32* %ignore_pclr_cmap_cdef, align 4, !tbaa !51
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.end.60, label %if.then.6

if.then.6:                                        ; preds = %if.end.4
  %9 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %10 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %10, i32 0, i32 24
  %11 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call7 = call i32 @opj_jp2_check_color(%struct.opj_image* %9, %struct.opj_jp2_color* %color, %struct.opj_event_mgr* %11) #6
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.6
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.6
  %12 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %enumcs = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %12, i32 0, i32 12
  %13 = load i32, i32* %enumcs, align 4, !tbaa !52
  %cmp = icmp eq i32 %13, 16
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.10
  %14 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.opj_image, %struct.opj_image* %14, i32 0, i32 5
  store i32 1, i32* %color_space, align 4, !tbaa !53
  br label %if.end.31

if.else:                                          ; preds = %if.end.10
  %15 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %enumcs12 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %15, i32 0, i32 12
  %16 = load i32, i32* %enumcs12, align 4, !tbaa !52
  %cmp13 = icmp eq i32 %16, 17
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.else
  %17 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %color_space15 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %17, i32 0, i32 5
  store i32 2, i32* %color_space15, align 4, !tbaa !53
  br label %if.end.30

if.else.16:                                       ; preds = %if.else
  %18 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %enumcs17 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %18, i32 0, i32 12
  %19 = load i32, i32* %enumcs17, align 4, !tbaa !52
  %cmp18 = icmp eq i32 %19, 18
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else.16
  %20 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %color_space20 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %20, i32 0, i32 5
  store i32 3, i32* %color_space20, align 4, !tbaa !53
  br label %if.end.29

if.else.21:                                       ; preds = %if.else.16
  %21 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %enumcs22 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %21, i32 0, i32 12
  %22 = load i32, i32* %enumcs22, align 4, !tbaa !52
  %cmp23 = icmp eq i32 %22, 24
  br i1 %cmp23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.else.21
  %23 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %color_space25 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %23, i32 0, i32 5
  store i32 4, i32* %color_space25, align 4, !tbaa !53
  br label %if.end.28

if.else.26:                                       ; preds = %if.else.21
  %24 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %color_space27 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %24, i32 0, i32 5
  store i32 -1, i32* %color_space27, align 4, !tbaa !53
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.19
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.14
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.11
  %25 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color32 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %25, i32 0, i32 24
  %jp2_cdef = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color32, i32 0, i32 2
  %26 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef, align 8, !tbaa !42
  %tobool33 = icmp ne %struct.opj_jp2_cdef* %26, null
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.31
  %27 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %28 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color35 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %28, i32 0, i32 24
  call void @opj_jp2_apply_cdef(%struct.opj_image* %27, %struct.opj_jp2_color* %color35) #6
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.31
  %29 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color37 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %29, i32 0, i32 24
  %jp2_pclr = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color37, i32 0, i32 3
  %30 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !28
  %tobool38 = icmp ne %struct.opj_jp2_pclr* %30, null
  br i1 %tobool38, label %if.then.39, label %if.end.48

if.then.39:                                       ; preds = %if.end.36
  %31 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color40 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %31, i32 0, i32 24
  %jp2_pclr41 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color40, i32 0, i32 3
  %32 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr41, align 8, !tbaa !28
  %cmap = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %32, i32 0, i32 3
  %33 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !37
  %tobool42 = icmp ne %struct.opj_jp2_cmap_comp* %33, null
  br i1 %tobool42, label %if.else.45, label %if.then.43

if.then.43:                                       ; preds = %if.then.39
  %34 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color44 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %34, i32 0, i32 24
  call void @opj_jp2_free_pclr(%struct.opj_jp2_color* %color44) #6
  br label %if.end.47

if.else.45:                                       ; preds = %if.then.39
  %35 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %36 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color46 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %36, i32 0, i32 24
  call void @opj_jp2_apply_pclr(%struct.opj_image* %35, %struct.opj_jp2_color* %color46) #6
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.36
  %37 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color49 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %37, i32 0, i32 24
  %icc_profile_buf = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color49, i32 0, i32 0
  %38 = load i8*, i8** %icc_profile_buf, align 8, !tbaa !25
  %tobool50 = icmp ne i8* %38, null
  br i1 %tobool50, label %if.then.51, label %if.end.59

if.then.51:                                       ; preds = %if.end.48
  %39 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color52 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %39, i32 0, i32 24
  %icc_profile_buf53 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color52, i32 0, i32 0
  %40 = load i8*, i8** %icc_profile_buf53, align 8, !tbaa !25
  %41 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %icc_profile_buf54 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %41, i32 0, i32 7
  store i8* %40, i8** %icc_profile_buf54, align 8, !tbaa !55
  %42 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color55 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %42, i32 0, i32 24
  %icc_profile_len = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color55, i32 0, i32 1
  %43 = load i32, i32* %icc_profile_len, align 4, !tbaa !24
  %44 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %icc_profile_len56 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %44, i32 0, i32 8
  store i32 %43, i32* %icc_profile_len56, align 4, !tbaa !56
  %45 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color57 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %45, i32 0, i32 24
  %icc_profile_buf58 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color57, i32 0, i32 0
  store i8* null, i8** %icc_profile_buf58, align 8, !tbaa !25
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.51, %if.end.48
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.60, %if.then.9, %if.then.2, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare i32 @opj_j2k_decode(%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*) #1

declare i32 @opj_event_msg(%struct.opj_event_mgr*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_check_color(%struct.opj_image* %image, %struct.opj_jp2_color* %color, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct.opj_image*, align 8
  %color.addr = alloca %struct.opj_jp2_color*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %i = alloca i16, align 2
  %info = alloca %struct.opj_jp2_cdef_info*, align 8
  %n = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  %nr_channels = alloca i16, align 2
  %cmap47 = alloca %struct.opj_jp2_cmap_comp*, align 8
  %pcol_usage = alloca i32*, align 8
  %is_sane = alloca i32, align 4
  %pcol = alloca i16, align 2
  store %struct.opj_image* %image, %struct.opj_image** %image.addr, align 8, !tbaa !1
  store %struct.opj_jp2_color* %color, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i16* %i to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_cdef = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %1, i32 0, i32 2
  %2 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef, align 8, !tbaa !57
  %tobool = icmp ne %struct.opj_jp2_cdef* %2, null
  br i1 %tobool, label %if.then, label %if.end.38

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.opj_jp2_cdef_info** %info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_cdef1 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %4, i32 0, i32 2
  %5 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef1, align 8, !tbaa !57
  %info2 = getelementptr inbounds %struct.opj_jp2_cdef, %struct.opj_jp2_cdef* %5, i32 0, i32 0
  %6 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info2, align 8, !tbaa !43
  store %struct.opj_jp2_cdef_info* %6, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !1
  %7 = bitcast i16* %n to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #2
  %8 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_cdef3 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %8, i32 0, i32 2
  %9 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef3, align 8, !tbaa !57
  %n4 = getelementptr inbounds %struct.opj_jp2_cdef, %struct.opj_jp2_cdef* %9, i32 0, i32 1
  %10 = load i16, i16* %n4, align 2, !tbaa !45
  store i16 %10, i16* %n, align 2, !tbaa !29
  store i16 0, i16* %i, align 2, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i16, i16* %i, align 2, !tbaa !29
  %conv = zext i16 %11 to i32
  %12 = load i16, i16* %n, align 2, !tbaa !29
  %conv5 = zext i16 %12 to i32
  %cmp = icmp slt i32 %conv, %conv5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom = zext i16 %13 to i64
  %14 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %14, i64 %idxprom
  %cn = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx, i32 0, i32 0
  %15 = load i16, i16* %cn, align 2, !tbaa !46
  %conv7 = zext i16 %15 to i32
  %16 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %16, i32 0, i32 4
  %17 = load i32, i32* %numcomps, align 4, !tbaa !58
  %cmp8 = icmp uge i32 %conv7, %17
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  %18 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %19 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom11 = zext i16 %19 to i64
  %20 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %20, i64 %idxprom11
  %cn13 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx12, i32 0, i32 0
  %21 = load i16, i16* %cn13, align 2, !tbaa !46
  %conv14 = zext i16 %21 to i32
  %22 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps15 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %22, i32 0, i32 4
  %23 = load i32, i32* %numcomps15, align 4, !tbaa !58
  %call = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %18, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0), i32 %conv14, i32 %23) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %24 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom16 = zext i16 %24 to i64
  %25 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %25, i64 %idxprom16
  %asoc = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx17, i32 0, i32 2
  %26 = load i16, i16* %asoc, align 2, !tbaa !49
  %conv18 = zext i16 %26 to i32
  %cmp19 = icmp sgt i32 %conv18, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end
  %27 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom21 = zext i16 %27 to i64
  %28 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %28, i64 %idxprom21
  %asoc23 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx22, i32 0, i32 2
  %29 = load i16, i16* %asoc23, align 2, !tbaa !49
  %conv24 = zext i16 %29 to i32
  %sub = sub nsw i32 %conv24, 1
  %30 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps25 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %30, i32 0, i32 4
  %31 = load i32, i32* %numcomps25, align 4, !tbaa !58
  %cmp26 = icmp uge i32 %sub, %31
  br i1 %cmp26, label %if.then.28, label %if.end.36

if.then.28:                                       ; preds = %land.lhs.true
  %32 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %33 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom29 = zext i16 %33 to i64
  %34 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %34, i64 %idxprom29
  %asoc31 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx30, i32 0, i32 2
  %35 = load i16, i16* %asoc31, align 2, !tbaa !49
  %conv32 = zext i16 %35 to i32
  %sub33 = sub nsw i32 %conv32, 1
  %36 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps34 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %36, i32 0, i32 4
  %37 = load i32, i32* %numcomps34, align 4, !tbaa !58
  %call35 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %32, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0), i32 %sub33, i32 %37) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %38 = load i16, i16* %i, align 2, !tbaa !29
  %inc = add i16 %38, 1
  store i16 %inc, i16* %i, align 2, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.28, %if.then.10
  %39 = bitcast i16* %n to i8*
  call void @llvm.lifetime.end(i64 2, i8* %39) #2
  %40 = bitcast %struct.opj_jp2_cdef_info** %info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.144 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont, %entry
  %41 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %41, i32 0, i32 3
  %42 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !59
  %tobool39 = icmp ne %struct.opj_jp2_pclr* %42, null
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.143

land.lhs.true.40:                                 ; preds = %if.end.38
  %43 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr41 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %43, i32 0, i32 3
  %44 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr41, align 8, !tbaa !59
  %cmap = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %44, i32 0, i32 3
  %45 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !37
  %tobool42 = icmp ne %struct.opj_jp2_cmap_comp* %45, null
  br i1 %tobool42, label %if.then.43, label %if.end.143

if.then.43:                                       ; preds = %land.lhs.true.40
  %46 = bitcast i16* %nr_channels to i8*
  call void @llvm.lifetime.start(i64 2, i8* %46) #2
  %47 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr44 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %47, i32 0, i32 3
  %48 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr44, align 8, !tbaa !59
  %nr_channels45 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %48, i32 0, i32 5
  %49 = load i8, i8* %nr_channels45, align 1, !tbaa !36
  %conv46 = zext i8 %49 to i16
  store i16 %conv46, i16* %nr_channels, align 2, !tbaa !29
  %50 = bitcast %struct.opj_jp2_cmap_comp** %cmap47 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #2
  %51 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr48 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %51, i32 0, i32 3
  %52 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr48, align 8, !tbaa !59
  %cmap49 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %52, i32 0, i32 3
  %53 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap49, align 8, !tbaa !37
  store %struct.opj_jp2_cmap_comp* %53, %struct.opj_jp2_cmap_comp** %cmap47, align 8, !tbaa !1
  %54 = bitcast i32** %pcol_usage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #2
  %55 = bitcast i32* %is_sane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  store i32 1, i32* %is_sane, align 4, !tbaa !5
  store i16 0, i16* %i, align 2, !tbaa !29
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.71, %if.then.43
  %56 = load i16, i16* %i, align 2, !tbaa !29
  %conv51 = zext i16 %56 to i32
  %57 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv52 = zext i16 %57 to i32
  %cmp53 = icmp slt i32 %conv51, %conv52
  br i1 %cmp53, label %for.body.55, label %for.end.73

for.body.55:                                      ; preds = %for.cond.50
  %58 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom56 = zext i16 %58 to i64
  %59 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap47, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %59, i64 %idxprom56
  %cmp58 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %arrayidx57, i32 0, i32 0
  %60 = load i16, i16* %cmp58, align 2, !tbaa !38
  %conv59 = zext i16 %60 to i32
  %61 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps60 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %61, i32 0, i32 4
  %62 = load i32, i32* %numcomps60, align 4, !tbaa !58
  %cmp61 = icmp uge i32 %conv59, %62
  br i1 %cmp61, label %if.then.63, label %if.end.70

if.then.63:                                       ; preds = %for.body.55
  %63 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %64 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom64 = zext i16 %64 to i64
  %65 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap47, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %65, i64 %idxprom64
  %cmp66 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %arrayidx65, i32 0, i32 0
  %66 = load i16, i16* %cmp66, align 2, !tbaa !38
  %conv67 = zext i16 %66 to i32
  %67 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps68 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %67, i32 0, i32 4
  %68 = load i32, i32* %numcomps68, align 4, !tbaa !58
  %call69 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %63, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i32 0, i32 0), i32 %conv67, i32 %68) #6
  store i32 0, i32* %is_sane, align 4, !tbaa !5
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.63, %for.body.55
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %69 = load i16, i16* %i, align 2, !tbaa !29
  %inc72 = add i16 %69, 1
  store i16 %inc72, i16* %i, align 2, !tbaa !29
  br label %for.cond.50

for.end.73:                                       ; preds = %for.cond.50
  %70 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv74 = zext i16 %70 to i64
  %cmp75 = icmp ne i64 %conv74, 0
  br i1 %cmp75, label %land.lhs.true.77, label %cond.false

land.lhs.true.77:                                 ; preds = %for.end.73
  %71 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv78 = zext i16 %71 to i64
  %cmp79 = icmp uge i64 %conv78, 4611686018427387840
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.77
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.77, %for.end.73
  %72 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv81 = zext i16 %72 to i64
  %call82 = call noalias i8* @calloc(i64 %conv81, i64 4) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call82, %cond.false ]
  %73 = bitcast i8* %cond to i32*
  store i32* %73, i32** %pcol_usage, align 8, !tbaa !1
  %74 = load i32*, i32** %pcol_usage, align 8, !tbaa !1
  %tobool83 = icmp ne i32* %74, null
  br i1 %tobool83, label %if.end.86, label %if.then.84

if.then.84:                                       ; preds = %cond.end
  %75 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call85 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %75, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.137

if.end.86:                                        ; preds = %cond.end
  store i16 0, i16* %i, align 2, !tbaa !29
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.115, %if.end.86
  %76 = load i16, i16* %i, align 2, !tbaa !29
  %conv88 = zext i16 %76 to i32
  %77 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv89 = zext i16 %77 to i32
  %cmp90 = icmp slt i32 %conv88, %conv89
  br i1 %cmp90, label %for.body.92, label %for.end.117

for.body.92:                                      ; preds = %for.cond.87
  %78 = bitcast i16* %pcol to i8*
  call void @llvm.lifetime.start(i64 2, i8* %78) #2
  %79 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom93 = zext i16 %79 to i64
  %80 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap47, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %80, i64 %idxprom93
  %pcol95 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %arrayidx94, i32 0, i32 2
  %81 = load i8, i8* %pcol95, align 1, !tbaa !41
  %conv96 = zext i8 %81 to i16
  store i16 %conv96, i16* %pcol, align 2, !tbaa !29
  %82 = load i16, i16* %pcol, align 2, !tbaa !29
  %conv97 = zext i16 %82 to i32
  %83 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv98 = zext i16 %83 to i32
  %cmp99 = icmp sge i32 %conv97, %conv98
  br i1 %cmp99, label %if.then.101, label %if.else

if.then.101:                                      ; preds = %for.body.92
  %84 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %85 = load i16, i16* %pcol, align 2, !tbaa !29
  %conv102 = zext i16 %85 to i32
  %call103 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %84, i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i32 0, i32 0), i32 %conv102) #6
  store i32 0, i32* %is_sane, align 4, !tbaa !5
  br label %if.end.114

if.else:                                          ; preds = %for.body.92
  %86 = load i16, i16* %pcol, align 2, !tbaa !29
  %idxprom104 = zext i16 %86 to i64
  %87 = load i32*, i32** %pcol_usage, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i32, i32* %87, i64 %idxprom104
  %88 = load i32, i32* %arrayidx105, align 4, !tbaa !5
  %tobool106 = icmp ne i32 %88, 0
  br i1 %tobool106, label %if.then.107, label %if.else.110

if.then.107:                                      ; preds = %if.else
  %89 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %90 = load i16, i16* %pcol, align 2, !tbaa !29
  %conv108 = zext i16 %90 to i32
  %call109 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %89, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0), i32 %conv108) #6
  store i32 0, i32* %is_sane, align 4, !tbaa !5
  br label %if.end.113

if.else.110:                                      ; preds = %if.else
  %91 = load i16, i16* %pcol, align 2, !tbaa !29
  %idxprom111 = zext i16 %91 to i64
  %92 = load i32*, i32** %pcol_usage, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i32, i32* %92, i64 %idxprom111
  store i32 1, i32* %arrayidx112, align 4, !tbaa !5
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.107
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.101
  %93 = bitcast i16* %pcol to i8*
  call void @llvm.lifetime.end(i64 2, i8* %93) #2
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %94 = load i16, i16* %i, align 2, !tbaa !29
  %inc116 = add i16 %94, 1
  store i16 %inc116, i16* %i, align 2, !tbaa !29
  br label %for.cond.87

for.end.117:                                      ; preds = %for.cond.87
  store i16 0, i16* %i, align 2, !tbaa !29
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.131, %for.end.117
  %95 = load i16, i16* %i, align 2, !tbaa !29
  %conv119 = zext i16 %95 to i32
  %96 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv120 = zext i16 %96 to i32
  %cmp121 = icmp slt i32 %conv119, %conv120
  br i1 %cmp121, label %for.body.123, label %for.end.133

for.body.123:                                     ; preds = %for.cond.118
  %97 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom124 = zext i16 %97 to i64
  %98 = load i32*, i32** %pcol_usage, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i32, i32* %98, i64 %idxprom124
  %99 = load i32, i32* %arrayidx125, align 4, !tbaa !5
  %tobool126 = icmp ne i32 %99, 0
  br i1 %tobool126, label %if.end.130, label %if.then.127

if.then.127:                                      ; preds = %for.body.123
  %100 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %101 = load i16, i16* %i, align 2, !tbaa !29
  %conv128 = zext i16 %101 to i32
  %call129 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %100, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i32 0, i32 0), i32 %conv128) #6
  store i32 0, i32* %is_sane, align 4, !tbaa !5
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.127, %for.body.123
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130
  %102 = load i16, i16* %i, align 2, !tbaa !29
  %inc132 = add i16 %102, 1
  store i16 %inc132, i16* %i, align 2, !tbaa !29
  br label %for.cond.118

for.end.133:                                      ; preds = %for.cond.118
  %103 = load i32*, i32** %pcol_usage, align 8, !tbaa !1
  %104 = bitcast i32* %103 to i8*
  call void @free(i8* %104) #7
  %105 = load i32, i32* %is_sane, align 4, !tbaa !5
  %tobool134 = icmp ne i32 %105, 0
  br i1 %tobool134, label %if.end.136, label %if.then.135

if.then.135:                                      ; preds = %for.end.133
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.137

if.end.136:                                       ; preds = %for.end.133
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.137

cleanup.137:                                      ; preds = %if.end.136, %if.then.135, %if.then.84
  %106 = bitcast i32* %is_sane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast i32** %pcol_usage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = bitcast %struct.opj_jp2_cmap_comp** %cmap47 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = bitcast i16* %nr_channels to i8*
  call void @llvm.lifetime.end(i64 2, i8* %109) #2
  %cleanup.dest.141 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.141, label %cleanup.144 [
    i32 0, label %cleanup.cont.142
  ]

cleanup.cont.142:                                 ; preds = %cleanup.137
  br label %if.end.143

if.end.143:                                       ; preds = %cleanup.cont.142, %land.lhs.true.40, %if.end.38
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.144

cleanup.144:                                      ; preds = %if.end.143, %cleanup.137, %cleanup
  %110 = bitcast i16* %i to i8*
  call void @llvm.lifetime.end(i64 2, i8* %110) #2
  %111 = load i32, i32* %retval
  ret i32 %111
}

; Function Attrs: nounwind uwtable
define internal void @opj_jp2_apply_cdef(%struct.opj_image* %image, %struct.opj_jp2_color* %color) #0 {
entry:
  %image.addr = alloca %struct.opj_image*, align 8
  %color.addr = alloca %struct.opj_jp2_color*, align 8
  %info = alloca %struct.opj_jp2_cdef_info*, align 8
  %i = alloca i16, align 2
  %n = alloca i16, align 2
  %cn = alloca i16, align 2
  %asoc = alloca i16, align 2
  %acn = alloca i16, align 2
  %saved = alloca %struct.opj_image_comp, align 8
  store %struct.opj_image* %image, %struct.opj_image** %image.addr, align 8, !tbaa !1
  store %struct.opj_jp2_color* %color, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_jp2_cdef_info** %info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i16* %i to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %n to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = bitcast i16* %cn to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = bitcast i16* %asoc to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #2
  %5 = bitcast i16* %acn to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #2
  %6 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_cdef = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %6, i32 0, i32 2
  %7 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef, align 8, !tbaa !57
  %info1 = getelementptr inbounds %struct.opj_jp2_cdef, %struct.opj_jp2_cdef* %7, i32 0, i32 0
  %8 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info1, align 8, !tbaa !43
  store %struct.opj_jp2_cdef_info* %8, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !1
  %9 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_cdef2 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %9, i32 0, i32 2
  %10 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef2, align 8, !tbaa !57
  %n3 = getelementptr inbounds %struct.opj_jp2_cdef, %struct.opj_jp2_cdef* %10, i32 0, i32 1
  %11 = load i16, i16* %n3, align 2, !tbaa !45
  store i16 %11, i16* %n, align 2, !tbaa !29
  store i16 0, i16* %i, align 2, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i16, i16* %i, align 2, !tbaa !29
  %conv = zext i16 %12 to i32
  %13 = load i16, i16* %n, align 2, !tbaa !29
  %conv4 = zext i16 %13 to i32
  %cmp = icmp slt i32 %conv, %conv4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom = zext i16 %14 to i64
  %15 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %15, i64 %idxprom
  %asoc6 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx, i32 0, i32 2
  %16 = load i16, i16* %asoc6, align 2, !tbaa !49
  store i16 %16, i16* %asoc, align 2, !tbaa !29
  %conv7 = zext i16 %16 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then, label %if.end.18

if.then:                                          ; preds = %for.body
  %17 = load i16, i16* %i, align 2, !tbaa !29
  %conv10 = zext i16 %17 to i32
  %18 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %18, i32 0, i32 4
  %19 = load i32, i32* %numcomps, align 4, !tbaa !58
  %cmp11 = icmp ult i32 %conv10, %19
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %20 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom14 = zext i16 %20 to i64
  %21 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %21, i64 %idxprom14
  %typ = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx15, i32 0, i32 1
  %22 = load i16, i16* %typ, align 2, !tbaa !48
  %23 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom16 = zext i16 %23 to i64
  %24 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %24, i32 0, i32 6
  %25 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps, align 8, !tbaa !60
  %arrayidx17 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %25, i64 %idxprom16
  %alpha = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx17, i32 0, i32 12
  store i16 %22, i16* %alpha, align 2, !tbaa !61
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  br label %for.inc

if.end.18:                                        ; preds = %for.body
  %26 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom19 = zext i16 %26 to i64
  %27 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %27, i64 %idxprom19
  %cn21 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx20, i32 0, i32 0
  %28 = load i16, i16* %cn21, align 2, !tbaa !46
  store i16 %28, i16* %cn, align 2, !tbaa !29
  %29 = load i16, i16* %asoc, align 2, !tbaa !29
  %conv22 = zext i16 %29 to i32
  %sub = sub nsw i32 %conv22, 1
  %conv23 = trunc i32 %sub to i16
  store i16 %conv23, i16* %acn, align 2, !tbaa !29
  %30 = load i16, i16* %cn, align 2, !tbaa !29
  %conv24 = zext i16 %30 to i32
  %31 = load i16, i16* %acn, align 2, !tbaa !29
  %conv25 = zext i16 %31 to i32
  %cmp26 = icmp ne i32 %conv24, %conv25
  br i1 %cmp26, label %if.then.28, label %if.end.57

if.then.28:                                       ; preds = %if.end.18
  %32 = bitcast %struct.opj_image_comp* %saved to i8*
  call void @llvm.lifetime.start(i64 64, i8* %32) #2
  %33 = bitcast %struct.opj_image_comp* %saved to i8*
  %34 = load i16, i16* %cn, align 2, !tbaa !29
  %idxprom29 = zext i16 %34 to i64
  %35 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps30 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %35, i32 0, i32 6
  %36 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps30, align 8, !tbaa !60
  %arrayidx31 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %36, i64 %idxprom29
  %37 = bitcast %struct.opj_image_comp* %arrayidx31 to i8*
  %call = call i8* @memcpy(i8* %33, i8* %37, i64 64) #7
  %38 = load i16, i16* %cn, align 2, !tbaa !29
  %idxprom32 = zext i16 %38 to i64
  %39 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps33 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %39, i32 0, i32 6
  %40 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps33, align 8, !tbaa !60
  %arrayidx34 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %40, i64 %idxprom32
  %41 = bitcast %struct.opj_image_comp* %arrayidx34 to i8*
  %42 = load i16, i16* %acn, align 2, !tbaa !29
  %idxprom35 = zext i16 %42 to i64
  %43 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps36 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %43, i32 0, i32 6
  %44 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps36, align 8, !tbaa !60
  %arrayidx37 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %44, i64 %idxprom35
  %45 = bitcast %struct.opj_image_comp* %arrayidx37 to i8*
  %call38 = call i8* @memcpy(i8* %41, i8* %45, i64 64) #7
  %46 = load i16, i16* %acn, align 2, !tbaa !29
  %idxprom39 = zext i16 %46 to i64
  %47 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps40 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %47, i32 0, i32 6
  %48 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps40, align 8, !tbaa !60
  %arrayidx41 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %48, i64 %idxprom39
  %49 = bitcast %struct.opj_image_comp* %arrayidx41 to i8*
  %50 = bitcast %struct.opj_image_comp* %saved to i8*
  %call42 = call i8* @memcpy(i8* %49, i8* %50, i64 64) #7
  %51 = load i16, i16* %cn, align 2, !tbaa !29
  %conv43 = zext i16 %51 to i32
  %add = add nsw i32 %conv43, 1
  %conv44 = trunc i32 %add to i16
  %52 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom45 = zext i16 %52 to i64
  %53 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %53, i64 %idxprom45
  %asoc47 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx46, i32 0, i32 2
  store i16 %conv44, i16* %asoc47, align 2, !tbaa !49
  %54 = load i16, i16* %acn, align 2, !tbaa !29
  %idxprom48 = zext i16 %54 to i64
  %55 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %55, i64 %idxprom48
  %cn50 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx49, i32 0, i32 0
  %56 = load i16, i16* %cn50, align 2, !tbaa !46
  %conv51 = zext i16 %56 to i32
  %add52 = add nsw i32 %conv51, 1
  %conv53 = trunc i32 %add52 to i16
  %57 = load i16, i16* %acn, align 2, !tbaa !29
  %idxprom54 = zext i16 %57 to i64
  %58 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %58, i64 %idxprom54
  %asoc56 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx55, i32 0, i32 2
  store i16 %conv53, i16* %asoc56, align 2, !tbaa !49
  %59 = bitcast %struct.opj_image_comp* %saved to i8*
  call void @llvm.lifetime.end(i64 64, i8* %59) #2
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.28, %if.end.18
  %60 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom58 = zext i16 %60 to i64
  %61 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %61, i64 %idxprom58
  %typ60 = getelementptr inbounds %struct.opj_jp2_cdef_info, %struct.opj_jp2_cdef_info* %arrayidx59, i32 0, i32 1
  %62 = load i16, i16* %typ60, align 2, !tbaa !48
  %63 = load i16, i16* %cn, align 2, !tbaa !29
  %idxprom61 = zext i16 %63 to i64
  %64 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps62 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %64, i32 0, i32 6
  %65 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps62, align 8, !tbaa !60
  %arrayidx63 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %65, i64 %idxprom61
  %alpha64 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx63, i32 0, i32 12
  store i16 %62, i16* %alpha64, align 2, !tbaa !61
  br label %for.inc

for.inc:                                          ; preds = %if.end.57, %if.end
  %66 = load i16, i16* %i, align 2, !tbaa !29
  %inc = add i16 %66, 1
  store i16 %inc, i16* %i, align 2, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_cdef65 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %67, i32 0, i32 2
  %68 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef65, align 8, !tbaa !57
  %info66 = getelementptr inbounds %struct.opj_jp2_cdef, %struct.opj_jp2_cdef* %68, i32 0, i32 0
  %69 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info66, align 8, !tbaa !43
  %tobool = icmp ne %struct.opj_jp2_cdef_info* %69, null
  br i1 %tobool, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %for.end
  %70 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_cdef68 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %70, i32 0, i32 2
  %71 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef68, align 8, !tbaa !57
  %info69 = getelementptr inbounds %struct.opj_jp2_cdef, %struct.opj_jp2_cdef* %71, i32 0, i32 0
  %72 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info69, align 8, !tbaa !43
  %73 = bitcast %struct.opj_jp2_cdef_info* %72 to i8*
  call void @free(i8* %73) #7
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %for.end
  %74 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_cdef71 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %74, i32 0, i32 2
  %75 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef71, align 8, !tbaa !57
  %76 = bitcast %struct.opj_jp2_cdef* %75 to i8*
  call void @free(i8* %76) #7
  %77 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_cdef72 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %77, i32 0, i32 2
  store %struct.opj_jp2_cdef* null, %struct.opj_jp2_cdef** %jp2_cdef72, align 8, !tbaa !57
  %78 = bitcast i16* %acn to i8*
  call void @llvm.lifetime.end(i64 2, i8* %78) #2
  %79 = bitcast i16* %asoc to i8*
  call void @llvm.lifetime.end(i64 2, i8* %79) #2
  %80 = bitcast i16* %cn to i8*
  call void @llvm.lifetime.end(i64 2, i8* %80) #2
  %81 = bitcast i16* %n to i8*
  call void @llvm.lifetime.end(i64 2, i8* %81) #2
  %82 = bitcast i16* %i to i8*
  call void @llvm.lifetime.end(i64 2, i8* %82) #2
  %83 = bitcast %struct.opj_jp2_cdef_info** %info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_jp2_free_pclr(%struct.opj_jp2_color* %color) #0 {
entry:
  %color.addr = alloca %struct.opj_jp2_color*, align 8
  store %struct.opj_jp2_color* %color, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %0, i32 0, i32 3
  %1 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !59
  %channel_sign = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %1, i32 0, i32 1
  %2 = load i8*, i8** %channel_sign, align 8, !tbaa !31
  call void @free(i8* %2) #7
  %3 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr1 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %3, i32 0, i32 3
  %4 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr1, align 8, !tbaa !59
  %channel_size = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %4, i32 0, i32 2
  %5 = load i8*, i8** %channel_size, align 8, !tbaa !33
  call void @free(i8* %5) #7
  %6 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr2 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %6, i32 0, i32 3
  %7 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr2, align 8, !tbaa !59
  %entries = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %7, i32 0, i32 0
  %8 = load i32*, i32** %entries, align 8, !tbaa !34
  %9 = bitcast i32* %8 to i8*
  call void @free(i8* %9) #7
  %10 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr3 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %10, i32 0, i32 3
  %11 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr3, align 8, !tbaa !59
  %cmap = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %11, i32 0, i32 3
  %12 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !37
  %tobool = icmp ne %struct.opj_jp2_cmap_comp* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr4 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %13, i32 0, i32 3
  %14 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr4, align 8, !tbaa !59
  %cmap5 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %14, i32 0, i32 3
  %15 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap5, align 8, !tbaa !37
  %16 = bitcast %struct.opj_jp2_cmap_comp* %15 to i8*
  call void @free(i8* %16) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr6 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %17, i32 0, i32 3
  %18 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr6, align 8, !tbaa !59
  %19 = bitcast %struct.opj_jp2_pclr* %18 to i8*
  call void @free(i8* %19) #7
  %20 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr7 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %20, i32 0, i32 3
  store %struct.opj_jp2_pclr* null, %struct.opj_jp2_pclr** %jp2_pclr7, align 8, !tbaa !59
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_jp2_apply_pclr(%struct.opj_image* %image, %struct.opj_jp2_color* %color) #0 {
entry:
  %image.addr = alloca %struct.opj_image*, align 8
  %color.addr = alloca %struct.opj_jp2_color*, align 8
  %old_comps = alloca %struct.opj_image_comp*, align 8
  %new_comps = alloca %struct.opj_image_comp*, align 8
  %channel_size = alloca i8*, align 8
  %channel_sign = alloca i8*, align 8
  %entries = alloca i32*, align 8
  %cmap = alloca %struct.opj_jp2_cmap_comp*, align 8
  %src = alloca i32*, align 8
  %dst = alloca i32*, align 8
  %j = alloca i32, align 4
  %max = alloca i32, align 4
  %i = alloca i16, align 2
  %nr_channels = alloca i16, align 2
  %cmp = alloca i16, align 2
  %pcol = alloca i16, align 2
  %k = alloca i32, align 4
  %top_k = alloca i32, align 4
  store %struct.opj_image* %image, %struct.opj_image** %image.addr, align 8, !tbaa !1
  store %struct.opj_jp2_color* %color, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_image_comp** %old_comps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.opj_image_comp** %new_comps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i8** %channel_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i8** %channel_sign to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32** %entries to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct.opj_jp2_cmap_comp** %cmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32** %dst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i16* %i to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #2
  %11 = bitcast i16* %nr_channels to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #2
  %12 = bitcast i16* %cmp to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #2
  %13 = bitcast i16* %pcol to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #2
  %14 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %top_k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %16, i32 0, i32 3
  %17 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !59
  %channel_size1 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %17, i32 0, i32 2
  %18 = load i8*, i8** %channel_size1, align 8, !tbaa !33
  store i8* %18, i8** %channel_size, align 8, !tbaa !1
  %19 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr2 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %19, i32 0, i32 3
  %20 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr2, align 8, !tbaa !59
  %channel_sign3 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %20, i32 0, i32 1
  %21 = load i8*, i8** %channel_sign3, align 8, !tbaa !31
  store i8* %21, i8** %channel_sign, align 8, !tbaa !1
  %22 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr4 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %22, i32 0, i32 3
  %23 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr4, align 8, !tbaa !59
  %entries5 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %23, i32 0, i32 0
  %24 = load i32*, i32** %entries5, align 8, !tbaa !34
  store i32* %24, i32** %entries, align 8, !tbaa !1
  %25 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr6 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %25, i32 0, i32 3
  %26 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr6, align 8, !tbaa !59
  %cmap7 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %26, i32 0, i32 3
  %27 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap7, align 8, !tbaa !37
  store %struct.opj_jp2_cmap_comp* %27, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !1
  %28 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr8 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %28, i32 0, i32 3
  %29 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr8, align 8, !tbaa !59
  %nr_channels9 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %29, i32 0, i32 5
  %30 = load i8, i8* %nr_channels9, align 1, !tbaa !36
  %conv = zext i8 %30 to i16
  store i16 %conv, i16* %nr_channels, align 2, !tbaa !29
  %31 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %31, i32 0, i32 6
  %32 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps, align 8, !tbaa !60
  store %struct.opj_image_comp* %32, %struct.opj_image_comp** %old_comps, align 8, !tbaa !1
  %33 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv10 = zext i16 %33 to i64
  %mul = mul i64 %conv10, 64
  %cmp11 = icmp uge i64 %mul, -256
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %34 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv13 = zext i16 %34 to i64
  %mul14 = mul i64 %conv13, 64
  %call = call noalias i8* @malloc(i64 %mul14) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  %35 = bitcast i8* %cond to %struct.opj_image_comp*
  store %struct.opj_image_comp* %35, %struct.opj_image_comp** %new_comps, align 8, !tbaa !1
  store i16 0, i16* %i, align 2, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %36 = load i16, i16* %i, align 2, !tbaa !29
  %conv15 = zext i16 %36 to i32
  %37 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv16 = zext i16 %37 to i32
  %cmp17 = icmp slt i32 %conv15, %conv16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom = zext i16 %38 to i64
  %39 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %39, i64 %idxprom
  %pcol19 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %arrayidx, i32 0, i32 2
  %40 = load i8, i8* %pcol19, align 1, !tbaa !41
  %conv20 = zext i8 %40 to i16
  store i16 %conv20, i16* %pcol, align 2, !tbaa !29
  %41 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom21 = zext i16 %41 to i64
  %42 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %42, i64 %idxprom21
  %cmp23 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %arrayidx22, i32 0, i32 0
  %43 = load i16, i16* %cmp23, align 2, !tbaa !38
  store i16 %43, i16* %cmp, align 2, !tbaa !29
  %44 = load i16, i16* %pcol, align 2, !tbaa !29
  %idxprom24 = zext i16 %44 to i64
  %45 = load %struct.opj_image_comp*, %struct.opj_image_comp** %new_comps, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %45, i64 %idxprom24
  %46 = load i16, i16* %cmp, align 2, !tbaa !29
  %idxprom26 = zext i16 %46 to i64
  %47 = load %struct.opj_image_comp*, %struct.opj_image_comp** %old_comps, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %47, i64 %idxprom26
  %48 = bitcast %struct.opj_image_comp* %arrayidx25 to i8*
  %49 = bitcast %struct.opj_image_comp* %arrayidx27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 64, i32 8, i1 false), !tbaa.struct !63
  %50 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom28 = zext i16 %50 to i64
  %51 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %51, i64 %idxprom28
  %mtyp = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %arrayidx29, i32 0, i32 1
  %52 = load i8, i8* %mtyp, align 1, !tbaa !40
  %conv30 = zext i8 %52 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %53 = load i16, i16* %cmp, align 2, !tbaa !29
  %idxprom33 = zext i16 %53 to i64
  %54 = load %struct.opj_image_comp*, %struct.opj_image_comp** %old_comps, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %54, i64 %idxprom33
  %data = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx34, i32 0, i32 11
  store i32* null, i32** %data, align 8, !tbaa !64
  br label %for.inc

if.end:                                           ; preds = %for.body
  %55 = load i16, i16* %cmp, align 2, !tbaa !29
  %idxprom35 = zext i16 %55 to i64
  %56 = load %struct.opj_image_comp*, %struct.opj_image_comp** %old_comps, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %56, i64 %idxprom35
  %w = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx36, i32 0, i32 2
  %57 = load i32, i32* %w, align 4, !tbaa !65
  %58 = load i16, i16* %cmp, align 2, !tbaa !29
  %idxprom37 = zext i16 %58 to i64
  %59 = load %struct.opj_image_comp*, %struct.opj_image_comp** %old_comps, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %59, i64 %idxprom37
  %h = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx38, i32 0, i32 3
  %60 = load i32, i32* %h, align 4, !tbaa !66
  %mul39 = mul i32 %57, %60
  %conv40 = zext i32 %mul39 to i64
  %mul41 = mul i64 %conv40, 4
  %cmp42 = icmp uge i64 %mul41, -256
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %if.end
  br label %cond.end.56

cond.false.45:                                    ; preds = %if.end
  %61 = load i16, i16* %cmp, align 2, !tbaa !29
  %idxprom46 = zext i16 %61 to i64
  %62 = load %struct.opj_image_comp*, %struct.opj_image_comp** %old_comps, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %62, i64 %idxprom46
  %w48 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx47, i32 0, i32 2
  %63 = load i32, i32* %w48, align 4, !tbaa !65
  %64 = load i16, i16* %cmp, align 2, !tbaa !29
  %idxprom49 = zext i16 %64 to i64
  %65 = load %struct.opj_image_comp*, %struct.opj_image_comp** %old_comps, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %65, i64 %idxprom49
  %h51 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx50, i32 0, i32 3
  %66 = load i32, i32* %h51, align 4, !tbaa !66
  %mul52 = mul i32 %63, %66
  %conv53 = zext i32 %mul52 to i64
  %mul54 = mul i64 %conv53, 4
  %call55 = call noalias i8* @malloc(i64 %mul54) #7
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.45, %cond.true.44
  %cond57 = phi i8* [ null, %cond.true.44 ], [ %call55, %cond.false.45 ]
  %67 = bitcast i8* %cond57 to i32*
  %68 = load i16, i16* %pcol, align 2, !tbaa !29
  %idxprom58 = zext i16 %68 to i64
  %69 = load %struct.opj_image_comp*, %struct.opj_image_comp** %new_comps, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %69, i64 %idxprom58
  %data60 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx59, i32 0, i32 11
  store i32* %67, i32** %data60, align 8, !tbaa !64
  %70 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom61 = zext i16 %70 to i64
  %71 = load i8*, i8** %channel_size, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %71, i64 %idxprom61
  %72 = load i8, i8* %arrayidx62, align 1, !tbaa !26
  %conv63 = zext i8 %72 to i32
  %73 = load i16, i16* %pcol, align 2, !tbaa !29
  %idxprom64 = zext i16 %73 to i64
  %74 = load %struct.opj_image_comp*, %struct.opj_image_comp** %new_comps, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %74, i64 %idxprom64
  %prec = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx65, i32 0, i32 6
  store i32 %conv63, i32* %prec, align 4, !tbaa !67
  %75 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom66 = zext i16 %75 to i64
  %76 = load i8*, i8** %channel_sign, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %76, i64 %idxprom66
  %77 = load i8, i8* %arrayidx67, align 1, !tbaa !26
  %conv68 = zext i8 %77 to i32
  %78 = load i16, i16* %pcol, align 2, !tbaa !29
  %idxprom69 = zext i16 %78 to i64
  %79 = load %struct.opj_image_comp*, %struct.opj_image_comp** %new_comps, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %79, i64 %idxprom69
  %sgnd = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx70, i32 0, i32 8
  store i32 %conv68, i32* %sgnd, align 4, !tbaa !68
  br label %for.inc

for.inc:                                          ; preds = %cond.end.56, %if.then
  %80 = load i16, i16* %i, align 2, !tbaa !29
  %inc = add i16 %80, 1
  store i16 %inc, i16* %i, align 2, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %81 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  %jp2_pclr71 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %81, i32 0, i32 3
  %82 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr71, align 8, !tbaa !59
  %nr_entries = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %82, i32 0, i32 4
  %83 = load i16, i16* %nr_entries, align 2, !tbaa !35
  %conv72 = zext i16 %83 to i32
  %sub = sub nsw i32 %conv72, 1
  store i32 %sub, i32* %top_k, align 4, !tbaa !5
  store i16 0, i16* %i, align 2, !tbaa !29
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.131, %for.end
  %84 = load i16, i16* %i, align 2, !tbaa !29
  %conv74 = zext i16 %84 to i32
  %85 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv75 = zext i16 %85 to i32
  %cmp76 = icmp slt i32 %conv74, %conv75
  br i1 %cmp76, label %for.body.78, label %for.end.133

for.body.78:                                      ; preds = %for.cond.73
  %86 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom79 = zext i16 %86 to i64
  %87 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %87, i64 %idxprom79
  %mtyp81 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %arrayidx80, i32 0, i32 1
  %88 = load i8, i8* %mtyp81, align 1, !tbaa !40
  %conv82 = zext i8 %88 to i32
  %cmp83 = icmp eq i32 %conv82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %for.body.78
  br label %for.inc.131

if.end.86:                                        ; preds = %for.body.78
  %89 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom87 = zext i16 %89 to i64
  %90 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %90, i64 %idxprom87
  %cmp89 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %arrayidx88, i32 0, i32 0
  %91 = load i16, i16* %cmp89, align 2, !tbaa !38
  store i16 %91, i16* %cmp, align 2, !tbaa !29
  %92 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom90 = zext i16 %92 to i64
  %93 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %93, i64 %idxprom90
  %pcol92 = getelementptr inbounds %struct.opj_jp2_cmap_comp, %struct.opj_jp2_cmap_comp* %arrayidx91, i32 0, i32 2
  %94 = load i8, i8* %pcol92, align 1, !tbaa !41
  %conv93 = zext i8 %94 to i16
  store i16 %conv93, i16* %pcol, align 2, !tbaa !29
  %95 = load i16, i16* %cmp, align 2, !tbaa !29
  %idxprom94 = zext i16 %95 to i64
  %96 = load %struct.opj_image_comp*, %struct.opj_image_comp** %old_comps, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %96, i64 %idxprom94
  %data96 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx95, i32 0, i32 11
  %97 = load i32*, i32** %data96, align 8, !tbaa !64
  store i32* %97, i32** %src, align 8, !tbaa !1
  %98 = load i16, i16* %pcol, align 2, !tbaa !29
  %idxprom97 = zext i16 %98 to i64
  %99 = load %struct.opj_image_comp*, %struct.opj_image_comp** %new_comps, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %99, i64 %idxprom97
  %data99 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx98, i32 0, i32 11
  %100 = load i32*, i32** %data99, align 8, !tbaa !64
  store i32* %100, i32** %dst, align 8, !tbaa !1
  %101 = load i16, i16* %pcol, align 2, !tbaa !29
  %idxprom100 = zext i16 %101 to i64
  %102 = load %struct.opj_image_comp*, %struct.opj_image_comp** %new_comps, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %102, i64 %idxprom100
  %w102 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx101, i32 0, i32 2
  %103 = load i32, i32* %w102, align 4, !tbaa !65
  %104 = load i16, i16* %pcol, align 2, !tbaa !29
  %idxprom103 = zext i16 %104 to i64
  %105 = load %struct.opj_image_comp*, %struct.opj_image_comp** %new_comps, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %105, i64 %idxprom103
  %h105 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx104, i32 0, i32 3
  %106 = load i32, i32* %h105, align 4, !tbaa !66
  %mul106 = mul i32 %103, %106
  store i32 %mul106, i32* %max, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.128, %if.end.86
  %107 = load i32, i32* %j, align 4, !tbaa !5
  %108 = load i32, i32* %max, align 4, !tbaa !5
  %cmp108 = icmp ult i32 %107, %108
  br i1 %cmp108, label %for.body.110, label %for.end.130

for.body.110:                                     ; preds = %for.cond.107
  %109 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom111 = zext i32 %109 to i64
  %110 = load i32*, i32** %src, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i32, i32* %110, i64 %idxprom111
  %111 = load i32, i32* %arrayidx112, align 4, !tbaa !5
  store i32 %111, i32* %k, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %111, 0
  br i1 %cmp113, label %if.then.115, label %if.else

if.then.115:                                      ; preds = %for.body.110
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %if.end.120

if.else:                                          ; preds = %for.body.110
  %112 = load i32, i32* %k, align 4, !tbaa !5
  %113 = load i32, i32* %top_k, align 4, !tbaa !5
  %cmp116 = icmp sgt i32 %112, %113
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.else
  %114 = load i32, i32* %top_k, align 4, !tbaa !5
  store i32 %114, i32* %k, align 4, !tbaa !5
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.else
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.115
  %115 = load i32, i32* %k, align 4, !tbaa !5
  %116 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv121 = zext i16 %116 to i32
  %mul122 = mul nsw i32 %115, %conv121
  %117 = load i16, i16* %pcol, align 2, !tbaa !29
  %conv123 = zext i16 %117 to i32
  %add = add nsw i32 %mul122, %conv123
  %idxprom124 = sext i32 %add to i64
  %118 = load i32*, i32** %entries, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i32, i32* %118, i64 %idxprom124
  %119 = load i32, i32* %arrayidx125, align 4, !tbaa !5
  %120 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom126 = zext i32 %120 to i64
  %121 = load i32*, i32** %dst, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i32, i32* %121, i64 %idxprom126
  store i32 %119, i32* %arrayidx127, align 4, !tbaa !5
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.120
  %122 = load i32, i32* %j, align 4, !tbaa !5
  %inc129 = add i32 %122, 1
  store i32 %inc129, i32* %j, align 4, !tbaa !5
  br label %for.cond.107

for.end.130:                                      ; preds = %for.cond.107
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.130, %if.then.85
  %123 = load i16, i16* %i, align 2, !tbaa !29
  %inc132 = add i16 %123, 1
  store i16 %inc132, i16* %i, align 2, !tbaa !29
  br label %for.cond.73

for.end.133:                                      ; preds = %for.cond.73
  %124 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %124, i32 0, i32 4
  %125 = load i32, i32* %numcomps, align 4, !tbaa !58
  store i32 %125, i32* %max, align 4, !tbaa !5
  store i16 0, i16* %i, align 2, !tbaa !29
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.147, %for.end.133
  %126 = load i16, i16* %i, align 2, !tbaa !29
  %conv135 = zext i16 %126 to i32
  %127 = load i32, i32* %max, align 4, !tbaa !5
  %cmp136 = icmp ult i32 %conv135, %127
  br i1 %cmp136, label %for.body.138, label %for.end.149

for.body.138:                                     ; preds = %for.cond.134
  %128 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom139 = zext i16 %128 to i64
  %129 = load %struct.opj_image_comp*, %struct.opj_image_comp** %old_comps, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %129, i64 %idxprom139
  %data141 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx140, i32 0, i32 11
  %130 = load i32*, i32** %data141, align 8, !tbaa !64
  %tobool = icmp ne i32* %130, null
  br i1 %tobool, label %if.then.142, label %if.end.146

if.then.142:                                      ; preds = %for.body.138
  %131 = load i16, i16* %i, align 2, !tbaa !29
  %idxprom143 = zext i16 %131 to i64
  %132 = load %struct.opj_image_comp*, %struct.opj_image_comp** %old_comps, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %132, i64 %idxprom143
  %data145 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx144, i32 0, i32 11
  %133 = load i32*, i32** %data145, align 8, !tbaa !64
  %134 = bitcast i32* %133 to i8*
  call void @free(i8* %134) #7
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.142, %for.body.138
  br label %for.inc.147

for.inc.147:                                      ; preds = %if.end.146
  %135 = load i16, i16* %i, align 2, !tbaa !29
  %inc148 = add i16 %135, 1
  store i16 %inc148, i16* %i, align 2, !tbaa !29
  br label %for.cond.134

for.end.149:                                      ; preds = %for.cond.134
  %136 = load %struct.opj_image_comp*, %struct.opj_image_comp** %old_comps, align 8, !tbaa !1
  %137 = bitcast %struct.opj_image_comp* %136 to i8*
  call void @free(i8* %137) #7
  %138 = load %struct.opj_image_comp*, %struct.opj_image_comp** %new_comps, align 8, !tbaa !1
  %139 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps150 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %139, i32 0, i32 6
  store %struct.opj_image_comp* %138, %struct.opj_image_comp** %comps150, align 8, !tbaa !60
  %140 = load i16, i16* %nr_channels, align 2, !tbaa !29
  %conv151 = zext i16 %140 to i32
  %141 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps152 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %141, i32 0, i32 4
  store i32 %conv151, i32* %numcomps152, align 4, !tbaa !58
  %142 = load %struct.opj_jp2_color*, %struct.opj_jp2_color** %color.addr, align 8, !tbaa !1
  call void @opj_jp2_free_pclr(%struct.opj_jp2_color* %142) #6
  %143 = bitcast i32* %top_k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast i16* %pcol to i8*
  call void @llvm.lifetime.end(i64 2, i8* %145) #2
  %146 = bitcast i16* %cmp to i8*
  call void @llvm.lifetime.end(i64 2, i8* %146) #2
  %147 = bitcast i16* %nr_channels to i8*
  call void @llvm.lifetime.end(i64 2, i8* %147) #2
  %148 = bitcast i16* %i to i8*
  call void @llvm.lifetime.end(i64 2, i8* %148) #2
  %149 = bitcast i32* %max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #2
  %150 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #2
  %151 = bitcast i32** %dst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #2
  %152 = bitcast i32** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #2
  %153 = bitcast %struct.opj_jp2_cmap_comp** %cmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #2
  %154 = bitcast i32** %entries to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #2
  %155 = bitcast i8** %channel_sign to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #2
  %156 = bitcast i8** %channel_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #2
  %157 = bitcast %struct.opj_image_comp** %new_comps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #2
  %158 = bitcast %struct.opj_image_comp** %old_comps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_write_jp2h(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %stream, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_writers = alloca [3 x %struct.opj_jp2_img_header_writer_handler], align 16
  %l_current_writer = alloca %struct.opj_jp2_img_header_writer_handler*, align 8
  %i = alloca i32, align 4
  %l_nb_pass = alloca i32, align 4
  %l_jp2h_size = alloca i32, align 4
  %l_result = alloca i32, align 4
  %l_jp2h_data = alloca [8 x i8], align 1
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %stream, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast [3 x %struct.opj_jp2_img_header_writer_handler]* %l_writers to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #2
  %1 = bitcast %struct.opj_jp2_img_header_writer_handler** %l_current_writer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %l_nb_pass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %l_jp2h_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 8, i32* %l_jp2h_size, align 4, !tbaa !5
  %5 = bitcast i32* %l_result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 1, i32* %l_result, align 4, !tbaa !5
  %6 = bitcast [8 x i8]* %l_jp2h_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_stream_private* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1322, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_jp2h, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_jp2* %9, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1323, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_jp2h, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %10, %cond.true.2
  %11 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %11, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1324, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_jp2h, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %12, %cond.true.6
  %arraydecay = getelementptr inbounds [3 x %struct.opj_jp2_img_header_writer_handler], [3 x %struct.opj_jp2_img_header_writer_handler]* %l_writers, i32 0, i32 0
  %13 = bitcast %struct.opj_jp2_img_header_writer_handler* %arraydecay to i8*
  %call = call i8* @memset(i8* %13, i32 0, i64 72) #7
  %14 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %bpc = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %14, i32 0, i32 6
  %15 = load i32, i32* %bpc, align 4, !tbaa !27
  %cmp9 = icmp eq i32 %15, 255
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.8
  store i32 3, i32* %l_nb_pass, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [3 x %struct.opj_jp2_img_header_writer_handler], [3 x %struct.opj_jp2_img_header_writer_handler]* %l_writers, i32 0, i64 0
  %handler = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %arrayidx, i32 0, i32 0
  store i8* (%struct.opj_jp2*, i32*)* @opj_jp2_write_ihdr, i8* (%struct.opj_jp2*, i32*)** %handler, align 8, !tbaa !69
  %arrayidx10 = getelementptr inbounds [3 x %struct.opj_jp2_img_header_writer_handler], [3 x %struct.opj_jp2_img_header_writer_handler]* %l_writers, i32 0, i64 1
  %handler11 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %arrayidx10, i32 0, i32 0
  store i8* (%struct.opj_jp2*, i32*)* @opj_jp2_write_bpcc, i8* (%struct.opj_jp2*, i32*)** %handler11, align 8, !tbaa !69
  %arrayidx12 = getelementptr inbounds [3 x %struct.opj_jp2_img_header_writer_handler], [3 x %struct.opj_jp2_img_header_writer_handler]* %l_writers, i32 0, i64 2
  %handler13 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %arrayidx12, i32 0, i32 0
  store i8* (%struct.opj_jp2*, i32*)* @opj_jp2_write_colr, i8* (%struct.opj_jp2*, i32*)** %handler13, align 8, !tbaa !69
  br label %if.end

if.else:                                          ; preds = %cond.end.8
  store i32 2, i32* %l_nb_pass, align 4, !tbaa !5
  %arrayidx14 = getelementptr inbounds [3 x %struct.opj_jp2_img_header_writer_handler], [3 x %struct.opj_jp2_img_header_writer_handler]* %l_writers, i32 0, i64 0
  %handler15 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %arrayidx14, i32 0, i32 0
  store i8* (%struct.opj_jp2*, i32*)* @opj_jp2_write_ihdr, i8* (%struct.opj_jp2*, i32*)** %handler15, align 8, !tbaa !69
  %arrayidx16 = getelementptr inbounds [3 x %struct.opj_jp2_img_header_writer_handler], [3 x %struct.opj_jp2_img_header_writer_handler]* %l_writers, i32 0, i64 1
  %handler17 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %arrayidx16, i32 0, i32 0
  store i8* (%struct.opj_jp2*, i32*)* @opj_jp2_write_colr, i8* (%struct.opj_jp2*, i32*)** %handler17, align 8, !tbaa !69
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay18 = getelementptr inbounds [8 x i8], [8 x i8]* %l_jp2h_data, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay18, i64 4
  call void @opj_write_bytes_LE(i8* %add.ptr, i32 1785737832, i32 4) #6
  %arraydecay19 = getelementptr inbounds [3 x %struct.opj_jp2_img_header_writer_handler], [3 x %struct.opj_jp2_img_header_writer_handler]* %l_writers, i32 0, i32 0
  store %struct.opj_jp2_img_header_writer_handler* %arraydecay19, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %17 = load i32, i32* %l_nb_pass, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %16, %17
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %handler21 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %18, i32 0, i32 0
  %19 = load i8* (%struct.opj_jp2*, i32*)*, i8* (%struct.opj_jp2*, i32*)** %handler21, align 8, !tbaa !69
  %20 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %21 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %m_size = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %21, i32 0, i32 2
  %call22 = call i8* %19(%struct.opj_jp2* %20, i32* %m_size) #6
  %22 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %m_data = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %22, i32 0, i32 1
  store i8* %call22, i8** %m_data, align 8, !tbaa !71
  %23 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %m_data23 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %23, i32 0, i32 1
  %24 = load i8*, i8** %m_data23, align 8, !tbaa !71
  %cmp24 = icmp eq i8* %24, null
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %for.body
  %25 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call26 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %25, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0)) #6
  store i32 0, i32* %l_result, align 4, !tbaa !5
  br label %for.end

if.end.27:                                        ; preds = %for.body
  %26 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %m_size28 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %26, i32 0, i32 2
  %27 = load i32, i32* %m_size28, align 4, !tbaa !72
  %28 = load i32, i32* %l_jp2h_size, align 4, !tbaa !5
  %add = add i32 %28, %27
  store i32 %add, i32* %l_jp2h_size, align 4, !tbaa !5
  %29 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %29, i32 1
  store %struct.opj_jp2_img_header_writer_handler* %incdec.ptr, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.25, %for.cond
  %31 = load i32, i32* %l_result, align 4, !tbaa !5
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.end.43, label %if.then.29

if.then.29:                                       ; preds = %for.end
  %arraydecay30 = getelementptr inbounds [3 x %struct.opj_jp2_img_header_writer_handler], [3 x %struct.opj_jp2_img_header_writer_handler]* %l_writers, i32 0, i32 0
  store %struct.opj_jp2_img_header_writer_handler* %arraydecay30, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.40, %if.then.29
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %33 = load i32, i32* %l_nb_pass, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %32, %33
  br i1 %cmp32, label %for.body.33, label %for.end.42

for.body.33:                                      ; preds = %for.cond.31
  %34 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %m_data34 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %34, i32 0, i32 1
  %35 = load i8*, i8** %m_data34, align 8, !tbaa !71
  %cmp35 = icmp ne i8* %35, null
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %for.body.33
  %36 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %m_data37 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %36, i32 0, i32 1
  %37 = load i8*, i8** %m_data37, align 8, !tbaa !71
  call void @free(i8* %37) #7
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %for.body.33
  %38 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %38, i32 1
  store %struct.opj_jp2_img_header_writer_handler* %incdec.ptr39, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.38
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %inc41 = add nsw i32 %39, 1
  store i32 %inc41, i32* %i, align 4, !tbaa !5
  br label %for.cond.31

for.end.42:                                       ; preds = %for.cond.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %for.end
  %arraydecay44 = getelementptr inbounds [8 x i8], [8 x i8]* %l_jp2h_data, i32 0, i32 0
  %40 = load i32, i32* %l_jp2h_size, align 4, !tbaa !5
  call void @opj_write_bytes_LE(i8* %arraydecay44, i32 %40, i32 4) #6
  %41 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %arraydecay45 = getelementptr inbounds [8 x i8], [8 x i8]* %l_jp2h_data, i32 0, i32 0
  %42 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call46 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %41, i8* %arraydecay45, i64 8, %struct.opj_event_mgr* %42) #6
  %cmp47 = icmp ne i64 %call46, 8
  br i1 %cmp47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.43
  %43 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call49 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %43, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0)) #6
  store i32 0, i32* %l_result, align 4, !tbaa !5
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.43
  %44 = load i32, i32* %l_result, align 4, !tbaa !5
  %tobool51 = icmp ne i32 %44, 0
  br i1 %tobool51, label %if.then.52, label %if.end.71

if.then.52:                                       ; preds = %if.end.50
  %arraydecay53 = getelementptr inbounds [3 x %struct.opj_jp2_img_header_writer_handler], [3 x %struct.opj_jp2_img_header_writer_handler]* %l_writers, i32 0, i32 0
  store %struct.opj_jp2_img_header_writer_handler* %arraydecay53, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.68, %if.then.52
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %46 = load i32, i32* %l_nb_pass, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %45, %46
  br i1 %cmp55, label %for.body.56, label %for.end.70

for.body.56:                                      ; preds = %for.cond.54
  %47 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %48 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %m_data57 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %48, i32 0, i32 1
  %49 = load i8*, i8** %m_data57, align 8, !tbaa !71
  %50 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %m_size58 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %50, i32 0, i32 2
  %51 = load i32, i32* %m_size58, align 4, !tbaa !72
  %conv = zext i32 %51 to i64
  %52 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call59 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %47, i8* %49, i64 %conv, %struct.opj_event_mgr* %52) #6
  %53 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %m_size60 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %53, i32 0, i32 2
  %54 = load i32, i32* %m_size60, align 4, !tbaa !72
  %conv61 = zext i32 %54 to i64
  %cmp62 = icmp ne i64 %call59, %conv61
  br i1 %cmp62, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %for.body.56
  %55 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call65 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %55, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0)) #6
  store i32 0, i32* %l_result, align 4, !tbaa !5
  br label %for.end.70

if.end.66:                                        ; preds = %for.body.56
  %56 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %incdec.ptr67 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %56, i32 1
  store %struct.opj_jp2_img_header_writer_handler* %incdec.ptr67, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.66
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %inc69 = add nsw i32 %57, 1
  store i32 %inc69, i32* %i, align 4, !tbaa !5
  br label %for.cond.54

for.end.70:                                       ; preds = %if.then.64, %for.cond.54
  br label %if.end.71

if.end.71:                                        ; preds = %for.end.70, %if.end.50
  %arraydecay72 = getelementptr inbounds [3 x %struct.opj_jp2_img_header_writer_handler], [3 x %struct.opj_jp2_img_header_writer_handler]* %l_writers, i32 0, i32 0
  store %struct.opj_jp2_img_header_writer_handler* %arraydecay72, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.84, %if.end.71
  %58 = load i32, i32* %i, align 4, !tbaa !5
  %59 = load i32, i32* %l_nb_pass, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %58, %59
  br i1 %cmp74, label %for.body.76, label %for.end.86

for.body.76:                                      ; preds = %for.cond.73
  %60 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %m_data77 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %60, i32 0, i32 1
  %61 = load i8*, i8** %m_data77, align 8, !tbaa !71
  %cmp78 = icmp ne i8* %61, null
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %for.body.76
  %62 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %m_data81 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %62, i32 0, i32 1
  %63 = load i8*, i8** %m_data81, align 8, !tbaa !71
  call void @free(i8* %63) #7
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %for.body.76
  %64 = load %struct.opj_jp2_img_header_writer_handler*, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  %incdec.ptr83 = getelementptr inbounds %struct.opj_jp2_img_header_writer_handler, %struct.opj_jp2_img_header_writer_handler* %64, i32 1
  store %struct.opj_jp2_img_header_writer_handler* %incdec.ptr83, %struct.opj_jp2_img_header_writer_handler** %l_current_writer, align 8, !tbaa !1
  br label %for.inc.84

for.inc.84:                                       ; preds = %if.end.82
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %inc85 = add nsw i32 %65, 1
  store i32 %inc85, i32* %i, align 4, !tbaa !5
  br label %for.cond.73

for.end.86:                                       ; preds = %for.cond.73
  %66 = load i32, i32* %l_result, align 4, !tbaa !5
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.86, %for.end.42
  %67 = bitcast [8 x i8]* %l_jp2h_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = bitcast i32* %l_result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = bitcast i32* %l_jp2h_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #2
  %70 = bitcast i32* %l_nb_pass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast %struct.opj_jp2_img_header_writer_handler** %l_current_writer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast [3 x %struct.opj_jp2_img_header_writer_handler]* %l_writers to i8*
  call void @llvm.lifetime.end(i64 72, i8* %73) #2
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal i8* @opj_jp2_write_ihdr(%struct.opj_jp2* %jp2, i32* %p_nb_bytes_written) #0 {
entry:
  %retval = alloca i8*, align 8
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_nb_bytes_written.addr = alloca i32*, align 8
  %l_ihdr_data = alloca i8*, align 8
  %l_current_ihdr_ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store i32* %p_nb_bytes_written, i32** %p_nb_bytes_written.addr, align 8, !tbaa !1
  %0 = bitcast i8** %l_ihdr_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %l_current_ihdr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 565, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_ihdr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i32*, i32** %p_nb_bytes_written.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i32* %4, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 566, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_ihdr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %5, %cond.true.2
  %call = call noalias i8* @malloc(i64 22) #7
  store i8* %call, i8** %l_ihdr_data, align 8, !tbaa !1
  %6 = load i8*, i8** %l_ihdr_data, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %6, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.4
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.4
  %7 = load i8*, i8** %l_ihdr_data, align 8, !tbaa !1
  %call6 = call i8* @memset(i8* %7, i32 0, i64 22) #7
  %8 = load i8*, i8** %l_ihdr_data, align 8, !tbaa !1
  store i8* %8, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %9 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  call void @opj_write_bytes_LE(i8* %9, i32 22, i32 4) #6
  %10 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 4
  store i8* %add.ptr, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %11 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  call void @opj_write_bytes_LE(i8* %11, i32 1768449138, i32 4) #6
  %12 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds i8, i8* %12, i64 4
  store i8* %add.ptr7, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %13 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %14 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %14, i32 0, i32 4
  %15 = load i32, i32* %h, align 4, !tbaa !73
  call void @opj_write_bytes_LE(i8* %13, i32 %15, i32 4) #6
  %16 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %add.ptr8, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %17 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %18 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %18, i32 0, i32 3
  %19 = load i32, i32* %w, align 4, !tbaa !74
  call void @opj_write_bytes_LE(i8* %17, i32 %19, i32 4) #6
  %20 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds i8, i8* %20, i64 4
  store i8* %add.ptr9, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %21 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %22 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %22, i32 0, i32 5
  %23 = load i32, i32* %numcomps, align 4, !tbaa !19
  call void @opj_write_bytes_LE(i8* %21, i32 %23, i32 2) #6
  %24 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %add.ptr10 = getelementptr inbounds i8, i8* %24, i64 2
  store i8* %add.ptr10, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %25 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %26 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %bpc = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %26, i32 0, i32 6
  %27 = load i32, i32* %bpc, align 4, !tbaa !27
  call void @opj_write_bytes_LE(i8* %25, i32 %27, i32 1) #6
  %28 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %29 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %30 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %C = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %30, i32 0, i32 7
  %31 = load i32, i32* %C, align 4, !tbaa !21
  call void @opj_write_bytes_LE(i8* %29, i32 %31, i32 1) #6
  %32 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr11, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %33 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %34 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %UnkC = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %34, i32 0, i32 8
  %35 = load i32, i32* %UnkC, align 4, !tbaa !75
  call void @opj_write_bytes_LE(i8* %33, i32 %35, i32 1) #6
  %36 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr12, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %37 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %38 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %IPR = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %38, i32 0, i32 9
  %39 = load i32, i32* %IPR, align 4, !tbaa !76
  call void @opj_write_bytes_LE(i8* %37, i32 %39, i32 1) #6
  %40 = load i8*, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr13, i8** %l_current_ihdr_ptr, align 8, !tbaa !1
  %41 = load i32*, i32** %p_nb_bytes_written.addr, align 8, !tbaa !1
  store i32 22, i32* %41, align 4, !tbaa !5
  %42 = load i8*, i8** %l_ihdr_data, align 8, !tbaa !1
  store i8* %42, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %43 = bitcast i8** %l_current_ihdr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = bitcast i8** %l_ihdr_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = load i8*, i8** %retval
  ret i8* %45
}

; Function Attrs: nounwind uwtable
define internal i8* @opj_jp2_write_bpcc(%struct.opj_jp2* %jp2, i32* %p_nb_bytes_written) #0 {
entry:
  %retval = alloca i8*, align 8
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_nb_bytes_written.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %l_bpcc_size = alloca i32, align 4
  %l_bpcc_data = alloca i8*, align 8
  %l_current_bpcc_ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store i32* %p_nb_bytes_written, i32** %p_nb_bytes_written.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %l_bpcc_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %2, i32 0, i32 5
  %3 = load i32, i32* %numcomps, align 4, !tbaa !19
  %add = add i32 8, %3
  store i32 %add, i32* %l_bpcc_size, align 4, !tbaa !5
  %4 = bitcast i8** %l_bpcc_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i8** %l_current_bpcc_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 619, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_bpcc, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %7, %cond.true
  %8 = load i32*, i32** %p_nb_bytes_written.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i32* %8, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 620, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_bpcc, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %9, %cond.true.2
  %10 = load i32, i32* %l_bpcc_size, align 4, !tbaa !5
  %conv = sext i32 %10 to i64
  %cmp5 = icmp uge i64 %conv, -256
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end.4
  br label %cond.end.10

cond.false.8:                                     ; preds = %cond.end.4
  %11 = load i32, i32* %l_bpcc_size, align 4, !tbaa !5
  %conv9 = sext i32 %11 to i64
  %call = call noalias i8* @malloc(i64 %conv9) #7
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.7
  %cond = phi i8* [ null, %cond.true.7 ], [ %call, %cond.false.8 ]
  store i8* %cond, i8** %l_bpcc_data, align 8, !tbaa !1
  %12 = load i8*, i8** %l_bpcc_data, align 8, !tbaa !1
  %cmp11 = icmp eq i8* %12, null
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.10
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.10
  %13 = load i8*, i8** %l_bpcc_data, align 8, !tbaa !1
  %14 = load i32, i32* %l_bpcc_size, align 4, !tbaa !5
  %conv13 = sext i32 %14 to i64
  %call14 = call i8* @memset(i8* %13, i32 0, i64 %conv13) #7
  %15 = load i8*, i8** %l_bpcc_data, align 8, !tbaa !1
  store i8* %15, i8** %l_current_bpcc_ptr, align 8, !tbaa !1
  %16 = load i8*, i8** %l_current_bpcc_ptr, align 8, !tbaa !1
  %17 = load i32, i32* %l_bpcc_size, align 4, !tbaa !5
  call void @opj_write_bytes_LE(i8* %16, i32 %17, i32 4) #6
  %18 = load i8*, i8** %l_current_bpcc_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 4
  store i8* %add.ptr, i8** %l_current_bpcc_ptr, align 8, !tbaa !1
  %19 = load i8*, i8** %l_current_bpcc_ptr, align 8, !tbaa !1
  call void @opj_write_bytes_LE(i8* %19, i32 1651532643, i32 4) #6
  %20 = load i8*, i8** %l_current_bpcc_ptr, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds i8, i8* %20, i64 4
  store i8* %add.ptr15, i8** %l_current_bpcc_ptr, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %22 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcomps16 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %22, i32 0, i32 5
  %23 = load i32, i32* %numcomps16, align 4, !tbaa !19
  %cmp17 = icmp ult i32 %21, %23
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %l_current_bpcc_ptr, align 8, !tbaa !1
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %25 to i64
  %26 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %26, i32 0, i32 18
  %27 = load %struct.opj_jp2_comps*, %struct.opj_jp2_comps** %comps, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds %struct.opj_jp2_comps, %struct.opj_jp2_comps* %27, i64 %idxprom
  %bpcc = getelementptr inbounds %struct.opj_jp2_comps, %struct.opj_jp2_comps* %arrayidx, i32 0, i32 2
  %28 = load i32, i32* %bpcc, align 4, !tbaa !77
  call void @opj_write_bytes_LE(i8* %24, i32 %28, i32 1) #6
  %29 = load i8*, i8** %l_current_bpcc_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %l_current_bpcc_ptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %l_bpcc_size, align 4, !tbaa !5
  %32 = load i32*, i32** %p_nb_bytes_written.addr, align 8, !tbaa !1
  store i32 %31, i32* %32, align 4, !tbaa !5
  %33 = load i8*, i8** %l_bpcc_data, align 8, !tbaa !1
  store i8* %33, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %34 = bitcast i8** %l_current_bpcc_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = bitcast i8** %l_bpcc_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = bitcast i32* %l_bpcc_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = load i8*, i8** %retval
  ret i8* %38
}

; Function Attrs: nounwind uwtable
define internal i8* @opj_jp2_write_colr(%struct.opj_jp2* %jp2, i32* %p_nb_bytes_written) #0 {
entry:
  %retval = alloca i8*, align 8
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_nb_bytes_written.addr = alloca i32*, align 8
  %l_colr_size = alloca i32, align 4
  %l_colr_data = alloca i8*, align 8
  %l_current_colr_ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store i32* %p_nb_bytes_written, i32** %p_nb_bytes_written.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l_colr_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 11, i32* %l_colr_size, align 4, !tbaa !5
  %1 = bitcast i8** %l_colr_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i8** %l_current_colr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 688, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_colr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i32*, i32** %p_nb_bytes_written.addr, align 8, !tbaa !1
  %cmp1 = icmp ne i32* %5, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 689, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_colr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %6, %cond.true.2
  %7 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %7, i32 0, i32 10
  %8 = load i32, i32* %meth, align 4, !tbaa !23
  %cmp5 = icmp eq i32 %8, 1
  br i1 %cmp5, label %cond.true.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.4
  %9 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth6 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %9, i32 0, i32 10
  %10 = load i32, i32* %meth6, align 4, !tbaa !23
  %cmp7 = icmp eq i32 %10, 2
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %lor.lhs.false, %cond.end.4
  br label %cond.end.10

cond.false.9:                                     ; preds = %lor.lhs.false
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 690, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_colr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.10

cond.end.10:                                      ; preds = %11, %cond.true.8
  %12 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth11 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %12, i32 0, i32 10
  %13 = load i32, i32* %meth11, align 4, !tbaa !23
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %cond.end.10
  %14 = load i32, i32* %l_colr_size, align 4, !tbaa !5
  %add = add i32 %14, 4
  store i32 %add, i32* %l_colr_size, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.12:                                         ; preds = %cond.end.10
  %15 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %15, i32 0, i32 24
  %icc_profile_len = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color, i32 0, i32 1
  %16 = load i32, i32* %icc_profile_len, align 4, !tbaa !24
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %sw.bb.12
  br label %cond.end.15

cond.false.14:                                    ; preds = %sw.bb.12
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 697, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_colr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.15

cond.end.15:                                      ; preds = %17, %cond.true.13
  %18 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color16 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %18, i32 0, i32 24
  %icc_profile_len17 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color16, i32 0, i32 1
  %19 = load i32, i32* %icc_profile_len17, align 4, !tbaa !24
  %20 = load i32, i32* %l_colr_size, align 4, !tbaa !5
  %add18 = add i32 %20, %19
  store i32 %add18, i32* %l_colr_size, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.10
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %cond.end.15, %sw.bb
  %21 = load i32, i32* %l_colr_size, align 4, !tbaa !5
  %conv = zext i32 %21 to i64
  %cmp19 = icmp uge i64 %conv, -256
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %sw.epilog
  br label %cond.end.24

cond.false.22:                                    ; preds = %sw.epilog
  %22 = load i32, i32* %l_colr_size, align 4, !tbaa !5
  %conv23 = zext i32 %22 to i64
  %call = call noalias i8* @malloc(i64 %conv23) #7
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.21
  %cond = phi i8* [ null, %cond.true.21 ], [ %call, %cond.false.22 ]
  store i8* %cond, i8** %l_colr_data, align 8, !tbaa !1
  %23 = load i8*, i8** %l_colr_data, align 8, !tbaa !1
  %cmp25 = icmp eq i8* %23, null
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.24
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.24
  %24 = load i8*, i8** %l_colr_data, align 8, !tbaa !1
  %25 = load i32, i32* %l_colr_size, align 4, !tbaa !5
  %conv27 = zext i32 %25 to i64
  %call28 = call i8* @memset(i8* %24, i32 0, i64 %conv27) #7
  %26 = load i8*, i8** %l_colr_data, align 8, !tbaa !1
  store i8* %26, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %27 = load i8*, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %28 = load i32, i32* %l_colr_size, align 4, !tbaa !5
  call void @opj_write_bytes_LE(i8* %27, i32 %28, i32 4) #6
  %29 = load i8*, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 4
  store i8* %add.ptr, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %30 = load i8*, i8** %l_current_colr_ptr, align 8, !tbaa !1
  call void @opj_write_bytes_LE(i8* %30, i32 1668246642, i32 4) #6
  %31 = load i8*, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds i8, i8* %31, i64 4
  store i8* %add.ptr29, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %32 = load i8*, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %33 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth30 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %33, i32 0, i32 10
  %34 = load i32, i32* %meth30, align 4, !tbaa !23
  call void @opj_write_bytes_LE(i8* %32, i32 %34, i32 1) #6
  %35 = load i8*, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %36 = load i8*, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %37 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %precedence = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %37, i32 0, i32 13
  %38 = load i32, i32* %precedence, align 4, !tbaa !79
  call void @opj_write_bytes_LE(i8* %36, i32 %38, i32 1) #6
  %39 = load i8*, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr31, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %40 = load i8*, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %41 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %approx = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %41, i32 0, i32 11
  %42 = load i32, i32* %approx, align 4, !tbaa !80
  call void @opj_write_bytes_LE(i8* %40, i32 %42, i32 1) #6
  %43 = load i8*, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr32, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %44 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth33 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %44, i32 0, i32 10
  %45 = load i32, i32* %meth33, align 4, !tbaa !23
  %cmp34 = icmp eq i32 %45, 1
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.end
  %46 = load i8*, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %47 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %enumcs = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %47, i32 0, i32 12
  %48 = load i32, i32* %enumcs, align 4, !tbaa !52
  call void @opj_write_bytes_LE(i8* %46, i32 %48, i32 4) #6
  br label %if.end.49

if.else:                                          ; preds = %if.end
  %49 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth37 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %49, i32 0, i32 10
  %50 = load i32, i32* %meth37, align 4, !tbaa !23
  %cmp38 = icmp eq i32 %50, 2
  br i1 %cmp38, label %if.then.40, label %if.end.48

if.then.40:                                       ; preds = %if.else
  %51 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.40
  %52 = load i32, i32* %i, align 4, !tbaa !5
  %53 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color41 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %53, i32 0, i32 24
  %icc_profile_len42 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color41, i32 0, i32 1
  %54 = load i32, i32* %icc_profile_len42, align 4, !tbaa !24
  %cmp43 = icmp ult i32 %52, %54
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i8*, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %56 to i64
  %57 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color45 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %57, i32 0, i32 24
  %icc_profile_buf = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color45, i32 0, i32 0
  %58 = load i8*, i8** %icc_profile_buf, align 8, !tbaa !25
  %arrayidx = getelementptr inbounds i8, i8* %58, i64 %idxprom
  %59 = load i8, i8* %arrayidx, align 1, !tbaa !26
  %conv46 = zext i8 %59 to i32
  call void @opj_write_bytes_LE(i8* %55, i32 %conv46, i32 1) #6
  %60 = load i8*, i8** %l_current_colr_ptr, align 8, !tbaa !1
  %incdec.ptr47 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr47, i8** %l_current_colr_ptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %61 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %61, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  br label %if.end.48

if.end.48:                                        ; preds = %for.end, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.36
  %63 = load i32, i32* %l_colr_size, align 4, !tbaa !5
  %64 = load i32*, i32** %p_nb_bytes_written.addr, align 8, !tbaa !1
  store i32 %63, i32* %64, align 4, !tbaa !5
  %65 = load i8*, i8** %l_colr_data, align 8, !tbaa !1
  store i8* %65, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.49, %if.then, %sw.default
  %66 = bitcast i8** %l_current_colr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast i8** %l_colr_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = bitcast i32* %l_colr_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #2
  %69 = load i8*, i8** %retval
  ret i8* %69
}

declare void @opj_write_bytes_LE(i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i64 @opj_stream_write_data(%struct.opj_stream_private*, i8*, i64, %struct.opj_event_mgr*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @opj_jp2_setup_decoder(%struct.opj_jp2* %jp2, %struct.opj_dparameters* %parameters) #0 {
entry:
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %parameters.addr = alloca %struct.opj_dparameters*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_dparameters* %parameters, %struct.opj_dparameters** %parameters.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %0, i32 0, i32 0
  %1 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %2 = load %struct.opj_dparameters*, %struct.opj_dparameters** %parameters.addr, align 8, !tbaa !1
  call void @opj_j2k_setup_decoder(%struct.opj_j2k* %1, %struct.opj_dparameters* %2) #6
  %3 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %3, i32 0, i32 24
  %jp2_has_colr = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color, i32 0, i32 4
  store i8 0, i8* %jp2_has_colr, align 1, !tbaa !22
  %4 = load %struct.opj_dparameters*, %struct.opj_dparameters** %parameters.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.opj_dparameters, %struct.opj_dparameters* %4, i32 0, i32 16
  %5 = load i32, i32* %flags, align 4, !tbaa !81
  %and = and i32 %5, 1
  %6 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %ignore_pclr_cmap_cdef = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %6, i32 0, i32 25
  store i32 %and, i32* %ignore_pclr_cmap_cdef, align 4, !tbaa !51
  ret void
}

declare void @opj_j2k_setup_decoder(%struct.opj_j2k*, %struct.opj_dparameters*) #1

; Function Attrs: nounwind uwtable
define void @opj_jp2_setup_encoder(%struct.opj_jp2* %jp2, %struct.opj_cparameters* %parameters, %struct.opj_image* %image, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %parameters.addr = alloca %struct.opj_cparameters*, align 8
  %image.addr = alloca %struct.opj_image*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %i = alloca i32, align 4
  %depth_0 = alloca i32, align 4
  %sign = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %depth = alloca i32, align 4
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_cparameters* %parameters, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  store %struct.opj_image* %image, %struct.opj_image** %image.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %depth_0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_jp2* %3, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.opj_cparameters* %4, null
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %tobool3 = icmp ne %struct.opj_image* %5, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.2
  %6 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %6, i32 0, i32 4
  %7 = load i32, i32* %numcomps, align 4, !tbaa !58
  %cmp = icmp ult i32 %7, 1
  br i1 %cmp, label %if.then.7, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.end
  %8 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps5 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %8, i32 0, i32 4
  %9 = load i32, i32* %numcomps5, align 4, !tbaa !58
  %cmp6 = icmp ugt i32 %9, 16384
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false.4, %if.end
  %10 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %10, i32 1, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i32 0, i32 0)) #6
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %lor.lhs.false.4
  %11 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %11, i32 0, i32 0
  %12 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %13 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %14 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %15 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  call void @opj_j2k_setup_encoder(%struct.opj_j2k* %12, %struct.opj_cparameters* %13, %struct.opj_image* %14, %struct.opj_event_mgr* %15) #6
  %16 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %brand = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %16, i32 0, i32 14
  store i32 1785737760, i32* %brand, align 4, !tbaa !83
  %17 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %minversion = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %17, i32 0, i32 15
  store i32 0, i32* %minversion, align 4, !tbaa !84
  %18 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcl = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %18, i32 0, i32 16
  store i32 1, i32* %numcl, align 4, !tbaa !11
  %19 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcl9 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %19, i32 0, i32 16
  %20 = load i32, i32* %numcl9, align 4, !tbaa !11
  %conv = zext i32 %20 to i64
  %mul = mul i64 %conv, 4
  %cmp10 = icmp uge i64 %mul, -256
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  br label %cond.end

cond.false:                                       ; preds = %if.end.8
  %21 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcl12 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %21, i32 0, i32 16
  %22 = load i32, i32* %numcl12, align 4, !tbaa !11
  %conv13 = zext i32 %22 to i64
  %mul14 = mul i64 %conv13, 4
  %call15 = call noalias i8* @malloc(i64 %mul14) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call15, %cond.false ]
  %23 = bitcast i8* %cond to i32*
  %24 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cl = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %24, i32 0, i32 17
  store i32* %23, i32** %cl, align 8, !tbaa !12
  %25 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cl16 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %25, i32 0, i32 17
  %26 = load i32*, i32** %cl16, align 8, !tbaa !12
  %tobool17 = icmp ne i32* %26, null
  br i1 %tobool17, label %if.end.21, label %if.then.18

if.then.18:                                       ; preds = %cond.end
  %27 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cl19 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %27, i32 0, i32 17
  store i32* null, i32** %cl19, align 8, !tbaa !12
  %28 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call20 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %28, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0)) #6
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %cond.end
  %29 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cl22 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %29, i32 0, i32 17
  %30 = load i32*, i32** %cl22, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i32, i32* %30, i64 0
  store i32 1785737760, i32* %arrayidx, align 4, !tbaa !5
  %31 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps23 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %31, i32 0, i32 4
  %32 = load i32, i32* %numcomps23, align 4, !tbaa !58
  %33 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcomps24 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %33, i32 0, i32 5
  store i32 %32, i32* %numcomps24, align 4, !tbaa !19
  %34 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcomps25 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %34, i32 0, i32 5
  %35 = load i32, i32* %numcomps25, align 4, !tbaa !19
  %conv26 = zext i32 %35 to i64
  %mul27 = mul i64 %conv26, 12
  %cmp28 = icmp uge i64 %mul27, -256
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %if.end.21
  br label %cond.end.36

cond.false.31:                                    ; preds = %if.end.21
  %36 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcomps32 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %36, i32 0, i32 5
  %37 = load i32, i32* %numcomps32, align 4, !tbaa !19
  %conv33 = zext i32 %37 to i64
  %mul34 = mul i64 %conv33, 12
  %call35 = call noalias i8* @malloc(i64 %mul34) #7
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.31, %cond.true.30
  %cond37 = phi i8* [ null, %cond.true.30 ], [ %call35, %cond.false.31 ]
  %38 = bitcast i8* %cond37 to %struct.opj_jp2_comps*
  %39 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %39, i32 0, i32 18
  store %struct.opj_jp2_comps* %38, %struct.opj_jp2_comps** %comps, align 8, !tbaa !20
  %40 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %comps38 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %40, i32 0, i32 18
  %41 = load %struct.opj_jp2_comps*, %struct.opj_jp2_comps** %comps38, align 8, !tbaa !20
  %tobool39 = icmp ne %struct.opj_jp2_comps* %41, null
  br i1 %tobool39, label %if.end.43, label %if.then.40

if.then.40:                                       ; preds = %cond.end.36
  %42 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %comps41 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %42, i32 0, i32 18
  store %struct.opj_jp2_comps* null, %struct.opj_jp2_comps** %comps41, align 8, !tbaa !20
  %43 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call42 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %43, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0)) #6
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %cond.end.36
  %44 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %44, i32 0, i32 3
  %45 = load i32, i32* %y1, align 4, !tbaa !85
  %46 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %46, i32 0, i32 1
  %47 = load i32, i32* %y0, align 4, !tbaa !86
  %sub = sub i32 %45, %47
  %48 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %48, i32 0, i32 4
  store i32 %sub, i32* %h, align 4, !tbaa !73
  %49 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %49, i32 0, i32 2
  %50 = load i32, i32* %x1, align 4, !tbaa !87
  %51 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %51, i32 0, i32 0
  %52 = load i32, i32* %x0, align 4, !tbaa !88
  %sub44 = sub i32 %50, %52
  %53 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %53, i32 0, i32 3
  store i32 %sub44, i32* %w, align 4, !tbaa !74
  %54 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps45 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %54, i32 0, i32 6
  %55 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps45, align 8, !tbaa !60
  %arrayidx46 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %55, i64 0
  %prec = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx46, i32 0, i32 6
  %56 = load i32, i32* %prec, align 4, !tbaa !67
  %sub47 = sub i32 %56, 1
  store i32 %sub47, i32* %depth_0, align 4, !tbaa !5
  %57 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps48 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %57, i32 0, i32 6
  %58 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps48, align 8, !tbaa !60
  %arrayidx49 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %58, i64 0
  %sgnd = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx49, i32 0, i32 8
  %59 = load i32, i32* %sgnd, align 4, !tbaa !68
  store i32 %59, i32* %sign, align 4, !tbaa !5
  %60 = load i32, i32* %depth_0, align 4, !tbaa !5
  %61 = load i32, i32* %sign, align 4, !tbaa !5
  %shl = shl i32 %61, 7
  %add = add nsw i32 %60, %shl
  %62 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %bpc = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %62, i32 0, i32 6
  store i32 %add, i32* %bpc, align 4, !tbaa !27
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.43
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %64 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps50 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %64, i32 0, i32 4
  %65 = load i32, i32* %numcomps50, align 4, !tbaa !58
  %cmp51 = icmp ult i32 %63, %65
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %67 to i64
  %68 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps53 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %68, i32 0, i32 6
  %69 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps53, align 8, !tbaa !60
  %arrayidx54 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %69, i64 %idxprom
  %prec55 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx54, i32 0, i32 6
  %70 = load i32, i32* %prec55, align 4, !tbaa !67
  %sub56 = sub i32 %70, 1
  store i32 %sub56, i32* %depth, align 4, !tbaa !5
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom57 = zext i32 %71 to i64
  %72 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps58 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %72, i32 0, i32 6
  %73 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps58, align 8, !tbaa !60
  %arrayidx59 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %73, i64 %idxprom57
  %sgnd60 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx59, i32 0, i32 8
  %74 = load i32, i32* %sgnd60, align 4, !tbaa !68
  store i32 %74, i32* %sign, align 4, !tbaa !5
  %75 = load i32, i32* %depth_0, align 4, !tbaa !5
  %76 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp61 = icmp ne i32 %75, %76
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %for.body
  %77 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %bpc64 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %77, i32 0, i32 6
  store i32 255, i32* %bpc64, align 4, !tbaa !27
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %for.body
  %78 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.65
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %79, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %C = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %80, i32 0, i32 7
  store i32 7, i32* %C, align 4, !tbaa !21
  %81 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %UnkC = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %81, i32 0, i32 8
  store i32 0, i32* %UnkC, align 4, !tbaa !75
  %82 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %IPR = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %82, i32 0, i32 9
  store i32 0, i32* %IPR, align 4, !tbaa !76
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.85, %for.end
  %83 = load i32, i32* %i, align 4, !tbaa !5
  %84 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps67 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %84, i32 0, i32 4
  %85 = load i32, i32* %numcomps67, align 4, !tbaa !58
  %cmp68 = icmp ult i32 %83, %85
  br i1 %cmp68, label %for.body.70, label %for.end.87

for.body.70:                                      ; preds = %for.cond.66
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom71 = zext i32 %86 to i64
  %87 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps72 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %87, i32 0, i32 6
  %88 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps72, align 8, !tbaa !60
  %arrayidx73 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %88, i64 %idxprom71
  %prec74 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx73, i32 0, i32 6
  %89 = load i32, i32* %prec74, align 4, !tbaa !67
  %sub75 = sub i32 %89, 1
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom76 = zext i32 %90 to i64
  %91 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps77 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %91, i32 0, i32 6
  %92 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps77, align 8, !tbaa !60
  %arrayidx78 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %92, i64 %idxprom76
  %sgnd79 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx78, i32 0, i32 8
  %93 = load i32, i32* %sgnd79, align 4, !tbaa !68
  %shl80 = shl i32 %93, 7
  %add81 = add i32 %sub75, %shl80
  %94 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom82 = zext i32 %94 to i64
  %95 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %comps83 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %95, i32 0, i32 18
  %96 = load %struct.opj_jp2_comps*, %struct.opj_jp2_comps** %comps83, align 8, !tbaa !20
  %arrayidx84 = getelementptr inbounds %struct.opj_jp2_comps, %struct.opj_jp2_comps* %96, i64 %idxprom82
  %bpcc = getelementptr inbounds %struct.opj_jp2_comps, %struct.opj_jp2_comps* %arrayidx84, i32 0, i32 2
  store i32 %add81, i32* %bpcc, align 4, !tbaa !77
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.70
  %97 = load i32, i32* %i, align 4, !tbaa !5
  %inc86 = add i32 %97, 1
  store i32 %inc86, i32* %i, align 4, !tbaa !5
  br label %for.cond.66

for.end.87:                                       ; preds = %for.cond.66
  %98 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %icc_profile_len = getelementptr inbounds %struct.opj_image, %struct.opj_image* %98, i32 0, i32 8
  %99 = load i32, i32* %icc_profile_len, align 4, !tbaa !56
  %tobool88 = icmp ne i32 %99, 0
  br i1 %tobool88, label %if.then.89, label %if.else

if.then.89:                                       ; preds = %for.end.87
  %100 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %100, i32 0, i32 10
  store i32 2, i32* %meth, align 4, !tbaa !23
  %101 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %enumcs = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %101, i32 0, i32 12
  store i32 0, i32* %enumcs, align 4, !tbaa !52
  br label %if.end.110

if.else:                                          ; preds = %for.end.87
  %102 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth90 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %102, i32 0, i32 10
  store i32 1, i32* %meth90, align 4, !tbaa !23
  %103 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.opj_image, %struct.opj_image* %103, i32 0, i32 5
  %104 = load i32, i32* %color_space, align 4, !tbaa !53
  %cmp91 = icmp eq i32 %104, 1
  br i1 %cmp91, label %if.then.93, label %if.else.95

if.then.93:                                       ; preds = %if.else
  %105 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %enumcs94 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %105, i32 0, i32 12
  store i32 16, i32* %enumcs94, align 4, !tbaa !52
  br label %if.end.109

if.else.95:                                       ; preds = %if.else
  %106 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %color_space96 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %106, i32 0, i32 5
  %107 = load i32, i32* %color_space96, align 4, !tbaa !53
  %cmp97 = icmp eq i32 %107, 2
  br i1 %cmp97, label %if.then.99, label %if.else.101

if.then.99:                                       ; preds = %if.else.95
  %108 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %enumcs100 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %108, i32 0, i32 12
  store i32 17, i32* %enumcs100, align 4, !tbaa !52
  br label %if.end.108

if.else.101:                                      ; preds = %if.else.95
  %109 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %color_space102 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %109, i32 0, i32 5
  %110 = load i32, i32* %color_space102, align 4, !tbaa !53
  %cmp103 = icmp eq i32 %110, 3
  br i1 %cmp103, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.else.101
  %111 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %enumcs106 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %111, i32 0, i32 12
  store i32 18, i32* %enumcs106, align 4, !tbaa !52
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.else.101
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.99
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.93
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.89
  %112 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %precedence = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %112, i32 0, i32 13
  store i32 0, i32* %precedence, align 4, !tbaa !79
  %113 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %approx = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %113, i32 0, i32 11
  store i32 0, i32* %approx, align 4, !tbaa !80
  %114 = load %struct.opj_cparameters*, %struct.opj_cparameters** %parameters.addr, align 8, !tbaa !1
  %jpip_on = getelementptr inbounds %struct.opj_cparameters, %struct.opj_cparameters* %114, i32 0, i32 56
  %115 = load i32, i32* %jpip_on, align 4, !tbaa !89
  %116 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jpip_on111 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %116, i32 0, i32 21
  store i32 %115, i32* %jpip_on111, align 4, !tbaa !91
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.110, %if.then.40, %if.then.18, %if.then.7, %if.then
  %117 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %depth_0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
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

declare void @opj_j2k_setup_encoder(%struct.opj_j2k*, %struct.opj_cparameters*, %struct.opj_image*, %struct.opj_event_mgr*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_encode(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %stream, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %stream, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %0, i32 0, i32 0
  %1 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %2 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %3 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 @opj_j2k_encode(%struct.opj_j2k* %1, %struct.opj_stream_private* %2, %struct.opj_event_mgr* %3) #6
  ret i32 %call
}

declare i32 @opj_j2k_encode(%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_event_mgr*) #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_end_decompress(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1640, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @__PRETTY_FUNCTION__.opj_jp2_end_decompress, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_stream_private* %2, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1641, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @__PRETTY_FUNCTION__.opj_jp2_end_decompress, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %3, %cond.true.2
  %4 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %4, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1642, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @__PRETTY_FUNCTION__.opj_jp2_end_decompress, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %5, %cond.true.6
  %6 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  call void @opj_jp2_setup_end_header_reading(%struct.opj_jp2* %6) #6
  %7 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %8 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %8, i32 0, i32 2
  %9 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list, align 8, !tbaa !92
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %11 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 @opj_jp2_exec(%struct.opj_jp2* %7, %struct.opj_procedure_list* %9, %struct.opj_stream_private* %10, %struct.opj_event_mgr* %11) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.8
  %12 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %12, i32 0, i32 0
  %13 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %14 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %15 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call9 = call i32 @opj_j2k_end_decompress(%struct.opj_j2k* %13, %struct.opj_stream_private* %14, %struct.opj_event_mgr* %15) #6
  store i32 %call9, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @opj_jp2_setup_end_header_reading(%struct.opj_jp2* %jp2) #0 {
entry:
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1699, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.opj_jp2_setup_end_header_reading, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %2, i32 0, i32 2
  %3 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list, align 8, !tbaa !92
  %call = call i32 @opj_procedure_list_add_procedure(%struct.opj_procedure_list* %3, void ()* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jp2_read_header_procedure to void ()*)) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_exec(%struct.opj_jp2* %jp2, %struct.opj_procedure_list* %p_procedure_list, %struct.opj_stream_private* %stream, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_procedure_list.addr = alloca %struct.opj_procedure_list*, align 8
  %stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_procedure = alloca i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)**, align 8
  %l_result = alloca i32, align 4
  %l_nb_proc = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_procedure_list* %p_procedure_list, %struct.opj_procedure_list** %p_procedure_list.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %stream, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*** %l_procedure to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** null, i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*** %l_procedure, align 8, !tbaa !1
  %1 = bitcast i32* %l_result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 1, i32* %l_result, align 4, !tbaa !5
  %2 = bitcast i32* %l_nb_proc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_procedure_list.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_procedure_list* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1873, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @__PRETTY_FUNCTION__.opj_jp2_exec, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_jp2* %6, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1874, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @__PRETTY_FUNCTION__.opj_jp2_exec, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %7, %cond.true.2
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_stream_private* %8, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1875, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @__PRETTY_FUNCTION__.opj_jp2_exec, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %9, %cond.true.6
  %10 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp9 = icmp ne %struct.opj_event_mgr* %10, null
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end.8
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end.8
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1876, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @__PRETTY_FUNCTION__.opj_jp2_exec, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.12

cond.end.12:                                      ; preds = %11, %cond.true.10
  %12 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_procedure_list.addr, align 8, !tbaa !1
  %call = call i32 @opj_procedure_list_get_nb_procedures(%struct.opj_procedure_list* %12) #6
  store i32 %call, i32* %l_nb_proc, align 4, !tbaa !5
  %13 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_procedure_list.addr, align 8, !tbaa !1
  %call13 = call void ()** @opj_procedure_list_get_first_procedure(%struct.opj_procedure_list* %13) #6
  %14 = bitcast void ()** %call13 to i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)**
  store i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %14, i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*** %l_procedure, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.12
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %16 = load i32, i32* %l_nb_proc, align 4, !tbaa !5
  %cmp14 = icmp ult i32 %15, %16
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %l_result, align 4, !tbaa !5
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %18 = load i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)**, i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*** %l_procedure, align 8, !tbaa !1
  %19 = load i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*, i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %18, align 8, !tbaa !1
  %20 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %21 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %22 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call15 = call i32 %19(%struct.opj_jp2* %20, %struct.opj_stream_private* %21, %struct.opj_event_mgr* %22) #6
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %23 = phi i1 [ false, %for.body ], [ %tobool16, %land.rhs ]
  %land.ext = zext i1 %23 to i32
  store i32 %land.ext, i32* %l_result, align 4, !tbaa !5
  %24 = load i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)**, i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*** %l_procedure, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*, i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %24, i32 1
  store i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)** %incdec.ptr, i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*** %l_procedure, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %p_procedure_list.addr, align 8, !tbaa !1
  call void @opj_procedure_list_clear(%struct.opj_procedure_list* %26) #6
  %27 = load i32, i32* %l_result, align 4, !tbaa !5
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i32* %l_nb_proc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32* %l_result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #2
  %31 = bitcast i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)*** %l_procedure to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  ret i32 %27
}

declare i32 @opj_j2k_end_decompress(%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_event_mgr*) #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_end_compress(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1661, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @__PRETTY_FUNCTION__.opj_jp2_end_compress, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_stream_private* %2, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1662, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @__PRETTY_FUNCTION__.opj_jp2_end_compress, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %3, %cond.true.2
  %4 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %4, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1663, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @__PRETTY_FUNCTION__.opj_jp2_end_compress, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %5, %cond.true.6
  %6 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  call void @opj_jp2_setup_end_header_writing(%struct.opj_jp2* %6) #6
  %7 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %7, i32 0, i32 0
  %8 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %9 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %10 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 @opj_j2k_end_compress(%struct.opj_j2k* %8, %struct.opj_stream_private* %9, %struct.opj_event_mgr* %10) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.8
  %11 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %12 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %12, i32 0, i32 2
  %13 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list, align 8, !tbaa !92
  %14 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %15 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call9 = call i32 @opj_jp2_exec(%struct.opj_jp2* %11, %struct.opj_procedure_list* %13, %struct.opj_stream_private* %14, %struct.opj_event_mgr* %15) #6
  store i32 %call9, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @opj_jp2_setup_end_header_writing(%struct.opj_jp2* %jp2) #0 {
entry:
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1679, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.opj_jp2_setup_end_header_writing, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jpip_on = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %2, i32 0, i32 21
  %3 = load i32, i32* %jpip_on, align 4, !tbaa !91
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %4 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %4, i32 0, i32 2
  %5 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list, align 8, !tbaa !92
  %call = call i32 @opj_procedure_list_add_procedure(%struct.opj_procedure_list* %5, void ()* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jpip_write_iptr to void ()*)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list1 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %6, i32 0, i32 2
  %7 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list1, align 8, !tbaa !92
  %call2 = call i32 @opj_procedure_list_add_procedure(%struct.opj_procedure_list* %7, void ()* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jp2_write_jp2c to void ()*)) #6
  %8 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jpip_on3 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %8, i32 0, i32 21
  %9 = load i32, i32* %jpip_on3, align 4, !tbaa !91
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %10 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list6 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %10, i32 0, i32 2
  %11 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list6, align 8, !tbaa !92
  %call7 = call i32 @opj_procedure_list_add_procedure(%struct.opj_procedure_list* %11, void ()* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jpip_write_cidx to void ()*)) #6
  %12 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list8 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %12, i32 0, i32 2
  %13 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list8, align 8, !tbaa !92
  %call9 = call i32 @opj_procedure_list_add_procedure(%struct.opj_procedure_list* %13, void ()* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jpip_write_fidx to void ()*)) #6
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %if.end
  ret void
}

declare i32 @opj_j2k_end_compress(%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_event_mgr*) #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_default_validation(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_is_valid = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l_is_valid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 1, i32* %l_is_valid, align 4, !tbaa !5
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1713, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @__PRETTY_FUNCTION__.opj_jp2_default_validation, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_stream_private* %4, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1714, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @__PRETTY_FUNCTION__.opj_jp2_default_validation, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %5, %cond.true.2
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %6, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1715, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @__PRETTY_FUNCTION__.opj_jp2_default_validation, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %7, %cond.true.6
  %8 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jp2_state = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %8, i32 0, i32 22
  %9 = load i32, i32* %jp2_state, align 4, !tbaa !7
  %cmp9 = icmp eq i32 %9, 0
  %conv = zext i1 %cmp9 to i32
  %10 = load i32, i32* %l_is_valid, align 4, !tbaa !5
  %and = and i32 %10, %conv
  store i32 %and, i32* %l_is_valid, align 4, !tbaa !5
  %11 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jp2_img_state = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %11, i32 0, i32 23
  %12 = load i32, i32* %jp2_img_state, align 4, !tbaa !13
  %cmp10 = icmp eq i32 %12, 0
  %conv11 = zext i1 %cmp10 to i32
  %13 = load i32, i32* %l_is_valid, align 4, !tbaa !5
  %and12 = and i32 %13, %conv11
  store i32 %and12, i32* %l_is_valid, align 4, !tbaa !5
  %14 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %14, i32 0, i32 0
  %15 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %cmp13 = icmp ne %struct.opj_j2k* %15, null
  %conv14 = zext i1 %cmp13 to i32
  %16 = load i32, i32* %l_is_valid, align 4, !tbaa !5
  %and15 = and i32 %16, %conv14
  store i32 %and15, i32* %l_is_valid, align 4, !tbaa !5
  %17 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %17, i32 0, i32 2
  %18 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list, align 8, !tbaa !92
  %cmp16 = icmp ne %struct.opj_procedure_list* %18, null
  %conv17 = zext i1 %cmp16 to i32
  %19 = load i32, i32* %l_is_valid, align 4, !tbaa !5
  %and18 = and i32 %19, %conv17
  store i32 %and18, i32* %l_is_valid, align 4, !tbaa !5
  %20 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_validation_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %20, i32 0, i32 1
  %21 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_validation_list, align 8, !tbaa !93
  %cmp19 = icmp ne %struct.opj_procedure_list* %21, null
  %conv20 = zext i1 %cmp19 to i32
  %22 = load i32, i32* %l_is_valid, align 4, !tbaa !5
  %and21 = and i32 %22, %conv20
  store i32 %and21, i32* %l_is_valid, align 4, !tbaa !5
  %23 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcl = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %23, i32 0, i32 16
  %24 = load i32, i32* %numcl, align 4, !tbaa !11
  %cmp22 = icmp ugt i32 %24, 0
  %conv23 = zext i1 %cmp22 to i32
  %25 = load i32, i32* %l_is_valid, align 4, !tbaa !5
  %and24 = and i32 %25, %conv23
  store i32 %and24, i32* %l_is_valid, align 4, !tbaa !5
  %26 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %26, i32 0, i32 4
  %27 = load i32, i32* %h, align 4, !tbaa !73
  %cmp25 = icmp ugt i32 %27, 0
  %conv26 = zext i1 %cmp25 to i32
  %28 = load i32, i32* %l_is_valid, align 4, !tbaa !5
  %and27 = and i32 %28, %conv26
  store i32 %and27, i32* %l_is_valid, align 4, !tbaa !5
  %29 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %29, i32 0, i32 3
  %30 = load i32, i32* %w, align 4, !tbaa !74
  %cmp28 = icmp ugt i32 %30, 0
  %conv29 = zext i1 %cmp28 to i32
  %31 = load i32, i32* %l_is_valid, align 4, !tbaa !5
  %and30 = and i32 %31, %conv29
  store i32 %and30, i32* %l_is_valid, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.8
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %33 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %33, i32 0, i32 5
  %34 = load i32, i32* %numcomps, align 4, !tbaa !19
  %cmp31 = icmp ult i32 %32, %34
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %35 to i64
  %36 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %36, i32 0, i32 18
  %37 = load %struct.opj_jp2_comps*, %struct.opj_jp2_comps** %comps, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds %struct.opj_jp2_comps, %struct.opj_jp2_comps* %37, i64 %idxprom
  %bpcc = getelementptr inbounds %struct.opj_jp2_comps, %struct.opj_jp2_comps* %arrayidx, i32 0, i32 2
  %38 = load i32, i32* %bpcc, align 4, !tbaa !77
  %cmp33 = icmp ugt i32 %38, 0
  %conv34 = zext i1 %cmp33 to i32
  %39 = load i32, i32* %l_is_valid, align 4, !tbaa !5
  %and35 = and i32 %39, %conv34
  store i32 %and35, i32* %l_is_valid, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %41, i32 0, i32 10
  %42 = load i32, i32* %meth, align 4, !tbaa !23
  %cmp36 = icmp ugt i32 %42, 0
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end
  %43 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %meth38 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %43, i32 0, i32 10
  %44 = load i32, i32* %meth38, align 4, !tbaa !23
  %cmp39 = icmp ult i32 %44, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end
  %45 = phi i1 [ false, %for.end ], [ %cmp39, %land.rhs ]
  %land.ext = zext i1 %45 to i32
  %46 = load i32, i32* %l_is_valid, align 4, !tbaa !5
  %and41 = and i32 %46, %land.ext
  store i32 %and41, i32* %l_is_valid, align 4, !tbaa !5
  %47 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %call = call i32 @opj_stream_has_seek(%struct.opj_stream_private* %47) #6
  %48 = load i32, i32* %l_is_valid, align 4, !tbaa !5
  %and42 = and i32 %48, %call
  store i32 %and42, i32* %l_is_valid, align 4, !tbaa !5
  %49 = load i32, i32* %l_is_valid, align 4, !tbaa !5
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast i32* %l_is_valid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  ret i32 %49
}

declare i32 @opj_stream_has_seek(%struct.opj_stream_private*) #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_start_compress(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %stream, %struct.opj_image* %p_image, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_image.addr = alloca %struct.opj_image*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %stream, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1898, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @__PRETTY_FUNCTION__.opj_jp2_start_compress, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_stream_private* %2, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1899, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @__PRETTY_FUNCTION__.opj_jp2_start_compress, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %3, %cond.true.2
  %4 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %4, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1900, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @__PRETTY_FUNCTION__.opj_jp2_start_compress, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %5, %cond.true.6
  %6 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  call void @opj_jp2_setup_encoding_validation(%struct.opj_jp2* %6) #6
  %7 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %8 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_validation_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %8, i32 0, i32 1
  %9 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_validation_list, align 8, !tbaa !93
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %11 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 @opj_jp2_exec(%struct.opj_jp2* %7, %struct.opj_procedure_list* %9, %struct.opj_stream_private* %10, %struct.opj_event_mgr* %11) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.8
  %12 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  call void @opj_jp2_setup_header_writing(%struct.opj_jp2* %12) #6
  %13 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %14 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %14, i32 0, i32 2
  %15 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list, align 8, !tbaa !92
  %16 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call9 = call i32 @opj_jp2_exec(%struct.opj_jp2* %13, %struct.opj_procedure_list* %15, %struct.opj_stream_private* %16, %struct.opj_event_mgr* %17) #6
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %18 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %18, i32 0, i32 0
  %19 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %20 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %21 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %22 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call13 = call i32 @opj_j2k_start_compress(%struct.opj_j2k* %19, %struct.opj_stream_private* %20, %struct.opj_image* %21, %struct.opj_event_mgr* %22) #6
  store i32 %call13, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @opj_jp2_setup_encoding_validation(%struct.opj_jp2* %jp2) #0 {
entry:
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2277, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.opj_jp2_setup_encoding_validation, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_validation_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %2, i32 0, i32 1
  %3 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_validation_list, align 8, !tbaa !93
  %call = call i32 @opj_procedure_list_add_procedure(%struct.opj_procedure_list* %3, void ()* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jp2_default_validation to void ()*)) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_jp2_setup_header_writing(%struct.opj_jp2* %jp2) #0 {
entry:
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2293, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.opj_jp2_setup_header_writing, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %2, i32 0, i32 2
  %3 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list, align 8, !tbaa !92
  %call = call i32 @opj_procedure_list_add_procedure(%struct.opj_procedure_list* %3, void ()* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jp2_write_jp to void ()*)) #6
  %4 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list1 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %4, i32 0, i32 2
  %5 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list1, align 8, !tbaa !92
  %call2 = call i32 @opj_procedure_list_add_procedure(%struct.opj_procedure_list* %5, void ()* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jp2_write_ftyp to void ()*)) #6
  %6 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list3 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %6, i32 0, i32 2
  %7 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list3, align 8, !tbaa !92
  %call4 = call i32 @opj_procedure_list_add_procedure(%struct.opj_procedure_list* %7, void ()* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jp2_write_jp2h to void ()*)) #6
  %8 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jpip_on = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %8, i32 0, i32 21
  %9 = load i32, i32* %jpip_on, align 4, !tbaa !91
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %10 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list5 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %10, i32 0, i32 2
  %11 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list5, align 8, !tbaa !92
  %call6 = call i32 @opj_procedure_list_add_procedure(%struct.opj_procedure_list* %11, void ()* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jpip_skip_iptr to void ()*)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %12 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list7 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %12, i32 0, i32 2
  %13 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list7, align 8, !tbaa !92
  %call8 = call i32 @opj_procedure_list_add_procedure(%struct.opj_procedure_list* %13, void ()* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jp2_skip_jp2c to void ()*)) #6
  ret void
}

declare i32 @opj_j2k_start_compress(%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*) #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_skip_jp2c(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %stream, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %stream, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2075, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_skip_jp2c, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_stream_private* %2, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2076, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_skip_jp2c, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %3, %cond.true.2
  %4 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %4, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2077, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.opj_jp2_skip_jp2c, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %5, %cond.true.6
  %6 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %call = call i64 @opj_stream_tell(%struct.opj_stream_private* %6) #6
  %7 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %j2k_codestream_offset = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %7, i32 0, i32 19
  store i64 %call, i64* %j2k_codestream_offset, align 8, !tbaa !94
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %9 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call9 = call i64 @opj_stream_skip(%struct.opj_stream_private* %8, i64 8, %struct.opj_event_mgr* %9) #6
  %cmp10 = icmp ne i64 %call9, 8
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i64 @opj_stream_tell(%struct.opj_stream_private*) #1

declare i64 @opj_stream_skip(%struct.opj_stream_private*, i64, %struct.opj_event_mgr*) #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_read_header(%struct.opj_stream_private* %p_stream, %struct.opj_jp2* %jp2, %struct.opj_image** %p_image, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_image.addr = alloca %struct.opj_image**, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_image** %p_image, %struct.opj_image*** %p_image.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2248, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_header, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_stream_private* %2, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2249, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_header, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %3, %cond.true.2
  %4 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %4, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2250, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_header, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %5, %cond.true.6
  %6 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  call void @opj_jp2_setup_decoding_validation(%struct.opj_jp2* %6) #6
  %7 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  call void @opj_jp2_setup_header_reading(%struct.opj_jp2* %7) #6
  %8 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %9 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_validation_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %9, i32 0, i32 1
  %10 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_validation_list, align 8, !tbaa !93
  %11 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %12 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 @opj_jp2_exec(%struct.opj_jp2* %8, %struct.opj_procedure_list* %10, %struct.opj_stream_private* %11, %struct.opj_event_mgr* %12) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.8
  %13 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %14 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %14, i32 0, i32 2
  %15 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list, align 8, !tbaa !92
  %16 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call9 = call i32 @opj_jp2_exec(%struct.opj_jp2* %13, %struct.opj_procedure_list* %15, %struct.opj_stream_private* %16, %struct.opj_event_mgr* %17) #6
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %19 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %19, i32 0, i32 0
  %20 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %21 = load %struct.opj_image**, %struct.opj_image*** %p_image.addr, align 8, !tbaa !1
  %22 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call13 = call i32 @opj_j2k_read_header(%struct.opj_stream_private* %18, %struct.opj_j2k* %20, %struct.opj_image** %21, %struct.opj_event_mgr* %22) #6
  store i32 %call13, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @opj_jp2_setup_decoding_validation(%struct.opj_jp2* %jp2) #0 {
entry:
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2286, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.opj_jp2_setup_decoding_validation, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_jp2_setup_header_reading(%struct.opj_jp2* %jp2) #0 {
entry:
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2309, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.opj_jp2_setup_header_reading, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %2, i32 0, i32 2
  %3 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list, align 8, !tbaa !92
  %call = call i32 @opj_procedure_list_add_procedure(%struct.opj_procedure_list* %3, void ()* bitcast (i32 (%struct.opj_jp2*, %struct.opj_stream_private*, %struct.opj_event_mgr*)* @opj_jp2_read_header_procedure to void ()*)) #6
  ret void
}

declare i32 @opj_j2k_read_header(%struct.opj_stream_private*, %struct.opj_j2k*, %struct.opj_image**, %struct.opj_event_mgr*) #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_read_tile_header(%struct.opj_jp2* %p_jp2, i32* %p_tile_index, i32* %p_data_size, i32* %p_tile_x0, i32* %p_tile_y0, i32* %p_tile_x1, i32* %p_tile_y1, i32* %p_nb_comps, i32* %p_go_on, %struct.opj_stream_private* %p_stream, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %p_jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_tile_index.addr = alloca i32*, align 8
  %p_data_size.addr = alloca i32*, align 8
  %p_tile_x0.addr = alloca i32*, align 8
  %p_tile_y0.addr = alloca i32*, align 8
  %p_tile_x1.addr = alloca i32*, align 8
  %p_tile_y1.addr = alloca i32*, align 8
  %p_nb_comps.addr = alloca i32*, align 8
  %p_go_on.addr = alloca i32*, align 8
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_jp2* %p_jp2, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  store i32* %p_tile_index, i32** %p_tile_index.addr, align 8, !tbaa !1
  store i32* %p_data_size, i32** %p_data_size.addr, align 8, !tbaa !1
  store i32* %p_tile_x0, i32** %p_tile_x0.addr, align 8, !tbaa !1
  store i32* %p_tile_y0, i32** %p_tile_y0.addr, align 8, !tbaa !1
  store i32* %p_tile_x1, i32** %p_tile_x1.addr, align 8, !tbaa !1
  store i32* %p_tile_y1, i32** %p_tile_y1.addr, align 8, !tbaa !1
  store i32* %p_nb_comps, i32** %p_nb_comps.addr, align 8, !tbaa !1
  store i32* %p_go_on, i32** %p_go_on.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %0, i32 0, i32 0
  %1 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %2 = load i32*, i32** %p_tile_index.addr, align 8, !tbaa !1
  %3 = load i32*, i32** %p_data_size.addr, align 8, !tbaa !1
  %4 = load i32*, i32** %p_tile_x0.addr, align 8, !tbaa !1
  %5 = load i32*, i32** %p_tile_y0.addr, align 8, !tbaa !1
  %6 = load i32*, i32** %p_tile_x1.addr, align 8, !tbaa !1
  %7 = load i32*, i32** %p_tile_y1.addr, align 8, !tbaa !1
  %8 = load i32*, i32** %p_nb_comps.addr, align 8, !tbaa !1
  %9 = load i32*, i32** %p_go_on.addr, align 8, !tbaa !1
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %11 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 @opj_j2k_read_tile_header(%struct.opj_j2k* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, %struct.opj_stream_private* %10, %struct.opj_event_mgr* %11) #6
  ret i32 %call
}

declare i32 @opj_j2k_read_tile_header(%struct.opj_j2k*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.opj_stream_private*, %struct.opj_event_mgr*) #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_write_tile(%struct.opj_jp2* %p_jp2, i32 %p_tile_index, i8* %p_data, i32 %p_data_size, %struct.opj_stream_private* %p_stream, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %p_jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_tile_index.addr = alloca i32, align 4
  %p_data.addr = alloca i8*, align 8
  %p_data_size.addr = alloca i32, align 4
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_jp2* %p_jp2, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  store i32 %p_tile_index, i32* %p_tile_index.addr, align 4, !tbaa !5
  store i8* %p_data, i8** %p_data.addr, align 8, !tbaa !1
  store i32 %p_data_size, i32* %p_data_size.addr, align 4, !tbaa !5
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %0, i32 0, i32 0
  %1 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %2 = load i32, i32* %p_tile_index.addr, align 4, !tbaa !5
  %3 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %p_data_size.addr, align 4, !tbaa !5
  %5 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 @opj_j2k_write_tile(%struct.opj_j2k* %1, i32 %2, i8* %3, i32 %4, %struct.opj_stream_private* %5, %struct.opj_event_mgr* %6) #6
  ret i32 %call
}

declare i32 @opj_j2k_write_tile(%struct.opj_j2k*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*) #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_decode_tile(%struct.opj_jp2* %p_jp2, i32 %p_tile_index, i8* %p_data, i32 %p_data_size, %struct.opj_stream_private* %p_stream, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %p_jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_tile_index.addr = alloca i32, align 4
  %p_data.addr = alloca i8*, align 8
  %p_data_size.addr = alloca i32, align 4
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_jp2* %p_jp2, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  store i32 %p_tile_index, i32* %p_tile_index.addr, align 4, !tbaa !5
  store i8* %p_data, i8** %p_data.addr, align 8, !tbaa !1
  store i32 %p_data_size, i32* %p_data_size.addr, align 4, !tbaa !5
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %0, i32 0, i32 0
  %1 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %2 = load i32, i32* %p_tile_index.addr, align 4, !tbaa !5
  %3 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %p_data_size.addr, align 4, !tbaa !5
  %5 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 @opj_j2k_decode_tile(%struct.opj_j2k* %1, i32 %2, i8* %3, i32 %4, %struct.opj_stream_private* %5, %struct.opj_event_mgr* %6) #6
  ret i32 %call
}

declare i32 @opj_j2k_decode_tile(%struct.opj_j2k*, i32, i8*, i32, %struct.opj_stream_private*, %struct.opj_event_mgr*) #1

; Function Attrs: nounwind uwtable
define void @opj_jp2_destroy(%struct.opj_jp2* %jp2) #0 {
entry:
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_jp2* %0, null
  br i1 %tobool, label %if.then, label %if.end.99

if.then:                                          ; preds = %entry
  %1 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %1, i32 0, i32 0
  %2 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  call void @opj_j2k_destroy(%struct.opj_j2k* %2) #6
  %3 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %j2k1 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %3, i32 0, i32 0
  store %struct.opj_j2k* null, %struct.opj_j2k** %j2k1, align 8, !tbaa !50
  %4 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %4, i32 0, i32 18
  %5 = load %struct.opj_jp2_comps*, %struct.opj_jp2_comps** %comps, align 8, !tbaa !20
  %tobool2 = icmp ne %struct.opj_jp2_comps* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %comps4 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %6, i32 0, i32 18
  %7 = load %struct.opj_jp2_comps*, %struct.opj_jp2_comps** %comps4, align 8, !tbaa !20
  %8 = bitcast %struct.opj_jp2_comps* %7 to i8*
  call void @free(i8* %8) #7
  %9 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %comps5 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %9, i32 0, i32 18
  store %struct.opj_jp2_comps* null, %struct.opj_jp2_comps** %comps5, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %10 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cl = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %10, i32 0, i32 17
  %11 = load i32*, i32** %cl, align 8, !tbaa !12
  %tobool6 = icmp ne i32* %11, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cl8 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %12, i32 0, i32 17
  %13 = load i32*, i32** %cl8, align 8, !tbaa !12
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* %14) #7
  %15 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cl9 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %15, i32 0, i32 17
  store i32* null, i32** %cl9, align 8, !tbaa !12
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %16 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %16, i32 0, i32 24
  %icc_profile_buf = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color, i32 0, i32 0
  %17 = load i8*, i8** %icc_profile_buf, align 8, !tbaa !25
  %tobool11 = icmp ne i8* %17, null
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.10
  %18 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color13 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %18, i32 0, i32 24
  %icc_profile_buf14 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color13, i32 0, i32 0
  %19 = load i8*, i8** %icc_profile_buf14, align 8, !tbaa !25
  call void @free(i8* %19) #7
  %20 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color15 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %20, i32 0, i32 24
  %icc_profile_buf16 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color15, i32 0, i32 0
  store i8* null, i8** %icc_profile_buf16, align 8, !tbaa !25
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.end.10
  %21 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color18 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %21, i32 0, i32 24
  %jp2_cdef = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color18, i32 0, i32 2
  %22 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef, align 8, !tbaa !42
  %tobool19 = icmp ne %struct.opj_jp2_cdef* %22, null
  br i1 %tobool19, label %if.then.20, label %if.end.36

if.then.20:                                       ; preds = %if.end.17
  %23 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color21 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %23, i32 0, i32 24
  %jp2_cdef22 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color21, i32 0, i32 2
  %24 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef22, align 8, !tbaa !42
  %info = getelementptr inbounds %struct.opj_jp2_cdef, %struct.opj_jp2_cdef* %24, i32 0, i32 0
  %25 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info, align 8, !tbaa !43
  %tobool23 = icmp ne %struct.opj_jp2_cdef_info* %25, null
  br i1 %tobool23, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %if.then.20
  %26 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color25 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %26, i32 0, i32 24
  %jp2_cdef26 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color25, i32 0, i32 2
  %27 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef26, align 8, !tbaa !42
  %info27 = getelementptr inbounds %struct.opj_jp2_cdef, %struct.opj_jp2_cdef* %27, i32 0, i32 0
  %28 = load %struct.opj_jp2_cdef_info*, %struct.opj_jp2_cdef_info** %info27, align 8, !tbaa !43
  %29 = bitcast %struct.opj_jp2_cdef_info* %28 to i8*
  call void @free(i8* %29) #7
  %30 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color28 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %30, i32 0, i32 24
  %jp2_cdef29 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color28, i32 0, i32 2
  %31 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef29, align 8, !tbaa !42
  %info30 = getelementptr inbounds %struct.opj_jp2_cdef, %struct.opj_jp2_cdef* %31, i32 0, i32 0
  store %struct.opj_jp2_cdef_info* null, %struct.opj_jp2_cdef_info** %info30, align 8, !tbaa !43
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.24, %if.then.20
  %32 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color32 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %32, i32 0, i32 24
  %jp2_cdef33 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color32, i32 0, i32 2
  %33 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef33, align 8, !tbaa !42
  %34 = bitcast %struct.opj_jp2_cdef* %33 to i8*
  call void @free(i8* %34) #7
  %35 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color34 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %35, i32 0, i32 24
  %jp2_cdef35 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color34, i32 0, i32 2
  store %struct.opj_jp2_cdef* null, %struct.opj_jp2_cdef** %jp2_cdef35, align 8, !tbaa !42
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.31, %if.end.17
  %36 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color37 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %36, i32 0, i32 24
  %jp2_pclr = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color37, i32 0, i32 3
  %37 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !28
  %tobool38 = icmp ne %struct.opj_jp2_pclr* %37, null
  br i1 %tobool38, label %if.then.39, label %if.end.88

if.then.39:                                       ; preds = %if.end.36
  %38 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color40 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %38, i32 0, i32 24
  %jp2_pclr41 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color40, i32 0, i32 3
  %39 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr41, align 8, !tbaa !28
  %cmap = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %39, i32 0, i32 3
  %40 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !37
  %tobool42 = icmp ne %struct.opj_jp2_cmap_comp* %40, null
  br i1 %tobool42, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %if.then.39
  %41 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color44 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %41, i32 0, i32 24
  %jp2_pclr45 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color44, i32 0, i32 3
  %42 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr45, align 8, !tbaa !28
  %cmap46 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %42, i32 0, i32 3
  %43 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap46, align 8, !tbaa !37
  %44 = bitcast %struct.opj_jp2_cmap_comp* %43 to i8*
  call void @free(i8* %44) #7
  %45 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color47 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %45, i32 0, i32 24
  %jp2_pclr48 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color47, i32 0, i32 3
  %46 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr48, align 8, !tbaa !28
  %cmap49 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %46, i32 0, i32 3
  store %struct.opj_jp2_cmap_comp* null, %struct.opj_jp2_cmap_comp** %cmap49, align 8, !tbaa !37
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.43, %if.then.39
  %47 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color51 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %47, i32 0, i32 24
  %jp2_pclr52 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color51, i32 0, i32 3
  %48 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr52, align 8, !tbaa !28
  %channel_sign = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %48, i32 0, i32 1
  %49 = load i8*, i8** %channel_sign, align 8, !tbaa !31
  %tobool53 = icmp ne i8* %49, null
  br i1 %tobool53, label %if.then.54, label %if.end.61

if.then.54:                                       ; preds = %if.end.50
  %50 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color55 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %50, i32 0, i32 24
  %jp2_pclr56 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color55, i32 0, i32 3
  %51 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr56, align 8, !tbaa !28
  %channel_sign57 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %51, i32 0, i32 1
  %52 = load i8*, i8** %channel_sign57, align 8, !tbaa !31
  call void @free(i8* %52) #7
  %53 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color58 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %53, i32 0, i32 24
  %jp2_pclr59 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color58, i32 0, i32 3
  %54 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr59, align 8, !tbaa !28
  %channel_sign60 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %54, i32 0, i32 1
  store i8* null, i8** %channel_sign60, align 8, !tbaa !31
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.54, %if.end.50
  %55 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color62 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %55, i32 0, i32 24
  %jp2_pclr63 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color62, i32 0, i32 3
  %56 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr63, align 8, !tbaa !28
  %channel_size = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %56, i32 0, i32 2
  %57 = load i8*, i8** %channel_size, align 8, !tbaa !33
  %tobool64 = icmp ne i8* %57, null
  br i1 %tobool64, label %if.then.65, label %if.end.72

if.then.65:                                       ; preds = %if.end.61
  %58 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color66 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %58, i32 0, i32 24
  %jp2_pclr67 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color66, i32 0, i32 3
  %59 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr67, align 8, !tbaa !28
  %channel_size68 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %59, i32 0, i32 2
  %60 = load i8*, i8** %channel_size68, align 8, !tbaa !33
  call void @free(i8* %60) #7
  %61 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color69 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %61, i32 0, i32 24
  %jp2_pclr70 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color69, i32 0, i32 3
  %62 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr70, align 8, !tbaa !28
  %channel_size71 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %62, i32 0, i32 2
  store i8* null, i8** %channel_size71, align 8, !tbaa !33
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.65, %if.end.61
  %63 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color73 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %63, i32 0, i32 24
  %jp2_pclr74 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color73, i32 0, i32 3
  %64 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr74, align 8, !tbaa !28
  %entries = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %64, i32 0, i32 0
  %65 = load i32*, i32** %entries, align 8, !tbaa !34
  %tobool75 = icmp ne i32* %65, null
  br i1 %tobool75, label %if.then.76, label %if.end.83

if.then.76:                                       ; preds = %if.end.72
  %66 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color77 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %66, i32 0, i32 24
  %jp2_pclr78 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color77, i32 0, i32 3
  %67 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr78, align 8, !tbaa !28
  %entries79 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %67, i32 0, i32 0
  %68 = load i32*, i32** %entries79, align 8, !tbaa !34
  %69 = bitcast i32* %68 to i8*
  call void @free(i8* %69) #7
  %70 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color80 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %70, i32 0, i32 24
  %jp2_pclr81 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color80, i32 0, i32 3
  %71 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr81, align 8, !tbaa !28
  %entries82 = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %71, i32 0, i32 0
  store i32* null, i32** %entries82, align 8, !tbaa !34
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.76, %if.end.72
  %72 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color84 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %72, i32 0, i32 24
  %jp2_pclr85 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color84, i32 0, i32 3
  %73 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr85, align 8, !tbaa !28
  %74 = bitcast %struct.opj_jp2_pclr* %73 to i8*
  call void @free(i8* %74) #7
  %75 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %color86 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %75, i32 0, i32 24
  %jp2_pclr87 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color86, i32 0, i32 3
  store %struct.opj_jp2_pclr* null, %struct.opj_jp2_pclr** %jp2_pclr87, align 8, !tbaa !28
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.83, %if.end.36
  %76 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_validation_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %76, i32 0, i32 1
  %77 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_validation_list, align 8, !tbaa !93
  %tobool89 = icmp ne %struct.opj_procedure_list* %77, null
  br i1 %tobool89, label %if.then.90, label %if.end.93

if.then.90:                                       ; preds = %if.end.88
  %78 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_validation_list91 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %78, i32 0, i32 1
  %79 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_validation_list91, align 8, !tbaa !93
  call void @opj_procedure_list_destroy(%struct.opj_procedure_list* %79) #6
  %80 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_validation_list92 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %80, i32 0, i32 1
  store %struct.opj_procedure_list* null, %struct.opj_procedure_list** %m_validation_list92, align 8, !tbaa !93
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.90, %if.end.88
  %81 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %81, i32 0, i32 2
  %82 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list, align 8, !tbaa !92
  %tobool94 = icmp ne %struct.opj_procedure_list* %82, null
  br i1 %tobool94, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %if.end.93
  %83 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list96 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %83, i32 0, i32 2
  %84 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list96, align 8, !tbaa !92
  call void @opj_procedure_list_destroy(%struct.opj_procedure_list* %84) #6
  %85 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %m_procedure_list97 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %85, i32 0, i32 2
  store %struct.opj_procedure_list* null, %struct.opj_procedure_list** %m_procedure_list97, align 8, !tbaa !92
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %if.end.93
  %86 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %87 = bitcast %struct.opj_jp2* %86 to i8*
  call void @free(i8* %87) #7
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %entry
  ret void
}

declare void @opj_j2k_destroy(%struct.opj_j2k*) #1

declare void @opj_procedure_list_destroy(%struct.opj_procedure_list*) #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_set_decode_area(%struct.opj_jp2* %p_jp2, %struct.opj_image* %p_image, i32 %p_start_x, i32 %p_start_y, i32 %p_end_x, i32 %p_end_y, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %p_jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_image.addr = alloca %struct.opj_image*, align 8
  %p_start_x.addr = alloca i32, align 4
  %p_start_y.addr = alloca i32, align 4
  %p_end_x.addr = alloca i32, align 4
  %p_end_y.addr = alloca i32, align 4
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_jp2* %p_jp2, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  store i32 %p_start_x, i32* %p_start_x.addr, align 4, !tbaa !5
  store i32 %p_start_y, i32* %p_start_y.addr, align 4, !tbaa !5
  store i32 %p_end_x, i32* %p_end_x.addr, align 4, !tbaa !5
  store i32 %p_end_y, i32* %p_end_y.addr, align 4, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %0, i32 0, i32 0
  %1 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %2 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %3 = load i32, i32* %p_start_x.addr, align 4, !tbaa !5
  %4 = load i32, i32* %p_start_y.addr, align 4, !tbaa !5
  %5 = load i32, i32* %p_end_x.addr, align 4, !tbaa !5
  %6 = load i32, i32* %p_end_y.addr, align 4, !tbaa !5
  %7 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 @opj_j2k_set_decode_area(%struct.opj_j2k* %1, %struct.opj_image* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.opj_event_mgr* %7) #6
  ret i32 %call
}

declare i32 @opj_j2k_set_decode_area(%struct.opj_j2k*, %struct.opj_image*, i32, i32, i32, i32, %struct.opj_event_mgr*) #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_get_tile(%struct.opj_jp2* %p_jp2, %struct.opj_stream_private* %p_stream, %struct.opj_image* %p_image, %struct.opj_event_mgr* %p_manager, i32 %tile_index) #0 {
entry:
  %retval = alloca i32, align 4
  %p_jp2.addr = alloca %struct.opj_jp2*, align 8
  %p_stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_image.addr = alloca %struct.opj_image*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %tile_index.addr = alloca i32, align 4
  store %struct.opj_jp2* %p_jp2, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %p_stream, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  store %struct.opj_image* %p_image, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  store i32 %tile_index, i32* %tile_index.addr, align 4, !tbaa !5
  %0 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_image* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %1, i32 2, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.11, i32 0, i32 0)) #6
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %2, i32 0, i32 0
  %3 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %p_stream.addr, align 8, !tbaa !1
  %5 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %7 = load i32, i32* %tile_index.addr, align 4, !tbaa !5
  %call1 = call i32 @opj_j2k_get_tile(%struct.opj_j2k* %3, %struct.opj_stream_private* %4, %struct.opj_image* %5, %struct.opj_event_mgr* %6, i32 %7) #6
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call4 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %8, i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %10 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %10, i32 0, i32 24
  %11 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call6 = call i32 @opj_jp2_check_color(%struct.opj_image* %9, %struct.opj_jp2_color* %color, %struct.opj_event_mgr* %11) #6
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %12 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %enumcs = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %12, i32 0, i32 12
  %13 = load i32, i32* %enumcs, align 4, !tbaa !52
  %cmp = icmp eq i32 %13, 16
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.9
  %14 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.opj_image, %struct.opj_image* %14, i32 0, i32 5
  store i32 1, i32* %color_space, align 4, !tbaa !53
  br label %if.end.24

if.else:                                          ; preds = %if.end.9
  %15 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %enumcs11 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %15, i32 0, i32 12
  %16 = load i32, i32* %enumcs11, align 4, !tbaa !52
  %cmp12 = icmp eq i32 %16, 17
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.else
  %17 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %color_space14 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %17, i32 0, i32 5
  store i32 2, i32* %color_space14, align 4, !tbaa !53
  br label %if.end.23

if.else.15:                                       ; preds = %if.else
  %18 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %enumcs16 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %18, i32 0, i32 12
  %19 = load i32, i32* %enumcs16, align 4, !tbaa !52
  %cmp17 = icmp eq i32 %19, 18
  br i1 %cmp17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else.15
  %20 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %color_space19 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %20, i32 0, i32 5
  store i32 3, i32* %color_space19, align 4, !tbaa !53
  br label %if.end.22

if.else.20:                                       ; preds = %if.else.15
  %21 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %color_space21 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %21, i32 0, i32 5
  store i32 -1, i32* %color_space21, align 4, !tbaa !53
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.13
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.10
  %22 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %color25 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %22, i32 0, i32 24
  %jp2_cdef = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color25, i32 0, i32 2
  %23 = load %struct.opj_jp2_cdef*, %struct.opj_jp2_cdef** %jp2_cdef, align 8, !tbaa !42
  %tobool26 = icmp ne %struct.opj_jp2_cdef* %23, null
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %24 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %25 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %color28 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %25, i32 0, i32 24
  call void @opj_jp2_apply_cdef(%struct.opj_image* %24, %struct.opj_jp2_color* %color28) #6
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.24
  %26 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %color30 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %26, i32 0, i32 24
  %jp2_pclr = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color30, i32 0, i32 3
  %27 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !28
  %tobool31 = icmp ne %struct.opj_jp2_pclr* %27, null
  br i1 %tobool31, label %if.then.32, label %if.end.41

if.then.32:                                       ; preds = %if.end.29
  %28 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %color33 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %28, i32 0, i32 24
  %jp2_pclr34 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color33, i32 0, i32 3
  %29 = load %struct.opj_jp2_pclr*, %struct.opj_jp2_pclr** %jp2_pclr34, align 8, !tbaa !28
  %cmap = getelementptr inbounds %struct.opj_jp2_pclr, %struct.opj_jp2_pclr* %29, i32 0, i32 3
  %30 = load %struct.opj_jp2_cmap_comp*, %struct.opj_jp2_cmap_comp** %cmap, align 8, !tbaa !37
  %tobool35 = icmp ne %struct.opj_jp2_cmap_comp* %30, null
  br i1 %tobool35, label %if.else.38, label %if.then.36

if.then.36:                                       ; preds = %if.then.32
  %31 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %color37 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %31, i32 0, i32 24
  call void @opj_jp2_free_pclr(%struct.opj_jp2_color* %color37) #6
  br label %if.end.40

if.else.38:                                       ; preds = %if.then.32
  %32 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %33 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %color39 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %33, i32 0, i32 24
  call void @opj_jp2_apply_pclr(%struct.opj_image* %32, %struct.opj_jp2_color* %color39) #6
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.36
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.29
  %34 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %color42 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %34, i32 0, i32 24
  %icc_profile_buf = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color42, i32 0, i32 0
  %35 = load i8*, i8** %icc_profile_buf, align 8, !tbaa !25
  %tobool43 = icmp ne i8* %35, null
  br i1 %tobool43, label %if.then.44, label %if.end.52

if.then.44:                                       ; preds = %if.end.41
  %36 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %color45 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %36, i32 0, i32 24
  %icc_profile_buf46 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color45, i32 0, i32 0
  %37 = load i8*, i8** %icc_profile_buf46, align 8, !tbaa !25
  %38 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %icc_profile_buf47 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %38, i32 0, i32 7
  store i8* %37, i8** %icc_profile_buf47, align 8, !tbaa !55
  %39 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %color48 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %39, i32 0, i32 24
  %icc_profile_len = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color48, i32 0, i32 1
  %40 = load i32, i32* %icc_profile_len, align 4, !tbaa !24
  %41 = load %struct.opj_image*, %struct.opj_image** %p_image.addr, align 8, !tbaa !1
  %icc_profile_len49 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %41, i32 0, i32 8
  store i32 %40, i32* %icc_profile_len49, align 4, !tbaa !56
  %42 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %color50 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %42, i32 0, i32 24
  %icc_profile_buf51 = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color50, i32 0, i32 0
  store i8* null, i8** %icc_profile_buf51, align 8, !tbaa !25
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.44, %if.end.41
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.8, %if.then.3, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare i32 @opj_j2k_get_tile(%struct.opj_j2k*, %struct.opj_stream_private*, %struct.opj_image*, %struct.opj_event_mgr*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.opj_jp2* @opj_jp2_create(i32 %p_is_decoder) #0 {
entry:
  %retval = alloca %struct.opj_jp2*, align 8
  %p_is_decoder.addr = alloca i32, align 4
  %jp2 = alloca %struct.opj_jp2*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %p_is_decoder, i32* %p_is_decoder.addr, align 4, !tbaa !5
  %0 = bitcast %struct.opj_jp2** %jp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %call = call noalias i8* @malloc(i64 176) #7
  %1 = bitcast i8* %call to %struct.opj_jp2*
  store %struct.opj_jp2* %1, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_jp2* %2, null
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %3 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %4 = bitcast %struct.opj_jp2* %3 to i8*
  %call1 = call i8* @memset(i8* %4, i32 0, i64 176) #7
  %5 = load i32, i32* %p_is_decoder.addr, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %call4 = call %struct.opj_j2k* @opj_j2k_create_compress() #6
  %6 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %6, i32 0, i32 0
  store %struct.opj_j2k* %call4, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  br label %if.end

if.else:                                          ; preds = %if.then
  %call5 = call %struct.opj_j2k* @opj_j2k_create_decompress() #6
  %7 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %j2k6 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %7, i32 0, i32 0
  store %struct.opj_j2k* %call5, %struct.opj_j2k** %j2k6, align 8, !tbaa !50
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %8 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %j2k7 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %8, i32 0, i32 0
  %9 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k7, align 8, !tbaa !50
  %cmp = icmp eq %struct.opj_j2k* %9, null
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %10 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  call void @opj_jp2_destroy(%struct.opj_jp2* %10) #6
  store %struct.opj_jp2* null, %struct.opj_jp2** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %11 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %11, i32 0, i32 24
  %icc_profile_buf = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color, i32 0, i32 0
  store i8* null, i8** %icc_profile_buf, align 8, !tbaa !25
  %12 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %color10 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %12, i32 0, i32 24
  %icc_profile_len = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color10, i32 0, i32 1
  store i32 0, i32* %icc_profile_len, align 4, !tbaa !24
  %13 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %color11 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %13, i32 0, i32 24
  %jp2_cdef = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color11, i32 0, i32 2
  store %struct.opj_jp2_cdef* null, %struct.opj_jp2_cdef** %jp2_cdef, align 8, !tbaa !42
  %14 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %color12 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %14, i32 0, i32 24
  %jp2_pclr = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color12, i32 0, i32 3
  store %struct.opj_jp2_pclr* null, %struct.opj_jp2_pclr** %jp2_pclr, align 8, !tbaa !28
  %15 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %color13 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %15, i32 0, i32 24
  %jp2_has_colr = getelementptr inbounds %struct.opj_jp2_color, %struct.opj_jp2_color* %color13, i32 0, i32 4
  store i8 0, i8* %jp2_has_colr, align 1, !tbaa !22
  %call14 = call %struct.opj_procedure_list* @opj_procedure_list_create() #6
  %16 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %m_validation_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %16, i32 0, i32 1
  store %struct.opj_procedure_list* %call14, %struct.opj_procedure_list** %m_validation_list, align 8, !tbaa !93
  %17 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %m_validation_list15 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %17, i32 0, i32 1
  %18 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_validation_list15, align 8, !tbaa !93
  %tobool16 = icmp ne %struct.opj_procedure_list* %18, null
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.9
  %19 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  call void @opj_jp2_destroy(%struct.opj_jp2* %19) #6
  store %struct.opj_jp2* null, %struct.opj_jp2** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.9
  %call19 = call %struct.opj_procedure_list* @opj_procedure_list_create() #6
  %20 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %m_procedure_list = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %20, i32 0, i32 2
  store %struct.opj_procedure_list* %call19, %struct.opj_procedure_list** %m_procedure_list, align 8, !tbaa !92
  %21 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  %m_procedure_list20 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %21, i32 0, i32 2
  %22 = load %struct.opj_procedure_list*, %struct.opj_procedure_list** %m_procedure_list20, align 8, !tbaa !92
  %tobool21 = icmp ne %struct.opj_procedure_list* %22, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.18
  %23 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  call void @opj_jp2_destroy(%struct.opj_jp2* %23) #6
  store %struct.opj_jp2* null, %struct.opj_jp2** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %entry
  %24 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2, align 8, !tbaa !1
  store %struct.opj_jp2* %24, %struct.opj_jp2** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.22, %if.then.17, %if.then.8
  %25 = bitcast %struct.opj_jp2** %jp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = load %struct.opj_jp2*, %struct.opj_jp2** %retval
  ret %struct.opj_jp2* %26
}

declare %struct.opj_j2k* @opj_j2k_create_compress() #1

declare %struct.opj_j2k* @opj_j2k_create_decompress() #1

declare %struct.opj_procedure_list* @opj_procedure_list_create() #1

; Function Attrs: nounwind uwtable
define void @jp2_dump(%struct.opj_jp2* %p_jp2, i32 %flag, %struct._IO_FILE* %out_stream) #0 {
entry:
  %p_jp2.addr = alloca %struct.opj_jp2*, align 8
  %flag.addr = alloca i32, align 4
  %out_stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.opj_jp2* %p_jp2, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  store i32 %flag, i32* %flag.addr, align 4, !tbaa !5
  store %struct._IO_FILE* %out_stream, %struct._IO_FILE** %out_stream.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2544, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.jp2_dump, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %2, i32 0, i32 0
  %3 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %4 = load i32, i32* %flag.addr, align 4, !tbaa !5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %out_stream.addr, align 8, !tbaa !1
  call void @j2k_dump(%struct.opj_j2k* %3, i32 %4, %struct._IO_FILE* %5) #6
  ret void
}

declare void @j2k_dump(%struct.opj_j2k*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.opj_codestream_index* @jp2_get_cstr_index(%struct.opj_jp2* %p_jp2) #0 {
entry:
  %p_jp2.addr = alloca %struct.opj_jp2*, align 8
  store %struct.opj_jp2* %p_jp2, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %0, i32 0, i32 0
  %1 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %call = call %struct.opj_codestream_index* @j2k_get_cstr_index(%struct.opj_j2k* %1) #6
  ret %struct.opj_codestream_index* %call
}

declare %struct.opj_codestream_index* @j2k_get_cstr_index(%struct.opj_j2k*) #1

; Function Attrs: nounwind uwtable
define %struct.opj_codestream_info_v2* @jp2_get_cstr_info(%struct.opj_jp2* %p_jp2) #0 {
entry:
  %p_jp2.addr = alloca %struct.opj_jp2*, align 8
  store %struct.opj_jp2* %p_jp2, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %0, i32 0, i32 0
  %1 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %call = call %struct.opj_codestream_info_v2* @j2k_get_cstr_info(%struct.opj_j2k* %1) #6
  ret %struct.opj_codestream_info_v2* %call
}

declare %struct.opj_codestream_info_v2* @j2k_get_cstr_info(%struct.opj_j2k*) #1

; Function Attrs: nounwind uwtable
define i32 @opj_jp2_set_decoded_resolution_factor(%struct.opj_jp2* %p_jp2, i32 %res_factor, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %p_jp2.addr = alloca %struct.opj_jp2*, align 8
  %res_factor.addr = alloca i32, align 4
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_jp2* %p_jp2, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  store i32 %res_factor, i32* %res_factor.addr, align 4, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %p_jp2.addr, align 8, !tbaa !1
  %j2k = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %0, i32 0, i32 0
  %1 = load %struct.opj_j2k*, %struct.opj_j2k** %j2k, align 8, !tbaa !50
  %2 = load i32, i32* %res_factor.addr, align 4, !tbaa !5
  %3 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 @opj_j2k_set_decoded_resolution_factor(%struct.opj_j2k* %1, i32 %2, %struct.opj_event_mgr* %3) #6
  ret i32 %call
}

declare i32 @opj_j2k_set_decoded_resolution_factor(%struct.opj_j2k*, i32, %struct.opj_event_mgr*) #1

declare void @opj_read_bytes_LE(i8*, i32*, i32) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @opj_procedure_list_add_procedure(%struct.opj_procedure_list*, void ()*) #1

; Function Attrs: nounwind uwtable
define internal i32 @opj_jpip_write_iptr(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %j2k_codestream_exit = alloca i64, align 8
  %l_data_header = alloca [24 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i64* %j2k_codestream_exit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast [24 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2579, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.opj_jpip_write_iptr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_stream_private* %4, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2580, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.opj_jpip_write_iptr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %5, %cond.true.2
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %6, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2581, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.opj_jpip_write_iptr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %7, %cond.true.6
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %call = call i32 @opj_stream_has_seek(%struct.opj_stream_private* %8) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end.8
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end.8
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2582, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.opj_jpip_write_iptr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.11

cond.end.11:                                      ; preds = %9, %cond.true.9
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %call12 = call i64 @opj_stream_tell(%struct.opj_stream_private* %10) #6
  store i64 %call12, i64* %j2k_codestream_exit, align 8, !tbaa !95
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 24, i32 4) #6
  %arraydecay13 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay13, i64 4
  call void @opj_write_bytes_LE(i8* %add.ptr, i32 1768977522, i32 4) #6
  %arraydecay14 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr15 = getelementptr inbounds i8, i8* %arraydecay14, i64 4
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr15, i64 4
  call void @opj_write_double_LE(i8* %add.ptr16, double 0.000000e+00) #6
  %arraydecay17 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr18 = getelementptr inbounds i8, i8* %arraydecay17, i64 8
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr18, i64 8
  call void @opj_write_double_LE(i8* %add.ptr19, double 0.000000e+00) #6
  %11 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %12 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jpip_iptr_offset = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %12, i32 0, i32 20
  %13 = load i64, i64* %jpip_iptr_offset, align 8, !tbaa !96
  %14 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call20 = call i32 @opj_stream_seek(%struct.opj_stream_private* %11, i64 %13, %struct.opj_event_mgr* %14) #6
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.11
  %15 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call22 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %15, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.11
  %16 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %arraydecay23 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call24 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %16, i8* %arraydecay23, i64 24, %struct.opj_event_mgr* %17) #6
  %cmp25 = icmp ne i64 %call24, 24
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end
  %18 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call27 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %18, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end
  %19 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %20 = load i64, i64* %j2k_codestream_exit, align 8, !tbaa !95
  %21 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call29 = call i32 @opj_stream_seek(%struct.opj_stream_private* %19, i64 %20, %struct.opj_event_mgr* %21) #6
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.33, label %if.then.31

if.then.31:                                       ; preds = %if.end.28
  %22 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call32 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %22, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.28
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.31, %if.then.26, %if.then
  %23 = bitcast [24 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 24, i8* %23) #2
  %24 = bitcast i64* %j2k_codestream_exit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_write_jp2c(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %j2k_codestream_exit = alloca i64, align 8
  %l_data_header = alloca [8 x i8], align 1
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i64* %j2k_codestream_exit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1463, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_jp2c, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_stream_private* %4, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1464, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_jp2c, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %5, %cond.true.2
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %6, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1465, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_jp2c, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %7, %cond.true.6
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %call = call i32 @opj_stream_has_seek(%struct.opj_stream_private* %8) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end.8
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end.8
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1466, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_jp2c, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.11

cond.end.11:                                      ; preds = %9, %cond.true.9
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %call12 = call i64 @opj_stream_tell(%struct.opj_stream_private* %10) #6
  store i64 %call12, i64* %j2k_codestream_exit, align 8, !tbaa !95
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %11 = load i64, i64* %j2k_codestream_exit, align 8, !tbaa !95
  %12 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %j2k_codestream_offset = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %12, i32 0, i32 19
  %13 = load i64, i64* %j2k_codestream_offset, align 8, !tbaa !94
  %sub = sub nsw i64 %11, %13
  %conv = trunc i64 %sub to i32
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 %conv, i32 4) #6
  %arraydecay13 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay13, i64 4
  call void @opj_write_bytes_LE(i8* %add.ptr, i32 1785737827, i32 4) #6
  %14 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %15 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %j2k_codestream_offset14 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %15, i32 0, i32 19
  %16 = load i64, i64* %j2k_codestream_offset14, align 8, !tbaa !94
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call15 = call i32 @opj_stream_seek(%struct.opj_stream_private* %14, i64 %16, %struct.opj_event_mgr* %17) #6
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.11
  %18 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call17 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %18, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.11
  %19 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %arraydecay18 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %20 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call19 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %19, i8* %arraydecay18, i64 8, %struct.opj_event_mgr* %20) #6
  %cmp20 = icmp ne i64 %call19, 8
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end
  %21 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call23 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %21, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end
  %22 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %23 = load i64, i64* %j2k_codestream_exit, align 8, !tbaa !95
  %24 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call25 = call i32 @opj_stream_seek(%struct.opj_stream_private* %22, i64 %23, %struct.opj_event_mgr* %24) #6
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %if.end.24
  %25 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call28 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %25, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.24
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.27, %if.then.22, %if.then
  %26 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast i64* %j2k_codestream_exit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jpip_write_cidx(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %j2k_codestream_exit = alloca i64, align 8
  %l_data_header = alloca [24 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i64* %j2k_codestream_exit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast [24 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2653, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.opj_jpip_write_cidx, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_stream_private* %4, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2654, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.opj_jpip_write_cidx, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %5, %cond.true.2
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %6, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2655, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.opj_jpip_write_cidx, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %7, %cond.true.6
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %call = call i32 @opj_stream_has_seek(%struct.opj_stream_private* %8) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end.8
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end.8
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2656, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.opj_jpip_write_cidx, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.11

cond.end.11:                                      ; preds = %9, %cond.true.9
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %call12 = call i64 @opj_stream_tell(%struct.opj_stream_private* %10) #6
  store i64 %call12, i64* %j2k_codestream_exit, align 8, !tbaa !95
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 24, i32 4) #6
  %arraydecay13 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay13, i64 4
  call void @opj_write_bytes_LE(i8* %add.ptr, i32 1667851384, i32 4) #6
  %arraydecay14 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr15 = getelementptr inbounds i8, i8* %arraydecay14, i64 4
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr15, i64 4
  call void @opj_write_double_LE(i8* %add.ptr16, double 0.000000e+00) #6
  %arraydecay17 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr18 = getelementptr inbounds i8, i8* %arraydecay17, i64 8
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr18, i64 8
  call void @opj_write_double_LE(i8* %add.ptr19, double 0.000000e+00) #6
  %11 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %12 = load i64, i64* %j2k_codestream_exit, align 8, !tbaa !95
  %13 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call20 = call i32 @opj_stream_seek(%struct.opj_stream_private* %11, i64 %12, %struct.opj_event_mgr* %13) #6
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.11
  %14 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call22 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %14, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.11
  %15 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %arraydecay23 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %16 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call24 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %15, i8* %arraydecay23, i64 24, %struct.opj_event_mgr* %16) #6
  %cmp25 = icmp ne i64 %call24, 24
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call27 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %17, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %call29 = call i64 @opj_stream_tell(%struct.opj_stream_private* %18) #6
  store i64 %call29, i64* %j2k_codestream_exit, align 8, !tbaa !95
  %19 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %20 = load i64, i64* %j2k_codestream_exit, align 8, !tbaa !95
  %21 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call30 = call i32 @opj_stream_seek(%struct.opj_stream_private* %19, i64 %20, %struct.opj_event_mgr* %21) #6
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %if.end.28
  %22 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call33 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %22, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.28
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.32, %if.then.26, %if.then
  %23 = bitcast [24 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 24, i8* %23) #2
  %24 = bitcast i64* %j2k_codestream_exit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jpip_write_fidx(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %j2k_codestream_exit = alloca i64, align 8
  %l_data_header = alloca [24 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i64* %j2k_codestream_exit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast [24 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2621, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.opj_jpip_write_fidx, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_stream_private* %4, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2622, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.opj_jpip_write_fidx, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %5, %cond.true.2
  %6 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %6, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2623, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.opj_jpip_write_fidx, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %7, %cond.true.6
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %call = call i32 @opj_stream_has_seek(%struct.opj_stream_private* %8) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end.8
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end.8
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2624, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.opj_jpip_write_fidx, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.11

cond.end.11:                                      ; preds = %9, %cond.true.9
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 24, i32 4) #6
  %arraydecay12 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay12, i64 4
  call void @opj_write_bytes_LE(i8* %add.ptr, i32 1718183032, i32 4) #6
  %arraydecay13 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr14 = getelementptr inbounds i8, i8* %arraydecay13, i64 4
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr14, i64 4
  call void @opj_write_double_LE(i8* %add.ptr15, double 0.000000e+00) #6
  %arraydecay16 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr17 = getelementptr inbounds i8, i8* %arraydecay16, i64 8
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr17, i64 8
  call void @opj_write_double_LE(i8* %add.ptr18, double 0.000000e+00) #6
  %10 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %arraydecay19 = getelementptr inbounds [24 x i8], [24 x i8]* %l_data_header, i32 0, i32 0
  %11 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call20 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %10, i8* %arraydecay19, i64 24, %struct.opj_event_mgr* %11) #6
  %cmp21 = icmp ne i64 %call20, 24
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.11
  %12 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call22 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %12, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.11
  %13 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %call23 = call i64 @opj_stream_tell(%struct.opj_stream_private* %13) #6
  store i64 %call23, i64* %j2k_codestream_exit, align 8, !tbaa !95
  %14 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %15 = load i64, i64* %j2k_codestream_exit, align 8, !tbaa !95
  %16 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call24 = call i32 @opj_stream_seek(%struct.opj_stream_private* %14, i64 %15, %struct.opj_event_mgr* %16) #6
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %if.end
  %17 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call27 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %17, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.26, %if.then
  %18 = bitcast [24 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 24, i8* %18) #2
  %19 = bitcast i64* %j2k_codestream_exit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @opj_write_double_LE(i8*, double) #1

declare i32 @opj_stream_seek(%struct.opj_stream_private*, i64, %struct.opj_event_mgr*) #1

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_read_header_procedure(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %stream, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %box = alloca %struct.opj_jp2_box, align 4
  %l_nb_bytes_read = alloca i32, align 4
  %l_current_handler = alloca %struct.opj_jp2_header_handler*, align 8
  %l_last_data_size = alloca i32, align 4
  %l_current_data_size = alloca i32, align 4
  %l_current_data = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %new_current_data = alloca i8*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %stream, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast %struct.opj_jp2_box* %box to i8*
  call void @llvm.lifetime.start(i64 12, i8* %0) #2
  %1 = bitcast i32* %l_nb_bytes_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast %struct.opj_jp2_header_handler** %l_current_handler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %l_last_data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 1024, i32* %l_last_data_size, align 4, !tbaa !5
  %4 = bitcast i32* %l_current_data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i8** %l_current_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  store i8* null, i8** %l_current_data, align 8, !tbaa !1
  %6 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_stream_private* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1771, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_header_procedure, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %7, %cond.true
  %8 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_jp2* %8, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1772, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_header_procedure, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %9, %cond.true.2
  %10 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %10, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1773, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_header_procedure, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %11, %cond.true.6
  %12 = load i32, i32* %l_last_data_size, align 4, !tbaa !5
  %conv = zext i32 %12 to i64
  %cmp9 = icmp uge i64 %conv, -256
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end.8
  br label %cond.end.14

cond.false.12:                                    ; preds = %cond.end.8
  %13 = load i32, i32* %l_last_data_size, align 4, !tbaa !5
  %conv13 = zext i32 %13 to i64
  %call = call noalias i8* @malloc(i64 %conv13) #7
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.12, %cond.true.11
  %cond = phi i8* [ null, %cond.true.11 ], [ %call, %cond.false.12 ]
  store i8* %cond, i8** %l_current_data, align 8, !tbaa !1
  %14 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %cmp15 = icmp eq i8* %14, null
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.14
  %15 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call17 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %15, i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end:                                           ; preds = %cond.end.14
  %16 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %17 = load i32, i32* %l_last_data_size, align 4, !tbaa !5
  %conv18 = zext i32 %17 to i64
  %call19 = call i8* @memset(i8* %16, i32 0, i64 %conv18) #7
  br label %while.cond

while.cond:                                       ; preds = %if.end.90, %if.end
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %19 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call20 = call i32 @opj_jp2_read_boxhdr(%struct.opj_jp2_box* %box, i32* %l_nb_bytes_read, %struct.opj_stream_private* %18, %struct.opj_event_mgr* %19) #6
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %type = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %box, i32 0, i32 1
  %20 = load i32, i32* %type, align 4, !tbaa !16
  %cmp21 = icmp eq i32 %20, 1785737827
  br i1 %cmp21, label %if.then.23, label %if.else.28

if.then.23:                                       ; preds = %while.body
  %21 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jp2_state = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %21, i32 0, i32 22
  %22 = load i32, i32* %jp2_state, align 4, !tbaa !7
  %and = and i32 %22, 4
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then.23
  %23 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jp2_state26 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %23, i32 0, i32 22
  %24 = load i32, i32* %jp2_state26, align 4, !tbaa !7
  %or = or i32 %24, 8
  store i32 %or, i32* %jp2_state26, align 4, !tbaa !7
  %25 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  call void @free(i8* %25) #7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.else:                                          ; preds = %if.then.23
  %26 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call27 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %26, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i32 0, i32 0)) #6
  %27 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  call void @free(i8* %27) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.else.28:                                       ; preds = %while.body
  %length = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %box, i32 0, i32 0
  %28 = load i32, i32* %length, align 4, !tbaa !14
  %cmp29 = icmp eq i32 %28, 0
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.else.28
  %29 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call32 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %29, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i32 0, i32 0)) #6
  %30 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  call void @free(i8* %30) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.else.33:                                       ; preds = %if.else.28
  %length34 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %box, i32 0, i32 0
  %31 = load i32, i32* %length34, align 4, !tbaa !14
  %32 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %cmp35 = icmp ult i32 %31, %32
  br i1 %cmp35, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %if.else.33
  %33 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %length38 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %box, i32 0, i32 0
  %34 = load i32, i32* %length38, align 4, !tbaa !14
  %type39 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %box, i32 0, i32 1
  %35 = load i32, i32* %type39, align 4, !tbaa !16
  %call40 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %33, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i32 0, i32 0), i32 %34, i32 %35) #6
  %36 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  call void @free(i8* %36) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.41:                                        ; preds = %if.else.33
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42
  %type44 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %box, i32 0, i32 1
  %37 = load i32, i32* %type44, align 4, !tbaa !16
  %call45 = call %struct.opj_jp2_header_handler* @opj_jp2_find_handler(i32 %37) #6
  store %struct.opj_jp2_header_handler* %call45, %struct.opj_jp2_header_handler** %l_current_handler, align 8, !tbaa !1
  %length46 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %box, i32 0, i32 0
  %38 = load i32, i32* %length46, align 4, !tbaa !14
  %39 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %sub = sub i32 %38, %39
  store i32 %sub, i32* %l_current_data_size, align 4, !tbaa !5
  %40 = load %struct.opj_jp2_header_handler*, %struct.opj_jp2_header_handler** %l_current_handler, align 8, !tbaa !1
  %cmp47 = icmp ne %struct.opj_jp2_header_handler* %40, null
  br i1 %cmp47, label %if.then.49, label %if.else.79

if.then.49:                                       ; preds = %if.end.43
  %41 = load i32, i32* %l_current_data_size, align 4, !tbaa !5
  %42 = load i32, i32* %l_last_data_size, align 4, !tbaa !5
  %cmp50 = icmp ugt i32 %41, %42
  br i1 %cmp50, label %if.then.52, label %if.end.66

if.then.52:                                       ; preds = %if.then.49
  %43 = bitcast i8** %new_current_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #2
  %44 = load i32, i32* %l_current_data_size, align 4, !tbaa !5
  %conv53 = zext i32 %44 to i64
  %cmp54 = icmp uge i64 %conv53, -256
  br i1 %cmp54, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %if.then.52
  br label %cond.end.60

cond.false.57:                                    ; preds = %if.then.52
  %45 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %46 = load i32, i32* %l_current_data_size, align 4, !tbaa !5
  %conv58 = zext i32 %46 to i64
  %call59 = call i8* @realloc(i8* %45, i64 %conv58) #7
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.57, %cond.true.56
  %cond61 = phi i8* [ null, %cond.true.56 ], [ %call59, %cond.false.57 ]
  store i8* %cond61, i8** %new_current_data, align 8, !tbaa !1
  %47 = load i8*, i8** %new_current_data, align 8, !tbaa !1
  %tobool62 = icmp ne i8* %47, null
  br i1 %tobool62, label %if.end.65, label %if.then.63

if.then.63:                                       ; preds = %cond.end.60
  %48 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  call void @free(i8* %48) #7
  %49 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call64 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %49, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.47, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %cond.end.60
  %50 = load i8*, i8** %new_current_data, align 8, !tbaa !1
  store i8* %50, i8** %l_current_data, align 8, !tbaa !1
  %51 = load i32, i32* %l_current_data_size, align 4, !tbaa !5
  store i32 %51, i32* %l_last_data_size, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.65, %if.then.63
  %52 = bitcast i8** %new_current_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.91 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.66

if.end.66:                                        ; preds = %cleanup.cont, %if.then.49
  %53 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %54 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %55 = load i32, i32* %l_current_data_size, align 4, !tbaa !5
  %conv67 = zext i32 %55 to i64
  %56 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call68 = call i64 @opj_stream_read_data(%struct.opj_stream_private* %53, i8* %54, i64 %conv67, %struct.opj_event_mgr* %56) #6
  %conv69 = trunc i64 %call68 to i32
  store i32 %conv69, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %57 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %58 = load i32, i32* %l_current_data_size, align 4, !tbaa !5
  %cmp70 = icmp ne i32 %57, %58
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.66
  %59 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call73 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %59, i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.48, i32 0, i32 0)) #6
  %60 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  call void @free(i8* %60) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.74:                                        ; preds = %if.end.66
  %61 = load %struct.opj_jp2_header_handler*, %struct.opj_jp2_header_handler** %l_current_handler, align 8, !tbaa !1
  %handler = getelementptr inbounds %struct.opj_jp2_header_handler, %struct.opj_jp2_header_handler* %61, i32 0, i32 1
  %62 = load i32 (%struct.opj_jp2*, i8*, i32, %struct.opj_event_mgr*)*, i32 (%struct.opj_jp2*, i8*, i32, %struct.opj_event_mgr*)** %handler, align 8, !tbaa !17
  %63 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %64 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  %65 = load i32, i32* %l_current_data_size, align 4, !tbaa !5
  %66 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call75 = call i32 %62(%struct.opj_jp2* %63, i8* %64, i32 %65, %struct.opj_event_mgr* %66) #6
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %if.end.74
  %67 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  call void @free(i8* %67) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.78:                                        ; preds = %if.end.74
  br label %if.end.90

if.else.79:                                       ; preds = %if.end.43
  %68 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jp2_state80 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %68, i32 0, i32 22
  %69 = load i32, i32* %jp2_state80, align 4, !tbaa !7
  %or81 = or i32 %69, 2147483647
  store i32 %or81, i32* %jp2_state80, align 4, !tbaa !7
  %70 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %71 = load i32, i32* %l_current_data_size, align 4, !tbaa !5
  %conv82 = zext i32 %71 to i64
  %72 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call83 = call i64 @opj_stream_skip(%struct.opj_stream_private* %70, i64 %conv82, %struct.opj_event_mgr* %72) #6
  %73 = load i32, i32* %l_current_data_size, align 4, !tbaa !5
  %conv84 = zext i32 %73 to i64
  %cmp85 = icmp ne i64 %call83, %conv84
  br i1 %cmp85, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.else.79
  %74 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call88 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %74, i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.49, i32 0, i32 0)) #6
  %75 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  call void @free(i8* %75) #7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.89:                                        ; preds = %if.else.79
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.78
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %76 = load i8*, i8** %l_current_data, align 8, !tbaa !1
  call void @free(i8* %76) #7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

cleanup.91:                                       ; preds = %while.end, %if.then.87, %if.then.77, %if.then.72, %cleanup, %if.then.37, %if.then.31, %if.else, %if.then.25, %if.then
  %77 = bitcast i8** %l_current_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  %78 = bitcast i32* %l_current_data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast i32* %l_last_data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast %struct.opj_jp2_header_handler** %l_current_handler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  %81 = bitcast i32* %l_nb_bytes_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast %struct.opj_jp2_box* %box to i8*
  call void @llvm.lifetime.end(i64 12, i8* %82) #2
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_read_boxhdr(%struct.opj_jp2_box* %box, i32* %p_number_bytes_read, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %box.addr = alloca %struct.opj_jp2_box*, align 8
  %p_number_bytes_read.addr = alloca i32*, align 8
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_data_header = alloca [8 x i8], align 1
  %cleanup.dest.slot = alloca i32
  %l_xl_part_size = alloca i32, align 4
  %l_nb_bytes_read = alloca i32, align 4
  store %struct.opj_jp2_box* %box, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  store i32* %p_number_bytes_read, i32** %p_number_bytes_read.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_stream_private* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 440, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_boxhdr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_jp2_box* %3, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 441, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_boxhdr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %4, %cond.true.2
  %5 = load i32*, i32** %p_number_bytes_read.addr, align 8, !tbaa !1
  %cmp5 = icmp ne i32* %5, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 442, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_boxhdr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %6, %cond.true.6
  %7 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp9 = icmp ne %struct.opj_event_mgr* %7, null
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end.8
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end.8
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 443, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_boxhdr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.12

cond.end.12:                                      ; preds = %8, %cond.true.10
  %9 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %10 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i64 @opj_stream_read_data(%struct.opj_stream_private* %9, i8* %arraydecay, i64 8, %struct.opj_event_mgr* %10) #6
  %conv = trunc i64 %call to i32
  %11 = load i32*, i32** %p_number_bytes_read.addr, align 8, !tbaa !1
  store i32 %conv, i32* %11, align 4, !tbaa !5
  %12 = load i32*, i32** %p_number_bytes_read.addr, align 8, !tbaa !1
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %cmp13 = icmp ne i32 %13, 8
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

if.end:                                           ; preds = %cond.end.12
  %arraydecay15 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %14 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %14, i32 0, i32 0
  call void @opj_read_bytes_LE(i8* %arraydecay15, i32* %length, i32 4) #6
  %arraydecay16 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay16, i64 4
  %15 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %15, i32 0, i32 1
  call void @opj_read_bytes_LE(i8* %add.ptr, i32* %type, i32 4) #6
  %16 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  %length17 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %16, i32 0, i32 0
  %17 = load i32, i32* %length17, align 4, !tbaa !14
  %cmp18 = icmp eq i32 %17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end
  %18 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %call21 = call i64 @opj_stream_get_number_byte_left(%struct.opj_stream_private* %18) #6
  %conv22 = trunc i64 %call21 to i32
  %19 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  %length23 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %19, i32 0, i32 0
  store i32 %conv22, i32* %length23, align 4, !tbaa !14
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

if.end.24:                                        ; preds = %if.end
  %20 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  %length25 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %20, i32 0, i32 0
  %21 = load i32, i32* %length25, align 4, !tbaa !14
  %cmp26 = icmp eq i32 %21, 1
  br i1 %cmp26, label %if.then.28, label %if.end.50

if.then.28:                                       ; preds = %if.end.24
  %22 = bitcast i32* %l_xl_part_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = bitcast i32* %l_nb_bytes_read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %arraydecay29 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %25 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call30 = call i64 @opj_stream_read_data(%struct.opj_stream_private* %24, i8* %arraydecay29, i64 8, %struct.opj_event_mgr* %25) #6
  %conv31 = trunc i64 %call30 to i32
  store i32 %conv31, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %26 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %cmp32 = icmp ne i32 %26, 8
  br i1 %cmp32, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.then.28
  %27 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %cmp35 = icmp ugt i32 %27, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.34
  %28 = load i32, i32* %l_nb_bytes_read, align 4, !tbaa !5
  %29 = load i32*, i32** %p_number_bytes_read.addr, align 8, !tbaa !1
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %add = add i32 %30, %28
  store i32 %add, i32* %29, align 4, !tbaa !5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.then.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.then.28
  %31 = load i32*, i32** %p_number_bytes_read.addr, align 8, !tbaa !1
  store i32 16, i32* %31, align 4, !tbaa !5
  %arraydecay40 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  call void @opj_read_bytes_LE(i8* %arraydecay40, i32* %l_xl_part_size, i32 4) #6
  %32 = load i32, i32* %l_xl_part_size, align 4, !tbaa !5
  %cmp41 = icmp ne i32 %32, 0
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.39
  %33 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call44 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %33, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.end.39
  %arraydecay46 = getelementptr inbounds [8 x i8], [8 x i8]* %l_data_header, i32 0, i32 0
  %add.ptr47 = getelementptr inbounds i8, i8* %arraydecay46, i64 4
  %34 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  %length48 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %34, i32 0, i32 0
  call void @opj_read_bytes_LE(i8* %add.ptr47, i32* %length48, i32 4) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then.43, %if.end.38
  %35 = bitcast i32* %l_nb_bytes_read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %l_xl_part_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.51 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.50

if.end.50:                                        ; preds = %cleanup.cont, %if.end.24
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

cleanup.51:                                       ; preds = %if.end.50, %cleanup, %if.then.20, %if.then
  %37 = bitcast [8 x i8]* %l_data_header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal %struct.opj_jp2_header_handler* @opj_jp2_find_handler(i32 %p_id) #0 {
entry:
  %retval = alloca %struct.opj_jp2_header_handler*, align 8
  %p_id.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %l_handler_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %p_id, i32* %p_id.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %l_handler_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 3, i32* %l_handler_size, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %3 = load i32, i32* %l_handler_size, align 4, !tbaa !5
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x %struct.opj_jp2_header_handler], [3 x %struct.opj_jp2_header_handler]* @jp2_header, i32 0, i64 %idxprom
  %id = getelementptr inbounds %struct.opj_jp2_header_handler, %struct.opj_jp2_header_handler* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %id, align 4, !tbaa !97
  %6 = load i32, i32* %p_id.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = zext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [3 x %struct.opj_jp2_header_handler], [3 x %struct.opj_jp2_header_handler]* @jp2_header, i32 0, i64 %idxprom2
  store %struct.opj_jp2_header_handler* %arrayidx3, %struct.opj_jp2_header_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.opj_jp2_header_handler* null, %struct.opj_jp2_header_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %9 = bitcast i32* %l_handler_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = load %struct.opj_jp2_header_handler*, %struct.opj_jp2_header_handler** %retval
  ret %struct.opj_jp2_header_handler* %11
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #4

declare i64 @opj_stream_read_data(%struct.opj_stream_private*, i8*, i64, %struct.opj_event_mgr*) #1

declare i64 @opj_stream_get_number_byte_left(%struct.opj_stream_private*) #1

declare i32 @opj_procedure_list_get_nb_procedures(%struct.opj_procedure_list*) #1

declare void ()** @opj_procedure_list_get_first_procedure(%struct.opj_procedure_list*) #1

declare void @opj_procedure_list_clear(%struct.opj_procedure_list*) #1

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_read_boxhdr_char(%struct.opj_jp2_box* %box, i8* %p_data, i32* %p_number_bytes_read, i32 %p_box_max_size, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %box.addr = alloca %struct.opj_jp2_box*, align 8
  %p_data.addr = alloca i8*, align 8
  %p_number_bytes_read.addr = alloca i32*, align 8
  %p_box_max_size.addr = alloca i32, align 4
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %l_xl_part_size = alloca i32, align 4
  store %struct.opj_jp2_box* %box, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  store i8* %p_data, i8** %p_data.addr, align 8, !tbaa !1
  store i32* %p_number_bytes_read, i32** %p_number_bytes_read.addr, align 8, !tbaa !1
  store i32 %p_box_max_size, i32* %p_box_max_size.addr, align 4, !tbaa !5
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i32* %l_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2184, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_boxhdr_char, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_jp2_box* %3, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2185, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_boxhdr_char, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %4, %cond.true.2
  %5 = load i32*, i32** %p_number_bytes_read.addr, align 8, !tbaa !1
  %cmp5 = icmp ne i32* %5, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2186, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_boxhdr_char, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %6, %cond.true.6
  %7 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp9 = icmp ne %struct.opj_event_mgr* %7, null
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end.8
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end.8
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2187, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @__PRETTY_FUNCTION__.opj_jp2_read_boxhdr_char, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.12

cond.end.12:                                      ; preds = %8, %cond.true.10
  %9 = load i32, i32* %p_box_max_size.addr, align 4, !tbaa !5
  %cmp13 = icmp ult i32 %9, 8
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.12
  %10 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %10, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.65, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

if.end:                                           ; preds = %cond.end.12
  %11 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %11, i32* %l_value, i32 4) #6
  %12 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 4
  store i8* %add.ptr, i8** %p_data.addr, align 8, !tbaa !1
  %13 = load i32, i32* %l_value, align 4, !tbaa !5
  %14 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %14, i32 0, i32 0
  store i32 %13, i32* %length, align 4, !tbaa !14
  %15 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %15, i32* %l_value, i32 4) #6
  %16 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %add.ptr14, i8** %p_data.addr, align 8, !tbaa !1
  %17 = load i32, i32* %l_value, align 4, !tbaa !5
  %18 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %18, i32 0, i32 1
  store i32 %17, i32* %type, align 4, !tbaa !16
  %19 = load i32*, i32** %p_number_bytes_read.addr, align 8, !tbaa !1
  store i32 8, i32* %19, align 4, !tbaa !5
  %20 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  %length15 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %20, i32 0, i32 0
  %21 = load i32, i32* %length15, align 4, !tbaa !14
  %cmp16 = icmp eq i32 %21, 1
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end
  %22 = bitcast i32* %l_xl_part_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load i32, i32* %p_box_max_size.addr, align 4, !tbaa !5
  %cmp18 = icmp ult i32 %23, 16
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.17
  %24 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call20 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %24, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.66, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.17
  %25 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %25, i32* %l_xl_part_size, i32 4) #6
  %26 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds i8, i8* %26, i64 4
  store i8* %add.ptr22, i8** %p_data.addr, align 8, !tbaa !1
  %27 = load i32*, i32** %p_number_bytes_read.addr, align 8, !tbaa !1
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %add = add i32 %28, 4
  store i32 %add, i32* %27, align 4, !tbaa !5
  %29 = load i32, i32* %l_xl_part_size, align 4, !tbaa !5
  %cmp23 = icmp ne i32 %29, 0
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.21
  %30 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call25 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %30, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.52, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.21
  %31 = load i8*, i8** %p_data.addr, align 8, !tbaa !1
  call void @opj_read_bytes_LE(i8* %31, i32* %l_value, i32 4) #6
  %32 = load i32*, i32** %p_number_bytes_read.addr, align 8, !tbaa !1
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %add27 = add i32 %33, 4
  store i32 %add27, i32* %32, align 4, !tbaa !5
  %34 = load i32, i32* %l_value, align 4, !tbaa !5
  %35 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  %length28 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %35, i32 0, i32 0
  store i32 %34, i32* %length28, align 4, !tbaa !14
  %36 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  %length29 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %36, i32 0, i32 0
  %37 = load i32, i32* %length29, align 4, !tbaa !14
  %cmp30 = icmp eq i32 %37, 0
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.26
  %38 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call32 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %38, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.end.26
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.31, %if.then.24, %if.then.19
  %39 = bitcast i32* %l_xl_part_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.40 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.39

if.else:                                          ; preds = %if.end
  %40 = load %struct.opj_jp2_box*, %struct.opj_jp2_box** %box.addr, align 8, !tbaa !1
  %length34 = getelementptr inbounds %struct.opj_jp2_box, %struct.opj_jp2_box* %40, i32 0, i32 0
  %41 = load i32, i32* %length34, align 4, !tbaa !14
  %cmp35 = icmp eq i32 %41, 0
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.else
  %42 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call37 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %42, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.45, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

if.end.38:                                        ; preds = %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %cleanup.cont
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

cleanup.40:                                       ; preds = %if.end.39, %if.then.36, %cleanup, %if.then
  %43 = bitcast i32* %l_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal %struct.opj_jp2_header_handler* @opj_jp2_img_find_handler(i32 %p_id) #0 {
entry:
  %retval = alloca %struct.opj_jp2_header_handler*, align 8
  %p_id.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %l_handler_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %p_id, i32* %p_id.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %l_handler_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 6, i32* %l_handler_size, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %3 = load i32, i32* %l_handler_size, align 4, !tbaa !5
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.opj_jp2_header_handler], [6 x %struct.opj_jp2_header_handler]* @jp2_img_header, i32 0, i64 %idxprom
  %id = getelementptr inbounds %struct.opj_jp2_header_handler, %struct.opj_jp2_header_handler* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %id, align 4, !tbaa !97
  %6 = load i32, i32* %p_id.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = zext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [6 x %struct.opj_jp2_header_handler], [6 x %struct.opj_jp2_header_handler]* @jp2_img_header, i32 0, i64 %idxprom2
  store %struct.opj_jp2_header_handler* %arrayidx3, %struct.opj_jp2_header_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.opj_jp2_header_handler* null, %struct.opj_jp2_header_handler** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %9 = bitcast i32* %l_handler_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = load %struct.opj_jp2_header_handler*, %struct.opj_jp2_header_handler** %retval
  ret %struct.opj_jp2_header_handler* %11
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_write_jp(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %l_signature_data = alloca [12 x i8], align 1
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast [12 x i8]* %l_signature_data to i8*
  call void @llvm.lifetime.start(i64 12, i8* %0) #2
  %1 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_stream_private* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1500, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_jp, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_jp2* %3, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1501, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_jp, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %4, %cond.true.2
  %5 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %5, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1502, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_jp, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %6, %cond.true.6
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %l_signature_data, i32 0, i32 0
  call void @opj_write_bytes_LE(i8* %arraydecay, i32 12, i32 4) #6
  %arraydecay9 = getelementptr inbounds [12 x i8], [12 x i8]* %l_signature_data, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay9, i64 4
  call void @opj_write_bytes_LE(i8* %add.ptr, i32 1783636000, i32 4) #6
  %arraydecay10 = getelementptr inbounds [12 x i8], [12 x i8]* %l_signature_data, i32 0, i32 0
  %add.ptr11 = getelementptr inbounds i8, i8* %arraydecay10, i64 8
  call void @opj_write_bytes_LE(i8* %add.ptr11, i32 218793738, i32 4) #6
  %7 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %arraydecay12 = getelementptr inbounds [12 x i8], [12 x i8]* %l_signature_data, i32 0, i32 0
  %8 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call = call i64 @opj_stream_write_data(%struct.opj_stream_private* %7, i8* %arraydecay12, i64 12, %struct.opj_event_mgr* %8) #6
  %cmp13 = icmp ne i64 %call, 12
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.8
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast [12 x i8]* %l_signature_data to i8*
  call void @llvm.lifetime.end(i64 12, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jp2_write_ftyp(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %cio, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %cio.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  %i = alloca i32, align 4
  %l_ftyp_size = alloca i32, align 4
  %l_ftyp_data = alloca i8*, align 8
  %l_current_data_ptr = alloca i8*, align 8
  %l_result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %cio, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %l_ftyp_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcl = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %2, i32 0, i32 16
  %3 = load i32, i32* %numcl, align 4, !tbaa !11
  %mul = mul i32 4, %3
  %add = add i32 16, %mul
  store i32 %add, i32* %l_ftyp_size, align 4, !tbaa !5
  %4 = bitcast i8** %l_ftyp_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i8** %l_current_data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %l_result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_stream_private* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1413, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_ftyp, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_jp2* %9, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1414, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_ftyp, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %10, %cond.true.2
  %11 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %11, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 1415, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_jp2_write_ftyp, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %12, %cond.true.6
  %13 = load i32, i32* %l_ftyp_size, align 4, !tbaa !5
  %conv = zext i32 %13 to i64
  %cmp9 = icmp uge i64 %conv, -256
  br i1 %cmp9, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %cond.end.8
  br label %cond.end.14

cond.false.12:                                    ; preds = %cond.end.8
  %14 = load i32, i32* %l_ftyp_size, align 4, !tbaa !5
  %conv13 = zext i32 %14 to i64
  %call = call noalias i8* @malloc(i64 %conv13) #7
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.12, %cond.true.11
  %cond = phi i8* [ null, %cond.true.11 ], [ %call, %cond.false.12 ]
  store i8* %cond, i8** %l_ftyp_data, align 8, !tbaa !1
  %15 = load i8*, i8** %l_ftyp_data, align 8, !tbaa !1
  %cmp15 = icmp eq i8* %15, null
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.14
  %16 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call17 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %16, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i32 0, i32 0)) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.14
  %17 = load i8*, i8** %l_ftyp_data, align 8, !tbaa !1
  %18 = load i32, i32* %l_ftyp_size, align 4, !tbaa !5
  %conv18 = zext i32 %18 to i64
  %call19 = call i8* @memset(i8* %17, i32 0, i64 %conv18) #7
  %19 = load i8*, i8** %l_ftyp_data, align 8, !tbaa !1
  store i8* %19, i8** %l_current_data_ptr, align 8, !tbaa !1
  %20 = load i8*, i8** %l_current_data_ptr, align 8, !tbaa !1
  %21 = load i32, i32* %l_ftyp_size, align 4, !tbaa !5
  call void @opj_write_bytes_LE(i8* %20, i32 %21, i32 4) #6
  %22 = load i8*, i8** %l_current_data_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 4
  store i8* %add.ptr, i8** %l_current_data_ptr, align 8, !tbaa !1
  %23 = load i8*, i8** %l_current_data_ptr, align 8, !tbaa !1
  call void @opj_write_bytes_LE(i8* %23, i32 1718909296, i32 4) #6
  %24 = load i8*, i8** %l_current_data_ptr, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds i8, i8* %24, i64 4
  store i8* %add.ptr20, i8** %l_current_data_ptr, align 8, !tbaa !1
  %25 = load i8*, i8** %l_current_data_ptr, align 8, !tbaa !1
  %26 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %brand = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %26, i32 0, i32 14
  %27 = load i32, i32* %brand, align 4, !tbaa !83
  call void @opj_write_bytes_LE(i8* %25, i32 %27, i32 4) #6
  %28 = load i8*, i8** %l_current_data_ptr, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds i8, i8* %28, i64 4
  store i8* %add.ptr21, i8** %l_current_data_ptr, align 8, !tbaa !1
  %29 = load i8*, i8** %l_current_data_ptr, align 8, !tbaa !1
  %30 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %minversion = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %30, i32 0, i32 15
  %31 = load i32, i32* %minversion, align 4, !tbaa !84
  call void @opj_write_bytes_LE(i8* %29, i32 %31, i32 4) #6
  %32 = load i8*, i8** %l_current_data_ptr, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds i8, i8* %32, i64 4
  store i8* %add.ptr22, i8** %l_current_data_ptr, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %34 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %numcl23 = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %34, i32 0, i32 16
  %35 = load i32, i32* %numcl23, align 4, !tbaa !11
  %cmp24 = icmp ult i32 %33, %35
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i8*, i8** %l_current_data_ptr, align 8, !tbaa !1
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %37 to i64
  %38 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cl = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %38, i32 0, i32 17
  %39 = load i32*, i32** %cl, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i32, i32* %39, i64 %idxprom
  %40 = load i32, i32* %arrayidx, align 4, !tbaa !5
  call void @opj_write_bytes_LE(i8* %36, i32 %40, i32 4) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %41, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct.opj_stream_private*, %struct.opj_stream_private** %cio.addr, align 8, !tbaa !1
  %43 = load i8*, i8** %l_ftyp_data, align 8, !tbaa !1
  %44 = load i32, i32* %l_ftyp_size, align 4, !tbaa !5
  %conv26 = zext i32 %44 to i64
  %45 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call27 = call i64 @opj_stream_write_data(%struct.opj_stream_private* %42, i8* %43, i64 %conv26, %struct.opj_event_mgr* %45) #6
  %46 = load i32, i32* %l_ftyp_size, align 4, !tbaa !5
  %conv28 = zext i32 %46 to i64
  %cmp29 = icmp eq i64 %call27, %conv28
  %conv30 = zext i1 %cmp29 to i32
  store i32 %conv30, i32* %l_result, align 4, !tbaa !5
  %47 = load i32, i32* %l_result, align 4, !tbaa !5
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %if.end.33, label %if.then.31

if.then.31:                                       ; preds = %for.end
  %48 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call32 = call i32 (%struct.opj_event_mgr*, i32, i8*, ...) @opj_event_msg(%struct.opj_event_mgr* %48, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i32 0, i32 0)) #6
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %for.end
  %49 = load i8*, i8** %l_ftyp_data, align 8, !tbaa !1
  call void @free(i8* %49) #7
  %50 = load i32, i32* %l_result, align 4, !tbaa !5
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then
  %51 = bitcast i32* %l_result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i8** %l_current_data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = bitcast i8** %l_ftyp_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = bitcast i32* %l_ftyp_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_jpip_skip_iptr(%struct.opj_jp2* %jp2, %struct.opj_stream_private* %stream, %struct.opj_event_mgr* %p_manager) #0 {
entry:
  %retval = alloca i32, align 4
  %jp2.addr = alloca %struct.opj_jp2*, align 8
  %stream.addr = alloca %struct.opj_stream_private*, align 8
  %p_manager.addr = alloca %struct.opj_event_mgr*, align 8
  store %struct.opj_jp2* %jp2, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  store %struct.opj_stream_private* %stream, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  store %struct.opj_event_mgr* %p_manager, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %0 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_jp2* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2093, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_jpip_skip_iptr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_stream_private* %2, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2094, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_jpip_skip_iptr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %3, %cond.true.2
  %4 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.opj_event_mgr* %4, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 2095, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.opj_jpip_skip_iptr, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %5, %cond.true.6
  %6 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %call = call i64 @opj_stream_tell(%struct.opj_stream_private* %6) #6
  %7 = load %struct.opj_jp2*, %struct.opj_jp2** %jp2.addr, align 8, !tbaa !1
  %jpip_iptr_offset = getelementptr inbounds %struct.opj_jp2, %struct.opj_jp2* %7, i32 0, i32 20
  store i64 %call, i64* %jpip_iptr_offset, align 8, !tbaa !96
  %8 = load %struct.opj_stream_private*, %struct.opj_stream_private** %stream.addr, align 8, !tbaa !1
  %9 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %p_manager.addr, align 8, !tbaa !1
  %call9 = call i64 @opj_stream_skip(%struct.opj_stream_private* %8, i64 24, %struct.opj_event_mgr* %9) #6
  %cmp10 = icmp ne i64 %call9, 24
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noreturn nounwind }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 116}
!8 = !{!"opj_jp2", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !2, i64 80, !2, i64 88, !9, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !6, i64 120, !10, i64 128, !6, i64 168}
!9 = !{!"long", !3, i64 0}
!10 = !{!"opj_jp2_color", !2, i64 0, !6, i64 8, !2, i64 16, !2, i64 24, !3, i64 32}
!11 = !{!8, !6, i64 76}
!12 = !{!8, !2, i64 80}
!13 = !{!8, !6, i64 120}
!14 = !{!15, !6, i64 0}
!15 = !{!"opj_jp2_box", !6, i64 0, !6, i64 4, !6, i64 8}
!16 = !{!15, !6, i64 4}
!17 = !{!18, !2, i64 8}
!18 = !{!"opj_jp2_header_handler", !6, i64 0, !2, i64 8}
!19 = !{!8, !6, i64 32}
!20 = !{!8, !2, i64 88}
!21 = !{!8, !6, i64 40}
!22 = !{!8, !3, i64 160}
!23 = !{!8, !6, i64 52}
!24 = !{!8, !6, i64 136}
!25 = !{!8, !2, i64 128}
!26 = !{!3, !3, i64 0}
!27 = !{!8, !6, i64 36}
!28 = !{!8, !2, i64 152}
!29 = !{!30, !30, i64 0}
!30 = !{!"short", !3, i64 0}
!31 = !{!32, !2, i64 8}
!32 = !{!"opj_jp2_pclr", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !30, i64 32, !3, i64 34}
!33 = !{!32, !2, i64 16}
!34 = !{!32, !2, i64 0}
!35 = !{!32, !30, i64 32}
!36 = !{!32, !3, i64 34}
!37 = !{!32, !2, i64 24}
!38 = !{!39, !30, i64 0}
!39 = !{!"opj_jp2_cmap_comp", !30, i64 0, !3, i64 2, !3, i64 3}
!40 = !{!39, !3, i64 2}
!41 = !{!39, !3, i64 3}
!42 = !{!8, !2, i64 144}
!43 = !{!44, !2, i64 0}
!44 = !{!"opj_jp2_cdef", !2, i64 0, !30, i64 8}
!45 = !{!44, !30, i64 8}
!46 = !{!47, !30, i64 0}
!47 = !{!"opj_jp2_cdef_info", !30, i64 0, !30, i64 2, !30, i64 4}
!48 = !{!47, !30, i64 2}
!49 = !{!47, !30, i64 4}
!50 = !{!8, !2, i64 0}
!51 = !{!8, !6, i64 168}
!52 = !{!8, !6, i64 60}
!53 = !{!54, !3, i64 20}
!54 = !{!"opj_image", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !3, i64 20, !2, i64 24, !2, i64 32, !6, i64 40}
!55 = !{!54, !2, i64 32}
!56 = !{!54, !6, i64 40}
!57 = !{!10, !2, i64 16}
!58 = !{!54, !6, i64 16}
!59 = !{!10, !2, i64 24}
!60 = !{!54, !2, i64 24}
!61 = !{!62, !30, i64 56}
!62 = !{!"opj_image_comp", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !2, i64 48, !30, i64 56}
!63 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !5, i64 48, i64 8, !1, i64 56, i64 2, !29}
!64 = !{!62, !2, i64 48}
!65 = !{!62, !6, i64 8}
!66 = !{!62, !6, i64 12}
!67 = !{!62, !6, i64 24}
!68 = !{!62, !6, i64 32}
!69 = !{!70, !2, i64 0}
!70 = !{!"opj_jp2_img_header_writer_handler", !2, i64 0, !2, i64 8, !6, i64 16}
!71 = !{!70, !2, i64 8}
!72 = !{!70, !6, i64 16}
!73 = !{!8, !6, i64 28}
!74 = !{!8, !6, i64 24}
!75 = !{!8, !6, i64 44}
!76 = !{!8, !6, i64 48}
!77 = !{!78, !6, i64 8}
!78 = !{!"opj_jp2_comps", !6, i64 0, !6, i64 4, !6, i64 8}
!79 = !{!8, !6, i64 64}
!80 = !{!8, !6, i64 56}
!81 = !{!82, !6, i64 8248}
!82 = !{!"opj_dparameters", !6, i64 0, !6, i64 4, !3, i64 8, !3, i64 4104, !6, i64 8200, !6, i64 8204, !6, i64 8208, !6, i64 8212, !6, i64 8216, !6, i64 8220, !6, i64 8224, !6, i64 8228, !6, i64 8232, !6, i64 8236, !6, i64 8240, !6, i64 8244, !6, i64 8248}
!83 = !{!8, !6, i64 68}
!84 = !{!8, !6, i64 72}
!85 = !{!54, !6, i64 12}
!86 = !{!54, !6, i64 4}
!87 = !{!54, !6, i64 8}
!88 = !{!54, !6, i64 0}
!89 = !{!90, !6, i64 18700}
!90 = !{!"opj_cparameters", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !6, i64 48, !3, i64 52, !3, i64 56, !6, i64 4792, !6, i64 4796, !3, i64 4800, !3, i64 5200, !6, i64 5600, !6, i64 5604, !6, i64 5608, !6, i64 5612, !6, i64 5616, !6, i64 5620, !6, i64 5624, !6, i64 5628, !3, i64 5632, !3, i64 5764, !3, i64 5896, !3, i64 9992, !6, i64 14088, !3, i64 14092, !6, i64 18188, !6, i64 18192, !6, i64 18196, !6, i64 18200, !6, i64 18204, !6, i64 18208, !6, i64 18212, !6, i64 18216, !3, i64 18220, !3, i64 18284, !3, i64 18348, !3, i64 18412, !3, i64 18476, !6, i64 18540, !6, i64 18544, !6, i64 18548, !6, i64 18552, !3, i64 18556, !3, i64 18620, !3, i64 18684, !6, i64 18688, !3, i64 18692, !3, i64 18696, !3, i64 18697, !3, i64 18698, !6, i64 18700, !2, i64 18704}
!91 = !{!8, !6, i64 112}
!92 = !{!8, !2, i64 16}
!93 = !{!8, !2, i64 8}
!94 = !{!8, !9, i64 96}
!95 = !{!9, !9, i64 0}
!96 = !{!8, !9, i64 104}
!97 = !{!18, !6, i64 0}
