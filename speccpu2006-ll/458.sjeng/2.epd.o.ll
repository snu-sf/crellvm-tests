; ModuleID = 'epd.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.move_s = type { i32, i32, i32, i32, i32, i32 }

@setup_epd_line.rankoffsets = internal global [8 x i32] [i32 110, i32 98, i32 86, i32 74, i32 62, i32 50, i32 38, i32 26], align 16
@board = external global [144 x i32], align 16
@white_castled = external global i32, align 4
@black_castled = external global i32, align 4
@book_ply = external global i32, align 4
@bking_loc = external global i32, align 4
@wking_loc = external global i32, align 4
@white_to_move = external global i32, align 4
@moved = external global [144 x i32], align 16
@ep_square = external global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"bm\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"No best-move or avoid-move found!\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\0AName of EPD testsuite: \00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"\0ATime per move (s): \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@root_to_move = external global i32, align 4
@stdout = external global %struct._IO_FILE*, align 8
@forcedwin = external global i32, align 4
@fixed_time = external global i32, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"\0ANodes: %i (%0.2f%% qnodes)\0A\00", align 1
@nodes = external global i32, align 4
@qnodes = external global i32, align 4
@.str.8 = private unnamed_addr constant [54 x i8] c"ECacheProbes : %u   ECacheHits : %u   HitRate : %f%%\0A\00", align 1
@ECacheProbes = external global i32, align 4
@ECacheHits = external global i32, align 4
@.str.9 = private unnamed_addr constant [60 x i8] c"TTStores : %u TTProbes : %u   TTHits : %u   HitRate : %f%%\0A\00", align 1
@TTStores = external global i32, align 4
@TTProbes = external global i32, align 4
@TTHits = external global i32, align 4
@.str.10 = private unnamed_addr constant [51 x i8] c"NTries : %u  NCuts : %u  CutRate : %f%%  TExt: %u\0A\00", align 1
@NTries = external global i32, align 4
@NCuts = external global i32, align 4
@TExt = external global i32, align 4
@.str.11 = private unnamed_addr constant [61 x i8] c"Check extensions: %u  Razor drops : %u  Razor Material : %u\0A\00", align 1
@ext_check = external global i32, align 4
@razor_drop = external global i32, align 4
@razor_material = external global i32, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"Move ordering : %f%%\0A\00", align 1
@FHF = external global i32, align 4
@FH = external global i32, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"Material score: %d  Eval : %d  MaxPosDiff: %d\0A\00", align 1
@Material = external global i32, align 4
@maxposdiff = external global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"Solution found.\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Solution not found.\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Solved: %d/%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"EPD: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Searching to %d ply\0A\00", align 1
@maxdepth = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @setup_epd_line(i8* %inbuff) #0 {
entry:
  %inbuff.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %rankp = alloca i32, align 4
  %rankoffset = alloca i32, align 4
  %fileoffset = alloca i32, align 4
  %j = alloca i32, align 4
  %stage = alloca i32, align 4
  %converterf = alloca i32, align 4
  %converterr = alloca i32, align 4
  %ep_file = alloca i32, align 4
  %ep_rank = alloca i32, align 4
  %norm_file = alloca i32, align 4
  %norm_rank = alloca i32, align 4
  store i8* %inbuff, i8** %inbuff.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %rankp, align 4
  store i32 0, i32* %rankoffset, align 4
  store i32 0, i32* %fileoffset, align 4
  store i32 0, i32* %stage, align 4
  store i32 97, i32* %converterf, align 4
  store i32 49, i32* %converterr, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([144 x i32]* @board to i8*), i8 0, i64 576, i32 16, i1 false)
  store i32 0, i32* @white_castled, align 4
  store i32 0, i32* @black_castled, align 4
  store i32 50, i32* @book_ply, align 4
  %0 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @setup_epd_line.rankoffsets, i32 0, i64 0), align 4
  store i32 %0, i32* %rankoffset, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %if.end.223, %while.end
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 10
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.2
  %8 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 %idxprom8
  %10 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.2
  %11 = phi i1 [ false, %while.cond.2 ], [ %cmp11, %land.rhs ]
  br i1 %11, label %while.body.13, label %while.end.225

