; ModuleID = 'c-parse.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type opaque
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type { %struct.c_lang_decl, %union.tree_node* }
%struct.c_lang_decl = type { i8, [3 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.YYSTYPE = type { i64 }
%struct.resword = type { i8*, i32 }
%struct.c_common_identifier = type { %struct.tree_common, %struct.cpp_hashnode }
%struct.cpp_hashnode = type { %struct.ht_identifier, i16, i8, i8, i8, i8, %union.anon.3 }
%struct.ht_identifier = type { i32, i8* }
%union.anon.3 = type { %struct.cpp_macro* }
%struct.cpp_macro = type opaque
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type { i32, [1 x %union.tree_node*] }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.stmt_tree_s = type { %union.tree_node*, %union.tree_node*, i8*, i32 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.tree_int_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.anon }
%struct.anon = type { i64, i64 }

@declspec_stack = internal global %union.tree_node* null, align 8
@current_declspecs = internal global %union.tree_node* null, align 8
@prefix_attributes = internal global %union.tree_node* null, align 8
@all_prefix_attributes = internal global %union.tree_node* null, align 8
@yydebug = common global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"Starting parse\0A\00", align 1
@yynerrs = common global i32 0, align 4
@yychar = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"parser stack overflow\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Stack size increased to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Entering state %d\0A\00", align 1
@yypact = internal constant [901 x i16] [i16 131, i16 137, i16 2099, i16 2099, i16 229, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 129, i16 129, i16 129, i16 101, i16 123, i16 147, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 263, i16 1218, i16 731, i16 1314, i16 941, i16 390, i16 303, i16 525, i16 827, i16 1631, i16 1037, i16 2396, i16 1360, i16 696, i16 917, i16 716, i16 1008, i16 -32768, i16 -32768, i16 138, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 129, i16 -32768, i16 83, i16 85, i16 107, i16 -32768, i16 -32768, i16 2099, i16 -32768, i16 -32768, i16 -32768, i16 129, i16 129, i16 129, i16 2695, i16 2613, i16 165, i16 -32768, i16 112, i16 129, i16 170, i16 -32768, i16 914, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 129, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 129, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 129, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 129, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 129, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 129, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 129, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 129, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 290, i16 263, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 146, i16 -32768, i16 149, i16 -32768, i16 159, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 2695, i16 2695, i16 205, i16 212, i16 214, i16 -32768, i16 377, i16 -32768, i16 -32768, i16 -32768, i16 2695, i16 -32768, i16 -32768, i16 1719, i16 -32768, i16 -32768, i16 2695, i16 204, i16 235, i16 -32768, i16 2736, i16 2777, i16 -32768, i16 3116, i16 1771, i16 317, i16 1480, i16 2695, i16 224, i16 1413, i16 859, i16 3041, i16 1050, i16 1230, i16 784, i16 1694, i16 1227, i16 -32768, i16 249, i16 684, i16 136, i16 328, i16 219, i16 358, i16 -32768, i16 263, i16 263, i16 129, i16 -32768, i16 129, i16 -32768, i16 307, i16 129, i16 2142, i16 357, i16 129, i16 -32768, i16 -32768, i16 112, i16 129, i16 257, i16 -32768, i16 2080, i16 401, i16 454, i16 284, i16 2052, i16 293, i16 855, i16 -32768, i16 306, i16 -32768, i16 298, i16 -32768, i16 -32768, i16 -32768, i16 2695, i16 2695, i16 3066, i16 -32768, i16 -32768, i16 305, i16 -32768, i16 323, i16 346, i16 -32768, i16 316, i16 2695, i16 1719, i16 -32768, i16 1719, i16 -32768, i16 2695, i16 2695, i16 393, i16 -32768, i16 -32768, i16 2695, i16 2695, i16 2695, i16 2695, i16 2695, i16 2695, i16 2695, i16 2695, i16 2695, i16 2695, i16 2695, i16 2695, i16 -32768, i16 -32768, i16 377, i16 377, i16 2695, i16 2695, i16 -32768, i16 366, i16 -32768, i16 409, i16 372, i16 -32768, i16 -32768, i16 425, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 197, i16 -32768, i16 399, i16 454, i16 215, i16 263, i16 -32768, i16 470, i16 -32768, i16 -32768, i16 2613, i16 2245, i16 -32768, i16 398, i16 2183, i16 445, i16 -32768, i16 759, i16 65, i16 -32768, i16 -32768, i16 497, i16 290, i16 290, i16 -32768, i16 129, i16 -32768, i16 357, i16 129, i16 129, i16 -32768, i16 -32768, i16 -32768, i16 357, i16 129, i16 -32768, i16 -32768, i16 1413, i16 859, i16 3041, i16 1050, i16 1230, i16 784, i16 1694, i16 1227, i16 -32768, i16 330, i16 459, i16 1417, i16 -32768, i16 129, i16 -32768, i16 -32768, i16 529, i16 488, i16 -32768, i16 298, i16 2883, i16 2901, i16 490, i16 -32768, i16 -32768, i16 2486, i16 -32768, i16 3116, i16 501, i16 503, i16 3116, i16 3116, i16 2695, i16 534, i16 2695, i16 2695, i16 2448, i16 3077, i16 2576, i16 2961, i16 1820, i16 818, i16 818, i16 452, i16 452, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 515, i16 235, i16 513, i16 -32768, i16 377, i16 1567, i16 409, i16 -32768, i16 -32768, i16 112, i16 129, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 456, i16 -32768, i16 522, i16 684, i16 2818, i16 -32768, i16 -32768, i16 209, i16 87, i16 1090, i16 516, i16 2695, i16 -32768, i16 -32768, i16 2695, i16 2286, i16 -32768, i16 517, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 2465, i16 -32768, i16 401, i16 251, i16 290, i16 -32768, i16 564, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 527, i16 -32768, i16 528, i16 2695, i16 377, i16 530, i16 488, i16 3066, i16 2695, i16 3066, i16 -32768, i16 -32768, i16 532, i16 532, i16 576, i16 2695, i16 3145, i16 2208, i16 -32768, i16 -32768, i16 -32768, i16 324, i16 445, i16 -32768, i16 -32768, i16 78, i16 116, i16 121, i16 134, i16 624, i16 -32768, i16 542, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 425, i16 425, i16 -32768, i16 129, i16 -32768, i16 -32768, i16 -32768, i16 339, i16 545, i16 -32768, i16 549, i16 -32768, i16 -32768, i16 1797, i16 3070, i16 1146, i16 1600, i16 1998, i16 3095, i16 1185, i16 1614, i16 -32768, i16 -32768, i16 -32768, i16 553, i16 347, i16 -32768, i16 -32768, i16 374, i16 -32768, i16 552, i16 555, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 563, i16 565, i16 1348, i16 -32768, i16 -32768, i16 626, i16 -32768, i16 -32768, i16 -32768, i16 567, i16 -32768, i16 -32768, i16 569, i16 -32768, i16 -32768, i16 129, i16 129, i16 3116, i16 -32768, i16 129, i16 566, i16 579, i16 2925, i16 581, i16 1784, i16 -32768, i16 3132, i16 -32768, i16 377, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 2356, i16 -32768, i16 -32768, i16 586, i16 1207, i16 -32768, i16 -32768, i16 -32768, i16 2695, i16 -32768, i16 -32768, i16 -32768, i16 175, i16 325, i16 -32768, i16 -32768, i16 1520, i16 -32768, i16 673, i16 -32768, i16 -32768, i16 76, i16 -32768, i16 290, i16 -32768, i16 263, i16 -32768, i16 -32768, i16 3116, i16 -32768, i16 -32768, i16 1348, i16 -32768, i16 129, i16 343, i16 129, i16 431, i16 -32768, i16 -32768, i16 -32768, i16 129, i16 -32768, i16 2695, i16 -32768, i16 -32768, i16 632, i16 377, i16 2695, i16 -32768, i16 633, i16 3116, i16 595, i16 593, i16 -32768, i16 -32768, i16 185, i16 1920, i16 2695, i16 -32768, i16 2425, i16 -32768, i16 646, i16 2695, i16 649, i16 612, i16 614, i16 2654, i16 158, i16 699, i16 -32768, i16 -32768, i16 -32768, i16 623, i16 -32768, i16 -32768, i16 -32768, i16 627, i16 482, i16 628, i16 -32768, i16 -32768, i16 -32768, i16 2551, i16 -32768, i16 -32768, i16 407, i16 -32768, i16 112, i16 129, i16 129, i16 468, i16 483, i16 238, i16 -32768, i16 -32768, i16 129, i16 112, i16 129, i16 238, i16 -32768, i16 129, i16 -32768, i16 1797, i16 3070, i16 2564, i16 3099, i16 1146, i16 1600, i16 1547, i16 1752, i16 1998, i16 3095, i16 3037, i16 3112, i16 1185, i16 1614, i16 1634, i16 1766, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 625, i16 -32768, i16 -32768, i16 478, i16 479, i16 1784, i16 76, i16 -32768, i16 76, i16 -32768, i16 2695, i16 109, i16 -32768, i16 2695, i16 418, i16 -32768, i16 2943, i16 -32768, i16 1406, i16 1784, i16 -32768, i16 -32768, i16 1852, i16 -32768, i16 1988, i16 -32768, i16 -32768, i16 3132, i16 2863, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 640, i16 2695, i16 641, i16 -32768, i16 650, i16 -32768, i16 -32768, i16 290, i16 263, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 660, i16 700, i16 1250, i16 97, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 175, i16 349, i16 -32768, i16 129, i16 -32768, i16 129, i16 -32768, i16 -32768, i16 129, i16 325, i16 325, i16 -32768, i16 -32768, i16 175, i16 325, i16 -32768, i16 -32768, i16 -32768, i16 662, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 2980, i16 2695, i16 -32768, i16 -32768, i16 2980, i16 2695, i16 -32768, i16 -32768, i16 2695, i16 -32768, i16 665, i16 1988, i16 -32768, i16 -32768, i16 2695, i16 -32768, i16 -32768, i16 674, i16 -32768, i16 2695, i16 711, i16 484, i16 -32768, i16 403, i16 487, i16 -32768, i16 1087, i16 701, i16 703, i16 -32768, i16 707, i16 2695, i16 1654, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 2695, i16 -32768, i16 468, i16 483, i16 466, i16 -32768, i16 -32768, i16 1207, i16 129, i16 238, i16 -32768, i16 238, i16 -32768, i16 -32768, i16 343, i16 -32768, i16 2980, i16 -32768, i16 2980, i16 2839, i16 -32768, i16 -32768, i16 3098, i16 -32768, i16 62, i16 129, i16 -32768, i16 357, i16 -32768, i16 357, i16 2695, i16 2695, i16 750, i16 2551, i16 694, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 695, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 31, i16 697, i16 -32768, i16 -32768, i16 -32768, i16 718, i16 719, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 698, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 710, i16 712, i16 377, i16 127, i16 715, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 2695, i16 -32768, i16 -32768, i16 -32768, i16 2695, i16 693, i16 31, i16 720, i16 31, i16 -32768, i16 -32768, i16 -32768, i16 722, i16 -32768, i16 730, i16 802, i16 163, i16 -32768, i16 -32768, i16 625, i16 625, i16 -32768, i16 -32768, i16 -32768, i16 749, i16 470, i16 733, i16 -32768, i16 -32768, i16 2695, i16 2695, i16 317, i16 421, i16 -32768, i16 740, i16 743, i16 744, i16 470, i16 -32768, i16 -32768, i16 -32768, i16 317, i16 -32768, i16 -32768, i16 829, i16 830, i16 -32768], align 16
@.str.4 = private unnamed_addr constant [18 x i8] c"Reading a token: \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Now at end of input.\0A\00", align 1
@yytranslate = internal constant [323 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02W\02\02\02<3\02CS:8X9B;\02\02\02\02\02\02\02\02\02\02.T\02,\02-\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02D\02Z2\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02Y1UV\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+/04567=>?@AEFGHIJKLMNOPQR", align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"Next token is %d (%s\00", align 1
@yytname = internal constant [290 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.269, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.275, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.281, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.311, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.313, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.314, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.315, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.316, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.317, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.318, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.319, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.320, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.321, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.322, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.323, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.324, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.325, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.327, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.328, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.329, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.331, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.332, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.333, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.335, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.338, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.339, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.340, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.341, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.342, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.343, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.345, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.346, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.347, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.348, i32 0, i32 0), i8* null], align 16
@yylval = common global %union.YYSTYPE zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@yycheck = internal constant [3206 x i16] [i16 59, i16 60, i16 220, i16 313, i16 2, i16 3, i16 2, i16 3, i16 140, i16 319, i16 2, i16 3, i16 271, i16 9, i16 10, i16 11, i16 293, i16 216, i16 280, i16 315, i16 141, i16 540, i16 397, i16 2, i16 3, i16 21, i16 540, i16 23, i16 311, i16 25, i16 553, i16 27, i16 461, i16 29, i16 148, i16 31, i16 411, i16 33, i16 544, i16 35, i16 9, i16 2, i16 3, i16 2, i16 3, i16 2, i16 3, i16 2, i16 3, i16 226, i16 2, i16 3, i16 540, i16 563, i16 52, i16 461, i16 52, i16 622, i16 397, i16 540, i16 52, i16 303, i16 2, i16 3, i16 60, i16 63, i16 1, i16 63, i16 556, i16 457, i16 596, i16 63, i16 411, i16 52, i16 540, i16 10, i16 171, i16 1, i16 20, i16 1, i16 397, i16 47, i16 48, i16 49, i16 769, i16 599, i16 3, i16 4, i16 3, i16 4, i16 556, i16 52, i16 211, i16 52, i16 411, i16 52, i16 9, i16 52, i16 1, i16 68, i16 52, i16 3, i16 63, i16 622, i16 63, i16 158, i16 159, i16 495, i16 46, i16 854, i16 3, i16 4, i16 52, i16 45, i16 378, i16 168, i16 397, i16 1, i16 599, i16 7, i16 508, i16 174, i16 1, i16 511, i16 56, i16 57, i16 58, i16 668, i16 813, i16 670, i16 411, i16 0, i16 185, i16 392, i16 622, i16 1, i16 378, i16 0, i16 883, i16 30, i16 72, i16 236, i16 30, i16 7, i16 532, i16 83, i16 552, i16 553, i16 662, i16 81, i16 52, i16 246, i16 211, i16 248, i16 89, i16 46, i16 622, i16 334, i16 90, i16 30, i16 686, i16 3, i16 4, i16 85, i16 67, i16 89, i16 30, i16 99, i16 67, i16 544, i16 83, i16 856, i16 89, i16 46, i16 89, i16 171, i16 108, i16 296, i16 3, i16 4, i16 865, i16 556, i16 570, i16 382, i16 572, i16 117, i16 450, i16 451, i16 452, i16 453, i16 67, i16 187, i16 702, i16 189, i16 126, i16 191, i16 89, i16 193, i16 164, i16 141, i16 462, i16 85, i16 198, i16 135, i16 200, i16 544, i16 85, i16 730, i16 731, i16 46, i16 83, i16 896, i16 454, i16 272, i16 67, i16 211, i16 58, i16 556, i16 216, i16 85, i16 216, i16 335, i16 84, i16 337, i16 216, i16 751, i16 7, i16 544, i16 226, i16 44, i16 226, i16 197, i16 67, i16 58, i16 226, i16 89, i16 27, i16 296, i16 89, i16 556, i16 236, i16 300, i16 67, i16 68, i16 297, i16 810, i16 83, i16 226, i16 89, i16 30, i16 246, i16 66, i16 248, i16 68, i16 84, i16 216, i16 667, i16 216, i16 88, i16 37, i16 38, i16 203, i16 204, i16 544, i16 230, i16 226, i16 3, i16 226, i16 30, i16 226, i16 681, i16 226, i16 67, i16 205, i16 226, i16 556, i16 67, i16 68, i16 784, i16 67, i16 83, i16 67, i16 67, i16 68, i16 502, i16 88, i16 226, i16 83, i16 717, i16 548, i16 573, i16 810, i16 575, i16 3, i16 4, i16 348, i16 355, i16 726, i16 83, i16 1, i16 296, i16 3, i16 4, i16 269, i16 270, i16 67, i16 68, i16 83, i16 5, i16 6, i16 7, i16 717, i16 700, i16 84, i16 85, i16 12, i16 13, i16 14, i16 67, i16 68, i16 726, i16 58, i16 810, i16 88, i16 730, i16 731, i16 9, i16 323, i16 3, i16 325, i16 67, i16 327, i16 83, i16 329, i16 83, i16 7, i16 334, i16 432, i16 334, i16 434, i16 399, i16 84, i16 334, i16 402, i16 810, i16 88, i16 3, i16 4, i16 58, i16 291, i16 403, i16 739, i16 3, i16 450, i16 451, i16 334, i16 453, i16 67, i16 1, i16 873, i16 874, i16 4, i16 5, i16 6, i16 7, i16 7, i16 308, i16 309, i16 84, i16 12, i16 13, i16 14, i16 88, i16 334, i16 67, i16 334, i16 342, i16 334, i16 85, i16 334, i16 3, i16 4, i16 334, i16 58, i16 382, i16 28, i16 382, i16 84, i16 83, i16 46, i16 382, i16 85, i16 67, i16 68, i16 334, i16 5, i16 6, i16 7, i16 378, i16 397, i16 84, i16 58, i16 12, i16 13, i16 14, i16 397, i16 83, i16 58, i16 84, i16 784, i16 67, i16 377, i16 88, i16 411, i16 84, i16 85, i16 67, i16 68, i16 397, i16 411, i16 30, i16 382, i16 83, i16 382, i16 720, i16 391, i16 722, i16 88, i16 627, i16 83, i16 27, i16 84, i16 411, i16 30, i16 3, i16 88, i16 432, i16 636, i16 434, i16 46, i16 397, i16 32, i16 574, i16 64, i16 565, i16 784, i16 89, i16 44, i16 30, i16 83, i16 21, i16 22, i16 23, i16 24, i16 411, i16 83, i16 718, i16 83, i16 29, i16 30, i16 31, i16 32, i16 88, i16 429, i16 46, i16 727, i16 67, i16 784, i16 67, i16 68, i16 450, i16 451, i16 452, i16 453, i16 84, i16 863, i16 864, i16 46, i16 474, i16 9, i16 476, i16 540, i16 478, i16 58, i16 480, i16 67, i16 68, i16 84, i16 90, i16 58, i16 83, i16 88, i16 67, i16 68, i16 804, i16 88, i16 806, i16 15, i16 67, i16 17, i16 18, i16 19, i16 20, i16 784, i16 83, i16 25, i16 26, i16 27, i16 28, i16 88, i16 58, i16 59, i16 60, i16 33, i16 34, i16 35, i16 36, i16 21, i16 22, i16 23, i16 24, i16 67, i16 68, i16 67, i16 68, i16 29, i16 30, i16 31, i16 32, i16 84, i16 5, i16 6, i16 7, i16 67, i16 68, i16 67, i16 68, i16 12, i16 13, i16 14, i16 599, i16 44, i16 540, i16 84, i16 540, i16 763, i16 544, i16 606, i16 540, i16 83, i16 67, i16 68, i16 544, i16 331, i16 332, i16 30, i16 178, i16 179, i16 556, i16 525, i16 556, i16 540, i16 84, i16 84, i16 556, i16 544, i16 88, i16 88, i16 84, i16 622, i16 702, i16 84, i16 88, i16 44, i16 540, i16 88, i16 88, i16 556, i16 88, i16 540, i16 46, i16 540, i16 703, i16 540, i16 83, i16 540, i16 83, i16 544, i16 540, i16 210, i16 308, i16 309, i16 213, i16 717, i16 718, i16 556, i16 217, i16 556, i16 83, i16 556, i16 540, i16 556, i16 879, i16 90, i16 556, i16 83, i16 90, i16 90, i16 44, i16 84, i16 552, i16 553, i16 85, i16 85, i16 891, i16 85, i16 187, i16 188, i16 189, i16 190, i16 586, i16 89, i16 46, i16 565, i16 622, i16 1, i16 622, i16 85, i16 83, i16 627, i16 622, i16 627, i16 83, i16 599, i16 576, i16 627, i16 83, i16 696, i16 636, i16 635, i16 636, i16 607, i16 90, i16 622, i16 636, i16 90, i16 642, i16 84, i16 644, i16 84, i16 646, i16 85, i16 648, i16 27, i16 650, i16 88, i16 652, i16 88, i16 654, i16 791, i16 656, i16 622, i16 83, i16 622, i16 83, i16 622, i16 627, i16 622, i16 627, i16 83, i16 622, i16 191, i16 192, i16 193, i16 194, i16 636, i16 3, i16 636, i16 46, i16 46, i16 85, i16 88, i16 622, i16 187, i16 188, i16 189, i16 190, i16 3, i16 4, i16 5, i16 6, i16 7, i16 46, i16 314, i16 315, i16 46, i16 84, i16 221, i16 84, i16 320, i16 759, i16 5, i16 6, i16 7, i16 482, i16 483, i16 7, i16 84, i16 12, i16 13, i16 14, i16 84, i16 771, i16 85, i16 89, i16 336, i16 16, i16 67, i16 777, i16 497, i16 498, i16 5, i16 6, i16 7, i16 84, i16 84, i16 30, i16 67, i16 12, i16 13, i16 14, i16 25, i16 26, i16 27, i16 28, i16 4, i16 5, i16 6, i16 7, i16 33, i16 34, i16 35, i16 36, i16 12, i16 13, i16 14, i16 30, i16 85, i16 807, i16 808, i16 85, i16 810, i16 323, i16 324, i16 325, i16 326, i16 280, i16 46, i16 84, i16 28, i16 1, i16 703, i16 383, i16 4, i16 5, i16 6, i16 7, i16 17, i16 67, i16 10, i16 67, i16 12, i16 13, i16 14, i16 67, i16 717, i16 718, i16 83, i16 83, i16 67, i16 84, i16 84, i16 84, i16 90, i16 726, i16 727, i16 784, i16 28, i16 730, i16 731, i16 6, i16 7, i16 784, i16 725, i16 84, i16 854, i16 12, i16 13, i16 14, i16 858, i16 84, i16 83, i16 83, i16 88, i16 84, i16 784, i16 84, i16 327, i16 328, i16 329, i16 330, i16 9, i16 810, i16 83, i16 810, i16 84, i16 67, i16 84, i16 810, i16 323, i16 324, i16 325, i16 326, i16 83, i16 883, i16 884, i16 83, i16 784, i16 84, i16 0, i16 0, i16 810, i16 5, i16 6, i16 7, i16 392, i16 614, i16 615, i16 411, i16 12, i16 13, i16 14, i16 304, i16 464, i16 556, i16 556, i16 411, i16 556, i16 89, i16 810, i16 556, i16 810, i16 415, i16 810, i16 391, i16 810, i16 1, i16 571, i16 810, i16 4, i16 684, i16 6, i16 7, i16 4, i16 388, i16 6, i16 7, i16 12, i16 13, i16 14, i16 810, i16 12, i16 13, i16 14, i16 56, i16 57, i16 58, i16 59, i16 60, i16 845, i16 658, i16 659, i16 291, i16 28, i16 730, i16 30, i16 31, i16 28, i16 717, i16 413, i16 414, i16 512, i16 513, i16 431, i16 595, i16 516, i16 334, i16 191, i16 192, i16 193, i16 194, i16 671, i16 674, i16 474, i16 475, i16 814, i16 429, i16 478, i16 479, i16 816, i16 342, i16 84, i16 379, i16 618, i16 860, i16 1, i16 483, i16 862, i16 4, i16 5, i16 6, i16 7, i16 5, i16 6, i16 7, i16 464, i16 12, i16 13, i16 14, i16 12, i16 13, i16 14, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 461, i16 462, i16 84, i16 85, i16 27, i16 28, i16 -1, i16 30, i16 4, i16 5, i16 6, i16 7, i16 -1, i16 -1, i16 -1, i16 -1, i16 12, i16 13, i16 14, i16 476, i16 477, i16 44, i16 580, i16 480, i16 481, i16 234, i16 235, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 28, i16 474, i16 475, i16 -1, i16 245, i16 478, i16 479, i16 -1, i16 -1, i16 250, i16 251, i16 -1, i16 67, i16 68, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 378, i16 -1, i16 -1, i16 84, i16 -1, i16 -1, i16 84, i16 88, i16 89, i16 -1, i16 -1, i16 -1, i16 628, i16 629, i16 -1, i16 -1, i16 632, i16 -1, i16 5, i16 6, i16 7, i16 637, i16 638, i16 -1, i16 640, i16 12, i16 13, i16 14, i16 -1, i16 407, i16 84, i16 -1, i16 -1, i16 552, i16 553, i16 -1, i16 -1, i16 -1, i16 327, i16 328, i16 329, i16 330, i16 -1, i16 421, i16 422, i16 -1, i16 4, i16 5, i16 6, i16 7, i16 -1, i16 -1, i16 -1, i16 -1, i16 12, i16 13, i16 14, i16 673, i16 -1, i16 4, i16 676, i16 6, i16 7, i16 -1, i16 -1, i16 -1, i16 -1, i16 12, i16 13, i16 14, i16 28, i16 -1, i16 450, i16 451, i16 452, i16 453, i16 642, i16 643, i16 644, i16 645, i16 -1, i16 -1, i16 -1, i16 28, i16 650, i16 651, i16 652, i16 653, i16 -1, i16 -1, i16 357, i16 358, i16 -1, i16 -1, i16 -1, i16 -1, i16 1, i16 84, i16 3, i16 4, i16 5, i16 6, i16 7, i16 -1, i16 720, i16 10, i16 722, i16 12, i16 13, i16 14, i16 -1, i16 630, i16 631, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 27, i16 -1, i16 -1, i16 30, i16 28, i16 740, i16 503, i16 84, i16 505, i16 744, i16 -1, i16 -1, i16 646, i16 647, i16 648, i16 649, i16 -1, i16 44, i16 -1, i16 -1, i16 654, i16 655, i16 656, i16 657, i16 642, i16 643, i16 644, i16 645, i16 -1, i16 -1, i16 -1, i16 -1, i16 650, i16 651, i16 652, i16 653, i16 -1, i16 5, i16 6, i16 7, i16 67, i16 68, i16 428, i16 -1, i16 12, i16 13, i16 14, i16 433, i16 -1, i16 -1, i16 785, i16 786, i16 -1, i16 788, i16 440, i16 -1, i16 -1, i16 84, i16 793, i16 83, i16 795, i16 88, i16 30, i16 -1, i16 -1, i16 -1, i16 -1, i16 802, i16 476, i16 477, i16 -1, i16 -1, i16 480, i16 481, i16 -1, i16 -1, i16 5, i16 6, i16 7, i16 717, i16 718, i16 -1, i16 -1, i16 12, i16 13, i16 14, i16 -1, i16 -1, i16 726, i16 727, i16 -1, i16 -1, i16 730, i16 731, i16 1, i16 -1, i16 -1, i16 4, i16 5, i16 6, i16 7, i16 30, i16 -1, i16 10, i16 -1, i16 12, i16 13, i16 14, i16 4, i16 5, i16 6, i16 7, i16 -1, i16 499, i16 611, i16 -1, i16 12, i16 13, i16 14, i16 6, i16 7, i16 28, i16 6, i16 7, i16 -1, i16 12, i16 13, i16 14, i16 12, i16 13, i16 14, i16 -1, i16 28, i16 -1, i16 30, i16 521, i16 -1, i16 1, i16 -1, i16 3, i16 4, i16 779, i16 780, i16 781, i16 8, i16 9, i16 30, i16 11, i16 -1, i16 -1, i16 -1, i16 15, i16 -1, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 -1, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 671, i16 -1, i16 83, i16 674, i16 42, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 48, i16 571, i16 -1, i16 51, i16 84, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 582, i16 -1, i16 62, i16 63, i16 -1, i16 587, i16 -1, i16 67, i16 4, i16 5, i16 6, i16 7, i16 -1, i16 -1, i16 596, i16 597, i16 12, i16 13, i16 14, i16 -1, i16 602, i16 -1, i16 -1, i16 -1, i16 84, i16 -1, i16 86, i16 87, i16 -1, i16 89, i16 -1, i16 -1, i16 28, i16 -1, i16 30, i16 -1, i16 -1, i16 -1, i16 -1, i16 1, i16 -1, i16 3, i16 646, i16 647, i16 648, i16 649, i16 8, i16 9, i16 -1, i16 11, i16 654, i16 655, i16 656, i16 657, i16 4, i16 5, i16 6, i16 7, i16 -1, i16 -1, i16 -1, i16 -1, i16 12, i16 13, i16 14, i16 -1, i16 -1, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 28, i16 -1, i16 42, i16 774, i16 -1, i16 -1, i16 -1, i16 667, i16 48, i16 -1, i16 84, i16 51, i16 672, i16 -1, i16 -1, i16 675, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 681, i16 62, i16 63, i16 684, i16 -1, i16 686, i16 67, i16 10, i16 4, i16 1, i16 6, i16 7, i16 4, i16 -1, i16 6, i16 7, i16 12, i16 13, i16 14, i16 -1, i16 12, i16 13, i16 14, i16 -1, i16 816, i16 86, i16 87, i16 -1, i16 89, i16 -1, i16 -1, i16 -1, i16 28, i16 -1, i16 30, i16 84, i16 28, i16 -1, i16 30, i16 31, i16 43, i16 44, i16 45, i16 -1, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 850, i16 851, i16 741, i16 -1, i16 -1, i16 -1, i16 745, i16 -1, i16 -1, i16 748, i16 -1, i16 -1, i16 751, i16 -1, i16 1, i16 754, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 -1, i16 11, i16 12, i16 13, i16 14, i16 15, i16 90, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 4, i16 5, i16 6, i16 7, i16 48, i16 -1, i16 10, i16 51, i16 12, i16 13, i16 14, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 -1, i16 -1, i16 67, i16 28, i16 -1, i16 30, i16 -1, i16 5, i16 6, i16 7, i16 -1, i16 -1, i16 -1, i16 -1, i16 12, i16 13, i16 14, i16 -1, i16 -1, i16 84, i16 85, i16 86, i16 87, i16 1, i16 89, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 30, i16 11, i16 12, i16 13, i16 14, i16 15, i16 -1, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 5, i16 6, i16 7, i16 -1, i16 42, i16 -1, i16 -1, i16 12, i16 13, i16 14, i16 48, i16 -1, i16 -1, i16 51, i16 5, i16 6, i16 7, i16 -1, i16 56, i16 57, i16 58, i16 12, i16 13, i16 14, i16 62, i16 63, i16 -1, i16 -1, i16 -1, i16 67, i16 4, i16 5, i16 6, i16 7, i16 5, i16 6, i16 7, i16 -1, i16 12, i16 13, i16 14, i16 12, i16 13, i16 14, i16 -1, i16 -1, i16 84, i16 -1, i16 86, i16 87, i16 1, i16 89, i16 3, i16 4, i16 28, i16 -1, i16 30, i16 8, i16 9, i16 30, i16 11, i16 -1, i16 -1, i16 -1, i16 15, i16 -1, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 -1, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 -1, i16 -1, i16 6, i16 7, i16 48, i16 -1, i16 -1, i16 51, i16 12, i16 13, i16 14, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 84, i16 62, i16 63, i16 -1, i16 -1, i16 1, i16 67, i16 3, i16 4, i16 30, i16 6, i16 7, i16 8, i16 9, i16 -1, i16 11, i16 12, i16 13, i16 14, i16 -1, i16 -1, i16 -1, i16 -1, i16 84, i16 -1, i16 86, i16 87, i16 -1, i16 89, i16 -1, i16 -1, i16 -1, i16 28, i16 29, i16 30, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 5, i16 6, i16 7, i16 -1, i16 42, i16 -1, i16 -1, i16 12, i16 13, i16 14, i16 48, i16 -1, i16 -1, i16 51, i16 5, i16 6, i16 7, i16 -1, i16 56, i16 57, i16 58, i16 12, i16 13, i16 14, i16 62, i16 63, i16 -1, i16 -1, i16 1, i16 67, i16 3, i16 4, i16 -1, i16 -1, i16 -1, i16 8, i16 9, i16 -1, i16 11, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 4, i16 5, i16 6, i16 7, i16 86, i16 87, i16 -1, i16 89, i16 12, i16 13, i16 14, i16 -1, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 28, i16 42, i16 30, i16 -1, i16 -1, i16 -1, i16 -1, i16 48, i16 62, i16 63, i16 51, i16 65, i16 66, i16 67, i16 68, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 -1, i16 66, i16 67, i16 68, i16 1, i16 -1, i16 3, i16 4, i16 -1, i16 -1, i16 -1, i16 8, i16 9, i16 -1, i16 11, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 85, i16 86, i16 87, i16 -1, i16 89, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 48, i16 -1, i16 -1, i16 51, i16 -1, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 -1, i16 66, i16 67, i16 68, i16 1, i16 -1, i16 3, i16 -1, i16 -1, i16 -1, i16 -1, i16 8, i16 9, i16 -1, i16 11, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 85, i16 86, i16 87, i16 -1, i16 89, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 44, i16 -1, i16 -1, i16 -1, i16 48, i16 -1, i16 -1, i16 51, i16 -1, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 -1, i16 66, i16 67, i16 68, i16 1, i16 -1, i16 3, i16 -1, i16 -1, i16 -1, i16 -1, i16 8, i16 9, i16 -1, i16 11, i16 -1, i16 -1, i16 4, i16 5, i16 6, i16 7, i16 86, i16 87, i16 -1, i16 89, i16 12, i16 13, i16 14, i16 -1, i16 -1, i16 -1, i16 -1, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 28, i16 -1, i16 30, i16 -1, i16 42, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 48, i16 -1, i16 -1, i16 51, i16 -1, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 1, i16 -1, i16 67, i16 4, i16 5, i16 6, i16 7, i16 -1, i16 -1, i16 -1, i16 -1, i16 12, i16 13, i16 14, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 86, i16 87, i16 -1, i16 89, i16 -1, i16 27, i16 28, i16 1, i16 30, i16 -1, i16 4, i16 5, i16 6, i16 7, i16 -1, i16 -1, i16 -1, i16 -1, i16 12, i16 13, i16 14, i16 -1, i16 44, i16 -1, i16 -1, i16 -1, i16 1, i16 -1, i16 3, i16 4, i16 5, i16 6, i16 7, i16 27, i16 28, i16 -1, i16 30, i16 12, i16 13, i16 14, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 67, i16 68, i16 -1, i16 -1, i16 -1, i16 44, i16 -1, i16 27, i16 28, i16 -1, i16 30, i16 31, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 84, i16 -1, i16 -1, i16 -1, i16 88, i16 89, i16 -1, i16 -1, i16 -1, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 -1, i16 11, i16 12, i16 13, i16 14, i16 58, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 84, i16 -1, i16 67, i16 -1, i16 88, i16 89, i16 28, i16 29, i16 30, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 84, i16 42, i16 -1, i16 3, i16 -1, i16 5, i16 -1, i16 48, i16 8, i16 9, i16 51, i16 11, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 -1, i16 -1, i16 67, i16 -1, i16 -1, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 -1, i16 86, i16 87, i16 -1, i16 48, i16 90, i16 -1, i16 51, i16 -1, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 3, i16 -1, i16 67, i16 -1, i16 -1, i16 8, i16 9, i16 -1, i16 11, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 86, i16 87, i16 -1, i16 -1, i16 90, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 3, i16 -1, i16 -1, i16 -1, i16 48, i16 8, i16 9, i16 51, i16 11, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 -1, i16 -1, i16 67, i16 -1, i16 -1, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 -1, i16 86, i16 87, i16 -1, i16 48, i16 90, i16 -1, i16 51, i16 -1, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 -1, i16 -1, i16 67, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 -1, i16 11, i16 12, i16 13, i16 14, i16 -1, i16 86, i16 87, i16 -1, i16 -1, i16 90, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 4, i16 5, i16 6, i16 7, i16 48, i16 -1, i16 -1, i16 51, i16 12, i16 13, i16 14, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 -1, i16 -1, i16 67, i16 28, i16 -1, i16 30, i16 -1, i16 3, i16 4, i16 -1, i16 -1, i16 -1, i16 8, i16 9, i16 -1, i16 11, i16 -1, i16 -1, i16 -1, i16 84, i16 -1, i16 86, i16 87, i16 -1, i16 89, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 -1, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 4, i16 5, i16 6, i16 7, i16 48, i16 -1, i16 -1, i16 51, i16 12, i16 13, i16 14, i16 84, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 3, i16 -1, i16 -1, i16 67, i16 28, i16 8, i16 9, i16 -1, i16 11, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 84, i16 -1, i16 86, i16 87, i16 -1, i16 89, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 48, i16 -1, i16 -1, i16 51, i16 -1, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 -1, i16 -1, i16 67, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 -1, i16 11, i16 12, i16 13, i16 14, i16 -1, i16 -1, i16 4, i16 5, i16 6, i16 7, i16 86, i16 87, i16 -1, i16 89, i16 12, i16 13, i16 14, i16 28, i16 29, i16 30, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 28, i16 42, i16 30, i16 -1, i16 -1, i16 -1, i16 -1, i16 48, i16 -1, i16 -1, i16 51, i16 -1, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 3, i16 4, i16 67, i16 6, i16 7, i16 8, i16 9, i16 -1, i16 11, i16 12, i16 13, i16 14, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 86, i16 87, i16 -1, i16 -1, i16 28, i16 29, i16 30, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 3, i16 -1, i16 -1, i16 -1, i16 48, i16 8, i16 9, i16 51, i16 11, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 -1, i16 -1, i16 67, i16 -1, i16 -1, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 3, i16 86, i16 87, i16 -1, i16 48, i16 8, i16 9, i16 51, i16 11, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 -1, i16 -1, i16 67, i16 -1, i16 -1, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 84, i16 3, i16 86, i16 87, i16 -1, i16 48, i16 8, i16 9, i16 51, i16 11, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 -1, i16 -1, i16 67, i16 -1, i16 -1, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 3, i16 86, i16 87, i16 -1, i16 48, i16 8, i16 9, i16 51, i16 11, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 -1, i16 -1, i16 67, i16 -1, i16 -1, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 3, i16 86, i16 87, i16 -1, i16 48, i16 8, i16 9, i16 51, i16 11, i16 -1, i16 -1, i16 -1, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 -1, i16 -1, i16 -1, i16 67, i16 -1, i16 -1, i16 29, i16 -1, i16 31, i16 -1, i16 33, i16 34, i16 35, i16 36, i16 37, i16 -1, i16 -1, i16 -1, i16 -1, i16 42, i16 -1, i16 -1, i16 86, i16 87, i16 -1, i16 48, i16 -1, i16 -1, i16 51, i16 -1, i16 -1, i16 -1, i16 10, i16 56, i16 57, i16 58, i16 -1, i16 -1, i16 -1, i16 62, i16 63, i16 43, i16 44, i16 45, i16 67, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 -1, i16 -1, i16 -1, i16 -1, i16 86, i16 87, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 -1, i16 -1, i16 43, i16 44, i16 45, i16 90, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 43, i16 44, i16 45, i16 -1, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 43, i16 44, i16 45, i16 88, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 43, i16 44, i16 45, i16 88, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 30, i16 -1, i16 -1, i16 88, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 -1, i16 43, i16 44, i16 45, i16 83, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 4, i16 5, i16 6, i16 7, i16 4, i16 -1, i16 6, i16 7, i16 12, i16 13, i16 14, i16 -1, i16 12, i16 13, i16 14, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 28, i16 -1, i16 30, i16 -1, i16 28, i16 4, i16 30, i16 6, i16 7, i16 4, i16 5, i16 6, i16 7, i16 12, i16 13, i16 14, i16 -1, i16 12, i16 13, i16 14, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 28, i16 -1, i16 30, i16 -1, i16 28, i16 4, i16 5, i16 6, i16 7, i16 4, i16 5, i16 6, i16 7, i16 12, i16 13, i16 14, i16 -1, i16 12, i16 13, i16 14, i16 -1, i16 -1, i16 4, i16 5, i16 6, i16 7, i16 -1, i16 -1, i16 -1, i16 28, i16 12, i16 13, i16 14, i16 28, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 -1, i16 -1, i16 28, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 43, i16 44, i16 45, i16 -1, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 45, i16 -1, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60], align 16
@yytable = internal constant [3206 x i16] [i16 175, i16 186, i16 314, i16 416, i16 21, i16 21, i16 45, i16 45, i16 220, i16 419, i16 22, i16 22, i16 374, i16 56, i16 57, i16 58, i16 396, i16 308, i16 385, i16 418, i16 223, i16 616, i16 478, i16 25, i16 25, i16 72, i16 619, i16 81, i16 415, i16 90, i16 639, i16 99, i16 542, i16 108, i16 228, i16 117, i16 478, i16 126, i16 624, i16 135, i16 844, i16 23, i16 23, i16 24, i16 24, i16 26, i16 26, i16 27, i16 27, i16 332, i16 28, i16 28, i16 614, i16 665, i16 21, i16 541, i16 45, i16 715, i16 479, i16 617, i16 22, i16 408, i16 52, i16 52, i16 45, i16 198, i16 -105, i16 45, i16 658, i16 540, i16 688, i16 199, i16 479, i16 25, i16 615, i16 409, i16 242, i16 662, i16 67, i16 -443, i16 480, i16 147, i16 149, i16 151, i16 809, i16 619, i16 144, i16 145, i16 144, i16 145, i16 659, i16 23, i16 300, i16 24, i16 480, i16 26, i16 273, i16 27, i16 776, i16 845, i16 28, i16 53, i16 200, i16 616, i16 201, i16 232, i16 233, i16 561, i16 827, i16 866, i16 144, i16 145, i16 52, i16 143, i16 458, i16 238, i16 481, i16 -444, i16 617, i16 8, i16 574, i16 243, i16 -445, i16 576, i16 143, i16 143, i16 143, i16 736, i16 840, i16 737, i16 481, i16 -1, i16 278, i16 374, i16 614, i16 -446, i16 455, i16 -2, i16 888, i16 14, i16 143, i16 345, i16 14, i16 69, i16 599, i16 828, i16 635, i16 635, i16 732, i16 143, i16 152, i16 351, i16 299, i16 352, i16 -105, i16 741, i16 615, i16 332, i16 143, i16 14, i16 753, i16 144, i16 145, i16 -423, i16 777, i16 610, i16 14, i16 143, i16 59, i16 478, i16 470, i16 867, i16 146, i16 860, i16 148, i16 45, i16 143, i16 399, i16 62, i16 626, i16 875, i16 650, i16 668, i16 461, i16 670, i16 143, i16 527, i16 530, i16 533, i16 536, i16 60, i16 72, i16 761, i16 81, i16 143, i16 90, i16 150, i16 99, i16 237, i16 224, i16 543, i16 -424, i16 72, i16 143, i16 81, i16 479, i16 -425, i16 787, i16 789, i16 879, i16 861, i16 897, i16 538, i16 375, i16 61, i16 45, i16 696, i16 651, i16 198, i16 -426, i16 45, i16 425, i16 142, i16 427, i16 199, i16 798, i16 78, i16 480, i16 323, i16 686, i16 45, i16 285, i16 197, i16 627, i16 324, i16 227, i16 209, i16 398, i16 229, i16 654, i16 45, i16 405, i16 628, i16 211, i16 238, i16 836, i16 880, i16 327, i16 231, i16 14, i16 45, i16 586, i16 45, i16 587, i16 206, i16 200, i16 735, i16 201, i16 207, i16 140, i16 141, i16 289, i16 290, i16 481, i16 339, i16 325, i16 62, i16 326, i16 14, i16 328, i16 750, i16 329, i16 234, i16 143, i16 330, i16 655, i16 210, i16 211, i16 819, i16 235, i16 390, i16 236, i16 210, i16 211, i16 314, i16 391, i16 334, i16 244, i16 542, i16 625, i16 671, i16 616, i16 674, i16 62, i16 215, i16 436, i16 439, i16 542, i16 393, i16 338, i16 45, i16 144, i16 145, i16 371, i16 372, i16 210, i16 211, i16 279, i16 91, i16 7, i16 92, i16 541, i16 760, i16 54, i16 55, i16 9, i16 10, i16 11, i16 315, i16 211, i16 541, i16 63, i16 614, i16 245, i16 635, i16 635, i16 273, i16 72, i16 62, i16 81, i16 64, i16 90, i16 281, i16 99, i16 500, i16 74, i16 323, i16 518, i16 45, i16 520, i16 491, i16 310, i16 324, i16 492, i16 615, i16 311, i16 62, i16 215, i16 216, i16 395, i16 238, i16 791, i16 62, i16 526, i16 529, i16 327, i16 535, i16 217, i16 301, i16 881, i16 882, i16 -472, i16 -472, i16 -472, i16 -472, i16 83, i16 289, i16 290, i16 317, i16 -472, i16 -472, i16 -472, i16 207, i16 325, i16 293, i16 326, i16 339, i16 328, i16 320, i16 329, i16 144, i16 145, i16 330, i16 636, i16 198, i16 -472, i16 45, i16 -247, i16 346, i16 672, i16 199, i16 336, i16 637, i16 211, i16 334, i16 86, i16 7, i16 87, i16 459, i16 474, i16 349, i16 216, i16 9, i16 10, i16 11, i16 475, i16 347, i16 627, i16 524, i16 478, i16 217, i16 445, i16 525, i16 474, i16 -378, i16 -378, i16 628, i16 211, i16 476, i16 475, i16 14, i16 200, i16 547, i16 201, i16 782, i16 285, i16 783, i16 548, i16 717, i16 348, i16 209, i16 555, i16 476, i16 -273, i16 62, i16 556, i16 45, i16 726, i16 45, i16 -79, i16 477, i16 377, i16 673, i16 204, i16 666, i16 479, i16 -104, i16 -273, i16 14, i16 376, i16 70, i16 75, i16 79, i16 84, i16 477, i16 381, i16 543, i16 557, i16 106, i16 111, i16 115, i16 120, i16 558, i16 339, i16 745, i16 543, i16 392, i16 480, i16 315, i16 211, i16 528, i16 531, i16 534, i16 537, i16 -246, i16 873, i16 874, i16 675, i16 72, i16 155, i16 90, i16 612, i16 108, i16 382, i16 126, i16 210, i16 211, i16 -273, i16 401, i16 63, i16 716, i16 -273, i16 383, i16 211, i16 830, i16 245, i16 831, i16 705, i16 64, i16 706, i16 707, i16 708, i16 709, i16 481, i16 890, i16 88, i16 93, i16 97, i16 102, i16 891, i16 264, i16 265, i16 266, i16 124, i16 129, i16 133, i16 138, i16 71, i16 76, i16 80, i16 85, i16 210, i16 211, i16 464, i16 211, i16 107, i16 112, i16 116, i16 121, i16 406, i16 95, i16 7, i16 96, i16 722, i16 211, i16 720, i16 211, i16 9, i16 10, i16 11, i16 612, i16 412, i16 21, i16 423, i16 45, i16 314, i16 474, i16 695, i16 22, i16 818, i16 722, i16 211, i16 475, i16 421, i16 422, i16 14, i16 247, i16 249, i16 642, i16 598, i16 45, i16 25, i16 733, i16 734, i16 643, i16 476, i16 311, i16 207, i16 803, i16 278, i16 763, i16 805, i16 311, i16 428, i16 611, i16 207, i16 429, i16 646, i16 434, i16 23, i16 440, i16 24, i16 764, i16 26, i16 437, i16 27, i16 438, i16 477, i16 28, i16 294, i16 413, i16 414, i16 307, i16 780, i16 781, i16 644, i16 309, i16 645, i16 443, i16 647, i16 622, i16 648, i16 885, i16 444, i16 649, i16 466, i16 490, i16 494, i16 504, i16 -248, i16 632, i16 638, i16 512, i16 513, i16 895, i16 516, i16 70, i16 75, i16 79, i16 84, i16 679, i16 435, i16 522, i16 395, i16 21, i16 301, i16 45, i16 539, i16 549, i16 198, i16 22, i16 45, i16 550, i16 611, i16 676, i16 199, i16 554, i16 757, i16 198, i16 725, i16 45, i16 697, i16 559, i16 25, i16 199, i16 560, i16 72, i16 562, i16 81, i16 564, i16 90, i16 580, i16 99, i16 209, i16 108, i16 573, i16 117, i16 575, i16 126, i16 673, i16 135, i16 23, i16 581, i16 24, i16 583, i16 26, i16 200, i16 27, i16 201, i16 623, i16 28, i16 88, i16 93, i16 97, i16 102, i16 200, i16 661, i16 201, i16 -30, i16 682, i16 683, i16 684, i16 622, i16 71, i16 76, i16 80, i16 85, i16 144, i16 145, i16 282, i16 283, i16 284, i16 -31, i16 417, i16 294, i16 691, i16 692, i16 316, i16 693, i16 420, i16 801, i16 122, i16 7, i16 123, i16 551, i16 551, i16 698, i16 701, i16 9, i16 10, i16 11, i16 704, i16 811, i16 275, i16 610, i16 426, i16 772, i16 759, i16 817, i16 563, i16 565, i16 131, i16 7, i16 132, i16 756, i16 758, i16 14, i16 771, i16 9, i16 10, i16 11, i16 89, i16 94, i16 98, i16 103, i16 5, i16 73, i16 7, i16 74, i16 125, i16 130, i16 134, i16 139, i16 9, i16 10, i16 11, i16 14, i16 790, i16 832, i16 833, i16 797, i16 835, i16 70, i16 75, i16 79, i16 84, i16 389, i16 802, i16 800, i16 13, i16 301, i16 766, i16 462, i16 -108, i16 -108, i16 -108, i16 -108, i16 834, i16 807, i16 -108, i16 808, i16 -108, i16 -108, i16 -108, i16 810, i16 289, i16 290, i16 839, i16 843, i16 858, i16 -254, i16 849, i16 855, i16 869, i16 289, i16 290, i16 474, i16 -108, i16 786, i16 788, i16 7, i16 92, i16 475, i16 143, i16 857, i16 835, i16 9, i16 10, i16 11, i16 868, i16 -256, i16 852, i16 853, i16 862, i16 871, i16 476, i16 876, i16 88, i16 93, i16 97, i16 102, i16 878, i16 21, i16 877, i16 45, i16 -243, i16 884, i16 887, i16 22, i16 71, i16 76, i16 80, i16 85, i16 892, i16 835, i16 889, i16 893, i16 477, i16 894, i16 899, i16 900, i16 25, i16 100, i16 7, i16 101, i16 469, i16 702, i16 703, i16 497, i16 9, i16 10, i16 11, i16 410, i16 545, i16 652, i16 653, i16 498, i16 656, i16 -108, i16 23, i16 657, i16 24, i16 501, i16 26, i16 467, i16 27, i16 321, i16 669, i16 28, i16 5, i16 752, i16 7, i16 8, i16 5, i16 465, i16 7, i16 74, i16 9, i16 10, i16 11, i16 622, i16 9, i16 10, i16 11, i16 262, i16 263, i16 264, i16 265, i16 266, i16 859, i16 730, i16 731, i16 394, i16 13, i16 785, i16 14, i16 15, i16 13, i16 779, i16 316, i16 316, i16 577, i16 578, i16 517, i16 687, i16 579, i16 424, i16 89, i16 94, i16 98, i16 103, i16 738, i16 743, i16 70, i16 75, i16 841, i16 515, i16 106, i16 111, i16 842, i16 431, i16 -249, i16 460, i16 714, i16 870, i16 208, i16 553, i16 872, i16 -26, i16 -26, i16 -26, i16 -26, i16 127, i16 7, i16 128, i16 546, i16 -26, i16 -26, i16 -26, i16 9, i16 10, i16 11, i16 0, i16 0, i16 0, i16 0, i16 0, i16 389, i16 389, i16 322, i16 -370, i16 209, i16 -26, i16 0, i16 -273, i16 5, i16 82, i16 7, i16 83, i16 0, i16 0, i16 0, i16 0, i16 9, i16 10, i16 11, i16 88, i16 93, i16 -273, i16 677, i16 124, i16 129, i16 343, i16 344, i16 0, i16 0, i16 0, i16 0, i16 0, i16 13, i16 71, i16 76, i16 0, i16 350, i16 107, i16 112, i16 0, i16 0, i16 353, i16 354, i16 0, i16 210, i16 211, i16 359, i16 360, i16 361, i16 362, i16 363, i16 364, i16 365, i16 366, i16 367, i16 368, i16 369, i16 370, i16 457, i16 0, i16 0, i16 -273, i16 0, i16 0, i16 -255, i16 -273, i16 -26, i16 0, i16 0, i16 0, i16 718, i16 719, i16 0, i16 0, i16 724, i16 0, i16 136, i16 7, i16 137, i16 727, i16 728, i16 0, i16 729, i16 9, i16 10, i16 11, i16 0, i16 495, i16 -245, i16 0, i16 0, i16 389, i16 389, i16 0, i16 0, i16 0, i16 89, i16 94, i16 98, i16 103, i16 0, i16 508, i16 511, i16 0, i16 5, i16 109, i16 7, i16 110, i16 0, i16 0, i16 0, i16 0, i16 9, i16 10, i16 11, i16 742, i16 0, i16 5, i16 746, i16 7, i16 83, i16 0, i16 0, i16 0, i16 0, i16 9, i16 10, i16 11, i16 13, i16 0, i16 457, i16 457, i16 532, i16 457, i16 70, i16 75, i16 79, i16 84, i16 0, i16 0, i16 0, i16 13, i16 106, i16 111, i16 115, i16 120, i16 0, i16 0, i16 441, i16 442, i16 0, i16 0, i16 0, i16 0, i16 471, i16 -257, i16 472, i16 5, i16 6, i16 7, i16 8, i16 0, i16 294, i16 473, i16 294, i16 9, i16 10, i16 11, i16 0, i16 721, i16 723, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 209, i16 0, i16 0, i16 -273, i16 13, i16 792, i16 570, i16 -251, i16 572, i16 794, i16 0, i16 0, i16 88, i16 93, i16 97, i16 102, i16 0, i16 -273, i16 0, i16 0, i16 124, i16 129, i16 133, i16 138, i16 71, i16 76, i16 80, i16 85, i16 0, i16 0, i16 0, i16 0, i16 107, i16 112, i16 116, i16 121, i16 0, i16 86, i16 7, i16 87, i16 210, i16 211, i16 514, i16 0, i16 9, i16 10, i16 11, i16 519, i16 0, i16 0, i16 820, i16 821, i16 0, i16 822, i16 523, i16 0, i16 0, i16 -273, i16 823, i16 -534, i16 824, i16 -273, i16 14, i16 0, i16 0, i16 0, i16 0, i16 829, i16 89, i16 94, i16 0, i16 0, i16 125, i16 130, i16 0, i16 0, i16 122, i16 7, i16 123, i16 389, i16 389, i16 0, i16 0, i16 9, i16 10, i16 11, i16 0, i16 0, i16 389, i16 389, i16 0, i16 0, i16 389, i16 389, i16 471, i16 0, i16 0, i16 5, i16 6, i16 7, i16 8, i16 14, i16 0, i16 473, i16 0, i16 9, i16 10, i16 11, i16 5, i16 68, i16 7, i16 69, i16 0, i16 568, i16 700, i16 0, i16 9, i16 10, i16 11, i16 7, i16 101, i16 13, i16 7, i16 87, i16 0, i16 9, i16 10, i16 11, i16 9, i16 10, i16 11, i16 0, i16 13, i16 0, i16 14, i16 590, i16 0, i16 773, i16 0, i16 -450, i16 -450, i16 721, i16 723, i16 723, i16 -450, i16 -450, i16 14, i16 -450, i16 0, i16 0, i16 0, i16 -450, i16 0, i16 -450, i16 -450, i16 -450, i16 -450, i16 -450, i16 -450, i16 -450, i16 -450, i16 -450, i16 -450, i16 -450, i16 0, i16 -450, i16 0, i16 -450, i16 0, i16 -450, i16 -450, i16 -450, i16 -450, i16 -450, i16 739, i16 0, i16 -534, i16 511, i16 -450, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -450, i16 568, i16 0, i16 -450, i16 -242, i16 0, i16 0, i16 0, i16 -450, i16 -450, i16 -450, i16 0, i16 678, i16 0, i16 -450, i16 -450, i16 0, i16 680, i16 0, i16 -450, i16 5, i16 77, i16 7, i16 78, i16 0, i16 0, i16 590, i16 689, i16 9, i16 10, i16 11, i16 0, i16 690, i16 0, i16 0, i16 0, i16 -450, i16 0, i16 -450, i16 -450, i16 0, i16 -450, i16 0, i16 0, i16 13, i16 0, i16 14, i16 0, i16 0, i16 0, i16 0, i16 566, i16 0, i16 153, i16 89, i16 94, i16 98, i16 103, i16 154, i16 155, i16 0, i16 156, i16 125, i16 130, i16 134, i16 139, i16 5, i16 118, i16 7, i16 119, i16 0, i16 0, i16 0, i16 0, i16 9, i16 10, i16 11, i16 0, i16 0, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 13, i16 0, i16 163, i16 532, i16 0, i16 0, i16 0, i16 590, i16 164, i16 0, i16 -244, i16 165, i16 740, i16 0, i16 0, i16 744, i16 166, i16 167, i16 168, i16 0, i16 0, i16 590, i16 169, i16 170, i16 590, i16 0, i16 590, i16 171, i16 748, i16 5, i16 321, i16 7, i16 69, i16 5, i16 0, i16 7, i16 8, i16 9, i16 10, i16 11, i16 0, i16 9, i16 10, i16 11, i16 0, i16 532, i16 172, i16 173, i16 0, i16 567, i16 0, i16 0, i16 0, i16 13, i16 0, i16 14, i16 -253, i16 13, i16 0, i16 14, i16 15, i16 250, i16 251, i16 252, i16 0, i16 253, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 863, i16 864, i16 793, i16 0, i16 0, i16 0, i16 795, i16 0, i16 0, i16 796, i16 0, i16 0, i16 590, i16 0, i16 274, i16 799, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 0, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 749, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 -448, i16 0, i16 0, i16 0, i16 0, i16 -448, i16 0, i16 5, i16 6, i16 7, i16 8, i16 -448, i16 0, i16 641, i16 -448, i16 9, i16 10, i16 11, i16 0, i16 -448, i16 -448, i16 -448, i16 0, i16 0, i16 0, i16 -448, i16 -448, i16 0, i16 0, i16 0, i16 -448, i16 13, i16 0, i16 14, i16 0, i16 95, i16 7, i16 96, i16 0, i16 0, i16 0, i16 0, i16 9, i16 10, i16 11, i16 0, i16 0, i16 -448, i16 275, i16 -448, i16 -448, i16 447, i16 -448, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 14, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 0, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 0, i16 -472, i16 -472, i16 -472, i16 -472, i16 -472, i16 91, i16 7, i16 92, i16 0, i16 -472, i16 0, i16 0, i16 9, i16 10, i16 11, i16 -472, i16 0, i16 0, i16 -472, i16 127, i16 7, i16 128, i16 0, i16 -472, i16 -472, i16 -472, i16 9, i16 10, i16 11, i16 -472, i16 -472, i16 0, i16 0, i16 0, i16 -472, i16 5, i16 104, i16 7, i16 105, i16 131, i16 7, i16 132, i16 0, i16 9, i16 10, i16 11, i16 9, i16 10, i16 11, i16 0, i16 0, i16 -472, i16 0, i16 -472, i16 -472, i16 812, i16 -472, i16 -479, i16 -479, i16 13, i16 0, i16 14, i16 -479, i16 -479, i16 14, i16 -479, i16 0, i16 0, i16 0, i16 -479, i16 0, i16 -479, i16 -479, i16 -479, i16 -479, i16 -479, i16 -479, i16 -479, i16 -479, i16 -479, i16 -479, i16 -479, i16 0, i16 -479, i16 0, i16 -479, i16 0, i16 -479, i16 -479, i16 -479, i16 -479, i16 -479, i16 0, i16 0, i16 0, i16 0, i16 -479, i16 0, i16 0, i16 0, i16 7, i16 96, i16 -479, i16 0, i16 0, i16 -479, i16 9, i16 10, i16 11, i16 0, i16 -479, i16 -479, i16 -479, i16 0, i16 0, i16 -250, i16 -479, i16 -479, i16 0, i16 0, i16 239, i16 -479, i16 153, i16 5, i16 14, i16 7, i16 8, i16 154, i16 155, i16 0, i16 156, i16 9, i16 10, i16 11, i16 0, i16 0, i16 0, i16 0, i16 -479, i16 0, i16 -479, i16 -479, i16 0, i16 -479, i16 0, i16 0, i16 0, i16 13, i16 157, i16 14, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 100, i16 7, i16 101, i16 0, i16 163, i16 0, i16 0, i16 9, i16 10, i16 11, i16 164, i16 0, i16 0, i16 165, i16 136, i16 7, i16 137, i16 0, i16 166, i16 167, i16 168, i16 9, i16 10, i16 11, i16 169, i16 170, i16 0, i16 0, i16 584, i16 171, i16 585, i16 145, i16 0, i16 0, i16 0, i16 154, i16 155, i16 0, i16 156, i16 0, i16 0, i16 0, i16 0, i16 0, i16 5, i16 68, i16 7, i16 69, i16 172, i16 173, i16 0, i16 240, i16 9, i16 10, i16 11, i16 0, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 13, i16 163, i16 14, i16 0, i16 0, i16 0, i16 0, i16 164, i16 267, i16 268, i16 165, i16 269, i16 270, i16 271, i16 272, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 0, i16 586, i16 171, i16 587, i16 584, i16 0, i16 585, i16 145, i16 0, i16 0, i16 0, i16 154, i16 155, i16 0, i16 156, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -301, i16 172, i16 173, i16 0, i16 588, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 0, i16 163, i16 0, i16 0, i16 0, i16 0, i16 0, i16 164, i16 0, i16 0, i16 165, i16 0, i16 0, i16 0, i16 0, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 0, i16 586, i16 171, i16 587, i16 584, i16 0, i16 153, i16 0, i16 0, i16 0, i16 0, i16 154, i16 155, i16 0, i16 156, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -367, i16 172, i16 173, i16 0, i16 588, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 0, i16 163, i16 0, i16 -314, i16 0, i16 0, i16 0, i16 164, i16 0, i16 0, i16 165, i16 0, i16 0, i16 0, i16 0, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 0, i16 -314, i16 171, i16 -314, i16 584, i16 0, i16 153, i16 0, i16 0, i16 0, i16 0, i16 154, i16 155, i16 0, i16 156, i16 0, i16 0, i16 5, i16 104, i16 7, i16 105, i16 172, i16 173, i16 0, i16 588, i16 9, i16 10, i16 11, i16 0, i16 0, i16 0, i16 0, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 13, i16 0, i16 14, i16 0, i16 163, i16 0, i16 0, i16 0, i16 0, i16 0, i16 164, i16 0, i16 0, i16 165, i16 0, i16 0, i16 0, i16 0, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 318, i16 0, i16 171, i16 -22, i16 -22, i16 -22, i16 -22, i16 0, i16 0, i16 0, i16 0, i16 -22, i16 -22, i16 -22, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 172, i16 173, i16 0, i16 588, i16 0, i16 209, i16 -22, i16 312, i16 -273, i16 0, i16 -18, i16 -18, i16 -18, i16 -18, i16 0, i16 0, i16 0, i16 0, i16 -18, i16 -18, i16 -18, i16 0, i16 -273, i16 0, i16 0, i16 0, i16 4, i16 0, i16 -117, i16 5, i16 6, i16 7, i16 8, i16 209, i16 -18, i16 0, i16 -273, i16 9, i16 10, i16 11, i16 0, i16 0, i16 0, i16 0, i16 0, i16 210, i16 211, i16 0, i16 0, i16 0, i16 -273, i16 0, i16 12, i16 13, i16 0, i16 14, i16 15, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -273, i16 0, i16 0, i16 0, i16 -273, i16 -22, i16 0, i16 0, i16 0, i16 153, i16 5, i16 296, i16 7, i16 8, i16 154, i16 155, i16 0, i16 156, i16 9, i16 10, i16 11, i16 -117, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -273, i16 0, i16 -117, i16 0, i16 -273, i16 -18, i16 13, i16 157, i16 14, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 16, i16 163, i16 0, i16 153, i16 0, i16 402, i16 0, i16 164, i16 154, i16 155, i16 165, i16 156, i16 0, i16 0, i16 0, i16 166, i16 167, i16 297, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 0, i16 0, i16 171, i16 0, i16 0, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 0, i16 163, i16 0, i16 0, i16 172, i16 173, i16 0, i16 164, i16 298, i16 0, i16 165, i16 0, i16 0, i16 0, i16 0, i16 166, i16 167, i16 403, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 153, i16 0, i16 171, i16 0, i16 0, i16 154, i16 155, i16 0, i16 156, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 172, i16 173, i16 0, i16 0, i16 404, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 0, i16 163, i16 0, i16 153, i16 0, i16 0, i16 0, i16 164, i16 154, i16 155, i16 165, i16 156, i16 0, i16 0, i16 0, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 0, i16 0, i16 171, i16 0, i16 0, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 0, i16 163, i16 0, i16 0, i16 172, i16 173, i16 0, i16 164, i16 400, i16 0, i16 165, i16 0, i16 0, i16 0, i16 0, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 0, i16 0, i16 171, i16 0, i16 0, i16 0, i16 0, i16 0, i16 585, i16 601, i16 6, i16 7, i16 8, i16 154, i16 155, i16 0, i16 156, i16 9, i16 10, i16 11, i16 0, i16 172, i16 173, i16 0, i16 0, i16 493, i16 602, i16 603, i16 604, i16 605, i16 606, i16 607, i16 608, i16 13, i16 157, i16 14, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 0, i16 163, i16 0, i16 5, i16 113, i16 7, i16 114, i16 164, i16 0, i16 0, i16 165, i16 9, i16 10, i16 11, i16 0, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 0, i16 0, i16 171, i16 13, i16 0, i16 14, i16 0, i16 585, i16 145, i16 0, i16 0, i16 0, i16 154, i16 155, i16 0, i16 156, i16 0, i16 0, i16 0, i16 609, i16 0, i16 172, i16 173, i16 0, i16 610, i16 602, i16 603, i16 604, i16 605, i16 606, i16 607, i16 608, i16 0, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 0, i16 163, i16 0, i16 5, i16 6, i16 7, i16 8, i16 164, i16 0, i16 0, i16 165, i16 9, i16 10, i16 11, i16 -252, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 153, i16 0, i16 0, i16 171, i16 13, i16 154, i16 155, i16 0, i16 156, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 609, i16 0, i16 172, i16 173, i16 0, i16 610, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 0, i16 163, i16 0, i16 0, i16 0, i16 0, i16 0, i16 164, i16 0, i16 0, i16 165, i16 0, i16 0, i16 0, i16 0, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 0, i16 0, i16 171, i16 153, i16 5, i16 6, i16 7, i16 8, i16 154, i16 155, i16 0, i16 156, i16 9, i16 10, i16 11, i16 0, i16 0, i16 5, i16 77, i16 7, i16 78, i16 172, i16 173, i16 0, i16 435, i16 9, i16 10, i16 11, i16 13, i16 157, i16 14, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 13, i16 163, i16 14, i16 0, i16 0, i16 0, i16 0, i16 164, i16 0, i16 0, i16 165, i16 0, i16 0, i16 0, i16 0, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 153, i16 5, i16 171, i16 7, i16 8, i16 154, i16 155, i16 0, i16 156, i16 9, i16 10, i16 11, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 172, i16 173, i16 0, i16 0, i16 13, i16 157, i16 14, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 0, i16 163, i16 0, i16 153, i16 0, i16 0, i16 0, i16 164, i16 154, i16 155, i16 165, i16 156, i16 0, i16 0, i16 0, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 0, i16 0, i16 171, i16 0, i16 0, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 0, i16 163, i16 0, i16 153, i16 172, i16 173, i16 0, i16 164, i16 154, i16 155, i16 165, i16 156, i16 0, i16 0, i16 0, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 0, i16 0, i16 171, i16 0, i16 0, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 0, i16 163, i16 694, i16 153, i16 172, i16 173, i16 0, i16 164, i16 154, i16 155, i16 165, i16 156, i16 0, i16 0, i16 0, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 0, i16 0, i16 171, i16 0, i16 0, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 0, i16 163, i16 0, i16 153, i16 172, i16 173, i16 0, i16 164, i16 154, i16 155, i16 165, i16 156, i16 0, i16 0, i16 0, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 0, i16 0, i16 246, i16 0, i16 0, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 0, i16 163, i16 0, i16 468, i16 172, i16 173, i16 0, i16 164, i16 154, i16 155, i16 165, i16 156, i16 0, i16 0, i16 0, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 0, i16 0, i16 0, i16 248, i16 0, i16 0, i16 157, i16 0, i16 15, i16 0, i16 158, i16 159, i16 160, i16 161, i16 162, i16 0, i16 0, i16 0, i16 0, i16 163, i16 0, i16 0, i16 172, i16 173, i16 0, i16 164, i16 0, i16 0, i16 165, i16 0, i16 0, i16 0, i16 754, i16 166, i16 167, i16 168, i16 0, i16 0, i16 0, i16 169, i16 170, i16 250, i16 251, i16 252, i16 171, i16 253, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 0, i16 0, i16 0, i16 0, i16 172, i16 173, i16 250, i16 251, i16 252, i16 755, i16 253, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 0, i16 0, i16 250, i16 251, i16 252, i16 825, i16 253, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 250, i16 251, i16 252, i16 0, i16 253, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 250, i16 251, i16 252, i16 432, i16 253, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 250, i16 251, i16 252, i16 433, i16 253, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 14, i16 0, i16 0, i16 582, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 0, i16 250, i16 251, i16 252, i16 747, i16 253, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 5, i16 113, i16 7, i16 114, i16 5, i16 0, i16 7, i16 78, i16 9, i16 10, i16 11, i16 0, i16 9, i16 10, i16 11, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 13, i16 0, i16 14, i16 0, i16 13, i16 5, i16 14, i16 7, i16 8, i16 5, i16 73, i16 7, i16 74, i16 9, i16 10, i16 11, i16 0, i16 9, i16 10, i16 11, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 13, i16 0, i16 14, i16 0, i16 13, i16 5, i16 109, i16 7, i16 110, i16 5, i16 82, i16 7, i16 83, i16 9, i16 10, i16 11, i16 0, i16 9, i16 10, i16 11, i16 0, i16 0, i16 5, i16 118, i16 7, i16 119, i16 0, i16 0, i16 0, i16 13, i16 9, i16 10, i16 11, i16 13, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 0, i16 0, i16 13, i16 250, i16 251, i16 252, i16 826, i16 253, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 250, i16 251, i16 252, i16 0, i16 253, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 252, i16 0, i16 253, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266], align 16
@.str.8 = private unnamed_addr constant [25 x i8] c"Shifting token %d (%s), \00", align 1
@yydefact = internal constant [901 x i16] [i16 3, i16 5, i16 0, i16 0, i16 0, i16 266, i16 157, i16 263, i16 125, i16 351, i16 347, i16 349, i16 0, i16 0, i16 0, i16 559, i16 17, i16 4, i16 8, i16 7, i16 0, i16 210, i16 211, i16 212, i16 213, i16 202, i16 203, i16 204, i16 205, i16 214, i16 215, i16 216, i16 217, i16 206, i16 207, i16 208, i16 209, i16 117, i16 117, i16 0, i16 133, i16 140, i16 260, i16 262, i16 261, i16 131, i16 283, i16 0, i16 0, i16 0, i16 265, i16 264, i16 0, i16 6, i16 15, i16 16, i16 352, i16 348, i16 350, i16 0, i16 0, i16 0, i16 346, i16 258, i16 281, i16 0, i16 271, i16 0, i16 160, i16 126, i16 138, i16 144, i16 128, i16 161, i16 127, i16 139, i16 145, i16 167, i16 129, i16 150, i16 155, i16 132, i16 168, i16 130, i16 151, i16 156, i16 178, i16 134, i16 136, i16 142, i16 141, i16 179, i16 135, i16 137, i16 143, i16 193, i16 146, i16 148, i16 153, i16 152, i16 194, i16 147, i16 149, i16 154, i16 162, i16 158, i16 176, i16 185, i16 164, i16 163, i16 159, i16 177, i16 186, i16 169, i16 165, i16 191, i16 200, i16 171, i16 170, i16 166, i16 192, i16 201, i16 180, i16 172, i16 174, i16 183, i16 182, i16 181, i16 173, i16 175, i16 184, i16 195, i16 187, i16 189, i16 198, i16 197, i16 196, i16 188, i16 190, i16 199, i16 0, i16 0, i16 14, i16 284, i16 30, i16 31, i16 372, i16 363, i16 372, i16 364, i16 361, i16 365, i16 10, i16 83, i16 84, i16 102, i16 55, i16 56, i16 0, i16 0, i16 0, i16 0, i16 0, i16 86, i16 0, i16 32, i16 34, i16 33, i16 0, i16 35, i16 36, i16 0, i16 37, i16 38, i16 0, i16 0, i16 39, i16 57, i16 0, i16 0, i16 59, i16 42, i16 44, i16 85, i16 0, i16 0, i16 0, i16 238, i16 239, i16 240, i16 241, i16 234, i16 235, i16 236, i16 237, i16 396, i16 0, i16 288, i16 230, i16 231, i16 232, i16 233, i16 259, i16 0, i16 0, i16 282, i16 11, i16 281, i16 29, i16 0, i16 281, i16 0, i16 0, i16 281, i16 345, i16 331, i16 258, i16 281, i16 0, i16 269, i16 0, i16 325, i16 326, i16 0, i16 0, i16 0, i16 0, i16 353, i16 0, i16 356, i16 0, i16 359, i16 53, i16 54, i16 0, i16 0, i16 0, i16 48, i16 45, i16 0, i16 464, i16 0, i16 0, i16 47, i16 0, i16 0, i16 0, i16 49, i16 0, i16 51, i16 0, i16 0, i16 76, i16 74, i16 72, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 100, i16 101, i16 0, i16 0, i16 40, i16 0, i16 103, i16 0, i16 460, i16 452, i16 0, i16 46, i16 267, i16 398, i16 268, i16 294, i16 295, i16 296, i16 293, i16 0, i16 286, i16 289, i16 344, i16 0, i16 0, i16 118, i16 0, i16 551, i16 342, i16 0, i16 0, i16 416, i16 0, i16 0, i16 0, i16 27, i16 0, i16 472, i16 109, i16 473, i16 280, i16 0, i16 0, i16 13, i16 281, i16 21, i16 0, i16 281, i16 281, i16 329, i16 12, i16 25, i16 0, i16 281, i16 379, i16 374, i16 230, i16 231, i16 232, i16 233, i16 226, i16 227, i16 228, i16 229, i16 117, i16 117, i16 371, i16 0, i16 372, i16 281, i16 372, i16 393, i16 394, i16 368, i16 391, i16 0, i16 0, i16 0, i16 0, i16 90, i16 89, i16 0, i16 9, i16 43, i16 0, i16 0, i16 82, i16 81, i16 0, i16 0, i16 0, i16 0, i16 70, i16 71, i16 69, i16 68, i16 67, i16 65, i16 66, i16 60, i16 61, i16 62, i16 63, i16 64, i16 99, i16 98, i16 0, i16 41, i16 0, i16 92, i16 0, i16 0, i16 453, i16 454, i16 91, i16 258, i16 281, i16 397, i16 399, i16 404, i16 403, i16 405, i16 413, i16 0, i16 288, i16 40, i16 343, i16 272, i16 273, i16 0, i16 0, i16 0, i16 0, i16 418, i16 414, i16 0, i16 0, i16 417, i16 0, i16 447, i16 472, i16 111, i16 106, i16 110, i16 0, i16 278, i16 330, i16 0, i16 0, i16 19, i16 277, i16 328, i16 23, i16 355, i16 472, i16 472, i16 373, i16 380, i16 0, i16 358, i16 0, i16 0, i16 369, i16 0, i16 368, i16 0, i16 0, i16 0, i16 87, i16 58, i16 50, i16 52, i16 0, i16 0, i16 75, i16 73, i16 93, i16 97, i16 557, i16 0, i16 463, i16 432, i16 462, i16 472, i16 472, i16 472, i16 472, i16 0, i16 441, i16 0, i16 473, i16 427, i16 436, i16 455, i16 407, i16 527, i16 412, i16 281, i16 411, i16 285, i16 287, i16 83, i16 0, i16 274, i16 0, i16 555, i16 535, i16 222, i16 223, i16 218, i16 219, i16 224, i16 225, i16 220, i16 221, i16 117, i16 117, i16 553, i16 0, i16 536, i16 538, i16 552, i16 0, i16 420, i16 0, i16 0, i16 419, i16 415, i16 473, i16 107, i16 117, i16 117, i16 0, i16 327, i16 270, i16 273, i16 472, i16 275, i16 472, i16 375, i16 381, i16 473, i16 377, i16 383, i16 473, i16 281, i16 281, i16 395, i16 392, i16 281, i16 0, i16 0, i16 0, i16 0, i16 0, i16 77, i16 80, i16 456, i16 0, i16 433, i16 428, i16 437, i16 434, i16 429, i16 438, i16 473, i16 430, i16 439, i16 435, i16 431, i16 440, i16 442, i16 449, i16 450, i16 406, i16 408, i16 0, i16 0, i16 527, i16 410, i16 290, i16 0, i16 292, i16 533, i16 550, i16 400, i16 400, i16 529, i16 530, i16 0, i16 554, i16 0, i16 421, i16 422, i16 0, i16 114, i16 0, i16 115, i16 0, i16 300, i16 298, i16 297, i16 279, i16 473, i16 0, i16 473, i16 281, i16 376, i16 281, i16 0, i16 354, i16 357, i16 362, i16 281, i16 94, i16 0, i16 96, i16 313, i16 83, i16 0, i16 0, i16 310, i16 0, i16 312, i16 0, i16 366, i16 303, i16 309, i16 0, i16 0, i16 0, i16 558, i16 450, i16 461, i16 266, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 515, i16 510, i16 459, i16 472, i16 0, i16 116, i16 117, i16 117, i16 0, i16 0, i16 448, i16 497, i16 477, i16 478, i16 0, i16 409, i16 528, i16 0, i16 336, i16 258, i16 281, i16 281, i16 332, i16 333, i16 281, i16 547, i16 401, i16 404, i16 258, i16 281, i16 281, i16 549, i16 281, i16 537, i16 210, i16 211, i16 212, i16 213, i16 202, i16 203, i16 204, i16 205, i16 214, i16 215, i16 216, i16 217, i16 206, i16 207, i16 208, i16 209, i16 117, i16 117, i16 539, i16 556, i16 0, i16 28, i16 457, i16 0, i16 0, i16 0, i16 0, i16 276, i16 0, i16 472, i16 0, i16 281, i16 472, i16 0, i16 281, i16 360, i16 0, i16 316, i16 0, i16 0, i16 307, i16 88, i16 0, i16 302, i16 0, i16 315, i16 306, i16 78, i16 0, i16 513, i16 500, i16 501, i16 502, i16 0, i16 0, i16 0, i16 516, i16 0, i16 473, i16 498, i16 0, i16 0, i16 123, i16 468, i16 483, i16 470, i16 488, i16 0, i16 481, i16 0, i16 0, i16 451, i16 465, i16 124, i16 291, i16 407, i16 527, i16 545, i16 281, i16 335, i16 281, i16 338, i16 546, i16 402, i16 407, i16 527, i16 548, i16 531, i16 400, i16 400, i16 458, i16 112, i16 113, i16 0, i16 20, i16 24, i16 382, i16 473, i16 281, i16 0, i16 385, i16 384, i16 281, i16 0, i16 388, i16 95, i16 0, i16 318, i16 0, i16 0, i16 304, i16 305, i16 0, i16 511, i16 503, i16 0, i16 508, i16 0, i16 0, i16 0, i16 121, i16 319, i16 0, i16 122, i16 322, i16 0, i16 0, i16 450, i16 0, i16 0, i16 0, i16 467, i16 472, i16 466, i16 487, i16 0, i16 499, i16 339, i16 340, i16 0, i16 334, i16 337, i16 0, i16 281, i16 281, i16 542, i16 281, i16 544, i16 299, i16 0, i16 387, i16 281, i16 390, i16 281, i16 0, i16 311, i16 308, i16 0, i16 509, i16 0, i16 281, i16 119, i16 0, i16 120, i16 0, i16 0, i16 0, i16 0, i16 517, i16 0, i16 482, i16 450, i16 451, i16 474, i16 472, i16 0, i16 341, i16 532, i16 540, i16 541, i16 543, i16 386, i16 389, i16 317, i16 512, i16 519, i16 0, i16 514, i16 320, i16 323, i16 0, i16 0, i16 471, i16 518, i16 496, i16 489, i16 0, i16 493, i16 480, i16 476, i16 475, i16 0, i16 0, i16 0, i16 0, i16 520, i16 521, i16 504, i16 472, i16 472, i16 469, i16 484, i16 517, i16 495, i16 450, i16 486, i16 0, i16 0, i16 519, i16 0, i16 0, i16 473, i16 473, i16 450, i16 0, i16 494, i16 0, i16 0, i16 0, i16 505, i16 522, i16 0, i16 0, i16 485, i16 490, i16 523, i16 0, i16 0, i16 0, i16 321, i16 324, i16 517, i16 0, i16 525, i16 0, i16 506, i16 0, i16 0, i16 0, i16 0, i16 491, i16 524, i16 507, i16 526, i16 450, i16 492, i16 0, i16 0, i16 0], align 16
@yyr2 = internal constant [560 x i16] [i16 0, i16 0, i16 1, i16 0, i16 2, i16 0, i16 3, i16 1, i16 1, i16 5, i16 2, i16 3, i16 4, i16 4, i16 2, i16 2, i16 2, i16 1, i16 0, i16 0, i16 9, i16 4, i16 0, i16 0, i16 9, i16 4, i16 0, i16 0, i16 8, i16 3, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 0, i16 1, i16 1, i16 3, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 4, i16 2, i16 4, i16 2, i16 2, i16 1, i16 1, i16 1, i16 4, i16 1, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 0, i16 4, i16 0, i16 4, i16 0, i16 0, i16 7, i16 0, i16 5, i16 3, i16 3, i16 1, i16 1, i16 1, i16 1, i16 0, i16 7, i16 3, i16 3, i16 3, i16 3, i16 4, i16 6, i16 8, i16 6, i16 4, i16 3, i16 3, i16 2, i16 2, i16 1, i16 2, i16 0, i16 1, i16 2, i16 3, i16 1, i16 1, i16 2, i16 2, i16 4, i16 4, i16 2, i16 2, i16 3, i16 0, i16 1, i16 4, i16 4, i16 3, i16 3, i16 2, i16 2, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 2, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 4, i16 4, i16 1, i16 4, i16 1, i16 4, i16 0, i16 4, i16 0, i16 6, i16 3, i16 0, i16 6, i16 3, i16 0, i16 1, i16 1, i16 2, i16 6, i16 1, i16 3, i16 0, i16 1, i16 4, i16 6, i16 4, i16 1, i16 1, i16 1, i16 1, i16 1, i16 0, i16 4, i16 1, i16 0, i16 2, i16 1, i16 3, i16 3, i16 2, i16 0, i16 4, i16 1, i16 0, i16 4, i16 1, i16 1, i16 1, i16 2, i16 2, i16 5, i16 3, i16 0, i16 0, i16 7, i16 0, i16 0, i16 7, i16 1, i16 1, i16 4, i16 3, i16 2, i16 3, i16 1, i16 1, i16 1, i16 3, i16 2, i16 1, i16 3, i16 2, i16 3, i16 3, i16 4, i16 3, i16 4, i16 3, i16 2, i16 1, i16 1, i16 2, i16 1, i16 2, i16 1, i16 2, i16 0, i16 7, i16 5, i16 0, i16 7, i16 5, i16 0, i16 8, i16 0, i16 7, i16 2, i16 2, i16 2, i16 0, i16 1, i16 0, i16 1, i16 1, i16 2, i16 0, i16 3, i16 2, i16 3, i16 4, i16 3, i16 1, i16 1, i16 2, i16 1, i16 4, i16 1, i16 4, i16 4, i16 6, i16 5, i16 4, i16 6, i16 5, i16 1, i16 3, i16 1, i16 1, i16 3, i16 0, i16 3, i16 0, i16 1, i16 0, i16 1, i16 2, i16 1, i16 1, i16 1, i16 3, i16 2, i16 3, i16 4, i16 3, i16 2, i16 2, i16 1, i16 3, i16 4, i16 2, i16 3, i16 3, i16 4, i16 4, i16 5, i16 5, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 1, i16 2, i16 2, i16 2, i16 1, i16 2, i16 2, i16 2, i16 2, i16 1, i16 2, i16 1, i16 1, i16 1, i16 1, i16 2, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 2, i16 3, i16 1, i16 2, i16 1, i16 1, i16 5, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 0, i16 5, i16 0, i16 4, i16 0, i16 0, i16 1, i16 2, i16 3, i16 3, i16 3, i16 0, i16 4, i16 1, i16 3, i16 0, i16 0, i16 7, i16 5, i16 2, i16 0, i16 0, i16 0, i16 0, i16 12, i16 0, i16 6, i16 2, i16 1, i16 1, i16 2, i16 3, i16 2, i16 2, i16 2, i16 3, i16 6, i16 8, i16 10, i16 12, i16 3, i16 4, i16 1, i16 3, i16 5, i16 2, i16 5, i16 0, i16 1, i16 0, i16 1, i16 0, i16 1, i16 1, i16 3, i16 4, i16 7, i16 1, i16 3, i16 0, i16 3, i16 2, i16 0, i16 0, i16 6, i16 2, i16 0, i16 1, i16 1, i16 3, i16 1, i16 3, i16 4, i16 4, i16 3, i16 4, i16 3, i16 4, i16 4, i16 3, i16 4, i16 3, i16 1, i16 0, i16 3, i16 1, i16 2, i16 1, i16 3, i16 1, i16 3, i16 1], align 16
@.str.9 = private unnamed_addr constant [33 x i8] c"Reducing via rule %d (line %d), \00", align 1
@yyrline = internal constant [560 x i16] [i16 0, i16 286, i16 291, i16 306, i16 308, i16 308, i16 309, i16 311, i16 313, i16 314, i16 322, i16 326, i16 334, i16 336, i16 338, i16 340, i16 341, i16 342, i16 347, i16 354, i16 355, i16 360, i16 362, i16 368, i16 369, i16 374, i16 376, i16 382, i16 383, i16 388, i16 392, i16 394, i16 397, i16 399, i16 401, i16 406, i16 408, i16 410, i16 412, i16 416, i16 420, i16 423, i16 426, i16 429, i16 433, i16 435, i16 438, i16 441, i16 445, i16 462, i16 468, i16 471, i16 474, i16 477, i16 479, i16 483, i16 487, i16 491, i16 493, i16 497, i16 499, i16 501, i16 503, i16 505, i16 507, i16 509, i16 511, i16 513, i16 515, i16 517, i16 519, i16 521, i16 523, i16 527, i16 529, i16 533, i16 535, i16 538, i16 542, i16 544, i16 551, i16 554, i16 561, i16 571, i16 578, i16 579, i16 581, i16 583, i16 587, i16 596, i16 601, i16 603, i16 619, i16 626, i16 628, i16 631, i16 641, i16 651, i16 653, i16 657, i16 663, i16 665, i16 670, i16 672, i16 689, i16 691, i16 692, i16 702, i16 707, i16 709, i16 710, i16 711, i16 718, i16 721, i16 723, i16 726, i16 734, i16 743, i16 753, i16 758, i16 761, i16 763, i16 765, i16 767, i16 769, i16 825, i16 829, i16 832, i16 837, i16 843, i16 847, i16 852, i16 856, i16 861, i16 865, i16 868, i16 871, i16 874, i16 877, i16 880, i16 885, i16 889, i16 892, i16 895, i16 898, i16 901, i16 906, i16 910, i16 913, i16 916, i16 919, i16 922, i16 927, i16 931, i16 934, i16 937, i16 940, i16 945, i16 949, i16 952, i16 955, i16 961, i16 967, i16 973, i16 981, i16 987, i16 991, i16 994, i16 1000, i16 1006, i16 1012, i16 1020, i16 1026, i16 1030, i16 1033, i16 1036, i16 1039, i16 1042, i16 1045, i16 1051, i16 1057, i16 1063, i16 1071, i16 1075, i16 1078, i16 1081, i16 1084, i16 1089, i16 1093, i16 1096, i16 1099, i16 1102, i16 1105, i16 1108, i16 1114, i16 1120, i16 1126, i16 1134, i16 1138, i16 1141, i16 1144, i16 1147, i16 1153, i16 1155, i16 1156, i16 1157, i16 1158, i16 1159, i16 1160, i16 1161, i16 1164, i16 1166, i16 1167, i16 1168, i16 1169, i16 1170, i16 1171, i16 1172, i16 1175, i16 1177, i16 1178, i16 1179, i16 1182, i16 1184, i16 1185, i16 1186, i16 1189, i16 1191, i16 1192, i16 1193, i16 1196, i16 1198, i16 1199, i16 1200, i16 1203, i16 1205, i16 1206, i16 1207, i16 1208, i16 1209, i16 1210, i16 1211, i16 1214, i16 1216, i16 1217, i16 1218, i16 1219, i16 1220, i16 1221, i16 1222, i16 1223, i16 1224, i16 1225, i16 1226, i16 1227, i16 1228, i16 1229, i16 1230, i16 1234, i16 1237, i16 1262, i16 1264, i16 1267, i16 1271, i16 1274, i16 1277, i16 1281, i16 1286, i16 1288, i16 1294, i16 1296, i16 1299, i16 1301, i16 1304, i16 1307, i16 1313, i16 1320, i16 1322, i16 1329, i16 1336, i16 1338, i16 1345, i16 1348, i16 1352, i16 1355, i16 1359, i16 1364, i16 1367, i16 1371, i16 1374, i16 1376, i16 1378, i16 1380, i16 1387, i16 1389, i16 1390, i16 1391, i16 1396, i16 1398, i16 1400, i16 1402, i16 1407, i16 1411, i16 1414, i16 1416, i16 1421, i16 1425, i16 1428, i16 1433, i16 1433, i16 1436, i16 1439, i16 1441, i16 1443, i16 1446, i16 1448, i16 1451, i16 1457, i16 1461, i16 1465, i16 1479, i16 1486, i16 1495, i16 1509, i16 1516, i16 1528, i16 1530, i16 1535, i16 1538, i16 1543, i16 1545, i16 1547, i16 1554, i16 1556, i16 1559, i16 1565, i16 1567, i16 1570, i16 1576, i16 1578, i16 1580, i16 1582, i16 1589, i16 1595, i16 1597, i16 1599, i16 1601, i16 1604, i16 1607, i16 1611, i16 1614, i16 1618, i16 1621, i16 1631, i16 1636, i16 1638, i16 1642, i16 1644, i16 1646, i16 1650, i16 1652, i16 1655, i16 1657, i16 1662, i16 1665, i16 1667, i16 1675, i16 1677, i16 1680, i16 1682, i16 1687, i16 1690, i16 1695, i16 1697, i16 1699, i16 1704, i16 1708, i16 1718, i16 1721, i16 1726, i16 1728, i16 1733, i16 1735, i16 1739, i16 1741, i16 1745, i16 1749, i16 1753, i16 1758, i16 1762, i16 1766, i16 1776, i16 1778, i16 1783, i16 1788, i16 1791, i16 1795, i16 1800, i16 1803, i16 1806, i16 1809, i16 1814, i16 1818, i16 1824, i16 1826, i16 1829, i16 1831, i16 1835, i16 1838, i16 1842, i16 1845, i16 1847, i16 1849, i16 1851, i16 1857, i16 1860, i16 1862, i16 1864, i16 1866, i16 1868, i16 1870, i16 1874, i16 1878, i16 1890, i16 1892, i16 1893, i16 1897, i16 1900, i16 1902, i16 1903, i16 1904, i16 1905, i16 1908, i16 1910, i16 1913, i16 1914, i16 1917, i16 1919, i16 1920, i16 1921, i16 1922, i16 1925, i16 1927, i16 1930, i16 1932, i16 1933, i16 1934, i16 1937, i16 1940, i16 1947, i16 1952, i16 1968, i16 1983, i16 1985, i16 1990, i16 1992, i16 1995, i16 2009, i16 2012, i16 2015, i16 2019, i16 2021, i16 2028, i16 2030, i16 2033, i16 2051, i16 2058, i16 2064, i16 2067, i16 2078, i16 2089, i16 2101, i16 2109, i16 2115, i16 2121, i16 2123, i16 2127, i16 2133, i16 2147, i16 2156, i16 2161, i16 2165, i16 2177, i16 2187, i16 2190, i16 2196, i16 2197, i16 2200, i16 2202, i16 2206, i16 2209, i16 2212, i16 2215, i16 2216, i16 2220, i16 2223, i16 2226, i16 2231, i16 2234, i16 2237, i16 2241, i16 2244, i16 2247, i16 2250, i16 2253, i16 2257, i16 2261, i16 2266, i16 2270, i16 2282, i16 2288, i16 2296, i16 2299, i16 2302, i16 2305, i16 2320, i16 2324, i16 2328, i16 2331, i16 2336, i16 2338, i16 2341, i16 2343, i16 2347, i16 2350, i16 2354, i16 2357, i16 2366, i16 2372, i16 2377, i16 2379, i16 2388, i16 2391, i16 2392, i16 2398, i16 2400, i16 2410, i16 2412, i16 2416, i16 2419, i16 2425, i16 2431, i16 2436, i16 2439, i16 2445, i16 2452, i16 2458, i16 2463, i16 2466, i16 2472, i16 2477, i16 2486, i16 2492, i16 2497, i16 2499, i16 2516, i16 2519, i16 2524, i16 2527, i16 2531], align 16
@yyprhs = internal constant [560 x i16] [i16 0, i16 0, i16 1, i16 3, i16 4, i16 7, i16 8, i16 12, i16 14, i16 16, i16 22, i16 25, i16 29, i16 34, i16 39, i16 42, i16 45, i16 48, i16 50, i16 51, i16 52, i16 62, i16 67, i16 68, i16 69, i16 79, i16 84, i16 85, i16 86, i16 95, i16 99, i16 101, i16 103, i16 105, i16 107, i16 109, i16 111, i16 113, i16 115, i16 117, i16 119, i16 120, i16 122, i16 124, i16 128, i16 130, i16 133, i16 136, i16 139, i16 142, i16 145, i16 150, i16 153, i16 158, i16 161, i16 164, i16 166, i16 168, i16 170, i16 175, i16 177, i16 181, i16 185, i16 189, i16 193, i16 197, i16 201, i16 205, i16 209, i16 213, i16 217, i16 221, i16 225, i16 226, i16 231, i16 232, i16 237, i16 238, i16 239, i16 247, i16 248, i16 254, i16 258, i16 262, i16 264, i16 266, i16 268, i16 270, i16 271, i16 279, i16 283, i16 287, i16 291, i16 295, i16 300, i16 307, i16 316, i16 323, i16 328, i16 332, i16 336, i16 339, i16 342, i16 344, i16 347, i16 348, i16 350, i16 353, i16 357, i16 359, i16 361, i16 364, i16 367, i16 372, i16 377, i16 380, i16 383, i16 387, i16 388, i16 390, i16 395, i16 400, i16 404, i16 408, i16 411, i16 414, i16 416, i16 419, i16 422, i16 425, i16 428, i16 431, i16 433, i16 436, i16 438, i16 441, i16 444, i16 447, i16 450, i16 453, i16 456, i16 458, i16 461, i16 464, i16 467, i16 470, i16 473, i16 476, i16 479, i16 482, i16 485, i16 488, i16 491, i16 494, i16 497, i16 500, i16 503, i16 506, i16 508, i16 511, i16 514, i16 517, i16 520, i16 523, i16 526, i16 529, i16 532, i16 535, i16 538, i16 541, i16 544, i16 547, i16 550, i16 553, i16 556, i16 559, i16 562, i16 565, i16 568, i16 571, i16 574, i16 577, i16 580, i16 583, i16 586, i16 589, i16 592, i16 595, i16 598, i16 601, i16 604, i16 607, i16 610, i16 613, i16 616, i16 619, i16 622, i16 625, i16 628, i16 631, i16 634, i16 637, i16 640, i16 642, i16 644, i16 646, i16 648, i16 650, i16 652, i16 654, i16 656, i16 658, i16 660, i16 662, i16 664, i16 666, i16 668, i16 670, i16 672, i16 674, i16 676, i16 678, i16 680, i16 682, i16 684, i16 686, i16 688, i16 690, i16 692, i16 694, i16 696, i16 698, i16 700, i16 702, i16 704, i16 706, i16 708, i16 710, i16 712, i16 714, i16 716, i16 718, i16 720, i16 722, i16 724, i16 726, i16 728, i16 730, i16 732, i16 734, i16 736, i16 738, i16 740, i16 742, i16 744, i16 746, i16 748, i16 750, i16 752, i16 753, i16 755, i16 757, i16 759, i16 761, i16 763, i16 765, i16 767, i16 769, i16 774, i16 779, i16 781, i16 786, i16 788, i16 793, i16 794, i16 799, i16 800, i16 807, i16 811, i16 812, i16 819, i16 823, i16 824, i16 826, i16 828, i16 831, i16 838, i16 840, i16 844, i16 845, i16 847, i16 852, i16 859, i16 864, i16 866, i16 868, i16 870, i16 872, i16 874, i16 875, i16 880, i16 882, i16 883, i16 886, i16 888, i16 892, i16 896, i16 899, i16 900, i16 905, i16 907, i16 908, i16 913, i16 915, i16 917, i16 919, i16 922, i16 925, i16 931, i16 935, i16 936, i16 937, i16 945, i16 946, i16 947, i16 955, i16 957, i16 959, i16 964, i16 968, i16 971, i16 975, i16 977, i16 979, i16 981, i16 985, i16 988, i16 990, i16 994, i16 997, i16 1001, i16 1005, i16 1010, i16 1014, i16 1019, i16 1023, i16 1026, i16 1028, i16 1030, i16 1033, i16 1035, i16 1038, i16 1040, i16 1043, i16 1044, i16 1052, i16 1058, i16 1059, i16 1067, i16 1073, i16 1074, i16 1083, i16 1084, i16 1092, i16 1095, i16 1098, i16 1101, i16 1102, i16 1104, i16 1105, i16 1107, i16 1109, i16 1112, i16 1113, i16 1117, i16 1120, i16 1124, i16 1129, i16 1133, i16 1135, i16 1137, i16 1140, i16 1142, i16 1147, i16 1149, i16 1154, i16 1159, i16 1166, i16 1172, i16 1177, i16 1184, i16 1190, i16 1192, i16 1196, i16 1198, i16 1200, i16 1204, i16 1205, i16 1209, i16 1210, i16 1212, i16 1213, i16 1215, i16 1218, i16 1220, i16 1222, i16 1224, i16 1228, i16 1231, i16 1235, i16 1240, i16 1244, i16 1247, i16 1250, i16 1252, i16 1256, i16 1261, i16 1264, i16 1268, i16 1272, i16 1277, i16 1282, i16 1288, i16 1294, i16 1296, i16 1298, i16 1300, i16 1302, i16 1304, i16 1307, i16 1310, i16 1313, i16 1316, i16 1318, i16 1321, i16 1324, i16 1327, i16 1329, i16 1332, i16 1335, i16 1338, i16 1341, i16 1343, i16 1346, i16 1348, i16 1350, i16 1352, i16 1354, i16 1357, i16 1358, i16 1359, i16 1360, i16 1361, i16 1362, i16 1364, i16 1366, i16 1369, i16 1373, i16 1375, i16 1378, i16 1380, i16 1382, i16 1388, i16 1390, i16 1392, i16 1395, i16 1398, i16 1401, i16 1404, i16 1405, i16 1411, i16 1412, i16 1417, i16 1418, i16 1419, i16 1421, i16 1424, i16 1428, i16 1432, i16 1436, i16 1437, i16 1442, i16 1444, i16 1448, i16 1449, i16 1450, i16 1458, i16 1464, i16 1467, i16 1468, i16 1469, i16 1470, i16 1471, i16 1484, i16 1485, i16 1492, i16 1495, i16 1497, i16 1499, i16 1502, i16 1506, i16 1509, i16 1512, i16 1515, i16 1519, i16 1526, i16 1535, i16 1546, i16 1559, i16 1563, i16 1568, i16 1570, i16 1574, i16 1580, i16 1583, i16 1589, i16 1590, i16 1592, i16 1593, i16 1595, i16 1596, i16 1598, i16 1600, i16 1604, i16 1609, i16 1617, i16 1619, i16 1623, i16 1624, i16 1628, i16 1631, i16 1632, i16 1633, i16 1640, i16 1643, i16 1644, i16 1646, i16 1648, i16 1652, i16 1654, i16 1658, i16 1663, i16 1668, i16 1672, i16 1677, i16 1681, i16 1686, i16 1691, i16 1695, i16 1700, i16 1704, i16 1706, i16 1707, i16 1711, i16 1713, i16 1716, i16 1718, i16 1722, i16 1724, i16 1728], align 16
@yyrhs = internal constant [1730 x i16] [i16 -1, i16 92, i16 0, i16 0, i16 93, i16 95, i16 0, i16 0, i16 92, i16 94, i16 95, i16 0, i16 97, i16 0, i16 96, i16 0, i16 27, i16 67, i16 106, i16 83, i16 84, i16 0, i16 288, i16 95, i16 0, i16 127, i16 161, i16 84, i16 0, i16 147, i16 127, i16 161, i16 84, i16 0, i16 146, i16 127, i16 160, i16 84, i16 0, i16 153, i16 84, i16 0, i16 1, i16 84, i16 0, i16 1, i16 85, i16 0, i16 84, i16 0, i16 0, i16 0, i16 146, i16 127, i16 189, i16 98, i16 122, i16 99, i16 249, i16 250, i16 238, i16 0, i16 146, i16 127, i16 189, i16 1, i16 0, i16 0, i16 0, i16 147, i16 127, i16 194, i16 100, i16 122, i16 101, i16 249, i16 250, i16 238, i16 0, i16 147, i16 127, i16 194, i16 1, i16 0, i16 0, i16 0, i16 127, i16 194, i16 102, i16 122, i16 103, i16 249, i16 250, i16 238, i16 0, i16 127, i16 194, i16 1, i16 0, i16 3, i16 0, i16 4, i16 0, i16 51, i16 0, i16 57, i16 0, i16 56, i16 0, i16 62, i16 0, i16 63, i16 0, i16 86, i16 0, i16 87, i16 0, i16 108, i16 0, i16 0, i16 108, i16 0, i16 113, i16 0, i16 108, i16 88, i16 113, i16 0, i16 119, i16 0, i16 58, i16 112, i16 0, i16 288, i16 112, i16 0, i16 105, i16 112, i16 0, i16 48, i16 104, i16 0, i16 110, i16 109, i16 0, i16 110, i16 67, i16 215, i16 83, i16 0, i16 111, i16 109, i16 0, i16 111, i16 67, i16 215, i16 83, i16 0, i16 33, i16 112, i16 0, i16 34, i16 112, i16 0, i16 11, i16 0, i16 29, i16 0, i16 109, i16 0, i16 67, i16 215, i16 83, i16 112, i16 0, i16 112, i16 0, i16 113, i16 56, i16 113, i16 0, i16 113, i16 57, i16 113, i16 0, i16 113, i16 58, i16 113, i16 0, i16 113, i16 59, i16 113, i16 0, i16 113, i16 60, i16 113, i16 0, i16 113, i16 54, i16 113, i16 0, i16 113, i16 55, i16 113, i16 0, i16 113, i16 53, i16 113, i16 0, i16 113, i16 52, i16 113, i16 0, i16 113, i16 51, i16 113, i16 0, i16 113, i16 49, i16 113, i16 0, i16 113, i16 50, i16 113, i16 0, i16 0, i16 113, i16 48, i16 114, i16 113, i16 0, i16 0, i16 113, i16 47, i16 115, i16 113, i16 0, i16 0, i16 0, i16 113, i16 45, i16 116, i16 106, i16 46, i16 117, i16 113, i16 0, i16 0, i16 113, i16 45, i16 118, i16 46, i16 113, i16 0, i16 113, i16 44, i16 113, i16 0, i16 113, i16 43, i16 113, i16 0, i16 3, i16 0, i16 8, i16 0, i16 121, i16 0, i16 42, i16 0, i16 0, i16 67, i16 215, i16 83, i16 89, i16 120, i16 175, i16 85, i16 0, i16 67, i16 106, i16 83, i16 0, i16 67, i16 1, i16 83, i16 0, i16 242, i16 240, i16 83, i16 0, i16 242, i16 1, i16 83, i16 0, i16 119, i16 67, i16 107, i16 83, i16 0, i16 35, i16 67, i16 113, i16 88, i16 215, i16 83, i16 0, i16 36, i16 67, i16 113, i16 88, i16 113, i16 88, i16 113, i16 83, i16 0, i16 37, i16 67, i16 215, i16 88, i16 215, i16 83, i16 0, i16 119, i16 68, i16 106, i16 90, i16 0, i16 119, i16 66, i16 104, i16 0, i16 119, i16 65, i16 104, i16 0, i16 119, i16 62, i16 0, i16 119, i16 63, i16 0, i16 9, i16 0, i16 121, i16 9, i16 0, i16 0, i16 124, i16 0, i16 124, i16 10, i16 0, i16 249, i16 250, i16 125, i16 0, i16 123, i16 0, i16 230, i16 0, i16 124, i16 123, i16 0, i16 123, i16 230, i16 0, i16 148, i16 127, i16 160, i16 84, i16 0, i16 149, i16 127, i16 161, i16 84, i16 0, i16 148, i16 84, i16 0, i16 149, i16 84, i16 0, i16 249, i16 250, i16 129, i16 0, i16 0, i16 167, i16 0, i16 146, i16 127, i16 160, i16 84, i16 0, i16 147, i16 127, i16 161, i16 84, i16 0, i16 146, i16 127, i16 183, i16 0, i16 147, i16 127, i16 186, i16 0, i16 153, i16 84, i16 0, i16 288, i16 129, i16 0, i16 7, i16 0, i16 130, i16 7, i16 0, i16 131, i16 7, i16 0, i16 130, i16 168, i16 0, i16 132, i16 7, i16 0, i16 133, i16 7, i16 0, i16 168, i16 0, i16 132, i16 168, i16 0, i16 155, i16 0, i16 134, i16 7, i16 0, i16 135, i16 7, i16 0, i16 134, i16 157, i16 0, i16 135, i16 157, i16 0, i16 130, i16 155, i16 0, i16 131, i16 155, i16 0, i16 156, i16 0, i16 134, i16 168, i16 0, i16 134, i16 158, i16 0, i16 135, i16 158, i16 0, i16 130, i16 156, i16 0, i16 131, i16 156, i16 0, i16 136, i16 7, i16 0, i16 137, i16 7, i16 0, i16 136, i16 157, i16 0, i16 137, i16 157, i16 0, i16 132, i16 155, i16 0, i16 133, i16 155, i16 0, i16 136, i16 168, i16 0, i16 136, i16 158, i16 0, i16 137, i16 158, i16 0, i16 132, i16 156, i16 0, i16 133, i16 156, i16 0, i16 5, i16 0, i16 138, i16 7, i16 0, i16 139, i16 7, i16 0, i16 130, i16 5, i16 0, i16 131, i16 5, i16 0, i16 138, i16 5, i16 0, i16 139, i16 5, i16 0, i16 138, i16 168, i16 0, i16 140, i16 7, i16 0, i16 141, i16 7, i16 0, i16 132, i16 5, i16 0, i16 133, i16 5, i16 0, i16 140, i16 5, i16 0, i16 141, i16 5, i16 0, i16 140, i16 168, i16 0, i16 142, i16 7, i16 0, i16 143, i16 7, i16 0, i16 142, i16 157, i16 0, i16 143, i16 157, i16 0, i16 138, i16 155, i16 0, i16 139, i16 155, i16 0, i16 134, i16 5, i16 0, i16 135, i16 5, i16 0, i16 142, i16 5, i16 0, i16 143, i16 5, i16 0, i16 142, i16 168, i16 0, i16 142, i16 158, i16 0, i16 143, i16 158, i16 0, i16 138, i16 156, i16 0, i16 139, i16 156, i16 0, i16 144, i16 7, i16 0, i16 145, i16 7, i16 0, i16 144, i16 157, i16 0, i16 145, i16 157, i16 0, i16 140, i16 155, i16 0, i16 141, i16 155, i16 0, i16 136, i16 5, i16 0, i16 137, i16 5, i16 0, i16 144, i16 5, i16 0, i16 145, i16 5, i16 0, i16 144, i16 168, i16 0, i16 144, i16 158, i16 0, i16 145, i16 158, i16 0, i16 140, i16 156, i16 0, i16 141, i16 156, i16 0, i16 134, i16 0, i16 135, i16 0, i16 136, i16 0, i16 137, i16 0, i16 142, i16 0, i16 143, i16 0, i16 144, i16 0, i16 145, i16 0, i16 130, i16 0, i16 131, i16 0, i16 132, i16 0, i16 133, i16 0, i16 138, i16 0, i16 139, i16 0, i16 140, i16 0, i16 141, i16 0, i16 134, i16 0, i16 135, i16 0, i16 142, i16 0, i16 143, i16 0, i16 130, i16 0, i16 131, i16 0, i16 138, i16 0, i16 139, i16 0, i16 134, i16 0, i16 135, i16 0, i16 136, i16 0, i16 137, i16 0, i16 130, i16 0, i16 131, i16 0, i16 132, i16 0, i16 133, i16 0, i16 134, i16 0, i16 135, i16 0, i16 136, i16 0, i16 137, i16 0, i16 130, i16 0, i16 131, i16 0, i16 132, i16 0, i16 133, i16 0, i16 130, i16 0, i16 131, i16 0, i16 132, i16 0, i16 133, i16 0, i16 134, i16 0, i16 135, i16 0, i16 136, i16 0, i16 137, i16 0, i16 138, i16 0, i16 139, i16 0, i16 140, i16 0, i16 141, i16 0, i16 142, i16 0, i16 143, i16 0, i16 144, i16 0, i16 145, i16 0, i16 0, i16 151, i16 0, i16 157, i16 0, i16 159, i16 0, i16 158, i16 0, i16 6, i16 0, i16 203, i16 0, i16 198, i16 0, i16 4, i16 0, i16 28, i16 67, i16 106, i16 83, i16 0, i16 28, i16 67, i16 215, i16 83, i16 0, i16 163, i16 0, i16 160, i16 88, i16 128, i16 163, i16 0, i16 165, i16 0, i16 161, i16 88, i16 128, i16 165, i16 0, i16 0, i16 27, i16 67, i16 121, i16 83, i16 0, i16 0, i16 189, i16 162, i16 167, i16 44, i16 164, i16 173, i16 0, i16 189, i16 162, i16 167, i16 0, i16 0, i16 194, i16 162, i16 167, i16 44, i16 166, i16 173, i16 0, i16 194, i16 162, i16 167, i16 0, i16 0, i16 168, i16 0, i16 169, i16 0, i16 168, i16 169, i16 0, i16 30, i16 67, i16 67, i16 170, i16 83, i16 83, i16 0, i16 171, i16 0, i16 170, i16 88, i16 171, i16 0, i16 0, i16 172, i16 0, i16 172, i16 67, i16 3, i16 83, i16 0, i16 172, i16 67, i16 3, i16 88, i16 108, i16 83, i16 0, i16 172, i16 67, i16 107, i16 83, i16 0, i16 104, i16 0, i16 5, i16 0, i16 6, i16 0, i16 7, i16 0, i16 113, i16 0, i16 0, i16 89, i16 174, i16 175, i16 85, i16 0, i16 1, i16 0, i16 0, i16 176, i16 204, i16 0, i16 177, i16 0, i16 176, i16 88, i16 177, i16 0, i16 181, i16 44, i16 179, i16 0, i16 182, i16 179, i16 0, i16 0, i16 104, i16 46, i16 178, i16 179, i16 0, i16 179, i16 0, i16 0, i16 89, i16 180, i16 175, i16 85, i16 0, i16 113, i16 0, i16 1, i16 0, i16 182, i16 0, i16 181, i16 182, i16 0, i16 66, i16 104, i16 0, i16 68, i16 113, i16 10, i16 113, i16 90, i16 0, i16 68, i16 113, i16 90, i16 0, i16 0, i16 0, i16 189, i16 184, i16 122, i16 185, i16 249, i16 250, i16 243, i16 0, i16 0, i16 0, i16 194, i16 187, i16 122, i16 188, i16 249, i16 250, i16 243, i16 0, i16 190, i16 0, i16 194, i16 0, i16 67, i16 167, i16 190, i16 83, i16 0, i16 190, i16 67, i16 283, i16 0, i16 190, i16 223, i16 0, i16 58, i16 154, i16 190, i16 0, i16 4, i16 0, i16 192, i16 0, i16 193, i16 0, i16 192, i16 67, i16 283, i16 0, i16 192, i16 223, i16 0, i16 4, i16 0, i16 193, i16 67, i16 283, i16 0, i16 193, i16 223, i16 0, i16 58, i16 154, i16 192, i16 0, i16 58, i16 154, i16 193, i16 0, i16 67, i16 167, i16 193, i16 83, i16 0, i16 194, i16 67, i16 283, i16 0, i16 67, i16 167, i16 194, i16 83, i16 0, i16 58, i16 154, i16 194, i16 0, i16 194, i16 223, i16 0, i16 3, i16 0, i16 13, i16 0, i16 13, i16 168, i16 0, i16 14, i16 0, i16 14, i16 168, i16 0, i16 12, i16 0, i16 12, i16 168, i16 0, i16 0, i16 195, i16 104, i16 89, i16 199, i16 206, i16 85, i16 167, i16 0, i16 195, i16 89, i16 206, i16 85, i16 167, i16 0, i16 0, i16 196, i16 104, i16 89, i16 200, i16 206, i16 85, i16 167, i16 0, i16 196, i16 89, i16 206, i16 85, i16 167, i16 0, i16 0, i16 197, i16 104, i16 89, i16 201, i16 213, i16 205, i16 85, i16 167, i16 0, i16 0, i16 197, i16 89, i16 202, i16 213, i16 205, i16 85, i16 167, i16 0, i16 195, i16 104, i16 0, i16 196, i16 104, i16 0, i16 197, i16 104, i16 0, i16 0, i16 88, i16 0, i16 0, i16 88, i16 0, i16 207, i16 0, i16 207, i16 208, i16 0, i16 0, i16 207, i16 208, i16 84, i16 0, i16 207, i16 84, i16 0, i16 150, i16 127, i16 209, i16 0, i16 150, i16 127, i16 249, i16 250, i16 0, i16 151, i16 127, i16 210, i16 0, i16 151, i16 0, i16 1, i16 0, i16 288, i16 208, i16 0, i16 211, i16 0, i16 209, i16 88, i16 128, i16 211, i16 0, i16 212, i16 0, i16 210, i16 88, i16 128, i16 212, i16 0, i16 249, i16 250, i16 189, i16 167, i16 0, i16 249, i16 250, i16 189, i16 46, i16 113, i16 167, i16 0, i16 249, i16 250, i16 46, i16 113, i16 167, i16 0, i16 249, i16 250, i16 194, i16 167, i16 0, i16 249, i16 250, i16 194, i16 46, i16 113, i16 167, i16 0, i16 249, i16 250, i16 46, i16 113, i16 167, i16 0, i16 214, i16 0, i16 213, i16 88, i16 214, i16 0, i16 1, i16 0, i16 104, i16 0, i16 104, i16 44, i16 113, i16 0, i16 0, i16 152, i16 216, i16 217, i16 0, i16 0, i16 219, i16 0, i16 0, i16 219, i16 0, i16 220, i16 168, i16 0, i16 221, i16 0, i16 220, i16 0, i16 222, i16 0, i16 58, i16 154, i16 220, i16 0, i16 58, i16 154, i16 0, i16 58, i16 154, i16 221, i16 0, i16 67, i16 167, i16 219, i16 83, i16 0, i16 222, i16 67, i16 273, i16 0, i16 222, i16 223, i16 0, i16 67, i16 273, i16 0, i16 223, i16 0, i16 68, i16 106, i16 90, i16 0, i16 68, i16 152, i16 106, i16 90, i16 0, i16 68, i16 90, i16 0, i16 68, i16 152, i16 90, i16 0, i16 68, i16 58, i16 90, i16 0, i16 68, i16 152, i16 58, i16 90, i16 0, i16 68, i16 5, i16 106, i16 90, i16 0, i16 68, i16 5, i16 152, i16 106, i16 90, i16 0, i16 68, i16 152, i16 5, i16 106, i16 90, i16 0, i16 225, i16 0, i16 226, i16 0, i16 227, i16 0, i16 228, i16 0, i16 253, i16 0, i16 225, i16 253, i16 0, i16 226, i16 253, i16 0, i16 227, i16 253, i16 0, i16 228, i16 253, i16 0, i16 126, i16 0, i16 225, i16 126, i16 0, i16 226, i16 126, i16 0, i16 228, i16 126, i16 0, i16 254, i16 0, i16 225, i16 254, i16 0, i16 226, i16 254, i16 0, i16 227, i16 254, i16 0, i16 228, i16 254, i16 0, i16 230, i16 0, i16 229, i16 230, i16 0, i16 225, i16 0, i16 226, i16 0, i16 227, i16 0, i16 228, i16 0, i16 1, i16 84, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 236, i16 0, i16 237, i16 0, i16 236, i16 237, i16 0, i16 32, i16 287, i16 84, i16 0, i16 243, i16 0, i16 1, i16 243, i16 0, i16 89, i16 0, i16 85, i16 0, i16 231, i16 235, i16 241, i16 85, i16 232, i16 0, i16 224, i16 0, i16 1, i16 0, i16 67, i16 89, i16 0, i16 239, i16 240, i16 0, i16 245, i16 252, i16 0, i16 245, i16 1, i16 0, i16 0, i16 15, i16 246, i16 67, i16 106, i16 83, i16 0, i16 0, i16 18, i16 248, i16 252, i16 17, i16 0, i16 0, i16 0, i16 253, i16 0, i16 254, i16 251, i16 0, i16 233, i16 251, i16 234, i16 0, i16 249, i16 250, i16 265, i16 0, i16 249, i16 250, i16 266, i16 0, i16 0, i16 244, i16 16, i16 256, i16 252, i16 0, i16 244, i16 0, i16 244, i16 16, i16 1, i16 0, i16 0, i16 0, i16 17, i16 257, i16 67, i16 106, i16 83, i16 258, i16 252, i16 0, i16 247, i16 67, i16 106, i16 83, i16 84, i16 0, i16 247, i16 1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 19, i16 259, i16 67, i16 264, i16 260, i16 268, i16 84, i16 261, i16 268, i16 83, i16 262, i16 252, i16 0, i16 0, i16 20, i16 67, i16 106, i16 83, i16 263, i16 252, i16 0, i16 268, i16 84, i16 0, i16 129, i16 0, i16 243, i16 0, i16 106, i16 84, i16 0, i16 233, i16 255, i16 234, i16 0, i16 23, i16 84, i16 0, i16 24, i16 84, i16 0, i16 25, i16 84, i16 0, i16 25, i16 106, i16 84, i16 0, i16 27, i16 267, i16 67, i16 106, i16 83, i16 84, i16 0, i16 27, i16 267, i16 67, i16 106, i16 46, i16 269, i16 83, i16 84, i16 0, i16 27, i16 267, i16 67, i16 106, i16 46, i16 269, i16 46, i16 269, i16 83, i16 84, i16 0, i16 27, i16 267, i16 67, i16 106, i16 46, i16 269, i16 46, i16 269, i16 46, i16 272, i16 83, i16 84, i16 0, i16 26, i16 104, i16 84, i16 0, i16 26, i16 58, i16 106, i16 84, i16 0, i16 84, i16 0, i16 21, i16 113, i16 46, i16 0, i16 21, i16 113, i16 10, i16 113, i16 46, i16 0, i16 22, i16 46, i16 0, i16 104, i16 249, i16 250, i16 46, i16 167, i16 0, i16 0, i16 7, i16 0, i16 0, i16 106, i16 0, i16 0, i16 270, i16 0, i16 271, i16 0, i16 270, i16 88, i16 271, i16 0, i16 9, i16 67, i16 106, i16 83, i16 0, i16 68, i16 104, i16 90, i16 9, i16 67, i16 106, i16 83, i16 0, i16 121, i16 0, i16 272, i16 88, i16 121, i16 0, i16 0, i16 167, i16 274, i16 275, i16 0, i16 278, i16 83, i16 0, i16 0, i16 0, i16 279, i16 84, i16 276, i16 167, i16 277, i16 275, i16 0, i16 1, i16 83, i16 0, i16 0, i16 10, i16 0, i16 279, i16 0, i16 279, i16 88, i16 10, i16 0, i16 281, i16 0, i16 279, i16 88, i16 280, i16 0, i16 146, i16 127, i16 191, i16 167, i16 0, i16 146, i16 127, i16 194, i16 167, i16 0, i16 146, i16 127, i16 218, i16 0, i16 147, i16 127, i16 194, i16 167, i16 0, i16 147, i16 127, i16 218, i16 0, i16 148, i16 282, i16 191, i16 167, i16 0, i16 148, i16 282, i16 194, i16 167, i16 0, i16 148, i16 282, i16 218, i16 0, i16 149, i16 282, i16 194, i16 167, i16 0, i16 149, i16 282, i16 218, i16 0, i16 127, i16 0, i16 0, i16 167, i16 284, i16 285, i16 0, i16 275, i16 0, i16 286, i16 83, i16 0, i16 3, i16 0, i16 286, i16 88, i16 3, i16 0, i16 104, i16 0, i16 287, i16 88, i16 104, i16 0, i16 31, i16 0], align 16
@.str.10 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c" -> %s\0A\00", align 1
@yyr1 = internal constant [560 x i16] [i16 0, i16 91, i16 91, i16 93, i16 92, i16 94, i16 92, i16 95, i16 95, i16 95, i16 95, i16 96, i16 96, i16 96, i16 96, i16 96, i16 96, i16 96, i16 98, i16 99, i16 97, i16 97, i16 100, i16 101, i16 97, i16 97, i16 102, i16 103, i16 97, i16 97, i16 104, i16 104, i16 105, i16 105, i16 105, i16 105, i16 105, i16 105, i16 105, i16 106, i16 107, i16 107, i16 108, i16 108, i16 109, i16 109, i16 109, i16 109, i16 109, i16 109, i16 109, i16 109, i16 109, i16 109, i16 109, i16 110, i16 111, i16 112, i16 112, i16 113, i16 113, i16 113, i16 113, i16 113, i16 113, i16 113, i16 113, i16 113, i16 113, i16 113, i16 113, i16 113, i16 114, i16 113, i16 115, i16 113, i16 116, i16 117, i16 113, i16 118, i16 113, i16 113, i16 113, i16 119, i16 119, i16 119, i16 119, i16 120, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 119, i16 121, i16 121, i16 122, i16 122, i16 122, i16 123, i16 124, i16 124, i16 124, i16 124, i16 125, i16 125, i16 125, i16 125, i16 126, i16 127, i16 128, i16 129, i16 129, i16 129, i16 129, i16 129, i16 129, i16 130, i16 130, i16 130, i16 131, i16 132, i16 132, i16 133, i16 133, i16 134, i16 134, i16 134, i16 134, i16 134, i16 134, i16 134, i16 135, i16 135, i16 135, i16 135, i16 135, i16 135, i16 136, i16 136, i16 136, i16 136, i16 136, i16 136, i16 137, i16 137, i16 137, i16 137, i16 137, i16 138, i16 138, i16 138, i16 138, i16 138, i16 138, i16 138, i16 139, i16 140, i16 140, i16 140, i16 140, i16 140, i16 140, i16 141, i16 142, i16 142, i16 142, i16 142, i16 142, i16 142, i16 142, i16 142, i16 142, i16 142, i16 143, i16 143, i16 143, i16 143, i16 143, i16 144, i16 144, i16 144, i16 144, i16 144, i16 144, i16 144, i16 144, i16 144, i16 144, i16 145, i16 145, i16 145, i16 145, i16 145, i16 146, i16 146, i16 146, i16 146, i16 146, i16 146, i16 146, i16 146, i16 147, i16 147, i16 147, i16 147, i16 147, i16 147, i16 147, i16 147, i16 148, i16 148, i16 148, i16 148, i16 149, i16 149, i16 149, i16 149, i16 150, i16 150, i16 150, i16 150, i16 151, i16 151, i16 151, i16 151, i16 152, i16 152, i16 152, i16 152, i16 152, i16 152, i16 152, i16 152, i16 153, i16 153, i16 153, i16 153, i16 153, i16 153, i16 153, i16 153, i16 153, i16 153, i16 153, i16 153, i16 153, i16 153, i16 153, i16 153, i16 154, i16 154, i16 155, i16 155, i16 156, i16 157, i16 157, i16 158, i16 159, i16 159, i16 159, i16 160, i16 160, i16 161, i16 161, i16 162, i16 162, i16 164, i16 163, i16 163, i16 166, i16 165, i16 165, i16 167, i16 167, i16 168, i16 168, i16 169, i16 170, i16 170, i16 171, i16 171, i16 171, i16 171, i16 171, i16 172, i16 172, i16 172, i16 172, i16 173, i16 174, i16 173, i16 173, i16 175, i16 175, i16 176, i16 176, i16 177, i16 177, i16 178, i16 177, i16 177, i16 180, i16 179, i16 179, i16 179, i16 181, i16 181, i16 182, i16 182, i16 182, i16 184, i16 185, i16 183, i16 187, i16 188, i16 186, i16 189, i16 189, i16 190, i16 190, i16 190, i16 190, i16 190, i16 191, i16 191, i16 192, i16 192, i16 192, i16 193, i16 193, i16 193, i16 193, i16 193, i16 194, i16 194, i16 194, i16 194, i16 194, i16 195, i16 195, i16 196, i16 196, i16 197, i16 197, i16 199, i16 198, i16 198, i16 200, i16 198, i16 198, i16 201, i16 198, i16 202, i16 198, i16 203, i16 203, i16 203, i16 204, i16 204, i16 205, i16 205, i16 206, i16 206, i16 207, i16 207, i16 207, i16 208, i16 208, i16 208, i16 208, i16 208, i16 208, i16 209, i16 209, i16 210, i16 210, i16 211, i16 211, i16 211, i16 212, i16 212, i16 212, i16 213, i16 213, i16 213, i16 214, i16 214, i16 216, i16 215, i16 217, i16 217, i16 218, i16 218, i16 218, i16 219, i16 219, i16 220, i16 220, i16 221, i16 221, i16 222, i16 222, i16 222, i16 222, i16 222, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 223, i16 224, i16 224, i16 224, i16 224, i16 225, i16 225, i16 225, i16 225, i16 225, i16 226, i16 226, i16 226, i16 226, i16 227, i16 227, i16 227, i16 227, i16 227, i16 228, i16 228, i16 229, i16 229, i16 229, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 235, i16 236, i16 236, i16 237, i16 238, i16 238, i16 239, i16 240, i16 240, i16 241, i16 241, i16 242, i16 243, i16 244, i16 244, i16 246, i16 245, i16 248, i16 247, i16 249, i16 250, i16 251, i16 251, i16 252, i16 253, i16 254, i16 256, i16 255, i16 255, i16 255, i16 257, i16 258, i16 255, i16 255, i16 255, i16 259, i16 260, i16 261, i16 262, i16 255, i16 263, i16 255, i16 264, i16 264, i16 265, i16 265, i16 265, i16 265, i16 265, i16 265, i16 265, i16 265, i16 265, i16 265, i16 265, i16 265, i16 265, i16 265, i16 266, i16 266, i16 266, i16 266, i16 267, i16 267, i16 268, i16 268, i16 269, i16 269, i16 270, i16 270, i16 271, i16 271, i16 272, i16 272, i16 274, i16 273, i16 275, i16 276, i16 277, i16 275, i16 275, i16 278, i16 278, i16 278, i16 278, i16 279, i16 279, i16 280, i16 280, i16 280, i16 280, i16 280, i16 281, i16 281, i16 281, i16 281, i16 281, i16 282, i16 284, i16 283, i16 285, i16 285, i16 286, i16 286, i16 287, i16 287, i16 288], align 16
@pedantic = external global i32, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"ISO C forbids an empty source file\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@.str.13 = private unnamed_addr constant [43 x i8] c"argument of `asm' is not a constant string\00", align 1
@warn_pointer_arith = external global i32, align 4
@warn_traditional = external global i32, align 4
@.str.14 = private unnamed_addr constant [60 x i8] c"ISO C forbids data definition with no type or storage class\00", align 1
@flag_traditional = external global i32, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"data definition has no type or storage class\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"ISO C does not allow extra `;' outside of a function\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@current_function_decl = external global %union.tree_node*, align 8
@in_system_header = external global i32, align 4
@.str.18 = private unnamed_addr constant [46 x i8] c"traditional C rejects the unary plus operator\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"unary *\00", align 1
@skip_evaluation = external global i32, align 4
@.str.20 = private unnamed_addr constant [32 x i8] c"`sizeof' applied to a bit-field\00", align 1
@c_global_trees = external global [32 x %union.tree_node*], align 16
@.str.21 = private unnamed_addr constant [58 x i8] c"ISO C forbids omitting the middle term of a ?: expression\00", align 1
@tree_code_type = external global [256 x i8], align 16
@flag_isoc99 = external global i32, align 4
@.str.22 = private unnamed_addr constant [34 x i8] c"ISO C89 forbids compound literals\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"ISO C forbids braced-groups within expressions\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"first argument to __builtin_choose_expr not a constant\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@yyparse_1.last_lineno = internal global i32 0, align 4
@yyparse_1.last_input_filename = internal global i8* null, align 8
@lineno = external global i32, align 4
@input_filename = external global i8*, align 8
@.str.26 = private unnamed_addr constant [43 x i8] c"traditional C rejects string concatenation\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"ISO C does not permit use of `varargs.h'\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"empty declaration\00", align 1
@extra_warnings = external global i32, align 4
@.str.29 = private unnamed_addr constant [40 x i8] c"`%s' is not at beginning of declaration\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"ISO C forbids empty initializer braces\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"ISO C89 forbids specifying subobject to initialize\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"obsolete use of designated initializer without `='\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"obsolete use of designated initializer with `:'\00", align 1
@.str.34 = private unnamed_addr constant [57 x i8] c"ISO C forbids specifying range of elements to initialize\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"ISO C forbids nested functions\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"ISO C forbids forward references to `enum' types\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"comma at end of enumerator list\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"no semicolon at end of struct or union\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"extra semicolon in struct or union specified\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"ISO C doesn't support unnamed structs/unions\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"ISO C forbids member declarations with no members\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"storage class specifier in array declarator\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"deprecated use of label at end of compound statement\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"ISO C89 forbids mixed declarations and code\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"ISO C forbids label declarations\00", align 1
@compstmt_count = internal global i32 0, align 4
@.str.46 = private unnamed_addr constant [62 x i8] c"braced-group within expression allowed only inside a function\00", align 1
@stmt_count = internal global i32 0, align 4
@if_stmt_file = internal global i8* null, align 8
@if_stmt_line = internal global i32 0, align 4
@.str.47 = private unnamed_addr constant [32 x i8] c"empty body in an else-statement\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"empty body in an if-statement\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"ISO C forbids `goto *expr;'\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"ISO C forbids forward parameter declarations\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"ISO C requires a named argument before `...'\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"`...' in old-style identifier list\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"state stack now\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@yypgoto = internal constant [198 x i16] [i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 98, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 34, i16 -32768, i16 -59, i16 443, i16 -259, i16 378, i16 -32768, i16 -32768, i16 -53, i16 728, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -277, i16 -310, i16 538, i16 -32768, i16 -32768, i16 -97, i16 222, i16 -283, i16 -565, i16 2, i16 8, i16 39, i16 41, i16 21, i16 43, i16 45, i16 48, i16 -375, i16 -339, i16 288, i16 289, i16 -317, i16 -281, i16 291, i16 294, i16 -488, i16 -466, i16 427, i16 435, i16 -32768, i16 -177, i16 -119, i16 -519, i16 -199, i16 429, i16 496, i16 480, i16 706, i16 -32768, i16 -510, i16 -121, i16 -218, i16 437, i16 -32768, i16 591, i16 -32768, i16 379, i16 4, i16 68, i16 -32768, i16 463, i16 -32768, i16 286, i16 -32768, i16 -411, i16 -32768, i16 176, i16 -32768, i16 -526, i16 -32768, i16 -32768, i16 299, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -132, i16 282, i16 154, i16 171, i16 -124, i16 58, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 462, i16 -114, i16 -32768, i16 562, i16 -32768, i16 -32768, i16 230, i16 228, i16 568, i16 477, i16 -95, i16 -32768, i16 -32768, i16 -523, i16 -262, i16 -406, i16 -429, i16 -32768, i16 476, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -242, i16 -32768, i16 -32768, i16 -481, i16 91, i16 -32768, i16 -32768, i16 533, i16 -541, i16 -32768, i16 295, i16 -32768, i16 -32768, i16 -514, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 617, i16 -388, i16 93, i16 -685, i16 -264, i16 20, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -745, i16 54, i16 -32768, i16 55, i16 -32768, i16 461, i16 -32768, i16 -506, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 433, i16 -296, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 60], align 16
@yydefgoto = internal constant [198 x i16] [i16 898, i16 1, i16 2, i16 3, i16 17, i16 18, i16 19, i16 313, i16 503, i16 319, i16 505, i16 212, i16 407, i16 589, i16 174, i16 241, i16 373, i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 358, i16 357, i16 355, i16 597, i16 356, i16 182, i16 521, i16 183, i16 302, i16 303, i16 304, i16 496, i16 448, i16 20, i16 291, i16 613, i16 187, i16 188, i16 189, i16 190, i16 191, i16 192, i16 193, i16 194, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 482, i16 483, i16 331, i16 202, i16 195, i16 39, i16 203, i16 40, i16 41, i16 42, i16 43, i16 44, i16 218, i16 65, i16 213, i16 219, i16 571, i16 66, i16 499, i16 292, i16 205, i16 46, i16 286, i16 287, i16 288, i16 569, i16 667, i16 591, i16 592, i16 593, i16 751, i16 594, i16 681, i16 595, i16 596, i16 762, i16 804, i16 850, i16 765, i16 806, i16 851, i16 502, i16 221, i16 629, i16 630, i16 631, i16 222, i16 47, i16 48, i16 49, i16 50, i16 335, i16 337, i16 342, i16 230, i16 51, i16 685, i16 430, i16 225, i16 226, i16 333, i16 506, i16 509, i16 507, i16 510, i16 340, i16 341, i16 196, i16 280, i16 384, i16 633, i16 634, i16 386, i16 387, i16 388, i16 214, i16 449, i16 450, i16 451, i16 452, i16 453, i16 454, i16 305, i16 276, i16 600, i16 774, i16 778, i16 378, i16 379, i16 380, i16 663, i16 618, i16 277, i16 456, i16 184, i16 664, i16 710, i16 711, i16 767, i16 712, i16 769, i16 306, i16 411, i16 814, i16 775, i16 815, i16 816, i16 713, i16 813, i16 768, i16 865, i16 770, i16 854, i16 883, i16 896, i16 856, i16 837, i16 620, i16 621, i16 699, i16 838, i16 846, i16 847, i16 848, i16 886, i16 463, i16 544, i16 484, i16 640, i16 784, i16 485, i16 486, i16 660, i16 487, i16 552, i16 295, i16 397, i16 488, i16 489, i16 446, i16 185], align 16
@.str.56 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"Discarding token %d (%s).\0A\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"Error: state stack now\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"Shifting error token, \00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"$undefined.\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"TYPENAME\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"SCSPEC\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"TYPESPEC\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"TYPE_QUAL\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"ELLIPSIS\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"SIZEOF\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"ENUM\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"STRUCT\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"UNION\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"IF\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"ELSE\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"WHILE\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"DO\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"FOR\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"SWITCH\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"CASE\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"BREAK\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"CONTINUE\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"RETURN\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"GOTO\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"ASM_KEYWORD\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"TYPEOF\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"ALIGNOF\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"ATTRIBUTE\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"EXTENSION\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"LABEL\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"REALPART\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"IMAGPART\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"VA_ARG\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"CHOOSE_EXPR\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"TYPES_COMPATIBLE_P\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"PTR_VALUE\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"PTR_BASE\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"PTR_EXTENT\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"STRING_FUNC_NAME\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"VAR_FUNC_NAME\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"ASSIGN\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"'='\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"'?'\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"OROR\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"ANDAND\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"'|'\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"'^'\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"'&'\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"EQCOMPARE\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"ARITHCOMPARE\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"LSHIFT\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"RSHIFT\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"'+'\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"'-'\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"'*'\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"'/'\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"'%'\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"UNARY\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"PLUSPLUS\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"MINUSMINUS\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"HYPERUNARY\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"POINTSAT\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"'.'\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"'['\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"INTERFACE\00", align 1
@.str.130 = private unnamed_addr constant [15 x i8] c"IMPLEMENTATION\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"SELECTOR\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"DEFS\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"ENCODE\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"CLASSNAME\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"PUBLIC\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"PROTECTED\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"PROTOCOL\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"OBJECTNAME\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"CLASS\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"ALIAS\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"';'\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"'}'\00", align 1
@.str.146 = private unnamed_addr constant [4 x i8] c"'~'\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"'!'\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"'{'\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"']'\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"extdefs\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"@1\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"@2\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"extdef\00", align 1
@.str.156 = private unnamed_addr constant [8 x i8] c"datadef\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"fndef\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"@3\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"@4\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"@5\00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"@6\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"@7\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"@8\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"unop\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c"exprlist\00", align 1
@.str.168 = private unnamed_addr constant [17 x i8] c"nonnull_exprlist\00", align 1
@.str.169 = private unnamed_addr constant [11 x i8] c"unary_expr\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.171 = private unnamed_addr constant [8 x i8] c"alignof\00", align 1
@.str.172 = private unnamed_addr constant [10 x i8] c"cast_expr\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"expr_no_commas\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"@9\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"@10\00", align 1
@.str.176 = private unnamed_addr constant [4 x i8] c"@11\00", align 1
@.str.177 = private unnamed_addr constant [4 x i8] c"@12\00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"@13\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"@14\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"old_style_parm_decls\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"lineno_datadecl\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"datadecls\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"datadecl\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"lineno_decl\00", align 1
@.str.187 = private unnamed_addr constant [9 x i8] c"setspecs\00", align 1
@.str.188 = private unnamed_addr constant [17 x i8] c"maybe_resetattrs\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"decl\00", align 1
@.str.190 = private unnamed_addr constant [30 x i8] c"declspecs_nosc_nots_nosa_noea\00", align 1
@.str.191 = private unnamed_addr constant [28 x i8] c"declspecs_nosc_nots_nosa_ea\00", align 1
@.str.192 = private unnamed_addr constant [28 x i8] c"declspecs_nosc_nots_sa_noea\00", align 1
@.str.193 = private unnamed_addr constant [26 x i8] c"declspecs_nosc_nots_sa_ea\00", align 1
@.str.194 = private unnamed_addr constant [28 x i8] c"declspecs_nosc_ts_nosa_noea\00", align 1
@.str.195 = private unnamed_addr constant [26 x i8] c"declspecs_nosc_ts_nosa_ea\00", align 1
@.str.196 = private unnamed_addr constant [26 x i8] c"declspecs_nosc_ts_sa_noea\00", align 1
@.str.197 = private unnamed_addr constant [24 x i8] c"declspecs_nosc_ts_sa_ea\00", align 1
@.str.198 = private unnamed_addr constant [28 x i8] c"declspecs_sc_nots_nosa_noea\00", align 1
@.str.199 = private unnamed_addr constant [26 x i8] c"declspecs_sc_nots_nosa_ea\00", align 1
@.str.200 = private unnamed_addr constant [26 x i8] c"declspecs_sc_nots_sa_noea\00", align 1
@.str.201 = private unnamed_addr constant [24 x i8] c"declspecs_sc_nots_sa_ea\00", align 1
@.str.202 = private unnamed_addr constant [26 x i8] c"declspecs_sc_ts_nosa_noea\00", align 1
@.str.203 = private unnamed_addr constant [24 x i8] c"declspecs_sc_ts_nosa_ea\00", align 1
@.str.204 = private unnamed_addr constant [24 x i8] c"declspecs_sc_ts_sa_noea\00", align 1
@.str.205 = private unnamed_addr constant [22 x i8] c"declspecs_sc_ts_sa_ea\00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"declspecs_ts\00", align 1
@.str.207 = private unnamed_addr constant [15 x i8] c"declspecs_nots\00", align 1
@.str.208 = private unnamed_addr constant [18 x i8] c"declspecs_ts_nosa\00", align 1
@.str.209 = private unnamed_addr constant [20 x i8] c"declspecs_nots_nosa\00", align 1
@.str.210 = private unnamed_addr constant [18 x i8] c"declspecs_nosc_ts\00", align 1
@.str.211 = private unnamed_addr constant [20 x i8] c"declspecs_nosc_nots\00", align 1
@.str.212 = private unnamed_addr constant [15 x i8] c"declspecs_nosc\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"declspecs\00", align 1
@.str.214 = private unnamed_addr constant [23 x i8] c"maybe_type_quals_attrs\00", align 1
@.str.215 = private unnamed_addr constant [17 x i8] c"typespec_nonattr\00", align 1
@.str.216 = private unnamed_addr constant [14 x i8] c"typespec_attr\00", align 1
@.str.217 = private unnamed_addr constant [26 x i8] c"typespec_reserved_nonattr\00", align 1
@.str.218 = private unnamed_addr constant [23 x i8] c"typespec_reserved_attr\00", align 1
@.str.219 = private unnamed_addr constant [29 x i8] c"typespec_nonreserved_nonattr\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"initdecls\00", align 1
@.str.221 = private unnamed_addr constant [17 x i8] c"notype_initdecls\00", align 1
@.str.222 = private unnamed_addr constant [9 x i8] c"maybeasm\00", align 1
@.str.223 = private unnamed_addr constant [8 x i8] c"initdcl\00", align 1
@.str.224 = private unnamed_addr constant [4 x i8] c"@15\00", align 1
@.str.225 = private unnamed_addr constant [15 x i8] c"notype_initdcl\00", align 1
@.str.226 = private unnamed_addr constant [4 x i8] c"@16\00", align 1
@.str.227 = private unnamed_addr constant [16 x i8] c"maybe_attribute\00", align 1
@.str.228 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@.str.229 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.230 = private unnamed_addr constant [15 x i8] c"attribute_list\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"attrib\00", align 1
@.str.232 = private unnamed_addr constant [9 x i8] c"any_word\00", align 1
@.str.233 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.234 = private unnamed_addr constant [4 x i8] c"@17\00", align 1
@.str.235 = private unnamed_addr constant [21 x i8] c"initlist_maybe_comma\00", align 1
@.str.236 = private unnamed_addr constant [10 x i8] c"initlist1\00", align 1
@.str.237 = private unnamed_addr constant [8 x i8] c"initelt\00", align 1
@.str.238 = private unnamed_addr constant [4 x i8] c"@18\00", align 1
@.str.239 = private unnamed_addr constant [8 x i8] c"initval\00", align 1
@.str.240 = private unnamed_addr constant [4 x i8] c"@19\00", align 1
@.str.241 = private unnamed_addr constant [16 x i8] c"designator_list\00", align 1
@.str.242 = private unnamed_addr constant [11 x i8] c"designator\00", align 1
@.str.243 = private unnamed_addr constant [16 x i8] c"nested_function\00", align 1
@.str.244 = private unnamed_addr constant [4 x i8] c"@20\00", align 1
@.str.245 = private unnamed_addr constant [4 x i8] c"@21\00", align 1
@.str.246 = private unnamed_addr constant [23 x i8] c"notype_nested_function\00", align 1
@.str.247 = private unnamed_addr constant [4 x i8] c"@22\00", align 1
@.str.248 = private unnamed_addr constant [4 x i8] c"@23\00", align 1
@.str.249 = private unnamed_addr constant [11 x i8] c"declarator\00", align 1
@.str.250 = private unnamed_addr constant [22 x i8] c"after_type_declarator\00", align 1
@.str.251 = private unnamed_addr constant [16 x i8] c"parm_declarator\00", align 1
@.str.252 = private unnamed_addr constant [30 x i8] c"parm_declarator_starttypename\00", align 1
@.str.253 = private unnamed_addr constant [32 x i8] c"parm_declarator_nostarttypename\00", align 1
@.str.254 = private unnamed_addr constant [18 x i8] c"notype_declarator\00", align 1
@.str.255 = private unnamed_addr constant [12 x i8] c"struct_head\00", align 1
@.str.256 = private unnamed_addr constant [11 x i8] c"union_head\00", align 1
@.str.257 = private unnamed_addr constant [10 x i8] c"enum_head\00", align 1
@.str.258 = private unnamed_addr constant [14 x i8] c"structsp_attr\00", align 1
@.str.259 = private unnamed_addr constant [4 x i8] c"@24\00", align 1
@.str.260 = private unnamed_addr constant [4 x i8] c"@25\00", align 1
@.str.261 = private unnamed_addr constant [4 x i8] c"@26\00", align 1
@.str.262 = private unnamed_addr constant [4 x i8] c"@27\00", align 1
@.str.263 = private unnamed_addr constant [17 x i8] c"structsp_nonattr\00", align 1
@.str.264 = private unnamed_addr constant [11 x i8] c"maybecomma\00", align 1
@.str.265 = private unnamed_addr constant [16 x i8] c"maybecomma_warn\00", align 1
@.str.266 = private unnamed_addr constant [20 x i8] c"component_decl_list\00", align 1
@.str.267 = private unnamed_addr constant [21 x i8] c"component_decl_list2\00", align 1
@.str.268 = private unnamed_addr constant [15 x i8] c"component_decl\00", align 1
@.str.269 = private unnamed_addr constant [11 x i8] c"components\00", align 1
@.str.270 = private unnamed_addr constant [18 x i8] c"components_notype\00", align 1
@.str.271 = private unnamed_addr constant [21 x i8] c"component_declarator\00", align 1
@.str.272 = private unnamed_addr constant [28 x i8] c"component_notype_declarator\00", align 1
@.str.273 = private unnamed_addr constant [9 x i8] c"enumlist\00", align 1
@.str.274 = private unnamed_addr constant [11 x i8] c"enumerator\00", align 1
@.str.275 = private unnamed_addr constant [9 x i8] c"typename\00", align 1
@.str.276 = private unnamed_addr constant [4 x i8] c"@28\00", align 1
@.str.277 = private unnamed_addr constant [7 x i8] c"absdcl\00", align 1
@.str.278 = private unnamed_addr constant [23 x i8] c"absdcl_maybe_attribute\00", align 1
@.str.279 = private unnamed_addr constant [8 x i8] c"absdcl1\00", align 1
@.str.280 = private unnamed_addr constant [13 x i8] c"absdcl1_noea\00", align 1
@.str.281 = private unnamed_addr constant [11 x i8] c"absdcl1_ea\00", align 1
@.str.282 = private unnamed_addr constant [15 x i8] c"direct_absdcl1\00", align 1
@.str.283 = private unnamed_addr constant [17 x i8] c"array_declarator\00", align 1
@.str.284 = private unnamed_addr constant [16 x i8] c"stmts_and_decls\00", align 1
@.str.285 = private unnamed_addr constant [39 x i8] c"lineno_stmt_decl_or_labels_ending_stmt\00", align 1
@.str.286 = private unnamed_addr constant [39 x i8] c"lineno_stmt_decl_or_labels_ending_decl\00", align 1
@.str.287 = private unnamed_addr constant [40 x i8] c"lineno_stmt_decl_or_labels_ending_label\00", align 1
@.str.288 = private unnamed_addr constant [40 x i8] c"lineno_stmt_decl_or_labels_ending_error\00", align 1
@.str.289 = private unnamed_addr constant [27 x i8] c"lineno_stmt_decl_or_labels\00", align 1
@.str.290 = private unnamed_addr constant [8 x i8] c"errstmt\00", align 1
@.str.291 = private unnamed_addr constant [10 x i8] c"pushlevel\00", align 1
@.str.292 = private unnamed_addr constant [9 x i8] c"poplevel\00", align 1
@.str.293 = private unnamed_addr constant [16 x i8] c"c99_block_start\00", align 1
@.str.294 = private unnamed_addr constant [14 x i8] c"c99_block_end\00", align 1
@.str.295 = private unnamed_addr constant [18 x i8] c"maybe_label_decls\00", align 1
@.str.296 = private unnamed_addr constant [12 x i8] c"label_decls\00", align 1
@.str.297 = private unnamed_addr constant [11 x i8] c"label_decl\00", align 1
@.str.298 = private unnamed_addr constant [18 x i8] c"compstmt_or_error\00", align 1
@.str.299 = private unnamed_addr constant [15 x i8] c"compstmt_start\00", align 1
@.str.300 = private unnamed_addr constant [17 x i8] c"compstmt_nostart\00", align 1
@.str.301 = private unnamed_addr constant [27 x i8] c"compstmt_contents_nonempty\00", align 1
@.str.302 = private unnamed_addr constant [23 x i8] c"compstmt_primary_start\00", align 1
@.str.303 = private unnamed_addr constant [9 x i8] c"compstmt\00", align 1
@.str.304 = private unnamed_addr constant [10 x i8] c"simple_if\00", align 1
@.str.305 = private unnamed_addr constant [10 x i8] c"if_prefix\00", align 1
@.str.306 = private unnamed_addr constant [4 x i8] c"@29\00", align 1
@.str.307 = private unnamed_addr constant [14 x i8] c"do_stmt_start\00", align 1
@.str.308 = private unnamed_addr constant [4 x i8] c"@30\00", align 1
@.str.309 = private unnamed_addr constant [14 x i8] c"save_filename\00", align 1
@.str.310 = private unnamed_addr constant [12 x i8] c"save_lineno\00", align 1
@.str.311 = private unnamed_addr constant [20 x i8] c"lineno_labeled_stmt\00", align 1
@.str.312 = private unnamed_addr constant [30 x i8] c"c99_block_lineno_labeled_stmt\00", align 1
@.str.313 = private unnamed_addr constant [12 x i8] c"lineno_stmt\00", align 1
@.str.314 = private unnamed_addr constant [13 x i8] c"lineno_label\00", align 1
@.str.315 = private unnamed_addr constant [20 x i8] c"select_or_iter_stmt\00", align 1
@.str.316 = private unnamed_addr constant [4 x i8] c"@31\00", align 1
@.str.317 = private unnamed_addr constant [4 x i8] c"@32\00", align 1
@.str.318 = private unnamed_addr constant [4 x i8] c"@33\00", align 1
@.str.319 = private unnamed_addr constant [4 x i8] c"@34\00", align 1
@.str.320 = private unnamed_addr constant [4 x i8] c"@35\00", align 1
@.str.321 = private unnamed_addr constant [4 x i8] c"@36\00", align 1
@.str.322 = private unnamed_addr constant [4 x i8] c"@37\00", align 1
@.str.323 = private unnamed_addr constant [4 x i8] c"@38\00", align 1
@.str.324 = private unnamed_addr constant [14 x i8] c"for_init_stmt\00", align 1
@.str.325 = private unnamed_addr constant [5 x i8] c"stmt\00", align 1
@.str.326 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.327 = private unnamed_addr constant [16 x i8] c"maybe_type_qual\00", align 1
@.str.328 = private unnamed_addr constant [6 x i8] c"xexpr\00", align 1
@.str.329 = private unnamed_addr constant [13 x i8] c"asm_operands\00", align 1
@.str.330 = private unnamed_addr constant [21 x i8] c"nonnull_asm_operands\00", align 1
@.str.331 = private unnamed_addr constant [12 x i8] c"asm_operand\00", align 1
@.str.332 = private unnamed_addr constant [13 x i8] c"asm_clobbers\00", align 1
@.str.333 = private unnamed_addr constant [9 x i8] c"parmlist\00", align 1
@.str.334 = private unnamed_addr constant [4 x i8] c"@39\00", align 1
@.str.335 = private unnamed_addr constant [11 x i8] c"parmlist_1\00", align 1
@.str.336 = private unnamed_addr constant [4 x i8] c"@40\00", align 1
@.str.337 = private unnamed_addr constant [4 x i8] c"@41\00", align 1
@.str.338 = private unnamed_addr constant [11 x i8] c"parmlist_2\00", align 1
@.str.339 = private unnamed_addr constant [6 x i8] c"parms\00", align 1
@.str.340 = private unnamed_addr constant [5 x i8] c"parm\00", align 1
@.str.341 = private unnamed_addr constant [10 x i8] c"firstparm\00", align 1
@.str.342 = private unnamed_addr constant [12 x i8] c"setspecs_fp\00", align 1
@.str.343 = private unnamed_addr constant [24 x i8] c"parmlist_or_identifiers\00", align 1
@.str.344 = private unnamed_addr constant [4 x i8] c"@42\00", align 1
@.str.345 = private unnamed_addr constant [26 x i8] c"parmlist_or_identifiers_1\00", align 1
@.str.346 = private unnamed_addr constant [12 x i8] c"identifiers\00", align 1
@.str.347 = private unnamed_addr constant [25 x i8] c"identifiers_or_typenames\00", align 1
@.str.348 = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@flag_no_asm = external global i32, align 4
@c_language = external global i32, align 4
@ridpointers = external global %union.tree_node**, align 8
@.str.349 = private unnamed_addr constant [6 x i8] c"_Bool\00", align 1
@.str.350 = private unnamed_addr constant [9 x i8] c"_Complex\00", align 1
@.str.351 = private unnamed_addr constant [13 x i8] c"__FUNCTION__\00", align 1
@.str.352 = private unnamed_addr constant [20 x i8] c"__PRETTY_FUNCTION__\00", align 1
@.str.353 = private unnamed_addr constant [10 x i8] c"__alignof\00", align 1
@.str.354 = private unnamed_addr constant [12 x i8] c"__alignof__\00", align 1
@.str.355 = private unnamed_addr constant [6 x i8] c"__asm\00", align 1
@.str.356 = private unnamed_addr constant [8 x i8] c"__asm__\00", align 1
@.str.357 = private unnamed_addr constant [12 x i8] c"__attribute\00", align 1
@.str.358 = private unnamed_addr constant [14 x i8] c"__attribute__\00", align 1
@.str.359 = private unnamed_addr constant [10 x i8] c"__bounded\00", align 1
@.str.360 = private unnamed_addr constant [12 x i8] c"__bounded__\00", align 1
@.str.361 = private unnamed_addr constant [22 x i8] c"__builtin_choose_expr\00", align 1
@.str.362 = private unnamed_addr constant [29 x i8] c"__builtin_types_compatible_p\00", align 1
@.str.363 = private unnamed_addr constant [17 x i8] c"__builtin_va_arg\00", align 1
@.str.364 = private unnamed_addr constant [10 x i8] c"__complex\00", align 1
@.str.365 = private unnamed_addr constant [12 x i8] c"__complex__\00", align 1
@.str.366 = private unnamed_addr constant [8 x i8] c"__const\00", align 1
@.str.367 = private unnamed_addr constant [10 x i8] c"__const__\00", align 1
@.str.368 = private unnamed_addr constant [14 x i8] c"__extension__\00", align 1
@.str.369 = private unnamed_addr constant [9 x i8] c"__func__\00", align 1
@.str.370 = private unnamed_addr constant [7 x i8] c"__imag\00", align 1
@.str.371 = private unnamed_addr constant [9 x i8] c"__imag__\00", align 1
@.str.372 = private unnamed_addr constant [9 x i8] c"__inline\00", align 1
@.str.373 = private unnamed_addr constant [11 x i8] c"__inline__\00", align 1
@.str.374 = private unnamed_addr constant [10 x i8] c"__label__\00", align 1
@.str.375 = private unnamed_addr constant [10 x i8] c"__ptrbase\00", align 1
@.str.376 = private unnamed_addr constant [12 x i8] c"__ptrbase__\00", align 1
@.str.377 = private unnamed_addr constant [12 x i8] c"__ptrextent\00", align 1
@.str.378 = private unnamed_addr constant [14 x i8] c"__ptrextent__\00", align 1
@.str.379 = private unnamed_addr constant [11 x i8] c"__ptrvalue\00", align 1
@.str.380 = private unnamed_addr constant [13 x i8] c"__ptrvalue__\00", align 1
@.str.381 = private unnamed_addr constant [7 x i8] c"__real\00", align 1
@.str.382 = private unnamed_addr constant [9 x i8] c"__real__\00", align 1
@.str.383 = private unnamed_addr constant [11 x i8] c"__restrict\00", align 1
@.str.384 = private unnamed_addr constant [13 x i8] c"__restrict__\00", align 1
@.str.385 = private unnamed_addr constant [9 x i8] c"__signed\00", align 1
@.str.386 = private unnamed_addr constant [11 x i8] c"__signed__\00", align 1
@.str.387 = private unnamed_addr constant [9 x i8] c"__typeof\00", align 1
@.str.388 = private unnamed_addr constant [11 x i8] c"__typeof__\00", align 1
@.str.389 = private unnamed_addr constant [12 x i8] c"__unbounded\00", align 1
@.str.390 = private unnamed_addr constant [14 x i8] c"__unbounded__\00", align 1
@.str.391 = private unnamed_addr constant [11 x i8] c"__volatile\00", align 1
@.str.392 = private unnamed_addr constant [13 x i8] c"__volatile__\00", align 1
@.str.393 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.394 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.395 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.396 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.397 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.398 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.399 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.400 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.401 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.402 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.403 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.404 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.405 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.406 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.407 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.408 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.409 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.410 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.411 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.412 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.413 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.414 = private unnamed_addr constant [9 x i8] c"restrict\00", align 1
@.str.415 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.416 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.417 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.418 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.419 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.420 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.421 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.422 = private unnamed_addr constant [7 x i8] c"typeof\00", align 1
@.str.423 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.424 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.425 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.426 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.427 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@reswords = internal constant <{ { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 } }> <{ { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.349, i32 0, i32 0), i8 65, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.350, i32 0, i32 0), i8 15, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.351, i32 0, i32 0), i8 62, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.352, i32 0, i32 0), i8 63, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.353, i32 0, i32 0), i8 50, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.354, i32 0, i32 0), i8 50, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.355, i32 0, i32 0), i8 48, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.356, i32 0, i32 0), i8 48, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.357, i32 0, i32 0), i8 51, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.358, i32 0, i32 0), i8 51, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.359, i32 0, i32 0), i8 13, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.360, i32 0, i32 0), i8 13, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.361, i32 0, i32 0), i8 60, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.362, i32 0, i32 0), i8 61, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.363, i32 0, i32 0), i8 52, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.364, i32 0, i32 0), i8 15, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.365, i32 0, i32 0), i8 15, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.366, i32 0, i32 0), i8 3, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.367, i32 0, i32 0), i8 3, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.368, i32 0, i32 0), i8 53, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.369, i32 0, i32 0), i8 64, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.370, i32 0, i32 0), i8 54, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.371, i32 0, i32 0), i8 54, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.372, i32 0, i32 0), i8 8, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.373, i32 0, i32 0), i8 8, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.374, i32 0, i32 0), i8 56, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.375, i32 0, i32 0), i8 57, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.376, i32 0, i32 0), i8 57, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.377, i32 0, i32 0), i8 58, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.378, i32 0, i32 0), i8 58, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.379, i32 0, i32 0), i8 59, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.380, i32 0, i32 0), i8 59, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.381, i32 0, i32 0), i8 55, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.382, i32 0, i32 0), i8 55, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.383, i32 0, i32 0), i8 12, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.384, i32 0, i32 0), i8 12, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.385, i32 0, i32 0), i8 10, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.386, i32 0, i32 0), i8 10, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.387, i32 0, i32 0), i8 49, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.388, i32 0, i32 0), i8 49, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.389, i32 0, i32 0), i8 14, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.390, i32 0, i32 0), i8 14, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.391, i32 0, i32 0), i8 9, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.392, i32 0, i32 0), i8 9, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.393, i32 0, i32 0), i8 48, i8 0, i8 4, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.394, i32 0, i32 0), i8 11, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.395, i32 0, i32 0), i8 43, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.396, i32 0, i32 0), i8 41, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.397, i32 0, i32 0), i8 28, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.398, i32 0, i32 0), i8 3, i8 0, i8 1, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.399, i32 0, i32 0), i8 44, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.400, i32 0, i32 0), i8 42, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.401, i32 0, i32 0), i8 38, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.402, i32 0, i32 0), i8 30, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.403, i32 0, i32 0), i8 36, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.404, i32 0, i32 0), i8 32, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.405, i32 0, i32 0), i8 4, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.406, i32 0, i32 0), i8 29, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.407, i32 0, i32 0), i8 39, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.408, i32 0, i32 0), i8 46, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.409, i32 0, i32 0), i8 35, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.410, i32 0, i32 0), i8 8, i8 0, i8 9, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.411, i32 0, i32 0), i8 27, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.412, i32 0, i32 0), i8 2, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.413, i32 0, i32 0), i8 5, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.414, i32 0, i32 0), i8 12, i8 0, i8 3, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.415, i32 0, i32 0), i8 45, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.416, i32 0, i32 0), i8 7, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.417, i32 0, i32 0), i8 10, i8 0, i8 1, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.170, i32 0, i32 0), i8 47, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.418, i32 0, i32 0), i8 0, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.419, i32 0, i32 0), i8 33, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.420, i32 0, i32 0), i8 40, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.421, i32 0, i32 0), i8 6, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.422, i32 0, i32 0), i8 49, i8 0, i8 5, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.423, i32 0, i32 0), i8 34, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.424, i32 0, i32 0), i8 1, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.425, i32 0, i32 0), i8 31, i8 0, i8 0, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.426, i32 0, i32 0), i8 9, i8 0, i8 1, i8 0 }, { i8*, i8, i8, i8, i8 } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.427, i32 0, i32 0), i8 37, i8 0, i8 0, i8 0 } }>, align 16
@last_token = internal global i32 0, align 4
@.str.428 = private unnamed_addr constant [19 x i8] c"%s at end of input\00", align 1
@.str.429 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.430 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@_sch_istable = external constant [256 x i16], align 16
@.str.431 = private unnamed_addr constant [17 x i8] c"%s before %s'%c'\00", align 1
@.str.432 = private unnamed_addr constant [19 x i8] c"%s before %s'\5Cx%x'\00", align 1
@.str.433 = private unnamed_addr constant [26 x i8] c"%s before string constant\00", align 1
@.str.434 = private unnamed_addr constant [27 x i8] c"%s before numeric constant\00", align 1
@.str.435 = private unnamed_addr constant [15 x i8] c"%s before \22%s\22\00", align 1
@.str.436 = private unnamed_addr constant [21 x i8] c"%s before '%s' token\00", align 1
@.str.437 = private unnamed_addr constant [27 x i8] c"syntax error at '%s' token\00", align 1
@.str.438 = private unnamed_addr constant [10 x i8] c"c-parse.c\00", align 1
@__FUNCTION__._yylex = private unnamed_addr constant [7 x i8] c"_yylex\00", align 1
@rid_to_yy = internal constant [114 x i16] [i16 259, i16 260, i16 260, i16 261, i16 259, i16 259, i16 259, i16 260, i16 259, i16 261, i16 260, i16 259, i16 261, i16 261, i16 261, i16 260, i16 0, i16 0, i16 0, i16 0, i16 0, i16 261, i16 261, i16 261, i16 261, i16 261, i16 261, i16 260, i16 260, i16 260, i16 260, i16 260, i16 266, i16 267, i16 268, i16 269, i16 270, i16 271, i16 272, i16 273, i16 274, i16 275, i16 276, i16 277, i16 278, i16 279, i16 280, i16 265, i16 281, i16 282, i16 283, i16 284, i16 289, i16 285, i16 288, i16 287, i16 286, i16 293, i16 294, i16 292, i16 290, i16 291, i16 295, i16 295, i16 296, i16 260, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 320, i16 314, i16 311, i16 321, i16 322, i16 313, i16 317, i16 318, i16 316, i16 319, i16 312, i16 309, i16 310], align 16
@.str.439 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.440 = private unnamed_addr constant [6 x i8] c" `%s'\00", align 1
@.str.441 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@mode_name = external constant [59 x i8*], align 16
@.str.442 = private unnamed_addr constant [13 x i8] c" 0x%lx%016lx\00", align 1

; Function Attrs: nounwind uwtable
define void @c_parse_init() #0 {
entry:
  call void @init_reswords()
  call void @ggc_add_tree_root(%union.tree_node** @declspec_stack, i32 1)
  call void @ggc_add_tree_root(%union.tree_node** @current_declspecs, i32 1)
  call void @ggc_add_tree_root(%union.tree_node** @prefix_attributes, i32 1)
  call void @ggc_add_tree_root(%union.tree_node** @all_prefix_attributes, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_reswords() #0 {
entry:
  %i = alloca i32, align 4
  %id = alloca %union.tree_node*, align 8
  %mask = alloca i32, align 4
  %0 = load i32, i32* @flag_isoc99, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 0, i32 2
  %1 = load i32, i32* @flag_traditional, align 4
  %tobool1 = icmp ne i32 %1, 0
  %cond2 = select i1 %tobool1, i32 1, i32 0
  %or = or i32 %cond, %cond2
  %2 = load i32, i32* @flag_no_asm, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* @flag_isoc99, align 4
  %tobool4 = icmp ne i32 %3, 0
  %cond5 = select i1 %tobool4, i32 4, i32 12
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i32 [ %cond5, %cond.true ], [ 0, %cond.false ]
  %or7 = or i32 %or, %cond6
  store i32 %or7, i32* %mask, align 4
  %4 = load i32, i32* @c_language, align 4
  %cmp = icmp ne i32 %4, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %5 = load i32, i32* %mask, align 4
  %or8 = or i32 %5, 16
  store i32 %or8, i32* %mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %call = call noalias i8* @xcalloc(i64 114, i64 8)
  %6 = bitcast i8* %call to %union.tree_node**
  store %union.tree_node** %6, %union.tree_node*** @ridpointers, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %conv = zext i32 %7 to i64
  %cmp9 = icmp ult i64 %conv, 80
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [80 x %struct.resword], [80 x %struct.resword]* bitcast (<{ { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 } }>* @reswords to [80 x %struct.resword]*), i32 0, i64 %idxprom
  %disable = getelementptr inbounds %struct.resword, %struct.resword* %arrayidx, i32 0, i32 1
  %bf.load = load i32, i32* %disable, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %9 = load i32, i32* %mask, align 4
  %and = and i32 %bf.lshr, %9
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  br label %for.inc

if.end.13:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom14 = zext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [80 x %struct.resword], [80 x %struct.resword]* bitcast (<{ { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 } }>* @reswords to [80 x %struct.resword]*), i32 0, i64 %idxprom14
  %word = getelementptr inbounds %struct.resword, %struct.resword* %arrayidx15, i32 0, i32 0
  %11 = load i8*, i8** %word, align 8
  %call16 = call %union.tree_node* @get_identifier(i8* %11)
  store %union.tree_node* %call16, %union.tree_node** %id, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom17 = zext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [80 x %struct.resword], [80 x %struct.resword]* bitcast (<{ { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 } }>* @reswords to [80 x %struct.resword]*), i32 0, i64 %idxprom17
  %rid = getelementptr inbounds %struct.resword, %struct.resword* %arrayidx18, i32 0, i32 1
  %bf.load19 = load i32, i32* %rid, align 8
  %bf.clear = and i32 %bf.load19, 65535
  %conv20 = trunc i32 %bf.clear to i8
  %13 = load %union.tree_node*, %union.tree_node** %id, align 8
  %14 = bitcast %union.tree_node* %13 to %struct.c_common_identifier*
  %node = getelementptr inbounds %struct.c_common_identifier, %struct.c_common_identifier* %14, i32 0, i32 1
  %rid_code = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i32 0, i32 3
  store i8 %conv20, i8* %rid_code, align 1
  %15 = load %union.tree_node*, %union.tree_node** %id, align 8
  %common = bitcast %union.tree_node* %15 to %struct.tree_common*
  %lang_flag_0 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load21 = load i32, i32* %lang_flag_0, align 8
  %bf.clear22 = and i32 %bf.load21, -16777217
  %bf.set = or i32 %bf.clear22, 16777216
  store i32 %bf.set, i32* %lang_flag_0, align 8
  %16 = load %union.tree_node*, %union.tree_node** %id, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom23 = zext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [80 x %struct.resword], [80 x %struct.resword]* bitcast (<{ { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 }, { i8*, i8, i8, i8, i8 } }>* @reswords to [80 x %struct.resword]*), i32 0, i64 %idxprom23
  %rid25 = getelementptr inbounds %struct.resword, %struct.resword* %arrayidx24, i32 0, i32 1
  %bf.load26 = load i32, i32* %rid25, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %idxprom28 = sext i32 %bf.clear27 to i64
  %18 = load %union.tree_node**, %union.tree_node*** @ridpointers, align 8
  %arrayidx29 = getelementptr inbounds %union.tree_node*, %union.tree_node** %18, i64 %idxprom28
  store %union.tree_node* %16, %union.tree_node** %arrayidx29, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.13, %if.then.12
  %19 = load i32, i32* %i, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @ggc_add_tree_root(%union.tree_node**, i32) #1

; Function Attrs: nounwind uwtable
define i32 @yyparse_1() #0 {
entry:
  %retval = alloca i32, align 4
  %yystate = alloca i32, align 4
  %yyn = alloca i32, align 4
  %yyssp = alloca i16*, align 8
  %yyvsp = alloca %union.YYSTYPE*, align 8
  %yyerrstatus = alloca i32, align 4
  %yychar1 = alloca i32, align 4
  %yyssa = alloca [200 x i16], align 16
  %yyvsa = alloca [200 x %union.YYSTYPE], align 16
  %yyss = alloca i16*, align 8
  %yyvs = alloca %union.YYSTYPE*, align 8
  %yystacksize = alloca i32, align 4
  %yyfree_stacks = alloca i32, align 4
  %yyval = alloca %union.YYSTYPE, align 8
  %yylen = alloca i32, align 4
  %yyvs1 = alloca %union.YYSTYPE*, align 8
  %yyss1 = alloca i16*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %val518 = alloca i32, align 4
  %class = alloca i8, align 1
  %class874 = alloca i8, align 1
  %constructor = alloca %union.tree_node*, align 8
  %type943 = alloca %union.tree_node*, align 8
  %class954 = alloca i8, align 1
  %saved_last_tree = alloca %union.tree_node*, align 8
  %c = alloca %union.tree_node*, align 8
  %e1 = alloca %union.tree_node*, align 8
  %e2 = alloca %union.tree_node*, align 8
  %expr = alloca %union.tree_node*, align 8
  %val1329 = alloca i32, align 4
  %d = alloca %union.tree_node*, align 8
  %d2900 = alloca %union.tree_node*, align 8
  %decl3031 = alloca %union.tree_node*, align 8
  %decl3052 = alloca %union.tree_node*, align 8
  %val3429 = alloca i32, align 4
  %scope_stmt = alloca %union.tree_node*, align 8
  %link = alloca %union.tree_node*, align 8
  %label = alloca %union.tree_node*, align 8
  %decl4223 = alloca %union.tree_node*, align 8
  %label4277 = alloca %union.tree_node*, align 8
  %parm = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %ssp1 = alloca i16*, align 8
  %ssp14773 = alloca i16*, align 8
  store i32 0, i32* %yychar1, align 4
  %arraydecay = getelementptr inbounds [200 x i16], [200 x i16]* %yyssa, i32 0, i32 0
  store i16* %arraydecay, i16** %yyss, align 8
  %arraydecay1 = getelementptr inbounds [200 x %union.YYSTYPE], [200 x %union.YYSTYPE]* %yyvsa, i32 0, i32 0
  store %union.YYSTYPE* %arraydecay1, %union.YYSTYPE** %yyvs, align 8
  store i32 200, i32* %yystacksize, align 4
  store i32 0, i32* %yyfree_stacks, align 4
  %0 = load i32, i32* @yydebug, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %yystate, align 4
  store i32 0, i32* %yyerrstatus, align 4
  store i32 0, i32* @yynerrs, align 4
  store i32 -2, i32* @yychar, align 4
  %2 = load i16*, i16** %yyss, align 8
  %add.ptr = getelementptr inbounds i16, i16* %2, i64 -1
  store i16* %add.ptr, i16** %yyssp, align 8
  %3 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  store %union.YYSTYPE* %3, %union.YYSTYPE** %yyvsp, align 8
  br label %yynewstate

yynewstate:                                       ; preds = %if.end.4831, %if.end.4745, %if.end.128, %if.end
  %4 = load i32, i32* %yystate, align 4
  %conv = trunc i32 %4 to i16
  %5 = load i16*, i16** %yyssp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %5, i32 1
  store i16* %incdec.ptr, i16** %yyssp, align 8
  store i16 %conv, i16* %incdec.ptr, align 2
  %6 = load i16*, i16** %yyssp, align 8
  %7 = load i16*, i16** %yyss, align 8
  %8 = load i32, i32* %yystacksize, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr2 = getelementptr inbounds i16, i16* %7, i64 %idx.ext
  %add.ptr3 = getelementptr inbounds i16, i16* %add.ptr2, i64 -1
  %cmp = icmp uge i16* %6, %add.ptr3
  br i1 %cmp, label %if.then.5, label %if.end.43

if.then.5:                                        ; preds = %yynewstate
  %9 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  store %union.YYSTYPE* %9, %union.YYSTYPE** %yyvs1, align 8
  %10 = load i16*, i16** %yyss, align 8
  store i16* %10, i16** %yyss1, align 8
  %11 = load i16*, i16** %yyssp, align 8
  %12 = load i16*, i16** %yyss, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add = add nsw i64 %sub.ptr.div, 1
  %conv6 = trunc i64 %add to i32
  store i32 %conv6, i32* %size, align 4
  %13 = load i32, i32* %yystacksize, align 4
  %cmp7 = icmp sge i32 %13, 10000
  br i1 %cmp7, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.then.5
  call void @yyerror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  %14 = load i32, i32* %yyfree_stacks, align 4
  %tobool10 = icmp ne i32 %14, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.9
  %15 = load i16*, i16** %yyss, align 8
  %16 = bitcast i16* %15 to i8*
  call void @free(i8* %16) #3
  %17 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  %18 = bitcast %union.YYSTYPE* %17 to i8*
  call void @free(i8* %18) #3
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.9
  store i32 2, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.5
  %19 = load i32, i32* %yystacksize, align 4
  %mul = mul nsw i32 %19, 2
  store i32 %mul, i32* %yystacksize, align 4
  %20 = load i32, i32* %yystacksize, align 4
  %cmp14 = icmp sgt i32 %20, 10000
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store i32 10000, i32* %yystacksize, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.13
  %21 = load i32, i32* %yystacksize, align 4
  %conv18 = sext i32 %21 to i64
  %mul19 = mul i64 %conv18, 2
  %22 = alloca i8, i64 %mul19
  %23 = bitcast i8* %22 to i16*
  store i16* %23, i16** %yyss, align 8
  %24 = load i16*, i16** %yyss, align 8
  %25 = bitcast i16* %24 to i8*
  %26 = load i16*, i16** %yyss1, align 8
  %27 = bitcast i16* %26 to i8*
  %28 = load i32, i32* %size, align 4
  %mul20 = mul i32 %28, 2
  %conv21 = zext i32 %mul20 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %27, i64 %conv21, i32 1, i1 false)
  %29 = load i32, i32* %yystacksize, align 4
  %conv22 = sext i32 %29 to i64
  %mul23 = mul i64 %conv22, 8
  %30 = alloca i8, i64 %mul23
  %31 = bitcast i8* %30 to %union.YYSTYPE*
  store %union.YYSTYPE* %31, %union.YYSTYPE** %yyvs, align 8
  %32 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  %33 = bitcast %union.YYSTYPE* %32 to i8*
  %34 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs1, align 8
  %35 = bitcast %union.YYSTYPE* %34 to i8*
  %36 = load i32, i32* %size, align 4
  %mul24 = mul i32 %36, 8
  %conv25 = zext i32 %mul24 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %35, i64 %conv25, i32 1, i1 false)
  %37 = load i16*, i16** %yyss, align 8
  %38 = load i32, i32* %size, align 4
  %idx.ext26 = sext i32 %38 to i64
  %add.ptr27 = getelementptr inbounds i16, i16* %37, i64 %idx.ext26
  %add.ptr28 = getelementptr inbounds i16, i16* %add.ptr27, i64 -1
  store i16* %add.ptr28, i16** %yyssp, align 8
  %39 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  %40 = load i32, i32* %size, align 4
  %idx.ext29 = sext i32 %40 to i64
  %add.ptr30 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %39, i64 %idx.ext29
  %add.ptr31 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %add.ptr30, i64 -1
  store %union.YYSTYPE* %add.ptr31, %union.YYSTYPE** %yyvsp, align 8
  %41 = load i32, i32* @yydebug, align 4
  %tobool32 = icmp ne i32 %41, 0
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.17
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i32, i32* %yystacksize, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32 %43)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.17
  %44 = load i16*, i16** %yyssp, align 8
  %45 = load i16*, i16** %yyss, align 8
  %46 = load i32, i32* %yystacksize, align 4
  %idx.ext36 = sext i32 %46 to i64
  %add.ptr37 = getelementptr inbounds i16, i16* %45, i64 %idx.ext36
  %add.ptr38 = getelementptr inbounds i16, i16* %add.ptr37, i64 -1
  %cmp39 = icmp uge i16* %44, %add.ptr38
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.35
  br label %yyabortlab

if.end.42:                                        ; preds = %if.end.35
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %yynewstate
  %47 = load i32, i32* @yydebug, align 4
  %tobool44 = icmp ne i32 %47, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.43
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i32, i32* %yystate, align 4
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 %49)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.43
  br label %yybackup

yybackup:                                         ; preds = %if.end.47
  %50 = load i32, i32* %yystate, align 4
  %idxprom = sext i32 %50 to i64
  %arrayidx = getelementptr inbounds [901 x i16], [901 x i16]* @yypact, i32 0, i64 %idxprom
  %51 = load i16, i16* %arrayidx, align 2
  %conv48 = sext i16 %51 to i32
  store i32 %conv48, i32* %yyn, align 4
  %52 = load i32, i32* %yyn, align 4
  %cmp49 = icmp eq i32 %52, -32768
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %yybackup
  br label %yydefault

if.end.52:                                        ; preds = %yybackup
  %53 = load i32, i32* @yychar, align 4
  %cmp53 = icmp eq i32 %53, -2
  br i1 %cmp53, label %if.then.55, label %if.end.61

if.then.55:                                       ; preds = %if.end.52
  %54 = load i32, i32* @yydebug, align 4
  %tobool56 = icmp ne i32 %54, 0
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.then.55
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.then.55
  %call60 = call i32 @yylex()
  store i32 %call60, i32* @yychar, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.59, %if.end.52
  %56 = load i32, i32* @yychar, align 4
  %cmp62 = icmp sle i32 %56, 0
  br i1 %cmp62, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %if.end.61
  store i32 0, i32* %yychar1, align 4
  store i32 0, i32* @yychar, align 4
  %57 = load i32, i32* @yydebug, align 4
  %tobool65 = icmp ne i32 %57, 0
  br i1 %tobool65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.then.64
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.then.64
  br label %if.end.81

if.else:                                          ; preds = %if.end.61
  %59 = load i32, i32* @yychar, align 4
  %cmp69 = icmp ule i32 %59, 322
  br i1 %cmp69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %60 = load i32, i32* @yychar, align 4
  %idxprom71 = sext i32 %60 to i64
  %arrayidx72 = getelementptr inbounds [323 x i8], [323 x i8]* @yytranslate, i32 0, i64 %idxprom71
  %61 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %61 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv73, %cond.true ], [ 289, %cond.false ]
  store i32 %cond, i32* %yychar1, align 4
  %62 = load i32, i32* @yydebug, align 4
  %tobool74 = icmp ne i32 %62, 0
  br i1 %tobool74, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %cond.end
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = load i32, i32* @yychar, align 4
  %65 = load i32, i32* %yychar1, align 4
  %idxprom76 = sext i32 %65 to i64
  %arrayidx77 = getelementptr inbounds [290 x i8*], [290 x i8*]* @yytname, i32 0, i64 %idxprom76
  %66 = load i8*, i8** %arrayidx77, align 8
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 %64, i8* %66)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %68 = load i32, i32* @yychar, align 4
  %69 = load i64, i64* getelementptr inbounds (%union.YYSTYPE, %union.YYSTYPE* @yylval, i32 0, i32 0), align 8
  call void @yyprint(%struct._IO_FILE* %67, i32 %68, i64 %69)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.75, %cond.end
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.68
  %71 = load i32, i32* %yychar1, align 4
  %72 = load i32, i32* %yyn, align 4
  %add82 = add nsw i32 %72, %71
  store i32 %add82, i32* %yyn, align 4
  %73 = load i32, i32* %yyn, align 4
  %cmp83 = icmp slt i32 %73, 0
  br i1 %cmp83, label %if.then.93, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.81
  %74 = load i32, i32* %yyn, align 4
  %cmp85 = icmp sgt i32 %74, 3205
  br i1 %cmp85, label %if.then.93, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %lor.lhs.false
  %75 = load i32, i32* %yyn, align 4
  %idxprom88 = sext i32 %75 to i64
  %arrayidx89 = getelementptr inbounds [3206 x i16], [3206 x i16]* @yycheck, i32 0, i64 %idxprom88
  %76 = load i16, i16* %arrayidx89, align 2
  %conv90 = sext i16 %76 to i32
  %77 = load i32, i32* %yychar1, align 4
  %cmp91 = icmp ne i32 %conv90, %77
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %lor.lhs.false.87, %lor.lhs.false, %if.end.81
  br label %yydefault

if.end.94:                                        ; preds = %lor.lhs.false.87
  %78 = load i32, i32* %yyn, align 4
  %idxprom95 = sext i32 %78 to i64
  %arrayidx96 = getelementptr inbounds [3206 x i16], [3206 x i16]* @yytable, i32 0, i64 %idxprom95
  %79 = load i16, i16* %arrayidx96, align 2
  %conv97 = sext i16 %79 to i32
  store i32 %conv97, i32* %yyn, align 4
  %80 = load i32, i32* %yyn, align 4
  %cmp98 = icmp slt i32 %80, 0
  br i1 %cmp98, label %if.then.100, label %if.else.105

if.then.100:                                      ; preds = %if.end.94
  %81 = load i32, i32* %yyn, align 4
  %cmp101 = icmp eq i32 %81, -32768
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.then.100
  br label %yyerrlab

if.end.104:                                       ; preds = %if.then.100
  %82 = load i32, i32* %yyn, align 4
  %sub = sub nsw i32 0, %82
  store i32 %sub, i32* %yyn, align 4
  br label %yyreduce

if.else.105:                                      ; preds = %if.end.94
  %83 = load i32, i32* %yyn, align 4
  %cmp106 = icmp eq i32 %83, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.else.105
  br label %yyerrlab

if.end.109:                                       ; preds = %if.else.105
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109
  %84 = load i32, i32* %yyn, align 4
  %cmp111 = icmp eq i32 %84, 900
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.110
  br label %yyacceptlab

if.end.114:                                       ; preds = %if.end.110
  %85 = load i32, i32* @yydebug, align 4
  %tobool115 = icmp ne i32 %85, 0
  br i1 %tobool115, label %if.then.116, label %if.end.120

if.then.116:                                      ; preds = %if.end.114
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = load i32, i32* @yychar, align 4
  %88 = load i32, i32* %yychar1, align 4
  %idxprom117 = sext i32 %88 to i64
  %arrayidx118 = getelementptr inbounds [290 x i8*], [290 x i8*]* @yytname, i32 0, i64 %idxprom117
  %89 = load i8*, i8** %arrayidx118, align 8
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i32 %87, i8* %89)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.116, %if.end.114
  %90 = load i32, i32* @yychar, align 4
  %cmp121 = icmp ne i32 %90, 0
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.end.120
  store i32 -2, i32* @yychar, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %if.end.120
  %91 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr125 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %91, i32 1
  store %union.YYSTYPE* %incdec.ptr125, %union.YYSTYPE** %yyvsp, align 8
  %92 = bitcast %union.YYSTYPE* %incdec.ptr125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* bitcast (%union.YYSTYPE* @yylval to i8*), i64 8, i32 8, i1 false)
  %93 = load i32, i32* %yyerrstatus, align 4
  %tobool126 = icmp ne i32 %93, 0
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.124
  %94 = load i32, i32* %yyerrstatus, align 4
  %dec = add nsw i32 %94, -1
  store i32 %dec, i32* %yyerrstatus, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %if.end.124
  %95 = load i32, i32* %yyn, align 4
  store i32 %95, i32* %yystate, align 4
  br label %yynewstate

yydefault:                                        ; preds = %if.then.93, %if.then.51
  %96 = load i32, i32* %yystate, align 4
  %idxprom129 = sext i32 %96 to i64
  %arrayidx130 = getelementptr inbounds [901 x i16], [901 x i16]* @yydefact, i32 0, i64 %idxprom129
  %97 = load i16, i16* %arrayidx130, align 2
  %conv131 = sext i16 %97 to i32
  store i32 %conv131, i32* %yyn, align 4
  %98 = load i32, i32* %yyn, align 4
  %cmp132 = icmp eq i32 %98, 0
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %yydefault
  br label %yyerrlab

if.end.135:                                       ; preds = %yydefault
  br label %yyreduce

yyreduce:                                         ; preds = %if.end.4816, %if.end.135, %if.end.104
  %99 = load i32, i32* %yyn, align 4
  %idxprom136 = sext i32 %99 to i64
  %arrayidx137 = getelementptr inbounds [560 x i16], [560 x i16]* @yyr2, i32 0, i64 %idxprom136
  %100 = load i16, i16* %arrayidx137, align 2
  %conv138 = sext i16 %100 to i32
  store i32 %conv138, i32* %yylen, align 4
  %101 = load i32, i32* %yylen, align 4
  %cmp139 = icmp sgt i32 %101, 0
  br i1 %cmp139, label %if.then.141, label %if.end.145

if.then.141:                                      ; preds = %yyreduce
  %102 = load i32, i32* %yylen, align 4
  %sub142 = sub nsw i32 1, %102
  %idxprom143 = sext i32 %sub142 to i64
  %103 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx144 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %103, i64 %idxprom143
  %104 = bitcast %union.YYSTYPE* %yyval to i8*
  %105 = bitcast %union.YYSTYPE* %arrayidx144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 8, i32 8, i1 false)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.141, %yyreduce
  %106 = load i32, i32* @yydebug, align 4
  %tobool146 = icmp ne i32 %106, 0
  br i1 %tobool146, label %if.then.147, label %if.end.170

if.then.147:                                      ; preds = %if.end.145
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %108 = load i32, i32* %yyn, align 4
  %109 = load i32, i32* %yyn, align 4
  %idxprom148 = sext i32 %109 to i64
  %arrayidx149 = getelementptr inbounds [560 x i16], [560 x i16]* @yyrline, i32 0, i64 %idxprom148
  %110 = load i16, i16* %arrayidx149, align 2
  %conv150 = sext i16 %110 to i32
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i32 %108, i32 %conv150)
  %111 = load i32, i32* %yyn, align 4
  %idxprom152 = sext i32 %111 to i64
  %arrayidx153 = getelementptr inbounds [560 x i16], [560 x i16]* @yyprhs, i32 0, i64 %idxprom152
  %112 = load i16, i16* %arrayidx153, align 2
  %conv154 = sext i16 %112 to i32
  store i32 %conv154, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.147
  %113 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %113 to i64
  %arrayidx156 = getelementptr inbounds [1730 x i16], [1730 x i16]* @yyrhs, i32 0, i64 %idxprom155
  %114 = load i16, i16* %arrayidx156, align 2
  %conv157 = sext i16 %114 to i32
  %cmp158 = icmp sgt i32 %conv157, 0
  br i1 %cmp158, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %116 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %116 to i64
  %arrayidx161 = getelementptr inbounds [1730 x i16], [1730 x i16]* @yyrhs, i32 0, i64 %idxprom160
  %117 = load i16, i16* %arrayidx161, align 2
  %idxprom162 = sext i16 %117 to i64
  %arrayidx163 = getelementptr inbounds [290 x i8*], [290 x i8*]* @yytname, i32 0, i64 %idxprom162
  %118 = load i8*, i8** %arrayidx163, align 8
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %118)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %119 = load i32, i32* %i, align 4
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %121 = load i32, i32* %yyn, align 4
  %idxprom165 = sext i32 %121 to i64
  %arrayidx166 = getelementptr inbounds [560 x i16], [560 x i16]* @yyr1, i32 0, i64 %idxprom165
  %122 = load i16, i16* %arrayidx166, align 2
  %idxprom167 = sext i16 %122 to i64
  %arrayidx168 = getelementptr inbounds [290 x i8*], [290 x i8*]* @yytname, i32 0, i64 %idxprom167
  %123 = load i8*, i8** %arrayidx168, align 8
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* %123)
  br label %if.end.170

if.end.170:                                       ; preds = %for.end, %if.end.145
  %124 = load i32, i32* %yyn, align 4
  switch i32 %124, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.174
    i32 3, label %sw.bb.178
    i32 5, label %sw.bb.179
    i32 9, label %sw.bb.181
    i32 10, label %sw.bb.273
    i32 11, label %sw.bb.281
    i32 12, label %sw.bb.299
    i32 13, label %sw.bb.314
    i32 14, label %sw.bb.329
    i32 17, label %sw.bb.332
    i32 18, label %sw.bb.336
    i32 19, label %sw.bb.343
    i32 20, label %sw.bb.344
    i32 21, label %sw.bb.363
    i32 22, label %sw.bb.378
    i32 23, label %sw.bb.385
    i32 24, label %sw.bb.386
    i32 25, label %sw.bb.409
    i32 26, label %sw.bb.424
    i32 27, label %sw.bb.431
    i32 28, label %sw.bb.432
    i32 29, label %sw.bb.455
    i32 32, label %sw.bb.470
    i32 33, label %sw.bb.472
    i32 34, label %sw.bb.474
    i32 35, label %sw.bb.481
    i32 36, label %sw.bb.483
    i32 37, label %sw.bb.485
    i32 38, label %sw.bb.487
    i32 39, label %sw.bb.489
    i32 40, label %sw.bb.494
    i32 42, label %sw.bb.496
    i32 43, label %sw.bb.501
    i32 45, label %sw.bb.508
    i32 46, label %sw.bb.513
    i32 47, label %sw.bb.529
    i32 48, label %sw.bb.537
    i32 49, label %sw.bb.542
    i32 50, label %sw.bb.572
    i32 51, label %sw.bb.579
    i32 52, label %sw.bb.585
    i32 53, label %sw.bb.592
    i32 54, label %sw.bb.597
    i32 55, label %sw.bb.602
    i32 56, label %sw.bb.604
    i32 58, label %sw.bb.606
    i32 60, label %sw.bb.613
    i32 61, label %sw.bb.622
    i32 62, label %sw.bb.631
    i32 63, label %sw.bb.640
    i32 64, label %sw.bb.649
    i32 65, label %sw.bb.658
    i32 66, label %sw.bb.667
    i32 67, label %sw.bb.676
    i32 68, label %sw.bb.685
    i32 69, label %sw.bb.694
    i32 70, label %sw.bb.703
    i32 71, label %sw.bb.712
    i32 72, label %sw.bb.721
    i32 73, label %sw.bb.733
    i32 74, label %sw.bb.745
    i32 75, label %sw.bb.757
    i32 76, label %sw.bb.769
    i32 77, label %sw.bb.781
    i32 78, label %sw.bb.792
    i32 79, label %sw.bb.806
    i32 80, label %sw.bb.826
    i32 81, label %sw.bb.840
    i32 82, label %sw.bb.873
    i32 83, label %sw.bb.910
    i32 85, label %sw.bb.922
    i32 86, label %sw.bb.927
    i32 87, label %sw.bb.933
    i32 88, label %sw.bb.941
    i32 89, label %sw.bb.953
    i32 90, label %sw.bb.987
    i32 91, label %sw.bb.989
    i32 92, label %sw.bb.1038
    i32 93, label %sw.bb.1051
    i32 94, label %sw.bb.1058
    i32 95, label %sw.bb.1066
    i32 96, label %sw.bb.1142
    i32 97, label %sw.bb.1161
    i32 98, label %sw.bb.1168
    i32 99, label %sw.bb.1175
    i32 100, label %sw.bb.1183
    i32 101, label %sw.bb.1188
    i32 103, label %sw.bb.1193
    i32 106, label %sw.bb.1213
    i32 107, label %sw.bb.1217
    i32 112, label %sw.bb.1218
    i32 113, label %sw.bb.1233
    i32 114, label %sw.bb.1248
    i32 115, label %sw.bb.1251
    i32 116, label %sw.bb.1252
    i32 117, label %sw.bb.1253
    i32 118, label %sw.bb.1260
    i32 119, label %sw.bb.1264
    i32 120, label %sw.bb.1279
    i32 121, label %sw.bb.1294
    i32 122, label %sw.bb.1309
    i32 123, label %sw.bb.1324
    i32 124, label %sw.bb.1327
    i32 125, label %sw.bb.1340
    i32 126, label %sw.bb.1350
    i32 127, label %sw.bb.1363
    i32 128, label %sw.bb.1376
    i32 129, label %sw.bb.1396
    i32 130, label %sw.bb.1409
    i32 131, label %sw.bb.1422
    i32 132, label %sw.bb.1432
    i32 133, label %sw.bb.1454
    i32 134, label %sw.bb.1465
    i32 135, label %sw.bb.1478
    i32 136, label %sw.bb.1491
    i32 137, label %sw.bb.1504
    i32 138, label %sw.bb.1517
    i32 139, label %sw.bb.1530
    i32 140, label %sw.bb.1543
    i32 141, label %sw.bb.1554
    i32 142, label %sw.bb.1576
    i32 143, label %sw.bb.1589
    i32 144, label %sw.bb.1602
    i32 145, label %sw.bb.1615
    i32 146, label %sw.bb.1628
    i32 147, label %sw.bb.1641
    i32 148, label %sw.bb.1654
    i32 149, label %sw.bb.1667
    i32 150, label %sw.bb.1680
    i32 151, label %sw.bb.1693
    i32 152, label %sw.bb.1706
    i32 153, label %sw.bb.1728
    i32 154, label %sw.bb.1741
    i32 155, label %sw.bb.1754
    i32 156, label %sw.bb.1767
    i32 157, label %sw.bb.1780
    i32 158, label %sw.bb.1790
    i32 159, label %sw.bb.1803
    i32 160, label %sw.bb.1816
    i32 161, label %sw.bb.1852
    i32 162, label %sw.bb.1891
    i32 163, label %sw.bb.1930
    i32 164, label %sw.bb.1969
    i32 165, label %sw.bb.1991
    i32 166, label %sw.bb.2004
    i32 167, label %sw.bb.2017
    i32 168, label %sw.bb.2056
    i32 169, label %sw.bb.2095
    i32 170, label %sw.bb.2134
    i32 171, label %sw.bb.2173
    i32 172, label %sw.bb.2195
    i32 173, label %sw.bb.2208
    i32 174, label %sw.bb.2221
    i32 175, label %sw.bb.2234
    i32 176, label %sw.bb.2247
    i32 177, label %sw.bb.2260
    i32 178, label %sw.bb.2273
    i32 179, label %sw.bb.2312
    i32 180, label %sw.bb.2351
    i32 181, label %sw.bb.2390
    i32 182, label %sw.bb.2429
    i32 183, label %sw.bb.2451
    i32 184, label %sw.bb.2464
    i32 185, label %sw.bb.2477
    i32 186, label %sw.bb.2490
    i32 187, label %sw.bb.2503
    i32 188, label %sw.bb.2516
    i32 189, label %sw.bb.2529
    i32 190, label %sw.bb.2542
    i32 191, label %sw.bb.2555
    i32 192, label %sw.bb.2568
    i32 193, label %sw.bb.2581
    i32 194, label %sw.bb.2620
    i32 195, label %sw.bb.2659
    i32 196, label %sw.bb.2698
    i32 197, label %sw.bb.2737
    i32 198, label %sw.bb.2759
    i32 199, label %sw.bb.2772
    i32 200, label %sw.bb.2785
    i32 201, label %sw.bb.2798
    i32 258, label %sw.bb.2811
    i32 259, label %sw.bb.2813
    i32 263, label %sw.bb.2817
    i32 266, label %sw.bb.2818
    i32 267, label %sw.bb.2823
    i32 268, label %sw.bb.2829
    i32 273, label %sw.bb.2834
    i32 274, label %sw.bb.2836
    i32 275, label %sw.bb.2852
    i32 276, label %sw.bb.2864
    i32 277, label %sw.bb.2871
    i32 278, label %sw.bb.2880
    i32 279, label %sw.bb.2892
    i32 280, label %sw.bb.2899
    i32 281, label %sw.bb.2909
    i32 282, label %sw.bb.2911
    i32 283, label %sw.bb.2915
    i32 284, label %sw.bb.2919
    i32 285, label %sw.bb.2926
    i32 286, label %sw.bb.2930
    i32 287, label %sw.bb.2934
    i32 288, label %sw.bb.2941
    i32 289, label %sw.bb.2943
    i32 290, label %sw.bb.2948
    i32 291, label %sw.bb.2956
    i32 292, label %sw.bb.2966
    i32 298, label %sw.bb.2973
    i32 299, label %sw.bb.2974
    i32 300, label %sw.bb.2977
    i32 301, label %sw.bb.2979
    i32 305, label %sw.bb.2983
    i32 306, label %sw.bb.2989
    i32 307, label %sw.bb.2993
    i32 310, label %sw.bb.2999
    i32 311, label %sw.bb.3000
    i32 312, label %sw.bb.3002
    i32 316, label %sw.bb.3005
    i32 317, label %sw.bb.3008
    i32 318, label %sw.bb.3016
    i32 319, label %sw.bb.3019
    i32 320, label %sw.bb.3029
    i32 321, label %sw.bb.3030
    i32 322, label %sw.bb.3040
    i32 323, label %sw.bb.3050
    i32 324, label %sw.bb.3051
    i32 327, label %sw.bb.3061
    i32 328, label %sw.bb.3077
    i32 329, label %sw.bb.3084
    i32 330, label %sw.bb.3091
    i32 334, label %sw.bb.3098
    i32 335, label %sw.bb.3105
    i32 337, label %sw.bb.3112
    i32 338, label %sw.bb.3119
    i32 339, label %sw.bb.3126
    i32 340, label %sw.bb.3133
    i32 341, label %sw.bb.3140
    i32 342, label %sw.bb.3156
    i32 343, label %sw.bb.3163
    i32 344, label %sw.bb.3179
    i32 345, label %sw.bb.3186
    i32 347, label %sw.bb.3193
    i32 348, label %sw.bb.3195
    i32 349, label %sw.bb.3199
    i32 350, label %sw.bb.3201
    i32 351, label %sw.bb.3205
    i32 352, label %sw.bb.3207
    i32 353, label %sw.bb.3211
    i32 354, label %sw.bb.3216
    i32 355, label %sw.bb.3228
    i32 356, label %sw.bb.3239
    i32 357, label %sw.bb.3244
    i32 358, label %sw.bb.3256
    i32 359, label %sw.bb.3267
    i32 360, label %sw.bb.3272
    i32 361, label %sw.bb.3285
    i32 362, label %sw.bb.3288
    i32 363, label %sw.bb.3301
    i32 364, label %sw.bb.3306
    i32 365, label %sw.bb.3311
    i32 369, label %sw.bb.3325
    i32 370, label %sw.bb.3331
    i32 371, label %sw.bb.3335
    i32 372, label %sw.bb.3342
    i32 373, label %sw.bb.3344
    i32 374, label %sw.bb.3351
    i32 375, label %sw.bb.3355
    i32 376, label %sw.bb.3373
    i32 377, label %sw.bb.3397
    i32 378, label %sw.bb.3415
    i32 379, label %sw.bb.3422
    i32 380, label %sw.bb.3424
    i32 382, label %sw.bb.3440
    i32 384, label %sw.bb.3447
    i32 385, label %sw.bb.3454
    i32 386, label %sw.bb.3468
    i32 387, label %sw.bb.3484
    i32 388, label %sw.bb.3498
    i32 389, label %sw.bb.3512
    i32 390, label %sw.bb.3528
    i32 392, label %sw.bb.3542
    i32 393, label %sw.bb.3559
    i32 394, label %sw.bb.3561
    i32 395, label %sw.bb.3566
    i32 396, label %sw.bb.3573
    i32 397, label %sw.bb.3577
    i32 398, label %sw.bb.3584
    i32 400, label %sw.bb.3586
    i32 401, label %sw.bb.3590
    i32 402, label %sw.bb.3596
    i32 406, label %sw.bb.3605
    i32 407, label %sw.bb.3612
    i32 408, label %sw.bb.3617
    i32 409, label %sw.bb.3624
    i32 410, label %sw.bb.3640
    i32 411, label %sw.bb.3647
    i32 412, label %sw.bb.3654
    i32 413, label %sw.bb.3659
    i32 414, label %sw.bb.3664
    i32 415, label %sw.bb.3669
    i32 416, label %sw.bb.3676
    i32 417, label %sw.bb.3679
    i32 418, label %sw.bb.3684
    i32 419, label %sw.bb.3687
    i32 420, label %sw.bb.3692
    i32 421, label %sw.bb.3706
    i32 422, label %sw.bb.3722
    i32 425, label %sw.bb.3738
    i32 433, label %sw.bb.3739
    i32 448, label %sw.bb.3745
    i32 449, label %sw.bb.3747
    i32 450, label %sw.bb.3750
    i32 451, label %sw.bb.3759
    i32 453, label %sw.bb.3780
    i32 456, label %sw.bb.3784
    i32 457, label %sw.bb.3801
    i32 459, label %sw.bb.3802
    i32 460, label %sw.bb.3806
    i32 461, label %sw.bb.3809
    i32 464, label %sw.bb.3828
    i32 465, label %sw.bb.3839
    i32 466, label %sw.bb.3864
    i32 468, label %sw.bb.3865
    i32 469, label %sw.bb.3868
    i32 470, label %sw.bb.3879
    i32 471, label %sw.bb.3889
    i32 472, label %sw.bb.3908
    i32 473, label %sw.bb.3915
    i32 476, label %sw.bb.3922
    i32 477, label %sw.bb.3945
    i32 478, label %sw.bb.3957
    i32 479, label %sw.bb.3969
    i32 480, label %sw.bb.3973
    i32 481, label %sw.bb.3983
    i32 482, label %sw.bb.3994
    i32 483, label %sw.bb.3995
    i32 484, label %sw.bb.3999
    i32 485, label %sw.bb.4014
    i32 486, label %sw.bb.4034
    i32 487, label %sw.bb.4043
    i32 488, label %sw.bb.4044
    i32 489, label %sw.bb.4049
    i32 490, label %sw.bb.4070
    i32 491, label %sw.bb.4084
    i32 492, label %sw.bb.4092
    i32 493, label %sw.bb.4112
    i32 494, label %sw.bb.4118
    i32 495, label %sw.bb.4119
    i32 496, label %sw.bb.4124
    i32 497, label %sw.bb.4125
    i32 498, label %sw.bb.4130
    i32 499, label %sw.bb.4136
    i32 500, label %sw.bb.4160
    i32 501, label %sw.bb.4165
    i32 502, label %sw.bb.4170
    i32 503, label %sw.bb.4174
    i32 504, label %sw.bb.4180
    i32 505, label %sw.bb.4186
    i32 506, label %sw.bb.4196
    i32 507, label %sw.bb.4208
    i32 508, label %sw.bb.4222
    i32 509, label %sw.bb.4241
    i32 510, label %sw.bb.4256
    i32 511, label %sw.bb.4258
    i32 512, label %sw.bb.4264
    i32 513, label %sw.bb.4272
    i32 514, label %sw.bb.4276
    i32 515, label %sw.bb.4297
    i32 516, label %sw.bb.4300
    i32 517, label %sw.bb.4302
    i32 519, label %sw.bb.4304
    i32 522, label %sw.bb.4306
    i32 523, label %sw.bb.4313
    i32 524, label %sw.bb.4321
    i32 525, label %sw.bb.4331
    i32 526, label %sw.bb.4337
    i32 527, label %sw.bb.4345
    i32 528, label %sw.bb.4346
    i32 530, label %sw.bb.4351
    i32 531, label %sw.bb.4367
    i32 532, label %sw.bb.4368
    i32 533, label %sw.bb.4372
    i32 534, label %sw.bb.4375
    i32 535, label %sw.bb.4378
    i32 536, label %sw.bb.4381
    i32 537, label %sw.bb.4384
    i32 538, label %sw.bb.4387
    i32 539, label %sw.bb.4390
    i32 540, label %sw.bb.4393
    i32 541, label %sw.bb.4416
    i32 542, label %sw.bb.4439
    i32 543, label %sw.bb.4457
    i32 544, label %sw.bb.4480
    i32 545, label %sw.bb.4498
    i32 546, label %sw.bb.4521
    i32 547, label %sw.bb.4544
    i32 548, label %sw.bb.4562
    i32 549, label %sw.bb.4585
    i32 550, label %sw.bb.4603
    i32 551, label %sw.bb.4607
    i32 552, label %sw.bb.4608
    i32 554, label %sw.bb.4613
    i32 555, label %sw.bb.4663
    i32 556, label %sw.bb.4668
    i32 557, label %sw.bb.4676
    i32 558, label %sw.bb.4681
    i32 559, label %sw.bb.4689
  ]

sw.bb:                                            ; preds = %if.end.170
  %125 = load i32, i32* @pedantic, align 4
  %tobool171 = icmp ne i32 %125, 0
  br i1 %tobool171, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %sw.bb
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %sw.bb
  call void @finish_file()
  br label %sw.epilog

sw.bb.174:                                        ; preds = %if.end.170
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb.174
  %call175 = call i32 @global_bindings_p()
  %tobool176 = icmp ne i32 %call175, 0
  %lnot = xor i1 %tobool176, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call177 = call %union.tree_node* @poplevel(i32 0, i32 0, i32 0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @finish_fname_decls()
  call void @finish_file()
  br label %sw.epilog

sw.bb.178:                                        ; preds = %if.end.170
  %ttype = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype, align 8
  br label %sw.epilog

sw.bb.179:                                        ; preds = %if.end.170
  %ttype180 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype180, align 8
  call void @ggc_collect()
  br label %sw.epilog

sw.bb.181:                                        ; preds = %if.end.170
  br label %while.cond.182

while.cond.182:                                   ; preds = %while.body.230, %sw.bb.181
  %126 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx183 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %126, i64 -2
  %ttype184 = bitcast %union.YYSTYPE* %arrayidx183 to %union.tree_node**
  %127 = load %union.tree_node*, %union.tree_node** %ttype184, align 8
  %common = bitcast %union.tree_node* %127 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp185 = icmp eq i32 %bf.clear, 115
  br i1 %cmp185, label %land.lhs.true, label %lor.lhs.false.187

lor.lhs.false.187:                                ; preds = %while.cond.182
  %128 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx188 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %128, i64 -2
  %ttype189 = bitcast %union.YYSTYPE* %arrayidx188 to %union.tree_node**
  %129 = load %union.tree_node*, %union.tree_node** %ttype189, align 8
  %common190 = bitcast %union.tree_node* %129 to %struct.tree_common*
  %code191 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common190, i32 0, i32 2
  %bf.load192 = load i32, i32* %code191, align 8
  %bf.clear193 = and i32 %bf.load192, 255
  %cmp194 = icmp eq i32 %bf.clear193, 114
  br i1 %cmp194, label %land.lhs.true, label %lor.lhs.false.196

lor.lhs.false.196:                                ; preds = %lor.lhs.false.187
  %130 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx197 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %130, i64 -2
  %ttype198 = bitcast %union.YYSTYPE* %arrayidx197 to %union.tree_node**
  %131 = load %union.tree_node*, %union.tree_node** %ttype198, align 8
  %common199 = bitcast %union.tree_node* %131 to %struct.tree_common*
  %code200 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common199, i32 0, i32 2
  %bf.load201 = load i32, i32* %code200, align 8
  %bf.clear202 = and i32 %bf.load201, 255
  %cmp203 = icmp eq i32 %bf.clear202, 116
  br i1 %cmp203, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.196, %lor.lhs.false.187, %while.cond.182
  %132 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx205 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %132, i64 -2
  %ttype206 = bitcast %union.YYSTYPE* %arrayidx205 to %union.tree_node**
  %133 = load %union.tree_node*, %union.tree_node** %ttype206, align 8
  %exp = bitcast %union.tree_node* %133 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx207 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %134 = load %union.tree_node*, %union.tree_node** %arrayidx207, align 8
  %135 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp208 = icmp ne %union.tree_node* %134, %135
  br i1 %cmp208, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %136 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx210 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %136, i64 -2
  %ttype211 = bitcast %union.YYSTYPE* %arrayidx210 to %union.tree_node**
  %137 = load %union.tree_node*, %union.tree_node** %ttype211, align 8
  %common212 = bitcast %union.tree_node* %137 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common212, i32 0, i32 1
  %138 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type213 = bitcast %union.tree_node* %138 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type213, i32 0, i32 6
  %bf.load214 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load214, 9
  %bf.clear215 = and i32 %bf.lshr, 127
  %139 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx216 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %139, i64 -2
  %ttype217 = bitcast %union.YYSTYPE* %arrayidx216 to %union.tree_node**
  %140 = load %union.tree_node*, %union.tree_node** %ttype217, align 8
  %exp218 = bitcast %union.tree_node* %140 to %struct.tree_exp*
  %operands219 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp218, i32 0, i32 2
  %arrayidx220 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands219, i32 0, i64 0
  %141 = load %union.tree_node*, %union.tree_node** %arrayidx220, align 8
  %common221 = bitcast %union.tree_node* %141 to %struct.tree_common*
  %type222 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common221, i32 0, i32 1
  %142 = load %union.tree_node*, %union.tree_node** %type222, align 8
  %type223 = bitcast %union.tree_node* %142 to %struct.tree_type*
  %mode224 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type223, i32 0, i32 6
  %bf.load225 = load i32, i32* %mode224, align 4
  %bf.lshr226 = lshr i32 %bf.load225, 9
  %bf.clear227 = and i32 %bf.lshr226, 127
  %cmp228 = icmp eq i32 %bf.clear215, %bf.clear227
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.196
  %143 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.196 ], [ %cmp228, %land.rhs ]
  br i1 %143, label %while.body.230, label %while.end.238

while.body.230:                                   ; preds = %land.end
  %144 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx231 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %144, i64 -2
  %ttype232 = bitcast %union.YYSTYPE* %arrayidx231 to %union.tree_node**
  %145 = load %union.tree_node*, %union.tree_node** %ttype232, align 8
  %exp233 = bitcast %union.tree_node* %145 to %struct.tree_exp*
  %operands234 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp233, i32 0, i32 2
  %arrayidx235 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands234, i32 0, i64 0
  %146 = load %union.tree_node*, %union.tree_node** %arrayidx235, align 8
  %147 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx236 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %147, i64 -2
  %ttype237 = bitcast %union.YYSTYPE* %arrayidx236 to %union.tree_node**
  store %union.tree_node* %146, %union.tree_node** %ttype237, align 8
  br label %while.cond.182

while.end.238:                                    ; preds = %land.end
  %148 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx239 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %148, i64 -2
  %ttype240 = bitcast %union.YYSTYPE* %arrayidx239 to %union.tree_node**
  %149 = load %union.tree_node*, %union.tree_node** %ttype240, align 8
  %common241 = bitcast %union.tree_node* %149 to %struct.tree_common*
  %code242 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common241, i32 0, i32 2
  %bf.load243 = load i32, i32* %code242, align 8
  %bf.clear244 = and i32 %bf.load243, 255
  %cmp245 = icmp eq i32 %bf.clear244, 121
  br i1 %cmp245, label %land.lhs.true.247, label %lor.lhs.false.259

land.lhs.true.247:                                ; preds = %while.end.238
  %150 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx248 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %150, i64 -2
  %ttype249 = bitcast %union.YYSTYPE* %arrayidx248 to %union.tree_node**
  %151 = load %union.tree_node*, %union.tree_node** %ttype249, align 8
  %exp250 = bitcast %union.tree_node* %151 to %struct.tree_exp*
  %operands251 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp250, i32 0, i32 2
  %arrayidx252 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands251, i32 0, i64 0
  %152 = load %union.tree_node*, %union.tree_node** %arrayidx252, align 8
  %common253 = bitcast %union.tree_node* %152 to %struct.tree_common*
  %code254 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common253, i32 0, i32 2
  %bf.load255 = load i32, i32* %code254, align 8
  %bf.clear256 = and i32 %bf.load255, 255
  %cmp257 = icmp eq i32 %bf.clear256, 29
  br i1 %cmp257, label %if.then.268, label %lor.lhs.false.259

lor.lhs.false.259:                                ; preds = %land.lhs.true.247, %while.end.238
  %153 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx260 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %153, i64 -2
  %ttype261 = bitcast %union.YYSTYPE* %arrayidx260 to %union.tree_node**
  %154 = load %union.tree_node*, %union.tree_node** %ttype261, align 8
  %common262 = bitcast %union.tree_node* %154 to %struct.tree_common*
  %code263 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common262, i32 0, i32 2
  %bf.load264 = load i32, i32* %code263, align 8
  %bf.clear265 = and i32 %bf.load264, 255
  %cmp266 = icmp eq i32 %bf.clear265, 29
  br i1 %cmp266, label %if.then.268, label %if.else.271

if.then.268:                                      ; preds = %lor.lhs.false.259, %land.lhs.true.247
  %155 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx269 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %155, i64 -2
  %ttype270 = bitcast %union.YYSTYPE* %arrayidx269 to %union.tree_node**
  %156 = load %union.tree_node*, %union.tree_node** %ttype270, align 8
  call void @assemble_asm(%union.tree_node* %156)
  br label %if.end.272

if.else.271:                                      ; preds = %lor.lhs.false.259
  call void (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.272

if.end.272:                                       ; preds = %if.else.271, %if.then.268
  br label %sw.epilog

sw.bb.273:                                        ; preds = %if.end.170
  br label %do.body

do.body:                                          ; preds = %sw.bb.273
  %157 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx274 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %157, i64 -1
  %ttype275 = bitcast %union.YYSTYPE* %arrayidx274 to %union.tree_node**
  %158 = load %union.tree_node*, %union.tree_node** %ttype275, align 8
  %call276 = call i64 @tree_low_cst(%union.tree_node* %158, i32 0)
  %conv277 = trunc i64 %call276 to i32
  store i32 %conv277, i32* %val, align 4
  %159 = load i32, i32* %val, align 4
  %and = and i32 %159, 1
  store i32 %and, i32* @pedantic, align 4
  %160 = load i32, i32* %val, align 4
  %shr = ashr i32 %160, 1
  %and278 = and i32 %shr, 1
  store i32 %and278, i32* @warn_pointer_arith, align 4
  %161 = load i32, i32* %val, align 4
  %shr279 = ashr i32 %161, 2
  %and280 = and i32 %shr279, 1
  store i32 %and280, i32* @warn_traditional, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.bb.281:                                        ; preds = %if.end.170
  %162 = load i32, i32* @pedantic, align 4
  %tobool282 = icmp ne i32 %162, 0
  br i1 %tobool282, label %if.then.283, label %if.else.284

if.then.283:                                      ; preds = %sw.bb.281
  call void (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.288

if.else.284:                                      ; preds = %sw.bb.281
  %163 = load i32, i32* @flag_traditional, align 4
  %tobool285 = icmp ne i32 %163, 0
  br i1 %tobool285, label %if.end.287, label %if.then.286

if.then.286:                                      ; preds = %if.else.284
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.286, %if.else.284
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.then.283
  br label %do.body.289

do.body.289:                                      ; preds = %if.end.288
  %164 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list = bitcast %union.tree_node* %164 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %165 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %165, %union.tree_node** @current_declspecs, align 8
  %166 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list290 = bitcast %union.tree_node* %166 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list290, i32 0, i32 1
  %167 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %list291 = bitcast %union.tree_node* %167 to %struct.tree_list*
  %purpose292 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list291, i32 0, i32 1
  %168 = load %union.tree_node*, %union.tree_node** %purpose292, align 8
  store %union.tree_node* %168, %union.tree_node** @prefix_attributes, align 8
  %169 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list293 = bitcast %union.tree_node* %169 to %struct.tree_list*
  %purpose294 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list293, i32 0, i32 1
  %170 = load %union.tree_node*, %union.tree_node** %purpose294, align 8
  %list295 = bitcast %union.tree_node* %170 to %struct.tree_list*
  %value296 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list295, i32 0, i32 2
  %171 = load %union.tree_node*, %union.tree_node** %value296, align 8
  store %union.tree_node* %171, %union.tree_node** @all_prefix_attributes, align 8
  %172 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common297 = bitcast %union.tree_node* %172 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common297, i32 0, i32 0
  %173 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %173, %union.tree_node** @declspec_stack, align 8
  br label %do.end.298

do.end.298:                                       ; preds = %do.body.289
  br label %sw.epilog

sw.bb.299:                                        ; preds = %if.end.170
  br label %do.body.300

do.body.300:                                      ; preds = %sw.bb.299
  %174 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list301 = bitcast %union.tree_node* %174 to %struct.tree_list*
  %value302 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list301, i32 0, i32 2
  %175 = load %union.tree_node*, %union.tree_node** %value302, align 8
  store %union.tree_node* %175, %union.tree_node** @current_declspecs, align 8
  %176 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list303 = bitcast %union.tree_node* %176 to %struct.tree_list*
  %purpose304 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list303, i32 0, i32 1
  %177 = load %union.tree_node*, %union.tree_node** %purpose304, align 8
  %list305 = bitcast %union.tree_node* %177 to %struct.tree_list*
  %purpose306 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list305, i32 0, i32 1
  %178 = load %union.tree_node*, %union.tree_node** %purpose306, align 8
  store %union.tree_node* %178, %union.tree_node** @prefix_attributes, align 8
  %179 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list307 = bitcast %union.tree_node* %179 to %struct.tree_list*
  %purpose308 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list307, i32 0, i32 1
  %180 = load %union.tree_node*, %union.tree_node** %purpose308, align 8
  %list309 = bitcast %union.tree_node* %180 to %struct.tree_list*
  %value310 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list309, i32 0, i32 2
  %181 = load %union.tree_node*, %union.tree_node** %value310, align 8
  store %union.tree_node* %181, %union.tree_node** @all_prefix_attributes, align 8
  %182 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common311 = bitcast %union.tree_node* %182 to %struct.tree_common*
  %chain312 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common311, i32 0, i32 0
  %183 = load %union.tree_node*, %union.tree_node** %chain312, align 8
  store %union.tree_node* %183, %union.tree_node** @declspec_stack, align 8
  br label %do.end.313

do.end.313:                                       ; preds = %do.body.300
  br label %sw.epilog

sw.bb.314:                                        ; preds = %if.end.170
  br label %do.body.315

do.body.315:                                      ; preds = %sw.bb.314
  %184 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list316 = bitcast %union.tree_node* %184 to %struct.tree_list*
  %value317 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list316, i32 0, i32 2
  %185 = load %union.tree_node*, %union.tree_node** %value317, align 8
  store %union.tree_node* %185, %union.tree_node** @current_declspecs, align 8
  %186 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list318 = bitcast %union.tree_node* %186 to %struct.tree_list*
  %purpose319 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list318, i32 0, i32 1
  %187 = load %union.tree_node*, %union.tree_node** %purpose319, align 8
  %list320 = bitcast %union.tree_node* %187 to %struct.tree_list*
  %purpose321 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list320, i32 0, i32 1
  %188 = load %union.tree_node*, %union.tree_node** %purpose321, align 8
  store %union.tree_node* %188, %union.tree_node** @prefix_attributes, align 8
  %189 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list322 = bitcast %union.tree_node* %189 to %struct.tree_list*
  %purpose323 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list322, i32 0, i32 1
  %190 = load %union.tree_node*, %union.tree_node** %purpose323, align 8
  %list324 = bitcast %union.tree_node* %190 to %struct.tree_list*
  %value325 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list324, i32 0, i32 2
  %191 = load %union.tree_node*, %union.tree_node** %value325, align 8
  store %union.tree_node* %191, %union.tree_node** @all_prefix_attributes, align 8
  %192 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common326 = bitcast %union.tree_node* %192 to %struct.tree_common*
  %chain327 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common326, i32 0, i32 0
  %193 = load %union.tree_node*, %union.tree_node** %chain327, align 8
  store %union.tree_node* %193, %union.tree_node** @declspec_stack, align 8
  br label %do.end.328

do.end.328:                                       ; preds = %do.body.315
  br label %sw.epilog

sw.bb.329:                                        ; preds = %if.end.170
  %194 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx330 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %194, i64 -1
  %ttype331 = bitcast %union.YYSTYPE* %arrayidx330 to %union.tree_node**
  %195 = load %union.tree_node*, %union.tree_node** %ttype331, align 8
  call void @shadow_tag(%union.tree_node* %195)
  br label %sw.epilog

sw.bb.332:                                        ; preds = %if.end.170
  %196 = load i32, i32* @pedantic, align 4
  %tobool333 = icmp ne i32 %196, 0
  br i1 %tobool333, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %sw.bb.332
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.334, %sw.bb.332
  br label %sw.epilog

sw.bb.336:                                        ; preds = %if.end.170
  %197 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %198 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx337 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %198, i64 0
  %ttype338 = bitcast %union.YYSTYPE* %arrayidx337 to %union.tree_node**
  %199 = load %union.tree_node*, %union.tree_node** %ttype338, align 8
  %200 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call339 = call i32 @start_function(%union.tree_node* %197, %union.tree_node* %199, %union.tree_node* %200)
  %tobool340 = icmp ne i32 %call339, 0
  br i1 %tobool340, label %if.end.342, label %if.then.341

if.then.341:                                      ; preds = %sw.bb.336
  call void @yyerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  br label %yyerrlab1

if.end.342:                                       ; preds = %sw.bb.336
  br label %sw.epilog

sw.bb.343:                                        ; preds = %if.end.170
  call void @store_parm_decls()
  br label %sw.epilog

sw.bb.344:                                        ; preds = %if.end.170
  %201 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx345 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %201, i64 -2
  %filename = bitcast %union.YYSTYPE* %arrayidx345 to i8**
  %202 = load i8*, i8** %filename, align 8
  %203 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl = bitcast %union.tree_node* %203 to %struct.tree_decl*
  %filename346 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 1
  store i8* %202, i8** %filename346, align 8
  %204 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx347 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %204, i64 -1
  %lineno = bitcast %union.YYSTYPE* %arrayidx347 to i32*
  %205 = load i32, i32* %lineno, align 4
  %206 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl348 = bitcast %union.tree_node* %206 to %struct.tree_decl*
  %linenum = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl348, i32 0, i32 2
  store i32 %205, i32* %linenum, align 4
  call void @finish_function(i32 0, i32 1)
  br label %do.body.349

do.body.349:                                      ; preds = %sw.bb.344
  %207 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list350 = bitcast %union.tree_node* %207 to %struct.tree_list*
  %value351 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list350, i32 0, i32 2
  %208 = load %union.tree_node*, %union.tree_node** %value351, align 8
  store %union.tree_node* %208, %union.tree_node** @current_declspecs, align 8
  %209 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list352 = bitcast %union.tree_node* %209 to %struct.tree_list*
  %purpose353 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list352, i32 0, i32 1
  %210 = load %union.tree_node*, %union.tree_node** %purpose353, align 8
  %list354 = bitcast %union.tree_node* %210 to %struct.tree_list*
  %purpose355 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list354, i32 0, i32 1
  %211 = load %union.tree_node*, %union.tree_node** %purpose355, align 8
  store %union.tree_node* %211, %union.tree_node** @prefix_attributes, align 8
  %212 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list356 = bitcast %union.tree_node* %212 to %struct.tree_list*
  %purpose357 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list356, i32 0, i32 1
  %213 = load %union.tree_node*, %union.tree_node** %purpose357, align 8
  %list358 = bitcast %union.tree_node* %213 to %struct.tree_list*
  %value359 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list358, i32 0, i32 2
  %214 = load %union.tree_node*, %union.tree_node** %value359, align 8
  store %union.tree_node* %214, %union.tree_node** @all_prefix_attributes, align 8
  %215 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common360 = bitcast %union.tree_node* %215 to %struct.tree_common*
  %chain361 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common360, i32 0, i32 0
  %216 = load %union.tree_node*, %union.tree_node** %chain361, align 8
  store %union.tree_node* %216, %union.tree_node** @declspec_stack, align 8
  br label %do.end.362

do.end.362:                                       ; preds = %do.body.349
  br label %sw.epilog

sw.bb.363:                                        ; preds = %if.end.170
  br label %do.body.364

do.body.364:                                      ; preds = %sw.bb.363
  %217 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list365 = bitcast %union.tree_node* %217 to %struct.tree_list*
  %value366 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list365, i32 0, i32 2
  %218 = load %union.tree_node*, %union.tree_node** %value366, align 8
  store %union.tree_node* %218, %union.tree_node** @current_declspecs, align 8
  %219 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list367 = bitcast %union.tree_node* %219 to %struct.tree_list*
  %purpose368 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list367, i32 0, i32 1
  %220 = load %union.tree_node*, %union.tree_node** %purpose368, align 8
  %list369 = bitcast %union.tree_node* %220 to %struct.tree_list*
  %purpose370 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list369, i32 0, i32 1
  %221 = load %union.tree_node*, %union.tree_node** %purpose370, align 8
  store %union.tree_node* %221, %union.tree_node** @prefix_attributes, align 8
  %222 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list371 = bitcast %union.tree_node* %222 to %struct.tree_list*
  %purpose372 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list371, i32 0, i32 1
  %223 = load %union.tree_node*, %union.tree_node** %purpose372, align 8
  %list373 = bitcast %union.tree_node* %223 to %struct.tree_list*
  %value374 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list373, i32 0, i32 2
  %224 = load %union.tree_node*, %union.tree_node** %value374, align 8
  store %union.tree_node* %224, %union.tree_node** @all_prefix_attributes, align 8
  %225 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common375 = bitcast %union.tree_node* %225 to %struct.tree_common*
  %chain376 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common375, i32 0, i32 0
  %226 = load %union.tree_node*, %union.tree_node** %chain376, align 8
  store %union.tree_node* %226, %union.tree_node** @declspec_stack, align 8
  br label %do.end.377

do.end.377:                                       ; preds = %do.body.364
  br label %sw.epilog

sw.bb.378:                                        ; preds = %if.end.170
  %227 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %228 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx379 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %228, i64 0
  %ttype380 = bitcast %union.YYSTYPE* %arrayidx379 to %union.tree_node**
  %229 = load %union.tree_node*, %union.tree_node** %ttype380, align 8
  %230 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call381 = call i32 @start_function(%union.tree_node* %227, %union.tree_node* %229, %union.tree_node* %230)
  %tobool382 = icmp ne i32 %call381, 0
  br i1 %tobool382, label %if.end.384, label %if.then.383

if.then.383:                                      ; preds = %sw.bb.378
  call void @yyerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  br label %yyerrlab1

if.end.384:                                       ; preds = %sw.bb.378
  br label %sw.epilog

sw.bb.385:                                        ; preds = %if.end.170
  call void @store_parm_decls()
  br label %sw.epilog

sw.bb.386:                                        ; preds = %if.end.170
  %231 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx387 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %231, i64 -2
  %filename388 = bitcast %union.YYSTYPE* %arrayidx387 to i8**
  %232 = load i8*, i8** %filename388, align 8
  %233 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl389 = bitcast %union.tree_node* %233 to %struct.tree_decl*
  %filename390 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl389, i32 0, i32 1
  store i8* %232, i8** %filename390, align 8
  %234 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx391 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %234, i64 -1
  %lineno392 = bitcast %union.YYSTYPE* %arrayidx391 to i32*
  %235 = load i32, i32* %lineno392, align 4
  %236 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl393 = bitcast %union.tree_node* %236 to %struct.tree_decl*
  %linenum394 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl393, i32 0, i32 2
  store i32 %235, i32* %linenum394, align 4
  call void @finish_function(i32 0, i32 1)
  br label %do.body.395

do.body.395:                                      ; preds = %sw.bb.386
  %237 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list396 = bitcast %union.tree_node* %237 to %struct.tree_list*
  %value397 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list396, i32 0, i32 2
  %238 = load %union.tree_node*, %union.tree_node** %value397, align 8
  store %union.tree_node* %238, %union.tree_node** @current_declspecs, align 8
  %239 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list398 = bitcast %union.tree_node* %239 to %struct.tree_list*
  %purpose399 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list398, i32 0, i32 1
  %240 = load %union.tree_node*, %union.tree_node** %purpose399, align 8
  %list400 = bitcast %union.tree_node* %240 to %struct.tree_list*
  %purpose401 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list400, i32 0, i32 1
  %241 = load %union.tree_node*, %union.tree_node** %purpose401, align 8
  store %union.tree_node* %241, %union.tree_node** @prefix_attributes, align 8
  %242 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list402 = bitcast %union.tree_node* %242 to %struct.tree_list*
  %purpose403 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list402, i32 0, i32 1
  %243 = load %union.tree_node*, %union.tree_node** %purpose403, align 8
  %list404 = bitcast %union.tree_node* %243 to %struct.tree_list*
  %value405 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list404, i32 0, i32 2
  %244 = load %union.tree_node*, %union.tree_node** %value405, align 8
  store %union.tree_node* %244, %union.tree_node** @all_prefix_attributes, align 8
  %245 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common406 = bitcast %union.tree_node* %245 to %struct.tree_common*
  %chain407 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common406, i32 0, i32 0
  %246 = load %union.tree_node*, %union.tree_node** %chain407, align 8
  store %union.tree_node* %246, %union.tree_node** @declspec_stack, align 8
  br label %do.end.408

do.end.408:                                       ; preds = %do.body.395
  br label %sw.epilog

sw.bb.409:                                        ; preds = %if.end.170
  br label %do.body.410

do.body.410:                                      ; preds = %sw.bb.409
  %247 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list411 = bitcast %union.tree_node* %247 to %struct.tree_list*
  %value412 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list411, i32 0, i32 2
  %248 = load %union.tree_node*, %union.tree_node** %value412, align 8
  store %union.tree_node* %248, %union.tree_node** @current_declspecs, align 8
  %249 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list413 = bitcast %union.tree_node* %249 to %struct.tree_list*
  %purpose414 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list413, i32 0, i32 1
  %250 = load %union.tree_node*, %union.tree_node** %purpose414, align 8
  %list415 = bitcast %union.tree_node* %250 to %struct.tree_list*
  %purpose416 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list415, i32 0, i32 1
  %251 = load %union.tree_node*, %union.tree_node** %purpose416, align 8
  store %union.tree_node* %251, %union.tree_node** @prefix_attributes, align 8
  %252 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list417 = bitcast %union.tree_node* %252 to %struct.tree_list*
  %purpose418 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list417, i32 0, i32 1
  %253 = load %union.tree_node*, %union.tree_node** %purpose418, align 8
  %list419 = bitcast %union.tree_node* %253 to %struct.tree_list*
  %value420 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list419, i32 0, i32 2
  %254 = load %union.tree_node*, %union.tree_node** %value420, align 8
  store %union.tree_node* %254, %union.tree_node** @all_prefix_attributes, align 8
  %255 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common421 = bitcast %union.tree_node* %255 to %struct.tree_common*
  %chain422 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common421, i32 0, i32 0
  %256 = load %union.tree_node*, %union.tree_node** %chain422, align 8
  store %union.tree_node* %256, %union.tree_node** @declspec_stack, align 8
  br label %do.end.423

do.end.423:                                       ; preds = %do.body.410
  br label %sw.epilog

sw.bb.424:                                        ; preds = %if.end.170
  %257 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx425 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %257, i64 0
  %ttype426 = bitcast %union.YYSTYPE* %arrayidx425 to %union.tree_node**
  %258 = load %union.tree_node*, %union.tree_node** %ttype426, align 8
  %259 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call427 = call i32 @start_function(%union.tree_node* null, %union.tree_node* %258, %union.tree_node* %259)
  %tobool428 = icmp ne i32 %call427, 0
  br i1 %tobool428, label %if.end.430, label %if.then.429

if.then.429:                                      ; preds = %sw.bb.424
  call void @yyerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  br label %yyerrlab1

if.end.430:                                       ; preds = %sw.bb.424
  br label %sw.epilog

sw.bb.431:                                        ; preds = %if.end.170
  call void @store_parm_decls()
  br label %sw.epilog

sw.bb.432:                                        ; preds = %if.end.170
  %260 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx433 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %260, i64 -2
  %filename434 = bitcast %union.YYSTYPE* %arrayidx433 to i8**
  %261 = load i8*, i8** %filename434, align 8
  %262 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl435 = bitcast %union.tree_node* %262 to %struct.tree_decl*
  %filename436 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl435, i32 0, i32 1
  store i8* %261, i8** %filename436, align 8
  %263 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx437 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %263, i64 -1
  %lineno438 = bitcast %union.YYSTYPE* %arrayidx437 to i32*
  %264 = load i32, i32* %lineno438, align 4
  %265 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl439 = bitcast %union.tree_node* %265 to %struct.tree_decl*
  %linenum440 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl439, i32 0, i32 2
  store i32 %264, i32* %linenum440, align 4
  call void @finish_function(i32 0, i32 1)
  br label %do.body.441

do.body.441:                                      ; preds = %sw.bb.432
  %266 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list442 = bitcast %union.tree_node* %266 to %struct.tree_list*
  %value443 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list442, i32 0, i32 2
  %267 = load %union.tree_node*, %union.tree_node** %value443, align 8
  store %union.tree_node* %267, %union.tree_node** @current_declspecs, align 8
  %268 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list444 = bitcast %union.tree_node* %268 to %struct.tree_list*
  %purpose445 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list444, i32 0, i32 1
  %269 = load %union.tree_node*, %union.tree_node** %purpose445, align 8
  %list446 = bitcast %union.tree_node* %269 to %struct.tree_list*
  %purpose447 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list446, i32 0, i32 1
  %270 = load %union.tree_node*, %union.tree_node** %purpose447, align 8
  store %union.tree_node* %270, %union.tree_node** @prefix_attributes, align 8
  %271 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list448 = bitcast %union.tree_node* %271 to %struct.tree_list*
  %purpose449 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list448, i32 0, i32 1
  %272 = load %union.tree_node*, %union.tree_node** %purpose449, align 8
  %list450 = bitcast %union.tree_node* %272 to %struct.tree_list*
  %value451 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list450, i32 0, i32 2
  %273 = load %union.tree_node*, %union.tree_node** %value451, align 8
  store %union.tree_node* %273, %union.tree_node** @all_prefix_attributes, align 8
  %274 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common452 = bitcast %union.tree_node* %274 to %struct.tree_common*
  %chain453 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common452, i32 0, i32 0
  %275 = load %union.tree_node*, %union.tree_node** %chain453, align 8
  store %union.tree_node* %275, %union.tree_node** @declspec_stack, align 8
  br label %do.end.454

do.end.454:                                       ; preds = %do.body.441
  br label %sw.epilog

sw.bb.455:                                        ; preds = %if.end.170
  br label %do.body.456

do.body.456:                                      ; preds = %sw.bb.455
  %276 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list457 = bitcast %union.tree_node* %276 to %struct.tree_list*
  %value458 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list457, i32 0, i32 2
  %277 = load %union.tree_node*, %union.tree_node** %value458, align 8
  store %union.tree_node* %277, %union.tree_node** @current_declspecs, align 8
  %278 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list459 = bitcast %union.tree_node* %278 to %struct.tree_list*
  %purpose460 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list459, i32 0, i32 1
  %279 = load %union.tree_node*, %union.tree_node** %purpose460, align 8
  %list461 = bitcast %union.tree_node* %279 to %struct.tree_list*
  %purpose462 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list461, i32 0, i32 1
  %280 = load %union.tree_node*, %union.tree_node** %purpose462, align 8
  store %union.tree_node* %280, %union.tree_node** @prefix_attributes, align 8
  %281 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list463 = bitcast %union.tree_node* %281 to %struct.tree_list*
  %purpose464 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list463, i32 0, i32 1
  %282 = load %union.tree_node*, %union.tree_node** %purpose464, align 8
  %list465 = bitcast %union.tree_node* %282 to %struct.tree_list*
  %value466 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list465, i32 0, i32 2
  %283 = load %union.tree_node*, %union.tree_node** %value466, align 8
  store %union.tree_node* %283, %union.tree_node** @all_prefix_attributes, align 8
  %284 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common467 = bitcast %union.tree_node* %284 to %struct.tree_common*
  %chain468 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common467, i32 0, i32 0
  %285 = load %union.tree_node*, %union.tree_node** %chain468, align 8
  store %union.tree_node* %285, %union.tree_node** @declspec_stack, align 8
  br label %do.end.469

do.end.469:                                       ; preds = %do.body.456
  br label %sw.epilog

sw.bb.470:                                        ; preds = %if.end.170
  %code471 = bitcast %union.YYSTYPE* %yyval to i32*
  store i32 121, i32* %code471, align 4
  br label %sw.epilog

sw.bb.472:                                        ; preds = %if.end.170
  %code473 = bitcast %union.YYSTYPE* %yyval to i32*
  store i32 77, i32* %code473, align 4
  br label %sw.epilog

sw.bb.474:                                        ; preds = %if.end.170
  %code475 = bitcast %union.YYSTYPE* %yyval to i32*
  store i32 114, i32* %code475, align 4
  %286 = load i32, i32* @warn_traditional, align 4
  %tobool476 = icmp ne i32 %286, 0
  br i1 %tobool476, label %land.lhs.true.477, label %if.end.480

land.lhs.true.477:                                ; preds = %sw.bb.474
  %287 = load i32, i32* @in_system_header, align 4
  %tobool478 = icmp ne i32 %287, 0
  br i1 %tobool478, label %if.end.480, label %if.then.479

if.then.479:                                      ; preds = %land.lhs.true.477
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end.480

if.end.480:                                       ; preds = %if.then.479, %land.lhs.true.477, %sw.bb.474
  br label %sw.epilog

sw.bb.481:                                        ; preds = %if.end.170
  %code482 = bitcast %union.YYSTYPE* %yyval to i32*
  store i32 130, i32* %code482, align 4
  br label %sw.epilog

sw.bb.483:                                        ; preds = %if.end.170
  %code484 = bitcast %union.YYSTYPE* %yyval to i32*
  store i32 129, i32* %code484, align 4
  br label %sw.epilog

sw.bb.485:                                        ; preds = %if.end.170
  %code486 = bitcast %union.YYSTYPE* %yyval to i32*
  store i32 90, i32* %code486, align 4
  br label %sw.epilog

sw.bb.487:                                        ; preds = %if.end.170
  %code488 = bitcast %union.YYSTYPE* %yyval to i32*
  store i32 96, i32* %code488, align 4
  br label %sw.epilog

sw.bb.489:                                        ; preds = %if.end.170
  %288 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx490 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %288, i64 0
  %ttype491 = bitcast %union.YYSTYPE* %arrayidx490 to %union.tree_node**
  %289 = load %union.tree_node*, %union.tree_node** %ttype491, align 8
  %call492 = call %union.tree_node* @build_compound_expr(%union.tree_node* %289)
  %ttype493 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call492, %union.tree_node** %ttype493, align 8
  br label %sw.epilog

sw.bb.494:                                        ; preds = %if.end.170
  %ttype495 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype495, align 8
  br label %sw.epilog

sw.bb.496:                                        ; preds = %if.end.170
  %290 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx497 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %290, i64 0
  %ttype498 = bitcast %union.YYSTYPE* %arrayidx497 to %union.tree_node**
  %291 = load %union.tree_node*, %union.tree_node** %ttype498, align 8
  %call499 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %291)
  %ttype500 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call499, %union.tree_node** %ttype500, align 8
  br label %sw.epilog

sw.bb.501:                                        ; preds = %if.end.170
  %292 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx502 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %292, i64 -2
  %ttype503 = bitcast %union.YYSTYPE* %arrayidx502 to %union.tree_node**
  %293 = load %union.tree_node*, %union.tree_node** %ttype503, align 8
  %294 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx504 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %294, i64 0
  %ttype505 = bitcast %union.YYSTYPE* %arrayidx504 to %union.tree_node**
  %295 = load %union.tree_node*, %union.tree_node** %ttype505, align 8
  %call506 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %295)
  %call507 = call %union.tree_node* @chainon(%union.tree_node* %293, %union.tree_node* %call506)
  br label %sw.epilog

sw.bb.508:                                        ; preds = %if.end.170
  %296 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx509 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %296, i64 0
  %ttype510 = bitcast %union.YYSTYPE* %arrayidx509 to %union.tree_node**
  %297 = load %union.tree_node*, %union.tree_node** %ttype510, align 8
  %call511 = call %union.tree_node* @build_indirect_ref(%union.tree_node* %297, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0))
  %ttype512 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call511, %union.tree_node** %ttype512, align 8
  br label %sw.epilog

sw.bb.513:                                        ; preds = %if.end.170
  %298 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx514 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %298, i64 0
  %ttype515 = bitcast %union.YYSTYPE* %arrayidx514 to %union.tree_node**
  %299 = load %union.tree_node*, %union.tree_node** %ttype515, align 8
  %ttype516 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %299, %union.tree_node** %ttype516, align 8
  br label %do.body.517

do.body.517:                                      ; preds = %sw.bb.513
  %300 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx519 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %300, i64 -1
  %ttype520 = bitcast %union.YYSTYPE* %arrayidx519 to %union.tree_node**
  %301 = load %union.tree_node*, %union.tree_node** %ttype520, align 8
  %call521 = call i64 @tree_low_cst(%union.tree_node* %301, i32 0)
  %conv522 = trunc i64 %call521 to i32
  store i32 %conv522, i32* %val518, align 4
  %302 = load i32, i32* %val518, align 4
  %and523 = and i32 %302, 1
  store i32 %and523, i32* @pedantic, align 4
  %303 = load i32, i32* %val518, align 4
  %shr524 = ashr i32 %303, 1
  %and525 = and i32 %shr524, 1
  store i32 %and525, i32* @warn_pointer_arith, align 4
  %304 = load i32, i32* %val518, align 4
  %shr526 = ashr i32 %304, 2
  %and527 = and i32 %shr526, 1
  store i32 %and527, i32* @warn_traditional, align 4
  br label %do.end.528

do.end.528:                                       ; preds = %do.body.517
  br label %sw.epilog

sw.bb.529:                                        ; preds = %if.end.170
  %305 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx530 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %305, i64 -1
  %code531 = bitcast %union.YYSTYPE* %arrayidx530 to i32*
  %306 = load i32, i32* %code531, align 4
  %307 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx532 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %307, i64 0
  %ttype533 = bitcast %union.YYSTYPE* %arrayidx532 to %union.tree_node**
  %308 = load %union.tree_node*, %union.tree_node** %ttype533, align 8
  %call534 = call %union.tree_node* @build_unary_op(i32 %306, %union.tree_node* %308, i32 0)
  %ttype535 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call534, %union.tree_node** %ttype535, align 8
  %ttype536 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %309 = load %union.tree_node*, %union.tree_node** %ttype536, align 8
  call void @overflow_warning(%union.tree_node* %309)
  br label %sw.epilog

sw.bb.537:                                        ; preds = %if.end.170
  %310 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx538 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %310, i64 0
  %ttype539 = bitcast %union.YYSTYPE* %arrayidx538 to %union.tree_node**
  %311 = load %union.tree_node*, %union.tree_node** %ttype539, align 8
  %call540 = call %union.tree_node* @finish_label_address_expr(%union.tree_node* %311)
  %ttype541 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call540, %union.tree_node** %ttype541, align 8
  br label %sw.epilog

sw.bb.542:                                        ; preds = %if.end.170
  %312 = load i32, i32* @skip_evaluation, align 4
  %dec543 = add nsw i32 %312, -1
  store i32 %dec543, i32* @skip_evaluation, align 4
  %313 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx544 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %313, i64 0
  %ttype545 = bitcast %union.YYSTYPE* %arrayidx544 to %union.tree_node**
  %314 = load %union.tree_node*, %union.tree_node** %ttype545, align 8
  %common546 = bitcast %union.tree_node* %314 to %struct.tree_common*
  %code547 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common546, i32 0, i32 2
  %bf.load548 = load i32, i32* %code547, align 8
  %bf.clear549 = and i32 %bf.load548, 255
  %cmp550 = icmp eq i32 %bf.clear549, 39
  br i1 %cmp550, label %land.lhs.true.552, label %if.end.565

land.lhs.true.552:                                ; preds = %sw.bb.542
  %315 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx553 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %315, i64 0
  %ttype554 = bitcast %union.YYSTYPE* %arrayidx553 to %union.tree_node**
  %316 = load %union.tree_node*, %union.tree_node** %ttype554, align 8
  %exp555 = bitcast %union.tree_node* %316 to %struct.tree_exp*
  %operands556 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp555, i32 0, i32 2
  %arrayidx557 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands556, i32 0, i64 1
  %317 = load %union.tree_node*, %union.tree_node** %arrayidx557, align 8
  %decl558 = bitcast %union.tree_node* %317 to %struct.tree_decl*
  %lang_flag_4 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl558, i32 0, i32 5
  %318 = bitcast i48* %lang_flag_4 to i64*
  %bf.load559 = load i64, i64* %318, align 8
  %bf.lshr560 = lshr i64 %bf.load559, 41
  %bf.clear561 = and i64 %bf.lshr560, 1
  %bf.cast = trunc i64 %bf.clear561 to i32
  %cmp562 = icmp eq i32 %bf.cast, 1
  br i1 %cmp562, label %if.then.564, label %if.end.565

if.then.564:                                      ; preds = %land.lhs.true.552
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.565

if.end.565:                                       ; preds = %if.then.564, %land.lhs.true.552, %sw.bb.542
  %319 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx566 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %319, i64 0
  %ttype567 = bitcast %union.YYSTYPE* %arrayidx566 to %union.tree_node**
  %320 = load %union.tree_node*, %union.tree_node** %ttype567, align 8
  %common568 = bitcast %union.tree_node* %320 to %struct.tree_common*
  %type569 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common568, i32 0, i32 1
  %321 = load %union.tree_node*, %union.tree_node** %type569, align 8
  %call570 = call %union.tree_node* @c_sizeof(%union.tree_node* %321)
  %ttype571 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call570, %union.tree_node** %ttype571, align 8
  br label %sw.epilog

sw.bb.572:                                        ; preds = %if.end.170
  %322 = load i32, i32* @skip_evaluation, align 4
  %dec573 = add nsw i32 %322, -1
  store i32 %dec573, i32* @skip_evaluation, align 4
  %323 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx574 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %323, i64 -1
  %ttype575 = bitcast %union.YYSTYPE* %arrayidx574 to %union.tree_node**
  %324 = load %union.tree_node*, %union.tree_node** %ttype575, align 8
  %call576 = call %union.tree_node* @groktypename(%union.tree_node* %324)
  %call577 = call %union.tree_node* @c_sizeof(%union.tree_node* %call576)
  %ttype578 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call577, %union.tree_node** %ttype578, align 8
  br label %sw.epilog

sw.bb.579:                                        ; preds = %if.end.170
  %325 = load i32, i32* @skip_evaluation, align 4
  %dec580 = add nsw i32 %325, -1
  store i32 %dec580, i32* @skip_evaluation, align 4
  %326 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx581 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %326, i64 0
  %ttype582 = bitcast %union.YYSTYPE* %arrayidx581 to %union.tree_node**
  %327 = load %union.tree_node*, %union.tree_node** %ttype582, align 8
  %call583 = call %union.tree_node* @c_alignof_expr(%union.tree_node* %327)
  %ttype584 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call583, %union.tree_node** %ttype584, align 8
  br label %sw.epilog

sw.bb.585:                                        ; preds = %if.end.170
  %328 = load i32, i32* @skip_evaluation, align 4
  %dec586 = add nsw i32 %328, -1
  store i32 %dec586, i32* @skip_evaluation, align 4
  %329 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx587 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %329, i64 -1
  %ttype588 = bitcast %union.YYSTYPE* %arrayidx587 to %union.tree_node**
  %330 = load %union.tree_node*, %union.tree_node** %ttype588, align 8
  %call589 = call %union.tree_node* @groktypename(%union.tree_node* %330)
  %call590 = call %union.tree_node* @c_alignof(%union.tree_node* %call589)
  %ttype591 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call590, %union.tree_node** %ttype591, align 8
  br label %sw.epilog

sw.bb.592:                                        ; preds = %if.end.170
  %331 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx593 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %331, i64 0
  %ttype594 = bitcast %union.YYSTYPE* %arrayidx593 to %union.tree_node**
  %332 = load %union.tree_node*, %union.tree_node** %ttype594, align 8
  %call595 = call %union.tree_node* @build_unary_op(i32 127, %union.tree_node* %332, i32 0)
  %ttype596 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call595, %union.tree_node** %ttype596, align 8
  br label %sw.epilog

sw.bb.597:                                        ; preds = %if.end.170
  %333 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx598 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %333, i64 0
  %ttype599 = bitcast %union.YYSTYPE* %arrayidx598 to %union.tree_node**
  %334 = load %union.tree_node*, %union.tree_node** %ttype599, align 8
  %call600 = call %union.tree_node* @build_unary_op(i32 128, %union.tree_node* %334, i32 0)
  %ttype601 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call600, %union.tree_node** %ttype601, align 8
  br label %sw.epilog

sw.bb.602:                                        ; preds = %if.end.170
  %335 = load i32, i32* @skip_evaluation, align 4
  %inc603 = add nsw i32 %335, 1
  store i32 %inc603, i32* @skip_evaluation, align 4
  br label %sw.epilog

sw.bb.604:                                        ; preds = %if.end.170
  %336 = load i32, i32* @skip_evaluation, align 4
  %inc605 = add nsw i32 %336, 1
  store i32 %inc605, i32* @skip_evaluation, align 4
  br label %sw.epilog

sw.bb.606:                                        ; preds = %if.end.170
  %337 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx607 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %337, i64 -2
  %ttype608 = bitcast %union.YYSTYPE* %arrayidx607 to %union.tree_node**
  %338 = load %union.tree_node*, %union.tree_node** %ttype608, align 8
  %339 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx609 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %339, i64 0
  %ttype610 = bitcast %union.YYSTYPE* %arrayidx609 to %union.tree_node**
  %340 = load %union.tree_node*, %union.tree_node** %ttype610, align 8
  %call611 = call %union.tree_node* @c_cast_expr(%union.tree_node* %338, %union.tree_node* %340)
  %ttype612 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call611, %union.tree_node** %ttype612, align 8
  br label %sw.epilog

sw.bb.613:                                        ; preds = %if.end.170
  %341 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx614 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %341, i64 -1
  %code615 = bitcast %union.YYSTYPE* %arrayidx614 to i32*
  %342 = load i32, i32* %code615, align 4
  %343 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx616 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %343, i64 -2
  %ttype617 = bitcast %union.YYSTYPE* %arrayidx616 to %union.tree_node**
  %344 = load %union.tree_node*, %union.tree_node** %ttype617, align 8
  %345 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx618 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %345, i64 0
  %ttype619 = bitcast %union.YYSTYPE* %arrayidx618 to %union.tree_node**
  %346 = load %union.tree_node*, %union.tree_node** %ttype619, align 8
  %call620 = call %union.tree_node* @parser_build_binary_op(i32 %342, %union.tree_node* %344, %union.tree_node* %346)
  %ttype621 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call620, %union.tree_node** %ttype621, align 8
  br label %sw.epilog

sw.bb.622:                                        ; preds = %if.end.170
  %347 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx623 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %347, i64 -1
  %code624 = bitcast %union.YYSTYPE* %arrayidx623 to i32*
  %348 = load i32, i32* %code624, align 4
  %349 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx625 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %349, i64 -2
  %ttype626 = bitcast %union.YYSTYPE* %arrayidx625 to %union.tree_node**
  %350 = load %union.tree_node*, %union.tree_node** %ttype626, align 8
  %351 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx627 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %351, i64 0
  %ttype628 = bitcast %union.YYSTYPE* %arrayidx627 to %union.tree_node**
  %352 = load %union.tree_node*, %union.tree_node** %ttype628, align 8
  %call629 = call %union.tree_node* @parser_build_binary_op(i32 %348, %union.tree_node* %350, %union.tree_node* %352)
  %ttype630 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call629, %union.tree_node** %ttype630, align 8
  br label %sw.epilog

sw.bb.631:                                        ; preds = %if.end.170
  %353 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx632 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %353, i64 -1
  %code633 = bitcast %union.YYSTYPE* %arrayidx632 to i32*
  %354 = load i32, i32* %code633, align 4
  %355 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx634 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %355, i64 -2
  %ttype635 = bitcast %union.YYSTYPE* %arrayidx634 to %union.tree_node**
  %356 = load %union.tree_node*, %union.tree_node** %ttype635, align 8
  %357 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx636 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %357, i64 0
  %ttype637 = bitcast %union.YYSTYPE* %arrayidx636 to %union.tree_node**
  %358 = load %union.tree_node*, %union.tree_node** %ttype637, align 8
  %call638 = call %union.tree_node* @parser_build_binary_op(i32 %354, %union.tree_node* %356, %union.tree_node* %358)
  %ttype639 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call638, %union.tree_node** %ttype639, align 8
  br label %sw.epilog

sw.bb.640:                                        ; preds = %if.end.170
  %359 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx641 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %359, i64 -1
  %code642 = bitcast %union.YYSTYPE* %arrayidx641 to i32*
  %360 = load i32, i32* %code642, align 4
  %361 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx643 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %361, i64 -2
  %ttype644 = bitcast %union.YYSTYPE* %arrayidx643 to %union.tree_node**
  %362 = load %union.tree_node*, %union.tree_node** %ttype644, align 8
  %363 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx645 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %363, i64 0
  %ttype646 = bitcast %union.YYSTYPE* %arrayidx645 to %union.tree_node**
  %364 = load %union.tree_node*, %union.tree_node** %ttype646, align 8
  %call647 = call %union.tree_node* @parser_build_binary_op(i32 %360, %union.tree_node* %362, %union.tree_node* %364)
  %ttype648 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call647, %union.tree_node** %ttype648, align 8
  br label %sw.epilog

sw.bb.649:                                        ; preds = %if.end.170
  %365 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx650 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %365, i64 -1
  %code651 = bitcast %union.YYSTYPE* %arrayidx650 to i32*
  %366 = load i32, i32* %code651, align 4
  %367 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx652 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %367, i64 -2
  %ttype653 = bitcast %union.YYSTYPE* %arrayidx652 to %union.tree_node**
  %368 = load %union.tree_node*, %union.tree_node** %ttype653, align 8
  %369 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx654 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %369, i64 0
  %ttype655 = bitcast %union.YYSTYPE* %arrayidx654 to %union.tree_node**
  %370 = load %union.tree_node*, %union.tree_node** %ttype655, align 8
  %call656 = call %union.tree_node* @parser_build_binary_op(i32 %366, %union.tree_node* %368, %union.tree_node* %370)
  %ttype657 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call656, %union.tree_node** %ttype657, align 8
  br label %sw.epilog

sw.bb.658:                                        ; preds = %if.end.170
  %371 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx659 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %371, i64 -1
  %code660 = bitcast %union.YYSTYPE* %arrayidx659 to i32*
  %372 = load i32, i32* %code660, align 4
  %373 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx661 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %373, i64 -2
  %ttype662 = bitcast %union.YYSTYPE* %arrayidx661 to %union.tree_node**
  %374 = load %union.tree_node*, %union.tree_node** %ttype662, align 8
  %375 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx663 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %375, i64 0
  %ttype664 = bitcast %union.YYSTYPE* %arrayidx663 to %union.tree_node**
  %376 = load %union.tree_node*, %union.tree_node** %ttype664, align 8
  %call665 = call %union.tree_node* @parser_build_binary_op(i32 %372, %union.tree_node* %374, %union.tree_node* %376)
  %ttype666 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call665, %union.tree_node** %ttype666, align 8
  br label %sw.epilog

sw.bb.667:                                        ; preds = %if.end.170
  %377 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx668 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %377, i64 -1
  %code669 = bitcast %union.YYSTYPE* %arrayidx668 to i32*
  %378 = load i32, i32* %code669, align 4
  %379 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx670 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %379, i64 -2
  %ttype671 = bitcast %union.YYSTYPE* %arrayidx670 to %union.tree_node**
  %380 = load %union.tree_node*, %union.tree_node** %ttype671, align 8
  %381 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx672 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %381, i64 0
  %ttype673 = bitcast %union.YYSTYPE* %arrayidx672 to %union.tree_node**
  %382 = load %union.tree_node*, %union.tree_node** %ttype673, align 8
  %call674 = call %union.tree_node* @parser_build_binary_op(i32 %378, %union.tree_node* %380, %union.tree_node* %382)
  %ttype675 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call674, %union.tree_node** %ttype675, align 8
  br label %sw.epilog

sw.bb.676:                                        ; preds = %if.end.170
  %383 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx677 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %383, i64 -1
  %code678 = bitcast %union.YYSTYPE* %arrayidx677 to i32*
  %384 = load i32, i32* %code678, align 4
  %385 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx679 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %385, i64 -2
  %ttype680 = bitcast %union.YYSTYPE* %arrayidx679 to %union.tree_node**
  %386 = load %union.tree_node*, %union.tree_node** %ttype680, align 8
  %387 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx681 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %387, i64 0
  %ttype682 = bitcast %union.YYSTYPE* %arrayidx681 to %union.tree_node**
  %388 = load %union.tree_node*, %union.tree_node** %ttype682, align 8
  %call683 = call %union.tree_node* @parser_build_binary_op(i32 %384, %union.tree_node* %386, %union.tree_node* %388)
  %ttype684 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call683, %union.tree_node** %ttype684, align 8
  br label %sw.epilog

sw.bb.685:                                        ; preds = %if.end.170
  %389 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx686 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %389, i64 -1
  %code687 = bitcast %union.YYSTYPE* %arrayidx686 to i32*
  %390 = load i32, i32* %code687, align 4
  %391 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx688 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %391, i64 -2
  %ttype689 = bitcast %union.YYSTYPE* %arrayidx688 to %union.tree_node**
  %392 = load %union.tree_node*, %union.tree_node** %ttype689, align 8
  %393 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx690 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %393, i64 0
  %ttype691 = bitcast %union.YYSTYPE* %arrayidx690 to %union.tree_node**
  %394 = load %union.tree_node*, %union.tree_node** %ttype691, align 8
  %call692 = call %union.tree_node* @parser_build_binary_op(i32 %390, %union.tree_node* %392, %union.tree_node* %394)
  %ttype693 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call692, %union.tree_node** %ttype693, align 8
  br label %sw.epilog

sw.bb.694:                                        ; preds = %if.end.170
  %395 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx695 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %395, i64 -1
  %code696 = bitcast %union.YYSTYPE* %arrayidx695 to i32*
  %396 = load i32, i32* %code696, align 4
  %397 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx697 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %397, i64 -2
  %ttype698 = bitcast %union.YYSTYPE* %arrayidx697 to %union.tree_node**
  %398 = load %union.tree_node*, %union.tree_node** %ttype698, align 8
  %399 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx699 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %399, i64 0
  %ttype700 = bitcast %union.YYSTYPE* %arrayidx699 to %union.tree_node**
  %400 = load %union.tree_node*, %union.tree_node** %ttype700, align 8
  %call701 = call %union.tree_node* @parser_build_binary_op(i32 %396, %union.tree_node* %398, %union.tree_node* %400)
  %ttype702 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call701, %union.tree_node** %ttype702, align 8
  br label %sw.epilog

sw.bb.703:                                        ; preds = %if.end.170
  %401 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx704 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %401, i64 -1
  %code705 = bitcast %union.YYSTYPE* %arrayidx704 to i32*
  %402 = load i32, i32* %code705, align 4
  %403 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx706 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %403, i64 -2
  %ttype707 = bitcast %union.YYSTYPE* %arrayidx706 to %union.tree_node**
  %404 = load %union.tree_node*, %union.tree_node** %ttype707, align 8
  %405 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx708 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %405, i64 0
  %ttype709 = bitcast %union.YYSTYPE* %arrayidx708 to %union.tree_node**
  %406 = load %union.tree_node*, %union.tree_node** %ttype709, align 8
  %call710 = call %union.tree_node* @parser_build_binary_op(i32 %402, %union.tree_node* %404, %union.tree_node* %406)
  %ttype711 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call710, %union.tree_node** %ttype711, align 8
  br label %sw.epilog

sw.bb.712:                                        ; preds = %if.end.170
  %407 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx713 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %407, i64 -1
  %code714 = bitcast %union.YYSTYPE* %arrayidx713 to i32*
  %408 = load i32, i32* %code714, align 4
  %409 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx715 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %409, i64 -2
  %ttype716 = bitcast %union.YYSTYPE* %arrayidx715 to %union.tree_node**
  %410 = load %union.tree_node*, %union.tree_node** %ttype716, align 8
  %411 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx717 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %411, i64 0
  %ttype718 = bitcast %union.YYSTYPE* %arrayidx717 to %union.tree_node**
  %412 = load %union.tree_node*, %union.tree_node** %ttype718, align 8
  %call719 = call %union.tree_node* @parser_build_binary_op(i32 %408, %union.tree_node* %410, %union.tree_node* %412)
  %ttype720 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call719, %union.tree_node** %ttype720, align 8
  br label %sw.epilog

sw.bb.721:                                        ; preds = %if.end.170
  %413 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx722 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %413, i64 -1
  %ttype723 = bitcast %union.YYSTYPE* %arrayidx722 to %union.tree_node**
  %414 = load %union.tree_node*, %union.tree_node** %ttype723, align 8
  %call724 = call %union.tree_node* @default_conversion(%union.tree_node* %414)
  %call725 = call %union.tree_node* @truthvalue_conversion(%union.tree_node* %call724)
  %415 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx726 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %415, i64 -1
  %ttype727 = bitcast %union.YYSTYPE* %arrayidx726 to %union.tree_node**
  store %union.tree_node* %call725, %union.tree_node** %ttype727, align 8
  %416 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx728 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %416, i64 -1
  %ttype729 = bitcast %union.YYSTYPE* %arrayidx728 to %union.tree_node**
  %417 = load %union.tree_node*, %union.tree_node** %ttype729, align 8
  %418 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 18), align 8
  %cmp730 = icmp eq %union.tree_node* %417, %418
  %conv731 = zext i1 %cmp730 to i32
  %419 = load i32, i32* @skip_evaluation, align 4
  %add732 = add nsw i32 %419, %conv731
  store i32 %add732, i32* @skip_evaluation, align 4
  br label %sw.epilog

sw.bb.733:                                        ; preds = %if.end.170
  %420 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx734 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %420, i64 -3
  %ttype735 = bitcast %union.YYSTYPE* %arrayidx734 to %union.tree_node**
  %421 = load %union.tree_node*, %union.tree_node** %ttype735, align 8
  %422 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 18), align 8
  %cmp736 = icmp eq %union.tree_node* %421, %422
  %conv737 = zext i1 %cmp736 to i32
  %423 = load i32, i32* @skip_evaluation, align 4
  %sub738 = sub nsw i32 %423, %conv737
  store i32 %sub738, i32* @skip_evaluation, align 4
  %424 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx739 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %424, i64 -3
  %ttype740 = bitcast %union.YYSTYPE* %arrayidx739 to %union.tree_node**
  %425 = load %union.tree_node*, %union.tree_node** %ttype740, align 8
  %426 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx741 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %426, i64 0
  %ttype742 = bitcast %union.YYSTYPE* %arrayidx741 to %union.tree_node**
  %427 = load %union.tree_node*, %union.tree_node** %ttype742, align 8
  %call743 = call %union.tree_node* @parser_build_binary_op(i32 91, %union.tree_node* %425, %union.tree_node* %427)
  %ttype744 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call743, %union.tree_node** %ttype744, align 8
  br label %sw.epilog

sw.bb.745:                                        ; preds = %if.end.170
  %428 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx746 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %428, i64 -1
  %ttype747 = bitcast %union.YYSTYPE* %arrayidx746 to %union.tree_node**
  %429 = load %union.tree_node*, %union.tree_node** %ttype747, align 8
  %call748 = call %union.tree_node* @default_conversion(%union.tree_node* %429)
  %call749 = call %union.tree_node* @truthvalue_conversion(%union.tree_node* %call748)
  %430 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx750 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %430, i64 -1
  %ttype751 = bitcast %union.YYSTYPE* %arrayidx750 to %union.tree_node**
  store %union.tree_node* %call749, %union.tree_node** %ttype751, align 8
  %431 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx752 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %431, i64 -1
  %ttype753 = bitcast %union.YYSTYPE* %arrayidx752 to %union.tree_node**
  %432 = load %union.tree_node*, %union.tree_node** %ttype753, align 8
  %433 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 17), align 8
  %cmp754 = icmp eq %union.tree_node* %432, %433
  %conv755 = zext i1 %cmp754 to i32
  %434 = load i32, i32* @skip_evaluation, align 4
  %add756 = add nsw i32 %434, %conv755
  store i32 %add756, i32* @skip_evaluation, align 4
  br label %sw.epilog

sw.bb.757:                                        ; preds = %if.end.170
  %435 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx758 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %435, i64 -3
  %ttype759 = bitcast %union.YYSTYPE* %arrayidx758 to %union.tree_node**
  %436 = load %union.tree_node*, %union.tree_node** %ttype759, align 8
  %437 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 17), align 8
  %cmp760 = icmp eq %union.tree_node* %436, %437
  %conv761 = zext i1 %cmp760 to i32
  %438 = load i32, i32* @skip_evaluation, align 4
  %sub762 = sub nsw i32 %438, %conv761
  store i32 %sub762, i32* @skip_evaluation, align 4
  %439 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx763 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %439, i64 -3
  %ttype764 = bitcast %union.YYSTYPE* %arrayidx763 to %union.tree_node**
  %440 = load %union.tree_node*, %union.tree_node** %ttype764, align 8
  %441 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx765 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %441, i64 0
  %ttype766 = bitcast %union.YYSTYPE* %arrayidx765 to %union.tree_node**
  %442 = load %union.tree_node*, %union.tree_node** %ttype766, align 8
  %call767 = call %union.tree_node* @parser_build_binary_op(i32 92, %union.tree_node* %440, %union.tree_node* %442)
  %ttype768 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call767, %union.tree_node** %ttype768, align 8
  br label %sw.epilog

sw.bb.769:                                        ; preds = %if.end.170
  %443 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx770 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %443, i64 -1
  %ttype771 = bitcast %union.YYSTYPE* %arrayidx770 to %union.tree_node**
  %444 = load %union.tree_node*, %union.tree_node** %ttype771, align 8
  %call772 = call %union.tree_node* @default_conversion(%union.tree_node* %444)
  %call773 = call %union.tree_node* @truthvalue_conversion(%union.tree_node* %call772)
  %445 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx774 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %445, i64 -1
  %ttype775 = bitcast %union.YYSTYPE* %arrayidx774 to %union.tree_node**
  store %union.tree_node* %call773, %union.tree_node** %ttype775, align 8
  %446 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx776 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %446, i64 -1
  %ttype777 = bitcast %union.YYSTYPE* %arrayidx776 to %union.tree_node**
  %447 = load %union.tree_node*, %union.tree_node** %ttype777, align 8
  %448 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 18), align 8
  %cmp778 = icmp eq %union.tree_node* %447, %448
  %conv779 = zext i1 %cmp778 to i32
  %449 = load i32, i32* @skip_evaluation, align 4
  %add780 = add nsw i32 %449, %conv779
  store i32 %add780, i32* @skip_evaluation, align 4
  br label %sw.epilog

sw.bb.781:                                        ; preds = %if.end.170
  %450 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx782 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %450, i64 -4
  %ttype783 = bitcast %union.YYSTYPE* %arrayidx782 to %union.tree_node**
  %451 = load %union.tree_node*, %union.tree_node** %ttype783, align 8
  %452 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 17), align 8
  %cmp784 = icmp eq %union.tree_node* %451, %452
  %conv785 = zext i1 %cmp784 to i32
  %453 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx786 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %453, i64 -4
  %ttype787 = bitcast %union.YYSTYPE* %arrayidx786 to %union.tree_node**
  %454 = load %union.tree_node*, %union.tree_node** %ttype787, align 8
  %455 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 18), align 8
  %cmp788 = icmp eq %union.tree_node* %454, %455
  %conv789 = zext i1 %cmp788 to i32
  %sub790 = sub nsw i32 %conv785, %conv789
  %456 = load i32, i32* @skip_evaluation, align 4
  %add791 = add nsw i32 %456, %sub790
  store i32 %add791, i32* @skip_evaluation, align 4
  br label %sw.epilog

sw.bb.792:                                        ; preds = %if.end.170
  %457 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx793 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %457, i64 -6
  %ttype794 = bitcast %union.YYSTYPE* %arrayidx793 to %union.tree_node**
  %458 = load %union.tree_node*, %union.tree_node** %ttype794, align 8
  %459 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 17), align 8
  %cmp795 = icmp eq %union.tree_node* %458, %459
  %conv796 = zext i1 %cmp795 to i32
  %460 = load i32, i32* @skip_evaluation, align 4
  %sub797 = sub nsw i32 %460, %conv796
  store i32 %sub797, i32* @skip_evaluation, align 4
  %461 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx798 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %461, i64 -6
  %ttype799 = bitcast %union.YYSTYPE* %arrayidx798 to %union.tree_node**
  %462 = load %union.tree_node*, %union.tree_node** %ttype799, align 8
  %463 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx800 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %463, i64 -3
  %ttype801 = bitcast %union.YYSTYPE* %arrayidx800 to %union.tree_node**
  %464 = load %union.tree_node*, %union.tree_node** %ttype801, align 8
  %465 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx802 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %465, i64 0
  %ttype803 = bitcast %union.YYSTYPE* %arrayidx802 to %union.tree_node**
  %466 = load %union.tree_node*, %union.tree_node** %ttype803, align 8
  %call804 = call %union.tree_node* @build_conditional_expr(%union.tree_node* %462, %union.tree_node* %464, %union.tree_node* %466)
  %ttype805 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call804, %union.tree_node** %ttype805, align 8
  br label %sw.epilog

sw.bb.806:                                        ; preds = %if.end.170
  %467 = load i32, i32* @pedantic, align 4
  %tobool807 = icmp ne i32 %467, 0
  br i1 %tobool807, label %if.then.808, label %if.end.809

if.then.808:                                      ; preds = %sw.bb.806
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.809

if.end.809:                                       ; preds = %if.then.808, %sw.bb.806
  %468 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx810 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %468, i64 -1
  %ttype811 = bitcast %union.YYSTYPE* %arrayidx810 to %union.tree_node**
  %469 = load %union.tree_node*, %union.tree_node** %ttype811, align 8
  %call812 = call %union.tree_node* @save_expr(%union.tree_node* %469)
  %470 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx813 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %470, i64 0
  %ttype814 = bitcast %union.YYSTYPE* %arrayidx813 to %union.tree_node**
  store %union.tree_node* %call812, %union.tree_node** %ttype814, align 8
  %471 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx815 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %471, i64 0
  %ttype816 = bitcast %union.YYSTYPE* %arrayidx815 to %union.tree_node**
  %472 = load %union.tree_node*, %union.tree_node** %ttype816, align 8
  %call817 = call %union.tree_node* @default_conversion(%union.tree_node* %472)
  %call818 = call %union.tree_node* @truthvalue_conversion(%union.tree_node* %call817)
  %473 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx819 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %473, i64 -1
  %ttype820 = bitcast %union.YYSTYPE* %arrayidx819 to %union.tree_node**
  store %union.tree_node* %call818, %union.tree_node** %ttype820, align 8
  %474 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx821 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %474, i64 -1
  %ttype822 = bitcast %union.YYSTYPE* %arrayidx821 to %union.tree_node**
  %475 = load %union.tree_node*, %union.tree_node** %ttype822, align 8
  %476 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 17), align 8
  %cmp823 = icmp eq %union.tree_node* %475, %476
  %conv824 = zext i1 %cmp823 to i32
  %477 = load i32, i32* @skip_evaluation, align 4
  %add825 = add nsw i32 %477, %conv824
  store i32 %add825, i32* @skip_evaluation, align 4
  br label %sw.epilog

sw.bb.826:                                        ; preds = %if.end.170
  %478 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx827 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %478, i64 -4
  %ttype828 = bitcast %union.YYSTYPE* %arrayidx827 to %union.tree_node**
  %479 = load %union.tree_node*, %union.tree_node** %ttype828, align 8
  %480 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 17), align 8
  %cmp829 = icmp eq %union.tree_node* %479, %480
  %conv830 = zext i1 %cmp829 to i32
  %481 = load i32, i32* @skip_evaluation, align 4
  %sub831 = sub nsw i32 %481, %conv830
  store i32 %sub831, i32* @skip_evaluation, align 4
  %482 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx832 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %482, i64 -4
  %ttype833 = bitcast %union.YYSTYPE* %arrayidx832 to %union.tree_node**
  %483 = load %union.tree_node*, %union.tree_node** %ttype833, align 8
  %484 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx834 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %484, i64 -3
  %ttype835 = bitcast %union.YYSTYPE* %arrayidx834 to %union.tree_node**
  %485 = load %union.tree_node*, %union.tree_node** %ttype835, align 8
  %486 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx836 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %486, i64 0
  %ttype837 = bitcast %union.YYSTYPE* %arrayidx836 to %union.tree_node**
  %487 = load %union.tree_node*, %union.tree_node** %ttype837, align 8
  %call838 = call %union.tree_node* @build_conditional_expr(%union.tree_node* %483, %union.tree_node* %485, %union.tree_node* %487)
  %ttype839 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call838, %union.tree_node** %ttype839, align 8
  br label %sw.epilog

sw.bb.840:                                        ; preds = %if.end.170
  %488 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx841 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %488, i64 -2
  %ttype842 = bitcast %union.YYSTYPE* %arrayidx841 to %union.tree_node**
  %489 = load %union.tree_node*, %union.tree_node** %ttype842, align 8
  %490 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx843 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %490, i64 0
  %ttype844 = bitcast %union.YYSTYPE* %arrayidx843 to %union.tree_node**
  %491 = load %union.tree_node*, %union.tree_node** %ttype844, align 8
  %call845 = call %union.tree_node* @build_modify_expr(%union.tree_node* %489, i32 115, %union.tree_node* %491)
  %ttype846 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call845, %union.tree_node** %ttype846, align 8
  %ttype847 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %492 = load %union.tree_node*, %union.tree_node** %ttype847, align 8
  %common848 = bitcast %union.tree_node* %492 to %struct.tree_common*
  %code849 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common848, i32 0, i32 2
  %bf.load850 = load i32, i32* %code849, align 8
  %bf.clear851 = and i32 %bf.load850, 255
  %idxprom852 = sext i32 %bf.clear851 to i64
  %arrayidx853 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom852
  %493 = load i8, i8* %arrayidx853, align 1
  store i8 %493, i8* %class, align 1
  %494 = load i8, i8* %class, align 1
  %conv854 = sext i8 %494 to i32
  %cmp855 = icmp eq i32 %conv854, 60
  br i1 %cmp855, label %if.then.869, label %lor.lhs.false.857

lor.lhs.false.857:                                ; preds = %sw.bb.840
  %495 = load i8, i8* %class, align 1
  %conv858 = sext i8 %495 to i32
  %cmp859 = icmp eq i32 %conv858, 49
  br i1 %cmp859, label %if.then.869, label %lor.lhs.false.861

lor.lhs.false.861:                                ; preds = %lor.lhs.false.857
  %496 = load i8, i8* %class, align 1
  %conv862 = sext i8 %496 to i32
  %cmp863 = icmp eq i32 %conv862, 50
  br i1 %cmp863, label %if.then.869, label %lor.lhs.false.865

lor.lhs.false.865:                                ; preds = %lor.lhs.false.861
  %497 = load i8, i8* %class, align 1
  %conv866 = sext i8 %497 to i32
  %cmp867 = icmp eq i32 %conv866, 101
  br i1 %cmp867, label %if.then.869, label %if.end.872

if.then.869:                                      ; preds = %lor.lhs.false.865, %lor.lhs.false.861, %lor.lhs.false.857, %sw.bb.840
  %ttype870 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %498 = load %union.tree_node*, %union.tree_node** %ttype870, align 8
  %exp871 = bitcast %union.tree_node* %498 to %struct.tree_exp*
  %complexity = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp871, i32 0, i32 1
  store i32 48, i32* %complexity, align 4
  br label %if.end.872

if.end.872:                                       ; preds = %if.then.869, %lor.lhs.false.865
  br label %sw.epilog

sw.bb.873:                                        ; preds = %if.end.170
  %499 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx875 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %499, i64 -2
  %ttype876 = bitcast %union.YYSTYPE* %arrayidx875 to %union.tree_node**
  %500 = load %union.tree_node*, %union.tree_node** %ttype876, align 8
  %501 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx877 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %501, i64 -1
  %code878 = bitcast %union.YYSTYPE* %arrayidx877 to i32*
  %502 = load i32, i32* %code878, align 4
  %503 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx879 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %503, i64 0
  %ttype880 = bitcast %union.YYSTYPE* %arrayidx879 to %union.tree_node**
  %504 = load %union.tree_node*, %union.tree_node** %ttype880, align 8
  %call881 = call %union.tree_node* @build_modify_expr(%union.tree_node* %500, i32 %502, %union.tree_node* %504)
  %ttype882 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call881, %union.tree_node** %ttype882, align 8
  %ttype883 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %505 = load %union.tree_node*, %union.tree_node** %ttype883, align 8
  %common884 = bitcast %union.tree_node* %505 to %struct.tree_common*
  %code885 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common884, i32 0, i32 2
  %bf.load886 = load i32, i32* %code885, align 8
  %bf.clear887 = and i32 %bf.load886, 255
  %idxprom888 = sext i32 %bf.clear887 to i64
  %arrayidx889 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom888
  %506 = load i8, i8* %arrayidx889, align 1
  store i8 %506, i8* %class874, align 1
  %507 = load i8, i8* %class874, align 1
  %conv890 = sext i8 %507 to i32
  %cmp891 = icmp eq i32 %conv890, 60
  br i1 %cmp891, label %if.then.905, label %lor.lhs.false.893

lor.lhs.false.893:                                ; preds = %sw.bb.873
  %508 = load i8, i8* %class874, align 1
  %conv894 = sext i8 %508 to i32
  %cmp895 = icmp eq i32 %conv894, 49
  br i1 %cmp895, label %if.then.905, label %lor.lhs.false.897

lor.lhs.false.897:                                ; preds = %lor.lhs.false.893
  %509 = load i8, i8* %class874, align 1
  %conv898 = sext i8 %509 to i32
  %cmp899 = icmp eq i32 %conv898, 50
  br i1 %cmp899, label %if.then.905, label %lor.lhs.false.901

lor.lhs.false.901:                                ; preds = %lor.lhs.false.897
  %510 = load i8, i8* %class874, align 1
  %conv902 = sext i8 %510 to i32
  %cmp903 = icmp eq i32 %conv902, 101
  br i1 %cmp903, label %if.then.905, label %if.end.909

if.then.905:                                      ; preds = %lor.lhs.false.901, %lor.lhs.false.897, %lor.lhs.false.893, %sw.bb.873
  %ttype906 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %511 = load %union.tree_node*, %union.tree_node** %ttype906, align 8
  %exp907 = bitcast %union.tree_node* %511 to %struct.tree_exp*
  %complexity908 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp907, i32 0, i32 1
  store i32 0, i32* %complexity908, align 4
  br label %if.end.909

if.end.909:                                       ; preds = %if.then.905, %lor.lhs.false.901
  br label %sw.epilog

sw.bb.910:                                        ; preds = %if.end.170
  %512 = load i32, i32* @yychar, align 4
  %cmp911 = icmp eq i32 %512, -2
  br i1 %cmp911, label %if.then.913, label %if.end.915

if.then.913:                                      ; preds = %sw.bb.910
  %call914 = call i32 @yylex()
  store i32 %call914, i32* @yychar, align 4
  br label %if.end.915

if.end.915:                                       ; preds = %if.then.913, %sw.bb.910
  %513 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx916 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %513, i64 0
  %ttype917 = bitcast %union.YYSTYPE* %arrayidx916 to %union.tree_node**
  %514 = load %union.tree_node*, %union.tree_node** %ttype917, align 8
  %515 = load i32, i32* @yychar, align 4
  %cmp918 = icmp eq i32 %515, 40
  %conv919 = zext i1 %cmp918 to i32
  %call920 = call %union.tree_node* @build_external_ref(%union.tree_node* %514, i32 %conv919)
  %ttype921 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call920, %union.tree_node** %ttype921, align 8
  br label %sw.epilog

sw.bb.922:                                        ; preds = %if.end.170
  %516 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx923 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %516, i64 0
  %ttype924 = bitcast %union.YYSTYPE* %arrayidx923 to %union.tree_node**
  %517 = load %union.tree_node*, %union.tree_node** %ttype924, align 8
  %call925 = call %union.tree_node* @combine_strings(%union.tree_node* %517)
  %ttype926 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call925, %union.tree_node** %ttype926, align 8
  br label %sw.epilog

sw.bb.927:                                        ; preds = %if.end.170
  %ttype928 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %518 = load %union.tree_node*, %union.tree_node** %ttype928, align 8
  %519 = bitcast %union.tree_node* %518 to %struct.c_common_identifier*
  %node = getelementptr inbounds %struct.c_common_identifier, %struct.c_common_identifier* %519, i32 0, i32 1
  %rid_code = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i32 0, i32 3
  %520 = load i8, i8* %rid_code, align 1
  %conv929 = zext i8 %520 to i32
  %ttype930 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %521 = load %union.tree_node*, %union.tree_node** %ttype930, align 8
  %call931 = call %union.tree_node* @fname_decl(i32 %conv929, %union.tree_node* %521)
  %ttype932 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call931, %union.tree_node** %ttype932, align 8
  br label %sw.epilog

sw.bb.933:                                        ; preds = %if.end.170
  call void @start_init(%union.tree_node* null, %union.tree_node* null, i32 0)
  %522 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx934 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %522, i64 -2
  %ttype935 = bitcast %union.YYSTYPE* %arrayidx934 to %union.tree_node**
  %523 = load %union.tree_node*, %union.tree_node** %ttype935, align 8
  %call936 = call %union.tree_node* @groktypename(%union.tree_node* %523)
  %524 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx937 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %524, i64 -2
  %ttype938 = bitcast %union.YYSTYPE* %arrayidx937 to %union.tree_node**
  store %union.tree_node* %call936, %union.tree_node** %ttype938, align 8
  %525 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx939 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %525, i64 -2
  %ttype940 = bitcast %union.YYSTYPE* %arrayidx939 to %union.tree_node**
  %526 = load %union.tree_node*, %union.tree_node** %ttype940, align 8
  call void @really_start_incremental_init(%union.tree_node* %526)
  br label %sw.epilog

sw.bb.941:                                        ; preds = %if.end.170
  %call942 = call %union.tree_node* @pop_init_level(i32 0)
  store %union.tree_node* %call942, %union.tree_node** %constructor, align 8
  %527 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx944 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %527, i64 -5
  %ttype945 = bitcast %union.YYSTYPE* %arrayidx944 to %union.tree_node**
  %528 = load %union.tree_node*, %union.tree_node** %ttype945, align 8
  store %union.tree_node* %528, %union.tree_node** %type943, align 8
  call void @finish_init()
  %529 = load i32, i32* @pedantic, align 4
  %tobool946 = icmp ne i32 %529, 0
  br i1 %tobool946, label %land.lhs.true.947, label %if.end.950

land.lhs.true.947:                                ; preds = %sw.bb.941
  %530 = load i32, i32* @flag_isoc99, align 4
  %tobool948 = icmp ne i32 %530, 0
  br i1 %tobool948, label %if.end.950, label %if.then.949

if.then.949:                                      ; preds = %land.lhs.true.947
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.950

if.end.950:                                       ; preds = %if.then.949, %land.lhs.true.947, %sw.bb.941
  %531 = load %union.tree_node*, %union.tree_node** %type943, align 8
  %532 = load %union.tree_node*, %union.tree_node** %constructor, align 8
  %call951 = call %union.tree_node* @build_compound_literal(%union.tree_node* %531, %union.tree_node* %532)
  %ttype952 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call951, %union.tree_node** %ttype952, align 8
  br label %sw.epilog

sw.bb.953:                                        ; preds = %if.end.170
  %533 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx955 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %533, i64 -1
  %ttype956 = bitcast %union.YYSTYPE* %arrayidx955 to %union.tree_node**
  %534 = load %union.tree_node*, %union.tree_node** %ttype956, align 8
  %common957 = bitcast %union.tree_node* %534 to %struct.tree_common*
  %code958 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common957, i32 0, i32 2
  %bf.load959 = load i32, i32* %code958, align 8
  %bf.clear960 = and i32 %bf.load959, 255
  %idxprom961 = sext i32 %bf.clear960 to i64
  %arrayidx962 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom961
  %535 = load i8, i8* %arrayidx962, align 1
  store i8 %535, i8* %class954, align 1
  %536 = load i8, i8* %class954, align 1
  %conv963 = sext i8 %536 to i32
  %cmp964 = icmp eq i32 %conv963, 60
  br i1 %cmp964, label %if.then.978, label %lor.lhs.false.966

lor.lhs.false.966:                                ; preds = %sw.bb.953
  %537 = load i8, i8* %class954, align 1
  %conv967 = sext i8 %537 to i32
  %cmp968 = icmp eq i32 %conv967, 49
  br i1 %cmp968, label %if.then.978, label %lor.lhs.false.970

lor.lhs.false.970:                                ; preds = %lor.lhs.false.966
  %538 = load i8, i8* %class954, align 1
  %conv971 = sext i8 %538 to i32
  %cmp972 = icmp eq i32 %conv971, 50
  br i1 %cmp972, label %if.then.978, label %lor.lhs.false.974

lor.lhs.false.974:                                ; preds = %lor.lhs.false.970
  %539 = load i8, i8* %class954, align 1
  %conv975 = sext i8 %539 to i32
  %cmp976 = icmp eq i32 %conv975, 101
  br i1 %cmp976, label %if.then.978, label %if.end.983

if.then.978:                                      ; preds = %lor.lhs.false.974, %lor.lhs.false.970, %lor.lhs.false.966, %sw.bb.953
  %540 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx979 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %540, i64 -1
  %ttype980 = bitcast %union.YYSTYPE* %arrayidx979 to %union.tree_node**
  %541 = load %union.tree_node*, %union.tree_node** %ttype980, align 8
  %exp981 = bitcast %union.tree_node* %541 to %struct.tree_exp*
  %complexity982 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp981, i32 0, i32 1
  store i32 0, i32* %complexity982, align 4
  br label %if.end.983

if.end.983:                                       ; preds = %if.then.978, %lor.lhs.false.974
  %542 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx984 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %542, i64 -1
  %ttype985 = bitcast %union.YYSTYPE* %arrayidx984 to %union.tree_node**
  %543 = load %union.tree_node*, %union.tree_node** %ttype985, align 8
  %ttype986 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %543, %union.tree_node** %ttype986, align 8
  br label %sw.epilog

sw.bb.987:                                        ; preds = %if.end.170
  %544 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %ttype988 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %544, %union.tree_node** %ttype988, align 8
  br label %sw.epilog

sw.bb.989:                                        ; preds = %if.end.170
  %545 = load i32, i32* @pedantic, align 4
  %tobool990 = icmp ne i32 %545, 0
  br i1 %tobool990, label %if.then.991, label %if.end.992

if.then.991:                                      ; preds = %sw.bb.989
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.992

if.end.992:                                       ; preds = %if.then.991, %sw.bb.989
  call void @pop_label_level()
  %546 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx993 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %546, i64 -2
  %ttype994 = bitcast %union.YYSTYPE* %arrayidx993 to %union.tree_node**
  %547 = load %union.tree_node*, %union.tree_node** %ttype994, align 8
  %exp995 = bitcast %union.tree_node* %547 to %struct.tree_exp*
  %operands996 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp995, i32 0, i32 2
  %arrayidx997 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands996, i32 0, i64 0
  %548 = load %union.tree_node*, %union.tree_node** %arrayidx997, align 8
  store %union.tree_node* %548, %union.tree_node** %saved_last_tree, align 8
  br label %do.body.998

do.body.998:                                      ; preds = %if.end.992
  %549 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx999 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %549, i64 -2
  %ttype1000 = bitcast %union.YYSTYPE* %arrayidx999 to %union.tree_node**
  %550 = load %union.tree_node*, %union.tree_node** %ttype1000, align 8
  %common1001 = bitcast %union.tree_node* %550 to %struct.tree_common*
  %chain1002 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1001, i32 0, i32 0
  %551 = load %union.tree_node*, %union.tree_node** %chain1002, align 8
  %552 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1003 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %552, i64 -2
  %ttype1004 = bitcast %union.YYSTYPE* %arrayidx1003 to %union.tree_node**
  %553 = load %union.tree_node*, %union.tree_node** %ttype1004, align 8
  %exp1005 = bitcast %union.tree_node* %553 to %struct.tree_exp*
  %operands1006 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1005, i32 0, i32 2
  %arrayidx1007 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands1006, i32 0, i64 0
  store %union.tree_node* %551, %union.tree_node** %arrayidx1007, align 8
  %554 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1008 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %554, i64 -2
  %ttype1009 = bitcast %union.YYSTYPE* %arrayidx1008 to %union.tree_node**
  %555 = load %union.tree_node*, %union.tree_node** %ttype1009, align 8
  %common1010 = bitcast %union.tree_node* %555 to %struct.tree_common*
  %chain1011 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1010, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %chain1011, align 8
  %556 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1012 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %556, i64 -2
  %ttype1013 = bitcast %union.YYSTYPE* %arrayidx1012 to %union.tree_node**
  %557 = load %union.tree_node*, %union.tree_node** %ttype1013, align 8
  %call1014 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call1014, i32 0, i32 0
  store %union.tree_node* %557, %union.tree_node** %x_last_stmt, align 8
  br label %do.end.1015

do.end.1015:                                      ; preds = %do.body.998
  %558 = load %union.tree_node*, %union.tree_node** %saved_last_tree, align 8
  %call1016 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt1017 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call1016, i32 0, i32 0
  store %union.tree_node* %558, %union.tree_node** %x_last_stmt1017, align 8
  %call1018 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt1019 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call1018, i32 0, i32 0
  %559 = load %union.tree_node*, %union.tree_node** %x_last_stmt1019, align 8
  %common1020 = bitcast %union.tree_node* %559 to %struct.tree_common*
  %chain1021 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1020, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %chain1021, align 8
  %call1022 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_expr_type = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call1022, i32 0, i32 1
  %560 = load %union.tree_node*, %union.tree_node** %x_last_expr_type, align 8
  %tobool1023 = icmp ne %union.tree_node* %560, null
  br i1 %tobool1023, label %if.end.1027, label %if.then.1024

if.then.1024:                                     ; preds = %do.end.1015
  %561 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %call1025 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_expr_type1026 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call1025, i32 0, i32 1
  store %union.tree_node* %561, %union.tree_node** %x_last_expr_type1026, align 8
  br label %if.end.1027

if.end.1027:                                      ; preds = %if.then.1024, %do.end.1015
  %call1028 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_expr_type1029 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call1028, i32 0, i32 1
  %562 = load %union.tree_node*, %union.tree_node** %x_last_expr_type1029, align 8
  %563 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1030 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %563, i64 -2
  %ttype1031 = bitcast %union.YYSTYPE* %arrayidx1030 to %union.tree_node**
  %564 = load %union.tree_node*, %union.tree_node** %ttype1031, align 8
  %call1032 = call %union.tree_node* @build1(i32 169, %union.tree_node* %562, %union.tree_node* %564)
  %ttype1033 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1032, %union.tree_node** %ttype1033, align 8
  %ttype1034 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %565 = load %union.tree_node*, %union.tree_node** %ttype1034, align 8
  %common1035 = bitcast %union.tree_node* %565 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1035, i32 0, i32 2
  %bf.load1036 = load i32, i32* %side_effects_flag, align 8
  %bf.clear1037 = and i32 %bf.load1036, -257
  %bf.set = or i32 %bf.clear1037, 256
  store i32 %bf.set, i32* %side_effects_flag, align 8
  br label %sw.epilog

sw.bb.1038:                                       ; preds = %if.end.170
  call void @pop_label_level()
  %566 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1039 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %566, i64 -2
  %ttype1040 = bitcast %union.YYSTYPE* %arrayidx1039 to %union.tree_node**
  %567 = load %union.tree_node*, %union.tree_node** %ttype1040, align 8
  %exp1041 = bitcast %union.tree_node* %567 to %struct.tree_exp*
  %operands1042 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1041, i32 0, i32 2
  %arrayidx1043 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands1042, i32 0, i64 0
  %568 = load %union.tree_node*, %union.tree_node** %arrayidx1043, align 8
  %call1044 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt1045 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call1044, i32 0, i32 0
  store %union.tree_node* %568, %union.tree_node** %x_last_stmt1045, align 8
  %call1046 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt1047 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call1046, i32 0, i32 0
  %569 = load %union.tree_node*, %union.tree_node** %x_last_stmt1047, align 8
  %common1048 = bitcast %union.tree_node* %569 to %struct.tree_common*
  %chain1049 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1048, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %chain1049, align 8
  %570 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %ttype1050 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %570, %union.tree_node** %ttype1050, align 8
  br label %sw.epilog

sw.bb.1051:                                       ; preds = %if.end.170
  %571 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1052 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %571, i64 -3
  %ttype1053 = bitcast %union.YYSTYPE* %arrayidx1052 to %union.tree_node**
  %572 = load %union.tree_node*, %union.tree_node** %ttype1053, align 8
  %573 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1054 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %573, i64 -1
  %ttype1055 = bitcast %union.YYSTYPE* %arrayidx1054 to %union.tree_node**
  %574 = load %union.tree_node*, %union.tree_node** %ttype1055, align 8
  %call1056 = call %union.tree_node* @build_function_call(%union.tree_node* %572, %union.tree_node* %574)
  %ttype1057 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1056, %union.tree_node** %ttype1057, align 8
  br label %sw.epilog

sw.bb.1058:                                       ; preds = %if.end.170
  %575 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1059 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %575, i64 -3
  %ttype1060 = bitcast %union.YYSTYPE* %arrayidx1059 to %union.tree_node**
  %576 = load %union.tree_node*, %union.tree_node** %ttype1060, align 8
  %577 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1061 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %577, i64 -1
  %ttype1062 = bitcast %union.YYSTYPE* %arrayidx1061 to %union.tree_node**
  %578 = load %union.tree_node*, %union.tree_node** %ttype1062, align 8
  %call1063 = call %union.tree_node* @groktypename(%union.tree_node* %578)
  %call1064 = call %union.tree_node* @build_va_arg(%union.tree_node* %576, %union.tree_node* %call1063)
  %ttype1065 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1064, %union.tree_node** %ttype1065, align 8
  br label %sw.epilog

sw.bb.1066:                                       ; preds = %if.end.170
  %579 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1067 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %579, i64 -5
  %ttype1068 = bitcast %union.YYSTYPE* %arrayidx1067 to %union.tree_node**
  %580 = load %union.tree_node*, %union.tree_node** %ttype1068, align 8
  %call1069 = call %union.tree_node* @fold(%union.tree_node* %580)
  store %union.tree_node* %call1069, %union.tree_node** %c, align 8
  br label %while.cond.1070

while.cond.1070:                                  ; preds = %while.body.1118, %sw.bb.1066
  %581 = load %union.tree_node*, %union.tree_node** %c, align 8
  %common1071 = bitcast %union.tree_node* %581 to %struct.tree_common*
  %code1072 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1071, i32 0, i32 2
  %bf.load1073 = load i32, i32* %code1072, align 8
  %bf.clear1074 = and i32 %bf.load1073, 255
  %cmp1075 = icmp eq i32 %bf.clear1074, 115
  br i1 %cmp1075, label %land.lhs.true.1091, label %lor.lhs.false.1077

lor.lhs.false.1077:                               ; preds = %while.cond.1070
  %582 = load %union.tree_node*, %union.tree_node** %c, align 8
  %common1078 = bitcast %union.tree_node* %582 to %struct.tree_common*
  %code1079 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1078, i32 0, i32 2
  %bf.load1080 = load i32, i32* %code1079, align 8
  %bf.clear1081 = and i32 %bf.load1080, 255
  %cmp1082 = icmp eq i32 %bf.clear1081, 114
  br i1 %cmp1082, label %land.lhs.true.1091, label %lor.lhs.false.1084

lor.lhs.false.1084:                               ; preds = %lor.lhs.false.1077
  %583 = load %union.tree_node*, %union.tree_node** %c, align 8
  %common1085 = bitcast %union.tree_node* %583 to %struct.tree_common*
  %code1086 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1085, i32 0, i32 2
  %bf.load1087 = load i32, i32* %code1086, align 8
  %bf.clear1088 = and i32 %bf.load1087, 255
  %cmp1089 = icmp eq i32 %bf.clear1088, 116
  br i1 %cmp1089, label %land.lhs.true.1091, label %land.end.1117

land.lhs.true.1091:                               ; preds = %lor.lhs.false.1084, %lor.lhs.false.1077, %while.cond.1070
  %584 = load %union.tree_node*, %union.tree_node** %c, align 8
  %exp1092 = bitcast %union.tree_node* %584 to %struct.tree_exp*
  %operands1093 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1092, i32 0, i32 2
  %arrayidx1094 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands1093, i32 0, i64 0
  %585 = load %union.tree_node*, %union.tree_node** %arrayidx1094, align 8
  %586 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp1095 = icmp ne %union.tree_node* %585, %586
  br i1 %cmp1095, label %land.rhs.1097, label %land.end.1117

land.rhs.1097:                                    ; preds = %land.lhs.true.1091
  %587 = load %union.tree_node*, %union.tree_node** %c, align 8
  %common1098 = bitcast %union.tree_node* %587 to %struct.tree_common*
  %type1099 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1098, i32 0, i32 1
  %588 = load %union.tree_node*, %union.tree_node** %type1099, align 8
  %type1100 = bitcast %union.tree_node* %588 to %struct.tree_type*
  %mode1101 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1100, i32 0, i32 6
  %bf.load1102 = load i32, i32* %mode1101, align 4
  %bf.lshr1103 = lshr i32 %bf.load1102, 9
  %bf.clear1104 = and i32 %bf.lshr1103, 127
  %589 = load %union.tree_node*, %union.tree_node** %c, align 8
  %exp1105 = bitcast %union.tree_node* %589 to %struct.tree_exp*
  %operands1106 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1105, i32 0, i32 2
  %arrayidx1107 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands1106, i32 0, i64 0
  %590 = load %union.tree_node*, %union.tree_node** %arrayidx1107, align 8
  %common1108 = bitcast %union.tree_node* %590 to %struct.tree_common*
  %type1109 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1108, i32 0, i32 1
  %591 = load %union.tree_node*, %union.tree_node** %type1109, align 8
  %type1110 = bitcast %union.tree_node* %591 to %struct.tree_type*
  %mode1111 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1110, i32 0, i32 6
  %bf.load1112 = load i32, i32* %mode1111, align 4
  %bf.lshr1113 = lshr i32 %bf.load1112, 9
  %bf.clear1114 = and i32 %bf.lshr1113, 127
  %cmp1115 = icmp eq i32 %bf.clear1104, %bf.clear1114
  br label %land.end.1117

land.end.1117:                                    ; preds = %land.rhs.1097, %land.lhs.true.1091, %lor.lhs.false.1084
  %592 = phi i1 [ false, %land.lhs.true.1091 ], [ false, %lor.lhs.false.1084 ], [ %cmp1115, %land.rhs.1097 ]
  br i1 %592, label %while.body.1118, label %while.end.1122

while.body.1118:                                  ; preds = %land.end.1117
  %593 = load %union.tree_node*, %union.tree_node** %c, align 8
  %exp1119 = bitcast %union.tree_node* %593 to %struct.tree_exp*
  %operands1120 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1119, i32 0, i32 2
  %arrayidx1121 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands1120, i32 0, i64 0
  %594 = load %union.tree_node*, %union.tree_node** %arrayidx1121, align 8
  store %union.tree_node* %594, %union.tree_node** %c, align 8
  br label %while.cond.1070

while.end.1122:                                   ; preds = %land.end.1117
  %595 = load %union.tree_node*, %union.tree_node** %c, align 8
  %common1123 = bitcast %union.tree_node* %595 to %struct.tree_common*
  %code1124 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1123, i32 0, i32 2
  %bf.load1125 = load i32, i32* %code1124, align 8
  %bf.clear1126 = and i32 %bf.load1125, 255
  %cmp1127 = icmp ne i32 %bf.clear1126, 25
  br i1 %cmp1127, label %if.then.1129, label %if.end.1130

if.then.1129:                                     ; preds = %while.end.1122
  call void (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.1130

if.end.1130:                                      ; preds = %if.then.1129, %while.end.1122
  %596 = load %union.tree_node*, %union.tree_node** %c, align 8
  %call1131 = call i32 @integer_zerop(%union.tree_node* %596)
  %tobool1132 = icmp ne i32 %call1131, 0
  br i1 %tobool1132, label %cond.true.1133, label %cond.false.1136

cond.true.1133:                                   ; preds = %if.end.1130
  %597 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1134 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %597, i64 -1
  %ttype1135 = bitcast %union.YYSTYPE* %arrayidx1134 to %union.tree_node**
  %598 = load %union.tree_node*, %union.tree_node** %ttype1135, align 8
  br label %cond.end.1139

cond.false.1136:                                  ; preds = %if.end.1130
  %599 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1137 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %599, i64 -3
  %ttype1138 = bitcast %union.YYSTYPE* %arrayidx1137 to %union.tree_node**
  %600 = load %union.tree_node*, %union.tree_node** %ttype1138, align 8
  br label %cond.end.1139

cond.end.1139:                                    ; preds = %cond.false.1136, %cond.true.1133
  %cond1140 = phi %union.tree_node* [ %598, %cond.true.1133 ], [ %600, %cond.false.1136 ]
  %ttype1141 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %cond1140, %union.tree_node** %ttype1141, align 8
  br label %sw.epilog

sw.bb.1142:                                       ; preds = %if.end.170
  %601 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1143 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %601, i64 -3
  %ttype1144 = bitcast %union.YYSTYPE* %arrayidx1143 to %union.tree_node**
  %602 = load %union.tree_node*, %union.tree_node** %ttype1144, align 8
  %call1145 = call %union.tree_node* @groktypename(%union.tree_node* %602)
  %type1146 = bitcast %union.tree_node* %call1145 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1146, i32 0, i32 15
  %603 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  store %union.tree_node* %603, %union.tree_node** %e1, align 8
  %604 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1147 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %604, i64 -1
  %ttype1148 = bitcast %union.YYSTYPE* %arrayidx1147 to %union.tree_node**
  %605 = load %union.tree_node*, %union.tree_node** %ttype1148, align 8
  %call1149 = call %union.tree_node* @groktypename(%union.tree_node* %605)
  %type1150 = bitcast %union.tree_node* %call1149 to %struct.tree_type*
  %main_variant1151 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1150, i32 0, i32 15
  %606 = load %union.tree_node*, %union.tree_node** %main_variant1151, align 8
  store %union.tree_node* %606, %union.tree_node** %e2, align 8
  %607 = load %union.tree_node*, %union.tree_node** %e1, align 8
  %608 = load %union.tree_node*, %union.tree_node** %e2, align 8
  %call1152 = call i32 @comptypes(%union.tree_node* %607, %union.tree_node* %608)
  %tobool1153 = icmp ne i32 %call1152, 0
  br i1 %tobool1153, label %cond.true.1154, label %cond.false.1156

cond.true.1154:                                   ; preds = %sw.bb.1142
  %call1155 = call %union.tree_node* @build_int_2_wide(i64 1, i64 0)
  br label %cond.end.1158

cond.false.1156:                                  ; preds = %sw.bb.1142
  %call1157 = call %union.tree_node* @build_int_2_wide(i64 0, i64 0)
  br label %cond.end.1158

cond.end.1158:                                    ; preds = %cond.false.1156, %cond.true.1154
  %cond1159 = phi %union.tree_node* [ %call1155, %cond.true.1154 ], [ %call1157, %cond.false.1156 ]
  %ttype1160 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %cond1159, %union.tree_node** %ttype1160, align 8
  br label %sw.epilog

sw.bb.1161:                                       ; preds = %if.end.170
  %609 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1162 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %609, i64 -3
  %ttype1163 = bitcast %union.YYSTYPE* %arrayidx1162 to %union.tree_node**
  %610 = load %union.tree_node*, %union.tree_node** %ttype1163, align 8
  %611 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1164 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %611, i64 -1
  %ttype1165 = bitcast %union.YYSTYPE* %arrayidx1164 to %union.tree_node**
  %612 = load %union.tree_node*, %union.tree_node** %ttype1165, align 8
  %call1166 = call %union.tree_node* @build_array_ref(%union.tree_node* %610, %union.tree_node* %612)
  %ttype1167 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1166, %union.tree_node** %ttype1167, align 8
  br label %sw.epilog

sw.bb.1168:                                       ; preds = %if.end.170
  %613 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1169 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %613, i64 -2
  %ttype1170 = bitcast %union.YYSTYPE* %arrayidx1169 to %union.tree_node**
  %614 = load %union.tree_node*, %union.tree_node** %ttype1170, align 8
  %615 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1171 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %615, i64 0
  %ttype1172 = bitcast %union.YYSTYPE* %arrayidx1171 to %union.tree_node**
  %616 = load %union.tree_node*, %union.tree_node** %ttype1172, align 8
  %call1173 = call %union.tree_node* @build_component_ref(%union.tree_node* %614, %union.tree_node* %616)
  %ttype1174 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1173, %union.tree_node** %ttype1174, align 8
  br label %sw.epilog

sw.bb.1175:                                       ; preds = %if.end.170
  %617 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1176 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %617, i64 -2
  %ttype1177 = bitcast %union.YYSTYPE* %arrayidx1176 to %union.tree_node**
  %618 = load %union.tree_node*, %union.tree_node** %ttype1177, align 8
  %call1178 = call %union.tree_node* @build_indirect_ref(%union.tree_node* %618, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  store %union.tree_node* %call1178, %union.tree_node** %expr, align 8
  %619 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %620 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1179 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %620, i64 0
  %ttype1180 = bitcast %union.YYSTYPE* %arrayidx1179 to %union.tree_node**
  %621 = load %union.tree_node*, %union.tree_node** %ttype1180, align 8
  %call1181 = call %union.tree_node* @build_component_ref(%union.tree_node* %619, %union.tree_node* %621)
  %ttype1182 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1181, %union.tree_node** %ttype1182, align 8
  br label %sw.epilog

sw.bb.1183:                                       ; preds = %if.end.170
  %622 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1184 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %622, i64 -1
  %ttype1185 = bitcast %union.YYSTYPE* %arrayidx1184 to %union.tree_node**
  %623 = load %union.tree_node*, %union.tree_node** %ttype1185, align 8
  %call1186 = call %union.tree_node* @build_unary_op(i32 132, %union.tree_node* %623, i32 0)
  %ttype1187 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1186, %union.tree_node** %ttype1187, align 8
  br label %sw.epilog

sw.bb.1188:                                       ; preds = %if.end.170
  %624 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1189 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %624, i64 -1
  %ttype1190 = bitcast %union.YYSTYPE* %arrayidx1189 to %union.tree_node**
  %625 = load %union.tree_node*, %union.tree_node** %ttype1190, align 8
  %call1191 = call %union.tree_node* @build_unary_op(i32 131, %union.tree_node* %625, i32 0)
  %ttype1192 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1191, %union.tree_node** %ttype1192, align 8
  br label %sw.epilog

sw.bb.1193:                                       ; preds = %if.end.170
  %626 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1194 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %626, i64 -1
  %ttype1195 = bitcast %union.YYSTYPE* %arrayidx1194 to %union.tree_node**
  %627 = load %union.tree_node*, %union.tree_node** %ttype1195, align 8
  %628 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1196 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %628, i64 0
  %ttype1197 = bitcast %union.YYSTYPE* %arrayidx1196 to %union.tree_node**
  %629 = load %union.tree_node*, %union.tree_node** %ttype1197, align 8
  %call1198 = call %union.tree_node* @chainon(%union.tree_node* %627, %union.tree_node* %629)
  %ttype1199 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1198, %union.tree_node** %ttype1199, align 8
  %630 = load i32, i32* @warn_traditional, align 4
  %tobool1200 = icmp ne i32 %630, 0
  br i1 %tobool1200, label %land.lhs.true.1201, label %if.end.1212

land.lhs.true.1201:                               ; preds = %sw.bb.1193
  %631 = load i32, i32* @in_system_header, align 4
  %tobool1202 = icmp ne i32 %631, 0
  br i1 %tobool1202, label %if.end.1212, label %land.lhs.true.1203

land.lhs.true.1203:                               ; preds = %land.lhs.true.1201
  %632 = load i32, i32* @lineno, align 4
  %633 = load i32, i32* @yyparse_1.last_lineno, align 4
  %cmp1204 = icmp ne i32 %632, %633
  br i1 %cmp1204, label %if.then.1211, label %lor.lhs.false.1206

lor.lhs.false.1206:                               ; preds = %land.lhs.true.1203
  %634 = load i8*, i8** @yyparse_1.last_input_filename, align 8
  %tobool1207 = icmp ne i8* %634, null
  br i1 %tobool1207, label %lor.lhs.false.1208, label %if.then.1211

lor.lhs.false.1208:                               ; preds = %lor.lhs.false.1206
  %635 = load i8*, i8** @yyparse_1.last_input_filename, align 8
  %636 = load i8*, i8** @input_filename, align 8
  %call1209 = call i32 @strcmp(i8* %635, i8* %636) #7
  %tobool1210 = icmp ne i32 %call1209, 0
  br i1 %tobool1210, label %if.then.1211, label %if.end.1212

if.then.1211:                                     ; preds = %lor.lhs.false.1208, %lor.lhs.false.1206, %land.lhs.true.1203
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i32 0, i32 0))
  %637 = load i32, i32* @lineno, align 4
  store i32 %637, i32* @yyparse_1.last_lineno, align 4
  %638 = load i8*, i8** @input_filename, align 8
  store i8* %638, i8** @yyparse_1.last_input_filename, align 8
  br label %if.end.1212

if.end.1212:                                      ; preds = %if.then.1211, %lor.lhs.false.1208, %land.lhs.true.1201, %sw.bb.1193
  br label %sw.epilog

sw.bb.1213:                                       ; preds = %if.end.170
  call void @c_mark_varargs()
  %639 = load i32, i32* @pedantic, align 4
  %tobool1214 = icmp ne i32 %639, 0
  br i1 %tobool1214, label %if.then.1215, label %if.end.1216

if.then.1215:                                     ; preds = %sw.bb.1213
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.1216

if.end.1216:                                      ; preds = %if.then.1215, %sw.bb.1213
  br label %sw.epilog

sw.bb.1217:                                       ; preds = %if.end.170
  br label %sw.epilog

sw.bb.1218:                                       ; preds = %if.end.170
  br label %do.body.1219

do.body.1219:                                     ; preds = %sw.bb.1218
  %640 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1220 = bitcast %union.tree_node* %640 to %struct.tree_list*
  %value1221 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1220, i32 0, i32 2
  %641 = load %union.tree_node*, %union.tree_node** %value1221, align 8
  store %union.tree_node* %641, %union.tree_node** @current_declspecs, align 8
  %642 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1222 = bitcast %union.tree_node* %642 to %struct.tree_list*
  %purpose1223 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1222, i32 0, i32 1
  %643 = load %union.tree_node*, %union.tree_node** %purpose1223, align 8
  %list1224 = bitcast %union.tree_node* %643 to %struct.tree_list*
  %purpose1225 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1224, i32 0, i32 1
  %644 = load %union.tree_node*, %union.tree_node** %purpose1225, align 8
  store %union.tree_node* %644, %union.tree_node** @prefix_attributes, align 8
  %645 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1226 = bitcast %union.tree_node* %645 to %struct.tree_list*
  %purpose1227 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1226, i32 0, i32 1
  %646 = load %union.tree_node*, %union.tree_node** %purpose1227, align 8
  %list1228 = bitcast %union.tree_node* %646 to %struct.tree_list*
  %value1229 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1228, i32 0, i32 2
  %647 = load %union.tree_node*, %union.tree_node** %value1229, align 8
  store %union.tree_node* %647, %union.tree_node** @all_prefix_attributes, align 8
  %648 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common1230 = bitcast %union.tree_node* %648 to %struct.tree_common*
  %chain1231 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1230, i32 0, i32 0
  %649 = load %union.tree_node*, %union.tree_node** %chain1231, align 8
  store %union.tree_node* %649, %union.tree_node** @declspec_stack, align 8
  br label %do.end.1232

do.end.1232:                                      ; preds = %do.body.1219
  br label %sw.epilog

sw.bb.1233:                                       ; preds = %if.end.170
  br label %do.body.1234

do.body.1234:                                     ; preds = %sw.bb.1233
  %650 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1235 = bitcast %union.tree_node* %650 to %struct.tree_list*
  %value1236 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1235, i32 0, i32 2
  %651 = load %union.tree_node*, %union.tree_node** %value1236, align 8
  store %union.tree_node* %651, %union.tree_node** @current_declspecs, align 8
  %652 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1237 = bitcast %union.tree_node* %652 to %struct.tree_list*
  %purpose1238 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1237, i32 0, i32 1
  %653 = load %union.tree_node*, %union.tree_node** %purpose1238, align 8
  %list1239 = bitcast %union.tree_node* %653 to %struct.tree_list*
  %purpose1240 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1239, i32 0, i32 1
  %654 = load %union.tree_node*, %union.tree_node** %purpose1240, align 8
  store %union.tree_node* %654, %union.tree_node** @prefix_attributes, align 8
  %655 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1241 = bitcast %union.tree_node* %655 to %struct.tree_list*
  %purpose1242 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1241, i32 0, i32 1
  %656 = load %union.tree_node*, %union.tree_node** %purpose1242, align 8
  %list1243 = bitcast %union.tree_node* %656 to %struct.tree_list*
  %value1244 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1243, i32 0, i32 2
  %657 = load %union.tree_node*, %union.tree_node** %value1244, align 8
  store %union.tree_node* %657, %union.tree_node** @all_prefix_attributes, align 8
  %658 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common1245 = bitcast %union.tree_node* %658 to %struct.tree_common*
  %chain1246 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1245, i32 0, i32 0
  %659 = load %union.tree_node*, %union.tree_node** %chain1246, align 8
  store %union.tree_node* %659, %union.tree_node** @declspec_stack, align 8
  br label %do.end.1247

do.end.1247:                                      ; preds = %do.body.1234
  br label %sw.epilog

sw.bb.1248:                                       ; preds = %if.end.170
  %660 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1249 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %660, i64 -1
  %ttype1250 = bitcast %union.YYSTYPE* %arrayidx1249 to %union.tree_node**
  %661 = load %union.tree_node*, %union.tree_node** %ttype1250, align 8
  call void @shadow_tag_warned(%union.tree_node* %661, i32 1)
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0))
  br label %sw.epilog

sw.bb.1251:                                       ; preds = %if.end.170
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0))
  br label %sw.epilog

sw.bb.1252:                                       ; preds = %if.end.170
  br label %sw.epilog

sw.bb.1253:                                       ; preds = %if.end.170
  call void @pending_xref_error()
  br label %do.body.1254

do.body.1254:                                     ; preds = %sw.bb.1253
  %662 = load %union.tree_node*, %union.tree_node** @prefix_attributes, align 8
  %663 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call1255 = call %union.tree_node* @build_tree_list(%union.tree_node* %662, %union.tree_node* %663)
  %664 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %665 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %call1256 = call %union.tree_node* @tree_cons(%union.tree_node* %call1255, %union.tree_node* %664, %union.tree_node* %665)
  store %union.tree_node* %call1256, %union.tree_node** @declspec_stack, align 8
  br label %do.end.1257

do.end.1257:                                      ; preds = %do.body.1254
  %666 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1258 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %666, i64 0
  %ttype1259 = bitcast %union.YYSTYPE* %arrayidx1258 to %union.tree_node**
  %667 = load %union.tree_node*, %union.tree_node** %ttype1259, align 8
  call void @split_specs_attrs(%union.tree_node* %667, %union.tree_node** @current_declspecs, %union.tree_node** @prefix_attributes)
  %668 = load %union.tree_node*, %union.tree_node** @prefix_attributes, align 8
  store %union.tree_node* %668, %union.tree_node** @all_prefix_attributes, align 8
  br label %sw.epilog

sw.bb.1260:                                       ; preds = %if.end.170
  %669 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1261 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %669, i64 0
  %ttype1262 = bitcast %union.YYSTYPE* %arrayidx1261 to %union.tree_node**
  %670 = load %union.tree_node*, %union.tree_node** %ttype1262, align 8
  %671 = load %union.tree_node*, %union.tree_node** @prefix_attributes, align 8
  %call1263 = call %union.tree_node* @chainon(%union.tree_node* %670, %union.tree_node* %671)
  store %union.tree_node* %call1263, %union.tree_node** @all_prefix_attributes, align 8
  br label %sw.epilog

sw.bb.1264:                                       ; preds = %if.end.170
  br label %do.body.1265

do.body.1265:                                     ; preds = %sw.bb.1264
  %672 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1266 = bitcast %union.tree_node* %672 to %struct.tree_list*
  %value1267 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1266, i32 0, i32 2
  %673 = load %union.tree_node*, %union.tree_node** %value1267, align 8
  store %union.tree_node* %673, %union.tree_node** @current_declspecs, align 8
  %674 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1268 = bitcast %union.tree_node* %674 to %struct.tree_list*
  %purpose1269 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1268, i32 0, i32 1
  %675 = load %union.tree_node*, %union.tree_node** %purpose1269, align 8
  %list1270 = bitcast %union.tree_node* %675 to %struct.tree_list*
  %purpose1271 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1270, i32 0, i32 1
  %676 = load %union.tree_node*, %union.tree_node** %purpose1271, align 8
  store %union.tree_node* %676, %union.tree_node** @prefix_attributes, align 8
  %677 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1272 = bitcast %union.tree_node* %677 to %struct.tree_list*
  %purpose1273 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1272, i32 0, i32 1
  %678 = load %union.tree_node*, %union.tree_node** %purpose1273, align 8
  %list1274 = bitcast %union.tree_node* %678 to %struct.tree_list*
  %value1275 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1274, i32 0, i32 2
  %679 = load %union.tree_node*, %union.tree_node** %value1275, align 8
  store %union.tree_node* %679, %union.tree_node** @all_prefix_attributes, align 8
  %680 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common1276 = bitcast %union.tree_node* %680 to %struct.tree_common*
  %chain1277 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1276, i32 0, i32 0
  %681 = load %union.tree_node*, %union.tree_node** %chain1277, align 8
  store %union.tree_node* %681, %union.tree_node** @declspec_stack, align 8
  br label %do.end.1278

do.end.1278:                                      ; preds = %do.body.1265
  br label %sw.epilog

sw.bb.1279:                                       ; preds = %if.end.170
  br label %do.body.1280

do.body.1280:                                     ; preds = %sw.bb.1279
  %682 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1281 = bitcast %union.tree_node* %682 to %struct.tree_list*
  %value1282 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1281, i32 0, i32 2
  %683 = load %union.tree_node*, %union.tree_node** %value1282, align 8
  store %union.tree_node* %683, %union.tree_node** @current_declspecs, align 8
  %684 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1283 = bitcast %union.tree_node* %684 to %struct.tree_list*
  %purpose1284 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1283, i32 0, i32 1
  %685 = load %union.tree_node*, %union.tree_node** %purpose1284, align 8
  %list1285 = bitcast %union.tree_node* %685 to %struct.tree_list*
  %purpose1286 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1285, i32 0, i32 1
  %686 = load %union.tree_node*, %union.tree_node** %purpose1286, align 8
  store %union.tree_node* %686, %union.tree_node** @prefix_attributes, align 8
  %687 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1287 = bitcast %union.tree_node* %687 to %struct.tree_list*
  %purpose1288 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1287, i32 0, i32 1
  %688 = load %union.tree_node*, %union.tree_node** %purpose1288, align 8
  %list1289 = bitcast %union.tree_node* %688 to %struct.tree_list*
  %value1290 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1289, i32 0, i32 2
  %689 = load %union.tree_node*, %union.tree_node** %value1290, align 8
  store %union.tree_node* %689, %union.tree_node** @all_prefix_attributes, align 8
  %690 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common1291 = bitcast %union.tree_node* %690 to %struct.tree_common*
  %chain1292 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1291, i32 0, i32 0
  %691 = load %union.tree_node*, %union.tree_node** %chain1292, align 8
  store %union.tree_node* %691, %union.tree_node** @declspec_stack, align 8
  br label %do.end.1293

do.end.1293:                                      ; preds = %do.body.1280
  br label %sw.epilog

sw.bb.1294:                                       ; preds = %if.end.170
  br label %do.body.1295

do.body.1295:                                     ; preds = %sw.bb.1294
  %692 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1296 = bitcast %union.tree_node* %692 to %struct.tree_list*
  %value1297 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1296, i32 0, i32 2
  %693 = load %union.tree_node*, %union.tree_node** %value1297, align 8
  store %union.tree_node* %693, %union.tree_node** @current_declspecs, align 8
  %694 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1298 = bitcast %union.tree_node* %694 to %struct.tree_list*
  %purpose1299 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1298, i32 0, i32 1
  %695 = load %union.tree_node*, %union.tree_node** %purpose1299, align 8
  %list1300 = bitcast %union.tree_node* %695 to %struct.tree_list*
  %purpose1301 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1300, i32 0, i32 1
  %696 = load %union.tree_node*, %union.tree_node** %purpose1301, align 8
  store %union.tree_node* %696, %union.tree_node** @prefix_attributes, align 8
  %697 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1302 = bitcast %union.tree_node* %697 to %struct.tree_list*
  %purpose1303 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1302, i32 0, i32 1
  %698 = load %union.tree_node*, %union.tree_node** %purpose1303, align 8
  %list1304 = bitcast %union.tree_node* %698 to %struct.tree_list*
  %value1305 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1304, i32 0, i32 2
  %699 = load %union.tree_node*, %union.tree_node** %value1305, align 8
  store %union.tree_node* %699, %union.tree_node** @all_prefix_attributes, align 8
  %700 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common1306 = bitcast %union.tree_node* %700 to %struct.tree_common*
  %chain1307 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1306, i32 0, i32 0
  %701 = load %union.tree_node*, %union.tree_node** %chain1307, align 8
  store %union.tree_node* %701, %union.tree_node** @declspec_stack, align 8
  br label %do.end.1308

do.end.1308:                                      ; preds = %do.body.1295
  br label %sw.epilog

sw.bb.1309:                                       ; preds = %if.end.170
  br label %do.body.1310

do.body.1310:                                     ; preds = %sw.bb.1309
  %702 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1311 = bitcast %union.tree_node* %702 to %struct.tree_list*
  %value1312 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1311, i32 0, i32 2
  %703 = load %union.tree_node*, %union.tree_node** %value1312, align 8
  store %union.tree_node* %703, %union.tree_node** @current_declspecs, align 8
  %704 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1313 = bitcast %union.tree_node* %704 to %struct.tree_list*
  %purpose1314 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1313, i32 0, i32 1
  %705 = load %union.tree_node*, %union.tree_node** %purpose1314, align 8
  %list1315 = bitcast %union.tree_node* %705 to %struct.tree_list*
  %purpose1316 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1315, i32 0, i32 1
  %706 = load %union.tree_node*, %union.tree_node** %purpose1316, align 8
  store %union.tree_node* %706, %union.tree_node** @prefix_attributes, align 8
  %707 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list1317 = bitcast %union.tree_node* %707 to %struct.tree_list*
  %purpose1318 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1317, i32 0, i32 1
  %708 = load %union.tree_node*, %union.tree_node** %purpose1318, align 8
  %list1319 = bitcast %union.tree_node* %708 to %struct.tree_list*
  %value1320 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1319, i32 0, i32 2
  %709 = load %union.tree_node*, %union.tree_node** %value1320, align 8
  store %union.tree_node* %709, %union.tree_node** @all_prefix_attributes, align 8
  %710 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common1321 = bitcast %union.tree_node* %710 to %struct.tree_common*
  %chain1322 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1321, i32 0, i32 0
  %711 = load %union.tree_node*, %union.tree_node** %chain1322, align 8
  store %union.tree_node* %711, %union.tree_node** @declspec_stack, align 8
  br label %do.end.1323

do.end.1323:                                      ; preds = %do.body.1310
  br label %sw.epilog

sw.bb.1324:                                       ; preds = %if.end.170
  %712 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1325 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %712, i64 -1
  %ttype1326 = bitcast %union.YYSTYPE* %arrayidx1325 to %union.tree_node**
  %713 = load %union.tree_node*, %union.tree_node** %ttype1326, align 8
  call void @shadow_tag(%union.tree_node* %713)
  br label %sw.epilog

sw.bb.1327:                                       ; preds = %if.end.170
  br label %do.body.1328

do.body.1328:                                     ; preds = %sw.bb.1327
  %714 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1330 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %714, i64 -1
  %ttype1331 = bitcast %union.YYSTYPE* %arrayidx1330 to %union.tree_node**
  %715 = load %union.tree_node*, %union.tree_node** %ttype1331, align 8
  %call1332 = call i64 @tree_low_cst(%union.tree_node* %715, i32 0)
  %conv1333 = trunc i64 %call1332 to i32
  store i32 %conv1333, i32* %val1329, align 4
  %716 = load i32, i32* %val1329, align 4
  %and1334 = and i32 %716, 1
  store i32 %and1334, i32* @pedantic, align 4
  %717 = load i32, i32* %val1329, align 4
  %shr1335 = ashr i32 %717, 1
  %and1336 = and i32 %shr1335, 1
  store i32 %and1336, i32* @warn_pointer_arith, align 4
  %718 = load i32, i32* %val1329, align 4
  %shr1337 = ashr i32 %718, 2
  %and1338 = and i32 %shr1337, 1
  store i32 %and1338, i32* @warn_traditional, align 4
  br label %do.end.1339

do.end.1339:                                      ; preds = %do.body.1328
  br label %sw.epilog

sw.bb.1340:                                       ; preds = %if.end.170
  %719 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1341 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %719, i64 0
  %ttype1342 = bitcast %union.YYSTYPE* %arrayidx1341 to %union.tree_node**
  %720 = load %union.tree_node*, %union.tree_node** %ttype1342, align 8
  %call1343 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %720, %union.tree_node* null)
  %ttype1344 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1343, %union.tree_node** %ttype1344, align 8
  %ttype1345 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %721 = load %union.tree_node*, %union.tree_node** %ttype1345, align 8
  %common1346 = bitcast %union.tree_node* %721 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1346, i32 0, i32 2
  %bf.load1347 = load i32, i32* %static_flag, align 8
  %bf.clear1348 = and i32 %bf.load1347, -262145
  %bf.set1349 = or i32 %bf.clear1348, 262144
  store i32 %bf.set1349, i32* %static_flag, align 8
  br label %sw.epilog

sw.bb.1350:                                       ; preds = %if.end.170
  %722 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1351 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %722, i64 0
  %ttype1352 = bitcast %union.YYSTYPE* %arrayidx1351 to %union.tree_node**
  %723 = load %union.tree_node*, %union.tree_node** %ttype1352, align 8
  %724 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1353 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %724, i64 -1
  %ttype1354 = bitcast %union.YYSTYPE* %arrayidx1353 to %union.tree_node**
  %725 = load %union.tree_node*, %union.tree_node** %ttype1354, align 8
  %call1355 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %723, %union.tree_node* %725)
  %ttype1356 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1355, %union.tree_node** %ttype1356, align 8
  %ttype1357 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %726 = load %union.tree_node*, %union.tree_node** %ttype1357, align 8
  %common1358 = bitcast %union.tree_node* %726 to %struct.tree_common*
  %static_flag1359 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1358, i32 0, i32 2
  %bf.load1360 = load i32, i32* %static_flag1359, align 8
  %bf.clear1361 = and i32 %bf.load1360, -262145
  %bf.set1362 = or i32 %bf.clear1361, 262144
  store i32 %bf.set1362, i32* %static_flag1359, align 8
  br label %sw.epilog

sw.bb.1363:                                       ; preds = %if.end.170
  %727 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1364 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %727, i64 0
  %ttype1365 = bitcast %union.YYSTYPE* %arrayidx1364 to %union.tree_node**
  %728 = load %union.tree_node*, %union.tree_node** %ttype1365, align 8
  %729 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1366 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %729, i64 -1
  %ttype1367 = bitcast %union.YYSTYPE* %arrayidx1366 to %union.tree_node**
  %730 = load %union.tree_node*, %union.tree_node** %ttype1367, align 8
  %call1368 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %728, %union.tree_node* %730)
  %ttype1369 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1368, %union.tree_node** %ttype1369, align 8
  %ttype1370 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %731 = load %union.tree_node*, %union.tree_node** %ttype1370, align 8
  %common1371 = bitcast %union.tree_node* %731 to %struct.tree_common*
  %static_flag1372 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1371, i32 0, i32 2
  %bf.load1373 = load i32, i32* %static_flag1372, align 8
  %bf.clear1374 = and i32 %bf.load1373, -262145
  %bf.set1375 = or i32 %bf.clear1374, 262144
  store i32 %bf.set1375, i32* %static_flag1372, align 8
  br label %sw.epilog

sw.bb.1376:                                       ; preds = %if.end.170
  %732 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1377 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %732, i64 0
  %ttype1378 = bitcast %union.YYSTYPE* %arrayidx1377 to %union.tree_node**
  %733 = load %union.tree_node*, %union.tree_node** %ttype1378, align 8
  %734 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1379 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %734, i64 -1
  %ttype1380 = bitcast %union.YYSTYPE* %arrayidx1379 to %union.tree_node**
  %735 = load %union.tree_node*, %union.tree_node** %ttype1380, align 8
  %call1381 = call %union.tree_node* @tree_cons(%union.tree_node* %733, %union.tree_node* null, %union.tree_node* %735)
  %ttype1382 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1381, %union.tree_node** %ttype1382, align 8
  %736 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1383 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %736, i64 -1
  %ttype1384 = bitcast %union.YYSTYPE* %arrayidx1383 to %union.tree_node**
  %737 = load %union.tree_node*, %union.tree_node** %ttype1384, align 8
  %common1385 = bitcast %union.tree_node* %737 to %struct.tree_common*
  %static_flag1386 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1385, i32 0, i32 2
  %bf.load1387 = load i32, i32* %static_flag1386, align 8
  %bf.lshr1388 = lshr i32 %bf.load1387, 18
  %bf.clear1389 = and i32 %bf.lshr1388, 1
  %ttype1390 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %738 = load %union.tree_node*, %union.tree_node** %ttype1390, align 8
  %common1391 = bitcast %union.tree_node* %738 to %struct.tree_common*
  %static_flag1392 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1391, i32 0, i32 2
  %bf.load1393 = load i32, i32* %static_flag1392, align 8
  %bf.value = and i32 %bf.clear1389, 1
  %bf.shl = shl i32 %bf.value, 18
  %bf.clear1394 = and i32 %bf.load1393, -262145
  %bf.set1395 = or i32 %bf.clear1394, %bf.shl
  store i32 %bf.set1395, i32* %static_flag1392, align 8
  br label %sw.epilog

sw.bb.1396:                                       ; preds = %if.end.170
  %739 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1397 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %739, i64 0
  %ttype1398 = bitcast %union.YYSTYPE* %arrayidx1397 to %union.tree_node**
  %740 = load %union.tree_node*, %union.tree_node** %ttype1398, align 8
  %741 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1399 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %741, i64 -1
  %ttype1400 = bitcast %union.YYSTYPE* %arrayidx1399 to %union.tree_node**
  %742 = load %union.tree_node*, %union.tree_node** %ttype1400, align 8
  %call1401 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %740, %union.tree_node* %742)
  %ttype1402 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1401, %union.tree_node** %ttype1402, align 8
  %ttype1403 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %743 = load %union.tree_node*, %union.tree_node** %ttype1403, align 8
  %common1404 = bitcast %union.tree_node* %743 to %struct.tree_common*
  %static_flag1405 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1404, i32 0, i32 2
  %bf.load1406 = load i32, i32* %static_flag1405, align 8
  %bf.clear1407 = and i32 %bf.load1406, -262145
  %bf.set1408 = or i32 %bf.clear1407, 262144
  store i32 %bf.set1408, i32* %static_flag1405, align 8
  br label %sw.epilog

sw.bb.1409:                                       ; preds = %if.end.170
  %744 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1410 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %744, i64 0
  %ttype1411 = bitcast %union.YYSTYPE* %arrayidx1410 to %union.tree_node**
  %745 = load %union.tree_node*, %union.tree_node** %ttype1411, align 8
  %746 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1412 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %746, i64 -1
  %ttype1413 = bitcast %union.YYSTYPE* %arrayidx1412 to %union.tree_node**
  %747 = load %union.tree_node*, %union.tree_node** %ttype1413, align 8
  %call1414 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %745, %union.tree_node* %747)
  %ttype1415 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1414, %union.tree_node** %ttype1415, align 8
  %ttype1416 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %748 = load %union.tree_node*, %union.tree_node** %ttype1416, align 8
  %common1417 = bitcast %union.tree_node* %748 to %struct.tree_common*
  %static_flag1418 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1417, i32 0, i32 2
  %bf.load1419 = load i32, i32* %static_flag1418, align 8
  %bf.clear1420 = and i32 %bf.load1419, -262145
  %bf.set1421 = or i32 %bf.clear1420, 262144
  store i32 %bf.set1421, i32* %static_flag1418, align 8
  br label %sw.epilog

sw.bb.1422:                                       ; preds = %if.end.170
  %749 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1423 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %749, i64 0
  %ttype1424 = bitcast %union.YYSTYPE* %arrayidx1423 to %union.tree_node**
  %750 = load %union.tree_node*, %union.tree_node** %ttype1424, align 8
  %call1425 = call %union.tree_node* @tree_cons(%union.tree_node* %750, %union.tree_node* null, %union.tree_node* null)
  %ttype1426 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1425, %union.tree_node** %ttype1426, align 8
  %ttype1427 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %751 = load %union.tree_node*, %union.tree_node** %ttype1427, align 8
  %common1428 = bitcast %union.tree_node* %751 to %struct.tree_common*
  %static_flag1429 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1428, i32 0, i32 2
  %bf.load1430 = load i32, i32* %static_flag1429, align 8
  %bf.clear1431 = and i32 %bf.load1430, -262145
  store i32 %bf.clear1431, i32* %static_flag1429, align 8
  br label %sw.epilog

sw.bb.1432:                                       ; preds = %if.end.170
  %752 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1433 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %752, i64 0
  %ttype1434 = bitcast %union.YYSTYPE* %arrayidx1433 to %union.tree_node**
  %753 = load %union.tree_node*, %union.tree_node** %ttype1434, align 8
  %754 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1435 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %754, i64 -1
  %ttype1436 = bitcast %union.YYSTYPE* %arrayidx1435 to %union.tree_node**
  %755 = load %union.tree_node*, %union.tree_node** %ttype1436, align 8
  %call1437 = call %union.tree_node* @tree_cons(%union.tree_node* %753, %union.tree_node* null, %union.tree_node* %755)
  %ttype1438 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1437, %union.tree_node** %ttype1438, align 8
  %756 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1439 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %756, i64 -1
  %ttype1440 = bitcast %union.YYSTYPE* %arrayidx1439 to %union.tree_node**
  %757 = load %union.tree_node*, %union.tree_node** %ttype1440, align 8
  %common1441 = bitcast %union.tree_node* %757 to %struct.tree_common*
  %static_flag1442 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1441, i32 0, i32 2
  %bf.load1443 = load i32, i32* %static_flag1442, align 8
  %bf.lshr1444 = lshr i32 %bf.load1443, 18
  %bf.clear1445 = and i32 %bf.lshr1444, 1
  %ttype1446 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %758 = load %union.tree_node*, %union.tree_node** %ttype1446, align 8
  %common1447 = bitcast %union.tree_node* %758 to %struct.tree_common*
  %static_flag1448 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1447, i32 0, i32 2
  %bf.load1449 = load i32, i32* %static_flag1448, align 8
  %bf.value1450 = and i32 %bf.clear1445, 1
  %bf.shl1451 = shl i32 %bf.value1450, 18
  %bf.clear1452 = and i32 %bf.load1449, -262145
  %bf.set1453 = or i32 %bf.clear1452, %bf.shl1451
  store i32 %bf.set1453, i32* %static_flag1448, align 8
  br label %sw.epilog

sw.bb.1454:                                       ; preds = %if.end.170
  %759 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1455 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %759, i64 0
  %ttype1456 = bitcast %union.YYSTYPE* %arrayidx1455 to %union.tree_node**
  %760 = load %union.tree_node*, %union.tree_node** %ttype1456, align 8
  %call1457 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %760, %union.tree_node* null)
  %ttype1458 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1457, %union.tree_node** %ttype1458, align 8
  %ttype1459 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %761 = load %union.tree_node*, %union.tree_node** %ttype1459, align 8
  %common1460 = bitcast %union.tree_node* %761 to %struct.tree_common*
  %static_flag1461 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1460, i32 0, i32 2
  %bf.load1462 = load i32, i32* %static_flag1461, align 8
  %bf.clear1463 = and i32 %bf.load1462, -262145
  %bf.set1464 = or i32 %bf.clear1463, 262144
  store i32 %bf.set1464, i32* %static_flag1461, align 8
  br label %sw.epilog

sw.bb.1465:                                       ; preds = %if.end.170
  %762 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1466 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %762, i64 0
  %ttype1467 = bitcast %union.YYSTYPE* %arrayidx1466 to %union.tree_node**
  %763 = load %union.tree_node*, %union.tree_node** %ttype1467, align 8
  %764 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1468 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %764, i64 -1
  %ttype1469 = bitcast %union.YYSTYPE* %arrayidx1468 to %union.tree_node**
  %765 = load %union.tree_node*, %union.tree_node** %ttype1469, align 8
  %call1470 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %763, %union.tree_node* %765)
  %ttype1471 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1470, %union.tree_node** %ttype1471, align 8
  %ttype1472 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %766 = load %union.tree_node*, %union.tree_node** %ttype1472, align 8
  %common1473 = bitcast %union.tree_node* %766 to %struct.tree_common*
  %static_flag1474 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1473, i32 0, i32 2
  %bf.load1475 = load i32, i32* %static_flag1474, align 8
  %bf.clear1476 = and i32 %bf.load1475, -262145
  %bf.set1477 = or i32 %bf.clear1476, 262144
  store i32 %bf.set1477, i32* %static_flag1474, align 8
  br label %sw.epilog

sw.bb.1478:                                       ; preds = %if.end.170
  %767 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1479 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %767, i64 0
  %ttype1480 = bitcast %union.YYSTYPE* %arrayidx1479 to %union.tree_node**
  %768 = load %union.tree_node*, %union.tree_node** %ttype1480, align 8
  %769 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1481 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %769, i64 -1
  %ttype1482 = bitcast %union.YYSTYPE* %arrayidx1481 to %union.tree_node**
  %770 = load %union.tree_node*, %union.tree_node** %ttype1482, align 8
  %call1483 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %768, %union.tree_node* %770)
  %ttype1484 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1483, %union.tree_node** %ttype1484, align 8
  %ttype1485 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %771 = load %union.tree_node*, %union.tree_node** %ttype1485, align 8
  %common1486 = bitcast %union.tree_node* %771 to %struct.tree_common*
  %static_flag1487 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1486, i32 0, i32 2
  %bf.load1488 = load i32, i32* %static_flag1487, align 8
  %bf.clear1489 = and i32 %bf.load1488, -262145
  %bf.set1490 = or i32 %bf.clear1489, 262144
  store i32 %bf.set1490, i32* %static_flag1487, align 8
  br label %sw.epilog

sw.bb.1491:                                       ; preds = %if.end.170
  %772 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1492 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %772, i64 0
  %ttype1493 = bitcast %union.YYSTYPE* %arrayidx1492 to %union.tree_node**
  %773 = load %union.tree_node*, %union.tree_node** %ttype1493, align 8
  %774 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1494 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %774, i64 -1
  %ttype1495 = bitcast %union.YYSTYPE* %arrayidx1494 to %union.tree_node**
  %775 = load %union.tree_node*, %union.tree_node** %ttype1495, align 8
  %call1496 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %773, %union.tree_node* %775)
  %ttype1497 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1496, %union.tree_node** %ttype1497, align 8
  %ttype1498 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %776 = load %union.tree_node*, %union.tree_node** %ttype1498, align 8
  %common1499 = bitcast %union.tree_node* %776 to %struct.tree_common*
  %static_flag1500 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1499, i32 0, i32 2
  %bf.load1501 = load i32, i32* %static_flag1500, align 8
  %bf.clear1502 = and i32 %bf.load1501, -262145
  %bf.set1503 = or i32 %bf.clear1502, 262144
  store i32 %bf.set1503, i32* %static_flag1500, align 8
  br label %sw.epilog

sw.bb.1504:                                       ; preds = %if.end.170
  %777 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1505 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %777, i64 0
  %ttype1506 = bitcast %union.YYSTYPE* %arrayidx1505 to %union.tree_node**
  %778 = load %union.tree_node*, %union.tree_node** %ttype1506, align 8
  %779 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1507 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %779, i64 -1
  %ttype1508 = bitcast %union.YYSTYPE* %arrayidx1507 to %union.tree_node**
  %780 = load %union.tree_node*, %union.tree_node** %ttype1508, align 8
  %call1509 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %778, %union.tree_node* %780)
  %ttype1510 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1509, %union.tree_node** %ttype1510, align 8
  %ttype1511 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %781 = load %union.tree_node*, %union.tree_node** %ttype1511, align 8
  %common1512 = bitcast %union.tree_node* %781 to %struct.tree_common*
  %static_flag1513 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1512, i32 0, i32 2
  %bf.load1514 = load i32, i32* %static_flag1513, align 8
  %bf.clear1515 = and i32 %bf.load1514, -262145
  %bf.set1516 = or i32 %bf.clear1515, 262144
  store i32 %bf.set1516, i32* %static_flag1513, align 8
  br label %sw.epilog

sw.bb.1517:                                       ; preds = %if.end.170
  %782 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1518 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %782, i64 0
  %ttype1519 = bitcast %union.YYSTYPE* %arrayidx1518 to %union.tree_node**
  %783 = load %union.tree_node*, %union.tree_node** %ttype1519, align 8
  %784 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1520 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %784, i64 -1
  %ttype1521 = bitcast %union.YYSTYPE* %arrayidx1520 to %union.tree_node**
  %785 = load %union.tree_node*, %union.tree_node** %ttype1521, align 8
  %call1522 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %783, %union.tree_node* %785)
  %ttype1523 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1522, %union.tree_node** %ttype1523, align 8
  %ttype1524 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %786 = load %union.tree_node*, %union.tree_node** %ttype1524, align 8
  %common1525 = bitcast %union.tree_node* %786 to %struct.tree_common*
  %static_flag1526 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1525, i32 0, i32 2
  %bf.load1527 = load i32, i32* %static_flag1526, align 8
  %bf.clear1528 = and i32 %bf.load1527, -262145
  %bf.set1529 = or i32 %bf.clear1528, 262144
  store i32 %bf.set1529, i32* %static_flag1526, align 8
  br label %sw.epilog

sw.bb.1530:                                       ; preds = %if.end.170
  %787 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1531 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %787, i64 0
  %ttype1532 = bitcast %union.YYSTYPE* %arrayidx1531 to %union.tree_node**
  %788 = load %union.tree_node*, %union.tree_node** %ttype1532, align 8
  %789 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1533 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %789, i64 -1
  %ttype1534 = bitcast %union.YYSTYPE* %arrayidx1533 to %union.tree_node**
  %790 = load %union.tree_node*, %union.tree_node** %ttype1534, align 8
  %call1535 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %788, %union.tree_node* %790)
  %ttype1536 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1535, %union.tree_node** %ttype1536, align 8
  %ttype1537 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %791 = load %union.tree_node*, %union.tree_node** %ttype1537, align 8
  %common1538 = bitcast %union.tree_node* %791 to %struct.tree_common*
  %static_flag1539 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1538, i32 0, i32 2
  %bf.load1540 = load i32, i32* %static_flag1539, align 8
  %bf.clear1541 = and i32 %bf.load1540, -262145
  %bf.set1542 = or i32 %bf.clear1541, 262144
  store i32 %bf.set1542, i32* %static_flag1539, align 8
  br label %sw.epilog

sw.bb.1543:                                       ; preds = %if.end.170
  %792 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1544 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %792, i64 0
  %ttype1545 = bitcast %union.YYSTYPE* %arrayidx1544 to %union.tree_node**
  %793 = load %union.tree_node*, %union.tree_node** %ttype1545, align 8
  %call1546 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %793, %union.tree_node* null)
  %ttype1547 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1546, %union.tree_node** %ttype1547, align 8
  %ttype1548 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %794 = load %union.tree_node*, %union.tree_node** %ttype1548, align 8
  %common1549 = bitcast %union.tree_node* %794 to %struct.tree_common*
  %static_flag1550 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1549, i32 0, i32 2
  %bf.load1551 = load i32, i32* %static_flag1550, align 8
  %bf.clear1552 = and i32 %bf.load1551, -262145
  %bf.set1553 = or i32 %bf.clear1552, 262144
  store i32 %bf.set1553, i32* %static_flag1550, align 8
  br label %sw.epilog

sw.bb.1554:                                       ; preds = %if.end.170
  %795 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1555 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %795, i64 0
  %ttype1556 = bitcast %union.YYSTYPE* %arrayidx1555 to %union.tree_node**
  %796 = load %union.tree_node*, %union.tree_node** %ttype1556, align 8
  %797 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1557 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %797, i64 -1
  %ttype1558 = bitcast %union.YYSTYPE* %arrayidx1557 to %union.tree_node**
  %798 = load %union.tree_node*, %union.tree_node** %ttype1558, align 8
  %call1559 = call %union.tree_node* @tree_cons(%union.tree_node* %796, %union.tree_node* null, %union.tree_node* %798)
  %ttype1560 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1559, %union.tree_node** %ttype1560, align 8
  %799 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1561 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %799, i64 -1
  %ttype1562 = bitcast %union.YYSTYPE* %arrayidx1561 to %union.tree_node**
  %800 = load %union.tree_node*, %union.tree_node** %ttype1562, align 8
  %common1563 = bitcast %union.tree_node* %800 to %struct.tree_common*
  %static_flag1564 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1563, i32 0, i32 2
  %bf.load1565 = load i32, i32* %static_flag1564, align 8
  %bf.lshr1566 = lshr i32 %bf.load1565, 18
  %bf.clear1567 = and i32 %bf.lshr1566, 1
  %ttype1568 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %801 = load %union.tree_node*, %union.tree_node** %ttype1568, align 8
  %common1569 = bitcast %union.tree_node* %801 to %struct.tree_common*
  %static_flag1570 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1569, i32 0, i32 2
  %bf.load1571 = load i32, i32* %static_flag1570, align 8
  %bf.value1572 = and i32 %bf.clear1567, 1
  %bf.shl1573 = shl i32 %bf.value1572, 18
  %bf.clear1574 = and i32 %bf.load1571, -262145
  %bf.set1575 = or i32 %bf.clear1574, %bf.shl1573
  store i32 %bf.set1575, i32* %static_flag1570, align 8
  br label %sw.epilog

sw.bb.1576:                                       ; preds = %if.end.170
  %802 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1577 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %802, i64 0
  %ttype1578 = bitcast %union.YYSTYPE* %arrayidx1577 to %union.tree_node**
  %803 = load %union.tree_node*, %union.tree_node** %ttype1578, align 8
  %804 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1579 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %804, i64 -1
  %ttype1580 = bitcast %union.YYSTYPE* %arrayidx1579 to %union.tree_node**
  %805 = load %union.tree_node*, %union.tree_node** %ttype1580, align 8
  %call1581 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %803, %union.tree_node* %805)
  %ttype1582 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1581, %union.tree_node** %ttype1582, align 8
  %ttype1583 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %806 = load %union.tree_node*, %union.tree_node** %ttype1583, align 8
  %common1584 = bitcast %union.tree_node* %806 to %struct.tree_common*
  %static_flag1585 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1584, i32 0, i32 2
  %bf.load1586 = load i32, i32* %static_flag1585, align 8
  %bf.clear1587 = and i32 %bf.load1586, -262145
  %bf.set1588 = or i32 %bf.clear1587, 262144
  store i32 %bf.set1588, i32* %static_flag1585, align 8
  br label %sw.epilog

sw.bb.1589:                                       ; preds = %if.end.170
  %807 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1590 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %807, i64 0
  %ttype1591 = bitcast %union.YYSTYPE* %arrayidx1590 to %union.tree_node**
  %808 = load %union.tree_node*, %union.tree_node** %ttype1591, align 8
  %809 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1592 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %809, i64 -1
  %ttype1593 = bitcast %union.YYSTYPE* %arrayidx1592 to %union.tree_node**
  %810 = load %union.tree_node*, %union.tree_node** %ttype1593, align 8
  %call1594 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %808, %union.tree_node* %810)
  %ttype1595 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1594, %union.tree_node** %ttype1595, align 8
  %ttype1596 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %811 = load %union.tree_node*, %union.tree_node** %ttype1596, align 8
  %common1597 = bitcast %union.tree_node* %811 to %struct.tree_common*
  %static_flag1598 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1597, i32 0, i32 2
  %bf.load1599 = load i32, i32* %static_flag1598, align 8
  %bf.clear1600 = and i32 %bf.load1599, -262145
  %bf.set1601 = or i32 %bf.clear1600, 262144
  store i32 %bf.set1601, i32* %static_flag1598, align 8
  br label %sw.epilog

sw.bb.1602:                                       ; preds = %if.end.170
  %812 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1603 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %812, i64 0
  %ttype1604 = bitcast %union.YYSTYPE* %arrayidx1603 to %union.tree_node**
  %813 = load %union.tree_node*, %union.tree_node** %ttype1604, align 8
  %814 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1605 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %814, i64 -1
  %ttype1606 = bitcast %union.YYSTYPE* %arrayidx1605 to %union.tree_node**
  %815 = load %union.tree_node*, %union.tree_node** %ttype1606, align 8
  %call1607 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %813, %union.tree_node* %815)
  %ttype1608 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1607, %union.tree_node** %ttype1608, align 8
  %ttype1609 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %816 = load %union.tree_node*, %union.tree_node** %ttype1609, align 8
  %common1610 = bitcast %union.tree_node* %816 to %struct.tree_common*
  %static_flag1611 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1610, i32 0, i32 2
  %bf.load1612 = load i32, i32* %static_flag1611, align 8
  %bf.clear1613 = and i32 %bf.load1612, -262145
  %bf.set1614 = or i32 %bf.clear1613, 262144
  store i32 %bf.set1614, i32* %static_flag1611, align 8
  br label %sw.epilog

sw.bb.1615:                                       ; preds = %if.end.170
  %817 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1616 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %817, i64 0
  %ttype1617 = bitcast %union.YYSTYPE* %arrayidx1616 to %union.tree_node**
  %818 = load %union.tree_node*, %union.tree_node** %ttype1617, align 8
  %819 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1618 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %819, i64 -1
  %ttype1619 = bitcast %union.YYSTYPE* %arrayidx1618 to %union.tree_node**
  %820 = load %union.tree_node*, %union.tree_node** %ttype1619, align 8
  %call1620 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %818, %union.tree_node* %820)
  %ttype1621 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1620, %union.tree_node** %ttype1621, align 8
  %ttype1622 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %821 = load %union.tree_node*, %union.tree_node** %ttype1622, align 8
  %common1623 = bitcast %union.tree_node* %821 to %struct.tree_common*
  %static_flag1624 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1623, i32 0, i32 2
  %bf.load1625 = load i32, i32* %static_flag1624, align 8
  %bf.clear1626 = and i32 %bf.load1625, -262145
  %bf.set1627 = or i32 %bf.clear1626, 262144
  store i32 %bf.set1627, i32* %static_flag1624, align 8
  br label %sw.epilog

sw.bb.1628:                                       ; preds = %if.end.170
  %822 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1629 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %822, i64 0
  %ttype1630 = bitcast %union.YYSTYPE* %arrayidx1629 to %union.tree_node**
  %823 = load %union.tree_node*, %union.tree_node** %ttype1630, align 8
  %824 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1631 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %824, i64 -1
  %ttype1632 = bitcast %union.YYSTYPE* %arrayidx1631 to %union.tree_node**
  %825 = load %union.tree_node*, %union.tree_node** %ttype1632, align 8
  %call1633 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %823, %union.tree_node* %825)
  %ttype1634 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1633, %union.tree_node** %ttype1634, align 8
  %ttype1635 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %826 = load %union.tree_node*, %union.tree_node** %ttype1635, align 8
  %common1636 = bitcast %union.tree_node* %826 to %struct.tree_common*
  %static_flag1637 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1636, i32 0, i32 2
  %bf.load1638 = load i32, i32* %static_flag1637, align 8
  %bf.clear1639 = and i32 %bf.load1638, -262145
  %bf.set1640 = or i32 %bf.clear1639, 262144
  store i32 %bf.set1640, i32* %static_flag1637, align 8
  br label %sw.epilog

sw.bb.1641:                                       ; preds = %if.end.170
  %827 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1642 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %827, i64 0
  %ttype1643 = bitcast %union.YYSTYPE* %arrayidx1642 to %union.tree_node**
  %828 = load %union.tree_node*, %union.tree_node** %ttype1643, align 8
  %829 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1644 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %829, i64 -1
  %ttype1645 = bitcast %union.YYSTYPE* %arrayidx1644 to %union.tree_node**
  %830 = load %union.tree_node*, %union.tree_node** %ttype1645, align 8
  %call1646 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %828, %union.tree_node* %830)
  %ttype1647 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1646, %union.tree_node** %ttype1647, align 8
  %ttype1648 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %831 = load %union.tree_node*, %union.tree_node** %ttype1648, align 8
  %common1649 = bitcast %union.tree_node* %831 to %struct.tree_common*
  %static_flag1650 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1649, i32 0, i32 2
  %bf.load1651 = load i32, i32* %static_flag1650, align 8
  %bf.clear1652 = and i32 %bf.load1651, -262145
  %bf.set1653 = or i32 %bf.clear1652, 262144
  store i32 %bf.set1653, i32* %static_flag1650, align 8
  br label %sw.epilog

sw.bb.1654:                                       ; preds = %if.end.170
  %832 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1655 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %832, i64 0
  %ttype1656 = bitcast %union.YYSTYPE* %arrayidx1655 to %union.tree_node**
  %833 = load %union.tree_node*, %union.tree_node** %ttype1656, align 8
  %834 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1657 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %834, i64 -1
  %ttype1658 = bitcast %union.YYSTYPE* %arrayidx1657 to %union.tree_node**
  %835 = load %union.tree_node*, %union.tree_node** %ttype1658, align 8
  %call1659 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %833, %union.tree_node* %835)
  %ttype1660 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1659, %union.tree_node** %ttype1660, align 8
  %ttype1661 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %836 = load %union.tree_node*, %union.tree_node** %ttype1661, align 8
  %common1662 = bitcast %union.tree_node* %836 to %struct.tree_common*
  %static_flag1663 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1662, i32 0, i32 2
  %bf.load1664 = load i32, i32* %static_flag1663, align 8
  %bf.clear1665 = and i32 %bf.load1664, -262145
  %bf.set1666 = or i32 %bf.clear1665, 262144
  store i32 %bf.set1666, i32* %static_flag1663, align 8
  br label %sw.epilog

sw.bb.1667:                                       ; preds = %if.end.170
  %837 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1668 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %837, i64 0
  %ttype1669 = bitcast %union.YYSTYPE* %arrayidx1668 to %union.tree_node**
  %838 = load %union.tree_node*, %union.tree_node** %ttype1669, align 8
  %839 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1670 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %839, i64 -1
  %ttype1671 = bitcast %union.YYSTYPE* %arrayidx1670 to %union.tree_node**
  %840 = load %union.tree_node*, %union.tree_node** %ttype1671, align 8
  %call1672 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %838, %union.tree_node* %840)
  %ttype1673 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1672, %union.tree_node** %ttype1673, align 8
  %ttype1674 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %841 = load %union.tree_node*, %union.tree_node** %ttype1674, align 8
  %common1675 = bitcast %union.tree_node* %841 to %struct.tree_common*
  %static_flag1676 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1675, i32 0, i32 2
  %bf.load1677 = load i32, i32* %static_flag1676, align 8
  %bf.clear1678 = and i32 %bf.load1677, -262145
  %bf.set1679 = or i32 %bf.clear1678, 262144
  store i32 %bf.set1679, i32* %static_flag1676, align 8
  br label %sw.epilog

sw.bb.1680:                                       ; preds = %if.end.170
  %842 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1681 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %842, i64 0
  %ttype1682 = bitcast %union.YYSTYPE* %arrayidx1681 to %union.tree_node**
  %843 = load %union.tree_node*, %union.tree_node** %ttype1682, align 8
  %844 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1683 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %844, i64 -1
  %ttype1684 = bitcast %union.YYSTYPE* %arrayidx1683 to %union.tree_node**
  %845 = load %union.tree_node*, %union.tree_node** %ttype1684, align 8
  %call1685 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %843, %union.tree_node* %845)
  %ttype1686 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1685, %union.tree_node** %ttype1686, align 8
  %ttype1687 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %846 = load %union.tree_node*, %union.tree_node** %ttype1687, align 8
  %common1688 = bitcast %union.tree_node* %846 to %struct.tree_common*
  %static_flag1689 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1688, i32 0, i32 2
  %bf.load1690 = load i32, i32* %static_flag1689, align 8
  %bf.clear1691 = and i32 %bf.load1690, -262145
  %bf.set1692 = or i32 %bf.clear1691, 262144
  store i32 %bf.set1692, i32* %static_flag1689, align 8
  br label %sw.epilog

sw.bb.1693:                                       ; preds = %if.end.170
  %847 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1694 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %847, i64 0
  %ttype1695 = bitcast %union.YYSTYPE* %arrayidx1694 to %union.tree_node**
  %848 = load %union.tree_node*, %union.tree_node** %ttype1695, align 8
  %849 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1696 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %849, i64 -1
  %ttype1697 = bitcast %union.YYSTYPE* %arrayidx1696 to %union.tree_node**
  %850 = load %union.tree_node*, %union.tree_node** %ttype1697, align 8
  %call1698 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %848, %union.tree_node* %850)
  %ttype1699 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1698, %union.tree_node** %ttype1699, align 8
  %ttype1700 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %851 = load %union.tree_node*, %union.tree_node** %ttype1700, align 8
  %common1701 = bitcast %union.tree_node* %851 to %struct.tree_common*
  %static_flag1702 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1701, i32 0, i32 2
  %bf.load1703 = load i32, i32* %static_flag1702, align 8
  %bf.clear1704 = and i32 %bf.load1703, -262145
  %bf.set1705 = or i32 %bf.clear1704, 262144
  store i32 %bf.set1705, i32* %static_flag1702, align 8
  br label %sw.epilog

sw.bb.1706:                                       ; preds = %if.end.170
  %852 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1707 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %852, i64 0
  %ttype1708 = bitcast %union.YYSTYPE* %arrayidx1707 to %union.tree_node**
  %853 = load %union.tree_node*, %union.tree_node** %ttype1708, align 8
  %854 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1709 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %854, i64 -1
  %ttype1710 = bitcast %union.YYSTYPE* %arrayidx1709 to %union.tree_node**
  %855 = load %union.tree_node*, %union.tree_node** %ttype1710, align 8
  %call1711 = call %union.tree_node* @tree_cons(%union.tree_node* %853, %union.tree_node* null, %union.tree_node* %855)
  %ttype1712 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1711, %union.tree_node** %ttype1712, align 8
  %856 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1713 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %856, i64 -1
  %ttype1714 = bitcast %union.YYSTYPE* %arrayidx1713 to %union.tree_node**
  %857 = load %union.tree_node*, %union.tree_node** %ttype1714, align 8
  %common1715 = bitcast %union.tree_node* %857 to %struct.tree_common*
  %static_flag1716 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1715, i32 0, i32 2
  %bf.load1717 = load i32, i32* %static_flag1716, align 8
  %bf.lshr1718 = lshr i32 %bf.load1717, 18
  %bf.clear1719 = and i32 %bf.lshr1718, 1
  %ttype1720 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %858 = load %union.tree_node*, %union.tree_node** %ttype1720, align 8
  %common1721 = bitcast %union.tree_node* %858 to %struct.tree_common*
  %static_flag1722 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1721, i32 0, i32 2
  %bf.load1723 = load i32, i32* %static_flag1722, align 8
  %bf.value1724 = and i32 %bf.clear1719, 1
  %bf.shl1725 = shl i32 %bf.value1724, 18
  %bf.clear1726 = and i32 %bf.load1723, -262145
  %bf.set1727 = or i32 %bf.clear1726, %bf.shl1725
  store i32 %bf.set1727, i32* %static_flag1722, align 8
  br label %sw.epilog

sw.bb.1728:                                       ; preds = %if.end.170
  %859 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1729 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %859, i64 0
  %ttype1730 = bitcast %union.YYSTYPE* %arrayidx1729 to %union.tree_node**
  %860 = load %union.tree_node*, %union.tree_node** %ttype1730, align 8
  %861 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1731 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %861, i64 -1
  %ttype1732 = bitcast %union.YYSTYPE* %arrayidx1731 to %union.tree_node**
  %862 = load %union.tree_node*, %union.tree_node** %ttype1732, align 8
  %call1733 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %860, %union.tree_node* %862)
  %ttype1734 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1733, %union.tree_node** %ttype1734, align 8
  %ttype1735 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %863 = load %union.tree_node*, %union.tree_node** %ttype1735, align 8
  %common1736 = bitcast %union.tree_node* %863 to %struct.tree_common*
  %static_flag1737 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1736, i32 0, i32 2
  %bf.load1738 = load i32, i32* %static_flag1737, align 8
  %bf.clear1739 = and i32 %bf.load1738, -262145
  %bf.set1740 = or i32 %bf.clear1739, 262144
  store i32 %bf.set1740, i32* %static_flag1737, align 8
  br label %sw.epilog

sw.bb.1741:                                       ; preds = %if.end.170
  %864 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1742 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %864, i64 0
  %ttype1743 = bitcast %union.YYSTYPE* %arrayidx1742 to %union.tree_node**
  %865 = load %union.tree_node*, %union.tree_node** %ttype1743, align 8
  %866 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1744 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %866, i64 -1
  %ttype1745 = bitcast %union.YYSTYPE* %arrayidx1744 to %union.tree_node**
  %867 = load %union.tree_node*, %union.tree_node** %ttype1745, align 8
  %call1746 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %865, %union.tree_node* %867)
  %ttype1747 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1746, %union.tree_node** %ttype1747, align 8
  %ttype1748 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %868 = load %union.tree_node*, %union.tree_node** %ttype1748, align 8
  %common1749 = bitcast %union.tree_node* %868 to %struct.tree_common*
  %static_flag1750 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1749, i32 0, i32 2
  %bf.load1751 = load i32, i32* %static_flag1750, align 8
  %bf.clear1752 = and i32 %bf.load1751, -262145
  %bf.set1753 = or i32 %bf.clear1752, 262144
  store i32 %bf.set1753, i32* %static_flag1750, align 8
  br label %sw.epilog

sw.bb.1754:                                       ; preds = %if.end.170
  %869 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1755 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %869, i64 0
  %ttype1756 = bitcast %union.YYSTYPE* %arrayidx1755 to %union.tree_node**
  %870 = load %union.tree_node*, %union.tree_node** %ttype1756, align 8
  %871 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1757 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %871, i64 -1
  %ttype1758 = bitcast %union.YYSTYPE* %arrayidx1757 to %union.tree_node**
  %872 = load %union.tree_node*, %union.tree_node** %ttype1758, align 8
  %call1759 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %870, %union.tree_node* %872)
  %ttype1760 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1759, %union.tree_node** %ttype1760, align 8
  %ttype1761 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %873 = load %union.tree_node*, %union.tree_node** %ttype1761, align 8
  %common1762 = bitcast %union.tree_node* %873 to %struct.tree_common*
  %static_flag1763 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1762, i32 0, i32 2
  %bf.load1764 = load i32, i32* %static_flag1763, align 8
  %bf.clear1765 = and i32 %bf.load1764, -262145
  %bf.set1766 = or i32 %bf.clear1765, 262144
  store i32 %bf.set1766, i32* %static_flag1763, align 8
  br label %sw.epilog

sw.bb.1767:                                       ; preds = %if.end.170
  %874 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1768 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %874, i64 0
  %ttype1769 = bitcast %union.YYSTYPE* %arrayidx1768 to %union.tree_node**
  %875 = load %union.tree_node*, %union.tree_node** %ttype1769, align 8
  %876 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1770 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %876, i64 -1
  %ttype1771 = bitcast %union.YYSTYPE* %arrayidx1770 to %union.tree_node**
  %877 = load %union.tree_node*, %union.tree_node** %ttype1771, align 8
  %call1772 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %875, %union.tree_node* %877)
  %ttype1773 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1772, %union.tree_node** %ttype1773, align 8
  %ttype1774 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %878 = load %union.tree_node*, %union.tree_node** %ttype1774, align 8
  %common1775 = bitcast %union.tree_node* %878 to %struct.tree_common*
  %static_flag1776 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1775, i32 0, i32 2
  %bf.load1777 = load i32, i32* %static_flag1776, align 8
  %bf.clear1778 = and i32 %bf.load1777, -262145
  %bf.set1779 = or i32 %bf.clear1778, 262144
  store i32 %bf.set1779, i32* %static_flag1776, align 8
  br label %sw.epilog

sw.bb.1780:                                       ; preds = %if.end.170
  %879 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1781 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %879, i64 0
  %ttype1782 = bitcast %union.YYSTYPE* %arrayidx1781 to %union.tree_node**
  %880 = load %union.tree_node*, %union.tree_node** %ttype1782, align 8
  %call1783 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %880, %union.tree_node* null)
  %ttype1784 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1783, %union.tree_node** %ttype1784, align 8
  %ttype1785 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %881 = load %union.tree_node*, %union.tree_node** %ttype1785, align 8
  %common1786 = bitcast %union.tree_node* %881 to %struct.tree_common*
  %static_flag1787 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1786, i32 0, i32 2
  %bf.load1788 = load i32, i32* %static_flag1787, align 8
  %bf.clear1789 = and i32 %bf.load1788, -262145
  store i32 %bf.clear1789, i32* %static_flag1787, align 8
  br label %sw.epilog

sw.bb.1790:                                       ; preds = %if.end.170
  %882 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1791 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %882, i64 0
  %ttype1792 = bitcast %union.YYSTYPE* %arrayidx1791 to %union.tree_node**
  %883 = load %union.tree_node*, %union.tree_node** %ttype1792, align 8
  %884 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1793 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %884, i64 -1
  %ttype1794 = bitcast %union.YYSTYPE* %arrayidx1793 to %union.tree_node**
  %885 = load %union.tree_node*, %union.tree_node** %ttype1794, align 8
  %call1795 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %883, %union.tree_node* %885)
  %ttype1796 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1795, %union.tree_node** %ttype1796, align 8
  %ttype1797 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %886 = load %union.tree_node*, %union.tree_node** %ttype1797, align 8
  %common1798 = bitcast %union.tree_node* %886 to %struct.tree_common*
  %static_flag1799 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1798, i32 0, i32 2
  %bf.load1800 = load i32, i32* %static_flag1799, align 8
  %bf.clear1801 = and i32 %bf.load1800, -262145
  %bf.set1802 = or i32 %bf.clear1801, 262144
  store i32 %bf.set1802, i32* %static_flag1799, align 8
  br label %sw.epilog

sw.bb.1803:                                       ; preds = %if.end.170
  %887 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1804 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %887, i64 0
  %ttype1805 = bitcast %union.YYSTYPE* %arrayidx1804 to %union.tree_node**
  %888 = load %union.tree_node*, %union.tree_node** %ttype1805, align 8
  %889 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1806 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %889, i64 -1
  %ttype1807 = bitcast %union.YYSTYPE* %arrayidx1806 to %union.tree_node**
  %890 = load %union.tree_node*, %union.tree_node** %ttype1807, align 8
  %call1808 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %888, %union.tree_node* %890)
  %ttype1809 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1808, %union.tree_node** %ttype1809, align 8
  %ttype1810 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %891 = load %union.tree_node*, %union.tree_node** %ttype1810, align 8
  %common1811 = bitcast %union.tree_node* %891 to %struct.tree_common*
  %static_flag1812 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1811, i32 0, i32 2
  %bf.load1813 = load i32, i32* %static_flag1812, align 8
  %bf.clear1814 = and i32 %bf.load1813, -262145
  %bf.set1815 = or i32 %bf.clear1814, 262144
  store i32 %bf.set1815, i32* %static_flag1812, align 8
  br label %sw.epilog

sw.bb.1816:                                       ; preds = %if.end.170
  %892 = load i32, i32* @extra_warnings, align 4
  %tobool1817 = icmp ne i32 %892, 0
  br i1 %tobool1817, label %land.lhs.true.1818, label %if.end.1830

land.lhs.true.1818:                               ; preds = %sw.bb.1816
  %893 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1819 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %893, i64 -1
  %ttype1820 = bitcast %union.YYSTYPE* %arrayidx1819 to %union.tree_node**
  %894 = load %union.tree_node*, %union.tree_node** %ttype1820, align 8
  %common1821 = bitcast %union.tree_node* %894 to %struct.tree_common*
  %static_flag1822 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1821, i32 0, i32 2
  %bf.load1823 = load i32, i32* %static_flag1822, align 8
  %bf.lshr1824 = lshr i32 %bf.load1823, 18
  %bf.clear1825 = and i32 %bf.lshr1824, 1
  %tobool1826 = icmp ne i32 %bf.clear1825, 0
  br i1 %tobool1826, label %if.then.1827, label %if.end.1830

if.then.1827:                                     ; preds = %land.lhs.true.1818
  %895 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1828 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %895, i64 0
  %ttype1829 = bitcast %union.YYSTYPE* %arrayidx1828 to %union.tree_node**
  %896 = load %union.tree_node*, %union.tree_node** %ttype1829, align 8
  %identifier = bitcast %union.tree_node* %896 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %897 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %897)
  br label %if.end.1830

if.end.1830:                                      ; preds = %if.then.1827, %land.lhs.true.1818, %sw.bb.1816
  %898 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1831 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %898, i64 0
  %ttype1832 = bitcast %union.YYSTYPE* %arrayidx1831 to %union.tree_node**
  %899 = load %union.tree_node*, %union.tree_node** %ttype1832, align 8
  %900 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1833 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %900, i64 -1
  %ttype1834 = bitcast %union.YYSTYPE* %arrayidx1833 to %union.tree_node**
  %901 = load %union.tree_node*, %union.tree_node** %ttype1834, align 8
  %call1835 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %899, %union.tree_node* %901)
  %ttype1836 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1835, %union.tree_node** %ttype1836, align 8
  %902 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1837 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %902, i64 -1
  %ttype1838 = bitcast %union.YYSTYPE* %arrayidx1837 to %union.tree_node**
  %903 = load %union.tree_node*, %union.tree_node** %ttype1838, align 8
  %common1839 = bitcast %union.tree_node* %903 to %struct.tree_common*
  %static_flag1840 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1839, i32 0, i32 2
  %bf.load1841 = load i32, i32* %static_flag1840, align 8
  %bf.lshr1842 = lshr i32 %bf.load1841, 18
  %bf.clear1843 = and i32 %bf.lshr1842, 1
  %ttype1844 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %904 = load %union.tree_node*, %union.tree_node** %ttype1844, align 8
  %common1845 = bitcast %union.tree_node* %904 to %struct.tree_common*
  %static_flag1846 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1845, i32 0, i32 2
  %bf.load1847 = load i32, i32* %static_flag1846, align 8
  %bf.value1848 = and i32 %bf.clear1843, 1
  %bf.shl1849 = shl i32 %bf.value1848, 18
  %bf.clear1850 = and i32 %bf.load1847, -262145
  %bf.set1851 = or i32 %bf.clear1850, %bf.shl1849
  store i32 %bf.set1851, i32* %static_flag1846, align 8
  br label %sw.epilog

sw.bb.1852:                                       ; preds = %if.end.170
  %905 = load i32, i32* @extra_warnings, align 4
  %tobool1853 = icmp ne i32 %905, 0
  br i1 %tobool1853, label %land.lhs.true.1854, label %if.end.1869

land.lhs.true.1854:                               ; preds = %sw.bb.1852
  %906 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1855 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %906, i64 -1
  %ttype1856 = bitcast %union.YYSTYPE* %arrayidx1855 to %union.tree_node**
  %907 = load %union.tree_node*, %union.tree_node** %ttype1856, align 8
  %common1857 = bitcast %union.tree_node* %907 to %struct.tree_common*
  %static_flag1858 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1857, i32 0, i32 2
  %bf.load1859 = load i32, i32* %static_flag1858, align 8
  %bf.lshr1860 = lshr i32 %bf.load1859, 18
  %bf.clear1861 = and i32 %bf.lshr1860, 1
  %tobool1862 = icmp ne i32 %bf.clear1861, 0
  br i1 %tobool1862, label %if.then.1863, label %if.end.1869

if.then.1863:                                     ; preds = %land.lhs.true.1854
  %908 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1864 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %908, i64 0
  %ttype1865 = bitcast %union.YYSTYPE* %arrayidx1864 to %union.tree_node**
  %909 = load %union.tree_node*, %union.tree_node** %ttype1865, align 8
  %identifier1866 = bitcast %union.tree_node* %909 to %struct.tree_identifier*
  %id1867 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier1866, i32 0, i32 1
  %str1868 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id1867, i32 0, i32 1
  %910 = load i8*, i8** %str1868, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %910)
  br label %if.end.1869

if.end.1869:                                      ; preds = %if.then.1863, %land.lhs.true.1854, %sw.bb.1852
  %911 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1870 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %911, i64 0
  %ttype1871 = bitcast %union.YYSTYPE* %arrayidx1870 to %union.tree_node**
  %912 = load %union.tree_node*, %union.tree_node** %ttype1871, align 8
  %913 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1872 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %913, i64 -1
  %ttype1873 = bitcast %union.YYSTYPE* %arrayidx1872 to %union.tree_node**
  %914 = load %union.tree_node*, %union.tree_node** %ttype1873, align 8
  %call1874 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %912, %union.tree_node* %914)
  %ttype1875 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1874, %union.tree_node** %ttype1875, align 8
  %915 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1876 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %915, i64 -1
  %ttype1877 = bitcast %union.YYSTYPE* %arrayidx1876 to %union.tree_node**
  %916 = load %union.tree_node*, %union.tree_node** %ttype1877, align 8
  %common1878 = bitcast %union.tree_node* %916 to %struct.tree_common*
  %static_flag1879 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1878, i32 0, i32 2
  %bf.load1880 = load i32, i32* %static_flag1879, align 8
  %bf.lshr1881 = lshr i32 %bf.load1880, 18
  %bf.clear1882 = and i32 %bf.lshr1881, 1
  %ttype1883 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %917 = load %union.tree_node*, %union.tree_node** %ttype1883, align 8
  %common1884 = bitcast %union.tree_node* %917 to %struct.tree_common*
  %static_flag1885 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1884, i32 0, i32 2
  %bf.load1886 = load i32, i32* %static_flag1885, align 8
  %bf.value1887 = and i32 %bf.clear1882, 1
  %bf.shl1888 = shl i32 %bf.value1887, 18
  %bf.clear1889 = and i32 %bf.load1886, -262145
  %bf.set1890 = or i32 %bf.clear1889, %bf.shl1888
  store i32 %bf.set1890, i32* %static_flag1885, align 8
  br label %sw.epilog

sw.bb.1891:                                       ; preds = %if.end.170
  %918 = load i32, i32* @extra_warnings, align 4
  %tobool1892 = icmp ne i32 %918, 0
  br i1 %tobool1892, label %land.lhs.true.1893, label %if.end.1908

land.lhs.true.1893:                               ; preds = %sw.bb.1891
  %919 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1894 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %919, i64 -1
  %ttype1895 = bitcast %union.YYSTYPE* %arrayidx1894 to %union.tree_node**
  %920 = load %union.tree_node*, %union.tree_node** %ttype1895, align 8
  %common1896 = bitcast %union.tree_node* %920 to %struct.tree_common*
  %static_flag1897 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1896, i32 0, i32 2
  %bf.load1898 = load i32, i32* %static_flag1897, align 8
  %bf.lshr1899 = lshr i32 %bf.load1898, 18
  %bf.clear1900 = and i32 %bf.lshr1899, 1
  %tobool1901 = icmp ne i32 %bf.clear1900, 0
  br i1 %tobool1901, label %if.then.1902, label %if.end.1908

if.then.1902:                                     ; preds = %land.lhs.true.1893
  %921 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1903 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %921, i64 0
  %ttype1904 = bitcast %union.YYSTYPE* %arrayidx1903 to %union.tree_node**
  %922 = load %union.tree_node*, %union.tree_node** %ttype1904, align 8
  %identifier1905 = bitcast %union.tree_node* %922 to %struct.tree_identifier*
  %id1906 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier1905, i32 0, i32 1
  %str1907 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id1906, i32 0, i32 1
  %923 = load i8*, i8** %str1907, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %923)
  br label %if.end.1908

if.end.1908:                                      ; preds = %if.then.1902, %land.lhs.true.1893, %sw.bb.1891
  %924 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1909 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %924, i64 0
  %ttype1910 = bitcast %union.YYSTYPE* %arrayidx1909 to %union.tree_node**
  %925 = load %union.tree_node*, %union.tree_node** %ttype1910, align 8
  %926 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1911 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %926, i64 -1
  %ttype1912 = bitcast %union.YYSTYPE* %arrayidx1911 to %union.tree_node**
  %927 = load %union.tree_node*, %union.tree_node** %ttype1912, align 8
  %call1913 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %925, %union.tree_node* %927)
  %ttype1914 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1913, %union.tree_node** %ttype1914, align 8
  %928 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1915 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %928, i64 -1
  %ttype1916 = bitcast %union.YYSTYPE* %arrayidx1915 to %union.tree_node**
  %929 = load %union.tree_node*, %union.tree_node** %ttype1916, align 8
  %common1917 = bitcast %union.tree_node* %929 to %struct.tree_common*
  %static_flag1918 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1917, i32 0, i32 2
  %bf.load1919 = load i32, i32* %static_flag1918, align 8
  %bf.lshr1920 = lshr i32 %bf.load1919, 18
  %bf.clear1921 = and i32 %bf.lshr1920, 1
  %ttype1922 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %930 = load %union.tree_node*, %union.tree_node** %ttype1922, align 8
  %common1923 = bitcast %union.tree_node* %930 to %struct.tree_common*
  %static_flag1924 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1923, i32 0, i32 2
  %bf.load1925 = load i32, i32* %static_flag1924, align 8
  %bf.value1926 = and i32 %bf.clear1921, 1
  %bf.shl1927 = shl i32 %bf.value1926, 18
  %bf.clear1928 = and i32 %bf.load1925, -262145
  %bf.set1929 = or i32 %bf.clear1928, %bf.shl1927
  store i32 %bf.set1929, i32* %static_flag1924, align 8
  br label %sw.epilog

sw.bb.1930:                                       ; preds = %if.end.170
  %931 = load i32, i32* @extra_warnings, align 4
  %tobool1931 = icmp ne i32 %931, 0
  br i1 %tobool1931, label %land.lhs.true.1932, label %if.end.1947

land.lhs.true.1932:                               ; preds = %sw.bb.1930
  %932 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1933 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %932, i64 -1
  %ttype1934 = bitcast %union.YYSTYPE* %arrayidx1933 to %union.tree_node**
  %933 = load %union.tree_node*, %union.tree_node** %ttype1934, align 8
  %common1935 = bitcast %union.tree_node* %933 to %struct.tree_common*
  %static_flag1936 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1935, i32 0, i32 2
  %bf.load1937 = load i32, i32* %static_flag1936, align 8
  %bf.lshr1938 = lshr i32 %bf.load1937, 18
  %bf.clear1939 = and i32 %bf.lshr1938, 1
  %tobool1940 = icmp ne i32 %bf.clear1939, 0
  br i1 %tobool1940, label %if.then.1941, label %if.end.1947

if.then.1941:                                     ; preds = %land.lhs.true.1932
  %934 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1942 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %934, i64 0
  %ttype1943 = bitcast %union.YYSTYPE* %arrayidx1942 to %union.tree_node**
  %935 = load %union.tree_node*, %union.tree_node** %ttype1943, align 8
  %identifier1944 = bitcast %union.tree_node* %935 to %struct.tree_identifier*
  %id1945 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier1944, i32 0, i32 1
  %str1946 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id1945, i32 0, i32 1
  %936 = load i8*, i8** %str1946, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %936)
  br label %if.end.1947

if.end.1947:                                      ; preds = %if.then.1941, %land.lhs.true.1932, %sw.bb.1930
  %937 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1948 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %937, i64 0
  %ttype1949 = bitcast %union.YYSTYPE* %arrayidx1948 to %union.tree_node**
  %938 = load %union.tree_node*, %union.tree_node** %ttype1949, align 8
  %939 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1950 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %939, i64 -1
  %ttype1951 = bitcast %union.YYSTYPE* %arrayidx1950 to %union.tree_node**
  %940 = load %union.tree_node*, %union.tree_node** %ttype1951, align 8
  %call1952 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %938, %union.tree_node* %940)
  %ttype1953 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1952, %union.tree_node** %ttype1953, align 8
  %941 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1954 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %941, i64 -1
  %ttype1955 = bitcast %union.YYSTYPE* %arrayidx1954 to %union.tree_node**
  %942 = load %union.tree_node*, %union.tree_node** %ttype1955, align 8
  %common1956 = bitcast %union.tree_node* %942 to %struct.tree_common*
  %static_flag1957 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1956, i32 0, i32 2
  %bf.load1958 = load i32, i32* %static_flag1957, align 8
  %bf.lshr1959 = lshr i32 %bf.load1958, 18
  %bf.clear1960 = and i32 %bf.lshr1959, 1
  %ttype1961 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %943 = load %union.tree_node*, %union.tree_node** %ttype1961, align 8
  %common1962 = bitcast %union.tree_node* %943 to %struct.tree_common*
  %static_flag1963 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1962, i32 0, i32 2
  %bf.load1964 = load i32, i32* %static_flag1963, align 8
  %bf.value1965 = and i32 %bf.clear1960, 1
  %bf.shl1966 = shl i32 %bf.value1965, 18
  %bf.clear1967 = and i32 %bf.load1964, -262145
  %bf.set1968 = or i32 %bf.clear1967, %bf.shl1966
  store i32 %bf.set1968, i32* %static_flag1963, align 8
  br label %sw.epilog

sw.bb.1969:                                       ; preds = %if.end.170
  %944 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1970 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %944, i64 0
  %ttype1971 = bitcast %union.YYSTYPE* %arrayidx1970 to %union.tree_node**
  %945 = load %union.tree_node*, %union.tree_node** %ttype1971, align 8
  %946 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1972 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %946, i64 -1
  %ttype1973 = bitcast %union.YYSTYPE* %arrayidx1972 to %union.tree_node**
  %947 = load %union.tree_node*, %union.tree_node** %ttype1973, align 8
  %call1974 = call %union.tree_node* @tree_cons(%union.tree_node* %945, %union.tree_node* null, %union.tree_node* %947)
  %ttype1975 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1974, %union.tree_node** %ttype1975, align 8
  %948 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1976 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %948, i64 -1
  %ttype1977 = bitcast %union.YYSTYPE* %arrayidx1976 to %union.tree_node**
  %949 = load %union.tree_node*, %union.tree_node** %ttype1977, align 8
  %common1978 = bitcast %union.tree_node* %949 to %struct.tree_common*
  %static_flag1979 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1978, i32 0, i32 2
  %bf.load1980 = load i32, i32* %static_flag1979, align 8
  %bf.lshr1981 = lshr i32 %bf.load1980, 18
  %bf.clear1982 = and i32 %bf.lshr1981, 1
  %ttype1983 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %950 = load %union.tree_node*, %union.tree_node** %ttype1983, align 8
  %common1984 = bitcast %union.tree_node* %950 to %struct.tree_common*
  %static_flag1985 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1984, i32 0, i32 2
  %bf.load1986 = load i32, i32* %static_flag1985, align 8
  %bf.value1987 = and i32 %bf.clear1982, 1
  %bf.shl1988 = shl i32 %bf.value1987, 18
  %bf.clear1989 = and i32 %bf.load1986, -262145
  %bf.set1990 = or i32 %bf.clear1989, %bf.shl1988
  store i32 %bf.set1990, i32* %static_flag1985, align 8
  br label %sw.epilog

sw.bb.1991:                                       ; preds = %if.end.170
  %951 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1992 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %951, i64 0
  %ttype1993 = bitcast %union.YYSTYPE* %arrayidx1992 to %union.tree_node**
  %952 = load %union.tree_node*, %union.tree_node** %ttype1993, align 8
  %953 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx1994 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %953, i64 -1
  %ttype1995 = bitcast %union.YYSTYPE* %arrayidx1994 to %union.tree_node**
  %954 = load %union.tree_node*, %union.tree_node** %ttype1995, align 8
  %call1996 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %952, %union.tree_node* %954)
  %ttype1997 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call1996, %union.tree_node** %ttype1997, align 8
  %ttype1998 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %955 = load %union.tree_node*, %union.tree_node** %ttype1998, align 8
  %common1999 = bitcast %union.tree_node* %955 to %struct.tree_common*
  %static_flag2000 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1999, i32 0, i32 2
  %bf.load2001 = load i32, i32* %static_flag2000, align 8
  %bf.clear2002 = and i32 %bf.load2001, -262145
  %bf.set2003 = or i32 %bf.clear2002, 262144
  store i32 %bf.set2003, i32* %static_flag2000, align 8
  br label %sw.epilog

sw.bb.2004:                                       ; preds = %if.end.170
  %956 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2005 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %956, i64 0
  %ttype2006 = bitcast %union.YYSTYPE* %arrayidx2005 to %union.tree_node**
  %957 = load %union.tree_node*, %union.tree_node** %ttype2006, align 8
  %958 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2007 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %958, i64 -1
  %ttype2008 = bitcast %union.YYSTYPE* %arrayidx2007 to %union.tree_node**
  %959 = load %union.tree_node*, %union.tree_node** %ttype2008, align 8
  %call2009 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %957, %union.tree_node* %959)
  %ttype2010 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2009, %union.tree_node** %ttype2010, align 8
  %ttype2011 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %960 = load %union.tree_node*, %union.tree_node** %ttype2011, align 8
  %common2012 = bitcast %union.tree_node* %960 to %struct.tree_common*
  %static_flag2013 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2012, i32 0, i32 2
  %bf.load2014 = load i32, i32* %static_flag2013, align 8
  %bf.clear2015 = and i32 %bf.load2014, -262145
  %bf.set2016 = or i32 %bf.clear2015, 262144
  store i32 %bf.set2016, i32* %static_flag2013, align 8
  br label %sw.epilog

sw.bb.2017:                                       ; preds = %if.end.170
  %961 = load i32, i32* @extra_warnings, align 4
  %tobool2018 = icmp ne i32 %961, 0
  br i1 %tobool2018, label %land.lhs.true.2019, label %if.end.2034

land.lhs.true.2019:                               ; preds = %sw.bb.2017
  %962 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2020 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %962, i64 -1
  %ttype2021 = bitcast %union.YYSTYPE* %arrayidx2020 to %union.tree_node**
  %963 = load %union.tree_node*, %union.tree_node** %ttype2021, align 8
  %common2022 = bitcast %union.tree_node* %963 to %struct.tree_common*
  %static_flag2023 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2022, i32 0, i32 2
  %bf.load2024 = load i32, i32* %static_flag2023, align 8
  %bf.lshr2025 = lshr i32 %bf.load2024, 18
  %bf.clear2026 = and i32 %bf.lshr2025, 1
  %tobool2027 = icmp ne i32 %bf.clear2026, 0
  br i1 %tobool2027, label %if.then.2028, label %if.end.2034

if.then.2028:                                     ; preds = %land.lhs.true.2019
  %964 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2029 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %964, i64 0
  %ttype2030 = bitcast %union.YYSTYPE* %arrayidx2029 to %union.tree_node**
  %965 = load %union.tree_node*, %union.tree_node** %ttype2030, align 8
  %identifier2031 = bitcast %union.tree_node* %965 to %struct.tree_identifier*
  %id2032 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier2031, i32 0, i32 1
  %str2033 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id2032, i32 0, i32 1
  %966 = load i8*, i8** %str2033, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %966)
  br label %if.end.2034

if.end.2034:                                      ; preds = %if.then.2028, %land.lhs.true.2019, %sw.bb.2017
  %967 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2035 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %967, i64 0
  %ttype2036 = bitcast %union.YYSTYPE* %arrayidx2035 to %union.tree_node**
  %968 = load %union.tree_node*, %union.tree_node** %ttype2036, align 8
  %969 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2037 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %969, i64 -1
  %ttype2038 = bitcast %union.YYSTYPE* %arrayidx2037 to %union.tree_node**
  %970 = load %union.tree_node*, %union.tree_node** %ttype2038, align 8
  %call2039 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %968, %union.tree_node* %970)
  %ttype2040 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2039, %union.tree_node** %ttype2040, align 8
  %971 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2041 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %971, i64 -1
  %ttype2042 = bitcast %union.YYSTYPE* %arrayidx2041 to %union.tree_node**
  %972 = load %union.tree_node*, %union.tree_node** %ttype2042, align 8
  %common2043 = bitcast %union.tree_node* %972 to %struct.tree_common*
  %static_flag2044 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2043, i32 0, i32 2
  %bf.load2045 = load i32, i32* %static_flag2044, align 8
  %bf.lshr2046 = lshr i32 %bf.load2045, 18
  %bf.clear2047 = and i32 %bf.lshr2046, 1
  %ttype2048 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %973 = load %union.tree_node*, %union.tree_node** %ttype2048, align 8
  %common2049 = bitcast %union.tree_node* %973 to %struct.tree_common*
  %static_flag2050 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2049, i32 0, i32 2
  %bf.load2051 = load i32, i32* %static_flag2050, align 8
  %bf.value2052 = and i32 %bf.clear2047, 1
  %bf.shl2053 = shl i32 %bf.value2052, 18
  %bf.clear2054 = and i32 %bf.load2051, -262145
  %bf.set2055 = or i32 %bf.clear2054, %bf.shl2053
  store i32 %bf.set2055, i32* %static_flag2050, align 8
  br label %sw.epilog

sw.bb.2056:                                       ; preds = %if.end.170
  %974 = load i32, i32* @extra_warnings, align 4
  %tobool2057 = icmp ne i32 %974, 0
  br i1 %tobool2057, label %land.lhs.true.2058, label %if.end.2073

land.lhs.true.2058:                               ; preds = %sw.bb.2056
  %975 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2059 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %975, i64 -1
  %ttype2060 = bitcast %union.YYSTYPE* %arrayidx2059 to %union.tree_node**
  %976 = load %union.tree_node*, %union.tree_node** %ttype2060, align 8
  %common2061 = bitcast %union.tree_node* %976 to %struct.tree_common*
  %static_flag2062 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2061, i32 0, i32 2
  %bf.load2063 = load i32, i32* %static_flag2062, align 8
  %bf.lshr2064 = lshr i32 %bf.load2063, 18
  %bf.clear2065 = and i32 %bf.lshr2064, 1
  %tobool2066 = icmp ne i32 %bf.clear2065, 0
  br i1 %tobool2066, label %if.then.2067, label %if.end.2073

if.then.2067:                                     ; preds = %land.lhs.true.2058
  %977 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2068 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %977, i64 0
  %ttype2069 = bitcast %union.YYSTYPE* %arrayidx2068 to %union.tree_node**
  %978 = load %union.tree_node*, %union.tree_node** %ttype2069, align 8
  %identifier2070 = bitcast %union.tree_node* %978 to %struct.tree_identifier*
  %id2071 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier2070, i32 0, i32 1
  %str2072 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id2071, i32 0, i32 1
  %979 = load i8*, i8** %str2072, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %979)
  br label %if.end.2073

if.end.2073:                                      ; preds = %if.then.2067, %land.lhs.true.2058, %sw.bb.2056
  %980 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2074 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %980, i64 0
  %ttype2075 = bitcast %union.YYSTYPE* %arrayidx2074 to %union.tree_node**
  %981 = load %union.tree_node*, %union.tree_node** %ttype2075, align 8
  %982 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2076 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %982, i64 -1
  %ttype2077 = bitcast %union.YYSTYPE* %arrayidx2076 to %union.tree_node**
  %983 = load %union.tree_node*, %union.tree_node** %ttype2077, align 8
  %call2078 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %981, %union.tree_node* %983)
  %ttype2079 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2078, %union.tree_node** %ttype2079, align 8
  %984 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2080 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %984, i64 -1
  %ttype2081 = bitcast %union.YYSTYPE* %arrayidx2080 to %union.tree_node**
  %985 = load %union.tree_node*, %union.tree_node** %ttype2081, align 8
  %common2082 = bitcast %union.tree_node* %985 to %struct.tree_common*
  %static_flag2083 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2082, i32 0, i32 2
  %bf.load2084 = load i32, i32* %static_flag2083, align 8
  %bf.lshr2085 = lshr i32 %bf.load2084, 18
  %bf.clear2086 = and i32 %bf.lshr2085, 1
  %ttype2087 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %986 = load %union.tree_node*, %union.tree_node** %ttype2087, align 8
  %common2088 = bitcast %union.tree_node* %986 to %struct.tree_common*
  %static_flag2089 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2088, i32 0, i32 2
  %bf.load2090 = load i32, i32* %static_flag2089, align 8
  %bf.value2091 = and i32 %bf.clear2086, 1
  %bf.shl2092 = shl i32 %bf.value2091, 18
  %bf.clear2093 = and i32 %bf.load2090, -262145
  %bf.set2094 = or i32 %bf.clear2093, %bf.shl2092
  store i32 %bf.set2094, i32* %static_flag2089, align 8
  br label %sw.epilog

sw.bb.2095:                                       ; preds = %if.end.170
  %987 = load i32, i32* @extra_warnings, align 4
  %tobool2096 = icmp ne i32 %987, 0
  br i1 %tobool2096, label %land.lhs.true.2097, label %if.end.2112

land.lhs.true.2097:                               ; preds = %sw.bb.2095
  %988 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2098 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %988, i64 -1
  %ttype2099 = bitcast %union.YYSTYPE* %arrayidx2098 to %union.tree_node**
  %989 = load %union.tree_node*, %union.tree_node** %ttype2099, align 8
  %common2100 = bitcast %union.tree_node* %989 to %struct.tree_common*
  %static_flag2101 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2100, i32 0, i32 2
  %bf.load2102 = load i32, i32* %static_flag2101, align 8
  %bf.lshr2103 = lshr i32 %bf.load2102, 18
  %bf.clear2104 = and i32 %bf.lshr2103, 1
  %tobool2105 = icmp ne i32 %bf.clear2104, 0
  br i1 %tobool2105, label %if.then.2106, label %if.end.2112

if.then.2106:                                     ; preds = %land.lhs.true.2097
  %990 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2107 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %990, i64 0
  %ttype2108 = bitcast %union.YYSTYPE* %arrayidx2107 to %union.tree_node**
  %991 = load %union.tree_node*, %union.tree_node** %ttype2108, align 8
  %identifier2109 = bitcast %union.tree_node* %991 to %struct.tree_identifier*
  %id2110 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier2109, i32 0, i32 1
  %str2111 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id2110, i32 0, i32 1
  %992 = load i8*, i8** %str2111, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %992)
  br label %if.end.2112

if.end.2112:                                      ; preds = %if.then.2106, %land.lhs.true.2097, %sw.bb.2095
  %993 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2113 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %993, i64 0
  %ttype2114 = bitcast %union.YYSTYPE* %arrayidx2113 to %union.tree_node**
  %994 = load %union.tree_node*, %union.tree_node** %ttype2114, align 8
  %995 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2115 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %995, i64 -1
  %ttype2116 = bitcast %union.YYSTYPE* %arrayidx2115 to %union.tree_node**
  %996 = load %union.tree_node*, %union.tree_node** %ttype2116, align 8
  %call2117 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %994, %union.tree_node* %996)
  %ttype2118 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2117, %union.tree_node** %ttype2118, align 8
  %997 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2119 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %997, i64 -1
  %ttype2120 = bitcast %union.YYSTYPE* %arrayidx2119 to %union.tree_node**
  %998 = load %union.tree_node*, %union.tree_node** %ttype2120, align 8
  %common2121 = bitcast %union.tree_node* %998 to %struct.tree_common*
  %static_flag2122 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2121, i32 0, i32 2
  %bf.load2123 = load i32, i32* %static_flag2122, align 8
  %bf.lshr2124 = lshr i32 %bf.load2123, 18
  %bf.clear2125 = and i32 %bf.lshr2124, 1
  %ttype2126 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %999 = load %union.tree_node*, %union.tree_node** %ttype2126, align 8
  %common2127 = bitcast %union.tree_node* %999 to %struct.tree_common*
  %static_flag2128 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2127, i32 0, i32 2
  %bf.load2129 = load i32, i32* %static_flag2128, align 8
  %bf.value2130 = and i32 %bf.clear2125, 1
  %bf.shl2131 = shl i32 %bf.value2130, 18
  %bf.clear2132 = and i32 %bf.load2129, -262145
  %bf.set2133 = or i32 %bf.clear2132, %bf.shl2131
  store i32 %bf.set2133, i32* %static_flag2128, align 8
  br label %sw.epilog

sw.bb.2134:                                       ; preds = %if.end.170
  %1000 = load i32, i32* @extra_warnings, align 4
  %tobool2135 = icmp ne i32 %1000, 0
  br i1 %tobool2135, label %land.lhs.true.2136, label %if.end.2151

land.lhs.true.2136:                               ; preds = %sw.bb.2134
  %1001 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2137 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1001, i64 -1
  %ttype2138 = bitcast %union.YYSTYPE* %arrayidx2137 to %union.tree_node**
  %1002 = load %union.tree_node*, %union.tree_node** %ttype2138, align 8
  %common2139 = bitcast %union.tree_node* %1002 to %struct.tree_common*
  %static_flag2140 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2139, i32 0, i32 2
  %bf.load2141 = load i32, i32* %static_flag2140, align 8
  %bf.lshr2142 = lshr i32 %bf.load2141, 18
  %bf.clear2143 = and i32 %bf.lshr2142, 1
  %tobool2144 = icmp ne i32 %bf.clear2143, 0
  br i1 %tobool2144, label %if.then.2145, label %if.end.2151

if.then.2145:                                     ; preds = %land.lhs.true.2136
  %1003 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2146 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1003, i64 0
  %ttype2147 = bitcast %union.YYSTYPE* %arrayidx2146 to %union.tree_node**
  %1004 = load %union.tree_node*, %union.tree_node** %ttype2147, align 8
  %identifier2148 = bitcast %union.tree_node* %1004 to %struct.tree_identifier*
  %id2149 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier2148, i32 0, i32 1
  %str2150 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id2149, i32 0, i32 1
  %1005 = load i8*, i8** %str2150, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %1005)
  br label %if.end.2151

if.end.2151:                                      ; preds = %if.then.2145, %land.lhs.true.2136, %sw.bb.2134
  %1006 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2152 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1006, i64 0
  %ttype2153 = bitcast %union.YYSTYPE* %arrayidx2152 to %union.tree_node**
  %1007 = load %union.tree_node*, %union.tree_node** %ttype2153, align 8
  %1008 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2154 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1008, i64 -1
  %ttype2155 = bitcast %union.YYSTYPE* %arrayidx2154 to %union.tree_node**
  %1009 = load %union.tree_node*, %union.tree_node** %ttype2155, align 8
  %call2156 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1007, %union.tree_node* %1009)
  %ttype2157 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2156, %union.tree_node** %ttype2157, align 8
  %1010 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2158 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1010, i64 -1
  %ttype2159 = bitcast %union.YYSTYPE* %arrayidx2158 to %union.tree_node**
  %1011 = load %union.tree_node*, %union.tree_node** %ttype2159, align 8
  %common2160 = bitcast %union.tree_node* %1011 to %struct.tree_common*
  %static_flag2161 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2160, i32 0, i32 2
  %bf.load2162 = load i32, i32* %static_flag2161, align 8
  %bf.lshr2163 = lshr i32 %bf.load2162, 18
  %bf.clear2164 = and i32 %bf.lshr2163, 1
  %ttype2165 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1012 = load %union.tree_node*, %union.tree_node** %ttype2165, align 8
  %common2166 = bitcast %union.tree_node* %1012 to %struct.tree_common*
  %static_flag2167 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2166, i32 0, i32 2
  %bf.load2168 = load i32, i32* %static_flag2167, align 8
  %bf.value2169 = and i32 %bf.clear2164, 1
  %bf.shl2170 = shl i32 %bf.value2169, 18
  %bf.clear2171 = and i32 %bf.load2168, -262145
  %bf.set2172 = or i32 %bf.clear2171, %bf.shl2170
  store i32 %bf.set2172, i32* %static_flag2167, align 8
  br label %sw.epilog

sw.bb.2173:                                       ; preds = %if.end.170
  %1013 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2174 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1013, i64 0
  %ttype2175 = bitcast %union.YYSTYPE* %arrayidx2174 to %union.tree_node**
  %1014 = load %union.tree_node*, %union.tree_node** %ttype2175, align 8
  %1015 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2176 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1015, i64 -1
  %ttype2177 = bitcast %union.YYSTYPE* %arrayidx2176 to %union.tree_node**
  %1016 = load %union.tree_node*, %union.tree_node** %ttype2177, align 8
  %call2178 = call %union.tree_node* @tree_cons(%union.tree_node* %1014, %union.tree_node* null, %union.tree_node* %1016)
  %ttype2179 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2178, %union.tree_node** %ttype2179, align 8
  %1017 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2180 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1017, i64 -1
  %ttype2181 = bitcast %union.YYSTYPE* %arrayidx2180 to %union.tree_node**
  %1018 = load %union.tree_node*, %union.tree_node** %ttype2181, align 8
  %common2182 = bitcast %union.tree_node* %1018 to %struct.tree_common*
  %static_flag2183 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2182, i32 0, i32 2
  %bf.load2184 = load i32, i32* %static_flag2183, align 8
  %bf.lshr2185 = lshr i32 %bf.load2184, 18
  %bf.clear2186 = and i32 %bf.lshr2185, 1
  %ttype2187 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1019 = load %union.tree_node*, %union.tree_node** %ttype2187, align 8
  %common2188 = bitcast %union.tree_node* %1019 to %struct.tree_common*
  %static_flag2189 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2188, i32 0, i32 2
  %bf.load2190 = load i32, i32* %static_flag2189, align 8
  %bf.value2191 = and i32 %bf.clear2186, 1
  %bf.shl2192 = shl i32 %bf.value2191, 18
  %bf.clear2193 = and i32 %bf.load2190, -262145
  %bf.set2194 = or i32 %bf.clear2193, %bf.shl2192
  store i32 %bf.set2194, i32* %static_flag2189, align 8
  br label %sw.epilog

sw.bb.2195:                                       ; preds = %if.end.170
  %1020 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2196 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1020, i64 0
  %ttype2197 = bitcast %union.YYSTYPE* %arrayidx2196 to %union.tree_node**
  %1021 = load %union.tree_node*, %union.tree_node** %ttype2197, align 8
  %1022 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2198 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1022, i64 -1
  %ttype2199 = bitcast %union.YYSTYPE* %arrayidx2198 to %union.tree_node**
  %1023 = load %union.tree_node*, %union.tree_node** %ttype2199, align 8
  %call2200 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1021, %union.tree_node* %1023)
  %ttype2201 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2200, %union.tree_node** %ttype2201, align 8
  %ttype2202 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1024 = load %union.tree_node*, %union.tree_node** %ttype2202, align 8
  %common2203 = bitcast %union.tree_node* %1024 to %struct.tree_common*
  %static_flag2204 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2203, i32 0, i32 2
  %bf.load2205 = load i32, i32* %static_flag2204, align 8
  %bf.clear2206 = and i32 %bf.load2205, -262145
  %bf.set2207 = or i32 %bf.clear2206, 262144
  store i32 %bf.set2207, i32* %static_flag2204, align 8
  br label %sw.epilog

sw.bb.2208:                                       ; preds = %if.end.170
  %1025 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2209 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1025, i64 0
  %ttype2210 = bitcast %union.YYSTYPE* %arrayidx2209 to %union.tree_node**
  %1026 = load %union.tree_node*, %union.tree_node** %ttype2210, align 8
  %1027 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2211 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1027, i64 -1
  %ttype2212 = bitcast %union.YYSTYPE* %arrayidx2211 to %union.tree_node**
  %1028 = load %union.tree_node*, %union.tree_node** %ttype2212, align 8
  %call2213 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1026, %union.tree_node* %1028)
  %ttype2214 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2213, %union.tree_node** %ttype2214, align 8
  %ttype2215 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1029 = load %union.tree_node*, %union.tree_node** %ttype2215, align 8
  %common2216 = bitcast %union.tree_node* %1029 to %struct.tree_common*
  %static_flag2217 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2216, i32 0, i32 2
  %bf.load2218 = load i32, i32* %static_flag2217, align 8
  %bf.clear2219 = and i32 %bf.load2218, -262145
  %bf.set2220 = or i32 %bf.clear2219, 262144
  store i32 %bf.set2220, i32* %static_flag2217, align 8
  br label %sw.epilog

sw.bb.2221:                                       ; preds = %if.end.170
  %1030 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2222 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1030, i64 0
  %ttype2223 = bitcast %union.YYSTYPE* %arrayidx2222 to %union.tree_node**
  %1031 = load %union.tree_node*, %union.tree_node** %ttype2223, align 8
  %1032 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2224 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1032, i64 -1
  %ttype2225 = bitcast %union.YYSTYPE* %arrayidx2224 to %union.tree_node**
  %1033 = load %union.tree_node*, %union.tree_node** %ttype2225, align 8
  %call2226 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1031, %union.tree_node* %1033)
  %ttype2227 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2226, %union.tree_node** %ttype2227, align 8
  %ttype2228 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1034 = load %union.tree_node*, %union.tree_node** %ttype2228, align 8
  %common2229 = bitcast %union.tree_node* %1034 to %struct.tree_common*
  %static_flag2230 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2229, i32 0, i32 2
  %bf.load2231 = load i32, i32* %static_flag2230, align 8
  %bf.clear2232 = and i32 %bf.load2231, -262145
  %bf.set2233 = or i32 %bf.clear2232, 262144
  store i32 %bf.set2233, i32* %static_flag2230, align 8
  br label %sw.epilog

sw.bb.2234:                                       ; preds = %if.end.170
  %1035 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2235 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1035, i64 0
  %ttype2236 = bitcast %union.YYSTYPE* %arrayidx2235 to %union.tree_node**
  %1036 = load %union.tree_node*, %union.tree_node** %ttype2236, align 8
  %1037 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2237 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1037, i64 -1
  %ttype2238 = bitcast %union.YYSTYPE* %arrayidx2237 to %union.tree_node**
  %1038 = load %union.tree_node*, %union.tree_node** %ttype2238, align 8
  %call2239 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1036, %union.tree_node* %1038)
  %ttype2240 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2239, %union.tree_node** %ttype2240, align 8
  %ttype2241 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1039 = load %union.tree_node*, %union.tree_node** %ttype2241, align 8
  %common2242 = bitcast %union.tree_node* %1039 to %struct.tree_common*
  %static_flag2243 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2242, i32 0, i32 2
  %bf.load2244 = load i32, i32* %static_flag2243, align 8
  %bf.clear2245 = and i32 %bf.load2244, -262145
  %bf.set2246 = or i32 %bf.clear2245, 262144
  store i32 %bf.set2246, i32* %static_flag2243, align 8
  br label %sw.epilog

sw.bb.2247:                                       ; preds = %if.end.170
  %1040 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2248 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1040, i64 0
  %ttype2249 = bitcast %union.YYSTYPE* %arrayidx2248 to %union.tree_node**
  %1041 = load %union.tree_node*, %union.tree_node** %ttype2249, align 8
  %1042 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2250 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1042, i64 -1
  %ttype2251 = bitcast %union.YYSTYPE* %arrayidx2250 to %union.tree_node**
  %1043 = load %union.tree_node*, %union.tree_node** %ttype2251, align 8
  %call2252 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1041, %union.tree_node* %1043)
  %ttype2253 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2252, %union.tree_node** %ttype2253, align 8
  %ttype2254 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1044 = load %union.tree_node*, %union.tree_node** %ttype2254, align 8
  %common2255 = bitcast %union.tree_node* %1044 to %struct.tree_common*
  %static_flag2256 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2255, i32 0, i32 2
  %bf.load2257 = load i32, i32* %static_flag2256, align 8
  %bf.clear2258 = and i32 %bf.load2257, -262145
  %bf.set2259 = or i32 %bf.clear2258, 262144
  store i32 %bf.set2259, i32* %static_flag2256, align 8
  br label %sw.epilog

sw.bb.2260:                                       ; preds = %if.end.170
  %1045 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2261 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1045, i64 0
  %ttype2262 = bitcast %union.YYSTYPE* %arrayidx2261 to %union.tree_node**
  %1046 = load %union.tree_node*, %union.tree_node** %ttype2262, align 8
  %1047 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2263 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1047, i64 -1
  %ttype2264 = bitcast %union.YYSTYPE* %arrayidx2263 to %union.tree_node**
  %1048 = load %union.tree_node*, %union.tree_node** %ttype2264, align 8
  %call2265 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1046, %union.tree_node* %1048)
  %ttype2266 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2265, %union.tree_node** %ttype2266, align 8
  %ttype2267 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1049 = load %union.tree_node*, %union.tree_node** %ttype2267, align 8
  %common2268 = bitcast %union.tree_node* %1049 to %struct.tree_common*
  %static_flag2269 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2268, i32 0, i32 2
  %bf.load2270 = load i32, i32* %static_flag2269, align 8
  %bf.clear2271 = and i32 %bf.load2270, -262145
  %bf.set2272 = or i32 %bf.clear2271, 262144
  store i32 %bf.set2272, i32* %static_flag2269, align 8
  br label %sw.epilog

sw.bb.2273:                                       ; preds = %if.end.170
  %1050 = load i32, i32* @extra_warnings, align 4
  %tobool2274 = icmp ne i32 %1050, 0
  br i1 %tobool2274, label %land.lhs.true.2275, label %if.end.2290

land.lhs.true.2275:                               ; preds = %sw.bb.2273
  %1051 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2276 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1051, i64 -1
  %ttype2277 = bitcast %union.YYSTYPE* %arrayidx2276 to %union.tree_node**
  %1052 = load %union.tree_node*, %union.tree_node** %ttype2277, align 8
  %common2278 = bitcast %union.tree_node* %1052 to %struct.tree_common*
  %static_flag2279 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2278, i32 0, i32 2
  %bf.load2280 = load i32, i32* %static_flag2279, align 8
  %bf.lshr2281 = lshr i32 %bf.load2280, 18
  %bf.clear2282 = and i32 %bf.lshr2281, 1
  %tobool2283 = icmp ne i32 %bf.clear2282, 0
  br i1 %tobool2283, label %if.then.2284, label %if.end.2290

if.then.2284:                                     ; preds = %land.lhs.true.2275
  %1053 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2285 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1053, i64 0
  %ttype2286 = bitcast %union.YYSTYPE* %arrayidx2285 to %union.tree_node**
  %1054 = load %union.tree_node*, %union.tree_node** %ttype2286, align 8
  %identifier2287 = bitcast %union.tree_node* %1054 to %struct.tree_identifier*
  %id2288 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier2287, i32 0, i32 1
  %str2289 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id2288, i32 0, i32 1
  %1055 = load i8*, i8** %str2289, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %1055)
  br label %if.end.2290

if.end.2290:                                      ; preds = %if.then.2284, %land.lhs.true.2275, %sw.bb.2273
  %1056 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2291 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1056, i64 0
  %ttype2292 = bitcast %union.YYSTYPE* %arrayidx2291 to %union.tree_node**
  %1057 = load %union.tree_node*, %union.tree_node** %ttype2292, align 8
  %1058 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2293 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1058, i64 -1
  %ttype2294 = bitcast %union.YYSTYPE* %arrayidx2293 to %union.tree_node**
  %1059 = load %union.tree_node*, %union.tree_node** %ttype2294, align 8
  %call2295 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1057, %union.tree_node* %1059)
  %ttype2296 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2295, %union.tree_node** %ttype2296, align 8
  %1060 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2297 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1060, i64 -1
  %ttype2298 = bitcast %union.YYSTYPE* %arrayidx2297 to %union.tree_node**
  %1061 = load %union.tree_node*, %union.tree_node** %ttype2298, align 8
  %common2299 = bitcast %union.tree_node* %1061 to %struct.tree_common*
  %static_flag2300 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2299, i32 0, i32 2
  %bf.load2301 = load i32, i32* %static_flag2300, align 8
  %bf.lshr2302 = lshr i32 %bf.load2301, 18
  %bf.clear2303 = and i32 %bf.lshr2302, 1
  %ttype2304 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1062 = load %union.tree_node*, %union.tree_node** %ttype2304, align 8
  %common2305 = bitcast %union.tree_node* %1062 to %struct.tree_common*
  %static_flag2306 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2305, i32 0, i32 2
  %bf.load2307 = load i32, i32* %static_flag2306, align 8
  %bf.value2308 = and i32 %bf.clear2303, 1
  %bf.shl2309 = shl i32 %bf.value2308, 18
  %bf.clear2310 = and i32 %bf.load2307, -262145
  %bf.set2311 = or i32 %bf.clear2310, %bf.shl2309
  store i32 %bf.set2311, i32* %static_flag2306, align 8
  br label %sw.epilog

sw.bb.2312:                                       ; preds = %if.end.170
  %1063 = load i32, i32* @extra_warnings, align 4
  %tobool2313 = icmp ne i32 %1063, 0
  br i1 %tobool2313, label %land.lhs.true.2314, label %if.end.2329

land.lhs.true.2314:                               ; preds = %sw.bb.2312
  %1064 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2315 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1064, i64 -1
  %ttype2316 = bitcast %union.YYSTYPE* %arrayidx2315 to %union.tree_node**
  %1065 = load %union.tree_node*, %union.tree_node** %ttype2316, align 8
  %common2317 = bitcast %union.tree_node* %1065 to %struct.tree_common*
  %static_flag2318 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2317, i32 0, i32 2
  %bf.load2319 = load i32, i32* %static_flag2318, align 8
  %bf.lshr2320 = lshr i32 %bf.load2319, 18
  %bf.clear2321 = and i32 %bf.lshr2320, 1
  %tobool2322 = icmp ne i32 %bf.clear2321, 0
  br i1 %tobool2322, label %if.then.2323, label %if.end.2329

if.then.2323:                                     ; preds = %land.lhs.true.2314
  %1066 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2324 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1066, i64 0
  %ttype2325 = bitcast %union.YYSTYPE* %arrayidx2324 to %union.tree_node**
  %1067 = load %union.tree_node*, %union.tree_node** %ttype2325, align 8
  %identifier2326 = bitcast %union.tree_node* %1067 to %struct.tree_identifier*
  %id2327 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier2326, i32 0, i32 1
  %str2328 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id2327, i32 0, i32 1
  %1068 = load i8*, i8** %str2328, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %1068)
  br label %if.end.2329

if.end.2329:                                      ; preds = %if.then.2323, %land.lhs.true.2314, %sw.bb.2312
  %1069 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2330 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1069, i64 0
  %ttype2331 = bitcast %union.YYSTYPE* %arrayidx2330 to %union.tree_node**
  %1070 = load %union.tree_node*, %union.tree_node** %ttype2331, align 8
  %1071 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2332 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1071, i64 -1
  %ttype2333 = bitcast %union.YYSTYPE* %arrayidx2332 to %union.tree_node**
  %1072 = load %union.tree_node*, %union.tree_node** %ttype2333, align 8
  %call2334 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1070, %union.tree_node* %1072)
  %ttype2335 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2334, %union.tree_node** %ttype2335, align 8
  %1073 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2336 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1073, i64 -1
  %ttype2337 = bitcast %union.YYSTYPE* %arrayidx2336 to %union.tree_node**
  %1074 = load %union.tree_node*, %union.tree_node** %ttype2337, align 8
  %common2338 = bitcast %union.tree_node* %1074 to %struct.tree_common*
  %static_flag2339 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2338, i32 0, i32 2
  %bf.load2340 = load i32, i32* %static_flag2339, align 8
  %bf.lshr2341 = lshr i32 %bf.load2340, 18
  %bf.clear2342 = and i32 %bf.lshr2341, 1
  %ttype2343 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1075 = load %union.tree_node*, %union.tree_node** %ttype2343, align 8
  %common2344 = bitcast %union.tree_node* %1075 to %struct.tree_common*
  %static_flag2345 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2344, i32 0, i32 2
  %bf.load2346 = load i32, i32* %static_flag2345, align 8
  %bf.value2347 = and i32 %bf.clear2342, 1
  %bf.shl2348 = shl i32 %bf.value2347, 18
  %bf.clear2349 = and i32 %bf.load2346, -262145
  %bf.set2350 = or i32 %bf.clear2349, %bf.shl2348
  store i32 %bf.set2350, i32* %static_flag2345, align 8
  br label %sw.epilog

sw.bb.2351:                                       ; preds = %if.end.170
  %1076 = load i32, i32* @extra_warnings, align 4
  %tobool2352 = icmp ne i32 %1076, 0
  br i1 %tobool2352, label %land.lhs.true.2353, label %if.end.2368

land.lhs.true.2353:                               ; preds = %sw.bb.2351
  %1077 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2354 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1077, i64 -1
  %ttype2355 = bitcast %union.YYSTYPE* %arrayidx2354 to %union.tree_node**
  %1078 = load %union.tree_node*, %union.tree_node** %ttype2355, align 8
  %common2356 = bitcast %union.tree_node* %1078 to %struct.tree_common*
  %static_flag2357 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2356, i32 0, i32 2
  %bf.load2358 = load i32, i32* %static_flag2357, align 8
  %bf.lshr2359 = lshr i32 %bf.load2358, 18
  %bf.clear2360 = and i32 %bf.lshr2359, 1
  %tobool2361 = icmp ne i32 %bf.clear2360, 0
  br i1 %tobool2361, label %if.then.2362, label %if.end.2368

if.then.2362:                                     ; preds = %land.lhs.true.2353
  %1079 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2363 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1079, i64 0
  %ttype2364 = bitcast %union.YYSTYPE* %arrayidx2363 to %union.tree_node**
  %1080 = load %union.tree_node*, %union.tree_node** %ttype2364, align 8
  %identifier2365 = bitcast %union.tree_node* %1080 to %struct.tree_identifier*
  %id2366 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier2365, i32 0, i32 1
  %str2367 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id2366, i32 0, i32 1
  %1081 = load i8*, i8** %str2367, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %1081)
  br label %if.end.2368

if.end.2368:                                      ; preds = %if.then.2362, %land.lhs.true.2353, %sw.bb.2351
  %1082 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2369 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1082, i64 0
  %ttype2370 = bitcast %union.YYSTYPE* %arrayidx2369 to %union.tree_node**
  %1083 = load %union.tree_node*, %union.tree_node** %ttype2370, align 8
  %1084 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2371 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1084, i64 -1
  %ttype2372 = bitcast %union.YYSTYPE* %arrayidx2371 to %union.tree_node**
  %1085 = load %union.tree_node*, %union.tree_node** %ttype2372, align 8
  %call2373 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1083, %union.tree_node* %1085)
  %ttype2374 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2373, %union.tree_node** %ttype2374, align 8
  %1086 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2375 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1086, i64 -1
  %ttype2376 = bitcast %union.YYSTYPE* %arrayidx2375 to %union.tree_node**
  %1087 = load %union.tree_node*, %union.tree_node** %ttype2376, align 8
  %common2377 = bitcast %union.tree_node* %1087 to %struct.tree_common*
  %static_flag2378 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2377, i32 0, i32 2
  %bf.load2379 = load i32, i32* %static_flag2378, align 8
  %bf.lshr2380 = lshr i32 %bf.load2379, 18
  %bf.clear2381 = and i32 %bf.lshr2380, 1
  %ttype2382 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1088 = load %union.tree_node*, %union.tree_node** %ttype2382, align 8
  %common2383 = bitcast %union.tree_node* %1088 to %struct.tree_common*
  %static_flag2384 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2383, i32 0, i32 2
  %bf.load2385 = load i32, i32* %static_flag2384, align 8
  %bf.value2386 = and i32 %bf.clear2381, 1
  %bf.shl2387 = shl i32 %bf.value2386, 18
  %bf.clear2388 = and i32 %bf.load2385, -262145
  %bf.set2389 = or i32 %bf.clear2388, %bf.shl2387
  store i32 %bf.set2389, i32* %static_flag2384, align 8
  br label %sw.epilog

sw.bb.2390:                                       ; preds = %if.end.170
  %1089 = load i32, i32* @extra_warnings, align 4
  %tobool2391 = icmp ne i32 %1089, 0
  br i1 %tobool2391, label %land.lhs.true.2392, label %if.end.2407

land.lhs.true.2392:                               ; preds = %sw.bb.2390
  %1090 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2393 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1090, i64 -1
  %ttype2394 = bitcast %union.YYSTYPE* %arrayidx2393 to %union.tree_node**
  %1091 = load %union.tree_node*, %union.tree_node** %ttype2394, align 8
  %common2395 = bitcast %union.tree_node* %1091 to %struct.tree_common*
  %static_flag2396 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2395, i32 0, i32 2
  %bf.load2397 = load i32, i32* %static_flag2396, align 8
  %bf.lshr2398 = lshr i32 %bf.load2397, 18
  %bf.clear2399 = and i32 %bf.lshr2398, 1
  %tobool2400 = icmp ne i32 %bf.clear2399, 0
  br i1 %tobool2400, label %if.then.2401, label %if.end.2407

if.then.2401:                                     ; preds = %land.lhs.true.2392
  %1092 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2402 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1092, i64 0
  %ttype2403 = bitcast %union.YYSTYPE* %arrayidx2402 to %union.tree_node**
  %1093 = load %union.tree_node*, %union.tree_node** %ttype2403, align 8
  %identifier2404 = bitcast %union.tree_node* %1093 to %struct.tree_identifier*
  %id2405 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier2404, i32 0, i32 1
  %str2406 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id2405, i32 0, i32 1
  %1094 = load i8*, i8** %str2406, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %1094)
  br label %if.end.2407

if.end.2407:                                      ; preds = %if.then.2401, %land.lhs.true.2392, %sw.bb.2390
  %1095 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2408 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1095, i64 0
  %ttype2409 = bitcast %union.YYSTYPE* %arrayidx2408 to %union.tree_node**
  %1096 = load %union.tree_node*, %union.tree_node** %ttype2409, align 8
  %1097 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2410 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1097, i64 -1
  %ttype2411 = bitcast %union.YYSTYPE* %arrayidx2410 to %union.tree_node**
  %1098 = load %union.tree_node*, %union.tree_node** %ttype2411, align 8
  %call2412 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1096, %union.tree_node* %1098)
  %ttype2413 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2412, %union.tree_node** %ttype2413, align 8
  %1099 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2414 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1099, i64 -1
  %ttype2415 = bitcast %union.YYSTYPE* %arrayidx2414 to %union.tree_node**
  %1100 = load %union.tree_node*, %union.tree_node** %ttype2415, align 8
  %common2416 = bitcast %union.tree_node* %1100 to %struct.tree_common*
  %static_flag2417 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2416, i32 0, i32 2
  %bf.load2418 = load i32, i32* %static_flag2417, align 8
  %bf.lshr2419 = lshr i32 %bf.load2418, 18
  %bf.clear2420 = and i32 %bf.lshr2419, 1
  %ttype2421 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1101 = load %union.tree_node*, %union.tree_node** %ttype2421, align 8
  %common2422 = bitcast %union.tree_node* %1101 to %struct.tree_common*
  %static_flag2423 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2422, i32 0, i32 2
  %bf.load2424 = load i32, i32* %static_flag2423, align 8
  %bf.value2425 = and i32 %bf.clear2420, 1
  %bf.shl2426 = shl i32 %bf.value2425, 18
  %bf.clear2427 = and i32 %bf.load2424, -262145
  %bf.set2428 = or i32 %bf.clear2427, %bf.shl2426
  store i32 %bf.set2428, i32* %static_flag2423, align 8
  br label %sw.epilog

sw.bb.2429:                                       ; preds = %if.end.170
  %1102 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2430 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1102, i64 0
  %ttype2431 = bitcast %union.YYSTYPE* %arrayidx2430 to %union.tree_node**
  %1103 = load %union.tree_node*, %union.tree_node** %ttype2431, align 8
  %1104 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2432 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1104, i64 -1
  %ttype2433 = bitcast %union.YYSTYPE* %arrayidx2432 to %union.tree_node**
  %1105 = load %union.tree_node*, %union.tree_node** %ttype2433, align 8
  %call2434 = call %union.tree_node* @tree_cons(%union.tree_node* %1103, %union.tree_node* null, %union.tree_node* %1105)
  %ttype2435 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2434, %union.tree_node** %ttype2435, align 8
  %1106 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2436 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1106, i64 -1
  %ttype2437 = bitcast %union.YYSTYPE* %arrayidx2436 to %union.tree_node**
  %1107 = load %union.tree_node*, %union.tree_node** %ttype2437, align 8
  %common2438 = bitcast %union.tree_node* %1107 to %struct.tree_common*
  %static_flag2439 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2438, i32 0, i32 2
  %bf.load2440 = load i32, i32* %static_flag2439, align 8
  %bf.lshr2441 = lshr i32 %bf.load2440, 18
  %bf.clear2442 = and i32 %bf.lshr2441, 1
  %ttype2443 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1108 = load %union.tree_node*, %union.tree_node** %ttype2443, align 8
  %common2444 = bitcast %union.tree_node* %1108 to %struct.tree_common*
  %static_flag2445 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2444, i32 0, i32 2
  %bf.load2446 = load i32, i32* %static_flag2445, align 8
  %bf.value2447 = and i32 %bf.clear2442, 1
  %bf.shl2448 = shl i32 %bf.value2447, 18
  %bf.clear2449 = and i32 %bf.load2446, -262145
  %bf.set2450 = or i32 %bf.clear2449, %bf.shl2448
  store i32 %bf.set2450, i32* %static_flag2445, align 8
  br label %sw.epilog

sw.bb.2451:                                       ; preds = %if.end.170
  %1109 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2452 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1109, i64 0
  %ttype2453 = bitcast %union.YYSTYPE* %arrayidx2452 to %union.tree_node**
  %1110 = load %union.tree_node*, %union.tree_node** %ttype2453, align 8
  %1111 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2454 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1111, i64 -1
  %ttype2455 = bitcast %union.YYSTYPE* %arrayidx2454 to %union.tree_node**
  %1112 = load %union.tree_node*, %union.tree_node** %ttype2455, align 8
  %call2456 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1110, %union.tree_node* %1112)
  %ttype2457 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2456, %union.tree_node** %ttype2457, align 8
  %ttype2458 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1113 = load %union.tree_node*, %union.tree_node** %ttype2458, align 8
  %common2459 = bitcast %union.tree_node* %1113 to %struct.tree_common*
  %static_flag2460 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2459, i32 0, i32 2
  %bf.load2461 = load i32, i32* %static_flag2460, align 8
  %bf.clear2462 = and i32 %bf.load2461, -262145
  %bf.set2463 = or i32 %bf.clear2462, 262144
  store i32 %bf.set2463, i32* %static_flag2460, align 8
  br label %sw.epilog

sw.bb.2464:                                       ; preds = %if.end.170
  %1114 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2465 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1114, i64 0
  %ttype2466 = bitcast %union.YYSTYPE* %arrayidx2465 to %union.tree_node**
  %1115 = load %union.tree_node*, %union.tree_node** %ttype2466, align 8
  %1116 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2467 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1116, i64 -1
  %ttype2468 = bitcast %union.YYSTYPE* %arrayidx2467 to %union.tree_node**
  %1117 = load %union.tree_node*, %union.tree_node** %ttype2468, align 8
  %call2469 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1115, %union.tree_node* %1117)
  %ttype2470 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2469, %union.tree_node** %ttype2470, align 8
  %ttype2471 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1118 = load %union.tree_node*, %union.tree_node** %ttype2471, align 8
  %common2472 = bitcast %union.tree_node* %1118 to %struct.tree_common*
  %static_flag2473 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2472, i32 0, i32 2
  %bf.load2474 = load i32, i32* %static_flag2473, align 8
  %bf.clear2475 = and i32 %bf.load2474, -262145
  %bf.set2476 = or i32 %bf.clear2475, 262144
  store i32 %bf.set2476, i32* %static_flag2473, align 8
  br label %sw.epilog

sw.bb.2477:                                       ; preds = %if.end.170
  %1119 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2478 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1119, i64 0
  %ttype2479 = bitcast %union.YYSTYPE* %arrayidx2478 to %union.tree_node**
  %1120 = load %union.tree_node*, %union.tree_node** %ttype2479, align 8
  %1121 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2480 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1121, i64 -1
  %ttype2481 = bitcast %union.YYSTYPE* %arrayidx2480 to %union.tree_node**
  %1122 = load %union.tree_node*, %union.tree_node** %ttype2481, align 8
  %call2482 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1120, %union.tree_node* %1122)
  %ttype2483 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2482, %union.tree_node** %ttype2483, align 8
  %ttype2484 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1123 = load %union.tree_node*, %union.tree_node** %ttype2484, align 8
  %common2485 = bitcast %union.tree_node* %1123 to %struct.tree_common*
  %static_flag2486 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2485, i32 0, i32 2
  %bf.load2487 = load i32, i32* %static_flag2486, align 8
  %bf.clear2488 = and i32 %bf.load2487, -262145
  %bf.set2489 = or i32 %bf.clear2488, 262144
  store i32 %bf.set2489, i32* %static_flag2486, align 8
  br label %sw.epilog

sw.bb.2490:                                       ; preds = %if.end.170
  %1124 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2491 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1124, i64 0
  %ttype2492 = bitcast %union.YYSTYPE* %arrayidx2491 to %union.tree_node**
  %1125 = load %union.tree_node*, %union.tree_node** %ttype2492, align 8
  %1126 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2493 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1126, i64 -1
  %ttype2494 = bitcast %union.YYSTYPE* %arrayidx2493 to %union.tree_node**
  %1127 = load %union.tree_node*, %union.tree_node** %ttype2494, align 8
  %call2495 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1125, %union.tree_node* %1127)
  %ttype2496 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2495, %union.tree_node** %ttype2496, align 8
  %ttype2497 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1128 = load %union.tree_node*, %union.tree_node** %ttype2497, align 8
  %common2498 = bitcast %union.tree_node* %1128 to %struct.tree_common*
  %static_flag2499 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2498, i32 0, i32 2
  %bf.load2500 = load i32, i32* %static_flag2499, align 8
  %bf.clear2501 = and i32 %bf.load2500, -262145
  %bf.set2502 = or i32 %bf.clear2501, 262144
  store i32 %bf.set2502, i32* %static_flag2499, align 8
  br label %sw.epilog

sw.bb.2503:                                       ; preds = %if.end.170
  %1129 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2504 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1129, i64 0
  %ttype2505 = bitcast %union.YYSTYPE* %arrayidx2504 to %union.tree_node**
  %1130 = load %union.tree_node*, %union.tree_node** %ttype2505, align 8
  %1131 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2506 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1131, i64 -1
  %ttype2507 = bitcast %union.YYSTYPE* %arrayidx2506 to %union.tree_node**
  %1132 = load %union.tree_node*, %union.tree_node** %ttype2507, align 8
  %call2508 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1130, %union.tree_node* %1132)
  %ttype2509 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2508, %union.tree_node** %ttype2509, align 8
  %ttype2510 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1133 = load %union.tree_node*, %union.tree_node** %ttype2510, align 8
  %common2511 = bitcast %union.tree_node* %1133 to %struct.tree_common*
  %static_flag2512 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2511, i32 0, i32 2
  %bf.load2513 = load i32, i32* %static_flag2512, align 8
  %bf.clear2514 = and i32 %bf.load2513, -262145
  %bf.set2515 = or i32 %bf.clear2514, 262144
  store i32 %bf.set2515, i32* %static_flag2512, align 8
  br label %sw.epilog

sw.bb.2516:                                       ; preds = %if.end.170
  %1134 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2517 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1134, i64 0
  %ttype2518 = bitcast %union.YYSTYPE* %arrayidx2517 to %union.tree_node**
  %1135 = load %union.tree_node*, %union.tree_node** %ttype2518, align 8
  %1136 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2519 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1136, i64 -1
  %ttype2520 = bitcast %union.YYSTYPE* %arrayidx2519 to %union.tree_node**
  %1137 = load %union.tree_node*, %union.tree_node** %ttype2520, align 8
  %call2521 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1135, %union.tree_node* %1137)
  %ttype2522 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2521, %union.tree_node** %ttype2522, align 8
  %ttype2523 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1138 = load %union.tree_node*, %union.tree_node** %ttype2523, align 8
  %common2524 = bitcast %union.tree_node* %1138 to %struct.tree_common*
  %static_flag2525 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2524, i32 0, i32 2
  %bf.load2526 = load i32, i32* %static_flag2525, align 8
  %bf.clear2527 = and i32 %bf.load2526, -262145
  %bf.set2528 = or i32 %bf.clear2527, 262144
  store i32 %bf.set2528, i32* %static_flag2525, align 8
  br label %sw.epilog

sw.bb.2529:                                       ; preds = %if.end.170
  %1139 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2530 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1139, i64 0
  %ttype2531 = bitcast %union.YYSTYPE* %arrayidx2530 to %union.tree_node**
  %1140 = load %union.tree_node*, %union.tree_node** %ttype2531, align 8
  %1141 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2532 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1141, i64 -1
  %ttype2533 = bitcast %union.YYSTYPE* %arrayidx2532 to %union.tree_node**
  %1142 = load %union.tree_node*, %union.tree_node** %ttype2533, align 8
  %call2534 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1140, %union.tree_node* %1142)
  %ttype2535 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2534, %union.tree_node** %ttype2535, align 8
  %ttype2536 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1143 = load %union.tree_node*, %union.tree_node** %ttype2536, align 8
  %common2537 = bitcast %union.tree_node* %1143 to %struct.tree_common*
  %static_flag2538 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2537, i32 0, i32 2
  %bf.load2539 = load i32, i32* %static_flag2538, align 8
  %bf.clear2540 = and i32 %bf.load2539, -262145
  %bf.set2541 = or i32 %bf.clear2540, 262144
  store i32 %bf.set2541, i32* %static_flag2538, align 8
  br label %sw.epilog

sw.bb.2542:                                       ; preds = %if.end.170
  %1144 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2543 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1144, i64 0
  %ttype2544 = bitcast %union.YYSTYPE* %arrayidx2543 to %union.tree_node**
  %1145 = load %union.tree_node*, %union.tree_node** %ttype2544, align 8
  %1146 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2545 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1146, i64 -1
  %ttype2546 = bitcast %union.YYSTYPE* %arrayidx2545 to %union.tree_node**
  %1147 = load %union.tree_node*, %union.tree_node** %ttype2546, align 8
  %call2547 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1145, %union.tree_node* %1147)
  %ttype2548 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2547, %union.tree_node** %ttype2548, align 8
  %ttype2549 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1148 = load %union.tree_node*, %union.tree_node** %ttype2549, align 8
  %common2550 = bitcast %union.tree_node* %1148 to %struct.tree_common*
  %static_flag2551 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2550, i32 0, i32 2
  %bf.load2552 = load i32, i32* %static_flag2551, align 8
  %bf.clear2553 = and i32 %bf.load2552, -262145
  %bf.set2554 = or i32 %bf.clear2553, 262144
  store i32 %bf.set2554, i32* %static_flag2551, align 8
  br label %sw.epilog

sw.bb.2555:                                       ; preds = %if.end.170
  %1149 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2556 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1149, i64 0
  %ttype2557 = bitcast %union.YYSTYPE* %arrayidx2556 to %union.tree_node**
  %1150 = load %union.tree_node*, %union.tree_node** %ttype2557, align 8
  %1151 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2558 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1151, i64 -1
  %ttype2559 = bitcast %union.YYSTYPE* %arrayidx2558 to %union.tree_node**
  %1152 = load %union.tree_node*, %union.tree_node** %ttype2559, align 8
  %call2560 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1150, %union.tree_node* %1152)
  %ttype2561 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2560, %union.tree_node** %ttype2561, align 8
  %ttype2562 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1153 = load %union.tree_node*, %union.tree_node** %ttype2562, align 8
  %common2563 = bitcast %union.tree_node* %1153 to %struct.tree_common*
  %static_flag2564 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2563, i32 0, i32 2
  %bf.load2565 = load i32, i32* %static_flag2564, align 8
  %bf.clear2566 = and i32 %bf.load2565, -262145
  %bf.set2567 = or i32 %bf.clear2566, 262144
  store i32 %bf.set2567, i32* %static_flag2564, align 8
  br label %sw.epilog

sw.bb.2568:                                       ; preds = %if.end.170
  %1154 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2569 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1154, i64 0
  %ttype2570 = bitcast %union.YYSTYPE* %arrayidx2569 to %union.tree_node**
  %1155 = load %union.tree_node*, %union.tree_node** %ttype2570, align 8
  %1156 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2571 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1156, i64 -1
  %ttype2572 = bitcast %union.YYSTYPE* %arrayidx2571 to %union.tree_node**
  %1157 = load %union.tree_node*, %union.tree_node** %ttype2572, align 8
  %call2573 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1155, %union.tree_node* %1157)
  %ttype2574 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2573, %union.tree_node** %ttype2574, align 8
  %ttype2575 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1158 = load %union.tree_node*, %union.tree_node** %ttype2575, align 8
  %common2576 = bitcast %union.tree_node* %1158 to %struct.tree_common*
  %static_flag2577 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2576, i32 0, i32 2
  %bf.load2578 = load i32, i32* %static_flag2577, align 8
  %bf.clear2579 = and i32 %bf.load2578, -262145
  %bf.set2580 = or i32 %bf.clear2579, 262144
  store i32 %bf.set2580, i32* %static_flag2577, align 8
  br label %sw.epilog

sw.bb.2581:                                       ; preds = %if.end.170
  %1159 = load i32, i32* @extra_warnings, align 4
  %tobool2582 = icmp ne i32 %1159, 0
  br i1 %tobool2582, label %land.lhs.true.2583, label %if.end.2598

land.lhs.true.2583:                               ; preds = %sw.bb.2581
  %1160 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2584 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1160, i64 -1
  %ttype2585 = bitcast %union.YYSTYPE* %arrayidx2584 to %union.tree_node**
  %1161 = load %union.tree_node*, %union.tree_node** %ttype2585, align 8
  %common2586 = bitcast %union.tree_node* %1161 to %struct.tree_common*
  %static_flag2587 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2586, i32 0, i32 2
  %bf.load2588 = load i32, i32* %static_flag2587, align 8
  %bf.lshr2589 = lshr i32 %bf.load2588, 18
  %bf.clear2590 = and i32 %bf.lshr2589, 1
  %tobool2591 = icmp ne i32 %bf.clear2590, 0
  br i1 %tobool2591, label %if.then.2592, label %if.end.2598

if.then.2592:                                     ; preds = %land.lhs.true.2583
  %1162 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2593 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1162, i64 0
  %ttype2594 = bitcast %union.YYSTYPE* %arrayidx2593 to %union.tree_node**
  %1163 = load %union.tree_node*, %union.tree_node** %ttype2594, align 8
  %identifier2595 = bitcast %union.tree_node* %1163 to %struct.tree_identifier*
  %id2596 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier2595, i32 0, i32 1
  %str2597 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id2596, i32 0, i32 1
  %1164 = load i8*, i8** %str2597, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %1164)
  br label %if.end.2598

if.end.2598:                                      ; preds = %if.then.2592, %land.lhs.true.2583, %sw.bb.2581
  %1165 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2599 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1165, i64 0
  %ttype2600 = bitcast %union.YYSTYPE* %arrayidx2599 to %union.tree_node**
  %1166 = load %union.tree_node*, %union.tree_node** %ttype2600, align 8
  %1167 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2601 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1167, i64 -1
  %ttype2602 = bitcast %union.YYSTYPE* %arrayidx2601 to %union.tree_node**
  %1168 = load %union.tree_node*, %union.tree_node** %ttype2602, align 8
  %call2603 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1166, %union.tree_node* %1168)
  %ttype2604 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2603, %union.tree_node** %ttype2604, align 8
  %1169 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2605 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1169, i64 -1
  %ttype2606 = bitcast %union.YYSTYPE* %arrayidx2605 to %union.tree_node**
  %1170 = load %union.tree_node*, %union.tree_node** %ttype2606, align 8
  %common2607 = bitcast %union.tree_node* %1170 to %struct.tree_common*
  %static_flag2608 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2607, i32 0, i32 2
  %bf.load2609 = load i32, i32* %static_flag2608, align 8
  %bf.lshr2610 = lshr i32 %bf.load2609, 18
  %bf.clear2611 = and i32 %bf.lshr2610, 1
  %ttype2612 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1171 = load %union.tree_node*, %union.tree_node** %ttype2612, align 8
  %common2613 = bitcast %union.tree_node* %1171 to %struct.tree_common*
  %static_flag2614 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2613, i32 0, i32 2
  %bf.load2615 = load i32, i32* %static_flag2614, align 8
  %bf.value2616 = and i32 %bf.clear2611, 1
  %bf.shl2617 = shl i32 %bf.value2616, 18
  %bf.clear2618 = and i32 %bf.load2615, -262145
  %bf.set2619 = or i32 %bf.clear2618, %bf.shl2617
  store i32 %bf.set2619, i32* %static_flag2614, align 8
  br label %sw.epilog

sw.bb.2620:                                       ; preds = %if.end.170
  %1172 = load i32, i32* @extra_warnings, align 4
  %tobool2621 = icmp ne i32 %1172, 0
  br i1 %tobool2621, label %land.lhs.true.2622, label %if.end.2637

land.lhs.true.2622:                               ; preds = %sw.bb.2620
  %1173 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2623 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1173, i64 -1
  %ttype2624 = bitcast %union.YYSTYPE* %arrayidx2623 to %union.tree_node**
  %1174 = load %union.tree_node*, %union.tree_node** %ttype2624, align 8
  %common2625 = bitcast %union.tree_node* %1174 to %struct.tree_common*
  %static_flag2626 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2625, i32 0, i32 2
  %bf.load2627 = load i32, i32* %static_flag2626, align 8
  %bf.lshr2628 = lshr i32 %bf.load2627, 18
  %bf.clear2629 = and i32 %bf.lshr2628, 1
  %tobool2630 = icmp ne i32 %bf.clear2629, 0
  br i1 %tobool2630, label %if.then.2631, label %if.end.2637

if.then.2631:                                     ; preds = %land.lhs.true.2622
  %1175 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2632 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1175, i64 0
  %ttype2633 = bitcast %union.YYSTYPE* %arrayidx2632 to %union.tree_node**
  %1176 = load %union.tree_node*, %union.tree_node** %ttype2633, align 8
  %identifier2634 = bitcast %union.tree_node* %1176 to %struct.tree_identifier*
  %id2635 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier2634, i32 0, i32 1
  %str2636 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id2635, i32 0, i32 1
  %1177 = load i8*, i8** %str2636, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %1177)
  br label %if.end.2637

if.end.2637:                                      ; preds = %if.then.2631, %land.lhs.true.2622, %sw.bb.2620
  %1178 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2638 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1178, i64 0
  %ttype2639 = bitcast %union.YYSTYPE* %arrayidx2638 to %union.tree_node**
  %1179 = load %union.tree_node*, %union.tree_node** %ttype2639, align 8
  %1180 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2640 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1180, i64 -1
  %ttype2641 = bitcast %union.YYSTYPE* %arrayidx2640 to %union.tree_node**
  %1181 = load %union.tree_node*, %union.tree_node** %ttype2641, align 8
  %call2642 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1179, %union.tree_node* %1181)
  %ttype2643 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2642, %union.tree_node** %ttype2643, align 8
  %1182 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2644 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1182, i64 -1
  %ttype2645 = bitcast %union.YYSTYPE* %arrayidx2644 to %union.tree_node**
  %1183 = load %union.tree_node*, %union.tree_node** %ttype2645, align 8
  %common2646 = bitcast %union.tree_node* %1183 to %struct.tree_common*
  %static_flag2647 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2646, i32 0, i32 2
  %bf.load2648 = load i32, i32* %static_flag2647, align 8
  %bf.lshr2649 = lshr i32 %bf.load2648, 18
  %bf.clear2650 = and i32 %bf.lshr2649, 1
  %ttype2651 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1184 = load %union.tree_node*, %union.tree_node** %ttype2651, align 8
  %common2652 = bitcast %union.tree_node* %1184 to %struct.tree_common*
  %static_flag2653 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2652, i32 0, i32 2
  %bf.load2654 = load i32, i32* %static_flag2653, align 8
  %bf.value2655 = and i32 %bf.clear2650, 1
  %bf.shl2656 = shl i32 %bf.value2655, 18
  %bf.clear2657 = and i32 %bf.load2654, -262145
  %bf.set2658 = or i32 %bf.clear2657, %bf.shl2656
  store i32 %bf.set2658, i32* %static_flag2653, align 8
  br label %sw.epilog

sw.bb.2659:                                       ; preds = %if.end.170
  %1185 = load i32, i32* @extra_warnings, align 4
  %tobool2660 = icmp ne i32 %1185, 0
  br i1 %tobool2660, label %land.lhs.true.2661, label %if.end.2676

land.lhs.true.2661:                               ; preds = %sw.bb.2659
  %1186 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2662 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1186, i64 -1
  %ttype2663 = bitcast %union.YYSTYPE* %arrayidx2662 to %union.tree_node**
  %1187 = load %union.tree_node*, %union.tree_node** %ttype2663, align 8
  %common2664 = bitcast %union.tree_node* %1187 to %struct.tree_common*
  %static_flag2665 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2664, i32 0, i32 2
  %bf.load2666 = load i32, i32* %static_flag2665, align 8
  %bf.lshr2667 = lshr i32 %bf.load2666, 18
  %bf.clear2668 = and i32 %bf.lshr2667, 1
  %tobool2669 = icmp ne i32 %bf.clear2668, 0
  br i1 %tobool2669, label %if.then.2670, label %if.end.2676

if.then.2670:                                     ; preds = %land.lhs.true.2661
  %1188 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2671 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1188, i64 0
  %ttype2672 = bitcast %union.YYSTYPE* %arrayidx2671 to %union.tree_node**
  %1189 = load %union.tree_node*, %union.tree_node** %ttype2672, align 8
  %identifier2673 = bitcast %union.tree_node* %1189 to %struct.tree_identifier*
  %id2674 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier2673, i32 0, i32 1
  %str2675 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id2674, i32 0, i32 1
  %1190 = load i8*, i8** %str2675, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %1190)
  br label %if.end.2676

if.end.2676:                                      ; preds = %if.then.2670, %land.lhs.true.2661, %sw.bb.2659
  %1191 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2677 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1191, i64 0
  %ttype2678 = bitcast %union.YYSTYPE* %arrayidx2677 to %union.tree_node**
  %1192 = load %union.tree_node*, %union.tree_node** %ttype2678, align 8
  %1193 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2679 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1193, i64 -1
  %ttype2680 = bitcast %union.YYSTYPE* %arrayidx2679 to %union.tree_node**
  %1194 = load %union.tree_node*, %union.tree_node** %ttype2680, align 8
  %call2681 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1192, %union.tree_node* %1194)
  %ttype2682 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2681, %union.tree_node** %ttype2682, align 8
  %1195 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2683 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1195, i64 -1
  %ttype2684 = bitcast %union.YYSTYPE* %arrayidx2683 to %union.tree_node**
  %1196 = load %union.tree_node*, %union.tree_node** %ttype2684, align 8
  %common2685 = bitcast %union.tree_node* %1196 to %struct.tree_common*
  %static_flag2686 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2685, i32 0, i32 2
  %bf.load2687 = load i32, i32* %static_flag2686, align 8
  %bf.lshr2688 = lshr i32 %bf.load2687, 18
  %bf.clear2689 = and i32 %bf.lshr2688, 1
  %ttype2690 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1197 = load %union.tree_node*, %union.tree_node** %ttype2690, align 8
  %common2691 = bitcast %union.tree_node* %1197 to %struct.tree_common*
  %static_flag2692 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2691, i32 0, i32 2
  %bf.load2693 = load i32, i32* %static_flag2692, align 8
  %bf.value2694 = and i32 %bf.clear2689, 1
  %bf.shl2695 = shl i32 %bf.value2694, 18
  %bf.clear2696 = and i32 %bf.load2693, -262145
  %bf.set2697 = or i32 %bf.clear2696, %bf.shl2695
  store i32 %bf.set2697, i32* %static_flag2692, align 8
  br label %sw.epilog

sw.bb.2698:                                       ; preds = %if.end.170
  %1198 = load i32, i32* @extra_warnings, align 4
  %tobool2699 = icmp ne i32 %1198, 0
  br i1 %tobool2699, label %land.lhs.true.2700, label %if.end.2715

land.lhs.true.2700:                               ; preds = %sw.bb.2698
  %1199 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2701 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1199, i64 -1
  %ttype2702 = bitcast %union.YYSTYPE* %arrayidx2701 to %union.tree_node**
  %1200 = load %union.tree_node*, %union.tree_node** %ttype2702, align 8
  %common2703 = bitcast %union.tree_node* %1200 to %struct.tree_common*
  %static_flag2704 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2703, i32 0, i32 2
  %bf.load2705 = load i32, i32* %static_flag2704, align 8
  %bf.lshr2706 = lshr i32 %bf.load2705, 18
  %bf.clear2707 = and i32 %bf.lshr2706, 1
  %tobool2708 = icmp ne i32 %bf.clear2707, 0
  br i1 %tobool2708, label %if.then.2709, label %if.end.2715

if.then.2709:                                     ; preds = %land.lhs.true.2700
  %1201 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2710 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1201, i64 0
  %ttype2711 = bitcast %union.YYSTYPE* %arrayidx2710 to %union.tree_node**
  %1202 = load %union.tree_node*, %union.tree_node** %ttype2711, align 8
  %identifier2712 = bitcast %union.tree_node* %1202 to %struct.tree_identifier*
  %id2713 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier2712, i32 0, i32 1
  %str2714 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id2713, i32 0, i32 1
  %1203 = load i8*, i8** %str2714, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0), i8* %1203)
  br label %if.end.2715

if.end.2715:                                      ; preds = %if.then.2709, %land.lhs.true.2700, %sw.bb.2698
  %1204 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2716 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1204, i64 0
  %ttype2717 = bitcast %union.YYSTYPE* %arrayidx2716 to %union.tree_node**
  %1205 = load %union.tree_node*, %union.tree_node** %ttype2717, align 8
  %1206 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2718 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1206, i64 -1
  %ttype2719 = bitcast %union.YYSTYPE* %arrayidx2718 to %union.tree_node**
  %1207 = load %union.tree_node*, %union.tree_node** %ttype2719, align 8
  %call2720 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1205, %union.tree_node* %1207)
  %ttype2721 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2720, %union.tree_node** %ttype2721, align 8
  %1208 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2722 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1208, i64 -1
  %ttype2723 = bitcast %union.YYSTYPE* %arrayidx2722 to %union.tree_node**
  %1209 = load %union.tree_node*, %union.tree_node** %ttype2723, align 8
  %common2724 = bitcast %union.tree_node* %1209 to %struct.tree_common*
  %static_flag2725 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2724, i32 0, i32 2
  %bf.load2726 = load i32, i32* %static_flag2725, align 8
  %bf.lshr2727 = lshr i32 %bf.load2726, 18
  %bf.clear2728 = and i32 %bf.lshr2727, 1
  %ttype2729 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1210 = load %union.tree_node*, %union.tree_node** %ttype2729, align 8
  %common2730 = bitcast %union.tree_node* %1210 to %struct.tree_common*
  %static_flag2731 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2730, i32 0, i32 2
  %bf.load2732 = load i32, i32* %static_flag2731, align 8
  %bf.value2733 = and i32 %bf.clear2728, 1
  %bf.shl2734 = shl i32 %bf.value2733, 18
  %bf.clear2735 = and i32 %bf.load2732, -262145
  %bf.set2736 = or i32 %bf.clear2735, %bf.shl2734
  store i32 %bf.set2736, i32* %static_flag2731, align 8
  br label %sw.epilog

sw.bb.2737:                                       ; preds = %if.end.170
  %1211 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2738 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1211, i64 0
  %ttype2739 = bitcast %union.YYSTYPE* %arrayidx2738 to %union.tree_node**
  %1212 = load %union.tree_node*, %union.tree_node** %ttype2739, align 8
  %1213 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2740 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1213, i64 -1
  %ttype2741 = bitcast %union.YYSTYPE* %arrayidx2740 to %union.tree_node**
  %1214 = load %union.tree_node*, %union.tree_node** %ttype2741, align 8
  %call2742 = call %union.tree_node* @tree_cons(%union.tree_node* %1212, %union.tree_node* null, %union.tree_node* %1214)
  %ttype2743 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2742, %union.tree_node** %ttype2743, align 8
  %1215 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2744 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1215, i64 -1
  %ttype2745 = bitcast %union.YYSTYPE* %arrayidx2744 to %union.tree_node**
  %1216 = load %union.tree_node*, %union.tree_node** %ttype2745, align 8
  %common2746 = bitcast %union.tree_node* %1216 to %struct.tree_common*
  %static_flag2747 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2746, i32 0, i32 2
  %bf.load2748 = load i32, i32* %static_flag2747, align 8
  %bf.lshr2749 = lshr i32 %bf.load2748, 18
  %bf.clear2750 = and i32 %bf.lshr2749, 1
  %ttype2751 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1217 = load %union.tree_node*, %union.tree_node** %ttype2751, align 8
  %common2752 = bitcast %union.tree_node* %1217 to %struct.tree_common*
  %static_flag2753 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2752, i32 0, i32 2
  %bf.load2754 = load i32, i32* %static_flag2753, align 8
  %bf.value2755 = and i32 %bf.clear2750, 1
  %bf.shl2756 = shl i32 %bf.value2755, 18
  %bf.clear2757 = and i32 %bf.load2754, -262145
  %bf.set2758 = or i32 %bf.clear2757, %bf.shl2756
  store i32 %bf.set2758, i32* %static_flag2753, align 8
  br label %sw.epilog

sw.bb.2759:                                       ; preds = %if.end.170
  %1218 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2760 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1218, i64 0
  %ttype2761 = bitcast %union.YYSTYPE* %arrayidx2760 to %union.tree_node**
  %1219 = load %union.tree_node*, %union.tree_node** %ttype2761, align 8
  %1220 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2762 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1220, i64 -1
  %ttype2763 = bitcast %union.YYSTYPE* %arrayidx2762 to %union.tree_node**
  %1221 = load %union.tree_node*, %union.tree_node** %ttype2763, align 8
  %call2764 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1219, %union.tree_node* %1221)
  %ttype2765 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2764, %union.tree_node** %ttype2765, align 8
  %ttype2766 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1222 = load %union.tree_node*, %union.tree_node** %ttype2766, align 8
  %common2767 = bitcast %union.tree_node* %1222 to %struct.tree_common*
  %static_flag2768 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2767, i32 0, i32 2
  %bf.load2769 = load i32, i32* %static_flag2768, align 8
  %bf.clear2770 = and i32 %bf.load2769, -262145
  %bf.set2771 = or i32 %bf.clear2770, 262144
  store i32 %bf.set2771, i32* %static_flag2768, align 8
  br label %sw.epilog

sw.bb.2772:                                       ; preds = %if.end.170
  %1223 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2773 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1223, i64 0
  %ttype2774 = bitcast %union.YYSTYPE* %arrayidx2773 to %union.tree_node**
  %1224 = load %union.tree_node*, %union.tree_node** %ttype2774, align 8
  %1225 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2775 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1225, i64 -1
  %ttype2776 = bitcast %union.YYSTYPE* %arrayidx2775 to %union.tree_node**
  %1226 = load %union.tree_node*, %union.tree_node** %ttype2776, align 8
  %call2777 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1224, %union.tree_node* %1226)
  %ttype2778 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2777, %union.tree_node** %ttype2778, align 8
  %ttype2779 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1227 = load %union.tree_node*, %union.tree_node** %ttype2779, align 8
  %common2780 = bitcast %union.tree_node* %1227 to %struct.tree_common*
  %static_flag2781 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2780, i32 0, i32 2
  %bf.load2782 = load i32, i32* %static_flag2781, align 8
  %bf.clear2783 = and i32 %bf.load2782, -262145
  %bf.set2784 = or i32 %bf.clear2783, 262144
  store i32 %bf.set2784, i32* %static_flag2781, align 8
  br label %sw.epilog

sw.bb.2785:                                       ; preds = %if.end.170
  %1228 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2786 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1228, i64 0
  %ttype2787 = bitcast %union.YYSTYPE* %arrayidx2786 to %union.tree_node**
  %1229 = load %union.tree_node*, %union.tree_node** %ttype2787, align 8
  %1230 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2788 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1230, i64 -1
  %ttype2789 = bitcast %union.YYSTYPE* %arrayidx2788 to %union.tree_node**
  %1231 = load %union.tree_node*, %union.tree_node** %ttype2789, align 8
  %call2790 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1229, %union.tree_node* %1231)
  %ttype2791 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2790, %union.tree_node** %ttype2791, align 8
  %ttype2792 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1232 = load %union.tree_node*, %union.tree_node** %ttype2792, align 8
  %common2793 = bitcast %union.tree_node* %1232 to %struct.tree_common*
  %static_flag2794 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2793, i32 0, i32 2
  %bf.load2795 = load i32, i32* %static_flag2794, align 8
  %bf.clear2796 = and i32 %bf.load2795, -262145
  %bf.set2797 = or i32 %bf.clear2796, 262144
  store i32 %bf.set2797, i32* %static_flag2794, align 8
  br label %sw.epilog

sw.bb.2798:                                       ; preds = %if.end.170
  %1233 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2799 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1233, i64 0
  %ttype2800 = bitcast %union.YYSTYPE* %arrayidx2799 to %union.tree_node**
  %1234 = load %union.tree_node*, %union.tree_node** %ttype2800, align 8
  %1235 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2801 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1235, i64 -1
  %ttype2802 = bitcast %union.YYSTYPE* %arrayidx2801 to %union.tree_node**
  %1236 = load %union.tree_node*, %union.tree_node** %ttype2802, align 8
  %call2803 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1234, %union.tree_node* %1236)
  %ttype2804 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2803, %union.tree_node** %ttype2804, align 8
  %ttype2805 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1237 = load %union.tree_node*, %union.tree_node** %ttype2805, align 8
  %common2806 = bitcast %union.tree_node* %1237 to %struct.tree_common*
  %static_flag2807 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2806, i32 0, i32 2
  %bf.load2808 = load i32, i32* %static_flag2807, align 8
  %bf.clear2809 = and i32 %bf.load2808, -262145
  %bf.set2810 = or i32 %bf.clear2809, 262144
  store i32 %bf.set2810, i32* %static_flag2807, align 8
  br label %sw.epilog

sw.bb.2811:                                       ; preds = %if.end.170
  %ttype2812 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype2812, align 8
  br label %sw.epilog

sw.bb.2813:                                       ; preds = %if.end.170
  %1238 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2814 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1238, i64 0
  %ttype2815 = bitcast %union.YYSTYPE* %arrayidx2814 to %union.tree_node**
  %1239 = load %union.tree_node*, %union.tree_node** %ttype2815, align 8
  %ttype2816 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1239, %union.tree_node** %ttype2816, align 8
  br label %sw.epilog

sw.bb.2817:                                       ; preds = %if.end.170
  br label %sw.epilog

sw.bb.2818:                                       ; preds = %if.end.170
  %1240 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2819 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1240, i64 0
  %ttype2820 = bitcast %union.YYSTYPE* %arrayidx2819 to %union.tree_node**
  %1241 = load %union.tree_node*, %union.tree_node** %ttype2820, align 8
  %call2821 = call %union.tree_node* @lookup_name(%union.tree_node* %1241)
  %ttype2822 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2821, %union.tree_node** %ttype2822, align 8
  br label %sw.epilog

sw.bb.2823:                                       ; preds = %if.end.170
  %1242 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2824 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1242, i64 -1
  %ttype2825 = bitcast %union.YYSTYPE* %arrayidx2824 to %union.tree_node**
  %1243 = load %union.tree_node*, %union.tree_node** %ttype2825, align 8
  %common2826 = bitcast %union.tree_node* %1243 to %struct.tree_common*
  %type2827 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2826, i32 0, i32 1
  %1244 = load %union.tree_node*, %union.tree_node** %type2827, align 8
  %ttype2828 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1244, %union.tree_node** %ttype2828, align 8
  br label %sw.epilog

sw.bb.2829:                                       ; preds = %if.end.170
  %1245 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2830 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1245, i64 -1
  %ttype2831 = bitcast %union.YYSTYPE* %arrayidx2830 to %union.tree_node**
  %1246 = load %union.tree_node*, %union.tree_node** %ttype2831, align 8
  %call2832 = call %union.tree_node* @groktypename(%union.tree_node* %1246)
  %ttype2833 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2832, %union.tree_node** %ttype2833, align 8
  br label %sw.epilog

sw.bb.2834:                                       ; preds = %if.end.170
  %ttype2835 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype2835, align 8
  br label %sw.epilog

sw.bb.2836:                                       ; preds = %if.end.170
  %1247 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2837 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1247, i64 -1
  %ttype2838 = bitcast %union.YYSTYPE* %arrayidx2837 to %union.tree_node**
  %1248 = load %union.tree_node*, %union.tree_node** %ttype2838, align 8
  %common2839 = bitcast %union.tree_node* %1248 to %struct.tree_common*
  %chain2840 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2839, i32 0, i32 0
  %1249 = load %union.tree_node*, %union.tree_node** %chain2840, align 8
  %tobool2841 = icmp ne %union.tree_node* %1249, null
  br i1 %tobool2841, label %if.then.2842, label %if.end.2848

if.then.2842:                                     ; preds = %sw.bb.2836
  %1250 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2843 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1250, i64 -1
  %ttype2844 = bitcast %union.YYSTYPE* %arrayidx2843 to %union.tree_node**
  %1251 = load %union.tree_node*, %union.tree_node** %ttype2844, align 8
  %call2845 = call %union.tree_node* @combine_strings(%union.tree_node* %1251)
  %1252 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2846 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1252, i64 -1
  %ttype2847 = bitcast %union.YYSTYPE* %arrayidx2846 to %union.tree_node**
  store %union.tree_node* %call2845, %union.tree_node** %ttype2847, align 8
  br label %if.end.2848

if.end.2848:                                      ; preds = %if.then.2842, %sw.bb.2836
  %1253 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2849 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1253, i64 -1
  %ttype2850 = bitcast %union.YYSTYPE* %arrayidx2849 to %union.tree_node**
  %1254 = load %union.tree_node*, %union.tree_node** %ttype2850, align 8
  %ttype2851 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1254, %union.tree_node** %ttype2851, align 8
  br label %sw.epilog

sw.bb.2852:                                       ; preds = %if.end.170
  %1255 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2853 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1255, i64 -3
  %ttype2854 = bitcast %union.YYSTYPE* %arrayidx2853 to %union.tree_node**
  %1256 = load %union.tree_node*, %union.tree_node** %ttype2854, align 8
  %1257 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %1258 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2855 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1258, i64 -1
  %ttype2856 = bitcast %union.YYSTYPE* %arrayidx2855 to %union.tree_node**
  %1259 = load %union.tree_node*, %union.tree_node** %ttype2856, align 8
  %1260 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call2857 = call %union.tree_node* @chainon(%union.tree_node* %1259, %union.tree_node* %1260)
  %call2858 = call %union.tree_node* @start_decl(%union.tree_node* %1256, %union.tree_node* %1257, i32 1, %union.tree_node* %call2857)
  %ttype2859 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2858, %union.tree_node** %ttype2859, align 8
  %ttype2860 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1261 = load %union.tree_node*, %union.tree_node** %ttype2860, align 8
  %1262 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2861 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1262, i64 -2
  %ttype2862 = bitcast %union.YYSTYPE* %arrayidx2861 to %union.tree_node**
  %1263 = load %union.tree_node*, %union.tree_node** %ttype2862, align 8
  %call2863 = call i32 @global_bindings_p()
  call void @start_init(%union.tree_node* %1261, %union.tree_node* %1263, i32 %call2863)
  br label %sw.epilog

sw.bb.2864:                                       ; preds = %if.end.170
  call void @finish_init()
  %1264 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2865 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1264, i64 -1
  %ttype2866 = bitcast %union.YYSTYPE* %arrayidx2865 to %union.tree_node**
  %1265 = load %union.tree_node*, %union.tree_node** %ttype2866, align 8
  %1266 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2867 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1266, i64 0
  %ttype2868 = bitcast %union.YYSTYPE* %arrayidx2867 to %union.tree_node**
  %1267 = load %union.tree_node*, %union.tree_node** %ttype2868, align 8
  %1268 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2869 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1268, i64 -4
  %ttype2870 = bitcast %union.YYSTYPE* %arrayidx2869 to %union.tree_node**
  %1269 = load %union.tree_node*, %union.tree_node** %ttype2870, align 8
  call void @finish_decl(%union.tree_node* %1265, %union.tree_node* %1267, %union.tree_node* %1269)
  br label %sw.epilog

sw.bb.2871:                                       ; preds = %if.end.170
  %1270 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2872 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1270, i64 -2
  %ttype2873 = bitcast %union.YYSTYPE* %arrayidx2872 to %union.tree_node**
  %1271 = load %union.tree_node*, %union.tree_node** %ttype2873, align 8
  %1272 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %1273 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2874 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1273, i64 0
  %ttype2875 = bitcast %union.YYSTYPE* %arrayidx2874 to %union.tree_node**
  %1274 = load %union.tree_node*, %union.tree_node** %ttype2875, align 8
  %1275 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call2876 = call %union.tree_node* @chainon(%union.tree_node* %1274, %union.tree_node* %1275)
  %call2877 = call %union.tree_node* @start_decl(%union.tree_node* %1271, %union.tree_node* %1272, i32 0, %union.tree_node* %call2876)
  store %union.tree_node* %call2877, %union.tree_node** %d, align 8
  %1276 = load %union.tree_node*, %union.tree_node** %d, align 8
  %1277 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2878 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1277, i64 -1
  %ttype2879 = bitcast %union.YYSTYPE* %arrayidx2878 to %union.tree_node**
  %1278 = load %union.tree_node*, %union.tree_node** %ttype2879, align 8
  call void @finish_decl(%union.tree_node* %1276, %union.tree_node* null, %union.tree_node* %1278)
  br label %sw.epilog

sw.bb.2880:                                       ; preds = %if.end.170
  %1279 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2881 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1279, i64 -3
  %ttype2882 = bitcast %union.YYSTYPE* %arrayidx2881 to %union.tree_node**
  %1280 = load %union.tree_node*, %union.tree_node** %ttype2882, align 8
  %1281 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %1282 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2883 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1282, i64 -1
  %ttype2884 = bitcast %union.YYSTYPE* %arrayidx2883 to %union.tree_node**
  %1283 = load %union.tree_node*, %union.tree_node** %ttype2884, align 8
  %1284 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call2885 = call %union.tree_node* @chainon(%union.tree_node* %1283, %union.tree_node* %1284)
  %call2886 = call %union.tree_node* @start_decl(%union.tree_node* %1280, %union.tree_node* %1281, i32 1, %union.tree_node* %call2885)
  %ttype2887 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2886, %union.tree_node** %ttype2887, align 8
  %ttype2888 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1285 = load %union.tree_node*, %union.tree_node** %ttype2888, align 8
  %1286 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2889 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1286, i64 -2
  %ttype2890 = bitcast %union.YYSTYPE* %arrayidx2889 to %union.tree_node**
  %1287 = load %union.tree_node*, %union.tree_node** %ttype2890, align 8
  %call2891 = call i32 @global_bindings_p()
  call void @start_init(%union.tree_node* %1285, %union.tree_node* %1287, i32 %call2891)
  br label %sw.epilog

sw.bb.2892:                                       ; preds = %if.end.170
  call void @finish_init()
  %1288 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2893 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1288, i64 -1
  %ttype2894 = bitcast %union.YYSTYPE* %arrayidx2893 to %union.tree_node**
  %1289 = load %union.tree_node*, %union.tree_node** %ttype2894, align 8
  %1290 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2895 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1290, i64 0
  %ttype2896 = bitcast %union.YYSTYPE* %arrayidx2895 to %union.tree_node**
  %1291 = load %union.tree_node*, %union.tree_node** %ttype2896, align 8
  %1292 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2897 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1292, i64 -4
  %ttype2898 = bitcast %union.YYSTYPE* %arrayidx2897 to %union.tree_node**
  %1293 = load %union.tree_node*, %union.tree_node** %ttype2898, align 8
  call void @finish_decl(%union.tree_node* %1289, %union.tree_node* %1291, %union.tree_node* %1293)
  br label %sw.epilog

sw.bb.2899:                                       ; preds = %if.end.170
  %1294 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2901 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1294, i64 -2
  %ttype2902 = bitcast %union.YYSTYPE* %arrayidx2901 to %union.tree_node**
  %1295 = load %union.tree_node*, %union.tree_node** %ttype2902, align 8
  %1296 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %1297 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2903 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1297, i64 0
  %ttype2904 = bitcast %union.YYSTYPE* %arrayidx2903 to %union.tree_node**
  %1298 = load %union.tree_node*, %union.tree_node** %ttype2904, align 8
  %1299 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call2905 = call %union.tree_node* @chainon(%union.tree_node* %1298, %union.tree_node* %1299)
  %call2906 = call %union.tree_node* @start_decl(%union.tree_node* %1295, %union.tree_node* %1296, i32 0, %union.tree_node* %call2905)
  store %union.tree_node* %call2906, %union.tree_node** %d2900, align 8
  %1300 = load %union.tree_node*, %union.tree_node** %d2900, align 8
  %1301 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2907 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1301, i64 -1
  %ttype2908 = bitcast %union.YYSTYPE* %arrayidx2907 to %union.tree_node**
  %1302 = load %union.tree_node*, %union.tree_node** %ttype2908, align 8
  call void @finish_decl(%union.tree_node* %1300, %union.tree_node* null, %union.tree_node* %1302)
  br label %sw.epilog

sw.bb.2909:                                       ; preds = %if.end.170
  %ttype2910 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype2910, align 8
  br label %sw.epilog

sw.bb.2911:                                       ; preds = %if.end.170
  %1303 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2912 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1303, i64 0
  %ttype2913 = bitcast %union.YYSTYPE* %arrayidx2912 to %union.tree_node**
  %1304 = load %union.tree_node*, %union.tree_node** %ttype2913, align 8
  %ttype2914 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1304, %union.tree_node** %ttype2914, align 8
  br label %sw.epilog

sw.bb.2915:                                       ; preds = %if.end.170
  %1305 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2916 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1305, i64 0
  %ttype2917 = bitcast %union.YYSTYPE* %arrayidx2916 to %union.tree_node**
  %1306 = load %union.tree_node*, %union.tree_node** %ttype2917, align 8
  %ttype2918 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1306, %union.tree_node** %ttype2918, align 8
  br label %sw.epilog

sw.bb.2919:                                       ; preds = %if.end.170
  %1307 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2920 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1307, i64 -1
  %ttype2921 = bitcast %union.YYSTYPE* %arrayidx2920 to %union.tree_node**
  %1308 = load %union.tree_node*, %union.tree_node** %ttype2921, align 8
  %1309 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2922 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1309, i64 0
  %ttype2923 = bitcast %union.YYSTYPE* %arrayidx2922 to %union.tree_node**
  %1310 = load %union.tree_node*, %union.tree_node** %ttype2923, align 8
  %call2924 = call %union.tree_node* @chainon(%union.tree_node* %1308, %union.tree_node* %1310)
  %ttype2925 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2924, %union.tree_node** %ttype2925, align 8
  br label %sw.epilog

sw.bb.2926:                                       ; preds = %if.end.170
  %1311 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2927 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1311, i64 -2
  %ttype2928 = bitcast %union.YYSTYPE* %arrayidx2927 to %union.tree_node**
  %1312 = load %union.tree_node*, %union.tree_node** %ttype2928, align 8
  %ttype2929 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1312, %union.tree_node** %ttype2929, align 8
  br label %sw.epilog

sw.bb.2930:                                       ; preds = %if.end.170
  %1313 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2931 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1313, i64 0
  %ttype2932 = bitcast %union.YYSTYPE* %arrayidx2931 to %union.tree_node**
  %1314 = load %union.tree_node*, %union.tree_node** %ttype2932, align 8
  %ttype2933 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1314, %union.tree_node** %ttype2933, align 8
  br label %sw.epilog

sw.bb.2934:                                       ; preds = %if.end.170
  %1315 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2935 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1315, i64 -2
  %ttype2936 = bitcast %union.YYSTYPE* %arrayidx2935 to %union.tree_node**
  %1316 = load %union.tree_node*, %union.tree_node** %ttype2936, align 8
  %1317 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2937 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1317, i64 0
  %ttype2938 = bitcast %union.YYSTYPE* %arrayidx2937 to %union.tree_node**
  %1318 = load %union.tree_node*, %union.tree_node** %ttype2938, align 8
  %call2939 = call %union.tree_node* @chainon(%union.tree_node* %1316, %union.tree_node* %1318)
  %ttype2940 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2939, %union.tree_node** %ttype2940, align 8
  br label %sw.epilog

sw.bb.2941:                                       ; preds = %if.end.170
  %ttype2942 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype2942, align 8
  br label %sw.epilog

sw.bb.2943:                                       ; preds = %if.end.170
  %1319 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2944 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1319, i64 0
  %ttype2945 = bitcast %union.YYSTYPE* %arrayidx2944 to %union.tree_node**
  %1320 = load %union.tree_node*, %union.tree_node** %ttype2945, align 8
  %call2946 = call %union.tree_node* @build_tree_list(%union.tree_node* %1320, %union.tree_node* null)
  %ttype2947 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2946, %union.tree_node** %ttype2947, align 8
  br label %sw.epilog

sw.bb.2948:                                       ; preds = %if.end.170
  %1321 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2949 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1321, i64 -3
  %ttype2950 = bitcast %union.YYSTYPE* %arrayidx2949 to %union.tree_node**
  %1322 = load %union.tree_node*, %union.tree_node** %ttype2950, align 8
  %1323 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2951 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1323, i64 -1
  %ttype2952 = bitcast %union.YYSTYPE* %arrayidx2951 to %union.tree_node**
  %1324 = load %union.tree_node*, %union.tree_node** %ttype2952, align 8
  %call2953 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %1324)
  %call2954 = call %union.tree_node* @build_tree_list(%union.tree_node* %1322, %union.tree_node* %call2953)
  %ttype2955 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2954, %union.tree_node** %ttype2955, align 8
  br label %sw.epilog

sw.bb.2956:                                       ; preds = %if.end.170
  %1325 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2957 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1325, i64 -5
  %ttype2958 = bitcast %union.YYSTYPE* %arrayidx2957 to %union.tree_node**
  %1326 = load %union.tree_node*, %union.tree_node** %ttype2958, align 8
  %1327 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2959 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1327, i64 -3
  %ttype2960 = bitcast %union.YYSTYPE* %arrayidx2959 to %union.tree_node**
  %1328 = load %union.tree_node*, %union.tree_node** %ttype2960, align 8
  %1329 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2961 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1329, i64 -1
  %ttype2962 = bitcast %union.YYSTYPE* %arrayidx2961 to %union.tree_node**
  %1330 = load %union.tree_node*, %union.tree_node** %ttype2962, align 8
  %call2963 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %1328, %union.tree_node* %1330)
  %call2964 = call %union.tree_node* @build_tree_list(%union.tree_node* %1326, %union.tree_node* %call2963)
  %ttype2965 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2964, %union.tree_node** %ttype2965, align 8
  br label %sw.epilog

sw.bb.2966:                                       ; preds = %if.end.170
  %1331 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2967 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1331, i64 -3
  %ttype2968 = bitcast %union.YYSTYPE* %arrayidx2967 to %union.tree_node**
  %1332 = load %union.tree_node*, %union.tree_node** %ttype2968, align 8
  %1333 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2969 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1333, i64 -1
  %ttype2970 = bitcast %union.YYSTYPE* %arrayidx2969 to %union.tree_node**
  %1334 = load %union.tree_node*, %union.tree_node** %ttype2970, align 8
  %call2971 = call %union.tree_node* @build_tree_list(%union.tree_node* %1332, %union.tree_node* %1334)
  %ttype2972 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2971, %union.tree_node** %ttype2972, align 8
  br label %sw.epilog

sw.bb.2973:                                       ; preds = %if.end.170
  call void @really_start_incremental_init(%union.tree_node* null)
  br label %sw.epilog

sw.bb.2974:                                       ; preds = %if.end.170
  %call2975 = call %union.tree_node* @pop_init_level(i32 0)
  %ttype2976 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call2975, %union.tree_node** %ttype2976, align 8
  br label %sw.epilog

sw.bb.2977:                                       ; preds = %if.end.170
  %1335 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %ttype2978 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1335, %union.tree_node** %ttype2978, align 8
  br label %sw.epilog

sw.bb.2979:                                       ; preds = %if.end.170
  %1336 = load i32, i32* @pedantic, align 4
  %tobool2980 = icmp ne i32 %1336, 0
  br i1 %tobool2980, label %if.then.2981, label %if.end.2982

if.then.2981:                                     ; preds = %sw.bb.2979
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.2982

if.end.2982:                                      ; preds = %if.then.2981, %sw.bb.2979
  br label %sw.epilog

sw.bb.2983:                                       ; preds = %if.end.170
  %1337 = load i32, i32* @pedantic, align 4
  %tobool2984 = icmp ne i32 %1337, 0
  br i1 %tobool2984, label %land.lhs.true.2985, label %if.end.2988

land.lhs.true.2985:                               ; preds = %sw.bb.2983
  %1338 = load i32, i32* @flag_isoc99, align 4
  %tobool2986 = icmp ne i32 %1338, 0
  br i1 %tobool2986, label %if.end.2988, label %if.then.2987

if.then.2987:                                     ; preds = %land.lhs.true.2985
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.2988

if.end.2988:                                      ; preds = %if.then.2987, %land.lhs.true.2985, %sw.bb.2983
  br label %sw.epilog

sw.bb.2989:                                       ; preds = %if.end.170
  %1339 = load i32, i32* @pedantic, align 4
  %tobool2990 = icmp ne i32 %1339, 0
  br i1 %tobool2990, label %if.then.2991, label %if.end.2992

if.then.2991:                                     ; preds = %sw.bb.2989
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.2992

if.end.2992:                                      ; preds = %if.then.2991, %sw.bb.2989
  br label %sw.epilog

sw.bb.2993:                                       ; preds = %if.end.170
  %1340 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx2994 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1340, i64 -1
  %ttype2995 = bitcast %union.YYSTYPE* %arrayidx2994 to %union.tree_node**
  %1341 = load %union.tree_node*, %union.tree_node** %ttype2995, align 8
  call void @set_init_label(%union.tree_node* %1341)
  %1342 = load i32, i32* @pedantic, align 4
  %tobool2996 = icmp ne i32 %1342, 0
  br i1 %tobool2996, label %if.then.2997, label %if.end.2998

if.then.2997:                                     ; preds = %sw.bb.2993
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.2998

if.end.2998:                                      ; preds = %if.then.2997, %sw.bb.2993
  br label %sw.epilog

sw.bb.2999:                                       ; preds = %if.end.170
  call void @push_init_level(i32 0)
  br label %sw.epilog

sw.bb.3000:                                       ; preds = %if.end.170
  %call3001 = call %union.tree_node* @pop_init_level(i32 0)
  call void @process_init_element(%union.tree_node* %call3001)
  br label %sw.epilog

sw.bb.3002:                                       ; preds = %if.end.170
  %1343 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3003 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1343, i64 0
  %ttype3004 = bitcast %union.YYSTYPE* %arrayidx3003 to %union.tree_node**
  %1344 = load %union.tree_node*, %union.tree_node** %ttype3004, align 8
  call void @process_init_element(%union.tree_node* %1344)
  br label %sw.epilog

sw.bb.3005:                                       ; preds = %if.end.170
  %1345 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3006 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1345, i64 0
  %ttype3007 = bitcast %union.YYSTYPE* %arrayidx3006 to %union.tree_node**
  %1346 = load %union.tree_node*, %union.tree_node** %ttype3007, align 8
  call void @set_init_label(%union.tree_node* %1346)
  br label %sw.epilog

sw.bb.3008:                                       ; preds = %if.end.170
  %1347 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3009 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1347, i64 -3
  %ttype3010 = bitcast %union.YYSTYPE* %arrayidx3009 to %union.tree_node**
  %1348 = load %union.tree_node*, %union.tree_node** %ttype3010, align 8
  %1349 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3011 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1349, i64 -1
  %ttype3012 = bitcast %union.YYSTYPE* %arrayidx3011 to %union.tree_node**
  %1350 = load %union.tree_node*, %union.tree_node** %ttype3012, align 8
  call void @set_init_index(%union.tree_node* %1348, %union.tree_node* %1350)
  %1351 = load i32, i32* @pedantic, align 4
  %tobool3013 = icmp ne i32 %1351, 0
  br i1 %tobool3013, label %if.then.3014, label %if.end.3015

if.then.3014:                                     ; preds = %sw.bb.3008
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.3015

if.end.3015:                                      ; preds = %if.then.3014, %sw.bb.3008
  br label %sw.epilog

sw.bb.3016:                                       ; preds = %if.end.170
  %1352 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3017 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1352, i64 -1
  %ttype3018 = bitcast %union.YYSTYPE* %arrayidx3017 to %union.tree_node**
  %1353 = load %union.tree_node*, %union.tree_node** %ttype3018, align 8
  call void @set_init_index(%union.tree_node* %1353, %union.tree_node* null)
  br label %sw.epilog

sw.bb.3019:                                       ; preds = %if.end.170
  %1354 = load i32, i32* @pedantic, align 4
  %tobool3020 = icmp ne i32 %1354, 0
  br i1 %tobool3020, label %if.then.3021, label %if.end.3022

if.then.3021:                                     ; preds = %sw.bb.3019
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.3022

if.end.3022:                                      ; preds = %if.then.3021, %sw.bb.3019
  call void @push_function_context()
  %1355 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %1356 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3023 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1356, i64 0
  %ttype3024 = bitcast %union.YYSTYPE* %arrayidx3023 to %union.tree_node**
  %1357 = load %union.tree_node*, %union.tree_node** %ttype3024, align 8
  %1358 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call3025 = call i32 @start_function(%union.tree_node* %1355, %union.tree_node* %1357, %union.tree_node* %1358)
  %tobool3026 = icmp ne i32 %call3025, 0
  br i1 %tobool3026, label %if.end.3028, label %if.then.3027

if.then.3027:                                     ; preds = %if.end.3022
  call void @pop_function_context()
  call void @yyerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  br label %yyerrlab1

if.end.3028:                                      ; preds = %if.end.3022
  br label %sw.epilog

sw.bb.3029:                                       ; preds = %if.end.170
  call void @store_parm_decls()
  br label %sw.epilog

sw.bb.3030:                                       ; preds = %if.end.170
  %1359 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  store %union.tree_node* %1359, %union.tree_node** %decl3031, align 8
  %1360 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3032 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1360, i64 -2
  %filename3033 = bitcast %union.YYSTYPE* %arrayidx3032 to i8**
  %1361 = load i8*, i8** %filename3033, align 8
  %1362 = load %union.tree_node*, %union.tree_node** %decl3031, align 8
  %decl3034 = bitcast %union.tree_node* %1362 to %struct.tree_decl*
  %filename3035 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3034, i32 0, i32 1
  store i8* %1361, i8** %filename3035, align 8
  %1363 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3036 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1363, i64 -1
  %lineno3037 = bitcast %union.YYSTYPE* %arrayidx3036 to i32*
  %1364 = load i32, i32* %lineno3037, align 4
  %1365 = load %union.tree_node*, %union.tree_node** %decl3031, align 8
  %decl3038 = bitcast %union.tree_node* %1365 to %struct.tree_decl*
  %linenum3039 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3038, i32 0, i32 2
  store i32 %1364, i32* %linenum3039, align 4
  call void @finish_function(i32 1, i32 1)
  call void @pop_function_context()
  %1366 = load %union.tree_node*, %union.tree_node** %decl3031, align 8
  call void @add_decl_stmt(%union.tree_node* %1366)
  br label %sw.epilog

sw.bb.3040:                                       ; preds = %if.end.170
  %1367 = load i32, i32* @pedantic, align 4
  %tobool3041 = icmp ne i32 %1367, 0
  br i1 %tobool3041, label %if.then.3042, label %if.end.3043

if.then.3042:                                     ; preds = %sw.bb.3040
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.3043

if.end.3043:                                      ; preds = %if.then.3042, %sw.bb.3040
  call void @push_function_context()
  %1368 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %1369 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3044 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1369, i64 0
  %ttype3045 = bitcast %union.YYSTYPE* %arrayidx3044 to %union.tree_node**
  %1370 = load %union.tree_node*, %union.tree_node** %ttype3045, align 8
  %1371 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call3046 = call i32 @start_function(%union.tree_node* %1368, %union.tree_node* %1370, %union.tree_node* %1371)
  %tobool3047 = icmp ne i32 %call3046, 0
  br i1 %tobool3047, label %if.end.3049, label %if.then.3048

if.then.3048:                                     ; preds = %if.end.3043
  call void @pop_function_context()
  call void @yyerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  br label %yyerrlab1

if.end.3049:                                      ; preds = %if.end.3043
  br label %sw.epilog

sw.bb.3050:                                       ; preds = %if.end.170
  call void @store_parm_decls()
  br label %sw.epilog

sw.bb.3051:                                       ; preds = %if.end.170
  %1372 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  store %union.tree_node* %1372, %union.tree_node** %decl3052, align 8
  %1373 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3053 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1373, i64 -2
  %filename3054 = bitcast %union.YYSTYPE* %arrayidx3053 to i8**
  %1374 = load i8*, i8** %filename3054, align 8
  %1375 = load %union.tree_node*, %union.tree_node** %decl3052, align 8
  %decl3055 = bitcast %union.tree_node* %1375 to %struct.tree_decl*
  %filename3056 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3055, i32 0, i32 1
  store i8* %1374, i8** %filename3056, align 8
  %1376 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3057 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1376, i64 -1
  %lineno3058 = bitcast %union.YYSTYPE* %arrayidx3057 to i32*
  %1377 = load i32, i32* %lineno3058, align 4
  %1378 = load %union.tree_node*, %union.tree_node** %decl3052, align 8
  %decl3059 = bitcast %union.tree_node* %1378 to %struct.tree_decl*
  %linenum3060 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3059, i32 0, i32 2
  store i32 %1377, i32* %linenum3060, align 4
  call void @finish_function(i32 1, i32 1)
  call void @pop_function_context()
  %1379 = load %union.tree_node*, %union.tree_node** %decl3052, align 8
  call void @add_decl_stmt(%union.tree_node* %1379)
  br label %sw.epilog

sw.bb.3061:                                       ; preds = %if.end.170
  %1380 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3062 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1380, i64 -2
  %ttype3063 = bitcast %union.YYSTYPE* %arrayidx3062 to %union.tree_node**
  %1381 = load %union.tree_node*, %union.tree_node** %ttype3063, align 8
  %tobool3064 = icmp ne %union.tree_node* %1381, null
  br i1 %tobool3064, label %cond.true.3065, label %cond.false.3071

cond.true.3065:                                   ; preds = %sw.bb.3061
  %1382 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3066 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1382, i64 -2
  %ttype3067 = bitcast %union.YYSTYPE* %arrayidx3066 to %union.tree_node**
  %1383 = load %union.tree_node*, %union.tree_node** %ttype3067, align 8
  %1384 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3068 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1384, i64 -1
  %ttype3069 = bitcast %union.YYSTYPE* %arrayidx3068 to %union.tree_node**
  %1385 = load %union.tree_node*, %union.tree_node** %ttype3069, align 8
  %call3070 = call %union.tree_node* @tree_cons(%union.tree_node* %1383, %union.tree_node* %1385, %union.tree_node* null)
  br label %cond.end.3074

cond.false.3071:                                  ; preds = %sw.bb.3061
  %1386 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3072 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1386, i64 -1
  %ttype3073 = bitcast %union.YYSTYPE* %arrayidx3072 to %union.tree_node**
  %1387 = load %union.tree_node*, %union.tree_node** %ttype3073, align 8
  br label %cond.end.3074

cond.end.3074:                                    ; preds = %cond.false.3071, %cond.true.3065
  %cond3075 = phi %union.tree_node* [ %call3070, %cond.true.3065 ], [ %1387, %cond.false.3071 ]
  %ttype3076 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %cond3075, %union.tree_node** %ttype3076, align 8
  br label %sw.epilog

sw.bb.3077:                                       ; preds = %if.end.170
  %1388 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3078 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1388, i64 -2
  %ttype3079 = bitcast %union.YYSTYPE* %arrayidx3078 to %union.tree_node**
  %1389 = load %union.tree_node*, %union.tree_node** %ttype3079, align 8
  %1390 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3080 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1390, i64 0
  %ttype3081 = bitcast %union.YYSTYPE* %arrayidx3080 to %union.tree_node**
  %1391 = load %union.tree_node*, %union.tree_node** %ttype3081, align 8
  %call3082 = call %union.tree_node* (i32, ...) @build_nt(i32 53, %union.tree_node* %1389, %union.tree_node* %1391, %union.tree_node* null)
  %ttype3083 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3082, %union.tree_node** %ttype3083, align 8
  br label %sw.epilog

sw.bb.3084:                                       ; preds = %if.end.170
  %1392 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3085 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1392, i64 0
  %ttype3086 = bitcast %union.YYSTYPE* %arrayidx3085 to %union.tree_node**
  %1393 = load %union.tree_node*, %union.tree_node** %ttype3086, align 8
  %1394 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3087 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1394, i64 -1
  %ttype3088 = bitcast %union.YYSTYPE* %arrayidx3087 to %union.tree_node**
  %1395 = load %union.tree_node*, %union.tree_node** %ttype3088, align 8
  %call3089 = call %union.tree_node* @set_array_declarator_type(%union.tree_node* %1393, %union.tree_node* %1395, i32 0)
  %ttype3090 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3089, %union.tree_node** %ttype3090, align 8
  br label %sw.epilog

sw.bb.3091:                                       ; preds = %if.end.170
  %1396 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3092 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1396, i64 -1
  %ttype3093 = bitcast %union.YYSTYPE* %arrayidx3092 to %union.tree_node**
  %1397 = load %union.tree_node*, %union.tree_node** %ttype3093, align 8
  %1398 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3094 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1398, i64 0
  %ttype3095 = bitcast %union.YYSTYPE* %arrayidx3094 to %union.tree_node**
  %1399 = load %union.tree_node*, %union.tree_node** %ttype3095, align 8
  %call3096 = call %union.tree_node* @make_pointer_declarator(%union.tree_node* %1397, %union.tree_node* %1399)
  %ttype3097 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3096, %union.tree_node** %ttype3097, align 8
  br label %sw.epilog

sw.bb.3098:                                       ; preds = %if.end.170
  %1400 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3099 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1400, i64 -2
  %ttype3100 = bitcast %union.YYSTYPE* %arrayidx3099 to %union.tree_node**
  %1401 = load %union.tree_node*, %union.tree_node** %ttype3100, align 8
  %1402 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3101 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1402, i64 0
  %ttype3102 = bitcast %union.YYSTYPE* %arrayidx3101 to %union.tree_node**
  %1403 = load %union.tree_node*, %union.tree_node** %ttype3102, align 8
  %call3103 = call %union.tree_node* (i32, ...) @build_nt(i32 53, %union.tree_node* %1401, %union.tree_node* %1403, %union.tree_node* null)
  %ttype3104 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3103, %union.tree_node** %ttype3104, align 8
  br label %sw.epilog

sw.bb.3105:                                       ; preds = %if.end.170
  %1404 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3106 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1404, i64 0
  %ttype3107 = bitcast %union.YYSTYPE* %arrayidx3106 to %union.tree_node**
  %1405 = load %union.tree_node*, %union.tree_node** %ttype3107, align 8
  %1406 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3108 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1406, i64 -1
  %ttype3109 = bitcast %union.YYSTYPE* %arrayidx3108 to %union.tree_node**
  %1407 = load %union.tree_node*, %union.tree_node** %ttype3109, align 8
  %call3110 = call %union.tree_node* @set_array_declarator_type(%union.tree_node* %1405, %union.tree_node* %1407, i32 0)
  %ttype3111 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3110, %union.tree_node** %ttype3111, align 8
  br label %sw.epilog

sw.bb.3112:                                       ; preds = %if.end.170
  %1408 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3113 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1408, i64 -2
  %ttype3114 = bitcast %union.YYSTYPE* %arrayidx3113 to %union.tree_node**
  %1409 = load %union.tree_node*, %union.tree_node** %ttype3114, align 8
  %1410 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3115 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1410, i64 0
  %ttype3116 = bitcast %union.YYSTYPE* %arrayidx3115 to %union.tree_node**
  %1411 = load %union.tree_node*, %union.tree_node** %ttype3116, align 8
  %call3117 = call %union.tree_node* (i32, ...) @build_nt(i32 53, %union.tree_node* %1409, %union.tree_node* %1411, %union.tree_node* null)
  %ttype3118 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3117, %union.tree_node** %ttype3118, align 8
  br label %sw.epilog

sw.bb.3119:                                       ; preds = %if.end.170
  %1412 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3120 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1412, i64 0
  %ttype3121 = bitcast %union.YYSTYPE* %arrayidx3120 to %union.tree_node**
  %1413 = load %union.tree_node*, %union.tree_node** %ttype3121, align 8
  %1414 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3122 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1414, i64 -1
  %ttype3123 = bitcast %union.YYSTYPE* %arrayidx3122 to %union.tree_node**
  %1415 = load %union.tree_node*, %union.tree_node** %ttype3123, align 8
  %call3124 = call %union.tree_node* @set_array_declarator_type(%union.tree_node* %1413, %union.tree_node* %1415, i32 0)
  %ttype3125 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3124, %union.tree_node** %ttype3125, align 8
  br label %sw.epilog

sw.bb.3126:                                       ; preds = %if.end.170
  %1416 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3127 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1416, i64 -1
  %ttype3128 = bitcast %union.YYSTYPE* %arrayidx3127 to %union.tree_node**
  %1417 = load %union.tree_node*, %union.tree_node** %ttype3128, align 8
  %1418 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3129 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1418, i64 0
  %ttype3130 = bitcast %union.YYSTYPE* %arrayidx3129 to %union.tree_node**
  %1419 = load %union.tree_node*, %union.tree_node** %ttype3130, align 8
  %call3131 = call %union.tree_node* @make_pointer_declarator(%union.tree_node* %1417, %union.tree_node* %1419)
  %ttype3132 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3131, %union.tree_node** %ttype3132, align 8
  br label %sw.epilog

sw.bb.3133:                                       ; preds = %if.end.170
  %1420 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3134 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1420, i64 -1
  %ttype3135 = bitcast %union.YYSTYPE* %arrayidx3134 to %union.tree_node**
  %1421 = load %union.tree_node*, %union.tree_node** %ttype3135, align 8
  %1422 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3136 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1422, i64 0
  %ttype3137 = bitcast %union.YYSTYPE* %arrayidx3136 to %union.tree_node**
  %1423 = load %union.tree_node*, %union.tree_node** %ttype3137, align 8
  %call3138 = call %union.tree_node* @make_pointer_declarator(%union.tree_node* %1421, %union.tree_node* %1423)
  %ttype3139 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3138, %union.tree_node** %ttype3139, align 8
  br label %sw.epilog

sw.bb.3140:                                       ; preds = %if.end.170
  %1424 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3141 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1424, i64 -2
  %ttype3142 = bitcast %union.YYSTYPE* %arrayidx3141 to %union.tree_node**
  %1425 = load %union.tree_node*, %union.tree_node** %ttype3142, align 8
  %tobool3143 = icmp ne %union.tree_node* %1425, null
  br i1 %tobool3143, label %cond.true.3144, label %cond.false.3150

cond.true.3144:                                   ; preds = %sw.bb.3140
  %1426 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3145 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1426, i64 -2
  %ttype3146 = bitcast %union.YYSTYPE* %arrayidx3145 to %union.tree_node**
  %1427 = load %union.tree_node*, %union.tree_node** %ttype3146, align 8
  %1428 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3147 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1428, i64 -1
  %ttype3148 = bitcast %union.YYSTYPE* %arrayidx3147 to %union.tree_node**
  %1429 = load %union.tree_node*, %union.tree_node** %ttype3148, align 8
  %call3149 = call %union.tree_node* @tree_cons(%union.tree_node* %1427, %union.tree_node* %1429, %union.tree_node* null)
  br label %cond.end.3153

cond.false.3150:                                  ; preds = %sw.bb.3140
  %1430 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3151 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1430, i64 -1
  %ttype3152 = bitcast %union.YYSTYPE* %arrayidx3151 to %union.tree_node**
  %1431 = load %union.tree_node*, %union.tree_node** %ttype3152, align 8
  br label %cond.end.3153

cond.end.3153:                                    ; preds = %cond.false.3150, %cond.true.3144
  %cond3154 = phi %union.tree_node* [ %call3149, %cond.true.3144 ], [ %1431, %cond.false.3150 ]
  %ttype3155 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %cond3154, %union.tree_node** %ttype3155, align 8
  br label %sw.epilog

sw.bb.3156:                                       ; preds = %if.end.170
  %1432 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3157 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1432, i64 -2
  %ttype3158 = bitcast %union.YYSTYPE* %arrayidx3157 to %union.tree_node**
  %1433 = load %union.tree_node*, %union.tree_node** %ttype3158, align 8
  %1434 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3159 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1434, i64 0
  %ttype3160 = bitcast %union.YYSTYPE* %arrayidx3159 to %union.tree_node**
  %1435 = load %union.tree_node*, %union.tree_node** %ttype3160, align 8
  %call3161 = call %union.tree_node* (i32, ...) @build_nt(i32 53, %union.tree_node* %1433, %union.tree_node* %1435, %union.tree_node* null)
  %ttype3162 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3161, %union.tree_node** %ttype3162, align 8
  br label %sw.epilog

sw.bb.3163:                                       ; preds = %if.end.170
  %1436 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3164 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1436, i64 -2
  %ttype3165 = bitcast %union.YYSTYPE* %arrayidx3164 to %union.tree_node**
  %1437 = load %union.tree_node*, %union.tree_node** %ttype3165, align 8
  %tobool3166 = icmp ne %union.tree_node* %1437, null
  br i1 %tobool3166, label %cond.true.3167, label %cond.false.3173

cond.true.3167:                                   ; preds = %sw.bb.3163
  %1438 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3168 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1438, i64 -2
  %ttype3169 = bitcast %union.YYSTYPE* %arrayidx3168 to %union.tree_node**
  %1439 = load %union.tree_node*, %union.tree_node** %ttype3169, align 8
  %1440 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3170 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1440, i64 -1
  %ttype3171 = bitcast %union.YYSTYPE* %arrayidx3170 to %union.tree_node**
  %1441 = load %union.tree_node*, %union.tree_node** %ttype3171, align 8
  %call3172 = call %union.tree_node* @tree_cons(%union.tree_node* %1439, %union.tree_node* %1441, %union.tree_node* null)
  br label %cond.end.3176

cond.false.3173:                                  ; preds = %sw.bb.3163
  %1442 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3174 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1442, i64 -1
  %ttype3175 = bitcast %union.YYSTYPE* %arrayidx3174 to %union.tree_node**
  %1443 = load %union.tree_node*, %union.tree_node** %ttype3175, align 8
  br label %cond.end.3176

cond.end.3176:                                    ; preds = %cond.false.3173, %cond.true.3167
  %cond3177 = phi %union.tree_node* [ %call3172, %cond.true.3167 ], [ %1443, %cond.false.3173 ]
  %ttype3178 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %cond3177, %union.tree_node** %ttype3178, align 8
  br label %sw.epilog

sw.bb.3179:                                       ; preds = %if.end.170
  %1444 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3180 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1444, i64 -1
  %ttype3181 = bitcast %union.YYSTYPE* %arrayidx3180 to %union.tree_node**
  %1445 = load %union.tree_node*, %union.tree_node** %ttype3181, align 8
  %1446 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3182 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1446, i64 0
  %ttype3183 = bitcast %union.YYSTYPE* %arrayidx3182 to %union.tree_node**
  %1447 = load %union.tree_node*, %union.tree_node** %ttype3183, align 8
  %call3184 = call %union.tree_node* @make_pointer_declarator(%union.tree_node* %1445, %union.tree_node* %1447)
  %ttype3185 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3184, %union.tree_node** %ttype3185, align 8
  br label %sw.epilog

sw.bb.3186:                                       ; preds = %if.end.170
  %1448 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3187 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1448, i64 0
  %ttype3188 = bitcast %union.YYSTYPE* %arrayidx3187 to %union.tree_node**
  %1449 = load %union.tree_node*, %union.tree_node** %ttype3188, align 8
  %1450 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3189 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1450, i64 -1
  %ttype3190 = bitcast %union.YYSTYPE* %arrayidx3189 to %union.tree_node**
  %1451 = load %union.tree_node*, %union.tree_node** %ttype3190, align 8
  %call3191 = call %union.tree_node* @set_array_declarator_type(%union.tree_node* %1449, %union.tree_node* %1451, i32 0)
  %ttype3192 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3191, %union.tree_node** %ttype3192, align 8
  br label %sw.epilog

sw.bb.3193:                                       ; preds = %if.end.170
  %ttype3194 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype3194, align 8
  br label %sw.epilog

sw.bb.3195:                                       ; preds = %if.end.170
  %1452 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3196 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1452, i64 0
  %ttype3197 = bitcast %union.YYSTYPE* %arrayidx3196 to %union.tree_node**
  %1453 = load %union.tree_node*, %union.tree_node** %ttype3197, align 8
  %ttype3198 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1453, %union.tree_node** %ttype3198, align 8
  br label %sw.epilog

sw.bb.3199:                                       ; preds = %if.end.170
  %ttype3200 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype3200, align 8
  br label %sw.epilog

sw.bb.3201:                                       ; preds = %if.end.170
  %1454 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3202 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1454, i64 0
  %ttype3203 = bitcast %union.YYSTYPE* %arrayidx3202 to %union.tree_node**
  %1455 = load %union.tree_node*, %union.tree_node** %ttype3203, align 8
  %ttype3204 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1455, %union.tree_node** %ttype3204, align 8
  br label %sw.epilog

sw.bb.3205:                                       ; preds = %if.end.170
  %ttype3206 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype3206, align 8
  br label %sw.epilog

sw.bb.3207:                                       ; preds = %if.end.170
  %1456 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3208 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1456, i64 0
  %ttype3209 = bitcast %union.YYSTYPE* %arrayidx3208 to %union.tree_node**
  %1457 = load %union.tree_node*, %union.tree_node** %ttype3209, align 8
  %ttype3210 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1457, %union.tree_node** %ttype3210, align 8
  br label %sw.epilog

sw.bb.3211:                                       ; preds = %if.end.170
  %1458 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3212 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1458, i64 -1
  %ttype3213 = bitcast %union.YYSTYPE* %arrayidx3212 to %union.tree_node**
  %1459 = load %union.tree_node*, %union.tree_node** %ttype3213, align 8
  %call3214 = call %union.tree_node* @start_struct(i32 20, %union.tree_node* %1459)
  %ttype3215 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3214, %union.tree_node** %ttype3215, align 8
  br label %sw.epilog

sw.bb.3216:                                       ; preds = %if.end.170
  %1460 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3217 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1460, i64 -3
  %ttype3218 = bitcast %union.YYSTYPE* %arrayidx3217 to %union.tree_node**
  %1461 = load %union.tree_node*, %union.tree_node** %ttype3218, align 8
  %1462 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3219 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1462, i64 -2
  %ttype3220 = bitcast %union.YYSTYPE* %arrayidx3219 to %union.tree_node**
  %1463 = load %union.tree_node*, %union.tree_node** %ttype3220, align 8
  %1464 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3221 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1464, i64 -6
  %ttype3222 = bitcast %union.YYSTYPE* %arrayidx3221 to %union.tree_node**
  %1465 = load %union.tree_node*, %union.tree_node** %ttype3222, align 8
  %1466 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3223 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1466, i64 0
  %ttype3224 = bitcast %union.YYSTYPE* %arrayidx3223 to %union.tree_node**
  %1467 = load %union.tree_node*, %union.tree_node** %ttype3224, align 8
  %call3225 = call %union.tree_node* @chainon(%union.tree_node* %1465, %union.tree_node* %1467)
  %call3226 = call %union.tree_node* @finish_struct(%union.tree_node* %1461, %union.tree_node* %1463, %union.tree_node* %call3225)
  %ttype3227 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3226, %union.tree_node** %ttype3227, align 8
  br label %sw.epilog

sw.bb.3228:                                       ; preds = %if.end.170
  %call3229 = call %union.tree_node* @start_struct(i32 20, %union.tree_node* null)
  %1468 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3230 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1468, i64 -2
  %ttype3231 = bitcast %union.YYSTYPE* %arrayidx3230 to %union.tree_node**
  %1469 = load %union.tree_node*, %union.tree_node** %ttype3231, align 8
  %1470 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3232 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1470, i64 -4
  %ttype3233 = bitcast %union.YYSTYPE* %arrayidx3232 to %union.tree_node**
  %1471 = load %union.tree_node*, %union.tree_node** %ttype3233, align 8
  %1472 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3234 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1472, i64 0
  %ttype3235 = bitcast %union.YYSTYPE* %arrayidx3234 to %union.tree_node**
  %1473 = load %union.tree_node*, %union.tree_node** %ttype3235, align 8
  %call3236 = call %union.tree_node* @chainon(%union.tree_node* %1471, %union.tree_node* %1473)
  %call3237 = call %union.tree_node* @finish_struct(%union.tree_node* %call3229, %union.tree_node* %1469, %union.tree_node* %call3236)
  %ttype3238 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3237, %union.tree_node** %ttype3238, align 8
  br label %sw.epilog

sw.bb.3239:                                       ; preds = %if.end.170
  %1474 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3240 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1474, i64 -1
  %ttype3241 = bitcast %union.YYSTYPE* %arrayidx3240 to %union.tree_node**
  %1475 = load %union.tree_node*, %union.tree_node** %ttype3241, align 8
  %call3242 = call %union.tree_node* @start_struct(i32 21, %union.tree_node* %1475)
  %ttype3243 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3242, %union.tree_node** %ttype3243, align 8
  br label %sw.epilog

sw.bb.3244:                                       ; preds = %if.end.170
  %1476 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3245 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1476, i64 -3
  %ttype3246 = bitcast %union.YYSTYPE* %arrayidx3245 to %union.tree_node**
  %1477 = load %union.tree_node*, %union.tree_node** %ttype3246, align 8
  %1478 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3247 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1478, i64 -2
  %ttype3248 = bitcast %union.YYSTYPE* %arrayidx3247 to %union.tree_node**
  %1479 = load %union.tree_node*, %union.tree_node** %ttype3248, align 8
  %1480 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3249 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1480, i64 -6
  %ttype3250 = bitcast %union.YYSTYPE* %arrayidx3249 to %union.tree_node**
  %1481 = load %union.tree_node*, %union.tree_node** %ttype3250, align 8
  %1482 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3251 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1482, i64 0
  %ttype3252 = bitcast %union.YYSTYPE* %arrayidx3251 to %union.tree_node**
  %1483 = load %union.tree_node*, %union.tree_node** %ttype3252, align 8
  %call3253 = call %union.tree_node* @chainon(%union.tree_node* %1481, %union.tree_node* %1483)
  %call3254 = call %union.tree_node* @finish_struct(%union.tree_node* %1477, %union.tree_node* %1479, %union.tree_node* %call3253)
  %ttype3255 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3254, %union.tree_node** %ttype3255, align 8
  br label %sw.epilog

sw.bb.3256:                                       ; preds = %if.end.170
  %call3257 = call %union.tree_node* @start_struct(i32 21, %union.tree_node* null)
  %1484 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3258 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1484, i64 -2
  %ttype3259 = bitcast %union.YYSTYPE* %arrayidx3258 to %union.tree_node**
  %1485 = load %union.tree_node*, %union.tree_node** %ttype3259, align 8
  %1486 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3260 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1486, i64 -4
  %ttype3261 = bitcast %union.YYSTYPE* %arrayidx3260 to %union.tree_node**
  %1487 = load %union.tree_node*, %union.tree_node** %ttype3261, align 8
  %1488 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3262 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1488, i64 0
  %ttype3263 = bitcast %union.YYSTYPE* %arrayidx3262 to %union.tree_node**
  %1489 = load %union.tree_node*, %union.tree_node** %ttype3263, align 8
  %call3264 = call %union.tree_node* @chainon(%union.tree_node* %1487, %union.tree_node* %1489)
  %call3265 = call %union.tree_node* @finish_struct(%union.tree_node* %call3257, %union.tree_node* %1485, %union.tree_node* %call3264)
  %ttype3266 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3265, %union.tree_node** %ttype3266, align 8
  br label %sw.epilog

sw.bb.3267:                                       ; preds = %if.end.170
  %1490 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3268 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1490, i64 -1
  %ttype3269 = bitcast %union.YYSTYPE* %arrayidx3268 to %union.tree_node**
  %1491 = load %union.tree_node*, %union.tree_node** %ttype3269, align 8
  %call3270 = call %union.tree_node* @start_enum(%union.tree_node* %1491)
  %ttype3271 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3270, %union.tree_node** %ttype3271, align 8
  br label %sw.epilog

sw.bb.3272:                                       ; preds = %if.end.170
  %1492 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3273 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1492, i64 -4
  %ttype3274 = bitcast %union.YYSTYPE* %arrayidx3273 to %union.tree_node**
  %1493 = load %union.tree_node*, %union.tree_node** %ttype3274, align 8
  %1494 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3275 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1494, i64 -3
  %ttype3276 = bitcast %union.YYSTYPE* %arrayidx3275 to %union.tree_node**
  %1495 = load %union.tree_node*, %union.tree_node** %ttype3276, align 8
  %call3277 = call %union.tree_node* @nreverse(%union.tree_node* %1495)
  %1496 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3278 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1496, i64 -7
  %ttype3279 = bitcast %union.YYSTYPE* %arrayidx3278 to %union.tree_node**
  %1497 = load %union.tree_node*, %union.tree_node** %ttype3279, align 8
  %1498 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3280 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1498, i64 0
  %ttype3281 = bitcast %union.YYSTYPE* %arrayidx3280 to %union.tree_node**
  %1499 = load %union.tree_node*, %union.tree_node** %ttype3281, align 8
  %call3282 = call %union.tree_node* @chainon(%union.tree_node* %1497, %union.tree_node* %1499)
  %call3283 = call %union.tree_node* @finish_enum(%union.tree_node* %1493, %union.tree_node* %call3277, %union.tree_node* %call3282)
  %ttype3284 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3283, %union.tree_node** %ttype3284, align 8
  br label %sw.epilog

sw.bb.3285:                                       ; preds = %if.end.170
  %call3286 = call %union.tree_node* @start_enum(%union.tree_node* null)
  %ttype3287 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3286, %union.tree_node** %ttype3287, align 8
  br label %sw.epilog

sw.bb.3288:                                       ; preds = %if.end.170
  %1500 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3289 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1500, i64 -4
  %ttype3290 = bitcast %union.YYSTYPE* %arrayidx3289 to %union.tree_node**
  %1501 = load %union.tree_node*, %union.tree_node** %ttype3290, align 8
  %1502 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3291 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1502, i64 -3
  %ttype3292 = bitcast %union.YYSTYPE* %arrayidx3291 to %union.tree_node**
  %1503 = load %union.tree_node*, %union.tree_node** %ttype3292, align 8
  %call3293 = call %union.tree_node* @nreverse(%union.tree_node* %1503)
  %1504 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3294 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1504, i64 -6
  %ttype3295 = bitcast %union.YYSTYPE* %arrayidx3294 to %union.tree_node**
  %1505 = load %union.tree_node*, %union.tree_node** %ttype3295, align 8
  %1506 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3296 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1506, i64 0
  %ttype3297 = bitcast %union.YYSTYPE* %arrayidx3296 to %union.tree_node**
  %1507 = load %union.tree_node*, %union.tree_node** %ttype3297, align 8
  %call3298 = call %union.tree_node* @chainon(%union.tree_node* %1505, %union.tree_node* %1507)
  %call3299 = call %union.tree_node* @finish_enum(%union.tree_node* %1501, %union.tree_node* %call3293, %union.tree_node* %call3298)
  %ttype3300 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3299, %union.tree_node** %ttype3300, align 8
  br label %sw.epilog

sw.bb.3301:                                       ; preds = %if.end.170
  %1508 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3302 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1508, i64 0
  %ttype3303 = bitcast %union.YYSTYPE* %arrayidx3302 to %union.tree_node**
  %1509 = load %union.tree_node*, %union.tree_node** %ttype3303, align 8
  %call3304 = call %union.tree_node* @xref_tag(i32 20, %union.tree_node* %1509)
  %ttype3305 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3304, %union.tree_node** %ttype3305, align 8
  br label %sw.epilog

sw.bb.3306:                                       ; preds = %if.end.170
  %1510 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3307 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1510, i64 0
  %ttype3308 = bitcast %union.YYSTYPE* %arrayidx3307 to %union.tree_node**
  %1511 = load %union.tree_node*, %union.tree_node** %ttype3308, align 8
  %call3309 = call %union.tree_node* @xref_tag(i32 21, %union.tree_node* %1511)
  %ttype3310 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3309, %union.tree_node** %ttype3310, align 8
  br label %sw.epilog

sw.bb.3311:                                       ; preds = %if.end.170
  %1512 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3312 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1512, i64 0
  %ttype3313 = bitcast %union.YYSTYPE* %arrayidx3312 to %union.tree_node**
  %1513 = load %union.tree_node*, %union.tree_node** %ttype3313, align 8
  %call3314 = call %union.tree_node* @xref_tag(i32 10, %union.tree_node* %1513)
  %ttype3315 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3314, %union.tree_node** %ttype3315, align 8
  %1514 = load i32, i32* @pedantic, align 4
  %tobool3316 = icmp ne i32 %1514, 0
  br i1 %tobool3316, label %land.lhs.true.3317, label %if.end.3324

land.lhs.true.3317:                               ; preds = %sw.bb.3311
  %ttype3318 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1515 = load %union.tree_node*, %union.tree_node** %ttype3318, align 8
  %type3319 = bitcast %union.tree_node* %1515 to %struct.tree_type*
  %size3320 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3319, i32 0, i32 2
  %1516 = load %union.tree_node*, %union.tree_node** %size3320, align 8
  %cmp3321 = icmp ne %union.tree_node* %1516, null
  br i1 %cmp3321, label %if.end.3324, label %if.then.3323

if.then.3323:                                     ; preds = %land.lhs.true.3317
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.3324

if.end.3324:                                      ; preds = %if.then.3323, %land.lhs.true.3317, %sw.bb.3311
  br label %sw.epilog

sw.bb.3325:                                       ; preds = %if.end.170
  %1517 = load i32, i32* @pedantic, align 4
  %tobool3326 = icmp ne i32 %1517, 0
  br i1 %tobool3326, label %land.lhs.true.3327, label %if.end.3330

land.lhs.true.3327:                               ; preds = %sw.bb.3325
  %1518 = load i32, i32* @flag_isoc99, align 4
  %tobool3328 = icmp ne i32 %1518, 0
  br i1 %tobool3328, label %if.end.3330, label %if.then.3329

if.then.3329:                                     ; preds = %land.lhs.true.3327
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.3330

if.end.3330:                                      ; preds = %if.then.3329, %land.lhs.true.3327, %sw.bb.3325
  br label %sw.epilog

sw.bb.3331:                                       ; preds = %if.end.170
  %1519 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3332 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1519, i64 0
  %ttype3333 = bitcast %union.YYSTYPE* %arrayidx3332 to %union.tree_node**
  %1520 = load %union.tree_node*, %union.tree_node** %ttype3333, align 8
  %ttype3334 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1520, %union.tree_node** %ttype3334, align 8
  br label %sw.epilog

sw.bb.3335:                                       ; preds = %if.end.170
  %1521 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3336 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1521, i64 -1
  %ttype3337 = bitcast %union.YYSTYPE* %arrayidx3336 to %union.tree_node**
  %1522 = load %union.tree_node*, %union.tree_node** %ttype3337, align 8
  %1523 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3338 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1523, i64 0
  %ttype3339 = bitcast %union.YYSTYPE* %arrayidx3338 to %union.tree_node**
  %1524 = load %union.tree_node*, %union.tree_node** %ttype3339, align 8
  %call3340 = call %union.tree_node* @chainon(%union.tree_node* %1522, %union.tree_node* %1524)
  %ttype3341 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3340, %union.tree_node** %ttype3341, align 8
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i32 0, i32 0))
  br label %sw.epilog

sw.bb.3342:                                       ; preds = %if.end.170
  %ttype3343 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype3343, align 8
  br label %sw.epilog

sw.bb.3344:                                       ; preds = %if.end.170
  %1525 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3345 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1525, i64 -2
  %ttype3346 = bitcast %union.YYSTYPE* %arrayidx3345 to %union.tree_node**
  %1526 = load %union.tree_node*, %union.tree_node** %ttype3346, align 8
  %1527 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3347 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1527, i64 -1
  %ttype3348 = bitcast %union.YYSTYPE* %arrayidx3347 to %union.tree_node**
  %1528 = load %union.tree_node*, %union.tree_node** %ttype3348, align 8
  %call3349 = call %union.tree_node* @chainon(%union.tree_node* %1526, %union.tree_node* %1528)
  %ttype3350 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3349, %union.tree_node** %ttype3350, align 8
  br label %sw.epilog

sw.bb.3351:                                       ; preds = %if.end.170
  %1529 = load i32, i32* @pedantic, align 4
  %tobool3352 = icmp ne i32 %1529, 0
  br i1 %tobool3352, label %if.then.3353, label %if.end.3354

if.then.3353:                                     ; preds = %sw.bb.3351
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.3354

if.end.3354:                                      ; preds = %if.then.3353, %sw.bb.3351
  br label %sw.epilog

sw.bb.3355:                                       ; preds = %if.end.170
  %1530 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3356 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1530, i64 0
  %ttype3357 = bitcast %union.YYSTYPE* %arrayidx3356 to %union.tree_node**
  %1531 = load %union.tree_node*, %union.tree_node** %ttype3357, align 8
  %ttype3358 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1531, %union.tree_node** %ttype3358, align 8
  br label %do.body.3359

do.body.3359:                                     ; preds = %sw.bb.3355
  %1532 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list3360 = bitcast %union.tree_node* %1532 to %struct.tree_list*
  %value3361 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3360, i32 0, i32 2
  %1533 = load %union.tree_node*, %union.tree_node** %value3361, align 8
  store %union.tree_node* %1533, %union.tree_node** @current_declspecs, align 8
  %1534 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list3362 = bitcast %union.tree_node* %1534 to %struct.tree_list*
  %purpose3363 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3362, i32 0, i32 1
  %1535 = load %union.tree_node*, %union.tree_node** %purpose3363, align 8
  %list3364 = bitcast %union.tree_node* %1535 to %struct.tree_list*
  %purpose3365 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3364, i32 0, i32 1
  %1536 = load %union.tree_node*, %union.tree_node** %purpose3365, align 8
  store %union.tree_node* %1536, %union.tree_node** @prefix_attributes, align 8
  %1537 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list3366 = bitcast %union.tree_node* %1537 to %struct.tree_list*
  %purpose3367 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3366, i32 0, i32 1
  %1538 = load %union.tree_node*, %union.tree_node** %purpose3367, align 8
  %list3368 = bitcast %union.tree_node* %1538 to %struct.tree_list*
  %value3369 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3368, i32 0, i32 2
  %1539 = load %union.tree_node*, %union.tree_node** %value3369, align 8
  store %union.tree_node* %1539, %union.tree_node** @all_prefix_attributes, align 8
  %1540 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common3370 = bitcast %union.tree_node* %1540 to %struct.tree_common*
  %chain3371 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3370, i32 0, i32 0
  %1541 = load %union.tree_node*, %union.tree_node** %chain3371, align 8
  store %union.tree_node* %1541, %union.tree_node** @declspec_stack, align 8
  br label %do.end.3372

do.end.3372:                                      ; preds = %do.body.3359
  br label %sw.epilog

sw.bb.3373:                                       ; preds = %if.end.170
  %1542 = load i32, i32* @pedantic, align 4
  %tobool3374 = icmp ne i32 %1542, 0
  br i1 %tobool3374, label %if.then.3375, label %if.end.3376

if.then.3375:                                     ; preds = %sw.bb.3373
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.3376

if.end.3376:                                      ; preds = %if.then.3375, %sw.bb.3373
  %1543 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3377 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1543, i64 -1
  %filename3378 = bitcast %union.YYSTYPE* %arrayidx3377 to i8**
  %1544 = load i8*, i8** %filename3378, align 8
  %1545 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3379 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1545, i64 0
  %lineno3380 = bitcast %union.YYSTYPE* %arrayidx3379 to i32*
  %1546 = load i32, i32* %lineno3380, align 4
  %1547 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %call3381 = call %union.tree_node* @grokfield(i8* %1544, i32 %1546, %union.tree_node* null, %union.tree_node* %1547, %union.tree_node* null)
  %ttype3382 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3381, %union.tree_node** %ttype3382, align 8
  br label %do.body.3383

do.body.3383:                                     ; preds = %if.end.3376
  %1548 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list3384 = bitcast %union.tree_node* %1548 to %struct.tree_list*
  %value3385 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3384, i32 0, i32 2
  %1549 = load %union.tree_node*, %union.tree_node** %value3385, align 8
  store %union.tree_node* %1549, %union.tree_node** @current_declspecs, align 8
  %1550 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list3386 = bitcast %union.tree_node* %1550 to %struct.tree_list*
  %purpose3387 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3386, i32 0, i32 1
  %1551 = load %union.tree_node*, %union.tree_node** %purpose3387, align 8
  %list3388 = bitcast %union.tree_node* %1551 to %struct.tree_list*
  %purpose3389 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3388, i32 0, i32 1
  %1552 = load %union.tree_node*, %union.tree_node** %purpose3389, align 8
  store %union.tree_node* %1552, %union.tree_node** @prefix_attributes, align 8
  %1553 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list3390 = bitcast %union.tree_node* %1553 to %struct.tree_list*
  %purpose3391 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3390, i32 0, i32 1
  %1554 = load %union.tree_node*, %union.tree_node** %purpose3391, align 8
  %list3392 = bitcast %union.tree_node* %1554 to %struct.tree_list*
  %value3393 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3392, i32 0, i32 2
  %1555 = load %union.tree_node*, %union.tree_node** %value3393, align 8
  store %union.tree_node* %1555, %union.tree_node** @all_prefix_attributes, align 8
  %1556 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common3394 = bitcast %union.tree_node* %1556 to %struct.tree_common*
  %chain3395 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3394, i32 0, i32 0
  %1557 = load %union.tree_node*, %union.tree_node** %chain3395, align 8
  store %union.tree_node* %1557, %union.tree_node** @declspec_stack, align 8
  br label %do.end.3396

do.end.3396:                                      ; preds = %do.body.3383
  br label %sw.epilog

sw.bb.3397:                                       ; preds = %if.end.170
  %1558 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3398 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1558, i64 0
  %ttype3399 = bitcast %union.YYSTYPE* %arrayidx3398 to %union.tree_node**
  %1559 = load %union.tree_node*, %union.tree_node** %ttype3399, align 8
  %ttype3400 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1559, %union.tree_node** %ttype3400, align 8
  br label %do.body.3401

do.body.3401:                                     ; preds = %sw.bb.3397
  %1560 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list3402 = bitcast %union.tree_node* %1560 to %struct.tree_list*
  %value3403 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3402, i32 0, i32 2
  %1561 = load %union.tree_node*, %union.tree_node** %value3403, align 8
  store %union.tree_node* %1561, %union.tree_node** @current_declspecs, align 8
  %1562 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list3404 = bitcast %union.tree_node* %1562 to %struct.tree_list*
  %purpose3405 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3404, i32 0, i32 1
  %1563 = load %union.tree_node*, %union.tree_node** %purpose3405, align 8
  %list3406 = bitcast %union.tree_node* %1563 to %struct.tree_list*
  %purpose3407 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3406, i32 0, i32 1
  %1564 = load %union.tree_node*, %union.tree_node** %purpose3407, align 8
  store %union.tree_node* %1564, %union.tree_node** @prefix_attributes, align 8
  %1565 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list3408 = bitcast %union.tree_node* %1565 to %struct.tree_list*
  %purpose3409 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3408, i32 0, i32 1
  %1566 = load %union.tree_node*, %union.tree_node** %purpose3409, align 8
  %list3410 = bitcast %union.tree_node* %1566 to %struct.tree_list*
  %value3411 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3410, i32 0, i32 2
  %1567 = load %union.tree_node*, %union.tree_node** %value3411, align 8
  store %union.tree_node* %1567, %union.tree_node** @all_prefix_attributes, align 8
  %1568 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common3412 = bitcast %union.tree_node* %1568 to %struct.tree_common*
  %chain3413 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3412, i32 0, i32 0
  %1569 = load %union.tree_node*, %union.tree_node** %chain3413, align 8
  store %union.tree_node* %1569, %union.tree_node** @declspec_stack, align 8
  br label %do.end.3414

do.end.3414:                                      ; preds = %do.body.3401
  br label %sw.epilog

sw.bb.3415:                                       ; preds = %if.end.170
  %1570 = load i32, i32* @pedantic, align 4
  %tobool3416 = icmp ne i32 %1570, 0
  br i1 %tobool3416, label %if.then.3417, label %if.end.3418

if.then.3417:                                     ; preds = %sw.bb.3415
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.3418

if.end.3418:                                      ; preds = %if.then.3417, %sw.bb.3415
  %1571 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3419 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1571, i64 0
  %ttype3420 = bitcast %union.YYSTYPE* %arrayidx3419 to %union.tree_node**
  %1572 = load %union.tree_node*, %union.tree_node** %ttype3420, align 8
  call void @shadow_tag(%union.tree_node* %1572)
  %ttype3421 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype3421, align 8
  br label %sw.epilog

sw.bb.3422:                                       ; preds = %if.end.170
  %ttype3423 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype3423, align 8
  br label %sw.epilog

sw.bb.3424:                                       ; preds = %if.end.170
  %1573 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3425 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1573, i64 0
  %ttype3426 = bitcast %union.YYSTYPE* %arrayidx3425 to %union.tree_node**
  %1574 = load %union.tree_node*, %union.tree_node** %ttype3426, align 8
  %ttype3427 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1574, %union.tree_node** %ttype3427, align 8
  br label %do.body.3428

do.body.3428:                                     ; preds = %sw.bb.3424
  %1575 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3430 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1575, i64 -1
  %ttype3431 = bitcast %union.YYSTYPE* %arrayidx3430 to %union.tree_node**
  %1576 = load %union.tree_node*, %union.tree_node** %ttype3431, align 8
  %call3432 = call i64 @tree_low_cst(%union.tree_node* %1576, i32 0)
  %conv3433 = trunc i64 %call3432 to i32
  store i32 %conv3433, i32* %val3429, align 4
  %1577 = load i32, i32* %val3429, align 4
  %and3434 = and i32 %1577, 1
  store i32 %and3434, i32* @pedantic, align 4
  %1578 = load i32, i32* %val3429, align 4
  %shr3435 = ashr i32 %1578, 1
  %and3436 = and i32 %shr3435, 1
  store i32 %and3436, i32* @warn_pointer_arith, align 4
  %1579 = load i32, i32* %val3429, align 4
  %shr3437 = ashr i32 %1579, 2
  %and3438 = and i32 %shr3437, 1
  store i32 %and3438, i32* @warn_traditional, align 4
  br label %do.end.3439

do.end.3439:                                      ; preds = %do.body.3428
  br label %sw.epilog

sw.bb.3440:                                       ; preds = %if.end.170
  %1580 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3441 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1580, i64 -3
  %ttype3442 = bitcast %union.YYSTYPE* %arrayidx3441 to %union.tree_node**
  %1581 = load %union.tree_node*, %union.tree_node** %ttype3442, align 8
  %1582 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3443 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1582, i64 0
  %ttype3444 = bitcast %union.YYSTYPE* %arrayidx3443 to %union.tree_node**
  %1583 = load %union.tree_node*, %union.tree_node** %ttype3444, align 8
  %call3445 = call %union.tree_node* @chainon(%union.tree_node* %1581, %union.tree_node* %1583)
  %ttype3446 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3445, %union.tree_node** %ttype3446, align 8
  br label %sw.epilog

sw.bb.3447:                                       ; preds = %if.end.170
  %1584 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3448 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1584, i64 -3
  %ttype3449 = bitcast %union.YYSTYPE* %arrayidx3448 to %union.tree_node**
  %1585 = load %union.tree_node*, %union.tree_node** %ttype3449, align 8
  %1586 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3450 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1586, i64 0
  %ttype3451 = bitcast %union.YYSTYPE* %arrayidx3450 to %union.tree_node**
  %1587 = load %union.tree_node*, %union.tree_node** %ttype3451, align 8
  %call3452 = call %union.tree_node* @chainon(%union.tree_node* %1585, %union.tree_node* %1587)
  %ttype3453 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3452, %union.tree_node** %ttype3453, align 8
  br label %sw.epilog

sw.bb.3454:                                       ; preds = %if.end.170
  %1588 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3455 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1588, i64 -3
  %filename3456 = bitcast %union.YYSTYPE* %arrayidx3455 to i8**
  %1589 = load i8*, i8** %filename3456, align 8
  %1590 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3457 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1590, i64 -2
  %lineno3458 = bitcast %union.YYSTYPE* %arrayidx3457 to i32*
  %1591 = load i32, i32* %lineno3458, align 4
  %1592 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3459 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1592, i64 -1
  %ttype3460 = bitcast %union.YYSTYPE* %arrayidx3459 to %union.tree_node**
  %1593 = load %union.tree_node*, %union.tree_node** %ttype3460, align 8
  %1594 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %call3461 = call %union.tree_node* @grokfield(i8* %1589, i32 %1591, %union.tree_node* %1593, %union.tree_node* %1594, %union.tree_node* null)
  %ttype3462 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3461, %union.tree_node** %ttype3462, align 8
  %ttype3463 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1595 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3464 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1595, i64 0
  %ttype3465 = bitcast %union.YYSTYPE* %arrayidx3464 to %union.tree_node**
  %1596 = load %union.tree_node*, %union.tree_node** %ttype3465, align 8
  %1597 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call3466 = call %union.tree_node* @chainon(%union.tree_node* %1596, %union.tree_node* %1597)
  %call3467 = call %union.tree_node* @decl_attributes(%union.tree_node** %ttype3463, %union.tree_node* %call3466, i32 0)
  br label %sw.epilog

sw.bb.3468:                                       ; preds = %if.end.170
  %1598 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3469 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1598, i64 -5
  %filename3470 = bitcast %union.YYSTYPE* %arrayidx3469 to i8**
  %1599 = load i8*, i8** %filename3470, align 8
  %1600 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3471 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1600, i64 -4
  %lineno3472 = bitcast %union.YYSTYPE* %arrayidx3471 to i32*
  %1601 = load i32, i32* %lineno3472, align 4
  %1602 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3473 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1602, i64 -3
  %ttype3474 = bitcast %union.YYSTYPE* %arrayidx3473 to %union.tree_node**
  %1603 = load %union.tree_node*, %union.tree_node** %ttype3474, align 8
  %1604 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %1605 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3475 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1605, i64 -1
  %ttype3476 = bitcast %union.YYSTYPE* %arrayidx3475 to %union.tree_node**
  %1606 = load %union.tree_node*, %union.tree_node** %ttype3476, align 8
  %call3477 = call %union.tree_node* @grokfield(i8* %1599, i32 %1601, %union.tree_node* %1603, %union.tree_node* %1604, %union.tree_node* %1606)
  %ttype3478 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3477, %union.tree_node** %ttype3478, align 8
  %ttype3479 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1607 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3480 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1607, i64 0
  %ttype3481 = bitcast %union.YYSTYPE* %arrayidx3480 to %union.tree_node**
  %1608 = load %union.tree_node*, %union.tree_node** %ttype3481, align 8
  %1609 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call3482 = call %union.tree_node* @chainon(%union.tree_node* %1608, %union.tree_node* %1609)
  %call3483 = call %union.tree_node* @decl_attributes(%union.tree_node** %ttype3479, %union.tree_node* %call3482, i32 0)
  br label %sw.epilog

sw.bb.3484:                                       ; preds = %if.end.170
  %1610 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3485 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1610, i64 -4
  %filename3486 = bitcast %union.YYSTYPE* %arrayidx3485 to i8**
  %1611 = load i8*, i8** %filename3486, align 8
  %1612 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3487 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1612, i64 -3
  %lineno3488 = bitcast %union.YYSTYPE* %arrayidx3487 to i32*
  %1613 = load i32, i32* %lineno3488, align 4
  %1614 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %1615 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3489 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1615, i64 -1
  %ttype3490 = bitcast %union.YYSTYPE* %arrayidx3489 to %union.tree_node**
  %1616 = load %union.tree_node*, %union.tree_node** %ttype3490, align 8
  %call3491 = call %union.tree_node* @grokfield(i8* %1611, i32 %1613, %union.tree_node* null, %union.tree_node* %1614, %union.tree_node* %1616)
  %ttype3492 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3491, %union.tree_node** %ttype3492, align 8
  %ttype3493 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1617 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3494 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1617, i64 0
  %ttype3495 = bitcast %union.YYSTYPE* %arrayidx3494 to %union.tree_node**
  %1618 = load %union.tree_node*, %union.tree_node** %ttype3495, align 8
  %1619 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call3496 = call %union.tree_node* @chainon(%union.tree_node* %1618, %union.tree_node* %1619)
  %call3497 = call %union.tree_node* @decl_attributes(%union.tree_node** %ttype3493, %union.tree_node* %call3496, i32 0)
  br label %sw.epilog

sw.bb.3498:                                       ; preds = %if.end.170
  %1620 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3499 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1620, i64 -3
  %filename3500 = bitcast %union.YYSTYPE* %arrayidx3499 to i8**
  %1621 = load i8*, i8** %filename3500, align 8
  %1622 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3501 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1622, i64 -2
  %lineno3502 = bitcast %union.YYSTYPE* %arrayidx3501 to i32*
  %1623 = load i32, i32* %lineno3502, align 4
  %1624 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3503 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1624, i64 -1
  %ttype3504 = bitcast %union.YYSTYPE* %arrayidx3503 to %union.tree_node**
  %1625 = load %union.tree_node*, %union.tree_node** %ttype3504, align 8
  %1626 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %call3505 = call %union.tree_node* @grokfield(i8* %1621, i32 %1623, %union.tree_node* %1625, %union.tree_node* %1626, %union.tree_node* null)
  %ttype3506 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3505, %union.tree_node** %ttype3506, align 8
  %ttype3507 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1627 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3508 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1627, i64 0
  %ttype3509 = bitcast %union.YYSTYPE* %arrayidx3508 to %union.tree_node**
  %1628 = load %union.tree_node*, %union.tree_node** %ttype3509, align 8
  %1629 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call3510 = call %union.tree_node* @chainon(%union.tree_node* %1628, %union.tree_node* %1629)
  %call3511 = call %union.tree_node* @decl_attributes(%union.tree_node** %ttype3507, %union.tree_node* %call3510, i32 0)
  br label %sw.epilog

sw.bb.3512:                                       ; preds = %if.end.170
  %1630 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3513 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1630, i64 -5
  %filename3514 = bitcast %union.YYSTYPE* %arrayidx3513 to i8**
  %1631 = load i8*, i8** %filename3514, align 8
  %1632 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3515 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1632, i64 -4
  %lineno3516 = bitcast %union.YYSTYPE* %arrayidx3515 to i32*
  %1633 = load i32, i32* %lineno3516, align 4
  %1634 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3517 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1634, i64 -3
  %ttype3518 = bitcast %union.YYSTYPE* %arrayidx3517 to %union.tree_node**
  %1635 = load %union.tree_node*, %union.tree_node** %ttype3518, align 8
  %1636 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %1637 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3519 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1637, i64 -1
  %ttype3520 = bitcast %union.YYSTYPE* %arrayidx3519 to %union.tree_node**
  %1638 = load %union.tree_node*, %union.tree_node** %ttype3520, align 8
  %call3521 = call %union.tree_node* @grokfield(i8* %1631, i32 %1633, %union.tree_node* %1635, %union.tree_node* %1636, %union.tree_node* %1638)
  %ttype3522 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3521, %union.tree_node** %ttype3522, align 8
  %ttype3523 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1639 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3524 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1639, i64 0
  %ttype3525 = bitcast %union.YYSTYPE* %arrayidx3524 to %union.tree_node**
  %1640 = load %union.tree_node*, %union.tree_node** %ttype3525, align 8
  %1641 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call3526 = call %union.tree_node* @chainon(%union.tree_node* %1640, %union.tree_node* %1641)
  %call3527 = call %union.tree_node* @decl_attributes(%union.tree_node** %ttype3523, %union.tree_node* %call3526, i32 0)
  br label %sw.epilog

sw.bb.3528:                                       ; preds = %if.end.170
  %1642 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3529 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1642, i64 -4
  %filename3530 = bitcast %union.YYSTYPE* %arrayidx3529 to i8**
  %1643 = load i8*, i8** %filename3530, align 8
  %1644 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3531 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1644, i64 -3
  %lineno3532 = bitcast %union.YYSTYPE* %arrayidx3531 to i32*
  %1645 = load i32, i32* %lineno3532, align 4
  %1646 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %1647 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3533 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1647, i64 -1
  %ttype3534 = bitcast %union.YYSTYPE* %arrayidx3533 to %union.tree_node**
  %1648 = load %union.tree_node*, %union.tree_node** %ttype3534, align 8
  %call3535 = call %union.tree_node* @grokfield(i8* %1643, i32 %1645, %union.tree_node* null, %union.tree_node* %1646, %union.tree_node* %1648)
  %ttype3536 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3535, %union.tree_node** %ttype3536, align 8
  %ttype3537 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1649 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3538 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1649, i64 0
  %ttype3539 = bitcast %union.YYSTYPE* %arrayidx3538 to %union.tree_node**
  %1650 = load %union.tree_node*, %union.tree_node** %ttype3539, align 8
  %1651 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call3540 = call %union.tree_node* @chainon(%union.tree_node* %1650, %union.tree_node* %1651)
  %call3541 = call %union.tree_node* @decl_attributes(%union.tree_node** %ttype3537, %union.tree_node* %call3540, i32 0)
  br label %sw.epilog

sw.bb.3542:                                       ; preds = %if.end.170
  %1652 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3543 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1652, i64 -2
  %ttype3544 = bitcast %union.YYSTYPE* %arrayidx3543 to %union.tree_node**
  %1653 = load %union.tree_node*, %union.tree_node** %ttype3544, align 8
  %1654 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp3545 = icmp eq %union.tree_node* %1653, %1654
  br i1 %cmp3545, label %if.then.3547, label %if.else.3551

if.then.3547:                                     ; preds = %sw.bb.3542
  %1655 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3548 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1655, i64 -2
  %ttype3549 = bitcast %union.YYSTYPE* %arrayidx3548 to %union.tree_node**
  %1656 = load %union.tree_node*, %union.tree_node** %ttype3549, align 8
  %ttype3550 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1656, %union.tree_node** %ttype3550, align 8
  br label %if.end.3558

if.else.3551:                                     ; preds = %sw.bb.3542
  %1657 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3552 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1657, i64 0
  %ttype3553 = bitcast %union.YYSTYPE* %arrayidx3552 to %union.tree_node**
  %1658 = load %union.tree_node*, %union.tree_node** %ttype3553, align 8
  %1659 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3554 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1659, i64 -2
  %ttype3555 = bitcast %union.YYSTYPE* %arrayidx3554 to %union.tree_node**
  %1660 = load %union.tree_node*, %union.tree_node** %ttype3555, align 8
  %call3556 = call %union.tree_node* @chainon(%union.tree_node* %1658, %union.tree_node* %1660)
  %ttype3557 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3556, %union.tree_node** %ttype3557, align 8
  br label %if.end.3558

if.end.3558:                                      ; preds = %if.else.3551, %if.then.3547
  br label %sw.epilog

sw.bb.3559:                                       ; preds = %if.end.170
  %1661 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %ttype3560 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1661, %union.tree_node** %ttype3560, align 8
  br label %sw.epilog

sw.bb.3561:                                       ; preds = %if.end.170
  %1662 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3562 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1662, i64 0
  %ttype3563 = bitcast %union.YYSTYPE* %arrayidx3562 to %union.tree_node**
  %1663 = load %union.tree_node*, %union.tree_node** %ttype3563, align 8
  %call3564 = call %union.tree_node* @build_enumerator(%union.tree_node* %1663, %union.tree_node* null)
  %ttype3565 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3564, %union.tree_node** %ttype3565, align 8
  br label %sw.epilog

sw.bb.3566:                                       ; preds = %if.end.170
  %1664 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3567 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1664, i64 -2
  %ttype3568 = bitcast %union.YYSTYPE* %arrayidx3567 to %union.tree_node**
  %1665 = load %union.tree_node*, %union.tree_node** %ttype3568, align 8
  %1666 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3569 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1666, i64 0
  %ttype3570 = bitcast %union.YYSTYPE* %arrayidx3569 to %union.tree_node**
  %1667 = load %union.tree_node*, %union.tree_node** %ttype3570, align 8
  %call3571 = call %union.tree_node* @build_enumerator(%union.tree_node* %1665, %union.tree_node* %1667)
  %ttype3572 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3571, %union.tree_node** %ttype3572, align 8
  br label %sw.epilog

sw.bb.3573:                                       ; preds = %if.end.170
  call void @pending_xref_error()
  %1668 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3574 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1668, i64 0
  %ttype3575 = bitcast %union.YYSTYPE* %arrayidx3574 to %union.tree_node**
  %1669 = load %union.tree_node*, %union.tree_node** %ttype3575, align 8
  %ttype3576 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1669, %union.tree_node** %ttype3576, align 8
  br label %sw.epilog

sw.bb.3577:                                       ; preds = %if.end.170
  %1670 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3578 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1670, i64 -1
  %ttype3579 = bitcast %union.YYSTYPE* %arrayidx3578 to %union.tree_node**
  %1671 = load %union.tree_node*, %union.tree_node** %ttype3579, align 8
  %1672 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3580 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1672, i64 0
  %ttype3581 = bitcast %union.YYSTYPE* %arrayidx3580 to %union.tree_node**
  %1673 = load %union.tree_node*, %union.tree_node** %ttype3581, align 8
  %call3582 = call %union.tree_node* @build_tree_list(%union.tree_node* %1671, %union.tree_node* %1673)
  %ttype3583 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3582, %union.tree_node** %ttype3583, align 8
  br label %sw.epilog

sw.bb.3584:                                       ; preds = %if.end.170
  %ttype3585 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype3585, align 8
  br label %sw.epilog

sw.bb.3586:                                       ; preds = %if.end.170
  %1674 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %call3587 = call %union.tree_node* @build_tree_list(%union.tree_node* %1674, %union.tree_node* null)
  %1675 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call3588 = call %union.tree_node* @build_tree_list(%union.tree_node* %call3587, %union.tree_node* %1675)
  %ttype3589 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3588, %union.tree_node** %ttype3589, align 8
  br label %sw.epilog

sw.bb.3590:                                       ; preds = %if.end.170
  %1676 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %1677 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3591 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1677, i64 0
  %ttype3592 = bitcast %union.YYSTYPE* %arrayidx3591 to %union.tree_node**
  %1678 = load %union.tree_node*, %union.tree_node** %ttype3592, align 8
  %call3593 = call %union.tree_node* @build_tree_list(%union.tree_node* %1676, %union.tree_node* %1678)
  %1679 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call3594 = call %union.tree_node* @build_tree_list(%union.tree_node* %call3593, %union.tree_node* %1679)
  %ttype3595 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3594, %union.tree_node** %ttype3595, align 8
  br label %sw.epilog

sw.bb.3596:                                       ; preds = %if.end.170
  %1680 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %1681 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3597 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1681, i64 -1
  %ttype3598 = bitcast %union.YYSTYPE* %arrayidx3597 to %union.tree_node**
  %1682 = load %union.tree_node*, %union.tree_node** %ttype3598, align 8
  %call3599 = call %union.tree_node* @build_tree_list(%union.tree_node* %1680, %union.tree_node* %1682)
  %1683 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3600 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1683, i64 0
  %ttype3601 = bitcast %union.YYSTYPE* %arrayidx3600 to %union.tree_node**
  %1684 = load %union.tree_node*, %union.tree_node** %ttype3601, align 8
  %1685 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call3602 = call %union.tree_node* @chainon(%union.tree_node* %1684, %union.tree_node* %1685)
  %call3603 = call %union.tree_node* @build_tree_list(%union.tree_node* %call3599, %union.tree_node* %call3602)
  %ttype3604 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3603, %union.tree_node** %ttype3604, align 8
  br label %sw.epilog

sw.bb.3605:                                       ; preds = %if.end.170
  %1686 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3606 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1686, i64 -1
  %ttype3607 = bitcast %union.YYSTYPE* %arrayidx3606 to %union.tree_node**
  %1687 = load %union.tree_node*, %union.tree_node** %ttype3607, align 8
  %1688 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3608 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1688, i64 0
  %ttype3609 = bitcast %union.YYSTYPE* %arrayidx3608 to %union.tree_node**
  %1689 = load %union.tree_node*, %union.tree_node** %ttype3609, align 8
  %call3610 = call %union.tree_node* @make_pointer_declarator(%union.tree_node* %1687, %union.tree_node* %1689)
  %ttype3611 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3610, %union.tree_node** %ttype3611, align 8
  br label %sw.epilog

sw.bb.3612:                                       ; preds = %if.end.170
  %1690 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3613 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1690, i64 0
  %ttype3614 = bitcast %union.YYSTYPE* %arrayidx3613 to %union.tree_node**
  %1691 = load %union.tree_node*, %union.tree_node** %ttype3614, align 8
  %call3615 = call %union.tree_node* @make_pointer_declarator(%union.tree_node* %1691, %union.tree_node* null)
  %ttype3616 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3615, %union.tree_node** %ttype3616, align 8
  br label %sw.epilog

sw.bb.3617:                                       ; preds = %if.end.170
  %1692 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3618 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1692, i64 -1
  %ttype3619 = bitcast %union.YYSTYPE* %arrayidx3618 to %union.tree_node**
  %1693 = load %union.tree_node*, %union.tree_node** %ttype3619, align 8
  %1694 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3620 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1694, i64 0
  %ttype3621 = bitcast %union.YYSTYPE* %arrayidx3620 to %union.tree_node**
  %1695 = load %union.tree_node*, %union.tree_node** %ttype3621, align 8
  %call3622 = call %union.tree_node* @make_pointer_declarator(%union.tree_node* %1693, %union.tree_node* %1695)
  %ttype3623 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3622, %union.tree_node** %ttype3623, align 8
  br label %sw.epilog

sw.bb.3624:                                       ; preds = %if.end.170
  %1696 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3625 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1696, i64 -2
  %ttype3626 = bitcast %union.YYSTYPE* %arrayidx3625 to %union.tree_node**
  %1697 = load %union.tree_node*, %union.tree_node** %ttype3626, align 8
  %tobool3627 = icmp ne %union.tree_node* %1697, null
  br i1 %tobool3627, label %cond.true.3628, label %cond.false.3634

cond.true.3628:                                   ; preds = %sw.bb.3624
  %1698 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3629 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1698, i64 -2
  %ttype3630 = bitcast %union.YYSTYPE* %arrayidx3629 to %union.tree_node**
  %1699 = load %union.tree_node*, %union.tree_node** %ttype3630, align 8
  %1700 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3631 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1700, i64 -1
  %ttype3632 = bitcast %union.YYSTYPE* %arrayidx3631 to %union.tree_node**
  %1701 = load %union.tree_node*, %union.tree_node** %ttype3632, align 8
  %call3633 = call %union.tree_node* @tree_cons(%union.tree_node* %1699, %union.tree_node* %1701, %union.tree_node* null)
  br label %cond.end.3637

cond.false.3634:                                  ; preds = %sw.bb.3624
  %1702 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3635 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1702, i64 -1
  %ttype3636 = bitcast %union.YYSTYPE* %arrayidx3635 to %union.tree_node**
  %1703 = load %union.tree_node*, %union.tree_node** %ttype3636, align 8
  br label %cond.end.3637

cond.end.3637:                                    ; preds = %cond.false.3634, %cond.true.3628
  %cond3638 = phi %union.tree_node* [ %call3633, %cond.true.3628 ], [ %1703, %cond.false.3634 ]
  %ttype3639 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %cond3638, %union.tree_node** %ttype3639, align 8
  br label %sw.epilog

sw.bb.3640:                                       ; preds = %if.end.170
  %1704 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3641 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1704, i64 -2
  %ttype3642 = bitcast %union.YYSTYPE* %arrayidx3641 to %union.tree_node**
  %1705 = load %union.tree_node*, %union.tree_node** %ttype3642, align 8
  %1706 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3643 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1706, i64 0
  %ttype3644 = bitcast %union.YYSTYPE* %arrayidx3643 to %union.tree_node**
  %1707 = load %union.tree_node*, %union.tree_node** %ttype3644, align 8
  %call3645 = call %union.tree_node* (i32, ...) @build_nt(i32 53, %union.tree_node* %1705, %union.tree_node* %1707, %union.tree_node* null)
  %ttype3646 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3645, %union.tree_node** %ttype3646, align 8
  br label %sw.epilog

sw.bb.3647:                                       ; preds = %if.end.170
  %1708 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3648 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1708, i64 0
  %ttype3649 = bitcast %union.YYSTYPE* %arrayidx3648 to %union.tree_node**
  %1709 = load %union.tree_node*, %union.tree_node** %ttype3649, align 8
  %1710 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3650 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1710, i64 -1
  %ttype3651 = bitcast %union.YYSTYPE* %arrayidx3650 to %union.tree_node**
  %1711 = load %union.tree_node*, %union.tree_node** %ttype3651, align 8
  %call3652 = call %union.tree_node* @set_array_declarator_type(%union.tree_node* %1709, %union.tree_node* %1711, i32 1)
  %ttype3653 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3652, %union.tree_node** %ttype3653, align 8
  br label %sw.epilog

sw.bb.3654:                                       ; preds = %if.end.170
  %1712 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3655 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1712, i64 0
  %ttype3656 = bitcast %union.YYSTYPE* %arrayidx3655 to %union.tree_node**
  %1713 = load %union.tree_node*, %union.tree_node** %ttype3656, align 8
  %call3657 = call %union.tree_node* (i32, ...) @build_nt(i32 53, %union.tree_node* null, %union.tree_node* %1713, %union.tree_node* null)
  %ttype3658 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3657, %union.tree_node** %ttype3658, align 8
  br label %sw.epilog

sw.bb.3659:                                       ; preds = %if.end.170
  %1714 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3660 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1714, i64 0
  %ttype3661 = bitcast %union.YYSTYPE* %arrayidx3660 to %union.tree_node**
  %1715 = load %union.tree_node*, %union.tree_node** %ttype3661, align 8
  %call3662 = call %union.tree_node* @set_array_declarator_type(%union.tree_node* %1715, %union.tree_node* null, i32 1)
  %ttype3663 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3662, %union.tree_node** %ttype3663, align 8
  br label %sw.epilog

sw.bb.3664:                                       ; preds = %if.end.170
  %1716 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3665 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1716, i64 -1
  %ttype3666 = bitcast %union.YYSTYPE* %arrayidx3665 to %union.tree_node**
  %1717 = load %union.tree_node*, %union.tree_node** %ttype3666, align 8
  %call3667 = call %union.tree_node* @build_array_declarator(%union.tree_node* %1717, %union.tree_node* null, i32 0, i32 0)
  %ttype3668 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3667, %union.tree_node** %ttype3668, align 8
  br label %sw.epilog

sw.bb.3669:                                       ; preds = %if.end.170
  %1718 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3670 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1718, i64 -1
  %ttype3671 = bitcast %union.YYSTYPE* %arrayidx3670 to %union.tree_node**
  %1719 = load %union.tree_node*, %union.tree_node** %ttype3671, align 8
  %1720 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3672 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1720, i64 -2
  %ttype3673 = bitcast %union.YYSTYPE* %arrayidx3672 to %union.tree_node**
  %1721 = load %union.tree_node*, %union.tree_node** %ttype3673, align 8
  %call3674 = call %union.tree_node* @build_array_declarator(%union.tree_node* %1719, %union.tree_node* %1721, i32 0, i32 0)
  %ttype3675 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3674, %union.tree_node** %ttype3675, align 8
  br label %sw.epilog

sw.bb.3676:                                       ; preds = %if.end.170
  %call3677 = call %union.tree_node* @build_array_declarator(%union.tree_node* null, %union.tree_node* null, i32 0, i32 0)
  %ttype3678 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3677, %union.tree_node** %ttype3678, align 8
  br label %sw.epilog

sw.bb.3679:                                       ; preds = %if.end.170
  %1722 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3680 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1722, i64 -1
  %ttype3681 = bitcast %union.YYSTYPE* %arrayidx3680 to %union.tree_node**
  %1723 = load %union.tree_node*, %union.tree_node** %ttype3681, align 8
  %call3682 = call %union.tree_node* @build_array_declarator(%union.tree_node* null, %union.tree_node* %1723, i32 0, i32 0)
  %ttype3683 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3682, %union.tree_node** %ttype3683, align 8
  br label %sw.epilog

sw.bb.3684:                                       ; preds = %if.end.170
  %call3685 = call %union.tree_node* @build_array_declarator(%union.tree_node* null, %union.tree_node* null, i32 0, i32 1)
  %ttype3686 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3685, %union.tree_node** %ttype3686, align 8
  br label %sw.epilog

sw.bb.3687:                                       ; preds = %if.end.170
  %1724 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3688 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1724, i64 -2
  %ttype3689 = bitcast %union.YYSTYPE* %arrayidx3688 to %union.tree_node**
  %1725 = load %union.tree_node*, %union.tree_node** %ttype3689, align 8
  %call3690 = call %union.tree_node* @build_array_declarator(%union.tree_node* null, %union.tree_node* %1725, i32 0, i32 1)
  %ttype3691 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3690, %union.tree_node** %ttype3691, align 8
  br label %sw.epilog

sw.bb.3692:                                       ; preds = %if.end.170
  %1726 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3693 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1726, i64 -2
  %ttype3694 = bitcast %union.YYSTYPE* %arrayidx3693 to %union.tree_node**
  %1727 = load %union.tree_node*, %union.tree_node** %ttype3694, align 8
  %1728 = bitcast %union.tree_node* %1727 to %struct.c_common_identifier*
  %node3695 = getelementptr inbounds %struct.c_common_identifier, %struct.c_common_identifier* %1728, i32 0, i32 1
  %rid_code3696 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node3695, i32 0, i32 3
  %1729 = load i8, i8* %rid_code3696, align 1
  %conv3697 = zext i8 %1729 to i32
  %cmp3698 = icmp ne i32 %conv3697, 0
  br i1 %cmp3698, label %if.then.3700, label %if.end.3701

if.then.3700:                                     ; preds = %sw.bb.3692
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.3701

if.end.3701:                                      ; preds = %if.then.3700, %sw.bb.3692
  %1730 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3702 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1730, i64 -1
  %ttype3703 = bitcast %union.YYSTYPE* %arrayidx3702 to %union.tree_node**
  %1731 = load %union.tree_node*, %union.tree_node** %ttype3703, align 8
  %call3704 = call %union.tree_node* @build_array_declarator(%union.tree_node* %1731, %union.tree_node* null, i32 1, i32 0)
  %ttype3705 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3704, %union.tree_node** %ttype3705, align 8
  br label %sw.epilog

sw.bb.3706:                                       ; preds = %if.end.170
  %1732 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3707 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1732, i64 -3
  %ttype3708 = bitcast %union.YYSTYPE* %arrayidx3707 to %union.tree_node**
  %1733 = load %union.tree_node*, %union.tree_node** %ttype3708, align 8
  %1734 = bitcast %union.tree_node* %1733 to %struct.c_common_identifier*
  %node3709 = getelementptr inbounds %struct.c_common_identifier, %struct.c_common_identifier* %1734, i32 0, i32 1
  %rid_code3710 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node3709, i32 0, i32 3
  %1735 = load i8, i8* %rid_code3710, align 1
  %conv3711 = zext i8 %1735 to i32
  %cmp3712 = icmp ne i32 %conv3711, 0
  br i1 %cmp3712, label %if.then.3714, label %if.end.3715

if.then.3714:                                     ; preds = %sw.bb.3706
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.3715

if.end.3715:                                      ; preds = %if.then.3714, %sw.bb.3706
  %1736 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3716 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1736, i64 -1
  %ttype3717 = bitcast %union.YYSTYPE* %arrayidx3716 to %union.tree_node**
  %1737 = load %union.tree_node*, %union.tree_node** %ttype3717, align 8
  %1738 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3718 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1738, i64 -2
  %ttype3719 = bitcast %union.YYSTYPE* %arrayidx3718 to %union.tree_node**
  %1739 = load %union.tree_node*, %union.tree_node** %ttype3719, align 8
  %call3720 = call %union.tree_node* @build_array_declarator(%union.tree_node* %1737, %union.tree_node* %1739, i32 1, i32 0)
  %ttype3721 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3720, %union.tree_node** %ttype3721, align 8
  br label %sw.epilog

sw.bb.3722:                                       ; preds = %if.end.170
  %1740 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3723 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1740, i64 -2
  %ttype3724 = bitcast %union.YYSTYPE* %arrayidx3723 to %union.tree_node**
  %1741 = load %union.tree_node*, %union.tree_node** %ttype3724, align 8
  %1742 = bitcast %union.tree_node* %1741 to %struct.c_common_identifier*
  %node3725 = getelementptr inbounds %struct.c_common_identifier, %struct.c_common_identifier* %1742, i32 0, i32 1
  %rid_code3726 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node3725, i32 0, i32 3
  %1743 = load i8, i8* %rid_code3726, align 1
  %conv3727 = zext i8 %1743 to i32
  %cmp3728 = icmp ne i32 %conv3727, 0
  br i1 %cmp3728, label %if.then.3730, label %if.end.3731

if.then.3730:                                     ; preds = %sw.bb.3722
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.3731

if.end.3731:                                      ; preds = %if.then.3730, %sw.bb.3722
  %1744 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3732 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1744, i64 -1
  %ttype3733 = bitcast %union.YYSTYPE* %arrayidx3732 to %union.tree_node**
  %1745 = load %union.tree_node*, %union.tree_node** %ttype3733, align 8
  %1746 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3734 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1746, i64 -3
  %ttype3735 = bitcast %union.YYSTYPE* %arrayidx3734 to %union.tree_node**
  %1747 = load %union.tree_node*, %union.tree_node** %ttype3735, align 8
  %call3736 = call %union.tree_node* @build_array_declarator(%union.tree_node* %1745, %union.tree_node* %1747, i32 1, i32 0)
  %ttype3737 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3736, %union.tree_node** %ttype3737, align 8
  br label %sw.epilog

sw.bb.3738:                                       ; preds = %if.end.170
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.43, i32 0, i32 0))
  br label %sw.epilog

sw.bb.3739:                                       ; preds = %if.end.170
  %1748 = load i32, i32* @pedantic, align 4
  %tobool3740 = icmp ne i32 %1748, 0
  br i1 %tobool3740, label %land.lhs.true.3741, label %if.end.3744

land.lhs.true.3741:                               ; preds = %sw.bb.3739
  %1749 = load i32, i32* @flag_isoc99, align 4
  %tobool3742 = icmp ne i32 %1749, 0
  br i1 %tobool3742, label %if.end.3744, label %if.then.3743

if.then.3743:                                     ; preds = %land.lhs.true.3741
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.3744

if.end.3744:                                      ; preds = %if.then.3743, %land.lhs.true.3741, %sw.bb.3739
  br label %sw.epilog

sw.bb.3745:                                       ; preds = %if.end.170
  call void @pushlevel(i32 0)
  call void @clear_last_expr()
  %call3746 = call %union.tree_node* @add_scope_stmt(i32 1, i32 0)
  br label %sw.epilog

sw.bb.3747:                                       ; preds = %if.end.170
  %call3748 = call %union.tree_node* @add_scope_stmt(i32 0, i32 0)
  %ttype3749 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3748, %union.tree_node** %ttype3749, align 8
  br label %sw.epilog

sw.bb.3750:                                       ; preds = %if.end.170
  %1750 = load i32, i32* @flag_isoc99, align 4
  %tobool3751 = icmp ne i32 %1750, 0
  br i1 %tobool3751, label %if.then.3752, label %if.else.3756

if.then.3752:                                     ; preds = %sw.bb.3750
  %call3753 = call %union.tree_node* @c_begin_compound_stmt()
  %ttype3754 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3753, %union.tree_node** %ttype3754, align 8
  call void @pushlevel(i32 0)
  call void @clear_last_expr()
  %call3755 = call %union.tree_node* @add_scope_stmt(i32 1, i32 0)
  br label %if.end.3758

if.else.3756:                                     ; preds = %sw.bb.3750
  %ttype3757 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype3757, align 8
  br label %if.end.3758

if.end.3758:                                      ; preds = %if.else.3756, %if.then.3752
  br label %sw.epilog

sw.bb.3759:                                       ; preds = %if.end.170
  %1751 = load i32, i32* @flag_isoc99, align 4
  %tobool3760 = icmp ne i32 %1751, 0
  br i1 %tobool3760, label %if.then.3761, label %if.else.3777

if.then.3761:                                     ; preds = %sw.bb.3759
  %call3762 = call %union.tree_node* @add_scope_stmt(i32 0, i32 0)
  store %union.tree_node* %call3762, %union.tree_node** %scope_stmt, align 8
  %call3763 = call i32 @kept_level_p()
  %call3764 = call %union.tree_node* @poplevel(i32 %call3763, i32 0, i32 0)
  %ttype3765 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3764, %union.tree_node** %ttype3765, align 8
  %ttype3766 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1752 = load %union.tree_node*, %union.tree_node** %ttype3766, align 8
  %1753 = load %union.tree_node*, %union.tree_node** %scope_stmt, align 8
  %list3767 = bitcast %union.tree_node* %1753 to %struct.tree_list*
  %value3768 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3767, i32 0, i32 2
  %1754 = load %union.tree_node*, %union.tree_node** %value3768, align 8
  %exp3769 = bitcast %union.tree_node* %1754 to %struct.tree_exp*
  %operands3770 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3769, i32 0, i32 2
  %arrayidx3771 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3770, i32 0, i64 0
  store %union.tree_node* %1752, %union.tree_node** %arrayidx3771, align 8
  %1755 = load %union.tree_node*, %union.tree_node** %scope_stmt, align 8
  %list3772 = bitcast %union.tree_node* %1755 to %struct.tree_list*
  %purpose3773 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3772, i32 0, i32 1
  %1756 = load %union.tree_node*, %union.tree_node** %purpose3773, align 8
  %exp3774 = bitcast %union.tree_node* %1756 to %struct.tree_exp*
  %operands3775 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3774, i32 0, i32 2
  %arrayidx3776 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3775, i32 0, i64 0
  store %union.tree_node* %1752, %union.tree_node** %arrayidx3776, align 8
  br label %if.end.3779

if.else.3777:                                     ; preds = %sw.bb.3759
  %ttype3778 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype3778, align 8
  br label %if.end.3779

if.end.3779:                                      ; preds = %if.else.3777, %if.then.3761
  br label %sw.epilog

sw.bb.3780:                                       ; preds = %if.end.170
  %1757 = load i32, i32* @pedantic, align 4
  %tobool3781 = icmp ne i32 %1757, 0
  br i1 %tobool3781, label %if.then.3782, label %if.end.3783

if.then.3782:                                     ; preds = %sw.bb.3780
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.3783

if.end.3783:                                      ; preds = %if.then.3782, %sw.bb.3780
  br label %sw.epilog

sw.bb.3784:                                       ; preds = %if.end.170
  %1758 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3785 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1758, i64 -1
  %ttype3786 = bitcast %union.YYSTYPE* %arrayidx3785 to %union.tree_node**
  %1759 = load %union.tree_node*, %union.tree_node** %ttype3786, align 8
  store %union.tree_node* %1759, %union.tree_node** %link, align 8
  br label %for.cond.3787

for.cond.3787:                                    ; preds = %for.inc.3797, %sw.bb.3784
  %1760 = load %union.tree_node*, %union.tree_node** %link, align 8
  %tobool3788 = icmp ne %union.tree_node* %1760, null
  br i1 %tobool3788, label %for.body.3789, label %for.end.3800

for.body.3789:                                    ; preds = %for.cond.3787
  %1761 = load %union.tree_node*, %union.tree_node** %link, align 8
  %list3790 = bitcast %union.tree_node* %1761 to %struct.tree_list*
  %value3791 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3790, i32 0, i32 2
  %1762 = load %union.tree_node*, %union.tree_node** %value3791, align 8
  %call3792 = call %union.tree_node* @shadow_label(%union.tree_node* %1762)
  store %union.tree_node* %call3792, %union.tree_node** %label, align 8
  %1763 = load %union.tree_node*, %union.tree_node** %label, align 8
  %common3793 = bitcast %union.tree_node* %1763 to %struct.tree_common*
  %lang_flag_1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3793, i32 0, i32 2
  %bf.load3794 = load i32, i32* %lang_flag_1, align 8
  %bf.clear3795 = and i32 %bf.load3794, -33554433
  %bf.set3796 = or i32 %bf.clear3795, 33554432
  store i32 %bf.set3796, i32* %lang_flag_1, align 8
  %1764 = load %union.tree_node*, %union.tree_node** %label, align 8
  call void @add_decl_stmt(%union.tree_node* %1764)
  br label %for.inc.3797

for.inc.3797:                                     ; preds = %for.body.3789
  %1765 = load %union.tree_node*, %union.tree_node** %link, align 8
  %common3798 = bitcast %union.tree_node* %1765 to %struct.tree_common*
  %chain3799 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3798, i32 0, i32 0
  %1766 = load %union.tree_node*, %union.tree_node** %chain3799, align 8
  store %union.tree_node* %1766, %union.tree_node** %link, align 8
  br label %for.cond.3787

for.end.3800:                                     ; preds = %for.cond.3787
  br label %sw.epilog

sw.bb.3801:                                       ; preds = %if.end.170
  br label %sw.epilog

sw.bb.3802:                                       ; preds = %if.end.170
  %1767 = load i32, i32* @compstmt_count, align 4
  %inc3803 = add nsw i32 %1767, 1
  store i32 %inc3803, i32* @compstmt_count, align 4
  %call3804 = call %union.tree_node* @c_begin_compound_stmt()
  %ttype3805 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3804, %union.tree_node** %ttype3805, align 8
  br label %sw.epilog

sw.bb.3806:                                       ; preds = %if.end.170
  %1768 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %1769 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %call3807 = call %union.tree_node* @convert(%union.tree_node* %1768, %union.tree_node* %1769)
  %ttype3808 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3807, %union.tree_node** %ttype3808, align 8
  br label %sw.epilog

sw.bb.3809:                                       ; preds = %if.end.170
  %call3810 = call i32 @kept_level_p()
  %call3811 = call %union.tree_node* @poplevel(i32 %call3810, i32 1, i32 0)
  %ttype3812 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3811, %union.tree_node** %ttype3812, align 8
  %ttype3813 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1770 = load %union.tree_node*, %union.tree_node** %ttype3813, align 8
  %1771 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3814 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1771, i64 0
  %ttype3815 = bitcast %union.YYSTYPE* %arrayidx3814 to %union.tree_node**
  %1772 = load %union.tree_node*, %union.tree_node** %ttype3815, align 8
  %list3816 = bitcast %union.tree_node* %1772 to %struct.tree_list*
  %value3817 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3816, i32 0, i32 2
  %1773 = load %union.tree_node*, %union.tree_node** %value3817, align 8
  %exp3818 = bitcast %union.tree_node* %1773 to %struct.tree_exp*
  %operands3819 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3818, i32 0, i32 2
  %arrayidx3820 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3819, i32 0, i64 0
  store %union.tree_node* %1770, %union.tree_node** %arrayidx3820, align 8
  %1774 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3821 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1774, i64 0
  %ttype3822 = bitcast %union.YYSTYPE* %arrayidx3821 to %union.tree_node**
  %1775 = load %union.tree_node*, %union.tree_node** %ttype3822, align 8
  %list3823 = bitcast %union.tree_node* %1775 to %struct.tree_list*
  %purpose3824 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list3823, i32 0, i32 1
  %1776 = load %union.tree_node*, %union.tree_node** %purpose3824, align 8
  %exp3825 = bitcast %union.tree_node* %1776 to %struct.tree_exp*
  %operands3826 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3825, i32 0, i32 2
  %arrayidx3827 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3826, i32 0, i64 0
  store %union.tree_node* %1770, %union.tree_node** %arrayidx3827, align 8
  br label %sw.epilog

sw.bb.3828:                                       ; preds = %if.end.170
  %1777 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %cmp3829 = icmp eq %union.tree_node* %1777, null
  br i1 %cmp3829, label %if.then.3831, label %if.end.3832

if.then.3831:                                     ; preds = %sw.bb.3828
  call void (i8*, ...) @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.46, i32 0, i32 0))
  br label %yyerrlab1

if.end.3832:                                      ; preds = %sw.bb.3828
  call void @keep_next_level()
  call void @push_label_level()
  %1778 = load i32, i32* @compstmt_count, align 4
  %inc3833 = add nsw i32 %1778, 1
  store i32 %inc3833, i32* @compstmt_count, align 4
  %call3834 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt3835 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call3834, i32 0, i32 0
  %1779 = load %union.tree_node*, %union.tree_node** %x_last_stmt3835, align 8
  %call3836 = call %union.tree_node* (i32, ...) @build_stmt(i32 153, %union.tree_node* %1779)
  %call3837 = call %union.tree_node* @add_stmt(%union.tree_node* %call3836)
  %ttype3838 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3837, %union.tree_node** %ttype3838, align 8
  br label %sw.epilog

sw.bb.3839:                                       ; preds = %if.end.170
  br label %do.body.3840

do.body.3840:                                     ; preds = %sw.bb.3839
  %1780 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3841 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1780, i64 -1
  %ttype3842 = bitcast %union.YYSTYPE* %arrayidx3841 to %union.tree_node**
  %1781 = load %union.tree_node*, %union.tree_node** %ttype3842, align 8
  %common3843 = bitcast %union.tree_node* %1781 to %struct.tree_common*
  %chain3844 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3843, i32 0, i32 0
  %1782 = load %union.tree_node*, %union.tree_node** %chain3844, align 8
  %1783 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3845 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1783, i64 -1
  %ttype3846 = bitcast %union.YYSTYPE* %arrayidx3845 to %union.tree_node**
  %1784 = load %union.tree_node*, %union.tree_node** %ttype3846, align 8
  %exp3847 = bitcast %union.tree_node* %1784 to %struct.tree_exp*
  %operands3848 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3847, i32 0, i32 2
  %arrayidx3849 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3848, i32 0, i64 0
  store %union.tree_node* %1782, %union.tree_node** %arrayidx3849, align 8
  %1785 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3850 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1785, i64 -1
  %ttype3851 = bitcast %union.YYSTYPE* %arrayidx3850 to %union.tree_node**
  %1786 = load %union.tree_node*, %union.tree_node** %ttype3851, align 8
  %common3852 = bitcast %union.tree_node* %1786 to %struct.tree_common*
  %chain3853 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3852, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %chain3853, align 8
  %1787 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3854 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1787, i64 -1
  %ttype3855 = bitcast %union.YYSTYPE* %arrayidx3854 to %union.tree_node**
  %1788 = load %union.tree_node*, %union.tree_node** %ttype3855, align 8
  %call3856 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt3857 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call3856, i32 0, i32 0
  store %union.tree_node* %1788, %union.tree_node** %x_last_stmt3857, align 8
  br label %do.end.3858

do.end.3858:                                      ; preds = %do.body.3840
  %call3859 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_expr_type3860 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call3859, i32 0, i32 1
  store %union.tree_node* null, %union.tree_node** %x_last_expr_type3860, align 8
  %1789 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3861 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1789, i64 -1
  %ttype3862 = bitcast %union.YYSTYPE* %arrayidx3861 to %union.tree_node**
  %1790 = load %union.tree_node*, %union.tree_node** %ttype3862, align 8
  %ttype3863 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1790, %union.tree_node** %ttype3863, align 8
  br label %sw.epilog

sw.bb.3864:                                       ; preds = %if.end.170
  call void @c_finish_then()
  br label %sw.epilog

sw.bb.3865:                                       ; preds = %if.end.170
  %call3866 = call %union.tree_node* @c_begin_if_stmt()
  %ttype3867 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3866, %union.tree_node** %ttype3867, align 8
  br label %sw.epilog

sw.bb.3868:                                       ; preds = %if.end.170
  %1791 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3869 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1791, i64 -1
  %ttype3870 = bitcast %union.YYSTYPE* %arrayidx3869 to %union.tree_node**
  %1792 = load %union.tree_node*, %union.tree_node** %ttype3870, align 8
  %call3871 = call %union.tree_node* @truthvalue_conversion(%union.tree_node* %1792)
  %1793 = load i32, i32* @compstmt_count, align 4
  %1794 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3872 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1794, i64 -3
  %ttype3873 = bitcast %union.YYSTYPE* %arrayidx3872 to %union.tree_node**
  %1795 = load %union.tree_node*, %union.tree_node** %ttype3873, align 8
  call void @c_expand_start_cond(%union.tree_node* %call3871, i32 %1793, %union.tree_node* %1795)
  %1796 = load i32, i32* @stmt_count, align 4
  %conv3874 = sext i32 %1796 to i64
  %itype = bitcast %union.YYSTYPE* %yyval to i64*
  store i64 %conv3874, i64* %itype, align 8
  %1797 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3875 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1797, i64 -7
  %filename3876 = bitcast %union.YYSTYPE* %arrayidx3875 to i8**
  %1798 = load i8*, i8** %filename3876, align 8
  store i8* %1798, i8** @if_stmt_file, align 8
  %1799 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3877 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1799, i64 -6
  %lineno3878 = bitcast %union.YYSTYPE* %arrayidx3877 to i32*
  %1800 = load i32, i32* %lineno3878, align 4
  store i32 %1800, i32* @if_stmt_line, align 4
  br label %sw.epilog

sw.bb.3879:                                       ; preds = %if.end.170
  %1801 = load i32, i32* @stmt_count, align 4
  %inc3880 = add nsw i32 %1801, 1
  store i32 %inc3880, i32* @stmt_count, align 4
  %1802 = load i32, i32* @compstmt_count, align 4
  %inc3881 = add nsw i32 %1802, 1
  store i32 %inc3881, i32* @compstmt_count, align 4
  %call3882 = call %union.tree_node* (i32, ...) @build_stmt(i32 158, %union.tree_node* null, %union.tree_node* null)
  %call3883 = call %union.tree_node* @add_stmt(%union.tree_node* %call3882)
  %ttype3884 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3883, %union.tree_node** %ttype3884, align 8
  %1803 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %ttype3885 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1804 = load %union.tree_node*, %union.tree_node** %ttype3885, align 8
  %exp3886 = bitcast %union.tree_node* %1804 to %struct.tree_exp*
  %operands3887 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3886, i32 0, i32 2
  %arrayidx3888 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3887, i32 0, i64 0
  store %union.tree_node* %1803, %union.tree_node** %arrayidx3888, align 8
  br label %sw.epilog

sw.bb.3889:                                       ; preds = %if.end.170
  %1805 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3890 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1805, i64 -2
  %ttype3891 = bitcast %union.YYSTYPE* %arrayidx3890 to %union.tree_node**
  %1806 = load %union.tree_node*, %union.tree_node** %ttype3891, align 8
  %ttype3892 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1806, %union.tree_node** %ttype3892, align 8
  br label %do.body.3893

do.body.3893:                                     ; preds = %sw.bb.3889
  %ttype3894 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1807 = load %union.tree_node*, %union.tree_node** %ttype3894, align 8
  %common3895 = bitcast %union.tree_node* %1807 to %struct.tree_common*
  %chain3896 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3895, i32 0, i32 0
  %1808 = load %union.tree_node*, %union.tree_node** %chain3896, align 8
  %ttype3897 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1809 = load %union.tree_node*, %union.tree_node** %ttype3897, align 8
  %exp3898 = bitcast %union.tree_node* %1809 to %struct.tree_exp*
  %operands3899 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3898, i32 0, i32 2
  %arrayidx3900 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3899, i32 0, i64 1
  store %union.tree_node* %1808, %union.tree_node** %arrayidx3900, align 8
  %ttype3901 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1810 = load %union.tree_node*, %union.tree_node** %ttype3901, align 8
  %common3902 = bitcast %union.tree_node* %1810 to %struct.tree_common*
  %chain3903 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3902, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %chain3903, align 8
  %ttype3904 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1811 = load %union.tree_node*, %union.tree_node** %ttype3904, align 8
  %call3905 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt3906 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call3905, i32 0, i32 0
  store %union.tree_node* %1811, %union.tree_node** %x_last_stmt3906, align 8
  br label %do.end.3907

do.end.3907:                                      ; preds = %do.body.3893
  br label %sw.epilog

sw.bb.3908:                                       ; preds = %if.end.170
  %1812 = load i32, i32* @yychar, align 4
  %cmp3909 = icmp eq i32 %1812, -2
  br i1 %cmp3909, label %if.then.3911, label %if.end.3913

if.then.3911:                                     ; preds = %sw.bb.3908
  %call3912 = call i32 @yylex()
  store i32 %call3912, i32* @yychar, align 4
  br label %if.end.3913

if.end.3913:                                      ; preds = %if.then.3911, %sw.bb.3908
  %1813 = load i8*, i8** @input_filename, align 8
  %filename3914 = bitcast %union.YYSTYPE* %yyval to i8**
  store i8* %1813, i8** %filename3914, align 8
  br label %sw.epilog

sw.bb.3915:                                       ; preds = %if.end.170
  %1814 = load i32, i32* @yychar, align 4
  %cmp3916 = icmp eq i32 %1814, -2
  br i1 %cmp3916, label %if.then.3918, label %if.end.3920

if.then.3918:                                     ; preds = %sw.bb.3915
  %call3919 = call i32 @yylex()
  store i32 %call3919, i32* @yychar, align 4
  br label %if.end.3920

if.end.3920:                                      ; preds = %if.then.3918, %sw.bb.3915
  %1815 = load i32, i32* @lineno, align 4
  %lineno3921 = bitcast %union.YYSTYPE* %yyval to i32*
  store i32 %1815, i32* %lineno3921, align 4
  br label %sw.epilog

sw.bb.3922:                                       ; preds = %if.end.170
  %1816 = load i32, i32* @flag_isoc99, align 4
  %tobool3923 = icmp ne i32 %1816, 0
  br i1 %tobool3923, label %if.then.3924, label %if.end.3944

if.then.3924:                                     ; preds = %sw.bb.3922
  br label %do.body.3925

do.body.3925:                                     ; preds = %if.then.3924
  %1817 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3926 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1817, i64 -2
  %ttype3927 = bitcast %union.YYSTYPE* %arrayidx3926 to %union.tree_node**
  %1818 = load %union.tree_node*, %union.tree_node** %ttype3927, align 8
  %common3928 = bitcast %union.tree_node* %1818 to %struct.tree_common*
  %chain3929 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3928, i32 0, i32 0
  %1819 = load %union.tree_node*, %union.tree_node** %chain3929, align 8
  %1820 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3930 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1820, i64 -2
  %ttype3931 = bitcast %union.YYSTYPE* %arrayidx3930 to %union.tree_node**
  %1821 = load %union.tree_node*, %union.tree_node** %ttype3931, align 8
  %exp3932 = bitcast %union.tree_node* %1821 to %struct.tree_exp*
  %operands3933 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3932, i32 0, i32 2
  %arrayidx3934 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3933, i32 0, i64 0
  store %union.tree_node* %1819, %union.tree_node** %arrayidx3934, align 8
  %1822 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3935 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1822, i64 -2
  %ttype3936 = bitcast %union.YYSTYPE* %arrayidx3935 to %union.tree_node**
  %1823 = load %union.tree_node*, %union.tree_node** %ttype3936, align 8
  %common3937 = bitcast %union.tree_node* %1823 to %struct.tree_common*
  %chain3938 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3937, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %chain3938, align 8
  %1824 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3939 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1824, i64 -2
  %ttype3940 = bitcast %union.YYSTYPE* %arrayidx3939 to %union.tree_node**
  %1825 = load %union.tree_node*, %union.tree_node** %ttype3940, align 8
  %call3941 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt3942 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call3941, i32 0, i32 0
  store %union.tree_node* %1825, %union.tree_node** %x_last_stmt3942, align 8
  br label %do.end.3943

do.end.3943:                                      ; preds = %do.body.3925
  br label %if.end.3944

if.end.3944:                                      ; preds = %do.end.3943, %sw.bb.3922
  br label %sw.epilog

sw.bb.3945:                                       ; preds = %if.end.170
  %1826 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3946 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1826, i64 0
  %ttype3947 = bitcast %union.YYSTYPE* %arrayidx3946 to %union.tree_node**
  %1827 = load %union.tree_node*, %union.tree_node** %ttype3947, align 8
  %tobool3948 = icmp ne %union.tree_node* %1827, null
  br i1 %tobool3948, label %if.then.3949, label %if.end.3956

if.then.3949:                                     ; preds = %sw.bb.3945
  %1828 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3950 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1828, i64 -1
  %lineno3951 = bitcast %union.YYSTYPE* %arrayidx3950 to i32*
  %1829 = load i32, i32* %lineno3951, align 4
  %1830 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3952 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1830, i64 0
  %ttype3953 = bitcast %union.YYSTYPE* %arrayidx3952 to %union.tree_node**
  %1831 = load %union.tree_node*, %union.tree_node** %ttype3953, align 8
  %exp3954 = bitcast %union.tree_node* %1831 to %struct.tree_exp*
  %complexity3955 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3954, i32 0, i32 1
  store i32 %1829, i32* %complexity3955, align 4
  br label %if.end.3956

if.end.3956:                                      ; preds = %if.then.3949, %sw.bb.3945
  br label %sw.epilog

sw.bb.3957:                                       ; preds = %if.end.170
  %1832 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3958 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1832, i64 0
  %ttype3959 = bitcast %union.YYSTYPE* %arrayidx3958 to %union.tree_node**
  %1833 = load %union.tree_node*, %union.tree_node** %ttype3959, align 8
  %tobool3960 = icmp ne %union.tree_node* %1833, null
  br i1 %tobool3960, label %if.then.3961, label %if.end.3968

if.then.3961:                                     ; preds = %sw.bb.3957
  %1834 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3962 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1834, i64 -1
  %lineno3963 = bitcast %union.YYSTYPE* %arrayidx3962 to i32*
  %1835 = load i32, i32* %lineno3963, align 4
  %1836 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3964 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1836, i64 0
  %ttype3965 = bitcast %union.YYSTYPE* %arrayidx3964 to %union.tree_node**
  %1837 = load %union.tree_node*, %union.tree_node** %ttype3965, align 8
  %exp3966 = bitcast %union.tree_node* %1837 to %struct.tree_exp*
  %complexity3967 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3966, i32 0, i32 1
  store i32 %1835, i32* %complexity3967, align 4
  br label %if.end.3968

if.end.3968:                                      ; preds = %if.then.3961, %sw.bb.3957
  br label %sw.epilog

sw.bb.3969:                                       ; preds = %if.end.170
  call void @c_expand_start_else()
  %1838 = load i32, i32* @stmt_count, align 4
  %conv3970 = sext i32 %1838 to i64
  %1839 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3971 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1839, i64 -1
  %itype3972 = bitcast %union.YYSTYPE* %arrayidx3971 to i64*
  store i64 %conv3970, i64* %itype3972, align 8
  br label %sw.epilog

sw.bb.3973:                                       ; preds = %if.end.170
  call void @c_finish_else()
  call void @c_expand_end_cond()
  %1840 = load i32, i32* @extra_warnings, align 4
  %tobool3974 = icmp ne i32 %1840, 0
  br i1 %tobool3974, label %land.lhs.true.3975, label %if.end.3982

land.lhs.true.3975:                               ; preds = %sw.bb.3973
  %1841 = load i32, i32* @stmt_count, align 4
  %conv3976 = sext i32 %1841 to i64
  %1842 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3977 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1842, i64 -3
  %itype3978 = bitcast %union.YYSTYPE* %arrayidx3977 to i64*
  %1843 = load i64, i64* %itype3978, align 8
  %cmp3979 = icmp eq i64 %conv3976, %1843
  br i1 %cmp3979, label %if.then.3981, label %if.end.3982

if.then.3981:                                     ; preds = %land.lhs.true.3975
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.3982

if.end.3982:                                      ; preds = %if.then.3981, %land.lhs.true.3975, %sw.bb.3973
  br label %sw.epilog

sw.bb.3983:                                       ; preds = %if.end.170
  call void @c_expand_end_cond()
  %1844 = load i32, i32* @extra_warnings, align 4
  %tobool3984 = icmp ne i32 %1844, 0
  br i1 %tobool3984, label %land.lhs.true.3985, label %if.end.3993

land.lhs.true.3985:                               ; preds = %sw.bb.3983
  %1845 = load i32, i32* @stmt_count, align 4
  %inc3986 = add nsw i32 %1845, 1
  store i32 %inc3986, i32* @stmt_count, align 4
  %conv3987 = sext i32 %1845 to i64
  %1846 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx3988 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1846, i64 0
  %itype3989 = bitcast %union.YYSTYPE* %arrayidx3988 to i64*
  %1847 = load i64, i64* %itype3989, align 8
  %cmp3990 = icmp eq i64 %conv3987, %1847
  br i1 %cmp3990, label %if.then.3992, label %if.end.3993

if.then.3992:                                     ; preds = %land.lhs.true.3985
  %1848 = load i8*, i8** @if_stmt_file, align 8
  %1849 = load i32, i32* @if_stmt_line, align 4
  call void (i8*, i32, i8*, ...) @warning_with_file_and_line(i8* %1848, i32 %1849, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.3993

if.end.3993:                                      ; preds = %if.then.3992, %land.lhs.true.3985, %sw.bb.3983
  br label %sw.epilog

sw.bb.3994:                                       ; preds = %if.end.170
  call void @c_expand_end_cond()
  br label %sw.epilog

sw.bb.3995:                                       ; preds = %if.end.170
  %1850 = load i32, i32* @stmt_count, align 4
  %inc3996 = add nsw i32 %1850, 1
  store i32 %inc3996, i32* @stmt_count, align 4
  %call3997 = call %union.tree_node* @c_begin_while_stmt()
  %ttype3998 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call3997, %union.tree_node** %ttype3998, align 8
  br label %sw.epilog

sw.bb.3999:                                       ; preds = %if.end.170
  %1851 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4000 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1851, i64 -1
  %ttype4001 = bitcast %union.YYSTYPE* %arrayidx4000 to %union.tree_node**
  %1852 = load %union.tree_node*, %union.tree_node** %ttype4001, align 8
  %call4002 = call %union.tree_node* @truthvalue_conversion(%union.tree_node* %1852)
  %1853 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4003 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1853, i64 -1
  %ttype4004 = bitcast %union.YYSTYPE* %arrayidx4003 to %union.tree_node**
  store %union.tree_node* %call4002, %union.tree_node** %ttype4004, align 8
  %1854 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4005 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1854, i64 -1
  %ttype4006 = bitcast %union.YYSTYPE* %arrayidx4005 to %union.tree_node**
  %1855 = load %union.tree_node*, %union.tree_node** %ttype4006, align 8
  %call4007 = call %union.tree_node* @truthvalue_conversion(%union.tree_node* %1855)
  %1856 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4008 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1856, i64 -3
  %ttype4009 = bitcast %union.YYSTYPE* %arrayidx4008 to %union.tree_node**
  %1857 = load %union.tree_node*, %union.tree_node** %ttype4009, align 8
  call void @c_finish_while_stmt_cond(%union.tree_node* %call4007, %union.tree_node* %1857)
  %1858 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4010 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1858, i64 -3
  %ttype4011 = bitcast %union.YYSTYPE* %arrayidx4010 to %union.tree_node**
  %1859 = load %union.tree_node*, %union.tree_node** %ttype4011, align 8
  %call4012 = call %union.tree_node* @add_stmt(%union.tree_node* %1859)
  %ttype4013 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4012, %union.tree_node** %ttype4013, align 8
  br label %sw.epilog

sw.bb.4014:                                       ; preds = %if.end.170
  br label %do.body.4015

do.body.4015:                                     ; preds = %sw.bb.4014
  %1860 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4016 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1860, i64 -1
  %ttype4017 = bitcast %union.YYSTYPE* %arrayidx4016 to %union.tree_node**
  %1861 = load %union.tree_node*, %union.tree_node** %ttype4017, align 8
  %common4018 = bitcast %union.tree_node* %1861 to %struct.tree_common*
  %chain4019 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4018, i32 0, i32 0
  %1862 = load %union.tree_node*, %union.tree_node** %chain4019, align 8
  %1863 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4020 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1863, i64 -1
  %ttype4021 = bitcast %union.YYSTYPE* %arrayidx4020 to %union.tree_node**
  %1864 = load %union.tree_node*, %union.tree_node** %ttype4021, align 8
  %exp4022 = bitcast %union.tree_node* %1864 to %struct.tree_exp*
  %operands4023 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp4022, i32 0, i32 2
  %arrayidx4024 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4023, i32 0, i64 1
  store %union.tree_node* %1862, %union.tree_node** %arrayidx4024, align 8
  %1865 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4025 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1865, i64 -1
  %ttype4026 = bitcast %union.YYSTYPE* %arrayidx4025 to %union.tree_node**
  %1866 = load %union.tree_node*, %union.tree_node** %ttype4026, align 8
  %common4027 = bitcast %union.tree_node* %1866 to %struct.tree_common*
  %chain4028 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4027, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %chain4028, align 8
  %1867 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4029 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1867, i64 -1
  %ttype4030 = bitcast %union.YYSTYPE* %arrayidx4029 to %union.tree_node**
  %1868 = load %union.tree_node*, %union.tree_node** %ttype4030, align 8
  %call4031 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt4032 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call4031, i32 0, i32 0
  store %union.tree_node* %1868, %union.tree_node** %x_last_stmt4032, align 8
  br label %do.end.4033

do.end.4033:                                      ; preds = %do.body.4015
  br label %sw.epilog

sw.bb.4034:                                       ; preds = %if.end.170
  %1869 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4035 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1869, i64 -2
  %ttype4036 = bitcast %union.YYSTYPE* %arrayidx4035 to %union.tree_node**
  %1870 = load %union.tree_node*, %union.tree_node** %ttype4036, align 8
  %call4037 = call %union.tree_node* @truthvalue_conversion(%union.tree_node* %1870)
  %1871 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4038 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1871, i64 -4
  %ttype4039 = bitcast %union.YYSTYPE* %arrayidx4038 to %union.tree_node**
  %1872 = load %union.tree_node*, %union.tree_node** %ttype4039, align 8
  %exp4040 = bitcast %union.tree_node* %1872 to %struct.tree_exp*
  %operands4041 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp4040, i32 0, i32 2
  %arrayidx4042 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4041, i32 0, i64 0
  store %union.tree_node* %call4037, %union.tree_node** %arrayidx4042, align 8
  br label %sw.epilog

sw.bb.4043:                                       ; preds = %if.end.170
  br label %sw.epilog

sw.bb.4044:                                       ; preds = %if.end.170
  %call4045 = call %union.tree_node* (i32, ...) @build_stmt(i32 156, %union.tree_node* null, %union.tree_node* null, %union.tree_node* null, %union.tree_node* null)
  %ttype4046 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4045, %union.tree_node** %ttype4046, align 8
  %ttype4047 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %1873 = load %union.tree_node*, %union.tree_node** %ttype4047, align 8
  %call4048 = call %union.tree_node* @add_stmt(%union.tree_node* %1873)
  br label %sw.epilog

sw.bb.4049:                                       ; preds = %if.end.170
  %1874 = load i32, i32* @stmt_count, align 4
  %inc4050 = add nsw i32 %1874, 1
  store i32 %inc4050, i32* @stmt_count, align 4
  br label %do.body.4051

do.body.4051:                                     ; preds = %sw.bb.4049
  %1875 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4052 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1875, i64 -2
  %ttype4053 = bitcast %union.YYSTYPE* %arrayidx4052 to %union.tree_node**
  %1876 = load %union.tree_node*, %union.tree_node** %ttype4053, align 8
  %common4054 = bitcast %union.tree_node* %1876 to %struct.tree_common*
  %chain4055 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4054, i32 0, i32 0
  %1877 = load %union.tree_node*, %union.tree_node** %chain4055, align 8
  %1878 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4056 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1878, i64 -2
  %ttype4057 = bitcast %union.YYSTYPE* %arrayidx4056 to %union.tree_node**
  %1879 = load %union.tree_node*, %union.tree_node** %ttype4057, align 8
  %exp4058 = bitcast %union.tree_node* %1879 to %struct.tree_exp*
  %operands4059 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp4058, i32 0, i32 2
  %arrayidx4060 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4059, i32 0, i64 0
  store %union.tree_node* %1877, %union.tree_node** %arrayidx4060, align 8
  %1880 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4061 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1880, i64 -2
  %ttype4062 = bitcast %union.YYSTYPE* %arrayidx4061 to %union.tree_node**
  %1881 = load %union.tree_node*, %union.tree_node** %ttype4062, align 8
  %common4063 = bitcast %union.tree_node* %1881 to %struct.tree_common*
  %chain4064 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4063, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %chain4064, align 8
  %1882 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4065 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1882, i64 -2
  %ttype4066 = bitcast %union.YYSTYPE* %arrayidx4065 to %union.tree_node**
  %1883 = load %union.tree_node*, %union.tree_node** %ttype4066, align 8
  %call4067 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt4068 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call4067, i32 0, i32 0
  store %union.tree_node* %1883, %union.tree_node** %x_last_stmt4068, align 8
  br label %do.end.4069

do.end.4069:                                      ; preds = %do.body.4051
  br label %sw.epilog

sw.bb.4070:                                       ; preds = %if.end.170
  %1884 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4071 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1884, i64 -1
  %ttype4072 = bitcast %union.YYSTYPE* %arrayidx4071 to %union.tree_node**
  %1885 = load %union.tree_node*, %union.tree_node** %ttype4072, align 8
  %tobool4073 = icmp ne %union.tree_node* %1885, null
  br i1 %tobool4073, label %if.then.4074, label %if.end.4083

if.then.4074:                                     ; preds = %sw.bb.4070
  %1886 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4075 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1886, i64 -1
  %ttype4076 = bitcast %union.YYSTYPE* %arrayidx4075 to %union.tree_node**
  %1887 = load %union.tree_node*, %union.tree_node** %ttype4076, align 8
  %call4077 = call %union.tree_node* @truthvalue_conversion(%union.tree_node* %1887)
  %1888 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4078 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1888, i64 -5
  %ttype4079 = bitcast %union.YYSTYPE* %arrayidx4078 to %union.tree_node**
  %1889 = load %union.tree_node*, %union.tree_node** %ttype4079, align 8
  %exp4080 = bitcast %union.tree_node* %1889 to %struct.tree_exp*
  %operands4081 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp4080, i32 0, i32 2
  %arrayidx4082 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4081, i32 0, i64 1
  store %union.tree_node* %call4077, %union.tree_node** %arrayidx4082, align 8
  br label %if.end.4083

if.end.4083:                                      ; preds = %if.then.4074, %sw.bb.4070
  br label %sw.epilog

sw.bb.4084:                                       ; preds = %if.end.170
  %1890 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4085 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1890, i64 -1
  %ttype4086 = bitcast %union.YYSTYPE* %arrayidx4085 to %union.tree_node**
  %1891 = load %union.tree_node*, %union.tree_node** %ttype4086, align 8
  %1892 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4087 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1892, i64 -8
  %ttype4088 = bitcast %union.YYSTYPE* %arrayidx4087 to %union.tree_node**
  %1893 = load %union.tree_node*, %union.tree_node** %ttype4088, align 8
  %exp4089 = bitcast %union.tree_node* %1893 to %struct.tree_exp*
  %operands4090 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp4089, i32 0, i32 2
  %arrayidx4091 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4090, i32 0, i64 2
  store %union.tree_node* %1891, %union.tree_node** %arrayidx4091, align 8
  br label %sw.epilog

sw.bb.4092:                                       ; preds = %if.end.170
  br label %do.body.4093

do.body.4093:                                     ; preds = %sw.bb.4092
  %1894 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4094 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1894, i64 -10
  %ttype4095 = bitcast %union.YYSTYPE* %arrayidx4094 to %union.tree_node**
  %1895 = load %union.tree_node*, %union.tree_node** %ttype4095, align 8
  %common4096 = bitcast %union.tree_node* %1895 to %struct.tree_common*
  %chain4097 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4096, i32 0, i32 0
  %1896 = load %union.tree_node*, %union.tree_node** %chain4097, align 8
  %1897 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4098 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1897, i64 -10
  %ttype4099 = bitcast %union.YYSTYPE* %arrayidx4098 to %union.tree_node**
  %1898 = load %union.tree_node*, %union.tree_node** %ttype4099, align 8
  %exp4100 = bitcast %union.tree_node* %1898 to %struct.tree_exp*
  %operands4101 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp4100, i32 0, i32 2
  %arrayidx4102 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4101, i32 0, i64 3
  store %union.tree_node* %1896, %union.tree_node** %arrayidx4102, align 8
  %1899 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4103 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1899, i64 -10
  %ttype4104 = bitcast %union.YYSTYPE* %arrayidx4103 to %union.tree_node**
  %1900 = load %union.tree_node*, %union.tree_node** %ttype4104, align 8
  %common4105 = bitcast %union.tree_node* %1900 to %struct.tree_common*
  %chain4106 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4105, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %chain4106, align 8
  %1901 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4107 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1901, i64 -10
  %ttype4108 = bitcast %union.YYSTYPE* %arrayidx4107 to %union.tree_node**
  %1902 = load %union.tree_node*, %union.tree_node** %ttype4108, align 8
  %call4109 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt4110 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call4109, i32 0, i32 0
  store %union.tree_node* %1902, %union.tree_node** %x_last_stmt4110, align 8
  br label %do.end.4111

do.end.4111:                                      ; preds = %do.body.4093
  br label %sw.epilog

sw.bb.4112:                                       ; preds = %if.end.170
  %1903 = load i32, i32* @stmt_count, align 4
  %inc4113 = add nsw i32 %1903, 1
  store i32 %inc4113, i32* @stmt_count, align 4
  %1904 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4114 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1904, i64 -1
  %ttype4115 = bitcast %union.YYSTYPE* %arrayidx4114 to %union.tree_node**
  %1905 = load %union.tree_node*, %union.tree_node** %ttype4115, align 8
  %call4116 = call %union.tree_node* @c_start_case(%union.tree_node* %1905)
  %ttype4117 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4116, %union.tree_node** %ttype4117, align 8
  br label %sw.epilog

sw.bb.4118:                                       ; preds = %if.end.170
  call void @c_finish_case()
  br label %sw.epilog

sw.bb.4119:                                       ; preds = %if.end.170
  %1906 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4120 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1906, i64 -1
  %ttype4121 = bitcast %union.YYSTYPE* %arrayidx4120 to %union.tree_node**
  %1907 = load %union.tree_node*, %union.tree_node** %ttype4121, align 8
  %call4122 = call %union.tree_node* (i32, ...) @build_stmt(i32 152, %union.tree_node* %1907)
  %call4123 = call %union.tree_node* @add_stmt(%union.tree_node* %call4122)
  br label %sw.epilog

sw.bb.4124:                                       ; preds = %if.end.170
  call void @check_for_loop_decls()
  br label %sw.epilog

sw.bb.4125:                                       ; preds = %if.end.170
  %1908 = load i32, i32* @stmt_count, align 4
  %inc4126 = add nsw i32 %1908, 1
  store i32 %inc4126, i32* @stmt_count, align 4
  %1909 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4127 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1909, i64 0
  %ttype4128 = bitcast %union.YYSTYPE* %arrayidx4127 to %union.tree_node**
  %1910 = load %union.tree_node*, %union.tree_node** %ttype4128, align 8
  %ttype4129 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %1910, %union.tree_node** %ttype4129, align 8
  br label %sw.epilog

sw.bb.4130:                                       ; preds = %if.end.170
  %1911 = load i32, i32* @stmt_count, align 4
  %inc4131 = add nsw i32 %1911, 1
  store i32 %inc4131, i32* @stmt_count, align 4
  %1912 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4132 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1912, i64 -1
  %ttype4133 = bitcast %union.YYSTYPE* %arrayidx4132 to %union.tree_node**
  %1913 = load %union.tree_node*, %union.tree_node** %ttype4133, align 8
  %call4134 = call %union.tree_node* @c_expand_expr_stmt(%union.tree_node* %1913)
  %ttype4135 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4134, %union.tree_node** %ttype4135, align 8
  br label %sw.epilog

sw.bb.4136:                                       ; preds = %if.end.170
  %1914 = load i32, i32* @flag_isoc99, align 4
  %tobool4137 = icmp ne i32 %1914, 0
  br i1 %tobool4137, label %if.then.4138, label %if.end.4158

if.then.4138:                                     ; preds = %sw.bb.4136
  br label %do.body.4139

do.body.4139:                                     ; preds = %if.then.4138
  %1915 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4140 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1915, i64 -2
  %ttype4141 = bitcast %union.YYSTYPE* %arrayidx4140 to %union.tree_node**
  %1916 = load %union.tree_node*, %union.tree_node** %ttype4141, align 8
  %common4142 = bitcast %union.tree_node* %1916 to %struct.tree_common*
  %chain4143 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4142, i32 0, i32 0
  %1917 = load %union.tree_node*, %union.tree_node** %chain4143, align 8
  %1918 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4144 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1918, i64 -2
  %ttype4145 = bitcast %union.YYSTYPE* %arrayidx4144 to %union.tree_node**
  %1919 = load %union.tree_node*, %union.tree_node** %ttype4145, align 8
  %exp4146 = bitcast %union.tree_node* %1919 to %struct.tree_exp*
  %operands4147 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp4146, i32 0, i32 2
  %arrayidx4148 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4147, i32 0, i64 0
  store %union.tree_node* %1917, %union.tree_node** %arrayidx4148, align 8
  %1920 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4149 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1920, i64 -2
  %ttype4150 = bitcast %union.YYSTYPE* %arrayidx4149 to %union.tree_node**
  %1921 = load %union.tree_node*, %union.tree_node** %ttype4150, align 8
  %common4151 = bitcast %union.tree_node* %1921 to %struct.tree_common*
  %chain4152 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4151, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %chain4152, align 8
  %1922 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4153 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1922, i64 -2
  %ttype4154 = bitcast %union.YYSTYPE* %arrayidx4153 to %union.tree_node**
  %1923 = load %union.tree_node*, %union.tree_node** %ttype4154, align 8
  %call4155 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt4156 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call4155, i32 0, i32 0
  store %union.tree_node* %1923, %union.tree_node** %x_last_stmt4156, align 8
  br label %do.end.4157

do.end.4157:                                      ; preds = %do.body.4139
  br label %if.end.4158

if.end.4158:                                      ; preds = %do.end.4157, %sw.bb.4136
  %ttype4159 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype4159, align 8
  br label %sw.epilog

sw.bb.4160:                                       ; preds = %if.end.170
  %1924 = load i32, i32* @stmt_count, align 4
  %inc4161 = add nsw i32 %1924, 1
  store i32 %inc4161, i32* @stmt_count, align 4
  %call4162 = call %union.tree_node* @build_break_stmt()
  %call4163 = call %union.tree_node* @add_stmt(%union.tree_node* %call4162)
  %ttype4164 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4163, %union.tree_node** %ttype4164, align 8
  br label %sw.epilog

sw.bb.4165:                                       ; preds = %if.end.170
  %1925 = load i32, i32* @stmt_count, align 4
  %inc4166 = add nsw i32 %1925, 1
  store i32 %inc4166, i32* @stmt_count, align 4
  %call4167 = call %union.tree_node* @build_continue_stmt()
  %call4168 = call %union.tree_node* @add_stmt(%union.tree_node* %call4167)
  %ttype4169 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4168, %union.tree_node** %ttype4169, align 8
  br label %sw.epilog

sw.bb.4170:                                       ; preds = %if.end.170
  %1926 = load i32, i32* @stmt_count, align 4
  %inc4171 = add nsw i32 %1926, 1
  store i32 %inc4171, i32* @stmt_count, align 4
  %call4172 = call %union.tree_node* @c_expand_return(%union.tree_node* null)
  %ttype4173 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4172, %union.tree_node** %ttype4173, align 8
  br label %sw.epilog

sw.bb.4174:                                       ; preds = %if.end.170
  %1927 = load i32, i32* @stmt_count, align 4
  %inc4175 = add nsw i32 %1927, 1
  store i32 %inc4175, i32* @stmt_count, align 4
  %1928 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4176 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1928, i64 -1
  %ttype4177 = bitcast %union.YYSTYPE* %arrayidx4176 to %union.tree_node**
  %1929 = load %union.tree_node*, %union.tree_node** %ttype4177, align 8
  %call4178 = call %union.tree_node* @c_expand_return(%union.tree_node* %1929)
  %ttype4179 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4178, %union.tree_node** %ttype4179, align 8
  br label %sw.epilog

sw.bb.4180:                                       ; preds = %if.end.170
  %1930 = load i32, i32* @stmt_count, align 4
  %inc4181 = add nsw i32 %1930, 1
  store i32 %inc4181, i32* @stmt_count, align 4
  %1931 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4182 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1931, i64 -2
  %ttype4183 = bitcast %union.YYSTYPE* %arrayidx4182 to %union.tree_node**
  %1932 = load %union.tree_node*, %union.tree_node** %ttype4183, align 8
  %call4184 = call %union.tree_node* @simple_asm_stmt(%union.tree_node* %1932)
  %ttype4185 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4184, %union.tree_node** %ttype4185, align 8
  br label %sw.epilog

sw.bb.4186:                                       ; preds = %if.end.170
  %1933 = load i32, i32* @stmt_count, align 4
  %inc4187 = add nsw i32 %1933, 1
  store i32 %inc4187, i32* @stmt_count, align 4
  %1934 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4188 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1934, i64 -6
  %ttype4189 = bitcast %union.YYSTYPE* %arrayidx4188 to %union.tree_node**
  %1935 = load %union.tree_node*, %union.tree_node** %ttype4189, align 8
  %1936 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4190 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1936, i64 -4
  %ttype4191 = bitcast %union.YYSTYPE* %arrayidx4190 to %union.tree_node**
  %1937 = load %union.tree_node*, %union.tree_node** %ttype4191, align 8
  %1938 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4192 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1938, i64 -2
  %ttype4193 = bitcast %union.YYSTYPE* %arrayidx4192 to %union.tree_node**
  %1939 = load %union.tree_node*, %union.tree_node** %ttype4193, align 8
  %call4194 = call %union.tree_node* @build_asm_stmt(%union.tree_node* %1935, %union.tree_node* %1937, %union.tree_node* %1939, %union.tree_node* null, %union.tree_node* null)
  %ttype4195 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4194, %union.tree_node** %ttype4195, align 8
  br label %sw.epilog

sw.bb.4196:                                       ; preds = %if.end.170
  %1940 = load i32, i32* @stmt_count, align 4
  %inc4197 = add nsw i32 %1940, 1
  store i32 %inc4197, i32* @stmt_count, align 4
  %1941 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4198 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1941, i64 -8
  %ttype4199 = bitcast %union.YYSTYPE* %arrayidx4198 to %union.tree_node**
  %1942 = load %union.tree_node*, %union.tree_node** %ttype4199, align 8
  %1943 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4200 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1943, i64 -6
  %ttype4201 = bitcast %union.YYSTYPE* %arrayidx4200 to %union.tree_node**
  %1944 = load %union.tree_node*, %union.tree_node** %ttype4201, align 8
  %1945 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4202 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1945, i64 -4
  %ttype4203 = bitcast %union.YYSTYPE* %arrayidx4202 to %union.tree_node**
  %1946 = load %union.tree_node*, %union.tree_node** %ttype4203, align 8
  %1947 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4204 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1947, i64 -2
  %ttype4205 = bitcast %union.YYSTYPE* %arrayidx4204 to %union.tree_node**
  %1948 = load %union.tree_node*, %union.tree_node** %ttype4205, align 8
  %call4206 = call %union.tree_node* @build_asm_stmt(%union.tree_node* %1942, %union.tree_node* %1944, %union.tree_node* %1946, %union.tree_node* %1948, %union.tree_node* null)
  %ttype4207 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4206, %union.tree_node** %ttype4207, align 8
  br label %sw.epilog

sw.bb.4208:                                       ; preds = %if.end.170
  %1949 = load i32, i32* @stmt_count, align 4
  %inc4209 = add nsw i32 %1949, 1
  store i32 %inc4209, i32* @stmt_count, align 4
  %1950 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4210 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1950, i64 -10
  %ttype4211 = bitcast %union.YYSTYPE* %arrayidx4210 to %union.tree_node**
  %1951 = load %union.tree_node*, %union.tree_node** %ttype4211, align 8
  %1952 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4212 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1952, i64 -8
  %ttype4213 = bitcast %union.YYSTYPE* %arrayidx4212 to %union.tree_node**
  %1953 = load %union.tree_node*, %union.tree_node** %ttype4213, align 8
  %1954 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4214 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1954, i64 -6
  %ttype4215 = bitcast %union.YYSTYPE* %arrayidx4214 to %union.tree_node**
  %1955 = load %union.tree_node*, %union.tree_node** %ttype4215, align 8
  %1956 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4216 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1956, i64 -4
  %ttype4217 = bitcast %union.YYSTYPE* %arrayidx4216 to %union.tree_node**
  %1957 = load %union.tree_node*, %union.tree_node** %ttype4217, align 8
  %1958 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4218 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1958, i64 -2
  %ttype4219 = bitcast %union.YYSTYPE* %arrayidx4218 to %union.tree_node**
  %1959 = load %union.tree_node*, %union.tree_node** %ttype4219, align 8
  %call4220 = call %union.tree_node* @build_asm_stmt(%union.tree_node* %1951, %union.tree_node* %1953, %union.tree_node* %1955, %union.tree_node* %1957, %union.tree_node* %1959)
  %ttype4221 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4220, %union.tree_node** %ttype4221, align 8
  br label %sw.epilog

sw.bb.4222:                                       ; preds = %if.end.170
  %1960 = load i32, i32* @stmt_count, align 4
  %inc4224 = add nsw i32 %1960, 1
  store i32 %inc4224, i32* @stmt_count, align 4
  %1961 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4225 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1961, i64 -1
  %ttype4226 = bitcast %union.YYSTYPE* %arrayidx4225 to %union.tree_node**
  %1962 = load %union.tree_node*, %union.tree_node** %ttype4226, align 8
  %call4227 = call %union.tree_node* @lookup_label(%union.tree_node* %1962)
  store %union.tree_node* %call4227, %union.tree_node** %decl4223, align 8
  %1963 = load %union.tree_node*, %union.tree_node** %decl4223, align 8
  %cmp4228 = icmp ne %union.tree_node* %1963, null
  br i1 %cmp4228, label %if.then.4230, label %if.else.4238

if.then.4230:                                     ; preds = %sw.bb.4222
  %1964 = load %union.tree_node*, %union.tree_node** %decl4223, align 8
  %common4231 = bitcast %union.tree_node* %1964 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4231, i32 0, i32 2
  %bf.load4232 = load i32, i32* %used_flag, align 8
  %bf.clear4233 = and i32 %bf.load4232, -65537
  %bf.set4234 = or i32 %bf.clear4233, 65536
  store i32 %bf.set4234, i32* %used_flag, align 8
  %1965 = load %union.tree_node*, %union.tree_node** %decl4223, align 8
  %call4235 = call %union.tree_node* (i32, ...) @build_stmt(i32 163, %union.tree_node* %1965)
  %call4236 = call %union.tree_node* @add_stmt(%union.tree_node* %call4235)
  %ttype4237 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4236, %union.tree_node** %ttype4237, align 8
  br label %if.end.4240

if.else.4238:                                     ; preds = %sw.bb.4222
  %ttype4239 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype4239, align 8
  br label %if.end.4240

if.end.4240:                                      ; preds = %if.else.4238, %if.then.4230
  br label %sw.epilog

sw.bb.4241:                                       ; preds = %if.end.170
  %1966 = load i32, i32* @pedantic, align 4
  %tobool4242 = icmp ne i32 %1966, 0
  br i1 %tobool4242, label %if.then.4243, label %if.end.4244

if.then.4243:                                     ; preds = %sw.bb.4241
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.4244

if.end.4244:                                      ; preds = %if.then.4243, %sw.bb.4241
  %1967 = load i32, i32* @stmt_count, align 4
  %inc4245 = add nsw i32 %1967, 1
  store i32 %inc4245, i32* @stmt_count, align 4
  %1968 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 28), align 8
  %1969 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4246 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1969, i64 -1
  %ttype4247 = bitcast %union.YYSTYPE* %arrayidx4246 to %union.tree_node**
  %1970 = load %union.tree_node*, %union.tree_node** %ttype4247, align 8
  %call4248 = call %union.tree_node* @convert(%union.tree_node* %1968, %union.tree_node* %1970)
  %1971 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4249 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1971, i64 -1
  %ttype4250 = bitcast %union.YYSTYPE* %arrayidx4249 to %union.tree_node**
  store %union.tree_node* %call4248, %union.tree_node** %ttype4250, align 8
  %1972 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4251 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1972, i64 -1
  %ttype4252 = bitcast %union.YYSTYPE* %arrayidx4251 to %union.tree_node**
  %1973 = load %union.tree_node*, %union.tree_node** %ttype4252, align 8
  %call4253 = call %union.tree_node* (i32, ...) @build_stmt(i32 163, %union.tree_node* %1973)
  %call4254 = call %union.tree_node* @add_stmt(%union.tree_node* %call4253)
  %ttype4255 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4254, %union.tree_node** %ttype4255, align 8
  br label %sw.epilog

sw.bb.4256:                                       ; preds = %if.end.170
  %ttype4257 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype4257, align 8
  br label %sw.epilog

sw.bb.4258:                                       ; preds = %if.end.170
  %1974 = load i32, i32* @stmt_count, align 4
  %inc4259 = add nsw i32 %1974, 1
  store i32 %inc4259, i32* @stmt_count, align 4
  %1975 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4260 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1975, i64 -1
  %ttype4261 = bitcast %union.YYSTYPE* %arrayidx4260 to %union.tree_node**
  %1976 = load %union.tree_node*, %union.tree_node** %ttype4261, align 8
  %call4262 = call %union.tree_node* @do_case(%union.tree_node* %1976, %union.tree_node* null)
  %ttype4263 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4262, %union.tree_node** %ttype4263, align 8
  br label %sw.epilog

sw.bb.4264:                                       ; preds = %if.end.170
  %1977 = load i32, i32* @stmt_count, align 4
  %inc4265 = add nsw i32 %1977, 1
  store i32 %inc4265, i32* @stmt_count, align 4
  %1978 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4266 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1978, i64 -3
  %ttype4267 = bitcast %union.YYSTYPE* %arrayidx4266 to %union.tree_node**
  %1979 = load %union.tree_node*, %union.tree_node** %ttype4267, align 8
  %1980 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4268 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1980, i64 -1
  %ttype4269 = bitcast %union.YYSTYPE* %arrayidx4268 to %union.tree_node**
  %1981 = load %union.tree_node*, %union.tree_node** %ttype4269, align 8
  %call4270 = call %union.tree_node* @do_case(%union.tree_node* %1979, %union.tree_node* %1981)
  %ttype4271 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4270, %union.tree_node** %ttype4271, align 8
  br label %sw.epilog

sw.bb.4272:                                       ; preds = %if.end.170
  %1982 = load i32, i32* @stmt_count, align 4
  %inc4273 = add nsw i32 %1982, 1
  store i32 %inc4273, i32* @stmt_count, align 4
  %call4274 = call %union.tree_node* @do_case(%union.tree_node* null, %union.tree_node* null)
  %ttype4275 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4274, %union.tree_node** %ttype4275, align 8
  br label %sw.epilog

sw.bb.4276:                                       ; preds = %if.end.170
  %1983 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4278 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1983, i64 -3
  %filename4279 = bitcast %union.YYSTYPE* %arrayidx4278 to i8**
  %1984 = load i8*, i8** %filename4279, align 8
  %1985 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4280 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1985, i64 -2
  %lineno4281 = bitcast %union.YYSTYPE* %arrayidx4280 to i32*
  %1986 = load i32, i32* %lineno4281, align 4
  %1987 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4282 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1987, i64 -4
  %ttype4283 = bitcast %union.YYSTYPE* %arrayidx4282 to %union.tree_node**
  %1988 = load %union.tree_node*, %union.tree_node** %ttype4283, align 8
  %call4284 = call %union.tree_node* @define_label(i8* %1984, i32 %1986, %union.tree_node* %1988)
  store %union.tree_node* %call4284, %union.tree_node** %label4277, align 8
  %1989 = load i32, i32* @stmt_count, align 4
  %inc4285 = add nsw i32 %1989, 1
  store i32 %inc4285, i32* @stmt_count, align 4
  %1990 = load %union.tree_node*, %union.tree_node** %label4277, align 8
  %tobool4286 = icmp ne %union.tree_node* %1990, null
  br i1 %tobool4286, label %if.then.4287, label %if.else.4294

if.then.4287:                                     ; preds = %sw.bb.4276
  %1991 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4288 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1991, i64 0
  %ttype4289 = bitcast %union.YYSTYPE* %arrayidx4288 to %union.tree_node**
  %1992 = load %union.tree_node*, %union.tree_node** %ttype4289, align 8
  %call4290 = call %union.tree_node* @decl_attributes(%union.tree_node** %label4277, %union.tree_node* %1992, i32 0)
  %1993 = load %union.tree_node*, %union.tree_node** %label4277, align 8
  %call4291 = call %union.tree_node* (i32, ...) @build_stmt(i32 164, %union.tree_node* %1993)
  %call4292 = call %union.tree_node* @add_stmt(%union.tree_node* %call4291)
  %ttype4293 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4292, %union.tree_node** %ttype4293, align 8
  br label %if.end.4296

if.else.4294:                                     ; preds = %sw.bb.4276
  %ttype4295 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype4295, align 8
  br label %if.end.4296

if.end.4296:                                      ; preds = %if.else.4294, %if.then.4287
  br label %sw.epilog

sw.bb.4297:                                       ; preds = %if.end.170
  %1994 = load i8*, i8** @input_filename, align 8
  %1995 = load i32, i32* @lineno, align 4
  %call4298 = call %struct.rtx_def* @emit_line_note(i8* %1994, i32 %1995)
  %ttype4299 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype4299, align 8
  br label %sw.epilog

sw.bb.4300:                                       ; preds = %if.end.170
  %1996 = load i8*, i8** @input_filename, align 8
  %1997 = load i32, i32* @lineno, align 4
  %call4301 = call %struct.rtx_def* @emit_line_note(i8* %1996, i32 %1997)
  br label %sw.epilog

sw.bb.4302:                                       ; preds = %if.end.170
  %ttype4303 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype4303, align 8
  br label %sw.epilog

sw.bb.4304:                                       ; preds = %if.end.170
  %ttype4305 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* null, %union.tree_node** %ttype4305, align 8
  br label %sw.epilog

sw.bb.4306:                                       ; preds = %if.end.170
  %1998 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4307 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %1998, i64 -2
  %ttype4308 = bitcast %union.YYSTYPE* %arrayidx4307 to %union.tree_node**
  %1999 = load %union.tree_node*, %union.tree_node** %ttype4308, align 8
  %2000 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4309 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2000, i64 0
  %ttype4310 = bitcast %union.YYSTYPE* %arrayidx4309 to %union.tree_node**
  %2001 = load %union.tree_node*, %union.tree_node** %ttype4310, align 8
  %call4311 = call %union.tree_node* @chainon(%union.tree_node* %1999, %union.tree_node* %2001)
  %ttype4312 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4311, %union.tree_node** %ttype4312, align 8
  br label %sw.epilog

sw.bb.4313:                                       ; preds = %if.end.170
  %2002 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4314 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2002, i64 -3
  %ttype4315 = bitcast %union.YYSTYPE* %arrayidx4314 to %union.tree_node**
  %2003 = load %union.tree_node*, %union.tree_node** %ttype4315, align 8
  %call4316 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %2003)
  %2004 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4317 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2004, i64 -1
  %ttype4318 = bitcast %union.YYSTYPE* %arrayidx4317 to %union.tree_node**
  %2005 = load %union.tree_node*, %union.tree_node** %ttype4318, align 8
  %call4319 = call %union.tree_node* @build_tree_list(%union.tree_node* %call4316, %union.tree_node* %2005)
  %ttype4320 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4319, %union.tree_node** %ttype4320, align 8
  br label %sw.epilog

sw.bb.4321:                                       ; preds = %if.end.170
  %2006 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4322 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2006, i64 -5
  %ttype4323 = bitcast %union.YYSTYPE* %arrayidx4322 to %union.tree_node**
  %2007 = load %union.tree_node*, %union.tree_node** %ttype4323, align 8
  %2008 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4324 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2008, i64 -3
  %ttype4325 = bitcast %union.YYSTYPE* %arrayidx4324 to %union.tree_node**
  %2009 = load %union.tree_node*, %union.tree_node** %ttype4325, align 8
  %call4326 = call %union.tree_node* @build_tree_list(%union.tree_node* %2007, %union.tree_node* %2009)
  %2010 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4327 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2010, i64 -1
  %ttype4328 = bitcast %union.YYSTYPE* %arrayidx4327 to %union.tree_node**
  %2011 = load %union.tree_node*, %union.tree_node** %ttype4328, align 8
  %call4329 = call %union.tree_node* @build_tree_list(%union.tree_node* %call4326, %union.tree_node* %2011)
  %ttype4330 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4329, %union.tree_node** %ttype4330, align 8
  br label %sw.epilog

sw.bb.4331:                                       ; preds = %if.end.170
  %2012 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4332 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2012, i64 0
  %ttype4333 = bitcast %union.YYSTYPE* %arrayidx4332 to %union.tree_node**
  %2013 = load %union.tree_node*, %union.tree_node** %ttype4333, align 8
  %call4334 = call %union.tree_node* @combine_strings(%union.tree_node* %2013)
  %call4335 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %call4334, %union.tree_node* null)
  %ttype4336 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4335, %union.tree_node** %ttype4336, align 8
  br label %sw.epilog

sw.bb.4337:                                       ; preds = %if.end.170
  %2014 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4338 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2014, i64 0
  %ttype4339 = bitcast %union.YYSTYPE* %arrayidx4338 to %union.tree_node**
  %2015 = load %union.tree_node*, %union.tree_node** %ttype4339, align 8
  %call4340 = call %union.tree_node* @combine_strings(%union.tree_node* %2015)
  %2016 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4341 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2016, i64 -2
  %ttype4342 = bitcast %union.YYSTYPE* %arrayidx4341 to %union.tree_node**
  %2017 = load %union.tree_node*, %union.tree_node** %ttype4342, align 8
  %call4343 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %call4340, %union.tree_node* %2017)
  %ttype4344 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4343, %union.tree_node** %ttype4344, align 8
  br label %sw.epilog

sw.bb.4345:                                       ; preds = %if.end.170
  call void @pushlevel(i32 0)
  call void @clear_parm_order()
  call void @declare_parm_level(i32 0)
  br label %sw.epilog

sw.bb.4346:                                       ; preds = %if.end.170
  %2018 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4347 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2018, i64 0
  %ttype4348 = bitcast %union.YYSTYPE* %arrayidx4347 to %union.tree_node**
  %2019 = load %union.tree_node*, %union.tree_node** %ttype4348, align 8
  %ttype4349 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %2019, %union.tree_node** %ttype4349, align 8
  call void @parmlist_tags_warning()
  %call4350 = call %union.tree_node* @poplevel(i32 0, i32 0, i32 0)
  br label %sw.epilog

sw.bb.4351:                                       ; preds = %if.end.170
  %2020 = load i32, i32* @pedantic, align 4
  %tobool4352 = icmp ne i32 %2020, 0
  br i1 %tobool4352, label %if.then.4353, label %if.end.4354

if.then.4353:                                     ; preds = %sw.bb.4351
  call void (i8*, ...) @pedwarn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end.4354

if.end.4354:                                      ; preds = %if.then.4353, %sw.bb.4351
  %call4355 = call %union.tree_node* @getdecls()
  store %union.tree_node* %call4355, %union.tree_node** %parm, align 8
  br label %for.cond.4356

for.cond.4356:                                    ; preds = %for.inc.4363, %if.end.4354
  %2021 = load %union.tree_node*, %union.tree_node** %parm, align 8
  %tobool4357 = icmp ne %union.tree_node* %2021, null
  br i1 %tobool4357, label %for.body.4358, label %for.end.4366

for.body.4358:                                    ; preds = %for.cond.4356
  %2022 = load %union.tree_node*, %union.tree_node** %parm, align 8
  %common4359 = bitcast %union.tree_node* %2022 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4359, i32 0, i32 2
  %bf.load4360 = load i32, i32* %asm_written_flag, align 8
  %bf.clear4361 = and i32 %bf.load4360, -16385
  %bf.set4362 = or i32 %bf.clear4361, 16384
  store i32 %bf.set4362, i32* %asm_written_flag, align 8
  br label %for.inc.4363

for.inc.4363:                                     ; preds = %for.body.4358
  %2023 = load %union.tree_node*, %union.tree_node** %parm, align 8
  %common4364 = bitcast %union.tree_node* %2023 to %struct.tree_common*
  %chain4365 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4364, i32 0, i32 0
  %2024 = load %union.tree_node*, %union.tree_node** %chain4365, align 8
  store %union.tree_node* %2024, %union.tree_node** %parm, align 8
  br label %for.cond.4356

for.end.4366:                                     ; preds = %for.cond.4356
  call void @clear_parm_order()
  br label %sw.epilog

sw.bb.4367:                                       ; preds = %if.end.170
  br label %sw.epilog

sw.bb.4368:                                       ; preds = %if.end.170
  %2025 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4369 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2025, i64 0
  %ttype4370 = bitcast %union.YYSTYPE* %arrayidx4369 to %union.tree_node**
  %2026 = load %union.tree_node*, %union.tree_node** %ttype4370, align 8
  %ttype4371 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %2026, %union.tree_node** %ttype4371, align 8
  br label %sw.epilog

sw.bb.4372:                                       ; preds = %if.end.170
  %call4373 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* null, %union.tree_node* null)
  %ttype4374 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4373, %union.tree_node** %ttype4374, align 8
  br label %sw.epilog

sw.bb.4375:                                       ; preds = %if.end.170
  %call4376 = call %union.tree_node* @get_parm_info(i32 0)
  %ttype4377 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4376, %union.tree_node** %ttype4377, align 8
  br label %sw.epilog

sw.bb.4378:                                       ; preds = %if.end.170
  %call4379 = call %union.tree_node* @get_parm_info(i32 0)
  %ttype4380 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4379, %union.tree_node** %ttype4380, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.51, i32 0, i32 0))
  br label %sw.epilog

sw.bb.4381:                                       ; preds = %if.end.170
  %call4382 = call %union.tree_node* @get_parm_info(i32 1)
  %ttype4383 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4382, %union.tree_node** %ttype4383, align 8
  br label %sw.epilog

sw.bb.4384:                                       ; preds = %if.end.170
  %call4385 = call %union.tree_node* @get_parm_info(i32 0)
  %ttype4386 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4385, %union.tree_node** %ttype4386, align 8
  br label %sw.epilog

sw.bb.4387:                                       ; preds = %if.end.170
  %2027 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4388 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2027, i64 0
  %ttype4389 = bitcast %union.YYSTYPE* %arrayidx4388 to %union.tree_node**
  %2028 = load %union.tree_node*, %union.tree_node** %ttype4389, align 8
  call void @push_parm_decl(%union.tree_node* %2028)
  br label %sw.epilog

sw.bb.4390:                                       ; preds = %if.end.170
  %2029 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4391 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2029, i64 0
  %ttype4392 = bitcast %union.YYSTYPE* %arrayidx4391 to %union.tree_node**
  %2030 = load %union.tree_node*, %union.tree_node** %ttype4392, align 8
  call void @push_parm_decl(%union.tree_node* %2030)
  br label %sw.epilog

sw.bb.4393:                                       ; preds = %if.end.170
  %2031 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %2032 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4394 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2032, i64 -1
  %ttype4395 = bitcast %union.YYSTYPE* %arrayidx4394 to %union.tree_node**
  %2033 = load %union.tree_node*, %union.tree_node** %ttype4395, align 8
  %call4396 = call %union.tree_node* @build_tree_list(%union.tree_node* %2031, %union.tree_node* %2033)
  %2034 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4397 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2034, i64 0
  %ttype4398 = bitcast %union.YYSTYPE* %arrayidx4397 to %union.tree_node**
  %2035 = load %union.tree_node*, %union.tree_node** %ttype4398, align 8
  %2036 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call4399 = call %union.tree_node* @chainon(%union.tree_node* %2035, %union.tree_node* %2036)
  %call4400 = call %union.tree_node* @build_tree_list(%union.tree_node* %call4396, %union.tree_node* %call4399)
  %ttype4401 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4400, %union.tree_node** %ttype4401, align 8
  br label %do.body.4402

do.body.4402:                                     ; preds = %sw.bb.4393
  %2037 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4403 = bitcast %union.tree_node* %2037 to %struct.tree_list*
  %value4404 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4403, i32 0, i32 2
  %2038 = load %union.tree_node*, %union.tree_node** %value4404, align 8
  store %union.tree_node* %2038, %union.tree_node** @current_declspecs, align 8
  %2039 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4405 = bitcast %union.tree_node* %2039 to %struct.tree_list*
  %purpose4406 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4405, i32 0, i32 1
  %2040 = load %union.tree_node*, %union.tree_node** %purpose4406, align 8
  %list4407 = bitcast %union.tree_node* %2040 to %struct.tree_list*
  %purpose4408 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4407, i32 0, i32 1
  %2041 = load %union.tree_node*, %union.tree_node** %purpose4408, align 8
  store %union.tree_node* %2041, %union.tree_node** @prefix_attributes, align 8
  %2042 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4409 = bitcast %union.tree_node* %2042 to %struct.tree_list*
  %purpose4410 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4409, i32 0, i32 1
  %2043 = load %union.tree_node*, %union.tree_node** %purpose4410, align 8
  %list4411 = bitcast %union.tree_node* %2043 to %struct.tree_list*
  %value4412 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4411, i32 0, i32 2
  %2044 = load %union.tree_node*, %union.tree_node** %value4412, align 8
  store %union.tree_node* %2044, %union.tree_node** @all_prefix_attributes, align 8
  %2045 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common4413 = bitcast %union.tree_node* %2045 to %struct.tree_common*
  %chain4414 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4413, i32 0, i32 0
  %2046 = load %union.tree_node*, %union.tree_node** %chain4414, align 8
  store %union.tree_node* %2046, %union.tree_node** @declspec_stack, align 8
  br label %do.end.4415

do.end.4415:                                      ; preds = %do.body.4402
  br label %sw.epilog

sw.bb.4416:                                       ; preds = %if.end.170
  %2047 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %2048 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4417 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2048, i64 -1
  %ttype4418 = bitcast %union.YYSTYPE* %arrayidx4417 to %union.tree_node**
  %2049 = load %union.tree_node*, %union.tree_node** %ttype4418, align 8
  %call4419 = call %union.tree_node* @build_tree_list(%union.tree_node* %2047, %union.tree_node* %2049)
  %2050 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4420 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2050, i64 0
  %ttype4421 = bitcast %union.YYSTYPE* %arrayidx4420 to %union.tree_node**
  %2051 = load %union.tree_node*, %union.tree_node** %ttype4421, align 8
  %2052 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call4422 = call %union.tree_node* @chainon(%union.tree_node* %2051, %union.tree_node* %2052)
  %call4423 = call %union.tree_node* @build_tree_list(%union.tree_node* %call4419, %union.tree_node* %call4422)
  %ttype4424 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4423, %union.tree_node** %ttype4424, align 8
  br label %do.body.4425

do.body.4425:                                     ; preds = %sw.bb.4416
  %2053 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4426 = bitcast %union.tree_node* %2053 to %struct.tree_list*
  %value4427 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4426, i32 0, i32 2
  %2054 = load %union.tree_node*, %union.tree_node** %value4427, align 8
  store %union.tree_node* %2054, %union.tree_node** @current_declspecs, align 8
  %2055 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4428 = bitcast %union.tree_node* %2055 to %struct.tree_list*
  %purpose4429 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4428, i32 0, i32 1
  %2056 = load %union.tree_node*, %union.tree_node** %purpose4429, align 8
  %list4430 = bitcast %union.tree_node* %2056 to %struct.tree_list*
  %purpose4431 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4430, i32 0, i32 1
  %2057 = load %union.tree_node*, %union.tree_node** %purpose4431, align 8
  store %union.tree_node* %2057, %union.tree_node** @prefix_attributes, align 8
  %2058 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4432 = bitcast %union.tree_node* %2058 to %struct.tree_list*
  %purpose4433 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4432, i32 0, i32 1
  %2059 = load %union.tree_node*, %union.tree_node** %purpose4433, align 8
  %list4434 = bitcast %union.tree_node* %2059 to %struct.tree_list*
  %value4435 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4434, i32 0, i32 2
  %2060 = load %union.tree_node*, %union.tree_node** %value4435, align 8
  store %union.tree_node* %2060, %union.tree_node** @all_prefix_attributes, align 8
  %2061 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common4436 = bitcast %union.tree_node* %2061 to %struct.tree_common*
  %chain4437 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4436, i32 0, i32 0
  %2062 = load %union.tree_node*, %union.tree_node** %chain4437, align 8
  store %union.tree_node* %2062, %union.tree_node** @declspec_stack, align 8
  br label %do.end.4438

do.end.4438:                                      ; preds = %do.body.4425
  br label %sw.epilog

sw.bb.4439:                                       ; preds = %if.end.170
  %2063 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4440 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2063, i64 0
  %ttype4441 = bitcast %union.YYSTYPE* %arrayidx4440 to %union.tree_node**
  %2064 = load %union.tree_node*, %union.tree_node** %ttype4441, align 8
  %ttype4442 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %2064, %union.tree_node** %ttype4442, align 8
  br label %do.body.4443

do.body.4443:                                     ; preds = %sw.bb.4439
  %2065 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4444 = bitcast %union.tree_node* %2065 to %struct.tree_list*
  %value4445 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4444, i32 0, i32 2
  %2066 = load %union.tree_node*, %union.tree_node** %value4445, align 8
  store %union.tree_node* %2066, %union.tree_node** @current_declspecs, align 8
  %2067 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4446 = bitcast %union.tree_node* %2067 to %struct.tree_list*
  %purpose4447 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4446, i32 0, i32 1
  %2068 = load %union.tree_node*, %union.tree_node** %purpose4447, align 8
  %list4448 = bitcast %union.tree_node* %2068 to %struct.tree_list*
  %purpose4449 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4448, i32 0, i32 1
  %2069 = load %union.tree_node*, %union.tree_node** %purpose4449, align 8
  store %union.tree_node* %2069, %union.tree_node** @prefix_attributes, align 8
  %2070 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4450 = bitcast %union.tree_node* %2070 to %struct.tree_list*
  %purpose4451 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4450, i32 0, i32 1
  %2071 = load %union.tree_node*, %union.tree_node** %purpose4451, align 8
  %list4452 = bitcast %union.tree_node* %2071 to %struct.tree_list*
  %value4453 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4452, i32 0, i32 2
  %2072 = load %union.tree_node*, %union.tree_node** %value4453, align 8
  store %union.tree_node* %2072, %union.tree_node** @all_prefix_attributes, align 8
  %2073 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common4454 = bitcast %union.tree_node* %2073 to %struct.tree_common*
  %chain4455 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4454, i32 0, i32 0
  %2074 = load %union.tree_node*, %union.tree_node** %chain4455, align 8
  store %union.tree_node* %2074, %union.tree_node** @declspec_stack, align 8
  br label %do.end.4456

do.end.4456:                                      ; preds = %do.body.4443
  br label %sw.epilog

sw.bb.4457:                                       ; preds = %if.end.170
  %2075 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %2076 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4458 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2076, i64 -1
  %ttype4459 = bitcast %union.YYSTYPE* %arrayidx4458 to %union.tree_node**
  %2077 = load %union.tree_node*, %union.tree_node** %ttype4459, align 8
  %call4460 = call %union.tree_node* @build_tree_list(%union.tree_node* %2075, %union.tree_node* %2077)
  %2078 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4461 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2078, i64 0
  %ttype4462 = bitcast %union.YYSTYPE* %arrayidx4461 to %union.tree_node**
  %2079 = load %union.tree_node*, %union.tree_node** %ttype4462, align 8
  %2080 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call4463 = call %union.tree_node* @chainon(%union.tree_node* %2079, %union.tree_node* %2080)
  %call4464 = call %union.tree_node* @build_tree_list(%union.tree_node* %call4460, %union.tree_node* %call4463)
  %ttype4465 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4464, %union.tree_node** %ttype4465, align 8
  br label %do.body.4466

do.body.4466:                                     ; preds = %sw.bb.4457
  %2081 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4467 = bitcast %union.tree_node* %2081 to %struct.tree_list*
  %value4468 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4467, i32 0, i32 2
  %2082 = load %union.tree_node*, %union.tree_node** %value4468, align 8
  store %union.tree_node* %2082, %union.tree_node** @current_declspecs, align 8
  %2083 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4469 = bitcast %union.tree_node* %2083 to %struct.tree_list*
  %purpose4470 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4469, i32 0, i32 1
  %2084 = load %union.tree_node*, %union.tree_node** %purpose4470, align 8
  %list4471 = bitcast %union.tree_node* %2084 to %struct.tree_list*
  %purpose4472 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4471, i32 0, i32 1
  %2085 = load %union.tree_node*, %union.tree_node** %purpose4472, align 8
  store %union.tree_node* %2085, %union.tree_node** @prefix_attributes, align 8
  %2086 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4473 = bitcast %union.tree_node* %2086 to %struct.tree_list*
  %purpose4474 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4473, i32 0, i32 1
  %2087 = load %union.tree_node*, %union.tree_node** %purpose4474, align 8
  %list4475 = bitcast %union.tree_node* %2087 to %struct.tree_list*
  %value4476 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4475, i32 0, i32 2
  %2088 = load %union.tree_node*, %union.tree_node** %value4476, align 8
  store %union.tree_node* %2088, %union.tree_node** @all_prefix_attributes, align 8
  %2089 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common4477 = bitcast %union.tree_node* %2089 to %struct.tree_common*
  %chain4478 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4477, i32 0, i32 0
  %2090 = load %union.tree_node*, %union.tree_node** %chain4478, align 8
  store %union.tree_node* %2090, %union.tree_node** @declspec_stack, align 8
  br label %do.end.4479

do.end.4479:                                      ; preds = %do.body.4466
  br label %sw.epilog

sw.bb.4480:                                       ; preds = %if.end.170
  %2091 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4481 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2091, i64 0
  %ttype4482 = bitcast %union.YYSTYPE* %arrayidx4481 to %union.tree_node**
  %2092 = load %union.tree_node*, %union.tree_node** %ttype4482, align 8
  %ttype4483 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %2092, %union.tree_node** %ttype4483, align 8
  br label %do.body.4484

do.body.4484:                                     ; preds = %sw.bb.4480
  %2093 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4485 = bitcast %union.tree_node* %2093 to %struct.tree_list*
  %value4486 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4485, i32 0, i32 2
  %2094 = load %union.tree_node*, %union.tree_node** %value4486, align 8
  store %union.tree_node* %2094, %union.tree_node** @current_declspecs, align 8
  %2095 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4487 = bitcast %union.tree_node* %2095 to %struct.tree_list*
  %purpose4488 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4487, i32 0, i32 1
  %2096 = load %union.tree_node*, %union.tree_node** %purpose4488, align 8
  %list4489 = bitcast %union.tree_node* %2096 to %struct.tree_list*
  %purpose4490 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4489, i32 0, i32 1
  %2097 = load %union.tree_node*, %union.tree_node** %purpose4490, align 8
  store %union.tree_node* %2097, %union.tree_node** @prefix_attributes, align 8
  %2098 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4491 = bitcast %union.tree_node* %2098 to %struct.tree_list*
  %purpose4492 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4491, i32 0, i32 1
  %2099 = load %union.tree_node*, %union.tree_node** %purpose4492, align 8
  %list4493 = bitcast %union.tree_node* %2099 to %struct.tree_list*
  %value4494 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4493, i32 0, i32 2
  %2100 = load %union.tree_node*, %union.tree_node** %value4494, align 8
  store %union.tree_node* %2100, %union.tree_node** @all_prefix_attributes, align 8
  %2101 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common4495 = bitcast %union.tree_node* %2101 to %struct.tree_common*
  %chain4496 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4495, i32 0, i32 0
  %2102 = load %union.tree_node*, %union.tree_node** %chain4496, align 8
  store %union.tree_node* %2102, %union.tree_node** @declspec_stack, align 8
  br label %do.end.4497

do.end.4497:                                      ; preds = %do.body.4484
  br label %sw.epilog

sw.bb.4498:                                       ; preds = %if.end.170
  %2103 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %2104 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4499 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2104, i64 -1
  %ttype4500 = bitcast %union.YYSTYPE* %arrayidx4499 to %union.tree_node**
  %2105 = load %union.tree_node*, %union.tree_node** %ttype4500, align 8
  %call4501 = call %union.tree_node* @build_tree_list(%union.tree_node* %2103, %union.tree_node* %2105)
  %2106 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4502 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2106, i64 0
  %ttype4503 = bitcast %union.YYSTYPE* %arrayidx4502 to %union.tree_node**
  %2107 = load %union.tree_node*, %union.tree_node** %ttype4503, align 8
  %2108 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call4504 = call %union.tree_node* @chainon(%union.tree_node* %2107, %union.tree_node* %2108)
  %call4505 = call %union.tree_node* @build_tree_list(%union.tree_node* %call4501, %union.tree_node* %call4504)
  %ttype4506 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4505, %union.tree_node** %ttype4506, align 8
  br label %do.body.4507

do.body.4507:                                     ; preds = %sw.bb.4498
  %2109 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4508 = bitcast %union.tree_node* %2109 to %struct.tree_list*
  %value4509 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4508, i32 0, i32 2
  %2110 = load %union.tree_node*, %union.tree_node** %value4509, align 8
  store %union.tree_node* %2110, %union.tree_node** @current_declspecs, align 8
  %2111 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4510 = bitcast %union.tree_node* %2111 to %struct.tree_list*
  %purpose4511 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4510, i32 0, i32 1
  %2112 = load %union.tree_node*, %union.tree_node** %purpose4511, align 8
  %list4512 = bitcast %union.tree_node* %2112 to %struct.tree_list*
  %purpose4513 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4512, i32 0, i32 1
  %2113 = load %union.tree_node*, %union.tree_node** %purpose4513, align 8
  store %union.tree_node* %2113, %union.tree_node** @prefix_attributes, align 8
  %2114 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4514 = bitcast %union.tree_node* %2114 to %struct.tree_list*
  %purpose4515 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4514, i32 0, i32 1
  %2115 = load %union.tree_node*, %union.tree_node** %purpose4515, align 8
  %list4516 = bitcast %union.tree_node* %2115 to %struct.tree_list*
  %value4517 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4516, i32 0, i32 2
  %2116 = load %union.tree_node*, %union.tree_node** %value4517, align 8
  store %union.tree_node* %2116, %union.tree_node** @all_prefix_attributes, align 8
  %2117 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common4518 = bitcast %union.tree_node* %2117 to %struct.tree_common*
  %chain4519 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4518, i32 0, i32 0
  %2118 = load %union.tree_node*, %union.tree_node** %chain4519, align 8
  store %union.tree_node* %2118, %union.tree_node** @declspec_stack, align 8
  br label %do.end.4520

do.end.4520:                                      ; preds = %do.body.4507
  br label %sw.epilog

sw.bb.4521:                                       ; preds = %if.end.170
  %2119 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %2120 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4522 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2120, i64 -1
  %ttype4523 = bitcast %union.YYSTYPE* %arrayidx4522 to %union.tree_node**
  %2121 = load %union.tree_node*, %union.tree_node** %ttype4523, align 8
  %call4524 = call %union.tree_node* @build_tree_list(%union.tree_node* %2119, %union.tree_node* %2121)
  %2122 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4525 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2122, i64 0
  %ttype4526 = bitcast %union.YYSTYPE* %arrayidx4525 to %union.tree_node**
  %2123 = load %union.tree_node*, %union.tree_node** %ttype4526, align 8
  %2124 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call4527 = call %union.tree_node* @chainon(%union.tree_node* %2123, %union.tree_node* %2124)
  %call4528 = call %union.tree_node* @build_tree_list(%union.tree_node* %call4524, %union.tree_node* %call4527)
  %ttype4529 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4528, %union.tree_node** %ttype4529, align 8
  br label %do.body.4530

do.body.4530:                                     ; preds = %sw.bb.4521
  %2125 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4531 = bitcast %union.tree_node* %2125 to %struct.tree_list*
  %value4532 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4531, i32 0, i32 2
  %2126 = load %union.tree_node*, %union.tree_node** %value4532, align 8
  store %union.tree_node* %2126, %union.tree_node** @current_declspecs, align 8
  %2127 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4533 = bitcast %union.tree_node* %2127 to %struct.tree_list*
  %purpose4534 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4533, i32 0, i32 1
  %2128 = load %union.tree_node*, %union.tree_node** %purpose4534, align 8
  %list4535 = bitcast %union.tree_node* %2128 to %struct.tree_list*
  %purpose4536 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4535, i32 0, i32 1
  %2129 = load %union.tree_node*, %union.tree_node** %purpose4536, align 8
  store %union.tree_node* %2129, %union.tree_node** @prefix_attributes, align 8
  %2130 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4537 = bitcast %union.tree_node* %2130 to %struct.tree_list*
  %purpose4538 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4537, i32 0, i32 1
  %2131 = load %union.tree_node*, %union.tree_node** %purpose4538, align 8
  %list4539 = bitcast %union.tree_node* %2131 to %struct.tree_list*
  %value4540 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4539, i32 0, i32 2
  %2132 = load %union.tree_node*, %union.tree_node** %value4540, align 8
  store %union.tree_node* %2132, %union.tree_node** @all_prefix_attributes, align 8
  %2133 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common4541 = bitcast %union.tree_node* %2133 to %struct.tree_common*
  %chain4542 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4541, i32 0, i32 0
  %2134 = load %union.tree_node*, %union.tree_node** %chain4542, align 8
  store %union.tree_node* %2134, %union.tree_node** @declspec_stack, align 8
  br label %do.end.4543

do.end.4543:                                      ; preds = %do.body.4530
  br label %sw.epilog

sw.bb.4544:                                       ; preds = %if.end.170
  %2135 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4545 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2135, i64 0
  %ttype4546 = bitcast %union.YYSTYPE* %arrayidx4545 to %union.tree_node**
  %2136 = load %union.tree_node*, %union.tree_node** %ttype4546, align 8
  %ttype4547 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %2136, %union.tree_node** %ttype4547, align 8
  br label %do.body.4548

do.body.4548:                                     ; preds = %sw.bb.4544
  %2137 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4549 = bitcast %union.tree_node* %2137 to %struct.tree_list*
  %value4550 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4549, i32 0, i32 2
  %2138 = load %union.tree_node*, %union.tree_node** %value4550, align 8
  store %union.tree_node* %2138, %union.tree_node** @current_declspecs, align 8
  %2139 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4551 = bitcast %union.tree_node* %2139 to %struct.tree_list*
  %purpose4552 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4551, i32 0, i32 1
  %2140 = load %union.tree_node*, %union.tree_node** %purpose4552, align 8
  %list4553 = bitcast %union.tree_node* %2140 to %struct.tree_list*
  %purpose4554 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4553, i32 0, i32 1
  %2141 = load %union.tree_node*, %union.tree_node** %purpose4554, align 8
  store %union.tree_node* %2141, %union.tree_node** @prefix_attributes, align 8
  %2142 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4555 = bitcast %union.tree_node* %2142 to %struct.tree_list*
  %purpose4556 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4555, i32 0, i32 1
  %2143 = load %union.tree_node*, %union.tree_node** %purpose4556, align 8
  %list4557 = bitcast %union.tree_node* %2143 to %struct.tree_list*
  %value4558 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4557, i32 0, i32 2
  %2144 = load %union.tree_node*, %union.tree_node** %value4558, align 8
  store %union.tree_node* %2144, %union.tree_node** @all_prefix_attributes, align 8
  %2145 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common4559 = bitcast %union.tree_node* %2145 to %struct.tree_common*
  %chain4560 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4559, i32 0, i32 0
  %2146 = load %union.tree_node*, %union.tree_node** %chain4560, align 8
  store %union.tree_node* %2146, %union.tree_node** @declspec_stack, align 8
  br label %do.end.4561

do.end.4561:                                      ; preds = %do.body.4548
  br label %sw.epilog

sw.bb.4562:                                       ; preds = %if.end.170
  %2147 = load %union.tree_node*, %union.tree_node** @current_declspecs, align 8
  %2148 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4563 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2148, i64 -1
  %ttype4564 = bitcast %union.YYSTYPE* %arrayidx4563 to %union.tree_node**
  %2149 = load %union.tree_node*, %union.tree_node** %ttype4564, align 8
  %call4565 = call %union.tree_node* @build_tree_list(%union.tree_node* %2147, %union.tree_node* %2149)
  %2150 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4566 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2150, i64 0
  %ttype4567 = bitcast %union.YYSTYPE* %arrayidx4566 to %union.tree_node**
  %2151 = load %union.tree_node*, %union.tree_node** %ttype4567, align 8
  %2152 = load %union.tree_node*, %union.tree_node** @all_prefix_attributes, align 8
  %call4568 = call %union.tree_node* @chainon(%union.tree_node* %2151, %union.tree_node* %2152)
  %call4569 = call %union.tree_node* @build_tree_list(%union.tree_node* %call4565, %union.tree_node* %call4568)
  %ttype4570 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4569, %union.tree_node** %ttype4570, align 8
  br label %do.body.4571

do.body.4571:                                     ; preds = %sw.bb.4562
  %2153 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4572 = bitcast %union.tree_node* %2153 to %struct.tree_list*
  %value4573 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4572, i32 0, i32 2
  %2154 = load %union.tree_node*, %union.tree_node** %value4573, align 8
  store %union.tree_node* %2154, %union.tree_node** @current_declspecs, align 8
  %2155 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4574 = bitcast %union.tree_node* %2155 to %struct.tree_list*
  %purpose4575 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4574, i32 0, i32 1
  %2156 = load %union.tree_node*, %union.tree_node** %purpose4575, align 8
  %list4576 = bitcast %union.tree_node* %2156 to %struct.tree_list*
  %purpose4577 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4576, i32 0, i32 1
  %2157 = load %union.tree_node*, %union.tree_node** %purpose4577, align 8
  store %union.tree_node* %2157, %union.tree_node** @prefix_attributes, align 8
  %2158 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4578 = bitcast %union.tree_node* %2158 to %struct.tree_list*
  %purpose4579 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4578, i32 0, i32 1
  %2159 = load %union.tree_node*, %union.tree_node** %purpose4579, align 8
  %list4580 = bitcast %union.tree_node* %2159 to %struct.tree_list*
  %value4581 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4580, i32 0, i32 2
  %2160 = load %union.tree_node*, %union.tree_node** %value4581, align 8
  store %union.tree_node* %2160, %union.tree_node** @all_prefix_attributes, align 8
  %2161 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common4582 = bitcast %union.tree_node* %2161 to %struct.tree_common*
  %chain4583 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4582, i32 0, i32 0
  %2162 = load %union.tree_node*, %union.tree_node** %chain4583, align 8
  store %union.tree_node* %2162, %union.tree_node** @declspec_stack, align 8
  br label %do.end.4584

do.end.4584:                                      ; preds = %do.body.4571
  br label %sw.epilog

sw.bb.4585:                                       ; preds = %if.end.170
  %2163 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4586 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2163, i64 0
  %ttype4587 = bitcast %union.YYSTYPE* %arrayidx4586 to %union.tree_node**
  %2164 = load %union.tree_node*, %union.tree_node** %ttype4587, align 8
  %ttype4588 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %2164, %union.tree_node** %ttype4588, align 8
  br label %do.body.4589

do.body.4589:                                     ; preds = %sw.bb.4585
  %2165 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4590 = bitcast %union.tree_node* %2165 to %struct.tree_list*
  %value4591 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4590, i32 0, i32 2
  %2166 = load %union.tree_node*, %union.tree_node** %value4591, align 8
  store %union.tree_node* %2166, %union.tree_node** @current_declspecs, align 8
  %2167 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4592 = bitcast %union.tree_node* %2167 to %struct.tree_list*
  %purpose4593 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4592, i32 0, i32 1
  %2168 = load %union.tree_node*, %union.tree_node** %purpose4593, align 8
  %list4594 = bitcast %union.tree_node* %2168 to %struct.tree_list*
  %purpose4595 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4594, i32 0, i32 1
  %2169 = load %union.tree_node*, %union.tree_node** %purpose4595, align 8
  store %union.tree_node* %2169, %union.tree_node** @prefix_attributes, align 8
  %2170 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %list4596 = bitcast %union.tree_node* %2170 to %struct.tree_list*
  %purpose4597 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4596, i32 0, i32 1
  %2171 = load %union.tree_node*, %union.tree_node** %purpose4597, align 8
  %list4598 = bitcast %union.tree_node* %2171 to %struct.tree_list*
  %value4599 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4598, i32 0, i32 2
  %2172 = load %union.tree_node*, %union.tree_node** %value4599, align 8
  store %union.tree_node* %2172, %union.tree_node** @all_prefix_attributes, align 8
  %2173 = load %union.tree_node*, %union.tree_node** @declspec_stack, align 8
  %common4600 = bitcast %union.tree_node* %2173 to %struct.tree_common*
  %chain4601 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4600, i32 0, i32 0
  %2174 = load %union.tree_node*, %union.tree_node** %chain4601, align 8
  store %union.tree_node* %2174, %union.tree_node** @declspec_stack, align 8
  br label %do.end.4602

do.end.4602:                                      ; preds = %do.body.4589
  br label %sw.epilog

sw.bb.4603:                                       ; preds = %if.end.170
  %2175 = load %union.tree_node*, %union.tree_node** @prefix_attributes, align 8
  %2176 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4604 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2176, i64 -3
  %ttype4605 = bitcast %union.YYSTYPE* %arrayidx4604 to %union.tree_node**
  %2177 = load %union.tree_node*, %union.tree_node** %ttype4605, align 8
  %call4606 = call %union.tree_node* @chainon(%union.tree_node* %2175, %union.tree_node* %2177)
  store %union.tree_node* %call4606, %union.tree_node** @prefix_attributes, align 8
  %2178 = load %union.tree_node*, %union.tree_node** @prefix_attributes, align 8
  store %union.tree_node* %2178, %union.tree_node** @all_prefix_attributes, align 8
  br label %sw.epilog

sw.bb.4607:                                       ; preds = %if.end.170
  call void @pushlevel(i32 0)
  call void @clear_parm_order()
  call void @declare_parm_level(i32 1)
  br label %sw.epilog

sw.bb.4608:                                       ; preds = %if.end.170
  %2179 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4609 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2179, i64 0
  %ttype4610 = bitcast %union.YYSTYPE* %arrayidx4609 to %union.tree_node**
  %2180 = load %union.tree_node*, %union.tree_node** %ttype4610, align 8
  %ttype4611 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %2180, %union.tree_node** %ttype4611, align 8
  call void @parmlist_tags_warning()
  %call4612 = call %union.tree_node* @poplevel(i32 0, i32 0, i32 0)
  br label %sw.epilog

sw.bb.4613:                                       ; preds = %if.end.170
  %2181 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4614 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2181, i64 -1
  %ttype4615 = bitcast %union.YYSTYPE* %arrayidx4614 to %union.tree_node**
  %2182 = load %union.tree_node*, %union.tree_node** %ttype4615, align 8
  store %union.tree_node* %2182, %union.tree_node** %t, align 8
  br label %for.cond.4616

for.cond.4616:                                    ; preds = %for.inc.4625, %sw.bb.4613
  %2183 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool4617 = icmp ne %union.tree_node* %2183, null
  br i1 %tobool4617, label %for.body.4618, label %for.end.4628

for.body.4618:                                    ; preds = %for.cond.4616
  %2184 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list4619 = bitcast %union.tree_node* %2184 to %struct.tree_list*
  %value4620 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4619, i32 0, i32 2
  %2185 = load %union.tree_node*, %union.tree_node** %value4620, align 8
  %cmp4621 = icmp eq %union.tree_node* %2185, null
  br i1 %cmp4621, label %if.then.4623, label %if.end.4624

if.then.4623:                                     ; preds = %for.body.4618
  call void (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.4624

if.end.4624:                                      ; preds = %if.then.4623, %for.body.4618
  br label %for.inc.4625

for.inc.4625:                                     ; preds = %if.end.4624
  %2186 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common4626 = bitcast %union.tree_node* %2186 to %struct.tree_common*
  %chain4627 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4626, i32 0, i32 0
  %2187 = load %union.tree_node*, %union.tree_node** %chain4627, align 8
  store %union.tree_node* %2187, %union.tree_node** %t, align 8
  br label %for.cond.4616

for.end.4628:                                     ; preds = %for.cond.4616
  %2188 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4629 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2188, i64 -1
  %ttype4630 = bitcast %union.YYSTYPE* %arrayidx4629 to %union.tree_node**
  %2189 = load %union.tree_node*, %union.tree_node** %ttype4630, align 8
  %call4631 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* null, %union.tree_node* %2189)
  %ttype4632 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4631, %union.tree_node** %ttype4632, align 8
  %2190 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4633 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2190, i64 -3
  %ttype4634 = bitcast %union.YYSTYPE* %arrayidx4633 to %union.tree_node**
  %2191 = load %union.tree_node*, %union.tree_node** %ttype4634, align 8
  %cmp4635 = icmp ne %union.tree_node* %2191, null
  br i1 %cmp4635, label %land.lhs.true.4637, label %if.end.4662

land.lhs.true.4637:                               ; preds = %for.end.4628
  %ttype4638 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %2192 = load %union.tree_node*, %union.tree_node** %ttype4638, align 8
  %common4639 = bitcast %union.tree_node* %2192 to %struct.tree_common*
  %code4640 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4639, i32 0, i32 2
  %bf.load4641 = load i32, i32* %code4640, align 8
  %bf.clear4642 = and i32 %bf.load4641, 255
  %cmp4643 = icmp ne i32 %bf.clear4642, 2
  br i1 %cmp4643, label %if.then.4661, label %lor.lhs.false.4645

lor.lhs.false.4645:                               ; preds = %land.lhs.true.4637
  %ttype4646 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %2193 = load %union.tree_node*, %union.tree_node** %ttype4646, align 8
  %list4647 = bitcast %union.tree_node* %2193 to %struct.tree_list*
  %purpose4648 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4647, i32 0, i32 1
  %2194 = load %union.tree_node*, %union.tree_node** %purpose4648, align 8
  %cmp4649 = icmp eq %union.tree_node* %2194, null
  br i1 %cmp4649, label %if.then.4661, label %lor.lhs.false.4651

lor.lhs.false.4651:                               ; preds = %lor.lhs.false.4645
  %ttype4652 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  %2195 = load %union.tree_node*, %union.tree_node** %ttype4652, align 8
  %list4653 = bitcast %union.tree_node* %2195 to %struct.tree_list*
  %purpose4654 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list4653, i32 0, i32 1
  %2196 = load %union.tree_node*, %union.tree_node** %purpose4654, align 8
  %common4655 = bitcast %union.tree_node* %2196 to %struct.tree_common*
  %code4656 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4655, i32 0, i32 2
  %bf.load4657 = load i32, i32* %code4656, align 8
  %bf.clear4658 = and i32 %bf.load4657, 255
  %cmp4659 = icmp ne i32 %bf.clear4658, 35
  br i1 %cmp4659, label %if.then.4661, label %if.end.4662

if.then.4661:                                     ; preds = %lor.lhs.false.4651, %lor.lhs.false.4645, %land.lhs.true.4637
  call void @yyerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  br label %yyerrlab1

if.end.4662:                                      ; preds = %lor.lhs.false.4651, %for.end.4628
  br label %sw.epilog

sw.bb.4663:                                       ; preds = %if.end.170
  %2197 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4664 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2197, i64 0
  %ttype4665 = bitcast %union.YYSTYPE* %arrayidx4664 to %union.tree_node**
  %2198 = load %union.tree_node*, %union.tree_node** %ttype4665, align 8
  %call4666 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %2198)
  %ttype4667 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4666, %union.tree_node** %ttype4667, align 8
  br label %sw.epilog

sw.bb.4668:                                       ; preds = %if.end.170
  %2199 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4669 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2199, i64 -2
  %ttype4670 = bitcast %union.YYSTYPE* %arrayidx4669 to %union.tree_node**
  %2200 = load %union.tree_node*, %union.tree_node** %ttype4670, align 8
  %2201 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4671 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2201, i64 0
  %ttype4672 = bitcast %union.YYSTYPE* %arrayidx4671 to %union.tree_node**
  %2202 = load %union.tree_node*, %union.tree_node** %ttype4672, align 8
  %call4673 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %2202)
  %call4674 = call %union.tree_node* @chainon(%union.tree_node* %2200, %union.tree_node* %call4673)
  %ttype4675 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4674, %union.tree_node** %ttype4675, align 8
  br label %sw.epilog

sw.bb.4676:                                       ; preds = %if.end.170
  %2203 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4677 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2203, i64 0
  %ttype4678 = bitcast %union.YYSTYPE* %arrayidx4677 to %union.tree_node**
  %2204 = load %union.tree_node*, %union.tree_node** %ttype4678, align 8
  %call4679 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %2204)
  %ttype4680 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4679, %union.tree_node** %ttype4680, align 8
  br label %sw.epilog

sw.bb.4681:                                       ; preds = %if.end.170
  %2205 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4682 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2205, i64 -2
  %ttype4683 = bitcast %union.YYSTYPE* %arrayidx4682 to %union.tree_node**
  %2206 = load %union.tree_node*, %union.tree_node** %ttype4683, align 8
  %2207 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %arrayidx4684 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2207, i64 0
  %ttype4685 = bitcast %union.YYSTYPE* %arrayidx4684 to %union.tree_node**
  %2208 = load %union.tree_node*, %union.tree_node** %ttype4685, align 8
  %call4686 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %2208)
  %call4687 = call %union.tree_node* @chainon(%union.tree_node* %2206, %union.tree_node* %call4686)
  %ttype4688 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4687, %union.tree_node** %ttype4688, align 8
  br label %sw.epilog

sw.bb.4689:                                       ; preds = %if.end.170
  %2209 = load i32, i32* @pedantic, align 4
  %2210 = load i32, i32* @warn_pointer_arith, align 4
  %shl = shl i32 %2210, 1
  %or = or i32 %2209, %shl
  %2211 = load i32, i32* @warn_traditional, align 4
  %shl4690 = shl i32 %2211, 2
  %or4691 = or i32 %or, %shl4690
  %conv4692 = sext i32 %or4691 to i64
  %call4693 = call %union.tree_node* @size_int_wide(i64 %conv4692, i32 0)
  %ttype4694 = bitcast %union.YYSTYPE* %yyval to %union.tree_node**
  store %union.tree_node* %call4693, %union.tree_node** %ttype4694, align 8
  store i32 0, i32* @pedantic, align 4
  store i32 0, i32* @warn_pointer_arith, align 4
  store i32 0, i32* @warn_traditional, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.170, %sw.bb.4689, %sw.bb.4681, %sw.bb.4676, %sw.bb.4668, %sw.bb.4663, %if.end.4662, %sw.bb.4608, %sw.bb.4607, %sw.bb.4603, %do.end.4602, %do.end.4584, %do.end.4561, %do.end.4543, %do.end.4520, %do.end.4497, %do.end.4479, %do.end.4456, %do.end.4438, %do.end.4415, %sw.bb.4390, %sw.bb.4387, %sw.bb.4384, %sw.bb.4381, %sw.bb.4378, %sw.bb.4375, %sw.bb.4372, %sw.bb.4368, %sw.bb.4367, %for.end.4366, %sw.bb.4346, %sw.bb.4345, %sw.bb.4337, %sw.bb.4331, %sw.bb.4321, %sw.bb.4313, %sw.bb.4306, %sw.bb.4304, %sw.bb.4302, %sw.bb.4300, %sw.bb.4297, %if.end.4296, %sw.bb.4272, %sw.bb.4264, %sw.bb.4258, %sw.bb.4256, %if.end.4244, %if.end.4240, %sw.bb.4208, %sw.bb.4196, %sw.bb.4186, %sw.bb.4180, %sw.bb.4174, %sw.bb.4170, %sw.bb.4165, %sw.bb.4160, %if.end.4158, %sw.bb.4130, %sw.bb.4125, %sw.bb.4124, %sw.bb.4119, %sw.bb.4118, %sw.bb.4112, %do.end.4111, %sw.bb.4084, %if.end.4083, %do.end.4069, %sw.bb.4044, %sw.bb.4043, %sw.bb.4034, %do.end.4033, %sw.bb.3999, %sw.bb.3995, %sw.bb.3994, %if.end.3993, %if.end.3982, %sw.bb.3969, %if.end.3968, %if.end.3956, %if.end.3944, %if.end.3920, %if.end.3913, %do.end.3907, %sw.bb.3879, %sw.bb.3868, %sw.bb.3865, %sw.bb.3864, %do.end.3858, %if.end.3832, %sw.bb.3809, %sw.bb.3806, %sw.bb.3802, %sw.bb.3801, %for.end.3800, %if.end.3783, %if.end.3779, %if.end.3758, %sw.bb.3747, %sw.bb.3745, %if.end.3744, %sw.bb.3738, %if.end.3731, %if.end.3715, %if.end.3701, %sw.bb.3687, %sw.bb.3684, %sw.bb.3679, %sw.bb.3676, %sw.bb.3669, %sw.bb.3664, %sw.bb.3659, %sw.bb.3654, %sw.bb.3647, %sw.bb.3640, %cond.end.3637, %sw.bb.3617, %sw.bb.3612, %sw.bb.3605, %sw.bb.3596, %sw.bb.3590, %sw.bb.3586, %sw.bb.3584, %sw.bb.3577, %sw.bb.3573, %sw.bb.3566, %sw.bb.3561, %sw.bb.3559, %if.end.3558, %sw.bb.3528, %sw.bb.3512, %sw.bb.3498, %sw.bb.3484, %sw.bb.3468, %sw.bb.3454, %sw.bb.3447, %sw.bb.3440, %do.end.3439, %sw.bb.3422, %if.end.3418, %do.end.3414, %do.end.3396, %do.end.3372, %if.end.3354, %sw.bb.3344, %sw.bb.3342, %sw.bb.3335, %sw.bb.3331, %if.end.3330, %if.end.3324, %sw.bb.3306, %sw.bb.3301, %sw.bb.3288, %sw.bb.3285, %sw.bb.3272, %sw.bb.3267, %sw.bb.3256, %sw.bb.3244, %sw.bb.3239, %sw.bb.3228, %sw.bb.3216, %sw.bb.3211, %sw.bb.3207, %sw.bb.3205, %sw.bb.3201, %sw.bb.3199, %sw.bb.3195, %sw.bb.3193, %sw.bb.3186, %sw.bb.3179, %cond.end.3176, %sw.bb.3156, %cond.end.3153, %sw.bb.3133, %sw.bb.3126, %sw.bb.3119, %sw.bb.3112, %sw.bb.3105, %sw.bb.3098, %sw.bb.3091, %sw.bb.3084, %sw.bb.3077, %cond.end.3074, %sw.bb.3051, %sw.bb.3050, %if.end.3049, %sw.bb.3030, %sw.bb.3029, %if.end.3028, %sw.bb.3016, %if.end.3015, %sw.bb.3005, %sw.bb.3002, %sw.bb.3000, %sw.bb.2999, %if.end.2998, %if.end.2992, %if.end.2988, %if.end.2982, %sw.bb.2977, %sw.bb.2974, %sw.bb.2973, %sw.bb.2966, %sw.bb.2956, %sw.bb.2948, %sw.bb.2943, %sw.bb.2941, %sw.bb.2934, %sw.bb.2930, %sw.bb.2926, %sw.bb.2919, %sw.bb.2915, %sw.bb.2911, %sw.bb.2909, %sw.bb.2899, %sw.bb.2892, %sw.bb.2880, %sw.bb.2871, %sw.bb.2864, %sw.bb.2852, %if.end.2848, %sw.bb.2834, %sw.bb.2829, %sw.bb.2823, %sw.bb.2818, %sw.bb.2817, %sw.bb.2813, %sw.bb.2811, %sw.bb.2798, %sw.bb.2785, %sw.bb.2772, %sw.bb.2759, %sw.bb.2737, %if.end.2715, %if.end.2676, %if.end.2637, %if.end.2598, %sw.bb.2568, %sw.bb.2555, %sw.bb.2542, %sw.bb.2529, %sw.bb.2516, %sw.bb.2503, %sw.bb.2490, %sw.bb.2477, %sw.bb.2464, %sw.bb.2451, %sw.bb.2429, %if.end.2407, %if.end.2368, %if.end.2329, %if.end.2290, %sw.bb.2260, %sw.bb.2247, %sw.bb.2234, %sw.bb.2221, %sw.bb.2208, %sw.bb.2195, %sw.bb.2173, %if.end.2151, %if.end.2112, %if.end.2073, %if.end.2034, %sw.bb.2004, %sw.bb.1991, %sw.bb.1969, %if.end.1947, %if.end.1908, %if.end.1869, %if.end.1830, %sw.bb.1803, %sw.bb.1790, %sw.bb.1780, %sw.bb.1767, %sw.bb.1754, %sw.bb.1741, %sw.bb.1728, %sw.bb.1706, %sw.bb.1693, %sw.bb.1680, %sw.bb.1667, %sw.bb.1654, %sw.bb.1641, %sw.bb.1628, %sw.bb.1615, %sw.bb.1602, %sw.bb.1589, %sw.bb.1576, %sw.bb.1554, %sw.bb.1543, %sw.bb.1530, %sw.bb.1517, %sw.bb.1504, %sw.bb.1491, %sw.bb.1478, %sw.bb.1465, %sw.bb.1454, %sw.bb.1432, %sw.bb.1422, %sw.bb.1409, %sw.bb.1396, %sw.bb.1376, %sw.bb.1363, %sw.bb.1350, %sw.bb.1340, %do.end.1339, %sw.bb.1324, %do.end.1323, %do.end.1308, %do.end.1293, %do.end.1278, %sw.bb.1260, %do.end.1257, %sw.bb.1252, %sw.bb.1251, %sw.bb.1248, %do.end.1247, %do.end.1232, %sw.bb.1217, %if.end.1216, %if.end.1212, %sw.bb.1188, %sw.bb.1183, %sw.bb.1175, %sw.bb.1168, %sw.bb.1161, %cond.end.1158, %cond.end.1139, %sw.bb.1058, %sw.bb.1051, %sw.bb.1038, %if.end.1027, %sw.bb.987, %if.end.983, %if.end.950, %sw.bb.933, %sw.bb.927, %sw.bb.922, %if.end.915, %if.end.909, %if.end.872, %sw.bb.826, %if.end.809, %sw.bb.792, %sw.bb.781, %sw.bb.769, %sw.bb.757, %sw.bb.745, %sw.bb.733, %sw.bb.721, %sw.bb.712, %sw.bb.703, %sw.bb.694, %sw.bb.685, %sw.bb.676, %sw.bb.667, %sw.bb.658, %sw.bb.649, %sw.bb.640, %sw.bb.631, %sw.bb.622, %sw.bb.613, %sw.bb.606, %sw.bb.604, %sw.bb.602, %sw.bb.597, %sw.bb.592, %sw.bb.585, %sw.bb.579, %sw.bb.572, %if.end.565, %sw.bb.537, %sw.bb.529, %do.end.528, %sw.bb.508, %sw.bb.501, %sw.bb.496, %sw.bb.494, %sw.bb.489, %sw.bb.487, %sw.bb.485, %sw.bb.483, %sw.bb.481, %if.end.480, %sw.bb.472, %sw.bb.470, %do.end.469, %do.end.454, %sw.bb.431, %if.end.430, %do.end.423, %do.end.408, %sw.bb.385, %if.end.384, %do.end.377, %do.end.362, %sw.bb.343, %if.end.342, %if.end.335, %sw.bb.329, %do.end.328, %do.end.313, %do.end.298, %do.end, %if.end.272, %sw.bb.179, %sw.bb.178, %while.end, %if.end.173
  %2212 = load i32, i32* %yylen, align 4
  %2213 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %idx.ext4695 = sext i32 %2212 to i64
  %idx.neg = sub i64 0, %idx.ext4695
  %add.ptr4696 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2213, i64 %idx.neg
  store %union.YYSTYPE* %add.ptr4696, %union.YYSTYPE** %yyvsp, align 8
  %2214 = load i32, i32* %yylen, align 4
  %2215 = load i16*, i16** %yyssp, align 8
  %idx.ext4697 = sext i32 %2214 to i64
  %idx.neg4698 = sub i64 0, %idx.ext4697
  %add.ptr4699 = getelementptr inbounds i16, i16* %2215, i64 %idx.neg4698
  store i16* %add.ptr4699, i16** %yyssp, align 8
  %2216 = load i32, i32* @yydebug, align 4
  %tobool4700 = icmp ne i32 %2216, 0
  br i1 %tobool4700, label %if.then.4701, label %if.end.4713

if.then.4701:                                     ; preds = %sw.epilog
  %2217 = load i16*, i16** %yyss, align 8
  %add.ptr4702 = getelementptr inbounds i16, i16* %2217, i64 -1
  store i16* %add.ptr4702, i16** %ssp1, align 8
  %2218 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4703 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2218, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0))
  br label %while.cond.4704

while.cond.4704:                                  ; preds = %while.body.4707, %if.then.4701
  %2219 = load i16*, i16** %ssp1, align 8
  %2220 = load i16*, i16** %yyssp, align 8
  %cmp4705 = icmp ne i16* %2219, %2220
  br i1 %cmp4705, label %while.body.4707, label %while.end.4711

while.body.4707:                                  ; preds = %while.cond.4704
  %2221 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2222 = load i16*, i16** %ssp1, align 8
  %incdec.ptr4708 = getelementptr inbounds i16, i16* %2222, i32 1
  store i16* %incdec.ptr4708, i16** %ssp1, align 8
  %2223 = load i16, i16* %incdec.ptr4708, align 2
  %conv4709 = sext i16 %2223 to i32
  %call4710 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2221, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 %conv4709)
  br label %while.cond.4704

while.end.4711:                                   ; preds = %while.cond.4704
  %2224 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4712 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.4713

if.end.4713:                                      ; preds = %while.end.4711, %sw.epilog
  %2225 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr4714 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2225, i32 1
  store %union.YYSTYPE* %incdec.ptr4714, %union.YYSTYPE** %yyvsp, align 8
  %2226 = bitcast %union.YYSTYPE* %incdec.ptr4714 to i8*
  %2227 = bitcast %union.YYSTYPE* %yyval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2226, i8* %2227, i64 8, i32 8, i1 false)
  %2228 = load i32, i32* %yyn, align 4
  %idxprom4715 = sext i32 %2228 to i64
  %arrayidx4716 = getelementptr inbounds [560 x i16], [560 x i16]* @yyr1, i32 0, i64 %idxprom4715
  %2229 = load i16, i16* %arrayidx4716, align 2
  %conv4717 = sext i16 %2229 to i32
  store i32 %conv4717, i32* %yyn, align 4
  %2230 = load i32, i32* %yyn, align 4
  %sub4718 = sub nsw i32 %2230, 91
  %idxprom4719 = sext i32 %sub4718 to i64
  %arrayidx4720 = getelementptr inbounds [198 x i16], [198 x i16]* @yypgoto, i32 0, i64 %idxprom4719
  %2231 = load i16, i16* %arrayidx4720, align 2
  %conv4721 = sext i16 %2231 to i32
  %2232 = load i16*, i16** %yyssp, align 8
  %2233 = load i16, i16* %2232, align 2
  %conv4722 = sext i16 %2233 to i32
  %add4723 = add nsw i32 %conv4721, %conv4722
  store i32 %add4723, i32* %yystate, align 4
  %2234 = load i32, i32* %yystate, align 4
  %cmp4724 = icmp sge i32 %2234, 0
  br i1 %cmp4724, label %land.lhs.true.4726, label %if.else.4740

land.lhs.true.4726:                               ; preds = %if.end.4713
  %2235 = load i32, i32* %yystate, align 4
  %cmp4727 = icmp sle i32 %2235, 3205
  br i1 %cmp4727, label %land.lhs.true.4729, label %if.else.4740

land.lhs.true.4729:                               ; preds = %land.lhs.true.4726
  %2236 = load i32, i32* %yystate, align 4
  %idxprom4730 = sext i32 %2236 to i64
  %arrayidx4731 = getelementptr inbounds [3206 x i16], [3206 x i16]* @yycheck, i32 0, i64 %idxprom4730
  %2237 = load i16, i16* %arrayidx4731, align 2
  %conv4732 = sext i16 %2237 to i32
  %2238 = load i16*, i16** %yyssp, align 8
  %2239 = load i16, i16* %2238, align 2
  %conv4733 = sext i16 %2239 to i32
  %cmp4734 = icmp eq i32 %conv4732, %conv4733
  br i1 %cmp4734, label %if.then.4736, label %if.else.4740

if.then.4736:                                     ; preds = %land.lhs.true.4729
  %2240 = load i32, i32* %yystate, align 4
  %idxprom4737 = sext i32 %2240 to i64
  %arrayidx4738 = getelementptr inbounds [3206 x i16], [3206 x i16]* @yytable, i32 0, i64 %idxprom4737
  %2241 = load i16, i16* %arrayidx4738, align 2
  %conv4739 = sext i16 %2241 to i32
  store i32 %conv4739, i32* %yystate, align 4
  br label %if.end.4745

if.else.4740:                                     ; preds = %land.lhs.true.4729, %land.lhs.true.4726, %if.end.4713
  %2242 = load i32, i32* %yyn, align 4
  %sub4741 = sub nsw i32 %2242, 91
  %idxprom4742 = sext i32 %sub4741 to i64
  %arrayidx4743 = getelementptr inbounds [198 x i16], [198 x i16]* @yydefgoto, i32 0, i64 %idxprom4742
  %2243 = load i16, i16* %arrayidx4743, align 2
  %conv4744 = sext i16 %2243 to i32
  store i32 %conv4744, i32* %yystate, align 4
  br label %if.end.4745

if.end.4745:                                      ; preds = %if.else.4740, %if.then.4736
  br label %yynewstate

yyerrlab:                                         ; preds = %if.then.134, %if.then.108, %if.then.103
  %2244 = load i32, i32* %yyerrstatus, align 4
  %tobool4746 = icmp ne i32 %2244, 0
  br i1 %tobool4746, label %if.end.4749, label %if.then.4747

if.then.4747:                                     ; preds = %yyerrlab
  %2245 = load i32, i32* @yynerrs, align 4
  %inc4748 = add nsw i32 %2245, 1
  store i32 %inc4748, i32* @yynerrs, align 4
  call void @yyerror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0))
  br label %if.end.4749

if.end.4749:                                      ; preds = %if.then.4747, %yyerrlab
  br label %yyerrlab1

yyerrlab1:                                        ; preds = %if.end.4749, %if.then.4661, %if.then.3831, %if.then.3048, %if.then.3027, %if.then.429, %if.then.383, %if.then.341
  %2246 = load i32, i32* %yyerrstatus, align 4
  %cmp4750 = icmp eq i32 %2246, 3
  br i1 %cmp4750, label %if.then.4752, label %if.end.4763

if.then.4752:                                     ; preds = %yyerrlab1
  %2247 = load i32, i32* @yychar, align 4
  %cmp4753 = icmp eq i32 %2247, 0
  br i1 %cmp4753, label %if.then.4755, label %if.end.4756

if.then.4755:                                     ; preds = %if.then.4752
  br label %yyabortlab

if.end.4756:                                      ; preds = %if.then.4752
  %2248 = load i32, i32* @yydebug, align 4
  %tobool4757 = icmp ne i32 %2248, 0
  br i1 %tobool4757, label %if.then.4758, label %if.end.4762

if.then.4758:                                     ; preds = %if.end.4756
  %2249 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2250 = load i32, i32* @yychar, align 4
  %2251 = load i32, i32* %yychar1, align 4
  %idxprom4759 = sext i32 %2251 to i64
  %arrayidx4760 = getelementptr inbounds [290 x i8*], [290 x i8*]* @yytname, i32 0, i64 %idxprom4759
  %2252 = load i8*, i8** %arrayidx4760, align 8
  %call4761 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2249, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i32 0, i32 0), i32 %2250, i8* %2252)
  br label %if.end.4762

if.end.4762:                                      ; preds = %if.then.4758, %if.end.4756
  store i32 -2, i32* @yychar, align 4
  br label %if.end.4763

if.end.4763:                                      ; preds = %if.end.4762, %yyerrlab1
  store i32 3, i32* %yyerrstatus, align 4
  br label %yyerrhandle

yyerrdefault:                                     ; preds = %if.then.4805, %if.then.4791
  br label %yyerrpop

yyerrpop:                                         ; preds = %if.then.4821, %if.then.4815, %yyerrdefault
  %2253 = load i16*, i16** %yyssp, align 8
  %2254 = load i16*, i16** %yyss, align 8
  %cmp4764 = icmp eq i16* %2253, %2254
  br i1 %cmp4764, label %if.then.4766, label %if.end.4767

if.then.4766:                                     ; preds = %yyerrpop
  br label %yyabortlab

if.end.4767:                                      ; preds = %yyerrpop
  %2255 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr4768 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2255, i32 -1
  store %union.YYSTYPE* %incdec.ptr4768, %union.YYSTYPE** %yyvsp, align 8
  %2256 = load i16*, i16** %yyssp, align 8
  %incdec.ptr4769 = getelementptr inbounds i16, i16* %2256, i32 -1
  store i16* %incdec.ptr4769, i16** %yyssp, align 8
  %2257 = load i16, i16* %incdec.ptr4769, align 2
  %conv4770 = sext i16 %2257 to i32
  store i32 %conv4770, i32* %yystate, align 4
  %2258 = load i32, i32* @yydebug, align 4
  %tobool4771 = icmp ne i32 %2258, 0
  br i1 %tobool4771, label %if.then.4772, label %if.end.4785

if.then.4772:                                     ; preds = %if.end.4767
  %2259 = load i16*, i16** %yyss, align 8
  %add.ptr4774 = getelementptr inbounds i16, i16* %2259, i64 -1
  store i16* %add.ptr4774, i16** %ssp14773, align 8
  %2260 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4775 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2260, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0))
  br label %while.cond.4776

while.cond.4776:                                  ; preds = %while.body.4779, %if.then.4772
  %2261 = load i16*, i16** %ssp14773, align 8
  %2262 = load i16*, i16** %yyssp, align 8
  %cmp4777 = icmp ne i16* %2261, %2262
  br i1 %cmp4777, label %while.body.4779, label %while.end.4783

while.body.4779:                                  ; preds = %while.cond.4776
  %2263 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2264 = load i16*, i16** %ssp14773, align 8
  %incdec.ptr4780 = getelementptr inbounds i16, i16* %2264, i32 1
  store i16* %incdec.ptr4780, i16** %ssp14773, align 8
  %2265 = load i16, i16* %incdec.ptr4780, align 2
  %conv4781 = sext i16 %2265 to i32
  %call4782 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2263, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 %conv4781)
  br label %while.cond.4776

while.end.4783:                                   ; preds = %while.cond.4776
  %2266 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4784 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2266, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.4785

if.end.4785:                                      ; preds = %while.end.4783, %if.end.4767
  br label %yyerrhandle

yyerrhandle:                                      ; preds = %if.end.4785, %if.end.4763
  %2267 = load i32, i32* %yystate, align 4
  %idxprom4786 = sext i32 %2267 to i64
  %arrayidx4787 = getelementptr inbounds [901 x i16], [901 x i16]* @yypact, i32 0, i64 %idxprom4786
  %2268 = load i16, i16* %arrayidx4787, align 2
  %conv4788 = sext i16 %2268 to i32
  store i32 %conv4788, i32* %yyn, align 4
  %2269 = load i32, i32* %yyn, align 4
  %cmp4789 = icmp eq i32 %2269, -32768
  br i1 %cmp4789, label %if.then.4791, label %if.end.4792

if.then.4791:                                     ; preds = %yyerrhandle
  br label %yyerrdefault

if.end.4792:                                      ; preds = %yyerrhandle
  %2270 = load i32, i32* %yyn, align 4
  %add4793 = add nsw i32 %2270, 1
  store i32 %add4793, i32* %yyn, align 4
  %2271 = load i32, i32* %yyn, align 4
  %cmp4794 = icmp slt i32 %2271, 0
  br i1 %cmp4794, label %if.then.4805, label %lor.lhs.false.4796

lor.lhs.false.4796:                               ; preds = %if.end.4792
  %2272 = load i32, i32* %yyn, align 4
  %cmp4797 = icmp sgt i32 %2272, 3205
  br i1 %cmp4797, label %if.then.4805, label %lor.lhs.false.4799

lor.lhs.false.4799:                               ; preds = %lor.lhs.false.4796
  %2273 = load i32, i32* %yyn, align 4
  %idxprom4800 = sext i32 %2273 to i64
  %arrayidx4801 = getelementptr inbounds [3206 x i16], [3206 x i16]* @yycheck, i32 0, i64 %idxprom4800
  %2274 = load i16, i16* %arrayidx4801, align 2
  %conv4802 = sext i16 %2274 to i32
  %cmp4803 = icmp ne i32 %conv4802, 1
  br i1 %cmp4803, label %if.then.4805, label %if.end.4806

if.then.4805:                                     ; preds = %lor.lhs.false.4799, %lor.lhs.false.4796, %if.end.4792
  br label %yyerrdefault

if.end.4806:                                      ; preds = %lor.lhs.false.4799
  %2275 = load i32, i32* %yyn, align 4
  %idxprom4807 = sext i32 %2275 to i64
  %arrayidx4808 = getelementptr inbounds [3206 x i16], [3206 x i16]* @yytable, i32 0, i64 %idxprom4807
  %2276 = load i16, i16* %arrayidx4808, align 2
  %conv4809 = sext i16 %2276 to i32
  store i32 %conv4809, i32* %yyn, align 4
  %2277 = load i32, i32* %yyn, align 4
  %cmp4810 = icmp slt i32 %2277, 0
  br i1 %cmp4810, label %if.then.4812, label %if.else.4818

if.then.4812:                                     ; preds = %if.end.4806
  %2278 = load i32, i32* %yyn, align 4
  %cmp4813 = icmp eq i32 %2278, -32768
  br i1 %cmp4813, label %if.then.4815, label %if.end.4816

if.then.4815:                                     ; preds = %if.then.4812
  br label %yyerrpop

if.end.4816:                                      ; preds = %if.then.4812
  %2279 = load i32, i32* %yyn, align 4
  %sub4817 = sub nsw i32 0, %2279
  store i32 %sub4817, i32* %yyn, align 4
  br label %yyreduce

if.else.4818:                                     ; preds = %if.end.4806
  %2280 = load i32, i32* %yyn, align 4
  %cmp4819 = icmp eq i32 %2280, 0
  br i1 %cmp4819, label %if.then.4821, label %if.end.4822

if.then.4821:                                     ; preds = %if.else.4818
  br label %yyerrpop

if.end.4822:                                      ; preds = %if.else.4818
  br label %if.end.4823

if.end.4823:                                      ; preds = %if.end.4822
  %2281 = load i32, i32* %yyn, align 4
  %cmp4824 = icmp eq i32 %2281, 900
  br i1 %cmp4824, label %if.then.4826, label %if.end.4827

if.then.4826:                                     ; preds = %if.end.4823
  br label %yyacceptlab

if.end.4827:                                      ; preds = %if.end.4823
  %2282 = load i32, i32* @yydebug, align 4
  %tobool4828 = icmp ne i32 %2282, 0
  br i1 %tobool4828, label %if.then.4829, label %if.end.4831

if.then.4829:                                     ; preds = %if.end.4827
  %2283 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4830 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i32 0, i32 0))
  br label %if.end.4831

if.end.4831:                                      ; preds = %if.then.4829, %if.end.4827
  %2284 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvsp, align 8
  %incdec.ptr4832 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %2284, i32 1
  store %union.YYSTYPE* %incdec.ptr4832, %union.YYSTYPE** %yyvsp, align 8
  %2285 = bitcast %union.YYSTYPE* %incdec.ptr4832 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2285, i8* bitcast (%union.YYSTYPE* @yylval to i8*), i64 8, i32 8, i1 false)
  %2286 = load i32, i32* %yyn, align 4
  store i32 %2286, i32* %yystate, align 4
  br label %yynewstate

yyacceptlab:                                      ; preds = %if.then.4826, %if.then.113
  %2287 = load i32, i32* %yyfree_stacks, align 4
  %tobool4833 = icmp ne i32 %2287, 0
  br i1 %tobool4833, label %if.then.4834, label %if.end.4835

if.then.4834:                                     ; preds = %yyacceptlab
  %2288 = load i16*, i16** %yyss, align 8
  %2289 = bitcast i16* %2288 to i8*
  call void @free(i8* %2289) #3
  %2290 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  %2291 = bitcast %union.YYSTYPE* %2290 to i8*
  call void @free(i8* %2291) #3
  br label %if.end.4835

if.end.4835:                                      ; preds = %if.then.4834, %yyacceptlab
  store i32 0, i32* %retval
  br label %return

yyabortlab:                                       ; preds = %if.then.4766, %if.then.4755, %if.then.41
  %2292 = load i32, i32* %yyfree_stacks, align 4
  %tobool4836 = icmp ne i32 %2292, 0
  br i1 %tobool4836, label %if.then.4837, label %if.end.4838

if.then.4837:                                     ; preds = %yyabortlab
  %2293 = load i16*, i16** %yyss, align 8
  %2294 = bitcast i16* %2293 to i8*
  call void @free(i8* %2294) #3
  %2295 = load %union.YYSTYPE*, %union.YYSTYPE** %yyvs, align 8
  %2296 = bitcast %union.YYSTYPE* %2295 to i8*
  call void @free(i8* %2296) #3
  br label %if.end.4838

if.end.4838:                                      ; preds = %if.then.4837, %yyabortlab
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4838, %if.end.4835, %if.end.12
  %2297 = load i32, i32* %retval
  ret i32 %2297
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @yyerror(i8* %msgid) #0 {
entry:
  %msgid.addr = alloca i8*, align 8
  %string = alloca i8*, align 8
  %val = alloca i32, align 4
  %ell = alloca i8*, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %0 = load i8*, i8** %msgid.addr, align 8
  store i8* %0, i8** %string, align 8
  %1 = load i32, i32* @last_token, align 4
  %cmp = icmp eq i32 %1, 67
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %string, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.428, i32 0, i32 0), i8* %2)
  br label %if.end.33

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @last_token, align 4
  %cmp1 = icmp eq i32 %3, 58
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %4 = load i32, i32* @last_token, align 4
  %cmp2 = icmp eq i32 %4, 59
  br i1 %cmp2, label %if.then.3, label %if.else.13

if.then.3:                                        ; preds = %lor.lhs.false, %if.else
  %5 = load %union.tree_node*, %union.tree_node** bitcast (%union.YYSTYPE* @yylval to %union.tree_node**), align 8
  %int_cst = bitcast %union.tree_node* %5 to %struct.tree_int_cst*
  %int_cst4 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst4, i32 0, i32 0
  %6 = load i64, i64* %low, align 8
  %conv = trunc i64 %6 to i32
  store i32 %conv, i32* %val, align 4
  %7 = load i32, i32* @last_token, align 4
  %cmp5 = icmp eq i32 %7, 58
  %cond = select i1 %cmp5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.429, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.430, i32 0, i32 0)
  store i8* %cond, i8** %ell, align 8
  %8 = load i32, i32* %val, align 4
  %cmp7 = icmp ule i32 %8, 255
  br i1 %cmp7, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.then.3
  %9 = load i32, i32* %val, align 4
  %and = and i32 %9, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %conv9 = zext i16 %10 to i32
  %and10 = and i32 %conv9, 172
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  %11 = load i8*, i8** %string, align 8
  %12 = load i8*, i8** %ell, align 8
  %13 = load i32, i32* %val, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.431, i32 0, i32 0), i8* %11, i8* %12, i32 %13)
  br label %if.end

if.else.12:                                       ; preds = %land.lhs.true, %if.then.3
  %14 = load i8*, i8** %string, align 8
  %15 = load i8*, i8** %ell, align 8
  %16 = load i32, i32* %val, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.432, i32 0, i32 0), i8* %14, i8* %15, i32 %16)
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.32

if.else.13:                                       ; preds = %lor.lhs.false
  %17 = load i32, i32* @last_token, align 4
  %cmp14 = icmp eq i32 %17, 61
  br i1 %cmp14, label %if.then.19, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.else.13
  %18 = load i32, i32* @last_token, align 4
  %cmp17 = icmp eq i32 %18, 62
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %lor.lhs.false.16, %if.else.13
  %19 = load i8*, i8** %string, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.433, i32 0, i32 0), i8* %19)
  br label %if.end.31

if.else.20:                                       ; preds = %lor.lhs.false.16
  %20 = load i32, i32* @last_token, align 4
  %cmp21 = icmp eq i32 %20, 57
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.20
  %21 = load i8*, i8** %string, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.434, i32 0, i32 0), i8* %21)
  br label %if.end.30

if.else.24:                                       ; preds = %if.else.20
  %22 = load i32, i32* @last_token, align 4
  %cmp25 = icmp eq i32 %22, 56
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.else.24
  %23 = load i8*, i8** %string, align 8
  %24 = load %union.tree_node*, %union.tree_node** bitcast (%union.YYSTYPE* @yylval to %union.tree_node**), align 8
  %identifier = bitcast %union.tree_node* %24 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %25 = load i8*, i8** %str, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.435, i32 0, i32 0), i8* %23, i8* %25)
  br label %if.end.29

if.else.28:                                       ; preds = %if.else.24
  %26 = load i8*, i8** %string, align 8
  %27 = load i32, i32* @last_token, align 4
  %call = call i8* @cpp_type2name(i32 %27)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.436, i32 0, i32 0), i8* %26, i8* %call)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.27
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.23
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.19
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @yylex() #0 {
entry:
  %r = alloca i32, align 4
  call void @timevar_push(i32 8)
  %call = call i32 @_yylex()
  store i32 %call, i32* %r, align 4
  call void @timevar_pop(i32 8)
  %0 = load i32, i32* %r, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define internal void @yyprint(%struct._IO_FILE* %file, i32 %yychar, i64 %yyl.coerce) #0 {
entry:
  %yyl = alloca %union.YYSTYPE, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %yychar.addr = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  %coerce.dive = getelementptr %union.YYSTYPE, %union.YYSTYPE* %yyl, i32 0, i32 0
  store i64 %yyl.coerce, i64* %coerce.dive, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %yychar, i32* %yychar.addr, align 4
  %ttype = bitcast %union.YYSTYPE* %yyl to %union.tree_node**
  %0 = load %union.tree_node*, %union.tree_node** %ttype, align 8
  store %union.tree_node* %0, %union.tree_node** %t, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %2 = load i32, i32* @last_token, align 4
  %call = call i8* @cpp_type2name(i32 %2)
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.439, i32 0, i32 0), i8* %call)
  %3 = load i32, i32* %yychar.addr, align 4
  switch i32 %3, label %sw.epilog [
    i32 257, label %sw.bb
    i32 258, label %sw.bb
    i32 320, label %sw.bb
    i32 260, label %sw.bb
    i32 261, label %sw.bb
    i32 259, label %sw.bb
    i32 262, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %4 = load %union.tree_node*, %union.tree_node** %t, align 8
  %identifier = bitcast %union.tree_node* %4 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %5 = load i8*, i8** %str, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %t, align 8
  %identifier2 = bitcast %union.tree_node* %7 to %struct.tree_identifier*
  %id3 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier2, i32 0, i32 1
  %str4 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id3, i32 0, i32 1
  %8 = load i8*, i8** %str4, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.440, i32 0, i32 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %10 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %11 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type7 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type7, i32 0, i32 6
  %bf.load = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 127
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [59 x i8*], [59 x i8*]* @mode_name, i32 0, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.441, i32 0, i32 0), i8* %12)
  %13 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common9 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load10 = load i32, i32* %code, align 8
  %bf.clear11 = and i32 %bf.load10, 255
  %cmp = icmp eq i32 %bf.clear11, 25
  br i1 %cmp, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %sw.bb.6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %15 = load %union.tree_node*, %union.tree_node** %t, align 8
  %int_cst = bitcast %union.tree_node* %15 to %struct.tree_int_cst*
  %int_cst13 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %high = getelementptr inbounds %struct.anon, %struct.anon* %int_cst13, i32 0, i32 1
  %16 = load i64, i64* %high, align 8
  %17 = load %union.tree_node*, %union.tree_node** %t, align 8
  %int_cst14 = bitcast %union.tree_node* %17 to %struct.tree_int_cst*
  %int_cst15 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst14, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst15, i32 0, i32 0
  %18 = load i64, i64* %low, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.442, i32 0, i32 0), i64 %16, i64 %18)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %sw.bb.6
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.17, %if.end
  ret void
}

declare void @pedwarn(i8*, ...) #1

declare void @finish_file() #1

declare i32 @global_bindings_p() #1

declare %union.tree_node* @poplevel(i32, i32, i32) #1

declare void @finish_fname_decls() #1

declare void @ggc_collect() #1

declare void @assemble_asm(%union.tree_node*) #1

declare void @error(i8*, ...) #1

declare i64 @tree_low_cst(%union.tree_node*, i32) #1

declare void @warning(i8*, ...) #1

declare void @shadow_tag(%union.tree_node*) #1

declare i32 @start_function(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare void @store_parm_decls() #1

declare void @finish_function(i32, i32) #1

declare %union.tree_node* @build_compound_expr(%union.tree_node*) #1

declare %union.tree_node* @build_tree_list(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @chainon(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build_indirect_ref(%union.tree_node*, i8*) #1

declare %union.tree_node* @build_unary_op(i32, %union.tree_node*, i32) #1

declare void @overflow_warning(%union.tree_node*) #1

declare %union.tree_node* @finish_label_address_expr(%union.tree_node*) #1

declare %union.tree_node* @c_sizeof(%union.tree_node*) #1

declare %union.tree_node* @groktypename(%union.tree_node*) #1

declare %union.tree_node* @c_alignof_expr(%union.tree_node*) #1

declare %union.tree_node* @c_alignof(%union.tree_node*) #1

declare %union.tree_node* @c_cast_expr(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @parser_build_binary_op(i32, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @truthvalue_conversion(%union.tree_node*) #1

declare %union.tree_node* @default_conversion(%union.tree_node*) #1

declare %union.tree_node* @build_conditional_expr(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @save_expr(%union.tree_node*) #1

declare %union.tree_node* @build_modify_expr(%union.tree_node*, i32, %union.tree_node*) #1

declare %union.tree_node* @build_external_ref(%union.tree_node*, i32) #1

declare %union.tree_node* @combine_strings(%union.tree_node*) #1

declare %union.tree_node* @fname_decl(i32, %union.tree_node*) #1

declare void @start_init(%union.tree_node*, %union.tree_node*, i32) #1

declare void @really_start_incremental_init(%union.tree_node*) #1

declare %union.tree_node* @pop_init_level(i32) #1

declare void @finish_init() #1

declare %union.tree_node* @build_compound_literal(%union.tree_node*, %union.tree_node*) #1

declare void @pop_label_level() #1

declare %struct.stmt_tree_s* @current_stmt_tree() #1

declare %union.tree_node* @build1(i32, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build_function_call(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build_va_arg(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @fold(%union.tree_node*) #1

declare i32 @integer_zerop(%union.tree_node*) #1

declare i32 @comptypes(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build_int_2_wide(i64, i64) #1

declare %union.tree_node* @build_array_ref(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build_component_ref(%union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @c_mark_varargs() #1

declare void @shadow_tag_warned(%union.tree_node*, i32) #1

declare void @pending_xref_error() #1

declare %union.tree_node* @tree_cons(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare void @split_specs_attrs(%union.tree_node*, %union.tree_node**, %union.tree_node**) #1

declare %union.tree_node* @lookup_name(%union.tree_node*) #1

declare %union.tree_node* @start_decl(%union.tree_node*, %union.tree_node*, i32, %union.tree_node*) #1

declare void @finish_decl(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare void @set_init_label(%union.tree_node*) #1

declare void @push_init_level(i32) #1

declare void @process_init_element(%union.tree_node*) #1

declare void @set_init_index(%union.tree_node*, %union.tree_node*) #1

declare void @push_function_context() #1

declare void @pop_function_context() #1

declare void @add_decl_stmt(%union.tree_node*) #1

declare %union.tree_node* @build_nt(i32, ...) #1

declare %union.tree_node* @set_array_declarator_type(%union.tree_node*, %union.tree_node*, i32) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @make_pointer_declarator(%union.tree_node* %type_quals_attrs, %union.tree_node* %target) #0 {
entry:
  %type_quals_attrs.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %union.tree_node*, align 8
  %quals = alloca %union.tree_node*, align 8
  %attrs = alloca %union.tree_node*, align 8
  %itarget = alloca %union.tree_node*, align 8
  store %union.tree_node* %type_quals_attrs, %union.tree_node** %type_quals_attrs.addr, align 8
  store %union.tree_node* %target, %union.tree_node** %target.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %target.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %itarget, align 8
  %1 = load %union.tree_node*, %union.tree_node** %type_quals_attrs.addr, align 8
  call void @split_specs_attrs(%union.tree_node* %1, %union.tree_node** %quals, %union.tree_node** %attrs)
  %2 = load %union.tree_node*, %union.tree_node** %attrs, align 8
  %cmp = icmp ne %union.tree_node* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %attrs, align 8
  %4 = load %union.tree_node*, %union.tree_node** %target.addr, align 8
  %call = call %union.tree_node* @tree_cons(%union.tree_node* %3, %union.tree_node* %4, %union.tree_node* null)
  store %union.tree_node* %call, %union.tree_node** %itarget, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %union.tree_node*, %union.tree_node** %quals, align 8
  %6 = load %union.tree_node*, %union.tree_node** %itarget, align 8
  %call1 = call %union.tree_node* @build1(i32 41, %union.tree_node* %5, %union.tree_node* %6)
  ret %union.tree_node* %call1
}

declare %union.tree_node* @start_struct(i32, %union.tree_node*) #1

declare %union.tree_node* @finish_struct(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @start_enum(%union.tree_node*) #1

declare %union.tree_node* @finish_enum(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @nreverse(%union.tree_node*) #1

declare %union.tree_node* @xref_tag(i32, %union.tree_node*) #1

declare %union.tree_node* @grokfield(i8*, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @decl_attributes(%union.tree_node**, %union.tree_node*, i32) #1

declare %union.tree_node* @build_enumerator(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build_array_declarator(%union.tree_node*, %union.tree_node*, i32, i32) #1

declare void @pushlevel(i32) #1

declare void @clear_last_expr() #1

declare %union.tree_node* @add_scope_stmt(i32, i32) #1

declare %union.tree_node* @c_begin_compound_stmt() #1

declare i32 @kept_level_p() #1

declare %union.tree_node* @shadow_label(%union.tree_node*) #1

declare %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) #1

declare void @keep_next_level() #1

declare void @push_label_level() #1

declare %union.tree_node* @add_stmt(%union.tree_node*) #1

declare %union.tree_node* @build_stmt(i32, ...) #1

declare void @c_finish_then() #1

declare %union.tree_node* @c_begin_if_stmt() #1

declare void @c_expand_start_cond(%union.tree_node*, i32, %union.tree_node*) #1

declare void @c_expand_start_else() #1

declare void @c_finish_else() #1

declare void @c_expand_end_cond() #1

declare void @warning_with_file_and_line(i8*, i32, i8*, ...) #1

declare %union.tree_node* @c_begin_while_stmt() #1

declare void @c_finish_while_stmt_cond(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @c_start_case(%union.tree_node*) #1

declare void @c_finish_case() #1

declare void @check_for_loop_decls() #1

declare %union.tree_node* @c_expand_expr_stmt(%union.tree_node*) #1

declare %union.tree_node* @build_break_stmt() #1

declare %union.tree_node* @build_continue_stmt() #1

declare %union.tree_node* @c_expand_return(%union.tree_node*) #1

declare %union.tree_node* @simple_asm_stmt(%union.tree_node*) #1

declare %union.tree_node* @build_asm_stmt(%union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @lookup_label(%union.tree_node*) #1

declare %union.tree_node* @do_case(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @define_label(i8*, i32, %union.tree_node*) #1

declare %struct.rtx_def* @emit_line_note(i8*, i32) #1

declare void @clear_parm_order() #1

declare void @declare_parm_level(i32) #1

declare void @parmlist_tags_warning() #1

declare %union.tree_node* @getdecls() #1

declare %union.tree_node* @get_parm_info(i32) #1

declare void @push_parm_decl(%union.tree_node*) #1

declare %union.tree_node* @size_int_wide(i64, i32) #1

; Function Attrs: nounwind uwtable
define void @c_set_yydebug(i32 %value) #0 {
entry:
  %value.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %value.addr, align 4
  store i32 %0, i32* @yydebug, align 4
  ret void
}

declare noalias i8* @xcalloc(i64, i64) #1

declare %union.tree_node* @get_identifier(i8*) #1

declare i8* @cpp_type2name(i32) #1

declare void @timevar_push(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_yylex() #5 {
entry:
  %retval = alloca i32, align 4
  br label %get_next

get_next:                                         ; preds = %sw.bb.51, %entry
  %call = call i32 @c_lex(%union.tree_node** bitcast (%union.YYSTYPE* @yylval to %union.tree_node**))
  store i32 %call, i32* @last_token, align 4
  %0 = load i32, i32* @last_token, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 11, label %sw.bb.11
    i32 12, label %sw.bb.12
    i32 13, label %sw.bb.13
    i32 16, label %sw.bb.14
    i32 17, label %sw.bb.15
    i32 18, label %sw.bb.16
    i32 19, label %sw.bb.17
    i32 22, label %sw.bb.18
    i32 24, label %sw.bb.19
    i32 25, label %sw.bb.20
    i32 26, label %sw.bb.21
    i32 27, label %sw.bb.22
    i32 28, label %sw.bb.23
    i32 29, label %sw.bb.24
    i32 30, label %sw.bb.25
    i32 31, label %sw.bb.26
    i32 32, label %sw.bb.27
    i32 33, label %sw.bb.28
    i32 34, label %sw.bb.29
    i32 35, label %sw.bb.30
    i32 36, label %sw.bb.31
    i32 37, label %sw.bb.32
    i32 42, label %sw.bb.33
    i32 43, label %sw.bb.34
    i32 44, label %sw.bb.35
    i32 45, label %sw.bb.36
    i32 47, label %sw.bb.37
    i32 48, label %sw.bb.38
    i32 49, label %sw.bb.39
    i32 50, label %sw.bb.40
    i32 51, label %sw.bb.41
    i32 20, label %sw.bb.42
    i32 21, label %sw.bb.43
    i32 23, label %sw.bb.44
    i32 46, label %sw.bb.45
    i32 67, label %sw.bb.46
    i32 56, label %sw.bb.47
    i32 57, label %sw.bb.49
    i32 58, label %sw.bb.49
    i32 59, label %sw.bb.49
    i32 61, label %sw.bb.50
    i32 62, label %sw.bb.50
    i32 55, label %sw.bb.51
    i32 52, label %sw.bb.51
    i32 53, label %sw.bb.51
    i32 54, label %sw.bb.51
    i32 38, label %sw.bb.51
    i32 39, label %sw.bb.51
    i32 14, label %sw.bb.51
    i32 15, label %sw.bb.51
    i32 40, label %sw.bb.51
    i32 41, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %get_next
  store i32 61, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %get_next
  store i32 33, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %get_next
  store i32 99, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 301, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %get_next
  store i32 97, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 301, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %get_next
  store i32 59, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 43, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %get_next
  store i32 60, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 45, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %get_next
  store i32 61, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 42, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %get_next
  store i32 62, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 47, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %get_next
  store i32 66, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 37, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %get_next
  store i32 88, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 38, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %get_next
  store i32 86, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 124, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %get_next
  store i32 87, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 94, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %get_next
  store i32 83, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 303, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %get_next
  store i32 82, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 302, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %get_next
  store i32 126, i32* %retval
  br label %return

sw.bb.15:                                         ; preds = %get_next
  store i32 299, i32* %retval
  br label %return

sw.bb.16:                                         ; preds = %get_next
  store i32 298, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %get_next
  store i32 63, i32* %retval
  br label %return

sw.bb.18:                                         ; preds = %get_next
  store i32 40, i32* %retval
  br label %return

sw.bb.19:                                         ; preds = %get_next
  store i32 101, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 300, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %get_next
  store i32 102, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 300, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %get_next
  store i32 100, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 301, i32* %retval
  br label %return

sw.bb.22:                                         ; preds = %get_next
  store i32 98, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 301, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %get_next
  store i32 59, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 297, i32* %retval
  br label %return

sw.bb.24:                                         ; preds = %get_next
  store i32 60, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 297, i32* %retval
  br label %return

sw.bb.25:                                         ; preds = %get_next
  store i32 61, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 297, i32* %retval
  br label %return

sw.bb.26:                                         ; preds = %get_next
  store i32 62, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 297, i32* %retval
  br label %return

sw.bb.27:                                         ; preds = %get_next
  store i32 66, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 297, i32* %retval
  br label %return

sw.bb.28:                                         ; preds = %get_next
  store i32 88, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 297, i32* %retval
  br label %return

sw.bb.29:                                         ; preds = %get_next
  store i32 86, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 297, i32* %retval
  br label %return

sw.bb.30:                                         ; preds = %get_next
  store i32 87, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 297, i32* %retval
  br label %return

sw.bb.31:                                         ; preds = %get_next
  store i32 83, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 297, i32* %retval
  br label %return

sw.bb.32:                                         ; preds = %get_next
  store i32 82, i32* bitcast (%union.YYSTYPE* @yylval to i32*), align 4
  store i32 297, i32* %retval
  br label %return

sw.bb.33:                                         ; preds = %get_next
  store i32 91, i32* %retval
  br label %return

sw.bb.34:                                         ; preds = %get_next
  store i32 93, i32* %retval
  br label %return

sw.bb.35:                                         ; preds = %get_next
  store i32 123, i32* %retval
  br label %return

sw.bb.36:                                         ; preds = %get_next
  store i32 125, i32* %retval
  br label %return

sw.bb.37:                                         ; preds = %get_next
  store i32 264, i32* %retval
  br label %return

sw.bb.38:                                         ; preds = %get_next
  store i32 305, i32* %retval
  br label %return

sw.bb.39:                                         ; preds = %get_next
  store i32 306, i32* %retval
  br label %return

sw.bb.40:                                         ; preds = %get_next
  store i32 308, i32* %retval
  br label %return

sw.bb.41:                                         ; preds = %get_next
  store i32 46, i32* %retval
  br label %return

sw.bb.42:                                         ; preds = %get_next
  store i32 58, i32* %retval
  br label %return

sw.bb.43:                                         ; preds = %get_next
  store i32 44, i32* %retval
  br label %return

sw.bb.44:                                         ; preds = %get_next
  store i32 41, i32* %retval
  br label %return

sw.bb.45:                                         ; preds = %get_next
  store i32 59, i32* %retval
  br label %return

sw.bb.46:                                         ; preds = %get_next
  store i32 0, i32* %retval
  br label %return

sw.bb.47:                                         ; preds = %get_next
  %call48 = call i32 @yylexname()
  store i32 %call48, i32* %retval
  br label %return

sw.bb.49:                                         ; preds = %get_next, %get_next, %get_next
  store i32 262, i32* %retval
  br label %return

sw.bb.50:                                         ; preds = %get_next, %get_next
  store i32 263, i32* %retval
  br label %return

sw.bb.51:                                         ; preds = %get_next, %get_next, %get_next, %get_next, %get_next, %get_next, %get_next, %get_next, %get_next, %get_next
  %1 = load i32, i32* @last_token, align 4
  %call52 = call i8* @cpp_type2name(i32 %1)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.437, i32 0, i32 0), i8* %call52)
  br label %get_next

sw.default:                                       ; preds = %get_next
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.438, i32 0, i32 0), i32 4984, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__FUNCTION__._yylex, i32 0, i32 0)) #8
  unreachable

return:                                           ; preds = %sw.bb.50, %sw.bb.49, %sw.bb.47, %sw.bb.46, %sw.bb.45, %sw.bb.44, %sw.bb.43, %sw.bb.42, %sw.bb.41, %sw.bb.40, %sw.bb.39, %sw.bb.38, %sw.bb.37, %sw.bb.36, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb.32, %sw.bb.31, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare void @timevar_pop(i32) #1

declare i32 @c_lex(%union.tree_node**) #1

; Function Attrs: nounwind uwtable
define internal i32 @yylexname() #0 {
entry:
  %retval = alloca i32, align 4
  %decl = alloca %union.tree_node*, align 8
  %rid_code = alloca i32, align 4
  %yycode = alloca i32, align 4
  %name = alloca i8*, align 8
  %0 = load %union.tree_node*, %union.tree_node** bitcast (%union.YYSTYPE* @yylval to %union.tree_node**), align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %lang_flag_0 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %lang_flag_0, align 8
  %bf.lshr = lshr i32 %bf.load, 24
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** bitcast (%union.YYSTYPE* @yylval to %union.tree_node**), align 8
  %2 = bitcast %union.tree_node* %1 to %struct.c_common_identifier*
  %node = getelementptr inbounds %struct.c_common_identifier, %struct.c_common_identifier* %2, i32 0, i32 1
  %rid_code1 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i32 0, i32 3
  %3 = load i8, i8* %rid_code1, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %rid_code, align 4
  %4 = load i32, i32* %rid_code, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [114 x i16], [114 x i16]* @rid_to_yy, i32 0, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv2 = sext i16 %5 to i32
  store i32 %conv2, i32* %yycode, align 4
  %6 = load i32, i32* %yycode, align 4
  %cmp = icmp eq i32 %6, 295
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load i32, i32* %rid_code, align 4
  %call = call i8* @fname_string(i32 %7)
  store i8* %call, i8** %name, align 8
  %8 = load i8*, i8** %name, align 8
  %call5 = call i64 @strlen(i8* %8) #7
  %add = add i64 %call5, 1
  %conv6 = trunc i64 %add to i32
  %9 = load i8*, i8** %name, align 8
  %call7 = call %union.tree_node* @build_string(i32 %conv6, i8* %9)
  store %union.tree_node* %call7, %union.tree_node** bitcast (%union.YYSTYPE* @yylval to %union.tree_node**), align 8
  %10 = load %union.tree_node*, %union.tree_node** bitcast (%union.YYSTYPE* @yylval to %union.tree_node**), align 8
  %common8 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %lang_flag_09 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load10 = load i32, i32* %lang_flag_09, align 8
  %bf.clear11 = and i32 %bf.load10, -16777217
  %bf.set = or i32 %bf.clear11, 16777216
  store i32 %bf.set, i32* %lang_flag_09, align 8
  store i32 61, i32* @last_token, align 4
  store i32 263, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %rid_code, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load %union.tree_node**, %union.tree_node*** @ridpointers, align 8
  %arrayidx13 = getelementptr inbounds %union.tree_node*, %union.tree_node** %12, i64 %idxprom12
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx13, align 8
  store %union.tree_node* %13, %union.tree_node** bitcast (%union.YYSTYPE* @yylval to %union.tree_node**), align 8
  %14 = load i32, i32* %yycode, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.14:                                        ; preds = %entry
  %15 = load %union.tree_node*, %union.tree_node** bitcast (%union.YYSTYPE* @yylval to %union.tree_node**), align 8
  %call15 = call %union.tree_node* @lookup_name(%union.tree_node* %15)
  store %union.tree_node* %call15, %union.tree_node** %decl, align 8
  %16 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %tobool16 = icmp ne %union.tree_node* %16, null
  br i1 %tobool16, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %if.end.14
  %17 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common18 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 2
  %bf.load19 = load i32, i32* %code, align 8
  %bf.clear20 = and i32 %bf.load19, 255
  %cmp21 = icmp eq i32 %bf.clear20, 33
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.17
  store i32 258, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.17
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.14
  store i32 257, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.23, %if.end, %if.then.4
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #6

declare i8* @fname_string(i32) #1

declare %union.tree_node* @build_string(i32, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
