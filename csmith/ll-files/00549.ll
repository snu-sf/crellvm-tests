; ModuleID = '00549.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 987977064, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_62 = internal global i32 2, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"g_62\00", align 1
@g_72 = internal global [2 x [2 x i32]] [[2 x i32] [i32 -1, i32 -1], [2 x i32] [i32 -1, i32 -1]], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"g_72[i][j]\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_73 = internal global i64 -4185310112697689064, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"g_73\00", align 1
@g_79 = internal global i16 -16710, align 2
@.str.6 = private unnamed_addr constant [5 x i8] c"g_79\00", align 1
@g_98 = internal global i8 67, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"g_98\00", align 1
@g_99 = internal global [8 x [7 x [4 x i32]]] [[7 x [4 x i32]] [[4 x i32] [i32 1, i32 1560564680, i32 -10, i32 1560564680], [4 x i32] [i32 -1, i32 1585522882, i32 -590551651, i32 -513898506], [4 x i32] [i32 8, i32 -10, i32 1, i32 1505035120], [4 x i32] [i32 1, i32 -1536819733, i32 -10, i32 -1], [4 x i32] [i32 1, i32 -7, i32 1, i32 -1758618116], [4 x i32] [i32 8, i32 -1, i32 -590551651, i32 1], [4 x i32] [i32 -1, i32 -1594149806, i32 -10, i32 0]], [7 x [4 x i32]] [[4 x i32] [i32 1, i32 1, i32 9, i32 -7], [4 x i32] [i32 -1, i32 -757784350, i32 8, i32 357774986], [4 x i32] [i32 -2042740313, i32 -1285435691, i32 1806759442, i32 -1023006990], [4 x i32] [i32 -590551651, i32 -1, i32 350582443, i32 1], [4 x i32] [i32 -1651840315, i32 -1465308845, i32 -1, i32 357774986], [4 x i32] [i32 -1504461271, i32 -7, i32 -1285435691, i32 -1], [4 x i32] [i32 -1388736166, i32 1, i32 778535584, i32 -590551651]], [7 x [4 x i32]] [[4 x i32] [i32 -276200951, i32 -1388736166, i32 1, i32 -1984412839], [4 x i32] [i32 1560564680, i32 -1354280280, i32 0, i32 -513898506], [4 x i32] [i32 1, i32 -545053140, i32 1, i32 -1], [4 x i32] [i32 0, i32 -1023006990, i32 -513898506, i32 -712433548], [4 x i32] [i32 8, i32 -6, i32 -6, i32 8], [4 x i32] [i32 988065020, i32 -955878187, i32 357774986, i32 0], [4 x i32] [i32 9, i32 -121750102, i32 -10, i32 -2]], [7 x [4 x i32]] [[4 x i32] [i32 -24064865, i32 -961352436, i32 8, i32 -2], [4 x i32] [i32 -1594149806, i32 -121750102, i32 1, i32 0], [4 x i32] [i32 -1, i32 -955878187, i32 0, i32 8], [4 x i32] [i32 1, i32 -6, i32 -1, i32 -712433548], [4 x i32] [i32 -7, i32 -1023006990, i32 -1, i32 -1], [4 x i32] [i32 9, i32 -545053140, i32 -1465308845, i32 -513898506], [4 x i32] [i32 -1758618116, i32 -1354280280, i32 0, i32 -1984412839]], [7 x [4 x i32]] [[4 x i32] [i32 1, i32 -1388736166, i32 -1562000947, i32 -590551651], [4 x i32] [i32 -1, i32 1, i32 477879931, i32 -1], [4 x i32] [i32 -1, i32 -7, i32 -1023006990, i32 357774986], [4 x i32] [i32 0, i32 -1465308845, i32 -961352436, i32 1], [4 x i32] [i32 -1, i32 1585522882, i32 988065020, i32 -10], [4 x i32] [i32 -1, i32 -10, i32 -1536819733, i32 1], [4 x i32] [i32 8, i32 8, i32 1, i32 -1]], [7 x [4 x i32]] [[4 x i32] [i32 -791874984, i32 -1562000947, i32 8, i32 9], [4 x i32] [i32 -2, i32 -1, i32 -2, i32 -1], [4 x i32] [i32 -1023006990, i32 1, i32 -1594149806, i32 -6], [4 x i32] [i32 1505035120, i32 0, i32 -1651840315, i32 1], [4 x i32] [i32 -1, i32 357774986, i32 -1651840315, i32 606134342], [4 x i32] [i32 1505035120, i32 -590551651, i32 -1594149806, i32 350582443], [4 x i32] [i32 -1023006990, i32 -1536819733, i32 -2, i32 -1651840315]], [7 x [4 x i32]] [[4 x i32] [i32 -2, i32 -1651840315, i32 8, i32 988065020], [4 x i32] [i32 -791874984, i32 -1924847818, i32 1, i32 -553943586], [4 x i32] [i32 8, i32 -757784350, i32 -1536819733, i32 0], [4 x i32] [i32 -1, i32 606134342, i32 988065020, i32 1], [4 x i32] [i32 -1, i32 988065020, i32 -961352436, i32 -757784350], [4 x i32] [i32 0, i32 8, i32 -1023006990, i32 1505035120], [4 x i32] [i32 -1, i32 1054474701, i32 477879931, i32 0]], [7 x [4 x i32]] [[4 x i32] [i32 -1, i32 1, i32 -1562000947, i32 -24064865], [4 x i32] [i32 1, i32 1, i32 0, i32 9], [4 x i32] [i32 -1758618116, i32 -1, i32 -1465308845, i32 -791874984], [4 x i32] [i32 9, i32 1806759442, i32 -1, i32 1054474701], [4 x i32] [i32 -7, i32 -553943586, i32 -1, i32 -1], [4 x i32] [i32 1, i32 1, i32 0, i32 -1285435691], [4 x i32] [i32 -1, i32 1560564680, i32 1, i32 -955878187]]], align 16
@.str.8 = private unnamed_addr constant [14 x i8] c"g_99[i][j][k]\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_118 = internal global i8 0, align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"g_118\00", align 1
@g_135 = internal global [1 x i8] c"\02", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"g_135[i]\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_145 = internal global i64 8332061692759977079, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"g_145\00", align 1
@g_146 = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"g_146\00", align 1
@g_147 = internal global i64 321798020674832135, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"g_147\00", align 1
@g_185 = internal global [7 x [6 x i64]] [[6 x i64] [i64 2328423167944881560, i64 2231124330652777898, i64 -1, i64 -2, i64 -2, i64 -1], [6 x i64] [i64 -2, i64 -2, i64 -2, i64 -9059376080052575272, i64 -7, i64 -2], [6 x i64] [i64 -9059376080052575272, i64 -7, i64 -2, i64 -7, i64 -9059376080052575272, i64 -2], [6 x i64] [i64 -7, i64 -9059376080052575272, i64 -2, i64 -1, i64 -1, i64 -2], [6 x i64] [i64 -1, i64 -1, i64 -2, i64 -9059376080052575272, i64 -7, i64 -2], [6 x i64] [i64 -9059376080052575272, i64 -7, i64 -2, i64 -7, i64 -9059376080052575272, i64 -2], [6 x i64] [i64 -7, i64 -9059376080052575272, i64 -2, i64 -1, i64 -1, i64 -2]], align 16
@.str.16 = private unnamed_addr constant [12 x i8] c"g_185[i][j]\00", align 1
@g_210 = internal global i16 31430, align 2
@.str.17 = private unnamed_addr constant [6 x i8] c"g_210\00", align 1
@g_229 = internal global i16 13759, align 2
@.str.18 = private unnamed_addr constant [6 x i8] c"g_229\00", align 1
@g_263 = internal global i16 194, align 2
@.str.19 = private unnamed_addr constant [6 x i8] c"g_263\00", align 1
@g_268 = internal global i64 0, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"g_268\00", align 1
@g_307 = internal global [9 x [7 x [4 x i64]]] [[7 x [4 x i64]] [[4 x i64] [i64 4890303072351184970, i64 0, i64 5868578757443284149, i64 9], [4 x i64] [i64 -5677568672403906925, i64 0, i64 -8516143910712583784, i64 -13633389871629267], [4 x i64] [i64 0, i64 7727316463676313309, i64 8, i64 -4080850621201776383], [4 x i64] [i64 -10, i64 -9138603719567509855, i64 -2183515544491976285, i64 0], [4 x i64] [i64 1508735789703515908, i64 4, i64 0, i64 6997991598717414771], [4 x i64] [i64 8, i64 7051249599825063261, i64 -408681511021437224, i64 5411572487158732905], [4 x i64] [i64 -6872731962313332170, i64 -4135414935117337647, i64 -1, i64 7727316463676313309]], [7 x [4 x i64]] [[4 x i64] [i64 0, i64 9, i64 -6592807171779728972, i64 9], [4 x i64] [i64 7727316463676313309, i64 -1, i64 0, i64 -4135414935117337647], [4 x i64] [i64 9, i64 -5677568672403906925, i64 8, i64 6], [4 x i64] [i64 -4302639574090662039, i64 8, i64 -4302639574090662039, i64 -1], [4 x i64] [i64 -4135414935117337647, i64 4, i64 6997991598717414771, i64 5868578757443284149], [4 x i64] [i64 0, i64 -1, i64 -8, i64 4], [4 x i64] [i64 -6872731962313332170, i64 1508735789703515908, i64 -8, i64 2165079030790187559]], [7 x [4 x i64]] [[4 x i64] [i64 0, i64 -4302639574090662039, i64 6997991598717414771, i64 9], [4 x i64] [i64 -4135414935117337647, i64 -8516143910712583784, i64 -4302639574090662039, i64 -5], [4 x i64] [i64 -4302639574090662039, i64 -5, i64 8, i64 -6872731962313332170], [4 x i64] [i64 9, i64 0, i64 0, i64 -6592807171779728972], [4 x i64] [i64 7727316463676313309, i64 4, i64 -6592807171779728972, i64 -9], [4 x i64] [i64 0, i64 4890303072351184970, i64 -1, i64 -3], [4 x i64] [i64 -6872731962313332170, i64 2165079030790187559, i64 -408681511021437224, i64 -5677568672403906925]], [7 x [4 x i64]] [[4 x i64] [i64 8, i64 -10, i64 0, i64 9], [4 x i64] [i64 1508735789703515908, i64 -2183515544491976285, i64 -2183515544491976285, i64 1508735789703515908], [4 x i64] [i64 -10, i64 -13633389871629267, i64 8, i64 8], [4 x i64] [i64 0, i64 0, i64 -8516143910712583784, i64 0], [4 x i64] [i64 -5677568672403906925, i64 4, i64 5868578757443284149, i64 0], [4 x i64] [i64 4890303072351184970, i64 0, i64 9, i64 8], [4 x i64] [i64 -6872731962313332170, i64 -13633389871629267, i64 -8237218623134763895, i64 1508735789703515908]], [7 x [4 x i64]] [[4 x i64] [i64 -9138603719567509855, i64 -2183515544491976285, i64 0, i64 9], [4 x i64] [i64 2165079030790187559, i64 -10, i64 -1, i64 -5677568672403906925], [4 x i64] [i64 -2183515544491976285, i64 2165079030790187559, i64 8, i64 -3], [4 x i64] [i64 -1, i64 4890303072351184970, i64 -10, i64 -9], [4 x i64] [i64 -5, i64 4, i64 -1, i64 -6592807171779728972], [4 x i64] [i64 -1, i64 0, i64 81470065582555563, i64 -6872731962313332170], [4 x i64] [i64 -6872731962313332170, i64 -5, i64 200365399838179875, i64 -5]], [7 x [4 x i64]] [[4 x i64] [i64 7051249599825063261, i64 -8516143910712583784, i64 -9, i64 9], [4 x i64] [i64 -4302639574090662039, i64 8, i64 4, i64 -1], [4 x i64] [i64 -3, i64 -10, i64 2882409000742590163, i64 6997991598717414771], [4 x i64] [i64 -3, i64 -1962088475085783779, i64 4, i64 81470065582555563], [4 x i64] [i64 -4302639574090662039, i64 6997991598717414771, i64 9, i64 -408681511021437224], [4 x i64] [i64 2655375614218946695, i64 2882409000742590163, i64 7051249599825063261, i64 -1], [4 x i64] [i64 -9, i64 9, i64 0, i64 0]], [7 x [4 x i64]] [[4 x i64] [i64 -1962088475085783779, i64 -6872731962313332170, i64 -408681511021437224, i64 -1], [4 x i64] [i64 -8516143910712583784, i64 4, i64 6, i64 -2183515544491976285], [4 x i64] [i64 -6872731962313332170, i64 0, i64 2882409000742590163, i64 -6592807171779728972], [4 x i64] [i64 5411572487158732905, i64 2655375614218946695, i64 -6872731962313332170, i64 200365399838179875], [4 x i64] [i64 -1, i64 6997991598717414771, i64 -8237218623134763895, i64 -8237218623134763895], [4 x i64] [i64 -1069017186158554663, i64 -1069017186158554663, i64 0, i64 5868578757443284149], [4 x i64] [i64 -9, i64 -2183515544491976285, i64 -1, i64 -4302639574090662039]], [7 x [4 x i64]] [[4 x i64] [i64 -8598465595372863486, i64 -4080850621201776383, i64 81470065582555563, i64 -1], [4 x i64] [i64 9, i64 -4080850621201776383, i64 -3, i64 -4302639574090662039], [4 x i64] [i64 -4080850621201776383, i64 -2183515544491976285, i64 2882409000742590163, i64 5868578757443284149], [4 x i64] [i64 6, i64 -1069017186158554663, i64 5411572487158732905, i64 -8237218623134763895], [4 x i64] [i64 -10, i64 6997991598717414771, i64 -1, i64 200365399838179875], [4 x i64] [i64 2882409000742590163, i64 2655375614218946695, i64 -9138603719567509855, i64 -6592807171779728972], [4 x i64] [i64 -9, i64 0, i64 8, i64 -2183515544491976285]], [7 x [4 x i64]] [[4 x i64] [i64 854049915228864729, i64 4, i64 -8, i64 -1], [4 x i64] [i64 -2183515544491976285, i64 -6872731962313332170, i64 -4080850621201776383, i64 0], [4 x i64] [i64 4, i64 9, i64 2882409000742590163, i64 -1], [4 x i64] [i64 8, i64 2882409000742590163, i64 8, i64 -408681511021437224], [4 x i64] [i64 0, i64 6997991598717414771, i64 200365399838179875, i64 81470065582555563], [4 x i64] [i64 1, i64 -1962088475085783779, i64 4890303072351184970, i64 6997991598717414771], [4 x i64] [i64 -9, i64 -10, i64 4890303072351184970, i64 -1]]], align 16
@.str.21 = private unnamed_addr constant [15 x i8] c"g_307[i][j][k]\00", align 1
@g_371 = internal global i64 1, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"g_371\00", align 1
@g_382 = internal global i64 -2342486927335264454, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_382\00", align 1
@g_440 = internal global i16 7, align 2
@.str.24 = private unnamed_addr constant [6 x i8] c"g_440\00", align 1
@g_458 = internal global i64 -1, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_458\00", align 1
@g_459 = internal global i8 -59, align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_459\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_466\00", align 1
@g_469 = internal global [6 x i8] c"LLLLLL", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"g_469[i]\00", align 1
@g_481 = internal global [7 x [8 x i32]] [[8 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [8 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [8 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [8 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [8 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [8 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [8 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]], align 16
@.str.29 = private unnamed_addr constant [12 x i8] c"g_481[i][j]\00", align 1
@g_485 = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_485\00", align 1
@g_487 = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_487\00", align 1
@g_506 = internal global i32 -309756069, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_506\00", align 1
@g_512 = internal global i8 -1, align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"g_512\00", align 1
@g_514 = internal global i32 1743766615, align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"g_514\00", align 1
@g_553 = internal global i32 -7, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"g_553\00", align 1
@g_651 = internal global i16 23686, align 2
@.str.36 = private unnamed_addr constant [6 x i8] c"g_651\00", align 1
@g_787 = internal global i32 747196441, align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"g_787\00", align 1
@g_788 = internal global [2 x [10 x i32]] [[10 x i32] [i32 4, i32 -1, i32 4, i32 5, i32 5, i32 4, i32 -1, i32 4, i32 5, i32 5], [10 x i32] [i32 4, i32 -1, i32 4, i32 5, i32 5, i32 4, i32 -1, i32 4, i32 5, i32 5]], align 16
@.str.38 = private unnamed_addr constant [12 x i8] c"g_788[i][j]\00", align 1
@g_1221 = internal global i64 -984357638449057106, align 8
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1221\00", align 1
@g_1475 = internal global i32 -1, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1475\00", align 1
@g_1556 = internal global i64 0, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1556\00", align 1
@g_1582 = internal global [4 x i64] [i64 6389028693751629916, i64 6389028693751629916, i64 6389028693751629916, i64 6389028693751629916], align 16
@.str.42 = private unnamed_addr constant [10 x i8] c"g_1582[i]\00", align 1
@g_1591 = internal global [5 x [4 x i32]] [[4 x i32] [i32 -1, i32 -1, i32 0, i32 -1], [4 x i32] [i32 -1, i32 1884407508, i32 1884407508, i32 -1], [4 x i32] [i32 1884407508, i32 -1, i32 0, i32 0], [4 x i32] [i32 1884407508, i32 1884407508, i32 -1, i32 1884407508], [4 x i32] [i32 1884407508, i32 0, i32 0, i32 1884407508]], align 16
@.str.43 = private unnamed_addr constant [13 x i8] c"g_1591[i][j]\00", align 1
@g_2029 = internal global i32 7, align 4
@.str.44 = private unnamed_addr constant [7 x i8] c"g_2029\00", align 1
@g_2280 = internal global i32 1, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_2280\00", align 1
@g_2304 = internal global [7 x i16] zeroinitializer, align 2
@.str.46 = private unnamed_addr constant [10 x i8] c"g_2304[i]\00", align 1
@g_2307 = internal global i16 -5989, align 2
@.str.47 = private unnamed_addr constant [7 x i8] c"g_2307\00", align 1
@g_2334 = internal global i32 1442679148, align 4
@.str.48 = private unnamed_addr constant [7 x i8] c"g_2334\00", align 1
@g_2355 = internal global i8 4, align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"g_2355\00", align 1
@g_2356 = internal global [7 x i32] [i32 844035699, i32 844035699, i32 844035699, i32 844035699, i32 844035699, i32 844035699, i32 844035699], align 16
@.str.50 = private unnamed_addr constant [10 x i8] c"g_2356[i]\00", align 1
@g_2636 = internal global i32 1, align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"g_2636\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_77 = private unnamed_addr constant [8 x [5 x [6 x i16]]] [[5 x [6 x i16]] [[6 x i16] [i16 -3, i16 -21674, i16 3, i16 1, i16 2, i16 -1], [6 x i16] [i16 2, i16 15979, i16 -11914, i16 1, i16 -21674, i16 1], [6 x i16] [i16 -8, i16 -1, i16 -8, i16 0, i16 0, i16 -9460], [6 x i16] [i16 1, i16 -5, i16 -3, i16 16397, i16 -8, i16 15038], [6 x i16] [i16 -6, i16 13227, i16 -8610, i16 16397, i16 -1, i16 0]], [5 x [6 x i16]] [[6 x i16] [i16 1, i16 0, i16 13227, i16 0, i16 1, i16 0], [6 x i16] [i16 -8, i16 15766, i16 29525, i16 1, i16 1, i16 0], [6 x i16] [i16 2, i16 7010, i16 -8, i16 1, i16 0, i16 15979], [6 x i16] [i16 -3, i16 16245, i16 14197, i16 1, i16 0, i16 0], [6 x i16] [i16 15038, i16 1, i16 1, i16 15038, i16 -8610, i16 -3]], [5 x [6 x i16]] [[6 x i16] [i16 -1, i16 -8, i16 -1, i16 -11914, i16 -29416, i16 -6], [6 x i16] [i16 16245, i16 0, i16 -9460, i16 16172, i16 -29416, i16 3], [6 x i16] [i16 29525, i16 -8, i16 -10, i16 9, i16 -8610, i16 -1], [6 x i16] [i16 16397, i16 1, i16 -9, i16 -10, i16 0, i16 1], [6 x i16] [i16 0, i16 16245, i16 15766, i16 -1, i16 0, i16 -10]], [5 x [6 x i16]] [[6 x i16] [i16 -1, i16 7010, i16 1, i16 -8, i16 1, i16 -1], [6 x i16] [i16 1, i16 15766, i16 23376, i16 15766, i16 1, i16 -21674], [6 x i16] [i16 0, i16 0, i16 1, i16 1, i16 -1, i16 -8610], [6 x i16] [i16 9, i16 13227, i16 16245, i16 0, i16 -8, i16 -8610], [6 x i16] [i16 23376, i16 -5, i16 1, i16 14197, i16 0, i16 -21674]], [5 x [6 x i16]] [[6 x i16] [i16 -8, i16 -1, i16 23376, i16 2, i16 -21674, i16 -1], [6 x i16] [i16 -9, i16 15979, i16 1, i16 -6, i16 2, i16 -10], [6 x i16] [i16 24025, i16 -21674, i16 15766, i16 -1, i16 -9, i16 1], [6 x i16] [i16 -1, i16 -9460, i16 -9, i16 -9, i16 -9460, i16 -1], [6 x i16] [i16 7010, i16 -11914, i16 -10, i16 -29416, i16 16397, i16 3]], [5 x [6 x i16]] [[6 x i16] [i16 15979, i16 29525, i16 -9460, i16 -1, i16 24025, i16 0], [6 x i16] [i16 1, i16 0, i16 -1, i16 -5, i16 -6, i16 16245], [6 x i16] [i16 13227, i16 -29416, i16 0, i16 29525, i16 -21674, i16 9], [6 x i16] [i16 1, i16 -5, i16 23376, i16 28681, i16 24025, i16 1], [6 x i16] [i16 7010, i16 23376, i16 -9, i16 0, i16 -3, i16 24025]], [5 x [6 x i16]] [[6 x i16] [i16 29525, i16 -8, i16 15979, i16 -10, i16 15979, i16 -8], [6 x i16] [i16 -9, i16 -6, i16 -1, i16 23376, i16 16172, i16 -8610], [6 x i16] [i16 -6, i16 -8, i16 14197, i16 24025, i16 1, i16 1], [6 x i16] [i16 0, i16 -8, i16 16245, i16 16397, i16 16172, i16 -1], [6 x i16] [i16 -8610, i16 -6, i16 -11914, i16 -9460, i16 15979, i16 0]], [5 x [6 x i16]] [[6 x i16] [i16 1, i16 -8, i16 -1, i16 -9, i16 -3, i16 15038], [6 x i16] [i16 15038, i16 23376, i16 -1, i16 2, i16 24025, i16 -5], [6 x i16] [i16 -8, i16 -5, i16 7010, i16 -21674, i16 -21674, i16 7010], [6 x i16] [i16 -29416, i16 -29416, i16 2, i16 0, i16 -6, i16 23376], [6 x i16] [i16 15979, i16 0, i16 1, i16 -8, i16 7010, i16 2]]], align 16
@func_1.l_16 = private unnamed_addr constant [2 x [9 x [10 x i32]]] [[9 x [10 x i32]] [[10 x i32] [i32 -1959342371, i32 0, i32 4, i32 -1419659901, i32 988071866, i32 1, i32 0, i32 -1222472446, i32 0, i32 1], [10 x i32] [i32 0, i32 704968567, i32 -733522312, i32 1, i32 0, i32 1362911687, i32 4, i32 0, i32 0, i32 4], [10 x i32] [i32 -391114221, i32 -6, i32 -1419659901, i32 -1419659901, i32 -6, i32 -391114221, i32 -1, i32 4, i32 0, i32 0], [10 x i32] [i32 1, i32 -1419659901, i32 -1579328502, i32 0, i32 0, i32 -1419659901, i32 704968567, i32 1, i32 1, i32 -4], [10 x i32] [i32 1, i32 1, i32 -1222472446, i32 -733522312, i32 988071866, i32 -391114221, i32 -4, i32 704968567, i32 -6, i32 1], [10 x i32] [i32 -391114221, i32 -4, i32 704968567, i32 -6, i32 1, i32 1362911687, i32 704968567, i32 1, i32 -391114221, i32 -733522312], [10 x i32] [i32 0, i32 -1959342371, i32 704968567, i32 -1, i32 1, i32 1, i32 -1, i32 704968567, i32 -1959342371, i32 0], [10 x i32] [i32 -1959342371, i32 1362911687, i32 -1222472446, i32 1, i32 0, i32 -1579328502, i32 4, i32 1, i32 -391114221, i32 1362911687], [10 x i32] [i32 988071866, i32 1, i32 -1579328502, i32 1362911687, i32 0, i32 0, i32 0, i32 4, i32 -6, i32 0]], [9 x [10 x i32]] [[10 x i32] [i32 0, i32 4, i32 -1419659901, i32 988071866, i32 1, i32 0, i32 -1222472446, i32 0, i32 1, i32 -733522312], [10 x i32] [i32 988071866, i32 -1, i32 -733522312, i32 0, i32 1, i32 0, i32 -733522312, i32 -733522312, i32 -391114221, i32 1], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 -6, i32 -1579328502, i32 704968567, i32 988071866, i32 1, i32 -1579328502], [10 x i32] [i32 -391114221, i32 -1, i32 1362911687, i32 1780030083, i32 -391114221, i32 -1959342371, i32 0, i32 704968567, i32 1, i32 0], [10 x i32] [i32 988071866, i32 -1419659901, i32 4, i32 0, i32 -1959342371, i32 -733522312, i32 -4, i32 0, i32 -391114221, i32 0], [10 x i32] [i32 -1, i32 0, i32 -1222472446, i32 704968567, i32 -391114221, i32 0, i32 1780030083, i32 -4, i32 0, i32 0], [10 x i32] [i32 -1, i32 -1579328502, i32 -733522312, i32 -6, i32 -6, i32 -733522312, i32 -1579328502, i32 -1, i32 -1959342371, i32 -4], [10 x i32] [i32 988071866, i32 0, i32 1780030083, i32 -1419659901, i32 1, i32 -1959342371, i32 1780030083, i32 -1579328502, i32 988071866, i32 -6], [10 x i32] [i32 -391114221, i32 4, i32 1780030083, i32 1, i32 0, i32 -1579328502, i32 -4, i32 -1, i32 0, i32 -1222472446]]], align 16
@func_1.l_444 = private unnamed_addr constant [4 x [7 x [4 x i64]]] [[7 x [4 x i64]] [[4 x i64] [i64 1, i64 1, i64 -5082582344006535974, i64 4], [4 x i64] [i64 -853094252961787084, i64 -3198830347723167264, i64 -527735800522880440, i64 -4195182933282917097], [4 x i64] [i64 -2253661154919823892, i64 1, i64 -2945777088630168881, i64 1], [4 x i64] [i64 4, i64 -527735800522880440, i64 -1, i64 1], [4 x i64] [i64 -527735800522880440, i64 -3198830347723167264, i64 -853094252961787084, i64 5397046740800716994], [4 x i64] [i64 1, i64 1, i64 -4, i64 1], [4 x i64] [i64 1, i64 -4195182933282917097, i64 -853094252961787084, i64 -3303791407706419592]], [7 x [4 x i64]] [[4 x i64] [i64 -527735800522880440, i64 1, i64 -1, i64 6163049175320053041], [4 x i64] [i64 4, i64 -4, i64 -2945777088630168881, i64 2], [4 x i64] [i64 -2253661154919823892, i64 -5082582344006535974, i64 -527735800522880440, i64 -3303791407706419592], [4 x i64] [i64 -853094252961787084, i64 1, i64 -5082582344006535974, i64 -5082582344006535974], [4 x i64] [i64 1, i64 1, i64 -6707780032702037568, i64 4], [4 x i64] [i64 -3909786899471779250, i64 -2, i64 -527735800522880440, i64 1], [4 x i64] [i64 -1, i64 1, i64 5397046740800716994, i64 -527735800522880440]], [7 x [4 x i64]] [[4 x i64] [i64 4, i64 1, i64 -7589189926839295908, i64 1], [4 x i64] [i64 1, i64 -2, i64 -853094252961787084, i64 4], [4 x i64] [i64 -5082582344006535974, i64 1, i64 1, i64 -5082582344006535974], [4 x i64] [i64 1, i64 1, i64 9058921031816279828, i64 -3303791407706419592], [4 x i64] [i64 1, i64 -5082582344006535974, i64 -1, i64 2], [4 x i64] [i64 5397046740800716994, i64 -4, i64 5397046740800716994, i64 6163049175320053041], [4 x i64] [i64 -2253661154919823892, i64 1, i64 8, i64 -3303791407706419592]], [7 x [4 x i64]] [[4 x i64] [i64 -3909786899471779250, i64 -4195182933282917097, i64 -5082582344006535974, i64 1], [4 x i64] [i64 1, i64 1, i64 -5082582344006535974, i64 5397046740800716994], [4 x i64] [i64 -3909786899471779250, i64 -3198830347723167264, i64 8, i64 1], [4 x i64] [i64 -2253661154919823892, i64 -527735800522880440, i64 5397046740800716994, i64 1], [4 x i64] [i64 5397046740800716994, i64 1, i64 -1, i64 -4195182933282917097], [4 x i64] [i64 1, i64 -3198830347723167264, i64 9058921031816279828, i64 -4195182933282917097], [4 x i64] [i64 1, i64 7, i64 7, i64 1]]], align 16
@g_88 = internal global i32* null, align 8
@g_879 = internal global i16**** @g_880, align 8
@g_880 = internal global i16*** @g_208, align 8
@g_208 = internal global i16** @g_209, align 8
@g_209 = internal global i16* @g_210, align 8
@.str.52 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %4 = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %print_hash_value, align 4, !tbaa !1
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %89

; <label>:12                                      ; preds = %0
  %13 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %15, label %77

; <label>:15                                      ; preds = %12
  store i64 1, i64* %__s2_len, align 8, !tbaa !7
  %16 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %77

; <label>:18                                      ; preds = %15
  %19 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i8**, i8*** %3, align 8, !tbaa !5
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8, !tbaa !5
  store i8* %22, i8** %__s1, align 8, !tbaa !5
  %23 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i8*, i8** %__s1, align 8, !tbaa !5
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = sub nsw i32 %27, %29
  store i32 %30, i32* %__result, align 4, !tbaa !1
  %31 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %72

; <label>:33                                      ; preds = %18
  %34 = load i32, i32* %__result, align 4, !tbaa !1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %72

; <label>:36                                      ; preds = %33
  %37 = load i8*, i8** %__s1, align 8, !tbaa !5
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1, !tbaa !9
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %40, %42
  store i32 %43, i32* %__result, align 4, !tbaa !1
  %44 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %45 = icmp ugt i64 %44, 1
  br i1 %45, label %46, label %71

; <label>:46                                      ; preds = %36
  %47 = load i32, i32* %__result, align 4, !tbaa !1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %71

; <label>:49                                      ; preds = %46
  %50 = load i8*, i8** %__s1, align 8, !tbaa !5
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1, !tbaa !9
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !9
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %53, %55
  store i32 %56, i32* %__result, align 4, !tbaa !1
  %57 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %58 = icmp ugt i64 %57, 2
  br i1 %58, label %59, label %70

; <label>:59                                      ; preds = %49
  %60 = load i32, i32* %__result, align 4, !tbaa !1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

; <label>:62                                      ; preds = %59
  %63 = load i8*, i8** %__s1, align 8, !tbaa !5
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1, !tbaa !9
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %66, %68
  store i32 %69, i32* %__result, align 4, !tbaa !1
  br label %70

; <label>:70                                      ; preds = %62, %59, %49
  br label %71

; <label>:71                                      ; preds = %70, %46, %36
  br label %72

; <label>:72                                      ; preds = %71, %33, %18
  %73 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %73, i32* %5, !tbaa !1
  %74 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i32, i32* %5, !tbaa !1
  br label %82

; <label>:77                                      ; preds = %15, %12
  %78 = load i8**, i8*** %3, align 8, !tbaa !5
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8, !tbaa !5
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %82

; <label>:82                                      ; preds = %77, %72
  %83 = phi i32 [ %76, %72 ], [ %81, %77 ]
  store i32 %83, i32* %4, !tbaa !1
  %84 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %4, !tbaa !1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %82
  store i32 1, i32* %print_hash_value, align 4, !tbaa !1
  br label %89

; <label>:89                                      ; preds = %88, %82, %0
  call void @platform_main_begin()
  call void @crc32_gentab()
  %90 = call signext i16 @func_1()
  %91 = load i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_62, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:97                                      ; preds = %125, %89
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = icmp slt i32 %98, 2
  br i1 %99, label %100, label %128

; <label>:100                                     ; preds = %97
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %101

; <label>:101                                     ; preds = %121, %100
  %102 = load i32, i32* %j, align 4, !tbaa !1
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %124

; <label>:104                                     ; preds = %101
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @g_72, i32 0, i64 %108
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %109, i32 0, i64 %106
  %111 = load volatile i32, i32* %110, align 4, !tbaa !1
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 %113)
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

; <label>:116                                     ; preds = %104
  %117 = load i32, i32* %i, align 4, !tbaa !1
  %118 = load i32, i32* %j, align 4, !tbaa !1
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %117, i32 %118)
  br label %120

; <label>:120                                     ; preds = %116, %104
  br label %121

; <label>:121                                     ; preds = %120
  %122 = load i32, i32* %j, align 4, !tbaa !1
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %j, align 4, !tbaa !1
  br label %101

; <label>:124                                     ; preds = %101
  br label %125

; <label>:125                                     ; preds = %124
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:128                                     ; preds = %97
  %129 = load i64, i64* @g_73, align 8, !tbaa !7
  %130 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %130)
  %131 = load i16, i16* @g_79, align 2, !tbaa !10
  %132 = sext i16 %131 to i64
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %133)
  %134 = load volatile i8, i8* @g_98, align 1, !tbaa !9
  %135 = sext i8 %134 to i64
  %136 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %136)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %137

