; ModuleID = './MultiSource.Benchmarks.MallocBench/37.espresso.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32, i32, i32, i32 }
%struct.anon.0 = type { i8*, i32 }
%struct.anon.1 = type { i8*, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pla_types_struct = type { i8*, i32 }
%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.PLA_t = type { %struct.set_family*, %struct.set_family*, %struct.set_family*, i8*, i32, i32*, %struct.pair_struct*, i8**, %struct.symbolic_struct*, %struct.symbolic_struct* }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.pair_struct = type { i32, i32*, i32* }
%struct.symbolic_struct = type { %struct.symbolic_list_struct*, i32, %struct.symbolic_label_struct*, i32, %struct.symbolic_struct* }
%struct.symbolic_list_struct = type { i32, i32, %struct.symbolic_list_struct* }
%struct.symbolic_label_struct = type { i8*, %struct.symbolic_label_struct* }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"ESPRESSO\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"many\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"exact\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"qm\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"single_output\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"so_both\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"simplify\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"opo\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"opoall\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"pair\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"pairall\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"PLAverify\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"mapdc\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"fsm\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"contain\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"d1merge\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"d1merge_in\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"disjoint\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"dsharp\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"intersect\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"minterms\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"primes\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"sharp\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"essen\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"gasp\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"irred\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"make_sparse\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"reduce\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"taut\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"super_gasp\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"lexsort\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@option_table = global [44 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 37, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 9, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 24, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 28, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 28, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 29, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 27, i32 1, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 7, i32 1, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 19, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 20, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 21, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 22, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 2, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 30, i32 1, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 36, i32 2, i32 0, i32 1 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 2, i32 0, i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 34, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 16, i32 1, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 17, i32 1, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 41, i32 1, i32 0, i32 1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i32 3, i32 1, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i32 4, i32 1, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i32 40, i32 1, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 5, i32 1, i32 1, i32 0 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 6, i32 2, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i32 12, i32 2, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 18, i32 1, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 23, i32 1, i32 0, i32 1 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 38, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 26, i32 2, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 35, i32 2, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 39, i32 2, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 8, i32 1, i32 0, i32 1 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 10, i32 1, i32 1, i32 0 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 11, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 13, i32 1, i32 0, i32 1 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 15, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 25, i32 1, i32 0, i32 1 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 32, i32 1, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 31, i32 1, i32 1, i32 1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 14, i32 1, i32 0, i32 0 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 33, i32 1, i32 1, i32 1 }, %struct.anon { i8* null, i32 42, i32 0, i32 0, i32 0 }], align 16
@.str.43 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"compl\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"expand1\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"irred1\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"reduce1\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"mincov\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"mincov1\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"sparse\00", align 1
@debug_table = global [17 x %struct.anon.0] [%struct.anon.0 { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.43, i32 0, i32 0), i32 10614 }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 1 }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 2 }, %struct.anon.0 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 4 }, %struct.anon.0 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 12 }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 32 }, %struct.anon.0 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 16416 }, %struct.anon.0 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 64 }, %struct.anon.0 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 192 }, %struct.anon.0 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 2048 }, %struct.anon.0 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i32 6144 }, %struct.anon.0 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 256 }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 8192 }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 512 }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 16 }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 1024 }, %struct.anon.0 zeroinitializer], align 16
@.str.51 = private unnamed_addr constant [4 x i8] c"eat\00", align 1
@echo_comments = external global i32, align 4
@.str.52 = private unnamed_addr constant [8 x i8] c"eatdots\00", align 1
@echo_unknown_commands = external global i32, align 4
@.str.53 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@single_expand = external global i32, align 4
@.str.54 = private unnamed_addr constant [5 x i8] c"kiss\00", align 1
@kiss = external global i32, align 4
@.str.55 = private unnamed_addr constant [5 x i8] c"ness\00", align 1
@remove_essential = external global i32, align 4
@.str.56 = private unnamed_addr constant [5 x i8] c"nirr\00", align 1
@force_irredundant = external global i32, align 4
@.str.57 = private unnamed_addr constant [8 x i8] c"nunwrap\00", align 1
@unwrap_onset = external global i32, align 4
@.str.58 = private unnamed_addr constant [6 x i8] c"onset\00", align 1
@recompute_onset = external global i32, align 4
@.str.59 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@pos = external global i32, align 4
@.str.60 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@use_random_order = external global i32, align 4
@.str.61 = private unnamed_addr constant [7 x i8] c"strong\00", align 1
@use_super_gasp = external global i32, align 4
@esp_opt_table = global [12 x %struct.anon.1] [%struct.anon.1 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32* @echo_comments, i32 0 }, %struct.anon.1 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i32* @echo_unknown_commands, i32 0 }, %struct.anon.1 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32* @single_expand, i32 1 }, %struct.anon.1 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32* @kiss, i32 1 }, %struct.anon.1 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32* @remove_essential, i32 0 }, %struct.anon.1 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32* @force_irredundant, i32 0 }, %struct.anon.1 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i32* @unwrap_onset, i32 0 }, %struct.anon.1 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i32* @recompute_onset, i32 1 }, %struct.anon.1 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i32* @pos, i32 1 }, %struct.anon.1 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32* @use_random_order, i32 1 }, %struct.anon.1 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32* @use_super_gasp, i32 1 }, %struct.anon.1 zeroinitializer], align 16
@debug = external global i32, align 4
@verbose_debug = external global i32, align 4
@print_solution = external global i32, align 4
@summary = external global i32, align 4
@trace = external global i32, align 4
@.str.62 = private unnamed_addr constant [17 x i8] c"D:S:de:o:r:stv:x\00", align 1
@optarg = external global i8*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.63 = private unnamed_addr constant [25 x i8] c"%s: bad subcommand \22%s\22\0A\00", align 1
@pla_types = external global [0 x %struct.pla_types_struct], align 8
@.str.64 = private unnamed_addr constant [26 x i8] c"%s: bad output type \22%s\22\0A\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"%s: bad espresso option \22%s\22\0A\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"%s: bad debug type \22%s\22\0A\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"%s: bad output range \22%s\22\0A\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"# espresso\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str.73 = private unnamed_addr constant [58 x i8] c"UC Berkeley, Espresso Version #2.3, Release date 01/31/88\00", align 1
@optind = external global i32, align 4
@.str.74 = private unnamed_addr constant [35 x i8] c"trailing arguments on command line\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"ESPRESSO   \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@cube = external global %struct.cube_struct, align 8
@last_fp = internal global %struct._IO_FILE* null, align 8
@.str.76 = private unnamed_addr constant [11 x i8] c"SIMPLIFY  \00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"PRIMES     \00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"ON-set is%sa tautology\0A\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c" not \00", align 1
@.str.81 = private unnamed_addr constant [53 x i8] c"PLA comparison failed; the PLA's are not equivalent\0A\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"PLA's compared equal\0A\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"cover verification failed\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.84 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"%s: Unable to open %s\0A\00", align 1
@input_type = internal global i32 3, align 4
@.str.88 = private unnamed_addr constant [35 x i8] c"%s: Unable to find PLA on file %s\0A\00", align 1
@filename = external global i8*, align 8
@total_time = external global [16 x i64], align 16
@total_calls = external global [16 x i32], align 16
@.str.89 = private unnamed_addr constant [40 x i8] c"# %s\09%2d call(s) for %s (%2ld.%01ld%%)\0A\00", align 1
@total_name = external global [16 x i8*], align 16
@.str.90 = private unnamed_addr constant [12 x i8] c"READ       \00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"WRITE      \00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"COMPL      \00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"REDUCE     \00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"EXPAND     \00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"ESSEN      \00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"IRRED      \00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"REDUCE_GASP\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"EXPAND_GASP\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"IRRED_GASP \00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"MV_REDUCE  \00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"RAISE_IN   \00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"VERIFY     \00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"MINCOV     \00", align 1
@.str.104 = private unnamed_addr constant [17 x i8] c"                \00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c",\0A                \00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.109 = private unnamed_addr constant [38 x i8] c"SYNOPSIS: espresso [options] [file]\0A\0A\00", align 1
@.str.110 = private unnamed_addr constant [30 x i8] c"  -d        Enable debugging\0A\00", align 1
@.str.111 = private unnamed_addr constant [37 x i8] c"  -e[opt]   Select espresso option:\0A\00", align 1
@.str.112 = private unnamed_addr constant [64 x i8] c"                fast, ness, nirr, nunwrap, onset, pos, strong,\0A\00", align 1
@.str.113 = private unnamed_addr constant [44 x i8] c"                eat, eatdots, kiss, random\0A\00", align 1
@.str.114 = private unnamed_addr constant [35 x i8] c"  -o[type]  Select output format:\0A\00", align 1
@.str.115 = private unnamed_addr constant [63 x i8] c"                f, fd, fr, fdr, pleasure, eqntott, kiss, cons\0A\00", align 1
@.str.116 = private unnamed_addr constant [43 x i8] c"  -rn-m     Select range for subcommands:\0A\00", align 1
@.str.117 = private unnamed_addr constant [63 x i8] c"                d1merge: first and last variables (0 ... m-1)\0A\00", align 1
@.str.118 = private unnamed_addr constant [64 x i8] c"                minterms: first and last variables (0 ... m-1)\0A\00", align 1
@.str.119 = private unnamed_addr constant [60 x i8] c"                opoall: first and last outputs (0 ... m-1)\0A\00", align 1
@.str.120 = private unnamed_addr constant [45 x i8] c"  -s        Provide short execution summary\0A\00", align 1
@.str.121 = private unnamed_addr constant [44 x i8] c"  -t        Provide longer execution trace\0A\00", align 1
@.str.122 = private unnamed_addr constant [43 x i8] c"  -x        Suppress printing of solution\0A\00", align 1
@.str.123 = private unnamed_addr constant [54 x i8] c"  -v[type]  Verbose debugging detail (-v '' for all)\0A\00", align 1
@.str.124 = private unnamed_addr constant [39 x i8] c"  -D[cmd]   Execute subcommand 'cmd':\0A\00", align 1
@.str.125 = private unnamed_addr constant [46 x i8] c"  -Sn       Select strategy for subcommands:\0A\00", align 1
@.str.126 = private unnamed_addr constant [64 x i8] c"                opo: bit2=exact bit1=repeated bit0=skip sparse\0A\00", align 1
@.str.127 = private unnamed_addr constant [45 x i8] c"                opoall: 0=minimize, 1=exact\0A\00", align 1
@.str.128 = private unnamed_addr constant [67 x i8] c"                pair: 0=algebraic, 1=strongd, 2=espresso, 3=exact\0A\00", align 1
@.str.129 = private unnamed_addr constant [53 x i8] c"                pairall: 0=minimize, 1=exact, 2=opo\0A\00", align 1
@.str.130 = private unnamed_addr constant [50 x i8] c"                so_espresso: 0=minimize, 1=exact\0A\00", align 1
@.str.131 = private unnamed_addr constant [46 x i8] c"                so_both: 0=minimize, 1=exact\0A\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"-do\00", align 1
@.str.133 = private unnamed_addr constant [42 x i8] c"espresso: bad keyword \22%s\22 following -do\0A\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"-out\00", align 1
@.str.135 = private unnamed_addr constant [43 x i8] c"espresso: bad keyword \22%s\22 following -out\0A\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"-fdr\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"-fr\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"-f\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  %strategy = alloca i32, align 4
  %out_type = alloca i32, align 4
  %option = alloca i32, align 4
  %PLA = alloca %struct.PLA_t*, align 8
  %PLA1 = alloca %struct.PLA_t*, align 8
  %F = alloca %struct.set_family*, align 8
  %Fold = alloca %struct.set_family*, align 8
  %Dold = alloca %struct.set_family*, align 8
  %last1 = alloca i32*, align 8
  %p = alloca i32*, align 8
  %cost = alloca %struct.cost_struct, align 4
  %error = alloca i32, align 4
  %exact_cover = alloca i32, align 4
  %start = alloca i64, align 8
  %t = alloca i64, align 8
  %pla_type = alloca i32, align 4
  %t184 = alloca i64, align 8
  %t207 = alloca i64, align 8
  %t232 = alloca i64, align 8
  %t240 = alloca i64, align 8
  %t248 = alloca i64, align 8
  %t272 = alloca i64, align 8
  %t305 = alloca i64, align 8
  %t317 = alloca i64, align 8
  %t445 = alloca i64, align 8
  %t458 = alloca i64, align 8
  %T1 = alloca %struct.set_family*, align 8
  %T2 = alloca %struct.set_family*, align 8
  %T = alloca %struct.set_family*, align 8
  %E = alloca %struct.set_family*, align 8
  %t498 = alloca i64, align 8
  %t504 = alloca i64, align 8
  %t510 = alloca i64, align 8
  %t519 = alloca i64, align 8
  %t525 = alloca i64, align 8
  %t549 = alloca i64, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i64 (...) @util_cpu_time()
  store i64 %call, i64* %start, align 8
  store i32 0, i32* %error, align 4
  %call1 = call i32 @init_runtime()
  store i32 0, i32* %option, align 4
  store i32 1, i32* %out_type, align 4
  store i32 0, i32* @debug, align 4
  store i32 0, i32* @verbose_debug, align 4
  store i32 1, i32* @print_solution, align 4
  store i32 0, i32* @summary, align 4
  store i32 0, i32* @trace, align 4
  store i32 0, i32* %strategy, align 4
  store i32 -1, i32* %first, align 4
  store i32 -1, i32* %last, align 4
  store i32 1, i32* @remove_essential, align 4
  store i32 1, i32* @force_irredundant, align 4
  store i32 1, i32* @unwrap_onset, align 4
  store i32 0, i32* @single_expand, align 4
  store i32 0, i32* @pos, align 4
  store i32 0, i32* @recompute_onset, align 4
  store i32 0, i32* @use_super_gasp, align 4
  store i32 0, i32* @use_random_order, align 4
  store i32 0, i32* @kiss, align 4
  store i32 1, i32* @echo_comments, align 4
  store i32 1, i32* @echo_unknown_commands, align 4
  store i32 0, i32* %exact_cover, align 4
  %0 = load i8**, i8*** %argv.addr, align 8
  %call2 = call i32 @backward_compatibility_hack(i32* %argc.addr, i8** %0, i32* %option, i32* %out_type)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load i32, i32* %argc.addr, align 4
  %2 = load i8**, i8*** %argv.addr, align 8
  %call3 = call i32 (i32, i8**, i8*, ...) bitcast (i32 (...)* @espresso_getopt to i32 (i32, i8**, i8*, ...)*)(i32 %1, i8** %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i32 0, i32 0))
  store i32 %call3, i32* %i, align 4
  %cmp = icmp ne i32 %call3, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  switch i32 %3, label %sw.default [
    i32 68, label %sw.bb
    i32 111, label %sw.bb.18
    i32 101, label %sw.bb.44
    i32 100, label %sw.bb.74
    i32 118, label %sw.bb.75
    i32 116, label %sw.bb.103
    i32 115, label %sw.bb.104
    i32 120, label %sw.bb.105
    i32 83, label %sw.bb.106
    i32 114, label %sw.bb.108
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %cmp4 = icmp ne i8* %5, null
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** @optarg, align 8
  %7 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom5
  %name7 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx6, i32 0, i32 0
  %8 = load i8*, i8** %name7, align 8
  %call8 = call i32 @strcmp(i8* %6, i8* %8) #5
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %j, align 4
  store i32 %9, i32* %option, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom10
  %name12 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx11, i32 0, i32 0
  %12 = load i8*, i8** %name12, align 8
  %cmp13 = icmp eq i8* %12, null
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %for.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx15, align 8
  %16 = load i8*, i8** @optarg, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i32 0, i32 0), i8* %15, i8* %16)
  call void @exit(i32 1) #6
  unreachable