while.body.13:                                    ; preds = %land.end
  %12 = load i32, i32* %stage, align 4
  %cmp14 = icmp eq i32 %12, 0
  br i1 %cmp14, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body.13
  %13 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %13 to i64
  %14 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %14, i64 %idxprom16
  %15 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %15 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %call = call i16** @__ctype_b_loc() #6
  %16 = load i16*, i16** %call, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %16, i64 %idxprom19
  %17 = load i16, i16* %arrayidx20, align 2
  %conv21 = zext i16 %17 to i32
  %and = and i32 %conv21, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %20, i64 %idxprom22
  %call24 = call i32 @atoi(i8* %arrayidx23) #7
  %cmp25 = icmp slt i32 %18, %call24
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %rankoffset, align 4
  %22 = load i32, i32* %j, align 4
  %add = add nsw i32 %21, %22
  %23 = load i32, i32* %fileoffset, align 4
  %add27 = add nsw i32 %add, %23
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom28
  store i32 13, i32* %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %j, align 4
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %25 to i64
  %26 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %26, i64 %idxprom31
  %call33 = call i32 @atoi(i8* %arrayidx32) #7
  %27 = load i32, i32* %fileoffset, align 4
  %add34 = add nsw i32 %27, %call33
  store i32 %add34, i32* %fileoffset, align 4
  br label %if.end.223

if.else:                                          ; preds = %land.lhs.true, %while.body.13
  %28 = load i32, i32* %stage, align 4
  %cmp35 = icmp eq i32 %28, 0
  br i1 %cmp35, label %land.lhs.true.37, label %if.else.47

land.lhs.true.37:                                 ; preds = %if.else
  %29 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %29 to i64
  %30 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %30, i64 %idxprom38
  %31 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %31 to i32
  %cmp41 = icmp eq i32 %conv40, 47
  br i1 %cmp41, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %land.lhs.true.37
  %32 = load i32, i32* %rankp, align 4
  %inc44 = add nsw i32 %32, 1
  store i32 %inc44, i32* %rankp, align 4
  %33 = load i32, i32* %rankp, align 4
  %idxprom45 = sext i32 %33 to i64
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* @setup_epd_line.rankoffsets, i32 0, i64 %idxprom45
  %34 = load i32, i32* %arrayidx46, align 4
  store i32 %34, i32* %rankoffset, align 4
  store i32 0, i32* %fileoffset, align 4
  br label %if.end.222

if.else.47:                                       ; preds = %land.lhs.true.37, %if.else
  %35 = load i32, i32* %stage, align 4
  %cmp48 = icmp eq i32 %35, 0
  br i1 %cmp48, label %land.lhs.true.50, label %if.else.112

land.lhs.true.50:                                 ; preds = %if.else.47
  %36 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %36 to i64
  %37 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %37, i64 %idxprom51
  %38 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %38 to i32
  %idxprom54 = sext i32 %conv53 to i64
  %call55 = call i16** @__ctype_b_loc() #6
  %39 = load i16*, i16** %call55, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %39, i64 %idxprom54
  %40 = load i16, i16* %arrayidx56, align 2
  %conv57 = zext i16 %40 to i32
  %and58 = and i32 %conv57, 1024
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.112

if.then.60:                                       ; preds = %land.lhs.true.50
  %41 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %41 to i64
  %42 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %42, i64 %idxprom61
  %43 = load i8, i8* %arrayidx62, align 1
  %conv63 = sext i8 %43 to i32
  switch i32 %conv63, label %sw.epilog [
    i32 112, label %sw.bb
    i32 80, label %sw.bb.67
    i32 110, label %sw.bb.71
    i32 78, label %sw.bb.75
    i32 98, label %sw.bb.79
    i32 66, label %sw.bb.83
    i32 114, label %sw.bb.87
    i32 82, label %sw.bb.91
    i32 113, label %sw.bb.95
    i32 81, label %sw.bb.99
    i32 107, label %sw.bb.103
    i32 75, label %sw.bb.107
  ]

sw.bb:                                            ; preds = %if.then.60
  %44 = load i32, i32* %rankoffset, align 4
  %45 = load i32, i32* %fileoffset, align 4
  %add64 = add nsw i32 %44, %45
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom65
  store i32 2, i32* %arrayidx66, align 4
  br label %sw.epilog