; <label>:137                                     ; preds = %177, %128
  %138 = load i32, i32* %i, align 4, !tbaa !1
  %139 = icmp slt i32 %138, 8
  br i1 %139, label %140, label %180

; <label>:140                                     ; preds = %137
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %141

; <label>:141                                     ; preds = %173, %140
  %142 = load i32, i32* %j, align 4, !tbaa !1
  %143 = icmp slt i32 %142, 7
  br i1 %143, label %144, label %176

; <label>:144                                     ; preds = %141
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %145

; <label>:145                                     ; preds = %169, %144
  %146 = load i32, i32* %k, align 4, !tbaa !1
  %147 = icmp slt i32 %146, 4
  br i1 %147, label %148, label %172

; <label>:148                                     ; preds = %145
  %149 = load i32, i32* %k, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = load i32, i32* %j, align 4, !tbaa !1
  %152 = sext i32 %151 to i64
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 %154
  %156 = getelementptr inbounds [7 x [4 x i32]], [7 x [4 x i32]]* %155, i32 0, i64 %152
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %156, i32 0, i64 %150
  %158 = load i32, i32* %157, align 4, !tbaa !1
  %159 = sext i32 %158 to i64
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %160)
  %161 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

; <label>:163                                     ; preds = %148
  %164 = load i32, i32* %i, align 4, !tbaa !1
  %165 = load i32, i32* %j, align 4, !tbaa !1
  %166 = load i32, i32* %k, align 4, !tbaa !1
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %164, i32 %165, i32 %166)
  br label %168