if.end.17:                                        ; preds = %for.end
  br label %sw.epilog

sw.bb.18:                                         ; preds = %while.body
  store i32 0, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.33, %sw.bb.18
  %17 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [0 x %struct.pla_types_struct], [0 x %struct.pla_types_struct]* @pla_types, i32 0, i64 %idxprom20
  %key = getelementptr inbounds %struct.pla_types_struct, %struct.pla_types_struct* %arrayidx21, i32 0, i32 0
  %18 = load i8*, i8** %key, align 8
  %cmp22 = icmp ne i8* %18, null
  br i1 %cmp22, label %for.body.23, label %for.end.35

for.body.23:                                      ; preds = %for.cond.19
  %19 = load i8*, i8** @optarg, align 8
  %20 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [0 x %struct.pla_types_struct], [0 x %struct.pla_types_struct]* @pla_types, i32 0, i64 %idxprom24
  %key26 = getelementptr inbounds %struct.pla_types_struct, %struct.pla_types_struct* %arrayidx25, i32 0, i32 0
  %21 = load i8*, i8** %key26, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 1
  %call27 = call i32 @strcmp(i8* %19, i8* %add.ptr) #5
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %for.body.23
  %22 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.pla_types_struct], [0 x %struct.pla_types_struct]* @pla_types, i32 0, i64 %idxprom30
  %value = getelementptr inbounds %struct.pla_types_struct, %struct.pla_types_struct* %arrayidx31, i32 0, i32 1
  %23 = load i32, i32* %value, align 4
  store i32 %23, i32* %out_type, align 4
  br label %for.end.35

if.end.32:                                        ; preds = %for.body.23
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %24 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %24, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond.19

for.end.35:                                       ; preds = %if.then.29, %for.cond.19
  %25 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %25 to i64
  %arrayidx37 = getelementptr inbounds [0 x %struct.pla_types_struct], [0 x %struct.pla_types_struct]* @pla_types, i32 0, i64 %idxprom36
  %key38 = getelementptr inbounds %struct.pla_types_struct, %struct.pla_types_struct* %arrayidx37, i32 0, i32 0
  %26 = load i8*, i8** %key38, align 8
  %cmp39 = icmp eq i8* %26, null
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %for.end.35
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %28, i64 0
  %29 = load i8*, i8** %arrayidx41, align 8
  %30 = load i8*, i8** @optarg, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i32 0, i32 0), i8* %29, i8* %30)
  call void @exit(i32 1) #6
  unreachable

if.end.43:                                        ; preds = %for.end.35
  br label %sw.epilog

sw.bb.44:                                         ; preds = %while.body
  store i32 0, i32* %j, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.63, %sw.bb.44
  %31 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %31 to i64
  %arrayidx47 = getelementptr inbounds [12 x %struct.anon.1], [12 x %struct.anon.1]* @esp_opt_table, i32 0, i64 %idxprom46
  %name48 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx47, i32 0, i32 0
  %32 = load i8*, i8** %name48, align 8
  %cmp49 = icmp ne i8* %32, null
  br i1 %cmp49, label %for.body.50, label %for.end.65

for.body.50:                                      ; preds = %for.cond.45
  %33 = load i8*, i8** @optarg, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [12 x %struct.anon.1], [12 x %struct.anon.1]* @esp_opt_table, i32 0, i64 %idxprom51
  %name53 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx52, i32 0, i32 0
  %35 = load i8*, i8** %name53, align 8
  %call54 = call i32 @strcmp(i8* %33, i8* %35) #5
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then.56, label %if.end.62

if.then.56:                                       ; preds = %for.body.50
  %36 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %36 to i64
  %arrayidx58 = getelementptr inbounds [12 x %struct.anon.1], [12 x %struct.anon.1]* @esp_opt_table, i32 0, i64 %idxprom57
  %value59 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx58, i32 0, i32 2
  %37 = load i32, i32* %value59, align 4
  %38 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %38 to i64
  %arrayidx61 = getelementptr inbounds [12 x %struct.anon.1], [12 x %struct.anon.1]* @esp_opt_table, i32 0, i64 %idxprom60
  %variable = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx61, i32 0, i32 1
  %39 = load i32*, i32** %variable, align 8
  store i32 %37, i32* %39, align 4
  br label %for.end.65

if.end.62:                                        ; preds = %for.body.50
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %40 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %40, 1
  store i32 %inc64, i32* %j, align 4
  br label %for.cond.45

for.end.65:                                       ; preds = %if.then.56, %for.cond.45
  %41 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %41 to i64
  %arrayidx67 = getelementptr inbounds [12 x %struct.anon.1], [12 x %struct.anon.1]* @esp_opt_table, i32 0, i64 %idxprom66
  %name68 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx67, i32 0, i32 0
  %42 = load i8*, i8** %name68, align 8
  %cmp69 = icmp eq i8* %42, null
  br i1 %cmp69, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %for.end.65
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = load i8**, i8*** %argv.addr, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %44, i64 0
  %45 = load i8*, i8** %arrayidx71, align 8
  %46 = load i8*, i8** @optarg, align 8
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.65, i32 0, i32 0), i8* %45, i8* %46)
  call void @exit(i32 1) #6
  unreachable

if.end.73:                                        ; preds = %for.end.65
  br label %sw.epilog

sw.bb.74:                                         ; preds = %while.body
  %47 = load i32, i32* getelementptr inbounds ([17 x %struct.anon.0], [17 x %struct.anon.0]* @debug_table, i32 0, i64 0, i32 1), align 4
  store i32 %47, i32* @debug, align 4
  store i32 1, i32* @trace, align 4
  store i32 1, i32* @summary, align 4
  br label %sw.epilog

sw.bb.75:                                         ; preds = %while.body
  store i32 1, i32* @verbose_debug, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.92, %sw.bb.75
  %48 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %48 to i64
  %arrayidx78 = getelementptr inbounds [17 x %struct.anon.0], [17 x %struct.anon.0]* @debug_table, i32 0, i64 %idxprom77
  %name79 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx78, i32 0, i32 0
  %49 = load i8*, i8** %name79, align 8
  %cmp80 = icmp ne i8* %49, null
  br i1 %cmp80, label %for.body.81, label %for.end.94

for.body.81:                                      ; preds = %for.cond.76
  %50 = load i8*, i8** @optarg, align 8
  %51 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %51 to i64
  %arrayidx83 = getelementptr inbounds [17 x %struct.anon.0], [17 x %struct.anon.0]* @debug_table, i32 0, i64 %idxprom82
  %name84 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx83, i32 0, i32 0
  %52 = load i8*, i8** %name84, align 8
  %call85 = call i32 @strcmp(i8* %50, i8* %52) #5
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then.87, label %if.end.91

if.then.87:                                       ; preds = %for.body.81
  %53 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %53 to i64
  %arrayidx89 = getelementptr inbounds [17 x %struct.anon.0], [17 x %struct.anon.0]* @debug_table, i32 0, i64 %idxprom88
  %value90 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx89, i32 0, i32 1
  %54 = load i32, i32* %value90, align 4
  %55 = load i32, i32* @debug, align 4
  %or = or i32 %55, %54
  store i32 %or, i32* @debug, align 4
  br label %for.end.94

if.end.91:                                        ; preds = %for.body.81
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %56 = load i32, i32* %j, align 4
  %inc93 = add nsw i32 %56, 1
  store i32 %inc93, i32* %j, align 4
  br label %for.cond.76

for.end.94:                                       ; preds = %if.then.87, %for.cond.76
  %57 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %57 to i64
  %arrayidx96 = getelementptr inbounds [17 x %struct.anon.0], [17 x %struct.anon.0]* @debug_table, i32 0, i64 %idxprom95
  %name97 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx96, i32 0, i32 0
  %58 = load i8*, i8** %name97, align 8
  %cmp98 = icmp eq i8* %58, null
  br i1 %cmp98, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %for.end.94
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = load i8**, i8*** %argv.addr, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %60, i64 0
  %61 = load i8*, i8** %arrayidx100, align 8
  %62 = load i8*, i8** @optarg, align 8
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i32 0, i32 0), i8* %61, i8* %62)
  call void @exit(i32 1) #6
  unreachable

if.end.102:                                       ; preds = %for.end.94
  br label %sw.epilog

sw.bb.103:                                        ; preds = %while.body
  store i32 1, i32* @trace, align 4
  br label %sw.epilog

sw.bb.104:                                        ; preds = %while.body
  store i32 1, i32* @summary, align 4
  br label %sw.epilog

sw.bb.105:                                        ; preds = %while.body
  store i32 0, i32* @print_solution, align 4
  br label %sw.epilog

sw.bb.106:                                        ; preds = %while.body
  %63 = load i8*, i8** @optarg, align 8
  %call107 = call i32 @atoi(i8* %63)
  store i32 %call107, i32* %strategy, align 4
  br label %sw.epilog

sw.bb.108:                                        ; preds = %while.body
  %64 = load i8*, i8** @optarg, align 8
  %call109 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32* %first, i32* %last) #7
  %cmp110 = icmp slt i32 %call109, 2
  br i1 %cmp110, label %if.then.111, label %if.end.114

if.then.111:                                      ; preds = %sw.bb.108
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = load i8**, i8*** %argv.addr, align 8
  %arrayidx112 = getelementptr inbounds i8*, i8** %66, i64 0
  %67 = load i8*, i8** %arrayidx112, align 8
  %68 = load i8*, i8** @optarg, align 8
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.68, i32 0, i32 0), i8* %67, i8* %68)
  call void @exit(i32 1) #6
  unreachable

if.end.114:                                       ; preds = %sw.bb.108
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %call115 = call i32 @usage()
  call void @exit(i32 1) #6
  unreachable

sw.epilog:                                        ; preds = %if.end.114, %sw.bb.106, %sw.bb.105, %sw.bb.104, %sw.bb.103, %if.end.102, %sw.bb.74, %if.end.73, %if.end.43, %if.end.17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %69 = load i32, i32* @summary, align 4
  %tobool = icmp ne i32 %69, 0
  br i1 %tobool, label %if.then.117, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %70 = load i32, i32* @trace, align 4
  %tobool116 = icmp ne i32 %70, 0
  br i1 %tobool116, label %if.then.117, label %if.end.131

if.then.117:                                      ; preds = %lor.lhs.false, %while.end
  %call118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.126, %if.then.117
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %argc.addr, align 4
  %cmp120 = icmp slt i32 %71, %72
  br i1 %cmp120, label %for.body.121, label %for.end.128

for.body.121:                                     ; preds = %for.cond.119
  %73 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %73 to i64
  %74 = load i8**, i8*** %argv.addr, align 8
  %arrayidx123 = getelementptr inbounds i8*, i8** %74, i64 %idxprom122
  %75 = load i8*, i8** %arrayidx123, align 8
  %call124 = call i8* @mybasename(i8* %75)
  %call125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), i8* %call124)
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.body.121
  %76 = load i32, i32* %i, align 4
  %inc127 = add nsw i32 %76, 1
  store i32 %inc127, i32* %i, align 4
  br label %for.cond.119

for.end.128:                                      ; preds = %for.cond.119
  %call129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0))
  %call130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end.131

if.end.131:                                       ; preds = %for.end.128, %lor.lhs.false
  store %struct.PLA_t* null, %struct.PLA_t** %PLA1, align 8
  store %struct.PLA_t* null, %struct.PLA_t** %PLA, align 8
  %77 = load i32, i32* %option, align 4
  %idxprom132 = sext i32 %77 to i64
  %arrayidx133 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom132
  %num_plas = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx133, i32 0, i32 2
  %78 = load i32, i32* %num_plas, align 4
  switch i32 %78, label %sw.epilog.149 [
    i32 2, label %sw.bb.134
    i32 1, label %sw.bb.142
  ]