sw.bb.67:                                         ; preds = %if.then.60
  %46 = load i32, i32* %rankoffset, align 4
  %47 = load i32, i32* %fileoffset, align 4
  %add68 = add nsw i32 %46, %47
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom69
  store i32 1, i32* %arrayidx70, align 4
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.then.60
  %48 = load i32, i32* %rankoffset, align 4
  %49 = load i32, i32* %fileoffset, align 4
  %add72 = add nsw i32 %48, %49
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom73
  store i32 4, i32* %arrayidx74, align 4
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.then.60
  %50 = load i32, i32* %rankoffset, align 4
  %51 = load i32, i32* %fileoffset, align 4
  %add76 = add nsw i32 %50, %51
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom77
  store i32 3, i32* %arrayidx78, align 4
  br label %sw.epilog

sw.bb.79:                                         ; preds = %if.then.60
  %52 = load i32, i32* %rankoffset, align 4
  %53 = load i32, i32* %fileoffset, align 4
  %add80 = add nsw i32 %52, %53
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom81
  store i32 12, i32* %arrayidx82, align 4
  br label %sw.epilog

sw.bb.83:                                         ; preds = %if.then.60
  %54 = load i32, i32* %rankoffset, align 4
  %55 = load i32, i32* %fileoffset, align 4
  %add84 = add nsw i32 %54, %55
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom85
  store i32 11, i32* %arrayidx86, align 4
  br label %sw.epilog

sw.bb.87:                                         ; preds = %if.then.60
  %56 = load i32, i32* %rankoffset, align 4
  %57 = load i32, i32* %fileoffset, align 4
  %add88 = add nsw i32 %56, %57
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom89
  store i32 8, i32* %arrayidx90, align 4
  br label %sw.epilog

sw.bb.91:                                         ; preds = %if.then.60
  %58 = load i32, i32* %rankoffset, align 4
  %59 = load i32, i32* %fileoffset, align 4
  %add92 = add nsw i32 %58, %59
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom93
  store i32 7, i32* %arrayidx94, align 4
  br label %sw.epilog

sw.bb.95:                                         ; preds = %if.then.60
  %60 = load i32, i32* %rankoffset, align 4
  %61 = load i32, i32* %fileoffset, align 4
  %add96 = add nsw i32 %60, %61
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom97
  store i32 10, i32* %arrayidx98, align 4
  br label %sw.epilog

sw.bb.99:                                         ; preds = %if.then.60
  %62 = load i32, i32* %rankoffset, align 4
  %63 = load i32, i32* %fileoffset, align 4
  %add100 = add nsw i32 %62, %63
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom101
  store i32 9, i32* %arrayidx102, align 4
  br label %sw.epilog

sw.bb.103:                                        ; preds = %if.then.60
  %64 = load i32, i32* %rankoffset, align 4
  %65 = load i32, i32* %fileoffset, align 4
  %add104 = add nsw i32 %64, %65
  store i32 %add104, i32* @bking_loc, align 4
  %66 = load i32, i32* @bking_loc, align 4
  %idxprom105 = sext i32 %66 to i64
  %arrayidx106 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom105
  store i32 6, i32* %arrayidx106, align 4
  br label %sw.epilog

sw.bb.107:                                        ; preds = %if.then.60
  %67 = load i32, i32* %rankoffset, align 4
  %68 = load i32, i32* %fileoffset, align 4
  %add108 = add nsw i32 %67, %68
  store i32 %add108, i32* @wking_loc, align 4
  %69 = load i32, i32* @wking_loc, align 4
  %idxprom109 = sext i32 %69 to i64
  %arrayidx110 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom109
  store i32 5, i32* %arrayidx110, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.60, %sw.bb.107, %sw.bb.103, %sw.bb.99, %sw.bb.95, %sw.bb.91, %sw.bb.87, %sw.bb.83, %sw.bb.79, %sw.bb.75, %sw.bb.71, %sw.bb.67, %sw.bb
  %70 = load i32, i32* %fileoffset, align 4
  %inc111 = add nsw i32 %70, 1
  store i32 %inc111, i32* %fileoffset, align 4
  br label %if.end.221

if.else.112:                                      ; preds = %land.lhs.true.50, %if.else.47
  %71 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %71 to i64
  %72 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %72, i64 %idxprom113
  %73 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %73 to i32
  %cmp116 = icmp eq i32 %conv115, 32
  br i1 %cmp116, label %if.then.118, label %if.end.220