; <label>:168                                     ; preds = %163, %148
  br label %169

; <label>:169                                     ; preds = %168
  %170 = load i32, i32* %k, align 4, !tbaa !1
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %k, align 4, !tbaa !1
  br label %145

; <label>:172                                     ; preds = %145
  br label %173

; <label>:173                                     ; preds = %172
  %174 = load i32, i32* %j, align 4, !tbaa !1
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %j, align 4, !tbaa !1
  br label %141

; <label>:176                                     ; preds = %141
  br label %177

; <label>:177                                     ; preds = %176
  %178 = load i32, i32* %i, align 4, !tbaa !1
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %i, align 4, !tbaa !1
  br label %137

; <label>:180                                     ; preds = %137
  %181 = load i8, i8* @g_118, align 1, !tbaa !9
  %182 = sext i8 %181 to i64
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %183)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %184

; <label>:184                                     ; preds = %200, %180
  %185 = load i32, i32* %i, align 4, !tbaa !1
  %186 = icmp slt i32 %185, 1
  br i1 %186, label %187, label %203

; <label>:187                                     ; preds = %184
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [1 x i8], [1 x i8]* @g_135, i32 0, i64 %189
  %191 = load i8, i8* %190, align 1, !tbaa !9
  %192 = zext i8 %191 to i64
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %193)
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