sw.bb.134:                                        ; preds = %if.end.131
  %79 = load i32, i32* @optind, align 4
  %add = add nsw i32 %79, 2
  %80 = load i32, i32* %argc.addr, align 4
  %cmp135 = icmp slt i32 %add, %80
  br i1 %cmp135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %sw.bb.134
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.74, i32 0, i32 0))
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %sw.bb.134
  %81 = load i32, i32* @optind, align 4
  %inc138 = add nsw i32 %81, 1
  store i32 %inc138, i32* @optind, align 4
  %82 = load i32, i32* %argc.addr, align 4
  %83 = load i8**, i8*** %argv.addr, align 8
  %84 = load i32, i32* %option, align 4
  %85 = load i32, i32* %out_type, align 4
  %call139 = call i32 @getPLA(i32 %81, i32 %82, i8** %83, i32 %84, %struct.PLA_t** %PLA, i32 %85)
  %86 = load i32, i32* @optind, align 4
  %inc140 = add nsw i32 %86, 1
  store i32 %inc140, i32* @optind, align 4
  %87 = load i32, i32* %argc.addr, align 4
  %88 = load i8**, i8*** %argv.addr, align 8
  %89 = load i32, i32* %option, align 4
  %90 = load i32, i32* %out_type, align 4
  %call141 = call i32 @getPLA(i32 %86, i32 %87, i8** %88, i32 %89, %struct.PLA_t** %PLA1, i32 %90)
  br label %sw.epilog.149

sw.bb.142:                                        ; preds = %if.end.131
  %91 = load i32, i32* @optind, align 4
  %add143 = add nsw i32 %91, 1
  %92 = load i32, i32* %argc.addr, align 4
  %cmp144 = icmp slt i32 %add143, %92
  br i1 %cmp144, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %sw.bb.142
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.74, i32 0, i32 0))
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %sw.bb.142
  %93 = load i32, i32* @optind, align 4
  %inc147 = add nsw i32 %93, 1
  store i32 %inc147, i32* @optind, align 4
  %94 = load i32, i32* %argc.addr, align 4
  %95 = load i8**, i8*** %argv.addr, align 8
  %96 = load i32, i32* %option, align 4
  %97 = load i32, i32* %out_type, align 4
  %call148 = call i32 @getPLA(i32 %93, i32 %94, i8** %95, i32 %96, %struct.PLA_t** %PLA, i32 %97)
  br label %sw.epilog.149

sw.epilog.149:                                    ; preds = %if.end.131, %if.end.146, %if.end.137
  %98 = load i32, i32* @optind, align 4
  %99 = load i32, i32* %argc.addr, align 4
  %cmp150 = icmp slt i32 %98, %99
  br i1 %cmp150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %sw.epilog.149
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.74, i32 0, i32 0))
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %sw.epilog.149
  %100 = load i32, i32* @summary, align 4
  %tobool153 = icmp ne i32 %100, 0
  br i1 %tobool153, label %if.then.156, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %if.end.152
  %101 = load i32, i32* @trace, align 4
  %tobool155 = icmp ne i32 %101, 0
  br i1 %tobool155, label %if.then.156, label %if.end.163

if.then.156:                                      ; preds = %lor.lhs.false.154, %if.end.152
  %102 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %cmp157 = icmp ne %struct.PLA_t* %102, null
  br i1 %cmp157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.then.156
  %103 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  call void (%struct.PLA_t*, ...) bitcast (void (...)* @PLA_summary to void (%struct.PLA_t*, ...)*)(%struct.PLA_t* %103)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %if.then.156
  %104 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %cmp160 = icmp ne %struct.PLA_t* %104, null
  br i1 %cmp160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.159
  %105 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  call void (%struct.PLA_t*, ...) bitcast (void (...)* @PLA_summary to void (%struct.PLA_t*, ...)*)(%struct.PLA_t* %105)
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.161, %if.end.159
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %lor.lhs.false.154
  %106 = load i32, i32* %option, align 4
  %idxprom164 = sext i32 %106 to i64
  %arrayidx165 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom164
  %key166 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx165, i32 0, i32 1
  %107 = load i32, i32* %key166, align 4
  switch i32 %107, label %sw.epilog.531 [
    i32 0, label %sw.bb.167
    i32 37, label %sw.bb.183
    i32 27, label %sw.bb.206
    i32 28, label %sw.bb.219
    i32 29, label %sw.bb.225
    i32 10, label %sw.bb.231
    i32 13, label %sw.bb.239
    i32 25, label %sw.bb.247
    i32 8, label %sw.bb.255
    i32 31, label %sw.bb.278
    i32 11, label %sw.bb.284
    i32 15, label %sw.bb.290
    i32 9, label %sw.bb.296
    i32 24, label %sw.bb.297
    i32 23, label %sw.bb.316
    i32 16, label %sw.bb.330
    i32 19, label %sw.bb.332
    i32 20, label %sw.bb.333
    i32 21, label %sw.bb.351
    i32 22, label %sw.bb.352
    i32 7, label %sw.bb.354
    i32 32, label %sw.bb.355
    i32 3, label %sw.bb.361
    i32 12, label %sw.bb.365
    i32 35, label %sw.bb.370
    i32 5, label %sw.bb.375
    i32 6, label %sw.bb.379
    i32 26, label %sw.bb.384
    i32 14, label %sw.bb.389
    i32 30, label %sw.bb.393
    i32 18, label %sw.bb.397
    i32 4, label %sw.bb.413
    i32 40, label %sw.bb.434
    i32 1, label %sw.bb.444
    i32 36, label %sw.bb.454
    i32 2, label %sw.bb.467
    i32 17, label %sw.bb.469
    i32 34, label %sw.bb.471
    i32 38, label %sw.bb.473
    i32 39, label %sw.bb.479
    i32 41, label %sw.bb.490
    i32 33, label %sw.bb.492
  ]

sw.bb.167:                                        ; preds = %if.end.163
  %108 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F168 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %108, i32 0, i32 0
  %109 = load %struct.set_family*, %struct.set_family** %F168, align 8
  %call169 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %109)
  store %struct.set_family* %call169, %struct.set_family** %Fold, align 8
  %110 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F170 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %110, i32 0, i32 0
  %111 = load %struct.set_family*, %struct.set_family** %F170, align 8
  %112 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %112, i32 0, i32 1
  %113 = load %struct.set_family*, %struct.set_family** %D, align 8
  %114 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %114, i32 0, i32 2
  %115 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call171 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @espresso to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %111, %struct.set_family* %113, %struct.set_family* %115)
  %116 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F172 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %116, i32 0, i32 0
  store %struct.set_family* %call171, %struct.set_family** %F172, align 8
  %call173 = call i64 (...) @util_cpu_time()
  store i64 %call173, i64* %t, align 8
  %117 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F174 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %117, i32 0, i32 0
  %118 = load %struct.set_family*, %struct.set_family** %F174, align 8
  %119 = load %struct.set_family*, %struct.set_family** %Fold, align 8
  %120 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D175 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %120, i32 0, i32 1
  %121 = load %struct.set_family*, %struct.set_family** %D175, align 8
  %call176 = call i32 (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (i32 (...)* @verify to i32 (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %118, %struct.set_family* %119, %struct.set_family* %121)
  store i32 %call176, i32* %error, align 4
  %122 = load i64, i64* %t, align 8
  %123 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F177 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %123, i32 0, i32 0
  %124 = load %struct.set_family*, %struct.set_family** %F177, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %122, i32 14, %struct.set_family* %124, %struct.cost_struct* %cost)
  %125 = load i32, i32* %error, align 4
  %tobool178 = icmp ne i32 %125, 0
  br i1 %tobool178, label %if.then.179, label %if.else

if.then.179:                                      ; preds = %sw.bb.167
  store i32 0, i32* @print_solution, align 4
  %126 = load %struct.set_family*, %struct.set_family** %Fold, align 8
  %127 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F180 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %127, i32 0, i32 0
  store %struct.set_family* %126, %struct.set_family** %F180, align 8
  %128 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %call181 = call i32 (%struct.PLA_t*, ...) bitcast (i32 (...)* @check_consistency to i32 (%struct.PLA_t*, ...)*)(%struct.PLA_t* %128)
  br label %if.end.182

if.else:                                          ; preds = %sw.bb.167
  %129 = load %struct.set_family*, %struct.set_family** %Fold, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %129)
  br label %if.end.182

if.end.182:                                       ; preds = %if.else, %if.then.179
  br label %sw.epilog.531

sw.bb.183:                                        ; preds = %if.end.163
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb.183
  %call185 = call i64 (...) @util_cpu_time()
  store i64 %call185, i64* %t184, align 8
  %130 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F186 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %130, i32 0, i32 0
  %131 = load %struct.set_family*, %struct.set_family** %F186, align 8
  %132 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D187 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %132, i32 0, i32 1
  %133 = load %struct.set_family*, %struct.set_family** %D187, align 8
  %134 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R188 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %134, i32 0, i32 2
  %135 = load %struct.set_family*, %struct.set_family** %R188, align 8
  %call189 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @espresso to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %131, %struct.set_family* %133, %struct.set_family* %135)
  %136 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F190 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %136, i32 0, i32 0
  store %struct.set_family* %call189, %struct.set_family** %F190, align 8
  %137 = load i32, i32* @trace, align 4
  %tobool191 = icmp ne i32 %137, 0
  br i1 %tobool191, label %if.then.192, label %if.end.195

if.then.192:                                      ; preds = %do.body
  %138 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F193 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %138, i32 0, i32 0
  %139 = load %struct.set_family*, %struct.set_family** %F193, align 8
  %call194 = call i64 (...) @util_cpu_time()
  %140 = load i64, i64* %t184, align 8
  %sub = sub nsw i64 %call194, %140
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i64 %sub)
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.192, %do.body
  %141 = load i32, i32* @print_solution, align 4
  %tobool196 = icmp ne i32 %141, 0
  br i1 %tobool196, label %if.then.197, label %if.end.199

if.then.197:                                      ; preds = %if.end.195
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %143 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %144 = load i32, i32* %out_type, align 4
  call void (%struct._IO_FILE*, %struct.PLA_t*, i32, ...) bitcast (void (...)* @fprint_pla to void (%struct._IO_FILE*, %struct.PLA_t*, i32, ...)*)(%struct._IO_FILE* %142, %struct.PLA_t* %143, i32 %144)
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call198 = call i32 @fflush(%struct._IO_FILE* %145)
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.197, %if.end.195
  %146 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %pla_type200 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %146, i32 0, i32 4
  %147 = load i32, i32* %pla_type200, align 4
  store i32 %147, i32* %pla_type, align 4
  %148 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  call void (%struct.PLA_t*, ...) bitcast (void (...)* @free_PLA to void (%struct.PLA_t*, ...)*)(%struct.PLA_t* %148)
  call void (...) @setdown_cube()
  %149 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %tobool201 = icmp ne i32* %149, null
  br i1 %tobool201, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %if.end.199
  %150 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %151 = bitcast i32* %150 to i8*
  call void @free(i8* %151)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.202, %if.end.199
  br label %do.cond

do.cond:                                          ; preds = %if.end.203
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @last_fp, align 8
  %153 = load i32, i32* %pla_type, align 4
  %call204 = call i32 (%struct._IO_FILE*, i32, i32, i32, %struct.PLA_t**, ...) bitcast (i32 (...)* @read_pla to i32 (%struct._IO_FILE*, i32, i32, i32, %struct.PLA_t**, ...)*)(%struct._IO_FILE* %152, i32 1, i32 1, i32 %153, %struct.PLA_t** %PLA)
  %cmp205 = icmp ne i32 %call204, -1
  br i1 %cmp205, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call void @exit(i32 0) #6
  unreachable

sw.bb.206:                                        ; preds = %if.end.163
  %call208 = call i64 (...) @util_cpu_time()
  store i64 %call208, i64* %t207, align 8
  %154 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F209 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %154, i32 0, i32 0
  %155 = load %struct.set_family*, %struct.set_family** %F209, align 8
  %call210 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %155)
  %call211 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @simplify to %struct.set_family* (i32**, ...)*)(i32** %call210)
  %156 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F212 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %156, i32 0, i32 0
  store %struct.set_family* %call211, %struct.set_family** %F212, align 8
  %157 = load i32, i32* @trace, align 4
  %tobool213 = icmp ne i32 %157, 0
  br i1 %tobool213, label %if.then.214, label %if.end.218

if.then.214:                                      ; preds = %sw.bb.206
  %158 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F215 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %158, i32 0, i32 0
  %159 = load %struct.set_family*, %struct.set_family** %F215, align 8
  %call216 = call i64 (...) @util_cpu_time()
  %160 = load i64, i64* %t207, align 8
  %sub217 = sub nsw i64 %call216, %160
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), i64 %sub217)
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.214, %sw.bb.206
  br label %sw.epilog.531

sw.bb.219:                                        ; preds = %if.end.163
  %161 = load i32, i32* %strategy, align 4
  %cmp220 = icmp slt i32 %161, 0
  br i1 %cmp220, label %if.then.223, label %lor.lhs.false.221

lor.lhs.false.221:                                ; preds = %sw.bb.219
  %162 = load i32, i32* %strategy, align 4
  %cmp222 = icmp sgt i32 %162, 1
  br i1 %cmp222, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %lor.lhs.false.221, %sw.bb.219
  store i32 0, i32* %strategy, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.223, %lor.lhs.false.221
  %163 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %164 = load i32, i32* %strategy, align 4
  call void (%struct.PLA_t*, i32, ...) bitcast (void (...)* @so_espresso to void (%struct.PLA_t*, i32, ...)*)(%struct.PLA_t* %163, i32 %164)
  br label %sw.epilog.531