if.then.118:                                      ; preds = %if.else.112
  %74 = load i32, i32* %stage, align 4
  %inc119 = add nsw i32 %74, 1
  store i32 %inc119, i32* %stage, align 4
  %75 = load i32, i32* %stage, align 4
  %cmp120 = icmp eq i32 %75, 1
  br i1 %cmp120, label %if.then.122, label %if.else.139

if.then.122:                                      ; preds = %if.then.118
  br label %while.cond.123

while.cond.123:                                   ; preds = %while.body.129, %if.then.122
  %76 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %76 to i64
  %77 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %77, i64 %idxprom124
  %78 = load i8, i8* %arrayidx125, align 1
  %conv126 = sext i8 %78 to i32
  %cmp127 = icmp eq i32 %conv126, 32
  br i1 %cmp127, label %while.body.129, label %while.end.131

while.body.129:                                   ; preds = %while.cond.123
  %79 = load i32, i32* %i, align 4
  %inc130 = add nsw i32 %79, 1
  store i32 %inc130, i32* %i, align 4
  br label %while.cond.123

while.end.131:                                    ; preds = %while.cond.123
  %80 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %80 to i64
  %81 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %81, i64 %idxprom132
  %82 = load i8, i8* %arrayidx133, align 1
  %conv134 = sext i8 %82 to i32
  %cmp135 = icmp eq i32 %conv134, 119
  br i1 %cmp135, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %while.end.131
  store i32 1, i32* @white_to_move, align 4
  br label %if.end

if.else.138:                                      ; preds = %while.end.131
  store i32 0, i32* @white_to_move, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.138, %if.then.137
  br label %if.end.219

if.else.139:                                      ; preds = %if.then.118
  %83 = load i32, i32* %stage, align 4
  %cmp140 = icmp eq i32 %83, 2
  br i1 %cmp140, label %if.then.142, label %if.else.170

if.then.142:                                      ; preds = %if.else.139
  store i32 1, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 30), align 4
  store i32 1, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 33), align 4
  store i32 1, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 26), align 4
  store i32 1, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 117), align 4
  store i32 1, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 114), align 4
  store i32 1, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 110), align 4
  br label %while.cond.143

while.cond.143:                                   ; preds = %while.body.149, %if.then.142
  %84 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %84 to i64
  %85 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %85, i64 %idxprom144
  %86 = load i8, i8* %arrayidx145, align 1
  %conv146 = sext i8 %86 to i32
  %cmp147 = icmp eq i32 %conv146, 32
  br i1 %cmp147, label %while.body.149, label %while.end.151

while.body.149:                                   ; preds = %while.cond.143
  %87 = load i32, i32* %i, align 4
  %inc150 = add nsw i32 %87, 1
  store i32 %inc150, i32* %i, align 4
  br label %while.cond.143

while.end.151:                                    ; preds = %while.cond.143
  br label %while.cond.152

while.cond.152:                                   ; preds = %sw.epilog.167, %while.end.151
  %88 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %88 to i64
  %89 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %89, i64 %idxprom153
  %90 = load i8, i8* %arrayidx154, align 1
  %conv155 = sext i8 %90 to i32
  %cmp156 = icmp ne i32 %conv155, 32
  br i1 %cmp156, label %while.body.158, label %while.end.169

while.body.158:                                   ; preds = %while.cond.152
  %91 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %91 to i64
  %92 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %92, i64 %idxprom159
  %93 = load i8, i8* %arrayidx160, align 1
  %conv161 = sext i8 %93 to i32
  switch i32 %conv161, label %sw.epilog.167 [
    i32 45, label %sw.bb.162
    i32 75, label %sw.bb.163
    i32 81, label %sw.bb.164
    i32 107, label %sw.bb.165
    i32 113, label %sw.bb.166
  ]

sw.bb.162:                                        ; preds = %while.body.158
  br label %sw.epilog.167

sw.bb.163:                                        ; preds = %while.body.158
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 33), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 30), align 4
  br label %sw.epilog.167

sw.bb.164:                                        ; preds = %while.body.158
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 26), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 30), align 4
  br label %sw.epilog.167