; <label>:196                                     ; preds = %187
  %197 = load i32, i32* %i, align 4, !tbaa !1
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %197)
  br label %199

; <label>:199                                     ; preds = %196, %187
  br label %200

; <label>:200                                     ; preds = %199
  %201 = load i32, i32* %i, align 4, !tbaa !1
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %i, align 4, !tbaa !1
  br label %184

; <label>:203                                     ; preds = %184
  %204 = load i64, i64* @g_145, align 8, !tbaa !7
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %205)
  %206 = load i32, i32* @g_146, align 4, !tbaa !1
  %207 = zext i32 %206 to i64
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %208)
  %209 = load i64, i64* @g_147, align 8, !tbaa !7
  %210 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %210)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %211

; <label>:211                                     ; preds = %238, %203
  %212 = load i32, i32* %i, align 4, !tbaa !1
  %213 = icmp slt i32 %212, 7
  br i1 %213, label %214, label %241

; <label>:214                                     ; preds = %211
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %215

; <label>:215                                     ; preds = %234, %214
  %216 = load i32, i32* %j, align 4, !tbaa !1
  %217 = icmp slt i32 %216, 6
  br i1 %217, label %218, label %237

; <label>:218                                     ; preds = %215
  %219 = load i32, i32* %j, align 4, !tbaa !1
  %220 = sext i32 %219 to i64
  %221 = load i32, i32* %i, align 4, !tbaa !1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [7 x [6 x i64]], [7 x [6 x i64]]* @g_185, i32 0, i64 %222
  %224 = getelementptr inbounds [6 x i64], [6 x i64]* %223, i32 0, i64 %220
  %225 = load volatile i64, i64* %224, align 8, !tbaa !7
  %226 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %225, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 %226)
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

; <label>:229                                     ; preds = %218
  %230 = load i32, i32* %i, align 4, !tbaa !1
  %231 = load i32, i32* %j, align 4, !tbaa !1
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %230, i32 %231)
  br label %233

; <label>:233                                     ; preds = %229, %218
  br label %234

; <label>:234                                     ; preds = %233
  %235 = load i32, i32* %j, align 4, !tbaa !1
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %j, align 4, !tbaa !1
  br label %215

; <label>:237                                     ; preds = %215
  br label %238

; <label>:238                                     ; preds = %237
  %239 = load i32, i32* %i, align 4, !tbaa !1
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %i, align 4, !tbaa !1
  br label %211

; <label>:241                                     ; preds = %211
  %242 = load i16, i16* @g_210, align 2, !tbaa !10
  %243 = sext i16 %242 to i64
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %243, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %244)
  %245 = load i16, i16* @g_229, align 2, !tbaa !10
  %246 = zext i16 %245 to i64
  %247 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %247)
  %248 = load volatile i16, i16* @g_263, align 2, !tbaa !10
  %249 = sext i16 %248 to i64
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %250)
  %251 = load volatile i64, i64* @g_268, align 8, !tbaa !7
  %252 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %252)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %253

; <label>:253                                     ; preds = %292, %241
  %254 = load i32, i32* %i, align 4, !tbaa !1
  %255 = icmp slt i32 %254, 9
  br i1 %255, label %256, label %295

; <label>:256                                     ; preds = %253
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %257

; <label>:257                                     ; preds = %288, %256
  %258 = load i32, i32* %j, align 4, !tbaa !1
  %259 = icmp slt i32 %258, 7
  br i1 %259, label %260, label %291

; <label>:260                                     ; preds = %257
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %261

; <label>:261                                     ; preds = %284, %260
  %262 = load i32, i32* %k, align 4, !tbaa !1
  %263 = icmp slt i32 %262, 4
  br i1 %263, label %264, label %287

; <label>:264                                     ; preds = %261
  %265 = load i32, i32* %k, align 4, !tbaa !1
  %266 = sext i32 %265 to i64
  %267 = load i32, i32* %j, align 4, !tbaa !1
  %268 = sext i32 %267 to i64
  %269 = load i32, i32* %i, align 4, !tbaa !1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [9 x [7 x [4 x i64]]], [9 x [7 x [4 x i64]]]* @g_307, i32 0, i64 %270
  %272 = getelementptr inbounds [7 x [4 x i64]], [7 x [4 x i64]]* %271, i32 0, i64 %268
  %273 = getelementptr inbounds [4 x i64], [4 x i64]* %272, i32 0, i64 %266
  %274 = load i64, i64* %273, align 8, !tbaa !7
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 %275)
  %276 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %283

; <label>:278                                     ; preds = %264
  %279 = load i32, i32* %i, align 4, !tbaa !1
  %280 = load i32, i32* %j, align 4, !tbaa !1
  %281 = load i32, i32* %k, align 4, !tbaa !1
  %282 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %279, i32 %280, i32 %281)
  br label %283

; <label>:283                                     ; preds = %278, %264
  br label %284

; <label>:284                                     ; preds = %283
  %285 = load i32, i32* %k, align 4, !tbaa !1
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %k, align 4, !tbaa !1
  br label %261

; <label>:287                                     ; preds = %261
  br label %288

; <label>:288                                     ; preds = %287
  %289 = load i32, i32* %j, align 4, !tbaa !1
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %j, align 4, !tbaa !1
  br label %257

; <label>:291                                     ; preds = %257
  br label %292

; <label>:292                                     ; preds = %291
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %i, align 4, !tbaa !1
  br label %253

; <label>:295                                     ; preds = %253
  %296 = load i64, i64* @g_371, align 8, !tbaa !7
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %297)
  %298 = load i64, i64* @g_382, align 8, !tbaa !7
  %299 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %298, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %299)
  %300 = load i16, i16* @g_440, align 2, !tbaa !10
  %301 = zext i16 %300 to i64
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %302)
  %303 = load i64, i64* @g_458, align 8, !tbaa !7
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %304)
  %305 = load volatile i8, i8* @g_459, align 1, !tbaa !9
  %306 = zext i8 %305 to i64
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %307)
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1212797005, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %308)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %309

; <label>:309                                     ; preds = %325, %295
  %310 = load i32, i32* %i, align 4, !tbaa !1
  %311 = icmp slt i32 %310, 6
  br i1 %311, label %312, label %328