sw.bb.225:                                        ; preds = %if.end.163
  %165 = load i32, i32* %strategy, align 4
  %cmp226 = icmp slt i32 %165, 0
  br i1 %cmp226, label %if.then.229, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %sw.bb.225
  %166 = load i32, i32* %strategy, align 4
  %cmp228 = icmp sgt i32 %166, 1
  br i1 %cmp228, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %lor.lhs.false.227, %sw.bb.225
  store i32 0, i32* %strategy, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.229, %lor.lhs.false.227
  %167 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %168 = load i32, i32* %strategy, align 4
  call void (%struct.PLA_t*, i32, ...) bitcast (void (...)* @so_both_espresso to void (%struct.PLA_t*, i32, ...)*)(%struct.PLA_t* %167, i32 %168)
  br label %sw.epilog.531

sw.bb.231:                                        ; preds = %if.end.163
  %call233 = call i64 (...) @util_cpu_time()
  store i64 %call233, i64* %t232, align 8
  %169 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F234 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %169, i32 0, i32 0
  %170 = load %struct.set_family*, %struct.set_family** %F234, align 8
  %171 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R235 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %171, i32 0, i32 2
  %172 = load %struct.set_family*, %struct.set_family** %R235, align 8
  %call236 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %170, %struct.set_family* %172, i32 0)
  %173 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F237 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %173, i32 0, i32 0
  store %struct.set_family* %call236, %struct.set_family** %F237, align 8
  %174 = load i64, i64* %t232, align 8
  %175 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F238 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %175, i32 0, i32 0
  %176 = load %struct.set_family*, %struct.set_family** %F238, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %174, i32 4, %struct.set_family* %176, %struct.cost_struct* %cost)
  br label %sw.epilog.531

sw.bb.239:                                        ; preds = %if.end.163
  %call241 = call i64 (...) @util_cpu_time()
  store i64 %call241, i64* %t240, align 8
  %177 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F242 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %177, i32 0, i32 0
  %178 = load %struct.set_family*, %struct.set_family** %F242, align 8
  %179 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D243 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %179, i32 0, i32 1
  %180 = load %struct.set_family*, %struct.set_family** %D243, align 8
  %call244 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %178, %struct.set_family* %180)
  %181 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F245 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %181, i32 0, i32 0
  store %struct.set_family* %call244, %struct.set_family** %F245, align 8
  %182 = load i64, i64* %t240, align 8
  %183 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F246 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %183, i32 0, i32 0
  %184 = load %struct.set_family*, %struct.set_family** %F246, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %182, i32 5, %struct.set_family* %184, %struct.cost_struct* %cost)
  br label %sw.epilog.531

sw.bb.247:                                        ; preds = %if.end.163
  %call249 = call i64 (...) @util_cpu_time()
  store i64 %call249, i64* %t248, align 8
  %185 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F250 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %185, i32 0, i32 0
  %186 = load %struct.set_family*, %struct.set_family** %F250, align 8
  %187 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D251 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %187, i32 0, i32 1
  %188 = load %struct.set_family*, %struct.set_family** %D251, align 8
  %call252 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @reduce to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %186, %struct.set_family* %188)
  %189 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F253 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %189, i32 0, i32 0
  store %struct.set_family* %call252, %struct.set_family** %F253, align 8
  %190 = load i64, i64* %t248, align 8
  %191 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F254 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %191, i32 0, i32 0
  %192 = load %struct.set_family*, %struct.set_family** %F254, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %190, i32 6, %struct.set_family* %192, %struct.cost_struct* %cost)
  br label %sw.epilog.531

sw.bb.255:                                        ; preds = %if.end.163
  %193 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F256 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %193, i32 0, i32 0
  %194 = load %struct.set_family*, %struct.set_family** %F256, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %194, i32 0, i32 5
  %195 = load i32*, i32** %data, align 8
  store i32* %195, i32** %p, align 8
  %196 = load i32*, i32** %p, align 8
  %197 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F257 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %197, i32 0, i32 0
  %198 = load %struct.set_family*, %struct.set_family** %F257, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %198, i32 0, i32 3
  %199 = load i32, i32* %count, align 4
  %200 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F258 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %200, i32 0, i32 0
  %201 = load %struct.set_family*, %struct.set_family** %F258, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %201, i32 0, i32 0
  %202 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %199, %202
  %idx.ext = sext i32 %mul to i64
  %add.ptr259 = getelementptr inbounds i32, i32* %196, i64 %idx.ext
  store i32* %add.ptr259, i32** %last1, align 8
  br label %for.cond.260

for.cond.260:                                     ; preds = %for.inc.266, %sw.bb.255
  %203 = load i32*, i32** %p, align 8
  %204 = load i32*, i32** %last1, align 8
  %cmp261 = icmp ult i32* %203, %204
  br i1 %cmp261, label %for.body.262, label %for.end.271

for.body.262:                                     ; preds = %for.cond.260
  %205 = load i32*, i32** %p, align 8
  %arrayidx263 = getelementptr inbounds i32, i32* %205, i64 0
  %206 = load i32, i32* %arrayidx263, align 4
  %or264 = or i32 %206, 1024
  store i32 %or264, i32* %arrayidx263, align 4
  %207 = load i32*, i32** %p, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %207, i64 0
  %208 = load i32, i32* %arrayidx265, align 4
  %and = and i32 %208, -16385
  store i32 %and, i32* %arrayidx265, align 4
  br label %for.inc.266

for.inc.266:                                      ; preds = %for.body.262
  %209 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F267 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %209, i32 0, i32 0
  %210 = load %struct.set_family*, %struct.set_family** %F267, align 8
  %wsize268 = getelementptr inbounds %struct.set_family, %struct.set_family* %210, i32 0, i32 0
  %211 = load i32, i32* %wsize268, align 4
  %212 = load i32*, i32** %p, align 8
  %idx.ext269 = sext i32 %211 to i64
  %add.ptr270 = getelementptr inbounds i32, i32* %212, i64 %idx.ext269
  store i32* %add.ptr270, i32** %p, align 8
  br label %for.cond.260

for.end.271:                                      ; preds = %for.cond.260
  %call273 = call i64 (...) @util_cpu_time()
  store i64 %call273, i64* %t272, align 8
  %213 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F274 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %213, i32 0, i32 0
  %214 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D275 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %214, i32 0, i32 1
  %call276 = call %struct.set_family* (%struct.set_family**, %struct.set_family**, ...) bitcast (%struct.set_family* (...)* @essential to %struct.set_family* (%struct.set_family**, %struct.set_family**, ...)*)(%struct.set_family** %F274, %struct.set_family** %D275)
  store %struct.set_family* %call276, %struct.set_family** %F, align 8
  %215 = load i64, i64* %t272, align 8
  %216 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F277 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %216, i32 0, i32 0
  %217 = load %struct.set_family*, %struct.set_family** %F277, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %215, i32 3, %struct.set_family* %217, %struct.cost_struct* %cost)
  %218 = load %struct.set_family*, %struct.set_family** %F, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %218)
  br label %sw.epilog.531

sw.bb.278:                                        ; preds = %if.end.163
  %219 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F279 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %219, i32 0, i32 0
  %220 = load %struct.set_family*, %struct.set_family** %F279, align 8
  %221 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D280 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %221, i32 0, i32 1
  %222 = load %struct.set_family*, %struct.set_family** %D280, align 8
  %223 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R281 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %223, i32 0, i32 2
  %224 = load %struct.set_family*, %struct.set_family** %R281, align 8
  %call282 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...) bitcast (%struct.set_family* (...)* @super_gasp to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* %220, %struct.set_family* %222, %struct.set_family* %224, %struct.cost_struct* %cost)
  %225 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F283 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %225, i32 0, i32 0
  store %struct.set_family* %call282, %struct.set_family** %F283, align 8
  br label %sw.epilog.531

sw.bb.284:                                        ; preds = %if.end.163
  %226 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F285 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %226, i32 0, i32 0
  %227 = load %struct.set_family*, %struct.set_family** %F285, align 8
  %228 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D286 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %228, i32 0, i32 1
  %229 = load %struct.set_family*, %struct.set_family** %D286, align 8
  %230 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R287 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %230, i32 0, i32 2
  %231 = load %struct.set_family*, %struct.set_family** %R287, align 8
  %call288 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...) bitcast (%struct.set_family* (...)* @last_gasp to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* %227, %struct.set_family* %229, %struct.set_family* %231, %struct.cost_struct* %cost)
  %232 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F289 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %232, i32 0, i32 0
  store %struct.set_family* %call288, %struct.set_family** %F289, align 8
  br label %sw.epilog.531

sw.bb.290:                                        ; preds = %if.end.163
  %233 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F291 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %233, i32 0, i32 0
  %234 = load %struct.set_family*, %struct.set_family** %F291, align 8
  %235 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D292 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %235, i32 0, i32 1
  %236 = load %struct.set_family*, %struct.set_family** %D292, align 8
  %237 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R293 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %237, i32 0, i32 2
  %238 = load %struct.set_family*, %struct.set_family** %R293, align 8
  %call294 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @make_sparse to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %234, %struct.set_family* %236, %struct.set_family* %238)
  %239 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F295 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %239, i32 0, i32 0
  store %struct.set_family* %call294, %struct.set_family** %F295, align 8
  br label %sw.epilog.531

sw.bb.296:                                        ; preds = %if.end.163
  store i32 1, i32* %exact_cover, align 4
  br label %sw.bb.297

sw.bb.297:                                        ; preds = %if.end.163, %sw.bb.296
  %240 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F298 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %240, i32 0, i32 0
  %241 = load %struct.set_family*, %struct.set_family** %F298, align 8
  %call299 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %241)
  store %struct.set_family* %call299, %struct.set_family** %Fold, align 8
  %242 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F300 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %242, i32 0, i32 0
  %243 = load %struct.set_family*, %struct.set_family** %F300, align 8
  %244 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D301 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %244, i32 0, i32 1
  %245 = load %struct.set_family*, %struct.set_family** %D301, align 8
  %246 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R302 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %246, i32 0, i32 2
  %247 = load %struct.set_family*, %struct.set_family** %R302, align 8
  %248 = load i32, i32* %exact_cover, align 4
  %call303 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @minimize_exact to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %243, %struct.set_family* %245, %struct.set_family* %247, i32 %248)
  %249 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F304 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %249, i32 0, i32 0
  store %struct.set_family* %call303, %struct.set_family** %F304, align 8
  %call306 = call i64 (...) @util_cpu_time()
  store i64 %call306, i64* %t305, align 8
  %250 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F307 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %250, i32 0, i32 0
  %251 = load %struct.set_family*, %struct.set_family** %F307, align 8
  %252 = load %struct.set_family*, %struct.set_family** %Fold, align 8
  %253 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D308 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %253, i32 0, i32 1
  %254 = load %struct.set_family*, %struct.set_family** %D308, align 8
  %call309 = call i32 (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (i32 (...)* @verify to i32 (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %251, %struct.set_family* %252, %struct.set_family* %254)
  store i32 %call309, i32* %error, align 4
  %255 = load i64, i64* %t305, align 8
  %256 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F310 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %256, i32 0, i32 0
  %257 = load %struct.set_family*, %struct.set_family** %F310, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %255, i32 14, %struct.set_family* %257, %struct.cost_struct* %cost)
  %258 = load i32, i32* %error, align 4
  %tobool311 = icmp ne i32 %258, 0
  br i1 %tobool311, label %if.then.312, label %if.end.315

if.then.312:                                      ; preds = %sw.bb.297
  store i32 0, i32* @print_solution, align 4
  %259 = load %struct.set_family*, %struct.set_family** %Fold, align 8
  %260 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F313 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %260, i32 0, i32 0
  store %struct.set_family* %259, %struct.set_family** %F313, align 8
  %261 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %call314 = call i32 (%struct.PLA_t*, ...) bitcast (i32 (...)* @check_consistency to i32 (%struct.PLA_t*, ...)*)(%struct.PLA_t* %261)
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.312, %sw.bb.297
  %262 = load %struct.set_family*, %struct.set_family** %Fold, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %262)
  br label %sw.epilog.531

sw.bb.316:                                        ; preds = %if.end.163
  %call318 = call i64 (...) @util_cpu_time()
  store i64 %call318, i64* %t317, align 8
  %263 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F319 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %263, i32 0, i32 0
  %264 = load %struct.set_family*, %struct.set_family** %F319, align 8
  %265 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D320 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %265, i32 0, i32 1
  %266 = load %struct.set_family*, %struct.set_family** %D320, align 8
  %call321 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %264, %struct.set_family* %266)
  %call322 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @primes_consensus to %struct.set_family* (i32**, ...)*)(i32** %call321)
  %267 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F323 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %267, i32 0, i32 0
  store %struct.set_family* %call322, %struct.set_family** %F323, align 8
  %268 = load i32, i32* @trace, align 4
  %tobool324 = icmp ne i32 %268, 0
  br i1 %tobool324, label %if.then.325, label %if.end.329

if.then.325:                                      ; preds = %sw.bb.316
  %269 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F326 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %269, i32 0, i32 0
  %270 = load %struct.set_family*, %struct.set_family** %F326, align 8
  %call327 = call i64 (...) @util_cpu_time()
  %271 = load i64, i64* %t317, align 8
  %sub328 = sub nsw i64 %call327, %271
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %270, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i32 0, i32 0), i64 %sub328)
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.325, %sw.bb.316
  br label %sw.epilog.531

sw.bb.330:                                        ; preds = %if.end.163
  %272 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F331 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %272, i32 0, i32 0
  %273 = load %struct.set_family*, %struct.set_family** %F331, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @map to void (%struct.set_family*, ...)*)(%struct.set_family* %273)
  store i32 0, i32* @print_solution, align 4
  br label %sw.epilog.531