sw.bb.165:                                        ; preds = %while.body.158
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 117), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 114), align 4
  br label %sw.epilog.167

sw.bb.166:                                        ; preds = %while.body.158
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 110), align 4
  store i32 0, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 114), align 4
  br label %sw.epilog.167

sw.epilog.167:                                    ; preds = %while.body.158, %sw.bb.166, %sw.bb.165, %sw.bb.164, %sw.bb.163, %sw.bb.162
  %94 = load i32, i32* %i, align 4
  %inc168 = add nsw i32 %94, 1
  store i32 %inc168, i32* %i, align 4
  br label %while.cond.152

while.end.169:                                    ; preds = %while.cond.152
  %95 = load i32, i32* %i, align 4
  %dec = add nsw i32 %95, -1
  store i32 %dec, i32* %i, align 4
  br label %if.end.218

if.else.170:                                      ; preds = %if.else.139
  %96 = load i32, i32* %stage, align 4
  %cmp171 = icmp eq i32 %96, 3
  br i1 %cmp171, label %if.then.173, label %if.else.202

if.then.173:                                      ; preds = %if.else.170
  br label %while.cond.174

while.cond.174:                                   ; preds = %while.body.180, %if.then.173
  %97 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %97 to i64
  %98 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %98, i64 %idxprom175
  %99 = load i8, i8* %arrayidx176, align 1
  %conv177 = sext i8 %99 to i32
  %cmp178 = icmp eq i32 %conv177, 32
  br i1 %cmp178, label %while.body.180, label %while.end.182

while.body.180:                                   ; preds = %while.cond.174
  %100 = load i32, i32* %i, align 4
  %inc181 = add nsw i32 %100, 1
  store i32 %inc181, i32* %i, align 4
  br label %while.cond.174

while.end.182:                                    ; preds = %while.cond.174
  %101 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %101 to i64
  %102 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %102, i64 %idxprom183
  %103 = load i8, i8* %arrayidx184, align 1
  %conv185 = sext i8 %103 to i32
  %cmp186 = icmp eq i32 %conv185, 45
  br i1 %cmp186, label %if.then.188, label %if.else.189

if.then.188:                                      ; preds = %while.end.182
  store i32 0, i32* @ep_square, align 4
  br label %if.end.201

if.else.189:                                      ; preds = %while.end.182
  %104 = load i32, i32* %i, align 4
  %inc190 = add nsw i32 %104, 1
  store i32 %inc190, i32* %i, align 4
  %idxprom191 = sext i32 %104 to i64
  %105 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx192 = getelementptr inbounds i8, i8* %105, i64 %idxprom191
  %106 = load i8, i8* %arrayidx192, align 1
  %conv193 = sext i8 %106 to i32
  store i32 %conv193, i32* %ep_file, align 4
  %107 = load i32, i32* %i, align 4
  %inc194 = add nsw i32 %107, 1
  store i32 %inc194, i32* %i, align 4
  %idxprom195 = sext i32 %107 to i64
  %108 = load i8*, i8** %inbuff.addr, align 8
  %arrayidx196 = getelementptr inbounds i8, i8* %108, i64 %idxprom195
  %109 = load i8, i8* %arrayidx196, align 1
  %conv197 = sext i8 %109 to i32
  store i32 %conv197, i32* %ep_rank, align 4
  %110 = load i32, i32* %ep_file, align 4
  %111 = load i32, i32* %converterf, align 4
  %sub = sub nsw i32 %110, %111
  store i32 %sub, i32* %norm_file, align 4
  %112 = load i32, i32* %ep_rank, align 4
  %113 = load i32, i32* %converterr, align 4
  %sub198 = sub nsw i32 %112, %113
  store i32 %sub198, i32* %norm_rank, align 4
  %114 = load i32, i32* %norm_rank, align 4
  %mul = mul nsw i32 %114, 12
  %add199 = add nsw i32 %mul, 26
  %115 = load i32, i32* %norm_file, align 4
  %add200 = add nsw i32 %add199, %115
  store i32 %add200, i32* @ep_square, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.189, %if.then.188
  br label %if.end.217

if.else.202:                                      ; preds = %if.else.170
  %116 = load i32, i32* %stage, align 4
  %cmp203 = icmp eq i32 %116, 4
  br i1 %cmp203, label %if.then.205, label %if.else.206