; <label>:312                                     ; preds = %309
  %313 = load i32, i32* %i, align 4, !tbaa !1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [6 x i8], [6 x i8]* @g_469, i32 0, i64 %314
  %316 = load i8, i8* %315, align 1, !tbaa !9
  %317 = zext i8 %316 to i64
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %317, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %318)
  %319 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

; <label>:321                                     ; preds = %312
  %322 = load i32, i32* %i, align 4, !tbaa !1
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %322)
  br label %324

; <label>:324                                     ; preds = %321, %312
  br label %325

; <label>:325                                     ; preds = %324
  %326 = load i32, i32* %i, align 4, !tbaa !1
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %i, align 4, !tbaa !1
  br label %309

; <label>:328                                     ; preds = %309
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %329

; <label>:329                                     ; preds = %357, %328
  %330 = load i32, i32* %i, align 4, !tbaa !1
  %331 = icmp slt i32 %330, 7
  br i1 %331, label %332, label %360

; <label>:332                                     ; preds = %329
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %333

; <label>:333                                     ; preds = %353, %332
  %334 = load i32, i32* %j, align 4, !tbaa !1
  %335 = icmp slt i32 %334, 8
  br i1 %335, label %336, label %356

; <label>:336                                     ; preds = %333
  %337 = load i32, i32* %j, align 4, !tbaa !1
  %338 = sext i32 %337 to i64
  %339 = load i32, i32* %i, align 4, !tbaa !1
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [7 x [8 x i32]], [7 x [8 x i32]]* @g_481, i32 0, i64 %340
  %342 = getelementptr inbounds [8 x i32], [8 x i32]* %341, i32 0, i64 %338
  %343 = load i32, i32* %342, align 4, !tbaa !1
  %344 = zext i32 %343 to i64
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 %345)
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %352

; <label>:348                                     ; preds = %336
  %349 = load i32, i32* %i, align 4, !tbaa !1
  %350 = load i32, i32* %j, align 4, !tbaa !1
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %349, i32 %350)
  br label %352

; <label>:352                                     ; preds = %348, %336
  br label %353

; <label>:353                                     ; preds = %352
  %354 = load i32, i32* %j, align 4, !tbaa !1
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %j, align 4, !tbaa !1
  br label %333

; <label>:356                                     ; preds = %333
  br label %357

; <label>:357                                     ; preds = %356
  %358 = load i32, i32* %i, align 4, !tbaa !1
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %i, align 4, !tbaa !1
  br label %329

; <label>:360                                     ; preds = %329
  %361 = load i32, i32* @g_485, align 4, !tbaa !1
  %362 = zext i32 %361 to i64
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %362, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %363)
  %364 = load i32, i32* @g_487, align 4, !tbaa !1
  %365 = zext i32 %364 to i64
  %366 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %365, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %366)
  %367 = load i32, i32* @g_506, align 4, !tbaa !1
  %368 = sext i32 %367 to i64
  %369 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %368, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %369)
  %370 = load i8, i8* @g_512, align 1, !tbaa !9
  %371 = zext i8 %370 to i64
  %372 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %371, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %372)
  %373 = load i32, i32* @g_514, align 4, !tbaa !1
  %374 = zext i32 %373 to i64
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %374, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %375)
  %376 = load i32, i32* @g_553, align 4, !tbaa !1
  %377 = zext i32 %376 to i64
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %377, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %378)
  %379 = load i16, i16* @g_651, align 2, !tbaa !10
  %380 = sext i16 %379 to i64
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %380, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %381)
  %382 = load volatile i32, i32* @g_787, align 4, !tbaa !1
  %383 = zext i32 %382 to i64
  %384 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %383, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %384)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %385

; <label>:385                                     ; preds = %413, %360
  %386 = load i32, i32* %i, align 4, !tbaa !1
  %387 = icmp slt i32 %386, 2
  br i1 %387, label %388, label %416

; <label>:388                                     ; preds = %385
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %389

; <label>:389                                     ; preds = %409, %388
  %390 = load i32, i32* %j, align 4, !tbaa !1
  %391 = icmp slt i32 %390, 10
  br i1 %391, label %392, label %412

; <label>:392                                     ; preds = %389
  %393 = load i32, i32* %j, align 4, !tbaa !1
  %394 = sext i32 %393 to i64
  %395 = load i32, i32* %i, align 4, !tbaa !1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [2 x [10 x i32]], [2 x [10 x i32]]* @g_788, i32 0, i64 %396
  %398 = getelementptr inbounds [10 x i32], [10 x i32]* %397, i32 0, i64 %394
  %399 = load volatile i32, i32* %398, align 4, !tbaa !1
  %400 = zext i32 %399 to i64
  %401 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %400, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i32 %401)
  %402 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %408

; <label>:404                                     ; preds = %392
  %405 = load i32, i32* %i, align 4, !tbaa !1
  %406 = load i32, i32* %j, align 4, !tbaa !1
  %407 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %405, i32 %406)
  br label %408

; <label>:408                                     ; preds = %404, %392
  br label %409

; <label>:409                                     ; preds = %408
  %410 = load i32, i32* %j, align 4, !tbaa !1
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %j, align 4, !tbaa !1
  br label %389

; <label>:412                                     ; preds = %389
  br label %413

; <label>:413                                     ; preds = %412
  %414 = load i32, i32* %i, align 4, !tbaa !1
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %i, align 4, !tbaa !1
  br label %385

; <label>:416                                     ; preds = %385
  %417 = load volatile i64, i64* @g_1221, align 8, !tbaa !7
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %417, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %418)
  %419 = load i32, i32* @g_1475, align 4, !tbaa !1
  %420 = zext i32 %419 to i64
  %421 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %420, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %421)
  %422 = load i64, i64* @g_1556, align 8, !tbaa !7
  %423 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %422, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %423)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %424

; <label>:424                                     ; preds = %439, %416
  %425 = load i32, i32* %i, align 4, !tbaa !1
  %426 = icmp slt i32 %425, 4
  br i1 %426, label %427, label %442

; <label>:427                                     ; preds = %424
  %428 = load i32, i32* %i, align 4, !tbaa !1
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [4 x i64], [4 x i64]* @g_1582, i32 0, i64 %429
  %431 = load i64, i64* %430, align 8, !tbaa !7
  %432 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %431, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 %432)
  %433 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %438

; <label>:435                                     ; preds = %427
  %436 = load i32, i32* %i, align 4, !tbaa !1
  %437 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %436)
  br label %438

; <label>:438                                     ; preds = %435, %427
  br label %439

; <label>:439                                     ; preds = %438
  %440 = load i32, i32* %i, align 4, !tbaa !1
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %i, align 4, !tbaa !1
  br label %424

; <label>:442                                     ; preds = %424
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %443

; <label>:443                                     ; preds = %471, %442
  %444 = load i32, i32* %i, align 4, !tbaa !1
  %445 = icmp slt i32 %444, 5
  br i1 %445, label %446, label %474

; <label>:446                                     ; preds = %443
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %447

; <label>:447                                     ; preds = %467, %446
  %448 = load i32, i32* %j, align 4, !tbaa !1
  %449 = icmp slt i32 %448, 4
  br i1 %449, label %450, label %470

; <label>:450                                     ; preds = %447
  %451 = load i32, i32* %j, align 4, !tbaa !1
  %452 = sext i32 %451 to i64
  %453 = load i32, i32* %i, align 4, !tbaa !1
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @g_1591, i32 0, i64 %454
  %456 = getelementptr inbounds [4 x i32], [4 x i32]* %455, i32 0, i64 %452
  %457 = load volatile i32, i32* %456, align 4, !tbaa !1
  %458 = zext i32 %457 to i64
  %459 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %458, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i32 %459)
  %460 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %466

; <label>:462                                     ; preds = %450
  %463 = load i32, i32* %i, align 4, !tbaa !1
  %464 = load i32, i32* %j, align 4, !tbaa !1
  %465 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %463, i32 %464)
  br label %466

; <label>:466                                     ; preds = %462, %450
  br label %467

; <label>:467                                     ; preds = %466
  %468 = load i32, i32* %j, align 4, !tbaa !1
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %j, align 4, !tbaa !1
  br label %447

; <label>:470                                     ; preds = %447
  br label %471

; <label>:471                                     ; preds = %470
  %472 = load i32, i32* %i, align 4, !tbaa !1
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %i, align 4, !tbaa !1
  br label %443

; <label>:474                                     ; preds = %443
  %475 = load i32, i32* @g_2029, align 4, !tbaa !1
  %476 = zext i32 %475 to i64
  %477 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %476, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %477)
  %478 = load volatile i32, i32* @g_2280, align 4, !tbaa !1
  %479 = sext i32 %478 to i64
  %480 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %479, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %480)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %481

; <label>:481                                     ; preds = %497, %474
  %482 = load i32, i32* %i, align 4, !tbaa !1
  %483 = icmp slt i32 %482, 7
  br i1 %483, label %484, label %500

; <label>:484                                     ; preds = %481
  %485 = load i32, i32* %i, align 4, !tbaa !1
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [7 x i16], [7 x i16]* @g_2304, i32 0, i64 %486
  %488 = load i16, i16* %487, align 2, !tbaa !10
  %489 = sext i16 %488 to i64
  %490 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %489, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 %490)
  %491 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %496

; <label>:493                                     ; preds = %484
  %494 = load i32, i32* %i, align 4, !tbaa !1
  %495 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %494)
  br label %496

; <label>:496                                     ; preds = %493, %484
  br label %497

; <label>:497                                     ; preds = %496
  %498 = load i32, i32* %i, align 4, !tbaa !1
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %i, align 4, !tbaa !1
  br label %481

; <label>:500                                     ; preds = %481
  %501 = load i16, i16* @g_2307, align 2, !tbaa !10
  %502 = sext i16 %501 to i64
  %503 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %502, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %503)
  %504 = load volatile i32, i32* @g_2334, align 4, !tbaa !1
  %505 = sext i32 %504 to i64
  %506 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %505, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %506)
  %507 = load i8, i8* @g_2355, align 1, !tbaa !9
  %508 = zext i8 %507 to i64
  %509 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %508, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %509)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %510

; <label>:510                                     ; preds = %526, %500
  %511 = load i32, i32* %i, align 4, !tbaa !1
  %512 = icmp slt i32 %511, 7
  br i1 %512, label %513, label %529

; <label>:513                                     ; preds = %510
  %514 = load i32, i32* %i, align 4, !tbaa !1
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds [7 x i32], [7 x i32]* @g_2356, i32 0, i64 %515
  %517 = load volatile i32, i32* %516, align 4, !tbaa !1
  %518 = zext i32 %517 to i64
  %519 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %518, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 %519)
  %520 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %525

; <label>:522                                     ; preds = %513
  %523 = load i32, i32* %i, align 4, !tbaa !1
  %524 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %523)
  br label %525