sw.bb.332:                                        ; preds = %if.end.163
  %274 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %275 = load i32, i32* %strategy, align 4
  call void (%struct.PLA_t*, i32, ...) bitcast (void (...)* @phase_assignment to void (%struct.PLA_t*, i32, ...)*)(%struct.PLA_t* %274, i32 %275)
  br label %sw.epilog.531

sw.bb.333:                                        ; preds = %if.end.163
  %276 = load i32, i32* %first, align 4
  %cmp334 = icmp slt i32 %276, 0
  br i1 %cmp334, label %if.then.339, label %lor.lhs.false.335

lor.lhs.false.335:                                ; preds = %sw.bb.333
  %277 = load i32, i32* %first, align 4
  %278 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom336 = sext i32 %278 to i64
  %279 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx337 = getelementptr inbounds i32, i32* %279, i64 %idxprom336
  %280 = load i32, i32* %arrayidx337, align 4
  %cmp338 = icmp sge i32 %277, %280
  br i1 %cmp338, label %if.then.339, label %if.end.340

if.then.339:                                      ; preds = %lor.lhs.false.335, %sw.bb.333
  store i32 0, i32* %first, align 4
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.339, %lor.lhs.false.335
  %281 = load i32, i32* %last, align 4
  %cmp341 = icmp slt i32 %281, 0
  br i1 %cmp341, label %if.then.346, label %lor.lhs.false.342

lor.lhs.false.342:                                ; preds = %if.end.340
  %282 = load i32, i32* %last, align 4
  %283 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom343 = sext i32 %283 to i64
  %284 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx344 = getelementptr inbounds i32, i32* %284, i64 %idxprom343
  %285 = load i32, i32* %arrayidx344, align 4
  %cmp345 = icmp sge i32 %282, %285
  br i1 %cmp345, label %if.then.346, label %if.end.350

if.then.346:                                      ; preds = %lor.lhs.false.342, %if.end.340
  %286 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %idxprom347 = sext i32 %286 to i64
  %287 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %arrayidx348 = getelementptr inbounds i32, i32* %287, i64 %idxprom347
  %288 = load i32, i32* %arrayidx348, align 4
  %sub349 = sub nsw i32 %288, 1
  store i32 %sub349, i32* %last, align 4
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.346, %lor.lhs.false.342
  %289 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %290 = load i32, i32* %first, align 4
  %291 = load i32, i32* %last, align 4
  %292 = load i32, i32* %strategy, align 4
  call void (%struct.PLA_t*, i32, i32, i32, ...) bitcast (void (...)* @opoall to void (%struct.PLA_t*, i32, i32, i32, ...)*)(%struct.PLA_t* %289, i32 %290, i32 %291, i32 %292)
  br label %sw.epilog.531

sw.bb.351:                                        ; preds = %if.end.163
  %293 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %294 = load i32, i32* %strategy, align 4
  call void (%struct.PLA_t*, i32, ...) bitcast (void (...)* @find_optimal_pairing to void (%struct.PLA_t*, i32, ...)*)(%struct.PLA_t* %293, i32 %294)
  br label %sw.epilog.531

sw.bb.352:                                        ; preds = %if.end.163
  %295 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %296 = load i32, i32* %strategy, align 4
  %call353 = call i32 (%struct.PLA_t*, i32, ...) bitcast (i32 (...)* @pair_all to i32 (%struct.PLA_t*, i32, ...)*)(%struct.PLA_t* %295, i32 %296)
  br label %sw.epilog.531

sw.bb.354:                                        ; preds = %if.end.163
  br label %sw.epilog.531

sw.bb.355:                                        ; preds = %if.end.163
  %297 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F356 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %297, i32 0, i32 0
  %298 = load %struct.set_family*, %struct.set_family** %F356, align 8
  %call357 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %298)
  %call358 = call i32 (i32**, ...) bitcast (i32 (...)* @tautology to i32 (i32**, ...)*)(i32** %call357)
  %tobool359 = icmp ne i32 %call358, 0
  %cond = select i1 %tobool359, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0)
  %call360 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.78, i32 0, i32 0), i8* %cond)
  store i32 0, i32* @print_solution, align 4
  br label %sw.epilog.531

sw.bb.361:                                        ; preds = %if.end.163
  %299 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F362 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %299, i32 0, i32 0
  %300 = load %struct.set_family*, %struct.set_family** %F362, align 8
  %call363 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %300)
  %301 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F364 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %301, i32 0, i32 0
  store %struct.set_family* %call363, %struct.set_family** %F364, align 8
  br label %sw.epilog.531

sw.bb.365:                                        ; preds = %if.end.163
  %302 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F366 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %302, i32 0, i32 0
  %303 = load %struct.set_family*, %struct.set_family** %F366, align 8
  %304 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %F367 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %304, i32 0, i32 0
  %305 = load %struct.set_family*, %struct.set_family** %F367, align 8
  %call368 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @cv_intersect to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %303, %struct.set_family* %305)
  %306 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F369 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %306, i32 0, i32 0
  store %struct.set_family* %call368, %struct.set_family** %F369, align 8
  br label %sw.epilog.531

sw.bb.370:                                        ; preds = %if.end.163
  %307 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F371 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %307, i32 0, i32 0
  %308 = load %struct.set_family*, %struct.set_family** %F371, align 8
  %309 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %F372 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %309, i32 0, i32 0
  %310 = load %struct.set_family*, %struct.set_family** %F372, align 8
  %call373 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %308, %struct.set_family* %310)
  %311 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F374 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %311, i32 0, i32 0
  store %struct.set_family* %call373, %struct.set_family** %F374, align 8
  br label %sw.epilog.531

sw.bb.375:                                        ; preds = %if.end.163
  %312 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F376 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %312, i32 0, i32 0
  %313 = load %struct.set_family*, %struct.set_family** %F376, align 8
  %call377 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @make_disjoint to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %313)
  %314 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F378 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %314, i32 0, i32 0
  store %struct.set_family* %call377, %struct.set_family** %F378, align 8
  br label %sw.epilog.531

sw.bb.379:                                        ; preds = %if.end.163
  %315 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F380 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %315, i32 0, i32 0
  %316 = load %struct.set_family*, %struct.set_family** %F380, align 8
  %317 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %F381 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %317, i32 0, i32 0
  %318 = load %struct.set_family*, %struct.set_family** %F381, align 8
  %call382 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @cv_dsharp to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %316, %struct.set_family* %318)
  %319 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F383 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %319, i32 0, i32 0
  store %struct.set_family* %call382, %struct.set_family** %F383, align 8
  br label %sw.epilog.531

sw.bb.384:                                        ; preds = %if.end.163
  %320 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F385 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %320, i32 0, i32 0
  %321 = load %struct.set_family*, %struct.set_family** %F385, align 8
  %322 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %F386 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %322, i32 0, i32 0
  %323 = load %struct.set_family*, %struct.set_family** %F386, align 8
  %call387 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @cv_sharp to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %321, %struct.set_family* %323)
  %324 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F388 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %324, i32 0, i32 0
  store %struct.set_family* %call387, %struct.set_family** %F388, align 8
  br label %sw.epilog.531

sw.bb.389:                                        ; preds = %if.end.163
  %325 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F390 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %325, i32 0, i32 0
  %326 = load %struct.set_family*, %struct.set_family** %F390, align 8
  %call391 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @lex_sort to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %326)
  %327 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F392 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %327, i32 0, i32 0
  store %struct.set_family* %call391, %struct.set_family** %F392, align 8
  br label %sw.epilog.531

sw.bb.393:                                        ; preds = %if.end.163
  %328 = load i32, i32* @summary, align 4
  %tobool394 = icmp ne i32 %328, 0
  br i1 %tobool394, label %if.end.396, label %if.then.395

if.then.395:                                      ; preds = %sw.bb.393
  %329 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  call void (%struct.PLA_t*, ...) bitcast (void (...)* @PLA_summary to void (%struct.PLA_t*, ...)*)(%struct.PLA_t* %329)
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.395, %sw.bb.393
  store i32 0, i32* @print_solution, align 4
  br label %sw.epilog.531

sw.bb.397:                                        ; preds = %if.end.163
  %330 = load i32, i32* %first, align 4
  %cmp398 = icmp slt i32 %330, 0
  br i1 %cmp398, label %if.then.401, label %lor.lhs.false.399

lor.lhs.false.399:                                ; preds = %sw.bb.397
  %331 = load i32, i32* %first, align 4
  %332 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp400 = icmp sge i32 %331, %332
  br i1 %cmp400, label %if.then.401, label %if.end.402

if.then.401:                                      ; preds = %lor.lhs.false.399, %sw.bb.397
  store i32 0, i32* %first, align 4
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.401, %lor.lhs.false.399
  %333 = load i32, i32* %last, align 4
  %cmp403 = icmp slt i32 %333, 0
  br i1 %cmp403, label %if.then.406, label %lor.lhs.false.404

lor.lhs.false.404:                                ; preds = %if.end.402
  %334 = load i32, i32* %last, align 4
  %335 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp405 = icmp sge i32 %334, %335
  br i1 %cmp405, label %if.then.406, label %if.end.408

if.then.406:                                      ; preds = %lor.lhs.false.404, %if.end.402
  %336 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub407 = sub nsw i32 %336, 1
  store i32 %sub407, i32* %last, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.406, %lor.lhs.false.404
  %337 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F409 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %337, i32 0, i32 0
  %338 = load %struct.set_family*, %struct.set_family** %F409, align 8
  %339 = load i32, i32* %first, align 4
  %340 = load i32, i32* %last, align 4
  %call410 = call %struct.set_family* (%struct.set_family*, i32, i32, ...) bitcast (%struct.set_family* (...)* @unravel_range to %struct.set_family* (%struct.set_family*, i32, i32, ...)*)(%struct.set_family* %338, i32 %339, i32 %340)
  %call411 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_dupl to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %call410)
  %341 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F412 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %341, i32 0, i32 0
  store %struct.set_family* %call411, %struct.set_family** %F412, align 8
  br label %sw.epilog.531

sw.bb.413:                                        ; preds = %if.end.163
  %342 = load i32, i32* %first, align 4
  %cmp414 = icmp slt i32 %342, 0
  br i1 %cmp414, label %if.then.417, label %lor.lhs.false.415

lor.lhs.false.415:                                ; preds = %sw.bb.413
  %343 = load i32, i32* %first, align 4
  %344 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp416 = icmp sge i32 %343, %344
  br i1 %cmp416, label %if.then.417, label %if.end.418

if.then.417:                                      ; preds = %lor.lhs.false.415, %sw.bb.413
  store i32 0, i32* %first, align 4
  br label %if.end.418

if.end.418:                                       ; preds = %if.then.417, %lor.lhs.false.415
  %345 = load i32, i32* %last, align 4
  %cmp419 = icmp slt i32 %345, 0
  br i1 %cmp419, label %if.then.422, label %lor.lhs.false.420

lor.lhs.false.420:                                ; preds = %if.end.418
  %346 = load i32, i32* %last, align 4
  %347 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp421 = icmp sge i32 %346, %347
  br i1 %cmp421, label %if.then.422, label %if.end.424

if.then.422:                                      ; preds = %lor.lhs.false.420, %if.end.418
  %348 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %sub423 = sub nsw i32 %348, 1
  store i32 %sub423, i32* %last, align 4
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.422, %lor.lhs.false.420
  %349 = load i32, i32* %first, align 4
  store i32 %349, i32* %i, align 4
  br label %for.cond.425

for.cond.425:                                     ; preds = %for.inc.431, %if.end.424
  %350 = load i32, i32* %i, align 4
  %351 = load i32, i32* %last, align 4
  %cmp426 = icmp sle i32 %350, %351
  br i1 %cmp426, label %for.body.427, label %for.end.433

for.body.427:                                     ; preds = %for.cond.425
  %352 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F428 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %352, i32 0, i32 0
  %353 = load %struct.set_family*, %struct.set_family** %F428, align 8
  %354 = load i32, i32* %i, align 4
  %call429 = call %struct.set_family* (%struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @d1merge to %struct.set_family* (%struct.set_family*, i32, ...)*)(%struct.set_family* %353, i32 %354)
  %355 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F430 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %355, i32 0, i32 0
  store %struct.set_family* %call429, %struct.set_family** %F430, align 8
  br label %for.inc.431

for.inc.431:                                      ; preds = %for.body.427
  %356 = load i32, i32* %i, align 4
  %inc432 = add nsw i32 %356, 1
  store i32 %inc432, i32* %i, align 4
  br label %for.cond.425

for.end.433:                                      ; preds = %for.cond.425
  br label %sw.epilog.531

sw.bb.434:                                        ; preds = %if.end.163
  store i32 0, i32* %i, align 4
  br label %for.cond.435

for.cond.435:                                     ; preds = %for.inc.441, %sw.bb.434
  %357 = load i32, i32* %i, align 4
  %358 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 4
  %cmp436 = icmp slt i32 %357, %358
  br i1 %cmp436, label %for.body.437, label %for.end.443

for.body.437:                                     ; preds = %for.cond.435
  %359 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F438 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %359, i32 0, i32 0
  %360 = load %struct.set_family*, %struct.set_family** %F438, align 8
  %361 = load i32, i32* %i, align 4
  %call439 = call %struct.set_family* (%struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @d1merge to %struct.set_family* (%struct.set_family*, i32, ...)*)(%struct.set_family* %360, i32 %361)
  %362 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F440 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %362, i32 0, i32 0
  store %struct.set_family* %call439, %struct.set_family** %F440, align 8
  br label %for.inc.441

for.inc.441:                                      ; preds = %for.body.437
  %363 = load i32, i32* %i, align 4
  %inc442 = add nsw i32 %363, 1
  store i32 %inc442, i32* %i, align 4
  br label %for.cond.435