if.then.205:                                      ; preds = %if.else.202
  br label %if.end.216

if.else.206:                                      ; preds = %if.else.202
  %117 = load i32, i32* %stage, align 4
  %cmp207 = icmp eq i32 %117, 5
  br i1 %cmp207, label %if.then.209, label %if.else.210

if.then.209:                                      ; preds = %if.else.206
  br label %if.end.215

if.else.210:                                      ; preds = %if.else.206
  %118 = load i32, i32* %stage, align 4
  %cmp211 = icmp eq i32 %118, 6
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.else.210
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.213, %if.else.210
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.then.209
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.205
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.end.201
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %while.end.169
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.end
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.else.112
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %sw.epilog
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.then.43
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %for.end
  %119 = load i32, i32* %i, align 4
  %inc224 = add nsw i32 %119, 1
  store i32 %inc224, i32* %i, align 4
  br label %while.cond.2

while.end.225:                                    ; preds = %land.end
  call void @reset_piece_square()
  call void @initialize_hash()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare void @reset_piece_square() #4

declare void @initialize_hash() #4

; Function Attrs: nounwind uwtable
define i32 @check_solution(i8* %inbuff, %struct.move_s* byval align 8 %cmove) #0 {
entry:
  %retval = alloca i32, align 4
  %inbuff.addr = alloca i8*, align 8
  %san = alloca [256 x i8], align 16
  store i8* %inbuff, i8** %inbuff.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %san, i32 0, i32 0
  call void @comp_to_san(%struct.move_s* byval align 8 %cmove, i8* %arraydecay)
  %0 = load i8*, i8** %inbuff.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #7
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.else.5

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %inbuff.addr, align 8
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %san, i32 0, i32 0
  %call2 = call i8* @strstr(i8* %1, i8* %arraydecay1) #7
  %cmp3 = icmp ne i8* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else.5:                                        ; preds = %entry
  %2 = load i8*, i8** %inbuff.addr, align 8
  %call6 = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #7
  %cmp7 = icmp ne i8* %call6, null
  br i1 %cmp7, label %if.then.8, label %if.else.14

if.then.8:                                        ; preds = %if.else.5
  %3 = load i8*, i8** %inbuff.addr, align 8
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %san, i32 0, i32 0
  %call10 = call i8* @strstr(i8* %3, i8* %arraydecay9) #7
  %cmp11 = icmp ne i8* %call10, null
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.then.8
  store i32 0, i32* %retval
  br label %return

if.else.13:                                       ; preds = %if.then.8
  store i32 1, i32* %retval
  br label %return

if.else.14:                                       ; preds = %if.else.5
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.14
  br label %if.end.16