; <label>:525                                     ; preds = %522, %513
  br label %526

; <label>:526                                     ; preds = %525
  %527 = load i32, i32* %i, align 4, !tbaa !1
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %i, align 4, !tbaa !1
  br label %510

; <label>:529                                     ; preds = %510
  %530 = load i32, i32* @g_2636, align 4, !tbaa !1
  %531 = zext i32 %530 to i64
  %532 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %531, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %532)
  %533 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %534 = zext i32 %533 to i64
  %535 = xor i64 %534, 4294967295
  %536 = trunc i64 %535 to i32
  %537 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %536, i32 %537)
  %538 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %538) #1
  %539 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %539) #1
  %540 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %540) #1
  %541 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %541) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @platform_main_begin() #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @crc32_gentab() #0 {
  %crc = alloca i32, align 4
  %poly = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast i32* %crc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %poly to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -306674912, i32* %poly, align 4, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %5

; <label>:5                                       ; preds = %33, %0
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %36

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %i, align 4, !tbaa !1
  store i32 %9, i32* %crc, align 4, !tbaa !1
  store i32 8, i32* %j, align 4, !tbaa !1
  br label %10

; <label>:10                                      ; preds = %25, %8
  %11 = load i32, i32* %j, align 4, !tbaa !1
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* %crc, align 4, !tbaa !1
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %crc, align 4, !tbaa !1
  %19 = lshr i32 %18, 1
  %20 = xor i32 %19, -306674912
  store i32 %20, i32* %crc, align 4, !tbaa !1
  br label %24

; <label>:21                                      ; preds = %13
  %22 = load i32, i32* %crc, align 4, !tbaa !1
  %23 = lshr i32 %22, 1
  store i32 %23, i32* %crc, align 4, !tbaa !1
  br label %24

; <label>:24                                      ; preds = %21, %17
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i32, i32* %j, align 4, !tbaa !1
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %j, align 4, !tbaa !1
  br label %10

; <label>:28                                      ; preds = %10
  %29 = load i32, i32* %crc, align 4, !tbaa !1
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i32 0, i64 %31
  store i32 %29, i32* %32, align 4, !tbaa !1
  br label %33

; <label>:33                                      ; preds = %28
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4, !tbaa !1
  br label %5

; <label>:36                                      ; preds = %5
  %37 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %poly to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %crc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal signext i16 @func_1() #0 {
  %l_76 = alloca i8, align 1
  %l_77 = alloca [8 x [5 x [6 x i16]]], align 16
  %l_441 = alloca i32, align 4
  %l_2633 = alloca i32, align 4
  %l_2639 = alloca i32*, align 8
  %l_2641 = alloca i8, align 1
  %l_2654 = alloca i64*, align 8
  %l_2653 = alloca i64**, align 8
  %l_2677 = alloca i32*, align 8
  %l_2690 = alloca i32, align 4
  %l_2691 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_16 = alloca [2 x [9 x [10 x i32]]], align 16
  %l_439 = alloca i16*, align 8
  %l_442 = alloca i32*, align 8
  %l_443 = alloca [9 x i32*], align 16
  %l_444 = alloca [4 x [7 x [4 x i64]]], align 16
  %l_462 = alloca i32, align 4
  %l_470 = alloca i8*, align 8
  %l_471 = alloca i8, align 1
  %l_2646 = alloca i32**, align 8
  %l_2684 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %l_2687 = alloca i8, align 1
  %l_2688 = alloca i32, align 4
  %l_2689 = alloca [4 x [4 x [8 x i32*]]], align 16
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %k6 = alloca i32, align 4
  %l_2696 = alloca i32*, align 8
  call void @llvm.lifetime.start(i64 1, i8* %l_76) #1
  store i8 7, i8* %l_76, align 1, !tbaa !9
  %1 = bitcast [8 x [5 x [6 x i16]]]* %l_77 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %1) #1
  %2 = bitcast [8 x [5 x [6 x i16]]]* %l_77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([8 x [5 x [6 x i16]]]* @func_1.l_77 to i8*), i64 480, i32 16, i1 false)
  %3 = bitcast i32* %l_441 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 565416251, i32* %l_441, align 4, !tbaa !1
  %4 = bitcast i32* %l_2633 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1064511634, i32* %l_2633, align 4, !tbaa !1
  %5 = bitcast i32** %l_2639 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* null, i32** %l_2639, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2641) #1
  store i8 0, i8* %l_2641, align 1, !tbaa !9
  %6 = bitcast i64** %l_2654 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64* @g_147, i64** %l_2654, align 8, !tbaa !5
  %7 = bitcast i64*** %l_2653 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64** %l_2654, i64*** %l_2653, align 8, !tbaa !5
  %8 = bitcast i32** %l_2677 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_506, i32** %l_2677, align 8, !tbaa !5
  %9 = bitcast i32* %l_2690 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %l_2690, align 4, !tbaa !1
  %10 = bitcast i64* %l_2691 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 3, i64* %l_2691, align 8, !tbaa !7
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 -22, i32* @g_2, align 4, !tbaa !1
  br label %14

; <label>:14                                      ; preds = %45, %0
  %15 = load i32, i32* @g_2, align 4, !tbaa !1
  %16 = icmp slt i32 %15, 19
  br i1 %16, label %17, label %48

; <label>:17                                      ; preds = %14
  %18 = bitcast [2 x [9 x [10 x i32]]]* %l_16 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %18) #1
  %19 = bitcast [2 x [9 x [10 x i32]]]* %l_16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast ([2 x [9 x [10 x i32]]]* @func_1.l_16 to i8*), i64 720, i32 16, i1 false)
  %20 = bitcast i16** %l_439 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i16* @g_440, i16** %l_439, align 8, !tbaa !5
  %21 = bitcast i32** %l_442 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i32* null, i32** %l_442, align 8, !tbaa !5
  %22 = bitcast [9 x i32*]* %l_443 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %22) #1
  %23 = bitcast [9 x i32*]* %l_443 to i8*
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 72, i32 16, i1 false)
  %24 = bitcast [4 x [7 x [4 x i64]]]* %l_444 to i8*
  call void @llvm.lifetime.start(i64 896, i8* %24) #1
  %25 = bitcast [4 x [7 x [4 x i64]]]* %l_444 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast ([4 x [7 x [4 x i64]]]* @func_1.l_444 to i8*), i64 896, i32 16, i1 false)
  %26 = bitcast i32* %l_462 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 851255951, i32* %l_462, align 4, !tbaa !1
  %27 = bitcast i8** %l_470 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i8* @g_118, i8** %l_470, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_471) #1
  store i8 -98, i8* %l_471, align 1, !tbaa !9
  %28 = bitcast i32*** %l_2646 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i32** @g_88, i32*** %l_2646, align 8, !tbaa !5
  %29 = bitcast i32* %l_2684 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  store i32 -1, i32* %l_2684, align 4, !tbaa !1
  %30 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %l_2684 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32*** %l_2646 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_471) #1
  %38 = bitcast i8** %l_470 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32* %l_462 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast [4 x [7 x [4 x i64]]]* %l_444 to i8*
  call void @llvm.lifetime.end(i64 896, i8* %40) #1
  %41 = bitcast [9 x i32*]* %l_443 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %41) #1
  %42 = bitcast i32** %l_442 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i16** %l_439 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast [2 x [9 x [10 x i32]]]* %l_16 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %44) #1
  br label %45

; <label>:45                                      ; preds = %17
  %46 = load i32, i32* @g_2, align 4, !tbaa !1
  %47 = call i32 @safe_add_func_uint32_t_u_u(i32 %46, i32 8)
  store i32 %47, i32* @g_2, align 4, !tbaa !1
  br label %14

; <label>:48                                      ; preds = %14
  store i8 -25, i8* @g_2355, align 1, !tbaa !9
  br label %49

; <label>:49                                      ; preds = %230, %48
  %50 = load i8, i8* @g_2355, align 1, !tbaa !9
  %51 = zext i8 %50 to i32
  %52 = icmp slt i32 %51, 40
  br i1 %52, label %53, label %233