for.end.443:                                      ; preds = %for.cond.435
  br label %sw.epilog.531

sw.bb.444:                                        ; preds = %if.end.163
  %call446 = call i64 (...) @util_cpu_time()
  store i64 %call446, i64* %t445, align 8
  %364 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %365 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %call447 = call i32 (%struct.PLA_t*, %struct.PLA_t*, ...) bitcast (i32 (...)* @PLA_verify to i32 (%struct.PLA_t*, %struct.PLA_t*, ...)*)(%struct.PLA_t* %364, %struct.PLA_t* %365)
  store i32 %call447, i32* %error, align 4
  %366 = load i64, i64* %t445, align 8
  %367 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F448 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %367, i32 0, i32 0
  %368 = load %struct.set_family*, %struct.set_family** %F448, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %366, i32 14, %struct.set_family* %368, %struct.cost_struct* %cost)
  %369 = load i32, i32* %error, align 4
  %tobool449 = icmp ne i32 %369, 0
  br i1 %tobool449, label %if.then.450, label %if.else.452

if.then.450:                                      ; preds = %sw.bb.444
  %call451 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.81, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.else.452:                                      ; preds = %sw.bb.444
  %call453 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.82, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

sw.bb.454:                                        ; preds = %if.end.163
  %370 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F455 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %370, i32 0, i32 0
  %371 = load %struct.set_family*, %struct.set_family** %F455, align 8
  store %struct.set_family* %371, %struct.set_family** %Fold, align 8
  %372 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D456 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %372, i32 0, i32 1
  %373 = load %struct.set_family*, %struct.set_family** %D456, align 8
  store %struct.set_family* %373, %struct.set_family** %Dold, align 8
  %374 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %F457 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %374, i32 0, i32 0
  %375 = load %struct.set_family*, %struct.set_family** %F457, align 8
  store %struct.set_family* %375, %struct.set_family** %F, align 8
  %call459 = call i64 (...) @util_cpu_time()
  store i64 %call459, i64* %t458, align 8
  %376 = load %struct.set_family*, %struct.set_family** %F, align 8
  %377 = load %struct.set_family*, %struct.set_family** %Fold, align 8
  %378 = load %struct.set_family*, %struct.set_family** %Dold, align 8
  %call460 = call i32 (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (i32 (...)* @verify to i32 (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %376, %struct.set_family* %377, %struct.set_family* %378)
  store i32 %call460, i32* %error, align 4
  %379 = load i64, i64* %t458, align 8
  %380 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F461 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %380, i32 0, i32 0
  %381 = load %struct.set_family*, %struct.set_family** %F461, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %379, i32 14, %struct.set_family* %381, %struct.cost_struct* %cost)
  %382 = load i32, i32* %error, align 4
  %tobool462 = icmp ne i32 %382, 0
  br i1 %tobool462, label %if.then.463, label %if.else.465

if.then.463:                                      ; preds = %sw.bb.454
  %call464 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.81, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.else.465:                                      ; preds = %sw.bb.454
  %call466 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.82, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

sw.bb.467:                                        ; preds = %if.end.163
  %383 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %call468 = call i32 (%struct.PLA_t*, ...) bitcast (i32 (...)* @check_consistency to i32 (%struct.PLA_t*, ...)*)(%struct.PLA_t* %383)
  store i32 0, i32* @print_solution, align 4
  br label %sw.epilog.531

sw.bb.469:                                        ; preds = %if.end.163
  %384 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %call470 = call i32 (%struct.PLA_t*, ...) bitcast (i32 (...)* @map_dcset to i32 (%struct.PLA_t*, ...)*)(%struct.PLA_t* %384)
  store i32 3, i32* %out_type, align 4
  br label %sw.epilog.531

sw.bb.471:                                        ; preds = %if.end.163
  %385 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %call472 = call i32 (%struct.PLA_t*, ...) bitcast (i32 (...)* @find_equiv_outputs to i32 (%struct.PLA_t*, ...)*)(%struct.PLA_t* %385)
  store i32 0, i32* @print_solution, align 4
  br label %sw.epilog.531

sw.bb.473:                                        ; preds = %if.end.163
  %386 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D474 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %386, i32 0, i32 1
  %387 = load %struct.set_family*, %struct.set_family** %D474, align 8
  %388 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R475 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %388, i32 0, i32 2
  %389 = load %struct.set_family*, %struct.set_family** %R475, align 8
  %call476 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %387, %struct.set_family* %389)
  %call477 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @complement to %struct.set_family* (i32**, ...)*)(i32** %call476)
  %390 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F478 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %390, i32 0, i32 0
  store %struct.set_family* %call477, %struct.set_family** %F478, align 8
  br label %sw.epilog.531

sw.bb.479:                                        ; preds = %if.end.163
  %391 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F480 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %391, i32 0, i32 0
  %392 = load %struct.set_family*, %struct.set_family** %F480, align 8
  %393 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %R481 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %393, i32 0, i32 2
  %394 = load %struct.set_family*, %struct.set_family** %R481, align 8
  %call482 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @cv_intersect to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %392, %struct.set_family* %394)
  store %struct.set_family* %call482, %struct.set_family** %T1, align 8
  %395 = load %struct.PLA_t*, %struct.PLA_t** %PLA1, align 8
  %F483 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %395, i32 0, i32 0
  %396 = load %struct.set_family*, %struct.set_family** %F483, align 8
  %397 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R484 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %397, i32 0, i32 2
  %398 = load %struct.set_family*, %struct.set_family** %R484, align 8
  %call485 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @cv_intersect to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %396, %struct.set_family* %398)
  store %struct.set_family* %call485, %struct.set_family** %T2, align 8
  %399 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F486 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %399, i32 0, i32 0
  %400 = load %struct.set_family*, %struct.set_family** %F486, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %400)
  %401 = load %struct.set_family*, %struct.set_family** %T1, align 8
  %402 = load %struct.set_family*, %struct.set_family** %T2, align 8
  %call487 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_join to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %401, %struct.set_family* %402)
  %call488 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %call487)
  %403 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F489 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %403, i32 0, i32 0
  store %struct.set_family* %call488, %struct.set_family** %F489, align 8
  %404 = load %struct.set_family*, %struct.set_family** %T1, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %404)
  %405 = load %struct.set_family*, %struct.set_family** %T2, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %405)
  br label %sw.epilog.531

sw.bb.490:                                        ; preds = %if.end.163
  %406 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %407 = load i32, i32* @summary, align 4
  %call491 = call i32 (%struct.PLA_t*, i32, ...) bitcast (i32 (...)* @disassemble_fsm to i32 (%struct.PLA_t*, i32, ...)*)(%struct.PLA_t* %406, i32 %407)
  store i32 0, i32* @print_solution, align 4
  br label %sw.epilog.531

sw.bb.492:                                        ; preds = %if.end.163
  %408 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D493 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %408, i32 0, i32 1
  %409 = load %struct.set_family*, %struct.set_family** %D493, align 8
  %410 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R494 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %410, i32 0, i32 2
  %411 = load %struct.set_family*, %struct.set_family** %R494, align 8
  %call495 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_join to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %409, %struct.set_family* %411)
  store %struct.set_family* %call495, %struct.set_family** %T, align 8
  %412 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call496 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 10, i32 %412)
  store %struct.set_family* %call496, %struct.set_family** %E, align 8
  %413 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F497 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %413, i32 0, i32 0
  %414 = load %struct.set_family*, %struct.set_family** %F497, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %414)
  %call499 = call i64 (...) @util_cpu_time()
  store i64 %call499, i64* %t498, align 8
  %415 = load %struct.set_family*, %struct.set_family** %T, align 8
  %call500 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* %415)
  %call501 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @complement to %struct.set_family* (i32**, ...)*)(i32** %call500)
  %416 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F502 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %416, i32 0, i32 0
  store %struct.set_family* %call501, %struct.set_family** %F502, align 8
  %417 = load i64, i64* %t498, align 8
  %418 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F503 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %418, i32 0, i32 0
  %419 = load %struct.set_family*, %struct.set_family** %F503, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %417, i32 1, %struct.set_family* %419, %struct.cost_struct* %cost)
  %call505 = call i64 (...) @util_cpu_time()
  store i64 %call505, i64* %t504, align 8
  %420 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F506 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %420, i32 0, i32 0
  %421 = load %struct.set_family*, %struct.set_family** %F506, align 8
  %422 = load %struct.set_family*, %struct.set_family** %T, align 8
  %call507 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %421, %struct.set_family* %422, i32 0)
  %423 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F508 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %423, i32 0, i32 0
  store %struct.set_family* %call507, %struct.set_family** %F508, align 8
  %424 = load i64, i64* %t504, align 8
  %425 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F509 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %425, i32 0, i32 0
  %426 = load %struct.set_family*, %struct.set_family** %F509, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %424, i32 4, %struct.set_family* %426, %struct.cost_struct* %cost)
  %call511 = call i64 (...) @util_cpu_time()
  store i64 %call511, i64* %t510, align 8
  %427 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F512 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %427, i32 0, i32 0
  %428 = load %struct.set_family*, %struct.set_family** %F512, align 8
  %429 = load %struct.set_family*, %struct.set_family** %E, align 8
  %call513 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %428, %struct.set_family* %429)
  %430 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F514 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %430, i32 0, i32 0
  store %struct.set_family* %call513, %struct.set_family** %F514, align 8
  %431 = load i64, i64* %t510, align 8
  %432 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F515 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %432, i32 0, i32 0
  %433 = load %struct.set_family*, %struct.set_family** %F515, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %431, i32 5, %struct.set_family* %433, %struct.cost_struct* %cost)
  %434 = load %struct.set_family*, %struct.set_family** %T, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %434)
  %435 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F516 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %435, i32 0, i32 0
  %436 = load %struct.set_family*, %struct.set_family** %F516, align 8
  %437 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %R517 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %437, i32 0, i32 2
  %438 = load %struct.set_family*, %struct.set_family** %R517, align 8
  %call518 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_join to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %436, %struct.set_family* %438)
  store %struct.set_family* %call518, %struct.set_family** %T, align 8
  %call520 = call i64 (...) @util_cpu_time()
  store i64 %call520, i64* %t519, align 8
  %439 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D521 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %439, i32 0, i32 1
  %440 = load %struct.set_family*, %struct.set_family** %D521, align 8
  %441 = load %struct.set_family*, %struct.set_family** %T, align 8
  %call522 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* %440, %struct.set_family* %441, i32 0)
  %442 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D523 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %442, i32 0, i32 1
  store %struct.set_family* %call522, %struct.set_family** %D523, align 8
  %443 = load i64, i64* %t519, align 8
  %444 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D524 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %444, i32 0, i32 1
  %445 = load %struct.set_family*, %struct.set_family** %D524, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %443, i32 4, %struct.set_family* %445, %struct.cost_struct* %cost)
  %call526 = call i64 (...) @util_cpu_time()
  store i64 %call526, i64* %t525, align 8
  %446 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D527 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %446, i32 0, i32 1
  %447 = load %struct.set_family*, %struct.set_family** %D527, align 8
  %448 = load %struct.set_family*, %struct.set_family** %E, align 8
  %call528 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %447, %struct.set_family* %448)
  %449 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D529 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %449, i32 0, i32 1
  store %struct.set_family* %call528, %struct.set_family** %D529, align 8
  %450 = load i64, i64* %t525, align 8
  %451 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %D530 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %451, i32 0, i32 1
  %452 = load %struct.set_family*, %struct.set_family** %D530, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %450, i32 5, %struct.set_family* %452, %struct.cost_struct* %cost)
  %453 = load %struct.set_family*, %struct.set_family** %T, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %453)
  %454 = load %struct.set_family*, %struct.set_family** %E, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %454)
  br label %sw.epilog.531

sw.epilog.531:                                    ; preds = %if.end.163, %sw.bb.492, %sw.bb.490, %sw.bb.479, %sw.bb.473, %sw.bb.471, %sw.bb.469, %sw.bb.467, %for.end.443, %for.end.433, %if.end.408, %if.end.396, %sw.bb.389, %sw.bb.384, %sw.bb.379, %sw.bb.375, %sw.bb.370, %sw.bb.365, %sw.bb.361, %sw.bb.355, %sw.bb.354, %sw.bb.352, %sw.bb.351, %if.end.350, %sw.bb.332, %sw.bb.330, %if.end.329, %if.end.315, %sw.bb.290, %sw.bb.284, %sw.bb.278, %for.end.271, %sw.bb.247, %sw.bb.239, %sw.bb.231, %if.end.230, %if.end.224, %if.end.218, %if.end.182
  %455 = load i32, i32* @trace, align 4
  %tobool532 = icmp ne i32 %455, 0
  br i1 %tobool532, label %if.then.533, label %if.end.535

if.then.533:                                      ; preds = %sw.epilog.531
  %call534 = call i32 @runtime()
  br label %if.end.535

if.end.535:                                       ; preds = %if.then.533, %sw.epilog.531
  %456 = load i32, i32* @summary, align 4
  %tobool536 = icmp ne i32 %456, 0
  br i1 %tobool536, label %if.then.539, label %lor.lhs.false.537

lor.lhs.false.537:                                ; preds = %if.end.535
  %457 = load i32, i32* @trace, align 4
  %tobool538 = icmp ne i32 %457, 0
  br i1 %tobool538, label %if.then.539, label %if.end.546

if.then.539:                                      ; preds = %lor.lhs.false.537, %if.end.535
  %458 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F540 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %458, i32 0, i32 0
  %459 = load %struct.set_family*, %struct.set_family** %F540, align 8
  %460 = load i32, i32* %option, align 4
  %idxprom541 = sext i32 %460 to i64
  %arrayidx542 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom541
  %name543 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx542, i32 0, i32 0
  %461 = load i8*, i8** %name543, align 8
  %call544 = call i64 (...) @util_cpu_time()
  %462 = load i64, i64* %start, align 8
  %sub545 = sub nsw i64 %call544, %462
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* %459, i8* %461, i64 %sub545)
  br label %if.end.546