if.end.16:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.else.13, %if.then.12, %if.else, %if.then.4
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare void @comp_to_san(%struct.move_s* byval align 8, i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare i32 @printf(i8*, ...) #4

; Function Attrs: nounwind uwtable
define void @run_epd_testsuite() #0 {
entry:
  %testsuite = alloca %struct._IO_FILE*, align 8
  %readbuff = alloca [2000 x i8], align 16
  %testname = alloca [4096 x i8], align 16
  %tempbuff = alloca [2000 x i8], align 16
  %nps = alloca i32, align 4
  %thinktime = alloca i32, align 4
  %comp_move = alloca %struct.move_s, align 8
  %tested = alloca i32, align 4
  %found = alloca i32, align 4
  %tmp = alloca %struct.move_s, align 4
  store i32 0, i32* %tested, align 4
  store i32 0, i32* %found, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %testname, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %arraydecay, i32 256, %struct._IO_FILE* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0))
  %arraydecay2 = getelementptr inbounds [2000 x i8], [2000 x i8]* %readbuff, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %arraydecay2, i32 256, %struct._IO_FILE* %1)
  %arraydecay3 = getelementptr inbounds [2000 x i8], [2000 x i8]* %readbuff, i32 0, i32 0
  %call4 = call i64 @atol(i8* %arraydecay3) #7
  %conv = trunc i64 %call4 to i32
  store i32 %conv, i32* %thinktime, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %2 = load i32, i32* %thinktime, align 4
  %mul = mul nsw i32 %2, 100
  store i32 %mul, i32* %thinktime, align 4
  %arraydecay6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %testname, i32 0, i32 0
  %call7 = call %struct._IO_FILE* @fopen(i8* %arraydecay6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %testsuite, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.65, %entry
  %arraydecay8 = getelementptr inbounds [2000 x i8], [2000 x i8]* %readbuff, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %testsuite, align 8
  %call9 = call i8* @fgets(i8* %arraydecay8, i32 2000, %struct._IO_FILE* %3)
  %cmp = icmp ne i8* %call9, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %tested, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %tested, align 4
  %arraydecay11 = getelementptr inbounds [2000 x i8], [2000 x i8]* %readbuff, i32 0, i32 0
  call void @setup_epd_line(i8* %arraydecay11)
  %5 = load i32, i32* @white_to_move, align 4
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* @root_to_move, align 4
  call void @clear_tt()
  call void @initialize_hash()
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %6, i32 1)
  store i32 0, i32* @forcedwin, align 4
  %call12 = call i32 @interrupt()
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %arraydecay14 = getelementptr inbounds [2000 x i8], [2000 x i8]* %tempbuff, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %arraydecay14, i32 256, %struct._IO_FILE* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load i32, i32* %thinktime, align 4
  store i32 %8, i32* @fixed_time, align 4
  call void @think(%struct.move_s* sret %tmp)
  %9 = bitcast %struct.move_s* %comp_move to i8*
  %10 = bitcast %struct.move_s* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 24, i32 4, i1 false)
  %11 = load i32, i32* @nodes, align 4
  %12 = load i32, i32* @qnodes, align 4
  %conv15 = sitofp i32 %12 to float
  %13 = load i32, i32* @nodes, align 4
  %conv16 = sitofp i32 %13 to float
  %div = fdiv float %conv15, %conv16
  %conv17 = fpext float %div to double
  %mul18 = fmul double %conv17, 1.000000e+02
  %conv19 = fptrunc double %mul18 to float
  %conv20 = fpext float %conv19 to double
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i32 %11, double %conv20)
  %14 = load i32, i32* @ECacheProbes, align 4
  %15 = load i32, i32* @ECacheHits, align 4
  %16 = load i32, i32* @ECacheHits, align 4
  %conv22 = uitofp i32 %16 to float
  %17 = load i32, i32* @ECacheProbes, align 4
  %conv23 = uitofp i32 %17 to float
  %add = fadd float %conv23, 1.000000e+00
  %div24 = fdiv float %conv22, %add
  %mul25 = fmul float %div24, 1.000000e+02
  %conv26 = fpext float %mul25 to double
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i32 %14, i32 %15, double %conv26)
  %18 = load i32, i32* @TTStores, align 4
  %19 = load i32, i32* @TTProbes, align 4
  %20 = load i32, i32* @TTHits, align 4
  %21 = load i32, i32* @TTHits, align 4
  %conv28 = uitofp i32 %21 to float
  %22 = load i32, i32* @TTProbes, align 4
  %conv29 = uitofp i32 %22 to float
  %add30 = fadd float %conv29, 1.000000e+00
  %div31 = fdiv float %conv28, %add30
  %mul32 = fmul float %div31, 1.000000e+02
  %conv33 = fpext float %mul32 to double
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i32 0, i32 0), i32 %18, i32 %19, i32 %20, double %conv33)
  %23 = load i32, i32* @NTries, align 4
  %24 = load i32, i32* @NCuts, align 4
  %25 = load i32, i32* @NCuts, align 4
  %conv35 = uitofp i32 %25 to float
  %mul36 = fmul float %conv35, 1.000000e+02
  %26 = load i32, i32* @NTries, align 4
  %conv37 = uitofp i32 %26 to float
  %add38 = fadd float %conv37, 1.000000e+00
  %div39 = fdiv float %mul36, %add38
  %conv40 = fpext float %div39 to double
  %27 = load i32, i32* @TExt, align 4
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0), i32 %23, i32 %24, double %conv40, i32 %27)
  %28 = load i32, i32* @ext_check, align 4
  %29 = load i32, i32* @razor_drop, align 4
  %30 = load i32, i32* @razor_material, align 4
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i32 0, i32 0), i32 %28, i32 %29, i32 %30)
  %31 = load i32, i32* @FHF, align 4
  %conv43 = uitofp i32 %31 to float
  %mul44 = fmul float %conv43, 1.000000e+02
  %32 = load i32, i32* @FH, align 4
  %conv45 = uitofp i32 %32 to float
  %div46 = fdiv float %mul44, %conv45
  %add47 = fadd float %div46, 1.000000e+00
  %conv48 = fpext float %add47 to double
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), double %conv48)
  %33 = load i32, i32* @Material, align 4
  %call50 = call i32 @eval(i32 -1000000, i32 1000000)
  %34 = load i32, i32* @maxposdiff, align 4
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0), i32 %33, i32 %call50, i32 %34)
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %35 = load i32, i32* @forcedwin, align 4
  %tobool53 = icmp ne i32 %35, 0
  br i1 %tobool53, label %if.else.63, label %if.then.54