; <label>:53                                      ; preds = %49
  call void @llvm.lifetime.start(i64 1, i8* %l_2687) #1
  store i8 0, i8* %l_2687, align 1, !tbaa !9
  %54 = bitcast i32* %l_2688 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  store i32 -1733348948, i32* %l_2688, align 4, !tbaa !1
  %55 = bitcast [4 x [4 x [8 x i32*]]]* %l_2689 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %55) #1
  %56 = getelementptr inbounds [4 x [4 x [8 x i32*]]], [4 x [4 x [8 x i32*]]]* %l_2689, i64 0, i64 0
  %57 = getelementptr inbounds [4 x [8 x i32*]], [4 x [8 x i32*]]* %56, i64 0, i64 0
  %58 = getelementptr inbounds [8 x i32*], [8 x i32*]* %57, i64 0, i64 0
  store i32* @g_506, i32** %58, !tbaa !5
  %59 = getelementptr inbounds i32*, i32** %58, i64 1
  store i32* null, i32** %59, !tbaa !5
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %60, !tbaa !5
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  store i32* @g_2, i32** %61, !tbaa !5
  %62 = getelementptr inbounds i32*, i32** %61, i64 1
  store i32* null, i32** %62, !tbaa !5
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  store i32* @g_2, i32** %63, !tbaa !5
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %64, !tbaa !5
  %65 = getelementptr inbounds i32*, i32** %64, i64 1
  store i32* null, i32** %65, !tbaa !5
  %66 = getelementptr inbounds [8 x i32*], [8 x i32*]* %57, i64 1
  %67 = getelementptr inbounds [8 x i32*], [8 x i32*]* %66, i64 0, i64 0
  store i32* %l_2688, i32** %67, !tbaa !5
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %68, !tbaa !5
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  store i32* @g_506, i32** %69, !tbaa !5
  %70 = getelementptr inbounds i32*, i32** %69, i64 1
  store i32* %l_2688, i32** %70, !tbaa !5
  %71 = getelementptr inbounds i32*, i32** %70, i64 1
  store i32* @g_2, i32** %71, !tbaa !5
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  store i32* @g_2, i32** %72, !tbaa !5
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  store i32* %l_2688, i32** %73, !tbaa !5
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  store i32* @g_506, i32** %74, !tbaa !5
  %75 = getelementptr inbounds [8 x i32*], [8 x i32*]* %66, i64 1
  %76 = getelementptr inbounds [8 x i32*], [8 x i32*]* %75, i64 0, i64 0
  store i32* null, i32** %76, !tbaa !5
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  store i32* null, i32** %77, !tbaa !5
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  store i32* %l_2633, i32** %78, !tbaa !5
  %79 = getelementptr inbounds i32*, i32** %78, i64 1
  store i32* @g_506, i32** %79, !tbaa !5
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  store i32* %l_2688, i32** %80, !tbaa !5
  %81 = getelementptr inbounds i32*, i32** %80, i64 1
  store i32* %l_2633, i32** %81, !tbaa !5
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  store i32* %l_2688, i32** %82, !tbaa !5
  %83 = getelementptr inbounds i32*, i32** %82, i64 1
  store i32* @g_506, i32** %83, !tbaa !5
  %84 = getelementptr inbounds [8 x i32*], [8 x i32*]* %75, i64 1
  %85 = getelementptr inbounds [8 x i32*], [8 x i32*]* %84, i64 0, i64 0
  store i32* @g_506, i32** %85, !tbaa !5
  %86 = getelementptr inbounds i32*, i32** %85, i64 1
  store i32* @g_506, i32** %86, !tbaa !5
  %87 = getelementptr inbounds i32*, i32** %86, i64 1
  store i32* @g_506, i32** %87, !tbaa !5
  %88 = getelementptr inbounds i32*, i32** %87, i64 1
  store i32* @g_2, i32** %88, !tbaa !5
  %89 = getelementptr inbounds i32*, i32** %88, i64 1
  store i32* @g_506, i32** %89, !tbaa !5
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %90, !tbaa !5
  %91 = getelementptr inbounds i32*, i32** %90, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %91, !tbaa !5
  %92 = getelementptr inbounds i32*, i32** %91, i64 1
  store i32* @g_506, i32** %92, !tbaa !5
  %93 = getelementptr inbounds [4 x [8 x i32*]], [4 x [8 x i32*]]* %56, i64 1
  %94 = getelementptr inbounds [4 x [8 x i32*]], [4 x [8 x i32*]]* %93, i64 0, i64 0
  %95 = getelementptr inbounds [8 x i32*], [8 x i32*]* %94, i64 0, i64 0
  store i32* @g_506, i32** %95, !tbaa !5
  %96 = getelementptr inbounds i32*, i32** %95, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %96, !tbaa !5
  %97 = getelementptr inbounds i32*, i32** %96, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %97, !tbaa !5
  %98 = getelementptr inbounds i32*, i32** %97, i64 1
  store i32* @g_506, i32** %98, !tbaa !5
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  store i32* @g_2, i32** %99, !tbaa !5
  %100 = getelementptr inbounds i32*, i32** %99, i64 1
  store i32* @g_506, i32** %100, !tbaa !5
  %101 = getelementptr inbounds i32*, i32** %100, i64 1
  store i32* @g_506, i32** %101, !tbaa !5
  %102 = getelementptr inbounds i32*, i32** %101, i64 1
  store i32* @g_506, i32** %102, !tbaa !5
  %103 = getelementptr inbounds [8 x i32*], [8 x i32*]* %94, i64 1
  %104 = getelementptr inbounds [8 x i32*], [8 x i32*]* %103, i64 0, i64 0
  store i32* @g_506, i32** %104, !tbaa !5
  %105 = getelementptr inbounds i32*, i32** %104, i64 1
  store i32* %l_2688, i32** %105, !tbaa !5
  %106 = getelementptr inbounds i32*, i32** %105, i64 1
  store i32* %l_2633, i32** %106, !tbaa !5
  %107 = getelementptr inbounds i32*, i32** %106, i64 1
  store i32* %l_2688, i32** %107, !tbaa !5
  %108 = getelementptr inbounds i32*, i32** %107, i64 1
  store i32* @g_506, i32** %108, !tbaa !5
  %109 = getelementptr inbounds i32*, i32** %108, i64 1
  store i32* %l_2633, i32** %109, !tbaa !5
  %110 = getelementptr inbounds i32*, i32** %109, i64 1
  store i32* null, i32** %110, !tbaa !5
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  store i32* null, i32** %111, !tbaa !5
  %112 = getelementptr inbounds [8 x i32*], [8 x i32*]* %103, i64 1
  %113 = getelementptr inbounds [8 x i32*], [8 x i32*]* %112, i64 0, i64 0
  store i32* @g_506, i32** %113, !tbaa !5
  %114 = getelementptr inbounds i32*, i32** %113, i64 1
  store i32* %l_2688, i32** %114, !tbaa !5
  %115 = getelementptr inbounds i32*, i32** %114, i64 1
  store i32* @g_2, i32** %115, !tbaa !5
  %116 = getelementptr inbounds i32*, i32** %115, i64 1
  store i32* @g_2, i32** %116, !tbaa !5
  %117 = getelementptr inbounds i32*, i32** %116, i64 1
  store i32* %l_2688, i32** %117, !tbaa !5
  %118 = getelementptr inbounds i32*, i32** %117, i64 1
  store i32* @g_506, i32** %118, !tbaa !5
  %119 = getelementptr inbounds i32*, i32** %118, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %119, !tbaa !5
  %120 = getelementptr inbounds i32*, i32** %119, i64 1
  store i32* %l_2688, i32** %120, !tbaa !5
  %121 = getelementptr inbounds [8 x i32*], [8 x i32*]* %112, i64 1
  %122 = getelementptr inbounds [8 x i32*], [8 x i32*]* %121, i64 0, i64 0
  store i32* null, i32** %122, !tbaa !5
  %123 = getelementptr inbounds i32*, i32** %122, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %123, !tbaa !5
  %124 = getelementptr inbounds i32*, i32** %123, i64 1
  store i32* @g_2, i32** %124, !tbaa !5
  %125 = getelementptr inbounds i32*, i32** %124, i64 1
  store i32* null, i32** %125, !tbaa !5
  %126 = getelementptr inbounds i32*, i32** %125, i64 1
  store i32* @g_2, i32** %126, !tbaa !5
  %127 = getelementptr inbounds i32*, i32** %126, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %127, !tbaa !5
  %128 = getelementptr inbounds i32*, i32** %127, i64 1
  store i32* null, i32** %128, !tbaa !5
  %129 = getelementptr inbounds i32*, i32** %128, i64 1
  store i32* @g_506, i32** %129, !tbaa !5
  %130 = getelementptr inbounds [4 x [8 x i32*]], [4 x [8 x i32*]]* %93, i64 1
  %131 = getelementptr inbounds [4 x [8 x i32*]], [4 x [8 x i32*]]* %130, i64 0, i64 0
  %132 = getelementptr inbounds [8 x i32*], [8 x i32*]* %131, i64 0, i64 0
  store i32* %l_2688, i32** %132, !tbaa !5
  %133 = getelementptr inbounds i32*, i32** %132, i64 1
  store i32* @g_506, i32** %133, !tbaa !5
  %134 = getelementptr inbounds i32*, i32** %133, i64 1
  store i32* %l_2633, i32** %134, !tbaa !5
  %135 = getelementptr inbounds i32*, i32** %134, i64 1
  store i32* null, i32** %135, !tbaa !5
  %136 = getelementptr inbounds i32*, i32** %135, i64 1
  store i32* null, i32** %136, !tbaa !5
  %137 = getelementptr inbounds i32*, i32** %136, i64 1
  store i32* %l_2633, i32** %137, !tbaa !5
  %138 = getelementptr inbounds i32*, i32** %137, i64 1
  store i32* @g_506, i32** %138, !tbaa !5
  %139 = getelementptr inbounds i32*, i32** %138, i64 1
  store i32* %l_2688, i32** %139, !tbaa !5
  %140 = getelementptr inbounds [8 x i32*], [8 x i32*]* %131, i64 1
  %141 = getelementptr inbounds [8 x i32*], [8 x i32*]* %140, i64 0, i64 0
  store i32* @g_506, i32** %141, !tbaa !5
  %142 = getelementptr inbounds i32*, i32** %141, i64 1
  store i32* null, i32** %142, !tbaa !5
  %143 = getelementptr inbounds i32*, i32** %142, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %143, !tbaa !5
  %144 = getelementptr inbounds i32*, i32** %143, i64 1
  store i32* @g_2, i32** %144, !tbaa !5
  %145 = getelementptr inbounds i32*, i32** %144, i64 1
  store i32* null, i32** %145, !tbaa !5
  %146 = getelementptr inbounds i32*, i32** %145, i64 1
  store i32* @g_2, i32** %146, !tbaa !5
  %147 = getelementptr inbounds i32*, i32** %146, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %147, !tbaa !5
  %148 = getelementptr inbounds i32*, i32** %147, i64 1
  store i32* null, i32** %148, !tbaa !5
  %149 = getelementptr inbounds [8 x i32*], [8 x i32*]* %140, i64 1
  %150 = getelementptr inbounds [8 x i32*], [8 x i32*]* %149, i64 0, i64 0
  store i32* %l_2688, i32** %150, !tbaa !5
  %151 = getelementptr inbounds i32*, i32** %150, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %151, !tbaa !5
  %152 = getelementptr inbounds i32*, i32** %151, i64 1
  store i32* @g_506, i32** %152, !tbaa !5
  %153 = getelementptr inbounds i32*, i32** %152, i64 1
  store i32* %l_2688, i32** %153, !tbaa !5
  %154 = getelementptr inbounds i32*, i32** %153, i64 1
  store i32* @g_2, i32** %154, !tbaa !5
  %155 = getelementptr inbounds i32*, i32** %154, i64 1
  store i32* @g_2, i32** %155, !tbaa !5
  %156 = getelementptr inbounds i32*, i32** %155, i64 1
  store i32* %l_2688, i32** %156, !tbaa !5
  %157 = getelementptr inbounds i32*, i32** %156, i64 1
  store i32* @g_506, i32** %157, !tbaa !5
  %158 = getelementptr inbounds [8 x i32*], [8 x i32*]* %149, i64 1
  %159 = getelementptr inbounds [8 x i32*], [8 x i32*]* %158, i64 0, i64 0
  store i32* null, i32** %159, !tbaa !5
  %160 = getelementptr inbounds i32*, i32** %159, i64 1
  store i32* null, i32** %160, !tbaa !5
  %161 = getelementptr inbounds i32*, i32** %160, i64 1
  store i32* %l_2633, i32** %161, !tbaa !5
  %162 = getelementptr inbounds i32*, i32** %161, i64 1
  store i32* @g_506, i32** %162, !tbaa !5
  %163 = getelementptr inbounds i32*, i32** %162, i64 1
  store i32* %l_2688, i32** %163, !tbaa !5
  %164 = getelementptr inbounds i32*, i32** %163, i64 1
  store i32* %l_2633, i32** %164, !tbaa !5
  %165 = getelementptr inbounds i32*, i32** %164, i64 1
  store i32* %l_2688, i32** %165, !tbaa !5
  %166 = getelementptr inbounds i32*, i32** %165, i64 1
  store i32* @g_506, i32** %166, !tbaa !5
  %167 = getelementptr inbounds [4 x [8 x i32*]], [4 x [8 x i32*]]* %130, i64 1
  %168 = getelementptr inbounds [4 x [8 x i32*]], [4 x [8 x i32*]]* %167, i64 0, i64 0
  %169 = getelementptr inbounds [8 x i32*], [8 x i32*]* %168, i64 0, i64 0
  store i32* @g_506, i32** %169, !tbaa !5
  %170 = getelementptr inbounds i32*, i32** %169, i64 1
  store i32* @g_506, i32** %170, !tbaa !5
  %171 = getelementptr inbounds i32*, i32** %170, i64 1
  store i32* @g_506, i32** %171, !tbaa !5
  %172 = getelementptr inbounds i32*, i32** %171, i64 1
  store i32* @g_2, i32** %172, !tbaa !5
  %173 = getelementptr inbounds i32*, i32** %172, i64 1
  store i32* @g_506, i32** %173, !tbaa !5
  %174 = getelementptr inbounds i32*, i32** %173, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %174, !tbaa !5
  %175 = getelementptr inbounds i32*, i32** %174, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %175, !tbaa !5
  %176 = getelementptr inbounds i32*, i32** %175, i64 1
  store i32* @g_506, i32** %176, !tbaa !5
  %177 = getelementptr inbounds [8 x i32*], [8 x i32*]* %168, i64 1
  %178 = getelementptr inbounds [8 x i32*], [8 x i32*]* %177, i64 0, i64 0
  store i32* @g_506, i32** %178, !tbaa !5
  %179 = getelementptr inbounds i32*, i32** %178, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %179, !tbaa !5
  %180 = getelementptr inbounds i32*, i32** %179, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %180, !tbaa !5
  %181 = getelementptr inbounds i32*, i32** %180, i64 1
  store i32* @g_506, i32** %181, !tbaa !5
  %182 = getelementptr inbounds i32*, i32** %181, i64 1
  store i32* @g_2, i32** %182, !tbaa !5
  %183 = getelementptr inbounds i32*, i32** %182, i64 1
  store i32* @g_506, i32** %183, !tbaa !5
  %184 = getelementptr inbounds i32*, i32** %183, i64 1
  store i32* @g_506, i32** %184, !tbaa !5
  %185 = getelementptr inbounds i32*, i32** %184, i64 1
  store i32* @g_506, i32** %185, !tbaa !5
  %186 = getelementptr inbounds [8 x i32*], [8 x i32*]* %177, i64 1
  %187 = getelementptr inbounds [8 x i32*], [8 x i32*]* %186, i64 0, i64 0
  store i32* @g_506, i32** %187, !tbaa !5
  %188 = getelementptr inbounds i32*, i32** %187, i64 1
  store i32* %l_2688, i32** %188, !tbaa !5
  %189 = getelementptr inbounds i32*, i32** %188, i64 1
  store i32* %l_2633, i32** %189, !tbaa !5
  %190 = getelementptr inbounds i32*, i32** %189, i64 1
  store i32* %l_2688, i32** %190, !tbaa !5
  %191 = getelementptr inbounds i32*, i32** %190, i64 1
  store i32* @g_506, i32** %191, !tbaa !5
  %192 = getelementptr inbounds i32*, i32** %191, i64 1
  store i32* %l_2633, i32** %192, !tbaa !5
  %193 = getelementptr inbounds i32*, i32** %192, i64 1
  store i32* null, i32** %193, !tbaa !5
  %194 = getelementptr inbounds i32*, i32** %193, i64 1
  store i32* null, i32** %194, !tbaa !5
  %195 = getelementptr inbounds [8 x i32*], [8 x i32*]* %186, i64 1
  %196 = getelementptr inbounds [8 x i32*], [8 x i32*]* %195, i64 0, i64 0
  store i32* @g_506, i32** %196, !tbaa !5
  %197 = getelementptr inbounds i32*, i32** %196, i64 1
  store i32* %l_2688, i32** %197, !tbaa !5
  %198 = getelementptr inbounds i32*, i32** %197, i64 1
  store i32* @g_2, i32** %198, !tbaa !5
  %199 = getelementptr inbounds i32*, i32** %198, i64 1
  store i32* @g_2, i32** %199, !tbaa !5
  %200 = getelementptr inbounds i32*, i32** %199, i64 1
  store i32* %l_2688, i32** %200, !tbaa !5
  %201 = getelementptr inbounds i32*, i32** %200, i64 1
  store i32* @g_506, i32** %201, !tbaa !5
  %202 = getelementptr inbounds i32*, i32** %201, i64 1
  store i32* getelementptr inbounds ([8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_99, i32 0, i64 6, i64 6, i64 1), i32** %202, !tbaa !5
  %203 = getelementptr inbounds i32*, i32** %202, i64 1
  store i32* %l_2688, i32** %203, !tbaa !5
  %204 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %204) #1
  %205 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %205) #1
  %206 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %206) #1
  %207 = load i64, i64* %l_2691, align 8, !tbaa !7
  %208 = add i64 %207, -1
  store i64 %208, i64* %l_2691, align 8, !tbaa !7
  store i8 0, i8* %l_76, align 1, !tbaa !9
  br label %209