if.end.546:                                       ; preds = %if.then.539, %lor.lhs.false.537
  %463 = load i32, i32* @print_solution, align 4
  %tobool547 = icmp ne i32 %463, 0
  br i1 %tobool547, label %if.then.548, label %if.end.552

if.then.548:                                      ; preds = %if.end.546
  %call550 = call i64 (...) @util_cpu_time()
  store i64 %call550, i64* %t549, align 8
  %464 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %465 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %466 = load i32, i32* %out_type, align 4
  call void (%struct._IO_FILE*, %struct.PLA_t*, i32, ...) bitcast (void (...)* @fprint_pla to void (%struct._IO_FILE*, %struct.PLA_t*, i32, ...)*)(%struct._IO_FILE* %464, %struct.PLA_t* %465, i32 %466)
  %467 = load i64, i64* %t549, align 8
  %468 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  %F551 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %468, i32 0, i32 0
  %469 = load %struct.set_family*, %struct.set_family** %F551, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 %467, i32 15, %struct.set_family* %469, %struct.cost_struct* %cost)
  br label %if.end.552

if.end.552:                                       ; preds = %if.then.548, %if.end.546
  %470 = load i32, i32* %error, align 4
  %tobool553 = icmp ne i32 %470, 0
  br i1 %tobool553, label %if.then.554, label %if.end.555

if.then.554:                                      ; preds = %if.end.552
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.83, i32 0, i32 0))
  br label %if.end.555

if.end.555:                                       ; preds = %if.then.554, %if.end.552
  %471 = load %struct.PLA_t*, %struct.PLA_t** %PLA, align 8
  call void (%struct.PLA_t*, ...) bitcast (void (...)* @free_PLA to void (%struct.PLA_t*, ...)*)(%struct.PLA_t* %471)
  %472 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %tobool556 = icmp ne i32* %472, null
  br i1 %tobool556, label %if.then.557, label %if.end.558

if.then.557:                                      ; preds = %if.end.555
  %473 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %474 = bitcast i32* %473 to i8*
  call void @free(i8* %474)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  br label %if.end.558

if.end.558:                                       ; preds = %if.then.557, %if.end.555
  call void (...) @setdown_cube()
  call void (...) @sf_cleanup()
  call void (...) @sm_cleanup()
  call void @exit(i32 0) #6
  unreachable

return:                                           ; No predecessors!
  %475 = load i32, i32* %retval
  ret i32 %475
}

declare i64 @util_cpu_time(...) #1

declare i32 @espresso_getopt(...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #3

declare i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare i32 @printf(i8*, ...) #1

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

declare void @fatal(...) #1

declare void @PLA_summary(...) #1

declare %struct.set_family* @sf_save(...) #1

declare %struct.set_family* @espresso(...) #1

declare i32 @verify(...) #1

declare void @totals(...) #1

declare i32 @check_consistency(...) #1

declare void @sf_free(...) #1

declare void @print_trace(...) #1

declare void @fprint_pla(...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @free_PLA(...) #1

declare void @setdown_cube(...) #1

declare void @free(i8*) #1

declare i32 @read_pla(...) #1

declare %struct.set_family* @simplify(...) #1

declare i32** @cube1list(...) #1

declare void @so_espresso(...) #1

declare void @so_both_espresso(...) #1

declare %struct.set_family* @expand(...) #1

declare %struct.set_family* @irredundant(...) #1

declare %struct.set_family* @reduce(...) #1

declare %struct.set_family* @essential(...) #1

declare %struct.set_family* @super_gasp(...) #1

declare %struct.set_family* @last_gasp(...) #1

declare %struct.set_family* @make_sparse(...) #1

declare %struct.set_family* @minimize_exact(...) #1

declare %struct.set_family* @primes_consensus(...) #1

declare i32** @cube2list(...) #1

declare void @map(...) #1

declare void @phase_assignment(...) #1

declare void @opoall(...) #1

declare void @find_optimal_pairing(...) #1

declare i32 @pair_all(...) #1

declare i32 @tautology(...) #1

declare %struct.set_family* @sf_contain(...) #1

declare %struct.set_family* @cv_intersect(...) #1

declare %struct.set_family* @sf_union(...) #1

declare %struct.set_family* @make_disjoint(...) #1

declare %struct.set_family* @cv_dsharp(...) #1

declare %struct.set_family* @cv_sharp(...) #1

declare %struct.set_family* @lex_sort(...) #1

declare %struct.set_family* @sf_dupl(...) #1

declare %struct.set_family* @unravel_range(...) #1

declare %struct.set_family* @d1merge(...) #1

declare i32 @PLA_verify(...) #1

declare i32 @map_dcset(...) #1

declare i32 @find_equiv_outputs(...) #1

declare %struct.set_family* @complement(...) #1

declare %struct.set_family* @sf_join(...) #1

declare i32 @disassemble_fsm(...) #1

declare %struct.set_family* @sf_new(...) #1

declare void @sf_cleanup(...) #1

declare void @sm_cleanup(...) #1

; Function Attrs: nounwind uwtable
define i32 @getPLA(i32 %opt, i32 %argc, i8** %argv, i32 %option, %struct.PLA_t** %PLA, i32 %out_type) #0 {
entry:
  %retval = alloca i32, align 4
  %opt.addr = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %option.addr = alloca i32, align 4
  %PLA.addr = alloca %struct.PLA_t**, align 8
  %out_type.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %needs_dcset = alloca i32, align 4
  %needs_offset = alloca i32, align 4
  %fname = alloca i8*, align 8
  store i32 %opt, i32* %opt.addr, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %option, i32* %option.addr, align 4
  store %struct.PLA_t** %PLA, %struct.PLA_t*** %PLA.addr, align 8
  store i32 %out_type, i32* %out_type.addr, align 4
  %0 = load i32, i32* %opt.addr, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8** %fname, align 8
  br label %if.end.12

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %opt.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  store i8* %5, i8** %fname, align 8
  %6 = load i8*, i8** %fname, align 8
  %call = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i32 0, i32 0)) #5
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** %fp, align 8
  br label %if.end.11

if.else.3:                                        ; preds = %if.else
  %8 = load i32, i32* %opt.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %9, i64 %idxprom4
  %10 = load i8*, i8** %arrayidx5, align 8
  %call6 = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0))
  store %struct._IO_FILE* %call6, %struct._IO_FILE** %fp, align 8
  %cmp7 = icmp eq %struct._IO_FILE* %call6, null
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else.3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %12, i64 0
  %13 = load i8*, i8** %arrayidx9, align 8
  %14 = load i8*, i8** %fname, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.87, i32 0, i32 0), i8* %13, i8* %14)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %if.else.3
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.2
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then
  %15 = load i32, i32* %option.addr, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom13
  %key = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx14, i32 0, i32 1
  %16 = load i32, i32* %key, align 4
  %cmp15 = icmp eq i32 %16, 7
  br i1 %cmp15, label %if.then.16, label %if.else.21

if.then.16:                                       ; preds = %if.end.12
  %17 = load i32, i32* %out_type.addr, align 4
  %and = and i32 %17, 2
  %cmp17 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp17 to i32
  store i32 %conv, i32* %needs_dcset, align 4
  %18 = load i32, i32* %out_type.addr, align 4
  %and18 = and i32 %18, 4
  %cmp19 = icmp ne i32 %and18, 0
  %conv20 = zext i1 %cmp19 to i32
  store i32 %conv20, i32* %needs_offset, align 4
  br label %if.end.28

if.else.21:                                       ; preds = %if.end.12
  %19 = load i32, i32* %option.addr, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom22
  %needs_dcset24 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx23, i32 0, i32 4
  %20 = load i32, i32* %needs_dcset24, align 4
  store i32 %20, i32* %needs_dcset, align 4
  %21 = load i32, i32* %option.addr, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom25
  %needs_offset27 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx26, i32 0, i32 3
  %22 = load i32, i32* %needs_offset27, align 4
  store i32 %22, i32* %needs_offset, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.21, %if.then.16
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %24 = load i32, i32* %needs_dcset, align 4
  %25 = load i32, i32* %needs_offset, align 4
  %26 = load i32, i32* @input_type, align 4
  %27 = load %struct.PLA_t**, %struct.PLA_t*** %PLA.addr, align 8
  %call29 = call i32 (%struct._IO_FILE*, i32, i32, i32, %struct.PLA_t**, ...) bitcast (i32 (...)* @read_pla to i32 (%struct._IO_FILE*, i32, i32, i32, %struct.PLA_t**, ...)*)(%struct._IO_FILE* %23, i32 %24, i32 %25, i32 %26, %struct.PLA_t** %27)
  %cmp30 = icmp eq i32 %call29, -1
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.28
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load i8**, i8*** %argv.addr, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %29, i64 0
  %30 = load i8*, i8** %arrayidx33, align 8
  %31 = load i8*, i8** %fname, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.88, i32 0, i32 0), i8* %30, i8* %31)
  call void @exit(i32 1) #6
  unreachable

if.end.35:                                        ; preds = %if.end.28
  %32 = load i8*, i8** %fname, align 8
  %call36 = call i8* @util_strsav(i8* %32)
  %33 = load %struct.PLA_t**, %struct.PLA_t*** %PLA.addr, align 8
  %34 = load %struct.PLA_t*, %struct.PLA_t** %33, align 8
  %filename = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %34, i32 0, i32 3
  store i8* %call36, i8** %filename, align 8
  %35 = load %struct.PLA_t**, %struct.PLA_t*** %PLA.addr, align 8
  %36 = load %struct.PLA_t*, %struct.PLA_t** %35, align 8
  %filename37 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %36, i32 0, i32 3
  %37 = load i8*, i8** %filename37, align 8
  store i8* %37, i8** @filename, align 8
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  store %struct._IO_FILE* %38, %struct._IO_FILE** @last_fp, align 8
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @util_strsav(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @runtime() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %total = alloca i64, align 8
  %temp = alloca i64, align 8
  store i64 1, i64* %total, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* @total_time, i32 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %3 = load i64, i64* %total, align 8
  %add = add nsw i64 %3, %2
  store i64 %add, i64* %total, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.18, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 16
  br i1 %cmp2, label %for.body.3, label %for.end.20

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [16 x i32], [16 x i32]* @total_calls, i32 0, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp ne i32 %7, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [16 x i64], [16 x i64]* @total_time, i32 0, i64 %idxprom7
  %9 = load i64, i64* %arrayidx8, align 8
  %mul = mul nsw i64 100, %9
  store i64 %mul, i64* %temp, align 8
  store i64 0, i64* %temp, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [16 x i8*], [16 x i8*]* @total_name, i32 0, i64 %idxprom9
  %11 = load i8*, i8** %arrayidx10, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [16 x i32], [16 x i32]* @total_calls, i32 0, i64 %idxprom11
  %13 = load i32, i32* %arrayidx12, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [16 x i64], [16 x i64]* @total_time, i32 0, i64 %idxprom13
  %15 = load i64, i64* %arrayidx14, align 8
  %call = call i8* @util_print_time(i64 %15)
  %16 = load i64, i64* %temp, align 8
  %17 = load i64, i64* %total, align 8
  %div = sdiv i64 %16, %17
  %18 = load i64, i64* %temp, align 8
  %19 = load i64, i64* %total, align 8
  %rem = srem i64 %18, %19
  %mul15 = mul nsw i64 10, %rem
  %20 = load i64, i64* %total, align 8
  %div16 = sdiv i64 %mul15, %20
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.89, i32 0, i32 0), i8* %11, i32 %13, i8* %call, i64 %div, i64 %div16)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc.18

for.inc.18:                                       ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.1

for.end.20:                                       ; preds = %for.cond.1
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i8* @util_print_time(i64) #1

; Function Attrs: nounwind uwtable
define i32 @init_runtime() #0 {
entry:
  %retval = alloca i32, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 0), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 15), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 1), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 6), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 4), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 3), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 5), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 9), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 7), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 8), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 12), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 13), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 14), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 10), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0), i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @total_name, i32 0, i64 11), align 8
  %0 = load i32, i32* %retval
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @subcommands() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %col = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.104, i32 0, i32 0))
  store i32 16, i32* %col, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %col, align 4
  %conv = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom1
  %name3 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx2, i32 0, i32 0
  %4 = load i8*, i8** %name3, align 8
  %call4 = call i64 @strlen(i8* %4) #5
  %add = add i64 %conv, %call4
  %add5 = add i64 %add, 1
  %cmp6 = icmp ugt i64 %add5, 76
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.105, i32 0, i32 0))
  store i32 16, i32* %col, align 4
  br label %if.end.13