if.then.54:                                       ; preds = %if.end
  %arraydecay55 = getelementptr inbounds [2000 x i8], [2000 x i8]* %readbuff, i32 0, i32 0
  %call56 = call i32 @check_solution(i8* %arraydecay55, %struct.move_s* byval align 8 %comp_move)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.then.54
  %36 = load i32, i32* %found, align 4
  %inc59 = add nsw i32 %36, 1
  store i32 %inc59, i32* %found, align 4
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.62

if.else:                                          ; preds = %if.then.54
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.then.58
  br label %if.end.65

if.else.63:                                       ; preds = %if.end
  %37 = load i32, i32* %found, align 4
  %inc64 = add nsw i32 %37, 1
  store i32 %inc64, i32* %found, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.end.62
  %38 = load i32, i32* %found, align 4
  %39 = load i32, i32* %tested, align 4
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 %38, i32 %39)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  ret void
}

declare void @rinput(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare void @clear_tt() #4

declare void @display_board(%struct._IO_FILE*, i32) #4

declare i32 @interrupt() #4

declare void @think(%struct.move_s* sret) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @eval(i32, i32) #4

; Function Attrs: nounwind uwtable
define void @run_autotest(i8* %testset) #0 {
entry:
  %testset.addr = alloca i8*, align 8
  %testsuite = alloca %struct._IO_FILE*, align 8
  %readbuff = alloca [256 x i8], align 16
  %searchdepth = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %comp_move = alloca %struct.move_s, align 4
  %tmp = alloca %struct.move_s, align 4
  store i8* %testset, i8** %testset.addr, align 8
  %0 = load i8*, i8** %testset.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %testsuite, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %testsuite, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @exit(i32 1) #8
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i64 @rtime()
  store i64 %call1, i64* %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %readbuff, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %testsuite, align 8
  %call2 = call i8* @fgets(i8* %arraydecay, i32 256, %struct._IO_FILE* %2)
  %cmp3 = icmp ne i8* %call2, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %readbuff, i32 0, i32 0
  call void @setup_epd_line(i8* %arraydecay4)
  %3 = load i32, i32* @white_to_move, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* @root_to_move, align 4
  call void @clear_tt()
  call void @initialize_hash()
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %4, i32 1)
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %readbuff, i32 0, i32 0
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay6)
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %readbuff, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %testsuite, align 8
  %call9 = call i8* @fgets(i8* %arraydecay8, i32 256, %struct._IO_FILE* %5)
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.body
  call void @exit(i32 1) #8
  unreachable

if.end.12:                                        ; preds = %while.body
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %readbuff, i32 0, i32 0
  %call14 = call i32 @atoi(i8* %arraydecay13) #7
  store i32 %call14, i32* %searchdepth, align 4
  %6 = load i32, i32* %searchdepth, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), i32 %6)
  %7 = load i32, i32* %searchdepth, align 4
  store i32 %7, i32* @maxdepth, align 4
  store i32 1000000, i32* @fixed_time, align 4
  call void @think(%struct.move_s* sret %tmp)
  %8 = bitcast %struct.move_s* %comp_move to i8*
  %9 = bitcast %struct.move_s* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 24, i32 4, i1 false)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call16 = call i64 @rtime()
  store i64 %call16, i64* %end, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %testsuite, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* %10)
  call void @exit(i32 0) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i64 @rtime() #4

declare i32 @fclose(%struct._IO_FILE*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