; <label>:209                                     ; preds = %216, %53
  %210 = load i8, i8* %l_76, align 1, !tbaa !9
  %211 = zext i8 %210 to i32
  %212 = icmp ne i32 %211, 3
  br i1 %212, label %213, label %221

; <label>:213                                     ; preds = %209
  %214 = bitcast i32** %l_2696 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %214) #1
  store i32* @g_2, i32** %l_2696, align 8, !tbaa !5
  store i32* %l_2690, i32** %l_2696, align 8, !tbaa !5
  store i32* %l_2688, i32** %l_2696, align 8, !tbaa !5
  %215 = bitcast i32** %l_2696 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  br label %216

; <label>:216                                     ; preds = %213
  %217 = load i8, i8* %l_76, align 1, !tbaa !9
  %218 = zext i8 %217 to i16
  %219 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %218, i16 signext 3)
  %220 = trunc i16 %219 to i8
  store i8 %220, i8* %l_76, align 1, !tbaa !9
  br label %209

; <label>:221                                     ; preds = %209
  %222 = getelementptr inbounds [4 x [4 x [8 x i32*]]], [4 x [4 x [8 x i32*]]]* %l_2689, i32 0, i64 2
  %223 = getelementptr inbounds [4 x [8 x i32*]], [4 x [8 x i32*]]* %222, i32 0, i64 1
  %224 = getelementptr inbounds [8 x i32*], [8 x i32*]* %223, i32 0, i64 7
  store i32* %l_441, i32** %224, align 8, !tbaa !5
  %225 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast [4 x [4 x [8 x i32*]]]* %l_2689 to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %228) #1
  %229 = bitcast i32* %l_2688 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2687) #1
  br label %230

; <label>:230                                     ; preds = %221
  %231 = load i8, i8* @g_2355, align 1, !tbaa !9
  %232 = add i8 %231, 1
  store i8 %232, i8* @g_2355, align 1, !tbaa !9
  br label %49

; <label>:233                                     ; preds = %49
  %234 = load volatile i16****, i16***** @g_879, align 8, !tbaa !5
  %235 = load i16***, i16**** %234, align 8, !tbaa !5
  %236 = load i16**, i16*** %235, align 8, !tbaa !5
  %237 = load i16*, i16** %236, align 8, !tbaa !5
  %238 = load i16, i16* %237, align 2, !tbaa !10
  %239 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %240 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  %242 = bitcast i64* %l_2691 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %242) #1
  %243 = bitcast i32* %l_2690 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32** %l_2677 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %244) #1
  %245 = bitcast i64*** %l_2653 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %245) #1
  %246 = bitcast i64** %l_2654 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2641) #1
  %247 = bitcast i32** %l_2639 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %248 = bitcast i32* %l_2633 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  %249 = bitcast i32* %l_441 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  %250 = bitcast [8 x [5 x [6 x i16]]]* %l_77 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %250) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_76) #1
  ret i16 %238
}

; Function Attrs: nounwind uwtable
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i64 %val, i64* %1, align 8, !tbaa !7
  store i8* %vname, i8** %2, align 8, !tbaa !5
  store i32 %flag, i32* %3, align 4, !tbaa !1
  %4 = load i64, i64* %1, align 8, !tbaa !7
  call void @crc32_8bytes(i64 %4)
  %5 = load i32, i32* %3, align 4, !tbaa !1
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %0
  %8 = load i8*, i8** %2, align 8, !tbaa !5
  %9 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %10 = zext i32 %9 to i64
  %11 = xor i64 %10, 4294967295
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i32 0, i32 0), i8* %8, i64 %11)
  br label %13

; <label>:13                                      ; preds = %7, %0
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %crc, i32* %1, align 4, !tbaa !1
  store i32 %flag, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @safe_add_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = load i32, i32* %2, align 4, !tbaa !1
  %5 = add i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal void @crc32_8bytes(i64 %val) #0 {
  %1 = alloca i64, align 8
  store i64 %val, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = lshr i64 %2, 0
  %4 = and i64 %3, 255
  %5 = trunc i64 %4 to i8
  call void @crc32_byte(i8 zeroext %5)
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = lshr i64 %6, 8
  %8 = and i64 %7, 255
  %9 = trunc i64 %8 to i8
  call void @crc32_byte(i8 zeroext %9)
  %10 = load i64, i64* %1, align 8, !tbaa !7
  %11 = lshr i64 %10, 16
  %12 = and i64 %11, 255
  %13 = trunc i64 %12 to i8
  call void @crc32_byte(i8 zeroext %13)
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = lshr i64 %14, 24
  %16 = and i64 %15, 255
  %17 = trunc i64 %16 to i8
  call void @crc32_byte(i8 zeroext %17)
  %18 = load i64, i64* %1, align 8, !tbaa !7
  %19 = lshr i64 %18, 32
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i8
  call void @crc32_byte(i8 zeroext %21)
  %22 = load i64, i64* %1, align 8, !tbaa !7
  %23 = lshr i64 %22, 40
  %24 = and i64 %23, 255
  %25 = trunc i64 %24 to i8
  call void @crc32_byte(i8 zeroext %25)
  %26 = load i64, i64* %1, align 8, !tbaa !7
  %27 = lshr i64 %26, 48
  %28 = and i64 %27, 255
  %29 = trunc i64 %28 to i8
  call void @crc32_byte(i8 zeroext %29)
  %30 = load i64, i64* %1, align 8, !tbaa !7
  %31 = lshr i64 %30, 56
  %32 = and i64 %31, 255
  %33 = trunc i64 %32 to i8
  call void @crc32_byte(i8 zeroext %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @crc32_byte(i8 zeroext %b) #0 {
  %1 = alloca i8, align 1
  store i8 %b, i8* %1, align 1, !tbaa !9
  %2 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %3 = lshr i32 %2, 8
  %4 = and i32 %3, 16777215
  %5 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  %8 = xor i32 %5, %7
  %9 = and i32 %8, 255
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i32 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !1
  %13 = xor i32 %4, %12
  store i32 %13, i32* @crc32_context, align 4, !tbaa !1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.1 (tags/RELEASE_371/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