if.else:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %cmp9 = icmp ne i32 %5, 0
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %6 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %6 to i64
  %arrayidx15 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom14
  %name16 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx15, i32 0, i32 0
  %7 = load i8*, i8** %name16, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* %7)
  %8 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %8 to i64
  %arrayidx19 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom18
  %name20 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx19, i32 0, i32 0
  %9 = load i8*, i8** %name20, align 8
  %call21 = call i64 @strlen(i8* %9) #5
  %add22 = add i64 %call21, 2
  %10 = load i32, i32* %col, align 4
  %conv23 = sext i32 %10 to i64
  %add24 = add i64 %conv23, %add22
  %conv25 = trunc i64 %add24 to i32
  store i32 %conv25, i32* %col, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0))
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @usage() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.73, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.109, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.110, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.111, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.112, i32 0, i32 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.113, i32 0, i32 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.114, i32 0, i32 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.115, i32 0, i32 0))
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.116, i32 0, i32 0))
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.117, i32 0, i32 0))
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.118, i32 0, i32 0))
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.119, i32 0, i32 0))
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.120, i32 0, i32 0))
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.121, i32 0, i32 0))
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.122, i32 0, i32 0))
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.123, i32 0, i32 0))
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.124, i32 0, i32 0))
  %call17 = call i32 @subcommands()
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.125, i32 0, i32 0))
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.126, i32 0, i32 0))
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.127, i32 0, i32 0))
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.128, i32 0, i32 0))
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.129, i32 0, i32 0))
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.130, i32 0, i32 0))
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.131, i32 0, i32 0))
  %0 = load i32, i32* %retval
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @backward_compatibility_hack(i32* %argc, i8** %argv, i32* %option, i32* %out_type) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32*, align 8
  %argv.addr = alloca i8**, align 8
  %option.addr = alloca i32*, align 8
  %out_type.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %argc, i32** %argc.addr, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store i32* %option, i32** %option.addr, align 8
  store i32* %out_type, i32** %out_type.addr, align 8
  %0 = load i32*, i32** %option.addr, align 8
  store i32 0, i32* %0, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32*, i32** %argc.addr, align 8
  %3 = load i32, i32* %2, align 4
  %sub = sub nsw i32 %3, 1
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.132, i32 0, i32 0)) #5
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end.28

if.then:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %if.then
  %7 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom3
  %name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx4, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  %cmp5 = icmp ne i8* %8, null
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.2
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  %idxprom7 = sext i32 %add to i64
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %10, i64 %idxprom7
  %11 = load i8*, i8** %arrayidx8, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom9
  %name11 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx10, i32 0, i32 0
  %13 = load i8*, i8** %name11, align 8
  %call12 = call i32 @strcmp(i8* %11, i8* %13) #5
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %for.body.6
  %14 = load i32, i32* %j, align 4
  %15 = load i32*, i32** %option.addr, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %argc.addr, align 8
  %17 = load i8**, i8*** %argv.addr, align 8
  %18 = load i32, i32* %i, align 4
  %add15 = add nsw i32 %18, 1
  %call16 = call i32 @delete_arg(i32* %16, i8** %17, i32 %add15)
  %19 = load i32*, i32** %argc.addr, align 8
  %20 = load i8**, i8*** %argv.addr, align 8
  %21 = load i32, i32* %i, align 4
  %call17 = call i32 @delete_arg(i32* %19, i8** %20, i32 %21)
  br label %for.end

if.end:                                           ; preds = %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %if.then.14, %for.cond.2
  %23 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %23 to i64
  %arrayidx19 = getelementptr inbounds [44 x %struct.anon], [44 x %struct.anon]* @option_table, i32 0, i64 %idxprom18
  %name20 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx19, i32 0, i32 0
  %24 = load i8*, i8** %name20, align 8
  %cmp21 = icmp eq i8* %24, null
  br i1 %cmp21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %for.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %26, 1
  %idxprom24 = sext i32 %add23 to i64
  %27 = load i8**, i8*** %argv.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %27, i64 %idxprom24
  %28 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.133, i32 0, i32 0), i8* %28)
  call void @exit(i32 1) #6
  unreachable

if.end.27:                                        ; preds = %for.end
  br label %for.end.31

if.end.28:                                        ; preds = %for.body
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %29 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %29, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond

for.end.31:                                       ; preds = %if.end.27, %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.75, %for.end.31
  %30 = load i32, i32* %i, align 4
  %31 = load i32*, i32** %argc.addr, align 8
  %32 = load i32, i32* %31, align 4
  %sub33 = sub nsw i32 %32, 1
  %cmp34 = icmp slt i32 %30, %sub33
  br i1 %cmp34, label %for.body.35, label %for.end.77

for.body.35:                                      ; preds = %for.cond.32
  %33 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %33 to i64
  %34 = load i8**, i8*** %argv.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %34, i64 %idxprom36
  %35 = load i8*, i8** %arrayidx37, align 8
  %call38 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i32 0, i32 0)) #5
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.40, label %if.end.74

if.then.40:                                       ; preds = %for.body.35
  store i32 0, i32* %j, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.61, %if.then.40
  %36 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %36 to i64
  %arrayidx43 = getelementptr inbounds [0 x %struct.pla_types_struct], [0 x %struct.pla_types_struct]* @pla_types, i32 0, i64 %idxprom42
  %key = getelementptr inbounds %struct.pla_types_struct, %struct.pla_types_struct* %arrayidx43, i32 0, i32 0
  %37 = load i8*, i8** %key, align 8
  %cmp44 = icmp ne i8* %37, null
  br i1 %cmp44, label %for.body.45, label %for.end.63

for.body.45:                                      ; preds = %for.cond.41
  %38 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %38 to i64
  %arrayidx47 = getelementptr inbounds [0 x %struct.pla_types_struct], [0 x %struct.pla_types_struct]* @pla_types, i32 0, i64 %idxprom46
  %key48 = getelementptr inbounds %struct.pla_types_struct, %struct.pla_types_struct* %arrayidx47, i32 0, i32 0
  %39 = load i8*, i8** %key48, align 8
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %40, 1
  %idxprom50 = sext i32 %add49 to i64
  %41 = load i8**, i8*** %argv.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %41, i64 %idxprom50
  %42 = load i8*, i8** %arrayidx51, align 8
  %call52 = call i32 @strcmp(i8* %add.ptr, i8* %42) #5
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then.54, label %if.end.60

if.then.54:                                       ; preds = %for.body.45
  %43 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %43 to i64
  %arrayidx56 = getelementptr inbounds [0 x %struct.pla_types_struct], [0 x %struct.pla_types_struct]* @pla_types, i32 0, i64 %idxprom55
  %value = getelementptr inbounds %struct.pla_types_struct, %struct.pla_types_struct* %arrayidx56, i32 0, i32 1
  %44 = load i32, i32* %value, align 4
  %45 = load i32*, i32** %out_type.addr, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %argc.addr, align 8
  %47 = load i8**, i8*** %argv.addr, align 8
  %48 = load i32, i32* %i, align 4
  %add57 = add nsw i32 %48, 1
  %call58 = call i32 @delete_arg(i32* %46, i8** %47, i32 %add57)
  %49 = load i32*, i32** %argc.addr, align 8
  %50 = load i8**, i8*** %argv.addr, align 8
  %51 = load i32, i32* %i, align 4
  %call59 = call i32 @delete_arg(i32* %49, i8** %50, i32 %51)
  br label %for.end.63

if.end.60:                                        ; preds = %for.body.45
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %52 = load i32, i32* %j, align 4
  %inc62 = add nsw i32 %52, 1
  store i32 %inc62, i32* %j, align 4
  br label %for.cond.41

for.end.63:                                       ; preds = %if.then.54, %for.cond.41
  %53 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %53 to i64
  %arrayidx65 = getelementptr inbounds [0 x %struct.pla_types_struct], [0 x %struct.pla_types_struct]* @pla_types, i32 0, i64 %idxprom64
  %key66 = getelementptr inbounds %struct.pla_types_struct, %struct.pla_types_struct* %arrayidx65, i32 0, i32 0
  %54 = load i8*, i8** %key66, align 8
  %cmp67 = icmp eq i8* %54, null
  br i1 %cmp67, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %for.end.63
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = load i32, i32* %i, align 4
  %add69 = add nsw i32 %56, 1
  %idxprom70 = sext i32 %add69 to i64
  %57 = load i8**, i8*** %argv.addr, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %57, i64 %idxprom70
  %58 = load i8*, i8** %arrayidx71, align 8
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.135, i32 0, i32 0), i8* %58)
  call void @exit(i32 1) #6
  unreachable

if.end.73:                                        ; preds = %for.end.63
  br label %for.end.77

if.end.74:                                        ; preds = %for.body.35
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %59 = load i32, i32* %i, align 4
  %inc76 = add nsw i32 %59, 1
  store i32 %inc76, i32* %i, align 4
  br label %for.cond.32

for.end.77:                                       ; preds = %if.end.73, %for.cond.32
  store i32 1, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.115, %for.end.77
  %60 = load i32, i32* %i, align 4
  %61 = load i32*, i32** %argc.addr, align 8
  %62 = load i32, i32* %61, align 4
  %cmp79 = icmp slt i32 %60, %62
  br i1 %cmp79, label %for.body.80, label %for.end.117

for.body.80:                                      ; preds = %for.cond.78
  %63 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %63 to i64
  %64 = load i8**, i8*** %argv.addr, align 8
  %arrayidx82 = getelementptr inbounds i8*, i8** %64, i64 %idxprom81
  %65 = load i8*, i8** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %65, i64 0
  %66 = load i8, i8* %arrayidx83, align 1
  %conv = sext i8 %66 to i32
  %cmp84 = icmp eq i32 %conv, 45
  br i1 %cmp84, label %if.then.86, label %if.end.114

if.then.86:                                       ; preds = %for.body.80
  store i32 0, i32* %j, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.111, %if.then.86
  %67 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %67 to i64
  %arrayidx89 = getelementptr inbounds [12 x %struct.anon.1], [12 x %struct.anon.1]* @esp_opt_table, i32 0, i64 %idxprom88
  %name90 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx89, i32 0, i32 0
  %68 = load i8*, i8** %name90, align 8
  %cmp91 = icmp ne i8* %68, null
  br i1 %cmp91, label %for.body.93, label %for.end.113

for.body.93:                                      ; preds = %for.cond.87
  %69 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %69 to i64
  %70 = load i8**, i8*** %argv.addr, align 8
  %arrayidx95 = getelementptr inbounds i8*, i8** %70, i64 %idxprom94
  %71 = load i8*, i8** %arrayidx95, align 8
  %add.ptr96 = getelementptr inbounds i8, i8* %71, i64 1
  %72 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %72 to i64
  %arrayidx98 = getelementptr inbounds [12 x %struct.anon.1], [12 x %struct.anon.1]* @esp_opt_table, i32 0, i64 %idxprom97
  %name99 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx98, i32 0, i32 0
  %73 = load i8*, i8** %name99, align 8
  %call100 = call i32 @strcmp(i8* %add.ptr96, i8* %73) #5
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.110

if.then.103:                                      ; preds = %for.body.93
  %74 = load i32*, i32** %argc.addr, align 8
  %75 = load i8**, i8*** %argv.addr, align 8
  %76 = load i32, i32* %i, align 4
  %call104 = call i32 @delete_arg(i32* %74, i8** %75, i32 %76)
  %77 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %77 to i64
  %arrayidx106 = getelementptr inbounds [12 x %struct.anon.1], [12 x %struct.anon.1]* @esp_opt_table, i32 0, i64 %idxprom105
  %value107 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx106, i32 0, i32 2
  %78 = load i32, i32* %value107, align 4
  %79 = load i32, i32* %j, align 4
  %idxprom108 = sext i32 %79 to i64
  %arrayidx109 = getelementptr inbounds [12 x %struct.anon.1], [12 x %struct.anon.1]* @esp_opt_table, i32 0, i64 %idxprom108
  %variable = getelementptr inbounds %struct.anon.1, %struct.anon.1* %arrayidx109, i32 0, i32 1
  %80 = load i32*, i32** %variable, align 8
  store i32 %78, i32* %80, align 4
  br label %for.end.113

if.end.110:                                       ; preds = %for.body.93
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %81 = load i32, i32* %j, align 4
  %inc112 = add nsw i32 %81, 1
  store i32 %inc112, i32* %j, align 4
  br label %for.cond.87

for.end.113:                                      ; preds = %if.then.103, %for.cond.87
  br label %if.end.114

if.end.114:                                       ; preds = %for.end.113, %for.body.80
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %82 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %82, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.78

for.end.117:                                      ; preds = %for.cond.78
  %83 = load i32*, i32** %argc.addr, align 8
  %84 = load i8**, i8*** %argv.addr, align 8
  %call118 = call i32 @check_arg(i32* %83, i8** %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i32 0, i32 0))
  %tobool = icmp ne i32 %call118, 0
  br i1 %tobool, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %for.end.117
  store i32 7, i32* @input_type, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %for.end.117
  %85 = load i32*, i32** %argc.addr, align 8
  %86 = load i8**, i8*** %argv.addr, align 8
  %call121 = call i32 @check_arg(i32* %85, i8** %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.137, i32 0, i32 0))
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.end.120
  store i32 5, i32* @input_type, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %if.end.120
  %87 = load i32*, i32** %argc.addr, align 8
  %88 = load i8**, i8*** %argv.addr, align 8
  %call125 = call i32 @check_arg(i32* %87, i8** %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0))
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.124
  store i32 1, i32* @input_type, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %if.end.124
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define i32 @delete_arg(i32* %argc, i8** %argv, i32 %num) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32*, align 8
  %argv.addr = alloca i8**, align 8
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %argc, i32** %argc.addr, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32*, i32** %argc.addr, align 8
  %1 = load i32, i32* %0, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %0, align 4
  %2 = load i32, i32* %num.addr, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32*, i32** %argc.addr, align 8
  %5 = load i32, i32* %4, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %idxprom = sext i32 %add to i64
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %10, i64 %idxprom1
  store i8* %8, i8** %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @check_arg(i32* %argc, i8** %argv, i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32*, align 8
  %argv.addr = alloca i8**, align 8
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32* %argc, i32** %argc.addr, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32*, i32** %argc.addr, align 8
  %2 = load i32, i32* %1, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i8*, i8** %s.addr, align 8
  %call = call i32 @strcmp(i8* %5, i8* %6) #5
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32*, i32** %argc.addr, align 8
  %8 = load i8**, i8*** %argv.addr, align 8
  %9 = load i32, i32* %i, align 4
  %call2 = call i32 @delete_arg(i32* %7, i8** %8, i32 %9)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
