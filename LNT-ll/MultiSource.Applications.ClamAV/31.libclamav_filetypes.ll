; ModuleID = './MultiSource.Applications.ClamAV/31.libclamav_filetypes.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_magic_s = type { i64, i8*, i64, i8*, i32 }
%struct.cli_smagic_s = type { i8*, i8*, i32 }
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cli_matcher = type { i16, i8, i8*, %struct.cli_bm_patt**, i32*, i32, i8, i8, %struct.cli_ac_node*, %struct.cli_ac_node**, %struct.cli_ac_patt**, i32, i32, i32 }
%struct.cli_bm_patt = type { i8*, i8*, i16, i16, i8*, i8*, i8, %struct.cli_bm_patt*, i16 }
%struct.cli_ac_node = type { i8, i8, %struct.cli_ac_patt*, %struct.cli_ac_node**, %struct.cli_ac_node* }
%struct.cli_ac_patt = type { i16*, i16*, i16, i16, i8, i32, i32, i8*, i8*, i32, i16, i16, i16, i16, %struct.cli_ac_alt**, i8, i16, %struct.cli_ac_patt*, %struct.cli_ac_patt* }
%struct.cli_ac_alt = type { i8, i8*, i16, i16, %struct.cli_ac_alt* }
%struct.cli_ac_data = type { i32, i32*** }
%struct.entity_conv = type { i8*, i8*, i32, i16, %struct.hashtable*, i8, i8, i8, i8, i32, [4 x i8], i64, i64, i8, [24 x i8], %struct.m_area_tag, %struct.m_area_tag, %struct.m_area_tag, i32 }
%struct.hashtable = type { %struct.element*, i64, i64, i64 }
%struct.element = type { i8*, i64 }
%struct.m_area_tag = type { i8*, i64, i64 }
%struct.cli_matched_type = type { i32, i64, i16, %struct.cli_matched_type* }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@cli_magic = internal constant [64 x %struct.cli_magic_s] [%struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i64 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i32 502 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 503 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 510 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 508 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 508 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i64 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 507 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 509 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i64 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 511 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i32 512 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 514 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 515 }, %struct.cli_magic_s { i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i32 516 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 517 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.37, i32 0, i32 0), i64 45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 520 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i64 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), i64 13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i64 13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i64 14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0), i64 17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i64 17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i64 15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i64 11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i64 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i64 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i64 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0), i64 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i32 0, i32 0), i64 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0), i64 13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), i64 15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i64 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i64 14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i32 0, i32 0), i64 13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.73, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i32 0, i32 0), i64 26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0), i32 529 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i32 521 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i64 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i32 524 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i32 525 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), i32 518 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0), i64 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i32 518 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i32 518 }, %struct.cli_magic_s { i64 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i32 518 }, %struct.cli_magic_s { i64 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i32 518 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i32 518 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i32 519 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i32 519 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0), i32 513 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), i32 523 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.97, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i32 522 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0), i32 527 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.102, i32 0, i32 0), i32 504 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.104, i32 0, i32 0), i32 504 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i32 504 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0), i32 504 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), i64 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i32 0, i32 0), i32 504 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i32 0, i32 0), i64 11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i32 0, i32 0), i32 504 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i32 0, i32 0), i64 7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i32 0, i32 0), i32 504 }, %struct.cli_magic_s { i64 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.115, i32 0, i32 0), i32 504 }, %struct.cli_magic_s { i64 0, i8* null, i64 0, i8* null, i32 501 }], align 16
@.str = private unnamed_addr constant [20 x i8] c"Recognized %s file\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"cli_filetype2: Error initializing entity converter\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Recognized old fashioned tar file\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Recognized POSIX tar file\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"CD001\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Recognized ISO 9660 CD-ROM data\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"CDROM\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Recognized High Sierra CD-ROM data\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"cli_addtypesigs: Need to allocate AC trie in engine->root[0]\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"cli_addtypesigs: Can't initialise AC pattern matcher\0A\00", align 1
@cli_ac_mindepth = external global i8, align 1
@cli_ac_maxdepth = external global i8, align 1
@cli_smagic = internal constant [44 x %struct.cli_smagic_s] [%struct.cli_smagic_s { i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i32 529 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i32 529 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i32 529 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i32 529 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 528 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.153, i32 0, i32 0), i32 532 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i32 0, i32 0), i32 531 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.157, i32 0, i32 0), i32 533 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i32 534 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i32 534 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i32 534 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.163, i32 0, i32 0), i32 535 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.165, i32 0, i32 0), i32 536 }, %struct.cli_smagic_s { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.167, i32 0, i32 0), i32 502 }, %struct.cli_smagic_s { i8* null, i8* null, i32 501 }], align 16
@.str.11 = private unnamed_addr constant [50 x i8] c"cli_addtypesigs: Problem adding signature for %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"MZ\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"DOS/W32 executable/library/driver\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ELF\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Rar!\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"RAR\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"PK\03\04\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ZIP\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"PK00PK\03\04\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\1F\8B\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"GZip\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"BZh\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"BZip\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"`\EA\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"ARJ\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"SZDD\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"compress.exe'd\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"MSCF\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"MS CAB\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"ITSF\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"MS CHM\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"\19\04\00\10\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"SIS\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"#@~^\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"SCRENC\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"(This file must be converted with BinHex 4.0)\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"BinHex\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"MBox\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"Received: \00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"Raw mail\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"Return-Path: \00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"Maildir\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"Return-path: \00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Delivered-To: \00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"Mail\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"X-UIDL: \00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"X-Apparently-To: \00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"X-Envelope-From: \00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"X-Original-To: \00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"X-Symantec-\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"Symantec\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"X-EVS\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"EVS mail\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"X-Real-To: \00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"X-Sieve: \00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c">From \00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"Date: \00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"Message-Id: \00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"Message-ID: \00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"Envelope-to: \00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"Delivery-date: \00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"To: \00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"Subject: \00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"For: \00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"Eserv mail\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"From: \00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"Exim mail\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"v:\0D\0AReceived: \00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"VPOP3 Mail (DOS)\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"v:\0AReceived: \00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"VPOP3 Mail (UNIX)\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"Hi. This is the qmail-send\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"Qmail bounce\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"x\9F>\22\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"TNEF\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"begin \00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"UUencoded\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"!BDN\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"PST\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"BMP\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"\FF\D8\FF\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"JFIF\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"Exif\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"\89PNG\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"RIFX\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"\D0\CF\11\E0\A1\B1\1A\E1\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"OLE2 container\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"%PDF-\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"PDF document\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"\B6\B9\AC\AE\FE\FF\FF\FF\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"CryptFF\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"{\5Crtf\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"RTF\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"\00\00\01\B3\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"MPEG video stream\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"\00\00\01\BA\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"MPEG sys stream\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"OggS\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"Ogg Stream\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"ID3\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"MP3\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"\FF\FB\90\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"%!PS-Adobe-\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"PostScript\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"0&\B2u\8Ef\CF\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"WMA/WMV/ASF\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c".RMF\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"Real Media File\00", align 1
@.str.116 = private unnamed_addr constant [52 x i8] c"0a46726f6d3a20{-2048}0a436f6e74656e742d547970653a20\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"Mail file\00", align 1
@.str.118 = private unnamed_addr constant [60 x i8] c"0a52656365697665643a20{-2048}0a436f6e74656e742d547970653a20\00", align 1
@.str.119 = private unnamed_addr constant [60 x i8] c"0a52656365697665643a20{-2048}0a436f6e74656e742d747970653a20\00", align 1
@.str.120 = private unnamed_addr constant [66 x i8] c"4d494d452d56657273696f6e3a20{-2048}0a436f6e74656e742d547970653a20\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"3c62723e\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"HTML data\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"3c42723e\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"3c42523e\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"3c703e\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"3c503e\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"68726566\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"48726566\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"48524546\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"3c68746d6c3e\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"3c48544d4c3e\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"3c48746d6c3e\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"3c686561643e\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"3c484541443e\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"3c486561643e\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"3c666f6e74\00", align 1
@.str.137 = private unnamed_addr constant [11 x i8] c"3c466f6e74\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"3c464f4e54\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"3c696d67\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"3c494d47\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"3c496d67\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"3c736372697074\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"3c536372697074\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"3c534352495054\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"3c6f626a656374\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"3c4f626a656374\00", align 1
@.str.147 = private unnamed_addr constant [15 x i8] c"3c4f424a454354\00", align 1
@.str.148 = private unnamed_addr constant [15 x i8] c"3c696672616d65\00", align 1
@.str.149 = private unnamed_addr constant [15 x i8] c"3c494652414d45\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"3c7461626c65\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"3c5441424c45\00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"526172211a0700\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"RAR-SFX\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"504b0304\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"ZIP-SFX\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"4d534346\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"CAB-SFX\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"60ea{7}0002\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"ARJ-SFX\00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c"60ea{7}0102\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"60ea{7}0202\00", align 1
@.str.162 = private unnamed_addr constant [33 x i8] c"efbeadde4e756c6c736f6674496e7374\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"NSIS\00", align 1
@.str.164 = private unnamed_addr constant [54 x i8] c"a3484bbe986c4aa9994c530a86d6487d41553321454130(35|36)\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c"AUTOIT\00", align 1
@.str.166 = private unnamed_addr constant [21 x i8] c"4d5a{60-300}50450000\00", align 1
@.str.167 = private unnamed_addr constant [3 x i8] c"PE\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_filetype(i8* %buf, i64 %buflen) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %text = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 1, i32* %text, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.cli_magic_s], [64 x %struct.cli_magic_s]* @cli_magic, i32 0, i64 %idxprom
  %magic = getelementptr inbounds %struct.cli_magic_s, %struct.cli_magic_s* %arrayidx, i32 0, i32 1
  %1 = load i8*, i8** %magic, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %buflen.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [64 x %struct.cli_magic_s], [64 x %struct.cli_magic_s]* @cli_magic, i32 0, i64 %idxprom1
  %offset = getelementptr inbounds %struct.cli_magic_s, %struct.cli_magic_s* %arrayidx2, i32 0, i32 0
  %4 = load i64, i64* %offset, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [64 x %struct.cli_magic_s], [64 x %struct.cli_magic_s]* @cli_magic, i32 0, i64 %idxprom3
  %length = getelementptr inbounds %struct.cli_magic_s, %struct.cli_magic_s* %arrayidx4, i32 0, i32 2
  %6 = load i64, i64* %length, align 8
  %add = add i64 %4, %6
  %cmp = icmp uge i64 %2, %add
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %for.body
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [64 x %struct.cli_magic_s], [64 x %struct.cli_magic_s]* @cli_magic, i32 0, i64 %idxprom5
  %offset7 = getelementptr inbounds %struct.cli_magic_s, %struct.cli_magic_s* %arrayidx6, i32 0, i32 0
  %9 = load i64, i64* %offset7, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %9
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [64 x %struct.cli_magic_s], [64 x %struct.cli_magic_s]* @cli_magic, i32 0, i64 %idxprom8
  %magic10 = getelementptr inbounds %struct.cli_magic_s, %struct.cli_magic_s* %arrayidx9, i32 0, i32 1
  %11 = load i8*, i8** %magic10, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [64 x %struct.cli_magic_s], [64 x %struct.cli_magic_s]* @cli_magic, i32 0, i64 %idxprom11
  %length13 = getelementptr inbounds %struct.cli_magic_s, %struct.cli_magic_s* %arrayidx12, i32 0, i32 2
  %13 = load i64, i64* %length13, align 8
  %call = call i32 @memcmp(i8* %add.ptr, i8* %11, i64 %13) #5
  %cmp14 = icmp eq i32 %call, 0
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  %14 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [64 x %struct.cli_magic_s], [64 x %struct.cli_magic_s]* @cli_magic, i32 0, i64 %idxprom16
  %descr = getelementptr inbounds %struct.cli_magic_s, %struct.cli_magic_s* %arrayidx17, i32 0, i32 3
  %15 = load i8*, i8** %descr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* %15)
  %16 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [64 x %struct.cli_magic_s], [64 x %struct.cli_magic_s]* @cli_magic, i32 0, i64 %idxprom18
  %type = getelementptr inbounds %struct.cli_magic_s, %struct.cli_magic_s* %arrayidx19, i32 0, i32 4
  %17 = load i32, i32* %type, align 4
  store i32 %17, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %text, align 4
  %tobool21 = icmp ne i32 %19, 0
  %cond = select i1 %tobool21, i32 500, i32 501
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.15
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #1

declare void @cli_dbgmsg(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @cli_filetype2(i32 %desc, %struct.cl_engine* %engine) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %engine.addr = alloca %struct.cl_engine*, align 8
  %smallbuff = alloca [257 x i8], align 16
  %decoded = alloca i8*, align 8
  %bigbuff = alloca i8*, align 8
  %bread = alloca i32, align 4
  %sret = alloca i32, align 4
  %ret = alloca i32, align 4
  %root = alloca %struct.cli_matcher*, align 8
  %mdata = alloca %struct.cli_ac_data, align 8
  %conv47 = alloca %struct.entity_conv, align 8
  %conv_size = alloca i64, align 8
  %end = alloca i32, align 4
  %area = alloca %struct.m_area_tag, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store i32 501, i32* %ret, align 4
  %0 = bitcast [257 x i8]* %smallbuff to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 257, i32 16, i1 false)
  %1 = load i32, i32* %desc.addr, align 4
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %smallbuff, i32 0, i32 0
  %call = call i64 @read(i32 %1, i8* %arraydecay, i64 256)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %bread, align 4
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [257 x i8], [257 x i8]* %smallbuff, i32 0, i32 0
  %2 = load i32, i32* %bread, align 4
  %conv3 = sext i32 %2 to i64
  %call4 = call i32 @cli_filetype(i8* %arraydecay2, i64 %conv3)
  store i32 %call4, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %tobool = icmp ne %struct.cl_engine* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end.84

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %ret, align 4
  %cmp5 = icmp eq i32 %4, 500
  br i1 %cmp5, label %if.then.7, label %if.end.84

if.then.7:                                        ; preds = %land.lhs.true
  %5 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root8 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %5, i32 0, i32 3
  %6 = load i8**, i8*** %root8, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = bitcast i8* %7 to %struct.cli_matcher*
  store %struct.cli_matcher* %8, %struct.cli_matcher** %root, align 8
  %9 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %tobool9 = icmp ne %struct.cli_matcher* %9, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  %11 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %ac_partsigs = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %11, i32 0, i32 11
  %12 = load i32, i32* %ac_partsigs, align 4
  %call12 = call i32 @cli_ac_initdata(%struct.cli_ac_data* %mdata, i32 %12, i8 zeroext 8)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  %13 = load i32, i32* %ret, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %arraydecay16 = getelementptr inbounds [257 x i8], [257 x i8]* %smallbuff, i32 0, i32 0
  %14 = load i32, i32* %bread, align 4
  %15 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root17 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %15, i32 0, i32 3
  %16 = load i8**, i8*** %root17, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %16, i64 0
  %17 = load i8*, i8** %arrayidx18, align 8
  %18 = bitcast i8* %17 to %struct.cli_matcher*
  %call19 = call i32 @cli_ac_scanbuff(i8* %arraydecay16, i32 %14, i8** null, %struct.cli_matcher* %18, %struct.cli_ac_data* %mdata, i8 zeroext 1, i32 0, i32 0, i32 -1, %struct.cli_matched_type** null)
  store i32 %call19, i32* %sret, align 4
  call void @cli_ac_freedata(%struct.cli_ac_data* %mdata)
  %19 = load i32, i32* %sret, align 4
  %cmp20 = icmp sge i32 %19, 500
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.15
  %20 = load i32, i32* %sret, align 4
  store i32 %20, i32* %ret, align 4
  br label %if.end.83

if.else:                                          ; preds = %if.end.15
  %21 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %ac_partsigs23 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %21, i32 0, i32 11
  %22 = load i32, i32* %ac_partsigs23, align 4
  %call24 = call i32 @cli_ac_initdata(%struct.cli_ac_data* %mdata, i32 %22, i8 zeroext 8)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.else
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.else
  %arraydecay28 = getelementptr inbounds [257 x i8], [257 x i8]* %smallbuff, i32 0, i32 0
  %24 = load i32, i32* %bread, align 4
  %call29 = call i8* @cli_utf16toascii(i8* %arraydecay28, i32 %24)
  store i8* %call29, i8** %decoded, align 8
  %25 = load i8*, i8** %decoded, align 8
  %tobool30 = icmp ne i8* %25, null
  br i1 %tobool30, label %if.then.31, label %if.end.41

if.then.31:                                       ; preds = %if.end.27
  %26 = load i8*, i8** %decoded, align 8
  %27 = load i8*, i8** %decoded, align 8
  %call32 = call i64 @strlen(i8* %27) #5
  %conv33 = trunc i64 %call32 to i32
  %28 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root34 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %28, i32 0, i32 3
  %29 = load i8**, i8*** %root34, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %29, i64 0
  %30 = load i8*, i8** %arrayidx35, align 8
  %31 = bitcast i8* %30 to %struct.cli_matcher*
  %call36 = call i32 @cli_ac_scanbuff(i8* %26, i32 %conv33, i8** null, %struct.cli_matcher* %31, %struct.cli_ac_data* %mdata, i8 zeroext 1, i32 0, i32 0, i32 -1, %struct.cli_matched_type** null)
  store i32 %call36, i32* %sret, align 4
  %32 = load i8*, i8** %decoded, align 8
  call void @free(i8* %32) #3
  %33 = load i32, i32* %sret, align 4
  %cmp37 = icmp eq i32 %33, 528
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.then.31
  store i32 526, i32* %ret, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.31
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.27
  call void @cli_ac_freedata(%struct.cli_ac_data* %mdata)
  %34 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %dconf = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %34, i32 0, i32 11
  %35 = load i8*, i8** %dconf, align 8
  %36 = bitcast i8* %35 to %struct.cli_dconf*
  %phishing = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %36, i32 0, i32 6
  %37 = load i32, i32* %phishing, align 4
  %and = and i32 %37, 2
  %tobool42 = icmp ne i32 %and, 0
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.82

land.lhs.true.43:                                 ; preds = %if.end.41
  %38 = load i32, i32* %ret, align 4
  %cmp44 = icmp ne i32 %38, 526
  br i1 %cmp44, label %if.then.46, label %if.end.82

if.then.46:                                       ; preds = %land.lhs.true.43
  %39 = load i32, i32* %bread, align 4
  %mul = mul nsw i32 2, %39
  %cmp48 = icmp slt i32 %mul, 256
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.46
  br label %cond.end

cond.false:                                       ; preds = %if.then.46
  %40 = load i32, i32* %bread, align 4
  %mul50 = mul nsw i32 2, %40
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 256, %cond.true ], [ %mul50, %cond.false ]
  %conv51 = sext i32 %cond to i64
  store i64 %conv51, i64* %conv_size, align 8
  %41 = load i64, i64* %conv_size, align 8
  %call52 = call i32 @init_entity_converter(%struct.entity_conv* %conv47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i64 %41)
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.else.80

if.then.55:                                       ; preds = %cond.end
  store i32 0, i32* %end, align 4
  %arraydecay56 = getelementptr inbounds [257 x i8], [257 x i8]* %smallbuff, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %area, i32 0, i32 0
  store i8* %arraydecay56, i8** %buffer, align 8
  %42 = load i32, i32* %bread, align 4
  %conv57 = sext i32 %42 to i64
  %length = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %area, i32 0, i32 1
  store i64 %conv57, i64* %length, align 8
  %offset = getelementptr inbounds %struct.m_area_tag, %struct.m_area_tag* %area, i32 0, i32 2
  store i64 0, i64* %offset, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.78, %if.then.55
  %43 = load i32, i32* %end, align 4
  %tobool58 = icmp ne i32 %43, 0
  %lnot = xor i1 %tobool58, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %ac_partsigs59 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %44, i32 0, i32 11
  %45 = load i32, i32* %ac_partsigs59, align 4
  %call60 = call i32 @cli_ac_initdata(%struct.cli_ac_data* %mdata, i32 %45, i8 zeroext 8)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %while.body
  %46 = load i32, i32* %ret, align 4
  store i32 %46, i32* %retval
  br label %return

if.end.63:                                        ; preds = %while.body
  %47 = load i32, i32* %bread, align 4
  %conv64 = sext i32 %47 to i64
  %call65 = call i8* @encoding_norm_readline(%struct.entity_conv* %conv47, %struct._IO_FILE* null, %struct.m_area_tag* %area, i64 %conv64)
  store i8* %call65, i8** %decoded, align 8
  %48 = load i8*, i8** %decoded, align 8
  %tobool66 = icmp ne i8* %48, null
  br i1 %tobool66, label %if.then.67, label %if.else.77

if.then.67:                                       ; preds = %if.end.63
  %49 = load i8*, i8** %decoded, align 8
  %50 = load i8*, i8** %decoded, align 8
  %call68 = call i64 @strlen(i8* %50) #5
  %conv69 = trunc i64 %call68 to i32
  %51 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root70 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %51, i32 0, i32 3
  %52 = load i8**, i8*** %root70, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %52, i64 0
  %53 = load i8*, i8** %arrayidx71, align 8
  %54 = bitcast i8* %53 to %struct.cli_matcher*
  %call72 = call i32 @cli_ac_scanbuff(i8* %49, i32 %conv69, i8** null, %struct.cli_matcher* %54, %struct.cli_ac_data* %mdata, i8 zeroext 1, i32 0, i32 0, i32 -1, %struct.cli_matched_type** null)
  store i32 %call72, i32* %sret, align 4
  %55 = load i8*, i8** %decoded, align 8
  call void @free(i8* %55) #3
  %56 = load i32, i32* %sret, align 4
  %cmp73 = icmp eq i32 %56, 528
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.67
  store i32 528, i32* %ret, align 4
  store i32 1, i32* %end, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.then.67
  br label %if.end.78

if.else.77:                                       ; preds = %if.end.63
  store i32 1, i32* %end, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.end.76
  call void @cli_ac_freedata(%struct.cli_ac_data* %mdata)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call79 = call i32 @entity_norm_done(%struct.entity_conv* %conv47)
  br label %if.end.81

if.else.80:                                       ; preds = %cond.end
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.80, %while.end
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %land.lhs.true.43, %if.end.41
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.22
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %land.lhs.true, %if.end
  %57 = load i32, i32* %ret, align 4
  %cmp85 = icmp eq i32 %57, 501
  br i1 %cmp85, label %if.then.89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.84
  %58 = load i32, i32* %ret, align 4
  %cmp87 = icmp eq i32 %58, 500
  br i1 %cmp87, label %if.then.89, label %if.end.125

if.then.89:                                       ; preds = %lor.lhs.false, %if.end.84
  %call90 = call i8* @cli_calloc(i64 37639, i64 1)
  store i8* %call90, i8** %bigbuff, align 8
  %tobool91 = icmp ne i8* %call90, null
  br i1 %tobool91, label %if.end.93, label %if.then.92

if.then.92:                                       ; preds = %if.then.89
  %59 = load i32, i32* %ret, align 4
  store i32 %59, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.then.89
  %60 = load i32, i32* %desc.addr, align 4
  %call94 = call i64 @lseek(i32 %60, i64 0, i32 0) #3
  %61 = load i32, i32* %desc.addr, align 4
  %62 = load i8*, i8** %bigbuff, align 8
  %call95 = call i64 @read(i32 %61, i8* %62, i64 37638)
  %conv96 = trunc i64 %call95 to i32
  store i32 %conv96, i32* %bread, align 4
  %cmp97 = icmp sgt i32 %conv96, 0
  br i1 %cmp97, label %if.then.99, label %if.end.103

if.then.99:                                       ; preds = %if.end.93
  %63 = load i32, i32* %bread, align 4
  %idxprom = sext i32 %63 to i64
  %64 = load i8*, i8** %bigbuff, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %64, i64 %idxprom
  store i8 0, i8* %arrayidx100, align 1
  %65 = load i8*, i8** %bigbuff, align 8
  %66 = load i32, i32* %bread, align 4
  %call101 = call i32 @is_tar(i8* %65, i32 %66)
  switch i32 %call101, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.102
  ]

sw.bb:                                            ; preds = %if.then.99
  store i32 506, i32* %ret, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.then.99
  store i32 505, i32* %ret, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.99, %sw.bb.102, %sw.bb
  br label %if.end.103

if.end.103:                                       ; preds = %sw.epilog, %if.end.93
  %67 = load i32, i32* %ret, align 4
  %cmp104 = icmp eq i32 %67, 501
  br i1 %cmp104, label %if.then.109, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %if.end.103
  %68 = load i32, i32* %ret, align 4
  %cmp107 = icmp eq i32 %68, 500
  br i1 %cmp107, label %if.then.109, label %if.end.124

if.then.109:                                      ; preds = %lor.lhs.false.106, %if.end.103
  %69 = load i8*, i8** %bigbuff, align 8
  %add.ptr = getelementptr inbounds i8, i8* %69, i64 32769
  %call110 = call i32 @memcmp(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i64 5) #5
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %lor.lhs.false.112, label %if.then.116

lor.lhs.false.112:                                ; preds = %if.then.109
  %70 = load i8*, i8** %bigbuff, align 8
  %add.ptr113 = getelementptr inbounds i8, i8* %70, i64 37633
  %call114 = call i32 @memcmp(i8* %add.ptr113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i64 5) #5
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.else.117, label %if.then.116

if.then.116:                                      ; preds = %lor.lhs.false.112, %if.then.109
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0))
  store i32 504, i32* %ret, align 4
  br label %if.end.123

if.else.117:                                      ; preds = %lor.lhs.false.112
  %71 = load i8*, i8** %bigbuff, align 8
  %add.ptr118 = getelementptr inbounds i8, i8* %71, i64 32776
  %call119 = call i32 @memcmp(i8* %add.ptr118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i64 5) #5
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %if.else.117
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0))
  store i32 504, i32* %ret, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.else.117
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.116
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %lor.lhs.false.106
  %72 = load i8*, i8** %bigbuff, align 8
  call void @free(i8* %72) #3
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %lor.lhs.false
  %73 = load i32, i32* %ret, align 4
  store i32 %73, i32* %retval
  br label %return

return:                                           ; preds = %if.end.125, %if.then.92, %if.then.62, %if.then.26, %if.then.14, %if.then.10
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i64 @read(i32, i8*, i64) #2

declare i32 @cli_ac_initdata(%struct.cli_ac_data*, i32, i8 zeroext) #2

declare i32 @cli_ac_scanbuff(i8*, i32, i8**, %struct.cli_matcher*, %struct.cli_ac_data*, i8 zeroext, i32, i32, i32, %struct.cli_matched_type**) #2

declare void @cli_ac_freedata(%struct.cli_ac_data*) #2

declare i8* @cli_utf16toascii(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i32 @init_entity_converter(%struct.entity_conv*, i8*, i64) #2

declare i8* @encoding_norm_readline(%struct.entity_conv*, %struct._IO_FILE*, %struct.m_area_tag*, i64) #2

declare i32 @entity_norm_done(%struct.entity_conv*) #2

declare void @cli_warnmsg(i8*, ...) #2

declare i8* @cli_calloc(i64, i64) #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #4

declare i32 @is_tar(i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @cli_addtypesigs(%struct.cl_engine* %engine) #0 {
entry:
  %retval = alloca i32, align 4
  %engine.addr = alloca %struct.cl_engine*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %root = alloca %struct.cli_matcher*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root1 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %0, i32 0, i32 3
  %1 = load i8**, i8*** %root1, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i32 0, i32 0))
  %call = call i8* @cli_calloc(i64 1, i64 80)
  %3 = bitcast i8* %call to %struct.cli_matcher*
  %4 = bitcast %struct.cli_matcher* %3 to i8*
  %5 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root2 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %5, i32 0, i32 3
  %6 = load i8**, i8*** %root2, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %6, i64 0
  store i8* %4, i8** %arrayidx3, align 8
  %7 = bitcast i8* %4 to %struct.cli_matcher*
  store %struct.cli_matcher* %7, %struct.cli_matcher** %root, align 8
  %8 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %tobool4 = icmp ne %struct.cli_matcher* %8, null
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %10 = load i8, i8* @cli_ac_mindepth, align 1
  %11 = load i8, i8* @cli_ac_maxdepth, align 1
  %call6 = call i32 @cli_ac_init(%struct.cli_matcher* %9, i8 zeroext %10, i8 zeroext %11)
  store i32 %call6, i32* %ret, align 4
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0))
  %12 = load i32, i32* %ret, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  br label %if.end.12

if.else:                                          ; preds = %entry
  %13 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root10 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %13, i32 0, i32 3
  %14 = load i8**, i8*** %root10, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx11, align 8
  %16 = bitcast i8* %15 to %struct.cli_matcher*
  store %struct.cli_matcher* %16, %struct.cli_matcher** %root, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end.9
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [44 x %struct.cli_smagic_s], [44 x %struct.cli_smagic_s]* @cli_smagic, i32 0, i64 %idxprom
  %sig = getelementptr inbounds %struct.cli_smagic_s, %struct.cli_smagic_s* %arrayidx13, i32 0, i32 0
  %18 = load i8*, i8** %sig, align 8
  %tobool14 = icmp ne i8* %18, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds [44 x %struct.cli_smagic_s], [44 x %struct.cli_smagic_s]* @cli_smagic, i32 0, i64 %idxprom15
  %descr = getelementptr inbounds %struct.cli_smagic_s, %struct.cli_smagic_s* %arrayidx16, i32 0, i32 1
  %21 = load i8*, i8** %descr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds [44 x %struct.cli_smagic_s], [44 x %struct.cli_smagic_s]* @cli_smagic, i32 0, i64 %idxprom17
  %sig19 = getelementptr inbounds %struct.cli_smagic_s, %struct.cli_smagic_s* %arrayidx18, i32 0, i32 0
  %23 = load i8*, i8** %sig19, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %24 to i64
  %arrayidx21 = getelementptr inbounds [44 x %struct.cli_smagic_s], [44 x %struct.cli_smagic_s]* @cli_smagic, i32 0, i64 %idxprom20
  %type = getelementptr inbounds %struct.cli_smagic_s, %struct.cli_smagic_s* %arrayidx21, i32 0, i32 2
  %25 = load i32, i32* %type, align 4
  %conv = trunc i32 %25 to i16
  %call22 = call i32 @cli_parse_add(%struct.cli_matcher* %19, i8* %21, i8* %23, i16 zeroext %conv, i8* null, i16 zeroext 0)
  store i32 %call22, i32* %ret, align 4
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %26 to i64
  %arrayidx26 = getelementptr inbounds [44 x %struct.cli_smagic_s], [44 x %struct.cli_smagic_s]* @cli_smagic, i32 0, i64 %idxprom25
  %descr27 = getelementptr inbounds %struct.cli_smagic_s, %struct.cli_smagic_s* %arrayidx26, i32 0, i32 1
  %27 = load i8*, i8** %descr27, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i32 0, i32 0), i8* %27)
  %28 = load i32, i32* %ret, align 4
  store i32 %28, i32* %retval
  br label %return

if.end.28:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.24, %if.then.8, %if.then.5
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare void @cli_errmsg(i8*, ...) #2

declare i32 @cli_ac_init(%struct.cli_matcher*, i8 zeroext, i8 zeroext) #2

declare i32 @cli_parse_add(%struct.cli_matcher*, i8*, i8*, i16 zeroext, i8*, i16 zeroext) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
