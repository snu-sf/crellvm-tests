; ModuleID = './mkromfs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_malloc_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.gs_malloc_block_s*, i64, i64, i64, %struct.gx_monitor_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_malloc_block_s = type opaque
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.in_block_s = type { %struct.in_block_s*, [16384 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%union.anon = type { i32 }
%struct.anon = type { i8, i8, i8, i8 }
%struct.romfs_inode_s = type { i64, i64, i8*, i64*, i8** }
%struct.Xlist_element_s = type { i8*, i8* }
%struct.file_enum_s = type opaque
%struct.pscompstate = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 (i8*)*, void (i32, i8*)*, i32 (i8*)*, i8*, i32, i32, i32, i32, i32, i32 }
%union.anon.0 = type { float }
%struct.in_block_file = type { %struct.in_block_s*, i32, i32 }

@stdout = external global %struct._IO_FILE*, align 8
@msg_truncated = internal constant [40 x i8] c"\0A*** Previous line has been truncated.\0A\00", align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%d.%02d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s(?): \00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"basic_enum_ptrs is only called by a GC. Abort.\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"basic_reloc_ptrs is only called by a GC. Abort.\0A\00", align 1
@minimal_memory = constant %struct.gs_malloc_memory_s { %struct.gs_memory_s* bitcast (%struct.gs_malloc_memory_s* @minimal_memory to %struct.gs_memory_s*), %struct.gs_memory_procs_s { i8* (%struct.gs_memory_s*, i32, i8*)* @minimal_alloc_bytes, i8* (%struct.gs_memory_s*, i8*, i32, i8*)* null, void (%struct.gs_memory_s*, i8*, i8*)* @minimal_free_object, %struct.gs_memory_s* (%struct.gs_memory_s*)* null, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)* null, void (%struct.gs_memory_s*, i32, i8*)* null, void (%struct.gs_memory_s*)* null, i8* (%struct.gs_memory_s*, i32, i8*)* @minimal_alloc_bytes, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)* @minimal_alloc_struct, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)* @minimal_alloc_struct, i8* (%struct.gs_memory_s*, i32, i32, i8*)* @minimal_alloc_byte_array, i8* (%struct.gs_memory_s*, i32, i32, i8*)* @minimal_alloc_byte_array, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)* null, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)* null, i32 (%struct.gs_memory_s*, i8*)* null, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)* null, i8* (%struct.gs_memory_s*, i32, i8*)* @minimal_alloc_bytes, i8* (%struct.gs_memory_s*, i32, i8*)* @minimal_alloc_bytes, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)* null, void (%struct.gs_memory_s*, i8*, i32, i8*)* @minimal_free_string, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)* null, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)* null, void (%struct.gs_memory_s*, i32)* null }, %struct.gs_lib_ctx_s* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, %struct.gs_malloc_block_s* null, i64 0, i64 0, i64 0, %struct.gx_monitor_s* null }, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"0x%02x%02x%02x%02x,\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"0x%08x,\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"    static uint32_t node_%d[] = {\0A\09\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"\09/* compression_flag_bit + file length */\0A\09\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"\09/* data_block_length, offset to data_block */\0A\09\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"\09/* file name '%s' */\0A\09\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"\090 };\09/* end-of-node */\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"node '%s' len=%ld\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c" %ld blocks\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c", compressed size=%ld\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"malloc fail in process_path\0A\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"gp_enumerate_files_init failed.\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"unable to open file for processing: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"error compressing data block!\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"warning: no files found from path '%s%s'\0A\00", align 1
@in_block_head = global %struct.in_block_s* null, align 8
@in_block_tail = global %struct.in_block_s* null, align 8
@.str.27 = private unnamed_addr constant [33 x i8] c"malloc fail in process_initfile\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"cannot open initfile at: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Cannot open gconfig file %s\0A\00", align 1
@linebuf = global [2048 x i8] zeroinitializer, align 16
@curr_block_p = global i8* null, align 8
@.str.31 = private unnamed_addr constant [63 x i8] c"*** warning, flush_line called with len (%d) > LINE_SIZE (%d)\0A\00", align 1
@curr_block_end = global i8* null, align 8
@.str.32 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"'\5C%c',\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"'%c',\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"%END\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c" \09>[]{})\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"Unable to allocate string token buffer.\0A\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"Can't handle string token > %d bytes.\0A\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"Unknown character in ASCIIHex string: %c\0A\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"malloc problem in prefix_open\0A\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"including: '%s'\0A\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"%% Replace\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Failed to open '%s' - aborting\0A\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"INITFILES\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"psfile_(\22\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"Unknown %%%% Replace %d %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"currentfile closefile\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"currentobjectformat 1 setobjectformat\0A\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"(/[]{}\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c")[]{}\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"setobjectformat\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"obj/gsromfs.c\00", align 1
@.str.55 = private unnamed_addr constant [1814 x i8] c"\0A       Usage: mkromfs [-o outputfile] [options ...] paths\0A           options and paths can be interspersed and are processed in order\0A           options:\0A               -o outputfile   default: obj/gsromfs.c if this option present, must be first.\0A               -P prefix       use prefix to find path. prefix not included in %%rom%%\0A               -X path         exclude the path from further processing.\0A                         Note: The tail of any path encountered will be tested so .svn on the -X\0A                               list will exclude that path in all subsequent paths enumerated.\0A\0A               -d romprefix    directory in %%rom file system (just a prefix string on filename)\0A               -c              compression on\0A               -b              compression off (binary).\0A               -C              postscript 'compaction' on\0A               -B              postscript 'compaction' off\0A               -g initfile gconfig_h \0A                       special handling to read the 'gs_init.ps' file (from\0A                       the current -P prefix path), and read the gconfig.h for\0A                       psfile_ entries and combines them into a whitespace\0A                       optimized and no comments form and writes this 'gs_init.ps'\0A                       to the current -d destination path. This is a space and\0A                       startup performance improvement, so also this should be\0A                       BEFORE other stuff in the %%rom%% list of files (currently\0A                       we do a sequential search in the %%rom%% directory).\0A\0A                       For performance reasons, it is best to turn off compression\0A                       for the init file. Less frequently accessed files, if they\0A                       are large should still be compressed.\0A\0A\00", align 1
@.str.56 = private unnamed_addr constant [70 x i8] c"compression will use %d byte blocksize (zlib output buffer %d bytes)\0A\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"   writing romfs data to '%s'\0A\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.59 = private unnamed_addr constant [57 x i8] c"\09/* Generated data for %%rom%% device, see mkromfs.c */\0A\00", align 1
@.str.60 = private unnamed_addr constant [58 x i8] c"\09/* this code assumes a little endian target platform */\0A\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"\0A#include \22stdint_.h\22\0A\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"\0A#include \22time_.h\22\0A\0A\00", align 1
@.str.63 = private unnamed_addr constant [39 x i8] c"    time_t gs_romfs_buildtime = %ld;\0A\0A\00", align 1
@.str.64 = private unnamed_addr constant [40 x i8] c"   option %s missing required argument\0A\00", align 1
@.str.65 = private unnamed_addr constant [41 x i8] c"   option %s missing required arguments\0A\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"  unknown option: %s \0A\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"    uint32_t *gs_romfs[] = {\0A\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"\09node_%d,\0A\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"\090 };\0A\00", align 1
@.str.70 = private unnamed_addr constant [43 x i8] c"Total %%rom%% structure size is %d bytes.\0A\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"Malloc failed in ps compaction\0A\00", align 1
@.str.72 = private unnamed_addr constant [53 x i8] c"Can't compact files with binary object sequences in!\00", align 1
@.str.73 = private unnamed_addr constant [55 x i8] c"Can't compact files with binary postscript byte %d in!\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"NAMESOK\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"BINARYOK\00", align 1
@.str.79 = private unnamed_addr constant [53 x i8] c"ASCII85 encoded strings unsupported in pscompaction\0A\00", align 1
@.str.80 = private unnamed_addr constant [41 x i8] c"HexString more than 64K in pscompaction\0A\00", align 1
@.str.81 = private unnamed_addr constant [56 x i8] c"Unexpected char when parsing hexstring in pscompaction\0A\00", align 1
@.str.82 = private unnamed_addr constant [32 x i8] c"Realloc failed in pscompaction\0A\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"16#\00", align 1
@pscompact_names = internal global [226 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.269, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.275, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.281, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.309, i32 0, i32 0)], align 16
@.str.84 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"aload\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"anchorsearch\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"arc\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"arcn\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"arct\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"arcto\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"ashow\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"astore\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"awidthshow\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"bitshift\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"ceiling\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"charpath\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"cleartomark\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"clippath\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"closepath\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"concatmatrix\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"counttomark\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"currentcmykcolor\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"currentdash\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"currentdict\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"currentfile\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"currentfont\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"currentgray\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"currentgstate\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"currenthsbcolor\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"currentlinecap\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"currentlinejoin\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"currentlinewidth\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"currentmatrix\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"currentpoint\00", align 1
@.str.125 = private unnamed_addr constant [16 x i8] c"currentrgbcolor\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"currentshared\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"curveto\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"cvi\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"cvlit\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"cvn\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"cvr\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"cvrs\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"cvs\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"cvx\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"defineusername\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.139 = private unnamed_addr constant [11 x i8] c"dtransform\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"eoclip\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"eofill\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"eoviewclip\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"exch\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"findfont\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"flattenpath\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"flushfile\00", align 1
@.str.156 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"forall\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c"getinterval\00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c"grestore\00", align 1
@.str.162 = private unnamed_addr constant [6 x i8] c"gsave\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"gstate\00", align 1
@.str.164 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.165 = private unnamed_addr constant [12 x i8] c"identmatrix\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"idiv\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"idtransform\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"ifelse\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"imagemask\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"ineofill\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"infill\00", align 1
@.str.175 = private unnamed_addr constant [13 x i8] c"initviewclip\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"inueofill\00", align 1
@.str.177 = private unnamed_addr constant [8 x i8] c"inufill\00", align 1
@.str.178 = private unnamed_addr constant [13 x i8] c"invertmatrix\00", align 1
@.str.179 = private unnamed_addr constant [11 x i8] c"itransform\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"known\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"lineto\00", align 1
@.str.184 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.186 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.187 = private unnamed_addr constant [9 x i8] c"makefont\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c"maxlength\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c"moveto\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.193 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c"newpath\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.198 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"pathbbox\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"pathforall\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.203 = private unnamed_addr constant [12 x i8] c"printobject\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.205 = private unnamed_addr constant [12 x i8] c"putinterval\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"rcurveto\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.208 = private unnamed_addr constant [14 x i8] c"readhexstring\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str.210 = private unnamed_addr constant [11 x i8] c"readstring\00", align 1
@.str.211 = private unnamed_addr constant [9 x i8] c"rectclip\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"rectfill\00", align 1
@.str.213 = private unnamed_addr constant [11 x i8] c"rectstroke\00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"rectviewclip\00", align 1
@.str.215 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.216 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@.str.217 = private unnamed_addr constant [8 x i8] c"rlineto\00", align 1
@.str.218 = private unnamed_addr constant [8 x i8] c"rmoveto\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"roll\00", align 1
@.str.220 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.221 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.224 = private unnamed_addr constant [10 x i8] c"scalefont\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.226 = private unnamed_addr constant [11 x i8] c"selectfont\00", align 1
@.str.227 = private unnamed_addr constant [8 x i8] c"setbbox\00", align 1
@.str.228 = private unnamed_addr constant [15 x i8] c"setcachedevice\00", align 1
@.str.229 = private unnamed_addr constant [16 x i8] c"setcachedevice2\00", align 1
@.str.230 = private unnamed_addr constant [13 x i8] c"setcharwidth\00", align 1
@.str.231 = private unnamed_addr constant [13 x i8] c"setcmykcolor\00", align 1
@.str.232 = private unnamed_addr constant [8 x i8] c"setdash\00", align 1
@.str.233 = private unnamed_addr constant [8 x i8] c"setfont\00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"setgray\00", align 1
@.str.235 = private unnamed_addr constant [10 x i8] c"setgstate\00", align 1
@.str.236 = private unnamed_addr constant [12 x i8] c"sethsbcolor\00", align 1
@.str.237 = private unnamed_addr constant [11 x i8] c"setlinecap\00", align 1
@.str.238 = private unnamed_addr constant [12 x i8] c"setlinejoin\00", align 1
@.str.239 = private unnamed_addr constant [13 x i8] c"setlinewidth\00", align 1
@.str.240 = private unnamed_addr constant [10 x i8] c"setmatrix\00", align 1
@.str.241 = private unnamed_addr constant [12 x i8] c"setrgbcolor\00", align 1
@.str.242 = private unnamed_addr constant [10 x i8] c"setshared\00", align 1
@.str.243 = private unnamed_addr constant [11 x i8] c"shareddict\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.245 = private unnamed_addr constant [9 x i8] c"showpage\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.247 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.248 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.249 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.250 = private unnamed_addr constant [12 x i8] c"stringwidth\00", align 1
@.str.251 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@.str.252 = private unnamed_addr constant [11 x i8] c"strokepath\00", align 1
@.str.253 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.254 = private unnamed_addr constant [11 x i8] c"systemdict\00", align 1
@.str.255 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.256 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.257 = private unnamed_addr constant [10 x i8] c"translate\00", align 1
@.str.258 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.259 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.260 = private unnamed_addr constant [8 x i8] c"uappend\00", align 1
@.str.261 = private unnamed_addr constant [7 x i8] c"ucache\00", align 1
@.str.262 = private unnamed_addr constant [8 x i8] c"ueofill\00", align 1
@.str.263 = private unnamed_addr constant [6 x i8] c"ufill\00", align 1
@.str.264 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.265 = private unnamed_addr constant [6 x i8] c"upath\00", align 1
@.str.266 = private unnamed_addr constant [9 x i8] c"userdict\00", align 1
@.str.267 = private unnamed_addr constant [8 x i8] c"ustroke\00", align 1
@.str.268 = private unnamed_addr constant [9 x i8] c"viewclip\00", align 1
@.str.269 = private unnamed_addr constant [13 x i8] c"viewclippath\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@.str.271 = private unnamed_addr constant [10 x i8] c"widthshow\00", align 1
@.str.272 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.273 = private unnamed_addr constant [15 x i8] c"writehexstring\00", align 1
@.str.274 = private unnamed_addr constant [12 x i8] c"writeobject\00", align 1
@.str.275 = private unnamed_addr constant [12 x i8] c"writestring\00", align 1
@.str.276 = private unnamed_addr constant [13 x i8] c"wtranslation\00", align 1
@.str.277 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.278 = private unnamed_addr constant [6 x i8] c"xshow\00", align 1
@.str.279 = private unnamed_addr constant [7 x i8] c"xyshow\00", align 1
@.str.280 = private unnamed_addr constant [6 x i8] c"yshow\00", align 1
@.str.281 = private unnamed_addr constant [14 x i8] c"FontDirectory\00", align 1
@.str.282 = private unnamed_addr constant [20 x i8] c"SharedFontDirectory\00", align 1
@.str.283 = private unnamed_addr constant [9 x i8] c"Courier%\00", align 1
@.str.284 = private unnamed_addr constant [13 x i8] c"Courier-Bold\00", align 1
@.str.285 = private unnamed_addr constant [20 x i8] c"Courier-BoldOblique\00", align 1
@.str.286 = private unnamed_addr constant [16 x i8] c"Courier-Oblique\00", align 1
@.str.287 = private unnamed_addr constant [10 x i8] c"Helvetica\00", align 1
@.str.288 = private unnamed_addr constant [15 x i8] c"Helvetica-Bold\00", align 1
@.str.289 = private unnamed_addr constant [22 x i8] c"Helvetica-BoldOblique\00", align 1
@.str.290 = private unnamed_addr constant [18 x i8] c"Helvetica-Oblique\00", align 1
@.str.291 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@.str.292 = private unnamed_addr constant [11 x i8] c"Times-Bold\00", align 1
@.str.293 = private unnamed_addr constant [17 x i8] c"Times-BoldItalic\00", align 1
@.str.294 = private unnamed_addr constant [13 x i8] c"Times-Italic\00", align 1
@.str.295 = private unnamed_addr constant [12 x i8] c"Times-Roman\00", align 1
@.str.296 = private unnamed_addr constant [15 x i8] c"execuserobject\00", align 1
@.str.297 = private unnamed_addr constant [13 x i8] c"currentcolor\00", align 1
@.str.298 = private unnamed_addr constant [18 x i8] c"currentcolorspace\00", align 1
@.str.299 = private unnamed_addr constant [14 x i8] c"currentglobal\00", align 1
@.str.300 = private unnamed_addr constant [9 x i8] c"execform\00", align 1
@.str.301 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.302 = private unnamed_addr constant [13 x i8] c"findresource\00", align 1
@.str.303 = private unnamed_addr constant [11 x i8] c"globaldict\00", align 1
@.str.304 = private unnamed_addr constant [12 x i8] c"makepattern\00", align 1
@.str.305 = private unnamed_addr constant [9 x i8] c"setcolor\00", align 1
@.str.306 = private unnamed_addr constant [14 x i8] c"setcolorspace\00", align 1
@.str.307 = private unnamed_addr constant [10 x i8] c"setglobal\00", align 1
@.str.308 = private unnamed_addr constant [14 x i8] c"setpagedevice\00", align 1
@.str.309 = private unnamed_addr constant [11 x i8] c"setpattern\00", align 1
@.str.310 = private unnamed_addr constant [38 x i8] c"Malformed hexstring in pscompaction!\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @outprintf(%struct.gs_memory_s* %mem, i8* %fmt, ...) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %fmt.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1) #1
  %2 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %3 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 1024, i8* %3, %struct.__va_list_tag* %arraydecay3) #8
  store i32 %call, i32* %count, align 4, !tbaa !5
  %4 = load i32, i32* %count, align 4, !tbaa !5
  %conv = sext i32 %4 to i64
  %cmp = icmp uge i64 %conv, 1024
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %count, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %5, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call8 = call i64 @fwrite(i8* %arraydecay7, i64 1, i64 1023, %struct._IO_FILE* %6) #9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call9 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @msg_truncated, i32 0, i32 0), i64 1, i64 39, %struct._IO_FILE* %7) #9
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %8 = load i32, i32* %count, align 4, !tbaa !5
  %conv11 = sext i32 %8 to i64
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call12 = call i64 @fwrite(i8* %arraydecay10, i64 1, i64 %conv11, %struct._IO_FILE* %9) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1314 = bitcast %struct.__va_list_tag* %arraydecay13 to i8*
  call void @llvm.va_end(i8* %arraydecay1314)
  %10 = load i32, i32* %count, align 4, !tbaa !5
  %11 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %11) #1
  %12 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %12) #1
  %13 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @errprintf_nomem(i8* %fmt, ...) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1) #1
  %2 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %3 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 1024, i8* %3, %struct.__va_list_tag* %arraydecay3) #8
  store i32 %call, i32* %count, align 4, !tbaa !5
  %4 = load i32, i32* %count, align 4, !tbaa !5
  %conv = sext i32 %4 to i64
  %cmp = icmp uge i64 %conv, 1024
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %count, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %5, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call8 = call i64 @fwrite(i8* %arraydecay7, i64 1, i64 1023, %struct._IO_FILE* %6) #9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call9 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @msg_truncated, i32 0, i32 0), i64 1, i64 39, %struct._IO_FILE* %7) #9
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %8 = load i32, i32* %count, align 4, !tbaa !5
  %conv11 = sext i32 %8 to i64
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call12 = call i64 @fwrite(i8* %arraydecay10, i64 1, i64 %conv11, %struct._IO_FILE* %9) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1314 = bitcast %struct.__va_list_tag* %arraydecay13 to i8*
  call void @llvm.va_end(i8* %arraydecay1314)
  %10 = load i32, i32* %count, align 4, !tbaa !5
  %11 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %11) #1
  %12 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %12) #1
  %13 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @errprintf(%struct.gs_memory_s* %mem, i8* %fmt, ...) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %fmt.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %fmt, i8** %fmt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1) #1
  %2 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %3 = load i8*, i8** %fmt.addr, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 1024, i8* %3, %struct.__va_list_tag* %arraydecay3) #8
  store i32 %call, i32* %count, align 4, !tbaa !5
  %4 = load i32, i32* %count, align 4, !tbaa !5
  %conv = sext i32 %4 to i64
  %cmp = icmp uge i64 %conv, 1024
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %count, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %5, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call8 = call i64 @fwrite(i8* %arraydecay7, i64 1, i64 1023, %struct._IO_FILE* %6) #9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call9 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @msg_truncated, i32 0, i32 0), i64 1, i64 39, %struct._IO_FILE* %7) #9
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %arraydecay10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0
  %8 = load i32, i32* %count, align 4, !tbaa !5
  %conv11 = sext i32 %8 to i64
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call12 = call i64 @fwrite(i8* %arraydecay10, i64 1, i64 %conv11, %struct._IO_FILE* %9) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1314 = bitcast %struct.__va_list_tag* %arraydecay13 to i8*
  call void @llvm.va_end(i8* %arraydecay1314)
  %10 = load i32, i32* %count, align 4, !tbaa !5
  %11 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.end(i64 24, i8* %11) #1
  %12 = bitcast [1024 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %12) #1
  %13 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @lprintf_file_and_line(i8* %file, i32 %line) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8, !tbaa !1
  store i32 %line, i32* %line.addr, align 4, !tbaa !5
  %0 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %1 = load i32, i32* %line.addr, align 4, !tbaa !5
  %call = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %0, i32 %1) #9
  ret void
}

; Function Attrs: nounwind uwtable
define void @eprintf_program_ident(i8* %program_name, i64 %revision_number) #0 {
entry:
  %program_name.addr = alloca i8*, align 8
  %revision_number.addr = alloca i64, align 8
  %fpart = alloca i32, align 4
  store i8* %program_name, i8** %program_name.addr, align 8, !tbaa !1
  store i64 %revision_number, i64* %revision_number.addr, align 8, !tbaa !7
  %0 = load i8*, i8** %program_name.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %revision_number.addr, align 8, !tbaa !7
  %tobool1 = icmp ne i64 %1, 0
  %cond = select i1 %tobool1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)
  %2 = load i8*, i8** %program_name.addr, align 8, !tbaa !1
  %call = call i32 (i8*, ...) @errprintf_nomem(i8* %cond, i8* %2) #9
  %3 = load i64, i64* %revision_number.addr, align 8, !tbaa !7
  %tobool2 = icmp ne i64 %3, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = bitcast i32* %fpart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i64, i64* %revision_number.addr, align 8, !tbaa !7
  %rem = srem i64 %5, 100
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %fpart, align 4, !tbaa !5
  %6 = load i64, i64* %revision_number.addr, align 8, !tbaa !7
  %div = sdiv i64 %6, 100
  %conv4 = trunc i64 %div to i32
  %7 = load i32, i32* %fpart, align 4, !tbaa !5
  %call5 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %conv4, i32 %7) #9
  %8 = bitcast i32* %fpart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %call6 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #9
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @lprintf_file_only(%struct._IO_FILE* %f, i8* %file) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %file.addr = alloca i8*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  store i8* %file, i8** %file.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %file.addr, align 8, !tbaa !1
  %call = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define void @emprintf_program_ident(%struct.gs_memory_s* %mem, i8* %program_name, i64 %revision_number) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %program_name.addr = alloca i8*, align 8
  %revision_number.addr = alloca i64, align 8
  %fpart = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %program_name, i8** %program_name.addr, align 8, !tbaa !1
  store i64 %revision_number, i64* %revision_number.addr, align 8, !tbaa !7
  %0 = load i8*, i8** %program_name.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load i64, i64* %revision_number.addr, align 8, !tbaa !7
  %tobool1 = icmp ne i64 %2, 0
  %cond = select i1 %tobool1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)
  %3 = load i8*, i8** %program_name.addr, align 8, !tbaa !1
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %1, i8* %cond, i8* %3) #9
  %4 = load i64, i64* %revision_number.addr, align 8, !tbaa !7
  %tobool2 = icmp ne i64 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = bitcast i32* %fpart to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i64, i64* %revision_number.addr, align 8, !tbaa !7
  %rem = srem i64 %6, 100
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %fpart, align 4, !tbaa !5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %8 = load i64, i64* %revision_number.addr, align 8, !tbaa !7
  %div = sdiv i64 %8, 100
  %conv4 = trunc i64 %div to i32
  %9 = load i32, i32* %fpart, align 4, !tbaa !5
  %call5 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %conv4, i32 %9) #9
  %10 = bitcast i32* %fpart to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call6 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #9
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @minimal_alloc_bytes(%struct.gs_memory_s* %mem, i32 %size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = zext i32 %0 to i64
  %call = call noalias i8* @malloc(i64 %conv) #8
  ret i8* %call
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define i8* @minimal_alloc_byte_array(%struct.gs_memory_s* %mem, i32 %num_elements, i32 %elt_size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !5
  store i32 %elt_size, i32* %elt_size.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load i32, i32* %num_elements.addr, align 4, !tbaa !5
  %1 = load i32, i32* %elt_size.addr, align 4, !tbaa !5
  %mul = mul i32 %0, %1
  %conv = zext i32 %mul to i64
  %call = call noalias i8* @malloc(i64 %conv) #8
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @minimal_alloc_struct(%struct.gs_memory_s* %mem, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %0, i32 0, i32 0
  %1 = load i32, i32* %ssize, align 4, !tbaa !9
  %conv = zext i32 %1 to i64
  %call = call noalias i8* @malloc(i64 %conv) #8
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @minimal_free_object(%struct.gs_memory_s* %mem, i8* %data, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %data.addr, align 8, !tbaa !1
  call void @free(i8* %0) #8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @minimal_free_string(%struct.gs_memory_s* %mem, i8* %data, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %data.addr, align 8, !tbaa !1
  call void @free(i8* %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @basic_enum_ptrs() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define void @basic_reloc_ptrs() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @put_uint32(%struct._IO_FILE* %out, i32 %q) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %q.addr = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  store i32 %q, i32* %q.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %1 = load i32, i32* %q.addr, align 4, !tbaa !5
  %and = and i32 %1, 255
  %2 = load i32, i32* %q.addr, align 4, !tbaa !5
  %shr = lshr i32 %2, 8
  %and1 = and i32 %shr, 255
  %3 = load i32, i32* %q.addr, align 4, !tbaa !5
  %shr2 = lshr i32 %3, 16
  %and3 = and i32 %shr2, 255
  %4 = load i32, i32* %q.addr, align 4, !tbaa !5
  %shr4 = lshr i32 %4, 24
  %and5 = and i32 %shr4, 255
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i32 %and, i32 %and1, i32 %and3, i32 %and5) #9
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @put_bytes_padded(%struct._IO_FILE* %out, i8* %p, i32 %len) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %w2c = alloca %union.anon, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  %2 = bitcast %union.anon* %w2c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %4 = load i32, i32* %len.addr, align 4, !tbaa !5
  %div = udiv i32 %4, 4
  %cmp = icmp ult i32 %3, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !5
  %mul = mul nsw i32 %5, 4
  store i32 %mul, i32* %j, align 4, !tbaa !5
  %6 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %c = bitcast %union.anon* %w2c to %struct.anon*
  %c1 = getelementptr inbounds %struct.anon, %struct.anon* %c, i32 0, i32 0
  store i8 %8, i8* %c1, align 1, !tbaa !12
  %9 = load i32, i32* %j, align 4, !tbaa !5
  %inc1 = add nsw i32 %9, 1
  store i32 %inc1, i32* %j, align 4, !tbaa !5
  %idxprom2 = sext i32 %9 to i64
  %10 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 %idxprom2
  %11 = load i8, i8* %arrayidx3, align 1, !tbaa !11
  %c4 = bitcast %union.anon* %w2c to %struct.anon*
  %c2 = getelementptr inbounds %struct.anon, %struct.anon* %c4, i32 0, i32 1
  store i8 %11, i8* %c2, align 1, !tbaa !14
  %12 = load i32, i32* %j, align 4, !tbaa !5
  %inc5 = add nsw i32 %12, 1
  store i32 %inc5, i32* %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %12 to i64
  %13 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 %idxprom6
  %14 = load i8, i8* %arrayidx7, align 1, !tbaa !11
  %c8 = bitcast %union.anon* %w2c to %struct.anon*
  %c3 = getelementptr inbounds %struct.anon, %struct.anon* %c8, i32 0, i32 2
  store i8 %14, i8* %c3, align 1, !tbaa !15
  %15 = load i32, i32* %j, align 4, !tbaa !5
  %inc9 = add nsw i32 %15, 1
  store i32 %inc9, i32* %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %15 to i64
  %16 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i64 %idxprom10
  %17 = load i8, i8* %arrayidx11, align 1, !tbaa !11
  %c12 = bitcast %union.anon* %w2c to %struct.anon*
  %c413 = getelementptr inbounds %struct.anon, %struct.anon* %c12, i32 0, i32 3
  store i8 %17, i8* %c413, align 1, !tbaa !16
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %w = bitcast %union.anon* %w2c to i32*
  %19 = load i32, i32* %w, align 4, !tbaa !5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %19) #9
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %and = and i32 %20, 7
  %cmp14 = icmp eq i32 %and, 7
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %inc16 = add nsw i32 %22, 1
  store i32 %inc16, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %w17 = bitcast %union.anon* %w2c to i32*
  store i32 0, i32* %w17, align 4, !tbaa !5
  %23 = load i32, i32* %len.addr, align 4, !tbaa !5
  %24 = load i32, i32* %j, align 4, !tbaa !5
  %sub = sub i32 %23, %24
  switch i32 %sub, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.22
    i32 1, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %for.end
  %25 = load i32, i32* %j, align 4, !tbaa !5
  %add = add nsw i32 %25, 2
  %idxprom18 = sext i32 %add to i64
  %26 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %26, i64 %idxprom18
  %27 = load i8, i8* %arrayidx19, align 1, !tbaa !11
  %c20 = bitcast %union.anon* %w2c to %struct.anon*
  %c321 = getelementptr inbounds %struct.anon, %struct.anon* %c20, i32 0, i32 2
  store i8 %27, i8* %c321, align 1, !tbaa !15
  br label %sw.bb.22

sw.bb.22:                                         ; preds = %for.end, %sw.bb
  %28 = load i32, i32* %j, align 4, !tbaa !5
  %add23 = add nsw i32 %28, 1
  %idxprom24 = sext i32 %add23 to i64
  %29 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %29, i64 %idxprom24
  %30 = load i8, i8* %arrayidx25, align 1, !tbaa !11
  %c26 = bitcast %union.anon* %w2c to %struct.anon*
  %c227 = getelementptr inbounds %struct.anon, %struct.anon* %c26, i32 0, i32 1
  store i8 %30, i8* %c227, align 1, !tbaa !14
  br label %sw.bb.28

sw.bb.28:                                         ; preds = %for.end, %sw.bb.22
  %31 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom29 = sext i32 %31 to i64
  %32 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %32, i64 %idxprom29
  %33 = load i8, i8* %arrayidx30, align 1, !tbaa !11
  %c31 = bitcast %union.anon* %w2c to %struct.anon*
  %c132 = getelementptr inbounds %struct.anon, %struct.anon* %c31, i32 0, i32 0
  store i8 %33, i8* %c132, align 1, !tbaa !12
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %w33 = bitcast %union.anon* %w2c to i32*
  %35 = load i32, i32* %w33, align 4, !tbaa !5
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %35) #9
  br label %sw.default

sw.default:                                       ; preds = %for.end, %sw.bb.28
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)) #9
  %37 = bitcast %union.anon* %w2c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @inode_clear(%struct.romfs_inode_s* %node) #0 {
entry:
  %node.addr = alloca %struct.romfs_inode_s*, align 8
  %i = alloca i32, align 4
  %blocks = alloca i32, align 4
  store %struct.romfs_inode_s* %node, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.romfs_inode_s* %2, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %3 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %disc_length = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %3, i32 0, i32 0
  %4 = load i64, i64* %disc_length, align 8, !tbaa !17
  %add = add i64 %4, 16384
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 16384
  %conv = trunc i64 %div to i32
  store i32 %conv, i32* %blocks, align 4, !tbaa !5
  %5 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %5, i32 0, i32 4
  %6 = load i8**, i8*** %data, align 8, !tbaa !19
  %tobool1 = icmp ne i8** %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load i32, i32* %blocks, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %10, i32 0, i32 4
  %11 = load i8**, i8*** %data4, align 8, !tbaa !19
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %tobool5 = icmp ne i8* %12, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %data8 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %14, i32 0, i32 4
  %15 = load i8**, i8*** %data8, align 8, !tbaa !19
  %arrayidx9 = getelementptr inbounds i8*, i8** %15, i64 %idxprom7
  %16 = load i8*, i8** %arrayidx9, align 8, !tbaa !1
  call void @free(i8* %16) #8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %data10 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %18, i32 0, i32 4
  %19 = load i8**, i8*** %data10, align 8, !tbaa !19
  %20 = bitcast i8** %19 to i8*
  call void @free(i8* %20) #8
  br label %if.end.11

if.end.11:                                        ; preds = %for.end, %if.then
  %21 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %data_lengths = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %21, i32 0, i32 3
  %22 = load i64*, i64** %data_lengths, align 8, !tbaa !20
  %tobool12 = icmp ne i64* %22, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %23 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %data_lengths14 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %23, i32 0, i32 3
  %24 = load i64*, i64** %data_lengths14, align 8, !tbaa !20
  %25 = bitcast i64* %24 to i8*
  call void @free(i8* %25) #8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  %26 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @inode_write(%struct._IO_FILE* %out, %struct.romfs_inode_s* %node, i32 %compression, i32 %inode_count, i32* %totlen) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %node.addr = alloca %struct.romfs_inode_s*, align 8
  %compression.addr = alloca i32, align 4
  %inode_count.addr = alloca i32, align 4
  %totlen.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %offset = alloca i32, align 4
  %blocks = alloca i32, align 4
  %namelen = alloca i32, align 4
  %clen = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  store %struct.romfs_inode_s* %node, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  store i32 %compression, i32* %compression.addr, align 4, !tbaa !5
  store i32 %inode_count, i32* %inode_count.addr, align 4, !tbaa !5
  store i32* %totlen, i32** %totlen.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %3, i32 0, i32 1
  %4 = load i64, i64* %length, align 8, !tbaa !21
  %add = add i64 %4, 16384
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 16384
  %conv = trunc i64 %div to i32
  store i32 %conv, i32* %blocks, align 4, !tbaa !5
  %5 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %6, i32 0, i32 2
  %7 = load i8*, i8** %name, align 8, !tbaa !22
  %call = call i64 @strlen(i8* %7) #11
  %add1 = add i64 %call, 1
  %conv2 = trunc i64 %add1 to i32
  store i32 %conv2, i32* %namelen, align 4, !tbaa !5
  %8 = bitcast i32* %clen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %clen, align 4, !tbaa !5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %10 = load i32, i32* %inode_count.addr, align 4, !tbaa !5
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i32 %10) #9
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %12 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %length4 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %12, i32 0, i32 1
  %13 = load i64, i64* %length4, align 8, !tbaa !21
  %14 = load i32, i32* %compression.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  %cond = select i1 %tobool, i32 -2147483648, i32 0
  %conv5 = zext i32 %cond to i64
  %or = or i64 %13, %conv5
  %conv6 = trunc i64 %or to i32
  call void @put_uint32(%struct._IO_FILE* %11, i32 %conv6) #9
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0)) #9
  %16 = load i32, i32* %blocks, align 4, !tbaa !5
  %mul = mul nsw i32 8, %16
  %add8 = add nsw i32 4, %mul
  %17 = load i32, i32* %namelen, align 4, !tbaa !5
  %add9 = add nsw i32 %17, 3
  %and = and i32 %add9, -4
  %add10 = add nsw i32 %add8, %and
  store i32 %add10, i32* %offset, align 4, !tbaa !5
  %18 = load i32, i32* %offset, align 4, !tbaa !5
  %19 = load i32*, i32** %totlen.addr, align 8, !tbaa !1
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %add11 = add nsw i32 %20, %18
  store i32 %add11, i32* %19, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %22 = load i32, i32* %blocks, align 4, !tbaa !5
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %data_lengths = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %25, i32 0, i32 3
  %26 = load i64*, i64** %data_lengths, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds i64, i64* %26, i64 %idxprom
  %27 = load i64, i64* %arrayidx, align 8, !tbaa !7
  %conv13 = trunc i64 %27 to i32
  call void @put_uint32(%struct._IO_FILE* %23, i32 %conv13) #9
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %29 = load i32, i32* %offset, align 4, !tbaa !5
  call void @put_uint32(%struct._IO_FILE* %28, i32 %29) #9
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %30 to i64
  %31 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %data_lengths15 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %31, i32 0, i32 3
  %32 = load i64*, i64** %data_lengths15, align 8, !tbaa !20
  %arrayidx16 = getelementptr inbounds i64, i64* %32, i64 %idxprom14
  %33 = load i64, i64* %arrayidx16, align 8, !tbaa !7
  %add17 = add i64 %33, 3
  %and18 = and i64 %add17, -4
  %34 = load i32, i32* %offset, align 4, !tbaa !5
  %conv19 = sext i32 %34 to i64
  %add20 = add i64 %conv19, %and18
  %conv21 = trunc i64 %add20 to i32
  store i32 %conv21, i32* %offset, align 4, !tbaa !5
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i32 0, i32 0)) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %38 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %name23 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %38, i32 0, i32 2
  %39 = load i8*, i8** %name23, align 8, !tbaa !22
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* %39) #9
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %41 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %name25 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %41, i32 0, i32 2
  %42 = load i8*, i8** %name25, align 8, !tbaa !22
  %43 = load i32, i32* %namelen, align 4, !tbaa !5
  call void @put_bytes_padded(%struct._IO_FILE* %40, i8* %42, i32 %43) #9
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.50, %for.end
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %45 = load i32, i32* %blocks, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %44, %45
  br i1 %cmp27, label %for.body.29, label %for.end.52

for.body.29:                                      ; preds = %for.cond.26
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %47 to i64
  %48 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %48, i32 0, i32 4
  %49 = load i8**, i8*** %data, align 8, !tbaa !19
  %arrayidx31 = getelementptr inbounds i8*, i8** %49, i64 %idxprom30
  %50 = load i8*, i8** %arrayidx31, align 8, !tbaa !1
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %51 to i64
  %52 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %data_lengths33 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %52, i32 0, i32 3
  %53 = load i64*, i64** %data_lengths33, align 8, !tbaa !20
  %arrayidx34 = getelementptr inbounds i64, i64* %53, i64 %idxprom32
  %54 = load i64, i64* %arrayidx34, align 8, !tbaa !7
  %conv35 = trunc i64 %54 to i32
  call void @put_bytes_padded(%struct._IO_FILE* %46, i8* %50, i32 %conv35) #9
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %55 to i64
  %56 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %data_lengths37 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %56, i32 0, i32 3
  %57 = load i64*, i64** %data_lengths37, align 8, !tbaa !20
  %arrayidx38 = getelementptr inbounds i64, i64* %57, i64 %idxprom36
  %58 = load i64, i64* %arrayidx38, align 8, !tbaa !7
  %59 = load i32, i32* %clen, align 4, !tbaa !5
  %conv39 = sext i32 %59 to i64
  %add40 = add i64 %conv39, %58
  %conv41 = trunc i64 %add40 to i32
  store i32 %conv41, i32* %clen, align 4, !tbaa !5
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom42 = sext i32 %60 to i64
  %61 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %data_lengths43 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %61, i32 0, i32 3
  %62 = load i64*, i64** %data_lengths43, align 8, !tbaa !20
  %arrayidx44 = getelementptr inbounds i64, i64* %62, i64 %idxprom42
  %63 = load i64, i64* %arrayidx44, align 8, !tbaa !7
  %add45 = add i64 %63, 3
  %and46 = and i64 %add45, -4
  %64 = load i32*, i32** %totlen.addr, align 8, !tbaa !1
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %conv47 = sext i32 %65 to i64
  %add48 = add i64 %conv47, %and46
  %conv49 = trunc i64 %add48 to i32
  store i32 %conv49, i32* %64, align 4, !tbaa !5
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.29
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %inc51 = add nsw i32 %66, 1
  store i32 %inc51, i32* %i, align 4, !tbaa !5
  br label %for.cond.26

for.end.52:                                       ; preds = %for.cond.26
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0)) #9
  %68 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %name54 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %68, i32 0, i32 2
  %69 = load i8*, i8** %name54, align 8, !tbaa !22
  %70 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node.addr, align 8, !tbaa !1
  %length55 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %70, i32 0, i32 1
  %71 = load i64, i64* %length55, align 8, !tbaa !21
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i8* %69, i64 %71) #9
  %72 = load i32, i32* %blocks, align 4, !tbaa !5
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 %72) #9
  %73 = load i32, i32* %compression.addr, align 4, !tbaa !5
  %tobool58 = icmp ne i32 %73, 0
  br i1 %tobool58, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.52
  %74 = load i32, i32* %clen, align 4, !tbaa !5
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i32 %74) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.52
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #9
  %75 = bitcast i32* %clen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind uwtable
define void @prefix_add(i8* %prefix, i8* %filename, i8* %prefixed_path) #0 {
entry:
  %prefix.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %prefixed_path.addr = alloca i8*, align 8
  store i8* %prefix, i8** %prefix.addr, align 8, !tbaa !1
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  store i8* %prefixed_path, i8** %prefixed_path.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %prefixed_path.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !11
  %1 = load i8*, i8** %prefixed_path.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %prefix.addr, align 8, !tbaa !1
  %call = call i8* @strcat(i8* %1, i8* %2) #8
  %3 = load i8*, i8** %prefixed_path.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call1 = call i8* @strcat(i8* %3, i8* %4) #8
  ret void
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @process_path(i8* %path, i8* %os_prefix, i8* %rom_prefix, %struct.Xlist_element_s* %Xlist_head, i32 %compression, i32 %compaction, i32* %inode_count, i32* %totlen, %struct._IO_FILE* %out) #0 {
entry:
  %path.addr = alloca i8*, align 8
  %os_prefix.addr = alloca i8*, align 8
  %rom_prefix.addr = alloca i8*, align 8
  %Xlist_head.addr = alloca %struct.Xlist_element_s*, align 8
  %compression.addr = alloca i32, align 4
  %compaction.addr = alloca i32, align 4
  %inode_count.addr = alloca i32*, align 8
  %totlen.addr = alloca i32*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %namelen = alloca i32, align 4
  %excluded = alloca i32, align 4
  %save_count = alloca i32, align 4
  %Xlist_scan = alloca %struct.Xlist_element_s*, align 8
  %prefixed_path = alloca i8*, align 8
  %found_path = alloca i8*, align 8
  %rom_filename = alloca i8*, align 8
  %pfenum = alloca %struct.file_enum_s*, align 8
  %ret = alloca i32, align 4
  %block = alloca i32, align 4
  %blocks = alloca i32, align 4
  %node = alloca %struct.romfs_inode_s*, align 8
  %ubuf = alloca i8*, align 8
  %cbuf = alloca i8*, align 8
  %ulen = alloca i64, align 8
  %clen = alloca i64, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %psc_len = alloca i64, align 8
  %psc = alloca %struct.pscompstate, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 8, !tbaa !1
  store i8* %os_prefix, i8** %os_prefix.addr, align 8, !tbaa !1
  store i8* %rom_prefix, i8** %rom_prefix.addr, align 8, !tbaa !1
  store %struct.Xlist_element_s* %Xlist_head, %struct.Xlist_element_s** %Xlist_head.addr, align 8, !tbaa !1
  store i32 %compression, i32* %compression.addr, align 4, !tbaa !5
  store i32 %compaction, i32* %compaction.addr, align 4, !tbaa !5
  store i32* %inode_count, i32** %inode_count.addr, align 8, !tbaa !1
  store i32* %totlen, i32** %totlen.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %excluded to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %save_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32*, i32** %inode_count.addr, align 8, !tbaa !1
  %4 = load i32, i32* %3, align 4, !tbaa !5
  store i32 %4, i32* %save_count, align 4, !tbaa !5
  %5 = bitcast %struct.Xlist_element_s** %Xlist_scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %prefixed_path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %found_path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %rom_filename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct.file_enum_s** %pfenum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %block to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast %struct.romfs_inode_s** %node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i8** %ubuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i8** %cbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i64* %ulen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i64* %clen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast i64* %psc_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast %struct.pscompstate* %psc to i8*
  call void @llvm.lifetime.start(i64 104, i8* %20) #1
  %21 = bitcast %struct.pscompstate* %psc to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 104, i32 8, i1 false)
  %call = call noalias i8* @malloc(i64 1024) #8
  store i8* %call, i8** %prefixed_path, align 8, !tbaa !1
  %call1 = call noalias i8* @malloc(i64 1024) #8
  store i8* %call1, i8** %found_path, align 8, !tbaa !1
  %call2 = call noalias i8* @malloc(i64 1024) #8
  store i8* %call2, i8** %rom_filename, align 8, !tbaa !1
  %call3 = call noalias i8* @malloc(i64 16384) #8
  store i8* %call3, i8** %ubuf, align 8, !tbaa !1
  %call4 = call noalias i8* @malloc(i64 16412) #8
  store i8* %call4, i8** %cbuf, align 8, !tbaa !1
  %22 = load i8*, i8** %ubuf, align 8, !tbaa !1
  %cmp = icmp eq i8* %22, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %23 = load i8*, i8** %cbuf, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %23, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %24 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  %cmp7 = icmp eq i8* %24, null
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %25 = load i8*, i8** %found_path, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %25, null
  br i1 %cmp9, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %26 = load i8*, i8** %rom_filename, align 8, !tbaa !1
  %cmp11 = icmp eq i8* %26, null
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false.8, %lor.lhs.false.6, %lor.lhs.false, %entry
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.end:                                           ; preds = %lor.lhs.false.10
  %27 = load i8*, i8** %os_prefix.addr, align 8, !tbaa !1
  %28 = load i8*, i8** %path.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  call void @prefix_add(i8* %27, i8* %28, i8* %29) #9
  %30 = load i8*, i8** %rom_prefix.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %rom_filename, align 8, !tbaa !1
  call void @prefix_add(i8* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8* %31) #9
  %32 = load i8*, i8** %rom_filename, align 8, !tbaa !1
  %33 = load i8*, i8** %rom_prefix.addr, align 8, !tbaa !1
  %call13 = call i8* @strcpy(i8* %32, i8* %33) #8
  %34 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  %35 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  %call14 = call i64 @strlen(i8* %35) #11
  %conv = trunc i64 %call14 to i32
  %call15 = call %struct.file_enum_s* @gp_enumerate_files_init(i8* %34, i32 %conv, %struct.gs_memory_s* bitcast (%struct.gs_malloc_memory_s* @minimal_memory to %struct.gs_memory_s*)) #9
  store %struct.file_enum_s* %call15, %struct.file_enum_s** %pfenum, align 8, !tbaa !1
  %36 = load %struct.file_enum_s*, %struct.file_enum_s** %pfenum, align 8, !tbaa !1
  %cmp16 = icmp eq %struct.file_enum_s* %36, null
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.end.20:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.111, %if.then.49, %if.then.43, %if.end.20
  %37 = load %struct.file_enum_s*, %struct.file_enum_s** %pfenum, align 8, !tbaa !1
  %38 = load i8*, i8** %found_path, align 8, !tbaa !1
  %call21 = call i32 @gp_enumerate_files_next(%struct.file_enum_s* %37, i8* %38, i32 1024) #9
  store i32 %call21, i32* %namelen, align 4, !tbaa !5
  %cmp22 = icmp sge i32 %call21, 0
  br i1 %cmp22, label %while.body, label %while.end.113

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %excluded, align 4, !tbaa !5
  %39 = load i32, i32* %namelen, align 4, !tbaa !5
  %idxprom = sext i32 %39 to i64
  %40 = load i8*, i8** %found_path, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %40, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !11
  %41 = load %struct.Xlist_element_s*, %struct.Xlist_element_s** %Xlist_head.addr, align 8, !tbaa !1
  store %struct.Xlist_element_s* %41, %struct.Xlist_element_s** %Xlist_scan, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %42 = load %struct.Xlist_element_s*, %struct.Xlist_element_s** %Xlist_scan, align 8, !tbaa !1
  %cmp24 = icmp ne %struct.Xlist_element_s* %42, null
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i8*, i8** %found_path, align 8, !tbaa !1
  %call26 = call i64 @strlen(i8* %43) #11
  %44 = load %struct.Xlist_element_s*, %struct.Xlist_element_s** %Xlist_scan, align 8, !tbaa !1
  %path27 = getelementptr inbounds %struct.Xlist_element_s, %struct.Xlist_element_s* %44, i32 0, i32 1
  %45 = load i8*, i8** %path27, align 8, !tbaa !23
  %call28 = call i64 @strlen(i8* %45) #11
  %cmp29 = icmp uge i64 %call26, %call28
  br i1 %cmp29, label %if.then.31, label %if.end.42

if.then.31:                                       ; preds = %for.body
  %46 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  %48 = load %struct.Xlist_element_s*, %struct.Xlist_element_s** %Xlist_scan, align 8, !tbaa !1
  %path32 = getelementptr inbounds %struct.Xlist_element_s, %struct.Xlist_element_s* %48, i32 0, i32 1
  %49 = load i8*, i8** %path32, align 8, !tbaa !23
  %50 = load i8*, i8** %found_path, align 8, !tbaa !1
  %51 = load i8*, i8** %found_path, align 8, !tbaa !1
  %call33 = call i64 @strlen(i8* %51) #11
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 %call33
  %52 = load %struct.Xlist_element_s*, %struct.Xlist_element_s** %Xlist_scan, align 8, !tbaa !1
  %path34 = getelementptr inbounds %struct.Xlist_element_s, %struct.Xlist_element_s* %52, i32 0, i32 1
  %53 = load i8*, i8** %path34, align 8, !tbaa !23
  %call35 = call i64 @strlen(i8* %53) #11
  %idx.neg = sub i64 0, %call35
  %add.ptr36 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %call37 = call i32 @strcmp(i8* %49, i8* %add.ptr36) #8
  store i32 %call37, i32* %tmp, !tbaa !5
  %54 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = load i32, i32* %tmp, !tbaa !5
  %cmp38 = icmp eq i32 %56, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.31
  store i32 1, i32* %excluded, align 4, !tbaa !5
  br label %for.end

if.end.41:                                        ; preds = %if.then.31
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %57 = load %struct.Xlist_element_s*, %struct.Xlist_element_s** %Xlist_scan, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.Xlist_element_s, %struct.Xlist_element_s* %57, i32 0, i32 0
  %58 = load i8*, i8** %next, align 8, !tbaa !25
  %59 = bitcast i8* %58 to %struct.Xlist_element_s*
  store %struct.Xlist_element_s* %59, %struct.Xlist_element_s** %Xlist_scan, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.40, %for.cond
  %60 = load i32, i32* %excluded, align 4, !tbaa !5
  %tobool = icmp ne i32 %60, 0
  br i1 %tobool, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.end
  br label %while.cond

if.end.44:                                        ; preds = %for.end
  %call45 = call noalias i8* @calloc(i64 1, i64 40) #8
  %61 = bitcast i8* %call45 to %struct.romfs_inode_s*
  store %struct.romfs_inode_s* %61, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %62 = load i8*, i8** %found_path, align 8, !tbaa !1
  %call46 = call %struct._IO_FILE* @fopen64(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #9
  store %struct._IO_FILE* %call46, %struct._IO_FILE** %in, align 8, !tbaa !1
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %cmp47 = icmp eq %struct._IO_FILE* %63, null
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.44
  %64 = load i8*, i8** %found_path, align 8, !tbaa !1
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i32 0, i32 0), i8* %64) #9
  br label %while.cond

if.end.51:                                        ; preds = %if.end.44
  %65 = load i8*, i8** %rom_prefix.addr, align 8, !tbaa !1
  %call52 = call i64 @strlen(i8* %65) #11
  %66 = load i8*, i8** %rom_filename, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i8, i8* %66, i64 %call52
  store i8 0, i8* %arrayidx53, align 1, !tbaa !11
  %67 = load i8*, i8** %rom_filename, align 8, !tbaa !1
  %68 = load i8*, i8** %found_path, align 8, !tbaa !1
  %69 = load i8*, i8** %os_prefix.addr, align 8, !tbaa !1
  %call54 = call i64 @strlen(i8* %69) #11
  %add.ptr55 = getelementptr inbounds i8, i8* %68, i64 %call54
  %call56 = call i8* @strcat(i8* %67, i8* %add.ptr55) #8
  %70 = load i8*, i8** %rom_filename, align 8, !tbaa !1
  %71 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %71, i32 0, i32 2
  store i8* %70, i8** %name, align 8, !tbaa !22
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %call57 = call i32 @fseek(%struct._IO_FILE* %72, i64 0, i32 2) #9
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %call58 = call i64 @ftell(%struct._IO_FILE* %73) #9
  %74 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %74, i32 0, i32 1
  store i64 %call58, i64* %length, align 8, !tbaa !21
  %75 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %disc_length = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %75, i32 0, i32 0
  store i64 %call58, i64* %disc_length, align 8, !tbaa !17
  %76 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %length59 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %76, i32 0, i32 1
  %77 = load i64, i64* %length59, align 8, !tbaa !21
  %add = add i64 %77, 16384
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 16384
  %add60 = add i64 %div, 1
  %conv61 = trunc i64 %add60 to i32
  store i32 %conv61, i32* %blocks, align 4, !tbaa !5
  %78 = load i32, i32* %blocks, align 4, !tbaa !5
  %conv62 = sext i32 %78 to i64
  %call63 = call noalias i8* @calloc(i64 %conv62, i64 8) #8
  %79 = bitcast i8* %call63 to i64*
  %80 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %data_lengths = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %80, i32 0, i32 3
  store i64* %79, i64** %data_lengths, align 8, !tbaa !20
  %81 = load i32, i32* %blocks, align 4, !tbaa !5
  %conv64 = sext i32 %81 to i64
  %call65 = call noalias i8* @calloc(i64 %conv64, i64 8) #8
  %82 = bitcast i8* %call65 to i8**
  %83 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %83, i32 0, i32 4
  store i8** %82, i8*** %data, align 8, !tbaa !19
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %call66 = call i32 @fclose(%struct._IO_FILE* %84) #9
  %85 = load i8*, i8** %found_path, align 8, !tbaa !1
  %call67 = call %struct._IO_FILE* @fopen64(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #9
  store %struct._IO_FILE* %call67, %struct._IO_FILE** %in, align 8, !tbaa !1
  %86 = load i8*, i8** %found_path, align 8, !tbaa !1
  %call68 = call i64 @strlen(i8* %86) #11
  store i64 %call68, i64* %ulen, align 8, !tbaa !7
  store i32 0, i32* %block, align 4, !tbaa !5
  store i64 0, i64* %psc_len, align 8, !tbaa !7
  %87 = load i32, i32* %compaction.addr, align 4, !tbaa !5
  %tobool69 = icmp ne i32 %87, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.51
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %89 = bitcast %struct._IO_FILE* %88 to i8*
  call void @pscompact_start(%struct.pscompstate* %psc, i32 (i8*)* bitcast (i32 (%struct._IO_FILE*)* @fgetc to i32 (i8*)*), void (i32, i8*)* bitcast (i32 (i32, %struct._IO_FILE*)* @ungetc to void (i32, i8*)*), i32 (i8*)* bitcast (i32 (%struct._IO_FILE*)* @feof to i32 (i8*)*), i8* %89, i32 1, i32 0, i32 0) #9
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.51
  br label %while.cond.72

while.cond.72:                                    ; preds = %if.end.95, %if.end.71
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %call73 = call i32 @feof(%struct._IO_FILE* %90) #8
  %tobool74 = icmp ne i32 %call73, 0
  %lnot = xor i1 %tobool74, true
  br i1 %lnot, label %while.body.75, label %while.end

while.body.75:                                    ; preds = %while.cond.72
  %91 = load i32, i32* %compaction.addr, align 4, !tbaa !5
  %tobool76 = icmp ne i32 %91, 0
  br i1 %tobool76, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %while.body.75
  %92 = load i8*, i8** %ubuf, align 8, !tbaa !1
  %call78 = call i64 @pscompact_getcompactedblock(%struct.pscompstate* %psc, i8* %92, i64 16384) #9
  store i64 %call78, i64* %ulen, align 8, !tbaa !7
  br label %if.end.80

if.else:                                          ; preds = %while.body.75
  %93 = load i8*, i8** %ubuf, align 8, !tbaa !1
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %call79 = call i64 @fread(i8* %93, i64 1, i64 16384, %struct._IO_FILE* %94) #9
  store i64 %call79, i64* %ulen, align 8, !tbaa !7
  br label %if.end.80

if.end.80:                                        ; preds = %if.else, %if.then.77
  %95 = load i64, i64* %ulen, align 8, !tbaa !7
  %96 = load i64, i64* %psc_len, align 8, !tbaa !7
  %add81 = add i64 %96, %95
  store i64 %add81, i64* %psc_len, align 8, !tbaa !7
  %97 = load i64, i64* %ulen, align 8, !tbaa !7
  %tobool82 = icmp ne i64 %97, 0
  br i1 %tobool82, label %if.end.84, label %if.then.83

if.then.83:                                       ; preds = %if.end.80
  br label %while.end

if.end.84:                                        ; preds = %if.end.80
  store i64 16412, i64* %clen, align 8, !tbaa !7
  %98 = load i32, i32* %compression.addr, align 4, !tbaa !5
  %tobool85 = icmp ne i32 %98, 0
  br i1 %tobool85, label %if.then.86, label %if.else.93

if.then.86:                                       ; preds = %if.end.84
  %99 = load i8*, i8** %cbuf, align 8, !tbaa !1
  %100 = load i8*, i8** %ubuf, align 8, !tbaa !1
  %101 = load i64, i64* %ulen, align 8, !tbaa !7
  %call87 = call i32 @compress(i8* %99, i64* %clen, i8* %100, i64 %101) #9
  store i32 %call87, i32* %ret, align 4, !tbaa !5
  %102 = load i32, i32* %ret, align 4, !tbaa !5
  %cmp88 = icmp ne i32 %102, 0
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.then.86
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.end.92:                                        ; preds = %if.then.86
  br label %if.end.95

if.else.93:                                       ; preds = %if.end.84
  %103 = load i8*, i8** %cbuf, align 8, !tbaa !1
  %104 = load i8*, i8** %ubuf, align 8, !tbaa !1
  %105 = load i64, i64* %ulen, align 8, !tbaa !7
  %call94 = call i8* @memcpy(i8* %103, i8* %104, i64 %105) #8
  %106 = load i64, i64* %ulen, align 8, !tbaa !7
  store i64 %106, i64* %clen, align 8, !tbaa !7
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.93, %if.end.92
  %107 = load i64, i64* %clen, align 8, !tbaa !7
  %108 = load i32, i32* %block, align 4, !tbaa !5
  %idxprom96 = sext i32 %108 to i64
  %109 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %data_lengths97 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %109, i32 0, i32 3
  %110 = load i64*, i64** %data_lengths97, align 8, !tbaa !20
  %arrayidx98 = getelementptr inbounds i64, i64* %110, i64 %idxprom96
  store i64 %107, i64* %arrayidx98, align 8, !tbaa !7
  %111 = load i64, i64* %clen, align 8, !tbaa !7
  %call99 = call noalias i8* @malloc(i64 %111) #8
  %112 = load i32, i32* %block, align 4, !tbaa !5
  %idxprom100 = sext i32 %112 to i64
  %113 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %data101 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %113, i32 0, i32 4
  %114 = load i8**, i8*** %data101, align 8, !tbaa !19
  %arrayidx102 = getelementptr inbounds i8*, i8** %114, i64 %idxprom100
  store i8* %call99, i8** %arrayidx102, align 8, !tbaa !1
  %115 = load i32, i32* %block, align 4, !tbaa !5
  %idxprom103 = sext i32 %115 to i64
  %116 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %data104 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %116, i32 0, i32 4
  %117 = load i8**, i8*** %data104, align 8, !tbaa !19
  %arrayidx105 = getelementptr inbounds i8*, i8** %117, i64 %idxprom103
  %118 = load i8*, i8** %arrayidx105, align 8, !tbaa !1
  %119 = load i8*, i8** %cbuf, align 8, !tbaa !1
  %120 = load i64, i64* %clen, align 8, !tbaa !7
  %call106 = call i8* @memcpy(i8* %118, i8* %119, i64 %120) #8
  %121 = load i32, i32* %block, align 4, !tbaa !5
  %inc = add nsw i32 %121, 1
  store i32 %inc, i32* %block, align 4, !tbaa !5
  br label %while.cond.72

while.end:                                        ; preds = %if.then.83, %while.cond.72
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %call107 = call i32 @fclose(%struct._IO_FILE* %122) #9
  %123 = load i32, i32* %compaction.addr, align 4, !tbaa !5
  %tobool108 = icmp ne i32 %123, 0
  br i1 %tobool108, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %while.end
  call void @pscompact_end(%struct.pscompstate* %psc) #9
  %124 = load i64, i64* %psc_len, align 8, !tbaa !7
  %125 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %length110 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %125, i32 0, i32 1
  store i64 %124, i64* %length110, align 8, !tbaa !21
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %while.end
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %127 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %128 = load i32, i32* %compression.addr, align 4, !tbaa !5
  %129 = load i32*, i32** %inode_count.addr, align 8, !tbaa !1
  %130 = load i32, i32* %129, align 4, !tbaa !5
  %131 = load i32*, i32** %totlen.addr, align 8, !tbaa !1
  call void @inode_write(%struct._IO_FILE* %126, %struct.romfs_inode_s* %127, i32 %128, i32 %130, i32* %131) #9
  %132 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  call void @inode_clear(%struct.romfs_inode_s* %132) #9
  %133 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %134 = bitcast %struct.romfs_inode_s* %133 to i8*
  call void @free(i8* %134) #8
  %135 = load i32*, i32** %inode_count.addr, align 8, !tbaa !1
  %136 = load i32, i32* %135, align 4, !tbaa !5
  %inc112 = add nsw i32 %136, 1
  store i32 %inc112, i32* %135, align 4, !tbaa !5
  br label %while.cond

while.end.113:                                    ; preds = %while.cond
  %137 = load i8*, i8** %cbuf, align 8, !tbaa !1
  call void @free(i8* %137) #8
  %138 = load i8*, i8** %ubuf, align 8, !tbaa !1
  call void @free(i8* %138) #8
  %139 = load i8*, i8** %found_path, align 8, !tbaa !1
  call void @free(i8* %139) #8
  %140 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  call void @free(i8* %140) #8
  %141 = load i32, i32* %save_count, align 4, !tbaa !5
  %142 = load i32*, i32** %inode_count.addr, align 8, !tbaa !1
  %143 = load i32, i32* %142, align 4, !tbaa !5
  %cmp114 = icmp eq i32 %141, %143
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %while.end.113
  %144 = load i8*, i8** %os_prefix.addr, align 8, !tbaa !1
  %145 = load i8*, i8** %path.addr, align 8, !tbaa !1
  %call117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i32 0, i32 0), i8* %144, i8* %145) #9
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %while.end.113
  %146 = bitcast %struct.pscompstate* %psc to i8*
  call void @llvm.lifetime.end(i64 104, i8* %146) #1
  %147 = bitcast i64* %psc_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i64* %clen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast i64* %ulen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast i8** %cbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast i8** %ubuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast %struct.romfs_inode_s** %node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i32* %block to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast %struct.file_enum_s** %pfenum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i8** %rom_filename to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast i8** %found_path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i8** %prefixed_path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast %struct.Xlist_element_s** %Xlist_scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast i32* %save_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %excluded to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32* %namelen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare %struct.file_enum_s* @gp_enumerate_files_init(i8*, i32, %struct.gs_memory_s*) #3

declare i32 @gp_enumerate_files_next(%struct.file_enum_s*, i8*, i32) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare %struct._IO_FILE* @fopen64(i8*, i8*) #3

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

declare i64 @ftell(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal void @pscompact_start(%struct.pscompstate* %psc, i32 (i8*)* %myfgetc, void (i32, i8*)* %myungetc, i32 (i8*)* %myfeof, i8* %myfile, i32 %names, i32 %binary, i32 %firstnum) #0 {
entry:
  %psc.addr = alloca %struct.pscompstate*, align 8
  %myfgetc.addr = alloca i32 (i8*)*, align 8
  %myungetc.addr = alloca void (i32, i8*)*, align 8
  %myfeof.addr = alloca i32 (i8*)*, align 8
  %myfile.addr = alloca i8*, align 8
  %names.addr = alloca i32, align 4
  %binary.addr = alloca i32, align 4
  %firstnum.addr = alloca i32, align 4
  store %struct.pscompstate* %psc, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  store i32 (i8*)* %myfgetc, i32 (i8*)** %myfgetc.addr, align 8, !tbaa !1
  store void (i32, i8*)* %myungetc, void (i32, i8*)** %myungetc.addr, align 8, !tbaa !1
  store i32 (i8*)* %myfeof, i32 (i8*)** %myfeof.addr, align 8, !tbaa !1
  store i8* %myfile, i8** %myfile.addr, align 8, !tbaa !1
  store i32 %names, i32* %names.addr, align 4, !tbaa !5
  store i32 %binary, i32* %binary.addr, align 4, !tbaa !5
  store i32 %firstnum, i32* %firstnum.addr, align 4, !tbaa !5
  %0 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %0, i32 0, i32 0
  store i32 0, i32* %state, align 4, !tbaa !26
  %call = call noalias i8* @malloc(i64 80) #8
  %1 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %1, i32 0, i32 8
  store i8* %call, i8** %bufferin, align 8, !tbaa !28
  %call1 = call noalias i8* @malloc(i64 80) #8
  %2 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %2, i32 0, i32 9
  store i8* %call1, i8** %bufferout, align 8, !tbaa !29
  %3 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin2 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %3, i32 0, i32 8
  %4 = load i8*, i8** %bufferin2, align 8, !tbaa !28
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout3 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %5, i32 0, i32 9
  %6 = load i8*, i8** %bufferout3, align 8, !tbaa !29
  %cmp4 = icmp eq i8* %6, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.71, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inmax = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %8, i32 0, i32 2
  store i32 80, i32* %inmax, align 4, !tbaa !30
  %9 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outmax = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %9, i32 0, i32 5
  store i32 80, i32* %outmax, align 4, !tbaa !31
  %10 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %10, i32 0, i32 1
  store i32 0, i32* %inpos, align 4, !tbaa !32
  %11 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %wasascii = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %11, i32 0, i32 7
  store i32 0, i32* %wasascii, align 4, !tbaa !33
  %12 = load i32 (i8*)*, i32 (i8*)** %myfgetc.addr, align 8, !tbaa !1
  %13 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %13, i32 0, i32 10
  store i32 (i8*)* %12, i32 (i8*)** %pgetc, align 8, !tbaa !34
  %14 = load void (i32, i8*)*, void (i32, i8*)** %myungetc.addr, align 8, !tbaa !1
  %15 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %unpgetc = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %15, i32 0, i32 11
  store void (i32, i8*)* %14, void (i32, i8*)** %unpgetc, align 8, !tbaa !35
  %16 = load i32 (i8*)*, i32 (i8*)** %myfeof.addr, align 8, !tbaa !1
  %17 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %peof = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %17, i32 0, i32 12
  store i32 (i8*)* %16, i32 (i8*)** %peof, align 8, !tbaa !36
  %18 = load i8*, i8** %myfile.addr, align 8, !tbaa !1
  %19 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %19, i32 0, i32 13
  store i8* %18, i8** %file, align 8, !tbaa !37
  %20 = load i32, i32* %names.addr, align 4, !tbaa !5
  %21 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %names6 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %21, i32 0, i32 14
  store i32 %20, i32* %names6, align 4, !tbaa !38
  %22 = load i32, i32* %binary.addr, align 4, !tbaa !5
  %23 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %binary7 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %23, i32 0, i32 15
  store i32 %22, i32* %binary7, align 4, !tbaa !39
  %24 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %noescape = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %24, i32 0, i32 16
  store i32 0, i32* %noescape, align 4, !tbaa !40
  %25 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %25, i32 0, i32 17
  store i32 0, i32* %escaping, align 4, !tbaa !41
  %26 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %paren = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %26, i32 0, i32 18
  store i32 0, i32* %paren, align 4, !tbaa !42
  %27 = load i32, i32* %firstnum.addr, align 4, !tbaa !5
  %28 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %firstnum8 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %28, i32 0, i32 19
  store i32 %27, i32* %firstnum8, align 4, !tbaa !43
  ret void
}

declare i32 @fgetc(%struct._IO_FILE*) #3

declare i32 @ungetc(i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i64 @pscompact_getcompactedblock(%struct.pscompstate* %psc, i8* %ubuf, i64 %ulen) #0 {
entry:
  %retval = alloca i64, align 8
  %psc.addr = alloca %struct.pscompstate*, align 8
  %ubuf.addr = alloca i8*, align 8
  %ulen.addr = alloca i64, align 8
  %out = alloca i8*, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %r = alloca i32, align 4
  %n = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %n1155 = alloca i32, align 4
  %n2159 = alloca i32, align 4
  %i = alloca i32, align 4
  %f = alloca float, align 4
  %fc = alloca %union.anon.0, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp463 = alloca i32, align 4
  %__s1_len494 = alloca i64, align 8
  %__s2_len496 = alloca i64, align 8
  %tmp497 = alloca i32, align 4
  %__s1504 = alloca i8*, align 8
  %__result507 = alloca i32, align 4
  %tmp545 = alloca i32, align 4
  %c620 = alloca i8, align 1
  %d = alloca i32, align 4
  %__s1_len1001 = alloca i64, align 8
  %__s2_len1003 = alloca i64, align 8
  %tmp1004 = alloca i32, align 4
  %__s11011 = alloca i8*, align 8
  %__result1014 = alloca i32, align 4
  %tmp1052 = alloca i32, align 4
  %__s1_len1076 = alloca i64, align 8
  %__s2_len1078 = alloca i64, align 8
  %tmp1079 = alloca i32, align 4
  %__s11086 = alloca i8*, align 8
  %__result1089 = alloca i32, align 4
  %tmp1127 = alloca i32, align 4
  %__s1_len1152 = alloca i64, align 8
  %__s2_len1154 = alloca i64, align 8
  %tmp1155 = alloca i32, align 4
  %__s11162 = alloca i8*, align 8
  %__result1165 = alloca i32, align 4
  %tmp1203 = alloca i32, align 4
  store %struct.pscompstate* %psc, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  store i8* %ubuf, i8** %ubuf.addr, align 8, !tbaa !1
  store i64 %ulen, i64* %ulen.addr, align 8, !tbaa !7
  %0 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i64, i64* %ulen.addr, align 8, !tbaa !7
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1299

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %ubuf.addr, align 8, !tbaa !1
  store i8* %3, i8** %out, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %4 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %4, i32 0, i32 0
  %5 = load i32, i32* %state, align 4, !tbaa !26
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.618
    i32 5, label %sw.bb.834
    i32 2, label %sw.bb.861
    i32 1, label %sw.bb.982
    i32 3, label %sw.bb.1222
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %6, i32 0, i32 10
  %7 = load i32 (i8*)*, i32 (i8*)** %pgetc, align 8, !tbaa !34
  %8 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %8, i32 0, i32 13
  %9 = load i8*, i8** %file, align 8, !tbaa !37
  %call = call i32 %7(i8* %9) #9
  store i32 %call, i32* %c, align 4, !tbaa !5
  %10 = load i32, i32* %c, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %10, 32
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %11 = load i32, i32* %c, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %11, -1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %lor.lhs.false, %sw.bb
  %12 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %12, i32 0, i32 1
  %13 = load i32, i32* %inpos, align 4, !tbaa !32
  %cmp4 = icmp eq i32 %13, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  br label %sw.epilog

if.end.6:                                         ; preds = %if.then.3
  br label %if.end.223

if.else:                                          ; preds = %lor.lhs.false
  %14 = load i32, i32* %c, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %14, 40
  br i1 %cmp7, label %if.then.8, label %if.else.14

if.then.8:                                        ; preds = %if.else
  %15 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos9 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %15, i32 0, i32 1
  %16 = load i32, i32* %inpos9, align 4, !tbaa !32
  %cmp10 = icmp eq i32 %16, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.8
  %17 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state12 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %17, i32 0, i32 0
  store i32 2, i32* %state12, align 4, !tbaa !26
  %18 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %paren = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %18, i32 0, i32 18
  store i32 1, i32* %paren, align 4, !tbaa !42
  br label %sw.epilog

if.end.13:                                        ; preds = %if.then.8
  br label %if.end.222

if.else.14:                                       ; preds = %if.else
  %19 = load i32, i32* %c, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %19, 62
  br i1 %cmp15, label %if.then.16, label %if.else.21

if.then.16:                                       ; preds = %if.else.14
  %20 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos17 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %20, i32 0, i32 1
  %21 = load i32, i32* %inpos17, align 4, !tbaa !32
  %cmp18 = icmp eq i32 %21, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.16
  %22 = load i32, i32* %c, align 4, !tbaa !5
  %conv = trunc i32 %22 to i8
  %23 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %out, align 8, !tbaa !1
  store i8 %conv, i8* %23, align 1, !tbaa !11
  br label %sw.epilog

if.end.20:                                        ; preds = %if.then.16
  br label %if.end.221

if.else.21:                                       ; preds = %if.else.14
  %24 = load i32, i32* %c, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %24, 123
  br i1 %cmp22, label %if.then.33, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.else.21
  %25 = load i32, i32* %c, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %25, 125
  br i1 %cmp25, label %if.then.33, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.24
  %26 = load i32, i32* %c, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %26, 91
  br i1 %cmp28, label %if.then.33, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.27
  %27 = load i32, i32* %c, align 4, !tbaa !5
  %cmp31 = icmp eq i32 %27, 93
  br i1 %cmp31, label %if.then.33, label %if.else.41

if.then.33:                                       ; preds = %lor.lhs.false.30, %lor.lhs.false.27, %lor.lhs.false.24, %if.else.21
  %28 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos34 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %28, i32 0, i32 1
  %29 = load i32, i32* %inpos34, align 4, !tbaa !32
  %cmp35 = icmp eq i32 %29, 0
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.then.33
  %30 = load i32, i32* %c, align 4, !tbaa !5
  %conv38 = trunc i32 %30 to i8
  %31 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr39, i8** %out, align 8, !tbaa !1
  store i8 %conv38, i8* %31, align 1, !tbaa !11
  %32 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %wasascii = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %32, i32 0, i32 7
  store i32 0, i32* %wasascii, align 4, !tbaa !33
  br label %sw.epilog

if.end.40:                                        ; preds = %if.then.33
  br label %if.end.220

if.else.41:                                       ; preds = %lor.lhs.false.30
  %33 = load i32, i32* %c, align 4, !tbaa !5
  %cmp42 = icmp sge i32 %33, 128
  br i1 %cmp42, label %land.lhs.true, label %if.else.48

land.lhs.true:                                    ; preds = %if.else.41
  %34 = load i32, i32* %c, align 4, !tbaa !5
  %cmp44 = icmp sle i32 %34, 131
  br i1 %cmp44, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %land.lhs.true
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.72, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.else.48:                                       ; preds = %land.lhs.true, %if.else.41
  %36 = load i32, i32* %c, align 4, !tbaa !5
  %cmp49 = icmp eq i32 %36, 132
  br i1 %cmp49, label %if.then.63, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.else.48
  %37 = load i32, i32* %c, align 4, !tbaa !5
  %cmp52 = icmp eq i32 %37, 133
  br i1 %cmp52, label %if.then.63, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.51
  %38 = load i32, i32* %c, align 4, !tbaa !5
  %cmp55 = icmp eq i32 %38, 138
  br i1 %cmp55, label %if.then.63, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.54
  %39 = load i32, i32* %c, align 4, !tbaa !5
  %cmp58 = icmp eq i32 %39, 139
  br i1 %cmp58, label %if.then.63, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.57
  %40 = load i32, i32* %c, align 4, !tbaa !5
  %cmp61 = icmp eq i32 %40, 140
  br i1 %cmp61, label %if.then.63, label %if.else.69

if.then.63:                                       ; preds = %lor.lhs.false.60, %lor.lhs.false.57, %lor.lhs.false.54, %lor.lhs.false.51, %if.else.48
  %41 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos64 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %41, i32 0, i32 1
  %42 = load i32, i32* %inpos64, align 4, !tbaa !32
  %cmp65 = icmp eq i32 %42, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.63
  %43 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %44 = load i32, i32* %c, align 4, !tbaa !5
  call void @pscompact_copy(%struct.pscompstate* %43, i32 %44, i32 4) #9
  br label %sw.epilog

if.end.68:                                        ; preds = %if.then.63
  br label %if.end.218

if.else.69:                                       ; preds = %lor.lhs.false.60
  %45 = load i32, i32* %c, align 4, !tbaa !5
  %cmp70 = icmp eq i32 %45, 134
  br i1 %cmp70, label %if.then.75, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %if.else.69
  %46 = load i32, i32* %c, align 4, !tbaa !5
  %cmp73 = icmp eq i32 %46, 135
  br i1 %cmp73, label %if.then.75, label %if.else.81

if.then.75:                                       ; preds = %lor.lhs.false.72, %if.else.69
  %47 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos76 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %47, i32 0, i32 1
  %48 = load i32, i32* %inpos76, align 4, !tbaa !32
  %cmp77 = icmp eq i32 %48, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.then.75
  %49 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %50 = load i32, i32* %c, align 4, !tbaa !5
  call void @pscompact_copy(%struct.pscompstate* %49, i32 %50, i32 2) #9
  br label %sw.epilog

if.end.80:                                        ; preds = %if.then.75
  br label %if.end.217

if.else.81:                                       ; preds = %lor.lhs.false.72
  %51 = load i32, i32* %c, align 4, !tbaa !5
  %cmp82 = icmp eq i32 %51, 136
  br i1 %cmp82, label %if.then.99, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %if.else.81
  %52 = load i32, i32* %c, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %52, 141
  br i1 %cmp85, label %if.then.99, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %lor.lhs.false.84
  %53 = load i32, i32* %c, align 4, !tbaa !5
  %cmp88 = icmp eq i32 %53, 145
  br i1 %cmp88, label %if.then.99, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %lor.lhs.false.87
  %54 = load i32, i32* %c, align 4, !tbaa !5
  %cmp91 = icmp eq i32 %54, 146
  br i1 %cmp91, label %if.then.99, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %lor.lhs.false.90
  %55 = load i32, i32* %c, align 4, !tbaa !5
  %cmp94 = icmp eq i32 %55, 147
  br i1 %cmp94, label %if.then.99, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false.93
  %56 = load i32, i32* %c, align 4, !tbaa !5
  %cmp97 = icmp eq i32 %56, 148
  br i1 %cmp97, label %if.then.99, label %if.else.105

if.then.99:                                       ; preds = %lor.lhs.false.96, %lor.lhs.false.93, %lor.lhs.false.90, %lor.lhs.false.87, %lor.lhs.false.84, %if.else.81
  %57 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos100 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %57, i32 0, i32 1
  %58 = load i32, i32* %inpos100, align 4, !tbaa !32
  %cmp101 = icmp eq i32 %58, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.then.99
  %59 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %60 = load i32, i32* %c, align 4, !tbaa !5
  call void @pscompact_copy(%struct.pscompstate* %59, i32 %60, i32 1) #9
  br label %sw.epilog

if.end.104:                                       ; preds = %if.then.99
  br label %if.end.216

if.else.105:                                      ; preds = %lor.lhs.false.96
  %61 = load i32, i32* %c, align 4, !tbaa !5
  %cmp106 = icmp eq i32 %61, 137
  br i1 %cmp106, label %if.then.108, label %if.else.120

if.then.108:                                      ; preds = %if.else.105
  %62 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos109 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %62, i32 0, i32 1
  %63 = load i32, i32* %inpos109, align 4, !tbaa !32
  %cmp110 = icmp eq i32 %63, 0
  br i1 %cmp110, label %if.then.112, label %if.end.119

if.then.112:                                      ; preds = %if.then.108
  %64 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc113 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %65, i32 0, i32 10
  %66 = load i32 (i8*)*, i32 (i8*)** %pgetc113, align 8, !tbaa !34
  %67 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file114 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %67, i32 0, i32 13
  %68 = load i8*, i8** %file114, align 8, !tbaa !37
  %call115 = call i32 %66(i8* %68) #9
  store i32 %call115, i32* %r, align 4, !tbaa !5
  %69 = load i32, i32* %r, align 4, !tbaa !5
  %and = and i32 %69, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %if.then.112
  %70 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %71 = load i32, i32* %c, align 4, !tbaa !5
  %72 = load i32, i32* %r, align 4, !tbaa !5
  call void @pscompact_copy2(%struct.pscompstate* %70, i32 %71, i32 %72, i32 2) #9
  br label %if.end.118

if.else.117:                                      ; preds = %if.then.112
  %73 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %74 = load i32, i32* %c, align 4, !tbaa !5
  %75 = load i32, i32* %r, align 4, !tbaa !5
  call void @pscompact_copy2(%struct.pscompstate* %73, i32 %74, i32 %75, i32 4) #9
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %if.then.116
  store i32 4, i32* %cleanup.dest.slot
  %76 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  br label %sw.epilog

if.end.119:                                       ; preds = %if.then.108
  br label %if.end.215

if.else.120:                                      ; preds = %if.else.105
  %77 = load i32, i32* %c, align 4, !tbaa !5
  %cmp121 = icmp eq i32 %77, 142
  br i1 %cmp121, label %if.then.123, label %if.else.132

if.then.123:                                      ; preds = %if.else.120
  %78 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos124 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %78, i32 0, i32 1
  %79 = load i32, i32* %inpos124, align 4, !tbaa !32
  %cmp125 = icmp eq i32 %79, 0
  br i1 %cmp125, label %if.then.127, label %if.end.131

if.then.127:                                      ; preds = %if.then.123
  %80 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc128 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %81, i32 0, i32 10
  %82 = load i32 (i8*)*, i32 (i8*)** %pgetc128, align 8, !tbaa !34
  %83 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file129 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %83, i32 0, i32 13
  %84 = load i8*, i8** %file129, align 8, !tbaa !37
  %call130 = call i32 %82(i8* %84) #9
  store i32 %call130, i32* %n, align 4, !tbaa !5
  %85 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %86 = load i32, i32* %c, align 4, !tbaa !5
  %87 = load i32, i32* %n, align 4, !tbaa !5
  %88 = load i32, i32* %n, align 4, !tbaa !5
  call void @pscompact_copy2(%struct.pscompstate* %85, i32 %86, i32 %87, i32 %88) #9
  store i32 4, i32* %cleanup.dest.slot
  %89 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  br label %sw.epilog

if.end.131:                                       ; preds = %if.then.123
  br label %if.end.214

if.else.132:                                      ; preds = %if.else.120
  %90 = load i32, i32* %c, align 4, !tbaa !5
  %cmp133 = icmp eq i32 %90, 143
  br i1 %cmp133, label %if.then.135, label %if.else.147

if.then.135:                                      ; preds = %if.else.132
  %91 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos136 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %91, i32 0, i32 1
  %92 = load i32, i32* %inpos136, align 4, !tbaa !32
  %cmp137 = icmp eq i32 %92, 0
  br i1 %cmp137, label %if.then.139, label %if.end.146

if.then.139:                                      ; preds = %if.then.135
  %93 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #1
  %94 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc140 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %94, i32 0, i32 10
  %95 = load i32 (i8*)*, i32 (i8*)** %pgetc140, align 8, !tbaa !34
  %96 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file141 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %96, i32 0, i32 13
  %97 = load i8*, i8** %file141, align 8, !tbaa !37
  %call142 = call i32 %95(i8* %97) #9
  store i32 %call142, i32* %n1, align 4, !tbaa !5
  %98 = bitcast i32* %n2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  %99 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc143 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %99, i32 0, i32 10
  %100 = load i32 (i8*)*, i32 (i8*)** %pgetc143, align 8, !tbaa !34
  %101 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file144 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %101, i32 0, i32 13
  %102 = load i8*, i8** %file144, align 8, !tbaa !37
  %call145 = call i32 %100(i8* %102) #9
  store i32 %call145, i32* %n2, align 4, !tbaa !5
  %103 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %104 = load i32, i32* %c, align 4, !tbaa !5
  %105 = load i32, i32* %n1, align 4, !tbaa !5
  %106 = load i32, i32* %n2, align 4, !tbaa !5
  %107 = load i32, i32* %n1, align 4, !tbaa !5
  %shl = shl i32 %107, 8
  %108 = load i32, i32* %n2, align 4, !tbaa !5
  %add = add nsw i32 %shl, %108
  call void @pscompact_copy3(%struct.pscompstate* %103, i32 %104, i32 %105, i32 %106, i32 %add) #9
  store i32 4, i32* %cleanup.dest.slot
  %109 = bitcast i32* %n2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  br label %sw.epilog

if.end.146:                                       ; preds = %if.then.135
  br label %if.end.213

if.else.147:                                      ; preds = %if.else.132
  %111 = load i32, i32* %c, align 4, !tbaa !5
  %cmp148 = icmp eq i32 %111, 144
  br i1 %cmp148, label %if.then.150, label %if.else.166

if.then.150:                                      ; preds = %if.else.147
  %112 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos151 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %112, i32 0, i32 1
  %113 = load i32, i32* %inpos151, align 4, !tbaa !32
  %cmp152 = icmp eq i32 %113, 0
  br i1 %cmp152, label %if.then.154, label %if.end.165

if.then.154:                                      ; preds = %if.then.150
  %114 = bitcast i32* %n1155 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #1
  %115 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc156 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %115, i32 0, i32 10
  %116 = load i32 (i8*)*, i32 (i8*)** %pgetc156, align 8, !tbaa !34
  %117 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file157 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %117, i32 0, i32 13
  %118 = load i8*, i8** %file157, align 8, !tbaa !37
  %call158 = call i32 %116(i8* %118) #9
  store i32 %call158, i32* %n1155, align 4, !tbaa !5
  %119 = bitcast i32* %n2159 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #1
  %120 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc160 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %120, i32 0, i32 10
  %121 = load i32 (i8*)*, i32 (i8*)** %pgetc160, align 8, !tbaa !34
  %122 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file161 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %122, i32 0, i32 13
  %123 = load i8*, i8** %file161, align 8, !tbaa !37
  %call162 = call i32 %121(i8* %123) #9
  store i32 %call162, i32* %n2159, align 4, !tbaa !5
  %124 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %125 = load i32, i32* %c, align 4, !tbaa !5
  %126 = load i32, i32* %n1155, align 4, !tbaa !5
  %127 = load i32, i32* %n2159, align 4, !tbaa !5
  %128 = load i32, i32* %n1155, align 4, !tbaa !5
  %129 = load i32, i32* %n2159, align 4, !tbaa !5
  %shl163 = shl i32 %129, 8
  %add164 = add nsw i32 %128, %shl163
  call void @pscompact_copy3(%struct.pscompstate* %124, i32 %125, i32 %126, i32 %127, i32 %add164) #9
  store i32 4, i32* %cleanup.dest.slot
  %130 = bitcast i32* %n2159 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %n1155 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  br label %sw.epilog

if.end.165:                                       ; preds = %if.then.150
  br label %if.end.212

if.else.166:                                      ; preds = %if.else.147
  %132 = load i32, i32* %c, align 4, !tbaa !5
  %cmp167 = icmp sge i32 %132, 149
  br i1 %cmp167, label %land.lhs.true.169, label %if.else.174

land.lhs.true.169:                                ; preds = %if.else.166
  %133 = load i32, i32* %c, align 4, !tbaa !5
  %cmp170 = icmp sle i32 %133, 159
  br i1 %cmp170, label %if.then.172, label %if.else.174

if.then.172:                                      ; preds = %land.lhs.true.169
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %135 = load i32, i32* %c, align 4, !tbaa !5
  %call173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.73, i32 0, i32 0), i32 %135) #9
  call void @exit(i32 1) #10
  unreachable

if.else.174:                                      ; preds = %land.lhs.true.169, %if.else.166
  %136 = load i32, i32* %c, align 4, !tbaa !5
  %cmp175 = icmp eq i32 %136, 37
  br i1 %cmp175, label %if.then.177, label %if.else.184

if.then.177:                                      ; preds = %if.else.174
  %137 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos178 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %137, i32 0, i32 1
  %138 = load i32, i32* %inpos178, align 4, !tbaa !32
  %cmp179 = icmp eq i32 %138, 0
  br i1 %cmp179, label %if.then.181, label %if.end.183

if.then.181:                                      ; preds = %if.then.177
  %139 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state182 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %139, i32 0, i32 0
  store i32 1, i32* %state182, align 4, !tbaa !26
  br label %sw.epilog

if.end.183:                                       ; preds = %if.then.177
  br label %if.end.210

if.else.184:                                      ; preds = %if.else.174
  %140 = load i32, i32* %c, align 4, !tbaa !5
  %cmp185 = icmp eq i32 %140, 60
  br i1 %cmp185, label %if.then.187, label %if.else.194

if.then.187:                                      ; preds = %if.else.184
  %141 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos188 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %141, i32 0, i32 1
  %142 = load i32, i32* %inpos188, align 4, !tbaa !32
  %cmp189 = icmp eq i32 %142, 0
  br i1 %cmp189, label %if.then.191, label %if.end.193

if.then.191:                                      ; preds = %if.then.187
  %143 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state192 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %143, i32 0, i32 0
  store i32 3, i32* %state192, align 4, !tbaa !26
  br label %sw.epilog

if.end.193:                                       ; preds = %if.then.187
  br label %if.end.209

if.else.194:                                      ; preds = %if.else.184
  %144 = load i32, i32* %c, align 4, !tbaa !5
  %cmp195 = icmp eq i32 %144, 47
  br i1 %cmp195, label %land.lhs.true.197, label %if.else.207

land.lhs.true.197:                                ; preds = %if.else.194
  %145 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos198 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %145, i32 0, i32 1
  %146 = load i32, i32* %inpos198, align 4, !tbaa !32
  %cmp199 = icmp sgt i32 %146, 0
  br i1 %cmp199, label %land.lhs.true.201, label %if.else.207

land.lhs.true.201:                                ; preds = %land.lhs.true.197
  %147 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos202 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %147, i32 0, i32 1
  %148 = load i32, i32* %inpos202, align 4, !tbaa !32
  %sub = sub nsw i32 %148, 1
  %idxprom = sext i32 %sub to i64
  %149 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %149, i32 0, i32 8
  %150 = load i8*, i8** %bufferin, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds i8, i8* %150, i64 %idxprom
  %151 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv203 = sext i8 %151 to i32
  %cmp204 = icmp ne i32 %conv203, 47
  br i1 %cmp204, label %if.then.206, label %if.else.207

if.then.206:                                      ; preds = %land.lhs.true.201
  br label %if.end.208

if.else.207:                                      ; preds = %land.lhs.true.201, %land.lhs.true.197, %if.else.194
  %152 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %153 = load i32, i32* %c, align 4, !tbaa !5
  call void @pscompact_buffer(%struct.pscompstate* %152, i32 %153) #9
  br label %sw.epilog

if.end.208:                                       ; preds = %if.then.206
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.193
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.end.183
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.end.165
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.end.146
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end.131
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.119
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.end.104
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.end.80
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.end.68
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.end.40
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.end.20
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.end.13
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %if.end.6
  %154 = load i32, i32* %c, align 4, !tbaa !5
  %cmp224 = icmp sgt i32 %154, 32
  br i1 %cmp224, label %if.then.226, label %if.end.228

if.then.226:                                      ; preds = %if.end.223
  %155 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %unpgetc = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %155, i32 0, i32 11
  %156 = load void (i32, i8*)*, void (i32, i8*)** %unpgetc, align 8, !tbaa !35
  %157 = load i32, i32* %c, align 4, !tbaa !5
  %158 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file227 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %158, i32 0, i32 13
  %159 = load i8*, i8** %file227, align 8, !tbaa !37
  call void %156(i32 %157, i8* %159) #9
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.226, %if.end.223
  %160 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %binary = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %160, i32 0, i32 15
  %161 = load i32, i32* %binary, align 4, !tbaa !39
  %tobool229 = icmp ne i32 %161, 0
  br i1 %tobool229, label %if.then.230, label %if.end.605

if.then.230:                                      ; preds = %if.end.228
  %162 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #1
  %163 = bitcast float* %f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %163) #1
  %164 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %call231 = call i32 @pscompact_isint(%struct.pscompstate* %164, i32* %i) #9
  %tobool232 = icmp ne i32 %call231, 0
  br i1 %tobool232, label %if.then.233, label %if.else.303

if.then.233:                                      ; preds = %if.then.230
  %165 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %firstnum = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %165, i32 0, i32 19
  %166 = load i32, i32* %firstnum, align 4, !tbaa !43
  %tobool234 = icmp ne i32 %166, 0
  br i1 %tobool234, label %if.then.235, label %if.else.237

if.then.235:                                      ; preds = %if.then.233
  %167 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %firstnum236 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %167, i32 0, i32 19
  store i32 0, i32* %firstnum236, align 4, !tbaa !43
  br label %if.end.302

if.else.237:                                      ; preds = %if.then.233
  %168 = load i32, i32* %i, align 4, !tbaa !5
  %cmp238 = icmp sge i32 %168, -128
  br i1 %cmp238, label %land.lhs.true.240, label %if.else.252

land.lhs.true.240:                                ; preds = %if.else.237
  %169 = load i32, i32* %i, align 4, !tbaa !5
  %cmp241 = icmp sle i32 %169, 127
  br i1 %cmp241, label %if.then.243, label %if.else.252

if.then.243:                                      ; preds = %land.lhs.true.240
  %170 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %170, i32 0, i32 9
  %171 = load i8*, i8** %bufferout, align 8, !tbaa !29
  %arrayidx244 = getelementptr inbounds i8, i8* %171, i64 0
  store i8 -120, i8* %arrayidx244, align 1, !tbaa !11
  %172 = load i32, i32* %i, align 4, !tbaa !5
  %and245 = and i32 %172, 255
  %conv246 = trunc i32 %and245 to i8
  %173 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout247 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %173, i32 0, i32 9
  %174 = load i8*, i8** %bufferout247, align 8, !tbaa !29
  %arrayidx248 = getelementptr inbounds i8, i8* %174, i64 1
  store i8 %conv246, i8* %arrayidx248, align 1, !tbaa !11
  %175 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos249 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %175, i32 0, i32 1
  store i32 0, i32* %inpos249, align 4, !tbaa !32
  %176 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %176, i32 0, i32 4
  store i32 2, i32* %outend, align 4, !tbaa !44
  %177 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %wasascii250 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %177, i32 0, i32 7
  store i32 0, i32* %wasascii250, align 4, !tbaa !33
  %178 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %noescape = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %178, i32 0, i32 16
  store i32 1, i32* %noescape, align 4, !tbaa !40
  %179 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state251 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %179, i32 0, i32 0
  store i32 4, i32* %state251, align 4, !tbaa !26
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.601

if.else.252:                                      ; preds = %land.lhs.true.240, %if.else.237
  %180 = load i32, i32* %i, align 4, !tbaa !5
  %cmp253 = icmp sge i32 %180, -32768
  br i1 %cmp253, label %land.lhs.true.255, label %if.else.274

land.lhs.true.255:                                ; preds = %if.else.252
  %181 = load i32, i32* %i, align 4, !tbaa !5
  %cmp256 = icmp sle i32 %181, 32767
  br i1 %cmp256, label %if.then.258, label %if.else.274

if.then.258:                                      ; preds = %land.lhs.true.255
  %182 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout259 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %182, i32 0, i32 9
  %183 = load i8*, i8** %bufferout259, align 8, !tbaa !29
  %arrayidx260 = getelementptr inbounds i8, i8* %183, i64 0
  store i8 -121, i8* %arrayidx260, align 1, !tbaa !11
  %184 = load i32, i32* %i, align 4, !tbaa !5
  %and261 = and i32 %184, 255
  %conv262 = trunc i32 %and261 to i8
  %185 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout263 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %185, i32 0, i32 9
  %186 = load i8*, i8** %bufferout263, align 8, !tbaa !29
  %arrayidx264 = getelementptr inbounds i8, i8* %186, i64 1
  store i8 %conv262, i8* %arrayidx264, align 1, !tbaa !11
  %187 = load i32, i32* %i, align 4, !tbaa !5
  %shr = ashr i32 %187, 8
  %and265 = and i32 %shr, 255
  %conv266 = trunc i32 %and265 to i8
  %188 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout267 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %188, i32 0, i32 9
  %189 = load i8*, i8** %bufferout267, align 8, !tbaa !29
  %arrayidx268 = getelementptr inbounds i8, i8* %189, i64 2
  store i8 %conv266, i8* %arrayidx268, align 1, !tbaa !11
  %190 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos269 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %190, i32 0, i32 1
  store i32 0, i32* %inpos269, align 4, !tbaa !32
  %191 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %191, i32 0, i32 3
  store i32 0, i32* %outpos, align 4, !tbaa !45
  %192 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend270 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %192, i32 0, i32 4
  store i32 3, i32* %outend270, align 4, !tbaa !44
  %193 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %wasascii271 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %193, i32 0, i32 7
  store i32 0, i32* %wasascii271, align 4, !tbaa !33
  %194 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %noescape272 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %194, i32 0, i32 16
  store i32 1, i32* %noescape272, align 4, !tbaa !40
  %195 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state273 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %195, i32 0, i32 0
  store i32 4, i32* %state273, align 4, !tbaa !26
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.601

if.else.274:                                      ; preds = %land.lhs.true.255, %if.else.252
  %196 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout275 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %196, i32 0, i32 9
  %197 = load i8*, i8** %bufferout275, align 8, !tbaa !29
  %arrayidx276 = getelementptr inbounds i8, i8* %197, i64 0
  store i8 -123, i8* %arrayidx276, align 1, !tbaa !11
  %198 = load i32, i32* %i, align 4, !tbaa !5
  %and277 = and i32 %198, 255
  %conv278 = trunc i32 %and277 to i8
  %199 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout279 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %199, i32 0, i32 9
  %200 = load i8*, i8** %bufferout279, align 8, !tbaa !29
  %arrayidx280 = getelementptr inbounds i8, i8* %200, i64 1
  store i8 %conv278, i8* %arrayidx280, align 1, !tbaa !11
  %201 = load i32, i32* %i, align 4, !tbaa !5
  %shr281 = ashr i32 %201, 8
  %and282 = and i32 %shr281, 255
  %conv283 = trunc i32 %and282 to i8
  %202 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout284 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %202, i32 0, i32 9
  %203 = load i8*, i8** %bufferout284, align 8, !tbaa !29
  %arrayidx285 = getelementptr inbounds i8, i8* %203, i64 2
  store i8 %conv283, i8* %arrayidx285, align 1, !tbaa !11
  %204 = load i32, i32* %i, align 4, !tbaa !5
  %shr286 = ashr i32 %204, 16
  %and287 = and i32 %shr286, 255
  %conv288 = trunc i32 %and287 to i8
  %205 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout289 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %205, i32 0, i32 9
  %206 = load i8*, i8** %bufferout289, align 8, !tbaa !29
  %arrayidx290 = getelementptr inbounds i8, i8* %206, i64 3
  store i8 %conv288, i8* %arrayidx290, align 1, !tbaa !11
  %207 = load i32, i32* %i, align 4, !tbaa !5
  %shr291 = ashr i32 %207, 24
  %and292 = and i32 %shr291, 255
  %conv293 = trunc i32 %and292 to i8
  %208 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout294 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %208, i32 0, i32 9
  %209 = load i8*, i8** %bufferout294, align 8, !tbaa !29
  %arrayidx295 = getelementptr inbounds i8, i8* %209, i64 4
  store i8 %conv293, i8* %arrayidx295, align 1, !tbaa !11
  %210 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos296 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %210, i32 0, i32 1
  store i32 0, i32* %inpos296, align 4, !tbaa !32
  %211 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos297 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %211, i32 0, i32 3
  store i32 0, i32* %outpos297, align 4, !tbaa !45
  %212 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend298 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %212, i32 0, i32 4
  store i32 5, i32* %outend298, align 4, !tbaa !44
  %213 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %wasascii299 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %213, i32 0, i32 7
  store i32 0, i32* %wasascii299, align 4, !tbaa !33
  %214 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %noescape300 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %214, i32 0, i32 16
  store i32 1, i32* %noescape300, align 4, !tbaa !40
  %215 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state301 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %215, i32 0, i32 0
  store i32 4, i32* %state301, align 4, !tbaa !26
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.601

if.end.302:                                       ; preds = %if.then.235
  br label %if.end.410

if.else.303:                                      ; preds = %if.then.230
  %216 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %call304 = call i32 @pscompact_isfloat(%struct.pscompstate* %216, float* %f) #9
  %tobool305 = icmp ne i32 %call304, 0
  br i1 %tobool305, label %if.then.306, label %if.end.409

if.then.306:                                      ; preds = %if.else.303
  %217 = bitcast %union.anon.0* %fc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %217) #1
  %f307 = bitcast %union.anon.0* %fc to float*
  store float 1.000000e+00, float* %f307, align 4, !tbaa !46
  %c308 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx309 = getelementptr inbounds [4 x i8], [4 x i8]* %c308, i32 0, i64 0
  %218 = load i8, i8* %arrayidx309, align 1, !tbaa !11
  %conv310 = zext i8 %218 to i32
  %cmp311 = icmp eq i32 %conv310, 0
  br i1 %cmp311, label %land.lhs.true.313, label %if.else.357

land.lhs.true.313:                                ; preds = %if.then.306
  %c314 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx315 = getelementptr inbounds [4 x i8], [4 x i8]* %c314, i32 0, i64 1
  %219 = load i8, i8* %arrayidx315, align 1, !tbaa !11
  %conv316 = zext i8 %219 to i32
  %cmp317 = icmp eq i32 %conv316, 0
  br i1 %cmp317, label %land.lhs.true.319, label %if.else.357

land.lhs.true.319:                                ; preds = %land.lhs.true.313
  %c320 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx321 = getelementptr inbounds [4 x i8], [4 x i8]* %c320, i32 0, i64 2
  %220 = load i8, i8* %arrayidx321, align 1, !tbaa !11
  %conv322 = zext i8 %220 to i32
  %cmp323 = icmp eq i32 %conv322, 128
  br i1 %cmp323, label %land.lhs.true.325, label %if.else.357

land.lhs.true.325:                                ; preds = %land.lhs.true.319
  %c326 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx327 = getelementptr inbounds [4 x i8], [4 x i8]* %c326, i32 0, i64 3
  %221 = load i8, i8* %arrayidx327, align 1, !tbaa !11
  %conv328 = zext i8 %221 to i32
  %cmp329 = icmp eq i32 %conv328, 63
  br i1 %cmp329, label %if.then.331, label %if.else.357

if.then.331:                                      ; preds = %land.lhs.true.325
  %222 = load float, float* %f, align 4, !tbaa !46
  %f332 = bitcast %union.anon.0* %fc to float*
  store float %222, float* %f332, align 4, !tbaa !46
  %223 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout333 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %223, i32 0, i32 9
  %224 = load i8*, i8** %bufferout333, align 8, !tbaa !29
  %arrayidx334 = getelementptr inbounds i8, i8* %224, i64 0
  store i8 -117, i8* %arrayidx334, align 1, !tbaa !11
  %c335 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx336 = getelementptr inbounds [4 x i8], [4 x i8]* %c335, i32 0, i64 0
  %225 = load i8, i8* %arrayidx336, align 1, !tbaa !11
  %226 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout337 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %226, i32 0, i32 9
  %227 = load i8*, i8** %bufferout337, align 8, !tbaa !29
  %arrayidx338 = getelementptr inbounds i8, i8* %227, i64 1
  store i8 %225, i8* %arrayidx338, align 1, !tbaa !11
  %c339 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx340 = getelementptr inbounds [4 x i8], [4 x i8]* %c339, i32 0, i64 1
  %228 = load i8, i8* %arrayidx340, align 1, !tbaa !11
  %229 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout341 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %229, i32 0, i32 9
  %230 = load i8*, i8** %bufferout341, align 8, !tbaa !29
  %arrayidx342 = getelementptr inbounds i8, i8* %230, i64 2
  store i8 %228, i8* %arrayidx342, align 1, !tbaa !11
  %c343 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx344 = getelementptr inbounds [4 x i8], [4 x i8]* %c343, i32 0, i64 2
  %231 = load i8, i8* %arrayidx344, align 1, !tbaa !11
  %232 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout345 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %232, i32 0, i32 9
  %233 = load i8*, i8** %bufferout345, align 8, !tbaa !29
  %arrayidx346 = getelementptr inbounds i8, i8* %233, i64 3
  store i8 %231, i8* %arrayidx346, align 1, !tbaa !11
  %c347 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx348 = getelementptr inbounds [4 x i8], [4 x i8]* %c347, i32 0, i64 3
  %234 = load i8, i8* %arrayidx348, align 1, !tbaa !11
  %235 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout349 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %235, i32 0, i32 9
  %236 = load i8*, i8** %bufferout349, align 8, !tbaa !29
  %arrayidx350 = getelementptr inbounds i8, i8* %236, i64 4
  store i8 %234, i8* %arrayidx350, align 1, !tbaa !11
  %237 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos351 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %237, i32 0, i32 1
  store i32 0, i32* %inpos351, align 4, !tbaa !32
  %238 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos352 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %238, i32 0, i32 3
  store i32 0, i32* %outpos352, align 4, !tbaa !45
  %239 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend353 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %239, i32 0, i32 4
  store i32 5, i32* %outend353, align 4, !tbaa !44
  %240 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %wasascii354 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %240, i32 0, i32 7
  store i32 0, i32* %wasascii354, align 4, !tbaa !33
  %241 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %noescape355 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %241, i32 0, i32 16
  store i32 1, i32* %noescape355, align 4, !tbaa !40
  %242 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state356 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %242, i32 0, i32 0
  store i32 4, i32* %state356, align 4, !tbaa !26
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.else.357:                                      ; preds = %land.lhs.true.325, %land.lhs.true.319, %land.lhs.true.313, %if.then.306
  %c358 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx359 = getelementptr inbounds [4 x i8], [4 x i8]* %c358, i32 0, i64 0
  %243 = load i8, i8* %arrayidx359, align 1, !tbaa !11
  %conv360 = zext i8 %243 to i32
  %cmp361 = icmp eq i32 %conv360, 63
  br i1 %cmp361, label %land.lhs.true.363, label %if.end.407

land.lhs.true.363:                                ; preds = %if.else.357
  %c364 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx365 = getelementptr inbounds [4 x i8], [4 x i8]* %c364, i32 0, i64 1
  %244 = load i8, i8* %arrayidx365, align 1, !tbaa !11
  %conv366 = zext i8 %244 to i32
  %cmp367 = icmp eq i32 %conv366, 128
  br i1 %cmp367, label %land.lhs.true.369, label %if.end.407

land.lhs.true.369:                                ; preds = %land.lhs.true.363
  %c370 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx371 = getelementptr inbounds [4 x i8], [4 x i8]* %c370, i32 0, i64 2
  %245 = load i8, i8* %arrayidx371, align 1, !tbaa !11
  %conv372 = zext i8 %245 to i32
  %cmp373 = icmp eq i32 %conv372, 0
  br i1 %cmp373, label %land.lhs.true.375, label %if.end.407

land.lhs.true.375:                                ; preds = %land.lhs.true.369
  %c376 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx377 = getelementptr inbounds [4 x i8], [4 x i8]* %c376, i32 0, i64 3
  %246 = load i8, i8* %arrayidx377, align 1, !tbaa !11
  %conv378 = zext i8 %246 to i32
  %cmp379 = icmp eq i32 %conv378, 0
  br i1 %cmp379, label %if.then.381, label %if.end.407

if.then.381:                                      ; preds = %land.lhs.true.375
  %247 = load float, float* %f, align 4, !tbaa !46
  %f382 = bitcast %union.anon.0* %fc to float*
  store float %247, float* %f382, align 4, !tbaa !46
  %248 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout383 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %248, i32 0, i32 9
  %249 = load i8*, i8** %bufferout383, align 8, !tbaa !29
  %arrayidx384 = getelementptr inbounds i8, i8* %249, i64 0
  store i8 -117, i8* %arrayidx384, align 1, !tbaa !11
  %c385 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx386 = getelementptr inbounds [4 x i8], [4 x i8]* %c385, i32 0, i64 3
  %250 = load i8, i8* %arrayidx386, align 1, !tbaa !11
  %251 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout387 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %251, i32 0, i32 9
  %252 = load i8*, i8** %bufferout387, align 8, !tbaa !29
  %arrayidx388 = getelementptr inbounds i8, i8* %252, i64 1
  store i8 %250, i8* %arrayidx388, align 1, !tbaa !11
  %c389 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx390 = getelementptr inbounds [4 x i8], [4 x i8]* %c389, i32 0, i64 2
  %253 = load i8, i8* %arrayidx390, align 1, !tbaa !11
  %254 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout391 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %254, i32 0, i32 9
  %255 = load i8*, i8** %bufferout391, align 8, !tbaa !29
  %arrayidx392 = getelementptr inbounds i8, i8* %255, i64 2
  store i8 %253, i8* %arrayidx392, align 1, !tbaa !11
  %c393 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx394 = getelementptr inbounds [4 x i8], [4 x i8]* %c393, i32 0, i64 1
  %256 = load i8, i8* %arrayidx394, align 1, !tbaa !11
  %257 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout395 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %257, i32 0, i32 9
  %258 = load i8*, i8** %bufferout395, align 8, !tbaa !29
  %arrayidx396 = getelementptr inbounds i8, i8* %258, i64 3
  store i8 %256, i8* %arrayidx396, align 1, !tbaa !11
  %c397 = bitcast %union.anon.0* %fc to [4 x i8]*
  %arrayidx398 = getelementptr inbounds [4 x i8], [4 x i8]* %c397, i32 0, i64 0
  %259 = load i8, i8* %arrayidx398, align 1, !tbaa !11
  %260 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout399 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %260, i32 0, i32 9
  %261 = load i8*, i8** %bufferout399, align 8, !tbaa !29
  %arrayidx400 = getelementptr inbounds i8, i8* %261, i64 4
  store i8 %259, i8* %arrayidx400, align 1, !tbaa !11
  %262 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos401 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %262, i32 0, i32 1
  store i32 0, i32* %inpos401, align 4, !tbaa !32
  %263 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos402 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %263, i32 0, i32 3
  store i32 0, i32* %outpos402, align 4, !tbaa !45
  %264 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend403 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %264, i32 0, i32 4
  store i32 5, i32* %outend403, align 4, !tbaa !44
  %265 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %wasascii404 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %265, i32 0, i32 7
  store i32 0, i32* %wasascii404, align 4, !tbaa !33
  %266 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %noescape405 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %266, i32 0, i32 16
  store i32 1, i32* %noescape405, align 4, !tbaa !40
  %267 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state406 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %267, i32 0, i32 0
  store i32 4, i32* %state406, align 4, !tbaa !26
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.407:                                       ; preds = %land.lhs.true.375, %land.lhs.true.369, %land.lhs.true.363, %if.else.357
  br label %if.end.408

if.end.408:                                       ; preds = %if.end.407
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.408, %if.then.381, %if.then.331
  %268 = bitcast %union.anon.0* %fc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.601 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.409

if.end.409:                                       ; preds = %cleanup.cont, %if.else.303
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %if.end.302
  %269 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos411 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %269, i32 0, i32 1
  %270 = load i32, i32* %inpos411, align 4, !tbaa !32
  %cmp412 = icmp eq i32 %270, 4
  br i1 %cmp412, label %land.lhs.true.414, label %if.end.484

land.lhs.true.414:                                ; preds = %if.end.410
  %call415 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0)) #11
  %cmp416 = icmp ult i64 %call415, 4
  br i1 %cmp416, label %cond.true, label %cond.false.466

cond.true:                                        ; preds = %land.lhs.true.414
  %271 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %271) #1
  %272 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %272) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.74 to i64)), i64 1), label %land.lhs.true.418, label %cond.false

land.lhs.true.418:                                ; preds = %cond.true
  %call419 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0)) #11
  store i64 %call419, i64* %__s2_len, align 8, !tbaa !7
  %273 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp420 = icmp ult i64 %273, 4
  br i1 %cmp420, label %cond.true.422, label %cond.false

cond.true.422:                                    ; preds = %land.lhs.true.418
  %274 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %274) #1
  %275 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin424 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %275, i32 0, i32 8
  %276 = load i8*, i8** %bufferin424, align 8, !tbaa !28
  store i8* %276, i8** %__s1, align 8, !tbaa !1
  %277 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %277) #1
  %278 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx426 = getelementptr inbounds i8, i8* %278, i64 0
  %279 = load i8, i8* %arrayidx426, align 1, !tbaa !11
  %conv427 = zext i8 %279 to i32
  %280 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), align 1, !tbaa !11
  %conv428 = zext i8 %280 to i32
  %sub429 = sub nsw i32 %conv427, %conv428
  store i32 %sub429, i32* %__result, align 4, !tbaa !5
  %281 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp430 = icmp ugt i64 %281, 0
  br i1 %cmp430, label %land.lhs.true.432, label %if.end.462

land.lhs.true.432:                                ; preds = %cond.true.422
  %282 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp433 = icmp eq i32 %282, 0
  br i1 %cmp433, label %if.then.435, label %if.end.462

if.then.435:                                      ; preds = %land.lhs.true.432
  %283 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx436 = getelementptr inbounds i8, i8* %283, i64 1
  %284 = load i8, i8* %arrayidx436, align 1, !tbaa !11
  %conv437 = zext i8 %284 to i32
  %285 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i64 1), align 1, !tbaa !11
  %conv438 = zext i8 %285 to i32
  %sub439 = sub nsw i32 %conv437, %conv438
  store i32 %sub439, i32* %__result, align 4, !tbaa !5
  %286 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp440 = icmp ugt i64 %286, 1
  br i1 %cmp440, label %land.lhs.true.442, label %if.end.461

land.lhs.true.442:                                ; preds = %if.then.435
  %287 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp443 = icmp eq i32 %287, 0
  br i1 %cmp443, label %if.then.445, label %if.end.461

if.then.445:                                      ; preds = %land.lhs.true.442
  %288 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx446 = getelementptr inbounds i8, i8* %288, i64 2
  %289 = load i8, i8* %arrayidx446, align 1, !tbaa !11
  %conv447 = zext i8 %289 to i32
  %290 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i64 2), align 1, !tbaa !11
  %conv448 = zext i8 %290 to i32
  %sub449 = sub nsw i32 %conv447, %conv448
  store i32 %sub449, i32* %__result, align 4, !tbaa !5
  %291 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp450 = icmp ugt i64 %291, 2
  br i1 %cmp450, label %land.lhs.true.452, label %if.end.460

land.lhs.true.452:                                ; preds = %if.then.445
  %292 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp453 = icmp eq i32 %292, 0
  br i1 %cmp453, label %if.then.455, label %if.end.460

if.then.455:                                      ; preds = %land.lhs.true.452
  %293 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx456 = getelementptr inbounds i8, i8* %293, i64 3
  %294 = load i8, i8* %arrayidx456, align 1, !tbaa !11
  %conv457 = zext i8 %294 to i32
  %295 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i64 3), align 1, !tbaa !11
  %conv458 = zext i8 %295 to i32
  %sub459 = sub nsw i32 %conv457, %conv458
  store i32 %sub459, i32* %__result, align 4, !tbaa !5
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.455, %land.lhs.true.452, %if.then.445
  br label %if.end.461

if.end.461:                                       ; preds = %if.end.460, %land.lhs.true.442, %if.then.435
  br label %if.end.462

if.end.462:                                       ; preds = %if.end.461, %land.lhs.true.432, %cond.true.422
  %296 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %296, i32* %tmp463, !tbaa !5
  %297 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #1
  %299 = load i32, i32* %tmp463, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.418, %cond.true
  %300 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin464 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %300, i32 0, i32 8
  %301 = load i8*, i8** %bufferin464, align 8, !tbaa !28
  %call465 = call i32 @strcmp(i8* %301, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.462
  %cond = phi i32 [ %299, %if.end.462 ], [ %call465, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %302 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %302) #1
  %303 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #1
  %304 = load i32, i32* %tmp, !tbaa !5
  br label %cond.end.469

cond.false.466:                                   ; preds = %land.lhs.true.414
  %305 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin467 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %305, i32 0, i32 8
  %306 = load i8*, i8** %bufferin467, align 8, !tbaa !28
  %call468 = call i32 @strncmp(i8* %306, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i64 4) #11
  br label %cond.end.469

cond.end.469:                                     ; preds = %cond.false.466, %cond.end
  %cond470 = phi i32 [ %304, %cond.end ], [ %call468, %cond.false.466 ]
  %cmp471 = icmp eq i32 %cond470, 0
  br i1 %cmp471, label %if.then.473, label %if.end.484

if.then.473:                                      ; preds = %cond.end.469
  %307 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout474 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %307, i32 0, i32 9
  %308 = load i8*, i8** %bufferout474, align 8, !tbaa !29
  %arrayidx475 = getelementptr inbounds i8, i8* %308, i64 0
  store i8 -115, i8* %arrayidx475, align 1, !tbaa !11
  %309 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout476 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %309, i32 0, i32 9
  %310 = load i8*, i8** %bufferout476, align 8, !tbaa !29
  %arrayidx477 = getelementptr inbounds i8, i8* %310, i64 1
  store i8 1, i8* %arrayidx477, align 1, !tbaa !11
  %311 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos478 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %311, i32 0, i32 1
  store i32 0, i32* %inpos478, align 4, !tbaa !32
  %312 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos479 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %312, i32 0, i32 3
  store i32 0, i32* %outpos479, align 4, !tbaa !45
  %313 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend480 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %313, i32 0, i32 4
  store i32 2, i32* %outend480, align 4, !tbaa !44
  %314 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %wasascii481 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %314, i32 0, i32 7
  store i32 0, i32* %wasascii481, align 4, !tbaa !33
  %315 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %noescape482 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %315, i32 0, i32 16
  store i32 1, i32* %noescape482, align 4, !tbaa !40
  %316 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state483 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %316, i32 0, i32 0
  store i32 4, i32* %state483, align 4, !tbaa !26
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.601

if.end.484:                                       ; preds = %cond.end.469, %if.end.410
  %317 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos485 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %317, i32 0, i32 1
  %318 = load i32, i32* %inpos485, align 4, !tbaa !32
  %cmp486 = icmp eq i32 %318, 5
  br i1 %cmp486, label %land.lhs.true.488, label %if.end.569

land.lhs.true.488:                                ; preds = %if.end.484
  %call489 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0)) #11
  %cmp490 = icmp ult i64 %call489, 5
  br i1 %cmp490, label %cond.true.492, label %cond.false.551

cond.true.492:                                    ; preds = %land.lhs.true.488
  %319 = bitcast i64* %__s1_len494 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %319) #1
  %320 = bitcast i64* %__s2_len496 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %320) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.75 to i64)), i64 1), label %land.lhs.true.498, label %cond.false.546

land.lhs.true.498:                                ; preds = %cond.true.492
  %call499 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0)) #11
  store i64 %call499, i64* %__s2_len496, align 8, !tbaa !7
  %321 = load i64, i64* %__s2_len496, align 8, !tbaa !7
  %cmp500 = icmp ult i64 %321, 4
  br i1 %cmp500, label %cond.true.502, label %cond.false.546

cond.true.502:                                    ; preds = %land.lhs.true.498
  %322 = bitcast i8** %__s1504 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %322) #1
  %323 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin505 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %323, i32 0, i32 8
  %324 = load i8*, i8** %bufferin505, align 8, !tbaa !28
  store i8* %324, i8** %__s1504, align 8, !tbaa !1
  %325 = bitcast i32* %__result507 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %325) #1
  %326 = load i8*, i8** %__s1504, align 8, !tbaa !1
  %arrayidx508 = getelementptr inbounds i8, i8* %326, i64 0
  %327 = load i8, i8* %arrayidx508, align 1, !tbaa !11
  %conv509 = zext i8 %327 to i32
  %328 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), align 1, !tbaa !11
  %conv510 = zext i8 %328 to i32
  %sub511 = sub nsw i32 %conv509, %conv510
  store i32 %sub511, i32* %__result507, align 4, !tbaa !5
  %329 = load i64, i64* %__s2_len496, align 8, !tbaa !7
  %cmp512 = icmp ugt i64 %329, 0
  br i1 %cmp512, label %land.lhs.true.514, label %if.end.544

land.lhs.true.514:                                ; preds = %cond.true.502
  %330 = load i32, i32* %__result507, align 4, !tbaa !5
  %cmp515 = icmp eq i32 %330, 0
  br i1 %cmp515, label %if.then.517, label %if.end.544

if.then.517:                                      ; preds = %land.lhs.true.514
  %331 = load i8*, i8** %__s1504, align 8, !tbaa !1
  %arrayidx518 = getelementptr inbounds i8, i8* %331, i64 1
  %332 = load i8, i8* %arrayidx518, align 1, !tbaa !11
  %conv519 = zext i8 %332 to i32
  %333 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i64 1), align 1, !tbaa !11
  %conv520 = zext i8 %333 to i32
  %sub521 = sub nsw i32 %conv519, %conv520
  store i32 %sub521, i32* %__result507, align 4, !tbaa !5
  %334 = load i64, i64* %__s2_len496, align 8, !tbaa !7
  %cmp522 = icmp ugt i64 %334, 1
  br i1 %cmp522, label %land.lhs.true.524, label %if.end.543

land.lhs.true.524:                                ; preds = %if.then.517
  %335 = load i32, i32* %__result507, align 4, !tbaa !5
  %cmp525 = icmp eq i32 %335, 0
  br i1 %cmp525, label %if.then.527, label %if.end.543

if.then.527:                                      ; preds = %land.lhs.true.524
  %336 = load i8*, i8** %__s1504, align 8, !tbaa !1
  %arrayidx528 = getelementptr inbounds i8, i8* %336, i64 2
  %337 = load i8, i8* %arrayidx528, align 1, !tbaa !11
  %conv529 = zext i8 %337 to i32
  %338 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i64 2), align 1, !tbaa !11
  %conv530 = zext i8 %338 to i32
  %sub531 = sub nsw i32 %conv529, %conv530
  store i32 %sub531, i32* %__result507, align 4, !tbaa !5
  %339 = load i64, i64* %__s2_len496, align 8, !tbaa !7
  %cmp532 = icmp ugt i64 %339, 2
  br i1 %cmp532, label %land.lhs.true.534, label %if.end.542

land.lhs.true.534:                                ; preds = %if.then.527
  %340 = load i32, i32* %__result507, align 4, !tbaa !5
  %cmp535 = icmp eq i32 %340, 0
  br i1 %cmp535, label %if.then.537, label %if.end.542

if.then.537:                                      ; preds = %land.lhs.true.534
  %341 = load i8*, i8** %__s1504, align 8, !tbaa !1
  %arrayidx538 = getelementptr inbounds i8, i8* %341, i64 3
  %342 = load i8, i8* %arrayidx538, align 1, !tbaa !11
  %conv539 = zext i8 %342 to i32
  %343 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i64 3), align 1, !tbaa !11
  %conv540 = zext i8 %343 to i32
  %sub541 = sub nsw i32 %conv539, %conv540
  store i32 %sub541, i32* %__result507, align 4, !tbaa !5
  br label %if.end.542

if.end.542:                                       ; preds = %if.then.537, %land.lhs.true.534, %if.then.527
  br label %if.end.543

if.end.543:                                       ; preds = %if.end.542, %land.lhs.true.524, %if.then.517
  br label %if.end.544

if.end.544:                                       ; preds = %if.end.543, %land.lhs.true.514, %cond.true.502
  %344 = load i32, i32* %__result507, align 4, !tbaa !5
  store i32 %344, i32* %tmp545, !tbaa !5
  %345 = bitcast i32* %__result507 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %345) #1
  %346 = bitcast i8** %__s1504 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #1
  %347 = load i32, i32* %tmp545, !tbaa !5
  br label %cond.end.549

cond.false.546:                                   ; preds = %land.lhs.true.498, %cond.true.492
  %348 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin547 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %348, i32 0, i32 8
  %349 = load i8*, i8** %bufferin547, align 8, !tbaa !28
  %call548 = call i32 @strcmp(i8* %349, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0)) #8
  br label %cond.end.549

cond.end.549:                                     ; preds = %cond.false.546, %if.end.544
  %cond550 = phi i32 [ %347, %if.end.544 ], [ %call548, %cond.false.546 ]
  store i32 %cond550, i32* %tmp497, !tbaa !5
  %350 = bitcast i64* %__s2_len496 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %350) #1
  %351 = bitcast i64* %__s1_len494 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %351) #1
  %352 = load i32, i32* %tmp497, !tbaa !5
  br label %cond.end.554

cond.false.551:                                   ; preds = %land.lhs.true.488
  %353 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin552 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %353, i32 0, i32 8
  %354 = load i8*, i8** %bufferin552, align 8, !tbaa !28
  %call553 = call i32 @strncmp(i8* %354, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i64 5) #11
  br label %cond.end.554

cond.end.554:                                     ; preds = %cond.false.551, %cond.end.549
  %cond555 = phi i32 [ %352, %cond.end.549 ], [ %call553, %cond.false.551 ]
  %cmp556 = icmp eq i32 %cond555, 0
  br i1 %cmp556, label %if.then.558, label %if.end.569

if.then.558:                                      ; preds = %cond.end.554
  %355 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout559 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %355, i32 0, i32 9
  %356 = load i8*, i8** %bufferout559, align 8, !tbaa !29
  %arrayidx560 = getelementptr inbounds i8, i8* %356, i64 0
  store i8 -115, i8* %arrayidx560, align 1, !tbaa !11
  %357 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout561 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %357, i32 0, i32 9
  %358 = load i8*, i8** %bufferout561, align 8, !tbaa !29
  %arrayidx562 = getelementptr inbounds i8, i8* %358, i64 1
  store i8 0, i8* %arrayidx562, align 1, !tbaa !11
  %359 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos563 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %359, i32 0, i32 1
  store i32 0, i32* %inpos563, align 4, !tbaa !32
  %360 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos564 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %360, i32 0, i32 3
  store i32 0, i32* %outpos564, align 4, !tbaa !45
  %361 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend565 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %361, i32 0, i32 4
  store i32 2, i32* %outend565, align 4, !tbaa !44
  %362 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %wasascii566 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %362, i32 0, i32 7
  store i32 0, i32* %wasascii566, align 4, !tbaa !33
  %363 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %noescape567 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %363, i32 0, i32 16
  store i32 1, i32* %noescape567, align 4, !tbaa !40
  %364 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state568 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %364, i32 0, i32 0
  store i32 4, i32* %state568, align 4, !tbaa !26
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.601

if.end.569:                                       ; preds = %cond.end.554, %if.end.484
  %365 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %binary570 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %365, i32 0, i32 15
  %366 = load i32, i32* %binary570, align 4, !tbaa !39
  %tobool571 = icmp ne i32 %366, 0
  br i1 %tobool571, label %land.lhs.true.572, label %if.end.600

land.lhs.true.572:                                ; preds = %if.end.569
  %367 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %367, i32 0, i32 14
  %368 = load i32, i32* %names, align 4, !tbaa !38
  %tobool573 = icmp ne i32 %368, 0
  br i1 %tobool573, label %land.lhs.true.574, label %if.end.600

land.lhs.true.574:                                ; preds = %land.lhs.true.572
  %369 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %call575 = call i32 @pscompact_isname(%struct.pscompstate* %369, i32* %i) #9
  %tobool576 = icmp ne i32 %call575, 0
  br i1 %tobool576, label %if.then.577, label %if.end.600

if.then.577:                                      ; preds = %land.lhs.true.574
  %370 = load i32, i32* %i, align 4, !tbaa !5
  %cmp578 = icmp sge i32 %370, 0
  br i1 %cmp578, label %if.then.580, label %if.else.586

if.then.580:                                      ; preds = %if.then.577
  %371 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout581 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %371, i32 0, i32 9
  %372 = load i8*, i8** %bufferout581, align 8, !tbaa !29
  %arrayidx582 = getelementptr inbounds i8, i8* %372, i64 0
  store i8 -110, i8* %arrayidx582, align 1, !tbaa !11
  %373 = load i32, i32* %i, align 4, !tbaa !5
  %conv583 = trunc i32 %373 to i8
  %374 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout584 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %374, i32 0, i32 9
  %375 = load i8*, i8** %bufferout584, align 8, !tbaa !29
  %arrayidx585 = getelementptr inbounds i8, i8* %375, i64 1
  store i8 %conv583, i8* %arrayidx585, align 1, !tbaa !11
  br label %if.end.593

if.else.586:                                      ; preds = %if.then.577
  %376 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout587 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %376, i32 0, i32 9
  %377 = load i8*, i8** %bufferout587, align 8, !tbaa !29
  %arrayidx588 = getelementptr inbounds i8, i8* %377, i64 0
  store i8 -111, i8* %arrayidx588, align 1, !tbaa !11
  %378 = load i32, i32* %i, align 4, !tbaa !5
  %sub589 = sub nsw i32 1, %378
  %conv590 = trunc i32 %sub589 to i8
  %379 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout591 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %379, i32 0, i32 9
  %380 = load i8*, i8** %bufferout591, align 8, !tbaa !29
  %arrayidx592 = getelementptr inbounds i8, i8* %380, i64 1
  store i8 %conv590, i8* %arrayidx592, align 1, !tbaa !11
  br label %if.end.593

if.end.593:                                       ; preds = %if.else.586, %if.then.580
  %381 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos594 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %381, i32 0, i32 1
  store i32 0, i32* %inpos594, align 4, !tbaa !32
  %382 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos595 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %382, i32 0, i32 3
  store i32 0, i32* %outpos595, align 4, !tbaa !45
  %383 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend596 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %383, i32 0, i32 4
  store i32 2, i32* %outend596, align 4, !tbaa !44
  %384 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %wasascii597 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %384, i32 0, i32 7
  store i32 0, i32* %wasascii597, align 4, !tbaa !33
  %385 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %noescape598 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %385, i32 0, i32 16
  store i32 1, i32* %noescape598, align 4, !tbaa !40
  %386 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state599 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %386, i32 0, i32 0
  store i32 4, i32* %state599, align 4, !tbaa !26
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup.601

if.end.600:                                       ; preds = %land.lhs.true.574, %land.lhs.true.572, %if.end.569
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.601

cleanup.601:                                      ; preds = %if.end.600, %if.end.593, %if.then.558, %if.then.473, %cleanup, %if.else.274, %if.then.258, %if.then.243
  %387 = bitcast float* %f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %387) #1
  %388 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %388) #1
  %cleanup.dest.603 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.603, label %unreachable [
    i32 0, label %cleanup.cont.604
    i32 4, label %sw.epilog
  ]

cleanup.cont.604:                                 ; preds = %cleanup.601
  br label %if.end.605

if.end.605:                                       ; preds = %cleanup.cont.604, %if.end.228
  %389 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %wasascii606 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %389, i32 0, i32 7
  %390 = load i32, i32* %wasascii606, align 4, !tbaa !33
  %tobool607 = icmp ne i32 %390, 0
  br i1 %tobool607, label %land.lhs.true.608, label %if.end.616

land.lhs.true.608:                                ; preds = %if.end.605
  %391 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin609 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %391, i32 0, i32 8
  %392 = load i8*, i8** %bufferin609, align 8, !tbaa !28
  %arrayidx610 = getelementptr inbounds i8, i8* %392, i64 0
  %393 = load i8, i8* %arrayidx610, align 1, !tbaa !11
  %conv611 = sext i8 %393 to i32
  %cmp612 = icmp ne i32 %conv611, 47
  br i1 %cmp612, label %if.then.614, label %if.end.616

if.then.614:                                      ; preds = %land.lhs.true.608
  %394 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr615 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %incdec.ptr615, i8** %out, align 8, !tbaa !1
  store i8 32, i8* %394, align 1, !tbaa !11
  br label %if.end.616

if.end.616:                                       ; preds = %if.then.614, %land.lhs.true.608, %if.end.605
  %395 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_copyinout(%struct.pscompstate* %395) #9
  %396 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %wasascii617 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %396, i32 0, i32 7
  store i32 1, i32* %wasascii617, align 4, !tbaa !33
  br label %sw.epilog

sw.bb.618:                                        ; preds = %do.body
  call void @llvm.lifetime.start(i64 1, i8* %c620) #1
  %397 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos621 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %397, i32 0, i32 3
  %398 = load i32, i32* %outpos621, align 4, !tbaa !45
  %inc = add nsw i32 %398, 1
  store i32 %inc, i32* %outpos621, align 4, !tbaa !45
  %idxprom622 = sext i32 %398 to i64
  %399 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout623 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %399, i32 0, i32 9
  %400 = load i8*, i8** %bufferout623, align 8, !tbaa !29
  %arrayidx624 = getelementptr inbounds i8, i8* %400, i64 %idxprom622
  %401 = load i8, i8* %arrayidx624, align 1, !tbaa !11
  store i8 %401, i8* %c620, align 1, !tbaa !11
  %402 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %noescape625 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %402, i32 0, i32 16
  %403 = load i32, i32* %noescape625, align 4, !tbaa !40
  %tobool626 = icmp ne i32 %403, 0
  br i1 %tobool626, label %if.then.627, label %if.else.628

if.then.627:                                      ; preds = %sw.bb.618
  br label %if.end.821

if.else.628:                                      ; preds = %sw.bb.618
  %404 = load i8, i8* %c620, align 1, !tbaa !11
  %conv629 = zext i8 %404 to i32
  %cmp630 = icmp eq i32 %conv629, 10
  br i1 %cmp630, label %land.lhs.true.632, label %if.else.645

land.lhs.true.632:                                ; preds = %if.else.628
  %405 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos633 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %405, i32 0, i32 3
  %406 = load i32, i32* %outpos633, align 4, !tbaa !45
  %407 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend634 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %407, i32 0, i32 4
  %408 = load i32, i32* %outend634, align 4, !tbaa !44
  %cmp635 = icmp slt i32 %406, %408
  br i1 %cmp635, label %if.then.637, label %if.else.645

if.then.637:                                      ; preds = %land.lhs.true.632
  %409 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %409, i32 0, i32 17
  %410 = load i32, i32* %escaping, align 4, !tbaa !41
  %tobool638 = icmp ne i32 %410, 0
  br i1 %tobool638, label %if.else.642, label %if.then.639

if.then.639:                                      ; preds = %if.then.637
  store i8 92, i8* %c620, align 1, !tbaa !11
  %411 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos640 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %411, i32 0, i32 3
  %412 = load i32, i32* %outpos640, align 4, !tbaa !45
  %dec = add nsw i32 %412, -1
  store i32 %dec, i32* %outpos640, align 4, !tbaa !45
  %413 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping641 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %413, i32 0, i32 17
  store i32 1, i32* %escaping641, align 4, !tbaa !41
  br label %if.end.644

if.else.642:                                      ; preds = %if.then.637
  store i8 110, i8* %c620, align 1, !tbaa !11
  %414 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping643 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %414, i32 0, i32 17
  store i32 0, i32* %escaping643, align 4, !tbaa !41
  br label %if.end.644

if.end.644:                                       ; preds = %if.else.642, %if.then.639
  br label %if.end.820

if.else.645:                                      ; preds = %land.lhs.true.632, %if.else.628
  %415 = load i8, i8* %c620, align 1, !tbaa !11
  %conv646 = zext i8 %415 to i32
  %cmp647 = icmp eq i32 %conv646, 9
  br i1 %cmp647, label %if.then.649, label %if.else.659

if.then.649:                                      ; preds = %if.else.645
  %416 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping650 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %416, i32 0, i32 17
  %417 = load i32, i32* %escaping650, align 4, !tbaa !41
  %tobool651 = icmp ne i32 %417, 0
  br i1 %tobool651, label %if.else.656, label %if.then.652

if.then.652:                                      ; preds = %if.then.649
  store i8 92, i8* %c620, align 1, !tbaa !11
  %418 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos653 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %418, i32 0, i32 3
  %419 = load i32, i32* %outpos653, align 4, !tbaa !45
  %dec654 = add nsw i32 %419, -1
  store i32 %dec654, i32* %outpos653, align 4, !tbaa !45
  %420 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping655 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %420, i32 0, i32 17
  store i32 1, i32* %escaping655, align 4, !tbaa !41
  br label %if.end.658

if.else.656:                                      ; preds = %if.then.649
  store i8 116, i8* %c620, align 1, !tbaa !11
  %421 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping657 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %421, i32 0, i32 17
  store i32 0, i32* %escaping657, align 4, !tbaa !41
  br label %if.end.658

if.end.658:                                       ; preds = %if.else.656, %if.then.652
  br label %if.end.819

if.else.659:                                      ; preds = %if.else.645
  %422 = load i8, i8* %c620, align 1, !tbaa !11
  %conv660 = zext i8 %422 to i32
  %cmp661 = icmp eq i32 %conv660, 8
  br i1 %cmp661, label %if.then.663, label %if.else.673

if.then.663:                                      ; preds = %if.else.659
  %423 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping664 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %423, i32 0, i32 17
  %424 = load i32, i32* %escaping664, align 4, !tbaa !41
  %tobool665 = icmp ne i32 %424, 0
  br i1 %tobool665, label %if.else.670, label %if.then.666

if.then.666:                                      ; preds = %if.then.663
  store i8 92, i8* %c620, align 1, !tbaa !11
  %425 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos667 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %425, i32 0, i32 3
  %426 = load i32, i32* %outpos667, align 4, !tbaa !45
  %dec668 = add nsw i32 %426, -1
  store i32 %dec668, i32* %outpos667, align 4, !tbaa !45
  %427 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping669 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %427, i32 0, i32 17
  store i32 1, i32* %escaping669, align 4, !tbaa !41
  br label %if.end.672

if.else.670:                                      ; preds = %if.then.663
  store i8 98, i8* %c620, align 1, !tbaa !11
  %428 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping671 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %428, i32 0, i32 17
  store i32 0, i32* %escaping671, align 4, !tbaa !41
  br label %if.end.672

if.end.672:                                       ; preds = %if.else.670, %if.then.666
  br label %if.end.818

if.else.673:                                      ; preds = %if.else.659
  %429 = load i8, i8* %c620, align 1, !tbaa !11
  %conv674 = zext i8 %429 to i32
  %cmp675 = icmp eq i32 %conv674, 12
  br i1 %cmp675, label %if.then.677, label %if.else.687

if.then.677:                                      ; preds = %if.else.673
  %430 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping678 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %430, i32 0, i32 17
  %431 = load i32, i32* %escaping678, align 4, !tbaa !41
  %tobool679 = icmp ne i32 %431, 0
  br i1 %tobool679, label %if.else.684, label %if.then.680

if.then.680:                                      ; preds = %if.then.677
  store i8 92, i8* %c620, align 1, !tbaa !11
  %432 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos681 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %432, i32 0, i32 3
  %433 = load i32, i32* %outpos681, align 4, !tbaa !45
  %dec682 = add nsw i32 %433, -1
  store i32 %dec682, i32* %outpos681, align 4, !tbaa !45
  %434 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping683 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %434, i32 0, i32 17
  store i32 1, i32* %escaping683, align 4, !tbaa !41
  br label %if.end.686

if.else.684:                                      ; preds = %if.then.677
  store i8 102, i8* %c620, align 1, !tbaa !11
  %435 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping685 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %435, i32 0, i32 17
  store i32 0, i32* %escaping685, align 4, !tbaa !41
  br label %if.end.686

if.end.686:                                       ; preds = %if.else.684, %if.then.680
  br label %if.end.817

if.else.687:                                      ; preds = %if.else.673
  %436 = load i8, i8* %c620, align 1, !tbaa !11
  %conv688 = zext i8 %436 to i32
  %cmp689 = icmp eq i32 %conv688, 13
  br i1 %cmp689, label %if.then.691, label %if.else.701

if.then.691:                                      ; preds = %if.else.687
  %437 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping692 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %437, i32 0, i32 17
  %438 = load i32, i32* %escaping692, align 4, !tbaa !41
  %tobool693 = icmp ne i32 %438, 0
  br i1 %tobool693, label %if.else.698, label %if.then.694

if.then.694:                                      ; preds = %if.then.691
  store i8 92, i8* %c620, align 1, !tbaa !11
  %439 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos695 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %439, i32 0, i32 3
  %440 = load i32, i32* %outpos695, align 4, !tbaa !45
  %dec696 = add nsw i32 %440, -1
  store i32 %dec696, i32* %outpos695, align 4, !tbaa !45
  %441 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping697 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %441, i32 0, i32 17
  store i32 1, i32* %escaping697, align 4, !tbaa !41
  br label %if.end.700

if.else.698:                                      ; preds = %if.then.691
  store i8 114, i8* %c620, align 1, !tbaa !11
  %442 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping699 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %442, i32 0, i32 17
  store i32 0, i32* %escaping699, align 4, !tbaa !41
  br label %if.end.700

if.end.700:                                       ; preds = %if.else.698, %if.then.694
  br label %if.end.816

if.else.701:                                      ; preds = %if.else.687
  %443 = load i8, i8* %c620, align 1, !tbaa !11
  %conv702 = zext i8 %443 to i32
  %cmp703 = icmp eq i32 %conv702, 92
  br i1 %cmp703, label %if.then.705, label %if.else.715

if.then.705:                                      ; preds = %if.else.701
  %444 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping706 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %444, i32 0, i32 17
  %445 = load i32, i32* %escaping706, align 4, !tbaa !41
  %tobool707 = icmp ne i32 %445, 0
  br i1 %tobool707, label %if.else.712, label %if.then.708

if.then.708:                                      ; preds = %if.then.705
  %446 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos709 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %446, i32 0, i32 3
  %447 = load i32, i32* %outpos709, align 4, !tbaa !45
  %dec710 = add nsw i32 %447, -1
  store i32 %dec710, i32* %outpos709, align 4, !tbaa !45
  %448 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping711 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %448, i32 0, i32 17
  store i32 1, i32* %escaping711, align 4, !tbaa !41
  br label %if.end.714

if.else.712:                                      ; preds = %if.then.705
  %449 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping713 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %449, i32 0, i32 17
  store i32 0, i32* %escaping713, align 4, !tbaa !41
  br label %if.end.714

if.end.714:                                       ; preds = %if.else.712, %if.then.708
  br label %if.end.815

if.else.715:                                      ; preds = %if.else.701
  %450 = load i8, i8* %c620, align 1, !tbaa !11
  %conv716 = zext i8 %450 to i32
  %cmp717 = icmp eq i32 %conv716, 41
  br i1 %cmp717, label %land.lhs.true.719, label %if.else.734

land.lhs.true.719:                                ; preds = %if.else.715
  %451 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos720 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %451, i32 0, i32 3
  %452 = load i32, i32* %outpos720, align 4, !tbaa !45
  %453 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend721 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %453, i32 0, i32 4
  %454 = load i32, i32* %outend721, align 4, !tbaa !44
  %cmp722 = icmp slt i32 %452, %454
  br i1 %cmp722, label %if.then.724, label %if.else.734

if.then.724:                                      ; preds = %land.lhs.true.719
  %455 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping725 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %455, i32 0, i32 17
  %456 = load i32, i32* %escaping725, align 4, !tbaa !41
  %tobool726 = icmp ne i32 %456, 0
  br i1 %tobool726, label %if.else.731, label %if.then.727

if.then.727:                                      ; preds = %if.then.724
  store i8 92, i8* %c620, align 1, !tbaa !11
  %457 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos728 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %457, i32 0, i32 3
  %458 = load i32, i32* %outpos728, align 4, !tbaa !45
  %dec729 = add nsw i32 %458, -1
  store i32 %dec729, i32* %outpos728, align 4, !tbaa !45
  %459 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping730 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %459, i32 0, i32 17
  store i32 1, i32* %escaping730, align 4, !tbaa !41
  br label %if.end.733

if.else.731:                                      ; preds = %if.then.724
  store i8 41, i8* %c620, align 1, !tbaa !11
  %460 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping732 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %460, i32 0, i32 17
  store i32 0, i32* %escaping732, align 4, !tbaa !41
  br label %if.end.733

if.end.733:                                       ; preds = %if.else.731, %if.then.727
  br label %if.end.814

if.else.734:                                      ; preds = %land.lhs.true.719, %if.else.715
  %461 = load i8, i8* %c620, align 1, !tbaa !11
  %conv735 = zext i8 %461 to i32
  %cmp736 = icmp eq i32 %conv735, 40
  br i1 %cmp736, label %land.lhs.true.738, label %if.else.752

land.lhs.true.738:                                ; preds = %if.else.734
  %462 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos739 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %462, i32 0, i32 3
  %463 = load i32, i32* %outpos739, align 4, !tbaa !45
  %cmp740 = icmp sgt i32 %463, 1
  br i1 %cmp740, label %if.then.742, label %if.else.752

if.then.742:                                      ; preds = %land.lhs.true.738
  %464 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping743 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %464, i32 0, i32 17
  %465 = load i32, i32* %escaping743, align 4, !tbaa !41
  %tobool744 = icmp ne i32 %465, 0
  br i1 %tobool744, label %if.else.749, label %if.then.745

if.then.745:                                      ; preds = %if.then.742
  store i8 92, i8* %c620, align 1, !tbaa !11
  %466 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos746 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %466, i32 0, i32 3
  %467 = load i32, i32* %outpos746, align 4, !tbaa !45
  %dec747 = add nsw i32 %467, -1
  store i32 %dec747, i32* %outpos746, align 4, !tbaa !45
  %468 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping748 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %468, i32 0, i32 17
  store i32 1, i32* %escaping748, align 4, !tbaa !41
  br label %if.end.751

if.else.749:                                      ; preds = %if.then.742
  store i8 40, i8* %c620, align 1, !tbaa !11
  %469 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping750 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %469, i32 0, i32 17
  store i32 0, i32* %escaping750, align 4, !tbaa !41
  br label %if.end.751

if.end.751:                                       ; preds = %if.else.749, %if.then.745
  br label %if.end.813

if.else.752:                                      ; preds = %land.lhs.true.738, %if.else.734
  %470 = load i8, i8* %c620, align 1, !tbaa !11
  %conv753 = zext i8 %470 to i32
  %cmp754 = icmp slt i32 %conv753, 32
  br i1 %cmp754, label %land.lhs.true.756, label %lor.lhs.false.760

land.lhs.true.756:                                ; preds = %if.else.752
  %471 = load i8, i8* %c620, align 1, !tbaa !11
  %conv757 = zext i8 %471 to i32
  %cmp758 = icmp ne i32 %conv757, 10
  br i1 %cmp758, label %if.then.764, label %lor.lhs.false.760

lor.lhs.false.760:                                ; preds = %land.lhs.true.756, %if.else.752
  %472 = load i8, i8* %c620, align 1, !tbaa !11
  %conv761 = zext i8 %472 to i32
  %cmp762 = icmp sge i32 %conv761, 128
  br i1 %cmp762, label %if.then.764, label %if.end.812

if.then.764:                                      ; preds = %lor.lhs.false.760, %land.lhs.true.756
  %473 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping765 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %473, i32 0, i32 17
  %474 = load i32, i32* %escaping765, align 4, !tbaa !41
  %cmp766 = icmp eq i32 %474, 0
  br i1 %cmp766, label %if.then.768, label %if.else.772

if.then.768:                                      ; preds = %if.then.764
  store i8 92, i8* %c620, align 1, !tbaa !11
  %475 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos769 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %475, i32 0, i32 3
  %476 = load i32, i32* %outpos769, align 4, !tbaa !45
  %dec770 = add nsw i32 %476, -1
  store i32 %dec770, i32* %outpos769, align 4, !tbaa !45
  %477 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping771 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %477, i32 0, i32 17
  store i32 1, i32* %escaping771, align 4, !tbaa !41
  br label %if.end.811

if.else.772:                                      ; preds = %if.then.764
  %478 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping773 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %478, i32 0, i32 17
  %479 = load i32, i32* %escaping773, align 4, !tbaa !41
  %cmp774 = icmp eq i32 %479, 1
  br i1 %cmp774, label %if.then.776, label %if.else.785

if.then.776:                                      ; preds = %if.else.772
  %480 = load i8, i8* %c620, align 1, !tbaa !11
  %conv777 = zext i8 %480 to i32
  %shr778 = ashr i32 %conv777, 6
  %and779 = and i32 %shr778, 3
  %add780 = add nsw i32 48, %and779
  %conv781 = trunc i32 %add780 to i8
  store i8 %conv781, i8* %c620, align 1, !tbaa !11
  %481 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos782 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %481, i32 0, i32 3
  %482 = load i32, i32* %outpos782, align 4, !tbaa !45
  %dec783 = add nsw i32 %482, -1
  store i32 %dec783, i32* %outpos782, align 4, !tbaa !45
  %483 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping784 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %483, i32 0, i32 17
  store i32 2, i32* %escaping784, align 4, !tbaa !41
  br label %if.end.810

if.else.785:                                      ; preds = %if.else.772
  %484 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping786 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %484, i32 0, i32 17
  %485 = load i32, i32* %escaping786, align 4, !tbaa !41
  %cmp787 = icmp eq i32 %485, 2
  br i1 %cmp787, label %if.then.789, label %if.else.798

if.then.789:                                      ; preds = %if.else.785
  %486 = load i8, i8* %c620, align 1, !tbaa !11
  %conv790 = zext i8 %486 to i32
  %shr791 = ashr i32 %conv790, 3
  %and792 = and i32 %shr791, 7
  %add793 = add nsw i32 48, %and792
  %conv794 = trunc i32 %add793 to i8
  store i8 %conv794, i8* %c620, align 1, !tbaa !11
  %487 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos795 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %487, i32 0, i32 3
  %488 = load i32, i32* %outpos795, align 4, !tbaa !45
  %dec796 = add nsw i32 %488, -1
  store i32 %dec796, i32* %outpos795, align 4, !tbaa !45
  %489 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping797 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %489, i32 0, i32 17
  store i32 3, i32* %escaping797, align 4, !tbaa !41
  br label %if.end.809

if.else.798:                                      ; preds = %if.else.785
  %490 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping799 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %490, i32 0, i32 17
  %491 = load i32, i32* %escaping799, align 4, !tbaa !41
  %cmp800 = icmp eq i32 %491, 3
  br i1 %cmp800, label %if.then.802, label %if.end.808

if.then.802:                                      ; preds = %if.else.798
  %492 = load i8, i8* %c620, align 1, !tbaa !11
  %conv803 = zext i8 %492 to i32
  %and804 = and i32 %conv803, 7
  %add805 = add nsw i32 48, %and804
  %conv806 = trunc i32 %add805 to i8
  store i8 %conv806, i8* %c620, align 1, !tbaa !11
  %493 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %escaping807 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %493, i32 0, i32 17
  store i32 0, i32* %escaping807, align 4, !tbaa !41
  br label %if.end.808

if.end.808:                                       ; preds = %if.then.802, %if.else.798
  br label %if.end.809

if.end.809:                                       ; preds = %if.end.808, %if.then.789
  br label %if.end.810

if.end.810:                                       ; preds = %if.end.809, %if.then.776
  br label %if.end.811

if.end.811:                                       ; preds = %if.end.810, %if.then.768
  br label %if.end.812

if.end.812:                                       ; preds = %if.end.811, %lor.lhs.false.760
  br label %if.end.813

if.end.813:                                       ; preds = %if.end.812, %if.end.751
  br label %if.end.814

if.end.814:                                       ; preds = %if.end.813, %if.end.733
  br label %if.end.815

if.end.815:                                       ; preds = %if.end.814, %if.end.714
  br label %if.end.816

if.end.816:                                       ; preds = %if.end.815, %if.end.700
  br label %if.end.817

if.end.817:                                       ; preds = %if.end.816, %if.end.686
  br label %if.end.818

if.end.818:                                       ; preds = %if.end.817, %if.end.672
  br label %if.end.819

if.end.819:                                       ; preds = %if.end.818, %if.end.658
  br label %if.end.820

if.end.820:                                       ; preds = %if.end.819, %if.end.644
  br label %if.end.821

if.end.821:                                       ; preds = %if.end.820, %if.then.627
  %494 = load i8, i8* %c620, align 1, !tbaa !11
  %495 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr822 = getelementptr inbounds i8, i8* %495, i32 1
  store i8* %incdec.ptr822, i8** %out, align 8, !tbaa !1
  store i8 %494, i8* %495, align 1, !tbaa !11
  %496 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos823 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %496, i32 0, i32 3
  %497 = load i32, i32* %outpos823, align 4, !tbaa !45
  %498 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend824 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %498, i32 0, i32 4
  %499 = load i32, i32* %outend824, align 4, !tbaa !44
  %cmp825 = icmp eq i32 %497, %499
  br i1 %cmp825, label %if.then.827, label %if.end.832

if.then.827:                                      ; preds = %if.end.821
  %500 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos828 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %500, i32 0, i32 3
  store i32 0, i32* %outpos828, align 4, !tbaa !45
  %501 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend829 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %501, i32 0, i32 4
  store i32 0, i32* %outend829, align 4, !tbaa !44
  %502 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %noescape830 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %502, i32 0, i32 16
  store i32 0, i32* %noescape830, align 4, !tbaa !40
  %503 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state831 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %503, i32 0, i32 0
  store i32 0, i32* %state831, align 4, !tbaa !26
  br label %if.end.832

if.end.832:                                       ; preds = %if.then.827, %if.end.821
  store i32 4, i32* %cleanup.dest.slot
  call void @llvm.lifetime.end(i64 1, i8* %c620) #1
  br label %sw.epilog

sw.bb.834:                                        ; preds = %do.body
  %504 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos835 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %504, i32 0, i32 3
  %505 = load i32, i32* %outpos835, align 4, !tbaa !45
  %506 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend836 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %506, i32 0, i32 4
  %507 = load i32, i32* %outend836, align 4, !tbaa !44
  %cmp837 = icmp slt i32 %505, %507
  br i1 %cmp837, label %if.then.839, label %if.end.846

if.then.839:                                      ; preds = %sw.bb.834
  %508 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos840 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %508, i32 0, i32 3
  %509 = load i32, i32* %outpos840, align 4, !tbaa !45
  %inc841 = add nsw i32 %509, 1
  store i32 %inc841, i32* %outpos840, align 4, !tbaa !45
  %idxprom842 = sext i32 %509 to i64
  %510 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout843 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %510, i32 0, i32 9
  %511 = load i8*, i8** %bufferout843, align 8, !tbaa !29
  %arrayidx844 = getelementptr inbounds i8, i8* %511, i64 %idxprom842
  %512 = load i8, i8* %arrayidx844, align 1, !tbaa !11
  %513 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr845 = getelementptr inbounds i8, i8* %513, i32 1
  store i8* %incdec.ptr845, i8** %out, align 8, !tbaa !1
  store i8 %512, i8* %513, align 1, !tbaa !11
  br label %sw.epilog

if.end.846:                                       ; preds = %sw.bb.834
  %514 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc847 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %514, i32 0, i32 10
  %515 = load i32 (i8*)*, i32 (i8*)** %pgetc847, align 8, !tbaa !34
  %516 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file848 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %516, i32 0, i32 13
  %517 = load i8*, i8** %file848, align 8, !tbaa !37
  %call849 = call i32 %515(i8* %517) #9
  %conv850 = trunc i32 %call849 to i8
  %518 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr851 = getelementptr inbounds i8, i8* %518, i32 1
  store i8* %incdec.ptr851, i8** %out, align 8, !tbaa !1
  store i8 %conv850, i8* %518, align 1, !tbaa !11
  %519 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %buffercopy = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %519, i32 0, i32 6
  %520 = load i32, i32* %buffercopy, align 4, !tbaa !48
  %dec852 = add nsw i32 %520, -1
  store i32 %dec852, i32* %buffercopy, align 4, !tbaa !48
  %521 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %buffercopy853 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %521, i32 0, i32 6
  %522 = load i32, i32* %buffercopy853, align 4, !tbaa !48
  %cmp854 = icmp eq i32 %522, 0
  br i1 %cmp854, label %if.then.856, label %if.end.860

if.then.856:                                      ; preds = %if.end.846
  %523 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos857 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %523, i32 0, i32 3
  store i32 0, i32* %outpos857, align 4, !tbaa !45
  %524 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend858 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %524, i32 0, i32 4
  store i32 0, i32* %outend858, align 4, !tbaa !44
  %525 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state859 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %525, i32 0, i32 0
  store i32 0, i32* %state859, align 4, !tbaa !26
  br label %if.end.860

if.end.860:                                       ; preds = %if.then.856, %if.end.846
  br label %sw.epilog

sw.bb.861:                                        ; preds = %do.body
  %526 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc862 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %526, i32 0, i32 10
  %527 = load i32 (i8*)*, i32 (i8*)** %pgetc862, align 8, !tbaa !34
  %528 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file863 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %528, i32 0, i32 13
  %529 = load i8*, i8** %file863, align 8, !tbaa !37
  %call864 = call i32 %527(i8* %529) #9
  store i32 %call864, i32* %c, align 4, !tbaa !5
  %530 = load i32, i32* %c, align 4, !tbaa !5
  %cmp865 = icmp eq i32 %530, 41
  br i1 %cmp865, label %land.lhs.true.867, label %if.else.894

land.lhs.true.867:                                ; preds = %sw.bb.861
  %531 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %paren868 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %531, i32 0, i32 18
  %532 = load i32, i32* %paren868, align 4, !tbaa !42
  %dec869 = add nsw i32 %532, -1
  store i32 %dec869, i32* %paren868, align 4, !tbaa !42
  %cmp870 = icmp eq i32 %dec869, 0
  br i1 %cmp870, label %if.then.872, label %if.else.894

if.then.872:                                      ; preds = %land.lhs.true.867
  %533 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %wasascii873 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %533, i32 0, i32 7
  store i32 0, i32* %wasascii873, align 4, !tbaa !33
  %534 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %binary874 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %534, i32 0, i32 15
  %535 = load i32, i32* %binary874, align 4, !tbaa !39
  %tobool875 = icmp ne i32 %535, 0
  br i1 %tobool875, label %if.then.876, label %if.end.893

if.then.876:                                      ; preds = %if.then.872
  %536 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos877 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %536, i32 0, i32 1
  %537 = load i32, i32* %inpos877, align 4, !tbaa !32
  %cmp878 = icmp slt i32 %537, 256
  br i1 %cmp878, label %if.then.880, label %if.else.882

if.then.880:                                      ; preds = %if.then.876
  %538 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %539 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos881 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %539, i32 0, i32 1
  %540 = load i32, i32* %inpos881, align 4, !tbaa !32
  call void @pscompact_bufferatstart(%struct.pscompstate* %538, i32 %540) #9
  %541 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_bufferatstart(%struct.pscompstate* %541, i32 142) #9
  %542 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_copyinout_bin(%struct.pscompstate* %542) #9
  br label %sw.epilog

if.else.882:                                      ; preds = %if.then.876
  %543 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos883 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %543, i32 0, i32 1
  %544 = load i32, i32* %inpos883, align 4, !tbaa !32
  %cmp884 = icmp slt i32 %544, 65536
  br i1 %cmp884, label %if.then.886, label %if.end.891

if.then.886:                                      ; preds = %if.else.882
  %545 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %546 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos887 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %546, i32 0, i32 1
  %547 = load i32, i32* %inpos887, align 4, !tbaa !32
  %shr888 = ashr i32 %547, 8
  call void @pscompact_bufferatstart(%struct.pscompstate* %545, i32 %shr888) #9
  %548 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %549 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos889 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %549, i32 0, i32 1
  %550 = load i32, i32* %inpos889, align 4, !tbaa !32
  %and890 = and i32 %550, 255
  call void @pscompact_bufferatstart(%struct.pscompstate* %548, i32 %and890) #9
  %551 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_bufferatstart(%struct.pscompstate* %551, i32 144) #9
  %552 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_copyinout_bin(%struct.pscompstate* %552) #9
  br label %sw.epilog

if.end.891:                                       ; preds = %if.else.882
  br label %if.end.892

if.end.892:                                       ; preds = %if.end.891
  br label %if.end.893

if.end.893:                                       ; preds = %if.end.892, %if.then.872
  %553 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_bufferatstart(%struct.pscompstate* %553, i32 40) #9
  %554 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_buffer(%struct.pscompstate* %554, i32 41) #9
  %555 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_copyinout(%struct.pscompstate* %555) #9
  br label %sw.epilog

if.else.894:                                      ; preds = %land.lhs.true.867, %sw.bb.861
  %556 = load i32, i32* %c, align 4, !tbaa !5
  %cmp895 = icmp eq i32 %556, 92
  br i1 %cmp895, label %if.then.897, label %if.else.973

if.then.897:                                      ; preds = %if.else.894
  %557 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc898 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %557, i32 0, i32 10
  %558 = load i32 (i8*)*, i32 (i8*)** %pgetc898, align 8, !tbaa !34
  %559 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file899 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %559, i32 0, i32 13
  %560 = load i8*, i8** %file899, align 8, !tbaa !37
  %call900 = call i32 %558(i8* %560) #9
  store i32 %call900, i32* %c, align 4, !tbaa !5
  %561 = load i32, i32* %c, align 4, !tbaa !5
  %cmp901 = icmp eq i32 %561, 10
  br i1 %cmp901, label %if.then.903, label %if.else.904

if.then.903:                                      ; preds = %if.then.897
  br label %sw.epilog

if.else.904:                                      ; preds = %if.then.897
  %562 = load i32, i32* %c, align 4, !tbaa !5
  %cmp905 = icmp eq i32 %562, 98
  br i1 %cmp905, label %if.then.907, label %if.else.908

if.then.907:                                      ; preds = %if.else.904
  store i32 8, i32* %c, align 4, !tbaa !5
  br label %if.end.971

if.else.908:                                      ; preds = %if.else.904
  %563 = load i32, i32* %c, align 4, !tbaa !5
  %cmp909 = icmp eq i32 %563, 116
  br i1 %cmp909, label %if.then.911, label %if.else.912

if.then.911:                                      ; preds = %if.else.908
  store i32 9, i32* %c, align 4, !tbaa !5
  br label %if.end.970

if.else.912:                                      ; preds = %if.else.908
  %564 = load i32, i32* %c, align 4, !tbaa !5
  %cmp913 = icmp eq i32 %564, 110
  br i1 %cmp913, label %if.then.915, label %if.else.916

if.then.915:                                      ; preds = %if.else.912
  store i32 10, i32* %c, align 4, !tbaa !5
  br label %if.end.969

if.else.916:                                      ; preds = %if.else.912
  %565 = load i32, i32* %c, align 4, !tbaa !5
  %cmp917 = icmp eq i32 %565, 102
  br i1 %cmp917, label %if.then.919, label %if.else.920

if.then.919:                                      ; preds = %if.else.916
  store i32 12, i32* %c, align 4, !tbaa !5
  br label %if.end.968

if.else.920:                                      ; preds = %if.else.916
  %566 = load i32, i32* %c, align 4, !tbaa !5
  %cmp921 = icmp eq i32 %566, 114
  br i1 %cmp921, label %if.then.923, label %if.else.924

if.then.923:                                      ; preds = %if.else.920
  store i32 13, i32* %c, align 4, !tbaa !5
  br label %if.end.967

if.else.924:                                      ; preds = %if.else.920
  %567 = load i32, i32* %c, align 4, !tbaa !5
  %cmp925 = icmp sge i32 %567, 48
  br i1 %cmp925, label %land.lhs.true.927, label %if.end.966

land.lhs.true.927:                                ; preds = %if.else.924
  %568 = load i32, i32* %c, align 4, !tbaa !5
  %cmp928 = icmp sle i32 %568, 55
  br i1 %cmp928, label %if.then.930, label %if.end.966

if.then.930:                                      ; preds = %land.lhs.true.927
  %569 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %569) #1
  %570 = load i32, i32* %c, align 4, !tbaa !5
  %sub932 = sub nsw i32 %570, 48
  store i32 %sub932, i32* %c, align 4, !tbaa !5
  %571 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc933 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %571, i32 0, i32 10
  %572 = load i32 (i8*)*, i32 (i8*)** %pgetc933, align 8, !tbaa !34
  %573 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file934 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %573, i32 0, i32 13
  %574 = load i8*, i8** %file934, align 8, !tbaa !37
  %call935 = call i32 %572(i8* %574) #9
  store i32 %call935, i32* %d, align 4, !tbaa !5
  %575 = load i32, i32* %d, align 4, !tbaa !5
  %cmp936 = icmp sge i32 %575, 48
  br i1 %cmp936, label %land.lhs.true.938, label %if.else.961

land.lhs.true.938:                                ; preds = %if.then.930
  %576 = load i32, i32* %d, align 4, !tbaa !5
  %cmp939 = icmp sle i32 %576, 55
  br i1 %cmp939, label %if.then.941, label %if.else.961

if.then.941:                                      ; preds = %land.lhs.true.938
  %577 = load i32, i32* %c, align 4, !tbaa !5
  %shl942 = shl i32 %577, 3
  %578 = load i32, i32* %d, align 4, !tbaa !5
  %sub943 = sub nsw i32 %578, 48
  %add944 = add nsw i32 %shl942, %sub943
  store i32 %add944, i32* %c, align 4, !tbaa !5
  %579 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc945 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %579, i32 0, i32 10
  %580 = load i32 (i8*)*, i32 (i8*)** %pgetc945, align 8, !tbaa !34
  %581 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file946 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %581, i32 0, i32 13
  %582 = load i8*, i8** %file946, align 8, !tbaa !37
  %call947 = call i32 %580(i8* %582) #9
  store i32 %call947, i32* %d, align 4, !tbaa !5
  %583 = load i32, i32* %d, align 4, !tbaa !5
  %cmp948 = icmp sge i32 %583, 48
  br i1 %cmp948, label %land.lhs.true.950, label %if.else.957

land.lhs.true.950:                                ; preds = %if.then.941
  %584 = load i32, i32* %d, align 4, !tbaa !5
  %cmp951 = icmp sle i32 %584, 55
  br i1 %cmp951, label %if.then.953, label %if.else.957

if.then.953:                                      ; preds = %land.lhs.true.950
  %585 = load i32, i32* %c, align 4, !tbaa !5
  %shl954 = shl i32 %585, 3
  %586 = load i32, i32* %d, align 4, !tbaa !5
  %sub955 = sub nsw i32 %586, 48
  %add956 = add nsw i32 %shl954, %sub955
  store i32 %add956, i32* %c, align 4, !tbaa !5
  br label %if.end.960

if.else.957:                                      ; preds = %land.lhs.true.950, %if.then.941
  %587 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %unpgetc958 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %587, i32 0, i32 11
  %588 = load void (i32, i8*)*, void (i32, i8*)** %unpgetc958, align 8, !tbaa !35
  %589 = load i32, i32* %d, align 4, !tbaa !5
  %590 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file959 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %590, i32 0, i32 13
  %591 = load i8*, i8** %file959, align 8, !tbaa !37
  call void %588(i32 %589, i8* %591) #9
  br label %if.end.960

if.end.960:                                       ; preds = %if.else.957, %if.then.953
  br label %if.end.964

if.else.961:                                      ; preds = %land.lhs.true.938, %if.then.930
  %592 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %unpgetc962 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %592, i32 0, i32 11
  %593 = load void (i32, i8*)*, void (i32, i8*)** %unpgetc962, align 8, !tbaa !35
  %594 = load i32, i32* %d, align 4, !tbaa !5
  %595 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file963 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %595, i32 0, i32 13
  %596 = load i8*, i8** %file963, align 8, !tbaa !37
  call void %593(i32 %594, i8* %596) #9
  br label %if.end.964

if.end.964:                                       ; preds = %if.else.961, %if.end.960
  %597 = load i32, i32* %c, align 4, !tbaa !5
  %and965 = and i32 %597, 255
  store i32 %and965, i32* %c, align 4, !tbaa !5
  %598 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %598) #1
  br label %if.end.966

if.end.966:                                       ; preds = %if.end.964, %land.lhs.true.927, %if.else.924
  br label %if.end.967

if.end.967:                                       ; preds = %if.end.966, %if.then.923
  br label %if.end.968

if.end.968:                                       ; preds = %if.end.967, %if.then.919
  br label %if.end.969

if.end.969:                                       ; preds = %if.end.968, %if.then.915
  br label %if.end.970

if.end.970:                                       ; preds = %if.end.969, %if.then.911
  br label %if.end.971

if.end.971:                                       ; preds = %if.end.970, %if.then.907
  br label %if.end.972

if.end.972:                                       ; preds = %if.end.971
  br label %if.end.980

if.else.973:                                      ; preds = %if.else.894
  %599 = load i32, i32* %c, align 4, !tbaa !5
  %cmp974 = icmp eq i32 %599, 40
  br i1 %cmp974, label %if.then.976, label %if.end.979

if.then.976:                                      ; preds = %if.else.973
  %600 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %paren977 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %600, i32 0, i32 18
  %601 = load i32, i32* %paren977, align 4, !tbaa !42
  %inc978 = add nsw i32 %601, 1
  store i32 %inc978, i32* %paren977, align 4, !tbaa !42
  br label %if.end.979

if.end.979:                                       ; preds = %if.then.976, %if.else.973
  br label %if.end.980

if.end.980:                                       ; preds = %if.end.979, %if.end.972
  br label %if.end.981

if.end.981:                                       ; preds = %if.end.980
  %602 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %603 = load i32, i32* %c, align 4, !tbaa !5
  call void @pscompact_buffer(%struct.pscompstate* %602, i32 %603) #9
  br label %sw.epilog

sw.bb.982:                                        ; preds = %do.body
  %604 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc983 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %604, i32 0, i32 10
  %605 = load i32 (i8*)*, i32 (i8*)** %pgetc983, align 8, !tbaa !34
  %606 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file984 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %606, i32 0, i32 13
  %607 = load i8*, i8** %file984, align 8, !tbaa !37
  %call985 = call i32 %605(i8* %607) #9
  store i32 %call985, i32* %c, align 4, !tbaa !5
  %608 = load i32, i32* %c, align 4, !tbaa !5
  %cmp986 = icmp eq i32 %608, 13
  br i1 %cmp986, label %if.then.991, label %lor.lhs.false.988

lor.lhs.false.988:                                ; preds = %sw.bb.982
  %609 = load i32, i32* %c, align 4, !tbaa !5
  %cmp989 = icmp eq i32 %609, 10
  br i1 %cmp989, label %if.then.991, label %if.end.1221

if.then.991:                                      ; preds = %lor.lhs.false.988, %sw.bb.982
  %610 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos992 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %610, i32 0, i32 1
  %611 = load i32, i32* %inpos992, align 4, !tbaa !32
  %cmp993 = icmp sge i32 %611, 3
  br i1 %cmp993, label %land.lhs.true.995, label %if.end.1066

land.lhs.true.995:                                ; preds = %if.then.991
  %call996 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0)) #11
  %cmp997 = icmp ult i64 %call996, 3
  br i1 %cmp997, label %cond.true.999, label %cond.false.1058

cond.true.999:                                    ; preds = %land.lhs.true.995
  %612 = bitcast i64* %__s1_len1001 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %612) #1
  %613 = bitcast i64* %__s2_len1003 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %613) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.76 to i64)), i64 1), label %land.lhs.true.1005, label %cond.false.1053

land.lhs.true.1005:                               ; preds = %cond.true.999
  %call1006 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0)) #11
  store i64 %call1006, i64* %__s2_len1003, align 8, !tbaa !7
  %614 = load i64, i64* %__s2_len1003, align 8, !tbaa !7
  %cmp1007 = icmp ult i64 %614, 4
  br i1 %cmp1007, label %cond.true.1009, label %cond.false.1053

cond.true.1009:                                   ; preds = %land.lhs.true.1005
  %615 = bitcast i8** %__s11011 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %615) #1
  %616 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin1012 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %616, i32 0, i32 8
  %617 = load i8*, i8** %bufferin1012, align 8, !tbaa !28
  store i8* %617, i8** %__s11011, align 8, !tbaa !1
  %618 = bitcast i32* %__result1014 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %618) #1
  %619 = load i8*, i8** %__s11011, align 8, !tbaa !1
  %arrayidx1015 = getelementptr inbounds i8, i8* %619, i64 0
  %620 = load i8, i8* %arrayidx1015, align 1, !tbaa !11
  %conv1016 = zext i8 %620 to i32
  %621 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), align 1, !tbaa !11
  %conv1017 = zext i8 %621 to i32
  %sub1018 = sub nsw i32 %conv1016, %conv1017
  store i32 %sub1018, i32* %__result1014, align 4, !tbaa !5
  %622 = load i64, i64* %__s2_len1003, align 8, !tbaa !7
  %cmp1019 = icmp ugt i64 %622, 0
  br i1 %cmp1019, label %land.lhs.true.1021, label %if.end.1051

land.lhs.true.1021:                               ; preds = %cond.true.1009
  %623 = load i32, i32* %__result1014, align 4, !tbaa !5
  %cmp1022 = icmp eq i32 %623, 0
  br i1 %cmp1022, label %if.then.1024, label %if.end.1051

if.then.1024:                                     ; preds = %land.lhs.true.1021
  %624 = load i8*, i8** %__s11011, align 8, !tbaa !1
  %arrayidx1025 = getelementptr inbounds i8, i8* %624, i64 1
  %625 = load i8, i8* %arrayidx1025, align 1, !tbaa !11
  %conv1026 = zext i8 %625 to i32
  %626 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i64 1), align 1, !tbaa !11
  %conv1027 = zext i8 %626 to i32
  %sub1028 = sub nsw i32 %conv1026, %conv1027
  store i32 %sub1028, i32* %__result1014, align 4, !tbaa !5
  %627 = load i64, i64* %__s2_len1003, align 8, !tbaa !7
  %cmp1029 = icmp ugt i64 %627, 1
  br i1 %cmp1029, label %land.lhs.true.1031, label %if.end.1050

land.lhs.true.1031:                               ; preds = %if.then.1024
  %628 = load i32, i32* %__result1014, align 4, !tbaa !5
  %cmp1032 = icmp eq i32 %628, 0
  br i1 %cmp1032, label %if.then.1034, label %if.end.1050

if.then.1034:                                     ; preds = %land.lhs.true.1031
  %629 = load i8*, i8** %__s11011, align 8, !tbaa !1
  %arrayidx1035 = getelementptr inbounds i8, i8* %629, i64 2
  %630 = load i8, i8* %arrayidx1035, align 1, !tbaa !11
  %conv1036 = zext i8 %630 to i32
  %631 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i64 2), align 1, !tbaa !11
  %conv1037 = zext i8 %631 to i32
  %sub1038 = sub nsw i32 %conv1036, %conv1037
  store i32 %sub1038, i32* %__result1014, align 4, !tbaa !5
  %632 = load i64, i64* %__s2_len1003, align 8, !tbaa !7
  %cmp1039 = icmp ugt i64 %632, 2
  br i1 %cmp1039, label %land.lhs.true.1041, label %if.end.1049

land.lhs.true.1041:                               ; preds = %if.then.1034
  %633 = load i32, i32* %__result1014, align 4, !tbaa !5
  %cmp1042 = icmp eq i32 %633, 0
  br i1 %cmp1042, label %if.then.1044, label %if.end.1049

if.then.1044:                                     ; preds = %land.lhs.true.1041
  %634 = load i8*, i8** %__s11011, align 8, !tbaa !1
  %arrayidx1045 = getelementptr inbounds i8, i8* %634, i64 3
  %635 = load i8, i8* %arrayidx1045, align 1, !tbaa !11
  %conv1046 = zext i8 %635 to i32
  %636 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i64 3), align 1, !tbaa !11
  %conv1047 = zext i8 %636 to i32
  %sub1048 = sub nsw i32 %conv1046, %conv1047
  store i32 %sub1048, i32* %__result1014, align 4, !tbaa !5
  br label %if.end.1049

if.end.1049:                                      ; preds = %if.then.1044, %land.lhs.true.1041, %if.then.1034
  br label %if.end.1050

if.end.1050:                                      ; preds = %if.end.1049, %land.lhs.true.1031, %if.then.1024
  br label %if.end.1051

if.end.1051:                                      ; preds = %if.end.1050, %land.lhs.true.1021, %cond.true.1009
  %637 = load i32, i32* %__result1014, align 4, !tbaa !5
  store i32 %637, i32* %tmp1052, !tbaa !5
  %638 = bitcast i32* %__result1014 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %638) #1
  %639 = bitcast i8** %__s11011 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %639) #1
  %640 = load i32, i32* %tmp1052, !tbaa !5
  br label %cond.end.1056

cond.false.1053:                                  ; preds = %land.lhs.true.1005, %cond.true.999
  %641 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin1054 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %641, i32 0, i32 8
  %642 = load i8*, i8** %bufferin1054, align 8, !tbaa !28
  %call1055 = call i32 @strcmp(i8* %642, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0)) #8
  br label %cond.end.1056

cond.end.1056:                                    ; preds = %cond.false.1053, %if.end.1051
  %cond1057 = phi i32 [ %640, %if.end.1051 ], [ %call1055, %cond.false.1053 ]
  store i32 %cond1057, i32* %tmp1004, !tbaa !5
  %643 = bitcast i64* %__s2_len1003 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %643) #1
  %644 = bitcast i64* %__s1_len1001 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %644) #1
  %645 = load i32, i32* %tmp1004, !tbaa !5
  br label %cond.end.1061

cond.false.1058:                                  ; preds = %land.lhs.true.995
  %646 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin1059 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %646, i32 0, i32 8
  %647 = load i8*, i8** %bufferin1059, align 8, !tbaa !28
  %call1060 = call i32 @strncmp(i8* %647, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i64 3) #11
  br label %cond.end.1061

cond.end.1061:                                    ; preds = %cond.false.1058, %cond.end.1056
  %cond1062 = phi i32 [ %645, %cond.end.1056 ], [ %call1060, %cond.false.1058 ]
  %cmp1063 = icmp eq i32 %cond1062, 0
  br i1 %cmp1063, label %if.then.1065, label %if.end.1066

if.then.1065:                                     ; preds = %cond.end.1061
  %648 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_bufferatstart(%struct.pscompstate* %648, i32 37) #9
  %649 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_buffer(%struct.pscompstate* %649, i32 10) #9
  %650 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_copyinout(%struct.pscompstate* %650) #9
  br label %sw.epilog

if.end.1066:                                      ; preds = %cond.end.1061, %if.then.991
  %651 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos1067 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %651, i32 0, i32 1
  %652 = load i32, i32* %inpos1067, align 4, !tbaa !32
  %cmp1068 = icmp sge i32 %652, 7
  br i1 %cmp1068, label %land.lhs.true.1070, label %if.end.1142

land.lhs.true.1070:                               ; preds = %if.end.1066
  %call1071 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0)) #11
  %cmp1072 = icmp ult i64 %call1071, 7
  br i1 %cmp1072, label %cond.true.1074, label %cond.false.1133

cond.true.1074:                                   ; preds = %land.lhs.true.1070
  %653 = bitcast i64* %__s1_len1076 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %653) #1
  %654 = bitcast i64* %__s2_len1078 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %654) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.77 to i64)), i64 1), label %land.lhs.true.1080, label %cond.false.1128

land.lhs.true.1080:                               ; preds = %cond.true.1074
  %call1081 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0)) #11
  store i64 %call1081, i64* %__s2_len1078, align 8, !tbaa !7
  %655 = load i64, i64* %__s2_len1078, align 8, !tbaa !7
  %cmp1082 = icmp ult i64 %655, 4
  br i1 %cmp1082, label %cond.true.1084, label %cond.false.1128

cond.true.1084:                                   ; preds = %land.lhs.true.1080
  %656 = bitcast i8** %__s11086 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %656) #1
  %657 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin1087 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %657, i32 0, i32 8
  %658 = load i8*, i8** %bufferin1087, align 8, !tbaa !28
  store i8* %658, i8** %__s11086, align 8, !tbaa !1
  %659 = bitcast i32* %__result1089 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %659) #1
  %660 = load i8*, i8** %__s11086, align 8, !tbaa !1
  %arrayidx1090 = getelementptr inbounds i8, i8* %660, i64 0
  %661 = load i8, i8* %arrayidx1090, align 1, !tbaa !11
  %conv1091 = zext i8 %661 to i32
  %662 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), align 1, !tbaa !11
  %conv1092 = zext i8 %662 to i32
  %sub1093 = sub nsw i32 %conv1091, %conv1092
  store i32 %sub1093, i32* %__result1089, align 4, !tbaa !5
  %663 = load i64, i64* %__s2_len1078, align 8, !tbaa !7
  %cmp1094 = icmp ugt i64 %663, 0
  br i1 %cmp1094, label %land.lhs.true.1096, label %if.end.1126

land.lhs.true.1096:                               ; preds = %cond.true.1084
  %664 = load i32, i32* %__result1089, align 4, !tbaa !5
  %cmp1097 = icmp eq i32 %664, 0
  br i1 %cmp1097, label %if.then.1099, label %if.end.1126

if.then.1099:                                     ; preds = %land.lhs.true.1096
  %665 = load i8*, i8** %__s11086, align 8, !tbaa !1
  %arrayidx1100 = getelementptr inbounds i8, i8* %665, i64 1
  %666 = load i8, i8* %arrayidx1100, align 1, !tbaa !11
  %conv1101 = zext i8 %666 to i32
  %667 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i64 1), align 1, !tbaa !11
  %conv1102 = zext i8 %667 to i32
  %sub1103 = sub nsw i32 %conv1101, %conv1102
  store i32 %sub1103, i32* %__result1089, align 4, !tbaa !5
  %668 = load i64, i64* %__s2_len1078, align 8, !tbaa !7
  %cmp1104 = icmp ugt i64 %668, 1
  br i1 %cmp1104, label %land.lhs.true.1106, label %if.end.1125

land.lhs.true.1106:                               ; preds = %if.then.1099
  %669 = load i32, i32* %__result1089, align 4, !tbaa !5
  %cmp1107 = icmp eq i32 %669, 0
  br i1 %cmp1107, label %if.then.1109, label %if.end.1125

if.then.1109:                                     ; preds = %land.lhs.true.1106
  %670 = load i8*, i8** %__s11086, align 8, !tbaa !1
  %arrayidx1110 = getelementptr inbounds i8, i8* %670, i64 2
  %671 = load i8, i8* %arrayidx1110, align 1, !tbaa !11
  %conv1111 = zext i8 %671 to i32
  %672 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i64 2), align 1, !tbaa !11
  %conv1112 = zext i8 %672 to i32
  %sub1113 = sub nsw i32 %conv1111, %conv1112
  store i32 %sub1113, i32* %__result1089, align 4, !tbaa !5
  %673 = load i64, i64* %__s2_len1078, align 8, !tbaa !7
  %cmp1114 = icmp ugt i64 %673, 2
  br i1 %cmp1114, label %land.lhs.true.1116, label %if.end.1124

land.lhs.true.1116:                               ; preds = %if.then.1109
  %674 = load i32, i32* %__result1089, align 4, !tbaa !5
  %cmp1117 = icmp eq i32 %674, 0
  br i1 %cmp1117, label %if.then.1119, label %if.end.1124

if.then.1119:                                     ; preds = %land.lhs.true.1116
  %675 = load i8*, i8** %__s11086, align 8, !tbaa !1
  %arrayidx1120 = getelementptr inbounds i8, i8* %675, i64 3
  %676 = load i8, i8* %arrayidx1120, align 1, !tbaa !11
  %conv1121 = zext i8 %676 to i32
  %677 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i64 3), align 1, !tbaa !11
  %conv1122 = zext i8 %677 to i32
  %sub1123 = sub nsw i32 %conv1121, %conv1122
  store i32 %sub1123, i32* %__result1089, align 4, !tbaa !5
  br label %if.end.1124

if.end.1124:                                      ; preds = %if.then.1119, %land.lhs.true.1116, %if.then.1109
  br label %if.end.1125

if.end.1125:                                      ; preds = %if.end.1124, %land.lhs.true.1106, %if.then.1099
  br label %if.end.1126

if.end.1126:                                      ; preds = %if.end.1125, %land.lhs.true.1096, %cond.true.1084
  %678 = load i32, i32* %__result1089, align 4, !tbaa !5
  store i32 %678, i32* %tmp1127, !tbaa !5
  %679 = bitcast i32* %__result1089 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %679) #1
  %680 = bitcast i8** %__s11086 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %680) #1
  %681 = load i32, i32* %tmp1127, !tbaa !5
  br label %cond.end.1131

cond.false.1128:                                  ; preds = %land.lhs.true.1080, %cond.true.1074
  %682 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin1129 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %682, i32 0, i32 8
  %683 = load i8*, i8** %bufferin1129, align 8, !tbaa !28
  %call1130 = call i32 @strcmp(i8* %683, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0)) #8
  br label %cond.end.1131

cond.end.1131:                                    ; preds = %cond.false.1128, %if.end.1126
  %cond1132 = phi i32 [ %681, %if.end.1126 ], [ %call1130, %cond.false.1128 ]
  store i32 %cond1132, i32* %tmp1079, !tbaa !5
  %684 = bitcast i64* %__s2_len1078 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %684) #1
  %685 = bitcast i64* %__s1_len1076 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %685) #1
  %686 = load i32, i32* %tmp1079, !tbaa !5
  br label %cond.end.1136

cond.false.1133:                                  ; preds = %land.lhs.true.1070
  %687 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin1134 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %687, i32 0, i32 8
  %688 = load i8*, i8** %bufferin1134, align 8, !tbaa !28
  %call1135 = call i32 @strncmp(i8* %688, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i64 7) #11
  br label %cond.end.1136

cond.end.1136:                                    ; preds = %cond.false.1133, %cond.end.1131
  %cond1137 = phi i32 [ %686, %cond.end.1131 ], [ %call1135, %cond.false.1133 ]
  %cmp1138 = icmp eq i32 %cond1137, 0
  br i1 %cmp1138, label %if.then.1140, label %if.end.1142

if.then.1140:                                     ; preds = %cond.end.1136
  %689 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %names1141 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %689, i32 0, i32 14
  store i32 1, i32* %names1141, align 4, !tbaa !38
  %690 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_bufferatstart(%struct.pscompstate* %690, i32 37) #9
  %691 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_buffer(%struct.pscompstate* %691, i32 10) #9
  %692 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_copyinout(%struct.pscompstate* %692) #9
  br label %sw.epilog

if.end.1142:                                      ; preds = %cond.end.1136, %if.end.1066
  %693 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos1143 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %693, i32 0, i32 1
  %694 = load i32, i32* %inpos1143, align 4, !tbaa !32
  %cmp1144 = icmp sge i32 %694, 8
  br i1 %cmp1144, label %land.lhs.true.1146, label %if.end.1218

land.lhs.true.1146:                               ; preds = %if.end.1142
  %call1147 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0)) #11
  %cmp1148 = icmp ult i64 %call1147, 8
  br i1 %cmp1148, label %cond.true.1150, label %cond.false.1209

cond.true.1150:                                   ; preds = %land.lhs.true.1146
  %695 = bitcast i64* %__s1_len1152 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %695) #1
  %696 = bitcast i64* %__s2_len1154 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %696) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i64 1) to i64), i64 ptrtoint ([9 x i8]* @.str.78 to i64)), i64 1), label %land.lhs.true.1156, label %cond.false.1204

land.lhs.true.1156:                               ; preds = %cond.true.1150
  %call1157 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0)) #11
  store i64 %call1157, i64* %__s2_len1154, align 8, !tbaa !7
  %697 = load i64, i64* %__s2_len1154, align 8, !tbaa !7
  %cmp1158 = icmp ult i64 %697, 4
  br i1 %cmp1158, label %cond.true.1160, label %cond.false.1204

cond.true.1160:                                   ; preds = %land.lhs.true.1156
  %698 = bitcast i8** %__s11162 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %698) #1
  %699 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin1163 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %699, i32 0, i32 8
  %700 = load i8*, i8** %bufferin1163, align 8, !tbaa !28
  store i8* %700, i8** %__s11162, align 8, !tbaa !1
  %701 = bitcast i32* %__result1165 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %701) #1
  %702 = load i8*, i8** %__s11162, align 8, !tbaa !1
  %arrayidx1166 = getelementptr inbounds i8, i8* %702, i64 0
  %703 = load i8, i8* %arrayidx1166, align 1, !tbaa !11
  %conv1167 = zext i8 %703 to i32
  %704 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), align 1, !tbaa !11
  %conv1168 = zext i8 %704 to i32
  %sub1169 = sub nsw i32 %conv1167, %conv1168
  store i32 %sub1169, i32* %__result1165, align 4, !tbaa !5
  %705 = load i64, i64* %__s2_len1154, align 8, !tbaa !7
  %cmp1170 = icmp ugt i64 %705, 0
  br i1 %cmp1170, label %land.lhs.true.1172, label %if.end.1202

land.lhs.true.1172:                               ; preds = %cond.true.1160
  %706 = load i32, i32* %__result1165, align 4, !tbaa !5
  %cmp1173 = icmp eq i32 %706, 0
  br i1 %cmp1173, label %if.then.1175, label %if.end.1202

if.then.1175:                                     ; preds = %land.lhs.true.1172
  %707 = load i8*, i8** %__s11162, align 8, !tbaa !1
  %arrayidx1176 = getelementptr inbounds i8, i8* %707, i64 1
  %708 = load i8, i8* %arrayidx1176, align 1, !tbaa !11
  %conv1177 = zext i8 %708 to i32
  %709 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i64 1), align 1, !tbaa !11
  %conv1178 = zext i8 %709 to i32
  %sub1179 = sub nsw i32 %conv1177, %conv1178
  store i32 %sub1179, i32* %__result1165, align 4, !tbaa !5
  %710 = load i64, i64* %__s2_len1154, align 8, !tbaa !7
  %cmp1180 = icmp ugt i64 %710, 1
  br i1 %cmp1180, label %land.lhs.true.1182, label %if.end.1201

land.lhs.true.1182:                               ; preds = %if.then.1175
  %711 = load i32, i32* %__result1165, align 4, !tbaa !5
  %cmp1183 = icmp eq i32 %711, 0
  br i1 %cmp1183, label %if.then.1185, label %if.end.1201

if.then.1185:                                     ; preds = %land.lhs.true.1182
  %712 = load i8*, i8** %__s11162, align 8, !tbaa !1
  %arrayidx1186 = getelementptr inbounds i8, i8* %712, i64 2
  %713 = load i8, i8* %arrayidx1186, align 1, !tbaa !11
  %conv1187 = zext i8 %713 to i32
  %714 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i64 2), align 1, !tbaa !11
  %conv1188 = zext i8 %714 to i32
  %sub1189 = sub nsw i32 %conv1187, %conv1188
  store i32 %sub1189, i32* %__result1165, align 4, !tbaa !5
  %715 = load i64, i64* %__s2_len1154, align 8, !tbaa !7
  %cmp1190 = icmp ugt i64 %715, 2
  br i1 %cmp1190, label %land.lhs.true.1192, label %if.end.1200

land.lhs.true.1192:                               ; preds = %if.then.1185
  %716 = load i32, i32* %__result1165, align 4, !tbaa !5
  %cmp1193 = icmp eq i32 %716, 0
  br i1 %cmp1193, label %if.then.1195, label %if.end.1200

if.then.1195:                                     ; preds = %land.lhs.true.1192
  %717 = load i8*, i8** %__s11162, align 8, !tbaa !1
  %arrayidx1196 = getelementptr inbounds i8, i8* %717, i64 3
  %718 = load i8, i8* %arrayidx1196, align 1, !tbaa !11
  %conv1197 = zext i8 %718 to i32
  %719 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i64 3), align 1, !tbaa !11
  %conv1198 = zext i8 %719 to i32
  %sub1199 = sub nsw i32 %conv1197, %conv1198
  store i32 %sub1199, i32* %__result1165, align 4, !tbaa !5
  br label %if.end.1200

if.end.1200:                                      ; preds = %if.then.1195, %land.lhs.true.1192, %if.then.1185
  br label %if.end.1201

if.end.1201:                                      ; preds = %if.end.1200, %land.lhs.true.1182, %if.then.1175
  br label %if.end.1202

if.end.1202:                                      ; preds = %if.end.1201, %land.lhs.true.1172, %cond.true.1160
  %720 = load i32, i32* %__result1165, align 4, !tbaa !5
  store i32 %720, i32* %tmp1203, !tbaa !5
  %721 = bitcast i32* %__result1165 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %721) #1
  %722 = bitcast i8** %__s11162 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %722) #1
  %723 = load i32, i32* %tmp1203, !tbaa !5
  br label %cond.end.1207

cond.false.1204:                                  ; preds = %land.lhs.true.1156, %cond.true.1150
  %724 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin1205 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %724, i32 0, i32 8
  %725 = load i8*, i8** %bufferin1205, align 8, !tbaa !28
  %call1206 = call i32 @strcmp(i8* %725, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0)) #8
  br label %cond.end.1207

cond.end.1207:                                    ; preds = %cond.false.1204, %if.end.1202
  %cond1208 = phi i32 [ %723, %if.end.1202 ], [ %call1206, %cond.false.1204 ]
  store i32 %cond1208, i32* %tmp1155, !tbaa !5
  %726 = bitcast i64* %__s2_len1154 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %726) #1
  %727 = bitcast i64* %__s1_len1152 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %727) #1
  %728 = load i32, i32* %tmp1155, !tbaa !5
  br label %cond.end.1212

cond.false.1209:                                  ; preds = %land.lhs.true.1146
  %729 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin1210 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %729, i32 0, i32 8
  %730 = load i8*, i8** %bufferin1210, align 8, !tbaa !28
  %call1211 = call i32 @strncmp(i8* %730, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i64 8) #11
  br label %cond.end.1212

cond.end.1212:                                    ; preds = %cond.false.1209, %cond.end.1207
  %cond1213 = phi i32 [ %728, %cond.end.1207 ], [ %call1211, %cond.false.1209 ]
  %cmp1214 = icmp eq i32 %cond1213, 0
  br i1 %cmp1214, label %if.then.1216, label %if.end.1218

if.then.1216:                                     ; preds = %cond.end.1212
  %731 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %binary1217 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %731, i32 0, i32 15
  store i32 1, i32* %binary1217, align 4, !tbaa !39
  %732 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_bufferatstart(%struct.pscompstate* %732, i32 37) #9
  %733 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_buffer(%struct.pscompstate* %733, i32 10) #9
  %734 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_copyinout(%struct.pscompstate* %734) #9
  br label %sw.epilog

if.end.1218:                                      ; preds = %cond.end.1212, %if.end.1142
  %735 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos1219 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %735, i32 0, i32 1
  store i32 0, i32* %inpos1219, align 4, !tbaa !32
  %736 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state1220 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %736, i32 0, i32 0
  store i32 0, i32* %state1220, align 4, !tbaa !26
  br label %sw.epilog

if.end.1221:                                      ; preds = %lor.lhs.false.988
  %737 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %738 = load i32, i32* %c, align 4, !tbaa !5
  call void @pscompact_buffer(%struct.pscompstate* %737, i32 %738) #9
  br label %sw.epilog

sw.bb.1222:                                       ; preds = %do.body
  %739 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %pgetc1223 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %739, i32 0, i32 10
  %740 = load i32 (i8*)*, i32 (i8*)** %pgetc1223, align 8, !tbaa !34
  %741 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file1224 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %741, i32 0, i32 13
  %742 = load i8*, i8** %file1224, align 8, !tbaa !37
  %call1225 = call i32 %740(i8* %742) #9
  store i32 %call1225, i32* %c, align 4, !tbaa !5
  %743 = load i32, i32* %c, align 4, !tbaa !5
  %cmp1226 = icmp eq i32 %743, 60
  br i1 %cmp1226, label %if.then.1228, label %if.else.1229

if.then.1228:                                     ; preds = %sw.bb.1222
  %744 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_copy2(%struct.pscompstate* %744, i32 60, i32 60, i32 0) #9
  br label %sw.epilog

if.else.1229:                                     ; preds = %sw.bb.1222
  %745 = load i32, i32* %c, align 4, !tbaa !5
  %cmp1230 = icmp eq i32 %745, 126
  br i1 %cmp1230, label %if.then.1232, label %if.else.1234

if.then.1232:                                     ; preds = %if.else.1229
  %746 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1233 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %746, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.79, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.else.1234:                                     ; preds = %if.else.1229
  %747 = load i32, i32* %c, align 4, !tbaa !5
  %cmp1235 = icmp eq i32 %747, 62
  br i1 %cmp1235, label %if.then.1237, label %if.else.1261

if.then.1237:                                     ; preds = %if.else.1234
  %748 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %wasascii1238 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %748, i32 0, i32 7
  store i32 0, i32* %wasascii1238, align 4, !tbaa !33
  %749 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %binary1239 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %749, i32 0, i32 15
  %750 = load i32, i32* %binary1239, align 4, !tbaa !39
  %tobool1240 = icmp ne i32 %750, 0
  br i1 %tobool1240, label %if.then.1241, label %if.end.1260

if.then.1241:                                     ; preds = %if.then.1237
  %751 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_hex2ascii(%struct.pscompstate* %751) #9
  %752 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos1242 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %752, i32 0, i32 1
  %753 = load i32, i32* %inpos1242, align 4, !tbaa !32
  %cmp1243 = icmp slt i32 %753, 256
  br i1 %cmp1243, label %if.then.1245, label %if.else.1247

if.then.1245:                                     ; preds = %if.then.1241
  %754 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %755 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos1246 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %755, i32 0, i32 1
  %756 = load i32, i32* %inpos1246, align 4, !tbaa !32
  call void @pscompact_bufferatstart(%struct.pscompstate* %754, i32 %756) #9
  %757 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_bufferatstart(%struct.pscompstate* %757, i32 142) #9
  %758 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_copyinout_bin(%struct.pscompstate* %758) #9
  br label %if.end.1259

if.else.1247:                                     ; preds = %if.then.1241
  %759 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos1248 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %759, i32 0, i32 1
  %760 = load i32, i32* %inpos1248, align 4, !tbaa !32
  %cmp1249 = icmp slt i32 %760, 65536
  br i1 %cmp1249, label %if.then.1251, label %if.else.1256

if.then.1251:                                     ; preds = %if.else.1247
  %761 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %762 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos1252 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %762, i32 0, i32 1
  %763 = load i32, i32* %inpos1252, align 4, !tbaa !32
  %shr1253 = ashr i32 %763, 8
  call void @pscompact_bufferatstart(%struct.pscompstate* %761, i32 %shr1253) #9
  %764 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %765 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos1254 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %765, i32 0, i32 1
  %766 = load i32, i32* %inpos1254, align 4, !tbaa !32
  %and1255 = and i32 %766, 255
  call void @pscompact_bufferatstart(%struct.pscompstate* %764, i32 %and1255) #9
  %767 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_bufferatstart(%struct.pscompstate* %767, i32 144) #9
  %768 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_copyinout_bin(%struct.pscompstate* %768) #9
  br label %if.end.1258

if.else.1256:                                     ; preds = %if.else.1247
  %769 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1257 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %769, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.end.1258:                                      ; preds = %if.then.1251
  br label %if.end.1259

if.end.1259:                                      ; preds = %if.end.1258, %if.then.1245
  br label %sw.epilog

if.end.1260:                                      ; preds = %if.then.1237
  %770 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_bufferatstart(%struct.pscompstate* %770, i32 60) #9
  %771 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_buffer(%struct.pscompstate* %771, i32 62) #9
  %772 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_copyinout(%struct.pscompstate* %772) #9
  br label %sw.epilog

if.else.1261:                                     ; preds = %if.else.1234
  %773 = load i32, i32* %c, align 4, !tbaa !5
  %cmp1262 = icmp sle i32 %773, 32
  br i1 %cmp1262, label %if.then.1264, label %if.else.1265

if.then.1264:                                     ; preds = %if.else.1261
  br label %sw.epilog

if.else.1265:                                     ; preds = %if.else.1261
  %774 = load i32, i32* %c, align 4, !tbaa !5
  %cmp1266 = icmp sge i32 %774, 65
  br i1 %cmp1266, label %land.lhs.true.1268, label %lor.lhs.false.1271

land.lhs.true.1268:                               ; preds = %if.else.1265
  %775 = load i32, i32* %c, align 4, !tbaa !5
  %cmp1269 = icmp sle i32 %775, 90
  br i1 %cmp1269, label %if.then.1283, label %lor.lhs.false.1271

lor.lhs.false.1271:                               ; preds = %land.lhs.true.1268, %if.else.1265
  %776 = load i32, i32* %c, align 4, !tbaa !5
  %cmp1272 = icmp sge i32 %776, 97
  br i1 %cmp1272, label %land.lhs.true.1274, label %lor.lhs.false.1277

land.lhs.true.1274:                               ; preds = %lor.lhs.false.1271
  %777 = load i32, i32* %c, align 4, !tbaa !5
  %cmp1275 = icmp sle i32 %777, 122
  br i1 %cmp1275, label %if.then.1283, label %lor.lhs.false.1277

lor.lhs.false.1277:                               ; preds = %land.lhs.true.1274, %lor.lhs.false.1271
  %778 = load i32, i32* %c, align 4, !tbaa !5
  %cmp1278 = icmp sge i32 %778, 48
  br i1 %cmp1278, label %land.lhs.true.1280, label %if.else.1284

land.lhs.true.1280:                               ; preds = %lor.lhs.false.1277
  %779 = load i32, i32* %c, align 4, !tbaa !5
  %cmp1281 = icmp sle i32 %779, 57
  br i1 %cmp1281, label %if.then.1283, label %if.else.1284

if.then.1283:                                     ; preds = %land.lhs.true.1280, %land.lhs.true.1274, %land.lhs.true.1268
  %780 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %781 = load i32, i32* %c, align 4, !tbaa !5
  call void @pscompact_buffer(%struct.pscompstate* %780, i32 %781) #9
  br label %if.end.1286

if.else.1284:                                     ; preds = %land.lhs.true.1280, %lor.lhs.false.1277
  %782 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1285 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %782, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.81, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.end.1286:                                      ; preds = %if.then.1283
  br label %if.end.1287

if.end.1287:                                      ; preds = %if.end.1286
  br label %if.end.1288

if.end.1288:                                      ; preds = %if.end.1287
  br label %if.end.1289

if.end.1289:                                      ; preds = %if.end.1288
  br label %if.end.1290

if.end.1290:                                      ; preds = %if.end.1289
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.end.1290, %if.then.1264, %if.end.1260, %if.end.1259, %if.then.1228, %if.end.1221, %if.end.1218, %if.then.1216, %if.then.1140, %if.then.1065, %if.end.981, %if.then.903, %if.end.893, %if.then.886, %if.then.880, %if.end.860, %if.then.839, %if.end.832, %if.end.616, %cleanup.601, %if.else.207, %if.then.191, %if.then.181, %if.then.154, %if.then.139, %if.then.127, %if.end.118, %if.then.103, %if.then.79, %if.then.67, %if.then.37, %if.then.19, %if.then.11, %if.then.5
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %783 = load i8*, i8** %out, align 8, !tbaa !1
  %784 = load i8*, i8** %ubuf.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %783 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %784 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %785 = load i64, i64* %ulen.addr, align 8, !tbaa !7
  %cmp1291 = icmp ne i64 %sub.ptr.sub, %785
  br i1 %cmp1291, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %786 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %peof = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %786, i32 0, i32 12
  %787 = load i32 (i8*)*, i32 (i8*)** %peof, align 8, !tbaa !36
  %788 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %file1293 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %788, i32 0, i32 13
  %789 = load i8*, i8** %file1293, align 8, !tbaa !37
  %call1294 = call i32 %787(i8* %789) #9
  %tobool1295 = icmp ne i32 %call1294, 0
  %lnot = xor i1 %tobool1295, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %790 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %790, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %791 = load i8*, i8** %out, align 8, !tbaa !1
  %792 = load i8*, i8** %ubuf.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast1296 = ptrtoint i8* %791 to i64
  %sub.ptr.rhs.cast1297 = ptrtoint i8* %792 to i64
  %sub.ptr.sub1298 = sub i64 %sub.ptr.lhs.cast1296, %sub.ptr.rhs.cast1297
  store i64 %sub.ptr.sub1298, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1299

cleanup.1299:                                     ; preds = %do.end, %if.then
  %793 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %793) #1
  %794 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %794) #1
  %795 = load i64, i64* %retval
  ret i64 %795

unreachable:                                      ; preds = %cleanup.601
  unreachable
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

declare i32 @compress(i8*, i64*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @pscompact_end(%struct.pscompstate* %psc) #0 {
entry:
  %psc.addr = alloca %struct.pscompstate*, align 8
  store %struct.pscompstate* %psc, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %0 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %0, i32 0, i32 8
  %1 = load i8*, i8** %bufferin, align 8, !tbaa !28
  call void @free(i8* %1) #8
  %2 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %2, i32 0, i32 9
  %3 = load i8*, i8** %bufferout, align 8, !tbaa !29
  call void @free(i8* %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @process_initfile(i8* %initfile, i8* %gconfig_h, i8* %os_prefix, i8* %rom_prefix, i32 %compression, i32* %inode_count, i32* %totlen, %struct._IO_FILE* %out) #0 {
entry:
  %retval = alloca i32, align 4
  %initfile.addr = alloca i8*, align 8
  %gconfig_h.addr = alloca i8*, align 8
  %os_prefix.addr = alloca i8*, align 8
  %rom_prefix.addr = alloca i8*, align 8
  %compression.addr = alloca i32, align 4
  %inode_count.addr = alloca i32*, align 8
  %totlen.addr = alloca i32*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %ret = alloca i32, align 4
  %block = alloca i32, align 4
  %blocks = alloca i32, align 4
  %node = alloca %struct.romfs_inode_s*, align 8
  %ubuf = alloca i8*, align 8
  %cbuf = alloca i8*, align 8
  %prefixed_path = alloca i8*, align 8
  %rom_filename = alloca i8*, align 8
  %clen = alloca i64, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %config = alloca %struct._IO_FILE*, align 8
  %in_block = alloca %struct.in_block_s*, align 8
  %compaction = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %comp_block_head = alloca %struct.in_block_s*, align 8
  %comp_block = alloca %struct.in_block_s*, align 8
  %psc = alloca %struct.pscompstate, align 8
  %ibf = alloca %struct.in_block_file, align 8
  %ulen = alloca i32, align 4
  %block_len = alloca i32, align 4
  store i8* %initfile, i8** %initfile.addr, align 8, !tbaa !1
  store i8* %gconfig_h, i8** %gconfig_h.addr, align 8, !tbaa !1
  store i8* %os_prefix, i8** %os_prefix.addr, align 8, !tbaa !1
  store i8* %rom_prefix, i8** %rom_prefix.addr, align 8, !tbaa !1
  store i32 %compression, i32* %compression.addr, align 4, !tbaa !5
  store i32* %inode_count, i32** %inode_count.addr, align 8, !tbaa !1
  store i32* %totlen, i32** %totlen.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %block to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.romfs_inode_s** %node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %ubuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i8** %cbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i8** %prefixed_path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %rom_filename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %clen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct._IO_FILE** %config to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.in_block_s** %in_block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct.in_block_s* null, %struct.in_block_s** %in_block, align 8, !tbaa !1
  %12 = bitcast i32* %compaction to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 1, i32* %compaction, align 4, !tbaa !5
  %call = call noalias i8* @malloc(i64 16384) #8
  store i8* %call, i8** %ubuf, align 8, !tbaa !1
  %call1 = call noalias i8* @malloc(i64 16412) #8
  store i8* %call1, i8** %cbuf, align 8, !tbaa !1
  %call2 = call noalias i8* @malloc(i64 1024) #8
  store i8* %call2, i8** %prefixed_path, align 8, !tbaa !1
  %call3 = call noalias i8* @malloc(i64 1024) #8
  store i8* %call3, i8** %rom_filename, align 8, !tbaa !1
  %13 = load i8*, i8** %ubuf, align 8, !tbaa !1
  %cmp = icmp eq i8* %13, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %14 = load i8*, i8** %cbuf, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %14, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %15 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  %cmp6 = icmp eq i8* %15, null
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.5
  %16 = load i8*, i8** %rom_filename, align 8, !tbaa !1
  %cmp8 = icmp eq i8* %16, null
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false.5, %lor.lhs.false, %entry
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0)) #9
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.7
  %17 = load i8*, i8** %os_prefix.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %initfile.addr, align 8, !tbaa !1
  %19 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  call void @prefix_add(i8* %17, i8* %18, i8* %19) #9
  %20 = load i8*, i8** %rom_prefix.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %initfile.addr, align 8, !tbaa !1
  %22 = load i8*, i8** %rom_filename, align 8, !tbaa !1
  call void @prefix_add(i8* %20, i8* %21, i8* %22) #9
  %23 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  %call10 = call %struct._IO_FILE* @fopen64(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #9
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %in, align 8, !tbaa !1
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %cmp11 = icmp eq %struct._IO_FILE* %24, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %25 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0), i8* %25) #9
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end
  %26 = load i8*, i8** %gconfig_h.addr, align 8, !tbaa !1
  %call15 = call %struct._IO_FILE* @fopen64(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0)) #9
  store %struct._IO_FILE* %call15, %struct._IO_FILE** %config, align 8, !tbaa !1
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %config, align 8, !tbaa !1
  %cmp16 = icmp eq %struct._IO_FILE* %27, null
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  %28 = load i8*, i8** %gconfig_h.addr, align 8, !tbaa !1
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0), i8* %28) #9
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %call19 = call i32 @fclose(%struct._IO_FILE* %29) #9
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.14
  %call21 = call i8* @memset(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @linebuf, i32 0, i32 0), i32 0, i64 2048) #8
  %call22 = call noalias i8* @calloc(i64 1, i64 40) #8
  %30 = bitcast i8* %call22 to %struct.romfs_inode_s*
  store %struct.romfs_inode_s* %30, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %31 = load i8*, i8** %rom_filename, align 8, !tbaa !1
  %32 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %32, i32 0, i32 2
  store i8* %31, i8** %name, align 8, !tbaa !22
  %33 = load i8*, i8** %os_prefix.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %initfile.addr, align 8, !tbaa !1
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %config, align 8, !tbaa !1
  call void @merge_to_ps(i8* %33, i8* %34, %struct._IO_FILE* %35, %struct._IO_FILE* %36) #9
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %call23 = call i32 @fclose(%struct._IO_FILE* %37) #9
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %config, align 8, !tbaa !1
  %call24 = call i32 @fclose(%struct._IO_FILE* %38) #9
  %39 = load i32, i32* %compaction, align 4, !tbaa !5
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %if.then.25, label %if.end.43

if.then.25:                                       ; preds = %if.end.20
  %40 = bitcast %struct.in_block_s** %comp_block_head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = bitcast %struct.in_block_s** %comp_block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = bitcast %struct.pscompstate* %psc to i8*
  call void @llvm.lifetime.start(i64 104, i8* %42) #1
  %43 = bitcast %struct.in_block_file* %ibf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %43) #1
  %44 = bitcast i32* %ulen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load %struct.in_block_s*, %struct.in_block_s** @in_block_head, align 8, !tbaa !1
  %block26 = getelementptr inbounds %struct.in_block_file, %struct.in_block_file* %ibf, i32 0, i32 0
  store %struct.in_block_s* %45, %struct.in_block_s** %block26, align 8, !tbaa !49
  %pos = getelementptr inbounds %struct.in_block_file, %struct.in_block_file* %ibf, i32 0, i32 1
  store i32 0, i32* %pos, align 4, !tbaa !51
  %eof = getelementptr inbounds %struct.in_block_file, %struct.in_block_file* %ibf, i32 0, i32 2
  store i32 0, i32* %eof, align 4, !tbaa !52
  %call27 = call noalias i8* @malloc(i64 16392) #8
  %46 = bitcast i8* %call27 to %struct.in_block_s*
  store %struct.in_block_s* %46, %struct.in_block_s** %comp_block, align 8, !tbaa !1
  %47 = load %struct.in_block_s*, %struct.in_block_s** %comp_block, align 8, !tbaa !1
  store %struct.in_block_s* %47, %struct.in_block_s** %comp_block_head, align 8, !tbaa !1
  %48 = bitcast %struct.in_block_file* %ibf to i8*
  call void @pscompact_start(%struct.pscompstate* %psc, i32 (i8*)* bitcast (i32 (%struct.in_block_file*)* @ib_getc to i32 (i8*)*), void (i32, i8*)* bitcast (void (i32, %struct.in_block_file*)* @ib_ungetc to void (i32, i8*)*), i32 (i8*)* bitcast (i32 (%struct.in_block_file*)* @ib_feof to i32 (i8*)*), i8* %48, i32 0, i32 0, i32 1) #9
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.25
  %49 = load %struct.in_block_s*, %struct.in_block_s** %comp_block, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %49, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %data, i32 0, i32 0
  %call28 = call i64 @pscompact_getcompactedblock(%struct.pscompstate* %psc, i8* %arraydecay, i64 16384) #9
  %conv = trunc i64 %call28 to i32
  store i32 %conv, i32* %ulen, align 4, !tbaa !5
  %50 = load %struct.in_block_s*, %struct.in_block_s** %comp_block, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %50, i32 0, i32 0
  store %struct.in_block_s* null, %struct.in_block_s** %next, align 8, !tbaa !53
  %51 = load i32, i32* %ulen, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %51, 16384
  br i1 %cmp29, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %do.body
  %call32 = call noalias i8* @malloc(i64 16392) #8
  %52 = bitcast i8* %call32 to %struct.in_block_s*
  %53 = load %struct.in_block_s*, %struct.in_block_s** %comp_block, align 8, !tbaa !1
  %next33 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %53, i32 0, i32 0
  store %struct.in_block_s* %52, %struct.in_block_s** %next33, align 8, !tbaa !53
  %54 = load %struct.in_block_s*, %struct.in_block_s** %comp_block, align 8, !tbaa !1
  %next34 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %54, i32 0, i32 0
  %55 = load %struct.in_block_s*, %struct.in_block_s** %next34, align 8, !tbaa !53
  store %struct.in_block_s* %55, %struct.in_block_s** %comp_block, align 8, !tbaa !1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.35
  %56 = load i32, i32* %ulen, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %56, 16384
  br i1 %cmp36, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call void @pscompact_end(%struct.pscompstate* %psc) #9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %57 = load %struct.in_block_s*, %struct.in_block_s** @in_block_head, align 8, !tbaa !1
  %cmp38 = icmp ne %struct.in_block_s* %57, null
  br i1 %cmp38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %58 = load %struct.in_block_s*, %struct.in_block_s** @in_block_head, align 8, !tbaa !1
  %next40 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %58, i32 0, i32 0
  %59 = load %struct.in_block_s*, %struct.in_block_s** %next40, align 8, !tbaa !53
  store %struct.in_block_s* %59, %struct.in_block_s** %in_block, align 8, !tbaa !1
  %60 = load %struct.in_block_s*, %struct.in_block_s** @in_block_head, align 8, !tbaa !1
  %61 = bitcast %struct.in_block_s* %60 to i8*
  call void @free(i8* %61) #8
  %62 = load %struct.in_block_s*, %struct.in_block_s** %in_block, align 8, !tbaa !1
  store %struct.in_block_s* %62, %struct.in_block_s** @in_block_head, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %63 = load %struct.in_block_s*, %struct.in_block_s** %comp_block_head, align 8, !tbaa !1
  store %struct.in_block_s* %63, %struct.in_block_s** @in_block_head, align 8, !tbaa !1
  %64 = load %struct.in_block_s*, %struct.in_block_s** %comp_block, align 8, !tbaa !1
  store %struct.in_block_s* %64, %struct.in_block_s** @in_block_tail, align 8, !tbaa !1
  %65 = load %struct.in_block_s*, %struct.in_block_s** @in_block_tail, align 8, !tbaa !1
  %data41 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %65, i32 0, i32 1
  %arraydecay42 = getelementptr inbounds [16384 x i8], [16384 x i8]* %data41, i32 0, i32 0
  %66 = load i32, i32* %ulen, align 4, !tbaa !5
  %idx.ext = sext i32 %66 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay42, i64 %idx.ext
  store i8* %add.ptr, i8** @curr_block_p, align 8, !tbaa !1
  %67 = bitcast i32* %ulen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast %struct.in_block_file* %ibf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %68) #1
  %69 = bitcast %struct.pscompstate* %psc to i8*
  call void @llvm.lifetime.end(i64 104, i8* %69) #1
  %70 = bitcast %struct.in_block_s** %comp_block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.in_block_s** %comp_block_head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  br label %if.end.43

if.end.43:                                        ; preds = %while.end, %if.end.20
  %72 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %72, i32 0, i32 1
  store i64 0, i64* %length, align 8, !tbaa !21
  %73 = load %struct.in_block_s*, %struct.in_block_s** @in_block_head, align 8, !tbaa !1
  store %struct.in_block_s* %73, %struct.in_block_s** %in_block, align 8, !tbaa !1
  br label %while.cond.44

while.cond.44:                                    ; preds = %cond.end, %if.end.43
  %74 = load %struct.in_block_s*, %struct.in_block_s** %in_block, align 8, !tbaa !1
  %cmp45 = icmp ne %struct.in_block_s* %74, null
  br i1 %cmp45, label %while.body.47, label %while.end.54

while.body.47:                                    ; preds = %while.cond.44
  %75 = load %struct.in_block_s*, %struct.in_block_s** %in_block, align 8, !tbaa !1
  %76 = load %struct.in_block_s*, %struct.in_block_s** @in_block_tail, align 8, !tbaa !1
  %cmp48 = icmp ne %struct.in_block_s* %75, %76
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.47
  br label %cond.end

cond.false:                                       ; preds = %while.body.47
  %77 = load i8*, i8** @curr_block_p, align 8, !tbaa !1
  %78 = load %struct.in_block_s*, %struct.in_block_s** %in_block, align 8, !tbaa !1
  %data50 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %78, i32 0, i32 1
  %arraydecay51 = getelementptr inbounds [16384 x i8], [16384 x i8]* %data50, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %77 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay51 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 16384, %cond.true ], [ %sub.ptr.sub, %cond.false ]
  %79 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %length52 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %79, i32 0, i32 1
  %80 = load i64, i64* %length52, align 8, !tbaa !21
  %add = add i64 %80, %cond
  store i64 %add, i64* %length52, align 8, !tbaa !21
  %81 = load %struct.in_block_s*, %struct.in_block_s** %in_block, align 8, !tbaa !1
  %next53 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %81, i32 0, i32 0
  %82 = load %struct.in_block_s*, %struct.in_block_s** %next53, align 8, !tbaa !53
  store %struct.in_block_s* %82, %struct.in_block_s** %in_block, align 8, !tbaa !1
  br label %while.cond.44

while.end.54:                                     ; preds = %while.cond.44
  %83 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %length55 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %83, i32 0, i32 1
  %84 = load i64, i64* %length55, align 8, !tbaa !21
  %85 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %disc_length = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %85, i32 0, i32 0
  store i64 %84, i64* %disc_length, align 8, !tbaa !17
  %86 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %length56 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %86, i32 0, i32 1
  %87 = load i64, i64* %length56, align 8, !tbaa !21
  %add57 = add i64 %87, 16384
  %sub = sub i64 %add57, 1
  %div = udiv i64 %sub, 16384
  %add58 = add i64 %div, 1
  %conv59 = trunc i64 %add58 to i32
  store i32 %conv59, i32* %blocks, align 4, !tbaa !5
  %88 = load i32, i32* %blocks, align 4, !tbaa !5
  %conv60 = sext i32 %88 to i64
  %call61 = call noalias i8* @calloc(i64 %conv60, i64 8) #8
  %89 = bitcast i8* %call61 to i64*
  %90 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %data_lengths = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %90, i32 0, i32 3
  store i64* %89, i64** %data_lengths, align 8, !tbaa !20
  %91 = load i32, i32* %blocks, align 4, !tbaa !5
  %conv62 = sext i32 %91 to i64
  %call63 = call noalias i8* @calloc(i64 %conv62, i64 8) #8
  %92 = bitcast i8* %call63 to i8**
  %93 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %data64 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %93, i32 0, i32 4
  store i8** %92, i8*** %data64, align 8, !tbaa !19
  store i32 0, i32* %block, align 4, !tbaa !5
  %94 = load %struct.in_block_s*, %struct.in_block_s** @in_block_head, align 8, !tbaa !1
  store %struct.in_block_s* %94, %struct.in_block_s** %in_block, align 8, !tbaa !1
  br label %while.cond.65

while.cond.65:                                    ; preds = %if.end.97, %while.end.54
  %95 = load %struct.in_block_s*, %struct.in_block_s** %in_block, align 8, !tbaa !1
  %cmp66 = icmp ne %struct.in_block_s* %95, null
  br i1 %cmp66, label %while.body.68, label %while.end.108

while.body.68:                                    ; preds = %while.cond.65
  %96 = bitcast i32* %block_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  %97 = load %struct.in_block_s*, %struct.in_block_s** %in_block, align 8, !tbaa !1
  %98 = load %struct.in_block_s*, %struct.in_block_s** @in_block_tail, align 8, !tbaa !1
  %cmp69 = icmp ne %struct.in_block_s* %97, %98
  br i1 %cmp69, label %cond.true.71, label %cond.false.72

cond.true.71:                                     ; preds = %while.body.68
  br label %cond.end.78

cond.false.72:                                    ; preds = %while.body.68
  %99 = load i8*, i8** @curr_block_p, align 8, !tbaa !1
  %100 = load %struct.in_block_s*, %struct.in_block_s** %in_block, align 8, !tbaa !1
  %data73 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %100, i32 0, i32 1
  %arraydecay74 = getelementptr inbounds [16384 x i8], [16384 x i8]* %data73, i32 0, i32 0
  %sub.ptr.lhs.cast75 = ptrtoint i8* %99 to i64
  %sub.ptr.rhs.cast76 = ptrtoint i8* %arraydecay74 to i64
  %sub.ptr.sub77 = sub i64 %sub.ptr.lhs.cast75, %sub.ptr.rhs.cast76
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.72, %cond.true.71
  %cond79 = phi i64 [ 16384, %cond.true.71 ], [ %sub.ptr.sub77, %cond.false.72 ]
  %conv80 = trunc i64 %cond79 to i32
  store i32 %conv80, i32* %block_len, align 4, !tbaa !5
  store i64 16412, i64* %clen, align 8, !tbaa !7
  %101 = load i32, i32* %compression.addr, align 4, !tbaa !5
  %tobool81 = icmp ne i32 %101, 0
  br i1 %tobool81, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %cond.end.78
  %102 = load i8*, i8** %cbuf, align 8, !tbaa !1
  %103 = load %struct.in_block_s*, %struct.in_block_s** %in_block, align 8, !tbaa !1
  %data83 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %103, i32 0, i32 1
  %arraydecay84 = getelementptr inbounds [16384 x i8], [16384 x i8]* %data83, i32 0, i32 0
  %104 = load i32, i32* %block_len, align 4, !tbaa !5
  %conv85 = sext i32 %104 to i64
  %call86 = call i32 @compress(i8* %102, i64* %clen, i8* %arraydecay84, i64 %conv85) #9
  store i32 %call86, i32* %ret, align 4, !tbaa !5
  %105 = load i32, i32* %ret, align 4, !tbaa !5
  %cmp87 = icmp ne i32 %105, 0
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.then.82
  %call90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.end.91:                                        ; preds = %if.then.82
  br label %if.end.97

if.else:                                          ; preds = %cond.end.78
  %106 = load i8*, i8** %cbuf, align 8, !tbaa !1
  %107 = load %struct.in_block_s*, %struct.in_block_s** %in_block, align 8, !tbaa !1
  %data92 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %107, i32 0, i32 1
  %arraydecay93 = getelementptr inbounds [16384 x i8], [16384 x i8]* %data92, i32 0, i32 0
  %108 = load i32, i32* %block_len, align 4, !tbaa !5
  %conv94 = sext i32 %108 to i64
  %call95 = call i8* @memcpy(i8* %106, i8* %arraydecay93, i64 %conv94) #8
  %109 = load i32, i32* %block_len, align 4, !tbaa !5
  %conv96 = sext i32 %109 to i64
  store i64 %conv96, i64* %clen, align 8, !tbaa !7
  br label %if.end.97

if.end.97:                                        ; preds = %if.else, %if.end.91
  %110 = load i64, i64* %clen, align 8, !tbaa !7
  %111 = load i32, i32* %block, align 4, !tbaa !5
  %idxprom = sext i32 %111 to i64
  %112 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %data_lengths98 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %112, i32 0, i32 3
  %113 = load i64*, i64** %data_lengths98, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds i64, i64* %113, i64 %idxprom
  store i64 %110, i64* %arrayidx, align 8, !tbaa !7
  %114 = load i64, i64* %clen, align 8, !tbaa !7
  %call99 = call noalias i8* @malloc(i64 %114) #8
  %115 = load i32, i32* %block, align 4, !tbaa !5
  %idxprom100 = sext i32 %115 to i64
  %116 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %data101 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %116, i32 0, i32 4
  %117 = load i8**, i8*** %data101, align 8, !tbaa !19
  %arrayidx102 = getelementptr inbounds i8*, i8** %117, i64 %idxprom100
  store i8* %call99, i8** %arrayidx102, align 8, !tbaa !1
  %118 = load i32, i32* %block, align 4, !tbaa !5
  %idxprom103 = sext i32 %118 to i64
  %119 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %data104 = getelementptr inbounds %struct.romfs_inode_s, %struct.romfs_inode_s* %119, i32 0, i32 4
  %120 = load i8**, i8*** %data104, align 8, !tbaa !19
  %arrayidx105 = getelementptr inbounds i8*, i8** %120, i64 %idxprom103
  %121 = load i8*, i8** %arrayidx105, align 8, !tbaa !1
  %122 = load i8*, i8** %cbuf, align 8, !tbaa !1
  %123 = load i64, i64* %clen, align 8, !tbaa !7
  %call106 = call i8* @memcpy(i8* %121, i8* %122, i64 %123) #8
  %124 = load i32, i32* %block, align 4, !tbaa !5
  %inc = add nsw i32 %124, 1
  store i32 %inc, i32* %block, align 4, !tbaa !5
  %125 = load %struct.in_block_s*, %struct.in_block_s** %in_block, align 8, !tbaa !1
  %next107 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %125, i32 0, i32 0
  %126 = load %struct.in_block_s*, %struct.in_block_s** %next107, align 8, !tbaa !53
  store %struct.in_block_s* %126, %struct.in_block_s** %in_block, align 8, !tbaa !1
  %127 = bitcast i32* %block_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  br label %while.cond.65

while.end.108:                                    ; preds = %while.cond.65
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !tbaa !1
  %129 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %130 = load i32, i32* %compression.addr, align 4, !tbaa !5
  %131 = load i32*, i32** %inode_count.addr, align 8, !tbaa !1
  %132 = load i32, i32* %131, align 4, !tbaa !5
  %133 = load i32*, i32** %totlen.addr, align 8, !tbaa !1
  call void @inode_write(%struct._IO_FILE* %128, %struct.romfs_inode_s* %129, i32 %130, i32 %132, i32* %133) #9
  %134 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  call void @inode_clear(%struct.romfs_inode_s* %134) #9
  %135 = load %struct.romfs_inode_s*, %struct.romfs_inode_s** %node, align 8, !tbaa !1
  %136 = bitcast %struct.romfs_inode_s* %135 to i8*
  call void @free(i8* %136) #8
  %137 = load i32*, i32** %inode_count.addr, align 8, !tbaa !1
  %138 = load i32, i32* %137, align 4, !tbaa !5
  %inc109 = add nsw i32 %138, 1
  store i32 %inc109, i32* %137, align 4, !tbaa !5
  %139 = load i8*, i8** %cbuf, align 8, !tbaa !1
  call void @free(i8* %139) #8
  %140 = load i8*, i8** %ubuf, align 8, !tbaa !1
  call void @free(i8* %140) #8
  %141 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  call void @free(i8* %141) #8
  %142 = load i8*, i8** %rom_filename, align 8, !tbaa !1
  call void @free(i8* %142) #8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.108, %if.then.17, %if.then.12, %if.then
  %143 = bitcast i32* %compaction to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast %struct.in_block_s** %in_block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast %struct._IO_FILE** %config to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast i64* %clen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i8** %rom_filename to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i8** %prefixed_path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast i8** %cbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast i8** %ubuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast %struct.romfs_inode_s** %node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast i32* %blocks to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i32* %block to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = load i32, i32* %retval
  ret i32 %156
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define void @merge_to_ps(i8* %os_prefix, i8* %inname, %struct._IO_FILE* %in, %struct._IO_FILE* %config) #0 {
entry:
  %os_prefix.addr = alloca i8*, align 8
  %inname.addr = alloca i8*, align 8
  %in.addr = alloca %struct._IO_FILE*, align 8
  %config.addr = alloca %struct._IO_FILE*, align 8
  %line = alloca [1025 x i8], align 16
  store i8* %os_prefix, i8** %os_prefix.addr, align 8, !tbaa !1
  store i8* %inname, i8** %inname.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %config, %struct._IO_FILE** %config.addr, align 8, !tbaa !1
  %0 = bitcast [1025 x i8]* %line to i8*
  call void @llvm.lifetime.start(i64 1025, i8* %0) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [1025 x i8], [1025 x i8]* %line, i32 0, i32 0
  %call = call i32 @rl(%struct._IO_FILE* %1, i8* %arraydecay, i32 1024) #9
  %arrayidx = getelementptr inbounds [1025 x i8], [1025 x i8]* %line, i32 0, i64 0
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [1025 x i8], [1025 x i8]* %line, i32 0, i32 0
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @linebuf, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay1) #8
  call void @wl(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @linebuf, i32 0, i32 0)) #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i8*, i8** %os_prefix.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %inname.addr, align 8, !tbaa !1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %config.addr, align 8, !tbaa !1
  call void @mergefile(i8* %3, i8* %4, %struct._IO_FILE* %5, %struct._IO_FILE* %6, i32 0) #9
  %7 = bitcast [1025 x i8]* %line to i8*
  call void @llvm.lifetime.end(i64 1025, i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ib_getc(%struct.in_block_file* %ibf) #0 {
entry:
  %retval = alloca i32, align 4
  %ibf.addr = alloca %struct.in_block_file*, align 8
  store %struct.in_block_file* %ibf, %struct.in_block_file** %ibf.addr, align 8, !tbaa !1
  %0 = load %struct.in_block_file*, %struct.in_block_file** %ibf.addr, align 8, !tbaa !1
  %block = getelementptr inbounds %struct.in_block_file, %struct.in_block_file* %0, i32 0, i32 0
  %1 = load %struct.in_block_s*, %struct.in_block_s** %block, align 8, !tbaa !49
  %2 = load %struct.in_block_s*, %struct.in_block_s** @in_block_tail, align 8, !tbaa !1
  %cmp = icmp eq %struct.in_block_s* %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.in_block_file*, %struct.in_block_file** %ibf.addr, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.in_block_file, %struct.in_block_file* %3, i32 0, i32 1
  %4 = load i32, i32* %pos, align 4, !tbaa !51
  %conv = sext i32 %4 to i64
  %5 = load i8*, i8** @curr_block_p, align 8, !tbaa !1
  %6 = load %struct.in_block_s*, %struct.in_block_s** @in_block_tail, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %6, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %data, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp eq i64 %conv, %sub.ptr.sub
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.in_block_file*, %struct.in_block_file** %ibf.addr, align 8, !tbaa !1
  %eof = getelementptr inbounds %struct.in_block_file, %struct.in_block_file* %7, i32 0, i32 2
  store i32 1, i32* %eof, align 4, !tbaa !52
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load %struct.in_block_file*, %struct.in_block_file** %ibf.addr, align 8, !tbaa !1
  %pos3 = getelementptr inbounds %struct.in_block_file, %struct.in_block_file* %8, i32 0, i32 1
  %9 = load i32, i32* %pos3, align 4, !tbaa !51
  %cmp4 = icmp eq i32 %9, 16384
  br i1 %cmp4, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %10 = load %struct.in_block_file*, %struct.in_block_file** %ibf.addr, align 8, !tbaa !1
  %block7 = getelementptr inbounds %struct.in_block_file, %struct.in_block_file* %10, i32 0, i32 0
  %11 = load %struct.in_block_s*, %struct.in_block_s** %block7, align 8, !tbaa !49
  %next = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %11, i32 0, i32 0
  %12 = load %struct.in_block_s*, %struct.in_block_s** %next, align 8, !tbaa !53
  %13 = load %struct.in_block_file*, %struct.in_block_file** %ibf.addr, align 8, !tbaa !1
  %block8 = getelementptr inbounds %struct.in_block_file, %struct.in_block_file* %13, i32 0, i32 0
  store %struct.in_block_s* %12, %struct.in_block_s** %block8, align 8, !tbaa !49
  %14 = load %struct.in_block_file*, %struct.in_block_file** %ibf.addr, align 8, !tbaa !1
  %pos9 = getelementptr inbounds %struct.in_block_file, %struct.in_block_file* %14, i32 0, i32 1
  store i32 0, i32* %pos9, align 4, !tbaa !51
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  %15 = load %struct.in_block_file*, %struct.in_block_file** %ibf.addr, align 8, !tbaa !1
  %pos11 = getelementptr inbounds %struct.in_block_file, %struct.in_block_file* %15, i32 0, i32 1
  %16 = load i32, i32* %pos11, align 4, !tbaa !51
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %pos11, align 4, !tbaa !51
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.in_block_file*, %struct.in_block_file** %ibf.addr, align 8, !tbaa !1
  %block12 = getelementptr inbounds %struct.in_block_file, %struct.in_block_file* %17, i32 0, i32 0
  %18 = load %struct.in_block_s*, %struct.in_block_s** %block12, align 8, !tbaa !49
  %data13 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %18, i32 0, i32 1
  %arrayidx = getelementptr inbounds [16384 x i8], [16384 x i8]* %data13, i32 0, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv14 = zext i8 %19 to i32
  store i32 %conv14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @ib_ungetc(i32 %c, %struct.in_block_file* %ibf) #0 {
entry:
  %c.addr = alloca i32, align 4
  %ibf.addr = alloca %struct.in_block_file*, align 8
  store i32 %c, i32* %c.addr, align 4, !tbaa !5
  store %struct.in_block_file* %ibf, %struct.in_block_file** %ibf.addr, align 8, !tbaa !1
  %0 = load %struct.in_block_file*, %struct.in_block_file** %ibf.addr, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.in_block_file, %struct.in_block_file* %0, i32 0, i32 1
  %1 = load i32, i32* %pos, align 4, !tbaa !51
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %pos, align 4, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ib_feof(%struct.in_block_file* %ibf) #0 {
entry:
  %ibf.addr = alloca %struct.in_block_file*, align 8
  store %struct.in_block_file* %ibf, %struct.in_block_file** %ibf.addr, align 8, !tbaa !1
  %0 = load %struct.in_block_file*, %struct.in_block_file** %ibf.addr, align 8, !tbaa !1
  %eof = getelementptr inbounds %struct.in_block_file, %struct.in_block_file* %0, i32 0, i32 2
  %1 = load i32, i32* %eof, align 4, !tbaa !52
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @flush_line_buf(i32 %len) #0 {
entry:
  %len.addr = alloca i32, align 4
  %remaining_len = alloca i32, align 4
  %move_len = alloca i32, align 4
  %line_offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %remaining_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %len.addr, align 4, !tbaa !5
  store i32 %1, i32* %remaining_len, align 4, !tbaa !5
  %2 = bitcast i32* %move_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %line_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %line_offset, align 4, !tbaa !5
  %4 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %4, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %len.addr, align 4, !tbaa !5
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.31, i32 0, i32 0), i32 %5, i32 1024) #9
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.in_block_s*, %struct.in_block_s** @in_block_tail, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.in_block_s* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call3 = call noalias i8* @calloc(i64 1, i64 16392) #8
  %7 = bitcast i8* %call3 to %struct.in_block_s*
  store %struct.in_block_s* %7, %struct.in_block_s** @in_block_tail, align 8, !tbaa !1
  store %struct.in_block_s* %7, %struct.in_block_s** @in_block_head, align 8, !tbaa !1
  %8 = load %struct.in_block_s*, %struct.in_block_s** @in_block_tail, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %8, i32 0, i32 0
  store %struct.in_block_s* null, %struct.in_block_s** %next, align 8, !tbaa !53
  %9 = load %struct.in_block_s*, %struct.in_block_s** @in_block_head, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %9, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %data, i32 0, i32 0
  store i8* %arraydecay, i8** @curr_block_p, align 8, !tbaa !1
  %10 = load i8*, i8** @curr_block_p, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 16384
  store i8* %add.ptr, i8** @curr_block_end, align 8, !tbaa !1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.4
  %11 = load i32, i32* %remaining_len, align 4, !tbaa !5
  %conv = sext i32 %11 to i64
  %12 = load i8*, i8** @curr_block_end, align 8, !tbaa !1
  %13 = load i8*, i8** @curr_block_p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp5 = icmp slt i64 %conv, %sub.ptr.sub
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %14 = load i32, i32* %remaining_len, align 4, !tbaa !5
  %conv7 = sext i32 %14 to i64
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %15 = load i8*, i8** @curr_block_end, align 8, !tbaa !1
  %16 = load i8*, i8** @curr_block_p, align 8, !tbaa !1
  %sub.ptr.lhs.cast8 = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast9 = ptrtoint i8* %16 to i64
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv7, %cond.true ], [ %sub.ptr.sub10, %cond.false ]
  %conv11 = trunc i64 %cond to i32
  store i32 %conv11, i32* %move_len, align 4, !tbaa !5
  %17 = load i8*, i8** @curr_block_p, align 8, !tbaa !1
  %18 = load i32, i32* %line_offset, align 4, !tbaa !5
  %idx.ext = sext i32 %18 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @linebuf, i32 0, i32 0), i64 %idx.ext
  %19 = load i32, i32* %move_len, align 4, !tbaa !5
  %conv13 = sext i32 %19 to i64
  %call14 = call i8* @memcpy(i8* %17, i8* %add.ptr12, i64 %conv13) #8
  %20 = load i32, i32* %move_len, align 4, !tbaa !5
  %21 = load i8*, i8** @curr_block_p, align 8, !tbaa !1
  %idx.ext15 = sext i32 %20 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %21, i64 %idx.ext15
  store i8* %add.ptr16, i8** @curr_block_p, align 8, !tbaa !1
  %22 = load i32, i32* %move_len, align 4, !tbaa !5
  %23 = load i32, i32* %line_offset, align 4, !tbaa !5
  %add = add nsw i32 %23, %22
  store i32 %add, i32* %line_offset, align 4, !tbaa !5
  %24 = load i8*, i8** @curr_block_p, align 8, !tbaa !1
  %25 = load i8*, i8** @curr_block_end, align 8, !tbaa !1
  %cmp17 = icmp eq i8* %24, %25
  br i1 %cmp17, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %cond.end
  %call20 = call noalias i8* @calloc(i64 1, i64 16392) #8
  %26 = bitcast i8* %call20 to %struct.in_block_s*
  %27 = load %struct.in_block_s*, %struct.in_block_s** @in_block_tail, align 8, !tbaa !1
  %next21 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %27, i32 0, i32 0
  store %struct.in_block_s* %26, %struct.in_block_s** %next21, align 8, !tbaa !53
  %28 = load %struct.in_block_s*, %struct.in_block_s** @in_block_tail, align 8, !tbaa !1
  %next22 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %28, i32 0, i32 0
  %29 = load %struct.in_block_s*, %struct.in_block_s** %next22, align 8, !tbaa !53
  store %struct.in_block_s* %29, %struct.in_block_s** @in_block_tail, align 8, !tbaa !1
  %30 = load %struct.in_block_s*, %struct.in_block_s** @in_block_tail, align 8, !tbaa !1
  %next23 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %30, i32 0, i32 0
  store %struct.in_block_s* null, %struct.in_block_s** %next23, align 8, !tbaa !53
  %31 = load %struct.in_block_s*, %struct.in_block_s** @in_block_tail, align 8, !tbaa !1
  %data24 = getelementptr inbounds %struct.in_block_s, %struct.in_block_s* %31, i32 0, i32 1
  %arraydecay25 = getelementptr inbounds [16384 x i8], [16384 x i8]* %data24, i32 0, i32 0
  store i8* %arraydecay25, i8** @curr_block_p, align 8, !tbaa !1
  %32 = load i8*, i8** @curr_block_p, align 8, !tbaa !1
  %add.ptr26 = getelementptr inbounds i8, i8* %32, i64 16384
  store i8* %add.ptr26, i8** @curr_block_end, align 8, !tbaa !1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.19, %cond.end
  %33 = load i32, i32* %remaining_len, align 4, !tbaa !5
  %34 = load i32, i32* %move_len, align 4, !tbaa !5
  %sub = sub nsw i32 %33, %34
  %cmp28 = icmp sgt i32 0, %sub
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %if.end.27
  br label %cond.end.33

cond.false.31:                                    ; preds = %if.end.27
  %35 = load i32, i32* %remaining_len, align 4, !tbaa !5
  %36 = load i32, i32* %move_len, align 4, !tbaa !5
  %sub32 = sub nsw i32 %35, %36
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.31, %cond.true.30
  %cond34 = phi i32 [ 0, %cond.true.30 ], [ %sub32, %cond.false.31 ]
  store i32 %cond34, i32* %remaining_len, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %cond.end.33
  %37 = load i32, i32* %remaining_len, align 4, !tbaa !5
  %cmp35 = icmp sgt i32 %37, 0
  br i1 %cmp35, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %call37 = call i8* @memset(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @linebuf, i32 0, i32 0), i32 0, i64 2048) #8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %38 = bitcast i32* %line_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %move_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %remaining_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
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

; Function Attrs: nounwind uwtable
define i32 @rl(%struct._IO_FILE* %in, i8* %str, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca %struct._IO_FILE*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  %1 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  %call = call i32 @_IO_getc(%struct._IO_FILE* %2) #9
  store i32 %call, i32* %c, align 4, !tbaa !5
  %3 = load i32, i32* %c, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.14, %if.end
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %5 = load i32, i32* %len.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 1
  %cmp1 = icmp slt i32 %4, %sub
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %c, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %7 = load i32, i32* %c, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %7, 10
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end.5:                                         ; preds = %lor.lhs.false
  %8 = load i32, i32* %c, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %8, 13
  br i1 %cmp6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end.5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  %call8 = call i32 @_IO_getc(%struct._IO_FILE* %9) #9
  store i32 %call8, i32* %c, align 4, !tbaa !5
  %10 = load i32, i32* %c, align 4, !tbaa !5
  %cmp9 = icmp ne i32 %10, 10
  br i1 %cmp9, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.then.7
  %11 = load i32, i32* %c, align 4, !tbaa !5
  %cmp10 = icmp sge i32 %11, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %land.lhs.true
  %12 = load i32, i32* %c, align 4, !tbaa !5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  %call12 = call i32 @ungetc(i32 %12, %struct._IO_FILE* %13) #9
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %land.lhs.true, %if.then.7
  br label %while.end

if.end.14:                                        ; preds = %if.end.5
  %14 = load i32, i32* %c, align 4, !tbaa !5
  %conv = trunc i32 %14 to i8
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %16 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  %call15 = call i32 @_IO_getc(%struct._IO_FILE* %17) #9
  store i32 %call15, i32* %c, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %if.end.13, %if.then.4, %while.cond
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %18 to i64
  %19 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8, i8* %19, i64 %idxprom16
  store i8 0, i8* %arrayidx17, align 1, !tbaa !11
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %20 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @_IO_getc(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @wsc(i8* %str, i32 %len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %n, align 4, !tbaa !5
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %2, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @exit(i32 1) #10
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %4 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv = zext i8 %8 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !5
  %9 = load i32, i32* %c, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %9, 32
  br i1 %cmp2, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i32, i32* %c, align 4, !tbaa !5
  %cmp4 = icmp sge i32 %10, 127
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %for.body
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %11 = load i32, i32* %c, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %11, 39
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false
  %12 = load i32, i32* %c, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %12, 92
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false
  %13 = phi i1 [ true, %cond.false ], [ %cmp8, %lor.rhs ]
  %cond = select i1 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true
  %cond10 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), %cond.true ], [ %cond, %lor.end ]
  %14 = load i32, i32* %c, align 4, !tbaa !5
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @linebuf, i32 0, i32 0), i8* %cond10, i32 %14) #8
  %call11 = call i64 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @linebuf, i32 0, i32 0)) #11
  %conv12 = trunc i64 %call11 to i32
  call void @flush_line_buf(i32 %conv12) #9
  %15 = load i32, i32* %n, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %n, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %inc, 15
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %cond.end
  store i8 10, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @linebuf, i32 0, i64 0), align 1, !tbaa !11
  call void @flush_line_buf(i32 1) #9
  store i32 0, i32* %n, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %cond.end
  %16 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc17 = add nsw i32 %17, 1
  store i32 %inc17, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %n, align 4, !tbaa !5
  %cmp18 = icmp ne i32 %18, 0
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %for.end
  %call21 = call i64 @strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @linebuf, i32 0, i32 0)) #11
  %conv22 = trunc i64 %call21 to i32
  call void @flush_line_buf(i32 %conv22) #9
  store i8 10, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @linebuf, i32 0, i64 0), align 1, !tbaa !11
  call void @flush_line_buf(i32 1) #9
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %for.end
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @ws(i8* %str, i32 %len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !5
  %0 = load i32, i32* %len.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @exit(i32 1) #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %2 = load i32, i32* %len.addr, align 4, !tbaa !5
  %conv = sext i32 %2 to i64
  %call = call i8* @memcpy(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @linebuf, i32 0, i32 0), i8* %1, i64 %conv) #8
  %3 = load i32, i32* %len.addr, align 4, !tbaa !5
  call void @flush_line_buf(i32 %3) #9
  ret void
}

; Function Attrs: nounwind uwtable
define void @wl(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %1) #11
  %conv = trunc i64 %call to i32
  call void @ws(i8* %0, i32 %conv) #9
  call void @ws(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i32 1) #9
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @doit(i8* %line, i32 %intact) #0 {
entry:
  %retval = alloca i8*, align 8
  %line.addr = alloca i8*, align 8
  %intact.addr = alloca i32, align 4
  %str = alloca i8*, align 8
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %in_string = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i32 %intact, i32* %intact.addr, align 4, !tbaa !5
  %0 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %line.addr, align 8, !tbaa !1
  store i8* %1, i8** %str, align 8, !tbaa !1
  %2 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i8** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %in_string to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %in_string, align 4, !tbaa !5
  %5 = load i32, i32* %intact.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %str, align 8, !tbaa !1
  store i8* %6, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i8*, i8** %str, align 8, !tbaa !1
  %8 = load i8, i8* %7, align 1, !tbaa !11
  %conv = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %9 = load i8*, i8** %str, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !11
  %conv2 = sext i8 %10 to i32
  %cmp3 = icmp eq i32 %conv2, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %11 = phi i1 [ true, %while.cond ], [ %cmp3, %lor.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %12 = load i8*, i8** %str, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %str, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %13 = load i8*, i8** %str, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !11
  %conv5 = sext i8 %14 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %while.end
  %call = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0)) #11
  %cmp10 = icmp ult i64 %call, 4
  br i1 %cmp10, label %cond.true, label %cond.false.56

cond.true:                                        ; preds = %if.end.9
  %15 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.35 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %cond.true
  %call12 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0)) #11
  store i64 %call12, i64* %__s2_len, align 8, !tbaa !7
  %17 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp13 = icmp ult i64 %17, 4
  br i1 %cmp13, label %cond.true.15, label %cond.false

cond.true.15:                                     ; preds = %land.lhs.true
  %18 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i8*, i8** %str, align 8, !tbaa !1
  store i8* %19, i8** %__s1, align 8, !tbaa !1
  %20 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv18 = zext i8 %22 to i32
  %23 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), align 1, !tbaa !11
  %conv19 = zext i8 %23 to i32
  %sub = sub nsw i32 %conv18, %conv19
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %24 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp20 = icmp ugt i64 %24, 0
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.52

land.lhs.true.22:                                 ; preds = %cond.true.15
  %25 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %25, 0
  br i1 %cmp23, label %if.then.25, label %if.end.52

if.then.25:                                       ; preds = %land.lhs.true.22
  %26 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx26, align 1, !tbaa !11
  %conv27 = zext i8 %27 to i32
  %28 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i64 1), align 1, !tbaa !11
  %conv28 = zext i8 %28 to i32
  %sub29 = sub nsw i32 %conv27, %conv28
  store i32 %sub29, i32* %__result, align 4, !tbaa !5
  %29 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp30 = icmp ugt i64 %29, 1
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.51

land.lhs.true.32:                                 ; preds = %if.then.25
  %30 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %30, 0
  br i1 %cmp33, label %if.then.35, label %if.end.51

if.then.35:                                       ; preds = %land.lhs.true.32
  %31 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds i8, i8* %31, i64 2
  %32 = load i8, i8* %arrayidx36, align 1, !tbaa !11
  %conv37 = zext i8 %32 to i32
  %33 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i64 2), align 1, !tbaa !11
  %conv38 = zext i8 %33 to i32
  %sub39 = sub nsw i32 %conv37, %conv38
  store i32 %sub39, i32* %__result, align 4, !tbaa !5
  %34 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp40 = icmp ugt i64 %34, 2
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.50

land.lhs.true.42:                                 ; preds = %if.then.35
  %35 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp43 = icmp eq i32 %35, 0
  br i1 %cmp43, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %land.lhs.true.42
  %36 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %36, i64 3
  %37 = load i8, i8* %arrayidx46, align 1, !tbaa !11
  %conv47 = zext i8 %37 to i32
  %38 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i64 3), align 1, !tbaa !11
  %conv48 = zext i8 %38 to i32
  %sub49 = sub nsw i32 %conv47, %conv48
  store i32 %sub49, i32* %__result, align 4, !tbaa !5
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %land.lhs.true.42, %if.then.35
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %land.lhs.true.32, %if.then.25
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %land.lhs.true.22, %cond.true.15
  %39 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %39, i32* %tmp53, !tbaa !5
  %40 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %tmp53, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %cond.true
  %43 = load i8*, i8** %str, align 8, !tbaa !1
  %call54 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.52
  %cond = phi i32 [ %42, %if.end.52 ], [ %call54, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %44 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = load i32, i32* %tmp, !tbaa !5
  %tobool55 = icmp ne i32 %46, 0
  br i1 %tobool55, label %if.end.60, label %if.then.59

cond.false.56:                                    ; preds = %if.end.9
  %47 = load i8*, i8** %str, align 8, !tbaa !1
  %call57 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i64 4) #11
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %cond.false.56, %cond.end
  %48 = load i8*, i8** %str, align 8, !tbaa !1
  store i8* %48, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %cond.false.56, %cond.end
  %49 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx61, align 1, !tbaa !11
  %conv62 = sext i8 %50 to i32
  %cmp63 = icmp eq i32 %conv62, 37
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.60
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %if.end.60
  %51 = load i8*, i8** %str, align 8, !tbaa !1
  store i8* %51, i8** %from, align 8, !tbaa !1
  store i8* %51, i8** %to, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.66
  %52 = load i8*, i8** %from, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !11
  %54 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %53, i8* %54, align 1, !tbaa !11
  %conv67 = sext i8 %53 to i32
  %cmp68 = icmp ne i32 %conv67, 0
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i8*, i8** %from, align 8, !tbaa !1
  %56 = load i8, i8* %55, align 1, !tbaa !11
  %conv70 = sext i8 %56 to i32
  switch i32 %conv70, label %sw.default [
    i32 37, label %sw.bb
    i32 32, label %sw.bb.74
    i32 9, label %sw.bb.74
    i32 40, label %sw.bb.99
    i32 60, label %sw.bb.99
    i32 47, label %sw.bb.99
    i32 91, label %sw.bb.99
    i32 93, label %sw.bb.99
    i32 123, label %sw.bb.99
    i32 125, label %sw.bb.99
    i32 41, label %sw.bb.129
    i32 92, label %sw.bb.130
  ]

sw.bb:                                            ; preds = %for.body
  %57 = load i32, i32* %in_string, align 4, !tbaa !5
  %tobool71 = icmp ne i32 %57, 0
  br i1 %tobool71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %sw.bb
  br label %sw.epilog

if.end.73:                                        ; preds = %sw.bb
  br label %for.inc

sw.bb.74:                                         ; preds = %for.body, %for.body
  %58 = load i8*, i8** %to, align 8, !tbaa !1
  %59 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp75 = icmp ugt i8* %58, %59
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.98

land.lhs.true.77:                                 ; preds = %sw.bb.74
  %60 = load i32, i32* %in_string, align 4, !tbaa !5
  %tobool78 = icmp ne i32 %60, 0
  br i1 %tobool78, label %if.end.98, label %land.lhs.true.79

land.lhs.true.79:                                 ; preds = %land.lhs.true.77
  br i1 false, label %land.lhs.true.80, label %cond.false.91

land.lhs.true.80:                                 ; preds = %land.lhs.true.79
  br i1 true, label %cond.false.91, label %land.lhs.true.81

land.lhs.true.81:                                 ; preds = %land.lhs.true.80
  %61 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8, i8* %61, i64 -1
  %62 = load i8, i8* %arrayidx82, align 1, !tbaa !11
  %conv83 = sext i8 %62 to i32
  %cmp84 = icmp eq i32 %conv83, 0
  br i1 %cmp84, label %cond.true.86, label %cond.false.91

cond.true.86:                                     ; preds = %land.lhs.true.81
  %63 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %63, i64 -1
  %64 = load i8, i8* %arrayidx87, align 1, !tbaa !11
  %conv88 = sext i8 %64 to i32
  %call89 = call i8* @__rawmemchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %conv88) #9
  %tobool90 = icmp ne i8* %call89, null
  br i1 %tobool90, label %if.then.96, label %if.end.98

cond.false.91:                                    ; preds = %land.lhs.true.81, %land.lhs.true.80, %land.lhs.true.79
  %65 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i8, i8* %65, i64 -1
  %66 = load i8, i8* %arrayidx92, align 1, !tbaa !11
  %conv93 = sext i8 %66 to i32
  %call94 = call i8* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %conv93) #8
  %tobool95 = icmp ne i8* %call94, null
  br i1 %tobool95, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %cond.false.91, %cond.true.86
  %67 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr97 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %incdec.ptr97, i8** %to, align 8, !tbaa !1
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %cond.false.91, %cond.true.86, %land.lhs.true.77, %sw.bb.74
  br label %for.inc

sw.bb.99:                                         ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %68 = load i8*, i8** %to, align 8, !tbaa !1
  %69 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp100 = icmp ugt i8* %68, %69
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.123

land.lhs.true.102:                                ; preds = %sw.bb.99
  %70 = load i32, i32* %in_string, align 4, !tbaa !5
  %tobool103 = icmp ne i32 %70, 0
  br i1 %tobool103, label %if.end.123, label %land.lhs.true.104

land.lhs.true.104:                                ; preds = %land.lhs.true.102
  br i1 false, label %land.lhs.true.105, label %cond.false.116

land.lhs.true.105:                                ; preds = %land.lhs.true.104
  br i1 true, label %cond.false.116, label %land.lhs.true.106

land.lhs.true.106:                                ; preds = %land.lhs.true.105
  %71 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %71, i64 -1
  %72 = load i8, i8* %arrayidx107, align 1, !tbaa !11
  %conv108 = sext i8 %72 to i32
  %cmp109 = icmp eq i32 %conv108, 0
  br i1 %cmp109, label %cond.true.111, label %cond.false.116

cond.true.111:                                    ; preds = %land.lhs.true.106
  %73 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %73, i64 -1
  %74 = load i8, i8* %arrayidx112, align 1, !tbaa !11
  %conv113 = sext i8 %74 to i32
  %call114 = call i8* @__rawmemchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i32 %conv113) #9
  %tobool115 = icmp ne i8* %call114, null
  br i1 %tobool115, label %if.then.121, label %if.end.123

cond.false.116:                                   ; preds = %land.lhs.true.106, %land.lhs.true.105, %land.lhs.true.104
  %75 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i8, i8* %75, i64 -1
  %76 = load i8, i8* %arrayidx117, align 1, !tbaa !11
  %conv118 = sext i8 %76 to i32
  %call119 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i32 %conv118) #8
  %tobool120 = icmp ne i8* %call119, null
  br i1 %tobool120, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %cond.false.116, %cond.true.111
  %77 = load i8*, i8** %from, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !11
  %79 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr122 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %incdec.ptr122, i8** %to, align 8, !tbaa !1
  store i8 %78, i8* %incdec.ptr122, align 1, !tbaa !11
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %cond.false.116, %cond.true.111, %land.lhs.true.102, %sw.bb.99
  %80 = load i8*, i8** %from, align 8, !tbaa !1
  %81 = load i8, i8* %80, align 1, !tbaa !11
  %conv124 = sext i8 %81 to i32
  %cmp125 = icmp eq i32 %conv124, 40
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.123
  %82 = load i32, i32* %in_string, align 4, !tbaa !5
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %in_string, align 4, !tbaa !5
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %if.end.123
  br label %for.inc

sw.bb.129:                                        ; preds = %for.body
  %83 = load i32, i32* %in_string, align 4, !tbaa !5
  %dec = add nsw i32 %83, -1
  store i32 %dec, i32* %in_string, align 4, !tbaa !5
  br label %for.inc

sw.bb.130:                                        ; preds = %for.body
  %84 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i8, i8* %arrayidx131, align 1, !tbaa !11
  %conv132 = sext i8 %85 to i32
  %cmp133 = icmp eq i32 %conv132, 92
  br i1 %cmp133, label %if.then.144, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.130
  %86 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i8, i8* %86, i64 1
  %87 = load i8, i8* %arrayidx135, align 1, !tbaa !11
  %conv136 = sext i8 %87 to i32
  %cmp137 = icmp eq i32 %conv136, 40
  br i1 %cmp137, label %if.then.144, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %lor.lhs.false
  %88 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load i8, i8* %arrayidx140, align 1, !tbaa !11
  %conv141 = sext i8 %89 to i32
  %cmp142 = icmp eq i32 %conv141, 41
  br i1 %cmp142, label %if.then.144, label %if.end.147

if.then.144:                                      ; preds = %lor.lhs.false.139, %lor.lhs.false, %sw.bb.130
  %90 = load i8*, i8** %from, align 8, !tbaa !1
  %incdec.ptr145 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr145, i8** %from, align 8, !tbaa !1
  %91 = load i8, i8* %incdec.ptr145, align 1, !tbaa !11
  %92 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr146 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr146, i8** %to, align 8, !tbaa !1
  store i8 %91, i8* %incdec.ptr146, align 1, !tbaa !11
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.144, %lor.lhs.false.139
  br label %for.inc

sw.default:                                       ; preds = %for.body
  br label %for.inc

sw.epilog:                                        ; preds = %if.then.72
  br label %for.end

for.inc:                                          ; preds = %sw.default, %if.end.147, %sw.bb.129, %if.end.128, %if.end.98, %if.end.73
  %93 = load i8*, i8** %from, align 8, !tbaa !1
  %incdec.ptr148 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr148, i8** %from, align 8, !tbaa !1
  %94 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr149 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr149, i8** %to, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %sw.epilog, %for.cond
  br label %while.cond.150

while.cond.150:                                   ; preds = %while.body.163, %for.end
  %95 = load i8*, i8** %to, align 8, !tbaa !1
  %96 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp151 = icmp ugt i8* %95, %96
  br i1 %cmp151, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.150
  %97 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i8, i8* %97, i64 -1
  %98 = load i8, i8* %arrayidx153, align 1, !tbaa !11
  %conv154 = sext i8 %98 to i32
  %cmp155 = icmp eq i32 %conv154, 32
  br i1 %cmp155, label %lor.end.162, label %lor.rhs.157

lor.rhs.157:                                      ; preds = %land.rhs
  %99 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds i8, i8* %99, i64 -1
  %100 = load i8, i8* %arrayidx158, align 1, !tbaa !11
  %conv159 = sext i8 %100 to i32
  %cmp160 = icmp eq i32 %conv159, 9
  br label %lor.end.162

lor.end.162:                                      ; preds = %lor.rhs.157, %land.rhs
  %101 = phi i1 [ true, %land.rhs ], [ %cmp160, %lor.rhs.157 ]
  br label %land.end

land.end:                                         ; preds = %lor.end.162, %while.cond.150
  %102 = phi i1 [ false, %while.cond.150 ], [ %101, %lor.end.162 ]
  br i1 %102, label %while.body.163, label %while.end.165

while.body.163:                                   ; preds = %land.end
  %103 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr164 = getelementptr inbounds i8, i8* %103, i32 -1
  store i8* %incdec.ptr164, i8** %to, align 8, !tbaa !1
  br label %while.cond.150

while.end.165:                                    ; preds = %land.end
  %104 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 0, i8* %104, align 1, !tbaa !11
  %105 = load i8*, i8** %str, align 8, !tbaa !1
  store i8* %105, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.165, %if.then.65, %if.then.59, %if.then.8, %if.then
  %106 = bitcast i32* %in_string to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i8** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = load i8*, i8** %retval
  ret i8* %110
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

declare i8* @__rawmemchr(i8*, i32) #3

; Function Attrs: nounwind
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @hex_string_to_binary(%struct._IO_FILE* %in) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %strbuf = alloca i8*, align 8
  %q = alloca i8*, align 8
  %c = alloca i32, align 4
  %which = alloca i32, align 4
  %len = alloca i32, align 4
  %prefix = alloca [3 x i8], align 1
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  %0 = bitcast i8** %strbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 65535) #8
  store i8* %call, i8** %strbuf, align 8, !tbaa !1
  %1 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %strbuf, align 8, !tbaa !1
  store i8* %2, i8** %q, align 8, !tbaa !1
  %3 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %which to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %which, align 4, !tbaa !5
  %5 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast [3 x i8]* %prefix to i8*
  call void @llvm.lifetime.start(i64 3, i8* %6) #1
  %7 = load i8*, i8** %strbuf, align 8, !tbaa !1
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %if.then.38, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %8) #9
  store i32 %call2, i32* %c, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %call2, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %call4 = call i16** @__ctype_b_loc() #12
  %10 = load i16*, i16** %call4, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2, !tbaa !55
  %conv = zext i16 %11 to i32
  %and = and i32 %conv, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %if.else.31

if.then.5:                                        ; preds = %while.body
  %12 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom6 = sext i32 %12 to i64
  %call7 = call i16** @__ctype_b_loc() #12
  %13 = load i16*, i16** %call7, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i16, i16* %13, i64 %idxprom6
  %14 = load i16, i16* %arrayidx8, align 2, !tbaa !55
  %conv9 = zext i16 %14 to i32
  %and10 = and i32 %conv9, 2048
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  %15 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom12 = sext i32 %15 to i64
  %call13 = call i16** @__ctype_b_loc() #12
  %16 = load i16*, i16** %call13, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i16, i16* %16, i64 %idxprom12
  %17 = load i16, i16* %arrayidx14, align 2, !tbaa !55
  %conv15 = zext i16 %17 to i32
  %and16 = and i32 %conv15, 512
  %tobool17 = icmp ne i32 %and16, 0
  %cond = select i1 %tobool17, i32 97, i32 65
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond18 = phi i32 [ 48, %cond.true ], [ %cond, %cond.false ]
  %18 = load i32, i32* %c, align 4, !tbaa !5
  %sub = sub nsw i32 %18, %cond18
  store i32 %sub, i32* %c, align 4, !tbaa !5
  %19 = load i32, i32* %which, align 4, !tbaa !5
  %tobool19 = icmp ne i32 %19, 0
  %lnot = xor i1 %tobool19, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %which, align 4, !tbaa !5
  br i1 %lnot, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %cond.end
  %20 = load i8*, i8** %q, align 8, !tbaa !1
  %21 = load i8*, i8** %strbuf, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 65535
  %cmp21 = icmp eq i8* %20, %add.ptr
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.20
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i32 0, i32 0), i32 65535) #9
  call void @exit(i32 1) #10
  unreachable

if.end.25:                                        ; preds = %if.then.20
  %22 = load i32, i32* %c, align 4, !tbaa !5
  %shl = shl i32 %22, 4
  %conv26 = trunc i32 %shl to i8
  %23 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  store i8 %conv26, i8* %23, align 1, !tbaa !11
  br label %if.end.30

if.else:                                          ; preds = %cond.end
  %24 = load i32, i32* %c, align 4, !tbaa !5
  %25 = load i8*, i8** %q, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %25, i64 -1
  %26 = load i8, i8* %arrayidx27, align 1, !tbaa !11
  %conv28 = zext i8 %26 to i32
  %add = add nsw i32 %conv28, %24
  %conv29 = trunc i32 %add to i8
  store i8 %conv29, i8* %arrayidx27, align 1, !tbaa !11
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.end.25
  br label %if.end.47

if.else.31:                                       ; preds = %while.body
  %27 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom32 = sext i32 %27 to i64
  %call33 = call i16** @__ctype_b_loc() #12
  %28 = load i16*, i16** %call33, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i16, i16* %28, i64 %idxprom32
  %29 = load i16, i16* %arrayidx34, align 2, !tbaa !55
  %conv35 = zext i16 %29 to i32
  %and36 = and i32 %conv35, 8192
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else.31
  br label %while.cond

if.else.39:                                       ; preds = %if.else.31
  %30 = load i32, i32* %c, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %30, 62
  br i1 %cmp40, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.else.39
  br label %while.end

if.else.43:                                       ; preds = %if.else.39
  %31 = load i32, i32* %c, align 4, !tbaa !5
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.40, i32 0, i32 0), i32 %31) #9
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.30
  br label %while.cond

while.end:                                        ; preds = %if.then.42, %while.cond
  %32 = load i8*, i8** %q, align 8, !tbaa !1
  %33 = load i8*, i8** %strbuf, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv48 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv48, i32* %len, align 4, !tbaa !5
  %34 = load i32, i32* %len, align 4, !tbaa !5
  %cmp49 = icmp sle i32 %34, 255
  br i1 %cmp49, label %if.then.51, label %if.else.55

if.then.51:                                       ; preds = %while.end
  %arrayidx52 = getelementptr inbounds [3 x i8], [3 x i8]* %prefix, i32 0, i64 0
  store i8 -114, i8* %arrayidx52, align 1, !tbaa !11
  %35 = load i32, i32* %len, align 4, !tbaa !5
  %conv53 = trunc i32 %35 to i8
  %arrayidx54 = getelementptr inbounds [3 x i8], [3 x i8]* %prefix, i32 0, i64 1
  store i8 %conv53, i8* %arrayidx54, align 1, !tbaa !11
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %prefix, i32 0, i32 0
  call void @ws(i8* %arraydecay, i32 2) #9
  br label %if.end.62

if.else.55:                                       ; preds = %while.end
  %arrayidx56 = getelementptr inbounds [3 x i8], [3 x i8]* %prefix, i32 0, i64 0
  store i8 -113, i8* %arrayidx56, align 1, !tbaa !11
  %36 = load i32, i32* %len, align 4, !tbaa !5
  %shr = ashr i32 %36, 8
  %conv57 = trunc i32 %shr to i8
  %arrayidx58 = getelementptr inbounds [3 x i8], [3 x i8]* %prefix, i32 0, i64 1
  store i8 %conv57, i8* %arrayidx58, align 1, !tbaa !11
  %37 = load i32, i32* %len, align 4, !tbaa !5
  %conv59 = trunc i32 %37 to i8
  %arrayidx60 = getelementptr inbounds [3 x i8], [3 x i8]* %prefix, i32 0, i64 2
  store i8 %conv59, i8* %arrayidx60, align 1, !tbaa !11
  %arraydecay61 = getelementptr inbounds [3 x i8], [3 x i8]* %prefix, i32 0, i32 0
  call void @ws(i8* %arraydecay61, i32 3) #9
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.55, %if.then.51
  %38 = load i8*, i8** %strbuf, align 8, !tbaa !1
  %39 = load i32, i32* %len, align 4, !tbaa !5
  call void @ws(i8* %38, i32 %39) #9
  %40 = load i8*, i8** %strbuf, align 8, !tbaa !1
  call void @free(i8* %40) #8
  %41 = bitcast [3 x i8]* %prefix to i8*
  call void @llvm.lifetime.end(i64 3, i8* %41) #1
  %42 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %which to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i8** %strbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind uwtable
define void @flush_buf(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  call void @wl(i8* %2) #9
  %3 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 0
  store i8 0, i8* %arrayidx2, align 1, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @prefix_open(i8* %os_prefix, i8* %filename) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %os_prefix.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %prefixed_path = alloca i8*, align 8
  %filep = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %os_prefix, i8** %os_prefix.addr, align 8, !tbaa !1
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  %0 = bitcast i8** %prefixed_path to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct._IO_FILE** %filep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %call = call noalias i8* @malloc(i64 1024) #8
  store i8* %call, i8** %prefixed_path, align 8, !tbaa !1
  %2 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0)) #9
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %os_prefix.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  call void @prefix_add(i8* %3, i8* %4, i8* %5) #9
  %6 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i32 0, i32 0), i8* %6) #9
  %7 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  %call3 = call %struct._IO_FILE* @fopen64(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0)) #9
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %filep, align 8, !tbaa !1
  %8 = load i8*, i8** %prefixed_path, align 8, !tbaa !1
  call void @free(i8* %8) #8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %filep, align 8, !tbaa !1
  store %struct._IO_FILE* %9, %struct._IO_FILE** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct._IO_FILE** %filep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast i8** %prefixed_path to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %12
}

; Function Attrs: nounwind uwtable
define void @mergefile(i8* %os_prefix, i8* %inname, %struct._IO_FILE* %in, %struct._IO_FILE* %config, i32 %intact) #0 {
entry:
  %os_prefix.addr = alloca i8*, align 8
  %inname.addr = alloca i8*, align 8
  %in.addr = alloca %struct._IO_FILE*, align 8
  %config.addr = alloca %struct._IO_FILE*, align 8
  %intact.addr = alloca i32, align 4
  %line = alloca [1025 x i8], align 16
  %buf = alloca [1025 x i8], align 16
  %str = alloca i8*, align 8
  %level = alloca i32, align 4
  %first = alloca i32, align 4
  %psname = alloca [1025 x i8], align 16
  %nlines = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %do_intact = alloca i32, align 4
  %ps = alloca %struct._IO_FILE*, align 8
  %__s1_len93 = alloca i64, align 8
  %__s2_len95 = alloca i64, align 8
  %tmp96 = alloca i32, align 4
  %__s1103 = alloca i8*, align 8
  %__result106 = alloca i32, align 4
  %tmp144 = alloca i32, align 4
  %__s1_len162 = alloca i64, align 8
  %__s2_len164 = alloca i64, align 8
  %tmp165 = alloca i32, align 4
  %__s1172 = alloca i8*, align 8
  %__result175 = alloca i32, align 4
  %tmp213 = alloca i32, align 4
  %ps226 = alloca %struct._IO_FILE*, align 8
  %quote = alloca i8*, align 8
  %__s1_len249 = alloca i64, align 8
  %__s2_len251 = alloca i64, align 8
  %tmp252 = alloca i32, align 4
  %__s1259 = alloca i8*, align 8
  %__result262 = alloca i32, align 4
  %tmp300 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %len = alloca i32, align 4
  store i8* %os_prefix, i8** %os_prefix.addr, align 8, !tbaa !1
  store i8* %inname, i8** %inname.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %config, %struct._IO_FILE** %config.addr, align 8, !tbaa !1
  store i32 %intact, i32* %intact.addr, align 4, !tbaa !5
  %0 = bitcast [1025 x i8]* %line to i8*
  call void @llvm.lifetime.start(i64 1025, i8* %0) #1
  %1 = bitcast [1025 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 1025, i8* %1) #1
  %2 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %level, align 4, !tbaa !5
  %4 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1, i32* %first, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !11
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.442, %cleanup.439, %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [1025 x i8], [1025 x i8]* %line, i32 0, i32 0
  %call = call i32 @rl(%struct._IO_FILE* %5, i8* %arraydecay, i32 1024) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end.443

while.body:                                       ; preds = %while.cond
  %6 = bitcast [1025 x i8]* %psname to i8*
  call void @llvm.lifetime.start(i64 1025, i8* %6) #1
  %7 = bitcast i32* %nlines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %call1 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0)) #11
  %cmp = icmp ult i64 %call1, 10
  br i1 %cmp, label %cond.true, label %cond.false.45

cond.true:                                        ; preds = %while.body
  %8 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i64 1) to i64), i64 ptrtoint ([11 x i8]* @.str.43 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %cond.true
  %call2 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0)) #11
  store i64 %call2, i64* %__s2_len, align 8, !tbaa !7
  %10 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp3 = icmp ult i64 %10, 4
  br i1 %cmp3, label %cond.true.4, label %cond.false

cond.true.4:                                      ; preds = %land.lhs.true
  %11 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %arraydecay6 = getelementptr inbounds [1025 x i8], [1025 x i8]* %line, i32 0, i32 0
  store i8* %arraydecay6, i8** %__s1, align 8, !tbaa !1
  %12 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx8, align 1, !tbaa !11
  %conv = zext i8 %14 to i32
  %15 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), align 1, !tbaa !11
  %conv9 = zext i8 %15 to i32
  %sub = sub nsw i32 %conv, %conv9
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %16 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp10 = icmp ugt i64 %16, 0
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.40

land.lhs.true.12:                                 ; preds = %cond.true.4
  %17 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %17, 0
  br i1 %cmp13, label %if.then, label %if.end.40

if.then:                                          ; preds = %land.lhs.true.12
  %18 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx15, align 1, !tbaa !11
  %conv16 = zext i8 %19 to i32
  %20 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i64 1), align 1, !tbaa !11
  %conv17 = zext i8 %20 to i32
  %sub18 = sub nsw i32 %conv16, %conv17
  store i32 %sub18, i32* %__result, align 4, !tbaa !5
  %21 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp19 = icmp ugt i64 %21, 1
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.39

land.lhs.true.21:                                 ; preds = %if.then
  %22 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %22, 0
  br i1 %cmp22, label %if.then.24, label %if.end.39

if.then.24:                                       ; preds = %land.lhs.true.21
  %23 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %23, i64 2
  %24 = load i8, i8* %arrayidx25, align 1, !tbaa !11
  %conv26 = zext i8 %24 to i32
  %25 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i64 2), align 1, !tbaa !11
  %conv27 = zext i8 %25 to i32
  %sub28 = sub nsw i32 %conv26, %conv27
  store i32 %sub28, i32* %__result, align 4, !tbaa !5
  %26 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp29 = icmp ugt i64 %26, 2
  br i1 %cmp29, label %land.lhs.true.31, label %if.end

land.lhs.true.31:                                 ; preds = %if.then.24
  %27 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %27, 0
  br i1 %cmp32, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %land.lhs.true.31
  %28 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %28, i64 3
  %29 = load i8, i8* %arrayidx35, align 1, !tbaa !11
  %conv36 = zext i8 %29 to i32
  %30 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i64 3), align 1, !tbaa !11
  %conv37 = zext i8 %30 to i32
  %sub38 = sub nsw i32 %conv36, %conv37
  store i32 %sub38, i32* %__result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.34, %land.lhs.true.31, %if.then.24
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %land.lhs.true.21, %if.then
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true.12, %cond.true.4
  %31 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %31, i32* %tmp41, !tbaa !5
  %32 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %tmp41, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %cond.true
  %arraydecay42 = getelementptr inbounds [1025 x i8], [1025 x i8]* %line, i32 0, i32 0
  %call43 = call i32 @strcmp(i8* %arraydecay42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.40
  %cond = phi i32 [ %34, %if.end.40 ], [ %call43, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %35 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %tmp, !tbaa !5
  %tobool44 = icmp ne i32 %37, 0
  br i1 %tobool44, label %if.else.247, label %land.lhs.true.49

cond.false.45:                                    ; preds = %while.body
  %arraydecay46 = getelementptr inbounds [1025 x i8], [1025 x i8]* %line, i32 0, i32 0
  %call47 = call i32 @strncmp(i8* %arraydecay46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i64 10) #11
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.else.247, label %land.lhs.true.49

land.lhs.true.49:                                 ; preds = %cond.false.45, %cond.end
  %arraydecay50 = getelementptr inbounds [1025 x i8], [1025 x i8]* %line, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay50, i64 11
  %arraydecay51 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  %call52 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32* %nlines, i8* %arraydecay51) #8
  %cmp53 = icmp eq i32 %call52, 2
  br i1 %cmp53, label %if.then.55, label %if.else.247

if.then.55:                                       ; preds = %land.lhs.true.49
  %38 = bitcast i32* %do_intact to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %arrayidx57 = getelementptr inbounds [1025 x i8], [1025 x i8]* %line, i32 0, i64 10
  %39 = load i8, i8* %arrayidx57, align 1, !tbaa !11
  %conv58 = sext i8 %39 to i32
  %cmp59 = icmp eq i32 %conv58, 37
  %conv60 = zext i1 %cmp59 to i32
  store i32 %conv60, i32* %do_intact, align 4, !tbaa !5
  %arraydecay61 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  call void @flush_buf(i8* %arraydecay61) #9
  br label %while.cond.62

while.cond.62:                                    ; preds = %while.body.65, %if.then.55
  %40 = load i32, i32* %nlines, align 4, !tbaa !5
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %nlines, align 4, !tbaa !5
  %cmp63 = icmp sgt i32 %40, 0
  br i1 %cmp63, label %while.body.65, label %while.end

while.body.65:                                    ; preds = %while.cond.62
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  %arraydecay66 = getelementptr inbounds [1025 x i8], [1025 x i8]* %line, i32 0, i32 0
  %call67 = call i32 @rl(%struct._IO_FILE* %41, i8* %arraydecay66, i32 1024) #9
  br label %while.cond.62

while.end:                                        ; preds = %while.cond.62
  %arrayidx68 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i64 0
  %42 = load i8, i8* %arrayidx68, align 1, !tbaa !11
  %conv69 = sext i8 %42 to i32
  %cmp70 = icmp eq i32 %conv69, 40
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %while.end
  %43 = bitcast %struct._IO_FILE** %ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %arraydecay74 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  %call75 = call i64 @strlen(i8* %arraydecay74) #11
  %sub76 = sub i64 %call75, 1
  %arrayidx77 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i64 %sub76
  store i8 0, i8* %arrayidx77, align 1, !tbaa !11
  %44 = load i8*, i8** %os_prefix.addr, align 8, !tbaa !1
  %arraydecay78 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  %add.ptr79 = getelementptr inbounds i8, i8* %arraydecay78, i64 1
  %call80 = call %struct._IO_FILE* @prefix_open(i8* %44, i8* %add.ptr79) #9
  store %struct._IO_FILE* %call80, %struct._IO_FILE** %ps, align 8, !tbaa !1
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %ps, align 8, !tbaa !1
  %cmp81 = icmp eq %struct._IO_FILE* %45, null
  br i1 %cmp81, label %if.then.83, label %if.end.87

if.then.83:                                       ; preds = %if.then.72
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %arraydecay84 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  %add.ptr85 = getelementptr inbounds i8, i8* %arraydecay84, i64 1
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0), i8* %add.ptr85) #9
  call void @exit(i32 1) #10
  unreachable

if.end.87:                                        ; preds = %if.then.72
  %47 = load i8*, i8** %os_prefix.addr, align 8, !tbaa !1
  %arraydecay88 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  %add.ptr89 = getelementptr inbounds i8, i8* %arraydecay88, i64 1
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %ps, align 8, !tbaa !1
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %config.addr, align 8, !tbaa !1
  %50 = load i32, i32* %intact.addr, align 4, !tbaa !5
  %tobool90 = icmp ne i32 %50, 0
  br i1 %tobool90, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.87
  %51 = load i32, i32* %do_intact, align 4, !tbaa !5
  %tobool91 = icmp ne i32 %51, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.87
  %52 = phi i1 [ true, %if.end.87 ], [ %tobool91, %lor.rhs ]
  %lor.ext = zext i1 %52 to i32
  call void @mergefile(i8* %47, i8* %add.ptr89, %struct._IO_FILE* %48, %struct._IO_FILE* %49, i32 %lor.ext) #9
  %53 = bitcast %struct._IO_FILE** %ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  br label %if.end.246

if.else:                                          ; preds = %while.end
  %54 = bitcast i64* %__s1_len93 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = bitcast i64* %__s2_len95 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.46 to i64)), i64 1), label %land.lhs.true.97, label %cond.false.145

land.lhs.true.97:                                 ; preds = %if.else
  %call98 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0)) #11
  store i64 %call98, i64* %__s2_len95, align 8, !tbaa !7
  %56 = load i64, i64* %__s2_len95, align 8, !tbaa !7
  %cmp99 = icmp ult i64 %56, 4
  br i1 %cmp99, label %cond.true.101, label %cond.false.145

cond.true.101:                                    ; preds = %land.lhs.true.97
  %57 = bitcast i8** %__s1103 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %arraydecay104 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  store i8* %arraydecay104, i8** %__s1103, align 8, !tbaa !1
  %58 = bitcast i32* %__result106 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load i8*, i8** %__s1103, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %59, i64 0
  %60 = load i8, i8* %arrayidx107, align 1, !tbaa !11
  %conv108 = zext i8 %60 to i32
  %61 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), align 1, !tbaa !11
  %conv109 = zext i8 %61 to i32
  %sub110 = sub nsw i32 %conv108, %conv109
  store i32 %sub110, i32* %__result106, align 4, !tbaa !5
  %62 = load i64, i64* %__s2_len95, align 8, !tbaa !7
  %cmp111 = icmp ugt i64 %62, 0
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.143

land.lhs.true.113:                                ; preds = %cond.true.101
  %63 = load i32, i32* %__result106, align 4, !tbaa !5
  %cmp114 = icmp eq i32 %63, 0
  br i1 %cmp114, label %if.then.116, label %if.end.143

if.then.116:                                      ; preds = %land.lhs.true.113
  %64 = load i8*, i8** %__s1103, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8, i8* %arrayidx117, align 1, !tbaa !11
  %conv118 = zext i8 %65 to i32
  %66 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i64 1), align 1, !tbaa !11
  %conv119 = zext i8 %66 to i32
  %sub120 = sub nsw i32 %conv118, %conv119
  store i32 %sub120, i32* %__result106, align 4, !tbaa !5
  %67 = load i64, i64* %__s2_len95, align 8, !tbaa !7
  %cmp121 = icmp ugt i64 %67, 1
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.142

land.lhs.true.123:                                ; preds = %if.then.116
  %68 = load i32, i32* %__result106, align 4, !tbaa !5
  %cmp124 = icmp eq i32 %68, 0
  br i1 %cmp124, label %if.then.126, label %if.end.142

if.then.126:                                      ; preds = %land.lhs.true.123
  %69 = load i8*, i8** %__s1103, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i8, i8* %69, i64 2
  %70 = load i8, i8* %arrayidx127, align 1, !tbaa !11
  %conv128 = zext i8 %70 to i32
  %71 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i64 2), align 1, !tbaa !11
  %conv129 = zext i8 %71 to i32
  %sub130 = sub nsw i32 %conv128, %conv129
  store i32 %sub130, i32* %__result106, align 4, !tbaa !5
  %72 = load i64, i64* %__s2_len95, align 8, !tbaa !7
  %cmp131 = icmp ugt i64 %72, 2
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.141

land.lhs.true.133:                                ; preds = %if.then.126
  %73 = load i32, i32* %__result106, align 4, !tbaa !5
  %cmp134 = icmp eq i32 %73, 0
  br i1 %cmp134, label %if.then.136, label %if.end.141

if.then.136:                                      ; preds = %land.lhs.true.133
  %74 = load i8*, i8** %__s1103, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i8, i8* %74, i64 3
  %75 = load i8, i8* %arrayidx137, align 1, !tbaa !11
  %conv138 = zext i8 %75 to i32
  %76 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i64 3), align 1, !tbaa !11
  %conv139 = zext i8 %76 to i32
  %sub140 = sub nsw i32 %conv138, %conv139
  store i32 %sub140, i32* %__result106, align 4, !tbaa !5
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.136, %land.lhs.true.133, %if.then.126
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %land.lhs.true.123, %if.then.116
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %land.lhs.true.113, %cond.true.101
  %77 = load i32, i32* %__result106, align 4, !tbaa !5
  store i32 %77, i32* %tmp144, !tbaa !5
  %78 = bitcast i32* %__result106 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i8** %__s1103 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = load i32, i32* %tmp144, !tbaa !5
  br label %cond.end.148

cond.false.145:                                   ; preds = %land.lhs.true.97, %if.else
  %arraydecay146 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  %call147 = call i32 @strcmp(i8* %arraydecay146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0)) #8
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.145, %if.end.143
  %cond149 = phi i32 [ %80, %if.end.143 ], [ %call147, %cond.false.145 ]
  store i32 %cond149, i32* %tmp96, !tbaa !5
  %81 = bitcast i64* %__s2_len95 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i64* %__s1_len93 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = load i32, i32* %tmp96, !tbaa !5
  %tobool150 = icmp ne i32 %83, 0
  br i1 %tobool150, label %if.else.242, label %if.then.151

if.then.151:                                      ; preds = %cond.end.148
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %config.addr, align 8, !tbaa !1
  call void @rewind(%struct._IO_FILE* %84) #9
  br label %while.cond.152

while.cond.152:                                   ; preds = %if.end.240, %if.then.151
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %config.addr, align 8, !tbaa !1
  %arraydecay153 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  %call154 = call i32 @rl(%struct._IO_FILE* %85, i8* %arraydecay153, i32 1024) #9
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %while.body.156, label %while.end.241

while.body.156:                                   ; preds = %while.cond.152
  %call157 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0)) #11
  %cmp158 = icmp ult i64 %call157, 9
  br i1 %cmp158, label %cond.true.160, label %cond.false.220

cond.true.160:                                    ; preds = %while.body.156
  %86 = bitcast i64* %__s1_len162 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  %87 = bitcast i64* %__s2_len164 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.47 to i64)), i64 1), label %land.lhs.true.166, label %cond.false.214

land.lhs.true.166:                                ; preds = %cond.true.160
  %call167 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0)) #11
  store i64 %call167, i64* %__s2_len164, align 8, !tbaa !7
  %88 = load i64, i64* %__s2_len164, align 8, !tbaa !7
  %cmp168 = icmp ult i64 %88, 4
  br i1 %cmp168, label %cond.true.170, label %cond.false.214

cond.true.170:                                    ; preds = %land.lhs.true.166
  %89 = bitcast i8** %__s1172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  %arraydecay173 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  store i8* %arraydecay173, i8** %__s1172, align 8, !tbaa !1
  %90 = bitcast i32* %__result175 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  %91 = load i8*, i8** %__s1172, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i8, i8* %91, i64 0
  %92 = load i8, i8* %arrayidx176, align 1, !tbaa !11
  %conv177 = zext i8 %92 to i32
  %93 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), align 1, !tbaa !11
  %conv178 = zext i8 %93 to i32
  %sub179 = sub nsw i32 %conv177, %conv178
  store i32 %sub179, i32* %__result175, align 4, !tbaa !5
  %94 = load i64, i64* %__s2_len164, align 8, !tbaa !7
  %cmp180 = icmp ugt i64 %94, 0
  br i1 %cmp180, label %land.lhs.true.182, label %if.end.212

land.lhs.true.182:                                ; preds = %cond.true.170
  %95 = load i32, i32* %__result175, align 4, !tbaa !5
  %cmp183 = icmp eq i32 %95, 0
  br i1 %cmp183, label %if.then.185, label %if.end.212

if.then.185:                                      ; preds = %land.lhs.true.182
  %96 = load i8*, i8** %__s1172, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx186, align 1, !tbaa !11
  %conv187 = zext i8 %97 to i32
  %98 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i64 1), align 1, !tbaa !11
  %conv188 = zext i8 %98 to i32
  %sub189 = sub nsw i32 %conv187, %conv188
  store i32 %sub189, i32* %__result175, align 4, !tbaa !5
  %99 = load i64, i64* %__s2_len164, align 8, !tbaa !7
  %cmp190 = icmp ugt i64 %99, 1
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.211

land.lhs.true.192:                                ; preds = %if.then.185
  %100 = load i32, i32* %__result175, align 4, !tbaa !5
  %cmp193 = icmp eq i32 %100, 0
  br i1 %cmp193, label %if.then.195, label %if.end.211

if.then.195:                                      ; preds = %land.lhs.true.192
  %101 = load i8*, i8** %__s1172, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i8, i8* %101, i64 2
  %102 = load i8, i8* %arrayidx196, align 1, !tbaa !11
  %conv197 = zext i8 %102 to i32
  %103 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i64 2), align 1, !tbaa !11
  %conv198 = zext i8 %103 to i32
  %sub199 = sub nsw i32 %conv197, %conv198
  store i32 %sub199, i32* %__result175, align 4, !tbaa !5
  %104 = load i64, i64* %__s2_len164, align 8, !tbaa !7
  %cmp200 = icmp ugt i64 %104, 2
  br i1 %cmp200, label %land.lhs.true.202, label %if.end.210

land.lhs.true.202:                                ; preds = %if.then.195
  %105 = load i32, i32* %__result175, align 4, !tbaa !5
  %cmp203 = icmp eq i32 %105, 0
  br i1 %cmp203, label %if.then.205, label %if.end.210

if.then.205:                                      ; preds = %land.lhs.true.202
  %106 = load i8*, i8** %__s1172, align 8, !tbaa !1
  %arrayidx206 = getelementptr inbounds i8, i8* %106, i64 3
  %107 = load i8, i8* %arrayidx206, align 1, !tbaa !11
  %conv207 = zext i8 %107 to i32
  %108 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i64 3), align 1, !tbaa !11
  %conv208 = zext i8 %108 to i32
  %sub209 = sub nsw i32 %conv207, %conv208
  store i32 %sub209, i32* %__result175, align 4, !tbaa !5
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.205, %land.lhs.true.202, %if.then.195
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %land.lhs.true.192, %if.then.185
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %land.lhs.true.182, %cond.true.170
  %109 = load i32, i32* %__result175, align 4, !tbaa !5
  store i32 %109, i32* %tmp213, !tbaa !5
  %110 = bitcast i32* %__result175 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i8** %__s1172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = load i32, i32* %tmp213, !tbaa !5
  br label %cond.end.217

cond.false.214:                                   ; preds = %land.lhs.true.166, %cond.true.160
  %arraydecay215 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  %call216 = call i32 @strcmp(i8* %arraydecay215, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0)) #8
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.214, %if.end.212
  %cond218 = phi i32 [ %112, %if.end.212 ], [ %call216, %cond.false.214 ]
  store i32 %cond218, i32* %tmp165, !tbaa !5
  %113 = bitcast i64* %__s2_len164 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i64* %__s1_len162 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = load i32, i32* %tmp165, !tbaa !5
  %tobool219 = icmp ne i32 %115, 0
  br i1 %tobool219, label %if.end.240, label %if.then.224

cond.false.220:                                   ; preds = %while.body.156
  %arraydecay221 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  %call222 = call i32 @strncmp(i8* %arraydecay221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i64 9) #11
  %tobool223 = icmp ne i32 %call222, 0
  br i1 %tobool223, label %if.end.240, label %if.then.224

if.then.224:                                      ; preds = %cond.false.220, %cond.end.217
  %116 = bitcast %struct._IO_FILE** %ps226 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %116) #1
  %117 = bitcast i8** %quote to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  %arraydecay228 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  %add.ptr229 = getelementptr inbounds i8, i8* %arraydecay228, i64 9
  %call230 = call i8* @strchr(i8* %add.ptr229, i32 34) #8
  store i8* %call230, i8** %quote, align 8, !tbaa !1
  %118 = load i8*, i8** %quote, align 8, !tbaa !1
  store i8 0, i8* %118, align 1, !tbaa !11
  %119 = load i8*, i8** %os_prefix.addr, align 8, !tbaa !1
  %arraydecay231 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  %add.ptr232 = getelementptr inbounds i8, i8* %arraydecay231, i64 9
  %call233 = call %struct._IO_FILE* @prefix_open(i8* %119, i8* %add.ptr232) #9
  store %struct._IO_FILE* %call233, %struct._IO_FILE** %ps226, align 8, !tbaa !1
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %ps226, align 8, !tbaa !1
  %cmp234 = icmp eq %struct._IO_FILE* %120, null
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.then.224
  call void @exit(i32 1) #10
  unreachable

if.end.237:                                       ; preds = %if.then.224
  %121 = load i8*, i8** %os_prefix.addr, align 8, !tbaa !1
  %arraydecay238 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  %add.ptr239 = getelementptr inbounds i8, i8* %arraydecay238, i64 9
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %ps226, align 8, !tbaa !1
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %config.addr, align 8, !tbaa !1
  call void @mergefile(i8* %121, i8* %add.ptr239, %struct._IO_FILE* %122, %struct._IO_FILE* %123, i32 0) #9
  %124 = bitcast i8** %quote to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast %struct._IO_FILE** %ps226 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.237, %cond.false.220, %cond.end.217
  br label %while.cond.152

while.end.241:                                    ; preds = %while.cond.152
  br label %if.end.245

if.else.242:                                      ; preds = %cond.end.148
  %126 = load i32, i32* %nlines, align 4, !tbaa !5
  %arraydecay243 = getelementptr inbounds [1025 x i8], [1025 x i8]* %psname, i32 0, i32 0
  %call244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), i32 %126, i8* %arraydecay243) #9
  call void @exit(i32 1) #10
  unreachable

if.end.245:                                       ; preds = %while.end.241
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %lor.end
  %127 = bitcast i32* %do_intact to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  br label %if.end.438

if.else.247:                                      ; preds = %land.lhs.true.49, %cond.false.45, %cond.end
  %128 = bitcast i64* %__s1_len249 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %128) #1
  %129 = bitcast i64* %__s2_len251 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i64 1) to i64), i64 ptrtoint ([22 x i8]* @.str.49 to i64)), i64 1), label %land.lhs.true.253, label %cond.false.301

land.lhs.true.253:                                ; preds = %if.else.247
  %call254 = call i64 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i32 0)) #11
  store i64 %call254, i64* %__s2_len251, align 8, !tbaa !7
  %130 = load i64, i64* %__s2_len251, align 8, !tbaa !7
  %cmp255 = icmp ult i64 %130, 4
  br i1 %cmp255, label %cond.true.257, label %cond.false.301

cond.true.257:                                    ; preds = %land.lhs.true.253
  %131 = bitcast i8** %__s1259 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  %arraydecay260 = getelementptr inbounds [1025 x i8], [1025 x i8]* %line, i32 0, i32 0
  store i8* %arraydecay260, i8** %__s1259, align 8, !tbaa !1
  %132 = bitcast i32* %__result262 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #1
  %133 = load i8*, i8** %__s1259, align 8, !tbaa !1
  %arrayidx263 = getelementptr inbounds i8, i8* %133, i64 0
  %134 = load i8, i8* %arrayidx263, align 1, !tbaa !11
  %conv264 = zext i8 %134 to i32
  %135 = load i8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i32 0), align 1, !tbaa !11
  %conv265 = zext i8 %135 to i32
  %sub266 = sub nsw i32 %conv264, %conv265
  store i32 %sub266, i32* %__result262, align 4, !tbaa !5
  %136 = load i64, i64* %__s2_len251, align 8, !tbaa !7
  %cmp267 = icmp ugt i64 %136, 0
  br i1 %cmp267, label %land.lhs.true.269, label %if.end.299

land.lhs.true.269:                                ; preds = %cond.true.257
  %137 = load i32, i32* %__result262, align 4, !tbaa !5
  %cmp270 = icmp eq i32 %137, 0
  br i1 %cmp270, label %if.then.272, label %if.end.299

if.then.272:                                      ; preds = %land.lhs.true.269
  %138 = load i8*, i8** %__s1259, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds i8, i8* %138, i64 1
  %139 = load i8, i8* %arrayidx273, align 1, !tbaa !11
  %conv274 = zext i8 %139 to i32
  %140 = load i8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i64 1), align 1, !tbaa !11
  %conv275 = zext i8 %140 to i32
  %sub276 = sub nsw i32 %conv274, %conv275
  store i32 %sub276, i32* %__result262, align 4, !tbaa !5
  %141 = load i64, i64* %__s2_len251, align 8, !tbaa !7
  %cmp277 = icmp ugt i64 %141, 1
  br i1 %cmp277, label %land.lhs.true.279, label %if.end.298

land.lhs.true.279:                                ; preds = %if.then.272
  %142 = load i32, i32* %__result262, align 4, !tbaa !5
  %cmp280 = icmp eq i32 %142, 0
  br i1 %cmp280, label %if.then.282, label %if.end.298

if.then.282:                                      ; preds = %land.lhs.true.279
  %143 = load i8*, i8** %__s1259, align 8, !tbaa !1
  %arrayidx283 = getelementptr inbounds i8, i8* %143, i64 2
  %144 = load i8, i8* %arrayidx283, align 1, !tbaa !11
  %conv284 = zext i8 %144 to i32
  %145 = load i8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i64 2), align 1, !tbaa !11
  %conv285 = zext i8 %145 to i32
  %sub286 = sub nsw i32 %conv284, %conv285
  store i32 %sub286, i32* %__result262, align 4, !tbaa !5
  %146 = load i64, i64* %__s2_len251, align 8, !tbaa !7
  %cmp287 = icmp ugt i64 %146, 2
  br i1 %cmp287, label %land.lhs.true.289, label %if.end.297

land.lhs.true.289:                                ; preds = %if.then.282
  %147 = load i32, i32* %__result262, align 4, !tbaa !5
  %cmp290 = icmp eq i32 %147, 0
  br i1 %cmp290, label %if.then.292, label %if.end.297

if.then.292:                                      ; preds = %land.lhs.true.289
  %148 = load i8*, i8** %__s1259, align 8, !tbaa !1
  %arrayidx293 = getelementptr inbounds i8, i8* %148, i64 3
  %149 = load i8, i8* %arrayidx293, align 1, !tbaa !11
  %conv294 = zext i8 %149 to i32
  %150 = load i8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i64 3), align 1, !tbaa !11
  %conv295 = zext i8 %150 to i32
  %sub296 = sub nsw i32 %conv294, %conv295
  store i32 %sub296, i32* %__result262, align 4, !tbaa !5
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.292, %land.lhs.true.289, %if.then.282
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %land.lhs.true.279, %if.then.272
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %land.lhs.true.269, %cond.true.257
  %151 = load i32, i32* %__result262, align 4, !tbaa !5
  store i32 %151, i32* %tmp300, !tbaa !5
  %152 = bitcast i32* %__result262 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i8** %__s1259 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = load i32, i32* %tmp300, !tbaa !5
  br label %cond.end.304

cond.false.301:                                   ; preds = %land.lhs.true.253, %if.else.247
  %arraydecay302 = getelementptr inbounds [1025 x i8], [1025 x i8]* %line, i32 0, i32 0
  %call303 = call i32 @strcmp(i8* %arraydecay302, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i32 0)) #8
  br label %cond.end.304

cond.end.304:                                     ; preds = %cond.false.301, %if.end.299
  %cond305 = phi i32 [ %154, %if.end.299 ], [ %call303, %cond.false.301 ]
  store i32 %cond305, i32* %tmp252, !tbaa !5
  %155 = bitcast i64* %__s2_len251 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i64* %__s1_len249 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = load i32, i32* %tmp252, !tbaa !5
  %tobool306 = icmp ne i32 %157, 0
  br i1 %tobool306, label %if.else.308, label %if.then.307

if.then.307:                                      ; preds = %cond.end.304
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.439

if.else.308:                                      ; preds = %cond.end.304
  %158 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %158) #1
  %arraydecay310 = getelementptr inbounds [1025 x i8], [1025 x i8]* %line, i32 0, i32 0
  %159 = load i32, i32* %intact.addr, align 4, !tbaa !5
  %call311 = call i8* @doit(i8* %arraydecay310, i32 %159) #9
  store i8* %call311, i8** %str, align 8, !tbaa !1
  %160 = load i8*, i8** %str, align 8, !tbaa !1
  %cmp312 = icmp eq i8* %160, null
  br i1 %cmp312, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %if.else.308
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.315:                                       ; preds = %if.else.308
  %161 = load i8*, i8** %str, align 8, !tbaa !1
  %call316 = call i64 @strlen(i8* %161) #11
  %conv317 = trunc i64 %call316 to i32
  store i32 %conv317, i32* %len, align 4, !tbaa !5
  %162 = load i32, i32* %first, align 4, !tbaa !5
  %tobool318 = icmp ne i32 %162, 0
  br i1 %tobool318, label %land.lhs.true.319, label %if.end.342

land.lhs.true.319:                                ; preds = %if.end.315
  %163 = load i32, i32* %len, align 4, !tbaa !5
  %cmp320 = icmp sge i32 %163, 2
  br i1 %cmp320, label %land.lhs.true.322, label %if.end.342

land.lhs.true.322:                                ; preds = %land.lhs.true.319
  %164 = load i32, i32* %len, align 4, !tbaa !5
  %sub323 = sub nsw i32 %164, 2
  %idxprom = sext i32 %sub323 to i64
  %165 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx324 = getelementptr inbounds i8, i8* %165, i64 %idxprom
  %166 = load i8, i8* %arrayidx324, align 1, !tbaa !11
  %conv325 = sext i8 %166 to i32
  %cmp326 = icmp eq i32 %conv325, 60
  br i1 %cmp326, label %land.lhs.true.328, label %if.end.342

land.lhs.true.328:                                ; preds = %land.lhs.true.322
  %167 = load i32, i32* %len, align 4, !tbaa !5
  %sub329 = sub nsw i32 %167, 1
  %idxprom330 = sext i32 %sub329 to i64
  %168 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx331 = getelementptr inbounds i8, i8* %168, i64 %idxprom330
  %169 = load i8, i8* %arrayidx331, align 1, !tbaa !11
  %conv332 = sext i8 %169 to i32
  %cmp333 = icmp eq i32 %conv332, 60
  br i1 %cmp333, label %if.then.341, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.328
  %170 = load i32, i32* %len, align 4, !tbaa !5
  %sub335 = sub nsw i32 %170, 1
  %idxprom336 = sext i32 %sub335 to i64
  %171 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx337 = getelementptr inbounds i8, i8* %171, i64 %idxprom336
  %172 = load i8, i8* %arrayidx337, align 1, !tbaa !11
  %conv338 = sext i8 %172 to i32
  %cmp339 = icmp eq i32 %conv338, 126
  br i1 %cmp339, label %if.then.341, label %if.end.342

if.then.341:                                      ; preds = %lor.lhs.false, %land.lhs.true.328
  call void @wl(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.50, i32 0, i32 0)) #9
  store i32 2, i32* %level, align 4, !tbaa !5
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.341, %lor.lhs.false, %land.lhs.true.322, %land.lhs.true.319, %if.end.315
  %173 = load i32, i32* %level, align 4, !tbaa !5
  %cmp343 = icmp sgt i32 %173, 1
  br i1 %cmp343, label %land.lhs.true.345, label %if.end.370

land.lhs.true.345:                                ; preds = %if.end.342
  %174 = load i32, i32* %len, align 4, !tbaa !5
  %cmp346 = icmp sgt i32 %174, 0
  br i1 %cmp346, label %land.lhs.true.348, label %if.end.370

land.lhs.true.348:                                ; preds = %land.lhs.true.345
  %175 = load i32, i32* %len, align 4, !tbaa !5
  %sub349 = sub nsw i32 %175, 1
  %idxprom350 = sext i32 %sub349 to i64
  %176 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx351 = getelementptr inbounds i8, i8* %176, i64 %idxprom350
  %177 = load i8, i8* %arrayidx351, align 1, !tbaa !11
  %conv352 = sext i8 %177 to i32
  %cmp353 = icmp eq i32 %conv352, 60
  br i1 %cmp353, label %land.lhs.true.355, label %if.end.370

land.lhs.true.355:                                ; preds = %land.lhs.true.348
  %178 = load i32, i32* %len, align 4, !tbaa !5
  %cmp356 = icmp slt i32 %178, 2
  br i1 %cmp356, label %if.then.365, label %lor.lhs.false.358

lor.lhs.false.358:                                ; preds = %land.lhs.true.355
  %179 = load i32, i32* %len, align 4, !tbaa !5
  %sub359 = sub nsw i32 %179, 2
  %idxprom360 = sext i32 %sub359 to i64
  %180 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx361 = getelementptr inbounds i8, i8* %180, i64 %idxprom360
  %181 = load i8, i8* %arrayidx361, align 1, !tbaa !11
  %conv362 = sext i8 %181 to i32
  %cmp363 = icmp ne i32 %conv362, 60
  br i1 %cmp363, label %if.then.365, label %if.end.370

if.then.365:                                      ; preds = %lor.lhs.false.358, %land.lhs.true.355
  %arraydecay366 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  call void @flush_buf(i8* %arraydecay366) #9
  %182 = load i32, i32* %len, align 4, !tbaa !5
  %sub367 = sub nsw i32 %182, 1
  %idxprom368 = sext i32 %sub367 to i64
  %183 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx369 = getelementptr inbounds i8, i8* %183, i64 %idxprom368
  store i8 0, i8* %arrayidx369, align 1, !tbaa !11
  %184 = load i8*, i8** %str, align 8, !tbaa !1
  call void @wl(i8* %184) #9
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8, !tbaa !1
  call void @hex_string_to_binary(%struct._IO_FILE* %185) #9
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.370:                                       ; preds = %lor.lhs.false.358, %land.lhs.true.348, %land.lhs.true.345, %if.end.342
  %arrayidx371 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i64 0
  %186 = load i8, i8* %arrayidx371, align 1, !tbaa !11
  %conv372 = sext i8 %186 to i32
  %cmp373 = icmp ne i32 %conv372, 37
  br i1 %cmp373, label %land.lhs.true.375, label %if.else.432

land.lhs.true.375:                                ; preds = %if.end.370
  %arraydecay376 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %call377 = call i64 @strlen(i8* %arraydecay376) #11
  %187 = load i32, i32* %len, align 4, !tbaa !5
  %conv378 = sext i32 %187 to i64
  %add = add i64 %call377, %conv378
  %cmp379 = icmp ult i64 %add, 1024
  br i1 %cmp379, label %land.lhs.true.381, label %if.else.432

land.lhs.true.381:                                ; preds = %land.lhs.true.375
  br i1 false, label %land.lhs.true.382, label %cond.false.393

land.lhs.true.382:                                ; preds = %land.lhs.true.381
  br i1 true, label %cond.false.393, label %land.lhs.true.383

land.lhs.true.383:                                ; preds = %land.lhs.true.382
  %188 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx384 = getelementptr inbounds i8, i8* %188, i64 0
  %189 = load i8, i8* %arrayidx384, align 1, !tbaa !11
  %conv385 = sext i8 %189 to i32
  %cmp386 = icmp eq i32 %conv385, 0
  br i1 %cmp386, label %cond.true.388, label %cond.false.393

cond.true.388:                                    ; preds = %land.lhs.true.383
  %190 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx389 = getelementptr inbounds i8, i8* %190, i64 0
  %191 = load i8, i8* %arrayidx389, align 1, !tbaa !11
  %conv390 = sext i8 %191 to i32
  %call391 = call i8* @__rawmemchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %conv390) #9
  %tobool392 = icmp ne i8* %call391, null
  br i1 %tobool392, label %if.then.429, label %lor.lhs.false.398

cond.false.393:                                   ; preds = %land.lhs.true.383, %land.lhs.true.382, %land.lhs.true.381
  %192 = load i8*, i8** %str, align 8, !tbaa !1
  %arrayidx394 = getelementptr inbounds i8, i8* %192, i64 0
  %193 = load i8, i8* %arrayidx394, align 1, !tbaa !11
  %conv395 = sext i8 %193 to i32
  %call396 = call i8* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %conv395) #8
  %tobool397 = icmp ne i8* %call396, null
  br i1 %tobool397, label %if.then.429, label %lor.lhs.false.398

lor.lhs.false.398:                                ; preds = %cond.false.393, %cond.true.388
  %arrayidx399 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i64 0
  %194 = load i8, i8* %arrayidx399, align 1, !tbaa !11
  %conv400 = sext i8 %194 to i32
  %cmp401 = icmp ne i32 %conv400, 0
  br i1 %cmp401, label %land.lhs.true.403, label %if.else.432

land.lhs.true.403:                                ; preds = %lor.lhs.false.398
  br i1 false, label %land.lhs.true.404, label %cond.false.421

land.lhs.true.404:                                ; preds = %land.lhs.true.403
  br i1 true, label %cond.false.421, label %land.lhs.true.405

land.lhs.true.405:                                ; preds = %land.lhs.true.404
  %arraydecay406 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %call407 = call i64 @strlen(i8* %arraydecay406) #11
  %sub408 = sub i64 %call407, 1
  %arrayidx409 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i64 %sub408
  %195 = load i8, i8* %arrayidx409, align 1, !tbaa !11
  %conv410 = sext i8 %195 to i32
  %cmp411 = icmp eq i32 %conv410, 0
  br i1 %cmp411, label %cond.true.413, label %cond.false.421

cond.true.413:                                    ; preds = %land.lhs.true.405
  %arraydecay414 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %call415 = call i64 @strlen(i8* %arraydecay414) #11
  %sub416 = sub i64 %call415, 1
  %arrayidx417 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i64 %sub416
  %196 = load i8, i8* %arrayidx417, align 1, !tbaa !11
  %conv418 = sext i8 %196 to i32
  %call419 = call i8* @__rawmemchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 %conv418) #9
  %tobool420 = icmp ne i8* %call419, null
  br i1 %tobool420, label %if.then.429, label %if.else.432

cond.false.421:                                   ; preds = %land.lhs.true.405, %land.lhs.true.404, %land.lhs.true.403
  %arraydecay422 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %call423 = call i64 @strlen(i8* %arraydecay422) #11
  %sub424 = sub i64 %call423, 1
  %arrayidx425 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i64 %sub424
  %197 = load i8, i8* %arrayidx425, align 1, !tbaa !11
  %conv426 = sext i8 %197 to i32
  %call427 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 %conv426) #8
  %tobool428 = icmp ne i8* %call427, null
  br i1 %tobool428, label %if.then.429, label %if.else.432

if.then.429:                                      ; preds = %cond.false.421, %cond.true.413, %cond.false.393, %cond.true.388
  %arraydecay430 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %198 = load i8*, i8** %str, align 8, !tbaa !1
  %call431 = call i8* @strcat(i8* %arraydecay430, i8* %198) #8
  br label %if.end.436

if.else.432:                                      ; preds = %cond.false.421, %cond.true.413, %lor.lhs.false.398, %land.lhs.true.375, %if.end.370
  %arraydecay433 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  call void @flush_buf(i8* %arraydecay433) #9
  %arraydecay434 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  %199 = load i8*, i8** %str, align 8, !tbaa !1
  %call435 = call i8* @strcpy(i8* %arraydecay434, i8* %199) #8
  br label %if.end.436

if.end.436:                                       ; preds = %if.else.432, %if.then.429
  store i32 0, i32* %first, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.436, %if.then.365, %if.then.314
  %200 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.439 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.437

if.end.437:                                       ; preds = %cleanup.cont
  br label %if.end.438

if.end.438:                                       ; preds = %if.end.437, %if.end.246
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.439

cleanup.439:                                      ; preds = %if.end.438, %cleanup, %if.then.307
  %201 = bitcast i32* %nlines to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast [1025 x i8]* %psname to i8*
  call void @llvm.lifetime.end(i64 1025, i8* %202) #1
  %cleanup.dest.441 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.441, label %unreachable [
    i32 0, label %cleanup.cont.442
    i32 3, label %while.end.443
    i32 2, label %while.cond
  ]

cleanup.cont.442:                                 ; preds = %cleanup.439
  br label %while.cond

while.end.443:                                    ; preds = %cleanup.439, %while.cond
  %arraydecay444 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i32 0, i32 0
  call void @flush_buf(i8* %arraydecay444) #9
  %203 = load i32, i32* %level, align 4, !tbaa !5
  %cmp445 = icmp sgt i32 %203, 1
  br i1 %cmp445, label %if.then.447, label %if.end.448

if.then.447:                                      ; preds = %while.end.443
  call void @wl(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0)) #9
  br label %if.end.448

if.end.448:                                       ; preds = %if.then.447, %while.end.443
  %204 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast [1025 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 1025, i8* %207) #1
  %208 = bitcast [1025 x i8]* %line to i8*
  call void @llvm.lifetime.end(i64 1025, i8* %208) #1
  ret void

unreachable:                                      ; preds = %cleanup.439
  unreachable
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare void @rewind(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %inode_count = alloca i32, align 4
  %totlen = alloca i32, align 4
  %out = alloca %struct._IO_FILE*, align 8
  %outfilename = alloca i8*, align 8
  %os_prefix = alloca i8*, align 8
  %rom_prefix = alloca i8*, align 8
  %initfile = alloca i8*, align 8
  %gconfig_h = alloca i8*, align 8
  %atarg = alloca i32, align 4
  %compression = alloca i32, align 4
  %compaction = alloca i32, align 4
  %Xlist_scan = alloca %struct.Xlist_element_s*, align 8
  %Xlist_head = alloca %struct.Xlist_element_s*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !5
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %inode_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %inode_count, align 4, !tbaa !5
  %2 = bitcast i32* %totlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %totlen, align 4, !tbaa !5
  %3 = bitcast %struct._IO_FILE** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %outfilename to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i8** %outfilename, align 8, !tbaa !1
  %5 = bitcast i8** %os_prefix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8** %os_prefix, align 8, !tbaa !1
  %6 = bitcast i8** %rom_prefix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8** %rom_prefix, align 8, !tbaa !1
  %7 = bitcast i8** %initfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %gconfig_h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %atarg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 1, i32* %atarg, align 4, !tbaa !5
  %10 = bitcast i32* %compression to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 1, i32* %compression, align 4, !tbaa !5
  %11 = bitcast i32* %compaction to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %compaction, align 4, !tbaa !5
  %12 = bitcast %struct.Xlist_element_s** %Xlist_scan to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.Xlist_element_s** %Xlist_head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store %struct.Xlist_element_s* null, %struct.Xlist_element_s** %Xlist_head, align 8, !tbaa !1
  %14 = load i32, i32* %argc.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %14, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1814 x i8], [1814 x i8]* @.str.55, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.56, i32 0, i32 0), i32 16384, i32 16412) #9
  %15 = load i32, i32* %argc.addr, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %15, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %16 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %16, i64 1
  %17 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx3, align 1, !tbaa !11
  %conv = sext i8 %18 to i32
  %cmp4 = icmp eq i32 %conv, 45
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.14

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %19 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8*, i8** %19, i64 1
  %20 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx8, align 1, !tbaa !11
  %conv9 = sext i8 %21 to i32
  %cmp10 = icmp eq i32 %conv9, 111
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true.6
  %22 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i8*, i8** %22, i64 2
  %23 = load i8*, i8** %arrayidx13, align 8, !tbaa !1
  store i8* %23, i8** %outfilename, align 8, !tbaa !1
  %24 = load i32, i32* %atarg, align 4, !tbaa !5
  %add = add nsw i32 %24, 2
  store i32 %add, i32* %atarg, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %land.lhs.true.6, %land.lhs.true, %if.end
  %25 = load i8*, i8** %outfilename, align 8, !tbaa !1
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.57, i32 0, i32 0), i8* %25) #9
  %26 = load i8*, i8** %outfilename, align 8, !tbaa !1
  %call16 = call %struct._IO_FILE* @fopen64(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0)) #9
  store %struct._IO_FILE* %call16, %struct._IO_FILE** %out, align 8, !tbaa !1
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.59, i32 0, i32 0)) #9
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i32 0, i32 0)) #9
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i32 0, i32 0)) #9
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i32 0, i32 0)) #9
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %call21 = call i64 @time(i64* null) #8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.63, i32 0, i32 0), i64 %call21) #9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %32 = load i32, i32* %atarg, align 4, !tbaa !5
  %33 = load i32, i32* %argc.addr, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %32, %33
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %atarg, align 4, !tbaa !5
  %idxprom = sext i32 %34 to i64
  %35 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8*, i8** %35, i64 %idxprom
  %36 = load i8*, i8** %arrayidx25, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx26, align 1, !tbaa !11
  %conv27 = sext i8 %37 to i32
  %cmp28 = icmp eq i32 %conv27, 45
  br i1 %cmp28, label %if.then.30, label %if.end.97

if.then.30:                                       ; preds = %for.body
  %38 = load i32, i32* %atarg, align 4, !tbaa !5
  %idxprom31 = sext i32 %38 to i64
  %39 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8*, i8** %39, i64 %idxprom31
  %40 = load i8*, i8** %arrayidx32, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx33, align 1, !tbaa !11
  %conv34 = sext i8 %41 to i32
  switch i32 %conv34, label %sw.default [
    i32 98, label %sw.bb
    i32 99, label %sw.bb.35
    i32 66, label %sw.bb.36
    i32 67, label %sw.bb.37
    i32 100, label %sw.bb.38
    i32 103, label %sw.bb.48
    i32 80, label %sw.bb.65
    i32 88, label %sw.bb.77
  ]

sw.bb:                                            ; preds = %if.then.30
  store i32 0, i32* %compression, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.then.30
  store i32 1, i32* %compression, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.then.30
  store i32 0, i32* %compaction, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.then.30
  store i32 1, i32* %compaction, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.then.30
  %42 = load i32, i32* %atarg, align 4, !tbaa !5
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %atarg, align 4, !tbaa !5
  %43 = load i32, i32* %argc.addr, align 4, !tbaa !5
  %cmp39 = icmp eq i32 %inc, %43
  br i1 %cmp39, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %sw.bb.38
  %44 = load i32, i32* %atarg, align 4, !tbaa !5
  %sub = sub nsw i32 %44, 1
  %idxprom42 = sext i32 %sub to i64
  %45 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8*, i8** %45, i64 %idxprom42
  %46 = load i8*, i8** %arrayidx43, align 8, !tbaa !1
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.64, i32 0, i32 0), i8* %46) #9
  call void @exit(i32 1) #10
  unreachable

if.end.45:                                        ; preds = %sw.bb.38
  %47 = load i32, i32* %atarg, align 4, !tbaa !5
  %idxprom46 = sext i32 %47 to i64
  %48 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8*, i8** %48, i64 %idxprom46
  %49 = load i8*, i8** %arrayidx47, align 8, !tbaa !1
  store i8* %49, i8** %rom_prefix, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.then.30
  %50 = load i32, i32* %atarg, align 4, !tbaa !5
  %inc49 = add nsw i32 %50, 1
  store i32 %inc49, i32* %atarg, align 4, !tbaa !5
  %add50 = add nsw i32 %inc49, 1
  %51 = load i32, i32* %argc.addr, align 4, !tbaa !5
  %cmp51 = icmp eq i32 %add50, %51
  br i1 %cmp51, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %sw.bb.48
  %52 = load i32, i32* %atarg, align 4, !tbaa !5
  %sub54 = sub nsw i32 %52, 1
  %idxprom55 = sext i32 %sub54 to i64
  %53 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8*, i8** %53, i64 %idxprom55
  %54 = load i8*, i8** %arrayidx56, align 8, !tbaa !1
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.65, i32 0, i32 0), i8* %54) #9
  call void @exit(i32 1) #10
  unreachable

if.end.58:                                        ; preds = %sw.bb.48
  %55 = load i32, i32* %atarg, align 4, !tbaa !5
  %inc59 = add nsw i32 %55, 1
  store i32 %inc59, i32* %atarg, align 4, !tbaa !5
  %idxprom60 = sext i32 %55 to i64
  %56 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8*, i8** %56, i64 %idxprom60
  %57 = load i8*, i8** %arrayidx61, align 8, !tbaa !1
  store i8* %57, i8** %initfile, align 8, !tbaa !1
  %58 = load i32, i32* %atarg, align 4, !tbaa !5
  %idxprom62 = sext i32 %58 to i64
  %59 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8*, i8** %59, i64 %idxprom62
  %60 = load i8*, i8** %arrayidx63, align 8, !tbaa !1
  store i8* %60, i8** %gconfig_h, align 8, !tbaa !1
  %61 = load i8*, i8** %initfile, align 8, !tbaa !1
  %62 = load i8*, i8** %gconfig_h, align 8, !tbaa !1
  %63 = load i8*, i8** %os_prefix, align 8, !tbaa !1
  %64 = load i8*, i8** %rom_prefix, align 8, !tbaa !1
  %65 = load i32, i32* %compression, align 4, !tbaa !5
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %call64 = call i32 @process_initfile(i8* %61, i8* %62, i8* %63, i8* %64, i32 %65, i32* %inode_count, i32* %totlen, %struct._IO_FILE* %66) #9
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.then.30
  %67 = load i32, i32* %atarg, align 4, !tbaa !5
  %inc66 = add nsw i32 %67, 1
  store i32 %inc66, i32* %atarg, align 4, !tbaa !5
  %68 = load i32, i32* %argc.addr, align 4, !tbaa !5
  %cmp67 = icmp eq i32 %inc66, %68
  br i1 %cmp67, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %sw.bb.65
  %69 = load i32, i32* %atarg, align 4, !tbaa !5
  %sub70 = sub nsw i32 %69, 1
  %idxprom71 = sext i32 %sub70 to i64
  %70 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8*, i8** %70, i64 %idxprom71
  %71 = load i8*, i8** %arrayidx72, align 8, !tbaa !1
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.64, i32 0, i32 0), i8* %71) #9
  call void @exit(i32 1) #10
  unreachable

if.end.74:                                        ; preds = %sw.bb.65
  %72 = load i32, i32* %atarg, align 4, !tbaa !5
  %idxprom75 = sext i32 %72 to i64
  %73 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8*, i8** %73, i64 %idxprom75
  %74 = load i8*, i8** %arrayidx76, align 8, !tbaa !1
  store i8* %74, i8** %os_prefix, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.77:                                         ; preds = %if.then.30
  %75 = load i32, i32* %atarg, align 4, !tbaa !5
  %inc78 = add nsw i32 %75, 1
  store i32 %inc78, i32* %atarg, align 4, !tbaa !5
  %76 = load i32, i32* %argc.addr, align 4, !tbaa !5
  %cmp79 = icmp eq i32 %inc78, %76
  br i1 %cmp79, label %if.then.81, label %if.end.86

if.then.81:                                       ; preds = %sw.bb.77
  %77 = load i32, i32* %atarg, align 4, !tbaa !5
  %sub82 = sub nsw i32 %77, 1
  %idxprom83 = sext i32 %sub82 to i64
  %78 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8*, i8** %78, i64 %idxprom83
  %79 = load i8*, i8** %arrayidx84, align 8, !tbaa !1
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.64, i32 0, i32 0), i8* %79) #9
  call void @exit(i32 1) #10
  unreachable

if.end.86:                                        ; preds = %sw.bb.77
  %call87 = call noalias i8* @malloc(i64 16) #8
  %80 = bitcast i8* %call87 to %struct.Xlist_element_s*
  store %struct.Xlist_element_s* %80, %struct.Xlist_element_s** %Xlist_scan, align 8, !tbaa !1
  %81 = load %struct.Xlist_element_s*, %struct.Xlist_element_s** %Xlist_scan, align 8, !tbaa !1
  %cmp88 = icmp eq %struct.Xlist_element_s* %81, null
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.86
  call void @exit(i32 1) #10
  unreachable

if.end.91:                                        ; preds = %if.end.86
  %82 = load %struct.Xlist_element_s*, %struct.Xlist_element_s** %Xlist_head, align 8, !tbaa !1
  %83 = bitcast %struct.Xlist_element_s* %82 to i8*
  %84 = load %struct.Xlist_element_s*, %struct.Xlist_element_s** %Xlist_scan, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.Xlist_element_s, %struct.Xlist_element_s* %84, i32 0, i32 0
  store i8* %83, i8** %next, align 8, !tbaa !25
  %85 = load %struct.Xlist_element_s*, %struct.Xlist_element_s** %Xlist_scan, align 8, !tbaa !1
  store %struct.Xlist_element_s* %85, %struct.Xlist_element_s** %Xlist_head, align 8, !tbaa !1
  %86 = load i32, i32* %atarg, align 4, !tbaa !5
  %idxprom92 = sext i32 %86 to i64
  %87 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i8*, i8** %87, i64 %idxprom92
  %88 = load i8*, i8** %arrayidx93, align 8, !tbaa !1
  %89 = load %struct.Xlist_element_s*, %struct.Xlist_element_s** %Xlist_head, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.Xlist_element_s, %struct.Xlist_element_s* %89, i32 0, i32 1
  store i8* %88, i8** %path, align 8, !tbaa !23
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.30
  %90 = load i32, i32* %atarg, align 4, !tbaa !5
  %idxprom94 = sext i32 %90 to i64
  %91 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8*, i8** %91, i64 %idxprom94
  %92 = load i8*, i8** %arrayidx95, align 8, !tbaa !1
  %call96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0), i8* %92) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.91, %if.end.74, %if.end.58, %if.end.45, %sw.bb.37, %sw.bb.36, %sw.bb.35, %sw.bb
  br label %for.inc

if.end.97:                                        ; preds = %for.body
  %93 = load i32, i32* %atarg, align 4, !tbaa !5
  %idxprom98 = sext i32 %93 to i64
  %94 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i8*, i8** %94, i64 %idxprom98
  %95 = load i8*, i8** %arrayidx99, align 8, !tbaa !1
  %96 = load i8*, i8** %os_prefix, align 8, !tbaa !1
  %97 = load i8*, i8** %rom_prefix, align 8, !tbaa !1
  %98 = load %struct.Xlist_element_s*, %struct.Xlist_element_s** %Xlist_head, align 8, !tbaa !1
  %99 = load i32, i32* %compression, align 4, !tbaa !5
  %100 = load i32, i32* %compaction, align 4, !tbaa !5
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  call void @process_path(i8* %95, i8* %96, i8* %97, %struct.Xlist_element_s* %98, i32 %99, i32 %100, i32* %inode_count, i32* %totlen, %struct._IO_FILE* %101) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end.97, %sw.epilog
  %102 = load i32, i32* %atarg, align 4, !tbaa !5
  %inc100 = add nsw i32 %102, 1
  store i32 %inc100, i32* %atarg, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.67, i32 0, i32 0)) #9
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.107, %for.end
  %104 = load i32, i32* %i, align 4, !tbaa !5
  %105 = load i32, i32* %inode_count, align 4, !tbaa !5
  %cmp103 = icmp slt i32 %104, %105
  br i1 %cmp103, label %for.body.105, label %for.end.109

for.body.105:                                     ; preds = %for.cond.102
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %107 = load i32, i32* %i, align 4, !tbaa !5
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i32 %107) #9
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.body.105
  %108 = load i32, i32* %i, align 4, !tbaa !5
  %inc108 = add nsw i32 %108, 1
  store i32 %inc108, i32* %i, align 4, !tbaa !5
  br label %for.cond.102

for.end.109:                                      ; preds = %for.cond.102
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %call110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0)) #9
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %call111 = call i32 @fclose(%struct._IO_FILE* %110) #9
  %111 = load i32, i32* %totlen, align 4, !tbaa !5
  %call112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.70, i32 0, i32 0), i32 %111) #9
  %112 = bitcast %struct.Xlist_element_s** %Xlist_head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast %struct.Xlist_element_s** %Xlist_scan to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i32* %compaction to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %compression to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %atarg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i8** %gconfig_h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i8** %initfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast i8** %rom_prefix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast i8** %os_prefix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i8** %outfilename to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast %struct._IO_FILE** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i32* %totlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %inode_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind uwtable
define internal void @pscompact_copy(%struct.pscompstate* %psc, i32 %c, i32 %n) #0 {
entry:
  %psc.addr = alloca %struct.pscompstate*, align 8
  %c.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store %struct.pscompstate* %psc, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  store i32 %c, i32* %c.addr, align 4, !tbaa !5
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = load i32, i32* %c.addr, align 4, !tbaa !5
  %conv = trunc i32 %0 to i8
  %1 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %1, i32 0, i32 9
  %2 = load i8*, i8** %bufferout, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !11
  %3 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %3, i32 0, i32 4
  store i32 1, i32* %outend, align 4, !tbaa !44
  %4 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %4, i32 0, i32 3
  store i32 0, i32* %outpos, align 4, !tbaa !45
  %5 = load i32, i32* %n.addr, align 4, !tbaa !5
  %6 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %buffercopy = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %6, i32 0, i32 6
  store i32 %5, i32* %buffercopy, align 4, !tbaa !48
  %7 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %8, i32 0, i32 0
  store i32 4, i32* %state, align 4, !tbaa !26
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state2 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %9, i32 0, i32 0
  store i32 5, i32* %state2, align 4, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pscompact_copy2(%struct.pscompstate* %psc, i32 %c1, i32 %c2, i32 %n) #0 {
entry:
  %psc.addr = alloca %struct.pscompstate*, align 8
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store %struct.pscompstate* %psc, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  store i32 %c1, i32* %c1.addr, align 4, !tbaa !5
  store i32 %c2, i32* %c2.addr, align 4, !tbaa !5
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = load i32, i32* %c1.addr, align 4, !tbaa !5
  %conv = trunc i32 %0 to i8
  %1 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %1, i32 0, i32 9
  %2 = load i8*, i8** %bufferout, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !11
  %3 = load i32, i32* %c2.addr, align 4, !tbaa !5
  %conv1 = trunc i32 %3 to i8
  %4 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout2 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %4, i32 0, i32 9
  %5 = load i8*, i8** %bufferout2, align 8, !tbaa !29
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 %conv1, i8* %arrayidx3, align 1, !tbaa !11
  %6 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %6, i32 0, i32 4
  store i32 2, i32* %outend, align 4, !tbaa !44
  %7 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %7, i32 0, i32 3
  store i32 0, i32* %outpos, align 4, !tbaa !45
  %8 = load i32, i32* %n.addr, align 4, !tbaa !5
  %9 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %buffercopy = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %9, i32 0, i32 6
  store i32 %8, i32* %buffercopy, align 4, !tbaa !48
  %10 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %11, i32 0, i32 0
  store i32 4, i32* %state, align 4, !tbaa !26
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state5 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %12, i32 0, i32 0
  store i32 5, i32* %state5, align 4, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pscompact_copy3(%struct.pscompstate* %psc, i32 %c1, i32 %c2, i32 %c3, i32 %n) #0 {
entry:
  %psc.addr = alloca %struct.pscompstate*, align 8
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %c3.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store %struct.pscompstate* %psc, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  store i32 %c1, i32* %c1.addr, align 4, !tbaa !5
  store i32 %c2, i32* %c2.addr, align 4, !tbaa !5
  store i32 %c3, i32* %c3.addr, align 4, !tbaa !5
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = load i32, i32* %c1.addr, align 4, !tbaa !5
  %conv = trunc i32 %0 to i8
  %1 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %1, i32 0, i32 9
  %2 = load i8*, i8** %bufferout, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !11
  %3 = load i32, i32* %c2.addr, align 4, !tbaa !5
  %conv1 = trunc i32 %3 to i8
  %4 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout2 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %4, i32 0, i32 9
  %5 = load i8*, i8** %bufferout2, align 8, !tbaa !29
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 %conv1, i8* %arrayidx3, align 1, !tbaa !11
  %6 = load i32, i32* %c3.addr, align 4, !tbaa !5
  %conv4 = trunc i32 %6 to i8
  %7 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout5 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %7, i32 0, i32 9
  %8 = load i8*, i8** %bufferout5, align 8, !tbaa !29
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 2
  store i8 %conv4, i8* %arrayidx6, align 1, !tbaa !11
  %9 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %9, i32 0, i32 4
  store i32 3, i32* %outend, align 4, !tbaa !44
  %10 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %10, i32 0, i32 3
  store i32 0, i32* %outpos, align 4, !tbaa !45
  %11 = load i32, i32* %n.addr, align 4, !tbaa !5
  %12 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %buffercopy = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %12, i32 0, i32 6
  store i32 %11, i32* %buffercopy, align 4, !tbaa !48
  %13 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %14, i32 0, i32 0
  store i32 4, i32* %state, align 4, !tbaa !26
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state8 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %15, i32 0, i32 0
  store i32 5, i32* %state8, align 4, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pscompact_buffer(%struct.pscompstate* %psc, i32 %c) #0 {
entry:
  %psc.addr = alloca %struct.pscompstate*, align 8
  %c.addr = alloca i32, align 4
  store %struct.pscompstate* %psc, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  store i32 %c, i32* %c.addr, align 4, !tbaa !5
  %0 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %0, i32 0, i32 1
  %1 = load i32, i32* %inpos, align 4, !tbaa !32
  %2 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inmax = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %2, i32 0, i32 2
  %3 = load i32, i32* %inmax, align 4, !tbaa !30
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inmax1 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %4, i32 0, i32 2
  %5 = load i32, i32* %inmax1, align 4, !tbaa !30
  %mul = mul nsw i32 %5, 2
  store i32 %mul, i32* %inmax1, align 4, !tbaa !30
  %6 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %6, i32 0, i32 8
  %7 = load i8*, i8** %bufferin, align 8, !tbaa !28
  %8 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inmax2 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %8, i32 0, i32 2
  %9 = load i32, i32* %inmax2, align 4, !tbaa !30
  %mul3 = mul nsw i32 %9, 2
  %conv = sext i32 %mul3 to i64
  %call = call i8* @realloc(i8* %7, i64 %conv) #8
  %10 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin4 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %10, i32 0, i32 8
  store i8* %call, i8** %bufferin4, align 8, !tbaa !28
  %11 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin5 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %11, i32 0, i32 8
  %12 = load i8*, i8** %bufferin5, align 8, !tbaa !28
  %cmp6 = icmp eq i8* %12, null
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.82, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %14 = load i32, i32* %c.addr, align 4, !tbaa !5
  %conv11 = trunc i32 %14 to i8
  %15 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos12 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %15, i32 0, i32 1
  %16 = load i32, i32* %inpos12, align 4, !tbaa !32
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %inpos12, align 4, !tbaa !32
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin13 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %17, i32 0, i32 8
  %18 = load i8*, i8** %bufferin13, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  store i8 %conv11, i8* %arrayidx, align 1, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pscompact_isint(%struct.pscompstate* %psc, i32* %i) #0 {
entry:
  %retval = alloca i32, align 4
  %psc.addr = alloca %struct.pscompstate*, align 8
  %i.addr = alloca i32*, align 8
  %pos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %v = alloca i32, align 4
  store %struct.pscompstate* %psc, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  store i32* %i, i32** %i.addr, align 8, !tbaa !1
  %0 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %pos, align 4, !tbaa !5
  %1 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %1, i32 0, i32 8
  %2 = load i8*, i8** %bufferin, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 43
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin2 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %4, i32 0, i32 8
  %5 = load i8*, i8** %bufferin2, align 8, !tbaa !28
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx3, align 1, !tbaa !11
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv4, 45
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %pos, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load i32, i32* %pos, align 4, !tbaa !5
  %8 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %8, i32 0, i32 1
  %9 = load i32, i32* %inpos, align 4, !tbaa !32
  %cmp7 = icmp sge i32 %7, %9
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.196

if.end.10:                                        ; preds = %if.end
  %10 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos11 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %10, i32 0, i32 1
  %11 = load i32, i32* %inpos11, align 4, !tbaa !32
  %12 = load i32, i32* %pos, align 4, !tbaa !5
  %add = add nsw i32 %12, 3
  %cmp12 = icmp sgt i32 %11, %add
  br i1 %cmp12, label %land.lhs.true, label %if.end.158

land.lhs.true:                                    ; preds = %if.end.10
  %call = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0)) #11
  %cmp14 = icmp ult i64 %call, 3
  br i1 %cmp14, label %cond.true, label %cond.false.66

cond.true:                                        ; preds = %land.lhs.true
  %13 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.83 to i64)), i64 1), label %land.lhs.true.16, label %cond.false

land.lhs.true.16:                                 ; preds = %cond.true
  %call17 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0)) #11
  store i64 %call17, i64* %__s2_len, align 8, !tbaa !7
  %15 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp18 = icmp ult i64 %15, 4
  br i1 %cmp18, label %cond.true.20, label %cond.false

cond.true.20:                                     ; preds = %land.lhs.true.16
  %16 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin22 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %18, i32 0, i32 8
  %19 = load i8*, i8** %bufferin22, align 8, !tbaa !28
  %arrayidx23 = getelementptr inbounds i8, i8* %19, i64 %idxprom
  store i8* %arrayidx23, i8** %__s1, align 8, !tbaa !1
  %20 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx25, align 1, !tbaa !11
  %conv26 = zext i8 %22 to i32
  %23 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), align 1, !tbaa !11
  %conv27 = zext i8 %23 to i32
  %sub = sub nsw i32 %conv26, %conv27
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %24 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp28 = icmp ugt i64 %24, 0
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.60

land.lhs.true.30:                                 ; preds = %cond.true.20
  %25 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp31 = icmp eq i32 %25, 0
  br i1 %cmp31, label %if.then.33, label %if.end.60

if.then.33:                                       ; preds = %land.lhs.true.30
  %26 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx34, align 1, !tbaa !11
  %conv35 = zext i8 %27 to i32
  %28 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i64 1), align 1, !tbaa !11
  %conv36 = zext i8 %28 to i32
  %sub37 = sub nsw i32 %conv35, %conv36
  store i32 %sub37, i32* %__result, align 4, !tbaa !5
  %29 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp38 = icmp ugt i64 %29, 1
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.59

land.lhs.true.40:                                 ; preds = %if.then.33
  %30 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %30, 0
  br i1 %cmp41, label %if.then.43, label %if.end.59

if.then.43:                                       ; preds = %land.lhs.true.40
  %31 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %31, i64 2
  %32 = load i8, i8* %arrayidx44, align 1, !tbaa !11
  %conv45 = zext i8 %32 to i32
  %33 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i64 2), align 1, !tbaa !11
  %conv46 = zext i8 %33 to i32
  %sub47 = sub nsw i32 %conv45, %conv46
  store i32 %sub47, i32* %__result, align 4, !tbaa !5
  %34 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %cmp48 = icmp ugt i64 %34, 2
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.58

land.lhs.true.50:                                 ; preds = %if.then.43
  %35 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp51 = icmp eq i32 %35, 0
  br i1 %cmp51, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %land.lhs.true.50
  %36 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds i8, i8* %36, i64 3
  %37 = load i8, i8* %arrayidx54, align 1, !tbaa !11
  %conv55 = zext i8 %37 to i32
  %38 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i64 3), align 1, !tbaa !11
  %conv56 = zext i8 %38 to i32
  %sub57 = sub nsw i32 %conv55, %conv56
  store i32 %sub57, i32* %__result, align 4, !tbaa !5
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %land.lhs.true.50, %if.then.43
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %land.lhs.true.40, %if.then.33
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %land.lhs.true.30, %cond.true.20
  %39 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %39, i32* %tmp61, !tbaa !5
  %40 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %tmp61, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.16, %cond.true
  %43 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom62 = sext i32 %43 to i64
  %44 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin63 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %44, i32 0, i32 8
  %45 = load i8*, i8** %bufferin63, align 8, !tbaa !28
  %arrayidx64 = getelementptr inbounds i8, i8* %45, i64 %idxprom62
  %call65 = call i32 @strcmp(i8* %arrayidx64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.60
  %cond = phi i32 [ %42, %if.end.60 ], [ %call65, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %46 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = load i32, i32* %tmp, !tbaa !5
  br label %cond.end.71

cond.false.66:                                    ; preds = %land.lhs.true
  %49 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom67 = sext i32 %49 to i64
  %50 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin68 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %50, i32 0, i32 8
  %51 = load i8*, i8** %bufferin68, align 8, !tbaa !28
  %arrayidx69 = getelementptr inbounds i8, i8* %51, i64 %idxprom67
  %call70 = call i32 @strncmp(i8* %arrayidx69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i64 3) #11
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.66, %cond.end
  %cond72 = phi i32 [ %48, %cond.end ], [ %call70, %cond.false.66 ]
  %cmp73 = icmp eq i32 %cond72, 0
  br i1 %cmp73, label %if.then.75, label %if.end.158

if.then.75:                                       ; preds = %cond.end.71
  %52 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  store i32 0, i32* %v, align 4, !tbaa !5
  %53 = load i32, i32* %pos, align 4, !tbaa !5
  %add77 = add nsw i32 %53, 3
  store i32 %add77, i32* %pos, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.149, %if.then.75
  %54 = load i32, i32* %pos, align 4, !tbaa !5
  %55 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos78 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %55, i32 0, i32 1
  %56 = load i32, i32* %inpos78, align 4, !tbaa !32
  %cmp79 = icmp slt i32 %54, %56
  br i1 %cmp79, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %57 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom81 = sext i32 %57 to i64
  %58 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin82 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %58, i32 0, i32 8
  %59 = load i8*, i8** %bufferin82, align 8, !tbaa !28
  %arrayidx83 = getelementptr inbounds i8, i8* %59, i64 %idxprom81
  %60 = load i8, i8* %arrayidx83, align 1, !tbaa !11
  %conv84 = sext i8 %60 to i32
  %cmp85 = icmp sge i32 %conv84, 48
  br i1 %cmp85, label %land.lhs.true.87, label %if.else

land.lhs.true.87:                                 ; preds = %while.body
  %61 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom88 = sext i32 %61 to i64
  %62 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin89 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %62, i32 0, i32 8
  %63 = load i8*, i8** %bufferin89, align 8, !tbaa !28
  %arrayidx90 = getelementptr inbounds i8, i8* %63, i64 %idxprom88
  %64 = load i8, i8* %arrayidx90, align 1, !tbaa !11
  %conv91 = sext i8 %64 to i32
  %cmp92 = icmp sle i32 %conv91, 57
  br i1 %cmp92, label %if.then.94, label %if.else

if.then.94:                                       ; preds = %land.lhs.true.87
  %65 = load i32, i32* %v, align 4, !tbaa !5
  %mul = mul nsw i32 %65, 16
  %66 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom95 = sext i32 %66 to i64
  %67 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin96 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %67, i32 0, i32 8
  %68 = load i8*, i8** %bufferin96, align 8, !tbaa !28
  %arrayidx97 = getelementptr inbounds i8, i8* %68, i64 %idxprom95
  %69 = load i8, i8* %arrayidx97, align 1, !tbaa !11
  %conv98 = sext i8 %69 to i32
  %add99 = add nsw i32 %mul, %conv98
  %sub100 = sub nsw i32 %add99, 48
  store i32 %sub100, i32* %v, align 4, !tbaa !5
  br label %if.end.149

if.else:                                          ; preds = %land.lhs.true.87, %while.body
  %70 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom101 = sext i32 %70 to i64
  %71 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin102 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %71, i32 0, i32 8
  %72 = load i8*, i8** %bufferin102, align 8, !tbaa !28
  %arrayidx103 = getelementptr inbounds i8, i8* %72, i64 %idxprom101
  %73 = load i8, i8* %arrayidx103, align 1, !tbaa !11
  %conv104 = sext i8 %73 to i32
  %cmp105 = icmp sge i32 %conv104, 97
  br i1 %cmp105, label %land.lhs.true.107, label %if.else.123

land.lhs.true.107:                                ; preds = %if.else
  %74 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom108 = sext i32 %74 to i64
  %75 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin109 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %75, i32 0, i32 8
  %76 = load i8*, i8** %bufferin109, align 8, !tbaa !28
  %arrayidx110 = getelementptr inbounds i8, i8* %76, i64 %idxprom108
  %77 = load i8, i8* %arrayidx110, align 1, !tbaa !11
  %conv111 = sext i8 %77 to i32
  %cmp112 = icmp sle i32 %conv111, 102
  br i1 %cmp112, label %if.then.114, label %if.else.123

if.then.114:                                      ; preds = %land.lhs.true.107
  %78 = load i32, i32* %v, align 4, !tbaa !5
  %mul115 = mul nsw i32 %78, 16
  %79 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom116 = sext i32 %79 to i64
  %80 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin117 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %80, i32 0, i32 8
  %81 = load i8*, i8** %bufferin117, align 8, !tbaa !28
  %arrayidx118 = getelementptr inbounds i8, i8* %81, i64 %idxprom116
  %82 = load i8, i8* %arrayidx118, align 1, !tbaa !11
  %conv119 = sext i8 %82 to i32
  %add120 = add nsw i32 %mul115, %conv119
  %sub121 = sub nsw i32 %add120, 97
  %add122 = add nsw i32 %sub121, 10
  store i32 %add122, i32* %v, align 4, !tbaa !5
  br label %if.end.148

if.else.123:                                      ; preds = %land.lhs.true.107, %if.else
  %83 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom124 = sext i32 %83 to i64
  %84 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin125 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %84, i32 0, i32 8
  %85 = load i8*, i8** %bufferin125, align 8, !tbaa !28
  %arrayidx126 = getelementptr inbounds i8, i8* %85, i64 %idxprom124
  %86 = load i8, i8* %arrayidx126, align 1, !tbaa !11
  %conv127 = sext i8 %86 to i32
  %cmp128 = icmp sge i32 %conv127, 65
  br i1 %cmp128, label %land.lhs.true.130, label %if.else.146

land.lhs.true.130:                                ; preds = %if.else.123
  %87 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom131 = sext i32 %87 to i64
  %88 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin132 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %88, i32 0, i32 8
  %89 = load i8*, i8** %bufferin132, align 8, !tbaa !28
  %arrayidx133 = getelementptr inbounds i8, i8* %89, i64 %idxprom131
  %90 = load i8, i8* %arrayidx133, align 1, !tbaa !11
  %conv134 = sext i8 %90 to i32
  %cmp135 = icmp sle i32 %conv134, 70
  br i1 %cmp135, label %if.then.137, label %if.else.146

if.then.137:                                      ; preds = %land.lhs.true.130
  %91 = load i32, i32* %v, align 4, !tbaa !5
  %mul138 = mul nsw i32 %91, 16
  %92 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom139 = sext i32 %92 to i64
  %93 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin140 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %93, i32 0, i32 8
  %94 = load i8*, i8** %bufferin140, align 8, !tbaa !28
  %arrayidx141 = getelementptr inbounds i8, i8* %94, i64 %idxprom139
  %95 = load i8, i8* %arrayidx141, align 1, !tbaa !11
  %conv142 = sext i8 %95 to i32
  %add143 = add nsw i32 %mul138, %conv142
  %sub144 = sub nsw i32 %add143, 65
  %add145 = add nsw i32 %sub144, 10
  store i32 %add145, i32* %v, align 4, !tbaa !5
  br label %if.end.147

if.else.146:                                      ; preds = %land.lhs.true.130, %if.else.123
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.147:                                       ; preds = %if.then.137
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.then.114
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.94
  %96 = load i32, i32* %pos, align 4, !tbaa !5
  %inc = add nsw i32 %96, 1
  store i32 %inc, i32* %pos, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %97 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin150 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %97, i32 0, i32 8
  %98 = load i8*, i8** %bufferin150, align 8, !tbaa !28
  %arrayidx151 = getelementptr inbounds i8, i8* %98, i64 0
  %99 = load i8, i8* %arrayidx151, align 1, !tbaa !11
  %conv152 = sext i8 %99 to i32
  %cmp153 = icmp eq i32 %conv152, 45
  br i1 %cmp153, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %while.end
  %100 = load i32, i32* %v, align 4, !tbaa !5
  %sub156 = sub nsw i32 0, %100
  store i32 %sub156, i32* %v, align 4, !tbaa !5
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %while.end
  %101 = load i32, i32* %v, align 4, !tbaa !5
  %102 = load i32*, i32** %i.addr, align 8, !tbaa !1
  store i32 %101, i32* %102, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.157, %if.else.146
  %103 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  br label %cleanup.196

if.end.158:                                       ; preds = %cond.end.71, %if.end.10
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.158
  %104 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom159 = sext i32 %104 to i64
  %105 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin160 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %105, i32 0, i32 8
  %106 = load i8*, i8** %bufferin160, align 8, !tbaa !28
  %arrayidx161 = getelementptr inbounds i8, i8* %106, i64 %idxprom159
  %107 = load i8, i8* %arrayidx161, align 1, !tbaa !11
  %conv162 = sext i8 %107 to i32
  %cmp163 = icmp slt i32 %conv162, 48
  br i1 %cmp163, label %if.then.172, label %lor.lhs.false.165

lor.lhs.false.165:                                ; preds = %do.body
  %108 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom166 = sext i32 %108 to i64
  %109 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin167 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %109, i32 0, i32 8
  %110 = load i8*, i8** %bufferin167, align 8, !tbaa !28
  %arrayidx168 = getelementptr inbounds i8, i8* %110, i64 %idxprom166
  %111 = load i8, i8* %arrayidx168, align 1, !tbaa !11
  %conv169 = sext i8 %111 to i32
  %cmp170 = icmp sgt i32 %conv169, 57
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %lor.lhs.false.165, %do.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.196

if.end.173:                                       ; preds = %lor.lhs.false.165
  %112 = load i32, i32* %pos, align 4, !tbaa !5
  %inc174 = add nsw i32 %112, 1
  store i32 %inc174, i32* %pos, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %if.end.173
  %113 = load i32, i32* %pos, align 4, !tbaa !5
  %114 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos175 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %114, i32 0, i32 1
  %115 = load i32, i32* %inpos175, align 4, !tbaa !32
  %cmp176 = icmp slt i32 %113, %115
  br i1 %cmp176, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %116 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos178 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %116, i32 0, i32 1
  %117 = load i32, i32* %inpos178, align 4, !tbaa !32
  %118 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inmax = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %118, i32 0, i32 2
  %119 = load i32, i32* %inmax, align 4, !tbaa !30
  %cmp179 = icmp eq i32 %117, %119
  br i1 %cmp179, label %if.then.181, label %if.end.189

if.then.181:                                      ; preds = %do.end
  %120 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inmax182 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %120, i32 0, i32 2
  %121 = load i32, i32* %inmax182, align 4, !tbaa !30
  %mul183 = mul nsw i32 %121, 2
  store i32 %mul183, i32* %inmax182, align 4, !tbaa !30
  %122 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin184 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %122, i32 0, i32 8
  %123 = load i8*, i8** %bufferin184, align 8, !tbaa !28
  %124 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inmax185 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %124, i32 0, i32 2
  %125 = load i32, i32* %inmax185, align 4, !tbaa !30
  %conv186 = sext i32 %125 to i64
  %call187 = call i8* @realloc(i8* %123, i64 %conv186) #8
  %126 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin188 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %126, i32 0, i32 8
  store i8* %call187, i8** %bufferin188, align 8, !tbaa !28
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.181, %do.end
  %127 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos190 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %127, i32 0, i32 1
  %128 = load i32, i32* %inpos190, align 4, !tbaa !32
  %idxprom191 = sext i32 %128 to i64
  %129 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin192 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %129, i32 0, i32 8
  %130 = load i8*, i8** %bufferin192, align 8, !tbaa !28
  %arrayidx193 = getelementptr inbounds i8, i8* %130, i64 %idxprom191
  store i8 0, i8* %arrayidx193, align 1, !tbaa !11
  %131 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin194 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %131, i32 0, i32 8
  %132 = load i8*, i8** %bufferin194, align 8, !tbaa !28
  %call195 = call i32 @atoi(i8* %132) #11
  %133 = load i32*, i32** %i.addr, align 8, !tbaa !1
  store i32 %call195, i32* %133, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.196

cleanup.196:                                      ; preds = %if.end.189, %if.then.172, %cleanup, %if.then.9
  %134 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = load i32, i32* %retval
  ret i32 %135
}

; Function Attrs: nounwind uwtable
define internal i32 @pscompact_isfloat(%struct.pscompstate* %psc, float* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %psc.addr = alloca %struct.pscompstate*, align 8
  %f.addr = alloca float*, align 8
  %pos = alloca i32, align 4
  %point = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pscompstate* %psc, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  store float* %f, float** %f.addr, align 8, !tbaa !1
  %0 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %pos, align 4, !tbaa !5
  %1 = bitcast i32* %point to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %point, align 4, !tbaa !5
  %2 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %2, i32 0, i32 8
  %3 = load i8*, i8** %bufferin, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 43
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin2 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %5, i32 0, i32 8
  %6 = load i8*, i8** %bufferin2, align 8, !tbaa !28
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx3, align 1, !tbaa !11
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 45
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %pos, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %8 = load i32, i32* %pos, align 4, !tbaa !5
  %9 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %9, i32 0, i32 1
  %10 = load i32, i32* %inpos, align 4, !tbaa !32
  %cmp7 = icmp sge i32 %8, %10
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.10
  %11 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin11 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %12, i32 0, i32 8
  %13 = load i8*, i8** %bufferin11, align 8, !tbaa !28
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx12, align 1, !tbaa !11
  %conv13 = sext i8 %14 to i32
  %cmp14 = icmp sge i32 %conv13, 48
  br i1 %cmp14, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %15 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom16 = sext i32 %15 to i64
  %16 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin17 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %16, i32 0, i32 8
  %17 = load i8*, i8** %bufferin17, align 8, !tbaa !28
  %arrayidx18 = getelementptr inbounds i8, i8* %17, i64 %idxprom16
  %18 = load i8, i8* %arrayidx18, align 1, !tbaa !11
  %conv19 = sext i8 %18 to i32
  %cmp20 = icmp sle i32 %conv19, 57
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %land.lhs.true
  br label %if.end.35

if.else:                                          ; preds = %land.lhs.true, %do.body
  %19 = load i32, i32* %pos, align 4, !tbaa !5
  %idxprom23 = sext i32 %19 to i64
  %20 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin24 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %20, i32 0, i32 8
  %21 = load i8*, i8** %bufferin24, align 8, !tbaa !28
  %arrayidx25 = getelementptr inbounds i8, i8* %21, i64 %idxprom23
  %22 = load i8, i8* %arrayidx25, align 1, !tbaa !11
  %conv26 = sext i8 %22 to i32
  %cmp27 = icmp eq i32 %conv26, 46
  br i1 %cmp27, label %land.lhs.true.29, label %if.else.33

land.lhs.true.29:                                 ; preds = %if.else
  %23 = load i32, i32* %point, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %23, 0
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %land.lhs.true.29
  store i32 1, i32* %point, align 4, !tbaa !5
  br label %if.end.34

if.else.33:                                       ; preds = %land.lhs.true.29, %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.then.32
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.22
  %24 = load i32, i32* %pos, align 4, !tbaa !5
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %pos, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %if.end.35
  %25 = load i32, i32* %pos, align 4, !tbaa !5
  %26 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos36 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %26, i32 0, i32 1
  %27 = load i32, i32* %inpos36, align 4, !tbaa !32
  %cmp37 = icmp slt i32 %25, %27
  br i1 %cmp37, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos39 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %28, i32 0, i32 1
  %29 = load i32, i32* %inpos39, align 4, !tbaa !32
  %30 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inmax = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %30, i32 0, i32 2
  %31 = load i32, i32* %inmax, align 4, !tbaa !30
  %cmp40 = icmp eq i32 %29, %31
  br i1 %cmp40, label %if.then.42, label %if.end.48

if.then.42:                                       ; preds = %do.end
  %32 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inmax43 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %32, i32 0, i32 2
  %33 = load i32, i32* %inmax43, align 4, !tbaa !30
  %mul = mul nsw i32 %33, 2
  store i32 %mul, i32* %inmax43, align 4, !tbaa !30
  %34 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin44 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %34, i32 0, i32 8
  %35 = load i8*, i8** %bufferin44, align 8, !tbaa !28
  %36 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inmax45 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %36, i32 0, i32 2
  %37 = load i32, i32* %inmax45, align 4, !tbaa !30
  %conv46 = sext i32 %37 to i64
  %call = call i8* @realloc(i8* %35, i64 %conv46) #8
  %38 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin47 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %38, i32 0, i32 8
  store i8* %call, i8** %bufferin47, align 8, !tbaa !28
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.42, %do.end
  %39 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos49 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %39, i32 0, i32 1
  %40 = load i32, i32* %inpos49, align 4, !tbaa !32
  %idxprom50 = sext i32 %40 to i64
  %41 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin51 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %41, i32 0, i32 8
  %42 = load i8*, i8** %bufferin51, align 8, !tbaa !28
  %arrayidx52 = getelementptr inbounds i8, i8* %42, i64 %idxprom50
  store i8 0, i8* %arrayidx52, align 1, !tbaa !11
  %43 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin53 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %43, i32 0, i32 8
  %44 = load i8*, i8** %bufferin53, align 8, !tbaa !28
  %call54 = call double @atof(i8* %44) #11
  %conv55 = fptrunc double %call54 to float
  %45 = load float*, float** %f.addr, align 8, !tbaa !1
  store float %conv55, float* %45, align 4, !tbaa !46
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.48, %if.else.33, %if.then.9
  %46 = bitcast i32* %point to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @pscompact_isname(%struct.pscompstate* %psc, i32* %i) #0 {
entry:
  %retval = alloca i32, align 4
  %psc.addr = alloca %struct.pscompstate*, align 8
  %i.addr = alloca i32*, align 8
  %off = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.pscompstate* %psc, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  store i32* %i, i32** %i.addr, align 8, !tbaa !1
  %0 = bitcast i32* %off to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %off, align 4, !tbaa !5
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %2, i32 0, i32 8
  %3 = load i8*, i8** %bufferin, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %off, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %n, align 4, !tbaa !5
  %conv2 = sext i32 %5 to i64
  %cmp3 = icmp ult i64 %conv2, 226
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %n, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [226 x i8*], [226 x i8*]* @pscompact_names, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  %8 = load i32, i32* %off, align 4, !tbaa !5
  %idxprom6 = sext i32 %8 to i64
  %9 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin7 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %9, i32 0, i32 8
  %10 = load i8*, i8** %bufferin7, align 8, !tbaa !28
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 %idxprom6
  %11 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %11, i32 0, i32 1
  %12 = load i32, i32* %inpos, align 4, !tbaa !32
  %13 = load i32, i32* %off, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %13
  %conv9 = sext i32 %sub to i64
  %call = call i32 @strncmp(i8* %7, i8* %arrayidx8, i64 %conv9) #11
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %for.body
  %14 = load i32, i32* %off, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.12
  %15 = load i32, i32* %n, align 4, !tbaa !5
  %sub14 = sub nsw i32 -1, %15
  %16 = load i32*, i32** %i.addr, align 8, !tbaa !1
  store i32 %sub14, i32* %16, align 4, !tbaa !5
  br label %if.end.15

if.else:                                          ; preds = %if.then.12
  %17 = load i32, i32* %n, align 4, !tbaa !5
  %18 = load i32*, i32** %i.addr, align 8, !tbaa !1
  store i32 %17, i32* %18, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %19 = load i32, i32* %n, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %n, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.15
  %20 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %off to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal void @pscompact_copyinout(%struct.pscompstate* %psc) #0 {
entry:
  %psc.addr = alloca %struct.pscompstate*, align 8
  store %struct.pscompstate* %psc, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %0 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outmax = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %0, i32 0, i32 5
  %1 = load i32, i32* %outmax, align 4, !tbaa !31
  %2 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %2, i32 0, i32 1
  %3 = load i32, i32* %inpos, align 4, !tbaa !32
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %4 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inmax = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %4, i32 0, i32 2
  %5 = load i32, i32* %inmax, align 4, !tbaa !30
  %6 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outmax1 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %6, i32 0, i32 5
  store i32 %5, i32* %outmax1, align 4, !tbaa !31
  %7 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %7, i32 0, i32 9
  %8 = load i8*, i8** %bufferout, align 8, !tbaa !29
  %9 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outmax2 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %9, i32 0, i32 5
  %10 = load i32, i32* %outmax2, align 4, !tbaa !31
  %conv = sext i32 %10 to i64
  %call = call i8* @realloc(i8* %8, i64 %conv) #8
  %11 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout3 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %11, i32 0, i32 9
  store i8* %call, i8** %bufferout3, align 8, !tbaa !29
  %12 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout4 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %12, i32 0, i32 9
  %13 = load i8*, i8** %bufferout4, align 8, !tbaa !29
  %cmp5 = icmp eq i8* %13, null
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.82, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %15 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferout10 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %15, i32 0, i32 9
  %16 = load i8*, i8** %bufferout10, align 8, !tbaa !29
  %17 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %17, i32 0, i32 8
  %18 = load i8*, i8** %bufferin, align 8, !tbaa !28
  %19 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos11 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %19, i32 0, i32 1
  %20 = load i32, i32* %inpos11, align 4, !tbaa !32
  %conv12 = sext i32 %20 to i64
  %call13 = call i8* @memcpy(i8* %16, i8* %18, i64 %conv12) #8
  %21 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outpos = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %21, i32 0, i32 3
  store i32 0, i32* %outpos, align 4, !tbaa !45
  %22 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos14 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %22, i32 0, i32 1
  %23 = load i32, i32* %inpos14, align 4, !tbaa !32
  %24 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %outend = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %24, i32 0, i32 4
  store i32 %23, i32* %outend, align 4, !tbaa !44
  %25 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %state = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %25, i32 0, i32 0
  store i32 4, i32* %state, align 4, !tbaa !26
  %26 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos15 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %26, i32 0, i32 1
  store i32 0, i32* %inpos15, align 4, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pscompact_bufferatstart(%struct.pscompstate* %psc, i32 %c) #0 {
entry:
  %psc.addr = alloca %struct.pscompstate*, align 8
  %c.addr = alloca i32, align 4
  store %struct.pscompstate* %psc, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  store i32 %c, i32* %c.addr, align 4, !tbaa !5
  %0 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %0, i32 0, i32 1
  %1 = load i32, i32* %inpos, align 4, !tbaa !32
  %2 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inmax = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %2, i32 0, i32 2
  %3 = load i32, i32* %inmax, align 4, !tbaa !30
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %4 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inmax1 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %4, i32 0, i32 2
  %5 = load i32, i32* %inmax1, align 4, !tbaa !30
  %mul = mul nsw i32 %5, 2
  store i32 %mul, i32* %inmax1, align 4, !tbaa !30
  %6 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %6, i32 0, i32 8
  %7 = load i8*, i8** %bufferin, align 8, !tbaa !28
  %8 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inmax2 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %8, i32 0, i32 2
  %9 = load i32, i32* %inmax2, align 4, !tbaa !30
  %mul3 = mul nsw i32 %9, 2
  %conv = sext i32 %mul3 to i64
  %call = call i8* @realloc(i8* %7, i64 %conv) #8
  %10 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin4 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %10, i32 0, i32 8
  store i8* %call, i8** %bufferin4, align 8, !tbaa !28
  %11 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin5 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %11, i32 0, i32 8
  %12 = load i8*, i8** %bufferin5, align 8, !tbaa !28
  %cmp6 = icmp eq i8* %12, null
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.82, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %14 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin11 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %14, i32 0, i32 8
  %15 = load i8*, i8** %bufferin11, align 8, !tbaa !28
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin12 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %16, i32 0, i32 8
  %17 = load i8*, i8** %bufferin12, align 8, !tbaa !28
  %18 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos13 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %18, i32 0, i32 1
  %19 = load i32, i32* %inpos13, align 4, !tbaa !32
  %conv14 = sext i32 %19 to i64
  %call15 = call i8* @memmove(i8* %add.ptr, i8* %17, i64 %conv14) #8
  %20 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos16 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %20, i32 0, i32 1
  %21 = load i32, i32* %inpos16, align 4, !tbaa !32
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %inpos16, align 4, !tbaa !32
  %22 = load i32, i32* %c.addr, align 4, !tbaa !5
  %conv17 = trunc i32 %22 to i8
  %23 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin18 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %23, i32 0, i32 8
  %24 = load i8*, i8** %bufferin18, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %conv17, i8* %arrayidx, align 1, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pscompact_copyinout_bin(%struct.pscompstate* %psc) #0 {
entry:
  %psc.addr = alloca %struct.pscompstate*, align 8
  store %struct.pscompstate* %psc, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %0 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  call void @pscompact_copyinout(%struct.pscompstate* %0) #9
  %1 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %noescape = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %1, i32 0, i32 16
  store i32 1, i32* %noescape, align 4, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pscompact_hex2ascii(%struct.pscompstate* %psc) #0 {
entry:
  %psc.addr = alloca %struct.pscompstate*, align 8
  %i = alloca i32, align 4
  %o = alloca i32, align 4
  %v = alloca i32, align 4
  store %struct.pscompstate* %psc, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  %1 = bitcast i32* %o to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %o, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.132, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !5
  %3 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %3, i32 0, i32 1
  %4 = load i32, i32* %inpos, align 4, !tbaa !32
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %v, align 4, !tbaa !5
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %7, i32 0, i32 8
  %8 = load i8*, i8** %bufferin, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %conv = sext i8 %9 to i32
  %cmp1 = icmp sge i32 %conv, 48
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin4 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %11, i32 0, i32 8
  %12 = load i8*, i8** %bufferin4, align 8, !tbaa !28
  %arrayidx5 = getelementptr inbounds i8, i8* %12, i64 %idxprom3
  %13 = load i8, i8* %arrayidx5, align 1, !tbaa !11
  %conv6 = sext i8 %13 to i32
  %cmp7 = icmp sle i32 %conv6, 57
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin10 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %15, i32 0, i32 8
  %16 = load i8*, i8** %bufferin10, align 8, !tbaa !28
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i64 %idxprom9
  %17 = load i8, i8* %arrayidx11, align 1, !tbaa !11
  %conv12 = sext i8 %17 to i32
  %sub = sub nsw i32 %conv12, 48
  %shl = shl i32 %sub, 4
  store i32 %shl, i32* %v, align 4, !tbaa !5
  br label %if.end.57

if.else:                                          ; preds = %land.lhs.true, %while.body
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin14 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %19, i32 0, i32 8
  %20 = load i8*, i8** %bufferin14, align 8, !tbaa !28
  %arrayidx15 = getelementptr inbounds i8, i8* %20, i64 %idxprom13
  %21 = load i8, i8* %arrayidx15, align 1, !tbaa !11
  %conv16 = sext i8 %21 to i32
  %cmp17 = icmp sge i32 %conv16, 97
  br i1 %cmp17, label %land.lhs.true.19, label %if.else.33

land.lhs.true.19:                                 ; preds = %if.else
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %22 to i64
  %23 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin21 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %23, i32 0, i32 8
  %24 = load i8*, i8** %bufferin21, align 8, !tbaa !28
  %arrayidx22 = getelementptr inbounds i8, i8* %24, i64 %idxprom20
  %25 = load i8, i8* %arrayidx22, align 1, !tbaa !11
  %conv23 = sext i8 %25 to i32
  %cmp24 = icmp sle i32 %conv23, 102
  br i1 %cmp24, label %if.then.26, label %if.else.33

if.then.26:                                       ; preds = %land.lhs.true.19
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %26 to i64
  %27 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin28 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %27, i32 0, i32 8
  %28 = load i8*, i8** %bufferin28, align 8, !tbaa !28
  %arrayidx29 = getelementptr inbounds i8, i8* %28, i64 %idxprom27
  %29 = load i8, i8* %arrayidx29, align 1, !tbaa !11
  %conv30 = sext i8 %29 to i32
  %sub31 = sub nsw i32 %conv30, 97
  %add = add nsw i32 %sub31, 10
  %shl32 = shl i32 %add, 4
  store i32 %shl32, i32* %v, align 4, !tbaa !5
  br label %if.end.56

if.else.33:                                       ; preds = %land.lhs.true.19, %if.else
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %30 to i64
  %31 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin35 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %31, i32 0, i32 8
  %32 = load i8*, i8** %bufferin35, align 8, !tbaa !28
  %arrayidx36 = getelementptr inbounds i8, i8* %32, i64 %idxprom34
  %33 = load i8, i8* %arrayidx36, align 1, !tbaa !11
  %conv37 = sext i8 %33 to i32
  %cmp38 = icmp sge i32 %conv37, 65
  br i1 %cmp38, label %land.lhs.true.40, label %if.else.55

land.lhs.true.40:                                 ; preds = %if.else.33
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %34 to i64
  %35 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin42 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %35, i32 0, i32 8
  %36 = load i8*, i8** %bufferin42, align 8, !tbaa !28
  %arrayidx43 = getelementptr inbounds i8, i8* %36, i64 %idxprom41
  %37 = load i8, i8* %arrayidx43, align 1, !tbaa !11
  %conv44 = sext i8 %37 to i32
  %cmp45 = icmp sle i32 %conv44, 70
  br i1 %cmp45, label %if.then.47, label %if.else.55

if.then.47:                                       ; preds = %land.lhs.true.40
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %38 to i64
  %39 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin49 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %39, i32 0, i32 8
  %40 = load i8*, i8** %bufferin49, align 8, !tbaa !28
  %arrayidx50 = getelementptr inbounds i8, i8* %40, i64 %idxprom48
  %41 = load i8, i8* %arrayidx50, align 1, !tbaa !11
  %conv51 = sext i8 %41 to i32
  %sub52 = sub nsw i32 %conv51, 65
  %add53 = add nsw i32 %sub52, 10
  %shl54 = shl i32 %add53, 4
  store i32 %shl54, i32* %v, align 4, !tbaa !5
  br label %if.end

if.else.55:                                       ; preds = %land.lhs.true.40, %if.else.33
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.310, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.end:                                           ; preds = %if.then.47
  br label %if.end.56

if.end.56:                                        ; preds = %if.end, %if.then.26
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %45 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos58 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %45, i32 0, i32 1
  %46 = load i32, i32* %inpos58, align 4, !tbaa !32
  %cmp59 = icmp eq i32 %44, %46
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %if.end.57
  br label %if.end.132

if.else.62:                                       ; preds = %if.end.57
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %47 to i64
  %48 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin64 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %48, i32 0, i32 8
  %49 = load i8*, i8** %bufferin64, align 8, !tbaa !28
  %arrayidx65 = getelementptr inbounds i8, i8* %49, i64 %idxprom63
  %50 = load i8, i8* %arrayidx65, align 1, !tbaa !11
  %conv66 = sext i8 %50 to i32
  %cmp67 = icmp sge i32 %conv66, 48
  br i1 %cmp67, label %land.lhs.true.69, label %if.else.83

land.lhs.true.69:                                 ; preds = %if.else.62
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom70 = sext i32 %51 to i64
  %52 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin71 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %52, i32 0, i32 8
  %53 = load i8*, i8** %bufferin71, align 8, !tbaa !28
  %arrayidx72 = getelementptr inbounds i8, i8* %53, i64 %idxprom70
  %54 = load i8, i8* %arrayidx72, align 1, !tbaa !11
  %conv73 = sext i8 %54 to i32
  %cmp74 = icmp sle i32 %conv73, 57
  br i1 %cmp74, label %if.then.76, label %if.else.83

if.then.76:                                       ; preds = %land.lhs.true.69
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom77 = sext i32 %55 to i64
  %56 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin78 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %56, i32 0, i32 8
  %57 = load i8*, i8** %bufferin78, align 8, !tbaa !28
  %arrayidx79 = getelementptr inbounds i8, i8* %57, i64 %idxprom77
  %58 = load i8, i8* %arrayidx79, align 1, !tbaa !11
  %conv80 = sext i8 %58 to i32
  %sub81 = sub nsw i32 %conv80, 48
  %59 = load i32, i32* %v, align 4, !tbaa !5
  %add82 = add nsw i32 %59, %sub81
  store i32 %add82, i32* %v, align 4, !tbaa !5
  br label %if.end.131

if.else.83:                                       ; preds = %land.lhs.true.69, %if.else.62
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom84 = sext i32 %60 to i64
  %61 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin85 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %61, i32 0, i32 8
  %62 = load i8*, i8** %bufferin85, align 8, !tbaa !28
  %arrayidx86 = getelementptr inbounds i8, i8* %62, i64 %idxprom84
  %63 = load i8, i8* %arrayidx86, align 1, !tbaa !11
  %conv87 = sext i8 %63 to i32
  %cmp88 = icmp sge i32 %conv87, 97
  br i1 %cmp88, label %land.lhs.true.90, label %if.else.105

land.lhs.true.90:                                 ; preds = %if.else.83
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom91 = sext i32 %64 to i64
  %65 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin92 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %65, i32 0, i32 8
  %66 = load i8*, i8** %bufferin92, align 8, !tbaa !28
  %arrayidx93 = getelementptr inbounds i8, i8* %66, i64 %idxprom91
  %67 = load i8, i8* %arrayidx93, align 1, !tbaa !11
  %conv94 = sext i8 %67 to i32
  %cmp95 = icmp sle i32 %conv94, 102
  br i1 %cmp95, label %if.then.97, label %if.else.105

if.then.97:                                       ; preds = %land.lhs.true.90
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom98 = sext i32 %68 to i64
  %69 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin99 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %69, i32 0, i32 8
  %70 = load i8*, i8** %bufferin99, align 8, !tbaa !28
  %arrayidx100 = getelementptr inbounds i8, i8* %70, i64 %idxprom98
  %71 = load i8, i8* %arrayidx100, align 1, !tbaa !11
  %conv101 = sext i8 %71 to i32
  %sub102 = sub nsw i32 %conv101, 97
  %add103 = add nsw i32 %sub102, 10
  %72 = load i32, i32* %v, align 4, !tbaa !5
  %add104 = add nsw i32 %72, %add103
  store i32 %add104, i32* %v, align 4, !tbaa !5
  br label %if.end.130

if.else.105:                                      ; preds = %land.lhs.true.90, %if.else.83
  %73 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom106 = sext i32 %73 to i64
  %74 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin107 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %74, i32 0, i32 8
  %75 = load i8*, i8** %bufferin107, align 8, !tbaa !28
  %arrayidx108 = getelementptr inbounds i8, i8* %75, i64 %idxprom106
  %76 = load i8, i8* %arrayidx108, align 1, !tbaa !11
  %conv109 = sext i8 %76 to i32
  %cmp110 = icmp sge i32 %conv109, 65
  br i1 %cmp110, label %land.lhs.true.112, label %if.else.127

land.lhs.true.112:                                ; preds = %if.else.105
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom113 = sext i32 %77 to i64
  %78 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin114 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %78, i32 0, i32 8
  %79 = load i8*, i8** %bufferin114, align 8, !tbaa !28
  %arrayidx115 = getelementptr inbounds i8, i8* %79, i64 %idxprom113
  %80 = load i8, i8* %arrayidx115, align 1, !tbaa !11
  %conv116 = sext i8 %80 to i32
  %cmp117 = icmp sle i32 %conv116, 70
  br i1 %cmp117, label %if.then.119, label %if.else.127

if.then.119:                                      ; preds = %land.lhs.true.112
  %81 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom120 = sext i32 %81 to i64
  %82 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin121 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %82, i32 0, i32 8
  %83 = load i8*, i8** %bufferin121, align 8, !tbaa !28
  %arrayidx122 = getelementptr inbounds i8, i8* %83, i64 %idxprom120
  %84 = load i8, i8* %arrayidx122, align 1, !tbaa !11
  %conv123 = sext i8 %84 to i32
  %sub124 = sub nsw i32 %conv123, 65
  %add125 = add nsw i32 %sub124, 10
  %85 = load i32, i32* %v, align 4, !tbaa !5
  %add126 = add nsw i32 %85, %add125
  store i32 %add126, i32* %v, align 4, !tbaa !5
  br label %if.end.129

if.else.127:                                      ; preds = %land.lhs.true.112, %if.else.105
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.310, i32 0, i32 0)) #9
  call void @exit(i32 1) #10
  unreachable

if.end.129:                                       ; preds = %if.then.119
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.97
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.76
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.61
  %87 = load i32, i32* %i, align 4, !tbaa !5
  %inc133 = add nsw i32 %87, 1
  store i32 %inc133, i32* %i, align 4, !tbaa !5
  %88 = load i32, i32* %v, align 4, !tbaa !5
  %conv134 = trunc i32 %88 to i8
  %89 = load i32, i32* %o, align 4, !tbaa !5
  %inc135 = add nsw i32 %89, 1
  store i32 %inc135, i32* %o, align 4, !tbaa !5
  %idxprom136 = sext i32 %89 to i64
  %90 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %bufferin137 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %90, i32 0, i32 8
  %91 = load i8*, i8** %bufferin137, align 8, !tbaa !28
  %arrayidx138 = getelementptr inbounds i8, i8* %91, i64 %idxprom136
  store i8 %conv134, i8* %arrayidx138, align 1, !tbaa !11
  %92 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %93 = load i32, i32* %o, align 4, !tbaa !5
  %94 = load %struct.pscompstate*, %struct.pscompstate** %psc.addr, align 8, !tbaa !1
  %inpos139 = getelementptr inbounds %struct.pscompstate, %struct.pscompstate* %94, i32 0, i32 1
  store i32 %93, i32* %inpos139, align 4, !tbaa !32
  %95 = bitcast i32* %o to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #7 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #8
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally double @atof(i8* nonnull %__nptr) #7 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call double @strtod(i8* %0, i8** null) #8
  ret double %call
}

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #2

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin noreturn nounwind }
attributes #11 = { nobuiltin nounwind readonly }
attributes #12 = { nobuiltin nounwind readnone }

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
!10 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!11 = !{!3, !3, i64 0}
!12 = !{!13, !3, i64 0}
!13 = !{!"", !3, i64 0, !3, i64 1, !3, i64 2, !3, i64 3}
!14 = !{!13, !3, i64 1}
!15 = !{!13, !3, i64 2}
!16 = !{!13, !3, i64 3}
!17 = !{!18, !8, i64 0}
!18 = !{!"romfs_inode_s", !8, i64 0, !8, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!19 = !{!18, !2, i64 32}
!20 = !{!18, !2, i64 24}
!21 = !{!18, !8, i64 8}
!22 = !{!18, !2, i64 16}
!23 = !{!24, !2, i64 8}
!24 = !{!"Xlist_element_s", !2, i64 0, !2, i64 8}
!25 = !{!24, !2, i64 0}
!26 = !{!27, !3, i64 0}
!27 = !{!"", !3, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100}
!28 = !{!27, !2, i64 32}
!29 = !{!27, !2, i64 40}
!30 = !{!27, !6, i64 8}
!31 = !{!27, !6, i64 20}
!32 = !{!27, !6, i64 4}
!33 = !{!27, !6, i64 28}
!34 = !{!27, !2, i64 48}
!35 = !{!27, !2, i64 56}
!36 = !{!27, !2, i64 64}
!37 = !{!27, !2, i64 72}
!38 = !{!27, !6, i64 80}
!39 = !{!27, !6, i64 84}
!40 = !{!27, !6, i64 88}
!41 = !{!27, !6, i64 92}
!42 = !{!27, !6, i64 96}
!43 = !{!27, !6, i64 100}
!44 = !{!27, !6, i64 16}
!45 = !{!27, !6, i64 12}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !3, i64 0}
!48 = !{!27, !6, i64 24}
!49 = !{!50, !2, i64 0}
!50 = !{!"", !2, i64 0, !6, i64 8, !6, i64 12}
!51 = !{!50, !6, i64 8}
!52 = !{!50, !6, i64 12}
!53 = !{!54, !2, i64 0}
!54 = !{!"in_block_s", !2, i64 0, !3, i64 8}
!55 = !{!56, !56, i64 0}
!56 = !{!"short", !3, i64 0}
